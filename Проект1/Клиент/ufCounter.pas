unit ufCounter;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfCounter = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    dblcbClient: TDBLookupComboBox;
    Label2: TLabel;
    dblcbHouse: TDBLookupComboBox;
    Panel2: TPanel;
    Label3: TLabel;
    dblcbResourceType: TDBLookupComboBox;
    bClientClear: TButton;
    bHouseClear: TButton;
    bResourceTypeClear: TButton;
    Label4: TLabel;
    eNumber: TEdit;
    procedure dblcbClientClick(Sender: TObject);
    procedure bResourceTypeClearClick(Sender: TObject);
    procedure bClientClearClick(Sender: TObject);
    procedure bHouseClearClick(Sender: TObject);
    procedure eNumberChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetFilter;
  end;

var
  fCounter: TfCounter;

implementation

{$R *.dfm}

uses udmData;

procedure TfCounter.SetFilter;
var
    //
    F : string;
begin
    //
    F := '';

    if (VarIsNull(dblcbClient.KeyValue) = False) then
    begin
        //
        if (F <> '') then F := F + ' and ';
        F := F + 'Код_Клиент = ' + IntToStr (dblcbClient.KeyValue);
    end;

    if (VarIsNull(dblcbHouse.KeyValue) = False) then
    begin
        //
        if (F <> '') then F := F + ' and ';
        F := F + 'Код_Дом = ' + IntToStr (dblcbHouse.KeyValue);
    end;

    if (VarIsNull(dblcbResourceType.KeyValue) = False) then
    begin
        //
        if (F <> '') then F := F + ' and ';
        F := F + 'Код_Тип_ресурса = ' + IntToStr (dblcbResourceType.KeyValue);
    end;

    if (eNumber.Text <> '') then
    begin
        //
        if (F <> '') then F := F + ' and ';
        F := F + 'Номер LIKE ' + QuotedStr (eNumber.Text + '%');
    end;

    dmData.cdsCounter.Filter := F;
    dmData.cdsCounter.Filtered := F <> '';
end;

procedure TfCounter.bClientClearClick(Sender: TObject);
begin
    //
    dblcbClient.KeyValue := Null;
    SetFilter;
end;

procedure TfCounter.bHouseClearClick(Sender: TObject);
begin
    dblcbHouse.KeyValue := Null;
    SetFilter;
end;

procedure TfCounter.bResourceTypeClearClick(Sender: TObject);
begin
    //
    dblcbResourceType.KeyValue := Null;
    SetFilter;
end;

procedure TfCounter.dblcbClientClick(Sender: TObject);
begin
    //
    SetFilter;
end;

procedure TfCounter.eNumberChange(Sender: TObject);
begin
    //
    SetFilter;
end;

end.
