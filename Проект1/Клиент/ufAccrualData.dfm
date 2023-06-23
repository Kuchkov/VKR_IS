object fAccrualData: TfAccrualData
  Left = 0
  Top = 0
  Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1077
  ClientHeight = 470
  ClientWidth = 783
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
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 777
    Height = 464
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1077
      ExplicitWidth = 281
      ExplicitHeight = 165
      object DBGrid2: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 763
        Height = 430
        Align = alClient
        DataSource = dmData.dsAccrual
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
            FieldName = #1044#1072#1090#1072
            Title.Alignment = taCenter
            Width = 442
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1056#1072#1089#1087#1080#1089#1072#1085#1080#1077' '#1085#1072#1095#1080#1089#1083#1077#1085#1080#1081
      ImageIndex = 1
      ExplicitWidth = 281
      ExplicitHeight = 165
      object Splitter1: TSplitter
        Left = 0
        Top = 356
        Width = 769
        Height = 4
        Cursor = crVSplit
        Align = alBottom
        ExplicitLeft = 16
        ExplicitTop = 349
      end
      object Panel1: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 763
        Height = 30
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        ExplicitLeft = 43
        ExplicitTop = 139
        object bSend: TButton
          AlignWithMargins = True
          Left = 578
          Top = 3
          Width = 74
          Height = 24
          Hint = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1089#1074#1077#1076#1077#1085#1080#1103' '#1074#1099#1073#1088#1072#1085#1085#1086#1084#1091' '#1082#1083#1080#1077#1085#1090#1091
          Align = alRight
          Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100
          TabOrder = 0
          OnClick = bSendClick
        end
        object bSendAll: TButton
          AlignWithMargins = True
          Left = 658
          Top = 3
          Width = 102
          Height = 24
          Hint = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1089#1074#1077#1076#1077#1085#1080#1103' '#1074#1089#1077#1084' '#1082#1083#1080#1077#1085#1090#1072#1084
          Align = alRight
          Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1074#1089#1077#1084
          TabOrder = 1
          OnClick = bSendAllClick
        end
        object bLoad: TButton
          AlignWithMargins = True
          Left = 143
          Top = 3
          Width = 206
          Height = 24
          Align = alLeft
          Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1087#1086#1082#1072#1079#1072#1085#1080#1103' '#1089#1095#1077#1090#1095#1080#1082#1086#1074
          TabOrder = 2
          OnClick = bLoadClick
        end
        object bSelect: TButton
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 134
          Height = 24
          Align = alLeft
          Caption = #1042#1099#1073#1088#1072#1090#1100' '#1085#1072#1095#1080#1089#1083#1077#1085#1080#1077
          TabOrder = 3
          OnClick = bSelectClick
        end
      end
      object DBGrid1: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 36
        Width = 763
        Height = 317
        Align = alClient
        DataSource = dmData.dsCounterData
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1058#1072#1088#1080#1092'_'#1044#1072#1090#1072
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1057#1095#1077#1090#1095#1080#1082'_'#1058#1080#1087'_'#1088#1077#1089#1091#1088#1089#1072
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1057#1095#1077#1090#1095#1080#1082'_'#1045#1076#1080#1085#1080#1094#1072'_'#1080#1084#1077#1088#1077#1085#1080#1103
            Title.Alignment = taCenter
            Width = 41
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1047#1085#1072#1095#1077#1085#1080#1077
            Title.Alignment = taCenter
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1056#1072#1089#1093#1086#1076
            Title.Alignment = taCenter
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1057#1091#1084#1084#1072'_'#1085#1072#1095#1080#1089#1083#1077#1085#1080#1103
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = #1044#1072#1085#1085#1099#1077'_'#1079#1072#1075#1088#1091#1078#1077#1085#1099
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1057#1095#1077#1090#1095#1080#1082'_'#1053#1086#1084#1077#1088
            Title.Alignment = taCenter
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1058#1072#1088#1080#1092'_'#1047#1085#1072#1095#1077#1085#1080#1077
            Title.Alignment = taCenter
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1057#1095#1077#1090#1095#1080#1082'_'#1044#1077#1081#1089#1090#1074#1091#1102#1097#1080#1081
            Title.Alignment = taCenter
            Width = 126
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1050#1083#1080#1077#1085#1090'_'#1060#1072#1084#1080#1083#1080#1103
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1050#1083#1080#1077#1085#1090'_'#1048#1084#1103
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1050#1083#1080#1077#1085#1090'_'#1054#1090#1095#1077#1089#1090#1074#1086
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1054#1090#1087#1088#1072#1074#1083#1077#1085#1086
            Title.Alignment = taCenter
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1072#1090#1072'_'#1086#1090#1087#1088#1072#1074#1082#1080
            Title.Alignment = taCenter
            Visible = True
          end>
      end
      object mLog: TMemo
        AlignWithMargins = True
        Left = 3
        Top = 363
        Width = 763
        Height = 70
        Hint = #1054#1090#1095#1077#1090' '#1086#1073' '#1086#1096#1080#1073#1082#1072#1093
        Align = alBottom
        ParentShowHint = False
        ScrollBars = ssVertical
        ShowHint = True
        TabOrder = 2
        ExplicitLeft = 43
        ExplicitTop = 165
      end
    end
  end
  object odCounterData: TOpenDialog
    Filter = #1055#1086#1082#1072#1079#1072#1085#1080#1103' '#1089#1095#1077#1090#1095#1080#1082#1086#1074' (*.cdf)|*.cdf|'#1042#1089#1077' '#1092#1072#1081#1083#1099' (*.*)|*.*'
    Options = [ofReadOnly, ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 360
    Top = 184
  end
end
