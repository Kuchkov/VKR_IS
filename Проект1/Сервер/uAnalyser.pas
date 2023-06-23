unit uAnalyser;

interface

uses Classes, DB, ADODB, SysUtils, uCommonFunctions;

type
    //
    TPoint = record
        //
        X, Y : Double;
    end;
    TAnalyserResult = array of TPoint;
    TAnalyser = class
        //
        private
        FConnection : TADOConnection;
        FK : Double;
        FB : Double;
        FDate1, FDate2 : TDateTime;
        FDefectID : Integer;
        FDaysCount : Integer;
        FData : TAnalyserResult;
        FSmoothing : TAnalyserResult;
        FTrend : TAnalyserResult;
        FResults : TAnalyserResult;
        procedure InitDataArray;
        procedure InitResultsArray;
        function GetQuery (SQL : String) : TADOQuery;
        function GetDefectCountForDate (Date : TDateTime) : Integer;
        procedure SetK (Value : Double);
        procedure SetB (Value : Double);

        public

        constructor Create (Connection : TADOConnection);
        destructor Destroy;
        procedure Analysis (DefectID : Integer; Date1, Date2 : TDateTime; DaysCount : Integer);


        property Data : TAnalyserResult read FData;
        property Smoothing : TAnalyserResult read FSmoothing;
        property Trend : TAnalyserResult read FTrend;
        property Results : TAnalyserResult read FResults;
        property DefectID : Integer read FDefectID;
        property Date1 : TDateTime read FDate1;
        property Date2 : TDateTime read FDate2;
        property DaysCount : Integer read FDaysCount;

        property K : Double read FK write SetK;
        property B : Double read FB write SetB;


    end;

implementation

procedure TAnalyser.SetK (Value : Double);
begin
    //
    if (Value <= 0) or (Value >= 1) then
    begin
        //
        raise Exception.Create('Значение параметра выходит за пределы допустимого диапазона');
    end;

    FK := Value;
end;

procedure TAnalyser.SetB (Value : Double);
begin
    //
    if (Value <= 0) or (Value >= 1) then
    begin
        //
        raise Exception.Create('Значение параметра выходит за пределы допустимого диапазона');
    end;

    FB := Value;
end;

constructor TAnalyser.Create (Connection : TADOConnection);
begin
    //
    FConnection := Connection;
    FK := 0.6;
    FB := 0.7;
end;

destructor TAnalyser.Destroy;
begin
    //
    SetLength(FData, 0);
    SetLength(FSmoothing, 0);
    SetLength(FTrend, 0);
    SetLength(FResults, 0);
end;



function TAnalyser.GetQuery (SQL : String) : TADOQuery;
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

procedure TAnalyser.Analysis (DefectID : Integer; Date1, Date2 : TDateTime; DaysCount : Integer);
begin
    //
    if (Date1 >= Date2) then
        raise Exception.Create('Дата начала периода должна быть меньше даны окончания периода');
    if (DaysCount <= 0) then
        raise Exception.Create('Прогнозируемый период должен быть больше нуля');

    FDate1 := Date1;
    FDate2 := Date2;
    FDefectID := DefectID;
    FDaysCount := DaysCount;
    InitDataArray;
    InitResultsArray;
end;

function TAnalyser.GetDefectCountForDate (Date : TDateTime) : Integer;
var
    //
    Q : TADOQuery;
    I : Integer;
begin
    //
    Result := 0;


    Q := GetQuery('SELECT COUNT(Код) AS Количество ' +
                  'FROM Заявка ' +
                  'WHERE  Дата_регистрации  >= ' + DateToAccessDate (Date) + ' and ' +
                  'Дата_регистрации  < ' + DateToAccessDate (Date + 1)  +

                  ' and Код_Неисправность = ' + IntToStr(FDefectID)
                  );

    for I := 1 to Q.RecordCount do
    begin
        //
        Q.RecNo := I;
        Result := Result + Q.FieldByName('Количество').AsInteger;
    end;
    Q.Free;
end;



procedure TAnalyser.InitDataArray;
var
    //
    I : Integer;
begin
    //
    SetLength(FData, Round (Int(FDate2 - FDate1) + 1));
    for I := 0 to Length (FData) - 1 do
    begin
        //
        FData[I].X := Int (FDate1 + I);
        FData[I].Y := GetDefectCountForDate (FData [I].X);
    end;
end;

procedure TAnalyser.InitResultsArray;
var
    //
    I : Integer;
    W : Double;
    B : Double;
    Size : Integer;
begin
    //
    W := FK;
    B := FB;

    Size := Round (Int(FDate2 - FDate1) + 1);
    SetLength(FSmoothing, Size);
    SetLength(FTrend, Size);
    SetLength(FResults, DaysCount);

    for I := 0 to Size - 1 do
    begin
        //
        FSmoothing[I].X := Round (Int(FDate1 + I));
        FSmoothing[I].Y := FData[I].Y;
        FTrend[I].X := Round (Int(FDate1 + I));
        FTrend[I].Y := 0;
    end;

    for I := 1 to Size - 1 do
    begin
        //
        FSmoothing[I].Y := W * FSmoothing[I].Y + (1 - W) * (FSmoothing[I - 1].Y + FTrend[I - 1].Y);
        FTrend[I].Y := B*(FSmoothing[I].Y - FSmoothing[I - 1].Y) + (1 - B)*FTrend[I - 1].Y;
    end;

    for I := 0 to DaysCount - 1 do
    begin
        //
        FResults [I].X := FData[Size - 1].X + I + 1;
        FResults [I].Y := FSmoothing[Size - 1].Y + (I + 1)*FTrend[Size - 1].Y;
    end;
end;



end.
