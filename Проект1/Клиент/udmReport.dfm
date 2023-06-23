object dmReport: TdmReport
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 585
  Width = 829
  object frxReportJournal: TfrxDBDataset
    UserName = 'frxReportJournal'
    CloseDataSource = False
    FieldAliases.Strings = (
      #1050#1086#1076'='#1050#1086#1076
      #1050#1086#1076'_'#1057#1090#1072#1090#1091#1089'='#1050#1086#1076'_'#1057#1090#1072#1090#1091#1089
      #1057#1090#1072#1090#1091#1089'='#1057#1090#1072#1090#1091#1089
      #1050#1086#1076'_'#1050#1083#1080#1077#1085#1090'='#1050#1086#1076'_'#1050#1083#1080#1077#1085#1090
      #1050#1083#1080#1077#1085#1090'='#1050#1083#1080#1077#1085#1090
      #1050#1086#1076'_'#1055#1088#1080#1086#1088#1080#1090#1077#1090'='#1050#1086#1076'_'#1055#1088#1080#1086#1088#1080#1090#1077#1090
      #1055#1088#1080#1086#1088#1080#1090#1077#1090'='#1055#1088#1080#1086#1088#1080#1090#1077#1090
      #1050#1086#1076'_'#1050#1088#1080#1090#1080#1095#1085#1086#1089#1090#1100'='#1050#1086#1076'_'#1050#1088#1080#1090#1080#1095#1085#1086#1089#1090#1100
      #1050#1088#1080#1090#1080#1095#1085#1086#1089#1090#1100'='#1050#1088#1080#1090#1080#1095#1085#1086#1089#1090#1100
      #1054#1087#1080#1089#1072#1085#1080#1077'='#1054#1087#1080#1089#1072#1085#1080#1077
      #1042#1086#1089#1087#1088#1086#1080#1079#1074#1086#1076#1080#1084#1086#1089#1090#1100'='#1042#1086#1089#1087#1088#1086#1080#1079#1074#1086#1076#1080#1084#1086#1089#1090#1100
      #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086'='#1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086
      #1050#1086#1076'_'#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100'='#1050#1086#1076'_'#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
      #1060#1072#1084#1080#1083#1080#1103'='#1060#1072#1084#1080#1083#1080#1103
      #1048#1084#1103'='#1048#1084#1103
      #1054#1090#1095#1077#1089#1090#1074#1086'='#1054#1090#1095#1077#1089#1090#1074#1086
      #1050#1086#1076'_'#1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100'='#1050#1086#1076'_'#1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100
      #1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100'='#1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100
      #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1078#1072#1083#1086#1073'='#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1078#1072#1083#1086#1073
      #1044#1072#1090#1072'_'#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080'='#1044#1072#1090#1072'_'#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
      #1057#1090#1086#1080#1084#1086#1089#1090#1100'_'#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1093'_'#1091#1089#1083#1091#1075'='#1057#1090#1086#1080#1084#1086#1089#1090#1100'_'#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1093'_'#1091#1089#1083#1091#1075
      #1047#1072#1090#1088#1072#1095#1077#1085#1085#1086#1077'_'#1074#1088#1077#1084#1103'='#1047#1072#1090#1088#1072#1095#1077#1085#1085#1086#1077'_'#1074#1088#1077#1084#1103
      #1044#1072#1090#1072'_'#1079#1072#1082#1088#1099#1090#1080#1103'='#1044#1072#1090#1072'_'#1079#1072#1082#1088#1099#1090#1080#1103)
    BCDToCurrency = False
    Left = 64
    Top = 80
  end
  object frxEngine: TfrxReport
    Version = '4.13.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41384.973508472200000000
    ReportOptions.LastChange = 41390.206578750000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnUserFunction = frxEngineUserFunction
    Left = 64
    Top = 32
    Datasets = <
      item
        DataSet = frxDates
        DataSetName = 'frxDates'
      end
      item
        DataSet = frxReportJournal
        DataSetName = 'frxReportJournal'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 94.488250000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          Height = 56.692950000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            
              #1042#1077#1076#1086#1084#1086#1089#1090#1100' '#1091#1095#1077#1090#1072' '#1080' '#1082#1086#1085#1090#1088#1086#1083#1103' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103' '#1079#1072#1103#1074#1086#1082' '#1086#1090' '#1082#1083#1080#1077#1085#1090#1086#1074' '#1079#1072' '#1087#1077#1088 +
              #1080#1086#1076)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Align = baWidth
          Top = 56.692950000000000000
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              #1079#1072' '#1087#1077#1088#1080#1086#1076': [DateToStr(<frxDates."Date1">)] - [DateToStr(<frxDate' +
              's."Date2">)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 215.433210000000000000
        Width = 1046.929810000000000000
        DataSet = frxReportJournal
        DataSetName = 'frxReportJournal'
        RowCount = 0
        object Memo4: TfrxMemoView
          Left = 113.385900000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = #1044#1072#1090#1072'_'#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
          DataSet = frxReportJournal
          DataSetName = 'frxReportJournal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxReportJournal."'#1044#1072#1090#1072'_'#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 257.008040000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = #1057#1090#1072#1090#1091#1089
          DataSet = frxReportJournal
          DataSetName = 'frxReportJournal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxReportJournal."'#1057#1090#1072#1090#1091#1089'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 820.158010000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReportJournal
          DataSetName = 'frxReportJournal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxReportJournal."'#1050#1083#1080#1077#1085#1090'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 377.953000000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReportJournal
          DataSetName = 'frxReportJournal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxReportJournal."'#1055#1088#1080#1086#1088#1080#1090#1077#1090'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 483.779840000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxReportJournal
          DataSetName = 'frxReportJournal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxReportJournal."'#1050#1088#1080#1090#1080#1095#1085#1086#1089#1090#1100'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 589.606680000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = #1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100
          DataSet = frxReportJournal
          DataSetName = 'frxReportJournal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxReportJournal."'#1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100'"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object CheckBox1: TfrxCheckBoxView
          Left = 978.898270000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          CheckColor = clBlack
          CheckStyle = csCross
          DataField = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1078#1072#1083#1086#1073
          DataSet = frxReportJournal
          DataSetName = 'frxReportJournal'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        end
        object Memo24: TfrxMemoView
          Left = 56.692950000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = #1050#1086#1076
          DataSet = frxReportJournal
          DataSetName = 'frxReportJournal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxReportJournal."'#1050#1086#1076'"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 570.709030000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Left = 971.339210000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
        object Memo3: TfrxMemoView
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[<Date>] [<Time>]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 18.897650000000000000
        Top = 173.858380000000000000
        Width = 1046.929810000000000000
        object Memo10: TfrxMemoView
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #8470)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 113.385900000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1044#1072#1090#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 257.008040000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090#1072#1090#1091#1089)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 377.953000000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1080#1086#1088#1080#1090#1077#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 483.779840000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1088#1080#1090#1080#1095#1085#1086#1089#1090#1100)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 820.158010000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1083#1080#1077#1085#1090)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 589.606680000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 978.898270000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1046#1072#1083#1086#1073#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 56.692950000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1076)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 124.724490000000000000
        Top = 268.346630000000000000
        Width = 1046.929810000000000000
        object Memo19: TfrxMemoView
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1073#1097#1077#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1086#1089#1090#1091#1087#1080#1074#1096#1080#1093' '#1079#1072#1103#1074#1086#1082)
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo1: TfrxSysMemoView
          Left = 377.953000000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Top = 37.795300000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1073#1097#1077#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1088#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1085#1099#1093'  '#1079#1072#1103#1074#1086#1082)
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo2: TfrxSysMemoView
          Left = 377.953000000000000000
          Top = 37.795300000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(IIF(<frxReportJournal."'#1050#1086#1076'_'#1057#1090#1072#1090#1091#1089'"> = 3,1,0),MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Top = 18.897650000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1073#1097#1077#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1074#1099#1087#1086#1083#1085#1077#1085#1085#1099#1093'  '#1079#1072#1103#1074#1086#1082)
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo3: TfrxSysMemoView
          Left = 377.953000000000000000
          Top = 18.897650000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(IIF(<frxReportJournal."'#1050#1086#1076'_'#1057#1090#1072#1090#1091#1089'"> = 2,1,0),MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Top = 56.692950000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1079#1072#1082#1088#1099#1090#1099#1093' '#1079#1072#1103#1074#1086#1082)
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo4: TfrxSysMemoView
          Left = 377.953000000000000000
          Top = 56.692950000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(IIF(<frxReportJournal."'#1050#1086#1076'_'#1057#1090#1072#1090#1091#1089'"> = 2,1,0),MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Top = 75.590600000000000000
          Width = 377.953000000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Color = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1079#1072#1103#1074#1086#1082', '#1085#1072' '#1086#1089#1085#1086#1074#1072#1085#1080#1080' '#1082#1086#1090#1086#1088#1099#1093' '#1086#1092#1086#1088#1084#1083#1077#1085#1072' '#1078#1072#1083#1086#1073#1072)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 377.953000000000000000
          Top = 75.590600000000000000
          Width = 105.826840000000000000
          Height = 49.133890000000000000
          ShowHint = False
          DataSet = frxReportJournal
          DataSetName = 'frxReportJournal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(IIF (<frxReportJournal."'#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1078#1072#1083#1086#1073'"> > 0, 1, 0))]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object amReport: TActionManager
    Images = dmData.ilMain
    Left = 728
    Top = 32
    StyleName = 'Platform Default'
    object aReportJournal: TAction
      Caption = #1046#1091#1088#1085#1072#1083' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103' '#1079#1072#1103#1074#1086#1082' '#1086#1090' '#1082#1083#1080#1077#1085#1090#1086#1074
    end
    object aReportRequest: TAction
      Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1079#1072#1103#1074#1082#1077
    end
    object aReportRequestClosed: TAction
      Caption = #1054#1090#1095#1077#1090' '#1086' '#1074#1099#1087#1086#1083#1085#1077#1085#1085#1099#1093' '#1079#1072#1103#1074#1082#1072#1093' '#1082#1083#1080#1077#1085#1090#1086#1074' '#1079#1072' '#1087#1077#1088#1080#1086#1076
    end
    object aReportRequestOpen: TAction
      Caption = #1054#1090#1095#1077#1090' '#1086' '#1085#1077#1074#1099#1087#1086#1083#1085#1077#1085#1085#1099#1093' '#1079#1072#1103#1074#1082#1072#1093'  '#1082#1083#1080#1077#1085#1090#1086#1074' '#1079#1072' '#1087#1077#1088#1080#1086#1076' '
    end
    object aReportUserWork: TAction
      Caption = #1042#1077#1076#1086#1084#1086#1089#1090#1100' '#1091#1095#1077#1090#1072' '#1088#1072#1073#1086#1090' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074' '#1086#1090#1076#1077#1083#1072
    end
    object aReportUserLoad: TAction
      Caption = #1054#1090#1095#1077#1090' '#1086' '#1089#1090#1077#1087#1077#1085#1080' '#1079#1072#1075#1088#1091#1078#1077#1085#1085#1086#1089#1090#1080' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074
    end
    object aReportDefect: TAction
      Caption = 
        #1040#1085#1072#1083#1080#1090#1080#1095#1077#1089#1082#1080#1081' '#1086#1090#1095#1077#1090' '#1086' '#1085#1072#1080#1073#1086#1083#1077#1077' '#1095#1072#1089#1090#1086' '#1074#1086#1079#1085#1080#1082#1072#1102#1097#1080#1093' '#1087#1088#1086#1073#1083#1077#1084#1072#1093' '#1082#1083#1080#1077#1085 +
        #1090#1086#1074
    end
    object aReportClient: TAction
      Caption = #1057#1074#1086#1076#1085#1099#1081' '#1086#1090#1095#1077#1090' '#1087#1086' '#1082#1083#1080#1077#1085#1090#1072#1084
    end
    object aReportServiceSum: TAction
      Caption = #1054#1090#1095#1077#1090' '#1086#1073' '#1086#1082#1072#1079#1072#1085#1085#1099#1093'  '#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1093' '#1091#1089#1083#1091#1075#1072#1093
    end
    object aReportClientClaim: TAction
      Caption = #1046#1091#1088#1085#1072#1083' '#1091#1095#1077#1090#1072' '#1078#1072#1083#1086#1073' '#1082#1083#1080#1077#1085#1090#1072
    end
    object aReportClaim: TAction
      Caption = #1054#1090#1095#1077#1090' '#1086' '#1078#1072#1083#1086#1073#1072#1093
    end
    object aReportAnalysis: TAction
      Caption = #1040#1085#1072#1083#1080#1079' '#1087#1086#1103#1074#1083#1077#1085#1080#1103' '#1085#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1080
    end
    object aReportUser: TAction
      Caption = #1057#1087#1080#1089#1086#1082' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074
    end
    object aReportRequestAnalysis: TAction
      Caption = #1040#1085#1072#1083#1080#1090#1080#1095#1077#1089#1082#1080#1081' '#1086#1090#1095#1077#1090' '#1086' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1080' '#1079#1072#1103#1074#1086#1082' '#1082#1083#1080#1077#1085#1090#1086#1074' '#1079#1072' '#1087#1077#1088#1080#1086#1076
    end
    object aReportOrder: TAction
      Caption = 
        #1042#1077#1076#1086#1084#1086#1089#1090#1100' '#1091#1095#1077#1090#1072' '#1080' '#1082#1086#1085#1090#1088#1086#1083#1103' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103' '#1079#1072#1103#1074#1086#1082' '#1086#1090' '#1082#1083#1080#1077#1085#1090#1086#1074' '#1079#1072' '#1087#1077#1088 +
        #1080#1086#1076
    end
  end
  object frxParams: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'frxParams'
    CloseDataSource = False
    FieldAliases.Strings = (
      #1050#1086#1076'='#1050#1086#1076
      #1053#1072#1079#1074#1072#1085#1080#1077'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'='#1053#1072#1079#1074#1072#1085#1080#1077'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
      #1053#1086#1088#1084#1072'_'#1042#1088#1077#1084#1103'_'#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103'_'#1079#1072#1103#1074#1082#1080'='#1053#1086#1088#1084#1072'_'#1042#1088#1077#1084#1103'_'#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103'_'#1079#1072#1103#1074#1082#1080)
    DataSource = dmData.dsParams
    BCDToCurrency = False
    Left = 200
    Top = 32
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 728
    Top = 320
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 728
    Top = 368
  end
  object frxRequest: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'frxRequest'
    CloseDataSource = False
    FieldAliases.Strings = (
      #1050#1086#1076'='#1050#1086#1076
      #1044#1072#1090#1072'_'#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080'='#1044#1072#1090#1072'_'#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
      #1050#1086#1076'_'#1057#1090#1072#1090#1091#1089'='#1050#1086#1076'_'#1057#1090#1072#1090#1091#1089
      #1050#1086#1076'_'#1050#1083#1080#1077#1085#1090'='#1050#1086#1076'_'#1050#1083#1080#1077#1085#1090
      #1050#1086#1076'_'#1055#1088#1080#1086#1088#1080#1090#1077#1090'='#1050#1086#1076'_'#1055#1088#1080#1086#1088#1080#1090#1077#1090
      #1050#1086#1076'_'#1050#1088#1080#1090#1080#1095#1085#1086#1089#1090#1100'='#1050#1086#1076'_'#1050#1088#1080#1090#1080#1095#1085#1086#1089#1090#1100
      #1054#1087#1080#1089#1072#1085#1080#1077'='#1054#1087#1080#1089#1072#1085#1080#1077
      #1042#1086#1089#1087#1088#1086#1080#1079#1074#1086#1076#1080#1084#1086#1089#1090#1100'='#1042#1086#1089#1087#1088#1086#1080#1079#1074#1086#1076#1080#1084#1086#1089#1090#1100
      #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086'='#1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086
      #1057#1082#1088#1080#1085#1096#1086#1090'='#1057#1082#1088#1080#1085#1096#1086#1090
      #1050#1086#1076'_'#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100'='#1050#1086#1076'_'#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
      #1057#1090#1072#1090#1091#1089'='#1057#1090#1072#1090#1091#1089
      #1050#1083#1080#1077#1085#1090'='#1050#1083#1080#1077#1085#1090
      #1055#1088#1080#1086#1088#1080#1090#1077#1090'='#1055#1088#1080#1086#1088#1080#1090#1077#1090
      #1050#1088#1080#1090#1080#1095#1085#1086#1089#1090#1100'='#1050#1088#1080#1090#1080#1095#1085#1086#1089#1090#1100
      #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100'='#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
      #1050#1086#1076'_'#1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100'='#1050#1086#1076'_'#1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100
      #1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100'='#1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100)
    BCDToCurrency = False
    Left = 200
    Top = 80
  end
  object frxRequestServices: TfrxDBDataset
    UserName = 'frxRequestServices'
    CloseDataSource = False
    FieldAliases.Strings = (
      #1050#1086#1076'_'#1047#1072#1103#1074#1082#1072'='#1050#1086#1076'_'#1047#1072#1103#1074#1082#1072
      #1050#1086#1076'_'#1059#1089#1083#1091#1075#1072'='#1050#1086#1076'_'#1059#1089#1083#1091#1075#1072
      #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'='#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      #1059#1089#1083#1091#1075#1072'='#1059#1089#1083#1091#1075#1072
      #1057#1090#1086#1080#1084#1086#1089#1090#1100'='#1057#1090#1086#1080#1084#1086#1089#1090#1100)
    BCDToCurrency = False
    Left = 200
    Top = 128
  end
  object frxDates: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'frxDates'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 336
    Top = 32
  end
  object frxReportRequestOpen: TfrxDBDataset
    UserName = 'frxReportRequestOpen'
    CloseDataSource = False
    FieldAliases.Strings = (
      #1050#1086#1076'='#1050#1086#1076
      #1044#1072#1090#1072'_'#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080'='#1044#1072#1090#1072'_'#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
      #1050#1086#1076'_'#1057#1090#1072#1090#1091#1089'='#1050#1086#1076'_'#1057#1090#1072#1090#1091#1089
      #1057#1090#1072#1090#1091#1089'='#1057#1090#1072#1090#1091#1089
      #1050#1086#1076'_'#1050#1083#1080#1077#1085#1090'='#1050#1086#1076'_'#1050#1083#1080#1077#1085#1090
      #1050#1083#1080#1077#1085#1090'='#1050#1083#1080#1077#1085#1090
      #1050#1086#1076'_'#1055#1088#1080#1086#1088#1080#1090#1077#1090'='#1050#1086#1076'_'#1055#1088#1080#1086#1088#1080#1090#1077#1090
      #1055#1088#1080#1086#1088#1080#1090#1077#1090'='#1055#1088#1080#1086#1088#1080#1090#1077#1090
      #1050#1086#1076'_'#1050#1088#1080#1090#1080#1095#1085#1086#1089#1090#1100'='#1050#1086#1076'_'#1050#1088#1080#1090#1080#1095#1085#1086#1089#1090#1100
      #1050#1088#1080#1090#1080#1095#1085#1086#1089#1090#1100'='#1050#1088#1080#1090#1080#1095#1085#1086#1089#1090#1100
      #1054#1087#1080#1089#1072#1085#1080#1077'='#1054#1087#1080#1089#1072#1085#1080#1077
      #1042#1086#1089#1087#1088#1086#1080#1079#1074#1086#1076#1080#1084#1086#1089#1090#1100'='#1042#1086#1089#1087#1088#1086#1080#1079#1074#1086#1076#1080#1084#1086#1089#1090#1100
      #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086'='#1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086
      #1050#1086#1076'_'#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100'='#1050#1086#1076'_'#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
      #1060#1072#1084#1080#1083#1080#1103'='#1060#1072#1084#1080#1083#1080#1103
      #1048#1084#1103'='#1048#1084#1103
      #1054#1090#1095#1077#1089#1090#1074#1086'='#1054#1090#1095#1077#1089#1090#1074#1086
      #1050#1086#1076'_'#1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100'='#1050#1086#1076'_'#1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100
      #1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100'='#1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100
      #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1078#1072#1083#1086#1073'='#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1078#1072#1083#1086#1073)
    BCDToCurrency = False
    Left = 64
    Top = 128
  end
  object frxReportRequestClosed: TfrxDBDataset
    UserName = 'frxReportRequestClosed'
    CloseDataSource = False
    FieldAliases.Strings = (
      #1050#1086#1076'='#1050#1086#1076
      #1044#1072#1090#1072'_'#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080'='#1044#1072#1090#1072'_'#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
      #1050#1086#1076'_'#1057#1090#1072#1090#1091#1089'='#1050#1086#1076'_'#1057#1090#1072#1090#1091#1089
      #1057#1090#1072#1090#1091#1089'='#1057#1090#1072#1090#1091#1089
      #1050#1086#1076'_'#1050#1083#1080#1077#1085#1090'='#1050#1086#1076'_'#1050#1083#1080#1077#1085#1090
      #1050#1083#1080#1077#1085#1090'='#1050#1083#1080#1077#1085#1090
      #1050#1086#1076'_'#1055#1088#1080#1086#1088#1080#1090#1077#1090'='#1050#1086#1076'_'#1055#1088#1080#1086#1088#1080#1090#1077#1090
      #1055#1088#1080#1086#1088#1080#1090#1077#1090'='#1055#1088#1080#1086#1088#1080#1090#1077#1090
      #1050#1086#1076'_'#1050#1088#1080#1090#1080#1095#1085#1086#1089#1090#1100'='#1050#1086#1076'_'#1050#1088#1080#1090#1080#1095#1085#1086#1089#1090#1100
      #1050#1088#1080#1090#1080#1095#1085#1086#1089#1090#1100'='#1050#1088#1080#1090#1080#1095#1085#1086#1089#1090#1100
      #1054#1087#1080#1089#1072#1085#1080#1077'='#1054#1087#1080#1089#1072#1085#1080#1077
      #1042#1086#1089#1087#1088#1086#1080#1079#1074#1086#1076#1080#1084#1086#1089#1090#1100'='#1042#1086#1089#1087#1088#1086#1080#1079#1074#1086#1076#1080#1084#1086#1089#1090#1100
      #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086'='#1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086
      #1050#1086#1076'_'#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100'='#1050#1086#1076'_'#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
      #1060#1072#1084#1080#1083#1080#1103'='#1060#1072#1084#1080#1083#1080#1103
      #1048#1084#1103'='#1048#1084#1103
      #1054#1090#1095#1077#1089#1090#1074#1086'='#1054#1090#1095#1077#1089#1090#1074#1086
      #1050#1086#1076'_'#1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100'='#1050#1086#1076'_'#1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100
      #1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100'='#1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100
      #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1078#1072#1083#1086#1073'='#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1078#1072#1083#1086#1073)
    BCDToCurrency = False
    Left = 64
    Top = 176
  end
  object frxUser: TfrxDBDataset
    UserName = 'frxUser'
    CloseDataSource = False
    FieldAliases.Strings = (
      #1050#1086#1076'='#1050#1086#1076
      #1060#1072#1084#1080#1083#1080#1103'='#1060#1072#1084#1080#1083#1080#1103
      #1048#1084#1103'='#1048#1084#1103
      #1054#1090#1095#1077#1089#1090#1074#1086'='#1054#1090#1095#1077#1089#1090#1074#1086
      #1044#1072#1090#1072'_'#1088#1086#1078#1076#1077#1085#1080#1103'='#1044#1072#1090#1072'_'#1088#1086#1078#1076#1077#1085#1080#1103
      #1050#1086#1076'_'#1044#1086#1083#1078#1085#1086#1089#1090#1100'='#1050#1086#1076'_'#1044#1086#1083#1078#1085#1086#1089#1090#1100
      #1058#1077#1083#1077#1092#1086#1085'='#1058#1077#1083#1077#1092#1086#1085
      #1050#1086#1076'_'#1058#1080#1087'_'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103'='#1050#1086#1076'_'#1058#1080#1087'_'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      #1051#1086#1075#1080#1085'='#1051#1086#1075#1080#1085
      #1055#1072#1088#1086#1083#1100'='#1055#1072#1088#1086#1083#1100
      #1041#1083#1086#1082#1080#1088#1086#1074#1072#1090#1100'_'#1076#1086#1089#1090#1091#1087'='#1041#1083#1086#1082#1080#1088#1086#1074#1072#1090#1100'_'#1076#1086#1089#1090#1091#1087
      #1044#1072#1090#1072'_'#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080'='#1044#1072#1090#1072'_'#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
      #1058#1080#1087'_'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103'='#1058#1080#1087'_'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
      #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100'='#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
      #1050#1086#1076'_'#1055#1086#1083'='#1050#1086#1076'_'#1055#1086#1083
      #1055#1086#1083'='#1055#1086#1083
      #1044#1086#1083#1078#1085#1086#1089#1090#1100'='#1044#1086#1083#1078#1085#1086#1089#1090#1100)
    DataSource = dmData.dsUser
    BCDToCurrency = False
    Left = 336
    Top = 80
  end
  object frxReportUserWork: TfrxDBDataset
    UserName = 'frxReportUserWork'
    CloseDataSource = False
    FieldAliases.Strings = (
      #1050#1086#1076'='#1050#1086#1076
      #1044#1072#1090#1072'_'#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080'='#1044#1072#1090#1072'_'#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
      #1050#1086#1076'_'#1057#1090#1072#1090#1091#1089'='#1050#1086#1076'_'#1057#1090#1072#1090#1091#1089
      #1057#1090#1072#1090#1091#1089'='#1057#1090#1072#1090#1091#1089
      #1050#1086#1076'_'#1050#1083#1080#1077#1085#1090'='#1050#1086#1076'_'#1050#1083#1080#1077#1085#1090
      #1050#1083#1080#1077#1085#1090'='#1050#1083#1080#1077#1085#1090
      #1050#1086#1076'_'#1055#1088#1080#1086#1088#1080#1090#1077#1090'='#1050#1086#1076'_'#1055#1088#1080#1086#1088#1080#1090#1077#1090
      #1055#1088#1080#1086#1088#1080#1090#1077#1090'='#1055#1088#1080#1086#1088#1080#1090#1077#1090
      #1050#1086#1076'_'#1050#1088#1080#1090#1080#1095#1085#1086#1089#1090#1100'='#1050#1086#1076'_'#1050#1088#1080#1090#1080#1095#1085#1086#1089#1090#1100
      #1050#1088#1080#1090#1080#1095#1085#1086#1089#1090#1100'='#1050#1088#1080#1090#1080#1095#1085#1086#1089#1090#1100
      #1054#1087#1080#1089#1072#1085#1080#1077'='#1054#1087#1080#1089#1072#1085#1080#1077
      #1042#1086#1089#1087#1088#1086#1080#1079#1074#1086#1076#1080#1084#1086#1089#1090#1100'='#1042#1086#1089#1087#1088#1086#1080#1079#1074#1086#1076#1080#1084#1086#1089#1090#1100
      #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086'='#1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086
      #1050#1086#1076'_'#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100'='#1050#1086#1076'_'#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
      #1060#1072#1084#1080#1083#1080#1103'='#1060#1072#1084#1080#1083#1080#1103
      #1048#1084#1103'='#1048#1084#1103
      #1054#1090#1095#1077#1089#1090#1074#1086'='#1054#1090#1095#1077#1089#1090#1074#1086
      #1050#1086#1076'_'#1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100'='#1050#1086#1076'_'#1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100
      #1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100'='#1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100)
    BCDToCurrency = False
    Left = 336
    Top = 128
  end
  object frxReportDefect: TfrxDBDataset
    UserName = 'frxReportDefect'
    CloseDataSource = False
    FieldAliases.Strings = (
      #1050#1086#1076'_'#1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100'='#1050#1086#1076'_'#1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100
      #1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100'='#1053#1077#1080#1089#1087#1088#1072#1074#1085#1086#1089#1090#1100
      #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'='#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
      #1042#1088#1077#1084#1103'='#1042#1088#1077#1084#1103
      #1054#1073#1097#1077#1077'_'#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'='#1054#1073#1097#1077#1077'_'#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086
      #1054#1073#1097#1077#1077'_'#1074#1088#1077#1084#1103'='#1054#1073#1097#1077#1077'_'#1074#1088#1077#1084#1103)
    BCDToCurrency = False
    Left = 64
    Top = 224
  end
  object frxClient: TfrxDBDataset
    UserName = 'frxClient'
    CloseDataSource = False
    FieldAliases.Strings = (
      #1050#1086#1076'='#1050#1086#1076
      #1053#1072#1079#1074#1072#1085#1080#1077'='#1053#1072#1079#1074#1072#1085#1080#1077
      'URL=URL'
      #1060#1072#1084#1080#1083#1080#1103'='#1060#1072#1084#1080#1083#1080#1103
      #1048#1084#1103'='#1048#1084#1103
      #1054#1090#1095#1077#1089#1090#1074#1086'='#1054#1090#1095#1077#1089#1090#1074#1086
      #1044#1086#1083#1078#1085#1086#1089#1090#1100'='#1044#1086#1083#1078#1085#1086#1089#1090#1100
      #1058#1077#1083#1077#1092#1086#1085'='#1058#1077#1083#1077#1092#1086#1085
      'Email=Email')
    DataSource = dmData.dsClient
    BCDToCurrency = False
    Left = 464
    Top = 80
  end
  object frxReportServiceSum: TfrxDBDataset
    UserName = 'frxReportServiceSum'
    CloseDataSource = False
    FieldAliases.Strings = (
      #1050#1086#1076'_'#1059#1089#1083#1091#1075#1072'='#1050#1086#1076'_'#1059#1089#1083#1091#1075#1072
      #1059#1089#1083#1091#1075#1072'='#1059#1089#1083#1091#1075#1072
      #1057#1091#1084#1084#1072'='#1057#1091#1084#1084#1072
      #1050#1086#1076'_'#1058#1080#1087'_'#1091#1089#1083#1091#1075#1080'='#1050#1086#1076'_'#1058#1080#1087'_'#1091#1089#1083#1091#1075#1080
      #1058#1080#1087'_'#1091#1089#1083#1091#1075#1080'='#1058#1080#1087'_'#1091#1089#1083#1091#1075#1080
      #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1091#1089#1083#1091#1075'='#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1091#1089#1083#1091#1075)
    BCDToCurrency = False
    Left = 64
    Top = 272
  end
  object frxReportClaim: TfrxDBDataset
    UserName = 'frxReportClaim'
    CloseDataSource = False
    FieldAliases.Strings = (
      #1050#1086#1076'_'#1047#1072#1103#1074#1082#1072'='#1050#1086#1076'_'#1047#1072#1103#1074#1082#1072
      #1050#1086#1076'_'#1058#1080#1087'_'#1078#1072#1083#1086#1073#1099'='#1050#1086#1076'_'#1058#1080#1087'_'#1078#1072#1083#1086#1073#1099
      #1044#1072#1090#1072'_'#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080'='#1044#1072#1090#1072'_'#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
      #1053#1072#1079#1074#1072#1085#1080#1077'='#1053#1072#1079#1074#1072#1085#1080#1077
      #1054#1087#1080#1089#1072#1085#1080#1077'='#1054#1087#1080#1089#1072#1085#1080#1077
      #1058#1080#1087'_'#1078#1072#1083#1086#1073#1099'='#1058#1080#1087'_'#1078#1072#1083#1086#1073#1099
      #1050#1083#1080#1077#1085#1090'='#1050#1083#1080#1077#1085#1090
      #1050#1086#1076'_'#1050#1083#1080#1077#1085#1090'='#1050#1086#1076'_'#1050#1083#1080#1077#1085#1090
      #1054#1073#1088#1072#1073#1086#1090#1072#1085#1072'='#1054#1073#1088#1072#1073#1086#1090#1072#1085#1072
      #1044#1072#1090#1072'_'#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103'='#1044#1072#1090#1072'_'#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103)
    BCDToCurrency = False
    Left = 64
    Top = 320
  end
  object frxReportClientClaim: TfrxDBDataset
    UserName = 'frxReportClientClaim'
    CloseDataSource = False
    FieldAliases.Strings = (
      #1050#1086#1076'_'#1047#1072#1103#1074#1082#1072'='#1050#1086#1076'_'#1047#1072#1103#1074#1082#1072
      #1050#1086#1076'_'#1058#1080#1087'_'#1078#1072#1083#1086#1073#1099'='#1050#1086#1076'_'#1058#1080#1087'_'#1078#1072#1083#1086#1073#1099
      #1044#1072#1090#1072'_'#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080'='#1044#1072#1090#1072'_'#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
      #1053#1072#1079#1074#1072#1085#1080#1077'='#1053#1072#1079#1074#1072#1085#1080#1077
      #1054#1087#1080#1089#1072#1085#1080#1077'='#1054#1087#1080#1089#1072#1085#1080#1077
      #1058#1080#1087'_'#1078#1072#1083#1086#1073#1099'='#1058#1080#1087'_'#1078#1072#1083#1086#1073#1099
      #1050#1083#1080#1077#1085#1090'='#1050#1083#1080#1077#1085#1090
      #1050#1086#1076'_'#1050#1083#1080#1077#1085#1090'='#1050#1086#1076'_'#1050#1083#1080#1077#1085#1090
      #1054#1073#1088#1072#1073#1086#1090#1072#1085#1072'='#1054#1073#1088#1072#1073#1086#1090#1072#1085#1072
      #1044#1072#1090#1072'_'#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103'='#1044#1072#1090#1072'_'#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103)
    BCDToCurrency = False
    Left = 64
    Top = 368
  end
  object frxCurrentClient: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'frxCurrentClient'
    CloseDataSource = False
    FieldAliases.Strings = (
      #1050#1086#1076'='#1050#1086#1076
      #1053#1072#1079#1074#1072#1085#1080#1077'='#1053#1072#1079#1074#1072#1085#1080#1077
      'URL=URL'
      #1060#1072#1084#1080#1083#1080#1103'='#1060#1072#1084#1080#1083#1080#1103
      #1048#1084#1103'='#1048#1084#1103
      #1054#1090#1095#1077#1089#1090#1074#1086'='#1054#1090#1095#1077#1089#1090#1074#1086
      #1044#1086#1083#1078#1085#1086#1089#1090#1100'='#1044#1086#1083#1078#1085#1086#1089#1090#1100
      #1058#1077#1083#1077#1092#1086#1085'='#1058#1077#1083#1077#1092#1086#1085
      'Email=Email')
    DataSource = dmData.dsClient
    BCDToCurrency = False
    Left = 200
    Top = 320
  end
  object frxAnalysis: TfrxDBDataset
    UserName = 'frxAnalysis'
    CloseDataSource = False
    FieldAliases.Strings = (
      'DefectID=DefectID'
      'Date=Date'
      'Data=Data'
      'Smoothing=Smoothing'
      'Trend=Trend'
      'Result=Result'
      'Forecast=Forecast'
      'Date1=Date1'
      'Date2=Date2'
      'DaysCount=DaysCount'
      'Defect=Defect'
      'K=K'
      'B=B')
    BCDToCurrency = False
    Left = 64
    Top = 416
  end
  object frxFunctionInfo: TfrxDBDataset
    UserName = 'frxFunctionInfo'
    CloseDataSource = False
    FieldAliases.Strings = (
      #1050#1086#1076'_'#1044#1086#1083#1078#1085#1086#1089#1090#1100'='#1050#1086#1076'_'#1044#1086#1083#1078#1085#1086#1089#1090#1100
      #1053#1072#1079#1074#1072#1085#1080#1077'='#1053#1072#1079#1074#1072#1085#1080#1077
      #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074'='#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074)
    BCDToCurrency = False
    Left = 200
    Top = 368
  end
  object frxUserPointers: TfrxDBDataset
    UserName = 'frxUserPointers'
    CloseDataSource = False
    FieldAliases.Strings = (
      #1050#1086#1076'_'#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100'='#1050#1086#1076'_'#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
      #1044#1086#1083#1078#1085#1086#1089#1090#1100'='#1044#1086#1083#1078#1085#1086#1089#1090#1100
      #1060#1072#1084#1080#1083#1080#1103'='#1060#1072#1084#1080#1083#1080#1103
      #1048#1084#1103'='#1048#1084#1103
      #1054#1090#1095#1077#1089#1090#1074#1086'='#1054#1090#1095#1077#1089#1090#1074#1086
      #1055#1088#1080#1085#1103#1090#1086'='#1055#1088#1080#1085#1103#1090#1086
      #1042#1099#1087#1086#1083#1085#1077#1085#1086'='#1042#1099#1087#1086#1083#1085#1077#1085#1086
      #1056#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1086'='#1056#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1086
      #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1088#1072#1079#1086#1074#1099#1093'_'#1091#1089#1083#1091#1075'='#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1088#1072#1079#1086#1074#1099#1093'_'#1091#1089#1083#1091#1075
      #1057#1091#1084#1084#1072'_'#1088#1072#1079#1086#1074#1099#1093'_'#1091#1089#1083#1091#1075'='#1057#1091#1084#1084#1072'_'#1088#1072#1079#1086#1074#1099#1093'_'#1091#1089#1083#1091#1075
      #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1087#1086#1095#1072#1089#1086#1074#1099#1093'_'#1091#1089#1083#1091#1075'='#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1087#1086#1095#1072#1089#1086#1074#1099#1093'_'#1091#1089#1083#1091#1075
      #1057#1091#1084#1084#1072'_'#1087#1086#1095#1072#1089#1086#1074#1099#1093'_'#1091#1089#1083#1091#1075'='#1057#1091#1084#1084#1072'_'#1087#1086#1095#1072#1089#1086#1074#1099#1093'_'#1091#1089#1083#1091#1075
      #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1086#1090#1082#1088#1099#1090#1099#1093'_'#1079#1072#1103#1074#1086#1082'='#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1086#1090#1082#1088#1099#1090#1099#1093'_'#1079#1072#1103#1074#1086#1082
      #1055#1088#1086#1096#1077#1076#1096#1077#1077'_'#1074#1088#1077#1084#1103'='#1055#1088#1086#1096#1077#1076#1096#1077#1077'_'#1074#1088#1077#1084#1103
      #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1079#1072#1082#1088#1099#1090#1099#1093'_'#1079#1072#1103#1074#1086#1082'='#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1079#1072#1082#1088#1099#1090#1099#1093'_'#1079#1072#1103#1074#1086#1082
      #1047#1072#1090#1088#1072#1095#1077#1085#1085#1086#1077'_'#1074#1088#1077#1084#1103'='#1047#1072#1090#1088#1072#1095#1077#1085#1085#1086#1077'_'#1074#1088#1077#1084#1103
      #1054#1073#1097#1077#1077'_'#1079#1072#1090#1088#1072#1095#1077#1085#1085#1086#1077'_'#1074#1088#1077#1084#1103'='#1054#1073#1097#1077#1077'_'#1079#1072#1090#1088#1072#1095#1077#1085#1085#1086#1077'_'#1074#1088#1077#1084#1103
      
        #1054#1073#1097#1077#1077'_'#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1079#1072#1082#1088#1099#1090#1099#1093'_'#1079#1072#1103#1074#1086#1082'='#1054#1073#1097#1077#1077'_'#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1079#1072#1082#1088#1099#1090#1099#1093'_'#1079#1072#1103#1074#1086 +
        #1082)
    BCDToCurrency = False
    Left = 336
    Top = 176
  end
  object frxClientInfo: TfrxDBDataset
    UserName = 'frxClientInfo'
    CloseDataSource = False
    FieldAliases.Strings = (
      #1050#1086#1076'_'#1050#1083#1080#1077#1085#1090'='#1050#1086#1076'_'#1050#1083#1080#1077#1085#1090
      #1053#1072#1079#1074#1072#1085#1080#1077'='#1053#1072#1079#1074#1072#1085#1080#1077
      'C'#1090#1086#1080#1084#1086#1089#1090#1100'_'#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1093'_'#1091#1089#1083#1091#1075'=C'#1090#1086#1080#1084#1086#1089#1090#1100'_'#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1093'_'#1091#1089#1083#1091#1075
      #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1079#1072#1082#1088#1099#1090#1099#1093'_'#1079#1072#1103#1074#1086#1082'='#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1079#1072#1082#1088#1099#1090#1099#1093'_'#1079#1072#1103#1074#1086#1082
      #1047#1072#1090#1088#1072#1095#1077#1085#1085#1086#1077'_'#1074#1088#1077#1084#1103'='#1047#1072#1090#1088#1072#1095#1077#1085#1085#1086#1077'_'#1074#1088#1077#1084#1103
      #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1086#1090#1082#1088#1099#1090#1099#1093'_'#1079#1072#1103#1074#1086#1082'='#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1086#1090#1082#1088#1099#1090#1099#1093'_'#1079#1072#1103#1074#1086#1082
      #1055#1088#1086#1096#1077#1076#1096#1077#1077'_'#1074#1088#1077#1084#1103'='#1055#1088#1086#1096#1077#1076#1096#1077#1077'_'#1074#1088#1077#1084#1103
      #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1078#1072#1083#1086#1073'='#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1078#1072#1083#1086#1073
      
        #1054#1073#1097#1072#1103'_'#1089#1090#1086#1080#1084#1086#1089#1090#1100'_'#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1093'_'#1091#1089#1083#1091#1075'='#1054#1073#1097#1072#1103'_'#1089#1090#1086#1080#1084#1086#1089#1090#1100'_'#1076#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100 +
        #1085#1099#1093'_'#1091#1089#1083#1091#1075
      #1054#1073#1097#1077#1077'_'#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1078#1072#1083#1086#1073'='#1054#1073#1097#1077#1077'_'#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1078#1072#1083#1086#1073
      #1054#1073#1097#1077#1077'_'#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1079#1072#1103#1074#1086#1082'='#1054#1073#1097#1077#1077'_'#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1079#1072#1103#1074#1086#1082
      #1054#1073#1097#1077#1077'_'#1079#1072#1090#1088#1072#1095#1077#1085#1085#1086#1077'_'#1074#1088#1077#1084#1103'='#1054#1073#1097#1077#1077'_'#1079#1072#1090#1088#1072#1095#1077#1085#1085#1086#1077'_'#1074#1088#1077#1084#1103
      
        #1054#1073#1097#1077#1077'_'#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1086#1090#1082#1088#1099#1090#1099#1093'_'#1079#1072#1103#1074#1086#1082'='#1054#1073#1097#1077#1077'_'#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1086#1090#1082#1088#1099#1090#1099#1093'_'#1079#1072#1103#1074#1086 +
        #1082
      #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1088#1072#1079#1086#1074#1099#1093'_'#1091#1089#1083#1091#1075'='#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1088#1072#1079#1086#1074#1099#1093'_'#1091#1089#1083#1091#1075
      #1057#1091#1084#1084#1072'_'#1088#1072#1079#1086#1074#1099#1093'_'#1091#1089#1083#1091#1075'='#1057#1091#1084#1084#1072'_'#1088#1072#1079#1086#1074#1099#1093'_'#1091#1089#1083#1091#1075
      #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1087#1086#1095#1072#1089#1086#1074#1099#1093'_'#1091#1089#1083#1091#1075'='#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'_'#1087#1086#1095#1072#1089#1086#1074#1099#1093'_'#1091#1089#1083#1091#1075
      #1057#1091#1084#1084#1072'_'#1087#1086#1095#1072#1089#1086#1074#1099#1093'_'#1091#1089#1083#1091#1075'='#1057#1091#1084#1084#1072'_'#1087#1086#1095#1072#1089#1086#1074#1099#1093'_'#1091#1089#1083#1091#1075
      #1050#1079#1072#1082#1079'='#1050#1079#1072#1082#1079
      #1054#1073#1097#1077#1077'_'#1082#1086#1083'_'#1074#1099'_'#1079#1072#1103#1074#1086#1082'='#1054#1073#1097#1077#1077'_'#1082#1086#1083'_'#1074#1099'_'#1079#1072#1103#1074#1086#1082)
    BCDToCurrency = False
    Left = 464
    Top = 128
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 632
    Top = 368
  end
  object frxChartObject1: TfrxChartObject
    Left = 632
    Top = 416
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 728
    Top = 272
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    RowsCount = 0
    Split = ssNotSplit
    Left = 728
    Top = 232
  end
  object frxBIFFExport1: TfrxBIFFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    RowHeightScale = 1.000000000000000000
    ChunkSize = 0
    Inaccuracy = 10.000000000000000000
    FitPages = False
    Pictures = True
    ParallelPages = 0
    Left = 728
    Top = 192
  end
end
