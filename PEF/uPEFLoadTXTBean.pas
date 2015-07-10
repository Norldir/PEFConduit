unit uPEFLoadTXTBean;

interface
uses classes, uIntegracaoContratofreteBean;

function  CarregaBeanDoArquivo( Bean : TBeanContrato; arquivo : string; var msgErro : string ) : boolean;
function  CarregaBeanDoTX2( Bean : TBeanContrato; arquivo : TStringList; TipoArquivo : char; var msgErro : string ) : boolean;

implementation
uses SysUtils, Variants, uICFFuncoes,
     utxt_pef_v1_0, utxt_pef_can_v1_0, utxt_base, utxt_pef_con_v1_0,
  utxt_pef_ext_v1_0, utxt_pef_pag_v1_0, utxt_pef_alt_v1_0;

function sonumeros( value : string ) : string;
var
   p : PChar;
begin
   result := '';
   p := pchar(value );
   if p^ <> #0 then
   repeat
      if p^ in ['0'..'9'] then
         result := result + p^;
      Inc(p);
   until p^=#0;
end;

function _CarregaBeanEnvio( Bean : TBeanContrato; TXT : TContrato_0000; var msgErro : string ) : boolean;
   procedure validaCEP( cep : string );
   begin
     if (Length(sonumeros( cep))<>8) then raise exception.Create('O CEP '+cep+' não contem  8 digitos!');
   end;

   procedure validaTelefone( telefone : string );
   var
     vddd, vtelefone : string;
   begin
     vtelefone := telefone;
     DivideTelefone(vtelefone, vddd);
     if vddd = '' then raise exception.Create('O telefone '+telefone+' não contem o DDD');
     if not (Length(vtelefone) in [8,9]) then raise exception.Create('O telefone '+telefone+' não contem um numero válido!');
   end;

   procedure validaEndereco( endereco : string );
   var
     vendereco, vTipoLogradouro, vNumero : string;
   begin
     vendereco := endereco;
     DivideEndereco( vendereco, vTipoLogradouro, vNumero );
     if vendereco = '' then raise exception.Create('Endereco '+endereco+' não esta no padrão Tipo logradouro + logradouro + numero');
     if vTipoLogradouro = '' then raise exception.Create('Endereco '+endereco+' não esta no padrão Tipo logradouro + logradouro + numero');
     if vNumero = '' then raise exception.Create('Endereco '+endereco+' não esta no padrão Tipo logradouro + logradouro + numero');
   end;
var
   vii : integer;

   CTRC : Variant;
   campo : string;

   fs  : TFormatSettings;
   info : string;
begin
   fs.DecimalSeparator := '.';
   fs.DateSeparator    := '/';
   fs.LongDateFormat   := 'dd/mm/yyyy';
   fs.LongTimeFormat   := 'hh:nn:ss';
   fs.ShortDateFormat  := 'd/m/y';
   fs.ShortTimeFormat  := 'h:n';
   try
      if TXT.numeroContratoFrete='' then
         raise exception.Create( 'Arquivo com erros, não foi possivel carregar o mesmo!' );

      info :='contrato ';
      with bean do
      begin
        try
           numeroContratoFrete := TXT.numeroContratoFrete;
           cnpj_matriz := TXT.cnpj_matriz;
           uf_matriz := TXT.uf_matriz;
           cidadeMatriz := TXT.cidadeMatriz;
           Telefone_empresa := TXT.Telefone_empresa;
           validaTelefone( Telefone_empresa );
           Usuario := TXT.Usuario;
           cnpj_filial := TXT.cnpj_filial;
           codigo_filial := TXT.codigo_filial;
           serie_documento := TXT.serie_documento;
           documento := TXT.documento;
           datasaida := TXT.datasaida;
           quantidade := TXT.quantidade;
           valorNotaFiscal := TXT.valorNotaFiscal;
           valorSaldo := TXT.valorSaldo;
           valorAdiantamento := TXT.valorAdiantamento;
           valorTotalMotorista := TXT.valorTotalMotorista;
           valorFreteMotorista := TXT.valorFreteMotorista;
           valorDocumento := TXT.valorDocumento;
           pesoSaida := TXT.pesoSaida;
           descricaoCarga := TXT.descricaoCarga;
           valorINSS := TXT.valorINSS;
           BaseINSS  := TXT.BaseINSS;
           AliquotaINSS := TXT.AliquotaINSS;

           BaseSestSenat := TXT.BaseSestSenat;
           valorSest := TXT.valorSest;
           AliquotaSest := TXT.AliquotaSest;
           valorSenat := TXT.valorSenat;
           AliquotaSenat := TXT.AliquotaSenat;
           valorIRRF := TXT.valorIRRF;

           BaseIRRF := TXT.BaseIRRF;
           AliquotaIRRF := TXT.AliquotaIRRF;

           numeroCartaoFrete := TXT.numeroCartaoFrete;
           tipoPagamentoContratoFrete := TXT.tipoPagamentoContratoFrete;
           formaPagamentoDocumento := Copy(TXT.formaPagamentoDocumento,1,1);
           observacoes := TXT.observacoes;
           NCM := Copy(TXT.NCM, 1, 4);
           if Trim( NCM ) ='' then raise exception.Create('Não foi indicado o NCM da mercadoria transportada!'); 
           TipoTolerancia := TXT.TipoTolerancia;
           PercentualTolerancia := txt.PercentualTolerancia;

           TipoOperacaoTransporte := Copy(txt.TipoOperacaoTransporte+'P',1,1);
           if txt.ProprietarioDaCarga <> '' then
              ProprietarioCarga      := Copy(txt.ProprietarioDaCarga+'R', 1,1)
           else
           begin
               if tipoPagamentoContratoFrete = 'C' then
                  ProprietarioCarga := 'R'
               else
                  ProprietarioCarga := 'D';
           end;

           if TXT.reg7000.First <> nil then
           repeat
              with T7000( TXT.reg7000.Actual ) do
                 ParametrosOperadora.Add( Parametro+'='+ValorParametro );
           until txt.reg7000.Next=nil;
        except
           on e:exception do raise Exception.Create( e.Message );
        end;
        info :='Contratado:';
        if txt.reg5000.First <> nil then
        with contratado  do
        try
          contratado_cnpj_cpf := T5000( txt.reg5000.Actual ).contratado_cnpj_cpf ;
          pessoa_tipo :=         T5000( txt.reg5000.Actual ).pessoa_tipo;
          nome_contratado :=     T5000( txt.reg5000.Actual ).nome_contratado;
          if T5000( txt.reg5000.Actual ).nome_fantasia = '' then
             nome_fantasia :=       nome_contratado
          else
             nome_fantasia :=       T5000( txt.reg5000.Actual ).nome_fantasia;
          cep  :=                T5000( txt.reg5000.Actual ).cep;
          validaCEP( cep );
          telefone1 := T5000( txt.reg5000.Actual ).telefone1;
          validaTelefone( Telefone1 );
          telefone2 := T5000( txt.reg5000.Actual ).telefone2;
          if telefone2<>'' then validaTelefone( Telefone2);
          celular := T5000( txt.reg5000.Actual ).celular;
          if celular<>'' then validaTelefone( celular );
          email := T5000( txt.reg5000.Actual ).email;
          if T5000( txt.reg5000.Actual ).contato = '' then
             contato := nome_fantasia
          else
             contato := T5000( txt.reg5000.Actual ).contato;
          dependentes := T5000( txt.reg5000.Actual ).dependentes;
          inss_codigo := T5000( txt.reg5000.Actual ).inss_codigo;
          rntrc_codigo := T5000( txt.reg5000.Actual ).rntrc_codigo;

          endereco  := T5000( txt.reg5000.Actual ).endereco;
          validaEndereco( endereco );
          endereco_complemento := T5000( txt.reg5000.Actual ).endereco_complemento;
          bairro := T5000( txt.reg5000.Actual ).bairro;
          cidade := T5000( txt.reg5000.Actual ).cidade;
          uf := T5000( txt.reg5000.Actual ).uf;
          cidade_ibge := T5000( txt.reg5000.Actual ).cidade_ibge;

          identidade := T5000( txt.reg5000.Actual ).Identidade;
          orgaoemissoridentidade := T5000( txt.reg5000.Actual ).OrgaoEmissorIdentidade;

          rntrc_tipo := T5000( txt.reg5000.Actual ).rntrc_tipo;
          equiparado_TAC := T5000( txt.reg5000.Actual ).Equiparado_TAC;

          DataEmissaoIdentidade := StrToDateDef(T5000( txt.reg5000.Actual ).DataEmissaoIdentidade ,0); {versao 1.03}
          nacionalidade         := T5000( txt.reg5000.Actual ).nacionalidade;{versao 1.03}
          sexo                  := copy(T5000( txt.reg5000.Actual ).sexo+'M', 1,1);{versao 1.03}
          DataNascimento        := StrToDateDef(T5000( txt.reg5000.Actual ).DataNascimento ,0);{versao 1.03}
          endereco_propriedade_tipo := copy(T5000( txt.reg5000.Actual ).endereco_propriedade_tipo+'1',1,1);{versao 1.03}
          endereco_reside_desde := StrToDateDef(T5000( txt.reg5000.Actual ).endereco_reside_desde ,0);{versao 1.03}
          celularOperadora      := T5000( txt.reg5000.Actual ).celularOperadora;{versao 1.03}


        except
           on e:exception do raise Exception.Create( e.Message );
        end;

        info :='Cliente origem:';

        if TXT.reg0300.Find('TIPO', 'O') <> nil then
        with cliente_Origem do
        try
           cnpj_cpf := T0300( TXT.reg0300.Actual ).cnpj;
           nome := T0300( TXT.reg0300.Actual ).nome;
           endereco := T0300( TXT.reg0300.Actual ).endereco;
           validaEndereco( endereco );
           complemento := T0300( TXT.reg0300.Actual ).complemento;
           bairro := T0300( TXT.reg0300.Actual ).bairro;
           cep := T0300( TXT.reg0300.Actual ).cep;
           validaCEP( cep );
           cidade := T0300( TXT.reg0300.Actual ).cidade;
           ibge := T0300( TXT.reg0300.Actual ).ibge;
           uf := T0300( TXT.reg0300.Actual ).uf;
        except
           on e:exception do raise Exception.Create(e.Message );
        end;

        info :='Cliente destino:';
        if TXT.reg0300.Find('TIPO', 'D') <> nil then
        with cliente_Destino do
        try
           cnpj_cpf := T0300( TXT.reg0300.Actual ).cnpj;
           nome := T0300( TXT.reg0300.Actual ).nome;
           endereco := T0300( TXT.reg0300.Actual ).endereco;
           validaEndereco( endereco );
           complemento := T0300( TXT.reg0300.Actual ).complemento;
           bairro := T0300( TXT.reg0300.Actual ).bairro;
           cep    := T0300( TXT.reg0300.Actual ).cep;
           validaCEP( cep );
           cidade := T0300( TXT.reg0300.Actual ).cidade;
           ibge := T0300( TXT.reg0300.Actual ).ibge;
           uf := T0300( TXT.reg0300.Actual ).uf;
        except
           on e:exception do raise Exception.Create( e.Message );
        end;

        info :='Cliente consignacao';
        if TXT.reg0300.Find('TIPO', 'C') <> nil then
        with cliente_Consignatario do
        try
           cnpj_cpf := T0300( TXT.reg0300.Actual ).cnpj;
           nome := T0300( TXT.reg0300.Actual ).nome;
           endereco := T0300( TXT.reg0300.Actual ).endereco;
           validaEndereco( endereco );
           complemento := T0300( TXT.reg0300.Actual ).complemento;
           bairro := T0300( TXT.reg0300.Actual ).bairro;
           cep    := T0300( TXT.reg0300.Actual ).cep;
           validaCEP( cep );
           cidade := T0300( TXT.reg0300.Actual ).cidade;
           ibge := T0300( TXT.reg0300.Actual ).ibge;
           uf := T0300( TXT.reg0300.Actual ).uf;
        except
           on e:exception do raise Exception.Create(e.Message );
        end;

        info :='Veiculo';
        if T5000( txt.reg5000.First).reg5200.First <> nil then
        with veiculo do
        try
          contratado_cnpj_cpf := T5000( txt.reg5000.Actual).contratado_cnpj_cpf;
          placa :=               T5200( T5000( txt.reg5000.Actual).reg5200.Actual).placa;
          numero_eixos :=        T5200( T5000( txt.reg5000.Actual).reg5200.Actual).numero_eixos;
          renavam :=             T5200( T5000( txt.reg5000.Actual).reg5200.Actual).renavam;
          categoriaveiculo :=    T5200( T5000( txt.reg5000.Actual).reg5200.Actual).Categoria;
          rntrc_codigo :=        T5200( T5000( txt.reg5000.Actual).reg5200.Actual).rntrc_codigo;
          placa_uf :=            T5200( T5000( txt.reg5000.Actual).reg5200.Actual).placa_uf;
          rntrc_tipo :=          T5200( T5000( txt.reg5000.Actual).reg5200.Actual).rntrc_tipo;
          info :='Veiculo->carretas';
          try
             if T5200( T5000( TXT.reg5000.Actual).reg5200.Actual).reg5220.First <> nil then
             repeat
                 with carretas.AddCarreta do
                 try
                   contratado_cnpj_cpf := T5220( T5200( T5000( txt.reg5000.Actual).reg5200.Actual).reg5220.Actual).contratado_cnpj_cpf;
                   placa :=               T5220( T5200( T5000( txt.reg5000.Actual).reg5200.Actual).reg5220.Actual).placa;
                   numero_eixos :=        T5220( T5200( T5000( txt.reg5000.Actual).reg5200.Actual).reg5220.Actual).numero_eixos;
                   renavam :=             T5220( T5200( T5000( txt.reg5000.Actual).reg5200.Actual).reg5220.Actual).renavam;
                   rntrc_codigo :=        T5220( T5200( T5000( txt.reg5000.Actual).reg5200.Actual).reg5220.Actual).rntrc_codigo;
                   placa_uf :=            T5220( T5200( T5000( txt.reg5000.Actual).reg5200.Actual).reg5220.Actual).placa_uf;
                   categoriaveiculo:=     T5220( T5200( T5000( txt.reg5000.Actual).reg5200.Actual).reg5220.Actual).Categoria;
                   try
                      if T5220( T5200( T5000( txt.reg5000.Actual).reg5200.Actual).reg5220.Actual).reg5221.Find('Administradora', 'RODOCRED') <> nil then
                      repeat
                         with dadosRodocred do
                         begin
                           if T5221(T5220( T5200( T5000( txt.reg5000.Actual).reg5200.Actual).reg5220.Actual).reg5221.Actual).Parametro = 'ModeloVeiculo' then
                              ModeloVeiculoRodocred := T5221(T5220( T5200( T5000( txt.reg5000.Actual).reg5200.Actual).reg5220.Actual).reg5221.Actual).ValorParametro;

                           if T5221(T5220( T5200( T5000( txt.reg5000.Actual).reg5200.Actual).reg5220.Actual).reg5221.Actual).Parametro = 'TipoVeiculo' then
                              TipoVeiculoRodocred :=   T5221(T5220( T5200( T5000( txt.reg5000.Actual).reg5200.Actual).reg5220.Actual).reg5221.Actual).ValorParametro;

                           if T5221(T5220( T5200( T5000( txt.reg5000.Actual).reg5200.Actual).reg5220.Actual).reg5221.Actual).Parametro = 'TipoRodagem' then
                              TipoRodagemRodocred :=   T5221(T5220( T5200( T5000( txt.reg5000.Actual).reg5200.Actual).reg5220.Actual).reg5221.Actual).ValorParametro;

                           if T5221(T5220( T5200( T5000( txt.reg5000.Actual).reg5200.Actual).reg5220.Actual).reg5221.Actual).Parametro = 'TipoCombustivel' then
                              TipoCombustivelRodocred := T5221(T5220( T5200( T5000( txt.reg5000.Actual).reg5200.Actual).reg5220.Actual).reg5221.Actual).ValorParametro;
                         end;
                      until T5220( T5200( T5000( txt.reg5000.Actual).reg5200.Actual).reg5220.Actual).reg5221.Find('Administradora', 'RODOCRED', true) = nil;

                      if T5220( T5200( T5000( txt.reg5000.Actual).reg5200.Actual).reg5220.Actual).reg5221.Find('Administradora', 'PAMCARY') <> nil then
                      repeat
                         with dadosPamcary do
                         begin
                           if T5221(T5220( T5200( T5000( txt.reg5000.Actual).reg5200.Actual).reg5220.Actual).reg5221.Actual).Parametro = 'CaterogiraVeiculoPamcad' then
                              CaterogiraVeiculoPamcad := T5221(T5220( T5200( T5000( txt.reg5000.Actual).reg5200.Actual).reg5220.Actual).reg5221.Actual).ValorParametro;
                         end;
                      until T5220( T5200( T5000( txt.reg5000.Actual).reg5200.Actual).reg5220.Actual).reg5221.Find('Administradora', 'PAMCARY', true) = nil;
                   except
                       on e:exception do raise Exception.Create(e.Message );
                   end;
                 except
                   on e:exception do raise Exception.Create(e.Message );
                 end;
             until T5200( T5000( txt.reg5000.Actual).reg5200.Actual).reg5220.next = nil;
          except
            on e:exception do raise Exception.Create( e.Message );
          end;
          try
             if T5200( T5000( txt.reg5000.Actual).reg5200.Actual).reg5210.Find('Administradora', 'RODOCRED') <> nil then
             repeat
                with dadosRodocred, T5200( T5000( txt.reg5000.Actual).reg5200.Actual) do
                begin
                  if T5210( reg5210.Actual ).Parametro = 'ModeloVeiculo' then
                     ModeloVeiculoRodocred := T5210( reg5210.Actual ).ValorParametro;

                  if T5210( reg5210.Actual ).Parametro = 'TipoVeiculo' then
                     TipoVeiculoRodocred :=   T5210( reg5210.Actual ).ValorParametro;

                  if T5210( reg5210.Actual ).Parametro = 'TipoRodagem' then
                     TipoRodagemRodocred :=   T5210( reg5210.Actual ).ValorParametro;

                  if T5210( reg5210.Actual ).Parametro = 'TipoCombustivel' then
                     TipoCombustivelRodocred := T5210( reg5210.Actual ).ValorParametro;
                end;
             until T5200( T5000( txt.reg5000.Actual).reg5200.Actual).reg5210.Find('Administradora', 'RODOCRED', true) = nil;

             if T5200( T5000( txt.reg5000.Actual).reg5200.Actual).reg5210.Find('Administradora', 'PAMCARY') <> nil then
             repeat
                with dadosPamcary do
                try
                  if T5210( T5200( T5000( txt.reg5000.Actual).reg5200.Actual).reg5210.Actual).Parametro = 'CaterogiraVeiculoPamcad' then
                     CaterogiraVeiculoPamcad := T5210( T5200( T5000( txt.reg5000.Actual).reg5200.Actual).reg5210.Actual).ValorParametro;
                except
                   on e:Exception do
                      raise Exception.Create('Não foi possivel carregar os dados do pancary '+e.Message);
                end;
             until T5200( T5000( txt.reg5000.Actual).reg5200.Actual).reg5210.Find('Administradora', 'PAMCARY', true) = nil;
          except
               on e:exception do raise Exception.Create('dados operadora '+ e.Message );
          end;
        except
           on e:exception do raise Exception.Create( e.Message );
        end;

        info :='Dados de deposito:';
        if txt.reg4000.First <> nil then
        with DadosDeposito do
        try
          banco := T4000(txt.reg4000.Actual).banco;
          agencia := T4000(txt.reg4000.Actual).agencia;
          dvAgendia := T4000(txt.reg4000.Actual).dvAgencia;
          conta := T4000(txt.reg4000.Actual).conta;
          dvConta := T4000(txt.reg4000.Actual).dvConta;
        except
           on e:Exception do
              raise Exception.Create(e.Message);
        end;
        info:='Rota:';
        if TXT.reg2000.First <> nil then
        with rota do
        try
           codigoRota := T2000(TXT.reg2000.Actual).CodigoRotaSistema;
           if codigoRota='' then raise Exception.Create('Rota não informada!');
           if T2000(TXT.reg2000.Actual).reg2100.First <> nil then
              repeat
                 with pontosRota.AddPonto do
                 begin
                    ibge_origem := T2100( T2000(TXT.reg2000.Actual).reg2100.Actual).IBGE_Origem;
                    uf_origem  := T2100( T2000(TXT.reg2000.Actual).reg2100.Actual).UF_Origem;
                    ibge_destino  := T2100( T2000(TXT.reg2000.Actual).reg2100.Actual).IBGE_Destino;
                    uf_destino  := T2100( T2000(TXT.reg2000.Actual).reg2100.Actual).UF_Destino;
                    descricao  := T2100( T2000(TXT.reg2000.Actual).reg2100.Actual).Descricao;
                 end;
              until T2000(TXT.reg2000.Actual).reg2100.next = nil
           else
              with pontosRota.AddPonto do
              begin
                 if TXT.reg0300.Find('TIPO', 'O') <> nil then
                 with cliente_Origem do
                 try
                    ibge_origem := T0300( TXT.reg0300.Actual ).ibge;
                    uf_origem  := T0300( TXT.reg0300.Actual ).uf;
                    descricao  := T0300( TXT.reg0300.Actual ).cidade;
                 except
                    on e:exception do raise Exception.Create(e.Message );
                 end;

                 if TXT.reg0300.Find('TIPO', 'D') <> nil then
                 with cliente_Origem do
                 try
                    ibge_destino := T0300( TXT.reg0300.Actual ).ibge;
                    uf_destino  := T0300( TXT.reg0300.Actual ).uf;
                    descricao  := descricao + ' até '+T0300( TXT.reg0300.Actual ).cidade;
                 except
                    on e:exception do raise Exception.Create(e.Message );
                 end;
              end;
         except
           on e:Exception do
              raise Exception.Create(e.Message);
        end;
        info := 'Motorista:';
        if T5000(TXT.reg5000.Actual).reg5100.First <> nil then
        with motorista do
        try
          cpf := T5100( T5000(TXT.reg5000.Actual).reg5100.Actual ).cpf;
          nome := T5100( T5000(TXT.reg5000.Actual).reg5100.Actual ).nome;
          cep  := T5100( T5000(TXT.reg5000.Actual).reg5100.Actual ).cep;
          validaCEP( cep );
          telefone := T5100( T5000(TXT.reg5000.Actual).reg5100.Actual ).telefone;
          validaTelefone( Telefone );
          celular := T5100( T5000(TXT.reg5000.Actual).reg5100.Actual ).celular;
          if celular<>'' then validaTelefone( celular );
          email := T5100( T5000(TXT.reg5000.Actual).reg5100.Actual ).email;

          if T5100( T5000(TXT.reg5000.Actual).reg5100.Actual ).data_nascimento <> '' then
             data_nascimento := StrToDate(T5100( T5000(TXT.reg5000.Actual).reg5100.Actual ).data_nascimento, fs)
          else
             data_nascimento := 0;
          rg := T5100( T5000(TXT.reg5000.Actual).reg5100.Actual ).rg;
          Orgao_Expedido := T5100( T5000(TXT.reg5000.Actual).reg5100.Actual ).Orgao_Expedido;
          carteira_habilitacao := T5100( T5000(TXT.reg5000.Actual).reg5100.Actual ).carteira_habilitacao;
          if Length(carteira_habilitacao)<>11 then raise exception.Create('O número da CNH é inválido, deve ter 11 digitos!');

          carteira_habilitacao_dt_val := T5100( T5000(TXT.reg5000.Actual).reg5100.Actual ).carteira_habilitacao_dt_val;
          carteira_habilitacao_categoria := copy(T5100( T5000(TXT.reg5000.Actual).reg5100.Actual ).carteira_habilitacao_categoria,1,1);
          if carteira_habilitacao_categoria = '' then raise exception.Create('A categoria da CNH do motorista não foi definida!');

          endereco := T5100( T5000(TXT.reg5000.Actual).reg5100.Actual ).endereco;
          validaEndereco( endereco );
          endereco_complemento := T5100( T5000(TXT.reg5000.Actual).reg5100.Actual ).endereco_complemento;
          bairro := T5100( T5000(TXT.reg5000.Actual).reg5100.Actual ).bairro ;
          cidade := T5100( T5000(TXT.reg5000.Actual).reg5100.Actual ).cidade;
          uf := T5100( T5000(TXT.reg5000.Actual).reg5100.Actual ).uf;
          cidade_ibge := T5100( T5000(TXT.reg5000.Actual).reg5100.Actual ).cidade_ibge;

        except
           on e:Exception do
              raise Exception.Create(e.Message);
        end;
        info := 'Pedágio:';
        if TXT.reg1000.First <> nil then
        with pedagio do
        try
          valorPedagio := T1000( TXT.reg1000.Actual ).valorPedagio;
          formaPagamentoPedagio := T1000( TXT.reg1000.Actual ).formaPagamentoPedagio;
          administradorPedagio := T1000( TXT.reg1000.Actual ).administradorPedagio;
          resposavelPagamentoPedagio := T1000( TXT.reg1000.Actual ).resposavelPagamentoPedagio;
          NumeroCartaoPedagio :=  T1000( TXT.reg1000.Actual ).NumeroCartaoPedagio;
        except
           on e:Exception do
              raise Exception.Create(e.Message);
        end;
        info:='Parcelas:';
        if txt.reg0400.First<>nil then
        repeat

            with ParcelasAdiantamento do
            try

               with AddParcela do
               begin
                  dias   := T0400(TXT.reg0400.Actual).dias;
                  valor  := T0400(TXT.reg0400.Actual).valor;
                  ValorBruto := T0400(TXT.reg0400.Actual).valorBruto;
                  if ValorBruto = 0 then
                     ValorBruto := valor;
               end;

            except
               on e:Exception do
                  raise Exception.Create(e.Message);
            end;
        until txt.reg0400.Next = nil;
        info :='Notas fiscais:';
        if TXT.reg3000.First <> nil then
        repeat
           with NotasFiscais do
           try
              with AddNota do
              begin
                 NumeroNota := T3000( TXT.reg3000.Actual).Numero;
                 SerieNota := T3000( TXT.reg3000.Actual).Serie;
                 modelo    := T3000( TXT.reg3000.Actual).Modelo;
                 Cnpj_Remetente:=T3000( TXT.reg3000.Actual).Cnpj_remetente;
                 RazaoSocial_Remetente:=T3000( TXT.reg3000.Actual).RazaoSocial_remetente;
                 Cnpj_Destinatario:=T3000( TXT.reg3000.Actual).Cnpj_destinatario;
                 RazaoSocial_Destinatario:=T3000( TXT.reg3000.Actual).RazaoSocial_destinatario;
              end;
           except
              on  e:exception do
                 raise Exception.Create(e.Message);
           end;
        until TXT.reg3000.next = nil;
        info:='Descontos:';
        if txt.reg0100.First <> nil then
        repeat
           with Descontos.AddDesconto do
           begin
               Descricao := T0100( txt.reg0100.Actual ).descricao;
               valor     := T0100( txt.reg0100.Actual ).valor;
               Codigo    := T0100( txt.reg0100.Actual ).Codigo;
           end;
        until txt.reg0100.Next = nil;
        info:='Documentos para entregar:';
        if txt.reg0200.First <> nil then
        repeat
           with DocumentosEntrega.AddDocumento do
           begin
               Codigo := T0200( txt.reg0200.Actual ).Codigo;
               Documento := T0200( txt.reg0200.Actual ).Descricao;
               Complemento := T0200( txt.reg0200.Actual ).Complemento;
           end;
        until txt.reg0200.Next = nil;

        if txt.reg9999.Last <> nil then
        begin
           NumeroProtocoloProcessamento := T9999( txt.reg9999.Actual).NumeroProtocoloProcessamento;
           DataProtocoloProcessamento := T9999( txt.reg9999.Actual).DataHoraRetorno;
        end else
        begin
           NumeroProtocoloProcessamento := '';
           DataProtocoloProcessamento := 0;
        end;


        if txt.reg0001.Last <> nil then
        begin
           DadosImpressaoDOT.NomeFilial        := T0001( txt.reg0001.Actual).NomeFilial;
           DadosImpressaoDOT.EnderecoFilial    := T0001( txt.reg0001.Actual).EnderecoFilial;
           DadosImpressaoDOT.CidadeFilial      := T0001( txt.reg0001.Actual).CidadeFilial;
           DadosImpressaoDOT.Bairro            := T0001( txt.reg0001.Actual).Bairro;
           DadosImpressaoDOT.CEP               := T0001( txt.reg0001.Actual).CEP;
           DadosImpressaoDOT.InscricaoEstadual := T0001( txt.reg0001.Actual).InscricaoEstadual;
           DadosImpressaoDOT.Telefone          := T0001( txt.reg0001.Actual).Telefone;
           DadosImpressaoDOT.FAX               := T0001( txt.reg0001.Actual).FAX;
           DadosImpressaoDOT.DestinoDOT        := T0001( txt.reg0001.Actual).DestinoDOT;
           DadosImpressaoDOT.LocalDestino      := T0001( txt.reg0001.Actual).LocalDestino;
        end;

        if txt.reg0500.Last <> nil then {#T5193}
        begin
           PortadorCartao.nome                      := T0500( txt.reg0500.Actual).nome;
           PortadorCartao.CNPJ_CPF                  := T0500( txt.reg0500.Actual).CNPJ_CPF;
           PortadorCartao.rg                        := T0500( txt.reg0500.Actual).rg;
           PortadorCartao.rg_uf                     := T0500( txt.reg0500.Actual).rg_uf;
           PortadorCartao.rg_emissor                := T0500( txt.reg0500.Actual).rg_emissor;
           PortadorCartao.rg_data_emissao           := T0500( txt.reg0500.Actual).rg_data_emissao;
           PortadorCartao.rntrc                     := T0500( txt.reg0500.Actual).rntrc;
           PortadorCartao.data_nascimento           := T0500( txt.reg0500.Actual).data_nascimento;
           PortadorCartao.nacionalidade             := T0500( txt.reg0500.Actual).nacionalidade;
           PortadorCartao.naturalidade_ibge         := T0500( txt.reg0500.Actual).naturalidade_ibge;
           PortadorCartao.sexo                      := T0500( txt.reg0500.Actual).sexo; {M / F}
           PortadorCartao.endereco                  := T0500( txt.reg0500.Actual).endereco;
           PortadorCartao.endereco_complemento      := T0500( txt.reg0500.Actual).endereco_complemento;
           PortadorCartao.endereco_bairro           := T0500( txt.reg0500.Actual).endereco_bairro;
           PortadorCartao.endereco_cidade           := T0500( txt.reg0500.Actual).endereco_cidade;
           PortadorCartao.endereco_uf               := T0500( txt.reg0500.Actual).endereco_uf;
           PortadorCartao.endereco_pais             := T0500( txt.reg0500.Actual).endereco_pais;
           PortadorCartao.endereco_cep              := T0500( txt.reg0500.Actual).endereco_cep;
           PortadorCartao.endereco_propriedade_tipo := T0500( txt.reg0500.Actual).endereco_propriedade_tipo; { 1 PRÓPRIO 2 PRÓPRIO FINANCIADO 3 ALUGADO 4 FAMILIAR 5 CEDIDO}
           PortadorCartao.endereco_reside_desde     := T0500( txt.reg0500.Actual).endereco_reside_desde;
           PortadorCartao.telefone                  := T0500( txt.reg0500.Actual).telefone;
           PortadorCartao.celular                   := T0500( txt.reg0500.Actual).celular;
           PortadorCartao.celular_operadora         := T0500( txt.reg0500.Actual).celular_operadora;
           PortadorCartao.email                     := T0500( txt.reg0500.Actual).email;
           PortadorCartao.empresa_nome              := T0500( txt.reg0500.Actual).empresa_nome;
           PortadorCartao.empresa_cnpj              := T0500( txt.reg0500.Actual).empresa_cnpj;
           PortadorCartao.empresa_rntrc             := T0500( txt.reg0500.Actual).empresa_rntrc;
        end;

        info:='Vale abastecimento';  {#T10752}
        if txt.reg0600.First<>nil then
        begin
           ValorValeAbastecimento  := T0600(TXT.reg0600.Actual).valorBruto;
        end else ValorValeAbastecimento  :=  0;

      end;
      result := true;
   except
      on e:exception do
      begin
         result := False;
         msgErro := info+' '+e.message;
      end;
   end;
end;


function CarregaBeanEnvio( Bean : TBeanContrato; arquivo : string; var msgErro : string ) : boolean;   overload;
var
  txt : TContrato_0000;
begin
   try
      txt := TContrato_0000.create;
      try
         if ExtractFileExt( arquivo ) = '.tx2' then
            result := txt.LoadFromTX2File( arquivo, msgErro )
         else
            result := txt.LoadFromFile( arquivo, msgErro );
         if Result then
            Result := _CarregaBeanEnvio( Bean, txt, msgErro );
      finally
         txt.Free;
      end
   except
    on e:Exception do
    begin
       result := False;
       msgErro   := 'Não foi possivel carregar o arquivo '+arquivo+'. '+e.Message;
    end;
   end;
end;


function CarregaBeanEnvio( Bean : TBeanContrato; arquivo : TStringList; var msgErro : string ) : boolean;   overload;
var
  txt : TContrato_0000;
begin
   try
      txt := TContrato_0000.create;
      try
         result := txt.LoadFromTX2( arquivo, msgErro );

         //txt.SaveToFile( 'exemplo.txt');

         if Result then
            Result := _CarregaBeanEnvio( Bean, txt, msgErro );
      finally
         txt.Free;
      end
   except
    on e:Exception do
    begin
       result := False;
       msgErro   := 'Não foi possivel carregar o arquivo. '+e.Message;
    end;
   end;
end;


function  _CarregaBeanCancelamento( Bean : TBeanContrato; TXT : TCancelamento_0000; var msgErro : string ) : boolean;
var
   fs  : TFormatSettings;
   info : string;
begin
   fs.DecimalSeparator := '.';
   fs.DateSeparator    := '/';
   fs.LongDateFormat   := 'dd/mm/yyyy';
   fs.LongTimeFormat   := 'hh:nn:ss';
   fs.ShortDateFormat  := 'd/m/y';
   fs.ShortTimeFormat  := 'h:n';
   try

      info :='load arquvo';
      if TXT.numeroContratoFrete='' then
         raise exception.Create( 'Arquivo com erros, não foi possivel carregar o mesmo!' );

      info :='cancelamento ';
      with bean do
      begin
        try
           numeroContratoFrete := TXT.numeroContratoFrete;
           NumeroCIOT          := TXT.CIOT;
           NumeroViagem        := TXT.viagem;
           observacoes         := TXT.Motivo;
           cnpj_filial         := txt.cnpj;

           cnpj_matriz         := txt.cnpj_matriz;
           if cnpj_matriz = '' then
              cnpj_matriz         := txt.cnpj;

           if txt.reg9999.Last <> nil then
           begin
              NumeroProtocoloProcessamento := T9999( txt.reg9999.Actual).NumeroProtocoloProcessamento;
              DataProtocoloProcessamento := T9999( txt.reg9999.Actual).DataHoraRetorno;
           end else
           begin
              NumeroProtocoloProcessamento := '';
              DataProtocoloProcessamento := 0;
           end;

        except
           raise;
        end;
      end;

      result := true;
   except
      on e:exception do
      begin
         result := False;
         msgErro := info+' '+e.message;
      end;
   end;

end;

function  CarregaBeanCancelamento( Bean : TBeanContrato; arquivo : string; var msgErro : string ) : boolean; overload;
var
  txt : TCancelamento_0000;
begin
   try
      txt := TCancelamento_0000.create;
      try
         if ExtractFileExt( arquivo ) = '.tx2' then
            result := txt.LoadFromTX2File( arquivo, msgErro )
         else
            result := txt.LoadFromFile( arquivo, msgErro );
         if Result then
            Result := _CarregaBeanCancelamento( Bean, txt, msgErro );
      finally
         txt.Free;
      end
   except
    on e:Exception do
    begin
       result := False;
       msgErro   := 'Não foi possivel carregar o arquivo '+arquivo+'. '+e.Message;
    end;
   end;
end;

function CarregaBeanCancelamento( Bean : TBeanContrato; arquivo : TStringList; var msgErro : string ) : boolean;   overload;
var
  txt : TCancelamento_0000;
begin
   try
      txt := TCancelamento_0000.create;
      try
         result := txt.LoadFromTX2( arquivo, msgErro );

         //txt.SaveToFile( 'exemplo.txt');

         if Result then
            Result := _CarregaBeanCancelamento( Bean, txt, msgErro );
      finally
         txt.Free;
      end
   except
    on e:Exception do
    begin
       result := False;
       msgErro   := 'Não foi possivel carregar o arquivo. '+e.Message;
    end;
   end;
end;

function  _CarregaBeanConsulta( Bean : TBeanContrato; TXT : TConsulta_0000; var msgErro : string ) : boolean;
var
   fs  : TFormatSettings;
   info : string;
begin
   fs.DecimalSeparator := '.';
   fs.DateSeparator    := '/';
   fs.LongDateFormat   := 'dd/mm/yyyy';
   fs.LongTimeFormat   := 'hh:nn:ss';
   fs.ShortDateFormat  := 'd/m/y';
   fs.ShortTimeFormat  := 'h:n';
   try

      info :='load arquvo';
//      if TXT.numeroContratoFrete='' then
//         raise exception.Create( 'Arquivo com erros, não foi possivel carregar o mesmo!' );

      info :='cancelamento ';
      with bean do
      begin
        try
           numeroContratoFrete := TXT.numeroContratoFrete;
           NumeroCIOT          := TXT.CIOT;
           NumeroViagem        := TXT.viagem;
           cnpj_filial         := txt.cnpj;
           cnpj_matriz         := txt.cnpj_matriz;
           if cnpj_matriz = '' then
              cnpj_matriz         := txt.cnpj;

           if txt.reg9999.Last <> nil then
           begin
              NumeroProtocoloProcessamento := T9999( txt.reg9999.Actual).NumeroProtocoloProcessamento;
              DataProtocoloProcessamento := T9999( txt.reg9999.Actual).DataHoraRetorno;
           end else
           begin
              NumeroProtocoloProcessamento := '';
              DataProtocoloProcessamento := 0;
           end;

        except
           raise;
        end;
      end;

      result := true;
   except
      on e:exception do
      begin
         result := False;
         msgErro := info+' '+e.message;
      end;
   end;

end;

function  CarregaBeanConsulta( Bean : TBeanContrato; arquivo : string; var msgErro : string ) : boolean; overload;
var
  txt : TConsulta_0000;
begin
   try
      txt := TConsulta_0000.create;
      try
         if ExtractFileExt( arquivo ) = '.tx2' then
            result := txt.LoadFromTX2File( arquivo, msgErro )
         else
            result := txt.LoadFromFile( arquivo, msgErro );
         if Result then
            Result := _CarregaBeanConsulta( Bean, txt, msgErro );
      finally
         txt.Free;
      end
   except
    on e:Exception do
    begin
       result := False;
       msgErro   := 'Não foi possivel carregar o arquivo '+arquivo+'. '+e.Message;
    end;
   end;
end;


function  _CarregaBeanExtrato( Bean : TBeanContrato; TXT : TExtrato_0000; var msgErro : string ) : boolean;
var
   fs  : TFormatSettings;
   info : string;
begin
   fs.DecimalSeparator := '.';
   fs.DateSeparator    := '/';
   fs.LongDateFormat   := 'dd/mm/yyyy';
   fs.LongTimeFormat   := 'hh:nn:ss';
   fs.ShortDateFormat  := 'd/m/y';
   fs.ShortTimeFormat  := 'h:n';
   try

      info :='load arquvo';
      

      with bean do
      begin
        try
           numeroContratoFrete := '';
           NumeroCIOT          := '';
           NumeroViagem        := '';
           cnpj_filial         := txt.cnpj;
           cnpj_matriz         := txt.cnpj_matriz;
           if cnpj_matriz = '' then
              cnpj_matriz         := txt.cnpj;

           if txt.reg9999.Last <> nil then
           begin
              NumeroProtocoloProcessamento := TExtrato_9999( txt.reg9999.Actual).NumeroProtocoloProcessamento;
              DataProtocoloProcessamento := TExtrato_9999( txt.reg9999.Actual).DataHoraRetorno;
           end else
           begin
              NumeroProtocoloProcessamento := '';
              DataProtocoloProcessamento := 0;
           end;

        except
           raise;
        end;
      end;

      result := true;
   except
      on e:exception do
      begin
         result := False;
         msgErro := info+' '+e.message;
      end;
   end;

end;

function  CarregaBeanExtrato( Bean : TBeanContrato; arquivo : string; var msgErro : string ) : boolean; overload;
var
  txt : TExtrato_0000;
begin
   try
      txt := TExtrato_0000.create;
      try
         if ExtractFileExt( arquivo ) = '.tx2' then
            result := txt.LoadFromTX2File( arquivo, msgErro )
         else
            result := txt.LoadFromFile( arquivo, msgErro );
         if Result then
            Result := _CarregaBeanExtrato( Bean, txt, msgErro );
      finally
         txt.Free;
      end
   except
    on e:Exception do
    begin
       result := False;
       msgErro   := 'Não foi possivel carregar o arquivo '+arquivo+'. '+e.Message;
    end;
   end;
end;

function  _CarregaBeanPagamento( Bean : TBeanContrato; TXT : TPagamento_0000; var msgErro : string ) : boolean;
var
   fs  : TFormatSettings;
   info : string;
begin
   fs.DecimalSeparator := '.';
   fs.DateSeparator    := '/';
   fs.LongDateFormat   := 'dd/mm/yyyy';
   fs.LongTimeFormat   := 'hh:nn:ss';
   fs.ShortDateFormat  := 'd/m/y';
   fs.ShortTimeFormat  := 'h:n';
   try

      info :='load arquvo';
      

      with bean do
      begin
        try
           numeroContratoFrete := txt.NumeroContratoFrete;
           NumeroCIOT          := txt.CIOT;
           NumeroViagem        := txt.viagem;
           cnpj_filial         := txt.cnpjFilial;
           cnpj_matriz         := txt.cnpjMatriz;
           if cnpj_matriz = '' then
              cnpj_matriz         := txt.cnpjFilial;

           if txt.reg9999.Last <> nil then
           begin
              NumeroProtocoloProcessamento := TExtrato_9999( txt.reg9999.Actual).NumeroProtocoloProcessamento;
              DataProtocoloProcessamento := TExtrato_9999( txt.reg9999.Actual).DataHoraRetorno;
           end else
           begin
              NumeroProtocoloProcessamento := '';
              DataProtocoloProcessamento := 0;
           end;

        except
           raise;
        end;
      end;

      result := true;
   except
      on e:exception do
      begin
         result := False;
         msgErro := info+' '+e.message;
      end;
   end;

end;

function  CarregaBeanPagamento( Bean : TBeanContrato; arquivo : string; var msgErro : string ) : boolean; overload;
var
  txt : TPagamento_0000;
begin
   try
      txt := TPagamento_0000.create;
      try
         if ExtractFileExt( arquivo ) = '.tx2' then
            result := txt.LoadFromTX2File( arquivo, msgErro )
         else
            result := txt.LoadFromFile( arquivo, msgErro );
         if Result then
            Result := _CarregaBeanPagamento( Bean, txt, msgErro );
      finally
         txt.Free;
      end
   except
    on e:Exception do
    begin
       result := False;
       msgErro   := 'Não foi possivel carregar o arquivo '+arquivo+'. '+e.Message;
    end;
   end;
end;



function  _CarregaBeanAlteracao( Bean : TBeanContrato; TXT : TAlteracaoContrato_0000; var msgErro : string ) : boolean;
var
   fs  : TFormatSettings;
   info : string;
begin
   fs.DecimalSeparator := '.';
   fs.DateSeparator    := '/';
   fs.LongDateFormat   := 'dd/mm/yyyy';
   fs.LongTimeFormat   := 'hh:nn:ss';
   fs.ShortDateFormat  := 'd/m/y';
   fs.ShortTimeFormat  := 'h:n';
   try

      info :='load arquvo';


      with bean do
      begin
        try
           numeroContratoFrete := txt.NumeroContratoFrete;
           NumeroCIOT          := txt.CIOT;
           NumeroViagem        := txt.viagem;
           cnpj_filial         := txt.cnpjFilial;
           cnpj_matriz         := txt.cnpjMatriz;
           if cnpj_matriz = '' then
              cnpj_matriz         := txt.cnpjFilial;

           if txt.reg9999.Last <> nil then
           begin
              NumeroProtocoloProcessamento := TExtrato_9999( txt.reg9999.Actual).NumeroProtocoloProcessamento;
              DataProtocoloProcessamento := TExtrato_9999( txt.reg9999.Actual).DataHoraRetorno;
           end else
           begin
              NumeroProtocoloProcessamento := '';
              DataProtocoloProcessamento := 0;
           end;

        except
           raise;
        end;
      end;

      result := true;
   except
      on e:exception do
      begin
         result := False;
         msgErro := info+' '+e.message;
      end;
   end;

end;

function  CarregaBeanAlteracao( Bean : TBeanContrato; arquivo : string; var msgErro : string ) : boolean; overload;
var
  txt : TAlteracaoContrato_0000;
begin
   try
      txt := TAlteracaoContrato_0000.create;
      try
         if ExtractFileExt( arquivo ) = '.tx2' then
            result := txt.LoadFromTX2File( arquivo, msgErro )
         else
            result := txt.LoadFromFile( arquivo, msgErro );
         if Result then
            Result := _CarregaBeanAlteracao( Bean, txt, msgErro );
      finally
         txt.Free;
      end
   except
    on e:Exception do
    begin
       result := False;
       msgErro   := 'Não foi possivel carregar o arquivo '+arquivo+'. '+e.Message;
    end;
   end;
end;


function  CarregaBeanDoArquivo( Bean : TBeanContrato; arquivo : string; var msgErro : string ) : boolean;
begin
   if UpperCase(Copy(ExtractFileName(arquivo), 1, 4)) = 'ENV_' then
      result := CarregaBeanEnvio( Bean, arquivo, msgErro )
   else if UpperCase(Copy(ExtractFileName(arquivo), 1, 4)) = 'CAN_' then
      result := CarregaBeanCancelamento( Bean, arquivo, msgErro )
   else if UpperCase(Copy(ExtractFileName(arquivo), 1, 4)) = 'CON_' then
      result := CarregaBeanConsulta( Bean, arquivo, msgErro )
   else if UpperCase(Copy(ExtractFileName(arquivo), 1, 4)) = 'EXT_' then
      result := CarregaBeanExtrato( Bean, arquivo, msgErro )
   else if UpperCase(Copy(ExtractFileName(arquivo), 1, 4)) = 'PAG_' then
      result := CarregaBeanPagamento( Bean, arquivo, msgErro )
   else if UpperCase(Copy(ExtractFileName(arquivo), 1, 4)) = 'ALT_' then
      result := CarregaBeanAlteracao( Bean, arquivo, msgErro )
   else
      raise exception.create('arquivo não reconhecido!');
end;

function  CarregaBeanDoTX2( Bean : TBeanContrato; arquivo : TStringList; TipoArquivo : char; var msgErro : string ) : boolean;
begin
   if TipoArquivo='E' then
      Result := CarregaBeanEnvio( Bean, arquivo, msgErro)
   else
   if TipoArquivo='C' then
      Result := CarregaBeanCancelamento( Bean, arquivo, msgErro)
   else
   begin
       result := False;
       msgErro := 'Tipo inválido!';
   end;
end;

end.

