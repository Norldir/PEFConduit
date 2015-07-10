unit urdc_jxml_TiposPadrao_v1_02;

Interface
uses
  Classes,
  JanXMLParser2,
  uXMLTools,
  urdc_jxml_TiposPadrao_v1_00,
  urdc_jxml_TiposPadrao_v1_01;

// targetNameSpace: https://ws.rodocred.com.br/
// NameSpacePrefix: rdc
// Date of Schema : 08/08/2012 16:36:32
// Translationdate: 28/03/2013 16:22:51
//
//   includes xs=http://www.w3.org/2001/XMLSchema

// ordinal types
type
  tTipoBoletoType = string;
  tTipoLancamento = string;
  tValorLancamento = extended;
  tSaldo = extended;
  tSituacaoContrato = string;
  tNumeroContrato = string;
  tCodigoOperacao = string;
  tCondicaoLiberacaoOperacao = string;
  tLocalRealizacao = string;
  tDataSituacaoExtrato = tDateTime;
  tValorComprometimento = extended;
  tValorLimite = extended;
  tTipoBoleto = tTipoBoletoType;
  tDataVencimento = tDate;
  tCodigoBarra = string;
  tNossoNumero = string;
  tLinkBoleto = string;

// constants for enumerations
const
  cTipoBoletoType_RODOCRED = 'RODOCRED';
  cTipoLancamento_C = 'C';
  cTipoLancamento_D = 'D';
  cSituacaoContrato_ABE = 'ABE';
  cSituacaoContrato_AGE = 'AGE';
  cSituacaoContrato_AND = 'AND';
  cSituacaoContrato_CAN = 'CAN';
  cSituacaoContrato_ENC = 'ENC';
  cSituacaoContrato_PRO = 'PRO';

const
  snComprometimento = 'Comprometimento';
  snComprometimento_Servico = 'Servico';
  snComprometimento_ValorComprometimento = 'ValorComprometimento';
  snComprometimento_ValorLimite = 'ValorLimite';

type
  tComprometimento = class
  private
    F_NameSpaceAlias: string;
    FServico: string; // (E)
    FValorComprometimento: extended; // (E)
    FValorLimite: extended; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Servico: string read FServico write FServico;
    property ValorComprometimento: extended read FValorComprometimento write FValorComprometimento;
    property ValorLimite: extended read FValorLimite write FValorLimite;
  end;

const
  snPeriodoExtrato = 'PeriodoExtrato';
  snPeriodoExtrato_DataInicialExtrato = 'DataInicialExtrato';
  snPeriodoExtrato_DataFinalExtrato = 'DataFinalExtrato';

type
  tPeriodoExtrato = class
  private
    F_NameSpaceAlias: string;
    FDataInicialExtrato: tDate; // (E)
    FDataFinalExtrato: tDate; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property DataInicialExtrato: tDate read FDataInicialExtrato write FDataInicialExtrato;
    property DataFinalExtrato: tDate read FDataFinalExtrato write FDataFinalExtrato;
  end;

const
  snOperacaoRetorno = 'OperacaoRetorno';
  snOperacaoRetorno_IDOperacaoViagem = 'IDOperacaoViagem';
  snOperacaoRetorno_CodigoOperacao = 'CodigoOperacao';
  snOperacaoRetorno_CondicaoLiberacaoOperacao = 'CondicaoLiberacaoOperacao';
  snOperacaoRetorno_DataOperacao = 'DataOperacao';
  snOperacaoRetorno_LocalRealizacao = 'LocalRealizacao';
  snOperacaoRetorno_Estabelecimento = 'Estabelecimento';
  snOperacaoRetorno_FilialEmpresa = 'FilialEmpresa';
  snOperacaoRetorno_EventoOperacaoRetorno = 'EventoOperacaoRetorno';
  snOperacaoRetorno_PesoCargaEntregue = 'PesoCargaEntregue';
  snOperacaoRetorno_UnidadeMedidaPeso = 'UnidadeMedidaPeso';
  snOperacaoRetorno_Odometro = 'Odometro';
  snOperacaoRetorno_DocumentosRequeridos = 'DocumentosRequeridos';
  snOperacaoRetorno_SituacaoOperacaoViagem = 'SituacaoOperacaoViagem';

type
  tOperacaoRetorno = class
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
    FPesoCargaEntregue: tPesoCargaEntregue; // (E)
    FPesoCargaEntregue_IsSet_: boolean;
    FUnidadeMedidaPeso: tUnidadeMedidaPeso; // (E)
    FUnidadeMedidaPeso_IsSet_: boolean;
    FOdometro: extended; // (E)
    FOdometro_IsSet_: boolean;
    FDocumentosRequeridos: tManagedStringList; // of tDocumentosRequeridos(E)
    FSituacaoOperacaoViagem: tSituacaoOperacaoViagem; // (E)
    procedure SetDataOperacao(value:tDate);
    procedure SetLocalRealizacao(value:string);
    procedure SetEstabelecimento(value:tEstabelecimento);
    procedure SetFilialEmpresa(value:tFilialEmpresa);
    procedure SetPesoCargaEntregue(value:tPesoCargaEntregue);
    procedure SetUnidadeMedidaPeso(value:tUnidadeMedidaPeso);
    procedure SetOdometro(value:extended);
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
    property PesoCargaEntregue: tPesoCargaEntregue read FPesoCargaEntregue write SetPesoCargaEntregue;
    property PesoCargaEntregue_IsSet_:boolean read FPesoCargaEntregue_IsSet_;
    property UnidadeMedidaPeso: tUnidadeMedidaPeso read FUnidadeMedidaPeso write SetUnidadeMedidaPeso;
    property UnidadeMedidaPeso_IsSet_:boolean read FUnidadeMedidaPeso_IsSet_;
    property Odometro: extended read FOdometro write SetOdometro;
    property Odometro_IsSet_:boolean read FOdometro_IsSet_;
    property DocumentosRequeridos: tManagedStringList read FDocumentosRequeridos write FDocumentosRequeridos; // of tDocumentosRequeridos
    property SituacaoOperacaoViagem: tSituacaoOperacaoViagem read FSituacaoOperacaoViagem write FSituacaoOperacaoViagem;
  end;

const
  snRegistroViagemRetorno = 'RegistroViagemRetorno';
  snRegistroViagemRetorno_NumeroViagem = 'NumeroViagem';
  snRegistroViagemRetorno_DocumentoRef = 'DocumentoRef';
  snRegistroViagemRetorno_ResumoFinanceiro = 'ResumoFinanceiro';
  snRegistroViagemRetorno_OperacaoRetorno = 'OperacaoRetorno';

type
  tRegistroViagemRetorno = class
  private
    F_NameSpaceAlias: string;
    FNumeroViagem: tNumeroViagem; // (E)
    FDocumentoRef: tDocumentoRef; // (E)
    FResumoFinanceiro: tResumoFinanceiro; // (E)
    FOperacaoRetorno: tManagedStringList; // of tOperacaoRetorno(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property NumeroViagem: tNumeroViagem read FNumeroViagem write FNumeroViagem;
    property DocumentoRef: tDocumentoRef read FDocumentoRef write FDocumentoRef;
    property ResumoFinanceiro: tResumoFinanceiro read FResumoFinanceiro write FResumoFinanceiro;
    property OperacaoRetorno: tManagedStringList read FOperacaoRetorno write FOperacaoRetorno; // of tOperacaoRetorno
  end;

const
  snListaPedidosValePedagio = 'ListaPedidosValePedagio';
  snListaPedidosValePedagio_PedidoValePedagio = 'PedidoValePedagio';

type
  tListaPedidosValePedagio = class
  private
    F_NameSpaceAlias: string;
    FPedidoValePedagio: tManagedStringList; // of tPedidoValePedagio(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property PedidoValePedagio: tManagedStringList read FPedidoValePedagio write FPedidoValePedagio; // of tPedidoValePedagio
  end;

const
  snExtratoType = 'ExtratoType';
  snExtratoType_SeqLancamento = 'SeqLancamento';
  snExtratoType_DataLancamento = 'DataLancamento';
  snExtratoType_DescricaoLancamento = 'DescricaoLancamento';
  snExtratoType_QtdeLancamento = 'QtdeLancamento';
  snExtratoType_NomeEstabelecimento = 'NomeEstabelecimento';
  snExtratoType_NumeroViagem = 'NumeroViagem';
  snExtratoType_TipoLancamento = 'TipoLancamento';
  snExtratoType_ValorLancamento = 'ValorLancamento';
  snExtratoType_Saldo = 'Saldo';

type
  tExtratoType = class
  private
    F_NameSpaceAlias: string;
    FSeqLancamento: integer; // (E)
    FSeqLancamento_IsSet_: boolean;
    FDataLancamento: tDateTime; // (E)
    FDescricaoLancamento: string; // (E)
    FQtdeLancamento: integer; // (E)
    FQtdeLancamento_IsSet_: boolean;
    FNomeEstabelecimento: string; // (E)
    FNomeEstabelecimento_IsSet_: boolean;
    FNumeroViagem: tNumeroViagem; // (E)
    FNumeroViagem_IsSet_: boolean;
    FTipoLancamento: string; // (E)
    FValorLancamento: extended; // (E)
    FSaldo: extended; // (E)
    procedure SetSeqLancamento(value:integer);
    procedure SetQtdeLancamento(value:integer);
    procedure SetNomeEstabelecimento(value:string);
    procedure SetNumeroViagem(value:tNumeroViagem);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property SeqLancamento: integer read FSeqLancamento write SetSeqLancamento;
    property SeqLancamento_IsSet_:boolean read FSeqLancamento_IsSet_;
    property DataLancamento: tDateTime read FDataLancamento write FDataLancamento;
    property DescricaoLancamento: string read FDescricaoLancamento write FDescricaoLancamento;
    property QtdeLancamento: integer read FQtdeLancamento write SetQtdeLancamento;
    property QtdeLancamento_IsSet_:boolean read FQtdeLancamento_IsSet_;
    property NomeEstabelecimento: string read FNomeEstabelecimento write SetNomeEstabelecimento;
    property NomeEstabelecimento_IsSet_:boolean read FNomeEstabelecimento_IsSet_;
    property NumeroViagem: tNumeroViagem read FNumeroViagem write SetNumeroViagem;
    property NumeroViagem_IsSet_:boolean read FNumeroViagem_IsSet_;
    property TipoLancamento: string read FTipoLancamento write FTipoLancamento;
    property ValorLancamento: extended read FValorLancamento write FValorLancamento;
    property Saldo: extended read FSaldo write FSaldo;
  end;
  tExtrato = tExtratoType;
const
  snViagemAgregada = 'ViagemAgregada';
  snViagemAgregada_NumeroViagem = 'NumeroViagem';
  snViagemAgregada_DocumentoRef = 'DocumentoRef';
  snViagemAgregada_RotaViagem = 'RotaViagem';
  snViagemAgregada_SituacaoViagem = 'SituacaoViagem';

type
  tViagemAgregada = class
  private
    F_NameSpaceAlias: string;
    FNumeroViagem: tNumeroViagem; // (E)
    FNumeroViagem_IsSet_: boolean;
    FDocumentoRef: tDocumentoRef; // (E)
    FDocumentoRef_IsSet_: boolean;
    FRotaViagem: tRotaViagem; // (E)
    FRotaViagem_IsSet_: boolean;
    FSituacaoViagem: tSituacaoViagem; // (E)
    FSituacaoViagem_IsSet_: boolean;
    procedure SetNumeroViagem(value:tNumeroViagem);
    procedure SetDocumentoRef(value:tDocumentoRef);
    procedure SetRotaViagem(value:tRotaViagem);
    procedure SetSituacaoViagem(value:tSituacaoViagem);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property NumeroViagem: tNumeroViagem read FNumeroViagem write SetNumeroViagem;
    property NumeroViagem_IsSet_:boolean read FNumeroViagem_IsSet_;
    property DocumentoRef: tDocumentoRef read FDocumentoRef write SetDocumentoRef;
    property DocumentoRef_IsSet_:boolean read FDocumentoRef_IsSet_;
    property RotaViagem: tRotaViagem read FRotaViagem write SetRotaViagem;
    property RotaViagem_IsSet_:boolean read FRotaViagem_IsSet_;
    property SituacaoViagem: tSituacaoViagem read FSituacaoViagem write SetSituacaoViagem;
    property SituacaoViagem_IsSet_:boolean read FSituacaoViagem_IsSet_;
  end;

const
  snContratoAgregadoType = 'ContratoAgregadoType';
  snContratoAgregadoType_NumeroContrato = 'NumeroContrato';
  snContratoAgregadoType_CIOT = 'CIOT';
  snContratoAgregadoType_Transportador = 'Transportador';
  snContratoAgregadoType_DocumentoRef = 'DocumentoRef';
  snContratoAgregadoType_DataVigencia = 'DataVigencia';
  snContratoAgregadoType_SituacaoContrato = 'SituacaoContrato';
  snContratoAgregadoType_VeiculosViagem = 'VeiculosViagem';
  snContratoAgregadoType_ViagemAgregada = 'ViagemAgregada';

type
  tContratoAgregadoType = class
  private
    F_NameSpaceAlias: string;
    FNumeroContrato: string; // (E)
    FCIOT: tCIOT; // (E)
    FCIOT_IsSet_: boolean;
    FTransportador: tTransportador; // (E)
    FTransportador_IsSet_: boolean;
    FDocumentoRef: tDocumentoRef; // (E)
    FDocumentoRef_IsSet_: boolean;
    FDataVigencia: tDateTime; // (E)
    FSituacaoContrato: string; // (E)
    FVeiculosViagem: tManagedStringList; // of tVeiculosViagem(E)
    FViagemAgregada: tManagedStringList; // of tViagemAgregada(E)
    procedure SetCIOT(value:tCIOT);
    procedure SetTransportador(value:tTransportador);
    procedure SetDocumentoRef(value:tDocumentoRef);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property NumeroContrato: string read FNumeroContrato write FNumeroContrato;
    property CIOT: tCIOT read FCIOT write SetCIOT;
    property CIOT_IsSet_:boolean read FCIOT_IsSet_;
    property Transportador: tTransportador read FTransportador write SetTransportador;
    property Transportador_IsSet_:boolean read FTransportador_IsSet_;
    property DocumentoRef: tDocumentoRef read FDocumentoRef write SetDocumentoRef;
    property DocumentoRef_IsSet_:boolean read FDocumentoRef_IsSet_;
    property DataVigencia: tDateTime read FDataVigencia write FDataVigencia;
    property SituacaoContrato: string read FSituacaoContrato write FSituacaoContrato;
    property VeiculosViagem: tManagedStringList read FVeiculosViagem write FVeiculosViagem; // of tVeiculosViagem
    property ViagemAgregada: tManagedStringList read FViagemAgregada write FViagemAgregada; // of tViagemAgregada
  end;

const
  snPeriodoDeclaracaoType = 'PeriodoDeclaracaoType';
  snPeriodoDeclaracaoType_DataInicial = 'DataInicial';
  snPeriodoDeclaracaoType_DataFinal = 'DataFinal';

type
  tPeriodoDeclaracaoType = class
  private
    F_NameSpaceAlias: string;
    FDataInicial: tDateTime; // (E)
    FDataFinal: tDateTime; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property DataInicial: tDateTime read FDataInicial write FDataInicial;
    property DataFinal: tDateTime read FDataFinal write FDataFinal;
  end;

const
  snPeriodoEmissaoType = 'PeriodoEmissaoType';
  snPeriodoEmissaoType_DataInicial = 'DataInicial';
  snPeriodoEmissaoType_DataFinal = 'DataFinal';

type
  tPeriodoEmissaoType = class
  private
    F_NameSpaceAlias: string;
    FDataInicial: tDateTime; // (E)
    FDataFinal: tDateTime; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property DataInicial: tDateTime read FDataInicial write FDataInicial;
    property DataFinal: tDateTime read FDataFinal write FDataFinal;
  end;

const
  snVigenciaContratoType = 'VigenciaContratoType';
  snVigenciaContratoType_DataInicial = 'DataInicial';
  snVigenciaContratoType_DataFinal = 'DataFinal';

type
  tVigenciaContratoType = class
  private
    F_NameSpaceAlias: string;
    FDataInicial: tDateTime; // (E)
    FDataFinal: tDateTime; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property DataInicial: tDateTime read FDataInicial write FDataInicial;
    property DataFinal: tDateTime read FDataFinal write FDataFinal;
  end;

implementation
uses
  SysUtils,
  mylib;

const
  thisNamespaceURI = 'https://ws.rodocred.com.br/';
  defNamespaceAlias = '';

{ tComprometimento }

class function tComprometimento._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tComprometimento.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tComprometimento.Create(aRoot:tJanXMLNode2);
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
    if (sn = snComprometimento_Servico) then
      Servico :=  xn.text // string
    else if (sn = snComprometimento_ValorComprometimento) then
      ValorComprometimento := DefStrToFloat(xn.text, 0)
    else if (sn = snComprometimento_ValorLimite) then
      ValorLimite := DefStrToFloat(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tComprometimento.Destroy;
begin
  inherited;
end; // destructor ...

procedure tComprometimento.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Comprometimento')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snComprometimento_Servico));
  xn.text := FServico;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snComprometimento_ValorComprometimento));
  xn.text := MyFloatToStr(FValorComprometimento);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snComprometimento_ValorLimite));
  xn.text := MyFloatToStr(FValorLimite);
end; // procedure save

{ tPeriodoExtrato }

class function tPeriodoExtrato._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tPeriodoExtrato.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tPeriodoExtrato.Create(aRoot:tJanXMLNode2);
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
    if (sn = snPeriodoExtrato_DataInicialExtrato) then
      DataInicialExtrato := DateFromXMLDateTime(xn.text) // tDate
    else if (sn = snPeriodoExtrato_DataFinalExtrato) then
      DataFinalExtrato := DateFromXMLDateTime(xn.text) // tDate
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tPeriodoExtrato.Destroy;
begin
  inherited;
end; // destructor ...

procedure tPeriodoExtrato.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'PeriodoExtrato')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snPeriodoExtrato_DataInicialExtrato));
  xn.text := DateToXMLDateTime(FDataInicialExtrato);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snPeriodoExtrato_DataFinalExtrato));
  xn.text := DateToXMLDateTime(FDataFinalExtrato);
end; // procedure save

{ tOperacaoRetorno }

class function tOperacaoRetorno._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tOperacaoRetorno.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FEventoOperacaoRetorno := tManagedStringlist.Create;
  FDocumentosRequeridos := tManagedStringlist.Create;
end; // constructor ...

constructor tOperacaoRetorno.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
//  i: integer;
  thisURI: string;
  aEventoOperacaoRetorno: tEventoOperacaoRetorno;
  aDocumentosRequeridos: tDocumentosRequeridos;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snOperacaoRetorno_IDOperacaoViagem) then
      FIDOperacaoViagem := xn.text
    else if (sn = snOperacaoRetorno_CodigoOperacao) then
      CodigoOperacao :=  xn.text // string
    else if (sn = snOperacaoRetorno_CondicaoLiberacaoOperacao) then
      CondicaoLiberacaoOperacao :=  xn.text // string
    else if (sn = snOperacaoRetorno_DataOperacao) then
      DataOperacao := DateFromXMLDateTime(xn.text) // tDate
    else if (sn = snOperacaoRetorno_LocalRealizacao) then
      LocalRealizacao :=  xn.text // string
    else if (sn = snOperacaoRetorno_Estabelecimento)
      and ((thisURI='') or (tEstabelecimento._nsURI_ = thisURI)) then
      FEstabelecimento := tEstabelecimento.Create(xn)
    else if (sn = snOperacaoRetorno_FilialEmpresa)
      and ((thisURI='') or (tFilialEmpresa._nsURI_ = thisURI)) then
      FFilialEmpresa := tFilialEmpresa.Create(xn)
    else if (sn = snOperacaoRetorno_EventoOperacaoRetorno)
      and ((thisURI='') or (tEventoOperacaoRetorno._nsURI_ = thisURI)) then
    begin
      aEventoOperacaoRetorno := tEventoOperacaoRetorno.Create(xn);
      FEventoOperacaoRetorno.AddObject('?', aEventoOperacaoRetorno);
    end
    else if (sn = snOperacaoRetorno_PesoCargaEntregue) then
      FPesoCargaEntregue := DefStrToFloat( xn.text,0 )
    else if (sn = snOperacaoRetorno_UnidadeMedidaPeso)then
      FUnidadeMedidaPeso := xn.text
    else if (sn = snOperacaoRetorno_Odometro) then
      Odometro := DefStrToFloat(xn.text, 0)
    else if (sn = snOperacaoRetorno_DocumentosRequeridos)
      and ((thisURI='') or (tDocumentosRequeridos._nsURI_ = thisURI)) then
    begin
      aDocumentosRequeridos := tDocumentosRequeridos.Create(xn);
      FDocumentosRequeridos.AddObject('?', aDocumentosRequeridos);
    end
    else if (sn = snOperacaoRetorno_SituacaoOperacaoViagem)then
      FSituacaoOperacaoViagem := xn.text
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tOperacaoRetorno.Destroy;
begin
  FEstabelecimento.Free;
  FFilialEmpresa.Free;
  FEventoOperacaoRetorno.Free;
  FDocumentosRequeridos.Free;
  inherited;
end; // destructor ...

procedure tOperacaoRetorno.SetDataOperacao(value:tDate);
begin
  FDataOperacao := value;
  FDataOperacao_IsSet_ := true;
end;

procedure tOperacaoRetorno.SetLocalRealizacao(value:string);
begin
  FLocalRealizacao := value;
  FLocalRealizacao_IsSet_ := true;
end;

procedure tOperacaoRetorno.SetEstabelecimento(value:tEstabelecimento);
begin
  FEstabelecimento := value;
  FEstabelecimento_IsSet_ := true;
end;

procedure tOperacaoRetorno.SetFilialEmpresa(value:tFilialEmpresa);
begin
  FFilialEmpresa := value;
  FFilialEmpresa_IsSet_ := true;
end;

procedure tOperacaoRetorno.SetPesoCargaEntregue(value:tPesoCargaEntregue);
begin
  FPesoCargaEntregue := value;
  FPesoCargaEntregue_IsSet_ := true;
end;

procedure tOperacaoRetorno.SetUnidadeMedidaPeso(value:tUnidadeMedidaPeso);
begin
  FUnidadeMedidaPeso := value;
  FUnidadeMedidaPeso_IsSet_ := true;
end;

procedure tOperacaoRetorno.SetOdometro(value:extended);
begin
  FOdometro := value;
  FOdometro_IsSet_ := true;
end;

procedure tOperacaoRetorno.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'OperacaoRetorno')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(snOperacaoRetorno_IDOperacaoViagem);
  xn.text :=  FIDOperacaoViagem;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoRetorno_CodigoOperacao));
  xn.text := FCodigoOperacao;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoRetorno_CondicaoLiberacaoOperacao));
  xn.text := FCondicaoLiberacaoOperacao;
  if DataOperacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoRetorno_DataOperacao));
    xn.text := DateToXMLDateTime(FDataOperacao);
  end;
  if LocalRealizacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoRetorno_LocalRealizacao));
    xn.text := FLocalRealizacao;
  end;
  if Assigned(FEstabelecimento) then
  begin
    xn := aNode.addChildByName(snOperacaoRetorno_Estabelecimento);
    FEstabelecimento.Save(xn);
  end;
  if Assigned(FFilialEmpresa) then
  begin
    xn := aNode.addChildByName(snOperacaoRetorno_FilialEmpresa);
    FFilialEmpresa.Save(xn);
  end;
  // element "EventoOperacaoRetorno" is tManagedStringlist
  if Assigned(FEventoOperacaoRetorno) then
    for i:=0 to FEventoOperacaoRetorno.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoRetorno_EventoOperacaoRetorno));
      tEventoOperacaoRetorno(FEventoOperacaoRetorno.Objects[i]).Save(xn);
    end; // for i:=0 to ...
  xn := aNode.addChildByName(snOperacaoRetorno_PesoCargaEntregue);
  xn.text := MyFloatToStr(  FPesoCargaEntregue );

  xn := aNode.addChildByName(snOperacaoRetorno_UnidadeMedidaPeso);
  xn.text :=  FUnidadeMedidaPeso;

  if Odometro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoRetorno_Odometro));
    xn.text := MyFloatToStr(FOdometro);
  end;
  // element "DocumentosRequeridos" is tManagedStringlist
  if Assigned(FDocumentosRequeridos) then
    for i:=0 to FDocumentosRequeridos.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoRetorno_DocumentosRequeridos));
      tDocumentosRequeridos(FDocumentosRequeridos.Objects[i]).Save(xn);
    end; // for i:=0 to ...
  xn := aNode.addChildByName(snOperacaoRetorno_SituacaoOperacaoViagem);
  xn.text := FSituacaoOperacaoViagem;

end; // procedure save

{ tRegistroViagemRetorno }

class function tRegistroViagemRetorno._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tRegistroViagemRetorno.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FOperacaoRetorno := tManagedStringlist.Create;
end; // constructor ...

constructor tRegistroViagemRetorno.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
//  i: integer;
  thisURI: string;
  aOperacaoRetorno: tOperacaoRetorno;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snRegistroViagemRetorno_NumeroViagem)then
      FNumeroViagem := xn.text
    else if (sn = snRegistroViagemRetorno_DocumentoRef)then
      FDocumentoRef := xn.text
    else if (sn = snRegistroViagemRetorno_ResumoFinanceiro)
      and ((thisURI='') or (tResumoFinanceiro._nsURI_ = thisURI)) then
      FResumoFinanceiro := tResumoFinanceiro.Create(xn)
    else if (sn = snRegistroViagemRetorno_OperacaoRetorno)
      and ((thisURI='') or (tOperacaoRetorno._nsURI_ = thisURI)) then
    begin
      aOperacaoRetorno := tOperacaoRetorno.Create(xn);
      FOperacaoRetorno.AddObject('?', aOperacaoRetorno);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tRegistroViagemRetorno.Destroy;
begin
  FResumoFinanceiro.Free;
  FOperacaoRetorno.Free;
  inherited;
end; // destructor ...

procedure tRegistroViagemRetorno.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'RegistroViagemRetorno')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

    xn := aNode.addChildByName(snRegistroViagemRetorno_NumeroViagem);
    xn.text := FNumeroViagem;

    xn := aNode.addChildByName(snRegistroViagemRetorno_DocumentoRef);
    xn.text := FDocumentoRef;

  if Assigned(FResumoFinanceiro) then
  begin
    xn := aNode.addChildByName(snRegistroViagemRetorno_ResumoFinanceiro);
    FResumoFinanceiro.Save(xn);
  end;
  // element "OperacaoRetorno" is tManagedStringlist
  if Assigned(FOperacaoRetorno) then
    for i:=0 to FOperacaoRetorno.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRegistroViagemRetorno_OperacaoRetorno));
      tOperacaoRetorno(FOperacaoRetorno.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tListaPedidosValePedagio }

class function tListaPedidosValePedagio._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tListaPedidosValePedagio.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FPedidoValePedagio := tManagedStringlist.Create;
end; // constructor ...

constructor tListaPedidosValePedagio.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
//  i: integer;
  thisURI: string;
  aPedidoValePedagio: tPedidoValePedagio;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snListaPedidosValePedagio_PedidoValePedagio)
      and ((thisURI='') or (tPedidoValePedagio._nsURI_ = thisURI)) then
    begin
      aPedidoValePedagio := tPedidoValePedagio.Create(xn);
      FPedidoValePedagio.AddObject('?', aPedidoValePedagio);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tListaPedidosValePedagio.Destroy;
begin
  FPedidoValePedagio.Free;
  inherited;
end; // destructor ...

procedure tListaPedidosValePedagio.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ListaPedidosValePedagio')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "PedidoValePedagio" is tManagedStringlist
  if Assigned(FPedidoValePedagio) then
    for i:=0 to FPedidoValePedagio.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snListaPedidosValePedagio_PedidoValePedagio));
      tPedidoValePedagio(FPedidoValePedagio.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tExtratoType }

class function tExtratoType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tExtratoType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tExtratoType.Create(aRoot:tJanXMLNode2);
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
    if (sn = snExtratoType_SeqLancamento) then
      SeqLancamento := StrToIntDef(xn.text, 0)
    else if (sn = snExtratoType_DataLancamento) then
      DataLancamento := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snExtratoType_DescricaoLancamento) then
      DescricaoLancamento :=  xn.text // string
    else if (sn = snExtratoType_QtdeLancamento) then
      QtdeLancamento := StrToIntDef(xn.text, 0)
    else if (sn = snExtratoType_NomeEstabelecimento) then
      NomeEstabelecimento :=  xn.text // string
    else if (sn = snExtratoType_NumeroViagem)then
      FNumeroViagem := xn.text
    else if (sn = snExtratoType_TipoLancamento) then
      TipoLancamento :=  xn.text // string
    else if (sn = snExtratoType_ValorLancamento) then
      ValorLancamento := DefStrToFloat(xn.text, 0)
    else if (sn = snExtratoType_Saldo) then
      Saldo := DefStrToFloat(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tExtratoType.Destroy;
begin
  inherited;
end; // destructor ...

procedure tExtratoType.SetSeqLancamento(value:integer);
begin
  FSeqLancamento := value;
  FSeqLancamento_IsSet_ := true;
end;

procedure tExtratoType.SetQtdeLancamento(value:integer);
begin
  FQtdeLancamento := value;
  FQtdeLancamento_IsSet_ := true;
end;

procedure tExtratoType.SetNomeEstabelecimento(value:string);
begin
  FNomeEstabelecimento := value;
  FNomeEstabelecimento_IsSet_ := true;
end;

procedure tExtratoType.SetNumeroViagem(value:tNumeroViagem);
begin
  FNumeroViagem := value;
  FNumeroViagem_IsSet_ := true;
end;

procedure tExtratoType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ExtratoType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if SeqLancamento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snExtratoType_SeqLancamento));
    xn.text := IntToStr(FSeqLancamento);
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snExtratoType_DataLancamento));
  xn.text := DateTimeToXMLDateTime(FDataLancamento);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snExtratoType_DescricaoLancamento));
  xn.text := FDescricaoLancamento;
  if QtdeLancamento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snExtratoType_QtdeLancamento));
    xn.text := IntToStr(FQtdeLancamento);
  end;
  if NomeEstabelecimento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snExtratoType_NomeEstabelecimento));
    xn.text := FNomeEstabelecimento;
  end;
    xn := aNode.addChildByName(snExtratoType_NumeroViagem);
    xn.text := FNumeroViagem;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snExtratoType_TipoLancamento));
  xn.text := FTipoLancamento;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snExtratoType_ValorLancamento));
  xn.text := MyFloatToStr(FValorLancamento);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snExtratoType_Saldo));
  xn.text := MyFloatToStr(FSaldo);
end; // procedure save

{ tViagemAgregada }

class function tViagemAgregada._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tViagemAgregada.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tViagemAgregada.Create(aRoot:tJanXMLNode2);
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
    if (sn = snViagemAgregada_NumeroViagem) then
      FNumeroViagem := xn.text
    else if (sn = snViagemAgregada_DocumentoRef)then
      FDocumentoRef := xn.text
    else if (sn = snViagemAgregada_RotaViagem)
      and ((thisURI='') or (tRotaViagem._nsURI_ = thisURI)) then
      FRotaViagem := tRotaViagem.Create(xn)
    else if (sn = snViagemAgregada_SituacaoViagem)then
      FSituacaoViagem := xn.text
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tViagemAgregada.Destroy;
begin
  FRotaViagem.Free;
  inherited;
end; // destructor ...

procedure tViagemAgregada.SetNumeroViagem(value:tNumeroViagem);
begin
  FNumeroViagem := value;
  FNumeroViagem_IsSet_ := true;
end;

procedure tViagemAgregada.SetDocumentoRef(value:tDocumentoRef);
begin
  FDocumentoRef := value;
  FDocumentoRef_IsSet_ := true;
end;

procedure tViagemAgregada.SetRotaViagem(value:tRotaViagem);
begin
  FRotaViagem := value;
  FRotaViagem_IsSet_ := true;
end;

procedure tViagemAgregada.SetSituacaoViagem(value:tSituacaoViagem);
begin
  FSituacaoViagem := value;
  FSituacaoViagem_IsSet_ := true;
end;

procedure tViagemAgregada.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ViagemAgregada')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

    xn := aNode.addChildByName(snViagemAgregada_NumeroViagem);
    xn.text := FNumeroViagem;

    xn := aNode.addChildByName(snViagemAgregada_DocumentoRef);
    xn.text := FDocumentoRef;

  if Assigned(FRotaViagem) then
  begin
    xn := aNode.addChildByName(snViagemAgregada_RotaViagem);
    FRotaViagem.Save(xn);
  end;
    xn := aNode.addChildByName(snViagemAgregada_SituacaoViagem);
    xn.text := FSituacaoViagem;

end; // procedure save

{ tContratoAgregadoType }

class function tContratoAgregadoType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tContratoAgregadoType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FVeiculosViagem := tManagedStringlist.Create;
  FViagemAgregada := tManagedStringlist.Create;
end; // constructor ...

constructor tContratoAgregadoType.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
//  i: integer;
  thisURI: string;
  aVeiculosViagem: tVeiculosViagem;
  aViagemAgregada: tViagemAgregada;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snContratoAgregadoType_NumeroContrato) then
      NumeroContrato :=  xn.text // string
    else if (sn = snContratoAgregadoType_CIOT)
      and ((thisURI='') or (tCIOT._nsURI_ = thisURI)) then
      FCIOT := tCIOT.Create(xn)
    else if (sn = snContratoAgregadoType_Transportador)
      and ((thisURI='') or (tTransportador._nsURI_ = thisURI)) then
      FTransportador := tTransportador.Create(xn)
    else if (sn = snContratoAgregadoType_DocumentoRef)then
      FDocumentoRef := xn.text
    else if (sn = snContratoAgregadoType_DataVigencia) then
      DataVigencia := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snContratoAgregadoType_SituacaoContrato) then
      SituacaoContrato :=  xn.text // string
    else if (sn = snContratoAgregadoType_VeiculosViagem)
      and ((thisURI='') or (tVeiculosViagem._nsURI_ = thisURI)) then
    begin
      aVeiculosViagem := tVeiculosViagem.Create(xn);
      FVeiculosViagem.AddObject('?', aVeiculosViagem);
    end
    else if (sn = snContratoAgregadoType_ViagemAgregada)
      and ((thisURI='') or (tViagemAgregada._nsURI_ = thisURI)) then
    begin
      aViagemAgregada := tViagemAgregada.Create(xn);
      FViagemAgregada.AddObject('?', aViagemAgregada);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tContratoAgregadoType.Destroy;
begin
  FCIOT.Free;
  FTransportador.Free;
  FVeiculosViagem.Free;
  FViagemAgregada.Free;
  inherited;
end; // destructor ...

procedure tContratoAgregadoType.SetCIOT(value:tCIOT);
begin
  FCIOT := value;
  FCIOT_IsSet_ := true;
end;

procedure tContratoAgregadoType.SetTransportador(value:tTransportador);
begin
  FTransportador := value;
  FTransportador_IsSet_ := true;
end;

procedure tContratoAgregadoType.SetDocumentoRef(value:tDocumentoRef);
begin
  FDocumentoRef := value;
  FDocumentoRef_IsSet_ := true;
end;

procedure tContratoAgregadoType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ContratoAgregadoType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snContratoAgregadoType_NumeroContrato));
  xn.text := FNumeroContrato;
  if Assigned(FCIOT) then
  begin
    xn := aNode.addChildByName(snContratoAgregadoType_CIOT);
    FCIOT.Save(xn);
  end;
  if Assigned(FTransportador) then
  begin
    xn := aNode.addChildByName(snContratoAgregadoType_Transportador);
    FTransportador.Save(xn);
  end;
    xn := aNode.addChildByName(snContratoAgregadoType_DocumentoRef);
    xn.text := FDocumentoRef;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snContratoAgregadoType_DataVigencia));
  xn.text := DateTimeToXMLDateTime(FDataVigencia);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snContratoAgregadoType_SituacaoContrato));
  xn.text := FSituacaoContrato;
  // element "VeiculosViagem" is tManagedStringlist
  if Assigned(FVeiculosViagem) then
    for i:=0 to FVeiculosViagem.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snContratoAgregadoType_VeiculosViagem));
      tVeiculosViagem(FVeiculosViagem.Objects[i]).Save(xn);
    end; // for i:=0 to ...
  // element "ViagemAgregada" is tManagedStringlist
  if Assigned(FViagemAgregada) then
    for i:=0 to FViagemAgregada.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snContratoAgregadoType_ViagemAgregada));
      tViagemAgregada(FViagemAgregada.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tPeriodoDeclaracaoType }

class function tPeriodoDeclaracaoType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tPeriodoDeclaracaoType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tPeriodoDeclaracaoType.Create(aRoot:tJanXMLNode2);
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
    if (sn = snPeriodoDeclaracaoType_DataInicial) then
      DataInicial := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snPeriodoDeclaracaoType_DataFinal) then
      DataFinal := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tPeriodoDeclaracaoType.Destroy;
begin
  inherited;
end; // destructor ...

procedure tPeriodoDeclaracaoType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'PeriodoDeclaracaoType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snPeriodoDeclaracaoType_DataInicial));
  xn.text := DateTimeToXMLDateTime(FDataInicial);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snPeriodoDeclaracaoType_DataFinal));
  xn.text := DateTimeToXMLDateTime(FDataFinal);
end; // procedure save

{ tPeriodoEmissaoType }

class function tPeriodoEmissaoType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tPeriodoEmissaoType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tPeriodoEmissaoType.Create(aRoot:tJanXMLNode2);
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
    if (sn = snPeriodoEmissaoType_DataInicial) then
      DataInicial := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snPeriodoEmissaoType_DataFinal) then
      DataFinal := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tPeriodoEmissaoType.Destroy;
begin
  inherited;
end; // destructor ...

procedure tPeriodoEmissaoType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'PeriodoEmissaoType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snPeriodoEmissaoType_DataInicial));
  xn.text := DateTimeToXMLDateTime(FDataInicial);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snPeriodoEmissaoType_DataFinal));
  xn.text := DateTimeToXMLDateTime(FDataFinal);
end; // procedure save

{ tVigenciaContratoType }

class function tVigenciaContratoType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tVigenciaContratoType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tVigenciaContratoType.Create(aRoot:tJanXMLNode2);
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
    if (sn = snVigenciaContratoType_DataInicial) then
      DataInicial := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snVigenciaContratoType_DataFinal) then
      DataFinal := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tVigenciaContratoType.Destroy;
begin
  inherited;
end; // destructor ...

procedure tVigenciaContratoType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'VigenciaContratoType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snVigenciaContratoType_DataInicial));
  xn.text := DateTimeToXMLDateTime(FDataInicial);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snVigenciaContratoType_DataFinal));
  xn.text := DateTimeToXMLDateTime(FDataFinal);
end; // procedure save

end.
