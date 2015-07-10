unit urdc_ManterVeiculo_v1_00;

Interface
uses
  Classes,InvokeRegistry,
  urdc_TiposPadrao_v1_00;

type
  tListaVeiculos = class(TRemotable)
  private
    FValidaFrotaANTT: tValidaFrotaANTT;     
    FVeiculo: tArrayVeiculo;
  public
    destructor destroy;
    function addVeiculo : tVeiculo;
  published
    property Veiculo: tArrayVeiculo read FVeiculo write FVeiculo; // of tVeiculo
  end;

type
  tCadastrarVeiculoResponse = class(TRemotable)
  private
    FListaVeiculos: tListaVeiculos;
    FRetornoMensagem: tRetornoMensagem;
  public
    destructor destroy;
  published
    property RetornoMensagem: tRetornoMensagem read FRetornoMensagem write FRetornoMensagem;
    property ListaVeiculos: tListaVeiculos read FListaVeiculos write FListaVeiculos;
  end;

type
  tCadastrarVeiculoRequest = class(TRemotable)
  private
    FIdClienteResponsavel: tIdClienteResponsavel;
    FIdentificacaoIntegracao: tIdentificacaoIntegracao;
    FListaVeiculos: tListaVeiculos;
    FOperacao: tOperacao;
    FTransportador: tTransportador;
  public
    destructor destroy;
    constructor create;
  published
    property IdentificacaoIntegracao: tIdentificacaoIntegracao read FIdentificacaoIntegracao write FIdentificacaoIntegracao;
    property Operacao: tOperacao read FOperacao write FOperacao;
    property IdClienteResponsavel: tIdClienteResponsavel read FIdClienteResponsavel write FIdClienteResponsavel;
    property Transportador: tTransportador read FTransportador write FTransportador;
    property ListaVeiculos: tListaVeiculos read FListaVeiculos write FListaVeiculos;
  end;

type
  tCadastrarVeiculo = class(TRemotable)
  private
    FCadastrarVeiculoRequest: tCadastrarVeiculoRequest;
    FCadastrarVeiculoResponse: tCadastrarVeiculoResponse;
  public
     destructor destroy;
  published
    property CadastrarVeiculoRequest: tCadastrarVeiculoRequest read FCadastrarVeiculoRequest write FCadastrarVeiculoRequest;
    property CadastrarVeiculoResponse: tCadastrarVeiculoResponse read FCadastrarVeiculoResponse write FCadastrarVeiculoResponse;
  end;

implementation

{ tCadastrarVeiculoResponse }

destructor tCadastrarVeiculoResponse.destroy;
begin
    if assigned(FRetornoMensagem ) then FRetornoMensagem.free;
    if assigned(FListaVeiculos ) then FListaVeiculos.free;
end;

{ tCadastrarVeiculoRequest }

constructor tCadastrarVeiculoRequest.create;
begin
    IdentificacaoIntegracao:= tIdentificacaoIntegracao.create;
    Transportador:= tTransportador.create;
    ListaVeiculos:= tListaVeiculos.Create;
end;

destructor tCadastrarVeiculoRequest.destroy;
begin
    if assigned(FIdentificacaoIntegracao ) then FIdentificacaoIntegracao.free;
    if assigned(FTransportador ) then FTransportador.free;
    if assigned(FListaVeiculos ) then FListaVeiculos.free;
end;

{ tCadastrarVeiculo }

destructor tCadastrarVeiculo.destroy;
begin
    if assigned(FCadastrarVeiculoRequest ) then FCadastrarVeiculoRequest.free;
    if assigned(FCadastrarVeiculoResponse ) then FCadastrarVeiculoResponse.free;

end;

{ tListaVeiculos }

function tListaVeiculos.addVeiculo: tVeiculo;
var v : tVeiculo;
begin
   SetLength( FVeiculo, length( FVeiculo) + 1);
   v := tVeiculo.Create;
   FVeiculo[ length( FVeiculo ) - 1] := v;
   result := v;
end;

destructor tListaVeiculos.destroy;
var
   vii : integer;
begin
    for vii:=0 to length( FVeiculo  ) -1 do FVeiculo[vii].Free;
end;

end.

