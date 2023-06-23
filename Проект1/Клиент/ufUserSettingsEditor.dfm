object fUserSettingsEditor: TfUserSettingsEditor
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
  ClientHeight = 187
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
    Height = 181
    Margins.Left = 0
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitHeight = 154
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
    Height = 181
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    ExplicitHeight = 154
    object TabSheet1: TTabSheet
      Caption = #1058#1077#1082#1091#1097#1077#1077' '#1085#1072#1095#1080#1089#1083#1077#1085#1080#1077
      ExplicitHeight = 126
      object Label5: TLabel
        Left = 16
        Top = 12
        Width = 121
        Height = 77
        Alignment = taRightJustify
        AutoSize = False
        Caption = 
          #1042#1099' '#1073#1091#1076#1077#1090#1077' '#1088#1072#1073#1086#1090#1072' '#1089' '#1085#1072#1095#1080#1089#1083#1077#1085#1080#1103#1084#1080', '#1082#1086#1090#1086#1088#1099#1077' '#1079#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1099' '#1085#1072' '#1089#1083#1077 +
          #1076#1091#1102#1097#1091#1102' '#1076#1072#1090#1091' -'
        WordWrap = True
      end
      object DBLookupListBox1: TDBLookupListBox
        Left = 154
        Top = 9
        Width = 241
        Height = 108
        DataField = #1050#1086#1076'_'#1058#1077#1082#1091#1097#1077#1077'_'#1085#1072#1095#1080#1089#1083#1077#1085#1080#1077
        DataSource = dmData.dsUserInfo
        KeyField = #1050#1086#1076
        ListField = #1044#1072#1090#1072
        ListSource = dmData.dsAccrual
        TabOrder = 0
      end
      object bClear: TButton
        Left = 320
        Top = 123
        Width = 75
        Height = 25
        Caption = #1054#1095#1080#1089#1090#1080#1090#1100
        TabOrder = 1
        OnClick = bClearClick
      end
    end
  end
end
