unit urpm_soap_v1_00;

interface
uses Classes, T5SOAPHTTPTrans, HTTPApp, SysUtils, urpm_Cadastros_v1_00;

function SOAPGet( host : string; SoapAction, XML : string; proxy : string =''; proxyusuario : string = ''; proxysenha : string = '') : string;
function SOAPGetRepomIntegracaoArquivosWS( host : string; SoapAction, XML : string; proxy : string =''; proxyusuario : string = ''; proxysenha : string = '') : string;

function ParseText( Texto : AnsiString; Decode : Boolean = True) : AnsiString;

function GetRetorno( retornoXML : string; var xmlDados : string; var ResultadoOperacao : boolean ) : boolean;
{Funcoes de carga de objeto de retorno}
function GetRetornoIntegraDadosCadastroNacional( retornoXML : string; var xmlDados : string; var ResultadoOperacao : boolean ) : boolean;
function GetRetornoValidaAberturaContrato( retornoXML : string; var xmlDados : string; var ResultadoOperacao : boolean ) : boolean;
function GetRetornoAberturaContrato( retornoXML : string; var xmlDados : string; var ResultadoOperacao : boolean ) : boolean;
function GetRetornoCancelamentoContrato( retornoXML : string; var xmlDados : string; var ResultadoOperacao : boolean ) : boolean;
function GetRetornoEmiteContabil( retornoXML : string; var xmlDados : string; var ResultadoOperacao : boolean ) : boolean;


implementation

uses StrUtils, XMLDoc, XMLIntf;
const
  cSOAPHeader11 = '<?xml version="1.0" encoding="utf-8"?>'+
                '<soap:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/">'+
                   '<soap:Body>';
  cSOAPFooter11 =    '</soap:Body>'+
                '</soap:Envelope>';
  cXMLNS = 'xmlns="http://www.repom.com.br/RepomWS/Expedicao"';
  cXMLNSRepomIntegracaoArquivosW = 'xmlns="http://www.repom.com.br/RepomIntegracaoArquivosWS"';

  cSOAPHeader12 = '<?xml version="1.0" encoding="utf-8"?>'+
                  '<soap12:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://www.w3.org/2003/05/soap-envelope">'+
                    '<soap12:Body>';
  cSOAPFooter12 =   '</soap12:Body>'+
                  '</soap12:Envelope>';

{Procedimento responsavel por fazer a comunicação SOAP com o web server da repom. }
function SOAPGet( host : string; SoapAction, XML : string;
                  proxy : string =''; proxyusuario : string = ''; proxysenha : string = '') : string;
var
  Texto : String;
  Acao  : TStringList ;
  Stream: TMemoryStream;
  StrStream: TStringStream;
  ReqResp: TT5HTTPReqResp;
  p : pchar;
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
//  if FindCmdLineSwitch('debug', ['-'], true ) then
//     Acao.SaveToFile( ExtractFilePath(application.ExeName)+'logRepom\'+SoapAction{+'_'+formatDateTime('yy_mm_dd_hh_nn_ss_zzz', Now)}+'.xml' );
  Acao.SaveToStream(Stream);


  ReqResp := TT5HTTPReqResp.Create(nil);

  ReqResp.Proxy    := proxy;
  ReqResp.UserName := proxyusuario;
  ReqResp.Password := proxysenha;

  ReqResp.URL := Host;
  //ReqResp.UseUTF8InHeader := True;
  ReqResp.SoapAction := 'http://www.repom.com.br/RepomWS/Expedicao/'+trim(SoapAction)+'';

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
//    if FindCmdLineSwitch('debug', ['-'], true ) then
//       Acao.SaveToFile( ExtractFilePath(application.ExeName)+'logRepom\'+SoapAction{+'_'+formatDateTime('yy_mm_dd_hh_nn_ss_zzz', Now)}+'_result.xml' );
  finally
    Acao.Free;
    Stream.Free;
    ReqResp.Free;
  end;
  texto := result;

  RESULT := TRIM( texto );

end;


{Procedimento responsavel por fazer a comunicação SOAP com o web server da repom. }
function SOAPGetRepomIntegracaoArquivosWS( host : string; SoapAction, XML : string; proxy : string =''; proxyusuario : string = ''; proxysenha : string = '') : string;
var
  Texto : String;
  Acao  : TStringList ;
  Stream: TMemoryStream;
  StrStream: TStringStream;
  ReqResp: TT5HTTPReqResp;
begin

  Acao := TStringList.Create;
  Stream := TMemoryStream.Create;
  Texto := cSOAPHeader11+
             '<'+SoapAction+' '+cXMLNSRepomIntegracaoArquivosW+'>'+
                 XML+
             '</'+SoapAction+'>'+
           cSOAPFooter11;

  Acao.Text  := Texto;
//  if not FileExists( ExtractFilePath(application.ExeName)+'logRepom' ) then
//     CreateDir( ExtractFilePath(application.ExeName)+'logRepom' );
//  if FindCmdLineSwitch('debug', ['-'], true ) then
//     Acao.SaveToFile( ExtractFilePath(application.ExeName)+'logRepom\'+SoapAction{+'_'+formatDateTime('yy_mm_dd_hh_nn_ss_zzz', Now)}+'.xml' );
  Acao.SaveToStream(Stream);


  ReqResp := TT5HTTPReqResp.Create(nil);

  ReqResp.Proxy    := proxy;
  ReqResp.UserName := proxyusuario;
  ReqResp.Password := proxysenha;

  ReqResp.URL := Host;
  //ReqResp.UseUTF8InHeader := True;
  ReqResp.SoapAction := 'http://www.repom.com.br/RepomIntegracaoArquivosWS/'+trim(SoapAction)+'';

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
//    if FindCmdLineSwitch('debug', ['-'], true ) then
//       Acao.SaveToFile( ExtractFilePath(application.ExeName)+'logRepom\'+SoapAction{+'_'+formatDateTime('yy_mm_dd_hh_nn_ss_zzz', Now)}+'_result.xml' );
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

   xml := TXMLDocument.Create(nil);
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
var
 p: PChar;
begin
  p := PChar(Texto);
  repeat
     if Ord(p^) <  32 then p^:=' ';
     Inc(p);
  until p^=#0;
  if Decode then
   begin
    Texto := StringReplace(Texto, '&amp;', '&', [rfReplaceAll]);
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

    //Texto := UTF8Decode(Texto);
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



function GetRetorno( retornoXML : string; var xmlDados : string; var ResultadoOperacao : boolean ) : boolean;
var
  xmlDoc : IXMLDocument;
  node : IXMLNode;
  sErros : string;
  noder : IXMLNode;
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
       Node := node.ChildNodes.First; //<EmiteContratoResponse ....
       noder := node.ChildNodes.First;
       if assigned( noder ) then
          ResultadoOperacao := noder.text = 'true'
       else
       begin
          ResultadoOperacao := false;
       end;

       if not ResultadoOperacao then
          sErros := ParseText( node.ChildNodes.FindNode('strXmlErr').text )
       else
       begin
          if Assigned( node.ChildNodes.FindNode('strXmlOut') ) then
             sErros := ParseText( node.ChildNodes.FindNode('strXmlOut').text )
          else
             sErros := '';
       end
    finally
       xmlDoc.Active := false;
       xmlDoc := nil;
    end;
    xmlDados := sErros;
    result := true;
  except
    on e:exception do
    begin
       xmlDados := 'GetRetorno:'+e.Message;
       result := false;
    end;
  end;
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
       if Assigned(node.ChildNodes.FindNode('strXmlErr')) then
          sErros := ParseText( node.ChildNodes.FindNode('strXmlErr').text )
       else
          sErros := '';
    finally
       xmlDoc.Active := false;
       xmlDoc := nil;
    end;
    xmlDados := sErros;
    result := true;
  except
    on e:exception do
    begin
       xmlDados := 'GetRetornoIntegraDadosCadastroNacional:'+e.Message;
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
    retornoXML := stringreplace(retornoXML, 'utf-8',  'iso-8859-1', []);
    xmlDoc := TXMLDocument.Create(nil);
    try
       xmlDoc.XML.Text := Trim( retornoXML );
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
       xmlDados := 'GetRetornoValidaAberturaContrato:'+e.Message+'['+retornoXML+']';
       result := false;
    end;
  end;
end;


function GetRetornoAberturaContrato( retornoXML : string; var xmlDados : string; var ResultadoOperacao : boolean ) : boolean;
var
  xmlDoc : IXMLDocument;
  node : IXMLNode;
  sErros : string;
begin
  try
    xmlDoc := TXMLDocument.Create(nil);
    retornoXML := stringreplace(retornoXML, 'utf-8',  'iso-8859-1', []);
    xmlDoc.XML.Text := trim( retornoXML );
    try
       xmlDoc.active := true;
       Node := xmlDoc.ChildNodes.First; //<?xml...
       Node := node.NextSibling; //<soap:Envelope....
       Node := node.ChildNodes.First; //<soap:Body....
       Node := node.ChildNodes.First; //<EmiteContratoResponse ....
       ResultadoOperacao := node.ChildNodes.FindNode('EmiteContratoResult').text = 'true';

       if not ResultadoOperacao then
          sErros := ParseText( node.ChildNodes.FindNode('strXmlErr').text )
       else
       begin
          sErros := ParseText( node.ChildNodes.FindNode('strXmlOut').text );
       end
    finally
       xmlDoc.Active := false;
       xmlDoc := nil;
    end;
    xmlDados := sErros;
    result := true;
  except
    on e:exception do
    begin
       xmlDados := 'GetRetornoAberturaContrato:'+e.Message;
       result := false;
    end;
  end;
end;

function GetRetornoCancelamentoContrato( retornoXML : string; var xmlDados : string; var ResultadoOperacao : boolean ) : boolean;
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
       Node := node.ChildNodes.First; //<EmiteContratoResponse ....
       ResultadoOperacao := node.ChildNodes.FindNode('CancelaContratoResult').text = 'true';

       if not ResultadoOperacao then
          sErros := ParseText( node.ChildNodes.FindNode('strXmlErr').text )
       else
       begin
          if Assigned( node.ChildNodes.FindNode('strXmlOut') ) then
             sErros := ParseText( node.ChildNodes.FindNode('strXmlOut').text )
          else
             sErros := '';
       end
    finally
       xmlDoc.Active := false;
       xmlDoc := nil;
    end;
    xmlDados := sErros;
    result := true;
  except
    on e:exception do
    begin
       xmlDados := 'GetRetornoCancelamentoContrato:'+e.Message;
       result := false;
    end;
  end;
end;


function GetRetornoEmiteContabil( retornoXML : string; var xmlDados : string; var ResultadoOperacao : boolean ) : boolean;
var
  xmlDoc : IXMLDocument;
  node : IXMLNode;
  sErros : string;
  noder : IXMLNode;
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
       Node := node.ChildNodes.First; //<EmiteContratoResponse ....
       noder := node.ChildNodes.FindNode('EmiteContabilResult');
       if assigned( noder ) then
           ResultadoOperacao := noder.text = 'true'
       else
       begin
          noder := node.ChildNodes.FindNode('EmiteFinanceiroResult');
          if assigned( noder ) then
            ResultadoOperacao := noder.text = 'true'
          else
            ResultadoOperacao := false;
       end;

       if not ResultadoOperacao then
          sErros := ParseText( node.ChildNodes.FindNode('strXmlErr').text )
       else
       begin
          if Assigned( node.ChildNodes.FindNode('strXmlOut') ) then
             sErros := ParseText( node.ChildNodes.FindNode('strXmlOut').text )
          else
             sErros := '';
       end
    finally
       xmlDoc.Active := false;
       xmlDoc := nil;
    end;
    xmlDados := sErros;
    result := true;
  except
    on e:exception do
    begin
       xmlDados := 'GetRetornoEmiteContabil:'+e.Message;
       result := false;
    end;
  end;
end;


end.
