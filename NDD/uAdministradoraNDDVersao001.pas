unit uAdministradoraNDDVersao001;

interface
{$WARN SYMBOL_PLATFORM off}
uses uAdministradoraAbstract, T5XmlSerializa;

type
   TAdministradoraNDDVersao001 = class( TAdministradoraAbstract )
   private
      ParametrosSerializacao : rSerializacao;
    function formataNumero(valor: Extended; decimais: integer=2): string;
   public
      function getCodigoAdministradora : integer; override;
      function verificaRetorno: boolean; override;
      function insereContratoFrete       : boolean; override;
      destructor Destroy; override;
      constructor Create;
   end;

implementation

uses SysUtils, classes, uICFFuncoes,
     undd_ide_v1_00, undd_base,
     uIntegracaoContratofreteBean, DateUtils, IniFiles, undd_ide_ret_v1_00,
  uICFBase, Contnrs;


{ TAdministradoraNDDVersao001 }


constructor TAdministradoraNDDVersao001.Create;
begin
   inherited create(nil);
   ParametrosSerializacao.FormatSettings.DecimalSeparator := '.';
end;

destructor TAdministradoraNDDVersao001.Destroy;
begin

  inherited;
end;

function TAdministradoraNDDVersao001.getCodigoAdministradora: integer;
begin
  result := 6;
end;

function TAdministradoraNDDVersao001.formataNumero( valor : Extended; decimais : integer = 2 ) : string;
begin
  Result := StringReplace( formatFloat( '0.'+stringOfChar('0', decimais), valor, ParametrosSerializacao.FormatSettings), ',','.',[]);
end;


function TAdministradoraNDDVersao001.insereContratoFrete: boolean;
  function salvaArquivo( texto : string ) : boolean;
  var
    arq : TextFile;
    arquivo, diretorio : string;
  begin
     try
        diretorio := TBeanOperadoraNDD( DadosOperadora ).diretorioSaida;
        diretorio := stringReplace(ExtractFilePath( diretorio+'\'),'\\','\',[])+'lote\';
        ValidaCriaDiretorio( diretorio );
        arquivo := diretorio+ 'envlote_'+Bean.numeroContratoFrete+'.txt';
        AssignFile( arq, arquivo);
        rewrite( arq );
        try
          Writeln( arq, texto );
        finally
          CloseFile( arq );
        end;
        result := true;
        logit('Gerado arquivo de integração em : '+arquivo);
     except
       on e:Exception do
       begin
          msgError := 'Erro ao gravar o arquivo '+arquivo+' : '+e.Message;
          result := false;
       end;
     end;
  end;

  function GetCategoriaVeiculo( categoriaPadrao : integer ) : string;
  begin
     case categoriaPadrao of
       0  : result := '';
       1  : result := '2';
       2  : result := '3';
       3  : result := '4';
       4  : result := '7';
       5  : result := '8';
       6  : result := '9';
       7  : result := '10';
       8  : result := '11';
       9  : result := '12';
       10 : result := '13';
       11 : result := '14';
       12 : result := '14';
       13 : result := '5';
       14 : result := '6';
       15 : result := '';
       16 : result := '';
     end;
  end;

var
  vii : integer;
  vendereco, vTipoLogradouro, vNumero : string;
  arquivo : string;
begin
   result := false;
   with TNDD_Token.Create do
   try
     token := 'tecinco';
     with IDE do
     begin
        cnpj   := bean.cnpj_matriz;
        numero := bean.documento;
        serie  := '1'; //bean.serie_documento;
//        dtEmi  := FormatDateTime('yyyy-mm-dd hh:nn:ss',  Now );
        ptEmissor := bean.codigo_filial;
        dtInicio := FormatDateTime('yyyy-mm-dd',  now);
        dtFim    := FormatDateTime('yyyy-mm-dd',  now+30);
        contrato := bean.numeroContratoFrete;
        gerPgtoFin := Copy(Bean.ParametrosOperadora.Values['GerarMovimentacaoFinanceira']+'1',1,1);
        if bean.pedagio.formaPagamentoPedagio = '1' then
           gerPgtoPedagio:='1'
        else
           gerPgtoPedagio:='2';
        impAuto := Copy(Bean.ParametrosOperadora.Values['ImpressaoAutomaticaDOT']+'1',1,1);
        tipoOp  := Copy(Bean.ParametrosOperadora.Values['TipoOperacaoTransporte']+'1',1,1);
     end;
     with tipoCarga do
     begin
        if bean.TipoOperacaoTransporte = 'P' then
           Tipo              := '1'
        else if bean.TipoOperacaoTransporte = 'T' then
           Tipo              := '3'
        else
           Tipo              := bean.TipoOperacaoTransporte;
        
        if bean.ProprietarioCarga = 'R' then
          proprietarioCarga :=  '1'
        else if bean.ProprietarioCarga = 'D' then
          proprietarioCarga := '2'
        else if bean.ProprietarioCarga = 'C' then
          proprietarioCarga := '3'
        else if bean.ProprietarioCarga = 'O' then
          proprietarioCarga := '4'
        else
          proprietarioCarga := bean.ProprietarioCarga;

        with Carga do
        begin
           ncm               := Bean.NCM;
//           unidadeMedida     := Copy(Bean.ParametrosOperadora.Values['Unidade de medida da carga']+'2',1,1);
           quantidade        := formataNumero( bean.pesoSaida, 4 );
        end;
        with remetente do
        begin
           cnpj_cpf       := bean.cliente_Origem.cnpj_cpf;
           nome           := bean.cliente_Origem.nome;
           with Endereco do
           begin
             UF              := bean.cliente_Origem.uf;
             codigoMunicipio := bean.cliente_Origem.ibge;
             if bean.cliente_Origem.bairro='' then raise exception.Create('bairro não informado no cliete origem');
             bairro          := bean.cliente_Origem.bairro;
             vendereco      := bean.cliente_Origem.endereco;
             DivideEndereco( vendereco, vTipoLogradouro, vNumero );
             Logradouro      := vTipoLogradouro+' '+vendereco;
             numero          := vnumero;
             CEP             := bean.cliente_Origem.cep;
             complemento     := bean.cliente_Origem.complemento;
           end;
        end;
        with destinatario do
        begin
           cnpj_cpf       := bean.cliente_Destino.cnpj_cpf;
           nome           := bean.cliente_Destino.nome;
           with Endereco do
           begin
             UF              := bean.cliente_Destino.uf;
             codigoMunicipio := bean.cliente_Destino.ibge;
             if bean.cliente_Destino.bairro='' then raise exception.Create('bairro não informado no cliente destino');
             bairro          := bean.cliente_Destino.bairro;

             vendereco := bean.cliente_Destino.endereco;
             DivideEndereco( vendereco, vTipoLogradouro, vNumero );
             Logradouro      := vTipoLogradouro+' '+vendereco;
             numero          := vnumero;
             CEP             := bean.cliente_Destino.cep;;
             complemento     := bean.cliente_Destino.complemento;
           end;
        end;
        with addDocumentos do
        begin
           tipo   := 'CTE';
           numero := bean.documento;
        end;

        if Bean.cliente_Consignatario.cnpj_cpf<>'' then
        with addconsignatario do
        begin
           cnpj_cpf       := bean.cliente_Consignatario.cnpj_cpf;
           nome           := bean.cliente_Consignatario.nome;
           with Endereco do
           begin
             UF              := bean.cliente_Consignatario.uf;
             codigoMunicipio := bean.cliente_Consignatario.ibge;
             if bean.cliente_Consignatario.bairro='' then raise exception.Create('bairro não informado no cliente consignatario');
             bairro          := bean.cliente_Consignatario.bairro;

             vendereco := bean.cliente_Consignatario.endereco;
             DivideEndereco( vendereco, vTipoLogradouro, vNumero );
             Logradouro      := vTipoLogradouro+' '+vendereco;
             numero          := vnumero;
             CEP             := bean.cliente_Consignatario.cep;;
             complemento     := bean.cliente_Consignatario.complemento;
           end;
        end;

        with addContatos do
        begin
           if Trim( Bean.contratado.contato ) = '' then
             nome   := Bean.contratado.nome_fantasia
           else
             nome   := Bean.contratado.contato;
           cotato := Bean.contratado.telefone1;
        end;
        with Transporte do
        begin
          rntrc            := bean.contratado.rntrc_codigo;
          gestorCartao     := '1';

          categoriaPedagio := GetCategoriaVeiculo( Bean.veiculo.categoriaveiculo );

          if Bean.veiculo.dadosNdd.CategoriaPedagio<>'' then
             categoriaPedagio := Bean.veiculo.dadosNdd.CategoriaPedagio;

          with addCondutores do
          begin
             cpf := bean.motorista.cpf;
          end;
          with addVeiculos do
          begin
             placa := bean.veiculo.placa;
          end;
          if  bean.veiculo.carretas.first <> nil then
          repeat
            addVeiculos.placa := bean.veiculo.carretas.Item.placa;
          until bean.veiculo.carretas.Next=nil;

          with valores do
          begin
             vlrFrete        := formataNumero( bean.valorTotalMotorista );
             vlrCombustivel   := '';
             vlrPedagio       := formataNumero( bean.pedagio.valorPedagio);
             irrf             := formataNumero( bean.valorIRRF);
             insss            := formataNumero( bean.valorINSS);
             sest             := formataNumero( bean.valorSest+bean.valorSenat);
             //senat            := formataNumero( bean.valorSenat, ParametrosSerializacao.FormatSettings);
             if bean.Descontos.first <> nil then
             repeat
               with addDesconto do
               begin
                  tpDesc :='1';
                  mmDesc := TBeanDesconto( Bean.Descontos.item ).Descricao;
                  vlrDesc:= formatanumero( TBeanDesconto( Bean.Descontos.item ).valor );
                  dsDesc := TBeanDesconto( Bean.Descontos.item ).Observacao;
               end;
             until Bean.Descontos.Next = nil;
             //with addDespesa do ;
          end;

          if true then
          begin
             subcontratado.Free;
             subcontratado:=nil;
          end
          else
          with subcontratado do
          begin
             cnpj_cpf := bean.contratado.contratado_cnpj_cpf;
             nome     := bean.contratado.nome_contratado;
             with EnderecoSubcontratado do
             begin
                UF              := bean.contratado.uf;
                codigoMunicipio := bean.contratado.cidade_ibge;
                if bean.contratado.bairro='' then raise exception.Create('bairro não informado no subcontratado');
                bairro          := bean.contratado.bairro;

                vendereco      := bean.contratado.endereco;
                DivideEndereco( vendereco, vTipoLogradouro, vNumero );

                Logradouro      := vTipoLogradouro+' '+vendereco;
                numero          := vnumero;
                CEP             := bean.contratado.cep;
                complemento     := bean.contratado.endereco_complemento;
             end;
          end;


          with rota do
            rotaERP := bean.rota.codigoRota;

          if Bean.ParametrosOperadora.Values['CadastraRota'] = 'S' then
          begin
             if Bean.rota.pontosRota.first<>nil then
             with addInformacaoRota do
             begin
                nome := Bean.rota.pontosRota.first.ibge_origem+' a '+Bean.rota.pontosRota.last.ibge_destino;
                tipoRotaPadrao := Copy(Bean.ParametrosOperadora.Values['TipoRotaPadrao']+'2',1,1);
                utilizaRoteirizador := Copy(Bean.ParametrosOperadora.Values['UtilizaRoteirizador']+'2',1,1);
                totalKm             := '';
                notificaRespContratante := Copy(Bean.ParametrosOperadora.Values['NotificaRotaContratante']+'2',1,1);
                Bean.rota.pontosRota.first;
                repeat
                   with addPontosDeParada do
                   begin
                      codigoIBGE_CEP := Bean.rota.pontosRota.Item.ibge_origem;
                      tipoRotaEspecifico := Copy(Bean.ParametrosOperadora.Values['TipoRotaPadrao']+'2',1,1);
                   end;
                until bean.rota.pontosRota.Next = nil;
                bean.rota.pontosRota.Last;
                with addPontosDeParada do
                begin
                   codigoIBGE_CEP := Bean.rota.pontosRota.Item.ibge_origem;
                   tipoRotaEspecifico := Copy(Bean.ParametrosOperadora.Values['TipoRotaPadrao']+'2',1,1);
                end;
                Responavel.nome := Bean.Usuario;
                Responavel.email:= Bean.ParametrosOperadora.Values['EmailResponsavel'];
             end;
          end;
        end;
     end;


     if Bean.ParametrosOperadora.Values['EnvioDocumentos']<>'' then
     begin
        with AddEnvioDocumentos do
        begin
          entrega := Bean.ParametrosOperadora.Values['EnvioDocumentos'];

          with Split(';', Bean.ParametrosOperadora.Values['DocumentoParaEntregar']) do
          try
             while count > 0 do
                 with addDocumentos do
                 begin
                   tipo        := strings[0];
                   obrigatorio := '1';
                   with addDependenciaEntrega do
                   begin
                      descricao := strings[0];
                   end;
                   Delete(0);
                 end;
          finally
             Free;
          end;
        end;
     end;

     if Bean.ParametrosOperadora.Values['DadosAdicionais']<>'' then
     with Split(';',Bean.ParametrosOperadora.Values['DadosAdicionais']) do
     try
        while count > 0 do
        begin
           with addAdicionais do
           begin
              nome  := Names[0];
              valor := ValueFromIndex[0];
           end;
           Delete(0);
        end;
     finally
       Free;
     end;

     if Bean.ParametrosOperadora.Values['Confirmador']<>'' then
     with AddConfirmador do
     begin
        cnpj_cpf := Bean.ParametrosOperadora.Values['Confirmador'];
     end;


     if bean.ParcelasAdiantamento.first<> nil then
     repeat
        with AddParcela do
        begin
           NomeParcela := 'Adiantamento';
           //Saldo := 2;
           ValorAplicado := formataNumero( bean.ParcelasAdiantamento.Item.valor );
           ValorReal     := formataNumero( bean.ParcelasAdiantamento.Item.valor );
           with addPagamentoAutomatico do
           begin
              dataHora := FormatDateTime('yyyy-mm-dd hh:nn:ss', IncHour( IncDay( Now, Bean.ParcelasAdiantamento.Item.dias), 1) );
           end;
        end;
     until Bean.ParcelasAdiantamento.Next=nil;


     if Bean.valorSaldo > 0 then
     with AddParcela do
     begin
           NomeParcela := 'Saldo';
           //Saldo := 1;
           ValorAplicado := formataNumero( Bean.valorTotalMotorista - bean.valorAdiantamento );
           ValorReal     := formataNumero( Bean.valorSaldo );
           with addPagamentoManual do
           begin
              dataPrevisao := FormatDateTime('yyyy-mm-dd', incday( now, 30));
              efetivacao   := Copy(Bean.ParametrosOperadora.Values['LocalEfetivacaoPagamento']+'3',1,1);
           end;

           if Bean.DocumentosEntrega.first <> nil then
           repeat
              with addDocumento do
              begin
                tipo        := Bean.DocumentosEntrega.Item.Documento;
                obrigatorio := '1';
                with  addDependencia do
                   descricao := Bean.DocumentosEntrega.Item.Complemento;
              end;
           until Bean.DocumentosEntrega.Next = nil;

//           with Split( ';', Trim( Bean.ParametrosOperadora.Values['DocumentoParaEntregar'] ) ) do
//           try
//              if count = 0 then
//              begin
//                 add('Conhecimento');
//                 add('Ticket da balança');
//                 add('Canhoto da nota fiscal');
//              end;
//              while count > 0 do
//                  with addDocumento do
//                  begin
//                    tipo        := strings[0];
//                    obrigatorio := '1';
//                    with  addDependencia do
//                       descricao := strings[0];
//                    Delete(0);
//                  end;
//           finally
//              Free;
//           end;
//           if Bean.valorINSS <> 0 then
//             with addDescontos do
//             begin
//                tpDesc := '1';
//                nmDesc := 'INSS';
//                vlrDesc:= formataNumero( Bean.valorINSS);
//                dsDesc := 'Retenção do INSS';
//             end;
//           if (Bean.valorSest+bean.valorSenat) <> 0 then
//             with addDescontos do
//             begin
//                tpDesc := '1';
//                nmDesc := 'SEST/SENAT';
//                vlrDesc:= formataNumero( Bean.valorSest+bean.valorSenat);
//                dsDesc := 'Retenção do SEST/SENAT';
//             end;
//           if (Bean.valorIRRF) <> 0 then
//             with addDescontos do
//             begin
//                tpDesc := '1';
//                nmDesc := 'IRRF';
//                vlrDesc:= formataNumero( Bean.valorIRRF);
//                dsDesc := 'Retenção do IRRF';
//             end;
//           if bean.Descontos.first <> nil then
//           repeat
//             with addDescontos do
//             begin
//                tpDesc :='1';
//                nmDesc := TBeanDesconto( Bean.Descontos.item ).Descricao;
//                vlrDesc:= formatanumero( TBeanDesconto( Bean.Descontos.item ).valor );
//                dsDesc := TBeanDesconto( Bean.Descontos.item ).Observacao;
//             end;
//           until Bean.Descontos.Next = nil;

           if Bean.TipoTolerancia <> 'N' then
           begin
             with addDescontos do
             begin
                tpDesc := '2';
                nmDesc := 'TOLERANCIA';
                dsDesc := 'Verificar quantidade entregue. Deve ser '+FloatToStr(Bean.pesoSaida)+'Kg. '+
                          'Se entregue menos que '+FloatToStr(Bean.pesoSaida)+'Kg, dar desconto de R$'+formatFloat('0.00', (bean.valorNotaFiscal/bean.pesoSaida))+' por Kg abaixo de '+
                          formatFloat('0', iif( Bean.TipoTolerancia='I',
                                                Bean.pesoSaida,
                                                (Bean.pesoSaida - (Bean.pesoSaida*(Bean.PercentualTolerancia/100)))))+'Kg, incluido fração.';
                //dsDesc := 'Tolerancia '+iif(Bean.TipoTolerancia='I', 'INTEGRAL', 'EXCEDENTE')+' de '+formataNumero(bean.PercentualTolerancia,6)+'% que deve ser calculado sobre o valor da mercadoria de '+formataNumero(bean.valorNotaFiscal);
             end;
           end;

     end;
     result := false;
     try
        Arquivo := GetAsString;
        ArquivoGerado.Add( arquivo );
        result := salvaArquivo( arquivo );
        msgError := 'Arquivo gerado, aguarde retorno da administradora';
     except
        on e:Exception do
        begin
           result:=False;
           msgError := e.Message;
        end;
     end;

     if not result then
     begin
        Situacao := tsrErro {E};
     end
     else
        Situacao := tsrAguardando {'A'};

   finally
      free;
   end;
end;

function TAdministradoraNDDVersao001.verificaRetorno: boolean;
var
  diretorio : string;
  fs : TSearchRec;
  msg : string;
begin
   try
      diretorio := TBeanOperadoraNDD( DadosOperadora ).diretorioEntrada;
      diretorio := diretorio+'\lote\';
      situacao := tsrAguardando {'A'};
      if FindFirst( diretorio+'RetLote_envlote_'+bean.numeroContratoFrete+'_*.txt', faArchive, fs ) = 0 then
      try
         repeat
            LogIt( 'Carregando retorno '+diretorio+fs.name );
            ArquivoRecebido.LoadFromFile( diretorio+fs.Name );
            with undd_ide_ret_v1_00.TNDD_0000.create do
            try
               if not LoadFromFile( diretorio+fs.Name, msg ) then
                   raise Exception.Create(fs.Name+' : '+msg)
               else
               begin
                  if reg1000.Count = 0 then
                     raise Exception.Create('Arquivo de retorno NDD com erro na estrutura ou no dados : '+fs.Name);

                   with undd_ide_ret_v1_00.TNDD_1000( reg1000.First ) do
                   begin
                     if codigo <> '106' then
                     begin
                        msgError := codigo+' - '+mensagem+' - '+observacao;
                        Situacao := tsrErro {E}
                     end
                     else
                     begin
                        if reg2000.Count = 0 then
                           raise Exception.Create('Arquivo de retorno NDD com erro na estrutura ou no dados : '+fs.Name);
                        with undd_ide_ret_v1_00.TNDD_2000( reg2000.First ) do
                        begin
                           self.CIOT      := ciot+ciotCodVerificador;
                           Self.Protocolo := '';
                           msgError := avisoTransportador;
                           if msgError <> '' then msgError := msgError+#10;

                           with undd_ide_ret_v1_00.TNDD_3000( reg3000.First ) do
                           begin
                              msgError := msgError+'Valor total do frete: '+floatToStr( vlrFrete )+#10;
                              msgError := msgError+'Valor total despesas: '+floatToStr( vlrDespesas )+#10;
                              msgError := msgError+'Valor total combustivel: '+floatToStr( vlrCombustivel )+#10;
                              msgError := msgError+'Valor total saldo: '+floatToStr( vlrSaldo )+#10;
                           end;
                           if reg4000.Count > 0 then
                           with undd_ide_ret_v1_00.TNDD_4000( reg4000.First ) do
                           begin
                              msgError := msgError+'Valor pedágio: '+floatToStr( valor )+' de '+origem+' até '+destino;
                           end;
                           Situacao := tsrAprovado {'R'};
                        end;
                     end;
                   end;
               end;
            finally
               Free;
            end;
            DeleteFile( PChar( diretorio+fs.Name ) );
         until FindNext( fs )<>0
      finally
         FindClose( fs );
      end;
      Result := True;
   except
      on e : exception do begin
         Result := true;
         Situacao := tsrErro {E};
         MsgError := e.message;
         LogIt( diretorio+'|'+e.message );
      end;
   end;
end;

end.
