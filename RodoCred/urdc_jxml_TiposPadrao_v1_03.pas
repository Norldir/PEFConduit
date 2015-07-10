unit urdc_jxml_TiposPadrao_v1_03;

Interface
uses
  Classes,
  JanXMLParser2,
  uXMLTools,
  urdc_jxml_TiposPadrao_v1_00,
  urdc_jxml_TiposPadrao_v1_01,
  urdc_jxml_TiposPadrao_v1_02;

// targetNameSpace: https://ws.rodocred.com.br/
// NameSpacePrefix: rdc
// Date of Schema : 26/12/2012 09:17:48
// Translationdate: 28/03/2013 16:23:19
//
//   includes xs=http://www.w3.org/2001/XMLSchema

// ordinal types
type
  tTipoOperacaoPedagioType = string;
  tGerarComprovanteType = string;
  tSituacaoPracaType = string;
  tPermiteRodocredChipType = string;
  tContaType = string;
  tTipoAgendamentoFinanceiroType = string;
  tSituacaoAgendamentoType = string;
  tTipoOperacaoFinanceiraType = string;
  tTipoConsultaAgendaFinanceiraType = string;
  tObservacao = string;
  tOperacaoPedagio = tTipoOperacaoPedagioType;
  tGerarComprovante = tGerarComprovanteType;
  tValorTotalTaxas = tValorType;
  tIDConcessionaria = integer;
  tSituacaoPracaPedagio = tSituacaoPracaType;
  tKmRodovia = string;
  tRodovia = string;
  tOrdenacaoPraca = integer;
  tPermiteChipRodocred = tPermiteRodocredChipType;
  tDataProcessamentoVP = tDateTime;
  tConta = tContaType;
  tTipoAgendamentoFinanceiro = tTipoAgendamentoFinanceiroType;
  tSituacaoAgendamentoFinanceiro = tSituacaoAgendamentoType;
  tDataAgendamento = tDateTime;
  tDataProcessamento = tDateTime;
  tIDAgendamentoFinanceiro = int64;
  tTipoOperacaoFinanceira = tTipoOperacaoFinanceiraType;
  tValorTransacaoFinanceira = extended;
  tValorServico = extended;
  tIDItemAgendamentoFinanceiro = int64;
  tTipoConsultaAgendamento = tTipoConsultaAgendaFinanceiraType;
//  tValoresAgendados = tValoresAgendadosType;
//  tValoresRealizados = tValoresRealizadosType;
//  tDadosAgendamentoFinanceiroConsolidado = tDadosAgendamentoConsolidadoType;
  tLinkCertificado = string;
  tNumeroFormulario = string;
  tNumeroCupom = string;
//  tListaCupomValePedagio = tListaCupomValePedagioType;

// constants for enumerations
const
  cTipoOperacaoPedagioType_COM = 'COM';
  cTipoOperacaoPedagioType_PRO = 'PRO';
  cTipoOperacaoPedagioType_FIN = 'FIN';
  cTipoOperacaoPedagioType_ALT = 'ALT';
  cGerarComprovanteType_S = 'S';
  cGerarComprovanteType_N = 'N';
  cSituacaoPracaType_ATI = 'ATI';
  cSituacaoPracaType_INA = 'INA';
  cSituacaoPracaType_FSI = 'FSI';
  cPermiteRodocredChipType_S = 'S';
  cPermiteRodocredChipType_N = 'N';
  cContaType_6 = '6';
  cContaType_7 = '7';
  cContaType_8 = '8';
  cTipoAgendamentoFinanceiroType_COB = 'COB';
  cTipoAgendamentoFinanceiroType_CRD = 'CRD';
  cTipoAgendamentoFinanceiroType_DEB = 'DEB';
  cTipoAgendamentoFinanceiroType_REP = 'REP';
  cTipoAgendamentoFinanceiroType_RPS = 'RPS';
  cTipoAgendamentoFinanceiroType_TRB = 'TRB';
  cSituacaoAgendamentoType_CAN = 'CAN';
  cSituacaoAgendamentoType_LIB = 'LIB';
  cSituacaoAgendamentoType_NPS = 'NPS';
  cSituacaoAgendamentoType_PEN = 'PEN';
  cSituacaoAgendamentoType_PRO = 'PRO';
  cTipoOperacaoFinanceiraType_D = 'D';
  cTipoOperacaoFinanceiraType_C = 'C';
  cTipoConsultaAgendaFinanceiraType_D = 'D';
  cTipoConsultaAgendaFinanceiraType_C = 'C';

const
  snValorUnitarioPedagio = 'ValorUnitarioPedagio';

type
  tValorUnitarioPedagio = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snOperacaoFinanceira = 'OperacaoFinanceira';

type
  tOperacaoFinanceira = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snDataFinal = 'DataFinal';

type
  tDataFinal = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snDataInicio = 'DataInicio';

type
  tDataInicio = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snCupom = 'Cupom';
  snCupom_NumeroCupom = 'NumeroCupom';
  snCupom_NumeroFormulario = 'NumeroFormulario';
  snCupom_PlacaVeiculo = 'PlacaVeiculo';
  snCupom_MeioPagamentoValePedagio = 'MeioPagamentoValePedagio';
  snCupom_ValorUnitarioPedagio = 'ValorUnitarioPedagio';

type
  tCupom = class
  private
    F_NameSpaceAlias: string;
    FNumeroCupom: string; // (E)
    FNumeroFormulario: string; // (E)
    FNumeroFormulario_IsSet_: boolean;
    FPlacaVeiculo: tPlacaVeiculo; // (E)
    FPlacaVeiculo_IsSet_: boolean;
    FMeioPagamentoValePedagio: tMeioPagamentoValePedagio; // (E)
    FValorUnitarioPedagio: tValorUnitarioPedagio; // (E)
    procedure SetNumeroFormulario(value:string);
    procedure SetPlacaVeiculo(value:tPlacaVeiculo);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property NumeroCupom: string read FNumeroCupom write FNumeroCupom;
    property NumeroFormulario: string read FNumeroFormulario write SetNumeroFormulario;
    property NumeroFormulario_IsSet_:boolean read FNumeroFormulario_IsSet_;
    property PlacaVeiculo: tPlacaVeiculo read FPlacaVeiculo write SetPlacaVeiculo;
    property PlacaVeiculo_IsSet_:boolean read FPlacaVeiculo_IsSet_;
    property MeioPagamentoValePedagio: tMeioPagamentoValePedagio read FMeioPagamentoValePedagio write FMeioPagamentoValePedagio;
    property ValorUnitarioPedagio: tValorUnitarioPedagio read FValorUnitarioPedagio write FValorUnitarioPedagio;
  end;

const
  snListaCupomValePedagioType = 'ListaCupomValePedagioType';
  snListaCupomValePedagioType_Cupom = 'Cupom';

type
  tListaCupomValePedagioType = class
  private
    F_NameSpaceAlias: string;
    FCupom: tManagedStringList; // of tCupom(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Cupom: tManagedStringList read FCupom write FCupom; // of tCupom
  end;

const
  snValoresRealizadosType = 'ValoresRealizadosType';
  snValoresRealizadosType_ValorTransacaoFinanceira = 'ValorTransacaoFinanceira';
  snValoresRealizadosType_ValorServico = 'ValorServico';

type
  tValoresRealizadosType = class
  private
    F_NameSpaceAlias: string;
    FValorTransacaoFinanceira: extended; // (E)
    FValorServico: extended; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ValorTransacaoFinanceira: extended read FValorTransacaoFinanceira write FValorTransacaoFinanceira;
    property ValorServico: extended read FValorServico write FValorServico;
  end;

const
  snValoresAgendadosType = 'ValoresAgendadosType';
  snValoresAgendadosType_ValorTransacaoFinanceira = 'ValorTransacaoFinanceira';
  snValoresAgendadosType_ValorServico = 'ValorServico';

type
  tValoresAgendadosType = class
  private
    F_NameSpaceAlias: string;
    FValorTransacaoFinanceira: extended; // (E)
    FValorServico: extended; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ValorTransacaoFinanceira: extended read FValorTransacaoFinanceira write FValorTransacaoFinanceira;
    property ValorServico: extended read FValorServico write FValorServico;
  end;

const
  snDadosAgendamentoConsolidadoType = 'DadosAgendamentoConsolidadoType';
  snDadosAgendamentoConsolidadoType_Conta = 'Conta';
  snDadosAgendamentoConsolidadoType_TipoOperacaoFinanceira = 'TipoOperacaoFinanceira';
  snDadosAgendamentoConsolidadoType_DataAgendamento = 'DataAgendamento';
  snDadosAgendamentoConsolidadoType_DataProcessamento = 'DataProcessamento';
  snDadosAgendamentoConsolidadoType_ValoresAgendados = 'ValoresAgendados';
  snDadosAgendamentoConsolidadoType_ValoresRealizados = 'ValoresRealizados';
  snDadosAgendamentoConsolidadoType_SituacaoAgendamentoFinanceiro = 'SituacaoAgendamentoFinanceiro';

type
  tDadosAgendamentoConsolidadoType = class
  private
    F_NameSpaceAlias: string;
    FConta: tContaType; // (E)
    FTipoOperacaoFinanceira: tTipoOperacaoFinanceiraType; // (E)
    FDataAgendamento: tDateTime; // (E)
    FDataProcessamento: tDateTime; // (E)
    FDataProcessamento_IsSet_: boolean;
    FValoresAgendados: tValoresAgendadosType; // (E)
    FValoresRealizados: tValoresRealizadosType; // (E)
    FSituacaoAgendamentoFinanceiro: tSituacaoAgendamentoType; // (E)
    procedure SetDataProcessamento(value:tDateTime);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Conta: tContaType read FConta write FConta;
    property TipoOperacaoFinanceira: tTipoOperacaoFinanceiraType read FTipoOperacaoFinanceira write FTipoOperacaoFinanceira;
    property DataAgendamento: tDateTime read FDataAgendamento write FDataAgendamento;
    property DataProcessamento: tDateTime read FDataProcessamento write SetDataProcessamento;
    property DataProcessamento_IsSet_:boolean read FDataProcessamento_IsSet_;
    property ValoresAgendados: tValoresAgendadosType read FValoresAgendados write FValoresAgendados;
    property ValoresRealizados: tValoresRealizadosType read FValoresRealizados write FValoresRealizados;
    property SituacaoAgendamentoFinanceiro: tSituacaoAgendamentoType read FSituacaoAgendamentoFinanceiro write FSituacaoAgendamentoFinanceiro;
  end;

const
  snDadosAgendamentoDetalhadoType = 'DadosAgendamentoDetalhadoType';
  snDadosAgendamentoDetalhadoType_IDAgendamentoFinanceiro = 'IDAgendamentoFinanceiro';
  snDadosAgendamentoDetalhadoType_Conta = 'Conta';
  snDadosAgendamentoDetalhadoType_TipoOperacaoFinanceira = 'TipoOperacaoFinanceira';
  snDadosAgendamentoDetalhadoType_ValorTransacaoFinanceira = 'ValorTransacaoFinanceira';
  snDadosAgendamentoDetalhadoType_ValorServico = 'ValorServico';
  snDadosAgendamentoDetalhadoType_DataAgendamento = 'DataAgendamento';
  snDadosAgendamentoDetalhadoType_DataProcessamento = 'DataProcessamento';
  snDadosAgendamentoDetalhadoType_NumeroViagem = 'NumeroViagem';
  snDadosAgendamentoDetalhadoType_IDItemAgendamentoFinanceiro = 'IDItemAgendamentoFinanceiro';
  snDadosAgendamentoDetalhadoType_SituacaoAgendamentoFinanceiro = 'SituacaoAgendamentoFinanceiro';
  snDadosAgendamentoDetalhadoType_OperacaoFinanceira = 'OperacaoFinanceira';

type
  tDadosAgendamentoDetalhadoType = class
  private
    F_NameSpaceAlias: string;
    FIDAgendamentoFinanceiro: int64; // (E)
    FConta: tContaType; // (E)
    FTipoOperacaoFinanceira: tTipoOperacaoFinanceiraType; // (E)
    FValorTransacaoFinanceira: extended; // (E)
    FValorServico: extended; // (E)
    FValorServico_IsSet_: boolean;
    FDataAgendamento: tDateTime; // (E)
    FDataProcessamento: tDateTime; // (E)
    FDataProcessamento_IsSet_: boolean;
    FNumeroViagem: tNumeroViagem; // (E)
    FNumeroViagem_IsSet_: boolean;
    FIDItemAgendamentoFinanceiro: int64; // (E)
    FIDItemAgendamentoFinanceiro_IsSet_: boolean;
    FSituacaoAgendamentoFinanceiro: tSituacaoAgendamentoType; // (E)
    FOperacaoFinanceira: tOperacaoFinanceira; // (E)
    procedure SetValorServico(value:extended);
    procedure SetDataProcessamento(value:tDateTime);
    procedure SetNumeroViagem(value:tNumeroViagem);
    procedure SetIDItemAgendamentoFinanceiro(value:int64);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property IDAgendamentoFinanceiro: int64 read FIDAgendamentoFinanceiro write FIDAgendamentoFinanceiro;
    property Conta: tContaType read FConta write FConta;
    property TipoOperacaoFinanceira: tTipoOperacaoFinanceiraType read FTipoOperacaoFinanceira write FTipoOperacaoFinanceira;
    property ValorTransacaoFinanceira: extended read FValorTransacaoFinanceira write FValorTransacaoFinanceira;
    property ValorServico: extended read FValorServico write SetValorServico;
    property ValorServico_IsSet_:boolean read FValorServico_IsSet_;
    property DataAgendamento: tDateTime read FDataAgendamento write FDataAgendamento;
    property DataProcessamento: tDateTime read FDataProcessamento write SetDataProcessamento;
    property DataProcessamento_IsSet_:boolean read FDataProcessamento_IsSet_;
    property NumeroViagem: tNumeroViagem read FNumeroViagem write SetNumeroViagem;
    property NumeroViagem_IsSet_:boolean read FNumeroViagem_IsSet_;
    property IDItemAgendamentoFinanceiro: int64 read FIDItemAgendamentoFinanceiro write SetIDItemAgendamentoFinanceiro;
    property IDItemAgendamentoFinanceiro_IsSet_:boolean read FIDItemAgendamentoFinanceiro_IsSet_;
    property SituacaoAgendamentoFinanceiro: tSituacaoAgendamentoType read FSituacaoAgendamentoFinanceiro write FSituacaoAgendamentoFinanceiro;
    property OperacaoFinanceira: tOperacaoFinanceira read FOperacaoFinanceira write FOperacaoFinanceira;
  end;

const
  snPeriodoDataType = 'PeriodoDataType';
  snPeriodoDataType_DataInicio = 'DataInicio';
  snPeriodoDataType_DataFinal = 'DataFinal';

type
  tPeriodoDataType = class
  private
    F_NameSpaceAlias: string;
    FDataInicio: tDataInicio; // (E)
    FDataFinal: tDataFinal; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property DataInicio: tDataInicio read FDataInicio write FDataInicio;
    property DataFinal: tDataFinal read FDataFinal write FDataFinal;
  end;

const
  snListaPracaType = 'ListaPracaType';
  snListaPracaType_IDConcessionaria = 'IDConcessionaria';
  snListaPracaType_Concessionaria = 'Concessionaria';
  snListaPracaType_IdPraca = 'IdPraca';
  snListaPracaType_NomePraca = 'NomePraca';
  snListaPracaType_Rodovia = 'Rodovia';
  snListaPracaType_KmRodovia = 'KmRodovia';
  snListaPracaType_Estado = 'Estado';
  snListaPracaType_LocalidadeOrigem = 'LocalidadeOrigem';
  snListaPracaType_LocalidadeDestino = 'LocalidadeDestino';
  snListaPracaType_SituacaoPracaPedagio = 'SituacaoPracaPedagio';
  snListaPracaType_OrdenacaoPraca = 'OrdenacaoPraca';
  snListaPracaType_Informativo = 'Informativo';
  snListaPracaType_PermiteChipRodocred = 'PermiteChipRodocred';
  snListaPracaType_SentidoCobranca = 'SentidoCobranca';

type
  tListaPracaType = class
  private
    F_NameSpaceAlias: string;
    FIDConcessionaria: integer; // (E)
    FConcessionaria: tConcessionaria; // (E)
    FIdPraca: tIdPraca; // (E)
    FNomePraca: tNomePraca; // (E)
    FRodovia: string; // (E)
    FKmRodovia: string; // (E)
    FEstado: tEstado; // (E)
    FLocalidadeOrigem: tLocalidadeOrigem; // (E)
    FLocalidadeDestino: tLocalidadeDestino; // (E)
    FSituacaoPracaPedagio: tSituacaoPracaType; // (E)
    FOrdenacaoPraca: integer; // (E)
    FInformativo: tInformativo; // (E)
    FInformativo_IsSet_: boolean;
    FPermiteChipRodocred: tPermiteRodocredChipType; // (E)
    FSentidoCobranca: tSentidoCobranca; // (E)
    procedure SetInformativo(value:tInformativo);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property IDConcessionaria: integer read FIDConcessionaria write FIDConcessionaria;
    property Concessionaria: tConcessionaria read FConcessionaria write FConcessionaria;
    property IdPraca: tIdPraca read FIdPraca write FIdPraca;
    property NomePraca: tNomePraca read FNomePraca write FNomePraca;
    property Rodovia: string read FRodovia write FRodovia;
    property KmRodovia: string read FKmRodovia write FKmRodovia;
    property Estado: tEstado read FEstado write FEstado;
    property LocalidadeOrigem: tLocalidadeOrigem read FLocalidadeOrigem write FLocalidadeOrigem;
    property LocalidadeDestino: tLocalidadeDestino read FLocalidadeDestino write FLocalidadeDestino;
    property SituacaoPracaPedagio: tSituacaoPracaType read FSituacaoPracaPedagio write FSituacaoPracaPedagio;
    property OrdenacaoPraca: integer read FOrdenacaoPraca write FOrdenacaoPraca;
    property Informativo: tInformativo read FInformativo write SetInformativo;
    property Informativo_IsSet_:boolean read FInformativo_IsSet_;
    property PermiteChipRodocred: tPermiteRodocredChipType read FPermiteChipRodocred write FPermiteChipRodocred;
    property SentidoCobranca: tSentidoCobranca read FSentidoCobranca write FSentidoCobranca;
  end;

const
  snDadosViagemPedagioType = 'DadosViagemPedagioType';
  snDadosViagemPedagioType_NumeroViagem = 'NumeroViagem';
  snDadosViagemPedagioType_Embarque = 'Embarque';
  snDadosViagemPedagioType_PrevisaoEntrega = 'PrevisaoEntrega';
  snDadosViagemPedagioType_DocumentoRef = 'DocumentoRef';
  snDadosViagemPedagioType_CentrodeCusto = 'CentrodeCusto';
  snDadosViagemPedagioType_Observacao = 'Observacao';

type
  tDadosViagemPedagioType = class
  private
    F_NameSpaceAlias: string;
    FNumeroViagem: tNumeroViagem; // (E)
    FNumeroViagem_IsSet_: boolean;
    FEmbarque: tDateTime; // (E)
    FEmbarque_IsSet_: boolean;
    FPrevisaoEntrega: tDateTime; // (E)
    FPrevisaoEntrega_IsSet_: boolean;
    FDocumentoRef: tDocumentoRef; // (E)
    FDocumentoRef_IsSet_: boolean;
    FCentrodeCusto: string; // (E)
    FCentrodeCusto_IsSet_: boolean;
    FObservacao: string; // (E)
    FObservacao_IsSet_: boolean;
    procedure SetNumeroViagem(value:tNumeroViagem);
    procedure SetEmbarque(value:tDateTime);
    procedure SetPrevisaoEntrega(value:tDateTime);
    procedure SetDocumentoRef(value:tDocumentoRef);
    procedure SetCentrodeCusto(value:string);
    procedure SetObservacao(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property NumeroViagem: tNumeroViagem read FNumeroViagem write SetNumeroViagem;
    property NumeroViagem_IsSet_:boolean read FNumeroViagem_IsSet_;
    property Embarque: tDateTime read FEmbarque write SetEmbarque;
    property Embarque_IsSet_:boolean read FEmbarque_IsSet_;
    property PrevisaoEntrega: tDateTime read FPrevisaoEntrega write SetPrevisaoEntrega;
    property PrevisaoEntrega_IsSet_:boolean read FPrevisaoEntrega_IsSet_;
    property DocumentoRef: tDocumentoRef read FDocumentoRef write SetDocumentoRef;
    property DocumentoRef_IsSet_:boolean read FDocumentoRef_IsSet_;
    property CentrodeCusto: string read FCentrodeCusto write SetCentrodeCusto;
    property CentrodeCusto_IsSet_:boolean read FCentrodeCusto_IsSet_;
    property Observacao: string read FObservacao write SetObservacao;
    property Observacao_IsSet_:boolean read FObservacao_IsSet_;
  end;

implementation
uses
  SysUtils,
  mylib;

const
  thisNamespaceURI = 'https://ws.rodocred.com.br/';
  defNamespaceAlias = '';

{ tValorUnitarioPedagio }

class function tValorUnitarioPedagio._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tValorUnitarioPedagio.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tValorUnitarioPedagio.Create(aRoot:tJanXMLNode2);
//var
//  xn: tJanXMLNode2;
//  sn: string;
//  i: integer;
//  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tValorUnitarioPedagio.Destroy;
begin
  inherited;
end; // destructor ...

procedure tValorUnitarioPedagio.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ValorUnitarioPedagio')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

end; // procedure save

{ tOperacaoFinanceira }

class function tOperacaoFinanceira._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tOperacaoFinanceira.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tOperacaoFinanceira.Create(aRoot:tJanXMLNode2);
//var
//  xn: tJanXMLNode2;
//  sn: string;
//  i: integer;
//  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tOperacaoFinanceira.Destroy;
begin
  inherited;
end; // destructor ...

procedure tOperacaoFinanceira.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'OperacaoFinanceira')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

end; // procedure save

{ tDataFinal }

class function tDataFinal._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tDataFinal.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tDataFinal.Create(aRoot:tJanXMLNode2);
//var
//  xn: tJanXMLNode2;
//  sn: string;
//  i: integer;
//  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tDataFinal.Destroy;
begin
  inherited;
end; // destructor ...

procedure tDataFinal.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'DataFinal')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

end; // procedure save

{ tDataInicio }

class function tDataInicio._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tDataInicio.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tDataInicio.Create(aRoot:tJanXMLNode2);
//var
//  xn: tJanXMLNode2;
//  sn: string;
//  i: integer;
//  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tDataInicio.Destroy;
begin
  inherited;
end; // destructor ...

procedure tDataInicio.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'DataInicio')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

end; // procedure save

{ tCupom }

class function tCupom._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCupom.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tCupom.Create(aRoot:tJanXMLNode2);
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
    if (sn = snCupom_NumeroCupom) then
      NumeroCupom :=  xn.text // string
    else if (sn = snCupom_NumeroFormulario) then
      NumeroFormulario :=  xn.text // string
    else if (sn = snCupom_PlacaVeiculo)then
      FPlacaVeiculo := xn.text
    else if (sn = snCupom_MeioPagamentoValePedagio)then
      FMeioPagamentoValePedagio := xn.text
    else if (sn = snCupom_ValorUnitarioPedagio)
      and ((thisURI='') or (tValorUnitarioPedagio._nsURI_ = thisURI)) then
      FValorUnitarioPedagio := tValorUnitarioPedagio.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tCupom.Destroy;
begin
  FValorUnitarioPedagio.Free;
  inherited;
end; // destructor ...

procedure tCupom.SetNumeroFormulario(value:string);
begin
  FNumeroFormulario := value;
  FNumeroFormulario_IsSet_ := true;
end;

procedure tCupom.SetPlacaVeiculo(value:tPlacaVeiculo);
begin
  FPlacaVeiculo := value;
  FPlacaVeiculo_IsSet_ := true;
end;

procedure tCupom.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Cupom')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCupom_NumeroCupom));
  xn.text := FNumeroCupom;
  if NumeroFormulario_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCupom_NumeroFormulario));
    xn.text := FNumeroFormulario;
  end;
    xn := aNode.addChildByName(snCupom_PlacaVeiculo);
    xn.text := FPlacaVeiculo;

    xn := aNode.addChildByName(snCupom_MeioPagamentoValePedagio);
    xn.text := FMeioPagamentoValePedagio;

  if Assigned(FValorUnitarioPedagio) then
  begin
    xn := aNode.addChildByName(snCupom_ValorUnitarioPedagio);
    FValorUnitarioPedagio.Save(xn);
  end;
end; // procedure save

{ tListaCupomValePedagioType }

class function tListaCupomValePedagioType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tListaCupomValePedagioType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FCupom := tManagedStringlist.Create;
end; // constructor ...

constructor tListaCupomValePedagioType.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
//  i: integer;
  thisURI: string;
  aCupom: tCupom;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snListaCupomValePedagioType_Cupom)
      and ((thisURI='') or (tCupom._nsURI_ = thisURI)) then
    begin
      aCupom := tCupom.Create(xn);
      FCupom.AddObject('?', aCupom);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tListaCupomValePedagioType.Destroy;
begin
  FCupom.Free;
  inherited;
end; // destructor ...

procedure tListaCupomValePedagioType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ListaCupomValePedagioType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "Cupom" is tManagedStringlist
  if Assigned(FCupom) then
    for i:=0 to FCupom.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snListaCupomValePedagioType_Cupom));
      tCupom(FCupom.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tValoresRealizadosType }

class function tValoresRealizadosType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tValoresRealizadosType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tValoresRealizadosType.Create(aRoot:tJanXMLNode2);
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
    if (sn = snValoresRealizadosType_ValorTransacaoFinanceira) then
      ValorTransacaoFinanceira := DefStrToFloat(xn.text, 0)
    else if (sn = snValoresRealizadosType_ValorServico) then
      ValorServico := DefStrToFloat(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tValoresRealizadosType.Destroy;
begin
  inherited;
end; // destructor ...

procedure tValoresRealizadosType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ValoresRealizadosType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValoresRealizadosType_ValorTransacaoFinanceira));
  xn.text := MyFloatToStr(FValorTransacaoFinanceira);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValoresRealizadosType_ValorServico));
  xn.text := MyFloatToStr(FValorServico);
end; // procedure save

{ tValoresAgendadosType }

class function tValoresAgendadosType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tValoresAgendadosType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tValoresAgendadosType.Create(aRoot:tJanXMLNode2);
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
    if (sn = snValoresAgendadosType_ValorTransacaoFinanceira) then
      ValorTransacaoFinanceira := DefStrToFloat(xn.text, 0)
    else if (sn = snValoresAgendadosType_ValorServico) then
      ValorServico := DefStrToFloat(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tValoresAgendadosType.Destroy;
begin
  inherited;
end; // destructor ...

procedure tValoresAgendadosType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ValoresAgendadosType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValoresAgendadosType_ValorTransacaoFinanceira));
  xn.text := MyFloatToStr(FValorTransacaoFinanceira);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValoresAgendadosType_ValorServico));
  xn.text := MyFloatToStr(FValorServico);
end; // procedure save

{ tDadosAgendamentoConsolidadoType }

class function tDadosAgendamentoConsolidadoType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tDadosAgendamentoConsolidadoType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tDadosAgendamentoConsolidadoType.Create(aRoot:tJanXMLNode2);
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
    if (sn = snDadosAgendamentoConsolidadoType_Conta) then
      Conta :=  xn.text // tContaType
    else if (sn = snDadosAgendamentoConsolidadoType_TipoOperacaoFinanceira) then
      TipoOperacaoFinanceira :=  xn.text // tTipoOperacaoFinanceiraType
    else if (sn = snDadosAgendamentoConsolidadoType_DataAgendamento) then
      DataAgendamento := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snDadosAgendamentoConsolidadoType_DataProcessamento) then
      DataProcessamento := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snDadosAgendamentoConsolidadoType_ValoresAgendados) then
      FValoresAgendados := tValoresAgendadosType.Create(xn)
    else if (sn = snDadosAgendamentoConsolidadoType_ValoresRealizados) then
      FValoresRealizados := tValoresRealizadosType.Create(xn)
    else if (sn = snDadosAgendamentoConsolidadoType_SituacaoAgendamentoFinanceiro) then
      SituacaoAgendamentoFinanceiro :=  xn.text // tSituacaoAgendamentoType
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tDadosAgendamentoConsolidadoType.Destroy;
begin
  inherited;
end; // destructor ...

procedure tDadosAgendamentoConsolidadoType.SetDataProcessamento(value:tDateTime);
begin
  FDataProcessamento := value;
  FDataProcessamento_IsSet_ := true;
end;

procedure tDadosAgendamentoConsolidadoType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'DadosAgendamentoConsolidadoType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosAgendamentoConsolidadoType_Conta));
  xn.text := FConta;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosAgendamentoConsolidadoType_TipoOperacaoFinanceira));
  xn.text := FTipoOperacaoFinanceira;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosAgendamentoConsolidadoType_DataAgendamento));
  xn.text := DateTimeToXMLDateTime(FDataAgendamento);
  if DataProcessamento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosAgendamentoConsolidadoType_DataProcessamento));
    xn.text := DateTimeToXMLDateTime(FDataProcessamento);
  end;
  if Assigned(FValoresAgendados) then
  begin
    xn := aNode.addChildByName(snDadosAgendamentoConsolidadoType_ValoresAgendados);
    FValoresAgendados.Save(xn);
  end;
  if Assigned(FValoresRealizados) then
  begin
    xn := aNode.addChildByName(snDadosAgendamentoConsolidadoType_ValoresRealizados);
    FValoresRealizados.Save(xn);
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosAgendamentoConsolidadoType_SituacaoAgendamentoFinanceiro));
  xn.text := FSituacaoAgendamentoFinanceiro;
end; // procedure save

{ tDadosAgendamentoDetalhadoType }

class function tDadosAgendamentoDetalhadoType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tDadosAgendamentoDetalhadoType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tDadosAgendamentoDetalhadoType.Create(aRoot:tJanXMLNode2);
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
    if (sn = snDadosAgendamentoDetalhadoType_IDAgendamentoFinanceiro) then
      IDAgendamentoFinanceiro := StrToInt64Def(xn.text, 0)
    else if (sn = snDadosAgendamentoDetalhadoType_Conta) then
      Conta :=  xn.text // tContaType
    else if (sn = snDadosAgendamentoDetalhadoType_TipoOperacaoFinanceira) then
      TipoOperacaoFinanceira :=  xn.text // tTipoOperacaoFinanceiraType
    else if (sn = snDadosAgendamentoDetalhadoType_ValorTransacaoFinanceira) then
      ValorTransacaoFinanceira := DefStrToFloat(xn.text, 0)
    else if (sn = snDadosAgendamentoDetalhadoType_ValorServico) then
      ValorServico := DefStrToFloat(xn.text, 0)
    else if (sn = snDadosAgendamentoDetalhadoType_DataAgendamento) then
      DataAgendamento := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snDadosAgendamentoDetalhadoType_DataProcessamento) then
      DataProcessamento := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snDadosAgendamentoDetalhadoType_NumeroViagem)then
      FNumeroViagem := xn.text
    else if (sn = snDadosAgendamentoDetalhadoType_IDItemAgendamentoFinanceiro) then
      IDItemAgendamentoFinanceiro := StrToInt64Def(xn.text, 0)
    else if (sn = snDadosAgendamentoDetalhadoType_SituacaoAgendamentoFinanceiro) then
      SituacaoAgendamentoFinanceiro :=  xn.text // tSituacaoAgendamentoType
    else if (sn = snDadosAgendamentoDetalhadoType_OperacaoFinanceira)
      and ((thisURI='') or (tOperacaoFinanceira._nsURI_ = thisURI)) then
      FOperacaoFinanceira := tOperacaoFinanceira.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tDadosAgendamentoDetalhadoType.Destroy;
begin
  FOperacaoFinanceira.Free;
  inherited;
end; // destructor ...

procedure tDadosAgendamentoDetalhadoType.SetValorServico(value:extended);
begin
  FValorServico := value;
  FValorServico_IsSet_ := true;
end;

procedure tDadosAgendamentoDetalhadoType.SetDataProcessamento(value:tDateTime);
begin
  FDataProcessamento := value;
  FDataProcessamento_IsSet_ := true;
end;

procedure tDadosAgendamentoDetalhadoType.SetNumeroViagem(value:tNumeroViagem);
begin
  FNumeroViagem := value;
  FNumeroViagem_IsSet_ := true;
end;

procedure tDadosAgendamentoDetalhadoType.SetIDItemAgendamentoFinanceiro(value:int64);
begin
  FIDItemAgendamentoFinanceiro := value;
  FIDItemAgendamentoFinanceiro_IsSet_ := true;
end;

procedure tDadosAgendamentoDetalhadoType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'DadosAgendamentoDetalhadoType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosAgendamentoDetalhadoType_IDAgendamentoFinanceiro));
  xn.text := IntToStr(FIDAgendamentoFinanceiro);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosAgendamentoDetalhadoType_Conta));
  xn.text := FConta;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosAgendamentoDetalhadoType_TipoOperacaoFinanceira));
  xn.text := FTipoOperacaoFinanceira;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosAgendamentoDetalhadoType_ValorTransacaoFinanceira));
  xn.text := MyFloatToStr(FValorTransacaoFinanceira);
  if ValorServico_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosAgendamentoDetalhadoType_ValorServico));
    xn.text := MyFloatToStr(FValorServico);
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosAgendamentoDetalhadoType_DataAgendamento));
  xn.text := DateTimeToXMLDateTime(FDataAgendamento);
  if DataProcessamento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosAgendamentoDetalhadoType_DataProcessamento));
    xn.text := DateTimeToXMLDateTime(FDataProcessamento);
  end;
    xn := aNode.addChildByName(snDadosAgendamentoDetalhadoType_NumeroViagem);
    xn.text := FNumeroViagem;

  if IDItemAgendamentoFinanceiro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosAgendamentoDetalhadoType_IDItemAgendamentoFinanceiro));
    xn.text := IntToStr(FIDItemAgendamentoFinanceiro);
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosAgendamentoDetalhadoType_SituacaoAgendamentoFinanceiro));
  xn.text := FSituacaoAgendamentoFinanceiro;
  if Assigned(FOperacaoFinanceira) then
  begin
    xn := aNode.addChildByName(snDadosAgendamentoDetalhadoType_OperacaoFinanceira);
    FOperacaoFinanceira.Save(xn);
  end;
end; // procedure save

{ tPeriodoDataType }

class function tPeriodoDataType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tPeriodoDataType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tPeriodoDataType.Create(aRoot:tJanXMLNode2);
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
    if (sn = snPeriodoDataType_DataInicio)
      and ((thisURI='') or (tDataInicio._nsURI_ = thisURI)) then
      FDataInicio := tDataInicio.Create(xn)
    else if (sn = snPeriodoDataType_DataFinal)
      and ((thisURI='') or (tDataFinal._nsURI_ = thisURI)) then
      FDataFinal := tDataFinal.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tPeriodoDataType.Destroy;
begin
  FDataInicio.Free;
  FDataFinal.Free;
  inherited;
end; // destructor ...

procedure tPeriodoDataType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'PeriodoDataType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Assigned(FDataInicio) then
  begin
    xn := aNode.addChildByName(snPeriodoDataType_DataInicio);
    FDataInicio.Save(xn);
  end;
  if Assigned(FDataFinal) then
  begin
    xn := aNode.addChildByName(snPeriodoDataType_DataFinal);
    FDataFinal.Save(xn);
  end;
end; // procedure save

{ tListaPracaType }

class function tListaPracaType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tListaPracaType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tListaPracaType.Create(aRoot:tJanXMLNode2);
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
    if (sn = snListaPracaType_IDConcessionaria) then
      IDConcessionaria := StrToIntDef(xn.text, 0)
    else if (sn = snListaPracaType_Concessionaria)then
      FConcessionaria := xn.text
    else if (sn = snListaPracaType_IdPraca)then
      FIdPraca := xn.text
    else if (sn = snListaPracaType_NomePraca)then
      FNomePraca := xn.text
    else if (sn = snListaPracaType_Rodovia) then
      Rodovia :=  xn.text // string
    else if (sn = snListaPracaType_KmRodovia) then
      KmRodovia :=  xn.text // string
    else if (sn = snListaPracaType_Estado)then
      FEstado := xn.text
    else if (sn = snListaPracaType_LocalidadeOrigem)then
      FLocalidadeOrigem := xn.text
    else if (sn = snListaPracaType_LocalidadeDestino) then
      FLocalidadeDestino := xn.text
    else if (sn = snListaPracaType_SituacaoPracaPedagio) then
      SituacaoPracaPedagio :=  xn.text // tSituacaoPracaType
    else if (sn = snListaPracaType_OrdenacaoPraca) then
      OrdenacaoPraca := StrToIntDef(xn.text, 0)
    else if (sn = snListaPracaType_Informativo)then
      FInformativo := xn.text
    else if (sn = snListaPracaType_PermiteChipRodocred) then
      PermiteChipRodocred :=  xn.text // tPermiteRodocredChipType
    else if (sn = snListaPracaType_SentidoCobranca)then
      FSentidoCobranca := xn.text
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tListaPracaType.Destroy;
begin
  inherited;
end; // destructor ...

procedure tListaPracaType.SetInformativo(value:tInformativo);
begin
  FInformativo := value;
  FInformativo_IsSet_ := true;
end;

procedure tListaPracaType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ListaPracaType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snListaPracaType_IDConcessionaria));
  xn.text := IntToStr(FIDConcessionaria);
    xn := aNode.addChildByName(snListaPracaType_Concessionaria);
    xn.text := FConcessionaria;
    xn := aNode.addChildByName(snListaPracaType_IdPraca);
    xn.text := FIdPraca;

    xn := aNode.addChildByName(snListaPracaType_NomePraca);
    xn.text := FNomePraca;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snListaPracaType_Rodovia));
  xn.text := FRodovia;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snListaPracaType_KmRodovia));
  xn.text := FKmRodovia;
    xn := aNode.addChildByName(snListaPracaType_Estado);
    xn.text := FEstado;

    xn := aNode.addChildByName(snListaPracaType_LocalidadeOrigem);
    xn.text := FLocalidadeOrigem;

    xn := aNode.addChildByName(snListaPracaType_LocalidadeDestino);
    xn.text := FLocalidadeDestino;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snListaPracaType_SituacaoPracaPedagio));
  xn.text := FSituacaoPracaPedagio;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snListaPracaType_OrdenacaoPraca));
  xn.text := IntToStr(FOrdenacaoPraca);
    xn := aNode.addChildByName(snListaPracaType_Informativo);
    xn.text := FInformativo;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snListaPracaType_PermiteChipRodocred));
  xn.text := FPermiteChipRodocred;
    xn := aNode.addChildByName(snListaPracaType_SentidoCobranca);
    xn.text := FSentidoCobranca;

end; // procedure save

{ tDadosViagemPedagioType }

class function tDadosViagemPedagioType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tDadosViagemPedagioType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tDadosViagemPedagioType.Create(aRoot:tJanXMLNode2);
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
    if (sn = snDadosViagemPedagioType_NumeroViagem)then
      FNumeroViagem := xn.text
    else if (sn = snDadosViagemPedagioType_Embarque) then
      Embarque := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snDadosViagemPedagioType_PrevisaoEntrega) then
      PrevisaoEntrega := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snDadosViagemPedagioType_DocumentoRef)then
      FDocumentoRef := xn.text
    else if (sn = snDadosViagemPedagioType_CentrodeCusto) then
      CentrodeCusto :=  xn.text // string
    else if (sn = snDadosViagemPedagioType_Observacao) then
      Observacao :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tDadosViagemPedagioType.Destroy;
begin
  inherited;
end; // destructor ...

procedure tDadosViagemPedagioType.SetNumeroViagem(value:tNumeroViagem);
begin
  FNumeroViagem := value;
  FNumeroViagem_IsSet_ := true;
end;

procedure tDadosViagemPedagioType.SetEmbarque(value:tDateTime);
begin
  FEmbarque := value;
  FEmbarque_IsSet_ := true;
end;

procedure tDadosViagemPedagioType.SetPrevisaoEntrega(value:tDateTime);
begin
  FPrevisaoEntrega := value;
  FPrevisaoEntrega_IsSet_ := true;
end;

procedure tDadosViagemPedagioType.SetDocumentoRef(value:tDocumentoRef);
begin
  FDocumentoRef := value;
  FDocumentoRef_IsSet_ := true;
end;

procedure tDadosViagemPedagioType.SetCentrodeCusto(value:string);
begin
  FCentrodeCusto := value;
  FCentrodeCusto_IsSet_ := true;
end;

procedure tDadosViagemPedagioType.SetObservacao(value:string);
begin
  FObservacao := value;
  FObservacao_IsSet_ := true;
end;

procedure tDadosViagemPedagioType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'DadosViagemPedagioType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

    xn := aNode.addChildByName(snDadosViagemPedagioType_NumeroViagem);
    xn.text := FNumeroViagem;

  if Embarque_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosViagemPedagioType_Embarque));
    xn.text := DateTimeToXMLDateTime(FEmbarque);
  end;
  if PrevisaoEntrega_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosViagemPedagioType_PrevisaoEntrega));
    xn.text := DateTimeToXMLDateTime(FPrevisaoEntrega);
  end;
    xn := aNode.addChildByName(snDadosViagemPedagioType_DocumentoRef);
    xn.text := FDocumentoRef;

  if CentrodeCusto_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosViagemPedagioType_CentrodeCusto));
    xn.text := FCentrodeCusto;
  end;
  if Observacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosViagemPedagioType_Observacao));
    xn.text := FObservacao;
  end;
end; // procedure save

end.
