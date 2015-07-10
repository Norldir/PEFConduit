unit uAdministradoraTicketVersao003;

interface

uses uAdministradoraAbstract, T5XmlSerializa,
     uIntegracaoContratofreteBean;

type
   TAdministradoraTicketVersao003 = class( TAdministradoraAbstract )
   protected
      procedure SetDadosOperadora(const Value: TBeanOperadora); override;
   private
      ParametrosSerializacao : rSerializacao;
      token : string;
      Cliente : string;
      function Autenticar: boolean;
      function IntegraCadastros : boolean;
      function ConsultarProtocolo(_protocolo, _referencia: string): boolean;
   public
      function getCodigoAdministradora : integer; override;
      function verificaRetorno: boolean; override;
      function insereContratoFrete : boolean; override;
      function cancelaContratoFrete      : boolean; override;
      destructor Destroy; override;
      constructor Create;
   end;

implementation

uses Windows, Classes, SysUtils, uICFFuncoes, Contnrs,
  utck_SchemaAutonomo_1_0,
  utck_CriarAutonomo_v1_00,
  utck_soap_v1_00,
  utck_ConsultaProtocolo_v2_10,
  utck_Autenticar_v1_00,
  utck_SchemaViagem_1_1,
  utck_SchemaComum_1_1,
  utck_SchemaComum_1_2,
  utck_SchemaRetorno_1_2,
  utck_AberturaContrato_v2_10,
  utck_AberturaContrato_result_v2_10,
  utck_CriarAutonomo_result_v2_10,
  utck_Criar_v2_10,
  utck_Cancelar_result_v1_00,
  utck_SchemaCancelamento_1_0,
  utck_Cancelar_v1_00,
  uXMLTools,
  DateUtils, uICFBase;
  
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


{ TAdministradoraTicketVersao003 }
procedure TAdministradoraTicketVersao003.SetDadosOperadora(const Value: TBeanOperadora);
var
  tmp :  TBeanOperadora;
begin
  tmp := FDadosOperadora;
  try
    FDadosOperadora := value;
    Cliente := TBeanOperadoraTicket( DadosOperadora ).codigoCliente;
  except
    on e: Exception do
    begin
       FDadosOperadora := tmp;
       raise;
    end
  end;
end;

constructor TAdministradoraTicketVersao003.Create;
begin
  inherited Create( nil );

  ParametrosSerializacao.CriaTagParaArray := true;
  ParametrosSerializacao.FormatSettings.DecimalSeparator := '.';
  ParametrosSerializacao.FormatSettings.ShortDateFormat :='yyyy-mm-dd';


end;


destructor TAdministradoraTicketVersao003.Destroy;
begin
   inherited Destroy;
end;



function TAdministradoraTicketVersao003.getCodigoAdministradora: integer;
begin
   result := 7;
end;

function TAdministradoraTicketVersao003.Autenticar : boolean;
var
  mensagem : string;
  retorno : string;
  autenticar : tAutenticar;

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

     if (TokenSessao = '') or (Abs(HoursBetween( TokenSessaoHora, now )) > 20 ) then
     begin
        try
           autenticar := tAutenticar.Create;
           with autenticar do
           try
              usuario        := TBeanOperadoraTicket( DadosOperadora ).usuario;
              senha          := TBeanOperadoraTicket( DadosOperadora ).senha;
              codigoBase     := TBeanOperadoraTicket( DadosOperadora ).codigoBase;
              codigoCliente  := TBeanOperadoraTicket( DadosOperadora ).codigoCliente;

              mensagem := GetAsString;
           finally
              autenticar.Free;
           end;

           ArquivoGerado.Add( mensagem );

           retorno := mensagem;
           retorno :=  utck_soap_v1_00.SOAPGet( TBeanOperadoraTicket(DadosOperadora).WebServer, 'Autenticar', retorno, DadosOperadora.proxy.proxy, DadosOperadora.proxy.proxyusuario, DadosOperadora.proxy.proxysenha );
           retorno :=  utck_soap_v1_00.SOAPResponse( retorno );

           ArquivoRecebido.Add( retorno );

           with tAutenticarResponse.CreateFromXmlString( retorno ) do
           try
              result := upperCase( AutenticarResult.Sucesso ) = 'TRUE';
              if not result then
                 msgError := AutenticarResult.Mensagem
              else
                 self.token := AutenticarResult.Token;
           finally
              Free;
           end;
        except
           on e:Exception do
           begin
               Result := false;
               msgError := e.Message;
               LogIt( e.message );
           end;
        end
     end
     else
     begin
        self.token := TokenSessao;
        //TokenSessaoHora := Now;
        result := True;
     end;
     ListaTokens.Values[self.cliente] := self.token+'|'+formatDateTime('dd/mm/yyyy hh:nn:ss', now);
  finally
     LeaveCriticalSection(CritSect);
  end;
end;

function TAdministradoraTicketVersao003.insereContratoFrete: boolean;
var
  vEndereco, vTipoLogradouro, vNumero : string;
  mensagem : string;
  retorno : string;
  Criar : tCriar;
  item : Integer;
begin
  try
    if not self.Autenticar then
       raise exception.create( 'Não foi possivel autenticar o cliente na Ticket '#10+msgError );


    if not IntegraCadastros then
    begin
       Result := False;
       Situacao := tsrErro {E};
    end
    else
    begin
     Criar := tCriar.Create;
     with Criar do
     try
        Token := self.token;
        with Lote do
        begin

           Ciot.AddObject( '?', utck_AberturaContrato_v2_10.tCiot.Create );
           with utck_AberturaContrato_v2_10.tCiot( Ciot.Objects[0] ) do
           begin
              TipoCiot := cTipoCiot_Padrao;
              referencia := Bean.numeroContratoFrete;
              Descricao := 'Contrato frete:'+Bean.numeroContratoFrete;
              DataInicio := Now;
              DataTermino := now+30;
              ValorEstimado := Bean.valorTotalMotorista;
              DadosComplementares := '';
              Autonomo := tAutonomo.Create;
              with Autonomo do
              begin
                 Documento := bean.contratado.contratado_cnpj_cpf;
              end;
              Contratante := tContratante.Create;
              with Contratante do
              begin
                 if Bean.contratado.pessoa_tipo = 'F' then
                    TipoPessoa   := 'Fisica'
                 else
                    TipoPessoa   := 'Juridica';
                 Documento    := Bean.contratado.contratado_cnpj_cpf;
                 NomeRazaoSocial := Bean.contratado.nome_contratado;
                 SobrenomeNomeFantasia := Bean.contratado.nome_fantasia;
                 Endereco := tEndereco.Create;
                 with Endereco do
                 begin
                    CEP          := uICFFuncoes.RetornaCEP( Bean.contratado.CEP);
                    CodigoCidade := bean.contratado.cidade_ibge;
                    vEndereco := Bean.contratado.endereco;
                    uICFFuncoes.DivideEndereco( vEndereco, vTipoLogradouro, vNumero );
                    Logradouro   := Trim( vTipoLogradouro+' ')+vEndereco;
                    Numero       := vNumero;
                    Complemento  := Bean.contratado.endereco_complemento;
                    Bairro       := Bean.contratado.bairro;
                 end;
                 Subcontratante := false;
                 //CiotPrincipal := '';
              end;
              Destinatario := tDestinatario.Create;
              with Destinatario do
              begin
                 if Length( Bean.cliente_Destino.cnpj_cpf ) < 14 then
                    TipoPessoa   := 'Fisica'
                 else
                    TipoPessoa   := 'Juridica';
                 Documento := Bean.cliente_Destino.cnpj_cpf;
                 NomeRazaoSocial := Bean.cliente_Destino.nome;
                 SobrenomeNomeFantasia := Bean.cliente_Destino.nome;
                 Endereco := tEndereco.Create;
                 with Endereco do
                 begin
                    CEP          := uICFFuncoes.RetornaCEP( Bean.cliente_Destino.cep );
                    CodigoCidade :=  Bean.cliente_Destino.ibge;
                    vEndereco := Bean.cliente_Destino.endereco;
                    uICFFuncoes.DivideEndereco( vEndereco, vTipoLogradouro, vNumero );
                    Logradouro   := Trim( vTipoLogradouro+' ')+vEndereco;
                    Numero       := vNumero;
                    Complemento  := Bean.cliente_Destino.complemento;
                    Bairro       := Bean.cliente_Destino.bairro;
                 end;
                 Telefone        := '';
                 Email           := '';
              end;
              if Bean.cliente_Consignatario.cnpj_cpf<>'' then
              begin
                 Consignatario := tConsignatario.Create;
                 with Consignatario do
                 begin
                    if Length( Bean.cliente_Consignatario.cnpj_cpf ) < 14 then
                       TipoPessoa   := 'Fisica'
                    else
                       TipoPessoa   := 'Juridica';
                    Documento := Bean.cliente_Consignatario.cnpj_cpf;
                    NomeRazaoSocial := Bean.cliente_Consignatario.nome;
                    SobrenomeNomeFantasia := Bean.cliente_Consignatario.nome;
                    Endereco := tEndereco.Create;
                    with Endereco do
                    begin
                       CEP          := uICFFuncoes.RetornaCEP( Bean.cliente_Consignatario.cep);
                       CodigoCidade := Bean.cliente_Consignatario.ibge;
                       vEndereco := Bean.cliente_Consignatario.endereco;
                       uICFFuncoes.DivideEndereco( vEndereco, vTipoLogradouro, vNumero );
                       Logradouro   := Trim( vTipoLogradouro+' ')+vEndereco;
                       Numero       := vNumero;
                       Complemento  := Bean.cliente_Consignatario.complemento;
                       Bairro       := Bean.cliente_Consignatario.bairro;
                    end;
                    Telefone        := '';
                    Email           := '';
                 end;
              end;

              if Bean.valorINSS <> 0 then RegrasQuitacao := RegrasQuitacao+'Deduzir INNS do saldo;';
              if Bean.valorSest+Bean.valorSenat <> 0 then RegrasQuitacao := RegrasQuitacao+'Deduzir SEST/Senat do saldo;';
              if Bean.valorIRRF <> 0 then RegrasQuitacao := RegrasQuitacao+'Deduzir IRRF do saldo;';

              if Bean.Descontos.first<>nil then
              repeat
                 RegrasQuitacao := RegrasQuitacao+Bean.Descontos.item.Descricao+';';
              until bean.Descontos.Next = nil;

              if Bean.TipoTolerancia <> 'X' then
                RegrasQuitacao := RegrasQuitacao+'Verificar quantidade entregue. Deve ser '+FloatToStr(Bean.pesoSaida)+'Kg. '+
                          'Se entregue menos que '+FloatToStr(Bean.pesoSaida)+'Kg, dar desconto de R$'+formatFloat('0.00', (bean.valorNotaFiscal/bean.pesoSaida))+' por Kg abaixo de '+
                          formatFloat('0', iif( Bean.TipoTolerancia='I',
                                                Bean.pesoSaida,
                                                (Bean.pesoSaida - (Bean.pesoSaida*(Bean.PercentualTolerancia/100)))))+'Kg, incluido fração.';

              if Bean.DocumentosEntrega.first <> nil then
              repeat
                RegrasQuitacao := RegrasQuitacao+'; '+Bean.DocumentosEntrega.Item.Documento+', '+Bean.DocumentosEntrega.Item.Complemento;
              until Bean.DocumentosEntrega.Next = nil;
//              Veiculos := tVeiculos.Create;
//              with Veiculos do
//              begin
//                 Veiculo.AddObject('', TVeiculo.create);
//                 with tVeiculo( Veiculo.objects[0] ) do
//                 begin
//                    Placa := Bean.veiculo.placa;
//                    Rntrc := Bean.veiculo.rntrc_codigo;
//                    Documento := Bean.veiculo.contratado_cnpj_cpf;
//                    if Bean.pedagio.valorPedagio <> 0 then
//                    begin
//                       ValePedagio := tValePedagio.Create;
//                       with ValePedagio do
//                       begin
//                          if bean.pedagio.formaPagamentoPedagio = '1' then
//                             TipoValePedagio := 'Cartao'
//                          else if  bean.pedagio.formaPagamentoPedagio = '3' then
//                             TipoValePedagio := 'TAG'
//                          else
//                             TipoValePedagio := 'Nenhum';
//                          NumeroEixos := StrToIntDef( Bean.veiculo.numero_eixos, 0 );
//                          ValorPedagio := Bean.pedagio.valorPedagio;
//                          Proprietario := Bean.veiculo.contratado_cnpj_cpf;
//
//                          if bean.pedagio.formaPagamentoPedagio <> '2' then
//                          with Rota do
//                          begin
//                             //CodigoRota := Bean.rota.codigoRota;
//                          end;
//                       end;
//                    end;
//                 end;
//              end;
              Viagem := tViagem.Create;
              with Viagem do
              begin
                 CodigoCidadeOrigem := StrToIntDef(bean.cliente_Origem.ibge,0);
                 CodigoCidadeDestino := StrToIntDef(bean.cliente_Destino.ibge,0);
                 Mercadoria := tMercadoria.Create;
                 with Mercadoria do
                 begin
                    CodigoSubNatureza := Copy(bean.NCM,1,2)+'.'+Copy(bean.NCM,3,2);
                    Peso              := bean.pesoSaida;
                 end;
                 Veiculos := tVeiculos.Create;
                 with Veiculos do
                 begin
                    Veiculo.AddObject('', TVeiculo.create);
                    with tVeiculo( Veiculo.objects[0] ) do
                    begin
                       Placa := Bean.veiculo.placa;
                       Rntrc := Bean.veiculo.rntrc_codigo;
                       Documento := Bean.veiculo.contratado_cnpj_cpf;
                       if Bean.pedagio.valorPedagio <> 0 then
                       begin
                          ValePedagio := tValePedagio.Create;
                          with ValePedagio do
                          begin
                             if bean.pedagio.formaPagamentoPedagio = '1' then
                                TipoValePedagio := 'Cartao'
                             else if  bean.pedagio.formaPagamentoPedagio = '3' then
                                TipoValePedagio := 'TAG'
                             else
                                TipoValePedagio := 'Nenhum';
                             NumeroEixos := StrToIntDef( Bean.veiculo.numero_eixos, 0 );
                             ValorPedagio := Bean.pedagio.valorPedagio;
                             Proprietario := Bean.veiculo.contratado_cnpj_cpf;

                             if bean.pedagio.formaPagamentoPedagio <> '2' then
                             with Rota do
                             begin
                                //CodigoRota := Bean.rota.codigoRota;
                             end;
                          end;
                       end;
                    end;
                 end;
                 Valores := tValores.Create;
                 with Valores do
                 begin
                    Pedagio         := Bean.pedagio.valorPedagio;
                    Frete           := bean.valorTotalMotorista;
                    Combustivel     := 0;
                    Despesas        := 0;
                    if Bean.Descontos.first<>nil then
                    repeat
                       Despesas := Despesas + Bean.Descontos.item.valor;
                    until bean.Descontos.Next = nil;
                    ValoresImpostos := TValoresImpostos.Create;
                    with ValoresImpostos do
                    begin
                       IR := Bean.valorIRRF;
                       INSS:= Bean.valorINSS;
                       SESTSENAT:= Bean.valorSest+Bean.valorSenat;
                       ISSQN := 0;
                       ICMS := 0;
                    end;
                 end;
                 Pagamento := TPagamento.Create;
                 with Pagamento do
                 begin
                    Parcelas := TParcelas.Create;
                    with Parcelas do
                    begin
                       if bean.valorAdiantamento > 0 then
                       if Bean.ParcelasAdiantamento.first <> nil then
                       repeat
                          item := Parcela.AddObject('', Tparcela.Create);
                          with Tparcela(Parcela.Objects[item]) do
                          begin
                             if bean.tipoPagamentoContratoFrete <> '1' then
                                FormaDePagamento := 'TransferenciaBancaria'
                             else
                                FormaDePagamento := 'Cartao';
                             Vencimento   := now+Bean.ParcelasAdiantamento.Item.dias;
                             ValorParcela := Bean.ParcelasAdiantamento.Item.valor;
                          end;
                       until Bean.ParcelasAdiantamento.Next = nil;

                       if bean.valorSaldo <> 0 then
                       begin
                          item := Parcela.AddObject('', Tparcela.Create);
                          with Tparcela(Parcela.Objects[item]) do
                          begin
                             if bean.tipoPagamentoContratoFrete <> '1' then
                                FormaDePagamento := 'TransferenciaBancaria'
                             else
                                FormaDePagamento := 'Cartao';
                             Vencimento   := now+30;
                             ValorParcela := Bean.valorSaldo;
                          end;
                       end;
                    end;
                 end;
                 referencia := Bean.numeroContratoFrete;
              end;
           end;
        end;
        mensagem :=  UTF8Encode(GetAsString);
     finally
        Free;
     end;

     if FindCmdLineSwitch('debug', ['-'], true) then
       with TStringList.Create do
       try
          Text := mensagem;
          SaveToFile('c:\tecinco\ticket.xml');
       finally
          Free;
       end;

      ArquivoGerado.Add( mensagem );

      retorno := mensagem;
      retorno :=  utck_soap_v1_00.SOAPGet( TBeanOperadoraTicket(DadosOperadora).WebServer, 'Criar', retorno, DadosOperadora.proxy.proxy, DadosOperadora.proxy.proxyusuario, DadosOperadora.proxy.proxysenha );
      retorno :=  utck_soap_v1_00.SOAPResponse( retorno );

      ArquivoRecebido.Add( retorno );
      retorno := UTF8Decode( retorno );
      with tCriarResponse.CreateFromXmlString( retorno ) do
      try

         Result := UpperCase( CriarResult.Sucesso ) = 'TRUE';
         if not result then
         begin
            for item :=0 to  CriarResult.Erros.Count-1 do
            begin
               msgError := msgError +#10+CriarResult.Erros[item];
            end;
           Situacao := tsrErro {E};
         end
         else
         begin
           //msgError := 'Arquivo gerado, aguarde retorno da administradora';
           Self.Protocolo := CriarResult.Protocolo;
           Situacao := tsrAguardando {'A'};
         end;
      finally
         Free;
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
  end;
end;

function TAdministradoraTicketVersao003.verificaRetorno: boolean;
begin
  try
     if not self.Autenticar then
        raise exception.create( 'Não foi possivel autenticar o cliente na Ticket '#10+msgError );

     result := ConsultarProtocolo( Bean.NumeroProtocoloProcessamento, bean.numeroContratoFrete )
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

function TAdministradoraTicketVersao003.cancelaContratoFrete: boolean;
var
  retorno, mensagem : string;
  item : Integer;
begin
  try
     if not self.Autenticar then
        raise exception.create( 'Não foi possivel autenticar o cliente na Ticket '#10+msgError );
        
     with utck_Cancelar_v1_00.tCancelar.Create do
     try
       token := self.token;

       Lote := utck_SchemaCancelamento_1_0.tLoteDeCancelamentos.Create;
       with Lote do
       begin
          Ciot.Add(  Copy(Bean.NumeroCIOT,1,12)+'/'+copy(Bean.NumeroCIOT,13,4)  );
       end;
       mensagem :=  UTF8Encode(GetAsString);
     finally
        Free;
     end;

     ArquivoGerado.Add( mensagem );

     retorno := mensagem;
     retorno :=  utck_soap_v1_00.SOAPGet( TBeanOperadoraTicket(DadosOperadora).WebServer, 'Cancelar', retorno, DadosOperadora.proxy.proxy, DadosOperadora.proxy.proxyusuario, DadosOperadora.proxy.proxysenha );
     retorno :=  utck_soap_v1_00.SOAPResponse( retorno );

     ArquivoRecebido.Add( retorno );
     retorno := UTF8Decode( retorno );
     with utck_Cancelar_result_v1_00.TCancelarResponse.CreateFromXmlString( retorno ) do
     try

        Result := UpperCase( CancelarResult.Sucesso ) = 'TRUE';
        if not result then
        begin
           for item :=0 to  CancelarResult.Erros.Count-1 do
           begin
              msgError := msgError +#10+CancelarResult.Erros[item];
           end;
          Situacao := tsrErro {E};
        end
        else
        begin
          //msgError := 'Arquivo gerado, aguarde retorno da administradora';
          Self.Protocolo := CancelarResult.Protocolo;
          Situacao := tsrAguardando {'A'};
        end;
     finally
        Free;
     end;

//     if Situacao = 'A' then
//     begin
//        repeat
//           result := ConsultarProtocolo( Self.Protocolo, Bean.NumeroCIOT );
//           if not result then
//              sleep(5000)
//           else
//              result := situacao <> 'E';
//        until Situacao <> 'A';
//     end;
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

function TAdministradoraTicketVersao003.IntegraCadastros: boolean;
var
  vEndereco, vTipoLogradouro, vNumero : string;
  retorno, mensagem : string;
  item : Integer;
begin
  try
     with utck_CriarAutonomo_v1_00.tCriarAutonomo.Create do
     try
       token := self.token;

       Lote := utck_SchemaAutonomo_1_0.tLoteDeAutonomos.Create;
       with Lote do
       begin
          if length(bean.contratado.contratado_cnpj_cpf)= 14 then
          begin
             Autonomo.AddObject('?', tAutonomoPJ.Create );
             with tAutonomoPJ( Autonomo.Objects[0]) do
             begin
                CNPJ          := bean.contratado.contratado_cnpj_cpf;
                RazaoSocial   := bean.contratado.nome_contratado;
                NomeFantasia  := bean.contratado.nome_fantasia;
                Representante := tPessoaFisica.Create;
                with Representante do
                begin
                   Nome       := trim(Copy(Bean.motorista.nome, 1, Pos(' ', Bean.motorista.nome)-1));
                   Sobrenome  := trim(Copy(Bean.motorista.nome, Pos(' ', Bean.motorista.nome), 255));
                   CPF        := Bean.motorista.cpf;
                end;
             end;
          end
          else
          begin
             Autonomo.AddObject('?', tAutonomoPF.Create );
             with tAutonomoPf( Autonomo.Objects[0]) do
             begin
                CPF        := bean.contratado.contratado_cnpj_cpf;
                Nome       := trim(Copy(bean.contratado.nome_contratado, 1, Pos(' ', bean.contratado.nome_contratado)-1));
                Sobrenome  := trim(Copy(bean.contratado.nome_contratado, Pos(' ', bean.contratado.nome_contratado), 255));
             end;
          end;

          with utck_SchemaAutonomo_1_0.tAutonomo( Autonomo.Objects[0]) do
          begin
             TipoAutonomo := Bean.contratado.rntrc_tipo;
             RNTRC        := bean.contratado.rntrc_codigo;
             Veiculos := utck_SchemaAutonomo_1_0.tVeiculos.Create;
             with Veiculos do
             begin
                Veiculo.AddObject('?',  utck_SchemaAutonomo_1_0.tVeiculo.Create);
                with utck_SchemaAutonomo_1_0.tVeiculo(Veiculo.Objects[0]) do
                begin
                   Placa := bean.veiculo.placa;
                   Renavam := Bean.veiculo.renavam;

                end;
             end;
             if Bean.DadosDeposito.banco <>'' then
             begin
                DadosBancarios := tDadosBancarios.Create;
                with DadosBancarios do
                begin
                   Banco := StrToIntDef( Bean.DadosDeposito.banco, 0);
                   TipoConta:= 'Contacorrente';
                   Agencia:= Bean.DadosDeposito.agencia;
                   AgenciaDigito:= Bean.DadosDeposito.dvAgendia;
                   Conta:= Bean.DadosDeposito.conta;
                   ContaDigito:= Bean.DadosDeposito.dvConta;
                end;
             end;

             Email := bean.contratado.email;
             Cartao:= bean.numeroCartaoFrete;
             Endereco := utck_SchemaComum_1_2.TEndereco.create;
             with endereco do
             begin
                CEP:= uicffuncoes.RetornaCEP( bean.contratado.cep );
                CodigoCidade:= Bean.contratado.cidade_ibge;
                vEndereco := bean.contratado.endereco;
                uICFFuncoes.DivideEndereco( vEndereco, vTipoLogradouro, vNumero );
                Logradouro   := Trim( vTipoLogradouro+' ')+vEndereco;
                Numero       := vNumero;
                Complemento:= Bean.contratado.endereco_complemento;
                Bairro:= Bean.contratado.bairro;
             end;
    //         Dependentes := tDependentes.Create;
    //         with Dependentes do
    //         begin
    //
    //         end;
          end;
       end;
       mensagem :=  UTF8Encode(GetAsString);
     finally
        Free;
     end;

     if FindCmdLineSwitch('debug', ['-'], true) then
       with TStringList.Create do
       try
          Text := mensagem;
          SaveToFile('c:\tecinco\ticket.xml');
       finally
          Free;
       end;

     ArquivoGerado.Add( mensagem );

     retorno := mensagem;
     retorno :=  utck_soap_v1_00.SOAPGet( TBeanOperadoraTicket(DadosOperadora).WebServer, 'CriarAutonomo', retorno, DadosOperadora.proxy.proxy, DadosOperadora.proxy.proxyusuario, DadosOperadora.proxy.proxysenha );
     retorno :=  utck_soap_v1_00.SOAPResponse( retorno );

     ArquivoRecebido.Add( retorno );
     retorno := UTF8Decode( retorno );
     with tCriarAutonomoResponse.CreateFromXmlString( retorno ) do
     try

        Result := UpperCase( CriarAutonomoResult.Sucesso ) = 'TRUE';
        if not result then
        begin
           for item :=0 to  CriarAutonomoResult.Erros.Count-1 do
           begin
              msgError := msgError +#10+CriarAutonomoResult.Erros[item];
           end;
          Situacao := tsrErro {E};
        end
        else
        begin
          //msgError := 'Arquivo gerado, aguarde retorno da administradora';
          Self.Protocolo := CriarAutonomoResult.Protocolo;
          Situacao := tsrAguardando {'A'};
        end;
     finally
        Free;
     end;

     if Situacao = tsrAguardando {'A'} then
     begin
        repeat
           result := ConsultarProtocolo( Self.Protocolo, Bean.contratado.contratado_cnpj_cpf );
           if not result then
              sleep(5000)
           else
              result := situacao <> tsrErro {'E'};
        until Situacao <> tsrAguardando {'A'};
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

function TAdministradoraTicketVersao003.ConsultarProtocolo(_protocolo,
  _referencia: string): boolean;
var
  mensagem : string;
  retorno : string;
begin
  try

     with tConsultar.Create do
     try
        token := self.token;
        protocolo := _protocolo;
        mensagem := GetAsString;
     finally
       free;
     end;
     mensagem := UTF8Encode( mensagem  );
     ArquivoGerado.Add( mensagem );

     retorno := mensagem;
     retorno :=  utck_soap_v1_00.SOAPGet( TBeanOperadoraTicket(DadosOperadora).WebServer, 'Consultar', retorno, DadosOperadora.proxy.proxy, DadosOperadora.proxy.proxyusuario, DadosOperadora.proxy.proxysenha );
     retorno :=  utck_soap_v1_00.SOAPResponse( retorno );

     ArquivoRecebido.Add( retorno );
     retorno := UTF8Decode( retorno );
     with tConsultarResponse.CreateFromXmlString( retorno ) do
     try
       with ConsultarResult do
       begin
           if (ConsultarResult.Status <> 'Processado') then
           begin
              result := False;
              Situacao := tsrAguardando {'A'};
              //msgError := 'Situacao do processo : '+ConsultarResult.Status;
           end
           else if (ConsultarResult.Retorno.first = nil)  then
           begin
              result := False;
              msgError := 'Protocolo não localizado';
              Situacao := tsrErro {E};
           end
           else
           if ConsultarResult.Retorno.first <> nil then
           repeat
              with tRetorno( ConsultarResult.Retorno.current ) do
              begin
                 if (Referencia<>'') and (Referencia <> _referencia) then
                 begin
                    result := false;
                    Situacao := tsrErro {E};
                    msgError := 'Erro na consulta do protocolo "'+_protocolo+'". Ele se refere a referencia "'+_Referencia+'" mas retornou  "'+referencia+'".';
                 end
                 else
                 begin
                    Result := true;
                    if (UpperCase( Sucesso ) = 'TRUE' ) then
                    begin
                       self.Protocolo := Bean.NumeroProtocoloProcessamento;
                       self.CIOT      := StringReplace(Ciot, '/','',[]);
                       Situacao := tsrAprovado {'R'};
                    end
                    else
                    begin
                       Situacao := tsrErro {E};
                    end;
                    if Assigned( Motivos ) then
                    begin
                       Motivos.Motivo.Delimiter:='#';
                       msgError       := Motivos.Motivo.DelimitedText;
                    end;
                 end;
              end;
           until ConsultarResult.Retorno.next = nil
           else
           begin
              Result := False;
              Situacao := tsrErro {E};
              msgError := 'Estrutura de retorno inválida!';
           end;
       end;
     finally
       Free;
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

initialization
  InitializeCriticalSection(CritSect);
  ListaTokens := TStringList.Create;

finalization
  DeleteCriticalSection(CritSect);
  ListaTokens.Free;
end.
