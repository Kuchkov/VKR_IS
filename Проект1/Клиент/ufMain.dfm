object fMain: TfMain
  Left = 0
  Top = 0
  Caption = #1050#1083#1080#1077#1085#1090
  ClientHeight = 542
  ClientWidth = 782
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  KeyPreview = True
  Menu = mmMain
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object tbMain: TToolBar
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 776
    Height = 52
    AutoSize = True
    ButtonHeight = 52
    ButtonWidth = 68
    Caption = 'tbMain'
    DrawingStyle = dsGradient
    Images = dmData.ilMain
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 0
    object ToolButton3: TToolButton
      Left = 0
      Top = 0
      Action = aConnect
    end
    object ToolButton7: TToolButton
      Left = 68
      Top = 0
      Width = 8
      Caption = 'ToolButton7'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object ToolButton9: TToolButton
      Left = 76
      Top = 0
      Action = aShowClient
    end
    object ToolButton5: TToolButton
      Left = 144
      Top = 0
      Action = aShowCounter
    end
    object ToolButton16: TToolButton
      Left = 212
      Top = 0
      Action = aShowAccrualData
    end
    object ToolButton10: TToolButton
      Left = 280
      Top = 0
      Width = 8
      Caption = 'ToolButton10'
      ImageIndex = 8
      Style = tbsSeparator
    end
    object ToolButton8: TToolButton
      Left = 288
      Top = 0
      Action = aShowRefBooks
    end
    object ToolButton6: TToolButton
      Left = 356
      Top = 0
      Width = 8
      Caption = 'ToolButton6'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object ToolButton11: TToolButton
      Left = 364
      Top = 0
      Action = aShowUser
    end
  end
  object tbNavigator: TToolBar
    AlignWithMargins = True
    Left = 3
    Top = 462
    Width = 776
    Height = 52
    Align = alBottom
    AutoSize = True
    ButtonHeight = 52
    ButtonWidth = 75
    Caption = 'tbMain'
    DisabledImages = dmData.ilDataSet32D_2
    DrawingStyle = dsGradient
    Images = dmData.ilDataSet32E_2
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 1
    object ToolButton12: TToolButton
      Left = 0
      Top = 0
      Action = DataSetFirst1
    end
    object ToolButton13: TToolButton
      Left = 75
      Top = 0
      Action = DataSetPrior1
    end
    object ToolButton14: TToolButton
      Left = 150
      Top = 0
      Action = DataSetNext1
    end
    object ToolButton15: TToolButton
      Left = 225
      Top = 0
      Action = DataSetLast1
    end
    object ToolButton2: TToolButton
      Left = 300
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 10
      Style = tbsSeparator
    end
    object ToolButton17: TToolButton
      Left = 308
      Top = 0
      Action = DataSetInsert1
    end
    object ToolButton18: TToolButton
      Left = 383
      Top = 0
      Action = DataSetDelete1
    end
    object ToolButton19: TToolButton
      Left = 458
      Top = 0
      Action = DataSetEdit1
    end
    object ToolButton1: TToolButton
      Left = 533
      Top = 0
      Width = 8
      Caption = 'ToolButton3'
      ImageIndex = 10
      Style = tbsSeparator
    end
    object ToolButton20: TToolButton
      Left = 541
      Top = 0
      Action = DataSetPost1
    end
    object ToolButton21: TToolButton
      Left = 616
      Top = 0
      Action = DataSetCancel1
    end
    object ToolButton4: TToolButton
      Left = 691
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 10
      Style = tbsSeparator
    end
    object ToolButton22: TToolButton
      Left = 699
      Top = 0
      Action = DataSetRefresh1
    end
  end
  object sbMain: TStatusBar
    AlignWithMargins = True
    Left = 3
    Top = 520
    Width = 776
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Width = 100
      end
      item
        Width = 300
      end
      item
        Width = 250
      end>
  end
  object amMain: TActionManager
    ActionBars = <
      item
        Items.CaptionOptions = coAll
        Items = <>
      end
      item
      end
      item
      end
      item
      end>
    Images = dmData.ilMain
    Left = 80
    Top = 416
    StyleName = 'Platform Default'
    object WindowClose1: TWindowClose
      Category = 'Window'
      Caption = #1047#1072#1082#1088#1099#1090#1100
      Enabled = False
      Hint = 'Close'
    end
    object WindowCascade1: TWindowCascade
      Category = 'Window'
      Caption = #1050#1072#1089#1082#1072#1076
      Enabled = False
      Hint = 'Cascade'
    end
    object WindowTileHorizontal1: TWindowTileHorizontal
      Category = 'Window'
      Caption = #1043#1086#1088#1080#1079#1086#1085#1090#1072#1083#1100#1085#1086#1077' '#1074#1099#1088#1072#1074#1085#1080#1074#1072#1085#1080#1077
      Enabled = False
      Hint = 'Tile Horizontal'
    end
    object WindowTileVertical1: TWindowTileVertical
      Category = 'Window'
      Caption = #1042#1077#1088#1090#1080#1082#1072#1083#1100#1085#1086#1077' '#1074#1099#1088#1072#1074#1085#1080#1074#1072#1085#1080#1077
      Enabled = False
      Hint = 'Tile Vertical'
    end
    object WindowMinimizeAll1: TWindowMinimizeAll
      Category = 'Window'
      Caption = #1057#1074#1077#1088#1085#1091#1090#1100' '#1074#1089#1077
      Enabled = False
      Hint = 'Minimize All'
    end
    object WindowArrange1: TWindowArrange
      Category = 'Window'
      Caption = #1059#1087#1086#1088#1103#1076#1086#1095#1080#1090#1100
      Enabled = False
    end
    object aConnect: TAction
      Caption = #1042#1093#1086#1076
      ImageIndex = 0
      OnExecute = aConnectExecute
    end
    object aShowMainForm: TAction
      Caption = #1043#1083#1072#1074#1085#1072#1103
      OnExecute = aShowMainFormExecute
    end
    object aClose: TAction
      Caption = #1047#1072#1082#1088#1099#1090#1100
      ImageIndex = 1
      OnExecute = aCloseExecute
    end
    object aShowRefBooks: TAction
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082
      ImageIndex = 2
      OnExecute = aShowRefBooksExecute
    end
    object aShowUser: TAction
      Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
      ImageIndex = 6
      OnExecute = aShowUserExecute
    end
    object aShowClient: TAction
      Caption = #1050#1083#1080#1077#1085#1090
      ImageIndex = 5
      OnExecute = aShowClientExecute
    end
    object aShowCounter: TAction
      Caption = #1057#1095#1077#1090#1095#1080#1082
      ImageIndex = 15
      OnExecute = aShowCounterExecute
    end
    object aShowAccrualData: TAction
      Caption = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1077
      ImageIndex = 14
      OnExecute = aShowAccrualDataExecute
    end
    object dseUserSettings: TDataSetEdit
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      Hint = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      ImageIndex = 7
      DataSource = dmData.dsUserInfo
    end
    object aShowUserSettings: TAction
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      ImageIndex = 7
      OnExecute = aShowUserSettingsExecute
    end
  end
  object mmMain: TMainMenu
    Left = 16
    Top = 416
    object N10: TMenuItem
      Caption = #1057#1080#1089#1090#1077#1084#1072
      object N19: TMenuItem
        Action = aConnect
      end
      object N20: TMenuItem
        Caption = '-'
      end
    end
    object N7: TMenuItem
      Caption = #1060#1086#1088#1084#1099
    end
    object N8: TMenuItem
      Caption = #1054#1090#1095#1077#1090#1099
    end
    object N1: TMenuItem
      Caption = #1054#1082#1085#1086
      object Close1: TMenuItem
        Action = WindowClose1
      end
      object Cascade1: TMenuItem
        Action = WindowCascade1
      end
      object ileHorizontally1: TMenuItem
        Action = WindowTileHorizontal1
      end
      object ileVertically1: TMenuItem
        Action = WindowTileVertical1
      end
      object MinimizeAll1: TMenuItem
        Action = WindowMinimizeAll1
      end
      object Arrange1: TMenuItem
        Action = WindowArrange1
      end
    end
  end
  object tiMain: TTrayIcon
    PopupMenu = pmMain
    Visible = True
    OnClick = tiMainClick
    Left = 144
    Top = 416
  end
  object pmMain: TPopupMenu
    Left = 200
    Top = 416
    object N5: TMenuItem
      Action = aConnect
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object N2: TMenuItem
      Action = aShowMainForm
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object N4: TMenuItem
      Action = aClose
    end
  end
  object dsUI: TDataSource
    DataSet = dmData.cdsUserInfo
    OnDataChange = dsUIDataChange
    Left = 256
    Top = 416
  end
  object amNavigator: TActionManager
    Left = 312
    Top = 416
    StyleName = 'Platform Default'
    object DataSetFirst1: TDataSetFirst
      Category = #1053#1072#1074#1080#1075#1072#1090#1086#1088
      Caption = #1055#1077#1088#1074#1072#1103
      Hint = #1055#1077#1088#1074#1072#1103' '#1079#1072#1087#1080#1089#1100
      ImageIndex = 0
    end
    object DataSetPrior1: TDataSetPrior
      Category = #1053#1072#1074#1080#1075#1072#1090#1086#1088
      Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1072#1103
      Hint = #1055#1088#1077#1076#1099#1076#1091#1097#1072#1103' '#1079#1072#1087#1080#1089#1100
      ImageIndex = 1
    end
    object DataSetNext1: TDataSetNext
      Category = #1053#1072#1074#1080#1075#1072#1090#1086#1088
      Caption = #1057#1083#1077#1076#1091#1102#1097#1072#1103
      Hint = #1057#1083#1077#1076#1091#1102#1097#1072#1103' '#1079#1072#1087#1080#1089#1100
      ImageIndex = 2
    end
    object DataSetLast1: TDataSetLast
      Category = #1053#1072#1074#1080#1075#1072#1090#1086#1088
      Caption = #1055#1086#1089#1083#1077#1076#1085#1103#1103
      Hint = #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1079#1072#1087#1080#1089#1100
      ImageIndex = 3
    end
    object DataSetInsert1: TDataSetInsert
      Category = #1053#1072#1074#1080#1075#1072#1090#1086#1088
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      ImageIndex = 4
      ShortCut = 16449
    end
    object DataSetDelete1: TDataSetDelete
      Category = #1053#1072#1074#1080#1075#1072#1090#1086#1088
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1079#1072#1087#1080#1089#1100
      ImageIndex = 5
      ShortCut = 16452
    end
    object DataSetEdit1: TDataSetEdit
      Category = #1053#1072#1074#1080#1075#1072#1090#1086#1088
      Caption = #1056#1077#1076#1072#1082#1090'.'
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1079#1072#1087#1080#1089#1100
      ImageIndex = 6
      ShortCut = 16453
    end
    object DataSetPost1: TDataSetPost
      Category = #1053#1072#1074#1080#1075#1072#1090#1086#1088
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1083#1086#1082#1072#1083#1100#1085#1086
      ImageIndex = 7
      ShortCut = 16467
    end
    object DataSetCancel1: TDataSetCancel
      Category = #1053#1072#1074#1080#1075#1072#1090#1086#1088
      Caption = #1054#1090#1084#1077#1085#1072
      Hint = #1054#1090#1084#1077#1085#1072
      ImageIndex = 8
    end
    object DataSetRefresh1: TDataSetRefresh
      Category = #1053#1072#1074#1080#1075#1072#1090#1086#1088
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      ImageIndex = 9
    end
    object ClientDataSetApply1: TClientDataSetApply
      Category = #1053#1072#1074#1080#1075#1072#1090#1086#1088
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1074' '#1041#1044
      Hint = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103' '#1074' '#1073#1072#1079#1091' '#1076#1072#1085#1085#1099#1093
      ImageIndex = 7
      DisplayErrorDlg = False
    end
  end
end
