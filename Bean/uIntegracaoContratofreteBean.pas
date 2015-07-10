{BEAN usado na Integração do contrato de frete}
unit uIntegracaoContratofreteBean;

interface

uses classes, contnrs, uIntegracaoContratofreteBeanInterface;

type
  TBeanBase = class( TComponent )
  public
    constructor create; reintroduce; overload;
    destructor Destroy; override;
  end;

  TBeanPortadorCartao  = class( TBeanBase )
  private
    Frntrc: string;
    Frg_emissor: string;
    Fnaturalidade_ibge: string;
    Fcelular_operadora: string;
    Fendereco_bairro: string;
    Fempresa_rntrc: string;
    Ftelefone: string;
    Fcelular: string;
    Fendereco_uf: string;
    Fsexo: string;
    FNome: string;
    Fendereco_pais: string;
    FCNPJ_CPF: string;
    Frg_uf: string;
    Frg: string;
    Fnacionalidade: string;
    Fempresa_nome: string;
    Femail: string;
    Fendereco_cep: string;
    Fendereco_cidade: string;
    Fempresa_cnpj: string;
    Fendereco_propriedade_tipo: String;
    Fendereco_complemento: string;
    Fendereco_reside_desde: TDatetime;
    Fdata_nascimento: TDatetime;
    Frg_data_emissao: TDatetime;
    Fendereco: string; {#T5193}
  public
      property nome : string read FNome write Fnome;
      property CNPJ_CPF : string read FCNPJ_CPF write FCNPJ_CPF;
      property rg : string read Frg write Frg;
      property rg_uf : string read Frg_uf write Frg_uf;
      property rg_emissor : string read Frg_emissor write Frg_emissor;
      property rg_data_emissao : TDatetime read Frg_data_emissao write Frg_data_emissao;
      property rntrc : string read Frntrc write Frntrc;
      property data_nascimento : TDatetime read Fdata_nascimento write Fdata_nascimento;
      property nacionalidade : string read Fnacionalidade write Fnacionalidade;
      property naturalidade_ibge  :string read Fnaturalidade_ibge write Fnaturalidade_ibge;
      property sexo  : string read Fsexo write Fsexo; {M / F}
      property endereco : string read Fendereco write Fendereco;
      property endereco_complemento : string read Fendereco_complemento write Fendereco_complemento;
      property endereco_bairro : string read Fendereco_bairro write Fendereco_bairro;
      property endereco_cidade : string read Fendereco_cidade write Fendereco_cidade;
      property endereco_uf : string read Fendereco_uf write Fendereco_uf;
      property endereco_pais : string read Fendereco_pais write Fendereco_pais;
      property endereco_cep : string read Fendereco_cep write Fendereco_cep;
      property endereco_propriedade_tipo : String read Fendereco_propriedade_tipo write Fendereco_propriedade_tipo; { 1 PRÓPRIO 2 PRÓPRIO FINANCIADO 3 ALUGADO 4 FAMILIAR 5 CEDIDO}
      property endereco_reside_desde : TDatetime read Fendereco_reside_desde write Fendereco_reside_desde;
      property telefone : string read Ftelefone write Ftelefone;
      property celular : string read Fcelular write Fcelular;
      property celular_operadora : string read Fcelular_operadora write Fcelular_operadora;
      property email  : string read Femail write Femail;
      property empresa_nome : string read Fempresa_nome write Fempresa_nome;
      property empresa_cnpj : string read Fempresa_cnpj write Fempresa_cnpj;
      property empresa_rntrc : string read Fempresa_rntrc write Fempresa_rntrc;
  end;



  TBeanVeiculo = class;
  TBeanMotorista = class;
  TBeanContratado = class;
  {Descontos de um contrato de frete}
  TBeanDesconto = class( TBeanBase )
  private
    Fvalor: extended;
    FDescricao: string;
    FObservacao: string;
    FCodigo: string;
  published
     {Descrição do desconto}
     property Descricao : string read FDescricao write FDescricao;
     {Valor do desconto}
     property valor : extended read Fvalor write Fvalor;
     {Observação do desconto. É mais um complemento do mesmo}
     property Observacao : string read FObservacao write FObservacao;
     {Código do desconto}
     property Codigo : string read FCodigo write FCodigo;
  end;

  TBeanListaDescontos = class( TObjectList )
  private
     itemIndex : integer;
  public
     constructor create;
     destructor destroy; override;
  published
     function Item : TBeanDesconto;
     function AddDesconto: TBeanDesconto;
     function first : TBeanDesconto;
     function Last : TBeanDesconto;
     function Next : TBeanDesconto;
  end;

  {Documento para entregar no momento do pagamento do Saldo}
  TBeanDocumentoEntrega = class( TBeanBase )
  private
    FComplemento: string;
    FDocumento: string;
    FCodigo: string;
  published
     {Código do documento a ser entregue}
     property Codigo : string read FCodigo write FCodigo;
     {Descricao do documento}
     property Documento: string read FDocumento write FDocumento;
     {Complemento do documento}
     property Complemento : string read FComplemento write FComplemento;
  end;

  TBeanListaDocumentosEntrega = class( TObjectList )
  private
     itemIndex : integer;
  public
     constructor create;
     destructor destroy; override;
  published
     function Item : TBeanDocumentoEntrega;
     function AddDocumento: TBeanDocumentoEntrega;
     function first : TBeanDocumentoEntrega;
     function Last : TBeanDocumentoEntrega;
     function Next : TBeanDocumentoEntrega;
  end;

  {Nota fiscal que acoberta o contrato}
  TBeanNotaFiscal  = class( TBeanBase )
  private
    FCnpj_Destinatario: string;
    FSerieNota: string;
    FNumeroNota: string;
    FRazaoSocial_Remetente: string;
    FCnpj_Remetente: string;
    FRazaoSocial_Destinatario: string;
    FModelo: string;
  published
     property NumeroNota : string read FNumeroNota write FNumeroNota;
     property SerieNota : string read FSerieNota write FSerieNota;
     property modelo : string read FModelo write FModelo;
     property Cnpj_Remetente : string read FCnpj_Remetente write FCnpj_Remetente;
     property RazaoSocial_Remetente : string read FRazaoSocial_Remetente write FRazaoSocial_Remetente;
     property Cnpj_Destinatario : string read FCnpj_Destinatario write FCnpj_Destinatario;
     property RazaoSocial_Destinatario : string read FRazaoSocial_Destinatario write FRazaoSocial_Destinatario;
  end;

  TBeanListaNotasFiscais = class( TObjectList )
  private
     itemIndex : integer;
  public
     constructor create;
     destructor destroy; override;
  published
     function Item : TBeanNotaFiscal;
     function AddNota: TBeanNotaFiscal;
     function first : TBeanNotaFiscal;
     function Last : TBeanNotaFiscal;
     function Next : TBeanNotaFiscal;
  end;

  TBeanEnvolvido = class( TBeanBase )
  private
    Fcomplemento: string;
    Fnome: string;
    Fendereco: string;
    Fcidade: string;
    Fcnpj_cpf: string;
    Fibge: string;
    Fbairro: string;
    Fcep: string;
    Fuf: string;
  published
    property cnpj_cpf : string read Fcnpj_cpf write Fcnpj_cpf;
    property nome : string read Fnome write Fnome;
    property endereco : string read Fendereco write Fendereco;
    property complemento : string read Fcomplemento write Fcomplemento;
    property bairro : string read Fbairro write Fbairro;
    property cep : string read Fcep write Fcep;
    property cidade : string read Fcidade write Fcidade;
    property ibge : string read Fibge write Fibge;
    property uf : string read Fuf write Fuf;
  end;

  TBeanDadosDeposito = class( TBeanBase )
  private
    Fagencia: string;
    FdvConta: string;
    Fconta: string;
    Fproper: string;
    FdvAgendia: string;
  published
     property banco : string read Fproper write Fproper;
     property agencia : string read Fagencia write Fagencia;
     property dvAgendia : string read FdvAgendia write FdvAgendia;
     property conta : string read Fconta write Fconta;
     property dvConta : string read FdvConta write FdvConta;
  end;

  TBeanPontoRota = class( TBeanBase )
  private
    Fuf_destino: string;
    Fuf_origem: string;
    Fibge_origem: string;
    Fdescricao: string;
    Fibge_destino: string;
  published
    property ibge_origem : string read Fibge_origem write Fibge_origem;
    property uf_origem : string read Fuf_origem write Fuf_origem;
    property ibge_destino : string read Fibge_destino write Fibge_destino;
    property uf_destino : string read Fuf_destino write Fuf_destino;
    property descricao : string read Fdescricao write Fdescricao;
  end;

  TpontosRota = class( TObjectList )
  private
     itemIndex : integer;
  public
     constructor create;
     destructor destroy; override;
  published
     function Item : TBeanPontoRota;
     function AddPonto : TBeanPontoRota;
     function first : TBeanPontoRota;
     function Last : TBeanPontoRota;
     function Next : TBeanPontoRota;
  end;

  TBeanRota = class( TBeanBase )
  private
    FcodigoRota: string;
    FpontosRota: TPontosRota;
  public
    constructor create;
    destructor destroy; override;
  published
    property codigoRota : string read FcodigoRota write FcodigoRota;
    property pontosRota : TPontosRota read FpontosRota write FpontosRota;
  end;


  TBeanPedagio = class( TBeanBase )
  private
    FvalorPedagio: extended;
    FformaPagamentoPedagio: string;
    FadministradorPedagio: string;
    FresposavelPagamentoPedagio: string;
    FNumeroCartaoPedagio: string;
  published
    property valorPedagio : extended read FvalorPedagio write FvalorPedagio;
    property formaPagamentoPedagio : string read FformaPagamentoPedagio write FformaPagamentoPedagio;
    property administradorPedagio : string read FadministradorPedagio write FadministradorPedagio;
    property resposavelPagamentoPedagio : string read FresposavelPagamentoPedagio write FresposavelPagamentoPedagio;
    property NumeroCartaoPedagio : string read FNumeroCartaoPedagio write FNumeroCartaoPedagio;
  end;


  TBeanParcela = class( TBeanBase )
  private
    FValor: extended;
    FDias: Integer;
    FValorBruto: extended;
  published
     property dias : Integer read FDias write FDias;
     property valor : extended read FValor write FValor;
     property ValorBruto : extended read FValorBruto write FValorBruto;
  end;

  TParcelasAdiantamento = class( TObjectList )
  private
     itemIndex : integer;
  public
     constructor create;
     destructor destroy; override;
  published
     function Item : TBeanParcela;
     function AddParcela : TBeanParcela;
     function first : TBeanParcela;
     function Last : TBeanParcela;
     function Next : TBeanParcela;
  end;


  TDadosImpressaoDOT = class( TBeanBase )
  public
    constructor create;
  private
    FInscricaoEstadual: string;
    FLocalDestino: string;
    FTelefone: string;
    FCidadeFilial: string;
    FNomeFilial: string;
    FBairro: string;
    FEnderecoFilial: string;
    FFAX: string;
    FCEP: string;
    FDestinoDOT: string;
  published
    property NomeFilial : string read FNomeFilial write FNomeFilial;
    property EnderecoFilial : string read FEnderecoFilial write FEnderecoFilial;
    property CidadeFilial : string read FCidadeFilial write FCidadeFilial;
    property Bairro : string read FBairro write FBairro;
    property CEP : string read FCEP write FCEP;
    property InscricaoEstadual : string read FInscricaoEstadual write FInscricaoEstadual;
    property Telefone : string read FTelefone write FTelefone;
    property FAX : string read FFAX write FFAX;
    property DestinoDOT : string read FDestinoDOT write FDestinoDOT;
    property LocalDestino : string read FLocalDestino write FLocalDestino;
  end;


  TBeanContrato = class(TBeanBase)
  private
    FvalorSenat: extended;
    FvalorTotalMotorista: extended;
    FvalorNotaFiscal: extended;
    FvalorDocumento: extended;
    FvalorSaldo: extended;
    FpesoSaida: extended;
    Fquantidade: extended;
    FvalorINSS: extended;
    FvalorSest: extended;
    FvalorAdiantamento: extended;
    FvalorIRRF: extended;
    FnumeroContratoFrete: string;
    FtipoPagamentoContratoFrete: string;
    Fcodigo_filial: string;
    Fobservacoes: string;
    FnumeroCartaoFrete: string;
    Fcnpj_filial: string;
    FformaPagamentoDocumento: string;
    Fdocumento: string;
    Fcnpj_matriz: string;
    Fuf_matriz: string;
    Fserie_documento: string;
    FcidadeMatriz: string;
    FdescricaoCarga: string;
    FDadosDeposito: TBeanDadosDeposito;
    Fdatasaida: TDateTime;
    Fcliente_Origem: TBeanEnvolvido;
    Fcliente_Destino: TBeanEnvolvido;
    Fmotorista: TBeanMotorista;
    Fpedagio: TBeanPedagio;
    Frota: TBeanRota;
    Fveiculo: TBeanveiculo;
    Fcontratado: TBeanContratado;
    FNcm: string;
    FParametrosOperadora: TStringList;
    FUusario: string;
    FParcelasAdiantamento: TParcelasAdiantamento;
    FAliquotaIRRF: extended;
    FaliquotaSest: extended;
    FBaseIRRF: extended;
    FBaseINSS: extended;
    FBaseSestSenat: extended;
    FAliquotaSenat: extended;
    FaliquotaINSS: extended;
    FTelefone_empresa: string;
    FvalorFreteMotorista: extended;
    FNotasFiscais: TBeanListaNotasFiscais;
    FPercentualTolerancia: Extended;
    FTipoTolerancia: string;
    FDescontos: TBeanListaDescontos;
    FNumeroProtocoloProcessamento: string;
    FDataProtocoloProcessamento: TdateTime;
    FProprietarioCarga: string;
    FTipoOperacaoTransporte: string;
    Fcliente_Consignatario: TBeanEnvolvido;
    FDocumentosEntrega: TBeanListaDocumentosEntrega;
    FNumeroCIOT: string;
    FNumeroViagem: string;
    FDadosImpressaoDOT: TDadosImpressaoDOT;
    FPortadorCartao: TBeanPortadorCartao;
    FValorValeAbastecimento: Extended;

  public
    constructor create;
    destructor destroy; override;
  published
    property DadosImpressaoDOT : TDadosImpressaoDOT read FDadosImpressaoDOT write FDadosImpressaoDOT;
    property cnpj_matriz : string read Fcnpj_matriz write Fcnpj_matriz;
    property uf_matriz : string read Fuf_matriz write Fuf_matriz;
    property cidadeMatriz : string read FcidadeMatriz write FcidadeMatriz;
    property cnpj_filial : string read Fcnpj_filial write Fcnpj_filial;
    property codigo_filial : string read Fcodigo_filial write Fcodigo_filial;
    property serie_documento : string read Fserie_documento write Fserie_documento;
    property documento : string read Fdocumento write Fdocumento;
    property datasaida : TDateTime read Fdatasaida write Fdatasaida;
    property quantidade : extended read Fquantidade write Fquantidade;
    property valorNotaFiscal : extended read FvalorNotaFiscal write FvalorNotaFiscal;
    property valorSaldo : extended read FvalorSaldo write FvalorSaldo;
    property valorAdiantamento : extended read FvalorAdiantamento write FvalorAdiantamento;
    property valorTotalMotorista : extended read FvalorTotalMotorista write FvalorTotalMotorista;

    property valorFreteMotorista : extended read FvalorFreteMotorista write FvalorFreteMotorista;

    property valorDocumento : extended read FvalorDocumento write FvalorDocumento;
    property pesoSaida : extended read FpesoSaida write FpesoSaida;
    property descricaoCarga : string read FdescricaoCarga write FdescricaoCarga;
    property contratado : TBeanContratado read Fcontratado write Fcontratado;

    property valorINSS : extended read FvalorINSS write FvalorINSS;
    property BaseINSS : extended read FBaseINSS write FBaseINSS;
    property AliquotaINSS : extended read FaliquotaINSS write FaliquotaINSS;

    property BaseSestSenat : extended read FBaseSestSenat write FBaseSestSenat;
    property valorSest : extended read FvalorSest write FvalorSest;
    property AliquotaSest : extended read FaliquotaSest write FaliquotaSest;
    property valorSenat : extended read FvalorSenat write FvalorSenat;
    property AliquotaSenat : extended read FAliquotaSenat write FAliquotaSenat;

    property valorIRRF : extended read FvalorIRRF write FvalorIRRF;
    property BaseIRRF : extended read FBaseIRRF write FBaseIRRF;
    property AliquotaIRRF : extended read FAliquotaIRRF write FAliquotaIRRF;

    property cliente_Origem : TBeanEnvolvido read Fcliente_Origem write Fcliente_Origem;
    property cliente_Destino : TBeanEnvolvido read Fcliente_Destino write Fcliente_Destino;
    property cliente_Consignatario : TBeanEnvolvido read Fcliente_Consignatario write Fcliente_Consignatario;
    property veiculo : TBeanveiculo read Fveiculo write Fveiculo;
    property DadosDeposito : TBeanDadosDeposito read FDadosDeposito write FDadosDeposito;
    property numeroCartaoFrete : string read FnumeroCartaoFrete write FnumeroCartaoFrete;
    property numeroContratoFrete : string read FnumeroContratoFrete write FnumeroContratoFrete;
    property rota : TBeanRota read Frota write Frota;
    property motorista : TBeanMotorista read Fmotorista write Fmotorista;
    property tipoPagamentoContratoFrete : string read FtipoPagamentoContratoFrete write FtipoPagamentoContratoFrete;
    property pedagio : TBeanPedagio read Fpedagio write Fpedagio;
    property formaPagamentoDocumento : string read FformaPagamentoDocumento write FformaPagamentoDocumento;
    property observacoes : string read Fobservacoes write Fobservacoes;
    property NCM : string read FNcm write FNcm;
    property Usuario : string read FUusario write FUusario;
    property ParametrosOperadora : TStringList read FParametrosOperadora write FParametrosOperadora;
    property ParcelasAdiantamento : TParcelasAdiantamento read FParcelasAdiantamento write FParcelasAdiantamento;
    property Telefone_empresa : string read FTelefone_empresa write FTelefone_empresa;
    property NotasFiscais : TBeanListaNotasFiscais read FNotasFiscais write FNotasFiscais;
    property TipoTolerancia : string read FTipoTolerancia write FTipoTolerancia;
    property PercentualTolerancia : Extended read FPercentualTolerancia write FPercentualTolerancia;
    property DocumentosEntrega : TBeanListaDocumentosEntrega read FDocumentosEntrega write FDocumentosEntrega;
    property Descontos : TBeanListaDescontos read FDescontos write FDescontos;

    property TipoOperacaoTransporte : string read FTipoOperacaoTransporte write FTipoOperacaoTransporte;
    property ProprietarioCarga : string read FProprietarioCarga write FProprietarioCarga;

    property NumeroProtocoloProcessamento : string read FNumeroProtocoloProcessamento write FNumeroProtocoloProcessamento;
    property DataProtocoloProcessamento : TdateTime read FDataProtocoloProcessamento write FDataProtocoloProcessamento;

    property NumeroViagem : string read FNumeroViagem write FNumeroViagem;
    property NumeroCIOT   : string read FNumeroCIOT write FNumeroCIOT;

    property PortadorCartao : TBeanPortadorCartao read FPortadorCartao write FPortadorCartao;   {#T5193}
    property ValorValeAbastecimento : Extended read FValorValeAbastecimento write FValorValeAbastecimento;   {#T10752}
  end;

  TBeanContratado = class(TBeanBase)
  private
    Fpessoa_tipo: string;
    Fcontato: string;
    Frntrc_codigo: string;
    Ftelefone2: string;
    Ftelefone1: string;
    Fendereco: string;
    Fcelular: string;
    Fcidade: string;
    Fcontratado_cnpj_cpf: string;
    Fnome_contratado: string;
    Fdependentes: string;
    Fendereco_complemento: string;
    Fbairro: string;
    Femail: string;
    Fuf: string;
    Fcidade_ibge: string;
    Finss_codigo: string;
    Fcep: string;
    Fnome_fantasia: string;
    FIdentidade: string;
    FOrgaoEmissorIdentidade: string;
    Frntrc_tipo: string;
    Fequiparado_TAC: string;
    FDataEmissaoIdentidade: TdateTime;
    Fnacionalidade: string;
    Fsexo: string;
    FDataNascimento: TdateTime;
    Fendereco_propriedade_tipo: string;
    Fendereco_reside_desde: TdateTime;
    FcelularOperadora: string;
    procedure Setrntrc_tipo(const Value: string);
    procedure Getequiparado_TAC(const Value: string);
  published
    property contratado_cnpj_cpf : string read Fcontratado_cnpj_cpf write Fcontratado_cnpj_cpf;
    property pessoa_tipo : string read Fpessoa_tipo write Fpessoa_tipo;
    property nome_contratado : string read Fnome_contratado write Fnome_contratado;
    property nome_fantasia : string read Fnome_fantasia write Fnome_fantasia;
    property cep  : string read Fcep  write Fcep ;
    property telefone1 : string read Ftelefone1 write Ftelefone1;
    property telefone2 : string read Ftelefone2 write Ftelefone2;
    property celular : string read Fcelular write Fcelular;
    property email : string read Femail write Femail;
    property contato : string read Fcontato write Fcontato;
    property dependentes : string read Fdependentes write Fdependentes;
    property inss_codigo : string read Finss_codigo write Finss_codigo;
    property rntrc_codigo : string read Frntrc_codigo write Frntrc_codigo;
    property endereco  : string read Fendereco  write Fendereco ;
    property endereco_complemento : string read Fendereco_complemento write Fendereco_complemento;
    property bairro : string read Fbairro write Fbairro;
    property cidade : string read Fcidade write Fcidade;
    property uf : string read Fuf write Fuf;
    property cidade_ibge : string read Fcidade_ibge write Fcidade_ibge;
    property Identidade : string read FIdentidade write FIdentidade;
    property OrgaoEmissorIdentidade : string read FOrgaoEmissorIdentidade write FOrgaoEmissorIdentidade;
    property rntrc_tipo : string read Frntrc_tipo write Setrntrc_tipo;
    property equiparado_TAC : string read Fequiparado_TAC write Getequiparado_TAC;
    property DataEmissaoIdentidade : TdateTime read FDataEmissaoIdentidade write FDataEmissaoIdentidade;{versao 1.03}
    property nacionalidade : string read Fnacionalidade write Fnacionalidade;{versao 1.03}
    property sexo : string read Fsexo write Fsexo;{versao 1.03}
    property DataNascimento : TdateTime read FDataNascimento write FDataNascimento;{versao 1.03}
    property endereco_propriedade_tipo : string read Fendereco_propriedade_tipo write Fendereco_propriedade_tipo;{versao 1.03}
    property endereco_reside_desde	: TdateTime read Fendereco_reside_desde write Fendereco_reside_desde;{versao 1.03}
    property celularOperadora : string read FcelularOperadora write FcelularOperadora;{versao 1.03}


  end;


  TBeanMotorista = class(TBeanBase)
  private
    Fnome: string;
    Fdata_nascimento: TDateTime;
    Fcidade: string;
    Fcarteira_habilitacao_dt_val: string;
    Fcelular: string;
    Fendereco: string;
    Ftelefone: string;
    Fbairro: string;
    Femail: string;
    Fcarteira_habilitacao: string;
    Frg: string;
    Fendereco_complemento: string;
    Fcpf: string;
    Fcep: string;
    Fcarteira_habilitacao_categoria: string;
    Fuf: string;
    FOrgao_Expedido: string;
    Fcidade_ibge: string;
  published
    property cpf : string read Fcpf write Fcpf;
    property nome : string read Fnome write Fnome;
    property cep : string read Fcep write Fcep;
    property telefone : string read Ftelefone write Ftelefone;
    property celular : string read Fcelular write Fcelular;
    property email : string read Femail write Femail;
    property data_nascimento : TDateTime read Fdata_nascimento write Fdata_nascimento;
    property rg : string read Frg write Frg;
    property Orgao_Expedido : string read FOrgao_Expedido write FOrgao_Expedido;
    property carteira_habilitacao : string read Fcarteira_habilitacao write Fcarteira_habilitacao;
    property carteira_habilitacao_dt_val : string read Fcarteira_habilitacao_dt_val write Fcarteira_habilitacao_dt_val;
    property carteira_habilitacao_categoria : string read Fcarteira_habilitacao_categoria write Fcarteira_habilitacao_categoria;
    property endereco : string read Fendereco write Fendereco;
    property endereco_complemento : string read Fendereco_complemento write Fendereco_complemento;
    property bairro : string read Fbairro write Fbairro;
    property cidade : string read Fcidade write Fcidade;
    property cidade_ibge : string read Fcidade_ibge write Fcidade_ibge;
    property uf : string read Fuf write Fuf;
  end;


  TCarretas = class( TObjectlist )
  private
     itemIndex : integer;
  public
     constructor create;
     destructor destroy; override;
  published
     function Item : TBeanVeiculo;
     function AddCarreta : TBeanVeiculo;
     function first : TBeanVeiculo;
     function Last : TBeanVeiculo;
     function Next : TBeanVeiculo;
  end;

  TBeanVeiculoRodocred = class( TBeanBase )
  private
    FTipoVeiculoRodocred: string;
    FTipoRodagemRodocred: string;
    FTipoCombustivelRodocred: string;
    FModeloVeiculoRodocred: string;
  published
    property ModeloVeiculoRodocred : string read FModeloVeiculoRodocred write FModeloVeiculoRodocred;
    property TipoVeiculoRodocred : string read FTipoVeiculoRodocred write FTipoVeiculoRodocred;
    property TipoRodagemRodocred : string read FTipoRodagemRodocred write FTipoRodagemRodocred;
    property TipoCombustivelRodocred : string read FTipoCombustivelRodocred write FTipoCombustivelRodocred;
  end;

  TBeanVeiculoPamcary = class( TBeanBase )
  private
    FCaterogiraVeiculoPamcad: string;
  published
     property CaterogiraVeiculoPamcad : string read FCaterogiraVeiculoPamcad write FCaterogiraVeiculoPamcad;
  end;

  TBeanVeiculoNDD = class( TBeanBase )
  private
    FCaterogiraPedagio: string;
  published
     property CategoriaPedagio : string read FCaterogiraPedagio write FCaterogiraPedagio;
  end;

  TBeanVeiculo = class(TBeanBase)
  private
    Fcontratado_cnpj_cpf: string;
    Fplaca: string;
    Frenavam: string;
    Frntrc_codigo: string;
    Fplaca_uf: string;
    Fnumero_eixos: string;
    Fcarretas: TCarretas;
    Frntrc_tipo: string;
    FdadosPamcary: TBeanVeiculoPamcary;
    FdadosRodocred: TBeanVeiculoRodocred;
    FdadosNDD: TBeanVeiculoNDD;
    Fcategoriaveiculo: integer;
  public
    constructor create;
    destructor destroy; override;
  published
     property contratado_cnpj_cpf : string read Fcontratado_cnpj_cpf write Fcontratado_cnpj_cpf;
     property placa : string read Fplaca write Fplaca;
     property numero_eixos : string read Fnumero_eixos write Fnumero_eixos;
     property renavam : string read Frenavam write Frenavam;
     property rntrc_codigo : string read Frntrc_codigo write Frntrc_codigo;
     property placa_uf : string  read Fplaca_uf write Fplaca_uf;
     property rntrc_tipo : string read Frntrc_tipo write Frntrc_tipo;
     property categoriaveiculo : integer read Fcategoriaveiculo write Fcategoriaveiculo;
     property carretas : TCarretas read Fcarretas write Fcarretas;
     property dadosRodocred : TBeanVeiculoRodocred read FdadosRodocred write FdadosRodocred;
     property dadosPamcary : TBeanVeiculoPamcary read FdadosPamcary write FdadosPamcary;
     property dadosNDD : TBeanVeiculoNDD read FdadosNDD write FdadosNDD;

  end;


  TBeanProxy = class( TBeanBase )
  private
    Fproxy: string;
    Fproxyusuario: string;
    Fproxysenha: string;
  published
     property proxy : string read Fproxy write Fproxy;
     property proxyusuario : string read Fproxyusuario write Fproxyusuario;
     property proxysenha : string read Fproxysenha write Fproxysenha;
  end;


  TBeanOperadora = class( TBeanBase )
  private
    FProxy: TBeanProxy;
  public
    constructor create; 
    destructor destroy; override;
  published
     property proxy : TBeanProxy read FProxy;
  end;

  TBeanOperadoraNDD = class( TBeanOperadora )
  private
    FdiretorioEntrada: string;
    FdiretorioSaida: string;
    FCertificado: string;
    FWebServer: string;
    FTipoIntegracao: string;
  published
     property TipoIntegracao : string read FTipoIntegracao write FTipoIntegracao;

     property diretorioEntrada : string read FdiretorioEntrada write FdiretorioEntrada;
     property diretorioSaida : string read FdiretorioSaida write FdiretorioSaida;

     property WebServer : string read FWebServer write FWebServer;
     property Certificado : string read FCertificado write FCertificado;
  end;

  TBeanOperadoraPamcard = class( TBeanOperadora )
  private
    FdiretorioEntrada: string;
    FdiretorioSaida: string;
  published
     property diretorioEntrada : string read FdiretorioEntrada write FdiretorioEntrada;
     property diretorioSaida : string read FdiretorioSaida write FdiretorioSaida;
  end;


  TBeanOperadoraRodocred = class( TBeanOperadora )
  private
    Fcliente: string;
    Fusuario: string;
    FWebServer: string;
    Fsenha: string;
  published
     property WebServer : string read FWebServer write FWebServer;
     property usuario : string read Fusuario write Fusuario;
     property senha : string read Fsenha write Fsenha;
     property cliente : string read Fcliente write Fcliente;
  end;

  TBeanOperadoraRepom = class( TBeanOperadora )
  private
    Fusuario: string;
    FWebServer: string;
    Fsenha: string;
  published
     property WebServer : string read FWebServer write FWebServer;
     property usuario : string read Fusuario write Fusuario;
     property senha : string read Fsenha write Fsenha;
  end;


  TBeanOperadoraTicket = class( TBeanOperadora )
  private
    Fusuario: string;
    FWebServer: string;
    Fsenha: string;
    FcodigoCliente: string;
    FcodigoBase: string;
  published
     property WebServer : string read FWebServer write FWebServer;
     property usuario : string read Fusuario write Fusuario;
     property senha : string read Fsenha write Fsenha;
     property codigoCliente : string read FcodigoCliente write FcodigoCliente;
     property codigoBase : string read FcodigoBase write FcodigoBase;
  end;

  TBeanOperadoraTarget = class( TBeanOperadora )
  private
    FToken: string;
    FWebServer: string;
    FIdentification: string;
  published
     property Identification : string read FIdentification write FIdentification;
     property Token : string read FToken write FToken;
     property WebServer : string read FWebServer write FWebServer;
  end;

implementation

uses Math, SysUtils, windows;

var
 class_var_Refs : TStringList;
   CritSect : TRTLCriticalSection;

{ TCarretas }

function TCarretas.AddCarreta: TBeanVeiculo;
begin
  result := TBeanVeiculo.create;
  Add( result );
  itemIndex := Count - 1;
end;


constructor TCarretas.create;
begin
  inherited;
  itemindex := -1;
  OwnsObjects := true;
end;

destructor TCarretas.destroy;
begin
{  while count > 0 do
  begin
     Items[0].Free;
     Delete(0);
  end;
}  inherited;
end;

function TCarretas.first: TBeanVeiculo;
begin
   itemIndex := 0;
   result := item;
end;

function TCarretas.Item: TBeanVeiculo;
begin
   if (itemIndex = -1 ) or ( itemIndex >= count )then
   begin
      itemIndex := -1;
      result := nil;
   end
   else
      result := TBeanVeiculo( self.Items[itemIndex]);
end;

function TCarretas.Last: TBeanVeiculo;
begin
  itemIndex := Count - 1;
  result := Item;
end;

function TCarretas.Next: TBeanVeiculo;
begin
  itemIndex := itemIndex + 1;
  result := item;
end;

{ TBeanBase }

constructor TBeanBase.create;
begin
  inherited create( nil );
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

destructor TBeanBase.Destroy;
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

{ TBeanVeiculo }

constructor TBeanVeiculo.create;
begin
  inherited;
  Fcarretas := TCarretas.create;
  FdadosPamcary := TBeanVeiculoPamcary.create;
  FdadosRodocred := TBeanVeiculoRodocred.create;
  FdadosNDD   := TBeanVeiculoNDD.create;
end;

destructor TBeanVeiculo.destroy;
begin
  Fcarretas.free;
  FdadosPamcary.free;
  FdadosRodocred.free;
  FdadosNDD.Free;
  inherited; 
end;

{ TBeanVeiculoRodocred }

{ TBeanVeiculoPamcary }

{ TpontosRota }



{ TpontosRota }

function TpontosRota.AddPonto: TBeanPontoRota;
begin
   result := TBeanPontoRota.create;
   Add( result );
   itemIndex := count-1;
end;

constructor TpontosRota.create;
begin
  Inherited;
  OwnsObjects := true;
end;

destructor TpontosRota.destroy;
//var
//   obj : TObject;
begin
{  while count > 0 do
  begin
     obj := Items[0];
     obj.Free;
     Delete(0);
  end;}
  inherited;
end;

function TpontosRota.first: TBeanPontoRota;
begin
  itemIndex := 0;
  Result := item;
end;

function TpontosRota.Item: TBeanPontoRota;
begin
   if (itemIndex = -1 ) or ( itemIndex >= count )then
   begin
      itemIndex := -1;
      result := nil;
   end
   else
      result := TBeanPontoRota( self.Items[itemIndex]);
end;

function TpontosRota.Last: TBeanPontoRota;
begin
  itemIndex := count - 1;
  result := item;
end;

function TpontosRota.Next: TBeanPontoRota;
begin
  itemIndex := itemIndex + 1;
  Result := item;
end;

{ TBeanContrato }

constructor TBeanContrato.create;
begin
   inherited;
   FDadosDeposito := TBeanDadosDeposito.create;
   Fcliente_Origem := TBeanEnvolvido.create;
   Fcliente_Destino := TBeanEnvolvido.create;
   Fcliente_Consignatario := TBeanEnvolvido.create;
   Fmotorista       := TBeanMotorista.create;
   Fpedagio         := TBeanPedagio.create;
   Frota            := TBeanRota.create;
   Fveiculo         := TBeanVeiculo.create;
   Fcontratado      := TBeanContratado.create;
   FParametrosOperadora := TStringList.Create;
   FParcelasAdiantamento := TParcelasAdiantamento.Create;
   FParcelasAdiantamento.OwnsObjects := True;
   FNotasFiscais := TBeanListaNotasFiscais.create;
   FDescontos := TBeanListaDescontos.create;
   FDocumentosEntrega := TBeanListaDocumentosEntrega.create;
   FDadosImpressaoDOT := TDadosImpressaoDOT.create;
   FPortadorCartao := TBeanPortadorCartao.create;{#T5193}
end;

destructor TBeanContrato.destroy;
begin
   FDadosDeposito.free;
   Fcliente_Origem.free;
   Fcliente_Destino.free;
   Fcliente_Consignatario.Free;
   Fmotorista.free;
   Fpedagio.free;
   Frota.free;
   Fveiculo.free;
   Fcontratado.free;
   FParametrosOperadora.Free;
   FParcelasAdiantamento.Free;
   FNotasFiscais.free;
   Fdescontos.free;
   FDocumentosEntrega.free;
   FDadosImpressaoDOT.free;
   FPortadorCartao.free;{#T5193}
   inherited;
end;

{ TBeanRota }

constructor TBeanRota.create;
begin
   inherited;
   FpontosRota := TpontosRota.create;
end;

destructor TBeanRota.destroy;
begin
  FpontosRota.Free;
  inherited;
end;

{ TParcelasAdiantamento }


{ TParcelasAdiantamento }

function TParcelasAdiantamento.AddParcela: TBeanParcela;
begin
  result := TBeanParcela.create;
  Add( result );
  itemIndex := Count - 1;
end;

constructor TParcelasAdiantamento.create;
begin
  inherited;
  itemindex := -1;
  OwnsObjects := true;
end;

destructor TParcelasAdiantamento.destroy;
begin
{  while count > 0 do
  begin
     Items[0].Free;
     Delete(0);
  end;}

  inherited;
end;

function TParcelasAdiantamento.first: TBeanParcela;
begin
   itemIndex := 0;
   result := item;
end;

function TParcelasAdiantamento.Item: TBeanParcela;
begin
   if (itemIndex = -1 ) or ( itemIndex >= count )then
   begin
      itemIndex := -1;
      result := nil;
   end
   else
      result := TBeanParcela( self.Items[itemIndex]);
end;

function TParcelasAdiantamento.Last: TBeanParcela;
begin
  itemIndex := Count - 1;
  result := Item;
end;

function TParcelasAdiantamento.Next: TBeanParcela;
begin
  itemIndex := itemIndex + 1;
  result := item;
end;

{ TBeanListaNotasFiscais }

function TBeanListaNotasFiscais.AddNota: TBeanNotaFiscal;
begin
   result := TBeanNotaFiscal.create;
   Add( result );
   itemIndex := count-1;
end;

constructor TBeanListaNotasFiscais.create;
begin
   inherited;
  itemindex := -1;
  OwnsObjects := true;
end;

destructor TBeanListaNotasFiscais.destroy;
//var
//  o : TObject;
begin
{  while count > 0 do
  begin
     o := Items[0];
     o.Free;
     Delete(0);
  end;}
  inherited;
end;

function TBeanListaNotasFiscais.first: TBeanNotaFiscal;
begin
   itemIndex := 0;
   result := item;
end;

function TBeanListaNotasFiscais.Item: TBeanNotaFiscal;
begin
   if (itemIndex = -1 ) or ( itemIndex >= count )then
   begin
      itemIndex := -1;
      result := nil;
   end
   else
      result := TBeanNotaFiscal( self.Items[itemIndex]);
end;

function TBeanListaNotasFiscais.Last: TBeanNotaFiscal;
begin
  itemIndex := Count - 1;
  result := Item;
end;

function TBeanListaNotasFiscais.Next: TBeanNotaFiscal;
begin
  itemIndex := itemIndex + 1;
  result := item;
end;

{ TBeanListaDescontos }


function TBeanListaDescontos.AddDesconto: TBeanDesconto;
begin
   result := TBeanDesconto.create;
   Add( result );
   itemIndex := count-1;
end;

constructor TBeanListaDescontos.create;
begin
   inherited;
  itemindex := -1;
  OwnsObjects := true;
end;

destructor TBeanListaDescontos.destroy;
begin

  inherited;
end;

function TBeanListaDescontos.first: TBeanDesconto;
begin
   itemIndex := 0;
   result := item;
end;

function TBeanListaDescontos.Item: TBeanDesconto;
begin
   if (itemIndex = -1 ) or ( itemIndex >= count )then
   begin
      itemIndex := -1;
      result := nil;
   end
   else
      result := TBeanDesconto( self.Items[itemIndex]);
end;

function TBeanListaDescontos.Last: TBeanDesconto;
begin
  itemIndex := Count - 1;
  result := Item;
end;

function TBeanListaDescontos.Next: TBeanDesconto;
begin
  itemIndex := itemIndex + 1;
  result := item;
end;



{ TBeanListaDocumentosEntrega }

function TBeanListaDocumentosEntrega.AddDocumento: TBeanDocumentoEntrega;
begin
   result := TBeanDocumentoEntrega.create;
   Add( result );
   itemIndex := count-1;
end;

constructor TBeanListaDocumentosEntrega.create;
begin
   inherited;
  itemindex := -1;
  OwnsObjects := true;
end;

destructor TBeanListaDocumentosEntrega.destroy;
begin

  inherited;
end;

function TBeanListaDocumentosEntrega.first: TBeanDocumentoEntrega;
begin
   itemIndex := 0;
   result := item;
end;

function TBeanListaDocumentosEntrega.Item: TBeanDocumentoEntrega;
begin
   if (itemIndex = -1 ) or ( itemIndex >= count )then
   begin
      itemIndex := -1;
      result := nil;
   end
   else
      result := TBeanDocumentoEntrega( self.Items[itemIndex]);
end;

function TBeanListaDocumentosEntrega.Last: TBeanDocumentoEntrega;
begin
  itemIndex := Count - 1;
  result := Item;
end;

function TBeanListaDocumentosEntrega.Next: TBeanDocumentoEntrega;
begin
  itemIndex := itemIndex + 1;
  result := item;
end;

{ TDadosImpressaoDOT }

constructor TDadosImpressaoDOT.create;
begin
   inherited;
end;

{ TBeanContratado }

procedure TBeanContratado.Getequiparado_TAC(const Value: string);
begin
//  if Pos( value, 'SN') = 0 then
//     raise Exception.create('Valor invalido para o equiparado TAC. Aceita somente S ou N.');
  Fequiparado_TAC := Value;
end;

procedure TBeanContratado.Setrntrc_tipo(const Value: string);
begin
//  if Pos( value, 'TAC ETC ECT') = 0  then
//     raise exception.create('Tipo do RNTRC inválido. Deve ser TAC, ETC ou ECT');
  Frntrc_tipo := Value;
end;

{ TBeanOperadora }

constructor TBeanOperadora.create;
begin
  inherited;
  FProxy := TBeanProxy.create;
end;

destructor TBeanOperadora.destroy;
begin
  FProxy.free;
  inherited;
end;

initialization
//   tBaseNddWS_class_var_Refs := 0;
   InitializeCriticalSection(CritSect);
   class_var_Refs := TStringList.Create;
finalization
   DeleteCriticalSection(CritSect);
   if class_var_Refs.Count <> 0 then
   begin
      class_var_Refs.SaveToFile( 'dump_base.txt'  );
      class_var_Refs.Free;
      //raise Exception.Create( 'Estouro de memorio com '+intToStr(tBaseNddWS_class_var_Refs) );
   end;

end.
