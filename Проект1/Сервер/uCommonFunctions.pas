unit uCommonFunctions;


{
В данном модуле содержатся общие функции для проекта, которые не могут быть классифицированы;
}

interface

uses Classes, SysUtils, ADODB;

function DateToAccessDate (Value : TDateTime) : String;
function ValueCorrect (Value : Double; d : double = 100) : Double;
procedure ReadStreamFromStream (Source : TStream;  Output : TStream);

implementation


function DateToAccessDate (Value : TDateTime) : String;
begin
    //

    Result := '#' + FormatDateTime('MM', Value) + '/' + FormatDateTime('DD', Value) + '/' + FormatDateTime('YYYY', Value) + '#';
end;

function ValueCorrect (Value : Double; d : double = 100) : Double;
begin
    //
    Result := Round (Value * d) / d;
end;

// Функция для загрузки данных из потока, переданного через DataSnap;
procedure ReadStreamFromStream (Source : TStream;  Output : TStream);
const
    //
    BufferSize = 100000; // размер буфера для чтения файла с сервера;
var
    // Количество байт, которые были прочианы;
    BytesReadCount : Integer;
    // Буфер чтения;
    Buffer : TBytes;
begin
    // Инициализируем буфер;
    SetLength(Buffer, BufferSize);
    try
        // Загружаем, пока есть что загружать;
        repeat
            //
            BytesReadCount := Source.Read(Buffer[0], BufferSize);
            if BytesReadCount > 0 then
                Output.Write(Buffer[0], BytesReadCount);

        until BytesReadCount < BufferSize;

    finally
        //
        SetLength(Buffer, 0);
    end;
end;



end.
