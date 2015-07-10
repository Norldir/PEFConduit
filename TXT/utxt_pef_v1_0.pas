{
 Tecinco Informática - Todos os direitos reservados - 2012.
 Autor: Norldir Kunkel
}

{
Exemplo utilização

with TContrato_0000.create do
try
  cnpj_matriz := '';
  uf_matriz := '';
  //demais campos
  TipoTolerancia := '';
  PercentualTolerancia := '';

  with add0100 do
  begin
     descricao := '';
     valor     := 0;
  end;

  with add0200 do
  begin
     Codigo := 'NFF';
     Descricao:= 'Canhoto da nota fiscal';
     Complemento := 'Carrimbado e assinado';
  end;


  with add7000 do
  begin
     Administradora := '';
     Parametro      := '';
     ValorParametro := '';
  end;


  with add5000 do
  begin
    campo := 'contratado_cnpj_cpf';
    with add5200 do
    begin
       contratado_cnpj_cpf := '';
       with add5210 do
       begin
         Administradora := 'RODOCRED';
         Parametro      := 'ModeloVeiculo';
         ValorParametro := '';
       end;
       with add5220 do
       begin
         contratado_cnpj_cpf := '';
         placa :=               '';
         with add5221 do
         begin
           Administradora := 'RODOCRED';
           Parametro := 'ModeloVeiculo';
           ValorParametro := ifnull(resultadoNomeadoValor( dadosCarreta, vii, 'ModeloVeiculoRodocred'),'');
         end;
       end;
    end;
  end;
  saveToFile( arquivo );
finally
  Free;
end;
}


unit utxt_pef_v1_0;

interface

uses utxt_base;

type

  T1000 = class( TTXT_PEF )
  private
    FvalorPedagio: extended;
    FadministradorPedagio: string;
    FNumeroCartaoPedagio: string;
    FresposavelPagamentoPedagio: string;
    FformaPagamentoPedagio: string;
  public
    constructor create;
  published
    property valorPedagio : extended read FvalorPedagio write FvalorPedagio;
    property formaPagamentoPedagio : string read FformaPagamentoPedagio write FformaPagamentoPedagio;
    property administradorPedagio : string read FadministradorPedagio write FadministradorPedagio;
    property resposavelPagamentoPedagio : string read FresposavelPagamentoPedagio write FresposavelPagamentoPedagio;
    property NumeroCartaoPedagio : string read FNumeroCartaoPedagio write FNumeroCartaoPedagio;
  end;

  T2100 = class( TTXT_PEF )
  private
    FUF_Destino: string;
    FUF_Origem: string;
    FIBGE_Origem: string;
    FDescricao: string;
    FIBGE_Destino: string;
    function RUF_Origem: string;                             
  public
    constructor create; 
  published
    property IBGE_Origem : string read FIBGE_Origem write FIBGE_Origem;
    property UF_Origem : string read RUF_Origem write FUF_Origem;
    property IBGE_Destino : string read FIBGE_Destino write FIBGE_Destino;
    property UF_Destino : string read FUF_Destino write FUF_Destino;
    property Descricao : string read FDescricao write FDescricao;
  end;

  T2000 = class( TTXT_PEF )
  private
    FCodigoRotaSistema: string;
    FCodigoRotaAdministradora: string;
    FReg2100: TTXTFilhos;
  public
    constructor create;
    destructor destroy; override;
  published
    function add2100 : T2100;
    property CodigoRotaSistema : string read FCodigoRotaSistema write FCodigoRotaSistema;
    property CodigoRotaAdministradora : string read FCodigoRotaAdministradora write FCodigoRotaAdministradora;
    property reg2100 : TTXTFilhos read FReg2100;
  end;
  
  T3000 = class( TTXT_PEF )
  private
    FNumero: string;
    FRazaoSocial_remetente: string;
    FCnpj_destinatario: string;
    FModelo: string;
    FCnpj_remetente: string;
    FRazaoSocial_destinatario: string;
    FSerie: string;
  public
     constructor create;
  published
    property Numero : string read FNumero write FNumero;
    property Serie : string read FSerie write FSerie;
    property Modelo : string read FModelo write FModelo;
    property Cnpj_remetente : string read FCnpj_remetente write FCnpj_remetente;
    property RazaoSocial_remetente : string read FRazaoSocial_remetente write FRazaoSocial_remetente;
    property Cnpj_destinatario : string read FCnpj_destinatario write FCnpj_destinatario;
    property RazaoSocial_destinatario : string read FRazaoSocial_destinatario write FRazaoSocial_destinatario;
  end;

  T4000 = class( TTXT_PEF )
  private
    fagencia: string;
    FdvConta: string;
    Fconta: string;
    FBanco: string;
    FdvAgencia: string;
  public
    constructor create;
  published
    property banco : string read FBanco write FBanco;
    property agencia : string read fagencia write Fagencia;
    property dvAgencia : string read FdvAgencia write FdvAgencia;
    property conta : string read Fconta write Fconta;
    property dvConta : string read FdvConta write FdvConta;

  end;

  T5100 = class( TTXT_PEF )
  private
    Fnome: string;
    Fcidade: string;
    Fcep: string;
    Fdata_nascimento: string;
    Fcarteira_habilitacao_dt_val: string;
    Fcelular: string;
    Fendereco: string;
    Ftelefone: string;
    FOrgao_Expedido: string;
    Fbairro: string;
    Femail: string;
    Fcarteira_habilitacao: string;
    Frg: string;
    Fuf: string;
    Fcpf: string;
    Fendereco_complemento: string;
    Fcarteira_habilitacao_categoria: string;
    Fcidade_ibge: string;
  public
    constructor create;
  published
    property cpf : string read Fcpf write Fcpf;
    property nome : string read Fnome write Fnome;
    property cep : string read Fcep write Fcep;
    property telefone : string read Ftelefone write Ftelefone;
    property celular : string read Fcelular write Fcelular;
    property email : string read Femail write Femail;
    property data_nascimento : string read Fdata_nascimento write Fdata_nascimento;
    property rg : string read Frg write Frg;
    property Orgao_Expedido : string read FOrgao_Expedido write FOrgao_Expedido;
    property carteira_habilitacao : string read Fcarteira_habilitacao write Fcarteira_habilitacao;
    property carteira_habilitacao_dt_val : string read Fcarteira_habilitacao_dt_val write Fcarteira_habilitacao_dt_val;
    property carteira_habilitacao_categoria : string read Fcarteira_habilitacao_categoria write Fcarteira_habilitacao_categoria;
    property endereco : string read Fendereco write Fendereco;
    property endereco_complemento : string read Fendereco_complemento write Fendereco_complemento;
    property bairro : string read Fbairro write Fbairro;
    property cidade : string read Fcidade write Fcidade;
    property uf : string read Fuf write Fuf;
    property cidade_ibge : string read Fcidade_ibge write Fcidade_ibge;
  end;

  T5221 = class( TTXT_PEF )
  public
    constructor create;
  private
    FValorParametro: string;
    FParametro: string;
    FAdministradora: string;
  published
    property Administradora : string read FAdministradora write FAdministradora;
    property Parametro : string read FParametro write FParametro;
    property ValorParametro : string read FValorParametro write FValorParametro;
  end;

  T5220 = class( TTXT_PEF )
  private
    Fplaca: string;
    Fplaca_uf: string;
    Frenavam: string;
    Fcontratado_cnpj_cpf: string;
    Frntrc_tipo: string;
    Fnumero_eixos: string;
    Frntrc_codigo: string;
    Freg5221: TTXTFilhos;
    FCategoria: integer;
  public
    constructor create;
    destructor destroy;override;
  published
    function add5221 : T5221;
    property contratado_cnpj_cpf : string read Fcontratado_cnpj_cpf write Fcontratado_cnpj_cpf;
    property placa : string read Fplaca write Fplaca;
    property numero_eixos : string read Fnumero_eixos write Fnumero_eixos;
    property renavam : string read Frenavam write Frenavam;
    property rntrc_codigo : string read Frntrc_codigo write Frntrc_codigo;
    property placa_uf : string read Fplaca_uf write Fplaca_uf;
    property rntrc_tipo : string read Frntrc_tipo write Frntrc_tipo;
    property Categoria : integer read FCategoria write FCategoria;
    property reg5221 : TTXTFilhos read Freg5221;
  end;

  T5210 = class( TTXT_PEF )
  private
    FValorParametro: string;
    FParametro: string;
    Fproperty: string;
  public
    constructor create;
  published
    property Administradora : string read Fproperty  write Fproperty ;
    property Parametro : string read FParametro write FParametro;
    property ValorParametro : string read FValorParametro write FValorParametro;
  end;

  T5200 = class( TTXT_PEF )
  private
    Frenavam: string;
    Fplaca_uf: string;
    Fproperty: string;
    Frntrc_codigo: string;
    Fnumero_eixos: string;
    Fmotorista_cpf: string;
    Frntrc_tipo: string;
    Freg5220: TTXTFilhos;
    Freg5210: TTXTFilhos;
    FCategoria: integer;
  public
    constructor create;
    destructor Destroy;override;
  published
    function add5210 : T5210;
    function add5220 : T5220;
    property placa : string read Fproperty    write Fproperty   ;
    property numero_eixos : string read Fnumero_eixos write Fnumero_eixos;
    property renavam : string read Frenavam write Frenavam;
    property rntrc_codigo : string read Frntrc_codigo write Frntrc_codigo;
    property motorista_cpf : string read Fmotorista_cpf write Fmotorista_cpf;
    property placa_uf : string read Fplaca_uf write Fplaca_uf;
    property rntrc_tipo : string read Frntrc_tipo write Frntrc_tipo;
    property Categoria : integer read FCategoria write FCategoria;
    property reg5210 : TTXTFilhos read Freg5210;
    property reg5220 : TTXTFilhos read Freg5220;
  end;

  T5000 = class( TTXT_PEF )
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
    Femail: string;
    Fuf: string;
    Fdependentes: string;
    Fendereco_complemento: string;
    Fbairro: string;
    Fcidade_ibge: string;
    Finss_codigo: string;
    Fcep: string;
    Fnome_fantasia: string;
    Freg5200: TTXTFilhos;
    Freg5100: TTXTFilhos;
    FIdentidade: string;
    FOrgaoEmissorIdentidade: string;
    Frntrc_tipo: string;
    FEquiparado_TAC: string;
    Fendereco_reside_desde: string;
    Fsexo: string;
    FcelularOperadora: string;
    Fendereco_propriedade_tipo: string;
    Fnacionalidade: string;
    FDataEmissaoIdentidade: string;
    FDataNascimento: string;
  public
   constructor create;
   destructor destroy;override;
  published
   function add5100 : T5100;
   function add5200 : T5200;
   property contratado_cnpj_cpf : string read Fcontratado_cnpj_cpf write Fcontratado_cnpj_cpf;
   property pessoa_tipo : string read Fpessoa_tipo write Fpessoa_tipo;
   property nome_contratado : string read Fnome_contratado write Fnome_contratado;
   property nome_fantasia : string read Fnome_fantasia write Fnome_fantasia;
   property cep : string read Fcep write Fcep;
   property telefone1 : string read Ftelefone1 write Ftelefone1;
   property telefone2 : string read Ftelefone2 write Ftelefone2;
   property celular : string read Fcelular write Fcelular;
   property email : string read Femail write Femail;
   property contato : string read Fcontato write Fcontato;
   property dependentes : string read Fdependentes write Fdependentes;
   property inss_codigo : string read Finss_codigo write Finss_codigo;
   property rntrc_codigo : string read Frntrc_codigo write Frntrc_codigo;
   property endereco : string read Fendereco write Fendereco;
   property endereco_complemento : string read Fendereco_complemento write Fendereco_complemento;
   property bairro : string read Fbairro write Fbairro;
   property cidade : string read Fcidade write Fcidade;
   property uf : string read Fuf write Fuf;
   property cidade_ibge : string read Fcidade_ibge write Fcidade_ibge;
   property Identidade : string read FIdentidade write FIdentidade;
   property OrgaoEmissorIdentidade : string read FOrgaoEmissorIdentidade write FOrgaoEmissorIdentidade;

   property rntrc_tipo : string read Frntrc_tipo write Frntrc_tipo;
   property Equiparado_TAC : string read FEquiparado_TAC write FEquiparado_TAC;

   property DataEmissaoIdentidade : string read FDataEmissaoIdentidade write FDataEmissaoIdentidade;{versao 1.03}
   property nacionalidade : string read Fnacionalidade write Fnacionalidade;{versao 1.03}
   property sexo : string read Fsexo write Fsexo;{versao 1.03}
   property DataNascimento : string read FDataNascimento write FDataNascimento;{versao 1.03}
   property endereco_propriedade_tipo : string read Fendereco_propriedade_tipo write Fendereco_propriedade_tipo;{versao 1.03}
   property endereco_reside_desde	: string read Fendereco_reside_desde write Fendereco_reside_desde;{versao 1.03}
   property celularOperadora : string read FcelularOperadora write FcelularOperadora;{versao 1.03}

   property reg5100 : TTXTFilhos read Freg5100;
   property reg5200 : TTXTFilhos read Freg5200;
  end;

  T9999 = class( TTXT_PEF )
  private
    FNumeroProtocoloProcessamento: string;
    FDataHoraEnvio: TdateTime;
  public
   constructor create;
  published
    property NumeroProtocoloProcessamento : string read FNumeroProtocoloProcessamento write FNumeroProtocoloProcessamento;
    property DataHoraRetorno : TdateTime read FDataHoraEnvio write FDataHoraEnvio;
  end;

  T0400 = class( TTXT_PEF )
  private
    Fvalor: extended;
    FDias: Integer;
    FvalorBruto: extended;
  public
   constructor create;
  published
    property dias : Integer read FDias write FDias;
    property valor : extended read Fvalor write Fvalor;
    property valorBruto : extended read FvalorBruto write FvalorBruto; // somente indicar se for diferente, por exemplo se a retenção acontecer em todas as parcelas caso da nddcargo.
  end;

  T7000 = class( TTXT_PEF )
  public
    constructor create;
  private
    FValorParametro: string;
    FParametro: string;
    FAdministradora: string;
  published
    property Administradora : string read FAdministradora write FAdministradora;
    property Parametro : string read FParametro write FParametro;
    property ValorParametro : string read FValorParametro write FValorParametro;
  end;

  T0100 = class( TTXT_PEF )
  public
    constructor create;
  private
    Fdescricao: string;
    Fvalor: extended;
    Fcodigo: string;
  published
    property descricao : string read Fdescricao write Fdescricao;
    property valor : extended read Fvalor write Fvalor;
    property codigo : string read Fcodigo write Fcodigo;
  end;

  T0200 = class( TTXT_PEF )
  public
    constructor create;
  private
    FComplemento: string;
    FCodigo: string;
    FDescricao: string;
  published
    property Codigo : string read FCodigo write FCodigo;
    property Descricao : string read FDescricao write FDescricao;
    property Complemento : string read FComplemento write FComplemento;
  end;

  T0300 = class( TTXT_PEF )
  public
    constructor create;
  private
    Fnome: string;
    Fcomplemento: string;
    Fcidade: string;
    Fendereco: string;
    FTIPO: string;
    Fcnpj: string;
    Fibge: string;
    Fbairro: string;
    Fcep: string;
    Fuf: string;
  published
    property TIPO : string read FTIPO write FTIPO;
    property cnpj : string read Fcnpj write Fcnpj;
    property nome : string read Fnome write Fnome;
    property endereco : string read Fendereco write Fendereco;
    property complemento : string read Fcomplemento write Fcomplemento;
    property bairro : string read Fbairro write Fbairro;
    property cep : string read Fcep write Fcep;
    property cidade : string read Fcidade write Fcidade;
    property ibge : string read Fibge write Fibge;
    property uf : string read Fuf write Fuf;
  end;

  T0500 = class( TTXT_PEF ) {Portador do cartão, obrigatorio para a pancary}
  private
    Fendereco_cidade: string;
    Fendereco_uf: string;
    Fempresa_nome: string;
    Fnacionalidade: string;
    Fcelular_operadora: string;
    Fnaturalidade_ibge: string;
    Fendereco_pais: string;
    Fempresa_cnpj: string;
    Fnome: string;
    Femail: string;
    FCNPJ_CPF: string;
    Fendereco_propriedade_tipo: String;
    Fendereco_complemento: string;
    Frg: string;
    Fsexo: string;
    Frg_emissor: string;
    Fcelular: string;
    Fendereco_bairro: string;
    Frg_uf: string;
    Frntrc: string;
    Fempresa_rntrc: string;
    Fendereco_cep: string;
    Frg_data_emissao: TDateTime;
    Fendereco_reside_desde: TDatetime;
    Fdata_nascimento: TDatetime;
    Ftelefone: string;
    Fendereco: string;
    procedure Setcelular(const Value: string);
    procedure Setcelular_operadora(const Value: string);
    procedure SetCNPJ_CPF(const Value: string);
    procedure Setdata_nascimento(const Value: TDatetime);
    procedure Setemail(const Value: string);
    procedure Setempresa_cnpj(const Value: string);
    procedure Setempresa_nome(const Value: string);
    procedure Setempresa_rntrc(const Value: string);
    procedure Setendereco_bairro(const Value: string);
    procedure Setendereco_cep(const Value: string);
    procedure Setendereco_cidade(const Value: string);
    procedure Setendereco_complemento(const Value: string);
    procedure Setendereco_pais(const Value: string);
    procedure Setendereco_propriedade_tipo(const Value: String);
    procedure Setendereco_reside_desde(const Value: TDatetime);
    procedure Setendereco_uf(const Value: string);
    procedure Setnacionalidade(const Value: string);
    procedure Setnaturalidade_ibge(const Value: string);
    procedure Setnome(const Value: string);
    procedure Setrg(const Value: string);
    procedure Setrg_data_emissao(const Value: TDatetime);
    procedure Setrg_emissor(const Value: string);
    procedure Setrg_uf(const Value: string);
    procedure Setrntrc(const Value: string);
    procedure Setsexo(const Value: string);
    procedure Settelefone(const Value: string);
    procedure Setendereco(const Value: string);
  public
   constructor create;
  published
   property nome : string read Fnome write Setnome;
   property CNPJ_CPF : string read FCNPJ_CPF write SetCNPJ_CPF;
   property rg : string read Frg write Setrg;
   property rg_uf : string read Frg_uf write Setrg_uf;
   property rg_emissor : string read Frg_emissor write Setrg_emissor;
   property rg_data_emissao : TDatetime read Frg_data_emissao write Setrg_data_emissao;
   property rntrc : string read Frntrc write Setrntrc;
   property data_nascimento : TDatetime read Fdata_nascimento write Setdata_nascimento;
   property nacionalidade : string read Fnacionalidade write Setnacionalidade;
   property naturalidade_ibge  :string read Fnaturalidade_ibge write Setnaturalidade_ibge;
   property sexo  : string read Fsexo write Setsexo; {M / F}
   property endereco : string read Fendereco write Setendereco;
   property endereco_complemento : string read Fendereco_complemento write Setendereco_complemento;
   property endereco_bairro : string read Fendereco_bairro write Setendereco_bairro;
   property endereco_cidade : string read Fendereco_cidade write Setendereco_cidade;
   property endereco_uf : string read Fendereco_uf write Setendereco_uf;
   property endereco_pais : string read Fendereco_pais write Setendereco_pais;
   property endereco_cep : string read Fendereco_cep write Setendereco_cep;
   property endereco_propriedade_tipo : String read Fendereco_propriedade_tipo write Setendereco_propriedade_tipo; { 1 PRÓPRIO 2 PRÓPRIO FINANCIADO 3 ALUGADO 4 FAMILIAR 5 CEDIDO}
   property endereco_reside_desde : TDatetime read Fendereco_reside_desde write Setendereco_reside_desde;
   property telefone : string read Ftelefone write Settelefone;
   property celular : string read Fcelular write Setcelular;
   property celular_operadora : string read Fcelular_operadora write Setcelular_operadora;
   property email  : string read Femail write Setemail;
   property empresa_nome : string read Fempresa_nome write Setempresa_nome;
   property empresa_cnpj : string read Fempresa_cnpj write Setempresa_cnpj;
   property empresa_rntrc : string read Fempresa_rntrc write Setempresa_rntrc;
  end;

  T0600 = class( TTXT_PEF ) {#T10752}
  private
    FvalorBruto: extended;
  public
   constructor create;
  published
    property valorBruto : extended read FvalorBruto write FvalorBruto; // valor do vale abastecimento
  end;

  T0001 = class( TTXT_PEF )
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

  TContrato_0000 = class( TTXT_PEF )
  private
    FPercentualTolerancia: extended;
    FAliquotaIRRF: extended;
    FvalorSenat: extended;
    FvalorAdiantamento: extended;
    FBaseINSS: extended;
    FvalorINSS: extended;
    FBaseIRRF: extended;
    FvalorDocumento: extended;
    FAliquotaSest: extended;
    FvalorNotaFiscal: extended;
    Fquantidade: extended;
    FvalorFreteMotorista: extended;
    FBaseSestSenat: extended;
    FvalorIRRF: extended;
    FvalorSest: extended;
    FAliquotaINSS: extended;
    FvalorSaldo: extended;
    FpesoSaida: extended;
    FAliquotaSenat: extended;
    FvalorTotalMotorista: extended;
    Fcliente_Destino: string;
    Fcliente_Origem: string;
    Fobservacoes: string;
    FnumeroCartaoFrete: string;
    FnumeroContratoFrete: string;
    Fcnpj_filial: string;
    FUsuario: string;
    FtipoPagamentoContratoFrete: string;
    FdescricaoCarga: string;
    Fcnpj_matriz: string;
    Fdocumento: string;
    Fcodigo_filial: string;
    FTelefone_empresa: string;
    FTipoTolerancia: string;
    FcidadeMatriz: string;
    Fuf_matriz: string;
    FformaPagamentoDocumento: string;
    Fserie_documento: string;
    FNCM: string;
    Fdatasaida: TdateTime;
    Freg9999: TTXTFilhos;
    Freg7000: TTXTFilhos;
    Freg4000: TTXTFilhos;
    Freg5000: TTXTFilhos;
    Freg0400: TTXTFilhos;
    Freg2000: TTXTFilhos;
    Freg3000: TTXTFilhos;
    Freg1000: TTXTFilhos;
    Freg0100: TTXTFilhos;
    Freg0200: TTXTFilhos;
    Freg0300: TTXTFilhos;
    FTipoOperacaoTransporte: string;
    FProprietarioDaCarga: string;
    Freg0001: TTXTFilhos;
    Freg0500: TTXTFilhos;
    Freg0600: TTXTFilhos;{#T10752}
  public
    constructor create;
    destructor destroy;override;
  published
    property cnpj_matriz : string read Fcnpj_matriz write Fcnpj_matriz;
    property uf_matriz : string read Fuf_matriz write Fuf_matriz;
    property cidadeMatriz : string read FcidadeMatriz write FcidadeMatriz;
    property cnpj_filial : string read Fcnpj_filial write Fcnpj_filial;
    property codigo_filial : string read Fcodigo_filial write Fcodigo_filial;
    property serie_documento : string read Fserie_documento write Fserie_documento;
    property documento : string read Fdocumento write Fdocumento;
    property datasaida : TdateTime read Fdatasaida write Fdatasaida;
    property quantidade : extended read Fquantidade write Fquantidade;
    property valorNotaFiscal : extended read FvalorNotaFiscal write FvalorNotaFiscal;
    property valorSaldo : extended read FvalorSaldo write FvalorSaldo;
    property valorAdiantamento : extended read FvalorAdiantamento write FvalorAdiantamento;
    property valorTotalMotorista : extended read FvalorTotalMotorista write FvalorTotalMotorista;
    property valorFreteMotorista : extended read FvalorFreteMotorista write FvalorFreteMotorista;
    property valorDocumento : extended read FvalorDocumento write FvalorDocumento;
    property pesoSaida : extended read FpesoSaida write FpesoSaida;
    property descricaoCarga : string read FdescricaoCarga write FdescricaoCarga;
    property valorINSS : extended read FvalorINSS write FvalorINSS;
    property BaseINSS : extended read FBaseINSS write FBaseINSS;
    property AliquotaINSS : extended read FAliquotaINSS write FAliquotaINSS;
    property BaseSestSenat : extended read FBaseSestSenat write FBaseSestSenat;
    property valorSest : extended read FvalorSest write FvalorSest;
    property AliquotaSest : extended read FAliquotaSest write FAliquotaSest;
    property valorSenat : extended read FvalorSenat write FvalorSenat;
    property AliquotaSenat : extended read FAliquotaSenat write FAliquotaSenat;
    property valorIRRF : extended read FvalorIRRF write FvalorIRRF;
    property BaseIRRF : extended read FBaseIRRF write FBaseIRRF;
    property AliquotaIRRF : extended read FAliquotaIRRF write FAliquotaIRRF;
    property cliente_Origem : string read Fcliente_Origem write Fcliente_Origem;
    property cliente_Destino : string read Fcliente_Destino write Fcliente_Destino;
    property numeroCartaoFrete : string read FnumeroCartaoFrete write FnumeroCartaoFrete;
    property numeroContratoFrete : string read FnumeroContratoFrete write FnumeroContratoFrete;
    property tipoPagamentoContratoFrete : string read FtipoPagamentoContratoFrete write FtipoPagamentoContratoFrete;
    property formaPagamentoDocumento : string read FformaPagamentoDocumento write FformaPagamentoDocumento;
    property observacoes : string read Fobservacoes write Fobservacoes;
    property NCM : string read FNCM write FNCM;
    property Usuario : string read FUsuario write FUsuario;
    property Telefone_empresa : string read FTelefone_empresa write FTelefone_empresa;
    property TipoTolerancia : string read FTipoTolerancia write FTipoTolerancia;
    property PercentualTolerancia : extended read FPercentualTolerancia write FPercentualTolerancia;

    property TipoOperacaoTransporte : string read FTipoOperacaoTransporte write FTipoOperacaoTransporte;
    property ProprietarioDaCarga : string read FProprietarioDaCarga write FProprietarioDaCarga;

    property reg0001 : TTXTFilhos read Freg0001;

    property reg0100 : TTXTFilhos read Freg0100;
    property reg0200 : TTXTFilhos read Freg0200;
    property reg0300 : TTXTFilhos read Freg0300;
    property reg0400 : TTXTFilhos read Freg0400;
    property reg0500 : TTXTFilhos read Freg0500; // informações do portador do cartão #T5193
    property reg0600 : TTXTFilhos read Freg0600; //#T10752
    property reg1000 : TTXTFilhos read Freg1000;
    property reg2000 : TTXTFilhos read Freg2000;
    property reg3000 : TTXTFilhos read Freg3000;
    property reg4000 : TTXTFilhos read Freg4000;
    property reg5000 : TTXTFilhos read Freg5000;
    property reg7000 : TTXTFilhos read Freg7000;

    property reg9999 : TTXTFilhos read Freg9999;

    function add0001 : T0001;
    function add0100 : T0100;
    function add0200 : T0200;
    function add0300 : T0300;
    function add0400 : T0400;
    function add0500 : T0500; {#T5193}
    function add0600 : T0600; {#T10752}
    function add1000 : T1000;
    function add2000 : T2000;
    function add3000 : T3000;
    function add4000 : T4000;
    function add5000 : T5000;
    function add7000 : T7000;
    function add9999 : T9999;

  end;


implementation

uses Classes, SysUtils;


{ TContrato_0000 }

function TContrato_0000.add0100: T0100;
begin
   result := T0100.create;
   Freg0100.add( result );
end;

function TContrato_0000.add0200: T0200;
begin
   result := T0200.create;
   Freg0200.add( result );
end;

function TContrato_0000.add0300: T0300;
begin
   result := T0300.create;
   Freg0300.add( result );
end;

function TContrato_0000.add1000: T1000;
begin
   result := T1000.create;
   Freg1000.add( result );
end;

function TContrato_0000.add2000: T2000;
begin
   result := T2000.create;
   Freg2000.add( result );
end;

function TContrato_0000.add3000: T3000;
begin
   result := T3000.create;
   Freg3000.add( result );
end;

function TContrato_0000.add4000: T4000;
begin
   result := T4000.create;
   Freg4000.add( result );
end;

function TContrato_0000.add5000: T5000;
begin
   result := T5000.create;
   Freg5000.add( result );
end;

function TContrato_0000.add0400: T0400;
begin
   result := T0400.create;
   Freg0400.add( result );
end;

function TContrato_0000.add7000: T7000;
begin
   result := T7000.create;
   Freg7000.add( result );
end;

constructor TContrato_0000.create;
begin
   inherited;
    FRegistro := '0000';
    Fversao   := '1.01';
    Freg9999:= TTXTFilhos.create;
    Freg7000:= TTXTFilhos.create;
    Freg4000:= TTXTFilhos.create;
    Freg5000:= TTXTFilhos.create;
    Freg0400:= TTXTFilhos.create;
    Freg2000:= TTXTFilhos.create;
    Freg3000:= TTXTFilhos.create;
    Freg1000:= TTXTFilhos.create;
    Freg0300:= TTXTFilhos.create;
    Freg0200:= TTXTFilhos.create;
    Freg0100:= TTXTFilhos.create;
    Freg0001:= TTXTFilhos.Create;
    Freg0500:= TTXTFilhos.create; {#T5193 }
    Freg0600:= TTXTFilhos.create; {#T10752 }
end;

destructor TContrato_0000.destroy;
begin
    Freg9999.free;
    Freg7000.free;
    Freg4000.free;
    Freg5000.free;
    Freg2000.free;
    Freg3000.free;
    Freg1000.free;
    Freg0500.free; {#T5193}
    Freg0400.free;
    Freg0300.free;
    Freg0200.free;
    Freg0100.free;
    Freg0001.free;
    Freg0600.free; {#T10752}
   inherited;
end;

function TContrato_0000.add9999: T9999;
begin
   result := T9999.create;
   Freg9999.add( result );
end;

function TContrato_0000.add0001: T0001;
begin
   result := T0001.create;
   Freg0001.add( result );
end;

function TContrato_0000.add0500: T0500;
begin
   result := T0500.create;
   Freg0500.add( result );
end;

function TContrato_0000.add0600: T0600;
begin
   result := T0600.create;
   Freg0600.add( result );
end;

{ T1000 }

constructor T1000.create;
begin
   inherited;
   FRegistro := '1000';
   Fversao   := '1.00';
end;

{ T2000 }

function T2000.add2100: T2100;
begin
   result := T2100.create;
   Freg2100.add( result ); 
end;

constructor T2000.create;
begin
   inherited;
   FRegistro := '2000';
   Fversao   := '1.00';
   FReg2100 := TTXTFilhos.create;
end;

destructor T2000.destroy;
begin
   FReg2100.Free;
   inherited;
end;

{ T2100 }

constructor T2100.create;
begin
   inherited;
  FRegistro := '2100';
   Fversao   := '1.00';
end;

function T2100.RUF_Origem: string;
begin
  Result := FUF_Origem;
end;

{ T3000 }

constructor T3000.create;
begin
   inherited;
  FRegistro :='3000';
   Fversao   := '1.00';
end;

{ T4000 }

constructor T4000.create;
begin
   inherited;
   FRegistro := '4000';
   Fversao   := '1.00';
end;

{ T5000 }

function T5000.add5100: T5100;
begin
   result := T5100.create;
   Freg5100.Add( result );
end;

function T5000.add5200: T5200;
begin
   result := T5200.create;
   Freg5200.Add( result );
end;

constructor T5000.create;
begin
   inherited;
   FRegistro := '5000';
   Fversao   := '1.01';
   FversaoCompativel := '1.00;1.01;1.02;1.03';
   Freg5100 := TTXTFilhos.create;
   Freg5200 := TTXTFilhos.create;
end;

destructor T5000.destroy;
begin
   reg5100.Free;
   reg5200.Free;
   inherited;
end;

{ T5100 }

constructor T5100.create;
begin
   inherited;
  FRegistro := '5100';
   Fversao   := '1.00';
end;

{ T5221 }

constructor T5221.create;
begin
   inherited;
  Fregistro := '5221';
   Fversao   := '1.00';
end;

{ T5220 }

function T5220.add5221: T5221;
begin
  Result := T5221.create;
  Freg5221.Add( result );
end;

constructor T5220.create;
begin
   inherited;
  Freg5221 := TTXTFilhos.Create;
  FRegistro := '5220';
   Fversao   := '1.00';
end;

destructor T5220.destroy;
begin
  Freg5221.Free;
   inherited;
end;

{ T5210 }

constructor T5210.create;
begin
   inherited;
  FRegistro := '5210';
   Fversao   := '1.00';
end;

{ T5200 }

function T5200.add5210: T5210;
begin
  Result := T5210.create;
  Freg5210.Add( result );
end;

function T5200.add5220: T5220;
begin
  Result := T5220.create;
  Freg5220.Add( result );
end;

constructor T5200.create;
begin
   inherited;
  FRegistro := '5200';
  Fversao   := '1.00';
  Freg5210 := TTXTFilhos.Create;
  Freg5220 := TTXTFilhos.Create;
end;

destructor T5200.Destroy;
begin
  Freg5210.free;
  Freg5220.Free;
   inherited;
end;

{ T0400 }

constructor T0400.create;
begin
   inherited;
   FRegistro := '0400';
   Fversao := '1.00';
end;

{ T7000 }

constructor T7000.create;
begin
   inherited;
   FRegistro := '7000';
   Fversao := '1.00';
end;

{ T0100 }

constructor T0100.create;
begin
   inherited;
   FRegistro := '0100';
   Fversao := '1.00';
end;

{ T0200 }

constructor T0200.create;
begin
   inherited;
   FRegistro := '0200';
   Fversao := '1.00';
end;

{ T0300 }

constructor T0300.create;
begin
   inherited;
   FRegistro := '0300';
   Fversao := '1.00';
end;

{ T9999 }

constructor T9999.create;
begin
   inherited;
  FRegistro := '9999';
  Fversao   := '1.00';
end;

{ T0001 }

constructor T0001.create;
begin
   inherited;
  FRegistro := '0001';
  Fversao   := '1.00';
end;

{ T0500 }

constructor T0500.create;
begin
   inherited;
  FRegistro := '0500';
  Fversao   := '1.00';
end;

procedure T0500.Setcelular(const Value: string);
begin
  Fcelular := Value;
end;

procedure T0500.Setcelular_operadora(const Value: string);
begin
  if (value = '1') or
     (value = '2') or
     (value = '3') or
     (value = '4') or
     (value = '5') or
     (value = '6') or
     (value = '7') or
     (value = '8') or
     (value = '9') or
     (value = '10') then
     Fcelular_operadora := Value
  else
     raise Exception.create('valores válidos para operadora de celular: 1 AMAZONIA CELULAR 2 BRASIL TELECOM 3 CERCOMTEL 4 CLARO 5 CTBC 6 OI 7 TELEMIG 8 TIM 9 VIVO 10 NEXTEL');
end;

procedure T0500.SetCNPJ_CPF(const Value: string);
begin
  FCNPJ_CPF := Value;
end;

procedure T0500.Setdata_nascimento(const Value: TDatetime);
begin
  Fdata_nascimento := Value;
end;

procedure T0500.Setemail(const Value: string);
begin
  Femail := Value;
end;

procedure T0500.Setempresa_cnpj(const Value: string);
begin
  Fempresa_cnpj := Value;
end;

procedure T0500.Setempresa_nome(const Value: string);
begin
  Fempresa_nome := Value;
end;

procedure T0500.Setempresa_rntrc(const Value: string);
begin
  Fempresa_rntrc := Value;
end;

procedure T0500.Setendereco(const Value: string);
begin
  Fendereco := Value;
end;

procedure T0500.Setendereco_bairro(const Value: string);
begin
  Fendereco_bairro := Value;
end;

procedure T0500.Setendereco_cep(const Value: string);
begin
  Fendereco_cep := Value;
end;

procedure T0500.Setendereco_cidade(const Value: string);
begin
  Fendereco_cidade := Value;
end;

procedure T0500.Setendereco_complemento(const Value: string);
begin
  Fendereco_complemento := Value;
end;


procedure T0500.Setendereco_pais(const Value: string);
begin
  Fendereco_pais := Value;
end;

procedure T0500.Setendereco_propriedade_tipo(const Value: String);
begin
  Fendereco_propriedade_tipo := Value;
end;

procedure T0500.Setendereco_reside_desde(const Value: TDatetime);
begin
  Fendereco_reside_desde := Value;
end;

procedure T0500.Setendereco_uf(const Value: string);
begin
  Fendereco_uf := Value;
end;

procedure T0500.Setnacionalidade(const Value: string);
begin
  Fnacionalidade := Value;
end;

procedure T0500.Setnaturalidade_ibge(const Value: string);
begin
  Fnaturalidade_ibge := Value;
end;

procedure T0500.Setnome(const Value: string);
begin
  Fnome := Value;
end;

procedure T0500.Setrg(const Value: string);
begin
  Frg := Value;
end;

procedure T0500.Setrg_data_emissao(const Value: TDatetime);
begin
  Frg_data_emissao := Value;
end;

procedure T0500.Setrg_emissor(const Value: string);
begin
  if (value = '1') or
     (value = '2') or
     (value = '3') or
     (value = '4') or
     (value = '5') or
     (value = '6') or
     (value = '7') or
     (value = '8') or
     (value = '9') or
     (value = '10') or
     (value = '11') then
     Frg_emissor := Value
  else
     raise exception.create('1 Secretaria de Segurança Pública SSP '+
                                   '2 Carteira Nacional de Habilitação CNH '+
                                   '3 Ministério da Marinha MMA '+
                                   '4 Diretoria de Identificação Civil DIC '+
                                   '5 Polícia Federal POF '+
                                   '6 Instituto Félix Pacheco IFP '+
                                   '7 Polícia Militar POM '+
                                   '8 Instituto Pereira Faustino IPF '+
                                   '9 Carteira de Estrangeiro SES '+
                                   '10 Ministério da Aeronáutica MAE '+
                                   '11 Ministério do Exército MEX ');
end;

procedure T0500.Setrg_uf(const Value: string);
begin
  Frg_uf := Value;
end;

procedure T0500.Setrntrc(const Value: string);
begin
  Frntrc := Value;
end;

procedure T0500.Setsexo(const Value: string);
begin
  Fsexo := Value;
end;

procedure T0500.Settelefone(const Value: string);
begin
  Ftelefone := Value;
end;

{ T0600 }

constructor T0600.create;
begin
  inherited;
  FRegistro := '0600';
  Fversao   := '1.00';
end;

end.
