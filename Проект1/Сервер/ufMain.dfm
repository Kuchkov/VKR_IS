object fMain: TfMain
  Left = 0
  Top = 0
  Caption = #1057#1077#1088#1074#1077#1088
  ClientHeight = 419
  ClientWidth = 644
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sbMain: TStatusBar
    Left = 0
    Top = 400
    Width = 644
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Text = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1086#1077#1076#1080#1085#1077#1085#1080#1081' :'
        Width = 150
      end
      item
        Alignment = taCenter
        Width = 50
      end
      item
        Alignment = taCenter
        Text = #1055#1086#1088#1090' '#1089#1077#1088#1074#1077#1088#1072':'
        Width = 100
      end
      item
        Alignment = taCenter
        Width = 80
      end
      item
        Width = 50
      end>
  end
  object lbConnections: TListBox
    Left = 0
    Top = 0
    Width = 644
    Height = 400
    Align = alClient
    ItemHeight = 13
    TabOrder = 1
  end
  object amMain: TActionManager
    ActionBars = <
      item
        AutoSize = False
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
      end
      item
        Items = <
          item
            Caption = '&ActionClientItem0'
          end>
      end
      item
        Items = <
          item
            Caption = '&ActionClientItem0'
          end>
      end
      item
        Items = <
          item
            Caption = 'ActionClientItem0'
          end>
      end>
    Left = 88
    Top = 152
    StyleName = 'Platform Default'
    object aShowMainForm: TAction
      Category = #1057#1077#1088#1074#1077#1088
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1075#1083#1072#1074#1085#1091#1102' '#1092#1086#1088#1084#1091
      OnExecute = aShowMainFormExecute
    end
    object aExit: TAction
      Category = #1057#1077#1088#1074#1077#1088
      Caption = #1047#1072#1082#1088#1099#1090#1100' '#1089#1077#1088#1074#1077#1088
      OnExecute = aExitExecute
    end
  end
  object tiMain: TTrayIcon
    PopupMenu = pmMain
    Visible = True
    OnDblClick = tiMainDblClick
    Left = 32
    Top = 152
  end
  object pmMain: TPopupMenu
    Left = 32
    Top = 208
    object N1: TMenuItem
      Action = aShowMainForm
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object N3: TMenuItem
      Action = aExit
    end
  end
end
