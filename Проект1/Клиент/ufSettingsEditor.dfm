object fSettingsEditor: TfSettingsEditor
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1089#1080#1089#1090#1077#1084#1099
  ClientHeight = 155
  ClientWidth = 507
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
    Left = 419
    Top = 3
    Width = 85
    Height = 149
    Margins.Left = 0
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 0
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
    Width = 413
    Height = 149
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      object Label5: TLabel
        Left = 16
        Top = 12
        Width = 121
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
      end
      object DBEdit5: TDBEdit
        Left = 154
        Top = 9
        Width = 241
        Height = 21
        DataField = #1053#1072#1079#1074#1072#1085#1080#1077'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
        DataSource = dmData.dsParams
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Email'
      ImageIndex = 1
      object Label2: TLabel
        Left = 16
        Top = 12
        Width = 121
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1040#1076#1088#1077#1089' '#1089#1077#1088#1074#1077#1088#1072
      end
      object Label3: TLabel
        Left = 16
        Top = 39
        Width = 121
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1055#1086#1088#1090' '#1089#1077#1088#1074#1077#1088#1072
      end
      object Label4: TLabel
        Left = 16
        Top = 66
        Width = 121
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1051#1086#1075#1080#1085
      end
      object Label8: TLabel
        Left = 16
        Top = 93
        Width = 121
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1055#1072#1088#1086#1083#1100
      end
      object DBEdit2: TDBEdit
        Left = 154
        Top = 9
        Width = 241
        Height = 21
        DataField = #1055#1086#1095#1090#1072'_'#1040#1076#1088#1077#1089'_'#1089#1077#1088#1074#1077#1088#1072
        DataSource = dmData.dsParams
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 154
        Top = 36
        Width = 241
        Height = 21
        DataField = #1055#1086#1095#1090#1072'_'#1055#1086#1088#1090'_'#1089#1077#1088#1074#1077#1088#1072
        DataSource = dmData.dsParams
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 154
        Top = 63
        Width = 241
        Height = 21
        DataField = #1055#1086#1095#1090#1072'_'#1051#1086#1075#1080#1085
        DataSource = dmData.dsParams
        TabOrder = 2
      end
      object DBEdit8: TDBEdit
        Left = 154
        Top = 90
        Width = 241
        Height = 21
        DataField = #1055#1086#1095#1090#1072'_'#1055#1072#1088#1086#1083#1100
        DataSource = dmData.dsParams
        TabOrder = 3
      end
    end
  end
end
