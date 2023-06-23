unit ufMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ActnList, Vcl.ActnMan, Vcl.ToolWin, Vcl.ActnCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ImgList, Vcl.Menus,
  Vcl.ComCtrls, Vcl.DBActns, Vcl.PlatformDefaultStyleActnCtrls, Vcl.StdActns,
  Vcl.ExtCtrls, Vcl.DBClientActns, Data.DB;

type
  TfMain = class(TForm)
    amMain: TActionManager;
    tbMain: TToolBar;
    aConnect: TAction;
    ToolButton3: TToolButton;
    ToolButton7: TToolButton;
    WindowClose1: TWindowClose;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    WindowMinimizeAll1: TWindowMinimizeAll;
    WindowArrange1: TWindowArrange;
    mmMain: TMainMenu;
    N1: TMenuItem;
    Close1: TMenuItem;
    Cascade1: TMenuItem;
    ileHorizontally1: TMenuItem;
    ileVertically1: TMenuItem;
    MinimizeAll1: TMenuItem;
    Arrange1: TMenuItem;
    tiMain: TTrayIcon;
    pmMain: TPopupMenu;
    aShowMainForm: TAction;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    aClose: TAction;
    N10: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    tbNavigator: TToolBar;
    ToolButton12: TToolButton;
    ToolButton15: TToolButton;
    ToolButton2: TToolButton;
    ToolButton17: TToolButton;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton1: TToolButton;
    ToolButton20: TToolButton;
    ToolButton21: TToolButton;
    ToolButton4: TToolButton;
    ToolButton22: TToolButton;
    aShowRefBooks: TAction;
    ToolButton8: TToolButton;
    ToolButton6: TToolButton;
    aShowUser: TAction;
    ToolButton11: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    sbMain: TStatusBar;
    dsUI: TDataSource;
    N7: TMenuItem;
    aShowClient: TAction;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    N8: TMenuItem;
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
    ToolButton5: TToolButton;
    ToolButton16: TToolButton;
    aShowCounter: TAction;
    aShowAccrualData: TAction;
    dseUserSettings: TDataSetEdit;
    aShowUserSettings: TAction;
    procedure aConnectExecute(Sender: TObject);
    procedure aShowRefBooksExecute(Sender: TObject);
    procedure aCloseExecute(Sender: TObject);
    procedure aShowMainFormExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure tiMainClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure aShowUserExecute(Sender: TObject);
    procedure dsUIDataChange(Sender: TObject; Field: TField);
    procedure aShowClientExecute(Sender: TObject);
    procedure aShowCounterExecute(Sender: TObject);
    procedure aShowAccrualDataExecute(Sender: TObject);
    procedure aShowUserSettingsExecute(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    //

    procedure FormsClose;
    procedure MaxForm (Form : TForm);
  end;

var
  fMain: TfMain;

implementation

{$R *.dfm}

uses udmData, ufLogin, ufRefBooks, ufUser, udmReport, ufClient, ufCounter,
     ufAccrualData, ufUserSettingsEditor;

procedure TfMain.aCloseExecute(Sender: TObject);
begin
    Application.Terminate;
end;

procedure TfMain.aConnectExecute(Sender: TObject);
begin
    //
    if (dmData.SQLConnection.Connected = true) then
    begin
        //
        dmData.SQLConnection.Connected := false;
        aConnect.Caption := 'Âõîä';
        aConnect.ImageIndex := 0;
    end
    else
    begin
        //
        if (fLogin.ShowModal = mrOk) then
        begin
            //
            aConnect.Caption := 'Âûõîä';
            aConnect.ImageIndex := 1;
        end;
    end;
end;

procedure TfMain.aShowRefBooksExecute(Sender: TObject);
begin
    //
    MaxForm(fRefBooks);
end;

procedure TfMain.aShowUserExecute(Sender: TObject);
begin
    MaxForm(fUser);
end;

procedure TfMain.aShowUserSettingsExecute(Sender: TObject);
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

procedure TfMain.dsUIDataChange(Sender: TObject; Field: TField);
var
    //
    S : string;
begin
    //
    sbMain.Panels[0].Text := dmData.cdsUserInfoÒèï_ïîëüçîâàòåëÿ.Value;
    sbMain.Panels[1].Text := dmData.cdsUserInfoÔàìèëèÿ.Value + ' ' +
                             dmData.cdsUserInfoÈìÿ.Value + ' ' +
                             dmData.cdsUserInfoÎò÷åñòâî.Value;
    S := dmData.cdsUserInfoÒåêóùåå_íà÷èñëåíèå.AsString;
    if (S = '') then S := 'íå âûáðàíî';

    sbMain.Panels[2].Text := 'Òåêóùåå íà÷èñëåíèå ' + S;

end;

procedure TfMain.aShowAccrualDataExecute(Sender: TObject);
begin
    MaxForm(fAccrualData);
end;

procedure TfMain.aShowClientExecute(Sender: TObject);
begin
    MaxForm(fClient);
end;

procedure TfMain.aShowCounterExecute(Sender: TObject);
begin
    //
    MaxForm(fCounter);
end;

procedure TfMain.aShowMainFormExecute(Sender: TObject);
begin
    //
    Show;
    SetForegroundWindow(Self.Handle);
end;

procedure TfMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    //
    CanClose := false;
    Visible := false;
end;

procedure TfMain.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #27 then Hide;
end;

procedure TfMain.FormsClose;
begin


end;

procedure TfMain.FormShow(Sender: TObject);
begin
    //
    WindowMinimizeAll1.Execute;
end;

procedure TfMain.MaxForm (Form : TForm);
begin
    //
    WindowMinimizeAll1.Execute;
    Form.WindowState := wsMaximized;
    Form.Show;
end;

procedure TfMain.tiMainClick(Sender: TObject);
begin
    //
    aShowMainForm.Execute;
end;

end.
