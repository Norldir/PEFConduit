unit uAdministradoraTicketVersao001;

interface

uses uAdministradoraAbstract, uICFBase, T5XmlSerializa,
     utck_AberturaContrato_v1_00,
     utck_CancelaContrato_v1_00,
     uIntegracaoContratofreteBean;

type
   TAdministradoraTicketVersao001 = class( TAdministradoraAbstract )
   protected
      procedure SetDadosOperadora(const Value: TBeanOperadora); override;
   private
      ParametrosSerializacao : rSerializacao;
      token : string;
      function Autenticar: boolean;
   public
      function getCodigoAdministradora : integer; override;
      function verificaRetorno: boolean; override;
      function insereContratoFrete : boolean; override;
      function cancelaContratoFrete      : boolean; override;
      destructor Destroy; override;
      constructor Create;
   end;

implementation

uses Classes, SysUtils, uICFFuncoes, Contnrs, utck_soap_v1_00,
  utck_Autenticar_v1_00, utck_ConsultaProtocolo_v1_00,
  utck_AberturaContrato_result_v1_00, uXMLTools;

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


{ TAdministradoraTicketVersao001 }
procedure TAdministradoraTicketVersao001.SetDadosOperadora(const Value: TBeanOperadora);
var
  tmp :  TBeanOperadora;
begin
  tmp := FDadosOperadora;
  try
    FDadosOperadora := value;
  except
    on e: Exception do
    begin
       FDadosOperadora := tmp;
       raise;
    end
  end;
end;

constructor TAdministradoraTicketVersao001.Create;
begin
  inherited Create( nil );

  ParametrosSerializacao.CriaTagParaArray := true;
  ParametrosSerializacao.FormatSettings.DecimalSeparator := '.';
  ParametrosSerializacao.FormatSettings.ShortDateFormat :='yyyy-mm-dd';


end;


destructor TAdministradoraTicketVersao001.Destroy;
begin
   inherited Destroy;
end;



function TAdministradoraTicketVersao001.getCodigoAdministradora: integer;
begin
   result := 7;
end;

function TAdministradoraTicketVersao001.Autenticar : boolean;
var
  mensagem : string;
  retorno : string;
  autenticar : tAutenticar;
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
     retorno :=  utck_soap_v1_00.SOAPGet( TBeanOperadoraTicket(DadosOperadora).WebServer, 'Autenticar', retorno );
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
end;

function TAdministradoraTicketVersao001.insereContratoFrete: boolean;
var
  vEndereco, vTipoLogradouro, vNumero : string;
  mensagem : string;
  retorno : string;
  criar : tCriar;
  item : Integer;
begin
  try
    if not self.Autenticar then
       raise exception.create( 'Não foi possivel autenticar o cliente na Ticket '#10+msgError );


     criar := tCriar.Create;
     with criar do
     try
        Token := self.token;
        with Lote do
        begin
           Frete.AddObject( '', tFrete.Create );
           with tFrete( frete.Objects[0] ) do
           begin
              referencia := Bean.numeroContratoFrete;
              Descricao := 'Contrato frete:'+Bean.numeroContratoFrete;

              CodigoCidadeOrigem := bean.cliente_Origem.ibge;
              CodigoCidadeDestino := bean.cliente_Destino.ibge;
              DataInicio := Now;
              DataTermino := now+10;
              DadosComplementares := '';
              with Mercadoria do
              begin
                 CodigoSubNatureza := Copy(bean.NCM,1,2)+'.'+Copy(bean.NCM,3,2);
                 Peso              := bean.pesoSaida;
              end;
              with Autonomo do
              begin
                 Documento := bean.contratado.contratado_cnpj_cpf;
              end;
              with Veiculos do
              begin
                 Veiculo.AddObject('', TVeiculo.create);
                 with tVeiculo( Veiculo.objects[0] ) do
                 begin
                    Placa := Bean.veiculo.placa;
                    Rntrc := Bean.veiculo.rntrc_codigo;
                    Documento := Bean.veiculo.contratado_cnpj_cpf;
                 end;
              end;
              with Valores do
              begin
                 if bean.pedagio.formaPagamentoPedagio = '1' then
                    TipoValePedagio := 'Cartao'
                 else if  bean.pedagio.formaPagamentoPedagio = '3' then
                    TipoValePedagio := 'TAG'
                 else
                    TipoValePedagio := 'Vale';
                 Pedagio         := Bean.pedagio.valorPedagio;
                 Frete           := bean.valorTotalMotorista;
                 Combustivel     := 0;
                 Despesas        := 0;
                 if Bean.Descontos.first<>nil then
                 repeat
                    Despesas := Despesas + Bean.Descontos.item.valor;
                 until bean.Descontos.Next = nil;
                 Impostos        := bean.valorINSS+bean.valorSest+bean.valorSenat+bean.valorIRRF;
              end;
              with Pagamento do
              begin
                 if bean.tipoPagamentoContratoFrete <> '1' then
                    FormaDePagamento := 'TransferenciaBancaria'
                 else
                    FormaDePagamento := 'CartaoParcelado';
                 with Parcelas do
                 begin
                    if bean.valorAdiantamento > 0 then
                    if Bean.ParcelasAdiantamento.first <> nil then
                    repeat
                       item := Parcela.AddObject('', Tparcela.Create);
                       with Tparcela(Parcela.Objects[item]) do
                       begin
                          Vencimento   := now+Bean.ParcelasAdiantamento.Item.dias;
                          ValorParcela := Bean.ParcelasAdiantamento.Item.valor;
                       end;
                    until Bean.ParcelasAdiantamento.Next = nil;

                    if bean.valorSaldo <> 0 then
                    begin
                       item := Parcela.AddObject('', Tparcela.Create);
                       with Tparcela(Parcela.Objects[item]) do
                       begin
                          Vencimento   := now+10;
                          ValorParcela := Bean.valorSaldo;
                       end;
                    end;
                 end;
              end;
              with Contratante do
              begin
                 if Bean.contratado.pessoa_tipo = 'F' then
                    TipoPessoa   := 'Fisica'
                 else
                    TipoPessoa   := 'Juridica';
                 Documento    := Bean.contratado.contratado_cnpj_cpf;
                 NomeRazaoSocial := Bean.contratado.nome_contratado;
                 SobrenomeNomeFantasia := Bean.contratado.nome_fantasia;
                 with Endereco do
                 begin
                    CEP          := Bean.contratado.CEP;
                    CodigoCidade := Bean.contratado.cidade_ibge;
                    vEndereco := Bean.contratado.endereco;
                    uICFFuncoes.DivideEndereco( vEndereco, vTipoLogradouro, vNumero );
                    Logradouro   := Trim( vTipoLogradouro+' ')+vEndereco;
                    Numero       := vNumero;
                    Complemento  := Bean.contratado.endereco_complemento;
                    Bairro       := Bean.contratado.bairro;
                 end;
                 Subcontratante := false;
                 CiotPrincipal := '';
              end;
              with Destinatario do
              begin
                 if Length( Bean.cliente_Destino.cnpj_cpf ) < 14 then
                    TipoPessoa   := 'Fisica'
                 else
                    TipoPessoa   := 'Juridica';
                 Documento := Bean.cliente_Destino.cnpj_cpf;
                 NomeRazaoSocial := Bean.cliente_Destino.nome;
                 SobrenomeNomeFantasia := Bean.cliente_Destino.nome;
                 with Endereco do
                 begin
                    CEP          := Bean.cliente_Destino.cep;
                    CodigoCidade := Bean.cliente_Destino.ibge;
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
              if Bean.cliente_Consignatario.cnpj_cpf='' then
              begin
                Consignatario.free;
                Consignatario:=nil;
              end
              else
              begin
                 with Consignatario do
                 begin
                    if Length( Bean.cliente_Consignatario.cnpj_cpf ) < 14 then
                       TipoPessoa   := 'Fisica'
                    else
                       TipoPessoa   := 'Juridica';
                    Documento := Bean.cliente_Consignatario.cnpj_cpf;
                    NomeRazaoSocial := Bean.cliente_Consignatario.nome;
                    SobrenomeNomeFantasia := Bean.cliente_Consignatario.nome;
                    with Endereco do
                    begin
                       CEP          := Bean.cliente_Consignatario.cep;
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

              referencia := Bean.numeroContratoFrete;
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
     retorno :=  utck_soap_v1_00.SOAPGet( TBeanOperadoraTicket(DadosOperadora).WebServer, 'Criar', retorno );
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
              msgError := msgError +#10+TArrayOfString(CriarResult.Erros.objects[item]).xstring;
           end;
          Situacao := tsrErro {E};
        end
        else
        begin
          msgError := 'Arquivo gerado, aguarde retorno da administradora';
          Self.Protocolo := CriarResult.Protocolo;
          Situacao := tsrAguardando {'A'};
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

function TAdministradoraTicketVersao001.verificaRetorno: boolean;
var
  mensagem : string;
  retorno : string;
//  item : Integer;
begin
  try
     if not self.Autenticar then
        raise exception.create( 'Não foi possivel autenticar o cliente na Ticket '#10+msgError );
        
     with tConsultar.Create do
     try
        token := self.token;
        protocolo := Bean.NumeroProtocoloProcessamento;
        mensagem := GetAsString;
     finally
       free;
     end;
     mensagem := UTF8Encode( mensagem  );
     ArquivoGerado.Add( mensagem );

     retorno := mensagem;
     retorno :=  utck_soap_v1_00.SOAPGet( TBeanOperadoraTicket(DadosOperadora).WebServer, 'Consultar', retorno );
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
              msgError := 'Situacao do processo : '+ConsultarResult.Status;
           end
           else if (ConsultarResult.Retorno.first = nil)  then
           begin
              result := False;
              msgError := 'Protocolo não localizado';
              Situacao := tsrErro {E};
           end
           else
           with tRetorno( ConsultarResult.Retorno.first ) do
           begin
              if Referencia <> bean.numeroContratoFrete then
              begin
                 result := false;
                 Situacao := tsrErro {E};
                 msgError := 'Erro na consulta do protocolo "'+bean.NumeroProtocoloProcessamento+'". Ele se refere ao contrato "'+Referencia+'" e não ao contrato "'+bean.numeroContratoFrete+'".';
              end
              else
              begin
                 Result := true;
                 if (UpperCase( Sucesso) = 'TRUE' ) then
                 begin
                    self.Protocolo := Bean.NumeroProtocoloProcessamento;
                    self.CIOT      := Ciot;
                    Situacao := tsrAprovado {'R'};
                 end
                 else
                 begin
                    Situacao := tsrErro {E};
                 end;
                 if Motivos.first <> nil then
                 repeat
                    msgError       := utck_ConsultaProtocolo_v1_00.tArrayOfString( Motivos.current).Motivo;
                 until motivos.next=nil;
              end;
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

function TAdministradoraTicketVersao001.cancelaContratoFrete: boolean;
begin
   result := False;
   msgError := 'Não implementado';
end;

end.
