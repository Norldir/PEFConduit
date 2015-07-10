unit uAdministradoraNDDVersao003ws;

interface
{$WARN SYMBOL_PLATFORM off}
uses uAdministradoraAbstract, T5XmlSerializa, uIntegracaoContratofreteBean, undd_ws_layout_4210;

type
   TAdministradoraNDDVersao003ws = class( TAdministradoraAbstract )
   private
      FNomeCertifica : string;
      FGUID : string; {identificação unica da comunicação com o servidor}
      FBodyReceived : widestring;
      FHeaderReceived : widestring;

      FResponseCodeMessage : string;// mensagem do WS
      FResponseCode : string;       // codigo da mensagem do WS

      FNDD : TBeanOperadoraNDD;
      ParametrosSerializacao : rSerializacao;
      GerarIntegracaoCadastro : Boolean;
      procedure SetDadosOperadora(const Value: TBeanOperadora); override;
      function formataNumero(valor: Extended; decimais: integer=2): string;

      function verificaRetornoCancelamento: boolean;
      function verificaRetornoEnvio: boolean;

      function GeraInfOt(): string;
      function Consulta( var Body : string; processCode:string='1000' ): boolean;

      function ComunicaWS( xml: widestring; ProcessCode, MessageType,
                           ExchangePattern : string; var ResultadoProcessamento : Boolean): Boolean;

      function GetGUID: string;
      procedure GeraGuid;
      function Assina(Tag : string; XML: WideString; var oXML: WideString): boolean;
      function RecuperaCiotJaExistenteDoDocumento: Boolean;
      function GeraConsultaContratoFrete(
               var RetornoConsultaResumoOT: ttpRetornoConsultaResumoOT): boolean;
    function verificaRetornoAlteracao: Boolean;
   public
      function getCodigoAdministradora : integer; override;
      function verificaRetorno: boolean; override;
      function insereContratoFrete       : boolean; override;
      function cancelaContratoFrete      : boolean; override;
      function ExtratoDe( Data : TDateTime  ) : boolean; override;
      function ConsultaContratoFrete      : boolean; override;
      function PagamentoImediatoParcela      : boolean; override;
      function AlteraContrato             : boolean; override;
      destructor Destroy; override;
      constructor Create;
   end;

implementation

uses SysUtils, classes, windows, uXMLTools, uICFFuncoes, uICFBase,
     DateUtils, IniFiles,  uX509Capicom, { uX509OpenSSL,}
     utxt_pef_con_v1_0, utxt_pef_ext_v1_0, utxt_pef_v1_0, utxt_pef_can_v1_0,
     undd_soap_v1_00,
     StrUtils, utxt_pef_pag_v1_0, utxt_pef_alt_v1_0, utxt_base;

const
   TokenPEF = 'PEFConduit-58053645-45F3';
   VersaoNDD = '4.2.5.0';

var
  CritSect : TRTLCriticalSection;
  ListaCertificados : TStringList;

{ TAdministradoraNDDVersao003ws }

function GetMensagens( aMsgList : tManagedStringList ) : string;
var
  o : TObject;
  m : ttpMensagem;
  i : Integer;
begin
  result:='';
  for i:=0 to aMsgList.Count -1 do
  begin
     o := aMsgList.Objects[i];
     if      not assigned( o ) then
        result := result + aMsgList.Text
     else if o is ttpMensagem then
     begin
        m := ttpMensagem( o );
        result := result +#10+ m.codigo+'-'+m.mensagem+'-'+m.observacao;
     end
     else
        raise Exception.Create('Objeto não reconhecido:'+o.ClassName);
  end;
end;

function AsciiExtToBase(Index: Byte): Byte; overload;
const
  Convert: array[128..255] of Byte = (
  //128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146
  //  €       ‚   ƒ   „   …   †   ‡   ˆ   ‰   Š   ‹   Œ       Ž           ‘   ’
  //  E       ,   f   "               ^       S   <           Z           '   '
     69,129, 44,102, 34,133,134,135, 94,137, 83, 60,140,141, 90,143,144, 41, 41,
  //147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165
  //  “   ”   •   –   —   ˜   ™   š   ›   œ       ž   Ÿ       ¡   ¢   £   ¤   ¥
  //  "   "       -       ~       s   >           z   Y       !
     34, 34,149, 45,151,126,153,115, 62,156,157,122, 89,160, 33,162,163,164,165,
  //166 167 168 169 170 171 172 173 174 175 176 177 178 179 180 181 182 183 184
  //  ¦   §   ¨   ©   ª   «   ¬   *   ®   ¯   °   ±   ²   ³   ´   µ   ¶   ·   ¸
  //  |           c   a   <       -                   2   3   '
    124,167,168, 99, 97, 60,172, 45,174,175,176,177, 50, 51, 41,181,182,183,184,
  //185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200 201 202 203
  //  ¹   º   »   ¼   ½   ¾   ¿   À   Á   Â   Ã   Ä   Å   Æ   Ç   È   É   Ê   Ë
  //  1       >               ?   A   A   A   A   A   A   A   C   E   E   E   E
     49,186, 62,188,189,190, 63, 65, 65, 65, 65, 65, 65, 65, 67, 69, 69, 69, 69,
  //204 205 206 207 208 209 210 211 212 213 214 215 216 217 218 219 220 221 222
  //  Ì   Í   Î   Ï   Ð   Ñ   Ò   Ó   Ô   Õ   Ö   ×   Ø   Ù   Ú   Û   Ü   Ý   Þ
  //  I   I   I   I   D   N   O   O   O   O   O   x       U   U   U   U   Y
     73, 73, 73, 73, 68, 78, 79, 79, 79, 79, 79,120,216, 85, 85, 85, 85, 89,222,
  //223 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240 241
  //  ß   à   á   â   ã   ä   å   æ   ç   è   é   ê   ë   ì   í   î   ï   ð   ñ
  //      a   a   a   a   a   a   a   c   e   e   e   e   i   i   i   i   o   n
    223, 97, 97, 97, 97, 97, 97, 97, 99,101,101,101,101,105,105,105,105,111,110,
  //242 243 244 245 246 247 248 249 250 251 252 253 254 255
  //  ò   ó   ô   õ   ö   ÷   ø   ù   ú   û   ü   ý   þ   ÿ
  //  o   o   o   o   o   /       u   u   u   u   y       y
    111,111,111,111,111, 47,248,117,117,117,117,121,254,121);
begin
  if Index < 128 then
    Result := Index
  else
    Result := Convert[Index];
end;

function AsciiExtToBase(AChar: AnsiChar): AnsiChar; overload;
begin
  Result := Chr(AsciiExtToBase(Ord(AChar)));
end;

function AsciiExtToBase(const S: AnsiString): AnsiString; overload;
var
  P: PByte;
  I: Integer;
begin
  Result := S;
  P := @Result[1];
  for I := 1 to Length(Result) do
  begin
    P^ := AsciiExtToBase(P^);
    Inc(P);
  end;
end;

function PrepraraParaUTF8( const a : WideString) : Widestring;
//var
//  p  : PwideChar;
//  tmp : widestring;
//  wc : widechar;
//  c :char;
begin
  result := AsciiExtToBase( a );
//  tmp := a;
//  p := PwideChar(tmp);
//  repeat
//     wc := p^;
//     c := wc;
//     if (Ord(c) < 32) or (Ord(c) > 125) or (c=#39) then
//     begin
//        if      c in ['á','â','ã','à','ä'] then c := 'a'
//        else if c in ['é','ê','è','ë']     then c := 'e'
//        else if c in ['í','î','ï','ì']     then c := 'i'
//        else if c in ['ó','ô','õ','ö','ò'] then c := 'o'
//        else if c in ['ú','û','ü','ù']     then c := 'u'
//        else if c in ['ç']                 then c := 'c'
//
//        else if c in ['Á','Â','Ã','À','Ä'] then c := 'A'
//        else if c in ['É','Ê','È','Ë']     then c := 'E'
//        else if c in ['Í','Î','Ï','Ì']     then c := 'I'
//        else if c in ['Ó','Ô','Õ','Ö','Ò'] then c := 'O'
//        else if c in ['Ú','Û','Ü','Ù']     then c := 'U'
//        else if c in ['Ç']                 then c := 'C'
//        else c := ' ';
//
//        p^ := c;
//     end;
//     Inc(p);
//  until p^ = #0;
//  result := tmp;
end;

Function PreparaXMLParaAssinatura(TagParaAssinar: string; xml : WideString ) : WideString;
var
  uri, tmp : widestring;
  i, j, posi : Integer;
begin
   if Pos('<Signature',XML) <= 0 then
   begin
      I := PosEx('Id=',XML,6) ;
      if I = 0 then
         raise Exception.Create('Não encontrei inicio do URI: Id=') ;
      I := PosEx('"',XML,I+2) ;
      if I = 0 then
         raise Exception.Create('Não encontrei inicio do URI: aspas inicial') ;
      J := PosEx('"',XML,I+1) ;
      if J = 0 then
         raise Exception.Create('Não encontrei inicio do URI: aspas final') ;

      URI := copy(XML,I+1,J-I-1) ;


      posi := Pos('</'+TagParaAssinar+'>', xml);
      posi := PosEx( '>', xml, posi ) +1;

      tmp :=       '<Signature xmlns="http://www.w3.org/2000/09/xmldsig#"><SignedInfo><CanonicalizationMethod Algorithm="http://www.w3.org/TR/2001/REC-xml-c14n-20010315"/><SignatureMethod Algorithm="http://www.w3.org/2000/09/xmldsig#rsa-sha1"/>';
      tmp := tmp + '<Reference URI="#'+uri+'">';
      tmp := tmp + '<Transforms><Transform Algorithm="http://www.w3.org/2000/09/xmldsig#enveloped-signature"/><Transform Algorithm="http://www.w3.org/TR/2001/REC-xml-c14n-20010315"/></Transforms><DigestMethod Algorithm="http://www.w3.org/2000/09/xmldsig#sha1"/>';
      tmp := tmp + '<DigestValue></DigestValue></Reference></SignedInfo><SignatureValue></SignatureValue><KeyInfo></KeyInfo></Signature>';

      system.Insert( tmp, xml, posi );
   end;
   result := xml
end;

procedure TAdministradoraNDDVersao003ws.SetDadosOperadora(
  const Value: TBeanOperadora);

  function GetNomePlano( s : string) : string;
  var
    p : PChar;
  begin
    result := '';
    p := PChar( s );
    repeat
       if p^ in ['a'..'z','A'..'Z','0'..'9'] then result := result + p^;
       Inc(p);
    until p<>#0;
  end;

begin
  inherited;
  FNDD := TBeanOperadoraNDD( value );
  FNomeCertifica := GetNomePlano( FNDD.Certificado );

//  FNDD.Certificado := 'CN=TECINCO INFORMATICA LTDA EPP:74092487000116, OU=AR SERASA, OU=RFB e-CNPJ A1, OU=Secretaria da Receita Federal do Brasil - RFB, O=ICP-Brasil, L=CASCAVEL, S=PR, C=BR';
//  FNDD.WebServer   := 'https://wsagent.nddcargo.com.br/wsagente/ExchangeMessage.asmx'; // producao
//  FNDD.WebServer   := 'http://homologa.nddcargo.com.br/wsagente/ExchangeMessage.asmx'; // homologação
end;

function TAdministradoraNDDVersao003ws.Assina(Tag : string; XML: WideString; var oXML : WideString): boolean;
var
   msg : string;
   xmlout : WideString;
   sc : TStoreCertificate;
   i : Integer;
begin
  EnterCriticalSection(CritSect);
  try
     i := ListaCertificados.IndexOf(self.FNomeCertifica);
     if i > -1 then
     begin
        sc := TStoreCertificate(ListaCertificados.Objects[i]);
       Result := true;
     end
     else
     begin
        if GetStoreCertificate( FNDD.Certificado, sc ) then
        begin
           ListaCertificados.AddObject( self.FNomeCertifica, sc );
           Result := true;
        end
        else
        begin
           msgError := 'Certificado não localizado '+fndd.Certificado;
           Result := False;
        end;
     end;

     if Result then
     begin
        oXML := '';
        xml := PreparaXMLParaAssinatura( tag, xml );
        XML := PrepraraParaUTF8( xml );
        try
           Result := AssinarXML2( msg, sc , XML, xmlout );
           if result then
           begin
              if not AssinaturaValida(  xmlout  ) then
                 raise Exception.Create('assinatura digital não confere no arquivo gerado');
              oXML := xmlout;
           end
           else
           begin
              msgError := msg;
              result := false;
           end;
        except
          on e:Exception do
          begin
             msgError := '[exception]'+e.message;
             result := false;
          end;
        end;
     end;
  finally
     LeaveCriticalSection(CritSect);
  end;
end;

function TAdministradoraNDDVersao003ws.GetGUID : string;
var
   uuid : TGUID;
begin
    if CreateGuid(uuid)= S_OK then
    begin
       result := GUIDToString( uuid );
       result := copy(result,2, Length(Result)-2 );
    end
    else
    begin
       result :='';
       msgError := 'Não foi possivel geraro GUID';
    end;
end;

procedure TAdministradoraNDDVersao003ws.GeraGuid;
begin
  FGuid := GetGUID;
  if FGuid = '' then Raise exception.Create('Não foi possivel requisitar GUID');
end;

constructor TAdministradoraNDDVersao003ws.Create;
begin
   inherited create(nil);
   ParametrosSerializacao.FormatSettings.DecimalSeparator := '.';
   GerarIntegracaoCadastro := True;
end;

destructor TAdministradoraNDDVersao003ws.Destroy;
begin
  inherited;
end;

function TAdministradoraNDDVersao003ws.getCodigoAdministradora: integer;
begin
  result := 6;
end;

function TAdministradoraNDDVersao003ws.ComunicaWS( xml : widestring;
                                                   ProcessCode,
                                                   MessageType,
                                                   ExchangePattern :string;
                                                   var ResultadoProcessamento : Boolean ): Boolean;
var
   retorno : widestring;
   CrossTalk, Header, Body : widestring;
   rResponseCode, rResponseCodeMessage, rProcessCode, rmessagetype, rExchangePattern, rGUID : string;
begin
   if xml <>'' then
      ArquivoGerado.Add( xml );

   retorno := SOAPGet( FNDD.WebServer, 'Send', XML, ProcessCode, messageType, ExchangePattern, FGuid, Bean.cnpj_matriz, TokenPEF,
                       DadosOperadora.proxy.proxy, DadosOperadora.proxy.proxyusuario, DadosOperadora.proxy.proxysenha);

   ArquivoRecebido.Add( retorno );

   CrossTalk := SOAPResponse( retorno );

   if GetCrossTalkHeaderBody( CrossTalk, Header, Body ) then
   begin
      CrossTalkHeader( Header , rResponseCode, rResponseCodeMessage, rProcessCode, rmessagetype, rExchangePattern, rGUID );

      self.Protocolo := rguid;
      ResultadoProcessamento := True;
      if rResponseCode = '200' then // processamento realizado com sucesso
         result := true
      else if rResponseCode = '202' then  //A mensagem foi aceita e será processada
      begin
         result := true;
      end
      else if rResponseCode = '500' then // Ocorreu uma exceção durante o processamento da requisição. Erro de processamento da solicitação do negócio, a mesnagem de erro esta no BODY
      begin
        result := true;
        ResultadoProcessamento := False;
      end
      else if rResponseCode = '400' then // ....... fuck off messages from nddd.
      begin
        result := true;
        ResultadoProcessamento := False;
      end
      else
      begin
        result := false;
        msgError := rResponseCode+'-'+rResponseCodeMessage;
        ResultadoProcessamento := False;
      end;

      FBodyReceived := Body;
      FHeaderReceived := Header;

      FResponseCode        := rResponseCode;
      FResponseCodeMessage := rResponseCodeMessage;

   end
   else
   begin
     result := false;
     msgError := 'Não foi possivel obter a crossTalk';
   end;
end;

function TAdministradoraNDDVersao003ws.Consulta( var Body : string; processCode:string='1000' ): boolean;
var
   rp : boolean;
begin
    try
       FGUID := self.Bean.NumeroProtocoloProcessamento;
       Result := ComunicaWS( '', processCode, '100', '8', rp ) and  (FResponseCode<>'202');
       Body := FBodyReceived;
    except
       on e:Exception do
       begin
          result:=False;
          msgError := 'ao integrar com WS:'+e.message;
       end;
    end;
end;

function TAdministradoraNDDVersao003ws.formataNumero( valor : Extended; decimais : integer = 2 ) : string;
begin
  Result := StringReplace( formatFloat( '0.'+stringOfChar('0', decimais), valor, ParametrosSerializacao.FormatSettings), ',','.',[]);
end;

function TAdministradoraNDDVersao003ws.GeraInfOt() : string;
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
  SomaParcelaAnteriores,
  SomaValorAplicado : Extended;
  o : TObject;
  infOt : tinfOT;
  viParcelaAdt : integer;
begin
  infOT := tinfOT.Create;
  with infOt do
  try
     ID := FGUID;
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

     with IDE do
     begin
        cnpj   := bean.cnpj_matriz;
        numero := bean.documento;
        if SomenteNumeros( Bean.serie_documento )  then // #T494
          serie  := IntToStr( strToIntDef(Bean.serie_documento,1) )
        else
          serie  := '1';
//        dtEmi  := FormatDateTime('yyyy-mm-dd hh:nn:ss',  Now );
        ptEmissor := bean.codigo_filial;
        dtInicio := FormatDateTime('yyyy-mm-dd',  now);
        dtFim    := FormatDateTime('yyyy-mm-dd',  now+30);
        contrato := bean.numeroContratoFrete;
     end;
     with Carga do
     begin
        if Copy(Bean.ParametrosOperadora.Values['TipoCarga']+'1',1,1) = '1' then
        begin
           padrao:= tpadrao.Create;
           with padrao do
           begin
             codigoSH               := Bean.NCM;
  //           unidadeMedida     := Copy(Bean.ParametrosOperadora.Values['Unidade de medida da carga']+'2',1,1);
             quantidade        := formataNumero( bean.pesoSaida, 2 );

             with remetente do
             begin
                if Length( bean.cliente_Origem.cnpj_cpf ) = 11 then
                  cpf       := bean.cliente_Origem.cnpj_cpf
                else
                  cnpj       := bean.cliente_Origem.cnpj_cpf;
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
                if Length( bean.cliente_Destino.cnpj_cpf ) = 11 then
                  cpf       := bean.cliente_Destino.cnpj_cpf
                else
                  cnpj       := bean.cliente_Destino.cnpj_cpf;
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
           end;
        end;
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

        documentosOriginarios := tdocumentosOriginarios.Create;
        with documentosOriginarios do
        begin
           documentoOriginario.AddObject(bean.documento, tdocumentoOriginario.Create);
           with tdocumentoOriginario(documentoOriginario.first) do
           begin
              tipo   := iif(Bean.ParametrosOperadora.Values['TipoDocumento']='', 'CTE', Bean.ParametrosOperadora.Values['TipoDocumento'] );
              numero := bean.documento;
           end;
        end;
        {with addconsignatario do
        begin
            with Endereco do
            begin
            end;
        end;}
     end;
     contatos := tcontatos.Create;
     with Contatos do
     begin
        contato.AddObject('?', ttpContato.Create );

        with ttpContato(contato.first) do
        begin
           if Trim( Bean.contratado.contato ) = '' then
             nome   := Bean.contratado.nome_fantasia
           else
             nome   := Bean.contratado.contato;
           contato := Bean.contratado.telefone1;
        end;
     end;

     with transp do
     begin
       rntrc            := bean.contratado.rntrc_codigo;
       gestoraCartao     := Copy(Bean.ParametrosOperadora.Values['gestoraCartao']+'001',1,3);

       categoriaPedagio := strToInt( GetCategoriaVeiculo( Bean.veiculo.categoriaveiculo ) );

       if Bean.veiculo.dadosNdd.CategoriaPedagio<>'' then
          categoriaPedagio := strToInt( Bean.veiculo.dadosNdd.CategoriaPedagio );

       if    GerarIntegracaoCadastro and
          ( ( bean.numeroCartaoFrete<>'')  or
            ((bean.numeroCartaoFrete='') and (Bean.tipoPagamentoContratoFrete<>'1'))
          ) then
       begin
         infTransportador := ttpTransportador.Create;
         with infTransportador do
         begin
           nome := bean.contratado.nome_contratado;
           with infTransportador.ide do
           begin
              if Bean.contratado.rntrc_tipo = 'TAC' then
              begin
                 tac := ttac.Create;
                 tac.cpf := bean.contratado.contratado_cnpj_cpf;
                 tac.identidade := Bean.contratado.Identidade;
              end
              else
              begin
                 equiparado := tequiparado.Create;
                 equiparado.cnpj := bean.contratado.contratado_cnpj_cpf;
                 equiparado.inscEstadual := bean.contratado.Identidade;
              end;
           end;

           vTelefone := bean.contratado.telefone1;
           DivideTelefone( vTelefone, vddd );
           vddd := copy(vddd,2,2);
           telefone := StrToInt64Def( vddd+vtelefone, 0 );

           if (bean.numeroCartaoFrete='') and ( bean.pedagio.NumeroCartaoPedagio<>'') and (Bean.pedagio.formaPagamentoPedagio = '1') then
             cartaoId := StrToInt64Def( bean.pedagio.NumeroCartaoPedagio, 0)
           else
             cartaoId := StrToInt64Def( bean.numeroCartaoFrete, 0);

           Email := Bean.contratado.email;
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
         condutores := tcondutores.Create;
         with Condutores do
         begin
            condutor.AddObject('?', tCondutor.Create);
            with tCondutor(condutor.first) do
            begin
               cpf := bean.motorista.cpf;
               //if GerarIntegracaoCadastro and (bean.numeroCartaoFrete<>'') then
               //if bean.contratado.contratado_cnpj_cpf <> bean.motorista.cpf then {o motorista deve ser enviado somente se diferente do proprietario segundo nddcargo} removido conforme email de 05/04/2014
               begin
                  informacoes := ttpCondutor.Create;
                  with informacoes do
                  begin
                     nome          := Bean.motorista.nome;
                     identidade    := Bean.motorista.rg;
                     CNH           := StrToInt64Def( Bean.motorista.carteira_habilitacao, 0 );
                     //dataEmissaoCNH:= '';
                     //if Bean.motorista.carteira_habilitacao_dt_val <> '' then
                     //   dataRenovacaoCNH := formatDateTime('yyyy-mm-dd', StrToDateTime(Bean.motorista.carteira_habilitacao_dt_val));
                     vTelefone := Bean.motorista.telefone;
                     DivideTelefone( vTelefone, vddd );
                     vddd := copy(vddd,2,2);
                     telefone := StrToInt64Def( vddd+vtelefone, 0);

                     if (bean.pedagio.formaPagamentoPedagio = '1' ) and
                        (Bean.pedagio.NumeroCartaoPedagio<>'') and
                        (Bean.numeroCartaoFrete <> Bean.pedagio.NumeroCartaoPedagio) then    {Segundo ndd quando informado 2 cartões, um para frete e outro para pedagio é assim que deve ser enviado 22/05/2013}
                        cartaoId :=  StrToInt64Def( Bean.pedagio.NumeroCartaoPedagio, 0);

                     RNTRCTransportador := Bean.contratado.rntrc_codigo;

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
            end;
         end;
       end;
       veiculos.veiculo.AddObject('?', tveiculo.Create);
       with tveiculo( Veiculos.veiculo.first ) do
       begin
          placa := bean.veiculo.placa;
          informacoes := ttpVeiculo.Create;
          with informacoes do
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
         veiculos.veiculo.AddObject('?', tveiculo.Create);
         with tveiculo( Veiculos.veiculo.next ) do
         begin
           placa := bean.veiculo.carretas.Item.placa;
           informacoes := ttpVeiculo.Create;
           with informacoes do
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
          vlrFrete         := formataNumero( bean.valorTotalMotorista );
          //vlrCombustivel   := '';
          vlrPedagio       := formataNumero( bean.pedagio.valorPedagio);
          retencoes.irrf             := formataNumero( bean.valorIRRF);
          retencoes.inss             := formataNumero( bean.valorINSS);
          retencoes.sestsenat        := formataNumero( bean.valorSest+bean.valorSenat);
          tipoRateio := Copy(Bean.ParametrosOperadora.Values['TpRateioRetencoes']+'2',1,1);

(*
          if bean.Descontos.first <> nil then {#T5223}
          begin
            descontos := tdescontos.Create;
            repeat
              o := ttpDescontoParcela.Create;
              transp.valores.descontos.desconto.AddObject('?', o );
              with o as ttpDescontoParcela do
              begin
                 tpDesc :='1';
                 nmDesc := TBeanDesconto( Bean.Descontos.item ).Descricao;
                 vlrDesc:= formatanumero( TBeanDesconto( Bean.Descontos.item ).valor );
                 dsDesc := TBeanDesconto( Bean.Descontos.item ).Observacao;
              end;
            until Bean.Descontos.Next = nil;
          end;

       end;
*)
       if bean.rota.codigoRota <> 'SEM ROTA' then
       begin
          rota := ttpRota.Create;
          with rota do
            rotaERP := bean.rota.codigoRota;

          if Bean.ParametrosOperadora.Values['CadastraRota'] = 'S' then
          begin
             if Bean.rota.pontosRota.first<>nil then
             begin
                with rota.informacoes do
                begin
                   nome := Bean.rota.pontosRota.first.ibge_origem+' a '+Bean.rota.pontosRota.last.ibge_destino;
                   tipoRotaPadrao := Copy(Bean.ParametrosOperadora.Values['TipoRotaPadrao']+'2',1,1);
                   utilizarRoteirizador := Copy(Bean.ParametrosOperadora.Values['UtilizaRoteirizador']+'2',1,1);
                   totalKm             := '';
                   notificarRespContratante := Copy(Bean.ParametrosOperadora.Values['NotificaRotaContratante']+'2',1,1);

                   Bean.rota.pontosRota.first;
                   repeat
                      o := tpontoParada.create;
                      with tpontoParada( o ) do
                      begin
                         codigoIBGE := Bean.rota.pontosRota.Item.ibge_origem;
                         tipoRotaEspecifico := Copy(Bean.ParametrosOperadora.Values['TipoRotaPadrao']+'2',1,1);
                      end;
                      pontosParada.pontoParada.AddObject( '?',  o);
                   until bean.rota.pontosRota.Next = nil;
                   bean.rota.pontosRota.Last;
                   o := tpontoParada.create;
                   with tpontoParada( o ) do
                   begin
                      codigoIBGE := Bean.rota.pontosRota.Item.ibge_origem;
                      tipoRotaEspecifico := Copy(Bean.ParametrosOperadora.Values['TipoRotaPadrao']+'2',1,1);
                   end;
                   pontosParada.pontoParada.AddObject( '?',  o);
                   responsaveis := tresponsaveis.Create;
                   responsaveis.responsavel.AddObject( '?', tresponsavel.Create );
                   with tresponsavel(responsaveis.responsavel.first) do
                   begin
                     nome := Bean.Usuario;
                     email:= 'sememail@sememail.com';
                   end;
                end;
             end;
          end;
       end;
     end;

(*
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
*)
     end;

     if Bean.tipoPagamentoContratoFrete <> '1' then  {#T27}
     begin
       adicionais := ttpAdicionalImpressao.Create;
       adicionais.campo.AddObject( '?', tcampo.Create );
       with tcampo( adicionais.campo.first ) do
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
        if not Assigned( adicionais ) then  adicionais := ttpAdicionalImpressao.Create;

        while count > 0 do
        begin
           o := tcampo.Create;
           adicionais.campo.AddObject( '?', o );
           with tcampo( o ) do
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
     begin
        confirmador := tconfirmador.Create;
        with confirmador do
        begin
           if Length(Bean.ParametrosOperadora.Values['Confirmador'])=11 then
              cpf := Bean.ParametrosOperadora.Values['Confirmador']
           else
              cnpj := Bean.ParametrosOperadora.Values['Confirmador'];
        end;
     end;

     SomaValorAplicado := 0;
     if bean.valorAdiantamento>0 then
     if bean.ParcelasAdiantamento.first<> nil then
     begin
        transp.valores.parcelamento := ttpParcelamento.Create;
        //transp.valores.parcelamento.regraERP := 'adt_sld';
        transp.valores.parcelamento.informacoes := tinformacoes.Create;
        viParcelaAdt := 0;
        repeat
           inc( viParcelaAdt );
           o := ttpParcela.Create;
           transp.valores.parcelamento.informacoes.parcelas.parcela.AddObject('?', o );
           SomaParcelaAnteriores := 0;
           with (o as ttpParcela) do
           begin
              nome := 'Adiantamento'+intToStr( viParcelaAdt );
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
                 tipoPgto.automatico := tautomatico.Create;
                 with tipoPgto.automatico do
                 begin
                    // dataHora := FormatDateTime('yyyy-mm-dd hh:nn:ss', IncHour( IncDay( Now, Bean.ParcelasAdiantamento.Item.dias), 1) );{#18466}

                    dataHora := FormatDateTime('yyyy-mm-dd hh:nn:ss', IncMinute( IncDay( Now,
                                                                                          Bean.ParcelasAdiantamento.Item.dias),
                                                                                  strTointDef( Bean.ParametrosOperadora.Values['MinutosParaLiberarAdiantamento'],
                                                                                               60)
                                                                                 ) );{#18466}


                 end
              end
              else
              begin
                 tipoPgto.manual := tmanual.Create;
                 with tipoPgto.manual do
                 begin
                    // dataPrevisao := FormatDateTime('yyyy-mm-dd', IncHour( IncDay( Now, Bean.ParcelasAdiantamento.Item.dias), 1) );
                    dataPrevisao := FormatDateTime('yyyy-mm-dd', IncMinute( IncDay( Now,
                                                                                     Bean.ParcelasAdiantamento.Item.dias),
                                                                             strTointDef( Bean.ParametrosOperadora.Values['MinutosParaLiberarAdiantamento'],
                                                                                          60)) );  {#18466}

                    efetivacao   := Copy(Bean.ParametrosOperadora.Values['LocalEfetivacaoPagamentoAdiantamento']+Bean.ParametrosOperadora.Values['LocaldeEfetivacaodoPagamentoAdt']+'3',1,1);
                 end;
                 if not documentos_IsSet_ then documentos := tdocumentos_tpParcela.Create;
                 o := ttpDocumento.Create;
                 documentos.documento.AddObject('?', o);
                 with (o as ttpDocumento) do
                 begin
                   tipo        := 'Não há documento para adiantamento';
                   obrigatorio := '2';
                   o := tdependencia.Create;
                   dependencias.dependencia.AddObject('?', o );
                   with  o as tdependencia do
                      descricao := 'Não há documento para adiantamento';
                 end;
              end;
              //addDescontos....
           end;
        until Bean.ParcelasAdiantamento.Next=nil;
     end;


     if (Bean.valorSaldo = 0) and (Bean.ParcelasAdiantamento.Count>0) then   {#T17180}
     begin
           if bean.Descontos.first <> nil then {#T5223} with ttpParcela(transp.valores.parcelamento.informacoes.parcelas.parcela.current) do
           begin
             descontos := tdescontos_tpParcela.Create;
             repeat
               o := ttpDescontoParcela.Create;
               descontos.desconto.AddObject('?', o );
               with o as ttpDescontoParcela do
               begin
                  tpDesc :='1';
                  nmDesc := TBeanDesconto( Bean.Descontos.item ).Descricao;
                  vlrDesc:= formatanumero( TBeanDesconto( Bean.Descontos.item ).valor );
                  dsDesc := TBeanDesconto( Bean.Descontos.item ).Observacao;
               end;
             until Bean.Descontos.Next = nil;
           end;
     end else {#T17180}
     if Bean.valorSaldo > 0 then
     begin
        if not transp.valores.parcelamento_IsSet_ then
        begin
           transp.valores.parcelamento := ttpParcelamento.Create;
           //transp.valores.parcelamento.regraERP := 'adt_sld';
           transp.valores.parcelamento.informacoes := tinformacoes.Create;
        end;
        o := ttpparcela.Create;
        transp.valores.parcelamento.informacoes.parcelas.parcela.AddObject('?', o );

        with (o as ttpparcela) do
        begin
              nome := 'Saldo';
              //Saldo := 1;
              ValorAplicado := formataNumero( Bean.valorTotalMotorista - SomaValorAplicado );
              ValorReal     := formataNumero( Bean.valorSaldo );    // veja pog depois do desconto.
              tipoPgto.manual := tmanual.Create;
              with tipoPgto.manual do
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
              begin
                 documentos := tdocumentos_tpParcela.Create;
                 repeat
                     o := ttpDocumento.Create;
                     documentos.documento.AddObject('?', o);
                     with o as ttpDocumento do
                     begin
                       tipo        := Bean.DocumentosEntrega.Item.Codigo+'-'+Bean.DocumentosEntrega.Item.Documento;
                       obrigatorio := '1';
                       o := tdependencia.Create;
                       dependencias.dependencia.AddObject('?', o );
                       with  o as tdependencia do
                          descricao := Bean.DocumentosEntrega.Item.Complemento;
                     end;
                 until Bean.DocumentosEntrega.Next=nil;
              end;
              with Split( ';', Trim( Bean.ParametrosOperadora.Values['DocumentoParaEntregar'] ) ) do
              try
                 if not documentos_IsSet_ then documentos := tdocumentos_tpParcela.Create;

                 while count > 0 do
                 begin
                     o := ttpDocumento.Create;
                     documentos.documento.AddObject('?', o);
                     with o as ttpDocumento do
                     begin
                       tipo        := strings[0];
                       obrigatorio := '1';
                       o := tdependencia.Create;
                       dependencias.dependencia.AddObject('?', o );
                       with  o as tdependencia do
                          descricao := strings[0];
                       Delete(0);
                     end;
                 end;
              finally
                 Free;
              end;

              if bean.Descontos.first <> nil then {#T5223}
              begin
                descontos := tdescontos_tpParcela.Create;
                repeat
                  o := ttpDescontoParcela.Create;
                  descontos.desconto.AddObject('?', o );
                  with o as ttpDescontoParcela do
                  begin
                     tpDesc :='1';
                     nmDesc := TBeanDesconto( Bean.Descontos.item ).Descricao;
                     vlrDesc:= formatanumero( TBeanDesconto( Bean.Descontos.item ).valor );
                     dsDesc := TBeanDesconto( Bean.Descontos.item ).Observacao;
                     Bean.valorSaldo := Bean.valorSaldo + TBeanDesconto( Bean.Descontos.item ).valor;
                  end;
                until Bean.Descontos.Next = nil;
              end;

              //POG pois no WS é diferente
             valorReal := formataNumero( Bean.valorSaldo );;

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
                if not Assigned(descontos) then descontos := tdescontos_tpParcela.Create;
                o := ttpDescontoParcela.Create;
                descontos.desconto.AddObject('?', o );
                with o as ttpDescontoParcela do
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
     end;
     result := GetAsString;
   finally
      free;
   end;
end;

function TAdministradoraNDDVersao003ws.insereContratoFrete: boolean;
    function AdicionaLoteOT( aInfOt : string  ) : string;
    begin
      result := '<?xml version="1.0" encoding="utf-8"?>'#10+
                '<loteOT_envio '+
                    'xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" '+
                    'xmlns:xsd="http://www.w3.org/2001/XMLSchema" '+
                    'versao="'+VersaoNDD+'" '+
                    'token="'+TokenPEF+'" '+
                    'xmlns="http://www.nddigital.com.br/nddcargo"> '+
                  '<operacoes>'+
                    aInfOt+
                  '</operacoes>'+
                '</loteOT_envio>';
    end;
var
   infOt, loteOt : widestring;
   rp : Boolean;
begin
   try
      GeraGuid;
      infOt  := '<OT>'+GeraInfOt()+'</OT>';
      loteOt := AdicionaLoteOT( infOt );
      result := Assina( 'infOT', loteOt, loteOt );
      if result then
      try
         result := ComunicaWS( loteOt, '1000', '100', '7', rp );
      except
         on e:Exception do
         begin
            result:=False;
            msgError := 'ao integrar com WS:'+e.message;
         end;
      end;
   except
      on e:Exception do
      begin
         result:=False;
         msgError := 'insereContratoFrete:'+e.Message;
      end;
   end;

   if not rp then
   begin
     FBodyReceived := stringReplace( FBodyReceived, '<body>', '', [rfIgnoreCase]);
     FBodyReceived := stringReplace( FBodyReceived, '</body>', '', [rfIgnoreCase]);
     with ttpMensagemErro.CreateFromXmlString(  FBodyReceived ) do
     try
        msgError := descricao.Text;
     finally
        Free;
     end;
   end;

   if not result or not rp then
   begin
      Situacao := tsrErro {'E'};
   end
   else
      Situacao := tsrAguardando {'A'};
end;

function TAdministradoraNDDVersao003ws.verificaRetorno: boolean;
begin
   situacao := tsrAguardando {'A'};
   if  (BeanTXT is TContrato_0000) then
      result := verificaRetornoEnvio
   else if (BeanTXT is TCancelamento_0000) then
      result := verificaRetornoCancelamento
   else if (BeanTXT is TExtrato_0000) then
      result := False
   else if (BeanTXT is TConsulta_0000) then
      result := False
   else if (BeanTXT is TAlteracaoContrato_0000) then
      result := verificaRetornoAlteracao
   else
      result := False;
end;

function TAdministradoraNDDVersao003ws.verificaRetornoCancelamento: boolean;
var
  body : string;
  msg : string;
begin
   try
      LogIt( 'Carregando retorno '+bean.NumeroProtocoloProcessamento );
      if Consulta( body, '1002'  ) or (FResponseCode<>'202') then
      begin
        ArquivoRecebido.Text :=  body;
        with ttpRetornoConsultaCancelamento.CreateFromXmlString( body ) do
        try
          if assigned( mensagens ) then
          begin
             msg := mensagens.descricao.Text;
             msgError := msg; 
             Situacao := tsrErro {E};
          end;

          if Assigned( cancelamento ) then
          begin
             with cancelamento do
             begin
                 Protocolo := protocoloCanc;
                 msgError := 'Protocolo: '+protocoloCanc;
                 Situacao := tsrCancelado {'C'};
                 with autorizacao do
                 begin
                    if Assigned(ciot) then
                       msgError := 'CIOT:'+ciot.numero+ciot.ciotCodVerificador;
                    if Assigned(ndot) then
                       msgError := 'NDOT:'+ndot.numero+ndot.ndotCodVerificador;
                 end;
             end;
          end
          else if situacao <> tsrErro then 
          begin
             msgError := 'Não foi encontrado o registro 1000 no retorno';
             Situacao := tsrErro {E};
          end;
        finally
           Free;
        end;
      end
      else
      begin
         Situacao := tsrAguardando;
      end;
      Result := True;
   except
      on e : exception do begin
         Result := true;
         Situacao := tsrErro {E};
         MsgError := 'verificaRetornoCancelamento:'+e.message;
         LogIt( e.message+' - '+body );
      end;
   end;
end;

function TAdministradoraNDDVersao003ws.RecuperaCiotJaExistenteDoDocumento : Boolean;
var
  RetornoConsultaResumoOT : ttpRetornoConsultaResumoOT;
begin
   try
      result := GeraConsultaContratoFrete( RetornoConsultaResumoOT );
      if Result then
      begin
         with RetornoConsultaResumoOT do
         try
           result := True;
           if mensagens_IsSet_ then
           begin
              if  ttpMensagem( mensagens.mensagem.Objects[0] ).codigo <> '123' then
              begin
                 msgError := GetMensagens( mensagens.mensagem );
                 result := false;
              end;
           end;
           if Assigned( retConsultaResumoOT )  then
           begin
              if     (Self.Bean.valorTotalMotorista = DefStrToFloat( RetornoConsultaResumoOT.retConsultaResumoOT.valores.vlrFrete,0)) then
              begin
                 if  RetornoConsultaResumoOT.retConsultaResumoOT.autorizacao.ciot_IsSet_ then
                    self.CIOT          := RetornoConsultaResumoOT.retConsultaResumoOT.autorizacao.ciot.numero+
                                         RetornoConsultaResumoOT.retConsultaResumoOT.autorizacao.ciot.ciotCodVerificador;
                 if  RetornoConsultaResumoOT.retConsultaResumoOT.autorizacao.ndot_IsSet_ then
                    self.Protocolo     := RetornoConsultaResumoOT.retConsultaResumoOT.autorizacao.ndot.numero+
                                         RetornoConsultaResumoOT.retConsultaResumoOT.autorizacao.ndot.ndotCodVerificador;

                 msgError := 'Valor total do frete: '+( RetornoConsultaResumoOT.retConsultaResumoOT.valores.vlrFrete )+#10;
                 msgError := 'Valor total despesas: '+( RetornoConsultaResumoOT.retConsultaResumoOT.valores.vlrDespesas )+#10;
                 msgError := 'Valor total combustivel: '+( RetornoConsultaResumoOT.retConsultaResumoOT.valores.vlrCombustivel )+#10;
                 msgError := 'Valor total saldo: '+( RetornoConsultaResumoOT.retConsultaResumoOT.valores.vlrSaldo )+#10;
                 msgError := 'CIOT recuperado pela consulta a contrato';
                 result := True;
              end
              else
              begin
                 result := false;
                 msgError := 'Já existe um contrato de frete aberto para este Documento com CIOT '+RetornoConsultaResumoOT.retConsultaResumoOT.autorizacao.ciot.numero+
                                         RetornoConsultaResumoOT.retConsultaResumoOT.autorizacao.ciot.ciotCodVerificador+', mas ele esta com valor diferente na NDD. Consta com valor de '+RetornoConsultaResumoOT.retConsultaResumoOT.valores.vlrFrete;
              end;
           end
           else
           begin
              result := false;
           end;
         finally
           RetornoConsultaResumoOT.Free;
         end;
      end
      else
        result := false;
   except
      on e:Exception do
      begin
         result:=False;
         msgError := 'RecuperaCiotJaExistenteDoDocumento:'+e.Message;
      end;
   end;
end;

function TAdministradoraNDDVersao003ws.verificaRetornoEnvio: boolean;
var
  vEnviaNovamenteSemTransportador : Boolean;
  body : string;
  vii : Integer;
  vim : integer;
begin
   vEnviaNovamenteSemTransportador := False;
   try
      if Consulta( body, '1000'  ) then
      begin

        with ttpRetornoConsultaLoteOT.CreateFromXmlString( body )  do
        try
          if assigned( mensagens ) then
             msgError := mensagens.descricao.Text;

          if Assigned( operacoes ) then
          with  operacoes do
          begin
            msgerror := 'validando OT';
            for vii:=0 to OT.count-1 do
            begin
               with ttpRetornoOT(OT.Objects[vii]) do
               begin
                 msgerror := 'infOT';
                 if assigned( infOT ) then
                 with infOT do
                 begin
                   for vim:=0 to mensagens.mensagem.count - 1 do
                   begin
                      with ttpMensagem( mensagens.mensagem.Objects[vim]) do
                      begin
                         if codigo <> '106' then
                         begin
                            if (codigo = '212') then
                            begin
                               (*if (Pos('O transportador já possui um cartão ativo', mensagem.observacao) > 0)  then
                               begin
                                   //tentar novamente sem cadatro do transportador
                                   vEnviaNovamenteSemTransportador := false; {modificado pois segundo a ndd somente volta esta mensagem se for diferente}
                                   Situacao := tsrErro {E};
                               end
                               else*)
                               if (Pos('Ja existe uma operação de transporte com o código:', observacao) > 0)  then
                               begin
                                  // vamos recuperar o CIOT deste contrato

                                  if RecuperaCiotJaExistenteDoDocumento then
                                    Situacao := tsrAprovado {E}
                                  else
                                    Situacao := tsrErro {E};

                               end else
                               begin
                                 msgError := codigo+' - '+mensagem+' - '+observacao;
                                 Situacao := tsrErro {E};
                               end;
                            end
                            else
                            begin
                              msgError := codigo+' - '+mensagem+' - '+observacao;
                              Situacao := tsrErro {E};
                            end;
                         end
                      end;
                   end;

                   if situacao <> tsrErro then
                   begin

                      if not Assigned(autorizacao) then
                         raise Exception.Create('Arquivo de retorno NDD com erro na estrutura ou no dados : não possui tag autorizacao');
                      with autorizacao do
                      begin
                         if Assigned( ciot ) then
                             self.CIOT      := ciot.numero+ciot.ciotCodVerificador
                         else if Assigned(ndot) then
                             Self.Protocolo := ndot.numero+ndot.ndotCodVerificador;
                      end;
                      if avisoTransportador <> '' then
                         msgError := avisoTransportador;
                      if Assigned( valores ) then
                      begin
                         msgError := 'Valor total do frete: '+( valores.vlrFrete )+#10;
                         msgError := 'Valor total despesas: '+( valores.vlrDespesas )+#10;
                         msgError := 'Valor total combustivel: '+( valores.vlrCombustivel )+#10;
                         msgError := 'Valor total saldo: '+( valores.vlrSaldo )+#10;
                      end;
                      if Assigned( pedagio ) then
                      begin
                         msgError := 'Valor pedágio: '+( pedagio.valor )+' de '+pedagio.origem+' até '+pedagio.destino;
                         Self.ValorPedagio := DefStrToFloat(pedagio.valor,0);
                      end;

                      Situacao := tsrAprovado {'R'};

                   end;
                 end;
                 if vEnviaNovamenteSemTransportador and GerarIntegracaoCadastro then
                 begin
                    GerarIntegracaoCadastro := False;
                    result := insereContratoFrete;
                    if Result then
                       Situacao := tsrAguardando {'A'};
                 end;
               end;
            end;
          end
        finally
          Free;
        end;
      end
      else
      begin
         Situacao := tsrAguardando {'A'};
      end;
      Result := True;
   except
      on e : exception do begin
         Result := true;
         Situacao := tsrErro {E};
         MsgError := 'verificaRetornoEnvio:'+e.message+' - '+self.Protocolo;
         LogIt( e.message+' - '+self.Protocolo );
      end;
   end;
end;

function TAdministradoraNDDVersao003ws.cancelaContratoFrete: boolean;
   function GeraInfCancOT() : string;
   var
      infCancOT : tinfCancOT;
   begin
      infCancOT := tinfCancOT.Create;
      with infCancOT do
      try
         ID := Fguid;
         cnpj := Bean.cnpj_matriz;
         motivo := Bean.observacoes;
         with autorizacao do
         begin
            if Bean.NumeroCIOT <> '' then
            begin
               ciot := tciot_tpAutorizacaoOT.Create;
               with ciot do
               begin
                 numero    := Copy( Bean.NumeroCIOT, 1,12);
                 ciotCodVerificador := Copy( Bean.NumeroCIOT, 13, 4);
               end;
            end
            else
            begin
               ndot := tndot_tpAutorizacaoOT.Create;
               with ndot do
               begin
                  numero := Copy( Bean.NumeroViagem, 1,12);
                  ndotCodVerificador := Copy( Bean.NumeroViagem, 13, 4);
               end;
            end;
         end;
         result := GetAsString;
      finally
        infCancOT.Free;
      end;
   end;

   function AdicionaCancelarOT( InfCancOT : string ) : string;
   begin
      result := '<?xml version="1.0" encoding="utf-8"?>'#10+
                '<cancelarOT_envio '+
                    'xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" '+
                    'xmlns:xsd="http://www.w3.org/2001/XMLSchema" '+
                    'versao="'+VersaoNDD+'" '+
                    'token="'+TokenPEF+'" '+
                    'xmlns="http://www.nddigital.com.br/nddcargo"> '+
                    InfCancOT+
                '</cancelarOT_envio>';
   end;
var
   CancelarOt : widestring;
   rp : Boolean;
begin
   try
      GeraGuid;
      CancelarOt := AdicionaCancelarOT( GeraInfCancOT() );
      CancelarOt := PrepraraParaUTF8( CancelarOt );
      result := Assina( 'infCancOT', CancelarOt, CancelarOt );
      if Result then 
      try
         result := ComunicaWS( CancelarOt, '1002', '100', '7', rp ) and rp;
      except
         on e:Exception do
         begin
            result:=False;
            msgError := 'ao integrar com WS '+e.Message;
         end;
      end;
   except
      on e:Exception do
      begin
         result:=False;
         msgError := 'insereContratoFrete:'+e.Message;
      end;
   end;

   if not rp then
   begin
     FBodyReceived := stringReplace( FBodyReceived, '<body>', '', [rfIgnoreCase]);
     FBodyReceived := stringReplace( FBodyReceived, '</body>', '', [rfIgnoreCase]);
     with ttpMensagemErro.CreateFromXmlString(  FBodyReceived ) do
     try
        msgError := descricao.Text;
     finally
        Free;
     end;
   end;

   if not result then
   begin
      Situacao := tsrErro {'E'};
   end
   else
      Situacao := tsrAguardando {'A'};
end;


function TAdministradoraNDDVersao003ws.ExtratoDe(Data: TDateTime): boolean;
   function LeExtrato( pgtos : tpgtos ) : Boolean;
   var
      vip, vii : Integer;
      oParcela : tparcela;
      oPgto : ttpPgto;
      ret : TExtrato_ret_0000;
      retItem : TExtrato_ret_0001;
   begin
      ret  := TExtrato_ret_0000.create;
      for vii := 0 to pgtos.pgto.Count - 1 do
      begin
         oPgto := ttpPgto( pgtos.pgto.Objects[vii]);

         retItem := ret.add0001;

         retItem.Sequencia      := intToStr( vii );
         retItem.DataLancamento := DateFromXMLDateTime( oPgto.DataHora ) + TimeFromXMLDateTime( oPgto.DataHora );
         if oPgto.autorizacao.ciot_IsSet_ then
             retItem.Viagem         := oPgto.autorizacao.ciot.numero + oPgto.autorizacao.ciot.ciotCodVerificador;
         if oPgto.autorizacao.ndot_IsSet_ then
             retItem.Viagem         := oPgto.autorizacao.ndot.numero + oPgto.autorizacao.ndot.ndotCodVerificador;

         if oPgto.pedagio_IsSet_ then
         begin
            retItem.Valor :=  DefStrToFloat(oPgto.pedagio.valorPago,0);
            retItem.Descricao := 'Pedagio';
            retItem.Observacao := 'cnpj:'+oPgto.pedagio.estabelecimento.cnpj+'-'+oPgto.pedagio.estabelecimento.nome+','+oPgto.pedagio.estabelecimento.endereco.cidade+'-'+oPgto.pedagio.estabelecimento.endereco.UF;
         end;
         if oPgto.frete_IsSet_ then
         begin
            for vip := 0 to oPgto.frete.parcelas.parcela.Count - 1 do
            begin
              oParcela := tparcela( oPgto.frete.parcelas.parcela.Objects[0] );
              retItem.Valor      := DefStrToFloat( oParcela.valorPago,0 );
              retItem.Descricao  :=  oParcela.nome;

              if oParcela.efetivacao.automatica_IsSet_ then
                  retItem.Observacao := 'Automatica'
              else if oParcela.efetivacao.confirmacaoEletronica_IsSet_ then
                  retItem.Observacao := 'Confirmacao eletronica de '+oParcela.efetivacao.confirmacaoEletronica.nome
              else if oParcela.efetivacao.contratante_IsSet_ then
                  retItem.Observacao := 'Pelo contratante '+oParcela.efetivacao.contratante.nome
              else if oParcela.efetivacao.centroTriagem_IsSet_ then
                  retItem.Observacao := 'Centro de triagem '+oParcela.efetivacao.centroTriagem.nome
              else if oParcela.efetivacao.postoCredenciado_IsSet_ then
                  retItem.Observacao := 'Posto '+oParcela.efetivacao.postoCredenciado.nome+' - '+oParcela.efetivacao.postoCredenciado.endereco.cidade+'/'+oParcela.efetivacao.postoCredenciado.endereco.UF;
              retItem.Observacao := retItem.Observacao +' '+oParcela.comentario;
            end;
         end;
      end;
      self.BeanTXTRet := ret;
      result := True;
   end;

   function GeraPagamentoOT : string;
   begin
      with tpagamentoOT_envio.Create do
      try
         // GUID := FGUID;
         versao := VersaoNDD;
         token  := TokenPEF;

         cnpjContratante := Bean.cnpj_matriz;
         periodo := tperiodo.Create;
         periodo.dataInicial := FormatDateTime('yyyy-mm-dd', TExtrato_0000( BeanTXT ).DataExtrato );
         periodo.dataFinal   := FormatDateTime('yyyy-mm-dd', TExtrato_0000( BeanTXT ).DataExtrato );

         result := GetAsString;
         result := StringReplace( Result, '<pagamentoOT_envio ', '<pagamentoOT_envio xmlns="http://www.nddigital.com.br/nddcargo" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" ', [] );

      finally
        free;
      end;
   end;
var
   extratoOt : string;
   retornoConsultaPgtos : ttpRetornoConsultaPgtos;
   rp : Boolean;
begin
   try
      GeraGuid;
      extratoOt := GeraPagamentoOT;
      extratoOt := PrepraraParaUTF8( extratoOt );
      //extratoOt := Assina( 'infCancOT', CancelarOt );
      try
         result := ComunicaWS( extratoOt, '1003', '1', '1', rp )  and rp;
      except
         on e:Exception do
         begin
            result:=False;
            msgError := 'ao integrar com WS '+e.Message;
         end;
      end;

      if Result then
      begin
         retornoConsultaPgtos := ttpRetornoConsultaPgtos.CreateFromXmlString( FBodyReceived );
         with retornoConsultaPgtos do
         try
           if mensagens_IsSet_ then
           begin
              msgError := mensagens.descricao.Text;
              Situacao := tsrErro;
           end;
           if pgtos_IsSet_ then
           begin
             LeExtrato ( pgtos );
             Situacao := tsrAprovado;
           end;
         finally
           retornoConsultaPgtos.Free;
         end;
      end
      else
      begin
         if not rp then
         begin
           FBodyReceived := stringReplace( FBodyReceived, '<body>', '', [rfIgnoreCase]);
           FBodyReceived := stringReplace( FBodyReceived, '</body>', '', [rfIgnoreCase]);
           with ttpMensagemErro.CreateFromXmlString(  FBodyReceived ) do
           try
              msgError := descricao.Text;
           finally
              Free;
           end;
         end;
         Situacao := tsrErro;
      end;
   except
      on e:Exception do
      begin
         Situacao := tsrErro;
         result:=False;
         msgError := 'ExtratoDe:'+e.Message;
      end;
   end;
end;

function TAdministradoraNDDVersao003ws.ConsultaContratoFrete: boolean;
   function LeRetornoConsulta( RetornoConsultaResumoOT : ttpRetornoConsultaResumoOT ) : Boolean;
   var
      txtRet : TConsulta_ret_0000;
      item   : TConsulta_ret_0001;
      vii : Integer;
      oParcela : tparcela_parcelas_tpInfRetornoConsultaResumoOT;
      oDirecionamentoPedagio : tdirecionamento_tpResumoDirecionamentosPedagio;
   begin
      txtRet := TConsulta_ret_0000.create;
      txtRet.motivoRetorno := msgError;
      txtRet.viagem        := RetornoConsultaResumoOT.envioConsultaResumoOT.OT.ciot + RetornoConsultaResumoOT.envioConsultaResumoOT.OT.ndot;
      txtRet.NumeroContratoFrete := ''; //RetornoConsultaResumoOT.retConsultaResumoOT.ide.numero;
      if  RetornoConsultaResumoOT.retConsultaResumoOT.autorizacao.ciot_IsSet_ then
         txtRet.CIOT          := RetornoConsultaResumoOT.retConsultaResumoOT.autorizacao.ciot.numero+
                              RetornoConsultaResumoOT.retConsultaResumoOT.autorizacao.ciot.ciotCodVerificador;
      if  RetornoConsultaResumoOT.retConsultaResumoOT.autorizacao.ndot_IsSet_ then
         txtRet.CIOT          := RetornoConsultaResumoOT.retConsultaResumoOT.autorizacao.ndot.numero+
                              RetornoConsultaResumoOT.retConsultaResumoOT.autorizacao.ndot.ndotCodVerificador;


      //situacao
      with RetornoConsultaResumoOT do
      begin
         if retConsultaResumoOT.pedagio_IsSet_ then
         begin
            if retConsultaResumoOT.direcionamentosPedagio_IsSet_ then
            begin
              for vii:=0 to retConsultaResumoOT.direcionamentosPedagio.direcionamento.Count-1 do
              begin
                 oDirecionamentoPedagio := tdirecionamento_tpResumoDirecionamentosPedagio( retConsultaResumoOT.direcionamentosPedagio.direcionamento.Objects[vii]);

                 item := txtRet.add0001;
                 item.Parcela := 'Pedagio';
                 if oDirecionamentoPedagio.status = '1' then
                 begin
                    item.ValorPrevisto := DefStrToFloat(oDirecionamentoPedagio.valor,0);
                    item.Situacao      := 'PREVISTA';
                 end
                 else
                 begin
                    item.ValorEfetivo := DefStrToFloat(oDirecionamentoPedagio.valor,0);
                    item.Situacao      := 'CONCLUIDA';
                 end;
                 item.Local := oDirecionamentoPedagio.origem+' para '+oDirecionamentoPedagio.destino;
              end;
            end;
         end;

         if retConsultaResumoOT.parcelas_IsSet_ then
         begin
            for vii:=0 to retConsultaResumoOT.parcelas.parcela.Count - 1 do
            begin
               item := txtRet.add0001;

               oParcela := tparcela_parcelas_tpInfRetornoConsultaResumoOT( retConsultaResumoOT.parcelas.parcela.Objects[vii]);
               item.Parcela      := oParcela.nome;
               if oParcela.dataPrevisao<>'' then
                  item.DataPrevista := DateFromXMLDateTime( oParcela.dataPrevisao )+TimeFromXMLDateTime( oParcela.dataPrevisao );
               item.ValorPrevisto:= DefStrToFloat( oParcela.valorAplicado, 0);
               if oParcela.dataPagamento <> '' then
                  item.DataEfetivacao := DateFromXMLDateTime( oParcela.dataPagamento )+TimeFromXMLDateTime( oParcela.dataPagamento );
               if      oParcela.status = '0' then // em aberto
                  item.Situacao := 'PREVISTA'
               else if oParcela.status = '1' then // aguardando
                  item.Situacao := 'PREVISTA'
               else if oParcela.status = '2' then // Aguardando solicitação de pagamento
                  item.Situacao := 'BLOQUEADA'
               else if oParcela.status = '3' then // Paga
                  item.Situacao := 'CONCLUIDA'
               else if oParcela.status = '4' then // Cancelada
                  item.Situacao := 'CANCELADA'
            end;
         end;
      end;
      BeanTXTRet := txtRet;
      Result := True;
   end;
var
  RetornoConsultaResumoOT : ttpRetornoConsultaResumoOT;
begin
   try

      result := GeraConsultaContratoFrete( RetornoConsultaResumoOT );

      if Result then
      begin
         with RetornoConsultaResumoOT do
         try
           result := True;
           if mensagens_IsSet_ then
           begin
              msgError := GetMensagens( mensagens.mensagem );
              Situacao := tsrErro;
           end;

           if Assigned( retConsultaResumoOT )  then
           begin
              LeRetornoConsulta( RetornoConsultaResumoOT );
              Situacao := tsrAprovado;
           end;
         finally
           RetornoConsultaResumoOT.Free;
         end;
      end
      else
        Situacao := tsrErro;
   except
      on e:Exception do
      begin
         Situacao := tsrErro;
         result:=False;
         msgError := 'ConsultaContrato:'+e.Message;
      end;
   end;
end;

function TAdministradoraNDDVersao003ws.GeraConsultaContratoFrete(var RetornoConsultaResumoOT : ttpRetornoConsultaResumoOT ): boolean;
   function GeraconsultarStatusOT : string;
   begin
      with tconsultarStatusOT_envio.Create do
      try
         versao := VersaoNDD;
         token  := TokenPEF;
         infConsultaResumoOT.cnpj := Bean.cnpj_matriz;
         infConsultaResumoOT.ID   := FGUID;
           
         if TConsulta_0000( BeanTXT ).CIOT  <> '' then
            infConsultaResumoOT.OT.ciot := Copy(TConsulta_0000( BeanTXT ).CIOT,1, 12)
         else
         begin
            infConsultaResumoOT.OT.ndot := Copy(TConsulta_0000( BeanTXT ).NumeroContratoFrete,1, 12);

            raise exception.create('consulta permitida somente por número do ciot ou dot '+TConsulta_0000( BeanTXT ).GetAsString);
         end;

         result := GetAsString;
         result := StringReplace( Result, '<consultarStatusOT_envio ', '<consultarStatusOT_envio xmlns="http://www.nddigital.com.br/nddcargo" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" ', [] );
      finally
        free;
      end;
   end;
var
   consultarStatusOT : widestring;
   rp : Boolean;
begin
   try
      GeraGuid;
      consultarStatusOT := GeraconsultarStatusOT;
      consultarStatusOT := PrepraraParaUTF8( consultarStatusOT );
      result := Assina( 'infConsultaResumoOT', consultarStatusOT, consultarStatusOT );
      if result then
      try
         result := ComunicaWS( consultarStatusOT, '2008', '1', '1', rp ) and rp;
      except
         on e:Exception do
         begin
            result:=False;
            msgError := 'ao integrar com WS '+e.Message;
         end;
      end;

      if Result then
      begin
         RetornoConsultaResumoOT := ttpRetornoConsultaResumoOT.CreateFromXmlString( FBodyReceived );
      end
      else
         if not rp then
         begin
           FBodyReceived := stringReplace( FBodyReceived, '<body>', '', [rfIgnoreCase]);
           FBodyReceived := stringReplace( FBodyReceived, '</body>', '', [rfIgnoreCase]);
           with ttpMensagemErro.CreateFromXmlString(  FBodyReceived ) do
           try
              msgError := descricao.Text;
           finally
              Free;
           end;
         end;
      except
      on e:Exception do
      begin
         result:=False;
         msgError := 'ConsultaContrato:'+e.Message;
      end;
   end;
end;

function TAdministradoraNDDVersao003ws.PagamentoImediatoParcela: boolean;

   function GerapagamentoImediatoOT_envio : string;
   begin
      with tpagamentoImediatoOT_envio.Create do
      try
         versao := VersaoNDD;
         token  := TokenPEF;


         infPgtoOT.cnpj := Bean.cnpj_matriz;
         infPgtoOT.ID   := FGUID;
         infPgtoOT.autorizacao.ciot := tciot_tpAutorizacaoOT.Create;
         infPgtoOT.autorizacao.ciot.numero             := Copy(Bean.NumeroCIOT,1, 12);
         infPgtoOT.autorizacao.ciot.ciotCodVerificador := Copy(Bean.NumeroCIOT,13, 4);

         if TPagamento_0000( BeanTXT ).TipoParcela = 'ADT' then
            infPgtoOT.nomeParcela := 'Adiantamento' //+TPagamento_0000( BeanTXT ).NumeroParcela
         else if TPagamento_0000( BeanTXT ).TipoParcela = 'SLD' then
            infPgtoOT.nomeParcela := 'Saldo'
         else if TPagamento_0000( BeanTXT ).TipoParcela = 'CUS' then
            infPgtoOT.nomeParcela := 'Custo'+TPagamento_0000( BeanTXT ).NumeroParcela;


         infPgtoOT.motivo := TPagamento_0000( BeanTXT ).MotivoDoPagamento;
         result := GetAsString;
         result := StringReplace( Result, '<pagamentoImediatoOT_envio ', '<pagamentoImediatoOT_envio xmlns="http://www.nddigital.com.br/nddcargo" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" ', [] );
      finally
        free;
      end;
   end;
var
   pagamentoImediatoOT_envio : widestring;
   retornoPagamentoImediato: ttpRetornoPagamentoImediato;
   rp : Boolean;
begin
   try
      GeraGuid;
      pagamentoImediatoOT_envio := GerapagamentoImediatoOT_envio;
      pagamentoImediatoOT_envio := PrepraraParaUTF8( pagamentoImediatoOT_envio );
      result := Assina( 'infPgtoOT', pagamentoImediatoOT_envio, pagamentoImediatoOT_envio );
      if result then
      try
         result := ComunicaWS( pagamentoImediatoOT_envio, '2005', '100', '1', rp );
      except
         on e:Exception do
         begin
            result:=False;
            msgError := 'ao integrar com WS '+e.Message;
         end;
      end;

      if Result then
      begin
         retornoPagamentoImediato := ttpRetornoPagamentoImediato.CreateFromXmlString( FBodyReceived );
         with retornoPagamentoImediato do
         try
           result := rp;
           if assigned(mensagens) then
              msgError := GetMensagens( mensagens.descricao )
           else
              msgError := FResponseCodeMessage;
         finally
           retornoPagamentoImediato.Free;
         end;
      end
      else if not rp then
      begin
        FBodyReceived := stringReplace( FBodyReceived, '<body>', '', [rfIgnoreCase]);
        FBodyReceived := stringReplace( FBodyReceived, '</body>', '', [rfIgnoreCase]);
        with ttpMensagemErro.CreateFromXmlString(  FBodyReceived ) do
        try
           msgError := descricao.Text;
        finally
           Free;
        end;
      end;

      if result then
         Situacao := tsrAprovado
      else
         Situacao := tsrErro;
   except
      on e:Exception do
      begin
         Situacao := tsrErro;
         result:=False;
         msgError := 'ExtratoDe:'+e.Message;
      end;
   end;
end;

function TAdministradoraNDDVersao003ws.AlteraContrato: boolean;
   function GetContratoParaAlteracao( var msg : string; var RetornoConsultaResumoOT : ttpRetornoConsultaResumoOT ) : Boolean;
   begin
      try
         result := GeraConsultaContratoFrete( RetornoConsultaResumoOT );
         if Result then
         begin
            with RetornoConsultaResumoOT do
            begin
              if mensagens_IsSet_ then
              begin
                 if  ttpMensagem( mensagens.mensagem.Objects[0] ).codigo <> '123' then
                 begin
                    msg := GetMensagens( mensagens.mensagem );
                    result := false;
                 end;
              end;
              if result and not Assigned( retConsultaResumoOT )  then
              begin
                 msg := 'Contrato sem informações';
                 Result := False;
              end
              else if result then
              begin
                 if retConsultaResumoOT.ide.status <> '0' then
                 begin
                    result := False;
                    msg := 'A viagem não esta com situação vigente';
                 end
                 else
                    result := true;
              end;
            end;
         end
         else
           result := false;
      except
         on e:Exception do
         begin
            result:=False;
            msgError := 'GetContrato:'+e.Message;
         end;
      end;
   end;

   function BuscaValorAtualParcela( var msg : string;
                                    txtParcela : TAlteracaoContrato_0100;
                                    RetornoConsultaResumoOT : ttpRetornoConsultaResumoOT;
                                    var ValorReal : Extended;  var ValorAplicado : Extended ) : Boolean;
   var
     vp : Integer;
     p : tparcela_parcelas_tpInfRetornoConsultaResumoOT;
     desParcelas : string;
     existeParcela : boolean;
   begin
      try
         with RetornoConsultaResumoOT do
         begin
            result := True;
            if not retConsultaResumoOT.parcelas_IsSet_ then
            begin
               result := False;
               msg := 'Não possui parcelas este contrato de frete';
            end
            else
            begin
               //identifica a parcela e verifica a situação da mesma
               result := False;
               msg    := 'Parcela '+txtParcela.TipoParcela+' '+txtParcela.NumeroParcela+' não existe no contrato';
               desParcelas := #10'Parcelas localizadas: ';
               for vp:=0 to retConsultaResumoOT.parcelas.parcela.count -1 do
               begin
                  p := tparcela_parcelas_tpInfRetornoConsultaResumoOT( retConsultaResumoOT.parcelas.parcela.Objects[vp] );
                  desParcelas := desParcelas+#10'Parcela:'+p.nome+' situacao '+p.status;
                  existeParcela  := false;
                  if    ((txtParcela.TipoParcela = 'ADT') and (p.nome = 'Adiantamento'+txtParcela.NumeroParcela))
                     or ((txtParcela.TipoParcela = 'SLD') and (p.nome = 'Saldo'))
                     or ((txtParcela.TipoParcela = 'CUS') and (p.nome = 'Custo'+txtParcela.NumeroParcela)) then
                  begin
                     existeParcela  := true;
                     if p.status  <>'0' then
                     begin
                        result := False;
                        msg := 'Parcela  '+txtParcela.TipoParcela+' '+txtParcela.NumeroParcela+' não esta "Em aberto" '+p.status;
                     end
                     else
                     begin
                        ValorReal     := DefStrToFloat(  p.valorReal,0 );
                        ValorAplicado := DefStrToFloat(  p.valorAplicado,0 );
                        result := True;
                     end;
                     break;
                  end;
               end;

               if not existeParcela  then
               begin
                    msg := msg +desParcelas;
               end;


            end;
         end;
      except
         on e:Exception do
         begin
            result:=False;
            msgError := 'BuscaValorAtualParcela:'+e.Message;
         end;
      end;
   end;

   function InsereMudancaParcela( var msg : string;
                                  txtParcela : TAlteracaoContrato_0100;
                                  ValorReal : Extended; ValorAplicado : Extended;
                                  infOT : tinfOT_tpAlteraOT ) : Boolean;
   var
      _alteracao : talteracao;
   begin
     try
        with infOT do
        begin
          _alteracao := talteracao.Create;

          _alteracao.financeiro := tfinanceiro.Create;
          _alteracao.financeiro.ajustaParc := tajustaParc.Create;
          if      txtParcela.TipoParcela = 'ADT' then
            _alteracao.financeiro.ajustaParc.nome := 'Adiantamento'+txtParcela.NumeroParcela
          else if txtParcela.TipoParcela = 'SLD' then
            _alteracao.financeiro.ajustaParc.nome := 'Saldo'
          else if txtParcela.TipoParcela = 'CUS' then
            _alteracao.financeiro.ajustaParc.nome := 'Custo'+txtParcela.NumeroParcela;

          _alteracao.financeiro.ajustaParc.altValores := taltValores.Create;

          if txtParcela.Valor > ValorReal then  //adicional
          begin
             _alteracao.financeiro.ajustaParc.altValores.adicional := ttpAdicionalParcela.Create;
             _alteracao.financeiro.ajustaParc.altValores.adicional.valor := formataNumero(txtParcela.Valor - ValorReal);
             _alteracao.financeiro.ajustaParc.altValores.adicional.rubrica := '1';
          end
          else if txtParcela.Valor < ValorReal then  //desconto
          begin
             _alteracao.financeiro.ajustaParc.altValores.desconto := ttpDescontoParcelaAlteracao.Create;
             _alteracao.financeiro.ajustaParc.altValores.desconto.vlrDesc := formataNumero(ValorReal-txtParcela.Valor);
             _alteracao.financeiro.ajustaParc.altValores.desconto.rubrica := '1';
             _alteracao.financeiro.ajustaParc.altValores.desconto.nmDesc  := txtParcela.Descricao;
             _alteracao.financeiro.ajustaParc.altValores.desconto.tpDesc  := '1'; //retido na fonte
             _alteracao.financeiro.ajustaParc.altValores.desconto.dsDesc  := txtParcela.Observacao;
             _alteracao.financeiro.ajustaParc.altValores.desconto.rubrica := '1';
          end;

          alteracoes.alteracao.AddObject('?', _alteracao);
        end;
        result := True;
     except
        on e:Exception do
        begin
           result:=False;
           msgError := 'InsereMudancaParcela:'+e.Message;
        end;
     end;
   end;

   function MontaAlteracaoParcelas( var msg : string; txt : TAlteracaoContrato_0000; infOT : tinfOT_tpAlteraOT; RetornoConsultaResumoOT : ttpRetornoConsultaResumoOT) : Boolean;
   var
      txtParcela : TAlteracaoContrato_0100;
      ValorReal : Extended;
      ValorAplicado : Extended;
   begin
     try
        txtParcela := TAlteracaoContrato_0100(txt.Reg0100.First);
        repeat
           Result := BuscaValorAtualParcela( msg, txtParcela, RetornoConsultaResumoOT, ValorReal, ValorAplicado );
           if result then
           begin
              if txtParcela.Valor <> ValorReal then
                 Result := InsereMudancaParcela( msg, txtParcela, ValorReal, ValorAplicado, infOT);
           end;

           if not result then Break; // em qualquer problema para tudo

           txtParcela := TAlteracaoContrato_0100(txt.Reg0100.Next);
        until not Assigned( txtParcela );
     except
        on e:Exception do
        begin
           result:=False;
           msgError := 'MontaAlteracaoParcelas:'+e.Message;
        end;
     end;
   end;


   function _InsereNovaParcela( var msg : string;
                                  txtParcela : TAlteracaoContrato_0200;
                                  NumeroParcela : integer;
                                  infOT : tinfOT_tpAlteraOT ) : Boolean;
   var
      _alteracao : talteracao;
   begin
     try
        with infOT do
        begin
          _alteracao := talteracao.Create;

          _alteracao.financeiro := tfinanceiro.Create;
          _alteracao.financeiro.novaParc := ttpAlterarParcela.Create;

          _alteracao.financeiro.novaParc.nome := 'Custo'+intToStr( Numeroparcela );

          _alteracao.financeiro.novaParc.valorAplicado := formataNumero( txtParcela.Valor );
          _alteracao.financeiro.novaParc.valorReal     := formataNumero( txtParcela.Valor );
          _alteracao.financeiro.novaParc.rubrica       := '3'; // rubrica de despesa
          _alteracao.financeiro.novaParc.tipoPgto.manual := tmanual.Create;
          _alteracao.financeiro.novaParc.tipoPgto.manual.dataPrevisao := FormatDateTime('yyyy-mm-dd', now+7);
          _alteracao.financeiro.novaParc.tipoPgto.manual.efetivacao   := '3'; // contratante

          alteracoes.alteracao.AddObject('?', _alteracao);
        end;
        result := True;
     except
        on e:Exception do
        begin
           result:=False;
           msgError := 'InsereMudancaParcela:'+e.Message;
        end;
     end;
   end;

   function InsereNovasParcelas( var msg : string; txt : TAlteracaoContrato_0000; ultimaParcelaCusto:Integer; infOT : tinfOT_tpAlteraOT) : Boolean;
   var
      txtParcela : TAlteracaoContrato_0200;
      ValorReal : Extended;
      ValorAplicado : Extended;
   begin
     try
        txtParcela := TAlteracaoContrato_0200(txt.Reg0200.First);
        repeat
           if strTointDef( txtParcela.NumeroParcela ,0) <= ultimaParcelaCusto then
           begin
              result := False;
              msgError := 'Já existe uma parcela de custo com este número '+txtParcela.NumeroParcela;
           end
           else
           begin
             ultimaParcelaCusto := strTointDef( txtParcela.NumeroParcela ,0);

             Result := _InsereNovaParcela( msg, txtParcela, ultimaParcelaCusto, infOT);
           end;

           if not result then Break; // em qualquer problema para tudo

           txtParcela := TAlteracaoContrato_0200(txt.Reg0200.Next);
        until not Assigned( txtParcela );
     except
        on e:Exception do
        begin
           result:=False;
           msgError := 'MontaAlteracaoParcelas:'+e.Message;
        end;
     end;
   end;

   function AddalterarOT_envio( Ot : string  ) : string;
   begin
     result := '<?xml version="1.0" encoding="utf-8"?>'#10+
               '<alterarOT_envio '+
                   'xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" '+
                   'xmlns:xsd="http://www.w3.org/2001/XMLSchema" '+
                   'versao="'+VersaoNDD+'" '+
                   'token="'+TokenPEF+'" '+
                   'xmlns="http://www.nddigital.com.br/nddcargo"> '+
                   OT+
               '</alterarOT_envio>';
   end;

   function _Comunica( infOT : tinfOT_tpAlteraOT ) : boolean;
   var
     sinfOt : WideString;
     alterarOT_envio : WideString;
     rp : Boolean;
   begin
      try
         sinfOt := infOT.GetAsString;
         alterarOT_envio := AddalterarOT_envio( '<OT>'+sinfOT+'</OT>');
         result := Assina( 'infOT', alterarOT_envio, alterarOT_envio );
         if result then
         try
            result := ComunicaWS( alterarOT_envio, '1001', '100', '7', rp ) and rp;
         except
            on e:Exception do
            begin
               result:=False;
               msgError := 'ao integrar com WS:'+e.message;
            end;
         end
         else
         begin
            if not rp then
            begin
              FBodyReceived := stringReplace( FBodyReceived, '<body>', '', [rfIgnoreCase]);
              FBodyReceived := stringReplace( FBodyReceived, '</body>', '', [rfIgnoreCase]);
              with ttpMensagemErro.CreateFromXmlString(  FBodyReceived ) do
              try
                 msgError := descricao.Text;
              finally
                 Free;
              end;
            end;
            result := false;
         end;
      except
         on e:Exception do
         begin
            result:=False;
            msgError := 'SolicitaMudancaParcela:'+e.Message;
         end;
      end;
   end;

   function GetUltimaParcelaCusto( RetornoConsultaResumoOT : ttpRetornoConsultaResumoOT) : Integer;
   var
     vp : Integer;
     p : tparcela_parcelas_tpInfRetornoConsultaResumoOT;
     numeroParcela : Integer;
   begin
      try
         with RetornoConsultaResumoOT do
         begin
            result := 0;
            for vp:=0 to retConsultaResumoOT.parcelas.parcela.count -1 do
            begin
               p := tparcela_parcelas_tpInfRetornoConsultaResumoOT( retConsultaResumoOT.parcelas.parcela.Objects[vp] );
               if  (Copy(p.nome,1,5) = 'Custo') then
               begin
                   numeroParcela := StrToIntDef( Copy(p.nome,6,10),0 );
                   if numeroParcela > result then
                      result := numeroParcela
               end;
            end;
         end;
      except
         on e:Exception do
         begin
            result:=0;
            msgError := 'GetUltimaParcelaCusto:'+e.Message;
         end;
      end;
   end;

var
   msg : string;
   RetornoConsultaResumoOT : ttpRetornoConsultaResumoOT;
   txt : TAlteracaoContrato_0000;
   infOT : tinfOT_tpAlteraOT;
   ultimaParcelaCusto : Integer;
begin
   try
      GeraGuid;
      RetornoConsultaResumoOT := nil;
      infOT := tinfOT_tpAlteraOT.Create;
      try
         txt := TAlteracaoContrato_0000( self.BeanTXT );
         // configura o infOT
         with infOT do
         begin
           ID := FGUID;
           cnpj := txt.cnpjFilial;
           autorizacao.ciot := tciot_tpAutorizacaoOT.Create;
           autorizacao.ciot.numero := Copy(txt.CIOT,1,12);
           autorizacao.ciot.ciotCodVerificador := Copy(txt.CIOT,13, 4);
           motivo := txt.Observacao;
         end;


         // primeiro consulta o contrato de frete
         Result := GetContratoParaAlteracao( msg, RetornoConsultaResumoOT );
         if result then
         begin
            if txt.reg0100.Count > 0 then // altera parcela?
            begin
               result := MontaAlteracaoParcelas( msg, txt, infOt, RetornoConsultaResumoOT);
            end;

            if result and (txt.reg0200.Count > 0) then // tem novas parcelas para acidionar?
            begin
               ultimaParcelaCusto := GetUltimaParcelaCusto( RetornoConsultaResumoOT );
               result := InsereNovasParcelas( msg, txt, ultimaParcelaCusto, infOt);
            end;
         end;

         if result then // somente se conseguiu montar toda a alteração é que comunica
         begin
            if infOT.alteracoes.alteracao.count = 0 then
            begin
               msgError := 'Não existe nada para ser modificado no contrato';
               result := False;
               Situacao := tsrAprovado;
            end
            else
            begin
               result := _Comunica( infOT );
               if result then
                 Situacao := tsrAguardando
               else
                 Situacao := tsrErro;
            end;
         end
         else
         begin
           msgError := msg;
           Situacao := tsrErro;
         end;
      finally
         if Assigned( RetornoConsultaResumoOT ) then RetornoConsultaResumoOT.Free;
         infOT.free;
      end;
   except
      on e:Exception do
      begin
         result:=False;
         Situacao := tsrErro;
         msgError := 'AlteraContrato:'+e.Message;
      end;
   end;
end;

function TAdministradoraNDDVersao003ws.verificaRetornoAlteracao : Boolean;
var
  body : string;
begin
   try
      LogIt( 'Carregando retorno '+bean.NumeroProtocoloProcessamento );

      if Consulta( body, '1001'  ) then
      begin
        ArquivoRecebido.Text :=  body;
        with ttpRetornoAlteracao.CreateFromXmlString( body ) do
        try
          if assigned( mensagens ) then
          begin
             msgError := GetMensagens( mensagens.mensagem );
             result := false;
             Situacao := tsrErro {E};
          end else result := true;

          if result and Assigned( alteracao ) then
          begin
             with alteracao do
             begin
                Situacao := tsrAprovado;
                msgError := 'Frete: '+alteracao.valores.vlrFrete+#10+
                            'Despesas: '+alteracao.valores.vlrDespesas+#10+
                            'Combustivel: '+alteracao.valores.vlrCombustivel+#10+
                            'Saldo: '+alteracao.valores.vlrSaldo;
             end;
          end
          else
          begin
             Situacao := tsrErro {E};
          end;
        finally
           Free;
        end;
      end
      else
      begin
         Situacao := tsrAguardando;
      end;
      Result := True;
   except
      on e : exception do begin
         Result := true;
         Situacao := tsrErro {E};
         MsgError := 'verificaRetornoAlteracao:'+e.message;
         LogIt( e.message+' - '+body );
      end;
   end;
end;

initialization
   ListaCertificados := TStringList.Create;
   InitializeCriticalSection(CritSect);

finalization
   while ListaCertificados.Count > 0 do
   begin
      TStoreCertificate(ListaCertificados.Objects[0]).store := nil;
      TStoreCertificate(ListaCertificados.Objects[0]).certificate := nil;
      ListaCertificados.Objects[0].Free;
      ListaCertificados.Delete(0);
   end;
   ListaCertificados.Free;
   DeleteCriticalSection(CritSect);
   
end.
