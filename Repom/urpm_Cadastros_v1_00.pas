unit urpm_Cadastros_v1_00;

interface

uses
 Classes, InvokeRegistry;

type
  Tdados_bancarios = class( TRemotable )
  private
    Fagencia_dv: string;
    Fagencia: string;
    Fconta_corrente_dv: string;
    Ftitular_conta_corrente: string;
    Fconta_corrente: string;
    Fbanco: string;
    Ftitular_cnpj_cpf_conta_corrente: string;
  published
    property banco : string read Fbanco write Fbanco;
    property agencia : string read Fagencia write Fagencia;
    property agencia_dv : string read Fagencia_dv write Fagencia_dv;
    property conta_corrente : string read Fconta_corrente write Fconta_corrente;
    property conta_corrente_dv : string read Fconta_corrente_dv write Fconta_corrente_dv;
    property titular_conta_corrente : string read Ftitular_conta_corrente write Ftitular_conta_corrente;
    property titular_cnpj_cpf_conta_corrente : string read Ftitular_cnpj_cpf_conta_corrente write Ftitular_cnpj_cpf_conta_corrente;
  end;

  Tcontratado = class(TRemotable)
  private
    Fcontato: string;
    Finss_codigo: string;
    Ftelefone1: string;
    Femail: string;
    Fdependentes: string;
    Ftelefone2: string;
    Frntrc_codigo: string;
    Fnome_contratado: string;
    Fpessoa_tipo: string;
    Fcelular_ddd: string;
    Fcep: string;
    Fcontratado_cnpj_cpf: string;
    Ftelefone2_ddd: string;
    Fcelular: string;
    Ftelefone1_ddd: string;
    Fnome_fantasia: string;
    Fdados_bancarios: tDados_bancarios;
    function Getdados_bancarios: tDados_bancarios;
  public
    function GetDadosBancarios : tdados_bancarios;
    constructor create; override;
    destructor destroy;
  published
    property contratado_cnpj_cpf  : string read Fcontratado_cnpj_cpf write Fcontratado_cnpj_cpf;
    property pessoa_tipo : string read Fpessoa_tipo write Fpessoa_tipo;
    property nome_contratado : string read Fnome_contratado write Fnome_contratado;
    property nome_fantasia : string read Fnome_fantasia write Fnome_fantasia;
    property cep : string read Fcep write Fcep;
    property telefone1_ddd : string read Ftelefone1_ddd write Ftelefone1_ddd;
    property telefone1 : string read Ftelefone1 write Ftelefone1;
    property telefone2_ddd : string read Ftelefone2_ddd write Ftelefone2_ddd;
    property telefone2 : string read Ftelefone2 write Ftelefone2;
    property celular_ddd : string read Fcelular_ddd write Fcelular_ddd;
    property celular : string read Fcelular write Fcelular;
    property email : string read Femail write Femail;
    property contato : string read Fcontato write Fcontato;
    property dependentes : string read Fdependentes write Fdependentes;
    property inss_codigo : string read Finss_codigo write Finss_codigo;
    property rntrc_codigo : string read Frntrc_codigo write Frntrc_codigo;
    property dados_bancarios : tDados_bancarios read Getdados_bancarios write Fdados_bancarios;
  end;

  Tmotorista = class(TRemotable)
  private
    Fdata_nascimento: string;
    Fcarteira_habilitacao_data_validade: string;
    Frg: string;
    Ftelefone_ddd: string;
    Fcontratado_cnpj_cpf: string;
    Ftelefone: string;
    Femail: string;
    Fcep: string;
    Fnome: string;
    Fcelular_ddd: string;
    Fcarteira_habilitacao: string;
    Fcpf: string;
    Fcelular: string;
  published
    property contratado_cnpj_cpf	: string  read Fcontratado_cnpj_cpf write Fcontratado_cnpj_cpf;
    property cpf	: string  read Fcpf write Fcpf;
    property nome	: string  read Fnome write Fnome;
    property cep	: string  read Fcep write Fcep;
    property telefone_ddd	: string  read Ftelefone_ddd write Ftelefone_ddd;
    property telefone	: string  read Ftelefone write Ftelefone;
    property celular_ddd	: string  read Fcelular_ddd write Fcelular_ddd;
    property celular	: string  read Fcelular write Fcelular;
    property email	: string  read Femail write Femail;
    property data_nascimento	: string  read Fdata_nascimento write Fdata_nascimento;
    property rg	: string  read Frg write Frg;
    property carteira_habilitacao	: string  read Fcarteira_habilitacao write Fcarteira_habilitacao;
    property carteira_habilitacao_data_validade	: string  read Fcarteira_habilitacao_data_validade write Fcarteira_habilitacao_data_validade;
  end;

  Tveiculo = class(TRemotable)
  private
    Fplaca: string;
    Fcontratado_cnpj_cpf: string;
    Frntrc_codigo: string;
    Ftipo_veiculo: string;
    Frenavam: string;
    Fnumero_eixos: string;
  published
    property contratado_cnpj_cpf : string read Fcontratado_cnpj_cpf write Fcontratado_cnpj_cpf;
    property placa : string read Fplaca write Fplaca;
    property numero_eixos: string read Fnumero_eixos write Fnumero_eixos;
    property renavam : string read Frenavam write Frenavam;
    property tipo_veiculo: string read Ftipo_veiculo write Ftipo_veiculo;
    property rntrc_codigo: string read Frntrc_codigo write Frntrc_codigo;
  end;

  Tcarreta = class(TRemotable)
  private
    Fcontratado_cnpj_cpf: string;
    Frntrc_codigo: string;
    Fcaso: string;
    Fplaca: string;
    Fnumero_eixos: string;
    Frenavam: string;
  published
    property contratado_cnpj_cpf : string read Fcontratado_cnpj_cpf write Fcontratado_cnpj_cpf;
    property placa : string read Fplaca write Fplaca;
    property caso: string read Fcaso write Fcaso;
    property numero_eixos  : string read Fnumero_eixos write Fnumero_eixos;
    property renavam : string read Frenavam write Frenavam;
    property rntrc_codigo  : string read Frntrc_codigo write Frntrc_codigo;
  end;

  Terro = class(TRemotable)
  private
    Ferro_codigo: string;
    Ferro_descricao: string;
  published
    property erro_codigo : string read Ferro_codigo write Ferro_codigo;
    property erro_descricao: string read Ferro_descricao write Ferro_descricao;
  end;
  Terros = array of Terro;

  T_erros = class(TRemotable)
  private
    Ferros: Terros;
  public
    destructor destroy;
  published
    function adderro : TErro;
    property erros : Terros read Ferros write Ferros;
  end;


implementation

{ Tcontratado }


{ Tmotorista }


{ Tveiculo }

{ Tcarreta }

{ T_erros }

function T_erros.AddErro: TErro;
var v : tErro;
begin
   SetLength( FErros, length( FErros) + 1);
   v := tErro.Create;
   FErros[ length( FErros) - 1] := v;
   result := v;
end;

destructor T_erros.destroy;
var
   vii : integer;
begin
    for vii:=0 to length( FErros ) -1 do FErros[vii].Free;
end;

{ Terro }

{ Ttrecho }

{ Tvia }

{ Tcontratado }

destructor Tcontratado.destroy;
begin
   if assigned(Fdados_bancarios) then Fdados_bancarios.Free;
end;

function Tcontratado.Getdados_bancarios: tDados_bancarios;
begin
  Result := Fdados_bancarios;
end;

function Tcontratado.GetDadosBancarios: tdados_bancarios;
begin
   if not assigned( Fdados_bancarios ) then
      Fdados_bancarios := Tdados_bancarios.Create;
   result := Fdados_bancarios;
end;

constructor Tcontratado.create;
begin
  inherited;
  Fdados_bancarios := Tdados_bancarios.Create;
end;

end.
