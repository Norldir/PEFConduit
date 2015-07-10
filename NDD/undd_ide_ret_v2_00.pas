unit undd_ide_ret_v2_00;

interface
uses classes, undd_base;

type
  TNDD_5100 = class(TNDD)
  private
    Fvalor: extended;
    FNome: string;
    Flocalizacao: string;
  public
    constructor create;
  published
    property nome : string read FNome write FNome;
    property valor : extended read Fvalor write Fvalor;
    property localizacao : string read Flocalizacao write Flocalizacao;
  end;

  TNDD_5000 = class( TNDD)
  private
    Fvalor: extended;
    Fdestino: string;
    Forigem: string;
    Freg5100: TNDDFilhos;
  public
    constructor create;
    destructor destroy; override;
  published
    function add5100 : TNDD_5100;
    property valor : extended read Fvalor write Fvalor;
    property origem : string read Forigem write Forigem;
    property destino : string read Fdestino write Fdestino;
    property reg5100 : TNDDFilhos read Freg5100 write Freg5100;
  end;

  TNDD_4000 = class(TNDD)
  private
    FvlrSaldo: extended;
    FvlrFrete: extended;
    FvlrCombustivel: extended;
    FvlrDespesas: extended;
  public
    constructor create;
  published
    property vlrFrete : extended read FvlrFrete write FvlrFrete;
    property vlrDespesas : extended read FvlrDespesas write FvlrDespesas;
    property vlrCombustivel : extended read FvlrCombustivel write FvlrCombustivel;
    property vlrSaldo : extended read FvlrSaldo write FvlrSaldo;
  end;

  TNDD_3000 = class(TNDD)
  private
    FavisoTransportador: string;
    FndotCodVerificador: string;
    Fnumero: string;
  public
    constructor create;
  published
    property numero : string read Fnumero write Fnumero;
    property ndotCodVerificador : string read FndotCodVerificador write FndotCodVerificador;
    property avisoTransportador : string read FavisoTransportador write FavisoTransportador;
  end;

  TNDD_2000 = class(TNDD)
  private
    FciotCodVerificador: string;
    FavisoTransportador: string;
    Fciot: string;
  public
    constructor create;
  published
    property ciot : string read Fciot write Fciot;
    property ciotCodVerificador : string read FciotCodVerificador write FciotCodVerificador;
    property avisoTransportador : string read FavisoTransportador write FavisoTransportador;
  end;

  TNDD_1000 = class(TNDD)
  private
    Fmensagem: string;
    Fcodigo: string;
    Fobservacao: string;
    Fcategoria: string;
  public
    constructor create;
  published
    property categoria : string read Fcategoria write Fcategoria;
    property codigo : string read Fcodigo write Fcodigo;
    property mensagem : string read Fmensagem write Fmensagem;
    property observacao : string read Fobservacao write Fobservacao;
  end;

  TNDD_0000 = class(TNDD)
  private
    Fserie: string;
    Fnumero: string;
    Fcnpj: string;
    FdataEmissao: TDateTime;
    FdataHora: TDateTime;
    Freg1000: TNDDFilhos;
    Freg5000: TNDDFilhos;
    Freg2000: TNDDFilhos;
    Freg4000: TNDDFilhos;
    Freg3000: TNDDFilhos;
  public
    constructor create;
    destructor destroy; override;
  published
    function add1000 : TNDD_1000;
    function add2000 : TNDD_2000;
    function add3000 : TNDD_3000;
    function add4000 : TNDD_4000;
    function add5000 : TNDD_5000;
    property dataHora : TDateTime read FdataHora write FdataHora;
    property cnpj : string read Fcnpj write Fcnpj;
    property serie : string read Fserie write Fserie;
    property numero : string read Fnumero write Fnumero;
    property dataEmissao : TDateTime read FdataEmissao write FdataEmissao;
    property reg1000 : TNDDFilhos read Freg1000 write Freg1000;
    property reg2000 : TNDDFilhos read Freg2000 write Freg2000;
    property reg3000 : TNDDFilhos read Freg3000 write Freg3000;
    property reg4000 : TNDDFilhos read Freg4000 write Freg4000;
    property reg5000 : TNDDFilhos read Freg5000 write Freg5000;
  end;

implementation

{ TNDD_5100 }

constructor TNDD_5100.create;
begin
   Fp00_id := '5100';
end;

{ TNDD_5000 }

function TNDD_5000.add5100: TNDD_5100;
begin
  Result := TNDD_5100.create;
  Freg5100.Add( result );
end;

constructor TNDD_5000.create;
begin
  Fp00_id := '5000';
  Freg5100 := TNDDFilhos.Create;
  inherited;

end;

destructor TNDD_5000.destroy;
begin
  Freg5100.Free;
  inherited;
end;

{ TNDD_4000 }

constructor TNDD_4000.create;
begin
  inherited;
   Fp00_id := '4000';
end;

{ TNDD_2000 }

constructor TNDD_2000.create;
begin
   Fp00_id := '2000';
end;

{ TNDD_1000 }

constructor TNDD_1000.create;
begin
  Fp00_id := '1000';
end;

{ TNDD_0000 }

function TNDD_0000.add1000: TNDD_1000;
begin
  result := TNDD_1000.create;
  Freg1000.add(Result);
end;

function TNDD_0000.add2000: TNDD_2000;
begin
  result := TNDD_2000.create;
  Freg2000.add(Result);
end;

function TNDD_0000.add3000: TNDD_3000;
begin
  result := TNDD_3000.create;
  Freg3000.add(Result);
end;

function TNDD_0000.add4000: TNDD_4000;
begin
  result := TNDD_4000.create;
  Freg4000.add(Result);
end;

function TNDD_0000.add5000: TNDD_5000;
begin
  result := TNDD_5000.create;
  Freg5000.add(Result);
end;

constructor TNDD_0000.create;
begin
   Fp00_id := '0000';
   reg1000 := TNDDFilhos.create;
   reg2000 := TNDDFilhos.create;
   reg3000 := TNDDFilhos.create;
   reg4000 := TNDDFilhos.create;
   reg5000 := TNDDFilhos.create;
end;

destructor TNDD_0000.destroy;
begin
   reg1000.Free;
   reg2000.Free;
   reg3000.Free;
   reg4000.Free;
   reg5000.Free;
  inherited;
end;

{ TNDD_3000 }

constructor TNDD_3000.create;
begin
  Self.Fp00_id := '3000';
end;

end.
