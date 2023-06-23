object fUser: TfUser
  Left = 0
  Top = 0
  Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
  ClientHeight = 460
  ClientWidth = 781
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
  object DBGrid5: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 775
    Height = 454
    Align = alClient
    DataSource = dmData.dsUser
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
        FieldName = #1058#1080#1087'_'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
        Title.Alignment = taCenter
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1060#1072#1084#1080#1083#1080#1103
        Title.Alignment = taCenter
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1048#1084#1103
        Title.Alignment = taCenter
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1054#1090#1095#1077#1089#1090#1074#1086
        Title.Alignment = taCenter
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1058#1077#1083#1077#1092#1086#1085
        Title.Alignment = taCenter
        Width = 88
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Email'
        Title.Alignment = taCenter
        Width = 101
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clMoneyGreen
        Expanded = False
        FieldName = #1041#1083#1086#1082#1080#1088#1086#1074#1072#1090#1100'_'#1076#1086#1089#1090#1091#1087
        Title.Alignment = taCenter
        Title.Caption = #1041#1083#1086#1082'. '#1076#1086#1089#1090#1091#1087
        Width = 77
        Visible = True
      end>
  end
end
