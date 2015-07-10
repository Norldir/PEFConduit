unit uXMLconfig;

Interface
uses
  Classes,
  JanXMLParser2,
  uXMLTools;

// targetNameSpace:
// NameSpacePrefix:
// Date of Schema : 25/04/2012 11:20:56
// Translationdate: 25/04/2012 11:21:08
//

type
  TCconfigBase = class
  public
     constructor create;
     destructor destroy; override;
  end;

type
  tAdministradoraContratoFrete = class( TCconfigBase )
  public
    Admininstradora : TObject;
  end;



const
  sntarget = 'target';
  sntarget_webserver = 'webserver';
  sntarget_Identification = 'identification';
  sntarget_token = 'token';

type
  ttarget  = class(tadministradoracontratofrete) {codigo 8}
  private
    F_NameSpaceAlias: string;
    Fwebserver: string; // (E)
    FIdentification: string; // (E)
    FToken: string; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property webserver: string read Fwebserver write Fwebserver;
    property Identification: string read FIdentification write FIdentification;
    property Token: string read FToken write FToken;
  end;


const
  snparametrosTicket = 'parametrosTicket';


type
  tparametrosTicket = class( TCconfigBase )
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
  snticket = 'ticket';
  snticket_webserver = 'webserver';
  snticket_usuario = 'usuario';
  snticket_senha = 'senha';
  snticket_codigoBase = 'codigoBase';
  snticket_codigoCliente = 'codigoCliente';
  snticket_parametrosTicket = 'parametrosTicket';

type
  tticket = class(tadministradoracontratofrete)
  private
    F_NameSpaceAlias: string;
    Fwebserver: string; // (E)
    Fusuario: string; // (E)
    Fsenha: string; // (E)
    FcodigoBase: string; // (E)
    FcodigoCliente: string; // (E)
    FparametrosTicket: tparametrosTicket; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property webserver: string read Fwebserver write Fwebserver;
    property usuario: string read Fusuario write Fusuario;
    property senha: string read Fsenha write Fsenha;
    property codigoBase: string read FcodigoBase write FcodigoBase;
    property codigoCliente: string read FcodigoCliente write FcodigoCliente;
    property parametrosTicket: tparametrosTicket read FparametrosTicket write FparametrosTicket;
  end;

const
  snparametrosDBTrans = 'parametrosDBTrans';
  snparametrosDBTrans_CondicaoLiberacaoOperacao_Adt = 'CondicaoLiberacaoOperacao_Adt';
  snparametrosDBTrans_LocalRealizacao_Adiantamento = 'LocalRealizacao_Adiantamento';
  snparametrosDBTrans_CodigoOperacao_Saldo = 'CodigoOperacao_Saldo';
  snparametrosDBTrans_CondicaoLiberacaoOperacao_Saldo = 'CondicaoLiberacaoOperacao_Saldo';
  snparametrosDBTrans_LocalRealizacao_Saldo = 'LocalRealizacao_Saldo';
  snparametrosDBTrans_CodigoClausula = 'CodigoClausula';
  snparametrosDBTrans_CodigoClausulaPeso = 'CodigoClausulaPeso';
  snparametrosDBTrans_CodigoClausulaViagem = 'CodigoClausulaViagem';
  snparametrosDBTrans_Documentos_Entrega = 'Documentos_Entrega';

type
  tparametrosDBTrans = class( TCconfigBase )
  private
    F_NameSpaceAlias: string;
    FCondicaoLiberacaoOperacao_Adt: string; // (E)
    FLocalRealizacao_Adiantamento: string; // (E)
    FCodigoOperacao_Saldo: string; // (E)
    FCondicaoLiberacaoOperacao_Saldo: string; // (E)
    FLocalRealizacao_Saldo: string; // (E)
    FCodigoClausula: string; // (E)
    FDocumentos_Entrega: string;
    FCodigoClausulaViagem: string;
    FCodigoClausulaPeso: string; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CondicaoLiberacaoOperacao_Adt: string read FCondicaoLiberacaoOperacao_Adt write FCondicaoLiberacaoOperacao_Adt;
    property LocalRealizacao_Adiantamento: string read FLocalRealizacao_Adiantamento write FLocalRealizacao_Adiantamento;
    property CodigoOperacao_Saldo: string read FCodigoOperacao_Saldo write FCodigoOperacao_Saldo;
    property CondicaoLiberacaoOperacao_Saldo: string read FCondicaoLiberacaoOperacao_Saldo write FCondicaoLiberacaoOperacao_Saldo;
    property LocalRealizacao_Saldo: string read FLocalRealizacao_Saldo write FLocalRealizacao_Saldo;
    property CodigoClausula: string read FCodigoClausula write FCodigoClausula;
    property CodigoClausulaPeso: string read FCodigoClausulaPeso write FCodigoClausulaPeso;
    property CodigoClausulaViagem: string read FCodigoClausulaViagem write FCodigoClausulaViagem;
    property Documentos_Entrega: string read FDocumentos_Entrega write FDocumentos_Entrega;
  end;

const
  sndbtrans = 'dbtrans';
  sndbtrans_webserver = 'webserver';
  sndbtrans_usuario = 'usuario';
  sndbtrans_senha = 'senha';
  sndbtrans_cliente = 'cliente';
  sndbtrans_parametrosDBTrans = 'parametrosDBTrans';

type
  tdbtrans = class(tadministradoracontratofrete)
  private
    F_NameSpaceAlias: string;
    Fwebserver: string; // (E)
    Fusuario: string; // (E)
    Fsenha: string; // (E)
    Fcliente: string; // (E)
    FparametrosDBTrans: tparametrosDBTrans; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property webserver: string read Fwebserver write Fwebserver;
    property usuario: string read Fusuario write Fusuario;
    property senha: string read Fsenha write Fsenha;
    property cliente: string read Fcliente write Fcliente;
    property parametrosDBTrans: tparametrosDBTrans read FparametrosDBTrans write FparametrosDBTrans;
  end;

const
  snparametrosNddCargo = 'parametrosNddCargo';
  snparametrosNddCargo_GerarMovimentacaoFinanceira = 'GerarMovimentacaoFinanceira';
  snparametrosNddCargo_ImpressaoAutomaticaDOT = 'ImpressaoAutomaticaDOT';
  snparametrosNddCargo_TipodeOperacaodeTransporte = 'TipodeOperacaodeTransporte';
  snparametrosNddCargo_TipodaCarga = 'TipodaCarga';
  snparametrosNddCargo_ProprietariodaCarga = 'ProprietariodaCarga';
  snparametrosNddCargo_TipodeRotaPadrao = 'TipodeRotaPadrao';
  snparametrosNddCargo_UtilizaRoteirizador = 'UtilizaRoteirizador';
  snparametrosNddCargo_NotificaRotaContratante = 'NotificaRotaContratante';
  snparametrosNddCargo_LocaldeEfetivacaodoPagamento = 'LocaldeEfetivacaodoPagamento';
  snparametrosNddCargo_LocaldeEfetivacaodoPagamentoAdt = 'LocaldeEfetivacaodoPagamentoAdt';
  snparametrosNddCargo_DocumentoParaEntregar = 'DocumentoParaEntregar';
  snparametrosNddCargo_tpRateioRetencoes = 'tpRateioRetencoes';
  snparametrosNddCargo_DiasParaLiberarSaldo = 'DiasParaLiberarSaldo';{#18466}
  snparametrosNddCargo_MinutosParaLiberarAdiantamento = 'MinutosParaLiberarAdiantamento';{#18466}
  snparametrosNddCargo_Confirmador = 'Confirmador';{#19164}
type
  tparametrosNddCargo = class( TCconfigBase )
  private
    F_NameSpaceAlias: string;
    FGerarMovimentacaoFinanceira: string; // (E)
    FImpressaoAutomaticaDOT: string; // (E)
    FTipodeOperacaodeTransporte: string; // (E)
    FTipodaCarga: string; // (E)
    FProprietariodaCarga: string; // (E)
    FTipodeRotaPadrao: string; // (E)
    FUtilizaRoteirizador: string; // (E)
    FNotificaRotaContratante: string; // (E)
    FLocaldeEfetivacaodoPagamento: string; // (E)
    FDocumentoParaEntregar: string;
    FtpRateioRetencoes: string;
    FLocaldeEfetivacaodoPagamentoAdt: string;
    FMinutosParaLiberarAdiantamento: string;
    FDiasParaLiberarSaldo: string;
    FConfirmador: string; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property GerarMovimentacaoFinanceira: string read FGerarMovimentacaoFinanceira write FGerarMovimentacaoFinanceira;
    property ImpressaoAutomaticaDOT: string read FImpressaoAutomaticaDOT write FImpressaoAutomaticaDOT;
    property TipodeOperacaodeTransporte: string read FTipodeOperacaodeTransporte write FTipodeOperacaodeTransporte;
    property TipodaCarga: string read FTipodaCarga write FTipodaCarga;
    property ProprietariodaCarga: string read FProprietariodaCarga write FProprietariodaCarga;
    property TipodeRotaPadrao: string read FTipodeRotaPadrao write FTipodeRotaPadrao;
    property UtilizaRoteirizador: string read FUtilizaRoteirizador write FUtilizaRoteirizador;
    property NotificaRotaContratante: string read FNotificaRotaContratante write FNotificaRotaContratante;
    property LocaldeEfetivacaodoPagamento: string read FLocaldeEfetivacaodoPagamento write FLocaldeEfetivacaodoPagamento;
    property DocumentoParaEntregar: string read FDocumentoParaEntregar write FDocumentoParaEntregar;
    property tpRateioRetencoes : string read FtpRateioRetencoes write FtpRateioRetencoes;
    property LocaldeEfetivacaodoPagamentoAdt: string read FLocaldeEfetivacaodoPagamentoAdt write FLocaldeEfetivacaodoPagamentoAdt;
    property DiasParaLiberarSaldo: string read FDiasParaLiberarSaldo write FDiasParaLiberarSaldo;{#18466}
    property MinutosParaLiberarAdiantamento: string read FMinutosParaLiberarAdiantamento write FMinutosParaLiberarAdiantamento;{#18466}
    property Confirmador: string read FConfirmador write FConfirmador;{#19164}
  end;

const
  snnddcargo = 'nddcargo';
  snnddcargo_tipoIntegeracao = 'tipoIntegracao';
  snnddcargo_nddWS = 'nddws';
  snnddcargo_nddCertificado = 'nddcertificado';
  snnddcargo_envio = 'envio';
  snnddcargo_retorno = 'retorno';
  snnddcargo_parametrosNddCargo = 'parametrosNddCargo';

type
  tnddcargo = class(tadministradoracontratofrete)
  private
    F_NameSpaceAlias: string;
    Fenvio: string; // (E)
    Fretorno: string; // (E)
    FparametrosNddCargo: tparametrosNddCargo;
    Fnddcertificado: string;
    Fnddws: string;
    ftipoIntegracao: string; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property tipoIntegracao: string read ftipoIntegracao write FtipoIntegracao;
    property nddws: string read Fnddws write Fnddws;
    property nddcertificado: string read Fnddcertificado write Fnddcertificado;
    property envio: string read Fenvio write Fenvio;
    property retorno: string read Fretorno write Fretorno;
    property parametrosNddCargo: tparametrosNddCargo read FparametrosNddCargo write FparametrosNddCargo;
  end;


const
  snparametrosPancary = 'parametrosPancary';
  snparametrosPancary_viagem_parcelaA_efetivacao_tipo = 'viagem_parcelaA_efetivacao_tipo';
  snparametrosPancary_viagem_parcelaA_status_id = 'viagem_parcelaA_status_id';
  snparametrosPancary_viagem_parcelaS_efetivacao_tipo = 'viagem_parcelaS_efetivacao_tipo';

  snparametrosPancary_viagem_parcelaS_status_id = 'viagem_parcelaS_status_id';
  snparametrosPancary_viagem_quitacao = 'viagem_quitacao';
  snparametrosPancary_valor_minimo_VA = 'valor_minimo_VA';

type
  tParametrosPancary = class( TCconfigBase )
  private
    F_NameSpaceAlias: string;
    Fviagem_parcelaA_efetivacao_tipo: string; // (E)
    Fviagem_parcelaA_status_id: string; // (E)
    Fviagem_parcelaS_efetivacao_tipo: string;
    Fviagem_parcelaS_status_id: string;
    Fviagem_quitacao: string;
    fvalor_minimo_VA: string; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property viagem_parcelaA_efetivacao_tipo: string read Fviagem_parcelaA_efetivacao_tipo write Fviagem_parcelaA_efetivacao_tipo;
    property viagem_parcelaA_status_id: string read Fviagem_parcelaA_status_id write Fviagem_parcelaA_status_id;
    property viagem_parcelaS_efetivacao_tipo: string read Fviagem_parcelaS_efetivacao_tipo write Fviagem_parcelaS_efetivacao_tipo;

    property viagem_parcelaS_status_id: string read Fviagem_parcelaS_status_id write Fviagem_parcelaS_status_id;
    property viagem_quitacao: string read Fviagem_quitacao write Fviagem_quitacao;
    property valor_minimo_VA: string read fvalor_minimo_VA write Fvalor_minimo_VA;
  end;


const
  snpancary = 'pancary';
  snpancary_envio = 'envio';
  snpancary_retorno = 'retorno';
  snpancary_parametrosPamcary = 'parametrosPancary';

type
  tpancary = class(tadministradoracontratofrete)
  private
    F_NameSpaceAlias: string;
    Fenvio: string; // (E)
    Fretorno: string; // (E)
    FparametrosPamcary: tParametrosPancary; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property envio: string read Fenvio write Fenvio;
    property retorno: string read Fretorno write Fretorno;
    property parametrosPamcary: tParametrosPancary read FparametrosPamcary write FparametrosPamcary;
  end;

const
  snparametrosRepom = 'parametrosRepom';
  snparametrosRepom_OPERACAO_CODIGO = 'OPERACAO_CODIGO';
  snparametrosRepom_ROTEIRO_IDA_VOLTA = 'ROTEIRO_IDA_VOLTA';

type
  tparametrosRepom = class( TCconfigBase )
  private
    F_NameSpaceAlias: string;
    FOPERACAO_CODIGO: string; // (E)
    FROTEIRO_IDA_VOLTA: string; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property OPERACAO_CODIGO: string read FOPERACAO_CODIGO write FOPERACAO_CODIGO;
    property ROTEIRO_IDA_VOLTA: string read FROTEIRO_IDA_VOLTA write FROTEIRO_IDA_VOLTA;
  end;

const
  snrepom = 'repom';
  snrepom_webserver = 'webserver';
  snrepom_usuario = 'usuario';
  snrepom_senha = 'senha';
  snrepom_parametrosRepom = 'parametrosRepom';

type
  trepom = class(tadministradoracontratofrete)
  private
    F_NameSpaceAlias: string;
    Fwebserver: string; // (E)
    Fusuario: string; // (E)
    Fsenha: string; // (E)
    FparametrosRepom: tparametrosRepom; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property webserver: string read Fwebserver write Fwebserver;
    property usuario: string read Fusuario write Fusuario;
    property senha: string read Fsenha write Fsenha;
    property parametrosRepom: tparametrosRepom read FparametrosRepom write FparametrosRepom;
  end;

const
  snadministradoras = 'administradoras';
  snadministradoras_repom = 'repom';
  snadministradoras_pancary = 'pancary';
  snadministradoras_nddcargo = 'nddcargo';
  snadministradoras_dbtrans = 'dbtrans';
  snadministradoras_ticket = 'ticket';
  snadministradoras_target = 'target';
type
  tadministradoras = class(TObject)
  private
    F_NameSpaceAlias: string;
    Frepom: trepom; // (E)
    Fpancary: tpancary; // (E)
    Fnddcargo: tnddcargo; // (E)
    Fdbtrans: tdbtrans; // (E)
    Fticket: tticket;
    Fcnpj: TObject;
    Ftarget: ttarget;
    procedure Setdbtrans(const Value: tdbtrans);
    procedure Setnddcargo(const Value: tnddcargo);
    procedure Setpancary(const Value: tpancary);
    procedure Setrepom(const Value: trepom);
    procedure Setticket(const Value: tticket);
    procedure Setcnpj(const Value: TObject);
    procedure Settarget(const Value: ttarget); // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property repom: trepom read Frepom write Setrepom;
    property pancary: tpancary read Fpancary write Setpancary;
    property nddcargo: tnddcargo read Fnddcargo write Setnddcargo;
    property dbtrans: tdbtrans read Fdbtrans write Setdbtrans;
    property ticket: tticket read Fticket write Setticket;
    property target: ttarget read Ftarget write Settarget;
    property cnpj : TObject read Fcnpj write Setcnpj;
  end;

const
  sncnpj = 'cnpj';
  sncnpj_administradoras = 'administradoras';
  ancnpj_id = 'id';

type
  tcnpj = class( TCconfigBase )
  private
    F_NameSpaceAlias: string;
    Fadministradoras: tadministradoras; // (E)
    Fid: string; // (A)
    Fid_IsSet_: boolean;
    Fgrupo: TObject;
    procedure Setid(value:string);
    procedure Setadministradoras(const Value: tadministradoras);
    procedure Setgrupo(const Value: TObject);
    function getgrupo: TObject;
  public

    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property administradoras: tadministradoras read Fadministradoras write Setadministradoras;
    property id: string read Fid write Setid;
    property id_IsSet_:boolean read Fid_IsSet_;
    property grupo : TObject read getgrupo write Setgrupo;
  end;

const
  sncnpjs = 'cnpjs';
  sncnpjs_cnpj = 'cnpj';

type
  tcnpjs = class( TCconfigBase )
  private
    F_NameSpaceAlias: string;
    Fcnpj: tManagedStringList;
    Fgrupo: TObject;
    procedure Setgrupo(const Value: TObject); // of tcnpj(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property cnpj: tManagedStringList read Fcnpj write Fcnpj; // of tcnpj
    property grupo : TObject read Fgrupo write Setgrupo;
  end;

const
  sngrupo = 'grupo';
  sngrupo_cnpjs = 'cnpjs';
  angrupo_id = 'id';

type
  tgrupo = class( TCconfigBase )
  private
    F_NameSpaceAlias: string;
    Fcnpjs: tcnpjs; // (E)
    Fid: string; // (A)
    Fid_IsSet_: boolean;
    procedure Setid(value:string);
    procedure setcnpjs(const Value: tcnpjs);
  public
    configuracao : TObject;
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property cnpjs: tcnpjs read Fcnpjs write setcnpjs;
    property id: string read Fid write Setid;
    property id_IsSet_:boolean read Fid_IsSet_;
  end;

const
  sngrupos = 'grupos';
  sngrupos_grupo = 'grupo';

type
  tgrupos = class( TCconfigBase )
  private
    F_NameSpaceAlias: string;
    Fgrupo: tManagedStringList; // of tgrupo(E)
  public
    configuracao : TObject;
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property grupo: tManagedStringList read Fgrupo write Fgrupo; // of tgrupo
  end;

const
  snconfiguracao = 'configuracao';
  snconfiguracao_diretorioBase = 'diretorioBase';

  snconfiguracao_proxy = 'proxy';
  snconfiguracao_proxyusuario = 'proxyusuario';
  snconfiguracao_proxysenha = 'proxysenha';
  snconfiguracao_retornocomhora = 'retornocomhora';

  snconfiguracao_grupos = 'grupos';

type
  tconfiguracao = class( TCconfigBase )
  private
    F_NameSpaceAlias: string;
    FdiretorioBase: string; // (E)
    Fgrupos: tgrupos;
    Fproxy: string;
    Fproxyusuario: string;
    Fproxysenha: string;
    Fretornocomhora: string;
    procedure Setproxy(const Value: string);
    procedure Setproxysenha(const Value: string);
    procedure Setproxyusuario(const Value: string);
    procedure Setgrupos(const Value: tgrupos);
    procedure Setretornocomhora(const Value: string); // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property diretorioBase: string read FdiretorioBase write FdiretorioBase;
    property proxy: string read Fproxy write Setproxy;
    property proxyusuario: string read Fproxyusuario write Setproxyusuario;
    property proxysenha: string read Fproxysenha write Setproxysenha;
    property retornocomhora : string read Fretornocomhora write Setretornocomhora;
    property grupos: tgrupos read Fgrupos write Setgrupos;
  end;

function CarregaArquivoConfiguracao( arquivo : string ) : tconfiguracao;

implementation
uses
  Windows,
  SysUtils,
  mylib;

const
  thisNamespaceURI = '';
  defNamespaceAlias = '';

var
   class_var_Refs : TStringList;
   CritSect : TRTLCriticalSection;

     
function CarregaArquivoConfiguracao( arquivo : string ) : tconfiguracao;
var
  parser : TjanXMLParser2;
begin
   if fileexists( arquivo ) then
   begin
      parser := TjanXMLParser2.create;
      try
         parser.LoadXML( arquivo );
         result := tconfiguracao.Create( parser  );
      finally
         parser.Free;
      end;
   end
   else
      result := tconfiguracao.Create();
end;

{ tparametrosTicket }

class function tparametrosTicket._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tparametrosTicket.Create;
begin
  inherited create;
  _NamespaceAlias := defNamespaceAlias;

end; // constructor ...

constructor tparametrosTicket.Create(aRoot:tJanXMLNode2);
//var
  //xn: tJanXMLNode2;
  //sn: string;
  //i: integer;
  //thisURI: string;
begin
  inherited create;
  F_NameSpaceAlias := aRoot.NameSpace;

end; // constructor ...

destructor tparametrosTicket.Destroy;
begin
  inherited;
end; // destructor ...

procedure tparametrosTicket.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  //i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'parametrosTicket')
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

{ tticket }

class function tticket._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tticket.Create;
begin
  inherited create;
  _NamespaceAlias := defNamespaceAlias;

end; // constructor ...

constructor tticket.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  //i: integer;
  thisURI: string;
begin
  inherited create;
  F_NameSpaceAlias := aRoot.NameSpace;

  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snticket_webserver) then
      webserver :=  xn.text // string
    else if (sn = snticket_usuario) then
      usuario :=  xn.text // string
    else if (sn = snticket_senha) then
      senha :=  xn.text // string
    else if (sn = snticket_codigoBase) then
      codigoBase :=  xn.text // string
    else if (sn = snticket_codigoCliente) then
      codigoCliente :=  xn.text // string
    else if (sn = snticket_parametrosTicket)
      and ((thisURI='') or (tparametrosTicket._nsURI_ = thisURI)) then
      FparametrosTicket := tparametrosTicket.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tticket.Destroy;
begin
  FparametrosTicket.Free;
  inherited;
end; // destructor ...

procedure tticket.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  //i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ticket')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snticket_webserver));
  xn.text := Fwebserver;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snticket_usuario));
  xn.text := Fusuario;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snticket_senha));
  xn.text := Fsenha;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snticket_codigoBase));
  xn.text := FcodigoBase;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snticket_codigoCliente));
  xn.text := FcodigoCliente;
  if Assigned(FparametrosTicket) then
  begin
    xn := aNode.addChildByName(snticket_parametrosTicket);
    FparametrosTicket.Save(xn);
  end;
end; // procedure save

{ tparametrosDBTrans }

class function tparametrosDBTrans._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tparametrosDBTrans.Create;
begin
  inherited create;
  _NamespaceAlias := defNamespaceAlias;

end; // constructor ...

constructor tparametrosDBTrans.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  //i: integer;
  thisURI: string;
begin
  inherited create;
  F_NameSpaceAlias := aRoot.NameSpace;

  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snparametrosDBTrans_CondicaoLiberacaoOperacao_Adt) then
      CondicaoLiberacaoOperacao_Adt :=  xn.text // string
    else if (sn = snparametrosDBTrans_LocalRealizacao_Adiantamento) then
      LocalRealizacao_Adiantamento :=  xn.text // string
    else if (sn = snparametrosDBTrans_CodigoOperacao_Saldo) then
      CodigoOperacao_Saldo :=  xn.text // string
    else if (sn = snparametrosDBTrans_CondicaoLiberacaoOperacao_Saldo) then
      CondicaoLiberacaoOperacao_Saldo :=  xn.text // string
    else if (sn = snparametrosDBTrans_LocalRealizacao_Saldo) then
      LocalRealizacao_Saldo :=  xn.text // string
    else if (sn = snparametrosDBTrans_CodigoClausula) then
      CodigoClausula :=  xn.text // string
    else if (sn = snparametrosDBTrans_CodigoClausulaPeso) then
      CodigoClausulaPeso :=  xn.text // string
    else if (sn = snparametrosDBTrans_CodigoClausulaViagem) then
      CodigoClausulaViagem :=  xn.text // string
    else if (sn = snparametrosDBTrans_Documentos_Entrega) then
      Documentos_Entrega :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tparametrosDBTrans.Destroy;
begin
  inherited;
end; // destructor ...

procedure tparametrosDBTrans.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  //i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'parametrosDBTrans')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snparametrosDBTrans_CondicaoLiberacaoOperacao_Adt));
  xn.text := FCondicaoLiberacaoOperacao_Adt;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snparametrosDBTrans_LocalRealizacao_Adiantamento));
  xn.text := FLocalRealizacao_Adiantamento;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snparametrosDBTrans_CodigoOperacao_Saldo));
  xn.text := FCodigoOperacao_Saldo;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snparametrosDBTrans_CondicaoLiberacaoOperacao_Saldo));
  xn.text := FCondicaoLiberacaoOperacao_Saldo;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snparametrosDBTrans_LocalRealizacao_Saldo));
  xn.text := FLocalRealizacao_Saldo;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snparametrosDBTrans_CodigoClausula));
  xn.text := FCodigoClausula;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snparametrosDBTrans_CodigoClausulaPeso));
  xn.text := FCodigoClausulaPeso;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snparametrosDBTrans_CodigoClausulaViagem));
  xn.text := FCodigoClausulaViagem;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snparametrosDBTrans_Documentos_Entrega));
  xn.text := FDocumentos_Entrega;
end; // procedure save

{ tdbtrans }

class function tdbtrans._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tdbtrans.Create;
begin
  inherited create;
  _NamespaceAlias := defNamespaceAlias;

end; // constructor ...

constructor tdbtrans.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  //i: integer;
  thisURI: string;
begin
  inherited create;
  F_NameSpaceAlias := aRoot.NameSpace;

  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = sndbtrans_webserver) then
      webserver :=  xn.text // string
    else if (sn = sndbtrans_usuario) then
      usuario :=  xn.text // string
    else if (sn = sndbtrans_senha) then
      senha :=  xn.text // string
    else if (sn = sndbtrans_cliente) then
      cliente :=  xn.text // string
    else if (sn = sndbtrans_parametrosDBTrans)
      and ((thisURI='') or (tparametrosDBTrans._nsURI_ = thisURI)) then
      FparametrosDBTrans := tparametrosDBTrans.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tdbtrans.Destroy;
begin
  FparametrosDBTrans.Free;
  inherited;
end; // destructor ...

procedure tdbtrans.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  //i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'dbtrans')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, sndbtrans_webserver));
  xn.text := Fwebserver;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, sndbtrans_usuario));
  xn.text := Fusuario;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, sndbtrans_senha));
  xn.text := Fsenha;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, sndbtrans_cliente));
  xn.text := Fcliente;
  if Assigned(FparametrosDBTrans) then
  begin
    xn := aNode.addChildByName(sndbtrans_parametrosDBTrans);
    FparametrosDBTrans.Save(xn);
  end;
end; // procedure save

{ tparametrosNddCargo }

class function tparametrosNddCargo._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tparametrosNddCargo.Create;
begin
  inherited create;
  _NamespaceAlias := defNamespaceAlias;
  DiasParaLiberarSaldo := '30';
  MinutosParaLiberarAdiantamento := '60';
  Confirmador := '';

end; // constructor ...

constructor tparametrosNddCargo.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  //i: integer;
  thisURI: string;
begin
  inherited create;
  F_NameSpaceAlias := aRoot.NameSpace;

  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snparametrosNddCargo_GerarMovimentacaoFinanceira) then
      GerarMovimentacaoFinanceira :=  xn.text // string
    else if (sn = snparametrosNddCargo_ImpressaoAutomaticaDOT) then
      ImpressaoAutomaticaDOT :=  xn.text // string
    else if (sn = snparametrosNddCargo_TipodeOperacaodeTransporte) then
      TipodeOperacaodeTransporte :=  xn.text // string
    else if (sn = snparametrosNddCargo_TipodaCarga) then
      TipodaCarga :=  xn.text // string
    else if (sn = snparametrosNddCargo_ProprietariodaCarga) then
      ProprietariodaCarga :=  xn.text // string
    else if (sn = snparametrosNddCargo_TipodeRotaPadrao) then
      TipodeRotaPadrao :=  xn.text // string
    else if (sn = snparametrosNddCargo_UtilizaRoteirizador) then
      UtilizaRoteirizador :=  xn.text // string
    else if (sn = snparametrosNddCargo_NotificaRotaContratante) then
      NotificaRotaContratante :=  xn.text // string
    else if (sn = snparametrosNddCargo_LocaldeEfetivacaodoPagamento) then
      LocaldeEfetivacaodoPagamento :=  xn.text // string
    else if (sn = snparametrosNddCargo_LocaldeEfetivacaodoPagamentoAdt) then
      LocaldeEfetivacaodoPagamentoAdt :=  xn.text // string
    else if (sn = snparametrosNddCargo_DocumentoParaEntregar) then
      DocumentoParaEntregar :=  xn.text // string
    else if (sn = snparametrosNddCargo_tpRateioRetencoes) then
      tpRateioRetencoes := xn.text
    else if (sn = snparametrosNddCargo_DiasParaLiberarSaldo) then{#18466}
      DiasParaLiberarSaldo := xn.text
    else if (sn = snparametrosNddCargo_MinutosParaLiberarAdiantamento) then{#18466}
      MinutosParaLiberarAdiantamento := xn.text
    else if (sn = snparametrosNddCargo_Confirmador) then{#19164}
      Confirmador := xn.text;

    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tparametrosNddCargo.Destroy;
begin
  inherited;
end; // destructor ...

procedure tparametrosNddCargo.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  //i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'parametrosNddCargo')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snparametrosNddCargo_GerarMovimentacaoFinanceira));
  xn.text := FGerarMovimentacaoFinanceira;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snparametrosNddCargo_ImpressaoAutomaticaDOT));
  xn.text := FImpressaoAutomaticaDOT;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snparametrosNddCargo_TipodeOperacaodeTransporte));
  xn.text := FTipodeOperacaodeTransporte;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snparametrosNddCargo_TipodaCarga));
  xn.text := FTipodaCarga;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snparametrosNddCargo_ProprietariodaCarga));
  xn.text := FProprietariodaCarga;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snparametrosNddCargo_TipodeRotaPadrao));
  xn.text := FTipodeRotaPadrao;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snparametrosNddCargo_UtilizaRoteirizador));
  xn.text := FUtilizaRoteirizador;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snparametrosNddCargo_NotificaRotaContratante));
  xn.text := FNotificaRotaContratante;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snparametrosNddCargo_LocaldeEfetivacaodoPagamento));
  xn.text := FLocaldeEfetivacaodoPagamento;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snparametrosNddCargo_LocaldeEfetivacaodoPagamentoAdt));
  xn.text := FLocaldeEfetivacaodoPagamentoAdt;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snparametrosNddCargo_DocumentoParaEntregar));
  xn.text := FDocumentoParaEntregar;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snparametrosNddCargo_tpRateioRetencoes));
  xn.text := FtpRateioRetencoes;

end; // procedure save

{ tnddcargo }

class function tnddcargo._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tnddcargo.Create;
begin
  inherited create;
  _NamespaceAlias := defNamespaceAlias;

end; // constructor ...

constructor tnddcargo.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  //i: integer;
  thisURI: string;
begin
  inherited create;
  F_NameSpaceAlias := aRoot.NameSpace;

  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snnddcargo_tipoIntegeracao) then
      tipoIntegracao :=  Copy(xn.text+'T',1,1) // string
    else if (sn = snnddcargo_nddws) then
      nddws :=  xn.text // string
    else if (sn = snnddcargo_nddCertificado) then
      nddcertificado :=  xn.text // string
    else if (sn = snnddcargo_envio) then
      envio :=  xn.text // string
    else if (sn = snnddcargo_retorno) then
      retorno :=  xn.text // string
    else if (sn = snnddcargo_parametrosNddCargo)
      and ((thisURI='') or (tparametrosNddCargo._nsURI_ = thisURI)) then
      FparametrosNddCargo := tparametrosNddCargo.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tnddcargo.Destroy;
begin
  FparametrosNddCargo.Free;
  inherited;
end; // destructor ...

procedure tnddcargo.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  //i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'nddcargo')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snnddcargo_envio));
  xn.text := Fenvio;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snnddcargo_retorno));
  xn.text := Fretorno;
  if Assigned(FparametrosNddCargo) then
  begin
    xn := aNode.addChildByName(snnddcargo_parametrosNddCargo);
    FparametrosNddCargo.Save(xn);
  end;
end; // procedure save

{ tpancary }

class function tpancary._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tpancary.Create;
begin
  inherited create;
  _NamespaceAlias := defNamespaceAlias;

end; // constructor ...

constructor tpancary.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  //i: integer;
  thisURI: string;
begin
  inherited create;
  F_NameSpaceAlias := aRoot.NameSpace;

  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snpancary_envio) then
      envio :=  xn.text // string
    else if (sn = snpancary_retorno) then
      retorno :=  xn.text // string
    else if (sn = snpancary_parametrosPamcary)
      and ((thisURI='') or (tParametrosPancary._nsURI_ = thisURI)) then
      parametrosPamcary := tParametrosPancary.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tpancary.Destroy;
begin
  parametrosPamcary.free;
  inherited;
end; // destructor ...

procedure tpancary.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  //i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'pancary')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snpancary_envio));
  xn.text := Fenvio;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snpancary_retorno));
  xn.text := Fretorno;
  if Assigned(FparametrosPamcary) then
  begin
    xn := aNode.addChildByName(snpancary_parametrosPamcary);
    FparametrosPamcary.Save(xn);
  end;

end; // procedure save

{ tparametrosRepom }

class function tparametrosRepom._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tparametrosRepom.Create;
begin
  inherited create;
  _NamespaceAlias := defNamespaceAlias;

end; // constructor ...

constructor tparametrosRepom.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  //i: integer;
  thisURI: string;
begin
  inherited create;
  F_NameSpaceAlias := aRoot.NameSpace;

  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snparametrosRepom_OPERACAO_CODIGO) then
      OPERACAO_CODIGO :=  xn.text // string
    else if (sn = snparametrosRepom_ROTEIRO_IDA_VOLTA) then
      ROTEIRO_IDA_VOLTA :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tparametrosRepom.Destroy;
begin
  inherited;
end; // destructor ...

procedure tparametrosRepom.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  //i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'parametrosRepom')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snparametrosRepom_OPERACAO_CODIGO));
  xn.text := FOPERACAO_CODIGO;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snparametrosRepom_ROTEIRO_IDA_VOLTA));
  xn.text := FROTEIRO_IDA_VOLTA;
end; // procedure save

{ trepom }

class function trepom._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor trepom.Create;
begin
  inherited create;
  _NamespaceAlias := defNamespaceAlias;

end; // constructor ...

constructor trepom.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  //i: integer;
  thisURI: string;
begin
  inherited create;
  F_NameSpaceAlias := aRoot.NameSpace;

  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snrepom_webserver) then
      webserver :=  xn.text // string
    else if (sn = snrepom_usuario) then
      usuario :=  xn.text // string
    else if (sn = snrepom_senha) then
      senha :=  xn.text // string
    else if (sn = snrepom_parametrosRepom)
      and ((thisURI='') or (tparametrosRepom._nsURI_ = thisURI)) then
      FparametrosRepom := tparametrosRepom.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor trepom.Destroy;
begin
  FparametrosRepom.Free;
  inherited;
end; // destructor ...

procedure trepom.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  //i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'repom')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snrepom_webserver));
  xn.text := Fwebserver;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snrepom_usuario));
  xn.text := Fusuario;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snrepom_senha));
  xn.text := Fsenha;
  if Assigned(FparametrosRepom) then
  begin
    xn := aNode.addChildByName(snrepom_parametrosRepom);
    FparametrosRepom.Save(xn);
  end;
end; // procedure save

{ tadministradoras }

class function tadministradoras._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tadministradoras.Create;
begin
  inherited create;
  _NamespaceAlias := defNamespaceAlias;

end; // constructor ...

constructor tadministradoras.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  //i: integer;
  thisURI: string;
begin
  inherited create;
  F_NameSpaceAlias := aRoot.NameSpace;

  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snadministradoras_repom)
      and ((thisURI='') or (trepom._nsURI_ = thisURI)) then
      repom := trepom.Create(xn)
    else if (sn = snadministradoras_pancary)
      and ((thisURI='') or (tpancary._nsURI_ = thisURI)) then
      pancary := tpancary.Create(xn)
    else if (sn = snadministradoras_nddcargo)
      and ((thisURI='') or (tnddcargo._nsURI_ = thisURI)) then
      nddcargo := tnddcargo.Create(xn)
    else if (sn = snadministradoras_dbtrans)
      and ((thisURI='') or (tdbtrans._nsURI_ = thisURI)) then
      dbtrans := tdbtrans.Create(xn)
    else if (sn = snadministradoras_ticket)
      and ((thisURI='') or (tticket._nsURI_ = thisURI)) then
      ticket := tticket.Create(xn)
    else if (sn = snadministradoras_target) 
      and ((thisURI='') or (tticket._nsURI_ = thisURI)) then
      target := ttarget.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tadministradoras.Destroy;
begin
  Frepom.Free;
  Fpancary.Free;
  Fnddcargo.Free;
  Fdbtrans.Free;
  Fticket.Free;
  inherited;
end; // destructor ...

procedure tadministradoras.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  //i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'administradoras')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Assigned(Frepom) then
  begin
    xn := aNode.addChildByName(snadministradoras_repom);
    Frepom.Save(xn);
  end;
  if Assigned(Fpancary) then
  begin
    xn := aNode.addChildByName(snadministradoras_pancary);
    Fpancary.Save(xn);
  end;
  if Assigned(Fnddcargo) then
  begin
    xn := aNode.addChildByName(snadministradoras_nddcargo);
    Fnddcargo.Save(xn);
  end;
  if Assigned(Fdbtrans) then
  begin
    xn := aNode.addChildByName(snadministradoras_dbtrans);
    Fdbtrans.Save(xn);
  end;
  if Assigned(Fticket) then
  begin
    xn := aNode.addChildByName(snadministradoras_ticket);
    Fticket.Save(xn);
  end;
end; // procedure save

procedure tadministradoras.Setdbtrans(const Value: tdbtrans);
begin
  Fdbtrans := Value;
  value.Admininstradora := Self;
end;

procedure tadministradoras.Setnddcargo(const Value: tnddcargo);
begin
  Fnddcargo := Value;
  value.Admininstradora := Self;
end;

procedure tadministradoras.Setpancary(const Value: tpancary);
begin
  Fpancary := Value;
  value.Admininstradora := Self;
end;

procedure tadministradoras.Setrepom(const Value: trepom);
begin
  Frepom := Value;
  value.Admininstradora := Self;
end;

procedure tadministradoras.Setticket(const Value: tticket);
begin
  Fticket := Value;
  value.Admininstradora := Self;
end;

procedure tadministradoras.Setcnpj(const Value: TObject);
begin
  if value is tcnpj then
    Fcnpj := Value
  else
    raise exception.Create('não é uma classe TCNPJ');
end;

procedure tadministradoras.Settarget(const Value: ttarget);
begin
  Ftarget := Value;
  value.Admininstradora := Self;
end;

{ tcnpj }

class function tcnpj._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tcnpj.Create;
begin
  inherited create;
  _NamespaceAlias := defNamespaceAlias;

end; // constructor ...

constructor tcnpj.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  inherited create;
  F_NameSpaceAlias := aRoot.NameSpace;

  for i:=0 to aRoot.attributecount -1 do
  begin
    sn := NamePart(aRoot.attributeName[i]);
    if sn = ancnpj_id then
      id := aRoot.attribute[i];
  end;

  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = sncnpj_administradoras)
      and ((thisURI='') or (tadministradoras._nsURI_ = thisURI)) then
    begin
      administradoras := tadministradoras.Create(xn);
      administradoras.cnpj := Self;
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tcnpj.Destroy;
begin
  Fadministradoras.Free;
  inherited;
end; // destructor ...

procedure tcnpj.Setid(value:string);
begin
  Fid := value;
  Fid_IsSet_ := true;
end;

procedure tcnpj.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  //i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'cnpj')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if id_IsSet_ then
    aNode.attribute[ancnpj_id] := Fid;

  if Assigned(Fadministradoras) then
  begin
    xn := aNode.addChildByName(sncnpj_administradoras);
    Fadministradoras.Save(xn);
  end;
end; // procedure save

procedure tcnpj.Setadministradoras(const Value: tadministradoras);
begin
  Value.cnpj := Self;
  Fadministradoras := Value;
end;

procedure tcnpj.Setgrupo(const Value: TObject);
begin
  Fgrupo := Value;
end;

function tcnpj.getgrupo: TObject;
begin
  result := Fgrupo;
end;

{ tcnpjs }

class function tcnpjs._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tcnpjs.Create;
begin
  inherited create;
  _NamespaceAlias := defNamespaceAlias;

  Fcnpj := tManagedStringlist.Create;
end; // constructor ...

constructor tcnpjs.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  //i: integer;
  thisURI: string;
  acnpj: tcnpj;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;

  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = sncnpjs_cnpj)
      and ((thisURI='') or (tcnpj._nsURI_ = thisURI)) then
    begin
      acnpj := tcnpj.Create(xn);
      acnpj.grupo := self.grupo;
      Fcnpj.AddObject('?', acnpj);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tcnpjs.Destroy;
begin
  Fcnpj.Free;
  inherited;
end; // destructor ...

procedure tcnpjs.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'cnpjs')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "cnpj" is tManagedStringlist
  if Assigned(Fcnpj) then
    for i:=0 to Fcnpj.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, sncnpjs_cnpj));
      tcnpj(Fcnpj.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

procedure tcnpjs.Setgrupo(const Value: TObject);
begin
  Fgrupo := Value;
end;

{ tgrupo }

class function tgrupo._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tgrupo.Create;
begin
  inherited create;
  _NamespaceAlias := defNamespaceAlias;

end; // constructor ...

constructor tgrupo.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  inherited create;
  F_NameSpaceAlias := aRoot.NameSpace;

  for i:=0 to aRoot.attributecount -1 do
  begin
    sn := NamePart(aRoot.attributeName[i]);
    if sn = angrupo_id then
      id := aRoot.attribute[i]; // string
  end;

  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = sngrupo_cnpjs)
      and ((thisURI='') or (tcnpjs._nsURI_ = thisURI)) then
    begin
      cnpjs := tcnpjs.Create(xn);
      cnpjs.grupo := self;
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tgrupo.Destroy;
begin
  Fcnpjs.Free;
  inherited;
end; // destructor ...

procedure tgrupo.Setid(value:string);
begin
  Fid := value;
  Fid_IsSet_ := true;
end;

procedure tgrupo.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  //i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'grupo')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if id_IsSet_ then
    aNode.attribute[angrupo_id] := Fid;

  if Assigned(Fcnpjs) then
  begin
    xn := aNode.addChildByName(sngrupo_cnpjs);
    Fcnpjs.Save(xn);
  end;
end; // procedure save

procedure tgrupo.setcnpjs(const Value: tcnpjs);
begin
  Fcnpjs := Value;
  Fcnpjs.grupo := Self;
end;

{ tgrupos }

class function tgrupos._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tgrupos.Create;
begin
  inherited create;
  _NamespaceAlias := defNamespaceAlias;

  Fgrupo := tManagedStringlist.Create;
end; // constructor ...

constructor tgrupos.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  //i: integer;
  thisURI: string;
  agrupo: tgrupo;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;

  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = sngrupos_grupo)
      and ((thisURI='') or (tgrupo._nsURI_ = thisURI)) then
    begin
      agrupo := tgrupo.Create(xn);
      aGrupo.configuracao := self.configuracao;
      Fgrupo.AddObject('?', agrupo);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tgrupos.Destroy;
begin
  Fgrupo.Free;
  inherited;
end; // destructor ...

procedure tgrupos.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'grupos')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "grupo" is tManagedStringlist
  if Assigned(Fgrupo) then
    for i:=0 to Fgrupo.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, sngrupos_grupo));
      tgrupo(Fgrupo.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tconfiguracao }

class function tconfiguracao._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tconfiguracao.Create;
begin
  inherited create;
  _NamespaceAlias := defNamespaceAlias;

end; // constructor ...

constructor tconfiguracao.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  //i: integer;
  thisURI: string;
  vgrupo,
  vcnpj : Integer;
begin
  inherited create;
  F_NameSpaceAlias := aRoot.NameSpace;

  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snconfiguracao_diretorioBase) then
      diretorioBase :=  xn.text // string
    else if (sn = snconfiguracao_proxy) then
      proxy := xn.text
    else if (sn = snconfiguracao_proxyusuario) then
      proxyusuario := xn.text
    else if (sn = snconfiguracao_proxysenha) then
      proxysenha := xn.text
    else if (sn = snconfiguracao_retornocomhora) then
      retornocomhora := xn.text
    else if (sn = snconfiguracao_grupos)
      and ((thisURI='') or (tgrupos._nsURI_ = thisURI)) then
      grupos := tgrupos.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...

  for vgrupo := 0 to  grupos.grupo.count -1 do
  with tgrupo( grupos.grupo.Objects[vGrupo]) do
  begin
    configuracao := Self;
    for vcnpj := 0 to cnpjs.cnpj.Count-1 do
    with tcnpj(cnpjs.cnpj.Objects[vcnpj]) do
    begin
       grupo := grupos.grupo.Objects[vGrupo];
       administradoras.cnpj := cnpjs.cnpj.Objects[vcnpj];
    end;
  end;

end; // constructor ...

destructor tconfiguracao.Destroy;
begin
  Fgrupos.Free;
  inherited;
end; // destructor ...

procedure tconfiguracao.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  //i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'configuracao')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snconfiguracao_diretorioBase));
  xn.text := FdiretorioBase;
  if Assigned(Fgrupos) then
  begin
    xn := aNode.addChildByName(snconfiguracao_grupos);
    Fgrupos.Save(xn);
  end;
end; // procedure save

procedure tconfiguracao.Setproxy(const Value: string);
begin
  Fproxy := Value;
end;

procedure tconfiguracao.Setproxysenha(const Value: string);
begin
  Fproxysenha := Value;
end;

procedure tconfiguracao.Setproxyusuario(const Value: string);
begin
  Fproxyusuario := Value;
end;

procedure tconfiguracao.Setgrupos(const Value: tgrupos);
begin
  Fgrupos := Value;
end;

procedure tconfiguracao.Setretornocomhora(const Value: string);
begin
  Fretornocomhora := Value;
end;

{ tParametrosPancary }

class function tParametrosPancary._nsURI_: string;
begin
  result := thisNameSpaceURI;

end;

constructor tParametrosPancary.Create;
begin
  inherited create;
  _NamespaceAlias := defNamespaceAlias;

end;

constructor tParametrosPancary.Create(aRoot: tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  //i: integer;
  thisURI: string;
begin
  inherited create;
  F_NameSpaceAlias := aRoot.NameSpace;

  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snparametrosPancary_viagem_parcelaA_efetivacao_tipo) then
      viagem_parcelaA_efetivacao_tipo :=  xn.text // string
    else if (sn = snparametrosPancary_viagem_parcelaA_status_id) then
      viagem_parcelaA_status_id :=  xn.text // string
    else if (sn = snparametrosPancary_viagem_parcelaS_efetivacao_tipo) then
      viagem_parcelaS_efetivacao_tipo :=  xn.text // string
    else if (sn = snparametrosPancary_viagem_parcelaS_status_id) then
      viagem_parcelaS_status_id :=  xn.text // string
    else if (sn = snparametrosPancary_viagem_quitacao) then
      viagem_quitacao :=  xn.text // string
    else if (sn = snparametrosPancary_valor_minimo_VA) then
      valor_minimo_VA :=  xn.text // string
    else;


    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tParametrosPancary.Destroy;
begin

  inherited;
end;

procedure tParametrosPancary.Save(aNode: tJanXMLNode2);
var
  xn: tJanXMLNode2;
  //i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'parametrosPancary')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snparametrosPancary_viagem_parcelaA_efetivacao_tipo));
  xn.text := snparametrosPancary_viagem_parcelaA_efetivacao_tipo;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snparametrosPancary_viagem_parcelaA_status_id));
  xn.text := snparametrosPancary_viagem_parcelaA_status_id;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snparametrosPancary_viagem_parcelaS_efetivacao_tipo));
  xn.text := snparametrosPancary_viagem_parcelaS_efetivacao_tipo;
end; // procedure save

{ TCconfigBase }

constructor TCconfigBase.create;
begin
  inherited create;
  if FindCmdLineSwitch('debug', ['-'], True ) then
  begin
     EnterCriticalSection(CritSect);
     try
        class_var_Refs.AddObject(  Self.ClassName, self );
     finally
        LeaveCriticalSection(CritSect);
     end;
  end;
end;

destructor TCconfigBase.Destroy;
begin
  if FindCmdLineSwitch('debug', ['-'], True ) then
  begin
     EnterCriticalSection(CritSect);
     try
        class_var_Refs.Delete(  class_var_Refs.IndexOfObject( self ) );
     finally
        LeaveCriticalSection(CritSect);
     end;
  end;
  inherited;
end;

{ ttarget }

class function ttarget._nsURI_: string;
begin
 result := thisNameSpaceURI;
end;

constructor ttarget.Create;
begin
  inherited create;
  _NamespaceAlias := defNamespaceAlias;
end;

constructor ttarget.Create(aRoot: tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  //i: integer;
  thisURI: string;
begin
  inherited create;
  F_NameSpaceAlias := aRoot.NameSpace;

  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = sntarget_webserver) then
      webserver :=  xn.text // string
    else if (sn = sntarget_identification) then
      Identification :=  xn.text // string
    else if (sn = sntarget_Token) then
      Token :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor ttarget.Destroy;
begin

  inherited;
end;

procedure ttarget.Save(aNode: tJanXMLNode2);
begin

end;

initialization
   InitializeCriticalSection(CritSect);
   class_var_Refs := TStringList.Create;
finalization
   DeleteCriticalSection(CritSect);
   if class_var_Refs.Count <> 0 then
   begin
      class_var_Refs.SaveToFile( 'dump_xmlconfig.txt'  );
      class_var_Refs.Free;
   end;

end.
