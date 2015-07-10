unit uAdministradoraRodocredVersao001;

interface

uses uAdministradoraAbstract, T5XmlSerializa,
     urdc_TiposPadrao_v1_00,
     urdc_ManterViagem_v1_00,
     uIntegracaoContratofreteBean;

type
   TAdministradoraRodocredVersao001 = class( TAdministradoraAbstract )
   protected
      procedure SetDadosOperadora(const Value: TBeanOperadora); override;
   private
//      rota         : integer;
      TempoViagemRota : integer; //em horas;
      ParametrosSerializacao : rSerializacao;
      Rodocred : TBeanOperadoraRodocred;
      host : string;
      idCliente : integer;
      cliente : string;
      assinatura : string;
      versaoSevico : string;
      token : string;
      function AutenticarCliente: boolean;
      function IntegraDadosCadastroNacional(Caminhao, proprietario,
      motorista, cartao: string): boolean;
      function getRotas( CodigoRotaSistema: string; var CodigoRotaRodocred,
                         mensagem: string): boolean;
      function InvalidaToken: boolean;


   public
      function getCodigoAdministradora : integer; override;
      function insereContratoFrete : boolean; override;
      function cancelaContratoFrete      : boolean; override;

      function ConsultaContratoFrete      : boolean; override;

      function GetDOT(vViagem, Arquivo: string): boolean;override;

      function ExtratoDe( Data : TDateTime  ) : boolean; override;

      destructor Destroy; override;
      constructor Create;
   end;

implementation

uses windows, Classes, SysUtils, wininet, uICFFuncoes,
     urdc_AutenticarCliente_v1_00,
  urdc_soap_v1_00, DateUtils, Variants,
  urdc_ManterMotorista_v1_00, urdc_ManterTransportador_v1_00,
  urdc_ManterVeiculo_v1_00, urdc_ConsultarRota_v1_00, Contnrs, uICFBase,
  urdc_CertificadoViagem_v1_00, urdc_jxml_DetalharViagem_v1_01,
  urdc_jxml_TiposPadrao_v1_00, urdc_jxml_ConsultarExtratoDetalhado_v1_00,
  urdc_jxml_TiposPadrao_v1_02, utxt_pef_ext_v1_0, utxt_pef_con_v1_0;

var
   CritSect : TRTLCriticalSection;
   ListaTokens : TStringList;

function GetCategoriaVeiculo( categoriaPadrao : integer ) : string;
begin
   case categoriaPadrao of
     0  : result := '';
     1  : result := '1';
     2  : result := '1';
     3  : result := '1';
     4  : result := '1';
     5  : result := '3';
     6  : result := '3';
     7  : result := '4';
     8  : result := '4';
     9  : result := '4';
     10 : result := '4';
     11 : result := '4';
     12 : result := '4';
     13 : result := '2';
     14 : result := '2';
     15 : result := '6';
     16 : result := '5';
   end;
end;


{ TAdministradoraRodocredVersao001 }

constructor TAdministradoraRodocredVersao001.Create;
begin
  inherited Create( nil );
  ParametrosSerializacao.CriaTagParaArray := true;
  ParametrosSerializacao.FormatSettings.DecimalSeparator := '.';
  ParametrosSerializacao.FormatSettings.ShortDateFormat :='yyyy-mm-dd';
  token := '';
  versaoSevico := '1.00';
end;


destructor TAdministradoraRodocredVersao001.Destroy;
begin
   inherited Destroy;
end;

function TAdministradoraRodocredVersao001.InvalidaToken: boolean;
var
  TokenSessao : string;
  TokenSessaoHora : TDateTime;
begin
  EnterCriticalSection(CritSect);
  try
     if ListaTokens.Values[self.cliente] <> '' then
     begin
        with Split( '|', ListaTokens.Values[self.cliente] ) do
        try
          TokenSessao := Strings[0];
          TokenSessaoHora := StrToDateTimeDef( Strings[1], 0);
        finally
           Free;
        end;
     end
     else
     begin
         TokenSessao := '';
         TokenSessaoHora := 0;
     end;


     if (Abs(MinutesBetween( TokenSessaoHora, now )) > 5 ) then
     begin
        TokenSessao := '';
        //TokenSessaoHora := 0;
        result := True;
     end else
       Result := False;
  finally
     LeaveCriticalSection(CritSect);
  end;
end;

function TAdministradoraRodocredVersao001.AutenticarCliente: boolean;
var
  AutenticarCliente : tAutenticarClienteRequest;
  mensagem : string;
  xmlfinal, retorno : string;
  AutenticarClienteResponse : tAutenticarClienteResponse;

  TokenSessao : string;
  TokenSessaoHora : TDateTime;
begin
  result := false;
  EnterCriticalSection(CritSect);
  try
     if FindCmdLineSwitch('teste', ['-'], true) then
     begin
        TokenSessao := 'teste';
        //TokenSessaoHora := Now;
        result := true;
     end
     else
     begin
        if ListaTokens.Values[self.cliente] <> '' then
        begin
           with Split( '|', ListaTokens.Values[self.cliente] ) do
           try
             TokenSessao := Strings[0];
             TokenSessaoHora := StrToDateTimeDef( Strings[1], 0);
           finally
              Free;
           end;
        end
        else
        begin
            TokenSessao := ''; //'86e09411-eebf-4eff-8c29-dc94c3523b2e'; // '85c4700b-930c-498f-9c66-9e1c06d5823e';  // fixo mudar apos teste agotran
            TokenSessaoHora := now;
        end;

        if (TokenSessao = '') or (Abs(HoursBetween( TokenSessaoHora, now )) > 20 ) then
        begin
           try
               AutenticarCliente := tAutenticarClienteRequest.Create;
               try
                  AutenticarCliente.IdClienteRodocred := self.idCliente;
                  AutenticarCliente.LoginIntegracao   := self.cliente;
                  AutenticarCliente.ChaveAutenticacao := self.assinatura;

                  if not T5XmlSerializa._Serializa( AutenticarCliente, mensagem, ParametrosSerializacao ) then
                     raise exception.create( mensagem )
                  else
                     xmlfinal := mensagem;
               finally
                  AutenticarCliente.free;
               end;

               ArquivoGerado.Add( xmlfinal );
               retorno :=  urdc_soap_v1_00.SOAPGet( Self.host, 'AutenticarCliente', xmlfinal, DadosOperadora.proxy.proxy, DadosOperadora.proxy.proxyusuario, DadosOperadora.proxy.proxysenha );
               ArquivoRecebido.Add( retorno );
               retorno :=  urdc_soap_v1_00.SOAPResponse( retorno );
               AutenticarClienteResponse := tAutenticarClienteResponse.Create;
               try
                   if T5XmlSerializa._DeSerializa( AutenticarClienteResponse, retorno, mensagem, ParametrosSerializacao ) then
                   begin
                      result := AutenticarClienteResponse.RetornoMensagem.StatusRetorno = 'SUCESSO';
                      if not result then
                         msgError := AutenticarClienteResponse.RetornoMensagem.Excecao.TipoExcecao+' - '+
                                     AutenticarClienteResponse.RetornoMensagem.Excecao.CodigoExcecao+' - '+
                                     AutenticarClienteResponse.RetornoMensagem.Excecao.MensagemExcecao
                      else
                         self.token := AutenticarClienteResponse.RetornoMensagem.IdentificacaoIntegracao.TokenAutenticacao;

                      TokenSessao := self.token;
                      //TokenSessaoHora := Now;
                      result := true;
                   end
                   else
                   begin
                      msgError := mensagem + #10+ retorno;
                      result := false;
                   end
               finally
                  AutenticarClienteResponse.free;
               end;
               LogIt( 'Gerado token de sessao para RODOCRED para cliente '+self.cliente+': '+TokenSessao );
           except
              on e:Exception do
              begin
                  msgError := e.Message;
                  result := false;
                  LogIt( 'RODOCRED autenticar : '+e.message );
              end;
           end;
        end
        else
        begin
           self.token := TokenSessao;
           //TokenSessaoHora := Now;
           result := True;
        end;

        ListaTokens.Values[self.cliente] := self.token+'|'+formatDateTime('dd/mm/yyyy hh:nn:ss', now);

     end;
  finally
     LeaveCriticalSection(CritSect);
  end;
end;


function TAdministradoraRodocredVersao001.IntegraDadosCadastroNacional(
  Caminhao,  proprietario, motorista, cartao : string): boolean;

  function GeraXMLContratado( var xml : string; OPERACAO : STRING  ) : boolean;
  var
     contratado : tManterTransportadorRequest;
     mensagem : string;
     vendereco, vTipoLogradouro, vNumero : string;
     parte : string;
     vTelefone, vddd  : string;

     CartaoMotorista,
     CartaoProprietario : string;

  begin


     CartaoMotorista    := cartao;
     if pos(';',CartaoMotorista) > 0 then
     begin
        CartaoProprietario := copy( CartaoMotorista, pos(';',CartaoMotorista)+1, 100 );
        CartaoMotorista    := copy( CartaoMotorista, 1                       , pos(';',CartaoMotorista)-1);
     end
     else
        CartaoProprietario := '';

     try
        contratado := tManterTransportadorRequest.Create;
        try
           with contratado.IdentificacaoIntegracao do
           begin
              IdClienteRodocred := self.idCliente;
              TokenAutenticacao := self.token;
              NumeroTransacao   := bean.numeroContratoFrete;
              VersaoServico     := self.versaoSevico;
           end;
           contratado.Operacao := operacao;
           contratado.IdClienteResponsavel := '';
           with contratado.ListaTransportador do
           begin
              parte := 'transportador';
              with addDadosTransportador do
              begin
                 Transportador.CNPJCPFTransportador := bean.contratado.contratado_cnpj_cpf;
                 Transportador.RNTRC                := bean.contratado.rntrc_codigo;
                 Transportador.NomeTransportador    := bean.contratado.nome_contratado;
                 TipoTransportador                  := bean.veiculo.rntrc_tipo;
                 with Contato do
                 begin
                    TipoContato := 'R';
                    Nome        := bean.contratado.contato;

                    vTelefone := bean.contratado.telefone1;
                    DivideTelefone( vTelefone, vddd );
                    if vddd = '' then raise Exception.Create('Não foi informado o DDD');
                    Telefone    := iif( (vddd+' ')[1]='0', copy( vddd, 2,2), vddd)+vTelefone;
                    Celular     := '';
                    Email       := '';
                    MeioComunicacaoPreferido := 'Telefone';
                 end;

                 parte := 'endereco';
                 with endereco do
                 begin
                    TipoEndereco   := 'R';
                    CEP            := bean.contratado.cep;

                    vendereco      := bean.contratado.endereco;
                    DivideEndereco( vendereco, vTipoLogradouro, vNumero );
                    TipoLogradouro := vTipoLogradouro;
                    Logradouro     := vEndereco;
                    Numero         := vNumero;

                    Complemento    := bean.contratado.endereco_complemento;
                    Bairro         := bean.contratado.bairro;
                    Cidade         := bean.contratado.cidade;
                    Estado         := bean.contratado.uf;
                 end;

                 parte := 'veiculo';
                 with addVeiculo do
                 begin
                    TipoTransporteVeiculo := 'T';
                    RNTRC                 := bean.veiculo.rntrc_codigo;
                    CNPJCPF               := bean.contratado.contratado_cnpj_cpf;
                    QtdeEixos             := strToInt(bean.veiculo.numero_eixos);

                    TipoVeiculo  := GetCategoriaVeiculo( bean.veiculo.categoriaveiculo );
                    if bean.veiculo.categoriaveiculo < 5 then
                       TipoRodagem  := 'S'
                    else
                       TipoRodagem  := 'D';

                    if bean.veiculo.dadosRodocred.TipoRodagemRodocred <> '' then
                    begin
                       if bean.veiculo.dadosRodocred.TipoRodagemRodocred = '1' then
                          TipoRodagem           := 'S'
                       else
                          TipoRodagem           := 'D';
                    end;
                    if bean.veiculo.dadosRodocred.TipoVeiculoRodocred<>'' then
                       TipoVeiculo           := bean.veiculo.dadosRodocred.TipoVeiculoRodocred;
                    ModeloVeiculo         := ''; //não enviar bean.veiculo.ModeloVeiculoRodocred'), ;

                    PlacaVeiculo          := bean.veiculo.placa;
                    UfPlacaVeiculo        := bean.veiculo.placa_uf;
                    NumeroFrotaVeiculo    := '';
                    if bean.veiculo.dadosRodocred.TipoCombustivelRodocred = '' then
                    begin
                       if bean.veiculo.categoriaveiculo < 5 then
                          TipoCombustivelVeiculo:= '2'
                       else
                          TipoCombustivelVeiculo:= '1';
                    end
                    else
                       TipoCombustivelVeiculo:= bean.veiculo.dadosRodocred.TipoCombustivelRodocred;
                    CapacidadeTanqueVeiculo:='';
                    MediaConsumoVeiculo   := '';
                 end;

                 if bean.veiculo.carretas.first <> nil then
                 repeat
                     parte := 'carreta '+bean.veiculo.carretas.item.placa;
                     with addVeiculo do
                     begin
                        TipoTransporteVeiculo := 'T';
                        RNTRC                 := bean.veiculo.carretas.item.rntrc_codigo;
                        CNPJCPF               := bean.veiculo.carretas.item.contratado_cnpj_cpf;
                        QtdeEixos             := strToInt(bean.veiculo.carretas.item.numero_eixos);

                        TipoVeiculo  := GetCategoriaVeiculo( bean.veiculo.carretas.item.categoriaveiculo );
                        if bean.veiculo.carretas.item.categoriaveiculo < 5 then
                           TipoRodagem  := 'S'
                        else
                           TipoRodagem  := 'D';

                        if bean.veiculo.carretas.item.dadosRodocred.TipoVeiculoRodocred <> '' then
                        begin
                           TipoVeiculo           := bean.veiculo.carretas.item.dadosRodocred.TipoVeiculoRodocred;
                           TipoRodagem           := 'D';
                        end;

                        ModeloVeiculo         := ''; //não enviar
                        PlacaVeiculo          := bean.veiculo.carretas.item.placa;
                        UfPlacaVeiculo        := bean.veiculo.carretas.item.placa_uf;
                        NumeroFrotaVeiculo    := '';
                        TipoCombustivelVeiculo:= '1'; //bean.veiculo.carretas.Item.dadosRodocred.TipoCombustivelRodocred;
                        CapacidadeTanqueVeiculo:='';
                        MediaConsumoVeiculo   := '';
                     end;
                 until bean.veiculo.carretas.Next = nil;

                 parte := 'motorista';
                 with addmotorista do
                 begin
                    NomeMotorista := bean.motorista.nome;
                    Relacao       := '';
                    CPFMotorista  := bean.motorista.cpf;
                    CNHMotorista.NumeroCNH  := bean.motorista.carteira_habilitacao;
                    CNHMotorista.CNHCategoria:=Copy(bean.motorista.carteira_habilitacao_categoria+' ',1,1);
                    parte := 'motorista contato';
                    with Contato do
                    begin
                      TipoContato := 'R';
                      Nome        := bean.motorista.nome;
                      vTelefone := bean.motorista.telefone;
                      DivideTelefone( vTelefone, vddd );
                      if vddd = '' then raise Exception.Create('Não foi informado o DDD');
                      Telefone    := iif( (vddd+' ')[1]='0', copy( vddd, 2,2), vddd)+vTelefone;

                      Celular     := '';
                      Email       := '';
                      MeioComunicacaoPreferido := 'Telefone';
                    end;

                    parte := 'motorista endereco';
                    with Endereco do
                    begin
                       TipoEndereco   := 'R';
                       CEP            := bean.motorista. cep;
                       parte := 'motorista endereco endereco';
                       try
                         vendereco      := bean.motorista.endereco;
                         DivideEndereco( vendereco, vTipoLogradouro, vNumero );
                         TipoLogradouro := iif( vTipoLogradouro='', 'RUA', vTipoLogradouro) ;
                         Logradouro     := vEndereco;
                         if vNumero = '' then vNumero := '0';
                         Numero         := vNumero;
                       except
                         on e:Exception do
                         begin
                            TipoLogradouro := 'RUA';
                            Logradouro     := bean.motorista.endereco;
                            Numero         := '0';
                            LogIt( parte+':'+e.message );
                         end;
                       end;

                       parte := 'motorista endereco complemento';
                       Complemento    := bean.motorista.endereco_complemento;
                       parte := 'motorista endereco bairro';
                       Bairro         := bean.motorista.bairro;
                       parte := 'motorista endereco cidade';
                       Cidade         := bean.motorista.cidade;
                       parte := 'motorista endereco uf';
                       Estado         := bean.motorista.uf;
                       parte := 'motorista endereco fim';
                    end;
                    parte := 'motorista nascimento';
                    if Bean.motorista.data_nascimento <> 0 then
                       DataNascimento    := FormatDateTime('yyyy-mm-dd', Bean.motorista.data_nascimento );
                    Identidade        := Bean.motorista.rg;
                    OrgaoExpedidor    := Bean.motorista.Orgao_Expedido;
                    Sexo              := 'M'; //fixo

                    if Copy( CartaoMotorista, 1, 8) = '63926900' then // se provisorio então manda
                       NumeroCartao      := CartaoMotorista;
                    if Copy( CartaoMotorista, 1, 8) = '54288800' then // se provisorio então manda (mastercard)
                       NumeroCartao      := CartaoMotorista;

                    //NumeroCartao      := cartao;

                    ValidaTransportadorANTT := false;
                    ValidaFrotaANTT         := false;
                 end;

                 {Boa tarde. Sim, o provisório inicia com “6392 6900” enquanto o definitivo inicia com “6392 6901”. Gustavo Araujo Coordenador de Operações}
                 if CartaoProprietario <> '' then
                 begin
                   if Copy( CartaoProprietario, 1, 8) = '63926900' then // se provisorio então manda
                      NumeroCartao      := CartaoProprietario;
                   if Copy( CartaoProprietario, 1, 8) = '54288800' then // se provisorio então manda (mastercard)
                      NumeroCartao      := CartaoProprietario;
                 end;

              end;
           end;

           parte := 'serializa';
           if T5XmlSerializa._Serializa( contratado, mensagem, ParametrosSerializacao ) then
              xml := mensagem
           else
              raise exception.create( mensagem );
        finally
           contratado.free;
        end;
        result := true;
     except
        on e:Exception do
        begin
           MsgError := 'Não foi possivel gerar o arquivo de veiculo. '+parte+' '+e.Message;
           result := false;
            LogIt(parte+':'+ e.message );
        end;
     end;
  end;

var
   xmlcontratado: String;

   xmlfinal : string;

   retorno : wideString;
   testeDecode : string;
   mensagem : string;

   contratadoResponse : tManterTransportadorResponse;
   operacao : string;

   autenticou: boolean;

   parte : string;
begin
  parte := '';
  autenticou:= False;
  try
      operacao := 'INC';
      repeat
         result :=  GeraXMLContratado(xmlContratado, operacao);
         if not result then break;

         xmlfinal := UTF8Encode( xmlcontratado );

         ArquivoGerado.Add( xmlcontratado );

         if FindCmdLineSwitch('teste', ['-'], true) then
           result := True
         else
         begin
            retorno :=  urdc_soap_v1_00.SOAPGet( Self.host, 'ManterTransportador', xmlfinal, DadosOperadora.proxy.proxy, DadosOperadora.proxy.proxyusuario, DadosOperadora.proxy.proxysenha );
            retorno :=  urdc_soap_v1_00.SOAPResponse( retorno );

            ArquivoRecebido.Add( retorno );
            testeDecode := UTF8Decode( retorno );
            if testeDecode <> '' then
               retorno := testeDecode;
               
            contratadoResponse := tManterTransportadorResponse.Create;
            try
                parte := 'RODOCRED Deserialização retorno';
                if T5XmlSerializa._DeSerializa( contratadoResponse, retorno, mensagem, ParametrosSerializacao ) then
                begin
                   result :=     (contratadoResponse.RetornoMensagem.StatusRetorno = 'SUCESSO')
                             and (contratadoResponse.TranportadorRetorno[0].StatusRetorno = 'SUCESSO')
                             AND (    (contratadoResponse.TranportadorRetorno[0].Veiculos[0].StatusRetorno = 'SUCESSO')
                                   or (contratadoResponse.TranportadorRetorno[0].Veiculos[0].Excecao.CodigoExcecao='VEIEXC004') )
                             AND (    (contratadoResponse.TranportadorRetorno[0].Motoristas[0].StatusRetorno = 'SUCESSO')
                                   or (contratadoResponse.TranportadorRetorno[0].Motoristas[0].Excecao.CodigoExcecao='MOTEXC009'))
                             AND (    (contratadoResponse.TranportadorRetorno[0].Motoristas[0].StatusRetorno = 'SUCESSO')
                                   or (contratadoResponse.TranportadorRetorno[0].Motoristas[0].Excecao.CodigoExcecao='MOTEXC009'))
                             AND (    (contratadoResponse.TranportadorRetorno[0].Cartao.StatusRetorno <> 'ERRO') );

                   if not result then
                   begin
                      if (contratadoResponse.RetornoMensagem.StatusRetorno = 'SUCESSO') and
                         (contratadoResponse.TranportadorRetorno[0].StatusRetorno <> 'SUCESSO') then
                      begin
                         if     (contratadoResponse.TranportadorRetorno[0].Excecao.TipoExcecao = 'NEGOCIO')
                            and (contratadoResponse.TranportadorRetorno[0].Excecao.CodigoExcecao = 'TRAEXC002') then
                         begin
                            operacao := 'ALT';
                            continue;
                         end;
                      end;
                      if Length(contratadoResponse.TranportadorRetorno) >0 then
                      try
                         if Assigned( contratadoResponse.TranportadorRetorno[0].Cartao ) then
                         begin
                            if  (contratadoResponse.TranportadorRetorno[0].Cartao.Excecao.TipoExcecao = 'NEGOCIO')
                               and (    (contratadoResponse.TranportadorRetorno[0].Cartao.Excecao.CodigoExcecao = 'TRAEXC013')
                                     or (contratadoResponse.TranportadorRetorno[0].Cartao.Excecao.CodigoExcecao = 'TRAEXC012') ) then
                            begin
                                cartao := '';
                                continue;
                            end;
                         end;
                      except
                        // tem um erro  no retrono da rodocred, que quando sanado não vai mais precisar desta gambi.
                      end;

                      if contratadoResponse.RetornoMensagem.StatusRetorno <> 'SUCESSO' then
                      begin
                         msgError := 'Chamada do webserver não foi executada com sucesso '+
                                     contratadoResponse.RetornoMensagem.Excecao.TipoExcecao+' - '+
                                     contratadoResponse.RetornoMensagem.Excecao.CodigoExcecao+' - '+
                                     contratadoResponse.RetornoMensagem.Excecao.MensagemExcecao;

                         if (contratadoResponse.RetornoMensagem.Excecao.CodigoExcecao = 'GENEXC002') and not (autenticou) then //pegou em a hora de revalidação do token de autenticação.
                         begin
                            InvalidaToken;
                            AutenticarCliente;
                            autenticou:=True;
                            Continue;
                         end;

                      end
                      else
                      begin

                         if (contratadoResponse.TranportadorRetorno[0].StatusRetorno <> 'SUCESSO') then
                            msgError := 'Contratado não foi cadastrado: '+contratadoResponse.TranportadorRetorno[0].Excecao.TipoExcecao+' - '+
                                     contratadoResponse.TranportadorRetorno[0].Excecao.CodigoExcecao+' - '+
                                     contratadoResponse.TranportadorRetorno[0].Excecao.MensagemExcecao;

                         if (contratadoResponse.TranportadorRetorno[0].Veiculos[0].StatusRetorno <> 'SUCESSO') then
                            msgError := 'Veículo não foi cadastrado: '+contratadoResponse.TranportadorRetorno[0].Veiculos[0].Excecao.TipoExcecao+' - '+
                                     contratadoResponse.TranportadorRetorno[0].Veiculos[0].Excecao.CodigoExcecao+' - '+
                                     contratadoResponse.TranportadorRetorno[0].Veiculos[0].Excecao.MensagemExcecao;

                         if (contratadoResponse.TranportadorRetorno[0].Motoristas[0].StatusRetorno <> 'SUCESSO') then
                            msgError := 'Motorista não foi cadastrado: '+contratadoResponse.TranportadorRetorno[0].Motoristas[0].Excecao.TipoExcecao+' - '+
                                     contratadoResponse.TranportadorRetorno[0].Motoristas[0].Excecao.CodigoExcecao+' - '+
                                     contratadoResponse.TranportadorRetorno[0].Motoristas[0].Excecao.MensagemExcecao;

                         if (contratadoResponse.TranportadorRetorno[0].Cartao.StatusRetorno <> 'SUCESSO') then
                            msgError := 'Erro do cartão passado: '+contratadoResponse.TranportadorRetorno[0].cartao.Excecao.TipoExcecao+' - '+
                                     contratadoResponse.TranportadorRetorno[0].cartao.Excecao.CodigoExcecao+' - '+
                                     contratadoResponse.TranportadorRetorno[0].cartao.Excecao.MensagemExcecao;

                      end;
                   end;
                end
                else
                begin
                   msgError := mensagem + #10+ retorno;
                   result := false;
                end
            finally
               contratadoResponse.free;
            end;
         end;
         break; // sem comentarios
      until result;
  except
    on e:exception do
    begin
       msgError := e.Message;
       result := false;
       LogIt( e.message );
    end
  end;
end;


function TAdministradoraRodocredVersao001.insereContratoFrete: boolean;
    {-----------------------------------------------------------------------------
      Procedure: insereContratoFrete_Integracao
      Autor:     Callian
      Data:      19-out-2011
    -----------------------------------------------------------------------------}
    function insereContratoFrete_Integracao( objectRequest : urdc_ManterViagem_v1_00.tManterViagemRequest ): boolean;
    begin
       try
          with ( objectRequest ) do begin
             with ( GetIdentificacaoIntegracao ) do begin
                IdClienteRodocred := self.idCliente;
                TokenAutenticacao := self.token;
                NumeroTransacao   := bean.numeroContratoFrete;
                VersaoServico     := '1.01'; //'self.versaoSevico;
             end;
          end;
          Result := True;
       except
          on e : exception do begin
             Result := False;
             msgError := e.Message;
             LogIt( 'insereContratoFrete_Integracao '+e.message );
          end;
       end;
    end;

    {-----------------------------------------------------------------------------
      Procedure: insereContratoFrete_Request
      Autor:     Callian
      Data:      19-out-2011
    -----------------------------------------------------------------------------}
    function insereContratoFrete_Request( objectRequest : urdc_ManterViagem_v1_00.tManterViagemRequest  ): boolean;
    begin
       try
          with ( objectRequest ) do begin
             IdClienteResponsavel    := '';
             Operacao                := 'INC';
             if bean.tipoPagamentoContratoFrete <> '1' then
                TipoViagem              := 'RDF'
             else
                TipoViagem              := 'FRE';

//             if bean.tipoPagamentoContratoFrete = '1' then
//                MeioPagamentoTransporte := 'TRF'   não enviar mais
//             else
//                MeioPagamentoTransporte := 'DEP';
          end;
          result := true;
       except
          on e : exception do begin
             Result := False;
             msgError := e.Message;
             LogIt( 'insereContratoFrete_Request '+e.message );
          end;
       end;
    end;

    {-----------------------------------------------------------------------------
      Procedure: insereContratoFrete_DadosViagem
      Autor:     Callian
      Data:      19-out-2011
    -----------------------------------------------------------------------------}
    function insereContratoFrete_DadosViagem(objectRequest: urdc_ManterViagem_v1_00.tManterViagemRequest): boolean;
    begin
       try
          with ( objectRequest ) do begin
             with GetDadosViagem do begin
                //NumeroViagem    := bean.documento;  somente mandar quando manutenção ou exclusão ou cancelamento.
                Embarque        := formatDateTime('yyyy-mm-dd', now ); //uT5Funcoes.ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_DATASAIDA'           ));
                TempoViagemRota := TempoViagemRota + ( (TempoViagemRota mod 8) * 16); //se passar de 8 horas, bota o descanso de 16 horas e multiplica pelo numero de dia por frcao de 8 horas.
                PrevisaoEntrega := formatDateTime('yyyy-mm-dd', IncHour( now, TempoViagemRota)+1 ); //uT5Funcoes.ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_DATACHEGADA'         )+7);

                with GetForo do begin
                   Estado := bean.uf_matriz;
                   Cidade := bean.cidadeMatriz;
                end;
                GerarCIOT := Bean.ParametrosOperadora.Values['GerarCIOT']<>'N';

                DocumentoRef := bean.documento+'/'+bean.serie_documento+'/'+bean.codigo_filial;

                DataVigencia := formatDateTime('yyyy-mm-dd', IncHour( now, TempoViagemRota) + 8);
                NumeroViagemContratacao   := '';
                CentrodeCusto := '';
                Observacao    := bean.observacoes;
                SemTransporteCarga := FALSE;
             end;
          end;
          result := true;
       except
          on e : exception do begin
             Result := False;
             msgError := e.Message;
             LogIt( 'insereContratoFrete_DadosViagem '+e.message );
          end;
       end;
    end;

    {-----------------------------------------------------------------------------
      Procedure: insereContratoFrete_DadosTransportador
      Autor:     Callian
      Data:      19-out-2011
    -----------------------------------------------------------------------------}
    function insereContratoFrete_DadosTransportador(
      objectRequest: urdc_ManterViagem_v1_00.tManterViagemRequest): boolean;
    begin
       try
          with ( objectRequest ) do begin
             with ( GetTransportador ) do begin
                CNPJCPFTransportador := bean.contratado.contratado_cnpj_cpf;
                RNTRC                := bean.contratado.rntrc_codigo;
                NomeTransportador    := bean.contratado.nome_contratado;
             end;
          end;
          result := true;
       except
          on e : exception do begin
             Result := False;
             msgError := e.Message;
             LogIt( 'insereContratoFrete_DadosTransportador '+e.message );
          end;
       end;
    end;

    {-----------------------------------------------------------------------------
      Procedure: insereContratoFrete_RotaViagem
      Autor:     Callian
      Data:      19-out-2011
    -----------------------------------------------------------------------------}
    function insereContratoFrete_RotaViagem(
      objectRequest: urdc_ManterViagem_v1_00.tManterViagemRequest): boolean;
    var
      sRota : string;
      mensagem   : string;
      icodigoRota : tCodigoRotaType;
    begin
       try
         if FindCmdLineSwitch('teste', ['-'], true) then
         begin
             result := true;
             //icodigoRota := 1;
         end
         else
         begin
            if (Bean.rota.codigoRota <> 'SEM ROTA') and (Bean.rota.codigoRota <> '') and (Bean.rota.codigoRota <> '0')then
            begin
               result := getRotas( Bean.rota.codigoRota, sRota, mensagem );
               icodigoRota := strToInt( sRota );
               if result then
               with ( objectRequest ) do begin
                  with GetRotaViagem do begin
                     addCodigoRota( icodigoRota );
//                     if bean.rota.pontosRota.first <> nil then
//                     repeat
//                        with addOrigemDestinoRota do begin
//                           CodigoIBGEOrigem  := bean.rota.pontosRota.Item.ibge_origem ;
//                           CodigoIBGEDestino := bean.rota.pontosRota.Item.ibge_destino;
//                        end;
//                     until bean.rota.pontosRota.Next = nil;
                  end;
               end;
            end
            else
            if bean.rota.pontosRota.first <> nil then
            begin
               with ( objectRequest ) do 
               with GetRotaViagem do begin
                  repeat
                     with addOrigemDestinoRota do begin
                        CodigoIBGEOrigem  := bean.rota.pontosRota.Item.ibge_origem ;
                        CodigoIBGEDestino := bean.rota.pontosRota.Item.ibge_destino;
                     end;
                  until bean.rota.pontosRota.Next = nil;
               end;
               result := true;
            end
            else
              result := false;
         end;
       except
          on e : exception do begin
             Result := False;
             msgError := e.Message;
             LogIt( 'insereContratoFrete_RotaViagem '+e.message );
          end;
       end;
    end;

    function insereContratoFrete_Veiculo(
      objectRequest: urdc_ManterViagem_v1_00.tManterViagemRequest): boolean;
    begin
       try
          with ( objectRequest ) do begin
             with AddVeiculosViagem do begin
                 PlacaVeiculo := bean.veiculo.placa;
                 QtdeEixos    := strToInt( bean.veiculo.numero_eixos );
                 TipoVeiculo  := GetCategoriaVeiculo( bean.veiculo.categoriaveiculo );
                 if bean.veiculo.categoriaveiculo < 5 then
                    TipoRodagem  := 'S'
                 else
                    TipoRodagem  := 'D';

                 if bean.veiculo.dadosRodocred.TipoVeiculoRodocred<>'' then
                    TipoVeiculo  := bean.veiculo.dadosRodocred.TipoVeiculoRodocred;

                 if bean.veiculo.dadosRodocred.TipoVeiculoRodocred<>'' then
                 begin
                    if bean.veiculo.dadosRodocred.TipoVeiculoRodocred = '1' then
                       TipoRodagem  := 'S' //ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'RDCVTR_CODIGO' );
                    else
                       TipoRodagem  := 'D'; //ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'RDCVTR_CODIGO' );
                 end;

                 RNTRC        := bean.veiculo.rntrc_codigo;
                 CNPJCPF      := bean.veiculo.contratado_cnpj_cpf;
             end;

          end;
          result := true;
       except
          on e : exception do begin
             Result := False;
             msgError := 'insereContratoFrete_Veiculo '+e.Message;
             LogIt( e.message );
          end;
       end;
    end;

    function insereContratoFrete_ValePedagioViagem(
      objectRequest: urdc_ManterViagem_v1_00.tManterViagemRequest): boolean;
    begin
       try
          with ( objectRequest ) do begin
             with ( GetValePedagioViagem ) do begin
                if (bean.pedagio.formaPagamentoPedagio = '1' {cartao}) or (bean.pedagio.formaPagamentoPedagio = '3'{ticket}) then
                begin
                    OperadoraFinanceiraVP    := 'DBT';
                    if bean.pedagio.formaPagamentoPedagio='3' then
                    begin
                       MeioPagamentoValePedagio := 1; {-- 1-Cupom; 3-Cartão; --}
                       if Bean.ParametrosOperadora.Values['ModalidadeLocalImpressao'] = '' then
                          ModalidadeLocalImpressao := 'LOC'
                       else
                          ModalidadeLocalImpressao := Bean.ParametrosOperadora.Values['ModalidadeLocalImpressao'];

                       if Bean.ParametrosOperadora.Values['IDLocalImpressao'] = '' then
                          IDLocalImpressao         :=    IntToStr( self.idCliente )
                       else
                          IDLocalImpressao         :=    Bean.ParametrosOperadora.Values['IDLocalImpressao'];
                    end
                    else
                       MeioPagamentoValePedagio := 3; {-- 1-Cupom; 3-Cartão; --}
                end
                else
                begin
                    OperadoraFinanceiraVP    := 'OUT';
                    MeioPagamentoValePedagio := 5;
                end;
                ValorPedagio             := bean.pedagio.valorPedagio;
                //with addPracasTarifaDiferenciada do begin
                //   IdPraca          := '123';
                //   CondicaoCompraVP := 'ccvp';
                //end;
             end;
          end;
          result := true;
       except
          on e : exception do begin
             Result := False;
             msgError := 'insereContratoFrete_ValePedagioViagem '+e.Message;
             LogIt( e.message );
          end;
       end;
    end;

    function insereContratoFrete_MotoristaViagem(
      objectRequest: urdc_ManterViagem_v1_00.tManterViagemRequest): boolean;
    begin
       try
          with ( objectRequest ) do begin
             with AddMotoristaViagem do begin
                CPFMotorista  := bean.motorista.cpf;
                NomeMotorista := bean.motorista.nome;
             end;
          end;
          result := true;
       except
          on e : exception do begin
             Result := False;
             msgError := 'insereContratoFrete_MotoristaViagem '+e.Message;
             LogIt( e.message );
          end;
       end;
    end;

    function insereContratoFrete_EnvolvidoFrete(
      objectRequest: urdc_ManterViagem_v1_00.tManterViagemRequest): boolean;
    var vendereco, vTipoLogradouro, vNumero : string;
    begin
       try
          with ( objectRequest ) do begin
             with ( GetEnvolvidosTransporteViagem ) do begin
                IF bean.formaPagamentoDocumento = 'P' then
                  TipoFrete := 'FOB'
                else
                  TipoFrete := 'CIF';
                with ( addEnvolvidosTransporte ) do begin
                   TipoEnvolvido :='REM';
                   CNPJCPF       := bean.cliente_Origem.cnpj_cpf;
                   NomeEnvolvido := bean.cliente_Origem.nome;
                   with GetEndereco do begin
                      TipoEndereco   := 'C';//ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, '' );
                      CEP            := bean.cliente_Origem.cep;

                      vendereco      := bean.cliente_Origem.endereco;
                      DivideEndereco( vendereco, vTipoLogradouro, vNumero );
                      TipoLogradouro := vTipoLogradouro;
                      Logradouro     := vEndereco;
                      Numero         := vNumero;

                      Complemento    := bean.cliente_Origem.complemento+' ';
                      Bairro         := bean.cliente_Origem.bairro+' ';
                      Cidade         := bean.cliente_Origem.cidade;
                      Estado         := bean.cliente_Origem.uf;
                   end;
                end;

                with ( addEnvolvidosTransporte ) do begin
                   TipoEnvolvido :='DES';
                   CNPJCPF       := bean.cliente_Destino.cnpj_cpf;
                   NomeEnvolvido := bean.cliente_Destino.nome;
                   with GetEndereco do begin
                      TipoEndereco   := 'C';//ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, '' );
                      CEP            := bean.cliente_Destino.cep;

                      vendereco      := bean.cliente_Destino.endereco;
                      DivideEndereco( vendereco, vTipoLogradouro, vNumero );
                      TipoLogradouro := vTipoLogradouro;
                      Logradouro     := vEndereco;
                      Numero         := vNumero;

                      Complemento    := bean.cliente_Destino.complemento+' ';
                      Bairro         := bean.cliente_Destino.bairro+' ';
                      Cidade         := bean.cliente_Destino.cidade;
                      Estado         := bean.cliente_Destino.uf;
                   end;
                end;

                if bean.cliente_Consignatario.cnpj_cpf<>'' then
                  with ( addEnvolvidosTransporte ) do begin
                     TipoEnvolvido :='CON';
                     CNPJCPF       := bean.cliente_Consignatario.cnpj_cpf;
                     NomeEnvolvido := bean.cliente_Consignatario.nome;
                     with GetEndereco do begin
                        TipoEndereco   := 'C';//ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, '' );
                        CEP            := bean.cliente_Consignatario.cep;

                        vendereco      := bean.cliente_Consignatario.endereco;
                        DivideEndereco( vendereco, vTipoLogradouro, vNumero );
                        TipoLogradouro := vTipoLogradouro;
                        Logradouro     := vEndereco;
                        Numero         := vNumero;

                        Complemento    := bean.cliente_Consignatario.complemento+' ';
                        Bairro         := bean.cliente_Consignatario.bairro+' ';
                        Cidade         := bean.cliente_Consignatario.cidade;
                        Estado         := bean.cliente_Consignatario.uf;
                     end;
                  end;


             end;

          end;
          result := true;
       except
          on e : exception do begin
             Result := False;
             msgError := 'insereContratoFrete_EnvolvidoFrete '+e.Message;
             LogIt( e.message );
          end;
       end;
    end;

    function insereContratoFrete_ValoresViagem(
      objectRequest: urdc_ManterViagem_v1_00.tManterViagemRequest): boolean;
    begin
       try
          with ( objectRequest ) do begin
             with ( GetValoresViagem ) do begin
                ValorDespesas     := 0;
                ValorFrete        := bean.valorTotalMotorista; //bean.valorAdiantamento+bean.valorSaldo;
                ValorCombustivel  := 0;
                PesoCarga         := bean.pesoSaida;
                if (Bean.valorFreteMotorista <> bean.valorTotalMotorista) or
                   ((Bean.valorFreteMotorista = bean.valorTotalMotorista) and  (bean.pesoSaida = 1000 )) then
                   ValorFreteTonelada:= FloatToStr(  Bean.valorFreteMotorista, ParametrosSerializacao.FormatSettings);
                ValorCarga        := Bean.valorNotaFiscal;
                UnidadeMedidaPeso := 'KG';

             end;
          end;
          result := true;
       except
          on e : exception do begin
             Result := False;
             msgError := 'insereContratoFrete_ValoresViagem '+e.Message;
             LogIt( e.message );
          end;
       end;
    end;

    function insereContratoFrete_ImpostoViagem( objectRequest: urdc_ManterViagem_v1_00.tManterViagemRequest): boolean;
    begin
       try
          with ( objectRequest ) do begin
             with ( GetImpostosViagem ) do begin
                ValorTotalImpostos := bean.valorINSS+
                                      bean.valorSest+bean.valorSenat+
                                      bean.valorIRRF;
                with ( addImpostos ) do begin
                   CodigoImposto      := 'INSS';
                   BaseCalculoImposto := bean.BaseINSS;
                   PercentualImposto  := bean.AliquotaINSS;
                   ValorImposto       := bean.valorINSS;
                   if bean.valorINSS > 0 then
                     RetencaoImposto    := true
                   else
                     RetencaoImposto    := False;
                end;
                with ( addImpostos ) do begin
                   CodigoImposto      := 'SENAT';
                   BaseCalculoImposto := bean.BaseSestSenat;
                   PercentualImposto  := bean.AliquotaSest + bean.AliquotaSenat;
                   ValorImposto       := bean.valorSest+bean.valorSenat;
                   if (bean.valorSest+bean.valorSenat)>0 then
                      RetencaoImposto    := true
                   else
                      RetencaoImposto    := False;
                end;
                with ( addImpostos ) do begin
                   CodigoImposto      := 'IRRF';
                   BaseCalculoImposto := bean.BaseIRRF;
                   PercentualImposto  := bean.AliquotaIRRF;
                   ValorImposto       := bean.valorIRRF;
                   if bean.valorIRRF>0 then
                     RetencaoImposto    := true
                   else
                     RetencaoImposto    := False;
                end;
             end;
          end;
          result := true;
       except
          on e : exception do begin
             Result := False;
             msgError := 'insereContratoFrete_ImpostoViagem '+e.Message;
             LogIt( e.message );
          end;
       end;
    end;

    function insereContratoFrete_DadosBancarios(
      objectRequest: urdc_ManterViagem_v1_00.tManterViagemRequest): boolean;
    begin
       try
          with ( objectRequest ) do begin
             if (bean.DadosDeposito.banco <> '0') and (bean.DadosDeposito.banco <> '') then
             with ( GetDadosBancarios ) do begin
                CodigoBanco    := bean.DadosDeposito.banco;
                NumeroAgencia  := bean.DadosDeposito.agencia;
                DvAgencia      := bean.DadosDeposito.dvAgendia;
                NumeroConta    := bean.DadosDeposito.conta;
                DVConta        := bean.DadosDeposito.dvConta;
                InformacoesPagamento  := '';
             end;
          end;
          result := true;
       except
          on e : exception do begin
             Result := False;
             msgError := 'insereContratoFrete_DadosBancarios '+e.Message;
             LogIt( e.message );
          end;
       end;
    end;

    function insereContratoFrete_DocumentoViagem(
      objectRequest: urdc_ManterViagem_v1_00.tManterViagemRequest): boolean;
    var
       vdocumentos : TStringList;
    begin
       try
           if Bean.DocumentosEntrega.first <> nil then
              repeat
                with ( objectRequest ) do
                 if Bean.DocumentosEntrega.Item.Codigo='CTE' then
                     with GetDocumentosViagem do begin
                        with AddDocumento do begin
                           CodigoDocumento    := 'CTE';
                           NumeroDocumento    := bean.documento;
                           CodigoAuxiliar     := '';
                           if bean.tipoPagamentoContratoFrete <> '1' then
                              DocumentoRequerido :='S'
                           else
                              DocumentoRequerido :='N';
                           NaturezaCarga      := COPY(bean.NCM+'    ', 1,4);
                           ObservacaoDocumento:= bean.observacoes;
                        end;
                     end
                 else if (Bean.DocumentosEntrega.Item.Codigo = 'TCB') or (Bean.DocumentosEntrega.Item.Codigo = 'TCK') then
                     with GetDocumentosViagem do begin
                        with AddDocumento do begin
                           CodigoDocumento    := 'TCK';
                           NumeroDocumento    := '';
                           CodigoAuxiliar     := '';
                           DocumentoRequerido := 'S';
                           NaturezaCarga      := COPY(bean.NCM+'    ', 1,4);
                           ObservacaoDocumento:= Bean.DocumentosEntrega.Item.Complemento;
                        end;
                     end
                 else if Bean.DocumentosEntrega.Item.Codigo  = 'NFF' then
                     with GetDocumentosViagem do begin
                        if bean.NotasFiscais.first <> nil then
                           repeat
                              with AddDocumento do begin
                                 CodigoDocumento    := 'NFF';
                                 if Length(bean.NotasFiscais.Item.NumeroNota)=44 then //nf-e
                                    NumeroDocumento    :=  IntToStr( StrToInt( Copy( bean.NotasFiscais.Item.NumeroNota, 26,9) )) // não mandar zeros a esquerda
                                 else
                                    NumeroDocumento    := bean.NotasFiscais.Item.NumeroNota;
                                 CodigoAuxiliar     := '';
                                 DocumentoRequerido :='S';
                                 NaturezaCarga      := COPY(bean.NCM+'    ', 1,4);
                                 ObservacaoDocumento:= Bean.DocumentosEntrega.Item.Complemento;
                              end
                           until Bean.NotasFiscais.Next=nil;
                     end
                 else
                     with GetDocumentosViagem do begin
                        with AddDocumento do begin
                           CodigoDocumento    := Bean.DocumentosEntrega.Item.Codigo;
                           NumeroDocumento    := Bean.DocumentosEntrega.Item.Documento;
                           CodigoAuxiliar     := '';
                           DocumentoRequerido :='S';
                           NaturezaCarga      := COPY(bean.NCM+'    ', 1,4);
                           ObservacaoDocumento:= Bean.DocumentosEntrega.Item.Complemento;
                        end
                     end;
              until Bean.DocumentosEntrega.Next = nil
           else
           begin
              vdocumentos := TStringList.Create;
              try
                 vdocumentos.Delimiter := ';';
                 vdocumentos.DelimitedText := Bean.ParametrosOperadora.Values['Documentos_Entrega'];
                 if vdocumentos.text = '' then
                 begin
//                    vdocumentos.Add( 'CTE' );
//                    vdocumentos.Add( 'TCK' );
//                    vdocumentos.Add( 'NFF' );
                 end;
                 with ( objectRequest ) do begin

                    while vdocumentos.Count > 0 do
                    begin
                        if vdocumentos[0]='CTE' then
                            with GetDocumentosViagem do begin
                               with AddDocumento do begin
                                  CodigoDocumento    := 'CTE';
                                  NumeroDocumento    := bean.documento;
                                  CodigoAuxiliar     := '';
                                  DocumentoRequerido :='S';
                                  NaturezaCarga      := COPY(bean.NCM+'    ', 1,4);
                                  ObservacaoDocumento:= bean.observacoes;
                               end;
                            end
                        else if vdocumentos[0] = 'TCK' then
                            with GetDocumentosViagem do begin
                               with AddDocumento do begin
                                  CodigoDocumento    := 'TCK';
                                  NumeroDocumento    := bean.documento+'0';
                                  CodigoAuxiliar     := '';
                                  DocumentoRequerido :='S';
                                  NaturezaCarga      := COPY(bean.NCM+'    ', 1,4);
                                  //ObservacaoDocumento:= bean.observacoes;
                               end;
                            end
                        else if vdocumentos[0] = 'NFF' then
                            with GetDocumentosViagem do begin
                               if bean.NotasFiscais.first <> nil then
                                  repeat
                                     with AddDocumento do begin
                                        CodigoDocumento    := 'NFF';
                                        if Length(bean.NotasFiscais.Item.NumeroNota)=44 then //nf-e
                                           NumeroDocumento    := Copy( bean.NotasFiscais.Item.NumeroNota, 26,9)
                                        else
                                           NumeroDocumento    := bean.NotasFiscais.Item.NumeroNota;
                                        CodigoAuxiliar     := '';
                                        DocumentoRequerido :='S';
                                        NaturezaCarga      := COPY(bean.NCM+'    ', 1,4);
                                        //ObservacaoDocumento:= bean.observacoes;
                                     end
                                  until Bean.NotasFiscais.Next=nil;
                            end;
                        vdocumentos.Delete(0);
                    end;
                 end;
              finally
                 vdocumentos.free;
              end;
           end;
           result := true;
       except
          on e : exception do begin
             Result := False;
             msgError := 'insereContratoFrete_DocumentoViagem '+e.Message;
             LogIt( e.message );
          end;
       end;
    end;

    function insereContratoFrete_Descontos( objectRequest: urdc_ManterViagem_v1_00.tManterViagemRequest): boolean;
    var viParcelaOperacao : Integer;
    begin
       viParcelaOperacao := 3000;
       try
          if bean.Descontos.first <> nil then
          with ( objectRequest ) do begin
             with ( GetProgramacaoViagem ) do begin
                 repeat
                    if TBeanDesconto( Bean.Descontos.item ).valor <> 0 then
                    with ( addOperacaoViagem ) do begin
                       IDOperacaoViagem := viParcelaOperacao; Inc(viParcelaOperacao);
                       CodigoOperacao            := 'DES';
                       CondicaoLiberacaoOperacao := 'LIB';
                       with AddEventoOperacao do
                       begin
                          CodigoEventoOperacao := 'DES';
                          ValorEvento          := TBeanDesconto( Bean.Descontos.item ).valor;
                          ObservacaoEvento     := TBeanDesconto( Bean.Descontos.item ).Descricao + TBeanDesconto( Bean.Descontos.item ).Observacao;
                       end;
                    end;
                 until Bean.Descontos.Next = nil;
             end;
          end;
          result := true;
       except
          on e : exception do begin
             Result := False;
             msgError := 'insereContratoFrete_Descontos '+e.Message;
             LogIt( e.message );
          end;
       end;

    end;

    function insereContratoFrete_ProgramacaoViagem( objectRequest: urdc_ManterViagem_v1_00.tManterViagemRequest): boolean;
    var
       viParcelaOperacao : Integer;
    begin
       viParcelaOperacao := 1;
       try
          with ( objectRequest ) do begin
             with ( GetProgramacaoViagem ) do begin

                if bean.tipoPagamentoContratoFrete <> '1' then  // DEP
                begin
                    with ( addOperacaoViagem ) do begin

                       IDOperacaoViagem := 999;

                       CodigoOperacao            := 'DEP';
                       CondicaoLiberacaoOperacao := 'LIB';
                       LocalRealizacao           := '';

                       {with GetEstabelecimento do begin
                          IDEstabelecimento := 1;
                          CNPJEstabelecimento := 'asdfasdfsad';
                       end;

                       with GetFilialEmpresa do begin
                          IDFilial := 1;
                       end;}

                       with addEventoOperacao do begin
                           CodigoEventoOperacao := 'DEP';
                           ValorEvento          := bean.valorAdiantamento+bean.valorSaldo;
                           QuantidadeLitros     := 0;
                           Combustivel          := '';
                           QuantidadeEvento     := '2'
                       end;

                       with addEventoOperacao do begin
                           CodigoEventoOperacao := 'PAR';
                           ValorEvento          := bean.valorAdiantamento;
                           DataEvento           := formatDateTime('yyyy-mm-dd', now);
                       end;
                       with addEventoOperacao do begin
                           CodigoEventoOperacao := 'PAR';
                           ValorEvento          := bean.valorSaldo;
                           DataEvento           := formatDateTime('yyyy-mm-dd', now+7);
                       end;

                    end;
                end
                else //TRF
                begin
                    if bean.valorAdiantamento > 0 then
                    begin
                       repeat
                          with ( addOperacaoViagem ) do begin

                             IDOperacaoViagem := viParcelaOperacao; Inc(viParcelaOperacao);

                             CodigoOperacao := 'ADF';
                             if (Bean.ParcelasAdiantamento.Item.dias = 0) and (Bean.ParametrosOperadora.Values['CondicaoLiberacaoOperacao_Adt']='DAD') then
                             begin
                                CondicaoLiberacaoOperacao := 'LIB';
                                LocalRealizacao := '';
                             end
                             else
                             begin
                                CondicaoLiberacaoOperacao := iif( Bean.ParametrosOperadora.Values['CondicaoLiberacaoOperacao_Adt']='', 'EST', Bean.ParametrosOperadora.Values['CondicaoLiberacaoOperacao_Adt']);
                                if Bean.ParametrosOperadora.Values['CondicaoLiberacaoOperacao_Adt']='DAD' then
                                   DataOperacao := FormatDateTime('yyyy-mm-dd', IncDay(Now, Bean.ParcelasAdiantamento.Item.dias)); //só quando for DAD -> formatDateTime('yyyy-mm-dd', now);
                                if (CondicaoLiberacaoOperacao<>'LIB') and (CondicaoLiberacaoOperacao<>'DAD') then
                                   LocalRealizacao := iif( Bean.ParametrosOperadora.Values['LocalRealizacao_Adiantamento']='', 'QER', Bean.ParametrosOperadora.Values['LocalRealizacao_Adiantamento']);
                             end;
                             with addEventoOperacao do begin
                                 CodigoEventoOperacao := 'TRF';
                                 ValorEvento := Bean.ParcelasAdiantamento.Item.valor;
                                 QuantidadeLitros := 0;
                                 Combustivel := '';
                                 DataEvento  := '';
                             end
                          end;
                       until Bean.ParcelasAdiantamento.Next = nil;
                    end;
                    if bean.valorSaldo > 0 then
                    with ( addOperacaoViagem ) do begin

                       IDOperacaoViagem := 1000; // de 0-999 é reservado para ADF

                       CodigoOperacao := iif( Bean.ParametrosOperadora.Values['CodigoOperacao_Saldo']='', 'EDS', Bean.ParametrosOperadora.Values['CodigoOperacao_Saldo']);
                       CondicaoLiberacaoOperacao := iif( Bean.ParametrosOperadora.Values['CondicaoLiberacaoOperacao_Saldo']='', 'EST', Bean.ParametrosOperadora.Values['CondicaoLiberacaoOperacao_Saldo']);
                       DataOperacao := ''; //só quando for DAD -> formatDateTime('yyyy-mm-dd', now);
                       LocalRealizacao := iif( Bean.ParametrosOperadora.Values['LocalRealizacao_Saldo']='', 'QER', Bean.ParametrosOperadora.Values['LocalRealizacao_Saldo']);
                       with addEventoOperacao do begin
                           CodigoEventoOperacao := 'RED';
                           ValorEvento := 0;
                           QuantidadeLitros := 0;
                           Combustivel := '';
                       end;
                       with addEventoOperacao do begin
                           CodigoEventoOperacao := 'TSF';
                           ValorEvento := bean.valorSaldo;
                           QuantidadeLitros := 0;
                           Combustivel := '';
                       end;

                       if (Bean.ParametrosOperadora.Values['CodigoOperacao_Saldo']='ESP') or
                          (Bean.ParametrosOperadora.Values['CodigoOperacao_Saldo']='EDP') or
                          (Bean.ParametrosOperadora.Values['CodigoOperacao_Saldo']='PES') then
                       with addEventoOperacao do begin
                           CodigoEventoOperacao := 'RPE';
                           ValorEvento := 0;
                           QuantidadeLitros := 0;
                           Combustivel := '';
                       end;
                    end;

                    if (Bean.ParametrosOperadora.Values['CodigoOperacao_Extra']='EDP') then
                    with ( addOperacaoViagem ) do begin
                       IDOperacaoViagem := 2000;
                       CodigoOperacao := 'EDP';
                       CondicaoLiberacaoOperacao := iif( Bean.ParametrosOperadora.Values['CondicaoLiberacaoOperacao_Extra']='', 'EST', Bean.ParametrosOperadora.Values['CondicaoLiberacaoOperacao_Saldo']);
                       DataOperacao := ''; //só quando for DAD -> formatDateTime('yyyy-mm-dd', now);
                       LocalRealizacao := iif( Bean.ParametrosOperadora.Values['LocalRealizacao_Extra']='', 'QER', Bean.ParametrosOperadora.Values['LocalRealizacao_Extra']);
                       with addEventoOperacao do begin
                           CodigoEventoOperacao := 'RED';
                           ValorEvento := 0;
                           QuantidadeLitros := 0;
                           Combustivel := '';
                       end;
                       with addEventoOperacao do begin
                           CodigoEventoOperacao := 'RPE';
                           ValorEvento := 0;
                           QuantidadeLitros := 0;
                           Combustivel := '';
                       end;
                    end;

                    if (Bean.ParametrosOperadora.Values['CodigoOperacao_Extra']='PES') then
                    with ( addOperacaoViagem ) do begin
                       IDOperacaoViagem := 2001;
                       CodigoOperacao := 'PES';
                       CondicaoLiberacaoOperacao := iif( Bean.ParametrosOperadora.Values['CondicaoLiberacaoOperacao_Extra']='', 'EST', Bean.ParametrosOperadora.Values['CondicaoLiberacaoOperacao_Saldo']);
                       DataOperacao := ''; //só quando for DAD -> formatDateTime('yyyy-mm-dd', now);
                       LocalRealizacao := iif( Bean.ParametrosOperadora.Values['LocalRealizacao_Extra']='', 'QER', Bean.ParametrosOperadora.Values['LocalRealizacao_Saldo']);
                       with addEventoOperacao do begin
                           CodigoEventoOperacao := 'RPE';
                           ValorEvento := 0;
                           QuantidadeLitros := 0;
                           Combustivel := '';
                       end;
                    end;

                end;
             end;
          end;
          result := true;
       except
          on e : exception do begin
             Result := False;
             msgError := 'insereContratoFrete_ProgramacaoViagem '+e.Message;
             LogIt( e.message );
          end;
       end;
    end;

    function insereContratoFrete_Clausulas( objectRequest: urdc_ManterViagem_v1_00.tManterViagemRequest): boolean;
    begin
       try
          with ( objectRequest ) do begin
             with TStringlist.Create do
             try
                Delimiter:=';';
                DelimitedText := Bean.ParametrosOperadora.Values['CodigoClausula'];
                if bean.TipoTolerancia <> 'X' then
                  if Bean.valorFreteMotorista <> bean.valorTotalMotorista then
                      Add('T'+bean.TipoTolerancia+ StringReplace( formatFloat('0.00000', bean.PercentualTolerancia, ParametrosSerializacao.FormatSettings  ), ParametrosSerializacao.FormatSettings.DecimalSeparator,'', []));
                while Count > 0 do
                begin
                   with AddClausulasViagem do
                   begin
                      CodigoClausula := Strings[0]; // Bean.ParametrosOperadora.Values['CodigoClausula'];
                      DescricaoClausula := '';      // Bean.ParametrosOperadora.Values['DescricaoClausula'];
                   end;
                   Delete(0);
                end;

                if bean.valorTotalMotorista=Bean.valorFreteMotorista then
                begin
                   if bean.ParametrosOperadora.Values['CodigoClausulaViagem']<>'' then
                   begin
                      DelimitedText := Bean.ParametrosOperadora.Values['CodigoClausulaViagem'];
                      while Count > 0 do
                      begin
                         with AddClausulasViagem do
                         begin
                            CodigoClausula := Strings[0]; // Bean.ParametrosOperadora.Values['CodigoClausula'];
                            DescricaoClausula := '';      // Bean.ParametrosOperadora.Values['DescricaoClausula'];
                         end;
                         Delete(0);
                      end;
                   end;
                end else
                begin
                   if bean.ParametrosOperadora.Values['CodigoClausulaPeso']<>'' then
                   begin
                      DelimitedText := Bean.ParametrosOperadora.Values['CodigoClausulaPeso'];
                      while Count > 0 do
                      begin
                         with AddClausulasViagem do
                         begin
                            CodigoClausula := Strings[0]; // Bean.ParametrosOperadora.Values['CodigoClausula'];
                            DescricaoClausula := '';      // Bean.ParametrosOperadora.Values['DescricaoClausula'];
                         end;
                         Delete(0);
                      end;
                   end;
                end;

             finally
                Free;
             end;
          end;
          result := true;
       except
          on e : exception do begin
             Result := False;
             msgError := 'insereContratoFrete_Clausulas '+e.Message;
             LogIt( e.message );
          end;
       end;
    end;
var
  ManterViagemRequest : urdc_ManterViagem_v1_00.TManterViagemRequest;
  ManterViagemResponse: urdc_ManterViagem_v1_00.tManterViagemResponse;
  mensagem : string;
  retorno : string;
  testeDecode : string;
  autenticou : Boolean;

begin

  result := IntegraDadosCadastroNacional( bean.veiculo.placa, bean.contratado.contratado_cnpj_cpf, bean.motorista.cpf, bean.numeroCartaoFrete ) ;
  if result then
  try
      ManterViagemRequest := urdc_ManterViagem_v1_00.TManterViagemRequest.Create;
      try
         if not insereContratoFrete_Integracao( ManterViagemRequest ) then abort;
         if not insereContratoFrete_Request( ManterViagemRequest ) then abort;
         if not insereContratoFrete_DadosViagem( ManterViagemRequest ) then abort;
         if not insereContratoFrete_DadosTransportador( ManterViagemRequest ) then abort;
         if not insereContratoFrete_RotaViagem( ManterViagemRequest ) then abort;
         if not insereContratoFrete_Veiculo( ManterViagemRequest ) then abort;
         if not insereContratoFrete_ValePedagioViagem( ManterViagemRequest ) then abort;
         if not insereContratoFrete_MotoristaViagem( ManterViagemRequest ) then abort;
         if not insereContratoFrete_EnvolvidoFrete( ManterViagemRequest ) then abort;
         if not insereContratoFrete_ValoresViagem( ManterViagemRequest ) then abort;
         if not insereContratoFrete_ImpostoViagem( ManterViagemRequest ) then abort;
         if not insereContratoFrete_DadosBancarios( ManterViagemRequest ) then abort;
         if not insereContratoFrete_DocumentoViagem( ManterViagemRequest ) then abort;

         if not insereContratoFrete_Descontos( ManterViagemRequest ) then abort;

         if not insereContratoFrete_ProgramacaoViagem( ManterViagemRequest ) then abort;
         if not insereContratoFrete_Clausulas( ManterViagemRequest ) then abort;

         autenticou:=false;
         while True do //este while é necessario para tentar 1 vez mais quando da erro de autenticação
         begin
            if not T5XmlSerializa._Serializa( ManterViagemRequest, mensagem, ParametrosSerializacao ) then
               raise exception.create( mensagem );
            mensagem := UTF8Encode( mensagem );
            ArquivoGerado.Add( mensagem );
            retorno := mensagem;
            retorno :=  urdc_soap_v1_00.SOAPGet( Self.host, 'ManterViagem', retorno, DadosOperadora.proxy.proxy, DadosOperadora.proxy.proxyusuario, DadosOperadora.proxy.proxysenha );
            retorno :=  urdc_soap_v1_00.SOAPResponse( retorno );

            ArquivoRecebido.Add( retorno );
            testeDecode := UTF8Decode( retorno );     // o utf8decode tem um bug, que algumas vezes ele simplesmente limpa a variavel.... fuck shit.
            if testeDecode <> '' then
               retorno := testeDecode;

            ManterViagemResponse:= urdc_ManterViagem_v1_00.tManterViagemResponse.Create;
            try
                if T5XmlSerializa._DeSerializa( ManterViagemResponse, retorno, mensagem, ParametrosSerializacao ) then
                begin
                    result :=ManterViagemResponse.RetornoMensagem.StatusRetorno = 'SUCESSO';
                    if not result then
                    begin
                         msgError := 'Contrato de frete não aberto '+
                                     ManterViagemResponse.RetornoMensagem.Excecao.TipoExcecao+' - '+
                                     ManterViagemResponse.RetornoMensagem.Excecao.CodigoExcecao+' - '+
                                     ManterViagemResponse.RetornoMensagem.Excecao.MensagemExcecao;
                         Situacao := tsrErro {E};
                         if (ManterViagemResponse.RetornoMensagem.Excecao.CodigoExcecao = 'GENEXC002') and not (autenticou) then //pegou em a hora de revalidação do token de autenticação.
                         begin
                            InvalidaToken;
                            AutenticarCliente;
                            autenticou:=True;
                            Continue; //pegou novo token, tenta mais uma vez
                         end;
                    end
                    else
                    begin
                        self.CIOT := ManterViagemResponse.CIOT.CodigoOperacaoTransporte+ManterViagemResponse.CIOT.CodigoOperacaoTransporteDV;
                        self.Situacao := tsrAprovado {'R'};
                        self.Protocolo := ManterViagemResponse.NumeroViagem;
                        self.ValorPedagio := ManterViagemResponse.ResumoFinanceiro.TotalPedagio;

                        msgError := 'Numero viagem : '+ManterViagemResponse.NumeroViagem;
                        msgError := 'Valor da viagem : '+formatFloat('0.00', ManterViagemResponse.ResumoFinanceiro.TotalFrete);
                        msgError := 'Valor do pedagio : '+formatFloat('0.00', ManterViagemResponse.ResumoFinanceiro.TotalPedagio);
                        msgError := 'Valor do impostos : '+formatFloat('0.00', ManterViagemResponse.ResumoFinanceiro.TotalImpostosRetidos);
                        msgError := 'Valor de taxas : '+formatFloat('0.00', ManterViagemResponse.ResumoFinanceiro.TotalAdministrativas);
                    end;
                end else
                begin
                    msgError := mensagem;
                    Situacao := tsrErro {E};
                end;
            finally
               ManterViagemResponse.free;
            end;
            Break; //se chegou aqui épq não passou pela regra GENEXC002 então cai fora
         end; //fim while
      finally
         if assigned( ManterViagemRequest ) then begin
            ManterViagemRequest.Free;
         end;
      end;
  except
     on e:exception do
     begin
        msgError := e.Message;
        Situacao := tsrErro {E};
        result := false;
        LogIt( e.message );
     end;
  end else
  begin
     Situacao := tsrErro {E};
  end;
end;

function TAdministradoraRodocredVersao001.getCodigoAdministradora: integer;
begin
   result := 5;
end;


procedure TAdministradoraRodocredVersao001.SetDadosOperadora(const Value: TBeanOperadora);
var
  tmp :  TBeanOperadora;
begin
  tmp := FDadosOperadora;
  try

    FDadosOperadora := value;
    host := TBeanOperadoraRodocred( Value ).WebServer;
    idCliente := strToInt( TBeanOperadoraRodocred( Value ).cliente);
    cliente := TBeanOperadoraRodocred( Value ).usuario;
    assinatura := TBeanOperadoraRodocred( Value ).senha;

    if not self.AutenticarCliente then
      raise exception.create( 'Não foi possivel autenticar o cliente na rodocred '#10+msgError );

    Rodocred := TBeanOperadoraRodocred( value );

  except
    on e: Exception do
    begin
       FDadosOperadora := tmp;
       raise;
    end
  end;
end;

function TAdministradoraRodocredVersao001.getRotas( CodigoRotaSistema : string; var CodigoRotaRodocred, mensagem : string ) : boolean;
var
//   xml : string;
   RotaRequest : TConsultarRotasRequest;
   RotaResponse : TConsultarRotasResponse;
   retorno : string;
   vii : Integer;
begin
   if CodigoRotaSistema = '' then
   begin
      CodigoRotaRodocred := '';
      TempoViagemRota    := 24*7;
      result             := True;
   end
   else
   try
      RotaRequest := TConsultarRotasRequest.create;
      with RotaRequest do try
         with ( IdentificacaoIntegracao ) do begin
            IdClienteRodocred := self.idCliente;
            TokenAutenticacao := self.token;
            NumeroTransacao   := bean.numeroContratoFrete;
            VersaoServico     := self.versaoSevico;
         end;
         with FiltroConsultaRota do
         begin
            NomeRota := CodigoRotaSistema;
         end;

         if not T5XmlSerializa._Serializa( RotaRequest, mensagem, ParametrosSerializacao ) then
            raise exception.create( mensagem );
         retorno := mensagem;
         ArquivoGerado.Add( retorno );
         retorno :=  urdc_soap_v1_00.SOAPGet( Self.host, 'ConsultarRotas', retorno, DadosOperadora.proxy.proxy, DadosOperadora.proxy.proxyusuario, DadosOperadora.proxy.proxysenha );
         retorno :=  urdc_soap_v1_00.SOAPResponse( retorno );
         ArquivoRecebido.Add( retorno );

      finally
         free;
      end;

      RotaResponse := TConsultarRotasResponse.create;
      try
          if T5XmlSerializa._DeSerializa( RotaResponse, retorno, mensagem, ParametrosSerializacao ) then
          begin
             result := RotaResponse.RetornoMensagem.StatusRetorno = 'SUCESSO';
             if not result then
             begin
                mensagem := RotaResponse.RetornoMensagem.Excecao.TipoExcecao+' - '+
                            RotaResponse.RetornoMensagem.Excecao.CodigoExcecao+' - '+
                            RotaResponse.RetornoMensagem.Excecao.MensagemExcecao;
                CodigoRotaRodocred := '';
                msgError := mensagem;
             end
             else
             begin
               for vii:=0 to Length(RotaResponse.ListaRotas.Rota)-1 do
               begin
                  if RotaResponse.ListaRotas.Rota[vii].NomeRota = CodigoRotaSistema then
                  begin
                     CodigoRotaRodocred := RotaResponse.ListaRotas.Rota[vii].CodigoRota;
                     if pos('.', RotaResponse.ListaRotas.Rota[vii].TempoTotal) > 0 then
                        TempoViagemRota := strToInt( '0'+copy(RotaResponse.ListaRotas.Rota[vii].TempoTotal, 1, pos('.', RotaResponse.ListaRotas.Rota[vii].TempoTotal)-1))
                     else
                        TempoViagemRota := strToInt( '0'+RotaResponse.ListaRotas.Rota[vii].TempoTotal );
                  end;
               end;
             end;
          end else
          begin
             Result := false;
             msgError := mensagem;
          end;
      finally
         RotaResponse.free;
      end;
   except
     on e:exception do
     begin
        msgError := 'Consulta rota: '+e.Message;
        mensagem := e.message;
        result := false;
        LogIt( e.message );
     end;
   end;
end;

function TAdministradoraRodocredVersao001.cancelaContratoFrete: boolean;
var
  retorno, mensagem : string;
  testeDecode : string;
begin
   try
      mensagem := '<CancelarViagemRequest>'+
         '<IdentificacaoIntegracao>'+
            '<IdClienteRodocred>'+intToStr(self.idCliente)+'</IdClienteRodocred>'+
            '<TokenAutenticacao>'+self.token+'</TokenAutenticacao>'+
            '<VersaoServico>1.00</VersaoServico>'+
         '</IdentificacaoIntegracao>'+
                 '<NumeroViagem>'+bean.NumeroViagem+'</NumeroViagem>'+
         '<MotivoCancelamento>CANCELAMENTO DE VIAGEM</MotivoCancelamento>'+
      '</CancelarViagemRequest>';

      mensagem := UTF8Encode( mensagem );
      ArquivoGerado.Add( mensagem );

      retorno := mensagem;
      retorno :=  urdc_soap_v1_00.SOAPGet( Self.host, 'CancelarViagem', retorno, DadosOperadora.proxy.proxy, DadosOperadora.proxy.proxyusuario, DadosOperadora.proxy.proxysenha );
      retorno :=  urdc_soap_v1_00.SOAPResponse( retorno );

      ArquivoRecebido.Add( retorno );
      testeDecode := UTF8Decode( retorno );
      if testeDecode <> '' then
         retorno := testeDecode;

      if Pos('SUCESSO', retorno) > 0 THEN
      begin
         Situacao := tsrCancelado {'C'};
         result := True;
         msgError := retorno;
      end
      else
      begin
         Situacao := tsrErro {E};
         Result := False;
         msgError := retorno;
      end;
   except
     on e:exception do
     begin
        msgError := e.Message;
        Situacao := tsrErro {E};
        result := false;
        LogIt( e.message );
     end;
   end;
end;

function TAdministradoraRodocredVersao001.GetDOT( vViagem : string; Arquivo : string ): boolean;

    function GetUrlContent(const Url: string; st : TStream): string;
    var
      NetHandle: HINTERNET;
      UrlHandle: HINTERNET;
      Buffer: array[0..1024] of Char;
      BytesRead: dWord;
    begin
      Result := '';
      NetHandle := InternetOpen('Delphi 7.x', INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);

      if Assigned(NetHandle) then 
      begin
        UrlHandle := InternetOpenUrl(NetHandle, PChar(Url), nil, 0, INTERNET_FLAG_RELOAD, 0);

        if Assigned(UrlHandle) then
          { UrlHandle valid? Proceed with download }
        begin
          FillChar(Buffer, SizeOf(Buffer), 0);
          bytesRead :=0;
          repeat
            if bytesRead > 0 then
               st.Write( Buffer, bytesRead );
            Result := Result + Buffer;
            FillChar(Buffer, SizeOf(Buffer), 0);
            InternetReadFile(UrlHandle, @Buffer, SizeOf(Buffer), BytesRead);
          until BytesRead = 0;
          InternetCloseHandle(UrlHandle);
        end
        else
          { UrlHandle is not valid. Raise an exception. }
          raise Exception.CreateFmt('Cannot open URL %s', [Url]);

        InternetCloseHandle(NetHandle);
      end
      else
        { NetHandle is not valid. Raise an exception }
        raise Exception.Create('Unable to initialize Wininet');
    end;

    function SalvaCertificado( link, arquivo : string  ) : boolean;
    var
       fs : TFileStream;
    begin
       Try
            fs := TFileStream.Create( arquivo, fmCreate );
            try
               GetUrlContent( link, fs );
            finally
               fs.free;
            end;
         result := true;
       Except
         on e:exception do
         begin
            self.msgError := 'GetCertificado:'+e.Message;
            result := false;
         end;
       end;
    end;

var
   mensagem: string;
//   xml: string;
   Request : tCertificadoViagemRequest;
   Response : tCertificadoViagemResponse;
   retorno : string;
//   vii : Integer;
begin
   try
      Request := tCertificadoViagemRequest.create;
      with Request do try
         with ( IdentificacaoIntegracao ) do begin
            IdClienteRodocred := self.idCliente;
            TokenAutenticacao := self.token;
            NumeroTransacao   := bean.numeroContratoFrete;
            VersaoServico     := self.versaoSevico;
         end;
         NumeroViagem := vViagem;

         if not T5XmlSerializa._Serializa( Request, mensagem, ParametrosSerializacao ) then
            raise exception.create( mensagem );
         retorno := mensagem;
         ArquivoGerado.Add( retorno );
         retorno :=  urdc_soap_v1_00.SOAPGet( Self.host, 'CertificadoViagem', retorno, DadosOperadora.proxy.proxy, DadosOperadora.proxy.proxyusuario, DadosOperadora.proxy.proxysenha );
         retorno :=  urdc_soap_v1_00.SOAPResponse( retorno );
         ArquivoRecebido.Add( retorno );

      finally
         free;
      end;

      Response := tCertificadoViagemResponse.create;
      try
          if T5XmlSerializa._DeSerializa( Response, retorno, mensagem, ParametrosSerializacao ) then
          begin
             result := Response.RetornoMensagem.StatusRetorno = 'SUCESSO';
             if not result then
             begin
                mensagem := Response.RetornoMensagem.Excecao.TipoExcecao+' - '+
                            Response.RetornoMensagem.Excecao.CodigoExcecao+' - '+
                            Response.RetornoMensagem.Excecao.MensagemExcecao;
                msgError := mensagem;
             end
             else
             begin

               result := SalvaCertificado( response.LinkCertificado, Arquivo );

             end;
          end else
          begin
             Result := false;
             msgError := mensagem;
          end;
      finally
         Response.free;
      end;
   except
     on e:exception do
     begin
        msgError := 'CertificadoViagem: '+e.Message;
        mensagem := e.message;
        result := false;
        LogIt( e.message );
     end;
   end;
end;

function TAdministradoraRodocredVersao001.ConsultaContratoFrete: boolean;
var
   mensagem: string;
   Request : tDetalharViagemRequest;
   retorno : string;
   vie, vii : Integer;
   txtRet : TConsulta_ret_0000;
   item   : TConsulta_ret_0001;
   vTipoOperacao : string;
   autenticou: boolean;
begin
   autenticou:=false;
   repeat
      try
         Request := tDetalharViagemRequest.create;
         with Request do try
            with ( IdentificacaoIntegracao ) do begin
               IdClienteRodocred := self.idCliente;
               TokenAutenticacao := self.token;
               NumeroTransacao   := bean.numeroContratoFrete;
               VersaoServico     := '1.01';
            end;
            //IdClienteResponsavel := self.idCliente;
            NumeroViagem := bean.NumeroViagem;
            mensagem :=  UTF8Encode( GetAsString);
            retorno := mensagem;
            ArquivoGerado.Add( retorno );
            try
               retorno :=  urdc_soap_v1_00.SOAPGet( Self.host, 'DetalharViagem', retorno, DadosOperadora.proxy.proxy, DadosOperadora.proxy.proxyusuario, DadosOperadora.proxy.proxysenha );
               retorno :=  urdc_soap_v1_00.SOAPResponse( retorno );
            except

            end;
            ArquivoRecebido.Add( retorno );
         finally
            free;
         end;

         with tDetalharViagemResponse.CreateFromXmlString( retorno ) do
         try

            if assigned(RetornoMensagem.Excecao) and (RetornoMensagem.Excecao.CodigoExcecao = 'GENEXC002') and not (autenticou) then //pegou em a hora de revalidação do token de autenticação.
            begin
               InvalidaToken;
               AutenticarCliente;
               autenticou:=True;
               Continue; //pegou novo token, tenta mais uma vez
            end;


            result := RetornoMensagem.StatusRetorno = 'SUCESSO';
            if not result then
            begin
               mensagem := RetornoMensagem.Excecao.TipoExcecao+' - '+
                           RetornoMensagem.Excecao.CodigoExcecao+' - '+
                           RetornoMensagem.Excecao.MensagemExcecao;
               msgError := mensagem;
               Situacao := tsrErro {E};
            end
            else
            begin
              txtRet := TConsulta_ret_0000.create;
              txtRet.motivoRetorno := '';
              txtRet.viagem        := DadosViagem.NumeroViagem;
              txtRet.NumeroContratoFrete := '';
              txtRet.CIOT          := CIOT.CodigoOperacaoTransporte+ciot.CodigoOperacaoTransporteDV;

              //situacao
             with DetalheProgramacaoViagem do
                for vii := 0 to OperacaoViagem.Count - 1 do
                with tOperacaoViagem( OperacaoViagem.Objects[vii] ) do
                begin
                    if CodigoOperacao = 'ADF' then // Adiantamento
                       vTipoOperacao           := 'ADIANTAMENTO'
                    else if CodigoOperacao = 'EDS' then // Entrega de documento com liberacao de saldo
                       vTipoOperacao           := 'SALDO'
                    else if CodigoOperacao = 'ESP' then // Entrega de documento com esagem e liberacao de saldo
                       vTipoOperacao           := 'SALDO'
                    else if CodigoOperacao = 'DIA' then // Diárias
                       vTipoOperacao           := 'DIARIA'
                    else if CodigoOperacao = 'CUS' then // Outros custos
                       vTipoOperacao           := 'CUSTO'
                    else if CodigoOperacao = 'LSF' then // Liberacao de saldo de frete
                       vTipoOperacao           := 'SALDO'
                    else if CodigoOperacao = 'EQS' then // Entrega de documento Qtdade com liberacao de saldo
                       vTipoOperacao           := 'SALDO'
                    else if CodigoOperacao = 'DES' then // Desconto de frete
                       vTipoOperacao           := 'DESCONTO'
                    else if CodigoOperacao = 'LSD' then // Liberacao de saldo de frete com desconto
                       vTipoOperacao          := 'SALDO'
                    else if CodigoOperacao = 'EDV' then // Entrega de Doc e Lib de saldo com desconto
                       vTipoOperacao           := 'SALDO'
                    else
                       Continue; // não representa movimento financeiro

                    if  (CondicaoLiberacaoOperacao = 'DAD') and (SituacaoOperacao = 'LIB') then continue;

                    item := txtRet.add0001;
                    item.Parcela           := vTipoOperacao;
                    item.DataPrevista      := 0;
                    item.ValorPrevisto     := 0;
                    item.DataEfetivacao    := 0;
                    item.ValorEfetivo      := 0;
                    item.PesoChegada       := 0;
                    item.Local             := '';

                    for vie:=0 to EventoOperacao.count -1 do
                    with tEventoOperacao( EventoOperacao.objects[vie]) do
                    begin
                      if ( ( vTipoOperacao = 'ADIANTAMENTO') and (CodigoEventoOperacao= 'TRF')) or
                         ( ( vTipoOperacao = 'SALDO') and (CodigoEventoOperacao= 'TSF') ) or
                         ( ( vTipoOperacao = 'DIARIA')  and (CodigoEventoOperacao= 'RVD') ) or
                         ( ( vTipoOperacao = 'CUSTO')  and (CodigoEventoOperacao= 'OCV') )  or
                         ( ( vTipoOperacao = 'DESCONTO')  and (CodigoEventoOperacao= 'DES') ) then
                      begin
                         if SituacaoOperacao = 'REG' then
                         begin
                           item.DataEfetivacao := DataEvento;
                           item.ValorEfetivo   := ValorEvento;
                           if (vTipoOperacao = 'SALDO') then
                              item.PesoChegada := ValoresViagem.PesoCargaEntregue*1000; // converte para kilos
                         end
                         else
                         begin
                           item.DataPrevista := DataEvento;
                           item.ValorPrevisto   := ValorEvento;
                         end

                      end;
                    end;

                    if      SituacaoOperacao = 'REG' then item.Situacao := 'CONCLUIDA'
                    else if SituacaoOperacao = 'LIB' then item.Situacao := 'PREVISTA'
                    else if SituacaoOperacao = 'CAN' then item.Situacao := 'CANCELADA'
                    else if SituacaoOperacao = 'BLO' then item.Situacao := 'BLOQUEADA'
                    else                                  item.Situacao := 'PREVISTA';

                end;
               BeanTXTRet := txtRet;
               situacao := tsrAprovado {'I'}; {ver melhor esta situacao}
               result := true;
            end;
         finally
            free;
         end;
      except
        on e:exception do
        begin
           Situacao := tsrErro {E};
           msgError := 'ConsultaViagem: '+e.Message;
           mensagem := e.message;
           result := false;
           LogIt( e.message );
        end;
      end;
   until true;
end;


function TAdministradoraRodocredVersao001.ExtratoDe(
  Data: TDateTime): boolean;
var
   mensagem: string;
   Request : tConsultarExtratoDetalhadoRequest;
   retorno : string;
   vii : Integer;

   txtret : TExtrato_ret_0000;
   linha  : TExtrato_ret_0001;
   tentativa : Integer;
begin
   try
      Request := tConsultarExtratoDetalhadoRequest.create;
      with Request do try
         with ( IdentificacaoIntegracao ) do begin
            IdClienteRodocred := self.idCliente;
            TokenAutenticacao := self.token;
            NumeroTransacao   := bean.numeroContratoFrete;
            VersaoServico     := self.versaoSevico;
         end;
         //IdClienteResponsavel := self.idCliente;
         DataExtrato := Data;

         mensagem :=  UTF8Encode( GetAsString);

         retorno := mensagem;
         ArquivoGerado.Add( retorno );
         tentativa := 0;
         while true do
         begin
            inc( tentativa );
            try
               retorno :=  urdc_soap_v1_00.SOAPGet( Self.host, 'ConsultarExtratoDetalhado', retorno, DadosOperadora.proxy.proxy, DadosOperadora.proxy.proxyusuario, DadosOperadora.proxy.proxysenha );
               retorno :=  urdc_soap_v1_00.SOAPResponse( retorno );
               break;
            except
               on e:Exception do
               begin
                  if Pos('timed out', e.message)>0 then
                  begin
                    if tentativa < 10 then
                    begin
                       Sleep(100);
                       continue;
                    end else
                       raise;
                  end;
               end;
            end;
         end;


         ArquivoRecebido.Add( retorno );

      finally
         free;
      end;

      with tConsultarExtratoDetalhadoResponse.CreateFromXmlString( retorno ) do
      try

         result := RetornoMensagem.StatusRetorno = 'SUCESSO';
         if not result then
         begin
            mensagem := RetornoMensagem.Excecao.TipoExcecao+' - '+
                        RetornoMensagem.Excecao.CodigoExcecao+' - '+
                        RetornoMensagem.Excecao.MensagemExcecao;
            msgError := mensagem;
            Situacao := tsrErro {E};
         end
         else
         begin

           //situacao
           with ListaExtrato do
           begin
             txtret := TExtrato_ret_0000.create;
             txtret.motivoRetorno := 'R';
             txtret.Descricao     := 'Extrato movimento';
             txtret.DataExtrato   :=  Data; // passada no parametro
             for vii := 0 to ListaExtrato.Extrato.Count - 1 do
             with urdc_jxml_TiposPadrao_v1_02.tExtrato( ListaExtrato.Extrato.Objects[vii] ) do
             begin
                linha := txtret.add0001;

                linha.Sequencia      := IntToStr(SeqLancamento);
                linha.DataLancamento := DataLancamento;
                linha.Descricao      := DescricaoLancamento;
                linha.Observacao     := NomeEstabelecimento;
                linha.Viagem         := NumeroViagem;
                if TipoLancamento = 'C' then
                  linha.Valor          := ValorLancamento
                else
                  linha.Valor          := -ValorLancamento;
                linha.Saldo          := Saldo;
{
                SeqLancamento
                DataLancamento
                DescricaoLancamento
                QtdeLancamento
                NomeEstabelecimento
                NumeroViagem
                TipoLancamento
                ValorLancamento
                Saldo
}
             end;
           end;
           txtret.add9999.DataHoraRetorno := Now();
           situacao := tsrAprovado {'R'}; {ver melhor esta situacao}
           result := true;
           Self.BeanTXTRet := txtret;
           msgError        := 'Extrato recebido';

         end;
      finally
         free;
      end;
   except
     on e:exception do
     begin
        Situacao := tsrErro {E};
        msgError := 'Extrato da viagem: '+e.Message;
        mensagem := e.message;
        result := false;
        LogIt( e.message );
     end;
   end;
end;

initialization
  InitializeCriticalSection(CritSect);
  ListaTokens := TStringList.Create;

finalization
  DeleteCriticalSection(CritSect);
  ListaTokens.Free;

end.
