unit uAdministradoraRepomVersao001;

interface

uses uAdministradoraAbstract, uICFBase, T5XmlSerializa,
     urdc_TiposPadrao_v1_00,
     urdc_ManterViagem_v1_00,
     uIntegracaoContratofreteBean;

type
   TAdministradoraRepomdVersao001 = class( TAdministradoraAbstract )
   private
      ParametrosSerializacao : T5XmlSerializa.rSerializacao;
      repom : TBeanOperadoraRepom;
      {-- Dados Conhecimento --}
      SolicitacaoRota : Integer;
    function IntegraDadosCadastroNacional : boolean;
    function assinadocumento(xml: string): string;
    function ConsultaContratoFinanceiroContabil( contratoRepom : string ) : Boolean;
    function ConsultaContratoContrato(contratoRepom: string): boolean;


   public
    procedure SetDadosOperadora(const Value: TBeanOperadora); override;
    function getCodigoAdministradora   : integer; override;

    function insereContratoFrete       : boolean; override;
    function inserePreValidacao( Cartao, Caminhao : string; Rota : integer; ValorFrete, ValorAdiantamento : extended) : boolean; override;

    function cancelaContratoFrete      : boolean; override;

    function ExtratoDe( Data : TDateTime  ) : boolean; override;
    function ConsultaContratoFrete      : boolean; override;

    constructor Create;
    destructor Destroy; override;
   end;


implementation

uses classes, uICFFuncoes, urpm_Cadastros_v1_00, urpm_ValidacaoAberturaContrato_v1_00, sysutils,
  urpm_soap_v1_00, Variants,
  urpm_AberturaContratoRetorno_v1_00,
  urpm_AberturaContrato_v1_00,
  urpm_CancelamentoContrato_v1_00, urpm_EmiteContabil_v1_00,
  utxt_pef_ext_v1_0, urpm_jxml_EmiteFinanceiro_v1_00,
  urpm_jxml_ConsultaContrato_v1_00, utxt_pef_con_v1_0;

function GetCategoriaVeiculo( categoriaPadrao : integer ) : string;
begin
   case categoriaPadrao of
     0  : result := '';
     1  : result := '9';
     2  : result := '9';
     3  : result := '9';
     4  : result := '5';
     5  : result := '1';
     6  : result := '4';
     7  : result := '3';
     8  : result := '1';
     9  : result := '1';
     10 : result := '1';
     11 : result := '1';
     12 : result := '1';
     13 : result := '0';
     14 : result := '0';
     15 : result := '';
     16 : result := '';
   end;
end;

{ TAdministradoraRepomdVersao001 }

constructor TAdministradoraRepomdVersao001.Create;
begin
   inherited Create( nil );
   ParametrosSerializacao.CriaTagParaArray := true;
   ParametrosSerializacao.FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
   ParametrosSerializacao.FormatSettings.DateSeparator := '/';
   ParametrosSerializacao.FormatSettings.ShortTimeFormat := 'hh:nn';
   ParametrosSerializacao.FormatSettings.DecimalSeparator := '.';
   ParametrosSerializacao.CriaTagVazia := false;
end;

destructor TAdministradoraRepomdVersao001.Destroy;
begin
  inherited;
end;


function TAdministradoraRepomdVersao001.assinadocumento( xml : string ) : string;
begin
   result := '<strCliente>'+repom.usuario+'</strCliente>'+
             '<strAssinaturaDigital>'+repom.senha+'</strAssinaturaDigital>'+
             xml;
end;

function TAdministradoraRepomdVersao001.IntegraDadosCadastroNacional : boolean;

  function GeraXMLVeiculo( var xml : string  ) : boolean;
  var
     veiculo : Tveiculo;
     mensagem : string;
  begin
     try
        veiculo := Tveiculo.Create;
        try
           if bean.veiculo.contratado_cnpj_cpf = '' then raise Exception.Create('Não foi informado o cnpj/cpf do contratado!');
           veiculo.contratado_cnpj_cpf := bean.veiculo.contratado_cnpj_cpf;
           if bean.veiculo.placa = '' then raise Exception.Create('Não foi informado a placa!');
           veiculo.placa := bean.veiculo.placa;
           if bean.veiculo.numero_eixos = '' then raise Exception.Create('Não foi informado o número de eixos!');
           veiculo.numero_eixos := bean.veiculo.numero_eixos;
           veiculo.renavam := bean.veiculo.renavam;
           veiculo.tipo_veiculo := GetCategoriaVeiculo( Bean.veiculo.categoriaveiculo );
           if bean.veiculo.rntrc_codigo = '' then raise Exception.Create('Não foi informado a rntrc!');
           veiculo.rntrc_codigo := bean.veiculo.rntrc_codigo;

           if T5XmlSerializa._Serializa( veiculo, mensagem, ParametrosSerializacao ) then
              xml := urpm_soap_v1_00.ParseText( mensagem, false )
           else
              raise exception.create( mensagem );
        finally
           veiculo.free;
        end;
        result := true;
     except
        on e:Exception do
        begin
           MsgError := 'Não foi possivel gerar o arquivo de veiculo.'+e.Message;
           result := false;
           LogIt( e.message );
        end;
     end;
  end;

  function GeraXMLCarreta( var xml : string  ) : boolean;
  var
     carreta : urpm_Cadastros_v1_00.Tcarreta;
     mensagem : string;
  begin
     if bean.veiculo.carretas.Last <> nil then
     begin
        try
           carreta := urpm_Cadastros_v1_00.Tcarreta.Create;
           try
              carreta.contratado_cnpj_cpf := bean.veiculo.carretas.item.contratado_cnpj_cpf;
              carreta.placa := bean.veiculo.carretas.item.placa;
              if bean.veiculo.carretas.item.numero_eixos = '' then raise Exception.Create('Não foi informado numero de eixos da carreta!');
              carreta.numero_eixos := bean.veiculo.carretas.item.numero_eixos;
              carreta.renavam := bean.veiculo.carretas.item.renavam;
              if bean.veiculo.carretas.item.rntrc_codigo = '' then raise Exception.Create('Não foi informado o rntrc!');
              carreta.rntrc_codigo := bean.veiculo.carretas.item.rntrc_codigo;

              if T5XmlSerializa._Serializa( carreta, mensagem, ParametrosSerializacao ) then
                 xml := urpm_soap_v1_00.ParseText( mensagem, false )
              else
                 raise exception.create( mensagem );
           finally
              carreta.free;
           end;
           result := true;
        except
           on e:Exception do
           begin
              MsgError := 'Não foi possivel gerar o arquivo de veiculo.'+e.Message;
              result := false;
              LogIt( e.message );
           end;
        end;
     end else
     begin
        xml := '';
        result := true;
     end;
  end;

  function GeraXMLContratado( var xml : string  ) : boolean;
  var
     contratado : urpm_Cadastros_v1_00.Tcontratado;
     mensagem : string;
     vTelefone, vddd  : string;
  begin
     try
        contratado := urpm_Cadastros_v1_00.Tcontratado.Create;
        try
           contratado.contratado_cnpj_cpf                             := bean.contratado.contratado_cnpj_cpf;
           if bean.contratado.pessoa_tipo = 'J' then
              contratado.pessoa_tipo                                     := '1'
           else
              contratado.pessoa_tipo                                     := '0';
           if bean.contratado.nome_contratado = '' then raise Exception.Create('Não foi informado o nome');
           contratado.nome_contratado                                 := bean.contratado.nome_contratado;
           contratado.nome_fantasia                                   := bean.contratado.nome_fantasia;
           if bean.contratado.cep = '' then raise Exception.Create('Não foi informado o cep');
           contratado.cep                                             := bean.contratado.cep;

           vTelefone := bean.contratado.telefone1;
           DivideTelefone( vTelefone, vddd );
           if vddd = '' then raise Exception.Create('Não foi informado o DDD');
           contratado.telefone1_ddd                                   := iif( (vddd+' ')[1]='0', copy( vddd, 2,2), vddd);
           if vtelefone = '' then raise Exception.Create('Não foi informado o telefone');
           contratado.telefone1                                       := vtelefone;

           vTelefone := bean.contratado.telefone2;
           DivideTelefone( vTelefone, vddd );
           contratado.telefone2_ddd                                   := iif( (vddd+' ')[1]='0', copy( vddd, 2,2), vddd);
           contratado.telefone2                                       := vtelefone;

           vTelefone := bean.contratado.celular;
           DivideTelefone( vTelefone, vddd );
           contratado.celular_ddd                                     := iif( (vddd+' ')[1]='0', copy( vddd, 2,2), vddd);
           contratado.celular                                         := vTelefone;
           contratado.email                                           := bean.contratado.email;
           contratado.contato                                         := bean.contratado.contato;
           contratado.dependentes                                     := bean.contratado.dependentes;
           contratado.inss_codigo                                     := bean.contratado.inss_codigo;
           if bean.contratado.rntrc_codigo = '' then raise Exception.Create('Não foi informado o nome');
           contratado.rntrc_codigo                                    := bean.contratado.rntrc_codigo;

           if Bean.tipoPagamentoContratoFrete <> '1' then // deposito em conta
           begin
              contratado.dados_bancarios.banco                           := bean.DadosDeposito.banco;
              contratado.dados_bancarios.agencia                         := bean.DadosDeposito.agencia;
              contratado.dados_bancarios.agencia_dv                      := bean.DadosDeposito.dvAgendia;
              contratado.dados_bancarios.conta_corrente                  := bean.DadosDeposito.conta;
              contratado.dados_bancarios.conta_corrente_dv               := bean.DadosDeposito.dvConta;
              contratado.dados_bancarios.titular_conta_corrente          := bean.contratado.nome_contratado;
              contratado.dados_bancarios.titular_cnpj_cpf_conta_corrente := bean.contratado.contratado_cnpj_cpf;
           end
           else
           begin
              contratado.dados_bancarios.banco                           := '001';
              contratado.dados_bancarios.agencia                         := '0';
              contratado.dados_bancarios.agencia_dv                      := '0';
              contratado.dados_bancarios.conta_corrente                  := '0';
              contratado.dados_bancarios.conta_corrente_dv               := '0';
              contratado.dados_bancarios.titular_conta_corrente          := 'A IDENTIFICAR';
              contratado.dados_bancarios.titular_cnpj_cpf_conta_corrente := bean.contratado.contratado_cnpj_cpf;
           end;


           if T5XmlSerializa._Serializa( contratado, mensagem, ParametrosSerializacao ) then
              xml := urpm_soap_v1_00.ParseText( mensagem, false )
           else
              raise exception.create( mensagem );
        finally
           contratado.free;
        end;
        result := true;
     except
        on e:Exception do
        begin
           MsgError := 'Não foi possivel gerar o arquivo de veiculo.'+e.Message;
           result := false;
           LogIt( e.message );
        end;
     end;
  end;

  function GeraXMLMotorista( var xml : string  ) : boolean;
  var
     motorista : urpm_Cadastros_v1_00.tmotorista;
     mensagem : string;
     vTelefone, vddd : string;
  begin
     try
        motorista := urpm_Cadastros_v1_00.tmotorista.Create;
        try
           motorista.contratado_cnpj_cpf := bean.contratado.contratado_cnpj_cpf;
           motorista.cpf                 := bean.motorista.cpf;
           motorista.nome                := bean.motorista.nome;
           if bean.motorista.cep = '' then raise Exception.Create('Não foi informado o CEP');
           motorista.cep                 := bean.motorista.cep;

           vTelefone := bean.motorista.telefone;
           DivideTelefone( vTelefone, vddd );

           if vddd = '' then raise Exception.Create('Não foi informado o DDD');
           motorista.telefone_ddd        := iif( (vddd+' ')[1]='0', copy( vddd, 2,2), vddd);
           if vTelefone = '' then raise Exception.Create('Não foi informado o telefone');
           motorista.telefone            := vTelefone;

           vTelefone := bean.motorista.celular;
           DivideTelefone( vTelefone, vddd );

           motorista.celular_ddd         := iif( (vddd+' ')[1]='0', copy( vddd, 2,2), vddd);
           motorista.celular             := vTelefone;
           motorista.email               := bean.motorista.email;
           if bean.motorista.data_nascimento <> 0 then
              motorista.data_nascimento     := DateTimeToStr(bean.motorista.data_nascimento, ParametrosSerializacao.FormatSettings )
           else
              motorista.data_nascimento     := '';
           if bean.motorista.rg = '' then raise Exception.Create('Não foi informado o RG');
           motorista.rg                  := bean.motorista.rg;
           if bean.motorista.carteira_habilitacao = '' then raise Exception.Create('Não foi informado a habilitacao');
           motorista.carteira_habilitacao               := bean.motorista.carteira_habilitacao;
           if bean.motorista.carteira_habilitacao_dt_val = '' then raise Exception.Create('Não foi informado o validade da habilitacao');
           if bean.motorista.carteira_habilitacao_dt_val <> '' then
              motorista.carteira_habilitacao_data_validade := formatDateTime( 'dd/mm/yyyy', strToDateTime(bean.motorista.carteira_habilitacao_dt_val) )
           else
              motorista.carteira_habilitacao_data_validade := '';

           if T5XmlSerializa._Serializa( motorista, mensagem, ParametrosSerializacao ) then
              xml := urpm_soap_v1_00.ParseText( mensagem, false )
           else
              raise exception.create( mensagem );
        finally
           motorista.free;
        end;
        result := true;
     except
        on e:Exception do
        begin
           MsgError := 'Não foi possivel gerar o arquivo de veiculo.'+e.Message;
           result := false;
           LogIt( e.message );
        end;
     end;
  end;

var
   xmlveiculo,
   xmlcarreta,
   xmlcontratado,
   xmlmotorista : String;

   xmlfinal : string;

   retorno : wideString;
   DadosRetorno : string;
   ResultadoRetorno : boolean;
   erros : T_erros;

   mensagem : string;
   vii : integer;

begin
  try
      result :=  GeraXMLVeiculo(xmlveiculo);
      if not result then exit;
      if bean.veiculo.carretas.first <> nil then
         result :=  GeraXMLCarreta(xmlcarreta)
      else
         xmlcarreta := '';
      if not result then exit;
      result :=  GeraXMLContratado(xmlContratado);
      if not result then exit;
      result :=  GeraXMLMotorista(xmlMotorista);
      if not result then exit;

      xmlfinal := '<strXmlInContratado>'+ xmlcontratado +'</strXmlInContratado>'+
                  '<strXmlInMotorista>'+xmlmotorista+'</strXmlInMotorista>'+
                  '<strXmlInVeiculo>'+xmlveiculo+'</strXmlInVeiculo>'+
                  '<strXmlInCarreta>'+xmlcarreta+'</strXmlInCarreta>';

      xmlfinal := self.assinadocumento( xmlFinal );

      ArquivoGerado.Add(  '<IntegraDadosCadastroNacional>'+xmlfinal+'</IntegraDadosCadastroNacional>' );

      retorno :=  urpm_soap_v1_00.SOAPGet( repom.WebServer, 'IntegraDadosCadastroNacional', xmlfinal, DadosOperadora.proxy.proxy, DadosOperadora.proxy.proxyusuario, DadosOperadora.proxy.proxysenha );
      ArquivoRecebido.Add( retorno );
      if not urpm_soap_v1_00.GetRetornoIntegraDadosCadastroNacional( retorno, DadosRetorno, ResultadoRetorno ) then
      begin
         msgError := DadosRetorno;
         result := false;
      end
      else
      begin
         result := ResultadoRetorno;
         if not result then
         begin
            erros := T_erros.Create;
            try
               if T5XmlSerializa._DeSerializa( erros, DadosRetorno, mensagem, ParametrosSerializacao ) then
               begin
                  for vii:=0 to length( Erros.erros ) -1 do
                    with TErro( Erros.erros[vii] ) do
                    begin
                       msgError:= erro_codigo+' - '+erro_descricao;
                    end;
               end
               else
               begin
                  result := false;
                  msgError := 'Não foi possivel desSerializar os dados '#10+mensagem+' '#10+DadosRetorno;
               end;
            finally
               erros.free;
            end;
         end;
      end;
  except
    on e:exception do
    begin
       msgError := e.Message;
       result := false;
       Situacao := tsrErro {E};
       LogIt( e.message );
    end
  end;
end;

function TAdministradoraRepomdVersao001.getCodigoAdministradora: integer;
begin
  result := 2;
end;

function TAdministradoraRepomdVersao001.insereContratoFrete: boolean;
   function GerXMLAberturaContrato( var xml : string ) : Boolean;
   var
      EmiteContrato : tprocesso_transporte;
      mensagem : string;
   begin
      result := false;
      try
        EmiteContrato := tprocesso_transporte.create;
        with EmiteContrato do try
           with dados_operacionais do
           begin
              if bean.ParametrosOperadora.Values['OPERACAO_CODIGO'] = '' then raise Exception.Create('Não foi informado a OPERACAO_CODIGO!');
              operacao_codigo            := bean.ParametrosOperadora.Values['OPERACAO_CODIGO'];
              if self.SolicitacaoRota = 0 then raise Exception.Create('Não foi informado a solicitacao de rota!');
              solicitacao_roteiro_codigo := IntToStr(self.SolicitacaoRota ); //bean.rota.codigoRota;
              //if bean.ParametrosOperadora.Values['ROTEIRO_IDA_VOLTA'] = '' then raise Exception.Create('Não foi informado a ROTEIRO_IDA_VOLTA!');
              roteiro_ida_volta          := Copy(bean.ParametrosOperadora.Values['ROTEIRO_IDA_VOLTA']+'0',1,1);
              if Bean.codigo_filial = '' then raise Exception.Create('Não foi informado a Filial do cliente!');
              filial_codigo_cliente      := Bean.codigo_filial;
              if Bean.numeroContratoFrete = '' then raise Exception.Create('Não foi informado o processo_cliente_codigo!');
              processo_cliente_codigo    := Bean.numeroContratoFrete;
              if Bean.numeroCartaoFrete = '' then
                 raise Exception.Create('O numero do cartão não foi informado!');
              if Bean.numeroCartaoFrete = '' then raise Exception.Create('Não foi informado o cartao!');
              cartao_codigo              := Bean.numeroCartaoFrete;
              usuario                    := iIf(Bean.usuario='', 'GERAL',Bean.usuario);
           end;
           with configuracoes_viagem do
           begin
              data_saida := FormatDateTime( ParametrosSerializacao.FormatSettings.ShortDateFormat ,Now );
              hora_saida := FormatDateTime( ParametrosSerializacao.FormatSettings.ShortTimeFormat ,Now );
           end;
           with documentos_integrados do
           begin
              with conhecimentos do
              begin
                 with AddConhecimentos do
                 begin
                    ctrc_codigo := Bean.documento;
                    ctrc_serie  := Bean.serie_documento;
                    ctrc_filial_codigo_cliente := Bean.codigo_filial;
                    documento_tipo := Copy(bean.ParametrosOperadora.Values['TIPO_DOCUMENTO']+'0',1,1);
                    with nfs do
                    begin
                       if bean.NotasFiscais.first <> nil then
                       repeat
                          with addnf do
                          begin
                             if Length(Bean.NotasFiscais.item.NumeroNota) = 44 then
                             begin
                                nf_codigo := Copy(Bean.NotasFiscais.item.NumeroNota,26,9);
                                nf_serie  := Copy(Bean.NotasFiscais.item.NumeroNota,23,3);
                             end
                             else
                             begin
                                nf_codigo := Bean.NotasFiscais.item.NumeroNota;
                                nf_serie  := Bean.NotasFiscais.item.SerieNota;
                             end;
                             nf_remetente_cnpj := Bean.NotasFiscais.item.Cnpj_Remetente;
                             nf_remetente_razao := Bean.NotasFiscais.item.RazaoSocial_Remetente;
                             nf_destinatario_cnpj := Bean.NotasFiscais.item.Cnpj_Destinatario;
                             nf_destinatario_razao := Bean.NotasFiscais.item.RazaoSocial_Destinatario;
                          end;
                       until Bean.NotasFiscais.Next = nil;
                    end;
                 end;
              end;
           end;
           with dados_contratado do
           begin
              contratado_cnpj_cpf := Bean.contratado.contratado_cnpj_cpf;
              motorista_cpf       := Bean.motorista.cpf;
              cavalo_placa        := Bean.veiculo.placa;
              if Bean.veiculo.carretas.first  <> nil then
              begin
                 carreta_placa       := Bean.veiculo.carretas.Item.placa;
                 carreta_rntrc       := Bean.veiculo.carretas.Item.rntrc_codigo;
              end;
              carreta_numero_eixos:= Bean.veiculo.numero_eixos;
           end;
           with dados_carga do
           begin
              if Bean.NCM = '' then raise Exception.Create('Não foi informado o NCM!');
              antt_ncm_codigo_classificacao_mercadoria := Bean.NCM;
              carga_peso                               := FloatToStr( Bean.pesoSaida, ParametrosSerializacao.FormatSettings );
              carga_volume                             := '';  // não pode enviar
              carga_valor                              := FloatToStr( Bean.valorNotaFiscal, ParametrosSerializacao.FormatSettings );;
           end;
           with dados_frete do
           begin
              valor_frete        := FloatToStr( Bean.valorTotalMotorista, ParametrosSerializacao.FormatSettings );
              valor_adiantamento := FloatToStr( Bean.valorAdiantamento, ParametrosSerializacao.FormatSettings );
           end;
           with movimentos do
           begin
              if bean.valorIRRF > 0 then
              with addmovimento do
              begin
                 movimento_codigo_cliente := '1';
                 valor := FloatToStr( Bean.valorIRRF, ParametrosSerializacao.FormatSettings );
              end;

              if bean.valorINSS > 0 then
              with addmovimento do
              begin
                 movimento_codigo_cliente := '30';
                 valor := FloatToStr( Bean.valorINSS, ParametrosSerializacao.FormatSettings );
              end;


              if (bean.valorSest<> 0) and (bean.valorSenat=0) then
              begin
                 with addmovimento do
                 begin
                    movimento_codigo_cliente := '31';
                    valor := FloatToStr( Bean.valorSest+Bean.valorSenat, ParametrosSerializacao.FormatSettings );
                 end;
              end
              else
              begin
                 if bean.valorSest > 0 then
                 with addmovimento do
                 begin
                    movimento_codigo_cliente := '2';
                    valor := FloatToStr( Bean.valorSest, ParametrosSerializacao.FormatSettings );
                 end;

                 if bean.valorSenat > 0 then
                 with addmovimento do
                 begin
                    movimento_codigo_cliente := '3';
                    valor := FloatToStr( Bean.valorSenat, ParametrosSerializacao.FormatSettings );
                 end;
              end;

              if bean.Descontos.first <> nil then
                 repeat
                    if TBeanDesconto( Bean.Descontos.item ).valor <> 0 then
                    with addmovimento do
                    begin
                       if TBeanDesconto( Bean.Descontos.item ).Observacao = 'SEG' then
                       begin
                          movimento_codigo_cliente := '400';
                          valor                    := FloatToStr( TBeanDesconto( Bean.Descontos.item ).valor, ParametrosSerializacao.FormatSettings );
                       end
                       else
                       if TBeanDesconto( Bean.Descontos.item ).Observacao = 'CAR' then
                       begin
                          movimento_codigo_cliente := '401';
                          valor                    := FloatToStr( TBeanDesconto( Bean.Descontos.item ).valor, ParametrosSerializacao.FormatSettings );
                       end
                       else
                       begin
                          movimento_codigo_cliente := '402';
                          valor                    := FloatToStr( TBeanDesconto( Bean.Descontos.item ).valor, ParametrosSerializacao.FormatSettings );
                       end;
                    end;
                 until Bean.Descontos.Next = nil;

           end;

           if T5XmlSerializa._Serializa( EmiteContrato, mensagem, ParametrosSerializacao ) then
              xml := urpm_soap_v1_00.ParseText( mensagem, false )
           else
              raise exception.create( mensagem );
           result := true;

        finally
           EmiteContrato.Free;
        end;
      except
         on e:Exception do
         begin
            msgError := 'GeraXMLAberturaContrao:'+e.Message;
            result := False;
            LogIt( e.message );
         end;
      end;
   end;
var
   xml : string;
   retorno : string;
   DadosRetorno : string;
   mensagem : string;
   ResultadoRetorno : Boolean;
   erros : T_erros;
   erro : Terro;
   vii : Integer;

   incosistencia : Tinconsistencias;

   pr : urpm_AberturaContratoRetorno_v1_00.tprocesso_transporte;

begin
   try
     result := self.IntegraDadosCadastroNacional();
     ParametrosSerializacao.CriaTagVazia := false;
     if result then
     begin
       result := Self.inserePreValidacao( Bean.numeroCartaoFrete, Bean.veiculo.placa, StrToInt(Bean.rota.codigoRota), Bean.valorTotalMotorista, bean.valorAdiantamento  );
        if result then
        begin
           if GerXMLAberturaContrato( xml  ) then
           begin
              if FindCmdLineSwitch('force', ['-'], True ) then
                 with tStringList.Create do
                 try
                    if FileExists( 'c:\tecinco\contrato.xml') then
                    begin
                      LoadFromFile( 'c:\tecinco\contrato.xml' );
                      xml := urpm_soap_v1_00.ParseText( trim(Text), false );
                    end
                 finally
                    free;
                 end;

              xml := '<strXmlIn>'+ xml +'</strXmlIn>';
              xml := self.assinadocumento( xml );

              xml := UTF8Encode( xml );

              ArquivoGerado.Add( '<EmiteContrato>'+xml+'</EmiteContrato>' );

              retorno :=  urpm_soap_v1_00.SOAPGet( repom.WebServer, 'EmiteContrato', xml, DadosOperadora.proxy.proxy, DadosOperadora.proxy.proxyusuario, DadosOperadora.proxy.proxysenha );

              ArquivoRecebido.Add( retorno );
              retorno := trim(UTF8Decode( retorno ));

              if not urpm_soap_v1_00.GetRetornoAberturaContrato( retorno, DadosRetorno, ResultadoRetorno ) then
              begin
                 msgError := DadosRetorno;
                 result := False;
                 Situacao := tsrErro {E};
              end
              else
              begin
                 result := ResultadoRetorno;
                 if not result then
                 begin
                   erros := T_erros.Create;
                   try
                       if T5XmlSerializa._DeSerializa( erros, DadosRetorno, mensagem, ParametrosSerializacao ) then
                       begin
                          if length( Erros.erros ) = 0 then
                            msgError := ''
                          else
                          for vii:=0 to length( Erros.erros ) -1 do
                            with TErro( Erros.erros[vii] ) do
                            begin
                               msgError:= erro_codigo+' - '+erro_descricao;
                            end;

                          Situacao := tsrErro {E};
                       end
                       else
                       begin
                          Situacao := tsrErro {E};
                          result := false;
                          msgError := 'Não foi possivel desSerializar os dados '#10+mensagem+' '#10+DadosRetorno;
                       end;
                   finally
                      erros.free;
                   end;
                   erro := Terro.Create;
                   try
                       if T5XmlSerializa._DeSerializa( erro, DadosRetorno, mensagem, ParametrosSerializacao ) then
                       begin
                          if erro.erro_codigo<>'' then
                          begin
                              msgError:= erro.erro_codigo+' - '+erro.erro_descricao;
                              Situacao := tsrErro {E};
                          end;
                       end
                       else
                       begin
                          Situacao := tsrErro {E};
                          result := false;
                          msgError := 'Não foi possivel desSerializar os dados '#10+mensagem+' '#10+DadosRetorno;
                       end;
                   finally
                      erro.free;
                   end;

                   incosistencia := Tinconsistencias.Create;
                   try
                       if T5XmlSerializa._DeSerializa( incosistencia, DadosRetorno, mensagem, ParametrosSerializacao ) then
                       begin
                          if length( incosistencia.inconsistencia ) = 0 then
                            msgError := ''
                          else
                          for vii:=0 to length( incosistencia.inconsistencia ) -1 do
                            with Tinconsistencia( incosistencia.inconsistencia[vii] ) do
                            begin
                               msgError:= codigo+' - '+descricao;
                            end;

                          Situacao := tsrErro {E};
                       end
                       else
                       begin
                          Situacao := tsrErro {E};
                          result := false;
                          msgError := 'Não foi possivel desSerializar os dados '#10+mensagem+' '#10+DadosRetorno;
                       end;
                   finally
                      incosistencia.free;
                   end;


                 end
                 else
                 begin
                    pr := urpm_AberturaContratoRetorno_v1_00.tprocesso_transporte.create;
                    try
                       if T5XmlSerializa._DeSerializa( pr, DadosRetorno, mensagem, ParametrosSerializacao ) then
                       begin
                          msgError :=  'Processo de transporte: '+pr.processo_transporte_codigo+#10+
                                       'Percurso: '+pr.dados_viagem.percurso_descricao+#10+
                                       'Valor pedagio: '+pr.dados_viagem.valor_pedagio+#10+
                                       'Operacao: '+pr.dados_viagem.operacao_descricao+#10+
                                       'CIOT : '+pr.dados_viagem.ciot;
                          Self.CIOT := pr.dados_viagem.ciot;
                          self.Protocolo := pr.processo_transporte_codigo;
                          self.Situacao := tsrAprovado {'R'};
                          self.ValorPedagio := StrToFloat( pr.dados_viagem.valor_pedagio, ParametrosSerializacao.FormatSettings );
                          result := True;
                       end
                       else
                       begin
                          msgerror := 'O contrato foi aberto mas no retorno não foi possivel identificar o numero do CIOT gerado! '+mensagem;
                          self.Situacao := tsrAprovado {'R'};
                          result := false;
                       end;
                    finally
                       pr.free;
                    end;
                 end;
              end;
           end
           else
           begin
              Situacao := tsrErro {E};
              result := true;
           end;
        end else
        begin
           Situacao := tsrErro {E};
           result := true;
        end;
     end
     else
     begin
        Situacao := tsrErro {E};
        result := true;
     end;
  except
    on e:exception do
    begin
       msgError := 'InsereContratoFrete:'+e.Message;
       result := false;
       Situacao := tsrErro {E};
       LogIt( e.message );
    end
  end;
end;

function TAdministradoraRepomdVersao001.inserePreValidacao(Cartao,
  Caminhao: string; Rota: integer; ValorFrete,
  ValorAdiantamento: extended): boolean;

  function GerXMLValidaAberturaContrato( var xml :string ) : boolean;
  var
    ValidaAberturaContrato : Tvalida_abertura_contrato;
//    vii : integer;
    mensagem : string;
    teste : TObject;
    vtelefone, vddd : string;
  begin
    try
        ValidaAberturaContrato := Tvalida_abertura_contrato.Create;
        try
           if cartao = '' then
             raise exception.create('Numero do cartao nao informado');
           ValidaAberturaContrato.cartao                              := cartao;
           ValidaAberturaContrato.contratado_cnpj_cpf                 := bean.contratado.contratado_cnpj_cpf;
           ValidaAberturaContrato.motorista_cpf                       := bean.motorista.cpf;
           ValidaAberturaContrato.cavalo_placa                       := bean.veiculo.placa;
           ValidaAberturaContrato.cavalo_rntrc                       := bean.veiculo.rntrc_codigo;

           if bean.veiculo.carretas.Last <> nil then
           begin
              ValidaAberturaContrato.carreta_placa                       := bean.veiculo.carretas.item.placa;
              ValidaAberturaContrato.carreta_rntrc                       := bean.veiculo.carretas.item.rntrc_codigo;
           end;


           ValidaAberturaContrato.valor_frete                         := formatFloat('0.00', bean.valorTotalMotorista, ParametrosSerializacao.FormatSettings);
           ValidaAberturaContrato.valor_adiantamento                  := formatFloat('0.00', bean.valorAdiantamento, ParametrosSerializacao.FormatSettings);
           ValidaAberturaContrato.antt_ncm_codigo_classificacao_mercadoria := Bean.NCM;

           ValidaAberturaContrato.operacao                            := Bean.ParametrosOperadora.Values['OPERACAO_CODIGO'];
           ValidaAberturaContrato.filial_codigo_cliente               := bean.codigo_filial;
           ValidaAberturaContrato.usuario                             := Bean.usuario;

           vTelefone := Bean.Telefone_empresa;
           vDdd      := '';
           DivideTelefone( vTelefone, vddd);

           ValidaAberturaContrato.usuario_telefone                    := iif( (vddd+' ')[1]='0', copy( vddd, 2,2), vddd)+vTelefone;
           ValidaAberturaContrato.roteiro_tipo                        := '0';
           ValidaAberturaContrato.roteiro_linear                      := Copy(Bean.ParametrosOperadora.Values['ROTEIRO_LINEAR']+'0',1,1);
           ValidaAberturaContrato.carta_frete_complementar            := Bean.ParametrosOperadora.Values['CARTA_FRETE_COMPLEMENTAR'];
           ValidaAberturaContrato.ida_volta                           := Bean.ParametrosOperadora.Values['ROTEIRO_IDA_VOLTA'];
           if bean.rota.pontosRota.first <> nil then
           repeat
               with ValidaAberturaContrato.trechos.addTrecho do
               begin
                   roteiro_codigo      := '';
                   percurso_codigo     := '';
                   roteiro_codigo_cliente := Bean.rota.codigoRota;
                   cidade_origem_ibge  := intToStr( strToInt(Copy(bean.rota.pontosRota.Item.ibge_origem,3,5)) );
                   estado_origem       := bean.rota.pontosRota.Item.uf_origem;
                   repeat
                      with vias.addVia do
                      begin
                         via_descricao    := bean.rota.pontosRota.Item.descricao;
                      end;
                   until bean.rota.pontosRota.next = nil;
                   bean.rota.pontosRota.last;
                   cidade_destino_ibge := intToStr( strToInt( Copy(bean.rota.pontosRota.Item.ibge_destino,3,5)) );
                   estado_destino      := bean.rota.pontosRota.Item.uf_destino;
               end;
               teste := bean.rota.pontosRota.Next;
           until teste = nil;
           if T5XmlSerializa._Serializa( ValidaAberturaContrato, mensagem, ParametrosSerializacao ) then
              xml := urpm_soap_v1_00.ParseText( mensagem, false )
           else
              raise exception.create( mensagem );
           //result := true;
        finally
           ValidaAberturaContrato.free;
        end;
        result := true;
    except
       on e:exception do
       begin
          MsgError := 'ValidaAberturaContrato:'+e.Message;
          result := false;
          LogIt( e.message );
       end
    end;
  end;

var
//   proprietario,
//   motorista : string;
//   ret : variant;
   xml : string;
   retorno : string;
   DadosRetorno : string;
   ResultadoRetorno : boolean;
   erros : T_erros;
   erro : Terro;
   ValidacaoRetorno : tvalida_abertura_contrato_retorno;
   mensagem : string;
   vii : integer;
begin
   try
     result := true; //self.IntegraDadosCadastroNacional();
     if result then
     begin
        if GerXMLValidaAberturaContrato( xml  ) then
        begin
           xml := '<strXmlIn>'+ xml +'</strXmlIn>';
           xml := self.assinadocumento( xml );

           ArquivoGerado.Add( '<ValidaAberturaContrato>'+xml+'</ValidaAberturaContrato>' );

           retorno :=  urpm_soap_v1_00.SOAPGet( repom.WebServer, 'ValidaAberturaContrato', xml, DadosOperadora.proxy.proxy, DadosOperadora.proxy.proxyusuario, DadosOperadora.proxy.proxysenha );

           ArquivoRecebido.Add( retorno );

           if not urpm_soap_v1_00.GetRetornoValidaAberturaContrato( retorno, DadosRetorno, ResultadoRetorno ) then
           begin
              Situacao := tsrErro {E};
              msgError := DadosRetorno;
              result := false;
           end
           else
           begin
              result := ResultadoRetorno;
              if not result then
              begin

                 erros := T_erros.Create;
                 try
                     if T5XmlSerializa._DeSerializa( erros, DadosRetorno, mensagem, ParametrosSerializacao ) then
                     begin
                        if length( Erros.erros ) = 0 then
                          msgError := ''
                        else
                        for vii:=0 to length( Erros.erros ) -1 do
                          with TErro( Erros.erros[vii] ) do
                          begin
                             msgError:= erro_codigo+' - '+erro_descricao;
                          end;

                        Situacao := tsrErro {E};
                     end
                     else
                     begin
                        Situacao := tsrErro {E};
                        result := false;
                        msgError := 'Não foi possivel desSerializar os dados '#10+mensagem+' '#10+DadosRetorno;
                     end;
                 finally
                    erros.free;
                 end;
                 erro := Terro.Create;
                 try
                     if T5XmlSerializa._DeSerializa( erro, DadosRetorno, mensagem, ParametrosSerializacao ) then
                     begin
                        if erro.erro_codigo<>'' then
                        begin
                            msgError:= erro.erro_codigo+' - '+erro.erro_descricao;
                            Situacao := tsrErro {E};
                        end;
                     end
                     else
                     begin
                        Situacao := tsrErro {E};
                        result := false;
                        msgError := 'Não foi possivel desSerializar os dados '#10+mensagem+' '#10+DadosRetorno;
                     end;
                 finally
                    erro.free;
                 end;
              end
              else
              begin
                 ValidacaoRetorno := tvalida_abertura_contrato_retorno.Create;
                 try
                    if T5XmlSerializa._DeSerializa( ValidacaoRetorno, DadosRetorno, mensagem, ParametrosSerializacao, true ) then
                    begin
//                      msgError := 'Cobrar taxa de ativação: '+ValidacaoRetorno.cartao.cobra_taxa_ativacao+' - '+ValidacaoRetorno.cartao.valor_taxa_ativacao;
                      if ValidacaoRetorno.saldo_repom_20.saldo_atual_suficiente_emissao_contrato = 0 then
                      begin
                         msgError := 'Saldo insuficiente na REPOM';
                         Situacao := tsrErro {E};
                         result := False;
                      end;

                      for vii:=0 to length( ValidacaoRetorno.solicitacao_roteiro.solicitacao_roteiro_erros ) -1 do
                        with TErro( ValidacaoRetorno.solicitacao_roteiro.solicitacao_roteiro_erros[vii] ) do
                        begin
                           msgError:= erro_codigo+' - '+erro_descricao;
                           Situacao := tsrErro {E};
                           result := False;
                        end;

                      if ValidacaoRetorno.solicitacao_roteiro.solicitacao_roteiro_codigo <> 0 then
                      begin
                         if ValidacaoRetorno.solicitacao_roteiro.solicitacao_roteiro_status <> '2' then
                         begin
                            msgError:= 'Solicitada abertura de roteiro : '+IntToStr(ValidacaoRetorno.solicitacao_roteiro.solicitacao_roteiro_codigo);
                            Situacao := tsrErro {E};
                            result := False;
                         end;
                         Self.SolicitacaoRota := ValidacaoRetorno.solicitacao_roteiro.solicitacao_roteiro_codigo;
                      end;

                      if length( ValidacaoRetorno.solicitacao_roteiro.solicitacao_roteiro_erros ) <> 0 then
                      begin
                         Situacao := tsrErro {E};
                         result := False;

                         for vii:=0 to length( ValidacaoRetorno.solicitacao_roteiro.solicitacao_roteiro_erros ) -1 do
                           with TErro( ValidacaoRetorno.solicitacao_roteiro.solicitacao_roteiro_erros[vii] ) do
                           begin
                              msgError:= erro_codigo+' - '+erro_descricao;
                           end;

                      end;


  //                    msgError:= 'Valor pedágio : '+floatToStr(ValidacaoRetorno.solicitacao_roteiro.pedagio_valor);

                      if length( ValidacaoRetorno.contratado.contratado_erros ) <> 0 then
                      begin
                         Situacao := tsrErro {E};
                         result := False;

                         for vii:=0 to length( ValidacaoRetorno.contratado.contratado_erros ) -1 do
                           with TErro( ValidacaoRetorno.contratado.contratado_erros[vii] ) do
                           begin
                              msgError:= erro_codigo+' - '+erro_descricao;
                           end;

                      end;

                      if length( ValidacaoRetorno.veiculo.veiculo_erros ) <> 0 then
                      begin
                         msgError := 'Veículo não é válido perante a ANTT';
                         Situacao := tsrErro {E};
                         result := False;

                         for vii:=0 to length( ValidacaoRetorno.veiculo.veiculo_erros ) -1 do
                           with TErro( ValidacaoRetorno.veiculo.veiculo_erros[vii] ) do
                           begin
                              msgError:= erro_codigo+' - '+erro_descricao;
                           end;
                      end;

                      if length( ValidacaoRetorno.carreta.carreta_erros ) <> 0 then
                      begin
                         msgError := 'Carreta não é válida perante a ANTT';
                         Situacao := tsrErro {E};
                         result := False;

                         for vii:=0 to length( ValidacaoRetorno.carreta.carreta_erros ) -1 do
                           with TErro( ValidacaoRetorno.carreta.carreta_erros[vii] ) do
                           begin
                              msgError:= erro_codigo+' - '+erro_descricao;
                           end;
                      end;

                      if length( ValidacaoRetorno.cartao.cartao_erros ) <> 0 then
                      begin
                         Situacao := tsrErro {E};
                         result := False;

                         for vii:=0 to length( ValidacaoRetorno.cartao.cartao_erros ) -1 do
                           with tcartao_erro( ValidacaoRetorno.cartao.cartao_erros[vii] ) do
                           begin
                              msgError:= erro_codigo+' - '+erro_descricao;
                           end;
                      end;

                    end
                    else
                    begin
                       Situacao := tsrErro {E};
                       result := false;
                       msgError := DadosRetorno;
                    end;
                 finally
                   ValidacaoRetorno.Free;
                 end;
              end;
           end;
        end
        else
        begin
           Situacao := tsrErro {E};
           result := False;
        end;
     end
     else
     begin
        Situacao := tsrErro {E};
        result := False;
     end;
   except
     on e:Exception do
     begin
        Situacao := tsrErro {E};
        result := False;
        msgError := 'InserePreValidacao:'+e.Message;
        LogIt( e.message );
     end;
   end;
end;

function TAdministradoraRepomdVersao001.cancelaContratoFrete: boolean;
   function GerXMLCancelamentoContrato( var xml :string  ) : Boolean;
   var
       contrato : urpm_CancelamentoContrato_v1_00.Tcontrato;
       mensagem : string;
   begin
     try
       contrato := urpm_CancelamentoContrato_v1_00.Tcontrato.create;
       try
          if Bean.NumeroViagem <> '' then
             contrato.processo_transporte_codigo := Bean.NumeroViagem
          else if Bean.numeroContratoFrete <> '' then
          begin
             contrato.processo_cliente_codigo := Bean.numeroContratoFrete;
             contrato.filial_codigo_cliente := Bean.codigo_filial;
          end;
          contrato.login := Bean.observacoes;

          if T5XmlSerializa._Serializa( contrato, mensagem, ParametrosSerializacao ) then
            xml := urpm_soap_v1_00.ParseText( mensagem, false )
          else
            raise exception.create( mensagem );
       finally
          contrato.free;
       end;
       result := True;
     except
        on e:Exception do
        begin
           MsgError := 'GerXMLCancelamentoContrato:'+e.Message;
           result := false;
           LogIt( e.message );
        end;
     end;
   end;
var
  mensagem, retorno,
  DadosRetorno, xml : string;
  ResultadoRetorno : Boolean;
  erros : T_erros;
  erro : Terro;
  vii : Integer;
begin
  try
     if GerXMLCancelamentoContrato( xml  ) then
     begin
        xml := '<strXmlIn>'+ xml +'</strXmlIn>';
        xml := self.assinadocumento( xml );

        ArquivoGerado.Add( '<CancelaContrato>'+xml+'</CancelaContrato>' );
        retorno :=  urpm_soap_v1_00.SOAPGet( repom.WebServer, 'CancelaContrato', xml, DadosOperadora.proxy.proxy, DadosOperadora.proxy.proxyusuario, DadosOperadora.proxy.proxysenha );
        ArquivoRecebido.Add( retorno );

        if not urpm_soap_v1_00.GetRetornoCancelamentoContrato( retorno, DadosRetorno, ResultadoRetorno ) then
        begin
           Situacao := tsrErro {E};
           msgError := DadosRetorno;
           result := false;
        end
        else
        begin
           result := ResultadoRetorno;
           if not result then
           begin
              erros := T_erros.Create;
              try
                  if T5XmlSerializa._DeSerializa( erros, DadosRetorno, mensagem, ParametrosSerializacao ) then
                  begin
                     if length( Erros.erros ) = 0 then
                       msgError := ''
                     else
                     for vii  := 0 to length( Erros.erros ) -1 do
                       with TErro( Erros.erros[vii] ) do
                       begin
                          msgError:= erro_codigo+' - '+erro_descricao;
                       end;
                     Situacao := tsrErro {E};
                  end
                  else
                  begin
                     Situacao := tsrErro {E};
                     result   := false;
                     msgError := 'Não foi possivel desSerializar os dados '#10+mensagem+' '#10+DadosRetorno;
                  end;
              finally
                 erros.free;
              end;
              erro := Terro.Create;
              try
                  if T5XmlSerializa._DeSerializa( erro, DadosRetorno, mensagem, ParametrosSerializacao ) then
                  begin
                     if erro.erro_codigo<>'' then
                     begin
                         msgError:= erro.erro_codigo+' - '+erro.erro_descricao;
                         Situacao := tsrErro {E};
                     end;
                  end
                  else
                  begin
                     Situacao := tsrErro {E};
                     result := false;
                     msgError := 'Não foi possivel desSerializar os dados '#10+mensagem+' '#10+DadosRetorno;
                  end;
              finally
                 erro.free;
              end;
           end
           else
           begin
              Situacao := tsrCancelado {'C'};
              result   := True;
              msgError := 'Cancelado com sucesso.';
           end;
        end;
     end
     else
     begin
        Situacao := tsrErro {E};
        result := False;
     end;
  except
    on e:Exception do
    begin
       Situacao := tsrErro {E};
       result   := False;
       msgError := 'CancelaContratoFrete: '+e.Message;
       LogIt( e.message );
    end;
  end;
end;

procedure TAdministradoraRepomdVersao001.SetDadosOperadora(
  const Value: TBeanOperadora);
begin
  inherited;
  repom := TBeanOperadoraRepom( value );

end;

function TAdministradoraRepomdVersao001.ExtratoDe(
  Data: TDateTime): boolean;
var
  mensagem, retorno,
  DadosRetorno, xml : string;
  ResultadoRetorno : Boolean;
  erros : T_erros;
  erro : Terro;
  vii : Integer;
  txtret : TExtrato_ret_0000;
  linha  : TExtrato_ret_0001;
begin
  try
     xml := '<strDataMovimento>'+FormatDateTime('dd/mm/yyyy', Data )+'</strDataMovimento>';   // pq d+1 por que repom sempre volta os dados de d-1
     if true then
     begin
        xml := self.assinadocumento( xml );

        ArquivoGerado.Add( '<EmiteContabil>'+xml+'</EmiteContabil>' );
//        retorno :=  urpm_soap_v1_00.SOAPGetRepomIntegracaoArquivosWS( 'http://www.repom.com.br/RepomIntegracaoArquivosWs/integracao/integracao.asmx', 'EmiteContabil', xml,
//                                             DadosOperadora.proxy.proxy, DadosOperadora.proxy.proxyusuario, DadosOperadora.proxy.proxysenha );
        repeat
            retorno :=  urpm_soap_v1_00.SOAPGetRepomIntegracaoArquivosWS( 'http://www.repom.com.br/RepomIntegracaoArquivosWs/integracao/integracao.asmx',
                                                                      'EmiteFinanceiro ', xml,
                                             DadosOperadora.proxy.proxy, DadosOperadora.proxy.proxyusuario, DadosOperadora.proxy.proxysenha );
            if pos( '"Refresh"', retorno) > 0 then
               sleep(100)
            else if pos( 'time out', retorno) > 0 then
               sleep(500)
            else
               break;
        until true;

        ArquivoRecebido.Add( retorno );

        if not urpm_soap_v1_00.GetRetornoEmiteContabil( retorno, DadosRetorno, ResultadoRetorno ) then
        begin
           Situacao := tsrErro {E};
           msgError := DadosRetorno;
           result := false;
        end
        else
        begin
           result := ResultadoRetorno;
           if not result then
           begin
              erros := T_erros.Create;
              try
                  if T5XmlSerializa._DeSerializa( erros, DadosRetorno, mensagem, ParametrosSerializacao ) then
                  begin
                     if length( Erros.erros ) = 0 then
                       msgError := ''
                     else
                     for vii  := 0 to length( Erros.erros ) -1 do
                       with TErro( Erros.erros[vii] ) do
                       begin
                          if erro_codigo = '2300' then
                          begin
                             txtret := TExtrato_ret_0000.create;
                             txtret.motivoRetorno := 'R';
                             txtret.Descricao     := 'Extrato movimento';
                             txtret.DataExtrato   :=  Data; // passada no parametro
                             Self.BeanTXTRet := txtret;
                             msgError        := 'Extrato recebido';
                          end
                          else
                          begin
                             msgError:= erro_codigo+' - '+erro_descricao;
                             Situacao := tsrErro {E};
                          end;
                       end;

                       result := true;
                  end
                  else
                  begin
                     Situacao := tsrErro {E};
                     result   := false;
                     msgError := 'Não foi possivel desSerializar os dados '#10+mensagem+' '#10+DadosRetorno;
                  end;
              finally
                 erros.free;
              end;
              erro := Terro.Create;
              try
                  if T5XmlSerializa._DeSerializa( erro, DadosRetorno, mensagem, ParametrosSerializacao ) then
                  begin
                     if erro.erro_codigo<>'' then
                     begin
                         msgError:= erro.erro_codigo+' - '+erro.erro_descricao;
                         Situacao := tsrErro {E};
                         result := true;
                     end;
                  end
                  else
                  begin
                     Situacao := tsrErro {E};
                     result := false;
                     msgError := 'Não foi possivel desSerializar os dados '#10+mensagem+' '#10+DadosRetorno;
                  end;
              finally
                 erro.free;
              end;
           end
           else
           begin
             with tFinanceiroMovimento.CreateFromXmlString( DadosRetorno   ) do
             try
                txtret := TExtrato_ret_0000.create;
                txtret.motivoRetorno := 'R';
                txtret.Descricao     := 'Extrato movimento';
                txtret.DataExtrato   :=  Data; // passada no parametro
                for vii := 0 to registros - 1 do
                with urpm_jxml_EmiteFinanceiro_v1_00.TFinanceiroLinha( financeiro.linhas.objects[vii] ) do
                begin
                   linha := txtret.add0001;

                   linha.Sequencia      := formatDatetime( 'yyyymmdd', data)+'_'+formatFloat('00000',vii);
                   linha.DataLancamento := DataPagamentoTransacaoFinanceira;
                   linha.Descricao      := TipoTransacaoFinanceira;
                   linha.Observacao     := 'Contrato:'+ProcessoTransporteCliente;
                   linha.Viagem         := ContratoRepom;
                   if TipoMovimentacaoFinanceira = '1' then
                     linha.Valor          := ValorTransacaoFinanceira
                   else
                     linha.Valor          := -ValorTransacaoFinanceira;
                   linha.Saldo          := 0;
                end;
             finally
                free;
             end;
             txtret.add9999.DataHoraRetorno := Now();
             situacao := tsrAprovado {'R'}; {ver melhor esta situacao}
             result := true;
             Self.BeanTXTRet := txtret;
             msgError        := 'Extrato recebido';
           end;
        end;
     end
     else
     begin
        Situacao := tsrErro {E};
        result := False;
     end;
  except
    on e:Exception do
    begin
       Situacao := tsrErro {E};
       result   := False;
       msgError := 'ExtratoDe: '+e.Message;
       LogIt( e.message );
    end;
  end;
end;

function TAdministradoraRepomdVersao001.ConsultaContratoFrete: boolean;
begin
  // result := ConsultaContratoFinanceiroContabil(bean.NumeroViagem); este metodo da repom não funciona
   result := ConsultaContratoContrato( bean.NumeroViagem);
end;


function TAdministradoraRepomdVersao001.ConsultaContratoContrato( contratoRepom: string ): boolean;
var
  vTipoOperacao,
  mensagem, retorno,
  DadosRetorno, xml : string;
  ResultadoRetorno : Boolean;
  erros : T_erros;
  erro : Terro;
  vii : Integer;
  txtRet : TConsulta_ret_0000;
  item   : TConsulta_ret_0001;
  Primeiro132 : TConsulta_ret_0001;
  Ultimo132   : TConsulta_ret_0001;
begin
  try
     xml := '<processo_transporte_codigo>'+contratoRepom+'</processo_transporte_codigo>';
     if true then
     begin
        xml := urpm_soap_v1_00.ParseText( xml, false );
        xml := '<strXmlIn>'+ xml +'</strXmlIn>';
        xml := self.assinadocumento( xml );

        ArquivoGerado.Add( '<ConsultaContrato>'+xml+'</ConsultaContrato>' );
        repeat
            retorno :=  urpm_soap_v1_00.SOAPGet( repom.WebServer, 'ConsultaContrato', xml,
                                             DadosOperadora.proxy.proxy, DadosOperadora.proxy.proxyusuario, DadosOperadora.proxy.proxysenha );
            if pos( 'Server was unable to process request', retorno ) > 0 then
              sleep(100)
            else
              break;
        until false;
        ArquivoRecebido.Add( retorno );

        if not urpm_soap_v1_00.GetRetorno( retorno, DadosRetorno, ResultadoRetorno ) then
        begin
           Situacao := tsrErro {E};
           msgError := DadosRetorno;
           result := false;
        end
        else
        begin
           result := ResultadoRetorno;
           if not result then
           begin
              erros := T_erros.Create;
              try
                  if T5XmlSerializa._DeSerializa( erros, DadosRetorno, mensagem, ParametrosSerializacao ) then
                  begin
                     if length( Erros.erros ) = 0 then
                       msgError := ''
                     else
                     for vii  := 0 to length( Erros.erros ) -1 do
                       with TErro( Erros.erros[vii] ) do
                       begin
                          msgError:= erro_codigo+' - '+erro_descricao;
                       end;
                     Situacao := tsrErro {E};
                  end
                  else
                  begin
                     Situacao := tsrErro {E};
                     result   := false;
                     msgError := 'Não foi possivel desSerializar os dados '#10+mensagem+' '#10+DadosRetorno;
                  end;
              finally
                 erros.free;
              end;
              erro := Terro.Create;
              try
                  if T5XmlSerializa._DeSerializa( erro, DadosRetorno, mensagem, ParametrosSerializacao ) then
                  begin
                     if erro.erro_codigo<>'' then
                     begin
                         msgError:= erro.erro_codigo+' - '+erro.erro_descricao;
                         Situacao := tsrErro {E};
                     end;
                  end
                  else
                  begin
                     Situacao := tsrErro {E};
                     result := false;
                     msgError := 'Não foi possivel desSerializar os dados '#10+mensagem+' '#10+DadosRetorno;
                  end;
              finally
                 erro.free;
              end;
           end
           else
           begin
             with TConsultaContratoResponse.CreateFromXmlString( DadosRetorno   ) do
             try
                txtRet := TConsulta_ret_0000.create;
                txtRet.motivoRetorno := '';
                txtRet.viagem        :=  intToStr( strToIntDef( processo_transporte_codigo,0 ));
                txtRet.NumeroContratoFrete := processo_transporte_codigo_cliente;
                txtRet.CIOT          := '';
                
                if valor_pedagio <> 0 then
                begin
                   item := txtRet.add0001;
                   item.Parcela           := 'PEDAGIO';
                   item.DataPrevista      := 0;
                   item.ValorPrevisto     := 0;
                   item.DataEfetivacao    := 0;
                   item.ValorEfetivo      := 0;
                   item.PesoChegada       := 0;
                   item.Local             := '';

                   IF ( status_pedagio_codigo = '2') then
                   begin
                          item.DataEfetivacao := data_carregamento_pedagio;
                          item.ValorEfetivo   := valor_pedagio;
                   end
                   else
                   begin
                          item.DataPrevista := data_carregamento_pedagio;
                          item.ValorPrevisto   := valor_pedagio;
                   end;

                   if      status_pedagio_codigo = '2'      then item.Situacao := 'CONCLUIDA'
                   else if status_pedagio_codigo = '-1'      then item.Situacao := 'PREVISTA'
                   else if status_pedagio_codigo = '7'      then item.Situacao := 'CANCELADA'
                   else if status_pedagio_codigo = '-1'      then item.Situacao := 'BLOQUEADA'
                   else    item.Situacao := 'PREVISTA';
                end;


                //situacao
               Primeiro132 := nil;
               Ultimo132   := nil;
               with movimentos do
                  for vii := 0 to movimentos.movimento.Count - 1 do
                  with TConsultaContratoMovimento( movimentos.movimento.Objects[vii] ) do
                  begin
                     item := txtRet.add0001;
                     if      movimento_codigo_cliente = '132' then
                     begin
                        if Assigned( Primeiro132 ) then
                           vTipoOperacao           := 'SALDO'
                        else
                           vTipoOperacao           := 'ADIANTAMENTO';
                        if not Assigned( Primeiro132 ) and (data_quitacao<>0) then Primeiro132 := item;
                        Ultimo132 := item;
                     end
                     else
                     if      movimento_codigo_cliente = '131' then
                     begin
                        if Assigned( Primeiro132 ) then
                           vTipoOperacao           := 'SALDO'
                        else
                           vTipoOperacao           := 'ADIANTAMENTO';
                        if not Assigned( Primeiro132 ) and (data_quitacao<>0) then Primeiro132 := item;
                        Ultimo132 := item;
                     end
                     else if movimento_codigo_cliente = '1' then
                        vTipoOperacao           := 'DESCONTO(IRRF)'
                     else if movimento_codigo_cliente = '2' then
                        vTipoOperacao           := 'DESCONTO(SEST)'
                     else if movimento_codigo_cliente = '3' then
                        vTipoOperacao           := 'DESCONTO(SENAT)'
                     else if movimento_codigo_cliente = '30' then
                        vTipoOperacao           := 'DESCONTO(INSS)'
                     else if movimento_codigo_cliente = '31' then
                        vTipoOperacao           := 'DESCONTO(SEST/SENAT)'
                     else if movimento_codigo_cliente = '400' then
                        vTipoOperacao           := 'DESCONTO(SEGURO)'
                     else if movimento_codigo_cliente = '401' then
                        vTipoOperacao           := 'DESCONTO(CARTAO)'
                     else if movimento_codigo_cliente = '402' then
                        vTipoOperacao           := 'DESCONTO'
                     else if movimento_codigo_cliente = '107' then
                        vTipoOperacao           := 'AJUSTE DE FRETE'
                     else if movimento_codigo_cliente = '101' then
                        vTipoOperacao           := 'QUEBRA DE PESO'
                     else if movimento_codigo_cliente = '134' then
                        vTipoOperacao           := 'ESTORNO DE FRETE'
                     else
                        vTipoOperacao           := movimento_codigo_cliente;

                      item.Parcela           := vTipoOperacao;
                      item.DataPrevista      := 0;
                      item.ValorPrevisto     := 0;
                      item.DataEfetivacao    := 0;
                      item.ValorEfetivo      := 0;
                      item.PesoChegada       := 0;
                      item.Local             := '';

                      item.DataEfetivacao := data;
                      item.ValorEfetivo   := valor;

                      item.Situacao := 'CONCLUIDA';

                  end;

                  if Assigned(Primeiro132) and  (Primeiro132 = Ultimo132) then Primeiro132.Parcela := 'SALDO/ADIANTAMENTO'; // teve somente 1 movimento 132 e ja foi quitado logo teve somente saldo
             finally
                free;
             end;
             txtret.add9999.DataHoraRetorno := Now();
             situacao := tsrAprovado {'R'}; {ver melhor esta situacao}
             Self.BeanTXTRet := txtret;
             msgError        := 'Extrato recebido';
             result := true;
           end;
        end;
     end
     else
     begin
        Situacao := tsrErro {E};
        result := False;
     end;
  except
    on e:Exception do
    begin
       Situacao := tsrErro {E};
       result   := False;
       msgError := 'ConsultaContratoContrato: '+e.Message;
       LogIt( e.message );
    end;
  end;
end;

function TAdministradoraRepomdVersao001.ConsultaContratoFinanceiroContabil(
  contratoRepom: string): Boolean;
var
  vTipoOperacao,
  mensagem, retorno,
  DadosRetorno, xml : string;
  ResultadoRetorno : Boolean;
  erros : T_erros;
  erro : Terro;
  vii : Integer;
  txtRet : TConsulta_ret_0000;
  item   : TConsulta_ret_0001;
  segundoItemAdiantamento: boolean;
begin
  try
     xml := '<processo_transporte_codigo>'+contratoRepom+'</processo_transporte_codigo>';
     if true then
     begin
        xml := urpm_soap_v1_00.ParseText( xml, false );
        xml := '<strXmlIn>'+ xml +'</strXmlIn>';
        xml := self.assinadocumento( xml );

        ArquivoGerado.Add( '<ConsultaContrato>'+xml+'</ConsultaContrato>' );
        repeat
            retorno :=  urpm_soap_v1_00.SOAPGet( repom.WebServer, 'ConsultaContratoFinanceiroContabil', xml,
                                             DadosOperadora.proxy.proxy, DadosOperadora.proxy.proxyusuario, DadosOperadora.proxy.proxysenha );
            if pos( 'Server was unable to process request', retorno ) > 0 then
              sleep(100)
            else
              break;
        until false;
        ArquivoRecebido.Add( retorno );

        if not urpm_soap_v1_00.GetRetorno( retorno, DadosRetorno, ResultadoRetorno ) then
        begin
           Situacao := tsrErro {E};
           msgError := DadosRetorno;
           result := false;
        end
        else
        begin
           result := ResultadoRetorno;
           if not result then
           begin
              erros := T_erros.Create;
              try
                  if T5XmlSerializa._DeSerializa( erros, DadosRetorno, mensagem, ParametrosSerializacao ) then
                  begin
                     if length( Erros.erros ) = 0 then
                       msgError := ''
                     else
                     for vii  := 0 to length( Erros.erros ) -1 do
                       with TErro( Erros.erros[vii] ) do
                       begin
                          msgError:= erro_codigo+' - '+erro_descricao;
                       end;
                     Situacao := tsrErro {E};
                  end
                  else
                  begin
                     Situacao := tsrErro {E};
                     result   := false;
                     msgError := 'Não foi possivel desSerializar os dados '#10+mensagem+' '#10+DadosRetorno;
                  end;
              finally
                 erros.free;
              end;
              erro := Terro.Create;
              try
                  if T5XmlSerializa._DeSerializa( erro, DadosRetorno, mensagem, ParametrosSerializacao ) then
                  begin
                     if erro.erro_codigo<>'' then
                     begin
                         msgError:= erro.erro_codigo+' - '+erro.erro_descricao;
                         Situacao := tsrErro {E};
                     end;
                  end
                  else
                  begin
                     Situacao := tsrErro {E};
                     result := false;
                     msgError := 'Não foi possivel desSerializar os dados '#10+mensagem+' '#10+DadosRetorno;
                  end;
              finally
                 erro.free;
              end;
           end
           else
           begin
             with TConsultaContratoResponse.CreateFromXmlString( DadosRetorno   ) do
             try
                txtRet := TConsulta_ret_0000.create;
                txtRet.motivoRetorno := '';
                txtRet.viagem        :=  intToStr( strToIntDef( processo_transporte_codigo,0 ));
                txtRet.NumeroContratoFrete := processo_transporte_codigo_cliente;
                txtRet.CIOT          := '';
                segundoItemAdiantamento:=false;
                if valor_pedagio <> 0 then
                begin
                   item := txtRet.add0001;
                   item.Parcela           := 'PEDAGIO';
                   item.DataPrevista      := 0;
                   item.ValorPrevisto     := 0;
                   item.DataEfetivacao    := 0;
                   item.ValorEfetivo      := 0;
                   item.PesoChegada       := 0;
                   item.Local             := '';

                   IF ( status_pedagio_codigo = '2') then
                   begin
                          item.DataEfetivacao := data_carregamento_pedagio;
                          item.ValorEfetivo   := valor_pedagio;
                   end
                   else
                   begin
                          item.DataPrevista := data_carregamento_pedagio;
                          item.ValorPrevisto   := valor_pedagio;
                   end;

                   if      status_pedagio_codigo = '2'      then item.Situacao := 'CONCLUIDA'
                   else if status_pedagio_codigo = '-1'      then item.Situacao := 'PREVISTA'
                   else if status_pedagio_codigo = '7'      then item.Situacao := 'CANCELADA'
                   else if status_pedagio_codigo = '-1'      then item.Situacao := 'BLOQUEADA'
                   else    item.Situacao := 'PREVISTA';
                end;


                //situacao
               with movimentos do
                  for vii := 0 to movimentos.movimento.Count - 1 do
                  with TConsultaContratoMovimento( movimentos.movimento.Objects[vii] ) do
                  begin
                     if      movimento_codigo_cliente = '132' then
                        vTipoOperacao           := 'ADIANTAMENTO/SALDO'
                     else if (movimento_codigo_cliente = '131') and not segundoItemAdiantamento then
                     begin
                        vTipoOperacao           := 'ADIANTAMENTO';
                        segundoItemAdiantamento := true;
                     end
                     else if (movimento_codigo_cliente = '131')  then
                        vTipoOperacao           := 'SALDO'
                     else if movimento_codigo_cliente = '1' then
                        vTipoOperacao           := 'DESCONTO(IRRF)'
                     else if movimento_codigo_cliente = '2' then
                        vTipoOperacao           := 'DESCONTO(SEST)'
                     else if movimento_codigo_cliente = '3' then
                        vTipoOperacao           := 'DESCONTO(SENAT)'
                     else if movimento_codigo_cliente = '30' then
                        vTipoOperacao           := 'DESCONTO(INSS)'
                     else if movimento_codigo_cliente = '31' then
                        vTipoOperacao           := 'DESCONTO(SEST/SENAT)'
                     else if movimento_codigo_cliente = '400' then
                        vTipoOperacao           := 'DESCONTO(SEGURO)'
                     else if movimento_codigo_cliente = '401' then
                        vTipoOperacao           := 'DESCONTO(CARTAO)'
                     else if movimento_codigo_cliente = '402' then
                        vTipoOperacao           := 'DESCONTO'
                     else if movimento_codigo_cliente = '107' then
                        vTipoOperacao           := 'AJUSTE DE FRETE'
                     else if movimento_codigo_cliente = '101' then
                        vTipoOperacao           := 'QUEBRA DE PESO'
                     else if movimento_codigo_cliente = '134' then
                        vTipoOperacao           := 'ESTORNO DE FRETE'
                     else
                        vTipoOperacao           := movimento_codigo_cliente;

                      item := txtRet.add0001;
                      item.Parcela           := vTipoOperacao;
                      item.DataPrevista      := 0;
                      item.ValorPrevisto     := 0;
                      item.DataEfetivacao    := 0;
                      item.ValorEfetivo      := 0;
                      item.PesoChegada       := 0;
                      item.Local             := '';

                      IF ( status_codigo = '6') then
                      begin
                             item.DataEfetivacao := data;
                             item.ValorEfetivo   := valor;
                      end
                      else
                      begin
                             item.DataPrevista := data;
                             item.ValorPrevisto   := valor;
                      end;

                      if      status_codigo = '6'      then item.Situacao := 'CONCLUIDA'
                      else if status_codigo = '-1'      then item.Situacao := 'PREVISTA'
                      else if status_codigo = '7'      then item.Situacao := 'CANCELADA'
                      else if status_codigo = '-1'      then item.Situacao := 'BLOQUEADA'
                      else    item.Situacao := 'PREVISTA';

                  end;
             finally
                free;
             end;
             txtret.add9999.DataHoraRetorno := Now();
             situacao := tsrAprovado {'R'}; {ver melhor esta situacao}
             Self.BeanTXTRet := txtret;
             msgError        := 'Extrato recebido';
             result := true;
           end;
        end;
     end
     else
     begin
        Situacao := tsrErro {E};
        result := False;
     end;
  except
    on e:Exception do
    begin
       Situacao := tsrErro {E};
       result   := False;
       msgError := 'ConsultaContratoFinanceiroContabil: '+e.Message;
       LogIt( e.message );
    end;
  end;
end;

end.

