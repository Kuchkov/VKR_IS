unit ufClientEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask, DB, Vcl.ComCtrls;

type
  TfClientEditor = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fClientEditor: TfClientEditor;

implementation

{$R *.dfm}

uses udmData;

procedure TfClientEditor.Button1Click(Sender: TObject);
begin
    //
    if (dmData.cdsClient.State = dsEdit) or (dmData.cdsClient.State = dsInsert) then
        dmData.cdsClient.Post;
    Close;
end;

procedure TfClientEditor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    //
    dmData.cdsClient.Cancel;
end;

procedure TfClientEditor.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #27 then Close;

end;

end.
