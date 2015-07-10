unit urdc_AutenticarCliente_v1_00;

Interface
uses
  Classes,InvokeRegistry,
  urdc_TiposPadrao_v1_00;

type
  tLoginIntegracao = string;

type
  tAutenticarClienteResponse = class(TRemotable)
  private
    FRetornoMensagem: tRetornoMensagem;      
  public
    destructor destroy;
    constructor create; override;
  published
    property RetornoMensagem: tRetornoMensagem read FRetornoMensagem write FRetornoMensagem;
  end;

type
  tAutenticarClienteRequest = class(TRemotable)
  private
    FChaveAutenticacao: string;
    FLoginIntegracao: string;
    FIdClienteRodocred: tIdClienteRodocred;
  public
    destructor destroy;
  published
    property IdClienteRodocred: tIdClienteRodocred read FIdClienteRodocred write FIdClienteRodocred;
    property LoginIntegracao: string read FLoginIntegracao write FLoginIntegracao;
    property ChaveAutenticacao: string read FChaveAutenticacao write FChaveAutenticacao;
  end;

type
  tAutenticarCliente = class(TRemotable)
  private
    FAutenticarClienteRequest: tAutenticarClienteRequest;
    FAutenticarClienteResponse: tAutenticarClienteResponse;
  public
    destructor destroy;
    function GetAutenticarClienteRequest : tAutenticarClienteRequest;
    function GetAutenticarClienteResponse : tAutenticarClienteResponse; 
  public
    property AutenticarClienteRequest: tAutenticarClienteRequest read FAutenticarClienteRequest write FAutenticarClienteRequest;
    property AutenticarClienteResponse: tAutenticarClienteResponse read FAutenticarClienteResponse write FAutenticarClienteResponse;
  end;

implementation


{ tAutenticarClienteResponse }

constructor tAutenticarClienteResponse.create;
begin
  inherited;
  FRetornoMensagem:= tRetornoMensagem.Create;
end;

destructor tAutenticarClienteResponse.destroy;
begin
    if assigned(FRetornoMensagem ) then FRetornoMensagem.free;

end;

{ tAutenticarClienteRequest }

destructor tAutenticarClienteRequest.destroy;
begin
end;

{ tAutenticarCliente }

destructor tAutenticarCliente.destroy;
begin
    if assigned(FAutenticarClienteRequest ) then FAutenticarClienteRequest.free;
    if assigned(FAutenticarClienteResponse ) then FAutenticarClienteResponse.free;

end;

function tAutenticarCliente.GetAutenticarClienteRequest: tAutenticarClienteRequest;
begin
   FAutenticarClienteRequest := TAutenticarClienteRequest.Create;
   result := FAutenticarClienteRequest;
end;

function tAutenticarCliente.GetAutenticarClienteResponse: tAutenticarClienteResponse;
begin
   FAutenticarClienteResponse := tAutenticarClienteResponse.Create;
   result := FAutenticarClienteResponse;
end;

end.

