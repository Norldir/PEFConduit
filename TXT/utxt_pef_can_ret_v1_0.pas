{
 Tecinco Informática - Todos os direitos reservados - 2012.
 Autor: Norldir Kunkel
}


{
Exemplo utilização

with T0000.create do
try
  LoadFromFile( arquivo, msgRetorno );

  if motivoRetorno = 'I' then
  begin
    //grava situcao informativa
  end;
finally
  Free;
end;
}


unit utxt_pef_can_ret_v1_0;

interface
uses utxt_base;

type

  TCancelamento_0001 = class( TTXT_PEF )
  private
    FDataHoraRetorno: TDateTime;
  public
    constructor create;
  published
    property DataHoraRetorno : TDateTime read FDataHoraRetorno write FDataHoraRetorno;
  end;

  TCancelamento_0000 = class( TTXT_PEF )
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
    function add0001 : TCancelamento_0001;
  end;

implementation

uses SysUtils;

{ TCancelamento_0000 }

function TCancelamento_0000.add0001: TCancelamento_0001;
begin
   result := TCancelamento_0001.create;
   Freg0001.Add( Result );
end;

constructor TCancelamento_0000.create;
begin
   inherited;
   FRegistro := '0000';
   Fversao   := '1.00';
   Freg0001 := TTXTFilhos.create;
end;

destructor TCancelamento_0000.destroy;
begin
  Freg0001.Free;
  inherited;
end;

procedure TCancelamento_0000.SetDescricao(const Value: string);
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

procedure TCancelamento_0000.SetmotivoRetorno(const Value: string);
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

{ TCancelamento_0001 }

constructor TCancelamento_0001.create;
begin
   inherited;
   FRegistro := '0001';
   Fversao   := '1.00';
end;

end.
