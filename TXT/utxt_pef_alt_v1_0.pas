unit utxt_pef_alt_v1_0;

{
 Tecinco Informática - Todos os direitos reservados - 2013.
 Autor: Norldir Kunkel
}

interface

uses utxt_base;

type
  TAlteracaoContrato_9999 = class( TTXT_PEF )
  private
    FNumeroProtocoloProcessamento: string;
    FDataHoraEnvio: TdateTime;
  public
   constructor create;
  published
    property NumeroProtocoloProcessamento : string read FNumeroProtocoloProcessamento write FNumeroProtocoloProcessamento;
    property DataHoraRetorno : TdateTime read FDataHoraEnvio write FDataHoraEnvio;
  end;

  TAlteracaoContrato_0200 = class( TTXT_PEF ) // adição de valor extra de custo
  private
    FValor: extended;
    FDescricao: string;
    FObservacao: string;
    FNumeroParcela: string;
  public
    constructor create;
    destructor destroy; override;
  published
    property NumeroParcela : string read FNumeroParcela write FNumeroParcela;
    property Valor : extended read FValor write FValor;
    property Descricao : string read FDescricao write FDescricao;
    property Observacao : string read FObservacao write FObservacao;
  end;

  TAlteracaoContrato_0100 = class( TTXT_PEF ) // alteracao de parcela
  //rodocred e nddcargo, manda somente a parcela que foi modificada
  //pancard, manda todas as parcelas.
  private
    FValor: extended;
    FTipoParcela: string;
    FNumeroParcela: string;
    FDescricao: string;
    FObservacao: string;
    procedure SetTipoParcela(const Value: string);
  public
    constructor create;
    destructor destroy; override;
  published
    property TipoParcela : string read FTipoParcela write SetTipoParcela; {ADT-Adiantamento, SLD-Saldo, CUS-Custos}
    property NumeroParcela : string read FNumeroParcela write FNumeroParcela;
    property Valor : extended read FValor write FValor;
    property Descricao : string read FDescricao write FDescricao;
    property Observacao : string read FObservacao write FObservacao;
  end;

  TAlteracaoContrato_0000 = class( TTXT_PEF )
  private
    Freg9999: TTXTFilhos;
    Freg0100: TTXTFilhos;
    Freg0200: TTXTFilhos;
    FcnpjMAtriz: string;
    FNumeroContratoFrete: string;
    FViagem: string;
    FcnpjFilial: string;
    FCIOT: string;
    FObservacao: string;
  public
    constructor create;
    destructor destroy; override;
  published
    property cnpjMatriz : string read FcnpjMAtriz write FcnpjMAtriz;
    property cnpjFilial : string read FcnpjFilial write FcnpjFilial;
    property viagem : string read FViagem write FViagem;
    property NumeroContratoFrete : string read FNumeroContratoFrete write FNumeroContratoFrete;
    property CIOT : string read FCIOT write FCIOT;
    property Observacao : string read FObservacao write FObservacao;
    property reg0100 : TTXTFilhos read Freg0100;
    function add0100 : TAlteracaoContrato_0100;
    property reg0200 : TTXTFilhos read Freg0200;
    function add0200 : TAlteracaoContrato_0200;
    property reg9999 : TTXTFilhos read Freg9999;
    function add9999 : TAlteracaoContrato_9999;
  end;

  TAlteracaoContrato_ret_0001 = class( TTXT_PEF )
  private
    FDataHoraRetorno: TDateTime;
  public
    constructor create;
  published
    property DataHoraRetorno : TDateTime read FDataHoraRetorno write FDataHoraRetorno;
  end;

  TAlteracaoContrato_ret_0000 = class( TTXT_PEF )
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
    function add0001 : TAlteracaoContrato_ret_0001;
  end;

implementation

uses SysUtils;

{ TAlteracaoContrato_0000 }

function TAlteracaoContrato_0000.add0100: TAlteracaoContrato_0100;
begin
  result := TAlteracaoContrato_0100.create;
  Freg0100.Add( Result );
end;

function TAlteracaoContrato_0000.add0200: TAlteracaoContrato_0200;
begin
  result := TAlteracaoContrato_0200.create;
  Freg0200.Add( Result );
end;

function TAlteracaoContrato_0000.add9999: TAlteracaoContrato_9999;
begin
  result := TAlteracaoContrato_9999.create;
  Freg9999.Add( Result );
end;

constructor TAlteracaoContrato_0000.create;
begin
   inherited;
   FRegistro := '0000';
   Fversao   := '1.00';
   Freg9999 := TTXTFilhos.Create;
   Freg0100 := TTXTFilhos.Create;
   Freg0200 := TTXTFilhos.Create;
end;

destructor TAlteracaoContrato_0000.destroy;
begin
  Freg9999.free;
  Freg0100.Free;
  Freg0200.Free;
  inherited;
end;

{ TAlteracaoContrato_ret_0000 }

function TAlteracaoContrato_ret_0000.add0001: TAlteracaoContrato_ret_0001;
begin
   result := TAlteracaoContrato_ret_0001.create;
   Freg0001.Add( result );
end;

constructor TAlteracaoContrato_ret_0000.create;
begin
   inherited;
   FRegistro := '0000';
   Fversao   := '1.00';
   Freg0001 := TTXTFilhos.Create;
end;

destructor TAlteracaoContrato_ret_0000.destroy;
begin
  Freg0001.free;
  inherited;
end;

procedure TAlteracaoContrato_ret_0000.SetDescricao(const Value: string);
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

procedure TAlteracaoContrato_ret_0000.SetmotivoRetorno(const Value: string);
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

{ TAlteracaoContrato_ret_0001 }

constructor TAlteracaoContrato_ret_0001.create;
begin
   inherited;
   FRegistro := '0001';
   Fversao   := '1.00';
end;

{ TAlteracaoContrato_9999 }

constructor TAlteracaoContrato_9999.create;
begin
   inherited;
   FRegistro := '9999';
   Fversao   := '1.00';
end;

{ TAlteracaoContrato_0100 }

constructor TAlteracaoContrato_0100.create;
begin
   inherited;
   FRegistro := '0100';
   Fversao   := '1.00';
end;

destructor TAlteracaoContrato_0100.destroy;
begin

  inherited;
end;

procedure TAlteracaoContrato_0100.SetTipoParcela(const Value: string);
begin
  if Pos( '-'+value+'-', '-ADT-SLD-CUS-') = 0 then
    raise exception.Create('Tipo da parcela inválida! ['+value+']');

  FTipoParcela := Value;
end;

{ TAlteracaoContrato_0200 }

constructor TAlteracaoContrato_0200.create;
begin
   inherited;
   FRegistro := '0200';
   Fversao   := '1.00';
end;

destructor TAlteracaoContrato_0200.destroy;
begin

  inherited;
end;

end.
