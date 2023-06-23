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
        ('select MAX (Значение) as F from Показания_счетчика where Код_Начисление <> '
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
        F := 'Код_Начисление = ' + IntToStr(GetCurrentAccrualKey);
        if ClientID <> 0 then
        begin
            if F <> '' then
                F := F + ' and ';
            F := F + 'Код_Клиент = ' + IntToStr(ClientID);
        end;
        if (F <> '') then
            F := ' where ' + F;
        Q := dmServer.GetQuery('select * from Запрос_Данные_для_отправки' + F);
        for I := 1 to Q.RecordCount do
        begin
            //
            Q.RecNo := I;

            Msg.Clear;
            Msg.Add('Уважаемый (ая) ' + Q.FieldByName('Клиент_Фамилия').AsString
                + ' ' + Q.FieldByName('Клиент_Имя').AsString + ' ' +
                Q.FieldByName('Клиент_Отчество').AsString + '!');
            Msg.Add('');
            Msg.Add('Организация "' + SS.OrganizationName +
                '" предоставляет Вам сведения о израсходованных вами ресурсах на '
                + DateToStr(Q.FieldByName('Дата').AsDateTime));
            Msg.Add('Ресурс "' + Q.FieldByName('Счетчик_Тип_ресурса')
                .AsString + '"');
            Msg.Add('Израсходовано ' + Q.FieldByName('Расход').AsString + ' ' +
                Q.FieldByName('Счетчик_Единица_имерения').AsString);
            Msg.Add('К оплате ' + Q.FieldByName('Сумма_начисления').AsString
                + ' руб.');
            Msg.Add('');

            SendMessage(SS.ServerAddress, SS.ServerPort, SS.ServerLogin,
                SS.ServerPassword, Q.FieldByName('Клиент_Email').AsString,
                'Ваши показания счетчиков и начисления', Msg);
            Q.Edit;
            Q.FieldByName('Дата_отправки').AsDateTime := Now;
            Q.FieldByName('Отправлено').AsBoolean := True;
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
        Q := dmServer.GetQuery('select * from Запрос_Действующие_счетчики');
        W := dmServer.GetQuery
            ('select * from Показания_счетчика where Код_Счетчик = 0');

        for I := 1 to Q.RecordCount do
        begin
            //
            Q.RecNo := I;
            W.Insert;
            W.FieldByName('Код_Счетчик').AsInteger := Q.FieldByName('Код')
                .AsInteger;
            W.FieldByName('Код_Начисление').AsInteger := AccrualID;
            W.FieldByName('Отправлено').AsBoolean := false;
            W.FieldByName('Данные_загружены').AsBoolean := false;
            W.FieldByName('Код_Тариф').AsInteger :=
                GetDefaultTariffInfo(Q.FieldByName('Код_Тип_ресурса')
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
            CopyAllCountersIntoAccrual(DataSet.FieldByName('Код').AsInteger);
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
        raise Exception.Create('Не задан Email получателя');
    if (ServerPort <= 0) then
        raise Exception.Create('Порт почтового сервера не задан');
    if (ServerAddress = '') then
        raise Exception.Create('Адрес почтового сервера не задан');
    if (ServerLogin = '') then
        raise Exception.Create('Не задан Email отправителя');
    if (ServerPassword = '') then
        raise Exception.Create('Не задан пароль для почты отправителя');

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
                // Текст темы сообщения
                IdMsg.Subject := Subject;
                IdMsg.ContentType := 'multipart/mixed; charset=windows-1251';
                // Указываем адрес получателя
                IdMsg.Recipients.EMailAddresses := RecipientAddress;
                // Указываем автора письма
                IdMsg.From.Address := ServerLogin;
                // Дата отправки письма может быть любой
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
    Q := dmServer.GetQuery('select * from Пользователь where Код = ' +
        IntToStr(FCurrentUserKey));
    try
        //
        if (Q.RecordCount = 0) then
            raise Exception.Create('Пользователь не найден');
        if (Q.FieldByName('Код_Текущее_начисление').IsNull) then
            raise Exception.Create('Вы не выбрали текущее начисление');
        Result := Q.FieldByName('Код_Текущее_начисление').AsInteger;
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
    Q := dmServer.GetQuery('select * from Параметры where Код = 1');
    try
        //
        if (Q.RecordCount = 0) then
            raise Exception.Create('Параметры системы не заданы');
        Result.OrganizationName :=
            Q.FieldByName('Название_организации').AsString;
        Result.ServerAddress := Q.FieldByName('Почта_Адрес_сервера').AsString;
        Result.ServerPort := Q.FieldByName('Почта_Порт_сервера').AsInteger;
        Result.ServerLogin := Q.FieldByName('Почта_Логин').AsString;
        Result.ServerPassword := Q.FieldByName('Почта_Пароль').AsString;
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
    Q := dmServer.GetQuery('select * from Счетчик where Номер = ' +
        QuotedStr(Number));
    try
        //
        if (Q.RecordCount = 0) then
            raise Exception.Create('Счетчик (Номер = ' + Number +
                ') не найден');
        Result.CounterID := Q.FieldByName('Код').AsInteger;
        Result.ResourceTypeID := Q.FieldByName('Код_Тип_ресурса').AsInteger;
        Result.IsUsable := Q.FieldByName('Действующий').AsBoolean;
        Result.Value := Q.FieldByName('Значение').AsFloat;
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
    Q := dmServer.GetQuery('select * from Счетчик where Код = ' +
        IntToStr(CounterID));
    try
        //
        if (Q.RecordCount = 0) then
            raise Exception.Create('Счетчик (ID = ' + IntToStr(CounterID) +
                ') не найден');
        Result.CounterID := Q.FieldByName('Код').AsInteger;
        Result.ResourceTypeID := Q.FieldByName('Код_Тип_ресурса').AsInteger;
        Result.IsUsable := Q.FieldByName('Действующий').AsBoolean;
        Result.Value := Q.FieldByName('Значение').AsFloat;
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
        ('select * from Показания_счетчика where Код_Счетчик = ' +
        IntToStr(CounterInfo.CounterID) + ' and Код_Начисление = ' +
        IntToStr(CurrentAccrualKey));
    try
        //
        if (Q.RecordCount = 0) then
        begin
            Q.Insert;
            Q.FieldByName('Код_Счетчик').AsInteger := CounterInfo.CounterID;
            Q.FieldByName('Код_Начисление').AsInteger := CurrentAccrualKey;
            Q.FieldByName('Отправлено').AsBoolean := false;
        end
        else
        begin
            Q.Edit;
        end;
        Q.FieldByName('Код_Тариф').AsInteger := TariffInfo.TariffID;
        Q.FieldByName('Значение').AsFloat := Value;
        Q.FieldByName('Расход').AsFloat := Value - GetPriorCounterValue
            (CounterInfo.CounterID);
        Q.FieldByName('Сумма_начисления').AsFloat :=
            Round(Q.FieldByName('Расход').AsFloat * TariffInfo.Value *
            100) / 100;
        Q.FieldByName('Дата_регистрации').AsDateTime := Now;
        Q.FieldByName('Данные_загружены').AsBoolean := True;
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
  ///  Формат файла:
  ///  128 байта - идентификатор счетчика;
  ///  4   байта - текущее значение;
  ///  4   байта - дата измерения;
  ///  32  байта - серийный номер счетчика;
  ///
  MS := TMemoryStream.Create;
  try
  ReadStreamFromStream(Source, MS);
  MS.Position := 0;
  if (MS.Size mod cSingleRecord) > 0 then
  raise Exception.Create('Файл имеет неверный формат');

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
    Q := dmServer.GetQuery('select * from Тип_ресурса where Код = ' +
        IntToStr(ResourceTypeID));
    try
        //
        if (Q.RecordCount = 0) then
            raise Exception.Create('Ресурс (ID = ' + IntToStr(ResourceTypeID) +
                ') не найден');
        Result := Q.FieldByName('Название').AsString;
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
        ('select * from Запрос_Действующий_тариф where Код_Тип_ресурса = ' +
        IntToStr(ResourceTypeID));
    try
        //
        if (Q.RecordCount = 0) then
            raise Exception.Create('Действующий тариф (Ресурс "' +
                GetResourceName(ResourceTypeID) + '") не задан!');
        Q.First;
        Result.TariffID := Q.FieldByName('Код').AsInteger;
        Result.ResourceTypeID := ResourceTypeID;
        Result.Value := Q.FieldByName('Значение').AsFloat;
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
        Add('select * from Запрос_Пользователь where Код = ' +
            IntToStr(FCurrentUserKey));
    end;
end;

procedure TdssmRemoteData.IsAdmin;
begin
    //
    if FCurrentUserTypeKey <> c_Admin_Key then
        raise Exception.Create('Доступно только администратору');
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
