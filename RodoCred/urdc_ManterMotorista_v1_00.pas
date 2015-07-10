unit urdc_ManterMotorista_v1_00;

Interface
uses
  Classes,InvokeRegistry,
  urdc_TiposPadrao_v1_00;

type
  tManterMotoristaResponse = class(TRemotable)
  private
    FMotoristas: tArrayMotoristas;
    FRetornoMensagem: tRetornoMensagem;    
  public
    destructor destroy;
  published
    property RetornoMensagem: tRetornoMensagem read FRetornoMensagem write FRetornoMensagem;
    property Motoristas: tArrayMotoristas read FMotoristas write FMotoristas; // of tMotoristas
  end;

type
  tManterMotoristaRequest = class(TRemotable)
  private
    FIdClienteResponsavel: tIdClienteResponsavel;
    FIdentificacaoIntegracao: tIdentificacaoIntegracao;
    FMotorista: tarrayMotorista;
    FOperacao: tOperacao;
    FTransportador: tTransportador;
  public
    destructor destroy;
  published
    property IdentificacaoIntegracao: tIdentificacaoIntegracao read FIdentificacaoIntegracao write FIdentificacaoIntegracao;
    property Operacao: tOperacao read FOperacao write FOperacao;
    property IdClienteResponsavel: tIdClienteResponsavel read FIdClienteResponsavel write FIdClienteResponsavel;
    property Transportador: tTransportador read FTransportador write FTransportador;
    property Motorista: tarrayMotorista read FMotorista write FMotorista; // of tMotorista
  end;

type
  tManterMotorista = class(TRemotable)
  private
    FManterMotoristaRequest: tManterMotoristaRequest;
    FManterMotoristaResponse: tManterMotoristaResponse;
  public
    destructor destroy;
  published
    property ManterMotoristaRequest: tManterMotoristaRequest read FManterMotoristaRequest write FManterMotoristaRequest;
    property ManterMotoristaResponse: tManterMotoristaResponse read FManterMotoristaResponse write FManterMotoristaResponse;
  end;

implementation


{ tManterMotoristaResponse }

destructor tManterMotoristaResponse.destroy;
var
   vii : integer;
begin
    for vii:=0 to length( FMotoristas  ) -1 do FMotoristas[vii].Free;
    if assigned(FRetornoMensagem ) then FRetornoMensagem.free;
end;

{ tManterMotoristaRequest }

destructor tManterMotoristaRequest.destroy;
var
   vii : integer;
begin
    for vii:=0 to length( FMotorista  ) -1 do FMotorista[vii].Free;
    if assigned(FIdentificacaoIntegracao ) then FIdentificacaoIntegracao.free;
    if assigned(FTransportador ) then FTransportador.free;
end;

{ tManterMotorista }

destructor tManterMotorista.destroy;
begin
    if assigned(FManterMotoristaRequest ) then FManterMotoristaRequest.free;
    if assigned(FManterMotoristaResponse ) then FManterMotoristaResponse.free;

end;

end.

