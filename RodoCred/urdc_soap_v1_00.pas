unit urdc_soap_v1_00;

interface
uses Classes, SOAPHTTPTrans, t5SOAPHTTPTrans, HTTPApp, SysUtils;

function SOAPGet( host : string; SoapAction, XML : string; proxy : string =''; proxyusuario : string = ''; proxysenha : string = '') : string;
function SOAPResponse( SOAPResponseEnvelope : string ) : string;
function ParseText( Texto : AnsiString; Decode : Boolean = True) : AnsiString;


implementation

uses StrUtils, XMLDoc, XMLIntf;
const
  cSOAPHeader11 = '<?xml version="1.0" encoding="utf-8"?>'+
                '<soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">'+
                   '<soap:Body>';
  cSOAPFooter11 =    '</soap:Body>'+
                '</soap:Envelope>';
  cXMLNS = 'xmlns="https://ws.rodocred.com.br/"';


  cSOAPHeader12 = '<?xml version="1.0" encoding="utf-8"?>'+
                  '<soap12:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://www.w3.org/2003/05/soap-envelope">'+
                    '<soap12:Body>';
  cSOAPFooter12 =   '</soap12:Body>'+
                  '</soap12:Envelope>';

type
   TLocalHTTPReqResp = Tt5HTTPReqResp;

{Procedimento responsavel por fazer a comunica��o SOAP com o web server da repom. }
function SOAPGet( host : string; SoapAction, XML : string; proxy : string =''; proxyusuario : string = ''; proxysenha : string = '') : string;
var
  Texto : String;
  Acao  : TStringList ;
  Stream: TMemoryStream;
  StrStream: TStringStream;
  ReqResp: TLocalHTTPReqResp;
  tentativa : Integer;
begin

  Acao := TStringList.Create;
  Stream := TMemoryStream.Create;
  Texto := cSOAPHeader11+
                 StringReplace( XML, '>', ' '+cXMLNS+'>', [])+
           cSOAPFooter11;

  Acao.Text  := Texto;
//  if not FileExists( ExtractFilePath(application.ExeName)+'logRodocred' ) then
//     CreateDir( ExtractFilePath(application.ExeName)+'logRodocred' );
//  if FindCmdLineSwitch('debug', ['-'], true ) then
//     Acao.SaveToFile( ExtractFilePath(application.ExeName)+'logRodocred\'+SoapAction{+'_'+formatDateTime('yy_mm_dd_hh_nn_ss_zzz', Now)}+'.xml' );
  Acao.SaveToStream(Stream);


  ReqResp := TLocalHTTPReqResp.Create(nil);

  ReqResp.Proxy    := proxy;
  ReqResp.UserName := proxyusuario;
  ReqResp.Password := proxysenha;

  ReqResp.ConnectTimeout := 500000;
  ReqResp.SendTimeout    := 120000;
  ReqResp.ReceiveTimeout := 120000;


  ReqResp.URL := Host;
  //ReqResp.UseUTF8InHeader := True;
  ReqResp.SoapAction := 'https://ws.rodocred.com.br/'+trim(SoapAction)+'';

  try
    try
       tentativa := 0;
       while True do
       try
          ReqResp.Execute(Acao.Text, Stream);
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
        raise Exception.Create('SOAPGet:'+E.Message);
      end;
    end;
    Acao.Delete(0);
    result := Acao.text;
//    if FindCmdLineSwitch('debug', ['-'], true ) then
//       Acao.SaveToFile( ExtractFilePath(application.ExeName)+'logRodocred\'+SoapAction{+'_'+formatDateTime('yy_mm_dd_hh_nn_ss_zzz', Now)}+'_result.xml' );
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
//   NodeList : IXMLNodeList;
   xml : IXMLDocument;
begin

   SOAPResponseEnvelope := StringReplace(SOAPResponseEnvelope, 'utf-8', 'iso-8859-1', []);
   SOAPResponseEnvelope := StringReplace(SOAPResponseEnvelope, 'UTF-8', 'iso-8859-1', []);

   xml := TXMLDocument.Create(nil);
   try
      xml.XML.Text := SOAPResponseEnvelope;
      xml.Active := True;

      node := xml.ChildNodes.FindNode('soap:Envelope');
      if Assigned(node) then
      begin
         node := node.ChildNodes.FindNode('soap:Body');
         if Assigned(node) then
         begin
            node := node.ChildNodes.First; // o response;
            if Assigned(node) then
               result := node.XML
            else
               raise Exception.Create('XML n�o tem RESPONSE');
         end
         else
            raise Exception.Create('XML n�o tem BODY');
      end
      else
        raise Exception.Create('XML n�o tem ENVELOPE');

//      NodeList := xml.ChildNodes; // Raiz
//      node := NodeList.Nodes[1]; //xml -> envelope
//      NodeList := node.ChildNodes;
//      node := NodeList.First; // Body
//      NodeList := node.ChildNodes;
//      node := NodeList.First; //Response
//      Result  := node.XML ;
   finally
      xml.Active := False;
      xml := nil;
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
    Texto := StringReplace(Texto, '&aacute;', '�', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Aacute;', '�', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&acirc;' , '�', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Acirc;' , '�', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&atilde;', '�', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Atilde;', '�', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&agrave;', '�', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Agrave;', '�', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&eacute;', '�', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Eacute;', '�', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&ecirc;' , '�', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Ecirc;' , '�', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&iacute;', '�', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Iacute;', '�', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&oacute;', '�', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Oacute;', '�', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&otilde;', '�', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Otilde;', '�', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&ocirc;' , '�', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Ocirc;' , '�', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&uacute;', '�', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Uacute;', '�', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&uuml;'  , '�', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Uuml;'  , '�', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&ccedil;', '�', [rfReplaceAll]);
    Texto := StringReplace(Texto, '&Ccedil;', '�', [rfReplaceAll]);
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

function GetRetornoAutenticarCliente( retornoXML : string; var xmlDados : string; var ResultadoOperacao : boolean ) : boolean;
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

function GetRetornoManterTransportador( retornoXML : string; var xmlDados : string; var ResultadoOperacao : boolean ) : boolean;
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
