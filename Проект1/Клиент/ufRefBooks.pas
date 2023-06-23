unit ufRefBooks;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.DBClientActns, Vcl.DBActns, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.ImgList, Vcl.ToolWin,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ExtDlgs;

type
  TfRefBooks = class(TForm)
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid8: TDBGrid;
    TabSheet7: TTabSheet;
    DBGrid5: TDBGrid;
    TabSheet10: TTabSheet;
    DBGrid9: TDBGrid;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet4: TTabSheet;
    DBGrid3: TDBGrid;
    procedure DBGrid9TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRefBooks: TfRefBooks;

implementation

{$R *.dfm}

uses udmData, uCommon;

procedure TfRefBooks.DBGrid9TitleClick(Column: TColumn);
begin
    uCommon.dbgTitleClick(Column);
end;

end.
