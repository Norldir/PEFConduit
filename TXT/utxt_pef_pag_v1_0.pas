unit utxt_pef_pag_v1_0;

{
 Tecinco Informática - Todos os direitos reservados - 2013.
 Autor: Norldir Kunkel
}

interface

uses utxt_base;

type
  TPagamento_9999 = class( TTXT_PEF )
  private
    FNumeroProtocoloProcessamento: string;
    FDataHoraEnvio: TdateTime;
  public
   constructor create;
  published
    property NumeroProtocoloProcessamento : string read FNumeroProtocoloProcessamento write FNumeroProtocoloProcessamento;
    property DataHoraRetorno : TdateTime read FDataHoraEnvio write FDataHoraEnvio;
  end;


  TPagamento_0000 = class( TTXT_PEF )
  private
    FValor: extended;
    FcnpjMAtriz: string;
    FNumeroParcela: string;
    FTipoParcela: string;
    FNumeroContratoFrete: string;
    FViagem: string;
    FcnpjFilial: string;
    FCIOT: string;
    FMotivoDoPagamento: string;
    Freg9999: TTXTFilhos;
    procedure SetTipoParcela(const Value: string);
  public
    constructor create;
    destructor destroy; override;
  published
    property cnpjMatriz : string read FcnpjMAtriz write FcnpjMAtriz;
    property cnpjFilial : string read FcnpjFilial write FcnpjFilial;
    property viagem : string read FViagem write FViagem;
    property NumeroContratoFrete : string read FNumeroContratoFrete write FNumeroContratoFrete;
    property CIOT : string read FCIOT write FCIOT;
    property TipoParcela : string read FTipoParcela write SetTipoParcela; {ADT-Adiantamento, SLD-Saldo, CUS-Custos}
    property NumeroParcela : string read FNumeroParcela write FNumeroParcela;
    property Valor : extended read FValor write FValor;
    property MotivoDoPagamento : string read FMotivoDoPagamento write FMotivoDoPagamento;
    property reg9999 : TTXTFilhos read Freg9999;
    function add9999 : TPagamento_9999;
  end;

  TPagamento_ret_0001 = class( TTXT_PEF )
  private
    FDataHoraRetorno: TDateTime;
  public
    constructor create;
  published
    property DataHoraRetorno : TDateTime read FDataHoraRetorno write FDataHoraRetorno;
  end;

  TPagamento_ret_0000 = class( TTXT_PEF )
  private
    FmotivoRetorno: string;
    Fadministradora: string;
    Fprotocolo: string;
    Fviagem: string;
    FDescricao: string;
    Freg0001: TTXTFilhos;
    procedure SetDescricao(const Value: string);
    procedure SetmotivoRetorno(const Value: string);
  public
    constructor create;
    destructor destroy; override;
  published
    property administradora : string read Fadministradora write Fadministradora;
    property numeroContratoFrete : string read Fviagem write Fviagem;
    property protocolo : string read Fprotocolo write Fprotocolo;
    property motivoRetorno : string read FmotivoRetorno write SetmotivoRetorno;
    property Descricao : string read FDescricao write SetDescricao;
    property reg0001 : TTXTFilhos read Freg0001;
    function add0001 : TPagamento_ret_0001;
  end;

implementation

uses SysUtils;

{ TPagamento_0000 }

function TPagamento_0000.add9999: TPagamento_9999;
begin
  result := TPagamento_9999.create;
  Freg9999.Add( Result );
end;

constructor TPagamento_0000.create;
begin
   inherited;
   FRegistro := '0000';
   Fversao   := '1.00';
   Freg9999 := TTXTFilhos.Create;
end;

destructor TPagamento_0000.destroy;
begin
  Freg9999.free;
  inherited;
end;

procedure TPagamento_0000.SetTipoParcela(const Value: string);
begin
  if Pos( '-'+value+'-', '-ADT-SLD-CUS-') = 0 then
    raise exception.Create('Tipo da parcela inválida! ['+value+']');

  FTipoParcela := Value;
end;


{ TPagamento_ret_0000 }

function TPagamento_ret_0000.add0001: TPagamento_ret_0001;
begin
   result := TPagamento_ret_0001.create;
   Freg0001.Add( result );
end;

constructor TPagamento_ret_0000.create;
begin
   inherited;
   FRegistro := '0000';
   Fversao   := '1.00';
   Freg0001 := TTXTFilhos.Create;
end;

destructor TPagamento_ret_0000.destroy;
begin
  Freg0001.free;
  inherited;
end;

procedure TPagamento_ret_0000.SetDescricao(const Value: string);
var
  p :PChar;
begin
  if Value <> '' then
  begin
     p := PChar( Value );
     FDescricao := '';
     repeat
       if Ord(p^) > 31  then
          FDescricao := FDescricao + p^
       else if p^ = #10 then
          FDescricao := FDescricao+'§'
       else
          FDescricao := FDescricao+' ';
       Inc(p);
     until p^=#0;
  end else
     FDescricao := Value;
end;

procedure TPagamento_ret_0000.SetmotivoRetorno(const Value: string);
var
  firstChar : Char;
begin
  firstChar := (Value+' ')[1];
  case firstChar of
    'I' : FmotivoRetorno := firstChar; //Informativo
    'E' : FmotivoRetorno := firstChar; //Comando com Erro
    'A' : FmotivoRetorno := firstChar; //comando Aceito
    'C' : FmotivoRetorno := firstChar; //comando Canelado
    else
       raise Exception.create('Valor '+value+' inválido para o campo motivo do retorno');
  end;
end;

{ TPagamento_ret_0001 }

constructor TPagamento_ret_0001.create;
begin
   inherited;
   FRegistro := '0001';
   Fversao   := '1.00';
end;

{ TPagamento_9999 }

constructor TPagamento_9999.create;
begin
   inherited;
   FRegistro := '9999';
   Fversao   := '1.00';
end;

end.
