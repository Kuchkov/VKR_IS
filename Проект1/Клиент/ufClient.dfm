object fClient: TfClient
  Left = 0
  Top = 0
  Caption = #1050#1083#1080#1077#1085#1090
  ClientHeight = 401
  ClientWidth = 762
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
    Top = 3
    Width = 756
    Height = 395
    Align = alClient
    DataSource = dmData.dsClient
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
        FieldName = #1060#1072#1084#1080#1083#1080#1103
        Title.Alignment = taCenter
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1048#1084#1103
        Title.Alignment = taCenter
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1054#1090#1095#1077#1089#1090#1074#1086
        Title.Alignment = taCenter
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1058#1077#1083#1077#1092#1086#1085
        Title.Alignment = taCenter
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Email'
        Title.Alignment = taCenter
        Width = 100
        Visible = True
      end>
  end
end
