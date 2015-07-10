unit uTrg_TARGET_VectioFrete_Application_WCF_Contracts_External;

Interface
uses
  Classes,
  JanXMLParser2,
  uXMLTools,
  uTrg_service1_v1_50;

// targetNameSpace: http://schemas.datacontract.org/2004/07/TARGET.VectioFrete.Application.WCF.Contracts.External
// NameSpacePrefix: tns
// Date of Schema : 30/10/2014 15:19:30
// Translationdate: 30/10/2014 15:46:11
//
//   includes xs=http://www.w3.org/2001/XMLSchema


   {<s:Fault>
    <faultcode xmlns:a="http://schemas.microsoft.com/ws/2005/05/addressing/none">a:ActionNotSupported</faultcode>
    <faultstring xml:lang="pt-BR">The message with Action '' cannot be processed at the receiver, due to a ContractFilter mismatch at the EndpointDispatcher. This may be because of either a contract mismatch (mismatched Actions between sender and receiver) or a binding/security mismatch between the sender and the receiver.  Check that sender and receiver have the same contract and the same binding (including security requirements, e.g. Message, Transport, None).</faultstring>
   </s:Fault>}
const
  snFault = 'Fault';
  snFault_faultcode = 'faultcode';
  snFault_faultstring = 'faultstring';

type
  tFault = class
  private
    Ffaultcode: string;
    F_NameSpaceAlias: string;
    Ffaultstring: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tFault;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property faultcode: string read Ffaultcode write Ffaultcode;
    property faultstring: string read Ffaultstring write Ffaultstring;
  end;



const
  snDadosInteresseRotaResponse = 'DadosInteresseRotaResponse';
  snDadosInteresseRotaResponse_MensagemRetorno = 'MensagemRetorno';
  snDadosInteresseRotaResponse_Sucesso = 'Sucesso';
  snDadosInteresseRotaResponse_IdDestino = 'IdDestino';
  snDadosInteresseRotaResponse_IdOrigem = 'IdOrigem';
  snDadosInteresseRotaResponse_NomeDestino = 'NomeDestino';
  snDadosInteresseRotaResponse_NomeOrigem = 'NomeOrigem';

type
  tDadosInteresseRotaResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FIdDestino: integer; // (E)
    FIdDestino_IsSet_: boolean;
    FIdOrigem: integer; // (E)
    FIdOrigem_IsSet_: boolean;
    FNomeDestino: string; // (E)
    FNomeDestino_IsSet_: boolean;
    FNomeOrigem: string; // (E)
    FNomeOrigem_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetIdDestino(value:integer);
    procedure SetIdOrigem(value:integer);
    procedure SetNomeDestino(value:string);
    procedure SetNomeOrigem(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tDadosInteresseRotaResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property IdDestino: integer read FIdDestino write SetIdDestino;
    property IdDestino_IsSet_:boolean read FIdDestino_IsSet_;
    property IdOrigem: integer read FIdOrigem write SetIdOrigem;
    property IdOrigem_IsSet_:boolean read FIdOrigem_IsSet_;
    property NomeDestino: string read FNomeDestino write SetNomeDestino;
    property NomeDestino_IsSet_:boolean read FNomeDestino_IsSet_;
    property NomeOrigem: string read FNomeOrigem write SetNomeOrigem;
    property NomeOrigem_IsSet_:boolean read FNomeOrigem_IsSet_;
  end;

const
  snConsultaRotaMapLinkPedagiosResponse = 'ConsultaRotaMapLinkPedagiosResponse';
  snConsultaRotaMapLinkPedagiosResponse_MensagemRetorno = 'MensagemRetorno';
  snConsultaRotaMapLinkPedagiosResponse_Sucesso = 'Sucesso';
  snConsultaRotaMapLinkPedagiosResponse_IdPedagio = 'IdPedagio';
  snConsultaRotaMapLinkPedagiosResponse_IdFormaPagamento = 'IdFormaPagamento';
  snConsultaRotaMapLinkPedagiosResponse_Valor = 'Valor';
  snConsultaRotaMapLinkPedagiosResponse_Nome = 'Nome';

type
  tConsultaRotaMapLinkPedagiosResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FIdPedagio: integer; // (E)
    FIdPedagio_IsSet_: boolean;
    FIdFormaPagamento: integer; // (E)
    FIdFormaPagamento_IsSet_: boolean;
    FValor: extended; // (E)
    FValor_IsSet_: boolean;
    FNome: string; // (E)
    FNome_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetIdPedagio(value:integer);
    procedure SetIdFormaPagamento(value:integer);
    procedure SetValor(value:extended);
    procedure SetNome(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tConsultaRotaMapLinkPedagiosResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property IdPedagio: integer read FIdPedagio write SetIdPedagio;
    property IdPedagio_IsSet_:boolean read FIdPedagio_IsSet_;
    property IdFormaPagamento: integer read FIdFormaPagamento write SetIdFormaPagamento;
    property IdFormaPagamento_IsSet_:boolean read FIdFormaPagamento_IsSet_;
    property Valor: extended read FValor write SetValor;
    property Valor_IsSet_:boolean read FValor_IsSet_;
    property Nome: string read FNome write SetNome;
    property Nome_IsSet_:boolean read FNome_IsSet_;
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
    class function CreateFromXmlString(s: string): tArrayOfConsultaRotaMapLinkPedagiosResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ConsultaRotaMapLinkPedagiosResponse: tManagedStringList read FConsultaRotaMapLinkPedagiosResponse write FConsultaRotaMapLinkPedagiosResponse; // of tConsultaRotaMapLinkPedagiosResponse
  end;

const
  snConsultaRotaMapLinkParadaResponse = 'ConsultaRotaMapLinkParadaResponse';
  snConsultaRotaMapLinkParadaResponse_MensagemRetorno = 'MensagemRetorno';
  snConsultaRotaMapLinkParadaResponse_Sucesso = 'Sucesso';
  snConsultaRotaMapLinkParadaResponse_Descricao = 'Descricao';
  snConsultaRotaMapLinkParadaResponse_PontoX = 'PontoX';
  snConsultaRotaMapLinkParadaResponse_PontoY = 'PontoY';

type
  tConsultaRotaMapLinkParadaResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FDescricao: string; // (E)
    FDescricao_IsSet_: boolean;
    FPontoX: extended; // (E)
    FPontoX_IsSet_: boolean;
    FPontoY: extended; // (E)
    FPontoY_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetDescricao(value:string);
    procedure SetPontoX(value:extended);
    procedure SetPontoY(value:extended);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tConsultaRotaMapLinkParadaResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property Descricao: string read FDescricao write SetDescricao;
    property Descricao_IsSet_:boolean read FDescricao_IsSet_;
    property PontoX: extended read FPontoX write SetPontoX;
    property PontoX_IsSet_:boolean read FPontoX_IsSet_;
    property PontoY: extended read FPontoY write SetPontoY;
    property PontoY_IsSet_:boolean read FPontoY_IsSet_;
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
    class function CreateFromXmlString(s: string): tArrayOfConsultaRotaMapLinkParadaResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ConsultaRotaMapLinkParadaResponse: tManagedStringList read FConsultaRotaMapLinkParadaResponse write FConsultaRotaMapLinkParadaResponse; // of tConsultaRotaMapLinkParadaResponse
  end;

const
  snObterCustoRotaResponse = 'ObterCustoRotaResponse';
  snObterCustoRotaResponse_MensagemRetorno = 'MensagemRetorno';
  snObterCustoRotaResponse_Sucesso = 'Sucesso';
  snObterCustoRotaResponse_Paradas = 'Paradas';
  snObterCustoRotaResponse_Pedagios = 'Pedagios';
  snObterCustoRotaResponse_Otimizada = 'Otimizada';
  snObterCustoRotaResponse_Tipo = 'Tipo';
  snObterCustoRotaResponse_IdCategoriaVeiculo = 'IdCategoriaVeiculo';
  snObterCustoRotaResponse_ValorPedagioTotal = 'ValorPedagioTotal';
  snObterCustoRotaResponse_ValorPedagioVectio = 'ValorPedagioVectio';
  snObterCustoRotaResponse_ValorPedagioViaFacil = 'ValorPedagioViaFacil';
  snObterCustoRotaResponse_IdRotaCliente = 'IdRotaCliente';
  snObterCustoRotaResponse_NomeRotaCliente = 'NomeRotaCliente';
  snObterCustoRotaResponse_DescricaoCategoriaVeiculo = 'DescricaoCategoriaVeiculo';
  snObterCustoRotaResponse_DadosInteresseRota = 'DadosInteresseRota';

type
  tObterCustoRotaResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FParadas: tArrayOfConsultaRotaMapLinkParadaResponse; // (E)
    FParadas_IsSet_: boolean;
    FPedagios: tArrayOfConsultaRotaMapLinkPedagiosResponse; // (E)
    FPedagios_IsSet_: boolean;
    FOtimizada: boolean; // (E)
    FOtimizada_IsSet_: boolean;
    FTipo: integer; // (E)
    FTipo_IsSet_: boolean;
    FIdCategoriaVeiculo: integer; // (E)
    FIdCategoriaVeiculo_IsSet_: boolean;
    FValorPedagioTotal: extended; // (E)
    FValorPedagioTotal_IsSet_: boolean;
    FValorPedagioVectio: extended; // (E)
    FValorPedagioVectio_IsSet_: boolean;
    FValorPedagioViaFacil: extended; // (E)
    FValorPedagioViaFacil_IsSet_: boolean;
    FIdRotaCliente: integer; // (E)
    FIdRotaCliente_IsSet_: boolean;
    FNomeRotaCliente: string; // (E)
    FNomeRotaCliente_IsSet_: boolean;
    FDescricaoCategoriaVeiculo: string; // (E)
    FDescricaoCategoriaVeiculo_IsSet_: boolean;
    FDadosInteresseRota: tDadosInteresseRotaResponse; // (E)
    FDadosInteresseRota_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetParadas(value:tArrayOfConsultaRotaMapLinkParadaResponse);
    procedure SetPedagios(value:tArrayOfConsultaRotaMapLinkPedagiosResponse);
    procedure SetOtimizada(value:boolean);
    procedure SetTipo(value:integer);
    procedure SetIdCategoriaVeiculo(value:integer);
    procedure SetValorPedagioTotal(value:extended);
    procedure SetValorPedagioVectio(value:extended);
    procedure SetValorPedagioViaFacil(value:extended);
    procedure SetIdRotaCliente(value:integer);
    procedure SetNomeRotaCliente(value:string);
    procedure SetDescricaoCategoriaVeiculo(value:string);
    procedure SetDadosInteresseRota(value:tDadosInteresseRotaResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterCustoRotaResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property Paradas: tArrayOfConsultaRotaMapLinkParadaResponse read FParadas write SetParadas;
    property Paradas_IsSet_:boolean read FParadas_IsSet_;
    property Pedagios: tArrayOfConsultaRotaMapLinkPedagiosResponse read FPedagios write SetPedagios;
    property Pedagios_IsSet_:boolean read FPedagios_IsSet_;
    property Otimizada: boolean read FOtimizada write SetOtimizada;
    property Otimizada_IsSet_:boolean read FOtimizada_IsSet_;
    property Tipo: integer read FTipo write SetTipo;
    property Tipo_IsSet_:boolean read FTipo_IsSet_;
    property IdCategoriaVeiculo: integer read FIdCategoriaVeiculo write SetIdCategoriaVeiculo;
    property IdCategoriaVeiculo_IsSet_:boolean read FIdCategoriaVeiculo_IsSet_;
    property ValorPedagioTotal: extended read FValorPedagioTotal write SetValorPedagioTotal;
    property ValorPedagioTotal_IsSet_:boolean read FValorPedagioTotal_IsSet_;
    property ValorPedagioVectio: extended read FValorPedagioVectio write SetValorPedagioVectio;
    property ValorPedagioVectio_IsSet_:boolean read FValorPedagioVectio_IsSet_;
    property ValorPedagioViaFacil: extended read FValorPedagioViaFacil write SetValorPedagioViaFacil;
    property ValorPedagioViaFacil_IsSet_:boolean read FValorPedagioViaFacil_IsSet_;
    property IdRotaCliente: integer read FIdRotaCliente write SetIdRotaCliente;
    property IdRotaCliente_IsSet_:boolean read FIdRotaCliente_IsSet_;
    property NomeRotaCliente: string read FNomeRotaCliente write SetNomeRotaCliente;
    property NomeRotaCliente_IsSet_:boolean read FNomeRotaCliente_IsSet_;
    property DescricaoCategoriaVeiculo: string read FDescricaoCategoriaVeiculo write SetDescricaoCategoriaVeiculo;
    property DescricaoCategoriaVeiculo_IsSet_:boolean read FDescricaoCategoriaVeiculo_IsSet_;
    property DadosInteresseRota: tDadosInteresseRotaResponse read FDadosInteresseRota write SetDadosInteresseRota;
    property DadosInteresseRota_IsSet_:boolean read FDadosInteresseRota_IsSet_;
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
    class function CreateFromXmlString(s: string): tObterCustoRotaRequest;
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
  snObterLogRequisicoesResponse_MensagemRetorno = 'MensagemRetorno';
  snObterLogRequisicoesResponse_Sucesso = 'Sucesso';
  snObterLogRequisicoesResponse_ArquivoZip = 'ArquivoZip';

type
  tObterLogRequisicoesResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FArquivoZip: tbase64Binary; // (E)
    FArquivoZip_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetArquivoZip(value:tbase64Binary);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterLogRequisicoesResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property ArquivoZip: tbase64Binary read FArquivoZip write SetArquivoZip;
    property ArquivoZip_IsSet_:boolean read FArquivoZip_IsSet_;
  end;

const
  snComprarValePedagioAvulsoResponse = 'ComprarValePedagioAvulsoResponse';
  snComprarValePedagioAvulsoResponse_MensagemRetorno = 'MensagemRetorno';
  snComprarValePedagioAvulsoResponse_Sucesso = 'Sucesso';
  snComprarValePedagioAvulsoResponse_IdCompraValePedagio = 'IdCompraValePedagio';

type
  tComprarValePedagioAvulsoResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FIdCompraValePedagio: integer; // (E)
    FIdCompraValePedagio_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetIdCompraValePedagio(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tComprarValePedagioAvulsoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property IdCompraValePedagio: integer read FIdCompraValePedagio write SetIdCompraValePedagio;
    property IdCompraValePedagio_IsSet_:boolean read FIdCompraValePedagio_IsSet_;
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
    class function CreateFromXmlString(s: string): tComprarValePedagioAvulsoRequest;
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
    class function CreateFromXmlString(s: string): tBaseMotoristaRequestResponse;
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
    class function CreateFromXmlString(s: string): tArrayOfBaseMotoristaRequestResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property BaseMotoristaRequestResponse: tManagedStringList read FBaseMotoristaRequestResponse write FBaseMotoristaRequestResponse; // of tBaseMotoristaRequestResponse
  end;

const
  snBuscarMotoristaResponse = 'BuscarMotoristaResponse';
  snBuscarMotoristaResponse_MensagemRetorno = 'MensagemRetorno';
  snBuscarMotoristaResponse_Sucesso = 'Sucesso';
  snBuscarMotoristaResponse_MotoristasAtivos = 'MotoristasAtivos';

type
  tBuscarMotoristaResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FMotoristasAtivos: tArrayOfBaseMotoristaRequestResponse; // (E)
    FMotoristasAtivos_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetMotoristasAtivos(value:tArrayOfBaseMotoristaRequestResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarMotoristaResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property MotoristasAtivos: tArrayOfBaseMotoristaRequestResponse read FMotoristasAtivos write SetMotoristasAtivos;
    property MotoristasAtivos_IsSet_:boolean read FMotoristasAtivos_IsSet_;
  end;

const
  snObterMotoristaResponse = 'ObterMotoristaResponse';
  snObterMotoristaResponse_MensagemRetorno = 'MensagemRetorno';
  snObterMotoristaResponse_Sucesso = 'Sucesso';
  snObterMotoristaResponse_Motorista = 'Motorista';

type
  tObterMotoristaResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FMotorista: tBaseMotoristaRequestResponse; // (E)
    FMotorista_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetMotorista(value:tBaseMotoristaRequestResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterMotoristaResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property Motorista: tBaseMotoristaRequestResponse read FMotorista write SetMotorista;
    property Motorista_IsSet_:boolean read FMotorista_IsSet_;
  end;

const
  snCadastroMotoristaResponse = 'CadastroMotoristaResponse';
  snCadastroMotoristaResponse_MensagemRetorno = 'MensagemRetorno';
  snCadastroMotoristaResponse_Sucesso = 'Sucesso';
  snCadastroMotoristaResponse_CodigoMotorista = 'CodigoMotorista';
  snCadastroMotoristaResponse_DataHoraCadastro = 'DataHoraCadastro';

type
  tCadastroMotoristaResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FCodigoMotorista: integer; // (E)
    FCodigoMotorista_IsSet_: boolean;
    FDataHoraCadastro: tDateTime; // (E)
    FDataHoraCadastro_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetCodigoMotorista(value:integer);
    procedure SetDataHoraCadastro(value:tDateTime);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCadastroMotoristaResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property CodigoMotorista: integer read FCodigoMotorista write SetCodigoMotorista;
    property CodigoMotorista_IsSet_:boolean read FCodigoMotorista_IsSet_;
    property DataHoraCadastro: tDateTime read FDataHoraCadastro write SetDataHoraCadastro;
    property DataHoraCadastro_IsSet_:boolean read FDataHoraCadastro_IsSet_;
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
  snCadastroMotoristaRequest_FlagContaPoupanca = 'FlagContaPoupanca';
  snCadastroMotoristaRequest_VariacaoContaPoupanca = 'VariacaoContaPoupanca';

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
    FFlagContaPoupanca: boolean;
    FVariacaoContaPoupanca: string;
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
    class function CreateFromXmlString(s: string): tCadastroMotoristaRequest;
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
    property FlagContaPoupanca : boolean read FFlagContaPoupanca write FFlagContaPoupanca;
    property VariacaoContaPoupanca : string read FVariacaoContaPoupanca write FVariacaoContaPoupanca;

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
    class function CreateFromXmlString(s: string): tBaseTriagemDocumentoObjetoRequest;
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
    class function CreateFromXmlString(s: string): tArrayOfBaseTriagemDocumentoObjetoRequest;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property BaseTriagemDocumentoObjetoRequest: tManagedStringList read FBaseTriagemDocumentoObjetoRequest write FBaseTriagemDocumentoObjetoRequest; // of tBaseTriagemDocumentoObjetoRequest
  end;

const
  snBuscarTriagemDocumentoObjetoResponse = 'BuscarTriagemDocumentoObjetoResponse';
  snBuscarTriagemDocumentoObjetoResponse_MensagemRetorno = 'MensagemRetorno';
  snBuscarTriagemDocumentoObjetoResponse_Sucesso = 'Sucesso';
  snBuscarTriagemDocumentoObjetoResponse_TriagemDocumentoObjetoAtivos = 'TriagemDocumentoObjetoAtivos';

type
  tBuscarTriagemDocumentoObjetoResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FTriagemDocumentoObjetoAtivos: tArrayOfBaseTriagemDocumentoObjetoRequest; // (E)
    FTriagemDocumentoObjetoAtivos_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetTriagemDocumentoObjetoAtivos(value:tArrayOfBaseTriagemDocumentoObjetoRequest);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarTriagemDocumentoObjetoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property TriagemDocumentoObjetoAtivos: tArrayOfBaseTriagemDocumentoObjetoRequest read FTriagemDocumentoObjetoAtivos write SetTriagemDocumentoObjetoAtivos;
    property TriagemDocumentoObjetoAtivos_IsSet_:boolean read FTriagemDocumentoObjetoAtivos_IsSet_;
  end;

const
  snObterTriagemDocumentoObjetoResponse = 'ObterTriagemDocumentoObjetoResponse';
  snObterTriagemDocumentoObjetoResponse_MensagemRetorno = 'MensagemRetorno';
  snObterTriagemDocumentoObjetoResponse_Sucesso = 'Sucesso';
  snObterTriagemDocumentoObjetoResponse_TriagemDocumentoObjeto = 'TriagemDocumentoObjeto';

type
  tObterTriagemDocumentoObjetoResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FTriagemDocumentoObjeto: tBaseTriagemDocumentoObjetoRequest; // (E)
    FTriagemDocumentoObjeto_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetTriagemDocumentoObjeto(value:tBaseTriagemDocumentoObjetoRequest);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterTriagemDocumentoObjetoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property TriagemDocumentoObjeto: tBaseTriagemDocumentoObjetoRequest read FTriagemDocumentoObjeto write SetTriagemDocumentoObjeto;
    property TriagemDocumentoObjeto_IsSet_:boolean read FTriagemDocumentoObjeto_IsSet_;
  end;

const
  snEmitirContratoOperacaoTransporteResponse = 'EmitirContratoOperacaoTransporteResponse';
  snEmitirContratoOperacaoTransporteResponse_MensagemRetorno = 'MensagemRetorno';
  snEmitirContratoOperacaoTransporteResponse_Sucesso = 'Sucesso';
  snEmitirContratoOperacaoTransporteResponse_ContratoPDF = 'ContratoPDF';
  snEmitirContratoOperacaoTransporteResponse_IdOperacaoTransporte = 'IdOperacaoTransporte';

type
  tEmitirContratoOperacaoTransporteResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FContratoPDF: tbase64Binary; // (E)
    FContratoPDF_IsSet_: boolean;
    FIdOperacaoTransporte: integer; // (E)
    FIdOperacaoTransporte_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetContratoPDF(value:tbase64Binary);
    procedure SetIdOperacaoTransporte(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tEmitirContratoOperacaoTransporteResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property ContratoPDF: tbase64Binary read FContratoPDF write SetContratoPDF;
    property ContratoPDF_IsSet_:boolean read FContratoPDF_IsSet_;
    property IdOperacaoTransporte: integer read FIdOperacaoTransporte write SetIdOperacaoTransporte;
    property IdOperacaoTransporte_IsSet_:boolean read FIdOperacaoTransporte_IsSet_;
  end;

const
  snEmitirDeclaracaoOperacaoTransporteResponse = 'EmitirDeclaracaoOperacaoTransporteResponse';
  snEmitirDeclaracaoOperacaoTransporteResponse_MensagemRetorno = 'MensagemRetorno';
  snEmitirDeclaracaoOperacaoTransporteResponse_Sucesso = 'Sucesso';
  snEmitirDeclaracaoOperacaoTransporteResponse_DeclaracaoPDF = 'DeclaracaoPDF';
  snEmitirDeclaracaoOperacaoTransporteResponse_IdOperacaoTransporte = 'IdOperacaoTransporte';

type
  tEmitirDeclaracaoOperacaoTransporteResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FDeclaracaoPDF: tbase64Binary; // (E)
    FDeclaracaoPDF_IsSet_: boolean;
    FIdOperacaoTransporte: integer; // (E)
    FIdOperacaoTransporte_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetDeclaracaoPDF(value:tbase64Binary);
    procedure SetIdOperacaoTransporte(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tEmitirDeclaracaoOperacaoTransporteResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property DeclaracaoPDF: tbase64Binary read FDeclaracaoPDF write SetDeclaracaoPDF;
    property DeclaracaoPDF_IsSet_:boolean read FDeclaracaoPDF_IsSet_;
    property IdOperacaoTransporte: integer read FIdOperacaoTransporte write SetIdOperacaoTransporte;
    property IdOperacaoTransporte_IsSet_:boolean read FIdOperacaoTransporte_IsSet_;
  end;

const
  snEmitirReciboValePedagioViaFacilResponse = 'EmitirReciboValePedagioViaFacilResponse';
  snEmitirReciboValePedagioViaFacilResponse_MensagemRetorno = 'MensagemRetorno';
  snEmitirReciboValePedagioViaFacilResponse_Sucesso = 'Sucesso';
  snEmitirReciboValePedagioViaFacilResponse_IdOperacaoTransporte = 'IdOperacaoTransporte';
  snEmitirReciboValePedagioViaFacilResponse_ReciboPDF = 'ReciboPDF';

type
  tEmitirReciboValePedagioViaFacilResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FIdOperacaoTransporte: integer; // (E)
    FIdOperacaoTransporte_IsSet_: boolean;
    FReciboPDF: tbase64Binary; // (E)
    FReciboPDF_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetIdOperacaoTransporte(value:integer);
    procedure SetReciboPDF(value:tbase64Binary);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tEmitirReciboValePedagioViaFacilResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property IdOperacaoTransporte: integer read FIdOperacaoTransporte write SetIdOperacaoTransporte;
    property IdOperacaoTransporte_IsSet_:boolean read FIdOperacaoTransporte_IsSet_;
    property ReciboPDF: tbase64Binary read FReciboPDF write SetReciboPDF;
    property ReciboPDF_IsSet_:boolean read FReciboPDF_IsSet_;
  end;

const
  snEmitirReciboValePedagioVectioResponse = 'EmitirReciboValePedagioVectioResponse';
  snEmitirReciboValePedagioVectioResponse_MensagemRetorno = 'MensagemRetorno';
  snEmitirReciboValePedagioVectioResponse_Sucesso = 'Sucesso';
  snEmitirReciboValePedagioVectioResponse_IdOperacaoTransporte = 'IdOperacaoTransporte';
  snEmitirReciboValePedagioVectioResponse_ReciboPDF = 'ReciboPDF';

type
  tEmitirReciboValePedagioVectioResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FIdOperacaoTransporte: integer; // (E)
    FIdOperacaoTransporte_IsSet_: boolean;
    FReciboPDF: tbase64Binary; // (E)
    FReciboPDF_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetIdOperacaoTransporte(value:integer);
    procedure SetReciboPDF(value:tbase64Binary);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tEmitirReciboValePedagioVectioResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property IdOperacaoTransporte: integer read FIdOperacaoTransporte write SetIdOperacaoTransporte;
    property IdOperacaoTransporte_IsSet_:boolean read FIdOperacaoTransporte_IsSet_;
    property ReciboPDF: tbase64Binary read FReciboPDF write SetReciboPDF;
    property ReciboPDF_IsSet_:boolean read FReciboPDF_IsSet_;
  end;

const
  snCobrancaGestoraResponse = 'CobrancaGestoraResponse';
  snCobrancaGestoraResponse_MensagemRetorno = 'MensagemRetorno';
  snCobrancaGestoraResponse_Sucesso = 'Sucesso';
  snCobrancaGestoraResponse_IdCobrancaGestora = 'IdCobrancaGestora';
  snCobrancaGestoraResponse_IdTaxaCalculada = 'IdTaxaCalculada';
  snCobrancaGestoraResponse_IdServicoCalculado = 'IdServicoCalculado';
  snCobrancaGestoraResponse_TipoCobranca = 'TipoCobranca';
  snCobrancaGestoraResponse_ValorConta = 'ValorConta';
  snCobrancaGestoraResponse_ValorDesconto = 'ValorDesconto';
  snCobrancaGestoraResponse_ValorMulta = 'ValorMulta';
  snCobrancaGestoraResponse_ValorJuros = 'ValorJuros';
  snCobrancaGestoraResponse_TaxaJuros = 'TaxaJuros';
  snCobrancaGestoraResponse_ValorCobrado = 'ValorCobrado';
  snCobrancaGestoraResponse_ValorRecebido = 'ValorRecebido';
  snCobrancaGestoraResponse_ValorEmAberto = 'ValorEmAberto';
  snCobrancaGestoraResponse_DataHoraEmissao = 'DataHoraEmissao';
  snCobrancaGestoraResponse_DataVencimento = 'DataVencimento';
  snCobrancaGestoraResponse_DataPagamento = 'DataPagamento';
  snCobrancaGestoraResponse_DiasAtraso = 'DiasAtraso';
  snCobrancaGestoraResponse_DataHoraRegistro = 'DataHoraRegistro';

type
  tCobrancaGestoraResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FIdCobrancaGestora: integer; // (E)
    FIdCobrancaGestora_IsSet_: boolean;
    FIdTaxaCalculada: integer; // (E)
    FIdTaxaCalculada_IsSet_: boolean;
    FIdServicoCalculado: integer; // (E)
    FIdServicoCalculado_IsSet_: boolean;
    FTipoCobranca: string; // (E)
    FTipoCobranca_IsSet_: boolean;
    FValorConta: extended; // (E)
    FValorConta_IsSet_: boolean;
    FValorDesconto: extended; // (E)
    FValorDesconto_IsSet_: boolean;
    FValorMulta: extended; // (E)
    FValorMulta_IsSet_: boolean;
    FValorJuros: extended; // (E)
    FValorJuros_IsSet_: boolean;
    FTaxaJuros: extended; // (E)
    FTaxaJuros_IsSet_: boolean;
    FValorCobrado: extended; // (E)
    FValorCobrado_IsSet_: boolean;
    FValorRecebido: extended; // (E)
    FValorRecebido_IsSet_: boolean;
    FValorEmAberto: extended; // (E)
    FValorEmAberto_IsSet_: boolean;
    FDataHoraEmissao: tDateTime; // (E)
    FDataHoraEmissao_IsSet_: boolean;
    FDataVencimento: tDateTime; // (E)
    FDataVencimento_IsSet_: boolean;
    FDataPagamento: tDateTime; // (E)
    FDataPagamento_IsSet_: boolean;
    FDiasAtraso: integer; // (E)
    FDiasAtraso_IsSet_: boolean;
    FDataHoraRegistro: tDateTime; // (E)
    FDataHoraRegistro_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetIdCobrancaGestora(value:integer);
    procedure SetIdTaxaCalculada(value:integer);
    procedure SetIdServicoCalculado(value:integer);
    procedure SetTipoCobranca(value:string);
    procedure SetValorConta(value:extended);
    procedure SetValorDesconto(value:extended);
    procedure SetValorMulta(value:extended);
    procedure SetValorJuros(value:extended);
    procedure SetTaxaJuros(value:extended);
    procedure SetValorCobrado(value:extended);
    procedure SetValorRecebido(value:extended);
    procedure SetValorEmAberto(value:extended);
    procedure SetDataHoraEmissao(value:tDateTime);
    procedure SetDataVencimento(value:tDateTime);
    procedure SetDataPagamento(value:tDateTime);
    procedure SetDiasAtraso(value:integer);
    procedure SetDataHoraRegistro(value:tDateTime);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCobrancaGestoraResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property IdCobrancaGestora: integer read FIdCobrancaGestora write SetIdCobrancaGestora;
    property IdCobrancaGestora_IsSet_:boolean read FIdCobrancaGestora_IsSet_;
    property IdTaxaCalculada: integer read FIdTaxaCalculada write SetIdTaxaCalculada;
    property IdTaxaCalculada_IsSet_:boolean read FIdTaxaCalculada_IsSet_;
    property IdServicoCalculado: integer read FIdServicoCalculado write SetIdServicoCalculado;
    property IdServicoCalculado_IsSet_:boolean read FIdServicoCalculado_IsSet_;
    property TipoCobranca: string read FTipoCobranca write SetTipoCobranca;
    property TipoCobranca_IsSet_:boolean read FTipoCobranca_IsSet_;
    property ValorConta: extended read FValorConta write SetValorConta;
    property ValorConta_IsSet_:boolean read FValorConta_IsSet_;
    property ValorDesconto: extended read FValorDesconto write SetValorDesconto;
    property ValorDesconto_IsSet_:boolean read FValorDesconto_IsSet_;
    property ValorMulta: extended read FValorMulta write SetValorMulta;
    property ValorMulta_IsSet_:boolean read FValorMulta_IsSet_;
    property ValorJuros: extended read FValorJuros write SetValorJuros;
    property ValorJuros_IsSet_:boolean read FValorJuros_IsSet_;
    property TaxaJuros: extended read FTaxaJuros write SetTaxaJuros;
    property TaxaJuros_IsSet_:boolean read FTaxaJuros_IsSet_;
    property ValorCobrado: extended read FValorCobrado write SetValorCobrado;
    property ValorCobrado_IsSet_:boolean read FValorCobrado_IsSet_;
    property ValorRecebido: extended read FValorRecebido write SetValorRecebido;
    property ValorRecebido_IsSet_:boolean read FValorRecebido_IsSet_;
    property ValorEmAberto: extended read FValorEmAberto write SetValorEmAberto;
    property ValorEmAberto_IsSet_:boolean read FValorEmAberto_IsSet_;
    property DataHoraEmissao: tDateTime read FDataHoraEmissao write SetDataHoraEmissao;
    property DataHoraEmissao_IsSet_:boolean read FDataHoraEmissao_IsSet_;
    property DataVencimento: tDateTime read FDataVencimento write SetDataVencimento;
    property DataVencimento_IsSet_:boolean read FDataVencimento_IsSet_;
    property DataPagamento: tDateTime read FDataPagamento write SetDataPagamento;
    property DataPagamento_IsSet_:boolean read FDataPagamento_IsSet_;
    property DiasAtraso: integer read FDiasAtraso write SetDiasAtraso;
    property DiasAtraso_IsSet_:boolean read FDiasAtraso_IsSet_;
    property DataHoraRegistro: tDateTime read FDataHoraRegistro write SetDataHoraRegistro;
    property DataHoraRegistro_IsSet_:boolean read FDataHoraRegistro_IsSet_;
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
    class function CreateFromXmlString(s: string): tArrayOfCobrancaGestoraResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CobrancaGestoraResponse: tManagedStringList read FCobrancaGestoraResponse write FCobrancaGestoraResponse; // of tCobrancaGestoraResponse
  end;

const
  snBuscarCobrancaGestoraResponse = 'BuscarCobrancaGestoraResponse';
  snBuscarCobrancaGestoraResponse_MensagemRetorno = 'MensagemRetorno';
  snBuscarCobrancaGestoraResponse_Sucesso = 'Sucesso';
  snBuscarCobrancaGestoraResponse_ListaCobrancaGestora = 'ListaCobrancaGestora';

type
  tBuscarCobrancaGestoraResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FListaCobrancaGestora: tArrayOfCobrancaGestoraResponse; // (E)
    FListaCobrancaGestora_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetListaCobrancaGestora(value:tArrayOfCobrancaGestoraResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarCobrancaGestoraResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property ListaCobrancaGestora: tArrayOfCobrancaGestoraResponse read FListaCobrancaGestora write SetListaCobrancaGestora;
    property ListaCobrancaGestora_IsSet_:boolean read FListaCobrancaGestora_IsSet_;
  end;

const
  snContaVirtualMovimentoResponse = 'ContaVirtualMovimentoResponse';
  snContaVirtualMovimentoResponse_MensagemRetorno = 'MensagemRetorno';
  snContaVirtualMovimentoResponse_Sucesso = 'Sucesso';
  snContaVirtualMovimentoResponse_DataHoraMovimento = 'DataHoraMovimento';
  snContaVirtualMovimentoResponse_TipoMovimento = 'TipoMovimento';
  snContaVirtualMovimentoResponse_ValorMovimento = 'ValorMovimento';
  snContaVirtualMovimentoResponse_MotivoMovimento = 'MotivoMovimento';
  snContaVirtualMovimentoResponse_ValorSaldoAtual = 'ValorSaldoAtual';

type
  tContaVirtualMovimentoResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FDataHoraMovimento: tDateTime; // (E)
    FDataHoraMovimento_IsSet_: boolean;
    FTipoMovimento: string; // (E)
    FTipoMovimento_IsSet_: boolean;
    FValorMovimento: extended; // (E)
    FValorMovimento_IsSet_: boolean;
    FMotivoMovimento: string; // (E)
    FMotivoMovimento_IsSet_: boolean;
    FValorSaldoAtual: extended; // (E)
    FValorSaldoAtual_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetDataHoraMovimento(value:tDateTime);
    procedure SetTipoMovimento(value:string);
    procedure SetValorMovimento(value:extended);
    procedure SetMotivoMovimento(value:string);
    procedure SetValorSaldoAtual(value:extended);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tContaVirtualMovimentoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property DataHoraMovimento: tDateTime read FDataHoraMovimento write SetDataHoraMovimento;
    property DataHoraMovimento_IsSet_:boolean read FDataHoraMovimento_IsSet_;
    property TipoMovimento: string read FTipoMovimento write SetTipoMovimento;
    property TipoMovimento_IsSet_:boolean read FTipoMovimento_IsSet_;
    property ValorMovimento: extended read FValorMovimento write SetValorMovimento;
    property ValorMovimento_IsSet_:boolean read FValorMovimento_IsSet_;
    property MotivoMovimento: string read FMotivoMovimento write SetMotivoMovimento;
    property MotivoMovimento_IsSet_:boolean read FMotivoMovimento_IsSet_;
    property ValorSaldoAtual: extended read FValorSaldoAtual write SetValorSaldoAtual;
    property ValorSaldoAtual_IsSet_:boolean read FValorSaldoAtual_IsSet_;
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
    class function CreateFromXmlString(s: string): tArrayOfContaVirtualMovimentoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ContaVirtualMovimentoResponse: tManagedStringList read FContaVirtualMovimentoResponse write FContaVirtualMovimentoResponse; // of tContaVirtualMovimentoResponse
  end;

const
  snExtratoResponse = 'ExtratoResponse';
  snExtratoResponse_MensagemRetorno = 'MensagemRetorno';
  snExtratoResponse_Sucesso = 'Sucesso';
  snExtratoResponse_Movimentos = 'Movimentos';

type
  tExtratoResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FMovimentos: tArrayOfContaVirtualMovimentoResponse; // (E)
    FMovimentos_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetMovimentos(value:tArrayOfContaVirtualMovimentoResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tExtratoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property Movimentos: tArrayOfContaVirtualMovimentoResponse read FMovimentos write SetMovimentos;
    property Movimentos_IsSet_:boolean read FMovimentos_IsSet_;
  end;

const
  snBuscarParametrosComerciaisResponse = 'BuscarParametrosComerciaisResponse';
  snBuscarParametrosComerciaisResponse_MensagemRetorno = 'MensagemRetorno';
  snBuscarParametrosComerciaisResponse_Sucesso = 'Sucesso';
  snBuscarParametrosComerciaisResponse_DiaFechamentoMensal = 'DiaFechamentoMensal';
  snBuscarParametrosComerciaisResponse_DiasParaPagar = 'DiasParaPagar';
  snBuscarParametrosComerciaisResponse_FlagValorFixoFrete = 'FlagValorFixoFrete';
  snBuscarParametrosComerciaisResponse_FlagValorFixoPedagio = 'FlagValorFixoPedagio';
  snBuscarParametrosComerciaisResponse_FlagValorFixoViaFacil = 'FlagValorFixoViaFacil';
  snBuscarParametrosComerciaisResponse_Habilitado = 'Habilitado';
  snBuscarParametrosComerciaisResponse_Isento = 'Isento';
  snBuscarParametrosComerciaisResponse_TaxaFrete = 'TaxaFrete';
  snBuscarParametrosComerciaisResponse_TaxaPedagio = 'TaxaPedagio';
  snBuscarParametrosComerciaisResponse_TaxaViaFacil = 'TaxaViaFacil';
  snBuscarParametrosComerciaisResponse_TrabalhaComCargaAvulsa = 'TrabalhaComCargaAvulsa';
  snBuscarParametrosComerciaisResponse_TrabalhaComValePedagioAvulso = 'TrabalhaComValePedagioAvulso';
  snBuscarParametrosComerciaisResponse_ValorConectividade = 'ValorConectividade';
  snBuscarParametrosComerciaisResponse_ValorInstalacao = 'ValorInstalacao';

type
  tBuscarParametrosComerciaisResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FDiaFechamentoMensal: integer; // (E)
    FDiaFechamentoMensal_IsSet_: boolean;
    FDiasParaPagar: integer; // (E)
    FDiasParaPagar_IsSet_: boolean;
    FFlagValorFixoFrete: boolean; // (E)
    FFlagValorFixoFrete_IsSet_: boolean;
    FFlagValorFixoPedagio: boolean; // (E)
    FFlagValorFixoPedagio_IsSet_: boolean;
    FFlagValorFixoViaFacil: boolean; // (E)
    FFlagValorFixoViaFacil_IsSet_: boolean;
    FHabilitado: boolean; // (E)
    FHabilitado_IsSet_: boolean;
    FIsento: boolean; // (E)
    FIsento_IsSet_: boolean;
    FTaxaFrete: extended; // (E)
    FTaxaFrete_IsSet_: boolean;
    FTaxaPedagio: extended; // (E)
    FTaxaPedagio_IsSet_: boolean;
    FTaxaViaFacil: extended; // (E)
    FTaxaViaFacil_IsSet_: boolean;
    FTrabalhaComCargaAvulsa: boolean; // (E)
    FTrabalhaComCargaAvulsa_IsSet_: boolean;
    FTrabalhaComValePedagioAvulso: boolean; // (E)
    FTrabalhaComValePedagioAvulso_IsSet_: boolean;
    FValorConectividade: extended; // (E)
    FValorConectividade_IsSet_: boolean;
    FValorInstalacao: extended; // (E)
    FValorInstalacao_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetDiaFechamentoMensal(value:integer);
    procedure SetDiasParaPagar(value:integer);
    procedure SetFlagValorFixoFrete(value:boolean);
    procedure SetFlagValorFixoPedagio(value:boolean);
    procedure SetFlagValorFixoViaFacil(value:boolean);
    procedure SetHabilitado(value:boolean);
    procedure SetIsento(value:boolean);
    procedure SetTaxaFrete(value:extended);
    procedure SetTaxaPedagio(value:extended);
    procedure SetTaxaViaFacil(value:extended);
    procedure SetTrabalhaComCargaAvulsa(value:boolean);
    procedure SetTrabalhaComValePedagioAvulso(value:boolean);
    procedure SetValorConectividade(value:extended);
    procedure SetValorInstalacao(value:extended);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarParametrosComerciaisResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property DiaFechamentoMensal: integer read FDiaFechamentoMensal write SetDiaFechamentoMensal;
    property DiaFechamentoMensal_IsSet_:boolean read FDiaFechamentoMensal_IsSet_;
    property DiasParaPagar: integer read FDiasParaPagar write SetDiasParaPagar;
    property DiasParaPagar_IsSet_:boolean read FDiasParaPagar_IsSet_;
    property FlagValorFixoFrete: boolean read FFlagValorFixoFrete write SetFlagValorFixoFrete;
    property FlagValorFixoFrete_IsSet_:boolean read FFlagValorFixoFrete_IsSet_;
    property FlagValorFixoPedagio: boolean read FFlagValorFixoPedagio write SetFlagValorFixoPedagio;
    property FlagValorFixoPedagio_IsSet_:boolean read FFlagValorFixoPedagio_IsSet_;
    property FlagValorFixoViaFacil: boolean read FFlagValorFixoViaFacil write SetFlagValorFixoViaFacil;
    property FlagValorFixoViaFacil_IsSet_:boolean read FFlagValorFixoViaFacil_IsSet_;
    property Habilitado: boolean read FHabilitado write SetHabilitado;
    property Habilitado_IsSet_:boolean read FHabilitado_IsSet_;
    property Isento: boolean read FIsento write SetIsento;
    property Isento_IsSet_:boolean read FIsento_IsSet_;
    property TaxaFrete: extended read FTaxaFrete write SetTaxaFrete;
    property TaxaFrete_IsSet_:boolean read FTaxaFrete_IsSet_;
    property TaxaPedagio: extended read FTaxaPedagio write SetTaxaPedagio;
    property TaxaPedagio_IsSet_:boolean read FTaxaPedagio_IsSet_;
    property TaxaViaFacil: extended read FTaxaViaFacil write SetTaxaViaFacil;
    property TaxaViaFacil_IsSet_:boolean read FTaxaViaFacil_IsSet_;
    property TrabalhaComCargaAvulsa: boolean read FTrabalhaComCargaAvulsa write SetTrabalhaComCargaAvulsa;
    property TrabalhaComCargaAvulsa_IsSet_:boolean read FTrabalhaComCargaAvulsa_IsSet_;
    property TrabalhaComValePedagioAvulso: boolean read FTrabalhaComValePedagioAvulso write SetTrabalhaComValePedagioAvulso;
    property TrabalhaComValePedagioAvulso_IsSet_:boolean read FTrabalhaComValePedagioAvulso_IsSet_;
    property ValorConectividade: extended read FValorConectividade write SetValorConectividade;
    property ValorConectividade_IsSet_:boolean read FValorConectividade_IsSet_;
    property ValorInstalacao: extended read FValorInstalacao write SetValorInstalacao;
    property ValorInstalacao_IsSet_:boolean read FValorInstalacao_IsSet_;
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
    class function CreateFromXmlString(s: string): tSubstituirCartaoDoPortadorRequest;
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
  snProcessarCargaFreteAvulsaResponse_MensagemRetorno = 'MensagemRetorno';
  snProcessarCargaFreteAvulsaResponse_Sucesso = 'Sucesso';
  snProcessarCargaFreteAvulsaResponse_IdTransacaoCartao = 'IdTransacaoCartao';
  snProcessarCargaFreteAvulsaResponse_DataHoraProcessamento = 'DataHoraProcessamento';

type
  tProcessarCargaFreteAvulsaResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FIdTransacaoCartao: integer; // (E)
    FIdTransacaoCartao_IsSet_: boolean;
    FDataHoraProcessamento: tDateTime; // (E)
    FDataHoraProcessamento_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetIdTransacaoCartao(value:integer);
    procedure SetDataHoraProcessamento(value:tDateTime);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tProcessarCargaFreteAvulsaResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property IdTransacaoCartao: integer read FIdTransacaoCartao write SetIdTransacaoCartao;
    property IdTransacaoCartao_IsSet_:boolean read FIdTransacaoCartao_IsSet_;
    property DataHoraProcessamento: tDateTime read FDataHoraProcessamento write SetDataHoraProcessamento;
    property DataHoraProcessamento_IsSet_:boolean read FDataHoraProcessamento_IsSet_;
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
    class function CreateFromXmlString(s: string): tProcessarCargaFreteAvulsaRequest;
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
    class function CreateFromXmlString(s: string): tAssociacaoCartaoTransportadorRequest;
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
  snOperacaoTransporteTriagemRelacionadoResponse = 'OperacaoTransporteTriagemRelacionadoResponse';
  snOperacaoTransporteTriagemRelacionadoResponse_MensagemRetorno = 'MensagemRetorno';
  snOperacaoTransporteTriagemRelacionadoResponse_Sucesso = 'Sucesso';
  snOperacaoTransporteTriagemRelacionadoResponse_ArquivoZip = 'ArquivoZip';
  snOperacaoTransporteTriagemRelacionadoResponse_CaminhoArquivo = 'CaminhoArquivo';
  snOperacaoTransporteTriagemRelacionadoResponse_DataHoraRegistro = 'DataHoraRegistro';
  snOperacaoTransporteTriagemRelacionadoResponse_IdOperacaoTransporteTriagem = 'IdOperacaoTransporteTriagem';
  snOperacaoTransporteTriagemRelacionadoResponse_IdOperacaoTransporteTriagemRelacionado = 'IdOperacaoTransporteTriagemRelacionado';
  snOperacaoTransporteTriagemRelacionadoResponse_Numero = 'Numero';
  snOperacaoTransporteTriagemRelacionadoResponse_Origem = 'Origem';

type
  tOperacaoTransporteTriagemRelacionadoResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FArquivoZip: tbase64Binary; // (E)
    FArquivoZip_IsSet_: boolean;
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
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetArquivoZip(value:tbase64Binary);
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
    class function CreateFromXmlString(s: string): tOperacaoTransporteTriagemRelacionadoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property ArquivoZip: tbase64Binary read FArquivoZip write SetArquivoZip;
    property ArquivoZip_IsSet_:boolean read FArquivoZip_IsSet_;
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
    class function CreateFromXmlString(s: string): tArrayOfOperacaoTransporteTriagemRelacionadoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property OperacaoTransporteTriagemRelacionadoResponse: tManagedStringList read FOperacaoTransporteTriagemRelacionadoResponse write FOperacaoTransporteTriagemRelacionadoResponse; // of tOperacaoTransporteTriagemRelacionadoResponse
  end;

const
  snOperacaoTransporteTriagemResponse = 'OperacaoTransporteTriagemResponse';
  snOperacaoTransporteTriagemResponse_MensagemRetorno = 'MensagemRetorno';
  snOperacaoTransporteTriagemResponse_Sucesso = 'Sucesso';
  snOperacaoTransporteTriagemResponse_DataHoraRegistro = 'DataHoraRegistro';
  snOperacaoTransporteTriagemResponse_DocumentoObjeto = 'DocumentoObjeto';
  snOperacaoTransporteTriagemResponse_ExibeEmTela = 'ExibeEmTela';
  snOperacaoTransporteTriagemResponse_ExigeDocumentoObjetoFisico = 'ExigeDocumentoObjetoFisico';
  snOperacaoTransporteTriagemResponse_ExigeUpload = 'ExigeUpload';
  snOperacaoTransporteTriagemResponse_IdOperacaoTransporte = 'IdOperacaoTransporte';
  snOperacaoTransporteTriagemResponse_IdOperacaoTransporteTriagem = 'IdOperacaoTransporteTriagem';
  snOperacaoTransporteTriagemResponse_IdTriagemDocumentoObjeto = 'IdTriagemDocumentoObjeto';
  snOperacaoTransporteTriagemResponse_NomeDocumentoObjeto = 'NomeDocumentoObjeto';
  snOperacaoTransporteTriagemResponse_Relacionados = 'Relacionados';

type
  tOperacaoTransporteTriagemResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
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
    FIdOperacaoTransporte: integer; // (E)
    FIdOperacaoTransporte_IsSet_: boolean;
    FIdOperacaoTransporteTriagem: integer; // (E)
    FIdOperacaoTransporteTriagem_IsSet_: boolean;
    FIdTriagemDocumentoObjeto: integer; // (E)
    FIdTriagemDocumentoObjeto_IsSet_: boolean;
    FNomeDocumentoObjeto: string; // (E)
    FNomeDocumentoObjeto_IsSet_: boolean;
    FRelacionados: tArrayOfOperacaoTransporteTriagemRelacionadoResponse; // (E)
    FRelacionados_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetDataHoraRegistro(value:tDateTime);
    procedure SetDocumentoObjeto(value:string);
    procedure SetExibeEmTela(value:boolean);
    procedure SetExigeDocumentoObjetoFisico(value:string);
    procedure SetExigeUpload(value:string);
    procedure SetIdOperacaoTransporte(value:integer);
    procedure SetIdOperacaoTransporteTriagem(value:integer);
    procedure SetIdTriagemDocumentoObjeto(value:integer);
    procedure SetNomeDocumentoObjeto(value:string);
    procedure SetRelacionados(value:tArrayOfOperacaoTransporteTriagemRelacionadoResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tOperacaoTransporteTriagemResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
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
    property IdOperacaoTransporte: integer read FIdOperacaoTransporte write SetIdOperacaoTransporte;
    property IdOperacaoTransporte_IsSet_:boolean read FIdOperacaoTransporte_IsSet_;
    property IdOperacaoTransporteTriagem: integer read FIdOperacaoTransporteTriagem write SetIdOperacaoTransporteTriagem;
    property IdOperacaoTransporteTriagem_IsSet_:boolean read FIdOperacaoTransporteTriagem_IsSet_;
    property IdTriagemDocumentoObjeto: integer read FIdTriagemDocumentoObjeto write SetIdTriagemDocumentoObjeto;
    property IdTriagemDocumentoObjeto_IsSet_:boolean read FIdTriagemDocumentoObjeto_IsSet_;
    property NomeDocumentoObjeto: string read FNomeDocumentoObjeto write SetNomeDocumentoObjeto;
    property NomeDocumentoObjeto_IsSet_:boolean read FNomeDocumentoObjeto_IsSet_;
    property Relacionados: tArrayOfOperacaoTransporteTriagemRelacionadoResponse read FRelacionados write SetRelacionados;
    property Relacionados_IsSet_:boolean read FRelacionados_IsSet_;
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
    class function CreateFromXmlString(s: string): tArrayOfOperacaoTransporteTriagemResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property OperacaoTransporteTriagemResponse: tManagedStringList read FOperacaoTransporteTriagemResponse write FOperacaoTransporteTriagemResponse; // of tOperacaoTransporteTriagemResponse
  end;

const
  snConferirDocumentacaoTriagemResponse = 'ConferirDocumentacaoTriagemResponse';
  snConferirDocumentacaoTriagemResponse_MensagemRetorno = 'MensagemRetorno';
  snConferirDocumentacaoTriagemResponse_Sucesso = 'Sucesso';
  snConferirDocumentacaoTriagemResponse_CIOT = 'CIOT';
  snConferirDocumentacaoTriagemResponse_NomeContratado = 'NomeContratado';
  snConferirDocumentacaoTriagemResponse_NomeContratante = 'NomeContratante';
  snConferirDocumentacaoTriagemResponse_CPFCNPJContratado = 'CPFCNPJContratado';
  snConferirDocumentacaoTriagemResponse_CPFCNPJContratante = 'CPFCNPJContratante';
  snConferirDocumentacaoTriagemResponse_NomeMotorista = 'NomeMotorista';
  snConferirDocumentacaoTriagemResponse_CPFMotorista = 'CPFMotorista';
  snConferirDocumentacaoTriagemResponse_Triada = 'Triada';
  snConferirDocumentacaoTriagemResponse_Triagem = 'Triagem';

type
  tConferirDocumentacaoTriagemResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FCIOT: string; // (E)
    FCIOT_IsSet_: boolean;
    FNomeContratado: string; // (E)
    FNomeContratado_IsSet_: boolean;
    FNomeContratante: string; // (E)
    FNomeContratante_IsSet_: boolean;
    FCPFCNPJContratado: string; // (E)
    FCPFCNPJContratado_IsSet_: boolean;
    FCPFCNPJContratante: string; // (E)
    FCPFCNPJContratante_IsSet_: boolean;
    FNomeMotorista: string; // (E)
    FNomeMotorista_IsSet_: boolean;
    FCPFMotorista: int64; // (E)
    FCPFMotorista_IsSet_: boolean;
    FTriada: boolean; // (E)
    FTriada_IsSet_: boolean;
    FTriagem: tArrayOfOperacaoTransporteTriagemResponse; // (E)
    FTriagem_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetCIOT(value:string);
    procedure SetNomeContratado(value:string);
    procedure SetNomeContratante(value:string);
    procedure SetCPFCNPJContratado(value:string);
    procedure SetCPFCNPJContratante(value:string);
    procedure SetNomeMotorista(value:string);
    procedure SetCPFMotorista(value:int64);
    procedure SetTriada(value:boolean);
    procedure SetTriagem(value:tArrayOfOperacaoTransporteTriagemResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tConferirDocumentacaoTriagemResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property CIOT: string read FCIOT write SetCIOT;
    property CIOT_IsSet_:boolean read FCIOT_IsSet_;
    property NomeContratado: string read FNomeContratado write SetNomeContratado;
    property NomeContratado_IsSet_:boolean read FNomeContratado_IsSet_;
    property NomeContratante: string read FNomeContratante write SetNomeContratante;
    property NomeContratante_IsSet_:boolean read FNomeContratante_IsSet_;
    property CPFCNPJContratado: string read FCPFCNPJContratado write SetCPFCNPJContratado;
    property CPFCNPJContratado_IsSet_:boolean read FCPFCNPJContratado_IsSet_;
    property CPFCNPJContratante: string read FCPFCNPJContratante write SetCPFCNPJContratante;
    property CPFCNPJContratante_IsSet_:boolean read FCPFCNPJContratante_IsSet_;
    property NomeMotorista: string read FNomeMotorista write SetNomeMotorista;
    property NomeMotorista_IsSet_:boolean read FNomeMotorista_IsSet_;
    property CPFMotorista: int64 read FCPFMotorista write SetCPFMotorista;
    property CPFMotorista_IsSet_:boolean read FCPFMotorista_IsSet_;
    property Triada: boolean read FTriada write SetTriada;
    property Triada_IsSet_:boolean read FTriada_IsSet_;
    property Triagem: tArrayOfOperacaoTransporteTriagemResponse read FTriagem write SetTriagem;
    property Triagem_IsSet_:boolean read FTriagem_IsSet_;
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
    class function CreateFromXmlString(s: string): tOperacaoTransporteParticipanteReponse;
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
    class function CreateFromXmlString(s: string): tArrayOfOperacaoTransporteParticipanteReponse;
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
    class function CreateFromXmlString(s: string): tOperacaoTransporteVeiculoResponse;
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
    class function CreateFromXmlString(s: string): tArrayOfOperacaoTransporteVeiculoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property OperacaoTransporteVeiculoResponse: tManagedStringList read FOperacaoTransporteVeiculoResponse write FOperacaoTransporteVeiculoResponse; // of tOperacaoTransporteVeiculoResponse
  end;

const
  snOperacaoTransporteParcelasResponse = 'OperacaoTransporteParcelasResponse';
  snOperacaoTransporteParcelasResponse_MensagemRetorno = 'MensagemRetorno';
  snOperacaoTransporteParcelasResponse_Sucesso = 'Sucesso';
  snOperacaoTransporteParcelasResponse_AgenciaDeposito = 'AgenciaDeposito';
  snOperacaoTransporteParcelasResponse_CIOTCompleto = 'CIOTCompleto';
  snOperacaoTransporteParcelasResponse_Cancelada = 'Cancelada';
  snOperacaoTransporteParcelasResponse_CartaoPagamento = 'CartaoPagamento';
  snOperacaoTransporteParcelasResponse_CodigoBanco = 'CodigoBanco';
  snOperacaoTransporteParcelasResponse_ContaDeposito = 'ContaDeposito';
  snOperacaoTransporteParcelasResponse_DataHoraRegistro = 'DataHoraRegistro';
  snOperacaoTransporteParcelasResponse_DataPagamento = 'DataPagamento';
  snOperacaoTransporteParcelasResponse_DataVencimento = 'DataVencimento';
  snOperacaoTransporteParcelasResponse_DescricaoParcela = 'DescricaoParcela';
  snOperacaoTransporteParcelasResponse_DigitoContaDeposito = 'DigitoContaDeposito';
  snOperacaoTransporteParcelasResponse_FormaPagamento = 'FormaPagamento';
  snOperacaoTransporteParcelasResponse_IdOperacaoTransporteParcela = 'IdOperacaoTransporteParcela';
  snOperacaoTransporteParcelasResponse_NumeroParcela = 'NumeroParcela';
  snOperacaoTransporteParcelasResponse_QuantidadeParcelas = 'QuantidadeParcelas';
  snOperacaoTransporteParcelasResponse_StatusParcela = 'StatusParcela';
  snOperacaoTransporteParcelasResponse_Valor = 'Valor';

type
  tOperacaoTransporteParcelasResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FAgenciaDeposito: string; // (E)
    FAgenciaDeposito_IsSet_: boolean;
    FCIOTCompleto: string; // (E)
    FCIOTCompleto_IsSet_: boolean;
    FCancelada: boolean; // (E)
    FCancelada_IsSet_: boolean;
    FCartaoPagamento: string; // (E)
    FCartaoPagamento_IsSet_: boolean;
    FCodigoBanco: string; // (E)
    FCodigoBanco_IsSet_: boolean;
    FContaDeposito: string; // (E)
    FContaDeposito_IsSet_: boolean;
    FDataHoraRegistro: tDateTime; // (E)
    FDataHoraRegistro_IsSet_: boolean;
    FDataPagamento: tDateTime; // (E)
    FDataPagamento_IsSet_: boolean;
    FDataVencimento: tDateTime; // (E)
    FDataVencimento_IsSet_: boolean;
    FDescricaoParcela: string; // (E)
    FDescricaoParcela_IsSet_: boolean;
    FDigitoContaDeposito: string; // (E)
    FDigitoContaDeposito_IsSet_: boolean;
    FFormaPagamento: integer; // (E)
    FFormaPagamento_IsSet_: boolean;
    FIdOperacaoTransporteParcela: integer; // (E)
    FIdOperacaoTransporteParcela_IsSet_: boolean;
    FNumeroParcela: integer; // (E)
    FNumeroParcela_IsSet_: boolean;
    FQuantidadeParcelas: integer; // (E)
    FQuantidadeParcelas_IsSet_: boolean;
    FStatusParcela: integer; // (E)
    FStatusParcela_IsSet_: boolean;
    FValor: extended; // (E)
    FValor_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetAgenciaDeposito(value:string);
    procedure SetCIOTCompleto(value:string);
    procedure SetCancelada(value:boolean);
    procedure SetCartaoPagamento(value:string);
    procedure SetCodigoBanco(value:string);
    procedure SetContaDeposito(value:string);
    procedure SetDataHoraRegistro(value:tDateTime);
    procedure SetDataPagamento(value:tDateTime);
    procedure SetDataVencimento(value:tDateTime);
    procedure SetDescricaoParcela(value:string);
    procedure SetDigitoContaDeposito(value:string);
    procedure SetFormaPagamento(value:integer);
    procedure SetIdOperacaoTransporteParcela(value:integer);
    procedure SetNumeroParcela(value:integer);
    procedure SetQuantidadeParcelas(value:integer);
    procedure SetStatusParcela(value:integer);
    procedure SetValor(value:extended);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tOperacaoTransporteParcelasResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property AgenciaDeposito: string read FAgenciaDeposito write SetAgenciaDeposito;
    property AgenciaDeposito_IsSet_:boolean read FAgenciaDeposito_IsSet_;
    property CIOTCompleto: string read FCIOTCompleto write SetCIOTCompleto;
    property CIOTCompleto_IsSet_:boolean read FCIOTCompleto_IsSet_;
    property Cancelada: boolean read FCancelada write SetCancelada;
    property Cancelada_IsSet_:boolean read FCancelada_IsSet_;
    property CartaoPagamento: string read FCartaoPagamento write SetCartaoPagamento;
    property CartaoPagamento_IsSet_:boolean read FCartaoPagamento_IsSet_;
    property CodigoBanco: string read FCodigoBanco write SetCodigoBanco;
    property CodigoBanco_IsSet_:boolean read FCodigoBanco_IsSet_;
    property ContaDeposito: string read FContaDeposito write SetContaDeposito;
    property ContaDeposito_IsSet_:boolean read FContaDeposito_IsSet_;
    property DataHoraRegistro: tDateTime read FDataHoraRegistro write SetDataHoraRegistro;
    property DataHoraRegistro_IsSet_:boolean read FDataHoraRegistro_IsSet_;
    property DataPagamento: tDateTime read FDataPagamento write SetDataPagamento;
    property DataPagamento_IsSet_:boolean read FDataPagamento_IsSet_;
    property DataVencimento: tDateTime read FDataVencimento write SetDataVencimento;
    property DataVencimento_IsSet_:boolean read FDataVencimento_IsSet_;
    property DescricaoParcela: string read FDescricaoParcela write SetDescricaoParcela;
    property DescricaoParcela_IsSet_:boolean read FDescricaoParcela_IsSet_;
    property DigitoContaDeposito: string read FDigitoContaDeposito write SetDigitoContaDeposito;
    property DigitoContaDeposito_IsSet_:boolean read FDigitoContaDeposito_IsSet_;
    property FormaPagamento: integer read FFormaPagamento write SetFormaPagamento;
    property FormaPagamento_IsSet_:boolean read FFormaPagamento_IsSet_;
    property IdOperacaoTransporteParcela: integer read FIdOperacaoTransporteParcela write SetIdOperacaoTransporteParcela;
    property IdOperacaoTransporteParcela_IsSet_:boolean read FIdOperacaoTransporteParcela_IsSet_;
    property NumeroParcela: integer read FNumeroParcela write SetNumeroParcela;
    property NumeroParcela_IsSet_:boolean read FNumeroParcela_IsSet_;
    property QuantidadeParcelas: integer read FQuantidadeParcelas write SetQuantidadeParcelas;
    property QuantidadeParcelas_IsSet_:boolean read FQuantidadeParcelas_IsSet_;
    property StatusParcela: integer read FStatusParcela write SetStatusParcela;
    property StatusParcela_IsSet_:boolean read FStatusParcela_IsSet_;
    property Valor: extended read FValor write SetValor;
    property Valor_IsSet_:boolean read FValor_IsSet_;
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
    class function CreateFromXmlString(s: string): tArrayOfOperacaoTransporteParcelasResponse;
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
    class function CreateFromXmlString(s: string): tOperacaoTransporteResponse;
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
  snObterOperacaoTransporteResponse = 'ObterOperacaoTransporteResponse';
  snObterOperacaoTransporteResponse_MensagemRetorno = 'MensagemRetorno';
  snObterOperacaoTransporteResponse_Sucesso = 'Sucesso';
  snObterOperacaoTransporteResponse_OperacaoTransporte = 'OperacaoTransporte';

type
  tObterOperacaoTransporteResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FOperacaoTransporte: tOperacaoTransporteResponse; // (E)
    FOperacaoTransporte_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetOperacaoTransporte(value:tOperacaoTransporteResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterOperacaoTransporteResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property OperacaoTransporte: tOperacaoTransporteResponse read FOperacaoTransporte write SetOperacaoTransporte;
    property OperacaoTransporte_IsSet_:boolean read FOperacaoTransporte_IsSet_;
  end;

const
  snBuscaOperacaoTransporteParcelasResponse = 'BuscaOperacaoTransporteParcelasResponse';
  snBuscaOperacaoTransporteParcelasResponse_MensagemRetorno = 'MensagemRetorno';
  snBuscaOperacaoTransporteParcelasResponse_Sucesso = 'Sucesso';
  snBuscaOperacaoTransporteParcelasResponse_OperacaoTransporteParcelas = 'OperacaoTransporteParcelas';

type
  tBuscaOperacaoTransporteParcelasResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FOperacaoTransporteParcelas: tArrayOfOperacaoTransporteParcelasResponse; // (E)
    FOperacaoTransporteParcelas_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetOperacaoTransporteParcelas(value:tArrayOfOperacaoTransporteParcelasResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscaOperacaoTransporteParcelasResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property OperacaoTransporteParcelas: tArrayOfOperacaoTransporteParcelasResponse read FOperacaoTransporteParcelas write SetOperacaoTransporteParcelas;
    property OperacaoTransporteParcelas_IsSet_:boolean read FOperacaoTransporteParcelas_IsSet_;
  end;

const
  snFinalizacaoOperacaoTransporteResponse = 'FinalizacaoOperacaoTransporteResponse';
  snFinalizacaoOperacaoTransporteResponse_MensagemRetorno = 'MensagemRetorno';
  snFinalizacaoOperacaoTransporteResponse_Sucesso = 'Sucesso';
  snFinalizacaoOperacaoTransporteResponse_DataHoraFinalizacao = 'DataHoraFinalizacao';

type
  tFinalizacaoOperacaoTransporteResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FDataHoraFinalizacao: tDateTime; // (E)
    FDataHoraFinalizacao_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetDataHoraFinalizacao(value:tDateTime);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tFinalizacaoOperacaoTransporteResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property DataHoraFinalizacao: tDateTime read FDataHoraFinalizacao write SetDataHoraFinalizacao;
    property DataHoraFinalizacao_IsSet_:boolean read FDataHoraFinalizacao_IsSet_;
  end;

const
  snEncerramentoOperacaoTransporteResponse = 'EncerramentoOperacaoTransporteResponse';
  snEncerramentoOperacaoTransporteResponse_MensagemRetorno = 'MensagemRetorno';
  snEncerramentoOperacaoTransporteResponse_Sucesso = 'Sucesso';
  snEncerramentoOperacaoTransporteResponse_DataEncerramento = 'DataEncerramento';
  snEncerramentoOperacaoTransporteResponse_IdEncerramentoOperacaoTransporte = 'IdEncerramentoOperacaoTransporte';
  snEncerramentoOperacaoTransporteResponse_ObservacaoAvariaContratante = 'ObservacaoAvariaContratante';
  snEncerramentoOperacaoTransporteResponse_ProtocoloEncerramento = 'ProtocoloEncerramento';

type
  tEncerramentoOperacaoTransporteResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FDataEncerramento: tDateTime; // (E)
    FDataEncerramento_IsSet_: boolean;
    FIdEncerramentoOperacaoTransporte: integer; // (E)
    FIdEncerramentoOperacaoTransporte_IsSet_: boolean;
    FObservacaoAvariaContratante: string; // (E)
    FObservacaoAvariaContratante_IsSet_: boolean;
    FProtocoloEncerramento: string; // (E)
    FProtocoloEncerramento_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetDataEncerramento(value:tDateTime);
    procedure SetIdEncerramentoOperacaoTransporte(value:integer);
    procedure SetObservacaoAvariaContratante(value:string);
    procedure SetProtocoloEncerramento(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tEncerramentoOperacaoTransporteResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property DataEncerramento: tDateTime read FDataEncerramento write SetDataEncerramento;
    property DataEncerramento_IsSet_:boolean read FDataEncerramento_IsSet_;
    property IdEncerramentoOperacaoTransporte: integer read FIdEncerramentoOperacaoTransporte write SetIdEncerramentoOperacaoTransporte;
    property IdEncerramentoOperacaoTransporte_IsSet_:boolean read FIdEncerramentoOperacaoTransporte_IsSet_;
    property ObservacaoAvariaContratante: string read FObservacaoAvariaContratante write SetObservacaoAvariaContratante;
    property ObservacaoAvariaContratante_IsSet_:boolean read FObservacaoAvariaContratante_IsSet_;
    property ProtocoloEncerramento: string read FProtocoloEncerramento write SetProtocoloEncerramento;
    property ProtocoloEncerramento_IsSet_:boolean read FProtocoloEncerramento_IsSet_;
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
    class function CreateFromXmlString(s: string): tOperacaoTransporteViagemRequest;
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
    class function CreateFromXmlString(s: string): tArrayOfOperacaoTransporteViagemRequest;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property OperacaoTransporteViagemRequest: tManagedStringList read FOperacaoTransporteViagemRequest write FOperacaoTransporteViagemRequest; // of tOperacaoTransporteViagemRequest
  end;

const
  snRetificacaoOperacaoTransporteResponse = 'RetificacaoOperacaoTransporteResponse';
  snRetificacaoOperacaoTransporteResponse_MensagemRetorno = 'MensagemRetorno';
  snRetificacaoOperacaoTransporteResponse_Sucesso = 'Sucesso';
  snRetificacaoOperacaoTransporteResponse_DataHoraRetificacao = 'DataHoraRetificacao';
  snRetificacaoOperacaoTransporteResponse_IdRetificacaoOperacaoTransporte = 'IdRetificacaoOperacaoTransporte';

type
  tRetificacaoOperacaoTransporteResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FDataHoraRetificacao: tDateTime; // (E)
    FDataHoraRetificacao_IsSet_: boolean;
    FIdRetificacaoOperacaoTransporte: integer; // (E)
    FIdRetificacaoOperacaoTransporte_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetDataHoraRetificacao(value:tDateTime);
    procedure SetIdRetificacaoOperacaoTransporte(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tRetificacaoOperacaoTransporteResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property DataHoraRetificacao: tDateTime read FDataHoraRetificacao write SetDataHoraRetificacao;
    property DataHoraRetificacao_IsSet_:boolean read FDataHoraRetificacao_IsSet_;
    property IdRetificacaoOperacaoTransporte: integer read FIdRetificacaoOperacaoTransporte write SetIdRetificacaoOperacaoTransporte;
    property IdRetificacaoOperacaoTransporte_IsSet_:boolean read FIdRetificacaoOperacaoTransporte_IsSet_;
  end;

const
  snCancelamentoOperacaoTransporteResponse = 'CancelamentoOperacaoTransporteResponse';
  snCancelamentoOperacaoTransporteResponse_MensagemRetorno = 'MensagemRetorno';
  snCancelamentoOperacaoTransporteResponse_Sucesso = 'Sucesso';
  snCancelamentoOperacaoTransporteResponse_DataCancelamento = 'DataCancelamento';
  snCancelamentoOperacaoTransporteResponse_IdCancelamentoOperacaoTransporte = 'IdCancelamentoOperacaoTransporte';
  snCancelamentoOperacaoTransporteResponse_ProtocoloCancelamento = 'ProtocoloCancelamento';

type
  tCancelamentoOperacaoTransporteResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FDataCancelamento: tDateTime; // (E)
    FDataCancelamento_IsSet_: boolean;
    FIdCancelamentoOperacaoTransporte: integer; // (E)
    FIdCancelamentoOperacaoTransporte_IsSet_: boolean;
    FProtocoloCancelamento: string; // (E)
    FProtocoloCancelamento_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetDataCancelamento(value:tDateTime);
    procedure SetIdCancelamentoOperacaoTransporte(value:integer);
    procedure SetProtocoloCancelamento(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCancelamentoOperacaoTransporteResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property DataCancelamento: tDateTime read FDataCancelamento write SetDataCancelamento;
    property DataCancelamento_IsSet_:boolean read FDataCancelamento_IsSet_;
    property IdCancelamentoOperacaoTransporte: integer read FIdCancelamentoOperacaoTransporte write SetIdCancelamentoOperacaoTransporte;
    property IdCancelamentoOperacaoTransporte_IsSet_:boolean read FIdCancelamentoOperacaoTransporte_IsSet_;
    property ProtocoloCancelamento: string read FProtocoloCancelamento write SetProtocoloCancelamento;
    property ProtocoloCancelamento_IsSet_:boolean read FProtocoloCancelamento_IsSet_;
  end;

const
  snRegistroOperacaoTransporteResponse = 'RegistroOperacaoTransporteResponse';
  snRegistroOperacaoTransporteResponse_MensagemRetorno = 'MensagemRetorno';
  snRegistroOperacaoTransporteResponse_Sucesso = 'Sucesso';
  snRegistroOperacaoTransporteResponse_DataHoraRegistro = 'DataHoraRegistro';
  snRegistroOperacaoTransporteResponse_IdOperacaoTransporte = 'IdOperacaoTransporte';
  snRegistroOperacaoTransporteResponse_NumeroCIOT = 'NumeroCIOT';
  snRegistroOperacaoTransporteResponse_ProtocoloCIOT = 'ProtocoloCIOT';

type
  tRegistroOperacaoTransporteResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FDataHoraRegistro: tDateTime; // (E)
    FDataHoraRegistro_IsSet_: boolean;
    FIdOperacaoTransporte: integer; // (E)
    FIdOperacaoTransporte_IsSet_: boolean;
    FNumeroCIOT: string; // (E)
    FNumeroCIOT_IsSet_: boolean;
    FProtocoloCIOT: string; // (E)
    FProtocoloCIOT_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetDataHoraRegistro(value:tDateTime);
    procedure SetIdOperacaoTransporte(value:integer);
    procedure SetNumeroCIOT(value:string);
    procedure SetProtocoloCIOT(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tRegistroOperacaoTransporteResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property DataHoraRegistro: tDateTime read FDataHoraRegistro write SetDataHoraRegistro;
    property DataHoraRegistro_IsSet_:boolean read FDataHoraRegistro_IsSet_;
    property IdOperacaoTransporte: integer read FIdOperacaoTransporte write SetIdOperacaoTransporte;
    property IdOperacaoTransporte_IsSet_:boolean read FIdOperacaoTransporte_IsSet_;
    property NumeroCIOT: string read FNumeroCIOT write SetNumeroCIOT;
    property NumeroCIOT_IsSet_:boolean read FNumeroCIOT_IsSet_;
    property ProtocoloCIOT: string read FProtocoloCIOT write SetProtocoloCIOT;
    property ProtocoloCIOT_IsSet_:boolean read FProtocoloCIOT_IsSet_;
  end;

const
  snCadastroOperacaoTransporteResponse = 'CadastroOperacaoTransporteResponse';
  snCadastroOperacaoTransporteResponse_MensagemRetorno = 'MensagemRetorno';
  snCadastroOperacaoTransporteResponse_Sucesso = 'Sucesso';
  snCadastroOperacaoTransporteResponse_DataHoraCadastro = 'DataHoraCadastro';
  snCadastroOperacaoTransporteResponse_IdOperacaoTransporte = 'IdOperacaoTransporte';

type
  tCadastroOperacaoTransporteResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FDataHoraCadastro: tDateTime; // (E)
    FDataHoraCadastro_IsSet_: boolean;
    FIdOperacaoTransporte: integer; // (E)
    FIdOperacaoTransporte_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetDataHoraCadastro(value:tDateTime);
    procedure SetIdOperacaoTransporte(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCadastroOperacaoTransporteResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property DataHoraCadastro: tDateTime read FDataHoraCadastro write SetDataHoraCadastro;
    property DataHoraCadastro_IsSet_:boolean read FDataHoraCadastro_IsSet_;
    property IdOperacaoTransporte: integer read FIdOperacaoTransporte write SetIdOperacaoTransporte;
    property IdOperacaoTransporte_IsSet_:boolean read FIdOperacaoTransporte_IsSet_;
  end;

const
  snAnulacaoOperacaoTransporteResponse = 'AnulacaoOperacaoTransporteResponse';
  snAnulacaoOperacaoTransporteResponse_MensagemRetorno = 'MensagemRetorno';
  snAnulacaoOperacaoTransporteResponse_Sucesso = 'Sucesso';
  snAnulacaoOperacaoTransporteResponse_DataHoraCadastro = 'DataHoraCadastro';
  snAnulacaoOperacaoTransporteResponse_IdOperacaoTransporte = 'IdOperacaoTransporte';

type
  tAnulacaoOperacaoTransporteResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FDataHoraCadastro: tDateTime; // (E)
    FDataHoraCadastro_IsSet_: boolean;
    FIdOperacaoTransporte: integer; // (E)
    FIdOperacaoTransporte_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetDataHoraCadastro(value:tDateTime);
    procedure SetIdOperacaoTransporte(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAnulacaoOperacaoTransporteResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property DataHoraCadastro: tDateTime read FDataHoraCadastro write SetDataHoraCadastro;
    property DataHoraCadastro_IsSet_:boolean read FDataHoraCadastro_IsSet_;
    property IdOperacaoTransporte: integer read FIdOperacaoTransporte write SetIdOperacaoTransporte;
    property IdOperacaoTransporte_IsSet_:boolean read FIdOperacaoTransporte_IsSet_;
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
    class function CreateFromXmlString(s: string): tAnulacaoOperacaoTransporteRequest;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property IdOperacaoTransporte: integer read FIdOperacaoTransporte write SetIdOperacaoTransporte;
    property IdOperacaoTransporte_IsSet_:boolean read FIdOperacaoTransporte_IsSet_;
  end;

const
  snAtualizarOperacaoResponse = 'AtualizarOperacaoResponse';
  snAtualizarOperacaoResponse_MensagemRetorno = 'MensagemRetorno';
  snAtualizarOperacaoResponse_Sucesso = 'Sucesso';
  snAtualizarOperacaoResponse_DataHoraAtualizacao = 'DataHoraAtualizacao';
  snAtualizarOperacaoResponse_IdOperacaoTransporte = 'IdOperacaoTransporte';

type
  tAtualizarOperacaoResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FDataHoraAtualizacao: tDateTime; // (E)
    FDataHoraAtualizacao_IsSet_: boolean;
    FIdOperacaoTransporte: integer; // (E)
    FIdOperacaoTransporte_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetDataHoraAtualizacao(value:tDateTime);
    procedure SetIdOperacaoTransporte(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAtualizarOperacaoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property DataHoraAtualizacao: tDateTime read FDataHoraAtualizacao write SetDataHoraAtualizacao;
    property DataHoraAtualizacao_IsSet_:boolean read FDataHoraAtualizacao_IsSet_;
    property IdOperacaoTransporte: integer read FIdOperacaoTransporte write SetIdOperacaoTransporte;
    property IdOperacaoTransporte_IsSet_:boolean read FIdOperacaoTransporte_IsSet_;
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
    class function CreateFromXmlString(s: string): tOperacaoTransporteTriagemRelacionadoRequest;
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
    class function CreateFromXmlString(s: string): tArrayOfOperacaoTransporteTriagemRelacionadoRequest;
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
    class function CreateFromXmlString(s: string): tOperacaoTransporteTriagemRequest;
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
    class function CreateFromXmlString(s: string): tArrayOfOperacaoTransporteTriagemRequest;
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
    class function CreateFromXmlString(s: string): tOperacaoTransporteParticipanteRequest;
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
    class function CreateFromXmlString(s: string): tArrayOfOperacaoTransporteParticipanteRequest;
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
    class function CreateFromXmlString(s: string): tOperacaoTransporteVeiculoRequest;
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
    class function CreateFromXmlString(s: string): tArrayOfOperacaoTransporteVeiculoRequest;
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
    class function CreateFromXmlString(s: string): tRetificacaoPlacasOperacaoTransporteRequest;
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
    class function CreateFromXmlString(s: string): tOperacaoTransporteParcelaRequest;
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
    class function CreateFromXmlString(s: string): tArrayOfOperacaoTransporteParcelaRequest;
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
    class function CreateFromXmlString(s: string): tEncerramentoOperacaoTransporteRequest;
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
    class function CreateFromXmlString(s: string): tRetificacaoOperacaoTransporteRequest;
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
  snAtualizarOperacaoRequest = 'AtualizarOperacaoRequest';
  snAtualizarOperacaoRequest_CodigoCentroDeCusto = 'CodigoCentroDeCusto';
  snAtualizarOperacaoRequest_NCM = 'NCM';
  snAtualizarOperacaoRequest_ProprietarioCarga = 'ProprietarioCarga';
  snAtualizarOperacaoRequest_PesoCarga = 'PesoCarga';
  snAtualizarOperacaoRequest_TipoOperacao = 'TipoOperacao';
  snAtualizarOperacaoRequest_MunicipioOrigemCodigoIBGE = 'MunicipioOrigemCodigoIBGE';
  snAtualizarOperacaoRequest_MunicipioDestinoCodigoIBGE = 'MunicipioDestinoCodigoIBGE';
  snAtualizarOperacaoRequest_DataHoraInicio = 'DataHoraInicio';
  snAtualizarOperacaoRequest_DataHoraTermino = 'DataHoraTermino';
  snAtualizarOperacaoRequest_DataHoraInicioCadastro = 'DataHoraInicioCadastro';
  snAtualizarOperacaoRequest_DataHoraFimCadastro = 'DataHoraFimCadastro';
  snAtualizarOperacaoRequest_CPFCNPJContratado = 'CPFCNPJContratado';
  snAtualizarOperacaoRequest_ValorFrete = 'ValorFrete';
  snAtualizarOperacaoRequest_ValorCombustivel = 'ValorCombustivel';
  snAtualizarOperacaoRequest_ValorPedagio = 'ValorPedagio';
  snAtualizarOperacaoRequest_ValorDespesas = 'ValorDespesas';
  snAtualizarOperacaoRequest_ValorImpostoSestSenat = 'ValorImpostoSestSenat';
  snAtualizarOperacaoRequest_ValorImpostoIRRF = 'ValorImpostoIRRF';
  snAtualizarOperacaoRequest_ValorImpostoINSS = 'ValorImpostoINSS';
  snAtualizarOperacaoRequest_ValorImpostoIcmsIssqn = 'ValorImpostoIcmsIssqn';
  snAtualizarOperacaoRequest_ParcelaUnica = 'ParcelaUnica';
  snAtualizarOperacaoRequest_ModoCompraValePedagio = 'ModoCompraValePedagio';
  snAtualizarOperacaoRequest_CategoriaVeiculo = 'CategoriaVeiculo';
  snAtualizarOperacaoRequest_NomeMotorista = 'NomeMotorista';
  snAtualizarOperacaoRequest_CPFMotorista = 'CPFMotorista';
  snAtualizarOperacaoRequest_RNTRCMotorista = 'RNTRCMotorista';
  snAtualizarOperacaoRequest_Quitacao = 'Quitacao';
  snAtualizarOperacaoRequest_ItemFinanceiro = 'ItemFinanceiro';
  snAtualizarOperacaoRequest_Parcelas = 'Parcelas';
  snAtualizarOperacaoRequest_Veiculos = 'Veiculos';
  snAtualizarOperacaoRequest_Participantes = 'Participantes';
  snAtualizarOperacaoRequest_Triagem = 'Triagem';
  snAtualizarOperacaoRequest_CodigoOperacao = 'CodigoOperacao';

type
  tAtualizarOperacaoRequest = class
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
    FCodigoOperacao: integer; // (E)
    FCodigoOperacao_IsSet_: boolean;
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
    procedure SetCodigoOperacao(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAtualizarOperacaoRequest;
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
    property CodigoOperacao: integer read FCodigoOperacao write SetCodigoOperacao;
    property CodigoOperacao_IsSet_:boolean read FCodigoOperacao_IsSet_;
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
    class function CreateFromXmlString(s: string): tOperacaoTransporteRequest;
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
  snSituacaoCadastroTransportadorAnttResponse = 'SituacaoCadastroTransportadorAnttResponse';
  snSituacaoCadastroTransportadorAnttResponse_MensagemRetorno = 'MensagemRetorno';
  snSituacaoCadastroTransportadorAnttResponse_Sucesso = 'Sucesso';
  snSituacaoCadastroTransportadorAnttResponse_CpfCnpjTransportador = 'CpfCnpjTransportador';
  snSituacaoCadastroTransportadorAnttResponse_DataValidadeRNTRC = 'DataValidadeRNTRC';
  snSituacaoCadastroTransportadorAnttResponse_EquiparadoTAC = 'EquiparadoTAC';
  snSituacaoCadastroTransportadorAnttResponse_NomeRazaoSocialTransportador = 'NomeRazaoSocialTransportador';
  snSituacaoCadastroTransportadorAnttResponse_RNTRCAtivo = 'RNTRCAtivo';
  snSituacaoCadastroTransportadorAnttResponse_RNTRCTransportador = 'RNTRCTransportador';

type
  tSituacaoCadastroTransportadorAnttResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FCpfCnpjTransportador: string; // (E)
    FCpfCnpjTransportador_IsSet_: boolean;
    FDataValidadeRNTRC: tDateTime; // (E)
    FDataValidadeRNTRC_IsSet_: boolean;
    FEquiparadoTAC: boolean; // (E)
    FEquiparadoTAC_IsSet_: boolean;
    FNomeRazaoSocialTransportador: string; // (E)
    FNomeRazaoSocialTransportador_IsSet_: boolean;
    FRNTRCAtivo: boolean; // (E)
    FRNTRCAtivo_IsSet_: boolean;
    FRNTRCTransportador: string; // (E)
    FRNTRCTransportador_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetCpfCnpjTransportador(value:string);
    procedure SetDataValidadeRNTRC(value:tDateTime);
    procedure SetEquiparadoTAC(value:boolean);
    procedure SetNomeRazaoSocialTransportador(value:string);
    procedure SetRNTRCAtivo(value:boolean);
    procedure SetRNTRCTransportador(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tSituacaoCadastroTransportadorAnttResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property CpfCnpjTransportador: string read FCpfCnpjTransportador write SetCpfCnpjTransportador;
    property CpfCnpjTransportador_IsSet_:boolean read FCpfCnpjTransportador_IsSet_;
    property DataValidadeRNTRC: tDateTime read FDataValidadeRNTRC write SetDataValidadeRNTRC;
    property DataValidadeRNTRC_IsSet_:boolean read FDataValidadeRNTRC_IsSet_;
    property EquiparadoTAC: boolean read FEquiparadoTAC write SetEquiparadoTAC;
    property EquiparadoTAC_IsSet_:boolean read FEquiparadoTAC_IsSet_;
    property NomeRazaoSocialTransportador: string read FNomeRazaoSocialTransportador write SetNomeRazaoSocialTransportador;
    property NomeRazaoSocialTransportador_IsSet_:boolean read FNomeRazaoSocialTransportador_IsSet_;
    property RNTRCAtivo: boolean read FRNTRCAtivo write SetRNTRCAtivo;
    property RNTRCAtivo_IsSet_:boolean read FRNTRCAtivo_IsSet_;
    property RNTRCTransportador: string read FRNTRCTransportador write SetRNTRCTransportador;
    property RNTRCTransportador_IsSet_:boolean read FRNTRCTransportador_IsSet_;
  end;

const
  snCadastroEquiparadoResponse = 'CadastroEquiparadoResponse';
  snCadastroEquiparadoResponse_MensagemRetorno = 'MensagemRetorno';
  snCadastroEquiparadoResponse_Sucesso = 'Sucesso';
  snCadastroEquiparadoResponse_CodigoEquiparado = 'CodigoEquiparado';
  snCadastroEquiparadoResponse_DataHoraCadastro = 'DataHoraCadastro';

type
  tCadastroEquiparadoResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FCodigoEquiparado: integer; // (E)
    FCodigoEquiparado_IsSet_: boolean;
    FDataHoraCadastro: tDateTime; // (E)
    FDataHoraCadastro_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetCodigoEquiparado(value:integer);
    procedure SetDataHoraCadastro(value:tDateTime);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCadastroEquiparadoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property CodigoEquiparado: integer read FCodigoEquiparado write SetCodigoEquiparado;
    property CodigoEquiparado_IsSet_:boolean read FCodigoEquiparado_IsSet_;
    property DataHoraCadastro: tDateTime read FDataHoraCadastro write SetDataHoraCadastro;
    property DataHoraCadastro_IsSet_:boolean read FDataHoraCadastro_IsSet_;
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
    class function CreateFromXmlString(s: string): tCadastroEquiparadoRequest;
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
  snCadastroAutonomoResponse_MensagemRetorno = 'MensagemRetorno';
  snCadastroAutonomoResponse_Sucesso = 'Sucesso';
  snCadastroAutonomoResponse_CodigoAutonomo = 'CodigoAutonomo';
  snCadastroAutonomoResponse_DataHoraCadastro = 'DataHoraCadastro';

type
  tCadastroAutonomoResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FCodigoAutonomo: integer; // (E)
    FCodigoAutonomo_IsSet_: boolean;
    FDataHoraCadastro: tDateTime; // (E)
    FDataHoraCadastro_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetCodigoAutonomo(value:integer);
    procedure SetDataHoraCadastro(value:tDateTime);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCadastroAutonomoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property CodigoAutonomo: integer read FCodigoAutonomo write SetCodigoAutonomo;
    property CodigoAutonomo_IsSet_:boolean read FCodigoAutonomo_IsSet_;
    property DataHoraCadastro: tDateTime read FDataHoraCadastro write SetDataHoraCadastro;
    property DataHoraCadastro_IsSet_:boolean read FDataHoraCadastro_IsSet_;
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
    class function CreateFromXmlString(s: string): tCadastroAutonomoRequest;
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
    class function CreateFromXmlString(s: string): tBaseParticipanteRequestResponse;
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
    class function CreateFromXmlString(s: string): tArrayOfBaseParticipanteRequestResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property BaseParticipanteRequestResponse: tManagedStringList read FBaseParticipanteRequestResponse write FBaseParticipanteRequestResponse; // of tBaseParticipanteRequestResponse
  end;

const
  snBuscaParticipantesResponse = 'BuscaParticipantesResponse';
  snBuscaParticipantesResponse_MensagemRetorno = 'MensagemRetorno';
  snBuscaParticipantesResponse_Sucesso = 'Sucesso';
  snBuscaParticipantesResponse_ParticipantesAtivos = 'ParticipantesAtivos';

type
  tBuscaParticipantesResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FParticipantesAtivos: tArrayOfBaseParticipanteRequestResponse; // (E)
    FParticipantesAtivos_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetParticipantesAtivos(value:tArrayOfBaseParticipanteRequestResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscaParticipantesResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property ParticipantesAtivos: tArrayOfBaseParticipanteRequestResponse read FParticipantesAtivos write SetParticipantesAtivos;
    property ParticipantesAtivos_IsSet_:boolean read FParticipantesAtivos_IsSet_;
  end;

const
  snObterParticipanteResponse = 'ObterParticipanteResponse';
  snObterParticipanteResponse_MensagemRetorno = 'MensagemRetorno';
  snObterParticipanteResponse_Sucesso = 'Sucesso';
  snObterParticipanteResponse_Participante = 'Participante';

type
  tObterParticipanteResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FParticipante: tBaseParticipanteRequestResponse; // (E)
    FParticipante_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetParticipante(value:tBaseParticipanteRequestResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterParticipanteResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property Participante: tBaseParticipanteRequestResponse read FParticipante write SetParticipante;
    property Participante_IsSet_:boolean read FParticipante_IsSet_;
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
    class function CreateFromXmlString(s: string): tBaseResponse;
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
    class function CreateFromXmlString(s: string): tBaseCentroDeCustoRequestResponse;
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
    class function CreateFromXmlString(s: string): tArrayOfBaseCentroDeCustoRequestResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property BaseCentroDeCustoRequestResponse: tManagedStringList read FBaseCentroDeCustoRequestResponse write FBaseCentroDeCustoRequestResponse; // of tBaseCentroDeCustoRequestResponse
  end;

const
  snBuscaCentrosDeCustosResponse = 'BuscaCentrosDeCustosResponse';
  snBuscaCentrosDeCustosResponse_MensagemRetorno = 'MensagemRetorno';
  snBuscaCentrosDeCustosResponse_Sucesso = 'Sucesso';
  snBuscaCentrosDeCustosResponse_CentroDeCustosAtivos = 'CentroDeCustosAtivos';

type
  tBuscaCentrosDeCustosResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FCentroDeCustosAtivos: tArrayOfBaseCentroDeCustoRequestResponse; // (E)
    FCentroDeCustosAtivos_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetCentroDeCustosAtivos(value:tArrayOfBaseCentroDeCustoRequestResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscaCentrosDeCustosResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property CentroDeCustosAtivos: tArrayOfBaseCentroDeCustoRequestResponse read FCentroDeCustosAtivos write SetCentroDeCustosAtivos;
    property CentroDeCustosAtivos_IsSet_:boolean read FCentroDeCustosAtivos_IsSet_;
  end;

const
  snObterCentroDeCustoResponse = 'ObterCentroDeCustoResponse';
  snObterCentroDeCustoResponse_MensagemRetorno = 'MensagemRetorno';
  snObterCentroDeCustoResponse_Sucesso = 'Sucesso';
  snObterCentroDeCustoResponse_CentroDeCusto = 'CentroDeCusto';

type
  tObterCentroDeCustoResponse = class
  private
    F_NameSpaceAlias: string;
    FMensagemRetorno: string; // (E)
    FMensagemRetorno_IsSet_: boolean;
    FSucesso: boolean; // (E)
    FSucesso_IsSet_: boolean;
    FCentroDeCusto: tBaseCentroDeCustoRequestResponse; // (E)
    FCentroDeCusto_IsSet_: boolean;
    procedure SetMensagemRetorno(value:string);
    procedure SetSucesso(value:boolean);
    procedure SetCentroDeCusto(value:tBaseCentroDeCustoRequestResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterCentroDeCustoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property MensagemRetorno: string read FMensagemRetorno write SetMensagemRetorno;
    property MensagemRetorno_IsSet_:boolean read FMensagemRetorno_IsSet_;
    property Sucesso: boolean read FSucesso write SetSucesso;
    property Sucesso_IsSet_:boolean read FSucesso_IsSet_;
    property CentroDeCusto: tBaseCentroDeCustoRequestResponse read FCentroDeCusto write SetCentroDeCusto;
    property CentroDeCusto_IsSet_:boolean read FCentroDeCusto_IsSet_;
  end;

implementation
uses
  SysUtils,
  mylib;

const
  thisNamespaceURI = 'http://schemas.datacontract.org/2004/07/TARGET.VectioFrete.Application.WCF.Contracts.External';
  defNamespaceAlias = 'tar'; // tns

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

class function tDadosInteresseRotaResponse.CreateFromXmlString(s: string): tDadosInteresseRotaResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tDadosInteresseRotaResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tDadosInteresseRotaResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snDadosInteresseRotaResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snDadosInteresseRotaResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snDadosInteresseRotaResponse_IdDestino) then
      IdDestino := StrToIntDef(xn.text, 0)
    else if (sn = snDadosInteresseRotaResponse_IdOrigem) then
      IdOrigem := StrToIntDef(xn.text, 0)
    else if (sn = snDadosInteresseRotaResponse_NomeDestino) then
      NomeDestino :=  xn.text // string
    else if (sn = snDadosInteresseRotaResponse_NomeOrigem) then
      NomeOrigem :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tDadosInteresseRotaResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tDadosInteresseRotaResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tDadosInteresseRotaResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tDadosInteresseRotaResponse.SetIdDestino(value:integer);
begin
  FIdDestino := value;
  FIdDestino_IsSet_ := true;
end;

procedure tDadosInteresseRotaResponse.SetIdOrigem(value:integer);
begin
  FIdOrigem := value;
  FIdOrigem_IsSet_ := true;
end;

procedure tDadosInteresseRotaResponse.SetNomeDestino(value:string);
begin
  FNomeDestino := value;
  FNomeDestino_IsSet_ := true;
end;

procedure tDadosInteresseRotaResponse.SetNomeOrigem(value:string);
begin
  FNomeOrigem := value;
  FNomeOrigem_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosInteresseRotaResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosInteresseRotaResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if IdDestino_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosInteresseRotaResponse_IdDestino));
    xn.text := IntToStr(FIdDestino);
  end;
  if IdOrigem_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosInteresseRotaResponse_IdOrigem));
    xn.text := IntToStr(FIdOrigem);
  end;
  if NomeDestino_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosInteresseRotaResponse_NomeDestino));
    xn.text := FNomeDestino;
  end;
  if NomeOrigem_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosInteresseRotaResponse_NomeOrigem));
    xn.text := FNomeOrigem;
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

class function tConsultaRotaMapLinkPedagiosResponse.CreateFromXmlString(s: string): tConsultaRotaMapLinkPedagiosResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tConsultaRotaMapLinkPedagiosResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tConsultaRotaMapLinkPedagiosResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snConsultaRotaMapLinkPedagiosResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snConsultaRotaMapLinkPedagiosResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snConsultaRotaMapLinkPedagiosResponse_IdPedagio) then
      IdPedagio := StrToIntDef(xn.text, 0)
    else if (sn = snConsultaRotaMapLinkPedagiosResponse_IdFormaPagamento) then
      IdFormaPagamento := StrToIntDef(xn.text, 0)
    else if (sn = snConsultaRotaMapLinkPedagiosResponse_Valor) then
      Valor := DefStrToFloat(xn.text, 0)
    else if (sn = snConsultaRotaMapLinkPedagiosResponse_Nome) then
      Nome :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tConsultaRotaMapLinkPedagiosResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tConsultaRotaMapLinkPedagiosResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tConsultaRotaMapLinkPedagiosResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tConsultaRotaMapLinkPedagiosResponse.SetIdPedagio(value:integer);
begin
  FIdPedagio := value;
  FIdPedagio_IsSet_ := true;
end;

procedure tConsultaRotaMapLinkPedagiosResponse.SetIdFormaPagamento(value:integer);
begin
  FIdFormaPagamento := value;
  FIdFormaPagamento_IsSet_ := true;
end;

procedure tConsultaRotaMapLinkPedagiosResponse.SetValor(value:extended);
begin
  FValor := value;
  FValor_IsSet_ := true;
end;

procedure tConsultaRotaMapLinkPedagiosResponse.SetNome(value:string);
begin
  FNome := value;
  FNome_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConsultaRotaMapLinkPedagiosResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConsultaRotaMapLinkPedagiosResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if IdPedagio_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConsultaRotaMapLinkPedagiosResponse_IdPedagio));
    xn.text := IntToStr(FIdPedagio);
  end;
  if IdFormaPagamento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConsultaRotaMapLinkPedagiosResponse_IdFormaPagamento));
    xn.text := IntToStr(FIdFormaPagamento);
  end;
  if Valor_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConsultaRotaMapLinkPedagiosResponse_Valor));
    xn.text := MyFloatToStr(FValor);
  end;
  if Nome_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConsultaRotaMapLinkPedagiosResponse_Nome));
    xn.text := FNome;
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

class function tArrayOfConsultaRotaMapLinkPedagiosResponse.CreateFromXmlString(s: string): tArrayOfConsultaRotaMapLinkPedagiosResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tArrayOfConsultaRotaMapLinkPedagiosResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

class function tConsultaRotaMapLinkParadaResponse.CreateFromXmlString(s: string): tConsultaRotaMapLinkParadaResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tConsultaRotaMapLinkParadaResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tConsultaRotaMapLinkParadaResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snConsultaRotaMapLinkParadaResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snConsultaRotaMapLinkParadaResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snConsultaRotaMapLinkParadaResponse_Descricao) then
      Descricao :=  xn.text // string
    else if (sn = snConsultaRotaMapLinkParadaResponse_PontoX) then
      PontoX := DefStrToFloat(xn.text, 0)
    else if (sn = snConsultaRotaMapLinkParadaResponse_PontoY) then
      PontoY := DefStrToFloat(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tConsultaRotaMapLinkParadaResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tConsultaRotaMapLinkParadaResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tConsultaRotaMapLinkParadaResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tConsultaRotaMapLinkParadaResponse.SetDescricao(value:string);
begin
  FDescricao := value;
  FDescricao_IsSet_ := true;
end;

procedure tConsultaRotaMapLinkParadaResponse.SetPontoX(value:extended);
begin
  FPontoX := value;
  FPontoX_IsSet_ := true;
end;

procedure tConsultaRotaMapLinkParadaResponse.SetPontoY(value:extended);
begin
  FPontoY := value;
  FPontoY_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConsultaRotaMapLinkParadaResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConsultaRotaMapLinkParadaResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if Descricao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConsultaRotaMapLinkParadaResponse_Descricao));
    xn.text := FDescricao;
  end;
  if PontoX_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConsultaRotaMapLinkParadaResponse_PontoX));
    xn.text := MyFloatToStr(FPontoX);
  end;
  if PontoY_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConsultaRotaMapLinkParadaResponse_PontoY));
    xn.text := MyFloatToStr(FPontoY);
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

class function tArrayOfConsultaRotaMapLinkParadaResponse.CreateFromXmlString(s: string): tArrayOfConsultaRotaMapLinkParadaResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tArrayOfConsultaRotaMapLinkParadaResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

class function tObterCustoRotaResponse.CreateFromXmlString(s: string): tObterCustoRotaResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterCustoRotaResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterCustoRotaResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterCustoRotaResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snObterCustoRotaResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snObterCustoRotaResponse_Paradas) then
      FParadas := tArrayOfConsultaRotaMapLinkParadaResponse.Create(xn)
    else if (sn = snObterCustoRotaResponse_Pedagios) then
      FPedagios := tArrayOfConsultaRotaMapLinkPedagiosResponse.Create(xn)
    else if (sn = snObterCustoRotaResponse_Otimizada) then
      Otimizada := (xn.text = 'true')
    else if (sn = snObterCustoRotaResponse_Tipo) then
      Tipo := StrToIntDef(xn.text, 0)
    else if (sn = snObterCustoRotaResponse_IdCategoriaVeiculo) then
      IdCategoriaVeiculo := StrToIntDef(xn.text, 0)
    else if (sn = snObterCustoRotaResponse_ValorPedagioTotal) then
      ValorPedagioTotal := DefStrToFloat(xn.text, 0)
    else if (sn = snObterCustoRotaResponse_ValorPedagioVectio) then
      ValorPedagioVectio := DefStrToFloat(xn.text, 0)
    else if (sn = snObterCustoRotaResponse_ValorPedagioViaFacil) then
      ValorPedagioViaFacil := DefStrToFloat(xn.text, 0)
    else if (sn = snObterCustoRotaResponse_IdRotaCliente) then
      IdRotaCliente := StrToIntDef(xn.text, 0)
    else if (sn = snObterCustoRotaResponse_NomeRotaCliente) then
      NomeRotaCliente :=  xn.text // string
    else if (sn = snObterCustoRotaResponse_DescricaoCategoriaVeiculo) then
      DescricaoCategoriaVeiculo :=  xn.text // string
    else if (sn = snObterCustoRotaResponse_DadosInteresseRota) then
      FDadosInteresseRota := tDadosInteresseRotaResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterCustoRotaResponse.Destroy;
begin
  if assigned(FParadas) then  FParadas.free;
  if assigned(FPedagios) then  FPedagios.free;
  if assigned(FDadosInteresseRota) then  FDadosInteresseRota.free;
  inherited;
end; // destructor ...

procedure tObterCustoRotaResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tObterCustoRotaResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tObterCustoRotaResponse.SetParadas(value:tArrayOfConsultaRotaMapLinkParadaResponse);
begin
  FParadas := value;
  FParadas_IsSet_ := true;
end;

procedure tObterCustoRotaResponse.SetPedagios(value:tArrayOfConsultaRotaMapLinkPedagiosResponse);
begin
  FPedagios := value;
  FPedagios_IsSet_ := true;
end;

procedure tObterCustoRotaResponse.SetOtimizada(value:boolean);
begin
  FOtimizada := value;
  FOtimizada_IsSet_ := true;
end;

procedure tObterCustoRotaResponse.SetTipo(value:integer);
begin
  FTipo := value;
  FTipo_IsSet_ := true;
end;

procedure tObterCustoRotaResponse.SetIdCategoriaVeiculo(value:integer);
begin
  FIdCategoriaVeiculo := value;
  FIdCategoriaVeiculo_IsSet_ := true;
end;

procedure tObterCustoRotaResponse.SetValorPedagioTotal(value:extended);
begin
  FValorPedagioTotal := value;
  FValorPedagioTotal_IsSet_ := true;
end;

procedure tObterCustoRotaResponse.SetValorPedagioVectio(value:extended);
begin
  FValorPedagioVectio := value;
  FValorPedagioVectio_IsSet_ := true;
end;

procedure tObterCustoRotaResponse.SetValorPedagioViaFacil(value:extended);
begin
  FValorPedagioViaFacil := value;
  FValorPedagioViaFacil_IsSet_ := true;
end;

procedure tObterCustoRotaResponse.SetIdRotaCliente(value:integer);
begin
  FIdRotaCliente := value;
  FIdRotaCliente_IsSet_ := true;
end;

procedure tObterCustoRotaResponse.SetNomeRotaCliente(value:string);
begin
  FNomeRotaCliente := value;
  FNomeRotaCliente_IsSet_ := true;
end;

procedure tObterCustoRotaResponse.SetDescricaoCategoriaVeiculo(value:string);
begin
  FDescricaoCategoriaVeiculo := value;
  FDescricaoCategoriaVeiculo_IsSet_ := true;
end;

procedure tObterCustoRotaResponse.SetDadosInteresseRota(value:tDadosInteresseRotaResponse);
begin
  FDadosInteresseRota := value;
  FDadosInteresseRota_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterCustoRotaResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterCustoRotaResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if Assigned(FParadas) then
  begin
    xn := aNode.addChildByName(snObterCustoRotaResponse_Paradas);
    FParadas.Save(xn);
  end;
  if Assigned(FPedagios) then
  begin
    xn := aNode.addChildByName(snObterCustoRotaResponse_Pedagios);
    FPedagios.Save(xn);
  end;
  if Otimizada_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterCustoRotaResponse_Otimizada));
    xn.text := trgBoolToStr(FOtimizada);
  end;
  if Tipo_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterCustoRotaResponse_Tipo));
    xn.text := IntToStr(FTipo);
  end;
  if IdCategoriaVeiculo_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterCustoRotaResponse_IdCategoriaVeiculo));
    xn.text := IntToStr(FIdCategoriaVeiculo);
  end;
  if ValorPedagioTotal_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterCustoRotaResponse_ValorPedagioTotal));
    xn.text := MyFloatToStr(FValorPedagioTotal);
  end;
  if ValorPedagioVectio_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterCustoRotaResponse_ValorPedagioVectio));
    xn.text := MyFloatToStr(FValorPedagioVectio);
  end;
  if ValorPedagioViaFacil_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterCustoRotaResponse_ValorPedagioViaFacil));
    xn.text := MyFloatToStr(FValorPedagioViaFacil);
  end;
  if IdRotaCliente_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterCustoRotaResponse_IdRotaCliente));
    xn.text := IntToStr(FIdRotaCliente);
  end;
  if NomeRotaCliente_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterCustoRotaResponse_NomeRotaCliente));
    xn.text := FNomeRotaCliente;
  end;
  if DescricaoCategoriaVeiculo_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterCustoRotaResponse_DescricaoCategoriaVeiculo));
    xn.text := FDescricaoCategoriaVeiculo;
  end;
  if Assigned(FDadosInteresseRota) then
  begin
    xn := aNode.addChildByName(snObterCustoRotaResponse_DadosInteresseRota);
    FDadosInteresseRota.Save(xn);
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

class function tObterCustoRotaRequest.CreateFromXmlString(s: string): tObterCustoRotaRequest;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterCustoRotaRequest.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

class function tObterLogRequisicoesResponse.CreateFromXmlString(s: string): tObterLogRequisicoesResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterLogRequisicoesResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterLogRequisicoesResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterLogRequisicoesResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snObterLogRequisicoesResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snObterLogRequisicoesResponse_ArquivoZip) then
      ArquivoZip :=  xn.text // tbase64Binary
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterLogRequisicoesResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterLogRequisicoesResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tObterLogRequisicoesResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tObterLogRequisicoesResponse.SetArquivoZip(value:tbase64Binary);
begin
  FArquivoZip := value;
  FArquivoZip_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterLogRequisicoesResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterLogRequisicoesResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if ArquivoZip_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterLogRequisicoesResponse_ArquivoZip));
    xn.text := FArquivoZip;
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

class function tComprarValePedagioAvulsoResponse.CreateFromXmlString(s: string): tComprarValePedagioAvulsoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tComprarValePedagioAvulsoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tComprarValePedagioAvulsoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snComprarValePedagioAvulsoResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snComprarValePedagioAvulsoResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snComprarValePedagioAvulsoResponse_IdCompraValePedagio) then
      IdCompraValePedagio := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tComprarValePedagioAvulsoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tComprarValePedagioAvulsoResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tComprarValePedagioAvulsoResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tComprarValePedagioAvulsoResponse.SetIdCompraValePedagio(value:integer);
begin
  FIdCompraValePedagio := value;
  FIdCompraValePedagio_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snComprarValePedagioAvulsoResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snComprarValePedagioAvulsoResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if IdCompraValePedagio_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snComprarValePedagioAvulsoResponse_IdCompraValePedagio));
    xn.text := IntToStr(FIdCompraValePedagio);
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

class function tComprarValePedagioAvulsoRequest.CreateFromXmlString(s: string): tComprarValePedagioAvulsoRequest;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tComprarValePedagioAvulsoRequest.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

class function tBaseMotoristaRequestResponse.CreateFromXmlString(s: string): tBaseMotoristaRequestResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBaseMotoristaRequestResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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
    xn.text := trgBoolToStr(FAtivo);
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

class function tArrayOfBaseMotoristaRequestResponse.CreateFromXmlString(s: string): tArrayOfBaseMotoristaRequestResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tArrayOfBaseMotoristaRequestResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

class function tBuscarMotoristaResponse.CreateFromXmlString(s: string): tBuscarMotoristaResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarMotoristaResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarMotoristaResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snBuscarMotoristaResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snBuscarMotoristaResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snBuscarMotoristaResponse_MotoristasAtivos) then
      FMotoristasAtivos := tArrayOfBaseMotoristaRequestResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tBuscarMotoristaResponse.Destroy;
begin
  if assigned(FMotoristasAtivos) then  FMotoristasAtivos.free;
  inherited;
end; // destructor ...

procedure tBuscarMotoristaResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tBuscarMotoristaResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tBuscarMotoristaResponse.SetMotoristasAtivos(value:tArrayOfBaseMotoristaRequestResponse);
begin
  FMotoristasAtivos := value;
  FMotoristasAtivos_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarMotoristaResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarMotoristaResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if Assigned(FMotoristasAtivos) then
  begin
    xn := aNode.addChildByName(snBuscarMotoristaResponse_MotoristasAtivos);
    FMotoristasAtivos.Save(xn);
  end;
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

class function tObterMotoristaResponse.CreateFromXmlString(s: string): tObterMotoristaResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterMotoristaResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterMotoristaResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterMotoristaResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snObterMotoristaResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snObterMotoristaResponse_Motorista) then
      FMotorista := tBaseMotoristaRequestResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterMotoristaResponse.Destroy;
begin
  if assigned(FMotorista) then  FMotorista.free;
  inherited;
end; // destructor ...

procedure tObterMotoristaResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tObterMotoristaResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tObterMotoristaResponse.SetMotorista(value:tBaseMotoristaRequestResponse);
begin
  FMotorista := value;
  FMotorista_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterMotoristaResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterMotoristaResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if Assigned(FMotorista) then
  begin
    xn := aNode.addChildByName(snObterMotoristaResponse_Motorista);
    FMotorista.Save(xn);
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

class function tCadastroMotoristaResponse.CreateFromXmlString(s: string): tCadastroMotoristaResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastroMotoristaResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCadastroMotoristaResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snCadastroMotoristaResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snCadastroMotoristaResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snCadastroMotoristaResponse_CodigoMotorista) then
      CodigoMotorista := StrToIntDef(xn.text, 0)
    else if (sn = snCadastroMotoristaResponse_DataHoraCadastro) then
      DataHoraCadastro := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tCadastroMotoristaResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCadastroMotoristaResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tCadastroMotoristaResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tCadastroMotoristaResponse.SetCodigoMotorista(value:integer);
begin
  FCodigoMotorista := value;
  FCodigoMotorista_IsSet_ := true;
end;

procedure tCadastroMotoristaResponse.SetDataHoraCadastro(value:tDateTime);
begin
  FDataHoraCadastro := value;
  FDataHoraCadastro_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroMotoristaResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroMotoristaResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if CodigoMotorista_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroMotoristaResponse_CodigoMotorista));
    xn.text := IntToStr(FCodigoMotorista);
  end;
  if DataHoraCadastro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroMotoristaResponse_DataHoraCadastro));
    xn.text := DateTimeToXMLDateTime(FDataHoraCadastro);
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

class function tCadastroMotoristaRequest.CreateFromXmlString(s: string): tCadastroMotoristaRequest;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastroMotoristaRequest.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

    else if (sn = snCadastroMotoristaRequest_FlagContaPoupanca) then
      FlagContaPoupanca :=  xn.text = 'true' // string
    else if (sn = snCadastroMotoristaRequest_VariacaoContaPoupanca) then
      VariacaoContaPoupanca :=  xn.text // string
      
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

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroMotoristaRequest_FlagContaPoupanca));
  xn.text := trgBoolToStr( FFlagContaPoupanca );

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroMotoristaRequest_VariacaoContaPoupanca));
  xn.text := FVariacaoContaPoupanca;

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

class function tBaseTriagemDocumentoObjetoRequest.CreateFromXmlString(s: string): tBaseTriagemDocumentoObjetoRequest;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBaseTriagemDocumentoObjetoRequest.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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
    xn.text := trgBoolToStr(FAtivo);
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
    xn.text := trgBoolToStr(FExibeEmTela);
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

class function tArrayOfBaseTriagemDocumentoObjetoRequest.CreateFromXmlString(s: string): tArrayOfBaseTriagemDocumentoObjetoRequest;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tArrayOfBaseTriagemDocumentoObjetoRequest.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

class function tBuscarTriagemDocumentoObjetoResponse.CreateFromXmlString(s: string): tBuscarTriagemDocumentoObjetoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarTriagemDocumentoObjetoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarTriagemDocumentoObjetoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snBuscarTriagemDocumentoObjetoResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snBuscarTriagemDocumentoObjetoResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snBuscarTriagemDocumentoObjetoResponse_TriagemDocumentoObjetoAtivos) then
      FTriagemDocumentoObjetoAtivos := tArrayOfBaseTriagemDocumentoObjetoRequest.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tBuscarTriagemDocumentoObjetoResponse.Destroy;
begin
  if assigned(FTriagemDocumentoObjetoAtivos) then  FTriagemDocumentoObjetoAtivos.free;
  inherited;
end; // destructor ...

procedure tBuscarTriagemDocumentoObjetoResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tBuscarTriagemDocumentoObjetoResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tBuscarTriagemDocumentoObjetoResponse.SetTriagemDocumentoObjetoAtivos(value:tArrayOfBaseTriagemDocumentoObjetoRequest);
begin
  FTriagemDocumentoObjetoAtivos := value;
  FTriagemDocumentoObjetoAtivos_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarTriagemDocumentoObjetoResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarTriagemDocumentoObjetoResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if Assigned(FTriagemDocumentoObjetoAtivos) then
  begin
    xn := aNode.addChildByName(snBuscarTriagemDocumentoObjetoResponse_TriagemDocumentoObjetoAtivos);
    FTriagemDocumentoObjetoAtivos.Save(xn);
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

class function tObterTriagemDocumentoObjetoResponse.CreateFromXmlString(s: string): tObterTriagemDocumentoObjetoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterTriagemDocumentoObjetoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterTriagemDocumentoObjetoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterTriagemDocumentoObjetoResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snObterTriagemDocumentoObjetoResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snObterTriagemDocumentoObjetoResponse_TriagemDocumentoObjeto) then
      FTriagemDocumentoObjeto := tBaseTriagemDocumentoObjetoRequest.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterTriagemDocumentoObjetoResponse.Destroy;
begin
  if assigned(FTriagemDocumentoObjeto) then  FTriagemDocumentoObjeto.free;
  inherited;
end; // destructor ...

procedure tObterTriagemDocumentoObjetoResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tObterTriagemDocumentoObjetoResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tObterTriagemDocumentoObjetoResponse.SetTriagemDocumentoObjeto(value:tBaseTriagemDocumentoObjetoRequest);
begin
  FTriagemDocumentoObjeto := value;
  FTriagemDocumentoObjeto_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterTriagemDocumentoObjetoResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterTriagemDocumentoObjetoResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if Assigned(FTriagemDocumentoObjeto) then
  begin
    xn := aNode.addChildByName(snObterTriagemDocumentoObjetoResponse_TriagemDocumentoObjeto);
    FTriagemDocumentoObjeto.Save(xn);
  end;
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

class function tEmitirContratoOperacaoTransporteResponse.CreateFromXmlString(s: string): tEmitirContratoOperacaoTransporteResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tEmitirContratoOperacaoTransporteResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tEmitirContratoOperacaoTransporteResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snEmitirContratoOperacaoTransporteResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snEmitirContratoOperacaoTransporteResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snEmitirContratoOperacaoTransporteResponse_ContratoPDF) then
      ContratoPDF :=  xn.text // tbase64Binary
    else if (sn = snEmitirContratoOperacaoTransporteResponse_IdOperacaoTransporte) then
      IdOperacaoTransporte := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tEmitirContratoOperacaoTransporteResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tEmitirContratoOperacaoTransporteResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tEmitirContratoOperacaoTransporteResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tEmitirContratoOperacaoTransporteResponse.SetContratoPDF(value:tbase64Binary);
begin
  FContratoPDF := value;
  FContratoPDF_IsSet_ := true;
end;

procedure tEmitirContratoOperacaoTransporteResponse.SetIdOperacaoTransporte(value:integer);
begin
  FIdOperacaoTransporte := value;
  FIdOperacaoTransporte_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEmitirContratoOperacaoTransporteResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEmitirContratoOperacaoTransporteResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if ContratoPDF_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEmitirContratoOperacaoTransporteResponse_ContratoPDF));
    xn.text := FContratoPDF;
  end;
  if IdOperacaoTransporte_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEmitirContratoOperacaoTransporteResponse_IdOperacaoTransporte));
    xn.text := IntToStr(FIdOperacaoTransporte);
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

class function tEmitirDeclaracaoOperacaoTransporteResponse.CreateFromXmlString(s: string): tEmitirDeclaracaoOperacaoTransporteResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tEmitirDeclaracaoOperacaoTransporteResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tEmitirDeclaracaoOperacaoTransporteResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snEmitirDeclaracaoOperacaoTransporteResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snEmitirDeclaracaoOperacaoTransporteResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snEmitirDeclaracaoOperacaoTransporteResponse_DeclaracaoPDF) then
      DeclaracaoPDF :=  xn.text // tbase64Binary
    else if (sn = snEmitirDeclaracaoOperacaoTransporteResponse_IdOperacaoTransporte) then
      IdOperacaoTransporte := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tEmitirDeclaracaoOperacaoTransporteResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tEmitirDeclaracaoOperacaoTransporteResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tEmitirDeclaracaoOperacaoTransporteResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tEmitirDeclaracaoOperacaoTransporteResponse.SetDeclaracaoPDF(value:tbase64Binary);
begin
  FDeclaracaoPDF := value;
  FDeclaracaoPDF_IsSet_ := true;
end;

procedure tEmitirDeclaracaoOperacaoTransporteResponse.SetIdOperacaoTransporte(value:integer);
begin
  FIdOperacaoTransporte := value;
  FIdOperacaoTransporte_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEmitirDeclaracaoOperacaoTransporteResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEmitirDeclaracaoOperacaoTransporteResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if DeclaracaoPDF_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEmitirDeclaracaoOperacaoTransporteResponse_DeclaracaoPDF));
    xn.text := FDeclaracaoPDF;
  end;
  if IdOperacaoTransporte_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEmitirDeclaracaoOperacaoTransporteResponse_IdOperacaoTransporte));
    xn.text := IntToStr(FIdOperacaoTransporte);
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

class function tEmitirReciboValePedagioViaFacilResponse.CreateFromXmlString(s: string): tEmitirReciboValePedagioViaFacilResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tEmitirReciboValePedagioViaFacilResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tEmitirReciboValePedagioViaFacilResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snEmitirReciboValePedagioViaFacilResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snEmitirReciboValePedagioViaFacilResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snEmitirReciboValePedagioViaFacilResponse_IdOperacaoTransporte) then
      IdOperacaoTransporte := StrToIntDef(xn.text, 0)
    else if (sn = snEmitirReciboValePedagioViaFacilResponse_ReciboPDF) then
      ReciboPDF :=  xn.text // tbase64Binary
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tEmitirReciboValePedagioViaFacilResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tEmitirReciboValePedagioViaFacilResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tEmitirReciboValePedagioViaFacilResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tEmitirReciboValePedagioViaFacilResponse.SetIdOperacaoTransporte(value:integer);
begin
  FIdOperacaoTransporte := value;
  FIdOperacaoTransporte_IsSet_ := true;
end;

procedure tEmitirReciboValePedagioViaFacilResponse.SetReciboPDF(value:tbase64Binary);
begin
  FReciboPDF := value;
  FReciboPDF_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEmitirReciboValePedagioViaFacilResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEmitirReciboValePedagioViaFacilResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if IdOperacaoTransporte_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEmitirReciboValePedagioViaFacilResponse_IdOperacaoTransporte));
    xn.text := IntToStr(FIdOperacaoTransporte);
  end;
  if ReciboPDF_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEmitirReciboValePedagioViaFacilResponse_ReciboPDF));
    xn.text := FReciboPDF;
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

class function tEmitirReciboValePedagioVectioResponse.CreateFromXmlString(s: string): tEmitirReciboValePedagioVectioResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tEmitirReciboValePedagioVectioResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tEmitirReciboValePedagioVectioResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snEmitirReciboValePedagioVectioResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snEmitirReciboValePedagioVectioResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snEmitirReciboValePedagioVectioResponse_IdOperacaoTransporte) then
      IdOperacaoTransporte := StrToIntDef(xn.text, 0)
    else if (sn = snEmitirReciboValePedagioVectioResponse_ReciboPDF) then
      ReciboPDF :=  xn.text // tbase64Binary
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tEmitirReciboValePedagioVectioResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tEmitirReciboValePedagioVectioResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tEmitirReciboValePedagioVectioResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tEmitirReciboValePedagioVectioResponse.SetIdOperacaoTransporte(value:integer);
begin
  FIdOperacaoTransporte := value;
  FIdOperacaoTransporte_IsSet_ := true;
end;

procedure tEmitirReciboValePedagioVectioResponse.SetReciboPDF(value:tbase64Binary);
begin
  FReciboPDF := value;
  FReciboPDF_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEmitirReciboValePedagioVectioResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEmitirReciboValePedagioVectioResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if IdOperacaoTransporte_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEmitirReciboValePedagioVectioResponse_IdOperacaoTransporte));
    xn.text := IntToStr(FIdOperacaoTransporte);
  end;
  if ReciboPDF_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEmitirReciboValePedagioVectioResponse_ReciboPDF));
    xn.text := FReciboPDF;
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

class function tCobrancaGestoraResponse.CreateFromXmlString(s: string): tCobrancaGestoraResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCobrancaGestoraResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCobrancaGestoraResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snCobrancaGestoraResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snCobrancaGestoraResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snCobrancaGestoraResponse_IdCobrancaGestora) then
      IdCobrancaGestora := StrToIntDef(xn.text, 0)
    else if (sn = snCobrancaGestoraResponse_IdTaxaCalculada) then
      IdTaxaCalculada := StrToIntDef(xn.text, 0)
    else if (sn = snCobrancaGestoraResponse_IdServicoCalculado) then
      IdServicoCalculado := StrToIntDef(xn.text, 0)
    else if (sn = snCobrancaGestoraResponse_TipoCobranca) then
      TipoCobranca :=  xn.text // string
    else if (sn = snCobrancaGestoraResponse_ValorConta) then
      ValorConta := DefStrToFloat(xn.text, 0)
    else if (sn = snCobrancaGestoraResponse_ValorDesconto) then
      ValorDesconto := DefStrToFloat(xn.text, 0)
    else if (sn = snCobrancaGestoraResponse_ValorMulta) then
      ValorMulta := DefStrToFloat(xn.text, 0)
    else if (sn = snCobrancaGestoraResponse_ValorJuros) then
      ValorJuros := DefStrToFloat(xn.text, 0)
    else if (sn = snCobrancaGestoraResponse_TaxaJuros) then
      TaxaJuros := DefStrToFloat(xn.text, 0)
    else if (sn = snCobrancaGestoraResponse_ValorCobrado) then
      ValorCobrado := DefStrToFloat(xn.text, 0)
    else if (sn = snCobrancaGestoraResponse_ValorRecebido) then
      ValorRecebido := DefStrToFloat(xn.text, 0)
    else if (sn = snCobrancaGestoraResponse_ValorEmAberto) then
      ValorEmAberto := DefStrToFloat(xn.text, 0)
    else if (sn = snCobrancaGestoraResponse_DataHoraEmissao) then
      DataHoraEmissao := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snCobrancaGestoraResponse_DataVencimento) then
      DataVencimento := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snCobrancaGestoraResponse_DataPagamento) then
      DataPagamento := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snCobrancaGestoraResponse_DiasAtraso) then
      DiasAtraso := StrToIntDef(xn.text, 0)
    else if (sn = snCobrancaGestoraResponse_DataHoraRegistro) then
      DataHoraRegistro := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tCobrancaGestoraResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCobrancaGestoraResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tCobrancaGestoraResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tCobrancaGestoraResponse.SetIdCobrancaGestora(value:integer);
begin
  FIdCobrancaGestora := value;
  FIdCobrancaGestora_IsSet_ := true;
end;

procedure tCobrancaGestoraResponse.SetIdTaxaCalculada(value:integer);
begin
  FIdTaxaCalculada := value;
  FIdTaxaCalculada_IsSet_ := true;
end;

procedure tCobrancaGestoraResponse.SetIdServicoCalculado(value:integer);
begin
  FIdServicoCalculado := value;
  FIdServicoCalculado_IsSet_ := true;
end;

procedure tCobrancaGestoraResponse.SetTipoCobranca(value:string);
begin
  FTipoCobranca := value;
  FTipoCobranca_IsSet_ := true;
end;

procedure tCobrancaGestoraResponse.SetValorConta(value:extended);
begin
  FValorConta := value;
  FValorConta_IsSet_ := true;
end;

procedure tCobrancaGestoraResponse.SetValorDesconto(value:extended);
begin
  FValorDesconto := value;
  FValorDesconto_IsSet_ := true;
end;

procedure tCobrancaGestoraResponse.SetValorMulta(value:extended);
begin
  FValorMulta := value;
  FValorMulta_IsSet_ := true;
end;

procedure tCobrancaGestoraResponse.SetValorJuros(value:extended);
begin
  FValorJuros := value;
  FValorJuros_IsSet_ := true;
end;

procedure tCobrancaGestoraResponse.SetTaxaJuros(value:extended);
begin
  FTaxaJuros := value;
  FTaxaJuros_IsSet_ := true;
end;

procedure tCobrancaGestoraResponse.SetValorCobrado(value:extended);
begin
  FValorCobrado := value;
  FValorCobrado_IsSet_ := true;
end;

procedure tCobrancaGestoraResponse.SetValorRecebido(value:extended);
begin
  FValorRecebido := value;
  FValorRecebido_IsSet_ := true;
end;

procedure tCobrancaGestoraResponse.SetValorEmAberto(value:extended);
begin
  FValorEmAberto := value;
  FValorEmAberto_IsSet_ := true;
end;

procedure tCobrancaGestoraResponse.SetDataHoraEmissao(value:tDateTime);
begin
  FDataHoraEmissao := value;
  FDataHoraEmissao_IsSet_ := true;
end;

procedure tCobrancaGestoraResponse.SetDataVencimento(value:tDateTime);
begin
  FDataVencimento := value;
  FDataVencimento_IsSet_ := true;
end;

procedure tCobrancaGestoraResponse.SetDataPagamento(value:tDateTime);
begin
  FDataPagamento := value;
  FDataPagamento_IsSet_ := true;
end;

procedure tCobrancaGestoraResponse.SetDiasAtraso(value:integer);
begin
  FDiasAtraso := value;
  FDiasAtraso_IsSet_ := true;
end;

procedure tCobrancaGestoraResponse.SetDataHoraRegistro(value:tDateTime);
begin
  FDataHoraRegistro := value;
  FDataHoraRegistro_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCobrancaGestoraResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCobrancaGestoraResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if IdCobrancaGestora_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCobrancaGestoraResponse_IdCobrancaGestora));
    xn.text := IntToStr(FIdCobrancaGestora);
  end;
  if IdTaxaCalculada_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCobrancaGestoraResponse_IdTaxaCalculada));
    xn.text := IntToStr(FIdTaxaCalculada);
  end;
  if IdServicoCalculado_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCobrancaGestoraResponse_IdServicoCalculado));
    xn.text := IntToStr(FIdServicoCalculado);
  end;
  if TipoCobranca_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCobrancaGestoraResponse_TipoCobranca));
    xn.text := FTipoCobranca;
  end;
  if ValorConta_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCobrancaGestoraResponse_ValorConta));
    xn.text := MyFloatToStr(FValorConta);
  end;
  if ValorDesconto_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCobrancaGestoraResponse_ValorDesconto));
    xn.text := MyFloatToStr(FValorDesconto);
  end;
  if ValorMulta_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCobrancaGestoraResponse_ValorMulta));
    xn.text := MyFloatToStr(FValorMulta);
  end;
  if ValorJuros_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCobrancaGestoraResponse_ValorJuros));
    xn.text := MyFloatToStr(FValorJuros);
  end;
  if TaxaJuros_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCobrancaGestoraResponse_TaxaJuros));
    xn.text := MyFloatToStr(FTaxaJuros);
  end;
  if ValorCobrado_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCobrancaGestoraResponse_ValorCobrado));
    xn.text := MyFloatToStr(FValorCobrado);
  end;
  if ValorRecebido_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCobrancaGestoraResponse_ValorRecebido));
    xn.text := MyFloatToStr(FValorRecebido);
  end;
  if ValorEmAberto_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCobrancaGestoraResponse_ValorEmAberto));
    xn.text := MyFloatToStr(FValorEmAberto);
  end;
  if DataHoraEmissao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCobrancaGestoraResponse_DataHoraEmissao));
    xn.text := DateTimeToXMLDateTime(FDataHoraEmissao);
  end;
  if DataVencimento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCobrancaGestoraResponse_DataVencimento));
    xn.text := DateTimeToXMLDateTime(FDataVencimento);
  end;
  if DataPagamento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCobrancaGestoraResponse_DataPagamento));
    xn.text := DateTimeToXMLDateTime(FDataPagamento);
  end;
  if DiasAtraso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCobrancaGestoraResponse_DiasAtraso));
    xn.text := IntToStr(FDiasAtraso);
  end;
  if DataHoraRegistro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCobrancaGestoraResponse_DataHoraRegistro));
    xn.text := DateTimeToXMLDateTime(FDataHoraRegistro);
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

class function tArrayOfCobrancaGestoraResponse.CreateFromXmlString(s: string): tArrayOfCobrancaGestoraResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tArrayOfCobrancaGestoraResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

class function tBuscarCobrancaGestoraResponse.CreateFromXmlString(s: string): tBuscarCobrancaGestoraResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarCobrancaGestoraResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarCobrancaGestoraResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snBuscarCobrancaGestoraResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snBuscarCobrancaGestoraResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snBuscarCobrancaGestoraResponse_ListaCobrancaGestora) then
      FListaCobrancaGestora := tArrayOfCobrancaGestoraResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tBuscarCobrancaGestoraResponse.Destroy;
begin
  if assigned(FListaCobrancaGestora) then  FListaCobrancaGestora.free;
  inherited;
end; // destructor ...

procedure tBuscarCobrancaGestoraResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tBuscarCobrancaGestoraResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tBuscarCobrancaGestoraResponse.SetListaCobrancaGestora(value:tArrayOfCobrancaGestoraResponse);
begin
  FListaCobrancaGestora := value;
  FListaCobrancaGestora_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarCobrancaGestoraResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarCobrancaGestoraResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if Assigned(FListaCobrancaGestora) then
  begin
    xn := aNode.addChildByName(snBuscarCobrancaGestoraResponse_ListaCobrancaGestora);
    FListaCobrancaGestora.Save(xn);
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

class function tContaVirtualMovimentoResponse.CreateFromXmlString(s: string): tContaVirtualMovimentoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tContaVirtualMovimentoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tContaVirtualMovimentoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snContaVirtualMovimentoResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snContaVirtualMovimentoResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snContaVirtualMovimentoResponse_DataHoraMovimento) then
      DataHoraMovimento := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snContaVirtualMovimentoResponse_TipoMovimento) then
      TipoMovimento :=  xn.text // string
    else if (sn = snContaVirtualMovimentoResponse_ValorMovimento) then
      ValorMovimento := DefStrToFloat(xn.text, 0)
    else if (sn = snContaVirtualMovimentoResponse_MotivoMovimento) then
      MotivoMovimento :=  xn.text // string
    else if (sn = snContaVirtualMovimentoResponse_ValorSaldoAtual) then
      ValorSaldoAtual := DefStrToFloat(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tContaVirtualMovimentoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tContaVirtualMovimentoResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tContaVirtualMovimentoResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tContaVirtualMovimentoResponse.SetDataHoraMovimento(value:tDateTime);
begin
  FDataHoraMovimento := value;
  FDataHoraMovimento_IsSet_ := true;
end;

procedure tContaVirtualMovimentoResponse.SetTipoMovimento(value:string);
begin
  FTipoMovimento := value;
  FTipoMovimento_IsSet_ := true;
end;

procedure tContaVirtualMovimentoResponse.SetValorMovimento(value:extended);
begin
  FValorMovimento := value;
  FValorMovimento_IsSet_ := true;
end;

procedure tContaVirtualMovimentoResponse.SetMotivoMovimento(value:string);
begin
  FMotivoMovimento := value;
  FMotivoMovimento_IsSet_ := true;
end;

procedure tContaVirtualMovimentoResponse.SetValorSaldoAtual(value:extended);
begin
  FValorSaldoAtual := value;
  FValorSaldoAtual_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snContaVirtualMovimentoResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snContaVirtualMovimentoResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if DataHoraMovimento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snContaVirtualMovimentoResponse_DataHoraMovimento));
    xn.text := DateTimeToXMLDateTime(FDataHoraMovimento);
  end;
  if TipoMovimento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snContaVirtualMovimentoResponse_TipoMovimento));
    xn.text := FTipoMovimento;
  end;
  if ValorMovimento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snContaVirtualMovimentoResponse_ValorMovimento));
    xn.text := MyFloatToStr(FValorMovimento);
  end;
  if MotivoMovimento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snContaVirtualMovimentoResponse_MotivoMovimento));
    xn.text := FMotivoMovimento;
  end;
  if ValorSaldoAtual_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snContaVirtualMovimentoResponse_ValorSaldoAtual));
    xn.text := MyFloatToStr(FValorSaldoAtual);
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

class function tArrayOfContaVirtualMovimentoResponse.CreateFromXmlString(s: string): tArrayOfContaVirtualMovimentoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tArrayOfContaVirtualMovimentoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

class function tExtratoResponse.CreateFromXmlString(s: string): tExtratoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tExtratoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tExtratoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snExtratoResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snExtratoResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snExtratoResponse_Movimentos) then
      FMovimentos := tArrayOfContaVirtualMovimentoResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tExtratoResponse.Destroy;
begin
  if assigned(FMovimentos) then  FMovimentos.free;
  inherited;
end; // destructor ...

procedure tExtratoResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tExtratoResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tExtratoResponse.SetMovimentos(value:tArrayOfContaVirtualMovimentoResponse);
begin
  FMovimentos := value;
  FMovimentos_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snExtratoResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snExtratoResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if Assigned(FMovimentos) then
  begin
    xn := aNode.addChildByName(snExtratoResponse_Movimentos);
    FMovimentos.Save(xn);
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

class function tBuscarParametrosComerciaisResponse.CreateFromXmlString(s: string): tBuscarParametrosComerciaisResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarParametrosComerciaisResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarParametrosComerciaisResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snBuscarParametrosComerciaisResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snBuscarParametrosComerciaisResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snBuscarParametrosComerciaisResponse_DiaFechamentoMensal) then
      DiaFechamentoMensal := StrToIntDef(xn.text, 0)
    else if (sn = snBuscarParametrosComerciaisResponse_DiasParaPagar) then
      DiasParaPagar := StrToIntDef(xn.text, 0)
    else if (sn = snBuscarParametrosComerciaisResponse_FlagValorFixoFrete) then
      FlagValorFixoFrete := (xn.text = 'true')
    else if (sn = snBuscarParametrosComerciaisResponse_FlagValorFixoPedagio) then
      FlagValorFixoPedagio := (xn.text = 'true')
    else if (sn = snBuscarParametrosComerciaisResponse_FlagValorFixoViaFacil) then
      FlagValorFixoViaFacil := (xn.text = 'true')
    else if (sn = snBuscarParametrosComerciaisResponse_Habilitado) then
      Habilitado := (xn.text = 'true')
    else if (sn = snBuscarParametrosComerciaisResponse_Isento) then
      Isento := (xn.text = 'true')
    else if (sn = snBuscarParametrosComerciaisResponse_TaxaFrete) then
      TaxaFrete := DefStrToFloat(xn.text, 0)
    else if (sn = snBuscarParametrosComerciaisResponse_TaxaPedagio) then
      TaxaPedagio := DefStrToFloat(xn.text, 0)
    else if (sn = snBuscarParametrosComerciaisResponse_TaxaViaFacil) then
      TaxaViaFacil := DefStrToFloat(xn.text, 0)
    else if (sn = snBuscarParametrosComerciaisResponse_TrabalhaComCargaAvulsa) then
      TrabalhaComCargaAvulsa := (xn.text = 'true')
    else if (sn = snBuscarParametrosComerciaisResponse_TrabalhaComValePedagioAvulso) then
      TrabalhaComValePedagioAvulso := (xn.text = 'true')
    else if (sn = snBuscarParametrosComerciaisResponse_ValorConectividade) then
      ValorConectividade := DefStrToFloat(xn.text, 0)
    else if (sn = snBuscarParametrosComerciaisResponse_ValorInstalacao) then
      ValorInstalacao := DefStrToFloat(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tBuscarParametrosComerciaisResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tBuscarParametrosComerciaisResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tBuscarParametrosComerciaisResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tBuscarParametrosComerciaisResponse.SetDiaFechamentoMensal(value:integer);
begin
  FDiaFechamentoMensal := value;
  FDiaFechamentoMensal_IsSet_ := true;
end;

procedure tBuscarParametrosComerciaisResponse.SetDiasParaPagar(value:integer);
begin
  FDiasParaPagar := value;
  FDiasParaPagar_IsSet_ := true;
end;

procedure tBuscarParametrosComerciaisResponse.SetFlagValorFixoFrete(value:boolean);
begin
  FFlagValorFixoFrete := value;
  FFlagValorFixoFrete_IsSet_ := true;
end;

procedure tBuscarParametrosComerciaisResponse.SetFlagValorFixoPedagio(value:boolean);
begin
  FFlagValorFixoPedagio := value;
  FFlagValorFixoPedagio_IsSet_ := true;
end;

procedure tBuscarParametrosComerciaisResponse.SetFlagValorFixoViaFacil(value:boolean);
begin
  FFlagValorFixoViaFacil := value;
  FFlagValorFixoViaFacil_IsSet_ := true;
end;

procedure tBuscarParametrosComerciaisResponse.SetHabilitado(value:boolean);
begin
  FHabilitado := value;
  FHabilitado_IsSet_ := true;
end;

procedure tBuscarParametrosComerciaisResponse.SetIsento(value:boolean);
begin
  FIsento := value;
  FIsento_IsSet_ := true;
end;

procedure tBuscarParametrosComerciaisResponse.SetTaxaFrete(value:extended);
begin
  FTaxaFrete := value;
  FTaxaFrete_IsSet_ := true;
end;

procedure tBuscarParametrosComerciaisResponse.SetTaxaPedagio(value:extended);
begin
  FTaxaPedagio := value;
  FTaxaPedagio_IsSet_ := true;
end;

procedure tBuscarParametrosComerciaisResponse.SetTaxaViaFacil(value:extended);
begin
  FTaxaViaFacil := value;
  FTaxaViaFacil_IsSet_ := true;
end;

procedure tBuscarParametrosComerciaisResponse.SetTrabalhaComCargaAvulsa(value:boolean);
begin
  FTrabalhaComCargaAvulsa := value;
  FTrabalhaComCargaAvulsa_IsSet_ := true;
end;

procedure tBuscarParametrosComerciaisResponse.SetTrabalhaComValePedagioAvulso(value:boolean);
begin
  FTrabalhaComValePedagioAvulso := value;
  FTrabalhaComValePedagioAvulso_IsSet_ := true;
end;

procedure tBuscarParametrosComerciaisResponse.SetValorConectividade(value:extended);
begin
  FValorConectividade := value;
  FValorConectividade_IsSet_ := true;
end;

procedure tBuscarParametrosComerciaisResponse.SetValorInstalacao(value:extended);
begin
  FValorInstalacao := value;
  FValorInstalacao_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarParametrosComerciaisResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarParametrosComerciaisResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if DiaFechamentoMensal_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarParametrosComerciaisResponse_DiaFechamentoMensal));
    xn.text := IntToStr(FDiaFechamentoMensal);
  end;
  if DiasParaPagar_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarParametrosComerciaisResponse_DiasParaPagar));
    xn.text := IntToStr(FDiasParaPagar);
  end;
  if FlagValorFixoFrete_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarParametrosComerciaisResponse_FlagValorFixoFrete));
    xn.text := trgBoolToStr(FFlagValorFixoFrete);
  end;
  if FlagValorFixoPedagio_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarParametrosComerciaisResponse_FlagValorFixoPedagio));
    xn.text := trgBoolToStr(FFlagValorFixoPedagio);
  end;
  if FlagValorFixoViaFacil_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarParametrosComerciaisResponse_FlagValorFixoViaFacil));
    xn.text := trgBoolToStr(FFlagValorFixoViaFacil);
  end;
  if Habilitado_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarParametrosComerciaisResponse_Habilitado));
    xn.text := trgBoolToStr(FHabilitado);
  end;
  if Isento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarParametrosComerciaisResponse_Isento));
    xn.text := trgBoolToStr(FIsento);
  end;
  if TaxaFrete_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarParametrosComerciaisResponse_TaxaFrete));
    xn.text := MyFloatToStr(FTaxaFrete);
  end;
  if TaxaPedagio_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarParametrosComerciaisResponse_TaxaPedagio));
    xn.text := MyFloatToStr(FTaxaPedagio);
  end;
  if TaxaViaFacil_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarParametrosComerciaisResponse_TaxaViaFacil));
    xn.text := MyFloatToStr(FTaxaViaFacil);
  end;
  if TrabalhaComCargaAvulsa_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarParametrosComerciaisResponse_TrabalhaComCargaAvulsa));
    xn.text := trgBoolToStr(FTrabalhaComCargaAvulsa);
  end;
  if TrabalhaComValePedagioAvulso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarParametrosComerciaisResponse_TrabalhaComValePedagioAvulso));
    xn.text := trgBoolToStr(FTrabalhaComValePedagioAvulso);
  end;
  if ValorConectividade_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarParametrosComerciaisResponse_ValorConectividade));
    xn.text := MyFloatToStr(FValorConectividade);
  end;
  if ValorInstalacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarParametrosComerciaisResponse_ValorInstalacao));
    xn.text := MyFloatToStr(FValorInstalacao);
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

class function tSubstituirCartaoDoPortadorRequest.CreateFromXmlString(s: string): tSubstituirCartaoDoPortadorRequest;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tSubstituirCartaoDoPortadorRequest.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

class function tProcessarCargaFreteAvulsaResponse.CreateFromXmlString(s: string): tProcessarCargaFreteAvulsaResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tProcessarCargaFreteAvulsaResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tProcessarCargaFreteAvulsaResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snProcessarCargaFreteAvulsaResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snProcessarCargaFreteAvulsaResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snProcessarCargaFreteAvulsaResponse_IdTransacaoCartao) then
      IdTransacaoCartao := StrToIntDef(xn.text, 0)
    else if (sn = snProcessarCargaFreteAvulsaResponse_DataHoraProcessamento) then
      DataHoraProcessamento := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tProcessarCargaFreteAvulsaResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tProcessarCargaFreteAvulsaResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tProcessarCargaFreteAvulsaResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tProcessarCargaFreteAvulsaResponse.SetIdTransacaoCartao(value:integer);
begin
  FIdTransacaoCartao := value;
  FIdTransacaoCartao_IsSet_ := true;
end;

procedure tProcessarCargaFreteAvulsaResponse.SetDataHoraProcessamento(value:tDateTime);
begin
  FDataHoraProcessamento := value;
  FDataHoraProcessamento_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snProcessarCargaFreteAvulsaResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snProcessarCargaFreteAvulsaResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if IdTransacaoCartao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snProcessarCargaFreteAvulsaResponse_IdTransacaoCartao));
    xn.text := IntToStr(FIdTransacaoCartao);
  end;
  if DataHoraProcessamento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snProcessarCargaFreteAvulsaResponse_DataHoraProcessamento));
    xn.text := DateTimeToXMLDateTime(FDataHoraProcessamento);
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

class function tProcessarCargaFreteAvulsaRequest.CreateFromXmlString(s: string): tProcessarCargaFreteAvulsaRequest;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tProcessarCargaFreteAvulsaRequest.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

class function tAssociacaoCartaoTransportadorRequest.CreateFromXmlString(s: string): tAssociacaoCartaoTransportadorRequest;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAssociacaoCartaoTransportadorRequest.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

class function tOperacaoTransporteTriagemRelacionadoResponse.CreateFromXmlString(s: string): tOperacaoTransporteTriagemRelacionadoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tOperacaoTransporteTriagemRelacionadoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tOperacaoTransporteTriagemRelacionadoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snOperacaoTransporteTriagemRelacionadoResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snOperacaoTransporteTriagemRelacionadoResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snOperacaoTransporteTriagemRelacionadoResponse_ArquivoZip) then
      ArquivoZip :=  xn.text // tbase64Binary
    else if (sn = snOperacaoTransporteTriagemRelacionadoResponse_CaminhoArquivo) then
      CaminhoArquivo :=  xn.text // string
    else if (sn = snOperacaoTransporteTriagemRelacionadoResponse_DataHoraRegistro) then
      DataHoraRegistro := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snOperacaoTransporteTriagemRelacionadoResponse_IdOperacaoTransporteTriagem) then
      IdOperacaoTransporteTriagem := StrToIntDef(xn.text, 0)
    else if (sn = snOperacaoTransporteTriagemRelacionadoResponse_IdOperacaoTransporteTriagemRelacionado) then
      IdOperacaoTransporteTriagemRelacionado := StrToIntDef(xn.text, 0)
    else if (sn = snOperacaoTransporteTriagemRelacionadoResponse_Numero) then
      Numero :=  xn.text // string
    else if (sn = snOperacaoTransporteTriagemRelacionadoResponse_Origem) then
      Origem :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tOperacaoTransporteTriagemRelacionadoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tOperacaoTransporteTriagemRelacionadoResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tOperacaoTransporteTriagemRelacionadoResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tOperacaoTransporteTriagemRelacionadoResponse.SetArquivoZip(value:tbase64Binary);
begin
  FArquivoZip := value;
  FArquivoZip_IsSet_ := true;
end;

procedure tOperacaoTransporteTriagemRelacionadoResponse.SetCaminhoArquivo(value:string);
begin
  FCaminhoArquivo := value;
  FCaminhoArquivo_IsSet_ := true;
end;

procedure tOperacaoTransporteTriagemRelacionadoResponse.SetDataHoraRegistro(value:tDateTime);
begin
  FDataHoraRegistro := value;
  FDataHoraRegistro_IsSet_ := true;
end;

procedure tOperacaoTransporteTriagemRelacionadoResponse.SetIdOperacaoTransporteTriagem(value:integer);
begin
  FIdOperacaoTransporteTriagem := value;
  FIdOperacaoTransporteTriagem_IsSet_ := true;
end;

procedure tOperacaoTransporteTriagemRelacionadoResponse.SetIdOperacaoTransporteTriagemRelacionado(value:integer);
begin
  FIdOperacaoTransporteTriagemRelacionado := value;
  FIdOperacaoTransporteTriagemRelacionado_IsSet_ := true;
end;

procedure tOperacaoTransporteTriagemRelacionadoResponse.SetNumero(value:string);
begin
  FNumero := value;
  FNumero_IsSet_ := true;
end;

procedure tOperacaoTransporteTriagemRelacionadoResponse.SetOrigem(value:string);
begin
  FOrigem := value;
  FOrigem_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteTriagemRelacionadoResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteTriagemRelacionadoResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if ArquivoZip_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteTriagemRelacionadoResponse_ArquivoZip));
    xn.text := FArquivoZip;
  end;
  if CaminhoArquivo_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteTriagemRelacionadoResponse_CaminhoArquivo));
    xn.text := FCaminhoArquivo;
  end;
  if DataHoraRegistro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteTriagemRelacionadoResponse_DataHoraRegistro));
    xn.text := DateTimeToXMLDateTime(FDataHoraRegistro);
  end;
  if IdOperacaoTransporteTriagem_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteTriagemRelacionadoResponse_IdOperacaoTransporteTriagem));
    xn.text := IntToStr(FIdOperacaoTransporteTriagem);
  end;
  if IdOperacaoTransporteTriagemRelacionado_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteTriagemRelacionadoResponse_IdOperacaoTransporteTriagemRelacionado));
    xn.text := IntToStr(FIdOperacaoTransporteTriagemRelacionado);
  end;
  if Numero_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteTriagemRelacionadoResponse_Numero));
    xn.text := FNumero;
  end;
  if Origem_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteTriagemRelacionadoResponse_Origem));
    xn.text := FOrigem;
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

class function tArrayOfOperacaoTransporteTriagemRelacionadoResponse.CreateFromXmlString(s: string): tArrayOfOperacaoTransporteTriagemRelacionadoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tArrayOfOperacaoTransporteTriagemRelacionadoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

class function tOperacaoTransporteTriagemResponse.CreateFromXmlString(s: string): tOperacaoTransporteTriagemResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tOperacaoTransporteTriagemResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tOperacaoTransporteTriagemResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snOperacaoTransporteTriagemResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snOperacaoTransporteTriagemResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snOperacaoTransporteTriagemResponse_DataHoraRegistro) then
      DataHoraRegistro := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snOperacaoTransporteTriagemResponse_DocumentoObjeto) then
      DocumentoObjeto :=  xn.text // string
    else if (sn = snOperacaoTransporteTriagemResponse_ExibeEmTela) then
      ExibeEmTela := (xn.text = 'true')
    else if (sn = snOperacaoTransporteTriagemResponse_ExigeDocumentoObjetoFisico) then
      ExigeDocumentoObjetoFisico :=  xn.text // string
    else if (sn = snOperacaoTransporteTriagemResponse_ExigeUpload) then
      ExigeUpload :=  xn.text // string
    else if (sn = snOperacaoTransporteTriagemResponse_IdOperacaoTransporte) then
      IdOperacaoTransporte := StrToIntDef(xn.text, 0)
    else if (sn = snOperacaoTransporteTriagemResponse_IdOperacaoTransporteTriagem) then
      IdOperacaoTransporteTriagem := StrToIntDef(xn.text, 0)
    else if (sn = snOperacaoTransporteTriagemResponse_IdTriagemDocumentoObjeto) then
      IdTriagemDocumentoObjeto := StrToIntDef(xn.text, 0)
    else if (sn = snOperacaoTransporteTriagemResponse_NomeDocumentoObjeto) then
      NomeDocumentoObjeto :=  xn.text // string
    else if (sn = snOperacaoTransporteTriagemResponse_Relacionados) then
      FRelacionados := tArrayOfOperacaoTransporteTriagemRelacionadoResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tOperacaoTransporteTriagemResponse.Destroy;
begin
  if assigned(FRelacionados) then  FRelacionados.free;
  inherited;
end; // destructor ...

procedure tOperacaoTransporteTriagemResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tOperacaoTransporteTriagemResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tOperacaoTransporteTriagemResponse.SetDataHoraRegistro(value:tDateTime);
begin
  FDataHoraRegistro := value;
  FDataHoraRegistro_IsSet_ := true;
end;

procedure tOperacaoTransporteTriagemResponse.SetDocumentoObjeto(value:string);
begin
  FDocumentoObjeto := value;
  FDocumentoObjeto_IsSet_ := true;
end;

procedure tOperacaoTransporteTriagemResponse.SetExibeEmTela(value:boolean);
begin
  FExibeEmTela := value;
  FExibeEmTela_IsSet_ := true;
end;

procedure tOperacaoTransporteTriagemResponse.SetExigeDocumentoObjetoFisico(value:string);
begin
  FExigeDocumentoObjetoFisico := value;
  FExigeDocumentoObjetoFisico_IsSet_ := true;
end;

procedure tOperacaoTransporteTriagemResponse.SetExigeUpload(value:string);
begin
  FExigeUpload := value;
  FExigeUpload_IsSet_ := true;
end;

procedure tOperacaoTransporteTriagemResponse.SetIdOperacaoTransporte(value:integer);
begin
  FIdOperacaoTransporte := value;
  FIdOperacaoTransporte_IsSet_ := true;
end;

procedure tOperacaoTransporteTriagemResponse.SetIdOperacaoTransporteTriagem(value:integer);
begin
  FIdOperacaoTransporteTriagem := value;
  FIdOperacaoTransporteTriagem_IsSet_ := true;
end;

procedure tOperacaoTransporteTriagemResponse.SetIdTriagemDocumentoObjeto(value:integer);
begin
  FIdTriagemDocumentoObjeto := value;
  FIdTriagemDocumentoObjeto_IsSet_ := true;
end;

procedure tOperacaoTransporteTriagemResponse.SetNomeDocumentoObjeto(value:string);
begin
  FNomeDocumentoObjeto := value;
  FNomeDocumentoObjeto_IsSet_ := true;
end;

procedure tOperacaoTransporteTriagemResponse.SetRelacionados(value:tArrayOfOperacaoTransporteTriagemRelacionadoResponse);
begin
  FRelacionados := value;
  FRelacionados_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteTriagemResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteTriagemResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if DataHoraRegistro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteTriagemResponse_DataHoraRegistro));
    xn.text := DateTimeToXMLDateTime(FDataHoraRegistro);
  end;
  if DocumentoObjeto_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteTriagemResponse_DocumentoObjeto));
    xn.text := FDocumentoObjeto;
  end;
  if ExibeEmTela_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteTriagemResponse_ExibeEmTela));
    xn.text := trgBoolToStr(FExibeEmTela);
  end;
  if ExigeDocumentoObjetoFisico_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteTriagemResponse_ExigeDocumentoObjetoFisico));
    xn.text := FExigeDocumentoObjetoFisico;
  end;
  if ExigeUpload_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteTriagemResponse_ExigeUpload));
    xn.text := FExigeUpload;
  end;
  if IdOperacaoTransporte_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteTriagemResponse_IdOperacaoTransporte));
    xn.text := IntToStr(FIdOperacaoTransporte);
  end;
  if IdOperacaoTransporteTriagem_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteTriagemResponse_IdOperacaoTransporteTriagem));
    xn.text := IntToStr(FIdOperacaoTransporteTriagem);
  end;
  if IdTriagemDocumentoObjeto_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteTriagemResponse_IdTriagemDocumentoObjeto));
    xn.text := IntToStr(FIdTriagemDocumentoObjeto);
  end;
  if NomeDocumentoObjeto_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteTriagemResponse_NomeDocumentoObjeto));
    xn.text := FNomeDocumentoObjeto;
  end;
  if Assigned(FRelacionados) then
  begin
    xn := aNode.addChildByName(snOperacaoTransporteTriagemResponse_Relacionados);
    FRelacionados.Save(xn);
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

class function tArrayOfOperacaoTransporteTriagemResponse.CreateFromXmlString(s: string): tArrayOfOperacaoTransporteTriagemResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tArrayOfOperacaoTransporteTriagemResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

class function tConferirDocumentacaoTriagemResponse.CreateFromXmlString(s: string): tConferirDocumentacaoTriagemResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tConferirDocumentacaoTriagemResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tConferirDocumentacaoTriagemResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snConferirDocumentacaoTriagemResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snConferirDocumentacaoTriagemResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snConferirDocumentacaoTriagemResponse_CIOT) then
      CIOT :=  xn.text // string
    else if (sn = snConferirDocumentacaoTriagemResponse_NomeContratado) then
      NomeContratado :=  xn.text // string
    else if (sn = snConferirDocumentacaoTriagemResponse_NomeContratante) then
      NomeContratante :=  xn.text // string
    else if (sn = snConferirDocumentacaoTriagemResponse_CPFCNPJContratado) then
      CPFCNPJContratado :=  xn.text // string
    else if (sn = snConferirDocumentacaoTriagemResponse_CPFCNPJContratante) then
      CPFCNPJContratante :=  xn.text // string
    else if (sn = snConferirDocumentacaoTriagemResponse_NomeMotorista) then
      NomeMotorista :=  xn.text // string
    else if (sn = snConferirDocumentacaoTriagemResponse_CPFMotorista) then
      CPFMotorista := StrToInt64Def(xn.text, 0)
    else if (sn = snConferirDocumentacaoTriagemResponse_Triada) then
      Triada := (xn.text = 'true')
    else if (sn = snConferirDocumentacaoTriagemResponse_Triagem) then
      FTriagem := tArrayOfOperacaoTransporteTriagemResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tConferirDocumentacaoTriagemResponse.Destroy;
begin
  if assigned(FTriagem) then  FTriagem.free;
  inherited;
end; // destructor ...

procedure tConferirDocumentacaoTriagemResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tConferirDocumentacaoTriagemResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tConferirDocumentacaoTriagemResponse.SetCIOT(value:string);
begin
  FCIOT := value;
  FCIOT_IsSet_ := true;
end;

procedure tConferirDocumentacaoTriagemResponse.SetNomeContratado(value:string);
begin
  FNomeContratado := value;
  FNomeContratado_IsSet_ := true;
end;

procedure tConferirDocumentacaoTriagemResponse.SetNomeContratante(value:string);
begin
  FNomeContratante := value;
  FNomeContratante_IsSet_ := true;
end;

procedure tConferirDocumentacaoTriagemResponse.SetCPFCNPJContratado(value:string);
begin
  FCPFCNPJContratado := value;
  FCPFCNPJContratado_IsSet_ := true;
end;

procedure tConferirDocumentacaoTriagemResponse.SetCPFCNPJContratante(value:string);
begin
  FCPFCNPJContratante := value;
  FCPFCNPJContratante_IsSet_ := true;
end;

procedure tConferirDocumentacaoTriagemResponse.SetNomeMotorista(value:string);
begin
  FNomeMotorista := value;
  FNomeMotorista_IsSet_ := true;
end;

procedure tConferirDocumentacaoTriagemResponse.SetCPFMotorista(value:int64);
begin
  FCPFMotorista := value;
  FCPFMotorista_IsSet_ := true;
end;

procedure tConferirDocumentacaoTriagemResponse.SetTriada(value:boolean);
begin
  FTriada := value;
  FTriada_IsSet_ := true;
end;

procedure tConferirDocumentacaoTriagemResponse.SetTriagem(value:tArrayOfOperacaoTransporteTriagemResponse);
begin
  FTriagem := value;
  FTriagem_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConferirDocumentacaoTriagemResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConferirDocumentacaoTriagemResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if CIOT_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConferirDocumentacaoTriagemResponse_CIOT));
    xn.text := FCIOT;
  end;
  if NomeContratado_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConferirDocumentacaoTriagemResponse_NomeContratado));
    xn.text := FNomeContratado;
  end;
  if NomeContratante_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConferirDocumentacaoTriagemResponse_NomeContratante));
    xn.text := FNomeContratante;
  end;
  if CPFCNPJContratado_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConferirDocumentacaoTriagemResponse_CPFCNPJContratado));
    xn.text := FCPFCNPJContratado;
  end;
  if CPFCNPJContratante_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConferirDocumentacaoTriagemResponse_CPFCNPJContratante));
    xn.text := FCPFCNPJContratante;
  end;
  if NomeMotorista_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConferirDocumentacaoTriagemResponse_NomeMotorista));
    xn.text := FNomeMotorista;
  end;
  if CPFMotorista_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConferirDocumentacaoTriagemResponse_CPFMotorista));
    xn.text := IntToStr(FCPFMotorista);
  end;
  if Triada_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConferirDocumentacaoTriagemResponse_Triada));
    xn.text := trgBoolToStr(FTriada);
  end;
  if Assigned(FTriagem) then
  begin
    xn := aNode.addChildByName(snConferirDocumentacaoTriagemResponse_Triagem);
    FTriagem.Save(xn);
  end;
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

class function tOperacaoTransporteParticipanteReponse.CreateFromXmlString(s: string): tOperacaoTransporteParticipanteReponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tOperacaoTransporteParticipanteReponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

class function tArrayOfOperacaoTransporteParticipanteReponse.CreateFromXmlString(s: string): tArrayOfOperacaoTransporteParticipanteReponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tArrayOfOperacaoTransporteParticipanteReponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

class function tOperacaoTransporteVeiculoResponse.CreateFromXmlString(s: string): tOperacaoTransporteVeiculoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tOperacaoTransporteVeiculoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

class function tArrayOfOperacaoTransporteVeiculoResponse.CreateFromXmlString(s: string): tArrayOfOperacaoTransporteVeiculoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tArrayOfOperacaoTransporteVeiculoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

class function tOperacaoTransporteParcelasResponse.CreateFromXmlString(s: string): tOperacaoTransporteParcelasResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tOperacaoTransporteParcelasResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tOperacaoTransporteParcelasResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snOperacaoTransporteParcelasResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snOperacaoTransporteParcelasResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snOperacaoTransporteParcelasResponse_AgenciaDeposito) then
      AgenciaDeposito :=  xn.text // string
    else if (sn = snOperacaoTransporteParcelasResponse_CIOTCompleto) then
      CIOTCompleto :=  xn.text // string
    else if (sn = snOperacaoTransporteParcelasResponse_Cancelada) then
      Cancelada := (xn.text = 'true')
    else if (sn = snOperacaoTransporteParcelasResponse_CartaoPagamento) then
      CartaoPagamento :=  xn.text // string
    else if (sn = snOperacaoTransporteParcelasResponse_CodigoBanco) then
      CodigoBanco :=  xn.text // string
    else if (sn = snOperacaoTransporteParcelasResponse_ContaDeposito) then
      ContaDeposito :=  xn.text // string
    else if (sn = snOperacaoTransporteParcelasResponse_DataHoraRegistro) then
      DataHoraRegistro := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snOperacaoTransporteParcelasResponse_DataPagamento) then
      DataPagamento := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snOperacaoTransporteParcelasResponse_DataVencimento) then
      DataVencimento := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snOperacaoTransporteParcelasResponse_DescricaoParcela) then
      DescricaoParcela :=  xn.text // string
    else if (sn = snOperacaoTransporteParcelasResponse_DigitoContaDeposito) then
      DigitoContaDeposito :=  xn.text // string
    else if (sn = snOperacaoTransporteParcelasResponse_FormaPagamento) then
      FormaPagamento := StrToIntDef(xn.text, 0)
    else if (sn = snOperacaoTransporteParcelasResponse_IdOperacaoTransporteParcela) then
      IdOperacaoTransporteParcela := StrToIntDef(xn.text, 0)
    else if (sn = snOperacaoTransporteParcelasResponse_NumeroParcela) then
      NumeroParcela := StrToIntDef(xn.text, 0)
    else if (sn = snOperacaoTransporteParcelasResponse_QuantidadeParcelas) then
      QuantidadeParcelas := StrToIntDef(xn.text, 0)
    else if (sn = snOperacaoTransporteParcelasResponse_StatusParcela) then
      StatusParcela := StrToIntDef(xn.text, 0)
    else if (sn = snOperacaoTransporteParcelasResponse_Valor) then
      Valor := DefStrToFloat(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tOperacaoTransporteParcelasResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tOperacaoTransporteParcelasResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tOperacaoTransporteParcelasResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tOperacaoTransporteParcelasResponse.SetAgenciaDeposito(value:string);
begin
  FAgenciaDeposito := value;
  FAgenciaDeposito_IsSet_ := true;
end;

procedure tOperacaoTransporteParcelasResponse.SetCIOTCompleto(value:string);
begin
  FCIOTCompleto := value;
  FCIOTCompleto_IsSet_ := true;
end;

procedure tOperacaoTransporteParcelasResponse.SetCancelada(value:boolean);
begin
  FCancelada := value;
  FCancelada_IsSet_ := true;
end;

procedure tOperacaoTransporteParcelasResponse.SetCartaoPagamento(value:string);
begin
  FCartaoPagamento := value;
  FCartaoPagamento_IsSet_ := true;
end;

procedure tOperacaoTransporteParcelasResponse.SetCodigoBanco(value:string);
begin
  FCodigoBanco := value;
  FCodigoBanco_IsSet_ := true;
end;

procedure tOperacaoTransporteParcelasResponse.SetContaDeposito(value:string);
begin
  FContaDeposito := value;
  FContaDeposito_IsSet_ := true;
end;

procedure tOperacaoTransporteParcelasResponse.SetDataHoraRegistro(value:tDateTime);
begin
  FDataHoraRegistro := value;
  FDataHoraRegistro_IsSet_ := true;
end;

procedure tOperacaoTransporteParcelasResponse.SetDataPagamento(value:tDateTime);
begin
  FDataPagamento := value;
  FDataPagamento_IsSet_ := true;
end;

procedure tOperacaoTransporteParcelasResponse.SetDataVencimento(value:tDateTime);
begin
  FDataVencimento := value;
  FDataVencimento_IsSet_ := true;
end;

procedure tOperacaoTransporteParcelasResponse.SetDescricaoParcela(value:string);
begin
  FDescricaoParcela := value;
  FDescricaoParcela_IsSet_ := true;
end;

procedure tOperacaoTransporteParcelasResponse.SetDigitoContaDeposito(value:string);
begin
  FDigitoContaDeposito := value;
  FDigitoContaDeposito_IsSet_ := true;
end;

procedure tOperacaoTransporteParcelasResponse.SetFormaPagamento(value:integer);
begin
  FFormaPagamento := value;
  FFormaPagamento_IsSet_ := true;
end;

procedure tOperacaoTransporteParcelasResponse.SetIdOperacaoTransporteParcela(value:integer);
begin
  FIdOperacaoTransporteParcela := value;
  FIdOperacaoTransporteParcela_IsSet_ := true;
end;

procedure tOperacaoTransporteParcelasResponse.SetNumeroParcela(value:integer);
begin
  FNumeroParcela := value;
  FNumeroParcela_IsSet_ := true;
end;

procedure tOperacaoTransporteParcelasResponse.SetQuantidadeParcelas(value:integer);
begin
  FQuantidadeParcelas := value;
  FQuantidadeParcelas_IsSet_ := true;
end;

procedure tOperacaoTransporteParcelasResponse.SetStatusParcela(value:integer);
begin
  FStatusParcela := value;
  FStatusParcela_IsSet_ := true;
end;

procedure tOperacaoTransporteParcelasResponse.SetValor(value:extended);
begin
  FValor := value;
  FValor_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteParcelasResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteParcelasResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if AgenciaDeposito_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteParcelasResponse_AgenciaDeposito));
    xn.text := FAgenciaDeposito;
  end;
  if CIOTCompleto_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteParcelasResponse_CIOTCompleto));
    xn.text := FCIOTCompleto;
  end;
  if Cancelada_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteParcelasResponse_Cancelada));
    xn.text := trgBoolToStr(FCancelada);
  end;
  if CartaoPagamento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteParcelasResponse_CartaoPagamento));
    xn.text := FCartaoPagamento;
  end;
  if CodigoBanco_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteParcelasResponse_CodigoBanco));
    xn.text := FCodigoBanco;
  end;
  if ContaDeposito_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteParcelasResponse_ContaDeposito));
    xn.text := FContaDeposito;
  end;
  if DataHoraRegistro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteParcelasResponse_DataHoraRegistro));
    xn.text := DateTimeToXMLDateTime(FDataHoraRegistro);
  end;
  if DataPagamento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteParcelasResponse_DataPagamento));
    xn.text := DateTimeToXMLDateTime(FDataPagamento);
  end;
  if DataVencimento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteParcelasResponse_DataVencimento));
    xn.text := DateTimeToXMLDateTime(FDataVencimento);
  end;
  if DescricaoParcela_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteParcelasResponse_DescricaoParcela));
    xn.text := FDescricaoParcela;
  end;
  if DigitoContaDeposito_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteParcelasResponse_DigitoContaDeposito));
    xn.text := FDigitoContaDeposito;
  end;
  if FormaPagamento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteParcelasResponse_FormaPagamento));
    xn.text := IntToStr(FFormaPagamento);
  end;
  if IdOperacaoTransporteParcela_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteParcelasResponse_IdOperacaoTransporteParcela));
    xn.text := IntToStr(FIdOperacaoTransporteParcela);
  end;
  if NumeroParcela_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteParcelasResponse_NumeroParcela));
    xn.text := IntToStr(FNumeroParcela);
  end;
  if QuantidadeParcelas_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteParcelasResponse_QuantidadeParcelas));
    xn.text := IntToStr(FQuantidadeParcelas);
  end;
  if StatusParcela_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteParcelasResponse_StatusParcela));
    xn.text := IntToStr(FStatusParcela);
  end;
  if Valor_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteParcelasResponse_Valor));
    xn.text := MyFloatToStr(FValor);
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

class function tArrayOfOperacaoTransporteParcelasResponse.CreateFromXmlString(s: string): tArrayOfOperacaoTransporteParcelasResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tArrayOfOperacaoTransporteParcelasResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

      FOperacaoTransporteParcelasResponse.AddObject('p', tOperacaoTransporteParcelasResponse.Create( xn ) );
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

class function tOperacaoTransporteResponse.CreateFromXmlString(s: string): tOperacaoTransporteResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tOperacaoTransporteResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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
  if assigned(FParcelas) then  FParcelas.free;
  if assigned(FVeiculos) then  FVeiculos.free;
  if assigned(FParticipantes) then  FParticipantes.free;
  if assigned(FTriagem) then  FTriagem.free;
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
    xn.text := trgBoolToStr(FParcelaUnica);
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
    xn.text := trgBoolToStr(FQuitacao);
  end;
  if Triada_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snOperacaoTransporteResponse_Triada));
    xn.text := trgBoolToStr(FTriada);
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

class function tObterOperacaoTransporteResponse.CreateFromXmlString(s: string): tObterOperacaoTransporteResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterOperacaoTransporteResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterOperacaoTransporteResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterOperacaoTransporteResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snObterOperacaoTransporteResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snObterOperacaoTransporteResponse_OperacaoTransporte) then
      FOperacaoTransporte := tOperacaoTransporteResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterOperacaoTransporteResponse.Destroy;
begin
  if assigned(FOperacaoTransporte) then  FOperacaoTransporte.free;
  inherited;
end; // destructor ...

procedure tObterOperacaoTransporteResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tObterOperacaoTransporteResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tObterOperacaoTransporteResponse.SetOperacaoTransporte(value:tOperacaoTransporteResponse);
begin
  FOperacaoTransporte := value;
  FOperacaoTransporte_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterOperacaoTransporteResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterOperacaoTransporteResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if Assigned(FOperacaoTransporte) then
  begin
    xn := aNode.addChildByName(snObterOperacaoTransporteResponse_OperacaoTransporte);
    FOperacaoTransporte.Save(xn);
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

class function tBuscaOperacaoTransporteParcelasResponse.CreateFromXmlString(s: string): tBuscaOperacaoTransporteParcelasResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscaOperacaoTransporteParcelasResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscaOperacaoTransporteParcelasResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snBuscaOperacaoTransporteParcelasResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snBuscaOperacaoTransporteParcelasResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snBuscaOperacaoTransporteParcelasResponse_OperacaoTransporteParcelas) then
      FOperacaoTransporteParcelas := tArrayOfOperacaoTransporteParcelasResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tBuscaOperacaoTransporteParcelasResponse.Destroy;
begin
  if assigned(FOperacaoTransporteParcelas) then  FOperacaoTransporteParcelas.free;
  inherited;
end; // destructor ...

procedure tBuscaOperacaoTransporteParcelasResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tBuscaOperacaoTransporteParcelasResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tBuscaOperacaoTransporteParcelasResponse.SetOperacaoTransporteParcelas(value:tArrayOfOperacaoTransporteParcelasResponse);
begin
  FOperacaoTransporteParcelas := value;
  FOperacaoTransporteParcelas_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscaOperacaoTransporteParcelasResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscaOperacaoTransporteParcelasResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if Assigned(FOperacaoTransporteParcelas) then
  begin
    xn := aNode.addChildByName(snBuscaOperacaoTransporteParcelasResponse_OperacaoTransporteParcelas);
    FOperacaoTransporteParcelas.Save(xn);
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

class function tFinalizacaoOperacaoTransporteResponse.CreateFromXmlString(s: string): tFinalizacaoOperacaoTransporteResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tFinalizacaoOperacaoTransporteResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tFinalizacaoOperacaoTransporteResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snFinalizacaoOperacaoTransporteResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snFinalizacaoOperacaoTransporteResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snFinalizacaoOperacaoTransporteResponse_DataHoraFinalizacao) then
      DataHoraFinalizacao := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tFinalizacaoOperacaoTransporteResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tFinalizacaoOperacaoTransporteResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tFinalizacaoOperacaoTransporteResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tFinalizacaoOperacaoTransporteResponse.SetDataHoraFinalizacao(value:tDateTime);
begin
  FDataHoraFinalizacao := value;
  FDataHoraFinalizacao_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snFinalizacaoOperacaoTransporteResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snFinalizacaoOperacaoTransporteResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if DataHoraFinalizacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snFinalizacaoOperacaoTransporteResponse_DataHoraFinalizacao));
    xn.text := DateTimeToXMLDateTime(FDataHoraFinalizacao);
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

class function tEncerramentoOperacaoTransporteResponse.CreateFromXmlString(s: string): tEncerramentoOperacaoTransporteResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tEncerramentoOperacaoTransporteResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tEncerramentoOperacaoTransporteResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snEncerramentoOperacaoTransporteResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snEncerramentoOperacaoTransporteResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snEncerramentoOperacaoTransporteResponse_DataEncerramento) then
      DataEncerramento := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snEncerramentoOperacaoTransporteResponse_IdEncerramentoOperacaoTransporte) then
      IdEncerramentoOperacaoTransporte := StrToIntDef(xn.text, 0)
    else if (sn = snEncerramentoOperacaoTransporteResponse_ObservacaoAvariaContratante) then
      ObservacaoAvariaContratante :=  xn.text // string
    else if (sn = snEncerramentoOperacaoTransporteResponse_ProtocoloEncerramento) then
      ProtocoloEncerramento :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tEncerramentoOperacaoTransporteResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tEncerramentoOperacaoTransporteResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tEncerramentoOperacaoTransporteResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tEncerramentoOperacaoTransporteResponse.SetDataEncerramento(value:tDateTime);
begin
  FDataEncerramento := value;
  FDataEncerramento_IsSet_ := true;
end;

procedure tEncerramentoOperacaoTransporteResponse.SetIdEncerramentoOperacaoTransporte(value:integer);
begin
  FIdEncerramentoOperacaoTransporte := value;
  FIdEncerramentoOperacaoTransporte_IsSet_ := true;
end;

procedure tEncerramentoOperacaoTransporteResponse.SetObservacaoAvariaContratante(value:string);
begin
  FObservacaoAvariaContratante := value;
  FObservacaoAvariaContratante_IsSet_ := true;
end;

procedure tEncerramentoOperacaoTransporteResponse.SetProtocoloEncerramento(value:string);
begin
  FProtocoloEncerramento := value;
  FProtocoloEncerramento_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEncerramentoOperacaoTransporteResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEncerramentoOperacaoTransporteResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if DataEncerramento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEncerramentoOperacaoTransporteResponse_DataEncerramento));
    xn.text := DateTimeToXMLDateTime(FDataEncerramento);
  end;
  if IdEncerramentoOperacaoTransporte_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEncerramentoOperacaoTransporteResponse_IdEncerramentoOperacaoTransporte));
    xn.text := IntToStr(FIdEncerramentoOperacaoTransporte);
  end;
  if ObservacaoAvariaContratante_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEncerramentoOperacaoTransporteResponse_ObservacaoAvariaContratante));
    xn.text := FObservacaoAvariaContratante;
  end;
  if ProtocoloEncerramento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEncerramentoOperacaoTransporteResponse_ProtocoloEncerramento));
    xn.text := FProtocoloEncerramento;
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

class function tOperacaoTransporteViagemRequest.CreateFromXmlString(s: string): tOperacaoTransporteViagemRequest;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tOperacaoTransporteViagemRequest.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

class function tArrayOfOperacaoTransporteViagemRequest.CreateFromXmlString(s: string): tArrayOfOperacaoTransporteViagemRequest;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tArrayOfOperacaoTransporteViagemRequest.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

class function tRetificacaoOperacaoTransporteResponse.CreateFromXmlString(s: string): tRetificacaoOperacaoTransporteResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tRetificacaoOperacaoTransporteResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tRetificacaoOperacaoTransporteResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snRetificacaoOperacaoTransporteResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snRetificacaoOperacaoTransporteResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snRetificacaoOperacaoTransporteResponse_DataHoraRetificacao) then
      DataHoraRetificacao := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snRetificacaoOperacaoTransporteResponse_IdRetificacaoOperacaoTransporte) then
      IdRetificacaoOperacaoTransporte := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tRetificacaoOperacaoTransporteResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tRetificacaoOperacaoTransporteResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tRetificacaoOperacaoTransporteResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tRetificacaoOperacaoTransporteResponse.SetDataHoraRetificacao(value:tDateTime);
begin
  FDataHoraRetificacao := value;
  FDataHoraRetificacao_IsSet_ := true;
end;

procedure tRetificacaoOperacaoTransporteResponse.SetIdRetificacaoOperacaoTransporte(value:integer);
begin
  FIdRetificacaoOperacaoTransporte := value;
  FIdRetificacaoOperacaoTransporte_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetificacaoOperacaoTransporteResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetificacaoOperacaoTransporteResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if DataHoraRetificacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetificacaoOperacaoTransporteResponse_DataHoraRetificacao));
    xn.text := DateTimeToXMLDateTime(FDataHoraRetificacao);
  end;
  if IdRetificacaoOperacaoTransporte_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetificacaoOperacaoTransporteResponse_IdRetificacaoOperacaoTransporte));
    xn.text := IntToStr(FIdRetificacaoOperacaoTransporte);
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

class function tCancelamentoOperacaoTransporteResponse.CreateFromXmlString(s: string): tCancelamentoOperacaoTransporteResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCancelamentoOperacaoTransporteResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCancelamentoOperacaoTransporteResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snCancelamentoOperacaoTransporteResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snCancelamentoOperacaoTransporteResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snCancelamentoOperacaoTransporteResponse_DataCancelamento) then
      DataCancelamento := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snCancelamentoOperacaoTransporteResponse_IdCancelamentoOperacaoTransporte) then
      IdCancelamentoOperacaoTransporte := StrToIntDef(xn.text, 0)
    else if (sn = snCancelamentoOperacaoTransporteResponse_ProtocoloCancelamento) then
      ProtocoloCancelamento :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tCancelamentoOperacaoTransporteResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCancelamentoOperacaoTransporteResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tCancelamentoOperacaoTransporteResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tCancelamentoOperacaoTransporteResponse.SetDataCancelamento(value:tDateTime);
begin
  FDataCancelamento := value;
  FDataCancelamento_IsSet_ := true;
end;

procedure tCancelamentoOperacaoTransporteResponse.SetIdCancelamentoOperacaoTransporte(value:integer);
begin
  FIdCancelamentoOperacaoTransporte := value;
  FIdCancelamentoOperacaoTransporte_IsSet_ := true;
end;

procedure tCancelamentoOperacaoTransporteResponse.SetProtocoloCancelamento(value:string);
begin
  FProtocoloCancelamento := value;
  FProtocoloCancelamento_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCancelamentoOperacaoTransporteResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCancelamentoOperacaoTransporteResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if DataCancelamento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCancelamentoOperacaoTransporteResponse_DataCancelamento));
    xn.text := DateTimeToXMLDateTime(FDataCancelamento);
  end;
  if IdCancelamentoOperacaoTransporte_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCancelamentoOperacaoTransporteResponse_IdCancelamentoOperacaoTransporte));
    xn.text := IntToStr(FIdCancelamentoOperacaoTransporte);
  end;
  if ProtocoloCancelamento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCancelamentoOperacaoTransporteResponse_ProtocoloCancelamento));
    xn.text := FProtocoloCancelamento;
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

class function tRegistroOperacaoTransporteResponse.CreateFromXmlString(s: string): tRegistroOperacaoTransporteResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tRegistroOperacaoTransporteResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tRegistroOperacaoTransporteResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snRegistroOperacaoTransporteResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snRegistroOperacaoTransporteResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snRegistroOperacaoTransporteResponse_DataHoraRegistro) then
      DataHoraRegistro := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snRegistroOperacaoTransporteResponse_IdOperacaoTransporte) then
      IdOperacaoTransporte := StrToIntDef(xn.text, 0)
    else if (sn = snRegistroOperacaoTransporteResponse_NumeroCIOT) then
      NumeroCIOT :=  xn.text // string
    else if (sn = snRegistroOperacaoTransporteResponse_ProtocoloCIOT) then
      ProtocoloCIOT :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tRegistroOperacaoTransporteResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tRegistroOperacaoTransporteResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tRegistroOperacaoTransporteResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tRegistroOperacaoTransporteResponse.SetDataHoraRegistro(value:tDateTime);
begin
  FDataHoraRegistro := value;
  FDataHoraRegistro_IsSet_ := true;
end;

procedure tRegistroOperacaoTransporteResponse.SetIdOperacaoTransporte(value:integer);
begin
  FIdOperacaoTransporte := value;
  FIdOperacaoTransporte_IsSet_ := true;
end;

procedure tRegistroOperacaoTransporteResponse.SetNumeroCIOT(value:string);
begin
  FNumeroCIOT := value;
  FNumeroCIOT_IsSet_ := true;
end;

procedure tRegistroOperacaoTransporteResponse.SetProtocoloCIOT(value:string);
begin
  FProtocoloCIOT := value;
  FProtocoloCIOT_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRegistroOperacaoTransporteResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRegistroOperacaoTransporteResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if DataHoraRegistro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRegistroOperacaoTransporteResponse_DataHoraRegistro));
    xn.text := DateTimeToXMLDateTime(FDataHoraRegistro);
  end;
  if IdOperacaoTransporte_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRegistroOperacaoTransporteResponse_IdOperacaoTransporte));
    xn.text := IntToStr(FIdOperacaoTransporte);
  end;
  if NumeroCIOT_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRegistroOperacaoTransporteResponse_NumeroCIOT));
    xn.text := FNumeroCIOT;
  end;
  if ProtocoloCIOT_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRegistroOperacaoTransporteResponse_ProtocoloCIOT));
    xn.text := FProtocoloCIOT;
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

class function tCadastroOperacaoTransporteResponse.CreateFromXmlString(s: string): tCadastroOperacaoTransporteResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastroOperacaoTransporteResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCadastroOperacaoTransporteResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snCadastroOperacaoTransporteResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snCadastroOperacaoTransporteResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snCadastroOperacaoTransporteResponse_DataHoraCadastro) then
      DataHoraCadastro := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snCadastroOperacaoTransporteResponse_IdOperacaoTransporte) then
      IdOperacaoTransporte := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tCadastroOperacaoTransporteResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCadastroOperacaoTransporteResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tCadastroOperacaoTransporteResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tCadastroOperacaoTransporteResponse.SetDataHoraCadastro(value:tDateTime);
begin
  FDataHoraCadastro := value;
  FDataHoraCadastro_IsSet_ := true;
end;

procedure tCadastroOperacaoTransporteResponse.SetIdOperacaoTransporte(value:integer);
begin
  FIdOperacaoTransporte := value;
  FIdOperacaoTransporte_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroOperacaoTransporteResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroOperacaoTransporteResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if DataHoraCadastro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroOperacaoTransporteResponse_DataHoraCadastro));
    xn.text := DateTimeToXMLDateTime(FDataHoraCadastro);
  end;
  if IdOperacaoTransporte_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroOperacaoTransporteResponse_IdOperacaoTransporte));
    xn.text := IntToStr(FIdOperacaoTransporte);
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

class function tAnulacaoOperacaoTransporteResponse.CreateFromXmlString(s: string): tAnulacaoOperacaoTransporteResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAnulacaoOperacaoTransporteResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAnulacaoOperacaoTransporteResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snAnulacaoOperacaoTransporteResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snAnulacaoOperacaoTransporteResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snAnulacaoOperacaoTransporteResponse_DataHoraCadastro) then
      DataHoraCadastro := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snAnulacaoOperacaoTransporteResponse_IdOperacaoTransporte) then
      IdOperacaoTransporte := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tAnulacaoOperacaoTransporteResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAnulacaoOperacaoTransporteResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tAnulacaoOperacaoTransporteResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tAnulacaoOperacaoTransporteResponse.SetDataHoraCadastro(value:tDateTime);
begin
  FDataHoraCadastro := value;
  FDataHoraCadastro_IsSet_ := true;
end;

procedure tAnulacaoOperacaoTransporteResponse.SetIdOperacaoTransporte(value:integer);
begin
  FIdOperacaoTransporte := value;
  FIdOperacaoTransporte_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAnulacaoOperacaoTransporteResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAnulacaoOperacaoTransporteResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if DataHoraCadastro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAnulacaoOperacaoTransporteResponse_DataHoraCadastro));
    xn.text := DateTimeToXMLDateTime(FDataHoraCadastro);
  end;
  if IdOperacaoTransporte_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAnulacaoOperacaoTransporteResponse_IdOperacaoTransporte));
    xn.text := IntToStr(FIdOperacaoTransporte);
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

class function tAnulacaoOperacaoTransporteRequest.CreateFromXmlString(s: string): tAnulacaoOperacaoTransporteRequest;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAnulacaoOperacaoTransporteRequest.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

class function tAtualizarOperacaoResponse.CreateFromXmlString(s: string): tAtualizarOperacaoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAtualizarOperacaoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAtualizarOperacaoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snAtualizarOperacaoResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snAtualizarOperacaoResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snAtualizarOperacaoResponse_DataHoraAtualizacao) then
      DataHoraAtualizacao := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snAtualizarOperacaoResponse_IdOperacaoTransporte) then
      IdOperacaoTransporte := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tAtualizarOperacaoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAtualizarOperacaoResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tAtualizarOperacaoResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tAtualizarOperacaoResponse.SetDataHoraAtualizacao(value:tDateTime);
begin
  FDataHoraAtualizacao := value;
  FDataHoraAtualizacao_IsSet_ := true;
end;

procedure tAtualizarOperacaoResponse.SetIdOperacaoTransporte(value:integer);
begin
  FIdOperacaoTransporte := value;
  FIdOperacaoTransporte_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarOperacaoResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarOperacaoResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if DataHoraAtualizacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarOperacaoResponse_DataHoraAtualizacao));
    xn.text := DateTimeToXMLDateTime(FDataHoraAtualizacao);
  end;
  if IdOperacaoTransporte_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarOperacaoResponse_IdOperacaoTransporte));
    xn.text := IntToStr(FIdOperacaoTransporte);
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

class function tOperacaoTransporteTriagemRelacionadoRequest.CreateFromXmlString(s: string): tOperacaoTransporteTriagemRelacionadoRequest;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tOperacaoTransporteTriagemRelacionadoRequest.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

class function tArrayOfOperacaoTransporteTriagemRelacionadoRequest.CreateFromXmlString(s: string): tArrayOfOperacaoTransporteTriagemRelacionadoRequest;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tArrayOfOperacaoTransporteTriagemRelacionadoRequest.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

class function tOperacaoTransporteTriagemRequest.CreateFromXmlString(s: string): tOperacaoTransporteTriagemRequest;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tOperacaoTransporteTriagemRequest.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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
  if assigned(FRelacionados) then  FRelacionados.free;
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

class function tArrayOfOperacaoTransporteTriagemRequest.CreateFromXmlString(s: string): tArrayOfOperacaoTransporteTriagemRequest;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tArrayOfOperacaoTransporteTriagemRequest.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

class function tOperacaoTransporteParticipanteRequest.CreateFromXmlString(s: string): tOperacaoTransporteParticipanteRequest;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tOperacaoTransporteParticipanteRequest.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

class function tArrayOfOperacaoTransporteParticipanteRequest.CreateFromXmlString(s: string): tArrayOfOperacaoTransporteParticipanteRequest;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tArrayOfOperacaoTransporteParticipanteRequest.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

class function tOperacaoTransporteVeiculoRequest.CreateFromXmlString(s: string): tOperacaoTransporteVeiculoRequest;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tOperacaoTransporteVeiculoRequest.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

class function tArrayOfOperacaoTransporteVeiculoRequest.CreateFromXmlString(s: string): tArrayOfOperacaoTransporteVeiculoRequest;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tArrayOfOperacaoTransporteVeiculoRequest.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

class function tRetificacaoPlacasOperacaoTransporteRequest.CreateFromXmlString(s: string): tRetificacaoPlacasOperacaoTransporteRequest;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tRetificacaoPlacasOperacaoTransporteRequest.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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
  if assigned(FVeiculos) then  FVeiculos.free;
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

class function tOperacaoTransporteParcelaRequest.CreateFromXmlString(s: string): tOperacaoTransporteParcelaRequest;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tOperacaoTransporteParcelaRequest.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

class function tArrayOfOperacaoTransporteParcelaRequest.CreateFromXmlString(s: string): tArrayOfOperacaoTransporteParcelaRequest;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tArrayOfOperacaoTransporteParcelaRequest.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

class function tEncerramentoOperacaoTransporteRequest.CreateFromXmlString(s: string): tEncerramentoOperacaoTransporteRequest;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tEncerramentoOperacaoTransporteRequest.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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
  if assigned(FParcelas) then  FParcelas.free;
  if assigned(FViagens) then  FViagens.free;
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
    xn.text := trgBoolToStr(FHouveRetificacao);
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

class function tRetificacaoOperacaoTransporteRequest.CreateFromXmlString(s: string): tRetificacaoOperacaoTransporteRequest;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tRetificacaoOperacaoTransporteRequest.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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
  if assigned(FParcelas) then  FParcelas.free;
  if assigned(FVeiculos) then  FVeiculos.free;
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

class function tAtualizarOperacaoRequest.CreateFromXmlString(s: string): tAtualizarOperacaoRequest;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAtualizarOperacaoRequest.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAtualizarOperacaoRequest.Create(aRoot:tJanXMLNode2);
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
    if (sn = snAtualizarOperacaoRequest_CodigoCentroDeCusto) then
      CodigoCentroDeCusto :=  xn.text // string
    else if (sn = snAtualizarOperacaoRequest_NCM) then
      NCM :=  xn.text // string
    else if (sn = snAtualizarOperacaoRequest_ProprietarioCarga) then
      ProprietarioCarga :=  xn.text // string
    else if (sn = snAtualizarOperacaoRequest_PesoCarga) then
      PesoCarga := DefStrToFloat(xn.text, 0)
    else if (sn = snAtualizarOperacaoRequest_TipoOperacao) then
      TipoOperacao :=  xn.text // string
    else if (sn = snAtualizarOperacaoRequest_MunicipioOrigemCodigoIBGE) then
      MunicipioOrigemCodigoIBGE := StrToIntDef(xn.text, 0)
    else if (sn = snAtualizarOperacaoRequest_MunicipioDestinoCodigoIBGE) then
      MunicipioDestinoCodigoIBGE := StrToIntDef(xn.text, 0)
    else if (sn = snAtualizarOperacaoRequest_DataHoraInicio) then
      DataHoraInicio := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snAtualizarOperacaoRequest_DataHoraTermino) then
      DataHoraTermino := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snAtualizarOperacaoRequest_DataHoraInicioCadastro) then
      DataHoraInicioCadastro := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snAtualizarOperacaoRequest_DataHoraFimCadastro) then
      DataHoraFimCadastro := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snAtualizarOperacaoRequest_CPFCNPJContratado) then
      CPFCNPJContratado :=  xn.text // string
    else if (sn = snAtualizarOperacaoRequest_ValorFrete) then
      ValorFrete := DefStrToFloat(xn.text, 0)
    else if (sn = snAtualizarOperacaoRequest_ValorCombustivel) then
      ValorCombustivel := DefStrToFloat(xn.text, 0)
    else if (sn = snAtualizarOperacaoRequest_ValorPedagio) then
      ValorPedagio := DefStrToFloat(xn.text, 0)
    else if (sn = snAtualizarOperacaoRequest_ValorDespesas) then
      ValorDespesas := DefStrToFloat(xn.text, 0)
    else if (sn = snAtualizarOperacaoRequest_ValorImpostoSestSenat) then
      ValorImpostoSestSenat := DefStrToFloat(xn.text, 0)
    else if (sn = snAtualizarOperacaoRequest_ValorImpostoIRRF) then
      ValorImpostoIRRF := DefStrToFloat(xn.text, 0)
    else if (sn = snAtualizarOperacaoRequest_ValorImpostoINSS) then
      ValorImpostoINSS := DefStrToFloat(xn.text, 0)
    else if (sn = snAtualizarOperacaoRequest_ValorImpostoIcmsIssqn) then
      ValorImpostoIcmsIssqn := DefStrToFloat(xn.text, 0)
    else if (sn = snAtualizarOperacaoRequest_ParcelaUnica) then
      ParcelaUnica := (xn.text = 'true')
    else if (sn = snAtualizarOperacaoRequest_ModoCompraValePedagio) then
      ModoCompraValePedagio := StrToIntDef(xn.text, 0)
    else if (sn = snAtualizarOperacaoRequest_CategoriaVeiculo) then
      CategoriaVeiculo := StrToIntDef(xn.text, 0)
    else if (sn = snAtualizarOperacaoRequest_NomeMotorista) then
      NomeMotorista :=  xn.text // string
    else if (sn = snAtualizarOperacaoRequest_CPFMotorista) then
      CPFMotorista := StrToInt64Def(xn.text, 0)
    else if (sn = snAtualizarOperacaoRequest_RNTRCMotorista) then
      RNTRCMotorista :=  xn.text // string
    else if (sn = snAtualizarOperacaoRequest_Quitacao) then
      Quitacao := (xn.text = 'true')
    else if (sn = snAtualizarOperacaoRequest_ItemFinanceiro) then
      ItemFinanceiro :=  xn.text // string
    else if (sn = snAtualizarOperacaoRequest_Parcelas) then
      FParcelas := tArrayOfOperacaoTransporteParcelaRequest.Create(xn)
    else if (sn = snAtualizarOperacaoRequest_Veiculos) then
      FVeiculos := tArrayOfOperacaoTransporteVeiculoRequest.Create(xn)
    else if (sn = snAtualizarOperacaoRequest_Participantes) then
      FParticipantes := tArrayOfOperacaoTransporteParticipanteRequest.Create(xn)
    else if (sn = snAtualizarOperacaoRequest_Triagem) then
      FTriagem := tArrayOfOperacaoTransporteTriagemRequest.Create(xn)
    else if (sn = snAtualizarOperacaoRequest_CodigoOperacao) then
      CodigoOperacao := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tAtualizarOperacaoRequest.Destroy;
begin
  if assigned(FParcelas) then  FParcelas.free;
  if assigned(FVeiculos) then  FVeiculos.free;
  if assigned(FParticipantes) then  FParticipantes.free;
  if assigned(FTriagem) then  FTriagem.free;
  inherited;
end; // destructor ...

procedure tAtualizarOperacaoRequest.SetCodigoCentroDeCusto(value:string);
begin
  FCodigoCentroDeCusto := value;
  FCodigoCentroDeCusto_IsSet_ := true;
end;

procedure tAtualizarOperacaoRequest.SetNCM(value:string);
begin
  FNCM := value;
  FNCM_IsSet_ := true;
end;

procedure tAtualizarOperacaoRequest.SetProprietarioCarga(value:string);
begin
  FProprietarioCarga := value;
  FProprietarioCarga_IsSet_ := true;
end;

procedure tAtualizarOperacaoRequest.SetPesoCarga(value:extended);
begin
  FPesoCarga := value;
  FPesoCarga_IsSet_ := true;
end;

procedure tAtualizarOperacaoRequest.SetTipoOperacao(value:string);
begin
  FTipoOperacao := value;
  FTipoOperacao_IsSet_ := true;
end;

procedure tAtualizarOperacaoRequest.SetMunicipioOrigemCodigoIBGE(value:integer);
begin
  FMunicipioOrigemCodigoIBGE := value;
  FMunicipioOrigemCodigoIBGE_IsSet_ := true;
end;

procedure tAtualizarOperacaoRequest.SetMunicipioDestinoCodigoIBGE(value:integer);
begin
  FMunicipioDestinoCodigoIBGE := value;
  FMunicipioDestinoCodigoIBGE_IsSet_ := true;
end;

procedure tAtualizarOperacaoRequest.SetDataHoraInicio(value:tDateTime);
begin
  FDataHoraInicio := value;
  FDataHoraInicio_IsSet_ := true;
end;

procedure tAtualizarOperacaoRequest.SetDataHoraTermino(value:tDateTime);
begin
  FDataHoraTermino := value;
  FDataHoraTermino_IsSet_ := true;
end;

procedure tAtualizarOperacaoRequest.SetDataHoraInicioCadastro(value:tDateTime);
begin
  FDataHoraInicioCadastro := value;
  FDataHoraInicioCadastro_IsSet_ := true;
end;

procedure tAtualizarOperacaoRequest.SetDataHoraFimCadastro(value:tDateTime);
begin
  FDataHoraFimCadastro := value;
  FDataHoraFimCadastro_IsSet_ := true;
end;

procedure tAtualizarOperacaoRequest.SetCPFCNPJContratado(value:string);
begin
  FCPFCNPJContratado := value;
  FCPFCNPJContratado_IsSet_ := true;
end;

procedure tAtualizarOperacaoRequest.SetValorFrete(value:extended);
begin
  FValorFrete := value;
  FValorFrete_IsSet_ := true;
end;

procedure tAtualizarOperacaoRequest.SetValorCombustivel(value:extended);
begin
  FValorCombustivel := value;
  FValorCombustivel_IsSet_ := true;
end;

procedure tAtualizarOperacaoRequest.SetValorPedagio(value:extended);
begin
  FValorPedagio := value;
  FValorPedagio_IsSet_ := true;
end;

procedure tAtualizarOperacaoRequest.SetValorDespesas(value:extended);
begin
  FValorDespesas := value;
  FValorDespesas_IsSet_ := true;
end;

procedure tAtualizarOperacaoRequest.SetValorImpostoSestSenat(value:extended);
begin
  FValorImpostoSestSenat := value;
  FValorImpostoSestSenat_IsSet_ := true;
end;

procedure tAtualizarOperacaoRequest.SetValorImpostoIRRF(value:extended);
begin
  FValorImpostoIRRF := value;
  FValorImpostoIRRF_IsSet_ := true;
end;

procedure tAtualizarOperacaoRequest.SetValorImpostoINSS(value:extended);
begin
  FValorImpostoINSS := value;
  FValorImpostoINSS_IsSet_ := true;
end;

procedure tAtualizarOperacaoRequest.SetValorImpostoIcmsIssqn(value:extended);
begin
  FValorImpostoIcmsIssqn := value;
  FValorImpostoIcmsIssqn_IsSet_ := true;
end;

procedure tAtualizarOperacaoRequest.SetParcelaUnica(value:boolean);
begin
  FParcelaUnica := value;
  FParcelaUnica_IsSet_ := true;
end;

procedure tAtualizarOperacaoRequest.SetModoCompraValePedagio(value:integer);
begin
  FModoCompraValePedagio := value;
  FModoCompraValePedagio_IsSet_ := true;
end;

procedure tAtualizarOperacaoRequest.SetCategoriaVeiculo(value:integer);
begin
  FCategoriaVeiculo := value;
  FCategoriaVeiculo_IsSet_ := true;
end;

procedure tAtualizarOperacaoRequest.SetNomeMotorista(value:string);
begin
  FNomeMotorista := value;
  FNomeMotorista_IsSet_ := true;
end;

procedure tAtualizarOperacaoRequest.SetCPFMotorista(value:int64);
begin
  FCPFMotorista := value;
  FCPFMotorista_IsSet_ := true;
end;

procedure tAtualizarOperacaoRequest.SetRNTRCMotorista(value:string);
begin
  FRNTRCMotorista := value;
  FRNTRCMotorista_IsSet_ := true;
end;

procedure tAtualizarOperacaoRequest.SetQuitacao(value:boolean);
begin
  FQuitacao := value;
  FQuitacao_IsSet_ := true;
end;

procedure tAtualizarOperacaoRequest.SetItemFinanceiro(value:string);
begin
  FItemFinanceiro := value;
  FItemFinanceiro_IsSet_ := true;
end;

procedure tAtualizarOperacaoRequest.SetParcelas(value:tArrayOfOperacaoTransporteParcelaRequest);
begin
  FParcelas := value;
  FParcelas_IsSet_ := true;
end;

procedure tAtualizarOperacaoRequest.SetVeiculos(value:tArrayOfOperacaoTransporteVeiculoRequest);
begin
  FVeiculos := value;
  FVeiculos_IsSet_ := true;
end;

procedure tAtualizarOperacaoRequest.SetParticipantes(value:tArrayOfOperacaoTransporteParticipanteRequest);
begin
  FParticipantes := value;
  FParticipantes_IsSet_ := true;
end;

procedure tAtualizarOperacaoRequest.SetTriagem(value:tArrayOfOperacaoTransporteTriagemRequest);
begin
  FTriagem := value;
  FTriagem_IsSet_ := true;
end;

procedure tAtualizarOperacaoRequest.SetCodigoOperacao(value:integer);
begin
  FCodigoOperacao := value;
  FCodigoOperacao_IsSet_ := true;
end;

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

  if CodigoCentroDeCusto_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarOperacaoRequest_CodigoCentroDeCusto));
    xn.text := FCodigoCentroDeCusto;
  end;
  if NCM_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarOperacaoRequest_NCM));
    xn.text := FNCM;
  end;
  if ProprietarioCarga_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarOperacaoRequest_ProprietarioCarga));
    xn.text := FProprietarioCarga;
  end;
  if PesoCarga_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarOperacaoRequest_PesoCarga));
    xn.text := MyFloatToStr(FPesoCarga);
  end;
  if TipoOperacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarOperacaoRequest_TipoOperacao));
    xn.text := FTipoOperacao;
  end;
  if MunicipioOrigemCodigoIBGE_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarOperacaoRequest_MunicipioOrigemCodigoIBGE));
    xn.text := IntToStr(FMunicipioOrigemCodigoIBGE);
  end;
  if MunicipioDestinoCodigoIBGE_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarOperacaoRequest_MunicipioDestinoCodigoIBGE));
    xn.text := IntToStr(FMunicipioDestinoCodigoIBGE);
  end;
  if DataHoraInicio_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarOperacaoRequest_DataHoraInicio));
    xn.text := DateTimeToXMLDateTime(FDataHoraInicio);
  end;
  if DataHoraTermino_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarOperacaoRequest_DataHoraTermino));
    xn.text := DateTimeToXMLDateTime(FDataHoraTermino);
  end;
  if DataHoraInicioCadastro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarOperacaoRequest_DataHoraInicioCadastro));
    xn.text := DateTimeToXMLDateTime(FDataHoraInicioCadastro);
  end;
  if DataHoraFimCadastro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarOperacaoRequest_DataHoraFimCadastro));
    xn.text := DateTimeToXMLDateTime(FDataHoraFimCadastro);
  end;
  if CPFCNPJContratado_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarOperacaoRequest_CPFCNPJContratado));
    xn.text := FCPFCNPJContratado;
  end;
  if ValorFrete_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarOperacaoRequest_ValorFrete));
    xn.text := MyFloatToStr(FValorFrete);
  end;
  if ValorCombustivel_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarOperacaoRequest_ValorCombustivel));
    xn.text := MyFloatToStr(FValorCombustivel);
  end;
  if ValorPedagio_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarOperacaoRequest_ValorPedagio));
    xn.text := MyFloatToStr(FValorPedagio);
  end;
  if ValorDespesas_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarOperacaoRequest_ValorDespesas));
    xn.text := MyFloatToStr(FValorDespesas);
  end;
  if ValorImpostoSestSenat_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarOperacaoRequest_ValorImpostoSestSenat));
    xn.text := MyFloatToStr(FValorImpostoSestSenat);
  end;
  if ValorImpostoIRRF_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarOperacaoRequest_ValorImpostoIRRF));
    xn.text := MyFloatToStr(FValorImpostoIRRF);
  end;
  if ValorImpostoINSS_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarOperacaoRequest_ValorImpostoINSS));
    xn.text := MyFloatToStr(FValorImpostoINSS);
  end;
  if ValorImpostoIcmsIssqn_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarOperacaoRequest_ValorImpostoIcmsIssqn));
    xn.text := MyFloatToStr(FValorImpostoIcmsIssqn);
  end;
  if ParcelaUnica_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarOperacaoRequest_ParcelaUnica));
    xn.text := trgBoolToStr(FParcelaUnica);
  end;
  if ModoCompraValePedagio_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarOperacaoRequest_ModoCompraValePedagio));
    xn.text := IntToStr(FModoCompraValePedagio);
  end;
  if CategoriaVeiculo_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarOperacaoRequest_CategoriaVeiculo));
    xn.text := IntToStr(FCategoriaVeiculo);
  end;
  if NomeMotorista_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarOperacaoRequest_NomeMotorista));
    xn.text := FNomeMotorista;
  end;
  if CPFMotorista_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarOperacaoRequest_CPFMotorista));
    xn.text := IntToStr(FCPFMotorista);
  end;
  if RNTRCMotorista_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarOperacaoRequest_RNTRCMotorista));
    xn.text := FRNTRCMotorista;
  end;
  if Quitacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarOperacaoRequest_Quitacao));
    xn.text := trgBoolToStr(FQuitacao);
  end;
  if ItemFinanceiro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarOperacaoRequest_ItemFinanceiro));
    xn.text := FItemFinanceiro;
  end;
  if Assigned(FParcelas) then
  begin
    xn := aNode.addChildByName(snAtualizarOperacaoRequest_Parcelas);
    FParcelas.Save(xn);
  end;
  if Assigned(FVeiculos) then
  begin
    xn := aNode.addChildByName(snAtualizarOperacaoRequest_Veiculos);
    FVeiculos.Save(xn);
  end;
  if Assigned(FParticipantes) then
  begin
    xn := aNode.addChildByName(snAtualizarOperacaoRequest_Participantes);
    FParticipantes.Save(xn);
  end;
  if Assigned(FTriagem) then
  begin
    xn := aNode.addChildByName(snAtualizarOperacaoRequest_Triagem);
    FTriagem.Save(xn);
  end;
  if CodigoOperacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarOperacaoRequest_CodigoOperacao));
    xn.text := IntToStr(FCodigoOperacao);
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

class function tOperacaoTransporteRequest.CreateFromXmlString(s: string): tOperacaoTransporteRequest;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tOperacaoTransporteRequest.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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
  if assigned(FParcelas) then  FParcelas.free;
  if assigned(FVeiculos) then  FVeiculos.free;
  if assigned(FParticipantes) then  FParticipantes.free;
  if assigned(FTriagem) then  FTriagem.free;
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
    xn.text := trgBoolToStr(FParcelaUnica);
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
    xn.text := trgBoolToStr(FQuitacao);
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

class function tSituacaoCadastroTransportadorAnttResponse.CreateFromXmlString(s: string): tSituacaoCadastroTransportadorAnttResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tSituacaoCadastroTransportadorAnttResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tSituacaoCadastroTransportadorAnttResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snSituacaoCadastroTransportadorAnttResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snSituacaoCadastroTransportadorAnttResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snSituacaoCadastroTransportadorAnttResponse_CpfCnpjTransportador) then
      CpfCnpjTransportador :=  xn.text // string
    else if (sn = snSituacaoCadastroTransportadorAnttResponse_DataValidadeRNTRC) then
      DataValidadeRNTRC := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snSituacaoCadastroTransportadorAnttResponse_EquiparadoTAC) then
      EquiparadoTAC := (xn.text = 'true')
    else if (sn = snSituacaoCadastroTransportadorAnttResponse_NomeRazaoSocialTransportador) then
      NomeRazaoSocialTransportador :=  xn.text // string
    else if (sn = snSituacaoCadastroTransportadorAnttResponse_RNTRCAtivo) then
      RNTRCAtivo := (xn.text = 'true')
    else if (sn = snSituacaoCadastroTransportadorAnttResponse_RNTRCTransportador) then
      RNTRCTransportador :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tSituacaoCadastroTransportadorAnttResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tSituacaoCadastroTransportadorAnttResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tSituacaoCadastroTransportadorAnttResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tSituacaoCadastroTransportadorAnttResponse.SetCpfCnpjTransportador(value:string);
begin
  FCpfCnpjTransportador := value;
  FCpfCnpjTransportador_IsSet_ := true;
end;

procedure tSituacaoCadastroTransportadorAnttResponse.SetDataValidadeRNTRC(value:tDateTime);
begin
  FDataValidadeRNTRC := value;
  FDataValidadeRNTRC_IsSet_ := true;
end;

procedure tSituacaoCadastroTransportadorAnttResponse.SetEquiparadoTAC(value:boolean);
begin
  FEquiparadoTAC := value;
  FEquiparadoTAC_IsSet_ := true;
end;

procedure tSituacaoCadastroTransportadorAnttResponse.SetNomeRazaoSocialTransportador(value:string);
begin
  FNomeRazaoSocialTransportador := value;
  FNomeRazaoSocialTransportador_IsSet_ := true;
end;

procedure tSituacaoCadastroTransportadorAnttResponse.SetRNTRCAtivo(value:boolean);
begin
  FRNTRCAtivo := value;
  FRNTRCAtivo_IsSet_ := true;
end;

procedure tSituacaoCadastroTransportadorAnttResponse.SetRNTRCTransportador(value:string);
begin
  FRNTRCTransportador := value;
  FRNTRCTransportador_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snSituacaoCadastroTransportadorAnttResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snSituacaoCadastroTransportadorAnttResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if CpfCnpjTransportador_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snSituacaoCadastroTransportadorAnttResponse_CpfCnpjTransportador));
    xn.text := FCpfCnpjTransportador;
  end;
  if DataValidadeRNTRC_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snSituacaoCadastroTransportadorAnttResponse_DataValidadeRNTRC));
    xn.text := DateTimeToXMLDateTime(FDataValidadeRNTRC);
  end;
  if EquiparadoTAC_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snSituacaoCadastroTransportadorAnttResponse_EquiparadoTAC));
    xn.text := trgBoolToStr(FEquiparadoTAC);
  end;
  if NomeRazaoSocialTransportador_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snSituacaoCadastroTransportadorAnttResponse_NomeRazaoSocialTransportador));
    xn.text := FNomeRazaoSocialTransportador;
  end;
  if RNTRCAtivo_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snSituacaoCadastroTransportadorAnttResponse_RNTRCAtivo));
    xn.text := trgBoolToStr(FRNTRCAtivo);
  end;
  if RNTRCTransportador_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snSituacaoCadastroTransportadorAnttResponse_RNTRCTransportador));
    xn.text := FRNTRCTransportador;
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

class function tCadastroEquiparadoResponse.CreateFromXmlString(s: string): tCadastroEquiparadoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastroEquiparadoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCadastroEquiparadoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snCadastroEquiparadoResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snCadastroEquiparadoResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snCadastroEquiparadoResponse_CodigoEquiparado) then
      CodigoEquiparado := StrToIntDef(xn.text, 0)
    else if (sn = snCadastroEquiparadoResponse_DataHoraCadastro) then
      DataHoraCadastro := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tCadastroEquiparadoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCadastroEquiparadoResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tCadastroEquiparadoResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tCadastroEquiparadoResponse.SetCodigoEquiparado(value:integer);
begin
  FCodigoEquiparado := value;
  FCodigoEquiparado_IsSet_ := true;
end;

procedure tCadastroEquiparadoResponse.SetDataHoraCadastro(value:tDateTime);
begin
  FDataHoraCadastro := value;
  FDataHoraCadastro_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroEquiparadoResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroEquiparadoResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if CodigoEquiparado_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroEquiparadoResponse_CodigoEquiparado));
    xn.text := IntToStr(FCodigoEquiparado);
  end;
  if DataHoraCadastro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroEquiparadoResponse_DataHoraCadastro));
    xn.text := DateTimeToXMLDateTime(FDataHoraCadastro);
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

class function tCadastroEquiparadoRequest.CreateFromXmlString(s: string): tCadastroEquiparadoRequest;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastroEquiparadoRequest.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

class function tCadastroAutonomoResponse.CreateFromXmlString(s: string): tCadastroAutonomoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastroAutonomoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCadastroAutonomoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snCadastroAutonomoResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snCadastroAutonomoResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snCadastroAutonomoResponse_CodigoAutonomo) then
      CodigoAutonomo := StrToIntDef(xn.text, 0)
    else if (sn = snCadastroAutonomoResponse_DataHoraCadastro) then
      DataHoraCadastro := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tCadastroAutonomoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCadastroAutonomoResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tCadastroAutonomoResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tCadastroAutonomoResponse.SetCodigoAutonomo(value:integer);
begin
  FCodigoAutonomo := value;
  FCodigoAutonomo_IsSet_ := true;
end;

procedure tCadastroAutonomoResponse.SetDataHoraCadastro(value:tDateTime);
begin
  FDataHoraCadastro := value;
  FDataHoraCadastro_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroAutonomoResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroAutonomoResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if CodigoAutonomo_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroAutonomoResponse_CodigoAutonomo));
    xn.text := IntToStr(FCodigoAutonomo);
  end;
  if DataHoraCadastro_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastroAutonomoResponse_DataHoraCadastro));
    xn.text := DateTimeToXMLDateTime(FDataHoraCadastro);
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

class function tCadastroAutonomoRequest.CreateFromXmlString(s: string): tCadastroAutonomoRequest;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastroAutonomoRequest.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

class function tBaseParticipanteRequestResponse.CreateFromXmlString(s: string): tBaseParticipanteRequestResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBaseParticipanteRequestResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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
    xn.text := trgBoolToStr(FAtivo);
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

class function tArrayOfBaseParticipanteRequestResponse.CreateFromXmlString(s: string): tArrayOfBaseParticipanteRequestResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tArrayOfBaseParticipanteRequestResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

class function tBuscaParticipantesResponse.CreateFromXmlString(s: string): tBuscaParticipantesResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscaParticipantesResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscaParticipantesResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snBuscaParticipantesResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snBuscaParticipantesResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snBuscaParticipantesResponse_ParticipantesAtivos) then
      FParticipantesAtivos := tArrayOfBaseParticipanteRequestResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tBuscaParticipantesResponse.Destroy;
begin
  if assigned(FParticipantesAtivos) then  FParticipantesAtivos.free;
  inherited;
end; // destructor ...

procedure tBuscaParticipantesResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tBuscaParticipantesResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tBuscaParticipantesResponse.SetParticipantesAtivos(value:tArrayOfBaseParticipanteRequestResponse);
begin
  FParticipantesAtivos := value;
  FParticipantesAtivos_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscaParticipantesResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscaParticipantesResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if Assigned(FParticipantesAtivos) then
  begin
    xn := aNode.addChildByName(snBuscaParticipantesResponse_ParticipantesAtivos);
    FParticipantesAtivos.Save(xn);
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

class function tObterParticipanteResponse.CreateFromXmlString(s: string): tObterParticipanteResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterParticipanteResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterParticipanteResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterParticipanteResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snObterParticipanteResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snObterParticipanteResponse_Participante) then
      FParticipante := tBaseParticipanteRequestResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterParticipanteResponse.Destroy;
begin
  if assigned(FParticipante) then  FParticipante.free;
  inherited;
end; // destructor ...

procedure tObterParticipanteResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tObterParticipanteResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tObterParticipanteResponse.SetParticipante(value:tBaseParticipanteRequestResponse);
begin
  FParticipante := value;
  FParticipante_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterParticipanteResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterParticipanteResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if Assigned(FParticipante) then
  begin
    xn := aNode.addChildByName(snObterParticipanteResponse_Participante);
    FParticipante.Save(xn);
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

class function tBaseResponse.CreateFromXmlString(s: string): tBaseResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBaseResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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
    xn.text := trgBoolToStr(FSucesso);
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

class function tBaseCentroDeCustoRequestResponse.CreateFromXmlString(s: string): tBaseCentroDeCustoRequestResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBaseCentroDeCustoRequestResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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
    xn.text := trgBoolToStr(FAtivo);
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

class function tArrayOfBaseCentroDeCustoRequestResponse.CreateFromXmlString(s: string): tArrayOfBaseCentroDeCustoRequestResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tArrayOfBaseCentroDeCustoRequestResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
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

class function tBuscaCentrosDeCustosResponse.CreateFromXmlString(s: string): tBuscaCentrosDeCustosResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscaCentrosDeCustosResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscaCentrosDeCustosResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snBuscaCentrosDeCustosResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snBuscaCentrosDeCustosResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snBuscaCentrosDeCustosResponse_CentroDeCustosAtivos) then
      FCentroDeCustosAtivos := tArrayOfBaseCentroDeCustoRequestResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tBuscaCentrosDeCustosResponse.Destroy;
begin
  if assigned(FCentroDeCustosAtivos) then  FCentroDeCustosAtivos.free;
  inherited;
end; // destructor ...

procedure tBuscaCentrosDeCustosResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tBuscaCentrosDeCustosResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tBuscaCentrosDeCustosResponse.SetCentroDeCustosAtivos(value:tArrayOfBaseCentroDeCustoRequestResponse);
begin
  FCentroDeCustosAtivos := value;
  FCentroDeCustosAtivos_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscaCentrosDeCustosResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscaCentrosDeCustosResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if Assigned(FCentroDeCustosAtivos) then
  begin
    xn := aNode.addChildByName(snBuscaCentrosDeCustosResponse_CentroDeCustosAtivos);
    FCentroDeCustosAtivos.Save(xn);
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

class function tObterCentroDeCustoResponse.CreateFromXmlString(s: string): tObterCentroDeCustoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterCentroDeCustoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterCentroDeCustoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterCentroDeCustoResponse_MensagemRetorno) then
      MensagemRetorno :=  xn.text // string
    else if (sn = snObterCentroDeCustoResponse_Sucesso) then
      Sucesso := (xn.text = 'true')
    else if (sn = snObterCentroDeCustoResponse_CentroDeCusto) then
      FCentroDeCusto := tBaseCentroDeCustoRequestResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterCentroDeCustoResponse.Destroy;
begin
  if assigned(FCentroDeCusto) then  FCentroDeCusto.free;
  inherited;
end; // destructor ...

procedure tObterCentroDeCustoResponse.SetMensagemRetorno(value:string);
begin
  FMensagemRetorno := value;
  FMensagemRetorno_IsSet_ := true;
end;

procedure tObterCentroDeCustoResponse.SetSucesso(value:boolean);
begin
  FSucesso := value;
  FSucesso_IsSet_ := true;
end;

procedure tObterCentroDeCustoResponse.SetCentroDeCusto(value:tBaseCentroDeCustoRequestResponse);
begin
  FCentroDeCusto := value;
  FCentroDeCusto_IsSet_ := true;
end;

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

  if MensagemRetorno_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterCentroDeCustoResponse_MensagemRetorno));
    xn.text := FMensagemRetorno;
  end;
  if Sucesso_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterCentroDeCustoResponse_Sucesso));
    xn.text := trgBoolToStr(FSucesso);
  end;
  if Assigned(FCentroDeCusto) then
  begin
    xn := aNode.addChildByName(snObterCentroDeCustoResponse_CentroDeCusto);
    FCentroDeCusto.Save(xn);
  end;
end; // procedure save

{ tFault }

class function tFault._nsURI_: string;
begin
  result := thisNameSpaceURI;
end;

constructor tFault.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end;

constructor tFault.Create(aRoot: tJanXMLNode2);
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
    if (sn = snFault_faultcode) then
      faultcode := xn.text
    else if (sn = snFault_faultstring) then
      faultstring := xn.text
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; 

class function tFault.CreateFromXmlString(s: string): tFault;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tFault.Create( parser );
   finally
      parser.Free;
   end;
end;

destructor tFault.Destroy;
begin

  inherited;
end;

function tFault.GetAsString: string;
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

procedure tFault.Save(aNode: tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Fault')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snFault_faultcode));
  xn.text := faultcode;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snFault_faultstring));
  xn.text := faultString;

end;

end.

