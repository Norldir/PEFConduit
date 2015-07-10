unit utxt_pef_can_v1_0;

interface

uses utxt_base;

type
  T9999 = class( TTXT_PEF )
  private
    FNumeroProtocoloProcessamento: string;
    FDataHoraEnvio: TdateTime;
  public
   constructor create;
  published
    property NumeroProtocoloProcessamento : string read FNumeroProtocoloProcessamento write FNumeroProtocoloProcessamento;
    property DataHoraRetorno : TdateTime read FDataHoraEnvio write FDataHoraEnvio;
  end;

  TCancelamento_0000 = class( TTXT_PEF )
  private
    FCIOT: string;
    FNumeroContratoFrete: string;
    FViagem: string;
    FMotivo: string;
    Fcnpj: string;
    Freg9999: TTXTFilhos;
    Fcnpj_matriz: string;
  public
    constructor create;
    destructor destroy; override;
  published
    property cnpj : string read Fcnpj write Fcnpj;
    property viagem : string read FViagem write FViagem;
    property NumeroContratoFrete : string read FNumeroContratoFrete write FNumeroContratoFrete;
    property CIOT : string read FCIOT write FCIOT;
    property Motivo : string read FMotivo write FMotivo;
    property cnpj_matriz : string read Fcnpj_matriz write Fcnpj_matriz;
    property reg9999 : TTXTFilhos read Freg9999;
    function add9999 : T9999;
  end;

implementation

{ T0000 }

function TCancelamento_0000.add9999: T9999;
begin
   result := T9999.create;
   Freg9999.add( result );
end;

constructor TCancelamento_0000.create;
begin
   inherited;
   FRegistro := '0000';
   Fversao := '1.01';
   FversaoCompativel := '1.00';
   Freg9999:= TTXTFilhos.create;
end;

destructor TCancelamento_0000.destroy;
begin
  Freg9999.free;
  inherited;
end;

{ T9999 }

constructor T9999.create;
begin
   inherited;
   FRegistro := '9999';
   Fversao := '1.00';
end;

end.
 