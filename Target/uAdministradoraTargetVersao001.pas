unit uAdministradoraTargetVersao001;

interface
{$WARN SYMBOL_PLATFORM off}
uses uAdministradoraAbstract, T5XmlSerializa, uIntegracaoContratofreteBean,
  uTrg_TARGET_VectioFrete_Application_WCF_Contracts_External;

type
   TAdministradoraTargetVersao001 = class( TAdministradoraAbstract )
   private
    FTarget : TBeanOperadoraTarget;
    ParametrosSerializacao : rSerializacao;
    function formataNumero( valor : Extended; decimais : integer = 2 ): String;
    function ComunicaWS( xml : widestring;
                                                   sAction :string;
                                                   var ResultadoProcessamento : Boolean ): String;
    procedure SetDadosOperadora(const Value: TBeanOperadora); override;
    function ProcessaCartao: boolean;
    function ProcessaMotorista( var idMotorista : integer ): boolean;
    function processaParticipantes: boolean;
    function ProcessaTransportador(  ): boolean;
    function CadastraTransportador(): boolean;
    function ConsultaTransportador(var TemCadastro: boolean): boolean;
    function CadastraMotorista: boolean;
    function ConsultaMotorista( var temCadastro : boolean ) : boolean;
    function CadastraParticipante(envolvido: TBeanEnvolvido; Tipo : integer): boolean;
    function consultaParticipante(var temCadastro: boolean;
      envolvido: TBeanEnvolvido; Tipo : integer): boolean;
    function processaParticipante(envolvido: TBeanEnvolvido; Tipo : integer): boolean;
    function AtualizarParticipante(envolvido: TBeanEnvolvido;
      Tipo: integer): boolean;
    function CarregaDadosParticipante(envolvido: TBeanEnvolvido;
      participante: tBaseParticipanteRequestResponse;
      Tipo: integer): boolean;
    function ObterOperacaoPorId_CIOT(Operacao: string): boolean;
   public
      function getCodigoAdministradora : integer; override;
      function verificaRetorno: boolean; override;
      function insereContratoFrete       : boolean; override;
      function cancelaContratoFrete      : boolean; override;
      destructor Destroy; override;
      constructor Create;
   end;

implementation

uses SysUtils, classes, uICFFuncoes, uTrg_SOAP_v1_50,
     uTrg_service_v1_50, DateUtils, IniFiles,
     uICFBase, Contnrs,
     utxt_pef_con_v1_0, utxt_pef_ext_v1_0, utxt_pef_v1_0, utxt_pef_can_v1_0,
     StrUtils, utxt_pef_pag_v1_0, utxt_pef_alt_v1_0, utxt_base, MaskUtils;


function converteCategoria( categoriaPEF : integer ) : integer;
begin
{
   IdDmCategoriaVeiculo	Descricao	Comentarios	Eixo	Rodagem	Ativo	Sigla
   1	Motocicletas, motonetas e bicicletas a motor (um eixo simples)		1	1	1	1S
   2	Automóvel, caminhoneta e furgão (dois eixos simples)		2	1	1	2S
   3	Automóvel, caminhoneta com semi-reboque (três eixos simples)		3	1	1	3S
   4	Automóvel, caminhoneta com reboque (quatro eixos simples)		4	1	1	4S
   5	Ônibus (dois eixos duplos)		2	2	1	2D
   6	Ônibus com reboque (três eixos duplos)		3	2	1	3D
   7	Caminhão leve, furgão e cavalo mecânico (dois eixos duplos)		2	2	1	2D
   8	Caminhão, caminhão trator e cavalo mecânico com semi-reboque (três eixos duplos)		3	2	1	3D
   9	Caminhão com reboque e cavalo mecânico com semi-reboque (quatro eixos duplos)		4	2	1	4D
   10	Caminhão com reboque e cavalo mecânico com semi-reboque (cinco eixos duplos)		5	2	1	5D
   11	Caminhão com reboque e cavalo mecânico com semi-reboque (seis eixos duplos)		6	2	1	6D
   12	Caminhão com reboque e cavalo mecânico com semi-reboque (sete eixos duplos)		7	2	1	7D
   13	Caminhão com reboque e cavalo mecânico com semi-reboque (oito eixos duplos)		8	2	1	8D
   14	Caminhão com reboque e cavalo mecânico com semi-reboque (nove eixos duplos)		9	2	1	9D
}


   case categoriaPEF of
      0	{Indefinido}                                                            : result :=categoriaPEF;
      1	{Automóvel, Caminhoneta, Furgão / 2 Eixos}                              : result := 2;
      2	{Automóvel com semi reboque, Caminhoneta com semi reboque / 3 Eixos}    : result := 3;
      3	{Automóvel com reboque, Caminhoneta com reboque / 4 Eixos}              : result := 4;
      4	{Caminhão leve, Furgão, Caminhão - trator / 2 Eixos}                    : result := 3;
      5	{Caminhão, Caminhão - trator, Caminhão - trator com semi reboque / 3 Eixos} : result := 7;
      6	{Caminhão com reboque, Caminhão - trator com semi reboque / 4 Eixos}    : result := 9;
      7	{Caminhão com reboque, Caminhão - trator com semi reboque / 5 Eixos}    : result := 10;
      8	{Caminhão com reboque, Caminhão - trator com semi reboque / 6 Eixos}    : result := 11;
      9	{Caminhão com reboque, Caminhão - trator com semi reboque / 7 Eixos}    : result := 12;
      10	{Caminhão com reboque, Caminhão - trator com semi reboque / 8 Eixos}   : result := 13;
      11	{Caminhão com reboque, Caminhão - trator com semi reboque / 9 Eixos}   : result := 14;
      12	{Caminhão com reboque, Caminhão - trator com semi reboque / 10 Eixos}  : result := 14;
      13	{Onibus / 2 eixos}                                                     : result := 5;
      14	{Onibus / 3 eixos}                                                     : result := 6;
      15	{Reboque}                                                              : result := 0;
      16	{Semi-reboque}                                                         : result := 0;
      else result := categoriaPEF;
   end;

end;


{ TAdministradoraTargetVersao001 }

procedure TAdministradoraTargetVersao001.SetDadosOperadora(
  const Value: TBeanOperadora);
begin
  inherited;
  FTarget := TBeanOperadoraTarget( value );
end;

function TAdministradoraTargetVersao001.ComunicaWS( xml : widestring;
                                                   sAction :string;
                                                   var ResultadoProcessamento : Boolean ): String;
var
   retorno : widestring;
   CrossTalk, Header, Body : widestring;
   rResponseCode, rResponseCodeMessage, rProcessCode, rmessagetype, rExchangePattern, rGUID : string;
begin


   if xml <>'' then
      ArquivoGerado.Add( xml );
   try
   retorno := uTrg_SOAP_v1_50.SOAPGet( FTarget.WebServer,
                                       FTarget.Identification,
                                       FTarget.Token,
                                       sAction,
                                       sAction,
                                       XML,
                                       'https://vmdevweb01/targetservices/target/tms/TMSService.svc/soap' ,
                                       DadosOperadora.proxy.proxy, DadosOperadora.proxy.proxyusuario, DadosOperadora.proxy.proxysenha);
      ResultadoProcessamento := true;
   except
      on e:Exception do
      begin
         ResultadoProcessamento := false;
         ArquivoRecebido.Add( 'Erro:'+e.message );
      end;
   end;
   ArquivoRecebido.Add( retorno );

   retorno := SOAPResponse( retorno );

   if copy(retorno, 1, 8 ) = '<s:Fault' then
   begin
       with tFault.CreateFromXmlString( retorno ) do
       try
          ResultadoProcessamento := false;
          msgError := faultcode+', '+faultstring;
       finally
          free;
       end;
       retorno := '';
   end;
   result := retorno;

end;


constructor TAdministradoraTargetVersao001.Create;
begin
   inherited create(nil);
   ParametrosSerializacao.FormatSettings.DecimalSeparator := '.';
end;

destructor TAdministradoraTargetVersao001.Destroy;
begin

  inherited;
end;

function TAdministradoraTargetVersao001.getCodigoAdministradora: integer;
begin
  result := 6;
end;

function TAdministradoraTargetVersao001.formataNumero( valor : Extended; decimais : integer = 2 ) : string;
begin
  Result := StringReplace( formatFloat( '0.'+stringOfChar('0', decimais), valor, ParametrosSerializacao.FormatSettings), ',','.',[]);
end;

function TAdministradoraTargetVersao001.ProcessaTransportador() : boolean;
var
  temCadastro : boolean;
begin
  result := ConsultaTransportador( temCadastro );
  if not result or not temCadastro then
  begin
     result := CadastraTransportador();
  end;
end;

function TAdministradoraTargetVersao001.ConsultaTransportador(var TemCadastro : boolean ) : boolean;
var
   xml : String;
   action : string;
   retorno : string;
   rp : boolean;
begin
   temCadastro := false;
   try
      with tConsultarSituacaoTransportadorAntt_ConsultarSituacaoTransportadorAntt.Create do
      try
         CPFCNPJ := bean.contratado.contratado_cnpj_cpf;
         xml := ( GetAsString );
      finally
         free;
      end;
      //ConsultarSituacaoCadastroTransportadorAntt


      action := 'http://tempuri.org/IParticipanteExternal/ConsultarSituacaoTransportadorAntt';
      retorno := ComunicaWS( xml, action , rp );
      if rp then
      begin
             with tConsultarSituacaoTransportadorAnttResponse_ConsultarSituacaoTransportadorAnttResponse.CreateFromXmlString( retorno ) do
             try
                rp := ConsultarSituacaoTransportadorAnttResult.Sucesso;
                if not rp then
                   msgError := ConsultarSituacaoTransportadorAnttResult.MensagemRetorno
                else
                   TemCadastro := (ConsultarSituacaoTransportadorAnttResult.CpfCnpjTransportador = bean.contratado.contratado_cnpj_cpf);
             finally
                free;
             end;
      end;

     result := rp;
   except
      on e:exception do
      begin
          result := false;
          self.msgError := 'ProcessaTransportador:'+e.message;
      end;
   end;
end;

function TAdministradoraTargetVersao001.CadastraTransportador( ) : boolean;

  function GetEquiparado : string;
  var vEndereco, vTipoLogradouro, vNumero : string;
  begin
     try
        with tCadastrarEquiparado_CadastrarEquiparado.create do
        try
            _NameSpaceAlias := 'tem';
            cadastroEquiparadoRequest :=  tCadastroEquiparadoRequest.create;
            with cadastroEquiparadoRequest do
            begin
               _NameSpaceAlias := 'tar';

               RNTRC  := bean.contratado.rntrc_codigo;
               CNPJ   := bean.contratado.contratado_cnpj_cpf;
               RazaoSocial:= RemoveCaracterEspecial(bean.contratado.nome_contratado);
               InscricaoEstadual:= bean.contratado.Identidade;
               if InscricaoEstadual =  '' then InscricaoEstadual := '0';
               InscricaoMunicipal := '0';
               NomeFantasia:= RemoveCaracterEspecial(bean.contratado.nome_fantasia);
               DataInscricao:= now;
               AtividadeEconomica:=  43;

               vEndereco :=  bean.contratado.endereco;
               DivideEndereco( vendereco, vTipoLogradouro, vNumero );
               Logradouro := RemoveCaracterEspecial(vTipoLogradouro+' '+vEndereco);
               NumeroEndereco:=  vNumero;

               Complemento := RemoveCaracterEspecial(iif(bean.contratado.endereco_complemento='', 'sem complemento', bean.contratado.endereco_complemento));
               Bairro:= RemoveCaracterEspecial(bean.contratado.bairro);
               CEP:= bean.contratado.cep;
               CodigoIBGEMunicipio:= strToIntDef(bean.contratado.cidade_ibge,0);
               TelefoneFixo:= strToInt64Def(bean.contratado.telefone1,0);
               TelefoneCelular:= strToInt64Def(bean.contratado.telefone2,0);
               Email:= bean.contratado.email;
               if email='' then email := 'no@no.com';
               randomize;
               Login:= 'Vection_'+intToStr( random( 10000 ) )+intToStr( random( 10000 ) )+intToStr( random( 10000 ) );

               CodigoBanco       :=  '001';
               CodigoAgencia     := '0';
               DigitoAgencia     := '0';
               ContaCorrente     := '0';
               DigitoContaCorrente:= '0';

           end;
           result :=( GetAsString );
        finally
           free;
        end;
      except
         on e:exception do
         begin
            raise exception.create( 'GetEquiparado:'+e.message );
         end;
      end;
  end;

  function GetTAC : string;
  var vEndereco, vTipoLogradouro, vNumero : string;
  begin
     try
        with tCadastrarAutonomo_CadastrarAutonomo.create do
        try
            _NameSpaceAlias := 'tem';
            CadastroAutonomoRequest := tCadastroAutonomoRequest.create;
            with CadastroAutonomoRequest do
            begin
               _NameSpaceAlias := 'tar';
               RNTRC          := bean.contratado.rntrc_codigo;
               Nome           := RemoveCaracterEspecial(copy(bean.contratado.nome_contratado,1,pos(' ',bean.contratado.nome_contratado)-1));
               Sobrenome      := RemoveCaracterEspecial(copy(bean.contratado.nome_contratado,pos(' ',bean.contratado.nome_contratado)+1,500));
               CPF            := bean.contratado.contratado_cnpj_cpf;
               DataNascimento := bean.contratado.DataNascimento;
               RG             := bean.contratado.Identidade;
               OrgaoExpedidor := iif(bean.contratado.OrgaoEmissorIdentidade='', 'SSP', bean.contratado.OrgaoEmissorIdentidade);
               CNH            := '0';
               TipoCNH        := 'A';
               DataValidadeCNH:= now+30;
               Sexo           := 'M';
               Naturalidade   := bean.contratado.nacionalidade;
               Nacionalidade  := bean.contratado.nacionalidade;

               vEndereco :=  RemoveCaracterEspecial(bean.contratado.endereco);
               DivideEndereco( vendereco, vTipoLogradouro, vNumero );
               Logradouro := RemoveCaracterEspecial(vTipoLogradouro+' '+vEndereco);

               NumeroEndereco:=  vNumero;

               Complemento := RemoveCaracterEspecial(iif(bean.contratado.endereco_complemento='', 'sem complemento', bean.contratado.endereco_complemento));
               Bairro:= bean.contratado.bairro;
               CEP:= bean.contratado.cep;
               CodigoIBGEMunicipio:= strToIntDef(bean.contratado.cidade_ibge,0);
               IdentificadorEndereco := 'Sem identificacao';
               TelefoneFixo:= strToInt64Def(  bean.contratado.telefone1 ,4500000);
               TelefoneCelular:= strToInt64Def(bean.contratado.telefone2,4500000);
               EstadoCivil := 0;

               Email:= bean.contratado.email;
               //Login := Nome+random(9999)+random(9999)+random(9999);

               CodigoBanco  := '001';
               CodigoAgencia:= '1';
               DigitoAgencia:= '1';
               ContaCorrente:= '1';
               DigitoContaCorrente:= '1';
           end;
           result :=  ( GetAsString );
        finally
           free;
        end;
      except
         on e:exception do
         begin
            raise exception.create( 'GetTAC:'+e.message );
         end;
      end;
  end;

var
   xml : String;
   action : string;
   retorno : string;
   rp : boolean;
begin
   try
      if (bean.contratado.rntrc_tipo <> 'TAC') or (bean.contratado.equiparado_TAC = 'S') then
      begin
          xml := GetEquiparado;
          action := 'http://tempuri.org/IParticipanteExternal/CadastrarEquiparado';
      end
      else
      begin
          xml := GetTAC;
          action := 'http://tempuri.org/IParticipanteExternal/CadastrarAutonomo';
      end;


      retorno := ComunicaWS( xml, action , rp );
      if rp then
      begin
         if (bean.contratado.rntrc_tipo <> 'TAC') or (bean.contratado.equiparado_TAC = 'S') then
         begin
             with tCadastrarEquiparadoResponse_CadastrarEquiparadoResponse.CreateFromXmlString( retorno ) do
             try
                rp := CadastrarEquiparadoResult.Sucesso;
                if not rp then
                   msgError := CadastrarEquiparadoResult.MensagemRetorno;
//                idTransportador := CadastrarEquiparadoResult.CodigoEquiparado;
             finally
                free;
             end;
         end
         else
         begin
             with tCadastrarAutonomoResponse_CadastrarAutonomoResponse.CreateFromXmlString( retorno ) do
             try
                rp := CadastrarAutonomoResult.Sucesso;
                if not rp then
                   msgError := CadastrarAutonomoResult.MensagemRetorno;
//                idTransportador := CadastrarAutonomoResult.CodigoAutonomo;
             finally
                 free;
             end;
         end;
      end;

     result := rp;
   except
      on e:exception do
      begin
          result := false;
          self.msgError := 'ProcessaTransportador:'+e.message;
      end;
   end;
end;

function TAdministradoraTargetVersao001.ProcessaMotorista( var idMotorista : integer ) : boolean;
var
  temCadastro : boolean;
begin
  result := ConsultaMotorista( temCadastro );
  if not result or not temCadastro then
  begin
     result := CadastraMotorista();
  end;
end;

function TAdministradoraTargetVersao001.ConsultaMotorista( var temCadastro : boolean ) : boolean;
var
   xml : String;
   action : string;
   retorno : string;
   rp : boolean;
begin
   temCadastro := false;
   try
      if false then
         with tObterMotoristaPorCPFTerceiros_ObterMotoristaPorCPFTerceiros.Create do
         try
            cpf := bean.motorista.cpf;
            cpfCnpjContratado := bean.contratado.contratado_cnpj_cpf;
            xml := ( GetAsString );
         finally
            free;
            action := 'http://tempuri.org/IMotoristaExternal/ObterMotoristaPorCPFTerceiros';
         end
      else
         with tObterMotoristaPorCPF_ObterMotoristaPorCPF.Create do
         try
            cpf := bean.motorista.cpf;
            xml := ( GetAsString );
            action := 'http://tempuri.org/IMotoristaExternal/ObterMotoristaPorCPF';
         finally
            free;
         end;


      retorno := ComunicaWS( xml, action , rp );
      if rp then
      begin
          if false then
             with tObterMotoristaPorCPFTerceirosResponse_ObterMotoristaPorCPFTerceirosResponse.CreateFromXmlString( retorno ) do
             //with tObterMotoristaPorCPFResponse_ObterMotoristaPorCPFResponse.CreateFromXmlString( retorno ) do
             try
                rp := ObterMotoristaPorCPFTerceirosResult.Sucesso;
                if rp then
                begin
                   TemCadastro := ObterMotoristaPorCPFTerceirosResult.Motorista.CPF = bean.motorista.cpf;
                   //ObterMotoristaPorCPFResult.Motorista.CodigoMotorista;
                end;
             finally
                free;
             end
          else
             with tObterMotoristaPorCPFResponse_ObterMotoristaPorCPFResponse.CreateFromXmlString( retorno ) do
             try
                rp := ObterMotoristaPorCPFResult.Sucesso;
                if rp then
                begin
                   TemCadastro := ObterMotoristaPorCPFResult.Motorista.CPF = bean.motorista.cpf;
                   //ObterMotoristaPorCPFResult.Motorista.CodigoMotorista;
                end;
             finally
                free;
             end;
      end;
      result := rp;
   except
      on e:exception do
      begin
          result := false;
          self.msgError := 'ConsultaMotorista:'+e.message;
      end;
   end;
end;

function TAdministradoraTargetVersao001.CadastraMotorista : boolean;
  function GetMotorista  : string;
  var
      vendereco, vTipoLogradouro, vNumero : string;
  begin
     try
        with tCadastrarMotorista_CadastrarMotorista.Create do
        try
            _NameSpaceAlias := 'tem';
           cadastroMotoristaRequest := tCadastroMotoristaRequest.create;
           with cadastroMotoristaRequest do
           begin
               _NameSpaceAlias := 'tar';
              CPFCNPJTransportador := bean.contratado.contratado_cnpj_cpf;
              Nome                 := RemoveCaracterEspecial(copy(bean.motorista.nome, 1, pos(' ',bean.motorista.nome)));
              Sobrenome            := RemoveCaracterEspecial(copy(bean.motorista.nome, pos(' ',bean.motorista.nome)+1, 255));
              CPF                  := bean.motorista.cpf;
              RG                   := bean.motorista.rg;
              DataNascimento       := bean.motorista.data_nascimento;
              Email                := bean.motorista.email;
              if email='' then email := 'no@no.com';
              TelefoneContato      := bean.motorista.telefone;
              Nacionalidade        := 'BRASILEIRA';

              vendereco      := bean.motorista.endereco;
              DivideEndereco( vendereco, vTipoLogradouro, vNumero );

              Endereco             := RemoveCaracterEspecial(vTipoLogradouro+' '+vendereco);
              Numero               := vNumero;
              Complemento          := RemoveCaracterEspecial(bean.motorista.endereco_complemento);
              if Complemento = '' then complemento := 'Sem';          
              CEP                  := bean.motorista.cep;
              Bairro               := bean.motorista.bairro;
              MunicipioCodigoIBGE  := strToIntDef(bean.motorista.cidade_ibge, strToIntDef(bean.contratado.cidade_ibge,0) );

              CodigoBanco          := bean.DadosDeposito.banco;
              if codigobanco='' then codigobanco:='001';
              CodigoAgencia        := bean.DadosDeposito.agencia;
              if codigoagencia = '' then codigoagencia := '0';
              DigitoAgencia        := bean.DadosDeposito.dvAgendia;
              ContaCorrente        := bean.DadosDeposito.conta;
              if contacorrente = '' then contacorrente := '0';
              DigitoContaCorrente  := bean.DadosDeposito.dvConta;
              FlagContaPoupanca    := false;
              VariacaoContaPoupanca:= '0';
           end;
           result := ( GetAsString );
        finally
           free;
        end;
     except
       on e:exception do
       begin
           raise exception.create('GetMotorista:'+e.message);
       end;
     end;
  end;

var
   xml : String;
   action : string;
   retorno : string;
   rp : boolean;
begin
   try
      xml := GetMotorista;
      action := 'http://tempuri.org/IMotoristaExternal/CadastrarMotorista';
      retorno := ComunicaWS( xml, action , rp );

      if rp then
      begin
          with tCadastrarMotoristaResponse_CadastrarMotoristaResponse.CreateFromXmlString( retorno ) do
          try
             rp := CadastrarMotoristaResult.Sucesso;
             if not rp then
             begin
                if pos('existe um Motorista cadastrado com o CPF informado', CadastrarMotoristaResult.MensagemRetorno) > 0 then // POG pois o "obtermotorista" falha
                   rp := true
                else
                if pos('Este Motorista j', CadastrarMotoristaResult.MensagemRetorno) > 0 then // POG pois o "obtermotorista" falha
                   rp := true
                else if pos('Já existe um TAC', CadastrarMotoristaResult.MensagemRetorno) > 0 then // POG pois o "obtermotorista" falha
                   rp := true
                else
                   msgError := CadastrarMotoristaResult.MensagemRetorno;
             end;
             //idMotorista := CadastrarMotoristaResult.CodigoMotorista;
          finally
             free;
          end;
      end;

     result := rp;
   except
      on e:exception do
      begin
          result := false;
          self.msgError := 'ProcessaMotorista:'+e.message;
      end;
   end;
end;

function somentenumeros ( s : string ) : string;
var
  i : integer;
begin
  result := '';
  for i := 1 to length( s ) do
    if s[i] in ['0'..'9'] then result := result + s[i];
end;

function TAdministradoraTargetVersao001.ProcessaCartao : boolean;
    function AssociaCartao( var jaAssociado : boolean ) : boolean;
    var
       xml : String;
       action : string;
       retorno : string;
       rp : boolean;
    begin
       try
          if (bean.contratado.rntrc_tipo <> 'TAC') and (bean.contratado.equiparado_TAC = 'S') then
          begin
              with tAssociarCartaoEquiparado_AssociarCartaoEquiparado.Create do
              try

                 dadosAssociacao := tAssociacaoCartaoTransportadorRequest.create;
                 dadosAssociacao.CNPJTransportador := bean.contratado.contratado_cnpj_cpf;


                 dadosAssociacao.NumeroCartao      := FormatMaskText( 'AAAA.AAAA.AAAA-AAAA;0; ', somentenumeros( bean.numeroCartaoFrete ));
                 dadosAssociacao.NumeroCartao      := somentenumeros( bean.numeroCartaoFrete );

                 dadosAssociacao.Nome              := copy(bean.contratado.nome_contratado, 1, pos(' ',bean.contratado.nome_contratado));
                 dadosAssociacao.Sobrenome         := copy(bean.contratado.nome_contratado, pos(' ',bean.contratado.nome_contratado)+1, 255);
                 dadosAssociacao.CPF               := bean.motorista.cpf;
                 dadosAssociacao.RG                := bean.motorista.rg;
                 dadosAssociacao.DataNascimento    := bean.motorista.data_nascimento;
                 dadosAssociacao.Email             := bean.contratado.email;
                 if dadosAssociacao.Email = '' then  dadosAssociacao.Email := 'no@no.com';
                 dadosAssociacao.TelefoneContato   := bean.contratado.telefone1;
                 dadosAssociacao.Nacionalidade     := 'Brasileira';
                 dadosAssociacao.Endereco          := bean.contratado.endereco;
                 dadosAssociacao.Numero            := '0';
                 dadosAssociacao.Complemento       := bean.contratado.endereco_complemento;
                 if dadosAssociacao.Complemento = '' then dadosAssociacao.Complemento := 'Sem';
                 dadosAssociacao.CEP               := bean.contratado.cep;
                 dadosAssociacao.Bairro            := bean.contratado.bairro;
                 dadosAssociacao.MunicipioCodigoIBGE := strToIntDef(bean.contratado.cidade_ibge, 0);

                 dadosAssociacao.CodigoBanco         := '001';
                 dadosAssociacao.CodigoAgencia       :='0';
                 dadosAssociacao.DigitoAgencia       :='0';
                 dadosAssociacao.ContaCorrente       :='0';
                 dadosAssociacao.DigitoContaCorrente :='0';


                 xml := GetAsString ;
                 action := 'http://tempuri.org/ICartaoExternal/AssociarCartaoEquiparado';
              finally
                free;
              end;
          end
          else
          if (bean.contratado.rntrc_tipo <> 'TAC') and (bean.contratado.equiparado_TAC = 'N') then
          begin
              with tAssociarCartaoNaoEquiparado_AssociarCartaoNaoEquiparado.Create do
              try

                 dadosAssociacao := tAssociacaoCartaoTransportadorRequest.create;
                 dadosAssociacao.CNPJTransportador := bean.contratado.contratado_cnpj_cpf;


                 dadosAssociacao.NumeroCartao      := FormatMaskText( 'AAAA.AAAA.AAAA-AAAA;0; ', somentenumeros( bean.numeroCartaoFrete ));
                 dadosAssociacao.NumeroCartao      := somentenumeros( bean.numeroCartaoFrete );

                 dadosAssociacao.Nome              := copy(bean.contratado.nome_contratado, 1, pos(' ',bean.contratado.nome_contratado));
                 dadosAssociacao.Sobrenome         := copy(bean.contratado.nome_contratado, pos(' ',bean.contratado.nome_contratado)+1, 255);
                 dadosAssociacao.CPF               := bean.motorista.cpf;
                 dadosAssociacao.RG                := bean.motorista.rg;
                 dadosAssociacao.DataNascimento    := bean.motorista.data_nascimento;
                 dadosAssociacao.Email             := bean.contratado.email;
                 if dadosAssociacao.Email = '' then  dadosAssociacao.Email := 'no@no.com';
                 dadosAssociacao.TelefoneContato   := bean.contratado.telefone1;
                 dadosAssociacao.Nacionalidade     := 'Brasileira';
                 dadosAssociacao.Endereco          := bean.contratado.endereco;
                 dadosAssociacao.Numero            := '0';
                 dadosAssociacao.Complemento       := bean.contratado.endereco_complemento;
                 if dadosAssociacao.Complemento = '' then dadosAssociacao.Complemento := 'Sem';
                 dadosAssociacao.CEP               := bean.contratado.cep;
                 dadosAssociacao.Bairro            := bean.contratado.bairro;
                 dadosAssociacao.MunicipioCodigoIBGE := strToIntDef(bean.contratado.cidade_ibge, 0);

                 dadosAssociacao.CodigoBanco         := '001';
                 dadosAssociacao.CodigoAgencia       :='0';
                 dadosAssociacao.DigitoAgencia       :='0';
                 dadosAssociacao.ContaCorrente       :='0';
                 dadosAssociacao.DigitoContaCorrente :='0';


                 xml := GetAsString ;
                 action := 'http://tempuri.org/ICartaoExternal/AssociarCartaoNaoEquiparado';
              finally
                free;
              end;
          end
          else
          begin
              with tAssociarCartaoAutonomo_AssociarCartaoAutonomo.Create do
              try
                 cpfAutonomo := bean.contratado.contratado_cnpj_cpf;
                 NumeroCartao      := FormatMaskText( 'AAAA.AAAA.AAAA-AAAA;0; ', somentenumeros( bean.numeroCartaoFrete ));
                 NumeroCartao      := somentenumeros( bean.numeroCartaoFrete );

                 xml := ( GetAsString );
                 action := 'http://tempuri.org/ICartaoExternal/AssociarCartaoAutonomo';
              finally
                free;
              end;
          end;

          jaAssociado := false;

          retorno := ComunicaWS( xml, action , rp );
          if rp then
          begin
             if (bean.contratado.rntrc_tipo <> 'TAC') and  (bean.contratado.equiparado_TAC = 'S') then
             begin
                 with tAssociarCartaoEquiparadoResponse_AssociarCartaoEquiparadoResponse.CreateFromXmlString( retorno ) do
                 try
                    rp := AssociarCartaoEquiparadoResult.Sucesso;

                    if not rp then
                    begin
                       jaAssociado := (pos('Cartão já associado ao portador', AssociarCartaoEquiparadoResult.MensagemRetorno) > 0);
                       jaAssociado := jaassociado or (pos('O CPF já possui um cartão associado', AssociarCartaoEquiparadoResult.MensagemRetorno) > 0);
                       rp := jaAssociado;
                    end;

                    //if not rp then
                       msgError := AssociarCartaoEquiparadoResult.MensagemRetorno;
                 finally
                    free;
                 end;
             end
             else if (bean.contratado.rntrc_tipo = 'TAC')  then
             begin
                 with tAssociarCartaoAutonomoResponse_AssociarCartaoAutonomoResponse.CreateFromXmlString( retorno ) do
                 try
                    rp := AssociarCartaoAutonomoResult.Sucesso;
                    if not rp then
                    begin
                       jaAssociado := (pos('Cartão já associado ao portador', AssociarCartaoAutonomoResult.MensagemRetorno) > 0);
                       jaAssociado := jaassociado or (pos('O CPF já possui um cartão associado', AssociarCartaoAutonomoResult.MensagemRetorno) > 0);
                       rp := jaAssociado;
                    end;

                    //if not rp then
                       msgError := AssociarCartaoAutonomoResult.MensagemRetorno;
                 finally
                     free;
                 end;
             end
             else if (bean.contratado.equiparado_TAC = 'N')  then
             begin
                 with tAssociarCartaoNaoEquiparadoResponse_AssociarCartaoNaoEquiparadoResponse.CreateFromXmlString( retorno ) do
                 try
                    rp := AssociarCartaoNaoEquiparadoResult.Sucesso;

                    if not rp then
                    begin
                       jaAssociado := (pos('Cartão já associado ao portador', AssociarCartaoNaoEquiparadoResult.MensagemRetorno) > 0);
                       jaAssociado := jaassociado or (pos('O CPF já possui um cartão associado', AssociarCartaoNaoEquiparadoResult.MensagemRetorno) > 0);
                       rp := jaAssociado;
                    end;


                    //if not rp then
                       msgError := AssociarCartaoNaoEquiparadoResult.MensagemRetorno;
                 finally
                     free;
                 end;
             end;
          end;

          result := rp;

       except
          on e:exception do
          begin
              result := false;
              self.msgError := 'AssociaCartao:'+e.message;
          end;
       end;
    end;

    function DesbloqueiaCartao : boolean;
    var
       xml : String;
       action : string;
       retorno : string;
       rp : boolean;
    begin
       try
          with tDesbloquearCartao_DesbloquearCartao.Create do
          try
             numeroCartao   := bean.numeroCartaoFrete;
             xml := ( GetAsString );
             action := 'http://tempuri.org/ICartaoExternal/DesbloquearCartao';
          finally
            free;
          end;

          retorno := ComunicaWS( xml, action , rp );
          if rp then
          begin
             with tDesbloquearCartaoResponse_DesbloquearCartaoResponse.CreateFromXmlString( retorno ) do
             try
                rp := DesbloquearCartaoResult.Sucesso;
                if not rp then
                   rp := (pos('Cartão já foi desbloqueado',DesbloquearCartaoResult.MensagemRetorno) >0) ;
                if not rp then
                   msgError := DesbloquearCartaoResult.MensagemRetorno;
             finally
                free;
             end;
          end;

          result := rp;
       except
          on e:exception do
          begin
              result := false;
              self.msgError := 'DesbloqueiaCartao:'+e.message;
          end;
       end;
    end;
var
   jaAssociado : boolean;
begin
  result := AssociaCartao( jaAssociado );
  if result and not jaAssociado then
     result := DesbloqueiaCartao;
end;


function TAdministradoraTargetVersao001.processaParticipantes : boolean;
begin
//   result := processaParticipante( bean.cliente_Origem, ? );
   result := processaParticipante( bean.cliente_Destino, 2 );
//   result := result and processaParticipante( bean.cliente_Consignatario,1 );
end;


function TAdministradoraTargetVersao001.processaParticipante( envolvido : TBeanEnvolvido; Tipo : integer ) : boolean;
var
  temCadastro : boolean;
begin
  result := consultaParticipante( temCadastro, envolvido, tipo );
  if not result or not temCadastro then
  begin
     result := CadastraParticipante( envolvido, tipo );
  end;
end;

function TAdministradoraTargetVersao001.consultaParticipante( var temCadastro : boolean; envolvido : TBeanEnvolvido; Tipo : integer ) : boolean;
var
   xml : String;
   action : string;
   retorno : string;
   rp : boolean;
begin
   temCadastro := false;
   try
      with tObterParticipante_ObterParticipante.Create do
      try
         CPFCNPJ := envolvido.cnpj_cpf;
         TipoParticipante := Tipo;
         xml := ( GetAsString );
      finally
         free;
      end;


      action := 'http://tempuri.org/IParticipanteExternal/ObterParticipante';
      retorno := ComunicaWS( xml, action , rp );
      if rp then
      begin
             with tObterParticipanteResponse_ObterParticipanteResponse.CreateFromXmlString( retorno ) do
             try
                rp := ObterParticipanteResult.Sucesso;
                if not rp then
                   msgError := ObterParticipanteResult.MensagemRetorno
                else
                begin
                   TemCadastro := ObterParticipanteResult.Participante.CPFCNPJ = envolvido.cnpj_cpf;
                   //ObterParticipanteResult.Participante.IdParticipanteOperacaoTransporte;
                end;
             finally
                free;
             end;
      end;

     result := rp;
   except
      on e:exception do
      begin
          result := false;
          self.msgError := 'consultaParticipante:'+e.message;
      end;
   end;

end;


function TAdministradoraTargetVersao001.CarregaDadosParticipante( envolvido : TBeanEnvolvido; participante : tBaseParticipanteRequestResponse; Tipo : integer ) : boolean;
begin
   with participante do
    begin
      IdDmTipoPessoa := iif(length( envolvido.cnpj_cpf) > 12, '2', '1');
      Nome := envolvido.nome;
      RazaoSocial := envolvido.nome;
      CPFCNPJ := envolvido.cnpj_cpf;
      Endereco := envolvido.endereco;
      Bairro := envolvido.bairro;
      CEP := envolvido.cep;
      TipoParticipante := 'DEST;CONS;CONT;SUBC';
      Email := 'sem@email.com';
      IdMunicipio  := strToIntDef( envolvido.ibge, 0);
      RNTRC        := '';
      Ativo        := true;
    end;
end;



function TAdministradoraTargetVersao001.AtualizarParticipante( envolvido : TBeanEnvolvido; Tipo : integer ) : boolean;
var
  rp : boolean;
  XML : string;
  retorno : string;
  action : string;
begin
   try
      with tAtualizarParticipante_AtualizarParticipante.create do
      try
         participante := tBaseParticipanteRequestResponse.create;
         CarregaDadosParticipante( envolvido, participante, tipo );
         participante.IdParticipanteOperacaoTransporte := 142;
         xml := ( GetAsString );
      finally
         free;
      end;
      action := 'http://tempuri.org/IParticipanteExternal/AtualizarParticipante';
      retorno := ComunicaWS( xml, action, rp );
      if rp then
      begin
          with tCadastrarParticipanteResponse_CadastrarParticipanteResponse.CreateFromXmlString( retorno ) do
          try
             rp := CadastrarParticipanteResult.Sucesso;
             if not rp then
             begin
                if pos('O CPF/CNPJ do Participante informado já existe', CadastrarParticipanteResult.MensagemRetorno) > 0 then
                   rp := true
                else
                   msgError := CadastrarParticipanteResult.MensagemRetorno;
             end;
             //idMotorista := CadastrarMotoristaResult.CodigoMotorista;
          finally
             free;
          end;
      end;

     result := rp;
   except
      on e:exception do
      begin
          result := false;
          self.msgError := 'AtualizarParticipante:'+e.message;
      end;
   end;
end;


function TAdministradoraTargetVersao001.CadastraParticipante( envolvido : TBeanEnvolvido; Tipo : integer ) : boolean;
var
  rp : boolean;
  XML : string;
  retorno : string;
  action : string;
begin
   try
      with tCadastrarParticipante_CadastrarParticipante.create do
      try
         participante := tBaseParticipanteRequestResponse.create;
         CarregaDadosParticipante( envolvido, participante, tipo );
         xml := ( GetAsString );
      finally
         free;
      end;
      action := 'http://tempuri.org/IParticipanteExternal/CadastrarParticipante';
      retorno := ComunicaWS( xml, action, rp );
      if rp then
      begin
          with tCadastrarParticipanteResponse_CadastrarParticipanteResponse.CreateFromXmlString( retorno ) do
          try
             rp := CadastrarParticipanteResult.Sucesso;
             if not rp then
             begin
                if pos('O CPF/CNPJ do Participante informado já existe', CadastrarParticipanteResult.MensagemRetorno) > 0 then
                   rp := AtualizarParticipante( envolvido, tipo )
                else
                   msgError := CadastrarParticipanteResult.MensagemRetorno;
             end;
             //idMotorista := CadastrarMotoristaResult.CodigoMotorista;
          finally
             free;
          end;
      end;

     result := rp;
   except
      on e:exception do
      begin
          result := false;
          self.msgError := 'CadastraParticipante:'+e.message;
      end;
   end;
end;

function TAdministradoraTargetVersao001.insereContratoFrete: boolean;
   function GetContrato( var retornoProcessamento : boolean ) : string;
   var
       vParcela : tOperacaoTransporteParcelaRequest;
       vVeiculo : tOperacaoTransporteVeiculoResponse;
       vParticipante : tOperacaoTransporteParticipanteRequest;
       vTriagem      : tOperacaoTransporteTriagemRequest;
       nparcela : integer;
   begin
      with tCadastrarOperacaoDescritiva_CadastrarOperacaoDescritiva.Create do
      try
         operacaoRequest := tOperacaoTransporteRequest.Create;
         with operacaoRequest do
         begin
            NCM                := self.Bean.NCM;

            ProprietarioCarga  := 'D';
            TipoOperacao       := '1'; //viagem padrao
            PesoCarga          := bean.pesoSaida;
            MunicipioOrigemCodigoIBGE := strToIntDef(bean.cliente_Origem.ibge,0);
            MunicipioDestinoCodigoIBGE :=strToIntDef(bean.cliente_Destino.ibge,0);
            DataHoraInicio             := now;
            DataHoraTermino            := now;
            DataHoraInicioCadastro     := now;
            DataHoraFimCadastro        := now;
            CPFCNPJContratado          := bean.contratado.contratado_cnpj_cpf;
            ValorFrete                 := bean.valorTotalMotorista;
            ValorCombustivel           := 0;
            ValorPedagio               := bean.pedagio.valorPedagio;
            ValorDespesas              := 0;
            ValorImpostoSestSenat      := bean.valorSest + bean.valorSenat;
            ValorImpostoIRRF           := bean.valorIRRF;
            ValorImpostoINSS           := bean.valorINSS;
            ValorImpostoIcmsIssqn      := 0;
            ParcelaUnica               := ((bean.valorSaldo=0) and (bean.valorAdiantamento<>0)) or ((bean.valorSaldo<>0) and (bean.valorAdiantamento=0));

            if bean.pedagio.administradorPedagio = 'VIAFACIL' then
               ModoCompraValePedagio      := 2
            else if bean.pedagio.administradorPedagio = 'MANUAL' then
               ModoCompraValePedagio      := 3
            else if (bean.pedagio.administradorPedagio = '') and (bean.pedagio.valorPedagio<>0) then
               ModoCompraValePedagio      := 1
            else if bean.pedagio.administradorPedagio = 'VECTIO' then
               ModoCompraValePedagio      := 1
            else if bean.pedagio.administradorPedagio = '' then
               ModoCompraValePedagio      := 4
            else
               ModoCompraValePedagio      := 1;

            CategoriaVeiculo           := converteCategoria( bean.veiculo.categoriaveiculo );
            NomeMotorista              := bean.motorista.nome;
            CPFMotorista               := strToInt64( bean.motorista.cpf );
            RNTRCMotorista             := '';
            Quitacao                   := iif( self.Bean.ParametrosOperadora.values['Quitacao']='', false, self.Bean.ParametrosOperadora.values['Quitacao']='S');

            ItemFinanceiro             := self.bean.numeroContratoFrete;

            Parcelas                   := tArrayOfOperacaoTransporteParcelaRequest.create;

            if bean.valorAdiantamento > 0 then
            begin
               nparcela := 1;
               if Bean.ParcelasAdiantamento.first <> nil then
               repeat
                   inc(nparcela);
                   vParcela := tOperacaoTransporteParcelaRequest.Create;
                   vParcela.DescricaoParcela := 'Adiantamento';
                   if nparcela = 1 then
                     vParcela.TipoDaParcela    := 1
                   else
                      vParcela.TipoDaParcela    := 2;
                   vParcela.Valor            := bean.ParcelasAdiantamento.Item.valor;
                   vParcela.NumeroParcela    := nparcela;//
                   vParcela.DataVencimento   := bean.ParcelasAdiantamento.Item.dias + now;
                   if self.Bean.tipoPagamentoContratoFrete =  '1' then // cartao
                   begin
                      vParcela.FormaPagamento   := 1;
                      vParcela.CartaoPagamento  := self.bean.numeroCartaoFrete;
                   end
                   else
                   begin

                      vParcela.CodigoBanco      := bean.DadosDeposito.banco;
                      vParcela.AgenciaDeposito  := bean.DadosDeposito.agencia;
                      vParcela.ContaDeposito    := bean.DadosDeposito.conta;
                      vParcela.DigitoContaDeposito:= bean.DadosDeposito.dvConta;
   
                   end;
                   Parcelas.OperacaoTransporteParcelaRequest.AddObject( 'A', vParcela );
               until ( bean.ParcelasAdiantamento.Next = nil);
            end;

            if bean.valorSaldo > 0 then
            begin
               vParcela := tOperacaoTransporteParcelaRequest.Create;
               vParcela.DescricaoParcela := 'Saldo';
               vParcela.Valor            := bean.valorSaldo;
               vParcela.NumeroParcela    := 1;//
               vParcela.TipoDaParcela    := 3;
               vParcela.DataVencimento   := now + 30;
               if self.Bean.tipoPagamentoContratoFrete =  '1' then // cartao
               begin
                  vParcela.FormaPagamento   := 1;
                  vParcela.CartaoPagamento  := self.bean.numeroCartaoFrete;
               end
               else
               begin
                  vParcela.CodigoBanco      := bean.DadosDeposito.banco;
                  vParcela.AgenciaDeposito  := bean.DadosDeposito.agencia;
                  vParcela.ContaDeposito    := bean.DadosDeposito.conta;
                  vParcela.DigitoContaDeposito:= bean.DadosDeposito.dvConta;
               end;
               Parcelas.OperacaoTransporteParcelaRequest.AddObject(  'Q', vParcela );
            end;


            Veiculos := tArrayOfOperacaoTransporteVeiculoRequest.Create;
            vVeiculo := tOperacaoTransporteVeiculoResponse.create;

            vVeiculo.Placa := bean.veiculo.placa;
            vVeiculo.RNTRC := bean.veiculo.rntrc_codigo;
            veiculos.OperacaoTransporteVeiculoRequest.AddObject('V', vVeiculo  );

            if  bean.veiculo.carretas.first <> nil then
            repeat
              vVeiculo := tOperacaoTransporteVeiculoResponse.create;
              vVeiculo.Placa := bean.veiculo.carretas.Item.placa;
              vVeiculo.RNTRC := Bean.veiculo.carretas.Item.rntrc_codigo;
              veiculos.OperacaoTransporteVeiculoRequest.AddObject('V', vVeiculo  );
            until bean.veiculo.carretas.Next=nil;

            Participantes := tArrayOfOperacaoTransporteParticipanteRequest.Create;


            vParticipante := tOperacaoTransporteParticipanteRequest.Create;
            vParticipante.CPFCNPJParticipante := bean.cliente_Destino.cnpj_cpf;
            vParticipante.TipoParticipante    := 2;
            Participantes.OperacaoTransporteParticipanteRequest.AddObject('participante', vParticipante );


            Triagem := tArrayOfOperacaoTransporteTriagemRequest.create;
{
            if Bean.DocumentosEntrega.first <> nil then
            repeat
                vTriagem      := tOperacaoTransporteTriagemRequest.create;
                vTriagem.NomeDocumentoObjeto        := Bean.DocumentosEntrega.Item.Codigo+'-'+Bean.DocumentosEntrega.Item.Documento;
                vTriagem.ExigeUpload                := 'S';
                vTriagem.ExigeDocumentoObjetoFisico := 'S';
                vTriagem.DocumentoObjeto            := Bean.DocumentosEntrega.Item.Documento;
                Triagem.OperacaoTransporteTriagemRequest.AddObject( Bean.DocumentosEntrega.Item.Codigo, vTriagem )
            until Bean.DocumentosEntrega.Next=nil;

            with Split( ';', Trim( Bean.ParametrosOperadora.Values['DocumentoTriagem'] ) ) do
            try
               while count > 0 do
               begin
                vTriagem      := tOperacaoTransporteTriagemRequest.create;
                vTriagem.NomeDocumentoObjeto        := strings[0];
                vTriagem.ExigeUpload                := 'S';
                vTriagem.ExigeDocumentoObjetoFisico := 'S';
                vTriagem.DocumentoObjeto            := strings[0];
                Triagem.OperacaoTransporteTriagemRequest.AddObject( Bean.DocumentosEntrega.Item.Codigo, vTriagem );
                delete(0);
               end;
            finally
               Free;
            end;
 }
         end;
         result := ( GetAsString );
         retornoProcessamento := true;
      except
         on e:Exception do
         begin
            retornoProcessamento:=False;
            msgError := e.Message;
         end;
      end;
   end;

   function OperacaoAberta( xml : string ) : boolean;
   begin
      try
         with tCadastrarOperacaoDescritivaResponse_CadastrarOperacaoDescritivaResponse.CreateFromXmlString( xml ) do
         try
           with CadastrarOperacaoDescritivaResult do
           begin
              if Sucesso then
              begin
                  result := true;
                  self.Protocolo := IntToStr( IdOperacaoTransporte );
              end
              else
              begin
                  result := false;
                  msgError := MensagemRetorno;
              end;
           end;
         finally
           free;
         end;
      except
         on e:Exception do
         begin
            result := false;
            msgError := 'OperacaoAberta:'+e.Message;
         end;
      end;
   end;

var
  rp : boolean;
  XML : string;
  retorno : string;
  idMotorista,
  idTransportador : integer;
begin
   result := false;

   result := ProcessaTransportador();
   result := result and  ProcessaMotorista( idMotorista );
   result := result and  ProcessaCartao;
   result := result and  processaParticipantes;

   XML:= GetContrato( rp );
   result := result and rp;
   if result  then
   begin

     retorno := ComunicaWS( xml, 'http://tempuri.org/IOperacaoTransporteExternal/CadastrarOperacaoDescritiva', rp );

     result := rp and (retorno <> '');
     if result then
     begin
        if OperacaoAberta( retorno ) then
        begin
           situacao := tsrAguardando;
        end
        else
           situacao := tsrErro;
     end
     else
     begin
        Situacao := tsrErro {'A'};
        msgError := 'Não houve resposta da TARGET, verifique junto a TARGET';
     end;
   end
   else
   begin
      Situacao := tsrErro {E};
   end;
end;


function TAdministradoraTargetVersao001.ObterOperacaoPorId_CIOT( Operacao : string ) : boolean;
var
   xml,
   retorno : string;
   rp : boolean;
   parcela : tOperacaoTransporteParcelasResponse;
begin
   try
      with tObterOperacaoPorId_ObterOperacaoPorId.Create do
      try
         idOperacaoTransporte := strToInt64def(self.Bean.NumeroProtocoloProcessamento, -1);
         xml := ( GetAsString );
      finally
         free;
      end;


      retorno := ComunicaWS( xml, 'http://tempuri.org/IOperacaoTransporteExternal/ObterOperacaoPorId', rp );

      result := rp and (retorno <> '');
      if result then
      begin
         with tObterOperacaoPorIdResponse_ObterOperacaoPorIdResponse.CreateFromXmlString( retorno ) do
         try
            result := ObterOperacaoPorIdResult.Sucesso;
            if ObterOperacaoPorIdResult.Sucesso then
            begin
               if ObterOperacaoPorIdResult.OperacaoTransporte.Parcelas.OperacaoTransporteParcelasResponse.Count > 0 then
               begin
                 parcela := tOperacaoTransporteParcelasResponse(ObterOperacaoPorIdResult.OperacaoTransporte.Parcelas.OperacaoTransporteParcelasResponse.first);
                 self.CIOT := StringReplace(parcela.CIOTCompleto, '/', '', []);;
               end
               else
                 self.CIOT := ObterOperacaoPorIdResult.OperacaoTransporte.CIOT;

            end
            else
            begin
               Situacao := tsrErro {E};
               msgError := ObterOperacaoPorIdResult.MensagemRetorno;
            end;
         finally
            free;
         end;
      end;
   except
      on e : exception do begin
         Result := true;
         Situacao := tsrErro {E};
         MsgError := 'verificaRetorno:ObterOperacaoPorId_CIOT:'+e.message;
      end;
   end;
end;

function TAdministradoraTargetVersao001.verificaRetorno: boolean;
var
   xml,
   retorno : string;
   rp : boolean;
begin
   try
      situacao := tsrAguardando {'A'};
      with tRegistrarOperacao_RegistrarOperacao.Create do
      try
         idOperacao := strToInt64def(self.Bean.NumeroProtocoloProcessamento, -1);
         xml := ( GetAsString );
      finally
         free;
      end;


      retorno := ComunicaWS( xml, 'http://tempuri.org/IOperacaoTransporteExternal/RegistrarOperacao', rp );

      result := rp and (retorno <> '');
      if result then
      begin
         self.Protocolo := self.Bean.NumeroProtocoloProcessamento;
         with tRegistrarOperacaoResponse_RegistrarOperacaoResponse.CreateFromXmlString( retorno ) do
         try
            if RegistrarOperacaoResult.Sucesso then
            begin
               Situacao := tsrAprovado {E};
               self.CIOT := RegistrarOperacaoResult.NumeroCIOT+RegistrarOperacaoResult.ProtocoloCIOT;
            end
            else
            begin
               if pos('Ocorreu um erro não esperado ao efetuar o procedimento', RegistrarOperacaoResult.MensagemRetorno) > 0 then
                 situacao := tsrAguardando
               else if pos('Operação já se encontra declarada',RegistrarOperacaoResult.MensagemRetorno) > 0 then
               begin
                 if ObterOperacaoPorId_CIOT( self.Bean.NumeroProtocoloProcessamento ) then
                 begin
                    if self.CIOT <> '' then
                      Situacao := tsrAprovado {E}
                    else
                    begin
                       Situacao := tsrErro {E};
                       msgError := RegistrarOperacaoResult.MensagemRetorno;
                    end;
                 end;
               end
               else
               begin
                  Situacao := tsrErro {E};
                  msgError := RegistrarOperacaoResult.MensagemRetorno;
               end;
            end;
         finally
            free;
         end;
      end;
      Result := True;
   except
      on e : exception do begin
         Result := true;
         Situacao := tsrErro {E};
         MsgError := 'verificaRetorno:RegistrarOperacao:'+e.message;
      end;
   end;
end;

function TAdministradoraTargetVersao001.cancelaContratoFrete: boolean;
var
   xml,
   retorno : string;
   rp : boolean;
   txtcancelamento : utxt_pef_can_v1_0.TCancelamento_0000;
begin
   try

      txtcancelamento := utxt_pef_can_v1_0.TCancelamento_0000( self.BeanTXT );

      with tCancelarOperacao_CancelarOperacao.Create do
      try
         idOperacao := strToInt64def(self.Bean.NumeroViagem, -1);
         motivoCancelamento := txtcancelamento.Motivo;
         xml := ( GetAsString );
      finally
         free;
      end;


      retorno := ComunicaWS( xml, 'http://tempuri.org/IOperacaoTransporteExternal/CancelarOperacao', rp );

      result := rp and (retorno <> '');
      if result then
      begin
         with tCancelarOperacaoResponse_CancelarOperacaoResponse.CreateFromXmlString( retorno ) do
         try

            if CancelarOperacaoResult.Sucesso then
            begin
               Situacao := tsrAprovado {E};
               self.CIOT := CancelarOperacaoResult.ProtocoloCancelamento;
               self.Protocolo := intToStr( CancelarOperacaoResult.IdCancelamentoOperacaoTransporte );
            end
            else
            begin
               Situacao := tsrErro {E};
               msgError := CancelarOperacaoResult.MensagemRetorno;
            end;
         finally
            free;
         end;
      end;
      Result := True;
   except
      on e : exception do begin
         Result := true;
         Situacao := tsrErro {E};
         MsgError := 'cancelaContratoFrete:'+e.message;
      end;
   end;
end;

end.
