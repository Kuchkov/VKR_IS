unit udmData;

interface

uses
  System.SysUtils, System.Classes, Data.DBXDataSnap, IndyPeerImpl,
  Data.DBXCommon, Datasnap.DBClient, Datasnap.DSConnect, Data.DB, Data.SqlExpr,
  uRemoteMethods, Vcl.ImgList, Vcl.Controls, RpCon, RpConDS, RpBase, RpSystem,
  RpDefine, RpRave, Dialogs, IniFiles, Forms, Vcl.DBClientActns, Vcl.DBActns,
  Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.AppEvnts;

type
  TdmData = class(TDataModule)
    SQLConnection: TSQLConnection;
    DSProviderConnection: TDSProviderConnection;
    cdsUserInfo: TClientDataSet;
    dsUserInfo: TDataSource;
    ilMain: TImageList;
    cdsUser: TClientDataSet;
    dsUser: TDataSource;
    cdsUserType: TClientDataSet;
    dsUserType: TDataSource;
    cdsUserTypeКод: TAutoIncField;
    cdsUserTypeНазвание: TWideStringField;
    cdsUserКод: TAutoIncField;
    cdsUserФамилия: TWideStringField;
    cdsUserИмя: TWideStringField;
    cdsUserОтчество: TWideStringField;
    cdsUserТелефон: TWideStringField;
    cdsUserКод_Тип_пользователя: TIntegerField;
    cdsUserЛогин: TWideStringField;
    cdsUserПароль: TWideStringField;
    cdsUserБлокировать_доступ: TBooleanField;
    cdsUserДата_регистрации: TDateTimeField;
    cdsUserТип_пользователя: TStringField;
    ilDataSet32E_1: TImageList;
    ilDataSet32D_1: TImageList;
    cdsUserПользователь: TStringField;
    ilDataSet32E_2: TImageList;
    ilDataSet32D_2: TImageList;
    amNavigator: TActionManager;
    DataSetFirst1: TDataSetFirst;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetLast1: TDataSetLast;
    DataSetInsert1: TDataSetInsert;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetPost1: TDataSetPost;
    DataSetCancel1: TDataSetCancel;
    DataSetRefresh1: TDataSetRefresh;
    ClientDataSetApply1: TClientDataSetApply;
    aeMain: TApplicationEvents;
    cdsParams: TClientDataSet;
    cdsClient: TClientDataSet;
    dsClient: TDataSource;
    dsParams: TDataSource;
    cdsUserEmail: TWideStringField;
    cdsUserInfoКод: TAutoIncField;
    cdsUserInfoФамилия: TWideStringField;
    cdsUserInfoИмя: TWideStringField;
    cdsUserInfoОтчество: TWideStringField;
    cdsUserInfoТелефон: TWideStringField;
    cdsUserInfoКод_Тип_пользователя: TIntegerField;
    cdsUserInfoТип_пользователя: TWideStringField;
    cdsUserInfoЛогин: TWideStringField;
    cdsUserInfoБлокировать_доступ: TBooleanField;
    cdsUserInfoДата_регистрации: TDateTimeField;
    cdsParamsКод: TIntegerField;
    cdsParamsНазвание_организации: TWideStringField;
    cdsParamsПочта_Логин: TWideStringField;
    cdsParamsПочта_Пароль: TWideStringField;
    cdsParamsПочта_Адрес_сервера: TWideStringField;
    cdsParamsПочта_Порт_сервера: TIntegerField;
    cdsTariff: TClientDataSet;
    dsTariff: TDataSource;
    cdsCounter: TClientDataSet;
    dsCounter: TDataSource;
    cdsClientКод: TAutoIncField;
    cdsClientФамилия: TWideStringField;
    cdsClientИмя: TWideStringField;
    cdsClientОтчество: TWideStringField;
    cdsClientТелефон: TWideStringField;
    cdsClientEmail: TWideStringField;
    cdsTariffКод: TAutoIncField;
    cdsTariffДата: TDateTimeField;
    cdsTariffКод_Тип_ресурса: TIntegerField;
    cdsTariffЗначение: TFloatField;
    cdsTariffДействующий: TBooleanField;
    cdsResourceType: TClientDataSet;
    dsResourceType: TDataSource;
    cdsResourceTypeКод: TIntegerField;
    cdsResourceTypeНазвание: TWideStringField;
    cdsResourceTypeЕдиница_имерения: TWideStringField;
    cdsTariffТип_ресурса: TStringField;
    cdsCounterData: TClientDataSet;
    dsCounterData: TDataSource;
    cdsAccrual: TClientDataSet;
    dsAccrual: TDataSource;
    cdsAccrualКод: TAutoIncField;
    cdsAccrualДата: TDateTimeField;
    cdsCounterDataКод_Начисление: TIntegerField;
    cdsCounterDataКод_Клиент: TIntegerField;
    cdsCounterDataКод_Тип_ресурса: TIntegerField;
    cdsCounterDataСчетчик_Тип_ресурса: TWideStringField;
    cdsCounterDataСчетчик_Единица_имерения: TWideStringField;
    cdsCounterDataСчетчик_Номер: TWideStringField;
    cdsCounterDataСчетчик_Дата_регистрации: TDateTimeField;
    cdsCounterDataСчетчик_Дата_списания: TDateTimeField;
    cdsCounterDataСчетчик_Действующий: TBooleanField;
    cdsCounterDataКлиент_Фамилия: TWideStringField;
    cdsCounterDataКлиент_Имя: TWideStringField;
    cdsCounterDataКлиент_Отчество: TWideStringField;
    cdsCounterDataКлиент_Email: TWideStringField;
    cdsCounterDataРасход: TFloatField;
    cdsCounterDataЗначение: TFloatField;
    cdsCounterDataСумма_начисления: TFloatField;
    cdsCounterDataДата_регистрации: TDateTimeField;
    cdsCounterDataОтправлено: TBooleanField;
    cdsCounterDataДата_отправки: TDateTimeField;
    cdsCounterDataДата: TDateTimeField;
    cdsCounterDataКод_Счетчик: TIntegerField;
    cdsCounterDataКод_Тариф: TIntegerField;
    cdsCounterDataТариф_Дата: TDateTimeField;
    cdsCounterDataТариф_Значение: TFloatField;
    cdsCounterКод: TAutoIncField;
    cdsCounterДата_регистрации: TDateTimeField;
    cdsCounterЗначение: TFloatField;
    cdsCounterДата_списания: TDateTimeField;
    cdsCounterНомер: TWideStringField;
    cdsCounterКод_Клиент: TIntegerField;
    cdsCounterКод_Тип_ресурса: TIntegerField;
    cdsCounterДействующий: TBooleanField;
    cdsCounterТип_ресурса: TStringField;
    cdsClientКлиент: TStringField;
    cdsCounterКлиент: TStringField;
    cdsHouse: TClientDataSet;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    dsHouse: TDataSource;
    cdsHouseАдрес: TWideStringField;
    cdsCounterКод_Дом: TIntegerField;
    cdsCounterДом: TStringField;
    cdsUserInfoКод_Текущее_начисление: TIntegerField;
    cdsUserInfoТекущее_начисление: TDateTimeField;
    cdsCounterDataДанные_загружены: TBooleanField;

    procedure SQLConnectionAfterConnect(Sender: TObject);
    procedure SQLConnectionBeforeDisconnect(Sender: TObject);
    procedure cdsUserAfterEdit(DataSet: TDataSet);
    procedure cdsUserAfterInsert(DataSet: TDataSet);

    procedure cdsUserCalcFields(DataSet: TDataSet);

    procedure DataModuleCreate(Sender: TObject);
    procedure cdsCommonAfterCancel(DataSet: TDataSet);
    procedure cdsCommonAfterDelete(DataSet: TDataSet);
    procedure cdsCommonAfterPost(DataSet: TDataSet);

    procedure cdsCommonReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsCommonBeforeDelete(DataSet: TDataSet);
    procedure aeMainException(Sender: TObject; E: Exception);
    procedure cdsClientAfterEdit(DataSet: TDataSet);
    procedure cdsClientAfterInsert(DataSet: TDataSet);
    procedure cdsRequestServicesBeforeInsert(DataSet: TDataSet);
    procedure cdsClientCalcFields(DataSet: TDataSet);
    procedure cdsParamsAfterEdit(DataSet: TDataSet);
    procedure cdsParamsAfterInsert(DataSet: TDataSet);
    procedure cdsCounterAfterEdit(DataSet: TDataSet);
    procedure cdsCounterAfterInsert(DataSet: TDataSet);
    procedure cdsTariffAfterEdit(DataSet: TDataSet);
    procedure cdsTariffAfterInsert(DataSet: TDataSet);
    procedure cdsAccrualAfterEdit(DataSet: TDataSet);
    procedure cdsAccrualAfterInsert(DataSet: TDataSet);
    procedure cdsAccrualAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
    FShowOpForms : Boolean;
    FSettings : TIniFile;
    FRemoteMethods : TdssmRemoteDataClient;
    procedure ChildDataSetTest (DataSet: TClientDataSet);
    procedure ExecForm (F : TForm);
  public
    { Public declarations }
    procedure ActiveCDS (Value : Boolean);
    function  LoadCDF (FileName : string) : string;
    procedure TestActiveConnection;
    property  ShowOpForms : Boolean read FShowOpForms write FShowOpForms;
    property  Settings : TIniFile read FSettings;
    property  RemoteMethods : TdssmRemoteDataClient read FRemoteMethods;
  end;

const c_Settings_File : String = 'Settings.ini';
      c_Settings_Section_Connection : String = 'Connection';


var
  dmData: TdmData;


implementation

{$R *.dfm}

uses ufMain, ufUserEditor, ufClientEditor, ufCounterEditor, ufSettingsEditor,
     ufTariffEditor, ufAccrualEditor;

function TdmData.LoadCDF (FileName : string) : string;
var
    //
    S : TStringList;
    I : Integer;


    procedure Load (S : string);
    var
        //
        Fields : TStringList;
        StrCounterID, B : string;
        Value : Double;
        I : Integer;
    begin
        //
        Fields := TStringList.Create;
        try
            for I := 1 to Length (S) do
            begin
                //
                if (S[I] = ' ') or (S[I] = #9) or (I = Length (S)) then
                begin
                    //
                    Fields.Add(Trim (B));
                    B := '';
                end
                else
                begin
                    B := B + S[I];
                end;
            end;
            StrCounterID := Fields.Strings[0];
            Value := StrToFloat(Fields.Strings[1]);
            RemoteMethods.AddAccrual(StrCounterID, Value);
        finally
            //
            Fields.Free;
        end;
    end;
begin
    //
    Result := '';
    S := TStringList.Create;
    try
        //
        S.LoadFromFile(FileName);
        for I := 0 to S.Count - 1 do
        begin
            //
            try
                //
                Load(S[I]);
            except
                on E : Exception do
                begin
                    //
                    if (Result <> '') then Result := Result + #13;
                    Result := Result + 'Строка (' + IntToStr(I + 1) + ') : ' + E.Message;
                end;
            end;

        end;

    finally
        S.Free;
    end;

end;

procedure TdmData.ExecForm (F : TForm);
begin
    //
    if (FShowOpForms = True) then
    begin
        //
        F.ShowModal;
    end;
end;

procedure TdmData.TestActiveConnection;
begin
    //
    if (SQLConnection.Connected = false) then
    begin
        //
        raise Exception.Create('Необходимо выполнить вход!');
    end;
end;

procedure TdmData.ChildDataSetTest (DataSet: TClientDataSet);
var
    //
    ParentDataSet : TDataSet;
begin
    //
    ParentDataSet := DataSet.MasterSource.DataSet;

    if (ParentDataSet.RecordCount = 0) or (ParentDataSet.State = dsInsert) then
    begin
        //
        raise Exception.Create('Сначала необходимо добавить запись в родительский набор данных');
    end;
end;

procedure TdmData.DataModuleCreate(Sender: TObject);
begin
    //
    FShowOpForms := True;
    FSettings := TIniFile.Create (ExtractFilePath (Application.ExeName) + '\' + c_Settings_File);
end;

procedure TdmData.aeMainException(Sender: TObject; E: Exception);
begin
    //
    MessageDlg(E.Message, mtInformation, [mbOK], 0);
end;

procedure TdmData.ActiveCDS (Value : Boolean);
var
    //
    I : Integer;
    S : String;
    cds : TClientDataSet;
begin
    //
    S := '';
    for I := 0 to Self.ComponentCount - 1 do
    begin
        //
        if Self.Components[I] is TClientDataSet then
        begin
            //
            cds := (Self.Components[I] as TClientDataSet);
            try
                //
                cds.Active := Value;
            except
                on E : Exception do
                begin
                    //
                    if (S <> '') then S := S + #13;
                    S := S + cds.Name + ' (' + E.Message + ')';
                end;
            end;
        end;
    end;
    if (Value = true) and (S <> '') then
    begin
        MessageDlg('У вас нет доступа к следующим наборам данных: ' + #13 + S, mtInformation, [mbOk], 0);
    end;
end;

procedure TdmData.cdsAccrualAfterDelete(DataSet: TDataSet);
begin
    //
    cdsCommonAfterDelete(DataSet);
end;

procedure TdmData.cdsAccrualAfterEdit(DataSet: TDataSet);
begin
    ExecForm(fAccrualEditor);
end;

procedure TdmData.cdsAccrualAfterInsert(DataSet: TDataSet);
begin
    //
    ExecForm(fAccrualEditor);
end;

procedure TdmData.cdsClientAfterEdit(DataSet: TDataSet);
begin
    ExecForm (fClientEditor);
end;

procedure TdmData.cdsClientAfterInsert(DataSet: TDataSet);
begin
    ExecForm (fClientEditor);
end;

procedure TdmData.cdsClientCalcFields(DataSet: TDataSet);
begin
    //
    cdsClientКлиент.AsString := cdsClientФамилия.Value + ' ' +
                                cdsClientИмя.Value + ' ' +
                                cdsClientОтчество.Value;
end;

procedure TdmData.cdsCommonAfterCancel(DataSet: TDataSet);
var
    //
    cds : TClientDataSet;
begin
    //
    cds := DataSet as TClientDataSet;
    cds.CancelUpdates;
end;

procedure TdmData.cdsCommonAfterDelete(DataSet: TDataSet);
var
    //
    cds : TClientDataSet;
begin
    cds := DataSet as TClientDataSet;
    if cds.ApplyUpdates(0) = 0 then
    begin
        cds.Refresh;
    end
    else
    begin
        //
        cds.CancelUpdates;
    end;
end;
procedure TdmData.cdsCommonAfterPost(DataSet: TDataSet);
var
    //
    cds : TClientDataSet;
begin
    cds := DataSet as TClientDataSet;
    try
        if cds.ApplyUpdates(0) = 0 then
        begin
            cds.Refresh;
        end
        else
        begin
            //
            try
                cds.Edit;
            except
            end;
            Abort;
        end;
    except
        try
            cds.Edit;
        except
        end;
        raise;
    end;
end;
procedure TdmData.cdsCommonReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
    //
    raise Exception.Create(E.Message);
end;

procedure TdmData.cdsCounterAfterEdit(DataSet: TDataSet);
begin
    ExecForm(fCounterEditor);
end;

procedure TdmData.cdsCounterAfterInsert(DataSet: TDataSet);
begin
    //
    ExecForm(fCounterEditor);
end;

procedure TdmData.cdsParamsAfterEdit(DataSet: TDataSet);
begin
    //
    ExecForm(fSettingsEditor);
end;

procedure TdmData.cdsParamsAfterInsert(DataSet: TDataSet);
begin
    ExecForm(fSettingsEditor);
end;

procedure TdmData.cdsRequestServicesBeforeInsert(DataSet: TDataSet);
begin
    //
    ChildDataSetTest(DataSet as TClientDataSet);
end;

procedure TdmData.cdsTariffAfterEdit(DataSet: TDataSet);
begin
    ExecForm(fTariffEditor);
end;

procedure TdmData.cdsTariffAfterInsert(DataSet: TDataSet);
begin
    ExecForm(fTariffEditor);
end;

procedure TdmData.cdsCommonBeforeDelete(DataSet: TDataSet);
begin
    //
    if (MessageDlg('Подтвердите удаление?', mtConfirmation, [mbOK, mbCancel], 0) <> mrOk) then
    begin
        //
        Abort;
    end;
end;

procedure TdmData.cdsUserAfterEdit(DataSet: TDataSet);
begin
    ExecForm (fUserEditor);
end;

procedure TdmData.cdsUserAfterInsert(DataSet: TDataSet);
begin
    ExecForm (fUserEditor);
end;

procedure TdmData.cdsUserCalcFields(DataSet: TDataSet);
begin
    //
    cdsUserПользователь.Value := cdsUserФамилия.Value + ' ' +
                              cdsUserИмя.Value + ' ' +
                              cdsUserОтчество.Value;

end;

procedure TdmData.SQLConnectionAfterConnect(Sender: TObject);
begin
    FRemoteMethods := TdssmRemoteDataClient.Create(SQLConnection.DBXConnection);
    ActiveCDS (True);
end;

procedure TdmData.SQLConnectionBeforeDisconnect(Sender: TObject);
begin
    //
    try
        ActiveCDS (False);
        FRemoteMethods.Free;
    except
    end;
end;

end.
