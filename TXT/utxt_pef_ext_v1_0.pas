unit utxt_pef_ext_v1_0;

interface
uses utxt_base;

type
  TExtrato_9999 = class( TTXT_PEF )
  private
    FNumeroProtocoloProcessamento: string;
    FDataHoraEnvio: TdateTime;
  public
   constructor create;
  published
    property DataHoraRetorno : TdateTime read FDataHoraEnvio write FDataHoraEnvio;
    property NumeroProtocoloProcessamento : string read FNumeroProtocoloProcessamento write FNumeroProtocoloProcessamento;
  end;

  TExtrato_0000 = class( TTXT_PEF )
  private
    Freg9999: TTXTFilhos;
    FDataExtrato: TDateTime;
    Fcnpj_matriz: string;
    Fcnpj: string;
  public
    constructor create;
    destructor destroy; override;
  published
    property cnpj_matriz : string read Fcnpj_matriz write Fcnpj_matriz;
    property cnpj : string read Fcnpj write Fcnpj;
    property DataExtrato : TDateTime read FDataExtrato write FDataExtrato;
    property reg9999 : TTXTFilhos read Freg9999;
    function add9999 : TExtrato_9999;
  end;



  TExtrato_ret_9999 = class( TTXT_PEF )
  private
    FNumeroProtocoloProcessamento: string;
    FDataHoraEnvio: TdateTime;
  public
   constructor create;
  published
    property NumeroProtocoloProcessamento : string read FNumeroProtocoloProcessamento write FNumeroProtocoloProcessamento;
    property DataHoraRetorno : TdateTime read FDataHoraEnvio write FDataHoraEnvio;
  end;

  TExtrato_ret_0001 = class( TTXT_PEF )
  private
    FValorPrevisto: extended;
    FValorEfetivo: extended;
    FParcela: string;
    FSituacao: String;
    FDataEfetivacao: TDateTime;
    FDataPrevista: TDateTime;
    FValor: extended;
    FSaldo: extended;
    FDescricao: string;
    FViagem: String;
    FObservacao: string;
    FSequencia: string;
    FDataLancamento: TDateTime;
  public
    constructor create;
    destructor destroy; override;
  published
    property Sequencia : string read FSequencia write FSequencia;
    property DataLancamento : TDateTime read FDataLancamento write FDataLancamento;
    property Descricao : string read FDescricao write FDescricao;
    property Observacao : string read FObservacao write FObservacao;
    property Viagem : String read FViagem write FViagem;
    property Valor : extended read FValor write FValor;
    property Saldo : extended read FSaldo write FSaldo;
  end;


  TExtrato_ret_0000 = class( TTXT_PEF )
  private
    FReg0001,
    Freg9999: TTXTFilhos;
    FmotivoRetorno: string;
    FDescricao: string;
    FDataExtrato: TDateTime;
  public
    constructor create;
    destructor destroy; override;
  published
    property motivoRetorno : string read FmotivoRetorno write FmotivoRetorno;
    property Descricao : string read FDescricao write FDescricao;
    property DataExtrato : TDateTime read FDataExtrato write FDataExtrato;
    property reg0001 : TTXTFilhos read Freg0001;
    property reg9999 : TTXTFilhos read Freg9999;
    function add9999 : TExtrato_ret_9999;
    function add0001 : TExtrato_ret_0001;
  end;

implementation


{ TExtrato_9999 }

constructor TExtrato_9999.create;
begin
   inherited;
   FRegistro := '9999';
   Fversao := '1.00';
end;

{ TExtrato_0000 }

function TExtrato_0000.add9999: TExtrato_9999;
begin
   result := TExtrato_9999.create;
   Freg9999.add( result );
end;

constructor TExtrato_0000.create;
begin
   inherited;
   FRegistro := '0000';
   Fversao := '1.00';
   Freg9999 := TTXTFilhos.Create;
end;

destructor TExtrato_0000.destroy;
begin
  Freg9999.free;
  inherited;
end;

{ TExtrato_ret_9999 }

constructor TExtrato_ret_9999.create;
begin
   inherited;
   FRegistro := '9999';
   Fversao := '1.00';
end;

{ TExtrato_ret_0001 }

constructor TExtrato_ret_0001.create;
begin
   inherited;
   FRegistro := '0001';
   Fversao := '1.00';
end;

destructor TExtrato_ret_0001.destroy;
begin

  inherited;
end;

{ TExtrato_ret_0000 }

function TExtrato_ret_0000.add0001: TExtrato_ret_0001;
begin
   result := TExtrato_ret_0001.create;
   FReg0001.add( result );
end;

function TExtrato_ret_0000.add9999: TExtrato_ret_9999;
begin
  result := TExtrato_ret_9999.create;
  Freg9999.add( result );
end;

constructor TExtrato_ret_0000.create;
begin
   inherited;
   FRegistro := '0000';
   Fversao := '1.00';
   FReg0001 := TTXTFilhos.create;
   FReg9999 := TTXTFilhos.create;
end;

destructor TExtrato_ret_0000.destroy;
begin
   FReg0001.free;
   FReg9999.free;
  inherited;
end;

end.

