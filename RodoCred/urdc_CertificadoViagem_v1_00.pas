unit urdc_CertificadoViagem_v1_00;

Interface
uses
  Classes,InvokeRegistry,
  urdc_TiposPadrao_v1_00;

type
{  tRetornoMensagem = tobject;
  tIdentificacaoIntegracao = tobject;
  tIdClienteResponsavel = tobject;
}
  tCertificadoViagemResponse = class(TRemotable)
  private
    FRetornoMensagem: tRetornoMensagem; // (E)
    FLinkCertificado: string; // (E)
  public
    destructor Destroy; override;
    constructor create;
  published
    property RetornoMensagem: tRetornoMensagem read FRetornoMensagem write FRetornoMensagem;
    property LinkCertificado: string read FLinkCertificado write FLinkCertificado;
  end;

type
  tCertificadoViagemRequest = class(TRemotable)
  private
    FIdentificacaoIntegracao: tIdentificacaoIntegracao; // (E)
    FIdClienteResponsavel: tIdClienteResponsavel; // (E)
    FNumeroViagem: string;
  public
    destructor Destroy; override;
    constructor create;
  published
    property IdentificacaoIntegracao: tIdentificacaoIntegracao read FIdentificacaoIntegracao write FIdentificacaoIntegracao;
    property IdClienteResponsavel: tIdClienteResponsavel read FIdClienteResponsavel write FIdClienteResponsavel;
    property NumeroViagem: string read FNumeroViagem write FNumeroViagem;
  end;

type
  tCertificadoViagem = class(TRemotable)
  private
//    F_NameSpaceAlias: string;
    FCertificadoViagemRequest: tCertificadoViagemRequest; // (E)
    FCertificadoViagemResponse: tCertificadoViagemResponse; // (E)
  public
    destructor Destroy; override;
    
  published
    property CertificadoViagemRequest: tCertificadoViagemRequest read FCertificadoViagemRequest write FCertificadoViagemRequest;
    property CertificadoViagemResponse: tCertificadoViagemResponse read FCertificadoViagemResponse write FCertificadoViagemResponse;
  end;

implementation

{ tCertificadoViagemResponse }

constructor tCertificadoViagemResponse.create;
begin
  FRetornoMensagem := tRetornoMensagem.create;
end;

destructor tCertificadoViagemResponse.Destroy;
begin
  if assigned( FRetornoMensagem ) then FRetornoMensagem.free;
  inherited;
end;

{ tCertificadoViagemRequest }

constructor tCertificadoViagemRequest.create;
begin
  FIdentificacaoIntegracao := tIdentificacaoIntegracao.Create;
end;

destructor tCertificadoViagemRequest.Destroy;
begin
  if assigned(FIdentificacaoIntegracao ) then FIdentificacaoIntegracao.free;
  inherited;
end;

{ tCertificadoViagem }

destructor tCertificadoViagem.Destroy;
begin
  if assigned(FCertificadoViagemRequest) then FCertificadoViagemRequest.free;
  if assigned(FCertificadoViagemResponse) then FCertificadoViagemResponse.free;

  inherited;
end;

end.
