unit ufUser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, uCommon,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TfUser = class(TForm)
    DBGrid5: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fUser: TfUser;

implementation

{$R *.dfm}

uses udmData;

end.



