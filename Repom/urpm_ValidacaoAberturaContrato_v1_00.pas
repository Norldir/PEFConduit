unit urpm_ValidacaoAberturaContrato_v1_00;

interface
uses
   Classes, InvokeRegistry,
   urpm_Cadastros_v1_00;

type

  Tvia = class( TRemotable )
  private
    Fvia_descricao: string;
  published
    property via_descricao 	: string read Fvia_descricao write Fvia_descricao;
  end;
  tvias = array of tvia;

  TViasTrecho = class( TRemotable )
  private
    Fvias: Tvias;
  public
    destructor Destroy; 
  published
    property via	: Tvias read Fvias write Fvias;
    function addVia : Tvia;
  end;


  Ttrecho = class( TRemotable )
  private
    Festado_destino: string;
    Fcidade_origem_ibge: string;
    Fcidade_destino_ibge: string;
    Festado_origem: string;
    Fvias: TViasTrecho;
    Fcidade_origem_cep: string;
    Fpercurso_codigo: string;
    Froteiro_codigo_cliente: string;
    Froteiro_codigo: string;
    Fcidade_destino_cep: string;
  public
    constructor create; override;
    destructor destroy;
  published
    property roteiro_codigo 	: string read Froteiro_codigo write Froteiro_codigo;
    property percurso_codigo 	: string read Fpercurso_codigo write Fpercurso_codigo;
    property roteiro_codigo_cliente 	: string read Froteiro_codigo_cliente write Froteiro_codigo_cliente;

    property cidade_origem_ibge 	: string read Fcidade_origem_ibge write Fcidade_origem_ibge;
    property cidade_origem_cep 	: string read Fcidade_origem_cep write Fcidade_origem_cep;
    property estado_origem 	: string read Festado_origem write Festado_origem;
    property cidade_destino_ibge 	: string read Fcidade_destino_ibge write Fcidade_destino_ibge;
    property cidade_destino_cep 	: string read Fcidade_destino_cep write Fcidade_destino_cep;
    property estado_destino 	: string read Festado_destino write Festado_destino;
    property vias	: TViasTrecho read Fvias write Fvias;
  end;
  ttrechos = array of ttrecho;

  TtrechosValidacao = class( TRemotable )
  private
    Ftrechos: Ttrechos;
  public
    destructor destroy;
    constructor create; override;
  published
    property trecho 	: Ttrechos read Ftrechos write Ftrechos;
    function addTrecho : Ttrecho;
  end;


  Tvalida_abertura_contrato = class( TRemotable )
  private
    Fvalor_adiantamento: string;
    Fveiculo_placa: string;
    Fusuario_telefone: string;
    Foperacao: string;
    Fcarreta_placa: string;
    Fmotorista_cpf: string;
    Froteiro_tipo: string;
    Fcartao: string;
    Fida_volta: string;
    Fusuario: string;
    Fcontratado_cnpj_cpf: string;
    Fvalor_frete: string;
    Fveiculo_carreta_eixos: string;
    Ffilial_codigo_cliente: string;
//    Fsolicitacao_roteiro_codigo: string;
    Froteiro_linear: string;
    Fcarreta_rntrc: string;
    Fcavalo_rntrc: string;
    Fantt_ncm_codigo_classificacao_mercadoria: string;
    Fcarta_frete_complementar: string;
    Fcontratado_rntrc: string;
    Ftrechos: TtrechosValidacao;

  public
    destructor destroy;
    constructor create; override;
  published
    property cartao  	: string read Fcartao write Fcartao;
    property contratado_cnpj_cpf 	: string read Fcontratado_cnpj_cpf write Fcontratado_cnpj_cpf;
    property contratado_rntrc 	: string read Fcontratado_rntrc write Fcontratado_rntrc;
    property motorista_cpf 	: string read Fmotorista_cpf write Fmotorista_cpf;

    property cavalo_placa 	: string read Fveiculo_placa write Fveiculo_placa;
    property cavalo_rntrc 	: string read Fcavalo_rntrc write Fcavalo_rntrc;

    property carreta_placa 	: string read Fcarreta_placa write Fcarreta_placa;
    property carreta_rntrc 	: string read Fcarreta_rntrc write Fcarreta_rntrc;

    property veiculo_carreta_eixos 	: string read Fveiculo_carreta_eixos write Fveiculo_carreta_eixos;
    property valor_frete 	: string read Fvalor_frete write Fvalor_frete;
    property valor_adiantamento 	: string read Fvalor_adiantamento write Fvalor_adiantamento;
    property antt_ncm_codigo_classificacao_mercadoria 	: string read Fantt_ncm_codigo_classificacao_mercadoria write Fantt_ncm_codigo_classificacao_mercadoria;
    property operacao 	: string read Foperacao write Foperacao;
    property filial_codigo_cliente 	: string read Ffilial_codigo_cliente write Ffilial_codigo_cliente;
    property usuario 	: string read Fusuario write Fusuario;
    property usuario_telefone 	: string read Fusuario_telefone write Fusuario_telefone;
    property roteiro_tipo 	: string read Froteiro_tipo write Froteiro_tipo;
    property roteiro_linear 	: string read Froteiro_linear write Froteiro_linear;

    property carta_frete_complementar 	: string read Fcarta_frete_complementar write Fcarta_frete_complementar;
    property ida_volta : string read Fida_volta write Fida_volta; 
    property trechos : TtrechosValidacao read Ftrechos write Ftrechos;
  end;

  tcartao_erro = class( Terro);
  tcartao_erros = array of tcartao_erro;

  tcartao = class( TRemotable )
  private
    Fvalor_taxa_ativacao: string;
    Fcobra_taxa_ativacao: string;
    Fcontratado_cnpj_cpf: string;
    Fcontratado_nome: string;
    Fmotorista_nome: string;
    Fmotorista_cpf: string;
    Fcartao_erros: Tcartao_erros;
  public
    destructor destroy;
  published
    property contratado_cnpj_cpf	: string read Fcontratado_cnpj_cpf write Fcontratado_cnpj_cpf;
    property contratado_nome	: string read Fcontratado_nome write Fcontratado_nome;
    property motorista_cpf	: string read Fmotorista_cpf write Fmotorista_cpf;
    property motorista_nome	: string read Fmotorista_nome write Fmotorista_nome;
    property cobra_taxa_ativacao	: string read Fcobra_taxa_ativacao write Fcobra_taxa_ativacao;
    property valor_taxa_ativacao	: string read Fvalor_taxa_ativacao write Fvalor_taxa_ativacao;
    property cartao_erros	: Tcartao_erros read Fcartao_erros write Fcartao_erros;
    function addcartao_erro : tcartao_erro;
  end;

  tsaldo_repom_20 = class( TRemotable )
  private
    Fsaldo_atual: extended;
    Fsaldo_atual_suficiente_emissao_contrato: integer;
  published
    property saldo_atual	: extended read Fsaldo_atual write Fsaldo_atual;
    property saldo_atual_suficiente_emissao_contrato	: integer read Fsaldo_atual_suficiente_emissao_contrato write Fsaldo_atual_suficiente_emissao_contrato;
  end;

  tretorno_antt = class( TRemotable )
  private
    Fvalidado_antt: integer;
    Frntrc_data_validade: TdateTime;
  published
    property validado_antt : integer read Fvalidado_antt write Fvalidado_antt;
    property rntrc_data_validade : TdateTime read Frntrc_data_validade write Frntrc_data_validade;
  end;

  tcontratado_erro = class(Terro);

  tcontratado_erros = array of tcontratado_erro;

  tcontratado_retorno = class( TRemotable )
  private
    Fcontratado_erros: tcontratado_erros;
    Fretorno_antt: tretorno_antt;
  public
    constructor create; override;
    destructor destroy;
  published
    property retorno_antt	: tretorno_antt read Fretorno_antt write Fretorno_antt;
    property contratado_erros	: tcontratado_erros read Fcontratado_erros write Fcontratado_erros;
    function addcontratado_erro : tcontratado_erro;
  end;

  tmotorista_erro = class(Terro);
  tmotorista_erros = array of tmotorista_erro;

  tmotorista_retorno = class( TRemotable )
  private
    Fmotorista_erros: tmotorista_erros;
  published
      property motorista_erros : tmotorista_erros read Fmotorista_erros write Fmotorista_erros;
  end;

  toperacao_erro = class(Terro);
  toperacao_erros = array of toperacao_erro;

  toperacao_retorno = class( TRemotable )
  private
    Foperacao_erros: toperacao_erros;
  published
      property operacao_erros : toperacao_erros read Foperacao_erros write Foperacao_erros;
  end;

  tveiculo_erro = class(Terro);
  tveiculo_erros = array of tveiculo_erro;

  tveiculo_retorno = class( TRemotable )
  private
     fretorno_antt : tretorno_antt;
     fveiculo_erros : tveiculo_erros;
  public
    constructor create; override;
    destructor destroy;
  published
     property retorno_antt : tretorno_antt read fretorno_antt write fretorno_antt;
     property veiculo_erros : tveiculo_erros read fveiculo_erros write fveiculo_erros;
    function addveiculo_erro : tveiculo_erro;
  end;

  tcarreta_erro = class(Terro);
  tcarreta_erros = array of tcarreta_erro;

  tcarreta_retorno = class( TRemotable )
  private
    Fcarreta_erros: tcarreta_erros;
    Fretorno_antt: tretorno_antt;
  public
    constructor create; override;
    destructor destroy;
  published
     property retorno_antt : tretorno_antt read Fretorno_antt write Fretorno_antt;
     property carreta_erros : tcarreta_erros read Fcarreta_erros write Fcarreta_erros;
    function addcarreta_erro : tcarreta_erro;
  end;

  tsolicitacao_roteiro_erro = class(Terro);
  tsolicitacao_roteiro_erros = array of tsolicitacao_roteiro_erro;

  tsolicitacao_roteiro = class( TRemotable )
  private
    Fpedagio_ida_valor: extended;
    Fpedagio_valor: extended;
    Fsolicitacao_roteiro_codigo: integer;
    Fsolicitacao_roteiro_status: string;
    Fsolicitacao_roteiro_status_: integer;
    Fsolicitacao_roteiro_erros: tsolicitacao_roteiro_erros;
  public
    destructor destroy;
  published
     property solicitacao_roteiro_codigo : integer read Fsolicitacao_roteiro_codigo write Fsolicitacao_roteiro_codigo;
     property solicitacao_roteiro_status : string read Fsolicitacao_roteiro_status write Fsolicitacao_roteiro_status;
     property pedagio_valor : extended read Fpedagio_valor write Fpedagio_valor;
     property pedagio_ida_valor : extended read Fpedagio_ida_valor write Fpedagio_ida_valor;
     property solicitacao_roteiro_status_ : integer read Fsolicitacao_roteiro_status_ write Fsolicitacao_roteiro_status_;  //aguardando resposta da repom
     property solicitacao_roteiro_erros : tsolicitacao_roteiro_erros read Fsolicitacao_roteiro_erros write Fsolicitacao_roteiro_erros;
     function addsolicitacao_roteiro_erro : tsolicitacao_roteiro_erro;
  end;

  tvalida_abertura_contrato_retorno = class( TRemotable )
  private
    Fcarreta: tcarreta_retorno;
    Fcartao: tcartao;
    Fcontratado: tcontratado_retorno;
    Fmotorista: tmotorista_retorno;
    Foperacao: toperacao_retorno;
    Fsaldo_repom_20: Tsaldo_repom_20;
    Fsolicitacao_roteiro: tsolicitacao_roteiro;
    Fveiculo: tveiculo_retorno;
  public
    constructor create; override;
    destructor destroy;
  published
    property cartao	:tcartao read Fcartao write Fcartao;
    property saldo_repom_20	: Tsaldo_repom_20 read Fsaldo_repom_20 write Fsaldo_repom_20;
    property contratado : tcontratado_retorno read Fcontratado write Fcontratado;
    property motorista : tmotorista_retorno read Fmotorista write Fmotorista;
    property operacao : toperacao_retorno read Foperacao write Foperacao;
    property veiculo : tveiculo_retorno read Fveiculo write Fveiculo;
    property carreta : tcarreta_retorno read Fcarreta write Fcarreta;
    property solicitacao_roteiro : tsolicitacao_roteiro read Fsolicitacao_roteiro write Fsolicitacao_roteiro;
  end;



implementation

{ Tvalida_abertura_contrato }

constructor Tvalida_abertura_contrato.create;
begin
  inherited;
  Ftrechos:= TtrechosValidacao.create;
end;

destructor Tvalida_abertura_contrato.destroy;
begin
    Ftrechos.free;
end;







{ tcartao }

{ tsaldo_repom_20 }


{ tretorno_antt }

{ tcontratado_retorno }


{ tmotorista_retorno }


{ toperacao_retorno }


{ tveiculo_retorno }


{ tsolicitacao_roteiro }





{ tvalida_abertura_contrato_retorno }









{ tcarreta_retorno }



{ Ttrecho }

constructor Ttrecho.create;
begin
  inherited;
  Fvias := TViasTrecho.Create;
end;

destructor Ttrecho.destroy;
begin
   fVias.free;
end;

{ tvalida_abertura_contrato_retorno }

constructor tvalida_abertura_contrato_retorno.create;
begin
  inherited;
  Fcartao     := tcartao.Create;
  Fsaldo_repom_20 := tsaldo_repom_20.Create;
  Fcontratado := tcontratado_retorno.Create;
  Fveiculo    := tveiculo_retorno.Create;
  Fcarreta    := tcarreta_retorno.Create;
  Fsolicitacao_roteiro := tsolicitacao_roteiro.Create;
end;

destructor tvalida_abertura_contrato_retorno.destroy;
begin
  Fcartao.Free;
  Fsaldo_repom_20.Free;
  Fcontratado.Free;
  Fveiculo.Free;
  Fcarreta.Free;
  Fsolicitacao_roteiro.Free;
end;

{ tcontratado_retorno }

function tcontratado_retorno.addcontratado_erro: tcontratado_erro;
var v : tcontratado_erro;
begin
   SetLength( Fcontratado_erros, length( Fcontratado_erros) + 1);
   v := tcontratado_erro.Create;
   Fcontratado_erros[ length( Fcontratado_erros) - 1] := v;
   result := v;
end;

constructor tcontratado_retorno.create;
begin
  inherited;
  Fretorno_antt := tretorno_antt.Create;
end;

destructor tcontratado_retorno.destroy;
var
  vii : integer;
begin
    for vii:=0 to length( Fcontratado_erros ) -1 do Fcontratado_erros[vii].Free;
    Fretorno_antt.free;
end;

{ tveiculo_retorno }

function tveiculo_retorno.addveiculo_erro: tveiculo_erro;
var v : tveiculo_erro;
begin
   SetLength( Fveiculo_erros, length( Fveiculo_erros) + 1);
   v := tveiculo_erro.Create;
   Fveiculo_erros[ length( Fveiculo_erros) - 1] := v;
   result := v;
end;

constructor tveiculo_retorno.create;
begin
  inherited;
  fretorno_antt := tretorno_antt.create;
end;

destructor tveiculo_retorno.destroy;
var
  vii : integer;
begin
    for vii:=0 to length( Fveiculo_erros ) -1 do Fveiculo_erros[vii].Free;
    fretorno_antt.Free;
end;

{ tcarreta_retorno }

function tcarreta_retorno.addcarreta_erro: tcarreta_erro;
var v : tcarreta_erro;
begin
   SetLength( Fcarreta_erros, length( Fcarreta_erros) + 1);
   v := tcarreta_erro.Create;
   Fcarreta_erros[ length( Fcarreta_erros) - 1] := v;
   result := v;
end;

constructor tcarreta_retorno.create;
begin
  inherited;
  Fretorno_antt := tretorno_antt.Create;
end;

destructor tcarreta_retorno.destroy;
var
  vii : integer;
begin
    for vii:=0 to length( Fcarreta_erros ) -1 do Fcarreta_erros[vii].Free;
    Fretorno_antt.Free;
end;

{ tsolicitacao_roteiro }

function tsolicitacao_roteiro.addsolicitacao_roteiro_erro: tsolicitacao_roteiro_erro;
var v : tsolicitacao_roteiro_erro;
begin
   SetLength( Fsolicitacao_roteiro_erros, length( Fsolicitacao_roteiro_erros) + 1);
   v := tsolicitacao_roteiro_erro.Create;
   Fsolicitacao_roteiro_erros[ length( Fsolicitacao_roteiro_erros) - 1] := v;
   result := v;
end;

destructor tsolicitacao_roteiro.destroy;
var
  vii : integer;
begin
    for vii:=0 to length( Fsolicitacao_roteiro_erros ) -1 do Fsolicitacao_roteiro_erros[vii].Free;
end;

{ TtrechosValidacao }

function TtrechosValidacao.addTrecho: Ttrecho;
var v : Ttrecho;
begin
   SetLength( Ftrechos, length( Ftrechos) + 1);
   v := Ttrecho.Create;
   Ftrechos[ length( Ftrechos) - 1] := v;
   result := v;
end;

constructor TtrechosValidacao.create;
begin
  inherited;

end;

destructor TtrechosValidacao.destroy;
var
   vii : integer;
begin
    for vii:=0 to length( Ftrechos ) -1 do Ftrechos[vii].Free;
end;

{ TViasTrecho }

function TViasTrecho.addVia: Tvia;
var v : Tvia;
begin
   SetLength( Fvias, length( Fvias) + 1);
   v := Tvia.Create;
   Fvias[ length( Fvias) - 1] := v;
   result := v;
end;

destructor TViasTrecho.Destroy;
var
  vii : integer;
begin
    for vii:=0 to length( Fvias ) -1 do Fvias[vii].Free;
end;

{ tcartao }

function tcartao.addcartao_erro: tcartao_erro;
var v : tcartao_erro;
begin
   SetLength( Fcartao_erros, length( Fcartao_erros) + 1);
   v := tcartao_erro.Create;
   Fcartao_erros[ length( Fcartao_erros) - 1] := v;
   result := v;
end;

destructor tcartao.destroy;
var
  vii : integer;
begin
    for vii:=0 to length( Fcartao_erros ) -1 do Fcartao_erros[vii].Free;
end;

end.
