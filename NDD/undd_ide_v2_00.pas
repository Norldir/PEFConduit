unit undd_ide_v2_00;

interface

uses classes, undd_base;

type
  TNDD_EnderecoTransportador = class( TNDD )
  private
    FCEP: string;
    Fcidade: string;
    Fbairro: string;
    Fcomplemento: string;
    FUF: string;
    FLogradouro: string;
    Fnumero: string;
  public
    constructor create;
  published
    property UF : string read FUF write FUF;
    property cidade : string read Fcidade write Fcidade;
    property bairro : string read Fbairro write Fbairro;
    property Logradouro : string read FLogradouro write FLogradouro;
    property numero : string read Fnumero write Fnumero;
    property CEP : string read FCEP write FCEP;
    property complemento : string read Fcomplemento write Fcomplemento;
  end;

  TNDD_EnderecoRemetente = class( TNDD )
  private
    FCEP: string;
    FcodigoMunicipio: string;
    Fbairro: string;
    Fcomplemento: string;
    FUF: string;
    FLogradouro: string;
    Fnumero: string;
  public
    constructor create;
  published
    property UF : string read FUF write FUF;
    property codigoMunicipio : string read FcodigoMunicipio write FcodigoMunicipio;
    property bairro : string read Fbairro write Fbairro;
    property Logradouro : string read FLogradouro write FLogradouro;
    property numero : string read Fnumero write Fnumero;
    property CEP : string read FCEP write FCEP;
    property complemento : string read Fcomplemento write Fcomplemento;
  end;

  TNDD_Remetente = class( TNDD )
  private
    FEndereco: TNDD_EnderecoRemetente;
    Fnome: string;
    Fcnpj_cpf: string;
  public
    constructor create;
    destructor destroy; override;
  published
    property cnpj_cpf : string read Fcnpj_cpf write Fcnpj_cpf;
    property nome : string read Fnome write Fnome;
    property Endereco : TNDD_EnderecoRemetente read FEndereco write FEndereco;
  end;

  TNDD_EnderecoDestinatario = class( TNDD_EnderecoRemetente)
  public
    constructor create;
  end;

  TNDD_Destinatario  = class( TNDD_Remetente )
  private
    FEndereco: TNDD_EnderecoDestinatario;
  public
    constructor create;
  published
    property Endereco : TNDD_EnderecoDestinatario read FEndereco write FEndereco;
  end;

  TNDD_EnderecoConsignatario = class( TNDD_EnderecoRemetente)
  public
    constructor create;
  end;

  TNDD_consignatario  = class( TNDD_Remetente )
  private
    FEndereco: TNDD_EnderecoConsignatario;
  public
    constructor create;
  published
    property Endereco : TNDD_EnderecoConsignatario read FEndereco write FEndereco;
  end;

  TNDD_DocumentosOriginarios = class( TNDD )
  private
    Ftipo: string;
    Fnumero: string;
  public
    constructor create;
  published
    property tipo : string read Ftipo write Ftipo;
    property numero : string read Fnumero write Fnumero;
  end;


  TNDD_Contato = class(Tndd)
  private
    Fnome: string;
    Fcotato: string;
  public
    constructor create;
  published
    property nome : string read Fnome write Fnome;
    property cotato : string read Fcotato write Fcotato;
  end;

  TNDD_EnderecoCondutor  = class(TNDD_EnderecoTransportador)
  public
     constructor create;
  end;

  TNDD_InformacaoCondutor = class(TNDD )
  private
    Fnome: string;
    FRNTRCTransportador: string;
    Fidentidade: string;
    FCNH: string;
    FcartaoId: string;
    Ftelefone: string;
    FdataRenovacaoCNH: string;
    FdataEmissaoCNH: string;
    FEndereco: TNDD_EnderecoCondutor;
    FCPF_CNPJ_transportador: string;
  public
    constructor create;
    destructor destroy; override;
  published
    property nome : string read Fnome write Fnome;
    property identidade : string read Fidentidade write Fidentidade;
    property CNH : string read FCNH write FCNH;
    property dataEmissaoCNH : string read FdataEmissaoCNH write FdataEmissaoCNH;
    property dataRenovacaoCNH : string read FdataRenovacaoCNH write FdataRenovacaoCNH;
    property telefone : string read  Ftelefone write Ftelefone;
    property cartaoId : string read  FcartaoId write FcartaoId;
    property RNTRCTransportador : string read  FRNTRCTransportador write FRNTRCTransportador;
    property CPF_CNPJ_transportador : string read FCPF_CNPJ_transportador write FCPF_CNPJ_transportador; //add v 4.2.4 
    property endereco : TNDD_EnderecoCondutor read FEndereco write FEndereco;
  end;


  TNDD_Condutores = class( TNDD )
  private
    Fcpf: string;
    FinformacaoCondutor : TNDDFilhos;
  public
    constructor create;
    destructor Destroy; override;
    function addinformacaoCondutor : TNDD_InformacaoCondutor;
  published
    property cpf : string read Fcpf write Fcpf;
    property informacaoCondutor : TNDDFilhos read FinformacaoCondutor write FinformacaoCondutor;
  end;

  TNDD_InformacaoVeiculo = class(TNDD)
  private
    Ftipo: string;
    FkmLitroVeiculo: string;
    FkmLitroModelo: string;
    Fmodelo: string;
    FRNTRCTransportador: string;
  public
    constructor create;
  published
    property modelo : string read Fmodelo write Fmodelo;
    property kmLitroModelo : string read FkmLitroModelo write FkmLitroModelo;
    property tipo : string read Ftipo write Ftipo;
    property kmLitroVeiculo : string read FkmLitroVeiculo write FkmLitroVeiculo;
    property RNTRCTransportador : string read FRNTRCTransportador write FRNTRCTransportador;
  end;



  TNDD_Veiculos = class( TNDD )
  private
    Fplaca: string;
    FInformacaoVeiculo: TNDDFilhos;
  public
    constructor create;
    destructor destroy; override;
    function addInformacaoVeiculo : TNDD_InformacaoVeiculo;
  published
    property placa : string read Fplaca write Fplaca;
    property InformacaoVeiculo : TNDDFilhos read FInformacaoVeiculo write FInformacaoVeiculo;
  end;


  TNDD_Desconto = class( TNDD )
  private
    FmmDesc: string;
    FdsDesc: string;
    FvlrDesc: string;
    FtpDesc: string;
  public
    constructor create;
  published
    //property tpDesc : string read FtpDesc write FtpDesc; removido na versao 4.2.3
    property mmDesc : string read FmmDesc write FmmDesc;
    property vlrDesc : string read FvlrDesc write FvlrDesc;
    property dsDesc : string read FdsDesc write FdsDesc;
  end;

  TNDD_Despesa  = class(TNDD)
  private
    FvlrDespesas: string;
    Fdescricao: string;
  public
    constructor create;
  published
    property vlrDespesas : string read FvlrDespesas write FvlrDespesas;
    property descricao : string read Fdescricao write Fdescricao;
  end;

  TNDD_Valores = class(TNDD)
  private
    FvlrCombustivel: string;
    FvlrPedagio: string;
    Finsss: string;
    //Fsenat: string;
    Fsest: string;
    FvlrViagem: string;
    Firrf: string;
    FDesconto: TNDDFilhos;
    FDespesas: TNDDFilhos;
    FTpRateioRetencoes: string;
  public
    constructor create;
    destructor destroy; override;
    function addDesconto: TNDD_Desconto;
    function addDespesa: TNDD_Despesa;
  published
    property vlrFrete : string read FvlrViagem write FvlrViagem;
    property vlrCombustivel : string read FvlrCombustivel write FvlrCombustivel;
    property vlrPedagio : string read FvlrPedagio write FvlrPedagio;
    property irrf : string read Firrf write Firrf;
    property insss : string read Finsss write Finsss;
    property sest : string read Fsest write Fsest;
//    property senat : string read Fsenat write Fsenat;
    property TpRateioRetencoes : string read FTpRateioRetencoes write FTpRateioRetencoes;
    property Desconto : TNDDFilhos read FDesconto write FDesconto;
    property Despesas : TNDDFilhos read FDespesas write FDespesas;
  end;

  TNDD_EnderecoSubcontratado = class( TNDD_EnderecoRemetente )
  public
    constructor create;
  end;

  TNDD_SubContratado = class(TNDD)
  private
    Fnome: string;
    Fcnpj_cpf: string;
    FEnderecoSubcontratado: TNDD_EnderecoSubcontratado;
  public
    constructor create;
    destructor destroy; override;
  published
    property cnpj_cpf : string read Fcnpj_cpf write Fcnpj_cpf;
    property nome : string read Fnome write Fnome;
    property EnderecoSubcontratado : TNDD_EnderecoSubcontratado read FEnderecoSubcontratado write FEnderecoSubcontratado;
  end;

  TNDD_PontosDeParada = class( TNDD )
  private
    FcodigoIBGE_CEP: string;
    FtipoRotaEspecifico: string;
  public
    constructor create;
  published
    property codigoIBGE_CEP : string read FcodigoIBGE_CEP write FcodigoIBGE_CEP;
    property tipoRotaEspecifico : string read FtipoRotaEspecifico write FtipoRotaEspecifico;
  end;


  TNDD_respomsavelRota = class( TNDD)
  private
    FNome: string;
    Femail: string;
  public
    constructor create;
  published
    property nome : string read FNome write FNome;
    property email : string read Femail write FEmail;
  end;


  TNDD_InformacaoRota = class( TNDD)
  private
    FtotalKm: string;
    FutilizaRoteirizador: string;
    FNome: string;
    FtipoRotaPadrao: string;
    FnotificaRespContratante: string;
    FPontosDeParada: TNDDFilhos;
    FResponavel: TNDD_respomsavelRota;
  public
    constructor create;
    destructor destroy; override;
    function addPontosDeParada : TNDD_PontosDeParada;
  published
    property nome : string read FNome write Fnome;
    property tipoRotaPadrao : string read FtipoRotaPadrao write FtipoRotaPadrao;
    property utilizaRoteirizador : string  read FutilizaRoteirizador write FutilizaRoteirizador ;
    property totalKm : string read FtotalKm write FtotalKm;
    property notificaRespContratante : string read FnotificaRespContratante write FnotificaRespContratante;
    property PontosDeParada : TNDDFilhos read FPontosDeParada write FPontosDeParada;
    property Responavel : TNDD_respomsavelRota read FResponavel write FResponavel;
  end;


  TNDD_Rota = class(TNDD)
  private
    FRotaERP: string;
  public
    constructor create;
  published
    property rotaERP : string read FRotaERP write FRotaERP;
  end;


  TNDD_InformacaoTransportador = class(TNDD)
  private
    Fnome: string;
    Ftipo: string;
    Ftelefone: string;
    FcartaoId: string;
    FCPF_CNPJ: string;
    FIdentidade_InscEstadual: string;
    FEndereco: TNDD_EnderecoTransportador;
    FEmailTransportador: string;
  public
    constructor create;
    destructor destroy; override;
  published
    property nome : string read Fnome write Fnome;
    property tipo : string read Ftipo write Ftipo;
    //property CPF_CNPJ : string read FCPF_CNPJ write FCPF_CNPJ;
    property Identidade_InscEstadual : string read FIdentidade_InscEstadual write FIdentidade_InscEstadual;
    property telefone : string read Ftelefone write Ftelefone;
    property cartaoId : string read FcartaoId write FcartaoId;
    property EmailTransportador : string read FEmailTransportador write FEmailTransportador; 
    property Endereco : TNDD_EnderecoTransportador read FEndereco write FEndereco;
  end;

  TNDD_Transporte = class(Tndd)
  private
    Frntrc: string;
    FgestorCartao: string;
    FcategoriaPedagio: string;
    Fsubcontratado: TNDD_SubContratado;
    Fvalores: TNDD_Valores;
    Fveiculos: TNDDFilhos;
    Fcondutores: TNDDFilhos;
    FRota: TNDDFilhos;
    FInformacaoRota: TNDDFilhos;
    FInformacaoTransportador: TNDDFilhos;
    FCPF_CNPJ_transportador: string;
  public
    constructor create;
    destructor destroy; override;
    function addVeiculos : TNDD_Veiculos;
    function addCondutores : TNDD_Condutores;
    function addInformacaoRota : TNDD_InformacaoRota;
    function AddInformacaoTransportador : TNDD_InformacaoTransportador;
    function addRota : TNDD_Rota;
  published
    property rntrc : string read Frntrc write Frntrc;
    property CPF_CNPJ_transportador : string read FCPF_CNPJ_transportador write FCPF_CNPJ_transportador; 
    property gestorCartao : string read FgestorCartao write FgestorCartao;
    property categoriaPedagio : string read FcategoriaPedagio write FcategoriaPedagio;
    property InformacaoTransportador : TNDDFilhos read FInformacaoTransportador write FInformacaoTransportador;
    property condutores : TNDDFilhos read Fcondutores write Fcondutores;
    property veiculos : TNDDFilhos read Fveiculos write Fveiculos;
    property valores : TNDD_Valores read Fvalores write Fvalores;
    property subcontratado : TNDD_SubContratado read Fsubcontratado write Fsubcontratado;
    property rota : TNDDFilhos read FRota write FRota;
    property InformacaoRota : TNDDFilhos read FInformacaoRota write FInformacaoRota;
  end;

  TNDD_DependenciaEntrega = class( TNDD )
  private
    Fdescricao: string;
  public
     constructor create;
  published
    property descricao : string read Fdescricao write Fdescricao;
  end;

  TNDD_DocumentoEntrega = class(TNDD)
  private
    Fobrigatorio: string;
    Ftipo: string;
    FDependenciaEntrega: TNDDFilhos;
  public
     constructor create;
     destructor destroy; override;
     function addDependenciaEntrega : TNDD_DependenciaEntrega;
  published
     property tipo : string read Ftipo write Ftipo;
     property obrigatorio : string read Fobrigatorio write Fobrigatorio;
     property DependenciaEntrega : TNDDFilhos read FDependenciaEntrega write FDependenciaEntrega;
  end;


  TNDD_Adicionais= class(Tndd)
  private
    Fnome: string;
    Fvalor: string;
  public
    constructor create;
  published
    property nome : string read Fnome write Fnome;
    property valor : string read Fvalor write Fvalor;
  end;

  TNDD_Carga = class(Tndd)
  private
    Fquantidade: string;
    Fncm: string;
    //FunidadeMedida: string;
  public
    constructor create;
    destructor destroy; override;
  published
    property ncm : string read Fncm write Fncm; //Natureza da carga N S 8 Código da Nomenclatura Comum do Mercosul. Define qual a natureza da carga conforme tabela de códigos do Sistema Harmonizado de Designação e de Codificação de Mercadorias.
//    property unidadeMedida : string read FunidadeMedida write FunidadeMedida;
    property quantidade : string read Fquantidade write Fquantidade; // Quantidade da carga Quantidade de carga conforme unidade de medida.
  end;


  TNDD_TipoCarga = class(TNDD)
  private
    FproprietarioCarga: string;
    FCarga: TNDD_carga;
    FTipo_carga: string;
    Fdestinatario: TNDD_Destinatario;
    Fremetente: TNDD_Remetente;
    FDocumentos: TNDDFilhos;
    Fconsignatario: TNDDFilhos;
  public
    constructor create;
    destructor Destroy; override;
    function addDocumentos : TNDD_DocumentosOriginarios;
    function addConsignatario : TNDD_consignatario;
  published
    property Tipo : string read FTipo_carga write FTipo_carga;
    property proprietarioCarga : string read FproprietarioCarga write FproprietarioCarga;
    property Carga : TNDD_carga read FCarga write FCarga;
    property remetente : TNDD_Remetente read Fremetente write Fremetente;
    property destinatario : TNDD_Destinatario read Fdestinatario write Fdestinatario;
    property Documentos : TNDDFilhos read FDocumentos write FDocumentos;
    property consignatario : TNDDFilhos read Fconsignatario write Fconsignatario;
  end;

  TNDD_ide = class(TNDD) //1000
  private
    Fcontrato: string;
    Fnumero: string;
    Fcnpj: string;
    Fserie: string;
    FdtInicio: string;
    //FdtEmi: string;
    FdtFim: string;
    FptEmissor: string;
    FimpAuto: string;
    FtipoOp: string;
    FgerPgtoPedagio: string;
    FgerPgtoFin: string;
    FutilizaDirecionamentoPedagio: string;
  public
    constructor create;
    destructor destroy; override;
  published
    property cnpj : string read Fcnpj write Fcnpj; // 1 cnpj CNPJ da Contratante N S 14
    property numero : string read Fnumero write Fnumero; // 2 numero Número da Operação de Transporte N S 1-6 Número da OT usado para controle
    property serie : string read Fserie write Fserie; // 3 serie Série da Operação de Transporte N S 1-2
//    property dtEmi : string read FdtEmi write FdtEmi; //4 dtEmi Data e hora de emissão da OT D N 8 Data da emissão da Operação de Transporte no formato: AAAA-MM-DD HH:MM:SS. Se nãofor informada, será automaticamente usado adata e hora atuais, conforme horário deBrasília.
    property ptEmissor : string read FptEmissor write FptEmissor; //5 ptEmissor Ponto emissor da OT C S 1-30
    property dtInicio : string read FdtInicio write FdtInicio; //6 dtInicio Data de início da vigência da OT D S 8Data em que a Operação de Transportecomeça a ter validade e passa a ser passívelde pagamentos. Formato: AAAA-MM-DD
    property dtFim : string read FdtFim write FdtFim; //7 dtFim Data de término da vigência da OT D N 8      Data de término da OT. Caso não sejainformada, a data final será definidaautomaticamente como 30 dias após adtInicio. Formato: AAAA-MM-DD
    property contrato : string read Fcontrato write Fcontrato; //8 contrato Número do contrato C N 1-60
    property gerPgtoFin : string read FgerPgtoFin write FgerPgtoFin;
    property gerPgtoPedagio : string read FgerPgtoPedagio write FgerPgtoPedagio;
    property impAuto : string read FimpAuto write FimpAuto;
    property tipoOp : string read FtipoOp write FTipoOp;
    property utilizaDirecionamentoPedagio : string read FutilizaDirecionamentoPedagio write FutilizaDirecionamentoPedagio;
  end;


  TNDD_EnvioDocumentos =  class(TNDD)
  private
    Fentrega: string;
    fdocumentos: TNDDFilhos;
  public
     constructor create;
     destructor destroy; override;
     function addDocumentos : TNDD_DocumentoEntrega;
  published
     property entrega : string read Fentrega write Fentrega;
     property documentos : TNDDFilhos read fdocumentos write fdocumentos;
  end;


  TNDD_Confirmador =  class(TNDD)
  private
    Fcnpj_cpf: string;
  public
     constructor create;
  published
     property cnpj_cpf : string read Fcnpj_cpf write Fcnpj_cpf;
  end;

  TNDD_Parcelamento = class(TNDD)
  private
    FregERP: string;
  public
     constructor create;
  published
     property regERP : string read FregERP write FregERP;
  end;

  TNDD_PagamentoAutomatico = class(TNDD)
  private
    fdataHora: string;
  public
     constructor create;
  published
     property dataHora : string read fdataHora write FdataHora;
  end;

  TNDD_PagamentoManual = class( TNDD )
  private
    FdataPRevisao: string;
    FEfetivacao: string;
  public
     constructor create;
  published
     property dataPrevisao : string read FdataPRevisao write FdataPrevisao;
     property efetivacao : string read FEfetivacao write FEfetivacao;
  end;

  TNDD_Dependencia = class( TNDD )
  private
    Fdescricao: string;
  public
    constructor create;
  published
    property descricao : string read Fdescricao write Fdescricao;
  end;

  TNDD_DocumentosParcela = class( TNDD )
  private
    Ftipo: string;
    Fobrigatorio: string;
    FDependencia: TNDDFilhos;
  public
    constructor create;
    destructor destroy;override;
    function addDependencia : TNDD_Dependencia;
  published
    property tipo : string read Ftipo write Ftipo;
    property obrigatorio : string read Fobrigatorio write Fobrigatorio;
    property Dependencia : TNDDFilhos read FDependencia write FDependencia;
  end;

  TNDD_DescontoParcela = class( TNDD )
  private
    //FnmDesc: string;
    FdsDesc: string;
    FvlrDesc: string;
    FtpDesc: string;
    FmmDesc: string;
  public
    constructor create;
  published
    // property tpDesc : string read FtpDesc write FtpDesc; removido no layout 4.2.3
    property nmDesc : string read FmmDesc write FmmDesc;
    property vlrDesc : string read FvlrDesc write FvlrDesc;
    property dsDesc : string read FdsDesc write FdsDesc;
  end;

  TNDD_Parcela = class(TNDD)
  private
    FValorAplicado: string;
    FValorReal: string;
    FNomeParcela: string;
    FDocumentos: TNDDFilhos;
    FDescontos: TNDDFilhos;
    FPagamentoManual: TNDDFilhos;
    FPagamentoAutomatico: TNDDFilhos;
    FRestricao: TNDDFilhos;
    FprazoMinimo: String;
    FconfirmarPgto: String;
  public
     constructor create;
     destructor destroy;override;
     function addPagamentoAutomatico : TNDD_PagamentoAutomatico;
     function addPagamentoManual : TNDD_PagamentoManual;
     function addDocumento : TNDD_DocumentosParcela;
     function addDescontos : TNDD_DescontoParcela;
  published
     property NomeParcela : string read FNomeParcela write FNomeParcela;
//     property Saldo : extended read FSaldo write FSaldo;
     property ValorAplicado : string read FValorAplicado write FValorAplicado;
     property ValorReal : string read FValorReal write FValorReal;
     property prazoMinimo : String read FprazoMinimo write FprazoMinimo;   // add 4.2.3
     property confirmarPgto : String read FconfirmarPgto write FconfirmarPgto;// add 4.2.3
     property PagamentoAutomatico : TNDDFilhos read FPagamentoAutomatico write FPagamentoAutomatico;
     property PagamentoManual : TNDDFilhos read FPagamentoManual write FPagamentoManual;
     property Documentos : TNDDFilhos read FDocumentos write FDocumentos;
     property Descontos : TNDDFilhos read FDescontos write FDescontos;
     property Restricao : TNDDFilhos read FRestricao write FRestricao;
  end;

  TNDD_Token =  class(TNDD)
  private
    FToken: string;
    FIDE: TNDD_ide; //0000
    FContatos: TNDDFilhos;
    FTransporte: TNDD_Transporte;
    FAdicionais: TNDDFilhos;
    FtipoCarga: TNDD_TipoCarga;
    FEnvioDocumentos: TNDDFilhos;
    FConfirmador: TNDDFilhos;
    FParcelamento: TNDDFilhos;
    FParcela: TNDDFilhos;
    Fversao: string;
  public
    function addContatos : TNDD_Contato;
    function addAdicionais : TNDD_Adicionais;
    function AddParcela : TNDD_Parcela;
    function addEnvioDocumentos : TNDD_EnvioDocumentos;
    function addConfirmador : TNDD_Confirmador;
    function addParcelamento : TNDD_Parcelamento;
    constructor create;
    destructor destroy;override;
  published
     property token : string read FToken write FToken;
     property versao : string read Fversao write Fversao;
     property IDE : TNDD_ide read FIDE write FIDE;
     property tipoCarga : TNDD_TipoCarga read FtipoCarga write FtipoCarga;
     property Contatos : TNDDFilhos read FContatos write FContatos;
     property Transporte : TNDD_Transporte read FTransporte write FTransporte;
     property EnvioDocumentos : TNDDFilhos read FEnvioDocumentos write FEnvioDocumentos;
     property Adicionais : TNDDFilhos read FAdicionais write FAdicionais;
     property Confirmador : TNDDFilhos read FConfirmador write FConfirmador;
     property Parcelamento : TNDDFilhos read FParcelamento write FParcelamento;
     property Parcelas : TNDDFilhos read FParcela write FParcela;

  end;

implementation

{ Tide }

constructor TNDD_ide.create;
begin
    Fp00_id := '1000';
end;

destructor TNDD_ide.destroy;
begin
   inherited;
end;


{ TNDD_EnderecoRemetente }

{ TNDD_Remetente }

constructor TNDD_Remetente.create;
begin
   FEndereco := TNDD_EnderecoRemetente.create;
   Fp00_id := '2200';
end;

destructor TNDD_Remetente.destroy;
begin
  FEndereco.free;
  inherited;
end;

{ TNDD_DocumentosOriginarios }

{ TNDD_Carga }


constructor TNDD_Carga.create;
begin
  Fp00_id := '2100';
end;

destructor TNDD_Carga.destroy;
begin
  inherited;
end;

{ TNDD_Condutores }

{ TNDD_Veiculos }

{ TNDD_Bases }

{ TNDD_Desconto }

{ TNDD_Valores }

function TNDD_Valores.addDesconto: TNDD_Desconto;
begin
   result := TNDD_Desconto.create;
   FDesconto.add( result  );
end;

function TNDD_Valores.addDespesa: TNDD_Despesa;
begin
   result := TNDD_Despesa.create;
   FDespesas.Add( Result );
end;

constructor TNDD_Valores.create;
begin
  FDespesas := TNDDFilhos.Create;
  FDesconto := TNDDFilhos.create;
  Fp00_id := '4300';
end;

destructor TNDD_Valores.destroy;
begin
  FDespesas.free;
  FDesconto.free;
  inherited;
end;

{ TNDD_SubContratado }

constructor TNDD_SubContratado.create;
begin
  FEnderecoSubcontratado := TNDD_EnderecoSubcontratado.create;
  Fp00_id := '4400';
end;

destructor TNDD_SubContratado.destroy;
begin
  FEnderecoSubcontratado.free;
  inherited;
end;


{ TNDD_Transporte }

function TNDD_Transporte.addCondutores: TNDD_Condutores;
begin
   result := TNDD_Condutores.create;
   FCondutores.add( result  );
end;

function TNDD_Transporte.addInformacaoRota: TNDD_InformacaoRota;
begin
  result := TNDD_InformacaoRota.create;
  FInformacaoRota.Add( result ); 
end;

function TNDD_Transporte.AddInformacaoTransportador: TNDD_InformacaoTransportador;
begin
   result := TNDD_InformacaoTransportador.create;
   FInformacaoTransportador.Add( result );
end;

function TNDD_Transporte.addRota: TNDD_Rota;
begin
   result := TNDD_Rota.create;
   FRota.Add( Result);
end;

function TNDD_Transporte.addVeiculos: TNDD_Veiculos;
begin
   result := TNDD_Veiculos.create;
   FVeiculos.add( result  );
end;

constructor TNDD_Transporte.create;
begin
  Fcondutores := TNDDFilhos.Create;
  Fveiculos := TNDDFilhos.Create;
  Fvalores := TNDD_Valores.Create;
  Fsubcontratado := TNDD_SubContratado.Create;
  FRota:= TNDDFilhos.create;
  FInformacaoRota := TNDDFilhos.Create;
  FInformacaoTransportador := TNDDFilhos.Create;
  Fp00_id := '4000';
end;

destructor TNDD_Transporte.destroy;
begin
  Fcondutores.free;
  Fveiculos.free;
  Fvalores.free;
  Fsubcontratado.free;
  FInformacaoRota.free;
  FRota.Free;
  FInformacaoTransportador.free;
  inherited;
end;


{ TNDD_DependenciaEntrega }

{ TNDD_DocumentoEntrega }

function TNDD_DocumentoEntrega.addDependenciaEntrega: TNDD_DependenciaEntrega;
begin
   result := TNDD_DependenciaEntrega.create;
   FDependenciaEntrega.add( result  );
end;

constructor TNDD_DocumentoEntrega.create;
begin
  FDependenciaEntrega := TNDDFilhos.create;
  Fp00_id := '5100';
end;

destructor TNDD_DocumentoEntrega.destroy;
begin
  FDependenciaEntrega.free;
  inherited;
end;



{ TNDD_AprovadorCargaFilhos }

{ TNDD_Contato }

{ TNDD_Adicionais }

{ TNDD_Adicionais }

constructor TNDD_Adicionais.create;
begin
   Fp00_id := '6000'

end;

{ TNDD_EnderecoRemetente }

constructor TNDD_EnderecoRemetente.create;
begin
   Fp00_id := '2210';
end;

{ TNDD_Destinatario }

constructor TNDD_Destinatario.create;
begin
  inherited;
  FEndereco:= TNDD_EnderecoDestinatario.create;
  Fp00_id := '2300';
end;

{ TNDD_EnderecoDestinatario }

constructor TNDD_EnderecoDestinatario.create;
begin
  Fp00_id := '2310';
end;

{ TNDD_DocumentosOriginarios }

constructor TNDD_DocumentosOriginarios.create;
begin
  Fp00_id := '2400'
end;

{ TNDD_Contato }

constructor TNDD_Contato.create;
begin
  Fp00_id := '3000';
end;

{ TNDD_Condutores }

function TNDD_Condutores.addinformacaoCondutor: TNDD_InformacaoCondutor;
begin
  result := TNDD_InformacaoCondutor.create;
  FinformacaoCondutor.Add(Result);
end;

constructor TNDD_Condutores.create;
begin
  Fp00_id := '4100';
  FinformacaoCondutor := TNDDFilhos.Create;
end;

destructor TNDD_Condutores.Destroy;
begin
  FinformacaoCondutor.free;
  inherited;
end;

{ TNDD_Veiculos }

function TNDD_Veiculos.addInformacaoVeiculo: TNDD_InformacaoVeiculo;
begin
  result := TNDD_InformacaoVeiculo.create;
  FInformacaoVeiculo.Add( Result );  
end;

constructor TNDD_Veiculos.create;
begin
  Fp00_id := '4200';
  FInformacaoVeiculo := TNDDFilhos.Create;
end;

destructor TNDD_Veiculos.destroy;
begin
  FInformacaoVeiculo.free;
  inherited;
end;

{ TNDD_Desconto }

constructor TNDD_Desconto.create;
begin
  Fp00_id := '4310';
end;

{ TNDD_EnderecoSubcontratado }

constructor TNDD_EnderecoSubcontratado.create;
begin
 Fp00_id := '4410';
end;

{ TNDD_DependenciaEntrega }

constructor TNDD_DependenciaEntrega.create;
begin
  Fp00_id := '4110';
end;

{ TNDD_Token }

function TNDD_Token.addAdicionais: TNDD_Adicionais;
begin
   result := TNDD_Adicionais.create;
   FAdicionais.Add( result );
end;

function TNDD_Token.addConfirmador: TNDD_Confirmador;
begin
   result := TNDD_Confirmador.create;
   FConfirmador.add( result  );
end;

function TNDD_Token.addContatos: TNDD_Contato;
begin
   result := TNDD_Contato.create;
   FContatos.add( result  );
end;

function TNDD_Token.addEnvioDocumentos: TNDD_EnvioDocumentos;
begin
   result := TNDD_EnvioDocumentos.create;
   FEnvioDocumentos.Add( result );
end;

function TNDD_Token.AddParcela: TNDD_Parcela;
begin
   result := TNDD_Parcela.create;
   FParcela.Add( result );
end;

function TNDD_Token.addParcelamento: TNDD_Parcelamento;
begin
   result := TNDD_Parcelamento.create;
   FParcelamento.Add( result );
end;

constructor TNDD_Token.create;
begin
   Fp00_id := '0000';
   //Fversao := '4.1.5.0';
   FIDE := TNDD_ide.create;
   FtipoCarga := TNDD_TipoCarga.create;
   FTransporte:= TNDD_Transporte.create;
   FAdicionais:= TNDDFilhos.create;
   FContatos:= TNDDFilhos.create;
   FEnvioDocumentos := TNDDFilhos.create;
   FConfirmador := TNDDFilhos.create;
   FParcelamento := TNDDFilhos.create;
   FParcela := TNDDFilhos.create;
end;

destructor TNDD_Token.destroy;
begin
  FIDE.Free;
  FtipoCarga.Free;
  FTransporte.free;
  FAdicionais.free;
  FContatos.free;
  FEnvioDocumentos.Free;
  FConfirmador.free;
  FParcelamento.free;
  FParcela.Free;
  inherited;
end;

{ TNDD_TipoCarga }

function TNDD_TipoCarga.addConsignatario: TNDD_consignatario;
begin
  result := TNDD_consignatario.create;
  Fconsignatario.Add( result );
end;

function TNDD_TipoCarga.addDocumentos: TNDD_DocumentosOriginarios;
begin
   result := TNDD_DocumentosOriginarios.create;
   FDocumentos.add( result  );
end;

constructor TNDD_TipoCarga.create;
begin
  Fp00_id := '2000';
  FCarga:= TNDD_Carga.create;
  Fremetente := TNDD_Remetente.create;
  Fdestinatario := TNDD_Destinatario.create;
  FDocumentos := TNDDFilhos.create;
  Fconsignatario := TNDDFilhos.create;
end;

destructor TNDD_TipoCarga.Destroy;
begin
  FCarga.free;
  fremetente.free;
  fdestinatario.free;
  fDocumentos.free;
  fconsignatario.free;
  inherited;
end;

{ TNDD_consignatario }

constructor TNDD_consignatario.create;
begin
  FEndereco:= TNDD_EnderecoConsignatario.create;
  Fp00_id := '2500';
end;

{ TNDD_EnderecoConsignatario }

constructor TNDD_EnderecoConsignatario.create;
begin
  Fp00_id := '2510';
end;

{ TNDD_Despesa }

constructor TNDD_Despesa.create;
begin
  Fp00_id := '4320';
end;

{ TNDD_Rota }

constructor TNDD_Rota.create;
begin
  Fp00_id := '4500';
end;

{ TNDD_InformacaoRota }

function TNDD_InformacaoRota.addPontosDeParada: TNDD_PontosDeParada;
begin
  result := TNDD_PontosDeParada.create;
  FPontosDeParada.Add( result );
end;

constructor TNDD_InformacaoRota.create;
begin
   Fp00_id := '4600';
   FPontosDeParada := TNDDFilhos.Create;
   FResponavel:= TNDD_respomsavelRota.create;
end;

destructor TNDD_InformacaoRota.destroy;
begin
  FPontosDeParada.free;
  FResponavel.free;
  inherited;
end;

{ TNDD_PontosDeParada }

constructor TNDD_PontosDeParada.create;
begin
  Fp00_id := '4610';
end;

{ TNDD_respomsavelRota }

constructor TNDD_respomsavelRota.create;
begin
   Fp00_id := '4620';
end;

{ TNDD_EnvioDocumentos }

function TNDD_EnvioDocumentos.addDocumentos: TNDD_DocumentoEntrega;
begin
   result := TNDD_DocumentoEntrega.create;
   fdocumentos.Add( Result );
end;

constructor TNDD_EnvioDocumentos.create;
begin
   Fp00_id := '5000';
end;

destructor TNDD_EnvioDocumentos.destroy;
begin
 inherited;
end;

{ TNDD_Confirmador }

constructor TNDD_Confirmador.create;
begin
   Fp00_id := '7000';
end;

{ TNDD_Parcelamento }

constructor TNDD_Parcelamento.create;
begin
  Fp00_id := '8000';
end;

{ TNDD_Parcela }

function TNDD_Parcela.addDescontos: TNDD_DescontoParcela;
begin
   result := TNDD_DescontoParcela.create;
   FDescontos.Add( Result );
end;

function TNDD_Parcela.addDocumento: TNDD_DocumentosParcela;
begin
   result := TNDD_DocumentosParcela.create;
   FDocumentos.Add( Result );
end;

function TNDD_Parcela.addPagamentoAutomatico: TNDD_PagamentoAutomatico;
begin
   result := TNDD_PagamentoAutomatico.create;
   FPagamentoAutomatico.Add( Result );
end;

function TNDD_Parcela.addPagamentoManual: TNDD_PagamentoManual;
begin
   result := TNDD_PagamentoManual.create;
   FPagamentoManual.Add( Result );
end;

constructor TNDD_Parcela.create;
begin
  Fp00_id := '9000';

  FprazoMinimo   := '1';
  FconfirmarPgto := '2';

  FDocumentos:= TNDDFilhos.create;
  FDescontos:= TNDDFilhos.create;
  FPagamentoManual:= TNDDFilhos.create;
  FPagamentoAutomatico:= TNDDFilhos.create;
  FRestricao:= TNDDFilhos.create;
end;

destructor TNDD_Parcela.destroy;
begin
  FDocumentos.free;;
  FDescontos.free;
  FPagamentoManual.free;
  FPagamentoAutomatico.free;
  FRestricao.free;
  inherited;
end;

{ TNDD_PagamentoAutomatico }

constructor TNDD_PagamentoAutomatico.create;
begin
  Fp00_id := '9100';
end;

{ TNDD_PagamentoManual }

constructor TNDD_PagamentoManual.create;
begin
  Fp00_id := '9200';
end;

{ TNDD_DocumentosParcela }

function TNDD_DocumentosParcela.addDependencia: TNDD_Dependencia;
begin
   result := TNDD_Dependencia.create;
   FDependencia.Add( Result );
end;

constructor TNDD_DocumentosParcela.create;
begin
  Fp00_id := '9300';
  Dependencia := TNDDFilhos.create;
end;

destructor TNDD_DocumentosParcela.destroy;
begin
   Dependencia.Free;
   inherited;
end;

{ TNDD_Dependencia }

constructor TNDD_Dependencia.create;
begin
  Fp00_id := '9310';
end;

{ TNDD_DescontoParcela }

constructor TNDD_DescontoParcela.create;
begin
  Fp00_id := '9400';
end;

{ TNDD_InformacaoTransportador }

constructor TNDD_InformacaoTransportador.create;
begin
  Fp00_id := '4010';
  FEndereco := TNDD_EnderecoTransportador.create;
end;

destructor TNDD_InformacaoTransportador.destroy;
begin
  FEndereco.free;
  inherited;
end;

{ TNDD_EnderecoTransportador }

constructor TNDD_EnderecoTransportador.create;
begin
  Fp00_id := '4011';
end;

{ TNDD_InformacaoCondutor }

constructor TNDD_InformacaoCondutor.create;
begin
  Fp00_id := '4110';
  Fendereco := TNDD_EnderecoCondutor.create;
end;

destructor TNDD_InformacaoCondutor.destroy;
begin
  FEndereco.free;
  inherited;
end;

{ TNDD_EnderecoCondutor }

constructor TNDD_EnderecoCondutor.create;
begin
  inherited;
  Fp00_id := '4111';
end;

{ TNDD_InformacaoVeiculo }

constructor TNDD_InformacaoVeiculo.create;
begin
  Fp00_id := '4210';
end;

end.
