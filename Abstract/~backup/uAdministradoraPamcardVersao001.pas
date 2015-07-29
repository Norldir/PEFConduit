unit uAdministradoraPamcardVersao001;

interface

uses Variants, Forms, Classes, uAdministradoraAbstract;

type
   TAdministradoraPamcardVersao001 = class( TAdministradoraAbstract )
   private
      dadosConhecimentoTransporte : variant;
      dadosParcela                : variant;
      dadosAdministradora         : variant;
      dadosCancelamento           : variant;


      diretorioArquivo : String;
      {-- Configurações do arquivo --}
      DiretorioSaida       : String;
      ArquivoPamcard       : TextFile;
      CodigoAdministradora : integer;
   private
      function insereContratoFrete_cabeca     : boolean;
      function insereContratoFrete_veiculo    : boolean;
      function insereContratoFrete_favorecido : boolean;
      function insereContratoFrete_rota       : boolean;
      function insereContratoFrete_data       : boolean;
      function insereContratoFrete_pedagio    : boolean;
      function insereContratoFrete_carga      : boolean;
      function insereContratoFrete_documento  : boolean;
      function insereContratoFrete_parcela    : boolean;
      function insereContratoFrete_quitacao   : boolean;
      function insereContratoFrete_itemFrete  : boolean;

      function carregaDadosConhecimentoTransporte : boolean;
      function carregaDadosParcela                : boolean;
      function carregaDadosAdministradora         : boolean;
      function carregaDadosCancelamento           : boolean;
      function getCodigoAdministradora   : integer; override;
   public

      function insereContratoFrete       : boolean; override;
      function insereFavorecido          : boolean; override;
      function insereContaFavorecido     : boolean; override;
      function insereCartaoPortadorFrete : boolean; override;

      function cancelaContratoFrete      : boolean; override;

      destructor Destroy; override;
      constructor Create;
   end;

const
   cTipoDocumento_CNPJ = '1';
   cTipoDocumento_CPF  = '2';

   cTipoCarga_Lotacao    = '1';
   cTipoCarga_Fracionada = '2';

   cTipoDocumentoViagem_CTRC = '5';

   cTTransp_TipoPagamento_Cartao        = '1';
   cTTransp_TipoPagamento_ContaDeposito = '2';
   cTTransp_TipoPagamento_ContaPoupanca = '3';

   cTipoPessoaFiscal_Remetente     = '1';
   cTipoPessoaFiscal_Destinatario  = '2';
   cTipoPessoaFiscal_Consignatario = '3';

   cTipoFavorecido_Contratado = '1';

implementation

{ TAdministradoraPamcardVersao001 }

uses SysUtils, uT5Funcoes, Dialogs, Windows;

{-----------------------------------------------------------------------------
  Procedure: carregaDadosAdministradora
  Autor:     Callian
  Data:      20-out-2011

  Carrega oa dados da administradora
-----------------------------------------------------------------------------}
function TAdministradoraPamcardVersao001.carregaDadosAdministradora: boolean;
begin
   try
      dadosAdministradora := uT5Funcoes.RetornaResultadoNomeado( uT5Funcoes.GetMasterConnection,
             'SELECT                        '+ #13#10 +
             '   CAPMC_DIRETORIOENTRADA,    '+ #13#10 +
             '   CAPMC_DIRETORIOSAIDA       '+ #13#10 +
             'FROM CC_ADMINISTRADORAPAMCARD '+ #13#10 +
             'WHERE CAPF_ID = '+ IntToStr( self.getCodigoAdministradora ) );

      Self.DiretorioSaida := ResultadoNomeadoValor( dadosAdministradora, 0, 'CAPMC_DIRETORIOSAIDA' );

      if not DirectoryExists(Self.DiretorioSaida) then
         ForceDirectories(Self.DiretorioSaida);

      Result := True;
   except
      on e : exception do begin
         Result := False;
         MsgError := ( 'TAdministradoraPamcardVersao001.carregaDadosAdministradora' + e.message );
      end;
   end;
end;

{-----------------------------------------------------------------------------
  Procedure: carregaDadosConhecimentoTransporte
  Autor:     Callian
  Data:      20-out-2011

  Carrega os dados do conhecimento de transporte
-----------------------------------------------------------------------------}
function TAdministradoraPamcardVersao001.carregaDadosConhecimentoTransporte: boolean;
begin
   try
      dadosConhecimentoTransporte := uT5Funcoes.RetornaResultadoNomeado( uT5Funcoes.GetMasterConnection,
              'SELECT '+ #13#10 +
              '      EMPRESA.EMP_CNPJ '+ #13#10 +
              '    , FILIAL.FLL_CNPJ '+ #13#10 +
              '    , CONHECIMENTO.FLL_CODIGO '+ #13#10 +
              '    , CONHECIMENTO.CNH_SERIE '+ #13#10 +
              '    , CONHECIMENTO.CNH_CONHECIMENTO '+ #13#10 +
              '    , CONHECIMENTO.CNH_DATASAIDA '+ #13#10 +
              '    , CONHECIMENTO.CNH_QUANTIDADE '+ #13#10 +
              '    , CONHECIMENTO.CNH_VALORNOTAFISCAL '+ #13#10 +
              '    , CONHECIMENTO.CNH_DATASAIDA '+ #13#10 +
              '    , CONHECIMENTO.CNH_VALORQUITACAO '+ #13#10 +
              '    , CONHECIMENTO.CNH_VALORTOTALFRETEMOTORISTA '+ #13#10 +
              '    , CONHECIMENTO.CNH_VALORTOTALCOBRANCA '+ #13#10 +
              '    , CONHECIMENTO.CNH_PESOSAIDA '+ #13#10 +
              '    , PRODUTO.PRD_DESCRICAO '+ #13#10 +
              '    , PROPRIETARIO.PRP_CNPJ_CPF '+ #13#10 +
              ' '+ #13#10 +
              '    , CASE WHEN LENGTH(PROPRIETARIO.PRP_CNPJ_CPF) = 14 THEN ''1'' '+ #13#10 +
              '           WHEN LENGTH(PROPRIETARIO.PRP_CNPJ_CPF) = 11 THEN ''2'' '+ #13#10 +
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
              '    , COALESCE( CAMINHAO.CMH_PLACA,              '''' ) AS CMH_PLACA '+ #13#10 +
              '    , COALESCE( CAMINHAO.CMH_PLACACARRETA,       '''' ) AS CMH_PLACACARRETA '+ #13#10 +
              '    , COALESCE( CAMINHAO.CMH_PLACACARRETA2,      '''' ) AS CMH_PLACACARRETA2 '+ #13#10 +
              '    , COALESCE( CAMINHAO.CMH_PLACACARRETA3,      '''' ) AS CMH_PLACACARRETA3 '+ #13#10 +
              ' '+ #13#10 +
              '    , COALESCE( CONHECIMENTOCONTRATOFRETECONTAFAVORECIDO.CCFCF_ID,            0    ) AS CCFCF_ID '+ #13#10 +
              '    , COALESCE( CONHECIMENTOCONTRATOFRETECONTAFAVORECIDO.CCFCF_BANCO,         0    ) AS CCFCF_BANCO '+ #13#10 +
              '    , COALESCE( CONHECIMENTOCONTRATOFRETECONTAFAVORECIDO.CCFCF_AGENCIA,       0    ) AS CCFCF_AGENCIA '+ #13#10 +
              '    , COALESCE( CONHECIMENTOCONTRATOFRETECONTAFAVORECIDO.CCFCF_AGENCIADIGITO, 0    ) AS CCFCF_AGENCIADIGITO '+ #13#10 +
              '    , COALESCE( CONHECIMENTOCONTRATOFRETECONTAFAVORECIDO.CCFCF_CONTA,         0    ) AS CCFCF_CONTA '+ #13#10 +
              '    , COALESCE( CONHECIMENTOCONTRATOFRETECONTAFAVORECIDO.CCFCF_CONTADIGITIO,  0    ) AS CCFCF_CONTADIGITIO '+ #13#10 +
              '    , COALESCE( CONHECIMENTOCONTRATOFRETECONTAFAVORECIDO.CCFCF_NUMEROCARTAO,  '''' ) AS CCFCF_NUMEROCARTAO '+ #13#10 +
              '    , COALESCE( PAMCARD_CONTRATOFRETE.PMCCTF_IDENTIFICADORVIAGEMCLIENTE,      0    ) AS PMCCTF_VIAGEMCLIENTE '+ #13#10 +
              '    , COALESCE( PAMCARD_CONTRATOFRETE.PMCMP_ID,                               0    ) AS PMCMP_CODIGO '+ #13#10 +
              '    , COALESCE( PAMCARD_CATEGORIAVEICULO.PMCCTV_CODIGO,                       0    ) AS PMCCTV_CODIGO '+ #13#10 +
              '    , CC_TIPOPAGAMENTOCONTRATOFRETE.CCTPC_CODIGO '+ #13#10 +
              '    , CC_ADMINISTRADORAPAMCARD.CAPMC_RESSALVAENTREGA '+ #13#10 +
              '    , CC_ADMINISTRADORAPAMCARD.CAPMC_INDICADORQUITACAO '+ #13#10 +
              '    , CONHECIMENTOCONTRATOFRETE.CNHCF_ID '+ #13#10 +
              'FROM CONHECIMENTO INNER JOIN '+ #13#10 +
              '     FILIAL                 ON FILIAL.FLL_CODIGO         = CONHECIMENTO.FLL_CODIGO         INNER JOIN '+ #13#10 +
              '     CLIENTE CLIENTEORIGEM  ON CLIENTEORIGEM.CLN_CODIGO  = CONHECIMENTO.CLN_CLIENTEORIGEM  INNER JOIN '+ #13#10 +
              '     CLIENTE CLIENTEDESTINO ON CLIENTEDESTINO.CLN_CODIGO = CONHECIMENTO.CLN_CLIENTEDESTINO INNER JOIN '+ #13#10 +
              '     CIDADE CIDADEORIGEM    ON CIDADEORIGEM.CDD_CODIGO   = CLIENTEORIGEM.CDD_CODIGO        INNER JOIN '+ #13#10 +
              '     CIDADE CIDADEDESTINO   ON CIDADEDESTINO.CDD_CODIGO  = CLIENTEDESTINO.CDD_CODIGO       INNER JOIN '+ #13#10 +
              '     CAMINHAO               ON CAMINHAO.CMH_PLACA        = CONHECIMENTO.CMH_PLACA          INNER JOIN '+ #13#10 +
              '     PRODUTO                ON PRODUTO.PRD_CODIGO        = CONHECIMENTO.PRD_CODIGO         INNER JOIN '+ #13#10 +
              '     PROPRIETARIO           ON PROPRIETARIO.PRP_CNPJ_CPF = CONHECIMENTO.PRP_CNPJ_CPF       INNER JOIN '+ #13#10 +
              ' '+ #13#10 +
              '     CONHECIMENTOCONTRATOFRETE ON CONHECIMENTOCONTRATOFRETE.FLL_CODIGO       = CONHECIMENTO.FLL_CODIGO '+ #13#10 +
              '                              AND CONHECIMENTOCONTRATOFRETE.CNH_SERIE        = CONHECIMENTO.CNH_SERIE '+ #13#10 +
              '                              AND CONHECIMENTOCONTRATOFRETE.CNH_CONHECIMENTO = CONHECIMENTO.CNH_CONHECIMENTO LEFT JOIN '+ #13#10 +
              ' '+ #13#10 +
              '     CONHECIMENTOCONTRATOFRETECONTAFAVORECIDO ON CONHECIMENTOCONTRATOFRETECONTAFAVORECIDO.CNHCF_ID = CONHECIMENTOCONTRATOFRETE.CNHCF_ID      LEFT JOIN '+ #13#10 +
              '     CC_ADMINISTRADORAPAGAMENTOFRETE          ON CC_ADMINISTRADORAPAGAMENTOFRETE.CAPF_ID           = CONHECIMENTOCONTRATOFRETE.CAPF_ID       LEFT JOIN '+ #13#10 +
              '     CC_ADMINISTRADORAPAMCARD                 ON CC_ADMINISTRADORAPAMCARD.CAPF_ID                  = CC_ADMINISTRADORAPAGAMENTOFRETE.CAPF_ID LEFT JOIN '+ #13#10 +
              '     CC_TIPOPAGAMENTOCONTRATOFRETE            ON CC_TIPOPAGAMENTOCONTRATOFRETE.CCTPC_ID            = CONHECIMENTOCONTRATOFRETE.CCTPC_ID      LEFT JOIN '+ #13#10 +
              '     PAMCARD_CONTRATOFRETE                    ON PAMCARD_CONTRATOFRETE.CNHCF_ID                    = CONHECIMENTOCONTRATOFRETE.CNHCF_ID      LEFT JOIN '+ #13#10 +
              '     CAMINHAOPAMCARD                          ON CAMINHAOPAMCARD.CMH_PLACA                         = CAMINHAO.CMH_PLACA                      LEFT JOIN '+ #13#10 +
              '     PAMCARD_CATEGORIAVEICULO                 ON PAMCARD_CATEGORIAVEICULO.PMCCTV_ID                = CAMINHAOPAMCARD.PMCCTV_ID, EMPRESA '+ #13#10 +
              'WHERE CONHECIMENTO.FLL_CODIGO = '+ IntToStr( self.Filial ) + #13#10 +
              '  AND CONHECIMENTO.CNH_SERIE  = '+ QuotedStr( self.Serie ) + #13#10 +
              '  AND CONHECIMENTO.CNH_CONHECIMENTO = '+ IntToStr( self.Conhecimento ) );
      if ResultadoNomeadoLinhas( dadosConhecimentoTransporte ) = 0 then raise exception.create('Não foi possivel localizar o CTRC '+intToStr( filial ) + '-'+serie+'-'+intToStr(conhecimento));
      Result := True;
   except
      on e : exception do begin
         Result := False;
         MsgError := ( 'TAdministradoraPamcardVersao001.carregaDadosConhecimentoTransporte' + e.message );
      end;
   end;
end;

{-----------------------------------------------------------------------------
  Procedure: carregaDadosParcela
  Autor:     Callian
  Data:      20-out-2011

  Carrega dados da parcela
-----------------------------------------------------------------------------}
function TAdministradoraPamcardVersao001.carregaDadosParcela: boolean;
begin
   try
      dadosParcela := uT5Funcoes.RetornaResultadoNomeado( uT5Funcoes.GetMasterConnection,
                                                             'SELECT '+ #13#10 +
                                                             '         CONHECIMENTO.FLL_CODIGO '+ #13#10 +
                                                             '       , CONHECIMENTOCONTRATOFRETEPROVISAOPAGAMENTO.CNHPP_DIASPROVISAO '+ #13#10 +
                                                             '       , CONHECIMENTOCONTRATOFRETEPROVISAOPAGAMENTO.CNHPP_VALORPROVISIONADO '+ #13#10 +
                                                             'FROM CONHECIMENTO INNER JOIN '+ #13#10 +
                                                             '     CONHECIMENTOCONTRATOFRETE ON CONHECIMENTOCONTRATOFRETE.FLL_CODIGO = CONHECIMENTO.FLL_CODIGO '+ #13#10 +
                                                             '			      AND CONHECIMENTOCONTRATOFRETE.CNH_SERIE = CONHECIMENTO.CNH_SERIE '+ #13#10 +
                                                             '			      AND CONHECIMENTOCONTRATOFRETE.CNH_CONHECIMENTO = CONHECIMENTO.CNH_CONHECIMENTO INNER JOIN '+ #13#10 +
                                                             '     CONHECIMENTOCONTRATOFRETEPROVISAOPAGAMENTO ON CONHECIMENTOCONTRATOFRETEPROVISAOPAGAMENTO.CNHCF_ID = CONHECIMENTOCONTRATOFRETE.CNHCF_ID '+ #13#10 +
                                                             'WHERE CONHECIMENTO.FLL_CODIGO = '+ IntToStr( self.getFilial ) + #13#10 +
                                                             '  AND CONHECIMENTO.CNH_SERIE  = '+ QuotedStr( self.getSerie ) + #13#10 +
                                                             '  AND CONHECIMENTO.CNH_CONHECIMENTO = '+ IntToStr( self.getConhecimento ) );
      Result := True;
   except
      on e : exception do begin
         Result := False;
         MsgError := ( 'TAdministradoraPamcardVersao001.carregaDadosParcela' + e.message );
      end;
   end;
end;

function TAdministradoraPamcardVersao001.carregaDadosCancelamento: boolean;
begin
   try
      dadosCancelamento := uT5Funcoes.RetornaResultadoNomeado( uT5Funcoes.GetMasterConnection,
                  'SELECT '+ #13#10 +
                  '      EMPRESA.EMP_CNPJ '+ #13#10 +
                  '    , FILIAL.FLL_CNPJ '+ #13#10 +
                  '    , CONHECIMENTO.PRP_CNPJ_CPF '+ #13#10 +
                  '    , COALESCE( CONHECIMENTOCONTRATOFRETE.CNHCF_CIOT,                 '''' ) AS CNHCF_CIOT '+ #13#10 +
                  '    , COALESCE( PAMCARD_CONTRATOFRETE.PMCCTF_IDENTIFICADORVIAGEMCLIENTE, 0 ) AS PMCCTF_IDENTIFICADORVIAGEMCLIENTE '+ #13#10 +
                  'FROM CONHECIMENTO INNER JOIN '+ #13#10 +
                  '     FILIAL ON FILIAL.FLL_CODIGO = CONHECIMENTO.FLL_CODIGO INNER JOIN '+ #13#10 +
                  '     CONHECIMENTOCONTRATOFRETE ON CONHECIMENTOCONTRATOFRETE.FLL_CODIGO       = CONHECIMENTO.FLL_CODIGO '+ #13#10 +
                  '                              AND CONHECIMENTOCONTRATOFRETE.CNH_SERIE        = CONHECIMENTO.CNH_SERIE '+ #13#10 +
                  '                              AND CONHECIMENTOCONTRATOFRETE.CNH_CONHECIMENTO = CONHECIMENTO.CNH_CONHECIMENTO LEFT JOIN '+ #13#10 +
                  '     PAMCARD_CONTRATOFRETE ON PAMCARD_CONTRATOFRETE.CNHCF_ID = CONHECIMENTOCONTRATOFRETE.CNHCF_ID, '+ #13#10 +
                  '     EMPRESA '+ #13#10 +
                  'WHERE CONHECIMENTO.FLL_CODIGO       = '+ IntToStr ( self.getFilial ) + #13#10 +
                  '  AND CONHECIMENTO.CNH_SERIE        = '+ QuotedStr( self.getSerie  ) + #13#10 +
                  '  AND CONHECIMENTO.CNH_CONHECIMENTO = '+ IntToStr ( self.getConhecimento ) );

      Result := True;
   except
      on e : exception do begin
         Result := False;
         MsgError := ( 'TAdministradoraPamcardVersao001.carregaDadosCancelamento' + e.message );
      end;
   end;
end;


constructor TAdministradoraPamcardVersao001.Create;
begin
   inherited Create(nil);
   if not self.carregaDadosAdministradora then
     raise exception.create('Não foi possivel carregar os dados da administradora pamcard.'#10+msgError);

end;

destructor TAdministradoraPamcardVersao001.Destroy;
begin
   inherited Destroy;
end;

function TAdministradoraPamcardVersao001.getCodigoAdministradora: integer;
begin
   result := 4;
end;

{-----------------------------------------------------------------------------
  Procedure: insereCartaoPortadorFrete
  Autor:     Callian
  Data:      20-out-2011
-----------------------------------------------------------------------------}
function TAdministradoraPamcardVersao001.insereCartaoPortadorFrete: boolean;
begin
   try
      Result := True;

      if ( Result ) then begin
         AssignFile ( ArquivoPamcard, DiretorioSaida + '\insereCartaoPortadorFrete.txt' );
         Rewrite    ( ArquivoPamcard );
      end;

      if ( Result ) then begin
         CloseFile( ArquivoPamcard );
      end;
   except
      on e : exception do begin
         Result := False;
         MsgError := ( 'TAdministradoraPamcardVersao001.insereCartaoPortadorFrete' + e.message );
      end;
   end;
end;

{-----------------------------------------------------------------------------
  Procedure: insereContaFavorecido
  Autor:     Callian
  Data:      20-out-2011
-----------------------------------------------------------------------------}
function TAdministradoraPamcardVersao001.insereContaFavorecido: boolean;
begin
   try
      Result := True;

      if ( Result ) then begin
         AssignFile ( ArquivoPamcard, DiretorioSaida + '\insereContaFavorecido.txt' );
         Rewrite    ( ArquivoPamcard );
      end;

      if ( Result ) then begin
         CloseFile( ArquivoPamcard );
      end;
   except
      on e : exception do begin
         Result := False;
         MsgError := ( 'TAdministradoraPamcardVersao001.insereContaFavorecido' + e.message );
      end;
   end;
end;

{-----------------------------------------------------------------------------
  Procedure: insereContratoFrete
  Autor:     Callian
  Data:      20-out-2011
-----------------------------------------------------------------------------}
function TAdministradoraPamcardVersao001.insereContratoFrete: boolean;
begin
   try
      Result := True;

      if ( Result ) and not carregaDadosConhecimentoTransporte then begin
         Result := False;
      end;

      if ( Result ) and not carregaDadosParcela then begin
         Result := False;
      end;

      if not result then exit;

      diretorioArquivo := DiretorioSaida + '\insereContratoFrete'+ IntToStr( ResultadoNomeadoValor(dadosConhecimentoTransporte, 0, 'CNHCF_ID' ) ) +'.txt';
      AssignFile ( ArquivoPamcard, diretorioArquivo );
      Rewrite    ( ArquivoPamcard );
      try

          if ( Result ) then begin
             Result := insereContratoFrete_cabeca;
          end;

          if ( Result ) then begin
             Result := insereContratoFrete_favorecido;
          end;

          if ( Result ) then begin
             Result := insereContratoFrete_veiculo;
          end;

          if ( Result ) then begin
             Result := insereContratoFrete_data;
          end;

          if ( Result ) then begin
             Result := insereContratoFrete_rota;
          end;

          if ( Result ) then begin
             Result := insereContratoFrete_pedagio;
          end;

          if ( Result ) then begin
             Result := insereContratoFrete_carga;
          end;

          if ( Result ) then begin
             Result := insereContratoFrete_documento;
          end;

          if ( Result ) then begin
             Result := insereContratoFrete_parcela;
          end;

          if ( Result ) then begin
             Result := insereContratoFrete_quitacao;
          end;

          if ( Result ) then begin
             Result := insereContratoFrete_itemFrete;
          end;
      finally
         CloseFile( ArquivoPamcard );
      end;
   except
      on e : exception do begin
         Result := False;
         MsgError := 'TAdministradoraPamcardVersao001.insereContratoFrete' + e.message;
      end;
   end;
end;

{-----------------------------------------------------------------------------
  Procedure: insereContratoFrete_cabeca
  Autor:     Callian
  Data:      20-out-2011
-----------------------------------------------------------------------------}
function TAdministradoraPamcardVersao001.insereContratoFrete_cabeca: boolean;
begin
   try
      Write( ArquivoPamcard, 'viagem.contratante.documento.numero=' ); WriteLn( ArquivoPamcard, uT5Funcoes.ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'EMP_CNPJ' ) );
      Write( ArquivoPamcard, 'viagem.unidade.documento.tipo='       ); WriteLn( ArquivoPamcard, cTipoDocumento_CNPJ );
      Write( ArquivoPamcard, 'viagem.unidade.documento.numero='     ); WriteLn( ArquivoPamcard, uT5Funcoes.ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'FLL_CNPJ' ) );
      Write( ArquivoPamcard, 'viagem.id.cliente='                   ); WriteLn( ArquivoPamcard, IntToStr( uT5Funcoes.ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'PMCCTF_VIAGEMCLIENTE' ) ) );
      Write( ArquivoPamcard, 'viagem.contrato.numero='              ); WriteLn( ArquivoPamcard, '' );

      Result := True;
   except
      on e : exception do begin
         Result := False;
         MsgError := ( 'TAdministradoraPamcardVersao001.insereContratoFrete_cabeca' + e.message );
      end;
   end;
end;

{-----------------------------------------------------------------------------
  Procedure: insereContratoFrete_carga
  Autor:     Callian
  Data:      20-out-2011
-----------------------------------------------------------------------------}
function TAdministradoraPamcardVersao001.insereContratoFrete_carga: boolean;
begin
   try
      Write( ArquivoPamcard, 'viagem.carga.tipo='     ); WriteLn( ArquivoPamcard, cTipoCarga_Lotacao );
      Write( ArquivoPamcard, 'viagem.carga.natureza=' ); WriteLn( ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'PRD_DESCRICAO' ) );
      Write( ArquivoPamcard, 'viagem.carga.peso='     ); WriteLn( ArquivoPamcard, FormatFloat('###0.000',ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_PESOSAIDA' ) ) );

      Result := True;
   except
      on e : exception do begin
         Result := False;
         MsgError := ( 'TAdministradoraPamcardVersao001.insereContratoFrete_carga' + e.message );
      end;
   end;
end;

{-----------------------------------------------------------------------------
  Procedure: insereContratoFrete_data
  Autor:     Callian
  Data:      20-out-2011
-----------------------------------------------------------------------------}
function TAdministradoraPamcardVersao001.insereContratoFrete_data: boolean;
begin
   try
      Write( ArquivoPamcard, 'viagem.data.partida=' ); WriteLn(ArquivoPamcard, FormatDateTime('dd/mm/yyyy', ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_DATASAIDA' ) ) );
      Write( ArquivoPamcard, 'viagem.data.termino=' ); WriteLn(ArquivoPamcard, FormatDateTime('dd/mm/yyyy', ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_DATACHEGADA' ) ) );

      Result := True;
   except
      on e : exception do begin
         Result := False;
         MsgError := ( 'TAdministradoraPamcardVersao001.insereContratoFrete_data' + e.message );
      end;
   end;
end;

{-----------------------------------------------------------------------------
  Procedure: insereContratoFrete_documento
  Autor:     Callian
  Data:      20-out-2011
-----------------------------------------------------------------------------}
function TAdministradoraPamcardVersao001.insereContratoFrete_documento: boolean;
begin
   try
      Write( ArquivoPamcard, 'viagem.documento.qtde='              ); WriteLn( ArquivoPamcard, '1' );
      Write( ArquivoPamcard, 'viagem.documento1.tipo='             ); WriteLn( ArquivoPamcard, cTipoDocumentoViagem_CTRC );
      Write( ArquivoPamcard, 'viagem.documento1.numero='           ); WriteLn( ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_CONHECIMENTO' ) );
      Write( ArquivoPamcard, 'viagem.documento1.serie='            ); WriteLn( ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_SERIE' ) );
      Write( ArquivoPamcard, 'viagem.documento1.quantidade='       ); WriteLn( ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_QUANTIDADE' ) );
      Write( ArquivoPamcard, 'viagem.documento1.especie='          ); WriteLn( ArquivoPamcard, '08' );
      Write( ArquivoPamcard, 'viagem.documento1.cubagem='          ); WriteLn( ArquivoPamcard, 0 );
      Write( ArquivoPamcard, 'viagem.documento1.mercadoria.valor=' ); WriteLn( ArquivoPamcard, FormatFloat( '#,##0.00', ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_VALORNOTAFISCAL' ) ) );


      Write( ArquivoPamcard, 'viagem.documenton.pessoafiscal.qtde=' ); WriteLn( ArquivoPamcard, '' );


      {-- Remetente --}
      Write( ArquivoPamcard, 'viagem.documento1.pessoafiscal1.tipo='        ); WriteLn( ArquivoPamcard, cTipoPessoaFiscal_Remetente );
      Write( ArquivoPamcard, 'viagem.documento1.pessoafiscal1.codigo='      ); WriteLn( ArquivoPamcard, '' );
      Write( ArquivoPamcard, 'viagem.documento1.pessoafiscal1.documento='   ); WriteLn( ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CLN_REMETENTE_CNPJ_CPF' ) );
      Write( ArquivoPamcard, 'viagem.documento1.pessoafiscal1.nome='        ); WriteLn( ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CLN_REMETENTE_RAZAOSOCIAL' ) );
      Write( ArquivoPamcard, 'viagem.documento1.pessoafiscal1.logradouro='  ); WriteLn( ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CLN_REMETENTE_ENDERECO' ) );
      Write( ArquivoPamcard, 'viagem.documento1.pessoafiscal1.numero='      ); WriteLn( ArquivoPamcard, '' );
      Write( ArquivoPamcard, 'viagem.documento1.pessoafiscal1.complemento=' ); WriteLn( ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CLN_REMETENTE_COMPLEMENTO' ) );
      Write( ArquivoPamcard, 'viagem.documento1.pessoafiscal1.bairro='      ); WriteLn( ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CLN_REMETENTE_BAIRRO' ) );
      Write( ArquivoPamcard, 'viagem.documento1.pessoafiscal1.pais.nome='   ); WriteLn( ArquivoPamcard, '' );
      Write( ArquivoPamcard, 'viagem.documento1.pessoafiscal1.estado.nome=' ); WriteLn( ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'EST_ORIGEM_UF' ) );
      Write( ArquivoPamcard, 'viagem.documento1.pessoafiscal1.cidade.nome=' ); WriteLn( ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CDD_ORIGEM_NOME' ) );
      Write( ArquivoPamcard, 'viagem.documento1.pessoafiscal1.cidade.ibge=' ); WriteLn( ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CDD_ORIGEM_IBGE' ) );
      Write( ArquivoPamcard, 'viagem.documento1.pessoafiscal1.cep='         ); WriteLn( ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CLN_REMETENTE_CEP' ) );

      {-- Destinatário --}
      Write( ArquivoPamcard, 'viagem.documento1.pessoafiscal2.tipo='        ); WriteLn( ArquivoPamcard, cTipoPessoaFiscal_Destinatario );
      Write( ArquivoPamcard, 'viagem.documento1.pessoafiscal2.codigo='      ); WriteLn( ArquivoPamcard, '' );
      Write( ArquivoPamcard, 'viagem.documento1.pessoafiscal2.documento='   ); WriteLn( ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CLN_DESTINATARIO_CNPJ_CPF' ) );
      Write( ArquivoPamcard, 'viagem.documento1.pessoafiscal2.nome='        ); WriteLn( ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CLN_DESTINATARIO_RAZAOSOCIAL' ) );
      Write( ArquivoPamcard, 'viagem.documento1.pessoafiscal2.logradouro='  ); WriteLn( ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CLN_DESTINATARIO_ENDERECO' ) );
      Write( ArquivoPamcard, 'viagem.documento1.pessoafiscal2.numero='      ); WriteLn( ArquivoPamcard, '' );
      Write( ArquivoPamcard, 'viagem.documento1.pessoafiscal2.complemento=' ); WriteLn( ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CLN_DESTINATARIO_COMPLEMENTO' ) );
      Write( ArquivoPamcard, 'viagem.documento1.pessoafiscal2.bairro='      ); WriteLn( ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CLN_DESTINATARIO_BAIRRO' ) );
      Write( ArquivoPamcard, 'viagem.documento1.pessoafiscal2.pais.nome='   ); WriteLn( ArquivoPamcard, '' );
      Write( ArquivoPamcard, 'viagem.documento1.pessoafiscal2.estado.nome=' ); WriteLn( ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'EST_DESTINO_UF' ) );
      Write( ArquivoPamcard, 'viagem.documento1.pessoafiscal2.cidade.nome=' ); WriteLn( ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CDD_DESTINO_NOME' ) );
      Write( ArquivoPamcard, 'viagem.documento1.pessoafiscal2.cidade.ibge=' ); WriteLn( ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CDD_DESTINO_IBGE' ) );
      Write( ArquivoPamcard, 'viagem.documento1.pessoafiscal2.cep='         ); WriteLn( ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CLN_DESTINATARIO_CEP' ) );

      Write( ArquivoPamcard, 'viagem.documento.complementar.qtde='  ); WriteLn( ArquivoPamcard, '' );
      Write( ArquivoPamcard, 'viagem.documento.complementarn.tipo=' ); WriteLn( ArquivoPamcard, '' );

      Result := True;
   except
      on e : exception do begin
         Result := False;
         MsgError := ( 'TAdministradoraPamcardVersao001.insereContratoFrete_documento' + e.message );
      end;
   end;
end;

{-----------------------------------------------------------------------------
  Procedure: insereContratoFrete_favorecido
  Autor:     Callian
  Data:      20-out-2011
-----------------------------------------------------------------------------}
function TAdministradoraPamcardVersao001.insereContratoFrete_favorecido: boolean;
var vii : integer;
begin
   try
      vii := 0;
      Write( ArquivoPamcard, 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.tipo='); WriteLn(ArquivoPamcard, cTipoFavorecido_Contratado );
      Write( ArquivoPamcard, 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.documento' + IntToStr( vii + 1 ) + '.tipo='   ); WriteLn(ArquivoPamcard, IntToStr( ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'PRP_DOCUMENTOTIPO' ) ) );
      Write( ArquivoPamcard, 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.documento' + IntToStr( vii + 1 ) + '.numero=' ); WriteLn(ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'PRP_CNPJ_CPF'      ) );
      Write( ArquivoPamcard, 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.meio.pagamento='    ); WriteLn(ArquivoPamcard, IntToStr( ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'PMCMP_CODIGO'  ) ) );
      Write( ArquivoPamcard, 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.conta.banco='       ); WriteLn(ArquivoPamcard, IntToStr( ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CCFCF_BANCO'   ) ) );
      Write( ArquivoPamcard, 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.conta.agencia='     ); WriteLn(ArquivoPamcard, IntToStr( ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CCFCF_AGENCIA' ) ) );
      Write( ArquivoPamcard, 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.conta.numero='      ); WriteLn(ArquivoPamcard, IntToStr( ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CCFCF_CONTA'   ) ) );

      if ( VarToStr( ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CCTPC_CODIGO') ) = cTTransp_TipoPagamento_Cartao ) then begin
         Write( ArquivoPamcard, 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.conta.tipo='); WriteLn(ArquivoPamcard, ' ' );
      end else if ( VarToStr( ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CCTPC_CODIGO') ) = cTTransp_TipoPagamento_ContaDeposito ) then begin
         Write( ArquivoPamcard, 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.conta.tipo='); WriteLn(ArquivoPamcard, '1' ); {-- Conta corrente --}
      end else if ( VarToStr( ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CCTPC_CODIGO') ) = cTTransp_TipoPagamento_ContaPoupanca ) then begin
         Write( ArquivoPamcard, 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.conta.tipo='); WriteLn(ArquivoPamcard, '2' ); {-- Conta poupança --}
      end;


      Write( ArquivoPamcard, 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.cartao.numero='     ); WriteLn(ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CCFCF_NUMEROCARTAO' ) );

      Result := True;
   except
      on e : exception do begin
         Result := False;
         MsgError := ( 'TAdministradoraPamcardVersao001.insereContratoFrete_favorecido' + e.message );
      end;
   end;
end;

{-----------------------------------------------------------------------------
  Procedure: insereContratoFrete_itemFrete
  Autor:     Callian
  Data:      20-out-2011
-----------------------------------------------------------------------------}
function TAdministradoraPamcardVersao001.insereContratoFrete_itemFrete: boolean;
begin
   try
      Write( ArquivoPamcard, 'viagem.frete.valor.bruto='   ); WriteLn( ArquivoPamcard, FormatFloat( '###0.00', ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_VALORTOTALFRETEMOTORISTA' ) ) );
      Write( ArquivoPamcard, 'viagem.frete.valor.liquido=' ); WriteLn( ArquivoPamcard, FormatFloat( '###0.00', ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_VALORTOTALFRETEMOTORISTA' ) ) );


      Write( ArquivoPamcard, 'viagem.frete.item.qtde='     ); WriteLn( ArquivoPamcard, '3');
      Write( ArquivoPamcard, 'viagem.frete.item1.tipo='    ); WriteLn( ArquivoPamcard, '1');
      Write( ArquivoPamcard, 'viagem.frete.item1.valor='   ); WriteLn( ArquivoPamcard, FormatFloat( '###0.00', ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_IMPOSTORENDA' ) ) );
      Write( ArquivoPamcard, 'viagem.frete.item2.tipo='    ); WriteLn( ArquivoPamcard, '2');
      Write( ArquivoPamcard, 'viagem.frete.item2.valor='   ); WriteLn( ArquivoPamcard, FormatFloat( '###0.00', ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_VALORINSS' ) ) );
      Write( ArquivoPamcard, 'viagem.frete.item3.tipo='    ); WriteLn( ArquivoPamcard, '3');
      Write( ArquivoPamcard, 'viagem.frete.item3.valor='   ); WriteLn( ArquivoPamcard, FormatFloat( '###0.00', ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_VALORSESTSENAT' ) ) );

      Result := True;
   except
      on e : exception do begin
         Result := False;
         MsgError := ( 'TAdministradoraPamcardVersao001.insereContratoFrete_itemFrete' + e.message );
      end;
   end;
end;

{-----------------------------------------------------------------------------
  Procedure: insereContratoFrete_parcela
  Autor:     Callian
  Data:      20-out-2011
-----------------------------------------------------------------------------}
function TAdministradoraPamcardVersao001.insereContratoFrete_parcela: boolean;
var vii : integer;
begin
   try
      Write( ArquivoPamcard, 'viagem.parcela.qtde='); WriteLn( ArquivoPamcard, '2');

      for vii := 0 to ( ResultadoNomeadoLinhas( dadosParcela ) - 1 ) do begin
         Write( ArquivoPamcard, 'viagem.parcela1.efetivacao.tipo=' ); WriteLn( ArquivoPamcard, '1'); {-- Manual --}
         Write( ArquivoPamcard, 'viagem.parcela1.valor='           ); WriteLn( ArquivoPamcard, FormatFloat('#,##0.00', ResultadoNomeadoValor( dadosParcela, vii, 'CNHPP_VALORPROVISIONADO' ) ) );
         Write( ArquivoPamcard, 'viagem.parcela1.subtipo='         ); WriteLn( ArquivoPamcard, '1'); {-- Adiantamento --}
         Write( ArquivoPamcard, 'viagem.parcela1.base='            ); WriteLn( ArquivoPamcard, '');
         Write( ArquivoPamcard, 'viagem.parcela1.status.id='       ); WriteLn( ArquivoPamcard, '2'); {-- Liberada --}
         Write( ArquivoPamcard, 'viagem.parcela1.data='            ); WriteLn( ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_DATASAIDA' ) );
         Write( ArquivoPamcard, 'viagem.parcela1.favorecido='      ); WriteLn( ArquivoPamcard, '1'); {-- Contratado --}
      end;

      Write( ArquivoPamcard, 'viagem.parcela2.efetivacao.tipo=' ); WriteLn( ArquivoPamcard, '1'); {-- Manual --}
      Write( ArquivoPamcard, 'viagem.parcela2.valor='           ); WriteLn( ArquivoPamcard, FormatFloat('#,##0.00', ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_VALORQUITACAO' ) ) );
      Write( ArquivoPamcard, 'viagem.parcela2.subtipo='         ); WriteLn( ArquivoPamcard, '3'); {-- Saldo Final --}
      Write( ArquivoPamcard, 'viagem.parcela2.base='            ); WriteLn( ArquivoPamcard, '');
      Write( ArquivoPamcard, 'viagem.parcela2.status.id='       ); WriteLn( ArquivoPamcard, '2'); {-- Liberada --}
      Write( ArquivoPamcard, 'viagem.parcela2.data='            ); WriteLn( ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CNH_DATASAIDA' ) );
      Write( ArquivoPamcard, 'viagem.parcela2.favorecido='      ); WriteLn( ArquivoPamcard, '1'); {-- Contratado --}

      Result := True;
   except
      on e : exception do begin
         Result := False;
         MsgError := ( 'TAdministradoraPamcardVersao001.insereContratoFrete_parcela' + e.message );
      end;
   end;
end;

{-----------------------------------------------------------------------------
  Procedure: insereContratoFrete_pedagio
  Autor:     Callian
  Data:      20-out-2011
-----------------------------------------------------------------------------}
function TAdministradoraPamcardVersao001.insereContratoFrete_pedagio: boolean;
begin
   try
      Write( ArquivoPamcard, 'viagem.ponto.qtde='            ); WriteLn( ArquivoPamcard, '');
      Write( ArquivoPamcard, 'viagem.ponton.cidade.ibge='    ); WriteLn( ArquivoPamcard, '');
      Write( ArquivoPamcard, 'viagem.pedagio.valor='         ); WriteLn( ArquivoPamcard, '');
      Write( ArquivoPamcard, 'viagem.pedagio.status.id='     ); WriteLn( ArquivoPamcard, '');
      Write( ArquivoPamcard, 'viagem.pedagio.roteirizar='    ); WriteLn( ArquivoPamcard, '');
      Write( ArquivoPamcard, 'viagem.pedagio.obter.praca='   ); WriteLn( ArquivoPamcard, '');
      Write( ArquivoPamcard, 'viagem.pedagio.utiliza.saldo=' ); WriteLn( ArquivoPamcard, '');

      Result := True;
   except
      on e : exception do begin
         Result := False;
         MsgError := ( 'TAdministradoraPamcardVersao001.insereContratoFrete_pedagio' + e.message );
      end;
   end;
end;

{-----------------------------------------------------------------------------
  Procedure: insereContratoFrete_quitacao
  Autor:     Callian
  Data:      20-out-2011
-----------------------------------------------------------------------------}
function TAdministradoraPamcardVersao001.insereContratoFrete_quitacao: boolean;
begin
   try
      Write( ArquivoPamcard, 'viagem.quitacao.prazo='                  ); WriteLn( ArquivoPamcard, '');
      Write( ArquivoPamcard, 'viagem.quitacao.indicador='              ); WriteLn( ArquivoPamcard, '');
      Write( ArquivoPamcard, 'viagem.quitacao.entrega.ressalva='       ); WriteLn( ArquivoPamcard, '');
      Write( ArquivoPamcard, 'viagem.indicador.provedor.certificacao=' ); WriteLn( ArquivoPamcard, '');
      Write( ArquivoPamcard, 'viagem.comprovacao.observacao='          ); WriteLn( ArquivoPamcard, '');

      Result := True;
   except
      on e : exception do begin
         Result := False;
         MsgError := ( 'TAdministradoraPamcardVersao001.insereContratoFrete_quitacao' + e.message );
      end;
   end;
end;

{-----------------------------------------------------------------------------
  Procedure: insereContratoFrete_rota
  Autor:     Callian
  Data:      20-out-2011
-----------------------------------------------------------------------------}
function TAdministradoraPamcardVersao001.insereContratoFrete_rota: boolean;
begin
   try
//      if not VarIsNull( ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'PMCRV_ID'  ) ) then begin
//         Write( ArquivoPamcard, 'viagem.rota.id='   ); WriteLn(ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'PMCRV_CODIGO'    ) );
//         Write( ArquivoPamcard, 'viagem.rota.nome=' ); WriteLn(ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'PMCRV_DESCRICAO' ) );
//      end;

      Write( ArquivoPamcard, 'viagem.origem.cidade.ibge='  ); WriteLn(ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CDD_ORIGEM_IBGE'  ) );
      Write( ArquivoPamcard, 'viagem.destino.cidade.ibge=' ); WriteLn(ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CDD_DESTINO_IBGE' ) );

      Result := True;
   except
      on e : exception do begin
         Result := False;
         MsgError := ( 'TAdministradoraPamcardVersao001.insereContratoFrete_rota' + e.message );
      end;
   end;
end;

{-----------------------------------------------------------------------------
  Procedure: insereContratoFrete_veiculo
  Autor:     Callian
  Data:      20-out-2011
-----------------------------------------------------------------------------}
function TAdministradoraPamcardVersao001.insereContratoFrete_veiculo : boolean;
var vVeiculoQuantidade : integer;
begin
   try
      {-- Quantidade Veículo --}
      vVeiculoQuantidade := 0;
      if ( VarToStr( ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CMH_PLACA' ) ) <> '' ) then begin
         Inc( vVeiculoQuantidade );
      end;

      if ( VarToStr( ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CMH_PLACACARRETA' ) ) <> '' ) then begin
         Inc( vVeiculoQuantidade );
      end;

      if ( VarToStr( ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CMH_PLACACARRETA2' ) ) <> '' ) then begin
         Inc( vVeiculoQuantidade );
      end;

      if ( VarToStr( ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CMH_PLACACARRETA3' ) ) <> '' ) then begin
         Inc( vVeiculoQuantidade );
      end;

      Write( ArquivoPamcard, 'viagem.veiculo.placa.qtde=' ); WriteLn(ArquivoPamcard, vVeiculoQuantidade );


      {-- Placas --}
      vVeiculoQuantidade := 0;
      if ( VarToStr( ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CMH_PLACA' ) ) <> '' ) then begin
         Inc(vVeiculoQuantidade);
         Write( ArquivoPamcard, 'viagem.veiculo.placa'+ IntToStr( vVeiculoQuantidade ) +'='); WriteLn(ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CMH_PLACA' ) );
         Write( ArquivoPamcard, 'viagem.veiculo.rntrc'+ IntToStr( vVeiculoQuantidade ) +'='); WriteLn(ArquivoPamcard, '' );
      end;

      if ( VarToStr( ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CMH_PLACACARRETA' ) ) <> '' ) then begin
         Inc(vVeiculoQuantidade);
         Write( ArquivoPamcard, 'viagem.veiculo.placa'+ IntToStr( vVeiculoQuantidade ) +'='); WriteLn(ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CMH_PLACACARRETA' ) );
         Write( ArquivoPamcard, 'viagem.veiculo.rntrc'+ IntToStr( vVeiculoQuantidade ) +'='); WriteLn(ArquivoPamcard, '' );
      end;

      if ( VarToStr( ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CMH_PLACACARRETA2' ) ) <> '' ) then begin
         Inc(vVeiculoQuantidade);
         Write( ArquivoPamcard, 'viagem.veiculo.placa'+ IntToStr( vVeiculoQuantidade ) +'='); WriteLn(ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CMH_PLACACARRETA2' ) );
         Write( ArquivoPamcard, 'viagem.veiculo.rntrc'+ IntToStr( vVeiculoQuantidade ) +'='); WriteLn(ArquivoPamcard, '' );
      end;

      if ( VarToStr( ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CMH_PLACACARRETA3' ) ) <> '' ) then begin
         Inc(vVeiculoQuantidade);
         Write( ArquivoPamcard, 'viagem.veiculo.placa'+ IntToStr( vVeiculoQuantidade ) +'='); WriteLn(ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'CMH_PLACACARRETA3' ) );
         Write( ArquivoPamcard, 'viagem.veiculo.rntrc'+ IntToStr( vVeiculoQuantidade ) +'='); WriteLn(ArquivoPamcard, '' );
      end;

      Write( ArquivoPamcard, 'viagem.veiculo.categoria=' );  WriteLn(ArquivoPamcard, ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'PMCCTV_CODIGO' ) );

      Result := True;
   except
      on e : exception do begin
         Result := False;
         MsgError := ( 'TAdministradoraPamcardVersao001.insereContratoFrete_veiculo' + e.message );
      end;
   end;
end;

{-----------------------------------------------------------------------------
  Procedure: insereFavorecido
  Autor:     Callian
  Data:      20-out-2011
-----------------------------------------------------------------------------}
function TAdministradoraPamcardVersao001.insereFavorecido: boolean;
begin
   try
      Result := True;

      AssignFile ( ArquivoPamcard, DiretorioSaida + '\insereFavorecido.txt' );
      Rewrite    ( ArquivoPamcard );
      try

        if ( Result ) then begin
           Write( ArquivoPamcard, 'viagem.contratante.documento.numero='    ); WriteLn( ArquivoPamcard, '' );
           Write( ArquivoPamcard, 'viagem.unidade.documento.tipo='          ); WriteLn( ArquivoPamcard, '' );
           Write( ArquivoPamcard, 'viagem.unidade.documento.numero='        ); WriteLn( ArquivoPamcard, '' );
           Write( ArquivoPamcard, 'viagem.favorecido.documento.qtde='       ); WriteLn( ArquivoPamcard, '' );
           Write( ArquivoPamcard, 'viagem.favorecido.documentoN.tipo='      ); WriteLn( ArquivoPamcard, '' );
           Write( ArquivoPamcard, 'viagem.favorecido.documentoN.numero='    ); WriteLn( ArquivoPamcard, '' );
           Write( ArquivoPamcard, 'viagem.favorecido.documentoN.uf='        ); WriteLn( ArquivoPamcard, '' );
           Write( ArquivoPamcard, 'viagem.favorecido.nome='                 ); WriteLn( ArquivoPamcard, '' );
           Write( ArquivoPamcard, 'viagem.favorecido.data.nascimento='      ); WriteLn( ArquivoPamcard, '' );
           Write( ArquivoPamcard, 'viagem.favorecido.endereco.logradouro='  ); WriteLn( ArquivoPamcard, '' );
           Write( ArquivoPamcard, 'viagem.favorecido.endereco.numero='      ); WriteLn( ArquivoPamcard, '' );
           Write( ArquivoPamcard, 'viagem.favorecido.endereco.complemento=' ); WriteLn( ArquivoPamcard, '' );
           Write( ArquivoPamcard, 'viagem.favorecido.endereco.bairro='      ); WriteLn( ArquivoPamcard, '' );
           Write( ArquivoPamcard, 'viagem.favorecido.endereco.cidade.ibge=' ); WriteLn( ArquivoPamcard, '' );
           Write( ArquivoPamcard, 'viagem.favorecido.endereco.cidade='      ); WriteLn( ArquivoPamcard, '' );
           Write( ArquivoPamcard, 'viagem.favorecido.endereco.uf='          ); WriteLn( ArquivoPamcard, '' );
           Write( ArquivoPamcard, 'viagem.favorecido.endereco.pais='        ); WriteLn( ArquivoPamcard, '' );
           Write( ArquivoPamcard, 'viagem.favorecido.endereco.cep='         ); WriteLn( ArquivoPamcard, '' );
           Write( ArquivoPamcard, 'viagem.favorecido.telefone.ddd='         ); WriteLn( ArquivoPamcard, '' );
           Write( ArquivoPamcard, 'viagem.favorecido.telefone.numero='      ); WriteLn( ArquivoPamcard, '' );
           Write( ArquivoPamcard, 'viagem.favorecido.celular.ddd='          ); WriteLn( ArquivoPamcard, '' );
           Write( ArquivoPamcard, 'viagem.favorecido.celular.numero='       ); WriteLn( ArquivoPamcard, '' );
           Write( ArquivoPamcard, 'viagem.favorecido.email='                ); WriteLn( ArquivoPamcard, '' );
        end;

      finally
         CloseFile( ArquivoPamcard );
      end;
   except
      on e : exception do begin
         Result := False;
         MsgError := ( 'TAdministradoraPamcardVersao001.insereFavorecido' + e.message );
      end;
   end;
end;

{-----------------------------------------------------------------------------
  Procedure: cancelaContratoFrete
  Autor:     Callian
  Data:      20-out-2011
-----------------------------------------------------------------------------}
function TAdministradoraPamcardVersao001.cancelaContratoFrete: boolean;
begin
   try
      Result := True;

      AssignFile ( ArquivoPamcard, DiretorioSaida + '\cancelaContratoFrete.txt' );
      Rewrite    ( ArquivoPamcard );
      try

        if ( Result ) then begin
           Write( ArquivoPamcard, 'viagem.id='                           ); WriteLn( ArquivoPamcard, '' );
           Write( ArquivoPamcard, 'viagem.id.cliente='                   ); WriteLn( ArquivoPamcard, uT5Funcoes.ResultadoNomeadoValor( dadosCancelamento, 0, 'PMCCTF_IDENTIFICADORVIAGEMCLIENTE' ) );
           Write( ArquivoPamcard, 'viagem.contratante.documento.numero=' ); WriteLn( ArquivoPamcard, uT5Funcoes.ResultadoNomeadoValor( dadosCancelamento, 0, 'EMP_CNPJ' ) );
           Write( ArquivoPamcard, 'viagem.unidade.documento.tipo='       ); WriteLn( ArquivoPamcard, '1' );
           Write( ArquivoPamcard, 'viagem.unidade.documento.numero='     ); WriteLn( ArquivoPamcard, uT5Funcoes.ResultadoNomeadoValor( dadosCancelamento, 0, 'FLL_CNPJ' ) );
           Write( ArquivoPamcard, 'viagem.antt.cancelamento.motivo='     ); WriteLn( ArquivoPamcard, 'CANCELAMENTO DE CONTRATO' );
           Write( ArquivoPamcard, 'viagem.antt.ciot.numero='             ); WriteLn( ArquivoPamcard, uT5Funcoes.ResultadoNomeadoValor( dadosCancelamento, 0, 'CNHCF_CIOT' ) );
        end;
      finally
         CloseFile( ArquivoPamcard );
      end;
   except
      on e : exception do begin
         Result := False;
         MsgError := ( 'TAdministradoraPamcardVersao001.cancelaContratoFrete' + e.message );
      end;
   end;
end;


end.
