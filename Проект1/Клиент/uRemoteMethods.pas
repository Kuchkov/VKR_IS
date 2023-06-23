//
// Created by the DataSnap proxy generator.
// 23.04.2014 23:27:22
//

unit uRemoteMethods;

interface

uses Data.DBXCommon, Data.DBXClient, Data.DBXDataSnap, Data.DBXJSON, DSProxy, Classes, System.SysUtils, Data.DB, Data.SqlExpr, Data.DBXDBReaders, Data.DBXJSONReflect;

type
  TdssmRemoteDataClient = class(TDSAdminClient)
  private
    FDSServerModuleCreateCommand: TDBXCommand;
    FqUserInfoBeforeOpenCommand: TDBXCommand;
    FqCounterDataBeforeOpenCommand: TDBXCommand;
    FGetDateCommand: TDBXCommand;
    FGetCurrentUserTypeKeyCommand: TDBXCommand;
    FGetCurrentAccrualKeyCommand: TDBXCommand;
    FAddAccrualCommand: TDBXCommand;
    FSendMessageCommand: TDBXCommand;
    FSetAccrualForClientCommand: TDBXCommand;
  public
    constructor Create(ADBXConnection: TDBXConnection); overload;
    constructor Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean); overload;
    destructor Destroy; override;
    procedure DSServerModuleCreate(Sender: TObject);
    procedure qUserInfoBeforeOpen(DataSet: TDataSet);
    procedure qCounterDataBeforeOpen(DataSet: TDataSet);
    function GetDate: TDateTime;
    function GetCurrentUserTypeKey: Integer;
    function GetCurrentAccrualKey: Integer;
    procedure AddAccrual(StrCounterID: string; Value: Double);
    procedure SendMessage(ServerAddress: string; ServerPort: Integer; ServerLogin: string; ServerPassword: string; RecipientAddress: string; Subject: string; Msg: TStrings);
    procedure SetAccrualForClient(ClientID: Integer);
  end;

implementation

procedure TdssmRemoteDataClient.DSServerModuleCreate(Sender: TObject);
begin
  if FDSServerModuleCreateCommand = nil then
  begin
    FDSServerModuleCreateCommand := FDBXConnection.CreateCommand;
    FDSServerModuleCreateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FDSServerModuleCreateCommand.Text := 'TdssmRemoteData.DSServerModuleCreate';
    FDSServerModuleCreateCommand.Prepare;
  end;
  if not Assigned(Sender) then
    FDSServerModuleCreateCommand.Parameters[0].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FDSServerModuleCreateCommand.Parameters[0].ConnectionHandler).GetJSONMarshaler;
    try
      FDSServerModuleCreateCommand.Parameters[0].Value.SetJSONValue(FMarshal.Marshal(Sender), True);
      if FInstanceOwner then
        Sender.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FDSServerModuleCreateCommand.ExecuteUpdate;
end;

procedure TdssmRemoteDataClient.qUserInfoBeforeOpen(DataSet: TDataSet);
begin
  if FqUserInfoBeforeOpenCommand = nil then
  begin
    FqUserInfoBeforeOpenCommand := FDBXConnection.CreateCommand;
    FqUserInfoBeforeOpenCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FqUserInfoBeforeOpenCommand.Text := 'TdssmRemoteData.qUserInfoBeforeOpen';
    FqUserInfoBeforeOpenCommand.Prepare;
  end;
  FqUserInfoBeforeOpenCommand.Parameters[0].Value.SetDBXReader(TDBXDataSetReader.Create(DataSet, FInstanceOwner), True);
  FqUserInfoBeforeOpenCommand.ExecuteUpdate;
end;

procedure TdssmRemoteDataClient.qCounterDataBeforeOpen(DataSet: TDataSet);
begin
  if FqCounterDataBeforeOpenCommand = nil then
  begin
    FqCounterDataBeforeOpenCommand := FDBXConnection.CreateCommand;
    FqCounterDataBeforeOpenCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FqCounterDataBeforeOpenCommand.Text := 'TdssmRemoteData.qCounterDataBeforeOpen';
    FqCounterDataBeforeOpenCommand.Prepare;
  end;
  FqCounterDataBeforeOpenCommand.Parameters[0].Value.SetDBXReader(TDBXDataSetReader.Create(DataSet, FInstanceOwner), True);
  FqCounterDataBeforeOpenCommand.ExecuteUpdate;
end;

function TdssmRemoteDataClient.GetDate: TDateTime;
begin
  if FGetDateCommand = nil then
  begin
    FGetDateCommand := FDBXConnection.CreateCommand;
    FGetDateCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetDateCommand.Text := 'TdssmRemoteData.GetDate';
    FGetDateCommand.Prepare;
  end;
  FGetDateCommand.ExecuteUpdate;
  Result := FGetDateCommand.Parameters[0].Value.AsDateTime;
end;

function TdssmRemoteDataClient.GetCurrentUserTypeKey: Integer;
begin
  if FGetCurrentUserTypeKeyCommand = nil then
  begin
    FGetCurrentUserTypeKeyCommand := FDBXConnection.CreateCommand;
    FGetCurrentUserTypeKeyCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetCurrentUserTypeKeyCommand.Text := 'TdssmRemoteData.GetCurrentUserTypeKey';
    FGetCurrentUserTypeKeyCommand.Prepare;
  end;
  FGetCurrentUserTypeKeyCommand.ExecuteUpdate;
  Result := FGetCurrentUserTypeKeyCommand.Parameters[0].Value.GetInt32;
end;

function TdssmRemoteDataClient.GetCurrentAccrualKey: Integer;
begin
  if FGetCurrentAccrualKeyCommand = nil then
  begin
    FGetCurrentAccrualKeyCommand := FDBXConnection.CreateCommand;
    FGetCurrentAccrualKeyCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FGetCurrentAccrualKeyCommand.Text := 'TdssmRemoteData.GetCurrentAccrualKey';
    FGetCurrentAccrualKeyCommand.Prepare;
  end;
  FGetCurrentAccrualKeyCommand.ExecuteUpdate;
  Result := FGetCurrentAccrualKeyCommand.Parameters[0].Value.GetInt32;
end;

procedure TdssmRemoteDataClient.AddAccrual(StrCounterID: string; Value: Double);
begin
  if FAddAccrualCommand = nil then
  begin
    FAddAccrualCommand := FDBXConnection.CreateCommand;
    FAddAccrualCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FAddAccrualCommand.Text := 'TdssmRemoteData.AddAccrual';
    FAddAccrualCommand.Prepare;
  end;
  FAddAccrualCommand.Parameters[0].Value.SetWideString(StrCounterID);
  FAddAccrualCommand.Parameters[1].Value.SetDouble(Value);
  FAddAccrualCommand.ExecuteUpdate;
end;

procedure TdssmRemoteDataClient.SendMessage(ServerAddress: string; ServerPort: Integer; ServerLogin: string; ServerPassword: string; RecipientAddress: string; Subject: string; Msg: TStrings);
begin
  if FSendMessageCommand = nil then
  begin
    FSendMessageCommand := FDBXConnection.CreateCommand;
    FSendMessageCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSendMessageCommand.Text := 'TdssmRemoteData.SendMessage';
    FSendMessageCommand.Prepare;
  end;
  FSendMessageCommand.Parameters[0].Value.SetWideString(ServerAddress);
  FSendMessageCommand.Parameters[1].Value.SetInt32(ServerPort);
  FSendMessageCommand.Parameters[2].Value.SetWideString(ServerLogin);
  FSendMessageCommand.Parameters[3].Value.SetWideString(ServerPassword);
  FSendMessageCommand.Parameters[4].Value.SetWideString(RecipientAddress);
  FSendMessageCommand.Parameters[5].Value.SetWideString(Subject);
  if not Assigned(Msg) then
    FSendMessageCommand.Parameters[6].Value.SetNull
  else
  begin
    FMarshal := TDBXClientCommand(FSendMessageCommand.Parameters[6].ConnectionHandler).GetJSONMarshaler;
    try
      FSendMessageCommand.Parameters[6].Value.SetJSONValue(FMarshal.Marshal(Msg), True);
      if FInstanceOwner then
        Msg.Free
    finally
      FreeAndNil(FMarshal)
    end
    end;
  FSendMessageCommand.ExecuteUpdate;
end;

procedure TdssmRemoteDataClient.SetAccrualForClient(ClientID: Integer);
begin
  if FSetAccrualForClientCommand = nil then
  begin
    FSetAccrualForClientCommand := FDBXConnection.CreateCommand;
    FSetAccrualForClientCommand.CommandType := TDBXCommandTypes.DSServerMethod;
    FSetAccrualForClientCommand.Text := 'TdssmRemoteData.SetAccrualForClient';
    FSetAccrualForClientCommand.Prepare;
  end;
  FSetAccrualForClientCommand.Parameters[0].Value.SetInt32(ClientID);
  FSetAccrualForClientCommand.ExecuteUpdate;
end;


constructor TdssmRemoteDataClient.Create(ADBXConnection: TDBXConnection);
begin
  inherited Create(ADBXConnection);
end;


constructor TdssmRemoteDataClient.Create(ADBXConnection: TDBXConnection; AInstanceOwner: Boolean);
begin
  inherited Create(ADBXConnection, AInstanceOwner);
end;


destructor TdssmRemoteDataClient.Destroy;
begin
  FreeAndNil(FDSServerModuleCreateCommand);
  FreeAndNil(FqUserInfoBeforeOpenCommand);
  FreeAndNil(FqCounterDataBeforeOpenCommand);
  FreeAndNil(FGetDateCommand);
  FreeAndNil(FGetCurrentUserTypeKeyCommand);
  FreeAndNil(FGetCurrentAccrualKeyCommand);
  FreeAndNil(FAddAccrualCommand);
  FreeAndNil(FSendMessageCommand);
  FreeAndNil(FSetAccrualForClientCommand);
  inherited;
end;

end.

