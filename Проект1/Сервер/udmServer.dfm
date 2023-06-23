object dmServer: TdmServer
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 290
  Width = 658
  object DSAuthenticationManager: TDSAuthenticationManager
    OnUserAuthenticate = DSAuthenticationManagerUserAuthenticate
    Roles = <>
    Left = 64
    Top = 208
  end
  object DSTCPServerTransport: TDSTCPServerTransport
    Port = 5000
    Server = DSServer
    BufferKBSize = 32
    Filters = <>
    AuthenticationManager = DSAuthenticationManager
    OnConnect = DSTCPServerTransportConnect
    OnDisconnect = DSTCPServerTransportDisconnect
    KeepAliveEnablement = kaDefault
    KeepAliveTime = 10000
    KeepAliveInterval = 1000
    Left = 64
    Top = 160
  end
  object DSServerClass: TDSServerClass
    OnGetClass = DSServerClassGetClass
    Server = DSServer
    LifeCycle = 'Session'
    Left = 64
    Top = 112
  end
  object DSServer: TDSServer
    AutoStart = False
    HideDSAdmin = True
    Left = 64
    Top = 64
  end
  object adoConnection: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\'#1055#1088#1086#1077#1082#1090#1099'\931 - '#1058#1057 +
      #1046'\'#1055#1088#1086#1077#1082#1090'\'#1057#1077#1088#1074#1077#1088'\Win32\Release\Base.mdb;Persist Security Info=Fal' +
      'se;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 64
    Top = 16
  end
end
