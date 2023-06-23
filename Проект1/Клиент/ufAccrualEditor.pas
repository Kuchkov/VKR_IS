unit ufAccrualEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask, DB, Vcl.ComCtrls;

type
  TfAccrualEditor = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label5: TLabel;
    Label3: TLabel;
    DBEdit5: TDBEdit;
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
  fAccrualEditor: TfAccrualEditor;

implementation

{$R *.dfm}

uses udmData;

procedure TfAccrualEditor.Button1Click(Sender: TObject);
begin
    //
    if (dmData.cdsAccrual.State = dsEdit) or (dmData.cdsAccrual.State = dsInsert) then
        dmData.cdsAccrual.Post;
    Close;
end;

procedure TfAccrualEditor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    //
    dmData.cdsAccrual.Cancel;
end;

procedure TfAccrualEditor.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #27 then Close;
end;

end.
