unit urdc_ManterViagem_v1_00;

Interface
uses
  Classes, InvokeRegistry,
  urdc_TiposPadrao_v1_00;
type
  tManterViagemResponse = class(TRemotable) 
  private
    FCIOT: tCIOT;
    FNumeroViagem: tNumeroViagem;
    FPedidoValePedagio: tPedidoValePedagio;
    FResumoFinanceiro: tResumoFinanceiro;
    FRetornoMensagem: tRetornoMensagem;
    FSituacaoViagem: tSituacaoViagem;
  public
    destructor destroy;
    constructor create; override;
  published
    property RetornoMensagem: tRetornoMensagem read FRetornoMensagem write FRetornoMensagem;
    property NumeroViagem: tNumeroViagem read FNumeroViagem write FNumeroViagem;
    property CIOT: tCIOT read FCIOT write FCIOT;
    property PedidoValePedagio: tPedidoValePedagio read FPedidoValePedagio write FPedidoValePedagio;
    property ResumoFinanceiro: tResumoFinanceiro read FResumoFinanceiro write FResumoFinanceiro;
    property SituacaoViagem: tSituacaoViagem read FSituacaoViagem write FSituacaoViagem;
  end;

type
  tManterViagemRequest = class(TRemotable)
  private
    FDadosBancarios: tDadosBancarios;    
    FDadosViagem: tDadosViagem;
    FDocumentosViagem: tDocumentosViagem;
    FEnvolvidosTransporteViagem: tEnvolvidosTransporteViagem;
    FIdClienteResponsavel: tIdClienteResponsavel;
    FIdentificacaoIntegracao: tIdentificacaoIntegracao;
    FImpostosViagem: tImpostosViagem;
    FMeioPagamentoTransporte: tMeioPagamentoTransporte;
    FMotoristaViagem: tMotoristaViagem;
    FOperacao: tOperacao;
    FProgramacaoViagem: tProgramacaoViagem;
    FRotaViagem: tRotaViagem;
    FTipoViagem: tTipoViagem;
    FTransportador: tTransportador;
    FValePedagioViagem: tValePedagioViagem;
    FValoresViagem: tValoresViagem;
    FVeiculosViagem: tVeiculosViagem;
    FClausulasViagem: tClausulasViagem;
  public
    destructor destroy;
    function GetIdentificacaoIntegracao : tIdentificacaoIntegracao;
    function GetDadosViagem: tDadosViagem;
    function GetTransportador: tTransportador;
    function GetRotaViagem: tRotaViagem;
    function GetValePedagioViagem: tValePedagioViagem;
    function AddVeiculosViagem: tVeiculosViagemType;
    function AddMotoristaViagem: tMotoristaViagemType;
    function AddClausulasViagem: tClausulasViagemType;
    function GetEnvolvidosTransporteViagem: tEnvolvidosTransporteViagem;
    function GetValoresViagem: tValoresViagem;
    function GetImpostosViagem: tImpostosViagem;
    function GetDadosBancarios: tDadosBancarios;
    function GetDocumentosViagem: tDocumentosViagem;
    function GetProgramacaoViagem: tProgramacaoViagem;
  published
    property IdentificacaoIntegracao: tIdentificacaoIntegracao read FIdentificacaoIntegracao write FIdentificacaoIntegracao;
    property IdClienteResponsavel: tIdClienteResponsavel read FIdClienteResponsavel write FIdClienteResponsavel;
    property Operacao: tOperacao read FOperacao write FOperacao;
    property TipoViagem: tTipoViagem read FTipoViagem write FTipoViagem;
    property MeioPagamentoTransporte: tMeioPagamentoTransporte read FMeioPagamentoTransporte write FMeioPagamentoTransporte;
    property DadosViagem: tDadosViagem read FDadosViagem write FDadosViagem;
    property Transportador: tTransportador read FTransportador write FTransportador;
    property RotaViagem: tRotaViagem read FRotaViagem write FRotaViagem;
    property VeiculosViagem: tVeiculosViagem read FVeiculosViagem write FVeiculosViagem; // of tVeiculosViagem
    property ValePedagioViagem: tValePedagioViagem read FValePedagioViagem write FValePedagioViagem;
    property MotoristaViagem: tMotoristaViagem read FMotoristaViagem write FMotoristaViagem; // of tMotoristaViagem
    property EnvolvidosTransporteViagem: tEnvolvidosTransporteViagem read FEnvolvidosTransporteViagem write FEnvolvidosTransporteViagem;
    property ValoresViagem: tValoresViagem read FValoresViagem write FValoresViagem;
    property ImpostosViagem: tImpostosViagem read FImpostosViagem write FImpostosViagem;
    property DadosBancarios: tDadosBancarios read FDadosBancarios write FDadosBancarios;
    property DocumentosViagem: tDocumentosViagem read FDocumentosViagem write FDocumentosViagem;
    property ProgramacaoViagem: tProgramacaoViagem read FProgramacaoViagem write FProgramacaoViagem;
    property ClausulasViagem: tClausulasViagem read FClausulasViagem write FClausulasViagem;
  end;

type
  tMaterViagem = class(TRemotable)
  private
    FManterViagemRequest: tManterViagemRequest;
    FManterViagemResponse: tManterViagemResponse;
  public
    destructor destroy;
    function GetManterViagemRequest() : tManterViagemRequest;
    function GetManterViagemResponse() : tManterViagemResponse;
  published
    property ManterViagemRequest: tManterViagemRequest read FManterViagemRequest write FManterViagemRequest;
    property ManterViagemResponse: tManterViagemResponse read FManterViagemResponse write FManterViagemResponse;
  end;

implementation


{ tManterViagemResponse }

constructor tManterViagemResponse.create;
begin
  inherited;
  FRetornoMensagem := tRetornoMensagem.create;
  FCIOT            := tCIOT.Create;
  FPedidoValePedagio:= tPedidoValePedagio.Create;
  FResumoFinanceiro := tResumoFinanceiro.Create;
end;

destructor tManterViagemResponse.destroy;
begin
    if assigned(FRetornoMensagem ) then FRetornoMensagem.free;
    if assigned(FCIOT ) then FCIOT.free;
    if assigned(FPedidoValePedagio ) then FPedidoValePedagio.free;
    if assigned(FResumoFinanceiro ) then FResumoFinanceiro.free;
end;

{ tManterViagemRequest }

function tManterViagemRequest.AddClausulasViagem: tClausulasViagemType;
var v : tClausulasViagemType;
begin
   SetLength( FClausulasViagem, length( FClausulasViagem) + 1);
   v := tClausulasViagemType.Create;
   FClausulasViagem[ length( FClausulasViagem) - 1] := v;
   result := v;
end;

function tManterViagemRequest.AddMotoristaViagem: tMotoristaViagemType;
var v : tMotoristaViagemType;
begin
   SetLength( FMotoristaViagem, length( FMotoristaViagem) + 1);
   v := tMotoristaViagemType.Create;
   FMotoristaViagem[ length( FMotoristaViagem) - 1] := v;
   result := v;
end;

function tManterViagemRequest.AddVeiculosViagem: tVeiculosViagemType;
begin
   SetLength( FVeiculosViagem, length( FVeiculosViagem) + 1);
   result := tVeiculosViagemType.create;
   FVeiculosViagem[ length( FVeiculosViagem ) - 1] := result;
end;

destructor tManterViagemRequest.destroy;
var
   vii : integer;
begin
    if assigned(FIdentificacaoIntegracao ) then FIdentificacaoIntegracao.free;
    if assigned(FDadosViagem ) then FDadosViagem.free;
    if assigned(FTransportador ) then FTransportador.free;
    if assigned(FRotaViagem ) then FRotaViagem.free;
    for vii:=0 to length( FVeiculosViagem ) -1 do FVeiculosViagem[vii].Free;
    if assigned(FValePedagioViagem ) then FValePedagioViagem.free;
    for vii:=0 to length( FMotoristaViagem ) -1 do FMotoristaViagem[vii].Free;
    if assigned(FEnvolvidosTransporteViagem ) then FEnvolvidosTransporteViagem.free;
    if assigned(FValoresViagem ) then FValoresViagem.free;
    if assigned(FImpostosViagem ) then FImpostosViagem.free;
    if assigned(FDadosBancarios ) then FDadosBancarios.free;
    FDocumentosViagem.Free;
    if assigned(FProgramacaoViagem ) then FProgramacaoViagem.free;
end;

function tManterViagemRequest.GetDadosBancarios: tDadosBancarios;
begin
   if not assigned( FDadosBancarios ) then FDadosBancarios:= tDadosBancarios.create;
   result := FDadosBancarios;
end;

function tManterViagemRequest.GetDadosViagem: tDadosViagem;
begin
   if not assigned( FDadosViagem ) then FDadosViagem:= tDadosViagem.create;
   result := FDadosViagem;
end;

function tManterViagemRequest.GetDocumentosViagem: tDocumentosViagem;
begin
   if not assigned( FDocumentosViagem ) then FDocumentosViagem:= tDocumentosViagem.create;
   result := FDocumentosViagem;
end;

function tManterViagemRequest.GetEnvolvidosTransporteViagem: tEnvolvidosTransporteViagem;
begin
   if not assigned( FEnvolvidosTransporteViagem ) then FEnvolvidosTransporteViagem:= tEnvolvidosTransporteViagem.create;
   result := FEnvolvidosTransporteViagem;
end;

function tManterViagemRequest.GetIdentificacaoIntegracao: tIdentificacaoIntegracao;
begin
   if not assigned( FIdentificacaoIntegracao ) then FIdentificacaoIntegracao:= tIdentificacaoIntegracao.create;
   result := FIdentificacaoIntegracao;
end;

function tManterViagemRequest.GetImpostosViagem: tImpostosViagem;
begin
   if not assigned( FImpostosViagem ) then FImpostosViagem:= tImpostosViagem.create;
   result := FImpostosViagem;
end;

function tManterViagemRequest.GetProgramacaoViagem: tProgramacaoViagem;
begin
   if not assigned( FProgramacaoViagem ) then FProgramacaoViagem:= tProgramacaoViagem.create;
   result := FProgramacaoViagem;
end;

function tManterViagemRequest.GetRotaViagem: tRotaViagem;
begin
   if not assigned( FRotaViagem ) then FRotaViagem:= tRotaViagem.create;
   result := FRotaViagem;
end;

function tManterViagemRequest.GetTransportador: tTransportador;
begin
   if not assigned( FTransportador ) then FTransportador:= tTransportador.create;
   result := FTransportador;
end;

function tManterViagemRequest.GetValePedagioViagem: tValePedagioViagem;
begin
   if not assigned( FValePedagioViagem ) then FValePedagioViagem:= tValePedagioViagem.create;
   result := FValePedagioViagem;
end;

function tManterViagemRequest.GetValoresViagem: tValoresViagem;
begin
   if not assigned( FValoresViagem ) then FValoresViagem:= tValoresViagem.create;
   result := FValoresViagem;
end;

{ tMaterViagem }

destructor tMaterViagem.destroy;
begin
    if assigned(FManterViagemRequest ) then FManterViagemRequest.free;
    if assigned(FManterViagemResponse ) then FManterViagemResponse.free;
end;

function tMaterViagem.GetManterViagemRequest: tManterViagemRequest;
begin
   if not assigned( FManterViagemRequest ) then
      FManterViagemRequest := tManterViagemRequest.Create;
   result := FManterViagemRequest;
end;

function tMaterViagem.GetManterViagemResponse: tManterViagemResponse;
begin
   if not assigned( FManterViagemResponse ) then
      FManterViagemResponse := tManterViagemResponse.Create;
   result := FManterViagemResponse;
end;

end.

