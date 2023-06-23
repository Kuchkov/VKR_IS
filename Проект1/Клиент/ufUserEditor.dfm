object fUserEditor: TfUserEditor
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
  ClientHeight = 339
  ClientWidth = 487
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
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 393
    Height = 333
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 465
    ExplicitHeight = 395
    object TabSheet1: TTabSheet
      Caption = #1044#1072#1085#1085#1099#1077
      ExplicitWidth = 381
      ExplicitHeight = 174
      object Label1: TLabel
        Left = 8
        Top = 11
        Width = 121
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1050#1086#1076
      end
      object Label2: TLabel
        Left = 8
        Top = 38
        Width = 121
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1044#1072#1090#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
      end
      object Label3: TLabel
        Left = 8
        Top = 65
        Width = 121
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1051#1086#1075#1080#1085
      end
      object Label4: TLabel
        Left = 8
        Top = 92
        Width = 121
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1055#1072#1088#1086#1083#1100
      end
      object Label5: TLabel
        Left = 8
        Top = 169
        Width = 121
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1060#1072#1084#1080#1083#1080#1103
      end
      object Label6: TLabel
        Left = 8
        Top = 196
        Width = 121
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1048#1084#1103
      end
      object Label7: TLabel
        Left = 8
        Top = 223
        Width = 121
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1054#1090#1095#1077#1089#1090#1074#1086
      end
      object Label9: TLabel
        Left = 8
        Top = 250
        Width = 121
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1058#1077#1083#1077#1092#1086#1085
      end
      object Label11: TLabel
        Left = 8
        Top = 117
        Width = 121
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1041#1083#1086#1082#1080#1088#1086#1074#1072#1090#1100
      end
      object Label12: TLabel
        Left = 8
        Top = 143
        Width = 121
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = #1058#1080#1087' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      end
      object Label8: TLabel
        Left = 8
        Top = 277
        Width = 121
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Email'
      end
      object DBEdit1: TDBEdit
        Left = 135
        Top = 8
        Width = 241
        Height = 21
        Color = clMoneyGreen
        DataField = #1050#1086#1076
        DataSource = dmData.dsUser
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 135
        Top = 35
        Width = 241
        Height = 21
        DataField = #1044#1072#1090#1072'_'#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
        DataSource = dmData.dsUser
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 135
        Top = 62
        Width = 241
        Height = 21
        DataField = #1051#1086#1075#1080#1085
        DataSource = dmData.dsUser
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 135
        Top = 89
        Width = 241
        Height = 21
        DataField = #1055#1072#1088#1086#1083#1100
        DataSource = dmData.dsUser
        PasswordChar = '*'
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 135
        Top = 166
        Width = 241
        Height = 21
        DataField = #1060#1072#1084#1080#1083#1080#1103
        DataSource = dmData.dsUser
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 135
        Top = 193
        Width = 241
        Height = 21
        DataField = #1048#1084#1103
        DataSource = dmData.dsUser
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 135
        Top = 220
        Width = 241
        Height = 21
        DataField = #1054#1090#1095#1077#1089#1090#1074#1086
        DataSource = dmData.dsUser
        TabOrder = 6
      end
      object DBEdit9: TDBEdit
        Left = 135
        Top = 247
        Width = 241
        Height = 21
        DataField = #1058#1077#1083#1077#1092#1086#1085
        DataSource = dmData.dsUser
        TabOrder = 7
      end
      object DBCheckBox1: TDBCheckBox
        Left = 135
        Top = 116
        Width = 18
        Height = 17
        DataField = #1041#1083#1086#1082#1080#1088#1086#1074#1072#1090#1100'_'#1076#1086#1089#1090#1091#1087
        DataSource = dmData.dsUser
        TabOrder = 8
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 135
        Top = 139
        Width = 241
        Height = 21
        DataField = #1050#1086#1076'_'#1058#1080#1087'_'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
        DataSource = dmData.dsUser
        KeyField = #1050#1086#1076
        ListField = #1053#1072#1079#1074#1072#1085#1080#1077
        ListSource = dmData.dsUserType
        TabOrder = 9
      end
      object DBEdit8: TDBEdit
        Left = 135
        Top = 274
        Width = 241
        Height = 21
        DataField = 'Email'
        DataSource = dmData.dsUser
        TabOrder = 10
      end
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 399
    Top = 3
    Width = 85
    Height = 333
    Margins.Left = 0
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = 503
    ExplicitTop = 17
    ExplicitHeight = 202
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
      ExplicitLeft = 10
      ExplicitTop = 8
      ExplicitWidth = 75
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
      ExplicitLeft = 10
      ExplicitTop = 40
      ExplicitWidth = 75
    end
  end
end
