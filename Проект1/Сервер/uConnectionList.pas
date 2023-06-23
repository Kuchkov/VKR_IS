unit uConnectionList;

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
� ���� ������ ������ �����, ������� ���������� �������� ���������� � ���� ����������� �������;
}

interface

uses Classes, uConnectionInfo, SysUtils;

const
    // ��� �������� function Find ���������� ��� ��������� ������;
    c_NotFind = -1;

type
    // ����� - ������ ���������� �������;
    TConnectionList = class
    private
      // ������, � ������� �������� ���������� � �����������;
      FList : TStringList;
      // ���������, ���������� ��� ��������� ��������� ������ ����������;
      procedure Change;
    public
      // � OnChange ������������ ���������, ������� ����� ���������� ��� ��������� ������;
      OnChange : TNotifyEvent;
      // ����������� ������;
      constructor Create;
      // ���������� ������;
      destructor Destroy; overload;
      // ������� ������ ������ �� ����� (���������� ������);
      function Find (Key : Integer) : Integer;
      // ������� ���������� � ������ ������;
      function AddConnection (Key : Integer) : TConnectionInfo;
      // ������� ��������� ������ �� �����;
      function GetConnectionKey (Key : Integer) : TConnectionInfo;
      // ������� ��������� ������ �� �������;
      function GetConnectionIndex (Index : Integer) : TConnectionInfo;
      // ������� ��������� ����� ������ ����������;
      function GetList : TStrings;
      // ������� ��������� ���������� ��������� � ������;
      function GetCount : Integer;
      // �������� �������� �� ������;
      procedure DelConnection (Key : Integer);
      //
      procedure ConnectionListOnChange (Sender : TObject);

    end;
var
    //
    ConnectionList : TConnectionList;

implementation

uses ufMain;

// ����������� ������;
constructor TConnectionList.Create;
begin
    //
    inherited Create;
    FList := TStringList.Create;
    OnChange := ConnectionListOnChange;
end;
// ���������� ������;
destructor TConnectionList.Destroy;
begin
    //
    FList.Free;
    inherited Destroy;
end;
// ���������, ���������� ��� ��������� ��������� ������ ����������;
procedure TConnectionList.Change;
begin
    // ���� ������� � OnChange ������, �� �������� �;
    if @OnChange <> nil then
    begin
        //
        TThread.Queue(nil, procedure begin OnChange (Self) end);
    end;
end;
// ������� ������ ������ �� ����� (���������� ������);
function TConnectionList.Find (Key : Integer) : Integer;
var
    //
    CI : TConnectionInfo;
    I : Integer;
begin
    // �� ��������� ��������� ������� "�� �������";
    Result := c_NotFind;
    // ���������� ������;
    for I := 0 to FList.Count - 1 do
    begin
        //
        CI := FList.Objects[I] as TConnectionInfo;
        // ���� ���� ������;
        if CI.Key = Key then
        begin
            // ���������� ������ ����������;
            Result := I;
            // ����������� �� �������;
            Exit;
        end;
    end;
end;

// ������� ���������� � ������ ������;
function TConnectionList.AddConnection (Key : Integer) : TConnectionInfo;
var
    //
    CI : TConnectionInfo;
    Index : Integer;
begin
    //
    Result := nil;
    // ���� ������ ����� ��� � ������, �� ������ ����� ��������� � ���� ������;
    if Find (Key) = c_NotFind then
    begin
        //
        CI := TConnectionInfo.Create(Key);
        FList.AddObject('', CI);
        Result := CI;
        Change;
    end;
end;
// ������� ��������� ������ �� �����;
function TConnectionList.GetConnectionKey (Key : Integer) : TConnectionInfo;
var
    //
    I : Integer;
    CI : TConnectionInfo;
begin
    //
    Result := nil;
    // ���� ��������� � ��������� ������;
    I := Find(Key);
    if I <> c_NotFind then
    begin
        // ���������� ��������� ���������;
        CI := FList.Objects[I] as TConnectionInfo;
        Result := CI;
    end;
end;
// ������� ��������� ������ �� �������;
function TConnectionList.GetConnectionIndex (Index : Integer) : TConnectionInfo;
begin
    //
    Result := nil;
    // ���� ������ �� ������� �� ������� �������� ������, �� ���������� ���������;
    if (Index >= 0) and (Index < FList.Count) then
    begin
        //
        Result := FList.Objects[Index] as TConnectionInfo;
    end;
end;
// ������� ��������� ����� ������ ����������;
function TConnectionList.GetList : TStrings;
begin
    //
    Result := TStringList.Create;
    Result.AddStrings(FList);
end;
// ������� ��������� ���������� ��������� � ������;
function TConnectionList.GetCount : Integer;
begin
    //
    Result := FList.Count;
end;
// �������� �������� �� ������;
procedure TConnectionList.DelConnection (Key : Integer);
var
    //
    I : Integer;
    CI : TConnectionInfo;
begin
    // ���� ������� � ��������� ������;
    I := Find(Key);
    // ���������, ����� �� ������� ��������� � �������� ������;
    if I <> c_NotFind then
    begin
        // ���������� ���������;
        CI := FList.Objects[I] as TConnectionInfo;
        // ��������� ���;
        CI.Free;
        // ������� ������ �� ������;
        FList.Delete(I);
        // ��������� ��������� � OnChange;
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
            fMain.lbConnections.Items.Add ('����� [' + IntToStr (CI.Key) + '], ����� ����� [' + DateTimeToStr (CI.DateTime) + '], IP-����� [' + CI.IP + ']');
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
