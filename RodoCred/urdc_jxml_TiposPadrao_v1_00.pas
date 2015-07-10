unit urdc_jxml_TiposPadrao_v1_00;

Interface
uses
  Classes,
  JanXMLParser2,
  uXMLTools;

// targetNameSpace: https://ws.rodocred.com.br/
// NameSpacePrefix: rdc
// Date of Schema : 26/12/2012 09:17:48
// Translationdate: 28/03/2013 16:21:21
//
//   includes xs=http://www.w3.org/2001/XMLSchema

// ordinal types
type
  tTipoPontoPassagemType = integer;
  tCNPJCPFType = string;
  tTipoOperacaoType = string;
  tStatusRetornoType = string;
  tCPFType = string;
  tCNPJType = string;
  tPlacaVeiculoType = string;
  tTipoLogradouroType = string;
  tSiglaUFType = string;
  tRNTRCType = string;
  tTokenAutenticacaoType = string;
  tTipoOperacaoTransporteType = string;
  tTipoModeloVeiculoType = string;
  tTipoTransportadorType = string;
  tTipoCartaoType = string;
  tNumeroCartaoType = string;
  tTipoFreteType = string;
  tEixoType = string;
  tLocalidadeType = string;
  tCodigoIBGEType = string;
  tTipoRodagemType = string;
  tTipoViagemType = string;
  tValorType = extended;
  tModalidadeImpressaoType = string;
  tVersaoServico = string;
  tTipoEndereco = string;
  tTipoLogradouro = tTipoLogradouroType;
  tLogradouro = string;
  tNumero = string;
  tComplemento = string;
  tBairro = string;
  tTipoContato = string;
  tNome = string;
  tTelefone = string;
  tCelular = string;
  tEmail = string;
  tMeioComunicacaoPreferido = string;
  tNomeMotorista = string;
  tRelacao = string;
  tOrgaoExpedidor = string;
  tTipoTransporteVeiculo = string;
  tTipoCombustivelVeiculo = integer;
  tCapacidadeTanqueVeiculo = extended;
  tMediaConsumoVeiculo = extended;
  tTipoExcecao = string;
  tNomeTransportador = string;
  tOperadoraFinanceiraVP = string;
  tComprarPedagio = string;
  tCondicaoCompraVP = string;
  tNumeroCNH = string;
  tCNHCategoria = string;
  tTipoEnvolvido = string;
  tIdClienteRodocred = integer;
  tRNTRC = tRNTRCType;
  tTipoVeiculo = integer;
  tPlacaVeiculo = tPlacaVeiculoType;
  tCPFMotorista = tCPFType;
  tCNPJCPF = tCNPJCPFType;
  tModalidadeLocalImpressao = tModalidadeImpressaoType;
  tMeioPagamentoValePedagio = string;
  tIDLocalImpressao = integer;
  tIDOperacaoViagem = string;
  tValorTaxaEventoOperacaoViagem = extended;
  tSituacaoOperacaoViagem = string;
  tSituacaoEventoOperacaoViagem = string;
  tCodigoOperacao = string;
  tCondicaoLiberacaoOperacao = string;
  tLocalRealizacao = string;
  tCNPJFilial = tCNPJType;
  tCodigoEventoOperacao = string;
  tQuantidadeEvento = extended;
  tCombustivel = string;
  tTokenAutenticacao = tTokenAutenticacaoType;
  tStatusRetorno = tStatusRetornoType;
  tEstado = tSiglaUFType;
  tCidade = tLocalidadeType;
  tCEP = string;
  tCodigoOperacaoTransporte = string;
  tCodigoOperacaoTransporteDV = string;
  tNumeroViagem = string;
  tObservacao = string;
  tCodigoClausula = string;
  tDescricaoClausula = string;
  tCodigoBanco = string;
  tNumeroAgencia = string;
  tDvAgencia = string;
  tNumeroConta = string;
  tDVConta = string;
  tInformacoesPagamento = string;
  tCodigoImposto = string;
  tPercentualImposto = extended;
  tCodigoDocumento = string;
  tNumeroDocumento = string;
  tCodigoAuxiliar = string;
  tDocumentoRequerido = string;
  tNaturezaCarga = string;
  tObservacaoDocumento = string;
  tSituacaoVeiculoANTT = boolean;
  tValidaFrotaANTT = boolean;
  tMotivoCancelamento = string;
  tTotalCustosViagem = extended;
  tValorFreteTonelada = extended;
  tValorUnitarioCarga = extended;
  tPesoCarga = extended;
  tPesoCargaEntregue = extended;
  tNumeroTransacao = string;
  tTipoViagem = tTipoViagemType;
  tQtdeEixos = tEixoType;
  tTipoRodagem = tTipoRodagemType;
  tCodigoRota = integer;
  tOperacao = tTipoOperacaoType;
  tTipoOperacaoTransporte = tTipoOperacaoTransporteType;
  tSituacaoViagem = string;
  tValorTotalImpostos = tValorType;
  tValorPedagio = extended;
  tValorDespesas = tValorType;
  tValorFrete = tValorType;
  tValorCombustivel = tValorType;
  tTipoFrete = tTipoFreteType;
  tIdClienteResponsavel = integer;
  tNumeroCartao = tNumeroCartaoType;
  tTipoCartao = tTipoCartaoType;
  tTipoTransportador = tTipoTransportadorType;
  tUF = tSiglaUFType;
  tCodigoIBGEOrigem = tCodigoIBGEType;
  tCodigoIBGEDestino = tCodigoIBGEType;
  tUnidadeMedidaPeso = string;
  tTipoPagamentoFrete = string;
  tPossuiRegraCalculo = string;
  tCodigoRegraCalculo = string;
  tDescricaoRegraCalculo = string;
  tSexo = string;
  tDocumentoRef = string;
  tQtdeCompraVp = integer;
  tQtdeViagens = integer;
  tDataNascimento = tDate;
  tIdentidade = string;
  tPISPASEP = string;
  tInscricaoMunicipal = string;
  tInscricaoEstadual = string;
  tNomeReduzido = string;
  tIdPraca = string;
  tNomePraca = string;
  tLocalPraca = string;
  tConcessionaria = string;
  tInformativo = string;
  tPossuiTarifaEspecial = boolean;
  tUFOrigem = tSiglaUFType;
  tLocalidadeOrigem = tLocalidadeType;
  tUFDestino = tSiglaUFType;
  tLocalidadeDestino = tLocalidadeType;
  tNumeroPedidoValePedagio = string;
  tNumeroComprovante = string;
  tNumeroComprovanteFormatado = string;
  tQuantidadeCupons = integer;
  tSenha = string;
  tLocalImpressao = string;
  tSentidoCobrancaType = string;
  tSentidoCobranca = tSentidoCobrancaType;

// constants for enumerations
const
  cTipoOperacaoType_INC = 'INC';
  cTipoOperacaoType_ALT = 'ALT';
  cTipoOperacaoType_CAN = 'CAN';
  cTipoOperacaoType_EXC = 'EXC';
  cTipoOperacaoType_CON = 'CON';
  cStatusRetornoType_SUCESSO = 'SUCESSO';
  cStatusRetornoType_ERRO = 'ERRO';
  cTipoLogradouroType_Aeroporto = 'Aeroporto';
  cTipoLogradouroType_Alameda = 'Alameda';
  cTipoLogradouroType_rea = 'Área';
  cTipoLogradouroType_Avenida = 'Avenida';
  cTipoLogradouroType_Campo = 'Campo';
  cTipoLogradouroType_Chcara = 'Chácara';
  cTipoLogradouroType_Colnia = 'Colônia';
  cTipoLogradouroType_Condomnio = 'Condomínio';
  cTipoLogradouroType_Conjunto = 'Conjunto';
  cTipoLogradouroType_Distrito = 'Distrito';
  cTipoLogradouroType_Esplanada = 'Esplanada';
  cTipoLogradouroType_Estao = 'Estação';
  cTipoLogradouroType_Estrada = 'Estrada';
  cTipoLogradouroType_Favela = 'Favela';
  cTipoLogradouroType_Fazenda = 'Fazenda';
  cTipoLogradouroType_Feira = 'Feira';
  cTipoLogradouroType_Jardim = 'Jardim';
  cTipoLogradouroType_Ladeira = 'Ladeira';
  cTipoLogradouroType_Lago = 'Lago';
  cTipoLogradouroType_Lagoa = 'Lagoa';
  cTipoLogradouroType_Largo = 'Largo';
  cTipoLogradouroType_Loteamento = 'Loteamento';
  cTipoLogradouroType_Morro = 'Morro';
  cTipoLogradouroType_Ncleo = 'Núcleo';
  cTipoLogradouroType_Parque = 'Parque';
  cTipoLogradouroType_Passarela = 'Passarela';
  cTipoLogradouroType_Ptio = 'Pátio';
  cTipoLogradouroType_Praa = 'Praça';
  cTipoLogradouroType_Quadra = 'Quadra';
  cTipoLogradouroType_Recanto = 'Recanto';
  cTipoLogradouroType_Residencial = 'Residencial';
  cTipoLogradouroType_Rodovia = 'Rodovia';
  cTipoLogradouroType_Rua = 'Rua';
  cTipoLogradouroType_Setor = 'Setor';
  cTipoLogradouroType_Stio = 'Sítio';
  cTipoLogradouroType_Travessa = 'Travessa';
  cTipoLogradouroType_Trecho = 'Trecho';
  cTipoLogradouroType_Trevo = 'Trevo';
  cTipoLogradouroType_Vale = 'Vale';
  cTipoLogradouroType_Vereda = 'Vereda';
  cTipoLogradouroType_Via = 'Via';
  cTipoLogradouroType_Viaduto = 'Viaduto';
  cTipoLogradouroType_Viela = 'Viela';
  cTipoLogradouroType_Vila = 'Vila';
  cTipoLogradouroType_Canal = 'Canal';
  cSiglaUFType_AC = 'AC';
  cSiglaUFType_AL = 'AL';
  cSiglaUFType_AM = 'AM';
  cSiglaUFType_AP = 'AP';
  cSiglaUFType_BA = 'BA';
  cSiglaUFType_CE = 'CE';
  cSiglaUFType_DF = 'DF';
  cSiglaUFType_ES = 'ES';
  cSiglaUFType_GO = 'GO';
  cSiglaUFType_MA = 'MA';
  cSiglaUFType_MG = 'MG';
  cSiglaUFType_MS = 'MS';
  cSiglaUFType_MT = 'MT';
  cSiglaUFType_PA = 'PA';
  cSiglaUFType_PB = 'PB';
  cSiglaUFType_PE = 'PE';
  cSiglaUFType_PI = 'PI';
  cSiglaUFType_PR = 'PR';
  cSiglaUFType_RJ = 'RJ';
  cSiglaUFType_RN = 'RN';
  cSiglaUFType_RO = 'RO';
  cSiglaUFType_RR = 'RR';
  cSiglaUFType_RS = 'RS';
  cSiglaUFType_SC = 'SC';
  cSiglaUFType_SE = 'SE';
  cSiglaUFType_SP = 'SP';
  cSiglaUFType_TO = 'TO';
  cTipoOperacaoTransporteType_FRE = 'FRE';
  cTipoOperacaoTransporteType_FRO = 'FRO';
  cTipoModeloVeiculoType_187 = '187';
  cTipoModeloVeiculoType_188 = '188';
  cTipoModeloVeiculoType_189 = '189';
  cTipoModeloVeiculoType_190 = '190';
  cTipoModeloVeiculoType_191 = '191';
  cTipoModeloVeiculoType_192 = '192';
  cTipoModeloVeiculoType_193 = '193';
  cTipoModeloVeiculoType_194 = '194';
  cTipoModeloVeiculoType_205 = '205';
  cTipoModeloVeiculoType_206 = '206';
  cTipoModeloVeiculoType_207 = '207';
  cTipoModeloVeiculoType_208 = '208';
  cTipoModeloVeiculoType_209 = '209';
  cTipoModeloVeiculoType_210 = '210';
  cTipoModeloVeiculoType_244 = '244';
  cTipoModeloVeiculoType_245 = '245';
  cTipoModeloVeiculoType_246 = '246';
  cTipoModeloVeiculoType_247 = '247';
  cTipoModeloVeiculoType_248 = '248';
  cTipoModeloVeiculoType_249 = '249';
  cTipoTransportadorType_TAC = 'TAC';
  cTipoTransportadorType_ETC = 'ETC';
  cTipoTransportadorType_CTC = 'CTC';
  cTipoCartaoType_CRF = 'CRF';
  cTipoCartaoType_CRP = 'CRP';
  cTipoFreteType_CIF = 'CIF';
  cTipoFreteType_FOB = 'FOB';
  cTipoRodagemType_S = 'S';
  cTipoRodagemType_D = 'D';
  cTipoViagemType_FRE = 'FRE';
  cTipoViagemType_FRO = 'FRO';
  cTipoViagemType_RDF = 'RDF';
  cTipoViagemType_AGR = 'AGR';
  cTipoViagemType_FRA = 'FRA';
  cTipoViagemType_VLP = 'VLP';
  cModalidadeImpressaoType_LOC = 'LOC';
  cModalidadeImpressaoType_REM = 'REM';
  cModalidadeImpressaoType_RRC = 'RRC';
  cTipoEndereco_C = 'C';
  cTipoEndereco_E = 'E';
  cTipoEndereco_R = 'R';
  cTipoContato_C = 'C';
  cTipoContato_E = 'E';
  cTipoContato_R = 'R';
  cMeioComunicacaoPreferido_Correio = 'Correio';
  cMeioComunicacaoPreferido_Email = 'Email';
  cMeioComunicacaoPreferido_Fax = 'Fax';
  cMeioComunicacaoPreferido_Telefone = 'Telefone';
  cRelacao_EMP = 'EMP';
  cRelacao_CON = 'CON';
  cRelacao_AUT = 'AUT';
  cRelacao_AUX = 'AUX';
  cTipoTransporteVeiculo_P = 'P';
  cTipoTransporteVeiculo_T = 'T';
  cTipoCombustivelVeiculo_1 = '1';
  cTipoCombustivelVeiculo_2 = '2';
  cTipoCombustivelVeiculo_3 = '3';
  cTipoCombustivelVeiculo_4 = '4';
  cTipoCombustivelVeiculo_5 = '5';
  cTipoExcecao_AUTORIZACAO = 'AUTORIZACAO';
  cTipoExcecao_VALIDACAO = 'VALIDACAO';
  cTipoExcecao_NEGOCIO = 'NEGOCIO';
  cTipoExcecao_APLICACAO = 'APLICACAO';
  cOperadoraFinanceiraVP_DBT = 'DBT';
  cOperadoraFinanceiraVP_OUT = 'OUT';
  cComprarPedagio_S = 'S';
  cComprarPedagio_N = 'N';
  cCondicaoCompraVP_NOP = 'NOP';
  cCondicaoCompraVP_TDF = 'TDF';
  cCondicaoCompraVP_TNO = 'TNO';
  cCNHCategoria_A = 'A';
  cCNHCategoria_B = 'B';
  cCNHCategoria_C = 'C';
  cCNHCategoria_D = 'D';
  cCNHCategoria_E = 'E';
  cCNHCategoria_ = '';
  cTipoEnvolvido_REM = 'REM';
  cTipoEnvolvido_DES = 'DES';
  cTipoEnvolvido_CON = 'CON';
  cSituacaoOperacaoViagem_BLO = 'BLO';
  cSituacaoOperacaoViagem_LIB = 'LIB';
  cSituacaoOperacaoViagem_CAN = 'CAN';
  cSituacaoOperacaoViagem_REG = 'REG';
  cSituacaoEventoOperacaoViagem_BLO = 'BLO';
  cSituacaoEventoOperacaoViagem_LIB = 'LIB';
  cSituacaoEventoOperacaoViagem_CAN = 'CAN';
  cSituacaoEventoOperacaoViagem_REG = 'REG';
  cCombustivel_GASOLINA = 'GASOLINA';
  cCombustivel_DIESEL = 'DIESEL';
  cCombustivel_BIODIESEL = 'BIODIESEL';
  cCombustivel_ETANOL = 'ETANOL';
  cCombustivel_GNV = 'GNV';
  cStatusRetorno_SUCESSO = 'SUCESSO';
  cStatusRetorno_ERRO = 'ERRO';
  cCodigoImposto_INSS = 'INSS';
  cCodigoImposto_IRRF = 'IRRF';
  cCodigoImposto_SENAT = 'SENAT';
  cCodigoImposto_PIS = 'PIS';
  cDocumentoRequerido_S = 'S';
  cDocumentoRequerido_N = 'N';
  cSituacaoViagem_ABE = 'ABE';
  cSituacaoViagem_AGE = 'AGE';
  cSituacaoViagem_AND = 'AND';
  cSituacaoViagem_CAN = 'CAN';
  cSituacaoViagem_ENC = 'ENC';
  cSituacaoViagem_PRO = 'PRO';
  cUnidadeMedidaPeso_G = 'G';
  cUnidadeMedidaPeso_KG = 'KG';
  cUnidadeMedidaPeso_TON = 'TON';
  cTipoPagamentoFrete_VAL = 'VAL';
  cTipoPagamentoFrete_TON = 'TON';
  cSexo_M = 'M';
  cSexo_F = 'F';
  cSentidoCobrancaType_C = 'C';
  cSentidoCobrancaType_D = 'D';
  cSentidoCobrancaType_A = 'A';

const
  snExcecaoType = 'ExcecaoType';
  snExcecaoType_TipoExcecao = 'TipoExcecao';
  snExcecaoType_CodigoExcecao = 'CodigoExcecao';
  snExcecaoType_MensagemExcecao = 'MensagemExcecao';

type
  tExcecaoType = class
  private
    F_NameSpaceAlias: string;
    FTipoExcecao: string; // (E)
    FCodigoExcecao: string; // (E)
    FMensagemExcecao: string; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property TipoExcecao: string read FTipoExcecao write FTipoExcecao;
    property CodigoExcecao: string read FCodigoExcecao write FCodigoExcecao;
    property MensagemExcecao: string read FMensagemExcecao write FMensagemExcecao;
  end;
  tExcecao =  tExcecaoType;

const
  snIdentificacaoIntegracaoType = 'IdentificacaoIntegracaoType';
  snIdentificacaoIntegracaoType_IdClienteRodocred = 'IdClienteRodocred';
  snIdentificacaoIntegracaoType_TokenAutenticacao = 'TokenAutenticacao';
  snIdentificacaoIntegracaoType_NumeroTransacao = 'NumeroTransacao';
  snIdentificacaoIntegracaoType_VersaoServico = 'VersaoServico';

type
  tIdentificacaoIntegracaoType = class
  private
    F_NameSpaceAlias: string;
    FIdClienteRodocred: integer; // (E)
    FTokenAutenticacao: tTokenAutenticacaoType; // (E)
    FNumeroTransacao: string; // (E)
    FNumeroTransacao_IsSet_: boolean;
    FVersaoServico: string; // (E)
    procedure SetNumeroTransacao(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property IdClienteRodocred: integer read FIdClienteRodocred write FIdClienteRodocred;
    property TokenAutenticacao: tTokenAutenticacaoType read FTokenAutenticacao write FTokenAutenticacao;
    property NumeroTransacao: string read FNumeroTransacao write SetNumeroTransacao;
    property NumeroTransacao_IsSet_:boolean read FNumeroTransacao_IsSet_;
    property VersaoServico: string read FVersaoServico write FVersaoServico;
  end;
  tIdentificacaoIntegracao = tIdentificacaoIntegracaoType;

const
  snTransportadorPJType = 'TransportadorPJType';
  snTransportadorPJType_InscricaoMunicipal = 'InscricaoMunicipal';
  snTransportadorPJType_InscricaoEstadual = 'InscricaoEstadual';
  snTransportadorPJType_NomeReduzido = 'NomeReduzido';

type
  tTransportadorPJType = class
  private
    F_NameSpaceAlias: string;
    FInscricaoMunicipal: string; // (E)
    FInscricaoEstadual: string; // (E)
    FInscricaoEstadual_IsSet_: boolean;
    FNomeReduzido: string; // (E)
    FNomeReduzido_IsSet_: boolean;
    procedure SetInscricaoEstadual(value:string);
    procedure SetNomeReduzido(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property InscricaoMunicipal: string read FInscricaoMunicipal write FInscricaoMunicipal;
    property InscricaoEstadual: string read FInscricaoEstadual write SetInscricaoEstadual;
    property InscricaoEstadual_IsSet_:boolean read FInscricaoEstadual_IsSet_;
    property NomeReduzido: string read FNomeReduzido write SetNomeReduzido;
    property NomeReduzido_IsSet_:boolean read FNomeReduzido_IsSet_;
  end;

const
  snTransportadorPFType = 'TransportadorPFType';
  snTransportadorPFType_DataNascimento = 'DataNascimento';
  snTransportadorPFType_Identidade = 'Identidade';
  snTransportadorPFType_OrgaoExpedidor = 'OrgaoExpedidor';
  snTransportadorPFType_PISPASEP = 'PISPASEP';
  snTransportadorPFType_Sexo = 'Sexo';

type
  tTransportadorPFType = class
  private
    F_NameSpaceAlias: string;
    FDataNascimento: tDate; // (E)
    FIdentidade: string; // (E)
    FOrgaoExpedidor: string; // (E)
    FPISPASEP: string; // (E)
    FPISPASEP_IsSet_: boolean;
    FSexo: string; // (E)
    FSexo_IsSet_: boolean;
    procedure SetPISPASEP(value:string);
    procedure SetSexo(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property DataNascimento: tDate read FDataNascimento write FDataNascimento;
    property Identidade: string read FIdentidade write FIdentidade;
    property OrgaoExpedidor: string read FOrgaoExpedidor write FOrgaoExpedidor;
    property PISPASEP: string read FPISPASEP write SetPISPASEP;
    property PISPASEP_IsSet_:boolean read FPISPASEP_IsSet_;
    property Sexo: string read FSexo write SetSexo;
    property Sexo_IsSet_:boolean read FSexo_IsSet_;
  end;

const
  snPontoPassagem = 'PontoPassagem';
  snPontoPassagem_IdPonto = 'IdPonto';
  snPontoPassagem_Sequencia = 'Sequencia';
  snPontoPassagem_QtdeEixos = 'QtdeEixos';
  snPontoPassagem_PesoCarga = 'PesoCarga';
  snPontoPassagem_UnidadeMedidaPeso = 'UnidadeMedidaPeso';

type
  tPontoPassagem = class
  private
    F_NameSpaceAlias: string;
    FIdPonto: integer; // (E)
    FSequencia: integer; // (E)
    FQtdeEixos: tEixoType; // (E)
    FQtdeEixos_IsSet_: boolean;
    FPesoCarga: extended; // (E)
    FPesoCarga_IsSet_: boolean;
    FUnidadeMedidaPeso: string; // (E)
    FUnidadeMedidaPeso_IsSet_: boolean;
    procedure SetQtdeEixos(value:tEixoType);
    procedure SetPesoCarga(value:extended);
    procedure SetUnidadeMedidaPeso(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property IdPonto: integer read FIdPonto write FIdPonto;
    property Sequencia: integer read FSequencia write FSequencia;
    property QtdeEixos: tEixoType read FQtdeEixos write SetQtdeEixos;
    property QtdeEixos_IsSet_:boolean read FQtdeEixos_IsSet_;
    property PesoCarga: extended read FPesoCarga write SetPesoCarga;
    property PesoCarga_IsSet_:boolean read FPesoCarga_IsSet_;
    property UnidadeMedidaPeso: string read FUnidadeMedidaPeso write SetUnidadeMedidaPeso;
    property UnidadeMedidaPeso_IsSet_:boolean read FUnidadeMedidaPeso_IsSet_;
  end;

const
  snMotoristas = 'Motoristas';
  snMotoristas_CPFMotorista = 'CPFMotorista';
  snMotoristas_StatusRetorno = 'StatusRetorno';
  snMotoristas_Excecao = 'Excecao';

type
  tMotoristas = class
  private
    F_NameSpaceAlias: string;
    FCPFMotorista: tCPFType; // (E)
    FStatusRetorno: tStatusRetornoType; // (E)
    FExcecao: tExcecaoType; // (E)
    FExcecao_IsSet_: boolean;
    procedure SetExcecao(value:tExcecaoType);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CPFMotorista: tCPFType read FCPFMotorista write FCPFMotorista;
    property StatusRetorno: tStatusRetornoType read FStatusRetorno write FStatusRetorno;
    property Excecao: tExcecaoType read FExcecao write SetExcecao;
    property Excecao_IsSet_:boolean read FExcecao_IsSet_;
  end;

const
  snDestinoRota = 'DestinoRota';
  snDestinoRota_UFDestino = 'UFDestino';
  snDestinoRota_LocalidadeDestino = 'LocalidadeDestino';
  snDestinoRota_CodigoIBGEDestino = 'CodigoIBGEDestino';

type
  tDestinoRota = class
  private
    F_NameSpaceAlias: string;
    FUFDestino: tSiglaUFType; // (E)
    FUFDestino_IsSet_: boolean;
    FLocalidadeDestino: tLocalidadeType; // (E)
    FLocalidadeDestino_IsSet_: boolean;
    FCodigoIBGEDestino: tCodigoIBGEType; // (E)
    FCodigoIBGEDestino_IsSet_: boolean;
    procedure SetUFDestino(value:tSiglaUFType);
    procedure SetLocalidadeDestino(value:tLocalidadeType);
    procedure SetCodigoIBGEDestino(value:tCodigoIBGEType);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property UFDestino: tSiglaUFType read FUFDestino write SetUFDestino;
    property UFDestino_IsSet_:boolean read FUFDestino_IsSet_;
    property LocalidadeDestino: tLocalidadeType read FLocalidadeDestino write SetLocalidadeDestino;
    property LocalidadeDestino_IsSet_:boolean read FLocalidadeDestino_IsSet_;
    property CodigoIBGEDestino: tCodigoIBGEType read FCodigoIBGEDestino write SetCodigoIBGEDestino;
    property CodigoIBGEDestino_IsSet_:boolean read FCodigoIBGEDestino_IsSet_;
  end;

const
  snOrigemRota = 'OrigemRota';
  snOrigemRota_UFOrigem = 'UFOrigem';
  snOrigemRota_LocalidadeOrigem = 'LocalidadeOrigem';
  snOrigemRota_CodigoIBGEOrigem = 'CodigoIBGEOrigem';

type
  tOrigemRota = class
  private
    F_NameSpaceAlias: string;
    FUFOrigem: tSiglaUFType; // (E)
    FUFOrigem_IsSet_: boolean;
    FLocalidadeOrigem: tLocalidadeType; // (E)
    FLocalidadeOrigem_IsSet_: boolean;
    FCodigoIBGEOrigem: tCodigoIBGEType; // (E)
    FCodigoIBGEOrigem_IsSet_: boolean;
    procedure SetUFOrigem(value:tSiglaUFType);
    procedure SetLocalidadeOrigem(value:tLocalidadeType);
    procedure SetCodigoIBGEOrigem(value:tCodigoIBGEType);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property UFOrigem: tSiglaUFType read FUFOrigem write SetUFOrigem;
    property UFOrigem_IsSet_:boolean read FUFOrigem_IsSet_;
    property LocalidadeOrigem: tLocalidadeType read FLocalidadeOrigem write SetLocalidadeOrigem;
    property LocalidadeOrigem_IsSet_:boolean read FLocalidadeOrigem_IsSet_;
    property CodigoIBGEOrigem: tCodigoIBGEType read FCodigoIBGEOrigem write SetCodigoIBGEOrigem;
    property CodigoIBGEOrigem_IsSet_:boolean read FCodigoIBGEOrigem_IsSet_;
  end;

const
  snVeiculos = 'Veiculos';
  snVeiculos_PlacaVeiculo = 'PlacaVeiculo';
  snVeiculos_SituacaoFrotaANTT = 'SituacaoFrotaANTT';
  snVeiculos_StatusRetorno = 'StatusRetorno';
  snVeiculos_Excecao = 'Excecao';

type
  tVeiculos = class
  private
    F_NameSpaceAlias: string;
    FPlacaVeiculo: tPlacaVeiculoType; // (E)
    FSituacaoFrotaANTT: boolean; // (E)
    FSituacaoFrotaANTT_IsSet_: boolean;
    FStatusRetorno: tStatusRetornoType; // (E)
    FExcecao: tExcecaoType; // (E)
    FExcecao_IsSet_: boolean;
    procedure SetSituacaoFrotaANTT(value:boolean);
    procedure SetExcecao(value:tExcecaoType);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property PlacaVeiculo: tPlacaVeiculoType read FPlacaVeiculo write FPlacaVeiculo;
    property SituacaoFrotaANTT: boolean read FSituacaoFrotaANTT write SetSituacaoFrotaANTT;
    property SituacaoFrotaANTT_IsSet_:boolean read FSituacaoFrotaANTT_IsSet_;
    property StatusRetorno: tStatusRetornoType read FStatusRetorno write FStatusRetorno;
    property Excecao: tExcecaoType read FExcecao write SetExcecao;
    property Excecao_IsSet_:boolean read FExcecao_IsSet_;
  end;

const
  snResumoFinanceiro = 'ResumoFinanceiro';
  snResumoFinanceiro_TotalFrete = 'TotalFrete';
  snResumoFinanceiro_TotalFreteLiquido = 'TotalFreteLiquido';
  snResumoFinanceiro_TotalAbastecimento = 'TotalAbastecimento';
  snResumoFinanceiro_TotalPedagio = 'TotalPedagio';
  snResumoFinanceiro_TotalImpostosRetidos = 'TotalImpostosRetidos';
  snResumoFinanceiro_TotalAdministrativas = 'TotalAdministrativas';
  snResumoFinanceiro_TotalViagem = 'TotalViagem';
  snResumoFinanceiro_TotalCustosViagem = 'TotalCustosViagem';
  snResumoFinanceiro_ValorQuebraClausula = 'ValorQuebraClausula';
  snResumoFinanceiro_ValorFreteTonelada = 'ValorFreteTonelada';
  snResumoFinanceiro_ValorUnitarioCarga = 'ValorUnitarioCarga';
  snResumoFinanceiro_PesoCarga = 'PesoCarga';
  snResumoFinanceiro_PesoCargaEntregue = 'PesoCargaEntregue';
  snResumoFinanceiro_QuantidadeCarga = 'QuantidadeCarga';
  snResumoFinanceiro_QuantidadeCargaEntregue = 'QuantidadeCargaEntregue';

type
  tResumoFinanceiro = class
  private
    F_NameSpaceAlias: string;
    FTotalFrete: extended; // (E)
    FTotalFreteLiquido: extended; // (E)
    FTotalAbastecimento: extended; // (E)
    FTotalPedagio: extended; // (E)
    FTotalImpostosRetidos: extended; // (E)
    FTotalAdministrativas: extended; // (E)
    FTotalViagem: extended; // (E)
    FTotalCustosViagem: extended; // (E)
    FTotalCustosViagem_IsSet_: boolean;
    FValorQuebraClausula: extended; // (E)
    FValorQuebraClausula_IsSet_: boolean;
    FValorFreteTonelada: extended; // (E)
    FValorFreteTonelada_IsSet_: boolean;
    FValorUnitarioCarga: extended; // (E)
    FValorUnitarioCarga_IsSet_: boolean;
    FPesoCarga: extended; // (E)
    FPesoCarga_IsSet_: boolean;
    FPesoCargaEntregue: extended; // (E)
    FPesoCargaEntregue_IsSet_: boolean;
    FQuantidadeCarga: integer; // (E)
    FQuantidadeCarga_IsSet_: boolean;
    FQuantidadeCargaEntregue: integer; // (E)
    FQuantidadeCargaEntregue_IsSet_: boolean;
    procedure SetTotalCustosViagem(value:extended);
    procedure SetValorQuebraClausula(value:extended);
    procedure SetValorFreteTonelada(value:extended);
    procedure SetValorUnitarioCarga(value:extended);
    procedure SetPesoCarga(value:extended);
    procedure SetPesoCargaEntregue(value:extended);
    procedure SetQuantidadeCarga(value:integer);
    procedure SetQuantidadeCargaEntregue(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property TotalFrete: extended read FTotalFrete write FTotalFrete;
    property TotalFreteLiquido: extended read FTotalFreteLiquido write FTotalFreteLiquido;
    property TotalAbastecimento: extended read FTotalAbastecimento write FTotalAbastecimento;
    property TotalPedagio: extended read FTotalPedagio write FTotalPedagio;
    property TotalImpostosRetidos: extended read FTotalImpostosRetidos write FTotalImpostosRetidos;
    property TotalAdministrativas: extended read FTotalAdministrativas write FTotalAdministrativas;
    property TotalViagem: extended read FTotalViagem write FTotalViagem;
    property TotalCustosViagem: extended read FTotalCustosViagem write SetTotalCustosViagem;
    property TotalCustosViagem_IsSet_:boolean read FTotalCustosViagem_IsSet_;
    property ValorQuebraClausula: extended read FValorQuebraClausula write SetValorQuebraClausula;
    property ValorQuebraClausula_IsSet_:boolean read FValorQuebraClausula_IsSet_;
    property ValorFreteTonelada: extended read FValorFreteTonelada write SetValorFreteTonelada;
    property ValorFreteTonelada_IsSet_:boolean read FValorFreteTonelada_IsSet_;
    property ValorUnitarioCarga: extended read FValorUnitarioCarga write SetValorUnitarioCarga;
    property ValorUnitarioCarga_IsSet_:boolean read FValorUnitarioCarga_IsSet_;
    property PesoCarga: extended read FPesoCarga write SetPesoCarga;
    property PesoCarga_IsSet_:boolean read FPesoCarga_IsSet_;
    property PesoCargaEntregue: extended read FPesoCargaEntregue write SetPesoCargaEntregue;
    property PesoCargaEntregue_IsSet_:boolean read FPesoCargaEntregue_IsSet_;
    property QuantidadeCarga: integer read FQuantidadeCarga write SetQuantidadeCarga;
    property QuantidadeCarga_IsSet_:boolean read FQuantidadeCarga_IsSet_;
    property QuantidadeCargaEntregue: integer read FQuantidadeCargaEntregue write SetQuantidadeCargaEntregue;
    property QuantidadeCargaEntregue_IsSet_:boolean read FQuantidadeCargaEntregue_IsSet_;
  end;

const
  snDocumento = 'Documento';
  snDocumento_CodigoDocumento = 'CodigoDocumento';
  snDocumento_NumeroDocumento = 'NumeroDocumento';
  snDocumento_CodigoAuxiliar = 'CodigoAuxiliar';
  snDocumento_DocumentoRequerido = 'DocumentoRequerido';
  snDocumento_NaturezaCarga = 'NaturezaCarga';
  snDocumento_ObservacaoDocumento = 'ObservacaoDocumento';

type
  tDocumento = class
  private
    F_NameSpaceAlias: string;
    FCodigoDocumento: string; // (E)
    FNumeroDocumento: string; // (E)
    FNumeroDocumento_IsSet_: boolean;
    FCodigoAuxiliar: string; // (E)
    FCodigoAuxiliar_IsSet_: boolean;
    FDocumentoRequerido: string; // (E)
    FNaturezaCarga: string; // (E)
    FNaturezaCarga_IsSet_: boolean;
    FObservacaoDocumento: string; // (E)
    FObservacaoDocumento_IsSet_: boolean;
    procedure SetNumeroDocumento(value:string);
    procedure SetCodigoAuxiliar(value:string);
    procedure SetNaturezaCarga(value:string);
    procedure SetObservacaoDocumento(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CodigoDocumento: string read FCodigoDocumento write FCodigoDocumento;
    property NumeroDocumento: string read FNumeroDocumento write SetNumeroDocumento;
    property NumeroDocumento_IsSet_:boolean read FNumeroDocumento_IsSet_;
    property CodigoAuxiliar: string read FCodigoAuxiliar write SetCodigoAuxiliar;
    property CodigoAuxiliar_IsSet_:boolean read FCodigoAuxiliar_IsSet_;
    property DocumentoRequerido: string read FDocumentoRequerido write FDocumentoRequerido;
    property NaturezaCarga: string read FNaturezaCarga write SetNaturezaCarga;
    property NaturezaCarga_IsSet_:boolean read FNaturezaCarga_IsSet_;
    property ObservacaoDocumento: string read FObservacaoDocumento write SetObservacaoDocumento;
    property ObservacaoDocumento_IsSet_:boolean read FObservacaoDocumento_IsSet_;
  end;

const
  snDocumentosViagem = 'DocumentosViagem';
  snDocumentosViagem_Documento = 'Documento';

type
  tDocumentosViagem = class
  private
    F_NameSpaceAlias: string;
    FDocumento: tManagedStringList; // of tDocumento(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Documento: tManagedStringList read FDocumento write FDocumento; // of tDocumento
  end;

const
  snImpostos = 'Impostos';
  snImpostos_CodigoImposto = 'CodigoImposto';
  snImpostos_BaseCalculoImposto = 'BaseCalculoImposto';
  snImpostos_PercentualImposto = 'PercentualImposto';
  snImpostos_ValorImposto = 'ValorImposto';
  snImpostos_RetencaoImposto = 'RetencaoImposto';

type
  tImpostos = class
  private
    F_NameSpaceAlias: string;
    FCodigoImposto: string; // (E)
    FBaseCalculoImposto: extended; // (E)
    FPercentualImposto: extended; // (E)
    FValorImposto: extended; // (E)
    FRetencaoImposto: boolean; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CodigoImposto: string read FCodigoImposto write FCodigoImposto;
    property BaseCalculoImposto: extended read FBaseCalculoImposto write FBaseCalculoImposto;
    property PercentualImposto: extended read FPercentualImposto write FPercentualImposto;
    property ValorImposto: extended read FValorImposto write FValorImposto;
    property RetencaoImposto: boolean read FRetencaoImposto write FRetencaoImposto;
  end;

const
  snImpostosViagem = 'ImpostosViagem';
  snImpostosViagem_ValorTotalImpostos = 'ValorTotalImpostos';
  snImpostosViagem_Impostos = 'Impostos';

type
  tImpostosViagem = class
  private
    F_NameSpaceAlias: string;
    FValorTotalImpostos: tValorType; // (E)
    FImpostos: tManagedStringList; // of tImpostos(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ValorTotalImpostos: tValorType read FValorTotalImpostos write FValorTotalImpostos;
    property Impostos: tManagedStringList read FImpostos write FImpostos; // of tImpostos
  end;

const
  snPedidoValePedagio = 'PedidoValePedagio';
  snPedidoValePedagio_NumeroPedidoValePedagio = 'NumeroPedidoValePedagio';
  snPedidoValePedagio_NumeroComprovante = 'NumeroComprovante';
  snPedidoValePedagio_NumeroComprovanteFormatado = 'NumeroComprovanteFormatado';
  snPedidoValePedagio_QuantidadeCupons = 'QuantidadeCupons';
  snPedidoValePedagio_Senha = 'Senha';
  snPedidoValePedagio_IDLocalImpressao = 'IDLocalImpressao';
  snPedidoValePedagio_LocalImpressao = 'LocalImpressao';
  snPedidoValePedagio_ModalidadeLocalImpressao = 'ModalidadeLocalImpressao';

type
  tPedidoValePedagio = class
  private
    F_NameSpaceAlias: string;
    FNumeroPedidoValePedagio: string; // (E)
    FNumeroComprovante: string; // (E)
    FNumeroComprovanteFormatado: string; // (E)
    FQuantidadeCupons: integer; // (E)
    FSenha: string; // (E)
    FIDLocalImpressao: integer; // (E)
    FLocalImpressao: string; // (E)
    FModalidadeLocalImpressao: tModalidadeImpressaoType; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property NumeroPedidoValePedagio: string read FNumeroPedidoValePedagio write FNumeroPedidoValePedagio;
    property NumeroComprovante: string read FNumeroComprovante write FNumeroComprovante;
    property NumeroComprovanteFormatado: string read FNumeroComprovanteFormatado write FNumeroComprovanteFormatado;
    property QuantidadeCupons: integer read FQuantidadeCupons write FQuantidadeCupons;
    property Senha: string read FSenha write FSenha;
    property IDLocalImpressao: integer read FIDLocalImpressao write FIDLocalImpressao;
    property LocalImpressao: string read FLocalImpressao write FLocalImpressao;
    property ModalidadeLocalImpressao: tModalidadeImpressaoType read FModalidadeLocalImpressao write FModalidadeLocalImpressao;
  end;

const
  snDadosBancarios = 'DadosBancarios';
  snDadosBancarios_CodigoBanco = 'CodigoBanco';
  snDadosBancarios_NumeroAgencia = 'NumeroAgencia';
  snDadosBancarios_DvAgencia = 'DvAgencia';
  snDadosBancarios_NumeroConta = 'NumeroConta';
  snDadosBancarios_DVConta = 'DVConta';
  snDadosBancarios_InformacoesPagamento = 'InformacoesPagamento';

type
  tDadosBancarios = class
  private
    F_NameSpaceAlias: string;
    FCodigoBanco: string; // (E)
    FNumeroAgencia: string; // (E)
    FDvAgencia: string; // (E)
    FDvAgencia_IsSet_: boolean;
    FNumeroConta: string; // (E)
    FDVConta: string; // (E)
    FInformacoesPagamento: string; // (E)
    FInformacoesPagamento_IsSet_: boolean;
    procedure SetDvAgencia(value:string);
    procedure SetInformacoesPagamento(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CodigoBanco: string read FCodigoBanco write FCodigoBanco;
    property NumeroAgencia: string read FNumeroAgencia write FNumeroAgencia;
    property DvAgencia: string read FDvAgencia write SetDvAgencia;
    property DvAgencia_IsSet_:boolean read FDvAgencia_IsSet_;
    property NumeroConta: string read FNumeroConta write FNumeroConta;
    property DVConta: string read FDVConta write FDVConta;
    property InformacoesPagamento: string read FInformacoesPagamento write SetInformacoesPagamento;
    property InformacoesPagamento_IsSet_:boolean read FInformacoesPagamento_IsSet_;
  end;

const
  snClausulas = 'Clausulas';
  snClausulas_TipoViagem = 'TipoViagem';
  snClausulas_CodigoClausula = 'CodigoClausula';
  snClausulas_DescricaoClausula = 'DescricaoClausula';
  snClausulas_PossuiRegraCalculo = 'PossuiRegraCalculo';
  snClausulas_CodigoRegraCalculo = 'CodigoRegraCalculo';
  snClausulas_DescricaoRegraCalculo = 'DescricaoRegraCalculo';

type
  tClausulas = class
  private
    F_NameSpaceAlias: string;
    FTipoViagem: tTipoViagemType; // (E)
    FCodigoClausula: string; // (E)
    FDescricaoClausula: string; // (E)
    FPossuiRegraCalculo: string; // (E)
    FCodigoRegraCalculo: string; // (E)
    FCodigoRegraCalculo_IsSet_: boolean;
    FDescricaoRegraCalculo: string; // (E)
    FDescricaoRegraCalculo_IsSet_: boolean;
    procedure SetCodigoRegraCalculo(value:string);
    procedure SetDescricaoRegraCalculo(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property TipoViagem: tTipoViagemType read FTipoViagem write FTipoViagem;
    property CodigoClausula: string read FCodigoClausula write FCodigoClausula;
    property DescricaoClausula: string read FDescricaoClausula write FDescricaoClausula;
    property PossuiRegraCalculo: string read FPossuiRegraCalculo write FPossuiRegraCalculo;
    property CodigoRegraCalculo: string read FCodigoRegraCalculo write SetCodigoRegraCalculo;
    property CodigoRegraCalculo_IsSet_:boolean read FCodigoRegraCalculo_IsSet_;
    property DescricaoRegraCalculo: string read FDescricaoRegraCalculo write SetDescricaoRegraCalculo;
    property DescricaoRegraCalculo_IsSet_:boolean read FDescricaoRegraCalculo_IsSet_;
  end;

const
  snClausulasViagem = 'ClausulasViagem';
  snClausulasViagem_CodigoClausula = 'CodigoClausula';
  snClausulasViagem_DescricaoClausula = 'DescricaoClausula';

type
  tClausulasViagem = class
  private
    F_NameSpaceAlias: string;
    FCodigoClausula: string; // (E)
    FDescricaoClausula: string; // (E)
    FDescricaoClausula_IsSet_: boolean;
    procedure SetDescricaoClausula(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CodigoClausula: string read FCodigoClausula write FCodigoClausula;
    property DescricaoClausula: string read FDescricaoClausula write SetDescricaoClausula;
    property DescricaoClausula_IsSet_:boolean read FDescricaoClausula_IsSet_;
  end;

const
  snValoresViagem = 'ValoresViagem';
  snValoresViagem_ValorDespesas = 'ValorDespesas';
  snValoresViagem_ValorFrete = 'ValorFrete';
  snValoresViagem_ValorCombustivel = 'ValorCombustivel';
  snValoresViagem_PesoCarga = 'PesoCarga';
  snValoresViagem_PesoCargaEntregue = 'PesoCargaEntregue';
  snValoresViagem_UnidadeMedidaPeso = 'UnidadeMedidaPeso';
  snValoresViagem_TipoPagamentoFrete = 'TipoPagamentoFrete';
  snValoresViagem_ValorFreteTonelada = 'ValorFreteTonelada';
  snValoresViagem_ValorCarga = 'ValorCarga';
  snValoresViagem_QuantidadeCarga = 'QuantidadeCarga';

type
  tValoresViagem = class
  private
    F_NameSpaceAlias: string;
    FValorDespesas: tValorType; // (E)
    FValorFrete: tValorType; // (E)
    FValorCombustivel: tValorType; // (E)
    FPesoCarga: extended; // (E)
    FPesoCarga_IsSet_: boolean;
    FPesoCargaEntregue: extended; // (E)
    FPesoCargaEntregue_IsSet_: boolean;
    FUnidadeMedidaPeso: string; // (E)
    FUnidadeMedidaPeso_IsSet_: boolean;
    FTipoPagamentoFrete: string; // (E)
    FTipoPagamentoFrete_IsSet_: boolean;
    FValorFreteTonelada: extended; // (E)
    FValorFreteTonelada_IsSet_: boolean;
    FValorCarga: extended; // (E)
    FValorCarga_IsSet_: boolean;
    FQuantidadeCarga: integer; // (E)
    FQuantidadeCarga_IsSet_: boolean;
    procedure SetPesoCarga(value:extended);
    procedure SetPesoCargaEntregue(value:extended);
    procedure SetUnidadeMedidaPeso(value:string);
    procedure SetTipoPagamentoFrete(value:string);
    procedure SetValorFreteTonelada(value:extended);
    procedure SetValorCarga(value:extended);
    procedure SetQuantidadeCarga(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ValorDespesas: tValorType read FValorDespesas write FValorDespesas;
    property ValorFrete: tValorType read FValorFrete write FValorFrete;
    property ValorCombustivel: tValorType read FValorCombustivel write FValorCombustivel;
    property PesoCarga: extended read FPesoCarga write SetPesoCarga;
    property PesoCarga_IsSet_:boolean read FPesoCarga_IsSet_;
    property PesoCargaEntregue: extended read FPesoCargaEntregue write SetPesoCargaEntregue;
    property PesoCargaEntregue_IsSet_:boolean read FPesoCargaEntregue_IsSet_;
    property UnidadeMedidaPeso: string read FUnidadeMedidaPeso write SetUnidadeMedidaPeso;
    property UnidadeMedidaPeso_IsSet_:boolean read FUnidadeMedidaPeso_IsSet_;
    property TipoPagamentoFrete: string read FTipoPagamentoFrete write SetTipoPagamentoFrete;
    property TipoPagamentoFrete_IsSet_:boolean read FTipoPagamentoFrete_IsSet_;
    property ValorFreteTonelada: extended read FValorFreteTonelada write SetValorFreteTonelada;
    property ValorFreteTonelada_IsSet_:boolean read FValorFreteTonelada_IsSet_;
    property ValorCarga: extended read FValorCarga write SetValorCarga;
    property ValorCarga_IsSet_:boolean read FValorCarga_IsSet_;
    property QuantidadeCarga: integer read FQuantidadeCarga write SetQuantidadeCarga;
    property QuantidadeCarga_IsSet_:boolean read FQuantidadeCarga_IsSet_;
  end;

const
  snVeiculosViagem = 'VeiculosViagem';
  snVeiculosViagem_PlacaVeiculo = 'PlacaVeiculo';
  snVeiculosViagem_TipoVeiculo = 'TipoVeiculo';
  snVeiculosViagem_QtdeEixos = 'QtdeEixos';
  snVeiculosViagem_TipoRodagem = 'TipoRodagem';
  snVeiculosViagem_RNTRC = 'RNTRC';
  snVeiculosViagem_CNPJCPF = 'CNPJCPF';

type
  tVeiculosViagem = class
  private
    F_NameSpaceAlias: string;
    FPlacaVeiculo: tPlacaVeiculoType; // (E)
    FTipoVeiculo: integer; // (E)
    FQtdeEixos: tEixoType; // (E)
    FTipoRodagem: tTipoRodagemType; // (E)
    FRNTRC: tRNTRCType; // (E)
    FRNTRC_IsSet_: boolean;
    FCNPJCPF: tCNPJCPFType; // (E)
    FCNPJCPF_IsSet_: boolean;
    procedure SetRNTRC(value:tRNTRCType);
    procedure SetCNPJCPF(value:tCNPJCPFType);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property PlacaVeiculo: tPlacaVeiculoType read FPlacaVeiculo write FPlacaVeiculo;
    property TipoVeiculo: integer read FTipoVeiculo write FTipoVeiculo;
    property QtdeEixos: tEixoType read FQtdeEixos write FQtdeEixos;
    property TipoRodagem: tTipoRodagemType read FTipoRodagem write FTipoRodagem;
    property RNTRC: tRNTRCType read FRNTRC write SetRNTRC;
    property RNTRC_IsSet_:boolean read FRNTRC_IsSet_;
    property CNPJCPF: tCNPJCPFType read FCNPJCPF write SetCNPJCPF;
    property CNPJCPF_IsSet_:boolean read FCNPJCPF_IsSet_;
  end;

const
  snOrigemDestinoRota = 'OrigemDestinoRota';
  snOrigemDestinoRota_CodigoIBGEOrigem = 'CodigoIBGEOrigem';
  snOrigemDestinoRota_CodigoIBGEDestino = 'CodigoIBGEDestino';

type
  tOrigemDestinoRota = class
  private
    F_NameSpaceAlias: string;
    FCodigoIBGEOrigem: tCodigoIBGEType; // (E)
    FCodigoIBGEDestino: tCodigoIBGEType; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CodigoIBGEOrigem: tCodigoIBGEType read FCodigoIBGEOrigem write FCodigoIBGEOrigem;
    property CodigoIBGEDestino: tCodigoIBGEType read FCodigoIBGEDestino write FCodigoIBGEDestino;
  end;

const
  snRotaViagem = 'RotaViagem';
  snRotaViagem_CodigoRota = 'CodigoRota';
  snRotaViagem_OrigemDestinoRota = 'OrigemDestinoRota';

type
  tRotaViagem = class
  private
    F_NameSpaceAlias: string;
    FCodigoRota: tCodigoRota; //(E)
    FOrigemDestinoRota: tManagedStringList; // of tOrigemDestinoRota(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CodigoRota: TcodigoRota read FCodigoRota write FCodigoRota; // of tCodigoRota
    property OrigemDestinoRota: tManagedStringList read FOrigemDestinoRota write FOrigemDestinoRota; // of tOrigemDestinoRota
  end;

const
  snForo = 'Foro';
  snForo_Estado = 'Estado';
  snForo_Cidade = 'Cidade';

type
  tForo = class
  private
    F_NameSpaceAlias: string;
    FEstado: tSiglaUFType; // (E)
    FCidade: tLocalidadeType; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Estado: tSiglaUFType read FEstado write FEstado;
    property Cidade: tLocalidadeType read FCidade write FCidade;
  end;

const
  snDadosViagem = 'DadosViagem';
  snDadosViagem_NumeroViagem = 'NumeroViagem';
  snDadosViagem_Embarque = 'Embarque';
  snDadosViagem_PrevisaoEntrega = 'PrevisaoEntrega';
  snDadosViagem_Foro = 'Foro';
  snDadosViagem_DocumentoRef = 'DocumentoRef';
  snDadosViagem_DataVigencia = 'DataVigencia';
  snDadosViagem_NumeroViagemContratacao = 'NumeroViagemContratacao';
  snDadosViagem_CentrodeCusto = 'CentrodeCusto';
  snDadosViagem_Observacao = 'Observacao';
  snDadosViagem_GerarCIOT = 'GerarCIOT';
  snDadosViagem_SemTransporteCarga = 'SemTransporteCarga';
  snDadosViagem_QtdeViagens = 'QtdeViagens';

type
  tDadosViagem = class
  private
    F_NameSpaceAlias: string;
    FNumeroViagem: string; // (E)
    FNumeroViagem_IsSet_: boolean;
    FEmbarque: tDateTime; // (E)
    FEmbarque_IsSet_: boolean;
    FPrevisaoEntrega: tDateTime; // (E)
    FPrevisaoEntrega_IsSet_: boolean;
    FForo: tForo; // (E)
    FForo_IsSet_: boolean;
    FDocumentoRef: string; // (E)
    FDocumentoRef_IsSet_: boolean;
    FDataVigencia: tDateTime; // (E)
    FDataVigencia_IsSet_: boolean;
    FNumeroViagemContratacao: string; // (E)
    FNumeroViagemContratacao_IsSet_: boolean;
    FCentrodeCusto: string; // (E)
    FCentrodeCusto_IsSet_: boolean;
    FObservacao: string; // (E)
    FObservacao_IsSet_: boolean;
    FGerarCIOT: boolean; // (E)
    FGerarCIOT_IsSet_: boolean;
    FSemTransporteCarga: boolean; // (E)
    FSemTransporteCarga_IsSet_: boolean;
    FQtdeViagens: integer; // (E)
    FQtdeViagens_IsSet_: boolean;
    procedure SetNumeroViagem(value:string);
    procedure SetEmbarque(value:tDateTime);
    procedure SetPrevisaoEntrega(value:tDateTime);
    procedure SetForo(value:tForo);
    procedure SetDocumentoRef(value:string);
    procedure SetDataVigencia(value:tDateTime);
    procedure SetNumeroViagemContratacao(value:string);
    procedure SetCentrodeCusto(value:string);
    procedure SetObservacao(value:string);
    procedure SetGerarCIOT(value:boolean);
    procedure SetSemTransporteCarga(value:boolean);
    procedure SetQtdeViagens(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property NumeroViagem: string read FNumeroViagem write SetNumeroViagem;
    property NumeroViagem_IsSet_:boolean read FNumeroViagem_IsSet_;
    property Embarque: tDateTime read FEmbarque write SetEmbarque;
    property Embarque_IsSet_:boolean read FEmbarque_IsSet_;
    property PrevisaoEntrega: tDateTime read FPrevisaoEntrega write SetPrevisaoEntrega;
    property PrevisaoEntrega_IsSet_:boolean read FPrevisaoEntrega_IsSet_;
    property Foro: tForo read FForo write SetForo;
    property Foro_IsSet_:boolean read FForo_IsSet_;
    property DocumentoRef: string read FDocumentoRef write SetDocumentoRef;
    property DocumentoRef_IsSet_:boolean read FDocumentoRef_IsSet_;
    property DataVigencia: tDateTime read FDataVigencia write SetDataVigencia;
    property DataVigencia_IsSet_:boolean read FDataVigencia_IsSet_;
    property NumeroViagemContratacao: string read FNumeroViagemContratacao write SetNumeroViagemContratacao;
    property NumeroViagemContratacao_IsSet_:boolean read FNumeroViagemContratacao_IsSet_;
    property CentrodeCusto: string read FCentrodeCusto write SetCentrodeCusto;
    property CentrodeCusto_IsSet_:boolean read FCentrodeCusto_IsSet_;
    property Observacao: string read FObservacao write SetObservacao;
    property Observacao_IsSet_:boolean read FObservacao_IsSet_;
    property GerarCIOT: boolean read FGerarCIOT write SetGerarCIOT;
    property GerarCIOT_IsSet_:boolean read FGerarCIOT_IsSet_;
    property SemTransporteCarga: boolean read FSemTransporteCarga write SetSemTransporteCarga;
    property SemTransporteCarga_IsSet_:boolean read FSemTransporteCarga_IsSet_;
    property QtdeViagens: integer read FQtdeViagens write SetQtdeViagens;
    property QtdeViagens_IsSet_:boolean read FQtdeViagens_IsSet_;
  end;

const
  snCIOT = 'CIOT';
  snCIOT_CodigoOperacaoTransporte = 'CodigoOperacaoTransporte';
  snCIOT_CodigoOperacaoTransporteDV = 'CodigoOperacaoTransporteDV';

type
  tCIOT = class
  private
    F_NameSpaceAlias: string;
    FCodigoOperacaoTransporte: string; // (E)
    FCodigoOperacaoTransporteDV: string; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CodigoOperacaoTransporte: string read FCodigoOperacaoTransporte write FCodigoOperacaoTransporte;
    property CodigoOperacaoTransporteDV: string read FCodigoOperacaoTransporteDV write FCodigoOperacaoTransporteDV;
  end;

const
  snResumoViagem = 'ResumoViagem';
  snResumoViagem_NumeroViagem = 'NumeroViagem';
  snResumoViagem_CIOT = 'CIOT';
  snResumoViagem_PedidoValePedagio = 'PedidoValePedagio';
  snResumoViagem_ResumoFinanceiro = 'ResumoFinanceiro';

type
  tResumoViagem = class
  private
    F_NameSpaceAlias: string;
    FNumeroViagem: string; // (E)
    FCIOT: tCIOT; // (E)
    FPedidoValePedagio: tPedidoValePedagio; // (E)
    FPedidoValePedagio_IsSet_: boolean;
    FResumoFinanceiro: tResumoFinanceiro; // (E)
    procedure SetPedidoValePedagio(value:tPedidoValePedagio);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property NumeroViagem: string read FNumeroViagem write FNumeroViagem;
    property CIOT: tCIOT read FCIOT write FCIOT;
    property PedidoValePedagio: tPedidoValePedagio read FPedidoValePedagio write SetPedidoValePedagio;
    property PedidoValePedagio_IsSet_:boolean read FPedidoValePedagio_IsSet_;
    property ResumoFinanceiro: tResumoFinanceiro read FResumoFinanceiro write FResumoFinanceiro;
  end;

const
  snRetornoMensagem = 'RetornoMensagem';
  snRetornoMensagem_IdentificacaoIntegracao = 'IdentificacaoIntegracao';
  snRetornoMensagem_StatusRetorno = 'StatusRetorno';
  snRetornoMensagem_Excecao = 'Excecao';

type
  tRetornoMensagem = class
  private
    F_NameSpaceAlias: string;
    FIdentificacaoIntegracao: tIdentificacaoIntegracaoType; // (E)
    FStatusRetorno: string; // (E)
    FExcecao: tExcecaoType; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property IdentificacaoIntegracao: tIdentificacaoIntegracaoType read FIdentificacaoIntegracao write FIdentificacaoIntegracao;
    property StatusRetorno: string read FStatusRetorno write FStatusRetorno;
    property Excecao: tExcecaoType read FExcecao write FExcecao;
  end;

const
  snEventoOperacao = 'EventoOperacao';
  snEventoOperacao_CodigoEventoOperacao = 'CodigoEventoOperacao';
  snEventoOperacao_ValorEvento = 'ValorEvento';
  snEventoOperacao_QuantidadeEvento = 'QuantidadeEvento';
  snEventoOperacao_Combustivel = 'Combustivel';
  snEventoOperacao_DataEvento = 'DataEvento';
  snEventoOperacao_ObservacaoEvento = 'ObservacaoEvento';

type
  tEventoOperacao = class
  private
    F_NameSpaceAlias: string;
    FCodigoEventoOperacao: string; // (E)
    FValorEvento: extended; // (E)
    FValorEvento_IsSet_: boolean;
    FQuantidadeEvento: extended; // (E)
    FQuantidadeEvento_IsSet_: boolean;
    FCombustivel: string; // (E)
    FCombustivel_IsSet_: boolean;
    FDataEvento: tDate; // (E)
    FDataEvento_IsSet_: boolean;
    FObservacaoEvento: string; // (E)
    FObservacaoEvento_IsSet_: boolean;
    procedure SetValorEvento(value:extended);
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
    property CodigoEventoOperacao: string read FCodigoEventoOperacao write FCodigoEventoOperacao;
    property ValorEvento: extended read FValorEvento write SetValorEvento;
    property ValorEvento_IsSet_:boolean read FValorEvento_IsSet_;
    property QuantidadeEvento: extended read FQuantidadeEvento write SetQuantidadeEvento;
    property QuantidadeEvento_IsSet_:boolean read FQuantidadeEvento_IsSet_;
    property Combustivel: string read FCombustivel write SetCombustivel;
    property Combustivel_IsSet_:boolean read FCombustivel_IsSet_;
    property DataEvento: tDate read FDataEvento write SetDataEvento;
    property DataEvento_IsSet_:boolean read FDataEvento_IsSet_;
    property ObservacaoEvento: string read FObservacaoEvento write SetObservacaoEvento;
    property ObservacaoEvento_IsSet_:boolean read FObservacaoEvento_IsSet_;
  end;

const
  snFilialEmpresa = 'FilialEmpresa';
  snFilialEmpresa_IDFilial = 'IDFilial';
  snFilialEmpresa_CNPJFilial = 'CNPJFilial';

type
  tFilialEmpresa = class
  private
    F_NameSpaceAlias: string;
    FIDFilial: integer; // (E)
    FIDFilial_IsSet_: boolean;
    FCNPJFilial: string; // (E)
    FCNPJFilial_IsSet_: boolean;
    procedure SetIDFilial(value:integer);
    procedure SetCNPJFilial(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property IDFilial: integer read FIDFilial write SetIDFilial;
    property IDFilial_IsSet_:boolean read FIDFilial_IsSet_;
    property CNPJFilial: string read FCNPJFilial write SetCNPJFilial;
    property CNPJFilial_IsSet_:boolean read FCNPJFilial_IsSet_;
  end;

const
  snEstabelecimentos = 'Estabelecimentos';
  snEstabelecimentos_IDEstabelecimento = 'IDEstabelecimento';
  snEstabelecimentos_CNPJEstabelecimento = 'CNPJEstabelecimento';
  snEstabelecimentos_NomeEstabelecimento = 'NomeEstabelecimento';
  snEstabelecimentos_Cidade = 'Cidade';
  snEstabelecimentos_UF = 'UF';
  snEstabelecimentos_Bandeira = 'Bandeira';

type
  tEstabelecimentos = class
  private
    F_NameSpaceAlias: string;
    FIDEstabelecimento: integer; // (E)
    FCNPJEstabelecimento: string; // (E)
    FNomeEstabelecimento: string; // (E)
    FCidade: tLocalidadeType; // (E)
    FUF: tSiglaUFType; // (E)
    FBandeira: string; // (E)
    FBandeira_IsSet_: boolean;
    procedure SetBandeira(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property IDEstabelecimento: integer read FIDEstabelecimento write FIDEstabelecimento;
    property CNPJEstabelecimento: string read FCNPJEstabelecimento write FCNPJEstabelecimento;
    property NomeEstabelecimento: string read FNomeEstabelecimento write FNomeEstabelecimento;
    property Cidade: tLocalidadeType read FCidade write FCidade;
    property UF: tSiglaUFType read FUF write FUF;
    property Bandeira: string read FBandeira write SetBandeira;
    property Bandeira_IsSet_:boolean read FBandeira_IsSet_;
  end;

const
  snEstabelecimento = 'Estabelecimento';
  snEstabelecimento_IDEstabelecimento = 'IDEstabelecimento';
  snEstabelecimento_CNPJEstabelecimento = 'CNPJEstabelecimento';
  snEstabelecimento_NomeEstabelecimento = 'NomeEstabelecimento';

type
  tEstabelecimento = class
  private
    F_NameSpaceAlias: string;
    FIDEstabelecimento: integer; // (E)
    FCNPJEstabelecimento: string; // (E)
    FNomeEstabelecimento: string; // (E)
    FNomeEstabelecimento_IsSet_: boolean;
    procedure SetNomeEstabelecimento(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property IDEstabelecimento: integer read FIDEstabelecimento write FIDEstabelecimento;
    property CNPJEstabelecimento: string read FCNPJEstabelecimento write FCNPJEstabelecimento;
    property NomeEstabelecimento: string read FNomeEstabelecimento write SetNomeEstabelecimento;
    property NomeEstabelecimento_IsSet_:boolean read FNomeEstabelecimento_IsSet_;
  end;

const
  snOperacaoViagem = 'OperacaoViagem';
  snOperacaoViagem_IDOperacaoViagem = 'IDOperacaoViagem';
  snOperacaoViagem_CodigoOperacao = 'CodigoOperacao';
  snOperacaoViagem_CondicaoLiberacaoOperacao = 'CondicaoLiberacaoOperacao';
  snOperacaoViagem_DataOperacao = 'DataOperacao';
  snOperacaoViagem_LocalRealizacao = 'LocalRealizacao';
  snOperacaoViagem_Estabelecimento = 'Estabelecimento';
  snOperacaoViagem_FilialEmpresa = 'FilialEmpresa';
  snOperacaoViagem_Cidade = 'Cidade';
  snOperacaoViagem_Estado = 'Estado';
  snOperacaoViagem_SituacaoOperacao = 'SituacaoOperacao';
  snOperacaoViagem_EventoOperacao = 'EventoOperacao';

type
  tOperacaoViagem = class
  private
    F_NameSpaceAlias: string;
    FIDOperacaoViagem: integer; // (E)
    FIDOperacaoViagem_IsSet_: boolean;
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
    FCidade: tLocalidadeType; // (E)
    FCidade_IsSet_: boolean;
    FEstado: tSiglaUFType; // (E)
    FEstado_IsSet_: boolean;
    FSituacaoOperacao: string; // (E)
    FSituacaoOperacao_IsSet_: boolean;
    FEventoOperacao: tManagedStringList; // of tEventoOperacao(E)
    procedure SetIDOperacaoViagem(value:integer);
    procedure SetDataOperacao(value:tDate);
    procedure SetLocalRealizacao(value:string);
    procedure SetEstabelecimento(value:tEstabelecimento);
    procedure SetFilialEmpresa(value:tFilialEmpresa);
    procedure SetCidade(value:tLocalidadeType);
    procedure SetEstado(value:tSiglaUFType);
    procedure SetSituacaoOperacao(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property IDOperacaoViagem: integer read FIDOperacaoViagem write SetIDOperacaoViagem;
    property IDOperacaoViagem_IsSet_:boolean read FIDOperacaoViagem_IsSet_;
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
    property Cidade: tLocalidadeType read FCidade write SetCidade;
    property Cidade_IsSet_:boolean read FCidade_IsSet_;
    property Estado: tSiglaUFType read FEstado write SetEstado;
    property Estado_IsSet_:boolean read FEstado_IsSet_;
    property SituacaoOperacao: string read FSituacaoOperacao write SetSituacaoOperacao;
    property SituacaoOperacao_IsSet_:boolean read FSituacaoOperacao_IsSet_;
    property EventoOperacao: tManagedStringList read FEventoOperacao write FEventoOperacao; // of tEventoOperacao
  end;

const
  snDetalheProgramacaoViagem = 'DetalheProgramacaoViagem';
  snDetalheProgramacaoViagem_OperacaoViagem = 'OperacaoViagem';

type
  tDetalheProgramacaoViagem = class
  private
    F_NameSpaceAlias: string;
    FOperacaoViagem: tManagedStringList; // of tOperacaoViagem(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property OperacaoViagem: tManagedStringList read FOperacaoViagem write FOperacaoViagem; // of tOperacaoViagem
  end;

const
  snProgramacaoViagem = 'ProgramacaoViagem';
  snProgramacaoViagem_OperacaoViagem = 'OperacaoViagem';

type
  tProgramacaoViagem = class
  private
    F_NameSpaceAlias: string;
    FOperacaoViagem: tManagedStringList; // of tOperacaoViagem(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property OperacaoViagem: tManagedStringList read FOperacaoViagem write FOperacaoViagem; // of tOperacaoViagem
  end;

const
  snTransportador = 'Transportador';
  snTransportador_CNPJCPFTransportador = 'CNPJCPFTransportador';
  snTransportador_RNTRC = 'RNTRC';
  snTransportador_NomeTransportador = 'NomeTransportador';

type
  tTransportador = class
  private
    F_NameSpaceAlias: string;
    FCNPJCPFTransportador: string; // (E)
    FRNTRC: string; // (E)
    FNomeTransportador: string; // (E)
    FNomeTransportador_IsSet_: boolean;
    procedure SetNomeTransportador(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CNPJCPFTransportador: string read FCNPJCPFTransportador write FCNPJCPFTransportador;
    property RNTRC: string read FRNTRC write FRNTRC;
    property NomeTransportador: string read FNomeTransportador write SetNomeTransportador;
    property NomeTransportador_IsSet_:boolean read FNomeTransportador_IsSet_;
  end;

const
  snPracaType = 'PracaType';
  snPracaType_IdPraca = 'IdPraca';
  snPracaType_NomePraca = 'NomePraca';
  snPracaType_LocalPraca = 'LocalPraca';
  snPracaType_Concessionaria = 'Concessionaria';
  snPracaType_Informativo = 'Informativo';
  snPracaType_PossuiTarifaEspecial = 'PossuiTarifaEspecial';
  snPracaType_LocalidadeOrigem = 'LocalidadeOrigem';
  snPracaType_LocalidadeDestino = 'LocalidadeDestino';
  snPracaType_SentidoCobranca = 'SentidoCobranca';

type
  tPracaType = class
  private
    F_NameSpaceAlias: string;
    FIdPraca: integer; // (E)
    FNomePraca: string; // (E)
    FLocalPraca: string; // (E)
    FLocalPraca_IsSet_: boolean;
    FConcessionaria: string; // (E)
    FConcessionaria_IsSet_: boolean;
    FInformativo: string; // (E)
    FInformativo_IsSet_: boolean;
    FPossuiTarifaEspecial: boolean; // (E)
    FPossuiTarifaEspecial_IsSet_: boolean;
    FLocalidadeOrigem: tLocalidadeType; // (E)
    FLocalidadeOrigem_IsSet_: boolean;
    FLocalidadeDestino: tLocalidadeType; // (E)
    FLocalidadeDestino_IsSet_: boolean;
    FSentidoCobranca: tSentidoCobrancaType; // (E)
    FSentidoCobranca_IsSet_: boolean;
    procedure SetLocalPraca(value:string);
    procedure SetConcessionaria(value:string);
    procedure SetInformativo(value:string);
    procedure SetPossuiTarifaEspecial(value:boolean);
    procedure SetLocalidadeOrigem(value:tLocalidadeType);
    procedure SetLocalidadeDestino(value:tLocalidadeType);
    procedure SetSentidoCobranca(value:tSentidoCobrancaType);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property IdPraca: integer read FIdPraca write FIdPraca;
    property NomePraca: string read FNomePraca write FNomePraca;
    property LocalPraca: string read FLocalPraca write SetLocalPraca;
    property LocalPraca_IsSet_:boolean read FLocalPraca_IsSet_;
    property Concessionaria: string read FConcessionaria write SetConcessionaria;
    property Concessionaria_IsSet_:boolean read FConcessionaria_IsSet_;
    property Informativo: string read FInformativo write SetInformativo;
    property Informativo_IsSet_:boolean read FInformativo_IsSet_;
    property PossuiTarifaEspecial: boolean read FPossuiTarifaEspecial write SetPossuiTarifaEspecial;
    property PossuiTarifaEspecial_IsSet_:boolean read FPossuiTarifaEspecial_IsSet_;
    property LocalidadeOrigem: tLocalidadeType read FLocalidadeOrigem write SetLocalidadeOrigem;
    property LocalidadeOrigem_IsSet_:boolean read FLocalidadeOrigem_IsSet_;
    property LocalidadeDestino: tLocalidadeType read FLocalidadeDestino write SetLocalidadeDestino;
    property LocalidadeDestino_IsSet_:boolean read FLocalidadeDestino_IsSet_;
    property SentidoCobranca: tSentidoCobrancaType read FSentidoCobranca write SetSentidoCobranca;
    property SentidoCobranca_IsSet_:boolean read FSentidoCobranca_IsSet_;
  end;

const
  snTransportadorViagemType = 'TransportadorViagemType';
  snTransportadorViagemType_CNPJCPFTrasportador = 'CNPJCPFTrasportador';
  snTransportadorViagemType_NomeTransportador = 'NomeTransportador';

type
  tTransportadorViagemType = class
  private
    F_NameSpaceAlias: string;
    FCNPJCPFTrasportador: string; // (E)
    FNomeTransportador: string; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CNPJCPFTrasportador: string read FCNPJCPFTrasportador write FCNPJCPFTrasportador;
    property NomeTransportador: string read FNomeTransportador write FNomeTransportador;
  end;
  tTransportadorViagem = tTransportadorViagemType;


const
  snCNHType = 'CNHType';
  snCNHType_NumeroCNH = 'NumeroCNH';
  snCNHType_CNHCategoria = 'CNHCategoria';

type
  tCNHType = class
  private
    F_NameSpaceAlias: string;
    FNumeroCNH: string; // (E)
    FNumeroCNH_IsSet_: boolean;
    FCNHCategoria: string; // (E)
    FCNHCategoria_IsSet_: boolean;
    procedure SetNumeroCNH(value:string);
    procedure SetCNHCategoria(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property NumeroCNH: string read FNumeroCNH write SetNumeroCNH;
    property NumeroCNH_IsSet_:boolean read FNumeroCNH_IsSet_;
    property CNHCategoria: string read FCNHCategoria write SetCNHCategoria;
    property CNHCategoria_IsSet_:boolean read FCNHCategoria_IsSet_;
  end;

const
  snMotoristaViagemType = 'MotoristaViagemType';
  snMotoristaViagemType_CPFMotorista = 'CPFMotorista';
  snMotoristaViagemType_NomeMotorista = 'NomeMotorista';

type
  tMotoristaViagemType = class
  private
    F_NameSpaceAlias: string;
    FCPFMotorista: string; // (E)
    FNomeMotorista: string; // (E)
    FNomeMotorista_IsSet_: boolean;
    procedure SetNomeMotorista(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CPFMotorista: string read FCPFMotorista write FCPFMotorista;
    property NomeMotorista: string read FNomeMotorista write SetNomeMotorista;
    property NomeMotorista_IsSet_:boolean read FNomeMotorista_IsSet_;
  end;
  tMotoristaViagem = tMotoristaViagemType;

const
  snListaPontoPassagem = 'ListaPontoPassagem';
  snListaPontoPassagem_PontoPassagem = 'PontoPassagem';

type
  tListaPontoPassagem = class
  private
    F_NameSpaceAlias: string;
    FPontoPassagem: tManagedStringList; // of tPontoPassagem(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property PontoPassagem: tManagedStringList read FPontoPassagem write FPontoPassagem; // of tPontoPassagem
  end;

const
  snPracasTarifaDiferenciada = 'PracasTarifaDiferenciada';
  snPracasTarifaDiferenciada_CondicaoCompraVP = 'CondicaoCompraVP';

type
  tPracasTarifaDiferenciada = class
  private
    F_NameSpaceAlias: string;
    FCondicaoCompraVP: string; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CondicaoCompraVP: string read FCondicaoCompraVP write FCondicaoCompraVP;
  end;

const
  snPracas = 'Pracas';
  snPracas_IdPraca = 'IdPraca';
  snPracas_ComprarPedagio = 'ComprarPedagio';
  snPracas_SentidoCobranca = 'SentidoCobranca';

type
  tPracas = class
  private
    F_NameSpaceAlias: string;
    FIdPraca: integer; // (E)
    FComprarPedagio: string; // (E)
    FSentidoCobranca: tSentidoCobrancaType; // (E)
    FSentidoCobranca_IsSet_: boolean;
    procedure SetSentidoCobranca(value:tSentidoCobrancaType);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property IdPraca: integer read FIdPraca write FIdPraca;
    property ComprarPedagio: string read FComprarPedagio write FComprarPedagio;
    property SentidoCobranca: tSentidoCobrancaType read FSentidoCobranca write SetSentidoCobranca;
    property SentidoCobranca_IsSet_:boolean read FSentidoCobranca_IsSet_;
  end;

const
  snValePedagioViagemType = 'ValePedagioViagemType';
  snValePedagioViagemType_OperadoraFinanceiraVP = 'OperadoraFinanceiraVP';
  snValePedagioViagemType_MeioPagamentoValePedagio = 'MeioPagamentoValePedagio';
  snValePedagioViagemType_ModalidadeLocalImpressao = 'ModalidadeLocalImpressao';
  snValePedagioViagemType_IDLocalImpressao = 'IDLocalImpressao';
  snValePedagioViagemType_ValorPedagio = 'ValorPedagio';
  snValePedagioViagemType_Pracas = 'Pracas';
  snValePedagioViagemType_PracasTarifaDiferenciada = 'PracasTarifaDiferenciada';
  snValePedagioViagemType_QtdeCompraVp = 'QtdeCompraVp';
  snValePedagioViagemType_ListaPontoPassagem = 'ListaPontoPassagem';

type
  tValePedagioViagemType = class
  private
    F_NameSpaceAlias: string;
    FOperadoraFinanceiraVP: string; // (E)
    FMeioPagamentoValePedagio: integer; // (E)
    FModalidadeLocalImpressao: tModalidadeImpressaoType; // (E)
    FModalidadeLocalImpressao_IsSet_: boolean;
    FIDLocalImpressao: integer; // (E)
    FIDLocalImpressao_IsSet_: boolean;
    FValorPedagio: extended; // (E)
    FValorPedagio_IsSet_: boolean;
    FPracas: tManagedStringList; // of tPracas(E)
    FPracasTarifaDiferenciada: tManagedStringList; // of tPracasTarifaDiferenciada(E)
    FQtdeCompraVp: integer; // (E)
    FQtdeCompraVp_IsSet_: boolean;
    FListaPontoPassagem: tListaPontoPassagem; // (E)
    FListaPontoPassagem_IsSet_: boolean;
    procedure SetModalidadeLocalImpressao(value:tModalidadeImpressaoType);
    procedure SetIDLocalImpressao(value:integer);
    procedure SetValorPedagio(value:extended);
    procedure SetQtdeCompraVp(value:integer);
    procedure SetListaPontoPassagem(value:tListaPontoPassagem);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property OperadoraFinanceiraVP: string read FOperadoraFinanceiraVP write FOperadoraFinanceiraVP;
    property MeioPagamentoValePedagio: integer read FMeioPagamentoValePedagio write FMeioPagamentoValePedagio;
    property ModalidadeLocalImpressao: tModalidadeImpressaoType read FModalidadeLocalImpressao write SetModalidadeLocalImpressao;
    property ModalidadeLocalImpressao_IsSet_:boolean read FModalidadeLocalImpressao_IsSet_;
    property IDLocalImpressao: integer read FIDLocalImpressao write SetIDLocalImpressao;
    property IDLocalImpressao_IsSet_:boolean read FIDLocalImpressao_IsSet_;
    property ValorPedagio: extended read FValorPedagio write SetValorPedagio;
    property ValorPedagio_IsSet_:boolean read FValorPedagio_IsSet_;
    property Pracas: tManagedStringList read FPracas write FPracas; // of tPracas
    property PracasTarifaDiferenciada: tManagedStringList read FPracasTarifaDiferenciada write FPracasTarifaDiferenciada; // of tPracasTarifaDiferenciada
    property QtdeCompraVp: integer read FQtdeCompraVp write SetQtdeCompraVp;
    property QtdeCompraVp_IsSet_:boolean read FQtdeCompraVp_IsSet_;
    property ListaPontoPassagem: tListaPontoPassagem read FListaPontoPassagem write SetListaPontoPassagem;
    property ListaPontoPassagem_IsSet_:boolean read FListaPontoPassagem_IsSet_;
  end;
  tValePedagioViagem = tValePedagioViagemType;
const
  snCartaoType = 'CartaoType';
  snCartaoType_NumeroCartao = 'NumeroCartao';
  snCartaoType_TipoCartao = 'TipoCartao';

type
  tCartaoType = class
  private
    F_NameSpaceAlias: string;
    FNumeroCartao: tNumeroCartaoType; // (E)
    FTipoCartao: tTipoCartaoType; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property NumeroCartao: tNumeroCartaoType read FNumeroCartao write FNumeroCartao;
    property TipoCartao: tTipoCartaoType read FTipoCartao write FTipoCartao;
  end;

const
  snTransportadorType = 'TransportadorType';
  snTransportadorType_RNTRCTransportador = 'RNTRCTransportador';
  snTransportadorType_CNPJCPF = 'CNPJCPF';
  snTransportadorType_TipoTransportador = 'TipoTransportador';
  snTransportadorType_NomeTransportador = 'NomeTransportador';
  snTransportadorType_Endereco = 'Endereco';
  snTransportadorType_Contato = 'Contato';
  snTransportadorType_Motorista = 'Motorista';
  snTransportadorType_Veiculo = 'Veiculo';
  snTransportadorType_Cartao = 'Cartao';

type
  tTransportadorType = class
  private
    F_NameSpaceAlias: string;
    FRNTRCTransportador: string; // (E)
    FCNPJCPF: tCNPJCPFType; // (E)
    FTipoTransportador: tTipoTransportadorType; // (E)
    FNomeTransportador: string; // (E)
    FEndereco: tManagedStringList; // of tEndereco(E)
    FContato: tManagedStringList; // of tContato(E)
    FMotorista: tManagedStringList; // of tMotorista(E)
    FVeiculo: tManagedStringList; // of tVeiculo(E)
    FCartao: tCartaoType; // (E)
    FCartao_IsSet_: boolean;
    procedure SetCartao(value:tCartaoType);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property RNTRCTransportador: string read FRNTRCTransportador write FRNTRCTransportador;
    property CNPJCPF: tCNPJCPFType read FCNPJCPF write FCNPJCPF;
    property TipoTransportador: tTipoTransportadorType read FTipoTransportador write FTipoTransportador;
    property NomeTransportador: string read FNomeTransportador write FNomeTransportador;
    property Endereco: tManagedStringList read FEndereco write FEndereco; // of tEndereco
    property Contato: tManagedStringList read FContato write FContato; // of tContato
    property Motorista: tManagedStringList read FMotorista write FMotorista; // of tMotorista
    property Veiculo: tManagedStringList read FVeiculo write FVeiculo; // of tVeiculo
    property Cartao: tCartaoType read FCartao write SetCartao;
    property Cartao_IsSet_:boolean read FCartao_IsSet_;
  end;


const
  snVeiculoType = 'VeiculoType';
  snVeiculoType_TipoTransporteVeiculo = 'TipoTransporteVeiculo';
  snVeiculoType_RNTRC = 'RNTRC';
  snVeiculoType_CNPJCPF = 'CNPJCPF';
  snVeiculoType_TipoVeiculo = 'TipoVeiculo';
  snVeiculoType_QtdeEixos = 'QtdeEixos';
  snVeiculoType_TipoRodagem = 'TipoRodagem';
  snVeiculoType_PlacaVeiculo = 'PlacaVeiculo';
  snVeiculoType_UfPlacaVeiculo = 'UfPlacaVeiculo';
  snVeiculoType_NumeroFrotaVeiculo = 'NumeroFrotaVeiculo';
  snVeiculoType_TipoCombustivelVeiculo = 'TipoCombustivelVeiculo';
  snVeiculoType_CapacidadeTanqueVeiculo = 'CapacidadeTanqueVeiculo';
  snVeiculoType_MediaConsumoVeiculo = 'MediaConsumoVeiculo';

type
  tVeiculoType = class
  private
    F_NameSpaceAlias: string;
    FTipoTransporteVeiculo: string; // (E)
    FRNTRC: tRNTRCType; // (E)
    FRNTRC_IsSet_: boolean;
    FCNPJCPF: tCNPJCPFType; // (E)
    FCNPJCPF_IsSet_: boolean;
    FTipoVeiculo: integer; // (E)
    FQtdeEixos: tEixoType; // (E)
    FTipoRodagem: tTipoRodagemType; // (E)
    FPlacaVeiculo: tPlacaVeiculoType; // (E)
    FUfPlacaVeiculo: string; // (E)
    FNumeroFrotaVeiculo: integer; // (E)
    FNumeroFrotaVeiculo_IsSet_: boolean;
    FTipoCombustivelVeiculo: integer; // (E)
    FCapacidadeTanqueVeiculo: extended; // (E)
    FCapacidadeTanqueVeiculo_IsSet_: boolean;
    FMediaConsumoVeiculo: extended; // (E)
    FMediaConsumoVeiculo_IsSet_: boolean;
    procedure SetRNTRC(value:tRNTRCType);
    procedure SetCNPJCPF(value:tCNPJCPFType);
    procedure SetNumeroFrotaVeiculo(value:integer);
    procedure SetCapacidadeTanqueVeiculo(value:extended);
    procedure SetMediaConsumoVeiculo(value:extended);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property TipoTransporteVeiculo: string read FTipoTransporteVeiculo write FTipoTransporteVeiculo;
    property RNTRC: tRNTRCType read FRNTRC write SetRNTRC;
    property RNTRC_IsSet_:boolean read FRNTRC_IsSet_;
    property CNPJCPF: tCNPJCPFType read FCNPJCPF write SetCNPJCPF;
    property CNPJCPF_IsSet_:boolean read FCNPJCPF_IsSet_;
    property TipoVeiculo: integer read FTipoVeiculo write FTipoVeiculo;
    property QtdeEixos: tEixoType read FQtdeEixos write FQtdeEixos;
    property TipoRodagem: tTipoRodagemType read FTipoRodagem write FTipoRodagem;
    property PlacaVeiculo: tPlacaVeiculoType read FPlacaVeiculo write FPlacaVeiculo;
    property UfPlacaVeiculo: string read FUfPlacaVeiculo write FUfPlacaVeiculo;
    property NumeroFrotaVeiculo: integer read FNumeroFrotaVeiculo write SetNumeroFrotaVeiculo;
    property NumeroFrotaVeiculo_IsSet_:boolean read FNumeroFrotaVeiculo_IsSet_;
    property TipoCombustivelVeiculo: integer read FTipoCombustivelVeiculo write FTipoCombustivelVeiculo;
    property CapacidadeTanqueVeiculo: extended read FCapacidadeTanqueVeiculo write SetCapacidadeTanqueVeiculo;
    property CapacidadeTanqueVeiculo_IsSet_:boolean read FCapacidadeTanqueVeiculo_IsSet_;
    property MediaConsumoVeiculo: extended read FMediaConsumoVeiculo write SetMediaConsumoVeiculo;
    property MediaConsumoVeiculo_IsSet_:boolean read FMediaConsumoVeiculo_IsSet_;
  end;
  tVeiculo = tVeiculoType;
const
  snContatoType = 'ContatoType';
  snContatoType_TipoContato = 'TipoContato';
  snContatoType_Nome = 'Nome';
  snContatoType_Telefone = 'Telefone';
  snContatoType_Celular = 'Celular';
  snContatoType_Email = 'Email';
  snContatoType_MeioComunicacaoPreferido = 'MeioComunicacaoPreferido';

type
  tContatoType = class
  private
    F_NameSpaceAlias: string;
    FTipoContato: string; // (E)
    FNome: string; // (E)
    FTelefone: string; // (E)
    FTelefone_IsSet_: boolean;
    FCelular: string; // (E)
    FCelular_IsSet_: boolean;
    FEmail: string; // (E)
    FEmail_IsSet_: boolean;
    FMeioComunicacaoPreferido: string; // (E)
    FMeioComunicacaoPreferido_IsSet_: boolean;
    procedure SetTelefone(value:string);
    procedure SetCelular(value:string);
    procedure SetEmail(value:string);
    procedure SetMeioComunicacaoPreferido(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property TipoContato: string read FTipoContato write FTipoContato;
    property Nome: string read FNome write FNome;
    property Telefone: string read FTelefone write SetTelefone;
    property Telefone_IsSet_:boolean read FTelefone_IsSet_;
    property Celular: string read FCelular write SetCelular;
    property Celular_IsSet_:boolean read FCelular_IsSet_;
    property Email: string read FEmail write SetEmail;
    property Email_IsSet_:boolean read FEmail_IsSet_;
    property MeioComunicacaoPreferido: string read FMeioComunicacaoPreferido write SetMeioComunicacaoPreferido;
    property MeioComunicacaoPreferido_IsSet_:boolean read FMeioComunicacaoPreferido_IsSet_;
  end;
  tContato = tContatoType;
const
  snEnderecoType = 'EnderecoType';
  snEnderecoType_TipoEndereco = 'TipoEndereco';
  snEnderecoType_CEP = 'CEP';
  snEnderecoType_TipoLogradouro = 'TipoLogradouro';
  snEnderecoType_Logradouro = 'Logradouro';
  snEnderecoType_Numero = 'Numero';
  snEnderecoType_Complemento = 'Complemento';
  snEnderecoType_Bairro = 'Bairro';
  snEnderecoType_Cidade = 'Cidade';
  snEnderecoType_Estado = 'Estado';

type
  tEnderecoType = class
  private
    F_NameSpaceAlias: string;
    FTipoEndereco: string; // (E)
    FTipoEndereco_IsSet_: boolean;
    FCEP: string; // (E)
    FTipoLogradouro: string; // (E)
    FTipoLogradouro_IsSet_: boolean;
    FLogradouro: string; // (E)
    FNumero: string; // (E)
    FComplemento: string; // (E)
    FComplemento_IsSet_: boolean;
    FBairro: string; // (E)
    FCidade: tLocalidadeType; // (E)
    FEstado: tSiglaUFType; // (E)
    FEstado_IsSet_: boolean;
    procedure SetTipoEndereco(value:string);
    procedure SetTipoLogradouro(value:string);
    procedure SetComplemento(value:string);
    procedure SetEstado(value:tSiglaUFType);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property TipoEndereco: string read FTipoEndereco write SetTipoEndereco;
    property TipoEndereco_IsSet_:boolean read FTipoEndereco_IsSet_;
    property CEP: string read FCEP write FCEP;
    property TipoLogradouro: string read FTipoLogradouro write SetTipoLogradouro;
    property TipoLogradouro_IsSet_:boolean read FTipoLogradouro_IsSet_;
    property Logradouro: string read FLogradouro write FLogradouro;
    property Numero: string read FNumero write FNumero;
    property Complemento: string read FComplemento write SetComplemento;
    property Complemento_IsSet_:boolean read FComplemento_IsSet_;
    property Bairro: string read FBairro write FBairro;
    property Cidade: tLocalidadeType read FCidade write FCidade;
    property Estado: tSiglaUFType read FEstado write SetEstado;
    property Estado_IsSet_:boolean read FEstado_IsSet_;
  end;
  tEndereco = tEnderecoType;
const
  snMotoristaType = 'MotoristaType';
  snMotoristaType_NomeMotorista = 'NomeMotorista';
  snMotoristaType_Relacao = 'Relacao';
  snMotoristaType_CPFMotorista = 'CPFMotorista';
  snMotoristaType_CNHMotorista = 'CNHMotorista';
  snMotoristaType_Contato = 'Contato';
  snMotoristaType_Endereco = 'Endereco';
  snMotoristaType_DataNascimento = 'DataNascimento';
  snMotoristaType_Identidade = 'Identidade';
  snMotoristaType_OrgaoExpedidor = 'OrgaoExpedidor';
  snMotoristaType_Sexo = 'Sexo';
  snMotoristaType_NumeroCartao = 'NumeroCartao';

type
  tMotoristaType = class
  private
    F_NameSpaceAlias: string;
    FNomeMotorista: string; // (E)
    FNomeMotorista_IsSet_: boolean;
    FRelacao: string; // (E)
    FRelacao_IsSet_: boolean;
    FCPFMotorista: string; // (E)
    FCNHMotorista: tCNHType; // (E)
    FCNHMotorista_IsSet_: boolean;
    FContato: tContatoType; // (E)
    FContato_IsSet_: boolean;
    FEndereco: tEnderecoType; // (E)
    FEndereco_IsSet_: boolean;
    FDataNascimento: tDate; // (E)
    FDataNascimento_IsSet_: boolean;
    FIdentidade: string; // (E)
    FIdentidade_IsSet_: boolean;
    FOrgaoExpedidor: string; // (E)
    FOrgaoExpedidor_IsSet_: boolean;
    FSexo: string; // (E)
    FSexo_IsSet_: boolean;
    FNumeroCartao: tNumeroCartaoType; // (E)
    FNumeroCartao_IsSet_: boolean;
    procedure SetNomeMotorista(value:string);
    procedure SetRelacao(value:string);
    procedure SetCNHMotorista(value:tCNHType);
    procedure SetContato(value:tContatoType);
    procedure SetEndereco(value:tEnderecoType);
    procedure SetDataNascimento(value:tDate);
    procedure SetIdentidade(value:string);
    procedure SetOrgaoExpedidor(value:string);
    procedure SetSexo(value:string);
    procedure SetNumeroCartao(value:tNumeroCartaoType);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property NomeMotorista: string read FNomeMotorista write SetNomeMotorista;
    property NomeMotorista_IsSet_:boolean read FNomeMotorista_IsSet_;
    property Relacao: string read FRelacao write SetRelacao;
    property Relacao_IsSet_:boolean read FRelacao_IsSet_;
    property CPFMotorista: string read FCPFMotorista write FCPFMotorista;
    property CNHMotorista: tCNHType read FCNHMotorista write SetCNHMotorista;
    property CNHMotorista_IsSet_:boolean read FCNHMotorista_IsSet_;
    property Contato: tContatoType read FContato write SetContato;
    property Contato_IsSet_:boolean read FContato_IsSet_;
    property Endereco: tEnderecoType read FEndereco write SetEndereco;
    property Endereco_IsSet_:boolean read FEndereco_IsSet_;
    property DataNascimento: tDate read FDataNascimento write SetDataNascimento;
    property DataNascimento_IsSet_:boolean read FDataNascimento_IsSet_;
    property Identidade: string read FIdentidade write SetIdentidade;
    property Identidade_IsSet_:boolean read FIdentidade_IsSet_;
    property OrgaoExpedidor: string read FOrgaoExpedidor write SetOrgaoExpedidor;
    property OrgaoExpedidor_IsSet_:boolean read FOrgaoExpedidor_IsSet_;
    property Sexo: string read FSexo write SetSexo;
    property Sexo_IsSet_:boolean read FSexo_IsSet_;
    property NumeroCartao: tNumeroCartaoType read FNumeroCartao write SetNumeroCartao;
    property NumeroCartao_IsSet_:boolean read FNumeroCartao_IsSet_;
  end;
  tMotorista = tMotoristaType;

const
  snEnvolvidosTransporte = 'EnvolvidosTransporte';
  snEnvolvidosTransporte_TipoEnvolvido = 'TipoEnvolvido';
  snEnvolvidosTransporte_CNPJCPF = 'CNPJCPF';
  snEnvolvidosTransporte_NomeEnvolvido = 'NomeEnvolvido';
  snEnvolvidosTransporte_Endereco = 'Endereco';

type
  tEnvolvidosTransporte = class
  private
    F_NameSpaceAlias: string;
    FTipoEnvolvido: string; // (E)
    FCNPJCPF: tCNPJCPFType; // (E)
    FNomeEnvolvido: string; // (E)
    FEndereco: tEnderecoType; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property TipoEnvolvido: string read FTipoEnvolvido write FTipoEnvolvido;
    property CNPJCPF: tCNPJCPFType read FCNPJCPF write FCNPJCPF;
    property NomeEnvolvido: string read FNomeEnvolvido write FNomeEnvolvido;
    property Endereco: tEnderecoType read FEndereco write FEndereco;
  end;

const
  snEnvolvidosTransporteViagemType = 'EnvolvidosTransporteViagemType';
  snEnvolvidosTransporteViagemType_TipoFrete = 'TipoFrete';
  snEnvolvidosTransporteViagemType_EnvolvidosTransporte = 'EnvolvidosTransporte';

type
  tEnvolvidosTransporteViagemType = class
  private
    F_NameSpaceAlias: string;
    FTipoFrete: tTipoFreteType; // (E)
    FEnvolvidosTransporte: tManagedStringList; // of tEnvolvidosTransporte(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property TipoFrete: tTipoFreteType read FTipoFrete write FTipoFrete;
    property EnvolvidosTransporte: tManagedStringList read FEnvolvidosTransporte write FEnvolvidosTransporte; // of tEnvolvidosTransporte
  end;
  tEnvolvidosTransporteViagem = tEnvolvidosTransporteViagemType;


const
  snDadosTransportadorType = 'DadosTransportadorType';
  snDadosTransportadorType_Transportador = 'Transportador';
  snDadosTransportadorType_TipoTransportador = 'TipoTransportador';
  snDadosTransportadorType_Contato = 'Contato';
  snDadosTransportadorType_Endereco = 'Endereco';
  snDadosTransportadorType_Veiculo = 'Veiculo';
  snDadosTransportadorType_Motorista = 'Motorista';
  snDadosTransportadorType_NumeroCartao = 'NumeroCartao';
  snDadosTransportadorType_TransportadorPF = 'TransportadorPF';
  snDadosTransportadorType_TransportadorPJ = 'TransportadorPJ';

type
  tDadosTransportadorType = class
  private
    F_NameSpaceAlias: string;
    FTransportador: tTransportador; // (E)
    FTipoTransportador: tTipoTransportadorType; // (E)
    FContato: tContatoType; // (E)
    FContato_IsSet_: boolean;
    FEndereco: tEnderecoType; // (E)
    FEndereco_IsSet_: boolean;
    FVeiculo: tManagedStringList; // of tVeiculo(E)
    FMotorista: tManagedStringList; // of tMotorista(E)
    FNumeroCartao: tNumeroCartaoType; // (E)
    FNumeroCartao_IsSet_: boolean;
    FTransportadorPF: tTransportadorPFType; // (E)
    FTransportadorPF_IsSet_: boolean;
    FTransportadorPJ: tTransportadorPJType; // (E)
    FTransportadorPJ_IsSet_: boolean;
    procedure SetContato(value:tContatoType);
    procedure SetEndereco(value:tEnderecoType);
    procedure SetNumeroCartao(value:tNumeroCartaoType);
    procedure SetTransportadorPF(value:tTransportadorPFType);
    procedure SetTransportadorPJ(value:tTransportadorPJType);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Transportador: tTransportador read FTransportador write FTransportador;
    property TipoTransportador: tTipoTransportadorType read FTipoTransportador write FTipoTransportador;
    property Contato: tContatoType read FContato write SetContato;
    property Contato_IsSet_:boolean read FContato_IsSet_;
    property Endereco: tEnderecoType read FEndereco write SetEndereco;
    property Endereco_IsSet_:boolean read FEndereco_IsSet_;
    property Veiculo: tManagedStringList read FVeiculo write FVeiculo; // of tVeiculo
    property Motorista: tManagedStringList read FMotorista write FMotorista; // of tMotorista
    property NumeroCartao: tNumeroCartaoType read FNumeroCartao write SetNumeroCartao;
    property NumeroCartao_IsSet_:boolean read FNumeroCartao_IsSet_;
    property TransportadorPF: tTransportadorPFType read FTransportadorPF write SetTransportadorPF;
    property TransportadorPF_IsSet_:boolean read FTransportadorPF_IsSet_;
    property TransportadorPJ: tTransportadorPJType read FTransportadorPJ write SetTransportadorPJ;
    property TransportadorPJ_IsSet_:boolean read FTransportadorPJ_IsSet_;
  end;

implementation
uses
  SysUtils,
  mylib;

const
  thisNamespaceURI = 'https://ws.rodocred.com.br/';
  defNamespaceAlias = '';

{ tTransportadorPJType }

class function tTransportadorPJType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tTransportadorPJType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tTransportadorPJType.Create(aRoot:tJanXMLNode2);
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
    if (sn = snTransportadorPJType_InscricaoMunicipal) then
      InscricaoMunicipal :=  xn.text // string
    else if (sn = snTransportadorPJType_InscricaoEstadual) then
      InscricaoEstadual :=  xn.text // string
    else if (sn = snTransportadorPJType_NomeReduzido) then
      NomeReduzido :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tTransportadorPJType.Destroy;
begin
  inherited;
end; // destructor ...

procedure tTransportadorPJType.SetInscricaoEstadual(value:string);
begin
  FInscricaoEstadual := value;
  FInscricaoEstadual_IsSet_ := true;
end;

procedure tTransportadorPJType.SetNomeReduzido(value:string);
begin
  FNomeReduzido := value;
  FNomeReduzido_IsSet_ := true;
end;

procedure tTransportadorPJType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'TransportadorPJType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snTransportadorPJType_InscricaoMunicipal));
  xn.text := FInscricaoMunicipal;
  if InscricaoEstadual_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snTransportadorPJType_InscricaoEstadual));
    xn.text := FInscricaoEstadual;
  end;
  if NomeReduzido_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snTransportadorPJType_NomeReduzido));
    xn.text := FNomeReduzido;
  end;
end; // procedure save

{ tTransportadorPFType }

class function tTransportadorPFType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tTransportadorPFType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tTransportadorPFType.Create(aRoot:tJanXMLNode2);
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
    if (sn = snTransportadorPFType_DataNascimento) then
      DataNascimento := DateFromXMLDateTime(xn.text) // tDate
    else if (sn = snTransportadorPFType_Identidade) then
      Identidade :=  xn.text // string
    else if (sn = snTransportadorPFType_OrgaoExpedidor) then
      OrgaoExpedidor :=  xn.text // string
    else if (sn = snTransportadorPFType_PISPASEP) then
      PISPASEP :=  xn.text // string
    else if (sn = snTransportadorPFType_Sexo) then
      Sexo :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tTransportadorPFType.Destroy;
begin
  inherited;
end; // destructor ...

procedure tTransportadorPFType.SetPISPASEP(value:string);
begin
  FPISPASEP := value;
  FPISPASEP_IsSet_ := true;
end;

procedure tTransportadorPFType.SetSexo(value:string);
begin
  FSexo := value;
  FSexo_IsSet_ := true;
end;

procedure tTransportadorPFType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'TransportadorPFType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snTransportadorPFType_DataNascimento));
  xn.text := DateToXMLDateTime(FDataNascimento);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snTransportadorPFType_Identidade));
  xn.text := FIdentidade;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snTransportadorPFType_OrgaoExpedidor));
  xn.text := FOrgaoExpedidor;
  if PISPASEP_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snTransportadorPFType_PISPASEP));
    xn.text := FPISPASEP;
  end;
  if Sexo_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snTransportadorPFType_Sexo));
    xn.text := FSexo;
  end;
end; // procedure save

{ tPontoPassagem }

class function tPontoPassagem._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tPontoPassagem.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tPontoPassagem.Create(aRoot:tJanXMLNode2);
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
    if (sn = snPontoPassagem_IdPonto) then
      IdPonto := StrToIntDef(xn.text, 0)
    else if (sn = snPontoPassagem_Sequencia) then
      Sequencia := StrToIntDef(xn.text, 0)
    else if (sn = snPontoPassagem_QtdeEixos) then
      QtdeEixos :=  xn.text // tEixoType
    else if (sn = snPontoPassagem_PesoCarga) then
      PesoCarga := DefStrToFloat(xn.text, 0)
    else if (sn = snPontoPassagem_UnidadeMedidaPeso) then
      UnidadeMedidaPeso :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tPontoPassagem.Destroy;
begin
  inherited;
end; // destructor ...

procedure tPontoPassagem.SetQtdeEixos(value:tEixoType);
begin
  FQtdeEixos := value;
  FQtdeEixos_IsSet_ := true;
end;

procedure tPontoPassagem.SetPesoCarga(value:extended);
begin
  FPesoCarga := value;
  FPesoCarga_IsSet_ := true;
end;

procedure tPontoPassagem.SetUnidadeMedidaPeso(value:string);
begin
  FUnidadeMedidaPeso := value;
  FUnidadeMedidaPeso_IsSet_ := true;
end;

procedure tPontoPassagem.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'PontoPassagem')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snPontoPassagem_IdPonto));
  xn.text := IntToStr(FIdPonto);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snPontoPassagem_Sequencia));
  xn.text := IntToStr(FSequencia);
  if QtdeEixos_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snPontoPassagem_QtdeEixos));
    xn.text := FQtdeEixos;
  end;
  if PesoCarga_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snPontoPassagem_PesoCarga));
    xn.text := MyFloatToStr(FPesoCarga);
  end;
  if UnidadeMedidaPeso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snPontoPassagem_UnidadeMedidaPeso));
    xn.text := FUnidadeMedidaPeso;
  end;
end; // procedure save

{ tMotoristas }

class function tMotoristas._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tMotoristas.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tMotoristas.Create(aRoot:tJanXMLNode2);
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
    if (sn = snMotoristas_CPFMotorista) then
      CPFMotorista :=  xn.text // tCPFType
    else if (sn = snMotoristas_StatusRetorno) then
      StatusRetorno :=  xn.text // tStatusRetornoType
    else if (sn = snMotoristas_Excecao) then
      FExcecao := tExcecaoType.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tMotoristas.Destroy;
begin
  inherited;
end; // destructor ...

procedure tMotoristas.SetExcecao(value:tExcecaoType);
begin
  FExcecao := value;
  FExcecao_IsSet_ := true;
end;

procedure tMotoristas.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Motoristas')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snMotoristas_CPFMotorista));
  xn.text := FCPFMotorista;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snMotoristas_StatusRetorno));
  xn.text := FStatusRetorno;
  if Assigned(FExcecao) then
  begin
    xn := aNode.addChildByName(snMotoristas_Excecao);
    FExcecao.Save(xn);
  end;
end; // procedure save

{ tDestinoRota }

class function tDestinoRota._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tDestinoRota.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tDestinoRota.Create(aRoot:tJanXMLNode2);
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
    if (sn = snDestinoRota_UFDestino) then
      UFDestino :=  xn.text // tSiglaUFType
    else if (sn = snDestinoRota_LocalidadeDestino) then
      LocalidadeDestino :=  xn.text // tLocalidadeType
    else if (sn = snDestinoRota_CodigoIBGEDestino) then
      CodigoIBGEDestino :=  xn.text // tCodigoIBGEType
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tDestinoRota.Destroy;
begin
  inherited;
end; // destructor ...

procedure tDestinoRota.SetUFDestino(value:tSiglaUFType);
begin
  FUFDestino := value;
  FUFDestino_IsSet_ := true;
end;

procedure tDestinoRota.SetLocalidadeDestino(value:tLocalidadeType);
begin
  FLocalidadeDestino := value;
  FLocalidadeDestino_IsSet_ := true;
end;

procedure tDestinoRota.SetCodigoIBGEDestino(value:tCodigoIBGEType);
begin
  FCodigoIBGEDestino := value;
  FCodigoIBGEDestino_IsSet_ := true;
end;

procedure tDestinoRota.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'DestinoRota')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if UFDestino_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDestinoRota_UFDestino));
    xn.text := FUFDestino;
  end;
  if LocalidadeDestino_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDestinoRota_LocalidadeDestino));
    xn.text := FLocalidadeDestino;
  end;
  if CodigoIBGEDestino_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDestinoRota_CodigoIBGEDestino));
    xn.text := FCodigoIBGEDestino;
  end;
end; // procedure save

{ tOrigemRota }

class function tOrigemRota._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tOrigemRota.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tOrigemRota.Create(aRoot:tJanXMLNode2);
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
    if (sn = snOrigemRota_UFOrigem) then
      UFOrigem :=  xn.text // tSiglaUFType
    else if (sn = snOrigemRota_LocalidadeOrigem) then
      LocalidadeOrigem :=  xn.text // tLocalidadeType
    else if (sn = snOrigemRota_CodigoIBGEOrigem) then
      CodigoIBGEOrigem :=  xn.text // tCodigoIBGEType
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tOrigemRota.Destroy;
begin
  inherited;
end; // destructor ...

procedure tOrigemRota.SetUFOrigem(value:tSiglaUFType);
begin
  FUFOrigem := value;
  FUFOrigem_IsSet_ := true;
end;

procedure tOrigemRota.SetLocalidadeOrigem(value:tLocalidadeType);
begin
  FLocalidadeOrigem := value;
  FLocalidadeOrigem_IsSet_ := true;
end;

procedure tOrigemRota.SetCodigoIBGEOrigem(value:tCodigoIBGEType);
begin
  FCodigoIBGEOrigem := value;
  FCodigoIBGEOrigem_IsSet_ := true;
end;

procedure tOrigemRota.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'OrigemRota')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if UFOrigem_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOrigemRota_UFOrigem));
    xn.text := FUFOrigem;
  end;
  if LocalidadeOrigem_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOrigemRota_LocalidadeOrigem));
    xn.text := FLocalidadeOrigem;
  end;
  if CodigoIBGEOrigem_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOrigemRota_CodigoIBGEOrigem));
    xn.text := FCodigoIBGEOrigem;
  end;
end; // procedure save

{ tVeiculos }

class function tVeiculos._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tVeiculos.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tVeiculos.Create(aRoot:tJanXMLNode2);
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
    if (sn = snVeiculos_PlacaVeiculo) then
      PlacaVeiculo :=  xn.text // tPlacaVeiculoType
    else if (sn = snVeiculos_SituacaoFrotaANTT) then
      SituacaoFrotaANTT := (xn.text = 'true')
    else if (sn = snVeiculos_StatusRetorno) then
      StatusRetorno :=  xn.text // tStatusRetornoType
    else if (sn = snVeiculos_Excecao) then
      FExcecao := tExcecaoType.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tVeiculos.Destroy;
begin
  inherited;
end; // destructor ...

procedure tVeiculos.SetSituacaoFrotaANTT(value:boolean);
begin
  FSituacaoFrotaANTT := value;
  FSituacaoFrotaANTT_IsSet_ := true;
end;

procedure tVeiculos.SetExcecao(value:tExcecaoType);
begin
  FExcecao := value;
  FExcecao_IsSet_ := true;
end;

procedure tVeiculos.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Veiculos')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snVeiculos_PlacaVeiculo));
  xn.text := FPlacaVeiculo;
  if SituacaoFrotaANTT_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snVeiculos_SituacaoFrotaANTT));
    xn.text := BoolToStr(FSituacaoFrotaANTT);
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snVeiculos_StatusRetorno));
  xn.text := FStatusRetorno;
  if Assigned(FExcecao) then
  begin
    xn := aNode.addChildByName(snVeiculos_Excecao);
    FExcecao.Save(xn);
  end;
end; // procedure save

{ tResumoFinanceiro }

class function tResumoFinanceiro._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tResumoFinanceiro.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tResumoFinanceiro.Create(aRoot:tJanXMLNode2);
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
    if (sn = snResumoFinanceiro_TotalFrete) then
      TotalFrete := DefStrToFloat(xn.text, 0)
    else if (sn = snResumoFinanceiro_TotalFreteLiquido) then
      TotalFreteLiquido := DefStrToFloat(xn.text, 0)
    else if (sn = snResumoFinanceiro_TotalAbastecimento) then
      TotalAbastecimento := DefStrToFloat(xn.text, 0)
    else if (sn = snResumoFinanceiro_TotalPedagio) then
      TotalPedagio := DefStrToFloat(xn.text, 0)
    else if (sn = snResumoFinanceiro_TotalImpostosRetidos) then
      TotalImpostosRetidos := DefStrToFloat(xn.text, 0)
    else if (sn = snResumoFinanceiro_TotalAdministrativas) then
      TotalAdministrativas := DefStrToFloat(xn.text, 0)
    else if (sn = snResumoFinanceiro_TotalViagem) then
      TotalViagem := DefStrToFloat(xn.text, 0)
    else if (sn = snResumoFinanceiro_TotalCustosViagem) then
      TotalCustosViagem := DefStrToFloat(xn.text, 0)
    else if (sn = snResumoFinanceiro_ValorQuebraClausula) then
      ValorQuebraClausula := DefStrToFloat(xn.text, 0)
    else if (sn = snResumoFinanceiro_ValorFreteTonelada) then
      ValorFreteTonelada := DefStrToFloat(xn.text, 0)
    else if (sn = snResumoFinanceiro_ValorUnitarioCarga) then
      ValorUnitarioCarga := DefStrToFloat(xn.text, 0)
    else if (sn = snResumoFinanceiro_PesoCarga) then
      PesoCarga := DefStrToFloat(xn.text, 0)
    else if (sn = snResumoFinanceiro_PesoCargaEntregue) then
      PesoCargaEntregue := DefStrToFloat(xn.text, 0)
    else if (sn = snResumoFinanceiro_QuantidadeCarga) then
      QuantidadeCarga := StrToIntDef(xn.text, 0)
    else if (sn = snResumoFinanceiro_QuantidadeCargaEntregue) then
      QuantidadeCargaEntregue := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tResumoFinanceiro.Destroy;
begin
  inherited;
end; // destructor ...

procedure tResumoFinanceiro.SetTotalCustosViagem(value:extended);
begin
  FTotalCustosViagem := value;
  FTotalCustosViagem_IsSet_ := true;
end;

procedure tResumoFinanceiro.SetValorQuebraClausula(value:extended);
begin
  FValorQuebraClausula := value;
  FValorQuebraClausula_IsSet_ := true;
end;

procedure tResumoFinanceiro.SetValorFreteTonelada(value:extended);
begin
  FValorFreteTonelada := value;
  FValorFreteTonelada_IsSet_ := true;
end;

procedure tResumoFinanceiro.SetValorUnitarioCarga(value:extended);
begin
  FValorUnitarioCarga := value;
  FValorUnitarioCarga_IsSet_ := true;
end;

procedure tResumoFinanceiro.SetPesoCarga(value:extended);
begin
  FPesoCarga := value;
  FPesoCarga_IsSet_ := true;
end;

procedure tResumoFinanceiro.SetPesoCargaEntregue(value:extended);
begin
  FPesoCargaEntregue := value;
  FPesoCargaEntregue_IsSet_ := true;
end;

procedure tResumoFinanceiro.SetQuantidadeCarga(value:integer);
begin
  FQuantidadeCarga := value;
  FQuantidadeCarga_IsSet_ := true;
end;

procedure tResumoFinanceiro.SetQuantidadeCargaEntregue(value:integer);
begin
  FQuantidadeCargaEntregue := value;
  FQuantidadeCargaEntregue_IsSet_ := true;
end;

procedure tResumoFinanceiro.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ResumoFinanceiro')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snResumoFinanceiro_TotalFrete));
  xn.text := MyFloatToStr(FTotalFrete);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snResumoFinanceiro_TotalFreteLiquido));
  xn.text := MyFloatToStr(FTotalFreteLiquido);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snResumoFinanceiro_TotalAbastecimento));
  xn.text := MyFloatToStr(FTotalAbastecimento);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snResumoFinanceiro_TotalPedagio));
  xn.text := MyFloatToStr(FTotalPedagio);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snResumoFinanceiro_TotalImpostosRetidos));
  xn.text := MyFloatToStr(FTotalImpostosRetidos);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snResumoFinanceiro_TotalAdministrativas));
  xn.text := MyFloatToStr(FTotalAdministrativas);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snResumoFinanceiro_TotalViagem));
  xn.text := MyFloatToStr(FTotalViagem);
  if TotalCustosViagem_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snResumoFinanceiro_TotalCustosViagem));
    xn.text := MyFloatToStr(FTotalCustosViagem);
  end;
  if ValorQuebraClausula_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snResumoFinanceiro_ValorQuebraClausula));
    xn.text := MyFloatToStr(FValorQuebraClausula);
  end;
  if ValorFreteTonelada_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snResumoFinanceiro_ValorFreteTonelada));
    xn.text := MyFloatToStr(FValorFreteTonelada);
  end;
  if ValorUnitarioCarga_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snResumoFinanceiro_ValorUnitarioCarga));
    xn.text := MyFloatToStr(FValorUnitarioCarga);
  end;
  if PesoCarga_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snResumoFinanceiro_PesoCarga));
    xn.text := MyFloatToStr(FPesoCarga);
  end;
  if PesoCargaEntregue_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snResumoFinanceiro_PesoCargaEntregue));
    xn.text := MyFloatToStr(FPesoCargaEntregue);
  end;
  if QuantidadeCarga_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snResumoFinanceiro_QuantidadeCarga));
    xn.text := IntToStr(FQuantidadeCarga);
  end;
  if QuantidadeCargaEntregue_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snResumoFinanceiro_QuantidadeCargaEntregue));
    xn.text := IntToStr(FQuantidadeCargaEntregue);
  end;
end; // procedure save

{ tDocumento }

class function tDocumento._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tDocumento.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tDocumento.Create(aRoot:tJanXMLNode2);
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
    if (sn = snDocumento_CodigoDocumento) then
      CodigoDocumento :=  xn.text // string
    else if (sn = snDocumento_NumeroDocumento) then
      NumeroDocumento :=  xn.text // string
    else if (sn = snDocumento_CodigoAuxiliar) then
      CodigoAuxiliar :=  xn.text // string
    else if (sn = snDocumento_DocumentoRequerido) then
      DocumentoRequerido :=  xn.text // string
    else if (sn = snDocumento_NaturezaCarga) then
      NaturezaCarga :=  xn.text // string
    else if (sn = snDocumento_ObservacaoDocumento) then
      ObservacaoDocumento :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tDocumento.Destroy;
begin
  inherited;
end; // destructor ...

procedure tDocumento.SetNumeroDocumento(value:string);
begin
  FNumeroDocumento := value;
  FNumeroDocumento_IsSet_ := true;
end;

procedure tDocumento.SetCodigoAuxiliar(value:string);
begin
  FCodigoAuxiliar := value;
  FCodigoAuxiliar_IsSet_ := true;
end;

procedure tDocumento.SetNaturezaCarga(value:string);
begin
  FNaturezaCarga := value;
  FNaturezaCarga_IsSet_ := true;
end;

procedure tDocumento.SetObservacaoDocumento(value:string);
begin
  FObservacaoDocumento := value;
  FObservacaoDocumento_IsSet_ := true;
end;

procedure tDocumento.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Documento')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDocumento_CodigoDocumento));
  xn.text := FCodigoDocumento;
  if NumeroDocumento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDocumento_NumeroDocumento));
    xn.text := FNumeroDocumento;
  end;
  if CodigoAuxiliar_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDocumento_CodigoAuxiliar));
    xn.text := FCodigoAuxiliar;
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDocumento_DocumentoRequerido));
  xn.text := FDocumentoRequerido;
  if NaturezaCarga_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDocumento_NaturezaCarga));
    xn.text := FNaturezaCarga;
  end;
  if ObservacaoDocumento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDocumento_ObservacaoDocumento));
    xn.text := FObservacaoDocumento;
  end;
end; // procedure save

{ tDocumentosViagem }

class function tDocumentosViagem._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tDocumentosViagem.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FDocumento := tManagedStringlist.Create;
end; // constructor ...

constructor tDocumentosViagem.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
//  i: integer;
  thisURI: string;
  aDocumento: tDocumento;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snDocumentosViagem_Documento)
      and ((thisURI='') or (tDocumento._nsURI_ = thisURI)) then
    begin
      aDocumento := tDocumento.Create(xn);
      FDocumento.AddObject('?', aDocumento);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tDocumentosViagem.Destroy;
begin
  FDocumento.Free;
  inherited;
end; // destructor ...

procedure tDocumentosViagem.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'DocumentosViagem')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "Documento" is tManagedStringlist
  if Assigned(FDocumento) then
    for i:=0 to FDocumento.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDocumentosViagem_Documento));
      tDocumento(FDocumento.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tImpostos }

class function tImpostos._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tImpostos.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tImpostos.Create(aRoot:tJanXMLNode2);
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
    if (sn = snImpostos_CodigoImposto) then
      CodigoImposto :=  xn.text // string
    else if (sn = snImpostos_BaseCalculoImposto) then
      BaseCalculoImposto := DefStrToFloat(xn.text, 0)
    else if (sn = snImpostos_PercentualImposto) then
      PercentualImposto := DefStrToFloat(xn.text, 0)
    else if (sn = snImpostos_ValorImposto) then
      ValorImposto := DefStrToFloat(xn.text, 0)
    else if (sn = snImpostos_RetencaoImposto) then
      RetencaoImposto := (xn.text = 'true')
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tImpostos.Destroy;
begin
  inherited;
end; // destructor ...

procedure tImpostos.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Impostos')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snImpostos_CodigoImposto));
  xn.text := FCodigoImposto;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snImpostos_BaseCalculoImposto));
  xn.text := MyFloatToStr(FBaseCalculoImposto);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snImpostos_PercentualImposto));
  xn.text := MyFloatToStr(FPercentualImposto);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snImpostos_ValorImposto));
  xn.text := MyFloatToStr(FValorImposto);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snImpostos_RetencaoImposto));
  xn.text := BoolToStr(FRetencaoImposto);
end; // procedure save

{ tImpostosViagem }

class function tImpostosViagem._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tImpostosViagem.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FImpostos := tManagedStringlist.Create;
end; // constructor ...

constructor tImpostosViagem.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
//  i: integer;
  thisURI: string;
  aImpostos: tImpostos;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snImpostosViagem_ValorTotalImpostos) then
      ValorTotalImpostos := StrToFloatDef( xn.text,0) // tValorType
    else if (sn = snImpostosViagem_Impostos)
      and ((thisURI='') or (tImpostos._nsURI_ = thisURI)) then
    begin
      aImpostos := tImpostos.Create(xn);
      FImpostos.AddObject('?', aImpostos);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tImpostosViagem.Destroy;
begin
  FImpostos.Free;
  inherited;
end; // destructor ...

procedure tImpostosViagem.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ImpostosViagem')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snImpostosViagem_ValorTotalImpostos));
  xn.text :=  uXMLTools.MyFloatToStr(FValorTotalImpostos);
  // element "Impostos" is tManagedStringlist
  if Assigned(FImpostos) then
    for i:=0 to FImpostos.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snImpostosViagem_Impostos));
      tImpostos(FImpostos.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tPedidoValePedagio }

class function tPedidoValePedagio._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tPedidoValePedagio.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tPedidoValePedagio.Create(aRoot:tJanXMLNode2);
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
    if (sn = snPedidoValePedagio_NumeroPedidoValePedagio) then
      NumeroPedidoValePedagio :=  xn.text // string
    else if (sn = snPedidoValePedagio_NumeroComprovante) then
      NumeroComprovante :=  xn.text // string
    else if (sn = snPedidoValePedagio_NumeroComprovanteFormatado) then
      NumeroComprovanteFormatado :=  xn.text // string
    else if (sn = snPedidoValePedagio_QuantidadeCupons) then
      QuantidadeCupons := StrToIntDef(xn.text, 0)
    else if (sn = snPedidoValePedagio_Senha) then
      Senha :=  xn.text // string
    else if (sn = snPedidoValePedagio_IDLocalImpressao) then
      IDLocalImpressao := StrToIntDef(xn.text, 0)
    else if (sn = snPedidoValePedagio_LocalImpressao) then
      LocalImpressao :=  xn.text // string
    else if (sn = snPedidoValePedagio_ModalidadeLocalImpressao) then
      ModalidadeLocalImpressao :=  xn.text // tModalidadeImpressaoType
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tPedidoValePedagio.Destroy;
begin
  inherited;
end; // destructor ...

procedure tPedidoValePedagio.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'PedidoValePedagio')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snPedidoValePedagio_NumeroPedidoValePedagio));
  xn.text := FNumeroPedidoValePedagio;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snPedidoValePedagio_NumeroComprovante));
  xn.text := FNumeroComprovante;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snPedidoValePedagio_NumeroComprovanteFormatado));
  xn.text := FNumeroComprovanteFormatado;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snPedidoValePedagio_QuantidadeCupons));
  xn.text := IntToStr(FQuantidadeCupons);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snPedidoValePedagio_Senha));
  xn.text := FSenha;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snPedidoValePedagio_IDLocalImpressao));
  xn.text := IntToStr(FIDLocalImpressao);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snPedidoValePedagio_LocalImpressao));
  xn.text := FLocalImpressao;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snPedidoValePedagio_ModalidadeLocalImpressao));
  xn.text := FModalidadeLocalImpressao;
end; // procedure save

{ tDadosBancarios }

class function tDadosBancarios._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tDadosBancarios.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tDadosBancarios.Create(aRoot:tJanXMLNode2);
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
    if (sn = snDadosBancarios_CodigoBanco) then
      CodigoBanco :=  xn.text // string
    else if (sn = snDadosBancarios_NumeroAgencia) then
      NumeroAgencia :=  xn.text // string
    else if (sn = snDadosBancarios_DvAgencia) then
      DvAgencia :=  xn.text // string
    else if (sn = snDadosBancarios_NumeroConta) then
      NumeroConta :=  xn.text // string
    else if (sn = snDadosBancarios_DVConta) then
      DVConta :=  xn.text // string
    else if (sn = snDadosBancarios_InformacoesPagamento) then
      InformacoesPagamento :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tDadosBancarios.Destroy;
begin
  inherited;
end; // destructor ...

procedure tDadosBancarios.SetDvAgencia(value:string);
begin
  FDvAgencia := value;
  FDvAgencia_IsSet_ := true;
end;

procedure tDadosBancarios.SetInformacoesPagamento(value:string);
begin
  FInformacoesPagamento := value;
  FInformacoesPagamento_IsSet_ := true;
end;

procedure tDadosBancarios.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'DadosBancarios')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosBancarios_CodigoBanco));
  xn.text := FCodigoBanco;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosBancarios_NumeroAgencia));
  xn.text := FNumeroAgencia;
  if DvAgencia_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosBancarios_DvAgencia));
    xn.text := FDvAgencia;
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosBancarios_NumeroConta));
  xn.text := FNumeroConta;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosBancarios_DVConta));
  xn.text := FDVConta;
  if InformacoesPagamento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosBancarios_InformacoesPagamento));
    xn.text := FInformacoesPagamento;
  end;
end; // procedure save

{ tClausulas }

class function tClausulas._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tClausulas.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tClausulas.Create(aRoot:tJanXMLNode2);
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
    if (sn = snClausulas_TipoViagem) then
      TipoViagem :=  xn.text // tTipoViagemType
    else if (sn = snClausulas_CodigoClausula) then
      CodigoClausula :=  xn.text // string
    else if (sn = snClausulas_DescricaoClausula) then
      DescricaoClausula :=  xn.text // string
    else if (sn = snClausulas_PossuiRegraCalculo) then
      PossuiRegraCalculo :=  xn.text // string
    else if (sn = snClausulas_CodigoRegraCalculo) then
      CodigoRegraCalculo :=  xn.text // string
    else if (sn = snClausulas_DescricaoRegraCalculo) then
      DescricaoRegraCalculo :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tClausulas.Destroy;
begin
  inherited;
end; // destructor ...

procedure tClausulas.SetCodigoRegraCalculo(value:string);
begin
  FCodigoRegraCalculo := value;
  FCodigoRegraCalculo_IsSet_ := true;
end;

procedure tClausulas.SetDescricaoRegraCalculo(value:string);
begin
  FDescricaoRegraCalculo := value;
  FDescricaoRegraCalculo_IsSet_ := true;
end;

procedure tClausulas.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Clausulas')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snClausulas_TipoViagem));
  xn.text := FTipoViagem;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snClausulas_CodigoClausula));
  xn.text := FCodigoClausula;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snClausulas_DescricaoClausula));
  xn.text := FDescricaoClausula;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snClausulas_PossuiRegraCalculo));
  xn.text := FPossuiRegraCalculo;
  if CodigoRegraCalculo_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snClausulas_CodigoRegraCalculo));
    xn.text := FCodigoRegraCalculo;
  end;
  if DescricaoRegraCalculo_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snClausulas_DescricaoRegraCalculo));
    xn.text := FDescricaoRegraCalculo;
  end;
end; // procedure save

{ tClausulasViagem }

class function tClausulasViagem._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tClausulasViagem.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tClausulasViagem.Create(aRoot:tJanXMLNode2);
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
    if (sn = snClausulasViagem_CodigoClausula) then
      CodigoClausula :=  xn.text // string
    else if (sn = snClausulasViagem_DescricaoClausula) then
      DescricaoClausula :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tClausulasViagem.Destroy;
begin
  inherited;
end; // destructor ...

procedure tClausulasViagem.SetDescricaoClausula(value:string);
begin
  FDescricaoClausula := value;
  FDescricaoClausula_IsSet_ := true;
end;

procedure tClausulasViagem.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ClausulasViagem')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snClausulasViagem_CodigoClausula));
  xn.text := FCodigoClausula;
  if DescricaoClausula_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snClausulasViagem_DescricaoClausula));
    xn.text := FDescricaoClausula;
  end;
end; // procedure save

{ tValoresViagem }

class function tValoresViagem._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tValoresViagem.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tValoresViagem.Create(aRoot:tJanXMLNode2);
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
    if (sn = snValoresViagem_ValorDespesas) then
      ValorDespesas :=  DefStrToFloat(xn.text,0) // tValorType
    else if (sn = snValoresViagem_ValorFrete) then
      ValorFrete :=  DefStrToFloat(xn.text,0) // tValorType
    else if (sn = snValoresViagem_ValorCombustivel) then
      ValorCombustivel :=  DefStrToFloat(xn.text,0) // tValorType
    else if (sn = snValoresViagem_PesoCarga) then
      PesoCarga := DefStrToFloat(xn.text, 0)
    else if (sn = snValoresViagem_PesoCargaEntregue) then
      PesoCargaEntregue := DefStrToFloat(xn.text, 0)
    else if (sn = snValoresViagem_UnidadeMedidaPeso) then
      UnidadeMedidaPeso :=  xn.text // string
    else if (sn = snValoresViagem_TipoPagamentoFrete) then
      TipoPagamentoFrete :=  xn.text // string
    else if (sn = snValoresViagem_ValorFreteTonelada) then
      ValorFreteTonelada := DefStrToFloat(xn.text, 0)
    else if (sn = snValoresViagem_ValorCarga) then
      ValorCarga := DefStrToFloat(xn.text, 0)
    else if (sn = snValoresViagem_QuantidadeCarga) then
      QuantidadeCarga := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tValoresViagem.Destroy;
begin
  inherited;
end; // destructor ...

procedure tValoresViagem.SetPesoCarga(value:extended);
begin
  FPesoCarga := value;
  FPesoCarga_IsSet_ := true;
end;

procedure tValoresViagem.SetPesoCargaEntregue(value:extended);
begin
  FPesoCargaEntregue := value;
  FPesoCargaEntregue_IsSet_ := true;
end;

procedure tValoresViagem.SetUnidadeMedidaPeso(value:string);
begin
  FUnidadeMedidaPeso := value;
  FUnidadeMedidaPeso_IsSet_ := true;
end;

procedure tValoresViagem.SetTipoPagamentoFrete(value:string);
begin
  FTipoPagamentoFrete := value;
  FTipoPagamentoFrete_IsSet_ := true;
end;

procedure tValoresViagem.SetValorFreteTonelada(value:extended);
begin
  FValorFreteTonelada := value;
  FValorFreteTonelada_IsSet_ := true;
end;

procedure tValoresViagem.SetValorCarga(value:extended);
begin
  FValorCarga := value;
  FValorCarga_IsSet_ := true;
end;

procedure tValoresViagem.SetQuantidadeCarga(value:integer);
begin
  FQuantidadeCarga := value;
  FQuantidadeCarga_IsSet_ := true;
end;

procedure tValoresViagem.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ValoresViagem')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValoresViagem_ValorDespesas));
  xn.text := MyFloatToStr( FValorDespesas );
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValoresViagem_ValorFrete));
  xn.text := MyFloatToStr( FValorFrete );
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValoresViagem_ValorCombustivel));
  xn.text := MyFloatToStr( FValorCombustivel );
  if PesoCarga_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValoresViagem_PesoCarga));
    xn.text := MyFloatToStr(FPesoCarga);
  end;
  if PesoCargaEntregue_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValoresViagem_PesoCargaEntregue));
    xn.text := MyFloatToStr(FPesoCargaEntregue);
  end;
  if UnidadeMedidaPeso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValoresViagem_UnidadeMedidaPeso));
    xn.text := FUnidadeMedidaPeso;
  end;
  if TipoPagamentoFrete_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValoresViagem_TipoPagamentoFrete));
    xn.text := FTipoPagamentoFrete;
  end;
  if ValorFreteTonelada_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValoresViagem_ValorFreteTonelada));
    xn.text := MyFloatToStr(FValorFreteTonelada);
  end;
  if ValorCarga_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValoresViagem_ValorCarga));
    xn.text := MyFloatToStr(FValorCarga);
  end;
  if QuantidadeCarga_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValoresViagem_QuantidadeCarga));
    xn.text := IntToStr(FQuantidadeCarga);
  end;
end; // procedure save

{ tVeiculosViagem }

class function tVeiculosViagem._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tVeiculosViagem.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tVeiculosViagem.Create(aRoot:tJanXMLNode2);
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
    if (sn = snVeiculosViagem_PlacaVeiculo) then
      PlacaVeiculo :=  xn.text // tPlacaVeiculoType
    else if (sn = snVeiculosViagem_TipoVeiculo) then
      TipoVeiculo := StrToIntDef(xn.text, 0)
    else if (sn = snVeiculosViagem_QtdeEixos) then
      QtdeEixos :=  xn.text // tEixoType
    else if (sn = snVeiculosViagem_TipoRodagem) then
      TipoRodagem :=  xn.text // tTipoRodagemType
    else if (sn = snVeiculosViagem_RNTRC) then
      RNTRC :=  xn.text // tRNTRCType
    else if (sn = snVeiculosViagem_CNPJCPF) then
      CNPJCPF :=  xn.text // tCNPJCPFType
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tVeiculosViagem.Destroy;
begin
  inherited;
end; // destructor ...

procedure tVeiculosViagem.SetRNTRC(value:tRNTRCType);
begin
  FRNTRC := value;
  FRNTRC_IsSet_ := true;
end;

procedure tVeiculosViagem.SetCNPJCPF(value:tCNPJCPFType);
begin
  FCNPJCPF := value;
  FCNPJCPF_IsSet_ := true;
end;

procedure tVeiculosViagem.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'VeiculosViagem')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snVeiculosViagem_PlacaVeiculo));
  xn.text := FPlacaVeiculo;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snVeiculosViagem_TipoVeiculo));
  xn.text := IntToStr(FTipoVeiculo);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snVeiculosViagem_QtdeEixos));
  xn.text := FQtdeEixos;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snVeiculosViagem_TipoRodagem));
  xn.text := FTipoRodagem;
  if RNTRC_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snVeiculosViagem_RNTRC));
    xn.text := FRNTRC;
  end;
  if CNPJCPF_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snVeiculosViagem_CNPJCPF));
    xn.text := FCNPJCPF;
  end;
end; // procedure save

{ tOrigemDestinoRota }

class function tOrigemDestinoRota._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tOrigemDestinoRota.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tOrigemDestinoRota.Create(aRoot:tJanXMLNode2);
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
    if (sn = snOrigemDestinoRota_CodigoIBGEOrigem) then
      CodigoIBGEOrigem :=  xn.text // tCodigoIBGEType
    else if (sn = snOrigemDestinoRota_CodigoIBGEDestino) then
      CodigoIBGEDestino :=  xn.text // tCodigoIBGEType
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tOrigemDestinoRota.Destroy;
begin
  inherited;
end; // destructor ...

procedure tOrigemDestinoRota.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'OrigemDestinoRota')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOrigemDestinoRota_CodigoIBGEOrigem));
  xn.text := FCodigoIBGEOrigem;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOrigemDestinoRota_CodigoIBGEDestino));
  xn.text := FCodigoIBGEDestino;
end; // procedure save

{ tRotaViagem }

class function tRotaViagem._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tRotaViagem.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FCodigoRota := 0;
  FOrigemDestinoRota := tManagedStringlist.Create;
end; // constructor ...

constructor tRotaViagem.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
//  i: integer;
  thisURI: string;
  aOrigemDestinoRota: tOrigemDestinoRota;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snRotaViagem_CodigoRota) then
    begin
      FCodigoRota := StrToIntDef( xn.text, 0);
    end
    else if (sn = snRotaViagem_OrigemDestinoRota)
      and ((thisURI='') or (tOrigemDestinoRota._nsURI_ = thisURI)) then
    begin
      aOrigemDestinoRota := tOrigemDestinoRota.Create(xn);
      FOrigemDestinoRota.AddObject('?', aOrigemDestinoRota);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tRotaViagem.Destroy;
begin
  FOrigemDestinoRota.Free;
  inherited;
end; // destructor ...

procedure tRotaViagem.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'RotaViagem')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "CodigoRota" is tManagedStringlist
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRotaViagem_CodigoRota));
  xn.text := intToStr( CodigoRota );
  // element "OrigemDestinoRota" is tManagedStringlist
  if Assigned(FOrigemDestinoRota) then
    for i:=0 to FOrigemDestinoRota.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRotaViagem_OrigemDestinoRota));
      tOrigemDestinoRota(FOrigemDestinoRota.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tForo }

class function tForo._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tForo.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tForo.Create(aRoot:tJanXMLNode2);
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
    if (sn = snForo_Estado) then
      Estado :=  xn.text // tSiglaUFType
    else if (sn = snForo_Cidade) then
      Cidade :=  xn.text // tLocalidadeType
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tForo.Destroy;
begin
  inherited;
end; // destructor ...

procedure tForo.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Foro')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snForo_Estado));
  xn.text := FEstado;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snForo_Cidade));
  xn.text := FCidade;
end; // procedure save

{ tDadosViagem }

class function tDadosViagem._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tDadosViagem.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tDadosViagem.Create(aRoot:tJanXMLNode2);
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
    if (sn = snDadosViagem_NumeroViagem) then
      NumeroViagem :=  xn.text // string
    else if (sn = snDadosViagem_Embarque) then
      Embarque := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snDadosViagem_PrevisaoEntrega) then
      PrevisaoEntrega := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snDadosViagem_Foro)
      and ((thisURI='') or (tForo._nsURI_ = thisURI)) then
      FForo := tForo.Create(xn)
    else if (sn = snDadosViagem_DocumentoRef) then
      DocumentoRef :=  xn.text // string
    else if (sn = snDadosViagem_DataVigencia) then
      DataVigencia := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snDadosViagem_NumeroViagemContratacao) then
      NumeroViagemContratacao :=  xn.text // string
    else if (sn = snDadosViagem_CentrodeCusto) then
      CentrodeCusto :=  xn.text // string
    else if (sn = snDadosViagem_Observacao) then
      Observacao :=  xn.text // string
    else if (sn = snDadosViagem_GerarCIOT) then
      GerarCIOT := (xn.text = 'true')
    else if (sn = snDadosViagem_SemTransporteCarga) then
      SemTransporteCarga := (xn.text = 'true')
    else if (sn = snDadosViagem_QtdeViagens) then
      QtdeViagens := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tDadosViagem.Destroy;
begin
  FForo.Free;
  inherited;
end; // destructor ...

procedure tDadosViagem.SetNumeroViagem(value:string);
begin
  FNumeroViagem := value;
  FNumeroViagem_IsSet_ := true;
end;

procedure tDadosViagem.SetEmbarque(value:tDateTime);
begin
  FEmbarque := value;
  FEmbarque_IsSet_ := true;
end;

procedure tDadosViagem.SetPrevisaoEntrega(value:tDateTime);
begin
  FPrevisaoEntrega := value;
  FPrevisaoEntrega_IsSet_ := true;
end;

procedure tDadosViagem.SetForo(value:tForo);
begin
  FForo := value;
  FForo_IsSet_ := true;
end;

procedure tDadosViagem.SetDocumentoRef(value:string);
begin
  FDocumentoRef := value;
  FDocumentoRef_IsSet_ := true;
end;

procedure tDadosViagem.SetDataVigencia(value:tDateTime);
begin
  FDataVigencia := value;
  FDataVigencia_IsSet_ := true;
end;

procedure tDadosViagem.SetNumeroViagemContratacao(value:string);
begin
  FNumeroViagemContratacao := value;
  FNumeroViagemContratacao_IsSet_ := true;
end;

procedure tDadosViagem.SetCentrodeCusto(value:string);
begin
  FCentrodeCusto := value;
  FCentrodeCusto_IsSet_ := true;
end;

procedure tDadosViagem.SetObservacao(value:string);
begin
  FObservacao := value;
  FObservacao_IsSet_ := true;
end;

procedure tDadosViagem.SetGerarCIOT(value:boolean);
begin
  FGerarCIOT := value;
  FGerarCIOT_IsSet_ := true;
end;

procedure tDadosViagem.SetSemTransporteCarga(value:boolean);
begin
  FSemTransporteCarga := value;
  FSemTransporteCarga_IsSet_ := true;
end;

procedure tDadosViagem.SetQtdeViagens(value:integer);
begin
  FQtdeViagens := value;
  FQtdeViagens_IsSet_ := true;
end;

procedure tDadosViagem.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'DadosViagem')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if NumeroViagem_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosViagem_NumeroViagem));
    xn.text := FNumeroViagem;
  end;
  if Embarque_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosViagem_Embarque));
    xn.text := DateTimeToXMLDateTime(FEmbarque);
  end;
  if PrevisaoEntrega_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosViagem_PrevisaoEntrega));
    xn.text := DateTimeToXMLDateTime(FPrevisaoEntrega);
  end;
  if Assigned(FForo) then
  begin
    xn := aNode.addChildByName(snDadosViagem_Foro);
    FForo.Save(xn);
  end;
  if DocumentoRef_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosViagem_DocumentoRef));
    xn.text := FDocumentoRef;
  end;
  if DataVigencia_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosViagem_DataVigencia));
    xn.text := DateTimeToXMLDateTime(FDataVigencia);
  end;
  if NumeroViagemContratacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosViagem_NumeroViagemContratacao));
    xn.text := FNumeroViagemContratacao;
  end;
  if CentrodeCusto_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosViagem_CentrodeCusto));
    xn.text := FCentrodeCusto;
  end;
  if Observacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosViagem_Observacao));
    xn.text := FObservacao;
  end;
  if GerarCIOT_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosViagem_GerarCIOT));
    xn.text := BoolToStr(FGerarCIOT);
  end;
  if SemTransporteCarga_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosViagem_SemTransporteCarga));
    xn.text := BoolToStr(FSemTransporteCarga);
  end;
  if QtdeViagens_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosViagem_QtdeViagens));
    xn.text := IntToStr(FQtdeViagens);
  end;
end; // procedure save

{ tCIOT }

class function tCIOT._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCIOT.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tCIOT.Create(aRoot:tJanXMLNode2);
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
    if (sn = snCIOT_CodigoOperacaoTransporte) then
      CodigoOperacaoTransporte :=  xn.text // string
    else if (sn = snCIOT_CodigoOperacaoTransporteDV) then
      CodigoOperacaoTransporteDV :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tCIOT.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCIOT.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CIOT')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCIOT_CodigoOperacaoTransporte));
  xn.text := FCodigoOperacaoTransporte;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCIOT_CodigoOperacaoTransporteDV));
  xn.text := FCodigoOperacaoTransporteDV;
end; // procedure save

{ tResumoViagem }

class function tResumoViagem._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tResumoViagem.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tResumoViagem.Create(aRoot:tJanXMLNode2);
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
    if (sn = snResumoViagem_NumeroViagem) then
      NumeroViagem :=  xn.text // string
    else if (sn = snResumoViagem_CIOT)
      and ((thisURI='') or (tCIOT._nsURI_ = thisURI)) then
      FCIOT := tCIOT.Create(xn)
    else if (sn = snResumoViagem_PedidoValePedagio)
      and ((thisURI='') or (tPedidoValePedagio._nsURI_ = thisURI)) then
      FPedidoValePedagio := tPedidoValePedagio.Create(xn)
    else if (sn = snResumoViagem_ResumoFinanceiro)
      and ((thisURI='') or (tResumoFinanceiro._nsURI_ = thisURI)) then
      FResumoFinanceiro := tResumoFinanceiro.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tResumoViagem.Destroy;
begin
  FCIOT.Free;
  FPedidoValePedagio.Free;
  FResumoFinanceiro.Free;
  inherited;
end; // destructor ...

procedure tResumoViagem.SetPedidoValePedagio(value:tPedidoValePedagio);
begin
  FPedidoValePedagio := value;
  FPedidoValePedagio_IsSet_ := true;
end;

procedure tResumoViagem.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ResumoViagem')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snResumoViagem_NumeroViagem));
  xn.text := FNumeroViagem;
  if Assigned(FCIOT) then
  begin
    xn := aNode.addChildByName(snResumoViagem_CIOT);
    FCIOT.Save(xn);
  end;
  if Assigned(FPedidoValePedagio) then
  begin
    xn := aNode.addChildByName(snResumoViagem_PedidoValePedagio);
    FPedidoValePedagio.Save(xn);
  end;
  if Assigned(FResumoFinanceiro) then
  begin
    xn := aNode.addChildByName(snResumoViagem_ResumoFinanceiro);
    FResumoFinanceiro.Save(xn);
  end;
end; // procedure save

{ tRetornoMensagem }

class function tRetornoMensagem._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tRetornoMensagem.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tRetornoMensagem.Create(aRoot:tJanXMLNode2);
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
    if (sn = snRetornoMensagem_IdentificacaoIntegracao) then
      FIdentificacaoIntegracao := tIdentificacaoIntegracaoType.Create(xn)
    else if (sn = snRetornoMensagem_StatusRetorno) then
      StatusRetorno :=  xn.text // string
    else if (sn = snRetornoMensagem_Excecao) then
      FExcecao := tExcecaoType.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tRetornoMensagem.Destroy;
begin
  inherited;
end; // destructor ...

procedure tRetornoMensagem.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'RetornoMensagem')
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
    xn := aNode.addChildByName(snRetornoMensagem_IdentificacaoIntegracao);
    FIdentificacaoIntegracao.Save(xn);
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetornoMensagem_StatusRetorno));
  xn.text := FStatusRetorno;
  if Assigned(FExcecao) then
  begin
    xn := aNode.addChildByName(snRetornoMensagem_Excecao);
    FExcecao.Save(xn);
  end;
end; // procedure save

{ tEventoOperacao }

class function tEventoOperacao._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tEventoOperacao.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tEventoOperacao.Create(aRoot:tJanXMLNode2);
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
    if (sn = snEventoOperacao_CodigoEventoOperacao) then
      CodigoEventoOperacao :=  xn.text // string
    else if (sn = snEventoOperacao_ValorEvento) then
      ValorEvento := DefStrToFloat(xn.text, 0)
    else if (sn = snEventoOperacao_QuantidadeEvento) then
      QuantidadeEvento := DefStrToFloat(xn.text, 0)
    else if (sn = snEventoOperacao_Combustivel) then
      Combustivel :=  xn.text // string
    else if (sn = snEventoOperacao_DataEvento) then
      DataEvento := DateFromXMLDateTime(xn.text) // tDate
    else if (sn = snEventoOperacao_ObservacaoEvento) then
      ObservacaoEvento :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tEventoOperacao.Destroy;
begin
  inherited;
end; // destructor ...

procedure tEventoOperacao.SetValorEvento(value:extended);
begin
  FValorEvento := value;
  FValorEvento_IsSet_ := true;
end;

procedure tEventoOperacao.SetQuantidadeEvento(value:extended);
begin
  FQuantidadeEvento := value;
  FQuantidadeEvento_IsSet_ := true;
end;

procedure tEventoOperacao.SetCombustivel(value:string);
begin
  FCombustivel := value;
  FCombustivel_IsSet_ := true;
end;

procedure tEventoOperacao.SetDataEvento(value:tDate);
begin
  FDataEvento := value;
  FDataEvento_IsSet_ := true;
end;

procedure tEventoOperacao.SetObservacaoEvento(value:string);
begin
  FObservacaoEvento := value;
  FObservacaoEvento_IsSet_ := true;
end;

procedure tEventoOperacao.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'EventoOperacao')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEventoOperacao_CodigoEventoOperacao));
  xn.text := FCodigoEventoOperacao;
  if ValorEvento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEventoOperacao_ValorEvento));
    xn.text := MyFloatToStr(FValorEvento);
  end;
  if QuantidadeEvento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEventoOperacao_QuantidadeEvento));
    xn.text := MyFloatToStr(FQuantidadeEvento);
  end;
  if Combustivel_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEventoOperacao_Combustivel));
    xn.text := FCombustivel;
  end;
  if DataEvento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEventoOperacao_DataEvento));
    xn.text := DateToXMLDateTime(FDataEvento);
  end;
  if ObservacaoEvento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEventoOperacao_ObservacaoEvento));
    xn.text := FObservacaoEvento;
  end;
end; // procedure save

{ tFilialEmpresa }

class function tFilialEmpresa._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tFilialEmpresa.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tFilialEmpresa.Create(aRoot:tJanXMLNode2);
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
    if (sn = snFilialEmpresa_IDFilial) then
      IDFilial := StrToIntDef(xn.text, 0)
    else if (sn = snFilialEmpresa_CNPJFilial) then
      CNPJFilial :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tFilialEmpresa.Destroy;
begin
  inherited;
end; // destructor ...

procedure tFilialEmpresa.SetIDFilial(value:integer);
begin
  FIDFilial := value;
  FIDFilial_IsSet_ := true;
end;

procedure tFilialEmpresa.SetCNPJFilial(value:string);
begin
  FCNPJFilial := value;
  FCNPJFilial_IsSet_ := true;
end;

procedure tFilialEmpresa.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'FilialEmpresa')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if IDFilial_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snFilialEmpresa_IDFilial));
    xn.text := IntToStr(FIDFilial);
  end;
  if CNPJFilial_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snFilialEmpresa_CNPJFilial));
    xn.text := FCNPJFilial;
  end;
end; // procedure save

{ tEstabelecimentos }

class function tEstabelecimentos._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tEstabelecimentos.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tEstabelecimentos.Create(aRoot:tJanXMLNode2);
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
    if (sn = snEstabelecimentos_IDEstabelecimento) then
      IDEstabelecimento := StrToIntDef(xn.text, 0)
    else if (sn = snEstabelecimentos_CNPJEstabelecimento) then
      CNPJEstabelecimento :=  xn.text // string
    else if (sn = snEstabelecimentos_NomeEstabelecimento) then
      NomeEstabelecimento :=  xn.text // string
    else if (sn = snEstabelecimentos_Cidade) then
      Cidade :=  xn.text // tLocalidadeType
    else if (sn = snEstabelecimentos_UF) then
      UF :=  xn.text // tSiglaUFType
    else if (sn = snEstabelecimentos_Bandeira) then
      Bandeira :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tEstabelecimentos.Destroy;
begin
  inherited;
end; // destructor ...

procedure tEstabelecimentos.SetBandeira(value:string);
begin
  FBandeira := value;
  FBandeira_IsSet_ := true;
end;

procedure tEstabelecimentos.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Estabelecimentos')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEstabelecimentos_IDEstabelecimento));
  xn.text := IntToStr(FIDEstabelecimento);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEstabelecimentos_CNPJEstabelecimento));
  xn.text := FCNPJEstabelecimento;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEstabelecimentos_NomeEstabelecimento));
  xn.text := FNomeEstabelecimento;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEstabelecimentos_Cidade));
  xn.text := FCidade;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEstabelecimentos_UF));
  xn.text := FUF;
  if Bandeira_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEstabelecimentos_Bandeira));
    xn.text := FBandeira;
  end;
end; // procedure save

{ tEstabelecimento }

class function tEstabelecimento._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tEstabelecimento.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tEstabelecimento.Create(aRoot:tJanXMLNode2);
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
    if (sn = snEstabelecimento_IDEstabelecimento) then
      IDEstabelecimento := StrToIntDef(xn.text, 0)
    else if (sn = snEstabelecimento_CNPJEstabelecimento) then
      CNPJEstabelecimento :=  xn.text // string
    else if (sn = snEstabelecimento_NomeEstabelecimento) then
      NomeEstabelecimento :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tEstabelecimento.Destroy;
begin
  inherited;
end; // destructor ...

procedure tEstabelecimento.SetNomeEstabelecimento(value:string);
begin
  FNomeEstabelecimento := value;
  FNomeEstabelecimento_IsSet_ := true;
end;

procedure tEstabelecimento.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Estabelecimento')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEstabelecimento_IDEstabelecimento));
  xn.text := IntToStr(FIDEstabelecimento);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEstabelecimento_CNPJEstabelecimento));
  xn.text := FCNPJEstabelecimento;
  if NomeEstabelecimento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEstabelecimento_NomeEstabelecimento));
    xn.text := FNomeEstabelecimento;
  end;
end; // procedure save

{ tOperacaoViagem }

class function tOperacaoViagem._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tOperacaoViagem.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FEventoOperacao := tManagedStringlist.Create;
end; // constructor ...

constructor tOperacaoViagem.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
//  i: integer;
  thisURI: string;
  aEventoOperacao: tEventoOperacao;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snOperacaoViagem_IDOperacaoViagem) then
      IDOperacaoViagem := StrToIntDef(xn.text, 0)
    else if (sn = snOperacaoViagem_CodigoOperacao) then
      CodigoOperacao :=  xn.text // string
    else if (sn = snOperacaoViagem_CondicaoLiberacaoOperacao) then
      CondicaoLiberacaoOperacao :=  xn.text // string
    else if (sn = snOperacaoViagem_DataOperacao) then
      DataOperacao := DateFromXMLDateTime(xn.text) // tDate
    else if (sn = snOperacaoViagem_LocalRealizacao) then
      LocalRealizacao :=  xn.text // string
    else if (sn = snOperacaoViagem_Estabelecimento)
      and ((thisURI='') or (tEstabelecimento._nsURI_ = thisURI)) then
      FEstabelecimento := tEstabelecimento.Create(xn)
    else if (sn = snOperacaoViagem_FilialEmpresa)
      and ((thisURI='') or (tFilialEmpresa._nsURI_ = thisURI)) then
      FFilialEmpresa := tFilialEmpresa.Create(xn)
    else if (sn = snOperacaoViagem_Cidade) then
      Cidade :=  xn.text // tLocalidadeType
    else if (sn = snOperacaoViagem_Estado) then
      Estado :=  xn.text // tSiglaUFType
    else if (sn = snOperacaoViagem_SituacaoOperacao) then
      SituacaoOperacao :=  xn.text // string
    else if (sn = snOperacaoViagem_EventoOperacao)
      and ((thisURI='') or (tEventoOperacao._nsURI_ = thisURI)) then
    begin
      aEventoOperacao := tEventoOperacao.Create(xn);
      FEventoOperacao.AddObject('?', aEventoOperacao);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tOperacaoViagem.Destroy;
begin
  FEstabelecimento.Free;
  FFilialEmpresa.Free;
  FEventoOperacao.Free;
  inherited;
end; // destructor ...

procedure tOperacaoViagem.SetIDOperacaoViagem(value:integer);
begin
  FIDOperacaoViagem := value;
  FIDOperacaoViagem_IsSet_ := true;
end;

procedure tOperacaoViagem.SetDataOperacao(value:tDate);
begin
  FDataOperacao := value;
  FDataOperacao_IsSet_ := true;
end;

procedure tOperacaoViagem.SetLocalRealizacao(value:string);
begin
  FLocalRealizacao := value;
  FLocalRealizacao_IsSet_ := true;
end;

procedure tOperacaoViagem.SetEstabelecimento(value:tEstabelecimento);
begin
  FEstabelecimento := value;
  FEstabelecimento_IsSet_ := true;
end;

procedure tOperacaoViagem.SetFilialEmpresa(value:tFilialEmpresa);
begin
  FFilialEmpresa := value;
  FFilialEmpresa_IsSet_ := true;
end;

procedure tOperacaoViagem.SetCidade(value:tLocalidadeType);
begin
  FCidade := value;
  FCidade_IsSet_ := true;
end;

procedure tOperacaoViagem.SetEstado(value:tSiglaUFType);
begin
  FEstado := value;
  FEstado_IsSet_ := true;
end;

procedure tOperacaoViagem.SetSituacaoOperacao(value:string);
begin
  FSituacaoOperacao := value;
  FSituacaoOperacao_IsSet_ := true;
end;

procedure tOperacaoViagem.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'OperacaoViagem')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if IDOperacaoViagem_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoViagem_IDOperacaoViagem));
    xn.text := IntToStr(FIDOperacaoViagem);
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoViagem_CodigoOperacao));
  xn.text := FCodigoOperacao;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoViagem_CondicaoLiberacaoOperacao));
  xn.text := FCondicaoLiberacaoOperacao;
  if DataOperacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoViagem_DataOperacao));
    xn.text := DateToXMLDateTime(FDataOperacao);
  end;
  if LocalRealizacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoViagem_LocalRealizacao));
    xn.text := FLocalRealizacao;
  end;
  if Assigned(FEstabelecimento) then
  begin
    xn := aNode.addChildByName(snOperacaoViagem_Estabelecimento);
    FEstabelecimento.Save(xn);
  end;
  if Assigned(FFilialEmpresa) then
  begin
    xn := aNode.addChildByName(snOperacaoViagem_FilialEmpresa);
    FFilialEmpresa.Save(xn);
  end;
  if Cidade_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoViagem_Cidade));
    xn.text := FCidade;
  end;
  if Estado_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoViagem_Estado));
    xn.text := FEstado;
  end;
  if SituacaoOperacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoViagem_SituacaoOperacao));
    xn.text := FSituacaoOperacao;
  end;
  // element "EventoOperacao" is tManagedStringlist
  if Assigned(FEventoOperacao) then
    for i:=0 to FEventoOperacao.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoViagem_EventoOperacao));
      tEventoOperacao(FEventoOperacao.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tDetalheProgramacaoViagem }

class function tDetalheProgramacaoViagem._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tDetalheProgramacaoViagem.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FOperacaoViagem := tManagedStringlist.Create;
end; // constructor ...

constructor tDetalheProgramacaoViagem.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
//  i: integer;
  thisURI: string;
  aOperacaoViagem: tOperacaoViagem;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snDetalheProgramacaoViagem_OperacaoViagem)
      and ((thisURI='') or (tOperacaoViagem._nsURI_ = thisURI)) then
    begin
      aOperacaoViagem := tOperacaoViagem.Create(xn);
      FOperacaoViagem.AddObject('?', aOperacaoViagem);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tDetalheProgramacaoViagem.Destroy;
begin
  FOperacaoViagem.Free;
  inherited;
end; // destructor ...

procedure tDetalheProgramacaoViagem.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'DetalheProgramacaoViagem')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "OperacaoViagem" is tManagedStringlist
  if Assigned(FOperacaoViagem) then
    for i:=0 to FOperacaoViagem.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDetalheProgramacaoViagem_OperacaoViagem));
      tOperacaoViagem(FOperacaoViagem.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tProgramacaoViagem }

class function tProgramacaoViagem._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tProgramacaoViagem.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FOperacaoViagem := tManagedStringlist.Create;
end; // constructor ...

constructor tProgramacaoViagem.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
//  i: integer;
  thisURI: string;
  aOperacaoViagem: tOperacaoViagem;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snProgramacaoViagem_OperacaoViagem)
      and ((thisURI='') or (tOperacaoViagem._nsURI_ = thisURI)) then
    begin
      aOperacaoViagem := tOperacaoViagem.Create(xn);
      FOperacaoViagem.AddObject('?', aOperacaoViagem);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tProgramacaoViagem.Destroy;
begin
  FOperacaoViagem.Free;
  inherited;
end; // destructor ...

procedure tProgramacaoViagem.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ProgramacaoViagem')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "OperacaoViagem" is tManagedStringlist
  if Assigned(FOperacaoViagem) then
    for i:=0 to FOperacaoViagem.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snProgramacaoViagem_OperacaoViagem));
      tOperacaoViagem(FOperacaoViagem.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tTransportador }

class function tTransportador._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tTransportador.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tTransportador.Create(aRoot:tJanXMLNode2);
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
    if (sn = snTransportador_CNPJCPFTransportador) then
      CNPJCPFTransportador :=  xn.text // string
    else if (sn = snTransportador_RNTRC) then
      RNTRC :=  xn.text // string
    else if (sn = snTransportador_NomeTransportador) then
      NomeTransportador :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tTransportador.Destroy;
begin
  inherited;
end; // destructor ...

procedure tTransportador.SetNomeTransportador(value:string);
begin
  FNomeTransportador := value;
  FNomeTransportador_IsSet_ := true;
end;

procedure tTransportador.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Transportador')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snTransportador_CNPJCPFTransportador));
  xn.text := FCNPJCPFTransportador;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snTransportador_RNTRC));
  xn.text := FRNTRC;
  if NomeTransportador_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snTransportador_NomeTransportador));
    xn.text := FNomeTransportador;
  end;
end; // procedure save

{ tPracaType }

class function tPracaType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tPracaType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tPracaType.Create(aRoot:tJanXMLNode2);
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
    if (sn = snPracaType_IdPraca) then
      IdPraca := StrToIntDef(xn.text, 0)
    else if (sn = snPracaType_NomePraca) then
      NomePraca :=  xn.text // string
    else if (sn = snPracaType_LocalPraca) then
      LocalPraca :=  xn.text // string
    else if (sn = snPracaType_Concessionaria) then
      Concessionaria :=  xn.text // string
    else if (sn = snPracaType_Informativo) then
      Informativo :=  xn.text // string
    else if (sn = snPracaType_PossuiTarifaEspecial) then
      PossuiTarifaEspecial := (xn.text = 'true')
    else if (sn = snPracaType_LocalidadeOrigem) then
      LocalidadeOrigem :=  xn.text // tLocalidadeType
    else if (sn = snPracaType_LocalidadeDestino) then
      LocalidadeDestino :=  xn.text // tLocalidadeType
    else if (sn = snPracaType_SentidoCobranca) then
      SentidoCobranca :=  xn.text // tSentidoCobrancaType
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tPracaType.Destroy;
begin
  inherited;
end; // destructor ...

procedure tPracaType.SetLocalPraca(value:string);
begin
  FLocalPraca := value;
  FLocalPraca_IsSet_ := true;
end;

procedure tPracaType.SetConcessionaria(value:string);
begin
  FConcessionaria := value;
  FConcessionaria_IsSet_ := true;
end;

procedure tPracaType.SetInformativo(value:string);
begin
  FInformativo := value;
  FInformativo_IsSet_ := true;
end;

procedure tPracaType.SetPossuiTarifaEspecial(value:boolean);
begin
  FPossuiTarifaEspecial := value;
  FPossuiTarifaEspecial_IsSet_ := true;
end;

procedure tPracaType.SetLocalidadeOrigem(value:tLocalidadeType);
begin
  FLocalidadeOrigem := value;
  FLocalidadeOrigem_IsSet_ := true;
end;

procedure tPracaType.SetLocalidadeDestino(value:tLocalidadeType);
begin
  FLocalidadeDestino := value;
  FLocalidadeDestino_IsSet_ := true;
end;

procedure tPracaType.SetSentidoCobranca(value:tSentidoCobrancaType);
begin
  FSentidoCobranca := value;
  FSentidoCobranca_IsSet_ := true;
end;

procedure tPracaType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'PracaType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snPracaType_IdPraca));
  xn.text := IntToStr(FIdPraca);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snPracaType_NomePraca));
  xn.text := FNomePraca;
  if LocalPraca_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snPracaType_LocalPraca));
    xn.text := FLocalPraca;
  end;
  if Concessionaria_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snPracaType_Concessionaria));
    xn.text := FConcessionaria;
  end;
  if Informativo_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snPracaType_Informativo));
    xn.text := FInformativo;
  end;
  if PossuiTarifaEspecial_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snPracaType_PossuiTarifaEspecial));
    xn.text := BoolToStr(FPossuiTarifaEspecial);
  end;
  if LocalidadeOrigem_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snPracaType_LocalidadeOrigem));
    xn.text := FLocalidadeOrigem;
  end;
  if LocalidadeDestino_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snPracaType_LocalidadeDestino));
    xn.text := FLocalidadeDestino;
  end;
  if SentidoCobranca_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snPracaType_SentidoCobranca));
    xn.text := FSentidoCobranca;
  end;
end; // procedure save

{ tTransportadorViagemType }

class function tTransportadorViagemType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tTransportadorViagemType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tTransportadorViagemType.Create(aRoot:tJanXMLNode2);
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
    if (sn = snTransportadorViagemType_CNPJCPFTrasportador) then
      CNPJCPFTrasportador :=  xn.text // string
    else if (sn = snTransportadorViagemType_NomeTransportador) then
      NomeTransportador :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tTransportadorViagemType.Destroy;
begin
  inherited;
end; // destructor ...

procedure tTransportadorViagemType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'TransportadorViagemType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snTransportadorViagemType_CNPJCPFTrasportador));
  xn.text := FCNPJCPFTrasportador;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snTransportadorViagemType_NomeTransportador));
  xn.text := FNomeTransportador;
end; // procedure save

{ tCNHType }

class function tCNHType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCNHType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tCNHType.Create(aRoot:tJanXMLNode2);
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
    if (sn = snCNHType_NumeroCNH) then
      NumeroCNH :=  xn.text // string
    else if (sn = snCNHType_CNHCategoria) then
      CNHCategoria :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tCNHType.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCNHType.SetNumeroCNH(value:string);
begin
  FNumeroCNH := value;
  FNumeroCNH_IsSet_ := true;
end;

procedure tCNHType.SetCNHCategoria(value:string);
begin
  FCNHCategoria := value;
  FCNHCategoria_IsSet_ := true;
end;

procedure tCNHType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CNHType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if NumeroCNH_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCNHType_NumeroCNH));
    xn.text := FNumeroCNH;
  end;
  if CNHCategoria_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCNHType_CNHCategoria));
    xn.text := FCNHCategoria;
  end;
end; // procedure save

{ tMotoristaViagemType }

class function tMotoristaViagemType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tMotoristaViagemType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tMotoristaViagemType.Create(aRoot:tJanXMLNode2);
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
    if (sn = snMotoristaViagemType_CPFMotorista) then
      CPFMotorista :=  xn.text // string
    else if (sn = snMotoristaViagemType_NomeMotorista) then
      NomeMotorista :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tMotoristaViagemType.Destroy;
begin
  inherited;
end; // destructor ...

procedure tMotoristaViagemType.SetNomeMotorista(value:string);
begin
  FNomeMotorista := value;
  FNomeMotorista_IsSet_ := true;
end;

procedure tMotoristaViagemType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'MotoristaViagemType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snMotoristaViagemType_CPFMotorista));
  xn.text := FCPFMotorista;
  if NomeMotorista_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snMotoristaViagemType_NomeMotorista));
    xn.text := FNomeMotorista;
  end;
end; // procedure save

{ tListaPontoPassagem }

class function tListaPontoPassagem._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tListaPontoPassagem.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FPontoPassagem := tManagedStringlist.Create;
end; // constructor ...

constructor tListaPontoPassagem.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
//  i: integer;
  thisURI: string;
  aPontoPassagem: tPontoPassagem;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snListaPontoPassagem_PontoPassagem)
      and ((thisURI='') or (tPontoPassagem._nsURI_ = thisURI)) then
    begin
      aPontoPassagem := tPontoPassagem.Create(xn);
      FPontoPassagem.AddObject('?', aPontoPassagem);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tListaPontoPassagem.Destroy;
begin
  FPontoPassagem.Free;
  inherited;
end; // destructor ...

procedure tListaPontoPassagem.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ListaPontoPassagem')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "PontoPassagem" is tManagedStringlist
  if Assigned(FPontoPassagem) then
    for i:=0 to FPontoPassagem.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snListaPontoPassagem_PontoPassagem));
      tPontoPassagem(FPontoPassagem.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tPracasTarifaDiferenciada }

class function tPracasTarifaDiferenciada._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tPracasTarifaDiferenciada.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tPracasTarifaDiferenciada.Create(aRoot:tJanXMLNode2);
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
    if (sn = snPracasTarifaDiferenciada_CondicaoCompraVP) then
      CondicaoCompraVP :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tPracasTarifaDiferenciada.Destroy;
begin
  inherited;
end; // destructor ...

procedure tPracasTarifaDiferenciada.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'PracasTarifaDiferenciada')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snPracasTarifaDiferenciada_CondicaoCompraVP));
  xn.text := FCondicaoCompraVP;
end; // procedure save

{ tPracas }

class function tPracas._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tPracas.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tPracas.Create(aRoot:tJanXMLNode2);
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
    if (sn = snPracas_IdPraca) then
      IdPraca := StrToIntDef(xn.text, 0)
    else if (sn = snPracas_ComprarPedagio) then
      ComprarPedagio :=  xn.text // string
    else if (sn = snPracas_SentidoCobranca) then
      SentidoCobranca :=  xn.text // tSentidoCobrancaType
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tPracas.Destroy;
begin
  inherited;
end; // destructor ...

procedure tPracas.SetSentidoCobranca(value:tSentidoCobrancaType);
begin
  FSentidoCobranca := value;
  FSentidoCobranca_IsSet_ := true;
end;

procedure tPracas.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Pracas')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snPracas_IdPraca));
  xn.text := IntToStr(FIdPraca);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snPracas_ComprarPedagio));
  xn.text := FComprarPedagio;
  if SentidoCobranca_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snPracas_SentidoCobranca));
    xn.text := FSentidoCobranca;
  end;
end; // procedure save

{ tValePedagioViagemType }

class function tValePedagioViagemType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tValePedagioViagemType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FPracas := tManagedStringlist.Create;
  FPracasTarifaDiferenciada := tManagedStringlist.Create;
end; // constructor ...

constructor tValePedagioViagemType.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
//  i: integer;
  thisURI: string;
  aPracas: tPracas;
  aPracasTarifaDiferenciada: tPracasTarifaDiferenciada;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snValePedagioViagemType_OperadoraFinanceiraVP) then
      OperadoraFinanceiraVP :=  xn.text // string
    else if (sn = snValePedagioViagemType_MeioPagamentoValePedagio) then
      MeioPagamentoValePedagio := StrToIntDef(xn.text, 0)
    else if (sn = snValePedagioViagemType_ModalidadeLocalImpressao) then
      ModalidadeLocalImpressao :=  xn.text // tModalidadeImpressaoType
    else if (sn = snValePedagioViagemType_IDLocalImpressao) then
      IDLocalImpressao := StrToIntDef(xn.text, 0)
    else if (sn = snValePedagioViagemType_ValorPedagio) then
      ValorPedagio := DefStrToFloat(xn.text, 0)
    else if (sn = snValePedagioViagemType_Pracas)
      and ((thisURI='') or (tPracas._nsURI_ = thisURI)) then
    begin
      aPracas := tPracas.Create(xn);
      FPracas.AddObject('?', aPracas);
    end
    else if (sn = snValePedagioViagemType_PracasTarifaDiferenciada)
      and ((thisURI='') or (tPracasTarifaDiferenciada._nsURI_ = thisURI)) then
    begin
      aPracasTarifaDiferenciada := tPracasTarifaDiferenciada.Create(xn);
      FPracasTarifaDiferenciada.AddObject('?', aPracasTarifaDiferenciada);
    end
    else if (sn = snValePedagioViagemType_QtdeCompraVp) then
      QtdeCompraVp := StrToIntDef(xn.text, 0)
    else if (sn = snValePedagioViagemType_ListaPontoPassagem)
      and ((thisURI='') or (tListaPontoPassagem._nsURI_ = thisURI)) then
      FListaPontoPassagem := tListaPontoPassagem.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tValePedagioViagemType.Destroy;
begin
  FPracas.Free;
  FPracasTarifaDiferenciada.Free;
  FListaPontoPassagem.Free;
  inherited;
end; // destructor ...

procedure tValePedagioViagemType.SetModalidadeLocalImpressao(value:tModalidadeImpressaoType);
begin
  FModalidadeLocalImpressao := value;
  FModalidadeLocalImpressao_IsSet_ := true;
end;

procedure tValePedagioViagemType.SetIDLocalImpressao(value:integer);
begin
  FIDLocalImpressao := value;
  FIDLocalImpressao_IsSet_ := true;
end;

procedure tValePedagioViagemType.SetValorPedagio(value:extended);
begin
  FValorPedagio := value;
  FValorPedagio_IsSet_ := true;
end;

procedure tValePedagioViagemType.SetQtdeCompraVp(value:integer);
begin
  FQtdeCompraVp := value;
  FQtdeCompraVp_IsSet_ := true;
end;

procedure tValePedagioViagemType.SetListaPontoPassagem(value:tListaPontoPassagem);
begin
  FListaPontoPassagem := value;
  FListaPontoPassagem_IsSet_ := true;
end;

procedure tValePedagioViagemType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ValePedagioViagemType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValePedagioViagemType_OperadoraFinanceiraVP));
  xn.text := FOperadoraFinanceiraVP;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValePedagioViagemType_MeioPagamentoValePedagio));
  xn.text := IntToStr(FMeioPagamentoValePedagio);
  if ModalidadeLocalImpressao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValePedagioViagemType_ModalidadeLocalImpressao));
    xn.text := FModalidadeLocalImpressao;
  end;
  if IDLocalImpressao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValePedagioViagemType_IDLocalImpressao));
    xn.text := IntToStr(FIDLocalImpressao);
  end;
  if ValorPedagio_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValePedagioViagemType_ValorPedagio));
    xn.text := MyFloatToStr(FValorPedagio);
  end;
  // element "Pracas" is tManagedStringlist
  if Assigned(FPracas) then
    for i:=0 to FPracas.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValePedagioViagemType_Pracas));
      tPracas(FPracas.Objects[i]).Save(xn);
    end; // for i:=0 to ...
  // element "PracasTarifaDiferenciada" is tManagedStringlist
  if Assigned(FPracasTarifaDiferenciada) then
    for i:=0 to FPracasTarifaDiferenciada.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValePedagioViagemType_PracasTarifaDiferenciada));
      tPracasTarifaDiferenciada(FPracasTarifaDiferenciada.Objects[i]).Save(xn);
    end; // for i:=0 to ...
  if QtdeCompraVp_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValePedagioViagemType_QtdeCompraVp));
    xn.text := IntToStr(FQtdeCompraVp);
  end;
  if Assigned(FListaPontoPassagem) then
  begin
    xn := aNode.addChildByName(snValePedagioViagemType_ListaPontoPassagem);
    FListaPontoPassagem.Save(xn);
  end;
end; // procedure save

{ tTransportadorType }

class function tTransportadorType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tTransportadorType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FEndereco := tManagedStringlist.Create;
  FContato := tManagedStringlist.Create;
  FMotorista := tManagedStringlist.Create;
  FVeiculo := tManagedStringlist.Create;
end; // constructor ...

constructor tTransportadorType.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
//  i: integer;
  thisURI: string;
  aEndereco: tEndereco;
  aContato: tContato;
  aMotorista: tMotorista;
  aVeiculo: tVeiculo;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snTransportadorType_RNTRCTransportador) then
      RNTRCTransportador :=  xn.text // string
    else if (sn = snTransportadorType_CNPJCPF) then
      CNPJCPF :=  xn.text // tCNPJCPFType
    else if (sn = snTransportadorType_TipoTransportador) then
      TipoTransportador :=  xn.text // tTipoTransportadorType
    else if (sn = snTransportadorType_NomeTransportador) then
      NomeTransportador :=  xn.text // string
    else if (sn = snTransportadorType_Endereco)
      and ((thisURI='') or (tEndereco._nsURI_ = thisURI)) then
    begin
      aEndereco := tEndereco.Create(xn);
      FEndereco.AddObject('?', aEndereco);
    end
    else if (sn = snTransportadorType_Contato)
      and ((thisURI='') or (tContato._nsURI_ = thisURI)) then
    begin
      aContato := tContato.Create(xn);
      FContato.AddObject('?', aContato);
    end
    else if (sn = snTransportadorType_Motorista)
      and ((thisURI='') or (tMotorista._nsURI_ = thisURI)) then
    begin
      aMotorista := tMotorista.Create(xn);
      FMotorista.AddObject('?', aMotorista);
    end
    else if (sn = snTransportadorType_Veiculo)
      and ((thisURI='') or (tVeiculo._nsURI_ = thisURI)) then
    begin
      aVeiculo := tVeiculo.Create(xn);
      FVeiculo.AddObject('?', aVeiculo);
    end
    else if (sn = snTransportadorType_Cartao) then
      FCartao := tCartaoType.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tTransportadorType.Destroy;
begin
  FEndereco.Free;
  FContato.Free;
  FMotorista.Free;
  FVeiculo.Free;
  inherited;
end; // destructor ...

procedure tTransportadorType.SetCartao(value:tCartaoType);
begin
  FCartao := value;
  FCartao_IsSet_ := true;
end;

procedure tTransportadorType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'TransportadorType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snTransportadorType_RNTRCTransportador));
  xn.text := FRNTRCTransportador;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snTransportadorType_CNPJCPF));
  xn.text := FCNPJCPF;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snTransportadorType_TipoTransportador));
  xn.text := FTipoTransportador;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snTransportadorType_NomeTransportador));
  xn.text := FNomeTransportador;
  // element "Endereco" is tManagedStringlist
  if Assigned(FEndereco) then
    for i:=0 to FEndereco.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snTransportadorType_Endereco));
      tEndereco(FEndereco.Objects[i]).Save(xn);
    end; // for i:=0 to ...
  // element "Contato" is tManagedStringlist
  if Assigned(FContato) then
    for i:=0 to FContato.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snTransportadorType_Contato));
      tContato(FContato.Objects[i]).Save(xn);
    end; // for i:=0 to ...
  // element "Motorista" is tManagedStringlist
  if Assigned(FMotorista) then
    for i:=0 to FMotorista.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snTransportadorType_Motorista));
      tMotorista(FMotorista.Objects[i]).Save(xn);
    end; // for i:=0 to ...
  // element "Veiculo" is tManagedStringlist
  if Assigned(FVeiculo) then
    for i:=0 to FVeiculo.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snTransportadorType_Veiculo));
      tVeiculo(FVeiculo.Objects[i]).Save(xn);
    end; // for i:=0 to ...
  if Assigned(FCartao) then
  begin
    xn := aNode.addChildByName(snTransportadorType_Cartao);
    FCartao.Save(xn);
  end;
end; // procedure save

{ tExcecaoType }

class function tExcecaoType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tExcecaoType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tExcecaoType.Create(aRoot:tJanXMLNode2);
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
    if (sn = snExcecaoType_TipoExcecao) then
      TipoExcecao :=  xn.text // string
    else if (sn = snExcecaoType_CodigoExcecao) then
      CodigoExcecao :=  xn.text // string
    else if (sn = snExcecaoType_MensagemExcecao) then
      MensagemExcecao :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tExcecaoType.Destroy;
begin
  inherited;
end; // destructor ...

procedure tExcecaoType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ExcecaoType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snExcecaoType_TipoExcecao));
  xn.text := FTipoExcecao;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snExcecaoType_CodigoExcecao));
  xn.text := FCodigoExcecao;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snExcecaoType_MensagemExcecao));
  xn.text := FMensagemExcecao;
end; // procedure save

{ tCartaoType }

class function tCartaoType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCartaoType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tCartaoType.Create(aRoot:tJanXMLNode2);
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
    if (sn = snCartaoType_NumeroCartao) then
      NumeroCartao :=  xn.text // tNumeroCartaoType
    else if (sn = snCartaoType_TipoCartao) then
      TipoCartao :=  xn.text // tTipoCartaoType
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tCartaoType.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCartaoType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CartaoType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCartaoType_NumeroCartao));
  xn.text := FNumeroCartao;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCartaoType_TipoCartao));
  xn.text := FTipoCartao;
end; // procedure save

{ tVeiculoType }

class function tVeiculoType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tVeiculoType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tVeiculoType.Create(aRoot:tJanXMLNode2);
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
    if (sn = snVeiculoType_TipoTransporteVeiculo) then
      TipoTransporteVeiculo :=  xn.text // string
    else if (sn = snVeiculoType_RNTRC) then
      RNTRC :=  xn.text // tRNTRCType
    else if (sn = snVeiculoType_CNPJCPF) then
      CNPJCPF :=  xn.text // tCNPJCPFType
    else if (sn = snVeiculoType_TipoVeiculo) then
      TipoVeiculo := StrToIntDef(xn.text, 0)
    else if (sn = snVeiculoType_QtdeEixos) then
      QtdeEixos :=  xn.text // tEixoType
    else if (sn = snVeiculoType_TipoRodagem) then
      TipoRodagem :=  xn.text // tTipoRodagemType
    else if (sn = snVeiculoType_PlacaVeiculo) then
      PlacaVeiculo :=  xn.text // tPlacaVeiculoType
    else if (sn = snVeiculoType_UfPlacaVeiculo) then
      UfPlacaVeiculo :=  xn.text // string
    else if (sn = snVeiculoType_NumeroFrotaVeiculo) then
      NumeroFrotaVeiculo := StrToIntDef(xn.text, 0)
    else if (sn = snVeiculoType_TipoCombustivelVeiculo) then
      TipoCombustivelVeiculo := StrToIntDef(xn.text, 0)
    else if (sn = snVeiculoType_CapacidadeTanqueVeiculo) then
      CapacidadeTanqueVeiculo := DefStrToFloat(xn.text, 0)
    else if (sn = snVeiculoType_MediaConsumoVeiculo) then
      MediaConsumoVeiculo := DefStrToFloat(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tVeiculoType.Destroy;
begin
  inherited;
end; // destructor ...

procedure tVeiculoType.SetRNTRC(value:tRNTRCType);
begin
  FRNTRC := value;
  FRNTRC_IsSet_ := true;
end;

procedure tVeiculoType.SetCNPJCPF(value:tCNPJCPFType);
begin
  FCNPJCPF := value;
  FCNPJCPF_IsSet_ := true;
end;

procedure tVeiculoType.SetNumeroFrotaVeiculo(value:integer);
begin
  FNumeroFrotaVeiculo := value;
  FNumeroFrotaVeiculo_IsSet_ := true;
end;

procedure tVeiculoType.SetCapacidadeTanqueVeiculo(value:extended);
begin
  FCapacidadeTanqueVeiculo := value;
  FCapacidadeTanqueVeiculo_IsSet_ := true;
end;

procedure tVeiculoType.SetMediaConsumoVeiculo(value:extended);
begin
  FMediaConsumoVeiculo := value;
  FMediaConsumoVeiculo_IsSet_ := true;
end;

procedure tVeiculoType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'VeiculoType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snVeiculoType_TipoTransporteVeiculo));
  xn.text := FTipoTransporteVeiculo;
  if RNTRC_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snVeiculoType_RNTRC));
    xn.text := FRNTRC;
  end;
  if CNPJCPF_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snVeiculoType_CNPJCPF));
    xn.text := FCNPJCPF;
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snVeiculoType_TipoVeiculo));
  xn.text := IntToStr(FTipoVeiculo);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snVeiculoType_QtdeEixos));
  xn.text := FQtdeEixos;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snVeiculoType_TipoRodagem));
  xn.text := FTipoRodagem;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snVeiculoType_PlacaVeiculo));
  xn.text := FPlacaVeiculo;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snVeiculoType_UfPlacaVeiculo));
  xn.text := FUfPlacaVeiculo;
  if NumeroFrotaVeiculo_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snVeiculoType_NumeroFrotaVeiculo));
    xn.text := IntToStr(FNumeroFrotaVeiculo);
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snVeiculoType_TipoCombustivelVeiculo));
  xn.text := IntToStr(FTipoCombustivelVeiculo);
  if CapacidadeTanqueVeiculo_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snVeiculoType_CapacidadeTanqueVeiculo));
    xn.text := MyFloatToStr(FCapacidadeTanqueVeiculo);
  end;
  if MediaConsumoVeiculo_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snVeiculoType_MediaConsumoVeiculo));
    xn.text := MyFloatToStr(FMediaConsumoVeiculo);
  end;
end; // procedure save

{ tMotoristaType }

class function tMotoristaType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tMotoristaType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tMotoristaType.Create(aRoot:tJanXMLNode2);
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
    if (sn = snMotoristaType_NomeMotorista) then
      NomeMotorista :=  xn.text // string
    else if (sn = snMotoristaType_Relacao) then
      Relacao :=  xn.text // string
    else if (sn = snMotoristaType_CPFMotorista) then
      CPFMotorista :=  xn.text // string
    else if (sn = snMotoristaType_CNHMotorista) then
      FCNHMotorista := tCNHType.Create(xn)
    else if (sn = snMotoristaType_Contato) then
      FContato := tContatoType.Create(xn)
    else if (sn = snMotoristaType_Endereco) then
      FEndereco := tEnderecoType.Create(xn)
    else if (sn = snMotoristaType_DataNascimento) then
      DataNascimento := DateFromXMLDateTime(xn.text) // tDate
    else if (sn = snMotoristaType_Identidade) then
      Identidade :=  xn.text // string
    else if (sn = snMotoristaType_OrgaoExpedidor) then
      OrgaoExpedidor :=  xn.text // string
    else if (sn = snMotoristaType_Sexo) then
      Sexo :=  xn.text // string
    else if (sn = snMotoristaType_NumeroCartao) then
      NumeroCartao :=  xn.text // tNumeroCartaoType
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tMotoristaType.Destroy;
begin
  inherited;
end; // destructor ...

procedure tMotoristaType.SetNomeMotorista(value:string);
begin
  FNomeMotorista := value;
  FNomeMotorista_IsSet_ := true;
end;

procedure tMotoristaType.SetRelacao(value:string);
begin
  FRelacao := value;
  FRelacao_IsSet_ := true;
end;

procedure tMotoristaType.SetCNHMotorista(value:tCNHType);
begin
  FCNHMotorista := value;
  FCNHMotorista_IsSet_ := true;
end;

procedure tMotoristaType.SetContato(value:tContatoType);
begin
  FContato := value;
  FContato_IsSet_ := true;
end;

procedure tMotoristaType.SetEndereco(value:tEnderecoType);
begin
  FEndereco := value;
  FEndereco_IsSet_ := true;
end;

procedure tMotoristaType.SetDataNascimento(value:tDate);
begin
  FDataNascimento := value;
  FDataNascimento_IsSet_ := true;
end;

procedure tMotoristaType.SetIdentidade(value:string);
begin
  FIdentidade := value;
  FIdentidade_IsSet_ := true;
end;

procedure tMotoristaType.SetOrgaoExpedidor(value:string);
begin
  FOrgaoExpedidor := value;
  FOrgaoExpedidor_IsSet_ := true;
end;

procedure tMotoristaType.SetSexo(value:string);
begin
  FSexo := value;
  FSexo_IsSet_ := true;
end;

procedure tMotoristaType.SetNumeroCartao(value:tNumeroCartaoType);
begin
  FNumeroCartao := value;
  FNumeroCartao_IsSet_ := true;
end;

procedure tMotoristaType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'MotoristaType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if NomeMotorista_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snMotoristaType_NomeMotorista));
    xn.text := FNomeMotorista;
  end;
  if Relacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snMotoristaType_Relacao));
    xn.text := FRelacao;
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snMotoristaType_CPFMotorista));
  xn.text := FCPFMotorista;
  if Assigned(FCNHMotorista) then
  begin
    xn := aNode.addChildByName(snMotoristaType_CNHMotorista);
    FCNHMotorista.Save(xn);
  end;
  if Assigned(FContato) then
  begin
    xn := aNode.addChildByName(snMotoristaType_Contato);
    FContato.Save(xn);
  end;
  if Assigned(FEndereco) then
  begin
    xn := aNode.addChildByName(snMotoristaType_Endereco);
    FEndereco.Save(xn);
  end;
  if DataNascimento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snMotoristaType_DataNascimento));
    xn.text := DateToXMLDateTime(FDataNascimento);
  end;
  if Identidade_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snMotoristaType_Identidade));
    xn.text := FIdentidade;
  end;
  if OrgaoExpedidor_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snMotoristaType_OrgaoExpedidor));
    xn.text := FOrgaoExpedidor;
  end;
  if Sexo_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snMotoristaType_Sexo));
    xn.text := FSexo;
  end;
  if NumeroCartao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snMotoristaType_NumeroCartao));
    xn.text := FNumeroCartao;
  end;
end; // procedure save

{ tContatoType }

class function tContatoType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tContatoType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tContatoType.Create(aRoot:tJanXMLNode2);
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
    if (sn = snContatoType_TipoContato) then
      TipoContato :=  xn.text // string
    else if (sn = snContatoType_Nome) then
      Nome :=  xn.text // string
    else if (sn = snContatoType_Telefone) then
      Telefone :=  xn.text // string
    else if (sn = snContatoType_Celular) then
      Celular :=  xn.text // string
    else if (sn = snContatoType_Email) then
      Email :=  xn.text // string
    else if (sn = snContatoType_MeioComunicacaoPreferido) then
      MeioComunicacaoPreferido :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tContatoType.Destroy;
begin
  inherited;
end; // destructor ...

procedure tContatoType.SetTelefone(value:string);
begin
  FTelefone := value;
  FTelefone_IsSet_ := true;
end;

procedure tContatoType.SetCelular(value:string);
begin
  FCelular := value;
  FCelular_IsSet_ := true;
end;

procedure tContatoType.SetEmail(value:string);
begin
  FEmail := value;
  FEmail_IsSet_ := true;
end;

procedure tContatoType.SetMeioComunicacaoPreferido(value:string);
begin
  FMeioComunicacaoPreferido := value;
  FMeioComunicacaoPreferido_IsSet_ := true;
end;

procedure tContatoType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ContatoType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snContatoType_TipoContato));
  xn.text := FTipoContato;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snContatoType_Nome));
  xn.text := FNome;
  if Telefone_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snContatoType_Telefone));
    xn.text := FTelefone;
  end;
  if Celular_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snContatoType_Celular));
    xn.text := FCelular;
  end;
  if Email_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snContatoType_Email));
    xn.text := FEmail;
  end;
  if MeioComunicacaoPreferido_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snContatoType_MeioComunicacaoPreferido));
    xn.text := FMeioComunicacaoPreferido;
  end;
end; // procedure save

{ tEnderecoType }

class function tEnderecoType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tEnderecoType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tEnderecoType.Create(aRoot:tJanXMLNode2);
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
    if (sn = snEnderecoType_TipoEndereco) then
      TipoEndereco :=  xn.text // string
    else if (sn = snEnderecoType_CEP) then
      CEP :=  xn.text // string
    else if (sn = snEnderecoType_TipoLogradouro) then
      TipoLogradouro :=  xn.text // string
    else if (sn = snEnderecoType_Logradouro) then
      Logradouro :=  xn.text // string
    else if (sn = snEnderecoType_Numero) then
      Numero :=  xn.text // string
    else if (sn = snEnderecoType_Complemento) then
      Complemento :=  xn.text // string
    else if (sn = snEnderecoType_Bairro) then
      Bairro :=  xn.text // string
    else if (sn = snEnderecoType_Cidade) then
      Cidade :=  xn.text // tLocalidadeType
    else if (sn = snEnderecoType_Estado) then
      Estado :=  xn.text // tSiglaUFType
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tEnderecoType.Destroy;
begin
  inherited;
end; // destructor ...

procedure tEnderecoType.SetTipoEndereco(value:string);
begin
  FTipoEndereco := value;
  FTipoEndereco_IsSet_ := true;
end;

procedure tEnderecoType.SetTipoLogradouro(value:string);
begin
  FTipoLogradouro := value;
  FTipoLogradouro_IsSet_ := true;
end;

procedure tEnderecoType.SetComplemento(value:string);
begin
  FComplemento := value;
  FComplemento_IsSet_ := true;
end;

procedure tEnderecoType.SetEstado(value:tSiglaUFType);
begin
  FEstado := value;
  FEstado_IsSet_ := true;
end;

procedure tEnderecoType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'EnderecoType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if TipoEndereco_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEnderecoType_TipoEndereco));
    xn.text := FTipoEndereco;
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEnderecoType_CEP));
  xn.text := FCEP;
  if TipoLogradouro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEnderecoType_TipoLogradouro));
    xn.text := FTipoLogradouro;
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEnderecoType_Logradouro));
  xn.text := FLogradouro;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEnderecoType_Numero));
  xn.text := FNumero;
  if Complemento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEnderecoType_Complemento));
    xn.text := FComplemento;
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEnderecoType_Bairro));
  xn.text := FBairro;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEnderecoType_Cidade));
  xn.text := FCidade;
  if Estado_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEnderecoType_Estado));
    xn.text := FEstado;
  end;
end; // procedure save

{ tEnvolvidosTransporte }

class function tEnvolvidosTransporte._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tEnvolvidosTransporte.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tEnvolvidosTransporte.Create(aRoot:tJanXMLNode2);
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
    if (sn = snEnvolvidosTransporte_TipoEnvolvido) then
      TipoEnvolvido :=  xn.text // string
    else if (sn = snEnvolvidosTransporte_CNPJCPF) then
      CNPJCPF :=  xn.text // tCNPJCPFType
    else if (sn = snEnvolvidosTransporte_NomeEnvolvido) then
      NomeEnvolvido :=  xn.text // string
    else if (sn = snEnvolvidosTransporte_Endereco) then
      FEndereco := tEnderecoType.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tEnvolvidosTransporte.Destroy;
begin
  inherited;
end; // destructor ...

procedure tEnvolvidosTransporte.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'EnvolvidosTransporte')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEnvolvidosTransporte_TipoEnvolvido));
  xn.text := FTipoEnvolvido;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEnvolvidosTransporte_CNPJCPF));
  xn.text := FCNPJCPF;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEnvolvidosTransporte_NomeEnvolvido));
  xn.text := FNomeEnvolvido;
  if Assigned(FEndereco) then
  begin
    xn := aNode.addChildByName(snEnvolvidosTransporte_Endereco);
    FEndereco.Save(xn);
  end;
end; // procedure save

{ tEnvolvidosTransporteViagemType }

class function tEnvolvidosTransporteViagemType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tEnvolvidosTransporteViagemType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FEnvolvidosTransporte := tManagedStringlist.Create;
end; // constructor ...

constructor tEnvolvidosTransporteViagemType.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
//  i: integer;
  thisURI: string;
  aEnvolvidosTransporte: tEnvolvidosTransporte;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snEnvolvidosTransporteViagemType_TipoFrete) then
      TipoFrete :=  xn.text // tTipoFreteType
    else if (sn = snEnvolvidosTransporteViagemType_EnvolvidosTransporte)
      and ((thisURI='') or (tEnvolvidosTransporte._nsURI_ = thisURI)) then
    begin
      aEnvolvidosTransporte := tEnvolvidosTransporte.Create(xn);
      FEnvolvidosTransporte.AddObject('?', aEnvolvidosTransporte);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tEnvolvidosTransporteViagemType.Destroy;
begin
  FEnvolvidosTransporte.Free;
  inherited;
end; // destructor ...

procedure tEnvolvidosTransporteViagemType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'EnvolvidosTransporteViagemType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEnvolvidosTransporteViagemType_TipoFrete));
  xn.text := FTipoFrete;
  // element "EnvolvidosTransporte" is tManagedStringlist
  if Assigned(FEnvolvidosTransporte) then
    for i:=0 to FEnvolvidosTransporte.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEnvolvidosTransporteViagemType_EnvolvidosTransporte));
      tEnvolvidosTransporte(FEnvolvidosTransporte.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tIdentificacaoIntegracaoType }

class function tIdentificacaoIntegracaoType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tIdentificacaoIntegracaoType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tIdentificacaoIntegracaoType.Create(aRoot:tJanXMLNode2);
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
    if (sn = snIdentificacaoIntegracaoType_IdClienteRodocred) then
      IdClienteRodocred := StrToIntDef(xn.text, 0)
    else if (sn = snIdentificacaoIntegracaoType_TokenAutenticacao) then
      TokenAutenticacao :=  xn.text // tTokenAutenticacaoType
    else if (sn = snIdentificacaoIntegracaoType_NumeroTransacao) then
      NumeroTransacao :=  xn.text // string
    else if (sn = snIdentificacaoIntegracaoType_VersaoServico) then
      VersaoServico :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tIdentificacaoIntegracaoType.Destroy;
begin
  inherited;
end; // destructor ...

procedure tIdentificacaoIntegracaoType.SetNumeroTransacao(value:string);
begin
  FNumeroTransacao := value;
  FNumeroTransacao_IsSet_ := true;
end;

procedure tIdentificacaoIntegracaoType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'IdentificacaoIntegracaoType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snIdentificacaoIntegracaoType_IdClienteRodocred));
  xn.text := IntToStr(FIdClienteRodocred);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snIdentificacaoIntegracaoType_TokenAutenticacao));
  xn.text := FTokenAutenticacao;
  if NumeroTransacao_IsSet_ and (FNumeroTransacao<>'')then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snIdentificacaoIntegracaoType_NumeroTransacao));
    xn.text := FNumeroTransacao;
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snIdentificacaoIntegracaoType_VersaoServico));
  xn.text := FVersaoServico;
end; // procedure save

{ tDadosTransportadorType }

class function tDadosTransportadorType._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tDadosTransportadorType.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FVeiculo := tManagedStringlist.Create;
  FMotorista := tManagedStringlist.Create;
end; // constructor ...

constructor tDadosTransportadorType.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
//  i: integer;
  thisURI: string;
  aVeiculo: tVeiculo;
  aMotorista: tMotorista;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snDadosTransportadorType_Transportador)
      and ((thisURI='') or (tTransportador._nsURI_ = thisURI)) then
      FTransportador := tTransportador.Create(xn)
    else if (sn = snDadosTransportadorType_TipoTransportador) then
      TipoTransportador :=  xn.text // tTipoTransportadorType
    else if (sn = snDadosTransportadorType_Contato) then
      FContato := tContatoType.Create(xn)
    else if (sn = snDadosTransportadorType_Endereco) then
      FEndereco := tEnderecoType.Create(xn)
    else if (sn = snDadosTransportadorType_Veiculo)
      and ((thisURI='') or (tVeiculo._nsURI_ = thisURI)) then
    begin
      aVeiculo := tVeiculo.Create(xn);
      FVeiculo.AddObject('?', aVeiculo);
    end
    else if (sn = snDadosTransportadorType_Motorista)
      and ((thisURI='') or (tMotorista._nsURI_ = thisURI)) then
    begin
      aMotorista := tMotorista.Create(xn);
      FMotorista.AddObject('?', aMotorista);
    end
    else if (sn = snDadosTransportadorType_NumeroCartao) then
      NumeroCartao :=  xn.text // tNumeroCartaoType
    else if (sn = snDadosTransportadorType_TransportadorPF) then
      FTransportadorPF := tTransportadorPFType.Create(xn)
    else if (sn = snDadosTransportadorType_TransportadorPJ) then
      FTransportadorPJ := tTransportadorPJType.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tDadosTransportadorType.Destroy;
begin
  FTransportador.Free;
  FVeiculo.Free;
  FMotorista.Free;
  inherited;
end; // destructor ...

procedure tDadosTransportadorType.SetContato(value:tContatoType);
begin
  FContato := value;
  FContato_IsSet_ := true;
end;

procedure tDadosTransportadorType.SetEndereco(value:tEnderecoType);
begin
  FEndereco := value;
  FEndereco_IsSet_ := true;
end;

procedure tDadosTransportadorType.SetNumeroCartao(value:tNumeroCartaoType);
begin
  FNumeroCartao := value;
  FNumeroCartao_IsSet_ := true;
end;

procedure tDadosTransportadorType.SetTransportadorPF(value:tTransportadorPFType);
begin
  FTransportadorPF := value;
  FTransportadorPF_IsSet_ := true;
end;

procedure tDadosTransportadorType.SetTransportadorPJ(value:tTransportadorPJType);
begin
  FTransportadorPJ := value;
  FTransportadorPJ_IsSet_ := true;
end;

procedure tDadosTransportadorType.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'DadosTransportadorType')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Assigned(FTransportador) then
  begin
    xn := aNode.addChildByName(snDadosTransportadorType_Transportador);
    FTransportador.Save(xn);
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosTransportadorType_TipoTransportador));
  xn.text := FTipoTransportador;
  if Assigned(FContato) then
  begin
    xn := aNode.addChildByName(snDadosTransportadorType_Contato);
    FContato.Save(xn);
  end;
  if Assigned(FEndereco) then
  begin
    xn := aNode.addChildByName(snDadosTransportadorType_Endereco);
    FEndereco.Save(xn);
  end;
  // element "Veiculo" is tManagedStringlist
  if Assigned(FVeiculo) then
    for i:=0 to FVeiculo.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosTransportadorType_Veiculo));
      tVeiculo(FVeiculo.Objects[i]).Save(xn);
    end; // for i:=0 to ...
  // element "Motorista" is tManagedStringlist
  if Assigned(FMotorista) then
    for i:=0 to FMotorista.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosTransportadorType_Motorista));
      tMotorista(FMotorista.Objects[i]).Save(xn);
    end; // for i:=0 to ...
  if NumeroCartao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosTransportadorType_NumeroCartao));
    xn.text := FNumeroCartao;
  end;
  if Assigned(FTransportadorPF) then
  begin
    xn := aNode.addChildByName(snDadosTransportadorType_TransportadorPF);
    FTransportadorPF.Save(xn);
  end;
  if Assigned(FTransportadorPJ) then
  begin
    xn := aNode.addChildByName(snDadosTransportadorType_TransportadorPJ);
    FTransportadorPJ.Save(xn);
  end;
end; // procedure save

end.
