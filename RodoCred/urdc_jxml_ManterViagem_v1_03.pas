unit urdc_jxml_ManterViagem_v1_03;

Interface
uses
  Classes,
  JanXMLParser2,
  uXMLTools,
  urdc_jxml_TiposPadrao_v1_00,
  urdc_jxml_TiposPadrao_v1_01,
  urdc_jxml_TiposPadrao_v1_02,
  urdc_jxml_TiposPadrao_v1_03;

// targetNameSpace: https://ws.rodocred.com.br/
// NameSpacePrefix: rdc
// Date of Schema : 21/09/2012 11:41:28
// Translationdate: 11/04/2013 10:17:32
//
//   includes xs=http://www.w3.org/2001/XMLSchema

const
  snManterViagemResponse = 'ManterViagemResponse';
  snManterViagemResponse_RetornoMensagem = 'RetornoMensagem';
  snManterViagemResponse_NumeroViagem = 'NumeroViagem';
  snManterViagemResponse_CIOT = 'CIOT';
  snManterViagemResponse_ListaPedidosValePedagio = 'ListaPedidosValePedagio';
  snManterViagemResponse_ResumoFinanceiro = 'ResumoFinanceiro';
  snManterViagemResponse_SituacaoViagem = 'SituacaoViagem';
  snManterViagemResponse_DetalheProgramacaoViagem = 'DetalheProgramacaoViagem';

type
  tManterViagemResponse = class
  private
    F_NameSpaceAlias: string;
    FRetornoMensagem: tRetornoMensagem; // (E)
    FNumeroViagem: tNumeroViagem; // (E)
    FCIOT: tCIOT; // (E)
    FCIOT_IsSet_: boolean;
    FListaPedidosValePedagio: tListaPedidosValePedagio; // (E)
    FListaPedidosValePedagio_IsSet_: boolean;
    FResumoFinanceiro: tResumoFinanceiro; // (E)
    FSituacaoViagem: tSituacaoViagem; // (E)
    FSituacaoViagem_IsSet_: boolean;
    FDetalheProgramacaoViagem: tDetalheProgramacaoViagem; // (E)
    FDetalheProgramacaoViagem_IsSet_: boolean;
    procedure SetCIOT(value:tCIOT);
    procedure SetListaPedidosValePedagio(value:tListaPedidosValePedagio);
    procedure SetSituacaoViagem(value:tSituacaoViagem);
    procedure SetDetalheProgramacaoViagem(value:tDetalheProgramacaoViagem);
  public
    class function CreateFromXmlString(s: string): tManterViagemResponse;
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    function GetAsString: string; // (E)
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property RetornoMensagem: tRetornoMensagem read FRetornoMensagem write FRetornoMensagem;
    property NumeroViagem: tNumeroViagem read FNumeroViagem write FNumeroViagem;
    property CIOT: tCIOT read FCIOT write SetCIOT;
    property CIOT_IsSet_:boolean read FCIOT_IsSet_;
    property ListaPedidosValePedagio: tListaPedidosValePedagio read FListaPedidosValePedagio write SetListaPedidosValePedagio;
    property ListaPedidosValePedagio_IsSet_:boolean read FListaPedidosValePedagio_IsSet_;
    property ResumoFinanceiro: tResumoFinanceiro read FResumoFinanceiro write FResumoFinanceiro;
    property SituacaoViagem: tSituacaoViagem read FSituacaoViagem write SetSituacaoViagem;
    property SituacaoViagem_IsSet_:boolean read FSituacaoViagem_IsSet_;
    property DetalheProgramacaoViagem: tDetalheProgramacaoViagem read FDetalheProgramacaoViagem write SetDetalheProgramacaoViagem;
    property DetalheProgramacaoViagem_IsSet_:boolean read FDetalheProgramacaoViagem_IsSet_;
  end;

const
  snManterViagemRequest = 'ManterViagemRequest';
  snManterViagemRequest_IdentificacaoIntegracao = 'IdentificacaoIntegracao';
  snManterViagemRequest_IdClienteResponsavel = 'IdClienteResponsavel';
  snManterViagemRequest_Operacao = 'Operacao';
  snManterViagemRequest_TipoViagem = 'TipoViagem';
  snManterViagemRequest_DadosViagem = 'DadosViagem';
  snManterViagemRequest_Transportador = 'Transportador';
  snManterViagemRequest_RotaViagem = 'RotaViagem';
  snManterViagemRequest_VeiculosViagem = 'VeiculosViagem';
  snManterViagemRequest_ValePedagioViagem = 'ValePedagioViagem';
  snManterViagemRequest_MotoristaViagem = 'MotoristaViagem';
  snManterViagemRequest_EnvolvidosTransporteViagem = 'EnvolvidosTransporteViagem';
  snManterViagemRequest_ValoresViagem = 'ValoresViagem';
  snManterViagemRequest_ImpostosViagem = 'ImpostosViagem';
  snManterViagemRequest_DadosBancarios = 'DadosBancarios';
  snManterViagemRequest_DocumentosViagem = 'DocumentosViagem';
  snManterViagemRequest_ProgramacaoViagem = 'ProgramacaoViagem';
  snManterViagemRequest_ClausulasViagem = 'ClausulasViagem';

type
  tManterViagemRequest = class
  private
    F_NameSpaceAlias: string;
    FIdentificacaoIntegracao: tIdentificacaoIntegracao; // (E)
    FIdClienteResponsavel: tIdClienteResponsavel; // (E)
    FIdClienteResponsavel_IsSet_: boolean;
    FOperacao: tOperacao; // (E)
    FTipoViagem: tTipoViagem; // (E)
    FDadosViagem: tDadosViagem; // (E)
    FTransportador: tTransportador; // (E)
    FTransportador_IsSet_: boolean;
    FRotaViagem: tRotaViagem; // (E)
    FRotaViagem_IsSet_: boolean;
    FVeiculosViagem: tManagedStringList; // of tVeiculosViagem(E)
    FValePedagioViagem: tValePedagioViagem; // (E)
    FValePedagioViagem_IsSet_: boolean;
    FMotoristaViagem: tManagedStringList; // of tMotoristaViagem(E)
    FEnvolvidosTransporteViagem: tEnvolvidosTransporteViagem; // (E)
    FEnvolvidosTransporteViagem_IsSet_: boolean;
    FValoresViagem: tValoresViagem; // (E)
    FImpostosViagem: tImpostosViagem; // (E)
    FImpostosViagem_IsSet_: boolean;
    FDadosBancarios: tDadosBancarios; // (E)
    FDadosBancarios_IsSet_: boolean;
    FDocumentosViagem: tDocumentosViagem; // (E)
    FDocumentosViagem_IsSet_: boolean;
    FProgramacaoViagem: tProgramacaoViagem; // (E)
    FProgramacaoViagem_IsSet_: boolean;
    FClausulasViagem: tManagedStringList; // of tClausulasViagem(E)
    procedure SetIdClienteResponsavel(value:tIdClienteResponsavel);
    procedure SetTransportador(value:tTransportador);
    procedure SetRotaViagem(value:tRotaViagem);
    procedure SetValePedagioViagem(value:tValePedagioViagem);
    procedure SetEnvolvidosTransporteViagem(value:tEnvolvidosTransporteViagem);
    procedure SetImpostosViagem(value:tImpostosViagem);
    procedure SetDadosBancarios(value:tDadosBancarios);
    procedure SetDocumentosViagem(value:tDocumentosViagem);
    procedure SetProgramacaoViagem(value:tProgramacaoViagem);
  public
    class function CreateFromXmlString(s: string): tManterViagemRequest;
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    function GetAsString: string; // (E)
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property IdentificacaoIntegracao: tIdentificacaoIntegracao read FIdentificacaoIntegracao write FIdentificacaoIntegracao;
    property IdClienteResponsavel: tIdClienteResponsavel read FIdClienteResponsavel write SetIdClienteResponsavel;
    property IdClienteResponsavel_IsSet_:boolean read FIdClienteResponsavel_IsSet_;
    property Operacao: tOperacao read FOperacao write FOperacao;
    property TipoViagem: tTipoViagem read FTipoViagem write FTipoViagem;
    property DadosViagem: tDadosViagem read FDadosViagem write FDadosViagem;
    property Transportador: tTransportador read FTransportador write SetTransportador;
    property Transportador_IsSet_:boolean read FTransportador_IsSet_;
    property RotaViagem: tRotaViagem read FRotaViagem write SetRotaViagem;
    property RotaViagem_IsSet_:boolean read FRotaViagem_IsSet_;
    property VeiculosViagem: tManagedStringList read FVeiculosViagem write FVeiculosViagem; // of tVeiculosViagem
    property ValePedagioViagem: tValePedagioViagem read FValePedagioViagem write SetValePedagioViagem;
    property ValePedagioViagem_IsSet_:boolean read FValePedagioViagem_IsSet_;
    property MotoristaViagem: tManagedStringList read FMotoristaViagem write FMotoristaViagem; // of tMotoristaViagem
    property EnvolvidosTransporteViagem: tEnvolvidosTransporteViagem read FEnvolvidosTransporteViagem write SetEnvolvidosTransporteViagem;
    property EnvolvidosTransporteViagem_IsSet_:boolean read FEnvolvidosTransporteViagem_IsSet_;
    property ValoresViagem: tValoresViagem read FValoresViagem write FValoresViagem;
    property ImpostosViagem: tImpostosViagem read FImpostosViagem write SetImpostosViagem;
    property ImpostosViagem_IsSet_:boolean read FImpostosViagem_IsSet_;
    property DadosBancarios: tDadosBancarios read FDadosBancarios write SetDadosBancarios;
    property DadosBancarios_IsSet_:boolean read FDadosBancarios_IsSet_;
    property DocumentosViagem: tDocumentosViagem read FDocumentosViagem write SetDocumentosViagem;
    property DocumentosViagem_IsSet_:boolean read FDocumentosViagem_IsSet_;
    property ProgramacaoViagem: tProgramacaoViagem read FProgramacaoViagem write SetProgramacaoViagem;
    property ProgramacaoViagem_IsSet_:boolean read FProgramacaoViagem_IsSet_;
    property ClausulasViagem: tManagedStringList read FClausulasViagem write FClausulasViagem; // of tClausulasViagem
  end;

const
  snManterViagem = 'ManterViagem';
  snManterViagem_ManterViagemRequest = 'ManterViagemRequest';
  snManterViagem_ManterViagemResponse = 'ManterViagemResponse';

type
  tManterViagem = class
  private
    F_NameSpaceAlias: string;
    FManterViagemRequest: tManterViagemRequest; // (E)
    FManterViagemResponse: tManterViagemResponse; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ManterViagemRequest: tManterViagemRequest read FManterViagemRequest write FManterViagemRequest;
    property ManterViagemResponse: tManterViagemResponse read FManterViagemResponse write FManterViagemResponse;
  end;

implementation
uses
  SysUtils,
  mylib;

const
  thisNamespaceURI = 'https://ws.rodocred.com.br/';
  defNamespaceAlias = '';

{ tManterViagemResponse }

class function tManterViagemResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tManterViagemResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tManterViagemResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
//  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snManterViagemResponse_RetornoMensagem)
      and ((thisURI='') or (tRetornoMensagem._nsURI_ = thisURI)) then
      FRetornoMensagem := tRetornoMensagem.Create(xn)
    else if (sn = snManterViagemResponse_NumeroViagem) then
      FNumeroViagem := xn.text
    else if (sn = snManterViagemResponse_CIOT)
      and ((thisURI='') or (tCIOT._nsURI_ = thisURI)) then
      FCIOT := tCIOT.Create(xn)
    else if (sn = snManterViagemResponse_ListaPedidosValePedagio)
      and ((thisURI='') or (tListaPedidosValePedagio._nsURI_ = thisURI)) then
      FListaPedidosValePedagio := tListaPedidosValePedagio.Create(xn)
    else if (sn = snManterViagemResponse_ResumoFinanceiro)
      and ((thisURI='') or (tResumoFinanceiro._nsURI_ = thisURI)) then
      FResumoFinanceiro := tResumoFinanceiro.Create(xn)
    else if (sn = snManterViagemResponse_SituacaoViagem) then
      FSituacaoViagem := xn.text
    else if (sn = snManterViagemResponse_DetalheProgramacaoViagem)
      and ((thisURI='') or (tDetalheProgramacaoViagem._nsURI_ = thisURI)) then
      FDetalheProgramacaoViagem := tDetalheProgramacaoViagem.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tManterViagemResponse.Destroy;
begin
  FRetornoMensagem.Free;
  FCIOT.Free;
  FListaPedidosValePedagio.Free;
  FResumoFinanceiro.Free;
  FDetalheProgramacaoViagem.Free;
  inherited;
end; // destructor ...

procedure tManterViagemResponse.SetCIOT(value:tCIOT);
begin
  FCIOT := value;
  FCIOT_IsSet_ := true;
end;

procedure tManterViagemResponse.SetListaPedidosValePedagio(value:tListaPedidosValePedagio);
begin
  FListaPedidosValePedagio := value;
  FListaPedidosValePedagio_IsSet_ := true;
end;

procedure tManterViagemResponse.SetSituacaoViagem(value:tSituacaoViagem);
begin
  FSituacaoViagem := value;
  FSituacaoViagem_IsSet_ := true;
end;

procedure tManterViagemResponse.SetDetalheProgramacaoViagem(value:tDetalheProgramacaoViagem);
begin
  FDetalheProgramacaoViagem := value;
  FDetalheProgramacaoViagem_IsSet_ := true;
end;

procedure tManterViagemResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ManterViagemResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Assigned(FRetornoMensagem) then
  begin
    xn := aNode.addChildByName(snManterViagemResponse_RetornoMensagem);
    FRetornoMensagem.Save(xn);
  end;

  if FNumeroViagem <> '' then
  begin
    xn := aNode.addChildByName(snManterViagemResponse_NumeroViagem);
    xn.text := FNumeroViagem;
  end;
  if Assigned(FCIOT) then
  begin
    xn := aNode.addChildByName(snManterViagemResponse_CIOT);
    FCIOT.Save(xn);
  end;
  if Assigned(FListaPedidosValePedagio) then
  begin
    xn := aNode.addChildByName(snManterViagemResponse_ListaPedidosValePedagio);
    FListaPedidosValePedagio.Save(xn);
  end;
  if Assigned(FResumoFinanceiro) then
  begin
    xn := aNode.addChildByName(snManterViagemResponse_ResumoFinanceiro);
    FResumoFinanceiro.Save(xn);
  end;
  if FSituacaoViagem <> '' then
  begin
    xn := aNode.addChildByName(snManterViagemResponse_SituacaoViagem);
    xn.text := FSituacaoViagem;
  end;
  if Assigned(FDetalheProgramacaoViagem) then
  begin
    xn := aNode.addChildByName(snManterViagemResponse_DetalheProgramacaoViagem);
    FDetalheProgramacaoViagem.Save(xn);
  end;
end; // procedure save

class function tManterViagemResponse.CreateFromXmlString(
  s: string): tManterViagemResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tManterViagemResponse.Create( parser );
   finally
      parser.Free;
   end;
end;

function tManterViagemResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.declaration.attribute['encoding'] := 'utf-8';
      parser.formatedXML :=False;
      parser.XMLTag := False;
      self.Save( parser );
      result := parser.xml
   finally
      parser.Free;
   end;
end;

{ tManterViagemRequest }

class function tManterViagemRequest._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tManterViagemRequest.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FVeiculosViagem := tManagedStringlist.Create;
  FMotoristaViagem := tManagedStringlist.Create;
  FClausulasViagem := tManagedStringlist.Create;
end; // constructor ...

constructor tManterViagemRequest.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
//  i: integer;
  thisURI: string;
  aVeiculosViagem: tVeiculosViagem;
  aMotoristaViagem: tMotoristaViagem;
  aClausulasViagem: tClausulasViagem;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snManterViagemRequest_IdentificacaoIntegracao)
      and ((thisURI='') or (tIdentificacaoIntegracao._nsURI_ = thisURI)) then
      FIdentificacaoIntegracao := tIdentificacaoIntegracao.Create(xn)
    else if (sn = snManterViagemRequest_IdClienteResponsavel)then
      FIdClienteResponsavel := StrToIntDef( xn.text, 0)
    else if (sn = snManterViagemRequest_Operacao) then
      FOperacao := xn.text
    else if (sn = snManterViagemRequest_TipoViagem) then
      FTipoViagem := xn.text
    else if (sn = snManterViagemRequest_DadosViagem)
      and ((thisURI='') or (tDadosViagem._nsURI_ = thisURI)) then
      FDadosViagem := tDadosViagem.Create(xn)
    else if (sn = snManterViagemRequest_Transportador)
      and ((thisURI='') or (tTransportador._nsURI_ = thisURI)) then
      FTransportador := tTransportador.Create(xn)
    else if (sn = snManterViagemRequest_RotaViagem)
      and ((thisURI='') or (tRotaViagem._nsURI_ = thisURI)) then
      FRotaViagem := tRotaViagem.Create(xn)
    else if (sn = snManterViagemRequest_VeiculosViagem)
      and ((thisURI='') or (tVeiculosViagem._nsURI_ = thisURI)) then
    begin
      aVeiculosViagem := tVeiculosViagem.Create(xn);
      FVeiculosViagem.AddObject('?', aVeiculosViagem);
    end
    else if (sn = snManterViagemRequest_ValePedagioViagem)
      and ((thisURI='') or (tValePedagioViagem._nsURI_ = thisURI)) then
      FValePedagioViagem := tValePedagioViagem.Create(xn)
    else if (sn = snManterViagemRequest_MotoristaViagem)
      and ((thisURI='') or (tMotoristaViagem._nsURI_ = thisURI)) then
    begin
      aMotoristaViagem := tMotoristaViagem.Create(xn);
      FMotoristaViagem.AddObject('?', aMotoristaViagem);
    end
    else if (sn = snManterViagemRequest_EnvolvidosTransporteViagem)
      and ((thisURI='') or (tEnvolvidosTransporteViagem._nsURI_ = thisURI)) then
      FEnvolvidosTransporteViagem := tEnvolvidosTransporteViagem.Create(xn)
    else if (sn = snManterViagemRequest_ValoresViagem)
      and ((thisURI='') or (tValoresViagem._nsURI_ = thisURI)) then
      FValoresViagem := tValoresViagem.Create(xn)
    else if (sn = snManterViagemRequest_ImpostosViagem)
      and ((thisURI='') or (tImpostosViagem._nsURI_ = thisURI)) then
      FImpostosViagem := tImpostosViagem.Create(xn)
    else if (sn = snManterViagemRequest_DadosBancarios)
      and ((thisURI='') or (tDadosBancarios._nsURI_ = thisURI)) then
      FDadosBancarios := tDadosBancarios.Create(xn)
    else if (sn = snManterViagemRequest_DocumentosViagem)
      and ((thisURI='') or (tDocumentosViagem._nsURI_ = thisURI)) then
      FDocumentosViagem := tDocumentosViagem.Create(xn)
    else if (sn = snManterViagemRequest_ProgramacaoViagem)
      and ((thisURI='') or (tProgramacaoViagem._nsURI_ = thisURI)) then
      FProgramacaoViagem := tProgramacaoViagem.Create(xn)
    else if (sn = snManterViagemRequest_ClausulasViagem)
      and ((thisURI='') or (tClausulasViagem._nsURI_ = thisURI)) then
    begin
      aClausulasViagem := tClausulasViagem.Create(xn);
      FClausulasViagem.AddObject('?', aClausulasViagem);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tManterViagemRequest.Destroy;
begin
  FIdentificacaoIntegracao.Free;
  FDadosViagem.Free;
  FTransportador.Free;
  FRotaViagem.Free;
  FVeiculosViagem.Free;
  FValePedagioViagem.Free;
  FMotoristaViagem.Free;
  FEnvolvidosTransporteViagem.Free;
  FValoresViagem.Free;
  FImpostosViagem.Free;
  FDadosBancarios.Free;
  FDocumentosViagem.Free;
  FProgramacaoViagem.Free;
  FClausulasViagem.Free;
  inherited;
end; // destructor ...

procedure tManterViagemRequest.SetIdClienteResponsavel(value:tIdClienteResponsavel);
begin
  FIdClienteResponsavel := value;
  FIdClienteResponsavel_IsSet_ := true;
end;

procedure tManterViagemRequest.SetTransportador(value:tTransportador);
begin
  FTransportador := value;
  FTransportador_IsSet_ := true;
end;

procedure tManterViagemRequest.SetRotaViagem(value:tRotaViagem);
begin
  FRotaViagem := value;
  FRotaViagem_IsSet_ := true;
end;

procedure tManterViagemRequest.SetValePedagioViagem(value:tValePedagioViagem);
begin
  FValePedagioViagem := value;
  FValePedagioViagem_IsSet_ := true;
end;

procedure tManterViagemRequest.SetEnvolvidosTransporteViagem(value:tEnvolvidosTransporteViagem);
begin
  FEnvolvidosTransporteViagem := value;
  FEnvolvidosTransporteViagem_IsSet_ := true;
end;

procedure tManterViagemRequest.SetImpostosViagem(value:tImpostosViagem);
begin
  FImpostosViagem := value;
  FImpostosViagem_IsSet_ := true;
end;

procedure tManterViagemRequest.SetDadosBancarios(value:tDadosBancarios);
begin
  FDadosBancarios := value;
  FDadosBancarios_IsSet_ := true;
end;

procedure tManterViagemRequest.SetDocumentosViagem(value:tDocumentosViagem);
begin
  FDocumentosViagem := value;
  FDocumentosViagem_IsSet_ := true;
end;

procedure tManterViagemRequest.SetProgramacaoViagem(value:tProgramacaoViagem);
begin
  FProgramacaoViagem := value;
  FProgramacaoViagem_IsSet_ := true;
end;

procedure tManterViagemRequest.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ManterViagemRequest')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Assigned(FIdentificacaoIntegracao) then
  begin
    xn := aNode.addChildByName(snManterViagemRequest_IdentificacaoIntegracao);
    FIdentificacaoIntegracao.Save(xn);
  end;
  if FIdClienteResponsavel <> 0 then
  begin
    xn := aNode.addChildByName(snManterViagemRequest_IdClienteResponsavel);
    xn.text := intToStr( FIdClienteResponsavel);
  end;
  if FOperacao <> '' then
  begin
    xn := aNode.addChildByName(snManterViagemRequest_Operacao);
    xn.text := FOperacao;
  end;
  if FTipoViagem <> '' then
  begin
    xn := aNode.addChildByName(snManterViagemRequest_TipoViagem);
    xn.text := FTipoViagem;
  end;
  if Assigned(FDadosViagem) then
  begin
    xn := aNode.addChildByName(snManterViagemRequest_DadosViagem);
    FDadosViagem.Save(xn);
  end;
  if Assigned(FTransportador) then
  begin
    xn := aNode.addChildByName(snManterViagemRequest_Transportador);
    FTransportador.Save(xn);
  end;
  if Assigned(FRotaViagem) then
  begin
    xn := aNode.addChildByName(snManterViagemRequest_RotaViagem);
    FRotaViagem.Save(xn);
  end;
  // element "VeiculosViagem" is tManagedStringlist
  if Assigned(FVeiculosViagem) then
    for i:=0 to FVeiculosViagem.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snManterViagemRequest_VeiculosViagem));
      tVeiculosViagem(FVeiculosViagem.Objects[i]).Save(xn);
    end; // for i:=0 to ...
  if Assigned(FValePedagioViagem) then
  begin
    xn := aNode.addChildByName(snManterViagemRequest_ValePedagioViagem);
    FValePedagioViagem.Save(xn);
  end;
  // element "MotoristaViagem" is tManagedStringlist
  if Assigned(FMotoristaViagem) then
    for i:=0 to FMotoristaViagem.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snManterViagemRequest_MotoristaViagem));
      tMotoristaViagem(FMotoristaViagem.Objects[i]).Save(xn);
    end; // for i:=0 to ...
  if Assigned(FEnvolvidosTransporteViagem) then
  begin
    xn := aNode.addChildByName(snManterViagemRequest_EnvolvidosTransporteViagem);
    FEnvolvidosTransporteViagem.Save(xn);
  end;
  if Assigned(FValoresViagem) then
  begin
    xn := aNode.addChildByName(snManterViagemRequest_ValoresViagem);
    FValoresViagem.Save(xn);
  end;
  if Assigned(FImpostosViagem) then
  begin
    xn := aNode.addChildByName(snManterViagemRequest_ImpostosViagem);
    FImpostosViagem.Save(xn);
  end;
  if Assigned(FDadosBancarios) then
  begin
    xn := aNode.addChildByName(snManterViagemRequest_DadosBancarios);
    FDadosBancarios.Save(xn);
  end;
  if Assigned(FDocumentosViagem) then
  begin
    xn := aNode.addChildByName(snManterViagemRequest_DocumentosViagem);
    FDocumentosViagem.Save(xn);
  end;
  if Assigned(FProgramacaoViagem) then
  begin
    xn := aNode.addChildByName(snManterViagemRequest_ProgramacaoViagem);
    FProgramacaoViagem.Save(xn);
  end;
  // element "ClausulasViagem" is tManagedStringlist
  if Assigned(FClausulasViagem) then
    for i:=0 to FClausulasViagem.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snManterViagemRequest_ClausulasViagem));
      tClausulasViagem(FClausulasViagem.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

class function tManterViagemRequest.CreateFromXmlString(
  s: string): tManterViagemRequest;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tManterViagemRequest.Create( parser );
   finally
      parser.Free;
   end;
end;

function tManterViagemRequest.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.declaration.attribute['encoding'] := 'utf-8';
      parser.formatedXML :=False;
      parser.XMLTag := False;
      self.Save( parser );
      result := parser.xml
   finally
      parser.Free;
   end;
end;

{ tManterViagem }

class function tManterViagem._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tManterViagem.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tManterViagem.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
//  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snManterViagem_ManterViagemRequest)
      and ((thisURI='') or (tManterViagemRequest._nsURI_ = thisURI)) then
      FManterViagemRequest := tManterViagemRequest.Create(xn)
    else if (sn = snManterViagem_ManterViagemResponse)
      and ((thisURI='') or (tManterViagemResponse._nsURI_ = thisURI)) then
      FManterViagemResponse := tManterViagemResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tManterViagem.Destroy;
begin
  FManterViagemRequest.Free;
  FManterViagemResponse.Free;
  inherited;
end; // destructor ...

procedure tManterViagem.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ManterViagem')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Assigned(FManterViagemRequest) then
  begin
    xn := aNode.addChildByName(snManterViagem_ManterViagemRequest);
    FManterViagemRequest.Save(xn);
  end;
  if Assigned(FManterViagemResponse) then
  begin
    xn := aNode.addChildByName(snManterViagem_ManterViagemResponse);
    FManterViagemResponse.Save(xn);
  end;
end; // procedure save

end.
