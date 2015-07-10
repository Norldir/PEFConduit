unit ux2;

Interface
uses
  Classes,
  JanXMLParser2,
  uXMLTools;

// targetNameSpace: http://schemas.datacontract.org/2004/07/TARGET.VectioFrete.Application.WCF.Contracts.External
// NameSpacePrefix: tns
// Date of Schema : 28/10/2014 10:19:24
// Translationdate: 28/10/2014 12:19:27
//
//   includes xs=http://www.w3.org/2001/XMLSchema

// ordinal types
{
type

  tBaseCentroDeCustoRequestResponse = tBaseCentroDeCustoRequestResponse;
  tBaseResponse = tBaseResponse;
  tObterCentroDeCustoResponse = tObterCentroDeCustoResponse;
  tBuscaCentrosDeCustosResponse = tBuscaCentrosDeCustosResponse;
  tArrayOfBaseCentroDeCustoRequestResponse = tArrayOfBaseCentroDeCustoRequestResponse;
  tBaseParticipanteRequestResponse = tBaseParticipanteRequestResponse;
  tObterParticipanteResponse = tObterParticipanteResponse;
  tBuscaParticipantesResponse = tBuscaParticipantesResponse;
  tArrayOfBaseParticipanteRequestResponse = tArrayOfBaseParticipanteRequestResponse;
  tCadastroAutonomoRequest = tCadastroAutonomoRequest;
  tCadastroAutonomoResponse = tCadastroAutonomoResponse;
  tCadastroEquiparadoRequest = tCadastroEquiparadoRequest;
  tCadastroEquiparadoResponse = tCadastroEquiparadoResponse;
  tSituacaoCadastroTransportadorAnttResponse = tSituacaoCadastroTransportadorAnttResponse;
  tAtualizarOperacaoRequest = tAtualizarOperacaoRequest;
  tOperacaoTransporteRequest = tOperacaoTransporteRequest;
  tArrayOfOperacaoTransporteParcelaRequest = tArrayOfOperacaoTransporteParcelaRequest;
  tOperacaoTransporteParcelaRequest = tOperacaoTransporteParcelaRequest;
  tArrayOfOperacaoTransporteVeiculoRequest = tArrayOfOperacaoTransporteVeiculoRequest;
  tOperacaoTransporteVeiculoRequest = tOperacaoTransporteVeiculoRequest;
  tArrayOfOperacaoTransporteParticipanteRequest = tArrayOfOperacaoTransporteParticipanteRequest;
  tOperacaoTransporteParticipanteRequest = tOperacaoTransporteParticipanteRequest;
  tArrayOfOperacaoTransporteTriagemRequest = tArrayOfOperacaoTransporteTriagemRequest;
  tOperacaoTransporteTriagemRequest = tOperacaoTransporteTriagemRequest;
  tArrayOfOperacaoTransporteTriagemRelacionadoRequest = tArrayOfOperacaoTransporteTriagemRelacionadoRequest;
  tOperacaoTransporteTriagemRelacionadoRequest = tOperacaoTransporteTriagemRelacionadoRequest;
  tAtualizarOperacaoResponse = tAtualizarOperacaoResponse;
  tAnulacaoOperacaoTransporteRequest = tAnulacaoOperacaoTransporteRequest;
  tAnulacaoOperacaoTransporteResponse = tAnulacaoOperacaoTransporteResponse;
  tCadastroOperacaoTransporteResponse = tCadastroOperacaoTransporteResponse;
  tRegistroOperacaoTransporteResponse = tRegistroOperacaoTransporteResponse;
  tCancelamentoOperacaoTransporteResponse = tCancelamentoOperacaoTransporteResponse;
  tRetificacaoOperacaoTransporteRequest = tRetificacaoOperacaoTransporteRequest;
  tRetificacaoOperacaoTransporteResponse = tRetificacaoOperacaoTransporteResponse;
  tRetificacaoPlacasOperacaoTransporteRequest = tRetificacaoPlacasOperacaoTransporteRequest;
  tEncerramentoOperacaoTransporteRequest = tEncerramentoOperacaoTransporteRequest;
  tArrayOfOperacaoTransporteViagemRequest = tArrayOfOperacaoTransporteViagemRequest;
  tOperacaoTransporteViagemRequest = tOperacaoTransporteViagemRequest;
  tEncerramentoOperacaoTransporteResponse = tEncerramentoOperacaoTransporteResponse;
  tFinalizacaoOperacaoTransporteResponse = tFinalizacaoOperacaoTransporteResponse;
  tBuscaOperacaoTransporteParcelasResponse = tBuscaOperacaoTransporteParcelasResponse;
  tArrayOfOperacaoTransporteParcelasResponse = tArrayOfOperacaoTransporteParcelasResponse;
  tOperacaoTransporteParcelasResponse = tOperacaoTransporteParcelasResponse;
  tObterOperacaoTransporteResponse = tObterOperacaoTransporteResponse;
  tOperacaoTransporteResponse = tOperacaoTransporteResponse;
  tArrayOfOperacaoTransporteVeiculoResponse = tArrayOfOperacaoTransporteVeiculoResponse;
  tOperacaoTransporteVeiculoResponse = tOperacaoTransporteVeiculoResponse;
  tArrayOfOperacaoTransporteParticipanteReponse = tArrayOfOperacaoTransporteParticipanteReponse;
  tOperacaoTransporteParticipanteReponse = tOperacaoTransporteParticipanteReponse;
  tArrayOfOperacaoTransporteTriagemResponse = tArrayOfOperacaoTransporteTriagemResponse;
  tOperacaoTransporteTriagemResponse = tOperacaoTransporteTriagemResponse;
  tArrayOfOperacaoTransporteTriagemRelacionadoResponse = tArrayOfOperacaoTransporteTriagemRelacionadoResponse;
  tOperacaoTransporteTriagemRelacionadoResponse = tOperacaoTransporteTriagemRelacionadoResponse;
  tConferirDocumentacaoTriagemResponse = tConferirDocumentacaoTriagemResponse;
  tAssociacaoCartaoTransportadorRequest = tAssociacaoCartaoTransportadorRequest;
  tProcessarCargaFreteAvulsaRequest = tProcessarCargaFreteAvulsaRequest;
  tProcessarCargaFreteAvulsaResponse = tProcessarCargaFreteAvulsaResponse;
  tSubstituirCartaoDoPortadorRequest = tSubstituirCartaoDoPortadorRequest;
  tBuscarParametrosComerciaisResponse = tBuscarParametrosComerciaisResponse;
  tExtratoResponse = tExtratoResponse;
  tArrayOfContaVirtualMovimentoResponse = tArrayOfContaVirtualMovimentoResponse;
  tContaVirtualMovimentoResponse = tContaVirtualMovimentoResponse;
  tBuscarCobrancaGestoraResponse = tBuscarCobrancaGestoraResponse;
  tArrayOfCobrancaGestoraResponse = tArrayOfCobrancaGestoraResponse;
  tCobrancaGestoraResponse = tCobrancaGestoraResponse;
  tEmitirReciboValePedagioVectioResponse = tEmitirReciboValePedagioVectioResponse;
  tEmitirReciboValePedagioViaFacilResponse = tEmitirReciboValePedagioViaFacilResponse;
  tEmitirDeclaracaoOperacaoTransporteResponse = tEmitirDeclaracaoOperacaoTransporteResponse;
  tEmitirContratoOperacaoTransporteResponse = tEmitirContratoOperacaoTransporteResponse;
  tBaseTriagemDocumentoObjetoRequest = tBaseTriagemDocumentoObjetoRequest;
  tObterTriagemDocumentoObjetoResponse = tObterTriagemDocumentoObjetoResponse;
  tBuscarTriagemDocumentoObjetoResponse = tBuscarTriagemDocumentoObjetoResponse;
  tArrayOfBaseTriagemDocumentoObjetoRequest = tArrayOfBaseTriagemDocumentoObjetoRequest;
  tCadastroMotoristaRequest = tCadastroMotoristaRequest;
  tCadastroMotoristaResponse = tCadastroMotoristaResponse;
  tObterMotoristaResponse = tObterMotoristaResponse;
  tBaseMotoristaRequestResponse = tBaseMotoristaRequestResponse;
  tBuscarMotoristaResponse = tBuscarMotoristaResponse;
  tArrayOfBaseMotoristaRequestResponse = tArrayOfBaseMotoristaRequestResponse;
  tComprarValePedagioAvulsoRequest = tComprarValePedagioAvulsoRequest;
  tComprarValePedagioAvulsoResponse = tComprarValePedagioAvulsoResponse;
  tObterLogRequisicoesResponse = tObterLogRequisicoesResponse;
  tObterCustoRotaRequest = tObterCustoRotaRequest;
  tObterCustoRotaResponse = tObterCustoRotaResponse;
  tArrayOfConsultaRotaMapLinkParadaResponse = tArrayOfConsultaRotaMapLinkParadaResponse;
  tConsultaRotaMapLinkParadaResponse = tConsultaRotaMapLinkParadaResponse;
  tArrayOfConsultaRotaMapLinkPedagiosResponse = tArrayOfConsultaRotaMapLinkPedagiosResponse;
  tConsultaRotaMapLinkPedagiosResponse = tConsultaRotaMapLinkPedagiosResponse;
  tDadosInteresseRotaResponse = tDadosInteresseRotaResponse;
}
const
  snDadosInteresseRotaResponse = 'DadosInteresseRotaResponse';

type
  tDadosInteresseRotaResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snConsultaRotaMapLinkPedagiosResponse = 'ConsultaRotaMapLinkPedagiosResponse';

type
  tConsultaRotaMapLinkPedagiosResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snArrayOfConsultaRotaMapLinkPedagiosResponse = 'ArrayOfConsultaRotaMapLinkPedagiosResponse';
  snArrayOfConsultaRotaMapLinkPedagiosResponse_ConsultaRotaMapLinkPedagiosResponse = 'ConsultaRotaMapLinkPedagiosResponse';

type
  tArrayOfConsultaRotaMapLinkPedagiosResponse = class
  private
    F_NameSpaceAlias: string;
    FConsultaRotaMapLinkPedagiosResponse: tManagedStringList; // of tConsultaRotaMapLinkPedagiosResponse(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ConsultaRotaMapLinkPedagiosResponse: tManagedStringList read FConsultaRotaMapLinkPedagiosResponse write FConsultaRotaMapLinkPedagiosResponse; // of tConsultaRotaMapLinkPedagiosResponse
  end;

const
  snConsultaRotaMapLinkParadaResponse = 'ConsultaRotaMapLinkParadaResponse';

type
  tConsultaRotaMapLinkParadaResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snArrayOfConsultaRotaMapLinkParadaResponse = 'ArrayOfConsultaRotaMapLinkParadaResponse';
  snArrayOfConsultaRotaMapLinkParadaResponse_ConsultaRotaMapLinkParadaResponse = 'ConsultaRotaMapLinkParadaResponse';

type
  tArrayOfConsultaRotaMapLinkParadaResponse = class
  private
    F_NameSpaceAlias: string;
    FConsultaRotaMapLinkParadaResponse: tManagedStringList; // of tConsultaRotaMapLinkParadaResponse(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ConsultaRotaMapLinkParadaResponse: tManagedStringList read FConsultaRotaMapLinkParadaResponse write FConsultaRotaMapLinkParadaResponse; // of tConsultaRotaMapLinkParadaResponse
  end;

const
  snObterCustoRotaResponse = 'ObterCustoRotaResponse';

type
  tObterCustoRotaResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snObterCustoRotaRequest = 'ObterCustoRotaRequest';
  snObterCustoRotaRequest_IdRotaModelo = 'IdRotaModelo';
  snObterCustoRotaRequest_ModoCompra = 'ModoCompra';
  snObterCustoRotaRequest_IdDmCategoriaVeiculo = 'IdDmCategoriaVeiculo';

type
  tObterCustoRotaRequest = class
  private
    F_NameSpaceAlias: string;
    FIdRotaModelo: integer; // (E)
    FIdRotaModelo_IsSet_: boolean;
    FModoCompra: integer; // (E)
    FModoCompra_IsSet_: boolean;
    FIdDmCategoriaVeiculo: integer; // (E)
    FIdDmCategoriaVeiculo_IsSet_: boolean;
    procedure SetIdRotaModelo(value:integer);
    procedure SetModoCompra(value:integer);
    procedure SetIdDmCategoriaVeiculo(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property IdRotaModelo: integer read FIdRotaModelo write SetIdRotaModelo;
    property IdRotaModelo_IsSet_:boolean read FIdRotaModelo_IsSet_;
    property ModoCompra: integer read FModoCompra write SetModoCompra;
    property ModoCompra_IsSet_:boolean read FModoCompra_IsSet_;
    property IdDmCategoriaVeiculo: integer read FIdDmCategoriaVeiculo write SetIdDmCategoriaVeiculo;
    property IdDmCategoriaVeiculo_IsSet_:boolean read FIdDmCategoriaVeiculo_IsSet_;
  end;

const
  snObterLogRequisicoesResponse = 'ObterLogRequisicoesResponse';

type
  tObterLogRequisicoesResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snComprarValePedagioAvulsoResponse = 'ComprarValePedagioAvulsoResponse';

type
  tComprarValePedagioAvulsoResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snComprarValePedagioAvulsoRequest = 'ComprarValePedagioAvulsoRequest';
  snComprarValePedagioAvulsoRequest_CodigoCategoriaVeiculo = 'CodigoCategoriaVeiculo';
  snComprarValePedagioAvulsoRequest_Valor = 'Valor';
  snComprarValePedagioAvulsoRequest_CodigoCentroDeCusto = 'CodigoCentroDeCusto';
  snComprarValePedagioAvulsoRequest_Placa = 'Placa';
  snComprarValePedagioAvulsoRequest_MotoristaNome = 'MotoristaNome';
  snComprarValePedagioAvulsoRequest_MotoristaCPF = 'MotoristaCPF';
  snComprarValePedagioAvulsoRequest_MotoristaRNTRC = 'MotoristaRNTRC';
  snComprarValePedagioAvulsoRequest_NumeroDocumento = 'NumeroDocumento';
  snComprarValePedagioAvulsoRequest_NumeroCartao = 'NumeroCartao';
  snComprarValePedagioAvulsoRequest_MunicipioOrigemCodigoIBGE = 'MunicipioOrigemCodigoIBGE';
  snComprarValePedagioAvulsoRequest_MunicipioDestinoCodigoIBGE = 'MunicipioDestinoCodigoIBGE';

type
  tComprarValePedagioAvulsoRequest = class
  private
    F_NameSpaceAlias: string;
    FCodigoCategoriaVeiculo: integer; // (E)
    FCodigoCategoriaVeiculo_IsSet_: boolean;
    FValor: extended; // (E)
    FValor_IsSet_: boolean;
    FCodigoCentroDeCusto: integer; // (E)
    FCodigoCentroDeCusto_IsSet_: boolean;
    FPlaca: string; // (E)
    FPlaca_IsSet_: boolean;
    FMotoristaNome: string; // (E)
    FMotoristaNome_IsSet_: boolean;
    FMotoristaCPF: string; // (E)
    FMotoristaCPF_IsSet_: boolean;
    FMotoristaRNTRC: string; // (E)
    FMotoristaRNTRC_IsSet_: boolean;
    FNumeroDocumento: string; // (E)
    FNumeroDocumento_IsSet_: boolean;
    FNumeroCartao: string; // (E)
    FNumeroCartao_IsSet_: boolean;
    FMunicipioOrigemCodigoIBGE: integer; // (E)
    FMunicipioOrigemCodigoIBGE_IsSet_: boolean;
    FMunicipioDestinoCodigoIBGE: integer; // (E)
    FMunicipioDestinoCodigoIBGE_IsSet_: boolean;
    procedure SetCodigoCategoriaVeiculo(value:integer);
    procedure SetValor(value:extended);
    procedure SetCodigoCentroDeCusto(value:integer);
    procedure SetPlaca(value:string);
    procedure SetMotoristaNome(value:string);
    procedure SetMotoristaCPF(value:string);
    procedure SetMotoristaRNTRC(value:string);
    procedure SetNumeroDocumento(value:string);
    procedure SetNumeroCartao(value:string);
    procedure SetMunicipioOrigemCodigoIBGE(value:integer);
    procedure SetMunicipioDestinoCodigoIBGE(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CodigoCategoriaVeiculo: integer read FCodigoCategoriaVeiculo write SetCodigoCategoriaVeiculo;
    property CodigoCategoriaVeiculo_IsSet_:boolean read FCodigoCategoriaVeiculo_IsSet_;
    property Valor: extended read FValor write SetValor;
    property Valor_IsSet_:boolean read FValor_IsSet_;
    property CodigoCentroDeCusto: integer read FCodigoCentroDeCusto write SetCodigoCentroDeCusto;
    property CodigoCentroDeCusto_IsSet_:boolean read FCodigoCentroDeCusto_IsSet_;
    property Placa: string read FPlaca write SetPlaca;
    property Placa_IsSet_:boolean read FPlaca_IsSet_;
    property MotoristaNome: string read FMotoristaNome write SetMotoristaNome;
    property MotoristaNome_IsSet_:boolean read FMotoristaNome_IsSet_;
    property MotoristaCPF: string read FMotoristaCPF write SetMotoristaCPF;
    property MotoristaCPF_IsSet_:boolean read FMotoristaCPF_IsSet_;
    property MotoristaRNTRC: string read FMotoristaRNTRC write SetMotoristaRNTRC;
    property MotoristaRNTRC_IsSet_:boolean read FMotoristaRNTRC_IsSet_;
    property NumeroDocumento: string read FNumeroDocumento write SetNumeroDocumento;
    property NumeroDocumento_IsSet_:boolean read FNumeroDocumento_IsSet_;
    property NumeroCartao: string read FNumeroCartao write SetNumeroCartao;
    property NumeroCartao_IsSet_:boolean read FNumeroCartao_IsSet_;
    property MunicipioOrigemCodigoIBGE: integer read FMunicipioOrigemCodigoIBGE write SetMunicipioOrigemCodigoIBGE;
    property MunicipioOrigemCodigoIBGE_IsSet_:boolean read FMunicipioOrigemCodigoIBGE_IsSet_;
    property MunicipioDestinoCodigoIBGE: integer read FMunicipioDestinoCodigoIBGE write SetMunicipioDestinoCodigoIBGE;
    property MunicipioDestinoCodigoIBGE_IsSet_:boolean read FMunicipioDestinoCodigoIBGE_IsSet_;
  end;

const
  snBuscarMotoristaResponse = 'BuscarMotoristaResponse';

type
  tBuscarMotoristaResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snBaseMotoristaRequestResponse = 'BaseMotoristaRequestResponse';
  snBaseMotoristaRequestResponse_Ativo = 'Ativo';
  snBaseMotoristaRequestResponse_Bairro = 'Bairro';
  snBaseMotoristaRequestResponse_CEP = 'CEP';
  snBaseMotoristaRequestResponse_CPF = 'CPF';
  snBaseMotoristaRequestResponse_Cidade = 'Cidade';
  snBaseMotoristaRequestResponse_CodigoAgencia = 'CodigoAgencia';
  snBaseMotoristaRequestResponse_CodigoBanco = 'CodigoBanco';
  snBaseMotoristaRequestResponse_CodigoMotorista = 'CodigoMotorista';
  snBaseMotoristaRequestResponse_Complemento = 'Complemento';
  snBaseMotoristaRequestResponse_ContaCorrente = 'ContaCorrente';
  snBaseMotoristaRequestResponse_DataHoraAtualizacao = 'DataHoraAtualizacao';
  snBaseMotoristaRequestResponse_DataHoraRegistro = 'DataHoraRegistro';
  snBaseMotoristaRequestResponse_DataNascimento = 'DataNascimento';
  snBaseMotoristaRequestResponse_DigitoAgencia = 'DigitoAgencia';
  snBaseMotoristaRequestResponse_DigitoContaCorrente = 'DigitoContaCorrente';
  snBaseMotoristaRequestResponse_Email = 'Email';
  snBaseMotoristaRequestResponse_Estado = 'Estado';
  snBaseMotoristaRequestResponse_EstadoCivil = 'EstadoCivil';
  snBaseMotoristaRequestResponse_Logradouro = 'Logradouro';
  snBaseMotoristaRequestResponse_Nacionalidade = 'Nacionalidade';
  snBaseMotoristaRequestResponse_Nome = 'Nome';
  snBaseMotoristaRequestResponse_NomeMae = 'NomeMae';
  snBaseMotoristaRequestResponse_NomePai = 'NomePai';
  snBaseMotoristaRequestResponse_Numero = 'Numero';
  snBaseMotoristaRequestResponse_NumeroRg = 'NumeroRg';
  snBaseMotoristaRequestResponse_OrgaoEmissorRg = 'OrgaoEmissorRg';
  snBaseMotoristaRequestResponse_Sexo = 'Sexo';
  snBaseMotoristaRequestResponse_Sobrenome = 'Sobrenome';
  snBaseMotoristaRequestResponse_Telefone = 'Telefone';
  snBaseMotoristaRequestResponse_TelefoneCelular = 'TelefoneCelular';

type
  tBaseMotoristaRequestResponse = class
  private
    F_NameSpaceAlias: string;
    FAtivo: boolean; // (E)
    FAtivo_IsSet_: boolean;
    FBairro: string; // (E)
    FBairro_IsSet_: boolean;
    FCEP: string; // (E)
    FCEP_IsSet_: boolean;
    FCPF: string; // (E)
    FCPF_IsSet_: boolean;
    FCidade: string; // (E)
    FCidade_IsSet_: boolean;
    FCodigoAgencia: string; // (E)
    FCodigoAgencia_IsSet_: boolean;
    FCodigoBanco: string; // (E)
    FCodigoBanco_IsSet_: boolean;
    FCodigoMotorista: integer; // (E)
    FCodigoMotorista_IsSet_: boolean;
    FComplemento: string; // (E)
    FComplemento_IsSet_: boolean;
    FContaCorrente: string; // (E)
    FContaCorrente_IsSet_: boolean;
    FDataHoraAtualizacao: tDateTime; // (E)
    FDataHoraAtualizacao_IsSet_: boolean;
    FDataHoraRegistro: tDateTime; // (E)
    FDataHoraRegistro_IsSet_: boolean;
    FDataNascimento: tDateTime; // (E)
    FDataNascimento_IsSet_: boolean;
    FDigitoAgencia: string; // (E)
    FDigitoAgencia_IsSet_: boolean;
    FDigitoContaCorrente: string; // (E)
    FDigitoContaCorrente_IsSet_: boolean;
    FEmail: string; // (E)
    FEmail_IsSet_: boolean;
    FEstado: string; // (E)
    FEstado_IsSet_: boolean;
    FEstadoCivil: string; // (E)
    FEstadoCivil_IsSet_: boolean;
    FLogradouro: string; // (E)
    FLogradouro_IsSet_: boolean;
    FNacionalidade: string; // (E)
    FNacionalidade_IsSet_: boolean;
    FNome: string; // (E)
    FNome_IsSet_: boolean;
    FNomeMae: string; // (E)
    FNomeMae_IsSet_: boolean;
    FNomePai: string; // (E)
    FNomePai_IsSet_: boolean;
    FNumero: string; // (E)
    FNumero_IsSet_: boolean;
    FNumeroRg: string; // (E)
    FNumeroRg_IsSet_: boolean;
    FOrgaoEmissorRg: string; // (E)
    FOrgaoEmissorRg_IsSet_: boolean;
    FSexo: string; // (E)
    FSexo_IsSet_: boolean;
    FSobrenome: string; // (E)
    FSobrenome_IsSet_: boolean;
    FTelefone: string; // (E)
    FTelefone_IsSet_: boolean;
    FTelefoneCelular: string; // (E)
    FTelefoneCelular_IsSet_: boolean;
    procedure SetAtivo(value:boolean);
    procedure SetBairro(value:string);
    procedure SetCEP(value:string);
    procedure SetCPF(value:string);
    procedure SetCidade(value:string);
    procedure SetCodigoAgencia(value:string);
    procedure SetCodigoBanco(value:string);
    procedure SetCodigoMotorista(value:integer);
    procedure SetComplemento(value:string);
    procedure SetContaCorrente(value:string);
    procedure SetDataHoraAtualizacao(value:tDateTime);
    procedure SetDataHoraRegistro(value:tDateTime);
    procedure SetDataNascimento(value:tDateTime);
    procedure SetDigitoAgencia(value:string);
    procedure SetDigitoContaCorrente(value:string);
    procedure SetEmail(value:string);
    procedure SetEstado(value:string);
    procedure SetEstadoCivil(value:string);
    procedure SetLogradouro(value:string);
    procedure SetNacionalidade(value:string);
    procedure SetNome(value:string);
    procedure SetNomeMae(value:string);
    procedure SetNomePai(value:string);
    procedure SetNumero(value:string);
    procedure SetNumeroRg(value:string);
    procedure SetOrgaoEmissorRg(value:string);
    procedure SetSexo(value:string);
    procedure SetSobrenome(value:string);
    procedure SetTelefone(value:string);
    procedure SetTelefoneCelular(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Ativo: boolean read FAtivo write SetAtivo;
    property Ativo_IsSet_:boolean read FAtivo_IsSet_;
    property Bairro: string read FBairro write SetBairro;
    property Bairro_IsSet_:boolean read FBairro_IsSet_;
    property CEP: string read FCEP write SetCEP;
    property CEP_IsSet_:boolean read FCEP_IsSet_;
    property CPF: string read FCPF write SetCPF;
    property CPF_IsSet_:boolean read FCPF_IsSet_;
    property Cidade: string read FCidade write SetCidade;
    property Cidade_IsSet_:boolean read FCidade_IsSet_;
    property CodigoAgencia: string read FCodigoAgencia write SetCodigoAgencia;
    property CodigoAgencia_IsSet_:boolean read FCodigoAgencia_IsSet_;
    property CodigoBanco: string read FCodigoBanco write SetCodigoBanco;
    property CodigoBanco_IsSet_:boolean read FCodigoBanco_IsSet_;
    property CodigoMotorista: integer read FCodigoMotorista write SetCodigoMotorista;
    property CodigoMotorista_IsSet_:boolean read FCodigoMotorista_IsSet_;
    property Complemento: string read FComplemento write SetComplemento;
    property Complemento_IsSet_:boolean read FComplemento_IsSet_;
    property ContaCorrente: string read FContaCorrente write SetContaCorrente;
    property ContaCorrente_IsSet_:boolean read FContaCorrente_IsSet_;
    property DataHoraAtualizacao: tDateTime read FDataHoraAtualizacao write SetDataHoraAtualizacao;
    property DataHoraAtualizacao_IsSet_:boolean read FDataHoraAtualizacao_IsSet_;
    property DataHoraRegistro: tDateTime read FDataHoraRegistro write SetDataHoraRegistro;
    property DataHoraRegistro_IsSet_:boolean read FDataHoraRegistro_IsSet_;
    property DataNascimento: tDateTime read FDataNascimento write SetDataNascimento;
    property DataNascimento_IsSet_:boolean read FDataNascimento_IsSet_;
    property DigitoAgencia: string read FDigitoAgencia write SetDigitoAgencia;
    property DigitoAgencia_IsSet_:boolean read FDigitoAgencia_IsSet_;
    property DigitoContaCorrente: string read FDigitoContaCorrente write SetDigitoContaCorrente;
    property DigitoContaCorrente_IsSet_:boolean read FDigitoContaCorrente_IsSet_;
    property Email: string read FEmail write SetEmail;
    property Email_IsSet_:boolean read FEmail_IsSet_;
    property Estado: string read FEstado write SetEstado;
    property Estado_IsSet_:boolean read FEstado_IsSet_;
    property EstadoCivil: string read FEstadoCivil write SetEstadoCivil;
    property EstadoCivil_IsSet_:boolean read FEstadoCivil_IsSet_;
    property Logradouro: string read FLogradouro write SetLogradouro;
    property Logradouro_IsSet_:boolean read FLogradouro_IsSet_;
    property Nacionalidade: string read FNacionalidade write SetNacionalidade;
    property Nacionalidade_IsSet_:boolean read FNacionalidade_IsSet_;
    property Nome: string read FNome write SetNome;
    property Nome_IsSet_:boolean read FNome_IsSet_;
    property NomeMae: string read FNomeMae write SetNomeMae;
    property NomeMae_IsSet_:boolean read FNomeMae_IsSet_;
    property NomePai: string read FNomePai write SetNomePai;
    property NomePai_IsSet_:boolean read FNomePai_IsSet_;
    property Numero: string read FNumero write SetNumero;
    property Numero_IsSet_:boolean read FNumero_IsSet_;
    property NumeroRg: string read FNumeroRg write SetNumeroRg;
    property NumeroRg_IsSet_:boolean read FNumeroRg_IsSet_;
    property OrgaoEmissorRg: string read FOrgaoEmissorRg write SetOrgaoEmissorRg;
    property OrgaoEmissorRg_IsSet_:boolean read FOrgaoEmissorRg_IsSet_;
    property Sexo: string read FSexo write SetSexo;
    property Sexo_IsSet_:boolean read FSexo_IsSet_;
    property Sobrenome: string read FSobrenome write SetSobrenome;
    property Sobrenome_IsSet_:boolean read FSobrenome_IsSet_;
    property Telefone: string read FTelefone write SetTelefone;
    property Telefone_IsSet_:boolean read FTelefone_IsSet_;
    property TelefoneCelular: string read FTelefoneCelular write SetTelefoneCelular;
    property TelefoneCelular_IsSet_:boolean read FTelefoneCelular_IsSet_;
  end;

const
  snArrayOfBaseMotoristaRequestResponse = 'ArrayOfBaseMotoristaRequestResponse';
  snArrayOfBaseMotoristaRequestResponse_BaseMotoristaRequestResponse = 'BaseMotoristaRequestResponse';

type
  tArrayOfBaseMotoristaRequestResponse = class
  private
    F_NameSpaceAlias: string;
    FBaseMotoristaRequestResponse: tManagedStringList; // of tBaseMotoristaRequestResponse(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property BaseMotoristaRequestResponse: tManagedStringList read FBaseMotoristaRequestResponse write FBaseMotoristaRequestResponse; // of tBaseMotoristaRequestResponse
  end;

const
  snObterMotoristaResponse = 'ObterMotoristaResponse';

type
  tObterMotoristaResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snCadastroMotoristaResponse = 'CadastroMotoristaResponse';

type
  tCadastroMotoristaResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snCadastroMotoristaRequest = 'CadastroMotoristaRequest';
  snCadastroMotoristaRequest_CPFCNPJTransportador = 'CPFCNPJTransportador';
  snCadastroMotoristaRequest_Nome = 'Nome';
  snCadastroMotoristaRequest_Sobrenome = 'Sobrenome';
  snCadastroMotoristaRequest_CPF = 'CPF';
  snCadastroMotoristaRequest_RG = 'RG';
  snCadastroMotoristaRequest_DataNascimento = 'DataNascimento';
  snCadastroMotoristaRequest_Email = 'Email';
  snCadastroMotoristaRequest_TelefoneContato = 'TelefoneContato';
  snCadastroMotoristaRequest_Nacionalidade = 'Nacionalidade';
  snCadastroMotoristaRequest_Endereco = 'Endereco';
  snCadastroMotoristaRequest_Numero = 'Numero';
  snCadastroMotoristaRequest_Complemento = 'Complemento';
  snCadastroMotoristaRequest_CEP = 'CEP';
  snCadastroMotoristaRequest_Bairro = 'Bairro';
  snCadastroMotoristaRequest_MunicipioCodigoIBGE = 'MunicipioCodigoIBGE';
  snCadastroMotoristaRequest_CodigoBanco = 'CodigoBanco';
  snCadastroMotoristaRequest_CodigoAgencia = 'CodigoAgencia';
  snCadastroMotoristaRequest_DigitoAgencia = 'DigitoAgencia';
  snCadastroMotoristaRequest_ContaCorrente = 'ContaCorrente';
  snCadastroMotoristaRequest_DigitoContaCorrente = 'DigitoContaCorrente';

type
  tCadastroMotoristaRequest = class
  private
    F_NameSpaceAlias: string;
    FCPFCNPJTransportador: string; // (E)
    FCPFCNPJTransportador_IsSet_: boolean;
    FNome: string; // (E)
    FNome_IsSet_: boolean;
    FSobrenome: string; // (E)
    FSobrenome_IsSet_: boolean;
    FCPF: string; // (E)
    FCPF_IsSet_: boolean;
    FRG: string; // (E)
    FRG_IsSet_: boolean;
    FDataNascimento: tDateTime; // (E)
    FDataNascimento_IsSet_: boolean;
    FEmail: string; // (E)
    FEmail_IsSet_: boolean;
    FTelefoneContato: string; // (E)
    FTelefoneContato_IsSet_: boolean;
    FNacionalidade: string; // (E)
    FNacionalidade_IsSet_: boolean;
    FEndereco: string; // (E)
    FEndereco_IsSet_: boolean;
    FNumero: string; // (E)
    FNumero_IsSet_: boolean;
    FComplemento: string; // (E)
    FComplemento_IsSet_: boolean;
    FCEP: string; // (E)
    FCEP_IsSet_: boolean;
    FBairro: string; // (E)
    FBairro_IsSet_: boolean;
    FMunicipioCodigoIBGE: integer; // (E)
    FMunicipioCodigoIBGE_IsSet_: boolean;
    FCodigoBanco: string; // (E)
    FCodigoBanco_IsSet_: boolean;
    FCodigoAgencia: string; // (E)
    FCodigoAgencia_IsSet_: boolean;
    FDigitoAgencia: string; // (E)
    FDigitoAgencia_IsSet_: boolean;
    FContaCorrente: string; // (E)
    FContaCorrente_IsSet_: boolean;
    FDigitoContaCorrente: string; // (E)
    FDigitoContaCorrente_IsSet_: boolean;
    procedure SetCPFCNPJTransportador(value:string);
    procedure SetNome(value:string);
    procedure SetSobrenome(value:string);
    procedure SetCPF(value:string);
    procedure SetRG(value:string);
    procedure SetDataNascimento(value:tDateTime);
    procedure SetEmail(value:string);
    procedure SetTelefoneContato(value:string);
    procedure SetNacionalidade(value:string);
    procedure SetEndereco(value:string);
    procedure SetNumero(value:string);
    procedure SetComplemento(value:string);
    procedure SetCEP(value:string);
    procedure SetBairro(value:string);
    procedure SetMunicipioCodigoIBGE(value:integer);
    procedure SetCodigoBanco(value:string);
    procedure SetCodigoAgencia(value:string);
    procedure SetDigitoAgencia(value:string);
    procedure SetContaCorrente(value:string);
    procedure SetDigitoContaCorrente(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CPFCNPJTransportador: string read FCPFCNPJTransportador write SetCPFCNPJTransportador;
    property CPFCNPJTransportador_IsSet_:boolean read FCPFCNPJTransportador_IsSet_;
    property Nome: string read FNome write SetNome;
    property Nome_IsSet_:boolean read FNome_IsSet_;
    property Sobrenome: string read FSobrenome write SetSobrenome;
    property Sobrenome_IsSet_:boolean read FSobrenome_IsSet_;
    property CPF: string read FCPF write SetCPF;
    property CPF_IsSet_:boolean read FCPF_IsSet_;
    property RG: string read FRG write SetRG;
    property RG_IsSet_:boolean read FRG_IsSet_;
    property DataNascimento: tDateTime read FDataNascimento write SetDataNascimento;
    property DataNascimento_IsSet_:boolean read FDataNascimento_IsSet_;
    property Email: string read FEmail write SetEmail;
    property Email_IsSet_:boolean read FEmail_IsSet_;
    property TelefoneContato: string read FTelefoneContato write SetTelefoneContato;
    property TelefoneContato_IsSet_:boolean read FTelefoneContato_IsSet_;
    property Nacionalidade: string read FNacionalidade write SetNacionalidade;
    property Nacionalidade_IsSet_:boolean read FNacionalidade_IsSet_;
    property Endereco: string read FEndereco write SetEndereco;
    property Endereco_IsSet_:boolean read FEndereco_IsSet_;
    property Numero: string read FNumero write SetNumero;
    property Numero_IsSet_:boolean read FNumero_IsSet_;
    property Complemento: string read FComplemento write SetComplemento;
    property Complemento_IsSet_:boolean read FComplemento_IsSet_;
    property CEP: string read FCEP write SetCEP;
    property CEP_IsSet_:boolean read FCEP_IsSet_;
    property Bairro: string read FBairro write SetBairro;
    property Bairro_IsSet_:boolean read FBairro_IsSet_;
    property MunicipioCodigoIBGE: integer read FMunicipioCodigoIBGE write SetMunicipioCodigoIBGE;
    property MunicipioCodigoIBGE_IsSet_:boolean read FMunicipioCodigoIBGE_IsSet_;
    property CodigoBanco: string read FCodigoBanco write SetCodigoBanco;
    property CodigoBanco_IsSet_:boolean read FCodigoBanco_IsSet_;
    property CodigoAgencia: string read FCodigoAgencia write SetCodigoAgencia;
    property CodigoAgencia_IsSet_:boolean read FCodigoAgencia_IsSet_;
    property DigitoAgencia: string read FDigitoAgencia write SetDigitoAgencia;
    property DigitoAgencia_IsSet_:boolean read FDigitoAgencia_IsSet_;
    property ContaCorrente: string read FContaCorrente write SetContaCorrente;
    property ContaCorrente_IsSet_:boolean read FContaCorrente_IsSet_;
    property DigitoContaCorrente: string read FDigitoContaCorrente write SetDigitoContaCorrente;
    property DigitoContaCorrente_IsSet_:boolean read FDigitoContaCorrente_IsSet_;
  end;

const
  snBuscarTriagemDocumentoObjetoResponse = 'BuscarTriagemDocumentoObjetoResponse';

type
  tBuscarTriagemDocumentoObjetoResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snObterTriagemDocumentoObjetoResponse = 'ObterTriagemDocumentoObjetoResponse';

type
  tObterTriagemDocumentoObjetoResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snBaseTriagemDocumentoObjetoRequest = 'BaseTriagemDocumentoObjetoRequest';
  snBaseTriagemDocumentoObjetoRequest_Ativo = 'Ativo';
  snBaseTriagemDocumentoObjetoRequest_CodigoCliente = 'CodigoCliente';
  snBaseTriagemDocumentoObjetoRequest_DataHoraAtualizacao = 'DataHoraAtualizacao';
  snBaseTriagemDocumentoObjetoRequest_DataHoraRegistro = 'DataHoraRegistro';
  snBaseTriagemDocumentoObjetoRequest_DocumentoObjeto = 'DocumentoObjeto';
  snBaseTriagemDocumentoObjetoRequest_ExibeEmTela = 'ExibeEmTela';
  snBaseTriagemDocumentoObjetoRequest_ExigeDocumentoObjetoFisico = 'ExigeDocumentoObjetoFisico';
  snBaseTriagemDocumentoObjetoRequest_ExigeUpload = 'ExigeUpload';
  snBaseTriagemDocumentoObjetoRequest_IdCliente = 'IdCliente';
  snBaseTriagemDocumentoObjetoRequest_IdTriagemDocumentoObjeto = 'IdTriagemDocumentoObjeto';
  snBaseTriagemDocumentoObjetoRequest_InstrucaoRemetente = 'InstrucaoRemetente';
  snBaseTriagemDocumentoObjetoRequest_NomeDocumentoObjeto = 'NomeDocumentoObjeto';

type
  tBaseTriagemDocumentoObjetoRequest = class
  private
    F_NameSpaceAlias: string;
    FAtivo: boolean; // (E)
    FAtivo_IsSet_: boolean;
    FCodigoCliente: string; // (E)
    FCodigoCliente_IsSet_: boolean;
    FDataHoraAtualizacao: tDateTime; // (E)
    FDataHoraAtualizacao_IsSet_: boolean;
    FDataHoraRegistro: tDateTime; // (E)
    FDataHoraRegistro_IsSet_: boolean;
    FDocumentoObjeto: string; // (E)
    FDocumentoObjeto_IsSet_: boolean;
    FExibeEmTela: boolean; // (E)
    FExibeEmTela_IsSet_: boolean;
    FExigeDocumentoObjetoFisico: string; // (E)
    FExigeDocumentoObjetoFisico_IsSet_: boolean;
    FExigeUpload: string; // (E)
    FExigeUpload_IsSet_: boolean;
    FIdCliente: integer; // (E)
    FIdCliente_IsSet_: boolean;
    FIdTriagemDocumentoObjeto: integer; // (E)
    FIdTriagemDocumentoObjeto_IsSet_: boolean;
    FInstrucaoRemetente: string; // (E)
    FInstrucaoRemetente_IsSet_: boolean;
    FNomeDocumentoObjeto: string; // (E)
    FNomeDocumentoObjeto_IsSet_: boolean;
    procedure SetAtivo(value:boolean);
    procedure SetCodigoCliente(value:string);
    procedure SetDataHoraAtualizacao(value:tDateTime);
    procedure SetDataHoraRegistro(value:tDateTime);
    procedure SetDocumentoObjeto(value:string);
    procedure SetExibeEmTela(value:boolean);
    procedure SetExigeDocumentoObjetoFisico(value:string);
    procedure SetExigeUpload(value:string);
    procedure SetIdCliente(value:integer);
    procedure SetIdTriagemDocumentoObjeto(value:integer);
    procedure SetInstrucaoRemetente(value:string);
    procedure SetNomeDocumentoObjeto(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Ativo: boolean read FAtivo write SetAtivo;
    property Ativo_IsSet_:boolean read FAtivo_IsSet_;
    property CodigoCliente: string read FCodigoCliente write SetCodigoCliente;
    property CodigoCliente_IsSet_:boolean read FCodigoCliente_IsSet_;
    property DataHoraAtualizacao: tDateTime read FDataHoraAtualizacao write SetDataHoraAtualizacao;
    property DataHoraAtualizacao_IsSet_:boolean read FDataHoraAtualizacao_IsSet_;
    property DataHoraRegistro: tDateTime read FDataHoraRegistro write SetDataHoraRegistro;
    property DataHoraRegistro_IsSet_:boolean read FDataHoraRegistro_IsSet_;
    property DocumentoObjeto: string read FDocumentoObjeto write SetDocumentoObjeto;
    property DocumentoObjeto_IsSet_:boolean read FDocumentoObjeto_IsSet_;
    property ExibeEmTela: boolean read FExibeEmTela write SetExibeEmTela;
    property ExibeEmTela_IsSet_:boolean read FExibeEmTela_IsSet_;
    property ExigeDocumentoObjetoFisico: string read FExigeDocumentoObjetoFisico write SetExigeDocumentoObjetoFisico;
    property ExigeDocumentoObjetoFisico_IsSet_:boolean read FExigeDocumentoObjetoFisico_IsSet_;
    property ExigeUpload: string read FExigeUpload write SetExigeUpload;
    property ExigeUpload_IsSet_:boolean read FExigeUpload_IsSet_;
    property IdCliente: integer read FIdCliente write SetIdCliente;
    property IdCliente_IsSet_:boolean read FIdCliente_IsSet_;
    property IdTriagemDocumentoObjeto: integer read FIdTriagemDocumentoObjeto write SetIdTriagemDocumentoObjeto;
    property IdTriagemDocumentoObjeto_IsSet_:boolean read FIdTriagemDocumentoObjeto_IsSet_;
    property InstrucaoRemetente: string read FInstrucaoRemetente write SetInstrucaoRemetente;
    property InstrucaoRemetente_IsSet_:boolean read FInstrucaoRemetente_IsSet_;
    property NomeDocumentoObjeto: string read FNomeDocumentoObjeto write SetNomeDocumentoObjeto;
    property NomeDocumentoObjeto_IsSet_:boolean read FNomeDocumentoObjeto_IsSet_;
  end;

const
  snArrayOfBaseTriagemDocumentoObjetoRequest = 'ArrayOfBaseTriagemDocumentoObjetoRequest';
  snArrayOfBaseTriagemDocumentoObjetoRequest_BaseTriagemDocumentoObjetoRequest = 'BaseTriagemDocumentoObjetoRequest';

type
  tArrayOfBaseTriagemDocumentoObjetoRequest = class
  private
    F_NameSpaceAlias: string;
    FBaseTriagemDocumentoObjetoRequest: tManagedStringList; // of tBaseTriagemDocumentoObjetoRequest(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property BaseTriagemDocumentoObjetoRequest: tManagedStringList read FBaseTriagemDocumentoObjetoRequest write FBaseTriagemDocumentoObjetoRequest; // of tBaseTriagemDocumentoObjetoRequest
  end;

const
  snEmitirContratoOperacaoTransporteResponse = 'EmitirContratoOperacaoTransporteResponse';

type
  tEmitirContratoOperacaoTransporteResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snEmitirDeclaracaoOperacaoTransporteResponse = 'EmitirDeclaracaoOperacaoTransporteResponse';

type
  tEmitirDeclaracaoOperacaoTransporteResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snEmitirReciboValePedagioViaFacilResponse = 'EmitirReciboValePedagioViaFacilResponse';

type
  tEmitirReciboValePedagioViaFacilResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snEmitirReciboValePedagioVectioResponse = 'EmitirReciboValePedagioVectioResponse';

type
  tEmitirReciboValePedagioVectioResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snCobrancaGestoraResponse = 'CobrancaGestoraResponse';

type
  tCobrancaGestoraResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snArrayOfCobrancaGestoraResponse = 'ArrayOfCobrancaGestoraResponse';
  snArrayOfCobrancaGestoraResponse_CobrancaGestoraResponse = 'CobrancaGestoraResponse';

type
  tArrayOfCobrancaGestoraResponse = class
  private
    F_NameSpaceAlias: string;
    FCobrancaGestoraResponse: tManagedStringList; // of tCobrancaGestoraResponse(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CobrancaGestoraResponse: tManagedStringList read FCobrancaGestoraResponse write FCobrancaGestoraResponse; // of tCobrancaGestoraResponse
  end;

const
  snBuscarCobrancaGestoraResponse = 'BuscarCobrancaGestoraResponse';

type
  tBuscarCobrancaGestoraResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snContaVirtualMovimentoResponse = 'ContaVirtualMovimentoResponse';

type
  tContaVirtualMovimentoResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snArrayOfContaVirtualMovimentoResponse = 'ArrayOfContaVirtualMovimentoResponse';
  snArrayOfContaVirtualMovimentoResponse_ContaVirtualMovimentoResponse = 'ContaVirtualMovimentoResponse';

type
  tArrayOfContaVirtualMovimentoResponse = class
  private
    F_NameSpaceAlias: string;
    FContaVirtualMovimentoResponse: tManagedStringList; // of tContaVirtualMovimentoResponse(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ContaVirtualMovimentoResponse: tManagedStringList read FContaVirtualMovimentoResponse write FContaVirtualMovimentoResponse; // of tContaVirtualMovimentoResponse
  end;

const
  snExtratoResponse = 'ExtratoResponse';

type
  tExtratoResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snBuscarParametrosComerciaisResponse = 'BuscarParametrosComerciaisResponse';

type
  tBuscarParametrosComerciaisResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snSubstituirCartaoDoPortadorRequest = 'SubstituirCartaoDoPortadorRequest';
  snSubstituirCartaoDoPortadorRequest_CpfPortador = 'CpfPortador';
  snSubstituirCartaoDoPortadorRequest_NumeroCartaoNovo = 'NumeroCartaoNovo';

type
  tSubstituirCartaoDoPortadorRequest = class
  private
    F_NameSpaceAlias: string;
    FCpfPortador: string; // (E)
    FCpfPortador_IsSet_: boolean;
    FNumeroCartaoNovo: string; // (E)
    FNumeroCartaoNovo_IsSet_: boolean;
    procedure SetCpfPortador(value:string);
    procedure SetNumeroCartaoNovo(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CpfPortador: string read FCpfPortador write SetCpfPortador;
    property CpfPortador_IsSet_:boolean read FCpfPortador_IsSet_;
    property NumeroCartaoNovo: string read FNumeroCartaoNovo write SetNumeroCartaoNovo;
    property NumeroCartaoNovo_IsSet_:boolean read FNumeroCartaoNovo_IsSet_;
  end;

const
  snProcessarCargaFreteAvulsaResponse = 'ProcessarCargaFreteAvulsaResponse';

type
  tProcessarCargaFreteAvulsaResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snProcessarCargaFreteAvulsaRequest = 'ProcessarCargaFreteAvulsaRequest';
  snProcessarCargaFreteAvulsaRequest_NumeroCartao = 'NumeroCartao';
  snProcessarCargaFreteAvulsaRequest_Valor = 'Valor';
  snProcessarCargaFreteAvulsaRequest_Comentario = 'Comentario';

type
  tProcessarCargaFreteAvulsaRequest = class
  private
    F_NameSpaceAlias: string;
    FNumeroCartao: string; // (E)
    FNumeroCartao_IsSet_: boolean;
    FValor: extended; // (E)
    FValor_IsSet_: boolean;
    FComentario: string; // (E)
    FComentario_IsSet_: boolean;
    procedure SetNumeroCartao(value:string);
    procedure SetValor(value:extended);
    procedure SetComentario(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property NumeroCartao: string read FNumeroCartao write SetNumeroCartao;
    property NumeroCartao_IsSet_:boolean read FNumeroCartao_IsSet_;
    property Valor: extended read FValor write SetValor;
    property Valor_IsSet_:boolean read FValor_IsSet_;
    property Comentario: string read FComentario write SetComentario;
    property Comentario_IsSet_:boolean read FComentario_IsSet_;
  end;

const
  snAssociacaoCartaoTransportadorRequest = 'AssociacaoCartaoTransportadorRequest';
  snAssociacaoCartaoTransportadorRequest_CNPJTransportador = 'CNPJTransportador';
  snAssociacaoCartaoTransportadorRequest_NumeroCartao = 'NumeroCartao';
  snAssociacaoCartaoTransportadorRequest_Nome = 'Nome';
  snAssociacaoCartaoTransportadorRequest_Sobrenome = 'Sobrenome';
  snAssociacaoCartaoTransportadorRequest_CPF = 'CPF';
  snAssociacaoCartaoTransportadorRequest_RG = 'RG';
  snAssociacaoCartaoTransportadorRequest_DataNascimento = 'DataNascimento';
  snAssociacaoCartaoTransportadorRequest_Email = 'Email';
  snAssociacaoCartaoTransportadorRequest_TelefoneContato = 'TelefoneContato';
  snAssociacaoCartaoTransportadorRequest_Nacionalidade = 'Nacionalidade';
  snAssociacaoCartaoTransportadorRequest_Endereco = 'Endereco';
  snAssociacaoCartaoTransportadorRequest_Numero = 'Numero';
  snAssociacaoCartaoTransportadorRequest_Complemento = 'Complemento';
  snAssociacaoCartaoTransportadorRequest_CEP = 'CEP';
  snAssociacaoCartaoTransportadorRequest_Bairro = 'Bairro';
  snAssociacaoCartaoTransportadorRequest_MunicipioCodigoIBGE = 'MunicipioCodigoIBGE';
  snAssociacaoCartaoTransportadorRequest_CodigoBanco = 'CodigoBanco';
  snAssociacaoCartaoTransportadorRequest_CodigoAgencia = 'CodigoAgencia';
  snAssociacaoCartaoTransportadorRequest_DigitoAgencia = 'DigitoAgencia';
  snAssociacaoCartaoTransportadorRequest_ContaCorrente = 'ContaCorrente';
  snAssociacaoCartaoTransportadorRequest_DigitoContaCorrente = 'DigitoContaCorrente';

type
  tAssociacaoCartaoTransportadorRequest = class
  private
    F_NameSpaceAlias: string;
    FCNPJTransportador: string; // (E)
    FCNPJTransportador_IsSet_: boolean;
    FNumeroCartao: string; // (E)
    FNumeroCartao_IsSet_: boolean;
    FNome: string; // (E)
    FNome_IsSet_: boolean;
    FSobrenome: string; // (E)
    FSobrenome_IsSet_: boolean;
    FCPF: string; // (E)
    FCPF_IsSet_: boolean;
    FRG: string; // (E)
    FRG_IsSet_: boolean;
    FDataNascimento: tDateTime; // (E)
    FDataNascimento_IsSet_: boolean;
    FEmail: string; // (E)
    FEmail_IsSet_: boolean;
    FTelefoneContato: string; // (E)
    FTelefoneContato_IsSet_: boolean;
    FNacionalidade: string; // (E)
    FNacionalidade_IsSet_: boolean;
    FEndereco: string; // (E)
    FEndereco_IsSet_: boolean;
    FNumero: string; // (E)
    FNumero_IsSet_: boolean;
    FComplemento: string; // (E)
    FComplemento_IsSet_: boolean;
    FCEP: string; // (E)
    FCEP_IsSet_: boolean;
    FBairro: string; // (E)
    FBairro_IsSet_: boolean;
    FMunicipioCodigoIBGE: integer; // (E)
    FMunicipioCodigoIBGE_IsSet_: boolean;
    FCodigoBanco: string; // (E)
    FCodigoBanco_IsSet_: boolean;
    FCodigoAgencia: string; // (E)
    FCodigoAgencia_IsSet_: boolean;
    FDigitoAgencia: string; // (E)
    FDigitoAgencia_IsSet_: boolean;
    FContaCorrente: string; // (E)
    FContaCorrente_IsSet_: boolean;
    FDigitoContaCorrente: string; // (E)
    FDigitoContaCorrente_IsSet_: boolean;
    procedure SetCNPJTransportador(value:string);
    procedure SetNumeroCartao(value:string);
    procedure SetNome(value:string);
    procedure SetSobrenome(value:string);
    procedure SetCPF(value:string);
    procedure SetRG(value:string);
    procedure SetDataNascimento(value:tDateTime);
    procedure SetEmail(value:string);
    procedure SetTelefoneContato(value:string);
    procedure SetNacionalidade(value:string);
    procedure SetEndereco(value:string);
    procedure SetNumero(value:string);
    procedure SetComplemento(value:string);
    procedure SetCEP(value:string);
    procedure SetBairro(value:string);
    procedure SetMunicipioCodigoIBGE(value:integer);
    procedure SetCodigoBanco(value:string);
    procedure SetCodigoAgencia(value:string);
    procedure SetDigitoAgencia(value:string);
    procedure SetContaCorrente(value:string);
    procedure SetDigitoContaCorrente(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CNPJTransportador: string read FCNPJTransportador write SetCNPJTransportador;
    property CNPJTransportador_IsSet_:boolean read FCNPJTransportador_IsSet_;
    property NumeroCartao: string read FNumeroCartao write SetNumeroCartao;
    property NumeroCartao_IsSet_:boolean read FNumeroCartao_IsSet_;
    property Nome: string read FNome write SetNome;
    property Nome_IsSet_:boolean read FNome_IsSet_;
    property Sobrenome: string read FSobrenome write SetSobrenome;
    property Sobrenome_IsSet_:boolean read FSobrenome_IsSet_;
    property CPF: string read FCPF write SetCPF;
    property CPF_IsSet_:boolean read FCPF_IsSet_;
    property RG: string read FRG write SetRG;
    property RG_IsSet_:boolean read FRG_IsSet_;
    property DataNascimento: tDateTime read FDataNascimento write SetDataNascimento;
    property DataNascimento_IsSet_:boolean read FDataNascimento_IsSet_;
    property Email: string read FEmail write SetEmail;
    property Email_IsSet_:boolean read FEmail_IsSet_;
    property TelefoneContato: string read FTelefoneContato write SetTelefoneContato;
    property TelefoneContato_IsSet_:boolean read FTelefoneContato_IsSet_;
    property Nacionalidade: string read FNacionalidade write SetNacionalidade;
    property Nacionalidade_IsSet_:boolean read FNacionalidade_IsSet_;
    property Endereco: string read FEndereco write SetEndereco;
    property Endereco_IsSet_:boolean read FEndereco_IsSet_;
    property Numero: string read FNumero write SetNumero;
    property Numero_IsSet_:boolean read FNumero_IsSet_;
    property Complemento: string read FComplemento write SetComplemento;
    property Complemento_IsSet_:boolean read FComplemento_IsSet_;
    property CEP: string read FCEP write SetCEP;
    property CEP_IsSet_:boolean read FCEP_IsSet_;
    property Bairro: string read FBairro write SetBairro;
    property Bairro_IsSet_:boolean read FBairro_IsSet_;
    property MunicipioCodigoIBGE: integer read FMunicipioCodigoIBGE write SetMunicipioCodigoIBGE;
    property MunicipioCodigoIBGE_IsSet_:boolean read FMunicipioCodigoIBGE_IsSet_;
    property CodigoBanco: string read FCodigoBanco write SetCodigoBanco;
    property CodigoBanco_IsSet_:boolean read FCodigoBanco_IsSet_;
    property CodigoAgencia: string read FCodigoAgencia write SetCodigoAgencia;
    property CodigoAgencia_IsSet_:boolean read FCodigoAgencia_IsSet_;
    property DigitoAgencia: string read FDigitoAgencia write SetDigitoAgencia;
    property DigitoAgencia_IsSet_:boolean read FDigitoAgencia_IsSet_;
    property ContaCorrente: string read FContaCorrente write SetContaCorrente;
    property ContaCorrente_IsSet_:boolean read FContaCorrente_IsSet_;
    property DigitoContaCorrente: string read FDigitoContaCorrente write SetDigitoContaCorrente;
    property DigitoContaCorrente_IsSet_:boolean read FDigitoContaCorrente_IsSet_;
  end;

const
  snConferirDocumentacaoTriagemResponse = 'ConferirDocumentacaoTriagemResponse';

type
  tConferirDocumentacaoTriagemResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snOperacaoTransporteTriagemRelacionadoResponse = 'OperacaoTransporteTriagemRelacionadoResponse';

type
  tOperacaoTransporteTriagemRelacionadoResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snArrayOfOperacaoTransporteTriagemRelacionadoResponse = 'ArrayOfOperacaoTransporteTriagemRelacionadoResponse';
  snArrayOfOperacaoTransporteTriagemRelacionadoResponse_OperacaoTransporteTriagemRelacionadoResponse = 'OperacaoTransporteTriagemRelacionadoResponse';

type
  tArrayOfOperacaoTransporteTriagemRelacionadoResponse = class
  private
    F_NameSpaceAlias: string;
    FOperacaoTransporteTriagemRelacionadoResponse: tManagedStringList; // of tOperacaoTransporteTriagemRelacionadoResponse(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property OperacaoTransporteTriagemRelacionadoResponse: tManagedStringList read FOperacaoTransporteTriagemRelacionadoResponse write FOperacaoTransporteTriagemRelacionadoResponse; // of tOperacaoTransporteTriagemRelacionadoResponse
  end;

const
  snOperacaoTransporteTriagemResponse = 'OperacaoTransporteTriagemResponse';

type
  tOperacaoTransporteTriagemResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snArrayOfOperacaoTransporteTriagemResponse = 'ArrayOfOperacaoTransporteTriagemResponse';
  snArrayOfOperacaoTransporteTriagemResponse_OperacaoTransporteTriagemResponse = 'OperacaoTransporteTriagemResponse';

type
  tArrayOfOperacaoTransporteTriagemResponse = class
  private
    F_NameSpaceAlias: string;
    FOperacaoTransporteTriagemResponse: tManagedStringList; // of tOperacaoTransporteTriagemResponse(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property OperacaoTransporteTriagemResponse: tManagedStringList read FOperacaoTransporteTriagemResponse write FOperacaoTransporteTriagemResponse; // of tOperacaoTransporteTriagemResponse
  end;

const
  snOperacaoTransporteParticipanteReponse = 'OperacaoTransporteParticipanteReponse';
  snOperacaoTransporteParticipanteReponse_CPFCNPJParticipante = 'CPFCNPJParticipante';
  snOperacaoTransporteParticipanteReponse_TipoParticipante = 'TipoParticipante';

type
  tOperacaoTransporteParticipanteReponse = class
  private
    F_NameSpaceAlias: string;
    FCPFCNPJParticipante: string; // (E)
    FCPFCNPJParticipante_IsSet_: boolean;
    FTipoParticipante: integer; // (E)
    FTipoParticipante_IsSet_: boolean;
    procedure SetCPFCNPJParticipante(value:string);
    procedure SetTipoParticipante(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CPFCNPJParticipante: string read FCPFCNPJParticipante write SetCPFCNPJParticipante;
    property CPFCNPJParticipante_IsSet_:boolean read FCPFCNPJParticipante_IsSet_;
    property TipoParticipante: integer read FTipoParticipante write SetTipoParticipante;
    property TipoParticipante_IsSet_:boolean read FTipoParticipante_IsSet_;
  end;

const
  snArrayOfOperacaoTransporteParticipanteReponse = 'ArrayOfOperacaoTransporteParticipanteReponse';
  snArrayOfOperacaoTransporteParticipanteReponse_OperacaoTransporteParticipanteReponse = 'OperacaoTransporteParticipanteReponse';

type
  tArrayOfOperacaoTransporteParticipanteReponse = class
  private
    F_NameSpaceAlias: string;
    FOperacaoTransporteParticipanteReponse: tManagedStringList; // of tOperacaoTransporteParticipanteReponse(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property OperacaoTransporteParticipanteReponse: tManagedStringList read FOperacaoTransporteParticipanteReponse write FOperacaoTransporteParticipanteReponse; // of tOperacaoTransporteParticipanteReponse
  end;

const
  snOperacaoTransporteVeiculoResponse = 'OperacaoTransporteVeiculoResponse';
  snOperacaoTransporteVeiculoResponse_Placa = 'Placa';
  snOperacaoTransporteVeiculoResponse_RNTRC = 'RNTRC';

type
  tOperacaoTransporteVeiculoResponse = class
  private
    F_NameSpaceAlias: string;
    FPlaca: string; // (E)
    FPlaca_IsSet_: boolean;
    FRNTRC: string; // (E)
    FRNTRC_IsSet_: boolean;
    procedure SetPlaca(value:string);
    procedure SetRNTRC(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Placa: string read FPlaca write SetPlaca;
    property Placa_IsSet_:boolean read FPlaca_IsSet_;
    property RNTRC: string read FRNTRC write SetRNTRC;
    property RNTRC_IsSet_:boolean read FRNTRC_IsSet_;
  end;

const
  snArrayOfOperacaoTransporteVeiculoResponse = 'ArrayOfOperacaoTransporteVeiculoResponse';
  snArrayOfOperacaoTransporteVeiculoResponse_OperacaoTransporteVeiculoResponse = 'OperacaoTransporteVeiculoResponse';

type
  tArrayOfOperacaoTransporteVeiculoResponse = class
  private
    F_NameSpaceAlias: string;
    FOperacaoTransporteVeiculoResponse: tManagedStringList; // of tOperacaoTransporteVeiculoResponse(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property OperacaoTransporteVeiculoResponse: tManagedStringList read FOperacaoTransporteVeiculoResponse write FOperacaoTransporteVeiculoResponse; // of tOperacaoTransporteVeiculoResponse
  end;

const
  snObterOperacaoTransporteResponse = 'ObterOperacaoTransporteResponse';

type
  tObterOperacaoTransporteResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snOperacaoTransporteParcelasResponse = 'OperacaoTransporteParcelasResponse';

type
  tOperacaoTransporteParcelasResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snArrayOfOperacaoTransporteParcelasResponse = 'ArrayOfOperacaoTransporteParcelasResponse';
  snArrayOfOperacaoTransporteParcelasResponse_OperacaoTransporteParcelasResponse = 'OperacaoTransporteParcelasResponse';

type
  tArrayOfOperacaoTransporteParcelasResponse = class
  private
    F_NameSpaceAlias: string;
    FOperacaoTransporteParcelasResponse: tManagedStringList; // of tOperacaoTransporteParcelasResponse(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property OperacaoTransporteParcelasResponse: tManagedStringList read FOperacaoTransporteParcelasResponse write FOperacaoTransporteParcelasResponse; // of tOperacaoTransporteParcelasResponse
  end;

const
  snOperacaoTransporteResponse = 'OperacaoTransporteResponse';
  snOperacaoTransporteResponse_CIOT = 'CIOT';
  snOperacaoTransporteResponse_CodigoCentroDeCusto = 'CodigoCentroDeCusto';
  snOperacaoTransporteResponse_NCM = 'NCM';
  snOperacaoTransporteResponse_ProprietarioCarga = 'ProprietarioCarga';
  snOperacaoTransporteResponse_PesoCarga = 'PesoCarga';
  snOperacaoTransporteResponse_TipoOperacao = 'TipoOperacao';
  snOperacaoTransporteResponse_MunicipioOrigemCodigoIBGE = 'MunicipioOrigemCodigoIBGE';
  snOperacaoTransporteResponse_MunicipioDestinoCodigoIBGE = 'MunicipioDestinoCodigoIBGE';
  snOperacaoTransporteResponse_DataHoraInicio = 'DataHoraInicio';
  snOperacaoTransporteResponse_DataHoraTermino = 'DataHoraTermino';
  snOperacaoTransporteResponse_DataHoraInicioCadastro = 'DataHoraInicioCadastro';
  snOperacaoTransporteResponse_DataHoraFimCadastro = 'DataHoraFimCadastro';
  snOperacaoTransporteResponse_CPFCNPJContratado = 'CPFCNPJContratado';
  snOperacaoTransporteResponse_ValorFrete = 'ValorFrete';
  snOperacaoTransporteResponse_ValorCombustivel = 'ValorCombustivel';
  snOperacaoTransporteResponse_ValorPedagio = 'ValorPedagio';
  snOperacaoTransporteResponse_ValorDespesas = 'ValorDespesas';
  snOperacaoTransporteResponse_ValorImpostoSestSenat = 'ValorImpostoSestSenat';
  snOperacaoTransporteResponse_ValorImpostoIRRF = 'ValorImpostoIRRF';
  snOperacaoTransporteResponse_ValorImpostoINSS = 'ValorImpostoINSS';
  snOperacaoTransporteResponse_ValorImpostoIcmsIssqn = 'ValorImpostoIcmsIssqn';
  snOperacaoTransporteResponse_ParcelaUnica = 'ParcelaUnica';
  snOperacaoTransporteResponse_ModoCompraValePedagio = 'ModoCompraValePedagio';
  snOperacaoTransporteResponse_CategoriaVeiculo = 'CategoriaVeiculo';
  snOperacaoTransporteResponse_NomeMotorista = 'NomeMotorista';
  snOperacaoTransporteResponse_CPFMotorista = 'CPFMotorista';
  snOperacaoTransporteResponse_RNTRCMotorista = 'RNTRCMotorista';
  snOperacaoTransporteResponse_Quitacao = 'Quitacao';
  snOperacaoTransporteResponse_Triada = 'Triada';
  snOperacaoTransporteResponse_ItemFinanceiro = 'ItemFinanceiro';
  snOperacaoTransporteResponse_Parcelas = 'Parcelas';
  snOperacaoTransporteResponse_Veiculos = 'Veiculos';
  snOperacaoTransporteResponse_Participantes = 'Participantes';
  snOperacaoTransporteResponse_Triagem = 'Triagem';

type
  tOperacaoTransporteResponse = class
  private
    F_NameSpaceAlias: string;
    FCIOT: string; // (E)
    FCIOT_IsSet_: boolean;
    FCodigoCentroDeCusto: string; // (E)
    FCodigoCentroDeCusto_IsSet_: boolean;
    FNCM: string; // (E)
    FNCM_IsSet_: boolean;
    FProprietarioCarga: string; // (E)
    FProprietarioCarga_IsSet_: boolean;
    FPesoCarga: extended; // (E)
    FPesoCarga_IsSet_: boolean;
    FTipoOperacao: string; // (E)
    FTipoOperacao_IsSet_: boolean;
    FMunicipioOrigemCodigoIBGE: integer; // (E)
    FMunicipioOrigemCodigoIBGE_IsSet_: boolean;
    FMunicipioDestinoCodigoIBGE: integer; // (E)
    FMunicipioDestinoCodigoIBGE_IsSet_: boolean;
    FDataHoraInicio: tDateTime; // (E)
    FDataHoraInicio_IsSet_: boolean;
    FDataHoraTermino: tDateTime; // (E)
    FDataHoraTermino_IsSet_: boolean;
    FDataHoraInicioCadastro: tDateTime; // (E)
    FDataHoraInicioCadastro_IsSet_: boolean;
    FDataHoraFimCadastro: tDateTime; // (E)
    FDataHoraFimCadastro_IsSet_: boolean;
    FCPFCNPJContratado: string; // (E)
    FCPFCNPJContratado_IsSet_: boolean;
    FValorFrete: extended; // (E)
    FValorFrete_IsSet_: boolean;
    FValorCombustivel: extended; // (E)
    FValorCombustivel_IsSet_: boolean;
    FValorPedagio: extended; // (E)
    FValorPedagio_IsSet_: boolean;
    FValorDespesas: extended; // (E)
    FValorDespesas_IsSet_: boolean;
    FValorImpostoSestSenat: extended; // (E)
    FValorImpostoSestSenat_IsSet_: boolean;
    FValorImpostoIRRF: extended; // (E)
    FValorImpostoIRRF_IsSet_: boolean;
    FValorImpostoINSS: extended; // (E)
    FValorImpostoINSS_IsSet_: boolean;
    FValorImpostoIcmsIssqn: extended; // (E)
    FValorImpostoIcmsIssqn_IsSet_: boolean;
    FParcelaUnica: boolean; // (E)
    FParcelaUnica_IsSet_: boolean;
    FModoCompraValePedagio: integer; // (E)
    FModoCompraValePedagio_IsSet_: boolean;
    FCategoriaVeiculo: integer; // (E)
    FCategoriaVeiculo_IsSet_: boolean;
    FNomeMotorista: string; // (E)
    FNomeMotorista_IsSet_: boolean;
    FCPFMotorista: int64; // (E)
    FCPFMotorista_IsSet_: boolean;
    FRNTRCMotorista: string; // (E)
    FRNTRCMotorista_IsSet_: boolean;
    FQuitacao: boolean; // (E)
    FQuitacao_IsSet_: boolean;
    FTriada: boolean; // (E)
    FTriada_IsSet_: boolean;
    FItemFinanceiro: string; // (E)
    FItemFinanceiro_IsSet_: boolean;
    FParcelas: tArrayOfOperacaoTransporteParcelasResponse; // (E)
    FParcelas_IsSet_: boolean;
    FVeiculos: tArrayOfOperacaoTransporteVeiculoResponse; // (E)
    FVeiculos_IsSet_: boolean;
    FParticipantes: tArrayOfOperacaoTransporteParticipanteReponse; // (E)
    FParticipantes_IsSet_: boolean;
    FTriagem: tArrayOfOperacaoTransporteTriagemResponse; // (E)
    FTriagem_IsSet_: boolean;
    procedure SetCIOT(value:string);
    procedure SetCodigoCentroDeCusto(value:string);
    procedure SetNCM(value:string);
    procedure SetProprietarioCarga(value:string);
    procedure SetPesoCarga(value:extended);
    procedure SetTipoOperacao(value:string);
    procedure SetMunicipioOrigemCodigoIBGE(value:integer);
    procedure SetMunicipioDestinoCodigoIBGE(value:integer);
    procedure SetDataHoraInicio(value:tDateTime);
    procedure SetDataHoraTermino(value:tDateTime);
    procedure SetDataHoraInicioCadastro(value:tDateTime);
    procedure SetDataHoraFimCadastro(value:tDateTime);
    procedure SetCPFCNPJContratado(value:string);
    procedure SetValorFrete(value:extended);
    procedure SetValorCombustivel(value:extended);
    procedure SetValorPedagio(value:extended);
    procedure SetValorDespesas(value:extended);
    procedure SetValorImpostoSestSenat(value:extended);
    procedure SetValorImpostoIRRF(value:extended);
    procedure SetValorImpostoINSS(value:extended);
    procedure SetValorImpostoIcmsIssqn(value:extended);
    procedure SetParcelaUnica(value:boolean);
    procedure SetModoCompraValePedagio(value:integer);
    procedure SetCategoriaVeiculo(value:integer);
    procedure SetNomeMotorista(value:string);
    procedure SetCPFMotorista(value:int64);
    procedure SetRNTRCMotorista(value:string);
    procedure SetQuitacao(value:boolean);
    procedure SetTriada(value:boolean);
    procedure SetItemFinanceiro(value:string);
    procedure SetParcelas(value:tArrayOfOperacaoTransporteParcelasResponse);
    procedure SetVeiculos(value:tArrayOfOperacaoTransporteVeiculoResponse);
    procedure SetParticipantes(value:tArrayOfOperacaoTransporteParticipanteReponse);
    procedure SetTriagem(value:tArrayOfOperacaoTransporteTriagemResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CIOT: string read FCIOT write SetCIOT;
    property CIOT_IsSet_:boolean read FCIOT_IsSet_;
    property CodigoCentroDeCusto: string read FCodigoCentroDeCusto write SetCodigoCentroDeCusto;
    property CodigoCentroDeCusto_IsSet_:boolean read FCodigoCentroDeCusto_IsSet_;
    property NCM: string read FNCM write SetNCM;
    property NCM_IsSet_:boolean read FNCM_IsSet_;
    property ProprietarioCarga: string read FProprietarioCarga write SetProprietarioCarga;
    property ProprietarioCarga_IsSet_:boolean read FProprietarioCarga_IsSet_;
    property PesoCarga: extended read FPesoCarga write SetPesoCarga;
    property PesoCarga_IsSet_:boolean read FPesoCarga_IsSet_;
    property TipoOperacao: string read FTipoOperacao write SetTipoOperacao;
    property TipoOperacao_IsSet_:boolean read FTipoOperacao_IsSet_;
    property MunicipioOrigemCodigoIBGE: integer read FMunicipioOrigemCodigoIBGE write SetMunicipioOrigemCodigoIBGE;
    property MunicipioOrigemCodigoIBGE_IsSet_:boolean read FMunicipioOrigemCodigoIBGE_IsSet_;
    property MunicipioDestinoCodigoIBGE: integer read FMunicipioDestinoCodigoIBGE write SetMunicipioDestinoCodigoIBGE;
    property MunicipioDestinoCodigoIBGE_IsSet_:boolean read FMunicipioDestinoCodigoIBGE_IsSet_;
    property DataHoraInicio: tDateTime read FDataHoraInicio write SetDataHoraInicio;
    property DataHoraInicio_IsSet_:boolean read FDataHoraInicio_IsSet_;
    property DataHoraTermino: tDateTime read FDataHoraTermino write SetDataHoraTermino;
    property DataHoraTermino_IsSet_:boolean read FDataHoraTermino_IsSet_;
    property DataHoraInicioCadastro: tDateTime read FDataHoraInicioCadastro write SetDataHoraInicioCadastro;
    property DataHoraInicioCadastro_IsSet_:boolean read FDataHoraInicioCadastro_IsSet_;
    property DataHoraFimCadastro: tDateTime read FDataHoraFimCadastro write SetDataHoraFimCadastro;
    property DataHoraFimCadastro_IsSet_:boolean read FDataHoraFimCadastro_IsSet_;
    property CPFCNPJContratado: string read FCPFCNPJContratado write SetCPFCNPJContratado;
    property CPFCNPJContratado_IsSet_:boolean read FCPFCNPJContratado_IsSet_;
    property ValorFrete: extended read FValorFrete write SetValorFrete;
    property ValorFrete_IsSet_:boolean read FValorFrete_IsSet_;
    property ValorCombustivel: extended read FValorCombustivel write SetValorCombustivel;
    property ValorCombustivel_IsSet_:boolean read FValorCombustivel_IsSet_;
    property ValorPedagio: extended read FValorPedagio write SetValorPedagio;
    property ValorPedagio_IsSet_:boolean read FValorPedagio_IsSet_;
    property ValorDespesas: extended read FValorDespesas write SetValorDespesas;
    property ValorDespesas_IsSet_:boolean read FValorDespesas_IsSet_;
    property ValorImpostoSestSenat: extended read FValorImpostoSestSenat write SetValorImpostoSestSenat;
    property ValorImpostoSestSenat_IsSet_:boolean read FValorImpostoSestSenat_IsSet_;
    property ValorImpostoIRRF: extended read FValorImpostoIRRF write SetValorImpostoIRRF;
    property ValorImpostoIRRF_IsSet_:boolean read FValorImpostoIRRF_IsSet_;
    property ValorImpostoINSS: extended read FValorImpostoINSS write SetValorImpostoINSS;
    property ValorImpostoINSS_IsSet_:boolean read FValorImpostoINSS_IsSet_;
    property ValorImpostoIcmsIssqn: extended read FValorImpostoIcmsIssqn write SetValorImpostoIcmsIssqn;
    property ValorImpostoIcmsIssqn_IsSet_:boolean read FValorImpostoIcmsIssqn_IsSet_;
    property ParcelaUnica: boolean read FParcelaUnica write SetParcelaUnica;
    property ParcelaUnica_IsSet_:boolean read FParcelaUnica_IsSet_;
    property ModoCompraValePedagio: integer read FModoCompraValePedagio write SetModoCompraValePedagio;
    property ModoCompraValePedagio_IsSet_:boolean read FModoCompraValePedagio_IsSet_;
    property CategoriaVeiculo: integer read FCategoriaVeiculo write SetCategoriaVeiculo;
    property CategoriaVeiculo_IsSet_:boolean read FCategoriaVeiculo_IsSet_;
    property NomeMotorista: string read FNomeMotorista write SetNomeMotorista;
    property NomeMotorista_IsSet_:boolean read FNomeMotorista_IsSet_;
    property CPFMotorista: int64 read FCPFMotorista write SetCPFMotorista;
    property CPFMotorista_IsSet_:boolean read FCPFMotorista_IsSet_;
    property RNTRCMotorista: string read FRNTRCMotorista write SetRNTRCMotorista;
    property RNTRCMotorista_IsSet_:boolean read FRNTRCMotorista_IsSet_;
    property Quitacao: boolean read FQuitacao write SetQuitacao;
    property Quitacao_IsSet_:boolean read FQuitacao_IsSet_;
    property Triada: boolean read FTriada write SetTriada;
    property Triada_IsSet_:boolean read FTriada_IsSet_;
    property ItemFinanceiro: string read FItemFinanceiro write SetItemFinanceiro;
    property ItemFinanceiro_IsSet_:boolean read FItemFinanceiro_IsSet_;
    property Parcelas: tArrayOfOperacaoTransporteParcelasResponse read FParcelas write SetParcelas;
    property Parcelas_IsSet_:boolean read FParcelas_IsSet_;
    property Veiculos: tArrayOfOperacaoTransporteVeiculoResponse read FVeiculos write SetVeiculos;
    property Veiculos_IsSet_:boolean read FVeiculos_IsSet_;
    property Participantes: tArrayOfOperacaoTransporteParticipanteReponse read FParticipantes write SetParticipantes;
    property Participantes_IsSet_:boolean read FParticipantes_IsSet_;
    property Triagem: tArrayOfOperacaoTransporteTriagemResponse read FTriagem write SetTriagem;
    property Triagem_IsSet_:boolean read FTriagem_IsSet_;
  end;

const
  snBuscaOperacaoTransporteParcelasResponse = 'BuscaOperacaoTransporteParcelasResponse';

type
  tBuscaOperacaoTransporteParcelasResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snFinalizacaoOperacaoTransporteResponse = 'FinalizacaoOperacaoTransporteResponse';

type
  tFinalizacaoOperacaoTransporteResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snEncerramentoOperacaoTransporteResponse = 'EncerramentoOperacaoTransporteResponse';

type
  tEncerramentoOperacaoTransporteResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snOperacaoTransporteViagemRequest = 'OperacaoTransporteViagemRequest';
  snOperacaoTransporteViagemRequest_MunicipioOrigemCodigoIBGE = 'MunicipioOrigemCodigoIBGE';
  snOperacaoTransporteViagemRequest_MunicipioDestinoCodigoIBGE = 'MunicipioDestinoCodigoIBGE';
  snOperacaoTransporteViagemRequest_NCM = 'NCM';
  snOperacaoTransporteViagemRequest_PesoCarga = 'PesoCarga';
  snOperacaoTransporteViagemRequest_QuantidadeViagens = 'QuantidadeViagens';

type
  tOperacaoTransporteViagemRequest = class
  private
    F_NameSpaceAlias: string;
    FMunicipioOrigemCodigoIBGE: integer; // (E)
    FMunicipioOrigemCodigoIBGE_IsSet_: boolean;
    FMunicipioDestinoCodigoIBGE: integer; // (E)
    FMunicipioDestinoCodigoIBGE_IsSet_: boolean;
    FNCM: string; // (E)
    FNCM_IsSet_: boolean;
    FPesoCarga: extended; // (E)
    FPesoCarga_IsSet_: boolean;
    FQuantidadeViagens: integer; // (E)
    FQuantidadeViagens_IsSet_: boolean;
    procedure SetMunicipioOrigemCodigoIBGE(value:integer);
    procedure SetMunicipioDestinoCodigoIBGE(value:integer);
    procedure SetNCM(value:string);
    procedure SetPesoCarga(value:extended);
    procedure SetQuantidadeViagens(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MunicipioOrigemCodigoIBGE: integer read FMunicipioOrigemCodigoIBGE write SetMunicipioOrigemCodigoIBGE;
    property MunicipioOrigemCodigoIBGE_IsSet_:boolean read FMunicipioOrigemCodigoIBGE_IsSet_;
    property MunicipioDestinoCodigoIBGE: integer read FMunicipioDestinoCodigoIBGE write SetMunicipioDestinoCodigoIBGE;
    property MunicipioDestinoCodigoIBGE_IsSet_:boolean read FMunicipioDestinoCodigoIBGE_IsSet_;
    property NCM: string read FNCM write SetNCM;
    property NCM_IsSet_:boolean read FNCM_IsSet_;
    property PesoCarga: extended read FPesoCarga write SetPesoCarga;
    property PesoCarga_IsSet_:boolean read FPesoCarga_IsSet_;
    property QuantidadeViagens: integer read FQuantidadeViagens write SetQuantidadeViagens;
    property QuantidadeViagens_IsSet_:boolean read FQuantidadeViagens_IsSet_;
  end;

const
  snArrayOfOperacaoTransporteViagemRequest = 'ArrayOfOperacaoTransporteViagemRequest';
  snArrayOfOperacaoTransporteViagemRequest_OperacaoTransporteViagemRequest = 'OperacaoTransporteViagemRequest';

type
  tArrayOfOperacaoTransporteViagemRequest = class
  private
    F_NameSpaceAlias: string;
    FOperacaoTransporteViagemRequest: tManagedStringList; // of tOperacaoTransporteViagemRequest(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property OperacaoTransporteViagemRequest: tManagedStringList read FOperacaoTransporteViagemRequest write FOperacaoTransporteViagemRequest; // of tOperacaoTransporteViagemRequest
  end;

const
  snRetificacaoOperacaoTransporteResponse = 'RetificacaoOperacaoTransporteResponse';

type
  tRetificacaoOperacaoTransporteResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snCancelamentoOperacaoTransporteResponse = 'CancelamentoOperacaoTransporteResponse';

type
  tCancelamentoOperacaoTransporteResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snRegistroOperacaoTransporteResponse = 'RegistroOperacaoTransporteResponse';

type
  tRegistroOperacaoTransporteResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snCadastroOperacaoTransporteResponse = 'CadastroOperacaoTransporteResponse';

type
  tCadastroOperacaoTransporteResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snAnulacaoOperacaoTransporteResponse = 'AnulacaoOperacaoTransporteResponse';

type
  tAnulacaoOperacaoTransporteResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snAnulacaoOperacaoTransporteRequest = 'AnulacaoOperacaoTransporteRequest';
  snAnulacaoOperacaoTransporteRequest_IdOperacaoTransporte = 'IdOperacaoTransporte';

type
  tAnulacaoOperacaoTransporteRequest = class
  private
    F_NameSpaceAlias: string;
    FIdOperacaoTransporte: integer; // (E)
    FIdOperacaoTransporte_IsSet_: boolean;
    procedure SetIdOperacaoTransporte(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property IdOperacaoTransporte: integer read FIdOperacaoTransporte write SetIdOperacaoTransporte;
    property IdOperacaoTransporte_IsSet_:boolean read FIdOperacaoTransporte_IsSet_;
  end;

const
  snAtualizarOperacaoResponse = 'AtualizarOperacaoResponse';

type
  tAtualizarOperacaoResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snOperacaoTransporteTriagemRelacionadoRequest = 'OperacaoTransporteTriagemRelacionadoRequest';
  snOperacaoTransporteTriagemRelacionadoRequest_CaminhoArquivo = 'CaminhoArquivo';
  snOperacaoTransporteTriagemRelacionadoRequest_DataHoraRegistro = 'DataHoraRegistro';
  snOperacaoTransporteTriagemRelacionadoRequest_IdOperacaoTransporteTriagem = 'IdOperacaoTransporteTriagem';
  snOperacaoTransporteTriagemRelacionadoRequest_IdOperacaoTransporteTriagemRelacionado = 'IdOperacaoTransporteTriagemRelacionado';
  snOperacaoTransporteTriagemRelacionadoRequest_Numero = 'Numero';
  snOperacaoTransporteTriagemRelacionadoRequest_Origem = 'Origem';

type
  tOperacaoTransporteTriagemRelacionadoRequest = class
  private
    F_NameSpaceAlias: string;
    FCaminhoArquivo: string; // (E)
    FCaminhoArquivo_IsSet_: boolean;
    FDataHoraRegistro: tDateTime; // (E)
    FDataHoraRegistro_IsSet_: boolean;
    FIdOperacaoTransporteTriagem: integer; // (E)
    FIdOperacaoTransporteTriagem_IsSet_: boolean;
    FIdOperacaoTransporteTriagemRelacionado: integer; // (E)
    FIdOperacaoTransporteTriagemRelacionado_IsSet_: boolean;
    FNumero: string; // (E)
    FNumero_IsSet_: boolean;
    FOrigem: string; // (E)
    FOrigem_IsSet_: boolean;
    procedure SetCaminhoArquivo(value:string);
    procedure SetDataHoraRegistro(value:tDateTime);
    procedure SetIdOperacaoTransporteTriagem(value:integer);
    procedure SetIdOperacaoTransporteTriagemRelacionado(value:integer);
    procedure SetNumero(value:string);
    procedure SetOrigem(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CaminhoArquivo: string read FCaminhoArquivo write SetCaminhoArquivo;
    property CaminhoArquivo_IsSet_:boolean read FCaminhoArquivo_IsSet_;
    property DataHoraRegistro: tDateTime read FDataHoraRegistro write SetDataHoraRegistro;
    property DataHoraRegistro_IsSet_:boolean read FDataHoraRegistro_IsSet_;
    property IdOperacaoTransporteTriagem: integer read FIdOperacaoTransporteTriagem write SetIdOperacaoTransporteTriagem;
    property IdOperacaoTransporteTriagem_IsSet_:boolean read FIdOperacaoTransporteTriagem_IsSet_;
    property IdOperacaoTransporteTriagemRelacionado: integer read FIdOperacaoTransporteTriagemRelacionado write SetIdOperacaoTransporteTriagemRelacionado;
    property IdOperacaoTransporteTriagemRelacionado_IsSet_:boolean read FIdOperacaoTransporteTriagemRelacionado_IsSet_;
    property Numero: string read FNumero write SetNumero;
    property Numero_IsSet_:boolean read FNumero_IsSet_;
    property Origem: string read FOrigem write SetOrigem;
    property Origem_IsSet_:boolean read FOrigem_IsSet_;
  end;

const
  snArrayOfOperacaoTransporteTriagemRelacionadoRequest = 'ArrayOfOperacaoTransporteTriagemRelacionadoRequest';
  snArrayOfOperacaoTransporteTriagemRelacionadoRequest_OperacaoTransporteTriagemRelacionadoRequest = 'OperacaoTransporteTriagemRelacionadoRequest';

type
  tArrayOfOperacaoTransporteTriagemRelacionadoRequest = class
  private
    F_NameSpaceAlias: string;
    FOperacaoTransporteTriagemRelacionadoRequest: tManagedStringList; // of tOperacaoTransporteTriagemRelacionadoRequest(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property OperacaoTransporteTriagemRelacionadoRequest: tManagedStringList read FOperacaoTransporteTriagemRelacionadoRequest write FOperacaoTransporteTriagemRelacionadoRequest; // of tOperacaoTransporteTriagemRelacionadoRequest
  end;

const
  snOperacaoTransporteTriagemRequest = 'OperacaoTransporteTriagemRequest';
  snOperacaoTransporteTriagemRequest_IdTriagemDocumentoObjeto = 'IdTriagemDocumentoObjeto';
  snOperacaoTransporteTriagemRequest_NomeDocumentoObjeto = 'NomeDocumentoObjeto';
  snOperacaoTransporteTriagemRequest_ExigeUpload = 'ExigeUpload';
  snOperacaoTransporteTriagemRequest_ExigeDocumentoObjetoFisico = 'ExigeDocumentoObjetoFisico';
  snOperacaoTransporteTriagemRequest_DocumentoObjeto = 'DocumentoObjeto';
  snOperacaoTransporteTriagemRequest_Relacionados = 'Relacionados';

type
  tOperacaoTransporteTriagemRequest = class
  private
    F_NameSpaceAlias: string;
    FIdTriagemDocumentoObjeto: integer; // (E)
    FIdTriagemDocumentoObjeto_IsSet_: boolean;
    FNomeDocumentoObjeto: string; // (E)
    FNomeDocumentoObjeto_IsSet_: boolean;
    FExigeUpload: string; // (E)
    FExigeUpload_IsSet_: boolean;
    FExigeDocumentoObjetoFisico: string; // (E)
    FExigeDocumentoObjetoFisico_IsSet_: boolean;
    FDocumentoObjeto: string; // (E)
    FDocumentoObjeto_IsSet_: boolean;
    FRelacionados: tArrayOfOperacaoTransporteTriagemRelacionadoRequest; // (E)
    FRelacionados_IsSet_: boolean;
    procedure SetIdTriagemDocumentoObjeto(value:integer);
    procedure SetNomeDocumentoObjeto(value:string);
    procedure SetExigeUpload(value:string);
    procedure SetExigeDocumentoObjetoFisico(value:string);
    procedure SetDocumentoObjeto(value:string);
    procedure SetRelacionados(value:tArrayOfOperacaoTransporteTriagemRelacionadoRequest);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property IdTriagemDocumentoObjeto: integer read FIdTriagemDocumentoObjeto write SetIdTriagemDocumentoObjeto;
    property IdTriagemDocumentoObjeto_IsSet_:boolean read FIdTriagemDocumentoObjeto_IsSet_;
    property NomeDocumentoObjeto: string read FNomeDocumentoObjeto write SetNomeDocumentoObjeto;
    property NomeDocumentoObjeto_IsSet_:boolean read FNomeDocumentoObjeto_IsSet_;
    property ExigeUpload: string read FExigeUpload write SetExigeUpload;
    property ExigeUpload_IsSet_:boolean read FExigeUpload_IsSet_;
    property ExigeDocumentoObjetoFisico: string read FExigeDocumentoObjetoFisico write SetExigeDocumentoObjetoFisico;
    property ExigeDocumentoObjetoFisico_IsSet_:boolean read FExigeDocumentoObjetoFisico_IsSet_;
    property DocumentoObjeto: string read FDocumentoObjeto write SetDocumentoObjeto;
    property DocumentoObjeto_IsSet_:boolean read FDocumentoObjeto_IsSet_;
    property Relacionados: tArrayOfOperacaoTransporteTriagemRelacionadoRequest read FRelacionados write SetRelacionados;
    property Relacionados_IsSet_:boolean read FRelacionados_IsSet_;
  end;

const
  snArrayOfOperacaoTransporteTriagemRequest = 'ArrayOfOperacaoTransporteTriagemRequest';
  snArrayOfOperacaoTransporteTriagemRequest_OperacaoTransporteTriagemRequest = 'OperacaoTransporteTriagemRequest';

type
  tArrayOfOperacaoTransporteTriagemRequest = class
  private
    F_NameSpaceAlias: string;
    FOperacaoTransporteTriagemRequest: tManagedStringList; // of tOperacaoTransporteTriagemRequest(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property OperacaoTransporteTriagemRequest: tManagedStringList read FOperacaoTransporteTriagemRequest write FOperacaoTransporteTriagemRequest; // of tOperacaoTransporteTriagemRequest
  end;

const
  snOperacaoTransporteParticipanteRequest = 'OperacaoTransporteParticipanteRequest';
  snOperacaoTransporteParticipanteRequest_CPFCNPJParticipante = 'CPFCNPJParticipante';
  snOperacaoTransporteParticipanteRequest_TipoParticipante = 'TipoParticipante';

type
  tOperacaoTransporteParticipanteRequest = class
  private
    F_NameSpaceAlias: string;
    FCPFCNPJParticipante: string; // (E)
    FCPFCNPJParticipante_IsSet_: boolean;
    FTipoParticipante: integer; // (E)
    FTipoParticipante_IsSet_: boolean;
    procedure SetCPFCNPJParticipante(value:string);
    procedure SetTipoParticipante(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CPFCNPJParticipante: string read FCPFCNPJParticipante write SetCPFCNPJParticipante;
    property CPFCNPJParticipante_IsSet_:boolean read FCPFCNPJParticipante_IsSet_;
    property TipoParticipante: integer read FTipoParticipante write SetTipoParticipante;
    property TipoParticipante_IsSet_:boolean read FTipoParticipante_IsSet_;
  end;

const
  snArrayOfOperacaoTransporteParticipanteRequest = 'ArrayOfOperacaoTransporteParticipanteRequest';
  snArrayOfOperacaoTransporteParticipanteRequest_OperacaoTransporteParticipanteRequest = 'OperacaoTransporteParticipanteRequest';

type
  tArrayOfOperacaoTransporteParticipanteRequest = class
  private
    F_NameSpaceAlias: string;
    FOperacaoTransporteParticipanteRequest: tManagedStringList; // of tOperacaoTransporteParticipanteRequest(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property OperacaoTransporteParticipanteRequest: tManagedStringList read FOperacaoTransporteParticipanteRequest write FOperacaoTransporteParticipanteRequest; // of tOperacaoTransporteParticipanteRequest
  end;

const
  snOperacaoTransporteVeiculoRequest = 'OperacaoTransporteVeiculoRequest';
  snOperacaoTransporteVeiculoRequest_Placa = 'Placa';
  snOperacaoTransporteVeiculoRequest_RNTRC = 'RNTRC';

type
  tOperacaoTransporteVeiculoRequest = class
  private
    F_NameSpaceAlias: string;
    FPlaca: string; // (E)
    FPlaca_IsSet_: boolean;
    FRNTRC: string; // (E)
    FRNTRC_IsSet_: boolean;
    procedure SetPlaca(value:string);
    procedure SetRNTRC(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Placa: string read FPlaca write SetPlaca;
    property Placa_IsSet_:boolean read FPlaca_IsSet_;
    property RNTRC: string read FRNTRC write SetRNTRC;
    property RNTRC_IsSet_:boolean read FRNTRC_IsSet_;
  end;

const
  snArrayOfOperacaoTransporteVeiculoRequest = 'ArrayOfOperacaoTransporteVeiculoRequest';
  snArrayOfOperacaoTransporteVeiculoRequest_OperacaoTransporteVeiculoRequest = 'OperacaoTransporteVeiculoRequest';

type
  tArrayOfOperacaoTransporteVeiculoRequest = class
  private
    F_NameSpaceAlias: string;
    FOperacaoTransporteVeiculoRequest: tManagedStringList; // of tOperacaoTransporteVeiculoRequest(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property OperacaoTransporteVeiculoRequest: tManagedStringList read FOperacaoTransporteVeiculoRequest write FOperacaoTransporteVeiculoRequest; // of tOperacaoTransporteVeiculoRequest
  end;

const
  snRetificacaoPlacasOperacaoTransporteRequest = 'RetificacaoPlacasOperacaoTransporteRequest';
  snRetificacaoPlacasOperacaoTransporteRequest_CodigoOperacao = 'CodigoOperacao';
  snRetificacaoPlacasOperacaoTransporteRequest_Veiculos = 'Veiculos';

type
  tRetificacaoPlacasOperacaoTransporteRequest = class
  private
    F_NameSpaceAlias: string;
    FCodigoOperacao: integer; // (E)
    FCodigoOperacao_IsSet_: boolean;
    FVeiculos: tArrayOfOperacaoTransporteVeiculoRequest; // (E)
    FVeiculos_IsSet_: boolean;
    procedure SetCodigoOperacao(value:integer);
    procedure SetVeiculos(value:tArrayOfOperacaoTransporteVeiculoRequest);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CodigoOperacao: integer read FCodigoOperacao write SetCodigoOperacao;
    property CodigoOperacao_IsSet_:boolean read FCodigoOperacao_IsSet_;
    property Veiculos: tArrayOfOperacaoTransporteVeiculoRequest read FVeiculos write SetVeiculos;
    property Veiculos_IsSet_:boolean read FVeiculos_IsSet_;
  end;

const
  snOperacaoTransporteParcelaRequest = 'OperacaoTransporteParcelaRequest';
  snOperacaoTransporteParcelaRequest_DescricaoParcela = 'DescricaoParcela';
  snOperacaoTransporteParcelaRequest_Valor = 'Valor';
  snOperacaoTransporteParcelaRequest_NumeroParcela = 'NumeroParcela';
  snOperacaoTransporteParcelaRequest_DataVencimento = 'DataVencimento';
  snOperacaoTransporteParcelaRequest_TipoDaParcela = 'TipoDaParcela';
  snOperacaoTransporteParcelaRequest_FormaPagamento = 'FormaPagamento';
  snOperacaoTransporteParcelaRequest_CartaoPagamento = 'CartaoPagamento';
  snOperacaoTransporteParcelaRequest_CodigoBanco = 'CodigoBanco';
  snOperacaoTransporteParcelaRequest_AgenciaDeposito = 'AgenciaDeposito';
  snOperacaoTransporteParcelaRequest_ContaDeposito = 'ContaDeposito';
  snOperacaoTransporteParcelaRequest_DigitoContaDeposito = 'DigitoContaDeposito';

type
  tOperacaoTransporteParcelaRequest = class
  private
    F_NameSpaceAlias: string;
    FDescricaoParcela: string; // (E)
    FDescricaoParcela_IsSet_: boolean;
    FValor: extended; // (E)
    FValor_IsSet_: boolean;
    FNumeroParcela: integer; // (E)
    FNumeroParcela_IsSet_: boolean;
    FDataVencimento: tDateTime; // (E)
    FDataVencimento_IsSet_: boolean;
    FTipoDaParcela: integer; // (E)
    FTipoDaParcela_IsSet_: boolean;
    FFormaPagamento: integer; // (E)
    FFormaPagamento_IsSet_: boolean;
    FCartaoPagamento: string; // (E)
    FCartaoPagamento_IsSet_: boolean;
    FCodigoBanco: string; // (E)
    FCodigoBanco_IsSet_: boolean;
    FAgenciaDeposito: string; // (E)
    FAgenciaDeposito_IsSet_: boolean;
    FContaDeposito: string; // (E)
    FContaDeposito_IsSet_: boolean;
    FDigitoContaDeposito: string; // (E)
    FDigitoContaDeposito_IsSet_: boolean;
    procedure SetDescricaoParcela(value:string);
    procedure SetValor(value:extended);
    procedure SetNumeroParcela(value:integer);
    procedure SetDataVencimento(value:tDateTime);
    procedure SetTipoDaParcela(value:integer);
    procedure SetFormaPagamento(value:integer);
    procedure SetCartaoPagamento(value:string);
    procedure SetCodigoBanco(value:string);
    procedure SetAgenciaDeposito(value:string);
    procedure SetContaDeposito(value:string);
    procedure SetDigitoContaDeposito(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property DescricaoParcela: string read FDescricaoParcela write SetDescricaoParcela;
    property DescricaoParcela_IsSet_:boolean read FDescricaoParcela_IsSet_;
    property Valor: extended read FValor write SetValor;
    property Valor_IsSet_:boolean read FValor_IsSet_;
    property NumeroParcela: integer read FNumeroParcela write SetNumeroParcela;
    property NumeroParcela_IsSet_:boolean read FNumeroParcela_IsSet_;
    property DataVencimento: tDateTime read FDataVencimento write SetDataVencimento;
    property DataVencimento_IsSet_:boolean read FDataVencimento_IsSet_;
    property TipoDaParcela: integer read FTipoDaParcela write SetTipoDaParcela;
    property TipoDaParcela_IsSet_:boolean read FTipoDaParcela_IsSet_;
    property FormaPagamento: integer read FFormaPagamento write SetFormaPagamento;
    property FormaPagamento_IsSet_:boolean read FFormaPagamento_IsSet_;
    property CartaoPagamento: string read FCartaoPagamento write SetCartaoPagamento;
    property CartaoPagamento_IsSet_:boolean read FCartaoPagamento_IsSet_;
    property CodigoBanco: string read FCodigoBanco write SetCodigoBanco;
    property CodigoBanco_IsSet_:boolean read FCodigoBanco_IsSet_;
    property AgenciaDeposito: string read FAgenciaDeposito write SetAgenciaDeposito;
    property AgenciaDeposito_IsSet_:boolean read FAgenciaDeposito_IsSet_;
    property ContaDeposito: string read FContaDeposito write SetContaDeposito;
    property ContaDeposito_IsSet_:boolean read FContaDeposito_IsSet_;
    property DigitoContaDeposito: string read FDigitoContaDeposito write SetDigitoContaDeposito;
    property DigitoContaDeposito_IsSet_:boolean read FDigitoContaDeposito_IsSet_;
  end;

const
  snArrayOfOperacaoTransporteParcelaRequest = 'ArrayOfOperacaoTransporteParcelaRequest';
  snArrayOfOperacaoTransporteParcelaRequest_OperacaoTransporteParcelaRequest = 'OperacaoTransporteParcelaRequest';

type
  tArrayOfOperacaoTransporteParcelaRequest = class
  private
    F_NameSpaceAlias: string;
    FOperacaoTransporteParcelaRequest: tManagedStringList; // of tOperacaoTransporteParcelaRequest(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property OperacaoTransporteParcelaRequest: tManagedStringList read FOperacaoTransporteParcelaRequest write FOperacaoTransporteParcelaRequest; // of tOperacaoTransporteParcelaRequest
  end;

const
  snEncerramentoOperacaoTransporteRequest = 'EncerramentoOperacaoTransporteRequest';
  snEncerramentoOperacaoTransporteRequest_CodigoOperacao = 'CodigoOperacao';
  snEncerramentoOperacaoTransporteRequest_TipoOperacao = 'TipoOperacao';
  snEncerramentoOperacaoTransporteRequest_PesoCarga = 'PesoCarga';
  snEncerramentoOperacaoTransporteRequest_HouveRetificacao = 'HouveRetificacao';
  snEncerramentoOperacaoTransporteRequest_ValorFrete = 'ValorFrete';
  snEncerramentoOperacaoTransporteRequest_ValorCombustivel = 'ValorCombustivel';
  snEncerramentoOperacaoTransporteRequest_ValorPedagio = 'ValorPedagio';
  snEncerramentoOperacaoTransporteRequest_ValorDespesas = 'ValorDespesas';
  snEncerramentoOperacaoTransporteRequest_ValorImpostoSestSenat = 'ValorImpostoSestSenat';
  snEncerramentoOperacaoTransporteRequest_ValorImpostoIRRF = 'ValorImpostoIRRF';
  snEncerramentoOperacaoTransporteRequest_ValorImpostoINSS = 'ValorImpostoINSS';
  snEncerramentoOperacaoTransporteRequest_ValorImpostoIcmsIssqn = 'ValorImpostoIcmsIssqn';
  snEncerramentoOperacaoTransporteRequest_Parcelas = 'Parcelas';
  snEncerramentoOperacaoTransporteRequest_Viagens = 'Viagens';
  snEncerramentoOperacaoTransporteRequest_DescontoCombustivel = 'DescontoCombustivel';
  snEncerramentoOperacaoTransporteRequest_ObservacaoAvariaContratante = 'ObservacaoAvariaContratante';
  snEncerramentoOperacaoTransporteRequest_DescontoServicos = 'DescontoServicos';
  snEncerramentoOperacaoTransporteRequest_DescontoManutencao = 'DescontoManutencao';
  snEncerramentoOperacaoTransporteRequest_DescontoOutros = 'DescontoOutros';

type
  tEncerramentoOperacaoTransporteRequest = class
  private
    F_NameSpaceAlias: string;
    FCodigoOperacao: integer; // (E)
    FCodigoOperacao_IsSet_: boolean;
    FTipoOperacao: string; // (E)
    FTipoOperacao_IsSet_: boolean;
    FPesoCarga: extended; // (E)
    FPesoCarga_IsSet_: boolean;
    FHouveRetificacao: boolean; // (E)
    FHouveRetificacao_IsSet_: boolean;
    FValorFrete: extended; // (E)
    FValorFrete_IsSet_: boolean;
    FValorCombustivel: extended; // (E)
    FValorCombustivel_IsSet_: boolean;
    FValorPedagio: extended; // (E)
    FValorPedagio_IsSet_: boolean;
    FValorDespesas: extended; // (E)
    FValorDespesas_IsSet_: boolean;
    FValorImpostoSestSenat: extended; // (E)
    FValorImpostoSestSenat_IsSet_: boolean;
    FValorImpostoIRRF: extended; // (E)
    FValorImpostoIRRF_IsSet_: boolean;
    FValorImpostoINSS: extended; // (E)
    FValorImpostoINSS_IsSet_: boolean;
    FValorImpostoIcmsIssqn: extended; // (E)
    FValorImpostoIcmsIssqn_IsSet_: boolean;
    FParcelas: tArrayOfOperacaoTransporteParcelaRequest; // (E)
    FParcelas_IsSet_: boolean;
    FViagens: tArrayOfOperacaoTransporteViagemRequest; // (E)
    FViagens_IsSet_: boolean;
    FDescontoCombustivel: extended; // (E)
    FDescontoCombustivel_IsSet_: boolean;
    FObservacaoAvariaContratante: string; // (E)
    FObservacaoAvariaContratante_IsSet_: boolean;
    FDescontoServicos: extended; // (E)
    FDescontoServicos_IsSet_: boolean;
    FDescontoManutencao: extended; // (E)
    FDescontoManutencao_IsSet_: boolean;
    FDescontoOutros: extended; // (E)
    FDescontoOutros_IsSet_: boolean;
    procedure SetCodigoOperacao(value:integer);
    procedure SetTipoOperacao(value:string);
    procedure SetPesoCarga(value:extended);
    procedure SetHouveRetificacao(value:boolean);
    procedure SetValorFrete(value:extended);
    procedure SetValorCombustivel(value:extended);
    procedure SetValorPedagio(value:extended);
    procedure SetValorDespesas(value:extended);
    procedure SetValorImpostoSestSenat(value:extended);
    procedure SetValorImpostoIRRF(value:extended);
    procedure SetValorImpostoINSS(value:extended);
    procedure SetValorImpostoIcmsIssqn(value:extended);
    procedure SetParcelas(value:tArrayOfOperacaoTransporteParcelaRequest);
    procedure SetViagens(value:tArrayOfOperacaoTransporteViagemRequest);
    procedure SetDescontoCombustivel(value:extended);
    procedure SetObservacaoAvariaContratante(value:string);
    procedure SetDescontoServicos(value:extended);
    procedure SetDescontoManutencao(value:extended);
    procedure SetDescontoOutros(value:extended);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CodigoOperacao: integer read FCodigoOperacao write SetCodigoOperacao;
    property CodigoOperacao_IsSet_:boolean read FCodigoOperacao_IsSet_;
    property TipoOperacao: string read FTipoOperacao write SetTipoOperacao;
    property TipoOperacao_IsSet_:boolean read FTipoOperacao_IsSet_;
    property PesoCarga: extended read FPesoCarga write SetPesoCarga;
    property PesoCarga_IsSet_:boolean read FPesoCarga_IsSet_;
    property HouveRetificacao: boolean read FHouveRetificacao write SetHouveRetificacao;
    property HouveRetificacao_IsSet_:boolean read FHouveRetificacao_IsSet_;
    property ValorFrete: extended read FValorFrete write SetValorFrete;
    property ValorFrete_IsSet_:boolean read FValorFrete_IsSet_;
    property ValorCombustivel: extended read FValorCombustivel write SetValorCombustivel;
    property ValorCombustivel_IsSet_:boolean read FValorCombustivel_IsSet_;
    property ValorPedagio: extended read FValorPedagio write SetValorPedagio;
    property ValorPedagio_IsSet_:boolean read FValorPedagio_IsSet_;
    property ValorDespesas: extended read FValorDespesas write SetValorDespesas;
    property ValorDespesas_IsSet_:boolean read FValorDespesas_IsSet_;
    property ValorImpostoSestSenat: extended read FValorImpostoSestSenat write SetValorImpostoSestSenat;
    property ValorImpostoSestSenat_IsSet_:boolean read FValorImpostoSestSenat_IsSet_;
    property ValorImpostoIRRF: extended read FValorImpostoIRRF write SetValorImpostoIRRF;
    property ValorImpostoIRRF_IsSet_:boolean read FValorImpostoIRRF_IsSet_;
    property ValorImpostoINSS: extended read FValorImpostoINSS write SetValorImpostoINSS;
    property ValorImpostoINSS_IsSet_:boolean read FValorImpostoINSS_IsSet_;
    property ValorImpostoIcmsIssqn: extended read FValorImpostoIcmsIssqn write SetValorImpostoIcmsIssqn;
    property ValorImpostoIcmsIssqn_IsSet_:boolean read FValorImpostoIcmsIssqn_IsSet_;
    property Parcelas: tArrayOfOperacaoTransporteParcelaRequest read FParcelas write SetParcelas;
    property Parcelas_IsSet_:boolean read FParcelas_IsSet_;
    property Viagens: tArrayOfOperacaoTransporteViagemRequest read FViagens write SetViagens;
    property Viagens_IsSet_:boolean read FViagens_IsSet_;
    property DescontoCombustivel: extended read FDescontoCombustivel write SetDescontoCombustivel;
    property DescontoCombustivel_IsSet_:boolean read FDescontoCombustivel_IsSet_;
    property ObservacaoAvariaContratante: string read FObservacaoAvariaContratante write SetObservacaoAvariaContratante;
    property ObservacaoAvariaContratante_IsSet_:boolean read FObservacaoAvariaContratante_IsSet_;
    property DescontoServicos: extended read FDescontoServicos write SetDescontoServicos;
    property DescontoServicos_IsSet_:boolean read FDescontoServicos_IsSet_;
    property DescontoManutencao: extended read FDescontoManutencao write SetDescontoManutencao;
    property DescontoManutencao_IsSet_:boolean read FDescontoManutencao_IsSet_;
    property DescontoOutros: extended read FDescontoOutros write SetDescontoOutros;
    property DescontoOutros_IsSet_:boolean read FDescontoOutros_IsSet_;
  end;

const
  snRetificacaoOperacaoTransporteRequest = 'RetificacaoOperacaoTransporteRequest';
  snRetificacaoOperacaoTransporteRequest_CodigoOperacao = 'CodigoOperacao';
  snRetificacaoOperacaoTransporteRequest_NCM = 'NCM';
  snRetificacaoOperacaoTransporteRequest_PesoCarga = 'PesoCarga';
  snRetificacaoOperacaoTransporteRequest_MunicipioOrigemCodigoIBGE = 'MunicipioOrigemCodigoIBGE';
  snRetificacaoOperacaoTransporteRequest_MunicipioDestinoCodigoIBGE = 'MunicipioDestinoCodigoIBGE';
  snRetificacaoOperacaoTransporteRequest_DataHoraInicio = 'DataHoraInicio';
  snRetificacaoOperacaoTransporteRequest_DataHoraTermino = 'DataHoraTermino';
  snRetificacaoOperacaoTransporteRequest_ValorFrete = 'ValorFrete';
  snRetificacaoOperacaoTransporteRequest_ValorCombustivel = 'ValorCombustivel';
  snRetificacaoOperacaoTransporteRequest_ValorPedagio = 'ValorPedagio';
  snRetificacaoOperacaoTransporteRequest_ValorDespesas = 'ValorDespesas';
  snRetificacaoOperacaoTransporteRequest_ValorImpostoSestSenat = 'ValorImpostoSestSenat';
  snRetificacaoOperacaoTransporteRequest_ValorImpostoIRRF = 'ValorImpostoIRRF';
  snRetificacaoOperacaoTransporteRequest_ValorImpostoINSS = 'ValorImpostoINSS';
  snRetificacaoOperacaoTransporteRequest_ValorImpostoIcmsIssqn = 'ValorImpostoIcmsIssqn';
  snRetificacaoOperacaoTransporteRequest_Parcelas = 'Parcelas';
  snRetificacaoOperacaoTransporteRequest_Veiculos = 'Veiculos';

type
  tRetificacaoOperacaoTransporteRequest = class
  private
    F_NameSpaceAlias: string;
    FCodigoOperacao: integer; // (E)
    FCodigoOperacao_IsSet_: boolean;
    FNCM: string; // (E)
    FNCM_IsSet_: boolean;
    FPesoCarga: extended; // (E)
    FPesoCarga_IsSet_: boolean;
    FMunicipioOrigemCodigoIBGE: integer; // (E)
    FMunicipioOrigemCodigoIBGE_IsSet_: boolean;
    FMunicipioDestinoCodigoIBGE: integer; // (E)
    FMunicipioDestinoCodigoIBGE_IsSet_: boolean;
    FDataHoraInicio: tDateTime; // (E)
    FDataHoraInicio_IsSet_: boolean;
    FDataHoraTermino: tDateTime; // (E)
    FDataHoraTermino_IsSet_: boolean;
    FValorFrete: extended; // (E)
    FValorFrete_IsSet_: boolean;
    FValorCombustivel: extended; // (E)
    FValorCombustivel_IsSet_: boolean;
    FValorPedagio: extended; // (E)
    FValorPedagio_IsSet_: boolean;
    FValorDespesas: extended; // (E)
    FValorDespesas_IsSet_: boolean;
    FValorImpostoSestSenat: extended; // (E)
    FValorImpostoSestSenat_IsSet_: boolean;
    FValorImpostoIRRF: extended; // (E)
    FValorImpostoIRRF_IsSet_: boolean;
    FValorImpostoINSS: extended; // (E)
    FValorImpostoINSS_IsSet_: boolean;
    FValorImpostoIcmsIssqn: extended; // (E)
    FValorImpostoIcmsIssqn_IsSet_: boolean;
    FParcelas: tArrayOfOperacaoTransporteParcelaRequest; // (E)
    FParcelas_IsSet_: boolean;
    FVeiculos: tArrayOfOperacaoTransporteVeiculoRequest; // (E)
    FVeiculos_IsSet_: boolean;
    procedure SetCodigoOperacao(value:integer);
    procedure SetNCM(value:string);
    procedure SetPesoCarga(value:extended);
    procedure SetMunicipioOrigemCodigoIBGE(value:integer);
    procedure SetMunicipioDestinoCodigoIBGE(value:integer);
    procedure SetDataHoraInicio(value:tDateTime);
    procedure SetDataHoraTermino(value:tDateTime);
    procedure SetValorFrete(value:extended);
    procedure SetValorCombustivel(value:extended);
    procedure SetValorPedagio(value:extended);
    procedure SetValorDespesas(value:extended);
    procedure SetValorImpostoSestSenat(value:extended);
    procedure SetValorImpostoIRRF(value:extended);
    procedure SetValorImpostoINSS(value:extended);
    procedure SetValorImpostoIcmsIssqn(value:extended);
    procedure SetParcelas(value:tArrayOfOperacaoTransporteParcelaRequest);
    procedure SetVeiculos(value:tArrayOfOperacaoTransporteVeiculoRequest);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CodigoOperacao: integer read FCodigoOperacao write SetCodigoOperacao;
    property CodigoOperacao_IsSet_:boolean read FCodigoOperacao_IsSet_;
    property NCM: string read FNCM write SetNCM;
    property NCM_IsSet_:boolean read FNCM_IsSet_;
    property PesoCarga: extended read FPesoCarga write SetPesoCarga;
    property PesoCarga_IsSet_:boolean read FPesoCarga_IsSet_;
    property MunicipioOrigemCodigoIBGE: integer read FMunicipioOrigemCodigoIBGE write SetMunicipioOrigemCodigoIBGE;
    property MunicipioOrigemCodigoIBGE_IsSet_:boolean read FMunicipioOrigemCodigoIBGE_IsSet_;
    property MunicipioDestinoCodigoIBGE: integer read FMunicipioDestinoCodigoIBGE write SetMunicipioDestinoCodigoIBGE;
    property MunicipioDestinoCodigoIBGE_IsSet_:boolean read FMunicipioDestinoCodigoIBGE_IsSet_;
    property DataHoraInicio: tDateTime read FDataHoraInicio write SetDataHoraInicio;
    property DataHoraInicio_IsSet_:boolean read FDataHoraInicio_IsSet_;
    property DataHoraTermino: tDateTime read FDataHoraTermino write SetDataHoraTermino;
    property DataHoraTermino_IsSet_:boolean read FDataHoraTermino_IsSet_;
    property ValorFrete: extended read FValorFrete write SetValorFrete;
    property ValorFrete_IsSet_:boolean read FValorFrete_IsSet_;
    property ValorCombustivel: extended read FValorCombustivel write SetValorCombustivel;
    property ValorCombustivel_IsSet_:boolean read FValorCombustivel_IsSet_;
    property ValorPedagio: extended read FValorPedagio write SetValorPedagio;
    property ValorPedagio_IsSet_:boolean read FValorPedagio_IsSet_;
    property ValorDespesas: extended read FValorDespesas write SetValorDespesas;
    property ValorDespesas_IsSet_:boolean read FValorDespesas_IsSet_;
    property ValorImpostoSestSenat: extended read FValorImpostoSestSenat write SetValorImpostoSestSenat;
    property ValorImpostoSestSenat_IsSet_:boolean read FValorImpostoSestSenat_IsSet_;
    property ValorImpostoIRRF: extended read FValorImpostoIRRF write SetValorImpostoIRRF;
    property ValorImpostoIRRF_IsSet_:boolean read FValorImpostoIRRF_IsSet_;
    property ValorImpostoINSS: extended read FValorImpostoINSS write SetValorImpostoINSS;
    property ValorImpostoINSS_IsSet_:boolean read FValorImpostoINSS_IsSet_;
    property ValorImpostoIcmsIssqn: extended read FValorImpostoIcmsIssqn write SetValorImpostoIcmsIssqn;
    property ValorImpostoIcmsIssqn_IsSet_:boolean read FValorImpostoIcmsIssqn_IsSet_;
    property Parcelas: tArrayOfOperacaoTransporteParcelaRequest read FParcelas write SetParcelas;
    property Parcelas_IsSet_:boolean read FParcelas_IsSet_;
    property Veiculos: tArrayOfOperacaoTransporteVeiculoRequest read FVeiculos write SetVeiculos;
    property Veiculos_IsSet_:boolean read FVeiculos_IsSet_;
  end;

const
  snOperacaoTransporteRequest = 'OperacaoTransporteRequest';
  snOperacaoTransporteRequest_CodigoCentroDeCusto = 'CodigoCentroDeCusto';
  snOperacaoTransporteRequest_NCM = 'NCM';
  snOperacaoTransporteRequest_ProprietarioCarga = 'ProprietarioCarga';
  snOperacaoTransporteRequest_PesoCarga = 'PesoCarga';
  snOperacaoTransporteRequest_TipoOperacao = 'TipoOperacao';
  snOperacaoTransporteRequest_MunicipioOrigemCodigoIBGE = 'MunicipioOrigemCodigoIBGE';
  snOperacaoTransporteRequest_MunicipioDestinoCodigoIBGE = 'MunicipioDestinoCodigoIBGE';
  snOperacaoTransporteRequest_DataHoraInicio = 'DataHoraInicio';
  snOperacaoTransporteRequest_DataHoraTermino = 'DataHoraTermino';
  snOperacaoTransporteRequest_DataHoraInicioCadastro = 'DataHoraInicioCadastro';
  snOperacaoTransporteRequest_DataHoraFimCadastro = 'DataHoraFimCadastro';
  snOperacaoTransporteRequest_CPFCNPJContratado = 'CPFCNPJContratado';
  snOperacaoTransporteRequest_ValorFrete = 'ValorFrete';
  snOperacaoTransporteRequest_ValorCombustivel = 'ValorCombustivel';
  snOperacaoTransporteRequest_ValorPedagio = 'ValorPedagio';
  snOperacaoTransporteRequest_ValorDespesas = 'ValorDespesas';
  snOperacaoTransporteRequest_ValorImpostoSestSenat = 'ValorImpostoSestSenat';
  snOperacaoTransporteRequest_ValorImpostoIRRF = 'ValorImpostoIRRF';
  snOperacaoTransporteRequest_ValorImpostoINSS = 'ValorImpostoINSS';
  snOperacaoTransporteRequest_ValorImpostoIcmsIssqn = 'ValorImpostoIcmsIssqn';
  snOperacaoTransporteRequest_ParcelaUnica = 'ParcelaUnica';
  snOperacaoTransporteRequest_ModoCompraValePedagio = 'ModoCompraValePedagio';
  snOperacaoTransporteRequest_CategoriaVeiculo = 'CategoriaVeiculo';
  snOperacaoTransporteRequest_NomeMotorista = 'NomeMotorista';
  snOperacaoTransporteRequest_CPFMotorista = 'CPFMotorista';
  snOperacaoTransporteRequest_RNTRCMotorista = 'RNTRCMotorista';
  snOperacaoTransporteRequest_Quitacao = 'Quitacao';
  snOperacaoTransporteRequest_ItemFinanceiro = 'ItemFinanceiro';
  snOperacaoTransporteRequest_Parcelas = 'Parcelas';
  snOperacaoTransporteRequest_Veiculos = 'Veiculos';
  snOperacaoTransporteRequest_Participantes = 'Participantes';
  snOperacaoTransporteRequest_Triagem = 'Triagem';

type
  tOperacaoTransporteRequest = class
  private
    F_NameSpaceAlias: string;
    FCodigoCentroDeCusto: string; // (E)
    FCodigoCentroDeCusto_IsSet_: boolean;
    FNCM: string; // (E)
    FNCM_IsSet_: boolean;
    FProprietarioCarga: string; // (E)
    FProprietarioCarga_IsSet_: boolean;
    FPesoCarga: extended; // (E)
    FPesoCarga_IsSet_: boolean;
    FTipoOperacao: string; // (E)
    FTipoOperacao_IsSet_: boolean;
    FMunicipioOrigemCodigoIBGE: integer; // (E)
    FMunicipioOrigemCodigoIBGE_IsSet_: boolean;
    FMunicipioDestinoCodigoIBGE: integer; // (E)
    FMunicipioDestinoCodigoIBGE_IsSet_: boolean;
    FDataHoraInicio: tDateTime; // (E)
    FDataHoraInicio_IsSet_: boolean;
    FDataHoraTermino: tDateTime; // (E)
    FDataHoraTermino_IsSet_: boolean;
    FDataHoraInicioCadastro: tDateTime; // (E)
    FDataHoraInicioCadastro_IsSet_: boolean;
    FDataHoraFimCadastro: tDateTime; // (E)
    FDataHoraFimCadastro_IsSet_: boolean;
    FCPFCNPJContratado: string; // (E)
    FCPFCNPJContratado_IsSet_: boolean;
    FValorFrete: extended; // (E)
    FValorFrete_IsSet_: boolean;
    FValorCombustivel: extended; // (E)
    FValorCombustivel_IsSet_: boolean;
    FValorPedagio: extended; // (E)
    FValorPedagio_IsSet_: boolean;
    FValorDespesas: extended; // (E)
    FValorDespesas_IsSet_: boolean;
    FValorImpostoSestSenat: extended; // (E)
    FValorImpostoSestSenat_IsSet_: boolean;
    FValorImpostoIRRF: extended; // (E)
    FValorImpostoIRRF_IsSet_: boolean;
    FValorImpostoINSS: extended; // (E)
    FValorImpostoINSS_IsSet_: boolean;
    FValorImpostoIcmsIssqn: extended; // (E)
    FValorImpostoIcmsIssqn_IsSet_: boolean;
    FParcelaUnica: boolean; // (E)
    FParcelaUnica_IsSet_: boolean;
    FModoCompraValePedagio: integer; // (E)
    FModoCompraValePedagio_IsSet_: boolean;
    FCategoriaVeiculo: integer; // (E)
    FCategoriaVeiculo_IsSet_: boolean;
    FNomeMotorista: string; // (E)
    FNomeMotorista_IsSet_: boolean;
    FCPFMotorista: int64; // (E)
    FCPFMotorista_IsSet_: boolean;
    FRNTRCMotorista: string; // (E)
    FRNTRCMotorista_IsSet_: boolean;
    FQuitacao: boolean; // (E)
    FQuitacao_IsSet_: boolean;
    FItemFinanceiro: string; // (E)
    FItemFinanceiro_IsSet_: boolean;
    FParcelas: tArrayOfOperacaoTransporteParcelaRequest; // (E)
    FParcelas_IsSet_: boolean;
    FVeiculos: tArrayOfOperacaoTransporteVeiculoRequest; // (E)
    FVeiculos_IsSet_: boolean;
    FParticipantes: tArrayOfOperacaoTransporteParticipanteRequest; // (E)
    FParticipantes_IsSet_: boolean;
    FTriagem: tArrayOfOperacaoTransporteTriagemRequest; // (E)
    FTriagem_IsSet_: boolean;
    procedure SetCodigoCentroDeCusto(value:string);
    procedure SetNCM(value:string);
    procedure SetProprietarioCarga(value:string);
    procedure SetPesoCarga(value:extended);
    procedure SetTipoOperacao(value:string);
    procedure SetMunicipioOrigemCodigoIBGE(value:integer);
    procedure SetMunicipioDestinoCodigoIBGE(value:integer);
    procedure SetDataHoraInicio(value:tDateTime);
    procedure SetDataHoraTermino(value:tDateTime);
    procedure SetDataHoraInicioCadastro(value:tDateTime);
    procedure SetDataHoraFimCadastro(value:tDateTime);
    procedure SetCPFCNPJContratado(value:string);
    procedure SetValorFrete(value:extended);
    procedure SetValorCombustivel(value:extended);
    procedure SetValorPedagio(value:extended);
    procedure SetValorDespesas(value:extended);
    procedure SetValorImpostoSestSenat(value:extended);
    procedure SetValorImpostoIRRF(value:extended);
    procedure SetValorImpostoINSS(value:extended);
    procedure SetValorImpostoIcmsIssqn(value:extended);
    procedure SetParcelaUnica(value:boolean);
    procedure SetModoCompraValePedagio(value:integer);
    procedure SetCategoriaVeiculo(value:integer);
    procedure SetNomeMotorista(value:string);
    procedure SetCPFMotorista(value:int64);
    procedure SetRNTRCMotorista(value:string);
    procedure SetQuitacao(value:boolean);
    procedure SetItemFinanceiro(value:string);
    procedure SetParcelas(value:tArrayOfOperacaoTransporteParcelaRequest);
    procedure SetVeiculos(value:tArrayOfOperacaoTransporteVeiculoRequest);
    procedure SetParticipantes(value:tArrayOfOperacaoTransporteParticipanteRequest);
    procedure SetTriagem(value:tArrayOfOperacaoTransporteTriagemRequest);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CodigoCentroDeCusto: string read FCodigoCentroDeCusto write SetCodigoCentroDeCusto;
    property CodigoCentroDeCusto_IsSet_:boolean read FCodigoCentroDeCusto_IsSet_;
    property NCM: string read FNCM write SetNCM;
    property NCM_IsSet_:boolean read FNCM_IsSet_;
    property ProprietarioCarga: string read FProprietarioCarga write SetProprietarioCarga;
    property ProprietarioCarga_IsSet_:boolean read FProprietarioCarga_IsSet_;
    property PesoCarga: extended read FPesoCarga write SetPesoCarga;
    property PesoCarga_IsSet_:boolean read FPesoCarga_IsSet_;
    property TipoOperacao: string read FTipoOperacao write SetTipoOperacao;
    property TipoOperacao_IsSet_:boolean read FTipoOperacao_IsSet_;
    property MunicipioOrigemCodigoIBGE: integer read FMunicipioOrigemCodigoIBGE write SetMunicipioOrigemCodigoIBGE;
    property MunicipioOrigemCodigoIBGE_IsSet_:boolean read FMunicipioOrigemCodigoIBGE_IsSet_;
    property MunicipioDestinoCodigoIBGE: integer read FMunicipioDestinoCodigoIBGE write SetMunicipioDestinoCodigoIBGE;
    property MunicipioDestinoCodigoIBGE_IsSet_:boolean read FMunicipioDestinoCodigoIBGE_IsSet_;
    property DataHoraInicio: tDateTime read FDataHoraInicio write SetDataHoraInicio;
    property DataHoraInicio_IsSet_:boolean read FDataHoraInicio_IsSet_;
    property DataHoraTermino: tDateTime read FDataHoraTermino write SetDataHoraTermino;
    property DataHoraTermino_IsSet_:boolean read FDataHoraTermino_IsSet_;
    property DataHoraInicioCadastro: tDateTime read FDataHoraInicioCadastro write SetDataHoraInicioCadastro;
    property DataHoraInicioCadastro_IsSet_:boolean read FDataHoraInicioCadastro_IsSet_;
    property DataHoraFimCadastro: tDateTime read FDataHoraFimCadastro write SetDataHoraFimCadastro;
    property DataHoraFimCadastro_IsSet_:boolean read FDataHoraFimCadastro_IsSet_;
    property CPFCNPJContratado: string read FCPFCNPJContratado write SetCPFCNPJContratado;
    property CPFCNPJContratado_IsSet_:boolean read FCPFCNPJContratado_IsSet_;
    property ValorFrete: extended read FValorFrete write SetValorFrete;
    property ValorFrete_IsSet_:boolean read FValorFrete_IsSet_;
    property ValorCombustivel: extended read FValorCombustivel write SetValorCombustivel;
    property ValorCombustivel_IsSet_:boolean read FValorCombustivel_IsSet_;
    property ValorPedagio: extended read FValorPedagio write SetValorPedagio;
    property ValorPedagio_IsSet_:boolean read FValorPedagio_IsSet_;
    property ValorDespesas: extended read FValorDespesas write SetValorDespesas;
    property ValorDespesas_IsSet_:boolean read FValorDespesas_IsSet_;
    property ValorImpostoSestSenat: extended read FValorImpostoSestSenat write SetValorImpostoSestSenat;
    property ValorImpostoSestSenat_IsSet_:boolean read FValorImpostoSestSenat_IsSet_;
    property ValorImpostoIRRF: extended read FValorImpostoIRRF write SetValorImpostoIRRF;
    property ValorImpostoIRRF_IsSet_:boolean read FValorImpostoIRRF_IsSet_;
    property ValorImpostoINSS: extended read FValorImpostoINSS write SetValorImpostoINSS;
    property ValorImpostoINSS_IsSet_:boolean read FValorImpostoINSS_IsSet_;
    property ValorImpostoIcmsIssqn: extended read FValorImpostoIcmsIssqn write SetValorImpostoIcmsIssqn;
    property ValorImpostoIcmsIssqn_IsSet_:boolean read FValorImpostoIcmsIssqn_IsSet_;
    property ParcelaUnica: boolean read FParcelaUnica write SetParcelaUnica;
    property ParcelaUnica_IsSet_:boolean read FParcelaUnica_IsSet_;
    property ModoCompraValePedagio: integer read FModoCompraValePedagio write SetModoCompraValePedagio;
    property ModoCompraValePedagio_IsSet_:boolean read FModoCompraValePedagio_IsSet_;
    property CategoriaVeiculo: integer read FCategoriaVeiculo write SetCategoriaVeiculo;
    property CategoriaVeiculo_IsSet_:boolean read FCategoriaVeiculo_IsSet_;
    property NomeMotorista: string read FNomeMotorista write SetNomeMotorista;
    property NomeMotorista_IsSet_:boolean read FNomeMotorista_IsSet_;
    property CPFMotorista: int64 read FCPFMotorista write SetCPFMotorista;
    property CPFMotorista_IsSet_:boolean read FCPFMotorista_IsSet_;
    property RNTRCMotorista: string read FRNTRCMotorista write SetRNTRCMotorista;
    property RNTRCMotorista_IsSet_:boolean read FRNTRCMotorista_IsSet_;
    property Quitacao: boolean read FQuitacao write SetQuitacao;
    property Quitacao_IsSet_:boolean read FQuitacao_IsSet_;
    property ItemFinanceiro: string read FItemFinanceiro write SetItemFinanceiro;
    property ItemFinanceiro_IsSet_:boolean read FItemFinanceiro_IsSet_;
    property Parcelas: tArrayOfOperacaoTransporteParcelaRequest read FParcelas write SetParcelas;
    property Parcelas_IsSet_:boolean read FParcelas_IsSet_;
    property Veiculos: tArrayOfOperacaoTransporteVeiculoRequest read FVeiculos write SetVeiculos;
    property Veiculos_IsSet_:boolean read FVeiculos_IsSet_;
    property Participantes: tArrayOfOperacaoTransporteParticipanteRequest read FParticipantes write SetParticipantes;
    property Participantes_IsSet_:boolean read FParticipantes_IsSet_;
    property Triagem: tArrayOfOperacaoTransporteTriagemRequest read FTriagem write SetTriagem;
    property Triagem_IsSet_:boolean read FTriagem_IsSet_;
  end;

const
  snAtualizarOperacaoRequest = 'AtualizarOperacaoRequest';

type
  tAtualizarOperacaoRequest = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snSituacaoCadastroTransportadorAnttResponse = 'SituacaoCadastroTransportadorAnttResponse';

type
  tSituacaoCadastroTransportadorAnttResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snCadastroEquiparadoResponse = 'CadastroEquiparadoResponse';

type
  tCadastroEquiparadoResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snCadastroEquiparadoRequest = 'CadastroEquiparadoRequest';
  snCadastroEquiparadoRequest_RNTRC = 'RNTRC';
  snCadastroEquiparadoRequest_CNPJ = 'CNPJ';
  snCadastroEquiparadoRequest_RazaoSocial = 'RazaoSocial';
  snCadastroEquiparadoRequest_InscricaoEstadual = 'InscricaoEstadual';
  snCadastroEquiparadoRequest_InscricaoMunicipal = 'InscricaoMunicipal';
  snCadastroEquiparadoRequest_NomeFantasia = 'NomeFantasia';
  snCadastroEquiparadoRequest_DataInscricao = 'DataInscricao';
  snCadastroEquiparadoRequest_AtividadeEconomica = 'AtividadeEconomica';
  snCadastroEquiparadoRequest_Logradouro = 'Logradouro';
  snCadastroEquiparadoRequest_NumeroEndereco = 'NumeroEndereco';
  snCadastroEquiparadoRequest_Complemento = 'Complemento';
  snCadastroEquiparadoRequest_Bairro = 'Bairro';
  snCadastroEquiparadoRequest_CEP = 'CEP';
  snCadastroEquiparadoRequest_CodigoIBGEMunicipio = 'CodigoIBGEMunicipio';
  snCadastroEquiparadoRequest_TelefoneFixo = 'TelefoneFixo';
  snCadastroEquiparadoRequest_TelefoneCelular = 'TelefoneCelular';
  snCadastroEquiparadoRequest_Email = 'Email';
  snCadastroEquiparadoRequest_Login = 'Login';
  snCadastroEquiparadoRequest_CodigoBanco = 'CodigoBanco';
  snCadastroEquiparadoRequest_CodigoAgencia = 'CodigoAgencia';
  snCadastroEquiparadoRequest_DigitoAgencia = 'DigitoAgencia';
  snCadastroEquiparadoRequest_ContaCorrente = 'ContaCorrente';
  snCadastroEquiparadoRequest_DigitoContaCorrente = 'DigitoContaCorrente';

type
  tCadastroEquiparadoRequest = class
  private
    F_NameSpaceAlias: string;
    FRNTRC: string; // (E)
    FRNTRC_IsSet_: boolean;
    FCNPJ: string; // (E)
    FCNPJ_IsSet_: boolean;
    FRazaoSocial: string; // (E)
    FRazaoSocial_IsSet_: boolean;
    FInscricaoEstadual: string; // (E)
    FInscricaoEstadual_IsSet_: boolean;
    FInscricaoMunicipal: string; // (E)
    FInscricaoMunicipal_IsSet_: boolean;
    FNomeFantasia: string; // (E)
    FNomeFantasia_IsSet_: boolean;
    FDataInscricao: tDateTime; // (E)
    FDataInscricao_IsSet_: boolean;
    FAtividadeEconomica: integer; // (E)
    FAtividadeEconomica_IsSet_: boolean;
    FLogradouro: string; // (E)
    FLogradouro_IsSet_: boolean;
    FNumeroEndereco: string; // (E)
    FNumeroEndereco_IsSet_: boolean;
    FComplemento: string; // (E)
    FComplemento_IsSet_: boolean;
    FBairro: string; // (E)
    FBairro_IsSet_: boolean;
    FCEP: string; // (E)
    FCEP_IsSet_: boolean;
    FCodigoIBGEMunicipio: integer; // (E)
    FCodigoIBGEMunicipio_IsSet_: boolean;
    FTelefoneFixo: int64; // (E)
    FTelefoneFixo_IsSet_: boolean;
    FTelefoneCelular: int64; // (E)
    FTelefoneCelular_IsSet_: boolean;
    FEmail: string; // (E)
    FEmail_IsSet_: boolean;
    FLogin: string; // (E)
    FLogin_IsSet_: boolean;
    FCodigoBanco: string; // (E)
    FCodigoBanco_IsSet_: boolean;
    FCodigoAgencia: string; // (E)
    FCodigoAgencia_IsSet_: boolean;
    FDigitoAgencia: string; // (E)
    FDigitoAgencia_IsSet_: boolean;
    FContaCorrente: string; // (E)
    FContaCorrente_IsSet_: boolean;
    FDigitoContaCorrente: string; // (E)
    FDigitoContaCorrente_IsSet_: boolean;
    procedure SetRNTRC(value:string);
    procedure SetCNPJ(value:string);
    procedure SetRazaoSocial(value:string);
    procedure SetInscricaoEstadual(value:string);
    procedure SetInscricaoMunicipal(value:string);
    procedure SetNomeFantasia(value:string);
    procedure SetDataInscricao(value:tDateTime);
    procedure SetAtividadeEconomica(value:integer);
    procedure SetLogradouro(value:string);
    procedure SetNumeroEndereco(value:string);
    procedure SetComplemento(value:string);
    procedure SetBairro(value:string);
    procedure SetCEP(value:string);
    procedure SetCodigoIBGEMunicipio(value:integer);
    procedure SetTelefoneFixo(value:int64);
    procedure SetTelefoneCelular(value:int64);
    procedure SetEmail(value:string);
    procedure SetLogin(value:string);
    procedure SetCodigoBanco(value:string);
    procedure SetCodigoAgencia(value:string);
    procedure SetDigitoAgencia(value:string);
    procedure SetContaCorrente(value:string);
    procedure SetDigitoContaCorrente(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property RNTRC: string read FRNTRC write SetRNTRC;
    property RNTRC_IsSet_:boolean read FRNTRC_IsSet_;
    property CNPJ: string read FCNPJ write SetCNPJ;
    property CNPJ_IsSet_:boolean read FCNPJ_IsSet_;
    property RazaoSocial: string read FRazaoSocial write SetRazaoSocial;
    property RazaoSocial_IsSet_:boolean read FRazaoSocial_IsSet_;
    property InscricaoEstadual: string read FInscricaoEstadual write SetInscricaoEstadual;
    property InscricaoEstadual_IsSet_:boolean read FInscricaoEstadual_IsSet_;
    property InscricaoMunicipal: string read FInscricaoMunicipal write SetInscricaoMunicipal;
    property InscricaoMunicipal_IsSet_:boolean read FInscricaoMunicipal_IsSet_;
    property NomeFantasia: string read FNomeFantasia write SetNomeFantasia;
    property NomeFantasia_IsSet_:boolean read FNomeFantasia_IsSet_;
    property DataInscricao: tDateTime read FDataInscricao write SetDataInscricao;
    property DataInscricao_IsSet_:boolean read FDataInscricao_IsSet_;
    property AtividadeEconomica: integer read FAtividadeEconomica write SetAtividadeEconomica;
    property AtividadeEconomica_IsSet_:boolean read FAtividadeEconomica_IsSet_;
    property Logradouro: string read FLogradouro write SetLogradouro;
    property Logradouro_IsSet_:boolean read FLogradouro_IsSet_;
    property NumeroEndereco: string read FNumeroEndereco write SetNumeroEndereco;
    property NumeroEndereco_IsSet_:boolean read FNumeroEndereco_IsSet_;
    property Complemento: string read FComplemento write SetComplemento;
    property Complemento_IsSet_:boolean read FComplemento_IsSet_;
    property Bairro: string read FBairro write SetBairro;
    property Bairro_IsSet_:boolean read FBairro_IsSet_;
    property CEP: string read FCEP write SetCEP;
    property CEP_IsSet_:boolean read FCEP_IsSet_;
    property CodigoIBGEMunicipio: integer read FCodigoIBGEMunicipio write SetCodigoIBGEMunicipio;
    property CodigoIBGEMunicipio_IsSet_:boolean read FCodigoIBGEMunicipio_IsSet_;
    property TelefoneFixo: int64 read FTelefoneFixo write SetTelefoneFixo;
    property TelefoneFixo_IsSet_:boolean read FTelefoneFixo_IsSet_;
    property TelefoneCelular: int64 read FTelefoneCelular write SetTelefoneCelular;
    property TelefoneCelular_IsSet_:boolean read FTelefoneCelular_IsSet_;
    property Email: string read FEmail write SetEmail;
    property Email_IsSet_:boolean read FEmail_IsSet_;
    property Login: string read FLogin write SetLogin;
    property Login_IsSet_:boolean read FLogin_IsSet_;
    property CodigoBanco: string read FCodigoBanco write SetCodigoBanco;
    property CodigoBanco_IsSet_:boolean read FCodigoBanco_IsSet_;
    property CodigoAgencia: string read FCodigoAgencia write SetCodigoAgencia;
    property CodigoAgencia_IsSet_:boolean read FCodigoAgencia_IsSet_;
    property DigitoAgencia: string read FDigitoAgencia write SetDigitoAgencia;
    property DigitoAgencia_IsSet_:boolean read FDigitoAgencia_IsSet_;
    property ContaCorrente: string read FContaCorrente write SetContaCorrente;
    property ContaCorrente_IsSet_:boolean read FContaCorrente_IsSet_;
    property DigitoContaCorrente: string read FDigitoContaCorrente write SetDigitoContaCorrente;
    property DigitoContaCorrente_IsSet_:boolean read FDigitoContaCorrente_IsSet_;
  end;

const
  snCadastroAutonomoResponse = 'CadastroAutonomoResponse';

type
  tCadastroAutonomoResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snCadastroAutonomoRequest = 'CadastroAutonomoRequest';
  snCadastroAutonomoRequest_RNTRC = 'RNTRC';
  snCadastroAutonomoRequest_Nome = 'Nome';
  snCadastroAutonomoRequest_Sobrenome = 'Sobrenome';
  snCadastroAutonomoRequest_CPF = 'CPF';
  snCadastroAutonomoRequest_DataNascimento = 'DataNascimento';
  snCadastroAutonomoRequest_RG = 'RG';
  snCadastroAutonomoRequest_OrgaoExpedidor = 'OrgaoExpedidor';
  snCadastroAutonomoRequest_CNH = 'CNH';
  snCadastroAutonomoRequest_TipoCNH = 'TipoCNH';
  snCadastroAutonomoRequest_DataValidadeCNH = 'DataValidadeCNH';
  snCadastroAutonomoRequest_Sexo = 'Sexo';
  snCadastroAutonomoRequest_Naturalidade = 'Naturalidade';
  snCadastroAutonomoRequest_Nacionalidade = 'Nacionalidade';
  snCadastroAutonomoRequest_Logradouro = 'Logradouro';
  snCadastroAutonomoRequest_NumeroEndereco = 'NumeroEndereco';
  snCadastroAutonomoRequest_Complemento = 'Complemento';
  snCadastroAutonomoRequest_Bairro = 'Bairro';
  snCadastroAutonomoRequest_CEP = 'CEP';
  snCadastroAutonomoRequest_CodigoIBGEMunicipio = 'CodigoIBGEMunicipio';
  snCadastroAutonomoRequest_IdentificadorEndereco = 'IdentificadorEndereco';
  snCadastroAutonomoRequest_TelefoneFixo = 'TelefoneFixo';
  snCadastroAutonomoRequest_TelefoneCelular = 'TelefoneCelular';
  snCadastroAutonomoRequest_EstadoCivil = 'EstadoCivil';
  snCadastroAutonomoRequest_Email = 'Email';
  snCadastroAutonomoRequest_CodigoBanco = 'CodigoBanco';
  snCadastroAutonomoRequest_CodigoAgencia = 'CodigoAgencia';
  snCadastroAutonomoRequest_DigitoAgencia = 'DigitoAgencia';
  snCadastroAutonomoRequest_ContaCorrente = 'ContaCorrente';
  snCadastroAutonomoRequest_DigitoContaCorrente = 'DigitoContaCorrente';

type
  tCadastroAutonomoRequest = class
  private
    F_NameSpaceAlias: string;
    FRNTRC: string; // (E)
    FRNTRC_IsSet_: boolean;
    FNome: string; // (E)
    FNome_IsSet_: boolean;
    FSobrenome: string; // (E)
    FSobrenome_IsSet_: boolean;
    FCPF: string; // (E)
    FCPF_IsSet_: boolean;
    FDataNascimento: tDateTime; // (E)
    FDataNascimento_IsSet_: boolean;
    FRG: string; // (E)
    FRG_IsSet_: boolean;
    FOrgaoExpedidor: string; // (E)
    FOrgaoExpedidor_IsSet_: boolean;
    FCNH: string; // (E)
    FCNH_IsSet_: boolean;
    FTipoCNH: string; // (E)
    FTipoCNH_IsSet_: boolean;
    FDataValidadeCNH: tDateTime; // (E)
    FDataValidadeCNH_IsSet_: boolean;
    FSexo: string; // (E)
    FSexo_IsSet_: boolean;
    FNaturalidade: string; // (E)
    FNaturalidade_IsSet_: boolean;
    FNacionalidade: string; // (E)
    FNacionalidade_IsSet_: boolean;
    FLogradouro: string; // (E)
    FLogradouro_IsSet_: boolean;
    FNumeroEndereco: string; // (E)
    FNumeroEndereco_IsSet_: boolean;
    FComplemento: string; // (E)
    FComplemento_IsSet_: boolean;
    FBairro: string; // (E)
    FBairro_IsSet_: boolean;
    FCEP: string; // (E)
    FCEP_IsSet_: boolean;
    FCodigoIBGEMunicipio: integer; // (E)
    FCodigoIBGEMunicipio_IsSet_: boolean;
    FIdentificadorEndereco: string; // (E)
    FIdentificadorEndereco_IsSet_: boolean;
    FTelefoneFixo: int64; // (E)
    FTelefoneFixo_IsSet_: boolean;
    FTelefoneCelular: int64; // (E)
    FTelefoneCelular_IsSet_: boolean;
    FEstadoCivil: integer; // (E)
    FEstadoCivil_IsSet_: boolean;
    FEmail: string; // (E)
    FEmail_IsSet_: boolean;
    FCodigoBanco: string; // (E)
    FCodigoBanco_IsSet_: boolean;
    FCodigoAgencia: string; // (E)
    FCodigoAgencia_IsSet_: boolean;
    FDigitoAgencia: string; // (E)
    FDigitoAgencia_IsSet_: boolean;
    FContaCorrente: string; // (E)
    FContaCorrente_IsSet_: boolean;
    FDigitoContaCorrente: string; // (E)
    FDigitoContaCorrente_IsSet_: boolean;
    procedure SetRNTRC(value:string);
    procedure SetNome(value:string);
    procedure SetSobrenome(value:string);
    procedure SetCPF(value:string);
    procedure SetDataNascimento(value:tDateTime);
    procedure SetRG(value:string);
    procedure SetOrgaoExpedidor(value:string);
    procedure SetCNH(value:string);
    procedure SetTipoCNH(value:string);
    procedure SetDataValidadeCNH(value:tDateTime);
    procedure SetSexo(value:string);
    procedure SetNaturalidade(value:string);
    procedure SetNacionalidade(value:string);
    procedure SetLogradouro(value:string);
    procedure SetNumeroEndereco(value:string);
    procedure SetComplemento(value:string);
    procedure SetBairro(value:string);
    procedure SetCEP(value:string);
    procedure SetCodigoIBGEMunicipio(value:integer);
    procedure SetIdentificadorEndereco(value:string);
    procedure SetTelefoneFixo(value:int64);
    procedure SetTelefoneCelular(value:int64);
    procedure SetEstadoCivil(value:integer);
    procedure SetEmail(value:string);
    procedure SetCodigoBanco(value:string);
    procedure SetCodigoAgencia(value:string);
    procedure SetDigitoAgencia(value:string);
    procedure SetContaCorrente(value:string);
    procedure SetDigitoContaCorrente(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property RNTRC: string read FRNTRC write SetRNTRC;
    property RNTRC_IsSet_:boolean read FRNTRC_IsSet_;
    property Nome: string read FNome write SetNome;
    property Nome_IsSet_:boolean read FNome_IsSet_;
    property Sobrenome: string read FSobrenome write SetSobrenome;
    property Sobrenome_IsSet_:boolean read FSobrenome_IsSet_;
    property CPF: string read FCPF write SetCPF;
    property CPF_IsSet_:boolean read FCPF_IsSet_;
    property DataNascimento: tDateTime read FDataNascimento write SetDataNascimento;
    property DataNascimento_IsSet_:boolean read FDataNascimento_IsSet_;
    property RG: string read FRG write SetRG;
    property RG_IsSet_:boolean read FRG_IsSet_;
    property OrgaoExpedidor: string read FOrgaoExpedidor write SetOrgaoExpedidor;
    property OrgaoExpedidor_IsSet_:boolean read FOrgaoExpedidor_IsSet_;
    property CNH: string read FCNH write SetCNH;
    property CNH_IsSet_:boolean read FCNH_IsSet_;
    property TipoCNH: string read FTipoCNH write SetTipoCNH;
    property TipoCNH_IsSet_:boolean read FTipoCNH_IsSet_;
    property DataValidadeCNH: tDateTime read FDataValidadeCNH write SetDataValidadeCNH;
    property DataValidadeCNH_IsSet_:boolean read FDataValidadeCNH_IsSet_;
    property Sexo: string read FSexo write SetSexo;
    property Sexo_IsSet_:boolean read FSexo_IsSet_;
    property Naturalidade: string read FNaturalidade write SetNaturalidade;
    property Naturalidade_IsSet_:boolean read FNaturalidade_IsSet_;
    property Nacionalidade: string read FNacionalidade write SetNacionalidade;
    property Nacionalidade_IsSet_:boolean read FNacionalidade_IsSet_;
    property Logradouro: string read FLogradouro write SetLogradouro;
    property Logradouro_IsSet_:boolean read FLogradouro_IsSet_;
    property NumeroEndereco: string read FNumeroEndereco write SetNumeroEndereco;
    property NumeroEndereco_IsSet_:boolean read FNumeroEndereco_IsSet_;
    property Complemento: string read FComplemento write SetComplemento;
    property Complemento_IsSet_:boolean read FComplemento_IsSet_;
    property Bairro: string read FBairro write SetBairro;
    property Bairro_IsSet_:boolean read FBairro_IsSet_;
    property CEP: string read FCEP write SetCEP;
    property CEP_IsSet_:boolean read FCEP_IsSet_;
    property CodigoIBGEMunicipio: integer read FCodigoIBGEMunicipio write SetCodigoIBGEMunicipio;
    property CodigoIBGEMunicipio_IsSet_:boolean read FCodigoIBGEMunicipio_IsSet_;
    property IdentificadorEndereco: string read FIdentificadorEndereco write SetIdentificadorEndereco;
    property IdentificadorEndereco_IsSet_:boolean read FIdentificadorEndereco_IsSet_;
    property TelefoneFixo: int64 read FTelefoneFixo write SetTelefoneFixo;
    property TelefoneFixo_IsSet_:boolean read FTelefoneFixo_IsSet_;
    property TelefoneCelular: int64 read FTelefoneCelular write SetTelefoneCelular;
    property TelefoneCelular_IsSet_:boolean read FTelefoneCelular_IsSet_;
    property EstadoCivil: integer read FEstadoCivil write SetEstadoCivil;
    property EstadoCivil_IsSet_:boolean read FEstadoCivil_IsSet_;
    property Email: string read FEmail write SetEmail;
    property Email_IsSet_:boolean read FEmail_IsSet_;
    property CodigoBanco: string read FCodigoBanco write SetCodigoBanco;
    property CodigoBanco_IsSet_:boolean read FCodigoBanco_IsSet_;
    property CodigoAgencia: string read FCodigoAgencia write SetCodigoAgencia;
    property CodigoAgencia_IsSet_:boolean read FCodigoAgencia_IsSet_;
    property DigitoAgencia: string read FDigitoAgencia write SetDigitoAgencia;
    property DigitoAgencia_IsSet_:boolean read FDigitoAgencia_IsSet_;
    property ContaCorrente: string read FContaCorrente write SetContaCorrente;
    property ContaCorrente_IsSet_:boolean read FContaCorrente_IsSet_;
    property DigitoContaCorrente: string read FDigitoContaCorrente write SetDigitoContaCorrente;
    property DigitoContaCorrente_IsSet_:boolean read FDigitoContaCorrente_IsSet_;
  end;

const
  snBuscaParticipantesResponse = 'BuscaParticipantesResponse';

type
  tBuscaParticipantesResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snObterParticipanteResponse = 'ObterParticipanteResponse';

type
  tObterParticipanteResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snBaseParticipanteRequestResponse = 'BaseParticipanteRequestResponse';
  snBaseParticipanteRequestResponse_IdParticipanteOperacaoTransporte = 'IdParticipanteOperacaoTransporte';
  snBaseParticipanteRequestResponse_IdDmTipoPessoa = 'IdDmTipoPessoa';
  snBaseParticipanteRequestResponse_Nome = 'Nome';
  snBaseParticipanteRequestResponse_RazaoSocial = 'RazaoSocial';
  snBaseParticipanteRequestResponse_CPFCNPJ = 'CPFCNPJ';
  snBaseParticipanteRequestResponse_Endereco = 'Endereco';
  snBaseParticipanteRequestResponse_Bairro = 'Bairro';
  snBaseParticipanteRequestResponse_CEP = 'CEP';
  snBaseParticipanteRequestResponse_IdMunicipio = 'IdMunicipio';
  snBaseParticipanteRequestResponse_RNTRC = 'RNTRC';
  snBaseParticipanteRequestResponse_Ativo = 'Ativo';
  snBaseParticipanteRequestResponse_TipoParticipante = 'TipoParticipante';
  snBaseParticipanteRequestResponse_Email = 'Email';

type
  tBaseParticipanteRequestResponse = class
  private
    F_NameSpaceAlias: string;
    FIdParticipanteOperacaoTransporte: integer; // (E)
    FIdParticipanteOperacaoTransporte_IsSet_: boolean;
    FIdDmTipoPessoa: integer; // (E)
    FIdDmTipoPessoa_IsSet_: boolean;
    FNome: string; // (E)
    FNome_IsSet_: boolean;
    FRazaoSocial: string; // (E)
    FRazaoSocial_IsSet_: boolean;
    FCPFCNPJ: string; // (E)
    FCPFCNPJ_IsSet_: boolean;
    FEndereco: string; // (E)
    FEndereco_IsSet_: boolean;
    FBairro: string; // (E)
    FBairro_IsSet_: boolean;
    FCEP: string; // (E)
    FCEP_IsSet_: boolean;
    FIdMunicipio: integer; // (E)
    FIdMunicipio_IsSet_: boolean;
    FRNTRC: string; // (E)
    FRNTRC_IsSet_: boolean;
    FAtivo: boolean; // (E)
    FAtivo_IsSet_: boolean;
    FTipoParticipante: string; // (E)
    FTipoParticipante_IsSet_: boolean;
    FEmail: string; // (E)
    FEmail_IsSet_: boolean;
    procedure SetIdParticipanteOperacaoTransporte(value:integer);
    procedure SetIdDmTipoPessoa(value:integer);
    procedure SetNome(value:string);
    procedure SetRazaoSocial(value:string);
    procedure SetCPFCNPJ(value:string);
    procedure SetEndereco(value:string);
    procedure SetBairro(value:string);
    procedure SetCEP(value:string);
    procedure SetIdMunicipio(value:integer);
    procedure SetRNTRC(value:string);
    procedure SetAtivo(value:boolean);
    procedure SetTipoParticipante(value:string);
    procedure SetEmail(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property IdParticipanteOperacaoTransporte: integer read FIdParticipanteOperacaoTransporte write SetIdParticipanteOperacaoTransporte;
    property IdParticipanteOperacaoTransporte_IsSet_:boolean read FIdParticipanteOperacaoTransporte_IsSet_;
    property IdDmTipoPessoa: integer read FIdDmTipoPessoa write SetIdDmTipoPessoa;
    property IdDmTipoPessoa_IsSet_:boolean read FIdDmTipoPessoa_IsSet_;
    property Nome: string read FNome write SetNome;
    property Nome_IsSet_:boolean read FNome_IsSet_;
    property RazaoSocial: string read FRazaoSocial write SetRazaoSocial;
    property RazaoSocial_IsSet_:boolean read FRazaoSocial_IsSet_;
    property CPFCNPJ: string read FCPFCNPJ write SetCPFCNPJ;
    property CPFCNPJ_IsSet_:boolean read FCPFCNPJ_IsSet_;
    property Endereco: string read FEndereco write SetEndereco;
    property Endereco_IsSet_:boolean read FEndereco_IsSet_;
    property Bairro: string read FBairro write SetBairro;
    property Bairro_IsSet_:boolean read FBairro_IsSet_;
    property CEP: string read FCEP write SetCEP;
    property CEP_IsSet_:boolean read FCEP_IsSet_;
    property IdMunicipio: integer read FIdMunicipio write SetIdMunicipio;
    property IdMunicipio_IsSet_:boolean read FIdMunicipio_IsSet_;
    property RNTRC: string read FRNTRC write SetRNTRC;
    property RNTRC_IsSet_:boolean read FRNTRC_IsSet_;
    property Ativo: boolean read FAtivo write SetAtivo;
    property Ativo_IsSet_:boolean read FAtivo_IsSet_;
    property TipoParticipante: string read FTipoParticipante write SetTipoParticipante;
    property TipoParticipante_IsSet_:boolean read FTipoParticipante_IsSet_;
    property Email: string read FEmail write SetEmail;
    property Email_IsSet_:boolean read FEmail_IsSet_;
  end;

const
  snArrayOfBaseParticipanteRequestResponse = 'ArrayOfBaseParticipanteRequestResponse';
  snArrayOfBaseParticipanteRequestResponse_BaseParticipanteRequestResponse = 'BaseParticipanteRequestResponse';

type
  tArrayOfBaseParticipanteRequestResponse = class
  private
    F_NameSpaceAlias: string;
    FBaseParticipanteRequestResponse: tManagedStringList; // of tBaseParticipanteRequestResponse(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property BaseParticipanteRequestResponse: tManagedStringList read FBaseParticipanteRequestResponse write FBaseParticipanteRequestResponse; // of tBaseParticipanteRequestResponse
  end;

const
  snBuscaCentrosDeCustosResponse = 'BuscaCentrosDeCustosResponse';

type
  tBuscaCentrosDeCustosResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snObterCentroDeCustoResponse = 'ObterCentroDeCustoResponse';

type
  tObterCentroDeCustoResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snBaseResponse = 'BaseResponse';
  snBaseResponse_MensagemRetorno = 'MensagemRetorno';
  snBaseResponse_Sucesso = 'Sucesso';

type
  tBaseResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
  end;

const
  snBaseCentroDeCustoRequestResponse = 'BaseCentroDeCustoRequestResponse';
  snBaseCentroDeCustoRequestResponse_IdCentroDeCusto = 'IdCentroDeCusto';
  snBaseCentroDeCustoRequestResponse_Codigo = 'Codigo';
  snBaseCentroDeCustoRequestResponse_Descricao = 'Descricao';
  snBaseCentroDeCustoRequestResponse_Comentario = 'Comentario';
  snBaseCentroDeCustoRequestResponse_Ativo = 'Ativo';

type
  tBaseCentroDeCustoRequestResponse = class
  private
    F_NameSpaceAlias: string;
    FIdCentroDeCusto: integer; // (E)
    FIdCentroDeCusto_IsSet_: boolean;
    FCodigo: string; // (E)
    FCodigo_IsSet_: boolean;
    FDescricao: string; // (E)
    FDescricao_IsSet_: boolean;
    FComentario: string; // (E)
    FComentario_IsSet_: boolean;
    FAtivo: boolean; // (E)
    FAtivo_IsSet_: boolean;
    procedure SetIdCentroDeCusto(value:integer);
    procedure SetCodigo(value:string);
    procedure SetDescricao(value:string);
    procedure SetComentario(value:string);
    procedure SetAtivo(value:boolean);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property IdCentroDeCusto: integer read FIdCentroDeCusto write SetIdCentroDeCusto;
    property IdCentroDeCusto_IsSet_:boolean read FIdCentroDeCusto_IsSet_;
    property Codigo: string read FCodigo write SetCodigo;
    property Codigo_IsSet_:boolean read FCodigo_IsSet_;
    property Descricao: string read FDescricao write SetDescricao;
    property Descricao_IsSet_:boolean read FDescricao_IsSet_;
    property Comentario: string read FComentario write SetComentario;
    property Comentario_IsSet_:boolean read FComentario_IsSet_;
    property Ativo: boolean read FAtivo write SetAtivo;
    property Ativo_IsSet_:boolean read FAtivo_IsSet_;
  end;

const
  snArrayOfBaseCentroDeCustoRequestResponse = 'ArrayOfBaseCentroDeCustoRequestResponse';
  snArrayOfBaseCentroDeCustoRequestResponse_BaseCentroDeCustoRequestResponse = 'BaseCentroDeCustoRequestResponse';

type
  tArrayOfBaseCentroDeCustoRequestResponse = class
  private
    F_NameSpaceAlias: string;
    FBaseCentroDeCustoRequestResponse: tManagedStringList; // of tBaseCentroDeCustoRequestResponse(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property BaseCentroDeCustoRequestResponse: tManagedStringList read FBaseCentroDeCustoRequestResponse write FBaseCentroDeCustoRequestResponse; // of tBaseCentroDeCustoRequestResponse
  end;

implementation
uses
  SysUtils,
  mylib;

const
  thisNamespaceURI = 'http://schemas.datacontract.org/2004/07/TARGET.VectioFrete.Application.WCF.Contracts.External';
  defNamespaceAlias = 'tns';

{ tDadosInteresseRotaResponse }

function tDadosInteresseRotaResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tDadosInteresseRotaResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tDadosInteresseRotaResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tDadosInteresseRotaResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tDadosInteresseRotaResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tDadosInteresseRotaResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'DadosInteresseRotaResponse')
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

{ tConsultaRotaMapLinkPedagiosResponse }

function tConsultaRotaMapLinkPedagiosResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tConsultaRotaMapLinkPedagiosResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tConsultaRotaMapLinkPedagiosResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tConsultaRotaMapLinkPedagiosResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tConsultaRotaMapLinkPedagiosResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tConsultaRotaMapLinkPedagiosResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ConsultaRotaMapLinkPedagiosResponse')
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

{ tArrayOfConsultaRotaMapLinkPedagiosResponse }

function tArrayOfConsultaRotaMapLinkPedagiosResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tArrayOfConsultaRotaMapLinkPedagiosResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tArrayOfConsultaRotaMapLinkPedagiosResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FConsultaRotaMapLinkPedagiosResponse := tManagedStringlist.Create;
end; // constructor ...

constructor tArrayOfConsultaRotaMapLinkPedagiosResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snArrayOfConsultaRotaMapLinkPedagiosResponse_ConsultaRotaMapLinkPedagiosResponse) then
    begin
      // list of simple type
      FConsultaRotaMapLinkPedagiosResponse.Add(xn.text);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tArrayOfConsultaRotaMapLinkPedagiosResponse.Destroy;
begin
  FConsultaRotaMapLinkPedagiosResponse.Free;
  inherited;
end; // destructor ...

procedure tArrayOfConsultaRotaMapLinkPedagiosResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ArrayOfConsultaRotaMapLinkPedagiosResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "ConsultaRotaMapLinkPedagiosResponse" is tManagedStringlist
  if Assigned(FConsultaRotaMapLinkPedagiosResponse) then
    for i:=0 to FConsultaRotaMapLinkPedagiosResponse.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snArrayOfConsultaRotaMapLinkPedagiosResponse_ConsultaRotaMapLinkPedagiosResponse));
      tConsultaRotaMapLinkPedagiosResponse(FConsultaRotaMapLinkPedagiosResponse.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tConsultaRotaMapLinkParadaResponse }

function tConsultaRotaMapLinkParadaResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tConsultaRotaMapLinkParadaResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tConsultaRotaMapLinkParadaResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tConsultaRotaMapLinkParadaResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tConsultaRotaMapLinkParadaResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tConsultaRotaMapLinkParadaResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ConsultaRotaMapLinkParadaResponse')
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

{ tArrayOfConsultaRotaMapLinkParadaResponse }

function tArrayOfConsultaRotaMapLinkParadaResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tArrayOfConsultaRotaMapLinkParadaResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tArrayOfConsultaRotaMapLinkParadaResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FConsultaRotaMapLinkParadaResponse := tManagedStringlist.Create;
end; // constructor ...

constructor tArrayOfConsultaRotaMapLinkParadaResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snArrayOfConsultaRotaMapLinkParadaResponse_ConsultaRotaMapLinkParadaResponse) then
    begin
      // list of simple type
      FConsultaRotaMapLinkParadaResponse.Add(xn.text);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tArrayOfConsultaRotaMapLinkParadaResponse.Destroy;
begin
  FConsultaRotaMapLinkParadaResponse.Free;
  inherited;
end; // destructor ...

procedure tArrayOfConsultaRotaMapLinkParadaResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ArrayOfConsultaRotaMapLinkParadaResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "ConsultaRotaMapLinkParadaResponse" is tManagedStringlist
  if Assigned(FConsultaRotaMapLinkParadaResponse) then
    for i:=0 to FConsultaRotaMapLinkParadaResponse.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snArrayOfConsultaRotaMapLinkParadaResponse_ConsultaRotaMapLinkParadaResponse));
      tConsultaRotaMapLinkParadaResponse(FConsultaRotaMapLinkParadaResponse.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tObterCustoRotaResponse }

function tObterCustoRotaResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tObterCustoRotaResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterCustoRotaResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tObterCustoRotaResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tObterCustoRotaResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterCustoRotaResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterCustoRotaResponse')
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

{ tObterCustoRotaRequest }

function tObterCustoRotaRequest.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tObterCustoRotaRequest._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterCustoRotaRequest.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tObterCustoRotaRequest.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterCustoRotaRequest_IdRotaModelo) then
      IdRotaModelo := StrToIntDef(xn.text, 0)
    else if (sn = snObterCustoRotaRequest_ModoCompra) then
      ModoCompra := StrToIntDef(xn.text, 0)
    else if (sn = snObterCustoRotaRequest_IdDmCategoriaVeiculo) then
      IdDmCategoriaVeiculo := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterCustoRotaRequest.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterCustoRotaRequest.SetIdRotaModelo(value:integer);
begin
  FIdRotaModelo := value;
  FIdRotaModelo_IsSet_ := true;
end;

procedure tObterCustoRotaRequest.SetModoCompra(value:integer);
begin
  FModoCompra := value;
  FModoCompra_IsSet_ := true;
end;

procedure tObterCustoRotaRequest.SetIdDmCategoriaVeiculo(value:integer);
begin
  FIdDmCategoriaVeiculo := value;
  FIdDmCategoriaVeiculo_IsSet_ := true;
end;

procedure tObterCustoRotaRequest.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterCustoRotaRequest')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if IdRotaModelo_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterCustoRotaRequest_IdRotaModelo));
    xn.text := IntToStr(FIdRotaModelo);
  end;
  if ModoCompra_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterCustoRotaRequest_ModoCompra));
    xn.text := IntToStr(FModoCompra);
  end;
  if IdDmCategoriaVeiculo_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterCustoRotaRequest_IdDmCategoriaVeiculo));
    xn.text := IntToStr(FIdDmCategoriaVeiculo);
  end;
end; // procedure save

{ tObterLogRequisicoesResponse }

function tObterLogRequisicoesResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tObterLogRequisicoesResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterLogRequisicoesResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tObterLogRequisicoesResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tObterLogRequisicoesResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterLogRequisicoesResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterLogRequisicoesResponse')
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

{ tComprarValePedagioAvulsoResponse }

function tComprarValePedagioAvulsoResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tComprarValePedagioAvulsoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tComprarValePedagioAvulsoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tComprarValePedagioAvulsoResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tComprarValePedagioAvulsoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tComprarValePedagioAvulsoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ComprarValePedagioAvulsoResponse')
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

{ tComprarValePedagioAvulsoRequest }

function tComprarValePedagioAvulsoRequest.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tComprarValePedagioAvulsoRequest._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tComprarValePedagioAvulsoRequest.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tComprarValePedagioAvulsoRequest.Create(aRoot:tJanXMLNode2);
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
    if (sn = snComprarValePedagioAvulsoRequest_CodigoCategoriaVeiculo) then
      CodigoCategoriaVeiculo := StrToIntDef(xn.text, 0)
    else if (sn = snComprarValePedagioAvulsoRequest_Valor) then
      Valor := DefStrToFloat(xn.text, 0)
    else if (sn = snComprarValePedagioAvulsoRequest_CodigoCentroDeCusto) then
      CodigoCentroDeCusto := StrToIntDef(xn.text, 0)
    else if (sn = snComprarValePedagioAvulsoRequest_Placa) then
      Placa :=  xn.text // string
    else if (sn = snComprarValePedagioAvulsoRequest_MotoristaNome) then
      MotoristaNome :=  xn.text // string
    else if (sn = snComprarValePedagioAvulsoRequest_MotoristaCPF) then
      MotoristaCPF :=  xn.text // string
    else if (sn = snComprarValePedagioAvulsoRequest_MotoristaRNTRC) then
      MotoristaRNTRC :=  xn.text // string
    else if (sn = snComprarValePedagioAvulsoRequest_NumeroDocumento) then
      NumeroDocumento :=  xn.text // string
    else if (sn = snComprarValePedagioAvulsoRequest_NumeroCartao) then
      NumeroCartao :=  xn.text // string
    else if (sn = snComprarValePedagioAvulsoRequest_MunicipioOrigemCodigoIBGE) then
      MunicipioOrigemCodigoIBGE := StrToIntDef(xn.text, 0)
    else if (sn = snComprarValePedagioAvulsoRequest_MunicipioDestinoCodigoIBGE) then
      MunicipioDestinoCodigoIBGE := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tComprarValePedagioAvulsoRequest.Destroy;
begin
  inherited;
end; // destructor ...

procedure tComprarValePedagioAvulsoRequest.SetCodigoCategoriaVeiculo(value:integer);
begin
  FCodigoCategoriaVeiculo := value;
  FCodigoCategoriaVeiculo_IsSet_ := true;
end;

procedure tComprarValePedagioAvulsoRequest.SetValor(value:extended);
begin
  FValor := value;
  FValor_IsSet_ := true;
end;

procedure tComprarValePedagioAvulsoRequest.SetCodigoCentroDeCusto(value:integer);
begin
  FCodigoCentroDeCusto := value;
  FCodigoCentroDeCusto_IsSet_ := true;
end;

procedure tComprarValePedagioAvulsoRequest.SetPlaca(value:string);
begin
  FPlaca := value;
  FPlaca_IsSet_ := true;
end;

procedure tComprarValePedagioAvulsoRequest.SetMotoristaNome(value:string);
begin
  FMotoristaNome := value;
  FMotoristaNome_IsSet_ := true;
end;

procedure tComprarValePedagioAvulsoRequest.SetMotoristaCPF(value:string);
begin
  FMotoristaCPF := value;
  FMotoristaCPF_IsSet_ := true;
end;

procedure tComprarValePedagioAvulsoRequest.SetMotoristaRNTRC(value:string);
begin
  FMotoristaRNTRC := value;
  FMotoristaRNTRC_IsSet_ := true;
end;

procedure tComprarValePedagioAvulsoRequest.SetNumeroDocumento(value:string);
begin
  FNumeroDocumento := value;
  FNumeroDocumento_IsSet_ := true;
end;

procedure tComprarValePedagioAvulsoRequest.SetNumeroCartao(value:string);
begin
  FNumeroCartao := value;
  FNumeroCartao_IsSet_ := true;
end;

procedure tComprarValePedagioAvulsoRequest.SetMunicipioOrigemCodigoIBGE(value:integer);
begin
  FMunicipioOrigemCodigoIBGE := value;
  FMunicipioOrigemCodigoIBGE_IsSet_ := true;
end;

procedure tComprarValePedagioAvulsoRequest.SetMunicipioDestinoCodigoIBGE(value:integer);
begin
  FMunicipioDestinoCodigoIBGE := value;
  FMunicipioDestinoCodigoIBGE_IsSet_ := true;
end;

procedure tComprarValePedagioAvulsoRequest.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ComprarValePedagioAvulsoRequest')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if CodigoCategoriaVeiculo_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snComprarValePedagioAvulsoRequest_CodigoCategoriaVeiculo));
    xn.text := IntToStr(FCodigoCategoriaVeiculo);
  end;
  if Valor_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snComprarValePedagioAvulsoRequest_Valor));
    xn.text := MyFloatToStr(FValor);
  end;
  if CodigoCentroDeCusto_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snComprarValePedagioAvulsoRequest_CodigoCentroDeCusto));
    xn.text := IntToStr(FCodigoCentroDeCusto);
  end;
  if Placa_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snComprarValePedagioAvulsoRequest_Placa));
    xn.text := FPlaca;
  end;
  if MotoristaNome_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snComprarValePedagioAvulsoRequest_MotoristaNome));
    xn.text := FMotoristaNome;
  end;
  if MotoristaCPF_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snComprarValePedagioAvulsoRequest_MotoristaCPF));
    xn.text := FMotoristaCPF;
  end;
  if MotoristaRNTRC_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snComprarValePedagioAvulsoRequest_MotoristaRNTRC));
    xn.text := FMotoristaRNTRC;
  end;
  if NumeroDocumento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snComprarValePedagioAvulsoRequest_NumeroDocumento));
    xn.text := FNumeroDocumento;
  end;
  if NumeroCartao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snComprarValePedagioAvulsoRequest_NumeroCartao));
    xn.text := FNumeroCartao;
  end;
  if MunicipioOrigemCodigoIBGE_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snComprarValePedagioAvulsoRequest_MunicipioOrigemCodigoIBGE));
    xn.text := IntToStr(FMunicipioOrigemCodigoIBGE);
  end;
  if MunicipioDestinoCodigoIBGE_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snComprarValePedagioAvulsoRequest_MunicipioDestinoCodigoIBGE));
    xn.text := IntToStr(FMunicipioDestinoCodigoIBGE);
  end;
end; // procedure save

{ tBuscarMotoristaResponse }

function tBuscarMotoristaResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tBuscarMotoristaResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarMotoristaResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tBuscarMotoristaResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tBuscarMotoristaResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tBuscarMotoristaResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscarMotoristaResponse')
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

{ tBaseMotoristaRequestResponse }

function tBaseMotoristaRequestResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tBaseMotoristaRequestResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBaseMotoristaRequestResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tBaseMotoristaRequestResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snBaseMotoristaRequestResponse_Ativo) then
      Ativo := (xn.text = 'true')
    else if (sn = snBaseMotoristaRequestResponse_Bairro) then
      Bairro :=  xn.text // string
    else if (sn = snBaseMotoristaRequestResponse_CEP) then
      CEP :=  xn.text // string
    else if (sn = snBaseMotoristaRequestResponse_CPF) then
      CPF :=  xn.text // string
    else if (sn = snBaseMotoristaRequestResponse_Cidade) then
      Cidade :=  xn.text // string
    else if (sn = snBaseMotoristaRequestResponse_CodigoAgencia) then
      CodigoAgencia :=  xn.text // string
    else if (sn = snBaseMotoristaRequestResponse_CodigoBanco) then
      CodigoBanco :=  xn.text // string
    else if (sn = snBaseMotoristaRequestResponse_CodigoMotorista) then
      CodigoMotorista := StrToIntDef(xn.text, 0)
    else if (sn = snBaseMotoristaRequestResponse_Complemento) then
      Complemento :=  xn.text // string
    else if (sn = snBaseMotoristaRequestResponse_ContaCorrente) then
      ContaCorrente :=  xn.text // string
    else if (sn = snBaseMotoristaRequestResponse_DataHoraAtualizacao) then
      DataHoraAtualizacao := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snBaseMotoristaRequestResponse_DataHoraRegistro) then
      DataHoraRegistro := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snBaseMotoristaRequestResponse_DataNascimento) then
      DataNascimento := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snBaseMotoristaRequestResponse_DigitoAgencia) then
      DigitoAgencia :=  xn.text // string
    else if (sn = snBaseMotoristaRequestResponse_DigitoContaCorrente) then
      DigitoContaCorrente :=  xn.text // string
    else if (sn = snBaseMotoristaRequestResponse_Email) then
      Email :=  xn.text // string
    else if (sn = snBaseMotoristaRequestResponse_Estado) then
      Estado :=  xn.text // string
    else if (sn = snBaseMotoristaRequestResponse_EstadoCivil) then
      EstadoCivil :=  xn.text // string
    else if (sn = snBaseMotoristaRequestResponse_Logradouro) then
      Logradouro :=  xn.text // string
    else if (sn = snBaseMotoristaRequestResponse_Nacionalidade) then
      Nacionalidade :=  xn.text // string
    else if (sn = snBaseMotoristaRequestResponse_Nome) then
      Nome :=  xn.text // string
    else if (sn = snBaseMotoristaRequestResponse_NomeMae) then
      NomeMae :=  xn.text // string
    else if (sn = snBaseMotoristaRequestResponse_NomePai) then
      NomePai :=  xn.text // string
    else if (sn = snBaseMotoristaRequestResponse_Numero) then
      Numero :=  xn.text // string
    else if (sn = snBaseMotoristaRequestResponse_NumeroRg) then
      NumeroRg :=  xn.text // string
    else if (sn = snBaseMotoristaRequestResponse_OrgaoEmissorRg) then
      OrgaoEmissorRg :=  xn.text // string
    else if (sn = snBaseMotoristaRequestResponse_Sexo) then
      Sexo :=  xn.text // string
    else if (sn = snBaseMotoristaRequestResponse_Sobrenome) then
      Sobrenome :=  xn.text // string
    else if (sn = snBaseMotoristaRequestResponse_Telefone) then
      Telefone :=  xn.text // string
    else if (sn = snBaseMotoristaRequestResponse_TelefoneCelular) then
      TelefoneCelular :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tBaseMotoristaRequestResponse.Destroy;
begin
  //if assigned(FAtivo) then  FAtivo.free;
  inherited;
end; // destructor ...

procedure tBaseMotoristaRequestResponse.SetAtivo(value:boolean);
begin
  FAtivo := value;
  FAtivo_IsSet_ := true;
end;

procedure tBaseMotoristaRequestResponse.SetBairro(value:string);
begin
  FBairro := value;
  FBairro_IsSet_ := true;
end;

procedure tBaseMotoristaRequestResponse.SetCEP(value:string);
begin
  FCEP := value;
  FCEP_IsSet_ := true;
end;

procedure tBaseMotoristaRequestResponse.SetCPF(value:string);
begin
  FCPF := value;
  FCPF_IsSet_ := true;
end;

procedure tBaseMotoristaRequestResponse.SetCidade(value:string);
begin
  FCidade := value;
  FCidade_IsSet_ := true;
end;

procedure tBaseMotoristaRequestResponse.SetCodigoAgencia(value:string);
begin
  FCodigoAgencia := value;
  FCodigoAgencia_IsSet_ := true;
end;

procedure tBaseMotoristaRequestResponse.SetCodigoBanco(value:string);
begin
  FCodigoBanco := value;
  FCodigoBanco_IsSet_ := true;
end;

procedure tBaseMotoristaRequestResponse.SetCodigoMotorista(value:integer);
begin
  FCodigoMotorista := value;
  FCodigoMotorista_IsSet_ := true;
end;

procedure tBaseMotoristaRequestResponse.SetComplemento(value:string);
begin
  FComplemento := value;
  FComplemento_IsSet_ := true;
end;

procedure tBaseMotoristaRequestResponse.SetContaCorrente(value:string);
begin
  FContaCorrente := value;
  FContaCorrente_IsSet_ := true;
end;

procedure tBaseMotoristaRequestResponse.SetDataHoraAtualizacao(value:tDateTime);
begin
  FDataHoraAtualizacao := value;
  FDataHoraAtualizacao_IsSet_ := true;
end;

procedure tBaseMotoristaRequestResponse.SetDataHoraRegistro(value:tDateTime);
begin
  FDataHoraRegistro := value;
  FDataHoraRegistro_IsSet_ := true;
end;

procedure tBaseMotoristaRequestResponse.SetDataNascimento(value:tDateTime);
begin
  FDataNascimento := value;
  FDataNascimento_IsSet_ := true;
end;

procedure tBaseMotoristaRequestResponse.SetDigitoAgencia(value:string);
begin
  FDigitoAgencia := value;
  FDigitoAgencia_IsSet_ := true;
end;

procedure tBaseMotoristaRequestResponse.SetDigitoContaCorrente(value:string);
begin
  FDigitoContaCorrente := value;
  FDigitoContaCorrente_IsSet_ := true;
end;

procedure tBaseMotoristaRequestResponse.SetEmail(value:string);
begin
  FEmail := value;
  FEmail_IsSet_ := true;
end;

procedure tBaseMotoristaRequestResponse.SetEstado(value:string);
begin
  FEstado := value;
  FEstado_IsSet_ := true;
end;

procedure tBaseMotoristaRequestResponse.SetEstadoCivil(value:string);
begin
  FEstadoCivil := value;
  FEstadoCivil_IsSet_ := true;
end;

procedure tBaseMotoristaRequestResponse.SetLogradouro(value:string);
begin
  FLogradouro := value;
  FLogradouro_IsSet_ := true;
end;

procedure tBaseMotoristaRequestResponse.SetNacionalidade(value:string);
begin
  FNacionalidade := value;
  FNacionalidade_IsSet_ := true;
end;

procedure tBaseMotoristaRequestResponse.SetNome(value:string);
begin
  FNome := value;
  FNome_IsSet_ := true;
end;

procedure tBaseMotoristaRequestResponse.SetNomeMae(value:string);
begin
  FNomeMae := value;
  FNomeMae_IsSet_ := true;
end;

procedure tBaseMotoristaRequestResponse.SetNomePai(value:string);
begin
  FNomePai := value;
  FNomePai_IsSet_ := true;
end;

procedure tBaseMotoristaRequestResponse.SetNumero(value:string);
begin
  FNumero := value;
  FNumero_IsSet_ := true;
end;

procedure tBaseMotoristaRequestResponse.SetNumeroRg(value:string);
begin
  FNumeroRg := value;
  FNumeroRg_IsSet_ := true;
end;

procedure tBaseMotoristaRequestResponse.SetOrgaoEmissorRg(value:string);
begin
  FOrgaoEmissorRg := value;
  FOrgaoEmissorRg_IsSet_ := true;
end;

procedure tBaseMotoristaRequestResponse.SetSexo(value:string);
begin
  FSexo := value;
  FSexo_IsSet_ := true;
end;

procedure tBaseMotoristaRequestResponse.SetSobrenome(value:string);
begin
  FSobrenome := value;
  FSobrenome_IsSet_ := true;
end;

procedure tBaseMotoristaRequestResponse.SetTelefone(value:string);
begin
  FTelefone := value;
  FTelefone_IsSet_ := true;
end;

procedure tBaseMotoristaRequestResponse.SetTelefoneCelular(value:string);
begin
  FTelefoneCelular := value;
  FTelefoneCelular_IsSet_ := true;
end;

procedure tBaseMotoristaRequestResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BaseMotoristaRequestResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Ativo_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseMotoristaRequestResponse_Ativo));
    xn.text := BoolToStr(FAtivo);
  end;
  if Bairro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseMotoristaRequestResponse_Bairro));
    xn.text := FBairro;
  end;
  if CEP_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseMotoristaRequestResponse_CEP));
    xn.text := FCEP;
  end;
  if CPF_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseMotoristaRequestResponse_CPF));
    xn.text := FCPF;
  end;
  if Cidade_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseMotoristaRequestResponse_Cidade));
    xn.text := FCidade;
  end;
  if CodigoAgencia_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseMotoristaRequestResponse_CodigoAgencia));
    xn.text := FCodigoAgencia;
  end;
  if CodigoBanco_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseMotoristaRequestResponse_CodigoBanco));
    xn.text := FCodigoBanco;
  end;
  if CodigoMotorista_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseMotoristaRequestResponse_CodigoMotorista));
    xn.text := IntToStr(FCodigoMotorista);
  end;
  if Complemento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseMotoristaRequestResponse_Complemento));
    xn.text := FComplemento;
  end;
  if ContaCorrente_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseMotoristaRequestResponse_ContaCorrente));
    xn.text := FContaCorrente;
  end;
  if DataHoraAtualizacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseMotoristaRequestResponse_DataHoraAtualizacao));
    xn.text := DateTimeToXMLDateTime(FDataHoraAtualizacao);
  end;
  if DataHoraRegistro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseMotoristaRequestResponse_DataHoraRegistro));
    xn.text := DateTimeToXMLDateTime(FDataHoraRegistro);
  end;
  if DataNascimento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseMotoristaRequestResponse_DataNascimento));
    xn.text := DateTimeToXMLDateTime(FDataNascimento);
  end;
  if DigitoAgencia_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseMotoristaRequestResponse_DigitoAgencia));
    xn.text := FDigitoAgencia;
  end;
  if DigitoContaCorrente_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseMotoristaRequestResponse_DigitoContaCorrente));
    xn.text := FDigitoContaCorrente;
  end;
  if Email_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseMotoristaRequestResponse_Email));
    xn.text := FEmail;
  end;
  if Estado_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseMotoristaRequestResponse_Estado));
    xn.text := FEstado;
  end;
  if EstadoCivil_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseMotoristaRequestResponse_EstadoCivil));
    xn.text := FEstadoCivil;
  end;
  if Logradouro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseMotoristaRequestResponse_Logradouro));
    xn.text := FLogradouro;
  end;
  if Nacionalidade_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseMotoristaRequestResponse_Nacionalidade));
    xn.text := FNacionalidade;
  end;
  if Nome_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseMotoristaRequestResponse_Nome));
    xn.text := FNome;
  end;
  if NomeMae_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseMotoristaRequestResponse_NomeMae));
    xn.text := FNomeMae;
  end;
  if NomePai_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseMotoristaRequestResponse_NomePai));
    xn.text := FNomePai;
  end;
  if Numero_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseMotoristaRequestResponse_Numero));
    xn.text := FNumero;
  end;
  if NumeroRg_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseMotoristaRequestResponse_NumeroRg));
    xn.text := FNumeroRg;
  end;
  if OrgaoEmissorRg_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseMotoristaRequestResponse_OrgaoEmissorRg));
    xn.text := FOrgaoEmissorRg;
  end;
  if Sexo_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseMotoristaRequestResponse_Sexo));
    xn.text := FSexo;
  end;
  if Sobrenome_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseMotoristaRequestResponse_Sobrenome));
    xn.text := FSobrenome;
  end;
  if Telefone_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseMotoristaRequestResponse_Telefone));
    xn.text := FTelefone;
  end;
  if TelefoneCelular_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseMotoristaRequestResponse_TelefoneCelular));
    xn.text := FTelefoneCelular;
  end;
end; // procedure save

{ tArrayOfBaseMotoristaRequestResponse }

function tArrayOfBaseMotoristaRequestResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tArrayOfBaseMotoristaRequestResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tArrayOfBaseMotoristaRequestResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FBaseMotoristaRequestResponse := tManagedStringlist.Create;
end; // constructor ...

constructor tArrayOfBaseMotoristaRequestResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snArrayOfBaseMotoristaRequestResponse_BaseMotoristaRequestResponse) then
    begin
      // list of simple type
      FBaseMotoristaRequestResponse.Add(xn.text);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tArrayOfBaseMotoristaRequestResponse.Destroy;
begin
  FBaseMotoristaRequestResponse.Free;
  inherited;
end; // destructor ...

procedure tArrayOfBaseMotoristaRequestResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ArrayOfBaseMotoristaRequestResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "BaseMotoristaRequestResponse" is tManagedStringlist
  if Assigned(FBaseMotoristaRequestResponse) then
    for i:=0 to FBaseMotoristaRequestResponse.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snArrayOfBaseMotoristaRequestResponse_BaseMotoristaRequestResponse));
      tBaseMotoristaRequestResponse(FBaseMotoristaRequestResponse.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tObterMotoristaResponse }

function tObterMotoristaResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tObterMotoristaResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterMotoristaResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tObterMotoristaResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tObterMotoristaResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterMotoristaResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterMotoristaResponse')
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

{ tCadastroMotoristaResponse }

function tCadastroMotoristaResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tCadastroMotoristaResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastroMotoristaResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tCadastroMotoristaResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tCadastroMotoristaResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCadastroMotoristaResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastroMotoristaResponse')
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

{ tCadastroMotoristaRequest }

function tCadastroMotoristaRequest.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tCadastroMotoristaRequest._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastroMotoristaRequest.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tCadastroMotoristaRequest.Create(aRoot:tJanXMLNode2);
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
    if (sn = snCadastroMotoristaRequest_CPFCNPJTransportador) then
      CPFCNPJTransportador :=  xn.text // string
    else if (sn = snCadastroMotoristaRequest_Nome) then
      Nome :=  xn.text // string
    else if (sn = snCadastroMotoristaRequest_Sobrenome) then
      Sobrenome :=  xn.text // string
    else if (sn = snCadastroMotoristaRequest_CPF) then
      CPF :=  xn.text // string
    else if (sn = snCadastroMotoristaRequest_RG) then
      RG :=  xn.text // string
    else if (sn = snCadastroMotoristaRequest_DataNascimento) then
      DataNascimento := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snCadastroMotoristaRequest_Email) then
      Email :=  xn.text // string
    else if (sn = snCadastroMotoristaRequest_TelefoneContato) then
      TelefoneContato :=  xn.text // string
    else if (sn = snCadastroMotoristaRequest_Nacionalidade) then
      Nacionalidade :=  xn.text // string
    else if (sn = snCadastroMotoristaRequest_Endereco) then
      Endereco :=  xn.text // string
    else if (sn = snCadastroMotoristaRequest_Numero) then
      Numero :=  xn.text // string
    else if (sn = snCadastroMotoristaRequest_Complemento) then
      Complemento :=  xn.text // string
    else if (sn = snCadastroMotoristaRequest_CEP) then
      CEP :=  xn.text // string
    else if (sn = snCadastroMotoristaRequest_Bairro) then
      Bairro :=  xn.text // string
    else if (sn = snCadastroMotoristaRequest_MunicipioCodigoIBGE) then
      MunicipioCodigoIBGE := StrToIntDef(xn.text, 0)
    else if (sn = snCadastroMotoristaRequest_CodigoBanco) then
      CodigoBanco :=  xn.text // string
    else if (sn = snCadastroMotoristaRequest_CodigoAgencia) then
      CodigoAgencia :=  xn.text // string
    else if (sn = snCadastroMotoristaRequest_DigitoAgencia) then
      DigitoAgencia :=  xn.text // string
    else if (sn = snCadastroMotoristaRequest_ContaCorrente) then
      ContaCorrente :=  xn.text // string
    else if (sn = snCadastroMotoristaRequest_DigitoContaCorrente) then
      DigitoContaCorrente :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tCadastroMotoristaRequest.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCadastroMotoristaRequest.SetCPFCNPJTransportador(value:string);
begin
  FCPFCNPJTransportador := value;
  FCPFCNPJTransportador_IsSet_ := true;
end;

procedure tCadastroMotoristaRequest.SetNome(value:string);
begin
  FNome := value;
  FNome_IsSet_ := true;
end;

procedure tCadastroMotoristaRequest.SetSobrenome(value:string);
begin
  FSobrenome := value;
  FSobrenome_IsSet_ := true;
end;

procedure tCadastroMotoristaRequest.SetCPF(value:string);
begin
  FCPF := value;
  FCPF_IsSet_ := true;
end;

procedure tCadastroMotoristaRequest.SetRG(value:string);
begin
  FRG := value;
  FRG_IsSet_ := true;
end;

procedure tCadastroMotoristaRequest.SetDataNascimento(value:tDateTime);
begin
  FDataNascimento := value;
  FDataNascimento_IsSet_ := true;
end;

procedure tCadastroMotoristaRequest.SetEmail(value:string);
begin
  FEmail := value;
  FEmail_IsSet_ := true;
end;

procedure tCadastroMotoristaRequest.SetTelefoneContato(value:string);
begin
  FTelefoneContato := value;
  FTelefoneContato_IsSet_ := true;
end;

procedure tCadastroMotoristaRequest.SetNacionalidade(value:string);
begin
  FNacionalidade := value;
  FNacionalidade_IsSet_ := true;
end;

procedure tCadastroMotoristaRequest.SetEndereco(value:string);
begin
  FEndereco := value;
  FEndereco_IsSet_ := true;
end;

procedure tCadastroMotoristaRequest.SetNumero(value:string);
begin
  FNumero := value;
  FNumero_IsSet_ := true;
end;

procedure tCadastroMotoristaRequest.SetComplemento(value:string);
begin
  FComplemento := value;
  FComplemento_IsSet_ := true;
end;

procedure tCadastroMotoristaRequest.SetCEP(value:string);
begin
  FCEP := value;
  FCEP_IsSet_ := true;
end;

procedure tCadastroMotoristaRequest.SetBairro(value:string);
begin
  FBairro := value;
  FBairro_IsSet_ := true;
end;

procedure tCadastroMotoristaRequest.SetMunicipioCodigoIBGE(value:integer);
begin
  FMunicipioCodigoIBGE := value;
  FMunicipioCodigoIBGE_IsSet_ := true;
end;

procedure tCadastroMotoristaRequest.SetCodigoBanco(value:string);
begin
  FCodigoBanco := value;
  FCodigoBanco_IsSet_ := true;
end;

procedure tCadastroMotoristaRequest.SetCodigoAgencia(value:string);
begin
  FCodigoAgencia := value;
  FCodigoAgencia_IsSet_ := true;
end;

procedure tCadastroMotoristaRequest.SetDigitoAgencia(value:string);
begin
  FDigitoAgencia := value;
  FDigitoAgencia_IsSet_ := true;
end;

procedure tCadastroMotoristaRequest.SetContaCorrente(value:string);
begin
  FContaCorrente := value;
  FContaCorrente_IsSet_ := true;
end;

procedure tCadastroMotoristaRequest.SetDigitoContaCorrente(value:string);
begin
  FDigitoContaCorrente := value;
  FDigitoContaCorrente_IsSet_ := true;
end;

procedure tCadastroMotoristaRequest.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastroMotoristaRequest')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if CPFCNPJTransportador_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroMotoristaRequest_CPFCNPJTransportador));
    xn.text := FCPFCNPJTransportador;
  end;
  if Nome_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroMotoristaRequest_Nome));
    xn.text := FNome;
  end;
  if Sobrenome_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroMotoristaRequest_Sobrenome));
    xn.text := FSobrenome;
  end;
  if CPF_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroMotoristaRequest_CPF));
    xn.text := FCPF;
  end;
  if RG_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroMotoristaRequest_RG));
    xn.text := FRG;
  end;
  if DataNascimento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroMotoristaRequest_DataNascimento));
    xn.text := DateTimeToXMLDateTime(FDataNascimento);
  end;
  if Email_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroMotoristaRequest_Email));
    xn.text := FEmail;
  end;
  if TelefoneContato_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroMotoristaRequest_TelefoneContato));
    xn.text := FTelefoneContato;
  end;
  if Nacionalidade_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroMotoristaRequest_Nacionalidade));
    xn.text := FNacionalidade;
  end;
  if Endereco_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroMotoristaRequest_Endereco));
    xn.text := FEndereco;
  end;
  if Numero_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroMotoristaRequest_Numero));
    xn.text := FNumero;
  end;
  if Complemento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroMotoristaRequest_Complemento));
    xn.text := FComplemento;
  end;
  if CEP_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroMotoristaRequest_CEP));
    xn.text := FCEP;
  end;
  if Bairro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroMotoristaRequest_Bairro));
    xn.text := FBairro;
  end;
  if MunicipioCodigoIBGE_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroMotoristaRequest_MunicipioCodigoIBGE));
    xn.text := IntToStr(FMunicipioCodigoIBGE);
  end;
  if CodigoBanco_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroMotoristaRequest_CodigoBanco));
    xn.text := FCodigoBanco;
  end;
  if CodigoAgencia_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroMotoristaRequest_CodigoAgencia));
    xn.text := FCodigoAgencia;
  end;
  if DigitoAgencia_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroMotoristaRequest_DigitoAgencia));
    xn.text := FDigitoAgencia;
  end;
  if ContaCorrente_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroMotoristaRequest_ContaCorrente));
    xn.text := FContaCorrente;
  end;
  if DigitoContaCorrente_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroMotoristaRequest_DigitoContaCorrente));
    xn.text := FDigitoContaCorrente;
  end;
end; // procedure save

{ tBuscarTriagemDocumentoObjetoResponse }

function tBuscarTriagemDocumentoObjetoResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tBuscarTriagemDocumentoObjetoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarTriagemDocumentoObjetoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tBuscarTriagemDocumentoObjetoResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tBuscarTriagemDocumentoObjetoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tBuscarTriagemDocumentoObjetoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscarTriagemDocumentoObjetoResponse')
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

{ tObterTriagemDocumentoObjetoResponse }

function tObterTriagemDocumentoObjetoResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tObterTriagemDocumentoObjetoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterTriagemDocumentoObjetoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tObterTriagemDocumentoObjetoResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tObterTriagemDocumentoObjetoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterTriagemDocumentoObjetoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterTriagemDocumentoObjetoResponse')
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

{ tBaseTriagemDocumentoObjetoRequest }

function tBaseTriagemDocumentoObjetoRequest.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tBaseTriagemDocumentoObjetoRequest._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBaseTriagemDocumentoObjetoRequest.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tBaseTriagemDocumentoObjetoRequest.Create(aRoot:tJanXMLNode2);
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
    if (sn = snBaseTriagemDocumentoObjetoRequest_Ativo) then
      Ativo := (xn.text = 'true')
    else if (sn = snBaseTriagemDocumentoObjetoRequest_CodigoCliente) then
      CodigoCliente :=  xn.text // string
    else if (sn = snBaseTriagemDocumentoObjetoRequest_DataHoraAtualizacao) then
      DataHoraAtualizacao := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snBaseTriagemDocumentoObjetoRequest_DataHoraRegistro) then
      DataHoraRegistro := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snBaseTriagemDocumentoObjetoRequest_DocumentoObjeto) then
      DocumentoObjeto :=  xn.text // string
    else if (sn = snBaseTriagemDocumentoObjetoRequest_ExibeEmTela) then
      ExibeEmTela := (xn.text = 'true')
    else if (sn = snBaseTriagemDocumentoObjetoRequest_ExigeDocumentoObjetoFisico) then
      ExigeDocumentoObjetoFisico :=  xn.text // string
    else if (sn = snBaseTriagemDocumentoObjetoRequest_ExigeUpload) then
      ExigeUpload :=  xn.text // string
    else if (sn = snBaseTriagemDocumentoObjetoRequest_IdCliente) then
      IdCliente := StrToIntDef(xn.text, 0)
    else if (sn = snBaseTriagemDocumentoObjetoRequest_IdTriagemDocumentoObjeto) then
      IdTriagemDocumentoObjeto := StrToIntDef(xn.text, 0)
    else if (sn = snBaseTriagemDocumentoObjetoRequest_InstrucaoRemetente) then
      InstrucaoRemetente :=  xn.text // string
    else if (sn = snBaseTriagemDocumentoObjetoRequest_NomeDocumentoObjeto) then
      NomeDocumentoObjeto :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tBaseTriagemDocumentoObjetoRequest.Destroy;
begin
  //if assigned(FAtivo) then  FAtivo.free;
  //if assigned(FExibeEmTela) then  FExibeEmTela.free;
  inherited;
end; // destructor ...

procedure tBaseTriagemDocumentoObjetoRequest.SetAtivo(value:boolean);
begin
  FAtivo := value;
  FAtivo_IsSet_ := true;
end;

procedure tBaseTriagemDocumentoObjetoRequest.SetCodigoCliente(value:string);
begin
  FCodigoCliente := value;
  FCodigoCliente_IsSet_ := true;
end;

procedure tBaseTriagemDocumentoObjetoRequest.SetDataHoraAtualizacao(value:tDateTime);
begin
  FDataHoraAtualizacao := value;
  FDataHoraAtualizacao_IsSet_ := true;
end;

procedure tBaseTriagemDocumentoObjetoRequest.SetDataHoraRegistro(value:tDateTime);
begin
  FDataHoraRegistro := value;
  FDataHoraRegistro_IsSet_ := true;
end;

procedure tBaseTriagemDocumentoObjetoRequest.SetDocumentoObjeto(value:string);
begin
  FDocumentoObjeto := value;
  FDocumentoObjeto_IsSet_ := true;
end;

procedure tBaseTriagemDocumentoObjetoRequest.SetExibeEmTela(value:boolean);
begin
  FExibeEmTela := value;
  FExibeEmTela_IsSet_ := true;
end;

procedure tBaseTriagemDocumentoObjetoRequest.SetExigeDocumentoObjetoFisico(value:string);
begin
  FExigeDocumentoObjetoFisico := value;
  FExigeDocumentoObjetoFisico_IsSet_ := true;
end;

procedure tBaseTriagemDocumentoObjetoRequest.SetExigeUpload(value:string);
begin
  FExigeUpload := value;
  FExigeUpload_IsSet_ := true;
end;

procedure tBaseTriagemDocumentoObjetoRequest.SetIdCliente(value:integer);
begin
  FIdCliente := value;
  FIdCliente_IsSet_ := true;
end;

procedure tBaseTriagemDocumentoObjetoRequest.SetIdTriagemDocumentoObjeto(value:integer);
begin
  FIdTriagemDocumentoObjeto := value;
  FIdTriagemDocumentoObjeto_IsSet_ := true;
end;

procedure tBaseTriagemDocumentoObjetoRequest.SetInstrucaoRemetente(value:string);
begin
  FInstrucaoRemetente := value;
  FInstrucaoRemetente_IsSet_ := true;
end;

procedure tBaseTriagemDocumentoObjetoRequest.SetNomeDocumentoObjeto(value:string);
begin
  FNomeDocumentoObjeto := value;
  FNomeDocumentoObjeto_IsSet_ := true;
end;

procedure tBaseTriagemDocumentoObjetoRequest.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BaseTriagemDocumentoObjetoRequest')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Ativo_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseTriagemDocumentoObjetoRequest_Ativo));
    xn.text := BoolToStr(FAtivo);
  end;
  if CodigoCliente_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseTriagemDocumentoObjetoRequest_CodigoCliente));
    xn.text := FCodigoCliente;
  end;
  if DataHoraAtualizacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseTriagemDocumentoObjetoRequest_DataHoraAtualizacao));
    xn.text := DateTimeToXMLDateTime(FDataHoraAtualizacao);
  end;
  if DataHoraRegistro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseTriagemDocumentoObjetoRequest_DataHoraRegistro));
    xn.text := DateTimeToXMLDateTime(FDataHoraRegistro);
  end;
  if DocumentoObjeto_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseTriagemDocumentoObjetoRequest_DocumentoObjeto));
    xn.text := FDocumentoObjeto;
  end;
  if ExibeEmTela_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseTriagemDocumentoObjetoRequest_ExibeEmTela));
    xn.text := BoolToStr(FExibeEmTela);
  end;
  if ExigeDocumentoObjetoFisico_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseTriagemDocumentoObjetoRequest_ExigeDocumentoObjetoFisico));
    xn.text := FExigeDocumentoObjetoFisico;
  end;
  if ExigeUpload_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseTriagemDocumentoObjetoRequest_ExigeUpload));
    xn.text := FExigeUpload;
  end;
  if IdCliente_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseTriagemDocumentoObjetoRequest_IdCliente));
    xn.text := IntToStr(FIdCliente);
  end;
  if IdTriagemDocumentoObjeto_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseTriagemDocumentoObjetoRequest_IdTriagemDocumentoObjeto));
    xn.text := IntToStr(FIdTriagemDocumentoObjeto);
  end;
  if InstrucaoRemetente_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseTriagemDocumentoObjetoRequest_InstrucaoRemetente));
    xn.text := FInstrucaoRemetente;
  end;
  if NomeDocumentoObjeto_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseTriagemDocumentoObjetoRequest_NomeDocumentoObjeto));
    xn.text := FNomeDocumentoObjeto;
  end;
end; // procedure save

{ tArrayOfBaseTriagemDocumentoObjetoRequest }

function tArrayOfBaseTriagemDocumentoObjetoRequest.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tArrayOfBaseTriagemDocumentoObjetoRequest._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tArrayOfBaseTriagemDocumentoObjetoRequest.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FBaseTriagemDocumentoObjetoRequest := tManagedStringlist.Create;
end; // constructor ...

constructor tArrayOfBaseTriagemDocumentoObjetoRequest.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snArrayOfBaseTriagemDocumentoObjetoRequest_BaseTriagemDocumentoObjetoRequest) then
    begin
      // list of simple type
      FBaseTriagemDocumentoObjetoRequest.Add(xn.text);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tArrayOfBaseTriagemDocumentoObjetoRequest.Destroy;
begin
  FBaseTriagemDocumentoObjetoRequest.Free;
  inherited;
end; // destructor ...

procedure tArrayOfBaseTriagemDocumentoObjetoRequest.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ArrayOfBaseTriagemDocumentoObjetoRequest')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "BaseTriagemDocumentoObjetoRequest" is tManagedStringlist
  if Assigned(FBaseTriagemDocumentoObjetoRequest) then
    for i:=0 to FBaseTriagemDocumentoObjetoRequest.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snArrayOfBaseTriagemDocumentoObjetoRequest_BaseTriagemDocumentoObjetoRequest));
      tBaseTriagemDocumentoObjetoRequest(FBaseTriagemDocumentoObjetoRequest.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tEmitirContratoOperacaoTransporteResponse }

function tEmitirContratoOperacaoTransporteResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tEmitirContratoOperacaoTransporteResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tEmitirContratoOperacaoTransporteResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tEmitirContratoOperacaoTransporteResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tEmitirContratoOperacaoTransporteResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tEmitirContratoOperacaoTransporteResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'EmitirContratoOperacaoTransporteResponse')
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

{ tEmitirDeclaracaoOperacaoTransporteResponse }

function tEmitirDeclaracaoOperacaoTransporteResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tEmitirDeclaracaoOperacaoTransporteResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tEmitirDeclaracaoOperacaoTransporteResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tEmitirDeclaracaoOperacaoTransporteResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tEmitirDeclaracaoOperacaoTransporteResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tEmitirDeclaracaoOperacaoTransporteResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'EmitirDeclaracaoOperacaoTransporteResponse')
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

{ tEmitirReciboValePedagioViaFacilResponse }

function tEmitirReciboValePedagioViaFacilResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tEmitirReciboValePedagioViaFacilResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tEmitirReciboValePedagioViaFacilResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tEmitirReciboValePedagioViaFacilResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tEmitirReciboValePedagioViaFacilResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tEmitirReciboValePedagioViaFacilResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'EmitirReciboValePedagioViaFacilResponse')
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

{ tEmitirReciboValePedagioVectioResponse }

function tEmitirReciboValePedagioVectioResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tEmitirReciboValePedagioVectioResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tEmitirReciboValePedagioVectioResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tEmitirReciboValePedagioVectioResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tEmitirReciboValePedagioVectioResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tEmitirReciboValePedagioVectioResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'EmitirReciboValePedagioVectioResponse')
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

{ tCobrancaGestoraResponse }

function tCobrancaGestoraResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tCobrancaGestoraResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCobrancaGestoraResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tCobrancaGestoraResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tCobrancaGestoraResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCobrancaGestoraResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CobrancaGestoraResponse')
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

{ tArrayOfCobrancaGestoraResponse }

function tArrayOfCobrancaGestoraResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tArrayOfCobrancaGestoraResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tArrayOfCobrancaGestoraResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FCobrancaGestoraResponse := tManagedStringlist.Create;
end; // constructor ...

constructor tArrayOfCobrancaGestoraResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snArrayOfCobrancaGestoraResponse_CobrancaGestoraResponse) then
    begin
      // list of simple type
      FCobrancaGestoraResponse.Add(xn.text);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tArrayOfCobrancaGestoraResponse.Destroy;
begin
  FCobrancaGestoraResponse.Free;
  inherited;
end; // destructor ...

procedure tArrayOfCobrancaGestoraResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ArrayOfCobrancaGestoraResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "CobrancaGestoraResponse" is tManagedStringlist
  if Assigned(FCobrancaGestoraResponse) then
    for i:=0 to FCobrancaGestoraResponse.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snArrayOfCobrancaGestoraResponse_CobrancaGestoraResponse));
      tCobrancaGestoraResponse(FCobrancaGestoraResponse.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tBuscarCobrancaGestoraResponse }

function tBuscarCobrancaGestoraResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tBuscarCobrancaGestoraResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarCobrancaGestoraResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tBuscarCobrancaGestoraResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tBuscarCobrancaGestoraResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tBuscarCobrancaGestoraResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscarCobrancaGestoraResponse')
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

{ tContaVirtualMovimentoResponse }

function tContaVirtualMovimentoResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tContaVirtualMovimentoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tContaVirtualMovimentoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tContaVirtualMovimentoResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tContaVirtualMovimentoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tContaVirtualMovimentoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ContaVirtualMovimentoResponse')
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

{ tArrayOfContaVirtualMovimentoResponse }

function tArrayOfContaVirtualMovimentoResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tArrayOfContaVirtualMovimentoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tArrayOfContaVirtualMovimentoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FContaVirtualMovimentoResponse := tManagedStringlist.Create;
end; // constructor ...

constructor tArrayOfContaVirtualMovimentoResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snArrayOfContaVirtualMovimentoResponse_ContaVirtualMovimentoResponse) then
    begin
      // list of simple type
      FContaVirtualMovimentoResponse.Add(xn.text);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tArrayOfContaVirtualMovimentoResponse.Destroy;
begin
  FContaVirtualMovimentoResponse.Free;
  inherited;
end; // destructor ...

procedure tArrayOfContaVirtualMovimentoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ArrayOfContaVirtualMovimentoResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "ContaVirtualMovimentoResponse" is tManagedStringlist
  if Assigned(FContaVirtualMovimentoResponse) then
    for i:=0 to FContaVirtualMovimentoResponse.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snArrayOfContaVirtualMovimentoResponse_ContaVirtualMovimentoResponse));
      tContaVirtualMovimentoResponse(FContaVirtualMovimentoResponse.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tExtratoResponse }

function tExtratoResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tExtratoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tExtratoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tExtratoResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tExtratoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tExtratoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ExtratoResponse')
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

{ tBuscarParametrosComerciaisResponse }

function tBuscarParametrosComerciaisResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tBuscarParametrosComerciaisResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarParametrosComerciaisResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tBuscarParametrosComerciaisResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tBuscarParametrosComerciaisResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tBuscarParametrosComerciaisResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscarParametrosComerciaisResponse')
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

{ tSubstituirCartaoDoPortadorRequest }

function tSubstituirCartaoDoPortadorRequest.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tSubstituirCartaoDoPortadorRequest._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tSubstituirCartaoDoPortadorRequest.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tSubstituirCartaoDoPortadorRequest.Create(aRoot:tJanXMLNode2);
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
    if (sn = snSubstituirCartaoDoPortadorRequest_CpfPortador) then
      CpfPortador :=  xn.text // string
    else if (sn = snSubstituirCartaoDoPortadorRequest_NumeroCartaoNovo) then
      NumeroCartaoNovo :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tSubstituirCartaoDoPortadorRequest.Destroy;
begin
  inherited;
end; // destructor ...

procedure tSubstituirCartaoDoPortadorRequest.SetCpfPortador(value:string);
begin
  FCpfPortador := value;
  FCpfPortador_IsSet_ := true;
end;

procedure tSubstituirCartaoDoPortadorRequest.SetNumeroCartaoNovo(value:string);
begin
  FNumeroCartaoNovo := value;
  FNumeroCartaoNovo_IsSet_ := true;
end;

procedure tSubstituirCartaoDoPortadorRequest.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'SubstituirCartaoDoPortadorRequest')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if CpfPortador_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snSubstituirCartaoDoPortadorRequest_CpfPortador));
    xn.text := FCpfPortador;
  end;
  if NumeroCartaoNovo_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snSubstituirCartaoDoPortadorRequest_NumeroCartaoNovo));
    xn.text := FNumeroCartaoNovo;
  end;
end; // procedure save

{ tProcessarCargaFreteAvulsaResponse }

function tProcessarCargaFreteAvulsaResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tProcessarCargaFreteAvulsaResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tProcessarCargaFreteAvulsaResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tProcessarCargaFreteAvulsaResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tProcessarCargaFreteAvulsaResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tProcessarCargaFreteAvulsaResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ProcessarCargaFreteAvulsaResponse')
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

{ tProcessarCargaFreteAvulsaRequest }

function tProcessarCargaFreteAvulsaRequest.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tProcessarCargaFreteAvulsaRequest._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tProcessarCargaFreteAvulsaRequest.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tProcessarCargaFreteAvulsaRequest.Create(aRoot:tJanXMLNode2);
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
    if (sn = snProcessarCargaFreteAvulsaRequest_NumeroCartao) then
      NumeroCartao :=  xn.text // string
    else if (sn = snProcessarCargaFreteAvulsaRequest_Valor) then
      Valor := DefStrToFloat(xn.text, 0)
    else if (sn = snProcessarCargaFreteAvulsaRequest_Comentario) then
      Comentario :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tProcessarCargaFreteAvulsaRequest.Destroy;
begin
  inherited;
end; // destructor ...

procedure tProcessarCargaFreteAvulsaRequest.SetNumeroCartao(value:string);
begin
  FNumeroCartao := value;
  FNumeroCartao_IsSet_ := true;
end;

procedure tProcessarCargaFreteAvulsaRequest.SetValor(value:extended);
begin
  FValor := value;
  FValor_IsSet_ := true;
end;

procedure tProcessarCargaFreteAvulsaRequest.SetComentario(value:string);
begin
  FComentario := value;
  FComentario_IsSet_ := true;
end;

procedure tProcessarCargaFreteAvulsaRequest.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ProcessarCargaFreteAvulsaRequest')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if NumeroCartao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snProcessarCargaFreteAvulsaRequest_NumeroCartao));
    xn.text := FNumeroCartao;
  end;
  if Valor_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snProcessarCargaFreteAvulsaRequest_Valor));
    xn.text := MyFloatToStr(FValor);
  end;
  if Comentario_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snProcessarCargaFreteAvulsaRequest_Comentario));
    xn.text := FComentario;
  end;
end; // procedure save

{ tAssociacaoCartaoTransportadorRequest }

function tAssociacaoCartaoTransportadorRequest.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tAssociacaoCartaoTransportadorRequest._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAssociacaoCartaoTransportadorRequest.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tAssociacaoCartaoTransportadorRequest.Create(aRoot:tJanXMLNode2);
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
    if (sn = snAssociacaoCartaoTransportadorRequest_CNPJTransportador) then
      CNPJTransportador :=  xn.text // string
    else if (sn = snAssociacaoCartaoTransportadorRequest_NumeroCartao) then
      NumeroCartao :=  xn.text // string
    else if (sn = snAssociacaoCartaoTransportadorRequest_Nome) then
      Nome :=  xn.text // string
    else if (sn = snAssociacaoCartaoTransportadorRequest_Sobrenome) then
      Sobrenome :=  xn.text // string
    else if (sn = snAssociacaoCartaoTransportadorRequest_CPF) then
      CPF :=  xn.text // string
    else if (sn = snAssociacaoCartaoTransportadorRequest_RG) then
      RG :=  xn.text // string
    else if (sn = snAssociacaoCartaoTransportadorRequest_DataNascimento) then
      DataNascimento := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snAssociacaoCartaoTransportadorRequest_Email) then
      Email :=  xn.text // string
    else if (sn = snAssociacaoCartaoTransportadorRequest_TelefoneContato) then
      TelefoneContato :=  xn.text // string
    else if (sn = snAssociacaoCartaoTransportadorRequest_Nacionalidade) then
      Nacionalidade :=  xn.text // string
    else if (sn = snAssociacaoCartaoTransportadorRequest_Endereco) then
      Endereco :=  xn.text // string
    else if (sn = snAssociacaoCartaoTransportadorRequest_Numero) then
      Numero :=  xn.text // string
    else if (sn = snAssociacaoCartaoTransportadorRequest_Complemento) then
      Complemento :=  xn.text // string
    else if (sn = snAssociacaoCartaoTransportadorRequest_CEP) then
      CEP :=  xn.text // string
    else if (sn = snAssociacaoCartaoTransportadorRequest_Bairro) then
      Bairro :=  xn.text // string
    else if (sn = snAssociacaoCartaoTransportadorRequest_MunicipioCodigoIBGE) then
      MunicipioCodigoIBGE := StrToIntDef(xn.text, 0)
    else if (sn = snAssociacaoCartaoTransportadorRequest_CodigoBanco) then
      CodigoBanco :=  xn.text // string
    else if (sn = snAssociacaoCartaoTransportadorRequest_CodigoAgencia) then
      CodigoAgencia :=  xn.text // string
    else if (sn = snAssociacaoCartaoTransportadorRequest_DigitoAgencia) then
      DigitoAgencia :=  xn.text // string
    else if (sn = snAssociacaoCartaoTransportadorRequest_ContaCorrente) then
      ContaCorrente :=  xn.text // string
    else if (sn = snAssociacaoCartaoTransportadorRequest_DigitoContaCorrente) then
      DigitoContaCorrente :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tAssociacaoCartaoTransportadorRequest.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAssociacaoCartaoTransportadorRequest.SetCNPJTransportador(value:string);
begin
  FCNPJTransportador := value;
  FCNPJTransportador_IsSet_ := true;
end;

procedure tAssociacaoCartaoTransportadorRequest.SetNumeroCartao(value:string);
begin
  FNumeroCartao := value;
  FNumeroCartao_IsSet_ := true;
end;

procedure tAssociacaoCartaoTransportadorRequest.SetNome(value:string);
begin
  FNome := value;
  FNome_IsSet_ := true;
end;

procedure tAssociacaoCartaoTransportadorRequest.SetSobrenome(value:string);
begin
  FSobrenome := value;
  FSobrenome_IsSet_ := true;
end;

procedure tAssociacaoCartaoTransportadorRequest.SetCPF(value:string);
begin
  FCPF := value;
  FCPF_IsSet_ := true;
end;

procedure tAssociacaoCartaoTransportadorRequest.SetRG(value:string);
begin
  FRG := value;
  FRG_IsSet_ := true;
end;

procedure tAssociacaoCartaoTransportadorRequest.SetDataNascimento(value:tDateTime);
begin
  FDataNascimento := value;
  FDataNascimento_IsSet_ := true;
end;

procedure tAssociacaoCartaoTransportadorRequest.SetEmail(value:string);
begin
  FEmail := value;
  FEmail_IsSet_ := true;
end;

procedure tAssociacaoCartaoTransportadorRequest.SetTelefoneContato(value:string);
begin
  FTelefoneContato := value;
  FTelefoneContato_IsSet_ := true;
end;

procedure tAssociacaoCartaoTransportadorRequest.SetNacionalidade(value:string);
begin
  FNacionalidade := value;
  FNacionalidade_IsSet_ := true;
end;

procedure tAssociacaoCartaoTransportadorRequest.SetEndereco(value:string);
begin
  FEndereco := value;
  FEndereco_IsSet_ := true;
end;

procedure tAssociacaoCartaoTransportadorRequest.SetNumero(value:string);
begin
  FNumero := value;
  FNumero_IsSet_ := true;
end;

procedure tAssociacaoCartaoTransportadorRequest.SetComplemento(value:string);
begin
  FComplemento := value;
  FComplemento_IsSet_ := true;
end;

procedure tAssociacaoCartaoTransportadorRequest.SetCEP(value:string);
begin
  FCEP := value;
  FCEP_IsSet_ := true;
end;

procedure tAssociacaoCartaoTransportadorRequest.SetBairro(value:string);
begin
  FBairro := value;
  FBairro_IsSet_ := true;
end;

procedure tAssociacaoCartaoTransportadorRequest.SetMunicipioCodigoIBGE(value:integer);
begin
  FMunicipioCodigoIBGE := value;
  FMunicipioCodigoIBGE_IsSet_ := true;
end;

procedure tAssociacaoCartaoTransportadorRequest.SetCodigoBanco(value:string);
begin
  FCodigoBanco := value;
  FCodigoBanco_IsSet_ := true;
end;

procedure tAssociacaoCartaoTransportadorRequest.SetCodigoAgencia(value:string);
begin
  FCodigoAgencia := value;
  FCodigoAgencia_IsSet_ := true;
end;

procedure tAssociacaoCartaoTransportadorRequest.SetDigitoAgencia(value:string);
begin
  FDigitoAgencia := value;
  FDigitoAgencia_IsSet_ := true;
end;

procedure tAssociacaoCartaoTransportadorRequest.SetContaCorrente(value:string);
begin
  FContaCorrente := value;
  FContaCorrente_IsSet_ := true;
end;

procedure tAssociacaoCartaoTransportadorRequest.SetDigitoContaCorrente(value:string);
begin
  FDigitoContaCorrente := value;
  FDigitoContaCorrente_IsSet_ := true;
end;

procedure tAssociacaoCartaoTransportadorRequest.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AssociacaoCartaoTransportadorRequest')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if CNPJTransportador_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociacaoCartaoTransportadorRequest_CNPJTransportador));
    xn.text := FCNPJTransportador;
  end;
  if NumeroCartao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociacaoCartaoTransportadorRequest_NumeroCartao));
    xn.text := FNumeroCartao;
  end;
  if Nome_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociacaoCartaoTransportadorRequest_Nome));
    xn.text := FNome;
  end;
  if Sobrenome_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociacaoCartaoTransportadorRequest_Sobrenome));
    xn.text := FSobrenome;
  end;
  if CPF_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociacaoCartaoTransportadorRequest_CPF));
    xn.text := FCPF;
  end;
  if RG_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociacaoCartaoTransportadorRequest_RG));
    xn.text := FRG;
  end;
  if DataNascimento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociacaoCartaoTransportadorRequest_DataNascimento));
    xn.text := DateTimeToXMLDateTime(FDataNascimento);
  end;
  if Email_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociacaoCartaoTransportadorRequest_Email));
    xn.text := FEmail;
  end;
  if TelefoneContato_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociacaoCartaoTransportadorRequest_TelefoneContato));
    xn.text := FTelefoneContato;
  end;
  if Nacionalidade_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociacaoCartaoTransportadorRequest_Nacionalidade));
    xn.text := FNacionalidade;
  end;
  if Endereco_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociacaoCartaoTransportadorRequest_Endereco));
    xn.text := FEndereco;
  end;
  if Numero_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociacaoCartaoTransportadorRequest_Numero));
    xn.text := FNumero;
  end;
  if Complemento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociacaoCartaoTransportadorRequest_Complemento));
    xn.text := FComplemento;
  end;
  if CEP_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociacaoCartaoTransportadorRequest_CEP));
    xn.text := FCEP;
  end;
  if Bairro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociacaoCartaoTransportadorRequest_Bairro));
    xn.text := FBairro;
  end;
  if MunicipioCodigoIBGE_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociacaoCartaoTransportadorRequest_MunicipioCodigoIBGE));
    xn.text := IntToStr(FMunicipioCodigoIBGE);
  end;
  if CodigoBanco_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociacaoCartaoTransportadorRequest_CodigoBanco));
    xn.text := FCodigoBanco;
  end;
  if CodigoAgencia_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociacaoCartaoTransportadorRequest_CodigoAgencia));
    xn.text := FCodigoAgencia;
  end;
  if DigitoAgencia_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociacaoCartaoTransportadorRequest_DigitoAgencia));
    xn.text := FDigitoAgencia;
  end;
  if ContaCorrente_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociacaoCartaoTransportadorRequest_ContaCorrente));
    xn.text := FContaCorrente;
  end;
  if DigitoContaCorrente_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociacaoCartaoTransportadorRequest_DigitoContaCorrente));
    xn.text := FDigitoContaCorrente;
  end;
end; // procedure save

{ tConferirDocumentacaoTriagemResponse }

function tConferirDocumentacaoTriagemResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tConferirDocumentacaoTriagemResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tConferirDocumentacaoTriagemResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tConferirDocumentacaoTriagemResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tConferirDocumentacaoTriagemResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tConferirDocumentacaoTriagemResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ConferirDocumentacaoTriagemResponse')
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

{ tOperacaoTransporteTriagemRelacionadoResponse }

function tOperacaoTransporteTriagemRelacionadoResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tOperacaoTransporteTriagemRelacionadoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tOperacaoTransporteTriagemRelacionadoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tOperacaoTransporteTriagemRelacionadoResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tOperacaoTransporteTriagemRelacionadoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tOperacaoTransporteTriagemRelacionadoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'OperacaoTransporteTriagemRelacionadoResponse')
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

{ tArrayOfOperacaoTransporteTriagemRelacionadoResponse }

function tArrayOfOperacaoTransporteTriagemRelacionadoResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tArrayOfOperacaoTransporteTriagemRelacionadoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tArrayOfOperacaoTransporteTriagemRelacionadoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FOperacaoTransporteTriagemRelacionadoResponse := tManagedStringlist.Create;
end; // constructor ...

constructor tArrayOfOperacaoTransporteTriagemRelacionadoResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snArrayOfOperacaoTransporteTriagemRelacionadoResponse_OperacaoTransporteTriagemRelacionadoResponse) then
    begin
      // list of simple type
      FOperacaoTransporteTriagemRelacionadoResponse.Add(xn.text);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tArrayOfOperacaoTransporteTriagemRelacionadoResponse.Destroy;
begin
  FOperacaoTransporteTriagemRelacionadoResponse.Free;
  inherited;
end; // destructor ...

procedure tArrayOfOperacaoTransporteTriagemRelacionadoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ArrayOfOperacaoTransporteTriagemRelacionadoResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "OperacaoTransporteTriagemRelacionadoResponse" is tManagedStringlist
  if Assigned(FOperacaoTransporteTriagemRelacionadoResponse) then
    for i:=0 to FOperacaoTransporteTriagemRelacionadoResponse.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snArrayOfOperacaoTransporteTriagemRelacionadoResponse_OperacaoTransporteTriagemRelacionadoResponse));
      tOperacaoTransporteTriagemRelacionadoResponse(FOperacaoTransporteTriagemRelacionadoResponse.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tOperacaoTransporteTriagemResponse }

function tOperacaoTransporteTriagemResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tOperacaoTransporteTriagemResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tOperacaoTransporteTriagemResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tOperacaoTransporteTriagemResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tOperacaoTransporteTriagemResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tOperacaoTransporteTriagemResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'OperacaoTransporteTriagemResponse')
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

{ tArrayOfOperacaoTransporteTriagemResponse }

function tArrayOfOperacaoTransporteTriagemResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tArrayOfOperacaoTransporteTriagemResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tArrayOfOperacaoTransporteTriagemResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FOperacaoTransporteTriagemResponse := tManagedStringlist.Create;
end; // constructor ...

constructor tArrayOfOperacaoTransporteTriagemResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snArrayOfOperacaoTransporteTriagemResponse_OperacaoTransporteTriagemResponse) then
    begin
      // list of simple type
      FOperacaoTransporteTriagemResponse.Add(xn.text);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tArrayOfOperacaoTransporteTriagemResponse.Destroy;
begin
  FOperacaoTransporteTriagemResponse.Free;
  inherited;
end; // destructor ...

procedure tArrayOfOperacaoTransporteTriagemResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ArrayOfOperacaoTransporteTriagemResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "OperacaoTransporteTriagemResponse" is tManagedStringlist
  if Assigned(FOperacaoTransporteTriagemResponse) then
    for i:=0 to FOperacaoTransporteTriagemResponse.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snArrayOfOperacaoTransporteTriagemResponse_OperacaoTransporteTriagemResponse));
      tOperacaoTransporteTriagemResponse(FOperacaoTransporteTriagemResponse.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tOperacaoTransporteParticipanteReponse }

function tOperacaoTransporteParticipanteReponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tOperacaoTransporteParticipanteReponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tOperacaoTransporteParticipanteReponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tOperacaoTransporteParticipanteReponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snOperacaoTransporteParticipanteReponse_CPFCNPJParticipante) then
      CPFCNPJParticipante :=  xn.text // string
    else if (sn = snOperacaoTransporteParticipanteReponse_TipoParticipante) then
      TipoParticipante := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tOperacaoTransporteParticipanteReponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tOperacaoTransporteParticipanteReponse.SetCPFCNPJParticipante(value:string);
begin
  FCPFCNPJParticipante := value;
  FCPFCNPJParticipante_IsSet_ := true;
end;

procedure tOperacaoTransporteParticipanteReponse.SetTipoParticipante(value:integer);
begin
  FTipoParticipante := value;
  FTipoParticipante_IsSet_ := true;
end;

procedure tOperacaoTransporteParticipanteReponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'OperacaoTransporteParticipanteReponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if CPFCNPJParticipante_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteParticipanteReponse_CPFCNPJParticipante));
    xn.text := FCPFCNPJParticipante;
  end;
  if TipoParticipante_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteParticipanteReponse_TipoParticipante));
    xn.text := IntToStr(FTipoParticipante);
  end;
end; // procedure save

{ tArrayOfOperacaoTransporteParticipanteReponse }

function tArrayOfOperacaoTransporteParticipanteReponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tArrayOfOperacaoTransporteParticipanteReponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tArrayOfOperacaoTransporteParticipanteReponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FOperacaoTransporteParticipanteReponse := tManagedStringlist.Create;
end; // constructor ...

constructor tArrayOfOperacaoTransporteParticipanteReponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snArrayOfOperacaoTransporteParticipanteReponse_OperacaoTransporteParticipanteReponse) then
    begin
      // list of simple type
      FOperacaoTransporteParticipanteReponse.Add(xn.text);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tArrayOfOperacaoTransporteParticipanteReponse.Destroy;
begin
  FOperacaoTransporteParticipanteReponse.Free;
  inherited;
end; // destructor ...

procedure tArrayOfOperacaoTransporteParticipanteReponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ArrayOfOperacaoTransporteParticipanteReponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "OperacaoTransporteParticipanteReponse" is tManagedStringlist
  if Assigned(FOperacaoTransporteParticipanteReponse) then
    for i:=0 to FOperacaoTransporteParticipanteReponse.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snArrayOfOperacaoTransporteParticipanteReponse_OperacaoTransporteParticipanteReponse));
      tOperacaoTransporteParticipanteReponse(FOperacaoTransporteParticipanteReponse.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tOperacaoTransporteVeiculoResponse }

function tOperacaoTransporteVeiculoResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tOperacaoTransporteVeiculoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tOperacaoTransporteVeiculoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tOperacaoTransporteVeiculoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snOperacaoTransporteVeiculoResponse_Placa) then
      Placa :=  xn.text // string
    else if (sn = snOperacaoTransporteVeiculoResponse_RNTRC) then
      RNTRC :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tOperacaoTransporteVeiculoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tOperacaoTransporteVeiculoResponse.SetPlaca(value:string);
begin
  FPlaca := value;
  FPlaca_IsSet_ := true;
end;

procedure tOperacaoTransporteVeiculoResponse.SetRNTRC(value:string);
begin
  FRNTRC := value;
  FRNTRC_IsSet_ := true;
end;

procedure tOperacaoTransporteVeiculoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'OperacaoTransporteVeiculoResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Placa_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteVeiculoResponse_Placa));
    xn.text := FPlaca;
  end;
  if RNTRC_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteVeiculoResponse_RNTRC));
    xn.text := FRNTRC;
  end;
end; // procedure save

{ tArrayOfOperacaoTransporteVeiculoResponse }

function tArrayOfOperacaoTransporteVeiculoResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tArrayOfOperacaoTransporteVeiculoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tArrayOfOperacaoTransporteVeiculoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FOperacaoTransporteVeiculoResponse := tManagedStringlist.Create;
end; // constructor ...

constructor tArrayOfOperacaoTransporteVeiculoResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snArrayOfOperacaoTransporteVeiculoResponse_OperacaoTransporteVeiculoResponse) then
    begin
      // list of simple type
      FOperacaoTransporteVeiculoResponse.Add(xn.text);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tArrayOfOperacaoTransporteVeiculoResponse.Destroy;
begin
  FOperacaoTransporteVeiculoResponse.Free;
  inherited;
end; // destructor ...

procedure tArrayOfOperacaoTransporteVeiculoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ArrayOfOperacaoTransporteVeiculoResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "OperacaoTransporteVeiculoResponse" is tManagedStringlist
  if Assigned(FOperacaoTransporteVeiculoResponse) then
    for i:=0 to FOperacaoTransporteVeiculoResponse.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snArrayOfOperacaoTransporteVeiculoResponse_OperacaoTransporteVeiculoResponse));
      tOperacaoTransporteVeiculoResponse(FOperacaoTransporteVeiculoResponse.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tObterOperacaoTransporteResponse }

function tObterOperacaoTransporteResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tObterOperacaoTransporteResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterOperacaoTransporteResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tObterOperacaoTransporteResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tObterOperacaoTransporteResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterOperacaoTransporteResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterOperacaoTransporteResponse')
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

{ tOperacaoTransporteParcelasResponse }

function tOperacaoTransporteParcelasResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tOperacaoTransporteParcelasResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tOperacaoTransporteParcelasResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tOperacaoTransporteParcelasResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tOperacaoTransporteParcelasResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tOperacaoTransporteParcelasResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'OperacaoTransporteParcelasResponse')
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

{ tArrayOfOperacaoTransporteParcelasResponse }

function tArrayOfOperacaoTransporteParcelasResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tArrayOfOperacaoTransporteParcelasResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tArrayOfOperacaoTransporteParcelasResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FOperacaoTransporteParcelasResponse := tManagedStringlist.Create;
end; // constructor ...

constructor tArrayOfOperacaoTransporteParcelasResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snArrayOfOperacaoTransporteParcelasResponse_OperacaoTransporteParcelasResponse) then
    begin
      // list of simple type
      FOperacaoTransporteParcelasResponse.Add(xn.text);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tArrayOfOperacaoTransporteParcelasResponse.Destroy;
begin
  FOperacaoTransporteParcelasResponse.Free;
  inherited;
end; // destructor ...

procedure tArrayOfOperacaoTransporteParcelasResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ArrayOfOperacaoTransporteParcelasResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "OperacaoTransporteParcelasResponse" is tManagedStringlist
  if Assigned(FOperacaoTransporteParcelasResponse) then
    for i:=0 to FOperacaoTransporteParcelasResponse.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snArrayOfOperacaoTransporteParcelasResponse_OperacaoTransporteParcelasResponse));
      tOperacaoTransporteParcelasResponse(FOperacaoTransporteParcelasResponse.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tOperacaoTransporteResponse }

function tOperacaoTransporteResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tOperacaoTransporteResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tOperacaoTransporteResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tOperacaoTransporteResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snOperacaoTransporteResponse_CIOT) then
      CIOT :=  xn.text // string
    else if (sn = snOperacaoTransporteResponse_CodigoCentroDeCusto) then
      CodigoCentroDeCusto :=  xn.text // string
    else if (sn = snOperacaoTransporteResponse_NCM) then
      NCM :=  xn.text // string
    else if (sn = snOperacaoTransporteResponse_ProprietarioCarga) then
      ProprietarioCarga :=  xn.text // string
    else if (sn = snOperacaoTransporteResponse_PesoCarga) then
      PesoCarga := DefStrToFloat(xn.text, 0)
    else if (sn = snOperacaoTransporteResponse_TipoOperacao) then
      TipoOperacao :=  xn.text // string
    else if (sn = snOperacaoTransporteResponse_MunicipioOrigemCodigoIBGE) then
      MunicipioOrigemCodigoIBGE := StrToIntDef(xn.text, 0)
    else if (sn = snOperacaoTransporteResponse_MunicipioDestinoCodigoIBGE) then
      MunicipioDestinoCodigoIBGE := StrToIntDef(xn.text, 0)
    else if (sn = snOperacaoTransporteResponse_DataHoraInicio) then
      DataHoraInicio := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snOperacaoTransporteResponse_DataHoraTermino) then
      DataHoraTermino := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snOperacaoTransporteResponse_DataHoraInicioCadastro) then
      DataHoraInicioCadastro := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snOperacaoTransporteResponse_DataHoraFimCadastro) then
      DataHoraFimCadastro := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snOperacaoTransporteResponse_CPFCNPJContratado) then
      CPFCNPJContratado :=  xn.text // string
    else if (sn = snOperacaoTransporteResponse_ValorFrete) then
      ValorFrete := DefStrToFloat(xn.text, 0)
    else if (sn = snOperacaoTransporteResponse_ValorCombustivel) then
      ValorCombustivel := DefStrToFloat(xn.text, 0)
    else if (sn = snOperacaoTransporteResponse_ValorPedagio) then
      ValorPedagio := DefStrToFloat(xn.text, 0)
    else if (sn = snOperacaoTransporteResponse_ValorDespesas) then
      ValorDespesas := DefStrToFloat(xn.text, 0)
    else if (sn = snOperacaoTransporteResponse_ValorImpostoSestSenat) then
      ValorImpostoSestSenat := DefStrToFloat(xn.text, 0)
    else if (sn = snOperacaoTransporteResponse_ValorImpostoIRRF) then
      ValorImpostoIRRF := DefStrToFloat(xn.text, 0)
    else if (sn = snOperacaoTransporteResponse_ValorImpostoINSS) then
      ValorImpostoINSS := DefStrToFloat(xn.text, 0)
    else if (sn = snOperacaoTransporteResponse_ValorImpostoIcmsIssqn) then
      ValorImpostoIcmsIssqn := DefStrToFloat(xn.text, 0)
    else if (sn = snOperacaoTransporteResponse_ParcelaUnica) then
      ParcelaUnica := (xn.text = 'true')
    else if (sn = snOperacaoTransporteResponse_ModoCompraValePedagio) then
      ModoCompraValePedagio := StrToIntDef(xn.text, 0)
    else if (sn = snOperacaoTransporteResponse_CategoriaVeiculo) then
      CategoriaVeiculo := StrToIntDef(xn.text, 0)
    else if (sn = snOperacaoTransporteResponse_NomeMotorista) then
      NomeMotorista :=  xn.text // string
    else if (sn = snOperacaoTransporteResponse_CPFMotorista) then
      CPFMotorista := StrToInt64Def(xn.text, 0)
    else if (sn = snOperacaoTransporteResponse_RNTRCMotorista) then
      RNTRCMotorista :=  xn.text // string
    else if (sn = snOperacaoTransporteResponse_Quitacao) then
      Quitacao := (xn.text = 'true')
    else if (sn = snOperacaoTransporteResponse_Triada) then
      Triada := (xn.text = 'true')
    else if (sn = snOperacaoTransporteResponse_ItemFinanceiro) then
      ItemFinanceiro :=  xn.text // string
    else if (sn = snOperacaoTransporteResponse_Parcelas) then
      FParcelas := tArrayOfOperacaoTransporteParcelasResponse.Create(xn)
    else if (sn = snOperacaoTransporteResponse_Veiculos) then
      FVeiculos := tArrayOfOperacaoTransporteVeiculoResponse.Create(xn)
    else if (sn = snOperacaoTransporteResponse_Participantes) then
      FParticipantes := tArrayOfOperacaoTransporteParticipanteReponse.Create(xn)
    else if (sn = snOperacaoTransporteResponse_Triagem) then
      FTriagem := tArrayOfOperacaoTransporteTriagemResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tOperacaoTransporteResponse.Destroy;
begin
  //if assigned(FParcelaUnica) then  FParcelaUnica.free;
  //if assigned(FQuitacao) then  FQuitacao.free;
  //if assigned(FTriada) then  FTriada.free;
  inherited;
end; // destructor ...

procedure tOperacaoTransporteResponse.SetCIOT(value:string);
begin
  FCIOT := value;
  FCIOT_IsSet_ := true;
end;

procedure tOperacaoTransporteResponse.SetCodigoCentroDeCusto(value:string);
begin
  FCodigoCentroDeCusto := value;
  FCodigoCentroDeCusto_IsSet_ := true;
end;

procedure tOperacaoTransporteResponse.SetNCM(value:string);
begin
  FNCM := value;
  FNCM_IsSet_ := true;
end;

procedure tOperacaoTransporteResponse.SetProprietarioCarga(value:string);
begin
  FProprietarioCarga := value;
  FProprietarioCarga_IsSet_ := true;
end;

procedure tOperacaoTransporteResponse.SetPesoCarga(value:extended);
begin
  FPesoCarga := value;
  FPesoCarga_IsSet_ := true;
end;

procedure tOperacaoTransporteResponse.SetTipoOperacao(value:string);
begin
  FTipoOperacao := value;
  FTipoOperacao_IsSet_ := true;
end;

procedure tOperacaoTransporteResponse.SetMunicipioOrigemCodigoIBGE(value:integer);
begin
  FMunicipioOrigemCodigoIBGE := value;
  FMunicipioOrigemCodigoIBGE_IsSet_ := true;
end;

procedure tOperacaoTransporteResponse.SetMunicipioDestinoCodigoIBGE(value:integer);
begin
  FMunicipioDestinoCodigoIBGE := value;
  FMunicipioDestinoCodigoIBGE_IsSet_ := true;
end;

procedure tOperacaoTransporteResponse.SetDataHoraInicio(value:tDateTime);
begin
  FDataHoraInicio := value;
  FDataHoraInicio_IsSet_ := true;
end;

procedure tOperacaoTransporteResponse.SetDataHoraTermino(value:tDateTime);
begin
  FDataHoraTermino := value;
  FDataHoraTermino_IsSet_ := true;
end;

procedure tOperacaoTransporteResponse.SetDataHoraInicioCadastro(value:tDateTime);
begin
  FDataHoraInicioCadastro := value;
  FDataHoraInicioCadastro_IsSet_ := true;
end;

procedure tOperacaoTransporteResponse.SetDataHoraFimCadastro(value:tDateTime);
begin
  FDataHoraFimCadastro := value;
  FDataHoraFimCadastro_IsSet_ := true;
end;

procedure tOperacaoTransporteResponse.SetCPFCNPJContratado(value:string);
begin
  FCPFCNPJContratado := value;
  FCPFCNPJContratado_IsSet_ := true;
end;

procedure tOperacaoTransporteResponse.SetValorFrete(value:extended);
begin
  FValorFrete := value;
  FValorFrete_IsSet_ := true;
end;

procedure tOperacaoTransporteResponse.SetValorCombustivel(value:extended);
begin
  FValorCombustivel := value;
  FValorCombustivel_IsSet_ := true;
end;

procedure tOperacaoTransporteResponse.SetValorPedagio(value:extended);
begin
  FValorPedagio := value;
  FValorPedagio_IsSet_ := true;
end;

procedure tOperacaoTransporteResponse.SetValorDespesas(value:extended);
begin
  FValorDespesas := value;
  FValorDespesas_IsSet_ := true;
end;

procedure tOperacaoTransporteResponse.SetValorImpostoSestSenat(value:extended);
begin
  FValorImpostoSestSenat := value;
  FValorImpostoSestSenat_IsSet_ := true;
end;

procedure tOperacaoTransporteResponse.SetValorImpostoIRRF(value:extended);
begin
  FValorImpostoIRRF := value;
  FValorImpostoIRRF_IsSet_ := true;
end;

procedure tOperacaoTransporteResponse.SetValorImpostoINSS(value:extended);
begin
  FValorImpostoINSS := value;
  FValorImpostoINSS_IsSet_ := true;
end;

procedure tOperacaoTransporteResponse.SetValorImpostoIcmsIssqn(value:extended);
begin
  FValorImpostoIcmsIssqn := value;
  FValorImpostoIcmsIssqn_IsSet_ := true;
end;

procedure tOperacaoTransporteResponse.SetParcelaUnica(value:boolean);
begin
  FParcelaUnica := value;
  FParcelaUnica_IsSet_ := true;
end;

procedure tOperacaoTransporteResponse.SetModoCompraValePedagio(value:integer);
begin
  FModoCompraValePedagio := value;
  FModoCompraValePedagio_IsSet_ := true;
end;

procedure tOperacaoTransporteResponse.SetCategoriaVeiculo(value:integer);
begin
  FCategoriaVeiculo := value;
  FCategoriaVeiculo_IsSet_ := true;
end;

procedure tOperacaoTransporteResponse.SetNomeMotorista(value:string);
begin
  FNomeMotorista := value;
  FNomeMotorista_IsSet_ := true;
end;

procedure tOperacaoTransporteResponse.SetCPFMotorista(value:int64);
begin
  FCPFMotorista := value;
  FCPFMotorista_IsSet_ := true;
end;

procedure tOperacaoTransporteResponse.SetRNTRCMotorista(value:string);
begin
  FRNTRCMotorista := value;
  FRNTRCMotorista_IsSet_ := true;
end;

procedure tOperacaoTransporteResponse.SetQuitacao(value:boolean);
begin
  FQuitacao := value;
  FQuitacao_IsSet_ := true;
end;

procedure tOperacaoTransporteResponse.SetTriada(value:boolean);
begin
  FTriada := value;
  FTriada_IsSet_ := true;
end;

procedure tOperacaoTransporteResponse.SetItemFinanceiro(value:string);
begin
  FItemFinanceiro := value;
  FItemFinanceiro_IsSet_ := true;
end;

procedure tOperacaoTransporteResponse.SetParcelas(value:tArrayOfOperacaoTransporteParcelasResponse);
begin
  FParcelas := value;
  FParcelas_IsSet_ := true;
end;

procedure tOperacaoTransporteResponse.SetVeiculos(value:tArrayOfOperacaoTransporteVeiculoResponse);
begin
  FVeiculos := value;
  FVeiculos_IsSet_ := true;
end;

procedure tOperacaoTransporteResponse.SetParticipantes(value:tArrayOfOperacaoTransporteParticipanteReponse);
begin
  FParticipantes := value;
  FParticipantes_IsSet_ := true;
end;

procedure tOperacaoTransporteResponse.SetTriagem(value:tArrayOfOperacaoTransporteTriagemResponse);
begin
  FTriagem := value;
  FTriagem_IsSet_ := true;
end;

procedure tOperacaoTransporteResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'OperacaoTransporteResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if CIOT_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteResponse_CIOT));
    xn.text := FCIOT;
  end;
  if CodigoCentroDeCusto_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteResponse_CodigoCentroDeCusto));
    xn.text := FCodigoCentroDeCusto;
  end;
  if NCM_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteResponse_NCM));
    xn.text := FNCM;
  end;
  if ProprietarioCarga_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteResponse_ProprietarioCarga));
    xn.text := FProprietarioCarga;
  end;
  if PesoCarga_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteResponse_PesoCarga));
    xn.text := MyFloatToStr(FPesoCarga);
  end;
  if TipoOperacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteResponse_TipoOperacao));
    xn.text := FTipoOperacao;
  end;
  if MunicipioOrigemCodigoIBGE_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteResponse_MunicipioOrigemCodigoIBGE));
    xn.text := IntToStr(FMunicipioOrigemCodigoIBGE);
  end;
  if MunicipioDestinoCodigoIBGE_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteResponse_MunicipioDestinoCodigoIBGE));
    xn.text := IntToStr(FMunicipioDestinoCodigoIBGE);
  end;
  if DataHoraInicio_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteResponse_DataHoraInicio));
    xn.text := DateTimeToXMLDateTime(FDataHoraInicio);
  end;
  if DataHoraTermino_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteResponse_DataHoraTermino));
    xn.text := DateTimeToXMLDateTime(FDataHoraTermino);
  end;
  if DataHoraInicioCadastro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteResponse_DataHoraInicioCadastro));
    xn.text := DateTimeToXMLDateTime(FDataHoraInicioCadastro);
  end;
  if DataHoraFimCadastro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteResponse_DataHoraFimCadastro));
    xn.text := DateTimeToXMLDateTime(FDataHoraFimCadastro);
  end;
  if CPFCNPJContratado_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteResponse_CPFCNPJContratado));
    xn.text := FCPFCNPJContratado;
  end;
  if ValorFrete_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteResponse_ValorFrete));
    xn.text := MyFloatToStr(FValorFrete);
  end;
  if ValorCombustivel_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteResponse_ValorCombustivel));
    xn.text := MyFloatToStr(FValorCombustivel);
  end;
  if ValorPedagio_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteResponse_ValorPedagio));
    xn.text := MyFloatToStr(FValorPedagio);
  end;
  if ValorDespesas_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteResponse_ValorDespesas));
    xn.text := MyFloatToStr(FValorDespesas);
  end;
  if ValorImpostoSestSenat_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteResponse_ValorImpostoSestSenat));
    xn.text := MyFloatToStr(FValorImpostoSestSenat);
  end;
  if ValorImpostoIRRF_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteResponse_ValorImpostoIRRF));
    xn.text := MyFloatToStr(FValorImpostoIRRF);
  end;
  if ValorImpostoINSS_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteResponse_ValorImpostoINSS));
    xn.text := MyFloatToStr(FValorImpostoINSS);
  end;
  if ValorImpostoIcmsIssqn_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteResponse_ValorImpostoIcmsIssqn));
    xn.text := MyFloatToStr(FValorImpostoIcmsIssqn);
  end;
  if ParcelaUnica_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteResponse_ParcelaUnica));
    xn.text := BoolToStr(FParcelaUnica);
  end;
  if ModoCompraValePedagio_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteResponse_ModoCompraValePedagio));
    xn.text := IntToStr(FModoCompraValePedagio);
  end;
  if CategoriaVeiculo_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteResponse_CategoriaVeiculo));
    xn.text := IntToStr(FCategoriaVeiculo);
  end;
  if NomeMotorista_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteResponse_NomeMotorista));
    xn.text := FNomeMotorista;
  end;
  if CPFMotorista_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteResponse_CPFMotorista));
    xn.text := IntToStr(FCPFMotorista);
  end;
  if RNTRCMotorista_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteResponse_RNTRCMotorista));
    xn.text := FRNTRCMotorista;
  end;
  if Quitacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteResponse_Quitacao));
    xn.text := BoolToStr(FQuitacao);
  end;
  if Triada_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteResponse_Triada));
    xn.text := BoolToStr(FTriada);
  end;
  if ItemFinanceiro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteResponse_ItemFinanceiro));
    xn.text := FItemFinanceiro;
  end;
  if Assigned(FParcelas) then
  begin
    xn := aNode.addChildByName(snOperacaoTransporteResponse_Parcelas);
    FParcelas.Save(xn);
  end;
  if Assigned(FVeiculos) then
  begin
    xn := aNode.addChildByName(snOperacaoTransporteResponse_Veiculos);
    FVeiculos.Save(xn);
  end;
  if Assigned(FParticipantes) then
  begin
    xn := aNode.addChildByName(snOperacaoTransporteResponse_Participantes);
    FParticipantes.Save(xn);
  end;
  if Assigned(FTriagem) then
  begin
    xn := aNode.addChildByName(snOperacaoTransporteResponse_Triagem);
    FTriagem.Save(xn);
  end;
end; // procedure save

{ tBuscaOperacaoTransporteParcelasResponse }

function tBuscaOperacaoTransporteParcelasResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tBuscaOperacaoTransporteParcelasResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscaOperacaoTransporteParcelasResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tBuscaOperacaoTransporteParcelasResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tBuscaOperacaoTransporteParcelasResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tBuscaOperacaoTransporteParcelasResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscaOperacaoTransporteParcelasResponse')
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

{ tFinalizacaoOperacaoTransporteResponse }

function tFinalizacaoOperacaoTransporteResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tFinalizacaoOperacaoTransporteResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tFinalizacaoOperacaoTransporteResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tFinalizacaoOperacaoTransporteResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tFinalizacaoOperacaoTransporteResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tFinalizacaoOperacaoTransporteResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'FinalizacaoOperacaoTransporteResponse')
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

{ tEncerramentoOperacaoTransporteResponse }

function tEncerramentoOperacaoTransporteResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tEncerramentoOperacaoTransporteResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tEncerramentoOperacaoTransporteResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tEncerramentoOperacaoTransporteResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tEncerramentoOperacaoTransporteResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tEncerramentoOperacaoTransporteResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'EncerramentoOperacaoTransporteResponse')
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

{ tOperacaoTransporteViagemRequest }

function tOperacaoTransporteViagemRequest.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tOperacaoTransporteViagemRequest._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tOperacaoTransporteViagemRequest.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tOperacaoTransporteViagemRequest.Create(aRoot:tJanXMLNode2);
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
    if (sn = snOperacaoTransporteViagemRequest_MunicipioOrigemCodigoIBGE) then
      MunicipioOrigemCodigoIBGE := StrToIntDef(xn.text, 0)
    else if (sn = snOperacaoTransporteViagemRequest_MunicipioDestinoCodigoIBGE) then
      MunicipioDestinoCodigoIBGE := StrToIntDef(xn.text, 0)
    else if (sn = snOperacaoTransporteViagemRequest_NCM) then
      NCM :=  xn.text // string
    else if (sn = snOperacaoTransporteViagemRequest_PesoCarga) then
      PesoCarga := DefStrToFloat(xn.text, 0)
    else if (sn = snOperacaoTransporteViagemRequest_QuantidadeViagens) then
      QuantidadeViagens := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tOperacaoTransporteViagemRequest.Destroy;
begin
  inherited;
end; // destructor ...

procedure tOperacaoTransporteViagemRequest.SetMunicipioOrigemCodigoIBGE(value:integer);
begin
  FMunicipioOrigemCodigoIBGE := value;
  FMunicipioOrigemCodigoIBGE_IsSet_ := true;
end;

procedure tOperacaoTransporteViagemRequest.SetMunicipioDestinoCodigoIBGE(value:integer);
begin
  FMunicipioDestinoCodigoIBGE := value;
  FMunicipioDestinoCodigoIBGE_IsSet_ := true;
end;

procedure tOperacaoTransporteViagemRequest.SetNCM(value:string);
begin
  FNCM := value;
  FNCM_IsSet_ := true;
end;

procedure tOperacaoTransporteViagemRequest.SetPesoCarga(value:extended);
begin
  FPesoCarga := value;
  FPesoCarga_IsSet_ := true;
end;

procedure tOperacaoTransporteViagemRequest.SetQuantidadeViagens(value:integer);
begin
  FQuantidadeViagens := value;
  FQuantidadeViagens_IsSet_ := true;
end;

procedure tOperacaoTransporteViagemRequest.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'OperacaoTransporteViagemRequest')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if MunicipioOrigemCodigoIBGE_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteViagemRequest_MunicipioOrigemCodigoIBGE));
    xn.text := IntToStr(FMunicipioOrigemCodigoIBGE);
  end;
  if MunicipioDestinoCodigoIBGE_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteViagemRequest_MunicipioDestinoCodigoIBGE));
    xn.text := IntToStr(FMunicipioDestinoCodigoIBGE);
  end;
  if NCM_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteViagemRequest_NCM));
    xn.text := FNCM;
  end;
  if PesoCarga_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteViagemRequest_PesoCarga));
    xn.text := MyFloatToStr(FPesoCarga);
  end;
  if QuantidadeViagens_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteViagemRequest_QuantidadeViagens));
    xn.text := IntToStr(FQuantidadeViagens);
  end;
end; // procedure save

{ tArrayOfOperacaoTransporteViagemRequest }

function tArrayOfOperacaoTransporteViagemRequest.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tArrayOfOperacaoTransporteViagemRequest._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tArrayOfOperacaoTransporteViagemRequest.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FOperacaoTransporteViagemRequest := tManagedStringlist.Create;
end; // constructor ...

constructor tArrayOfOperacaoTransporteViagemRequest.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snArrayOfOperacaoTransporteViagemRequest_OperacaoTransporteViagemRequest) then
    begin
      // list of simple type
      FOperacaoTransporteViagemRequest.Add(xn.text);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tArrayOfOperacaoTransporteViagemRequest.Destroy;
begin
  FOperacaoTransporteViagemRequest.Free;
  inherited;
end; // destructor ...

procedure tArrayOfOperacaoTransporteViagemRequest.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ArrayOfOperacaoTransporteViagemRequest')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "OperacaoTransporteViagemRequest" is tManagedStringlist
  if Assigned(FOperacaoTransporteViagemRequest) then
    for i:=0 to FOperacaoTransporteViagemRequest.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snArrayOfOperacaoTransporteViagemRequest_OperacaoTransporteViagemRequest));
      tOperacaoTransporteViagemRequest(FOperacaoTransporteViagemRequest.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tRetificacaoOperacaoTransporteResponse }

function tRetificacaoOperacaoTransporteResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tRetificacaoOperacaoTransporteResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tRetificacaoOperacaoTransporteResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tRetificacaoOperacaoTransporteResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tRetificacaoOperacaoTransporteResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tRetificacaoOperacaoTransporteResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'RetificacaoOperacaoTransporteResponse')
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

{ tCancelamentoOperacaoTransporteResponse }

function tCancelamentoOperacaoTransporteResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tCancelamentoOperacaoTransporteResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCancelamentoOperacaoTransporteResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tCancelamentoOperacaoTransporteResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tCancelamentoOperacaoTransporteResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCancelamentoOperacaoTransporteResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CancelamentoOperacaoTransporteResponse')
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

{ tRegistroOperacaoTransporteResponse }

function tRegistroOperacaoTransporteResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tRegistroOperacaoTransporteResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tRegistroOperacaoTransporteResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tRegistroOperacaoTransporteResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tRegistroOperacaoTransporteResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tRegistroOperacaoTransporteResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'RegistroOperacaoTransporteResponse')
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

{ tCadastroOperacaoTransporteResponse }

function tCadastroOperacaoTransporteResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tCadastroOperacaoTransporteResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastroOperacaoTransporteResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tCadastroOperacaoTransporteResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tCadastroOperacaoTransporteResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCadastroOperacaoTransporteResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastroOperacaoTransporteResponse')
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

{ tAnulacaoOperacaoTransporteResponse }

function tAnulacaoOperacaoTransporteResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tAnulacaoOperacaoTransporteResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAnulacaoOperacaoTransporteResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tAnulacaoOperacaoTransporteResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tAnulacaoOperacaoTransporteResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAnulacaoOperacaoTransporteResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AnulacaoOperacaoTransporteResponse')
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

{ tAnulacaoOperacaoTransporteRequest }

function tAnulacaoOperacaoTransporteRequest.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tAnulacaoOperacaoTransporteRequest._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAnulacaoOperacaoTransporteRequest.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tAnulacaoOperacaoTransporteRequest.Create(aRoot:tJanXMLNode2);
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
    if (sn = snAnulacaoOperacaoTransporteRequest_IdOperacaoTransporte) then
      IdOperacaoTransporte := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tAnulacaoOperacaoTransporteRequest.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAnulacaoOperacaoTransporteRequest.SetIdOperacaoTransporte(value:integer);
begin
  FIdOperacaoTransporte := value;
  FIdOperacaoTransporte_IsSet_ := true;
end;

procedure tAnulacaoOperacaoTransporteRequest.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AnulacaoOperacaoTransporteRequest')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if IdOperacaoTransporte_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAnulacaoOperacaoTransporteRequest_IdOperacaoTransporte));
    xn.text := IntToStr(FIdOperacaoTransporte);
  end;
end; // procedure save

{ tAtualizarOperacaoResponse }

function tAtualizarOperacaoResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tAtualizarOperacaoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAtualizarOperacaoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tAtualizarOperacaoResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tAtualizarOperacaoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAtualizarOperacaoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AtualizarOperacaoResponse')
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

{ tOperacaoTransporteTriagemRelacionadoRequest }

function tOperacaoTransporteTriagemRelacionadoRequest.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tOperacaoTransporteTriagemRelacionadoRequest._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tOperacaoTransporteTriagemRelacionadoRequest.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tOperacaoTransporteTriagemRelacionadoRequest.Create(aRoot:tJanXMLNode2);
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
    if (sn = snOperacaoTransporteTriagemRelacionadoRequest_CaminhoArquivo) then
      CaminhoArquivo :=  xn.text // string
    else if (sn = snOperacaoTransporteTriagemRelacionadoRequest_DataHoraRegistro) then
      DataHoraRegistro := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snOperacaoTransporteTriagemRelacionadoRequest_IdOperacaoTransporteTriagem) then
      IdOperacaoTransporteTriagem := StrToIntDef(xn.text, 0)
    else if (sn = snOperacaoTransporteTriagemRelacionadoRequest_IdOperacaoTransporteTriagemRelacionado) then
      IdOperacaoTransporteTriagemRelacionado := StrToIntDef(xn.text, 0)
    else if (sn = snOperacaoTransporteTriagemRelacionadoRequest_Numero) then
      Numero :=  xn.text // string
    else if (sn = snOperacaoTransporteTriagemRelacionadoRequest_Origem) then
      Origem :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tOperacaoTransporteTriagemRelacionadoRequest.Destroy;
begin
  inherited;
end; // destructor ...

procedure tOperacaoTransporteTriagemRelacionadoRequest.SetCaminhoArquivo(value:string);
begin
  FCaminhoArquivo := value;
  FCaminhoArquivo_IsSet_ := true;
end;

procedure tOperacaoTransporteTriagemRelacionadoRequest.SetDataHoraRegistro(value:tDateTime);
begin
  FDataHoraRegistro := value;
  FDataHoraRegistro_IsSet_ := true;
end;

procedure tOperacaoTransporteTriagemRelacionadoRequest.SetIdOperacaoTransporteTriagem(value:integer);
begin
  FIdOperacaoTransporteTriagem := value;
  FIdOperacaoTransporteTriagem_IsSet_ := true;
end;

procedure tOperacaoTransporteTriagemRelacionadoRequest.SetIdOperacaoTransporteTriagemRelacionado(value:integer);
begin
  FIdOperacaoTransporteTriagemRelacionado := value;
  FIdOperacaoTransporteTriagemRelacionado_IsSet_ := true;
end;

procedure tOperacaoTransporteTriagemRelacionadoRequest.SetNumero(value:string);
begin
  FNumero := value;
  FNumero_IsSet_ := true;
end;

procedure tOperacaoTransporteTriagemRelacionadoRequest.SetOrigem(value:string);
begin
  FOrigem := value;
  FOrigem_IsSet_ := true;
end;

procedure tOperacaoTransporteTriagemRelacionadoRequest.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'OperacaoTransporteTriagemRelacionadoRequest')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if CaminhoArquivo_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteTriagemRelacionadoRequest_CaminhoArquivo));
    xn.text := FCaminhoArquivo;
  end;
  if DataHoraRegistro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteTriagemRelacionadoRequest_DataHoraRegistro));
    xn.text := DateTimeToXMLDateTime(FDataHoraRegistro);
  end;
  if IdOperacaoTransporteTriagem_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteTriagemRelacionadoRequest_IdOperacaoTransporteTriagem));
    xn.text := IntToStr(FIdOperacaoTransporteTriagem);
  end;
  if IdOperacaoTransporteTriagemRelacionado_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteTriagemRelacionadoRequest_IdOperacaoTransporteTriagemRelacionado));
    xn.text := IntToStr(FIdOperacaoTransporteTriagemRelacionado);
  end;
  if Numero_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteTriagemRelacionadoRequest_Numero));
    xn.text := FNumero;
  end;
  if Origem_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteTriagemRelacionadoRequest_Origem));
    xn.text := FOrigem;
  end;
end; // procedure save

{ tArrayOfOperacaoTransporteTriagemRelacionadoRequest }

function tArrayOfOperacaoTransporteTriagemRelacionadoRequest.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tArrayOfOperacaoTransporteTriagemRelacionadoRequest._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tArrayOfOperacaoTransporteTriagemRelacionadoRequest.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FOperacaoTransporteTriagemRelacionadoRequest := tManagedStringlist.Create;
end; // constructor ...

constructor tArrayOfOperacaoTransporteTriagemRelacionadoRequest.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snArrayOfOperacaoTransporteTriagemRelacionadoRequest_OperacaoTransporteTriagemRelacionadoRequest) then
    begin
      // list of simple type
      FOperacaoTransporteTriagemRelacionadoRequest.Add(xn.text);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tArrayOfOperacaoTransporteTriagemRelacionadoRequest.Destroy;
begin
  FOperacaoTransporteTriagemRelacionadoRequest.Free;
  inherited;
end; // destructor ...

procedure tArrayOfOperacaoTransporteTriagemRelacionadoRequest.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ArrayOfOperacaoTransporteTriagemRelacionadoRequest')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "OperacaoTransporteTriagemRelacionadoRequest" is tManagedStringlist
  if Assigned(FOperacaoTransporteTriagemRelacionadoRequest) then
    for i:=0 to FOperacaoTransporteTriagemRelacionadoRequest.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snArrayOfOperacaoTransporteTriagemRelacionadoRequest_OperacaoTransporteTriagemRelacionadoRequest));
      tOperacaoTransporteTriagemRelacionadoRequest(FOperacaoTransporteTriagemRelacionadoRequest.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tOperacaoTransporteTriagemRequest }

function tOperacaoTransporteTriagemRequest.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tOperacaoTransporteTriagemRequest._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tOperacaoTransporteTriagemRequest.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tOperacaoTransporteTriagemRequest.Create(aRoot:tJanXMLNode2);
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
    if (sn = snOperacaoTransporteTriagemRequest_IdTriagemDocumentoObjeto) then
      IdTriagemDocumentoObjeto := StrToIntDef(xn.text, 0)
    else if (sn = snOperacaoTransporteTriagemRequest_NomeDocumentoObjeto) then
      NomeDocumentoObjeto :=  xn.text // string
    else if (sn = snOperacaoTransporteTriagemRequest_ExigeUpload) then
      ExigeUpload :=  xn.text // string
    else if (sn = snOperacaoTransporteTriagemRequest_ExigeDocumentoObjetoFisico) then
      ExigeDocumentoObjetoFisico :=  xn.text // string
    else if (sn = snOperacaoTransporteTriagemRequest_DocumentoObjeto) then
      DocumentoObjeto :=  xn.text // string
    else if (sn = snOperacaoTransporteTriagemRequest_Relacionados) then
      FRelacionados := tArrayOfOperacaoTransporteTriagemRelacionadoRequest.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tOperacaoTransporteTriagemRequest.Destroy;
begin
  inherited;
end; // destructor ...

procedure tOperacaoTransporteTriagemRequest.SetIdTriagemDocumentoObjeto(value:integer);
begin
  FIdTriagemDocumentoObjeto := value;
  FIdTriagemDocumentoObjeto_IsSet_ := true;
end;

procedure tOperacaoTransporteTriagemRequest.SetNomeDocumentoObjeto(value:string);
begin
  FNomeDocumentoObjeto := value;
  FNomeDocumentoObjeto_IsSet_ := true;
end;

procedure tOperacaoTransporteTriagemRequest.SetExigeUpload(value:string);
begin
  FExigeUpload := value;
  FExigeUpload_IsSet_ := true;
end;

procedure tOperacaoTransporteTriagemRequest.SetExigeDocumentoObjetoFisico(value:string);
begin
  FExigeDocumentoObjetoFisico := value;
  FExigeDocumentoObjetoFisico_IsSet_ := true;
end;

procedure tOperacaoTransporteTriagemRequest.SetDocumentoObjeto(value:string);
begin
  FDocumentoObjeto := value;
  FDocumentoObjeto_IsSet_ := true;
end;

procedure tOperacaoTransporteTriagemRequest.SetRelacionados(value:tArrayOfOperacaoTransporteTriagemRelacionadoRequest);
begin
  FRelacionados := value;
  FRelacionados_IsSet_ := true;
end;

procedure tOperacaoTransporteTriagemRequest.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'OperacaoTransporteTriagemRequest')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if IdTriagemDocumentoObjeto_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteTriagemRequest_IdTriagemDocumentoObjeto));
    xn.text := IntToStr(FIdTriagemDocumentoObjeto);
  end;
  if NomeDocumentoObjeto_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteTriagemRequest_NomeDocumentoObjeto));
    xn.text := FNomeDocumentoObjeto;
  end;
  if ExigeUpload_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteTriagemRequest_ExigeUpload));
    xn.text := FExigeUpload;
  end;
  if ExigeDocumentoObjetoFisico_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteTriagemRequest_ExigeDocumentoObjetoFisico));
    xn.text := FExigeDocumentoObjetoFisico;
  end;
  if DocumentoObjeto_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteTriagemRequest_DocumentoObjeto));
    xn.text := FDocumentoObjeto;
  end;
  if Assigned(FRelacionados) then
  begin
    xn := aNode.addChildByName(snOperacaoTransporteTriagemRequest_Relacionados);
    FRelacionados.Save(xn);
  end;
end; // procedure save

{ tArrayOfOperacaoTransporteTriagemRequest }

function tArrayOfOperacaoTransporteTriagemRequest.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tArrayOfOperacaoTransporteTriagemRequest._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tArrayOfOperacaoTransporteTriagemRequest.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FOperacaoTransporteTriagemRequest := tManagedStringlist.Create;
end; // constructor ...

constructor tArrayOfOperacaoTransporteTriagemRequest.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snArrayOfOperacaoTransporteTriagemRequest_OperacaoTransporteTriagemRequest) then
    begin
      // list of simple type
      FOperacaoTransporteTriagemRequest.Add(xn.text);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tArrayOfOperacaoTransporteTriagemRequest.Destroy;
begin
  FOperacaoTransporteTriagemRequest.Free;
  inherited;
end; // destructor ...

procedure tArrayOfOperacaoTransporteTriagemRequest.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ArrayOfOperacaoTransporteTriagemRequest')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "OperacaoTransporteTriagemRequest" is tManagedStringlist
  if Assigned(FOperacaoTransporteTriagemRequest) then
    for i:=0 to FOperacaoTransporteTriagemRequest.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snArrayOfOperacaoTransporteTriagemRequest_OperacaoTransporteTriagemRequest));
      tOperacaoTransporteTriagemRequest(FOperacaoTransporteTriagemRequest.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tOperacaoTransporteParticipanteRequest }

function tOperacaoTransporteParticipanteRequest.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tOperacaoTransporteParticipanteRequest._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tOperacaoTransporteParticipanteRequest.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tOperacaoTransporteParticipanteRequest.Create(aRoot:tJanXMLNode2);
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
    if (sn = snOperacaoTransporteParticipanteRequest_CPFCNPJParticipante) then
      CPFCNPJParticipante :=  xn.text // string
    else if (sn = snOperacaoTransporteParticipanteRequest_TipoParticipante) then
      TipoParticipante := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tOperacaoTransporteParticipanteRequest.Destroy;
begin
  inherited;
end; // destructor ...

procedure tOperacaoTransporteParticipanteRequest.SetCPFCNPJParticipante(value:string);
begin
  FCPFCNPJParticipante := value;
  FCPFCNPJParticipante_IsSet_ := true;
end;

procedure tOperacaoTransporteParticipanteRequest.SetTipoParticipante(value:integer);
begin
  FTipoParticipante := value;
  FTipoParticipante_IsSet_ := true;
end;

procedure tOperacaoTransporteParticipanteRequest.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'OperacaoTransporteParticipanteRequest')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if CPFCNPJParticipante_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteParticipanteRequest_CPFCNPJParticipante));
    xn.text := FCPFCNPJParticipante;
  end;
  if TipoParticipante_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteParticipanteRequest_TipoParticipante));
    xn.text := IntToStr(FTipoParticipante);
  end;
end; // procedure save

{ tArrayOfOperacaoTransporteParticipanteRequest }

function tArrayOfOperacaoTransporteParticipanteRequest.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tArrayOfOperacaoTransporteParticipanteRequest._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tArrayOfOperacaoTransporteParticipanteRequest.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FOperacaoTransporteParticipanteRequest := tManagedStringlist.Create;
end; // constructor ...

constructor tArrayOfOperacaoTransporteParticipanteRequest.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snArrayOfOperacaoTransporteParticipanteRequest_OperacaoTransporteParticipanteRequest) then
    begin
      // list of simple type
      FOperacaoTransporteParticipanteRequest.Add(xn.text);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tArrayOfOperacaoTransporteParticipanteRequest.Destroy;
begin
  FOperacaoTransporteParticipanteRequest.Free;
  inherited;
end; // destructor ...

procedure tArrayOfOperacaoTransporteParticipanteRequest.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ArrayOfOperacaoTransporteParticipanteRequest')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "OperacaoTransporteParticipanteRequest" is tManagedStringlist
  if Assigned(FOperacaoTransporteParticipanteRequest) then
    for i:=0 to FOperacaoTransporteParticipanteRequest.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snArrayOfOperacaoTransporteParticipanteRequest_OperacaoTransporteParticipanteRequest));
      tOperacaoTransporteParticipanteRequest(FOperacaoTransporteParticipanteRequest.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tOperacaoTransporteVeiculoRequest }

function tOperacaoTransporteVeiculoRequest.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tOperacaoTransporteVeiculoRequest._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tOperacaoTransporteVeiculoRequest.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tOperacaoTransporteVeiculoRequest.Create(aRoot:tJanXMLNode2);
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
    if (sn = snOperacaoTransporteVeiculoRequest_Placa) then
      Placa :=  xn.text // string
    else if (sn = snOperacaoTransporteVeiculoRequest_RNTRC) then
      RNTRC :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tOperacaoTransporteVeiculoRequest.Destroy;
begin
  inherited;
end; // destructor ...

procedure tOperacaoTransporteVeiculoRequest.SetPlaca(value:string);
begin
  FPlaca := value;
  FPlaca_IsSet_ := true;
end;

procedure tOperacaoTransporteVeiculoRequest.SetRNTRC(value:string);
begin
  FRNTRC := value;
  FRNTRC_IsSet_ := true;
end;

procedure tOperacaoTransporteVeiculoRequest.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'OperacaoTransporteVeiculoRequest')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Placa_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteVeiculoRequest_Placa));
    xn.text := FPlaca;
  end;
  if RNTRC_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteVeiculoRequest_RNTRC));
    xn.text := FRNTRC;
  end;
end; // procedure save

{ tArrayOfOperacaoTransporteVeiculoRequest }

function tArrayOfOperacaoTransporteVeiculoRequest.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tArrayOfOperacaoTransporteVeiculoRequest._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tArrayOfOperacaoTransporteVeiculoRequest.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FOperacaoTransporteVeiculoRequest := tManagedStringlist.Create;
end; // constructor ...

constructor tArrayOfOperacaoTransporteVeiculoRequest.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snArrayOfOperacaoTransporteVeiculoRequest_OperacaoTransporteVeiculoRequest) then
    begin
      // list of simple type
      FOperacaoTransporteVeiculoRequest.Add(xn.text);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tArrayOfOperacaoTransporteVeiculoRequest.Destroy;
begin
  FOperacaoTransporteVeiculoRequest.Free;
  inherited;
end; // destructor ...

procedure tArrayOfOperacaoTransporteVeiculoRequest.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ArrayOfOperacaoTransporteVeiculoRequest')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "OperacaoTransporteVeiculoRequest" is tManagedStringlist
  if Assigned(FOperacaoTransporteVeiculoRequest) then
    for i:=0 to FOperacaoTransporteVeiculoRequest.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snArrayOfOperacaoTransporteVeiculoRequest_OperacaoTransporteVeiculoRequest));
      tOperacaoTransporteVeiculoRequest(FOperacaoTransporteVeiculoRequest.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tRetificacaoPlacasOperacaoTransporteRequest }

function tRetificacaoPlacasOperacaoTransporteRequest.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tRetificacaoPlacasOperacaoTransporteRequest._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tRetificacaoPlacasOperacaoTransporteRequest.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tRetificacaoPlacasOperacaoTransporteRequest.Create(aRoot:tJanXMLNode2);
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
    if (sn = snRetificacaoPlacasOperacaoTransporteRequest_CodigoOperacao) then
      CodigoOperacao := StrToIntDef(xn.text, 0)
    else if (sn = snRetificacaoPlacasOperacaoTransporteRequest_Veiculos) then
      FVeiculos := tArrayOfOperacaoTransporteVeiculoRequest.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tRetificacaoPlacasOperacaoTransporteRequest.Destroy;
begin
  inherited;
end; // destructor ...

procedure tRetificacaoPlacasOperacaoTransporteRequest.SetCodigoOperacao(value:integer);
begin
  FCodigoOperacao := value;
  FCodigoOperacao_IsSet_ := true;
end;

procedure tRetificacaoPlacasOperacaoTransporteRequest.SetVeiculos(value:tArrayOfOperacaoTransporteVeiculoRequest);
begin
  FVeiculos := value;
  FVeiculos_IsSet_ := true;
end;

procedure tRetificacaoPlacasOperacaoTransporteRequest.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'RetificacaoPlacasOperacaoTransporteRequest')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if CodigoOperacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetificacaoPlacasOperacaoTransporteRequest_CodigoOperacao));
    xn.text := IntToStr(FCodigoOperacao);
  end;
  if Assigned(FVeiculos) then
  begin
    xn := aNode.addChildByName(snRetificacaoPlacasOperacaoTransporteRequest_Veiculos);
    FVeiculos.Save(xn);
  end;
end; // procedure save

{ tOperacaoTransporteParcelaRequest }

function tOperacaoTransporteParcelaRequest.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tOperacaoTransporteParcelaRequest._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tOperacaoTransporteParcelaRequest.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tOperacaoTransporteParcelaRequest.Create(aRoot:tJanXMLNode2);
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
    if (sn = snOperacaoTransporteParcelaRequest_DescricaoParcela) then
      DescricaoParcela :=  xn.text // string
    else if (sn = snOperacaoTransporteParcelaRequest_Valor) then
      Valor := DefStrToFloat(xn.text, 0)
    else if (sn = snOperacaoTransporteParcelaRequest_NumeroParcela) then
      NumeroParcela := StrToIntDef(xn.text, 0)
    else if (sn = snOperacaoTransporteParcelaRequest_DataVencimento) then
      DataVencimento := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snOperacaoTransporteParcelaRequest_TipoDaParcela) then
      TipoDaParcela := StrToIntDef(xn.text, 0)
    else if (sn = snOperacaoTransporteParcelaRequest_FormaPagamento) then
      FormaPagamento := StrToIntDef(xn.text, 0)
    else if (sn = snOperacaoTransporteParcelaRequest_CartaoPagamento) then
      CartaoPagamento :=  xn.text // string
    else if (sn = snOperacaoTransporteParcelaRequest_CodigoBanco) then
      CodigoBanco :=  xn.text // string
    else if (sn = snOperacaoTransporteParcelaRequest_AgenciaDeposito) then
      AgenciaDeposito :=  xn.text // string
    else if (sn = snOperacaoTransporteParcelaRequest_ContaDeposito) then
      ContaDeposito :=  xn.text // string
    else if (sn = snOperacaoTransporteParcelaRequest_DigitoContaDeposito) then
      DigitoContaDeposito :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tOperacaoTransporteParcelaRequest.Destroy;
begin
  inherited;
end; // destructor ...

procedure tOperacaoTransporteParcelaRequest.SetDescricaoParcela(value:string);
begin
  FDescricaoParcela := value;
  FDescricaoParcela_IsSet_ := true;
end;

procedure tOperacaoTransporteParcelaRequest.SetValor(value:extended);
begin
  FValor := value;
  FValor_IsSet_ := true;
end;

procedure tOperacaoTransporteParcelaRequest.SetNumeroParcela(value:integer);
begin
  FNumeroParcela := value;
  FNumeroParcela_IsSet_ := true;
end;

procedure tOperacaoTransporteParcelaRequest.SetDataVencimento(value:tDateTime);
begin
  FDataVencimento := value;
  FDataVencimento_IsSet_ := true;
end;

procedure tOperacaoTransporteParcelaRequest.SetTipoDaParcela(value:integer);
begin
  FTipoDaParcela := value;
  FTipoDaParcela_IsSet_ := true;
end;

procedure tOperacaoTransporteParcelaRequest.SetFormaPagamento(value:integer);
begin
  FFormaPagamento := value;
  FFormaPagamento_IsSet_ := true;
end;

procedure tOperacaoTransporteParcelaRequest.SetCartaoPagamento(value:string);
begin
  FCartaoPagamento := value;
  FCartaoPagamento_IsSet_ := true;
end;

procedure tOperacaoTransporteParcelaRequest.SetCodigoBanco(value:string);
begin
  FCodigoBanco := value;
  FCodigoBanco_IsSet_ := true;
end;

procedure tOperacaoTransporteParcelaRequest.SetAgenciaDeposito(value:string);
begin
  FAgenciaDeposito := value;
  FAgenciaDeposito_IsSet_ := true;
end;

procedure tOperacaoTransporteParcelaRequest.SetContaDeposito(value:string);
begin
  FContaDeposito := value;
  FContaDeposito_IsSet_ := true;
end;

procedure tOperacaoTransporteParcelaRequest.SetDigitoContaDeposito(value:string);
begin
  FDigitoContaDeposito := value;
  FDigitoContaDeposito_IsSet_ := true;
end;

procedure tOperacaoTransporteParcelaRequest.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'OperacaoTransporteParcelaRequest')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if DescricaoParcela_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteParcelaRequest_DescricaoParcela));
    xn.text := FDescricaoParcela;
  end;
  if Valor_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteParcelaRequest_Valor));
    xn.text := MyFloatToStr(FValor);
  end;
  if NumeroParcela_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteParcelaRequest_NumeroParcela));
    xn.text := IntToStr(FNumeroParcela);
  end;
  if DataVencimento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteParcelaRequest_DataVencimento));
    xn.text := DateTimeToXMLDateTime(FDataVencimento);
  end;
  if TipoDaParcela_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteParcelaRequest_TipoDaParcela));
    xn.text := IntToStr(FTipoDaParcela);
  end;
  if FormaPagamento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteParcelaRequest_FormaPagamento));
    xn.text := IntToStr(FFormaPagamento);
  end;
  if CartaoPagamento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteParcelaRequest_CartaoPagamento));
    xn.text := FCartaoPagamento;
  end;
  if CodigoBanco_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteParcelaRequest_CodigoBanco));
    xn.text := FCodigoBanco;
  end;
  if AgenciaDeposito_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteParcelaRequest_AgenciaDeposito));
    xn.text := FAgenciaDeposito;
  end;
  if ContaDeposito_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteParcelaRequest_ContaDeposito));
    xn.text := FContaDeposito;
  end;
  if DigitoContaDeposito_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteParcelaRequest_DigitoContaDeposito));
    xn.text := FDigitoContaDeposito;
  end;
end; // procedure save

{ tArrayOfOperacaoTransporteParcelaRequest }

function tArrayOfOperacaoTransporteParcelaRequest.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tArrayOfOperacaoTransporteParcelaRequest._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tArrayOfOperacaoTransporteParcelaRequest.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FOperacaoTransporteParcelaRequest := tManagedStringlist.Create;
end; // constructor ...

constructor tArrayOfOperacaoTransporteParcelaRequest.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snArrayOfOperacaoTransporteParcelaRequest_OperacaoTransporteParcelaRequest) then
    begin
      // list of simple type
      FOperacaoTransporteParcelaRequest.Add(xn.text);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tArrayOfOperacaoTransporteParcelaRequest.Destroy;
begin
  FOperacaoTransporteParcelaRequest.Free;
  inherited;
end; // destructor ...

procedure tArrayOfOperacaoTransporteParcelaRequest.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ArrayOfOperacaoTransporteParcelaRequest')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "OperacaoTransporteParcelaRequest" is tManagedStringlist
  if Assigned(FOperacaoTransporteParcelaRequest) then
    for i:=0 to FOperacaoTransporteParcelaRequest.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snArrayOfOperacaoTransporteParcelaRequest_OperacaoTransporteParcelaRequest));
      tOperacaoTransporteParcelaRequest(FOperacaoTransporteParcelaRequest.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tEncerramentoOperacaoTransporteRequest }

function tEncerramentoOperacaoTransporteRequest.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tEncerramentoOperacaoTransporteRequest._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tEncerramentoOperacaoTransporteRequest.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tEncerramentoOperacaoTransporteRequest.Create(aRoot:tJanXMLNode2);
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
    if (sn = snEncerramentoOperacaoTransporteRequest_CodigoOperacao) then
      CodigoOperacao := StrToIntDef(xn.text, 0)
    else if (sn = snEncerramentoOperacaoTransporteRequest_TipoOperacao) then
      TipoOperacao :=  xn.text // string
    else if (sn = snEncerramentoOperacaoTransporteRequest_PesoCarga) then
      PesoCarga := DefStrToFloat(xn.text, 0)
    else if (sn = snEncerramentoOperacaoTransporteRequest_HouveRetificacao) then
      HouveRetificacao := (xn.text = 'true')
    else if (sn = snEncerramentoOperacaoTransporteRequest_ValorFrete) then
      ValorFrete := DefStrToFloat(xn.text, 0)
    else if (sn = snEncerramentoOperacaoTransporteRequest_ValorCombustivel) then
      ValorCombustivel := DefStrToFloat(xn.text, 0)
    else if (sn = snEncerramentoOperacaoTransporteRequest_ValorPedagio) then
      ValorPedagio := DefStrToFloat(xn.text, 0)
    else if (sn = snEncerramentoOperacaoTransporteRequest_ValorDespesas) then
      ValorDespesas := DefStrToFloat(xn.text, 0)
    else if (sn = snEncerramentoOperacaoTransporteRequest_ValorImpostoSestSenat) then
      ValorImpostoSestSenat := DefStrToFloat(xn.text, 0)
    else if (sn = snEncerramentoOperacaoTransporteRequest_ValorImpostoIRRF) then
      ValorImpostoIRRF := DefStrToFloat(xn.text, 0)
    else if (sn = snEncerramentoOperacaoTransporteRequest_ValorImpostoINSS) then
      ValorImpostoINSS := DefStrToFloat(xn.text, 0)
    else if (sn = snEncerramentoOperacaoTransporteRequest_ValorImpostoIcmsIssqn) then
      ValorImpostoIcmsIssqn := DefStrToFloat(xn.text, 0)
    else if (sn = snEncerramentoOperacaoTransporteRequest_Parcelas) then
      FParcelas := tArrayOfOperacaoTransporteParcelaRequest.Create(xn)
    else if (sn = snEncerramentoOperacaoTransporteRequest_Viagens) then
      FViagens := tArrayOfOperacaoTransporteViagemRequest.Create(xn)
    else if (sn = snEncerramentoOperacaoTransporteRequest_DescontoCombustivel) then
      DescontoCombustivel := DefStrToFloat(xn.text, 0)
    else if (sn = snEncerramentoOperacaoTransporteRequest_ObservacaoAvariaContratante) then
      ObservacaoAvariaContratante :=  xn.text // string
    else if (sn = snEncerramentoOperacaoTransporteRequest_DescontoServicos) then
      DescontoServicos := DefStrToFloat(xn.text, 0)
    else if (sn = snEncerramentoOperacaoTransporteRequest_DescontoManutencao) then
      DescontoManutencao := DefStrToFloat(xn.text, 0)
    else if (sn = snEncerramentoOperacaoTransporteRequest_DescontoOutros) then
      DescontoOutros := DefStrToFloat(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tEncerramentoOperacaoTransporteRequest.Destroy;
begin
  //if assigned(FHouveRetificacao) then  FHouveRetificacao.free;
  inherited;
end; // destructor ...

procedure tEncerramentoOperacaoTransporteRequest.SetCodigoOperacao(value:integer);
begin
  FCodigoOperacao := value;
  FCodigoOperacao_IsSet_ := true;
end;

procedure tEncerramentoOperacaoTransporteRequest.SetTipoOperacao(value:string);
begin
  FTipoOperacao := value;
  FTipoOperacao_IsSet_ := true;
end;

procedure tEncerramentoOperacaoTransporteRequest.SetPesoCarga(value:extended);
begin
  FPesoCarga := value;
  FPesoCarga_IsSet_ := true;
end;

procedure tEncerramentoOperacaoTransporteRequest.SetHouveRetificacao(value:boolean);
begin
  FHouveRetificacao := value;
  FHouveRetificacao_IsSet_ := true;
end;

procedure tEncerramentoOperacaoTransporteRequest.SetValorFrete(value:extended);
begin
  FValorFrete := value;
  FValorFrete_IsSet_ := true;
end;

procedure tEncerramentoOperacaoTransporteRequest.SetValorCombustivel(value:extended);
begin
  FValorCombustivel := value;
  FValorCombustivel_IsSet_ := true;
end;

procedure tEncerramentoOperacaoTransporteRequest.SetValorPedagio(value:extended);
begin
  FValorPedagio := value;
  FValorPedagio_IsSet_ := true;
end;

procedure tEncerramentoOperacaoTransporteRequest.SetValorDespesas(value:extended);
begin
  FValorDespesas := value;
  FValorDespesas_IsSet_ := true;
end;

procedure tEncerramentoOperacaoTransporteRequest.SetValorImpostoSestSenat(value:extended);
begin
  FValorImpostoSestSenat := value;
  FValorImpostoSestSenat_IsSet_ := true;
end;

procedure tEncerramentoOperacaoTransporteRequest.SetValorImpostoIRRF(value:extended);
begin
  FValorImpostoIRRF := value;
  FValorImpostoIRRF_IsSet_ := true;
end;

procedure tEncerramentoOperacaoTransporteRequest.SetValorImpostoINSS(value:extended);
begin
  FValorImpostoINSS := value;
  FValorImpostoINSS_IsSet_ := true;
end;

procedure tEncerramentoOperacaoTransporteRequest.SetValorImpostoIcmsIssqn(value:extended);
begin
  FValorImpostoIcmsIssqn := value;
  FValorImpostoIcmsIssqn_IsSet_ := true;
end;

procedure tEncerramentoOperacaoTransporteRequest.SetParcelas(value:tArrayOfOperacaoTransporteParcelaRequest);
begin
  FParcelas := value;
  FParcelas_IsSet_ := true;
end;

procedure tEncerramentoOperacaoTransporteRequest.SetViagens(value:tArrayOfOperacaoTransporteViagemRequest);
begin
  FViagens := value;
  FViagens_IsSet_ := true;
end;

procedure tEncerramentoOperacaoTransporteRequest.SetDescontoCombustivel(value:extended);
begin
  FDescontoCombustivel := value;
  FDescontoCombustivel_IsSet_ := true;
end;

procedure tEncerramentoOperacaoTransporteRequest.SetObservacaoAvariaContratante(value:string);
begin
  FObservacaoAvariaContratante := value;
  FObservacaoAvariaContratante_IsSet_ := true;
end;

procedure tEncerramentoOperacaoTransporteRequest.SetDescontoServicos(value:extended);
begin
  FDescontoServicos := value;
  FDescontoServicos_IsSet_ := true;
end;

procedure tEncerramentoOperacaoTransporteRequest.SetDescontoManutencao(value:extended);
begin
  FDescontoManutencao := value;
  FDescontoManutencao_IsSet_ := true;
end;

procedure tEncerramentoOperacaoTransporteRequest.SetDescontoOutros(value:extended);
begin
  FDescontoOutros := value;
  FDescontoOutros_IsSet_ := true;
end;

procedure tEncerramentoOperacaoTransporteRequest.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'EncerramentoOperacaoTransporteRequest')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if CodigoOperacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEncerramentoOperacaoTransporteRequest_CodigoOperacao));
    xn.text := IntToStr(FCodigoOperacao);
  end;
  if TipoOperacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEncerramentoOperacaoTransporteRequest_TipoOperacao));
    xn.text := FTipoOperacao;
  end;
  if PesoCarga_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEncerramentoOperacaoTransporteRequest_PesoCarga));
    xn.text := MyFloatToStr(FPesoCarga);
  end;
  if HouveRetificacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEncerramentoOperacaoTransporteRequest_HouveRetificacao));
    xn.text := BoolToStr(FHouveRetificacao);
  end;
  if ValorFrete_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEncerramentoOperacaoTransporteRequest_ValorFrete));
    xn.text := MyFloatToStr(FValorFrete);
  end;
  if ValorCombustivel_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEncerramentoOperacaoTransporteRequest_ValorCombustivel));
    xn.text := MyFloatToStr(FValorCombustivel);
  end;
  if ValorPedagio_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEncerramentoOperacaoTransporteRequest_ValorPedagio));
    xn.text := MyFloatToStr(FValorPedagio);
  end;
  if ValorDespesas_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEncerramentoOperacaoTransporteRequest_ValorDespesas));
    xn.text := MyFloatToStr(FValorDespesas);
  end;
  if ValorImpostoSestSenat_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEncerramentoOperacaoTransporteRequest_ValorImpostoSestSenat));
    xn.text := MyFloatToStr(FValorImpostoSestSenat);
  end;
  if ValorImpostoIRRF_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEncerramentoOperacaoTransporteRequest_ValorImpostoIRRF));
    xn.text := MyFloatToStr(FValorImpostoIRRF);
  end;
  if ValorImpostoINSS_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEncerramentoOperacaoTransporteRequest_ValorImpostoINSS));
    xn.text := MyFloatToStr(FValorImpostoINSS);
  end;
  if ValorImpostoIcmsIssqn_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEncerramentoOperacaoTransporteRequest_ValorImpostoIcmsIssqn));
    xn.text := MyFloatToStr(FValorImpostoIcmsIssqn);
  end;
  if Assigned(FParcelas) then
  begin
    xn := aNode.addChildByName(snEncerramentoOperacaoTransporteRequest_Parcelas);
    FParcelas.Save(xn);
  end;
  if Assigned(FViagens) then
  begin
    xn := aNode.addChildByName(snEncerramentoOperacaoTransporteRequest_Viagens);
    FViagens.Save(xn);
  end;
  if DescontoCombustivel_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEncerramentoOperacaoTransporteRequest_DescontoCombustivel));
    xn.text := MyFloatToStr(FDescontoCombustivel);
  end;
  if ObservacaoAvariaContratante_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEncerramentoOperacaoTransporteRequest_ObservacaoAvariaContratante));
    xn.text := FObservacaoAvariaContratante;
  end;
  if DescontoServicos_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEncerramentoOperacaoTransporteRequest_DescontoServicos));
    xn.text := MyFloatToStr(FDescontoServicos);
  end;
  if DescontoManutencao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEncerramentoOperacaoTransporteRequest_DescontoManutencao));
    xn.text := MyFloatToStr(FDescontoManutencao);
  end;
  if DescontoOutros_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEncerramentoOperacaoTransporteRequest_DescontoOutros));
    xn.text := MyFloatToStr(FDescontoOutros);
  end;
end; // procedure save

{ tRetificacaoOperacaoTransporteRequest }

function tRetificacaoOperacaoTransporteRequest.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tRetificacaoOperacaoTransporteRequest._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tRetificacaoOperacaoTransporteRequest.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tRetificacaoOperacaoTransporteRequest.Create(aRoot:tJanXMLNode2);
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
    if (sn = snRetificacaoOperacaoTransporteRequest_CodigoOperacao) then
      CodigoOperacao := StrToIntDef(xn.text, 0)
    else if (sn = snRetificacaoOperacaoTransporteRequest_NCM) then
      NCM :=  xn.text // string
    else if (sn = snRetificacaoOperacaoTransporteRequest_PesoCarga) then
      PesoCarga := DefStrToFloat(xn.text, 0)
    else if (sn = snRetificacaoOperacaoTransporteRequest_MunicipioOrigemCodigoIBGE) then
      MunicipioOrigemCodigoIBGE := StrToIntDef(xn.text, 0)
    else if (sn = snRetificacaoOperacaoTransporteRequest_MunicipioDestinoCodigoIBGE) then
      MunicipioDestinoCodigoIBGE := StrToIntDef(xn.text, 0)
    else if (sn = snRetificacaoOperacaoTransporteRequest_DataHoraInicio) then
      DataHoraInicio := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snRetificacaoOperacaoTransporteRequest_DataHoraTermino) then
      DataHoraTermino := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snRetificacaoOperacaoTransporteRequest_ValorFrete) then
      ValorFrete := DefStrToFloat(xn.text, 0)
    else if (sn = snRetificacaoOperacaoTransporteRequest_ValorCombustivel) then
      ValorCombustivel := DefStrToFloat(xn.text, 0)
    else if (sn = snRetificacaoOperacaoTransporteRequest_ValorPedagio) then
      ValorPedagio := DefStrToFloat(xn.text, 0)
    else if (sn = snRetificacaoOperacaoTransporteRequest_ValorDespesas) then
      ValorDespesas := DefStrToFloat(xn.text, 0)
    else if (sn = snRetificacaoOperacaoTransporteRequest_ValorImpostoSestSenat) then
      ValorImpostoSestSenat := DefStrToFloat(xn.text, 0)
    else if (sn = snRetificacaoOperacaoTransporteRequest_ValorImpostoIRRF) then
      ValorImpostoIRRF := DefStrToFloat(xn.text, 0)
    else if (sn = snRetificacaoOperacaoTransporteRequest_ValorImpostoINSS) then
      ValorImpostoINSS := DefStrToFloat(xn.text, 0)
    else if (sn = snRetificacaoOperacaoTransporteRequest_ValorImpostoIcmsIssqn) then
      ValorImpostoIcmsIssqn := DefStrToFloat(xn.text, 0)
    else if (sn = snRetificacaoOperacaoTransporteRequest_Parcelas) then
      FParcelas := tArrayOfOperacaoTransporteParcelaRequest.Create(xn)
    else if (sn = snRetificacaoOperacaoTransporteRequest_Veiculos) then
      FVeiculos := tArrayOfOperacaoTransporteVeiculoRequest.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tRetificacaoOperacaoTransporteRequest.Destroy;
begin
  inherited;
end; // destructor ...

procedure tRetificacaoOperacaoTransporteRequest.SetCodigoOperacao(value:integer);
begin
  FCodigoOperacao := value;
  FCodigoOperacao_IsSet_ := true;
end;

procedure tRetificacaoOperacaoTransporteRequest.SetNCM(value:string);
begin
  FNCM := value;
  FNCM_IsSet_ := true;
end;

procedure tRetificacaoOperacaoTransporteRequest.SetPesoCarga(value:extended);
begin
  FPesoCarga := value;
  FPesoCarga_IsSet_ := true;
end;

procedure tRetificacaoOperacaoTransporteRequest.SetMunicipioOrigemCodigoIBGE(value:integer);
begin
  FMunicipioOrigemCodigoIBGE := value;
  FMunicipioOrigemCodigoIBGE_IsSet_ := true;
end;

procedure tRetificacaoOperacaoTransporteRequest.SetMunicipioDestinoCodigoIBGE(value:integer);
begin
  FMunicipioDestinoCodigoIBGE := value;
  FMunicipioDestinoCodigoIBGE_IsSet_ := true;
end;

procedure tRetificacaoOperacaoTransporteRequest.SetDataHoraInicio(value:tDateTime);
begin
  FDataHoraInicio := value;
  FDataHoraInicio_IsSet_ := true;
end;

procedure tRetificacaoOperacaoTransporteRequest.SetDataHoraTermino(value:tDateTime);
begin
  FDataHoraTermino := value;
  FDataHoraTermino_IsSet_ := true;
end;

procedure tRetificacaoOperacaoTransporteRequest.SetValorFrete(value:extended);
begin
  FValorFrete := value;
  FValorFrete_IsSet_ := true;
end;

procedure tRetificacaoOperacaoTransporteRequest.SetValorCombustivel(value:extended);
begin
  FValorCombustivel := value;
  FValorCombustivel_IsSet_ := true;
end;

procedure tRetificacaoOperacaoTransporteRequest.SetValorPedagio(value:extended);
begin
  FValorPedagio := value;
  FValorPedagio_IsSet_ := true;
end;

procedure tRetificacaoOperacaoTransporteRequest.SetValorDespesas(value:extended);
begin
  FValorDespesas := value;
  FValorDespesas_IsSet_ := true;
end;

procedure tRetificacaoOperacaoTransporteRequest.SetValorImpostoSestSenat(value:extended);
begin
  FValorImpostoSestSenat := value;
  FValorImpostoSestSenat_IsSet_ := true;
end;

procedure tRetificacaoOperacaoTransporteRequest.SetValorImpostoIRRF(value:extended);
begin
  FValorImpostoIRRF := value;
  FValorImpostoIRRF_IsSet_ := true;
end;

procedure tRetificacaoOperacaoTransporteRequest.SetValorImpostoINSS(value:extended);
begin
  FValorImpostoINSS := value;
  FValorImpostoINSS_IsSet_ := true;
end;

procedure tRetificacaoOperacaoTransporteRequest.SetValorImpostoIcmsIssqn(value:extended);
begin
  FValorImpostoIcmsIssqn := value;
  FValorImpostoIcmsIssqn_IsSet_ := true;
end;

procedure tRetificacaoOperacaoTransporteRequest.SetParcelas(value:tArrayOfOperacaoTransporteParcelaRequest);
begin
  FParcelas := value;
  FParcelas_IsSet_ := true;
end;

procedure tRetificacaoOperacaoTransporteRequest.SetVeiculos(value:tArrayOfOperacaoTransporteVeiculoRequest);
begin
  FVeiculos := value;
  FVeiculos_IsSet_ := true;
end;

procedure tRetificacaoOperacaoTransporteRequest.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'RetificacaoOperacaoTransporteRequest')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if CodigoOperacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetificacaoOperacaoTransporteRequest_CodigoOperacao));
    xn.text := IntToStr(FCodigoOperacao);
  end;
  if NCM_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetificacaoOperacaoTransporteRequest_NCM));
    xn.text := FNCM;
  end;
  if PesoCarga_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetificacaoOperacaoTransporteRequest_PesoCarga));
    xn.text := MyFloatToStr(FPesoCarga);
  end;
  if MunicipioOrigemCodigoIBGE_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetificacaoOperacaoTransporteRequest_MunicipioOrigemCodigoIBGE));
    xn.text := IntToStr(FMunicipioOrigemCodigoIBGE);
  end;
  if MunicipioDestinoCodigoIBGE_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetificacaoOperacaoTransporteRequest_MunicipioDestinoCodigoIBGE));
    xn.text := IntToStr(FMunicipioDestinoCodigoIBGE);
  end;
  if DataHoraInicio_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetificacaoOperacaoTransporteRequest_DataHoraInicio));
    xn.text := DateTimeToXMLDateTime(FDataHoraInicio);
  end;
  if DataHoraTermino_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetificacaoOperacaoTransporteRequest_DataHoraTermino));
    xn.text := DateTimeToXMLDateTime(FDataHoraTermino);
  end;
  if ValorFrete_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetificacaoOperacaoTransporteRequest_ValorFrete));
    xn.text := MyFloatToStr(FValorFrete);
  end;
  if ValorCombustivel_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetificacaoOperacaoTransporteRequest_ValorCombustivel));
    xn.text := MyFloatToStr(FValorCombustivel);
  end;
  if ValorPedagio_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetificacaoOperacaoTransporteRequest_ValorPedagio));
    xn.text := MyFloatToStr(FValorPedagio);
  end;
  if ValorDespesas_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetificacaoOperacaoTransporteRequest_ValorDespesas));
    xn.text := MyFloatToStr(FValorDespesas);
  end;
  if ValorImpostoSestSenat_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetificacaoOperacaoTransporteRequest_ValorImpostoSestSenat));
    xn.text := MyFloatToStr(FValorImpostoSestSenat);
  end;
  if ValorImpostoIRRF_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetificacaoOperacaoTransporteRequest_ValorImpostoIRRF));
    xn.text := MyFloatToStr(FValorImpostoIRRF);
  end;
  if ValorImpostoINSS_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetificacaoOperacaoTransporteRequest_ValorImpostoINSS));
    xn.text := MyFloatToStr(FValorImpostoINSS);
  end;
  if ValorImpostoIcmsIssqn_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetificacaoOperacaoTransporteRequest_ValorImpostoIcmsIssqn));
    xn.text := MyFloatToStr(FValorImpostoIcmsIssqn);
  end;
  if Assigned(FParcelas) then
  begin
    xn := aNode.addChildByName(snRetificacaoOperacaoTransporteRequest_Parcelas);
    FParcelas.Save(xn);
  end;
  if Assigned(FVeiculos) then
  begin
    xn := aNode.addChildByName(snRetificacaoOperacaoTransporteRequest_Veiculos);
    FVeiculos.Save(xn);
  end;
end; // procedure save

{ tOperacaoTransporteRequest }

function tOperacaoTransporteRequest.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tOperacaoTransporteRequest._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tOperacaoTransporteRequest.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tOperacaoTransporteRequest.Create(aRoot:tJanXMLNode2);
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
    if (sn = snOperacaoTransporteRequest_CodigoCentroDeCusto) then
      CodigoCentroDeCusto :=  xn.text // string
    else if (sn = snOperacaoTransporteRequest_NCM) then
      NCM :=  xn.text // string
    else if (sn = snOperacaoTransporteRequest_ProprietarioCarga) then
      ProprietarioCarga :=  xn.text // string
    else if (sn = snOperacaoTransporteRequest_PesoCarga) then
      PesoCarga := DefStrToFloat(xn.text, 0)
    else if (sn = snOperacaoTransporteRequest_TipoOperacao) then
      TipoOperacao :=  xn.text // string
    else if (sn = snOperacaoTransporteRequest_MunicipioOrigemCodigoIBGE) then
      MunicipioOrigemCodigoIBGE := StrToIntDef(xn.text, 0)
    else if (sn = snOperacaoTransporteRequest_MunicipioDestinoCodigoIBGE) then
      MunicipioDestinoCodigoIBGE := StrToIntDef(xn.text, 0)
    else if (sn = snOperacaoTransporteRequest_DataHoraInicio) then
      DataHoraInicio := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snOperacaoTransporteRequest_DataHoraTermino) then
      DataHoraTermino := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snOperacaoTransporteRequest_DataHoraInicioCadastro) then
      DataHoraInicioCadastro := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snOperacaoTransporteRequest_DataHoraFimCadastro) then
      DataHoraFimCadastro := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snOperacaoTransporteRequest_CPFCNPJContratado) then
      CPFCNPJContratado :=  xn.text // string
    else if (sn = snOperacaoTransporteRequest_ValorFrete) then
      ValorFrete := DefStrToFloat(xn.text, 0)
    else if (sn = snOperacaoTransporteRequest_ValorCombustivel) then
      ValorCombustivel := DefStrToFloat(xn.text, 0)
    else if (sn = snOperacaoTransporteRequest_ValorPedagio) then
      ValorPedagio := DefStrToFloat(xn.text, 0)
    else if (sn = snOperacaoTransporteRequest_ValorDespesas) then
      ValorDespesas := DefStrToFloat(xn.text, 0)
    else if (sn = snOperacaoTransporteRequest_ValorImpostoSestSenat) then
      ValorImpostoSestSenat := DefStrToFloat(xn.text, 0)
    else if (sn = snOperacaoTransporteRequest_ValorImpostoIRRF) then
      ValorImpostoIRRF := DefStrToFloat(xn.text, 0)
    else if (sn = snOperacaoTransporteRequest_ValorImpostoINSS) then
      ValorImpostoINSS := DefStrToFloat(xn.text, 0)
    else if (sn = snOperacaoTransporteRequest_ValorImpostoIcmsIssqn) then
      ValorImpostoIcmsIssqn := DefStrToFloat(xn.text, 0)
    else if (sn = snOperacaoTransporteRequest_ParcelaUnica) then
      ParcelaUnica := (xn.text = 'true')
    else if (sn = snOperacaoTransporteRequest_ModoCompraValePedagio) then
      ModoCompraValePedagio := StrToIntDef(xn.text, 0)
    else if (sn = snOperacaoTransporteRequest_CategoriaVeiculo) then
      CategoriaVeiculo := StrToIntDef(xn.text, 0)
    else if (sn = snOperacaoTransporteRequest_NomeMotorista) then
      NomeMotorista :=  xn.text // string
    else if (sn = snOperacaoTransporteRequest_CPFMotorista) then
      CPFMotorista := StrToInt64Def(xn.text, 0)
    else if (sn = snOperacaoTransporteRequest_RNTRCMotorista) then
      RNTRCMotorista :=  xn.text // string
    else if (sn = snOperacaoTransporteRequest_Quitacao) then
      Quitacao := (xn.text = 'true')
    else if (sn = snOperacaoTransporteRequest_ItemFinanceiro) then
      ItemFinanceiro :=  xn.text // string
    else if (sn = snOperacaoTransporteRequest_Parcelas) then
      FParcelas := tArrayOfOperacaoTransporteParcelaRequest.Create(xn)
    else if (sn = snOperacaoTransporteRequest_Veiculos) then
      FVeiculos := tArrayOfOperacaoTransporteVeiculoRequest.Create(xn)
    else if (sn = snOperacaoTransporteRequest_Participantes) then
      FParticipantes := tArrayOfOperacaoTransporteParticipanteRequest.Create(xn)
    else if (sn = snOperacaoTransporteRequest_Triagem) then
      FTriagem := tArrayOfOperacaoTransporteTriagemRequest.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tOperacaoTransporteRequest.Destroy;
begin
  //if assigned(FParcelaUnica) then  FParcelaUnica.free;
  //if assigned(FQuitacao) then  FQuitacao.free;
  inherited;
end; // destructor ...

procedure tOperacaoTransporteRequest.SetCodigoCentroDeCusto(value:string);
begin
  FCodigoCentroDeCusto := value;
  FCodigoCentroDeCusto_IsSet_ := true;
end;

procedure tOperacaoTransporteRequest.SetNCM(value:string);
begin
  FNCM := value;
  FNCM_IsSet_ := true;
end;

procedure tOperacaoTransporteRequest.SetProprietarioCarga(value:string);
begin
  FProprietarioCarga := value;
  FProprietarioCarga_IsSet_ := true;
end;

procedure tOperacaoTransporteRequest.SetPesoCarga(value:extended);
begin
  FPesoCarga := value;
  FPesoCarga_IsSet_ := true;
end;

procedure tOperacaoTransporteRequest.SetTipoOperacao(value:string);
begin
  FTipoOperacao := value;
  FTipoOperacao_IsSet_ := true;
end;

procedure tOperacaoTransporteRequest.SetMunicipioOrigemCodigoIBGE(value:integer);
begin
  FMunicipioOrigemCodigoIBGE := value;
  FMunicipioOrigemCodigoIBGE_IsSet_ := true;
end;

procedure tOperacaoTransporteRequest.SetMunicipioDestinoCodigoIBGE(value:integer);
begin
  FMunicipioDestinoCodigoIBGE := value;
  FMunicipioDestinoCodigoIBGE_IsSet_ := true;
end;

procedure tOperacaoTransporteRequest.SetDataHoraInicio(value:tDateTime);
begin
  FDataHoraInicio := value;
  FDataHoraInicio_IsSet_ := true;
end;

procedure tOperacaoTransporteRequest.SetDataHoraTermino(value:tDateTime);
begin
  FDataHoraTermino := value;
  FDataHoraTermino_IsSet_ := true;
end;

procedure tOperacaoTransporteRequest.SetDataHoraInicioCadastro(value:tDateTime);
begin
  FDataHoraInicioCadastro := value;
  FDataHoraInicioCadastro_IsSet_ := true;
end;

procedure tOperacaoTransporteRequest.SetDataHoraFimCadastro(value:tDateTime);
begin
  FDataHoraFimCadastro := value;
  FDataHoraFimCadastro_IsSet_ := true;
end;

procedure tOperacaoTransporteRequest.SetCPFCNPJContratado(value:string);
begin
  FCPFCNPJContratado := value;
  FCPFCNPJContratado_IsSet_ := true;
end;

procedure tOperacaoTransporteRequest.SetValorFrete(value:extended);
begin
  FValorFrete := value;
  FValorFrete_IsSet_ := true;
end;

procedure tOperacaoTransporteRequest.SetValorCombustivel(value:extended);
begin
  FValorCombustivel := value;
  FValorCombustivel_IsSet_ := true;
end;

procedure tOperacaoTransporteRequest.SetValorPedagio(value:extended);
begin
  FValorPedagio := value;
  FValorPedagio_IsSet_ := true;
end;

procedure tOperacaoTransporteRequest.SetValorDespesas(value:extended);
begin
  FValorDespesas := value;
  FValorDespesas_IsSet_ := true;
end;

procedure tOperacaoTransporteRequest.SetValorImpostoSestSenat(value:extended);
begin
  FValorImpostoSestSenat := value;
  FValorImpostoSestSenat_IsSet_ := true;
end;

procedure tOperacaoTransporteRequest.SetValorImpostoIRRF(value:extended);
begin
  FValorImpostoIRRF := value;
  FValorImpostoIRRF_IsSet_ := true;
end;

procedure tOperacaoTransporteRequest.SetValorImpostoINSS(value:extended);
begin
  FValorImpostoINSS := value;
  FValorImpostoINSS_IsSet_ := true;
end;

procedure tOperacaoTransporteRequest.SetValorImpostoIcmsIssqn(value:extended);
begin
  FValorImpostoIcmsIssqn := value;
  FValorImpostoIcmsIssqn_IsSet_ := true;
end;

procedure tOperacaoTransporteRequest.SetParcelaUnica(value:boolean);
begin
  FParcelaUnica := value;
  FParcelaUnica_IsSet_ := true;
end;

procedure tOperacaoTransporteRequest.SetModoCompraValePedagio(value:integer);
begin
  FModoCompraValePedagio := value;
  FModoCompraValePedagio_IsSet_ := true;
end;

procedure tOperacaoTransporteRequest.SetCategoriaVeiculo(value:integer);
begin
  FCategoriaVeiculo := value;
  FCategoriaVeiculo_IsSet_ := true;
end;

procedure tOperacaoTransporteRequest.SetNomeMotorista(value:string);
begin
  FNomeMotorista := value;
  FNomeMotorista_IsSet_ := true;
end;

procedure tOperacaoTransporteRequest.SetCPFMotorista(value:int64);
begin
  FCPFMotorista := value;
  FCPFMotorista_IsSet_ := true;
end;

procedure tOperacaoTransporteRequest.SetRNTRCMotorista(value:string);
begin
  FRNTRCMotorista := value;
  FRNTRCMotorista_IsSet_ := true;
end;

procedure tOperacaoTransporteRequest.SetQuitacao(value:boolean);
begin
  FQuitacao := value;
  FQuitacao_IsSet_ := true;
end;

procedure tOperacaoTransporteRequest.SetItemFinanceiro(value:string);
begin
  FItemFinanceiro := value;
  FItemFinanceiro_IsSet_ := true;
end;

procedure tOperacaoTransporteRequest.SetParcelas(value:tArrayOfOperacaoTransporteParcelaRequest);
begin
  FParcelas := value;
  FParcelas_IsSet_ := true;
end;

procedure tOperacaoTransporteRequest.SetVeiculos(value:tArrayOfOperacaoTransporteVeiculoRequest);
begin
  FVeiculos := value;
  FVeiculos_IsSet_ := true;
end;

procedure tOperacaoTransporteRequest.SetParticipantes(value:tArrayOfOperacaoTransporteParticipanteRequest);
begin
  FParticipantes := value;
  FParticipantes_IsSet_ := true;
end;

procedure tOperacaoTransporteRequest.SetTriagem(value:tArrayOfOperacaoTransporteTriagemRequest);
begin
  FTriagem := value;
  FTriagem_IsSet_ := true;
end;

procedure tOperacaoTransporteRequest.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'OperacaoTransporteRequest')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if CodigoCentroDeCusto_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteRequest_CodigoCentroDeCusto));
    xn.text := FCodigoCentroDeCusto;
  end;
  if NCM_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteRequest_NCM));
    xn.text := FNCM;
  end;
  if ProprietarioCarga_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteRequest_ProprietarioCarga));
    xn.text := FProprietarioCarga;
  end;
  if PesoCarga_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteRequest_PesoCarga));
    xn.text := MyFloatToStr(FPesoCarga);
  end;
  if TipoOperacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteRequest_TipoOperacao));
    xn.text := FTipoOperacao;
  end;
  if MunicipioOrigemCodigoIBGE_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteRequest_MunicipioOrigemCodigoIBGE));
    xn.text := IntToStr(FMunicipioOrigemCodigoIBGE);
  end;
  if MunicipioDestinoCodigoIBGE_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteRequest_MunicipioDestinoCodigoIBGE));
    xn.text := IntToStr(FMunicipioDestinoCodigoIBGE);
  end;
  if DataHoraInicio_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteRequest_DataHoraInicio));
    xn.text := DateTimeToXMLDateTime(FDataHoraInicio);
  end;
  if DataHoraTermino_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteRequest_DataHoraTermino));
    xn.text := DateTimeToXMLDateTime(FDataHoraTermino);
  end;
  if DataHoraInicioCadastro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteRequest_DataHoraInicioCadastro));
    xn.text := DateTimeToXMLDateTime(FDataHoraInicioCadastro);
  end;
  if DataHoraFimCadastro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteRequest_DataHoraFimCadastro));
    xn.text := DateTimeToXMLDateTime(FDataHoraFimCadastro);
  end;
  if CPFCNPJContratado_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteRequest_CPFCNPJContratado));
    xn.text := FCPFCNPJContratado;
  end;
  if ValorFrete_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteRequest_ValorFrete));
    xn.text := MyFloatToStr(FValorFrete);
  end;
  if ValorCombustivel_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteRequest_ValorCombustivel));
    xn.text := MyFloatToStr(FValorCombustivel);
  end;
  if ValorPedagio_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteRequest_ValorPedagio));
    xn.text := MyFloatToStr(FValorPedagio);
  end;
  if ValorDespesas_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteRequest_ValorDespesas));
    xn.text := MyFloatToStr(FValorDespesas);
  end;
  if ValorImpostoSestSenat_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteRequest_ValorImpostoSestSenat));
    xn.text := MyFloatToStr(FValorImpostoSestSenat);
  end;
  if ValorImpostoIRRF_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteRequest_ValorImpostoIRRF));
    xn.text := MyFloatToStr(FValorImpostoIRRF);
  end;
  if ValorImpostoINSS_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteRequest_ValorImpostoINSS));
    xn.text := MyFloatToStr(FValorImpostoINSS);
  end;
  if ValorImpostoIcmsIssqn_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteRequest_ValorImpostoIcmsIssqn));
    xn.text := MyFloatToStr(FValorImpostoIcmsIssqn);
  end;
  if ParcelaUnica_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteRequest_ParcelaUnica));
    xn.text := BoolToStr(FParcelaUnica);
  end;
  if ModoCompraValePedagio_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteRequest_ModoCompraValePedagio));
    xn.text := IntToStr(FModoCompraValePedagio);
  end;
  if CategoriaVeiculo_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteRequest_CategoriaVeiculo));
    xn.text := IntToStr(FCategoriaVeiculo);
  end;
  if NomeMotorista_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteRequest_NomeMotorista));
    xn.text := FNomeMotorista;
  end;
  if CPFMotorista_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteRequest_CPFMotorista));
    xn.text := IntToStr(FCPFMotorista);
  end;
  if RNTRCMotorista_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteRequest_RNTRCMotorista));
    xn.text := FRNTRCMotorista;
  end;
  if Quitacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteRequest_Quitacao));
    xn.text := BoolToStr(FQuitacao);
  end;
  if ItemFinanceiro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteRequest_ItemFinanceiro));
    xn.text := FItemFinanceiro;
  end;
  if Assigned(FParcelas) then
  begin
    xn := aNode.addChildByName(snOperacaoTransporteRequest_Parcelas);
    FParcelas.Save(xn);
  end;
  if Assigned(FVeiculos) then
  begin
    xn := aNode.addChildByName(snOperacaoTransporteRequest_Veiculos);
    FVeiculos.Save(xn);
  end;
  if Assigned(FParticipantes) then
  begin
    xn := aNode.addChildByName(snOperacaoTransporteRequest_Participantes);
    FParticipantes.Save(xn);
  end;
  if Assigned(FTriagem) then
  begin
    xn := aNode.addChildByName(snOperacaoTransporteRequest_Triagem);
    FTriagem.Save(xn);
  end;
end; // procedure save

{ tAtualizarOperacaoRequest }

function tAtualizarOperacaoRequest.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tAtualizarOperacaoRequest._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAtualizarOperacaoRequest.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tAtualizarOperacaoRequest.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tAtualizarOperacaoRequest.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAtualizarOperacaoRequest.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AtualizarOperacaoRequest')
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

{ tSituacaoCadastroTransportadorAnttResponse }

function tSituacaoCadastroTransportadorAnttResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tSituacaoCadastroTransportadorAnttResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tSituacaoCadastroTransportadorAnttResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tSituacaoCadastroTransportadorAnttResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tSituacaoCadastroTransportadorAnttResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tSituacaoCadastroTransportadorAnttResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'SituacaoCadastroTransportadorAnttResponse')
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

{ tCadastroEquiparadoResponse }

function tCadastroEquiparadoResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tCadastroEquiparadoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastroEquiparadoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tCadastroEquiparadoResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tCadastroEquiparadoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCadastroEquiparadoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastroEquiparadoResponse')
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

{ tCadastroEquiparadoRequest }

function tCadastroEquiparadoRequest.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tCadastroEquiparadoRequest._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastroEquiparadoRequest.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tCadastroEquiparadoRequest.Create(aRoot:tJanXMLNode2);
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
    if (sn = snCadastroEquiparadoRequest_RNTRC) then
      RNTRC :=  xn.text // string
    else if (sn = snCadastroEquiparadoRequest_CNPJ) then
      CNPJ :=  xn.text // string
    else if (sn = snCadastroEquiparadoRequest_RazaoSocial) then
      RazaoSocial :=  xn.text // string
    else if (sn = snCadastroEquiparadoRequest_InscricaoEstadual) then
      InscricaoEstadual :=  xn.text // string
    else if (sn = snCadastroEquiparadoRequest_InscricaoMunicipal) then
      InscricaoMunicipal :=  xn.text // string
    else if (sn = snCadastroEquiparadoRequest_NomeFantasia) then
      NomeFantasia :=  xn.text // string
    else if (sn = snCadastroEquiparadoRequest_DataInscricao) then
      DataInscricao := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snCadastroEquiparadoRequest_AtividadeEconomica) then
      AtividadeEconomica := StrToIntDef(xn.text, 0)
    else if (sn = snCadastroEquiparadoRequest_Logradouro) then
      Logradouro :=  xn.text // string
    else if (sn = snCadastroEquiparadoRequest_NumeroEndereco) then
      NumeroEndereco :=  xn.text // string
    else if (sn = snCadastroEquiparadoRequest_Complemento) then
      Complemento :=  xn.text // string
    else if (sn = snCadastroEquiparadoRequest_Bairro) then
      Bairro :=  xn.text // string
    else if (sn = snCadastroEquiparadoRequest_CEP) then
      CEP :=  xn.text // string
    else if (sn = snCadastroEquiparadoRequest_CodigoIBGEMunicipio) then
      CodigoIBGEMunicipio := StrToIntDef(xn.text, 0)
    else if (sn = snCadastroEquiparadoRequest_TelefoneFixo) then
      TelefoneFixo := StrToInt64Def(xn.text, 0)
    else if (sn = snCadastroEquiparadoRequest_TelefoneCelular) then
      TelefoneCelular := StrToInt64Def(xn.text, 0)
    else if (sn = snCadastroEquiparadoRequest_Email) then
      Email :=  xn.text // string
    else if (sn = snCadastroEquiparadoRequest_Login) then
      Login :=  xn.text // string
    else if (sn = snCadastroEquiparadoRequest_CodigoBanco) then
      CodigoBanco :=  xn.text // string
    else if (sn = snCadastroEquiparadoRequest_CodigoAgencia) then
      CodigoAgencia :=  xn.text // string
    else if (sn = snCadastroEquiparadoRequest_DigitoAgencia) then
      DigitoAgencia :=  xn.text // string
    else if (sn = snCadastroEquiparadoRequest_ContaCorrente) then
      ContaCorrente :=  xn.text // string
    else if (sn = snCadastroEquiparadoRequest_DigitoContaCorrente) then
      DigitoContaCorrente :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tCadastroEquiparadoRequest.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCadastroEquiparadoRequest.SetRNTRC(value:string);
begin
  FRNTRC := value;
  FRNTRC_IsSet_ := true;
end;

procedure tCadastroEquiparadoRequest.SetCNPJ(value:string);
begin
  FCNPJ := value;
  FCNPJ_IsSet_ := true;
end;

procedure tCadastroEquiparadoRequest.SetRazaoSocial(value:string);
begin
  FRazaoSocial := value;
  FRazaoSocial_IsSet_ := true;
end;

procedure tCadastroEquiparadoRequest.SetInscricaoEstadual(value:string);
begin
  FInscricaoEstadual := value;
  FInscricaoEstadual_IsSet_ := true;
end;

procedure tCadastroEquiparadoRequest.SetInscricaoMunicipal(value:string);
begin
  FInscricaoMunicipal := value;
  FInscricaoMunicipal_IsSet_ := true;
end;

procedure tCadastroEquiparadoRequest.SetNomeFantasia(value:string);
begin
  FNomeFantasia := value;
  FNomeFantasia_IsSet_ := true;
end;

procedure tCadastroEquiparadoRequest.SetDataInscricao(value:tDateTime);
begin
  FDataInscricao := value;
  FDataInscricao_IsSet_ := true;
end;

procedure tCadastroEquiparadoRequest.SetAtividadeEconomica(value:integer);
begin
  FAtividadeEconomica := value;
  FAtividadeEconomica_IsSet_ := true;
end;

procedure tCadastroEquiparadoRequest.SetLogradouro(value:string);
begin
  FLogradouro := value;
  FLogradouro_IsSet_ := true;
end;

procedure tCadastroEquiparadoRequest.SetNumeroEndereco(value:string);
begin
  FNumeroEndereco := value;
  FNumeroEndereco_IsSet_ := true;
end;

procedure tCadastroEquiparadoRequest.SetComplemento(value:string);
begin
  FComplemento := value;
  FComplemento_IsSet_ := true;
end;

procedure tCadastroEquiparadoRequest.SetBairro(value:string);
begin
  FBairro := value;
  FBairro_IsSet_ := true;
end;

procedure tCadastroEquiparadoRequest.SetCEP(value:string);
begin
  FCEP := value;
  FCEP_IsSet_ := true;
end;

procedure tCadastroEquiparadoRequest.SetCodigoIBGEMunicipio(value:integer);
begin
  FCodigoIBGEMunicipio := value;
  FCodigoIBGEMunicipio_IsSet_ := true;
end;

procedure tCadastroEquiparadoRequest.SetTelefoneFixo(value:int64);
begin
  FTelefoneFixo := value;
  FTelefoneFixo_IsSet_ := true;
end;

procedure tCadastroEquiparadoRequest.SetTelefoneCelular(value:int64);
begin
  FTelefoneCelular := value;
  FTelefoneCelular_IsSet_ := true;
end;

procedure tCadastroEquiparadoRequest.SetEmail(value:string);
begin
  FEmail := value;
  FEmail_IsSet_ := true;
end;

procedure tCadastroEquiparadoRequest.SetLogin(value:string);
begin
  FLogin := value;
  FLogin_IsSet_ := true;
end;

procedure tCadastroEquiparadoRequest.SetCodigoBanco(value:string);
begin
  FCodigoBanco := value;
  FCodigoBanco_IsSet_ := true;
end;

procedure tCadastroEquiparadoRequest.SetCodigoAgencia(value:string);
begin
  FCodigoAgencia := value;
  FCodigoAgencia_IsSet_ := true;
end;

procedure tCadastroEquiparadoRequest.SetDigitoAgencia(value:string);
begin
  FDigitoAgencia := value;
  FDigitoAgencia_IsSet_ := true;
end;

procedure tCadastroEquiparadoRequest.SetContaCorrente(value:string);
begin
  FContaCorrente := value;
  FContaCorrente_IsSet_ := true;
end;

procedure tCadastroEquiparadoRequest.SetDigitoContaCorrente(value:string);
begin
  FDigitoContaCorrente := value;
  FDigitoContaCorrente_IsSet_ := true;
end;

procedure tCadastroEquiparadoRequest.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastroEquiparadoRequest')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if RNTRC_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroEquiparadoRequest_RNTRC));
    xn.text := FRNTRC;
  end;
  if CNPJ_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroEquiparadoRequest_CNPJ));
    xn.text := FCNPJ;
  end;
  if RazaoSocial_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroEquiparadoRequest_RazaoSocial));
    xn.text := FRazaoSocial;
  end;
  if InscricaoEstadual_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroEquiparadoRequest_InscricaoEstadual));
    xn.text := FInscricaoEstadual;
  end;
  if InscricaoMunicipal_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroEquiparadoRequest_InscricaoMunicipal));
    xn.text := FInscricaoMunicipal;
  end;
  if NomeFantasia_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroEquiparadoRequest_NomeFantasia));
    xn.text := FNomeFantasia;
  end;
  if DataInscricao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroEquiparadoRequest_DataInscricao));
    xn.text := DateTimeToXMLDateTime(FDataInscricao);
  end;
  if AtividadeEconomica_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroEquiparadoRequest_AtividadeEconomica));
    xn.text := IntToStr(FAtividadeEconomica);
  end;
  if Logradouro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroEquiparadoRequest_Logradouro));
    xn.text := FLogradouro;
  end;
  if NumeroEndereco_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroEquiparadoRequest_NumeroEndereco));
    xn.text := FNumeroEndereco;
  end;
  if Complemento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroEquiparadoRequest_Complemento));
    xn.text := FComplemento;
  end;
  if Bairro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroEquiparadoRequest_Bairro));
    xn.text := FBairro;
  end;
  if CEP_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroEquiparadoRequest_CEP));
    xn.text := FCEP;
  end;
  if CodigoIBGEMunicipio_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroEquiparadoRequest_CodigoIBGEMunicipio));
    xn.text := IntToStr(FCodigoIBGEMunicipio);
  end;
  if TelefoneFixo_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroEquiparadoRequest_TelefoneFixo));
    xn.text := IntToStr(FTelefoneFixo);
  end;
  if TelefoneCelular_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroEquiparadoRequest_TelefoneCelular));
    xn.text := IntToStr(FTelefoneCelular);
  end;
  if Email_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroEquiparadoRequest_Email));
    xn.text := FEmail;
  end;
  if Login_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroEquiparadoRequest_Login));
    xn.text := FLogin;
  end;
  if CodigoBanco_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroEquiparadoRequest_CodigoBanco));
    xn.text := FCodigoBanco;
  end;
  if CodigoAgencia_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroEquiparadoRequest_CodigoAgencia));
    xn.text := FCodigoAgencia;
  end;
  if DigitoAgencia_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroEquiparadoRequest_DigitoAgencia));
    xn.text := FDigitoAgencia;
  end;
  if ContaCorrente_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroEquiparadoRequest_ContaCorrente));
    xn.text := FContaCorrente;
  end;
  if DigitoContaCorrente_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroEquiparadoRequest_DigitoContaCorrente));
    xn.text := FDigitoContaCorrente;
  end;
end; // procedure save

{ tCadastroAutonomoResponse }

function tCadastroAutonomoResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tCadastroAutonomoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastroAutonomoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tCadastroAutonomoResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tCadastroAutonomoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCadastroAutonomoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastroAutonomoResponse')
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

{ tCadastroAutonomoRequest }

function tCadastroAutonomoRequest.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tCadastroAutonomoRequest._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastroAutonomoRequest.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tCadastroAutonomoRequest.Create(aRoot:tJanXMLNode2);
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
    if (sn = snCadastroAutonomoRequest_RNTRC) then
      RNTRC :=  xn.text // string
    else if (sn = snCadastroAutonomoRequest_Nome) then
      Nome :=  xn.text // string
    else if (sn = snCadastroAutonomoRequest_Sobrenome) then
      Sobrenome :=  xn.text // string
    else if (sn = snCadastroAutonomoRequest_CPF) then
      CPF :=  xn.text // string
    else if (sn = snCadastroAutonomoRequest_DataNascimento) then
      DataNascimento := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snCadastroAutonomoRequest_RG) then
      RG :=  xn.text // string
    else if (sn = snCadastroAutonomoRequest_OrgaoExpedidor) then
      OrgaoExpedidor :=  xn.text // string
    else if (sn = snCadastroAutonomoRequest_CNH) then
      CNH :=  xn.text // string
    else if (sn = snCadastroAutonomoRequest_TipoCNH) then
      TipoCNH :=  xn.text // string
    else if (sn = snCadastroAutonomoRequest_DataValidadeCNH) then
      DataValidadeCNH := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snCadastroAutonomoRequest_Sexo) then
      Sexo :=  xn.text // string
    else if (sn = snCadastroAutonomoRequest_Naturalidade) then
      Naturalidade :=  xn.text // string
    else if (sn = snCadastroAutonomoRequest_Nacionalidade) then
      Nacionalidade :=  xn.text // string
    else if (sn = snCadastroAutonomoRequest_Logradouro) then
      Logradouro :=  xn.text // string
    else if (sn = snCadastroAutonomoRequest_NumeroEndereco) then
      NumeroEndereco :=  xn.text // string
    else if (sn = snCadastroAutonomoRequest_Complemento) then
      Complemento :=  xn.text // string
    else if (sn = snCadastroAutonomoRequest_Bairro) then
      Bairro :=  xn.text // string
    else if (sn = snCadastroAutonomoRequest_CEP) then
      CEP :=  xn.text // string
    else if (sn = snCadastroAutonomoRequest_CodigoIBGEMunicipio) then
      CodigoIBGEMunicipio := StrToIntDef(xn.text, 0)
    else if (sn = snCadastroAutonomoRequest_IdentificadorEndereco) then
      IdentificadorEndereco :=  xn.text // string
    else if (sn = snCadastroAutonomoRequest_TelefoneFixo) then
      TelefoneFixo := StrToInt64Def(xn.text, 0)
    else if (sn = snCadastroAutonomoRequest_TelefoneCelular) then
      TelefoneCelular := StrToInt64Def(xn.text, 0)
    else if (sn = snCadastroAutonomoRequest_EstadoCivil) then
      EstadoCivil := StrToIntDef(xn.text, 0)
    else if (sn = snCadastroAutonomoRequest_Email) then
      Email :=  xn.text // string
    else if (sn = snCadastroAutonomoRequest_CodigoBanco) then
      CodigoBanco :=  xn.text // string
    else if (sn = snCadastroAutonomoRequest_CodigoAgencia) then
      CodigoAgencia :=  xn.text // string
    else if (sn = snCadastroAutonomoRequest_DigitoAgencia) then
      DigitoAgencia :=  xn.text // string
    else if (sn = snCadastroAutonomoRequest_ContaCorrente) then
      ContaCorrente :=  xn.text // string
    else if (sn = snCadastroAutonomoRequest_DigitoContaCorrente) then
      DigitoContaCorrente :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tCadastroAutonomoRequest.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCadastroAutonomoRequest.SetRNTRC(value:string);
begin
  FRNTRC := value;
  FRNTRC_IsSet_ := true;
end;

procedure tCadastroAutonomoRequest.SetNome(value:string);
begin
  FNome := value;
  FNome_IsSet_ := true;
end;

procedure tCadastroAutonomoRequest.SetSobrenome(value:string);
begin
  FSobrenome := value;
  FSobrenome_IsSet_ := true;
end;

procedure tCadastroAutonomoRequest.SetCPF(value:string);
begin
  FCPF := value;
  FCPF_IsSet_ := true;
end;

procedure tCadastroAutonomoRequest.SetDataNascimento(value:tDateTime);
begin
  FDataNascimento := value;
  FDataNascimento_IsSet_ := true;
end;

procedure tCadastroAutonomoRequest.SetRG(value:string);
begin
  FRG := value;
  FRG_IsSet_ := true;
end;

procedure tCadastroAutonomoRequest.SetOrgaoExpedidor(value:string);
begin
  FOrgaoExpedidor := value;
  FOrgaoExpedidor_IsSet_ := true;
end;

procedure tCadastroAutonomoRequest.SetCNH(value:string);
begin
  FCNH := value;
  FCNH_IsSet_ := true;
end;

procedure tCadastroAutonomoRequest.SetTipoCNH(value:string);
begin
  FTipoCNH := value;
  FTipoCNH_IsSet_ := true;
end;

procedure tCadastroAutonomoRequest.SetDataValidadeCNH(value:tDateTime);
begin
  FDataValidadeCNH := value;
  FDataValidadeCNH_IsSet_ := true;
end;

procedure tCadastroAutonomoRequest.SetSexo(value:string);
begin
  FSexo := value;
  FSexo_IsSet_ := true;
end;

procedure tCadastroAutonomoRequest.SetNaturalidade(value:string);
begin
  FNaturalidade := value;
  FNaturalidade_IsSet_ := true;
end;

procedure tCadastroAutonomoRequest.SetNacionalidade(value:string);
begin
  FNacionalidade := value;
  FNacionalidade_IsSet_ := true;
end;

procedure tCadastroAutonomoRequest.SetLogradouro(value:string);
begin
  FLogradouro := value;
  FLogradouro_IsSet_ := true;
end;

procedure tCadastroAutonomoRequest.SetNumeroEndereco(value:string);
begin
  FNumeroEndereco := value;
  FNumeroEndereco_IsSet_ := true;
end;

procedure tCadastroAutonomoRequest.SetComplemento(value:string);
begin
  FComplemento := value;
  FComplemento_IsSet_ := true;
end;

procedure tCadastroAutonomoRequest.SetBairro(value:string);
begin
  FBairro := value;
  FBairro_IsSet_ := true;
end;

procedure tCadastroAutonomoRequest.SetCEP(value:string);
begin
  FCEP := value;
  FCEP_IsSet_ := true;
end;

procedure tCadastroAutonomoRequest.SetCodigoIBGEMunicipio(value:integer);
begin
  FCodigoIBGEMunicipio := value;
  FCodigoIBGEMunicipio_IsSet_ := true;
end;

procedure tCadastroAutonomoRequest.SetIdentificadorEndereco(value:string);
begin
  FIdentificadorEndereco := value;
  FIdentificadorEndereco_IsSet_ := true;
end;

procedure tCadastroAutonomoRequest.SetTelefoneFixo(value:int64);
begin
  FTelefoneFixo := value;
  FTelefoneFixo_IsSet_ := true;
end;

procedure tCadastroAutonomoRequest.SetTelefoneCelular(value:int64);
begin
  FTelefoneCelular := value;
  FTelefoneCelular_IsSet_ := true;
end;

procedure tCadastroAutonomoRequest.SetEstadoCivil(value:integer);
begin
  FEstadoCivil := value;
  FEstadoCivil_IsSet_ := true;
end;

procedure tCadastroAutonomoRequest.SetEmail(value:string);
begin
  FEmail := value;
  FEmail_IsSet_ := true;
end;

procedure tCadastroAutonomoRequest.SetCodigoBanco(value:string);
begin
  FCodigoBanco := value;
  FCodigoBanco_IsSet_ := true;
end;

procedure tCadastroAutonomoRequest.SetCodigoAgencia(value:string);
begin
  FCodigoAgencia := value;
  FCodigoAgencia_IsSet_ := true;
end;

procedure tCadastroAutonomoRequest.SetDigitoAgencia(value:string);
begin
  FDigitoAgencia := value;
  FDigitoAgencia_IsSet_ := true;
end;

procedure tCadastroAutonomoRequest.SetContaCorrente(value:string);
begin
  FContaCorrente := value;
  FContaCorrente_IsSet_ := true;
end;

procedure tCadastroAutonomoRequest.SetDigitoContaCorrente(value:string);
begin
  FDigitoContaCorrente := value;
  FDigitoContaCorrente_IsSet_ := true;
end;

procedure tCadastroAutonomoRequest.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastroAutonomoRequest')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if RNTRC_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroAutonomoRequest_RNTRC));
    xn.text := FRNTRC;
  end;
  if Nome_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroAutonomoRequest_Nome));
    xn.text := FNome;
  end;
  if Sobrenome_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroAutonomoRequest_Sobrenome));
    xn.text := FSobrenome;
  end;
  if CPF_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroAutonomoRequest_CPF));
    xn.text := FCPF;
  end;
  if DataNascimento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroAutonomoRequest_DataNascimento));
    xn.text := DateTimeToXMLDateTime(FDataNascimento);
  end;
  if RG_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroAutonomoRequest_RG));
    xn.text := FRG;
  end;
  if OrgaoExpedidor_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroAutonomoRequest_OrgaoExpedidor));
    xn.text := FOrgaoExpedidor;
  end;
  if CNH_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroAutonomoRequest_CNH));
    xn.text := FCNH;
  end;
  if TipoCNH_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroAutonomoRequest_TipoCNH));
    xn.text := FTipoCNH;
  end;
  if DataValidadeCNH_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroAutonomoRequest_DataValidadeCNH));
    xn.text := DateTimeToXMLDateTime(FDataValidadeCNH);
  end;
  if Sexo_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroAutonomoRequest_Sexo));
    xn.text := FSexo;
  end;
  if Naturalidade_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroAutonomoRequest_Naturalidade));
    xn.text := FNaturalidade;
  end;
  if Nacionalidade_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroAutonomoRequest_Nacionalidade));
    xn.text := FNacionalidade;
  end;
  if Logradouro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroAutonomoRequest_Logradouro));
    xn.text := FLogradouro;
  end;
  if NumeroEndereco_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroAutonomoRequest_NumeroEndereco));
    xn.text := FNumeroEndereco;
  end;
  if Complemento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroAutonomoRequest_Complemento));
    xn.text := FComplemento;
  end;
  if Bairro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroAutonomoRequest_Bairro));
    xn.text := FBairro;
  end;
  if CEP_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroAutonomoRequest_CEP));
    xn.text := FCEP;
  end;
  if CodigoIBGEMunicipio_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroAutonomoRequest_CodigoIBGEMunicipio));
    xn.text := IntToStr(FCodigoIBGEMunicipio);
  end;
  if IdentificadorEndereco_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroAutonomoRequest_IdentificadorEndereco));
    xn.text := FIdentificadorEndereco;
  end;
  if TelefoneFixo_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroAutonomoRequest_TelefoneFixo));
    xn.text := IntToStr(FTelefoneFixo);
  end;
  if TelefoneCelular_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroAutonomoRequest_TelefoneCelular));
    xn.text := IntToStr(FTelefoneCelular);
  end;
  if EstadoCivil_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroAutonomoRequest_EstadoCivil));
    xn.text := IntToStr(FEstadoCivil);
  end;
  if Email_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroAutonomoRequest_Email));
    xn.text := FEmail;
  end;
  if CodigoBanco_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroAutonomoRequest_CodigoBanco));
    xn.text := FCodigoBanco;
  end;
  if CodigoAgencia_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroAutonomoRequest_CodigoAgencia));
    xn.text := FCodigoAgencia;
  end;
  if DigitoAgencia_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroAutonomoRequest_DigitoAgencia));
    xn.text := FDigitoAgencia;
  end;
  if ContaCorrente_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroAutonomoRequest_ContaCorrente));
    xn.text := FContaCorrente;
  end;
  if DigitoContaCorrente_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroAutonomoRequest_DigitoContaCorrente));
    xn.text := FDigitoContaCorrente;
  end;
end; // procedure save

{ tBuscaParticipantesResponse }

function tBuscaParticipantesResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tBuscaParticipantesResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscaParticipantesResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tBuscaParticipantesResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tBuscaParticipantesResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tBuscaParticipantesResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscaParticipantesResponse')
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

{ tObterParticipanteResponse }

function tObterParticipanteResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tObterParticipanteResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterParticipanteResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tObterParticipanteResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tObterParticipanteResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterParticipanteResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterParticipanteResponse')
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

{ tBaseParticipanteRequestResponse }

function tBaseParticipanteRequestResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tBaseParticipanteRequestResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBaseParticipanteRequestResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tBaseParticipanteRequestResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snBaseParticipanteRequestResponse_IdParticipanteOperacaoTransporte) then
      IdParticipanteOperacaoTransporte := StrToIntDef(xn.text, 0)
    else if (sn = snBaseParticipanteRequestResponse_IdDmTipoPessoa) then
      IdDmTipoPessoa := StrToIntDef(xn.text, 0)
    else if (sn = snBaseParticipanteRequestResponse_Nome) then
      Nome :=  xn.text // string
    else if (sn = snBaseParticipanteRequestResponse_RazaoSocial) then
      RazaoSocial :=  xn.text // string
    else if (sn = snBaseParticipanteRequestResponse_CPFCNPJ) then
      CPFCNPJ :=  xn.text // string
    else if (sn = snBaseParticipanteRequestResponse_Endereco) then
      Endereco :=  xn.text // string
    else if (sn = snBaseParticipanteRequestResponse_Bairro) then
      Bairro :=  xn.text // string
    else if (sn = snBaseParticipanteRequestResponse_CEP) then
      CEP :=  xn.text // string
    else if (sn = snBaseParticipanteRequestResponse_IdMunicipio) then
      IdMunicipio := StrToIntDef(xn.text, 0)
    else if (sn = snBaseParticipanteRequestResponse_RNTRC) then
      RNTRC :=  xn.text // string
    else if (sn = snBaseParticipanteRequestResponse_Ativo) then
      Ativo := (xn.text = 'true')
    else if (sn = snBaseParticipanteRequestResponse_TipoParticipante) then
      TipoParticipante :=  xn.text // string
    else if (sn = snBaseParticipanteRequestResponse_Email) then
      Email :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tBaseParticipanteRequestResponse.Destroy;
begin
  //if assigned(FAtivo) then  FAtivo.free;
  inherited;
end; // destructor ...

procedure tBaseParticipanteRequestResponse.SetIdParticipanteOperacaoTransporte(value:integer);
begin
  FIdParticipanteOperacaoTransporte := value;
  FIdParticipanteOperacaoTransporte_IsSet_ := true;
end;

procedure tBaseParticipanteRequestResponse.SetIdDmTipoPessoa(value:integer);
begin
  FIdDmTipoPessoa := value;
  FIdDmTipoPessoa_IsSet_ := true;
end;

procedure tBaseParticipanteRequestResponse.SetNome(value:string);
begin
  FNome := value;
  FNome_IsSet_ := true;
end;

procedure tBaseParticipanteRequestResponse.SetRazaoSocial(value:string);
begin
  FRazaoSocial := value;
  FRazaoSocial_IsSet_ := true;
end;

procedure tBaseParticipanteRequestResponse.SetCPFCNPJ(value:string);
begin
  FCPFCNPJ := value;
  FCPFCNPJ_IsSet_ := true;
end;

procedure tBaseParticipanteRequestResponse.SetEndereco(value:string);
begin
  FEndereco := value;
  FEndereco_IsSet_ := true;
end;

procedure tBaseParticipanteRequestResponse.SetBairro(value:string);
begin
  FBairro := value;
  FBairro_IsSet_ := true;
end;

procedure tBaseParticipanteRequestResponse.SetCEP(value:string);
begin
  FCEP := value;
  FCEP_IsSet_ := true;
end;

procedure tBaseParticipanteRequestResponse.SetIdMunicipio(value:integer);
begin
  FIdMunicipio := value;
  FIdMunicipio_IsSet_ := true;
end;

procedure tBaseParticipanteRequestResponse.SetRNTRC(value:string);
begin
  FRNTRC := value;
  FRNTRC_IsSet_ := true;
end;

procedure tBaseParticipanteRequestResponse.SetAtivo(value:boolean);
begin
  FAtivo := value;
  FAtivo_IsSet_ := true;
end;

procedure tBaseParticipanteRequestResponse.SetTipoParticipante(value:string);
begin
  FTipoParticipante := value;
  FTipoParticipante_IsSet_ := true;
end;

procedure tBaseParticipanteRequestResponse.SetEmail(value:string);
begin
  FEmail := value;
  FEmail_IsSet_ := true;
end;

procedure tBaseParticipanteRequestResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BaseParticipanteRequestResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if IdParticipanteOperacaoTransporte_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseParticipanteRequestResponse_IdParticipanteOperacaoTransporte));
    xn.text := IntToStr(FIdParticipanteOperacaoTransporte);
  end;
  if IdDmTipoPessoa_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseParticipanteRequestResponse_IdDmTipoPessoa));
    xn.text := IntToStr(FIdDmTipoPessoa);
  end;
  if Nome_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseParticipanteRequestResponse_Nome));
    xn.text := FNome;
  end;
  if RazaoSocial_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseParticipanteRequestResponse_RazaoSocial));
    xn.text := FRazaoSocial;
  end;
  if CPFCNPJ_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseParticipanteRequestResponse_CPFCNPJ));
    xn.text := FCPFCNPJ;
  end;
  if Endereco_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseParticipanteRequestResponse_Endereco));
    xn.text := FEndereco;
  end;
  if Bairro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseParticipanteRequestResponse_Bairro));
    xn.text := FBairro;
  end;
  if CEP_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseParticipanteRequestResponse_CEP));
    xn.text := FCEP;
  end;
  if IdMunicipio_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseParticipanteRequestResponse_IdMunicipio));
    xn.text := IntToStr(FIdMunicipio);
  end;
  if RNTRC_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseParticipanteRequestResponse_RNTRC));
    xn.text := FRNTRC;
  end;
  if Ativo_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseParticipanteRequestResponse_Ativo));
    xn.text := BoolToStr(FAtivo);
  end;
  if TipoParticipante_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseParticipanteRequestResponse_TipoParticipante));
    xn.text := FTipoParticipante;
  end;
  if Email_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseParticipanteRequestResponse_Email));
    xn.text := FEmail;
  end;
end; // procedure save

{ tArrayOfBaseParticipanteRequestResponse }

function tArrayOfBaseParticipanteRequestResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tArrayOfBaseParticipanteRequestResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tArrayOfBaseParticipanteRequestResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FBaseParticipanteRequestResponse := tManagedStringlist.Create;
end; // constructor ...

constructor tArrayOfBaseParticipanteRequestResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snArrayOfBaseParticipanteRequestResponse_BaseParticipanteRequestResponse) then
    begin
      // list of simple type
      FBaseParticipanteRequestResponse.Add(xn.text);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tArrayOfBaseParticipanteRequestResponse.Destroy;
begin
  FBaseParticipanteRequestResponse.Free;
  inherited;
end; // destructor ...

procedure tArrayOfBaseParticipanteRequestResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ArrayOfBaseParticipanteRequestResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "BaseParticipanteRequestResponse" is tManagedStringlist
  if Assigned(FBaseParticipanteRequestResponse) then
    for i:=0 to FBaseParticipanteRequestResponse.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snArrayOfBaseParticipanteRequestResponse_BaseParticipanteRequestResponse));
      tBaseParticipanteRequestResponse(FBaseParticipanteRequestResponse.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tBuscaCentrosDeCustosResponse }

function tBuscaCentrosDeCustosResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tBuscaCentrosDeCustosResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscaCentrosDeCustosResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tBuscaCentrosDeCustosResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tBuscaCentrosDeCustosResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tBuscaCentrosDeCustosResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscaCentrosDeCustosResponse')
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

{ tObterCentroDeCustoResponse }

function tObterCentroDeCustoResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tObterCentroDeCustoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterCentroDeCustoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tObterCentroDeCustoResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tObterCentroDeCustoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterCentroDeCustoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterCentroDeCustoResponse')
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

{ tBaseResponse }

function tBaseResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tBaseResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBaseResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tBaseResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snBaseResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snBaseResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tBaseResponse.Destroy;
begin
  //if assigned(FSucesso) then  FSucesso.free;
  inherited;
end; // destructor ...

procedure tBaseResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tBaseResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tBaseResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BaseResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseResponse_Sucesso));
    xn.text := BoolToStr(FSucesso);
  end;
end; // procedure save

{ tBaseCentroDeCustoRequestResponse }

function tBaseCentroDeCustoRequestResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tBaseCentroDeCustoRequestResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBaseCentroDeCustoRequestResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tBaseCentroDeCustoRequestResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snBaseCentroDeCustoRequestResponse_IdCentroDeCusto) then
      IdCentroDeCusto := StrToIntDef(xn.text, 0)
    else if (sn = snBaseCentroDeCustoRequestResponse_Codigo) then
      Codigo :=  xn.text // string
    else if (sn = snBaseCentroDeCustoRequestResponse_Descricao) then
      Descricao :=  xn.text // string
    else if (sn = snBaseCentroDeCustoRequestResponse_Comentario) then
      Comentario :=  xn.text // string
    else if (sn = snBaseCentroDeCustoRequestResponse_Ativo) then
      Ativo := (xn.text = 'true')
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tBaseCentroDeCustoRequestResponse.Destroy;
begin
  //if assigned(FAtivo) then  FAtivo.free;
  inherited;
end; // destructor ...

procedure tBaseCentroDeCustoRequestResponse.SetIdCentroDeCusto(value:integer);
begin
  FIdCentroDeCusto := value;
  FIdCentroDeCusto_IsSet_ := true;
end;

procedure tBaseCentroDeCustoRequestResponse.SetCodigo(value:string);
begin
  FCodigo := value;
  FCodigo_IsSet_ := true;
end;

procedure tBaseCentroDeCustoRequestResponse.SetDescricao(value:string);
begin
  FDescricao := value;
  FDescricao_IsSet_ := true;
end;

procedure tBaseCentroDeCustoRequestResponse.SetComentario(value:string);
begin
  FComentario := value;
  FComentario_IsSet_ := true;
end;

procedure tBaseCentroDeCustoRequestResponse.SetAtivo(value:boolean);
begin
  FAtivo := value;
  FAtivo_IsSet_ := true;
end;

procedure tBaseCentroDeCustoRequestResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BaseCentroDeCustoRequestResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if IdCentroDeCusto_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseCentroDeCustoRequestResponse_IdCentroDeCusto));
    xn.text := IntToStr(FIdCentroDeCusto);
  end;
  if Codigo_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseCentroDeCustoRequestResponse_Codigo));
    xn.text := FCodigo;
  end;
  if Descricao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseCentroDeCustoRequestResponse_Descricao));
    xn.text := FDescricao;
  end;
  if Comentario_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseCentroDeCustoRequestResponse_Comentario));
    xn.text := FComentario;
  end;
  if Ativo_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBaseCentroDeCustoRequestResponse_Ativo));
    xn.text := BoolToStr(FAtivo);
  end;
end; // procedure save

{ tArrayOfBaseCentroDeCustoRequestResponse }

function tArrayOfBaseCentroDeCustoRequestResponse.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

class function tArrayOfBaseCentroDeCustoRequestResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tArrayOfBaseCentroDeCustoRequestResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FBaseCentroDeCustoRequestResponse := tManagedStringlist.Create;
end; // constructor ...

constructor tArrayOfBaseCentroDeCustoRequestResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snArrayOfBaseCentroDeCustoRequestResponse_BaseCentroDeCustoRequestResponse) then
    begin
      // list of simple type
      FBaseCentroDeCustoRequestResponse.Add(xn.text);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tArrayOfBaseCentroDeCustoRequestResponse.Destroy;
begin
  FBaseCentroDeCustoRequestResponse.Free;
  inherited;
end; // destructor ...

procedure tArrayOfBaseCentroDeCustoRequestResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ArrayOfBaseCentroDeCustoRequestResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "BaseCentroDeCustoRequestResponse" is tManagedStringlist
  if Assigned(FBaseCentroDeCustoRequestResponse) then
    for i:=0 to FBaseCentroDeCustoRequestResponse.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snArrayOfBaseCentroDeCustoRequestResponse_BaseCentroDeCustoRequestResponse));
      tBaseCentroDeCustoRequestResponse(FBaseCentroDeCustoRequestResponse.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

end.
