unit urdc_ManterTransportador_v1_00;

Interface
uses
  Classes,InvokeRegistry,
  urdc_TiposPadrao_v1_00;

type
  tTranportadorRetorno = class(TRemotable)
  private
    FSitucaoTransportadorANTT: boolean;
    FCNPJCPF: tCNPJCPF;
    FExcecao: tExcecao;
    FMotoristas: tArrayMotoristas;
    FStatusRetorno: tStatusRetorno;
    FVeiculos: tArrayVeiculos;
    FRNTRCTransportador: tRNTRCType;  
    FCartao: tCartaoRetorno;
  public
    destructor destroy;
    constructor create;
  published
    property RNTRCTransportador: tRNTRCType read FRNTRCTransportador write FRNTRCTransportador;
    property CNPJCPF: tCNPJCPF read FCNPJCPF write FCNPJCPF;
    property SitucaoTransportadorANTT: boolean read FSitucaoTransportadorANTT write FSitucaoTransportadorANTT;
    property StatusRetorno: tStatusRetorno read FStatusRetorno write FStatusRetorno;
    property Excecao: tExcecao read FExcecao write FExcecao;
    property Veiculos: tArrayVeiculos read FVeiculos write FVeiculos; // of tVeiculos
    property Motoristas: tArrayMotoristas read FMotoristas write FMotoristas; // of tMotoristas
    property Cartao: tCartaoRetorno read FCartao write FCartao;
    function addVeiculos : tVeiculos;
    function addMotoristas : tMotoristas;
  end;
  tArrayTranportadorRetorno = array of tTranportadorRetorno;

type
  tManterTransportadorResponse = class(TRemotable)
  private
    FRetornoMensagem: tRetornoMensagem;
    FTranportadorRetorno: tArrayTranportadorRetorno;
    Ffaultcode: string;
    Ffaultstring: string;
    procedure Setfaultcode(const Value: string);
    procedure SetFaultstring(const Value: string);
  public
    constructor create;
    destructor destroy;
  published
    function addTranportadorRetorno : tTranportadorRetorno;
    property RetornoMensagem: tRetornoMensagem read FRetornoMensagem write FRetornoMensagem;
    property TranportadorRetorno: tArrayTranportadorRetorno read FTranportadorRetorno write FTranportadorRetorno; // of tTranportadorRetorno
    property faultcode : string read Ffaultcode write Setfaultcode;
    property faultstring : string read Ffaultstring write SetFaultstring;
  end;

type
  tDadosTransportador = class(TRemotable)
  private
    FContato: tContato;
    FEndereco: tEndereco;
    FMotorista: tArrayMotorista;
    FNumeroCartao: tNumeroCartao;
    FTransportador: tTransportador;
    FVeiculo: tArrayVeiculo;
    FTipoTransportador: string;
  public
    constructor create;
    destructor destroy; override;
    function addVeiculo : tveiculo;
    function addmotorista : tmotorista;
  published
    property Transportador: tTransportador read FTransportador write FTransportador;
    property TipoTransportador : string read FTipoTransportador write FTipoTransportador;
    property Contato: tContato read FContato write FContato;
    property Endereco: tEndereco read FEndereco write FEndereco;
    property Veiculo: tArrayVeiculo read FVeiculo write FVeiculo; // of tVeiculo
    property Motorista: tArrayMotorista read FMotorista write FMotorista; // of tMotorista
    property NumeroCartao: tNumeroCartao read FNumeroCartao write FNumeroCartao;
  end;
  tArrayDadosTransportador = array of tDadosTransportador;

type
  tListaTransportador = class(TRemotable)
  private
    FValidaFrotaANTT: boolean;
    FValidaTransportadorANTT: boolean;
    FDadosTransportador: tArrayDadosTransportador;
  public
    destructor destroy;
    function addDadosTransportador : tDadosTransportador;
  published
    property DadosTransportador: tArrayDadosTransportador read FDadosTransportador write FDadosTransportador; // of tDadosTransportador
    property ValidaTransportadorANTT: boolean read FValidaTransportadorANTT write FValidaTransportadorANTT;
    property ValidaFrotaANTT: boolean read FValidaFrotaANTT write FValidaFrotaANTT;
  end;

type
  tManterTransportadorRequest = class(TRemotable)
  private
    FIdClienteResponsavel: tIdClienteResponsavel;
    FIdentificacaoIntegracao: tIdentificacaoIntegracao;
    FListaTransportador: tListaTransportador;
    FOperacao: tOperacao;
  public
    destructor destroy;
    constructor create;
  published
    property IdentificacaoIntegracao: tIdentificacaoIntegracao read FIdentificacaoIntegracao write FIdentificacaoIntegracao;
    property Operacao: tOperacao read FOperacao write FOperacao;
    property IdClienteResponsavel: tIdClienteResponsavel read FIdClienteResponsavel write FIdClienteResponsavel;
    property ListaTransportador: tListaTransportador read FListaTransportador write FListaTransportador;
  end;

type
  tManterTransportador = class(TRemotable)
  private
    FManterTransportadorRequest: tManterTransportadorRequest;
    FManterTransportadorResponse: tManterTransportadorResponse;
  published
    property ManterTransportadorRequest: tManterTransportadorRequest read FManterTransportadorRequest write FManterTransportadorRequest;
    property ManterTransportadorResponse: tManterTransportadorResponse read FManterTransportadorResponse write FManterTransportadorResponse;
  end;

implementation

{ tListaTransportador }

function tListaTransportador.addDadosTransportador: tDadosTransportador;
begin
   SetLength( FDadosTransportador, length( FDadosTransportador) + 1);
   result := tDadosTransportador.create;
   FDadosTransportador[ length( FDadosTransportador ) - 1] := result;
end;

destructor tListaTransportador.destroy;
var
   vii : integer;
begin
    for vii:=0 to length( FDadosTransportador  ) -1 do FDadosTransportador[vii].Free;
end;

{ tManterTransportadorRequest }

constructor tManterTransportadorRequest.create;
begin
  FIdentificacaoIntegracao := tIdentificacaoIntegracao.create;
  FListaTransportador := TListaTransportador.create;
end;

destructor tManterTransportadorRequest.destroy;
begin
    if assigned(FIdentificacaoIntegracao ) then FIdentificacaoIntegracao.free;
    if assigned(FListaTransportador ) then FListaTransportador.free;
end;

{ tTranportadorRetornoType }

function tTranportadorRetorno.addMotoristas: tMotoristas;
begin
   SetLength( FMotoristas, length( FMotoristas) + 1);
   result := tMotoristas.create;
   FMotoristas[ length( FMotoristas ) - 1] := result;
end;

function tTranportadorRetorno.addVeiculos: tVeiculos;
begin
   SetLength( FVeiculos, length( FVeiculos) + 1);
   result := tVeiculos.create;
   FVeiculos[ length( FVeiculos ) - 1] := result;
end;

constructor tTranportadorRetorno.create;
begin
  FExcecao := tExcecao.Create;
  FCartao := tCartaoRetorno.Create;
end;

destructor tTranportadorRetorno.destroy;
var
   vii : integer;
begin
    for vii:=0 to length( FVeiculos  ) -1 do FVeiculos[vii].Free;
    for vii:=0 to length( FMotoristas  ) -1 do FMotoristas[vii].Free;
    FExcecao.free;
    cartao.free;
end;

{ tDadosTransportador }

function tDadosTransportador.addmotorista: tmotorista;
begin
   SetLength( FMotorista, length( FMotorista) + 1);
   result := tMotorista.create;
   FMotorista[ length( FMotorista ) - 1] := result;
end;

function tDadosTransportador.addVeiculo: tveiculo;
begin
   SetLength( FVeiculo, length( FVeiculo) + 1);
   result := tVeiculo.create;
   FVeiculo[ length( FVeiculo ) - 1] := result;
end;

constructor tDadosTransportador.create;
begin
   FTransportador := tTransportador.Create;
   FContato       := tContato.CREATE;
   FEndereco      := tEndereco.create;
end;

destructor tDadosTransportador.destroy;
var
   vii : integer;
begin
  for vii:=0 to length( FMotorista  ) -1 do FMotorista[vii].Free;
  for vii:=0 to length( FVeiculo  ) -1 do FVeiculo[vii].Free;
  FTransportador.free;
  FContato.free;
  FEndereco.free;
  inherited;
end;

{ tManterTransportadorResponse }

function tManterTransportadorResponse.addTranportadorRetorno: tTranportadorRetorno;
begin
   SetLength( FTranportadorRetorno, length( FTranportadorRetorno) + 1);
   result := TTranportadorRetorno.create;
   FTranportadorRetorno[ length( FTranportadorRetorno ) - 1] := result;
end;

constructor tManterTransportadorResponse.create;
begin
  FRetornoMensagem := TRetornoMensagem.create;
end;

destructor tManterTransportadorResponse.destroy;
var
   vii : integer;
begin
  FRetornoMensagem.free;
  for vii:=0 to length( FTranportadorRetorno  ) -1 do FTranportadorRetorno[vii].Free;
end;

procedure tManterTransportadorResponse.Setfaultcode(const Value: string);
begin
  Ffaultcode := Value;
  RetornoMensagem.StatusRetorno := 'ERRO';
  RetornoMensagem.Excecao.TipoExcecao := 'WEBSERVER';
  RetornoMensagem.Excecao.CodigoExcecao := value;
end;

procedure tManterTransportadorResponse.SetFaultstring(const Value: string);
begin
  Ffaultstring := Value;
  RetornoMensagem.Excecao.MensagemExcecao := value;
end;

end.

