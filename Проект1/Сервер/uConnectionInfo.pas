unit uConnectionInfo;

// ***************************************************************************
// ***************************************************************************
// ***************************************************************************
// ***************************************************************************
// ***************************    Режим сервера   ****************************
// ***************************************************************************
// ***************************************************************************
// ***************************************************************************
// ***************************************************************************

{
Модуль содержит класс, который описывает установленное соединение;
}

interface

uses Classes, SysUtils, Datasnap.DSTCPServerTransport;

type
    // Класс для хранения информации о подключенных пользователях;
    TConnectionInfo = class
      //
      private
        // Уникальный ключ;
        FKey : Integer;
        // Дата и время создания;
        FDateTime : TDateTime;
        // IP адрес;
        FIP : String;
        // Канал;
        FChannel : TDSTCPChannel;
        // Код пользователя;
        FUserKey : Integer;
        //
        FUserTypeKey : Integer;



      public
        // Конструктор класса;
        constructor Create (Key : Integer);
        // Деструктор класса;
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

