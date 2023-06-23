unit ufUserSettingsEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask, DB, Vcl.ComCtrls;

type
  TfUserSettingsEditor = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    DBLookupListBox1: TDBLookupListBox;
    bClear: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bClearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fUserSettingsEditor: TfUserSettingsEditor;

implementation

{$R *.dfm}

uses udmData;

procedure TfUserSettingsEditor.bClearClick(Sender: TObject);
begin
    //
    dmData.cdsUserInfo.Edit;
    dmData.cdsUserInfoКод_Текущее_начисление.AsVariant := Null;
end;

procedure TfUserSettingsEditor.Button1Click(Sender: TObject);
begin
    //
    if (dmData.cdsUserInfo.State = dsEdit) or (dmData.cdsUserInfo.State = dsInsert) then
        dmData.cdsUserInfo.Post;
    ModalResult := mrOk;
end;

procedure TfUserSettingsEditor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    //
    dmData.cdsUserInfo.Cancel;
end;

procedure TfUserSettingsEditor.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #27 then Close;

end;

end.
