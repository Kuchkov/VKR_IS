object fRefBooks: TfRefBooks
  Left = 0
  Top = 0
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082
  ClientHeight = 459
  ClientWidth = 803
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
  object PageControl2: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 797
    Height = 453
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      ImageIndex = 3
      object DBGrid8: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 783
        Height = 419
        Align = alClient
        DataSource = dmData.dsParams
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = DBGrid9TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = #1053#1072#1079#1074#1072#1085#1080#1077'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
            Title.Alignment = taCenter
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
            Width = 442
            Visible = True
          end>
      end
    end
    object TabSheet10: TTabSheet
      Caption = #1058#1080#1087' '#1088#1077#1089#1091#1088#1089#1072
      ImageIndex = 6
      object DBGrid9: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 783
        Height = 419
        Align = alClient
        DataSource = dmData.dsResourceType
        DrawingStyle = gdsGradient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = DBGrid9TitleClick
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
            FieldName = #1053#1072#1079#1074#1072#1085#1080#1077
            Title.Alignment = taCenter
            Width = 266
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1045#1076#1080#1085#1080#1094#1072'_'#1080#1084#1077#1088#1077#1085#1080#1103
            Title.Alignment = taCenter
            Width = 200
            Visible = True
          end>
      end
    end
    object TabSheet7: TTabSheet
      Caption = #1058#1072#1088#1080#1092
      ImageIndex = 3
      object DBGrid5: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 783
        Height = 419
        Align = alClient
        DataSource = dmData.dsTariff
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = DBGrid9TitleClick
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
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1058#1080#1087'_'#1088#1077#1089#1091#1088#1089#1072
            Title.Alignment = taCenter
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1047#1085#1072#1095#1077#1085#1080#1077
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1044#1077#1081#1089#1090#1074#1091#1102#1097#1080#1081
            Title.Alignment = taCenter
            Width = 100
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1058#1080#1087' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      ImageIndex = 3
      object DBGrid1: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 783
        Height = 419
        Align = alClient
        DataSource = dmData.dsUserType
        DrawingStyle = gdsGradient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = DBGrid9TitleClick
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
            FieldName = #1053#1072#1079#1074#1072#1085#1080#1077
            Title.Alignment = taCenter
            Width = 442
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1044#1086#1084#1072
      ImageIndex = 5
      object DBGrid3: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 783
        Height = 419
        Align = alClient
        DataSource = dmData.dsHouse
        DrawingStyle = gdsGradient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = DBGrid9TitleClick
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
            FieldName = #1053#1072#1079#1074#1072#1085#1080#1077
            Title.Alignment = taCenter
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1040#1076#1088#1077#1089
            Title.Alignment = taCenter
            Width = 350
            Visible = True
          end>
      end
    end
  end
end
