object fLogin: TfLogin
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1042#1093#1086#1076
  ClientHeight = 209
  ClientWidth = 290
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 273
    Height = 193
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1059#1095#1077#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
      object leName: TLabeledEdit
        Left = 19
        Top = 35
        Width = 225
        Height = 21
        EditLabel.Width = 19
        EditLabel.Height = 13
        EditLabel.Caption = #1048#1084#1103
        TabOrder = 0
        Text = 'admin'
        OnEnter = leNameEnter
        OnMouseEnter = leNameEnter
      end
      object lePassword: TLabeledEdit
        Left = 19
        Top = 73
        Width = 225
        Height = 21
        EditLabel.Width = 37
        EditLabel.Height = 13
        EditLabel.Caption = #1055#1072#1088#1086#1083#1100
        PasswordChar = '*'
        TabOrder = 1
        OnEnter = lePasswordEnter
        OnMouseEnter = lePasswordEnter
      end
      object bOk: TButton
        Left = 88
        Top = 124
        Width = 75
        Height = 25
        Caption = #1054#1050
        Default = True
        TabOrder = 2
        OnClick = bOkClick
      end
      object bCancel: TButton
        Left = 169
        Top = 124
        Width = 75
        Height = 25
        Caption = #1054#1090#1084#1077#1085#1072
        TabOrder = 3
        OnClick = bCancelClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1089#1086#1077#1076#1080#1085#1077#1085#1080#1103
      ImageIndex = 1
      object leAdress: TLabeledEdit
        Left = 19
        Top = 35
        Width = 225
        Height = 21
        EditLabel.Width = 75
        EditLabel.Height = 13
        EditLabel.Caption = #1040#1076#1088#1077#1089' '#1089#1077#1088#1074#1077#1088#1072
        TabOrder = 0
        OnEnter = leAdressEnter
        OnMouseEnter = leAdressEnter
      end
      object lePort: TLabeledEdit
        Left = 19
        Top = 73
        Width = 225
        Height = 21
        EditLabel.Width = 25
        EditLabel.Height = 13
        EditLabel.Caption = #1055#1086#1088#1090
        NumbersOnly = True
        TabOrder = 1
        OnEnter = lePortEnter
        OnMouseEnter = lePortEnter
      end
    end
  end
end
