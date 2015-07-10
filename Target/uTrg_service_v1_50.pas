unit uTrg_service_v1_50;

Interface
uses
  Classes,
  JanXMLParser2,
//  u,
  uTrg_service1_v1_50,
  uTrg_TARGET_VectioFrete_Application_WCF_Contracts_External,
  uXMLTools;

// targetNameSpace: http://tempuri.org/
// NameSpacePrefix: tns
// Date of Schema : 28/10/2014 10:19:24
// Translationdate: 30/10/2014 15:50:41
//
//   includes xs=http://www.w3.org/2001/XMLSchema

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
    class function CreateFromXmlString(s: string): tObterCustoRotaResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snObterCustoRotaResponse_ObterCustoRotaResponse = 'ObterCustoRotaResponse';
  snObterCustoRotaResponse_ObterCustoRotaResponse_ObterCustoRotaResult = 'ObterCustoRotaResult';

type
  tObterCustoRotaResponse_ObterCustoRotaResponse = class
  private
    F_NameSpaceAlias: string;
    FObterCustoRotaResult: tObterCustoRotaResponse; // (E)
    FObterCustoRotaResult_IsSet_: boolean;
    procedure SetObterCustoRotaResult(value:tObterCustoRotaResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterCustoRotaResponse_ObterCustoRotaResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ObterCustoRotaResult: tObterCustoRotaResponse read FObterCustoRotaResult write SetObterCustoRotaResult;
    property ObterCustoRotaResult_IsSet_:boolean read FObterCustoRotaResult_IsSet_;
  end;

const
  snObterCustoRota_ObterCustoRota = 'ObterCustoRota';
  snObterCustoRota_ObterCustoRota_dadosParaOtencaoDeCusto = 'dadosParaOtencaoDeCusto';

type
  tObterCustoRota_ObterCustoRota = class
  private
    F_NameSpaceAlias: string;
    FdadosParaOtencaoDeCusto: tObterCustoRotaRequest; // (E)
    FdadosParaOtencaoDeCusto_IsSet_: boolean;
    procedure SetdadosParaOtencaoDeCusto(value:tObterCustoRotaRequest);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterCustoRota_ObterCustoRota;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property dadosParaOtencaoDeCusto: tObterCustoRotaRequest read FdadosParaOtencaoDeCusto write SetdadosParaOtencaoDeCusto;
    property dadosParaOtencaoDeCusto_IsSet_:boolean read FdadosParaOtencaoDeCusto_IsSet_;
  end;

const
  snObterCustoRota = 'ObterCustoRota';

type
  tObterCustoRota = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterCustoRota;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
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
    class function CreateFromXmlString(s: string): tObterLogRequisicoesResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snObterLogRequisicoesResponse_ObterLogRequisicoesResponse = 'ObterLogRequisicoesResponse';
  snObterLogRequisicoesResponse_ObterLogRequisicoesResponse_ObterLogRequisicoesResult = 'ObterLogRequisicoesResult';

type
  tObterLogRequisicoesResponse_ObterLogRequisicoesResponse = class
  private
    F_NameSpaceAlias: string;
    FObterLogRequisicoesResult: tObterLogRequisicoesResponse; // (E)
    FObterLogRequisicoesResult_IsSet_: boolean;
    procedure SetObterLogRequisicoesResult(value:tObterLogRequisicoesResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterLogRequisicoesResponse_ObterLogRequisicoesResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ObterLogRequisicoesResult: tObterLogRequisicoesResponse read FObterLogRequisicoesResult write SetObterLogRequisicoesResult;
    property ObterLogRequisicoesResult_IsSet_:boolean read FObterLogRequisicoesResult_IsSet_;
  end;

const
  snObterLogRequisicoes_ObterLogRequisicoes = 'ObterLogRequisicoes';

type
  tObterLogRequisicoes_ObterLogRequisicoes = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterLogRequisicoes_ObterLogRequisicoes;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snObterLogRequisicoes = 'ObterLogRequisicoes';

type
  tObterLogRequisicoes = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterLogRequisicoes;
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
    class function CreateFromXmlString(s: string): tComprarValePedagioAvulsoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snComprarValePedagioAvulsoResponse_ComprarValePedagioAvulsoResponse = 'ComprarValePedagioAvulsoResponse';
  snComprarValePedagioAvulsoResponse_ComprarValePedagioAvulsoResponse_ComprarValePedagioAvulsoResult = 'ComprarValePedagioAvulsoResult';

type
  tComprarValePedagioAvulsoResponse_ComprarValePedagioAvulsoResponse = class
  private
    F_NameSpaceAlias: string;
    FComprarValePedagioAvulsoResult: tComprarValePedagioAvulsoResponse; // (E)
    FComprarValePedagioAvulsoResult_IsSet_: boolean;
    procedure SetComprarValePedagioAvulsoResult(value:tComprarValePedagioAvulsoResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tComprarValePedagioAvulsoResponse_ComprarValePedagioAvulsoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ComprarValePedagioAvulsoResult: tComprarValePedagioAvulsoResponse read FComprarValePedagioAvulsoResult write SetComprarValePedagioAvulsoResult;
    property ComprarValePedagioAvulsoResult_IsSet_:boolean read FComprarValePedagioAvulsoResult_IsSet_;
  end;

const
  snComprarValePedagioAvulso_ComprarValePedagioAvulso = 'ComprarValePedagioAvulso';
  snComprarValePedagioAvulso_ComprarValePedagioAvulso_dadosParaCarga = 'dadosParaCarga';

type
  tComprarValePedagioAvulso_ComprarValePedagioAvulso = class
  private
    F_NameSpaceAlias: string;
    FdadosParaCarga: tComprarValePedagioAvulsoRequest; // (E)
    FdadosParaCarga_IsSet_: boolean;
    procedure SetdadosParaCarga(value:tComprarValePedagioAvulsoRequest);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tComprarValePedagioAvulso_ComprarValePedagioAvulso;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property dadosParaCarga: tComprarValePedagioAvulsoRequest read FdadosParaCarga write SetdadosParaCarga;
    property dadosParaCarga_IsSet_:boolean read FdadosParaCarga_IsSet_;
  end;

const
  snComprarValePedagioAvulso = 'ComprarValePedagioAvulso';

type
  tComprarValePedagioAvulso = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tComprarValePedagioAvulso;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snObterMotoristaPorCPFTerceirosResponse = 'ObterMotoristaPorCPFTerceirosResponse';

type
  tObterMotoristaPorCPFTerceirosResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterMotoristaPorCPFTerceirosResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snObterMotoristaPorCPFTerceiros_ObterMotoristaPorCPFTerceiros = 'ObterMotoristaPorCPFTerceiros';
  snObterMotoristaPorCPFTerceiros_ObterMotoristaPorCPFTerceiros_cpfCnpjContratado = 'cpfCnpjContratado';
  snObterMotoristaPorCPFTerceiros_ObterMotoristaPorCPFTerceiros_cpf = 'cpf';

type
  tObterMotoristaPorCPFTerceiros_ObterMotoristaPorCPFTerceiros = class
  private
    F_NameSpaceAlias: string;
    FcpfCnpjContratado: string; // (E)
    FcpfCnpjContratado_IsSet_: boolean;
    Fcpf: string; // (E)
    Fcpf_IsSet_: boolean;
    procedure SetcpfCnpjContratado(value:string);
    procedure Setcpf(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterMotoristaPorCPFTerceiros_ObterMotoristaPorCPFTerceiros;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property cpfCnpjContratado: string read FcpfCnpjContratado write SetcpfCnpjContratado;
    property cpfCnpjContratado_IsSet_:boolean read FcpfCnpjContratado_IsSet_;
    property cpf: string read Fcpf write Setcpf;
    property cpf_IsSet_:boolean read Fcpf_IsSet_;
  end;

const
  snObterMotoristaPorCPFTerceiros = 'ObterMotoristaPorCPFTerceiros';

type
  tObterMotoristaPorCPFTerceiros = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterMotoristaPorCPFTerceiros;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snObterMotoristaPorCPFResponse = 'ObterMotoristaPorCPFResponse';

type
  tObterMotoristaPorCPFResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterMotoristaPorCPFResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snObterMotoristaPorCPF_ObterMotoristaPorCPF = 'ObterMotoristaPorCPF';
  snObterMotoristaPorCPF_ObterMotoristaPorCPF_cpf = 'cpf';

type
  tObterMotoristaPorCPF_ObterMotoristaPorCPF = class
  private
    F_NameSpaceAlias: string;
    Fcpf: string; // (E)
    Fcpf_IsSet_: boolean;
    procedure Setcpf(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterMotoristaPorCPF_ObterMotoristaPorCPF;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property cpf: string read Fcpf write Setcpf;
    property cpf_IsSet_:boolean read Fcpf_IsSet_;
  end;

const
  snObterMotoristaPorCPF = 'ObterMotoristaPorCPF';

type
  tObterMotoristaPorCPF = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterMotoristaPorCPF;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snBuscarMotoristasAtivosResponse_BuscarMotoristasAtivosResponse = 'BuscarMotoristasAtivosResponse';
  snBuscarMotoristasAtivosResponse_BuscarMotoristasAtivosResponse_BuscarMotoristasAtivosResult = 'BuscarMotoristasAtivosResult';

type
  tBuscarMotoristasAtivosResponse_BuscarMotoristasAtivosResponse = class
  private
    F_NameSpaceAlias: string;
    FBuscarMotoristasAtivosResult: tBuscarMotoristaResponse; // (E)
    FBuscarMotoristasAtivosResult_IsSet_: boolean;
    procedure SetBuscarMotoristasAtivosResult(value:tBuscarMotoristaResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarMotoristasAtivosResponse_BuscarMotoristasAtivosResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property BuscarMotoristasAtivosResult: tBuscarMotoristaResponse read FBuscarMotoristasAtivosResult write SetBuscarMotoristasAtivosResult;
    property BuscarMotoristasAtivosResult_IsSet_:boolean read FBuscarMotoristasAtivosResult_IsSet_;
  end;

const
  snBuscarMotoristasAtivosResponse = 'BuscarMotoristasAtivosResponse';

type
  tBuscarMotoristasAtivosResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarMotoristasAtivosResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snBuscarMotoristasAtivos_BuscarMotoristasAtivos = 'BuscarMotoristasAtivos';

type
  tBuscarMotoristasAtivos_BuscarMotoristasAtivos = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarMotoristasAtivos_BuscarMotoristasAtivos;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snBuscarMotoristasAtivos = 'BuscarMotoristasAtivos';

type
  tBuscarMotoristasAtivos = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarMotoristasAtivos;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snAtualizarMotoristaResponse_AtualizarMotoristaResponse = 'AtualizarMotoristaResponse';
  snAtualizarMotoristaResponse_AtualizarMotoristaResponse_AtualizarMotoristaResult = 'AtualizarMotoristaResult';

type
  tAtualizarMotoristaResponse_AtualizarMotoristaResponse = class
  private
    F_NameSpaceAlias: string;
    FAtualizarMotoristaResult: tBaseResponse; // (E)
    FAtualizarMotoristaResult_IsSet_: boolean;
    procedure SetAtualizarMotoristaResult(value:tBaseResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAtualizarMotoristaResponse_AtualizarMotoristaResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property AtualizarMotoristaResult: tBaseResponse read FAtualizarMotoristaResult write SetAtualizarMotoristaResult;
    property AtualizarMotoristaResult_IsSet_:boolean read FAtualizarMotoristaResult_IsSet_;
  end;

const
  snAtualizarMotoristaResponse = 'AtualizarMotoristaResponse';

type
  tAtualizarMotoristaResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAtualizarMotoristaResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snAtualizarMotorista_AtualizarMotorista = 'AtualizarMotorista';
  snAtualizarMotorista_AtualizarMotorista_motorista = 'motorista';

type
  tAtualizarMotorista_AtualizarMotorista = class
  private
    F_NameSpaceAlias: string;
    Fmotorista: tBaseMotoristaRequestResponse; // (E)
    Fmotorista_IsSet_: boolean;
    procedure Setmotorista(value:tBaseMotoristaRequestResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAtualizarMotorista_AtualizarMotorista;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property motorista: tBaseMotoristaRequestResponse read Fmotorista write Setmotorista;
    property motorista_IsSet_:boolean read Fmotorista_IsSet_;
  end;

const
  snAtualizarMotorista = 'AtualizarMotorista';

type
  tAtualizarMotorista = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAtualizarMotorista;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;


const
  snObterMotoristaPorCPFTerceirosResponse_ObterMotoristaPorCPFTerceirosResponse = 'ObterMotoristaPorCPFTerceirosResponse';
  snObterMotoristaPorCPFTerceirosResponse_ObterMotoristaPorCPFTerceirosResponse_ObterMotoristaPorCPFTerceirosResult = 'ObterMotoristaPorCPFTerceirosResult';

type
  tObterMotoristaPorCPFTerceirosResponse_ObterMotoristaPorCPFTerceirosResponse = class
  private
    F_NameSpaceAlias: string;
    FObterMotoristaPorCPFTerceirosResult: tObterMotoristaResponse; // (E)
    FObterMotoristaPorCPFTerceirosResult_IsSet_: boolean;
    procedure SetObterMotoristaPorCPFTerceirosResult(value:tObterMotoristaResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterMotoristaPorCPFTerceirosResponse_ObterMotoristaPorCPFTerceirosResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ObterMotoristaPorCPFTerceirosResult: tObterMotoristaResponse read FObterMotoristaPorCPFTerceirosResult write SetObterMotoristaPorCPFTerceirosResult;
    property ObterMotoristaPorCPFTerceirosResult_IsSet_:boolean read FObterMotoristaPorCPFTerceirosResult_IsSet_;
  end;

const
  snObterMotoristaPorCPFResponse_ObterMotoristaPorCPFResponse = 'ObterMotoristaPorCPFResponse';
  snObterMotoristaPorCPFResponse_ObterMotoristaPorCPFResponse_ObterMotoristaPorCPFResult = 'ObterMotoristaPorCPFResult';

type
  tObterMotoristaPorCPFResponse_ObterMotoristaPorCPFResponse = class
  private
    F_NameSpaceAlias: string;
    FObterMotoristaPorCPFResult: tObterMotoristaResponse; // (E)
    FObterMotoristaPorCPFResult_IsSet_: boolean;
    procedure SetObterMotoristaPorCPFResult(value:tObterMotoristaResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterMotoristaPorCPFResponse_ObterMotoristaPorCPFResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ObterMotoristaPorCPFResult: tObterMotoristaResponse read FObterMotoristaPorCPFResult write SetObterMotoristaPorCPFResult;
    property ObterMotoristaPorCPFResult_IsSet_:boolean read FObterMotoristaPorCPFResult_IsSet_;
  end;

const
  snObterMotoristaResponse_ObterMotoristaResponse = 'ObterMotoristaResponse';
  snObterMotoristaResponse_ObterMotoristaResponse_ObterMotoristaResult = 'ObterMotoristaResult';

type
  tObterMotoristaResponse_ObterMotoristaResponse = class
  private
    F_NameSpaceAlias: string;
    FObterMotoristaResult: tObterMotoristaResponse; // (E)
    FObterMotoristaResult_IsSet_: boolean;
    procedure SetObterMotoristaResult(value:tObterMotoristaResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterMotoristaResponse_ObterMotoristaResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ObterMotoristaResult: tObterMotoristaResponse read FObterMotoristaResult write SetObterMotoristaResult;
    property ObterMotoristaResult_IsSet_:boolean read FObterMotoristaResult_IsSet_;
  end;

const
  snObterMotorista_ObterMotorista = 'ObterMotorista';
  snObterMotorista_ObterMotorista_idMotorista = 'idMotorista';

type
  tObterMotorista_ObterMotorista = class
  private
    F_NameSpaceAlias: string;
    FidMotorista: integer; // (E)
    FidMotorista_IsSet_: boolean;
    procedure SetidMotorista(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterMotorista_ObterMotorista;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property idMotorista: integer read FidMotorista write SetidMotorista;
    property idMotorista_IsSet_:boolean read FidMotorista_IsSet_;
  end;

const
  snObterMotorista = 'ObterMotorista';

type
  tObterMotorista = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterMotorista;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snCadastrarMotoristaResponse_CadastrarMotoristaResponse = 'CadastrarMotoristaResponse';
  snCadastrarMotoristaResponse_CadastrarMotoristaResponse_CadastrarMotoristaResult = 'CadastrarMotoristaResult';

type
  tCadastrarMotoristaResponse_CadastrarMotoristaResponse = class
  private
    F_NameSpaceAlias: string;
    FCadastrarMotoristaResult: tCadastroMotoristaResponse; // (E)
    FCadastrarMotoristaResult_IsSet_: boolean;
    procedure SetCadastrarMotoristaResult(value:tCadastroMotoristaResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCadastrarMotoristaResponse_CadastrarMotoristaResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CadastrarMotoristaResult: tCadastroMotoristaResponse read FCadastrarMotoristaResult write SetCadastrarMotoristaResult;
    property CadastrarMotoristaResult_IsSet_:boolean read FCadastrarMotoristaResult_IsSet_;
  end;

const
  snCadastrarMotoristaResponse = 'CadastrarMotoristaResponse';

type
  tCadastrarMotoristaResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCadastrarMotoristaResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snCadastrarMotorista_CadastrarMotorista = 'CadastrarMotorista';
  snCadastrarMotorista_CadastrarMotorista_cadastroMotoristaRequest = 'cadastroMotoristaRequest';

type
  tCadastrarMotorista_CadastrarMotorista = class
  private
    F_NameSpaceAlias: string;
    FcadastroMotoristaRequest: tCadastroMotoristaRequest; // (E)
    FcadastroMotoristaRequest_IsSet_: boolean;
    procedure SetcadastroMotoristaRequest(value:tCadastroMotoristaRequest);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCadastrarMotorista_CadastrarMotorista;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property cadastroMotoristaRequest: tCadastroMotoristaRequest read FcadastroMotoristaRequest write SetcadastroMotoristaRequest;
    property cadastroMotoristaRequest_IsSet_:boolean read FcadastroMotoristaRequest_IsSet_;
  end;

const
  snCadastrarMotorista = 'CadastrarMotorista';

type
  tCadastrarMotorista = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCadastrarMotorista;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snBuscarTriagemDocumentoObjetoAtivosResponse_BuscarTriagemDocumentoObjetoAtivosResponse = 'BuscarTriagemDocumentoObjetoAtivosResponse';
  snBuscarTriagemDocumentoObjetoAtivosResponse_BuscarTriagemDocumentoObjetoAtivosResponse_BuscarTriagemDocumentoObjetoAtivosResult = 'BuscarTriagemDocumentoObjetoAtivosResult';

type
  tBuscarTriagemDocumentoObjetoAtivosResponse_BuscarTriagemDocumentoObjetoAtivosResponse = class
  private
    F_NameSpaceAlias: string;
    FBuscarTriagemDocumentoObjetoAtivosResult: tBuscarTriagemDocumentoObjetoResponse; // (E)
    FBuscarTriagemDocumentoObjetoAtivosResult_IsSet_: boolean;
    procedure SetBuscarTriagemDocumentoObjetoAtivosResult(value:tBuscarTriagemDocumentoObjetoResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarTriagemDocumentoObjetoAtivosResponse_BuscarTriagemDocumentoObjetoAtivosResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property BuscarTriagemDocumentoObjetoAtivosResult: tBuscarTriagemDocumentoObjetoResponse read FBuscarTriagemDocumentoObjetoAtivosResult write SetBuscarTriagemDocumentoObjetoAtivosResult;
    property BuscarTriagemDocumentoObjetoAtivosResult_IsSet_:boolean read FBuscarTriagemDocumentoObjetoAtivosResult_IsSet_;
  end;

const
  snBuscarTriagemDocumentoObjetoAtivosResponse = 'BuscarTriagemDocumentoObjetoAtivosResponse';

type
  tBuscarTriagemDocumentoObjetoAtivosResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarTriagemDocumentoObjetoAtivosResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snBuscarTriagemDocumentoObjetoAtivos_BuscarTriagemDocumentoObjetoAtivos = 'BuscarTriagemDocumentoObjetoAtivos';

type
  tBuscarTriagemDocumentoObjetoAtivos_BuscarTriagemDocumentoObjetoAtivos = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarTriagemDocumentoObjetoAtivos_BuscarTriagemDocumentoObjetoAtivos;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snBuscarTriagemDocumentoObjetoAtivos = 'BuscarTriagemDocumentoObjetoAtivos';

type
  tBuscarTriagemDocumentoObjetoAtivos = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarTriagemDocumentoObjetoAtivos;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snAtualizarTriagemDocumentoObjetoResponse_AtualizarTriagemDocumentoObjetoResponse = 'AtualizarTriagemDocumentoObjetoResponse';
  snAtualizarTriagemDocumentoObjetoResponse_AtualizarTriagemDocumentoObjetoResponse_AtualizarTriagemDocumentoObjetoResult = 'AtualizarTriagemDocumentoObjetoResult';

type
  tAtualizarTriagemDocumentoObjetoResponse_AtualizarTriagemDocumentoObjetoResponse = class
  private
    F_NameSpaceAlias: string;
    FAtualizarTriagemDocumentoObjetoResult: tBaseResponse; // (E)
    FAtualizarTriagemDocumentoObjetoResult_IsSet_: boolean;
    procedure SetAtualizarTriagemDocumentoObjetoResult(value:tBaseResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAtualizarTriagemDocumentoObjetoResponse_AtualizarTriagemDocumentoObjetoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property AtualizarTriagemDocumentoObjetoResult: tBaseResponse read FAtualizarTriagemDocumentoObjetoResult write SetAtualizarTriagemDocumentoObjetoResult;
    property AtualizarTriagemDocumentoObjetoResult_IsSet_:boolean read FAtualizarTriagemDocumentoObjetoResult_IsSet_;
  end;

const
  snAtualizarTriagemDocumentoObjetoResponse = 'AtualizarTriagemDocumentoObjetoResponse';

type
  tAtualizarTriagemDocumentoObjetoResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAtualizarTriagemDocumentoObjetoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snAtualizarTriagemDocumentoObjeto_AtualizarTriagemDocumentoObjeto = 'AtualizarTriagemDocumentoObjeto';
  snAtualizarTriagemDocumentoObjeto_AtualizarTriagemDocumentoObjeto_triagemDocumentoObjeto = 'triagemDocumentoObjeto';

type
  tAtualizarTriagemDocumentoObjeto_AtualizarTriagemDocumentoObjeto = class
  private
    F_NameSpaceAlias: string;
    FtriagemDocumentoObjeto: tBaseTriagemDocumentoObjetoRequest; // (E)
    FtriagemDocumentoObjeto_IsSet_: boolean;
    procedure SettriagemDocumentoObjeto(value:tBaseTriagemDocumentoObjetoRequest);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAtualizarTriagemDocumentoObjeto_AtualizarTriagemDocumentoObjeto;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property triagemDocumentoObjeto: tBaseTriagemDocumentoObjetoRequest read FtriagemDocumentoObjeto write SettriagemDocumentoObjeto;
    property triagemDocumentoObjeto_IsSet_:boolean read FtriagemDocumentoObjeto_IsSet_;
  end;

const
  snAtualizarTriagemDocumentoObjeto = 'AtualizarTriagemDocumentoObjeto';

type
  tAtualizarTriagemDocumentoObjeto = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAtualizarTriagemDocumentoObjeto;
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
    class function CreateFromXmlString(s: string): tObterTriagemDocumentoObjetoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snObterTriagemDocumentoObjetoResponse_ObterTriagemDocumentoObjetoResponse = 'ObterTriagemDocumentoObjetoResponse';
  snObterTriagemDocumentoObjetoResponse_ObterTriagemDocumentoObjetoResponse_ObterTriagemDocumentoObjetoResult = 'ObterTriagemDocumentoObjetoResult';

type
  tObterTriagemDocumentoObjetoResponse_ObterTriagemDocumentoObjetoResponse = class
  private
    F_NameSpaceAlias: string;
    FObterTriagemDocumentoObjetoResult: tObterTriagemDocumentoObjetoResponse; // (E)
    FObterTriagemDocumentoObjetoResult_IsSet_: boolean;
    procedure SetObterTriagemDocumentoObjetoResult(value:tObterTriagemDocumentoObjetoResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterTriagemDocumentoObjetoResponse_ObterTriagemDocumentoObjetoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ObterTriagemDocumentoObjetoResult: tObterTriagemDocumentoObjetoResponse read FObterTriagemDocumentoObjetoResult write SetObterTriagemDocumentoObjetoResult;
    property ObterTriagemDocumentoObjetoResult_IsSet_:boolean read FObterTriagemDocumentoObjetoResult_IsSet_;
  end;

const
  snObterTriagemDocumentoObjeto_ObterTriagemDocumentoObjeto = 'ObterTriagemDocumentoObjeto';
  snObterTriagemDocumentoObjeto_ObterTriagemDocumentoObjeto_idTriagemDocumentoObjeto = 'idTriagemDocumentoObjeto';

type
  tObterTriagemDocumentoObjeto_ObterTriagemDocumentoObjeto = class
  private
    F_NameSpaceAlias: string;
    FidTriagemDocumentoObjeto: integer; // (E)
    FidTriagemDocumentoObjeto_IsSet_: boolean;
    procedure SetidTriagemDocumentoObjeto(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterTriagemDocumentoObjeto_ObterTriagemDocumentoObjeto;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property idTriagemDocumentoObjeto: integer read FidTriagemDocumentoObjeto write SetidTriagemDocumentoObjeto;
    property idTriagemDocumentoObjeto_IsSet_:boolean read FidTriagemDocumentoObjeto_IsSet_;
  end;

const
  snObterTriagemDocumentoObjeto = 'ObterTriagemDocumentoObjeto';

type
  tObterTriagemDocumentoObjeto = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterTriagemDocumentoObjeto;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snCadastrarTriagemDocumentoObjetoResponse_CadastrarTriagemDocumentoObjetoResponse = 'CadastrarTriagemDocumentoObjetoResponse';
  snCadastrarTriagemDocumentoObjetoResponse_CadastrarTriagemDocumentoObjetoResponse_CadastrarTriagemDocumentoObjetoResult = 'CadastrarTriagemDocumentoObjetoResult';

type
  tCadastrarTriagemDocumentoObjetoResponse_CadastrarTriagemDocumentoObjetoResponse = class
  private
    F_NameSpaceAlias: string;
    FCadastrarTriagemDocumentoObjetoResult: tBaseResponse; // (E)
    FCadastrarTriagemDocumentoObjetoResult_IsSet_: boolean;
    procedure SetCadastrarTriagemDocumentoObjetoResult(value:tBaseResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCadastrarTriagemDocumentoObjetoResponse_CadastrarTriagemDocumentoObjetoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CadastrarTriagemDocumentoObjetoResult: tBaseResponse read FCadastrarTriagemDocumentoObjetoResult write SetCadastrarTriagemDocumentoObjetoResult;
    property CadastrarTriagemDocumentoObjetoResult_IsSet_:boolean read FCadastrarTriagemDocumentoObjetoResult_IsSet_;
  end;

const
  snCadastrarTriagemDocumentoObjetoResponse = 'CadastrarTriagemDocumentoObjetoResponse';

type
  tCadastrarTriagemDocumentoObjetoResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCadastrarTriagemDocumentoObjetoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snCadastrarTriagemDocumentoObjeto_CadastrarTriagemDocumentoObjeto = 'CadastrarTriagemDocumentoObjeto';
  snCadastrarTriagemDocumentoObjeto_CadastrarTriagemDocumentoObjeto_triagemDocumentoObjeto = 'triagemDocumentoObjeto';

type
  tCadastrarTriagemDocumentoObjeto_CadastrarTriagemDocumentoObjeto = class
  private
    F_NameSpaceAlias: string;
    FtriagemDocumentoObjeto: tBaseTriagemDocumentoObjetoRequest; // (E)
    FtriagemDocumentoObjeto_IsSet_: boolean;
    procedure SettriagemDocumentoObjeto(value:tBaseTriagemDocumentoObjetoRequest);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCadastrarTriagemDocumentoObjeto_CadastrarTriagemDocumentoObjeto;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property triagemDocumentoObjeto: tBaseTriagemDocumentoObjetoRequest read FtriagemDocumentoObjeto write SettriagemDocumentoObjeto;
    property triagemDocumentoObjeto_IsSet_:boolean read FtriagemDocumentoObjeto_IsSet_;
  end;

const
  snCadastrarTriagemDocumentoObjeto = 'CadastrarTriagemDocumentoObjeto';

type
  tCadastrarTriagemDocumentoObjeto = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCadastrarTriagemDocumentoObjeto;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
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
    class function CreateFromXmlString(s: string): tEmitirContratoOperacaoTransporteResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snEmitirContratoOperacaoTransporteResponse_EmitirContratoOperacaoTransporteResponse = 'EmitirContratoOperacaoTransporteResponse';
  snEmitirContratoOperacaoTransporteResponse_EmitirContratoOperacaoTransporteResponse_EmitirContratoOperacaoTransporteResult = 'EmitirContratoOperacaoTransporteResult';

type
  tEmitirContratoOperacaoTransporteResponse_EmitirContratoOperacaoTransporteResponse = class
  private
    F_NameSpaceAlias: string;
    FEmitirContratoOperacaoTransporteResult: tEmitirContratoOperacaoTransporteResponse; // (E)
    FEmitirContratoOperacaoTransporteResult_IsSet_: boolean;
    procedure SetEmitirContratoOperacaoTransporteResult(value:tEmitirContratoOperacaoTransporteResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tEmitirContratoOperacaoTransporteResponse_EmitirContratoOperacaoTransporteResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property EmitirContratoOperacaoTransporteResult: tEmitirContratoOperacaoTransporteResponse read FEmitirContratoOperacaoTransporteResult write SetEmitirContratoOperacaoTransporteResult;
    property EmitirContratoOperacaoTransporteResult_IsSet_:boolean read FEmitirContratoOperacaoTransporteResult_IsSet_;
  end;

const
  snEmitirContratoOperacaoTransporte_EmitirContratoOperacaoTransporte = 'EmitirContratoOperacaoTransporte';
  snEmitirContratoOperacaoTransporte_EmitirContratoOperacaoTransporte_idOperacaoTransporte = 'idOperacaoTransporte';

type
  tEmitirContratoOperacaoTransporte_EmitirContratoOperacaoTransporte = class
  private
    F_NameSpaceAlias: string;
    FidOperacaoTransporte: integer; // (E)
    FidOperacaoTransporte_IsSet_: boolean;
    procedure SetidOperacaoTransporte(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tEmitirContratoOperacaoTransporte_EmitirContratoOperacaoTransporte;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property idOperacaoTransporte: integer read FidOperacaoTransporte write SetidOperacaoTransporte;
    property idOperacaoTransporte_IsSet_:boolean read FidOperacaoTransporte_IsSet_;
  end;

const
  snEmitirContratoOperacaoTransporte = 'EmitirContratoOperacaoTransporte';

type
  tEmitirContratoOperacaoTransporte = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tEmitirContratoOperacaoTransporte;
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
    class function CreateFromXmlString(s: string): tEmitirDeclaracaoOperacaoTransporteResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snEmitirDeclaracaoOperacaoTransporteResponse_EmitirDeclaracaoOperacaoTransporteResponse = 'EmitirDeclaracaoOperacaoTransporteResponse';
  snEmitirDeclaracaoOperacaoTransporteResponse_EmitirDeclaracaoOperacaoTransporteResponse_EmitirDeclaracaoOperacaoTransporteResult = 'EmitirDeclaracaoOperacaoTransporteResult';

type
  tEmitirDeclaracaoOperacaoTransporteResponse_EmitirDeclaracaoOperacaoTransporteResponse = class
  private
    F_NameSpaceAlias: string;
    FEmitirDeclaracaoOperacaoTransporteResult: tEmitirDeclaracaoOperacaoTransporteResponse; // (E)
    FEmitirDeclaracaoOperacaoTransporteResult_IsSet_: boolean;
    procedure SetEmitirDeclaracaoOperacaoTransporteResult(value:tEmitirDeclaracaoOperacaoTransporteResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tEmitirDeclaracaoOperacaoTransporteResponse_EmitirDeclaracaoOperacaoTransporteResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property EmitirDeclaracaoOperacaoTransporteResult: tEmitirDeclaracaoOperacaoTransporteResponse read FEmitirDeclaracaoOperacaoTransporteResult write SetEmitirDeclaracaoOperacaoTransporteResult;
    property EmitirDeclaracaoOperacaoTransporteResult_IsSet_:boolean read FEmitirDeclaracaoOperacaoTransporteResult_IsSet_;
  end;

const
  snEmitirDeclaracaoOperacaoTransporte_EmitirDeclaracaoOperacaoTransporte = 'EmitirDeclaracaoOperacaoTransporte';
  snEmitirDeclaracaoOperacaoTransporte_EmitirDeclaracaoOperacaoTransporte_idOperacaoTransporte = 'idOperacaoTransporte';

type
  tEmitirDeclaracaoOperacaoTransporte_EmitirDeclaracaoOperacaoTransporte = class
  private
    F_NameSpaceAlias: string;
    FidOperacaoTransporte: integer; // (E)
    FidOperacaoTransporte_IsSet_: boolean;
    procedure SetidOperacaoTransporte(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tEmitirDeclaracaoOperacaoTransporte_EmitirDeclaracaoOperacaoTransporte;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property idOperacaoTransporte: integer read FidOperacaoTransporte write SetidOperacaoTransporte;
    property idOperacaoTransporte_IsSet_:boolean read FidOperacaoTransporte_IsSet_;
  end;

const
  snEmitirDeclaracaoOperacaoTransporte = 'EmitirDeclaracaoOperacaoTransporte';

type
  tEmitirDeclaracaoOperacaoTransporte = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tEmitirDeclaracaoOperacaoTransporte;
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
    class function CreateFromXmlString(s: string): tEmitirReciboValePedagioViaFacilResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snEmitirReciboValePedagioViaFacilResponse_EmitirReciboValePedagioViaFacilResponse = 'EmitirReciboValePedagioViaFacilResponse';
  snEmitirReciboValePedagioViaFacilResponse_EmitirReciboValePedagioViaFacilResponse_EmitirReciboValePedagioViaFacilResult = 'EmitirReciboValePedagioViaFacilResult';

type
  tEmitirReciboValePedagioViaFacilResponse_EmitirReciboValePedagioViaFacilResponse = class
  private
    F_NameSpaceAlias: string;
    FEmitirReciboValePedagioViaFacilResult: tEmitirReciboValePedagioViaFacilResponse; // (E)
    FEmitirReciboValePedagioViaFacilResult_IsSet_: boolean;
    procedure SetEmitirReciboValePedagioViaFacilResult(value:tEmitirReciboValePedagioViaFacilResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tEmitirReciboValePedagioViaFacilResponse_EmitirReciboValePedagioViaFacilResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property EmitirReciboValePedagioViaFacilResult: tEmitirReciboValePedagioViaFacilResponse read FEmitirReciboValePedagioViaFacilResult write SetEmitirReciboValePedagioViaFacilResult;
    property EmitirReciboValePedagioViaFacilResult_IsSet_:boolean read FEmitirReciboValePedagioViaFacilResult_IsSet_;
  end;

const
  snEmitirReciboValePedagioViaFacil_EmitirReciboValePedagioViaFacil = 'EmitirReciboValePedagioViaFacil';
  snEmitirReciboValePedagioViaFacil_EmitirReciboValePedagioViaFacil_idOperacaoTransporte = 'idOperacaoTransporte';

type
  tEmitirReciboValePedagioViaFacil_EmitirReciboValePedagioViaFacil = class
  private
    F_NameSpaceAlias: string;
    FidOperacaoTransporte: integer; // (E)
    FidOperacaoTransporte_IsSet_: boolean;
    procedure SetidOperacaoTransporte(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tEmitirReciboValePedagioViaFacil_EmitirReciboValePedagioViaFacil;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property idOperacaoTransporte: integer read FidOperacaoTransporte write SetidOperacaoTransporte;
    property idOperacaoTransporte_IsSet_:boolean read FidOperacaoTransporte_IsSet_;
  end;

const
  snEmitirReciboValePedagioViaFacil = 'EmitirReciboValePedagioViaFacil';

type
  tEmitirReciboValePedagioViaFacil = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tEmitirReciboValePedagioViaFacil;
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
    class function CreateFromXmlString(s: string): tEmitirReciboValePedagioVectioResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snEmitirReciboValePedagioVectioResponse_EmitirReciboValePedagioVectioResponse = 'EmitirReciboValePedagioVectioResponse';
  snEmitirReciboValePedagioVectioResponse_EmitirReciboValePedagioVectioResponse_EmitirReciboValePedagioVectioResult = 'EmitirReciboValePedagioVectioResult';

type
  tEmitirReciboValePedagioVectioResponse_EmitirReciboValePedagioVectioResponse = class
  private
    F_NameSpaceAlias: string;
    FEmitirReciboValePedagioVectioResult: tEmitirReciboValePedagioVectioResponse; // (E)
    FEmitirReciboValePedagioVectioResult_IsSet_: boolean;
    procedure SetEmitirReciboValePedagioVectioResult(value:tEmitirReciboValePedagioVectioResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tEmitirReciboValePedagioVectioResponse_EmitirReciboValePedagioVectioResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property EmitirReciboValePedagioVectioResult: tEmitirReciboValePedagioVectioResponse read FEmitirReciboValePedagioVectioResult write SetEmitirReciboValePedagioVectioResult;
    property EmitirReciboValePedagioVectioResult_IsSet_:boolean read FEmitirReciboValePedagioVectioResult_IsSet_;
  end;

const
  snEmitirReciboValePedagioVectio_EmitirReciboValePedagioVectio = 'EmitirReciboValePedagioVectio';
  snEmitirReciboValePedagioVectio_EmitirReciboValePedagioVectio_idOperacaoTransporte = 'idOperacaoTransporte';

type
  tEmitirReciboValePedagioVectio_EmitirReciboValePedagioVectio = class
  private
    F_NameSpaceAlias: string;
    FidOperacaoTransporte: integer; // (E)
    FidOperacaoTransporte_IsSet_: boolean;
    procedure SetidOperacaoTransporte(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tEmitirReciboValePedagioVectio_EmitirReciboValePedagioVectio;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property idOperacaoTransporte: integer read FidOperacaoTransporte write SetidOperacaoTransporte;
    property idOperacaoTransporte_IsSet_:boolean read FidOperacaoTransporte_IsSet_;
  end;

const
  snEmitirReciboValePedagioVectio = 'EmitirReciboValePedagioVectio';

type
  tEmitirReciboValePedagioVectio = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tEmitirReciboValePedagioVectio;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snBuscarCobrancasGestoraResponse_BuscarCobrancasGestoraResponse = 'BuscarCobrancasGestoraResponse';
  snBuscarCobrancasGestoraResponse_BuscarCobrancasGestoraResponse_BuscarCobrancasGestoraResult = 'BuscarCobrancasGestoraResult';

type
  tBuscarCobrancasGestoraResponse_BuscarCobrancasGestoraResponse = class
  private
    F_NameSpaceAlias: string;
    FBuscarCobrancasGestoraResult: tBuscarCobrancaGestoraResponse; // (E)
    FBuscarCobrancasGestoraResult_IsSet_: boolean;
    procedure SetBuscarCobrancasGestoraResult(value:tBuscarCobrancaGestoraResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarCobrancasGestoraResponse_BuscarCobrancasGestoraResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property BuscarCobrancasGestoraResult: tBuscarCobrancaGestoraResponse read FBuscarCobrancasGestoraResult write SetBuscarCobrancasGestoraResult;
    property BuscarCobrancasGestoraResult_IsSet_:boolean read FBuscarCobrancasGestoraResult_IsSet_;
  end;

const
  snBuscarCobrancasGestoraResponse = 'BuscarCobrancasGestoraResponse';

type
  tBuscarCobrancasGestoraResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarCobrancasGestoraResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snBuscarCobrancasGestora_BuscarCobrancasGestora = 'BuscarCobrancasGestora';
  snBuscarCobrancasGestora_BuscarCobrancasGestora_origemCobranca = 'origemCobranca';
  snBuscarCobrancasGestora_BuscarCobrancasGestora_tipoCobranca = 'tipoCobranca';
  snBuscarCobrancasGestora_BuscarCobrancasGestora_dataHoraEmissao = 'dataHoraEmissao';

type
  tBuscarCobrancasGestora_BuscarCobrancasGestora = class
  private
    F_NameSpaceAlias: string;
    ForigemCobranca: integer; // (E)
    ForigemCobranca_IsSet_: boolean;
    FtipoCobranca: integer; // (E)
    FtipoCobranca_IsSet_: boolean;
    FdataHoraEmissao: tDateTime; // (E)
    FdataHoraEmissao_IsSet_: boolean;
    procedure SetorigemCobranca(value:integer);
    procedure SettipoCobranca(value:integer);
    procedure SetdataHoraEmissao(value:tDateTime);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarCobrancasGestora_BuscarCobrancasGestora;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property origemCobranca: integer read ForigemCobranca write SetorigemCobranca;
    property origemCobranca_IsSet_:boolean read ForigemCobranca_IsSet_;
    property tipoCobranca: integer read FtipoCobranca write SettipoCobranca;
    property tipoCobranca_IsSet_:boolean read FtipoCobranca_IsSet_;
    property dataHoraEmissao: tDateTime read FdataHoraEmissao write SetdataHoraEmissao;
    property dataHoraEmissao_IsSet_:boolean read FdataHoraEmissao_IsSet_;
  end;

const
  snBuscarCobrancasGestora = 'BuscarCobrancasGestora';

type
  tBuscarCobrancasGestora = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarCobrancasGestora;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snConsultarExtratoContaPrePagaVectioResponse_ConsultarExtratoContaPrePagaVectioResponse = 'ConsultarExtratoContaPrePagaVectioResponse';
  snConsultarExtratoContaPrePagaVectioResponse_ConsultarExtratoContaPrePagaVectioResponse_ConsultarExtratoContaPrePagaVectioResult = 'ConsultarExtratoContaPrePagaVectioResult';

type
  tConsultarExtratoContaPrePagaVectioResponse_ConsultarExtratoContaPrePagaVectioResponse = class
  private
    F_NameSpaceAlias: string;
    FConsultarExtratoContaPrePagaVectioResult: tExtratoResponse; // (E)
    FConsultarExtratoContaPrePagaVectioResult_IsSet_: boolean;
    procedure SetConsultarExtratoContaPrePagaVectioResult(value:tExtratoResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tConsultarExtratoContaPrePagaVectioResponse_ConsultarExtratoContaPrePagaVectioResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ConsultarExtratoContaPrePagaVectioResult: tExtratoResponse read FConsultarExtratoContaPrePagaVectioResult write SetConsultarExtratoContaPrePagaVectioResult;
    property ConsultarExtratoContaPrePagaVectioResult_IsSet_:boolean read FConsultarExtratoContaPrePagaVectioResult_IsSet_;
  end;

const
  snConsultarExtratoContaPrePagaVectioResponse = 'ConsultarExtratoContaPrePagaVectioResponse';

type
  tConsultarExtratoContaPrePagaVectioResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tConsultarExtratoContaPrePagaVectioResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snConsultarExtratoContaPrePagaVectio_ConsultarExtratoContaPrePagaVectio = 'ConsultarExtratoContaPrePagaVectio';
  snConsultarExtratoContaPrePagaVectio_ConsultarExtratoContaPrePagaVectio_dataInicioBusca = 'dataInicioBusca';
  snConsultarExtratoContaPrePagaVectio_ConsultarExtratoContaPrePagaVectio_dataFimBusca = 'dataFimBusca';

type
  tConsultarExtratoContaPrePagaVectio_ConsultarExtratoContaPrePagaVectio = class
  private
    F_NameSpaceAlias: string;
    FdataInicioBusca: tDateTime; // (E)
    FdataInicioBusca_IsSet_: boolean;
    FdataFimBusca: tDateTime; // (E)
    FdataFimBusca_IsSet_: boolean;
    procedure SetdataInicioBusca(value:tDateTime);
    procedure SetdataFimBusca(value:tDateTime);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tConsultarExtratoContaPrePagaVectio_ConsultarExtratoContaPrePagaVectio;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property dataInicioBusca: tDateTime read FdataInicioBusca write SetdataInicioBusca;
    property dataInicioBusca_IsSet_:boolean read FdataInicioBusca_IsSet_;
    property dataFimBusca: tDateTime read FdataFimBusca write SetdataFimBusca;
    property dataFimBusca_IsSet_:boolean read FdataFimBusca_IsSet_;
  end;

const
  snConsultarExtratoContaPrePagaVectio = 'ConsultarExtratoContaPrePagaVectio';

type
  tConsultarExtratoContaPrePagaVectio = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tConsultarExtratoContaPrePagaVectio;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snConsultarSaldoContaPrePagaVectioResponse_ConsultarSaldoContaPrePagaVectioResponse = 'ConsultarSaldoContaPrePagaVectioResponse';
  snConsultarSaldoContaPrePagaVectioResponse_ConsultarSaldoContaPrePagaVectioResponse_ConsultarSaldoContaPrePagaVectioResult = 'ConsultarSaldoContaPrePagaVectioResult';

type
  tConsultarSaldoContaPrePagaVectioResponse_ConsultarSaldoContaPrePagaVectioResponse = class
  private
    F_NameSpaceAlias: string;
    FConsultarSaldoContaPrePagaVectioResult: extended; // (E)
    FConsultarSaldoContaPrePagaVectioResult_IsSet_: boolean;
    procedure SetConsultarSaldoContaPrePagaVectioResult(value:extended);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tConsultarSaldoContaPrePagaVectioResponse_ConsultarSaldoContaPrePagaVectioResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ConsultarSaldoContaPrePagaVectioResult: extended read FConsultarSaldoContaPrePagaVectioResult write SetConsultarSaldoContaPrePagaVectioResult;
    property ConsultarSaldoContaPrePagaVectioResult_IsSet_:boolean read FConsultarSaldoContaPrePagaVectioResult_IsSet_;
  end;

const
  snConsultarSaldoContaPrePagaVectioResponse = 'ConsultarSaldoContaPrePagaVectioResponse';

type
  tConsultarSaldoContaPrePagaVectioResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tConsultarSaldoContaPrePagaVectioResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snConsultarSaldoContaPrePagaVectio_ConsultarSaldoContaPrePagaVectio = 'ConsultarSaldoContaPrePagaVectio';

type
  tConsultarSaldoContaPrePagaVectio_ConsultarSaldoContaPrePagaVectio = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tConsultarSaldoContaPrePagaVectio_ConsultarSaldoContaPrePagaVectio;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snConsultarSaldoContaPrePagaVectio = 'ConsultarSaldoContaPrePagaVectio';

type
  tConsultarSaldoContaPrePagaVectio = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tConsultarSaldoContaPrePagaVectio;
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
    class function CreateFromXmlString(s: string): tBuscarParametrosComerciaisResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snBuscarParametrosComerciaisResponse_BuscarParametrosComerciaisResponse = 'BuscarParametrosComerciaisResponse';
  snBuscarParametrosComerciaisResponse_BuscarParametrosComerciaisResponse_BuscarParametrosComerciaisResult = 'BuscarParametrosComerciaisResult';

type
  tBuscarParametrosComerciaisResponse_BuscarParametrosComerciaisResponse = class
  private
    F_NameSpaceAlias: string;
    FBuscarParametrosComerciaisResult: tBuscarParametrosComerciaisResponse; // (E)
    FBuscarParametrosComerciaisResult_IsSet_: boolean;
    procedure SetBuscarParametrosComerciaisResult(value:tBuscarParametrosComerciaisResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarParametrosComerciaisResponse_BuscarParametrosComerciaisResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property BuscarParametrosComerciaisResult: tBuscarParametrosComerciaisResponse read FBuscarParametrosComerciaisResult write SetBuscarParametrosComerciaisResult;
    property BuscarParametrosComerciaisResult_IsSet_:boolean read FBuscarParametrosComerciaisResult_IsSet_;
  end;

const
  snBuscarParametrosComerciais_BuscarParametrosComerciais = 'BuscarParametrosComerciais';

type
  tBuscarParametrosComerciais_BuscarParametrosComerciais = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarParametrosComerciais_BuscarParametrosComerciais;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snBuscarParametrosComerciais = 'BuscarParametrosComerciais';

type
  tBuscarParametrosComerciais = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarParametrosComerciais;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snAssociarCartaoEmpresaResponse_AssociarCartaoEmpresaResponse = 'AssociarCartaoEmpresaResponse';
  snAssociarCartaoEmpresaResponse_AssociarCartaoEmpresaResponse_AssociarCartaoEmpresaResult = 'AssociarCartaoEmpresaResult';

type
  tAssociarCartaoEmpresaResponse_AssociarCartaoEmpresaResponse = class
  private
    F_NameSpaceAlias: string;
    FAssociarCartaoEmpresaResult: tBaseResponse; // (E)
    FAssociarCartaoEmpresaResult_IsSet_: boolean;
    procedure SetAssociarCartaoEmpresaResult(value:tBaseResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAssociarCartaoEmpresaResponse_AssociarCartaoEmpresaResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property AssociarCartaoEmpresaResult: tBaseResponse read FAssociarCartaoEmpresaResult write SetAssociarCartaoEmpresaResult;
    property AssociarCartaoEmpresaResult_IsSet_:boolean read FAssociarCartaoEmpresaResult_IsSet_;
  end;

const
  snAssociarCartaoEmpresaResponse = 'AssociarCartaoEmpresaResponse';

type
  tAssociarCartaoEmpresaResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAssociarCartaoEmpresaResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snAssociarCartaoEmpresa_AssociarCartaoEmpresa = 'AssociarCartaoEmpresa';
  snAssociarCartaoEmpresa_AssociarCartaoEmpresa_cnpjEtc = 'cnpjEtc';
  snAssociarCartaoEmpresa_AssociarCartaoEmpresa_numeroCartao = 'numeroCartao';

type
  tAssociarCartaoEmpresa_AssociarCartaoEmpresa = class
  private
    F_NameSpaceAlias: string;
    FcnpjEtc: string; // (E)
    FcnpjEtc_IsSet_: boolean;
    FnumeroCartao: string; // (E)
    FnumeroCartao_IsSet_: boolean;
    procedure SetcnpjEtc(value:string);
    procedure SetnumeroCartao(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAssociarCartaoEmpresa_AssociarCartaoEmpresa;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property cnpjEtc: string read FcnpjEtc write SetcnpjEtc;
    property cnpjEtc_IsSet_:boolean read FcnpjEtc_IsSet_;
    property numeroCartao: string read FnumeroCartao write SetnumeroCartao;
    property numeroCartao_IsSet_:boolean read FnumeroCartao_IsSet_;
  end;

const
  snAssociarCartaoEmpresa = 'AssociarCartaoEmpresa';

type
  tAssociarCartaoEmpresa = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAssociarCartaoEmpresa;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snSubstituirCartaoDoPortadorResponse_SubstituirCartaoDoPortadorResponse = 'SubstituirCartaoDoPortadorResponse';
  snSubstituirCartaoDoPortadorResponse_SubstituirCartaoDoPortadorResponse_SubstituirCartaoDoPortadorResult = 'SubstituirCartaoDoPortadorResult';

type
  tSubstituirCartaoDoPortadorResponse_SubstituirCartaoDoPortadorResponse = class
  private
    F_NameSpaceAlias: string;
    FSubstituirCartaoDoPortadorResult: tBaseResponse; // (E)
    FSubstituirCartaoDoPortadorResult_IsSet_: boolean;
    procedure SetSubstituirCartaoDoPortadorResult(value:tBaseResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tSubstituirCartaoDoPortadorResponse_SubstituirCartaoDoPortadorResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property SubstituirCartaoDoPortadorResult: tBaseResponse read FSubstituirCartaoDoPortadorResult write SetSubstituirCartaoDoPortadorResult;
    property SubstituirCartaoDoPortadorResult_IsSet_:boolean read FSubstituirCartaoDoPortadorResult_IsSet_;
  end;

const
  snSubstituirCartaoDoPortadorResponse = 'SubstituirCartaoDoPortadorResponse';

type
  tSubstituirCartaoDoPortadorResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tSubstituirCartaoDoPortadorResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snSubstituirCartaoDoPortador_SubstituirCartaoDoPortador = 'SubstituirCartaoDoPortador';
  snSubstituirCartaoDoPortador_SubstituirCartaoDoPortador_dadosParaSubstituicao = 'dadosParaSubstituicao';

type
  tSubstituirCartaoDoPortador_SubstituirCartaoDoPortador = class
  private
    F_NameSpaceAlias: string;
    FdadosParaSubstituicao: tSubstituirCartaoDoPortadorRequest; // (E)
    FdadosParaSubstituicao_IsSet_: boolean;
    procedure SetdadosParaSubstituicao(value:tSubstituirCartaoDoPortadorRequest);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tSubstituirCartaoDoPortador_SubstituirCartaoDoPortador;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property dadosParaSubstituicao: tSubstituirCartaoDoPortadorRequest read FdadosParaSubstituicao write SetdadosParaSubstituicao;
    property dadosParaSubstituicao_IsSet_:boolean read FdadosParaSubstituicao_IsSet_;
  end;

const
  snSubstituirCartaoDoPortador = 'SubstituirCartaoDoPortador';

type
  tSubstituirCartaoDoPortador = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tSubstituirCartaoDoPortador;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
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
    class function CreateFromXmlString(s: string): tProcessarCargaFreteAvulsaResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snProcessarCargaFreteAvulsaResponse_ProcessarCargaFreteAvulsaResponse = 'ProcessarCargaFreteAvulsaResponse';
  snProcessarCargaFreteAvulsaResponse_ProcessarCargaFreteAvulsaResponse_ProcessarCargaFreteAvulsaResult = 'ProcessarCargaFreteAvulsaResult';

type
  tProcessarCargaFreteAvulsaResponse_ProcessarCargaFreteAvulsaResponse = class
  private
    F_NameSpaceAlias: string;
    FProcessarCargaFreteAvulsaResult: tProcessarCargaFreteAvulsaResponse; // (E)
    FProcessarCargaFreteAvulsaResult_IsSet_: boolean;
    procedure SetProcessarCargaFreteAvulsaResult(value:tProcessarCargaFreteAvulsaResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tProcessarCargaFreteAvulsaResponse_ProcessarCargaFreteAvulsaResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ProcessarCargaFreteAvulsaResult: tProcessarCargaFreteAvulsaResponse read FProcessarCargaFreteAvulsaResult write SetProcessarCargaFreteAvulsaResult;
    property ProcessarCargaFreteAvulsaResult_IsSet_:boolean read FProcessarCargaFreteAvulsaResult_IsSet_;
  end;

const
  snProcessarCargaFreteAvulsa_ProcessarCargaFreteAvulsa = 'ProcessarCargaFreteAvulsa';
  snProcessarCargaFreteAvulsa_ProcessarCargaFreteAvulsa_dadosParaCarga = 'dadosParaCarga';

type
  tProcessarCargaFreteAvulsa_ProcessarCargaFreteAvulsa = class
  private
    F_NameSpaceAlias: string;
    FdadosParaCarga: tProcessarCargaFreteAvulsaRequest; // (E)
    FdadosParaCarga_IsSet_: boolean;
    procedure SetdadosParaCarga(value:tProcessarCargaFreteAvulsaRequest);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tProcessarCargaFreteAvulsa_ProcessarCargaFreteAvulsa;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property dadosParaCarga: tProcessarCargaFreteAvulsaRequest read FdadosParaCarga write SetdadosParaCarga;
    property dadosParaCarga_IsSet_:boolean read FdadosParaCarga_IsSet_;
  end;

const
  snProcessarCargaFreteAvulsa = 'ProcessarCargaFreteAvulsa';

type
  tProcessarCargaFreteAvulsa = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tProcessarCargaFreteAvulsa;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snDesbloquearCartaoResponse_DesbloquearCartaoResponse = 'DesbloquearCartaoResponse';
  snDesbloquearCartaoResponse_DesbloquearCartaoResponse_DesbloquearCartaoResult = 'DesbloquearCartaoResult';

type
  tDesbloquearCartaoResponse_DesbloquearCartaoResponse = class
  private
    F_NameSpaceAlias: string;
    FDesbloquearCartaoResult: tBaseResponse; // (E)
    FDesbloquearCartaoResult_IsSet_: boolean;
    procedure SetDesbloquearCartaoResult(value:tBaseResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tDesbloquearCartaoResponse_DesbloquearCartaoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property DesbloquearCartaoResult: tBaseResponse read FDesbloquearCartaoResult write SetDesbloquearCartaoResult;
    property DesbloquearCartaoResult_IsSet_:boolean read FDesbloquearCartaoResult_IsSet_;
  end;

const
  snDesbloquearCartaoResponse = 'DesbloquearCartaoResponse';

type
  tDesbloquearCartaoResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tDesbloquearCartaoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snDesbloquearCartao_DesbloquearCartao = 'DesbloquearCartao';
  snDesbloquearCartao_DesbloquearCartao_numeroCartao = 'numeroCartao';

type
  tDesbloquearCartao_DesbloquearCartao = class
  private
    F_NameSpaceAlias: string;
    FnumeroCartao: string; // (E)
    FnumeroCartao_IsSet_: boolean;
    procedure SetnumeroCartao(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tDesbloquearCartao_DesbloquearCartao;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property numeroCartao: string read FnumeroCartao write SetnumeroCartao;
    property numeroCartao_IsSet_:boolean read FnumeroCartao_IsSet_;
  end;

const
  snDesbloquearCartao = 'DesbloquearCartao';

type
  tDesbloquearCartao = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tDesbloquearCartao;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snAssociarCartaoMotoristaResponse_AssociarCartaoMotoristaResponse = 'AssociarCartaoMotoristaResponse';
  snAssociarCartaoMotoristaResponse_AssociarCartaoMotoristaResponse_AssociarCartaoMotoristaResult = 'AssociarCartaoMotoristaResult';

type
  tAssociarCartaoMotoristaResponse_AssociarCartaoMotoristaResponse = class
  private
    F_NameSpaceAlias: string;
    FAssociarCartaoMotoristaResult: tBaseResponse; // (E)
    FAssociarCartaoMotoristaResult_IsSet_: boolean;
    procedure SetAssociarCartaoMotoristaResult(value:tBaseResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAssociarCartaoMotoristaResponse_AssociarCartaoMotoristaResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property AssociarCartaoMotoristaResult: tBaseResponse read FAssociarCartaoMotoristaResult write SetAssociarCartaoMotoristaResult;
    property AssociarCartaoMotoristaResult_IsSet_:boolean read FAssociarCartaoMotoristaResult_IsSet_;
  end;

const
  snAssociarCartaoMotoristaResponse = 'AssociarCartaoMotoristaResponse';

type
  tAssociarCartaoMotoristaResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAssociarCartaoMotoristaResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snAssociarCartaoMotorista_AssociarCartaoMotorista = 'AssociarCartaoMotorista';
  snAssociarCartaoMotorista_AssociarCartaoMotorista_cpfCnpjTransportador = 'cpfCnpjTransportador';
  snAssociarCartaoMotorista_AssociarCartaoMotorista_cpfMotorista = 'cpfMotorista';
  snAssociarCartaoMotorista_AssociarCartaoMotorista_numeroCartao = 'numeroCartao';

type
  tAssociarCartaoMotorista_AssociarCartaoMotorista = class
  private
    F_NameSpaceAlias: string;
    FcpfCnpjTransportador: string; // (E)
    FcpfCnpjTransportador_IsSet_: boolean;
    FcpfMotorista: string; // (E)
    FcpfMotorista_IsSet_: boolean;
    FnumeroCartao: string; // (E)
    FnumeroCartao_IsSet_: boolean;
    procedure SetcpfCnpjTransportador(value:string);
    procedure SetcpfMotorista(value:string);
    procedure SetnumeroCartao(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAssociarCartaoMotorista_AssociarCartaoMotorista;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property cpfCnpjTransportador: string read FcpfCnpjTransportador write SetcpfCnpjTransportador;
    property cpfCnpjTransportador_IsSet_:boolean read FcpfCnpjTransportador_IsSet_;
    property cpfMotorista: string read FcpfMotorista write SetcpfMotorista;
    property cpfMotorista_IsSet_:boolean read FcpfMotorista_IsSet_;
    property numeroCartao: string read FnumeroCartao write SetnumeroCartao;
    property numeroCartao_IsSet_:boolean read FnumeroCartao_IsSet_;
  end;

const
  snAssociarCartaoMotorista = 'AssociarCartaoMotorista';

type
  tAssociarCartaoMotorista = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAssociarCartaoMotorista;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snAssociarCartaoNaoEquiparadoResponse_AssociarCartaoNaoEquiparadoResponse = 'AssociarCartaoNaoEquiparadoResponse';
  snAssociarCartaoNaoEquiparadoResponse_AssociarCartaoNaoEquiparadoResponse_AssociarCartaoNaoEquiparadoResult = 'AssociarCartaoNaoEquiparadoResult';

type
  tAssociarCartaoNaoEquiparadoResponse_AssociarCartaoNaoEquiparadoResponse = class
  private
    F_NameSpaceAlias: string;
    FAssociarCartaoNaoEquiparadoResult: tBaseResponse; // (E)
    FAssociarCartaoNaoEquiparadoResult_IsSet_: boolean;
    procedure SetAssociarCartaoNaoEquiparadoResult(value:tBaseResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAssociarCartaoNaoEquiparadoResponse_AssociarCartaoNaoEquiparadoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property AssociarCartaoNaoEquiparadoResult: tBaseResponse read FAssociarCartaoNaoEquiparadoResult write SetAssociarCartaoNaoEquiparadoResult;
    property AssociarCartaoNaoEquiparadoResult_IsSet_:boolean read FAssociarCartaoNaoEquiparadoResult_IsSet_;
  end;

const
  snAssociarCartaoNaoEquiparadoResponse = 'AssociarCartaoNaoEquiparadoResponse';

type
  tAssociarCartaoNaoEquiparadoResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAssociarCartaoNaoEquiparadoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snAssociarCartaoNaoEquiparado_AssociarCartaoNaoEquiparado = 'AssociarCartaoNaoEquiparado';
  snAssociarCartaoNaoEquiparado_AssociarCartaoNaoEquiparado_dadosAssociacao = 'dadosAssociacao';

type
  tAssociarCartaoNaoEquiparado_AssociarCartaoNaoEquiparado = class
  private
    F_NameSpaceAlias: string;
    FdadosAssociacao: tAssociacaoCartaoTransportadorRequest; // (E)
    FdadosAssociacao_IsSet_: boolean;
    procedure SetdadosAssociacao(value:tAssociacaoCartaoTransportadorRequest);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAssociarCartaoNaoEquiparado_AssociarCartaoNaoEquiparado;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property dadosAssociacao: tAssociacaoCartaoTransportadorRequest read FdadosAssociacao write SetdadosAssociacao;
    property dadosAssociacao_IsSet_:boolean read FdadosAssociacao_IsSet_;
  end;

const
  snAssociarCartaoNaoEquiparado = 'AssociarCartaoNaoEquiparado';

type
  tAssociarCartaoNaoEquiparado = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAssociarCartaoNaoEquiparado;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snAssociarCartaoEquiparadoResponse_AssociarCartaoEquiparadoResponse = 'AssociarCartaoEquiparadoResponse';
  snAssociarCartaoEquiparadoResponse_AssociarCartaoEquiparadoResponse_AssociarCartaoEquiparadoResult = 'AssociarCartaoEquiparadoResult';

type
  tAssociarCartaoEquiparadoResponse_AssociarCartaoEquiparadoResponse = class
  private
    F_NameSpaceAlias: string;
    FAssociarCartaoEquiparadoResult: tBaseResponse; // (E)
    FAssociarCartaoEquiparadoResult_IsSet_: boolean;
    procedure SetAssociarCartaoEquiparadoResult(value:tBaseResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAssociarCartaoEquiparadoResponse_AssociarCartaoEquiparadoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property AssociarCartaoEquiparadoResult: tBaseResponse read FAssociarCartaoEquiparadoResult write SetAssociarCartaoEquiparadoResult;
    property AssociarCartaoEquiparadoResult_IsSet_:boolean read FAssociarCartaoEquiparadoResult_IsSet_;
  end;

const
  snAssociarCartaoEquiparadoResponse = 'AssociarCartaoEquiparadoResponse';

type
  tAssociarCartaoEquiparadoResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAssociarCartaoEquiparadoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snAssociarCartaoEquiparado_AssociarCartaoEquiparado = 'AssociarCartaoEquiparado';
  snAssociarCartaoEquiparado_AssociarCartaoEquiparado_dadosAssociacao = 'dadosAssociacao';

type
  tAssociarCartaoEquiparado_AssociarCartaoEquiparado = class
  private
    F_NameSpaceAlias: string;
    FdadosAssociacao: tAssociacaoCartaoTransportadorRequest; // (E)
    FdadosAssociacao_IsSet_: boolean;
    procedure SetdadosAssociacao(value:tAssociacaoCartaoTransportadorRequest);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAssociarCartaoEquiparado_AssociarCartaoEquiparado;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property dadosAssociacao: tAssociacaoCartaoTransportadorRequest read FdadosAssociacao write SetdadosAssociacao;
    property dadosAssociacao_IsSet_:boolean read FdadosAssociacao_IsSet_;
  end;

const
  snAssociarCartaoEquiparado = 'AssociarCartaoEquiparado';

type
  tAssociarCartaoEquiparado = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAssociarCartaoEquiparado;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snAssociarCartaoAutonomoResponse_AssociarCartaoAutonomoResponse = 'AssociarCartaoAutonomoResponse';
  snAssociarCartaoAutonomoResponse_AssociarCartaoAutonomoResponse_AssociarCartaoAutonomoResult = 'AssociarCartaoAutonomoResult';

type
  tAssociarCartaoAutonomoResponse_AssociarCartaoAutonomoResponse = class
  private
    F_NameSpaceAlias: string;
    FAssociarCartaoAutonomoResult: tBaseResponse; // (E)
    FAssociarCartaoAutonomoResult_IsSet_: boolean;
    procedure SetAssociarCartaoAutonomoResult(value:tBaseResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAssociarCartaoAutonomoResponse_AssociarCartaoAutonomoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property AssociarCartaoAutonomoResult: tBaseResponse read FAssociarCartaoAutonomoResult write SetAssociarCartaoAutonomoResult;
    property AssociarCartaoAutonomoResult_IsSet_:boolean read FAssociarCartaoAutonomoResult_IsSet_;
  end;

const
  snAssociarCartaoAutonomoResponse = 'AssociarCartaoAutonomoResponse';

type
  tAssociarCartaoAutonomoResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAssociarCartaoAutonomoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snAssociarCartaoAutonomo_AssociarCartaoAutonomo = 'AssociarCartaoAutonomo';
  snAssociarCartaoAutonomo_AssociarCartaoAutonomo_cpfAutonomo = 'cpfAutonomo';
  snAssociarCartaoAutonomo_AssociarCartaoAutonomo_numeroCartao = 'numeroCartao';

type
  tAssociarCartaoAutonomo_AssociarCartaoAutonomo = class
  private
    F_NameSpaceAlias: string;
    FcpfAutonomo: string; // (E)
    FcpfAutonomo_IsSet_: boolean;
    FnumeroCartao: string; // (E)
    FnumeroCartao_IsSet_: boolean;
    procedure SetcpfAutonomo(value:string);
    procedure SetnumeroCartao(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAssociarCartaoAutonomo_AssociarCartaoAutonomo;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property cpfAutonomo: string read FcpfAutonomo write SetcpfAutonomo;
    property cpfAutonomo_IsSet_:boolean read FcpfAutonomo_IsSet_;
    property numeroCartao: string read FnumeroCartao write SetnumeroCartao;
    property numeroCartao_IsSet_:boolean read FnumeroCartao_IsSet_;
  end;

const
  snAssociarCartaoAutonomo = 'AssociarCartaoAutonomo';

type
  tAssociarCartaoAutonomo = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAssociarCartaoAutonomo;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snConferirDocumentacaoOperacaoTransporteTriagemResponse_ConferirDocumentacaoOperacaoTransporteTriagemResponse = 'ConferirDocumentacaoOperacaoTransporteTriagemResponse';
  snConferirDocumentacaoOperacaoTransporteTriagemResponse_ConferirDocumentacaoOperacaoTransporteTriagemResponse_ConferirDocumentacaoOperacaoTransporteTriagemResult = 'ConferirDocumentacaoOperacaoTransporteTriagemResult';

type
  tConferirDocumentacaoOperacaoTransporteTriagemResponse_ConferirDocumentacaoOperacaoTransporteTriagemResponse = class
  private
    F_NameSpaceAlias: string;
    FConferirDocumentacaoOperacaoTransporteTriagemResult: tConferirDocumentacaoTriagemResponse; // (E)
    FConferirDocumentacaoOperacaoTransporteTriagemResult_IsSet_: boolean;
    procedure SetConferirDocumentacaoOperacaoTransporteTriagemResult(value:tConferirDocumentacaoTriagemResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tConferirDocumentacaoOperacaoTransporteTriagemResponse_ConferirDocumentacaoOperacaoTransporteTriagemResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ConferirDocumentacaoOperacaoTransporteTriagemResult: tConferirDocumentacaoTriagemResponse read FConferirDocumentacaoOperacaoTransporteTriagemResult write SetConferirDocumentacaoOperacaoTransporteTriagemResult;
    property ConferirDocumentacaoOperacaoTransporteTriagemResult_IsSet_:boolean read FConferirDocumentacaoOperacaoTransporteTriagemResult_IsSet_;
  end;

const
  snConferirDocumentacaoOperacaoTransporteTriagemResponse = 'ConferirDocumentacaoOperacaoTransporteTriagemResponse';

type
  tConferirDocumentacaoOperacaoTransporteTriagemResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tConferirDocumentacaoOperacaoTransporteTriagemResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snConferirDocumentacaoOperacaoTransporteTriagem_ConferirDocumentacaoOperacaoTransporteTriagem = 'ConferirDocumentacaoOperacaoTransporteTriagem';
  snConferirDocumentacaoOperacaoTransporteTriagem_ConferirDocumentacaoOperacaoTransporteTriagem_CIOT = 'CIOT';

type
  tConferirDocumentacaoOperacaoTransporteTriagem_ConferirDocumentacaoOperacaoTransporteTriagem = class
  private
    F_NameSpaceAlias: string;
    FCIOT: string; // (E)
    FCIOT_IsSet_: boolean;
    procedure SetCIOT(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tConferirDocumentacaoOperacaoTransporteTriagem_ConferirDocumentacaoOperacaoTransporteTriagem;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CIOT: string read FCIOT write SetCIOT;
    property CIOT_IsSet_:boolean read FCIOT_IsSet_;
  end;

const
  snConferirDocumentacaoOperacaoTransporteTriagem = 'ConferirDocumentacaoOperacaoTransporteTriagem';

type
  tConferirDocumentacaoOperacaoTransporteTriagem = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tConferirDocumentacaoOperacaoTransporteTriagem;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snObterOperacaoPorCIOTResponse_ObterOperacaoPorCIOTResponse = 'ObterOperacaoPorCIOTResponse';
  snObterOperacaoPorCIOTResponse_ObterOperacaoPorCIOTResponse_ObterOperacaoPorCIOTResult = 'ObterOperacaoPorCIOTResult';

type
  tObterOperacaoPorCIOTResponse_ObterOperacaoPorCIOTResponse = class
  private
    F_NameSpaceAlias: string;
    FObterOperacaoPorCIOTResult: tObterOperacaoTransporteResponse; // (E)
    FObterOperacaoPorCIOTResult_IsSet_: boolean;
    procedure SetObterOperacaoPorCIOTResult(value:tObterOperacaoTransporteResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterOperacaoPorCIOTResponse_ObterOperacaoPorCIOTResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ObterOperacaoPorCIOTResult: tObterOperacaoTransporteResponse read FObterOperacaoPorCIOTResult write SetObterOperacaoPorCIOTResult;
    property ObterOperacaoPorCIOTResult_IsSet_:boolean read FObterOperacaoPorCIOTResult_IsSet_;
  end;

const
  snObterOperacaoPorCIOTResponse = 'ObterOperacaoPorCIOTResponse';

type
  tObterOperacaoPorCIOTResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterOperacaoPorCIOTResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snObterOperacaoPorCIOT_ObterOperacaoPorCIOT = 'ObterOperacaoPorCIOT';
  snObterOperacaoPorCIOT_ObterOperacaoPorCIOT_CIOT = 'CIOT';

type
  tObterOperacaoPorCIOT_ObterOperacaoPorCIOT = class
  private
    F_NameSpaceAlias: string;
    FCIOT: string; // (E)
    FCIOT_IsSet_: boolean;
    procedure SetCIOT(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterOperacaoPorCIOT_ObterOperacaoPorCIOT;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CIOT: string read FCIOT write SetCIOT;
    property CIOT_IsSet_:boolean read FCIOT_IsSet_;
  end;

const
  snObterOperacaoPorCIOT = 'ObterOperacaoPorCIOT';

type
  tObterOperacaoPorCIOT = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterOperacaoPorCIOT;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snObterOperacaoPorIdResponse_ObterOperacaoPorIdResponse = 'ObterOperacaoPorIdResponse';
  snObterOperacaoPorIdResponse_ObterOperacaoPorIdResponse_ObterOperacaoPorIdResult = 'ObterOperacaoPorIdResult';

type
  tObterOperacaoPorIdResponse_ObterOperacaoPorIdResponse = class
  private
    F_NameSpaceAlias: string;
    FObterOperacaoPorIdResult: tObterOperacaoTransporteResponse; // (E)
    FObterOperacaoPorIdResult_IsSet_: boolean;
    procedure SetObterOperacaoPorIdResult(value:tObterOperacaoTransporteResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterOperacaoPorIdResponse_ObterOperacaoPorIdResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ObterOperacaoPorIdResult: tObterOperacaoTransporteResponse read FObterOperacaoPorIdResult write SetObterOperacaoPorIdResult;
    property ObterOperacaoPorIdResult_IsSet_:boolean read FObterOperacaoPorIdResult_IsSet_;
  end;

const
  snObterOperacaoPorIdResponse = 'ObterOperacaoPorIdResponse';

type
  tObterOperacaoPorIdResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterOperacaoPorIdResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snObterOperacaoPorId_ObterOperacaoPorId = 'ObterOperacaoPorId';
  snObterOperacaoPorId_ObterOperacaoPorId_idOperacaoTransporte = 'idOperacaoTransporte';

type
  tObterOperacaoPorId_ObterOperacaoPorId = class
  private
    F_NameSpaceAlias: string;
    FidOperacaoTransporte: integer; // (E)
    FidOperacaoTransporte_IsSet_: boolean;
    procedure SetidOperacaoTransporte(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterOperacaoPorId_ObterOperacaoPorId;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property idOperacaoTransporte: integer read FidOperacaoTransporte write SetidOperacaoTransporte;
    property idOperacaoTransporte_IsSet_:boolean read FidOperacaoTransporte_IsSet_;
  end;

const
  snObterOperacaoPorId = 'ObterOperacaoPorId';

type
  tObterOperacaoPorId = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterOperacaoPorId;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snBuscarOperacaoTranporteParcelasResponse_BuscarOperacaoTranporteParcelasResponse = 'BuscarOperacaoTranporteParcelasResponse';
  snBuscarOperacaoTranporteParcelasResponse_BuscarOperacaoTranporteParcelasResponse_BuscarOperacaoTranporteParcelasResult = 'BuscarOperacaoTranporteParcelasResult';

type
  tBuscarOperacaoTranporteParcelasResponse_BuscarOperacaoTranporteParcelasResponse = class
  private
    F_NameSpaceAlias: string;
    FBuscarOperacaoTranporteParcelasResult: tBuscaOperacaoTransporteParcelasResponse; // (E)
    FBuscarOperacaoTranporteParcelasResult_IsSet_: boolean;
    procedure SetBuscarOperacaoTranporteParcelasResult(value:tBuscaOperacaoTransporteParcelasResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarOperacaoTranporteParcelasResponse_BuscarOperacaoTranporteParcelasResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property BuscarOperacaoTranporteParcelasResult: tBuscaOperacaoTransporteParcelasResponse read FBuscarOperacaoTranporteParcelasResult write SetBuscarOperacaoTranporteParcelasResult;
    property BuscarOperacaoTranporteParcelasResult_IsSet_:boolean read FBuscarOperacaoTranporteParcelasResult_IsSet_;
  end;

const
  snBuscarOperacaoTranporteParcelasResponse = 'BuscarOperacaoTranporteParcelasResponse';

type
  tBuscarOperacaoTranporteParcelasResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarOperacaoTranporteParcelasResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snBuscarOperacaoTranporteParcelas_BuscarOperacaoTranporteParcelas = 'BuscarOperacaoTranporteParcelas';
  snBuscarOperacaoTranporteParcelas_BuscarOperacaoTranporteParcelas_idOperacaoTransporte = 'idOperacaoTransporte';

type
  tBuscarOperacaoTranporteParcelas_BuscarOperacaoTranporteParcelas = class
  private
    F_NameSpaceAlias: string;
    FidOperacaoTransporte: integer; // (E)
    FidOperacaoTransporte_IsSet_: boolean;
    procedure SetidOperacaoTransporte(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarOperacaoTranporteParcelas_BuscarOperacaoTranporteParcelas;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property idOperacaoTransporte: integer read FidOperacaoTransporte write SetidOperacaoTransporte;
    property idOperacaoTransporte_IsSet_:boolean read FidOperacaoTransporte_IsSet_;
  end;

const
  snBuscarOperacaoTranporteParcelas = 'BuscarOperacaoTranporteParcelas';

type
  tBuscarOperacaoTranporteParcelas = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarOperacaoTranporteParcelas;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snBuscarOperacaoTranporteParcelasPorPeriodoResponse_BuscarOperacaoTranporteParcelasPorPeriodoResponse = 'BuscarOperacaoTranporteParcelasPorPeriodoResponse';
  snBuscarOperacaoTranporteParcelasPorPeriodoResponse_BuscarOperacaoTranporteParcelasPorPeriodoResponse_BuscarOperacaoTranporteParcelasPorPeriodoResult = 'BuscarOperacaoTranporteParcelasPorPeriodoResult';

type
  tBuscarOperacaoTranporteParcelasPorPeriodoResponse_BuscarOperacaoTranporteParcelasPorPeriodoResponse = class
  private
    F_NameSpaceAlias: string;
    FBuscarOperacaoTranporteParcelasPorPeriodoResult: tBuscaOperacaoTransporteParcelasResponse; // (E)
    FBuscarOperacaoTranporteParcelasPorPeriodoResult_IsSet_: boolean;
    procedure SetBuscarOperacaoTranporteParcelasPorPeriodoResult(value:tBuscaOperacaoTransporteParcelasResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarOperacaoTranporteParcelasPorPeriodoResponse_BuscarOperacaoTranporteParcelasPorPeriodoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property BuscarOperacaoTranporteParcelasPorPeriodoResult: tBuscaOperacaoTransporteParcelasResponse read FBuscarOperacaoTranporteParcelasPorPeriodoResult write SetBuscarOperacaoTranporteParcelasPorPeriodoResult;
    property BuscarOperacaoTranporteParcelasPorPeriodoResult_IsSet_:boolean read FBuscarOperacaoTranporteParcelasPorPeriodoResult_IsSet_;
  end;

const
  snBuscarOperacaoTranporteParcelasPorPeriodoResponse = 'BuscarOperacaoTranporteParcelasPorPeriodoResponse';

type
  tBuscarOperacaoTranporteParcelasPorPeriodoResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarOperacaoTranporteParcelasPorPeriodoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snBuscarOperacaoTranporteParcelasPorPeriodo_BuscarOperacaoTranporteParcelasPorPeriodo = 'BuscarOperacaoTranporteParcelasPorPeriodo';
  snBuscarOperacaoTranporteParcelasPorPeriodo_BuscarOperacaoTranporteParcelasPorPeriodo_dataInicio = 'dataInicio';
  snBuscarOperacaoTranporteParcelasPorPeriodo_BuscarOperacaoTranporteParcelasPorPeriodo_dataFim = 'dataFim';
  snBuscarOperacaoTranporteParcelasPorPeriodo_BuscarOperacaoTranporteParcelasPorPeriodo_statusParcela = 'statusParcela';

type
  tBuscarOperacaoTranporteParcelasPorPeriodo_BuscarOperacaoTranporteParcelasPorPeriodo = class
  private
    F_NameSpaceAlias: string;
    FdataInicio: tDateTime; // (E)
    FdataInicio_IsSet_: boolean;
    FdataFim: tDateTime; // (E)
    FdataFim_IsSet_: boolean;
    FstatusParcela: integer; // (E)
    FstatusParcela_IsSet_: boolean;
    procedure SetdataInicio(value:tDateTime);
    procedure SetdataFim(value:tDateTime);
    procedure SetstatusParcela(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarOperacaoTranporteParcelasPorPeriodo_BuscarOperacaoTranporteParcelasPorPeriodo;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property dataInicio: tDateTime read FdataInicio write SetdataInicio;
    property dataInicio_IsSet_:boolean read FdataInicio_IsSet_;
    property dataFim: tDateTime read FdataFim write SetdataFim;
    property dataFim_IsSet_:boolean read FdataFim_IsSet_;
    property statusParcela: integer read FstatusParcela write SetstatusParcela;
    property statusParcela_IsSet_:boolean read FstatusParcela_IsSet_;
  end;

const
  snBuscarOperacaoTranporteParcelasPorPeriodo = 'BuscarOperacaoTranporteParcelasPorPeriodo';

type
  tBuscarOperacaoTranporteParcelasPorPeriodo = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarOperacaoTranporteParcelasPorPeriodo;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snObterNaturezaCargaResponse_ObterNaturezaCargaResponse = 'ObterNaturezaCargaResponse';
  snObterNaturezaCargaResponse_ObterNaturezaCargaResponse_ObterNaturezaCargaResult = 'ObterNaturezaCargaResult';

type
  tObterNaturezaCargaResponse_ObterNaturezaCargaResponse = class
  private
    F_NameSpaceAlias: string;
    FObterNaturezaCargaResult: integer; // (E)
    FObterNaturezaCargaResult_IsSet_: boolean;
    procedure SetObterNaturezaCargaResult(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterNaturezaCargaResponse_ObterNaturezaCargaResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ObterNaturezaCargaResult: integer read FObterNaturezaCargaResult write SetObterNaturezaCargaResult;
    property ObterNaturezaCargaResult_IsSet_:boolean read FObterNaturezaCargaResult_IsSet_;
  end;

const
  snObterNaturezaCargaResponse = 'ObterNaturezaCargaResponse';

type
  tObterNaturezaCargaResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterNaturezaCargaResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snObterNaturezaCarga_ObterNaturezaCarga = 'ObterNaturezaCarga';
  snObterNaturezaCarga_ObterNaturezaCarga_NCM = 'NCM';

type
  tObterNaturezaCarga_ObterNaturezaCarga = class
  private
    F_NameSpaceAlias: string;
    FNCM: string; // (E)
    FNCM_IsSet_: boolean;
    procedure SetNCM(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterNaturezaCarga_ObterNaturezaCarga;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property NCM: string read FNCM write SetNCM;
    property NCM_IsSet_:boolean read FNCM_IsSet_;
  end;

const
  snObterNaturezaCarga = 'ObterNaturezaCarga';

type
  tObterNaturezaCarga = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterNaturezaCarga;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snObterMunicipioPorCodigoIBGEResponse_ObterMunicipioPorCodigoIBGEResponse = 'ObterMunicipioPorCodigoIBGEResponse';
  snObterMunicipioPorCodigoIBGEResponse_ObterMunicipioPorCodigoIBGEResponse_ObterMunicipioPorCodigoIBGEResult = 'ObterMunicipioPorCodigoIBGEResult';

type
  tObterMunicipioPorCodigoIBGEResponse_ObterMunicipioPorCodigoIBGEResponse = class
  private
    F_NameSpaceAlias: string;
    FObterMunicipioPorCodigoIBGEResult: integer; // (E)
    FObterMunicipioPorCodigoIBGEResult_IsSet_: boolean;
    procedure SetObterMunicipioPorCodigoIBGEResult(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterMunicipioPorCodigoIBGEResponse_ObterMunicipioPorCodigoIBGEResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ObterMunicipioPorCodigoIBGEResult: integer read FObterMunicipioPorCodigoIBGEResult write SetObterMunicipioPorCodigoIBGEResult;
    property ObterMunicipioPorCodigoIBGEResult_IsSet_:boolean read FObterMunicipioPorCodigoIBGEResult_IsSet_;
  end;

const
  snObterMunicipioPorCodigoIBGEResponse = 'ObterMunicipioPorCodigoIBGEResponse';

type
  tObterMunicipioPorCodigoIBGEResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterMunicipioPorCodigoIBGEResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snObterMunicipioPorCodigoIBGE_ObterMunicipioPorCodigoIBGE = 'ObterMunicipioPorCodigoIBGE';
  snObterMunicipioPorCodigoIBGE_ObterMunicipioPorCodigoIBGE_codigoIBGE = 'codigoIBGE';

type
  tObterMunicipioPorCodigoIBGE_ObterMunicipioPorCodigoIBGE = class
  private
    F_NameSpaceAlias: string;
    FcodigoIBGE: integer; // (E)
    FcodigoIBGE_IsSet_: boolean;
    procedure SetcodigoIBGE(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterMunicipioPorCodigoIBGE_ObterMunicipioPorCodigoIBGE;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property codigoIBGE: integer read FcodigoIBGE write SetcodigoIBGE;
    property codigoIBGE_IsSet_:boolean read FcodigoIBGE_IsSet_;
  end;

const
  snObterMunicipioPorCodigoIBGE = 'ObterMunicipioPorCodigoIBGE';

type
  tObterMunicipioPorCodigoIBGE = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterMunicipioPorCodigoIBGE;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snObterMunicipioResponse_ObterMunicipioResponse = 'ObterMunicipioResponse';
  snObterMunicipioResponse_ObterMunicipioResponse_ObterMunicipioResult = 'ObterMunicipioResult';

type
  tObterMunicipioResponse_ObterMunicipioResponse = class
  private
    F_NameSpaceAlias: string;
    FObterMunicipioResult: integer; // (E)
    FObterMunicipioResult_IsSet_: boolean;
    procedure SetObterMunicipioResult(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterMunicipioResponse_ObterMunicipioResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ObterMunicipioResult: integer read FObterMunicipioResult write SetObterMunicipioResult;
    property ObterMunicipioResult_IsSet_:boolean read FObterMunicipioResult_IsSet_;
  end;

const
  snObterMunicipioResponse = 'ObterMunicipioResponse';

type
  tObterMunicipioResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterMunicipioResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snObterMunicipio_ObterMunicipio = 'ObterMunicipio';
  snObterMunicipio_ObterMunicipio_nomeMunicipio = 'nomeMunicipio';
  snObterMunicipio_ObterMunicipio_UF = 'UF';

type
  tObterMunicipio_ObterMunicipio = class
  private
    F_NameSpaceAlias: string;
    FnomeMunicipio: string; // (E)
    FnomeMunicipio_IsSet_: boolean;
    FUF: string; // (E)
    FUF_IsSet_: boolean;
    procedure SetnomeMunicipio(value:string);
    procedure SetUF(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterMunicipio_ObterMunicipio;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property nomeMunicipio: string read FnomeMunicipio write SetnomeMunicipio;
    property nomeMunicipio_IsSet_:boolean read FnomeMunicipio_IsSet_;
    property UF: string read FUF write SetUF;
    property UF_IsSet_:boolean read FUF_IsSet_;
  end;

const
  snObterMunicipio = 'ObterMunicipio';

type
  tObterMunicipio = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterMunicipio;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snObterContratadoResponse_ObterContratadoResponse = 'ObterContratadoResponse';
  snObterContratadoResponse_ObterContratadoResponse_ObterContratadoResult = 'ObterContratadoResult';

type
  tObterContratadoResponse_ObterContratadoResponse = class
  private
    F_NameSpaceAlias: string;
    FObterContratadoResult: integer; // (E)
    FObterContratadoResult_IsSet_: boolean;
    procedure SetObterContratadoResult(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterContratadoResponse_ObterContratadoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ObterContratadoResult: integer read FObterContratadoResult write SetObterContratadoResult;
    property ObterContratadoResult_IsSet_:boolean read FObterContratadoResult_IsSet_;
  end;

const
  snObterContratadoResponse = 'ObterContratadoResponse';

type
  tObterContratadoResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterContratadoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snObterContratado_ObterContratado = 'ObterContratado';
  snObterContratado_ObterContratado_CPF = 'CPF';

type
  tObterContratado_ObterContratado = class
  private
    F_NameSpaceAlias: string;
    FCPF: string; // (E)
    FCPF_IsSet_: boolean;
    procedure SetCPF(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterContratado_ObterContratado;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CPF: string read FCPF write SetCPF;
    property CPF_IsSet_:boolean read FCPF_IsSet_;
  end;

const
  snObterContratado = 'ObterContratado';

type
  tObterContratado = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterContratado;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snFinalizarOperacaoResponse_FinalizarOperacaoResponse = 'FinalizarOperacaoResponse';
  snFinalizarOperacaoResponse_FinalizarOperacaoResponse_FinalizarOperacaoResult = 'FinalizarOperacaoResult';

type
  tFinalizarOperacaoResponse_FinalizarOperacaoResponse = class
  private
    F_NameSpaceAlias: string;
    FFinalizarOperacaoResult: tFinalizacaoOperacaoTransporteResponse; // (E)
    FFinalizarOperacaoResult_IsSet_: boolean;
    procedure SetFinalizarOperacaoResult(value:tFinalizacaoOperacaoTransporteResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tFinalizarOperacaoResponse_FinalizarOperacaoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property FinalizarOperacaoResult: tFinalizacaoOperacaoTransporteResponse read FFinalizarOperacaoResult write SetFinalizarOperacaoResult;
    property FinalizarOperacaoResult_IsSet_:boolean read FFinalizarOperacaoResult_IsSet_;
  end;

const
  snFinalizarOperacaoResponse = 'FinalizarOperacaoResponse';

type
  tFinalizarOperacaoResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tFinalizarOperacaoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snFinalizarOperacao_FinalizarOperacao = 'FinalizarOperacao';
  snFinalizarOperacao_FinalizarOperacao_idOperacao = 'idOperacao';

type
  tFinalizarOperacao_FinalizarOperacao = class
  private
    F_NameSpaceAlias: string;
    FidOperacao: integer; // (E)
    FidOperacao_IsSet_: boolean;
    procedure SetidOperacao(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tFinalizarOperacao_FinalizarOperacao;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property idOperacao: integer read FidOperacao write SetidOperacao;
    property idOperacao_IsSet_:boolean read FidOperacao_IsSet_;
  end;

const
  snFinalizarOperacao = 'FinalizarOperacao';

type
  tFinalizarOperacao = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tFinalizarOperacao;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snEncerrarOperacaoResponse_EncerrarOperacaoResponse = 'EncerrarOperacaoResponse';
  snEncerrarOperacaoResponse_EncerrarOperacaoResponse_EncerrarOperacaoResult = 'EncerrarOperacaoResult';

type
  tEncerrarOperacaoResponse_EncerrarOperacaoResponse = class
  private
    F_NameSpaceAlias: string;
    FEncerrarOperacaoResult: tEncerramentoOperacaoTransporteResponse; // (E)
    FEncerrarOperacaoResult_IsSet_: boolean;
    procedure SetEncerrarOperacaoResult(value:tEncerramentoOperacaoTransporteResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tEncerrarOperacaoResponse_EncerrarOperacaoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property EncerrarOperacaoResult: tEncerramentoOperacaoTransporteResponse read FEncerrarOperacaoResult write SetEncerrarOperacaoResult;
    property EncerrarOperacaoResult_IsSet_:boolean read FEncerrarOperacaoResult_IsSet_;
  end;

const
  snEncerrarOperacaoResponse = 'EncerrarOperacaoResponse';

type
  tEncerrarOperacaoResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tEncerrarOperacaoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snEncerrarOperacao_EncerrarOperacao = 'EncerrarOperacao';
  snEncerrarOperacao_EncerrarOperacao_encerramentoRequest = 'encerramentoRequest';

type
  tEncerrarOperacao_EncerrarOperacao = class
  private
    F_NameSpaceAlias: string;
    FencerramentoRequest: tEncerramentoOperacaoTransporteRequest; // (E)
    FencerramentoRequest_IsSet_: boolean;
    procedure SetencerramentoRequest(value:tEncerramentoOperacaoTransporteRequest);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tEncerrarOperacao_EncerrarOperacao;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property encerramentoRequest: tEncerramentoOperacaoTransporteRequest read FencerramentoRequest write SetencerramentoRequest;
    property encerramentoRequest_IsSet_:boolean read FencerramentoRequest_IsSet_;
  end;

const
  snEncerrarOperacao = 'EncerrarOperacao';

type
  tEncerrarOperacao = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tEncerrarOperacao;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snRetificarPlacasOperacaoResponse_RetificarPlacasOperacaoResponse = 'RetificarPlacasOperacaoResponse';
  snRetificarPlacasOperacaoResponse_RetificarPlacasOperacaoResponse_RetificarPlacasOperacaoResult = 'RetificarPlacasOperacaoResult';

type
  tRetificarPlacasOperacaoResponse_RetificarPlacasOperacaoResponse = class
  private
    F_NameSpaceAlias: string;
    FRetificarPlacasOperacaoResult: tRetificacaoOperacaoTransporteResponse; // (E)
    FRetificarPlacasOperacaoResult_IsSet_: boolean;
    procedure SetRetificarPlacasOperacaoResult(value:tRetificacaoOperacaoTransporteResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tRetificarPlacasOperacaoResponse_RetificarPlacasOperacaoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property RetificarPlacasOperacaoResult: tRetificacaoOperacaoTransporteResponse read FRetificarPlacasOperacaoResult write SetRetificarPlacasOperacaoResult;
    property RetificarPlacasOperacaoResult_IsSet_:boolean read FRetificarPlacasOperacaoResult_IsSet_;
  end;

const
  snRetificarPlacasOperacaoResponse = 'RetificarPlacasOperacaoResponse';

type
  tRetificarPlacasOperacaoResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tRetificarPlacasOperacaoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snRetificarPlacasOperacao_RetificarPlacasOperacao = 'RetificarPlacasOperacao';
  snRetificarPlacasOperacao_RetificarPlacasOperacao_retificacaoPlacasRequest = 'retificacaoPlacasRequest';

type
  tRetificarPlacasOperacao_RetificarPlacasOperacao = class
  private
    F_NameSpaceAlias: string;
    FretificacaoPlacasRequest: tRetificacaoPlacasOperacaoTransporteRequest; // (E)
    FretificacaoPlacasRequest_IsSet_: boolean;
    procedure SetretificacaoPlacasRequest(value:tRetificacaoPlacasOperacaoTransporteRequest);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tRetificarPlacasOperacao_RetificarPlacasOperacao;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property retificacaoPlacasRequest: tRetificacaoPlacasOperacaoTransporteRequest read FretificacaoPlacasRequest write SetretificacaoPlacasRequest;
    property retificacaoPlacasRequest_IsSet_:boolean read FretificacaoPlacasRequest_IsSet_;
  end;

const
  snRetificarPlacasOperacao = 'RetificarPlacasOperacao';

type
  tRetificarPlacasOperacao = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tRetificarPlacasOperacao;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snRetificarOperacaoResponse_RetificarOperacaoResponse = 'RetificarOperacaoResponse';
  snRetificarOperacaoResponse_RetificarOperacaoResponse_RetificarOperacaoResult = 'RetificarOperacaoResult';

type
  tRetificarOperacaoResponse_RetificarOperacaoResponse = class
  private
    F_NameSpaceAlias: string;
    FRetificarOperacaoResult: tRetificacaoOperacaoTransporteResponse; // (E)
    FRetificarOperacaoResult_IsSet_: boolean;
    procedure SetRetificarOperacaoResult(value:tRetificacaoOperacaoTransporteResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tRetificarOperacaoResponse_RetificarOperacaoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property RetificarOperacaoResult: tRetificacaoOperacaoTransporteResponse read FRetificarOperacaoResult write SetRetificarOperacaoResult;
    property RetificarOperacaoResult_IsSet_:boolean read FRetificarOperacaoResult_IsSet_;
  end;

const
  snRetificarOperacaoResponse = 'RetificarOperacaoResponse';

type
  tRetificarOperacaoResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tRetificarOperacaoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snRetificarOperacao_RetificarOperacao = 'RetificarOperacao';
  snRetificarOperacao_RetificarOperacao_retificacaoRequest = 'retificacaoRequest';

type
  tRetificarOperacao_RetificarOperacao = class
  private
    F_NameSpaceAlias: string;
    FretificacaoRequest: tRetificacaoOperacaoTransporteRequest; // (E)
    FretificacaoRequest_IsSet_: boolean;
    procedure SetretificacaoRequest(value:tRetificacaoOperacaoTransporteRequest);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tRetificarOperacao_RetificarOperacao;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property retificacaoRequest: tRetificacaoOperacaoTransporteRequest read FretificacaoRequest write SetretificacaoRequest;
    property retificacaoRequest_IsSet_:boolean read FretificacaoRequest_IsSet_;
  end;

const
  snRetificarOperacao = 'RetificarOperacao';

type
  tRetificarOperacao = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tRetificarOperacao;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snCancelarOperacaoResponse_CancelarOperacaoResponse = 'CancelarOperacaoResponse';
  snCancelarOperacaoResponse_CancelarOperacaoResponse_CancelarOperacaoResult = 'CancelarOperacaoResult';

type
  tCancelarOperacaoResponse_CancelarOperacaoResponse = class
  private
    F_NameSpaceAlias: string;
    FCancelarOperacaoResult: tCancelamentoOperacaoTransporteResponse; // (E)
    FCancelarOperacaoResult_IsSet_: boolean;
    procedure SetCancelarOperacaoResult(value:tCancelamentoOperacaoTransporteResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCancelarOperacaoResponse_CancelarOperacaoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CancelarOperacaoResult: tCancelamentoOperacaoTransporteResponse read FCancelarOperacaoResult write SetCancelarOperacaoResult;
    property CancelarOperacaoResult_IsSet_:boolean read FCancelarOperacaoResult_IsSet_;
  end;

const
  snCancelarOperacaoResponse = 'CancelarOperacaoResponse';

type
  tCancelarOperacaoResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCancelarOperacaoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snCancelarOperacao_CancelarOperacao = 'CancelarOperacao';
  snCancelarOperacao_CancelarOperacao_idOperacao = 'idOperacao';
  snCancelarOperacao_CancelarOperacao_motivoCancelamento = 'motivoCancelamento';

type
  tCancelarOperacao_CancelarOperacao = class
  private
    F_NameSpaceAlias: string;
    FidOperacao: integer; // (E)
    FidOperacao_IsSet_: boolean;
    FmotivoCancelamento: string; // (E)
    FmotivoCancelamento_IsSet_: boolean;
    procedure SetidOperacao(value:integer);
    procedure SetmotivoCancelamento(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCancelarOperacao_CancelarOperacao;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property idOperacao: integer read FidOperacao write SetidOperacao;
    property idOperacao_IsSet_:boolean read FidOperacao_IsSet_;
    property motivoCancelamento: string read FmotivoCancelamento write SetmotivoCancelamento;
    property motivoCancelamento_IsSet_:boolean read FmotivoCancelamento_IsSet_;
  end;

const
  snCancelarOperacao = 'CancelarOperacao';

type
  tCancelarOperacao = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCancelarOperacao;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snRegistrarOperacaoResponse_RegistrarOperacaoResponse = 'RegistrarOperacaoResponse';
  snRegistrarOperacaoResponse_RegistrarOperacaoResponse_RegistrarOperacaoResult = 'RegistrarOperacaoResult';

type
  tRegistrarOperacaoResponse_RegistrarOperacaoResponse = class
  private
    F_NameSpaceAlias: string;
    FRegistrarOperacaoResult: tRegistroOperacaoTransporteResponse; // (E)
    FRegistrarOperacaoResult_IsSet_: boolean;
    procedure SetRegistrarOperacaoResult(value:tRegistroOperacaoTransporteResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tRegistrarOperacaoResponse_RegistrarOperacaoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property RegistrarOperacaoResult: tRegistroOperacaoTransporteResponse read FRegistrarOperacaoResult write SetRegistrarOperacaoResult;
    property RegistrarOperacaoResult_IsSet_:boolean read FRegistrarOperacaoResult_IsSet_;
  end;

const
  snRegistrarOperacaoResponse = 'RegistrarOperacaoResponse';

type
  tRegistrarOperacaoResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tRegistrarOperacaoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snRegistrarOperacao_RegistrarOperacao = 'RegistrarOperacao';
  snRegistrarOperacao_RegistrarOperacao_idOperacao = 'idOperacao';

type
  tRegistrarOperacao_RegistrarOperacao = class
  private
    F_NameSpaceAlias: string;
    FidOperacao: integer; // (E)
    FidOperacao_IsSet_: boolean;
    procedure SetidOperacao(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tRegistrarOperacao_RegistrarOperacao;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property idOperacao: integer read FidOperacao write SetidOperacao;
    property idOperacao_IsSet_:boolean read FidOperacao_IsSet_;
  end;

const
  snRegistrarOperacao = 'RegistrarOperacao';

type
  tRegistrarOperacao = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tRegistrarOperacao;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snCadastrarOperacaoDescritivaResponse_CadastrarOperacaoDescritivaResponse = 'CadastrarOperacaoDescritivaResponse';
  snCadastrarOperacaoDescritivaResponse_CadastrarOperacaoDescritivaResponse_CadastrarOperacaoDescritivaResult = 'CadastrarOperacaoDescritivaResult';

type
  tCadastrarOperacaoDescritivaResponse_CadastrarOperacaoDescritivaResponse = class
  private
    F_NameSpaceAlias: string;
    FCadastrarOperacaoDescritivaResult: tCadastroOperacaoTransporteResponse; // (E)
    FCadastrarOperacaoDescritivaResult_IsSet_: boolean;
    procedure SetCadastrarOperacaoDescritivaResult(value:tCadastroOperacaoTransporteResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCadastrarOperacaoDescritivaResponse_CadastrarOperacaoDescritivaResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CadastrarOperacaoDescritivaResult: tCadastroOperacaoTransporteResponse read FCadastrarOperacaoDescritivaResult write SetCadastrarOperacaoDescritivaResult;
    property CadastrarOperacaoDescritivaResult_IsSet_:boolean read FCadastrarOperacaoDescritivaResult_IsSet_;
  end;

const
  snCadastrarOperacaoDescritivaResponse = 'CadastrarOperacaoDescritivaResponse';

type
  tCadastrarOperacaoDescritivaResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCadastrarOperacaoDescritivaResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snCadastrarOperacaoDescritiva_CadastrarOperacaoDescritiva = 'CadastrarOperacaoDescritiva';
  snCadastrarOperacaoDescritiva_CadastrarOperacaoDescritiva_operacaoRequest = 'operacaoRequest';

type
  tCadastrarOperacaoDescritiva_CadastrarOperacaoDescritiva = class
  private
    F_NameSpaceAlias: string;
    FoperacaoRequest: tOperacaoTransporteRequest; // (E)
    FoperacaoRequest_IsSet_: boolean;
    procedure SetoperacaoRequest(value:tOperacaoTransporteRequest);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCadastrarOperacaoDescritiva_CadastrarOperacaoDescritiva;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property operacaoRequest: tOperacaoTransporteRequest read FoperacaoRequest write SetoperacaoRequest;
    property operacaoRequest_IsSet_:boolean read FoperacaoRequest_IsSet_;
  end;

const
  snCadastrarOperacaoDescritiva = 'CadastrarOperacaoDescritiva';

type
  tCadastrarOperacaoDescritiva = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCadastrarOperacaoDescritiva;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snAnularOperacaoResponse_AnularOperacaoResponse = 'AnularOperacaoResponse';
  snAnularOperacaoResponse_AnularOperacaoResponse_AnularOperacaoResult = 'AnularOperacaoResult';

type
  tAnularOperacaoResponse_AnularOperacaoResponse = class
  private
    F_NameSpaceAlias: string;
    FAnularOperacaoResult: tAnulacaoOperacaoTransporteResponse; // (E)
    FAnularOperacaoResult_IsSet_: boolean;
    procedure SetAnularOperacaoResult(value:tAnulacaoOperacaoTransporteResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAnularOperacaoResponse_AnularOperacaoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property AnularOperacaoResult: tAnulacaoOperacaoTransporteResponse read FAnularOperacaoResult write SetAnularOperacaoResult;
    property AnularOperacaoResult_IsSet_:boolean read FAnularOperacaoResult_IsSet_;
  end;

const
  snAnularOperacaoResponse = 'AnularOperacaoResponse';

type
  tAnularOperacaoResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAnularOperacaoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snAnularOperacao_AnularOperacao = 'AnularOperacao';
  snAnularOperacao_AnularOperacao_anulacaoRequest = 'anulacaoRequest';

type
  tAnularOperacao_AnularOperacao = class
  private
    F_NameSpaceAlias: string;
    FanulacaoRequest: tAnulacaoOperacaoTransporteRequest; // (E)
    FanulacaoRequest_IsSet_: boolean;
    procedure SetanulacaoRequest(value:tAnulacaoOperacaoTransporteRequest);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAnularOperacao_AnularOperacao;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property anulacaoRequest: tAnulacaoOperacaoTransporteRequest read FanulacaoRequest write SetanulacaoRequest;
    property anulacaoRequest_IsSet_:boolean read FanulacaoRequest_IsSet_;
  end;

const
  snAnularOperacao = 'AnularOperacao';

type
  tAnularOperacao = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAnularOperacao;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
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
    class function CreateFromXmlString(s: string): tAtualizarOperacaoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snAtualizarOperacaoResponse_AtualizarOperacaoResponse = 'AtualizarOperacaoResponse';
  snAtualizarOperacaoResponse_AtualizarOperacaoResponse_AtualizarOperacaoResult = 'AtualizarOperacaoResult';

type
  tAtualizarOperacaoResponse_AtualizarOperacaoResponse = class
  private
    F_NameSpaceAlias: string;
    FAtualizarOperacaoResult: tAtualizarOperacaoResponse; // (E)
    FAtualizarOperacaoResult_IsSet_: boolean;
    procedure SetAtualizarOperacaoResult(value:tAtualizarOperacaoResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAtualizarOperacaoResponse_AtualizarOperacaoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property AtualizarOperacaoResult: tAtualizarOperacaoResponse read FAtualizarOperacaoResult write SetAtualizarOperacaoResult;
    property AtualizarOperacaoResult_IsSet_:boolean read FAtualizarOperacaoResult_IsSet_;
  end;

const
  snAtualizarOperacao_AtualizarOperacao = 'AtualizarOperacao';
  snAtualizarOperacao_AtualizarOperacao_operacaoRequest = 'operacaoRequest';

type
  tAtualizarOperacao_AtualizarOperacao = class
  private
    F_NameSpaceAlias: string;
    FoperacaoRequest: tAtualizarOperacaoRequest; // (E)
    FoperacaoRequest_IsSet_: boolean;
    procedure SetoperacaoRequest(value:tAtualizarOperacaoRequest);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAtualizarOperacao_AtualizarOperacao;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property operacaoRequest: tAtualizarOperacaoRequest read FoperacaoRequest write SetoperacaoRequest;
    property operacaoRequest_IsSet_:boolean read FoperacaoRequest_IsSet_;
  end;

const
  snAtualizarOperacao = 'AtualizarOperacao';

type
  tAtualizarOperacao = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAtualizarOperacao;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snConsultarSituacaoTransportadorAnttResponse_ConsultarSituacaoTransportadorAnttResponse = 'ConsultarSituacaoTransportadorAnttResponse';
  snConsultarSituacaoTransportadorAnttResponse_ConsultarSituacaoTransportadorAnttResponse_ConsultarSituacaoTransportadorAnttResult = 'ConsultarSituacaoTransportadorAnttResult';

type
  tConsultarSituacaoTransportadorAnttResponse_ConsultarSituacaoTransportadorAnttResponse = class
  private
    F_NameSpaceAlias: string;
    FConsultarSituacaoTransportadorAnttResult: tSituacaoCadastroTransportadorAnttResponse; // (E)
    FConsultarSituacaoTransportadorAnttResult_IsSet_: boolean;
    procedure SetConsultarSituacaoTransportadorAnttResult(value:tSituacaoCadastroTransportadorAnttResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tConsultarSituacaoTransportadorAnttResponse_ConsultarSituacaoTransportadorAnttResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ConsultarSituacaoTransportadorAnttResult: tSituacaoCadastroTransportadorAnttResponse read FConsultarSituacaoTransportadorAnttResult write SetConsultarSituacaoTransportadorAnttResult;
    property ConsultarSituacaoTransportadorAnttResult_IsSet_:boolean read FConsultarSituacaoTransportadorAnttResult_IsSet_;
  end;

const
  snConsultarSituacaoTransportadorAnttResponse = 'ConsultarSituacaoTransportadorAnttResponse';

type
  tConsultarSituacaoTransportadorAnttResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tConsultarSituacaoTransportadorAnttResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snConsultarSituacaoTransportadorAntt_ConsultarSituacaoTransportadorAntt = 'ConsultarSituacaoTransportadorAntt';
  snConsultarSituacaoTransportadorAntt_ConsultarSituacaoTransportadorAntt_CPFCNPJ = 'CPFCNPJ';

type
  tConsultarSituacaoTransportadorAntt_ConsultarSituacaoTransportadorAntt = class
  private
    F_NameSpaceAlias: string;
    FCPFCNPJ: string; // (E)
    FCPFCNPJ_IsSet_: boolean;
    procedure SetCPFCNPJ(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tConsultarSituacaoTransportadorAntt_ConsultarSituacaoTransportadorAntt;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CPFCNPJ: string read FCPFCNPJ write SetCPFCNPJ;
    property CPFCNPJ_IsSet_:boolean read FCPFCNPJ_IsSet_;
  end;

const
  snConsultarSituacaoTransportadorAntt = 'ConsultarSituacaoTransportadorAntt';

type
  tConsultarSituacaoTransportadorAntt = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tConsultarSituacaoTransportadorAntt;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snCadastrarEquiparadoResponse_CadastrarEquiparadoResponse = 'CadastrarEquiparadoResponse';
  snCadastrarEquiparadoResponse_CadastrarEquiparadoResponse_CadastrarEquiparadoResult = 'CadastrarEquiparadoResult';

type
  tCadastrarEquiparadoResponse_CadastrarEquiparadoResponse = class
  private
    F_NameSpaceAlias: string;
    FCadastrarEquiparadoResult: tCadastroEquiparadoResponse; // (E)
    FCadastrarEquiparadoResult_IsSet_: boolean;
    procedure SetCadastrarEquiparadoResult(value:tCadastroEquiparadoResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCadastrarEquiparadoResponse_CadastrarEquiparadoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CadastrarEquiparadoResult: tCadastroEquiparadoResponse read FCadastrarEquiparadoResult write SetCadastrarEquiparadoResult;
    property CadastrarEquiparadoResult_IsSet_:boolean read FCadastrarEquiparadoResult_IsSet_;
  end;

const
  snCadastrarEquiparadoResponse = 'CadastrarEquiparadoResponse';

type
  tCadastrarEquiparadoResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCadastrarEquiparadoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snCadastrarEquiparado_CadastrarEquiparado = 'CadastrarEquiparado';
  snCadastrarEquiparado_CadastrarEquiparado_cadastroEquiparadoRequest = 'cadastroEquiparadoRequest';

type
  tCadastrarEquiparado_CadastrarEquiparado = class
  private
    F_NameSpaceAlias: string;
    FcadastroEquiparadoRequest: tCadastroEquiparadoRequest; // (E)
    FcadastroEquiparadoRequest_IsSet_: boolean;
    procedure SetcadastroEquiparadoRequest(value:tCadastroEquiparadoRequest);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCadastrarEquiparado_CadastrarEquiparado;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property cadastroEquiparadoRequest: tCadastroEquiparadoRequest read FcadastroEquiparadoRequest write SetcadastroEquiparadoRequest;
    property cadastroEquiparadoRequest_IsSet_:boolean read FcadastroEquiparadoRequest_IsSet_;
  end;

const
  snCadastrarEquiparado = 'CadastrarEquiparado';

type
  tCadastrarEquiparado = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCadastrarEquiparado;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snCadastrarAutonomoResponse_CadastrarAutonomoResponse = 'CadastrarAutonomoResponse';
  snCadastrarAutonomoResponse_CadastrarAutonomoResponse_CadastrarAutonomoResult = 'CadastrarAutonomoResult';

type
  tCadastrarAutonomoResponse_CadastrarAutonomoResponse = class
  private
    F_NameSpaceAlias: string;
    FCadastrarAutonomoResult: tCadastroAutonomoResponse; // (E)
    FCadastrarAutonomoResult_IsSet_: boolean;
    procedure SetCadastrarAutonomoResult(value:tCadastroAutonomoResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCadastrarAutonomoResponse_CadastrarAutonomoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CadastrarAutonomoResult: tCadastroAutonomoResponse read FCadastrarAutonomoResult write SetCadastrarAutonomoResult;
    property CadastrarAutonomoResult_IsSet_:boolean read FCadastrarAutonomoResult_IsSet_;
  end;

const
  snCadastrarAutonomoResponse = 'CadastrarAutonomoResponse';

type
  tCadastrarAutonomoResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCadastrarAutonomoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snCadastrarAutonomo_CadastrarAutonomo = 'CadastrarAutonomo';
  snCadastrarAutonomo_CadastrarAutonomo_cadastroAutonomoRequest = 'cadastroAutonomoRequest';

type
  tCadastrarAutonomo_CadastrarAutonomo = class
  private
    F_NameSpaceAlias: string;
    FcadastroAutonomoRequest: tCadastroAutonomoRequest; // (E)
    FcadastroAutonomoRequest_IsSet_: boolean;
    procedure SetcadastroAutonomoRequest(value:tCadastroAutonomoRequest);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCadastrarAutonomo_CadastrarAutonomo;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property cadastroAutonomoRequest: tCadastroAutonomoRequest read FcadastroAutonomoRequest write SetcadastroAutonomoRequest;
    property cadastroAutonomoRequest_IsSet_:boolean read FcadastroAutonomoRequest_IsSet_;
  end;

const
  snCadastrarAutonomo = 'CadastrarAutonomo';

type
  tCadastrarAutonomo = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCadastrarAutonomo;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snBuscarParticipantesAtivosResponse_BuscarParticipantesAtivosResponse = 'BuscarParticipantesAtivosResponse';
  snBuscarParticipantesAtivosResponse_BuscarParticipantesAtivosResponse_BuscarParticipantesAtivosResult = 'BuscarParticipantesAtivosResult';

type
  tBuscarParticipantesAtivosResponse_BuscarParticipantesAtivosResponse = class
  private
    F_NameSpaceAlias: string;
    FBuscarParticipantesAtivosResult: tBuscaParticipantesResponse; // (E)
    FBuscarParticipantesAtivosResult_IsSet_: boolean;
    procedure SetBuscarParticipantesAtivosResult(value:tBuscaParticipantesResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarParticipantesAtivosResponse_BuscarParticipantesAtivosResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property BuscarParticipantesAtivosResult: tBuscaParticipantesResponse read FBuscarParticipantesAtivosResult write SetBuscarParticipantesAtivosResult;
    property BuscarParticipantesAtivosResult_IsSet_:boolean read FBuscarParticipantesAtivosResult_IsSet_;
  end;

const
  snBuscarParticipantesAtivosResponse = 'BuscarParticipantesAtivosResponse';

type
  tBuscarParticipantesAtivosResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarParticipantesAtivosResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snBuscarParticipantesAtivos_BuscarParticipantesAtivos = 'BuscarParticipantesAtivos';

type
  tBuscarParticipantesAtivos_BuscarParticipantesAtivos = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarParticipantesAtivos_BuscarParticipantesAtivos;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snBuscarParticipantesAtivos = 'BuscarParticipantesAtivos';

type
  tBuscarParticipantesAtivos = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarParticipantesAtivos;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snAtualizarParticipanteResponse_AtualizarParticipanteResponse = 'AtualizarParticipanteResponse';
  snAtualizarParticipanteResponse_AtualizarParticipanteResponse_AtualizarParticipanteResult = 'AtualizarParticipanteResult';

type
  tAtualizarParticipanteResponse_AtualizarParticipanteResponse = class
  private
    F_NameSpaceAlias: string;
    FAtualizarParticipanteResult: tBaseResponse; // (E)
    FAtualizarParticipanteResult_IsSet_: boolean;
    procedure SetAtualizarParticipanteResult(value:tBaseResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAtualizarParticipanteResponse_AtualizarParticipanteResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property AtualizarParticipanteResult: tBaseResponse read FAtualizarParticipanteResult write SetAtualizarParticipanteResult;
    property AtualizarParticipanteResult_IsSet_:boolean read FAtualizarParticipanteResult_IsSet_;
  end;

const
  snAtualizarParticipanteResponse = 'AtualizarParticipanteResponse';

type
  tAtualizarParticipanteResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAtualizarParticipanteResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snAtualizarParticipante_AtualizarParticipante = 'AtualizarParticipante';
  snAtualizarParticipante_AtualizarParticipante_participante = 'participante';

type
  tAtualizarParticipante_AtualizarParticipante = class
  private
    F_NameSpaceAlias: string;
    Fparticipante: tBaseParticipanteRequestResponse; // (E)
    Fparticipante_IsSet_: boolean;
    procedure Setparticipante(value:tBaseParticipanteRequestResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAtualizarParticipante_AtualizarParticipante;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property participante: tBaseParticipanteRequestResponse read Fparticipante write Setparticipante;
    property participante_IsSet_:boolean read Fparticipante_IsSet_;
  end;

const
  snAtualizarParticipante = 'AtualizarParticipante';

type
  tAtualizarParticipante = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAtualizarParticipante;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;


const
  snObterParticipanteResponse_ObterParticipanteResponse = 'ObterParticipanteResponse';
  snObterParticipanteResponse_ObterParticipanteResponse_ObterParticipanteResult = 'ObterParticipanteResult';

type
  tObterParticipanteResponse_ObterParticipanteResponse = class
  private
    F_NameSpaceAlias: string;
    FObterParticipanteResult: tObterParticipanteResponse; // (E)
    FObterParticipanteResult_IsSet_: boolean;
    procedure SetObterParticipanteResult(value:tObterParticipanteResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterParticipanteResponse_ObterParticipanteResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ObterParticipanteResult: tObterParticipanteResponse read FObterParticipanteResult write SetObterParticipanteResult;
    property ObterParticipanteResult_IsSet_:boolean read FObterParticipanteResult_IsSet_;
  end;

const
  snObterParticipante_ObterParticipante = 'ObterParticipante';
  snObterParticipante_ObterParticipante_CPFCNPJ = 'CPFCNPJ';
  snObterParticipante_ObterParticipante_TipoParticipante = 'TipoParticipante';

type
  tObterParticipante_ObterParticipante = class
  private
    F_NameSpaceAlias: string;
    FCPFCNPJ: string; // (E)
    FCPFCNPJ_IsSet_: boolean;
    FTipoParticipante: integer; // (E)
    FTipoParticipante_IsSet_: boolean;
    procedure SetCPFCNPJ(value:string);
    procedure SetTipoParticipante(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterParticipante_ObterParticipante;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CPFCNPJ: string read FCPFCNPJ write SetCPFCNPJ;
    property CPFCNPJ_IsSet_:boolean read FCPFCNPJ_IsSet_;
    property TipoParticipante: integer read FTipoParticipante write SetTipoParticipante;
    property TipoParticipante_IsSet_:boolean read FTipoParticipante_IsSet_;
  end;

const
  snObterParticipante = 'ObterParticipante';

type
  tObterParticipante = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterParticipante;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snObterParticipantePorIdResponse_ObterParticipantePorIdResponse = 'ObterParticipantePorIdResponse';
  snObterParticipantePorIdResponse_ObterParticipantePorIdResponse_ObterParticipantePorIdResult = 'ObterParticipantePorIdResult';

type
  tObterParticipantePorIdResponse_ObterParticipantePorIdResponse = class
  private
    F_NameSpaceAlias: string;
    FObterParticipantePorIdResult: tObterParticipanteResponse; // (E)
    FObterParticipantePorIdResult_IsSet_: boolean;
    procedure SetObterParticipantePorIdResult(value:tObterParticipanteResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterParticipantePorIdResponse_ObterParticipantePorIdResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ObterParticipantePorIdResult: tObterParticipanteResponse read FObterParticipantePorIdResult write SetObterParticipantePorIdResult;
    property ObterParticipantePorIdResult_IsSet_:boolean read FObterParticipantePorIdResult_IsSet_;
  end;

const
  snObterParticipantePorIdResponse = 'ObterParticipantePorIdResponse';

type
  tObterParticipantePorIdResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterParticipantePorIdResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snObterParticipantePorId_ObterParticipantePorId = 'ObterParticipantePorId';
  snObterParticipantePorId_ObterParticipantePorId_idParticipante = 'idParticipante';

type
  tObterParticipantePorId_ObterParticipantePorId = class
  private
    F_NameSpaceAlias: string;
    FidParticipante: integer; // (E)
    FidParticipante_IsSet_: boolean;
    procedure SetidParticipante(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterParticipantePorId_ObterParticipantePorId;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property idParticipante: integer read FidParticipante write SetidParticipante;
    property idParticipante_IsSet_:boolean read FidParticipante_IsSet_;
  end;

const
  snObterParticipantePorId = 'ObterParticipantePorId';

type
  tObterParticipantePorId = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterParticipantePorId;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snCadastrarParticipanteResponse_CadastrarParticipanteResponse = 'CadastrarParticipanteResponse';
  snCadastrarParticipanteResponse_CadastrarParticipanteResponse_CadastrarParticipanteResult = 'CadastrarParticipanteResult';

type
  tCadastrarParticipanteResponse_CadastrarParticipanteResponse = class
  private
    F_NameSpaceAlias: string;
    FCadastrarParticipanteResult: tBaseResponse; // (E)
    FCadastrarParticipanteResult_IsSet_: boolean;
    procedure SetCadastrarParticipanteResult(value:tBaseResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCadastrarParticipanteResponse_CadastrarParticipanteResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CadastrarParticipanteResult: tBaseResponse read FCadastrarParticipanteResult write SetCadastrarParticipanteResult;
    property CadastrarParticipanteResult_IsSet_:boolean read FCadastrarParticipanteResult_IsSet_;
  end;

const
  snCadastrarParticipanteResponse = 'CadastrarParticipanteResponse';

type
  tCadastrarParticipanteResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCadastrarParticipanteResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snCadastrarParticipante_CadastrarParticipante = 'CadastrarParticipante';
  snCadastrarParticipante_CadastrarParticipante_participante = 'participante';

type
  tCadastrarParticipante_CadastrarParticipante = class
  private
    F_NameSpaceAlias: string;
    Fparticipante: tBaseParticipanteRequestResponse; // (E)
    Fparticipante_IsSet_: boolean;
    procedure Setparticipante(value:tBaseParticipanteRequestResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCadastrarParticipante_CadastrarParticipante;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property participante: tBaseParticipanteRequestResponse read Fparticipante write Setparticipante;
    property participante_IsSet_:boolean read Fparticipante_IsSet_;
  end;

const
  snCadastrarParticipante = 'CadastrarParticipante';

type
  tCadastrarParticipante = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCadastrarParticipante;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snBuscarCentrosDeCustosAtivosResponse_BuscarCentrosDeCustosAtivosResponse = 'BuscarCentrosDeCustosAtivosResponse';
  snBuscarCentrosDeCustosAtivosResponse_BuscarCentrosDeCustosAtivosResponse_BuscarCentrosDeCustosAtivosResult = 'BuscarCentrosDeCustosAtivosResult';

type
  tBuscarCentrosDeCustosAtivosResponse_BuscarCentrosDeCustosAtivosResponse = class
  private
    F_NameSpaceAlias: string;
    FBuscarCentrosDeCustosAtivosResult: tBuscaCentrosDeCustosResponse; // (E)
    FBuscarCentrosDeCustosAtivosResult_IsSet_: boolean;
    procedure SetBuscarCentrosDeCustosAtivosResult(value:tBuscaCentrosDeCustosResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarCentrosDeCustosAtivosResponse_BuscarCentrosDeCustosAtivosResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property BuscarCentrosDeCustosAtivosResult: tBuscaCentrosDeCustosResponse read FBuscarCentrosDeCustosAtivosResult write SetBuscarCentrosDeCustosAtivosResult;
    property BuscarCentrosDeCustosAtivosResult_IsSet_:boolean read FBuscarCentrosDeCustosAtivosResult_IsSet_;
  end;

const
  snBuscarCentrosDeCustosAtivosResponse = 'BuscarCentrosDeCustosAtivosResponse';

type
  tBuscarCentrosDeCustosAtivosResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarCentrosDeCustosAtivosResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snBuscarCentrosDeCustosAtivos_BuscarCentrosDeCustosAtivos = 'BuscarCentrosDeCustosAtivos';

type
  tBuscarCentrosDeCustosAtivos_BuscarCentrosDeCustosAtivos = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarCentrosDeCustosAtivos_BuscarCentrosDeCustosAtivos;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snBuscarCentrosDeCustosAtivos = 'BuscarCentrosDeCustosAtivos';

type
  tBuscarCentrosDeCustosAtivos = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tBuscarCentrosDeCustosAtivos;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snAtualizarCentroDeCustoResponse_AtualizarCentroDeCustoResponse = 'AtualizarCentroDeCustoResponse';
  snAtualizarCentroDeCustoResponse_AtualizarCentroDeCustoResponse_AtualizarCentroDeCustoResult = 'AtualizarCentroDeCustoResult';

type
  tAtualizarCentroDeCustoResponse_AtualizarCentroDeCustoResponse = class
  private
    F_NameSpaceAlias: string;
    FAtualizarCentroDeCustoResult: tBaseResponse; // (E)
    FAtualizarCentroDeCustoResult_IsSet_: boolean;
    procedure SetAtualizarCentroDeCustoResult(value:tBaseResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAtualizarCentroDeCustoResponse_AtualizarCentroDeCustoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property AtualizarCentroDeCustoResult: tBaseResponse read FAtualizarCentroDeCustoResult write SetAtualizarCentroDeCustoResult;
    property AtualizarCentroDeCustoResult_IsSet_:boolean read FAtualizarCentroDeCustoResult_IsSet_;
  end;

const
  snAtualizarCentroDeCustoResponse = 'AtualizarCentroDeCustoResponse';

type
  tAtualizarCentroDeCustoResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAtualizarCentroDeCustoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snAtualizarCentroDeCusto_AtualizarCentroDeCusto = 'AtualizarCentroDeCusto';
  snAtualizarCentroDeCusto_AtualizarCentroDeCusto_centroDeCusto = 'centroDeCusto';

type
  tAtualizarCentroDeCusto_AtualizarCentroDeCusto = class
  private
    F_NameSpaceAlias: string;
    FcentroDeCusto: tBaseCentroDeCustoRequestResponse; // (E)
    FcentroDeCusto_IsSet_: boolean;
    procedure SetcentroDeCusto(value:tBaseCentroDeCustoRequestResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAtualizarCentroDeCusto_AtualizarCentroDeCusto;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property centroDeCusto: tBaseCentroDeCustoRequestResponse read FcentroDeCusto write SetcentroDeCusto;
    property centroDeCusto_IsSet_:boolean read FcentroDeCusto_IsSet_;
  end;

const
  snAtualizarCentroDeCusto = 'AtualizarCentroDeCusto';

type
  tAtualizarCentroDeCusto = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tAtualizarCentroDeCusto;
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
    class function CreateFromXmlString(s: string): tObterCentroDeCustoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snObterCentroDeCustoResponse_ObterCentroDeCustoResponse = 'ObterCentroDeCustoResponse';
  snObterCentroDeCustoResponse_ObterCentroDeCustoResponse_ObterCentroDeCustoResult = 'ObterCentroDeCustoResult';

type
  tObterCentroDeCustoResponse_ObterCentroDeCustoResponse = class
  private
    F_NameSpaceAlias: string;
    FObterCentroDeCustoResult: tObterCentroDeCustoResponse; // (E)
    FObterCentroDeCustoResult_IsSet_: boolean;
    procedure SetObterCentroDeCustoResult(value:tObterCentroDeCustoResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterCentroDeCustoResponse_ObterCentroDeCustoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ObterCentroDeCustoResult: tObterCentroDeCustoResponse read FObterCentroDeCustoResult write SetObterCentroDeCustoResult;
    property ObterCentroDeCustoResult_IsSet_:boolean read FObterCentroDeCustoResult_IsSet_;
  end;

const
  snObterCentroDeCusto_ObterCentroDeCusto = 'ObterCentroDeCusto';
  snObterCentroDeCusto_ObterCentroDeCusto_Codigo = 'Codigo';

type
  tObterCentroDeCusto_ObterCentroDeCusto = class
  private
    F_NameSpaceAlias: string;
    FCodigo: string; // (E)
    FCodigo_IsSet_: boolean;
    procedure SetCodigo(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterCentroDeCusto_ObterCentroDeCusto;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Codigo: string read FCodigo write SetCodigo;
    property Codigo_IsSet_:boolean read FCodigo_IsSet_;
  end;

const
  snObterCentroDeCusto = 'ObterCentroDeCusto';

type
  tObterCentroDeCusto = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterCentroDeCusto;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snObterCentroDeCustoPorIdResponse_ObterCentroDeCustoPorIdResponse = 'ObterCentroDeCustoPorIdResponse';
  snObterCentroDeCustoPorIdResponse_ObterCentroDeCustoPorIdResponse_ObterCentroDeCustoPorIdResult = 'ObterCentroDeCustoPorIdResult';

type
  tObterCentroDeCustoPorIdResponse_ObterCentroDeCustoPorIdResponse = class
  private
    F_NameSpaceAlias: string;
    FObterCentroDeCustoPorIdResult: tObterCentroDeCustoResponse; // (E)
    FObterCentroDeCustoPorIdResult_IsSet_: boolean;
    procedure SetObterCentroDeCustoPorIdResult(value:tObterCentroDeCustoResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterCentroDeCustoPorIdResponse_ObterCentroDeCustoPorIdResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ObterCentroDeCustoPorIdResult: tObterCentroDeCustoResponse read FObterCentroDeCustoPorIdResult write SetObterCentroDeCustoPorIdResult;
    property ObterCentroDeCustoPorIdResult_IsSet_:boolean read FObterCentroDeCustoPorIdResult_IsSet_;
  end;

const
  snObterCentroDeCustoPorIdResponse = 'ObterCentroDeCustoPorIdResponse';

type
  tObterCentroDeCustoPorIdResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterCentroDeCustoPorIdResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snObterCentroDeCustoPorId_ObterCentroDeCustoPorId = 'ObterCentroDeCustoPorId';
  snObterCentroDeCustoPorId_ObterCentroDeCustoPorId_idCentroDeCusto = 'idCentroDeCusto';

type
  tObterCentroDeCustoPorId_ObterCentroDeCustoPorId = class
  private
    F_NameSpaceAlias: string;
    FidCentroDeCusto: integer; // (E)
    FidCentroDeCusto_IsSet_: boolean;
    procedure SetidCentroDeCusto(value:integer);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterCentroDeCustoPorId_ObterCentroDeCustoPorId;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property idCentroDeCusto: integer read FidCentroDeCusto write SetidCentroDeCusto;
    property idCentroDeCusto_IsSet_:boolean read FidCentroDeCusto_IsSet_;
  end;

const
  snObterCentroDeCustoPorId = 'ObterCentroDeCustoPorId';

type
  tObterCentroDeCustoPorId = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tObterCentroDeCustoPorId;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snCadastrarCentroDeCustoResponse_CadastrarCentroDeCustoResponse = 'CadastrarCentroDeCustoResponse';
  snCadastrarCentroDeCustoResponse_CadastrarCentroDeCustoResponse_CadastrarCentroDeCustoResult = 'CadastrarCentroDeCustoResult';

type
  tCadastrarCentroDeCustoResponse_CadastrarCentroDeCustoResponse = class
  private
    F_NameSpaceAlias: string;
    FCadastrarCentroDeCustoResult: tBaseResponse; // (E)
    FCadastrarCentroDeCustoResult_IsSet_: boolean;
    procedure SetCadastrarCentroDeCustoResult(value:tBaseResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCadastrarCentroDeCustoResponse_CadastrarCentroDeCustoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CadastrarCentroDeCustoResult: tBaseResponse read FCadastrarCentroDeCustoResult write SetCadastrarCentroDeCustoResult;
    property CadastrarCentroDeCustoResult_IsSet_:boolean read FCadastrarCentroDeCustoResult_IsSet_;
  end;

const
  snCadastrarCentroDeCustoResponse = 'CadastrarCentroDeCustoResponse';

type
  tCadastrarCentroDeCustoResponse = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCadastrarCentroDeCustoResponse;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

const
  snCadastrarCentroDeCusto_CadastrarCentroDeCusto = 'CadastrarCentroDeCusto';
  snCadastrarCentroDeCusto_CadastrarCentroDeCusto_centroDeCusto = 'centroDeCusto';

type
  tCadastrarCentroDeCusto_CadastrarCentroDeCusto = class
  private
    F_NameSpaceAlias: string;
    FcentroDeCusto: tBaseCentroDeCustoRequestResponse; // (E)
    FcentroDeCusto_IsSet_: boolean;
    procedure SetcentroDeCusto(value:tBaseCentroDeCustoRequestResponse);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCadastrarCentroDeCusto_CadastrarCentroDeCusto;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property centroDeCusto: tBaseCentroDeCustoRequestResponse read FcentroDeCusto write SetcentroDeCusto;
    property centroDeCusto_IsSet_:boolean read FcentroDeCusto_IsSet_;
  end;

const
  snCadastrarCentroDeCusto = 'CadastrarCentroDeCusto';

type
  tCadastrarCentroDeCusto = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    function GetAsString: string;
    class function CreateFromXmlString(s: string): tCadastrarCentroDeCusto;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

implementation
uses
  SysUtils,
  mylib;

const
  thisNamespaceURI = 'http://tempuri.org/';
  defNamespaceAlias = 'tns';

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

{ tObterCustoRotaResponse_ObterCustoRotaResponse }

function tObterCustoRotaResponse_ObterCustoRotaResponse.GetAsString: string;
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

class function tObterCustoRotaResponse_ObterCustoRotaResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterCustoRotaResponse_ObterCustoRotaResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterCustoRotaResponse_ObterCustoRotaResponse.CreateFromXmlString(s: string): tObterCustoRotaResponse_ObterCustoRotaResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterCustoRotaResponse_ObterCustoRotaResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterCustoRotaResponse_ObterCustoRotaResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterCustoRotaResponse_ObterCustoRotaResponse_ObterCustoRotaResult) then
      FObterCustoRotaResult := tObterCustoRotaResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterCustoRotaResponse_ObterCustoRotaResponse.Destroy;
begin
  if assigned(FObterCustoRotaResult) then  FObterCustoRotaResult.free;
  inherited;
end; // destructor ...

procedure tObterCustoRotaResponse_ObterCustoRotaResponse.SetObterCustoRotaResult(value:tObterCustoRotaResponse);
begin
  FObterCustoRotaResult := value;
  FObterCustoRotaResult_IsSet_ := true;
end;

procedure tObterCustoRotaResponse_ObterCustoRotaResponse.Save(aNode:tJanXMLNode2);
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

  if Assigned(FObterCustoRotaResult) then
  begin
    xn := aNode.addChildByName(snObterCustoRotaResponse_ObterCustoRotaResponse_ObterCustoRotaResult);
    FObterCustoRotaResult.Save(xn);
  end;
end; // procedure save

{ tObterCustoRota_ObterCustoRota }

function tObterCustoRota_ObterCustoRota.GetAsString: string;
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

class function tObterCustoRota_ObterCustoRota._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterCustoRota_ObterCustoRota.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterCustoRota_ObterCustoRota.CreateFromXmlString(s: string): tObterCustoRota_ObterCustoRota;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterCustoRota_ObterCustoRota.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterCustoRota_ObterCustoRota.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterCustoRota_ObterCustoRota_dadosParaOtencaoDeCusto) then
      dadosParaOtencaoDeCusto :=  tObterCustoRotaRequest.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterCustoRota_ObterCustoRota.Destroy;
begin
  if assigned(FdadosParaOtencaoDeCusto) then  FdadosParaOtencaoDeCusto.free;
  inherited;
end; // destructor ...

procedure tObterCustoRota_ObterCustoRota.SetdadosParaOtencaoDeCusto(value:tObterCustoRotaRequest);
begin
  FdadosParaOtencaoDeCusto := value;
  FdadosParaOtencaoDeCusto_IsSet_ := true;
end;

procedure tObterCustoRota_ObterCustoRota.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterCustoRota')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if dadosParaOtencaoDeCusto_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterCustoRota_ObterCustoRota_dadosParaOtencaoDeCusto));
    FdadosParaOtencaoDeCusto.Save( xn );
  end;
end; // procedure save

{ tObterCustoRota }

function tObterCustoRota.GetAsString: string;
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

class function tObterCustoRota._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterCustoRota.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterCustoRota.CreateFromXmlString(s: string): tObterCustoRota;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterCustoRota.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterCustoRota.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tObterCustoRota.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterCustoRota.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterCustoRota')
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

{ tObterLogRequisicoesResponse_ObterLogRequisicoesResponse }

function tObterLogRequisicoesResponse_ObterLogRequisicoesResponse.GetAsString: string;
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

class function tObterLogRequisicoesResponse_ObterLogRequisicoesResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterLogRequisicoesResponse_ObterLogRequisicoesResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterLogRequisicoesResponse_ObterLogRequisicoesResponse.CreateFromXmlString(s: string): tObterLogRequisicoesResponse_ObterLogRequisicoesResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterLogRequisicoesResponse_ObterLogRequisicoesResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterLogRequisicoesResponse_ObterLogRequisicoesResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterLogRequisicoesResponse_ObterLogRequisicoesResponse_ObterLogRequisicoesResult) then
      FObterLogRequisicoesResult := tObterLogRequisicoesResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterLogRequisicoesResponse_ObterLogRequisicoesResponse.Destroy;
begin
  if assigned(FObterLogRequisicoesResult) then  FObterLogRequisicoesResult.free;
  inherited;
end; // destructor ...

procedure tObterLogRequisicoesResponse_ObterLogRequisicoesResponse.SetObterLogRequisicoesResult(value:tObterLogRequisicoesResponse);
begin
  FObterLogRequisicoesResult := value;
  FObterLogRequisicoesResult_IsSet_ := true;
end;

procedure tObterLogRequisicoesResponse_ObterLogRequisicoesResponse.Save(aNode:tJanXMLNode2);
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

  if Assigned(FObterLogRequisicoesResult) then
  begin
    xn := aNode.addChildByName(snObterLogRequisicoesResponse_ObterLogRequisicoesResponse_ObterLogRequisicoesResult);
    FObterLogRequisicoesResult.Save(xn);
  end;
end; // procedure save

{ tObterLogRequisicoes_ObterLogRequisicoes }

function tObterLogRequisicoes_ObterLogRequisicoes.GetAsString: string;
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

class function tObterLogRequisicoes_ObterLogRequisicoes._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterLogRequisicoes_ObterLogRequisicoes.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterLogRequisicoes_ObterLogRequisicoes.CreateFromXmlString(s: string): tObterLogRequisicoes_ObterLogRequisicoes;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterLogRequisicoes_ObterLogRequisicoes.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterLogRequisicoes_ObterLogRequisicoes.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tObterLogRequisicoes_ObterLogRequisicoes.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterLogRequisicoes_ObterLogRequisicoes.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterLogRequisicoes')
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

{ tObterLogRequisicoes }

function tObterLogRequisicoes.GetAsString: string;
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

class function tObterLogRequisicoes._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterLogRequisicoes.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterLogRequisicoes.CreateFromXmlString(s: string): tObterLogRequisicoes;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterLogRequisicoes.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterLogRequisicoes.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tObterLogRequisicoes.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterLogRequisicoes.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterLogRequisicoes')
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

{ tComprarValePedagioAvulsoResponse_ComprarValePedagioAvulsoResponse }

function tComprarValePedagioAvulsoResponse_ComprarValePedagioAvulsoResponse.GetAsString: string;
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

class function tComprarValePedagioAvulsoResponse_ComprarValePedagioAvulsoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tComprarValePedagioAvulsoResponse_ComprarValePedagioAvulsoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tComprarValePedagioAvulsoResponse_ComprarValePedagioAvulsoResponse.CreateFromXmlString(s: string): tComprarValePedagioAvulsoResponse_ComprarValePedagioAvulsoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tComprarValePedagioAvulsoResponse_ComprarValePedagioAvulsoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tComprarValePedagioAvulsoResponse_ComprarValePedagioAvulsoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snComprarValePedagioAvulsoResponse_ComprarValePedagioAvulsoResponse_ComprarValePedagioAvulsoResult) then
      FComprarValePedagioAvulsoResult := tComprarValePedagioAvulsoResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tComprarValePedagioAvulsoResponse_ComprarValePedagioAvulsoResponse.Destroy;
begin
  if assigned(FComprarValePedagioAvulsoResult) then  FComprarValePedagioAvulsoResult.free;
  inherited;
end; // destructor ...

procedure tComprarValePedagioAvulsoResponse_ComprarValePedagioAvulsoResponse.SetComprarValePedagioAvulsoResult(value:tComprarValePedagioAvulsoResponse);
begin
  FComprarValePedagioAvulsoResult := value;
  FComprarValePedagioAvulsoResult_IsSet_ := true;
end;

procedure tComprarValePedagioAvulsoResponse_ComprarValePedagioAvulsoResponse.Save(aNode:tJanXMLNode2);
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

  if Assigned(FComprarValePedagioAvulsoResult) then
  begin
    xn := aNode.addChildByName(snComprarValePedagioAvulsoResponse_ComprarValePedagioAvulsoResponse_ComprarValePedagioAvulsoResult);
    FComprarValePedagioAvulsoResult.Save(xn);
  end;
end; // procedure save

{ tComprarValePedagioAvulso_ComprarValePedagioAvulso }

function tComprarValePedagioAvulso_ComprarValePedagioAvulso.GetAsString: string;
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

class function tComprarValePedagioAvulso_ComprarValePedagioAvulso._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tComprarValePedagioAvulso_ComprarValePedagioAvulso.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tComprarValePedagioAvulso_ComprarValePedagioAvulso.CreateFromXmlString(s: string): tComprarValePedagioAvulso_ComprarValePedagioAvulso;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tComprarValePedagioAvulso_ComprarValePedagioAvulso.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tComprarValePedagioAvulso_ComprarValePedagioAvulso.Create(aRoot:tJanXMLNode2);
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
    if (sn = snComprarValePedagioAvulso_ComprarValePedagioAvulso_dadosParaCarga) then
      dadosParaCarga :=  tComprarValePedagioAvulsoRequest.create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tComprarValePedagioAvulso_ComprarValePedagioAvulso.Destroy;
begin
  if assigned(FdadosParaCarga) then  FdadosParaCarga.free;
  inherited;
end; // destructor ...

procedure tComprarValePedagioAvulso_ComprarValePedagioAvulso.SetdadosParaCarga(value:tComprarValePedagioAvulsoRequest);
begin
  FdadosParaCarga := value;
  FdadosParaCarga_IsSet_ := true;
end;

procedure tComprarValePedagioAvulso_ComprarValePedagioAvulso.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ComprarValePedagioAvulso')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if dadosParaCarga_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snComprarValePedagioAvulso_ComprarValePedagioAvulso_dadosParaCarga));
    FdadosParaCarga.Save( xn );
    //xn.text := FdadosParaCarga;
  end;
end; // procedure save

{ tComprarValePedagioAvulso }

function tComprarValePedagioAvulso.GetAsString: string;
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

class function tComprarValePedagioAvulso._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tComprarValePedagioAvulso.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tComprarValePedagioAvulso.CreateFromXmlString(s: string): tComprarValePedagioAvulso;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tComprarValePedagioAvulso.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tComprarValePedagioAvulso.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tComprarValePedagioAvulso.Destroy;
begin
  inherited;
end; // destructor ...

procedure tComprarValePedagioAvulso.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ComprarValePedagioAvulso')
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

{ tObterMotoristaPorCPFTerceirosResponse }

function tObterMotoristaPorCPFTerceirosResponse.GetAsString: string;
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

class function tObterMotoristaPorCPFTerceirosResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterMotoristaPorCPFTerceirosResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterMotoristaPorCPFTerceirosResponse.CreateFromXmlString(s: string): tObterMotoristaPorCPFTerceirosResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterMotoristaPorCPFTerceirosResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterMotoristaPorCPFTerceirosResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tObterMotoristaPorCPFTerceirosResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterMotoristaPorCPFTerceirosResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterMotoristaPorCPFTerceirosResponse')
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

{ tObterMotoristaPorCPFTerceiros_ObterMotoristaPorCPFTerceiros }

function tObterMotoristaPorCPFTerceiros_ObterMotoristaPorCPFTerceiros.GetAsString: string;
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

class function tObterMotoristaPorCPFTerceiros_ObterMotoristaPorCPFTerceiros._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterMotoristaPorCPFTerceiros_ObterMotoristaPorCPFTerceiros.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterMotoristaPorCPFTerceiros_ObterMotoristaPorCPFTerceiros.CreateFromXmlString(s: string): tObterMotoristaPorCPFTerceiros_ObterMotoristaPorCPFTerceiros;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterMotoristaPorCPFTerceiros_ObterMotoristaPorCPFTerceiros.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterMotoristaPorCPFTerceiros_ObterMotoristaPorCPFTerceiros.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterMotoristaPorCPFTerceiros_ObterMotoristaPorCPFTerceiros_cpfCnpjContratado) then
      cpfCnpjContratado :=  xn.text // string
    else if (sn = snObterMotoristaPorCPFTerceiros_ObterMotoristaPorCPFTerceiros_cpf) then
      cpf :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterMotoristaPorCPFTerceiros_ObterMotoristaPorCPFTerceiros.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterMotoristaPorCPFTerceiros_ObterMotoristaPorCPFTerceiros.SetcpfCnpjContratado(value:string);
begin
  FcpfCnpjContratado := value;
  FcpfCnpjContratado_IsSet_ := true;
end;

procedure tObterMotoristaPorCPFTerceiros_ObterMotoristaPorCPFTerceiros.Setcpf(value:string);
begin
  Fcpf := value;
  Fcpf_IsSet_ := true;
end;

procedure tObterMotoristaPorCPFTerceiros_ObterMotoristaPorCPFTerceiros.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterMotoristaPorCPFTerceiros')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if cpfCnpjContratado_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterMotoristaPorCPFTerceiros_ObterMotoristaPorCPFTerceiros_cpfCnpjContratado));
    xn.text := FcpfCnpjContratado;
  end;
  if cpf_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterMotoristaPorCPFTerceiros_ObterMotoristaPorCPFTerceiros_cpf));
    xn.text := Fcpf;
  end;
end; // procedure save

{ tObterMotoristaPorCPFTerceiros }

function tObterMotoristaPorCPFTerceiros.GetAsString: string;
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

class function tObterMotoristaPorCPFTerceiros._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterMotoristaPorCPFTerceiros.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterMotoristaPorCPFTerceiros.CreateFromXmlString(s: string): tObterMotoristaPorCPFTerceiros;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterMotoristaPorCPFTerceiros.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterMotoristaPorCPFTerceiros.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tObterMotoristaPorCPFTerceiros.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterMotoristaPorCPFTerceiros.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterMotoristaPorCPFTerceiros')
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

{ tObterMotoristaPorCPFResponse }

function tObterMotoristaPorCPFResponse.GetAsString: string;
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

class function tObterMotoristaPorCPFResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterMotoristaPorCPFResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterMotoristaPorCPFResponse.CreateFromXmlString(s: string): tObterMotoristaPorCPFResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterMotoristaPorCPFResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterMotoristaPorCPFResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tObterMotoristaPorCPFResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterMotoristaPorCPFResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterMotoristaPorCPFResponse')
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

{ tObterMotoristaPorCPF_ObterMotoristaPorCPF }

function tObterMotoristaPorCPF_ObterMotoristaPorCPF.GetAsString: string;
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

class function tObterMotoristaPorCPF_ObterMotoristaPorCPF._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterMotoristaPorCPF_ObterMotoristaPorCPF.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterMotoristaPorCPF_ObterMotoristaPorCPF.CreateFromXmlString(s: string): tObterMotoristaPorCPF_ObterMotoristaPorCPF;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterMotoristaPorCPF_ObterMotoristaPorCPF.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterMotoristaPorCPF_ObterMotoristaPorCPF.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterMotoristaPorCPF_ObterMotoristaPorCPF_cpf) then
      cpf :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterMotoristaPorCPF_ObterMotoristaPorCPF.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterMotoristaPorCPF_ObterMotoristaPorCPF.Setcpf(value:string);
begin
  Fcpf := value;
  Fcpf_IsSet_ := true;
end;

procedure tObterMotoristaPorCPF_ObterMotoristaPorCPF.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterMotoristaPorCPF')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if cpf_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterMotoristaPorCPF_ObterMotoristaPorCPF_cpf));
    xn.text := Fcpf;
  end;
end; // procedure save

{ tObterMotoristaPorCPF }

function tObterMotoristaPorCPF.GetAsString: string;
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

class function tObterMotoristaPorCPF._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterMotoristaPorCPF.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterMotoristaPorCPF.CreateFromXmlString(s: string): tObterMotoristaPorCPF;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterMotoristaPorCPF.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterMotoristaPorCPF.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tObterMotoristaPorCPF.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterMotoristaPorCPF.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterMotoristaPorCPF')
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

{ tBuscarMotoristasAtivosResponse_BuscarMotoristasAtivosResponse }

function tBuscarMotoristasAtivosResponse_BuscarMotoristasAtivosResponse.GetAsString: string;
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

class function tBuscarMotoristasAtivosResponse_BuscarMotoristasAtivosResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarMotoristasAtivosResponse_BuscarMotoristasAtivosResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tBuscarMotoristasAtivosResponse_BuscarMotoristasAtivosResponse.CreateFromXmlString(s: string): tBuscarMotoristasAtivosResponse_BuscarMotoristasAtivosResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarMotoristasAtivosResponse_BuscarMotoristasAtivosResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarMotoristasAtivosResponse_BuscarMotoristasAtivosResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snBuscarMotoristasAtivosResponse_BuscarMotoristasAtivosResponse_BuscarMotoristasAtivosResult) then
      BuscarMotoristasAtivosResult :=  tBuscarMotoristaResponse.create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tBuscarMotoristasAtivosResponse_BuscarMotoristasAtivosResponse.Destroy;
begin
  if assigned(FBuscarMotoristasAtivosResult) then  FBuscarMotoristasAtivosResult.free;
  inherited;
end; // destructor ...

procedure tBuscarMotoristasAtivosResponse_BuscarMotoristasAtivosResponse.SetBuscarMotoristasAtivosResult(value:tBuscarMotoristaResponse);
begin
  FBuscarMotoristasAtivosResult := value;
  FBuscarMotoristasAtivosResult_IsSet_ := true;
end;

procedure tBuscarMotoristasAtivosResponse_BuscarMotoristasAtivosResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscarMotoristasAtivosResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if BuscarMotoristasAtivosResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarMotoristasAtivosResponse_BuscarMotoristasAtivosResponse_BuscarMotoristasAtivosResult));
    {xn.text := }FBuscarMotoristasAtivosResult.save( xn );;
  end;
end; // procedure save

{ tBuscarMotoristasAtivosResponse }

function tBuscarMotoristasAtivosResponse.GetAsString: string;
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

class function tBuscarMotoristasAtivosResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarMotoristasAtivosResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tBuscarMotoristasAtivosResponse.CreateFromXmlString(s: string): tBuscarMotoristasAtivosResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarMotoristasAtivosResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarMotoristasAtivosResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tBuscarMotoristasAtivosResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tBuscarMotoristasAtivosResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscarMotoristasAtivosResponse')
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

{ tBuscarMotoristasAtivos_BuscarMotoristasAtivos }

function tBuscarMotoristasAtivos_BuscarMotoristasAtivos.GetAsString: string;
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

class function tBuscarMotoristasAtivos_BuscarMotoristasAtivos._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarMotoristasAtivos_BuscarMotoristasAtivos.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tBuscarMotoristasAtivos_BuscarMotoristasAtivos.CreateFromXmlString(s: string): tBuscarMotoristasAtivos_BuscarMotoristasAtivos;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarMotoristasAtivos_BuscarMotoristasAtivos.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarMotoristasAtivos_BuscarMotoristasAtivos.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tBuscarMotoristasAtivos_BuscarMotoristasAtivos.Destroy;
begin
  inherited;
end; // destructor ...

procedure tBuscarMotoristasAtivos_BuscarMotoristasAtivos.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscarMotoristasAtivos')
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

{ tBuscarMotoristasAtivos }

function tBuscarMotoristasAtivos.GetAsString: string;
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

class function tBuscarMotoristasAtivos._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarMotoristasAtivos.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tBuscarMotoristasAtivos.CreateFromXmlString(s: string): tBuscarMotoristasAtivos;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarMotoristasAtivos.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarMotoristasAtivos.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tBuscarMotoristasAtivos.Destroy;
begin
  inherited;
end; // destructor ...

procedure tBuscarMotoristasAtivos.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscarMotoristasAtivos')
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

{ tAtualizarMotoristaResponse_AtualizarMotoristaResponse }

function tAtualizarMotoristaResponse_AtualizarMotoristaResponse.GetAsString: string;
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

class function tAtualizarMotoristaResponse_AtualizarMotoristaResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAtualizarMotoristaResponse_AtualizarMotoristaResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAtualizarMotoristaResponse_AtualizarMotoristaResponse.CreateFromXmlString(s: string): tAtualizarMotoristaResponse_AtualizarMotoristaResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAtualizarMotoristaResponse_AtualizarMotoristaResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAtualizarMotoristaResponse_AtualizarMotoristaResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snAtualizarMotoristaResponse_AtualizarMotoristaResponse_AtualizarMotoristaResult) then
      AtualizarMotoristaResult :=  tBaseResponse.create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tAtualizarMotoristaResponse_AtualizarMotoristaResponse.Destroy;
begin
  if assigned(FAtualizarMotoristaResult) then  FAtualizarMotoristaResult.free;
  inherited;
end; // destructor ...

procedure tAtualizarMotoristaResponse_AtualizarMotoristaResponse.SetAtualizarMotoristaResult(value:tBaseResponse);
begin
  FAtualizarMotoristaResult := value;
  FAtualizarMotoristaResult_IsSet_ := true;
end;

procedure tAtualizarMotoristaResponse_AtualizarMotoristaResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AtualizarMotoristaResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if AtualizarMotoristaResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarMotoristaResponse_AtualizarMotoristaResponse_AtualizarMotoristaResult));
    FAtualizarMotoristaResult.save( xn );
  end;
end; // procedure save

{ tAtualizarMotoristaResponse }

function tAtualizarMotoristaResponse.GetAsString: string;
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

class function tAtualizarMotoristaResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAtualizarMotoristaResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAtualizarMotoristaResponse.CreateFromXmlString(s: string): tAtualizarMotoristaResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAtualizarMotoristaResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAtualizarMotoristaResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tAtualizarMotoristaResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAtualizarMotoristaResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AtualizarMotoristaResponse')
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

{ tAtualizarMotorista_AtualizarMotorista }

function tAtualizarMotorista_AtualizarMotorista.GetAsString: string;
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

class function tAtualizarMotorista_AtualizarMotorista._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAtualizarMotorista_AtualizarMotorista.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAtualizarMotorista_AtualizarMotorista.CreateFromXmlString(s: string): tAtualizarMotorista_AtualizarMotorista;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAtualizarMotorista_AtualizarMotorista.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAtualizarMotorista_AtualizarMotorista.Create(aRoot:tJanXMLNode2);
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
    if (sn = snAtualizarMotorista_AtualizarMotorista_motorista) then
      motorista :=  tBaseMotoristaRequestResponse.create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tAtualizarMotorista_AtualizarMotorista.Destroy;
begin
  if assigned(Fmotorista) then  Fmotorista.free;
  inherited;
end; // destructor ...

procedure tAtualizarMotorista_AtualizarMotorista.Setmotorista(value:tBaseMotoristaRequestResponse);
begin
  Fmotorista := value;
  Fmotorista_IsSet_ := true;
end;

procedure tAtualizarMotorista_AtualizarMotorista.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AtualizarMotorista')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if motorista_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarMotorista_AtualizarMotorista_motorista));
    Fmotorista.save( xn );
  end;
end; // procedure save

{ tAtualizarMotorista }

function tAtualizarMotorista.GetAsString: string;
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

class function tAtualizarMotorista._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAtualizarMotorista.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAtualizarMotorista.CreateFromXmlString(s: string): tAtualizarMotorista;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAtualizarMotorista.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAtualizarMotorista.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tAtualizarMotorista.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAtualizarMotorista.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AtualizarMotorista')
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


{ tObterMotoristaPorCPFTerceirosResponse_ObterMotoristaPorCPFTerceirosResponse }

function tObterMotoristaPorCPFTerceirosResponse_ObterMotoristaPorCPFTerceirosResponse.GetAsString: string;
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

class function tObterMotoristaPorCPFTerceirosResponse_ObterMotoristaPorCPFTerceirosResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterMotoristaPorCPFTerceirosResponse_ObterMotoristaPorCPFTerceirosResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterMotoristaPorCPFTerceirosResponse_ObterMotoristaPorCPFTerceirosResponse.CreateFromXmlString(s: string): tObterMotoristaPorCPFTerceirosResponse_ObterMotoristaPorCPFTerceirosResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterMotoristaPorCPFTerceirosResponse_ObterMotoristaPorCPFTerceirosResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterMotoristaPorCPFTerceirosResponse_ObterMotoristaPorCPFTerceirosResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterMotoristaPorCPFTerceirosResponse_ObterMotoristaPorCPFTerceirosResponse_ObterMotoristaPorCPFTerceirosResult) then
      FObterMotoristaPorCPFTerceirosResult := tObterMotoristaResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterMotoristaPorCPFTerceirosResponse_ObterMotoristaPorCPFTerceirosResponse.Destroy;
begin
  if assigned(FObterMotoristaPorCPFTerceirosResult) then  FObterMotoristaPorCPFTerceirosResult.free;
  inherited;
end; // destructor ...

procedure tObterMotoristaPorCPFTerceirosResponse_ObterMotoristaPorCPFTerceirosResponse.SetObterMotoristaPorCPFTerceirosResult(value:tObterMotoristaResponse);
begin
  FObterMotoristaPorCPFTerceirosResult := value;
  FObterMotoristaPorCPFTerceirosResult_IsSet_ := true;
end;

procedure tObterMotoristaPorCPFTerceirosResponse_ObterMotoristaPorCPFTerceirosResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterMotoristaPorCPFTerceirosResponse_ObterMotoristaPorCPFTerceirosResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Assigned(FObterMotoristaPorCPFTerceirosResult) then
  begin
    xn := aNode.addChildByName(snObterMotoristaPorCPFTerceirosResponse_ObterMotoristaPorCPFTerceirosResponse_ObterMotoristaPorCPFTerceirosResult);
    FObterMotoristaPorCPFTerceirosResult.Save(xn);
  end;
end; // procedure save

{ tObterMotoristaPorCPFResponse_ObterMotoristaPorCPFResponse }

function tObterMotoristaPorCPFResponse_ObterMotoristaPorCPFResponse.GetAsString: string;
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

class function tObterMotoristaPorCPFResponse_ObterMotoristaPorCPFResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterMotoristaPorCPFResponse_ObterMotoristaPorCPFResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterMotoristaPorCPFResponse_ObterMotoristaPorCPFResponse.CreateFromXmlString(s: string): tObterMotoristaPorCPFResponse_ObterMotoristaPorCPFResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterMotoristaPorCPFResponse_ObterMotoristaPorCPFResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterMotoristaPorCPFResponse_ObterMotoristaPorCPFResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterMotoristaPorCPFResponse_ObterMotoristaPorCPFResponse_ObterMotoristaPorCPFResult) then
      FObterMotoristaPorCPFResult := tObterMotoristaResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterMotoristaPorCPFResponse_ObterMotoristaPorCPFResponse.Destroy;
begin
  if assigned(FObterMotoristaPorCPFResult) then  FObterMotoristaPorCPFResult.free;
  inherited;
end; // destructor ...

procedure tObterMotoristaPorCPFResponse_ObterMotoristaPorCPFResponse.SetObterMotoristaPorCPFResult(value:tObterMotoristaResponse);
begin
  FObterMotoristaPorCPFResult := value;
  FObterMotoristaPorCPFResult_IsSet_ := true;
end;

procedure tObterMotoristaPorCPFResponse_ObterMotoristaPorCPFResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterMotoristaPorCPFResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Assigned(FObterMotoristaPorCPFResult) then
  begin
    xn := aNode.addChildByName(snObterMotoristaPorCPFResponse_ObterMotoristaPorCPFResponse_ObterMotoristaPorCPFResult);
    FObterMotoristaPorCPFResult.Save(xn);
  end;
end; // procedure save

{ tObterMotoristaResponse_ObterMotoristaResponse }

function tObterMotoristaResponse_ObterMotoristaResponse.GetAsString: string;
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

class function tObterMotoristaResponse_ObterMotoristaResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterMotoristaResponse_ObterMotoristaResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterMotoristaResponse_ObterMotoristaResponse.CreateFromXmlString(s: string): tObterMotoristaResponse_ObterMotoristaResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterMotoristaResponse_ObterMotoristaResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterMotoristaResponse_ObterMotoristaResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterMotoristaResponse_ObterMotoristaResponse_ObterMotoristaResult) then
      FObterMotoristaResult := tObterMotoristaResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterMotoristaResponse_ObterMotoristaResponse.Destroy;
begin
  if assigned(FObterMotoristaResult) then  FObterMotoristaResult.free;
  inherited;
end; // destructor ...

procedure tObterMotoristaResponse_ObterMotoristaResponse.SetObterMotoristaResult(value:tObterMotoristaResponse);
begin
  FObterMotoristaResult := value;
  FObterMotoristaResult_IsSet_ := true;
end;

procedure tObterMotoristaResponse_ObterMotoristaResponse.Save(aNode:tJanXMLNode2);
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

  if Assigned(FObterMotoristaResult) then
  begin
    xn := aNode.addChildByName(snObterMotoristaResponse_ObterMotoristaResponse_ObterMotoristaResult);
    FObterMotoristaResult.Save(xn);
  end;
end; // procedure save

{ tObterMotorista_ObterMotorista }

function tObterMotorista_ObterMotorista.GetAsString: string;
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

class function tObterMotorista_ObterMotorista._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterMotorista_ObterMotorista.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterMotorista_ObterMotorista.CreateFromXmlString(s: string): tObterMotorista_ObterMotorista;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterMotorista_ObterMotorista.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterMotorista_ObterMotorista.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterMotorista_ObterMotorista_idMotorista) then
      idMotorista := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterMotorista_ObterMotorista.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterMotorista_ObterMotorista.SetidMotorista(value:integer);
begin
  FidMotorista := value;
  FidMotorista_IsSet_ := true;
end;

procedure tObterMotorista_ObterMotorista.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterMotorista')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if idMotorista_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterMotorista_ObterMotorista_idMotorista));
    xn.text := IntToStr(FidMotorista);
  end;
end; // procedure save

{ tObterMotorista }

function tObterMotorista.GetAsString: string;
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

class function tObterMotorista._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterMotorista.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterMotorista.CreateFromXmlString(s: string): tObterMotorista;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterMotorista.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterMotorista.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tObterMotorista.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterMotorista.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterMotorista')
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

{ tCadastrarMotoristaResponse_CadastrarMotoristaResponse }

function tCadastrarMotoristaResponse_CadastrarMotoristaResponse.GetAsString: string;
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

class function tCadastrarMotoristaResponse_CadastrarMotoristaResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastrarMotoristaResponse_CadastrarMotoristaResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tCadastrarMotoristaResponse_CadastrarMotoristaResponse.CreateFromXmlString(s: string): tCadastrarMotoristaResponse_CadastrarMotoristaResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastrarMotoristaResponse_CadastrarMotoristaResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCadastrarMotoristaResponse_CadastrarMotoristaResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snCadastrarMotoristaResponse_CadastrarMotoristaResponse_CadastrarMotoristaResult) then
      CadastrarMotoristaResult :=  tCadastroMotoristaResponse.create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tCadastrarMotoristaResponse_CadastrarMotoristaResponse.Destroy;
begin
  if assigned(FCadastrarMotoristaResult) then  FCadastrarMotoristaResult.free;
  inherited;
end; // destructor ...

procedure tCadastrarMotoristaResponse_CadastrarMotoristaResponse.SetCadastrarMotoristaResult(value:tCadastroMotoristaResponse);
begin
  FCadastrarMotoristaResult := value;
  FCadastrarMotoristaResult_IsSet_ := true;
end;

procedure tCadastrarMotoristaResponse_CadastrarMotoristaResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastrarMotoristaResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if CadastrarMotoristaResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastrarMotoristaResponse_CadastrarMotoristaResponse_CadastrarMotoristaResult));
    FCadastrarMotoristaResult.save ( xn );
  end;
end; // procedure save

{ tCadastrarMotoristaResponse }

function tCadastrarMotoristaResponse.GetAsString: string;
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

class function tCadastrarMotoristaResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastrarMotoristaResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tCadastrarMotoristaResponse.CreateFromXmlString(s: string): tCadastrarMotoristaResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastrarMotoristaResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCadastrarMotoristaResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tCadastrarMotoristaResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCadastrarMotoristaResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastrarMotoristaResponse')
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

{ tCadastrarMotorista_CadastrarMotorista }

function tCadastrarMotorista_CadastrarMotorista.GetAsString: string;
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

class function tCadastrarMotorista_CadastrarMotorista._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastrarMotorista_CadastrarMotorista.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tCadastrarMotorista_CadastrarMotorista.CreateFromXmlString(s: string): tCadastrarMotorista_CadastrarMotorista;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastrarMotorista_CadastrarMotorista.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCadastrarMotorista_CadastrarMotorista.Create(aRoot:tJanXMLNode2);
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
    if (sn = snCadastrarMotorista_CadastrarMotorista_cadastroMotoristaRequest) then
      cadastroMotoristaRequest :=  tCadastroMotoristaRequest.create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tCadastrarMotorista_CadastrarMotorista.Destroy;
begin
  if assigned(FcadastroMotoristaRequest) then  FcadastroMotoristaRequest.free;
  inherited;
end; // destructor ...

procedure tCadastrarMotorista_CadastrarMotorista.SetcadastroMotoristaRequest(value:tCadastroMotoristaRequest);
begin
  FcadastroMotoristaRequest := value;
  FcadastroMotoristaRequest_IsSet_ := true;
end;

procedure tCadastrarMotorista_CadastrarMotorista.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastrarMotorista')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if cadastroMotoristaRequest_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastrarMotorista_CadastrarMotorista_cadastroMotoristaRequest));
    FcadastroMotoristaRequest.save( xn );
  end;
end; // procedure save

{ tCadastrarMotorista }

function tCadastrarMotorista.GetAsString: string;
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

class function tCadastrarMotorista._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastrarMotorista.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tCadastrarMotorista.CreateFromXmlString(s: string): tCadastrarMotorista;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastrarMotorista.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCadastrarMotorista.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tCadastrarMotorista.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCadastrarMotorista.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastrarMotorista')
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

{ tBuscarTriagemDocumentoObjetoAtivosResponse_BuscarTriagemDocumentoObjetoAtivosResponse }

function tBuscarTriagemDocumentoObjetoAtivosResponse_BuscarTriagemDocumentoObjetoAtivosResponse.GetAsString: string;
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

class function tBuscarTriagemDocumentoObjetoAtivosResponse_BuscarTriagemDocumentoObjetoAtivosResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarTriagemDocumentoObjetoAtivosResponse_BuscarTriagemDocumentoObjetoAtivosResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tBuscarTriagemDocumentoObjetoAtivosResponse_BuscarTriagemDocumentoObjetoAtivosResponse.CreateFromXmlString(s: string): tBuscarTriagemDocumentoObjetoAtivosResponse_BuscarTriagemDocumentoObjetoAtivosResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarTriagemDocumentoObjetoAtivosResponse_BuscarTriagemDocumentoObjetoAtivosResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarTriagemDocumentoObjetoAtivosResponse_BuscarTriagemDocumentoObjetoAtivosResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snBuscarTriagemDocumentoObjetoAtivosResponse_BuscarTriagemDocumentoObjetoAtivosResponse_BuscarTriagemDocumentoObjetoAtivosResult) then
      BuscarTriagemDocumentoObjetoAtivosResult :=  tBuscarTriagemDocumentoObjetoResponse.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tBuscarTriagemDocumentoObjetoAtivosResponse_BuscarTriagemDocumentoObjetoAtivosResponse.Destroy;
begin
  if assigned(FBuscarTriagemDocumentoObjetoAtivosResult) then  FBuscarTriagemDocumentoObjetoAtivosResult.free;
  inherited;
end; // destructor ...

procedure tBuscarTriagemDocumentoObjetoAtivosResponse_BuscarTriagemDocumentoObjetoAtivosResponse.SetBuscarTriagemDocumentoObjetoAtivosResult(value:tBuscarTriagemDocumentoObjetoResponse);
begin
  FBuscarTriagemDocumentoObjetoAtivosResult := value;
  FBuscarTriagemDocumentoObjetoAtivosResult_IsSet_ := true;
end;

procedure tBuscarTriagemDocumentoObjetoAtivosResponse_BuscarTriagemDocumentoObjetoAtivosResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscarTriagemDocumentoObjetoAtivosResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if BuscarTriagemDocumentoObjetoAtivosResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarTriagemDocumentoObjetoAtivosResponse_BuscarTriagemDocumentoObjetoAtivosResponse_BuscarTriagemDocumentoObjetoAtivosResult));
    FBuscarTriagemDocumentoObjetoAtivosResult.save( xn );
    //xn.text := FBuscarTriagemDocumentoObjetoAtivosResult;
  end;
end; // procedure save

{ tBuscarTriagemDocumentoObjetoAtivosResponse }

function tBuscarTriagemDocumentoObjetoAtivosResponse.GetAsString: string;
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

class function tBuscarTriagemDocumentoObjetoAtivosResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarTriagemDocumentoObjetoAtivosResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tBuscarTriagemDocumentoObjetoAtivosResponse.CreateFromXmlString(s: string): tBuscarTriagemDocumentoObjetoAtivosResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarTriagemDocumentoObjetoAtivosResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarTriagemDocumentoObjetoAtivosResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tBuscarTriagemDocumentoObjetoAtivosResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tBuscarTriagemDocumentoObjetoAtivosResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscarTriagemDocumentoObjetoAtivosResponse')
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

{ tBuscarTriagemDocumentoObjetoAtivos_BuscarTriagemDocumentoObjetoAtivos }

function tBuscarTriagemDocumentoObjetoAtivos_BuscarTriagemDocumentoObjetoAtivos.GetAsString: string;
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

class function tBuscarTriagemDocumentoObjetoAtivos_BuscarTriagemDocumentoObjetoAtivos._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarTriagemDocumentoObjetoAtivos_BuscarTriagemDocumentoObjetoAtivos.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tBuscarTriagemDocumentoObjetoAtivos_BuscarTriagemDocumentoObjetoAtivos.CreateFromXmlString(s: string): tBuscarTriagemDocumentoObjetoAtivos_BuscarTriagemDocumentoObjetoAtivos;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarTriagemDocumentoObjetoAtivos_BuscarTriagemDocumentoObjetoAtivos.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarTriagemDocumentoObjetoAtivos_BuscarTriagemDocumentoObjetoAtivos.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tBuscarTriagemDocumentoObjetoAtivos_BuscarTriagemDocumentoObjetoAtivos.Destroy;
begin
  inherited;
end; // destructor ...

procedure tBuscarTriagemDocumentoObjetoAtivos_BuscarTriagemDocumentoObjetoAtivos.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscarTriagemDocumentoObjetoAtivos')
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

{ tBuscarTriagemDocumentoObjetoAtivos }

function tBuscarTriagemDocumentoObjetoAtivos.GetAsString: string;
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

class function tBuscarTriagemDocumentoObjetoAtivos._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarTriagemDocumentoObjetoAtivos.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tBuscarTriagemDocumentoObjetoAtivos.CreateFromXmlString(s: string): tBuscarTriagemDocumentoObjetoAtivos;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarTriagemDocumentoObjetoAtivos.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarTriagemDocumentoObjetoAtivos.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tBuscarTriagemDocumentoObjetoAtivos.Destroy;
begin
  inherited;
end; // destructor ...

procedure tBuscarTriagemDocumentoObjetoAtivos.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscarTriagemDocumentoObjetoAtivos')
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

{ tAtualizarTriagemDocumentoObjetoResponse_AtualizarTriagemDocumentoObjetoResponse }

function tAtualizarTriagemDocumentoObjetoResponse_AtualizarTriagemDocumentoObjetoResponse.GetAsString: string;
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

class function tAtualizarTriagemDocumentoObjetoResponse_AtualizarTriagemDocumentoObjetoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAtualizarTriagemDocumentoObjetoResponse_AtualizarTriagemDocumentoObjetoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAtualizarTriagemDocumentoObjetoResponse_AtualizarTriagemDocumentoObjetoResponse.CreateFromXmlString(s: string): tAtualizarTriagemDocumentoObjetoResponse_AtualizarTriagemDocumentoObjetoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAtualizarTriagemDocumentoObjetoResponse_AtualizarTriagemDocumentoObjetoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAtualizarTriagemDocumentoObjetoResponse_AtualizarTriagemDocumentoObjetoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snAtualizarTriagemDocumentoObjetoResponse_AtualizarTriagemDocumentoObjetoResponse_AtualizarTriagemDocumentoObjetoResult) then
      AtualizarTriagemDocumentoObjetoResult :=  tBaseResponse.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tAtualizarTriagemDocumentoObjetoResponse_AtualizarTriagemDocumentoObjetoResponse.Destroy;
begin
  if assigned(FAtualizarTriagemDocumentoObjetoResult) then  FAtualizarTriagemDocumentoObjetoResult.free;
  inherited;
end; // destructor ...

procedure tAtualizarTriagemDocumentoObjetoResponse_AtualizarTriagemDocumentoObjetoResponse.SetAtualizarTriagemDocumentoObjetoResult(value:tBaseResponse);
begin
  FAtualizarTriagemDocumentoObjetoResult := value;
  FAtualizarTriagemDocumentoObjetoResult_IsSet_ := true;
end;

procedure tAtualizarTriagemDocumentoObjetoResponse_AtualizarTriagemDocumentoObjetoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AtualizarTriagemDocumentoObjetoResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if AtualizarTriagemDocumentoObjetoResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarTriagemDocumentoObjetoResponse_AtualizarTriagemDocumentoObjetoResponse_AtualizarTriagemDocumentoObjetoResult));
    FAtualizarTriagemDocumentoObjetoResult.save( xn );
    //xn.text := FAtualizarTriagemDocumentoObjetoResult;
  end;
end; // procedure save

{ tAtualizarTriagemDocumentoObjetoResponse }

function tAtualizarTriagemDocumentoObjetoResponse.GetAsString: string;
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

class function tAtualizarTriagemDocumentoObjetoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAtualizarTriagemDocumentoObjetoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAtualizarTriagemDocumentoObjetoResponse.CreateFromXmlString(s: string): tAtualizarTriagemDocumentoObjetoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAtualizarTriagemDocumentoObjetoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAtualizarTriagemDocumentoObjetoResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tAtualizarTriagemDocumentoObjetoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAtualizarTriagemDocumentoObjetoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AtualizarTriagemDocumentoObjetoResponse')
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

{ tAtualizarTriagemDocumentoObjeto_AtualizarTriagemDocumentoObjeto }

function tAtualizarTriagemDocumentoObjeto_AtualizarTriagemDocumentoObjeto.GetAsString: string;
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

class function tAtualizarTriagemDocumentoObjeto_AtualizarTriagemDocumentoObjeto._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAtualizarTriagemDocumentoObjeto_AtualizarTriagemDocumentoObjeto.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAtualizarTriagemDocumentoObjeto_AtualizarTriagemDocumentoObjeto.CreateFromXmlString(s: string): tAtualizarTriagemDocumentoObjeto_AtualizarTriagemDocumentoObjeto;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAtualizarTriagemDocumentoObjeto_AtualizarTriagemDocumentoObjeto.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAtualizarTriagemDocumentoObjeto_AtualizarTriagemDocumentoObjeto.Create(aRoot:tJanXMLNode2);
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
    if (sn = snAtualizarTriagemDocumentoObjeto_AtualizarTriagemDocumentoObjeto_triagemDocumentoObjeto) then
      triagemDocumentoObjeto :=  tBaseTriagemDocumentoObjetoRequest.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tAtualizarTriagemDocumentoObjeto_AtualizarTriagemDocumentoObjeto.Destroy;
begin
  if assigned(FtriagemDocumentoObjeto) then  FtriagemDocumentoObjeto.free;
  inherited;
end; // destructor ...

procedure tAtualizarTriagemDocumentoObjeto_AtualizarTriagemDocumentoObjeto.SettriagemDocumentoObjeto(value:tBaseTriagemDocumentoObjetoRequest);
begin
  FtriagemDocumentoObjeto := value;
  FtriagemDocumentoObjeto_IsSet_ := true;
end;

procedure tAtualizarTriagemDocumentoObjeto_AtualizarTriagemDocumentoObjeto.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AtualizarTriagemDocumentoObjeto')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if triagemDocumentoObjeto_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarTriagemDocumentoObjeto_AtualizarTriagemDocumentoObjeto_triagemDocumentoObjeto));
    FtriagemDocumentoObjeto.save( xn );
    //xn.text := FtriagemDocumentoObjeto;
  end;
end; // procedure save

{ tAtualizarTriagemDocumentoObjeto }

function tAtualizarTriagemDocumentoObjeto.GetAsString: string;
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

class function tAtualizarTriagemDocumentoObjeto._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAtualizarTriagemDocumentoObjeto.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAtualizarTriagemDocumentoObjeto.CreateFromXmlString(s: string): tAtualizarTriagemDocumentoObjeto;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAtualizarTriagemDocumentoObjeto.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAtualizarTriagemDocumentoObjeto.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tAtualizarTriagemDocumentoObjeto.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAtualizarTriagemDocumentoObjeto.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AtualizarTriagemDocumentoObjeto')
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

{ tObterTriagemDocumentoObjetoResponse_ObterTriagemDocumentoObjetoResponse }

function tObterTriagemDocumentoObjetoResponse_ObterTriagemDocumentoObjetoResponse.GetAsString: string;
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

class function tObterTriagemDocumentoObjetoResponse_ObterTriagemDocumentoObjetoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterTriagemDocumentoObjetoResponse_ObterTriagemDocumentoObjetoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterTriagemDocumentoObjetoResponse_ObterTriagemDocumentoObjetoResponse.CreateFromXmlString(s: string): tObterTriagemDocumentoObjetoResponse_ObterTriagemDocumentoObjetoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterTriagemDocumentoObjetoResponse_ObterTriagemDocumentoObjetoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterTriagemDocumentoObjetoResponse_ObterTriagemDocumentoObjetoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterTriagemDocumentoObjetoResponse_ObterTriagemDocumentoObjetoResponse_ObterTriagemDocumentoObjetoResult) then
      FObterTriagemDocumentoObjetoResult := tObterTriagemDocumentoObjetoResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterTriagemDocumentoObjetoResponse_ObterTriagemDocumentoObjetoResponse.Destroy;
begin
  if assigned(FObterTriagemDocumentoObjetoResult) then  FObterTriagemDocumentoObjetoResult.free;
  inherited;
end; // destructor ...

procedure tObterTriagemDocumentoObjetoResponse_ObterTriagemDocumentoObjetoResponse.SetObterTriagemDocumentoObjetoResult(value:tObterTriagemDocumentoObjetoResponse);
begin
  FObterTriagemDocumentoObjetoResult := value;
  FObterTriagemDocumentoObjetoResult_IsSet_ := true;
end;

procedure tObterTriagemDocumentoObjetoResponse_ObterTriagemDocumentoObjetoResponse.Save(aNode:tJanXMLNode2);
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

  if Assigned(FObterTriagemDocumentoObjetoResult) then
  begin
    xn := aNode.addChildByName(snObterTriagemDocumentoObjetoResponse_ObterTriagemDocumentoObjetoResponse_ObterTriagemDocumentoObjetoResult);
    FObterTriagemDocumentoObjetoResult.Save(xn);
  end;
end; // procedure save

{ tObterTriagemDocumentoObjeto_ObterTriagemDocumentoObjeto }

function tObterTriagemDocumentoObjeto_ObterTriagemDocumentoObjeto.GetAsString: string;
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

class function tObterTriagemDocumentoObjeto_ObterTriagemDocumentoObjeto._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterTriagemDocumentoObjeto_ObterTriagemDocumentoObjeto.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterTriagemDocumentoObjeto_ObterTriagemDocumentoObjeto.CreateFromXmlString(s: string): tObterTriagemDocumentoObjeto_ObterTriagemDocumentoObjeto;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterTriagemDocumentoObjeto_ObterTriagemDocumentoObjeto.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterTriagemDocumentoObjeto_ObterTriagemDocumentoObjeto.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterTriagemDocumentoObjeto_ObterTriagemDocumentoObjeto_idTriagemDocumentoObjeto) then
      idTriagemDocumentoObjeto := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterTriagemDocumentoObjeto_ObterTriagemDocumentoObjeto.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterTriagemDocumentoObjeto_ObterTriagemDocumentoObjeto.SetidTriagemDocumentoObjeto(value:integer);
begin
  FidTriagemDocumentoObjeto := value;
  FidTriagemDocumentoObjeto_IsSet_ := true;
end;

procedure tObterTriagemDocumentoObjeto_ObterTriagemDocumentoObjeto.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterTriagemDocumentoObjeto')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if idTriagemDocumentoObjeto_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterTriagemDocumentoObjeto_ObterTriagemDocumentoObjeto_idTriagemDocumentoObjeto));
    xn.text := IntToStr(FidTriagemDocumentoObjeto);
  end;
end; // procedure save

{ tObterTriagemDocumentoObjeto }

function tObterTriagemDocumentoObjeto.GetAsString: string;
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

class function tObterTriagemDocumentoObjeto._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterTriagemDocumentoObjeto.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterTriagemDocumentoObjeto.CreateFromXmlString(s: string): tObterTriagemDocumentoObjeto;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterTriagemDocumentoObjeto.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterTriagemDocumentoObjeto.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tObterTriagemDocumentoObjeto.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterTriagemDocumentoObjeto.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterTriagemDocumentoObjeto')
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

{ tCadastrarTriagemDocumentoObjetoResponse_CadastrarTriagemDocumentoObjetoResponse }

function tCadastrarTriagemDocumentoObjetoResponse_CadastrarTriagemDocumentoObjetoResponse.GetAsString: string;
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

class function tCadastrarTriagemDocumentoObjetoResponse_CadastrarTriagemDocumentoObjetoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastrarTriagemDocumentoObjetoResponse_CadastrarTriagemDocumentoObjetoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tCadastrarTriagemDocumentoObjetoResponse_CadastrarTriagemDocumentoObjetoResponse.CreateFromXmlString(s: string): tCadastrarTriagemDocumentoObjetoResponse_CadastrarTriagemDocumentoObjetoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastrarTriagemDocumentoObjetoResponse_CadastrarTriagemDocumentoObjetoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCadastrarTriagemDocumentoObjetoResponse_CadastrarTriagemDocumentoObjetoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snCadastrarTriagemDocumentoObjetoResponse_CadastrarTriagemDocumentoObjetoResponse_CadastrarTriagemDocumentoObjetoResult) then
      CadastrarTriagemDocumentoObjetoResult :=  tBaseResponse.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tCadastrarTriagemDocumentoObjetoResponse_CadastrarTriagemDocumentoObjetoResponse.Destroy;
begin
  if assigned(FCadastrarTriagemDocumentoObjetoResult) then  FCadastrarTriagemDocumentoObjetoResult.free;
  inherited;
end; // destructor ...

procedure tCadastrarTriagemDocumentoObjetoResponse_CadastrarTriagemDocumentoObjetoResponse.SetCadastrarTriagemDocumentoObjetoResult(value:tBaseResponse);
begin
  FCadastrarTriagemDocumentoObjetoResult := value;
  FCadastrarTriagemDocumentoObjetoResult_IsSet_ := true;
end;

procedure tCadastrarTriagemDocumentoObjetoResponse_CadastrarTriagemDocumentoObjetoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastrarTriagemDocumentoObjetoResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if CadastrarTriagemDocumentoObjetoResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastrarTriagemDocumentoObjetoResponse_CadastrarTriagemDocumentoObjetoResponse_CadastrarTriagemDocumentoObjetoResult));
    FCadastrarTriagemDocumentoObjetoResult.save( xn );
    //xn.text := FCadastrarTriagemDocumentoObjetoResult;
  end;
end; // procedure save

{ tCadastrarTriagemDocumentoObjetoResponse }

function tCadastrarTriagemDocumentoObjetoResponse.GetAsString: string;
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

class function tCadastrarTriagemDocumentoObjetoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastrarTriagemDocumentoObjetoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tCadastrarTriagemDocumentoObjetoResponse.CreateFromXmlString(s: string): tCadastrarTriagemDocumentoObjetoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastrarTriagemDocumentoObjetoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCadastrarTriagemDocumentoObjetoResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tCadastrarTriagemDocumentoObjetoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCadastrarTriagemDocumentoObjetoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastrarTriagemDocumentoObjetoResponse')
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

{ tCadastrarTriagemDocumentoObjeto_CadastrarTriagemDocumentoObjeto }

function tCadastrarTriagemDocumentoObjeto_CadastrarTriagemDocumentoObjeto.GetAsString: string;
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

class function tCadastrarTriagemDocumentoObjeto_CadastrarTriagemDocumentoObjeto._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastrarTriagemDocumentoObjeto_CadastrarTriagemDocumentoObjeto.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tCadastrarTriagemDocumentoObjeto_CadastrarTriagemDocumentoObjeto.CreateFromXmlString(s: string): tCadastrarTriagemDocumentoObjeto_CadastrarTriagemDocumentoObjeto;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastrarTriagemDocumentoObjeto_CadastrarTriagemDocumentoObjeto.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCadastrarTriagemDocumentoObjeto_CadastrarTriagemDocumentoObjeto.Create(aRoot:tJanXMLNode2);
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
    if (sn = snCadastrarTriagemDocumentoObjeto_CadastrarTriagemDocumentoObjeto_triagemDocumentoObjeto) then
      triagemDocumentoObjeto :=  tBaseTriagemDocumentoObjetoRequest.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tCadastrarTriagemDocumentoObjeto_CadastrarTriagemDocumentoObjeto.Destroy;
begin
  if assigned(FtriagemDocumentoObjeto) then  FtriagemDocumentoObjeto.free;
  inherited;
end; // destructor ...

procedure tCadastrarTriagemDocumentoObjeto_CadastrarTriagemDocumentoObjeto.SettriagemDocumentoObjeto(value:tBaseTriagemDocumentoObjetoRequest);
begin
  FtriagemDocumentoObjeto := value;
  FtriagemDocumentoObjeto_IsSet_ := true;
end;

procedure tCadastrarTriagemDocumentoObjeto_CadastrarTriagemDocumentoObjeto.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastrarTriagemDocumentoObjeto')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if triagemDocumentoObjeto_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastrarTriagemDocumentoObjeto_CadastrarTriagemDocumentoObjeto_triagemDocumentoObjeto));
    FtriagemDocumentoObjeto.save( xn );
    //xn.text := FtriagemDocumentoObjeto;
  end;
end; // procedure save

{ tCadastrarTriagemDocumentoObjeto }

function tCadastrarTriagemDocumentoObjeto.GetAsString: string;
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

class function tCadastrarTriagemDocumentoObjeto._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastrarTriagemDocumentoObjeto.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tCadastrarTriagemDocumentoObjeto.CreateFromXmlString(s: string): tCadastrarTriagemDocumentoObjeto;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastrarTriagemDocumentoObjeto.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCadastrarTriagemDocumentoObjeto.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tCadastrarTriagemDocumentoObjeto.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCadastrarTriagemDocumentoObjeto.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastrarTriagemDocumentoObjeto')
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

{ tEmitirContratoOperacaoTransporteResponse_EmitirContratoOperacaoTransporteResponse }

function tEmitirContratoOperacaoTransporteResponse_EmitirContratoOperacaoTransporteResponse.GetAsString: string;
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

class function tEmitirContratoOperacaoTransporteResponse_EmitirContratoOperacaoTransporteResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tEmitirContratoOperacaoTransporteResponse_EmitirContratoOperacaoTransporteResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tEmitirContratoOperacaoTransporteResponse_EmitirContratoOperacaoTransporteResponse.CreateFromXmlString(s: string): tEmitirContratoOperacaoTransporteResponse_EmitirContratoOperacaoTransporteResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tEmitirContratoOperacaoTransporteResponse_EmitirContratoOperacaoTransporteResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tEmitirContratoOperacaoTransporteResponse_EmitirContratoOperacaoTransporteResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snEmitirContratoOperacaoTransporteResponse_EmitirContratoOperacaoTransporteResponse_EmitirContratoOperacaoTransporteResult) then
      FEmitirContratoOperacaoTransporteResult := tEmitirContratoOperacaoTransporteResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tEmitirContratoOperacaoTransporteResponse_EmitirContratoOperacaoTransporteResponse.Destroy;
begin
  if assigned(FEmitirContratoOperacaoTransporteResult) then  FEmitirContratoOperacaoTransporteResult.free;
  inherited;
end; // destructor ...

procedure tEmitirContratoOperacaoTransporteResponse_EmitirContratoOperacaoTransporteResponse.SetEmitirContratoOperacaoTransporteResult(value:tEmitirContratoOperacaoTransporteResponse);
begin
  FEmitirContratoOperacaoTransporteResult := value;
  FEmitirContratoOperacaoTransporteResult_IsSet_ := true;
end;

procedure tEmitirContratoOperacaoTransporteResponse_EmitirContratoOperacaoTransporteResponse.Save(aNode:tJanXMLNode2);
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

  if Assigned(FEmitirContratoOperacaoTransporteResult) then
  begin
    xn := aNode.addChildByName(snEmitirContratoOperacaoTransporteResponse_EmitirContratoOperacaoTransporteResponse_EmitirContratoOperacaoTransporteResult);
    FEmitirContratoOperacaoTransporteResult.Save(xn);
  end;
end; // procedure save

{ tEmitirContratoOperacaoTransporte_EmitirContratoOperacaoTransporte }

function tEmitirContratoOperacaoTransporte_EmitirContratoOperacaoTransporte.GetAsString: string;
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

class function tEmitirContratoOperacaoTransporte_EmitirContratoOperacaoTransporte._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tEmitirContratoOperacaoTransporte_EmitirContratoOperacaoTransporte.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tEmitirContratoOperacaoTransporte_EmitirContratoOperacaoTransporte.CreateFromXmlString(s: string): tEmitirContratoOperacaoTransporte_EmitirContratoOperacaoTransporte;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tEmitirContratoOperacaoTransporte_EmitirContratoOperacaoTransporte.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tEmitirContratoOperacaoTransporte_EmitirContratoOperacaoTransporte.Create(aRoot:tJanXMLNode2);
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
    if (sn = snEmitirContratoOperacaoTransporte_EmitirContratoOperacaoTransporte_idOperacaoTransporte) then
      idOperacaoTransporte := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tEmitirContratoOperacaoTransporte_EmitirContratoOperacaoTransporte.Destroy;
begin
  inherited;
end; // destructor ...

procedure tEmitirContratoOperacaoTransporte_EmitirContratoOperacaoTransporte.SetidOperacaoTransporte(value:integer);
begin
  FidOperacaoTransporte := value;
  FidOperacaoTransporte_IsSet_ := true;
end;

procedure tEmitirContratoOperacaoTransporte_EmitirContratoOperacaoTransporte.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'EmitirContratoOperacaoTransporte')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if idOperacaoTransporte_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEmitirContratoOperacaoTransporte_EmitirContratoOperacaoTransporte_idOperacaoTransporte));
    xn.text := IntToStr(FidOperacaoTransporte);
  end;
end; // procedure save

{ tEmitirContratoOperacaoTransporte }

function tEmitirContratoOperacaoTransporte.GetAsString: string;
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

class function tEmitirContratoOperacaoTransporte._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tEmitirContratoOperacaoTransporte.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tEmitirContratoOperacaoTransporte.CreateFromXmlString(s: string): tEmitirContratoOperacaoTransporte;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tEmitirContratoOperacaoTransporte.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tEmitirContratoOperacaoTransporte.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tEmitirContratoOperacaoTransporte.Destroy;
begin
  inherited;
end; // destructor ...

procedure tEmitirContratoOperacaoTransporte.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'EmitirContratoOperacaoTransporte')
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

{ tEmitirDeclaracaoOperacaoTransporteResponse_EmitirDeclaracaoOperacaoTransporteResponse }

function tEmitirDeclaracaoOperacaoTransporteResponse_EmitirDeclaracaoOperacaoTransporteResponse.GetAsString: string;
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

class function tEmitirDeclaracaoOperacaoTransporteResponse_EmitirDeclaracaoOperacaoTransporteResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tEmitirDeclaracaoOperacaoTransporteResponse_EmitirDeclaracaoOperacaoTransporteResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tEmitirDeclaracaoOperacaoTransporteResponse_EmitirDeclaracaoOperacaoTransporteResponse.CreateFromXmlString(s: string): tEmitirDeclaracaoOperacaoTransporteResponse_EmitirDeclaracaoOperacaoTransporteResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tEmitirDeclaracaoOperacaoTransporteResponse_EmitirDeclaracaoOperacaoTransporteResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tEmitirDeclaracaoOperacaoTransporteResponse_EmitirDeclaracaoOperacaoTransporteResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snEmitirDeclaracaoOperacaoTransporteResponse_EmitirDeclaracaoOperacaoTransporteResponse_EmitirDeclaracaoOperacaoTransporteResult) then
      FEmitirDeclaracaoOperacaoTransporteResult := tEmitirDeclaracaoOperacaoTransporteResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tEmitirDeclaracaoOperacaoTransporteResponse_EmitirDeclaracaoOperacaoTransporteResponse.Destroy;
begin
  if assigned(FEmitirDeclaracaoOperacaoTransporteResult) then  FEmitirDeclaracaoOperacaoTransporteResult.free;
  inherited;
end; // destructor ...

procedure tEmitirDeclaracaoOperacaoTransporteResponse_EmitirDeclaracaoOperacaoTransporteResponse.SetEmitirDeclaracaoOperacaoTransporteResult(value:tEmitirDeclaracaoOperacaoTransporteResponse);
begin
  FEmitirDeclaracaoOperacaoTransporteResult := value;
  FEmitirDeclaracaoOperacaoTransporteResult_IsSet_ := true;
end;

procedure tEmitirDeclaracaoOperacaoTransporteResponse_EmitirDeclaracaoOperacaoTransporteResponse.Save(aNode:tJanXMLNode2);
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

  if Assigned(FEmitirDeclaracaoOperacaoTransporteResult) then
  begin
    xn := aNode.addChildByName(snEmitirDeclaracaoOperacaoTransporteResponse_EmitirDeclaracaoOperacaoTransporteResponse_EmitirDeclaracaoOperacaoTransporteResult);
    FEmitirDeclaracaoOperacaoTransporteResult.Save(xn);
  end;
end; // procedure save

{ tEmitirDeclaracaoOperacaoTransporte_EmitirDeclaracaoOperacaoTransporte }

function tEmitirDeclaracaoOperacaoTransporte_EmitirDeclaracaoOperacaoTransporte.GetAsString: string;
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

class function tEmitirDeclaracaoOperacaoTransporte_EmitirDeclaracaoOperacaoTransporte._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tEmitirDeclaracaoOperacaoTransporte_EmitirDeclaracaoOperacaoTransporte.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tEmitirDeclaracaoOperacaoTransporte_EmitirDeclaracaoOperacaoTransporte.CreateFromXmlString(s: string): tEmitirDeclaracaoOperacaoTransporte_EmitirDeclaracaoOperacaoTransporte;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tEmitirDeclaracaoOperacaoTransporte_EmitirDeclaracaoOperacaoTransporte.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tEmitirDeclaracaoOperacaoTransporte_EmitirDeclaracaoOperacaoTransporte.Create(aRoot:tJanXMLNode2);
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
    if (sn = snEmitirDeclaracaoOperacaoTransporte_EmitirDeclaracaoOperacaoTransporte_idOperacaoTransporte) then
      idOperacaoTransporte := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tEmitirDeclaracaoOperacaoTransporte_EmitirDeclaracaoOperacaoTransporte.Destroy;
begin
  inherited;
end; // destructor ...

procedure tEmitirDeclaracaoOperacaoTransporte_EmitirDeclaracaoOperacaoTransporte.SetidOperacaoTransporte(value:integer);
begin
  FidOperacaoTransporte := value;
  FidOperacaoTransporte_IsSet_ := true;
end;

procedure tEmitirDeclaracaoOperacaoTransporte_EmitirDeclaracaoOperacaoTransporte.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'EmitirDeclaracaoOperacaoTransporte')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if idOperacaoTransporte_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEmitirDeclaracaoOperacaoTransporte_EmitirDeclaracaoOperacaoTransporte_idOperacaoTransporte));
    xn.text := IntToStr(FidOperacaoTransporte);
  end;
end; // procedure save

{ tEmitirDeclaracaoOperacaoTransporte }

function tEmitirDeclaracaoOperacaoTransporte.GetAsString: string;
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

class function tEmitirDeclaracaoOperacaoTransporte._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tEmitirDeclaracaoOperacaoTransporte.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tEmitirDeclaracaoOperacaoTransporte.CreateFromXmlString(s: string): tEmitirDeclaracaoOperacaoTransporte;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tEmitirDeclaracaoOperacaoTransporte.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tEmitirDeclaracaoOperacaoTransporte.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tEmitirDeclaracaoOperacaoTransporte.Destroy;
begin
  inherited;
end; // destructor ...

procedure tEmitirDeclaracaoOperacaoTransporte.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'EmitirDeclaracaoOperacaoTransporte')
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

{ tEmitirReciboValePedagioViaFacilResponse_EmitirReciboValePedagioViaFacilResponse }

function tEmitirReciboValePedagioViaFacilResponse_EmitirReciboValePedagioViaFacilResponse.GetAsString: string;
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

class function tEmitirReciboValePedagioViaFacilResponse_EmitirReciboValePedagioViaFacilResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tEmitirReciboValePedagioViaFacilResponse_EmitirReciboValePedagioViaFacilResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tEmitirReciboValePedagioViaFacilResponse_EmitirReciboValePedagioViaFacilResponse.CreateFromXmlString(s: string): tEmitirReciboValePedagioViaFacilResponse_EmitirReciboValePedagioViaFacilResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tEmitirReciboValePedagioViaFacilResponse_EmitirReciboValePedagioViaFacilResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tEmitirReciboValePedagioViaFacilResponse_EmitirReciboValePedagioViaFacilResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snEmitirReciboValePedagioViaFacilResponse_EmitirReciboValePedagioViaFacilResponse_EmitirReciboValePedagioViaFacilResult) then
      FEmitirReciboValePedagioViaFacilResult := tEmitirReciboValePedagioViaFacilResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tEmitirReciboValePedagioViaFacilResponse_EmitirReciboValePedagioViaFacilResponse.Destroy;
begin
  if assigned(FEmitirReciboValePedagioViaFacilResult) then  FEmitirReciboValePedagioViaFacilResult.free;
  inherited;
end; // destructor ...

procedure tEmitirReciboValePedagioViaFacilResponse_EmitirReciboValePedagioViaFacilResponse.SetEmitirReciboValePedagioViaFacilResult(value:tEmitirReciboValePedagioViaFacilResponse);
begin
  FEmitirReciboValePedagioViaFacilResult := value;
  FEmitirReciboValePedagioViaFacilResult_IsSet_ := true;
end;

procedure tEmitirReciboValePedagioViaFacilResponse_EmitirReciboValePedagioViaFacilResponse.Save(aNode:tJanXMLNode2);
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

  if Assigned(FEmitirReciboValePedagioViaFacilResult) then
  begin
    xn := aNode.addChildByName(snEmitirReciboValePedagioViaFacilResponse_EmitirReciboValePedagioViaFacilResponse_EmitirReciboValePedagioViaFacilResult);
    FEmitirReciboValePedagioViaFacilResult.Save(xn);
  end;
end; // procedure save

{ tEmitirReciboValePedagioViaFacil_EmitirReciboValePedagioViaFacil }

function tEmitirReciboValePedagioViaFacil_EmitirReciboValePedagioViaFacil.GetAsString: string;
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

class function tEmitirReciboValePedagioViaFacil_EmitirReciboValePedagioViaFacil._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tEmitirReciboValePedagioViaFacil_EmitirReciboValePedagioViaFacil.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tEmitirReciboValePedagioViaFacil_EmitirReciboValePedagioViaFacil.CreateFromXmlString(s: string): tEmitirReciboValePedagioViaFacil_EmitirReciboValePedagioViaFacil;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tEmitirReciboValePedagioViaFacil_EmitirReciboValePedagioViaFacil.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tEmitirReciboValePedagioViaFacil_EmitirReciboValePedagioViaFacil.Create(aRoot:tJanXMLNode2);
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
    if (sn = snEmitirReciboValePedagioViaFacil_EmitirReciboValePedagioViaFacil_idOperacaoTransporte) then
      idOperacaoTransporte := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tEmitirReciboValePedagioViaFacil_EmitirReciboValePedagioViaFacil.Destroy;
begin
  inherited;
end; // destructor ...

procedure tEmitirReciboValePedagioViaFacil_EmitirReciboValePedagioViaFacil.SetidOperacaoTransporte(value:integer);
begin
  FidOperacaoTransporte := value;
  FidOperacaoTransporte_IsSet_ := true;
end;

procedure tEmitirReciboValePedagioViaFacil_EmitirReciboValePedagioViaFacil.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'EmitirReciboValePedagioViaFacil')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if idOperacaoTransporte_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEmitirReciboValePedagioViaFacil_EmitirReciboValePedagioViaFacil_idOperacaoTransporte));
    xn.text := IntToStr(FidOperacaoTransporte);
  end;
end; // procedure save

{ tEmitirReciboValePedagioViaFacil }

function tEmitirReciboValePedagioViaFacil.GetAsString: string;
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

class function tEmitirReciboValePedagioViaFacil._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tEmitirReciboValePedagioViaFacil.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tEmitirReciboValePedagioViaFacil.CreateFromXmlString(s: string): tEmitirReciboValePedagioViaFacil;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tEmitirReciboValePedagioViaFacil.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tEmitirReciboValePedagioViaFacil.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tEmitirReciboValePedagioViaFacil.Destroy;
begin
  inherited;
end; // destructor ...

procedure tEmitirReciboValePedagioViaFacil.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'EmitirReciboValePedagioViaFacil')
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

{ tEmitirReciboValePedagioVectioResponse_EmitirReciboValePedagioVectioResponse }

function tEmitirReciboValePedagioVectioResponse_EmitirReciboValePedagioVectioResponse.GetAsString: string;
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

class function tEmitirReciboValePedagioVectioResponse_EmitirReciboValePedagioVectioResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tEmitirReciboValePedagioVectioResponse_EmitirReciboValePedagioVectioResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tEmitirReciboValePedagioVectioResponse_EmitirReciboValePedagioVectioResponse.CreateFromXmlString(s: string): tEmitirReciboValePedagioVectioResponse_EmitirReciboValePedagioVectioResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tEmitirReciboValePedagioVectioResponse_EmitirReciboValePedagioVectioResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tEmitirReciboValePedagioVectioResponse_EmitirReciboValePedagioVectioResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snEmitirReciboValePedagioVectioResponse_EmitirReciboValePedagioVectioResponse_EmitirReciboValePedagioVectioResult) then
      FEmitirReciboValePedagioVectioResult := tEmitirReciboValePedagioVectioResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tEmitirReciboValePedagioVectioResponse_EmitirReciboValePedagioVectioResponse.Destroy;
begin
  if assigned(FEmitirReciboValePedagioVectioResult) then  FEmitirReciboValePedagioVectioResult.free;
  inherited;
end; // destructor ...

procedure tEmitirReciboValePedagioVectioResponse_EmitirReciboValePedagioVectioResponse.SetEmitirReciboValePedagioVectioResult(value:tEmitirReciboValePedagioVectioResponse);
begin
  FEmitirReciboValePedagioVectioResult := value;
  FEmitirReciboValePedagioVectioResult_IsSet_ := true;
end;

procedure tEmitirReciboValePedagioVectioResponse_EmitirReciboValePedagioVectioResponse.Save(aNode:tJanXMLNode2);
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

  if Assigned(FEmitirReciboValePedagioVectioResult) then
  begin
    xn := aNode.addChildByName(snEmitirReciboValePedagioVectioResponse_EmitirReciboValePedagioVectioResponse_EmitirReciboValePedagioVectioResult);
    FEmitirReciboValePedagioVectioResult.Save(xn);
  end;
end; // procedure save

{ tEmitirReciboValePedagioVectio_EmitirReciboValePedagioVectio }

function tEmitirReciboValePedagioVectio_EmitirReciboValePedagioVectio.GetAsString: string;
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

class function tEmitirReciboValePedagioVectio_EmitirReciboValePedagioVectio._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tEmitirReciboValePedagioVectio_EmitirReciboValePedagioVectio.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tEmitirReciboValePedagioVectio_EmitirReciboValePedagioVectio.CreateFromXmlString(s: string): tEmitirReciboValePedagioVectio_EmitirReciboValePedagioVectio;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tEmitirReciboValePedagioVectio_EmitirReciboValePedagioVectio.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tEmitirReciboValePedagioVectio_EmitirReciboValePedagioVectio.Create(aRoot:tJanXMLNode2);
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
    if (sn = snEmitirReciboValePedagioVectio_EmitirReciboValePedagioVectio_idOperacaoTransporte) then
      idOperacaoTransporte := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tEmitirReciboValePedagioVectio_EmitirReciboValePedagioVectio.Destroy;
begin
  inherited;
end; // destructor ...

procedure tEmitirReciboValePedagioVectio_EmitirReciboValePedagioVectio.SetidOperacaoTransporte(value:integer);
begin
  FidOperacaoTransporte := value;
  FidOperacaoTransporte_IsSet_ := true;
end;

procedure tEmitirReciboValePedagioVectio_EmitirReciboValePedagioVectio.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'EmitirReciboValePedagioVectio')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if idOperacaoTransporte_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEmitirReciboValePedagioVectio_EmitirReciboValePedagioVectio_idOperacaoTransporte));
    xn.text := IntToStr(FidOperacaoTransporte);
  end;
end; // procedure save

{ tEmitirReciboValePedagioVectio }

function tEmitirReciboValePedagioVectio.GetAsString: string;
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

class function tEmitirReciboValePedagioVectio._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tEmitirReciboValePedagioVectio.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tEmitirReciboValePedagioVectio.CreateFromXmlString(s: string): tEmitirReciboValePedagioVectio;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tEmitirReciboValePedagioVectio.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tEmitirReciboValePedagioVectio.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tEmitirReciboValePedagioVectio.Destroy;
begin
  inherited;
end; // destructor ...

procedure tEmitirReciboValePedagioVectio.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'EmitirReciboValePedagioVectio')
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

{ tBuscarCobrancasGestoraResponse_BuscarCobrancasGestoraResponse }

function tBuscarCobrancasGestoraResponse_BuscarCobrancasGestoraResponse.GetAsString: string;
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

class function tBuscarCobrancasGestoraResponse_BuscarCobrancasGestoraResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarCobrancasGestoraResponse_BuscarCobrancasGestoraResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tBuscarCobrancasGestoraResponse_BuscarCobrancasGestoraResponse.CreateFromXmlString(s: string): tBuscarCobrancasGestoraResponse_BuscarCobrancasGestoraResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarCobrancasGestoraResponse_BuscarCobrancasGestoraResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarCobrancasGestoraResponse_BuscarCobrancasGestoraResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snBuscarCobrancasGestoraResponse_BuscarCobrancasGestoraResponse_BuscarCobrancasGestoraResult) then
      BuscarCobrancasGestoraResult :=  tBuscarCobrancaGestoraResponse.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tBuscarCobrancasGestoraResponse_BuscarCobrancasGestoraResponse.Destroy;
begin
  if assigned(FBuscarCobrancasGestoraResult) then  FBuscarCobrancasGestoraResult.free;
  inherited;
end; // destructor ...

procedure tBuscarCobrancasGestoraResponse_BuscarCobrancasGestoraResponse.SetBuscarCobrancasGestoraResult(value:tBuscarCobrancaGestoraResponse);
begin
  FBuscarCobrancasGestoraResult := value;
  FBuscarCobrancasGestoraResult_IsSet_ := true;
end;

procedure tBuscarCobrancasGestoraResponse_BuscarCobrancasGestoraResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscarCobrancasGestoraResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if BuscarCobrancasGestoraResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarCobrancasGestoraResponse_BuscarCobrancasGestoraResponse_BuscarCobrancasGestoraResult));
    FBuscarCobrancasGestoraResult.save( xn );
    //xn.text := FBuscarCobrancasGestoraResult;
  end;
end; // procedure save

{ tBuscarCobrancasGestoraResponse }

function tBuscarCobrancasGestoraResponse.GetAsString: string;
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

class function tBuscarCobrancasGestoraResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarCobrancasGestoraResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tBuscarCobrancasGestoraResponse.CreateFromXmlString(s: string): tBuscarCobrancasGestoraResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarCobrancasGestoraResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarCobrancasGestoraResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tBuscarCobrancasGestoraResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tBuscarCobrancasGestoraResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscarCobrancasGestoraResponse')
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

{ tBuscarCobrancasGestora_BuscarCobrancasGestora }

function tBuscarCobrancasGestora_BuscarCobrancasGestora.GetAsString: string;
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

class function tBuscarCobrancasGestora_BuscarCobrancasGestora._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarCobrancasGestora_BuscarCobrancasGestora.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tBuscarCobrancasGestora_BuscarCobrancasGestora.CreateFromXmlString(s: string): tBuscarCobrancasGestora_BuscarCobrancasGestora;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarCobrancasGestora_BuscarCobrancasGestora.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarCobrancasGestora_BuscarCobrancasGestora.Create(aRoot:tJanXMLNode2);
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
    if (sn = snBuscarCobrancasGestora_BuscarCobrancasGestora_origemCobranca) then
      origemCobranca := StrToIntDef(xn.text, 0)
    else if (sn = snBuscarCobrancasGestora_BuscarCobrancasGestora_tipoCobranca) then
      tipoCobranca := StrToIntDef(xn.text, 0)
    else if (sn = snBuscarCobrancasGestora_BuscarCobrancasGestora_dataHoraEmissao) then
      dataHoraEmissao := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tBuscarCobrancasGestora_BuscarCobrancasGestora.Destroy;
begin
  inherited;
end; // destructor ...

procedure tBuscarCobrancasGestora_BuscarCobrancasGestora.SetorigemCobranca(value:integer);
begin
  ForigemCobranca := value;
  ForigemCobranca_IsSet_ := true;
end;

procedure tBuscarCobrancasGestora_BuscarCobrancasGestora.SettipoCobranca(value:integer);
begin
  FtipoCobranca := value;
  FtipoCobranca_IsSet_ := true;
end;

procedure tBuscarCobrancasGestora_BuscarCobrancasGestora.SetdataHoraEmissao(value:tDateTime);
begin
  FdataHoraEmissao := value;
  FdataHoraEmissao_IsSet_ := true;
end;

procedure tBuscarCobrancasGestora_BuscarCobrancasGestora.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscarCobrancasGestora')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if origemCobranca_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarCobrancasGestora_BuscarCobrancasGestora_origemCobranca));
    xn.text := IntToStr(ForigemCobranca);
  end;
  if tipoCobranca_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarCobrancasGestora_BuscarCobrancasGestora_tipoCobranca));
    xn.text := IntToStr(FtipoCobranca);
  end;
  if dataHoraEmissao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarCobrancasGestora_BuscarCobrancasGestora_dataHoraEmissao));
    xn.text := DateTimeToXMLDateTime(FdataHoraEmissao);
  end;
end; // procedure save

{ tBuscarCobrancasGestora }

function tBuscarCobrancasGestora.GetAsString: string;
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

class function tBuscarCobrancasGestora._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarCobrancasGestora.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tBuscarCobrancasGestora.CreateFromXmlString(s: string): tBuscarCobrancasGestora;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarCobrancasGestora.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarCobrancasGestora.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tBuscarCobrancasGestora.Destroy;
begin
  inherited;
end; // destructor ...

procedure tBuscarCobrancasGestora.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscarCobrancasGestora')
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

{ tConsultarExtratoContaPrePagaVectioResponse_ConsultarExtratoContaPrePagaVectioResponse }

function tConsultarExtratoContaPrePagaVectioResponse_ConsultarExtratoContaPrePagaVectioResponse.GetAsString: string;
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

class function tConsultarExtratoContaPrePagaVectioResponse_ConsultarExtratoContaPrePagaVectioResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tConsultarExtratoContaPrePagaVectioResponse_ConsultarExtratoContaPrePagaVectioResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tConsultarExtratoContaPrePagaVectioResponse_ConsultarExtratoContaPrePagaVectioResponse.CreateFromXmlString(s: string): tConsultarExtratoContaPrePagaVectioResponse_ConsultarExtratoContaPrePagaVectioResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tConsultarExtratoContaPrePagaVectioResponse_ConsultarExtratoContaPrePagaVectioResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tConsultarExtratoContaPrePagaVectioResponse_ConsultarExtratoContaPrePagaVectioResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snConsultarExtratoContaPrePagaVectioResponse_ConsultarExtratoContaPrePagaVectioResponse_ConsultarExtratoContaPrePagaVectioResult) then
      ConsultarExtratoContaPrePagaVectioResult :=  tExtratoResponse.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tConsultarExtratoContaPrePagaVectioResponse_ConsultarExtratoContaPrePagaVectioResponse.Destroy;
begin
  if assigned(FConsultarExtratoContaPrePagaVectioResult) then  FConsultarExtratoContaPrePagaVectioResult.free;
  inherited;
end; // destructor ...

procedure tConsultarExtratoContaPrePagaVectioResponse_ConsultarExtratoContaPrePagaVectioResponse.SetConsultarExtratoContaPrePagaVectioResult(value:tExtratoResponse);
begin
  FConsultarExtratoContaPrePagaVectioResult := value;
  FConsultarExtratoContaPrePagaVectioResult_IsSet_ := true;
end;

procedure tConsultarExtratoContaPrePagaVectioResponse_ConsultarExtratoContaPrePagaVectioResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ConsultarExtratoContaPrePagaVectioResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if ConsultarExtratoContaPrePagaVectioResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConsultarExtratoContaPrePagaVectioResponse_ConsultarExtratoContaPrePagaVectioResponse_ConsultarExtratoContaPrePagaVectioResult));
    FConsultarExtratoContaPrePagaVectioResult.save( xn );
    //xn.text := FConsultarExtratoContaPrePagaVectioResult;
  end;
end; // procedure save

{ tConsultarExtratoContaPrePagaVectioResponse }

function tConsultarExtratoContaPrePagaVectioResponse.GetAsString: string;
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

class function tConsultarExtratoContaPrePagaVectioResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tConsultarExtratoContaPrePagaVectioResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tConsultarExtratoContaPrePagaVectioResponse.CreateFromXmlString(s: string): tConsultarExtratoContaPrePagaVectioResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tConsultarExtratoContaPrePagaVectioResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tConsultarExtratoContaPrePagaVectioResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tConsultarExtratoContaPrePagaVectioResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tConsultarExtratoContaPrePagaVectioResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ConsultarExtratoContaPrePagaVectioResponse')
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

{ tConsultarExtratoContaPrePagaVectio_ConsultarExtratoContaPrePagaVectio }

function tConsultarExtratoContaPrePagaVectio_ConsultarExtratoContaPrePagaVectio.GetAsString: string;
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

class function tConsultarExtratoContaPrePagaVectio_ConsultarExtratoContaPrePagaVectio._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tConsultarExtratoContaPrePagaVectio_ConsultarExtratoContaPrePagaVectio.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tConsultarExtratoContaPrePagaVectio_ConsultarExtratoContaPrePagaVectio.CreateFromXmlString(s: string): tConsultarExtratoContaPrePagaVectio_ConsultarExtratoContaPrePagaVectio;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tConsultarExtratoContaPrePagaVectio_ConsultarExtratoContaPrePagaVectio.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tConsultarExtratoContaPrePagaVectio_ConsultarExtratoContaPrePagaVectio.Create(aRoot:tJanXMLNode2);
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
    if (sn = snConsultarExtratoContaPrePagaVectio_ConsultarExtratoContaPrePagaVectio_dataInicioBusca) then
      dataInicioBusca := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snConsultarExtratoContaPrePagaVectio_ConsultarExtratoContaPrePagaVectio_dataFimBusca) then
      dataFimBusca := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tConsultarExtratoContaPrePagaVectio_ConsultarExtratoContaPrePagaVectio.Destroy;
begin
  inherited;
end; // destructor ...

procedure tConsultarExtratoContaPrePagaVectio_ConsultarExtratoContaPrePagaVectio.SetdataInicioBusca(value:tDateTime);
begin
  FdataInicioBusca := value;
  FdataInicioBusca_IsSet_ := true;
end;

procedure tConsultarExtratoContaPrePagaVectio_ConsultarExtratoContaPrePagaVectio.SetdataFimBusca(value:tDateTime);
begin
  FdataFimBusca := value;
  FdataFimBusca_IsSet_ := true;
end;

procedure tConsultarExtratoContaPrePagaVectio_ConsultarExtratoContaPrePagaVectio.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ConsultarExtratoContaPrePagaVectio')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if dataInicioBusca_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConsultarExtratoContaPrePagaVectio_ConsultarExtratoContaPrePagaVectio_dataInicioBusca));
    xn.text := DateTimeToXMLDateTime(FdataInicioBusca);
  end;
  if dataFimBusca_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConsultarExtratoContaPrePagaVectio_ConsultarExtratoContaPrePagaVectio_dataFimBusca));
    xn.text := DateTimeToXMLDateTime(FdataFimBusca);
  end;
end; // procedure save

{ tConsultarExtratoContaPrePagaVectio }

function tConsultarExtratoContaPrePagaVectio.GetAsString: string;
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

class function tConsultarExtratoContaPrePagaVectio._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tConsultarExtratoContaPrePagaVectio.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tConsultarExtratoContaPrePagaVectio.CreateFromXmlString(s: string): tConsultarExtratoContaPrePagaVectio;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tConsultarExtratoContaPrePagaVectio.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tConsultarExtratoContaPrePagaVectio.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tConsultarExtratoContaPrePagaVectio.Destroy;
begin
  inherited;
end; // destructor ...

procedure tConsultarExtratoContaPrePagaVectio.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ConsultarExtratoContaPrePagaVectio')
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

{ tConsultarSaldoContaPrePagaVectioResponse_ConsultarSaldoContaPrePagaVectioResponse }

function tConsultarSaldoContaPrePagaVectioResponse_ConsultarSaldoContaPrePagaVectioResponse.GetAsString: string;
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

class function tConsultarSaldoContaPrePagaVectioResponse_ConsultarSaldoContaPrePagaVectioResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tConsultarSaldoContaPrePagaVectioResponse_ConsultarSaldoContaPrePagaVectioResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tConsultarSaldoContaPrePagaVectioResponse_ConsultarSaldoContaPrePagaVectioResponse.CreateFromXmlString(s: string): tConsultarSaldoContaPrePagaVectioResponse_ConsultarSaldoContaPrePagaVectioResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tConsultarSaldoContaPrePagaVectioResponse_ConsultarSaldoContaPrePagaVectioResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tConsultarSaldoContaPrePagaVectioResponse_ConsultarSaldoContaPrePagaVectioResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snConsultarSaldoContaPrePagaVectioResponse_ConsultarSaldoContaPrePagaVectioResponse_ConsultarSaldoContaPrePagaVectioResult) then
      ConsultarSaldoContaPrePagaVectioResult := DefStrToFloat(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tConsultarSaldoContaPrePagaVectioResponse_ConsultarSaldoContaPrePagaVectioResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tConsultarSaldoContaPrePagaVectioResponse_ConsultarSaldoContaPrePagaVectioResponse.SetConsultarSaldoContaPrePagaVectioResult(value:extended);
begin
  FConsultarSaldoContaPrePagaVectioResult := value;
  FConsultarSaldoContaPrePagaVectioResult_IsSet_ := true;
end;

procedure tConsultarSaldoContaPrePagaVectioResponse_ConsultarSaldoContaPrePagaVectioResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ConsultarSaldoContaPrePagaVectioResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if ConsultarSaldoContaPrePagaVectioResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConsultarSaldoContaPrePagaVectioResponse_ConsultarSaldoContaPrePagaVectioResponse_ConsultarSaldoContaPrePagaVectioResult));
    xn.text := MyFloatToStr(FConsultarSaldoContaPrePagaVectioResult);
  end;
end; // procedure save

{ tConsultarSaldoContaPrePagaVectioResponse }

function tConsultarSaldoContaPrePagaVectioResponse.GetAsString: string;
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

class function tConsultarSaldoContaPrePagaVectioResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tConsultarSaldoContaPrePagaVectioResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tConsultarSaldoContaPrePagaVectioResponse.CreateFromXmlString(s: string): tConsultarSaldoContaPrePagaVectioResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tConsultarSaldoContaPrePagaVectioResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tConsultarSaldoContaPrePagaVectioResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tConsultarSaldoContaPrePagaVectioResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tConsultarSaldoContaPrePagaVectioResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ConsultarSaldoContaPrePagaVectioResponse')
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

{ tConsultarSaldoContaPrePagaVectio_ConsultarSaldoContaPrePagaVectio }

function tConsultarSaldoContaPrePagaVectio_ConsultarSaldoContaPrePagaVectio.GetAsString: string;
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

class function tConsultarSaldoContaPrePagaVectio_ConsultarSaldoContaPrePagaVectio._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tConsultarSaldoContaPrePagaVectio_ConsultarSaldoContaPrePagaVectio.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tConsultarSaldoContaPrePagaVectio_ConsultarSaldoContaPrePagaVectio.CreateFromXmlString(s: string): tConsultarSaldoContaPrePagaVectio_ConsultarSaldoContaPrePagaVectio;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tConsultarSaldoContaPrePagaVectio_ConsultarSaldoContaPrePagaVectio.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tConsultarSaldoContaPrePagaVectio_ConsultarSaldoContaPrePagaVectio.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tConsultarSaldoContaPrePagaVectio_ConsultarSaldoContaPrePagaVectio.Destroy;
begin
  inherited;
end; // destructor ...

procedure tConsultarSaldoContaPrePagaVectio_ConsultarSaldoContaPrePagaVectio.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ConsultarSaldoContaPrePagaVectio')
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

{ tConsultarSaldoContaPrePagaVectio }

function tConsultarSaldoContaPrePagaVectio.GetAsString: string;
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

class function tConsultarSaldoContaPrePagaVectio._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tConsultarSaldoContaPrePagaVectio.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tConsultarSaldoContaPrePagaVectio.CreateFromXmlString(s: string): tConsultarSaldoContaPrePagaVectio;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tConsultarSaldoContaPrePagaVectio.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tConsultarSaldoContaPrePagaVectio.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tConsultarSaldoContaPrePagaVectio.Destroy;
begin
  inherited;
end; // destructor ...

procedure tConsultarSaldoContaPrePagaVectio.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ConsultarSaldoContaPrePagaVectio')
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

{ tBuscarParametrosComerciaisResponse_BuscarParametrosComerciaisResponse }

function tBuscarParametrosComerciaisResponse_BuscarParametrosComerciaisResponse.GetAsString: string;
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

class function tBuscarParametrosComerciaisResponse_BuscarParametrosComerciaisResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarParametrosComerciaisResponse_BuscarParametrosComerciaisResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tBuscarParametrosComerciaisResponse_BuscarParametrosComerciaisResponse.CreateFromXmlString(s: string): tBuscarParametrosComerciaisResponse_BuscarParametrosComerciaisResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarParametrosComerciaisResponse_BuscarParametrosComerciaisResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarParametrosComerciaisResponse_BuscarParametrosComerciaisResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snBuscarParametrosComerciaisResponse_BuscarParametrosComerciaisResponse_BuscarParametrosComerciaisResult) then
      FBuscarParametrosComerciaisResult := tBuscarParametrosComerciaisResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tBuscarParametrosComerciaisResponse_BuscarParametrosComerciaisResponse.Destroy;
begin
  if assigned(FBuscarParametrosComerciaisResult) then  FBuscarParametrosComerciaisResult.free;
  inherited;
end; // destructor ...

procedure tBuscarParametrosComerciaisResponse_BuscarParametrosComerciaisResponse.SetBuscarParametrosComerciaisResult(value:tBuscarParametrosComerciaisResponse);
begin
  FBuscarParametrosComerciaisResult := value;
  FBuscarParametrosComerciaisResult_IsSet_ := true;
end;

procedure tBuscarParametrosComerciaisResponse_BuscarParametrosComerciaisResponse.Save(aNode:tJanXMLNode2);
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

  if Assigned(FBuscarParametrosComerciaisResult) then
  begin
    xn := aNode.addChildByName(snBuscarParametrosComerciaisResponse_BuscarParametrosComerciaisResponse_BuscarParametrosComerciaisResult);
    FBuscarParametrosComerciaisResult.Save(xn);
  end;
end; // procedure save

{ tBuscarParametrosComerciais_BuscarParametrosComerciais }

function tBuscarParametrosComerciais_BuscarParametrosComerciais.GetAsString: string;
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

class function tBuscarParametrosComerciais_BuscarParametrosComerciais._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarParametrosComerciais_BuscarParametrosComerciais.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tBuscarParametrosComerciais_BuscarParametrosComerciais.CreateFromXmlString(s: string): tBuscarParametrosComerciais_BuscarParametrosComerciais;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarParametrosComerciais_BuscarParametrosComerciais.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarParametrosComerciais_BuscarParametrosComerciais.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tBuscarParametrosComerciais_BuscarParametrosComerciais.Destroy;
begin
  inherited;
end; // destructor ...

procedure tBuscarParametrosComerciais_BuscarParametrosComerciais.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscarParametrosComerciais')
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

{ tBuscarParametrosComerciais }

function tBuscarParametrosComerciais.GetAsString: string;
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

class function tBuscarParametrosComerciais._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarParametrosComerciais.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tBuscarParametrosComerciais.CreateFromXmlString(s: string): tBuscarParametrosComerciais;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarParametrosComerciais.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarParametrosComerciais.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tBuscarParametrosComerciais.Destroy;
begin
  inherited;
end; // destructor ...

procedure tBuscarParametrosComerciais.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscarParametrosComerciais')
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

{ tAssociarCartaoEmpresaResponse_AssociarCartaoEmpresaResponse }

function tAssociarCartaoEmpresaResponse_AssociarCartaoEmpresaResponse.GetAsString: string;
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

class function tAssociarCartaoEmpresaResponse_AssociarCartaoEmpresaResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAssociarCartaoEmpresaResponse_AssociarCartaoEmpresaResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAssociarCartaoEmpresaResponse_AssociarCartaoEmpresaResponse.CreateFromXmlString(s: string): tAssociarCartaoEmpresaResponse_AssociarCartaoEmpresaResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAssociarCartaoEmpresaResponse_AssociarCartaoEmpresaResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAssociarCartaoEmpresaResponse_AssociarCartaoEmpresaResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snAssociarCartaoEmpresaResponse_AssociarCartaoEmpresaResponse_AssociarCartaoEmpresaResult) then
      AssociarCartaoEmpresaResult :=  tBaseResponse.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tAssociarCartaoEmpresaResponse_AssociarCartaoEmpresaResponse.Destroy;
begin
  if assigned(FAssociarCartaoEmpresaResult) then  FAssociarCartaoEmpresaResult.free;
  inherited;
end; // destructor ...

procedure tAssociarCartaoEmpresaResponse_AssociarCartaoEmpresaResponse.SetAssociarCartaoEmpresaResult(value:tBaseResponse);
begin
  FAssociarCartaoEmpresaResult := value;
  FAssociarCartaoEmpresaResult_IsSet_ := true;
end;

procedure tAssociarCartaoEmpresaResponse_AssociarCartaoEmpresaResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AssociarCartaoEmpresaResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if AssociarCartaoEmpresaResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociarCartaoEmpresaResponse_AssociarCartaoEmpresaResponse_AssociarCartaoEmpresaResult));
    FAssociarCartaoEmpresaResult.save( xn );
    //xn.text := FAssociarCartaoEmpresaResult;
  end;
end; // procedure save

{ tAssociarCartaoEmpresaResponse }

function tAssociarCartaoEmpresaResponse.GetAsString: string;
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

class function tAssociarCartaoEmpresaResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAssociarCartaoEmpresaResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAssociarCartaoEmpresaResponse.CreateFromXmlString(s: string): tAssociarCartaoEmpresaResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAssociarCartaoEmpresaResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAssociarCartaoEmpresaResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tAssociarCartaoEmpresaResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAssociarCartaoEmpresaResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AssociarCartaoEmpresaResponse')
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

{ tAssociarCartaoEmpresa_AssociarCartaoEmpresa }

function tAssociarCartaoEmpresa_AssociarCartaoEmpresa.GetAsString: string;
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

class function tAssociarCartaoEmpresa_AssociarCartaoEmpresa._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAssociarCartaoEmpresa_AssociarCartaoEmpresa.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAssociarCartaoEmpresa_AssociarCartaoEmpresa.CreateFromXmlString(s: string): tAssociarCartaoEmpresa_AssociarCartaoEmpresa;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAssociarCartaoEmpresa_AssociarCartaoEmpresa.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAssociarCartaoEmpresa_AssociarCartaoEmpresa.Create(aRoot:tJanXMLNode2);
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
    if (sn = snAssociarCartaoEmpresa_AssociarCartaoEmpresa_cnpjEtc) then
      cnpjEtc :=  xn.text // string
    else if (sn = snAssociarCartaoEmpresa_AssociarCartaoEmpresa_numeroCartao) then
      numeroCartao :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tAssociarCartaoEmpresa_AssociarCartaoEmpresa.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAssociarCartaoEmpresa_AssociarCartaoEmpresa.SetcnpjEtc(value:string);
begin
  FcnpjEtc := value;
  FcnpjEtc_IsSet_ := true;
end;

procedure tAssociarCartaoEmpresa_AssociarCartaoEmpresa.SetnumeroCartao(value:string);
begin
  FnumeroCartao := value;
  FnumeroCartao_IsSet_ := true;
end;

procedure tAssociarCartaoEmpresa_AssociarCartaoEmpresa.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AssociarCartaoEmpresa')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if cnpjEtc_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociarCartaoEmpresa_AssociarCartaoEmpresa_cnpjEtc));
    xn.text := FcnpjEtc;
  end;
  if numeroCartao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociarCartaoEmpresa_AssociarCartaoEmpresa_numeroCartao));
    xn.text := FnumeroCartao;
  end;
end; // procedure save

{ tAssociarCartaoEmpresa }

function tAssociarCartaoEmpresa.GetAsString: string;
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

class function tAssociarCartaoEmpresa._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAssociarCartaoEmpresa.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAssociarCartaoEmpresa.CreateFromXmlString(s: string): tAssociarCartaoEmpresa;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAssociarCartaoEmpresa.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAssociarCartaoEmpresa.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tAssociarCartaoEmpresa.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAssociarCartaoEmpresa.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AssociarCartaoEmpresa')
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

{ tSubstituirCartaoDoPortadorResponse_SubstituirCartaoDoPortadorResponse }

function tSubstituirCartaoDoPortadorResponse_SubstituirCartaoDoPortadorResponse.GetAsString: string;
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

class function tSubstituirCartaoDoPortadorResponse_SubstituirCartaoDoPortadorResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tSubstituirCartaoDoPortadorResponse_SubstituirCartaoDoPortadorResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tSubstituirCartaoDoPortadorResponse_SubstituirCartaoDoPortadorResponse.CreateFromXmlString(s: string): tSubstituirCartaoDoPortadorResponse_SubstituirCartaoDoPortadorResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tSubstituirCartaoDoPortadorResponse_SubstituirCartaoDoPortadorResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tSubstituirCartaoDoPortadorResponse_SubstituirCartaoDoPortadorResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snSubstituirCartaoDoPortadorResponse_SubstituirCartaoDoPortadorResponse_SubstituirCartaoDoPortadorResult) then
      SubstituirCartaoDoPortadorResult :=  tBaseResponse.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tSubstituirCartaoDoPortadorResponse_SubstituirCartaoDoPortadorResponse.Destroy;
begin
  if assigned(FSubstituirCartaoDoPortadorResult) then  FSubstituirCartaoDoPortadorResult.free;
  inherited;
end; // destructor ...

procedure tSubstituirCartaoDoPortadorResponse_SubstituirCartaoDoPortadorResponse.SetSubstituirCartaoDoPortadorResult(value:tBaseResponse);
begin
  FSubstituirCartaoDoPortadorResult := value;
  FSubstituirCartaoDoPortadorResult_IsSet_ := true;
end;

procedure tSubstituirCartaoDoPortadorResponse_SubstituirCartaoDoPortadorResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'SubstituirCartaoDoPortadorResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if SubstituirCartaoDoPortadorResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snSubstituirCartaoDoPortadorResponse_SubstituirCartaoDoPortadorResponse_SubstituirCartaoDoPortadorResult));
    FSubstituirCartaoDoPortadorResult.save( xn );
    //xn.text := FSubstituirCartaoDoPortadorResult;
  end;
end; // procedure save

{ tSubstituirCartaoDoPortadorResponse }

function tSubstituirCartaoDoPortadorResponse.GetAsString: string;
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

class function tSubstituirCartaoDoPortadorResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tSubstituirCartaoDoPortadorResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tSubstituirCartaoDoPortadorResponse.CreateFromXmlString(s: string): tSubstituirCartaoDoPortadorResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tSubstituirCartaoDoPortadorResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tSubstituirCartaoDoPortadorResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tSubstituirCartaoDoPortadorResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tSubstituirCartaoDoPortadorResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'SubstituirCartaoDoPortadorResponse')
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

{ tSubstituirCartaoDoPortador_SubstituirCartaoDoPortador }

function tSubstituirCartaoDoPortador_SubstituirCartaoDoPortador.GetAsString: string;
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

class function tSubstituirCartaoDoPortador_SubstituirCartaoDoPortador._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tSubstituirCartaoDoPortador_SubstituirCartaoDoPortador.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tSubstituirCartaoDoPortador_SubstituirCartaoDoPortador.CreateFromXmlString(s: string): tSubstituirCartaoDoPortador_SubstituirCartaoDoPortador;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tSubstituirCartaoDoPortador_SubstituirCartaoDoPortador.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tSubstituirCartaoDoPortador_SubstituirCartaoDoPortador.Create(aRoot:tJanXMLNode2);
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
    if (sn = snSubstituirCartaoDoPortador_SubstituirCartaoDoPortador_dadosParaSubstituicao) then
      dadosParaSubstituicao :=  tSubstituirCartaoDoPortadorRequest.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tSubstituirCartaoDoPortador_SubstituirCartaoDoPortador.Destroy;
begin
  if assigned(FdadosParaSubstituicao) then  FdadosParaSubstituicao.free;
  inherited;
end; // destructor ...

procedure tSubstituirCartaoDoPortador_SubstituirCartaoDoPortador.SetdadosParaSubstituicao(value:tSubstituirCartaoDoPortadorRequest);
begin
  FdadosParaSubstituicao := value;
  FdadosParaSubstituicao_IsSet_ := true;
end;

procedure tSubstituirCartaoDoPortador_SubstituirCartaoDoPortador.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'SubstituirCartaoDoPortador')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if dadosParaSubstituicao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snSubstituirCartaoDoPortador_SubstituirCartaoDoPortador_dadosParaSubstituicao));
    FdadosParaSubstituicao.save( xn );
    //xn.text := FdadosParaSubstituicao;
  end;
end; // procedure save

{ tSubstituirCartaoDoPortador }

function tSubstituirCartaoDoPortador.GetAsString: string;
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

class function tSubstituirCartaoDoPortador._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tSubstituirCartaoDoPortador.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tSubstituirCartaoDoPortador.CreateFromXmlString(s: string): tSubstituirCartaoDoPortador;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tSubstituirCartaoDoPortador.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tSubstituirCartaoDoPortador.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tSubstituirCartaoDoPortador.Destroy;
begin
  inherited;
end; // destructor ...

procedure tSubstituirCartaoDoPortador.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'SubstituirCartaoDoPortador')
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

{ tProcessarCargaFreteAvulsaResponse_ProcessarCargaFreteAvulsaResponse }

function tProcessarCargaFreteAvulsaResponse_ProcessarCargaFreteAvulsaResponse.GetAsString: string;
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

class function tProcessarCargaFreteAvulsaResponse_ProcessarCargaFreteAvulsaResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tProcessarCargaFreteAvulsaResponse_ProcessarCargaFreteAvulsaResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tProcessarCargaFreteAvulsaResponse_ProcessarCargaFreteAvulsaResponse.CreateFromXmlString(s: string): tProcessarCargaFreteAvulsaResponse_ProcessarCargaFreteAvulsaResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tProcessarCargaFreteAvulsaResponse_ProcessarCargaFreteAvulsaResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tProcessarCargaFreteAvulsaResponse_ProcessarCargaFreteAvulsaResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snProcessarCargaFreteAvulsaResponse_ProcessarCargaFreteAvulsaResponse_ProcessarCargaFreteAvulsaResult) then
      FProcessarCargaFreteAvulsaResult := tProcessarCargaFreteAvulsaResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tProcessarCargaFreteAvulsaResponse_ProcessarCargaFreteAvulsaResponse.Destroy;
begin
  if assigned(FProcessarCargaFreteAvulsaResult) then  FProcessarCargaFreteAvulsaResult.free;
  inherited;
end; // destructor ...

procedure tProcessarCargaFreteAvulsaResponse_ProcessarCargaFreteAvulsaResponse.SetProcessarCargaFreteAvulsaResult(value:tProcessarCargaFreteAvulsaResponse);
begin
  FProcessarCargaFreteAvulsaResult := value;
  FProcessarCargaFreteAvulsaResult_IsSet_ := true;
end;

procedure tProcessarCargaFreteAvulsaResponse_ProcessarCargaFreteAvulsaResponse.Save(aNode:tJanXMLNode2);
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

  if Assigned(FProcessarCargaFreteAvulsaResult) then
  begin
    xn := aNode.addChildByName(snProcessarCargaFreteAvulsaResponse_ProcessarCargaFreteAvulsaResponse_ProcessarCargaFreteAvulsaResult);
    FProcessarCargaFreteAvulsaResult.Save(xn);
  end;
end; // procedure save

{ tProcessarCargaFreteAvulsa_ProcessarCargaFreteAvulsa }

function tProcessarCargaFreteAvulsa_ProcessarCargaFreteAvulsa.GetAsString: string;
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

class function tProcessarCargaFreteAvulsa_ProcessarCargaFreteAvulsa._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tProcessarCargaFreteAvulsa_ProcessarCargaFreteAvulsa.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tProcessarCargaFreteAvulsa_ProcessarCargaFreteAvulsa.CreateFromXmlString(s: string): tProcessarCargaFreteAvulsa_ProcessarCargaFreteAvulsa;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tProcessarCargaFreteAvulsa_ProcessarCargaFreteAvulsa.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tProcessarCargaFreteAvulsa_ProcessarCargaFreteAvulsa.Create(aRoot:tJanXMLNode2);
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
    if (sn = snProcessarCargaFreteAvulsa_ProcessarCargaFreteAvulsa_dadosParaCarga) then
      dadosParaCarga :=  tProcessarCargaFreteAvulsaRequest.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tProcessarCargaFreteAvulsa_ProcessarCargaFreteAvulsa.Destroy;
begin
  if assigned(FdadosParaCarga) then  FdadosParaCarga.free;
  inherited;
end; // destructor ...

procedure tProcessarCargaFreteAvulsa_ProcessarCargaFreteAvulsa.SetdadosParaCarga(value:tProcessarCargaFreteAvulsaRequest);
begin
  FdadosParaCarga := value;
  FdadosParaCarga_IsSet_ := true;
end;

procedure tProcessarCargaFreteAvulsa_ProcessarCargaFreteAvulsa.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ProcessarCargaFreteAvulsa')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if dadosParaCarga_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snProcessarCargaFreteAvulsa_ProcessarCargaFreteAvulsa_dadosParaCarga));
    FdadosParaCarga.save( xn );
    //xn.text := FdadosParaCarga;
  end;
end; // procedure save

{ tProcessarCargaFreteAvulsa }

function tProcessarCargaFreteAvulsa.GetAsString: string;
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

class function tProcessarCargaFreteAvulsa._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tProcessarCargaFreteAvulsa.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tProcessarCargaFreteAvulsa.CreateFromXmlString(s: string): tProcessarCargaFreteAvulsa;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tProcessarCargaFreteAvulsa.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tProcessarCargaFreteAvulsa.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tProcessarCargaFreteAvulsa.Destroy;
begin
  inherited;
end; // destructor ...

procedure tProcessarCargaFreteAvulsa.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ProcessarCargaFreteAvulsa')
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

{ tDesbloquearCartaoResponse_DesbloquearCartaoResponse }

function tDesbloquearCartaoResponse_DesbloquearCartaoResponse.GetAsString: string;
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

class function tDesbloquearCartaoResponse_DesbloquearCartaoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tDesbloquearCartaoResponse_DesbloquearCartaoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tDesbloquearCartaoResponse_DesbloquearCartaoResponse.CreateFromXmlString(s: string): tDesbloquearCartaoResponse_DesbloquearCartaoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tDesbloquearCartaoResponse_DesbloquearCartaoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tDesbloquearCartaoResponse_DesbloquearCartaoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snDesbloquearCartaoResponse_DesbloquearCartaoResponse_DesbloquearCartaoResult) then
      DesbloquearCartaoResult :=  tBaseResponse.create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tDesbloquearCartaoResponse_DesbloquearCartaoResponse.Destroy;
begin
  if assigned(FDesbloquearCartaoResult) then  FDesbloquearCartaoResult.free;
  inherited;
end; // destructor ...

procedure tDesbloquearCartaoResponse_DesbloquearCartaoResponse.SetDesbloquearCartaoResult(value:tBaseResponse);
begin
  FDesbloquearCartaoResult := value;
  FDesbloquearCartaoResult_IsSet_ := true;
end;

procedure tDesbloquearCartaoResponse_DesbloquearCartaoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'DesbloquearCartaoResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if DesbloquearCartaoResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDesbloquearCartaoResponse_DesbloquearCartaoResponse_DesbloquearCartaoResult));
    FDesbloquearCartaoResult.save( xn );
    //xn.text := FDesbloquearCartaoResult;
  end;
end; // procedure save

{ tDesbloquearCartaoResponse }

function tDesbloquearCartaoResponse.GetAsString: string;
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

class function tDesbloquearCartaoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tDesbloquearCartaoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tDesbloquearCartaoResponse.CreateFromXmlString(s: string): tDesbloquearCartaoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tDesbloquearCartaoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tDesbloquearCartaoResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tDesbloquearCartaoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tDesbloquearCartaoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'DesbloquearCartaoResponse')
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

{ tDesbloquearCartao_DesbloquearCartao }

function tDesbloquearCartao_DesbloquearCartao.GetAsString: string;
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

class function tDesbloquearCartao_DesbloquearCartao._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tDesbloquearCartao_DesbloquearCartao.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tDesbloquearCartao_DesbloquearCartao.CreateFromXmlString(s: string): tDesbloquearCartao_DesbloquearCartao;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tDesbloquearCartao_DesbloquearCartao.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tDesbloquearCartao_DesbloquearCartao.Create(aRoot:tJanXMLNode2);
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
    if (sn = snDesbloquearCartao_DesbloquearCartao_numeroCartao) then
      numeroCartao :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tDesbloquearCartao_DesbloquearCartao.Destroy;
begin
  inherited;
end; // destructor ...

procedure tDesbloquearCartao_DesbloquearCartao.SetnumeroCartao(value:string);
begin
  FnumeroCartao := value;
  FnumeroCartao_IsSet_ := true;
end;

procedure tDesbloquearCartao_DesbloquearCartao.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'DesbloquearCartao')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if numeroCartao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDesbloquearCartao_DesbloquearCartao_numeroCartao));
    xn.text := FnumeroCartao;
  end;
end; // procedure save

{ tDesbloquearCartao }

function tDesbloquearCartao.GetAsString: string;
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

class function tDesbloquearCartao._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tDesbloquearCartao.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tDesbloquearCartao.CreateFromXmlString(s: string): tDesbloquearCartao;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tDesbloquearCartao.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tDesbloquearCartao.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tDesbloquearCartao.Destroy;
begin
  inherited;
end; // destructor ...

procedure tDesbloquearCartao.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'DesbloquearCartao')
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

{ tAssociarCartaoMotoristaResponse_AssociarCartaoMotoristaResponse }

function tAssociarCartaoMotoristaResponse_AssociarCartaoMotoristaResponse.GetAsString: string;
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

class function tAssociarCartaoMotoristaResponse_AssociarCartaoMotoristaResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAssociarCartaoMotoristaResponse_AssociarCartaoMotoristaResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAssociarCartaoMotoristaResponse_AssociarCartaoMotoristaResponse.CreateFromXmlString(s: string): tAssociarCartaoMotoristaResponse_AssociarCartaoMotoristaResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAssociarCartaoMotoristaResponse_AssociarCartaoMotoristaResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAssociarCartaoMotoristaResponse_AssociarCartaoMotoristaResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snAssociarCartaoMotoristaResponse_AssociarCartaoMotoristaResponse_AssociarCartaoMotoristaResult) then
      AssociarCartaoMotoristaResult :=  tBaseResponse.create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tAssociarCartaoMotoristaResponse_AssociarCartaoMotoristaResponse.Destroy;
begin
  if assigned(FAssociarCartaoMotoristaResult) then  FAssociarCartaoMotoristaResult.free;
  inherited;
end; // destructor ...

procedure tAssociarCartaoMotoristaResponse_AssociarCartaoMotoristaResponse.SetAssociarCartaoMotoristaResult(value:tBaseResponse);
begin
  FAssociarCartaoMotoristaResult := value;
  FAssociarCartaoMotoristaResult_IsSet_ := true;
end;

procedure tAssociarCartaoMotoristaResponse_AssociarCartaoMotoristaResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AssociarCartaoMotoristaResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if AssociarCartaoMotoristaResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociarCartaoMotoristaResponse_AssociarCartaoMotoristaResponse_AssociarCartaoMotoristaResult));
    FAssociarCartaoMotoristaResult.save( xn );
    //xn.text := FAssociarCartaoMotoristaResult;
  end;
end; // procedure save

{ tAssociarCartaoMotoristaResponse }

function tAssociarCartaoMotoristaResponse.GetAsString: string;
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

class function tAssociarCartaoMotoristaResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAssociarCartaoMotoristaResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAssociarCartaoMotoristaResponse.CreateFromXmlString(s: string): tAssociarCartaoMotoristaResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAssociarCartaoMotoristaResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAssociarCartaoMotoristaResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tAssociarCartaoMotoristaResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAssociarCartaoMotoristaResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AssociarCartaoMotoristaResponse')
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

{ tAssociarCartaoMotorista_AssociarCartaoMotorista }

function tAssociarCartaoMotorista_AssociarCartaoMotorista.GetAsString: string;
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

class function tAssociarCartaoMotorista_AssociarCartaoMotorista._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAssociarCartaoMotorista_AssociarCartaoMotorista.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAssociarCartaoMotorista_AssociarCartaoMotorista.CreateFromXmlString(s: string): tAssociarCartaoMotorista_AssociarCartaoMotorista;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAssociarCartaoMotorista_AssociarCartaoMotorista.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAssociarCartaoMotorista_AssociarCartaoMotorista.Create(aRoot:tJanXMLNode2);
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
    if (sn = snAssociarCartaoMotorista_AssociarCartaoMotorista_cpfCnpjTransportador) then
      cpfCnpjTransportador :=  xn.text // string
    else if (sn = snAssociarCartaoMotorista_AssociarCartaoMotorista_cpfMotorista) then
      cpfMotorista :=  xn.text // string
    else if (sn = snAssociarCartaoMotorista_AssociarCartaoMotorista_numeroCartao) then
      numeroCartao :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tAssociarCartaoMotorista_AssociarCartaoMotorista.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAssociarCartaoMotorista_AssociarCartaoMotorista.SetcpfCnpjTransportador(value:string);
begin
  FcpfCnpjTransportador := value;
  FcpfCnpjTransportador_IsSet_ := true;
end;

procedure tAssociarCartaoMotorista_AssociarCartaoMotorista.SetcpfMotorista(value:string);
begin
  FcpfMotorista := value;
  FcpfMotorista_IsSet_ := true;
end;

procedure tAssociarCartaoMotorista_AssociarCartaoMotorista.SetnumeroCartao(value:string);
begin
  FnumeroCartao := value;
  FnumeroCartao_IsSet_ := true;
end;

procedure tAssociarCartaoMotorista_AssociarCartaoMotorista.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AssociarCartaoMotorista')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if cpfCnpjTransportador_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociarCartaoMotorista_AssociarCartaoMotorista_cpfCnpjTransportador));
    xn.text := FcpfCnpjTransportador;
  end;
  if cpfMotorista_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociarCartaoMotorista_AssociarCartaoMotorista_cpfMotorista));
    xn.text := FcpfMotorista;
  end;
  if numeroCartao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociarCartaoMotorista_AssociarCartaoMotorista_numeroCartao));
    xn.text := FnumeroCartao;
  end;
end; // procedure save

{ tAssociarCartaoMotorista }

function tAssociarCartaoMotorista.GetAsString: string;
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

class function tAssociarCartaoMotorista._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAssociarCartaoMotorista.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAssociarCartaoMotorista.CreateFromXmlString(s: string): tAssociarCartaoMotorista;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAssociarCartaoMotorista.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAssociarCartaoMotorista.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tAssociarCartaoMotorista.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAssociarCartaoMotorista.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AssociarCartaoMotorista')
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

{ tAssociarCartaoNaoEquiparadoResponse_AssociarCartaoNaoEquiparadoResponse }

function tAssociarCartaoNaoEquiparadoResponse_AssociarCartaoNaoEquiparadoResponse.GetAsString: string;
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

class function tAssociarCartaoNaoEquiparadoResponse_AssociarCartaoNaoEquiparadoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAssociarCartaoNaoEquiparadoResponse_AssociarCartaoNaoEquiparadoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAssociarCartaoNaoEquiparadoResponse_AssociarCartaoNaoEquiparadoResponse.CreateFromXmlString(s: string): tAssociarCartaoNaoEquiparadoResponse_AssociarCartaoNaoEquiparadoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAssociarCartaoNaoEquiparadoResponse_AssociarCartaoNaoEquiparadoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAssociarCartaoNaoEquiparadoResponse_AssociarCartaoNaoEquiparadoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snAssociarCartaoNaoEquiparadoResponse_AssociarCartaoNaoEquiparadoResponse_AssociarCartaoNaoEquiparadoResult) then
      AssociarCartaoNaoEquiparadoResult :=  tBaseResponse.create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tAssociarCartaoNaoEquiparadoResponse_AssociarCartaoNaoEquiparadoResponse.Destroy;
begin
  if assigned(FAssociarCartaoNaoEquiparadoResult) then  FAssociarCartaoNaoEquiparadoResult.free;
  inherited;
end; // destructor ...

procedure tAssociarCartaoNaoEquiparadoResponse_AssociarCartaoNaoEquiparadoResponse.SetAssociarCartaoNaoEquiparadoResult(value:tBaseResponse);
begin
  FAssociarCartaoNaoEquiparadoResult := value;
  FAssociarCartaoNaoEquiparadoResult_IsSet_ := true;
end;

procedure tAssociarCartaoNaoEquiparadoResponse_AssociarCartaoNaoEquiparadoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AssociarCartaoNaoEquiparadoResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if AssociarCartaoNaoEquiparadoResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociarCartaoNaoEquiparadoResponse_AssociarCartaoNaoEquiparadoResponse_AssociarCartaoNaoEquiparadoResult));
    FAssociarCartaoNaoEquiparadoResult.save( xn );
    //xn.text := FAssociarCartaoNaoEquiparadoResult;
  end;
end; // procedure save

{ tAssociarCartaoNaoEquiparadoResponse }

function tAssociarCartaoNaoEquiparadoResponse.GetAsString: string;
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

class function tAssociarCartaoNaoEquiparadoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAssociarCartaoNaoEquiparadoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAssociarCartaoNaoEquiparadoResponse.CreateFromXmlString(s: string): tAssociarCartaoNaoEquiparadoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAssociarCartaoNaoEquiparadoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAssociarCartaoNaoEquiparadoResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tAssociarCartaoNaoEquiparadoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAssociarCartaoNaoEquiparadoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AssociarCartaoNaoEquiparadoResponse')
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

{ tAssociarCartaoNaoEquiparado_AssociarCartaoNaoEquiparado }

function tAssociarCartaoNaoEquiparado_AssociarCartaoNaoEquiparado.GetAsString: string;
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

class function tAssociarCartaoNaoEquiparado_AssociarCartaoNaoEquiparado._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAssociarCartaoNaoEquiparado_AssociarCartaoNaoEquiparado.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAssociarCartaoNaoEquiparado_AssociarCartaoNaoEquiparado.CreateFromXmlString(s: string): tAssociarCartaoNaoEquiparado_AssociarCartaoNaoEquiparado;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAssociarCartaoNaoEquiparado_AssociarCartaoNaoEquiparado.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAssociarCartaoNaoEquiparado_AssociarCartaoNaoEquiparado.Create(aRoot:tJanXMLNode2);
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
    if (sn = snAssociarCartaoNaoEquiparado_AssociarCartaoNaoEquiparado_dadosAssociacao) then
      dadosAssociacao :=  tAssociacaoCartaoTransportadorRequest.create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tAssociarCartaoNaoEquiparado_AssociarCartaoNaoEquiparado.Destroy;
begin
  if assigned(FdadosAssociacao) then  FdadosAssociacao.free;
  inherited;
end; // destructor ...

procedure tAssociarCartaoNaoEquiparado_AssociarCartaoNaoEquiparado.SetdadosAssociacao(value:tAssociacaoCartaoTransportadorRequest);
begin
  FdadosAssociacao := value;
  FdadosAssociacao_IsSet_ := true;
end;

procedure tAssociarCartaoNaoEquiparado_AssociarCartaoNaoEquiparado.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AssociarCartaoNaoEquiparado')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if dadosAssociacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociarCartaoNaoEquiparado_AssociarCartaoNaoEquiparado_dadosAssociacao));
    FdadosAssociacao.save( xn );
    //xn.text := FdadosAssociacao;
  end;
end; // procedure save

{ tAssociarCartaoNaoEquiparado }

function tAssociarCartaoNaoEquiparado.GetAsString: string;
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

class function tAssociarCartaoNaoEquiparado._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAssociarCartaoNaoEquiparado.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAssociarCartaoNaoEquiparado.CreateFromXmlString(s: string): tAssociarCartaoNaoEquiparado;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAssociarCartaoNaoEquiparado.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAssociarCartaoNaoEquiparado.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tAssociarCartaoNaoEquiparado.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAssociarCartaoNaoEquiparado.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AssociarCartaoNaoEquiparado')
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

{ tAssociarCartaoEquiparadoResponse_AssociarCartaoEquiparadoResponse }

function tAssociarCartaoEquiparadoResponse_AssociarCartaoEquiparadoResponse.GetAsString: string;
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

class function tAssociarCartaoEquiparadoResponse_AssociarCartaoEquiparadoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAssociarCartaoEquiparadoResponse_AssociarCartaoEquiparadoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAssociarCartaoEquiparadoResponse_AssociarCartaoEquiparadoResponse.CreateFromXmlString(s: string): tAssociarCartaoEquiparadoResponse_AssociarCartaoEquiparadoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAssociarCartaoEquiparadoResponse_AssociarCartaoEquiparadoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAssociarCartaoEquiparadoResponse_AssociarCartaoEquiparadoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snAssociarCartaoEquiparadoResponse_AssociarCartaoEquiparadoResponse_AssociarCartaoEquiparadoResult) then
      AssociarCartaoEquiparadoResult :=  tBaseResponse.create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tAssociarCartaoEquiparadoResponse_AssociarCartaoEquiparadoResponse.Destroy;
begin
  if assigned(FAssociarCartaoEquiparadoResult) then  FAssociarCartaoEquiparadoResult.free;
  inherited;
end; // destructor ...

procedure tAssociarCartaoEquiparadoResponse_AssociarCartaoEquiparadoResponse.SetAssociarCartaoEquiparadoResult(value:tBaseResponse);
begin
  FAssociarCartaoEquiparadoResult := value;
  FAssociarCartaoEquiparadoResult_IsSet_ := true;
end;

procedure tAssociarCartaoEquiparadoResponse_AssociarCartaoEquiparadoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AssociarCartaoEquiparadoResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if AssociarCartaoEquiparadoResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociarCartaoEquiparadoResponse_AssociarCartaoEquiparadoResponse_AssociarCartaoEquiparadoResult));
    FAssociarCartaoEquiparadoResult.save( xn );
    //xn.text := FAssociarCartaoEquiparadoResult;
  end;
end; // procedure save

{ tAssociarCartaoEquiparadoResponse }

function tAssociarCartaoEquiparadoResponse.GetAsString: string;
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

class function tAssociarCartaoEquiparadoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAssociarCartaoEquiparadoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAssociarCartaoEquiparadoResponse.CreateFromXmlString(s: string): tAssociarCartaoEquiparadoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAssociarCartaoEquiparadoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAssociarCartaoEquiparadoResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tAssociarCartaoEquiparadoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAssociarCartaoEquiparadoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AssociarCartaoEquiparadoResponse')
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

{ tAssociarCartaoEquiparado_AssociarCartaoEquiparado }

function tAssociarCartaoEquiparado_AssociarCartaoEquiparado.GetAsString: string;
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

class function tAssociarCartaoEquiparado_AssociarCartaoEquiparado._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAssociarCartaoEquiparado_AssociarCartaoEquiparado.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAssociarCartaoEquiparado_AssociarCartaoEquiparado.CreateFromXmlString(s: string): tAssociarCartaoEquiparado_AssociarCartaoEquiparado;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAssociarCartaoEquiparado_AssociarCartaoEquiparado.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAssociarCartaoEquiparado_AssociarCartaoEquiparado.Create(aRoot:tJanXMLNode2);
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
    if (sn = snAssociarCartaoEquiparado_AssociarCartaoEquiparado_dadosAssociacao) then
      dadosAssociacao :=  tAssociacaoCartaoTransportadorRequest.create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tAssociarCartaoEquiparado_AssociarCartaoEquiparado.Destroy;
begin
  if assigned(FdadosAssociacao) then  FdadosAssociacao.free;
  inherited;
end; // destructor ...

procedure tAssociarCartaoEquiparado_AssociarCartaoEquiparado.SetdadosAssociacao(value:tAssociacaoCartaoTransportadorRequest);
begin
  FdadosAssociacao := value;
  FdadosAssociacao_IsSet_ := true;
end;

procedure tAssociarCartaoEquiparado_AssociarCartaoEquiparado.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AssociarCartaoEquiparado')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if dadosAssociacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociarCartaoEquiparado_AssociarCartaoEquiparado_dadosAssociacao));
    FdadosAssociacao.save( xn );
    //xn.text := FdadosAssociacao;
  end;
end; // procedure save

{ tAssociarCartaoEquiparado }

function tAssociarCartaoEquiparado.GetAsString: string;
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

class function tAssociarCartaoEquiparado._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAssociarCartaoEquiparado.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAssociarCartaoEquiparado.CreateFromXmlString(s: string): tAssociarCartaoEquiparado;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAssociarCartaoEquiparado.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAssociarCartaoEquiparado.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tAssociarCartaoEquiparado.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAssociarCartaoEquiparado.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AssociarCartaoEquiparado')
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

{ tAssociarCartaoAutonomoResponse_AssociarCartaoAutonomoResponse }

function tAssociarCartaoAutonomoResponse_AssociarCartaoAutonomoResponse.GetAsString: string;
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

class function tAssociarCartaoAutonomoResponse_AssociarCartaoAutonomoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAssociarCartaoAutonomoResponse_AssociarCartaoAutonomoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAssociarCartaoAutonomoResponse_AssociarCartaoAutonomoResponse.CreateFromXmlString(s: string): tAssociarCartaoAutonomoResponse_AssociarCartaoAutonomoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAssociarCartaoAutonomoResponse_AssociarCartaoAutonomoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAssociarCartaoAutonomoResponse_AssociarCartaoAutonomoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snAssociarCartaoAutonomoResponse_AssociarCartaoAutonomoResponse_AssociarCartaoAutonomoResult) then
      AssociarCartaoAutonomoResult :=  tBaseResponse.create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tAssociarCartaoAutonomoResponse_AssociarCartaoAutonomoResponse.Destroy;
begin
  if assigned(FAssociarCartaoAutonomoResult) then  FAssociarCartaoAutonomoResult.free;
  inherited;
end; // destructor ...

procedure tAssociarCartaoAutonomoResponse_AssociarCartaoAutonomoResponse.SetAssociarCartaoAutonomoResult(value:tBaseResponse);
begin
  FAssociarCartaoAutonomoResult := value;
  FAssociarCartaoAutonomoResult_IsSet_ := true;
end;

procedure tAssociarCartaoAutonomoResponse_AssociarCartaoAutonomoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AssociarCartaoAutonomoResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if AssociarCartaoAutonomoResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociarCartaoAutonomoResponse_AssociarCartaoAutonomoResponse_AssociarCartaoAutonomoResult));
    FAssociarCartaoAutonomoResult.save( xn );
  end;
end; // procedure save

{ tAssociarCartaoAutonomoResponse }

function tAssociarCartaoAutonomoResponse.GetAsString: string;
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

class function tAssociarCartaoAutonomoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAssociarCartaoAutonomoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAssociarCartaoAutonomoResponse.CreateFromXmlString(s: string): tAssociarCartaoAutonomoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAssociarCartaoAutonomoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAssociarCartaoAutonomoResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tAssociarCartaoAutonomoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAssociarCartaoAutonomoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AssociarCartaoAutonomoResponse')
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

{ tAssociarCartaoAutonomo_AssociarCartaoAutonomo }

function tAssociarCartaoAutonomo_AssociarCartaoAutonomo.GetAsString: string;
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

class function tAssociarCartaoAutonomo_AssociarCartaoAutonomo._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAssociarCartaoAutonomo_AssociarCartaoAutonomo.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAssociarCartaoAutonomo_AssociarCartaoAutonomo.CreateFromXmlString(s: string): tAssociarCartaoAutonomo_AssociarCartaoAutonomo;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAssociarCartaoAutonomo_AssociarCartaoAutonomo.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAssociarCartaoAutonomo_AssociarCartaoAutonomo.Create(aRoot:tJanXMLNode2);
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
    if (sn = snAssociarCartaoAutonomo_AssociarCartaoAutonomo_cpfAutonomo) then
      cpfAutonomo :=  xn.text // string
    else if (sn = snAssociarCartaoAutonomo_AssociarCartaoAutonomo_numeroCartao) then
      numeroCartao :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tAssociarCartaoAutonomo_AssociarCartaoAutonomo.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAssociarCartaoAutonomo_AssociarCartaoAutonomo.SetcpfAutonomo(value:string);
begin
  FcpfAutonomo := value;
  FcpfAutonomo_IsSet_ := true;
end;

procedure tAssociarCartaoAutonomo_AssociarCartaoAutonomo.SetnumeroCartao(value:string);
begin
  FnumeroCartao := value;
  FnumeroCartao_IsSet_ := true;
end;

procedure tAssociarCartaoAutonomo_AssociarCartaoAutonomo.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AssociarCartaoAutonomo')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if cpfAutonomo_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociarCartaoAutonomo_AssociarCartaoAutonomo_cpfAutonomo));
    xn.text := FcpfAutonomo;
  end;
  if numeroCartao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAssociarCartaoAutonomo_AssociarCartaoAutonomo_numeroCartao));
    xn.text := FnumeroCartao;
  end;
end; // procedure save

{ tAssociarCartaoAutonomo }

function tAssociarCartaoAutonomo.GetAsString: string;
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

class function tAssociarCartaoAutonomo._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAssociarCartaoAutonomo.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAssociarCartaoAutonomo.CreateFromXmlString(s: string): tAssociarCartaoAutonomo;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAssociarCartaoAutonomo.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAssociarCartaoAutonomo.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tAssociarCartaoAutonomo.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAssociarCartaoAutonomo.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AssociarCartaoAutonomo')
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

{ tConferirDocumentacaoOperacaoTransporteTriagemResponse_ConferirDocumentacaoOperacaoTransporteTriagemResponse }

function tConferirDocumentacaoOperacaoTransporteTriagemResponse_ConferirDocumentacaoOperacaoTransporteTriagemResponse.GetAsString: string;
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

class function tConferirDocumentacaoOperacaoTransporteTriagemResponse_ConferirDocumentacaoOperacaoTransporteTriagemResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tConferirDocumentacaoOperacaoTransporteTriagemResponse_ConferirDocumentacaoOperacaoTransporteTriagemResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tConferirDocumentacaoOperacaoTransporteTriagemResponse_ConferirDocumentacaoOperacaoTransporteTriagemResponse.CreateFromXmlString(s: string): tConferirDocumentacaoOperacaoTransporteTriagemResponse_ConferirDocumentacaoOperacaoTransporteTriagemResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tConferirDocumentacaoOperacaoTransporteTriagemResponse_ConferirDocumentacaoOperacaoTransporteTriagemResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tConferirDocumentacaoOperacaoTransporteTriagemResponse_ConferirDocumentacaoOperacaoTransporteTriagemResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snConferirDocumentacaoOperacaoTransporteTriagemResponse_ConferirDocumentacaoOperacaoTransporteTriagemResponse_ConferirDocumentacaoOperacaoTransporteTriagemResult) then
      ConferirDocumentacaoOperacaoTransporteTriagemResult :=  tConferirDocumentacaoTriagemResponse.create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tConferirDocumentacaoOperacaoTransporteTriagemResponse_ConferirDocumentacaoOperacaoTransporteTriagemResponse.Destroy;
begin
  if assigned(FConferirDocumentacaoOperacaoTransporteTriagemResult) then  FConferirDocumentacaoOperacaoTransporteTriagemResult.free;
  inherited;
end; // destructor ...

procedure tConferirDocumentacaoOperacaoTransporteTriagemResponse_ConferirDocumentacaoOperacaoTransporteTriagemResponse.SetConferirDocumentacaoOperacaoTransporteTriagemResult(value:tConferirDocumentacaoTriagemResponse);
begin
  FConferirDocumentacaoOperacaoTransporteTriagemResult := value;
  FConferirDocumentacaoOperacaoTransporteTriagemResult_IsSet_ := true;
end;

procedure tConferirDocumentacaoOperacaoTransporteTriagemResponse_ConferirDocumentacaoOperacaoTransporteTriagemResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ConferirDocumentacaoOperacaoTransporteTriagemResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if ConferirDocumentacaoOperacaoTransporteTriagemResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConferirDocumentacaoOperacaoTransporteTriagemResponse_ConferirDocumentacaoOperacaoTransporteTriagemResponse_ConferirDocumentacaoOperacaoTransporteTriagemResult));
    FConferirDocumentacaoOperacaoTransporteTriagemResult.save( xn );
  end;
end; // procedure save

{ tConferirDocumentacaoOperacaoTransporteTriagemResponse }

function tConferirDocumentacaoOperacaoTransporteTriagemResponse.GetAsString: string;
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

class function tConferirDocumentacaoOperacaoTransporteTriagemResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tConferirDocumentacaoOperacaoTransporteTriagemResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tConferirDocumentacaoOperacaoTransporteTriagemResponse.CreateFromXmlString(s: string): tConferirDocumentacaoOperacaoTransporteTriagemResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tConferirDocumentacaoOperacaoTransporteTriagemResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tConferirDocumentacaoOperacaoTransporteTriagemResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tConferirDocumentacaoOperacaoTransporteTriagemResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tConferirDocumentacaoOperacaoTransporteTriagemResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ConferirDocumentacaoOperacaoTransporteTriagemResponse')
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

{ tConferirDocumentacaoOperacaoTransporteTriagem_ConferirDocumentacaoOperacaoTransporteTriagem }

function tConferirDocumentacaoOperacaoTransporteTriagem_ConferirDocumentacaoOperacaoTransporteTriagem.GetAsString: string;
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

class function tConferirDocumentacaoOperacaoTransporteTriagem_ConferirDocumentacaoOperacaoTransporteTriagem._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tConferirDocumentacaoOperacaoTransporteTriagem_ConferirDocumentacaoOperacaoTransporteTriagem.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tConferirDocumentacaoOperacaoTransporteTriagem_ConferirDocumentacaoOperacaoTransporteTriagem.CreateFromXmlString(s: string): tConferirDocumentacaoOperacaoTransporteTriagem_ConferirDocumentacaoOperacaoTransporteTriagem;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tConferirDocumentacaoOperacaoTransporteTriagem_ConferirDocumentacaoOperacaoTransporteTriagem.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tConferirDocumentacaoOperacaoTransporteTriagem_ConferirDocumentacaoOperacaoTransporteTriagem.Create(aRoot:tJanXMLNode2);
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
    if (sn = snConferirDocumentacaoOperacaoTransporteTriagem_ConferirDocumentacaoOperacaoTransporteTriagem_CIOT) then
      CIOT :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tConferirDocumentacaoOperacaoTransporteTriagem_ConferirDocumentacaoOperacaoTransporteTriagem.Destroy;
begin
  inherited;
end; // destructor ...

procedure tConferirDocumentacaoOperacaoTransporteTriagem_ConferirDocumentacaoOperacaoTransporteTriagem.SetCIOT(value:string);
begin
  FCIOT := value;
  FCIOT_IsSet_ := true;
end;

procedure tConferirDocumentacaoOperacaoTransporteTriagem_ConferirDocumentacaoOperacaoTransporteTriagem.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ConferirDocumentacaoOperacaoTransporteTriagem')
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
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConferirDocumentacaoOperacaoTransporteTriagem_ConferirDocumentacaoOperacaoTransporteTriagem_CIOT));
    xn.text := FCIOT;
  end;
end; // procedure save

{ tConferirDocumentacaoOperacaoTransporteTriagem }

function tConferirDocumentacaoOperacaoTransporteTriagem.GetAsString: string;
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

class function tConferirDocumentacaoOperacaoTransporteTriagem._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tConferirDocumentacaoOperacaoTransporteTriagem.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tConferirDocumentacaoOperacaoTransporteTriagem.CreateFromXmlString(s: string): tConferirDocumentacaoOperacaoTransporteTriagem;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tConferirDocumentacaoOperacaoTransporteTriagem.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tConferirDocumentacaoOperacaoTransporteTriagem.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tConferirDocumentacaoOperacaoTransporteTriagem.Destroy;
begin
  inherited;
end; // destructor ...

procedure tConferirDocumentacaoOperacaoTransporteTriagem.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ConferirDocumentacaoOperacaoTransporteTriagem')
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

{ tObterOperacaoPorCIOTResponse_ObterOperacaoPorCIOTResponse }

function tObterOperacaoPorCIOTResponse_ObterOperacaoPorCIOTResponse.GetAsString: string;
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

class function tObterOperacaoPorCIOTResponse_ObterOperacaoPorCIOTResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterOperacaoPorCIOTResponse_ObterOperacaoPorCIOTResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterOperacaoPorCIOTResponse_ObterOperacaoPorCIOTResponse.CreateFromXmlString(s: string): tObterOperacaoPorCIOTResponse_ObterOperacaoPorCIOTResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterOperacaoPorCIOTResponse_ObterOperacaoPorCIOTResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterOperacaoPorCIOTResponse_ObterOperacaoPorCIOTResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterOperacaoPorCIOTResponse_ObterOperacaoPorCIOTResponse_ObterOperacaoPorCIOTResult) then
      ObterOperacaoPorCIOTResult :=  tObterOperacaoTransporteResponse.create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterOperacaoPorCIOTResponse_ObterOperacaoPorCIOTResponse.Destroy;
begin
  if assigned(FObterOperacaoPorCIOTResult) then  FObterOperacaoPorCIOTResult.free;
  inherited;
end; // destructor ...

procedure tObterOperacaoPorCIOTResponse_ObterOperacaoPorCIOTResponse.SetObterOperacaoPorCIOTResult(value:tObterOperacaoTransporteResponse);
begin
  FObterOperacaoPorCIOTResult := value;
  FObterOperacaoPorCIOTResult_IsSet_ := true;
end;

procedure tObterOperacaoPorCIOTResponse_ObterOperacaoPorCIOTResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterOperacaoPorCIOTResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if ObterOperacaoPorCIOTResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterOperacaoPorCIOTResponse_ObterOperacaoPorCIOTResponse_ObterOperacaoPorCIOTResult));
    FObterOperacaoPorCIOTResult.save( xn );
  end;
end; // procedure save

{ tObterOperacaoPorCIOTResponse }

function tObterOperacaoPorCIOTResponse.GetAsString: string;
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

class function tObterOperacaoPorCIOTResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterOperacaoPorCIOTResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterOperacaoPorCIOTResponse.CreateFromXmlString(s: string): tObterOperacaoPorCIOTResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterOperacaoPorCIOTResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterOperacaoPorCIOTResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tObterOperacaoPorCIOTResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterOperacaoPorCIOTResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterOperacaoPorCIOTResponse')
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

{ tObterOperacaoPorCIOT_ObterOperacaoPorCIOT }

function tObterOperacaoPorCIOT_ObterOperacaoPorCIOT.GetAsString: string;
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

class function tObterOperacaoPorCIOT_ObterOperacaoPorCIOT._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterOperacaoPorCIOT_ObterOperacaoPorCIOT.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterOperacaoPorCIOT_ObterOperacaoPorCIOT.CreateFromXmlString(s: string): tObterOperacaoPorCIOT_ObterOperacaoPorCIOT;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterOperacaoPorCIOT_ObterOperacaoPorCIOT.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterOperacaoPorCIOT_ObterOperacaoPorCIOT.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterOperacaoPorCIOT_ObterOperacaoPorCIOT_CIOT) then
      CIOT :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterOperacaoPorCIOT_ObterOperacaoPorCIOT.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterOperacaoPorCIOT_ObterOperacaoPorCIOT.SetCIOT(value:string);
begin
  FCIOT := value;
  FCIOT_IsSet_ := true;
end;

procedure tObterOperacaoPorCIOT_ObterOperacaoPorCIOT.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterOperacaoPorCIOT')
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
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterOperacaoPorCIOT_ObterOperacaoPorCIOT_CIOT));
    xn.text := FCIOT;
  end;
end; // procedure save

{ tObterOperacaoPorCIOT }

function tObterOperacaoPorCIOT.GetAsString: string;
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

class function tObterOperacaoPorCIOT._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterOperacaoPorCIOT.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterOperacaoPorCIOT.CreateFromXmlString(s: string): tObterOperacaoPorCIOT;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterOperacaoPorCIOT.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterOperacaoPorCIOT.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tObterOperacaoPorCIOT.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterOperacaoPorCIOT.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterOperacaoPorCIOT')
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

{ tObterOperacaoPorIdResponse_ObterOperacaoPorIdResponse }

function tObterOperacaoPorIdResponse_ObterOperacaoPorIdResponse.GetAsString: string;
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

class function tObterOperacaoPorIdResponse_ObterOperacaoPorIdResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterOperacaoPorIdResponse_ObterOperacaoPorIdResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterOperacaoPorIdResponse_ObterOperacaoPorIdResponse.CreateFromXmlString(s: string): tObterOperacaoPorIdResponse_ObterOperacaoPorIdResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterOperacaoPorIdResponse_ObterOperacaoPorIdResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterOperacaoPorIdResponse_ObterOperacaoPorIdResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterOperacaoPorIdResponse_ObterOperacaoPorIdResponse_ObterOperacaoPorIdResult) then
      ObterOperacaoPorIdResult :=  tObterOperacaoTransporteResponse.create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterOperacaoPorIdResponse_ObterOperacaoPorIdResponse.Destroy;
begin
  if assigned(FObterOperacaoPorIdResult) then  FObterOperacaoPorIdResult.free;
  inherited;
end; // destructor ...

procedure tObterOperacaoPorIdResponse_ObterOperacaoPorIdResponse.SetObterOperacaoPorIdResult(value:tObterOperacaoTransporteResponse);
begin
  FObterOperacaoPorIdResult := value;
  FObterOperacaoPorIdResult_IsSet_ := true;
end;

procedure tObterOperacaoPorIdResponse_ObterOperacaoPorIdResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterOperacaoPorIdResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if ObterOperacaoPorIdResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterOperacaoPorIdResponse_ObterOperacaoPorIdResponse_ObterOperacaoPorIdResult));
    FObterOperacaoPorIdResult.save( xn );
  end;
end; // procedure save

{ tObterOperacaoPorIdResponse }

function tObterOperacaoPorIdResponse.GetAsString: string;
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

class function tObterOperacaoPorIdResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterOperacaoPorIdResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterOperacaoPorIdResponse.CreateFromXmlString(s: string): tObterOperacaoPorIdResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterOperacaoPorIdResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterOperacaoPorIdResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tObterOperacaoPorIdResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterOperacaoPorIdResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterOperacaoPorIdResponse')
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

{ tObterOperacaoPorId_ObterOperacaoPorId }

function tObterOperacaoPorId_ObterOperacaoPorId.GetAsString: string;
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

class function tObterOperacaoPorId_ObterOperacaoPorId._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterOperacaoPorId_ObterOperacaoPorId.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterOperacaoPorId_ObterOperacaoPorId.CreateFromXmlString(s: string): tObterOperacaoPorId_ObterOperacaoPorId;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterOperacaoPorId_ObterOperacaoPorId.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterOperacaoPorId_ObterOperacaoPorId.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterOperacaoPorId_ObterOperacaoPorId_idOperacaoTransporte) then
      idOperacaoTransporte := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterOperacaoPorId_ObterOperacaoPorId.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterOperacaoPorId_ObterOperacaoPorId.SetidOperacaoTransporte(value:integer);
begin
  FidOperacaoTransporte := value;
  FidOperacaoTransporte_IsSet_ := true;
end;

procedure tObterOperacaoPorId_ObterOperacaoPorId.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterOperacaoPorId')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if idOperacaoTransporte_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterOperacaoPorId_ObterOperacaoPorId_idOperacaoTransporte));
    xn.text := IntToStr(FidOperacaoTransporte);
  end;
end; // procedure save

{ tObterOperacaoPorId }

function tObterOperacaoPorId.GetAsString: string;
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

class function tObterOperacaoPorId._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterOperacaoPorId.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterOperacaoPorId.CreateFromXmlString(s: string): tObterOperacaoPorId;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterOperacaoPorId.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterOperacaoPorId.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tObterOperacaoPorId.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterOperacaoPorId.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterOperacaoPorId')
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

{ tBuscarOperacaoTranporteParcelasResponse_BuscarOperacaoTranporteParcelasResponse }

function tBuscarOperacaoTranporteParcelasResponse_BuscarOperacaoTranporteParcelasResponse.GetAsString: string;
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

class function tBuscarOperacaoTranporteParcelasResponse_BuscarOperacaoTranporteParcelasResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarOperacaoTranporteParcelasResponse_BuscarOperacaoTranporteParcelasResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tBuscarOperacaoTranporteParcelasResponse_BuscarOperacaoTranporteParcelasResponse.CreateFromXmlString(s: string): tBuscarOperacaoTranporteParcelasResponse_BuscarOperacaoTranporteParcelasResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarOperacaoTranporteParcelasResponse_BuscarOperacaoTranporteParcelasResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarOperacaoTranporteParcelasResponse_BuscarOperacaoTranporteParcelasResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snBuscarOperacaoTranporteParcelasResponse_BuscarOperacaoTranporteParcelasResponse_BuscarOperacaoTranporteParcelasResult) then
      BuscarOperacaoTranporteParcelasResult :=  tBuscaOperacaoTransporteParcelasResponse.create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tBuscarOperacaoTranporteParcelasResponse_BuscarOperacaoTranporteParcelasResponse.Destroy;
begin
  if assigned(FBuscarOperacaoTranporteParcelasResult) then  FBuscarOperacaoTranporteParcelasResult.free;
  inherited;
end; // destructor ...

procedure tBuscarOperacaoTranporteParcelasResponse_BuscarOperacaoTranporteParcelasResponse.SetBuscarOperacaoTranporteParcelasResult(value:tBuscaOperacaoTransporteParcelasResponse);
begin
  FBuscarOperacaoTranporteParcelasResult := value;
  FBuscarOperacaoTranporteParcelasResult_IsSet_ := true;
end;

procedure tBuscarOperacaoTranporteParcelasResponse_BuscarOperacaoTranporteParcelasResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscarOperacaoTranporteParcelasResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if BuscarOperacaoTranporteParcelasResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarOperacaoTranporteParcelasResponse_BuscarOperacaoTranporteParcelasResponse_BuscarOperacaoTranporteParcelasResult));
    FBuscarOperacaoTranporteParcelasResult.save( xn );
  end;
end; // procedure save

{ tBuscarOperacaoTranporteParcelasResponse }

function tBuscarOperacaoTranporteParcelasResponse.GetAsString: string;
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

class function tBuscarOperacaoTranporteParcelasResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarOperacaoTranporteParcelasResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tBuscarOperacaoTranporteParcelasResponse.CreateFromXmlString(s: string): tBuscarOperacaoTranporteParcelasResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarOperacaoTranporteParcelasResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarOperacaoTranporteParcelasResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tBuscarOperacaoTranporteParcelasResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tBuscarOperacaoTranporteParcelasResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscarOperacaoTranporteParcelasResponse')
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

{ tBuscarOperacaoTranporteParcelas_BuscarOperacaoTranporteParcelas }

function tBuscarOperacaoTranporteParcelas_BuscarOperacaoTranporteParcelas.GetAsString: string;
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

class function tBuscarOperacaoTranporteParcelas_BuscarOperacaoTranporteParcelas._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarOperacaoTranporteParcelas_BuscarOperacaoTranporteParcelas.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tBuscarOperacaoTranporteParcelas_BuscarOperacaoTranporteParcelas.CreateFromXmlString(s: string): tBuscarOperacaoTranporteParcelas_BuscarOperacaoTranporteParcelas;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarOperacaoTranporteParcelas_BuscarOperacaoTranporteParcelas.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarOperacaoTranporteParcelas_BuscarOperacaoTranporteParcelas.Create(aRoot:tJanXMLNode2);
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
    if (sn = snBuscarOperacaoTranporteParcelas_BuscarOperacaoTranporteParcelas_idOperacaoTransporte) then
      idOperacaoTransporte := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tBuscarOperacaoTranporteParcelas_BuscarOperacaoTranporteParcelas.Destroy;
begin
  inherited;
end; // destructor ...

procedure tBuscarOperacaoTranporteParcelas_BuscarOperacaoTranporteParcelas.SetidOperacaoTransporte(value:integer);
begin
  FidOperacaoTransporte := value;
  FidOperacaoTransporte_IsSet_ := true;
end;

procedure tBuscarOperacaoTranporteParcelas_BuscarOperacaoTranporteParcelas.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscarOperacaoTranporteParcelas')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if idOperacaoTransporte_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarOperacaoTranporteParcelas_BuscarOperacaoTranporteParcelas_idOperacaoTransporte));
    xn.text := IntToStr(FidOperacaoTransporte);
  end;
end; // procedure save

{ tBuscarOperacaoTranporteParcelas }

function tBuscarOperacaoTranporteParcelas.GetAsString: string;
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

class function tBuscarOperacaoTranporteParcelas._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarOperacaoTranporteParcelas.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tBuscarOperacaoTranporteParcelas.CreateFromXmlString(s: string): tBuscarOperacaoTranporteParcelas;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarOperacaoTranporteParcelas.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarOperacaoTranporteParcelas.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tBuscarOperacaoTranporteParcelas.Destroy;
begin
  inherited;
end; // destructor ...

procedure tBuscarOperacaoTranporteParcelas.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscarOperacaoTranporteParcelas')
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

{ tBuscarOperacaoTranporteParcelasPorPeriodoResponse_BuscarOperacaoTranporteParcelasPorPeriodoResponse }

function tBuscarOperacaoTranporteParcelasPorPeriodoResponse_BuscarOperacaoTranporteParcelasPorPeriodoResponse.GetAsString: string;
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

class function tBuscarOperacaoTranporteParcelasPorPeriodoResponse_BuscarOperacaoTranporteParcelasPorPeriodoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarOperacaoTranporteParcelasPorPeriodoResponse_BuscarOperacaoTranporteParcelasPorPeriodoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tBuscarOperacaoTranporteParcelasPorPeriodoResponse_BuscarOperacaoTranporteParcelasPorPeriodoResponse.CreateFromXmlString(s: string): tBuscarOperacaoTranporteParcelasPorPeriodoResponse_BuscarOperacaoTranporteParcelasPorPeriodoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarOperacaoTranporteParcelasPorPeriodoResponse_BuscarOperacaoTranporteParcelasPorPeriodoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarOperacaoTranporteParcelasPorPeriodoResponse_BuscarOperacaoTranporteParcelasPorPeriodoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snBuscarOperacaoTranporteParcelasPorPeriodoResponse_BuscarOperacaoTranporteParcelasPorPeriodoResponse_BuscarOperacaoTranporteParcelasPorPeriodoResult) then
      BuscarOperacaoTranporteParcelasPorPeriodoResult :=  tBuscaOperacaoTransporteParcelasResponse.create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tBuscarOperacaoTranporteParcelasPorPeriodoResponse_BuscarOperacaoTranporteParcelasPorPeriodoResponse.Destroy;
begin
  if assigned(FBuscarOperacaoTranporteParcelasPorPeriodoResult) then  FBuscarOperacaoTranporteParcelasPorPeriodoResult.free;
  inherited;
end; // destructor ...

procedure tBuscarOperacaoTranporteParcelasPorPeriodoResponse_BuscarOperacaoTranporteParcelasPorPeriodoResponse.SetBuscarOperacaoTranporteParcelasPorPeriodoResult(value:tBuscaOperacaoTransporteParcelasResponse);
begin
  FBuscarOperacaoTranporteParcelasPorPeriodoResult := value;
  FBuscarOperacaoTranporteParcelasPorPeriodoResult_IsSet_ := true;
end;

procedure tBuscarOperacaoTranporteParcelasPorPeriodoResponse_BuscarOperacaoTranporteParcelasPorPeriodoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscarOperacaoTranporteParcelasPorPeriodoResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if BuscarOperacaoTranporteParcelasPorPeriodoResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarOperacaoTranporteParcelasPorPeriodoResponse_BuscarOperacaoTranporteParcelasPorPeriodoResponse_BuscarOperacaoTranporteParcelasPorPeriodoResult));
    FBuscarOperacaoTranporteParcelasPorPeriodoResult.save( xn );
  end;
end; // procedure save

{ tBuscarOperacaoTranporteParcelasPorPeriodoResponse }

function tBuscarOperacaoTranporteParcelasPorPeriodoResponse.GetAsString: string;
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

class function tBuscarOperacaoTranporteParcelasPorPeriodoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarOperacaoTranporteParcelasPorPeriodoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tBuscarOperacaoTranporteParcelasPorPeriodoResponse.CreateFromXmlString(s: string): tBuscarOperacaoTranporteParcelasPorPeriodoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarOperacaoTranporteParcelasPorPeriodoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarOperacaoTranporteParcelasPorPeriodoResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tBuscarOperacaoTranporteParcelasPorPeriodoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tBuscarOperacaoTranporteParcelasPorPeriodoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscarOperacaoTranporteParcelasPorPeriodoResponse')
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

{ tBuscarOperacaoTranporteParcelasPorPeriodo_BuscarOperacaoTranporteParcelasPorPeriodo }

function tBuscarOperacaoTranporteParcelasPorPeriodo_BuscarOperacaoTranporteParcelasPorPeriodo.GetAsString: string;
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

class function tBuscarOperacaoTranporteParcelasPorPeriodo_BuscarOperacaoTranporteParcelasPorPeriodo._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarOperacaoTranporteParcelasPorPeriodo_BuscarOperacaoTranporteParcelasPorPeriodo.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tBuscarOperacaoTranporteParcelasPorPeriodo_BuscarOperacaoTranporteParcelasPorPeriodo.CreateFromXmlString(s: string): tBuscarOperacaoTranporteParcelasPorPeriodo_BuscarOperacaoTranporteParcelasPorPeriodo;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarOperacaoTranporteParcelasPorPeriodo_BuscarOperacaoTranporteParcelasPorPeriodo.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarOperacaoTranporteParcelasPorPeriodo_BuscarOperacaoTranporteParcelasPorPeriodo.Create(aRoot:tJanXMLNode2);
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
    if (sn = snBuscarOperacaoTranporteParcelasPorPeriodo_BuscarOperacaoTranporteParcelasPorPeriodo_dataInicio) then
      dataInicio := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snBuscarOperacaoTranporteParcelasPorPeriodo_BuscarOperacaoTranporteParcelasPorPeriodo_dataFim) then
      dataFim := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snBuscarOperacaoTranporteParcelasPorPeriodo_BuscarOperacaoTranporteParcelasPorPeriodo_statusParcela) then
      statusParcela := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tBuscarOperacaoTranporteParcelasPorPeriodo_BuscarOperacaoTranporteParcelasPorPeriodo.Destroy;
begin
  inherited;
end; // destructor ...

procedure tBuscarOperacaoTranporteParcelasPorPeriodo_BuscarOperacaoTranporteParcelasPorPeriodo.SetdataInicio(value:tDateTime);
begin
  FdataInicio := value;
  FdataInicio_IsSet_ := true;
end;

procedure tBuscarOperacaoTranporteParcelasPorPeriodo_BuscarOperacaoTranporteParcelasPorPeriodo.SetdataFim(value:tDateTime);
begin
  FdataFim := value;
  FdataFim_IsSet_ := true;
end;

procedure tBuscarOperacaoTranporteParcelasPorPeriodo_BuscarOperacaoTranporteParcelasPorPeriodo.SetstatusParcela(value:integer);
begin
  FstatusParcela := value;
  FstatusParcela_IsSet_ := true;
end;

procedure tBuscarOperacaoTranporteParcelasPorPeriodo_BuscarOperacaoTranporteParcelasPorPeriodo.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscarOperacaoTranporteParcelasPorPeriodo')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if dataInicio_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarOperacaoTranporteParcelasPorPeriodo_BuscarOperacaoTranporteParcelasPorPeriodo_dataInicio));
    xn.text := DateTimeToXMLDateTime(FdataInicio);
  end;
  if dataFim_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarOperacaoTranporteParcelasPorPeriodo_BuscarOperacaoTranporteParcelasPorPeriodo_dataFim));
    xn.text := DateTimeToXMLDateTime(FdataFim);
  end;
  if statusParcela_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarOperacaoTranporteParcelasPorPeriodo_BuscarOperacaoTranporteParcelasPorPeriodo_statusParcela));
    xn.text := IntToStr(FstatusParcela);
  end;
end; // procedure save

{ tBuscarOperacaoTranporteParcelasPorPeriodo }

function tBuscarOperacaoTranporteParcelasPorPeriodo.GetAsString: string;
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

class function tBuscarOperacaoTranporteParcelasPorPeriodo._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarOperacaoTranporteParcelasPorPeriodo.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tBuscarOperacaoTranporteParcelasPorPeriodo.CreateFromXmlString(s: string): tBuscarOperacaoTranporteParcelasPorPeriodo;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarOperacaoTranporteParcelasPorPeriodo.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarOperacaoTranporteParcelasPorPeriodo.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tBuscarOperacaoTranporteParcelasPorPeriodo.Destroy;
begin
  inherited;
end; // destructor ...

procedure tBuscarOperacaoTranporteParcelasPorPeriodo.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscarOperacaoTranporteParcelasPorPeriodo')
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

{ tObterNaturezaCargaResponse_ObterNaturezaCargaResponse }

function tObterNaturezaCargaResponse_ObterNaturezaCargaResponse.GetAsString: string;
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

class function tObterNaturezaCargaResponse_ObterNaturezaCargaResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterNaturezaCargaResponse_ObterNaturezaCargaResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterNaturezaCargaResponse_ObterNaturezaCargaResponse.CreateFromXmlString(s: string): tObterNaturezaCargaResponse_ObterNaturezaCargaResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterNaturezaCargaResponse_ObterNaturezaCargaResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterNaturezaCargaResponse_ObterNaturezaCargaResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterNaturezaCargaResponse_ObterNaturezaCargaResponse_ObterNaturezaCargaResult) then
      ObterNaturezaCargaResult := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterNaturezaCargaResponse_ObterNaturezaCargaResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterNaturezaCargaResponse_ObterNaturezaCargaResponse.SetObterNaturezaCargaResult(value:integer);
begin
  FObterNaturezaCargaResult := value;
  FObterNaturezaCargaResult_IsSet_ := true;
end;

procedure tObterNaturezaCargaResponse_ObterNaturezaCargaResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterNaturezaCargaResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if ObterNaturezaCargaResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterNaturezaCargaResponse_ObterNaturezaCargaResponse_ObterNaturezaCargaResult));
    xn.text := IntToStr(FObterNaturezaCargaResult);
  end;
end; // procedure save

{ tObterNaturezaCargaResponse }

function tObterNaturezaCargaResponse.GetAsString: string;
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

class function tObterNaturezaCargaResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterNaturezaCargaResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterNaturezaCargaResponse.CreateFromXmlString(s: string): tObterNaturezaCargaResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterNaturezaCargaResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterNaturezaCargaResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tObterNaturezaCargaResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterNaturezaCargaResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterNaturezaCargaResponse')
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

{ tObterNaturezaCarga_ObterNaturezaCarga }

function tObterNaturezaCarga_ObterNaturezaCarga.GetAsString: string;
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

class function tObterNaturezaCarga_ObterNaturezaCarga._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterNaturezaCarga_ObterNaturezaCarga.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterNaturezaCarga_ObterNaturezaCarga.CreateFromXmlString(s: string): tObterNaturezaCarga_ObterNaturezaCarga;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterNaturezaCarga_ObterNaturezaCarga.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterNaturezaCarga_ObterNaturezaCarga.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterNaturezaCarga_ObterNaturezaCarga_NCM) then
      NCM :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterNaturezaCarga_ObterNaturezaCarga.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterNaturezaCarga_ObterNaturezaCarga.SetNCM(value:string);
begin
  FNCM := value;
  FNCM_IsSet_ := true;
end;

procedure tObterNaturezaCarga_ObterNaturezaCarga.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterNaturezaCarga')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if NCM_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterNaturezaCarga_ObterNaturezaCarga_NCM));
    xn.text := FNCM;
  end;
end; // procedure save

{ tObterNaturezaCarga }

function tObterNaturezaCarga.GetAsString: string;
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

class function tObterNaturezaCarga._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterNaturezaCarga.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterNaturezaCarga.CreateFromXmlString(s: string): tObterNaturezaCarga;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterNaturezaCarga.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterNaturezaCarga.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tObterNaturezaCarga.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterNaturezaCarga.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterNaturezaCarga')
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

{ tObterMunicipioPorCodigoIBGEResponse_ObterMunicipioPorCodigoIBGEResponse }

function tObterMunicipioPorCodigoIBGEResponse_ObterMunicipioPorCodigoIBGEResponse.GetAsString: string;
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

class function tObterMunicipioPorCodigoIBGEResponse_ObterMunicipioPorCodigoIBGEResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterMunicipioPorCodigoIBGEResponse_ObterMunicipioPorCodigoIBGEResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterMunicipioPorCodigoIBGEResponse_ObterMunicipioPorCodigoIBGEResponse.CreateFromXmlString(s: string): tObterMunicipioPorCodigoIBGEResponse_ObterMunicipioPorCodigoIBGEResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterMunicipioPorCodigoIBGEResponse_ObterMunicipioPorCodigoIBGEResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterMunicipioPorCodigoIBGEResponse_ObterMunicipioPorCodigoIBGEResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterMunicipioPorCodigoIBGEResponse_ObterMunicipioPorCodigoIBGEResponse_ObterMunicipioPorCodigoIBGEResult) then
      ObterMunicipioPorCodigoIBGEResult := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterMunicipioPorCodigoIBGEResponse_ObterMunicipioPorCodigoIBGEResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterMunicipioPorCodigoIBGEResponse_ObterMunicipioPorCodigoIBGEResponse.SetObterMunicipioPorCodigoIBGEResult(value:integer);
begin
  FObterMunicipioPorCodigoIBGEResult := value;
  FObterMunicipioPorCodigoIBGEResult_IsSet_ := true;
end;

procedure tObterMunicipioPorCodigoIBGEResponse_ObterMunicipioPorCodigoIBGEResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterMunicipioPorCodigoIBGEResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if ObterMunicipioPorCodigoIBGEResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterMunicipioPorCodigoIBGEResponse_ObterMunicipioPorCodigoIBGEResponse_ObterMunicipioPorCodigoIBGEResult));
    xn.text := IntToStr(FObterMunicipioPorCodigoIBGEResult);
  end;
end; // procedure save

{ tObterMunicipioPorCodigoIBGEResponse }

function tObterMunicipioPorCodigoIBGEResponse.GetAsString: string;
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

class function tObterMunicipioPorCodigoIBGEResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterMunicipioPorCodigoIBGEResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterMunicipioPorCodigoIBGEResponse.CreateFromXmlString(s: string): tObterMunicipioPorCodigoIBGEResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterMunicipioPorCodigoIBGEResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterMunicipioPorCodigoIBGEResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tObterMunicipioPorCodigoIBGEResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterMunicipioPorCodigoIBGEResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterMunicipioPorCodigoIBGEResponse')
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

{ tObterMunicipioPorCodigoIBGE_ObterMunicipioPorCodigoIBGE }

function tObterMunicipioPorCodigoIBGE_ObterMunicipioPorCodigoIBGE.GetAsString: string;
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

class function tObterMunicipioPorCodigoIBGE_ObterMunicipioPorCodigoIBGE._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterMunicipioPorCodigoIBGE_ObterMunicipioPorCodigoIBGE.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterMunicipioPorCodigoIBGE_ObterMunicipioPorCodigoIBGE.CreateFromXmlString(s: string): tObterMunicipioPorCodigoIBGE_ObterMunicipioPorCodigoIBGE;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterMunicipioPorCodigoIBGE_ObterMunicipioPorCodigoIBGE.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterMunicipioPorCodigoIBGE_ObterMunicipioPorCodigoIBGE.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterMunicipioPorCodigoIBGE_ObterMunicipioPorCodigoIBGE_codigoIBGE) then
      codigoIBGE := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterMunicipioPorCodigoIBGE_ObterMunicipioPorCodigoIBGE.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterMunicipioPorCodigoIBGE_ObterMunicipioPorCodigoIBGE.SetcodigoIBGE(value:integer);
begin
  FcodigoIBGE := value;
  FcodigoIBGE_IsSet_ := true;
end;

procedure tObterMunicipioPorCodigoIBGE_ObterMunicipioPorCodigoIBGE.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterMunicipioPorCodigoIBGE')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if codigoIBGE_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterMunicipioPorCodigoIBGE_ObterMunicipioPorCodigoIBGE_codigoIBGE));
    xn.text := IntToStr(FcodigoIBGE);
  end;
end; // procedure save

{ tObterMunicipioPorCodigoIBGE }

function tObterMunicipioPorCodigoIBGE.GetAsString: string;
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

class function tObterMunicipioPorCodigoIBGE._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterMunicipioPorCodigoIBGE.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterMunicipioPorCodigoIBGE.CreateFromXmlString(s: string): tObterMunicipioPorCodigoIBGE;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterMunicipioPorCodigoIBGE.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterMunicipioPorCodigoIBGE.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tObterMunicipioPorCodigoIBGE.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterMunicipioPorCodigoIBGE.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterMunicipioPorCodigoIBGE')
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

{ tObterMunicipioResponse_ObterMunicipioResponse }

function tObterMunicipioResponse_ObterMunicipioResponse.GetAsString: string;
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

class function tObterMunicipioResponse_ObterMunicipioResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterMunicipioResponse_ObterMunicipioResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterMunicipioResponse_ObterMunicipioResponse.CreateFromXmlString(s: string): tObterMunicipioResponse_ObterMunicipioResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterMunicipioResponse_ObterMunicipioResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterMunicipioResponse_ObterMunicipioResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterMunicipioResponse_ObterMunicipioResponse_ObterMunicipioResult) then
      ObterMunicipioResult := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterMunicipioResponse_ObterMunicipioResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterMunicipioResponse_ObterMunicipioResponse.SetObterMunicipioResult(value:integer);
begin
  FObterMunicipioResult := value;
  FObterMunicipioResult_IsSet_ := true;
end;

procedure tObterMunicipioResponse_ObterMunicipioResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterMunicipioResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if ObterMunicipioResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterMunicipioResponse_ObterMunicipioResponse_ObterMunicipioResult));
    xn.text := IntToStr(FObterMunicipioResult);
  end;
end; // procedure save

{ tObterMunicipioResponse }

function tObterMunicipioResponse.GetAsString: string;
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

class function tObterMunicipioResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterMunicipioResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterMunicipioResponse.CreateFromXmlString(s: string): tObterMunicipioResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterMunicipioResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterMunicipioResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tObterMunicipioResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterMunicipioResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterMunicipioResponse')
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

{ tObterMunicipio_ObterMunicipio }

function tObterMunicipio_ObterMunicipio.GetAsString: string;
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

class function tObterMunicipio_ObterMunicipio._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterMunicipio_ObterMunicipio.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterMunicipio_ObterMunicipio.CreateFromXmlString(s: string): tObterMunicipio_ObterMunicipio;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterMunicipio_ObterMunicipio.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterMunicipio_ObterMunicipio.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterMunicipio_ObterMunicipio_nomeMunicipio) then
      nomeMunicipio :=  xn.text // string
    else if (sn = snObterMunicipio_ObterMunicipio_UF) then
      UF :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterMunicipio_ObterMunicipio.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterMunicipio_ObterMunicipio.SetnomeMunicipio(value:string);
begin
  FnomeMunicipio := value;
  FnomeMunicipio_IsSet_ := true;
end;

procedure tObterMunicipio_ObterMunicipio.SetUF(value:string);
begin
  FUF := value;
  FUF_IsSet_ := true;
end;

procedure tObterMunicipio_ObterMunicipio.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterMunicipio')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if nomeMunicipio_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterMunicipio_ObterMunicipio_nomeMunicipio));
    xn.text := FnomeMunicipio;
  end;
  if UF_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterMunicipio_ObterMunicipio_UF));
    xn.text := FUF;
  end;
end; // procedure save

{ tObterMunicipio }

function tObterMunicipio.GetAsString: string;
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

class function tObterMunicipio._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterMunicipio.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterMunicipio.CreateFromXmlString(s: string): tObterMunicipio;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterMunicipio.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterMunicipio.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tObterMunicipio.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterMunicipio.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterMunicipio')
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

{ tObterContratadoResponse_ObterContratadoResponse }

function tObterContratadoResponse_ObterContratadoResponse.GetAsString: string;
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

class function tObterContratadoResponse_ObterContratadoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterContratadoResponse_ObterContratadoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterContratadoResponse_ObterContratadoResponse.CreateFromXmlString(s: string): tObterContratadoResponse_ObterContratadoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterContratadoResponse_ObterContratadoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterContratadoResponse_ObterContratadoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterContratadoResponse_ObterContratadoResponse_ObterContratadoResult) then
      ObterContratadoResult := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterContratadoResponse_ObterContratadoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterContratadoResponse_ObterContratadoResponse.SetObterContratadoResult(value:integer);
begin
  FObterContratadoResult := value;
  FObterContratadoResult_IsSet_ := true;
end;

procedure tObterContratadoResponse_ObterContratadoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterContratadoResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if ObterContratadoResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterContratadoResponse_ObterContratadoResponse_ObterContratadoResult));
    xn.text := IntToStr(FObterContratadoResult);
  end;
end; // procedure save

{ tObterContratadoResponse }

function tObterContratadoResponse.GetAsString: string;
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

class function tObterContratadoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterContratadoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterContratadoResponse.CreateFromXmlString(s: string): tObterContratadoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterContratadoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterContratadoResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tObterContratadoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterContratadoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterContratadoResponse')
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

{ tObterContratado_ObterContratado }

function tObterContratado_ObterContratado.GetAsString: string;
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

class function tObterContratado_ObterContratado._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterContratado_ObterContratado.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterContratado_ObterContratado.CreateFromXmlString(s: string): tObterContratado_ObterContratado;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterContratado_ObterContratado.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterContratado_ObterContratado.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterContratado_ObterContratado_CPF) then
      CPF :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterContratado_ObterContratado.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterContratado_ObterContratado.SetCPF(value:string);
begin
  FCPF := value;
  FCPF_IsSet_ := true;
end;

procedure tObterContratado_ObterContratado.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterContratado')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if CPF_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterContratado_ObterContratado_CPF));
    xn.text := FCPF;
  end;
end; // procedure save

{ tObterContratado }

function tObterContratado.GetAsString: string;
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

class function tObterContratado._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterContratado.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterContratado.CreateFromXmlString(s: string): tObterContratado;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterContratado.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterContratado.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tObterContratado.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterContratado.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterContratado')
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

{ tFinalizarOperacaoResponse_FinalizarOperacaoResponse }

function tFinalizarOperacaoResponse_FinalizarOperacaoResponse.GetAsString: string;
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

class function tFinalizarOperacaoResponse_FinalizarOperacaoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tFinalizarOperacaoResponse_FinalizarOperacaoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tFinalizarOperacaoResponse_FinalizarOperacaoResponse.CreateFromXmlString(s: string): tFinalizarOperacaoResponse_FinalizarOperacaoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tFinalizarOperacaoResponse_FinalizarOperacaoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tFinalizarOperacaoResponse_FinalizarOperacaoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snFinalizarOperacaoResponse_FinalizarOperacaoResponse_FinalizarOperacaoResult) then
      FinalizarOperacaoResult :=  tFinalizacaoOperacaoTransporteResponse.create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tFinalizarOperacaoResponse_FinalizarOperacaoResponse.Destroy;
begin
  if assigned(FFinalizarOperacaoResult) then  FFinalizarOperacaoResult.free;
  inherited;
end; // destructor ...

procedure tFinalizarOperacaoResponse_FinalizarOperacaoResponse.SetFinalizarOperacaoResult(value:tFinalizacaoOperacaoTransporteResponse);
begin
  FFinalizarOperacaoResult := value;
  FFinalizarOperacaoResult_IsSet_ := true;
end;

procedure tFinalizarOperacaoResponse_FinalizarOperacaoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'FinalizarOperacaoResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if FinalizarOperacaoResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snFinalizarOperacaoResponse_FinalizarOperacaoResponse_FinalizarOperacaoResult));
    FFinalizarOperacaoResult.save( xn );
  end;
end; // procedure save

{ tFinalizarOperacaoResponse }

function tFinalizarOperacaoResponse.GetAsString: string;
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

class function tFinalizarOperacaoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tFinalizarOperacaoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tFinalizarOperacaoResponse.CreateFromXmlString(s: string): tFinalizarOperacaoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tFinalizarOperacaoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tFinalizarOperacaoResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tFinalizarOperacaoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tFinalizarOperacaoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'FinalizarOperacaoResponse')
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

{ tFinalizarOperacao_FinalizarOperacao }

function tFinalizarOperacao_FinalizarOperacao.GetAsString: string;
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

class function tFinalizarOperacao_FinalizarOperacao._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tFinalizarOperacao_FinalizarOperacao.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tFinalizarOperacao_FinalizarOperacao.CreateFromXmlString(s: string): tFinalizarOperacao_FinalizarOperacao;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tFinalizarOperacao_FinalizarOperacao.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tFinalizarOperacao_FinalizarOperacao.Create(aRoot:tJanXMLNode2);
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
    if (sn = snFinalizarOperacao_FinalizarOperacao_idOperacao) then
      idOperacao := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tFinalizarOperacao_FinalizarOperacao.Destroy;
begin
  inherited;
end; // destructor ...

procedure tFinalizarOperacao_FinalizarOperacao.SetidOperacao(value:integer);
begin
  FidOperacao := value;
  FidOperacao_IsSet_ := true;
end;

procedure tFinalizarOperacao_FinalizarOperacao.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'FinalizarOperacao')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if idOperacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snFinalizarOperacao_FinalizarOperacao_idOperacao));
    xn.text := IntToStr(FidOperacao);
  end;
end; // procedure save

{ tFinalizarOperacao }

function tFinalizarOperacao.GetAsString: string;
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

class function tFinalizarOperacao._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tFinalizarOperacao.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tFinalizarOperacao.CreateFromXmlString(s: string): tFinalizarOperacao;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tFinalizarOperacao.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tFinalizarOperacao.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tFinalizarOperacao.Destroy;
begin
  inherited;
end; // destructor ...

procedure tFinalizarOperacao.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'FinalizarOperacao')
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

{ tEncerrarOperacaoResponse_EncerrarOperacaoResponse }

function tEncerrarOperacaoResponse_EncerrarOperacaoResponse.GetAsString: string;
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

class function tEncerrarOperacaoResponse_EncerrarOperacaoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tEncerrarOperacaoResponse_EncerrarOperacaoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tEncerrarOperacaoResponse_EncerrarOperacaoResponse.CreateFromXmlString(s: string): tEncerrarOperacaoResponse_EncerrarOperacaoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tEncerrarOperacaoResponse_EncerrarOperacaoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tEncerrarOperacaoResponse_EncerrarOperacaoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snEncerrarOperacaoResponse_EncerrarOperacaoResponse_EncerrarOperacaoResult) then
      EncerrarOperacaoResult :=  tEncerramentoOperacaoTransporteResponse.create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tEncerrarOperacaoResponse_EncerrarOperacaoResponse.Destroy;
begin
  if assigned(FEncerrarOperacaoResult) then  FEncerrarOperacaoResult.free;
  inherited;
end; // destructor ...

procedure tEncerrarOperacaoResponse_EncerrarOperacaoResponse.SetEncerrarOperacaoResult(value:tEncerramentoOperacaoTransporteResponse);
begin
  FEncerrarOperacaoResult := value;
  FEncerrarOperacaoResult_IsSet_ := true;
end;

procedure tEncerrarOperacaoResponse_EncerrarOperacaoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'EncerrarOperacaoResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if EncerrarOperacaoResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEncerrarOperacaoResponse_EncerrarOperacaoResponse_EncerrarOperacaoResult));
    FEncerrarOperacaoResult.save( xn );
  end;
end; // procedure save

{ tEncerrarOperacaoResponse }

function tEncerrarOperacaoResponse.GetAsString: string;
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

class function tEncerrarOperacaoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tEncerrarOperacaoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tEncerrarOperacaoResponse.CreateFromXmlString(s: string): tEncerrarOperacaoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tEncerrarOperacaoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tEncerrarOperacaoResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tEncerrarOperacaoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tEncerrarOperacaoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'EncerrarOperacaoResponse')
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

{ tEncerrarOperacao_EncerrarOperacao }

function tEncerrarOperacao_EncerrarOperacao.GetAsString: string;
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

class function tEncerrarOperacao_EncerrarOperacao._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tEncerrarOperacao_EncerrarOperacao.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tEncerrarOperacao_EncerrarOperacao.CreateFromXmlString(s: string): tEncerrarOperacao_EncerrarOperacao;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tEncerrarOperacao_EncerrarOperacao.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tEncerrarOperacao_EncerrarOperacao.Create(aRoot:tJanXMLNode2);
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
    if (sn = snEncerrarOperacao_EncerrarOperacao_encerramentoRequest) then
      encerramentoRequest :=  tEncerramentoOperacaoTransporteRequest.create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tEncerrarOperacao_EncerrarOperacao.Destroy;
begin
  if assigned(FencerramentoRequest) then  FencerramentoRequest.free;
  inherited;
end; // destructor ...

procedure tEncerrarOperacao_EncerrarOperacao.SetencerramentoRequest(value:tEncerramentoOperacaoTransporteRequest);
begin
  FencerramentoRequest := value;
  FencerramentoRequest_IsSet_ := true;
end;

procedure tEncerrarOperacao_EncerrarOperacao.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'EncerrarOperacao')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if encerramentoRequest_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEncerrarOperacao_EncerrarOperacao_encerramentoRequest));
    FencerramentoRequest.save( xn );
  end;
end; // procedure save

{ tEncerrarOperacao }

function tEncerrarOperacao.GetAsString: string;
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

class function tEncerrarOperacao._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tEncerrarOperacao.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tEncerrarOperacao.CreateFromXmlString(s: string): tEncerrarOperacao;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tEncerrarOperacao.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tEncerrarOperacao.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tEncerrarOperacao.Destroy;
begin
  inherited;
end; // destructor ...

procedure tEncerrarOperacao.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'EncerrarOperacao')
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

{ tRetificarPlacasOperacaoResponse_RetificarPlacasOperacaoResponse }

function tRetificarPlacasOperacaoResponse_RetificarPlacasOperacaoResponse.GetAsString: string;
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

class function tRetificarPlacasOperacaoResponse_RetificarPlacasOperacaoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tRetificarPlacasOperacaoResponse_RetificarPlacasOperacaoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tRetificarPlacasOperacaoResponse_RetificarPlacasOperacaoResponse.CreateFromXmlString(s: string): tRetificarPlacasOperacaoResponse_RetificarPlacasOperacaoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tRetificarPlacasOperacaoResponse_RetificarPlacasOperacaoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tRetificarPlacasOperacaoResponse_RetificarPlacasOperacaoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snRetificarPlacasOperacaoResponse_RetificarPlacasOperacaoResponse_RetificarPlacasOperacaoResult) then
      RetificarPlacasOperacaoResult :=  tRetificacaoOperacaoTransporteResponse.create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tRetificarPlacasOperacaoResponse_RetificarPlacasOperacaoResponse.Destroy;
begin
  if assigned(FRetificarPlacasOperacaoResult) then  FRetificarPlacasOperacaoResult.free;
  inherited;
end; // destructor ...

procedure tRetificarPlacasOperacaoResponse_RetificarPlacasOperacaoResponse.SetRetificarPlacasOperacaoResult(value:tRetificacaoOperacaoTransporteResponse);
begin
  FRetificarPlacasOperacaoResult := value;
  FRetificarPlacasOperacaoResult_IsSet_ := true;
end;

procedure tRetificarPlacasOperacaoResponse_RetificarPlacasOperacaoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'RetificarPlacasOperacaoResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if RetificarPlacasOperacaoResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetificarPlacasOperacaoResponse_RetificarPlacasOperacaoResponse_RetificarPlacasOperacaoResult));
    FRetificarPlacasOperacaoResult.save( xn );
  end;
end; // procedure save

{ tRetificarPlacasOperacaoResponse }

function tRetificarPlacasOperacaoResponse.GetAsString: string;
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

class function tRetificarPlacasOperacaoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tRetificarPlacasOperacaoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tRetificarPlacasOperacaoResponse.CreateFromXmlString(s: string): tRetificarPlacasOperacaoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tRetificarPlacasOperacaoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tRetificarPlacasOperacaoResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tRetificarPlacasOperacaoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tRetificarPlacasOperacaoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'RetificarPlacasOperacaoResponse')
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

{ tRetificarPlacasOperacao_RetificarPlacasOperacao }

function tRetificarPlacasOperacao_RetificarPlacasOperacao.GetAsString: string;
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

class function tRetificarPlacasOperacao_RetificarPlacasOperacao._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tRetificarPlacasOperacao_RetificarPlacasOperacao.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tRetificarPlacasOperacao_RetificarPlacasOperacao.CreateFromXmlString(s: string): tRetificarPlacasOperacao_RetificarPlacasOperacao;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tRetificarPlacasOperacao_RetificarPlacasOperacao.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tRetificarPlacasOperacao_RetificarPlacasOperacao.Create(aRoot:tJanXMLNode2);
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
    if (sn = snRetificarPlacasOperacao_RetificarPlacasOperacao_retificacaoPlacasRequest) then
      retificacaoPlacasRequest :=  tRetificacaoPlacasOperacaoTransporteRequest.create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tRetificarPlacasOperacao_RetificarPlacasOperacao.Destroy;
begin
  if assigned(FretificacaoPlacasRequest) then  FretificacaoPlacasRequest.free;
  inherited;
end; // destructor ...

procedure tRetificarPlacasOperacao_RetificarPlacasOperacao.SetretificacaoPlacasRequest(value:tRetificacaoPlacasOperacaoTransporteRequest);
begin
  FretificacaoPlacasRequest := value;
  FretificacaoPlacasRequest_IsSet_ := true;
end;

procedure tRetificarPlacasOperacao_RetificarPlacasOperacao.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'RetificarPlacasOperacao')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if retificacaoPlacasRequest_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetificarPlacasOperacao_RetificarPlacasOperacao_retificacaoPlacasRequest));
    FretificacaoPlacasRequest.save( xn );
  end;
end; // procedure save

{ tRetificarPlacasOperacao }

function tRetificarPlacasOperacao.GetAsString: string;
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

class function tRetificarPlacasOperacao._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tRetificarPlacasOperacao.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tRetificarPlacasOperacao.CreateFromXmlString(s: string): tRetificarPlacasOperacao;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tRetificarPlacasOperacao.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tRetificarPlacasOperacao.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tRetificarPlacasOperacao.Destroy;
begin
  inherited;
end; // destructor ...

procedure tRetificarPlacasOperacao.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'RetificarPlacasOperacao')
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

{ tRetificarOperacaoResponse_RetificarOperacaoResponse }

function tRetificarOperacaoResponse_RetificarOperacaoResponse.GetAsString: string;
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

class function tRetificarOperacaoResponse_RetificarOperacaoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tRetificarOperacaoResponse_RetificarOperacaoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tRetificarOperacaoResponse_RetificarOperacaoResponse.CreateFromXmlString(s: string): tRetificarOperacaoResponse_RetificarOperacaoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tRetificarOperacaoResponse_RetificarOperacaoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tRetificarOperacaoResponse_RetificarOperacaoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snRetificarOperacaoResponse_RetificarOperacaoResponse_RetificarOperacaoResult) then
      RetificarOperacaoResult :=  tRetificacaoOperacaoTransporteResponse.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tRetificarOperacaoResponse_RetificarOperacaoResponse.Destroy;
begin
  if assigned(FRetificarOperacaoResult) then  FRetificarOperacaoResult.free;
  inherited;
end; // destructor ...

procedure tRetificarOperacaoResponse_RetificarOperacaoResponse.SetRetificarOperacaoResult(value:tRetificacaoOperacaoTransporteResponse);
begin
  FRetificarOperacaoResult := value;
  FRetificarOperacaoResult_IsSet_ := true;
end;

procedure tRetificarOperacaoResponse_RetificarOperacaoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'RetificarOperacaoResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if RetificarOperacaoResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetificarOperacaoResponse_RetificarOperacaoResponse_RetificarOperacaoResult));
    FRetificarOperacaoResult.save( xn );
  end;
end; // procedure save

{ tRetificarOperacaoResponse }

function tRetificarOperacaoResponse.GetAsString: string;
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

class function tRetificarOperacaoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tRetificarOperacaoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tRetificarOperacaoResponse.CreateFromXmlString(s: string): tRetificarOperacaoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tRetificarOperacaoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tRetificarOperacaoResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tRetificarOperacaoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tRetificarOperacaoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'RetificarOperacaoResponse')
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

{ tRetificarOperacao_RetificarOperacao }

function tRetificarOperacao_RetificarOperacao.GetAsString: string;
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

class function tRetificarOperacao_RetificarOperacao._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tRetificarOperacao_RetificarOperacao.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tRetificarOperacao_RetificarOperacao.CreateFromXmlString(s: string): tRetificarOperacao_RetificarOperacao;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tRetificarOperacao_RetificarOperacao.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tRetificarOperacao_RetificarOperacao.Create(aRoot:tJanXMLNode2);
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
    if (sn = snRetificarOperacao_RetificarOperacao_retificacaoRequest) then
      retificacaoRequest :=  tRetificacaoOperacaoTransporteRequest.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tRetificarOperacao_RetificarOperacao.Destroy;
begin
  if assigned(FretificacaoRequest) then  FretificacaoRequest.free;
  inherited;
end; // destructor ...

procedure tRetificarOperacao_RetificarOperacao.SetretificacaoRequest(value:tRetificacaoOperacaoTransporteRequest);
begin
  FretificacaoRequest := value;
  FretificacaoRequest_IsSet_ := true;
end;

procedure tRetificarOperacao_RetificarOperacao.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'RetificarOperacao')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if retificacaoRequest_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetificarOperacao_RetificarOperacao_retificacaoRequest));
    FretificacaoRequest.save( xn );
  end;
end; // procedure save

{ tRetificarOperacao }

function tRetificarOperacao.GetAsString: string;
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

class function tRetificarOperacao._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tRetificarOperacao.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tRetificarOperacao.CreateFromXmlString(s: string): tRetificarOperacao;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tRetificarOperacao.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tRetificarOperacao.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tRetificarOperacao.Destroy;
begin
  inherited;
end; // destructor ...

procedure tRetificarOperacao.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'RetificarOperacao')
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

{ tCancelarOperacaoResponse_CancelarOperacaoResponse }

function tCancelarOperacaoResponse_CancelarOperacaoResponse.GetAsString: string;
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

class function tCancelarOperacaoResponse_CancelarOperacaoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCancelarOperacaoResponse_CancelarOperacaoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tCancelarOperacaoResponse_CancelarOperacaoResponse.CreateFromXmlString(s: string): tCancelarOperacaoResponse_CancelarOperacaoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCancelarOperacaoResponse_CancelarOperacaoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCancelarOperacaoResponse_CancelarOperacaoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snCancelarOperacaoResponse_CancelarOperacaoResponse_CancelarOperacaoResult) then
      CancelarOperacaoResult :=  tCancelamentoOperacaoTransporteResponse.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tCancelarOperacaoResponse_CancelarOperacaoResponse.Destroy;
begin
  if assigned(FCancelarOperacaoResult) then  FCancelarOperacaoResult.free;
  inherited;
end; // destructor ...

procedure tCancelarOperacaoResponse_CancelarOperacaoResponse.SetCancelarOperacaoResult(value:tCancelamentoOperacaoTransporteResponse);
begin
  FCancelarOperacaoResult := value;
  FCancelarOperacaoResult_IsSet_ := true;
end;

procedure tCancelarOperacaoResponse_CancelarOperacaoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CancelarOperacaoResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if CancelarOperacaoResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCancelarOperacaoResponse_CancelarOperacaoResponse_CancelarOperacaoResult));
    FCancelarOperacaoResult.save( xn );
  end;
end; // procedure save

{ tCancelarOperacaoResponse }

function tCancelarOperacaoResponse.GetAsString: string;
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

class function tCancelarOperacaoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCancelarOperacaoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tCancelarOperacaoResponse.CreateFromXmlString(s: string): tCancelarOperacaoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCancelarOperacaoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCancelarOperacaoResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tCancelarOperacaoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCancelarOperacaoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CancelarOperacaoResponse')
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

{ tCancelarOperacao_CancelarOperacao }

function tCancelarOperacao_CancelarOperacao.GetAsString: string;
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

class function tCancelarOperacao_CancelarOperacao._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCancelarOperacao_CancelarOperacao.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tCancelarOperacao_CancelarOperacao.CreateFromXmlString(s: string): tCancelarOperacao_CancelarOperacao;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCancelarOperacao_CancelarOperacao.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCancelarOperacao_CancelarOperacao.Create(aRoot:tJanXMLNode2);
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
    if (sn = snCancelarOperacao_CancelarOperacao_idOperacao) then
      idOperacao := StrToIntDef(xn.text, 0)
    else if (sn = snCancelarOperacao_CancelarOperacao_motivoCancelamento) then
      motivoCancelamento :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tCancelarOperacao_CancelarOperacao.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCancelarOperacao_CancelarOperacao.SetidOperacao(value:integer);
begin
  FidOperacao := value;
  FidOperacao_IsSet_ := true;
end;

procedure tCancelarOperacao_CancelarOperacao.SetmotivoCancelamento(value:string);
begin
  FmotivoCancelamento := value;
  FmotivoCancelamento_IsSet_ := true;
end;

procedure tCancelarOperacao_CancelarOperacao.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CancelarOperacao')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if idOperacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCancelarOperacao_CancelarOperacao_idOperacao));
    xn.text := IntToStr(FidOperacao);
  end;
  if motivoCancelamento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCancelarOperacao_CancelarOperacao_motivoCancelamento));
    xn.text := FmotivoCancelamento;
  end;
end; // procedure save

{ tCancelarOperacao }

function tCancelarOperacao.GetAsString: string;
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

class function tCancelarOperacao._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCancelarOperacao.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tCancelarOperacao.CreateFromXmlString(s: string): tCancelarOperacao;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCancelarOperacao.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCancelarOperacao.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tCancelarOperacao.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCancelarOperacao.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CancelarOperacao')
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

{ tRegistrarOperacaoResponse_RegistrarOperacaoResponse }

function tRegistrarOperacaoResponse_RegistrarOperacaoResponse.GetAsString: string;
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

class function tRegistrarOperacaoResponse_RegistrarOperacaoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tRegistrarOperacaoResponse_RegistrarOperacaoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tRegistrarOperacaoResponse_RegistrarOperacaoResponse.CreateFromXmlString(s: string): tRegistrarOperacaoResponse_RegistrarOperacaoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tRegistrarOperacaoResponse_RegistrarOperacaoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tRegistrarOperacaoResponse_RegistrarOperacaoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snRegistrarOperacaoResponse_RegistrarOperacaoResponse_RegistrarOperacaoResult) then
      RegistrarOperacaoResult :=  tRegistroOperacaoTransporteResponse.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tRegistrarOperacaoResponse_RegistrarOperacaoResponse.Destroy;
begin
  if assigned(FRegistrarOperacaoResult) then  FRegistrarOperacaoResult.free;
  inherited;
end; // destructor ...

procedure tRegistrarOperacaoResponse_RegistrarOperacaoResponse.SetRegistrarOperacaoResult(value:tRegistroOperacaoTransporteResponse);
begin
  FRegistrarOperacaoResult := value;
  FRegistrarOperacaoResult_IsSet_ := true;
end;

procedure tRegistrarOperacaoResponse_RegistrarOperacaoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'RegistrarOperacaoResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if RegistrarOperacaoResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRegistrarOperacaoResponse_RegistrarOperacaoResponse_RegistrarOperacaoResult));
    FRegistrarOperacaoResult.save( xn );
  end;
end; // procedure save

{ tRegistrarOperacaoResponse }

function tRegistrarOperacaoResponse.GetAsString: string;
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

class function tRegistrarOperacaoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tRegistrarOperacaoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tRegistrarOperacaoResponse.CreateFromXmlString(s: string): tRegistrarOperacaoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tRegistrarOperacaoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tRegistrarOperacaoResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tRegistrarOperacaoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tRegistrarOperacaoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'RegistrarOperacaoResponse')
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

{ tRegistrarOperacao_RegistrarOperacao }

function tRegistrarOperacao_RegistrarOperacao.GetAsString: string;
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

class function tRegistrarOperacao_RegistrarOperacao._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tRegistrarOperacao_RegistrarOperacao.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tRegistrarOperacao_RegistrarOperacao.CreateFromXmlString(s: string): tRegistrarOperacao_RegistrarOperacao;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tRegistrarOperacao_RegistrarOperacao.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tRegistrarOperacao_RegistrarOperacao.Create(aRoot:tJanXMLNode2);
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
    if (sn = snRegistrarOperacao_RegistrarOperacao_idOperacao) then
      idOperacao := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tRegistrarOperacao_RegistrarOperacao.Destroy;
begin
  inherited;
end; // destructor ...

procedure tRegistrarOperacao_RegistrarOperacao.SetidOperacao(value:integer);
begin
  FidOperacao := value;
  FidOperacao_IsSet_ := true;
end;

procedure tRegistrarOperacao_RegistrarOperacao.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'RegistrarOperacao')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if idOperacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRegistrarOperacao_RegistrarOperacao_idOperacao));
    xn.text := IntToStr(FidOperacao);
  end;
end; // procedure save

{ tRegistrarOperacao }

function tRegistrarOperacao.GetAsString: string;
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

class function tRegistrarOperacao._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tRegistrarOperacao.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tRegistrarOperacao.CreateFromXmlString(s: string): tRegistrarOperacao;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tRegistrarOperacao.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tRegistrarOperacao.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tRegistrarOperacao.Destroy;
begin
  inherited;
end; // destructor ...

procedure tRegistrarOperacao.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'RegistrarOperacao')
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

{ tCadastrarOperacaoDescritivaResponse_CadastrarOperacaoDescritivaResponse }

function tCadastrarOperacaoDescritivaResponse_CadastrarOperacaoDescritivaResponse.GetAsString: string;
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

class function tCadastrarOperacaoDescritivaResponse_CadastrarOperacaoDescritivaResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastrarOperacaoDescritivaResponse_CadastrarOperacaoDescritivaResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tCadastrarOperacaoDescritivaResponse_CadastrarOperacaoDescritivaResponse.CreateFromXmlString(s: string): tCadastrarOperacaoDescritivaResponse_CadastrarOperacaoDescritivaResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastrarOperacaoDescritivaResponse_CadastrarOperacaoDescritivaResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCadastrarOperacaoDescritivaResponse_CadastrarOperacaoDescritivaResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snCadastrarOperacaoDescritivaResponse_CadastrarOperacaoDescritivaResponse_CadastrarOperacaoDescritivaResult) then
      CadastrarOperacaoDescritivaResult :=  tCadastroOperacaoTransporteResponse.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tCadastrarOperacaoDescritivaResponse_CadastrarOperacaoDescritivaResponse.Destroy;
begin
  if assigned(FCadastrarOperacaoDescritivaResult) then  FCadastrarOperacaoDescritivaResult.free;
  inherited;
end; // destructor ...

procedure tCadastrarOperacaoDescritivaResponse_CadastrarOperacaoDescritivaResponse.SetCadastrarOperacaoDescritivaResult(value:tCadastroOperacaoTransporteResponse);
begin
  FCadastrarOperacaoDescritivaResult := value;
  FCadastrarOperacaoDescritivaResult_IsSet_ := true;
end;

procedure tCadastrarOperacaoDescritivaResponse_CadastrarOperacaoDescritivaResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastrarOperacaoDescritivaResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if CadastrarOperacaoDescritivaResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastrarOperacaoDescritivaResponse_CadastrarOperacaoDescritivaResponse_CadastrarOperacaoDescritivaResult));
    FCadastrarOperacaoDescritivaResult.save( xn );
  end;
end; // procedure save

{ tCadastrarOperacaoDescritivaResponse }

function tCadastrarOperacaoDescritivaResponse.GetAsString: string;
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

class function tCadastrarOperacaoDescritivaResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastrarOperacaoDescritivaResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tCadastrarOperacaoDescritivaResponse.CreateFromXmlString(s: string): tCadastrarOperacaoDescritivaResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastrarOperacaoDescritivaResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCadastrarOperacaoDescritivaResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tCadastrarOperacaoDescritivaResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCadastrarOperacaoDescritivaResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastrarOperacaoDescritivaResponse')
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

{ tCadastrarOperacaoDescritiva_CadastrarOperacaoDescritiva }

function tCadastrarOperacaoDescritiva_CadastrarOperacaoDescritiva.GetAsString: string;
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

class function tCadastrarOperacaoDescritiva_CadastrarOperacaoDescritiva._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastrarOperacaoDescritiva_CadastrarOperacaoDescritiva.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tCadastrarOperacaoDescritiva_CadastrarOperacaoDescritiva.CreateFromXmlString(s: string): tCadastrarOperacaoDescritiva_CadastrarOperacaoDescritiva;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastrarOperacaoDescritiva_CadastrarOperacaoDescritiva.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCadastrarOperacaoDescritiva_CadastrarOperacaoDescritiva.Create(aRoot:tJanXMLNode2);
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
    if (sn = snCadastrarOperacaoDescritiva_CadastrarOperacaoDescritiva_operacaoRequest) then
      operacaoRequest :=  tOperacaoTransporteRequest.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tCadastrarOperacaoDescritiva_CadastrarOperacaoDescritiva.Destroy;
begin
  if assigned(FoperacaoRequest) then  FoperacaoRequest.free;
  inherited;
end; // destructor ...

procedure tCadastrarOperacaoDescritiva_CadastrarOperacaoDescritiva.SetoperacaoRequest(value:tOperacaoTransporteRequest);
begin
  FoperacaoRequest := value;
  FoperacaoRequest_IsSet_ := true;
end;

procedure tCadastrarOperacaoDescritiva_CadastrarOperacaoDescritiva.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastrarOperacaoDescritiva')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if operacaoRequest_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastrarOperacaoDescritiva_CadastrarOperacaoDescritiva_operacaoRequest));
    FoperacaoRequest.save( xn );
  end;
end; // procedure save

{ tCadastrarOperacaoDescritiva }

function tCadastrarOperacaoDescritiva.GetAsString: string;
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

class function tCadastrarOperacaoDescritiva._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastrarOperacaoDescritiva.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tCadastrarOperacaoDescritiva.CreateFromXmlString(s: string): tCadastrarOperacaoDescritiva;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastrarOperacaoDescritiva.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCadastrarOperacaoDescritiva.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tCadastrarOperacaoDescritiva.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCadastrarOperacaoDescritiva.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastrarOperacaoDescritiva')
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

{ tAnularOperacaoResponse_AnularOperacaoResponse }

function tAnularOperacaoResponse_AnularOperacaoResponse.GetAsString: string;
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

class function tAnularOperacaoResponse_AnularOperacaoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAnularOperacaoResponse_AnularOperacaoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAnularOperacaoResponse_AnularOperacaoResponse.CreateFromXmlString(s: string): tAnularOperacaoResponse_AnularOperacaoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAnularOperacaoResponse_AnularOperacaoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAnularOperacaoResponse_AnularOperacaoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snAnularOperacaoResponse_AnularOperacaoResponse_AnularOperacaoResult) then
      AnularOperacaoResult :=  tAnulacaoOperacaoTransporteResponse.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tAnularOperacaoResponse_AnularOperacaoResponse.Destroy;
begin
  if assigned(FAnularOperacaoResult) then  FAnularOperacaoResult.free;
  inherited;
end; // destructor ...

procedure tAnularOperacaoResponse_AnularOperacaoResponse.SetAnularOperacaoResult(value:tAnulacaoOperacaoTransporteResponse);
begin
  FAnularOperacaoResult := value;
  FAnularOperacaoResult_IsSet_ := true;
end;

procedure tAnularOperacaoResponse_AnularOperacaoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AnularOperacaoResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if AnularOperacaoResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAnularOperacaoResponse_AnularOperacaoResponse_AnularOperacaoResult));
    FAnularOperacaoResult.save( xn );
  end;
end; // procedure save

{ tAnularOperacaoResponse }

function tAnularOperacaoResponse.GetAsString: string;
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

class function tAnularOperacaoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAnularOperacaoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAnularOperacaoResponse.CreateFromXmlString(s: string): tAnularOperacaoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAnularOperacaoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAnularOperacaoResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tAnularOperacaoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAnularOperacaoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AnularOperacaoResponse')
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

{ tAnularOperacao_AnularOperacao }

function tAnularOperacao_AnularOperacao.GetAsString: string;
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

class function tAnularOperacao_AnularOperacao._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAnularOperacao_AnularOperacao.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAnularOperacao_AnularOperacao.CreateFromXmlString(s: string): tAnularOperacao_AnularOperacao;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAnularOperacao_AnularOperacao.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAnularOperacao_AnularOperacao.Create(aRoot:tJanXMLNode2);
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
    if (sn = snAnularOperacao_AnularOperacao_anulacaoRequest) then
      anulacaoRequest :=  tAnulacaoOperacaoTransporteRequest.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tAnularOperacao_AnularOperacao.Destroy;
begin
  if assigned(FanulacaoRequest) then  FanulacaoRequest.free;
  inherited;
end; // destructor ...

procedure tAnularOperacao_AnularOperacao.SetanulacaoRequest(value:tAnulacaoOperacaoTransporteRequest);
begin
  FanulacaoRequest := value;
  FanulacaoRequest_IsSet_ := true;
end;

procedure tAnularOperacao_AnularOperacao.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AnularOperacao')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if anulacaoRequest_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAnularOperacao_AnularOperacao_anulacaoRequest));
    FanulacaoRequest.save( xn );
  end;
end; // procedure save

{ tAnularOperacao }

function tAnularOperacao.GetAsString: string;
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

class function tAnularOperacao._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAnularOperacao.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAnularOperacao.CreateFromXmlString(s: string): tAnularOperacao;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAnularOperacao.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAnularOperacao.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tAnularOperacao.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAnularOperacao.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AnularOperacao')
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

{ tAtualizarOperacaoResponse_AtualizarOperacaoResponse }

function tAtualizarOperacaoResponse_AtualizarOperacaoResponse.GetAsString: string;
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

class function tAtualizarOperacaoResponse_AtualizarOperacaoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAtualizarOperacaoResponse_AtualizarOperacaoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAtualizarOperacaoResponse_AtualizarOperacaoResponse.CreateFromXmlString(s: string): tAtualizarOperacaoResponse_AtualizarOperacaoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAtualizarOperacaoResponse_AtualizarOperacaoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAtualizarOperacaoResponse_AtualizarOperacaoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snAtualizarOperacaoResponse_AtualizarOperacaoResponse_AtualizarOperacaoResult) then
      FAtualizarOperacaoResult := tAtualizarOperacaoResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tAtualizarOperacaoResponse_AtualizarOperacaoResponse.Destroy;
begin
  if assigned(FAtualizarOperacaoResult) then  FAtualizarOperacaoResult.free;
  inherited;
end; // destructor ...

procedure tAtualizarOperacaoResponse_AtualizarOperacaoResponse.SetAtualizarOperacaoResult(value:tAtualizarOperacaoResponse);
begin
  FAtualizarOperacaoResult := value;
  FAtualizarOperacaoResult_IsSet_ := true;
end;

procedure tAtualizarOperacaoResponse_AtualizarOperacaoResponse.Save(aNode:tJanXMLNode2);
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

  if Assigned(FAtualizarOperacaoResult) then
  begin
    xn := aNode.addChildByName(snAtualizarOperacaoResponse_AtualizarOperacaoResponse_AtualizarOperacaoResult);
    FAtualizarOperacaoResult.Save(xn);
  end;
end; // procedure save

{ tAtualizarOperacao_AtualizarOperacao }

function tAtualizarOperacao_AtualizarOperacao.GetAsString: string;
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

class function tAtualizarOperacao_AtualizarOperacao._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAtualizarOperacao_AtualizarOperacao.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAtualizarOperacao_AtualizarOperacao.CreateFromXmlString(s: string): tAtualizarOperacao_AtualizarOperacao;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAtualizarOperacao_AtualizarOperacao.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAtualizarOperacao_AtualizarOperacao.Create(aRoot:tJanXMLNode2);
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
    if (sn = snAtualizarOperacao_AtualizarOperacao_operacaoRequest) then
      operacaoRequest :=  tAtualizarOperacaoRequest.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tAtualizarOperacao_AtualizarOperacao.Destroy;
begin
  if assigned(FoperacaoRequest) then  FoperacaoRequest.free;
  inherited;
end; // destructor ...

procedure tAtualizarOperacao_AtualizarOperacao.SetoperacaoRequest(value:tAtualizarOperacaoRequest);
begin
  FoperacaoRequest := value;
  FoperacaoRequest_IsSet_ := true;
end;

procedure tAtualizarOperacao_AtualizarOperacao.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AtualizarOperacao')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if operacaoRequest_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarOperacao_AtualizarOperacao_operacaoRequest));
    FoperacaoRequest.save( xn );
  end;
end; // procedure save

{ tAtualizarOperacao }

function tAtualizarOperacao.GetAsString: string;
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

class function tAtualizarOperacao._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAtualizarOperacao.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAtualizarOperacao.CreateFromXmlString(s: string): tAtualizarOperacao;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAtualizarOperacao.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAtualizarOperacao.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tAtualizarOperacao.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAtualizarOperacao.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AtualizarOperacao')
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

{ tConsultarSituacaoTransportadorAnttResponse_ConsultarSituacaoTransportadorAnttResponse }

function tConsultarSituacaoTransportadorAnttResponse_ConsultarSituacaoTransportadorAnttResponse.GetAsString: string;
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

class function tConsultarSituacaoTransportadorAnttResponse_ConsultarSituacaoTransportadorAnttResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tConsultarSituacaoTransportadorAnttResponse_ConsultarSituacaoTransportadorAnttResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tConsultarSituacaoTransportadorAnttResponse_ConsultarSituacaoTransportadorAnttResponse.CreateFromXmlString(s: string): tConsultarSituacaoTransportadorAnttResponse_ConsultarSituacaoTransportadorAnttResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tConsultarSituacaoTransportadorAnttResponse_ConsultarSituacaoTransportadorAnttResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tConsultarSituacaoTransportadorAnttResponse_ConsultarSituacaoTransportadorAnttResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snConsultarSituacaoTransportadorAnttResponse_ConsultarSituacaoTransportadorAnttResponse_ConsultarSituacaoTransportadorAnttResult) then
      ConsultarSituacaoTransportadorAnttResult :=  tSituacaoCadastroTransportadorAnttResponse.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tConsultarSituacaoTransportadorAnttResponse_ConsultarSituacaoTransportadorAnttResponse.Destroy;
begin
  if assigned(FConsultarSituacaoTransportadorAnttResult) then  FConsultarSituacaoTransportadorAnttResult.free;
  inherited;
end; // destructor ...

procedure tConsultarSituacaoTransportadorAnttResponse_ConsultarSituacaoTransportadorAnttResponse.SetConsultarSituacaoTransportadorAnttResult(value:tSituacaoCadastroTransportadorAnttResponse);
begin
  FConsultarSituacaoTransportadorAnttResult := value;
  FConsultarSituacaoTransportadorAnttResult_IsSet_ := true;
end;

procedure tConsultarSituacaoTransportadorAnttResponse_ConsultarSituacaoTransportadorAnttResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ConsultarSituacaoTransportadorAnttResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if ConsultarSituacaoTransportadorAnttResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConsultarSituacaoTransportadorAnttResponse_ConsultarSituacaoTransportadorAnttResponse_ConsultarSituacaoTransportadorAnttResult));
    FConsultarSituacaoTransportadorAnttResult.save( xn );
  end;
end; // procedure save

{ tConsultarSituacaoTransportadorAnttResponse }

function tConsultarSituacaoTransportadorAnttResponse.GetAsString: string;
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

class function tConsultarSituacaoTransportadorAnttResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tConsultarSituacaoTransportadorAnttResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tConsultarSituacaoTransportadorAnttResponse.CreateFromXmlString(s: string): tConsultarSituacaoTransportadorAnttResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tConsultarSituacaoTransportadorAnttResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tConsultarSituacaoTransportadorAnttResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tConsultarSituacaoTransportadorAnttResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tConsultarSituacaoTransportadorAnttResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ConsultarSituacaoTransportadorAnttResponse')
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

{ tConsultarSituacaoTransportadorAntt_ConsultarSituacaoTransportadorAntt }

function tConsultarSituacaoTransportadorAntt_ConsultarSituacaoTransportadorAntt.GetAsString: string;
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

class function tConsultarSituacaoTransportadorAntt_ConsultarSituacaoTransportadorAntt._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tConsultarSituacaoTransportadorAntt_ConsultarSituacaoTransportadorAntt.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tConsultarSituacaoTransportadorAntt_ConsultarSituacaoTransportadorAntt.CreateFromXmlString(s: string): tConsultarSituacaoTransportadorAntt_ConsultarSituacaoTransportadorAntt;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tConsultarSituacaoTransportadorAntt_ConsultarSituacaoTransportadorAntt.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tConsultarSituacaoTransportadorAntt_ConsultarSituacaoTransportadorAntt.Create(aRoot:tJanXMLNode2);
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
    if (sn = snConsultarSituacaoTransportadorAntt_ConsultarSituacaoTransportadorAntt_CPFCNPJ) then
      CPFCNPJ :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tConsultarSituacaoTransportadorAntt_ConsultarSituacaoTransportadorAntt.Destroy;
begin
  inherited;
end; // destructor ...

procedure tConsultarSituacaoTransportadorAntt_ConsultarSituacaoTransportadorAntt.SetCPFCNPJ(value:string);
begin
  FCPFCNPJ := value;
  FCPFCNPJ_IsSet_ := true;
end;

procedure tConsultarSituacaoTransportadorAntt_ConsultarSituacaoTransportadorAntt.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ConsultarSituacaoTransportadorAntt')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if CPFCNPJ_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConsultarSituacaoTransportadorAntt_ConsultarSituacaoTransportadorAntt_CPFCNPJ));
    xn.text := FCPFCNPJ;
  end;
end; // procedure save

{ tConsultarSituacaoTransportadorAntt }

function tConsultarSituacaoTransportadorAntt.GetAsString: string;
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

class function tConsultarSituacaoTransportadorAntt._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tConsultarSituacaoTransportadorAntt.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tConsultarSituacaoTransportadorAntt.CreateFromXmlString(s: string): tConsultarSituacaoTransportadorAntt;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tConsultarSituacaoTransportadorAntt.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tConsultarSituacaoTransportadorAntt.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tConsultarSituacaoTransportadorAntt.Destroy;
begin
  inherited;
end; // destructor ...

procedure tConsultarSituacaoTransportadorAntt.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ConsultarSituacaoTransportadorAntt')
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

{ tCadastrarEquiparadoResponse_CadastrarEquiparadoResponse }

function tCadastrarEquiparadoResponse_CadastrarEquiparadoResponse.GetAsString: string;
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

class function tCadastrarEquiparadoResponse_CadastrarEquiparadoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastrarEquiparadoResponse_CadastrarEquiparadoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tCadastrarEquiparadoResponse_CadastrarEquiparadoResponse.CreateFromXmlString(s: string): tCadastrarEquiparadoResponse_CadastrarEquiparadoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastrarEquiparadoResponse_CadastrarEquiparadoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCadastrarEquiparadoResponse_CadastrarEquiparadoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snCadastrarEquiparadoResponse_CadastrarEquiparadoResponse_CadastrarEquiparadoResult) then
      CadastrarEquiparadoResult :=  tCadastroEquiparadoResponse.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tCadastrarEquiparadoResponse_CadastrarEquiparadoResponse.Destroy;
begin
  if assigned(FCadastrarEquiparadoResult) then  FCadastrarEquiparadoResult.free;
  inherited;
end; // destructor ...

procedure tCadastrarEquiparadoResponse_CadastrarEquiparadoResponse.SetCadastrarEquiparadoResult(value:tCadastroEquiparadoResponse);
begin
  FCadastrarEquiparadoResult := value;
  FCadastrarEquiparadoResult_IsSet_ := true;
end;

procedure tCadastrarEquiparadoResponse_CadastrarEquiparadoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastrarEquiparadoResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if CadastrarEquiparadoResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastrarEquiparadoResponse_CadastrarEquiparadoResponse_CadastrarEquiparadoResult));
    FCadastrarEquiparadoResult.save( xn );
  end;
end; // procedure save

{ tCadastrarEquiparadoResponse }

function tCadastrarEquiparadoResponse.GetAsString: string;
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

class function tCadastrarEquiparadoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastrarEquiparadoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tCadastrarEquiparadoResponse.CreateFromXmlString(s: string): tCadastrarEquiparadoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastrarEquiparadoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCadastrarEquiparadoResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tCadastrarEquiparadoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCadastrarEquiparadoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastrarEquiparadoResponse')
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

{ tCadastrarEquiparado_CadastrarEquiparado }

function tCadastrarEquiparado_CadastrarEquiparado.GetAsString: string;
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

class function tCadastrarEquiparado_CadastrarEquiparado._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastrarEquiparado_CadastrarEquiparado.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tCadastrarEquiparado_CadastrarEquiparado.CreateFromXmlString(s: string): tCadastrarEquiparado_CadastrarEquiparado;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastrarEquiparado_CadastrarEquiparado.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCadastrarEquiparado_CadastrarEquiparado.Create(aRoot:tJanXMLNode2);
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
    if (sn = snCadastrarEquiparado_CadastrarEquiparado_cadastroEquiparadoRequest) then
      cadastroEquiparadoRequest :=  tCadastroEquiparadoRequest.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tCadastrarEquiparado_CadastrarEquiparado.Destroy;
begin
  if assigned(FcadastroEquiparadoRequest) then  FcadastroEquiparadoRequest.free;
  inherited;
end; // destructor ...

procedure tCadastrarEquiparado_CadastrarEquiparado.SetcadastroEquiparadoRequest(value:tCadastroEquiparadoRequest);
begin
  FcadastroEquiparadoRequest := value;
  FcadastroEquiparadoRequest_IsSet_ := true;
end;

procedure tCadastrarEquiparado_CadastrarEquiparado.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastrarEquiparado')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if cadastroEquiparadoRequest_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastrarEquiparado_CadastrarEquiparado_cadastroEquiparadoRequest));
    FcadastroEquiparadoRequest.save( xn );
  end;
end; // procedure save

{ tCadastrarEquiparado }

function tCadastrarEquiparado.GetAsString: string;
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

class function tCadastrarEquiparado._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastrarEquiparado.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tCadastrarEquiparado.CreateFromXmlString(s: string): tCadastrarEquiparado;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastrarEquiparado.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCadastrarEquiparado.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tCadastrarEquiparado.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCadastrarEquiparado.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastrarEquiparado')
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

{ tCadastrarAutonomoResponse_CadastrarAutonomoResponse }

function tCadastrarAutonomoResponse_CadastrarAutonomoResponse.GetAsString: string;
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

class function tCadastrarAutonomoResponse_CadastrarAutonomoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastrarAutonomoResponse_CadastrarAutonomoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tCadastrarAutonomoResponse_CadastrarAutonomoResponse.CreateFromXmlString(s: string): tCadastrarAutonomoResponse_CadastrarAutonomoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastrarAutonomoResponse_CadastrarAutonomoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCadastrarAutonomoResponse_CadastrarAutonomoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snCadastrarAutonomoResponse_CadastrarAutonomoResponse_CadastrarAutonomoResult) then
      CadastrarAutonomoResult :=  tCadastroAutonomoResponse.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tCadastrarAutonomoResponse_CadastrarAutonomoResponse.Destroy;
begin
  if assigned(FCadastrarAutonomoResult) then  FCadastrarAutonomoResult.free;
  inherited;
end; // destructor ...

procedure tCadastrarAutonomoResponse_CadastrarAutonomoResponse.SetCadastrarAutonomoResult(value:tCadastroAutonomoResponse);
begin
  FCadastrarAutonomoResult := value;
  FCadastrarAutonomoResult_IsSet_ := true;
end;

procedure tCadastrarAutonomoResponse_CadastrarAutonomoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastrarAutonomoResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if CadastrarAutonomoResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastrarAutonomoResponse_CadastrarAutonomoResponse_CadastrarAutonomoResult));
    FCadastrarAutonomoResult.save( xn );
  end;
end; // procedure save

{ tCadastrarAutonomoResponse }

function tCadastrarAutonomoResponse.GetAsString: string;
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

class function tCadastrarAutonomoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastrarAutonomoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tCadastrarAutonomoResponse.CreateFromXmlString(s: string): tCadastrarAutonomoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastrarAutonomoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCadastrarAutonomoResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tCadastrarAutonomoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCadastrarAutonomoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastrarAutonomoResponse')
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

{ tCadastrarAutonomo_CadastrarAutonomo }

function tCadastrarAutonomo_CadastrarAutonomo.GetAsString: string;
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

class function tCadastrarAutonomo_CadastrarAutonomo._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastrarAutonomo_CadastrarAutonomo.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tCadastrarAutonomo_CadastrarAutonomo.CreateFromXmlString(s: string): tCadastrarAutonomo_CadastrarAutonomo;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastrarAutonomo_CadastrarAutonomo.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCadastrarAutonomo_CadastrarAutonomo.Create(aRoot:tJanXMLNode2);
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
    if (sn = snCadastrarAutonomo_CadastrarAutonomo_cadastroAutonomoRequest) then
      cadastroAutonomoRequest :=  tCadastroAutonomoRequest.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tCadastrarAutonomo_CadastrarAutonomo.Destroy;
begin
  if assigned(FcadastroAutonomoRequest) then  FcadastroAutonomoRequest.free;
  inherited;
end; // destructor ...

procedure tCadastrarAutonomo_CadastrarAutonomo.SetcadastroAutonomoRequest(value:tCadastroAutonomoRequest);
begin
  FcadastroAutonomoRequest := value;
  FcadastroAutonomoRequest_IsSet_ := true;
end;

procedure tCadastrarAutonomo_CadastrarAutonomo.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastrarAutonomo')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if cadastroAutonomoRequest_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastrarAutonomo_CadastrarAutonomo_cadastroAutonomoRequest));
    FcadastroAutonomoRequest.save( xn );
  end;
end; // procedure save

{ tCadastrarAutonomo }

function tCadastrarAutonomo.GetAsString: string;
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

class function tCadastrarAutonomo._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastrarAutonomo.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tCadastrarAutonomo.CreateFromXmlString(s: string): tCadastrarAutonomo;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastrarAutonomo.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCadastrarAutonomo.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tCadastrarAutonomo.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCadastrarAutonomo.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastrarAutonomo')
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

{ tBuscarParticipantesAtivosResponse_BuscarParticipantesAtivosResponse }

function tBuscarParticipantesAtivosResponse_BuscarParticipantesAtivosResponse.GetAsString: string;
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

class function tBuscarParticipantesAtivosResponse_BuscarParticipantesAtivosResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarParticipantesAtivosResponse_BuscarParticipantesAtivosResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tBuscarParticipantesAtivosResponse_BuscarParticipantesAtivosResponse.CreateFromXmlString(s: string): tBuscarParticipantesAtivosResponse_BuscarParticipantesAtivosResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarParticipantesAtivosResponse_BuscarParticipantesAtivosResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarParticipantesAtivosResponse_BuscarParticipantesAtivosResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snBuscarParticipantesAtivosResponse_BuscarParticipantesAtivosResponse_BuscarParticipantesAtivosResult) then
      BuscarParticipantesAtivosResult :=  tBuscaParticipantesResponse.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tBuscarParticipantesAtivosResponse_BuscarParticipantesAtivosResponse.Destroy;
begin
  if assigned(FBuscarParticipantesAtivosResult) then  FBuscarParticipantesAtivosResult.free;
  inherited;
end; // destructor ...

procedure tBuscarParticipantesAtivosResponse_BuscarParticipantesAtivosResponse.SetBuscarParticipantesAtivosResult(value:tBuscaParticipantesResponse);
begin
  FBuscarParticipantesAtivosResult := value;
  FBuscarParticipantesAtivosResult_IsSet_ := true;
end;

procedure tBuscarParticipantesAtivosResponse_BuscarParticipantesAtivosResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscarParticipantesAtivosResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if BuscarParticipantesAtivosResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarParticipantesAtivosResponse_BuscarParticipantesAtivosResponse_BuscarParticipantesAtivosResult));
    FBuscarParticipantesAtivosResult.save( xn );
  end;
end; // procedure save

{ tBuscarParticipantesAtivosResponse }

function tBuscarParticipantesAtivosResponse.GetAsString: string;
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

class function tBuscarParticipantesAtivosResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarParticipantesAtivosResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tBuscarParticipantesAtivosResponse.CreateFromXmlString(s: string): tBuscarParticipantesAtivosResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarParticipantesAtivosResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarParticipantesAtivosResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tBuscarParticipantesAtivosResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tBuscarParticipantesAtivosResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscarParticipantesAtivosResponse')
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

{ tBuscarParticipantesAtivos_BuscarParticipantesAtivos }

function tBuscarParticipantesAtivos_BuscarParticipantesAtivos.GetAsString: string;
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

class function tBuscarParticipantesAtivos_BuscarParticipantesAtivos._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarParticipantesAtivos_BuscarParticipantesAtivos.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tBuscarParticipantesAtivos_BuscarParticipantesAtivos.CreateFromXmlString(s: string): tBuscarParticipantesAtivos_BuscarParticipantesAtivos;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarParticipantesAtivos_BuscarParticipantesAtivos.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarParticipantesAtivos_BuscarParticipantesAtivos.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tBuscarParticipantesAtivos_BuscarParticipantesAtivos.Destroy;
begin
  inherited;
end; // destructor ...

procedure tBuscarParticipantesAtivos_BuscarParticipantesAtivos.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscarParticipantesAtivos')
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

{ tBuscarParticipantesAtivos }

function tBuscarParticipantesAtivos.GetAsString: string;
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

class function tBuscarParticipantesAtivos._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarParticipantesAtivos.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tBuscarParticipantesAtivos.CreateFromXmlString(s: string): tBuscarParticipantesAtivos;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarParticipantesAtivos.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarParticipantesAtivos.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tBuscarParticipantesAtivos.Destroy;
begin
  inherited;
end; // destructor ...

procedure tBuscarParticipantesAtivos.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscarParticipantesAtivos')
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

{ tAtualizarParticipanteResponse_AtualizarParticipanteResponse }

function tAtualizarParticipanteResponse_AtualizarParticipanteResponse.GetAsString: string;
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

class function tAtualizarParticipanteResponse_AtualizarParticipanteResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAtualizarParticipanteResponse_AtualizarParticipanteResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAtualizarParticipanteResponse_AtualizarParticipanteResponse.CreateFromXmlString(s: string): tAtualizarParticipanteResponse_AtualizarParticipanteResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAtualizarParticipanteResponse_AtualizarParticipanteResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAtualizarParticipanteResponse_AtualizarParticipanteResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snAtualizarParticipanteResponse_AtualizarParticipanteResponse_AtualizarParticipanteResult) then
      AtualizarParticipanteResult :=  tBaseResponse.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tAtualizarParticipanteResponse_AtualizarParticipanteResponse.Destroy;
begin
  if assigned(FAtualizarParticipanteResult) then  FAtualizarParticipanteResult.free;
  inherited;
end; // destructor ...

procedure tAtualizarParticipanteResponse_AtualizarParticipanteResponse.SetAtualizarParticipanteResult(value:tBaseResponse);
begin
  FAtualizarParticipanteResult := value;
  FAtualizarParticipanteResult_IsSet_ := true;
end;

procedure tAtualizarParticipanteResponse_AtualizarParticipanteResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AtualizarParticipanteResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if AtualizarParticipanteResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarParticipanteResponse_AtualizarParticipanteResponse_AtualizarParticipanteResult));
    FAtualizarParticipanteResult.save( xn );
  end;
end; // procedure save

{ tAtualizarParticipanteResponse }

function tAtualizarParticipanteResponse.GetAsString: string;
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

class function tAtualizarParticipanteResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAtualizarParticipanteResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAtualizarParticipanteResponse.CreateFromXmlString(s: string): tAtualizarParticipanteResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAtualizarParticipanteResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAtualizarParticipanteResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tAtualizarParticipanteResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAtualizarParticipanteResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AtualizarParticipanteResponse')
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

{ tAtualizarParticipante_AtualizarParticipante }

function tAtualizarParticipante_AtualizarParticipante.GetAsString: string;
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

class function tAtualizarParticipante_AtualizarParticipante._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAtualizarParticipante_AtualizarParticipante.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAtualizarParticipante_AtualizarParticipante.CreateFromXmlString(s: string): tAtualizarParticipante_AtualizarParticipante;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAtualizarParticipante_AtualizarParticipante.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAtualizarParticipante_AtualizarParticipante.Create(aRoot:tJanXMLNode2);
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
    if (sn = snAtualizarParticipante_AtualizarParticipante_participante) then
      participante :=  tBaseParticipanteRequestResponse.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tAtualizarParticipante_AtualizarParticipante.Destroy;
begin
  if assigned(Fparticipante) then  Fparticipante.free;
  inherited;
end; // destructor ...

procedure tAtualizarParticipante_AtualizarParticipante.Setparticipante(value:tBaseParticipanteRequestResponse);
begin
  Fparticipante := value;
  Fparticipante_IsSet_ := true;
end;

procedure tAtualizarParticipante_AtualizarParticipante.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AtualizarParticipante')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if participante_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarParticipante_AtualizarParticipante_participante));
    Fparticipante.save( xn );
  end;
end; // procedure save

{ tAtualizarParticipante }

function tAtualizarParticipante.GetAsString: string;
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

class function tAtualizarParticipante._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAtualizarParticipante.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAtualizarParticipante.CreateFromXmlString(s: string): tAtualizarParticipante;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAtualizarParticipante.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAtualizarParticipante.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tAtualizarParticipante.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAtualizarParticipante.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AtualizarParticipante')
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

{ tObterParticipanteResponse_ObterParticipanteResponse }

function tObterParticipanteResponse_ObterParticipanteResponse.GetAsString: string;
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

class function tObterParticipanteResponse_ObterParticipanteResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterParticipanteResponse_ObterParticipanteResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterParticipanteResponse_ObterParticipanteResponse.CreateFromXmlString(s: string): tObterParticipanteResponse_ObterParticipanteResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterParticipanteResponse_ObterParticipanteResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterParticipanteResponse_ObterParticipanteResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterParticipanteResponse_ObterParticipanteResponse_ObterParticipanteResult) then
      FObterParticipanteResult := tObterParticipanteResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterParticipanteResponse_ObterParticipanteResponse.Destroy;
begin
  if assigned(FObterParticipanteResult) then  FObterParticipanteResult.free;
  inherited;
end; // destructor ...

procedure tObterParticipanteResponse_ObterParticipanteResponse.SetObterParticipanteResult(value:tObterParticipanteResponse);
begin
  FObterParticipanteResult := value;
  FObterParticipanteResult_IsSet_ := true;
end;

procedure tObterParticipanteResponse_ObterParticipanteResponse.Save(aNode:tJanXMLNode2);
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

  if Assigned(FObterParticipanteResult) then
  begin
    xn := aNode.addChildByName(snObterParticipanteResponse_ObterParticipanteResponse_ObterParticipanteResult);
    FObterParticipanteResult.Save(xn);
  end;
end; // procedure save

{ tObterParticipante_ObterParticipante }

function tObterParticipante_ObterParticipante.GetAsString: string;
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

class function tObterParticipante_ObterParticipante._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterParticipante_ObterParticipante.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterParticipante_ObterParticipante.CreateFromXmlString(s: string): tObterParticipante_ObterParticipante;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterParticipante_ObterParticipante.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterParticipante_ObterParticipante.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterParticipante_ObterParticipante_CPFCNPJ) then
      CPFCNPJ :=  xn.text // string
    else if (sn = snObterParticipante_ObterParticipante_TipoParticipante) then
      TipoParticipante := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterParticipante_ObterParticipante.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterParticipante_ObterParticipante.SetCPFCNPJ(value:string);
begin
  FCPFCNPJ := value;
  FCPFCNPJ_IsSet_ := true;
end;

procedure tObterParticipante_ObterParticipante.SetTipoParticipante(value:integer);
begin
  FTipoParticipante := value;
  FTipoParticipante_IsSet_ := true;
end;

procedure tObterParticipante_ObterParticipante.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterParticipante')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if CPFCNPJ_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterParticipante_ObterParticipante_CPFCNPJ));
    xn.text := FCPFCNPJ;
  end;
  if TipoParticipante_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterParticipante_ObterParticipante_TipoParticipante));
    xn.text := IntToStr(FTipoParticipante);
  end;
end; // procedure save

{ tObterParticipante }

function tObterParticipante.GetAsString: string;
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

class function tObterParticipante._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterParticipante.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterParticipante.CreateFromXmlString(s: string): tObterParticipante;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterParticipante.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterParticipante.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tObterParticipante.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterParticipante.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterParticipante')
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

{ tObterParticipantePorIdResponse_ObterParticipantePorIdResponse }

function tObterParticipantePorIdResponse_ObterParticipantePorIdResponse.GetAsString: string;
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

class function tObterParticipantePorIdResponse_ObterParticipantePorIdResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterParticipantePorIdResponse_ObterParticipantePorIdResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterParticipantePorIdResponse_ObterParticipantePorIdResponse.CreateFromXmlString(s: string): tObterParticipantePorIdResponse_ObterParticipantePorIdResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterParticipantePorIdResponse_ObterParticipantePorIdResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterParticipantePorIdResponse_ObterParticipantePorIdResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterParticipantePorIdResponse_ObterParticipantePorIdResponse_ObterParticipantePorIdResult) then
      FObterParticipantePorIdResult := tObterParticipanteResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterParticipantePorIdResponse_ObterParticipantePorIdResponse.Destroy;
begin
  if assigned(FObterParticipantePorIdResult) then  FObterParticipantePorIdResult.free;
  inherited;
end; // destructor ...

procedure tObterParticipantePorIdResponse_ObterParticipantePorIdResponse.SetObterParticipantePorIdResult(value:tObterParticipanteResponse);
begin
  FObterParticipantePorIdResult := value;
  FObterParticipantePorIdResult_IsSet_ := true;
end;

procedure tObterParticipantePorIdResponse_ObterParticipantePorIdResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterParticipantePorIdResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Assigned(FObterParticipantePorIdResult) then
  begin
    xn := aNode.addChildByName(snObterParticipantePorIdResponse_ObterParticipantePorIdResponse_ObterParticipantePorIdResult);
    FObterParticipantePorIdResult.Save(xn);
  end;
end; // procedure save

{ tObterParticipantePorIdResponse }

function tObterParticipantePorIdResponse.GetAsString: string;
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

class function tObterParticipantePorIdResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterParticipantePorIdResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterParticipantePorIdResponse.CreateFromXmlString(s: string): tObterParticipantePorIdResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterParticipantePorIdResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterParticipantePorIdResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tObterParticipantePorIdResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterParticipantePorIdResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterParticipantePorIdResponse')
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

{ tObterParticipantePorId_ObterParticipantePorId }

function tObterParticipantePorId_ObterParticipantePorId.GetAsString: string;
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

class function tObterParticipantePorId_ObterParticipantePorId._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterParticipantePorId_ObterParticipantePorId.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterParticipantePorId_ObterParticipantePorId.CreateFromXmlString(s: string): tObterParticipantePorId_ObterParticipantePorId;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterParticipantePorId_ObterParticipantePorId.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterParticipantePorId_ObterParticipantePorId.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterParticipantePorId_ObterParticipantePorId_idParticipante) then
      idParticipante := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterParticipantePorId_ObterParticipantePorId.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterParticipantePorId_ObterParticipantePorId.SetidParticipante(value:integer);
begin
  FidParticipante := value;
  FidParticipante_IsSet_ := true;
end;

procedure tObterParticipantePorId_ObterParticipantePorId.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterParticipantePorId')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if idParticipante_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterParticipantePorId_ObterParticipantePorId_idParticipante));
    xn.text := IntToStr(FidParticipante);
  end;
end; // procedure save

{ tObterParticipantePorId }

function tObterParticipantePorId.GetAsString: string;
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

class function tObterParticipantePorId._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterParticipantePorId.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterParticipantePorId.CreateFromXmlString(s: string): tObterParticipantePorId;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterParticipantePorId.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterParticipantePorId.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tObterParticipantePorId.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterParticipantePorId.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterParticipantePorId')
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

{ tCadastrarParticipanteResponse_CadastrarParticipanteResponse }

function tCadastrarParticipanteResponse_CadastrarParticipanteResponse.GetAsString: string;
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

class function tCadastrarParticipanteResponse_CadastrarParticipanteResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastrarParticipanteResponse_CadastrarParticipanteResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tCadastrarParticipanteResponse_CadastrarParticipanteResponse.CreateFromXmlString(s: string): tCadastrarParticipanteResponse_CadastrarParticipanteResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastrarParticipanteResponse_CadastrarParticipanteResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCadastrarParticipanteResponse_CadastrarParticipanteResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snCadastrarParticipanteResponse_CadastrarParticipanteResponse_CadastrarParticipanteResult) then
      CadastrarParticipanteResult :=  tBaseResponse.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tCadastrarParticipanteResponse_CadastrarParticipanteResponse.Destroy;
begin
  if assigned(FCadastrarParticipanteResult) then  FCadastrarParticipanteResult.free;
  inherited;
end; // destructor ...

procedure tCadastrarParticipanteResponse_CadastrarParticipanteResponse.SetCadastrarParticipanteResult(value:tBaseResponse);
begin
  FCadastrarParticipanteResult := value;
  FCadastrarParticipanteResult_IsSet_ := true;
end;

procedure tCadastrarParticipanteResponse_CadastrarParticipanteResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastrarParticipanteResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if CadastrarParticipanteResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastrarParticipanteResponse_CadastrarParticipanteResponse_CadastrarParticipanteResult));
    FCadastrarParticipanteResult.save( xn );
  end;
end; // procedure save

{ tCadastrarParticipanteResponse }

function tCadastrarParticipanteResponse.GetAsString: string;
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

class function tCadastrarParticipanteResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastrarParticipanteResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tCadastrarParticipanteResponse.CreateFromXmlString(s: string): tCadastrarParticipanteResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastrarParticipanteResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCadastrarParticipanteResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tCadastrarParticipanteResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCadastrarParticipanteResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastrarParticipanteResponse')
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

{ tCadastrarParticipante_CadastrarParticipante }

function tCadastrarParticipante_CadastrarParticipante.GetAsString: string;
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

class function tCadastrarParticipante_CadastrarParticipante._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastrarParticipante_CadastrarParticipante.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tCadastrarParticipante_CadastrarParticipante.CreateFromXmlString(s: string): tCadastrarParticipante_CadastrarParticipante;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastrarParticipante_CadastrarParticipante.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCadastrarParticipante_CadastrarParticipante.Create(aRoot:tJanXMLNode2);
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
    if (sn = snCadastrarParticipante_CadastrarParticipante_participante) then
      participante :=  tBaseParticipanteRequestResponse.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tCadastrarParticipante_CadastrarParticipante.Destroy;
begin
  if assigned(Fparticipante) then  Fparticipante.free;
  inherited;
end; // destructor ...

procedure tCadastrarParticipante_CadastrarParticipante.Setparticipante(value:tBaseParticipanteRequestResponse);
begin
  Fparticipante := value;
  Fparticipante_IsSet_ := true;
end;

procedure tCadastrarParticipante_CadastrarParticipante.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastrarParticipante')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if participante_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastrarParticipante_CadastrarParticipante_participante));
    Fparticipante.save( xn );
  end;
end; // procedure save

{ tCadastrarParticipante }

function tCadastrarParticipante.GetAsString: string;
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

class function tCadastrarParticipante._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastrarParticipante.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tCadastrarParticipante.CreateFromXmlString(s: string): tCadastrarParticipante;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastrarParticipante.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCadastrarParticipante.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tCadastrarParticipante.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCadastrarParticipante.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastrarParticipante')
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

{ tBuscarCentrosDeCustosAtivosResponse_BuscarCentrosDeCustosAtivosResponse }

function tBuscarCentrosDeCustosAtivosResponse_BuscarCentrosDeCustosAtivosResponse.GetAsString: string;
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

class function tBuscarCentrosDeCustosAtivosResponse_BuscarCentrosDeCustosAtivosResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarCentrosDeCustosAtivosResponse_BuscarCentrosDeCustosAtivosResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tBuscarCentrosDeCustosAtivosResponse_BuscarCentrosDeCustosAtivosResponse.CreateFromXmlString(s: string): tBuscarCentrosDeCustosAtivosResponse_BuscarCentrosDeCustosAtivosResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarCentrosDeCustosAtivosResponse_BuscarCentrosDeCustosAtivosResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarCentrosDeCustosAtivosResponse_BuscarCentrosDeCustosAtivosResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snBuscarCentrosDeCustosAtivosResponse_BuscarCentrosDeCustosAtivosResponse_BuscarCentrosDeCustosAtivosResult) then
      BuscarCentrosDeCustosAtivosResult :=  tBuscaCentrosDeCustosResponse.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tBuscarCentrosDeCustosAtivosResponse_BuscarCentrosDeCustosAtivosResponse.Destroy;
begin
  if assigned(FBuscarCentrosDeCustosAtivosResult) then  FBuscarCentrosDeCustosAtivosResult.free;
  inherited;
end; // destructor ...

procedure tBuscarCentrosDeCustosAtivosResponse_BuscarCentrosDeCustosAtivosResponse.SetBuscarCentrosDeCustosAtivosResult(value:tBuscaCentrosDeCustosResponse);
begin
  FBuscarCentrosDeCustosAtivosResult := value;
  FBuscarCentrosDeCustosAtivosResult_IsSet_ := true;
end;

procedure tBuscarCentrosDeCustosAtivosResponse_BuscarCentrosDeCustosAtivosResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscarCentrosDeCustosAtivosResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if BuscarCentrosDeCustosAtivosResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snBuscarCentrosDeCustosAtivosResponse_BuscarCentrosDeCustosAtivosResponse_BuscarCentrosDeCustosAtivosResult));
    FBuscarCentrosDeCustosAtivosResult.save( xn );
  end;
end; // procedure save

{ tBuscarCentrosDeCustosAtivosResponse }

function tBuscarCentrosDeCustosAtivosResponse.GetAsString: string;
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

class function tBuscarCentrosDeCustosAtivosResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarCentrosDeCustosAtivosResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tBuscarCentrosDeCustosAtivosResponse.CreateFromXmlString(s: string): tBuscarCentrosDeCustosAtivosResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarCentrosDeCustosAtivosResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarCentrosDeCustosAtivosResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tBuscarCentrosDeCustosAtivosResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tBuscarCentrosDeCustosAtivosResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscarCentrosDeCustosAtivosResponse')
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

{ tBuscarCentrosDeCustosAtivos_BuscarCentrosDeCustosAtivos }

function tBuscarCentrosDeCustosAtivos_BuscarCentrosDeCustosAtivos.GetAsString: string;
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

class function tBuscarCentrosDeCustosAtivos_BuscarCentrosDeCustosAtivos._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarCentrosDeCustosAtivos_BuscarCentrosDeCustosAtivos.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tBuscarCentrosDeCustosAtivos_BuscarCentrosDeCustosAtivos.CreateFromXmlString(s: string): tBuscarCentrosDeCustosAtivos_BuscarCentrosDeCustosAtivos;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarCentrosDeCustosAtivos_BuscarCentrosDeCustosAtivos.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarCentrosDeCustosAtivos_BuscarCentrosDeCustosAtivos.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tBuscarCentrosDeCustosAtivos_BuscarCentrosDeCustosAtivos.Destroy;
begin
  inherited;
end; // destructor ...

procedure tBuscarCentrosDeCustosAtivos_BuscarCentrosDeCustosAtivos.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscarCentrosDeCustosAtivos')
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

{ tBuscarCentrosDeCustosAtivos }

function tBuscarCentrosDeCustosAtivos.GetAsString: string;
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

class function tBuscarCentrosDeCustosAtivos._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tBuscarCentrosDeCustosAtivos.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tBuscarCentrosDeCustosAtivos.CreateFromXmlString(s: string): tBuscarCentrosDeCustosAtivos;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tBuscarCentrosDeCustosAtivos.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tBuscarCentrosDeCustosAtivos.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tBuscarCentrosDeCustosAtivos.Destroy;
begin
  inherited;
end; // destructor ...

procedure tBuscarCentrosDeCustosAtivos.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'BuscarCentrosDeCustosAtivos')
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

{ tAtualizarCentroDeCustoResponse_AtualizarCentroDeCustoResponse }

function tAtualizarCentroDeCustoResponse_AtualizarCentroDeCustoResponse.GetAsString: string;
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

class function tAtualizarCentroDeCustoResponse_AtualizarCentroDeCustoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAtualizarCentroDeCustoResponse_AtualizarCentroDeCustoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAtualizarCentroDeCustoResponse_AtualizarCentroDeCustoResponse.CreateFromXmlString(s: string): tAtualizarCentroDeCustoResponse_AtualizarCentroDeCustoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAtualizarCentroDeCustoResponse_AtualizarCentroDeCustoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAtualizarCentroDeCustoResponse_AtualizarCentroDeCustoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snAtualizarCentroDeCustoResponse_AtualizarCentroDeCustoResponse_AtualizarCentroDeCustoResult) then
      AtualizarCentroDeCustoResult :=  tBaseResponse.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tAtualizarCentroDeCustoResponse_AtualizarCentroDeCustoResponse.Destroy;
begin
  if assigned(FAtualizarCentroDeCustoResult) then  FAtualizarCentroDeCustoResult.free;
  inherited;
end; // destructor ...

procedure tAtualizarCentroDeCustoResponse_AtualizarCentroDeCustoResponse.SetAtualizarCentroDeCustoResult(value:tBaseResponse);
begin
  FAtualizarCentroDeCustoResult := value;
  FAtualizarCentroDeCustoResult_IsSet_ := true;
end;

procedure tAtualizarCentroDeCustoResponse_AtualizarCentroDeCustoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AtualizarCentroDeCustoResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if AtualizarCentroDeCustoResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarCentroDeCustoResponse_AtualizarCentroDeCustoResponse_AtualizarCentroDeCustoResult));
    FAtualizarCentroDeCustoResult.save( xn );
  end;
end; // procedure save

{ tAtualizarCentroDeCustoResponse }

function tAtualizarCentroDeCustoResponse.GetAsString: string;
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

class function tAtualizarCentroDeCustoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAtualizarCentroDeCustoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAtualizarCentroDeCustoResponse.CreateFromXmlString(s: string): tAtualizarCentroDeCustoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAtualizarCentroDeCustoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAtualizarCentroDeCustoResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tAtualizarCentroDeCustoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAtualizarCentroDeCustoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AtualizarCentroDeCustoResponse')
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

{ tAtualizarCentroDeCusto_AtualizarCentroDeCusto }

function tAtualizarCentroDeCusto_AtualizarCentroDeCusto.GetAsString: string;
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

class function tAtualizarCentroDeCusto_AtualizarCentroDeCusto._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAtualizarCentroDeCusto_AtualizarCentroDeCusto.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAtualizarCentroDeCusto_AtualizarCentroDeCusto.CreateFromXmlString(s: string): tAtualizarCentroDeCusto_AtualizarCentroDeCusto;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAtualizarCentroDeCusto_AtualizarCentroDeCusto.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAtualizarCentroDeCusto_AtualizarCentroDeCusto.Create(aRoot:tJanXMLNode2);
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
    if (sn = snAtualizarCentroDeCusto_AtualizarCentroDeCusto_centroDeCusto) then
      centroDeCusto :=  tBaseCentroDeCustoRequestResponse.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tAtualizarCentroDeCusto_AtualizarCentroDeCusto.Destroy;
begin
  if assigned(FcentroDeCusto) then  FcentroDeCusto.free;
  inherited;
end; // destructor ...

procedure tAtualizarCentroDeCusto_AtualizarCentroDeCusto.SetcentroDeCusto(value:tBaseCentroDeCustoRequestResponse);
begin
  FcentroDeCusto := value;
  FcentroDeCusto_IsSet_ := true;
end;

procedure tAtualizarCentroDeCusto_AtualizarCentroDeCusto.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AtualizarCentroDeCusto')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if centroDeCusto_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAtualizarCentroDeCusto_AtualizarCentroDeCusto_centroDeCusto));
    FcentroDeCusto.save( xn );
  end;
end; // procedure save

{ tAtualizarCentroDeCusto }

function tAtualizarCentroDeCusto.GetAsString: string;
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

class function tAtualizarCentroDeCusto._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAtualizarCentroDeCusto.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tAtualizarCentroDeCusto.CreateFromXmlString(s: string): tAtualizarCentroDeCusto;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAtualizarCentroDeCusto.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tAtualizarCentroDeCusto.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tAtualizarCentroDeCusto.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAtualizarCentroDeCusto.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AtualizarCentroDeCusto')
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

{ tObterCentroDeCustoResponse_ObterCentroDeCustoResponse }

function tObterCentroDeCustoResponse_ObterCentroDeCustoResponse.GetAsString: string;
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

class function tObterCentroDeCustoResponse_ObterCentroDeCustoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterCentroDeCustoResponse_ObterCentroDeCustoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterCentroDeCustoResponse_ObterCentroDeCustoResponse.CreateFromXmlString(s: string): tObterCentroDeCustoResponse_ObterCentroDeCustoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterCentroDeCustoResponse_ObterCentroDeCustoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterCentroDeCustoResponse_ObterCentroDeCustoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterCentroDeCustoResponse_ObterCentroDeCustoResponse_ObterCentroDeCustoResult) then
      FObterCentroDeCustoResult := tObterCentroDeCustoResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterCentroDeCustoResponse_ObterCentroDeCustoResponse.Destroy;
begin
  if assigned(FObterCentroDeCustoResult) then  FObterCentroDeCustoResult.free;
  inherited;
end; // destructor ...

procedure tObterCentroDeCustoResponse_ObterCentroDeCustoResponse.SetObterCentroDeCustoResult(value:tObterCentroDeCustoResponse);
begin
  FObterCentroDeCustoResult := value;
  FObterCentroDeCustoResult_IsSet_ := true;
end;

procedure tObterCentroDeCustoResponse_ObterCentroDeCustoResponse.Save(aNode:tJanXMLNode2);
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

  if Assigned(FObterCentroDeCustoResult) then
  begin
    xn := aNode.addChildByName(snObterCentroDeCustoResponse_ObterCentroDeCustoResponse_ObterCentroDeCustoResult);
    FObterCentroDeCustoResult.Save(xn);
  end;
end; // procedure save

{ tObterCentroDeCusto_ObterCentroDeCusto }

function tObterCentroDeCusto_ObterCentroDeCusto.GetAsString: string;
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

class function tObterCentroDeCusto_ObterCentroDeCusto._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterCentroDeCusto_ObterCentroDeCusto.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterCentroDeCusto_ObterCentroDeCusto.CreateFromXmlString(s: string): tObterCentroDeCusto_ObterCentroDeCusto;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterCentroDeCusto_ObterCentroDeCusto.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterCentroDeCusto_ObterCentroDeCusto.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterCentroDeCusto_ObterCentroDeCusto_Codigo) then
      Codigo :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterCentroDeCusto_ObterCentroDeCusto.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterCentroDeCusto_ObterCentroDeCusto.SetCodigo(value:string);
begin
  FCodigo := value;
  FCodigo_IsSet_ := true;
end;

procedure tObterCentroDeCusto_ObterCentroDeCusto.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterCentroDeCusto')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Codigo_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterCentroDeCusto_ObterCentroDeCusto_Codigo));
    xn.text := FCodigo;
  end;
end; // procedure save

{ tObterCentroDeCusto }

function tObterCentroDeCusto.GetAsString: string;
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

class function tObterCentroDeCusto._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterCentroDeCusto.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterCentroDeCusto.CreateFromXmlString(s: string): tObterCentroDeCusto;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterCentroDeCusto.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterCentroDeCusto.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tObterCentroDeCusto.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterCentroDeCusto.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterCentroDeCusto')
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

{ tObterCentroDeCustoPorIdResponse_ObterCentroDeCustoPorIdResponse }

function tObterCentroDeCustoPorIdResponse_ObterCentroDeCustoPorIdResponse.GetAsString: string;
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

class function tObterCentroDeCustoPorIdResponse_ObterCentroDeCustoPorIdResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterCentroDeCustoPorIdResponse_ObterCentroDeCustoPorIdResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterCentroDeCustoPorIdResponse_ObterCentroDeCustoPorIdResponse.CreateFromXmlString(s: string): tObterCentroDeCustoPorIdResponse_ObterCentroDeCustoPorIdResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterCentroDeCustoPorIdResponse_ObterCentroDeCustoPorIdResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterCentroDeCustoPorIdResponse_ObterCentroDeCustoPorIdResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterCentroDeCustoPorIdResponse_ObterCentroDeCustoPorIdResponse_ObterCentroDeCustoPorIdResult) then
      FObterCentroDeCustoPorIdResult := tObterCentroDeCustoResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterCentroDeCustoPorIdResponse_ObterCentroDeCustoPorIdResponse.Destroy;
begin
  if assigned(FObterCentroDeCustoPorIdResult) then  FObterCentroDeCustoPorIdResult.free;
  inherited;
end; // destructor ...

procedure tObterCentroDeCustoPorIdResponse_ObterCentroDeCustoPorIdResponse.SetObterCentroDeCustoPorIdResult(value:tObterCentroDeCustoResponse);
begin
  FObterCentroDeCustoPorIdResult := value;
  FObterCentroDeCustoPorIdResult_IsSet_ := true;
end;

procedure tObterCentroDeCustoPorIdResponse_ObterCentroDeCustoPorIdResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterCentroDeCustoPorIdResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Assigned(FObterCentroDeCustoPorIdResult) then
  begin
    xn := aNode.addChildByName(snObterCentroDeCustoPorIdResponse_ObterCentroDeCustoPorIdResponse_ObterCentroDeCustoPorIdResult);
    FObterCentroDeCustoPorIdResult.Save(xn);
  end;
end; // procedure save

{ tObterCentroDeCustoPorIdResponse }

function tObterCentroDeCustoPorIdResponse.GetAsString: string;
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

class function tObterCentroDeCustoPorIdResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterCentroDeCustoPorIdResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterCentroDeCustoPorIdResponse.CreateFromXmlString(s: string): tObterCentroDeCustoPorIdResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterCentroDeCustoPorIdResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterCentroDeCustoPorIdResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tObterCentroDeCustoPorIdResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterCentroDeCustoPorIdResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterCentroDeCustoPorIdResponse')
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

{ tObterCentroDeCustoPorId_ObterCentroDeCustoPorId }

function tObterCentroDeCustoPorId_ObterCentroDeCustoPorId.GetAsString: string;
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

class function tObterCentroDeCustoPorId_ObterCentroDeCustoPorId._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterCentroDeCustoPorId_ObterCentroDeCustoPorId.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterCentroDeCustoPorId_ObterCentroDeCustoPorId.CreateFromXmlString(s: string): tObterCentroDeCustoPorId_ObterCentroDeCustoPorId;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterCentroDeCustoPorId_ObterCentroDeCustoPorId.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterCentroDeCustoPorId_ObterCentroDeCustoPorId.Create(aRoot:tJanXMLNode2);
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
    if (sn = snObterCentroDeCustoPorId_ObterCentroDeCustoPorId_idCentroDeCusto) then
      idCentroDeCusto := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tObterCentroDeCustoPorId_ObterCentroDeCustoPorId.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterCentroDeCustoPorId_ObterCentroDeCustoPorId.SetidCentroDeCusto(value:integer);
begin
  FidCentroDeCusto := value;
  FidCentroDeCusto_IsSet_ := true;
end;

procedure tObterCentroDeCustoPorId_ObterCentroDeCustoPorId.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterCentroDeCustoPorId')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if idCentroDeCusto_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snObterCentroDeCustoPorId_ObterCentroDeCustoPorId_idCentroDeCusto));
    xn.text := IntToStr(FidCentroDeCusto);
  end;
end; // procedure save

{ tObterCentroDeCustoPorId }

function tObterCentroDeCustoPorId.GetAsString: string;
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

class function tObterCentroDeCustoPorId._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tObterCentroDeCustoPorId.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tObterCentroDeCustoPorId.CreateFromXmlString(s: string): tObterCentroDeCustoPorId;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tObterCentroDeCustoPorId.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tObterCentroDeCustoPorId.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tObterCentroDeCustoPorId.Destroy;
begin
  inherited;
end; // destructor ...

procedure tObterCentroDeCustoPorId.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ObterCentroDeCustoPorId')
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

{ tCadastrarCentroDeCustoResponse_CadastrarCentroDeCustoResponse }

function tCadastrarCentroDeCustoResponse_CadastrarCentroDeCustoResponse.GetAsString: string;
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

class function tCadastrarCentroDeCustoResponse_CadastrarCentroDeCustoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastrarCentroDeCustoResponse_CadastrarCentroDeCustoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tCadastrarCentroDeCustoResponse_CadastrarCentroDeCustoResponse.CreateFromXmlString(s: string): tCadastrarCentroDeCustoResponse_CadastrarCentroDeCustoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastrarCentroDeCustoResponse_CadastrarCentroDeCustoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCadastrarCentroDeCustoResponse_CadastrarCentroDeCustoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snCadastrarCentroDeCustoResponse_CadastrarCentroDeCustoResponse_CadastrarCentroDeCustoResult) then
      CadastrarCentroDeCustoResult :=  tBaseResponse.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tCadastrarCentroDeCustoResponse_CadastrarCentroDeCustoResponse.Destroy;
begin
  if assigned(FCadastrarCentroDeCustoResult) then  FCadastrarCentroDeCustoResult.free;
  inherited;
end; // destructor ...

procedure tCadastrarCentroDeCustoResponse_CadastrarCentroDeCustoResponse.SetCadastrarCentroDeCustoResult(value:tBaseResponse);
begin
  FCadastrarCentroDeCustoResult := value;
  FCadastrarCentroDeCustoResult_IsSet_ := true;
end;

procedure tCadastrarCentroDeCustoResponse_CadastrarCentroDeCustoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastrarCentroDeCustoResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if CadastrarCentroDeCustoResult_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastrarCentroDeCustoResponse_CadastrarCentroDeCustoResponse_CadastrarCentroDeCustoResult));
    FCadastrarCentroDeCustoResult.save( xn );
  end;
end; // procedure save

{ tCadastrarCentroDeCustoResponse }

function tCadastrarCentroDeCustoResponse.GetAsString: string;
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

class function tCadastrarCentroDeCustoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastrarCentroDeCustoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tCadastrarCentroDeCustoResponse.CreateFromXmlString(s: string): tCadastrarCentroDeCustoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastrarCentroDeCustoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCadastrarCentroDeCustoResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tCadastrarCentroDeCustoResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCadastrarCentroDeCustoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastrarCentroDeCustoResponse')
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

{ tCadastrarCentroDeCusto_CadastrarCentroDeCusto }

function tCadastrarCentroDeCusto_CadastrarCentroDeCusto.GetAsString: string;
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

class function tCadastrarCentroDeCusto_CadastrarCentroDeCusto._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastrarCentroDeCusto_CadastrarCentroDeCusto.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tCadastrarCentroDeCusto_CadastrarCentroDeCusto.CreateFromXmlString(s: string): tCadastrarCentroDeCusto_CadastrarCentroDeCusto;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastrarCentroDeCusto_CadastrarCentroDeCusto.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCadastrarCentroDeCusto_CadastrarCentroDeCusto.Create(aRoot:tJanXMLNode2);
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
    if (sn = snCadastrarCentroDeCusto_CadastrarCentroDeCusto_centroDeCusto) then
      centroDeCusto :=  tBaseCentroDeCustoRequestResponse.Create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tCadastrarCentroDeCusto_CadastrarCentroDeCusto.Destroy;
begin
  if assigned(FcentroDeCusto) then  FcentroDeCusto.free;
  inherited;
end; // destructor ...

procedure tCadastrarCentroDeCusto_CadastrarCentroDeCusto.SetcentroDeCusto(value:tBaseCentroDeCustoRequestResponse);
begin
  FcentroDeCusto := value;
  FcentroDeCusto_IsSet_ := true;
end;

procedure tCadastrarCentroDeCusto_CadastrarCentroDeCusto.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastrarCentroDeCusto')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if centroDeCusto_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCadastrarCentroDeCusto_CadastrarCentroDeCusto_centroDeCusto));
    FcentroDeCusto.save( xn );
  end;
end; // procedure save

{ tCadastrarCentroDeCusto }

function tCadastrarCentroDeCusto.GetAsString: string;
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

class function tCadastrarCentroDeCusto._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCadastrarCentroDeCusto.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tCadastrarCentroDeCusto.CreateFromXmlString(s: string): tCadastrarCentroDeCusto;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCadastrarCentroDeCusto.Create( parser );
   finally
      parser.Free;
   end;
end;
 
constructor tCadastrarCentroDeCusto.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tCadastrarCentroDeCusto.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCadastrarCentroDeCusto.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CadastrarCentroDeCusto')
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

end.
