unit uAnalysisSaver;

interface

uses Classes, DB, ADODB, SysUtils, Dialogs;

type

    TAnalysisSaver = class
        //
        private
        FConnection : TADOConnection;
        FAnalysis : TADOTable;
        FAnalysisDish : TADOTable;
        FAnalysisProduct : TADOTable;
        function GetQuery (SQL : String) : TADOQuery;

        procedure AddDishProducts (Date : TDate; DishID : Integer ; Count : Integer);
        procedure Clear;
        procedure ActiveTables (Value : Boolean);
        public


        constructor Create (Connection : TADOConnection);
        destructor Destroy;
        procedure CreateAnalysis (FirstDate : TDateTime; DaysCount : Integer);
        procedure Save (Date : TDate; DishID : Integer ; Count : Integer);


    end;

implementation

function TAnalysisSaver.GetQuery (SQL : String) : TADOQuery;
begin
    //
    Result := TADOQuery.Create(nil);
    try
        Result.Connection := FConnection;
        Result.SQL.Text := SQL;
        Result.Open;
    except
        //
        on E : Exception do
        begin
            //
            Result.Free;
            raise Exception.Create(E.Message);
        end;
    end;
end;

constructor TAnalysisSaver.Create (Connection : TADOConnection);
begin
    //
    FConnection := Connection;
    FAnalysis := TADOTable.Create (nil);
    FAnalysis.Connection := FConnection;
    FAnalysis.TableName := '������';

    FAnalysisDish := TADOTable.Create (nil);
    FAnalysisDish.Connection := FConnection;
    FAnalysisDish.TableName := '������_�����';

    FAnalysisProduct := TADOTable.Create (nil);
    FAnalysisProduct.Connection := FConnection;
    FAnalysisProduct.TableName := '������_��������';
end;

procedure TAnalysisSaver.ActiveTables (Value : Boolean);
begin
    //
    FAnalysis.Active := Value;
    FAnalysisDish.Active := Value;
    FAnalysisProduct.Active := Value;
end;

destructor TAnalysisSaver.Destroy;
begin
    //

end;

procedure TAnalysisSaver.AddDishProducts (Date : TDate; DishID : Integer ; Count : Integer);
var
    //
    Q : TADOQuery;
    I : Integer;
    VA : array of Variant;

begin
    //
    try
        Q := GetQuery('SELECT * FROM ������_����� WHERE ���_����� = ' + IntToStr (DishID) + ';');
        for I := 1 to Q.RecordCount do
        begin
            //
            Q.RecNo := I;
            SetLength(VA, 3);
            VA[0] := Date;
            VA[1] := Q.FieldByName('���_�������').AsInteger;
            VA[2] := Q.FieldByName('���_�������').AsInteger;

            FAnalysisProduct.Filter := '���� = ' + #39 + DateToStr(Date) + #39 + ' and ���_������� = ' + IntToStr (Q.FieldByName('���_�������').AsInteger) + ' and ���_������� = ' + IntToStr (Q.FieldByName('���_�������').AsInteger);
            FAnalysisProduct.Filtered := True;

                    if FAnalysisProduct.RecordCount = 0 then
                    begin
                        FAnalysisProduct.Insert;
                        FAnalysisProduct.FieldByName ('����').AsDateTime := Date;
                        FAnalysisProduct.FieldByName ('���_�������').Value := Q.FieldByName('���_�������').AsInteger;
                        FAnalysisProduct.FieldByName ('���_�������').Value := Q.FieldByName('���_�������').AsInteger;
                        FAnalysisProduct.FieldByName ('����������').Value := Q.FieldByName('����������').AsFloat*(Count + 0.0);
                        FAnalysisProduct.Post;
                    end
                    else
                    begin
                        //
                        FAnalysisProduct.Edit;
                        FAnalysisProduct.FieldByName ('����������').AsFloat := FAnalysisProduct.FieldByName ('����������').AsFloat + Q.FieldByName('����������').AsFloat*Count;
                        FAnalysisProduct.Post;
                    end;
                end;

    finally
        //
        FAnalysisProduct.Filtered := false;
        if (Q <> nil) then Q.Free;
        SetLength(VA, 0);
    end;

end;

procedure TAnalysisSaver.Clear;
var
    //
    J : Integer;
begin
    //
    for J := FAnalysis.RecordCount downto 1 do
    begin
        //
        FAnalysis.RecNo := J;
        FAnalysis.Delete;
    end;
end;

procedure TAnalysisSaver.CreateAnalysis (FirstDate : TDateTime; DaysCount : Integer);
var
    //
    I : Integer;
begin
    //
    try
        FAnalysis.Open;
        Clear;
        for I := 0 to DaysCount - 1 do
        begin
            FAnalysis.Insert;
            FAnalysis.FieldByName ('����').Value := Int(FirstDate) + I;
            FAnalysis.Post;
        end;

    finally
        ActiveTables(false);
    end;
end;

procedure  TAnalysisSaver.Save (Date : TDate; DishID : Integer; Count : Integer);
begin
    //
    try
        ActiveTables(true);

        FAnalysisDish.Insert;
        FAnalysisDish.FieldByName ('����').AsDateTime := Date;
        FAnalysisDish.FieldByName ('���_�����').AsInteger := DishID;
        FAnalysisDish.FieldByName ('����������').AsInteger := Count;
        FAnalysisDish.Post;

        AddDishProducts (Date, DishID, Count);
    finally
        //
        ActiveTables(false);
    end;
end;





end.
