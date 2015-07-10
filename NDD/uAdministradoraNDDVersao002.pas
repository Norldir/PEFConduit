unit uAdministradoraNDDVersao002;

interface
{$WARN SYMBOL_PLATFORM off}
uses uAdministradoraAbstract, T5XmlSerializa;

type
   TAdministradoraNDDVersao002 = class( TAdministradoraAbstract )
   private

      ParametrosSerializacao : rSerializacao;
      GerarIntegracaoCadastro : Boolean;
    function formataNumero(valor: Extended; decimais: integer=2): string;
    function verificaRetornoExtrato: boolean;
    function verificaRetornoCancelamento: boolean;
    function verificaRetornoEnvio: boolean;
    function verificaRetornoErro: boolean;
   public
      function getCodigoAdministradora : integer; override;
      function verificaRetorno: boolean; override;
      function insereContratoFrete       : boolean; override;
      function cancelaContratoFrete      : boolean; override;
      function ExtratoDe( Data : TDateTime  ) : boolean; override;
      destructor Destroy; override;
      constructor Create;
   end;

implementation

uses SysUtils, classes, uICFFuncoes,
     undd_ide_v2_00, undd_base,
     uIntegracaoContratofreteBean, DateUtils, IniFiles, undd_ide_ret_v2_00,
  uICFBase, undd_can_ret_v2_00, undd_can_v2_00, undd_err_ret_v2_00,
  undd_ext_ret_v1_00, undd_ext_v1_00, utxt_pef_con_v1_0, utxt_pef_ext_v1_0,
  utxt_pef_v1_0;

const
  cVersaoNDDCargo = '4.2.4.0';

{ TAdministradoraNDDVersao002 }


constructor TAdministradoraNDDVersao002.Create;
begin
   inherited create(nil);
   ParametrosSerializacao.FormatSettings.DecimalSeparator := '.';
   GerarIntegracaoCadastro := True;
end;

destructor TAdministradoraNDDVersao002.Destroy;
begin

  inherited;
end;

function TAdministradoraNDDVersao002.getCodigoAdministradora: integer;
begin
  result := 6;
end;

function TAdministradoraNDDVersao002.formataNumero( valor : Extended; decimais : integer = 2 ) : string;
begin
  Result := StringReplace( formatFloat( '0.'+stringOfChar('0', decimais), valor, ParametrosSerializacao.FormatSettings), ',','.',[]);
end;


function TAdministradoraNDDVersao002.insereContratoFrete: boolean;
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
        if FileExists( arquivo ) and not DeleteFile( arquivo ) then
        begin
           raise Exception.Create('O arquivo já existe e não foi possivel sobrescrever ele devido a bloqueios de acesso. verifique!');
        end;

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
  vTelefone, vddd ,
  vendereco, vTipoLogradouro, vNumero : string;
  arquivo : string;
  SomaParcelaAnteriores,
  SomaValorAplicado : Extended;
begin
   with TNDD_Token.Create do
   try
     token := 'PEFConduit-C9467143-825B';
     versao := cVersaoNDDCargo;
     with IDE do
     begin
        cnpj   := bean.cnpj_matriz;
        numero := bean.documento;
        if SomenteNumeros( Bean.serie_documento )  then // #T494
          serie  := Bean.serie_documento
        else
          serie  := '1';
//        dtEmi  := FormatDateTime('yyyy-mm-dd hh:nn:ss',  Now );
        ptEmissor := bean.codigo_filial;
        dtInicio := FormatDateTime('yyyy-mm-dd',  now);
        dtFim    := FormatDateTime('yyyy-mm-dd',  now+30);
        contrato := bean.numeroContratoFrete;
        if Bean.tipoPagamentoContratoFrete = '1'  then
          gerPgtoFin := '1' //Copy(Bean.ParametrosOperadora.Values['GerarMovimentacaoFinanceira']+'1',1,1);
        else
          gerPgtoFin := '2'; //Copy(Bean.ParametrosOperadora.Values['GerarMovimentacaoFinanceira']+'1',1,1);
        if bean.pedagio.formaPagamentoPedagio = '1' then
           gerPgtoPedagio:='1'
        else
           gerPgtoPedagio:='2';
        impAuto := Copy(Bean.ParametrosOperadora.Values['ImpressaoAutomaticaDOT']+'1',1,1);
        tipoOp  := Copy(Bean.ParametrosOperadora.Values['TipoOperacaoTransporte']+'1',1,1);
        utilizaDirecionamentoPedagio := '2';        
     end;
     with tipoCarga do
     begin
        Tipo              := Copy(Bean.ParametrosOperadora.Values['TipoCarga']+'1',1,1);
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
           quantidade        := formataNumero( bean.pesoSaida, 2 );
        end;
        with remetente do
        begin
           cnpj_cpf       := bean.cliente_Origem.cnpj_cpf;
           nome           := bean.cliente_Origem.nome;
           with Endereco do
           begin
             UF              := bean.cliente_Origem.uf;
             codigoMunicipio := bean.cliente_Origem.ibge;
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
           tipo   := iif(Bean.ParametrosOperadora.Values['TipoDocumento']='', 'CTE', Bean.ParametrosOperadora.Values['TipoDocumento'] );
           numero := bean.documento;
        end;
        {with addconsignatario do
        begin
            with Endereco do
            begin
            end;
        end;}

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

          CPF_CNPJ_transportador := bean.contratado.contratado_cnpj_cpf; // add on 4.2.4

          gestorCartao     := Copy(Bean.ParametrosOperadora.Values['gestoraCartao']+'001',1,3);

          categoriaPedagio := GetCategoriaVeiculo( Bean.veiculo.categoriaveiculo );

          if Bean.veiculo.dadosNdd.CategoriaPedagio<>'' then
             categoriaPedagio := Bean.veiculo.dadosNdd.CategoriaPedagio;
          if    GerarIntegracaoCadastro and
             ( ( bean.numeroCartaoFrete<>'')  or
               ((bean.numeroCartaoFrete='') and (Bean.tipoPagamentoContratoFrete<>'1'))
             ) then
          with AddInformacaoTransportador do
          begin
              nome := bean.contratado.nome_contratado;
              if Bean.contratado.rntrc_tipo = 'TAC' then
                 tipo := '1'
              else //if Bean.contratado.Equiparado_TAC = 'S' then
                 tipo := '2';
//              else
//                 tipo := '0';

              // CPF_CNPJ := bean.contratado.contratado_cnpj_cpf; {removido versao 4.2.4}
              Identidade_InscEstadual := Bean.contratado.Identidade;
              vTelefone := bean.contratado.telefone1;
              DivideTelefone( vTelefone, vddd );
              vddd := copy(vddd,2,2);
              telefone := vddd+vtelefone;

              if (bean.contratado.contratado_cnpj_cpf = bean.motorista.cpf) and  (bean.numeroCartaoFrete='') and ( bean.pedagio.NumeroCartaoPedagio<>'') and (Bean.pedagio.formaPagamentoPedagio = '1') then
                cartaoId := bean.pedagio.NumeroCartaoPedagio
              else
                cartaoId := bean.numeroCartaoFrete;

              EmailTransportador := Bean.contratado.email;

              with Endereco do
              begin
                 UF := Bean.contratado.uf;
                 cidade := Bean.contratado.cidade;
                 bairro := bean.contratado.bairro;
                 vendereco := bean.contratado.endereco;
                 DivideEndereco( vendereco, vTipoLogradouro, vNumero );
                 Logradouro      := vTipoLogradouro+' '+vendereco;
                 numero          := vnumero;
                 CEP             := Bean.contratado.cep;
                 complemento     := bean.contratado.endereco_complemento;
              end;
          end;

          with addCondutores do
          begin
             cpf := bean.motorista.cpf;
             //if GerarIntegracaoCadastro and (bean.numeroCartaoFrete<>'') then
             //if bean.contratado.contratado_cnpj_cpf <> bean.motorista.cpf then {o motorista deve ser enviado somente se diferente do proprietario segundo nddcargo} removido conforme email 05/04/2014 
             with addinformacaoCondutor do
             begin
                nome          := Bean.motorista.nome;
                identidade    := Bean.motorista.rg;
                CNH           := Bean.motorista.carteira_habilitacao;
                dataEmissaoCNH:= '';
                //if Bean.motorista.carteira_habilitacao_dt_val <> '' then
                //   dataRenovacaoCNH := formatDateTime('yyyy-mm-dd', StrToDateTime(Bean.motorista.carteira_habilitacao_dt_val));
                vTelefone := Bean.motorista.telefone;
                DivideTelefone( vTelefone, vddd );
                vddd := copy(vddd,2,2);
                telefone := vddd+vtelefone;

                if (bean.pedagio.formaPagamentoPedagio = '1' ) and  (Bean.numeroCartaoFrete <> Bean.pedagio.NumeroCartaoPedagio) then    {Segundo ndd quando informado 2 cartões, um para frete e outro para pedagio é assim que deve ser enviado 22/05/2013}
                   cartaoId :=  Bean.pedagio.NumeroCartaoPedagio
                else
                   cartaoId := '';
                RNTRCTransportador := Bean.contratado.rntrc_codigo;

                CPF_CNPJ_transportador := Bean.contratado.contratado_cnpj_cpf; // add v.4.2.4
                
                with Endereco do
                begin
                   UF := Bean.motorista.uf;
                   cidade := Bean.motorista.cidade;
                   bairro := bean.motorista.bairro;
                   vendereco := bean.motorista.endereco;
                   DivideEndereco( vendereco, vTipoLogradouro, vNumero );
                   Logradouro      := vTipoLogradouro+' '+vendereco;
                   numero          := vnumero;
                   CEP             := Bean.motorista.cep;
                   complemento     := bean.motorista.endereco_complemento;
                end;
             end;

          end;


          with addVeiculos do
          begin
             placa := bean.veiculo.placa;
             with addInformacaoVeiculo do
             begin
                modelo             := Bean.veiculo.placa;
                kmLitroModelo      := '1.00';
                tipo               := '1';
                kmLitroVeiculo     := '1.00';
                RNTRCTransportador := Bean.veiculo.rntrc_codigo;
             end;
          end;
          if  bean.veiculo.carretas.first <> nil then
          repeat
            with addVeiculos do
            begin
              placa := bean.veiculo.carretas.Item.placa;
              with addInformacaoVeiculo do
              begin
                 modelo             := Bean.veiculo.carretas.Item.placa;
                 kmLitroModelo      := '1.00';
                 tipo               := '2';
                 kmLitroVeiculo     := '1.00';
                 RNTRCTransportador := Bean.veiculo.carretas.Item.rntrc_codigo;
              end;
            end;
          until bean.veiculo.carretas.Next=nil;

          with valores do
          begin
             vlrFrete        := formataNumero( bean.valorTotalMotorista );
             vlrCombustivel   := '';
             vlrPedagio       := formataNumero( bean.pedagio.valorPedagio);
             irrf             := formataNumero( bean.valorIRRF);
             insss            := formataNumero( bean.valorINSS);
             sest             := formataNumero( bean.valorSest+bean.valorSenat);
             TpRateioRetencoes:= Copy(Bean.ParametrosOperadora.Values['TpRateioRetencoes']+'2',1,1);

             //senat            := formataNumero( bean.valorSenat, ParametrosSerializacao.FormatSettings);
// ticket {#T5223}
//             if bean.Descontos.first <> nil then
//             repeat
//               with addDesconto do
//               begin
//                  tpDesc :='1';
//                  mmDesc := TBeanDesconto( Bean.Descontos.item ).Descricao;
//                  vlrDesc:= formatanumero( TBeanDesconto( Bean.Descontos.item ).valor );
//                  dsDesc := TBeanDesconto( Bean.Descontos.item ).Observacao;
//               end;
//             until Bean.Descontos.Next = nil;
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
                bairro          := bean.contratado.bairro;

                vendereco      := bean.contratado.endereco;
                DivideEndereco( vendereco, vTipoLogradouro, vNumero );

                Logradouro      := vTipoLogradouro+' '+vendereco;
                numero          := vnumero;
                CEP             := bean.contratado.cep;
                complemento     := bean.contratado.endereco_complemento;
             end;
          end;

          if (bean.rota.codigoRota <> 'SEM ROTA') and (bean.rota.codigoRota<>'')then
          begin
             with addrota do
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
                   Responavel.email:= 'sememail@sememail.com';
                end;
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


     if Bean.tipoPagamentoContratoFrete <> '1' then  {#T27}
     begin
       with addAdicionais do
       begin
          nome  := 'Pagamento Direto Pela Contratante';
          valor :=    'Banco:'+bean.DadosDeposito.banco+
                   ',Agencia:'+bean.DadosDeposito.agencia+'-'+bean.DadosDeposito.dvAgendia+
                     ',Conta:'+bean.DadosDeposito.conta+'-'+bean.DadosDeposito.dvConta;
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

     SomaValorAplicado := 0;
     if bean.valorAdiantamento>0 then
     if bean.ParcelasAdiantamento.first<> nil then
     repeat
        SomaParcelaAnteriores := 0;
        with AddParcela do
        begin
           NomeParcela := 'Adiantamento';
           //Saldo := 2;
           if bean.valorSaldo = 0 then
           begin
              if bean.ParcelasAdiantamento.Last = bean.ParcelasAdiantamento.Item then
                ValorAplicado := formataNumero( Bean.valorTotalMotorista - SomaParcelaAnteriores )
              else
                ValorAplicado := formataNumero( bean.ParcelasAdiantamento.Item.valor );
              SomaParcelaAnteriores := SomaParcelaAnteriores + bean.ParcelasAdiantamento.Item.valor;
           end
           else
           begin
              ValorAplicado := formataNumero( bean.ParcelasAdiantamento.Item.ValorBruto );
           end;

           {alteração para tansdatta que rateia o desconto entre as parcelas.}
           SomaValorAplicado := SomaValorAplicado + bean.ParcelasAdiantamento.Item.ValorBruto;

           ValorReal     := formataNumero( bean.ParcelasAdiantamento.Item.valor );
           if Copy(Bean.ParametrosOperadora.Values['LocalEfetivacaoPagamentoAdiantamento']+Bean.ParametrosOperadora.Values['LocaldeEfetivacaodoPagamentoAdt']+'X',1,1)='X' then
           begin
              with addPagamentoAutomatico do
              begin
                 //dataHora := FormatDateTime('yyyy-mm-dd hh:nn:ss', IncHour( IncDay( Now, Bean.ParcelasAdiantamento.Item.dias), 1) );
                 dataHora := FormatDateTime('yyyy-mm-dd hh:nn:ss', IncMinute( IncDay( Now,
                                                                                       Bean.ParcelasAdiantamento.Item.dias),
                                                                               strTointDef( Bean.ParametrosOperadora.Values['MinutosParaLiberarAdiantamento'],
                                                                                            60)
                                                                              ) );{#18466}
              end
           end
           else
           begin
              with addPagamentoManual do
              begin
                 //dataPrevisao := FormatDateTime('yyyy-mm-dd', IncHour( IncDay( Now, Bean.ParcelasAdiantamento.Item.dias), 1) );
                 dataPrevisao := FormatDateTime('yyyy-mm-dd', IncMinute( IncDay( Now,
                                                                                  Bean.ParcelasAdiantamento.Item.dias),
                                                                          strTointDef( Bean.ParametrosOperadora.Values['MinutosParaLiberarAdiantamento'],
                                                                                       60)) );  {#18466}
                 efetivacao   := Copy(Bean.ParametrosOperadora.Values['LocalEfetivacaoPagamentoAdiantamento']+Bean.ParametrosOperadora.Values['LocaldeEfetivacaodoPagamentoAdt']+'3',1,1);
              end;
              with addDocumento do
              begin
                tipo        := 'Não há documento para adiantamento';
                obrigatorio := '2';
                with  addDependencia do
                   descricao := 'Não há documento para adiantamento';
              end;
           end;
           //addDescontos....
        end;
     until Bean.ParcelasAdiantamento.Next=nil;


     if (Bean.valorSaldo = 0) and (Bean.ParcelasAdiantamento.Count>0) then   {#T17180}
     begin
        if Bean.Descontos.first <> nil then
        begin
           with TNDD_Parcela( Parcelas.Last) do
           repeat
             with addDescontos do
             begin
                //tpDesc :='1';
                nmDesc := TBeanDesconto( Bean.Descontos.item ).Descricao;
                vlrDesc:= formatanumero( TBeanDesconto( Bean.Descontos.item ).valor );
                dsDesc := TBeanDesconto( Bean.Descontos.item ).Observacao;
             end;
           until Bean.Descontos.Next = nil;
        end;
     end else {#T17180}
     if Bean.valorSaldo > 0 then
     with AddParcela do
     begin
           NomeParcela := 'Saldo';
           //Saldo := 1;
           ValorAplicado := formataNumero( Bean.valorTotalMotorista - SomaValorAplicado );
           ValorReal     := formataNumero( Bean.valorSaldo );
           with addPagamentoManual do
           begin
              //dataPrevisao := FormatDateTime('yyyy-mm-dd', incday( now, 30));
              dataPrevisao := FormatDateTime('yyyy-mm-dd', incday( now,
                                                                   strTointDef( Bean.ParametrosOperadora.Values['DiasParaLiberarSaldo'],
                                                                                30)
                                                                 )
                                            );  {#18466}
              efetivacao   := Copy(Bean.ParametrosOperadora.Values['LocalEfetivacaoPagamentoSaldo']+Bean.ParametrosOperadora.Values['LocaldeEfetivacaodoPagamento']+'3',1,1);
           end;

           if Bean.DocumentosEntrega.first <> nil then
           repeat
               with addDocumento do
               begin
                 tipo        := Bean.DocumentosEntrega.Item.Codigo+'-'+Bean.DocumentosEntrega.Item.Documento;
                 obrigatorio := '1';
                 with  addDependencia do
                    descricao := Bean.DocumentosEntrega.Item.Complemento;
               end;
           until Bean.DocumentosEntrega.Next=nil;

           with Split( ';', Trim( Bean.ParametrosOperadora.Values['DocumentoParaEntregar'] ) ) do
           try
              while count > 0 do
                  with addDocumento do
                  begin
                    tipo        := strings[0];
                    obrigatorio := '1';
                    with  addDependencia do
                       descricao := strings[0];
                    Delete(0);
                  end;
           finally
              Free;
           end;
           if bean.Descontos.first <> nil then {#T5223}
           repeat
             with addDescontos do
             begin
                //tpDesc :='1';
                nmDesc := TBeanDesconto( Bean.Descontos.item ).Descricao;
                vlrDesc:= formatanumero( TBeanDesconto( Bean.Descontos.item ).valor );
                dsDesc := TBeanDesconto( Bean.Descontos.item ).Observacao;
             end;
           until Bean.Descontos.Next = nil;
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

           if Bean.TipoTolerancia <> 'X' then
           begin
             with addDescontos do
             begin
                //simtpDesc := '2';
                nmDesc := 'TOLERANCIA';
                vlrDesc:= '0.00';
                dsDesc := 'Verificar quantidade entregue. Deve ser '+FloatToStr(Bean.pesoSaida)+'Kg. '+
                          'Se entregue menos que '+FloatToStr(Bean.pesoSaida)+'Kg, dar desconto de R$'+formatFloat('0.00', (bean.valorNotaFiscal/bean.pesoSaida))+' por Kg abaixo de '+
                          formatFloat('0', iif( Bean.TipoTolerancia='I',
                                                Bean.pesoSaida,
                                                (Bean.pesoSaida - (Bean.pesoSaida*(Bean.PercentualTolerancia/100)))))+'Kg, incluido fração.';
                //dsDesc := 'Tolerancia '+iif(Bean.TipoTolerancia='I', 'INTEGRAL', 'EXCEDENTE')+' de '+formataNumero(bean.PercentualTolerancia,6)+'% que deve ser calculado sobre o valor da mercadoria de '+formataNumero(bean.valorNotaFiscal);
             end;
           end;

     end;
     try
        Arquivo := GetAsString;
        ArquivoGerado.Add( arquivo );
        if FileExists( arquivo ) and not DeleteFile( arquivo ) then raise exception.create('Arquivo já existe no diretorios e não foi possivel sobrescrever. Verifique!');
        result := salvaArquivo( arquivo );
        //msgError := 'Arquivo gerado, aguarde retorno da administradora';
     except
        on e:Exception do
        begin
           result:=False;
           msgError := 'salvaArquivo:'+arquivo+':'+e.Message;
        end;
     end;
     if not result then
     begin
        Situacao := tsrErro {'E'};
     end
     else
        Situacao := tsrAguardando {'A'};
   finally
      free;
   end;
end;

function TAdministradoraNDDVersao002.verificaRetorno: boolean;
begin
   situacao := tsrAguardando {'A'};

   if Assigned( BeanTXT ) and ((BeanTXT is TExtrato_0000) or (BeanTXT is TConsulta_0000)) then
   begin
      if  (BeanTXT is TExtrato_0000) then
         result := verificaRetornoExtrato
      else if (BeanTXT is TConsulta_0000) then
         result := False
      else
         Result := false;
   end
   else
   begin
      result := verificaRetornoErro;

      if Situacao= tsrAguardando {'A'} then
         result := verificaRetornoCancelamento;

      if Situacao= tsrAguardando {'A'} then
         result := verificaRetornoEnvio;
   end;
end;

function TAdministradoraNDDVersao002.verificaRetornoErro: boolean;
var
  diretorio : string;
  varquivo   : string;
  fs : TSearchRec;
  msg : string;
begin
   try
      diretorio := TBeanOperadoraNDD( DadosOperadora ).diretorioEntrada;
      diretorio := diretorio+'lote\';
      if FindFirst( diretorio+'ErrLote_envlote_'+bean.numeroContratoFrete+'*.txt', faArchive, fs ) = 0 then
      try
         repeat
            varquivo := diretorio+fs.Name;
            LogIt( 'Carregando retorno '+varquivo );
            if RenameFile( varquivo, ChangeFileExt( varquivo, '.pef' )) then
            begin
               LogIt( 'Load');
               varquivo := ChangeFileExt( varquivo, '.pef' );
               ArquivoRecebido.LoadFromFile( varquivo );
               LogIt( 'Load2');
               with undd_err_ret_v2_00.TNDD_err_0000.create do
               try
                  LogIt( 'Load3');
                  if not LoadFromFile( varquivo, msg ) then
                      raise Exception.Create(varquivo+' : '+msg)
                  else
                  begin
                     if reg1000.First <> nil then
                     repeat
                        with TNDD_err_1000( reg1000.Actual ) do
                        begin
                           msgError := codigo+':'+mensagem;
                        end;
                     until reg1000.Next=nil;
                  end;
                  Situacao := tsrErro {E};
               finally
                  Free;
               end;
               LogIt( 'delete' );
               DeleteFile( PChar( varquivo ) );
            end;
         until FindNext( fs )<>0
      finally
         FindClose( fs );
      end;
      Result := True;
   except
      on e : exception do begin
         Result := false;
         Situacao := tsrErro {E};
         MsgError := 'verificaRetornoErro:'+e.message+' - '+varquivo;
         LogIt( diretorio+'|'+e.message+' '+varquivo );
         if FileExists( varquivo ) then
         try
            RenameFile( varquivo, ChangeFileExt( varquivo, '.txt' ))
         except
         end;
      end;
   end;
end;

function TAdministradoraNDDVersao002.verificaRetornoCancelamento: boolean;
var
  arquivo, diretorio : string;
  fs : TSearchRec;
  msg : string;
begin
   try
      diretorio := TBeanOperadoraNDD( DadosOperadora ).diretorioEntrada;
      diretorio := diretorio+'cancelamento\';
      if FindFirst( diretorio+'RetCanc_envcanc_'+bean.numeroContratoFrete+'_*.txt', faArchive, fs ) = 0 then
      try
         repeat
            arquivo := diretorio+fs.Name;
            LogIt( 'Carregando retorno '+arquivo );
            if RenameFile( arquivo, ChangeFileExt(arquivo, '.pef')) then
            begin
               arquivo := ChangeFileExt(arquivo, '.pef');
               ArquivoRecebido.LoadFromFile( arquivo );
               with TNDD_can_ret_0000 .create do
               try
                  if not LoadFromFile( arquivo, msg ) then
                      raise Exception.Create(arquivo+' : '+msg)
                  else
                  begin
                     if ResposeCode <> '200' then
                     begin
                        if assigned(reg0100) and (reg0100.First <> nil) then
                        repeat
                           with TNDD_can_ret_0100( reg0100.Actual ) do
                           begin
                              msgError := descricao;
                           end;
                        until reg0100.Next = nil;
                        Situacao := tsrErro {E};
                        //result := True;
                     end
                     else
                     begin
                        if reg1000.First <> nil then
                        begin
                           with TNDD_can_ret_1000( reg1000.Actual ) do
                           begin
                               Protocolo := protocoloCanc;
                               msgError := 'Protocolo: '+protocoloCanc;
                               Situacao := tsrCancelado {'C'};
                               if reg1100.First <> nil then
                                  msgError := 'CIOT:'+TNDD_can_ret_1100( reg1100.Actual ).ciot+TNDD_can_ret_1100( reg1100.Actual ).ciot_dv;
                               if reg1200.First <> nil then
                                  msgError := 'NDOT:'+TNDD_can_ret_1200( reg1200.Actual ).ndot+TNDD_can_ret_1200( reg1200.Actual ).ndot_dv;
                           end;
                        end else
                        begin
                           msgError := 'Não foi encontrado o registro 1000 no retorno';
                           Situacao := tsrErro {E};
                        end;
                     end;
                  end;
               finally
                  Free;
               end;
               DeleteFile( PChar( arquivo ) );
            end;
         until FindNext( fs )<>0
      finally
         FindClose( fs );
      end;
      Result := True;
   except
      on e : exception do begin
         Result := true;
         Situacao := tsrErro {E};
         MsgError := 'verificaRetornoCancelamento:'+e.message+' - '+arquivo;
         LogIt( diretorio+'|'+e.message+' - '+arquivo );
         if FileExists( arquivo ) then
         try
            RenameFile( arquivo, ChangeFileExt( arquivo, '.txt' ))
         except
         end;
      end;
   end;
end;

function TAdministradoraNDDVersao002.verificaRetornoEnvio: boolean;
var
  arquivo, diretorio : string;
  fs : TSearchRec;
  msg : string;
  vEnviaNovamenteSemTransportador : Boolean;

  r1000 : undd_ide_ret_v2_00.TNDD_1000;

begin
   vEnviaNovamenteSemTransportador := False;
   try
      diretorio := TBeanOperadoraNDD( DadosOperadora ).diretorioEntrada;
      diretorio := diretorio+'lote\';

      if FindCmdLineSwitch('debug',['-'], true) then LogIt('OBJ'+intToStr( Integer(@self) )+' TAdministradoraNDDVersao002.verificaRetornoEnvio:verificando se existe o arquivo "'+diretorio+'RetLote_envlote_'+bean.numeroContratoFrete+'_*.txt"');

      if FindFirst( diretorio+'RetLote_envlote_'+bean.numeroContratoFrete+'_*.txt', faArchive, fs ) = 0 then
      try
         arquivo := diretorio+fs.Name;
         if FindCmdLineSwitch('debug',['-'], true) then LogIt('OBJ'+intToStr( Integer(@self) )+' TAdministradoraNDDVersao002.verificaRetornoEnvio:existe '+arquivo);
         repeat
            LogIt( 'Carregando retorno '+arquivo );
            if RenameFile( arquivo, ChangeFileExt(arquivo, '.pef')) then
            begin
               arquivo := ChangeFileExt(arquivo, '.pef');

               ArquivoRecebido.LoadFromFile( arquivo );
               with undd_ide_ret_v2_00.TNDD_0000.create do
               try
                  if not LoadFromFile( arquivo, msg ) then
                      raise Exception.Create(arquivo+' : '+msg)
                  else
                  begin
                     if reg1000.Count = 0 then
                        raise Exception.Create('Arquivo de retorno NDD com erro na estrutura ou no dados : '+arquivo);
                      r1000 := undd_ide_ret_v2_00.TNDD_1000( reg1000.First );
                      repeat
                         with r1000 do
                         begin
                           if codigo <> '106' then
                           begin
                              msgError := codigo+' - '+mensagem+' - '+observacao;
                              if (codigo = '489') and (Pos('O transportador já possui um cartão ativo', observacao) > 0)  then
                              begin
                                  //tentar novamente sem cadatro do transportador
                                  vEnviaNovamenteSemTransportador := false; {modificado pois segundo a ndd somente volta esta mensagem se for diferente}
                              end;
                              Situacao := tsrErro {E}
                           end
                           else
                           begin
                              if reg2000.Count = 0 then
                                 raise Exception.Create('Arquivo de retorno NDD com erro na estrutura ou no dados : '+arquivo);
                              with undd_ide_ret_v2_00.TNDD_2000( reg2000.First ) do
                              begin
                                 self.CIOT      := ciot+ciotCodVerificador;
                                 if reg3000.First <> nil then
                                 begin
                                    with undd_ide_ret_v2_00.TNDD_3000( reg3000.First ) do
                                    begin
                                       Self.Protocolo := numero+ndotCodVerificador;
                                    end
                                 end;{ else
                                    Self.Protocolo := ciot+ciotCodVerificador;} // removido, pois ndd não tem numero de viagem logo oprotocolo deve ser tratado na aplicaado destino.
                                 if avisoTransportador <> '' then
                                    msgError := avisoTransportador;
                                 with undd_ide_ret_v2_00.TNDD_4000( reg4000.First ) do
                                 begin
                                    msgError := 'Valor total do frete: '+floatToStr( vlrFrete )+#10;
                                    msgError := 'Valor total despesas: '+floatToStr( vlrDespesas )+#10;
                                    msgError := 'Valor total combustivel: '+floatToStr( vlrCombustivel )+#10;
                                    msgError := 'Valor total saldo: '+floatToStr( vlrSaldo )+#10;
                                 end;
                                 if reg5000.Count > 0 then
                                 with undd_ide_ret_v2_00.TNDD_5000( reg5000.First ) do
                                 begin
                                    msgError := 'Valor pedágio: '+floatToStr( valor )+' de '+origem+' até '+destino;
                                    Self.ValorPedagio := valor;
                                 end;

                                 Situacao := tsrAprovado {'R'};
                              end;
                           end;
                         end;
                         r1000 := undd_ide_ret_v2_00.TNDD_1000( reg1000.next );
                      until not assigned( r1000 );

                      if vEnviaNovamenteSemTransportador and GerarIntegracaoCadastro then
                      begin
                         GerarIntegracaoCadastro := False;
                         result := insereContratoFrete;
                         if Result then
                            Situacao := tsrAguardando {'A'};
                      end;
                  end;
               finally
                  Free;
               end;
               DeleteFile( PChar( arquivo ) );
            end;
         until FindNext( fs )<>0
      finally
         FindClose( fs );
      end else
      begin
         if FindCmdLineSwitch('debug',['-'], true) then
         begin
            LogIt('OBJ'+intToStr( Integer(@self) )+' TAdministradoraNDDVersao002.verificaRetornoEnvio:Não existe');
            if FindFirst( diretorio+'..\..\mensagem\envlote_'+bean.numeroContratoFrete+'_*.txt', faArchive, fs ) = 0 then
            try
               LogIt('OBJ'+intToStr( Integer(@self) )+' TAdministradoraNDDVersao002.verificaRetornoEnvio:Arquivo pendente na administrador:'+diretorio+'..\..\mensagem\'+fs.Name);
            finally
               FindClose( fs );
            end;
         end;
      end;
      Result := True;
   except
      on e : exception do begin
         Result := true;
         Situacao := tsrErro {E};
         MsgError := 'verificaRetornoEnvio:'+e.message+' - '+arquivo;
         LogIt( diretorio+'|'+e.message+' - '+arquivo );
         if FileExists( arquivo ) then
         try
            RenameFile( arquivo, ChangeFileExt( arquivo, '.txt' ))
         except
         end;
      end;
   end;
end;

function TAdministradoraNDDVersao002.cancelaContratoFrete: boolean;
  function salvaArquivo( texto : string ) : boolean;
  var
    arq : TextFile;
    arquivo, diretorio : string;
  begin
     try
        diretorio := TBeanOperadoraNDD( DadosOperadora ).diretorioSaida;
        diretorio := stringReplace(ExtractFilePath( diretorio+'\'),'\\','\',[])+'cancelamento\';
        ValidaCriaDiretorio( diretorio );
        arquivo := diretorio+ 'envcanc_'+Bean.numeroContratoFrete+'.txt';
        AssignFile( arq, arquivo);
        rewrite( arq );
        try
          Writeln( arq, texto );
        finally
          CloseFile( arq );
        end;
        result := true;
        logit('Gerado arquivo de integração de cancelamento em : '+arquivo);
     except
       on e:Exception do
       begin
          msgError := 'Erro ao gravar o arquivo de cancelamento '+arquivo+' : '+e.Message;
          result := false;
       end;
     end;
  end;
var
  arquivo : string;
begin
   Result := False;
   with TNDD_can_0000.Create do
   try
     token := 'PEFConduit-58053645-45F3';
     versao := cVersaoNDDCargo;

     // Cancelamento.cnpj := Bean.cnpj_filial;
     Cancelamento.cnpj := Bean.cnpj_matriz;
     Cancelamento.motivo := 'Cancelar contrato';
     if Bean.NumeroCIOT <> '' then
     begin
        with Cancelamento.add1100 do
        begin
          ciot    := Copy( Bean.NumeroCIOT, 1,12);
          ciot_dv := Copy( Bean.NumeroCIOT, 13, 4);
        end;
     end
     else
     begin
        with Cancelamento.add1200 do
        begin
           ndot := Copy( Bean.NumeroViagem, 1,12);
           ndot_dv := Copy( Bean.NumeroViagem, 13, 4);
        end;
     end;

     try
        Arquivo := GetAsString;

        ArquivoGerado.Add( arquivo );
        if FileExists( arquivo ) and not DeleteFile( arquivo ) then raise exception.create('Arquivo já existe no diretorios e não foi possivel sobrescrever. Verifique!');
        result := salvaArquivo( arquivo );
        //msgError := 'Arquivo gerado, aguarde retorno da administradora';
     except
        on e:Exception do
        begin
           result:=False;
           msgError := 'cancelaContrato:'+arquivo+':'+e.Message;
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


function TAdministradoraNDDVersao002.ExtratoDe(Data: TDateTime): boolean;
  function salvaArquivo( texto : string ) : boolean;
  var
    arq : TextFile;
    arquivo, diretorio : string;
  begin
     try
        diretorio := TBeanOperadoraNDD( DadosOperadora ).diretorioSaida;
        diretorio := stringReplace(ExtractFilePath( diretorio+'\'),'\\','\',[])+'pagamentos\';
        ValidaCriaDiretorio( diretorio );
        arquivo := diretorio+ 'EnvPgto_'+formatdateTime('yyyymmdd', data)+'.txt';
        AssignFile( arq, arquivo);
        rewrite( arq );
        try
          Writeln( arq, texto );
        finally
          CloseFile( arq );
        end;
        result := true;
        logit('Gerado arquivo de integração de extrato em : '+arquivo);
     except
       on e:Exception do
       begin
          msgError := 'Erro ao gravar o arquivo de EnvPgto '+arquivo+' : '+e.Message;
          result := false;
       end;
     end;
  end;
var
  arquivo : string;
begin
   result := False;
   with TNDD_EnvPgto.Create do
   try
     token := 'PEFConduit-58053645-45F3';
     versao:= cVersaoNDDCargo;
     reg1000.cnpjContratante := Bean.cnpj_matriz;
     reg1000.reg1100.dataInicial := TExtrato_0000( BeanTXT ).DataExtrato;
     reg1000.reg1100.datafinal :=   TExtrato_0000( BeanTXT ).DataExtrato;
     try
        Arquivo := GetAsString;
        ArquivoGerado.Add( arquivo );
        if FileExists( arquivo ) and not DeleteFile( arquivo ) then raise exception.create('Arquivo já existe no diretorios e não foi possivel sobrescrever. Verifique!');
        result := salvaArquivo( arquivo );
        //msgError := 'Arquivo gerado, aguarde retorno da administradora';
     except
        on e:Exception do
        begin
           result:=False;
           msgError := 'ExtratoDe:'+arquivo+':'+e.Message;
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

function TAdministradoraNDDVersao002.verificaRetornoExtrato: boolean;
var
  arquivo, diretorio : string;
  fs : TSearchRec;
  msg : string;
  bean : TExtrato_0000;

  ret : TExtrato_ret_0000;
  retItem : TExtrato_ret_0001;
  varquivo : string;
begin
   result := False;
   bean := TExtrato_0000( BeanTXT );
   ret  := TExtrato_ret_0000.create;
   try
      diretorio := TBeanOperadoraNDD( DadosOperadora ).diretorioEntrada;
      diretorio := diretorio+'pagamentos\';
      varquivo   := diretorio+'RetPgto_EnvPgto_'+formatDatetime( 'yyyymmdd', bean.DataExtrato)+'*.txt' ;
      if FindFirst( varquivo, faArchive, fs ) = 0 then
      try
         repeat
            arquivo := diretorio+fs.name;
            LogIt( 'Carregando retorno '+arquivo );
            if RenameFile( arquivo, ChangeFileExt(arquivo, '.pef')) then
            begin
               arquivo := ChangeFileExt(arquivo, '.pef');
               ArquivoRecebido.LoadFromFile( arquivo );
               with undd_ext_ret_v1_00.TNDD_RetPgto.create do
               try
                  if not LoadFromFile( arquivo, msg ) then
                      raise Exception.Create(arquivo+' : '+msg)
                  else
                  begin

                     if ResponseCode <> '200' then
                     begin
                        msgError := ResponseCodeMessage;
                        if reg0100.First <> nil then
                        repeat
                           with TNDD_RegPgto_0100( reg0100.Actual ) do
                           begin
                              msgError := descricao;
                           end;
                        until reg0100.Next=nil;
                        ret.motivoRetorno := 'E';
                        ret.Descricao     :=  msgError;
                        Situacao := tsrErro {E};
                        result := True;
                     end
                     else
                     begin
                        if reg1000.First <> nil then
                        repeat
                           with TNDD_RegPgto_1000( reg1000.Actual ) do
                           begin
                              retItem := ret.add0001;

                              retItem.Sequencia := '';
                              retItem.DataLancamento := DataHora;
                              retItem.Viagem         := reg1100.numero+reg1100.CodVerificador;

                              if reg2000.valorPago <> 0 then
                              begin
                                 retItem.Valor := reg2000.valorPago;
                                 retItem.Descricao := 'Pedagio';
                                 retItem.Observacao := reg2000.reg2100.nome;
                              end
                              else
                              begin
                                 retItem.Valor := reg3000.valor;
                                 retItem.Descricao :=  reg3000.nome;
                                 retItem.Observacao := reg3000.comentario;
                              end;
                           end;
                        until reg1000.Next=nil;
                     end;
                  end;
                  Situacao := tsrAprovado {E};
                  Self.BeanTXTRet := ret;
                  msgError := 'Extrato recebido';
                  Result := True;
               finally
                  Free;
               end;
               DeleteFile( PChar( arquivo ) );
            end;
         until FindNext( fs )<>0
      finally
         FindClose( fs );
      end;
   except
      on e : exception do begin
         ret.Free;
         Result := false;
         Situacao := tsrErro {E};
         MsgError := 'verificaRetornoExtrato:'+e.message+' - '+arquivo;
         LogIt( diretorio+'|'+e.message+' - '+arquivo );
         if FileExists( arquivo ) then
         try
            RenameFile( arquivo, ChangeFileExt( arquivo, '.txt' ))
         except
         end;
      end;
   end;
end;

end.
