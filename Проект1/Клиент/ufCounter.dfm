object fCounter: TfCounter
  Left = 0
  Top = 0
  Caption = #1057#1095#1077#1090#1095#1080#1082
  ClientHeight = 401
  ClientWidth = 828
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 33
    Width = 822
    Height = 335
    Align = alClient
    DataSource = dmData.dsCounter
    DrawingStyle = gdsGradient
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Color = clMoneyGreen
        Expanded = False
        FieldName = #1050#1086#1076
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1044#1072#1090#1072'_'#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1053#1086#1084#1077#1088
        Title.Alignment = taCenter
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1044#1077#1081#1089#1090#1074#1091#1102#1097#1080#1081
        Title.Alignment = taCenter
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1058#1080#1087'_'#1088#1077#1089#1091#1088#1089#1072
        Title.Alignment = taCenter
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1050#1083#1080#1077#1085#1090
        Title.Alignment = taCenter
        Width = 199
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1044#1086#1084
        Title.Alignment = taCenter
        Width = 150
        Visible = True
      end>
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 822
    Height = 27
    Margins.Bottom = 0
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 70
      Height = 21
      Align = alLeft
      Alignment = taRightJustify
      AutoSize = False
      Caption = #1050#1083#1080#1077#1085#1090
      Layout = tlCenter
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 452
      Top = 3
      Width = 70
      Height = 21
      Align = alRight
      Alignment = taRightJustify
      AutoSize = False
      Caption = #1044#1086#1084
      Layout = tlCenter
      ExplicitLeft = 405
      ExplicitTop = 0
    end
    object dblcbClient: TDBLookupComboBox
      AlignWithMargins = True
      Left = 79
      Top = 3
      Width = 290
      Height = 21
      Align = alLeft
      DropDownRows = 25
      KeyField = #1050#1086#1076
      ListField = #1050#1083#1080#1077#1085#1090
      ListSource = dmData.dsClient
      TabOrder = 0
      OnClick = dblcbClientClick
    end
    object dblcbHouse: TDBLookupComboBox
      AlignWithMargins = True
      Left = 528
      Top = 3
      Width = 259
      Height = 21
      Align = alRight
      DropDownRows = 25
      KeyField = #1050#1086#1076
      ListField = #1053#1072#1079#1074#1072#1085#1080#1077
      ListSource = dmData.dsHouse
      TabOrder = 2
      OnClick = dblcbClientClick
      ExplicitLeft = 560
    end
    object bClientClear: TButton
      AlignWithMargins = True
      Left = 375
      Top = 3
      Width = 26
      Height = 21
      Align = alLeft
      Caption = 'x'
      TabOrder = 1
      OnClick = bClientClearClick
    end
    object bHouseClear: TButton
      AlignWithMargins = True
      Left = 793
      Top = 3
      Width = 26
      Height = 21
      Align = alRight
      Caption = 'x'
      TabOrder = 3
      OnClick = bHouseClearClick
      ExplicitLeft = 812
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 374
    Width = 822
    Height = 27
    Margins.Bottom = 0
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitLeft = 8
    object Label3: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 70
      Height = 21
      Align = alLeft
      Alignment = taRightJustify
      AutoSize = False
      Caption = #1058#1080#1087' '#1088#1077#1089#1091#1088#1089#1072
      Layout = tlCenter
    end
    object Label4: TLabel
      AlignWithMargins = True
      Left = 456
      Top = 3
      Width = 106
      Height = 21
      Align = alRight
      Alignment = taRightJustify
      AutoSize = False
      Caption = #1053#1086#1084#1077#1088' '#1089#1095#1077#1090#1095#1080#1082#1072
      Layout = tlCenter
      ExplicitLeft = 480
      ExplicitTop = 0
    end
    object dblcbResourceType: TDBLookupComboBox
      AlignWithMargins = True
      Left = 79
      Top = 3
      Width = 170
      Height = 21
      Align = alLeft
      DropDownRows = 25
      KeyField = #1050#1086#1076
      ListField = #1053#1072#1079#1074#1072#1085#1080#1077
      ListSource = dmData.dsResourceType
      TabOrder = 0
      OnClick = dblcbClientClick
    end
    object bResourceTypeClear: TButton
      AlignWithMargins = True
      Left = 255
      Top = 3
      Width = 26
      Height = 21
      Align = alLeft
      Caption = 'x'
      TabOrder = 1
      OnClick = bResourceTypeClearClick
      ExplicitLeft = 812
    end
    object eNumber: TEdit
      AlignWithMargins = True
      Left = 568
      Top = 3
      Width = 251
      Height = 21
      Align = alRight
      TabOrder = 2
      OnChange = eNumberChange
    end
  end
end
