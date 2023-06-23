unit udssmRemoteData;

interface

uses
    System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
    Data.DB,
    Data.Win.ADODB, Datasnap.Provider, uConnectionList, Windows, Dialogs,
    SyncObjs,
    Datasnap.DBClient, uAnalyser, uCommonFunctions, IdSMTP, IdMessage,
    IdAttachmentFile, IdMessageParts, IdText, UITypes, IdBaseComponent,
    IdAntiFreezeBase, Vcl.IdAntiFreeze, IdExplicitTLSClientServerBase,
    IdComponent, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL,
    IdSSLOpenSSL, IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTPBase,
    IdGlobal;

const
    //
    c_Admin_Key = 1;
    c_Not_selected = -1;

type
    TCounterInfo = record
        //
        CounterID: Integer;
        ResourceTypeID: Integer;
        IsUsable: Boolean;
        Value: Double;
    end;

    TTariffInfo = record
        //
        TariffID: Integer;
        ResourceTypeID: Integer;
        Value: Double;
    end;

    TSystemSettings = record
        //
        OrganizationName: string;
        ServerAddress: string;
        ServerPort: Integer;
        ServerLogin: string;
        ServerPassword: string;
    end;

    TdssmRemoteData = class(TDSServerModule)
        dspUserInfo: TDataSetProvider;
        qUserInfo: TADOQuery;
        tUserType: TADOTable;
        tUser: TADOTable;
        dspUserType: TDataSetProvider;
        dspUser: TDataSetProvider;
        tParams: TADOTable;
        dspParams: TDataSetProvider;
        tClient: TADOTable;
        dspClient: TDataSetProvider;
        tAccrual: TADOTable;
        dspAccrual: TDataSetProvider;
        tCounter: TADOTable;
        dspCounter: TDataSetProvider;
        tTariff: TADOTable;
        dspTariff: TDataSetProvider;
        tResourceType: TADOTable;
        dspResourceType: TDataSetProvider;
        dspCounterData: TDataSetProvider;
        qCounterData: TADOQuery;
        tHouse: TADOTable;
        dspHouse: TDataSetProvider;
        IdSMTP1: TIdSMTP;
        IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
        procedure DSServerModuleCreate(Sender: TObject);
        procedure qUserInfoBeforeOpen(DataSet: TDataSet);
        procedure qCounterDataBeforeOpen(DataSet: TDataSet);
        procedure tAccrualAfterPost(DataSet: TDataSet);
        procedure tAccrualBeforePost(DataSet: TDataSet);
    private
        { Private declarations }
        FCurrentUserKey: Integer;
        FCurrentUserTypeKey: Integer;
        //
        FAccrualInsert: Boolean;
        // FCurrentAccrualKey : Integer;
        procedure GetAccess(UserTypeID: Integer);
        procedure IsAdmin;
        function GetDefaultTariffInfo(ResourceTypeID: Integer): TTariffInfo;
        function GetResourceName(ResourceTypeID: Integer): string;
        function GetCounterInfoByNumber(Number: string): TCounterInfo;
        function GetCounterInfoByID(CounterID: Integer): TCounterInfo;
        function GetPriorCounterValue(CounterID: Integer): Double;
        procedure CopyAllCountersIntoAccrual(AccrualID: Integer);
    public
        { Public declarations }
        function GetDate: TDateTime;
        function GetCurrentUserTypeKey: Integer;
        function GetCurrentAccrualKey: Integer;
        function GetSystemSettings: TSystemSettings;
        // procedure SetCounterData (Source : TStream; ResourceType : Integer);
        procedure AddAccrual(StrCounterID: string; Value: Double);
        procedure SendMessage(ServerAddress: string; ServerPort: Integer;
            ServerLogin, ServerPassword: string;
            RecipientAddress, Subject: string; Msg: TStrings);
        procedure SetAccrualForClient(ClientID: Integer);
    end;

implementation

{$R *.dfm}

uses udmServer, ufMain;

function TdssmRemoteData.GetPriorCounterValue(CounterID: Integer): Double;
var
    Q: TADOQuery;
    CI: TCounterInfo;
begin
    //
    Result := 0;
    Q := dmServer.GetQuery
        ('select MAX (��������) as F from ���������_�������� where ���_���������� <> '
        + IntToStr(GetCurrentAccrualKey));
    try
        //
        if (Q.RecordCount <> 0) and (Q.FieldByName('F').IsNull = false) then
        begin
            //
            Result := Q.FieldByName('F').AsFloat;
        end
        else
        begin
            //
            CI := GetCounterInfoByID(CounterID);
            Result := CI.Value;
        end;
    finally
        Q.Free;
    end;
end;

procedure TdssmRemoteData.SetAccrualForClient(ClientID: Integer);
var
    //
    Q: TADOQuery;
    Msg: TStringList;
    SS: TSystemSettings;
    F: string;
    I: Integer;
begin
    //
    Q := nil;
    Msg := nil;
    try
        SS := GetSystemSettings;
        Msg := TStringList.Create;
        F := '���_���������� = ' + IntToStr(GetCurrentAccrualKey);
        if ClientID <> 0 then
        begin
            if F <> '' then
                F := F + ' and ';
            F := F + '���_������ = ' + IntToStr(ClientID);
        end;
        if (F <> '') then
            F := ' where ' + F;
        Q := dmServer.GetQuery('select * from ������_������_���_��������' + F);
        for I := 1 to Q.RecordCount do
        begin
            //
            Q.RecNo := I;

            Msg.Clear;
            Msg.Add('��������� (��) ' + Q.FieldByName('������_�������').AsString
                + ' ' + Q.FieldByName('������_���').AsString + ' ' +
                Q.FieldByName('������_��������').AsString + '!');
            Msg.Add('');
            Msg.Add('����������� "' + SS.OrganizationName +
                '" ������������� ��� �������� � ��������������� ���� �������� �� '
                + DateToStr(Q.FieldByName('����').AsDateTime));
            Msg.Add('������ "' + Q.FieldByName('�������_���_�������')
                .AsString + '"');
            Msg.Add('������������� ' + Q.FieldByName('������').AsString + ' ' +
                Q.FieldByName('�������_�������_��������').AsString);
            Msg.Add('� ������ ' + Q.FieldByName('�����_����������').AsString
                + ' ���.');
            Msg.Add('');

            SendMessage(SS.ServerAddress, SS.ServerPort, SS.ServerLogin,
                SS.ServerPassword, Q.FieldByName('������_Email').AsString,
                '���� ��������� ��������� � ����������', Msg);
            Q.Edit;
            Q.FieldByName('����_��������').AsDateTime := Now;
            Q.FieldByName('����������').AsBoolean := True;
            Q.Post;
        end;
    finally
        if (Q <> nil) then
            Q.Free;
        if (Msg <> nil) then
            Msg.Free;
    end;

end;

procedure TdssmRemoteData.CopyAllCountersIntoAccrual(AccrualID: Integer);
var
    //
    Q, W: TADOQuery;
    I: Integer;
begin
    //
    try
        //
        Q := dmServer.GetQuery('select * from ������_�����������_��������');
        W := dmServer.GetQuery
            ('select * from ���������_�������� where ���_������� = 0');

        for I := 1 to Q.RecordCount do
        begin
            //
            Q.RecNo := I;
            W.Insert;
            W.FieldByName('���_�������').AsInteger := Q.FieldByName('���')
                .AsInteger;
            W.FieldByName('���_����������').AsInteger := AccrualID;
            W.FieldByName('����������').AsBoolean := false;
            W.FieldByName('������_���������').AsBoolean := false;
            W.FieldByName('���_�����').AsInteger :=
                GetDefaultTariffInfo(Q.FieldByName('���_���_�������')
                .AsInteger).TariffID;
            W.Post;
        end;

    finally
        if (Q <> nil) then
            Q.Free;
        if (W <> nil) then
            W.Free;
    end;

end;

procedure TdssmRemoteData.tAccrualAfterPost(DataSet: TDataSet);
begin
    //
    try
        if (DataSet.Tag <> 0) then
        begin
            CopyAllCountersIntoAccrual(DataSet.FieldByName('���').AsInteger);
        end;
    finally
        DataSet.Tag := 0;
    end;
end;

procedure TdssmRemoteData.tAccrualBeforePost(DataSet: TDataSet);
begin
    //
    DataSet.Tag := 3;
end;

procedure TdssmRemoteData.SendMessage(ServerAddress: string;
    ServerPort: Integer; ServerLogin, ServerPassword: string;
    RecipientAddress, Subject: string; Msg: TStrings);
var
    //
    IdSMTP: TIdSMTP;
    IdMsg: TIdMessage;
    IdText: TIdText;
    IdSSLIOHandlerSocketOpenSSL: TIdSSLIOHandlerSocketOpenSSL;
begin
    //
    if (RecipientAddress = '') then
        raise Exception.Create('�� ����� Email ����������');
    if (ServerPort <= 0) then
        raise Exception.Create('���� ��������� ������� �� �����');
    if (ServerAddress = '') then
        raise Exception.Create('����� ��������� ������� �� �����');
    if (ServerLogin = '') then
        raise Exception.Create('�� ����� Email �����������');
    if (ServerPassword = '') then
        raise Exception.Create('�� ����� ������ ��� ����� �����������');

    IdSMTP := TIdSMTP.Create(nil);
    try
        IdSSLIOHandlerSocketOpenSSL := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
        try

            IdSMTP.IOHandler := IdSSLIOHandlerSocketOpenSSL;
            {
              IdSSLIOHandlerSocketOpenSSL.DefaultPort := 0;
              IdSSLIOHandlerSocketOpenSSL.Port := IdSMTP.Port;
              IdSSLIOHandlerSocketOpenSSL.Host := IdSMTP.Host;
              IdSSLIOHandlerSocketOpenSSL.Destination := IdSMTP.Host + ':' + IntToStr(IdSMTP.Port);
              IdSSLIOHandlerSocketOpenSSL.MaxLineAction := maException;
            }
            IdSMTP.MailAgent := 'Mozilla';
            IdSMTP.HeloName := 'some_name';
            IdSMTP.Port := ServerPort;
            IdSMTP.Host := ServerAddress;
            IdSMTP.AuthType := satDefault;
            IdSMTP.Username := ServerLogin;
            IdSMTP.Password := ServerPassword;
            IdSMTP.UseTLS := utUseImplicitTLS;

            IdSMTP.Connect;

            IdMsg := TIdMessage.Create(nil);
            try
                // ����� ���� ���������
                IdMsg.Subject := Subject;
                IdMsg.ContentType := 'multipart/mixed; charset=windows-1251';
                // ��������� ����� ����������
                IdMsg.Recipients.EMailAddresses := RecipientAddress;
                // ��������� ������ ������
                IdMsg.From.Address := ServerLogin;
                // ���� �������� ������ ����� ���� �����
                IdMsg.Date := Now;

                IdText := TIdText.Create(IdMsg.MessageParts, Msg);
                try
                    IdText.CharSet := 'windows-1251';
                    IdSMTP.Send(IdMsg);
                finally
                    IdText.Free;
                end;
            finally
                IdMsg.Free;
            end;
        finally
            IdSSLIOHandlerSocketOpenSSL.Free;
        end;
    finally
        IdSMTP.Free;
    end;
end;

function TdssmRemoteData.GetCurrentAccrualKey: Integer;
var
    //
    Q: TADOQuery;
begin
    //
    Q := dmServer.GetQuery('select * from ������������ where ��� = ' +
        IntToStr(FCurrentUserKey));
    try
        //
        if (Q.RecordCount = 0) then
            raise Exception.Create('������������ �� ������');
        if (Q.FieldByName('���_�������_����������').IsNull) then
            raise Exception.Create('�� �� ������� ������� ����������');
        Result := Q.FieldByName('���_�������_����������').AsInteger;
    finally
        Q.Free;
    end;
end;

function TdssmRemoteData.GetSystemSettings: TSystemSettings;
var
    //
    Q: TADOQuery;
begin
    //
    Q := dmServer.GetQuery('select * from ��������� where ��� = 1');
    try
        //
        if (Q.RecordCount = 0) then
            raise Exception.Create('��������� ������� �� ������');
        Result.OrganizationName :=
            Q.FieldByName('��������_�����������').AsString;
        Result.ServerAddress := Q.FieldByName('�����_�����_�������').AsString;
        Result.ServerPort := Q.FieldByName('�����_����_�������').AsInteger;
        Result.ServerLogin := Q.FieldByName('�����_�����').AsString;
        Result.ServerPassword := Q.FieldByName('�����_������').AsString;
    finally
        Q.Free;
    end;
end;

function TdssmRemoteData.GetCounterInfoByNumber(Number: string): TCounterInfo;
var
    //
    Q: TADOQuery;
begin
    //
    Q := dmServer.GetQuery('select * from ������� where ����� = ' +
        QuotedStr(Number));
    try
        //
        if (Q.RecordCount = 0) then
            raise Exception.Create('������� (����� = ' + Number +
                ') �� ������');
        Result.CounterID := Q.FieldByName('���').AsInteger;
        Result.ResourceTypeID := Q.FieldByName('���_���_�������').AsInteger;
        Result.IsUsable := Q.FieldByName('�����������').AsBoolean;
        Result.Value := Q.FieldByName('��������').AsFloat;
    finally
        Q.Free;
    end;
end;

function TdssmRemoteData.GetCounterInfoByID(CounterID: Integer): TCounterInfo;
var
    //
    Q: TADOQuery;
begin
    //
    Q := dmServer.GetQuery('select * from ������� where ��� = ' +
        IntToStr(CounterID));
    try
        //
        if (Q.RecordCount = 0) then
            raise Exception.Create('������� (ID = ' + IntToStr(CounterID) +
                ') �� ������');
        Result.CounterID := Q.FieldByName('���').AsInteger;
        Result.ResourceTypeID := Q.FieldByName('���_���_�������').AsInteger;
        Result.IsUsable := Q.FieldByName('�����������').AsBoolean;
        Result.Value := Q.FieldByName('��������').AsFloat;
    finally
        Q.Free;
    end;
end;

procedure TdssmRemoteData.AddAccrual(StrCounterID: string; Value: Double);
var
    //
    Q: TADOQuery;
    CounterInfo: TCounterInfo;
    CurrentAccrualKey: Integer;
    TariffInfo: TTariffInfo;
begin
    //
    CurrentAccrualKey := GetCurrentAccrualKey;
    CounterInfo := GetCounterInfoByNumber(StrCounterID);
    TariffInfo := GetDefaultTariffInfo(CounterInfo.ResourceTypeID);
    Q := dmServer.GetQuery
        ('select * from ���������_�������� where ���_������� = ' +
        IntToStr(CounterInfo.CounterID) + ' and ���_���������� = ' +
        IntToStr(CurrentAccrualKey));
    try
        //
        if (Q.RecordCount = 0) then
        begin
            Q.Insert;
            Q.FieldByName('���_�������').AsInteger := CounterInfo.CounterID;
            Q.FieldByName('���_����������').AsInteger := CurrentAccrualKey;
            Q.FieldByName('����������').AsBoolean := false;
        end
        else
        begin
            Q.Edit;
        end;
        Q.FieldByName('���_�����').AsInteger := TariffInfo.TariffID;
        Q.FieldByName('��������').AsFloat := Value;
        Q.FieldByName('������').AsFloat := Value - GetPriorCounterValue
            (CounterInfo.CounterID);
        Q.FieldByName('�����_����������').AsFloat :=
            Round(Q.FieldByName('������').AsFloat * TariffInfo.Value *
            100) / 100;
        Q.FieldByName('����_�����������').AsDateTime := Now;
        Q.FieldByName('������_���������').AsBoolean := True;
        Q.Post;
    finally
        Q.Free;
    end;

end;
{
  procedure TdssmRemoteData.SetCounterData (Source : TStream; ResourceType : Integer);
  type
  //
  TCharCounterID = array [0..63] of Char;
  TCounterID = array [0..127] of Byte;
  TValue = array [0..3] of Byte;
  const
  cSingleRecord = 256;
  var
  //
  MS : TMemoryStream;
  BytesReadCount : Integer;
  Buffer : array [0..(cSingleRecord - 1)] of Byte;
  bCounterID : TCounterID;
  bValue : TValue;
  CounterID : ^TCharCounterID;
  Value : ^Double;
  I : Integer;
  begin
  ///  ������ �����:
  ///  128 ����� - ������������� ��������;
  ///  4   ����� - ������� ��������;
  ///  4   ����� - ���� ���������;
  ///  32  ����� - �������� ����� ��������;
  ///
  MS := TMemoryStream.Create;
  try
  ReadStreamFromStream(Source, MS);
  MS.Position := 0;
  if (MS.Size mod cSingleRecord) > 0 then
  raise Exception.Create('���� ����� �������� ������');

  repeat
  //
  BytesReadCount := Source.Read(Buffer[0], cSingleRecord);
  if BytesReadCount > 0 then
  begin
  //
  for I := 0 to 127 do
  begin
  //
  bCounterID[I] := Buffer[I];
  end;

  for I := 0 to 3 do
  begin
  //
  bValue[I] := Buffer[I + 128];
  end;

  Value := Addr (bValue);
  CounterID := Addr(bCounterID);
  ShowMessage(CounterID^);
  end;
  until BytesReadCount < cSingleRecord;
  finally
  MS.Free;
  end;
  end;
}

function TdssmRemoteData.GetResourceName(ResourceTypeID: Integer): string;
var
    //
    Q: TADOQuery;
begin
    //
    Q := dmServer.GetQuery('select * from ���_������� where ��� = ' +
        IntToStr(ResourceTypeID));
    try
        //
        if (Q.RecordCount = 0) then
            raise Exception.Create('������ (ID = ' + IntToStr(ResourceTypeID) +
                ') �� ������');
        Result := Q.FieldByName('��������').AsString;
    finally
        Q.Free;
    end;
end;

function TdssmRemoteData.GetDefaultTariffInfo(ResourceTypeID: Integer)
    : TTariffInfo;
var
    //
    Q: TADOQuery;
begin
    //
    Q := dmServer.GetQuery
        ('select * from ������_�����������_����� where ���_���_������� = ' +
        IntToStr(ResourceTypeID));
    try
        //
        if (Q.RecordCount = 0) then
            raise Exception.Create('����������� ����� (������ "' +
                GetResourceName(ResourceTypeID) + '") �� �����!');
        Q.First;
        Result.TariffID := Q.FieldByName('���').AsInteger;
        Result.ResourceTypeID := ResourceTypeID;
        Result.Value := Q.FieldByName('��������').AsFloat;
    finally
        Q.Free;
    end;
end;

procedure TdssmRemoteData.GetAccess(UserTypeID: Integer);
begin
    //
    if UserTypeID <> c_Admin_Key then
    begin
        //
        dspParams.Exported := false;
        dspUser.Exported := false;
        dspResourceType.Options := dspResourceType.Options + [poReadOnly];
        dspTariff.Options := dspTariff.Options + [poReadOnly];
        dspHouse.Options := dspHouse.Options + [poReadOnly];
    end;
end;

procedure TdssmRemoteData.qUserInfoBeforeOpen(DataSet: TDataSet);
begin
    with qUserInfo.SQL do
    begin
        //
        Clear;
        Add('select * from ������_������������ where ��� = ' +
            IntToStr(FCurrentUserKey));
    end;
end;

procedure TdssmRemoteData.IsAdmin;
begin
    //
    if FCurrentUserTypeKey <> c_Admin_Key then
        raise Exception.Create('�������� ������ ��������������');
end;

function TdssmRemoteData.GetCurrentUserTypeKey: Integer;
begin
    //
    Result := FCurrentUserTypeKey;
end;

function TdssmRemoteData.GetDate: TDateTime;
begin
    //
    Result := Now;
end;

procedure TdssmRemoteData.qCounterDataBeforeOpen(DataSet: TDataSet);
var
    //
    CurrentAccrualKey: Integer;
begin
    //
    CurrentAccrualKey := 0;
    with DataSet as TADOQuery do
    begin
        //
        try
            //
            CurrentAccrualKey := GetCurrentAccrualKey
        except
        end;

        Parameters.ParamByName('CurrentAccrualKey').Value := CurrentAccrualKey;
    end;
end;

procedure TdssmRemoteData.DSServerModuleCreate(Sender: TObject);
begin
    //
    FAccrualInsert := false;
    FCurrentUserKey := ConnectionList.GetConnectionKey
        (GetCurrentThreadId).UserKey;
    FCurrentUserTypeKey := ConnectionList.GetConnectionKey(GetCurrentThreadId)
        .UserTypeKey;
    GetAccess(FCurrentUserTypeKey);
end;

initialization

//

finalization

//

end.
