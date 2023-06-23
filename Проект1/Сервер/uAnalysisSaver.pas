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
    FAnalysis.TableName := 'Анализ';

    FAnalysisDish := TADOTable.Create (nil);
    FAnalysisDish.Connection := FConnection;
    FAnalysisDish.TableName := 'Анализ_Блюда';

    FAnalysisProduct := TADOTable.Create (nil);
    FAnalysisProduct.Connection := FConnection;
    FAnalysisProduct.TableName := 'Анализ_Продукты';
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
        Q := GetQuery('SELECT * FROM Состав_блюда WHERE Код_Блюдо = ' + IntToStr (DishID) + ';');
        for I := 1 to Q.RecordCount do
        begin
            //
            Q.RecNo := I;
            SetLength(VA, 3);
            VA[0] := Date;
            VA[1] := Q.FieldByName('Код_Продукт').AsInteger;
            VA[2] := Q.FieldByName('Код_Единица').AsInteger;

            FAnalysisProduct.Filter := 'Дата = ' + #39 + DateToStr(Date) + #39 + ' and Код_Продукт = ' + IntToStr (Q.FieldByName('Код_Продукт').AsInteger) + ' and Код_Единица = ' + IntToStr (Q.FieldByName('Код_Единица').AsInteger);
            FAnalysisProduct.Filtered := True;

                    if FAnalysisProduct.RecordCount = 0 then
                    begin
                        FAnalysisProduct.Insert;
                        FAnalysisProduct.FieldByName ('Дата').AsDateTime := Date;
                        FAnalysisProduct.FieldByName ('Код_Продукт').Value := Q.FieldByName('Код_Продукт').AsInteger;
                        FAnalysisProduct.FieldByName ('Код_Единица').Value := Q.FieldByName('Код_Единица').AsInteger;
                        FAnalysisProduct.FieldByName ('Количество').Value := Q.FieldByName('Количество').AsFloat*(Count + 0.0);
                        FAnalysisProduct.Post;
                    end
                    else
                    begin
                        //
                        FAnalysisProduct.Edit;
                        FAnalysisProduct.FieldByName ('Количество').AsFloat := FAnalysisProduct.FieldByName ('Количество').AsFloat + Q.FieldByName('Количество').AsFloat*Count;
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
            FAnalysis.FieldByName ('Дата').Value := Int(FirstDate) + I;
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
        FAnalysisDish.FieldByName ('Дата').AsDateTime := Date;
        FAnalysisDish.FieldByName ('Код_Блюдо').AsInteger := DishID;
        FAnalysisDish.FieldByName ('Количество').AsInteger := Count;
        FAnalysisDish.Post;

        AddDishProducts (Date, DishID, Count);
    finally
        //
        ActiveTables(false);
    end;
end;





end.
