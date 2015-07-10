unit urdc_TiposPadrao_v1_01;

Interface
implementation
end.
(*
uses
  Classes,
  JanXMLParser2,
  uXMLTools,
  urdc_TiposPadrao_v1_01b;

// targetNameSpace: https://ws.rodocred.com.br/
// NameSpacePrefix: rdc
// Date of Schema : 31/01/2012 15:02:12
// Translationdate: 09/05/2012 16:35:53
//
//   includes xs=http://www.w3.org/2001/XMLSchema

// ordinal types
type
  tLocalImpressaoType = string;
  tTipoLocalImpressao = tLocalImpressaoType;
  tCodigoEventoOperacao = string;
  tQuantidadeEvento = extended;
  tCombustivel = string;
  tIDEventoOperacaoViagem = integer;
  tObservacaoEvento = string;
  tCodigoOperacao = string;
  tOdometro = extended;
  tObservacaoRegistro = string;
  tCodigoDocumento = string;
  tNumeroDocumento = string;
  tCodigoAuxiliar = string;
  tCodigoAutorizacao = extended;
  tCondicaoLiberacaoOperacao = string;
  tLocalRealizacao = string;

// constants for enumerations
const
  cLocalImpressaoType_PIP = 'PIP';
  cLocalImpressaoType_POS = 'POS';
  cLocalImpressaoType_BEL = 'BEL';
  cCombustivel_GASOLINA = 'GASOLINA';
  cCombustivel_DIESEL = 'DIESEL';
  cCombustivel_BIODIESEL = 'BIODIESEL';
  cCombustivel_ETANOL = 'ETANOL';
  cCombustivel_GNV = 'GNV';

const
  snRegistroOperacaoRetorno = 'RegistroOperacaoRetorno';
  snRegistroOperacaoRetorno_IDOperacaoViagem = 'IDOperacaoViagem';
  snRegistroOperacaoRetorno_CodigoOperacao = 'CodigoOperacao';
  snRegistroOperacaoRetorno_EventoOperacao = 'EventoOperacao';
  snRegistroOperacaoRetorno_CodigoAutorizacao = 'CodigoAutorizacao';
  snRegistroOperacaoRetorno_StatusRetorno = 'StatusRetorno';
  snRegistroOperacaoRetorno_Excecao = 'Excecao';

type
  tRegistroOperacaoRetorno = class
  private
    F_NameSpaceAlias: string;
    FIDOperacaoViagem: tIDOperacaoViagem; // (E)
    FCodigoOperacao: string; // (E)
    FEventoOperacao: tEventoOperacao; // (E)
    FCodigoAutorizacao: extended; // (E)
    FCodigoAutorizacao_IsSet_: boolean;
    FStatusRetorno: tStatusRetorno; // (E)
    FExcecao: tExcecao; // (E)
    procedure SetCodigoAutorizacao(value:extended);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property IDOperacaoViagem: tIDOperacaoViagem read FIDOperacaoViagem write FIDOperacaoViagem;
    property CodigoOperacao: string read FCodigoOperacao write FCodigoOperacao;
    property EventoOperacao: tEventoOperacao read FEventoOperacao write FEventoOperacao;
    property CodigoAutorizacao: extended read FCodigoAutorizacao write SetCodigoAutorizacao;
    property CodigoAutorizacao_IsSet_:boolean read FCodigoAutorizacao_IsSet_;
    property StatusRetorno: tStatusRetorno read FStatusRetorno write FStatusRetorno;
    property Excecao: tExcecao read FExcecao write FExcecao;
  end;

const
  snDocumentosRequeridos = 'DocumentosRequeridos';
  snDocumentosRequeridos_CodigoDocumento = 'CodigoDocumento';
  snDocumentosRequeridos_NumeroDocumento = 'NumeroDocumento';
  snDocumentosRequeridos_CodigoAuxiliar = 'CodigoAuxiliar';
  snDocumentosRequeridos_RequeridoEntrega = 'RequeridoEntrega';
  snDocumentosRequeridos_ExtraviadoEntrega = 'ExtraviadoEntrega';

type
  tDocumentosRequeridos = class
  private
    F_NameSpaceAlias: string;
    FCodigoDocumento: string; // (E)
    FNumeroDocumento: string; // (E)
    FCodigoAuxiliar: string; // (E)
    FCodigoAuxiliar_IsSet_: boolean;
    FRequeridoEntrega: boolean; // (E)
    FExtraviadoEntrega: boolean; // (E)
    procedure SetCodigoAuxiliar(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CodigoDocumento: string read FCodigoDocumento write FCodigoDocumento;
    property NumeroDocumento: string read FNumeroDocumento write FNumeroDocumento;
    property CodigoAuxiliar: string read FCodigoAuxiliar write SetCodigoAuxiliar;
    property CodigoAuxiliar_IsSet_:boolean read FCodigoAuxiliar_IsSet_;
    property RequeridoEntrega: boolean read FRequeridoEntrega write FRequeridoEntrega;
    property ExtraviadoEntrega: boolean read FExtraviadoEntrega write FExtraviadoEntrega;
  end;

const
  snRegistroOperacaoViagem = 'RegistroOperacaoViagem';
  snRegistroOperacaoViagem_IDOperacaoViagem = 'IDOperacaoViagem';
  snRegistroOperacaoViagem_CodigoOperacao = 'CodigoOperacao';
  snRegistroOperacaoViagem_EventoOperacao = 'EventoOperacao';
  snRegistroOperacaoViagem_NumeroCartao = 'NumeroCartao';
  snRegistroOperacaoViagem_CPFMotorista = 'CPFMotorista';
  snRegistroOperacaoViagem_IDEstabelecimento = 'IDEstabelecimento';
  snRegistroOperacaoViagem_IDFilial = 'IDFilial';
  snRegistroOperacaoViagem_DocumentosRequeridos = 'DocumentosRequeridos';
  snRegistroOperacaoViagem_PesoCarga = 'PesoCarga';
  snRegistroOperacaoViagem_UnidadeMedidaPeso = 'UnidadeMedidaPeso';
  snRegistroOperacaoViagem_Odometro = 'Odometro';
  snRegistroOperacaoViagem_ObservacaoRegistro = 'ObservacaoRegistro';

type
  tRegistroOperacaoViagem = class
  private
    F_NameSpaceAlias: string;
    FIDOperacaoViagem: tIDOperacaoViagem; // (E)
    FCodigoOperacao: string; // (E)
    FEventoOperacao: tEventoOperacao; // (E)
    FNumeroCartao: tNumeroCartao; // (E)
    FNumeroCartao_IsSet_: boolean;
    FCPFMotorista: tCPFMotorista; // (E)
    FIDEstabelecimento: integer; // (E)
    FIDEstabelecimento_IsSet_: boolean;
    FIDFilial: integer; // (E)
    FIDFilial_IsSet_: boolean;
    FDocumentosRequeridos: tManagedStringList; // of tDocumentosRequeridos(E)
    FPesoCarga: tPesoCarga; // (E)
    FPesoCarga_IsSet_: boolean;
    FUnidadeMedidaPeso: tUnidadeMedidaPeso; // (E)
    FUnidadeMedidaPeso_IsSet_: boolean;
    FOdometro: extended; // (E)
    FOdometro_IsSet_: boolean;
    FObservacaoRegistro: string; // (E)
    FObservacaoRegistro_IsSet_: boolean;
    procedure SetNumeroCartao(value:tNumeroCartao);
    procedure SetIDEstabelecimento(value:integer);
    procedure SetIDFilial(value:integer);
    procedure SetPesoCarga(value:tPesoCarga);
    procedure SetUnidadeMedidaPeso(value:tUnidadeMedidaPeso);
    procedure SetOdometro(value:extended);
    procedure SetObservacaoRegistro(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property IDOperacaoViagem: tIDOperacaoViagem read FIDOperacaoViagem write FIDOperacaoViagem;
    property CodigoOperacao: string read FCodigoOperacao write FCodigoOperacao;
    property EventoOperacao: tEventoOperacao read FEventoOperacao write FEventoOperacao;
    property NumeroCartao: tNumeroCartao read FNumeroCartao write SetNumeroCartao;
    property NumeroCartao_IsSet_:boolean read FNumeroCartao_IsSet_;
    property CPFMotorista: tCPFMotorista read FCPFMotorista write FCPFMotorista;
    property IDEstabelecimento: integer read FIDEstabelecimento write SetIDEstabelecimento;
    property IDEstabelecimento_IsSet_:boolean read FIDEstabelecimento_IsSet_;
    property IDFilial: integer read FIDFilial write SetIDFilial;
    property IDFilial_IsSet_:boolean read FIDFilial_IsSet_;
    property DocumentosRequeridos: tManagedStringList read FDocumentosRequeridos write FDocumentosRequeridos; // of tDocumentosRequeridos
    property PesoCarga: tPesoCarga read FPesoCarga write SetPesoCarga;
    property PesoCarga_IsSet_:boolean read FPesoCarga_IsSet_;
    property UnidadeMedidaPeso: tUnidadeMedidaPeso read FUnidadeMedidaPeso write SetUnidadeMedidaPeso;
    property UnidadeMedidaPeso_IsSet_:boolean read FUnidadeMedidaPeso_IsSet_;
    property Odometro: extended read FOdometro write SetOdometro;
    property Odometro_IsSet_:boolean read FOdometro_IsSet_;
    property ObservacaoRegistro: string read FObservacaoRegistro write SetObservacaoRegistro;
    property ObservacaoRegistro_IsSet_:boolean read FObservacaoRegistro_IsSet_;
  end;

const
  snEventoOperacaoRetorno = 'EventoOperacaoRetorno';
  snEventoOperacaoRetorno_IDEventoOperacaoViagem = 'IDEventoOperacaoViagem';
  snEventoOperacaoRetorno_CodigoEventoOperacao = 'CodigoEventoOperacao';
  snEventoOperacaoRetorno_ValorEvento = 'ValorEvento';
  snEventoOperacaoRetorno_QuantidadeEvento = 'QuantidadeEvento';
  snEventoOperacaoRetorno_Combustivel = 'Combustivel';
  snEventoOperacaoRetorno_DataEvento = 'DataEvento';
  snEventoOperacaoRetorno_ValorTaxaEventoOperacaoViagem = 'ValorTaxaEventoOperacaoViagem';
  snEventoOperacaoRetorno_SituacaoEventoOperacaoViagem = 'SituacaoEventoOperacaoViagem';
  snEventoOperacaoRetorno_ObservacaoEvento = 'ObservacaoEvento';

type
  tEventoOperacaoRetorno = class
  private
    F_NameSpaceAlias: string;
    FIDEventoOperacaoViagem: integer; // (E)
    FCodigoEventoOperacao: string; // (E)
    FValorEvento: tValorType; // (E)
    FValorEvento_IsSet_: boolean;
    FQuantidadeEvento: extended; // (E)
    FQuantidadeEvento_IsSet_: boolean;
    FCombustivel: string; // (E)
    FCombustivel_IsSet_: boolean;
    FDataEvento: tDate; // (E)
    FDataEvento_IsSet_: boolean;
    FValorTaxaEventoOperacaoViagem: tValorTaxaEventoOperacaoViagem; // (E)
    FSituacaoEventoOperacaoViagem: tSituacaoEventoOperacaoViagem; // (E)
    FObservacaoEvento: string; // (E)
    FObservacaoEvento_IsSet_: boolean;
    procedure SetValorEvento(value:tValorType);
    procedure SetQuantidadeEvento(value:extended);
    procedure SetCombustivel(value:string);
    procedure SetDataEvento(value:tDate);
    procedure SetObservacaoEvento(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property IDEventoOperacaoViagem: integer read FIDEventoOperacaoViagem write FIDEventoOperacaoViagem;
    property CodigoEventoOperacao: string read FCodigoEventoOperacao write FCodigoEventoOperacao;
    property ValorEvento: tValorType read FValorEvento write SetValorEvento;
    property ValorEvento_IsSet_:boolean read FValorEvento_IsSet_;
    property QuantidadeEvento: extended read FQuantidadeEvento write SetQuantidadeEvento;
    property QuantidadeEvento_IsSet_:boolean read FQuantidadeEvento_IsSet_;
    property Combustivel: string read FCombustivel write SetCombustivel;
    property Combustivel_IsSet_:boolean read FCombustivel_IsSet_;
    property DataEvento: tDate read FDataEvento write SetDataEvento;
    property DataEvento_IsSet_:boolean read FDataEvento_IsSet_;
    property ValorTaxaEventoOperacaoViagem: tValorTaxaEventoOperacaoViagem read FValorTaxaEventoOperacaoViagem write FValorTaxaEventoOperacaoViagem;
    property SituacaoEventoOperacaoViagem: tSituacaoEventoOperacaoViagem read FSituacaoEventoOperacaoViagem write FSituacaoEventoOperacaoViagem;
    property ObservacaoEvento: string read FObservacaoEvento write SetObservacaoEvento;
    property ObservacaoEvento_IsSet_:boolean read FObservacaoEvento_IsSet_;
  end;

const
  snOperacaoViagemRetorno = 'OperacaoViagemRetorno';
  snOperacaoViagemRetorno_IDOperacaoViagem = 'IDOperacaoViagem';
  snOperacaoViagemRetorno_CodigoOperacao = 'CodigoOperacao';
  snOperacaoViagemRetorno_CondicaoLiberacaoOperacao = 'CondicaoLiberacaoOperacao';
  snOperacaoViagemRetorno_DataOperacao = 'DataOperacao';
  snOperacaoViagemRetorno_LocalRealizacao = 'LocalRealizacao';
  snOperacaoViagemRetorno_Estabelecimento = 'Estabelecimento';
  snOperacaoViagemRetorno_FilialEmpresa = 'FilialEmpresa';
  snOperacaoViagemRetorno_EventoOperacaoRetorno = 'EventoOperacaoRetorno';
  snOperacaoViagemRetorno_SituacaoOperacaoViagem = 'SituacaoOperacaoViagem';
  snOperacaoViagemRetorno_StatusRetorno = 'StatusRetorno';
  snOperacaoViagemRetorno_Excecao = 'Excecao';

type
  tOperacaoViagemRetorno = class
  private
    F_NameSpaceAlias: string;
    FIDOperacaoViagem: tIDOperacaoViagem; // (E)
    FCodigoOperacao: string; // (E)
    FCondicaoLiberacaoOperacao: string; // (E)
    FDataOperacao: tDate; // (E)
    FDataOperacao_IsSet_: boolean;
    FLocalRealizacao: string; // (E)
    FLocalRealizacao_IsSet_: boolean;
    FEstabelecimento: tEstabelecimento; // (E)
    FEstabelecimento_IsSet_: boolean;
    FFilialEmpresa: tFilialEmpresa; // (E)
    FFilialEmpresa_IsSet_: boolean;
    FEventoOperacaoRetorno: tManagedStringList; // of tEventoOperacaoRetorno(E)
    FSituacaoOperacaoViagem: tSituacaoOperacaoViagem; // (E)
    FStatusRetorno: tStatusRetorno; // (E)
    FStatusRetorno_IsSet_: boolean;
    FExcecao: tExcecao; // (E)
    FExcecao_IsSet_: boolean;
    procedure SetDataOperacao(value:tDate);
    procedure SetLocalRealizacao(value:string);
    procedure SetEstabelecimento(value:tEstabelecimento);
    procedure SetFilialEmpresa(value:tFilialEmpresa);
    procedure SetStatusRetorno(value:tStatusRetorno);
    procedure SetExcecao(value:tExcecao);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property IDOperacaoViagem: tIDOperacaoViagem read FIDOperacaoViagem write FIDOperacaoViagem;
    property CodigoOperacao: string read FCodigoOperacao write FCodigoOperacao;
    property CondicaoLiberacaoOperacao: string read FCondicaoLiberacaoOperacao write FCondicaoLiberacaoOperacao;
    property DataOperacao: tDate read FDataOperacao write SetDataOperacao;
    property DataOperacao_IsSet_:boolean read FDataOperacao_IsSet_;
    property LocalRealizacao: string read FLocalRealizacao write SetLocalRealizacao;
    property LocalRealizacao_IsSet_:boolean read FLocalRealizacao_IsSet_;
    property Estabelecimento: tEstabelecimento read FEstabelecimento write SetEstabelecimento;
    property Estabelecimento_IsSet_:boolean read FEstabelecimento_IsSet_;
    property FilialEmpresa: tFilialEmpresa read FFilialEmpresa write SetFilialEmpresa;
    property FilialEmpresa_IsSet_:boolean read FFilialEmpresa_IsSet_;
    property EventoOperacaoRetorno: tManagedStringList read FEventoOperacaoRetorno write FEventoOperacaoRetorno; // of tEventoOperacaoRetorno
    property SituacaoOperacaoViagem: tSituacaoOperacaoViagem read FSituacaoOperacaoViagem write FSituacaoOperacaoViagem;
    property StatusRetorno: tStatusRetorno read FStatusRetorno write SetStatusRetorno;
    property StatusRetorno_IsSet_:boolean read FStatusRetorno_IsSet_;
    property Excecao: tExcecao read FExcecao write SetExcecao;
    property Excecao_IsSet_:boolean read FExcecao_IsSet_;
  end;

implementation
uses
  SysUtils,
  mylib;

const
  thisNamespaceURI = 'https://ws.rodocred.com.br/';
  defNamespaceAlias = 'rdc';

{ tRegistroOperacaoRetorno }

class function tRegistroOperacaoRetorno._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tRegistroOperacaoRetorno.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tRegistroOperacaoRetorno.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snRegistroOperacaoRetorno_IDOperacaoViagem)
      and ((thisURI='') or (tIDOperacaoViagem._nsURI_ = thisURI)) then
      FIDOperacaoViagem := tIDOperacaoViagem.Create(xn)
    else if (sn = snRegistroOperacaoRetorno_CodigoOperacao) then
      CodigoOperacao :=  xn.text // string
    else if (sn = snRegistroOperacaoRetorno_EventoOperacao)
      and ((thisURI='') or (tEventoOperacao._nsURI_ = thisURI)) then
      FEventoOperacao := tEventoOperacao.Create(xn)
    else if (sn = snRegistroOperacaoRetorno_CodigoAutorizacao) then
      CodigoAutorizacao := DefStrToFloat(xn.text, 0)
    else if (sn = snRegistroOperacaoRetorno_StatusRetorno)
      and ((thisURI='') or (tStatusRetorno._nsURI_ = thisURI)) then
      FStatusRetorno := tStatusRetorno.Create(xn)
    else if (sn = snRegistroOperacaoRetorno_Excecao)
      and ((thisURI='') or (tExcecao._nsURI_ = thisURI)) then
      FExcecao := tExcecao.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tRegistroOperacaoRetorno.Destroy;
begin
  FIDOperacaoViagem.Free;
  FEventoOperacao.Free;
  FStatusRetorno.Free;
  FExcecao.Free;
  inherited;
end; // destructor ...

procedure tRegistroOperacaoRetorno.SetCodigoAutorizacao(value:extended);
begin
  FCodigoAutorizacao := value;
  FCodigoAutorizacao_IsSet_ := true;
end;

procedure tRegistroOperacaoRetorno.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'RegistroOperacaoRetorno')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Assigned(FIDOperacaoViagem) then
  begin
    xn := aNode.addChildByName(snRegistroOperacaoRetorno_IDOperacaoViagem);
    FIDOperacaoViagem.Save(xn);
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRegistroOperacaoRetorno_CodigoOperacao));
  xn.text := FCodigoOperacao;
  if Assigned(FEventoOperacao) then
  begin
    xn := aNode.addChildByName(snRegistroOperacaoRetorno_EventoOperacao);
    FEventoOperacao.Save(xn);
  end;
  if CodigoAutorizacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRegistroOperacaoRetorno_CodigoAutorizacao));
    xn.text := MyFloatToStr(FCodigoAutorizacao);
  end;
  if Assigned(FStatusRetorno) then
  begin
    xn := aNode.addChildByName(snRegistroOperacaoRetorno_StatusRetorno);
    FStatusRetorno.Save(xn);
  end;
  if Assigned(FExcecao) then
  begin
    xn := aNode.addChildByName(snRegistroOperacaoRetorno_Excecao);
    FExcecao.Save(xn);
  end;
end; // procedure save

{ tDocumentosRequeridos }

class function tDocumentosRequeridos._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tDocumentosRequeridos.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tDocumentosRequeridos.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snDocumentosRequeridos_CodigoDocumento) then
      CodigoDocumento :=  xn.text // string
    else if (sn = snDocumentosRequeridos_NumeroDocumento) then
      NumeroDocumento :=  xn.text // string
    else if (sn = snDocumentosRequeridos_CodigoAuxiliar) then
      CodigoAuxiliar :=  xn.text // string
    else if (sn = snDocumentosRequeridos_RequeridoEntrega) then
      RequeridoEntrega := (xn.text = 'true')
    else if (sn = snDocumentosRequeridos_ExtraviadoEntrega) then
      ExtraviadoEntrega := (xn.text = 'true')
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tDocumentosRequeridos.Destroy;
begin
  inherited;
end; // destructor ...

procedure tDocumentosRequeridos.SetCodigoAuxiliar(value:string);
begin
  FCodigoAuxiliar := value;
  FCodigoAuxiliar_IsSet_ := true;
end;

procedure tDocumentosRequeridos.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'DocumentosRequeridos')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDocumentosRequeridos_CodigoDocumento));
  xn.text := FCodigoDocumento;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDocumentosRequeridos_NumeroDocumento));
  xn.text := FNumeroDocumento;
  if CodigoAuxiliar_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDocumentosRequeridos_CodigoAuxiliar));
    xn.text := FCodigoAuxiliar;
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDocumentosRequeridos_RequeridoEntrega));
  xn.text := BoolToStr(FRequeridoEntrega);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDocumentosRequeridos_ExtraviadoEntrega));
  xn.text := BoolToStr(FExtraviadoEntrega);
end; // procedure save

{ tRegistroOperacaoViagem }

class function tRegistroOperacaoViagem._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tRegistroOperacaoViagem.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FDocumentosRequeridos := tManagedStringlist.Create;
end; // constructor ...

constructor tRegistroOperacaoViagem.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
  aDocumentosRequeridos: tDocumentosRequeridos;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snRegistroOperacaoViagem_IDOperacaoViagem)
      and ((thisURI='') or (tIDOperacaoViagem._nsURI_ = thisURI)) then
      FIDOperacaoViagem := tIDOperacaoViagem.Create(xn)
    else if (sn = snRegistroOperacaoViagem_CodigoOperacao) then
      CodigoOperacao :=  xn.text // string
    else if (sn = snRegistroOperacaoViagem_EventoOperacao)
      and ((thisURI='') or (tEventoOperacao._nsURI_ = thisURI)) then
      FEventoOperacao := tEventoOperacao.Create(xn)
    else if (sn = snRegistroOperacaoViagem_NumeroCartao)
      and ((thisURI='') or (tNumeroCartao._nsURI_ = thisURI)) then
      FNumeroCartao := tNumeroCartao.Create(xn)
    else if (sn = snRegistroOperacaoViagem_CPFMotorista)
      and ((thisURI='') or (tCPFMotorista._nsURI_ = thisURI)) then
      FCPFMotorista := tCPFMotorista.Create(xn)
    else if (sn = snRegistroOperacaoViagem_IDEstabelecimento) then
      IDEstabelecimento := StrToIntDef(xn.text, 0)
    else if (sn = snRegistroOperacaoViagem_IDFilial) then
      IDFilial := StrToIntDef(xn.text, 0)
    else if (sn = snRegistroOperacaoViagem_DocumentosRequeridos)
      and ((thisURI='') or (tDocumentosRequeridos._nsURI_ = thisURI)) then
    begin
      aDocumentosRequeridos := tDocumentosRequeridos.Create(xn);
      FDocumentosRequeridos.AddObject('?', aDocumentosRequeridos);
    end
    else if (sn = snRegistroOperacaoViagem_PesoCarga)
      and ((thisURI='') or (tPesoCarga._nsURI_ = thisURI)) then
      FPesoCarga := tPesoCarga.Create(xn)
    else if (sn = snRegistroOperacaoViagem_UnidadeMedidaPeso)
      and ((thisURI='') or (tUnidadeMedidaPeso._nsURI_ = thisURI)) then
      FUnidadeMedidaPeso := tUnidadeMedidaPeso.Create(xn)
    else if (sn = snRegistroOperacaoViagem_Odometro) then
      Odometro := DefStrToFloat(xn.text, 0)
    else if (sn = snRegistroOperacaoViagem_ObservacaoRegistro) then
      ObservacaoRegistro :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tRegistroOperacaoViagem.Destroy;
begin
  FIDOperacaoViagem.Free;
  FEventoOperacao.Free;
  FNumeroCartao.Free;
  FCPFMotorista.Free;
  FDocumentosRequeridos.Free;
  FPesoCarga.Free;
  FUnidadeMedidaPeso.Free;
  inherited;
end; // destructor ...

procedure tRegistroOperacaoViagem.SetNumeroCartao(value:tNumeroCartao);
begin
  FNumeroCartao := value;
  FNumeroCartao_IsSet_ := true;
end;

procedure tRegistroOperacaoViagem.SetIDEstabelecimento(value:integer);
begin
  FIDEstabelecimento := value;
  FIDEstabelecimento_IsSet_ := true;
end;

procedure tRegistroOperacaoViagem.SetIDFilial(value:integer);
begin
  FIDFilial := value;
  FIDFilial_IsSet_ := true;
end;

procedure tRegistroOperacaoViagem.SetPesoCarga(value:tPesoCarga);
begin
  FPesoCarga := value;
  FPesoCarga_IsSet_ := true;
end;

procedure tRegistroOperacaoViagem.SetUnidadeMedidaPeso(value:tUnidadeMedidaPeso);
begin
  FUnidadeMedidaPeso := value;
  FUnidadeMedidaPeso_IsSet_ := true;
end;

procedure tRegistroOperacaoViagem.SetOdometro(value:extended);
begin
  FOdometro := value;
  FOdometro_IsSet_ := true;
end;

procedure tRegistroOperacaoViagem.SetObservacaoRegistro(value:string);
begin
  FObservacaoRegistro := value;
  FObservacaoRegistro_IsSet_ := true;
end;

procedure tRegistroOperacaoViagem.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'RegistroOperacaoViagem')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Assigned(FIDOperacaoViagem) then
  begin
    xn := aNode.addChildByName(snRegistroOperacaoViagem_IDOperacaoViagem);
    FIDOperacaoViagem.Save(xn);
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRegistroOperacaoViagem_CodigoOperacao));
  xn.text := FCodigoOperacao;
  if Assigned(FEventoOperacao) then
  begin
    xn := aNode.addChildByName(snRegistroOperacaoViagem_EventoOperacao);
    FEventoOperacao.Save(xn);
  end;
  if Assigned(FNumeroCartao) then
  begin
    xn := aNode.addChildByName(snRegistroOperacaoViagem_NumeroCartao);
    FNumeroCartao.Save(xn);
  end;
  if Assigned(FCPFMotorista) then
  begin
    xn := aNode.addChildByName(snRegistroOperacaoViagem_CPFMotorista);
    FCPFMotorista.Save(xn);
  end;
  if IDEstabelecimento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRegistroOperacaoViagem_IDEstabelecimento));
    xn.text := IntToStr(FIDEstabelecimento);
  end;
  if IDFilial_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRegistroOperacaoViagem_IDFilial));
    xn.text := IntToStr(FIDFilial);
  end;
  // element "DocumentosRequeridos" is tManagedStringlist
  if Assigned(FDocumentosRequeridos) then
    for i:=0 to FDocumentosRequeridos.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRegistroOperacaoViagem_DocumentosRequeridos));
      tDocumentosRequeridos(FDocumentosRequeridos.Objects[i]).Save(xn);
    end; // for i:=0 to ...
  if Assigned(FPesoCarga) then
  begin
    xn := aNode.addChildByName(snRegistroOperacaoViagem_PesoCarga);
    FPesoCarga.Save(xn);
  end;
  if Assigned(FUnidadeMedidaPeso) then
  begin
    xn := aNode.addChildByName(snRegistroOperacaoViagem_UnidadeMedidaPeso);
    FUnidadeMedidaPeso.Save(xn);
  end;
  if Odometro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRegistroOperacaoViagem_Odometro));
    xn.text := MyFloatToStr(FOdometro);
  end;
  if ObservacaoRegistro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRegistroOperacaoViagem_ObservacaoRegistro));
    xn.text := FObservacaoRegistro;
  end;
end; // procedure save

{ tEventoOperacaoRetorno }

class function tEventoOperacaoRetorno._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tEventoOperacaoRetorno.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tEventoOperacaoRetorno.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snEventoOperacaoRetorno_IDEventoOperacaoViagem) then
      IDEventoOperacaoViagem := StrToIntDef(xn.text, 0)
    else if (sn = snEventoOperacaoRetorno_CodigoEventoOperacao) then
      CodigoEventoOperacao :=  xn.text // string
    else if (sn = snEventoOperacaoRetorno_ValorEvento) then
      ValorEvento :=  xn.text // tValorType
    else if (sn = snEventoOperacaoRetorno_QuantidadeEvento) then
      QuantidadeEvento := DefStrToFloat(xn.text, 0)
    else if (sn = snEventoOperacaoRetorno_Combustivel) then
      Combustivel :=  xn.text // string
    else if (sn = snEventoOperacaoRetorno_DataEvento) then
      DataEvento := DateFromXMLDateTime(xn.text) // tDate
    else if (sn = snEventoOperacaoRetorno_ValorTaxaEventoOperacaoViagem)
      and ((thisURI='') or (tValorTaxaEventoOperacaoViagem._nsURI_ = thisURI)) then
      FValorTaxaEventoOperacaoViagem := tValorTaxaEventoOperacaoViagem.Create(xn)
    else if (sn = snEventoOperacaoRetorno_SituacaoEventoOperacaoViagem)
      and ((thisURI='') or (tSituacaoEventoOperacaoViagem._nsURI_ = thisURI)) then
      FSituacaoEventoOperacaoViagem := tSituacaoEventoOperacaoViagem.Create(xn)
    else if (sn = snEventoOperacaoRetorno_ObservacaoEvento) then
      ObservacaoEvento :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tEventoOperacaoRetorno.Destroy;
begin
  FValorTaxaEventoOperacaoViagem.Free;
  FSituacaoEventoOperacaoViagem.Free;
  inherited;
end; // destructor ...

procedure tEventoOperacaoRetorno.SetValorEvento(value:tValorType);
begin
  FValorEvento := value;
  FValorEvento_IsSet_ := true;
end;

procedure tEventoOperacaoRetorno.SetQuantidadeEvento(value:extended);
begin
  FQuantidadeEvento := value;
  FQuantidadeEvento_IsSet_ := true;
end;

procedure tEventoOperacaoRetorno.SetCombustivel(value:string);
begin
  FCombustivel := value;
  FCombustivel_IsSet_ := true;
end;

procedure tEventoOperacaoRetorno.SetDataEvento(value:tDate);
begin
  FDataEvento := value;
  FDataEvento_IsSet_ := true;
end;

procedure tEventoOperacaoRetorno.SetObservacaoEvento(value:string);
begin
  FObservacaoEvento := value;
  FObservacaoEvento_IsSet_ := true;
end;

procedure tEventoOperacaoRetorno.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'EventoOperacaoRetorno')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEventoOperacaoRetorno_IDEventoOperacaoViagem));
  xn.text := IntToStr(FIDEventoOperacaoViagem);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEventoOperacaoRetorno_CodigoEventoOperacao));
  xn.text := FCodigoEventoOperacao;
  if ValorEvento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEventoOperacaoRetorno_ValorEvento));
    xn.text := FValorEvento;
  end;
  if QuantidadeEvento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEventoOperacaoRetorno_QuantidadeEvento));
    xn.text := MyFloatToStr(FQuantidadeEvento);
  end;
  if Combustivel_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEventoOperacaoRetorno_Combustivel));
    xn.text := FCombustivel;
  end;
  if DataEvento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEventoOperacaoRetorno_DataEvento));
    xn.text := DateToXMLDateTime(FDataEvento);
  end;
  if Assigned(FValorTaxaEventoOperacaoViagem) then
  begin
    xn := aNode.addChildByName(snEventoOperacaoRetorno_ValorTaxaEventoOperacaoViagem);
    FValorTaxaEventoOperacaoViagem.Save(xn);
  end;
  if Assigned(FSituacaoEventoOperacaoViagem) then
  begin
    xn := aNode.addChildByName(snEventoOperacaoRetorno_SituacaoEventoOperacaoViagem);
    FSituacaoEventoOperacaoViagem.Save(xn);
  end;
  if ObservacaoEvento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEventoOperacaoRetorno_ObservacaoEvento));
    xn.text := FObservacaoEvento;
  end;
end; // procedure save

{ tOperacaoViagemRetorno }

class function tOperacaoViagemRetorno._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tOperacaoViagemRetorno.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FEventoOperacaoRetorno := tManagedStringlist.Create;
end; // constructor ...

constructor tOperacaoViagemRetorno.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
  aEventoOperacaoRetorno: tEventoOperacaoRetorno;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snOperacaoViagemRetorno_IDOperacaoViagem)
      and ((thisURI='') or (tIDOperacaoViagem._nsURI_ = thisURI)) then
      FIDOperacaoViagem := tIDOperacaoViagem.Create(xn)
    else if (sn = snOperacaoViagemRetorno_CodigoOperacao) then
      CodigoOperacao :=  xn.text // string
    else if (sn = snOperacaoViagemRetorno_CondicaoLiberacaoOperacao) then
      CondicaoLiberacaoOperacao :=  xn.text // string
    else if (sn = snOperacaoViagemRetorno_DataOperacao) then
      DataOperacao := DateFromXMLDateTime(xn.text) // tDate
    else if (sn = snOperacaoViagemRetorno_LocalRealizacao) then
      LocalRealizacao :=  xn.text // string
    else if (sn = snOperacaoViagemRetorno_Estabelecimento)
      and ((thisURI='') or (tEstabelecimento._nsURI_ = thisURI)) then
      FEstabelecimento := tEstabelecimento.Create(xn)
    else if (sn = snOperacaoViagemRetorno_FilialEmpresa)
      and ((thisURI='') or (tFilialEmpresa._nsURI_ = thisURI)) then
      FFilialEmpresa := tFilialEmpresa.Create(xn)
    else if (sn = snOperacaoViagemRetorno_EventoOperacaoRetorno)
      and ((thisURI='') or (tEventoOperacaoRetorno._nsURI_ = thisURI)) then
    begin
      aEventoOperacaoRetorno := tEventoOperacaoRetorno.Create(xn);
      FEventoOperacaoRetorno.AddObject('?', aEventoOperacaoRetorno);
    end
    else if (sn = snOperacaoViagemRetorno_SituacaoOperacaoViagem)
      and ((thisURI='') or (tSituacaoOperacaoViagem._nsURI_ = thisURI)) then
      FSituacaoOperacaoViagem := tSituacaoOperacaoViagem.Create(xn)
    else if (sn = snOperacaoViagemRetorno_StatusRetorno)
      and ((thisURI='') or (tStatusRetorno._nsURI_ = thisURI)) then
      FStatusRetorno := tStatusRetorno.Create(xn)
    else if (sn = snOperacaoViagemRetorno_Excecao)
      and ((thisURI='') or (tExcecao._nsURI_ = thisURI)) then
      FExcecao := tExcecao.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tOperacaoViagemRetorno.Destroy;
begin
  FIDOperacaoViagem.Free;
  FEstabelecimento.Free;
  FFilialEmpresa.Free;
  FEventoOperacaoRetorno.Free;
  FSituacaoOperacaoViagem.Free;
  FStatusRetorno.Free;
  FExcecao.Free;
  inherited;
end; // destructor ...

procedure tOperacaoViagemRetorno.SetDataOperacao(value:tDate);
begin
  FDataOperacao := value;
  FDataOperacao_IsSet_ := true;
end;

procedure tOperacaoViagemRetorno.SetLocalRealizacao(value:string);
begin
  FLocalRealizacao := value;
  FLocalRealizacao_IsSet_ := true;
end;

procedure tOperacaoViagemRetorno.SetEstabelecimento(value:tEstabelecimento);
begin
  FEstabelecimento := value;
  FEstabelecimento_IsSet_ := true;
end;

procedure tOperacaoViagemRetorno.SetFilialEmpresa(value:tFilialEmpresa);
begin
  FFilialEmpresa := value;
  FFilialEmpresa_IsSet_ := true;
end;

procedure tOperacaoViagemRetorno.SetStatusRetorno(value:tStatusRetorno);
begin
  FStatusRetorno := value;
  FStatusRetorno_IsSet_ := true;
end;

procedure tOperacaoViagemRetorno.SetExcecao(value:tExcecao);
begin
  FExcecao := value;
  FExcecao_IsSet_ := true;
end;

procedure tOperacaoViagemRetorno.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'OperacaoViagemRetorno')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Assigned(FIDOperacaoViagem) then
  begin
    xn := aNode.addChildByName(snOperacaoViagemRetorno_IDOperacaoViagem);
    FIDOperacaoViagem.Save(xn);
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoViagemRetorno_CodigoOperacao));
  xn.text := FCodigoOperacao;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoViagemRetorno_CondicaoLiberacaoOperacao));
  xn.text := FCondicaoLiberacaoOperacao;
  if DataOperacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoViagemRetorno_DataOperacao));
    xn.text := DateToXMLDateTime(FDataOperacao);
  end;
  if LocalRealizacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoViagemRetorno_LocalRealizacao));
    xn.text := FLocalRealizacao;
  end;
  if Assigned(FEstabelecimento) then
  begin
    xn := aNode.addChildByName(snOperacaoViagemRetorno_Estabelecimento);
    FEstabelecimento.Save(xn);
  end;
  if Assigned(FFilialEmpresa) then
  begin
    xn := aNode.addChildByName(snOperacaoViagemRetorno_FilialEmpresa);
    FFilialEmpresa.Save(xn);
  end;
  // element "EventoOperacaoRetorno" is tManagedStringlist
  if Assigned(FEventoOperacaoRetorno) then
    for i:=0 to FEventoOperacaoRetorno.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoViagemRetorno_EventoOperacaoRetorno));
      tEventoOperacaoRetorno(FEventoOperacaoRetorno.Objects[i]).Save(xn);
    end; // for i:=0 to ...
  if Assigned(FSituacaoOperacaoViagem) then
  begin
    xn := aNode.addChildByName(snOperacaoViagemRetorno_SituacaoOperacaoViagem);
    FSituacaoOperacaoViagem.Save(xn);
  end;
  if Assigned(FStatusRetorno) then
  begin
    xn := aNode.addChildByName(snOperacaoViagemRetorno_StatusRetorno);
    FStatusRetorno.Save(xn);
  end;
  if Assigned(FExcecao) then
  begin
    xn := aNode.addChildByName(snOperacaoViagemRetorno_Excecao);
    FExcecao.Save(xn);
  end;
end; // procedure save

end.
*)
