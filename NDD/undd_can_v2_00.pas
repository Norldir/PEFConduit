unit undd_can_v2_00;

interface

uses classes, undd_base;

type
  TNDD_can_1200 =  class(TNDD)
  private
    Fndot: string;
    Fndot_dv: string;
  public
    constructor create;
  published
    property ndot : string read Fndot write Fndot;
    property ndot_dv : string read Fndot_dv write Fndot_dv;
  end;

  TNDD_can_1100 =  class(TNDD)
  private
    Fciot: string;
    Fciot_dv: string;
  public
    constructor create;
  published
    property ciot : string read Fciot write Fciot;
    property ciot_dv : string read Fciot_dv write Fciot_dv;
  end;

  TNDD_can_1000 =  class(TNDD)
  private
    Fmotivo: string;
    Fcnpj: string;
    FCIOT: TNDDFilhos;
    FNDOT: TNDDFilhos;
  public
    constructor create;
    destructor destroy; override;
  published
    property cnpj : string read Fcnpj write Fcnpj;
    property motivo : string read Fmotivo write Fmotivo;
    property CIOT : TNDDFilhos read FCIOT write FCIOT;
    property NDOT : TNDDFilhos read FNDOT write FNDOT;
    function add1100 : TNDD_can_1100;
    function add1200 : TNDD_can_1200;
  end;

  TNDD_can_0000 =  class(TNDD)
  private
    FToken: string;
    FCancelamento: TNDD_can_1000;
    FVersao: string;
  public
    constructor create;
    destructor destroy; override;
  published
    property token : string read FToken write FToken;
    property versao: string read FVersao write FVersao;
    property Cancelamento : TNDD_can_1000 read FCancelamento write FCancelamento;
  end;

implementation



{ TNDD_can_0000 }

constructor TNDD_can_0000.create;
begin
   Fp00_id := '0000';
   fversao := '4.2.3.0';
   FCancelamento := TNDD_can_1000.create;
end;

destructor TNDD_can_0000.destroy;
begin
   FCancelamento.Free;
   inherited;
end;

{ TNDD_can_1000 }

function TNDD_can_1000.add1100: TNDD_can_1100;
begin
  result := TNDD_can_1100.create;
  FCIOT.add( result );
end;

function TNDD_can_1000.add1200: TNDD_can_1200;
begin
  result := TNDD_can_1200.create;
  FNDOT.add( result );
end;

constructor TNDD_can_1000.create;
begin
   Fp00_id := '1000';
   FCIOT := TNDDFilhos.create;
   FNDOT := TNDDFilhos.create;
end;

destructor TNDD_can_1000.destroy;
begin
   FCIOT.free;
   FNDOT.Free;
   inherited;
end;

{ TNDD_can_1100 }

constructor TNDD_can_1100.create;
begin
  Fp00_id := '1100';
end;

{ TNDD_can_1200 }

constructor TNDD_can_1200.create;
begin
   Fp00_id := '1200';
end;

end.
