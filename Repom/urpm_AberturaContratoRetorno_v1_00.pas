unit urpm_AberturaContratoRetorno_v1_00;

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

   {retorno}
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
    Frelacao_quitacao: string;
    Frelacao_abastecimento: string;
    Fciot: string;
    Fobservacao: string;
    Fvalor_pedagio: string;
   published
     property percurso_descricao : string read Fpercurso_descricao write Fpercurso_descricao;
     property operacao_descricao : string read Foperacao_descricao write Foperacao_descricao;
     property cartao_codigo : string read Fcartao_codigo write Fcartao_codigo;
     property valor_frete : string read Fvalor_frete write Fvalor_frete;
     property valor_adiantamento : string read Fvalor_adiantamento write Fvalor_adiantamento;
     property valor_combustivel : string read Fvalor_mercadoria write Fvalor_mercadoria;
     property valor_mercadoria : string read Fvalor_mercadoria write Fvalor_mercadoria;
     property peso : string read Fpeso write Fpeso;
     property relacao_abastecimento : string read Frelacao_abastecimento write Frelacao_abastecimento;
     property relacao_quitacao : string read Frelacao_quitacao write Frelacao_quitacao;
     property observacao : string read Fobservacao write Fobservacao;
     property ciot : string read Fciot write Fciot;
     property valor_pedagio : string read Fvalor_pedagio write Fvalor_pedagio; 
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


   tprocesso_transporte = class( TRemotable )
  private
    Fprocesso_cliente_filial_codigo_cliente: string;
    Ffilial_descricao: string;
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


{ tdocumentos_integrados }



{ tdados_contratado }

{ tdados_carga }


{ tdados_frete }

{ tmovimento }

{ tprocesso_transporte }


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

{ tprocesso_transporte }

{ tquitacao }

destructor tquitacao.destroy;
var
  vii : integer;
begin
   for vii:=0 to length( Fitens_quitacao ) -1 do Fitens_quitacao[vii].Free;
end;

{ tprocesso_transporte }

constructor tprocesso_transporte.create;
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

destructor tprocesso_transporte.destroy;
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


{ tnfs }


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
