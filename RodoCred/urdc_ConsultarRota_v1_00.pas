unit urdc_ConsultarRota_v1_00;

interface
uses
  Classes, InvokeRegistry,
  urdc_TiposPadrao_v1_00;

type
  TFiltroConsultaRota = class( TRemotable )
  private
    FNomeRota: string;
  published
    property NomeRota : string read FNomeRota write FNomeRota;
  end;

  TConsultarRotasRequest  = class( TRemotable )
  private
    FFiltroConsultaRota: TFiltroConsultaRota;
    FIdClienteResponsavel: tIdClienteResponsavel;
    FIdentificacaoIntegracao: tIdentificacaoIntegracao;
  public
    constructor create;
    destructor destroy;
  published
    property IdentificacaoIntegracao: tIdentificacaoIntegracao read FIdentificacaoIntegracao write FIdentificacaoIntegracao;
    property IdClienteResponsavel: tIdClienteResponsavel read FIdClienteResponsavel write FIdClienteResponsavel;
    property FiltroConsultaRota : TFiltroConsultaRota read FFiltroConsultaRota write FFiltroConsultaRota;
  end;

  TRotaType = class( TRemotable )
  private
    FTempoTota: string;
    FNomeRota: string;
    FCodigoRota: string;
    FDistanciaTotal: string;
  published
    property CodigoRota : string read FCodigoRota write FCodigoRota;
    property NomeRota : string read FNomeRota write FNomeRota;
    property DistanciaTotal : string read FDistanciaTotal write FDistanciaTotal;
    property TempoTotal : string read FTempoTota write FTempoTota;
  end;
  TRota = array of TRotaType;

  TListaRotas = class( TRemotable )
  private
    FRota: TRota;
  public
    constructor create;
    destructor destroy;
  published
    property Rota : TRota read FRota write FRota;
    function addRotaType : TRotaType;
  end;

  TConsultarRotasResponse  = class( TRemotable )
  private
    FListaRotas: TListaRotas;
    FRetornoMensagem: tRetornoMensagem;
  public
    constructor create;
    destructor destroy;
  published
    property RetornoMensagem : tRetornoMensagem read FRetornoMensagem write FRetornoMensagem;
    property ListaRotas : TListaRotas read FListaRotas write FListaRotas;
  end;

implementation

{ TConsultarRotasResponse }

constructor TConsultarRotasResponse.create;
begin
    FListaRotas:= TListaRotas.create;
    FRetornoMensagem:= tRetornoMensagem.create;
end;

destructor TConsultarRotasResponse.destroy;
begin
    FListaRotas.free;
    FRetornoMensagem.free;
end;

{ TConsultarRotasRequest }

constructor TConsultarRotasRequest.create;
begin
    FFiltroConsultaRota:= TFiltroConsultaRota.Create;
    FIdentificacaoIntegracao:= tIdentificacaoIntegracao.Create;
end;

destructor TConsultarRotasRequest.destroy;
begin
    FFiltroConsultaRota.free;
    FIdentificacaoIntegracao.free;
end;

{ TListaRotas }

function TListaRotas.addRotaType: TRotaType;
begin
   SetLength( FRota, length( FRota) + 1);
   result := TRotaType.create;
   FRota[ length( FRota ) - 1] := result;
end;

constructor TListaRotas.create;
begin
//  FRota:= TRota.create;
end;

destructor TListaRotas.destroy;
var
   vii : integer;
begin
    for vii:=0 to length( FRota  ) -1 do FRota[vii].Free;
end;

end.
