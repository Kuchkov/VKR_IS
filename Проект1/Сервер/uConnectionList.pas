unit uConnectionList;

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
В этом модуле описан класс, который организует хранение информации о всех соединениях сервера;
}

interface

uses Classes, uConnectionInfo, SysUtils;

const
    // Это значение function Find возвращает при неудачном поиске;
    c_NotFind = -1;

type
    // Класс - список соединений сервера;
    TConnectionList = class
    private
      // Список, в котором хранятся информация о соединениях;
      FList : TStringList;
      // Процедура, вызываемая при изменении состояния списка соединений;
      procedure Change;
    public
      // В OnChange записывается процедура, которая будет вызываться при изменении списка;
      OnChange : TNotifyEvent;
      // Конструктор класса;
      constructor Create;
      // Деструктор класса;
      destructor Destroy; overload;
      // Функция поиска записи по ключу (возвращает индекс);
      function Find (Key : Integer) : Integer;
      // Функция добавления в список записи;
      function AddConnection (Key : Integer) : TConnectionInfo;
      // Функция получения записи по ключу;
      function GetConnectionKey (Key : Integer) : TConnectionInfo;
      // Функция получения записи по индексу;
      function GetConnectionIndex (Index : Integer) : TConnectionInfo;
      // Функция получения копии списка соединения;
      function GetList : TStrings;
      // Функция получения количества элементов в списке;
      function GetCount : Integer;
      // Удаление элемента из списка;
      procedure DelConnection (Key : Integer);
      //
      procedure ConnectionListOnChange (Sender : TObject);

    end;
var
    //
    ConnectionList : TConnectionList;

implementation

uses ufMain;

// Конструктор класса;
constructor TConnectionList.Create;
begin
    //
    inherited Create;
    FList := TStringList.Create;
    OnChange := ConnectionListOnChange;
end;
// Деструктор класса;
destructor TConnectionList.Destroy;
begin
    //
    FList.Free;
    inherited Destroy;
end;
// Процедура, вызываемая при изменении состояния списка соединений;
procedure TConnectionList.Change;
begin
    // Если функция в OnChange задана, то вызываем её;
    if @OnChange <> nil then
    begin
        //
        TThread.Queue(nil, procedure begin OnChange (Self) end);
    end;
end;
// Функция поиска записи по ключу (возвращает индекс);
function TConnectionList.Find (Key : Integer) : Integer;
var
    //
    CI : TConnectionInfo;
    I : Integer;
begin
    // По умолчанию результат функции "не найдено";
    Result := c_NotFind;
    // Перебираем список;
    for I := 0 to FList.Count - 1 do
    begin
        //
        CI := FList.Objects[I] as TConnectionInfo;
        // Если ключ найден;
        if CI.Key = Key then
        begin
            // Возвращаем индекс описателья;
            Result := I;
            // Выскакиваем из функции;
            Exit;
        end;
    end;
end;

// Функция добавления в список записи;
function TConnectionList.AddConnection (Key : Integer) : TConnectionInfo;
var
    //
    CI : TConnectionInfo;
    Index : Integer;
begin
    //
    Result := nil;
    // Если такого ключа нет в списке, то создаём новый описатель с этим ключем;
    if Find (Key) = c_NotFind then
    begin
        //
        CI := TConnectionInfo.Create(Key);
        FList.AddObject('', CI);
        Result := CI;
        Change;
    end;
end;
// Функция получения записи по ключу;
function TConnectionList.GetConnectionKey (Key : Integer) : TConnectionInfo;
var
    //
    I : Integer;
    CI : TConnectionInfo;
begin
    //
    Result := nil;
    // Ищем описатель с указанным ключем;
    I := Find(Key);
    if I <> c_NotFind then
    begin
        // Возвращаем найденный описатель;
        CI := FList.Objects[I] as TConnectionInfo;
        Result := CI;
    end;
end;
// Функция получения записи по индексу;
function TConnectionList.GetConnectionIndex (Index : Integer) : TConnectionInfo;
begin
    //
    Result := nil;
    // Если индекс не выходит за пределы индексов списка, то возвращаем описатель;
    if (Index >= 0) and (Index < FList.Count) then
    begin
        //
        Result := FList.Objects[Index] as TConnectionInfo;
    end;
end;
// Функция получения копии списка соединения;
function TConnectionList.GetList : TStrings;
begin
    //
    Result := TStringList.Create;
    Result.AddStrings(FList);
end;
// Функция получения количества элементов в списке;
function TConnectionList.GetCount : Integer;
begin
    //
    Result := FList.Count;
end;
// Удаление элемента из списка;
procedure TConnectionList.DelConnection (Key : Integer);
var
    //
    I : Integer;
    CI : TConnectionInfo;
begin
    // Ищем элемент с указанным ключем;
    I := Find(Key);
    // Проверяем, нашла ли функция описатель с заданным ключем;
    if I <> c_NotFind then
    begin
        // Возвращаем описатель;
        CI := FList.Objects[I] as TConnectionInfo;
        // Разрушаем его;
        CI.Free;
        // Удаляем запись из списка;
        FList.Delete(I);
        // Выполняем процедуру в OnChange;
        Change;
    end;
end;

procedure TConnectionList.ConnectionListOnChange (Sender : TObject);
var
    //
    I : Integer;
    CI : TConnectionInfo;
begin
    //
    try
        fMain.lbConnections.Items.Clear;
        for I := 0 to FList.Count - 1 do
        begin
            //
            CI := FList.Objects[I] as TConnectionInfo;
            fMain.lbConnections.Items.Add ('Поток [' + IntToStr (CI.Key) + '], Время входа [' + DateTimeToStr (CI.DateTime) + '], IP-адрес [' + CI.IP + ']');
        end;
        fMain.sbMain.Panels[1].Text := IntToStr (FList.Count);
    except
    end;
end;


initialization
    ConnectionList := TConnectionList.Create;
finalization
    ConnectionList.Free;
end.
