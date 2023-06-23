unit ufTariffEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask, DB, Vcl.ComCtrls;

type
  TfTariffEditor = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit3: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBCheckBox1: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTariffEditor: TfTariffEditor;

implementation

{$R *.dfm}

uses udmData;

procedure TfTariffEditor.Button1Click(Sender: TObject);
begin
    //
    if (dmData.cdsTariff.State = dsEdit) or (dmData.cdsTariff.State = dsInsert) then
        dmData.cdsTariff.Post;
    Close;
end;

procedure TfTariffEditor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    //
    dmData.cdsTariff.Cancel;
end;

procedure TfTariffEditor.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #27 then Close;
end;

end.
