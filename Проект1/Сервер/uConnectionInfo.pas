unit uConnectionInfo;

// ***************************************************************************
// ***************************************************************************
// ***************************************************************************
// ***************************************************************************
// ***************************    ����� �������   ****************************
// ***************************************************************************
// ***************************************************************************
// ***************************************************************************
// ***************************************************************************

{
������ �������� �����, ������� ��������� ������������� ����������;
}

interface

uses Classes, SysUtils, Datasnap.DSTCPServerTransport;

type
    // ����� ��� �������� ���������� � ������������ �������������;
    TConnectionInfo = class
      //
      private
        // ���������� ����;
        FKey : Integer;
        // ���� � ����� ��������;
        FDateTime : TDateTime;
        // IP �����;
        FIP : String;
        // �����;
        FChannel : TDSTCPChannel;
        // ��� ������������;
        FUserKey : Integer;
        //
        FUserTypeKey : Integer;



      public
        // ����������� ������;
        constructor Create (Key : Integer);
        // ���������� ������;
        destructor Destroy; overload;
        property Key : Integer read FKey;
        property DateTime : TDateTime read FDateTime;
        property IP : String read FIP write FIP;
        property Channel : TDSTCPChannel read FChannel write FChannel;
        property UserKey : Integer read FUserKey write FUserKey;
        property UserTypeKey : Integer read FUserTypeKey write FUserTypeKey;
    end;


implementation


constructor TConnectionInfo.Create (Key : Integer);
begin
    //
    inherited Create;
    FKey := Key;
    FDateTime := Now;
    FUserKey := 0;

end;

destructor TConnectionInfo.Destroy;
begin
    //
    inherited Destroy;
end;

end.

