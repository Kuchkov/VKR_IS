unit uSettings;

interface

uses Classes, IniFiles, Forms, SysUtils;


type
    TSettings = class
        private
        FFileName : String;
        public
        constructor Create (FileName : String);

    end;

implementation

constructor TSettings.Create (FileName : String);
begin
    //
    FFileName := FileName;
end;



end.
