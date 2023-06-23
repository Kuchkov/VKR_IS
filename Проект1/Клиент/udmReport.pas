unit udmReport;

interface

uses
  System.SysUtils, System.Classes, frxClass, frxDBSet, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Forms, frxDesgn, Vcl.Controls,
  frxExportRTF, frxExportPDF, frxChBox, frxExportBIFF, frxExportXML,
  frxExportXLS, frxChart;

type
  TdmReport = class(TDataModule)
    frxReportJournal: TfrxDBDataset;
    frxEngine: TfrxReport;
    amReport: TActionManager;
    frxParams: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxRTFExport1: TfrxRTFExport;
    aReportJournal: TAction;
    frxRequest: TfrxDBDataset;
    frxRequestServices: TfrxDBDataset;
    aReportRequest: TAction;
    frxDates: TfrxDBDataset;
    frxReportRequestOpen: TfrxDBDataset;
    frxReportRequestClosed: TfrxDBDataset;
    aReportRequestClosed: TAction;
    aReportRequestOpen: TAction;
    frxUser: TfrxDBDataset;
    aReportUserWork: TAction;
    frxReportUserWork: TfrxDBDataset;
    aReportUserLoad: TAction;
    frxReportDefect: TfrxDBDataset;
    aReportDefect: TAction;
    frxClient: TfrxDBDataset;
    aReportClient: TAction;
    frxReportServiceSum: TfrxDBDataset;
    aReportServiceSum: TAction;
    frxReportClaim: TfrxDBDataset;
    frxReportClientClaim: TfrxDBDataset;
    aReportClientClaim: TAction;
    aReportClaim: TAction;
    frxCurrentClient: TfrxDBDataset;
    frxAnalysis: TfrxDBDataset;
    aReportAnalysis: TAction;
    frxFunctionInfo: TfrxDBDataset;
    aReportUser: TAction;
    aReportRequestAnalysis: TAction;
    frxUserPointers: TfrxDBDataset;
    frxClientInfo: TfrxDBDataset;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxChartObject1: TfrxChartObject;
    frxXLSExport1: TfrxXLSExport;
    frxXMLExport1: TfrxXMLExport;
    frxBIFFExport1: TfrxBIFFExport;
    aReportOrder: TAction;
    procedure DataModuleCreate(Sender: TObject);
    function frxEngineUserFunction(const MethodName: string;
      var Params: Variant): Variant;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const c_Dir_Report : String = 'Report';

var
  dmReport: TdmReport;

implementation



{$R *.dfm}

uses udmData;

procedure TdmReport.DataModuleCreate(Sender: TObject);
begin
    //
    //frxEngine.AddFunction('function  ÓÏÔÓÌÓ‚Í‡ (VoyageKey : Integer) : string');
end;

function TdmReport.frxEngineUserFunction(const MethodName: string;
  var Params: Variant): Variant;
begin
    {
    if (MethodName = ' ŒÃœŒÕŒ¬ ¿') then
    begin
        Result := RemoteMethods.GetDrillColumnComponentsToStr(Params[0]);;
    end;
    }
end;

end.
