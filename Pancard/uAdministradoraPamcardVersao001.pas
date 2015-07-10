unit uAdministradoraPamcardVersao001;

interface

uses Variants, Classes, uAdministradoraAbstract, uIntegracaoContratofreteBean;

type
   TAdministradoraPamcardVersao001 = class( TAdministradoraAbstract )
   protected
      procedure SetDadosOperadora( const Bean : TBeanOperadora); override;
      function getCodigoAdministradora   : integer; override;
   private
      {-- Configurações do arquivo --}
      DiretorioSaida       : String;
      DiretorioEntrada       : String;
      operadora : TBeanOperadoraPamcard;
      function FormatFloat( format : string; valor : extended ) : string;
      function VerificaGeraPortador( var Cadastrar : boolean ): boolean;
   private
      procedure AdicionaValorParametro( campo : string; valor : Variant; obrigatorio : Boolean = False; Tipo : char = 'S'; tamanhomaximo : Integer = 1000 );

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
      //function insereContratoFrete_ProtadorCartao  : boolean;

   public

      function verificaRetorno: boolean; override;
      function insereContratoFrete       : boolean; override;
      function cancelaContratoFrete      : boolean; override;

      function AlteraContrato             : boolean; override;

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
   cTipoFavorecido_Motorista  = '3';

implementation

uses SysUtils, Windows, uICFFuncoes, uICFBase, DateUtils, utxt_pef_v1_0,
     utxt_pef_alt_v1_0;

function GetCategoriaVeiculo( categoriaPadrao : integer ) : string;
begin
   case categoriaPadrao of      {#T14/03 revisado a tabela de conversao}
     0  : result := '';
     1  : result := '1';
     2  : result := '3';
     3  : result := '5';
     4  : result := '2';
     5  : result := '4';
     6  : result := '6';
     7  : result := '7';
     8  : result := '8';
     9  : result := '10';
     10 : result := '11';
     11 : result := '12';
     12 : result := '13';
     13 : result := '2A';
     14 : result := '4A';
     15 : result := '';
     16 : result := '';
   end;

{
<option value=""></option>
<option value="1">AUTOMOVEL, CAMINHONETE, CAMIONETA, FURGAO ( 2 EIXOS - ROD. SIMPLES )</option>
<option value="5">AUTOMOVEL, CAMIONETA OU CAMINHONETE COM REBOQUE ( 4 EIXOS - ROD. SIMPLES)</option>
<option value="3">AUTOMOVEL, CAMIONETA OU CAMINHONETE COM SEMI-REBOQUE ( 3 EIXOS - ROD. SIMPLES )</option>
<option value="7">CAMINHAO C/ REBOQUE, CAMINHAO-TRATOR ( 5 EIXOS - ROD. DUPLA )</option>
<option value="13" selected="selected">CAMINHAO C/ REBOQUE, CAMINHAO-TRATOR C/ SEMI-REBOQUE ( 10 EIXOS - ROD. DUPLA )</option>
<option value="8">CAMINHAO C/ REBOQUE, CAMINHAO-TRATOR C/ SEMI-REBOQUE ( 6 EIXOS - ROD. DUPLA )</option>
<option value="10">CAMINHAO C/ REBOQUE, CAMINHAO-TRATOR C/ SEMI-REBOQUE ( 7 EIXOS - ROD. DUPLA )</option>
<option value="11">CAMINHAO C/ REBOQUE, CAMINHAO-TRATOR C/ SEMI-REBOQUE ( 8 EIXOS - ROD. DUPLA )</option>
<option value="12">CAMINHAO C/ REBOQUE, CAMINHAO-TRATOR C/ SEMI-REBOQUE ( 9 EIXOS - ROD. DUPLA )</option>
<option value="6">CAMINHAO E/OU CAMINHAO-TRATOR, C/ SEMI-REBOQUE ( 4 EIXOS - ROD. DUPLA)</option>
<option value="2">CAMINHAO LEVE, CAMINHAO-TRATOR, FURGAO ( 2 EIXOS - ROD. DUPLA )</option>
<option value="4">CAMINHAO, CAMINHAO-TRATOR, CAMINHAO-TRATOR C/ SEMI-REBOQUE ( 3 EIXOS - ROD. DUPLA )</option>
<option value="9">MOTOCICLETA, MOTONETA, BICICLETAS A MOTOR ( 2 EIXOS - ROD. SIMPLES)</option>
<option value="2 A">ONIBUS ( 2 EIXOS - ROD. DUPLA )</option>
<option value="4 A">ONIBUS ( 3 EIXOS - ROD. DUPLA )</option>
<option value="6 A">ONIBUS ( 4 EIXOS - ROD. DUPLA )</option>
}

end;

{ TAdministradoraPamcardVersao001 }

{-----------------------------------------------------------------------------
  Procedure: carregaDadosParcela
  Autor:     Callian
  Data:      20-out-2011

  Carrega dados da parcela
-----------------------------------------------------------------------------}

constructor TAdministradoraPamcardVersao001.Create;
begin
   inherited Create(nil);
end;

destructor TAdministradoraPamcardVersao001.Destroy;
begin
   inherited Destroy;
end;

function TAdministradoraPamcardVersao001.getCodigoAdministradora: integer;
begin
   result := 4;
end;

function TAdministradoraPamcardVersao001.VerificaGeraPortador( var Cadastrar : boolean ): boolean;
var
  diretorioArquivo : string;
  tempoi : TDateTime;
  vii,cartoes : integer;
begin
  try
     ArquivoGerado.Clear;
     AdicionaValorParametro( 'transacional.operacao', '22' );   // Consultar Favorecido FindFavored 22
     Result := insereContratoFrete_cabeca;
     if not result then raise Exception.Create( msgError );


     if Length( bean.contratado.contratado_cnpj_cpf ) > 12 then
       AdicionaValorParametro( 'viagem.favorecido.documento.tipo'                   , '1' )
     else
       AdicionaValorParametro( 'viagem.favorecido.documento.tipo'                   , '2' );
     AdicionaValorParametro( 'viagem.favorecido.documento.numero'              , bean.contratado.contratado_cnpj_cpf );


     diretorioArquivo := DiretorioSaida + '\consultarFavorecido_'+ bean.numeroContratoFrete  +'.txt';
     ArquivoGerado.SaveToFile( diretorioArquivo );

     diretorioArquivo := DiretorioEntrada + '\consultarFavorecido_'+ bean.numeroContratoFrete  +'.txt';

     Cadastrar := true;

     tempoi := now();
     repeat
         if FileExists( diretorioArquivo ) then
         begin
            ArquivoRecebido.LoadFromFile( diretorioArquivo );

            if ArquivoRecebido.Values['mensagem.codigo'] <> '0' then
            begin
               MsgError := 'Pamcard informa :'+ArquivoRecebido.Values['mensagem.codigo']+' '+ArquivoRecebido.Values['mensagem.descricao'];
               result := false;
            end
            else
            begin
               cartoes := StrToIntDef( ArquivoRecebido.Values['viagem.favorecido.cartao.qtde'] , 0);
               if cartoes = 0 then // não tem nenhum cartão ativo
               begin
                   result := true;
                  //// go out
               end
               else
               begin
                  for vii := 01 to cartoes do // vare os cartoes ativos
                  begin
                     if ArquivoRecebido.Values['viagem.favorecido.cartao1.numero'] = Bean.numeroCartaoFrete then
                     begin
                        if ArquivoRecebido.Values['viagem.favorecido.cartao1status'] = 'CARTAO ATIVO' then
                        begin
                           Cadastrar := false;
                        end
                        else
                        if ArquivoRecebido.Values['viagem.favorecido.cartao1.status'] = 'LIBERADO' then
                        begin
                           Cadastrar := false;
                        end
                        else
                        if ArquivoRecebido.Values['viagem.favorecido.cartao1.status'] = 'BLOQUEADO' then
                         {POG softcenter Registro. 1023 - VIGNOTO & VIGNOTO LTDA - FINDCARD
                          -------- Forwarded Message --------
                          Assunto:	Registro. 1023 - VIGNOTO & VIGNOTO LTDA - FINDCARD
                          Data:	Tue, 31 Mar 2015 15:42:29 -0300
                          De:	Operações Pamcard <operacoespamcard@roadcard.com.br>
                          Para:	renato@softcenter.com.br

                          Renato, Boa tarde

                          Conforme solicitado à Millene, anexo estou lhe enviando os arquivos de integração sobre o retorno da funcionalidade FINDCARD.

                          O status BLOQUEADO do cartão não deve impactar a operação, pois trata-se de um retorno com sucesso.

                          Qualquer dúvida, estou à disposição.

                          At.,
                         }
                        begin
                           Cadastrar := false;
                        end
                        else
                        begin
                           raise exception.create('Este cartão esta inativo, verifique junto a administradora.');
                        end;
                        break;
                     end;
                  end;
               end;
            end;
            DeleteFile( PChar( diretorioArquivo ) );
            break;
         end else
         begin
            sleep(500);
            if SecondsBetween( now(), tempoi) > 60 then // aguarda 1 minuto a resposta do evento
            begin
               break;
            end;
         end;
     until false;
     //result := true;
  except
      on e : exception do begin
         Result := False;
         MsgError := 'TAdministradoraPamcardVersao001.VerificaGeraPortador' + e.message;
         LogIt(  e.message );
      end;
  end;
end;

{-----------------------------------------------------------------------------
  Procedure: insereContratoFrete
  Autor:     Callian
  Data:      20-out-2011
-----------------------------------------------------------------------------}
function TAdministradoraPamcardVersao001.insereContratoFrete: boolean;
var
  diretorioArquivo : String;
  geraportador      : boolean;
  tmp               : string;
begin
   try

      result := VerificaGeraPortador( geraportador );
      if not result then raise Exception.Create( msgError );

      tmp := ArquivoGerado.text;

      ArquivoGerado.Clear;
      AdicionaValorParametro( 'transacional.operacao', '26' );
      Result := insereContratoFrete_cabeca;
      if not result then raise Exception.Create( msgError );

      AdicionaValorParametro( 'viagem.id.cliente'                   , bean.numeroContratoFrete );
      AdicionaValorParametro( 'viagem.contrato.numero'              , bean.numeroContratoFrete );

      Result := insereContratoFrete_favorecido;
      if not result then raise Exception.Create( msgError );

      Result := insereContratoFrete_veiculo;
      if not result then raise Exception.Create( msgError );

      Result := insereContratoFrete_data;
      if not result then raise Exception.Create( msgError );

      Result := insereContratoFrete_rota;
      if not result then raise Exception.Create( msgError );

      Result := insereContratoFrete_pedagio;
      if not result then raise Exception.Create( msgError );

      Result := insereContratoFrete_carga;
      if not result then raise Exception.Create( msgError );

      Result := insereContratoFrete_documento;
      if not result then raise Exception.Create( msgError );

      if ( Bean.ParametrosOperadora.Values['viagem_quitacao'] = 'S' )  then begin      {#T10752}
         Result := insereContratoFrete_quitacao;
      end;

      Result := insereContratoFrete_parcela;
      if not result then raise Exception.Create( msgError );


      Result := insereContratoFrete_itemFrete;
      if not result then raise Exception.Create( msgError );

//      if geraportador and ( bean.PortadorCartao.nome <> '') then
//      begin
//         Result := insereContratoFrete_ProtadorCartao;
//         if not result then raise Exception.Create( msgError );
//      end;

      diretorioArquivo := DiretorioSaida + '\insereContratoFrete_'+ bean.numeroContratoFrete  +'.txt';
      ArquivoGerado.SaveToFile( diretorioArquivo );
      ArquivoGerado.Insert(0, tmp );
      Situacao := tsrAguardando {'A'};
      //msgError := 'Arquivo gerado, aguarde retorno da administradora';
      Result := True;
   except
      on e : exception do begin
         Result := False;
         Situacao := tsrErro {'E'};
         MsgError := 'TAdministradoraPamcardVersao001.insereContratoFrete' + e.message;
         LogIt(  e.message );
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
      AdicionaValorParametro( 'viagem.contratante.documento.numero' , bean.cnpj_matriz );
      if bean.cnpj_matriz <> Bean.cnpj_filial then
      begin
         AdicionaValorParametro( 'viagem.unidade.documento.tipo'       , 1 ); //numero da filial removido a pedido do CAIO conforme conversa com EDER
         AdicionaValorParametro( 'viagem.unidade.documento.numero'     , Bean.cnpj_filial );
      end;
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
      //AdicionaValorParametro( 'viagem.carga.tipo'     , cTipoCarga_Lotacao ); Campo destivado no manual 2.9.5
      AdicionaValorParametro( 'viagem.carga.natureza' , bean.NCM );
      AdicionaValorParametro( 'viagem.carga.peso'     , FormatFloat('###0.00', bean.pesoSaida ) );

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
      AdicionaValorParametro( 'viagem.data.partida' , FormatDateTime('dd/mm/yyyy', now ) );
      AdicionaValorParametro( 'viagem.data.termino' , FormatDateTime('dd/mm/yyyy', now+30 ) );

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
var
    vendereco, vTipoLogradouro, vNumero : string;
begin
   try
      AdicionaValorParametro( 'viagem.documento.qtde'              , '1' );
      AdicionaValorParametro( 'viagem.documento1.tipo'             , cTipoDocumentoViagem_CTRC );
      AdicionaValorParametro( 'viagem.documento1.numero'           , bean.documento );
      AdicionaValorParametro( 'viagem.documento1.serie'            , bean.serie_documento );
      AdicionaValorParametro( 'viagem.documento1.quantidade'       , formatFloat('0.###',bean.quantidade) );
      AdicionaValorParametro( 'viagem.documento1.especie'          , '08' );
      AdicionaValorParametro( 'viagem.documento1.cubagem'          , 0 );
      AdicionaValorParametro( 'viagem.documento1.natureza'          , bean.ncm );
      AdicionaValorParametro( 'viagem.documento1.peso'       , formatFloat('0.###',bean.pesoSaida) );
      AdicionaValorParametro( 'viagem.documento1.mercadoria.valor' , FormatFloat( '##0.00', bean.valorNotaFiscal ) );

      if bean.cliente_Consignatario.cnpj_cpf <> '' then
         AdicionaValorParametro( 'viagem.documento1.pessoafiscal.qtde' , '3' )
      else
         AdicionaValorParametro( 'viagem.documento1.pessoafiscal.qtde' , '2' );


      {-- Remetente --}
      AdicionaValorParametro( 'viagem.documento1.pessoafiscal1.tipo'        , '1' );
      //AdicionaValorParametro( 'viagem.documento1.pessoafiscal1.codigo'      , '' );
      if length(bean.cliente_Origem.cnpj_cpf)=14 then
         AdicionaValorParametro( 'viagem.documento1.pessoafiscal1.documento.tipo', '1' )
      else
         AdicionaValorParametro( 'viagem.documento1.pessoafiscal1.documento.tipo', '2' );
      AdicionaValorParametro( 'viagem.documento1.pessoafiscal1.documento.numero', bean.cliente_Origem.cnpj_cpf );

      AdicionaValorParametro( 'viagem.documento1.pessoafiscal1.nome'        ,  copy(bean.cliente_Origem.nome,1,40) );

      vendereco      := bean.cliente_Origem.endereco;
      DivideEndereco( vendereco, vTipoLogradouro, vNumero );
      if vNumero ='' then vnumero := '0';
      AdicionaValorParametro( 'viagem.documento1.pessoafiscal1.endereco.logradouro'  , vTipoLogradouro+' '+vendereco  );
      AdicionaValorParametro( 'viagem.documento1.pessoafiscal1.endereco.numero'      , vNumero );

      AdicionaValorParametro( 'viagem.documento1.pessoafiscal1.endereco.complemento' , Copy(bean.cliente_Origem.complemento,1,15) );
      AdicionaValorParametro( 'viagem.documento1.pessoafiscal1.endereco.bairro'      , bean.cliente_Origem.bairro, true );
      //AdicionaValorParametro( 'viagem.documento1.pessoafiscal1.pais.nome'   , '' );
      //AdicionaValorParametro( 'viagem.documento1.pessoafiscal1.estado.nome' , bean.cliente_Origem.uf );
      //AdicionaValorParametro( 'viagem.documento1.pessoafiscal1.cidade.nome' , bean.cliente_Origem.cidade );
      AdicionaValorParametro( 'viagem.documento1.pessoafiscal1.endereco.cidade.ibge' , bean.cliente_Origem.ibge );
      AdicionaValorParametro( 'viagem.documento1.pessoafiscal1.endereco.cep'         , bean.cliente_Origem.cep, true);

      {-- Destinatário --}
      AdicionaValorParametro( 'viagem.documento1.pessoafiscal2.tipo'        , '2' );
      //AdicionaValorParametro( 'viagem.documento1.pessoafiscal2.codigo'      , '' );

      AdicionaValorParametro( 'viagem.documento1.pessoafiscal2.documento.tipo', iif( length(bean.cliente_Destino.cnpj_cpf)=14, '1', '2'));
      AdicionaValorParametro( 'viagem.documento1.pessoafiscal2.documento.numero', bean.cliente_Destino.cnpj_cpf );

      AdicionaValorParametro( 'viagem.documento1.pessoafiscal2.nome'        , Copy(bean.cliente_Destino.nome,1,40) );

      vendereco      := bean.cliente_Destino.endereco;
      DivideEndereco( vendereco, vTipoLogradouro, vNumero );
      if vNumero ='' then vnumero := '0';
      AdicionaValorParametro( 'viagem.documento1.pessoafiscal2.endereco.logradouro'  , vTipoLogradouro+' '+vendereco );
      AdicionaValorParametro( 'viagem.documento1.pessoafiscal2.endereco.numero'      , vNumero );
      AdicionaValorParametro( 'viagem.documento1.pessoafiscal2.endereco.complemento' , Copy(bean.cliente_Destino.complemento,1,15) );
      AdicionaValorParametro( 'viagem.documento1.pessoafiscal2.endereco.bairro'      , bean.cliente_Destino.bairro, true );
      //AdicionaValorParametro( 'viagem.documento1.pessoafiscal2.pais.nome'   , '' );
      //AdicionaValorParametro( 'viagem.documento1.pessoafiscal2.estado.nome' , bean.cliente_Destino.uf );
      //AdicionaValorParametro( 'viagem.documento1.pessoafiscal2.cidade.nome' , bean.cliente_Destino.cidade );
      AdicionaValorParametro( 'viagem.documento1.pessoafiscal2.endereco.cidade.ibge' , bean.cliente_Destino.ibge );
      AdicionaValorParametro( 'viagem.documento1.pessoafiscal2.endereco.cep'         , bean.cliente_Destino.cep, true);




      {-- consignatario --}
      if bean.cliente_Consignatario.cnpj_cpf <> '' then
      begin
         AdicionaValorParametro( 'viagem.documento1.pessoafiscal3.tipo'        , '3' );
         //AdicionaValorParametro( 'viagem.documento1.pessoafiscal3.codigo'      , '' );
         if length(bean.cliente_Consignatario.cnpj_cpf)=14 then
            AdicionaValorParametro( 'viagem.documento1.pessoafiscal3.documento.tipo', '1' )
         else
            AdicionaValorParametro( 'viagem.documento1.pessoafiscal3.documento.tipo', '2' );
         AdicionaValorParametro( 'viagem.documento1.pessoafiscal3.documento.numero', bean.cliente_Consignatario.cnpj_cpf );

         AdicionaValorParametro( 'viagem.documento1.pessoafiscal3.nome'        , Copy(bean.cliente_Consignatario.nome,1,40) );

         vendereco      := bean.cliente_Consignatario.endereco;
         DivideEndereco( vendereco, vTipoLogradouro, vNumero );
         if vNumero ='' then vnumero := '0';
         AdicionaValorParametro( 'viagem.documento1.pessoafiscal3.endereco.logradouro'  , vTipoLogradouro+' '+vendereco  );
         AdicionaValorParametro( 'viagem.documento1.pessoafiscal3.endereco.numero'      , vNumero );

         AdicionaValorParametro( 'viagem.documento1.pessoafiscal3.endereco.complemento' , Copy( bean.cliente_Consignatario.complemento, 1, 15) );
         AdicionaValorParametro( 'viagem.documento1.pessoafiscal3.endereco.bairro'      , bean.cliente_Consignatario.bairro, true );
         //AdicionaValorParametro( 'viagem.documento1.pessoafiscal1.pais.nome'   , '' );
         //AdicionaValorParametro( 'viagem.documento1.pessoafiscal1.estado.nome' , bean.cliente_Origem.uf );
         //AdicionaValorParametro( 'viagem.documento1.pessoafiscal1.cidade.nome' , bean.cliente_Origem.cidade );
         AdicionaValorParametro( 'viagem.documento1.pessoafiscal3.endereco.cidade.ibge' , bean.cliente_Consignatario.ibge );
         AdicionaValorParametro( 'viagem.documento1.pessoafiscal3.endereco.cep'         , bean.cliente_Consignatario.cep, true);
      end;

      //AdicionaValorParametro( 'viagem.documento.complementar.qtde'  , '' );
      //AdicionaValorParametro( 'viagem.documento.complementarn.tipo' , '' );

      Result := True;
   except
      on e : exception do begin
         Result := False;
         MsgError := ( 'TAdministradoraPamcardVersao001.insereContratoFrete_documento' + e.message );
      end;
   end;
end;

function getIdEmissorIdentidade( id : string ) : string;
var
   iId : integer;
begin

   if tryStrToInt( id, iId ) then

   else
   begin
        if id = 'SSP'      then iId := 1
        else if id = 'CNH' then iId := 2
        else if id = 'MMA' then iId := 3
        else if id = 'DIC' then iId := 4
        else if id = 'POF' then iId := 5
        else if id = 'IFP' then iId := 6
        else if id = 'POM' then iId := 7
        else if id = 'IPF' then iId := 8
        else if id = 'SES' then iId := 9
        else if id = 'MAE' then iId := 10
        else if id = 'MEX' then iId := 11
        else iId := 0;
   end;
   if iId = 0 then   result := '' else result := intToStr( iId );
end;

{-----------------------------------------------------------------------------
  Procedure: insereContratoFrete_favorecido
  Autor:     Callian
  Data:      20-out-2011
-----------------------------------------------------------------------------}
function TAdministradoraPamcardVersao001.insereContratoFrete_favorecido: boolean;
var vii : integer;
     vTelefone, vddd ,
     vendereco, vTipoLogradouro, vNumero : string;

     procedure AdicionaFavorecidoContratado;
     begin
        AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.tipo', cTipoFavorecido_Contratado );
        if Length( bean.contratado.contratado_cnpj_cpf ) > 12 then
        begin
          AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.documento.qtde'   , '2' );
          AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.documento1.tipo'   , '1' );
          AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.documento1.numero' , bean.contratado.contratado_cnpj_cpf );
          AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.documento2.tipo'   , '6' );
          AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.documento2.numero' , bean.contratado.rntrc_codigo );
        end
        else
        begin
          AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.documento.qtde'   , '3' );
          AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.documento1.tipo'   , '2' );
          AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.documento1.numero' , bean.contratado.contratado_cnpj_cpf );
          AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.documento2.tipo'   , '3' );
          AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.documento2.numero' , bean.contratado.Identidade );
          AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.documento2.uf' , bean.contratado.uf );

          if (copy( bean.numeroCartaoFrete, 1 , 6 ) = '477116') then
          begin
             if bean.contratado.OrgaoEmissorIdentidade <> '' then
                AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.documento2.emissor.id' , getIdEmissorIdentidade( bean.contratado.OrgaoEmissorIdentidade ));
             if bean.contratado.DataEmissaoIdentidade <> 0 then
                AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.documento2.emissao.data' , FormatDateTime( 'dd/mm/yyyy', bean.contratado.DataEmissaoIdentidade) );
          end;

          AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.documento3.tipo'   , '5' );
          AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.documento3.numero' , bean.contratado.rntrc_codigo );
        end;


        AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.nome' , Copy(bean.contratado.nome_contratado,1,60) );

        if Length( bean.contratado.contratado_cnpj_cpf ) = 11 then
        begin
           if bean.contratado.DataNascimento <> 0 then
              AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.data.nascimento', FormatDateTime( 'dd/mm/yyyy', bean.contratado.DataNascimento ))
           else
              AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.data.nascimento', FormatDateTime( 'dd/mm/yyyy', bean.motorista.data_nascimento ));

           if (copy( bean.numeroCartaoFrete, 1 , 6 ) = '477116') then
           begin
              if bean.contratado.Nacionalidade ='BRASIL' Then
                 AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.nacionalidade.id', '1')
              else
                 AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.nacionalidade.id', '2');
              AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.naturalidade.ibge', bean.contratado.cidade_ibge  );
              AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.sexo', bean.contratado.sexo);
           end;
        end;
        vendereco      := bean.contratado.endereco;
        DivideEndereco( vendereco, vTipoLogradouro, vNumero );
        if vNumero ='' then vnumero := '0';

        AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.endereco.logradouro', vTipoLogradouro+' '+vendereco);
        AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.endereco.numero', vNumero);

        AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.endereco.complemento', Copy(bean.contratado.endereco_complemento,1,15));
        AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.endereco.bairro', bean.contratado.bairro, true);
        AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.endereco.cidade.ibge', bean.contratado.cidade_ibge);
        AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.endereco.cep', bean.contratado.cep, true);

        if (copy( bean.numeroCartaoFrete, 1 , 6 ) = '477116') then
        begin
           if Length( bean.contratado.contratado_cnpj_cpf ) = 11 then
           begin
              AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.endereco.propriedade.tipo.id', bean.contratado.endereco_propriedade_tipo);
              if bean.contratado.endereco_reside_desde <> 0 then
                 AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.endereco.reside.desde', formatDateTime('mm/yyyy', bean.contratado.endereco_reside_desde ) );
           end;
        end;


        vTelefone := bean.contratado.telefone1;
        DivideTelefone( vTelefone, vddd );
        AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.telefone.ddd', vddd);
        AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.telefone.numero', vTelefone);

        if (copy( bean.numeroCartaoFrete, 1 , 6 ) = '477116') then
        begin
           AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.celular.operadora.id', bean.contratado.celularOperadora);
        end;
        vTelefone := bean.contratado.celular;
        DivideTelefone( vTelefone, vddd );
        AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.celular.ddd', vddd);
        AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.celular.numero', vTelefone);

        AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.email', bean.contratado.email);


        if bean.tipoPagamentoContratoFrete = cTTransp_TipoPagamento_Cartao then
        begin
           AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.meio.pagamento'    , '1' );
           AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.cartao.numero'     , bean.numeroCartaoFrete );
        end
        else
        begin
           AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.meio.pagamento'    , '2' );

           AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.conta.banco'       , bean.DadosDeposito.banco );
           if bean.DadosDeposito.banco <> '001' then
              AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.conta.agencia'     , bean.DadosDeposito.agencia )
           else
           begin
              AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.conta.agencia'       , bean.DadosDeposito.agencia  );
              AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.conta.agencia.digito', bean.DadosDeposito.dvAgendia);
           end;

           if bean.DadosDeposito.banco = '341' then // se itau conta + dv
              AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.conta.numero'      , bean.DadosDeposito.conta+bean.DadosDeposito.dvConta )
           else if bean.DadosDeposito.banco = '237' then // se Bradesco conta + dv
              AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.conta.numero'      , bean.DadosDeposito.conta+bean.DadosDeposito.dvConta )
           else
              AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.conta.numero'      , bean.DadosDeposito.conta );




           if ( bean.tipoPagamentoContratoFrete = cTTransp_TipoPagamento_ContaDeposito ) then begin
              AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.conta.tipo', '1' ); {-- Conta corrente --}
           end else if ( bean.tipoPagamentoContratoFrete = cTTransp_TipoPagamento_ContaPoupanca ) then begin
              AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.conta.tipo', '2' ); {-- Conta poupança --}
           end;
        end;

        if bean.contratado.pessoa_tipo = 'J' then

     end;

     function  AdicionaFavorecidoMotorista : boolean; {#T16885}
     var
        cartaoMotorista : string;
     begin
        if Bean.ParametrosOperadora.Values['viagem_favorecido_motorista_cartao_numero'] = '' then
        begin
           if bean.pedagio.valorPedagio = 0 then
              cartaoMotorista := ''
           else if Bean.pedagio.NumeroCartaoPedagio = '' then
              cartaoMotorista := bean.numeroCartaoFrete
           else
              cartaoMotorista := Bean.pedagio.NumeroCartaoPedagio;
        end
        else
           cartaoMotorista := Bean.ParametrosOperadora.Values['viagem_favorecido_motorista_cartao_numero'];

        if cartaoMotorista = '' then {#T16885}

          result := false

        else
        begin


           AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.tipo', cTipoFavorecido_Motorista );

           AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.documento.qtde'   , '2' );
           AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.documento1.tipo'   , '2' );
           AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.documento1.numero' , bean.motorista.cpf );
           AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.documento2.tipo'   , '3' );
           AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.documento2.numero' , bean.motorista.rg );
           AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.documento2.uf' , bean.motorista.uf );

           AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.nome' , Copy(bean.motorista.nome,1,60) );

           AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.data.nascimento', FormatDateTime( 'dd/mm/yyyy', bean.motorista.data_nascimento ));

           if (copy( cartaoMotorista, 1 , 6 ) = '477116') then
           begin
              //if bean.motorista.Nacionalidade ='BRASIL' Then
                 AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.nacionalidade.id', '1'); // fixo por enquanto todo:
              //else
              //   AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.nacionalidade.id', '2');
              AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.naturalidade.ibge', bean.motorista.cidade_ibge  );
              AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.sexo', 'M' {bean.motorista.sexo});
           end;

           vendereco      := bean.motorista.endereco;
           DivideEndereco( vendereco, vTipoLogradouro, vNumero );
           if vNumero ='' then vnumero := '0';

           AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.endereco.logradouro', vTipoLogradouro+' '+vendereco);
           AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.endereco.numero', vNumero);

           AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.endereco.complemento', Copy(bean.motorista.endereco_complemento,1,15));
           AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.endereco.bairro', bean.motorista.bairro, true);
           AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.endereco.cidade.ibge', bean.motorista.cidade_ibge);
           AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.endereco.cep', bean.motorista.cep, true);

           if (copy( cartaoMotorista, 1 , 6 ) = '477116') then
           begin
              //AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.endereco.propriedade.tipo.id', bean.contratado.endereco_propriedade_tipo);
              //if bean.contratado.endereco_reside_desde <> 0 then
              //   AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.endereco.reside.desde', formatDateTime('mm/yyyy', bean.contratado.endereco_reside_desde ) );
           end;


           vTelefone := bean.motorista.telefone;
           DivideTelefone( vTelefone, vddd );
           AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.telefone.ddd', vddd);
           AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.telefone.numero', vTelefone);

           if (bean.tipoPagamentoContratoFrete = cTTransp_TipoPagamento_Cartao) then
           begin
              if cartaoMotorista <> '' then
              begin
                 AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.meio.pagamento'    , '1' );
                 AdicionaValorParametro( 'viagem.favorecido'+ IntToStr( vii + 1 ) +'.cartao.numero'     , cartaoMotorista );
              end;
           end
           else
           begin
              raise Exception.Create('Meio de pagametno não disponivel para favorecido motorista');
           end;

           result := true;

        end;
     end;

begin
   try
      vii := 0;
      if {(  ( (Bean.ParametrosOperadora.Values['viagem_parcela_adt_favorecido_tipo_id'] <> '') and (Bean.ParametrosOperadora.Values['viagem_parcela_adt_favorecido_tipo_id'] <> '1') ) or
            ( (Bean.ParametrosOperadora.Values['viagem_parcela_sld_favorecido_tipo_id'] <> '') and (Bean.ParametrosOperadora.Values['viagem_parcela_sld_favorecido_tipo_id'] <> '1') ) or
            ( (Bean.pedagio.NumeroCartaoPedagio<>'') and (bean.numeroCartaoFrete <> Bean.pedagio.NumeroCartaoPedagio) ) ) and
         ( Bean.ParametrosOperadora.Values['viagem_favorecido_motorista_cartao_numero'] <> '') }
         (bean.motorista.cpf <> Bean.contratado.contratado_cnpj_cpf) then
      begin
         AdicionaValorParametro( 'viagem.favorecido.qtde', 2 );
         AdicionaFavorecidoContratado;
         vii := 1;
         if not AdicionaFavorecidoMotorista then {#T16885}
            AdicionaValorParametro( 'viagem.favorecido.qtde', 1 );
      end
      else
      begin
         AdicionaValorParametro( 'viagem.favorecido.qtde', 1 );
         AdicionaFavorecidoContratado;
      end;
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
var
  impostos : integer;
begin
   try

      AdicionaValorParametro( 'viagem.frete.valor.bruto'   , FormatFloat( '###0.00', bean.valorTotalMotorista ) );
      //AdicionaValorParametro( 'viagem.frete.valor.liquido' , FormatFloat( '###0.00', bean.valorAdiantamento+bean.valorSaldo ) );
      impostos := 0;
      if bean.valorIRRF > 0 then inc(impostos);
      if bean.valorINSS > 0 then inc(impostos);
      if (bean.valorSest+bean.valorSest) > 0 then inc(impostos);
      AdicionaValorParametro( 'viagem.frete.item.qtde'     , intToStr(impostos));
      impostos:=0;
      if bean.valorIRRF > 0 then
      begin
         Inc( impostos );
         AdicionaValorParametro( 'viagem.frete.item'+intToStr(impostos)+'.tipo'    , '1');
         AdicionaValorParametro( 'viagem.frete.item'+intToStr(impostos)+'.valor'   , FormatFloat( '###0.00', bean.valorIRRF ) );
      end;
      if bean.valorINSS > 0 then
      begin
         Inc( impostos );
         AdicionaValorParametro( 'viagem.frete.item'+intToStr(impostos)+'.tipo'    , '2');
         AdicionaValorParametro( 'viagem.frete.item'+intToStr(impostos)+'.valor'   , FormatFloat( '###0.00', bean.valorINSS ) );
      end;
      if (bean.valorSest+bean.valorSest)>0 then
      begin
         Inc( impostos );
         AdicionaValorParametro( 'viagem.frete.item'+intToStr(impostos)+'.tipo'    , '3');
         AdicionaValorParametro( 'viagem.frete.item'+intToStr(impostos)+'.valor'   , FormatFloat( '###0.00', bean.valorSest+bean.valorSenat ) );
      end;

      if Bean.Descontos.first <> nil then
      repeat
         Inc( impostos );
         AdicionaValorParametro( 'viagem.frete.item'+intToStr(impostos)+'.tipo'    , '41');
         AdicionaValorParametro( 'viagem.frete.item'+intToStr(impostos)+'.valor'   , FormatFloat( '###0.00', Bean.Descontos.Item.valor ) );
      until bean.Descontos.Next = nil;

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
   VAMinimoSaldo : Extended;
begin
   try
      vii := 0;
      if bean.valorAdiantamento>0 then
         vii:=vii+Bean.ParcelasAdiantamento.Count;
      if bean.valorSaldo>0 then
         vii:=vii+1;

      if (bean.ValorValeAbastecimento>0) and ( Bean.ParametrosOperadora.Values['viagem_quitacao'] = 'S' ) then
      begin
         vii:=vii+1;
         VAMinimoSaldo := StrToFloatDef( Bean.ParametrosOperadora.Values['viagem_quitacao'], 200);
         if bean.ValorValeAbastecimento > VAMinimoSaldo then
            vii:=vii+1;
      end;

      AdicionaValorParametro( 'viagem.parcela.qtde', vii);
      vii:=0;
      if bean.valorAdiantamento>0 then
      begin
         Bean.ParcelasAdiantamento.first;
         repeat
            Inc(vii);

            AdicionaValorParametro( 'viagem.parcela'+intToStr(vii)+'.efetivacao.tipo' , copy(Bean.ParametrosOperadora.Values['viagem_parcelaA_efetivacao_tipo']+'1',1,1)); {-- Manual --}  {#T parametrizado}
            AdicionaValorParametro( 'viagem.parcela'+intToStr(vii)+'.valor'           , FormatFloat('##0.00', Bean.ParcelasAdiantamento.Item.valor ));
            AdicionaValorParametro( 'viagem.parcela'+intToStr(vii)+'.subtipo'         , '1'); {-- Adiantamento --}
            AdicionaValorParametro( 'viagem.parcela'+intToStr(vii)+'.base'            , 'N');
            AdicionaValorParametro( 'viagem.parcela'+intToStr(vii)+'.status.id'       , copy(Bean.ParametrosOperadora.Values['viagem_parcelaA_status_id']+'2',1,1)); {-- Liberada --}
            if Bean.ParametrosOperadora.Values['viagem_parcela_adt_favorecido_tipo_id'] <> '' then
               AdicionaValorParametro( 'viagem.parcela'+intToStr(vii)+'.favorecido.tipo.id', Bean.ParametrosOperadora.Values['viagem_parcela_adt_favorecido_tipo_id']); {-- quem é favorecido... --}
            AdicionaValorParametro( 'viagem.parcela'+intToStr(vii)+'.data'            , formatDatetime('dd/mm/yyyy', now+Bean.ParcelasAdiantamento.Item.dias) );
            AdicionaValorParametro( 'viagem.parcela'+intToStr(vii)+'.favorecido'      , '1'); {-- Contratado --}
         until Bean.ParcelasAdiantamento.Next = nil;
      end;

      if bean.valorSaldo >0 then
      begin
         Inc(vii);
         if ( Bean.ParametrosOperadora.Values['viagem_quitacao'] = 'S') then
           AdicionaValorParametro( 'viagem.parcela'+intToStr(vii)+'.efetivacao.tipo' , '4') // somente com entrega de documentos
         else
           AdicionaValorParametro( 'viagem.parcela'+intToStr(vii)+'.efetivacao.tipo' , copy(Bean.ParametrosOperadora.Values['viagem_parcelaS_efetivacao_tipo']+'1',1,1)); {-- Manual --}  {#T parametrizado}
         AdicionaValorParametro( 'viagem.parcela'+intToStr(vii)+'.valor'           , FormatFloat('##0.00', bean.valorSaldo ) );
         AdicionaValorParametro( 'viagem.parcela'+intToStr(vii)+'.subtipo'         , '3'); {-- Saldo Final --}
         AdicionaValorParametro( 'viagem.parcela'+intToStr(vii)+'.base'            , 'N');
         if Bean.ParametrosOperadora.Values['viagem_parcela_sld_favorecido_tipo_id'] <> '' then
            AdicionaValorParametro( 'viagem.parcela'+intToStr(vii)+'.favorecido.tipo.id', Bean.ParametrosOperadora.Values['viagem_parcela_sld_favorecido_tipo_id']); {-- quem é favorecido... --}

         if Bean.ParametrosOperadora.Values['viagem_parcelaS_status_id'] <> '' then
            AdicionaValorParametro( 'viagem.parcela'+intToStr(vii)+'.status.id'       , copy(Bean.ParametrosOperadora.Values['viagem_parcelaS_status_id']+'2',1,1)); {-- Liberada --}

         AdicionaValorParametro( 'viagem.parcela'+intToStr(vii)+'.data'            , formatDatetime('dd/mm/yyyy', now) );
         AdicionaValorParametro( 'viagem.parcela'+intToStr(vii)+'.favorecido'      , '1'); {-- Contratado --}
      end;

      if (bean.ValorValeAbastecimento>0) and ( Bean.ParametrosOperadora.Values['viagem_quitacao'] = 'S' ) then
      begin
         if bean.ValorValeAbastecimento > VAMinimoSaldo then
         begin
            Inc(vii);
            AdicionaValorParametro( 'viagem.parcela'+intToStr(vii)+'.efetivacao.tipo' , copy(Bean.ParametrosOperadora.Values['viagem_parcelaV_efetivacao_tipo']+copy(Bean.ParametrosOperadora.Values['viagem_parcelaA_efetivacao_tipo']+'1',1,1),1,1)); {-- Manual --}  {#T parametrizado}
            AdicionaValorParametro( 'viagem.parcela'+intToStr(vii)+'.valor'           , FormatFloat('##0.00', bean.ValorValeAbastecimento - VAMinimoSaldo ) );
            AdicionaValorParametro( 'viagem.parcela'+intToStr(vii)+'.subtipo'         , '5'); {-- Vale Abastecimento --}
            AdicionaValorParametro( 'viagem.parcela'+intToStr(vii)+'.base'            , 'N');
            if Bean.ParametrosOperadora.Values['viagem_parcela_sld_favorecido_tipo_id'] <> '' then
               AdicionaValorParametro( 'viagem.parcela'+intToStr(vii)+'.favorecido.tipo.id', Bean.ParametrosOperadora.Values['viagem_parcela_sld_favorecido_tipo_id']); {-- quem é favorecido... --}
            AdicionaValorParametro( 'viagem.parcela'+intToStr(vii)+'.status.id'       ,  copy(Bean.ParametrosOperadora.Values['viagem_parcelaA_status_id']+'2',1,1)); {-- Liberada --}
            AdicionaValorParametro( 'viagem.parcela'+intToStr(vii)+'.data'            , formatDatetime('dd/mm/yyyy', now) );
            AdicionaValorParametro( 'viagem.parcela'+intToStr(vii)+'.favorecido'      , '1'); {-- Contratado --}
         end;

         Inc(vii);
         AdicionaValorParametro( 'viagem.parcela'+intToStr(vii)+'.efetivacao.tipo' , '4'); // somente com entrega de documentos
         AdicionaValorParametro( 'viagem.parcela'+intToStr(vii)+'.valor'           , FormatFloat('##0.00', VAMinimoSaldo ) );
         AdicionaValorParametro( 'viagem.parcela'+intToStr(vii)+'.subtipo'         , '5'); {-- Vale Abastecimento --}
         AdicionaValorParametro( 'viagem.parcela'+intToStr(vii)+'.base'            , 'N');
         if Bean.ParametrosOperadora.Values['viagem_parcela_sld_favorecido_tipo_id'] <> '' then
            AdicionaValorParametro( 'viagem.parcela'+intToStr(vii)+'.favorecido.tipo.id', Bean.ParametrosOperadora.Values['viagem_parcela_sld_favorecido_tipo_id']); {-- quem é favorecido... --}

         if Bean.ParametrosOperadora.Values['viagem_parcelaS_status_id'] <> '' then
            AdicionaValorParametro( 'viagem.parcela'+intToStr(vii)+'.status.id'       , copy(Bean.ParametrosOperadora.Values['viagem_parcelaS_status_id']+'2',1,1)); {-- Liberada --}

         AdicionaValorParametro( 'viagem.parcela'+intToStr(vii)+'.data'            , formatDatetime('dd/mm/yyyy', now) );
         AdicionaValorParametro( 'viagem.parcela'+intToStr(vii)+'.favorecido'      , '1'); {-- Contratado --}
      end;


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
      if bean.pedagio.valorPedagio > 0 then
      begin
         if bean.pedagio.formaPagamentoPedagio = '1' then
         begin
            AdicionaValorParametro( 'viagem.pedagio.solucao.id'    , '5'); //pancard

            AdicionaValorParametro( 'viagem.pedagio.valor'         , formatFloat('##0.00', bean.pedagio.valorPedagio) );
            AdicionaValorParametro( 'viagem.pedagio.status.id'     , copy(Bean.ParametrosOperadora.Values['viagem_pedagio_status_id']+'2',1,1));
            AdicionaValorParametro( 'viagem.pedagio.roteirizar'    , 'N');
            AdicionaValorParametro( 'viagem.pedagio.obter.praca'   , 'N');
            //AdicionaValorParametro( 'viagem.pedagio.utiliza.saldo' , '');
            if (Bean.pedagio.NumeroCartaoPedagio<>'') and (bean.numeroCartaoFrete <> Bean.pedagio.NumeroCartaoPedagio) then
               AdicionaValorParametro( 'viagem.pedagio.cartao.numero', Bean.pedagio.NumeroCartaoPedagio)
            else
               AdicionaValorParametro( 'viagem.pedagio.cartao.numero', bean.numeroCartaoFrete);
         end
         else
         begin
            if Bean.pedagio.administradorPedagio = 'DBTRANS' then
               AdicionaValorParametro( 'viagem.pedagio.solucao.id'    , '1')
            else if Bean.pedagio.administradorPedagio = 'BRADESCO' then
               AdicionaValorParametro( 'viagem.pedagio.solucao.id'    , '2')
            else if Bean.pedagio.administradorPedagio = 'REPOM' then
               AdicionaValorParametro( 'viagem.pedagio.solucao.id'    , '3')
            else if Bean.pedagio.administradorPedagio = 'VIAFACIL' then
               AdicionaValorParametro( 'viagem.pedagio.solucao.id'    , '4');
         end;
      end;
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
      AdicionaValorParametro( 'viagem.quitacao.prazo'                  , (Bean.ParametrosOperadora.Values['viagem.quitacao.prazo']+'0')[1]); // Prazo em que o valor de saldo final será liberado após a confirmação da quitação.
      AdicionaValorParametro( 'viagem.quitacao.indicador'              , (Bean.ParametrosOperadora.Values['viagem.quitacao.indicador']+'S')[1]); // Informação se a quitação oferecida pelo Pamcard será utilizada
      AdicionaValorParametro( 'viagem.quitacao.entrega.ressalva'       , (Bean.ParametrosOperadora.Values['viagem.quitacao.entrega.ressalva']+'S')[1]); // Informação de aceite ou não de ressalva (perda) na entrega dos documentos.
      AdicionaValorParametro( 'viagem.quitacao.origem.pagamento'       , (Bean.ParametrosOperadora.Values['viagem.quitacao.origem.pagamento']+'2')[1]); // Local responsável pela liberação do pagamento no cartão do motorista após a quitação (Posto – Automático | Pamcard – Automático | Contratante – Manual)
      if Bean.ParametrosOperadora.Values['viagem.comprovacao.observacao'] = '' then
         AdicionaValorParametro( 'viagem.comprovacao.observacao'          , 'Verificar quantidade entregue')
      else
         AdicionaValorParametro( 'viagem.comprovacao.observacao'          , Bean.ParametrosOperadora.Values['viagem.comprovacao.observacao']); //

      //perfil
      //1 Carga Seca
      //2 À Granel
      AdicionaValorParametro( 'viagem.carga.perfil.id'                 , (Bean.ParametrosOperadora.Values['viagem.carga.perfil.id']+'2')[1]);

      //3 - integral
      //2 - parcial
      if bean.TipoTolerancia = 'E' then
         AdicionaValorParametro( 'viagem.quitacao.desconto.tipo'         , '2')
      else {if bean.TipoTolerancia = 'E' then}
         AdicionaValorParametro( 'viagem.quitacao.desconto.tipo'         , '3');

      AdicionaValorParametro( 'viagem.quitacao.desconto.tolerancia',   FormatFloat('0.00000', bean.PercentualTolerancia ) );
      AdicionaValorParametro( 'viagem.carga.valorunitario',            FormatFloat('0.0000', bean.valorNotaFiscal / bean.pesoSaida) );

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
var
  vii : integer;
  ultimoIbge : string;
begin
   try
//      if not VarIsNull( ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'PMCRV_ID'  ) ) then begin
//         AdicionaValorParametro( 'viagem.rota.id'   , ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'PMCRV_CODIGO'    ) );
//         AdicionaValorParametro( 'viagem.rota.nome' , ResultadoNomeadoValor( dadosConhecimentoTransporte, 0, 'PMCRV_DESCRICAO' ) );
//      end;


      if Bean.rota.codigoRota <> 'SEM ROTA' then
      begin
         if (Bean.ParametrosOperadora.Values['viagem_rota_id'] <> '') then
            AdicionaValorParametro( 'viagem.rota.id'          , Bean.ParametrosOperadora.Values['viagem_rota_id'] )
         else if (     ( TContrato_0000(BeanTXT).reg2000.First <> nil )
                   and ( T2000( TContrato_0000(BeanTXT).reg2000.First).CodigoRotaAdministradora <> '')  ) then
            AdicionaValorParametro( 'viagem.rota.id'          , T2000( TContrato_0000(BeanTXT).reg2000.First).CodigoRotaAdministradora )
         else
            AdicionaValorParametro( 'viagem.rota.nome'          , bean.rota.codigoRota );
      end
      else
      if bean.rota.pontosRota.first <> nil then
      begin
         AdicionaValorParametro( 'viagem.origem.cidade.ibge'  , bean.rota.pontosRota.first.ibge_origem );
         AdicionaValorParametro( 'viagem.destino.cidade.ibge' , bean.rota.pontosRota.last.ibge_destino );
         if bean.rota.pontosRota.Count > 1 then
         begin
           AdicionaValorParametro( 'viagem.ponto.qtde'          , bean.rota.pontosRota.Count+1);
           if bean.rota.pontosRota.first <> nil then
           begin
              vii := 1;
              repeat
                 AdicionaValorParametro( 'viagem.ponto'+intToStr(vii)+'.cidade.ibge'    , bean.rota.pontosRota.Item.ibge_origem);
                 ultimoIbge := bean.rota.pontosRota.Item.ibge_destino;
                 inc( vii);
              until bean.rota.pontosRota.Next = nil;
              AdicionaValorParametro( 'viagem.ponto'+intToStr(vii)+'.cidade.ibge'    , ultimoIbge);
           end;
         end;
      end;
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
var
   vVeiculoQuantidade : integer;
begin
   try
      {-- Quantidade Veículo --}
      vVeiculoQuantidade := bean.veiculo.carretas.Count+1;

      AdicionaValorParametro( 'viagem.veiculo.qtde' , vVeiculoQuantidade );


      {-- Placas --}
      vVeiculoQuantidade := 1;
      AdicionaValorParametro( 'viagem.veiculo1.placa', bean.veiculo.placa );
      AdicionaValorParametro( 'viagem.veiculo1.rntrc', bean.veiculo.rntrc_codigo );
      Inc(vVeiculoQuantidade);

      if bean.veiculo.carretas.first <> nil then
      repeat
         AdicionaValorParametro( 'viagem.veiculo'+intToStr(vVeiculoQuantidade)+'.placa', bean.veiculo.carretas.Item.placa );
         AdicionaValorParametro( 'viagem.veiculo'+intToStr(vVeiculoQuantidade)+'.rntrc', bean.veiculo.carretas.Item.rntrc_codigo );
         Inc(vVeiculoQuantidade);
      until bean.veiculo.carretas.Next = nil;

      if (bean.veiculo.dadosPamcary.CaterogiraVeiculoPamcad <> '') and (bean.veiculo.dadosPamcary.CaterogiraVeiculoPamcad <> '0') then
         AdicionaValorParametro( 'viagem.veiculo.categoria' , bean.veiculo.dadosPamcary.CaterogiraVeiculoPamcad )
      else
         AdicionaValorParametro( 'viagem.veiculo.categoria' , GetCategoriaVeiculo(Bean.veiculo.categoriaveiculo) );

      Result := True;
   except
      on e : exception do begin
         Result := False;
         MsgError := ( 'TAdministradoraPamcardVersao001.insereContratoFrete_veiculo' + e.message );
      end;
   end;
end;

//{-----------------------------------------------------------------------------
//  Procedure: insereFavorecido
//  Autor:     Callian
//  Data:      20-out-2011
//-----------------------------------------------------------------------------}
//function TAdministradoraPamcardVersao001.insereFavorecido: boolean;
//begin
//   try
//      Result := True;
//
//      AssignFile ( DiretorioSaida + '\insereFavorecido.txt' );
//      Rewrite    ( ArquivoPamcard );
//      try
//
//        if ( Result ) then begin
//           AdicionaValorParametro( 'viagem.contratante.documento.numero'    , '' );
//           AdicionaValorParametro( 'viagem.unidade.documento.tipo'          , '' );
//           AdicionaValorParametro( 'viagem.unidade.documento.numero'        , '' );
//           AdicionaValorParametro( 'viagem.favorecido.documento.qtde'       , '' );
//           AdicionaValorParametro( 'viagem.favorecido.documentoN.tipo'      , '' );
//           AdicionaValorParametro( 'viagem.favorecido.documentoN.numero'    , '' );
//           AdicionaValorParametro( 'viagem.favorecido.documentoN.uf'        , '' );
//           AdicionaValorParametro( 'viagem.favorecido.nome'                 , '' );
//           AdicionaValorParametro( 'viagem.favorecido.data.nascimento'      , '' );
//           AdicionaValorParametro( 'viagem.favorecido.endereco.logradouro'  , '' );
//           AdicionaValorParametro( 'viagem.favorecido.endereco.numero'      , '' );
//           AdicionaValorParametro( 'viagem.favorecido.endereco.complemento' , '' );
//           AdicionaValorParametro( 'viagem.favorecido.endereco.bairro'      , '' );
//           AdicionaValorParametro( 'viagem.favorecido.endereco.cidade.ibge' , '' );
//           AdicionaValorParametro( 'viagem.favorecido.endereco.cidade'      , '' );
//           AdicionaValorParametro( 'viagem.favorecido.endereco.uf'          , '' );
//           AdicionaValorParametro( 'viagem.favorecido.endereco.pais'        , '' );
//           AdicionaValorParametro( 'viagem.favorecido.endereco.cep'         , '' );
//           AdicionaValorParametro( 'viagem.favorecido.telefone.ddd'         , '' );
//           AdicionaValorParametro( 'viagem.favorecido.telefone.numero'      , '' );
//           AdicionaValorParametro( 'viagem.favorecido.celular.ddd'          , '' );
//           AdicionaValorParametro( 'viagem.favorecido.celular.numero'       , '' );
//           AdicionaValorParametro( 'viagem.favorecido.email'                , '' );
//        end;
//
//      finally
//         CloseFile( ArquivoPamcard );
//      end;
//   except
//      on e : exception do begin
//         Result := False;
//         MsgError := ( 'TAdministradoraPamcardVersao001.insereFavorecido' + e.message );
//      end;
//   end;
//end;

{-----------------------------------------------------------------------------
  Procedure: cancelaContratoFrete
  Autor:     Callian
  Data:      20-out-2011
-----------------------------------------------------------------------------}
function TAdministradoraPamcardVersao001.cancelaContratoFrete: boolean;
var
 diretorioArquivo : string;
begin
   try
      ArquivoGerado.Clear;
      AdicionaValorParametro( 'transacional.operacao', '4' );

      AdicionaValorParametro( 'viagem.id'                           , bean.NumeroViagem );
      AdicionaValorParametro( 'viagem.id.cliente'                   , Bean.numeroContratoFrete );
      AdicionaValorParametro( 'viagem.contratante.documento.numero' , Bean.cnpj_matriz );
      //AdicionaValorParametro( 'viagem.unidade.documento.tipo'       , '1' );
      //AdicionaValorParametro( 'viagem.unidade.documento.numero'     , Bean.cnpj_filial );
      AdicionaValorParametro( 'viagem.antt.cancelamento.motivo'     , 'CANCELAMENTO DE CONTRATO' );
      AdicionaValorParametro( 'viagem.antt.ciot.numero'             , copy(Bean.NumeroCIOT,1,12) );

      diretorioArquivo := DiretorioSaida + '\cancelaContratoFrete_'+ bean.numeroContratoFrete  +'.txt';
      ArquivoGerado.SaveToFile( diretorioArquivo );
      Situacao := tsrAguardando {'A'};
      msgError := 'Arquivo cancelamento gerado, aguarde retorno da administradora';
      Result := True;
   except
      on e : exception do begin
         Result := False;
         Situacao := tsrErro {E};
         MsgError := e.message;
         LogIt(  e.message );
      end;
   end;
end;


procedure TAdministradoraPamcardVersao001.SetDadosOperadora(
  const Bean: TBeanOperadora);
begin
  inherited;
  operadora := TBeanOperadoraPamcard( bean );
  Self.DiretorioSaida := operadora.diretorioSaida;
  Self.DiretorioEntrada := operadora.diretorioEntrada;

  ValidaCriaDiretorio(Self.DiretorioEntrada);
  ValidaCriaDiretorio(Self.DiretorioSaida);
end;

function TAdministradoraPamcardVersao001.FormatFloat(format: string;
  valor: extended): string;
var
  fs : TFormatSettings;
begin
  fs.DecimalSeparator := '.';
  result := sysutils.FormatFloat( format, valor, fs );
end;


function TAdministradoraPamcardVersao001.verificaRetorno: boolean;
var
  diretorioArquivo : string;
begin
   try
      if bean.cidadeMatriz='' then //cancelamento
      begin
         diretorioArquivo := DiretorioEntrada + '\cancelaContratoFrete_'+ bean.numeroContratoFrete  +'.txt';
         result := FileExists( diretorioArquivo );
         if result then
         begin
            ArquivoRecebido.LoadFromFile( diretorioArquivo );

            if ArquivoRecebido.Values['mensagem.codigo'] <> '0' then
            begin
               MsgError := 'Pamcard informa :'+ArquivoRecebido.Values['mensagem.codigo']+' '+ArquivoRecebido.Values['mensagem.descricao'];
               Situacao := tsrErro {E};
            end
            else
            begin
               Situacao := tsrCancelado {'C'};
               CIOT     := '';
               Protocolo:= '';
               msgError := ArquivoRecebido.Values['mensagem.descricao'];
            end;
            DeleteFile( PChar( diretorioArquivo ) );
         end else
            Situacao := tsrAguardando {'A'};
      end
      else
      begin
         diretorioArquivo := DiretorioEntrada + '\insereContratoFrete_'+ bean.numeroContratoFrete  +'.txt';
         result := FileExists( diretorioArquivo );
         if result then
         begin
            ArquivoRecebido.LoadFromFile( diretorioArquivo );

            if ArquivoRecebido.Values['mensagem.codigo'] <> '0' then
            begin
               MsgError := 'Pamcard informa :'+ArquivoRecebido.Values['mensagem.codigo']+' '+ArquivoRecebido.Values['mensagem.descricao'];
               Situacao := tsrErro {E};
            end
            else
            begin
               Situacao := tsrAprovado {'R'};
               CIOT     := ArquivoRecebido.Values['viagem.antt.ciot.numero']+ArquivoRecebido.Values['viagem.antt.ciot.protocolo'];
               Protocolo:= ArquivoRecebido.Values['viagem.id'];
               msgError := 'Numero viagem : '+ArquivoRecebido.Values['viagem.id'];
               msgError := 'Protocolo: '+ArquivoRecebido.Values['viagem.antt.ciot.protocolo'];
            end;
            DeleteFile( PChar( diretorioArquivo ) );
         end else
            Situacao := tsrAguardando {'A'};
      end;
   except
      on e : exception do begin
         Result := False;
         Situacao := tsrErro {E};
         MsgError := 'TAdministradoraPamcardVersao001.insereContratoFrete' + e.message;
         LogIt( e.message );
      end;
   end;
end;

procedure TAdministradoraPamcardVersao001.AdicionaValorParametro(
  campo: string; valor: Variant; obrigatorio: Boolean; Tipo: char;
  tamanhomaximo: Integer);
var
  linha : string;
begin
   if tipo = 'S' then
   begin
      linha := trim(VarToStr( valor ));
      linha := Copy(linha, 1, tamanhomaximo );
      linha := RemoveCaracteresEspeciais( linha );
   end;
   if obrigatorio and (linha = '') then raise exception.Create( 'Valor obrigatório não preenchido '+campo );

   if (linha <> '') then
   begin
      if arquivogerado.IndexOfName(campo)<>-1 then    {#T16885}
        ArquivoGerado.Values[ campo ] := linha
      else
        ArquivoGerado.Add( campo+'='+linha );
   end;
end;

(*
function TAdministradoraPamcardVersao001.insereContratoFrete_ProtadorCartao: boolean;
var
    vendereco, vTipoLogradouro, vNumero : string;
    vTelefone, vddd  : string;
begin
  try
     AdicionaValorParametro( 'viagem.cartao.numero',                               bean.numeroCartaoFrete );
     if Length( bean.PortadorCartao.CNPJ_CPF ) = 11 then
       AdicionaValorParametro( 'viagem.cartao.portador.documento.tipo',              '2')
     else
       raise exception.create('PortadorCartao.CNPJ_CPF somente permitido CPF');
     AdicionaValorParametro( 'viagem.cartao.portador.documento.numero',            bean.PortadorCartao.CNPJ_CPF);
     AdicionaValorParametro( 'viagem.cartao.portador.rg',                          bean.PortadorCartao.rg);
     AdicionaValorParametro( 'viagem.cartao.portador.uf.rg',                       bean.PortadorCartao.rg_uf);
     AdicionaValorParametro( 'viagem.cartao.portador.rg.emissor.id',               bean.PortadorCartao.rg_emissor);
     AdicionaValorParametro( 'viagem.cartao.portador.rg.emissao.data',             formatDateTime('dd/mm/yyyy', bean.PortadorCartao.rg_data_emissao));
     AdicionaValorParametro( 'viagem.cartao.portador.rntrc',                       bean.PortadorCartao.rntrc);
     AdicionaValorParametro( 'viagem.cartao.portador.nome',                        bean.PortadorCartao.nome);
     AdicionaValorParametro( 'viagem.cartao.portador.data.nascimento',             formatDateTime('dd/mm/yyyy', bean.PortadorCartao.data_nascimento));
     if upperCase(bean.PortadorCartao.endereco_pais) = 'BRASIL' then //codigo bacen
        AdicionaValorParametro( 'viagem.cartao.portador.nacionalidade.id',            '1')
     else
        AdicionaValorParametro( 'viagem.cartao.portador.nacionalidade.id',            '2');
     AdicionaValorParametro( 'viagem.cartao.portador.naturalidade.ibge',           bean.PortadorCartao.naturalidade_ibge);
     AdicionaValorParametro( 'viagem.cartao.portador.sexo',                        bean.PortadorCartao.sexo);

     vendereco      := bean.PortadorCartao.endereco;
     DivideEndereco( vendereco, vTipoLogradouro, vNumero );
     if vNumero ='' then vnumero := '0';
     AdicionaValorParametro( 'viagem.cartao.portador.endereco.logradouro',         vTipoLogradouro+' '+vendereco);
     AdicionaValorParametro( 'viagem.cartao.portador.endereco.numero',             vNumero);
     AdicionaValorParametro( 'viagem.cartao.portador.endereco.complemento',        bean.PortadorCartao.endereco_complemento);
     AdicionaValorParametro( 'viagem.cartao.portador.endereco.bairro',             bean.PortadorCartao.endereco_bairro);
     AdicionaValorParametro( 'viagem.cartao.portador.endereco.cidade',             bean.PortadorCartao.endereco_cidade);
     AdicionaValorParametro( 'viagem.cartao.portador.endereco.uf',                 bean.PortadorCartao.endereco_uf);

     AdicionaValorParametro( 'viagem.cartao.portador.endereco.pais',               bean.PortadorCartao.endereco_pais);

     AdicionaValorParametro( 'viagem.cartao.portador.endereco.cep',                bean.PortadorCartao.endereco_cep);
     AdicionaValorParametro( 'viagem.cartao.portador.endereco.propriedade.tipo.id',bean.PortadorCartao.endereco_propriedade_tipo);
     AdicionaValorParametro( 'viagem.cartao.portador.endereco.reside.desde',       formatDateTime('mm/yyyy',bean.PortadorCartao.endereco_reside_desde));

     vTelefone := bean.PortadorCartao.telefone;
     DivideTelefone( vTelefone, vddd );
     AdicionaValorParametro( 'viagem.cartao.portador.telefone.ddd',                vddd);
     AdicionaValorParametro( 'viagem.cartao.portador.telefone.numero',             vTelefone);

     AdicionaValorParametro( 'viagem.cartao.portador.celular.operadora.id',        bean.PortadorCartao.celular_operadora);
     vTelefone := bean.PortadorCartao.telefone;
     DivideTelefone( vTelefone, vddd );
     AdicionaValorParametro( 'viagem.cartao.portador.celular.ddd',                 vddd);
     AdicionaValorParametro( 'viagem.cartao.portador.celular.numero',              vtelefone);

     AdicionaValorParametro( 'viagem.cartao.portador.email',                       bean.PortadorCartao.email);
     AdicionaValorParametro( 'viagem.cartao.empresa.nome',                         bean.PortadorCartao.empresa_nome);
     AdicionaValorParametro( 'viagem.cartao.empresa.cnpj',                         bean.PortadorCartao.empresa_cnpj);
     AdicionaValorParametro( 'Viagem.cartao.empresa.rntrc',                        bean.PortadorCartao.empresa_rntrc);
     result := true;
  except
      on e : exception do begin
         Result := False;
         Situacao := tsrErro {E};
         MsgError := 'TAdministradoraPamcardVersao001.insereContratoFrete_ProtadorCartao' + e.message;
         LogIt( e.message );
      end;
  end;
end;
*)
function TAdministradoraPamcardVersao001.AlteraContrato: boolean;
var
   txt : TAlteracaoContrato_0000;
   txtParcela : TAlteracaoContrato_0100;
   parcela : integer;
begin
      txt := TAlteracaoContrato_0000( self.BeanTXT );
      ArquivoGerado.Clear;
      AdicionaValorParametro( 'transacional.operacao', '31' );

      AdicionaValorParametro( 'viagem.contratante.documento.numero',  txt.cnpjMatriz );
      if txt.cnpjMatriz <> txt.cnpjFilial then
      begin
         AdicionaValorParametro( 'viagem.unidade.documento.tipo'       , 1 ); //numero da filial removido a pedido do CAIO conforme conversa com EDER
         AdicionaValorParametro( 'viagem.unidade.documento.numero'     , txt.cnpjFilial );
      end;
      if txt.CIOT = '' then
         AdicionaValorParametro( 'viagem.id.cliente'                   , txt.numeroContratoFrete )
      else
         AdicionaValorParametro( 'viagem.antt.ciot.numero', txt.CIOT );

      AdicionaValorParametro( 'viagem.parcela.qtde', intToStr( txt.reg0100.count ) );

      parcela := 1;
      txtParcela := TAlteracaoContrato_0100(txt.Reg0100.First);
      repeat
         if txtparcela.TipoParcela = 'ADT' then
         begin
            AdicionaValorParametro( 'viagem.parcela'+intToStr(parcela)+'.efetivacao.tipo' , copy(Bean.ParametrosOperadora.Values['viagem_parcelaA_efetivacao_tipo']+'1',1,1)); {-- Manual --}  {#T parametrizado}
            AdicionaValorParametro( 'viagem.parcela'+intToStr(parcela)+'.valor'           , FormatFloat('##0.00', txtparcela.Valor ));
            AdicionaValorParametro( 'viagem.parcela'+intToStr(parcela)+'.subtipo'         , '1'); {-- Adiantamento --}
            AdicionaValorParametro( 'viagem.parcela'+intToStr(parcela)+'.base'            , 'N');
            AdicionaValorParametro( 'viagem.parcela'+intToStr(parcela)+'.status.id'       , copy(Bean.ParametrosOperadora.Values['viagem_parcelaA_status_id']+'2',1,1)); {-- Liberada --}
            if Bean.ParametrosOperadora.Values['viagem_parcela_adt_favorecido_tipo_id'] <> '' then
               AdicionaValorParametro( 'viagem.parcela'+intToStr(parcela)+'.favorecido.tipo.id', Bean.ParametrosOperadora.Values['viagem_parcela_adt_favorecido_tipo_id']); {-- quem é favorecido... --}
            //AdicionaValorParametro( 'viagem.parcela'+intToStr(parcela)+'.data'            , formatDatetime('dd/mm/yyyy', now+txtparcela.) );
            //AdicionaValorParametro( 'viagem.parcela'+intToStr(parcela)+'.numero.cliente'      , '1');
         end
         else if txtparcela.TipoParcela = 'SDL' then
         begin
            AdicionaValorParametro( 'viagem.parcela'+intToStr(parcela)+'.efetivacao.tipo' , copy(Bean.ParametrosOperadora.Values['viagem_parcelaS_efetivacao_tipo']+'1',1,1)); {-- Manual --}  {#T parametrizado}
            AdicionaValorParametro( 'viagem.parcela'+intToStr(parcela)+'.valor'           , FormatFloat('##0.00', txtparcela.Valor ) );
            AdicionaValorParametro( 'viagem.parcela'+intToStr(parcela)+'.subtipo'         , '3'); {-- Saldo Final --}
            AdicionaValorParametro( 'viagem.parcela'+intToStr(parcela)+'.base'            , 'N');
            if Bean.ParametrosOperadora.Values['viagem_parcela_sld_favorecido_tipo_id'] <> '' then
               AdicionaValorParametro( 'viagem.parcela'+intToStr(parcela)+'.favorecido.tipo.id', Bean.ParametrosOperadora.Values['viagem_parcela_sld_favorecido_tipo_id']); {-- quem é favorecido... --}
            AdicionaValorParametro( 'viagem.parcela'+intToStr(parcela)+'.status.id'       , '2'); {-- Liberada --}
            AdicionaValorParametro( 'viagem.parcela'+intToStr(parcela)+'.data'            , formatDatetime('dd/mm/yyyy', now) );
            AdicionaValorParametro( 'viagem.parcela'+intToStr(parcela)+'.numero.cliente'      , '1'); {-- Contratado --}

         end;
         txtParcela := TAlteracaoContrato_0100(txt.Reg0100.Next);
      until not Assigned( txtParcela );


end;

end.




