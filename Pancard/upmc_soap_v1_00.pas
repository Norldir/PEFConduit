unit upmc_soap_v1_00;

interface
uses  Classes, SOAPHTTPTrans, HTTPApp, SysUtils;

function SOAPGet( host : string; SoapAction, XML : string) : string;
function ParseText( Texto : AnsiString; Decode : Boolean = True) : AnsiString;


implementation

uses StrUtils, XMLDoc, XMLIntf;
const
  cSOAPHeader11 = '<?xml version="1.0" encoding="utf-8"?>'+
                '<soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">'+
                   '<soap:Body>';
  cSOAPFooter11 =    '</soap:Body>'+
                '</soap:Envelope>';
  cXMLNS = 'xmlns="http://www.repom.com.br/RepomIntegracaoWs/Integracao"';


  cSOAPHeader12 = '<?xml version="1.0" encoding="utf-8"?>'+
                  '<soap12:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://www.w3.org/2003/05/soap-envelope">'+
                    '<soap12:Body>';
  cSOAPFooter12 =   '</soap12:Body>'+
                  '</soap12:Envelope>';

{Procedimento responsavel por fazer a comunicaзгo SOAP com o web server da repom. }
function SOAPGet( host : string; SoapAction, XML : string) : string;
var
  Texto : String;
  Acao  : TStringList ;
  Stream: TMemoryStream;
  StrStream: TStringStream;
  ReqResp: THTTPReqResp;
begin

  Acao := TStringList.Create;
  Stream := TMemoryStream.Create;
  Texto := cSOAPHeader11+
             '<'+SoapAction+' '+cXMLNS+'>'+
                 XML+
             '</'+SoapAction+'>'+
           cSOAPFooter11;

  Acao.Text  := Texto;
//  if not FileExists( ExtractFilePath(application.ExeName)+'logRepom' ) then
//     CreateDir( ExtractFilePath(application.ExeName)+'logRepom' );
//  Acao.SaveToFile( ExtractFilePath(application.ExeName)+'logRepom\'+SoapAction{+'_'+formatDateTime('yy_mm_dd_hh_nn_ss_zzz', Now)}+'.xml' );
  Acao.SaveToStream(Stream);


  ReqResp := THTTPReqResp.Create(nil);
  ReqResp.URL := Host;
  //ReqResp.UseUTF8InHeader := True;
  ReqResp.SoapAction := 'http://www.repom.com.br/RepomIntegracaoWs/Integracao/'+trim(SoapAction)+'';

  try
    try
       ReqResp.Execute(Acao.Text, Stream);
       StrStream := TStringStream.Create('');
       StrStream.CopyFrom(Stream, 0);
       Acao.Text := StrStream.DataString;
       StrStream.Free;
    except on E: Exception do
      begin
        raise Exception.Create(E.Message);
      end;
    end;
    Acao.Delete(0);
    result := Acao.text;
//    Acao.SaveToFile( ExtractFilePath(application.ExeName)+'logRepom\'+SoapAction{+'_'+formatDateTime('yy_mm_dd_hh_nn_ss_zzz', Now)}+'_result.xml' );
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
   NodeList : IXMLNodeList;
   xml : TXMLDocument;
begin

   SOAPResponseEnvelope := StringReplace(SOAPResponseEnvelope, 'utf-8', 'iso-8859-1', []);
   SOAPResponseEnvelope := StringReplace(SOAPResponseEnvelope, 'UTF-8', 'iso-8859-1', []);

   xml := TXMLDocument.Create( nil );
   try
      xml.XML.Text := SOAPResponseEnvelope;
      xml.Active := True;

      NodeList := xml.ChildNodes; // Raiz
      node := NodeList.Nodes[1]; //xml -> envelope
      NodeList := node.ChildNodes;
      node := NodeList.First; // Body
      NodeList := node.ChildNodes;
      node := NodeList.First; //Response
      Result  := node.XML ;
   finally
      xml.Active := False;
   end;
end;

function ParseText( Texto : AnsiString; Decode : Boolean = True) : AnsiString;
begin
  if Decode then
   begin
    Texto := StringReplace(Texto, '&amp;', '&', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&lt;', '<', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&gt;', '>', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&quot;', '"', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&#39;', #39, [rfReplaceAll]);
    Texto := StringReplace(Texto, '&aacute;', 'б', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Aacute;', 'Б', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&acirc;' , 'в', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Acirc;' , 'В', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&atilde;', 'г', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Atilde;', 'Г', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&agrave;', 'а', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Agrave;', 'А', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&eacute;', 'й', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Eacute;', 'Й', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&ecirc;' , 'к', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Ecirc;' , 'К', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&iacute;', 'н', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Iacute;', 'Н', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&oacute;', 'у', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Oacute;', 'У', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&otilde;', 'х', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Otilde;', 'Х', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&ocirc;' , 'ф', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Ocirc;' , 'Ф', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&uacute;', 'ъ', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Uacute;', 'Ъ', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&uuml;'  , 'ь', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Uuml;'  , 'Ь', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&ccedil;', 'з', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Ccedil;', 'З', [rfReplaceAll]);
    Texto := UTF8Decode(Texto);
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

function GetRetornoIntegraDadosCadastroNacional( retornoXML : string; var xmlDados : string; var ResultadoOperacao : boolean ) : boolean;
var
  xmlDoc : IXMLDocument;
  node : IXMLNode;
  sErros : string;
begin
  try
    xmlDoc := TXMLDocument.Create(nil);
    retornoXML := stringreplace(retornoXML, 'utf-8',  'iso-8859-1', []);
    xmlDoc.XML.Text := retornoXML;
    try
       xmlDoc.active := true;
       Node := xmlDoc.ChildNodes.First; //<?xml...
       Node := node.NextSibling; //<soap:Envelope....
       Node := node.ChildNodes.First; //<soap:Body....
       Node := node.ChildNodes.First; //<IntegraDadosCadastroNacionalResponse....

       ResultadoOperacao := node.ChildNodes.FindNode('IntegraDadosCadastroNacionalResult').text = 'true';

       sErros := ParseText( node.ChildNodes.FindNode('strXmlErr').text );

    finally
       xmlDoc.Active := false;
       xmlDoc := nil;
    end;
    xmlDados := sErros;
    result := true;
  except
    on e:exception do
    begin
       xmlDados := e.Message;
       result := false;
    end;
  end;
end;

function GetRetornoValidaAberturaContrato( retornoXML : string; var xmlDados : string; var ResultadoOperacao : boolean ) : boolean;
var
  xmlDoc : IXMLDocument;
  node : IXMLNode;
  sErros : string;
begin
  try
    xmlDoc := TXMLDocument.Create(nil);
    retornoXML := stringreplace(retornoXML, 'utf-8',  'iso-8859-1', []);
    xmlDoc.XML.Text := retornoXML;
    try
       xmlDoc.active := true;
       Node := xmlDoc.ChildNodes.First; //<?xml...
       Node := node.NextSibling; //<soap:Envelope....
       Node := node.ChildNodes.First; //<soap:Body....
       Node := node.ChildNodes.First; //<ValidaAberturaContratoResponse ....

       ResultadoOperacao := node.ChildNodes.FindNode('ValidaAberturaContratoResult').text = 'true';
       if not ResultadoOperacao then
          sErros := ParseText( node.ChildNodes.FindNode('strXmlErr').text )
       else
          sErros := ParseText( node.ChildNodes.FindNode('strXmlOut').text );
    finally
       xmlDoc.Active := false;
       xmlDoc := nil;
    end;
    xmlDados := sErros;
    result := true;
  except
    on e:exception do
    begin
       xmlDados := e.Message;
       result := false;
    end;
  end;
end;

end.
