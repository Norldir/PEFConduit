unit urdc_TiposPadrao_v1_00;

Interface
uses
  classes, InvokeRegistry;

type
  tCNPJCPFType = string;
  tTipoOperacaoType = string;
  tStatusRetornoType = string;
  tMeioPagamentoTransporteType = string;
  tCPFType = string;
  tPlacaVeiculoType = string;
  tTipoLogradouroType = string;
  tSiglaUFType = string;
  tRNTRCType = string;
  tTokenAutenticacaoType = string;
  tTipoOperacaoTransporteType = string;
  tTipoModeloVeiculoType = string;
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
  tTipoTransporteVeiculo = string;
  tTipoCombustivelVeiculo = integer;
  tMediaConsumoVeiculo = extended;
  tTipoExcecao = string;
  tTipoTransportador = string;
  tNomeTransportador = string;
  tOperadoraFinanceiraVP = string;
  tCondicaoCompraVP = string;
  tNumeroCNH = string;
  tCNHCategoria = string;
  tTipoEnvolvido = string;
  tIdClienteRodocred = int64;
  tRNTRC = tRNTRCType;
  tTipoVeiculo = string;
  tPlacaVeiculo = tPlacaVeiculoType;
  tCPFMotorista = urdc_TiposPadrao_v1_00.tCPFType;
  tCNPJCPF = urdc_TiposPadrao_v1_00.tCNPJCPFType;
  tModalidadeLocalImpressao = string;
  tMeioPagamentoValePedagio = integer;
  tIDLocalImpressao = integer;
  tCodigoOperacao = string;
  tCondicaoLiberacaoOperacao = string;
  tLocalRealizacao = string;
  tCodigoEventoOperacao = string;
  tValorEvento = extended;
  tQuantidadeLitros = extended;
  tCombustivel = string;
  tTokenAutenticacao = urdc_TiposPadrao_v1_00.tTokenAutenticacaoType;
  //tExcecao = string; //tExcecaoType;
  tStatusRetorno = urdc_TiposPadrao_v1_00.tStatusRetornoType;
  //tStatusRetorno = string;
  tEstado = urdc_TiposPadrao_v1_00.tSiglaUFType;
  tCidade = string;
  tCEP = string;
  tCodigoOperacaoTransporte = string;
  tCodigoOperacaoTransporteDV = string;
  tNumeroViagem = string;
  tObservacao = string;
  tUnidadeMedidaPeso = string;
  tCodigoClausula = string;
  tDescricaoClausula = string;
  tCodigoBanco = string;
  tNumeroAgencia = string;
  tDvAgencia = string;
  tNumeroConta = string;
  tDVConta = string;
  tInformacoesPagamento = string;
  tNumeroComprovante = string;
  tNumeroComprovanteFormatado = string;
  tSenha = string;
  tCodigoImposto = string;
  tBaseCalculoImposto = extended;
  tPercentualImposto = extended;
  tValorImposto = extended;
  tCodigoDocumento = string;
  tNumeroDocumento = string;
  tCodigoAuxiliar = string;
  tDocumentoRequerido = string;
  tNaturezaCarga = string;
  tObservacaoDocumento = string;
  tValidaFrotaANTT = boolean;
  tMotivoCancelamento = string;
  tTotalFrete = extended;
  tTotalFreteLiquido = extended;
  tTotalAbastecimento = extended;
  tTotalPedagio = extended;
  tTotalImpostosRetidos = extended;
  tTotalAdministrativas = extended;
  tTotalViagem = extended;
  tNumeroTransacao = string;
  tTipoViagem = string;
  tLocalidadeOrigem = string;
  tCodigoIBGEOrigem = string;
  tLocalidadeDestino = string;
  tCodigoIBGEDestino = string;
  tVersaoServico = string;
  tQtdeEixos = integer;
  tTipoRodagem = string;
  tCodigoRotaType = integer;
  tCodigoRota = array of tCodigoRotaType;
  tMeioPagamentoTransporte = urdc_TiposPadrao_v1_00.tMeioPagamentoTransporteType;
  tOperacao = urdc_TiposPadrao_v1_00.tTipoOperacaoType;
  tTipoOperacaoTransporte = urdc_TiposPadrao_v1_00.tTipoOperacaoTransporteType;
  tSituacaoViagem = string;
  tValorTotalImpostos = extended;
  tValorPedagio = extended;
  tValorDespesas = extended;
  tValorFrete = extended;
  tValorCombustivel = extended;
  tPesoCarga = extended;
  tTipoFrete = string;
  tModeloVeiculo = urdc_TiposPadrao_v1_00.tTipoModeloVeiculoType;
  tNumeroCartao = string;
  tTipoCartao = string;
  tIdClienteResponsavel = string; 
  tSituacaoVeiculoANTT = string;

type
  tCNHType = class(TRemotable)
  private
    FNumeroCNH: string;
    FCNHCategoria: string;
  published
    property NumeroCNH: string read FNumeroCNH write FNumeroCNH;
    property CNHCategoria: string read FCNHCategoria write FCNHCategoria;
  end;

type
  tPracasTarifaDiferenciadaType = class(TRemotable)
  private
    FCondicaoCompraVP: string;
    FIdPraca: string;
  published
    property IdPraca : string read FIdPraca write FIdPraca;
    property CondicaoCompraVP: string read FCondicaoCompraVP write FCondicaoCompraVP;
  end;
  tPracasTarifaDiferenciada = array of tPracasTarifaDiferenciadaType;

type
  tEndereco = class(TRemotable)
  private
    FComplemento: string;
    FTipoEndereco: string;
    FCidade: string;
    FNumero: string;
    FLogradouro: string;
    FBairro: string;
    FCEP: string;
    FEstado: urdc_TiposPadrao_v1_00.tSiglaUFType;
    FTipoLogradouro: urdc_TiposPadrao_v1_00.tTipoLogradouroType;
  published
    property TipoEndereco: string read FTipoEndereco write FTipoEndereco;
    property CEP: string read FCEP write FCEP;
    property TipoLogradouro: urdc_TiposPadrao_v1_00.tTipoLogradouroType read FTipoLogradouro write FTipoLogradouro;
    property Logradouro: string read FLogradouro write FLogradouro;
    property Numero: string read FNumero write FNumero;
    property Complemento: string read FComplemento write FComplemento;
    property Bairro: string read FBairro write FBairro;
    property Cidade: string read FCidade write FCidade;
    property Estado: tSiglaUFType read FEstado write FEstado;
  end;

type
  tContato = class(TRemotable)
  private
    FNome: string;
    FTelefone: string;
    FCelular: string;
    FEmail: string;
    FTipoContato: string;
    FMeioComunicacaoPreferido: string;
  published
    property TipoContato: string read FTipoContato write FTipoContato;
    property Nome: string read FNome write FNome;
    property Telefone: string read FTelefone write FTelefone;
    property Celular: string read FCelular write FCelular;
    property Email: string read FEmail write FEmail;
    property MeioComunicacaoPreferido: string read FMeioComunicacaoPreferido write FMeioComunicacaoPreferido;
  end;

type
  tTransportadorViagemType = class(TRemotable)
  private
    FNomeTransportador: string;
    FCNPJCPFTrasportador: urdc_TiposPadrao_v1_00.tCNPJCPFType;
  published
    property CNPJCPFTrasportador: tCNPJCPFType read FCNPJCPFTrasportador write FCNPJCPFTrasportador;
    property NomeTransportador: string read FNomeTransportador write FNomeTransportador;
  end;
  tTransportadorViagem = tTransportadorViagemType;

type
  tMotorista = class(TRemotable)
  private
    FNomeMotorista: string;
    FRelacao: string;
    FNumeroCartao: string;
    FCNHMotorista: urdc_TiposPadrao_v1_00.tCNHType;
    FContato: urdc_TiposPadrao_v1_00.tContato;
    FCPFMotorista: urdc_TiposPadrao_v1_00.tCPFType;
    FEndereco: urdc_TiposPadrao_v1_00.tEndereco;
    FOrgaoExpedidor: string;
    FSexo: string;
    FDataNascimento: string;
    FIdentidade: string;
  public
    constructor create;
    destructor destroy;
  published
    property NomeMotorista: string read FNomeMotorista write FNomeMotorista;
    property Relacao: string read FRelacao write FRelacao;
    property CPFMotorista: tCPFType read FCPFMotorista write FCPFMotorista;
    property CNHMotorista: tCNHType read FCNHMotorista write FCNHMotorista;
    property Contato: tContato read FContato write FContato;
    property Endereco: tEndereco read FEndereco write FEndereco;

    property DataNascimento: string read FDataNascimento write FDataNascimento;
    property Identidade: string read FIdentidade write FIdentidade;
    property OrgaoExpedidor: string read FOrgaoExpedidor write FOrgaoExpedidor;
    property Sexo: string read FSexo write FSexo;
    property NumeroCartao: string read FNumeroCartao write FNumeroCartao;
  end;
  tarrayMotorista = array of tMotorista;

type
  tMotoristaViagemType = class(TRemotable)
  private
    FNomeMotorista: string;
    FCPFMotorista: tCPFType;
  published
    property CPFMotorista: tCPFType read FCPFMotorista write FCPFMotorista;
    property NomeMotorista: string read FNomeMotorista write FNomeMotorista;
  end;
  tMotoristaViagem = array of tMotoristaViagemType;

type
  tVeiculo = class(TRemotable)
  private
    FMediaConsumoVeiculo: string;
    FCapacidadeTanqueVeiculo: string;
    FTipoCombustivelVeiculo: string;
    FNumeroFrotaVeiculo: string;
    FTipoVeiculo: string;
    FTipoTransporteVeiculo: string;
    FCNPJCPF: tCNPJCPFType;
    FPlacaVeiculo: tPlacaVeiculoType;
    FRNTRC: tRNTRCType;
    FUfPlacaVeiculo: tSiglaUFType;
    FModeloVeiculo: tTipoModeloVeiculoType;
    FQtdeEixos: integer;
    FTipoRodagem: string;
  published
    property TipoTransporteVeiculo: string read FTipoTransporteVeiculo write FTipoTransporteVeiculo;
    property RNTRC: tRNTRCType read FRNTRC write FRNTRC;
    property CNPJCPF: tCNPJCPFType read FCNPJCPF write FCNPJCPF;
    property QtdeEixos : integer read FQtdeEixos write FQtdeEixos;
    property TipoRodagem : string read FTipoRodagem write FTipoRodagem;
    property TipoVeiculo: string read FTipoVeiculo write FTipoVeiculo;
    property ModeloVeiculo: tTipoModeloVeiculoType read FModeloVeiculo write FModeloVeiculo;
    property PlacaVeiculo: tPlacaVeiculoType read FPlacaVeiculo write FPlacaVeiculo;
    property UfPlacaVeiculo: tSiglaUFType read FUfPlacaVeiculo write FUfPlacaVeiculo;
    property NumeroFrotaVeiculo: string read FNumeroFrotaVeiculo write FNumeroFrotaVeiculo;
    property TipoCombustivelVeiculo: string read FTipoCombustivelVeiculo write FTipoCombustivelVeiculo;
    property CapacidadeTanqueVeiculo: string read FCapacidadeTanqueVeiculo write FCapacidadeTanqueVeiculo;
    property MediaConsumoVeiculo: string read FMediaConsumoVeiculo write FMediaConsumoVeiculo;
  end;
  tArrayVeiculo = array of tVeiculo;

type
  tEnvolvidosTransporteType = class(TRemotable)
  private
    FNomeEnvolvido: string;
    FTipoEnvolvido: string;
    FCNPJCPF: tCNPJCPFType;
    FEndereco: tEndereco;
  public
    destructor destroy;
    function GetEndereco: tEndereco;
  published
    property TipoEnvolvido: string read FTipoEnvolvido write FTipoEnvolvido;
    property CNPJCPF: tCNPJCPFType read FCNPJCPF write FCNPJCPF;
    property NomeEnvolvido: string read FNomeEnvolvido write FNomeEnvolvido;
    property Endereco: tEndereco read FEndereco write FEndereco;
  end;
  tEnvolvidosTransporte = array of tEnvolvidosTransporteType;
type
  tEnvolvidosTransporteViagemType = class(TRemotable)
  private
    FTipoFrete: string;
    FEnvolvidosTransporte: tEnvolvidosTransporte;
  public
    destructor destroy;
    function AddEnvolvidosTransporte: tEnvolvidosTransporteType;
  published
    property TipoFrete: string read FTipoFrete write FTipoFrete;
    property EnvolvidosTransporte: tEnvolvidosTransporte read FEnvolvidosTransporte write FEnvolvidosTransporte; // of tEnvolvidosTransporte
  end;
  tEnvolvidosTransporteViagem = tEnvolvidosTransporteViagemType;

type
  tCartaoType = class(TRemotable)
  private
    FTipoCartao: string;
    FNumeroCartao: string;
  published
    property NumeroCartao: string read FNumeroCartao write FNumeroCartao;
    property TipoCartao: string read FTipoCartao write FTipoCartao;
  end;
  tCartao = tCartaoType;


type
  tValePedagioViagemType = class(TRemotable)
  private
    FValorPedagio: extended;
    FMeioPagamentoValePedagio: integer;
    FIDLocalImpressao: string;
    FOperadoraFinanceiraVP: string;
    FModalidadeLocalImpressao: string;
    FPracasTarifaDiferenciada: tPracasTarifaDiferenciada;
  public
    destructor destroy;
    function addPracasTarifaDiferenciada: tPracasTarifaDiferenciadaType;
  published
    property OperadoraFinanceiraVP: string read FOperadoraFinanceiraVP write FOperadoraFinanceiraVP;
    property MeioPagamentoValePedagio: integer read FMeioPagamentoValePedagio write FMeioPagamentoValePedagio;
    property ModalidadeLocalImpressao: string read FModalidadeLocalImpressao write FModalidadeLocalImpressao;
    property IDLocalImpressao: string read FIDLocalImpressao write FIDLocalImpressao;
    property ValorPedagio: extended read FValorPedagio write FValorPedagio;
    property PracasTarifaDiferenciada: tPracasTarifaDiferenciada read FPracasTarifaDiferenciada write FPracasTarifaDiferenciada; // of tPracasTarifaDiferenciada
  end;
  tValePedagioViagem = tValePedagioViagemType;

type
  tExcecao = class(TRemotable)
  private
    FCodigoExcecao: string;
    FTipoExcecao: string;
    FMensagemExcecao: string;
  published
    property TipoExcecao: string read FTipoExcecao write FTipoExcecao;
    property CodigoExcecao: string read FCodigoExcecao write FCodigoExcecao;
    property MensagemExcecao: string read FMensagemExcecao write FMensagemExcecao;
  end;
  tExcecaoType = tExcecao;

type
  tCartaoRetorno = class(TRemotable)
  private
    FExcecao: tExcecao;
    FNumeroCartao: tnumerocartao;
    FStatusRetorno: tStatusRetornoType;
  public
     constructor create;
     destructor destroy;
  published
    property NumeroCartao : tnumerocartao read FNumeroCartao write FNumeroCartao;
    property StatusRetorno: tStatusRetornoType read FStatusRetorno write FStatusRetorno;
    property Excecao: tExcecao read FExcecao write FExcecao;
  end;



type
  tMotoristas = class(TRemotable)
  private
    FCPFMotorista: tCPFType;
    FExcecao: tExcecao;
    FStatusRetorno: tStatusRetornoType;
  public
    constructor create;
    destructor destroy;
  published
    property CPFMotorista: tCPFType read FCPFMotorista write FCPFMotorista;
    property StatusRetorno: tStatusRetornoType read FStatusRetorno write FStatusRetorno;
    property Excecao: tExcecao read FExcecao write FExcecao;
  end;
  tArrayMotoristas = array of tMotoristas;
type
  tIdentificacaoIntegracao = class(TRemotable)
  private
    FIdClienteRodocred: int64;
    FVersaoServico: string;
    FNumeroTransacao: string;
    FTokenAutenticacao: tTokenAutenticacaoType;
  published
    property IdClienteRodocred: int64 read FIdClienteRodocred write FIdClienteRodocred;
    property TokenAutenticacao: tTokenAutenticacaoType read FTokenAutenticacao write FTokenAutenticacao;
    property NumeroTransacao: string read FNumeroTransacao write FNumeroTransacao;
    property VersaoServico: string read FVersaoServico write FVersaoServico;
  end;

type
  tDestinoRota = class(TRemotable)
  private
    FLocalidadeDestino: string;
    FCodigoIBGEDestino: string;
    FUFDestino: tSiglaUFType;
  published
    property UFDestino: tSiglaUFType read FUFDestino write FUFDestino;
    property LocalidadeDestino: string read FLocalidadeDestino write FLocalidadeDestino;
    property CodigoIBGEDestino: string read FCodigoIBGEDestino write FCodigoIBGEDestino;
  end;

type
  tOrigemRota = class(TRemotable)
  private
    FLocalidadeOrigem: string;
    FCodigoIBGEOrigem: string;
    FUFOrigem: tSiglaUFType;
  published
    property UFOrigem: tSiglaUFType read FUFOrigem write FUFOrigem;
    property LocalidadeOrigem: string read FLocalidadeOrigem write FLocalidadeOrigem;
    property CodigoIBGEOrigem: string read FCodigoIBGEOrigem write FCodigoIBGEOrigem;
  end;

type
  tVeiculos = class(TRemotable)
  private
    FSituacaoFrotaANTT: boolean;
    FExcecao: tExcecao;
    FPlacaVeiculo: tPlacaVeiculoType;
    FStatusRetorno: tStatusRetornoType;
  public
    constructor create;
    destructor destroy;
  published
    property PlacaVeiculo: tPlacaVeiculoType read FPlacaVeiculo write FPlacaVeiculo;
    property SituacaoFrotaANTT: boolean read FSituacaoFrotaANTT write FSituacaoFrotaANTT;
    property StatusRetorno: tStatusRetornoType read FStatusRetorno write FStatusRetorno;
    property Excecao: tExcecao read FExcecao write FExcecao;
  end;
  tArrayVeiculos = array of tVeiculos;


type
  tResumoFinanceiro = class(TRemotable)
  private
    FTotalViagem: extended;
    FTotalFreteLiquido: extended;
    FTotalPedagio: extended;
    FTotalImpostosRetidos: extended;
    FTotalAdministrativas: extended;
    FTotalFrete: extended;
    FTotalAbastecimento: extended;
  published
    property TotalFrete: extended read FTotalFrete write FTotalFrete;
    property TotalFreteLiquido: extended read FTotalFreteLiquido write FTotalFreteLiquido;
    property TotalAbastecimento: extended read FTotalAbastecimento write FTotalAbastecimento;
    property TotalPedagio: extended read FTotalPedagio write FTotalPedagio;
    property TotalImpostosRetidos: extended read FTotalImpostosRetidos write FTotalImpostosRetidos;
    property TotalAdministrativas: extended read FTotalAdministrativas write FTotalAdministrativas;
    property TotalViagem: extended read FTotalViagem write FTotalViagem;
  end;
type
  tDocumentoType = class(TRemotable)
  private
    FObservacaoDocumento: string;
    FCodigoDocumento: string;
    FNumeroDocumento: string;
    FDocumentoRequerido: string;
    FNaturezaCarga: string;
    FCodigoAuxiliar: string;
  published
    property CodigoDocumento: string read FCodigoDocumento write FCodigoDocumento;
    property NumeroDocumento: string read FNumeroDocumento write FNumeroDocumento;
    property CodigoAuxiliar: string read FCodigoAuxiliar write FCodigoAuxiliar;
    property DocumentoRequerido: string read FDocumentoRequerido write FDocumentoRequerido;
    property NaturezaCarga: string read FNaturezaCarga write FNaturezaCarga;
    property ObservacaoDocumento: string read FObservacaoDocumento write FObservacaoDocumento;
  end;
  tDocumento = array of tDocumentoType;

type
  tDocumentosViagem = class(TRemotable)
  private
    FDocumento: tDocumento;
  public
    destructor destroy;
    function AddDocumento: tDocumentoType;
  published
    property Documento: tDocumento read FDocumento write FDocumento;
  end;


type
  tImpostosType = class(TRemotable)
  private
    FRetencaoImposto: boolean;
    FBaseCalculoImposto: extended;
    FPercentualImposto: extended;
    FValorImposto: extended;
    FCodigoImposto: string;
  published
    property CodigoImposto: string read FCodigoImposto write FCodigoImposto;
    property BaseCalculoImposto: extended read FBaseCalculoImposto write FBaseCalculoImposto;
    property PercentualImposto: extended read FPercentualImposto write FPercentualImposto;
    property ValorImposto: extended read FValorImposto write FValorImposto;
    property RetencaoImposto: boolean read FRetencaoImposto write FRetencaoImposto;
  end;
  tImpostos = array of tImpostosType;
  
type
  tImpostosViagem = class(TRemotable)
  private
    FValorTotalImpostos: extended;
    FImpostos: tImpostos;
  public
    destructor destroy;
    function AddImpostos: tImpostosType; 
  published
    property ValorTotalImpostos: extended read FValorTotalImpostos write FValorTotalImpostos;
    property Impostos: tImpostos read FImpostos write FImpostos; // of tImpostos
  end;

type
  tPedidoValePedagio = class(TRemotable)
  private
    FIDLocalImpressao: integer;
    FQuantidadeCupons: integer;
    FNumeroPedidoValePedagio: string;
    FNumeroComprovanteFormatado: string;
    FModalidadeLocalImpressao: string;
    FLocalImpressao: string;
    FNumeroComprovante: string;
    FSenha: string;
  published
    property NumeroPedidoValePedagio: string read FNumeroPedidoValePedagio write FNumeroPedidoValePedagio;
    property NumeroComprovante: string read FNumeroComprovante write FNumeroComprovante;
    property NumeroComprovanteFormatado: string read FNumeroComprovanteFormatado write FNumeroComprovanteFormatado;
    property QuantidadeCupons: integer read FQuantidadeCupons write FQuantidadeCupons;
    property Senha: string read FSenha write FSenha;
    property IDLocalImpressao: integer read FIDLocalImpressao write FIDLocalImpressao;
    property LocalImpressao: string read FLocalImpressao write FLocalImpressao;
    property ModalidadeLocalImpressao: string read FModalidadeLocalImpressao write FModalidadeLocalImpressao;
  end;

type
  tDadosBancarios = class(TRemotable)
  private
    FCodigoBanco: string;
    FInformacoesPagamento: string;
    FDVConta: string;
    FDvAgencia: string;
    FNumeroConta: string;
    FNumeroAgencia: string;
  published
    property CodigoBanco: string read FCodigoBanco write FCodigoBanco;
    property NumeroAgencia: string read FNumeroAgencia write FNumeroAgencia;
    property DvAgencia: string read FDvAgencia write FDvAgencia;
    property NumeroConta: string read FNumeroConta write FNumeroConta;
    property DVConta: string read FDVConta write FDVConta;
    property InformacoesPagamento: string read FInformacoesPagamento write FInformacoesPagamento;
  end;

type
  tClausulasViagemType = class(TRemotable)
  private
    FCodigoClausula: string;
    FDescricaoClausula: string;
  published
    property CodigoClausula: string read FCodigoClausula write FCodigoClausula;
    property DescricaoClausula: string read FDescricaoClausula write FDescricaoClausula;
  end;
  tClausulasViagem = array of tClausulasViagemType;

type
  tValoresViagem = class(TRemotable)
  private
    FPesoCarga: extended;
    FValorDespesas: extended;
    FValorFrete: extended;
    FValorCombustivel: extended;
    FUnidadeMedidaPeso: string;
    FValorCarga: Real;
    FValorFreteTonelada: string;
  published
    property ValorDespesas: extended read FValorDespesas write FValorDespesas;
    property ValorFrete: extended read FValorFrete write FValorFrete;
    property ValorCombustivel: extended read FValorCombustivel write FValorCombustivel;
    property PesoCarga: extended read FPesoCarga write FPesoCarga;
    property UnidadeMedidaPeso: string read FUnidadeMedidaPeso write FUnidadeMedidaPeso;
    property ValorFreteTonelada : string read FValorFreteTonelada write FValorFreteTonelada;
    property ValorCarga : Real read FValorCarga write FValorCarga;
  end;

type
  tVeiculosViagemType = class(TRemotable)
  private
    FQtdeEixos: integer;
    FTipoVeiculo: string;
    FTipoRodagem: string;
    FCNPJCPF: tCNPJCPFType;
    FPlacaVeiculo: tPlacaVeiculoType;
    FRNTRC: tRNTRCType;
  published
    property PlacaVeiculo: tPlacaVeiculoType read FPlacaVeiculo write FPlacaVeiculo;
    property TipoVeiculo: string read FTipoVeiculo write FTipoVeiculo;
    property QtdeEixos: integer read FQtdeEixos write FQtdeEixos;
    property TipoRodagem: string read FTipoRodagem write FTipoRodagem;
    property RNTRC: tRNTRCType read FRNTRC write FRNTRC;
    property CNPJCPF: tCNPJCPFType read FCNPJCPF write FCNPJCPF;
  end;
  tVeiculosViagem = array of tVeiculosViagemType;

type
  tOrigemDestinoRotaType = class(TRemotable)
  private
    FCodigoIBGEDestino: tCodigoIBGEDestino;
    FCodigoIBGEOrigem: tCodigoIBGEOrigem;
  published
     property CodigoIBGEOrigem : tCodigoIBGEOrigem read FCodigoIBGEOrigem write FCodigoIBGEOrigem;
     property CodigoIBGEDestino : tCodigoIBGEDestino read FCodigoIBGEDestino write FCodigoIBGEDestino;
  end;
  tOrigemDestinoRota = array of tOrigemDestinoRotaType;


type
  tRotaViagem = class(TRemotable)
  private
    FCodigoRota: tCodigoRota;
    FOrigemDestinoRota: tOrigemDestinoRota;
  public
    destructor destroy;
    function addCodigoRota( rota : integer ) : tCodigoRotaType;
    function addOrigemDestinoRota: tOrigemDestinoRotaType;
  published
    property CodigoRota: tCodigoRota read FCodigoRota write FCodigoRota; // of tCodigoRota
    property OrigemDestinoRota: tOrigemDestinoRota read FOrigemDestinoRota write FOrigemDestinoRota; // of tOrigemDestinoRota
  end;

type
  tForo = class(TRemotable)
  private
    FCidade: string;
    FEstado: tSiglaUFType;
  published
    property Estado: tSiglaUFType read FEstado write FEstado;
    property Cidade: string read FCidade write FCidade;
  end;

type
  tDadosViagem = class(TRemotable)
  private
    FSemTransporteCarga: boolean;
    FGerarCIOT: boolean;
    FCentrodeCusto: string;
    FNumeroViagem: string;
    FNumeroViagemContratacao: string;
    FDocumentoRef: string;
    FObservacao: string;
    FDataVigencia: String;
    FEmbarque: String;
    FPervisaoEntrega: String;
    FForo: tForo;
  public
     destructor destroy;
     function GetForo: tForo;
  published
    property NumeroViagem: string read FNumeroViagem write FNumeroViagem;
    property Embarque: String read FEmbarque write FEmbarque;
    property PrevisaoEntrega: String read FPervisaoEntrega write FPervisaoEntrega;
    property Foro: tForo read FForo write FForo;
    property DocumentoRef: string read FDocumentoRef write FDocumentoRef;
    property DataVigencia: String read FDataVigencia write FDataVigencia;
    property NumeroViagemContratacao: string read FNumeroViagemContratacao write FNumeroViagemContratacao;
    property CentrodeCusto: string read FCentrodeCusto write FCentrodeCusto;
    property Observacao: string read FObservacao write FObservacao;
    property GerarCIOT: boolean read FGerarCIOT write FGerarCIOT;
    property SemTransporteCarga: boolean read FSemTransporteCarga write FSemTransporteCarga;
  end;

type
  tCIOT = class(TRemotable)
  private
    FCodigoOperacaoTransporteDV: string;
    FCodigoOperacaoTransporte: string;
  published
    property CodigoOperacaoTransporte: string read FCodigoOperacaoTransporte write FCodigoOperacaoTransporte;
    property CodigoOperacaoTransporteDV: string read FCodigoOperacaoTransporteDV write FCodigoOperacaoTransporteDV;
  end;

type
  tResumoViagem = class(TRemotable)
  private
    FNumeroViagem: string;
    FCIOT: tCIOT;
    FPedidoValePedagio: tPedidoValePedagio;
    FResumoFinanceiro: tResumoFinanceiro;
  public
    destructor destroy;
  published
    property NumeroViagem: string read FNumeroViagem write FNumeroViagem;
    property CIOT: tCIOT read FCIOT write FCIOT;
    property PedidoValePedagio: tPedidoValePedagio read FPedidoValePedagio write FPedidoValePedagio;
    property ResumoFinanceiro: tResumoFinanceiro read FResumoFinanceiro write FResumoFinanceiro;
  end;

type
  tRetornoMensagem = class(TRemotable)
  private
    FStatusRetorno: string;
    FIdentificacaoIntegracao: tIdentificacaoIntegracao;
    FExcecao: tExcecao;
  public
    destructor destroy;
    constructor create; override;
  published
    property IdentificacaoIntegracao: tIdentificacaoIntegracao read FIdentificacaoIntegracao write FIdentificacaoIntegracao;
    property StatusRetorno: string read FStatusRetorno write FStatusRetorno;
    property Excecao: tExcecao read FExcecao write FExcecao;
  end;

type
  tEventoOperacaoType = class(TRemotable)
  private
    FQuantidadeLitros: extended;
    FValorEvento: extended;
    FCombustivel: string;
    FCodigoEventoOperacao: string;
    FQuantidadeEvento: string;
    FDataEvento: string;
    FObservacaoEvento: string;
  published
    property CodigoEventoOperacao: string read FCodigoEventoOperacao write FCodigoEventoOperacao;
    property ObservacaoEvento: string read FObservacaoEvento write FObservacaoEvento;
    property ValorEvento: extended read FValorEvento write FValorEvento;
    property QuantidadeLitros: extended read FQuantidadeLitros write FQuantidadeLitros;
    property Combustivel: string read FCombustivel write FCombustivel;
    property QuantidadeEvento : string read FQuantidadeEvento write FQuantidadeEvento;
    property DataEvento : string read FDataEvento write FDataEvento; 
  end;
  tEventoOperacao = array of tEventoOperacaoType;
  
type
  tFilialEmpresa = class(TRemotable)
  private
    FIDFilial: integer;
  published
    property IDFilial: integer read FIDFilial write FIDFilial;
  end;

type
  tEstabelecimento = class(TRemotable)
  private
    FIDEstabelecimento: integer;
    FCNPJEstabelecimento: tCNPJCPFType;
  published
    property IDEstabelecimento: integer read FIDEstabelecimento write FIDEstabelecimento;
    property CNPJEstabelecimento: tCNPJCPFType read FCNPJEstabelecimento write FCNPJEstabelecimento;
  end;

type
  tOperacaoViagemType = class(TRemotable)
  private
    FCondicaoLiberacaoOperacao: string;
    FCodigoOperacao: string;
    FLocalRealizacao: string;
    FDataOperacao: String;
    FEstabelecimento: tEstabelecimento;
    FEventoOperacao: tEventoOperacao;
    FFilialEmpresa: tFilialEmpresa;
    FIDOperacaoViagem: integer;
  public
    destructor destroy;
    function GetEstabelecimento: tEstabelecimento;
    function GetFilialEmpresa: tFilialEmpresa;
    function AddEventoOperacao: tEventoOperacaoType;
  published
    property IDOperacaoViagem:integer read FIDOperacaoViagem write FIDOperacaoViagem; 
    property CodigoOperacao: string read FCodigoOperacao write FCodigoOperacao;
    property CondicaoLiberacaoOperacao: string read FCondicaoLiberacaoOperacao write FCondicaoLiberacaoOperacao;
    property DataOperacao: String read FDataOperacao write FDataOperacao;
    property LocalRealizacao: string read FLocalRealizacao write FLocalRealizacao;
    property Estabelecimento: tEstabelecimento read FEstabelecimento write FEstabelecimento;
    property FilialEmpresa: tFilialEmpresa read FFilialEmpresa write FFilialEmpresa;
    property EventoOperacao: tEventoOperacao read FEventoOperacao write FEventoOperacao; // of tEventoOperacao
  end;
  tOperacaoViagem = array of tOperacaoViagemType;

type
  tProgramacaoViagem = class(TRemotable)
  private
    FOperacaoViagem: tOperacaoViagem;
  public
    destructor destroy;
    function AddOperacaoViagem: tOperacaoViagemType;
  published
    property OperacaoViagem: tOperacaoViagem read FOperacaoViagem write FOperacaoViagem; // of tOperacaoViagem
  end;

type
  tTransportador = class(TRemotable)
  private
    FNomeTransportador: string;
    FCNPJCPFTransportador: tCNPJCPFType;
    FRNTRC: tRNTRCType;
  published
    property CNPJCPFTransportador: tCNPJCPFType read FCNPJCPFTransportador write FCNPJCPFTransportador;
    property RNTRC: tRNTRCType read FRNTRC write FRNTRC;
    property NomeTransportador: string read FNomeTransportador write FNomeTransportador;
  end;

type
  tContratoFrete = class(TRemotable)
  private
    FClausulasViagem: tClausulasViagem;
    FDadosViagem: tDadosViagem;
    FDocumentosViagem: tDocumentosViagem;
    FEnvolvidosTransporteViagem: tEnvolvidosTransporteViagem;
    FImpostosViagem: tImpostosViagem;
    FMotoristaViagem: tMotoristaViagem;
    FProgramacaoViagem: tProgramacaoViagem;
    FRotaViagem: tRotaViagem;
    FTransportador: tTransportador;
    FValoresViagem: tValoresViagem;
    FVeiculosViagem: tVeiculosViagem;
    FValePedagioViagem: tValePedagioViagemType;
  public
    destructor destroy;
  published
    property DadosViagem: tDadosViagem read FDadosViagem write FDadosViagem;
    property Transportador: tTransportador read FTransportador write FTransportador;
    property RotaViagem: tRotaViagem read FRotaViagem write FRotaViagem;
    property VeiculosViagem: tVeiculosViagem read FVeiculosViagem write FVeiculosViagem; // of tVeiculosViagem
    property ValePedagioViagem: tValePedagioViagemType read FValePedagioViagem write FValePedagioViagem;
    property MotoristaViagem: tMotoristaViagem read FMotoristaViagem write FMotoristaViagem; // of tMotoristaViagem
    property EnvolvidosTransporteViagem: tEnvolvidosTransporteViagem read FEnvolvidosTransporteViagem write FEnvolvidosTransporteViagem; // of tEnvolvidosTransporteViagem
    property ImpostosViagem: tImpostosViagem read FImpostosViagem write FImpostosViagem; // of tImpostosViagem
    property ValoresViagem: tValoresViagem read FValoresViagem write FValoresViagem;
    property ProgramacaoViagem: tProgramacaoViagem read FProgramacaoViagem write FProgramacaoViagem; // of tProgramacaoViagem
    property DocumentosViagem: tDocumentosViagem read FDocumentosViagem write FDocumentosViagem; // of tDocumentosViagem
    property ClausulasViagem: tClausulasViagem read FClausulasViagem write FClausulasViagem; // of tClausulasViagem
  end;

type
  tTransportadorType = class(TRemotable)
  private
    FNomeTransportador: string;
    FTipoTransportador: string;
    FContato: tContato;
    FEndereco: tEndereco;
    FVeiculo: tArrayVeiculo;
    FCartao: tCartaoType;
    FCNPJCPF: tCNPJCPFType;
    FRNTRCTransportador: tRNTRCType;
    FMotorista: tarrayMotorista;
  public
    destructor destroy;
  published
    property RNTRCTransportador: tRNTRCType read FRNTRCTransportador write FRNTRCTransportador;
    property CNPJCPF: tCNPJCPFType read FCNPJCPF write FCNPJCPF;
    property TipoTransportador: string read FTipoTransportador write FTipoTransportador;
    property NomeTransportador: string read FNomeTransportador write FNomeTransportador;
    property Endereco: tEndereco read FEndereco write FEndereco; // of tEndereco
    property Contato: tContato read FContato write FContato; // of tContato
    property Motorista: tarrayMotorista read FMotorista write FMotorista; // of tMotorista
    property Veiculo: tArrayVeiculo read FVeiculo write FVeiculo; // of tVeiculo
    property Cartao: tCartaoType read FCartao write FCartao;
  end;




implementation

{ tValePedagioViagemType }

function tValePedagioViagemType.addPracasTarifaDiferenciada: tPracasTarifaDiferenciadaType;
begin
   SetLength( FPracasTarifaDiferenciada, length( FPracasTarifaDiferenciada) + 1);
   result := tPracasTarifaDiferenciadaType.Create;
   FPracasTarifaDiferenciada[ length( FPracasTarifaDiferenciada ) - 1] := result;
end;

destructor tValePedagioViagemType.destroy;
var
   vii : integer;
begin
    for vii:=0 to length( FPracasTarifaDiferenciada ) -1 do FPracasTarifaDiferenciada[vii].Free;
end;

{ tMotoristaType }

constructor tMotorista.create;
begin
    FCNHMotorista := tCNHType.Create;
    FContato      := tContato.create;
    FEndereco     := tEndereco.Create;
end;

destructor tMotorista.destroy;
begin
    if assigned(FCNHMotorista ) then FCNHMotorista.free;
    if assigned(FContato ) then FContato.free;
    if assigned(FEndereco ) then FEndereco.free;
end;

{ tEnvolvidosTransporte }

destructor tEnvolvidosTransporteType.destroy;
begin
    if assigned(FEndereco ) then FEndereco.free;
end;

{ tEnvolvidosTransporteViagemType }

function tEnvolvidosTransporteViagemType.AddEnvolvidosTransporte: tEnvolvidosTransporteType;
begin
   SetLength( FEnvolvidosTransporte, length( FEnvolvidosTransporte) + 1);
   result := tEnvolvidosTransporteType.create;
   FEnvolvidosTransporte[ length( FEnvolvidosTransporte ) - 1] := result;
end;

destructor tEnvolvidosTransporteViagemType.destroy;
var
   vii : integer;
begin
    for vii:=0 to length( FEnvolvidosTransporte ) -1 do FEnvolvidosTransporte[vii].Free;
end;

{ tRotaViagem }

function tRotaViagem.addCodigoRota( rota : integer ): tCodigoRotaType;
begin
   SetLength( FCodigoRota, length( FCodigoRota) + 1);
   result := rota;
   FCodigoRota[ length( FCodigoRota ) - 1] := result;
end;

function tRotaViagem.addOrigemDestinoRota: tOrigemDestinoRotaType;
begin
   SetLength( FOrigemDestinoRota, length( FOrigemDestinoRota) + 1);
   result := tOrigemDestinoRotaType.create;
   FOrigemDestinoRota[ length( FOrigemDestinoRota ) - 1] := result;
end;

destructor tRotaViagem.destroy;
var
  vii : integer;
begin
    for vii:=0 to length( FOrigemDestinoRota  ) -1 do FOrigemDestinoRota[vii].Free;
end;

{ tDadosViagem }

destructor tDadosViagem.destroy;
begin
    if assigned(FForo ) then FForo.free;
end;

function tDadosViagem.GetForo: tForo;
begin
   if not assigned( FForo ) then FForo:= tForo.create;
   result := FForo;
end;

{ tResumoViagem }

destructor tResumoViagem.destroy;
begin
    if assigned(FCIOT ) then FCIOT.free;
    if assigned(FPedidoValePedagio ) then FPedidoValePedagio.free;
    if assigned(FResumoFinanceiro ) then FResumoFinanceiro.free;

end;

{ tRetornoMensagem }

constructor tRetornoMensagem.create;
begin
  inherited;
  FIdentificacaoIntegracao:= tIdentificacaoIntegracao.create;
  FExcecao:= tExcecao.create;

end;

destructor tRetornoMensagem.destroy;
begin
    if assigned(FIdentificacaoIntegracao ) then FIdentificacaoIntegracao.free;
    if assigned(FExcecao ) then FExcecao.free;

end;

{ tOperacaoViagem }

function tOperacaoViagemType.AddEventoOperacao: tEventoOperacaoType;
begin
   SetLength( FEventoOperacao, length( FEventoOperacao) + 1);
   result := tEventoOperacaoType.create;
   FEventoOperacao[ length( FEventoOperacao ) - 1] := result;
end;

destructor tOperacaoViagemType.destroy;
var
  vii : integer;
begin
    if assigned(FEstabelecimento ) then FEstabelecimento.free;
    if assigned(FFilialEmpresa ) then FFilialEmpresa.free;
    for vii:=0 to length( FEventoOperacao ) -1 do FEventoOperacao[vii].Free;

end;

{ tProgramacaoViagem }

function tProgramacaoViagem.AddOperacaoViagem: tOperacaoViagemType;
begin
   SetLength( FOperacaoViagem, length( FOperacaoViagem) + 1);
   result := tOperacaoViagemType.create;
   FOperacaoViagem[ length( FOperacaoViagem ) - 1] := result;
end;

destructor tProgramacaoViagem.destroy;
var
  vii : integer;
begin
    for vii:=0 to length( FOperacaoViagem  ) -1 do FOperacaoViagem[vii].Free;
end;

{ tContratoFrete }

destructor tContratoFrete.destroy;
var
  vii : integer;
begin
    if assigned(FDadosViagem ) then FDadosViagem.free;
    if assigned(FTransportador ) then FTransportador.free;
    if assigned(FRotaViagem ) then FRotaViagem.free;
    for vii:=0 to length( FVeiculosViagem  ) -1 do FVeiculosViagem [vii].Free;
    if assigned(FValePedagioViagem ) then FValePedagioViagem.free;
    for vii:=0 to length( FMotoristaViagem  ) -1 do FMotoristaViagem [vii].Free;
    if assigned(FEnvolvidosTransporteViagem ) then FEnvolvidosTransporteViagem.free;
    if assigned(FImpostosViagem ) then FImpostosViagem.free;
    if assigned(FValoresViagem ) then FValoresViagem.free;
    if assigned(FProgramacaoViagem ) then FProgramacaoViagem.free;
    FDocumentosViagem.Free;
    for vii:=0 to length( FClausulasViagem  ) -1 do FClausulasViagem [vii].Free;
end;

{ tTransportadorType }

destructor tTransportadorType.destroy;
var
   vii : integer;
begin
    if assigned(FEndereco ) then FEndereco.free;
    if assigned(FContato ) then FContato.free;
    for vii:=0 to length( FMotorista  ) -1 do FMotorista[vii].Free;
    for vii:=0 to length( FVeiculo  ) -1 do FVeiculo [vii].Free;
    if assigned(FCartao ) then FCartao.free;
end;

{ tImpostosViagem }

function tImpostosViagem.AddImpostos: tImpostosType;
begin
   SetLength( FImpostos, length( FImpostos) + 1);
   result := tImpostosType.create;
   FImpostos[ length( FImpostos ) - 1] := result;
end;

destructor tImpostosViagem.destroy;
var
   vii : integer;
begin
    for vii:=0 to length( FImpostos  ) -1 do FImpostos [vii].Free;
end;

{ tDocumentosViagem }

function tDocumentosViagem.AddDocumento: tDocumentoType;
begin
   SetLength( FDocumento, length( FDocumento) + 1);
   result := tDocumentoType.create;
   FDocumento[ length( FDocumento ) - 1] := result;
end;

destructor tDocumentosViagem.destroy;
var
   vii : integer;
begin
    for vii:=0 to length( FDocumento  ) -1 do FDocumento[vii].Free;
end;

function tEnvolvidosTransporteType.GetEndereco: tEndereco;
begin
   if not assigned( FEndereco ) then FEndereco:= tEndereco.create;
   result := FEndereco;
end;

function tOperacaoViagemType.GetEstabelecimento: tEstabelecimento;
begin
   if not assigned( FEstabelecimento ) then FEstabelecimento:= tEstabelecimento.create;
   result := FEstabelecimento;
end;

function tOperacaoViagemType.GetFilialEmpresa: tFilialEmpresa;
begin
   if not assigned( FFilialEmpresa ) then FFilialEmpresa:= tFilialEmpresa.create;
   result := FFilialEmpresa;
end;

{ tVeiculos }

constructor tVeiculos.create;
begin
   Excecao:= tExcecao.Create;
end;

destructor tVeiculos.destroy;
begin
   Excecao.free;
end;

{ tMotoristas }

constructor tMotoristas.create;
begin
   Excecao:= tExcecao.create;
end;

destructor tMotoristas.destroy;
begin
  Excecao.free;
end;

{ tCartaoRetorno }

constructor tCartaoRetorno.create;
begin
 FExcecao := tExcecao.Create;
end;

destructor tCartaoRetorno.destroy;
begin
  FExcecao.free;
end;

end.
