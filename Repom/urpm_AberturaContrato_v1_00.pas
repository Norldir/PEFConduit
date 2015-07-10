unit urpm_AberturaContrato_v1_00;

interface
uses
   Classes, InvokeRegistry,
   urpm_Cadastros_v1_00;

type

   Tinconsistencia = class( TRemotable )
   private
    FCodigo: string;
    FDescricao: string;
   published
      property codigo : string read FCodigo write FCodigo;
      property descricao : string read FDescricao write FDescricao;
   end;
   Tinconsistencia_lista = array of Tinconsistencia;

   Tinconsistencias = class( TRemotable )
  private
    Finconsistencia: Tinconsistencia_lista;
  public
     destructor destroy; 
   published
      property inconsistencia : Tinconsistencia_lista read Finconsistencia write Finconsistencia;
      function addinconsistencia : Tinconsistencia;
   end;

   Troteiro_codigo = class( TRemotable )
   end;

   Tpercurso_codigo  = class( TRemotable )
   end;

   Tdados_operacionais = class( TRemotable )
   private
    Fusuario: string;
    Ffilial_codigo_cliente: string;
    Fprocesso_cliente_codigo: string;
    Fcartao_codigo: string;
    Froteiro_ida_volta: string;
    Fsolicitacao_roteiro_codigo: string;
    Foperacao_codigo: string;
    Fpercurso_codigo: Tpercurso_codigo;
    Froteiro_codigo: Troteiro_codigo;
   public
     constructor create;
     destructor destroy;
   published
     property operacao_codigo	: string read Foperacao_codigo write Foperacao_codigo;
     property solicitacao_roteiro_codigo : string read Fsolicitacao_roteiro_codigo write Fsolicitacao_roteiro_codigo;
     property roteiro_codigo  : Troteiro_codigo  read Froteiro_codigo  write Froteiro_codigo;
     property percurso_codigo  : Tpercurso_codigo  read Fpercurso_codigo  write Fpercurso_codigo ;
     property roteiro_ida_volta	: string read Froteiro_ida_volta write Froteiro_ida_volta;
     property filial_codigo_cliente	: string read Ffilial_codigo_cliente write Ffilial_codigo_cliente;
     property processo_cliente_codigo	: string read Fprocesso_cliente_codigo write Fprocesso_cliente_codigo;
     property cartao_codigo : string read Fcartao_codigo write Fcartao_codigo;
     property usuario : string read Fusuario write Fusuario;
   end;

   tconfiguracoes_viagem = class( TRemotable )
   private
    Fhora_saida: string;
    Fdata_saida: string;
   published
     property data_saida : string read Fdata_saida write Fdata_saida;
     property hora_saida : string read Fhora_saida write Fhora_saida;
   end;

   tnf = class( TRemotable )
   private
    Fnf_serie: string;
    Fnf_codigo: string;
    Fnf_remetente_cnpj: string;
    Fnf_destinatario_cnpj: string;
    Fnf_remetente_razao: string;
    Fnf_destinatario_razao: string;
   published
      property nf_codigo : string read Fnf_codigo write Fnf_codigo;
      property nf_serie : string read Fnf_serie write Fnf_serie;
      property nf_remetente_cnpj : string read Fnf_remetente_cnpj write Fnf_remetente_cnpj;
      property nf_remetente_razao : string read Fnf_remetente_razao write Fnf_remetente_razao;
      property nf_destinatario_cnpj : string read Fnf_destinatario_cnpj write Fnf_destinatario_cnpj;
      property nf_destinatario_razao : string read Fnf_destinatario_razao write Fnf_destinatario_razao;
   end;
   tnf_array = array of tnf;

   tnfs = class( TRemotable )
   private
    Fnfs: tnf_Array;
   public
      destructor destroy;
      function AddNF : tnf;
   published
      property nf : tnf_Array read Fnfs write Fnfs;
   end;

   tconhecimento = class( TRemotable )
   private
    Fctrc_filial_codigo_cliente: string;
    Fctrc_serie: string;
    Fdocumento_tipo: string;
    Fctrc_codigo: string;
    Fnfs: tnfs;
   public
      constructor create;
      destructor destroy;
   published
      property ctrc_codigo : string read Fctrc_codigo write Fctrc_codigo;
      property ctrc_serie : string read Fctrc_serie write Fctrc_serie;
      property ctrc_filial_codigo_cliente : string read Fctrc_filial_codigo_cliente write Fctrc_filial_codigo_cliente;
      property documento_tipo : string read Fdocumento_tipo write Fdocumento_tipo;
      property nfs : tnfs read Fnfs write Fnfs;
   end;
   tconhecimentos_Array    = array of tconhecimento;

   tconhecimentos = class( TRemotable )
   private
    Fconhecimentos: tconhecimentos_Array;
   public
      destructor destroy;
      function AddConhecimentos : tconhecimento;
   published
      property conhecimento : tconhecimentos_Array read Fconhecimentos write Fconhecimentos;
   end;

   tdocumentos_integrados = class( TRemotable )
   private
      Fconhecimentos: tconhecimentos;
   public
      constructor create;
      destructor destroy;
   published
      property conhecimentos : tconhecimentos read Fconhecimentos write Fconhecimentos;
   end;

   tdados_contratado = class( TRemotable )
   private
    Fcavalo_placa: string;
    Fcarreta_numero_eixos: string;
    Fmotorista_cpf: string;
    Fcarreta_rntrc: string;
    Fcarreta_placa: string;
    Fcontratado_cnpj_cpf: string;
   published
     property contratado_cnpj_cpf : string read Fcontratado_cnpj_cpf write Fcontratado_cnpj_cpf;
     property motorista_cpf : string read Fmotorista_cpf write Fmotorista_cpf;
     property cavalo_placa : string read Fcavalo_placa write Fcavalo_placa;
     property carreta_placa : string read Fcarreta_placa write Fcarreta_placa;
     property carreta_rntrc : string read Fcarreta_rntrc write Fcarreta_rntrc;
     property carreta_numero_eixos : string read Fcarreta_numero_eixos write Fcarreta_numero_eixos;
   end;

   tdados_carga = class( TRemotable )
   private
    Fcarga_valor: string;
    Fcarga_peso: string;
    Fantt_ncm_codigo_classificacao_mercadoria: string;
    Fcarga_volume: string;
   published
     property antt_ncm_codigo_classificacao_mercadoria : string read Fantt_ncm_codigo_classificacao_mercadoria write Fantt_ncm_codigo_classificacao_mercadoria;
     property carga_peso : string read Fcarga_peso write Fcarga_peso;
     property carga_volume : string read Fcarga_volume write Fcarga_volume;
     property carga_valor : string read Fcarga_valor write Fcarga_valor;
   end;

   tdados_frete = class( TRemotable )
   private
    Fvalor_adiantamento: string;
    Fvalor_frete: string;
   published
     property valor_frete : string read Fvalor_frete write Fvalor_frete;
     property valor_adiantamento : string read Fvalor_adiantamento write Fvalor_adiantamento;
   end;

   tmovimento = class( TRemotable )
   private
    Fmovimento_codigo_cliente: string;
    Fvalor: string;
   published
     property movimento_codigo_cliente : string read Fmovimento_codigo_cliente write Fmovimento_codigo_cliente;
     property valor : string read Fvalor write Fvalor;
   end;
   tmovimento_array = array of tmovimento;

   tmovimentos = class( TRemotable )
   private
    Fmovimento: tmovimento_array;
   public
     constructor create; override;
     destructor destroy;
     function addmovimento : tmovimento;
   published
     property movimento : tmovimento_array read Fmovimento write Fmovimento;
   end;



   tprocesso_transporte = class( TRemotable )
   private
    Fconfiguracoes_viagem: tconfiguracoes_viagem;
    Fdados_carga: tdados_carga;
    Fdados_contratado: tdados_contratado;
    Fdados_frete: tdados_frete;
    Fdados_operacionais: Tdados_operacionais;
    Fdocumentos_integrados: tdocumentos_integrados;
    Fmovimentos: tmovimentos;
   public
     constructor create; override;
     destructor destroy;
   published
     property dados_operacionais : Tdados_operacionais read Fdados_operacionais write Fdados_operacionais;
     property configuracoes_viagem : tconfiguracoes_viagem read Fconfiguracoes_viagem write Fconfiguracoes_viagem;
     property documentos_integrados	: tdocumentos_integrados read Fdocumentos_integrados write Fdocumentos_integrados;
     property dados_contratado : tdados_contratado read Fdados_contratado write Fdados_contratado;
     property dados_carga : tdados_carga read Fdados_carga write Fdados_carga;
     property dados_frete : tdados_frete read Fdados_frete write Fdados_frete;
     property movimentos : tmovimentos read Fmovimentos write Fmovimentos;
   end;


   {retorno}

   tcontratado = class( TRemotable )
  private
    Fcontratado_nome: string;
    Fcontratado_cnpj_cpf: string;
    Fcep: string;
   published
     property contratado_cnpj_cpf : string read Fcontratado_cnpj_cpf write Fcontratado_cnpj_cpf;
     property contratado_nome : string read Fcontratado_nome write Fcontratado_nome;
     property cep : string read Fcep write Fcep;
   end;

   tmotorista = class( TRemotable )
  private
    Fmotorista_nome: string;
    Fmotorista_cpf: string;
    Fcarteira_habilitacao: string;
   published
     property motorista_cpf : string read Fmotorista_cpf write Fmotorista_cpf;
     property motorista_nome : string read Fmotorista_nome write Fmotorista_nome;
     property carteira_habilitacao : string read Fcarteira_habilitacao write Fcarteira_habilitacao;
   end;

   tcavalo = class( TRemotable )
  private
    Fplaca: string;
   published
     property placa : string read Fplaca write Fplaca;
   end;

   tcarreta = class( TRemotable )
  private
    Fplaca: string;
   published
     property placa : string read Fplaca write Fplaca;
   end;

   tdados_viagem = class( TRemotable )
  private
    Fpeso: string;
    Fvalor_adiantamento: string;
    Fvalor_mercadoria: string;
    Fpercurso_descricao: string;
    Fvalor_frete: string;
    Foperacao_descricao: string;
    Fcartao_codigo: string;
   published
     property percurso_descricao : string read Fpercurso_descricao write Fpercurso_descricao;
     property operacao_descricao : string read Foperacao_descricao write Foperacao_descricao;
     property cartao_codigo : string read Fcartao_codigo write Fcartao_codigo;
     property valor_frete : string read Fvalor_frete write Fvalor_frete;
     property valor_adiantamento : string read Fvalor_adiantamento write Fvalor_adiantamento;
     property valor_mercadoria : string read Fvalor_mercadoria write Fvalor_mercadoria;
     property peso : string read Fpeso write Fpeso;
   end;

   tdocumento = class( TRemotable )
  private
    Fserie: string;
    Fcodigo: string;
    Ffilial_codigo_cliente: string;
   published
     property codigo : string read Fcodigo write Fcodigo;
     property serie : string read Fserie write Fserie;
     property filial_codigo_cliente : string read Ffilial_codigo_cliente write Ffilial_codigo_cliente;
   end;
   tdocumentos = array of tdocumento;

   tpassagem = class( TRemotable )
  private
    Fcidade: string;
    Fendereco: string;
    Fposto_cnpj: string;
    Fbandeira: string;
    Fnome_fantasia: string;
    Festado: string;
    Fpreco_diesel: string;
    Ftelefone: string;
   published
     property nome_fantasia : string read Fnome_fantasia write Fnome_fantasia;
     property bandeira : string read Fbandeira write Fbandeira;
     property endereco : string read Fendereco write Fendereco;
     property cidade : string read Fcidade write Fcidade;
     property estado : string read Festado write Festado;
     property telefone : string read Ftelefone write Ftelefone;
     property preco_diesel : string read Fpreco_diesel write Fpreco_diesel;
     property posto_cnpj : string read Fposto_cnpj write Fposto_cnpj;
   end;
   tpassagens = array of tpassagem;

   titem_quitacao = class( TRemotable )
  private
    Fitem_descricao: string;
   published
     property item_descricao : string read Fitem_descricao write Fitem_descricao;
   end;
   titens_quitacao = array of titem_quitacao;


   tquitacao = class( TRemotable )
  private
    Fpreco_diesel: string;
    Fendereco: string;
    Fquitacao_data_prevista: string;
    Fcidade: string;
    Fbandeira: string;
    Fquitacao_local_descricao: string;
    Festado: string;
    Fcnpj: string;
    Ftelefone: string;
    Fitens_quitacao: titens_quitacao;
   public
     destructor destroy;
   published
     property quitacao_local_descricao : string read Fquitacao_local_descricao write Fquitacao_local_descricao;
     property quitacao_data_prevista : string read Fquitacao_data_prevista write Fquitacao_data_prevista;
     property bandeira : string read Fbandeira write Fbandeira;
     property endereco : string read Fendereco write Fendereco;
     property cidade : string read Fcidade write Fcidade;
     property estado : string read Festado write Festado;
     property telefone : string read Ftelefone write Ftelefone;
     property preco_diesel : string read Fpreco_diesel write Fpreco_diesel;
     property cnpj : string read Fcnpj write Fcnpj;
     property itens_quitacao : titens_quitacao read Fitens_quitacao write Fitens_quitacao;
   end;

   textincao_penalidade_clausula = class( Tremotable )
  private
    Fdescricao: string;
   published
     property descricao : string read Fdescricao write Fdescricao;
   end;
   textincao_penalidade_clausulas = array of textincao_penalidade_clausula;


   tprocesso_transporte_retorno = class( TRemotable )
  private
    Fprocesso_cliente_filial_codigo_cliente: string;
    Ffilial_descricao: string;
    Fciot: string;
    Fdata_emissao: string;
    Fprocesso_transporte_codigo: string;
    Fprocesso_cliente_codigo: string;
    Fcarreta: tcarreta;
    Fcavalo: tcavalo;
    Fcontratado: tcontratado;
    Fdados_viagem: tdados_viagem;
    Fdocumentos: tdocumentos;
    Fextincao_penalidade_clausulas: Textincao_penalidade_clausulas;
    Fmotorista: tmotorista;
    Fmovimentos: tmovimentos;
    Fpassagens: tpassagens;
    Fquitacao: tquitacao;
   public
     constructor create; override;
     destructor destroy;
   published
     property processo_transporte_codigo : string read Fprocesso_transporte_codigo write Fprocesso_transporte_codigo;
     property processo_cliente_codigo : string read Fprocesso_cliente_codigo write Fprocesso_cliente_codigo;
     property processo_cliente_filial_codigo_cliente : string read Fprocesso_cliente_filial_codigo_cliente write Fprocesso_cliente_filial_codigo_cliente;
     property filial_descricao : string read Ffilial_descricao write Ffilial_descricao;
     property data_emissao : string read Fdata_emissao write Fdata_emissao;
     property contratado : tcontratado read Fcontratado write Fcontratado;
     property motorista	: tmotorista read Fmotorista write Fmotorista;
     property cavalo : tcavalo read Fcavalo write Fcavalo;
     property carreta	: tcarreta read Fcarreta write Fcarreta;
     property dados_viagem : tdados_viagem read Fdados_viagem write Fdados_viagem;
     property ciot : string read Fciot write Fciot;
     property movimentos : tmovimentos read Fmovimentos write Fmovimentos;
     property documentos : tdocumentos read Fdocumentos write Fdocumentos;
     property passagens : tpassagens read Fpassagens write Fpassagens;
     property quitacao : tquitacao read Fquitacao write Fquitacao;
     property extincao_penalidade_clausulas	: Textincao_penalidade_clausulas read Fextincao_penalidade_clausulas write Fextincao_penalidade_clausulas;
   end;

implementation

{ Tdados_operacionais }




{ tconfiguracoes_viagem }

{ tnf }

{ tconhecimento }

constructor tconhecimento.create;
begin
   nfs := tnfs.Create;
end;

destructor tconhecimento.destroy;
begin
    nfs.free;
end;

{ tdocumentos_integrados }


constructor tdocumentos_integrados.create;
begin
   Fconhecimentos:= tconhecimentos.create;
end;

destructor tdocumentos_integrados.destroy;
begin
   Fconhecimentos.Free;
end;


{ tdados_contratado }

{ tdados_carga }


{ tdados_frete }

{ tmovimento }

{ tprocesso_transporte }

constructor tprocesso_transporte.create;
begin
  inherited;
  dados_operacionais := Tdados_operacionais.create;
  configuracoes_viagem := tconfiguracoes_viagem.create;
  documentos_integrados	:= tdocumentos_integrados.create;
  dados_contratado := tdados_contratado.create;
  dados_carga := tdados_carga.create;
  dados_frete := tdados_frete.create;
  movimentos := tmovimentos.create;
end;

destructor tprocesso_transporte.destroy;
begin
  dados_operacionais.free;
  configuracoes_viagem.free;
  documentos_integrados.free;
  dados_contratado.free;
  dados_carga.free;
  dados_frete.free;
  movimentos.free;
end;

{ tcontratado }

{ tmotorista }

{ tcavalo }

{ tcarreta }

{ tdados_viagem }

{ tdocumento }

{ tpassagem }

{ titem_quitacao }

{ tquitacao }

{ textincao_penalidade_clausula }

{ tprocesso_transporte_retorno }

{ tquitacao }

destructor tquitacao.destroy;
var
  vii : integer;
begin
   for vii:=0 to length( Fitens_quitacao ) -1 do Fitens_quitacao[vii].Free;
end;

{ tprocesso_transporte_retorno }

constructor tprocesso_transporte_retorno.create;
begin
  inherited;
  contratado := tcontratado.Create;
  motorista	:= tmotorista.create;
  cavalo := tcavalo.create;
  carreta	:= tcarreta.create;
  dados_viagem := tdados_viagem.create;
  quitacao := tquitacao.create;
  movimentos := Tmovimentos.create;
end;

destructor tprocesso_transporte_retorno.destroy;
var
  vii : integer;
begin
   for vii:=0 to length( Fdocumentos ) -1 do Fdocumentos[vii].Free;
   for vii:=0 to length( Fpassagens ) -1 do Fpassagens[vii].Free;
   for vii:=0 to length( Fextincao_penalidade_clausulas ) -1 do Fextincao_penalidade_clausulas[vii].Free;

  contratado.free;
  motorista.free;
  cavalo.free;
  carreta.free;
  dados_viagem.free;
  quitacao.free;
  movimentos.Free;
end;

{ tconhecimentos }

function tconhecimentos.AddConhecimentos: tconhecimento;
begin
   SetLength( Fconhecimentos, length( Fconhecimentos) + 1);
   result := tconhecimento.create;
   Fconhecimentos[ length( Fconhecimentos ) - 1] := result;
end;

destructor tconhecimentos.destroy;
var
  vii : integer;
begin
    for vii:=0 to length( Fconhecimentos ) -1 do Fconhecimentos[vii].Free;
end;

{ tnfs }

function tnfs.AddNF: tnf;
begin
   SetLength( Fnfs, length( Fnfs) + 1);
   result := tnf.create;
   Fnfs[ length( Fnfs ) - 1] := result;
end;

destructor tnfs.destroy;
var
  vii : integer;
begin
    for vii:=0 to length( Fnfs ) -1 do Fnfs[vii].Free;
end;

{ tmovimentos }

function tmovimentos.addmovimento: tmovimento;
begin
   SetLength( Fmovimento, length( Fmovimento) + 1);
   result := tmovimento.create;
   Fmovimento[ length( Fmovimento ) - 1] := result;
end;

constructor tmovimentos.create;
begin
  inherited;

end;

destructor tmovimentos.destroy;
var
  vii : integer;
begin
   for vii:=0 to length( Fmovimento ) -1 do Fmovimento[vii].Free;
end;

{ Tdados_operacionais }

constructor Tdados_operacionais.create;
begin
    Fpercurso_codigo:= Tpercurso_codigo.create;
    Froteiro_codigo:= Troteiro_codigo.create;
end;

destructor Tdados_operacionais.destroy;
begin
    Fpercurso_codigo.free;
    Froteiro_codigo.Free;
end;

{ Tinconsistencias }

function Tinconsistencias.addinconsistencia: Tinconsistencia;
begin
   SetLength( Finconsistencia, length( Finconsistencia) + 1);
   result := Tinconsistencia.create;
   Finconsistencia[ length( Finconsistencia ) - 1] := result;
end;

destructor Tinconsistencias.destroy;
var
  vii : integer;
begin
    for vii:=0 to length( Finconsistencia ) -1 do Finconsistencia[vii].Free;
end;

end.
