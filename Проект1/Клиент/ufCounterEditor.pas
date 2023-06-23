unit ufCounterEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask, DB, Vcl.ComCtrls;

type
  TfCounterEditor = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit3: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBCheckBox1: TDBCheckBox;
    Label4: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCounterEditor: TfCounterEditor;

implementation

{$R *.dfm}

uses udmData;

procedure TfCounterEditor.Button1Click(Sender: TObject);
begin
    //
    if (dmData.cdsCounter.State = dsEdit) or (dmData.cdsCounter.State = dsInsert) then
        dmData.cdsCounter.Post;
    Close;
end;

procedure TfCounterEditor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    //
    dmData.cdsCounter.Cancel;
end;

procedure TfCounterEditor.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #27 then Close;

end;

end.
