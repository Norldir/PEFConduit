unit uAdministradoraRodocredVersao001;

interface

uses uAdministradoraAbstract, T5XmlSerializa,
     urdc_TiposPadrao_v1_00,
     urdc_ManterViagem_v1_00;

type
   TAdministradoraRodocredVersao001 = class( TAdministradoraAbstract )
   private
      dadosAdministradoraRodocred    : variant;
      dadosConhecimentoTransporte    : variant;
      DadosRota                : variant;

      dadosContratado,
      dadosMotrista,
      dadosMotoristaContato,
      dadosCaminhao,
      dadosCarreta                  : Variant;

      rota         : integer;
      ParametrosSerializacao : rSerializacao;

      host : string;
      idCliente : integer;
      cliente : string;
      assinatura : string;
      versaoSevico : string;
      token : string;
      function AutenticarCliente: boolean;
      function getCodigoAdministradora : integer; override;
      function carregaDadosConhecimentoTransporte: boolean;
      function CarregaDadosCadastrais(Caminhao, proprietario,
      motorista: string; rota: integer): boolean;
    function IntegraDadosCadastroNacional(Caminhao, proprietario,
      motorista, cartao: string): boolean;
   private
      function carregaDadosAdministradoraRodocred : boolean;
   public
      function insereContratoFrete : boolean; override;
      function insereFavorecido : boolean; override;

      destructor Destroy; override;
      constructor Create;
   end;

implementation

uses SysUtils,
     uT5Funcoes, urdc_AutenticarCliente_v1_00,
  urdc_soap_v1_00, DateUtils, Variants, uIntegracaoContratoFrete_Ttransp,
  urdc_ManterMotorista_v1_00, urdc_ManterTransportador_v1_00,
  urdc_ManterVeiculo_v1_00;

{ TAdministradoraRodocredVersao001 }

function TAdministradoraRodocredVersao001.carregaDadosConhecimentoTransporte: boolean;
begin
   try
      dadosConhecimentoTransporte := uT5Funcoes.RetornaResultadoNomeado( uT5Funcoes.GetMasterConnection,
              'SELECT '+ #13#10 +
              '      EMPRESA.EMP_CNPJ '+ #13#10 +
              '    , EMPRESA.EST_UF AS EST_UF_FORO '+
              '    , EMPRESA.EMP_CIDADE AS CDD_NOME_FORO '+
              '    , FILIAL.FLL_CNPJ '+ #13#10 +
              '    , CONHECIMENTO.FLL_CODIGO '+ #13#10 +
              '    , CONHECIMENTO.CNH_SERIE '+ #13#10 +
              '    , CONHECIMENTO.CNH_CONHECIMENTO '+ #13#10 +
              '    , CONHECIMENTO.CNH_DATASAIDA '+ #13#10 +
              '    , CONHECIMENTO.CNH_QUANTIDADE '+ #13#10 +
              '    , CONHECIMENTO.CNH_VALORNOTAFISCAL '+ #13#10 +
              '    , CONHECIMENTO.CNH_DATASAIDA '+ #13#10 +
              '    , CONHECIMENTO.CNH_VALORADIANTAMENTO '#10+
              '    , CONHECIMENTO.CNH_VALORQUITACAO '+ #13#10 +
              '    , CONHECIMENTO.CNH_VALORTOTALFRETEMOTORISTA '+ #13#10 +
              '    , CONHECIMENTO.CNH_VALORTOTALCOBRANCA '+ #13#10 +
              '    , CONHECIMENTO.CNH_PESOSAIDA '+ #13#10 +
              '    , PRODUTO.PRD_DESCRICAO '+ #13#10 +
              '    , PRP_CNPJ_CPF '+ #13#10 +
              ' '+ #13#10 +
              '    , CASE WHEN LENGTH(PRP_CNPJ_CPF) = 14 THEN ''1'' '+ #13#10 +
              '           WHEN LENGTH(PRP_CNPJ_CPF) = 11 THEN ''2'' '+ #13#10 +
              '      END AS PRP_DOCUMENTOTIPO '+ #13#10 +
              '    , COALESCE(CONHECIMENTO.CNH_DATACHEGADA, CONHECIMENTO.CNH_DATASAIDA ) AS CNH_DATACHEGADA '+ #13#10 +
              '    , COALESCE( CONHECIMENTO.CNH_VALORINSS,      0 ) AS CNH_VALORINSS '+ #13#10 +
              '    , COALESCE( CONHECIMENTO.CNH_VALORSESTSENAT, 0 ) AS CNH_VALORSESTSENAT '+ #13#10 +
              '    , COALESCE( CONHECIMENTO.CNH_IMPOSTORENDA,   0 ) AS CNH_IMPOSTORENDA '+ #13#10 +
              '    , COALESCE( CLIENTEORIGEM.CLN_CNPJ_CPF,      '''' ) AS CLN_REMETENTE_CNPJ_CPF '+ #13#10 +
              '    , COALESCE( CLIENTEORIGEM.CLN_RAZAOSOCIAL,   '''' ) AS CLN_REMETENTE_RAZAOSOCIAL '+ #13#10 +
              '    , COALESCE( CLIENTEORIGEM.CLN_ENDERECO,      '''' ) AS CLN_REMETENTE_ENDERECO '+ #13#10 +
              '    , COALESCE( CLIENTEORIGEM.CLN_COMPLEMENTO,   '''' ) AS CLN_REMETENTE_COMPLEMENTO '+ #13#10 +
              '    , COALESCE( CLIENTEORIGEM.CLN_BAIRRO,        '''' ) AS CLN_REMETENTE_BAIRRO '+ #13#10 +
              '    , COALESCE( CLIENTEORIGEM.CLN_CEP,           '''' ) AS CLN_REMETENTE_CEP '+ #13#10 +
              '    , COALESCE( CLIENTEDESTINO.CLN_CNPJ_CPF,     '''' ) AS CLN_DESTINATARIO_CNPJ_CPF '+ #13#10 +
              '    , COALESCE( CLIENTEDESTINO.CLN_RAZAOSOCIAL,  '''' ) AS CLN_DESTINATARIO_RAZAOSOCIAL '+ #13#10 +
              '    , COALESCE( CLIENTEDESTINO.CLN_ENDERECO,     '''' ) AS CLN_DESTINATARIO_ENDERECO '+ #13#10 +
              '    , COALESCE( CLIENTEDESTINO.CLN_COMPLEMENTO,  '''' ) AS CLN_DESTINATARIO_COMPLEMENTO '+ #13#10 +
              '    , COALESCE( CLIENTEDESTINO.CLN_BAIRRO,       '''' ) AS CLN_DESTINATARIO_BAIRRO '+ #13#10 +
              '    , COALESCE( CLIENTEDESTINO.CLN_CEP,          '''' ) AS CLN_DESTINATARIO_CEP '+ #13#10 +
              '    , COALESCE( CIDADEORIGEM.CDD_NOME,           '''' ) AS CDD_ORIGEM_NOME '+ #13#10 +
              '    , COALESCE( CIDADEORIGEM.CDD_CODIGOIBGE,     '''' ) AS CDD_ORIGEM_IBGE '+ #13#10 +
              '    , COALESCE( CIDADEORIGEM.EST_UF,             '''' ) AS EST_ORIGEM_UF '+ #13#10 +
              '    , COALESCE( CIDADEDESTINO.CDD_NOME,          '''' ) AS CDD_DESTINO_NOME '+ #13#10 +
              '    , COALESCE( CIDADEDESTINO.CDD_CODIGOIBGE,    '''' ) AS CDD_DESTINO_IBGE '+ #13#10 +
              '    , COALESCE( CIDADEDESTINO.EST_UF,            '''' ) AS EST_DESTINO_UF '+ #13#10 +
              '    , COALESCE( CMH_PLACA,              '''' ) AS CMH_PLACA '+ #13#10 +
              ' '+ #13#10 +
              '    , COALESCE( CONHECIMENTOCONTRATOFRETECONTAFAVORECIDO.CCFCF_ID,            0    ) AS CCFCF_ID '+ #13#10 +
              '    , COALESCE( CONHECIMENTOCONTRATOFRETECONTAFAVORECIDO.CCFCF_BANCO,         0    ) AS CCFCF_BANCO '+ #13#10 +
              '    , COALESCE( CONHECIMENTOCONTRATOFRETECONTAFAVORECIDO.CCFCF_AGENCIA,       0    ) AS CCFCF_AGENCIA '+ #13#10 +
              '    , COALESCE( CONHECIMENTOCONTRATOFRETECONTAFAVORECIDO.CCFCF_AGENCIADIGITO, 0    ) AS CCFCF_AGENCIADIGITO '+ #13#10 +
              '    , COALESCE( CONHECIMENTOCONTRATOFRETECONTAFAVORECIDO.CCFCF_CONTA,         0    ) AS CCFCF_CONTA '+ #13#10 +
              '    , COALESCE( CONHECIMENTOCONTRATOFRETECONTAFAVORECIDO.CCFCF_CONTADIGITIO,  0    ) AS CCFCF_CONTADIGITIO '+ #13#10 +
              '    , COALESCE( CONHECIMENTOCONTRATOFRETECONTAFAVORECIDO.CCFCF_NUMEROCARTAO,  '''' ) AS CCFCF_NUMEROCARTAO '+ #13#10 +
              '    , CC_TIPOPAGAMENTOCONTRATOFRETE.CCTPC_CODIGO '+ #13#10 +
              '    , CONHECIMENTOCONTRATOFRETE.CNHCF_ID '+ #13#10 +
              '    , RTA_CODIGO '#10+
              '    , MTR_CPF '#10+
              '    , CNH_VALORPEDAGIO '#10+
              '    , CNH_FORMAPAGAMENTO '#10+
              '    , CNH_OBSERVACAOCARTAFRETE '#10+
              '    , CNHCF_FORMAPAGAMENTOPEDAGIO '#10+
              'FROM CONHECIMENTO INNER JOIN '+ #13#10 +
              '     FILIAL                 ON FILIAL.FLL_CODIGO         = CONHECIMENTO.FLL_CODIGO         INNER JOIN '+ #13#10 +
              '     CLIENTE CLIENTEORIGEM  ON CLIENTEORIGEM.CLN_CODIGO  = CONHECIMENTO.CLN_CLIENTEORIGEM  INNER JOIN '+ #13#10 +
              '     CLIENTE CLIENTEDESTINO ON CLIENTEDESTINO.CLN_CODIGO = CONHECIMENTO.CLN_CLIENTEDESTINO INNER JOIN '+ #13#10 +
              '     CIDADE CIDADEORIGEM    ON CIDADEORIGEM.CDD_CODIGO   = CLIENTEORIGEM.CDD_CODIGO        INNER JOIN '+ #13#10 +
              '     CIDADE CIDADEDESTINO   ON CIDADEDESTINO.CDD_CODIGO  = CLIENTEDESTINO.CDD_CODIGO       INNER JOIN '+ #13#10 +
              '     PRODUTO                ON PRODUTO.PRD_CODIGO        = CONHECIMENTO.PRD_CODIGO         INNER JOIN '+ #13#10 +
              ' '+ #13#10 +
              '     CONHECIMENTOCONTRATOFRETE ON CONHECIMENTOCONTRATOFRETE.FLL_CODIGO       = CONHECIMENTO.FLL_CODIGO '+ #13#10 +
              '                              AND CONHECIMENTOCONTRATOFRETE.CNH_SERIE        = CONHECIMENTO.CNH_SERIE '+ #13#10 +
              '                              AND CONHECIMENTOCONTRATOFRETE.CNH_CONHECIMENTO = CONHECIMENTO.CNH_CONHECIMENTO LEFT JOIN '+ #13#10 +
              ' '+ #13#10 +
              '     conhecimentorota       ON conhecimentorota.FLL_CODIGO = CONHECIMENTO.FLL_CODIGO '+
              '                           AND conhecimentorota.CNH_SERIE = CONHECIMENTO.CNH_SERIE '+
              '                           AND conhecimentorota.CNH_CONHECIMENTO = CONHECIMENTO.CNH_CONHECIMENTO LEFT OUTER JOIN '+
              '     CONHECIMENTOCONTRATOFRETECONTAFAVORECIDO ON CONHECIMENTOCONTRATOFRETECONTAFAVORECIDO.CNHCF_ID = CONHECIMENTOCONTRATOFRETE.CNHCF_ID      LEFT JOIN '+ #13#10 +
              '     CC_ADMINISTRADORAPAGAMENTOFRETE          ON CC_ADMINISTRADORAPAGAMENTOFRETE.CAPF_ID           = CONHECIMENTOCONTRATOFRETE.CAPF_ID       LEFT JOIN '+ #13#10 +
              '     CC_ADMINISTRADORARODOCRED                ON CC_ADMINISTRADORARODOCRED.CAPF_ID                 = CC_ADMINISTRADORAPAGAMENTOFRETE.CAPF_ID LEFT JOIN '+ #13#10 +
              '     CC_TIPOPAGAMENTOCONTRATOFRETE            ON CC_TIPOPAGAMENTOCONTRATOFRETE.CCTPC_ID            = CONHECIMENTOCONTRATOFRETE.CCTPC_ID, '+
              '     EMPRESA   '+ #13#10 +
              'WHERE CONHECIMENTO.FLL_CODIGO = '+ IntToStr( self.Filial ) + #13#10 +
              '  AND CONHECIMENTO.CNH_SERIE  = '+ QuotedStr( self.Serie ) + #13#10 +
              '  AND CONHECIMENTO.CNH_CONHECIMENTO = '+ IntToStr( self.Conhecimento ) );
      if ResultadoNomeadoLinhas( dadosConhecimentoTransporte ) = 0 then raise exception.create('Não foi possivel localizar o CTRC '+intToStr( filial ) + '-'+serie+'-'+intToStr(conhecimento));

      rota         := ifnull(ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'RTA_CODIGO'),0);

      result := CarregaDadosCadastrais( ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CMH_PLACA'),
                                        ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'PRP_CNPJ_CPF'),
                                        ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'MTR_CPF'),
                                        ROTA
                                       );
   except
      on e : exception do begin
         Result := False;
         MsgError := ( 'TAdministradoraPamcardVersao001.carregaDadosConhecimentoTransporte' + e.message );
      end;
   end;
end;

function TAdministradoraRodocredVersao001.CarregaDadosCadastrais(Caminhao,
  proprietario, motorista: string; rota : integer): boolean;
var
  mensagem : string;
begin
   result := uIntegracaoContratoFrete_Ttransp.CarregaDadosCadastrais(Caminhao, proprietario, motorista, rota,
                                DadosCaminhao, dadosCarreta, DadosMotrista, DadosContratado, DadosRota, dadosMotoristaContato,
                                mensagem);
   if not result then msgError := mensagem;
end;

constructor TAdministradoraRodocredVersao001.Create;
begin
  inherited Create( nil );

  ParametrosSerializacao.CriaTagParaArray := false;

  if not carregaDadosAdministradoraRodocred then
     raise exception.create('Não foi possivel carregar os dados da administradora rodocred.'#10+msgError);

  host := ResultadoNomeadoValor( dadosAdministradoraRodocred, 0,  'CARDC_WEBSERVER' );
  idCliente := ResultadoNomeadoValor( dadosAdministradoraRodocred, 0,  'CARDC_CLIENTE' );
  cliente := ResultadoNomeadoValor( dadosAdministradoraRodocred, 0,  'CARDC_USUARIO' );
  assinatura := ResultadoNomeadoValor( dadosAdministradoraRodocred, 0,  'CARDC_SENHA' );
  token := '';
  versaoSevico := '1.00';
  if not self.AutenticarCliente then
    raise exception.create( 'Não foi possivel autenticar o cliente na rodocred '#10+msgError );


end;

function TAdministradoraRodocredVersao001.carregaDadosAdministradoraRodocred: boolean;
begin
   try
      dadosAdministradoraRodocred := uT5Funcoes.RetornaResultadoNomeado( uT5Funcoes.GetMasterConnection,
                                             'SELECT                                                            '+ #13#10 +
                                             '  CARDC_WEBSERVER, '+
                                             '  CARDC_USUARIO, '+
                                             '  CARDC_SENHA, '+
                                             '  CARDC_CLIENTE  '+
                                             'FROM CC_ADMINISTRADORARODOCRED                                    '+ #13#10 +
                                             'WHERE CC_ADMINISTRADORARODOCRED.CAPF_ID = '+ IntToStr( Self.getCodigoAdministradora ) );
      result := true;
   except
      on e : exception do begin
         Result := False;
         msgError := e.Message;
      end;
   end;
end;

destructor TAdministradoraRodocredVersao001.Destroy;
begin
   inherited Destroy;
end;

function TAdministradoraRodocredVersao001.AutenticarCliente: boolean;
var
  AutenticarCliente : tAutenticarClienteRequest;
  mensagem : string;
  xmlfinal, retorno : string;
  AutenticarClienteResponse : tAutenticarClienteResponse;

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

      retorno :=  urdc_soap_v1_00.SOAPGet( Self.host, 'AutenticarCliente', xmlfinal );
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

          end
          else
          begin
             msgError := mensagem + #10+ retorno;
             result := false;
          end
      finally
         AutenticarClienteResponse.free;
      end;
  except
     on e:Exception do
     begin
         msgError := e.Message;
         result := false;
     end;
  end;
end;


function TAdministradoraRodocredVersao001.IntegraDadosCadastroNacional(
  Caminhao,  proprietario, motorista, cartao : string): boolean;

  function GeraXMLContratado( var xml : string; OPERACAO : STRING  ) : boolean;
  var
     contratado : tManterTransportadorRequest;
     mensagem : string;
     vii : integer;
  begin
     try
        contratado := tManterTransportadorRequest.Create;
        try
           with contratado.IdentificacaoIntegracao do
           begin
              IdClienteRodocred := self.idCliente;
              TokenAutenticacao := self.token;
              NumeroTransacao   := uT5Funcoes.ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNHCF_ID' );
              VersaoServico     := self.versaoSevico;
           end;
           contratado.Operacao := operacao;
           contratado.IdClienteResponsavel := '';
           with contratado.ListaTransportador do
           begin
              with addDadosTransportador do
              begin
                 Transportador.CNPJCPFTransportador := uT5Funcoes.ResultadoNomeadoValor( dadosContratado, 0, 'contratado_cnpj_cpf' );
                 Transportador.RNTRC                := uT5Funcoes.ResultadoNomeadoValor( dadosContratado, 0, 'rntrc_codigo' );
                 Transportador.NomeTransportador    := uT5Funcoes.ResultadoNomeadoValor( dadosContratado, 0, 'nome_contratado' );

                 with Contato do
                 begin
                    TipoContato := 'R';
                    Nome        := ResultadoNomeadoValor( dadosContratado, 0, 'contato');
                    Telefone    := ResultadoNomeadoValor( dadosContratado, 0, 'telefone1');
                    Celular     := '';
                    Email       := '';
                    MeioComunicacaoPreferido := 'Telefone';
                 end;

                 with endereco do
                 begin
                    TipoEndereco   := 'R';
                    CEP            := ResultadoNomeadoValor( dadosContratado, 0, 'cep');
                    TipoLogradouro := '';
                    Logradouro     := ResultadoNomeadoValor( dadosContratado, 0, 'endereco');
                    Numero         := ResultadoNomeadoValor( dadosContratado, 0, 'numero');
                    Complemento    := ResultadoNomeadoValor( dadosContratado, 0, 'endereco_complemento');
                    Bairro         := ResultadoNomeadoValor( dadosContratado, 0, 'bairro');
                    Cidade         := ResultadoNomeadoValor( dadosContratado, 0, 'cidade');
                    Estado         := ResultadoNomeadoValor( dadosContratado, 0, 'uf');
                 end;

                 with addVeiculo do
                 begin
                    TipoTransporteVeiculo := 'T';
                    RNTRC                 := ifnull( ResultadoNomeadoValor( dadosCaminhao, 0, 'rntrc_codigo'), '');
                    CNPJCPF               := ResultadoNomeadoValor( dadosContratado, 0, 'contratado_cnpj_cpf');
                    QtdeEixos             := ifnull( ResultadoNomeadoValor( dadosCaminhao, 0, 'numero_eixos'), '');
                    TipoVeiculo           := ifnull( ResultadoNomeadoValor( dadosCaminhao, 0, 'TipoVeiculoRodocred'), '');
                    ModeloVeiculo         := ifnull( ResultadoNomeadoValor( dadosCaminhao, 0, 'ModeloVeiculoRodocred'), '');
                    PlacaVeiculo          := ResultadoNomeadoValor( dadosCaminhao, 0, 'placa');
                    UfPlacaVeiculo        := ResultadoNomeadoValor( dadosCaminhao, 0, 'placa_uf');
                    NumeroFrotaVeiculo    := 0;
                    TipoCombustivelVeiculo:= ifnull( ResultadoNomeadoValor( dadosCaminhao, 0, 'TipoCombustivelRodocred'), '');
                    CapacidadeTanqueVeiculo:=0;
                    MediaConsumoVeiculo   := 0;
                 end;

                 for vii := 0 to ResultadoNomeadoLinhas( dadosCarreta )-1 do
                 begin
                     with addVeiculo do
                     begin
                        TipoTransporteVeiculo := 'T';
                        RNTRC                 := ifnull( ResultadoNomeadoValor( dadosCarreta, vii, 'rntrc_codigo'), '');
                        CNPJCPF               := ResultadoNomeadoValor( dadosCarreta, vii, 'contratado_cnpj_cpf');
                        QtdeEixos             := ifnull( ResultadoNomeadoValor( dadosCarreta, vii, 'numero_eixos'), '');
                        TipoVeiculo           := ifnull( ResultadoNomeadoValor( dadosCaminhao, 0, 'TipoVeiculoRodocred'), '');
                        ModeloVeiculo         := ifnull( ResultadoNomeadoValor( dadosCarreta, vii, 'ModeloVeiculoRodocred'), '');
                        PlacaVeiculo          := ResultadoNomeadoValor( dadosCarreta, vii, 'placa');
                        UfPlacaVeiculo        := ResultadoNomeadoValor( dadosCarreta, vii, 'placa_uf');
                        NumeroFrotaVeiculo    := 0;
                        TipoCombustivelVeiculo:= 0;
                        CapacidadeTanqueVeiculo:=0;
                        MediaConsumoVeiculo   := 0;
                     end;
                 end;

                 with addmotorista do
                 begin
                    NomeMotorista := ResultadoNomeadoValor( dadosMotrista, 0, 'nome');
                    Relacao       := '';
                    CPFMotorista  := ResultadoNomeadoValor( dadosMotrista, 0, 'cpf');
                    CNHMotorista.NumeroCNH  := ResultadoNomeadoValor( dadosMotrista, 0, 'carteira_habilitacao');
                    CNHMotorista.CNHCategoria:=ResultadoNomeadoValor( dadosMotrista, 0, 'carteira_habilitacao_categoria');
                    if ResultadoNomeadoLinhas( dadosMotoristaContato )>0 then
                      with Contato do
                      begin
                        TipoContato := 'R';
                        Nome        := ResultadoNomeadoValor( dadosMotrista, 0, 'motorista_contato_nome');
                        Telefone    := ResultadoNomeadoValor( dadosMotrista, 0, 'motorista_contato_telefone');
                        Celular     := '';
                        Email       := '';
                        MeioComunicacaoPreferido := 'Telefone';
                      end
                    else
                    begin
                      with Contato do
                      begin
                        TipoContato := 'R';
                        Nome        := ResultadoNomeadoValor( dadosMotrista, 0, 'nome');
                        Telefone    := ResultadoNomeadoValor( dadosMotrista, 0, 'telefone');
                        Celular     := '';
                        Email       := '';
                        MeioComunicacaoPreferido := 'Telefone';
                      end
                    end;

                    with Endereco do
                    begin
                       TipoEndereco   := 'R';
                       CEP            := ResultadoNomeadoValor( dadosMotrista, 0, 'cep');
                       TipoLogradouro := '';
                       Logradouro     := ResultadoNomeadoValor( dadosMotrista, 0, 'endereco');
                       Numero         := '0';
                       Complemento    := ResultadoNomeadoValor( dadosMotrista, 0, 'endereco_complemento');
                       Bairro         := ResultadoNomeadoValor( dadosMotrista, 0, 'bairro');
                       Cidade         := ResultadoNomeadoValor( dadosMotrista, 0, 'cidade');
                       Estado         := ResultadoNomeadoValor( dadosMotrista, 0, 'uf');
                    end;
                    NumeroCartao      := cartao;
                    ValidaTransportadorANTT := false;
                    ValidaFrotaANTT         := false;
                 end;
                 NumeroCartao         := cartao;
              end;
           end;

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
           MsgError := 'Não foi possivel gerar o arquivo de veiculo.'+e.Message;
           result := false;
        end;
     end;
  end;

var
   xmlcontratado: String;

   xmlfinal : string;

   retorno : wideString;
   DadosRetorno : string;
   ResultadoRetorno : boolean;

   mensagem : string;
   vii : integer;

   contratadoResponse : tManterTransportadorResponse;
   operacao : string;
   operacaomotorista : string;
begin
  try
      operacao := 'INC';
      repeat
         result :=  GeraXMLContratado(xmlContratado, operacao);
         if not result then break;

         xmlfinal := xmlcontratado;

         retorno :=  urdc_soap_v1_00.SOAPGet( Self.host, 'ManterTransportador', xmlfinal );
         retorno :=  urdc_soap_v1_00.SOAPResponse( retorno );

         contratadoResponse := tManterTransportadorResponse.Create;
         try
             if T5XmlSerializa._DeSerializa( contratadoResponse, retorno, mensagem, ParametrosSerializacao ) then
             begin
                result :=     (contratadoResponse.RetornoMensagem.StatusRetorno = 'SUCESSO')
                          and (contratadoResponse.TranportadorRetorno[0].StatusRetorno = 'SUCESSO')
                          AND (    (contratadoResponse.TranportadorRetorno[0].Veiculos[0].StatusRetorno = 'SUCESSO')
                                or (contratadoResponse.TranportadorRetorno[0].Veiculos[0].Excecao.CodigoExcecao='VEIEX004') )
                          AND (    (contratadoResponse.TranportadorRetorno[0].Motoristas[0].StatusRetorno = 'SUCESSO')
                                or (contratadoResponse.TranportadorRetorno[0].Motoristas[0].Excecao.CodigoExcecao='MOTEXC009'));

                if not result then
                begin
                   if (contratadoResponse.TranportadorRetorno[0].StatusRetorno <> 'SUCESSO') then
                   begin
                      if     (contratadoResponse.TranportadorRetorno[0].Excecao.TipoExcecao = 'NEGOCIO')
                         and (contratadoResponse.TranportadorRetorno[0].Excecao.CodigoExcecao = 'TRAEXC002') then
                      begin
                         operacao := 'ALT';
                         continue;
                      end;
                   end;

                   if contratadoResponse.RetornoMensagem.StatusRetorno <> 'SUCESSO' then
                      msgError := 'Chamada do webserver não foi executada com sucesso ';

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
                end
                else
                   self.token := contratadoResponse.RetornoMensagem.IdentificacaoIntegracao.TokenAutenticacao;

             end
             else
             begin
                msgError := mensagem + #10+ retorno;
                result := false;
             end
         finally
            contratadoResponse.free;
         end;
         break; // sem comentarios
      until result;
  except
    on e:exception do
    begin
       msgError := e.Message;
       result := false;
    end
  end;
end;

function TAdministradoraRodocredVersao001.insereFavorecido: boolean;
begin
   result := false;
end;

function TAdministradoraRodocredVersao001.insereContratoFrete: boolean;
    {-----------------------------------------------------------------------------
      Procedure: insereContratoFrete_Integracao
      Autor:     Callian
      Data:      19-out-2011
    -----------------------------------------------------------------------------}
    function insereContratoFrete_Integracao( objectRequest : tManterViagemRequest ): boolean;
    begin
       try
          with ( objectRequest ) do begin
             with ( GetIdentificacaoIntegracao ) do begin
                IdClienteRodocred := self.idCliente;
                TokenAutenticacao := self.token;
                NumeroTransacao   := uT5Funcoes.ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNHCF_ID' );
                VersaoServico     := self.versaoSevico;
             end;
          end;
          Result := True;
       except
          on e : exception do begin
             Result := False;
             msgError := 'insereContratoFrete_Integracao '+e.Message;
          end;
       end;
    end;

    {-----------------------------------------------------------------------------
      Procedure: insereContratoFrete_Request
      Autor:     Callian
      Data:      19-out-2011
    -----------------------------------------------------------------------------}
    function insereContratoFrete_Request( objectRequest : tManterViagemRequest  ): boolean;
    begin
       try
          with ( objectRequest ) do begin
             IdClienteResponsavel    := '';
             Operacao                := 'INC';
             TipoViagem              := 'FRE';
             if uT5Funcoes.ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CCTPC_CODIGO' ) = 1 then
                MeioPagamentoTransporte := 'TRF'
             else
                MeioPagamentoTransporte := 'DEP';
          end;
          result := true;
       except
          on e : exception do begin
             Result := False;
             msgError := 'insereContratoFrete_Request '+e.Message;
          end;
       end;
    end;

    {-----------------------------------------------------------------------------
      Procedure: insereContratoFrete_DadosViagem
      Autor:     Callian
      Data:      19-out-2011
    -----------------------------------------------------------------------------}
    function insereContratoFrete_DadosViagem(objectRequest: tManterViagemRequest): boolean;
    begin
       try
          with ( objectRequest ) do begin
             with GetDadosViagem do begin
                NumeroViagem    := uT5Funcoes.ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_CONHECIMENTO' );
                Embarque        := uT5Funcoes.ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_DATASAIDA'           );
                PrevisaoEntrega := uT5Funcoes.ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_DATACHEGADA'         );

                with GetForo do begin
                   Estado := uT5Funcoes.ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'EST_UF_FORO'   );
                   Cidade := uT5Funcoes.ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CDD_NOME_FORO' );
                end;
                GerarCIOT := true;
             end;
          end;
          result := true;
       except
          on e : exception do begin
             Result := False;
             msgError := 'insereContratoFrete_DadosViagem '+e.Message;
          end;
       end;
    end;

    {-----------------------------------------------------------------------------
      Procedure: insereContratoFrete_DadosTransportador
      Autor:     Callian
      Data:      19-out-2011
    -----------------------------------------------------------------------------}
    function insereContratoFrete_DadosTransportador(
      objectRequest: tManterViagemRequest): boolean;
    begin
       try
          with ( objectRequest ) do begin
             with ( GetTransportador ) do begin
                CNPJCPFTransportador := uT5Funcoes.ResultadoNomeadoValor( dadosContratado, 0, 'contratado_cnpj_cpf' );
                RNTRC                := uT5Funcoes.ResultadoNomeadoValor( dadosContratado, 0, 'rntrc_codigo'    );
                NomeTransportador    := uT5Funcoes.ResultadoNomeadoValor( dadosContratado, 0, 'nome_contratado'     );
             end;
          end;
          result := true;
       except
          on e : exception do begin
             Result := False;
             msgError := 'insereContratoFrete_DadosTransportador '+e.Message;
          end;
       end;
    end;

    {-----------------------------------------------------------------------------
      Procedure: insereContratoFrete_RotaViagem
      Autor:     Callian
      Data:      19-out-2011
    -----------------------------------------------------------------------------}
    function insereContratoFrete_RotaViagem(
      objectRequest: tManterViagemRequest): boolean;
    var vii : integer;
    begin
       try
          with ( objectRequest ) do begin
             with GetRotaViagem do begin
                addCodigoRota( rota  );
                for vii := 0 to ( ResultadoNomeadoLinhas( DadosRota ) - 1 ) do begin
                   with addOrigemDestinoRota do begin
                      CodigoIBGEOrigem  := ResultadoNomeadoValor( DadosRota, vii, 'cidade_origem_ibge'  );
                      CodigoIBGEDestino := ResultadoNomeadoValor( DadosRota, vii, 'cidade_destino_ibge' );
                   end;
                end;
             end;
          end;
          result := true;
       except
          on e : exception do begin
             Result := False;
             msgError := 'insereContratoFrete_RotaViagem '+e.Message;
          end;
       end;
    end;

    function insereContratoFrete_Veiculo(
      objectRequest: tManterViagemRequest): boolean;
    begin
       try
          with ( objectRequest ) do begin
             with AddVeiculosViagem do begin
                 PlacaVeiculo := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CMH_PLACA' );
                 TipoVeiculo  := '8';
                 QtdeEixos    := ResultadoNomeadoValor( dadosCaminhao, 0, 'numero_eixos' );
                 TipoRodagem  := 'S'; //ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'RDCVTR_CODIGO' );
                 RNTRC        := ResultadoNomeadoValor( dadosCaminhao, 0, 'rntrc_codigo' );
                 CNPJCPF      := ResultadoNomeadoValor( dadosCaminhao, 0, 'contratado_cnpj_cpf' );
             end;

          end;
          result := true;
       except
          on e : exception do begin
             Result := False;
             msgError := 'insereContratoFrete_Veiculo '+e.Message;
          end;
       end;
    end;

    function insereContratoFrete_ValePedagioViagem(
      objectRequest: tManterViagemRequest): boolean;
    begin
       try
          with ( objectRequest ) do begin
             with ( GetValePedagioViagem ) do begin
                if ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNHCF_FORMAPAGAMENTOPEDAGIO' ) = 1 then
                begin
                    OperadoraFinanceiraVP    := 'DBT';
                    MeioPagamentoValePedagio := 03; {-- 1-Cupom; 3-Cartão; --}
                    ModalidadeLocalImpressao := 'LOC';
                    IDLocalImpressao         := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'FLL_CODIGO' );
                end
                else
                begin
                    OperadoraFinanceiraVP    := 'OUT';
                end;
                ValorPedagio             := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_VALORPEDAGIO' );
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
          end;
       end;
    end;

    function insereContratoFrete_MotoristaViagem(
      objectRequest: tManterViagemRequest): boolean;
    begin
       try
          with ( objectRequest ) do begin
             with AddMotoristaViagem do begin
                CPFMotorista  := ResultadoNomeadoValor( dadosMotrista, 0, 'cpf' );
                NomeMotorista := ResultadoNomeadoValor( dadosMotrista, 0, 'nome' );
             end;
          end;
          result := true;
       except
          on e : exception do begin
             Result := False;
             msgError := 'insereContratoFrete_MotoristaViagem '+e.Message;
          end;
       end;
    end;

    function insereContratoFrete_EnvolvidoFrete(
      objectRequest: tManterViagemRequest): boolean;
    begin
       try
          with ( objectRequest ) do begin
             with ( GetEnvolvidosTransporteViagem ) do begin
                IF ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_FORMAPAGAMENTO' ) = 'P' then
                  TipoFrete := 'F'
                else
                  TipoFrete := 'C';
                with ( addEnvolvidosTransporte ) do begin
                   TipoEnvolvido :='REM';
                   CNPJCPF       := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CLN_REMETENTE_CNPJ_CPF' );
                   NomeEnvolvido := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CLN_REMETENTE_RAZAOSOCIAL' );
                   with GetEndereco do begin
                      TipoEndereco   := '';//ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, '' );
                      CEP            := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CLN_REMETENTE_CEP' );
                      TipoLogradouro := 'Rua';
                      Logradouro     := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CLN_REMETENTE_ENDERECO' );
                      Numero         := '';
                      Complemento    := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CLN_REMETENTE_COMPLEMENTO' );
                      Bairro         := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CLN_REMETENTE_BAIRRO' );
                      Cidade         := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CDD_ORIGEM_NOME' );
                      Estado         := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'EST_ORIGEM_UF' );
                   end;
                end;

                with ( addEnvolvidosTransporte ) do begin
                   TipoEnvolvido :='DES';
                   CNPJCPF       := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CLN_DESTINATARIO_CNPJ_CPF' );
                   NomeEnvolvido := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CLN_DESTINATARIO_RAZAOSOCIAL' );
                   with GetEndereco do begin
                      TipoEndereco   := '';//ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, '' );
                      CEP            := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CLN_DESTINATARIO_CEP' );
                      TipoLogradouro := '';
                      Logradouro     := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CLN_DESTINATARIO_ENDERECO' );
                      Numero         := '';
                      Complemento    := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CLN_REMETENTE_COMPLEMENTO' );
                      Bairro         := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CLN_REMETENTE_BAIRRO' );
                      Cidade         := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CDD_ORIGEM_NOME' );
                      Estado         := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'EST_ORIGEM_UF' );
                   end;
                end;

             end;

          end;
          result := true;
       except
          on e : exception do begin
             Result := False;
             msgError := 'insereContratoFrete_EnvolvidoFrete '+e.Message;
          end;
       end;
    end;

    function insereContratoFrete_ValoresViagem(
      objectRequest: tManterViagemRequest): boolean;
    begin
       try
          with ( objectRequest ) do begin
             with ( GetValoresViagem ) do begin
                ValorDespesas     := 0;
                ValorFrete        := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_VALORTOTALFRETEMOTORISTA' );
                ValorCombustivel  := 0;
                PesoCarga         := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_PESOSAIDA' );
                UnidadeMedidaPeso := 'Kg';
             end;
          end;
          result := true;
       except
          on e : exception do begin
             Result := False;
             msgError := 'insereContratoFrete_ValoresViagem '+e.Message;
          end;
       end;
    end;

    function insereContratoFrete_ImpostoViagem( objectRequest: tManterViagemRequest): boolean;
    begin
       try
          with ( objectRequest ) do begin
             with ( GetImpostosViagem ) do begin
                ValorTotalImpostos := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_VALORINSS')+
                                      ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_VALORSESTSENAT')+
                                      ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_IMPOSTORENDA');
                with ( addImpostos ) do begin
                   CodigoImposto      := '1';
                   BaseCalculoImposto := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_VALORTOTALFRETEMOTORISTA');
                   PercentualImposto  := 0;
                   ValorImposto       := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_VALORINSS');
                   RetencaoImposto    := true;
                end;
                with ( addImpostos ) do begin
                   CodigoImposto      := '2';
                   BaseCalculoImposto := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_VALORTOTALFRETEMOTORISTA');
                   PercentualImposto  := 0;
                   ValorImposto       := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_VALORSESTSENAT');
                   RetencaoImposto    := true;
                end;
                with ( addImpostos ) do begin
                   CodigoImposto      := '3';
                   BaseCalculoImposto := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_VALORTOTALFRETEMOTORISTA');
                   PercentualImposto  := 0;
                   ValorImposto       := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_IMPOSTORENDA');
                   RetencaoImposto    := true;
                end;
             end;
          end;
          result := true;
       except
          on e : exception do begin
             Result := False;
             msgError := 'insereContratoFrete_ImpostoViagem '+e.Message;
          end;
       end;
    end;

    function insereContratoFrete_DadosBancarios(
      objectRequest: tManterViagemRequest): boolean;
    begin
       try
          with ( objectRequest ) do begin
             with ( GetDadosBancarios ) do begin
                CodigoBanco    := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CCFCF_BANCO');
                NumeroAgencia  := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CCFCF_AGENCIA');
                DvAgencia      := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CCFCF_AGENCIADIGITO');
                NumeroConta    := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CCFCF_CONTA');
                DVConta        := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CCFCF_CONTADIGITIO');
                IndicadorParcelaUnica := true;
                InformacoesPagamento  := '';
             end;
          end;
          result := true;
       except
          on e : exception do begin
             Result := False;
             msgError := 'insereContratoFrete_DadosBancarios '+e.Message;
          end;
       end;
    end;

    function insereContratoFrete_DocumentoViagem(
      objectRequest: tManterViagemRequest): boolean;
    begin
       try
          with ( objectRequest ) do begin
             with GetDocumentosViagem do begin
                with AddDocumento do begin
                   CodigoDocumento    := 'CTE';
                   NumeroDocumento    := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_CONHECIMENTO');
                   CodigoAuxiliar     := '';
                   DocumentoRequerido :='S';
                   NaturezaCarga      := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'PRD_DESCRICAO');
                   ObservacaoDocumento:= ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_OBSERVACAOCARTAFRETE');
                end;
             end;
          end;
          result := true;
       except
          on e : exception do begin
             Result := False;
             msgError := 'insereContratoFrete_DocumentoViagem '+e.Message;
          end;
       end;
    end;

    function insereContratoFrete_ProgramacaoViagem( objectRequest: tManterViagemRequest): boolean;
    begin
       try
          with ( objectRequest ) do begin
             with ( GetProgramacaoViagem ) do begin

                if uT5Funcoes.ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CCTPC_CODIGO' ) <> 1 then  // DEP
                begin
                    MeioPagamentoTransporte := 'DEP';
                    with ( addOperacaoViagem ) do begin
                       CodigoOperacao            := 'DEP';
                       CondicaoLiberacaoOperacao := 'LIB';
                       DataOperacao              := now;
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
                           ValorEvento          := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_VALORADIANTAMENTO')+ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_VALORQUITACAO');
                           QuantidadeLitros     := 0;
                           Combustivel          := '';
                       end;
                    end;
                end
                else //TRF
                begin
                    MeioPagamentoTransporte := 'TRF';
                    if ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_VALORADIANTAMENTO') > 0 then
                    with ( addOperacaoViagem ) do begin
                       CodigoOperacao := 'ADF';
                       CondicaoLiberacaoOperacao := 'EST';
                       DataOperacao := now;
                       LocalRealizacao := 'QER';
                       with addEventoOperacao do begin
                           CodigoEventoOperacao := 'TRF';
                           ValorEvento := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_VALORADIANTAMENTO');
                           QuantidadeLitros := 0;
                           Combustivel := '';
                       end;
                    end;
                    if ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_VALORQUITACAO') > 0 then
                    with ( addOperacaoViagem ) do begin
                       CodigoOperacao := 'EDS';
                       CondicaoLiberacaoOperacao := 'EST';
                       DataOperacao := now;
                       LocalRealizacao := 'QER';
                       with addEventoOperacao do begin
                           CodigoEventoOperacao := 'TRF';
                           ValorEvento := ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_VALORQUITACAO');
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
          end;
       end;
    end;

    function insereContratoFrete_Clausulas( objectRequest: tManterViagemRequest): boolean;
    begin
       try
          with ( objectRequest ) do begin

          end;
          result := true;
       except
          on e : exception do begin
             Result := False;
             msgError := 'insereContratoFrete_Clausulas '+e.Message;
          end;
       end;
    end;
var
  ManterViagemRequest : TManterViagemRequest;
  mensagem : string;
  retorno : string;
begin
  result := carregaDadosConhecimentoTransporte;
  if not result then exit;

  result := IntegraDadosCadastroNacional( ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CMH_PLACA'),
                                          ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'PRP_CNPJ_CPF'),
                                          ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'MTR_CPF'),
                                          ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CCFCF_NUMEROCARTAO')
                                        );

  if result then
  try
      ManterViagemRequest := TManterViagemRequest.Create;
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
         if not insereContratoFrete_ProgramacaoViagem( ManterViagemRequest ) then abort;
         if not insereContratoFrete_Clausulas( ManterViagemRequest ) then abort;

         if not T5XmlSerializa._Serializa( ManterViagemRequest, mensagem, ParametrosSerializacao ) then
            raise exception.create( mensagem );

         retorno :=  urdc_soap_v1_00.SOAPGet( Self.host, 'ManterViagem', retorno );
         retorno :=  urdc_soap_v1_00.SOAPResponse( retorno );

         msgError := retorno;

         result := false;

      finally
         if assigned( ManterViagemRequest ) then begin
            ManterViagemRequest.Free;
         end;
      end;
  except
     on e:exception do
     begin
        msgError := e.Message;
        result := false;
     end;
  end;
end;

function TAdministradoraRodocredVersao001.getCodigoAdministradora: integer;
begin
   result := 5;
end;


end.
