object fTariffEditor: TfTariffEditor
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1058#1072#1088#1080#1092
  ClientHeight = 181
  ClientWidth = 564
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
    Left = 476
    Top = 3
    Width = 85
    Height = 175
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
    Width = 470
    Height = 175
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = #1044#1072#1085#1085#1099#1077
      object Label5: TLabel
        Left = 75
        Top = 41
        Width = 121
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1044#1072#1090#1072
      end
      object Label6: TLabel
        Left = 24
        Top = 68
        Width = 172
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1077#1076'. '#1088#1077#1089#1091#1088#1089#1072' ('#1088#1091#1073'.)'
      end
      object Label3: TLabel
        Left = 75
        Top = 14
        Width = 121
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1050#1086#1076
      end
      object Label1: TLabel
        Left = 24
        Top = 95
        Width = 172
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1058#1080#1087' '#1088#1077#1089#1091#1088#1089#1072
      end
      object DBEdit5: TDBEdit
        Left = 210
        Top = 38
        Width = 241
        Height = 21
        DataField = #1044#1072#1090#1072
        DataSource = dmData.dsTariff
        TabOrder = 1
      end
      object DBEdit6: TDBEdit
        Left = 210
        Top = 65
        Width = 241
        Height = 21
        DataField = #1047#1085#1072#1095#1077#1085#1080#1077
        DataSource = dmData.dsTariff
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 210
        Top = 11
        Width = 241
        Height = 21
        Color = clMoneyGreen
        DataField = #1050#1086#1076
        DataSource = dmData.dsCounter
        TabOrder = 0
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 210
        Top = 92
        Width = 241
        Height = 21
        DataField = #1050#1086#1076'_'#1058#1080#1087'_'#1088#1077#1089#1091#1088#1089#1072
        DataSource = dmData.dsTariff
        DropDownRows = 20
        KeyField = #1050#1086#1076
        ListField = #1053#1072#1079#1074#1072#1085#1080#1077
        ListSource = dmData.dsResourceType
        TabOrder = 3
      end
      object DBCheckBox1: TDBCheckBox
        Left = 125
        Top = 119
        Width = 97
        Height = 17
        Alignment = taLeftJustify
        Caption = #1044#1077#1081#1089#1090#1074#1091#1102#1097#1080#1081
        DataField = #1044#1077#1081#1089#1090#1074#1091#1102#1097#1080#1081
        DataSource = dmData.dsTariff
        TabOrder = 4
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
    end
  end
end
