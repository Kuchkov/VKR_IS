unit ufMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ActnCtrls, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnMenus,
  Vcl.RibbonActnMenus, Vcl.ActnList, Vcl.Menus, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.PlatformDefaultStyleActnCtrls, Data.DB, VCLTee.TeEngine, VCLTee.Series,
  VCLTee.TeeProcs, VCLTee.Chart, VCLTee.TeeData, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TfMain = class(TForm)
    amMain: TActionManager;
    tiMain: TTrayIcon;
    pmMain: TPopupMenu;
    aShowMainForm: TAction;
    aExit: TAction;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    sbMain: TStatusBar;
    lbConnections: TListBox; 
    procedure aExitExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure tiMainDblClick(Sender: TObject);
    procedure aShowMainFormExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMain: TfMain;

implementation

{$R *.dfm}

uses uConnectionList, udmServer;

procedure TfMain.aExitExecute(Sender: TObject);
begin
    //
    Application.Terminate;
end;

procedure TfMain.aShowMainFormExecute(Sender: TObject);
begin
    fMain.Show;
    SetForegroundWindow(fMain.Handle);
end;

procedure TfMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    //
    CanClose := false;
    Hide;
end;

{
procedure TdssmRemoteData.SetCounterData (Source : TStream; ResourceType : Integer);
type
    //
    TCharCounterID = array [0..63] of Char;
    TCounterID = array [0..127] of Byte;
    TValue = array [0..3] of Byte;
const
    cSingleRecord = 256;
var
    //
    MS : TMemoryStream;
    BytesReadCount : Integer;
    Buffer : array [0..(cSingleRecord - 1)] of Byte;
    bCounterID : TCounterID;
    bValue : TValue;
    CounterID : ^TCharCounterID;
    Value : ^Double;
    I : Integer;
begin
    ///  ������ �����:
    ///  128 ����� - ������������� ��������;
    ///  4   ����� - ������� ��������;
    ///  4   ����� - ���� ���������;
    ///  32  ����� - �������� ����� ��������;
    ///
    MS := TMemoryStream.Create;
    try

        if (MS.Size mod cSingleRecord) > 0 then
            raise Exception.Create('���� ����� �������� ������');

        repeat
            //
            BytesReadCount := Source.Read(Buffer[0], cSingleRecord);
            if BytesReadCount > 0 then
            begin
                //
                for I := 0 to 127 do
                begin
                    //
                    bCounterID[I] := Buffer[I];
                end;

                for I := 0 to 3 do
                begin
                    //
                    bValue[I] := Buffer[I + 128];
                end;

                Value := Addr (bValue);
                CounterID := Addr(bCounterID);
                ShowMessage(CounterID^);
            end;
        until BytesReadCount < cSingleRecord;
    finally
        MS.Free;
    end;
end;
}

procedure TfMain.FormShow(Sender: TObject);
begin
    //
    sbMain.Panels[3].Text := IntToStr(dmServer.DSTCPServerTransport.Port);
end;

procedure TfMain.tiMainDblClick(Sender: TObject);
begin
    //
    aShowMainForm.Execute;
end;

end.
