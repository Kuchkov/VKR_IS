unit udmServer;

interface

uses
  System.SysUtils, System.Classes, IndyPeerImpl, Datasnap.DSCommonServer,
  Datasnap.DSServer, Datasnap.DSTCPServerTransport, Datasnap.DSAuth, Data.DB,
  Data.Win.ADODB, uConnectionList, uConnectionInfo, Windows, Forms, Dialogs,
  Controls, IniFiles, Data.DBXFirebird, Data.FMTBcd, Data.SqlExpr,
  Datasnap.DBClient, Datasnap.Provider, Variants;

const c_Settings_File = 'Settings.ini';
      c_Settings_Section_Server = 'Server';
      c_Settings_Section_DB = 'Database';

type
  TdmServer = class(TDataModule)
    DSAuthenticationManager: TDSAuthenticationManager;
    DSTCPServerTransport: TDSTCPServerTransport;
    DSServerClass: TDSServerClass;
    DSServer: TDSServer;
    adoConnection: TADOConnection;
    procedure DSServerClassGetClass(DSServerClass: TDSServerClass;
      var PersistentClass: TPersistentClass);
    procedure DSAuthenticationManagerUserAuthenticate(Sender: TObject;
      const Protocol, Context, User, Password: string; var valid: Boolean;
      UserRoles: TStrings);
    procedure DSTCPServerTransportConnect(Event: TDSTCPConnectEventObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure DSTCPServerTransportDisconnect(
      Event: TDSTCPDisconnectEventObject);
  private
    { Private declarations }
    FSettings : TIniFile;
  public
    { Public declarations }
    function  GetUserKey (Login, Password : String; var Blocked : Boolean; var UserType : Integer) : Integer;
    function  GetTable (TableName : String) : TADOTable;
    function  GetQuery (SQL : String) : TADOQuery;

    property  Settings : TIniFile read FSettings;
  end;



var
  dmServer: TdmServer;


implementation



{$R *.dfm}

uses udssmRemoteData;

function TdmServer.GetTable (TableName : String) : TADOTable;
begin
    //
    Result := TADOTable.Create(nil);
    try
        //
        Result.Connection := adoConnection;
        Result.TableName := TableName;
        Result.Open;
    except
        //
        on E : Exception do
        begin
            //
            Result.Free;
            raise;
        end;
    end;
end;

function TdmServer.GetQuery (SQL : String) : TADOQuery;
begin
    //
    Result := TADOQuery.Create(nil);
    try
        //
        Result.Connection := adoConnection;
        Result.SQL.Text := SQL;
        Result.Open;
    except
        //
        on E : Exception do
        begin
            //
            Result.Free;
            raise;
        end;
    end;
end;



function TdmServer.GetUserKey (Login, Password : String; var Blocked : Boolean; var UserType : Integer) : Integer;
var
    //
    T : TADOQuery;
begin
    //
    Result := 0;
    T := TADOQuery.Create (nil);
    T.Connection := adoConnection;
    T.SQL.Text := 'select * from Пользователь where Логин = ' + #39 + Login + #39;
    try
        //
        T.Active := true;
        if (T.RecordCount > 0) then
        begin
            //
            if T.FieldByName('Пароль').AsString = Password then
            begin
                //
                Result := T.FieldByName('Код').AsInteger;
                UserType := T.FieldByName('Код_Тип_пользователя').AsInteger;
                Blocked := T.FieldByName('Блокировать_доступ').AsBoolean;
            end;
        end;
    finally
        //

    end;
    T.Free;


end;

procedure TdmServer.DataModuleCreate(Sender: TObject);

    function GetDataBaseName : String;
    begin
        //
        try
            // Загрузка ini
            Result := FSettings.ReadString(c_Settings_Section_DB, 'DB', 'Base.mdb');
            if (ExtractFilePath(Result) = '') then
            begin
                //
                Result := ExtractFilePath(Application.ExeName) + Result;
            end;
        except
        end;
    end;
begin
    //
    FSettings := TIniFile.Create (ExtractFilePath (Application.ExeName) + '\' + c_Settings_File);


    if adoConnection.Connected = true then
    begin
        ShowMessage ('adoConnection.Connected = true. Приложение будет закрыто.');
        Application.Terminate;
    end;
    adoConnection.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;' +
                                      'Data Source=' + GetDataBaseName + ';' +
                                      'Persist Security Info=False';
    try
        //
        DSTCPServerTransport.Port := FSettings.ReadInteger(c_Settings_Section_Server, 'Port', 5000);
        DSServer.Start;
        adoConnection.Connected := true;
    except
        //
        on E : Exception do
        begin
            //
            Application.MainForm.Show;
            MessageDlg (E.Message, mtError, [mbOK], 0);
            MessageDlg ('Приложение будет закрыто.', mtInformation, [mbOK], 0);
            Application.Terminate;
        end;
    end;

end;

procedure TdmServer.DSAuthenticationManagerUserAuthenticate(Sender: TObject;
  const Protocol, Context, User, Password: string; var valid: Boolean;
  UserRoles: TStrings);
var
    //
    UserKey, UserTypeKey : Integer;
    CI : TConnectionInfo;
    Blocked : Boolean;
begin
    //
    UserKey := GetUserKey (User, Password, Blocked, UserTypeKey);
    if (Blocked = true) then raise Exception.Create('Вход в систему невозможен. Ваш аккаунт заблокирован.');
    valid := UserKey > 0;
    if (valid = false) then
        raise Exception.Create('Неверная пара логин/пароль.');
    if valid = true then
    begin
        CI := ConnectionList.GetConnectionKey(GetCurrentThreadId);
        CI.UserKey := UserKey;
        CI.UserTypeKey := UserTypeKey;
    end;
end;

procedure TdmServer.DSServerClassGetClass(DSServerClass: TDSServerClass;
  var PersistentClass: TPersistentClass);
begin
    //
    PersistentClass := udssmRemoteData.TdssmRemoteData;
end;

procedure TdmServer.DSTCPServerTransportConnect(
  Event: TDSTCPConnectEventObject);
var
    //
    CI : TConnectionInfo;
begin
    //
    CI := ConnectionList.AddConnection(Windows.GetCurrentThreadId);
    CI.IP := Event.Channel.ChannelInfo.ClientInfo.IpAddress;
    CI.Channel := Event.Channel;
end;

procedure TdmServer.DSTCPServerTransportDisconnect(
  Event: TDSTCPDisconnectEventObject);
begin
     //
    ConnectionList.DelConnection(GetCurrentThreadId);
end;

end.
