unit mylib;
{$DEFINE NO_DEBUG}
{ the Delphi 5 Version }
interface
uses
  Windows,
  SysUtils;

const
  STX = #2;
  ETX = #3;
  CR = #13;
  TAB = #9;
  LF = #10;
  FF = #12;
  CRLF = CR + LF;
  ESC = #27;
  QUOTA = #$27; // einzelnes Hochkomma
  DQUOTA = #$22; // doppelte Anführungszeichen
  HASH = '#';
  semi = ';';
  komma = ',';
const
  TIME_ZONE_ID_UNKNOWN = 0;
  TIME_ZONE_ID_STANDARD = 1;
  TIME_ZONE_ID_DAYLIGHT = 2;
const
  manual_reset = true;
  auto_reset = false;
const
  MinutesPerDay = 24 * 60;
  _1_hour = 1 / 24;
  _1_sec = 1 / SecsPerDay;
  _1_min = 1 / MinutesPerDay;
  _1_ms = _1_sec / 1000;

  _1_k = 1024;
  _1_M = _1_k * _1_k;
  _1_G = _1_k * _1_M;

  { math. Functions }
function imin(i1, i2: integer): integer;
function imax(i1, i2: integer): integer;
{ String-Functions }
function trimlen(const s: string): integer;

procedure SplitString(var source, dest: string);
function StrSplit(var S: string): string;
function CmdSplit(var S: string; c: char): string;
function CmdSplitBuff(Buffer: pChar; ch: char): string;
function DelimSplit(var s: string; const delim: string): string;
function CommSubStr(const s, kenn: string): string;
function CommSubStrDef(const s, kenn, default: string): string;
function CommSubInt(const s, kenn: string; default: integer): integer;
function CommSubHex(const s, kenn: string; default: integer): integer;
function CommSubDate(const s, Kenn: string): TDateTime;
function CommSubTime(const s, Kenn: string): TDateTime;
function CommSubBool(const s, kenn: string; default: boolean): boolean;
function CommSubReplace(const s, kenn, news: string): string;
function CommEncode(const source: string): string;
function CommDecode(const source: string): string;

function hex2(by: byte): string;
function hex4(wd: integer): string;
function hex8(lo: LongInt): string;
function hex(var buff; len: integer): string;
function HexStrToBuffer(const s: string; var buff): integer;
procedure InvHex(const s: string; var buff; len: integer);
function IsNum(const aNum: string): boolean;

procedure Str2Ch(str: string; var Buff; len: integer);

function GetActTimeCode: Int64;
function Unique: string;

// get the temp directory name
function sGetTempPath: string;
// make a temp file in specified directory with specified prefix
function MakeTempFileName(const sPath, sPrefix: string): string;
// make a temp file in current directory
function TempFileName: string;
// Make a temp file in Temp directory
function sGetTempFile: string;

function Days_in_Month(year, month: word): integer;

function DiskInDrive(Drive: char): boolean;
function GetNetworkUserName: string;
function GetComputerNameStr: string;

function CompressedDate(const s: string): string;
function CompressedTime(const s: string): string;
function DeCompressedDate(const s: string): string;
function DeCompressedTime(const s: string): string;
function FileTimeToDateTime(var aFileTime: tFILETIME): tDateTime;
function CompStrToDate(s: string): tDateTime;
function CompStrToTime(s: string): tDateTime;
function FromCompressedDateTime(yyyymmddhhnnss: string): tDateTime;

function RFCToDate(sRFC: string; var sDate: string): boolean;
function RFCToTime(sRFC: string; var sTime: string): boolean;
function DateTimeToRFC(sDate, sTime: string; var sRFC: string): boolean;
function DateTimetoRFCLang(sDate, sTime, sMonths, sDays: string;
  var sRFC: string): boolean;
function sDateTimeToRFC(sDate, sTime: string): string;

procedure StrReplaceC(var s: string; ch1, ch2: char);
procedure StrReplace(var s: string; const rem, ins: string);
function ReplaceStr(const s, rem, inst: string): string;
procedure StrRemoveC(var s: string; ch1: char);

function PadRw(const s: string; len: integer; c: char): string;
function PadLw(const s: string; len: integer; c: char): string;
function PadR(const s: string; len: integer): string;
function PadL(const s: string; len: integer): string;

function DayOfYear(year, month, day: WORD): INTEGER;
function KalenderWoche(d: tDateTime): integer;
function JaNein(b: boolean): string;
function OkStr(ok: boolean): string;

function TranslateCtrlChars(const input: string): string;
function GetMachineName: string;

function sGetCDRom: string;
function ProgramFilesDir: string;
function WinDir: string;
function SysDir: string;
function GetModuleName: string;
function FileExistsEx(const sPath: string; var found: boolean): string;
function SetFileDate(TheFileName: string; aDate: TDateTime): boolean;
function LowCase(ch: char): char;
function LastPos(ch: char; const s: string): integer;

function CompressedTimeToTime(const compTime: string): tDateTime;
function CompressedDateToDate(const compdate: string): tDatetime;
function IsTimeBetween(von, bis: tDateTime): boolean;

implementation
uses
  Registry;

const
  MonthNames = 'jan,feb,mar,apr,may,jun,jul,aug,sep,oct,nov,dec';

  {--------------------------------------------------------------------}

function imin(i1, i2: integer): integer;
begin
  if (i1 > i2) then
    imin := i2
  else
    imin := i1;
end;
{--------------------------------------------------------------------}

function imax(i1, i2: integer): integer;
begin
  if (i1 > i2) then
    imax := i1
  else
    imax := i2;
end;
{--------------------------------------------------------------------}

function trimlen(const s: string): integer;
var
  l: integer;
begin
  l := length(s);
  while (l > 0) and (s[l] = ' ') do
    dec(l);
  trimlen := l;
end;
{--------------------------------------------------------------------}

procedure SplitString(var source, dest: string);
var
  i: integer;
  blank: boolean;
begin
  source := TrimLeft(source);
  i := 0;
  while i < length(source) do
  begin
    inc(i);
    if (source[i] = ' ') or (source[i] = ',') then
    begin
      blank := source[i] = ' ';
      dest := copy(source, 1, pred(i));
      delete(source, 1, i);
      source := TrimLeft(source);
      if blank and (length(source) > 0) and (source[1] = ',') then
        delete(source, 1, 1);
      exit;
    end;
  end;
  dest := source;
  source := '';
end;
{------------------------------------------------------------------}

function StrSplit(var S: string): string;
var
  d: string;
begin
  SplitString(s, d);
  StrSplit := d;
end;
{--------------------------------------------------------------------}

function CmdSplit(var S: string; c: char): string;
var
  i: integer;
begin
  i := pos(c, s);
  if i = 0 then
  begin
    result := s;
    s := '';
  end
  else
  begin
    result := copy(s, 1, i - 1);
    if i < length(s) then
      s := copy(s, i + 1, length(s) - i)
    else
      s := '';
  end;
end;

function CmdSplitBuff(Buffer: pChar; ch: char): string;
var
  pc: pChar;
  len: Cardinal;
begin
  pc := StrScan(Buffer, ch);
  if pc = nil then
    result := ''
  else
  begin
    len := pc - buffer;
    SetString(result, buffer, len);
    StrMove(buffer, pc + 1, StrLen(pc + 1) + 1);
  end;
end;

{--------------------------------------------------------------------}

function DelimSplit(var s: string; const delim: string): string;
var
  i, p: integer;
begin
  for i := 1 to length(s) do
  begin
    p := pos(s[i], delim);
    if p > 0 then
    begin
      result := copy(s, 1, i - 1);
      if i < length(s) then
        s := copy(s, i + 1, length(s) - i)
      else
        s := '';
      exit;
    end;
  end;
  // no delimiter found
  result := s;
  s := '';
end;
{--------------------------------------------------------------------}

function hex2(by: byte): string;
const
  hstr: array[0..15] of char = '0123456789ABCDEF';
begin
  hex2 := hstr[by shr 4] + hstr[by and $0F];
end;
{--------------------------------------------------------------------}

function hex4(wd: integer): string;
begin
  hex4 := hex2(hi(wd)) + hex2(lo(wd));
end;
{--------------------------------------------------------------------}

function hex8(lo: LongInt): string;
type
  lrec = record loword, hiword: word;
  end;
begin
  hex8 := hex4(lrec(lo).hiword) +
    hex4(lrec(lo).loword);
end;

function hex(var buff; len: integer): string;
var
  buffer: array[1..2] of byte absolute buff;
  i: integer;
begin
  result := '';
  for i := 1 to len do
    result := result + hex2(buffer[i]);
end;

function HexStrToBuffer(const s: string; var buff): integer;
var
  buffer: array[0..1] of byte absolute buff;
  i: integer;
  len: integer;
begin
  result := 0;
  len := (length(s) div 2);
  for i := 0 to len - 1 do
  begin
    buffer[i] := StrToIntDef('$' + copy(s, 1 + i * 2, 2), 0);
    inc(result);
  end;
end;

procedure InvHex(const s: string; var buff; len: integer);
var
  buffer: array[0..1] of byte absolute buff;
  i: integer;
begin
  FillChar(buff, len, 0);
  len := imin(len, length(s) div 2);
  for i := 0 to len - 1 do
    buffer[i] := StrToIntDef('$' + copy(s, 1 + i * 2, 2), 0);
end;
{--------------------------------------------------------------------}

function GetActTimeCode: Int64;
var
  lpSystemtime: tSystemTime;
  lpFiletime: tFiletime;
begin
  GetLocalTime(lpSystemtime);
  SystemTimeToFileTime(lpSystemTime, lpFileTime);
  GetActTimeCode := Int64(lpFileTime);
end;
{--------------------------------------------------------------------}

function Unique: string;
var
  l: longInt;
begin
  l := GetActTimeCode;
  Unique := hex8(l);
end;
{--------------------------------------------------------------------}
// get the temp directory name

function sGetTempPath: string;
var
  buffer: array[0..MAX_PATH] of char;
begin
  GetTempPath(SizeOf(Buffer), buffer);
  result := buffer;
end;

// make a temp file in specified directory with specified prefix

function MakeTempFileName(const sPath, sPrefix: string): string;
var
  res: array[0..MAX_PATH] of char;
begin
  GetTempFileName(pChar(sPath), pChar(sPrefix), 0, res);
  Result := StrPas(res);
end;

// make a temp file in current directory

function TempFileName: string;
begin
  Result := MakeTempFileName('.', 'tmp');
end;

// Make a temp file in Temp directory

function sGetTempFile: string;
begin
  result := MakeTempFileName(sGetTempPath, 'fcv');
end;

{--------------------------------------------------------------------}

procedure Str2Ch(str: string; var Buff; len: integer);
var
  block: array[1..255] of char absolute buff;
  l: integer;
begin
  l := length(str);
  if len < l then
    l := len;
  move(str[1], block, l);
  if l < len then
    FillChar(block[succ(l)], len - l, #32);
end;

function Days_in_Month(year, month: word): integer;
const
  Day_Table: array[1..12] of byte = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30,
    31);
const
  Februar = 2;
var
  SchaltJahr: boolean;
begin
  if month = 0 then
    result := 31
  else if month <> Februar then
    result := Day_Table[month]
  else { Februar }
  begin
    SchaltJahr := (((year and 3) = 0) and ((year mod 100) <> 0))
      or ((year mod 1000) = 0);
    if SchaltJahr then
      result := 29
    else
      result := 28;
  end;
end;

function DiskInDrive(Drive: char): boolean;
var
  ErrorMode: word;
begin
  if Drive in ['a'..'z'] then
    dec(Drive, $20);
  if not (Drive in ['A'..'Z']) then
    raise EConvertError.Create('Not a valid drive ID');
  ErrorMode := SetErrorMode(SEM_FailCriticalErrors);
  try
    if DiskSize(Ord(Drive) - $40) = -1 then
      result := false
    else
      result := true;
  finally
    SetErrorMode(ErrorMode);
  end;
end;

function GetNetWorkUserName: string;
var
  buffer: array[0..128] of char;
  l: dword;
begin
  l := SizeOf(buffer);
  GetUserName(buffer, l);
  if l > 0 then
    result := StrPas(buffer)
  else
    result := 'GUEST';
end;

function GetComputerNameStr: string;
var
  buffer: array[0..MAX_COMPUTERNAME_LENGTH] of char;
  l: dword;
begin
  l := SizeOf(buffer);
  GetComputerName(buffer, l);
  if l > 0 then
    result := StrPas(buffer)
  else
    result := '';
end;

function CompressedDate(const s: string): string;
begin
  if pos('.', s) > 0 then {// format assumed : "dd.mm.yyyy"}
  begin //                   1234567890
    //               yyyy        mm          dd
    result := copy(s, 7, 4) + copy(s, 4, 2) + copy(s, 1, 2);
  end
  else // assuming already compressed
    result := s;
end;

function DeCompressedDate(const s: string): string;
begin
  if pos('.', s) = 0 then
  begin //                   12345678
    if length(s) = 8 then // format assumed : "yyyymmdd"
      //               dd              mm              yyyy
      result := copy(s, 7, 2) + '.' + copy(s, 5, 2) + '.' + copy(s, 1, 4)
    else if length(s) = 6 then // format assumed: "yymmdd"
      result := copy(s, 5, 2) + '.' + copy(s, 3, 2) + '.' + copy(s, 1, 2)
    else // wrong format -> do not touch
      result := s;
  end
  else // assuming already decompressed
    result := s;
end;

function CompressedTime(const s: string): string;
begin
  if (pos(':', s) > 0)
    or (pos('.', s) > 0) then {// format assumed: "hh:mm:ss"}
  begin //                  12345678
    //               hh          mm          ss
    result := copy(s, 1, 2) + copy(s, 4, 2) + copy(s, 7, 2);
  end
  else
    result := s;
end;

function Decompressedtime(const s: string): string;
begin
  if (pos(':', s) = 0)
    and (pos('.', s) = 0) then {// format assumed: "hhmmss"}
  begin //                  123456
    //               hh              mm              ss
    result := copy(s, 1, 2) + ':' + copy(s, 3, 2) + ':' + copy(s, 5, 2);
  end
  else
    result := s;
end;

// ==========================================================================

function CompStrToDate(s: string): tDateTime;
var
  yyyy, mm, dd: word;
begin
  yyyy := StrToIntDef(copy(s, 1, 4), 0);
  mm := StrToIntDef(copy(s, 5, 2), 0);
  dd := StrToIntDef(copy(s, 7, 2), 0);
  try
    result := EncodeDate(yyyy, mm, dd);
  except
    result := 0;
  end;
end;

// ==========================================================================

function CompStrToTime(s: string): tDateTime;
var
  hh, mm, ss: word;
begin
  hh := StrToIntDef(copy(s, 1, 2), 0);
  mm := StrToIntDef(copy(s, 3, 2), 0);
  ss := StrToIntDef(copy(s, 5, 2), 0);
  try
    result := EncodeTime(hh, mm, ss, 0);
  except
    result := 0;
  end;
end;

function FromCompressedDateTime(yyyymmddhhnnss: string): tDateTime;
var
  y, m, d: word;
  h, n, s: word;
begin
  y := StrToInt(copy(yyyymmddhhnnss, 1, 4)); // [YYYY]mmddhhnnss
  m := StrToInt(copy(yyyymmddhhnnss, 5, 2)); // yyyy[MM]ddhhnnss
  d := StrToInt(copy(yyyymmddhhnnss, 7, 2)); // yyyymm[DD]hhnnss
  result := EncodeDate(y, m, d);
  h := StrToInt(copy(yyyymmddhhnnss, 9, 2)); // yyyymmdd[HH]nnss
  n := StrToInt(copy(yyyymmddhhnnss, 11, 2)); // yyyymmddhh[NN]ss
  s := StrToInt(copy(yyyymmddhhnnss, 13, 2)); // yyyymmddhhnn[SS]
  result := result + EncodeTime(h, n, s, 0);
end;

{ tausche alle Vorkommen des Zeichens 'ch1' gegen das Zeichen 'ch2' im }
{ String 's' aus                                                       }

procedure StrReplaceC(var s: string; ch1, ch2: char);
var
  i: integer;
begin
  if ch1 <> ch2 then
    for i := 1 to length(s) do
      if s[i] = ch1 then
        s[i] := ch2;
end;

{ tausche alle Vorkommen des Strings 'rem' gegen den String 'ins' im }
{ String 's' aus                                                     }

procedure StrReplace(var s: string; const rem, ins: string);
var
  i: integer;
  doInst: boolean;
begin
  doInst := Length(ins) > 0;
  if pos(rem, ins) = 0 then // may not insert what was deleted
    repeat
      i := pos(rem, s);
      if i > 0 then
      begin
        system.delete(s, i, length(rem));
        if doInst then
          system.insert(ins, s, i);
      end;
    until i = 0;
end;

function ReplaceStr(const s, rem, inst: string): string;
begin
  result := s;
  StrReplace(result, rem, inst);
end;

{ loesche alle Vorkommen des Zeichens 'ch1' im String 's' }

procedure StrRemoveC(var s: string; ch1: char);
var
  i: integer;
begin
  repeat
    i := pos(ch1, s);
    if i > 0 then
      system.delete(s, i, 1);
  until i = 0;
end;

{ wandle das Datum/Zeit-Feld des SMTP-Protokolls in einen kompressed Date-String }

function RFCToDate(sRFC: string; var sDate: string): boolean;
var
  nDay: Integer;
  nMonth: Integer;
  nYear: integer;
  sDay: string;
  sMonth: string;
begin
  RFCToDate := FALSE;

  { delete day of week }
  delete(sRFC, 1, pos(',', sRFC));

  { get day }
  sDay := StrSplit(sRFC);
  nDay := strtointdef(sDay, 0);
  if nDay = 0 then // maybe month first
  begin
    sMonth := sDay;
    sDay := StrSplit(sRFC);
  end
  else
    sMonth := StrSplit(sRFC);

  nDay := strtointdef(sDay, 0);
  if nDay <> 0 then
    if nDay < 10 then
      sDate := '0' + IntToStr(nDay)
    else
      sDate := inttostr(nDay)
  else
    exit;

  { get month }
  nMonth := pos(lowercase(sMonth), MonthNames);

  if nMonth <> 0 then
    nMonth := (nMonth shr 2) + 1
  else
    exit;

  if nMonth < 10 then
    sDate := '0' + inttostr(nMonth) + sDate
  else
    sDate := inttostr(nMonth) + sDate;

  { get year }
  nYear := strtointdef(StrSplit(sRFC), 0);
  if nYear > 0 then
  begin
    if nYear < 100 then
    begin
      if nYear > 80 then
        nYear := nYear + 1900
      else
        nYear := nYear + 2000;
    end;

    sDate := inttostr(nYear) + sDate
  end
  else
    exit;

  RFCToDate := true;
end;

{ wandle das DATE-Feld des SMTP-Protokolls in einen kompressed Time-String }

function RFCToTime(sRFC: string; var sTime: string): boolean;
begin
  { delete day of week }
  delete(sRFC, 1, pos(',', sRFC));

  { delete day }
  StrSplit(sRFC);
  { delete month }
  StrSplit(sRFC);
  { delete year }
  StrSplit(sRFC);

  { mindestens hh:mm sind angegeben }
  sTime := CompressedTime(StrSplit(sRFC));
  if length(sTime) = 4 then
    sTime := sTime + '00';

  RFCToTime := (sTime <> '');
end;

{ wandelt das Datum 'yyyymmdd' und die Zeit 'hhmmss' in einen String für }
{ das DATE-Feld des SMTP-Protokolls }

function DateTimetoRFCLang(sDate, sTime, sMonths, sDays: string;
  var sRFC: string): boolean;
var
  nYear, nMonth, nDay: Word;
  nDOW: Integer;
  TZInfo: tTimeZoneInformation;
  TZ: dWord;
  nTZDiff: Integer;
  sTZDiff: string;

begin
  DateTimeToRFCLang := FALSE;

  { get year, month and day of date }
  nYear := strtointdef(copy(sDate, 1, 4), 0);
  nMonth := strtointdef(copy(sDate, 5, 2), 0);
  nDay := strtointdef(copy(sDate, 7, 2), 0);

  { if date is not correct, exit }
  if (nYear = 0) or (nMonth = 0) or (nDay = 0) then
    exit;

  { get day of week }
  nDOW := DayOfWeek(EncodeDate(nYear, nMonth, nDay));

  TZ := GetTimeZoneInformation(TZInfo);
  nTZDiff := TZInfo.BIAS;

  case TZ of
    Time_Zone_ID_STANDARD: inc(nTZDiff, TZInfo.StandardBias);
    Time_Zone_ID_DAYLIGHT: inc(nTZDiff, TZInfo.DaylightBias);
  end;

  if nTZDiff < 0 then
  begin
    nTZDiff := -nTZDiff;
    sTZDiff := '+';
  end
  else
    sTZDiff := '-';

  sTZDiff := sTZDiff + format('%2.2d%2.2d', [nTZDiff div 60, nTZDiff mod 60]);

  { build RFC-string }
  sRFC := copy(sDays, (nDow - 1) * 4 + 1, 3) { start with day of week }
  + ', ' + copy(sDate, 7, 2) { append day }
  + ' ' + copy(sMonths, (nMonth - 1) * 4 + 1, 3) { append month }
  + ' ' + copy(sDate, 1, 4) { append year }
  + ' ' + copy(sTime, 1, 2) { append hour }
  + ':' + copy(sTime, 3, 2) { append minute }
  + ':' + copy(sTime, 5, 2) { append second }
  + ' ' + sTZDiff; { append time zone}

  DateTimeToRFCLang := TRUE;
end;

function DateTimeToRFC(sDate, sTime: string; var sRFC: string): boolean;
begin
  if DateTimeToRFCLang(sDate, sTime,
    'Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec',
    'Sun,Mon,Tue,Wed,Thu,Fri,Sat',
    sRFC) then
  begin
    DateTimeToRFC := TRUE;
    delete(sRFC, 1, pos(',', sRFC));
    sRFC := trim(sRFC);
  end
  else
    DateTimeToRFC := false;
end;

function sDateTimeToRFC(sDate, sTime: string): string;
var
  sDTTRFC: string;
begin
  if DateTimeToRFC(sDate, sTime, sDTTRFC) then
    result := sDTTRFC
  else
    result := sDate + ' ' + sTime;
end;

function CommSubStr(const s, kenn: string): string;
var
  s0: string;
  i_k: integer;
  l_k: integer;
  l_s: integer;
  p_end: integer;
  p_start: integer;
begin
  result := '';
  i_k := pos(kenn, s); { Find <Kennung> in string          }
  if i_k > 0 then
  begin
    l_k := length(kenn);
    l_s := length(s);
    p_start := i_k + l_k; // position behind Kennung
    p_end := p_start;
    while p_end <= l_s do
      if s[p_end] <> '|' then
        inc(p_end)
      else
        break;
    result := copy(s, p_start, p_end - p_start);
    (*
    s0 := copy(s, i + k, length(s)); { copy substring behind <Kennung>   }
    result := CmdSplit(s0, '|'); { .. split till next fieldseparator }
    *)
  end;
end;

function CommSubStrDef(const s, kenn, default: string): string;
begin
  result := CommSubStr(s, kenn);
  if result = '' then
    result := default;
end;

function CommSubReplace(const s, kenn, news: string): string;
var
  iStart: integer;
  iEnd: integer;
begin
  iStart := pos(kenn, s);
  if iStart = 0 then
    result := s + kenn + news
  else
  begin
    result := s;
    iEnd := iStart + length(kenn);
    while (iEnd <= length(result)) and (result[iEnd] <> '|') do
      inc(iEnd);
    // iStart zeigt auf das erste, iEnd zeigt auf das hintere PIPE
    // wir löschen das erste pipe und die daten und belassen das hintere pipe
    system.Delete(result, iStart, iEnd - iStart);
    if length(news) > 0 then
      system.Insert(kenn + news, result, iStart);
  end;
end;

function CommSubInt(const s, kenn: string; default: integer): integer;
begin
  result := StrToIntDef(CommSubStr(s, kenn), default);
end;

function CommSubHex(const s, kenn: string; default: integer): integer;
begin
  result := StrToIntDef('$' + CommSubStr(s, kenn), default);
end;

function CommSubDate(const s, Kenn: string): TDateTime;
var
  s0: string;
  y, m, d: word;
  l: longint;
begin
  s0 := CommSubStr(s, kenn);
  try
    l := StrToIntDef(s0, -1);
    if l > 0 then // assume compressed date (jjjjmmdd)
    begin
      y := StrToInt(copy(s0, 1, 4));
      m := StrToInt(copy(s0, 5, 2));
      d := StrToInt(copy(s0, 7, 2));
      result := EncodeDate(y, m, d);
    end
    else
      result := StrToDate(s0);
  except
    result := Date;
  end; // try - except
end;

function CommSubTime(const s, Kenn: string): TDateTime;
var
  s0: string;
begin
  s0 := CommSubStr(s, kenn);
  if pos(':', s0) = 0 then // assume compressed time (hhmmss)
    s0 := copy(s0, 1, 2) + ':' + copy(s0, 3, 2) + ':' + copy(s0, 5, 2);
  try
    result := StrToTime(s0);
  except
    result := Time;
  end;
end;

function CommSubBool(const s, kenn: string; default: boolean): boolean;
var
  s0: string;
begin
  s0 := uppercase(CommSubStr(s, kenn));
  if s0 = '' then
    result := default
  else
  begin
    if (s0 = 'Y') or (s0 = '1') or (s0 = 'TRUE') or (s0 = 'YES') then
      result := true
    else
      result := false;
  end;
end;

function CommEncode(const source: string): string;
begin
  result := StringReplace(source, '|', '\', [rfReplaceAll]);
end;

function CommDecode(const source: string): string;
begin
  result := StringReplace(source, '\', '|', [rfReplaceAll]);
end;

function FileTimeToDateTime(var aFileTime: tFILETIME): tDateTime;
var
  ft: tFILETIME;
  st: tSYSTEMTIME;
begin
  FileTimeToLocalFileTime(aFileTime, ft);
  FileTimeToSystemtime(ft, st);
  result := EncodeDate(st.wYear, st.wMonth, st.wDay)
    + EncodeTime(st.wHour, st.wMinute, st.wSecond, st.wMilliseconds);
end;

function PadRw(const s: string; len: integer; c: char): string;
begin
  result := s;
  while length(result) < len do
    result := result + c;
end;

function PadR(const s: string; len: integer): string;
begin
  result := PadRw(s, len, ' ');
end;

function PadLw(const s: string; len: integer; c: char): string;
begin
  result := s;
  while length(result) < len do
    result := c + result;
end;

function PadL(const s: string; len: integer): string;
begin
  result := PadLw(s, len, ' ');
end;

function DayOfYear(year, month, day: WORD): INTEGER;
// Berechnung des Tages im Jahr
// ----------------------------
// Diese Methode gilt fuer alle Jahre ab 1582, der Einführung des
// gregorianischen Kalenders.
var
  i, tage: Integer;
begin
  tage := 0;
  for i := 1 to Pred(month) do
    Inc(tage, Days_In_Month(year, i));
  Inc(tage, day);
  DayOfYear := tage;
end;

function KalenderWoche(d: tDateTime): integer;
var
  day, month, year: word;
  // Berechnung der Kalenderwoche
  // ----------------------------

  // Die Woche 1 ist die Woche, die den ersten Donnerstag des Jahres
  // enthaelt, also mehr als die Haelfte diesem Jahr angehoert.
  // Ist der 01.01. ein Mo-Mi, dann liegt der 01.01. in der letzten
  // Woche des vergangenen Jahres. (DIN 1355)
const
  table1: array[1..7] of ShortInt = (-1, 0, 1, 2, 3, -3, -2);
  table2: array[1..7] of ShortInt = (-4, 2, 1, 0, -1, -2, -3);
var
  doy1,
    doy2: INTEGER;
begin
  DecodeDate(d, Year, Month, Day);

  doy1 := DayofYear(Year, Month, Day) + table1[DayOfWeek(EncodeDate(Year, 1,
    1))];
  doy2 := DayofYear(Year, Month, Day) + table2[DayOfWeek(EncodeDate(Year, Month,
    Day))];
  if doy1 <= 0 then
    result := KalenderWoche(EncodeDate(Year - 1, 12, 31))
  else if doy2 >= DayofYear(Year, 12, 31) then
    result := 1
  else
    result := (doy1 - 1) div 7 + 1;
end;

function JaNein(b: boolean): string;
begin
  if b then
    result := 'Ja'
  else
    result := 'Nein';
end;

function OkStr(ok: boolean): string;
begin
  if ok then
    result := 'Ok'
  else
    result := 'Failed';
end;

const
  ctrlChars: array[0..$1F] of string[5] =
  ('<NUL>', '<SOH>', '<STX>', '<ETX>', '<EOT>', '<ENQ>', '<ACK>', '<BEL>',
    '<BS>', '<HT>', '<LF>', '<VT>', '<FF>', '<CR>', '<SO>', '<SI>',
    '<DLE>', '<DC1>', '<DC2>', '<DC3>', '<DC4>', '<NAK>', '<SYN>', '<ETB>',
    '<CAN>', '<EM>', '<SUB>', '<ESC>', '<FS>', '<GS>', '<RS>', '<US>');

function TranslateCtrlChars(const input: string): string;
var
  i: integer;
  c: integer;
begin
  result := input;
  for i := length(input) downto 1 do
  begin
    c := ord(result[i]);
    if (c < $20) then
    begin
      system.delete(result, i, 1);
      system.insert(ctrlchars[c], result, i);
    end
    else if (c > $7F) then
    begin
      system.delete(result, i, 1);
      system.Insert('<0x' + inttohex(c, 2) + '>', result, i);
    end;
  end;
end;

function GetMachineName: string;
var
  buff: array[0..MAX_COMPUTERNAME_LENGTH + 1] of char;
  l: Cardinal;
begin
  l := Sizeof(Buff);
  GetComputerName(buff, l);
  result := StrPas(buff);
end;

function sGetCDRom: string;
var
  drvs: LongInt;
  i: integer;
  dt: longint;

  function DriveType(d: char): integer;
  var
    s: string;
  begin
    s := d + ':\';
    result := GetDriveType(pChar(s));
  end;

begin // Function sGetCDRom:string
  drvs := GetLogicalDrives;
  i := 0;
  while i < 32 do
  begin
    if ((drvs and (1 shl i)) <> 0) then
    begin
      dt := DriveType(char(i + ord('A')));
      if dt = DRIVE_CDROM then
      begin
        result := char(i + ord('A'));
        exit;
      end;
    end;
    inc(i);
  end;
  result := '';
end;

function ProgramFilesDir: string;
var
  reg: TRegistry;
begin
  reg := TRegistry.Create;
  try
    reg.RootKey := HKEY_LOCAL_MACHINE;
    reg.OpenKey('SOFTWARE\Microsoft\Windows\CurrentVersion', false);
    result := IncludeTrailingBackslash(reg.ReadString('ProgramFilesDir'));
  finally
    reg.free;
  end;
end;

function WinDir: string;
var
  dir: array[0..MAX_PATH] of Char;
begin
  GetWindowsDirectory(dir, MAX_PATH);
  Result := StrPas(dir);
end;

function SysDir: string;
var
  buffer: array[0..max_path] of char;
begin
  GetSystemDirectory(buffer, sizeof(buffer));
  result := StrPas(buffer);
end;

function GetModuleName: string;
var
  ModName: array[0..MAX_PATH] of Char;
begin
  SetString(Result, ModName,
    Windows.GetModuleFileName(HInstance, ModName, SizeOf(ModName)));
end;

// ==========================================================================

function FileExistsEx(const sPath: string; var found: boolean): string;
var
  sr: tSearchRec;
  ierr: integer;
begin
  result := '';
  found := false;
  ierr := FindFirst(sPath, faAnyfile, sr);
  if ierr = 0 then
  begin
    found := true;
    result := sr.Name;
  end;
  FindClose(sr);
end;

function SetFileDate(TheFileName: string; aDate: TDateTime): boolean;
var
  f: Integer;
  res: integer;
begin { SetFileDate }
  result := false;
  f := FileOpen(TheFileName, fmOpenReadWrite);
  try
    res := FileSetDate(f, DateTimeToFileDate(aDate));
    result := res = 0;
  finally
    FileClose(f)
  end { try }
end; //  SetFileDate

function lowCase(ch: char): char;
begin
  if ch in ['A'..'Z'] then
    lowCase := char(ord(ch) + $20)
  else
    lowCase := ch;
end;

function LastPos(ch: char; const s: string): integer;
begin
  // reverse of pos function
  result := length(s);
  while (result > 0) and (s[result] <> ch) do
    dec(result);
end;

function CompressedTimeToTime(const compTime: string): tDateTime;
var
  s0: string;
begin
  s0 := compTime;
  if pos(':', compTime) = 0 then // assume compressed time (hhmmss)
    s0 := copy(compTime, 1, 2) + ':' + copy(s0, 3, 2) + ':' + copy(s0, 5, 2);
  try
    result := StrToTime(s0);
  except
    result := Time;
  end;
end;

function CompressedDateToDate(const compdate: string): tDatetime;
var
  l: integer;
  y, m, d: word;
begin
  try
    l := StrToIntDef(compdate, -1);
    if l > 0 then // assume compressed date (jjjjmmdd)
    begin
      y := StrToInt(copy(CompDate, 1, 4));
      m := StrToInt(copy(CompDate, 5, 2));
      d := StrToInt(copy(CompDate, 7, 2));
      result := EncodeDate(y, m, d);
    end
    else
      result := StrToDate(CompDate);
  except
    result := Date;
  end;
end;

function IsTimeBetween(von, bis: tDateTime): boolean;
var
  Jetzt: tDateTime;
begin
  Jetzt := Time; // cache current Time
  if von <= bis then
    result := ((von <= Jetzt) and (Jetzt <= bis))
  else
    result := not ((bis <= Jetzt) and (Jetzt <= von));
end;

function IsNum(const ANum: string): Boolean;
var
  i: Integer;
begin
  Result := (ANum <> '');
  for i := 1 to Length(ANum) do
    if not (ANum[i] in ['0'..'9', '.', '-', '+']) then
    begin
      Result := False;
      Exit;
    end;
end;

end.

