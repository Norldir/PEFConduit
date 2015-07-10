program PEFConduitSrv;

uses
  SvcMgr,
  SysUtils,
  uovS_PEFConduit in 'uovS_PEFConduit.pas' {PEFConduit: TService};

{$R *.RES}

begin
  DecimalSeparator  := ',';
  ThousandSeparator := '.';

  CurrencyString    := 'R$';
  DateSeparator     := '/';
  ShortDateFormat   := 'dd/mm/yyyy';
  LongDateFormat    := 'dddd, dd "de" MMMM "de" yyyy';
  TimeSeparator     := ':';
  ShortTimeFormat   := 'hh:mm';
  LongTimeFormat    := 'hh:mm:ss';
  ShortMonthNames[01]:= 'Jan';ShortMonthNames[02]:= 'Fev';ShortMonthNames[03]:= 'Mar';ShortMonthNames[04]:= 'Abr';ShortMonthNames[05]:= 'Mai';ShortMonthNames[06]:= 'Jun';ShortMonthNames[07]:= 'Jul';ShortMonthNames[08]:= 'Ago';ShortMonthNames[09]:= 'Set';ShortMonthNames[10]:= 'Out';ShortMonthNames[11]:= 'Nov';ShortMonthNames[12]:= 'Dez';

  LongMonthNames[01]:= 'Janeiro';LongMonthNames[02]:= 'Fevereiro';LongMonthNames[03]:= 'Março';LongMonthNames[04]:= 'Abril';LongMonthNames[05]:= 'Maio';LongMonthNames[06]:= 'Junho';LongMonthNames[07]:= 'Julho';LongMonthNames[08]:= 'Agosto';LongMonthNames[09]:= 'Setembro';LongMonthNames[10]:= 'Outubro';LongMonthNames[11]:= 'Novembro';LongMonthNames[12]:= 'Dezembro';
  ShortDayNames[1]:='Dom';ShortDayNames[2]:='Seg';ShortDayNames[3]:='Ter';ShortDayNames[4]:='Qua';ShortDayNames[5]:='Qui';ShortDayNames[6]:='Sex';ShortDayNames[7]:='Sab';
  LongDayNames[1]:='Domingo';LongDayNames[2]:='Segunda-Feira';LongDayNames[3]:='Terça-Feira';LongDayNames[4]:='Quarta-Feira';LongDayNames[5]:='Quinta-Feira';LongDayNames[6]:='Sexta-Feira';LongDayNames[7]:='Sabado';

  Application.Initialize;
  Application.CreateForm(TPEFConduit, PEFConduit);
  Application.Run;
end.
