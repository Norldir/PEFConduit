unit utxt_pef_con_v1_0;

interface
uses utxt_base;

type
  TConsulta_9999 = class( TTXT_PEF )
  private
    FNumeroProtocoloProcessamento: string;
    FDataHoraEnvio: TdateTime;
  public
   constructor create;
  published
    property NumeroProtocoloProcessamento : string read FNumeroProtocoloProcessamento write FNumeroProtocoloProcessamento;
    property DataHoraRetorno : TdateTime read FDataHoraEnvio write FDataHoraEnvio;
  end;

  TConsulta_0000 = class( TTXT_PEF )
  private
    FCIOT: string;
    FNumeroContratoFrete: string;
    FNumeroViagem: string;
    FViagem: string;
    FMotivo: string;
    Fcnpj: string;
    Freg9999: TTXTFilhos;
    Fcnpj_matriz: string;
  public
    constructor create;
    destructor destroy; override;
  published
    property cnpj_matriz : string read Fcnpj_matriz write Fcnpj_matriz;
    property cnpj : string read Fcnpj write Fcnpj;
    property viagem : string read FViagem write FViagem;
    property NumeroContratoFrete : string read FNumeroContratoFrete write FNumeroContratoFrete;
    property CIOT : string read FCIOT write FCIOT;
    property reg9999 : TTXTFilhos read Freg9999;
    function add9999 : TConsulta_9999;
  end;



  TConsulta_ret_9999 = class( TTXT_PEF )
  private
    FNumeroProtocoloProcessamento: string;
    FDataHoraEnvio: TdateTime;
  public
   constructor create;
  published
    property NumeroProtocoloProcessamento : string read FNumeroProtocoloProcessamento write FNumeroProtocoloProcessamento;
    property DataHoraRetorno : TdateTime read FDataHoraEnvio write FDataHoraEnvio;
  end;

  TConsulta_ret_0001 = class( TTXT_PEF )
  private
    FValorPrevisto: extended;
    FValorEfetivo: extended;
    FParcela: string;
    FSituacao: String;
    FDataEfetivacao: TDateTime;
    FDataPrevista: TDateTime;
    FPesoChegada: Extended;
    FLocal: string;
  public
    constructor create;
    destructor destroy; override;
  published
    property Parcela : string read FParcela write FParcela;
    property DataPrevista : TDateTime read FDataPrevista write FDataPrevista;
    property ValorPrevisto : extended read FValorPrevisto write FValorPrevisto;
    property DataEfetivacao : TDateTime read FDataEfetivacao write FDataEfetivacao;
    property ValorEfetivo : extended read FValorEfetivo write FValorEfetivo;
    property PesoChegada : Extended read FPesoChegada write FPesoChegada;
    property Local : string read FLocal write FLocal;
    property Situacao : String read FSituacao write FSituacao;
  end;


  TConsulta_ret_0000 = class( TTXT_PEF )
  private
    FReg0001,
    Freg9999: TTXTFilhos;
    FCIOT: string;
    Fcnpj_matriz: string;
    FNumeroContratoFrete: string;
    Fcnpj: string;
    FViagem: string;
    FMotivo: string;
    FmotivoRetorno: string;
  public
    constructor create;
    destructor destroy; override;
  published
    property motivoRetorno : string read FmotivoRetorno write FmotivoRetorno;
    property viagem : string read FViagem write FViagem;
    property NumeroContratoFrete : string read FNumeroContratoFrete write FNumeroContratoFrete;
    property CIOT : string read FCIOT write FCIOT;
    property Motivo : string read FMotivo write FMotivo;
    property reg0001 : TTXTFilhos read Freg0001;
    property reg9999 : TTXTFilhos read Freg9999;
    function add9999 : TConsulta_ret_9999;
    function add0001 : TConsulta_ret_0001;
  end;

implementation


{ TConsulta_9999 }

constructor TConsulta_9999.create;
begin
   inherited;
   FRegistro := '9999';
   Fversao := '1.00';
end;

{ TConsulta_0000 }

function TConsulta_0000.add9999: TConsulta_9999;
begin
   result := TConsulta_9999.create;
   Freg9999.add( result );
end;

constructor TConsulta_0000.create;
begin
   inherited;
   FRegistro := '0000';
   Fversao := '1.00';
   Freg9999 := TTXTFilhos.Create;
end;

destructor TConsulta_0000.destroy;
begin
  Freg9999.free;
  inherited;
end;

{ TConsulta_ret_9999 }

constructor TConsulta_ret_9999.create;
begin
   inherited;
   FRegistro := '9999';
   Fversao := '1.00';
end;

{ TConsulta_ret_0001 }

constructor TConsulta_ret_0001.create;
begin
   inherited;
   FRegistro := '0001';
   Fversao := '1.00';
end;

destructor TConsulta_ret_0001.destroy;
begin

  inherited;
end;

{ TConsulta_ret_0000 }

function TConsulta_ret_0000.add0001: TConsulta_ret_0001;
begin
   result := TConsulta_ret_0001.create;
   Freg0001.Add( result );
end;

function TConsulta_ret_0000.add9999: TConsulta_ret_9999;
begin
   result := TConsulta_ret_9999.create;
   Freg9999.Add( result );
end;

constructor TConsulta_ret_0000.create;
begin
   inherited;
   FRegistro := '0000';
   Fversao := '1.00';
   FReg0001 := TTXTFilhos.Create;
   FReg9999 := TTXTFilhos.Create;
end;

destructor TConsulta_ret_0000.destroy;
begin
  FReg0001.free;
  FReg9999.free;
  inherited;
end;

end.

