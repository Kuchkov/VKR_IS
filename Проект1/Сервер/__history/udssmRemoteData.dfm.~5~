object dssmRemoteData: TdssmRemoteData
  OldCreateOrder = False
  OnCreate = DSServerModuleCreate
  Height = 289
  Width = 802
  object dspUserInfo: TDataSetProvider
    DataSet = qUserInfo
    Options = [poDisableInserts, poDisableDeletes, poUseQuoteChar]
    Left = 192
    Top = 24
  end
  object qUserInfo: TADOQuery
    Connection = dmServer.adoConnection
    CursorType = ctStatic
    BeforeOpen = qUserInfoBeforeOpen
    Parameters = <
      item
        Name = 'CurrentUserKey'
        DataType = ftWideString
        Size = 1
        Value = '0'
      end>
    SQL.Strings = (
      'select * from '#1047#1072#1087#1088#1086#1089'_'#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100' where '#1050#1086#1076' = :CurrentUserKey')
    Left = 56
    Top = 24
  end
  object tUserType: TADOTable
    Connection = dmServer.adoConnection
    CursorType = ctStatic
    TableName = #1058#1080#1087'_'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
    Left = 56
    Top = 72
  end
  object tUser: TADOTable
    Connection = dmServer.adoConnection
    CursorType = ctStatic
    TableName = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
    Left = 56
    Top = 120
  end
  object dspUserType: TDataSetProvider
    DataSet = tUserType
    Options = [poReadOnly, poUseQuoteChar]
    Left = 192
    Top = 72
  end
  object dspUser: TDataSetProvider
    DataSet = tUser
    Left = 192
    Top = 120
  end
  object tParams: TADOTable
    Connection = dmServer.adoConnection
    CursorType = ctStatic
    EnableBCD = False
    TableName = #1055#1072#1088#1072#1084#1077#1090#1088#1099
    Left = 56
    Top = 168
  end
  object dspParams: TDataSetProvider
    DataSet = tParams
    Options = [poDisableInserts, poDisableDeletes, poUseQuoteChar]
    Left = 192
    Top = 168
  end
  object tClient: TADOTable
    Connection = dmServer.adoConnection
    CursorType = ctStatic
    TableName = #1050#1083#1080#1077#1085#1090
    Left = 56
    Top = 216
  end
  object dspClient: TDataSetProvider
    DataSet = tClient
    Left = 192
    Top = 216
  end
  object tAccrual: TADOTable
    Connection = dmServer.adoConnection
    CursorType = ctStatic
    BeforePost = tAccrualBeforePost
    AfterPost = tAccrualAfterPost
    TableName = #1053#1072#1095#1080#1089#1083#1077#1085#1080#1077
    Left = 320
    Top = 24
  end
  object dspAccrual: TDataSetProvider
    DataSet = tAccrual
    ResolveToDataSet = True
    Left = 456
    Top = 24
  end
  object tCounter: TADOTable
    Connection = dmServer.adoConnection
    CursorType = ctStatic
    TableName = #1057#1095#1077#1090#1095#1080#1082
    Left = 320
    Top = 72
  end
  object dspCounter: TDataSetProvider
    DataSet = tCounter
    Left = 456
    Top = 72
  end
  object tTariff: TADOTable
    Connection = dmServer.adoConnection
    CursorType = ctStatic
    TableName = #1058#1072#1088#1080#1092
    Left = 320
    Top = 120
  end
  object dspTariff: TDataSetProvider
    DataSet = tTariff
    Left = 456
    Top = 120
  end
  object tResourceType: TADOTable
    Connection = dmServer.adoConnection
    CursorType = ctStatic
    TableName = #1058#1080#1087'_'#1088#1077#1089#1091#1088#1089#1072
    Left = 320
    Top = 168
  end
  object dspResourceType: TDataSetProvider
    DataSet = tResourceType
    Left = 456
    Top = 168
  end
  object dspCounterData: TDataSetProvider
    DataSet = qCounterData
    Options = [poDisableInserts, poDisableEdits, poDisableDeletes, poUseQuoteChar]
    Left = 456
    Top = 216
  end
  object qCounterData: TADOQuery
    Connection = dmServer.adoConnection
    CursorType = ctStatic
    BeforeOpen = qCounterDataBeforeOpen
    Parameters = <
      item
        Name = 'CurrentAccrualKey'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'select * from '#1047#1072#1087#1088#1086#1089'_'#1044#1072#1085#1085#1099#1077'_'#1076#1083#1103'_'#1086#1090#1087#1088#1072#1074#1082#1080' where '#1050#1086#1076'_'#1053#1072#1095#1080#1089#1083#1077#1085#1080#1077' = ' +
        ':CurrentAccrualKey')
    Left = 320
    Top = 216
  end
  object tHouse: TADOTable
    Connection = dmServer.adoConnection
    CursorType = ctStatic
    TableName = #1044#1086#1084
    Left = 552
    Top = 24
  end
  object dspHouse: TDataSetProvider
    DataSet = tHouse
    Left = 688
    Top = 24
  end
  object IdSMTP1: TIdSMTP
    IOHandler = IdSSLIOHandlerSocketOpenSSL1
    SASLMechanisms = <>
    Left = 560
    Top = 104
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    Destination = ':25'
    MaxLineAction = maException
    Port = 25
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 672
    Top = 136
  end
end
