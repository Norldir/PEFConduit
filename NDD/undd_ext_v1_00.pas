unit undd_ext_v1_00;

interface

uses classes, undd_base;

type
  TNDD_EnvPgto_1100 = class(TNDD)
  private
    FdataInicial: TDateTime;
    FdataFinal: TDateTime;
  public
    constructor create;
    destructor destroy;override;
  published
    property dataInicial : TDateTime read FdataInicial write FdataInicial;
    property dataFinal : TDateTime read FdataFinal write FdataFinal;
  end;

  TNDD_EnvPgto_1000 = class(TNDD)
  private
    FGUID: string;
    FcnpjEmitente: string;
    FcnpjContratante: string;
    Freg1000: TNDD_EnvPgto_1100;
  public
    constructor create;
    destructor destroy;override;
  published
    property cnpjContratante : string read FcnpjContratante write FcnpjContratante;
    property cnpjEmitente : string read FcnpjEmitente write FcnpjEmitente;
    property GUID : string read FGUID write FGUID;
    property reg1100 : TNDD_EnvPgto_1100 read Freg1000 write Freg1000;
  end;

  TNDD_EnvPgto =  class(TNDD)
  private
    FToken: string;
    Fversao: string;
    Freg1000: TNDD_EnvPgto_1000;
  public
    constructor create;
    destructor destroy;override;
  published
    property token : string read FToken write FToken;
    property versao : string read Fversao write Fversao;
    property reg1000 : TNDD_EnvPgto_1000 read Freg1000 write Freg1000;
  end;

implementation


{ TNDD_EnvPgto }

constructor TNDD_EnvPgto.create;
begin
   inherited;
   Fp00_id := '1000';
   Freg1000 := TNDD_EnvPgto_1000.create;
end;

destructor TNDD_EnvPgto.destroy;
begin
  Freg1000.free;
  inherited;
end;

{ TNDD_EnvPgto_1000 }

constructor TNDD_EnvPgto_1000.create;
begin
  inherited;
  Fp00_id := '1000';
  Freg1000 := TNDD_EnvPgto_1100.create;
end;

destructor TNDD_EnvPgto_1000.destroy;
begin
  Freg1000.Free; 
  inherited;
end;

{ TNDD_EnvPgto_1100 }

constructor TNDD_EnvPgto_1100.create;
begin
  Fp00_id := '1100';
end;

destructor TNDD_EnvPgto_1100.destroy;
begin

  inherited;
end;

end.
