object fClientEditor: TfClientEditor
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1050#1083#1080#1077#1085#1090
  ClientHeight = 208
  ClientWidth = 483
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 395
    Top = 3
    Width = 85
    Height = 202
    Margins.Left = 0
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 343
    object Button1: TButton
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 79
      Height = 25
      Margins.Bottom = 0
      Align = alTop
      Caption = 'OK'
      Default = True
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 3
      Top = 31
      Width = 79
      Height = 25
      Align = alTop
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 1
    end
  end
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 389
    Height = 202
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 337
    object TabSheet1: TTabSheet
      Caption = #1044#1072#1085#1085#1099#1077
      ExplicitWidth = 329
      object Label5: TLabel
        Left = 64
        Top = 39
        Width = 60
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1060#1072#1084#1080#1083#1080#1103
      end
      object Label6: TLabel
        Left = 64
        Top = 66
        Width = 60
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1048#1084#1103
      end
      object Label7: TLabel
        Left = 64
        Top = 93
        Width = 60
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1054#1090#1095#1077#1089#1090#1074#1086
      end
      object Label9: TLabel
        Left = 64
        Top = 120
        Width = 60
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1058#1077#1083#1077#1092#1086#1085
      end
      object Label1: TLabel
        Left = 64
        Top = 147
        Width = 60
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Email'
      end
      object Label3: TLabel
        Left = 64
        Top = 12
        Width = 60
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1050#1086#1076
      end
      object DBEdit5: TDBEdit
        Left = 130
        Top = 36
        Width = 241
        Height = 21
        DataField = #1060#1072#1084#1080#1083#1080#1103
        DataSource = dmData.dsClient
        TabOrder = 0
      end
      object DBEdit6: TDBEdit
        Left = 130
        Top = 63
        Width = 241
        Height = 21
        DataField = #1048#1084#1103
        DataSource = dmData.dsClient
        TabOrder = 1
      end
      object DBEdit7: TDBEdit
        Left = 130
        Top = 90
        Width = 241
        Height = 21
        DataField = #1054#1090#1095#1077#1089#1090#1074#1086
        DataSource = dmData.dsClient
        TabOrder = 2
      end
      object DBEdit9: TDBEdit
        Left = 130
        Top = 117
        Width = 241
        Height = 21
        DataField = #1058#1077#1083#1077#1092#1086#1085
        DataSource = dmData.dsClient
        TabOrder = 3
      end
      object DBEdit1: TDBEdit
        Left = 130
        Top = 144
        Width = 241
        Height = 21
        DataField = 'Email'
        DataSource = dmData.dsClient
        TabOrder = 4
      end
      object DBEdit3: TDBEdit
        Left = 130
        Top = 9
        Width = 241
        Height = 21
        Color = clMoneyGreen
        DataField = #1050#1086#1076
        DataSource = dmData.dsClient
        TabOrder = 5
      end
    end
  end
end
