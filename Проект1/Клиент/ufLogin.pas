unit ufLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, IniFiles;



type
  TfLogin = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    leName: TLabeledEdit;
    lePassword: TLabeledEdit;
    bOk: TButton;
    bCancel: TButton;
    leAdress: TLabeledEdit;
    lePort: TLabeledEdit;
    procedure bOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bCancelClick(Sender: TObject);
    procedure lePasswordEnter(Sender: TObject);
    procedure leNameEnter(Sender: TObject);
    procedure leAdressEnter(Sender: TObject);
    procedure lePortEnter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  fLogin: TfLogin;

implementation

{$R *.dfm}

uses udmData, uRemoteMethods;

procedure TfLogin.bCancelClick(Sender: TObject);
begin
    //
    Close;
end;

procedure TfLogin.bOkClick(Sender: TObject);
var
    Port : Integer;
begin
    //

    try
        //
        Port := StrToInt(lePort.Text);

        dmData.SQLConnection.Connected := false;

        dmData.SQLConnection.Params.Clear;
        dmData.SQLConnection.Params.Add('CommunicationProtocol=tcp/ip');
        dmData.SQLConnection.Params.Add('Port=' + IntToStr(Port));
        dmData.SQLConnection.Params.Add('HostName=' + leAdress.Text);
        dmData.SQLConnection.Params.Add('DSAuthenticationUser=' + leName.Text);
        dmData.SQLConnection.Params.Add('DSAuthenticationPassword=' + lePassword.Text);

        dmData.SQLConnection.Connected := true;

        // Сохранение ini
        dmData.Settings.WriteString(c_Settings_Section_Connection, 'Host', leAdress.Text);
        dmData.Settings.WriteInteger(c_Settings_Section_Connection, 'Port', Port);
        dmData.Settings.WriteString(c_Settings_Section_Connection, 'UserName', leName.Text);
        //
        ModalResult := mrOk;

    except
        on E : Exception do  MessageDlg(E.Message, mtError, [mbOK], 0);
    end;
end;

procedure TfLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    //
    lePassword.Text := '';
end;

procedure TfLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
    //
    if Key = #27 then Close;
end;

procedure TfLogin.FormShow(Sender: TObject);

begin
    //
    try
        // Загрузка ini
        leAdress.Text := dmData.Settings.ReadString(c_Settings_Section_Connection, 'Host', 'localhost');
        lePort.Text := IntToStr(dmData.Settings.ReadInteger(c_Settings_Section_Connection, 'Port', 5000));
        leName.Text := dmData.Settings.ReadString(c_Settings_Section_Connection, 'UserName', '');
    except

    end;
end;

procedure TfLogin.leAdressEnter(Sender: TObject);
begin
    //
    leAdress.SetFocus;
    leAdress.SelectAll;
end;

procedure TfLogin.leNameEnter(Sender: TObject);
begin
    //
    leName.SetFocus;
    leName.SelectAll;

end;

procedure TfLogin.lePasswordEnter(Sender: TObject);
begin
    //
    lePassword.SetFocus;
    lePassword.SelectAll;

end;

procedure TfLogin.lePortEnter(Sender: TObject);
begin
    //
    lePort.SetFocus;
    lePort.SelectAll;
end;

end.

