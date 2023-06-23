unit ufSettingsEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask, DB, Vcl.ComCtrls;

type
  TfSettingsEditor = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit8: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fSettingsEditor: TfSettingsEditor;

implementation

{$R *.dfm}

uses udmData;

procedure TfSettingsEditor.Button1Click(Sender: TObject);
begin
    //
    if (dmData.cdsParams.State = dsEdit) or (dmData.cdsParams.State = dsInsert) then
        dmData.cdsParams.Post;
    Close;
end;

procedure TfSettingsEditor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    //
    dmData.cdsParams.Cancel;
end;

procedure TfSettingsEditor.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #27 then Close;

end;

end.
