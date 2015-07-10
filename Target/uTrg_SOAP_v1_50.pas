unit uTrg_SOAP_v1_50;

interface
uses Classes, T5SOAPHTTPTrans, HTTPApp, SysUtils;

function SOAPGet( host,
                  Identification,
                  Token,
                  sAction : string;
                  SoapAction : string;
                  XML : WideString;
                  sTo : string = 'https://vmdevweb01/targetservices/target/tms/TMSService.svc/soap';
                  proxy : string =''; proxyusuario : string = ''; proxysenha : string = '') : WideString;

function SOAPResponse( SOAPResponseEnvelope : string ) : string;


implementation

uses StrUtils, XMLDoc, XMLIntf, forms;

const
  cSOAPHeader11 = '<?xml version="1.0" encoding="UTF-8"?>'+
                  '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" '+
                                    'xmlns:tem="http://tempuri.org/" '+
                                    'xmlns:tar="http://schemas.datacontract.org/2004/07/TARGET.VectioFrete.Application.WCF.Contracts.External">'+
                  '<soapenv:Header/>'+
                  '<soapenv:Body>';
  cSOAPFooter11 = '</soapenv:Body>'+
                '</soapenv:Envelope>';


  cSOAPHeader12 = '<?xml version="1.0" encoding="utf-8"?>'+
                  '<soap12:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" '+
                                   'xmlns:xsd="http://www.w3.org/2001/XMLSchema" '+
                                   'xmlns:soap12="http://www.w3.org/2003/05/soap-envelope" '+
                                   'xmlns:tem="http://tempuri.org/">'+
                  '<soap12:Body>';


  cSOAPFooter12 = '</soap12:Body>'+
                  '</soap12:Envelope>';
  cXMLNS = '';

function ParseText( Texto : wideString; Decode : Boolean = True) : WideString;
var
  utf : widestring;
begin
  if Decode then
   begin
    Texto := StringReplace(Texto, '&amp;', 'e', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&lt;', '<', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&gt;', '>', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&quot;', '"', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&#39;', #39, [rfReplaceAll]);
    Texto := StringReplace(Texto, '&aacute;', 'á', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Aacute;', 'Á', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&acirc;' , 'â', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Acirc;' , 'Â', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&atilde;', 'ã', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Atilde;', 'Ã', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&agrave;', 'à', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Agrave;', 'À', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&eacute;', 'é', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Eacute;', 'É', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&ecirc;' , 'ê', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Ecirc;' , 'Ê', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&iacute;', 'í', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Iacute;', 'Í', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&oacute;', 'ó', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Oacute;', 'Ó', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&otilde;', 'õ', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Otilde;', 'Õ', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&ocirc;' , 'ô', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Ocirc;' , 'Ô', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&uacute;', 'ú', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Uacute;', 'Ú', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&uuml;'  , 'ü', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Uuml;'  , 'Ü', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&ccedil;', 'ç', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Ccedil;', 'Ç', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&', 'e', [rfReplaceAll]);
    utf := texto;
    Texto := UTF8Decode(Texto);
    if texto='' then texto := utf;
   end
  else
   begin
    Texto := StringReplace(Texto, '&', '&amp;', [rfReplaceAll]);
    Texto := StringReplace(Texto, '<', '&lt;', [rfReplaceAll]);
    Texto := StringReplace(Texto, '>', '&gt;', [rfReplaceAll]);
    Texto := StringReplace(Texto, '"', '&quot;', [rfReplaceAll]);
    Texto := StringReplace(Texto, #39, '&#39;', [rfReplaceAll]);
    Texto := UTF8Encode(Texto);
   end;

  Result := Texto;
end;

{Procedimento responsavel por fazer a comunicação SOAP com o web server da repom. }
function SOAPGet( host,
                  Identification,
                  Token,
                  sAction : string;
                  SoapAction : string;
                  XML : WideString;
                  sTo : string = 'https://vmdevweb01/targetservices/target/tms/TMSService.svc/soap';
                  proxy : string =''; proxyusuario : string = ''; proxysenha : string = '') : WideString;
var
  Texto : WideString;
  Acao  : TStringList ;
  Stream: TMemoryStream;
  StrStream: TStringStream;
  ReqResp: TT5HTTPReqResp;
  tentativa : Integer;
begin

  XML := stringReplace( XML, 'xmlns:tem="http://tempuri.org/" xmlns:tar="http://schemas.datacontract.org/2004/07/TARGET.VectioFrete.Application.WCF.Contracts.External"', '', []);

  xml := UTF8Encode(  xml );

  Acao := TStringList.Create;
  Stream := TMemoryStream.Create;
  Texto := cSOAPHeader11;

  Texto := stringReplace( Texto,
                          '<soapenv:Header/>',
                          '<soapenv:Header>'+
                          '  <Identification>'+Identification+'</Identification>'+
                          '  <Token>'+Token+'</Token>'+
{
                          '  <To soap:mustUnderstand="1" xmlns="http://schemas.microsoft.com/ws/2005/05/addressing/none">'+sTo+'</To>'+
                          '  <Action soap:mustUnderstand="1" xmlns="http://schemas.microsoft.com/ws/2005/05/addressing/none">'+sAction+'</Action>'+
}
                          '</soapenv:Header> ', [] );

  Texto := Texto + XML; //ParseText(XML, False);

  Texto := Texto +
           cSOAPFooter11;

{
TEXTO   := '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:tem="http://tempuri.org/" xmlns:tar="http://schemas.datacontract.org/2004/07/TARGET.VectioFrete.Application.WCF.Contracts.External">'+
'	<soapenv:Header>'+
'		<Identification>tecinco.tms</Identification>'+
'		<Token>0D8Lgk7lWpc=</Token>'+
'	</soapenv:Header>'+
'	<soapenv:Body>'+
'		<tem:CadastrarAutonomo>'+
'			<tem:cadastroAutonomoRequest>'+
'				<tar:RNTRC>44465330</tar:RNTRC>'+
'				<tar:Nome>SADI PEDRO</tar:Nome>'+
'				<tar:Sobrenome>SOMERA</tar:Sobrenome>'+
'				<tar:CPF>17154158336</tar:CPF>'+
'				<tar:DataNascimento>1976-03-12</tar:DataNascimento>'+
'				<tar:RG>203454522</tar:RG>'+
'				<tar:OrgaoExpedidor>SSP-GO</tar:OrgaoExpedidor>'+
'				<tar:CNH>827780865</tar:CNH>'+
'				<tar:TipoCNH>AD</tar:TipoCNH>'+
'				<tar:DataValidadeCNH>2012-01-20</tar:DataValidadeCNH>'+
'				<tar:Sexo>M</tar:Sexo>'+
'				<tar:Naturalidade>RIO VERDE-GO</tar:Naturalidade>'+
'				<tar:Nacionalidade>BRASILEIRA</tar:Nacionalidade>'+
'				<tar:Logradouro>Rua 7 </tar:Logradouro>'+
'				<tar:NumeroEndereco>605</tar:NumeroEndereco>'+
'				<tar:Bairro>VILA AMALIA</tar:Bairro>'+
'				<tar:CEP>75901-000</tar:CEP>'+
'				<tar:CodigoIBGEMunicipio>5218805</tar:CodigoIBGEMunicipio>'+
'				<tar:TelefoneFixo>0</tar:TelefoneFixo>'+
'				<tar:EstadoCivil>1</tar:EstadoCivil>'+
'				<tar:CodigoBanco>1</tar:CodigoBanco>'+
'				<tar:CodigoAgencia>3282</tar:CodigoAgencia>'+
'				<tar:DigitoAgencia>4</tar:DigitoAgencia>'+
'				<tar:ContaCorrente>7.389</tar:ContaCorrente>'+
'				<tar:DigitoContaCorrente>X</tar:DigitoContaCorrente>'+
'			</tem:cadastroAutonomoRequest>'+
'		</tem:CadastrarAutonomo>'+
'	</soapenv:Body>'+
'</soapenv:Envelope>';}

  Acao.Text  := Texto;
  if FindCmdLineSwitch('debug', ['-'], true) then
     try Acao.SaveToFile( ExtractFilePath(application.ExeName)+'Target_env.xml' ); except end;

  Acao.SaveToStream(Stream);

  ReqResp := TT5HTTPReqResp.Create(nil);

  ReqResp.Proxy    := proxy;
  ReqResp.UserName := proxyusuario;
  ReqResp.Password := proxysenha;

  ReqResp.ConnectTimeout := 500000;
  ReqResp.SendTimeout    := 120000;
  ReqResp.ReceiveTimeout := 120000;


  ReqResp.URL := Host;
  ReqResp.UseUTF8InHeader := True;
  //ReqResp.ContentType := 'application/soap+xml; charset=utf-8';

  ReqResp.SoapAction := ( trim(SoapAction));

  try
    try
       tentativa := 0;
       while True do
       try
          ReqResp.Execute( Texto , Stream);
          Break;
       except
          if tentativa <= 0 then Inc(tentativa) else raise;
       end;
       StrStream := TStringStream.Create('');
       StrStream.CopyFrom(Stream, 0);

       Acao.Text := StrStream.DataString;
       StrStream.Free;
    except on E: Exception do
      begin
        raise Exception.Create(E.Message);
      end;
    end;
    Acao.delete(0);
    //while (Acao.Count>0) and (Copy(Acao.text,1,5) <> '<?xml') do Acao.delete(0);neste não vem<xml
    xml := Acao.text;
    xml := UTF8Decode( xml );
    result := xml;
    if FindCmdLineSwitch('debug', ['-'], true) then
     try Acao.SaveToFile( ExtractFilePath(application.ExeName)+'Target_ret.xml' ); except end;
  finally
    Acao.Free;
    Stream.Free;
    ReqResp.Free;
  end;
end;

{Procedimento que faz o tratamento do retorno do  web server, removendo o envelope, retornando somente o conteudo}
function SOAPResponse( SOAPResponseEnvelope : string ) : string;
var
   node : IXMLNode;
   xml : IXMLDocument;
begin
   if pos('<?xml', SOAPResponseEnvelope ) = 0 then
   begin
      SOAPResponseEnvelope := '<?xml version="1.0" encoding="iso-8859-1"?>'+SOAPResponseEnvelope;
   end;
   SOAPResponseEnvelope := StringReplace(SOAPResponseEnvelope, 'utf-8', 'iso-8859-1', []);
   SOAPResponseEnvelope := StringReplace(SOAPResponseEnvelope, 'UTF-8', 'iso-8859-1', []);

   xml := TXMLDocument.Create(nil);
   try
      xml.XML.Text := SOAPResponseEnvelope;
      xml.Active := True;

      node := xml.ChildNodes.FindNode('s:Envelope');
      if Assigned(node) then
      begin
         node := node.ChildNodes.FindNode('s:Body');
         if Assigned(node) then
         begin
            node := node.ChildNodes.First; // o response;
            if Assigned(node) then
            begin
               result :=  node.XML 
            end
            else
               raise Exception.Create('XML não tem RESPONSE');
         end
//         else
//            raise Exception.Create('XML não tem BODY');
      end
      else
        raise Exception.Create('XML não tem ENVELOPE');

//      NodeList := xml.ChildNodes; // Raiz
//      node := NodeList.Nodes[1]; //xml -> envelope
//      NodeList := node.ChildNodes;
//      node := NodeList.First; // Body
//      NodeList := node.ChildNodes;
//      node := NodeList.First; //Response
//      Result  := node.XML ;
   finally
      node := nil;
      xml.Active := False;
      xml := nil;
   end;
end;

end.
