program Server;

uses
  MidasLib,
  Vcl.Forms,
  ufMain in 'ufMain.pas' {fMain},
  udmServer in 'udmServer.pas' {dmServer: TDataModule},
  udssmRemoteData in 'udssmRemoteData.pas' {dssmRemoteData: TDSServerModule},
  uConnectionInfo in 'uConnectionInfo.pas',
  uConnectionList in 'uConnectionList.pas',
  uCommonFunctions in 'uCommonFunctions.pas',
  uAnalyser in 'uAnalyser.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.ShowMainForm := false;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Сервер АИС "Студент"';
  Application.CreateForm(TfMain, fMain);
  Application.CreateForm(TdmServer, dmServer);
  Application.Run;
end.
