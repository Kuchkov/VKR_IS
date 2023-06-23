unit ufUserEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask, DB, Vcl.ComCtrls;

type
  TfUserEditor = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBLookupComboBox1: TDBLookupComboBox;
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
  fUserEditor: TfUserEditor;

implementation

{$R *.dfm}

uses udmData;

procedure TfUserEditor.Button1Click(Sender: TObject);
begin
    //
    if (dmData.cdsUser.State = dsInsert) or (dmData.cdsUser.State = dsEdit) then
        dmData.cdsUser.Post;
    Close;
end;

procedure TfUserEditor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    //
    dmData.cdsUser.Cancel;
end;

procedure TfUserEditor.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #27 then Close;

end;

end.
