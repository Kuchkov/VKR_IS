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
    cdsUserType���: TAutoIncField;
    cdsUserType��������: TWideStringField;
    cdsUser���: TAutoIncField;
    cdsUser�������: TWideStringField;
    cdsUser���: TWideStringField;
    cdsUser��������: TWideStringField;
    cdsUser�������: TWideStringField;
    cdsUser���_���_������������: TIntegerField;
    cdsUser�����: TWideStringField;
    cdsUser������: TWideStringField;
    cdsUser�����������_������: TBooleanField;
    cdsUser����_�����������: TDateTimeField;
    cdsUser���_������������: TStringField;
    ilDataSet32E_1: TImageList;
    ilDataSet32D_1: TImageList;
    cdsUser������������: TStringField;
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
    cdsUserInfo���: TAutoIncField;
    cdsUserInfo�������: TWideStringField;
    cdsUserInfo���: TWideStringField;
    cdsUserInfo��������: TWideStringField;
    cdsUserInfo�������: TWideStringField;
    cdsUserInfo���_���_������������: TIntegerField;
    cdsUserInfo���_������������: TWideStringField;
    cdsUserInfo�����: TWideStringField;
    cdsUserInfo�����������_������: TBooleanField;
    cdsUserInfo����_�����������: TDateTimeField;
    cdsParams���: TIntegerField;
    cdsParams��������_�����������: TWideStringField;
    cdsParams�����_�����: TWideStringField;
    cdsParams�����_������: TWideStringField;
    cdsParams�����_�����_�������: TWideStringField;
    cdsParams�����_����_�������: TIntegerField;
    cdsTariff: TClientDataSet;
    dsTariff: TDataSource;
    cdsCounter: TClientDataSet;
    dsCounter: TDataSource;
    cdsClient���: TAutoIncField;
    cdsClient�������: TWideStringField;
    cdsClient���: TWideStringField;
    cdsClient��������: TWideStringField;
    cdsClient�������: TWideStringField;
    cdsClientEmail: TWideStringField;
    cdsTariff���: TAutoIncField;
    cdsTariff����: TDateTimeField;
    cdsTariff���_���_�������: TIntegerField;
    cdsTariff��������: TFloatField;
    cdsTariff�����������: TBooleanField;
    cdsResourceType: TClientDataSet;
    dsResourceType: TDataSource;
    cdsResourceType���: TIntegerField;
    cdsResourceType��������: TWideStringField;
    cdsResourceType�������_��������: TWideStringField;
    cdsTariff���_�������: TStringField;
    cdsCounterData: TClientDataSet;
    dsCounterData: TDataSource;
    cdsAccrual: TClientDataSet;
    dsAccrual: TDataSource;
    cdsAccrual���: TAutoIncField;
    cdsAccrual����: TDateTimeField;
    cdsCounterData���_����������: TIntegerField;
    cdsCounterData���_������: TIntegerField;
    cdsCounterData���_���_�������: TIntegerField;
    cdsCounterData�������_���_�������: TWideStringField;
    cdsCounterData�������_�������_��������: TWideStringField;
    cdsCounterData�������_�����: TWideStringField;
    cdsCounterData�������_����_�����������: TDateTimeField;
    cdsCounterData�������_����_��������: TDateTimeField;
    cdsCounterData�������_�����������: TBooleanField;
    cdsCounterData������_�������: TWideStringField;
    cdsCounterData������_���: TWideStringField;
    cdsCounterData������_��������: TWideStringField;
    cdsCounterData������_Email: TWideStringField;
    cdsCounterData������: TFloatField;
    cdsCounterData��������: TFloatField;
    cdsCounterData�����_����������: TFloatField;
    cdsCounterData����_�����������: TDateTimeField;
    cdsCounterData����������: TBooleanField;
    cdsCounterData����_��������: TDateTimeField;
    cdsCounterData����: TDateTimeField;
    cdsCounterData���_�������: TIntegerField;
    cdsCounterData���_�����: TIntegerField;
    cdsCounterData�����_����: TDateTimeField;
    cdsCounterData�����_��������: TFloatField;
    cdsCounter���: TAutoIncField;
    cdsCounter����_�����������: TDateTimeField;
    cdsCounter��������: TFloatField;
    cdsCounter����_��������: TDateTimeField;
    cdsCounter�����: TWideStringField;
    cdsCounter���_������: TIntegerField;
    cdsCounter���_���_�������: TIntegerField;
    cdsCounter�����������: TBooleanField;
    cdsCounter���_�������: TStringField;
    cdsClient������: TStringField;
    cdsCounter������: TStringField;
    cdsHouse: TClientDataSet;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    dsHouse: TDataSource;
    cdsHouse�����: TWideStringField;
    cdsCounter���_���: TIntegerField;
    cdsCounter���: TStringField;
    cdsUserInfo���_�������_����������: TIntegerField;
    cdsUserInfo�������_����������: TDateTimeField;
    cdsCounterData������_���������: TBooleanField;

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
                    Result := Result + '������ (' + IntToStr(I + 1) + ') : ' + E.Message;
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
        raise Exception.Create('���������� ��������� ����!');
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
        raise Exception.Create('������� ���������� �������� ������ � ������������ ����� ������');
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
        MessageDlg('� ��� ��� ������� � ��������� ������� ������: ' + #13 + S, mtInformation, [mbOk], 0);
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
    cdsClient������.AsString := cdsClient�������.Value + ' ' +
                                cdsClient���.Value + ' ' +
                                cdsClient��������.Value;
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
    if (MessageDlg('����������� ��������?', mtConfirmation, [mbOK, mbCancel], 0) <> mrOk) then
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
    cdsUser������������.Value := cdsUser�������.Value + ' ' +
                              cdsUser���.Value + ' ' +
                              cdsUser��������.Value;

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
