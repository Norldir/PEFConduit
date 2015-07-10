unit undd_ext_ret_v1_00;

interface

uses classes, undd_base;

type
  TNDD_RegPgto_2110 = class(TNDD)
  private
    Fnumero: string;
    Fcomplemento: string;
    Fcidade: string;
    FCEP: string;
    Flogradouro: string;
    Fbairro: string;
    Fuf: string;
  public
    constructor create;
    destructor destroy;override;
  published
    property uf : string read Fuf write Fuf;
    property cidade : string read Fcidade write Fcidade;
    property bairro : string read Fbairro write Fbairro;
    property logradouro : string read Flogradouro write Flogradouro;
    property numero : string read Fnumero write Fnumero;
    property CEP : string read FCEP write FCEP;
    property complemento : string read Fcomplemento write Fcomplemento;
  end;


  TNDD_RegPgto_3310 = class(TNDD_RegPgto_2110)
  public
    constructor create;
  end;

  TNDD_RegPgto_3300 = class(TNDD)
  private
    Fnome: string;
    Fcnpj: string;
    Freg3310: TNDD_RegPgto_3310;
  public
    constructor create;
    destructor destroy;override;
  published
    property cnpj : string read Fcnpj write Fcnpj;
    property nome : string read Fnome write Fnome;
    property reg3310 : TNDD_RegPgto_3310 read Freg3310 write Freg3310;
    function add3310 : TNDD_RegPgto_3310;
  end;

  TNDD_RegPgto_3210 = class(TNDD_RegPgto_2110)
    constructor create;
  end;

  TNDD_RegPgto_3200 = class(TNDD)
  private
    Fnome: string;
    Fcnpj: string;
    Freg3210: TNDD_RegPgto_3210;
  public
    constructor create;
    destructor destroy;override;
  published
    property cnpj : string read Fcnpj write Fcnpj;
    property nome : string read Fnome write Fnome;
    property reg3210 : TNDD_RegPgto_3210 read Freg3210 write Freg3210;
    function add3210 : TNDD_RegPgto_3210 ;
  end;


  TNDD_RegPgto_3100 = class(TNDD)
  private
    Fnome: TDateTime;
  public
    constructor create;
    destructor destroy;override;
  published
    property DataHora : TDateTime read Fnome write Fnome;
  end;

  TNDD_RegPgto_3000 = class(TNDD)
  private
    Fnome: string;
    Fcomentario: string;
    Fvalor: extended;
    Freg3100: TNDD_RegPgto_3100;
    Freg3200: TNDD_RegPgto_3200;
    Freg3300: TNDD_RegPgto_3300;
  public
    constructor create;
    destructor destroy;override;
  published
    property nome : string read Fnome write Fnome;
    property valor : extended read Fvalor write Fvalor;
    property comentario : string read Fcomentario write Fcomentario;
    property reg3100 : TNDD_RegPgto_3100 read Freg3100 write Freg3100;
    property reg3200 : TNDD_RegPgto_3200 read Freg3200 write Freg3200;
    property reg3300 : TNDD_RegPgto_3300 read Freg3300 write Freg3300;
    function add3100 : TNDD_RegPgto_3100;
    function add3200 : TNDD_RegPgto_3200;
    function add3300 : TNDD_RegPgto_3300;

  end;

  TNDD_RegPgto_2100 = class(TNDD)
  private
    Freg2110: TNDD_RegPgto_2110;
    Fnome: string;
    Fcnpj: string;
  public
    constructor create;
    destructor destroy;override;
  published
    property cnpj : string read Fcnpj write fcnpj;
    property nome : string read Fnome write Fnome;
    property reg2110 : TNDD_RegPgto_2110 read Freg2110 write Freg2110;
    function add2110 : TNDD_RegPgto_2110;
  end;


  TNDD_RegPgto_2000 = class(TNDD)
  private
    FvalorPago: Extended;
    Freg2100: TNDD_RegPgto_2100;
  public
    constructor create;
    destructor destroy;override;
  published
    property valorPago : Extended read FvalorPago write FvalorPago;
    property reg2100 : TNDD_RegPgto_2100 read Freg2100 write Freg2100;
    function add2100 : TNDD_RegPgto_2100;
  end;


  TNDD_RegPgto_1100 = class(TNDD)
  private
    Fnumero: string;
    FCodVerificador: string;
  public
    constructor create;
    destructor destroy;override;
  published
    property numero : string read Fnumero write Fnumero;
    property CodVerificador : string read FCodVerificador write FCodVerificador;
  end;

  TNDD_RegPgto_1200 = class(TNDD_RegPgto_1100)
  public
    constructor create;
  end;

  TNDD_RegPgto_1000 = class(TNDD)
  private
    Freg1100: TNDD_RegPgto_1100;
    Freg2000: TNDD_RegPgto_2000;
    Freg3000: TNDD_RegPgto_3000;
    FDataHora: TDateTime;
  public
    constructor create;
    destructor destroy;override;
  published
    property DataHora : TDateTime read FDataHora write FDataHora;
    property reg1100 : TNDD_RegPgto_1100 read Freg1100 write Freg1100;
    property reg2000 : TNDD_RegPgto_2000 read Freg2000 write Freg2000;
    property reg3000 : TNDD_RegPgto_3000 read Freg3000 write Freg3000;
    function add1100 : TNDD_RegPgto_1100;
    function add2000 : TNDD_RegPgto_2000;
    function add3000 : TNDD_RegPgto_3000;
  end;

  TNDD_RegPgto_0100 = class(TNDD)
  private
    Fdescricao: string;
  public
    constructor create;
    destructor destroy;override;
  published
    property descricao : string read Fdescricao write Fdescricao;
  end;

  TNDD_RetPgto =  class(TNDD)
  private
    Fversao: string;
    FToken: string;
    Freg0100: TNDDFilhos;
    Freg1000: TNDDFilhos;
  public
    constructor create;
    destructor destroy;override;
  published
    property ResponseCode : string read FToken write FToken;
    property ResponseCodeMessage : string read Fversao write Fversao;
    property reg0100 : TNDDFilhos read Freg0100 write Freg0100;
    property reg1000 : TNDDFilhos read Freg1000 write Freg1000;
    function add0100 : TNDD_RegPgto_0100;
    function add1000 : TNDD_RegPgto_1000;
  end;

implementation



{ TNDD_RetPgto }

function TNDD_RetPgto.add0100: TNDD_RegPgto_0100;
begin
   result := TNDD_RegPgto_0100.create;
   Freg0100.Add( result );
end;

function TNDD_RetPgto.add1000: TNDD_RegPgto_1000;
begin
   result := TNDD_RegPgto_1000.create;
   Freg1000.Add( result );
end;

constructor TNDD_RetPgto.create;
begin
  Fp00_id := '0000';
  Freg0100:= TNDDFilhos.Create;
  Freg1000:= TNDDFilhos.Create;
end;

destructor TNDD_RetPgto.destroy;
begin
  Freg0100.free;
  Freg1000.Free;
  inherited;
end;

{ TNDD_RegPgto_0100 }

constructor TNDD_RegPgto_0100.create;
begin
   Fp00_id := '0100';  
end;

destructor TNDD_RegPgto_0100.destroy;
begin
  inherited;
end;

{ TNDD_RegPgto_1000 }

function TNDD_RegPgto_1000.add1100: TNDD_RegPgto_1100;
begin
 result := Freg1100;
end;

function TNDD_RegPgto_1000.add2000: TNDD_RegPgto_2000;
begin
 result := Freg2000;
end;

function TNDD_RegPgto_1000.add3000: TNDD_RegPgto_3000;
begin
 result := Freg3000;
end;

constructor TNDD_RegPgto_1000.create;
begin
  Fp00_id := '1000';
  Freg1100:= TNDD_RegPgto_1100.create;
  Freg2000:= TNDD_RegPgto_2000.create;
  Freg3000:= TNDD_RegPgto_3000.create;

end;

destructor TNDD_RegPgto_1000.destroy;
begin
  Freg1100.free;
  Freg2000.free;
  Freg3000.free;
  inherited;
end;

{ TNDD_RegPgto_1100 }

constructor TNDD_RegPgto_1100.create;
begin
   Fp00_id := '1100';
end;

destructor TNDD_RegPgto_1100.destroy;
begin

  inherited;
end;

{ TNDD_RegPgto_1200 }

constructor TNDD_RegPgto_1200.create;
begin
   Fp00_id := '1200';
end;

{ TNDD_RegPgto_2000 }

function TNDD_RegPgto_2000.add2100: TNDD_RegPgto_2100;
begin
   result := Freg2100;
end;

constructor TNDD_RegPgto_2000.create;
begin
  Fp00_id := '2000';
  Freg2100:= TNDD_RegPgto_2100.create;
end;

destructor TNDD_RegPgto_2000.destroy;
begin
  Freg2100.free;
  inherited;
end;

{ TNDD_RegPgto_2100 }

function TNDD_RegPgto_2100.add2110: TNDD_RegPgto_2110;
begin
  result :=Freg2110;
end;

constructor TNDD_RegPgto_2100.create;
begin
   Fp00_id := '2100';
end;

destructor TNDD_RegPgto_2100.destroy;
begin

  inherited;
end;

{ TNDD_RegPgto_2110 }

constructor TNDD_RegPgto_2110.create;
begin
   Fp00_id := '2110';
end;

destructor TNDD_RegPgto_2110.destroy;
begin

  inherited;
end;

{ TNDD_RegPgto_3000 }

function TNDD_RegPgto_3000.add3100: TNDD_RegPgto_3100;
begin
   result := Freg3100
end;

function TNDD_RegPgto_3000.add3200: TNDD_RegPgto_3200;
begin
  result := Freg3200;
end;

function TNDD_RegPgto_3000.add3300: TNDD_RegPgto_3300;
begin
  Result := Freg3300;
end;

constructor TNDD_RegPgto_3000.create;
begin
    Fp00_id := '3000';
    Freg3100:= TNDD_RegPgto_3100.create;
    Freg3200:= TNDD_RegPgto_3200.create;
    Freg3300:= TNDD_RegPgto_3300.create;
end;

destructor TNDD_RegPgto_3000.destroy;
begin
    Freg3100.free;
    Freg3200.free;
    Freg3300.free;
  inherited;
end;

{ TNDD_RegPgto_3100 }

constructor TNDD_RegPgto_3100.create;
begin
  Fp00_id := '3100';
end;

destructor TNDD_RegPgto_3100.destroy;
begin

  inherited;
end;

{ TNDD_RegPgto_3200 }

function TNDD_RegPgto_3200.add3210: TNDD_RegPgto_3210;
begin
  result := Freg3210;
end;

constructor TNDD_RegPgto_3200.create;
begin
  Fp00_id := '3200';
  Freg3210:= TNDD_RegPgto_3210.create;
end;

destructor TNDD_RegPgto_3200.destroy;
begin
  Freg3210.free;
  inherited;
end;

{ TNDD_RegPgto_3210 }

constructor TNDD_RegPgto_3210.create;
begin
  Fp00_id := '3210';
end;

{ TNDD_RegPgto_3300 }

function TNDD_RegPgto_3300.add3310: TNDD_RegPgto_3310;
begin
  Result := Freg3310;
end;

constructor TNDD_RegPgto_3300.create;
begin
   Fp00_id := '3300';
   Freg3310 :=TNDD_RegPgto_3310.create;
end;

destructor TNDD_RegPgto_3300.destroy;
begin
  Freg3310.Free;
  inherited;
end;

{ TNDD_RegPgto_3310 }

constructor TNDD_RegPgto_3310.create;
begin
   Fp00_id := '3310';
end;

end.
