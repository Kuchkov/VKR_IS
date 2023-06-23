unit ufAccrualData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfAccrualData = class(TForm)
    odCounterData: TOpenDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    bSend: TButton;
    bSendAll: TButton;
    bLoad: TButton;
    bSelect: TButton;
    DBGrid1: TDBGrid;
    Splitter1: TSplitter;
    mLog: TMemo;
    DBGrid2: TDBGrid;
    procedure bSendClick(Sender: TObject);
    procedure bSendAllClick(Sender: TObject);
    procedure bLoadClick(Sender: TObject);
    procedure bSelectClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAccrualData: TfAccrualData;

implementation

{$R *.dfm}

uses udmData, ufUserSettingsEditor;

procedure TfAccrualData.bLoadClick(Sender: TObject);
var
    I : Integer;
begin
    //
    dmData.TestActiveConnection;

    if odCounterData.Execute then
    begin
        //
        mLog.Clear;
        for I := 0 to odCounterData.Files.Count - 1 do
        begin
            mLog.Lines.Add (dmData.LoadCDF (odCounterData.Files.Strings[I]));
        end;
        dmData.cdsCounterData.Open;
        dmData.cdsCounterData.Refresh;
    end;
end;

procedure TfAccrualData.bSelectClick(Sender: TObject);
begin
    //
    dmData.TestActiveConnection;
    dmData.cdsUserInfo.Edit;
    if fUserSettingsEditor.ShowModal = mrOk then
    begin
        if (dmData.cdsCounterData.Active = False) then
        begin
            dmData.cdsCounterData.Open;
        end
        else
        begin
            dmData.cdsCounterData.Refresh;
        end;
        dmData.cdsUserInfo.Refresh;
    end;
end;

procedure TfAccrualData.bSendAllClick(Sender: TObject);
begin
    //
    dmData.TestActiveConnection;

    if dmData.cdsCounterData.RecordCount = 0 then
        raise Exception.Create('Нет данных для обработки');

    if MessageDlg ('Подтвердите операцию?', mtConfirmation, [mbOK, mbCancel], 0) = mrOk then
    begin
        //
        dmData.RemoteMethods.SetAccrualForClient(0);
    end;
end;

procedure TfAccrualData.bSendClick(Sender: TObject);
begin
    //
    dmData.TestActiveConnection;

    if dmData.cdsCounterData.RecordCount = 0 then
        raise Exception.Create('Нет данных для обработки');

    if MessageDlg ('Подтвердите операцию?', mtConfirmation, [mbOK, mbCancel], 0) = mrOk then
    begin
        //
        dmData.RemoteMethods.SetAccrualForClient(dmData.cdsCounterDataКод_Клиент.Value);
    end;
end;

end.
