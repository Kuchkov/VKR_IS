unit uCommonFunctions;


{
� ������ ������ ���������� ����� ������� ��� �������, ������� �� ����� ���� ����������������;
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

// ������� ��� �������� ������ �� ������, ����������� ����� DataSnap;
procedure ReadStreamFromStream (Source : TStream;  Output : TStream);
const
    //
    BufferSize = 100000; // ������ ������ ��� ������ ����� � �������;
var
    // ���������� ����, ������� ���� ��������;
    BytesReadCount : Integer;
    // ����� ������;
    Buffer : TBytes;
begin
    // �������������� �����;
    SetLength(Buffer, BufferSize);
    try
        // ���������, ���� ���� ��� ���������;
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
