unit uXMLTools;

interface
uses
  classes;

type
  tDate = tDateTime;
  tTime = tDateTime;
  sGUID = string;

type
  tManagedStringList = class(tStringlist)
  private
    vItem : Integer; 
  public
    destructor Destroy; override;
    procedure Clear; override;
    function first : TObject;
    function next : TObject;
    function current : TObject;
  end;

function IndexInString(const aSearch, aString: string; const aDelim: char =
  '|'): integer;

function DefStrToFloat(const sFloat: string; def: extended): extended;
function MyFloatToStr(aFloat: extended): string;

function DateFromXMLDateTime(const sDateTime: string): tDateTime;
function DateToXMLDatetime(aDate: tDatetime): string;

function TimeFromXMLDateTime(const sDateTime: string): tDateTime;
function TimeToXMLDateTime(aTime: tDateTime): string;

function DateTimeFromXMLDateTime(const sDateTime: string): tDateTime;
function DateTimeToXMLDateTime(FTimeStamp: tDateTime): string;

function BoolToStr(abool: boolean): string;

function DaysToWord(const s: string): integer;
function WordToDays(w: integer): string;

function Namepart(const s: string): string;
function NsName(const ns, sName: string): string;

const
  colon = ':';

implementation
uses
  SysUtils,
  Mylib;

{ tManagedStringList }

procedure tManagedStringList.Clear;
var
  i: integer;
begin
  for i := 0 to Count - 1 do
    Objects[i].Free;
  inherited;
end;

function tManagedStringList.current: TObject;
begin
   if (vItem >=0) and ( vItem < self.Count ) then
     result := Self.Objects[vitem]
   else
     result := nil;
end;

destructor tManagedStringList.Destroy;
begin
  Clear;
  inherited;
end;

{ Utilities }

function IndexInString(const aSearch, aString: string; const aDelim: char =
  '|'): integer;
var
  i, k: integer;
begin
  result := -1;
  i := pos(aDelim + aSearch + aDelim, aString);
  if i > 0 then
  begin
    for k := 1 to i do
      if aString[k] = aDelim then
        inc(result);
  end;
end;

function DefStrToFloat(const sFloat: string; def: extended): extended;
var
  s: string;
begin
  s := ReplaceStr(sFloat, '.', DecimalSeparator);
  try
    result := StrToFloat(s);
  except
    result := def;
  end;
end;

function MyFloatToStr(aFloat: extended): string;
begin
  result := Format('%f', [aFloat]);
  result := ReplaceStr(result, DecimalSeparator, '.');
end;

function DateFromXMLDateTime(const sDateTime: string): tDateTime;
var
  year, month, day: word;
begin
  DecodeDate(Date, year, month, day);
  // _______1...5....0....5....0....5....0...____________
  // format 1970-01-01T00:00:00.0000000+01:00
  year := StrToIntDef(copy(sDateTime, 1, 4), year);
  month := StrToIntDef(copy(sDateTime, 6, 2), month);
  day := StrToIntDef(copy(sDateTime, 9, 2), day);
  try
    result := EncodeDate(year, month, day)
  except
    result := Date;
  end;
end;

function DateToXMLDatetime(aDate: tDatetime): string;
begin
  result := FormatDateTime('yyyy-mm-dd', aDate);
end;

function TimeFromXMLDateTime(const sDateTime: string): tDateTime;
var
  hour, min, sec, msec: word;
begin
  DecodeTime(Time, hour, min, sec, msec);
  // _______1...5....0....5....0....5....0...____________
  // format 1970-01-01T00:00:00.0000000+01:00
  hour := StrToIntDef(copy(sDateTime, 12, 2), hour);
  min := StrToIntDef(copy(sDateTime, 15, 2), min);
  sec := StrToIntDef(copy(sDateTime, 18, 2), sec);
  try
    result := EncodeTime(hour, min, sec, msec)
  except
    result := Time;
  end;
end;

function TimeToXMLDateTime(aTime: tDateTime): string;
begin
  result := FormatDateTime('yyyy-mm-dd"T"hh:nn:ss', aTime);
end;

function DateTimeFromXMLDateTime(const sDateTime: string): tDateTime;
begin
  result := DateFromXMLDateTime(sDateTime) + TimeFromXMLDateTime(sDateTime);
end;

function DateTimeToXMLDateTime(FTimeStamp: tDateTime): string;
begin
  result := FormatDateTime('yyyy-mm-dd"T"hh:nn:ss', FTimeStamp);
end;

function BoolToStr(abool: boolean): string;
begin
  if abool then
    result := 'true'
  else
    result := 'false';
end;

function DaysToWord(const s: string): integer;
begin
  result := 0;
  if pos('mon', s) > 0 then
    result := result or 1;
  if pos('tue', s) > 0 then
    result := result or 2;
  if pos('wed', s) > 0 then
    result := result or 4;
  if pos('thu', s) > 0 then
    result := result or 8;
  if pos('fri', s) > 0 then
    result := result or 16;
  if pos('sat', s) > 0 then
    result := result or 32;
  if pos('sun', s) > 0 then
    result := result or 64;
end;

function WordToDays(w: integer): string;
begin
  result := '';
  if (w <> 0000) and (w <> $007F) then
  begin
    if (w and 1) <> 0 then
      result := result + 'Mo';
    if (w and 2) <> 0 then
      result := result + 'Tu';
    if (w and 4) <> 0 then
      result := result + 'We';
    if (w and 8) <> 0 then
      result := result + 'Th';
    if (w and 16) <> 0 then
      result := result + 'Fr';
    if (w and 32) <> 0 then
      result := result + 'Sa';
    if (w and 64) <> 0 then
      result := result + 'Su';
    result := '(' + result + ')';
  end;
end;

function NamePart(const s: string): string;
var
  p: integer;
begin
  p := pos(colon, s);
  if p = 0 then
    result := s
  else
    result := copy(s, p + 1, length(s));
end;

function NsName(const ns, sName: string): string;
begin
  if ns = '' then
    result := sName
  else
    result := ns + colon + sName;
end;

function tManagedStringList.first: TObject;
begin
  vItem := 0;
  result := self.current;
end;

function tManagedStringList.next: TObject;
begin
  if vItem < self.count then
  begin
    Inc(vItem);
    Result := Self.current;
  end
  else
    Result := nil;
end;

end.

