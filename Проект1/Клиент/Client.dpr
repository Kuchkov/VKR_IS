program Client;

uses
  MidasLib,
  Vcl.Forms,
  ufMain in 'ufMain.pas' {fMain},
  udmData in 'udmData.pas' {dmData: TDataModule},
  ufLogin in 'ufLogin.pas' {fLogin},
  uRemoteMethods in 'uRemoteMethods.pas',
  ufRefBooks in 'ufRefBooks.pas' {fRefBooks},
  uCommon in 'uCommon.pas',
  Vcl.Themes,
  Vcl.Styles,
  ufUser in 'ufUser.pas' {fUser},
  udmReport in 'udmReport.pas' {dmReport: TDataModule},
  ufAccrualData in 'ufAccrualData.pas' {fAccrualData},
  ufUserEditor in 'ufUserEditor.pas' {fUserEditor},
  ufAccrualEditor in 'ufAccrualEditor.pas' {fAccrualEditor},
  ufUserSettingsEditor in 'ufUserSettingsEditor.pas' {fUserSettingsEditor},
  ufClientEditor in 'ufClientEditor.pas' {fClientEditor},
  ufCounterEditor in 'ufCounterEditor.pas' {fCounterEditor},
  ufCounter in 'ufCounter.pas' {fCounter},
  ufClient in 'ufClient.pas' {fClient},
  ufTariffEditor in 'ufTariffEditor.pas' {fTariffEditor},
  ufSettingsEditor in 'ufSettingsEditor.pas' {fSettingsEditor};

{$R *.res}

begin
  Application.Initialize;
  Application.ShowMainForm := True;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Клиент';
  Application.CreateForm(TfMain, fMain);
  Application.CreateForm(TdmData, dmData);
  Application.CreateForm(TfLogin, fLogin);
  Application.CreateForm(TfRefBooks, fRefBooks);
  Application.CreateForm(TfUser, fUser);
  Application.CreateForm(TdmReport, dmReport);
  Application.CreateForm(TfAccrualData, fAccrualData);
  Application.CreateForm(TfUserEditor, fUserEditor);
  Application.CreateForm(TfAccrualEditor, fAccrualEditor);
  Application.CreateForm(TfUserSettingsEditor, fUserSettingsEditor);
  Application.CreateForm(TfClientEditor, fClientEditor);
  Application.CreateForm(TfCounterEditor, fCounterEditor);
  Application.CreateForm(TfCounter, fCounter);
  Application.CreateForm(TfClient, fClient);
  Application.CreateForm(TfTariffEditor, fTariffEditor);
  Application.CreateForm(TfSettingsEditor, fSettingsEditor);
  Application.Run;
end.
