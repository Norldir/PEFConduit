unit undd_soap_v1_00;

interface
uses Classes, T5SOAPHTTPTrans, HTTPApp, SysUtils;

function SOAPGet( host, SoapAction: string;  XML : Widestring;
                  ProcessCode,
                  MessageType,
                  ExchangePattern,
                  GUID,
                  EnterpriseId,
                  Token : string;
                  proxy : string =''; proxyusuario : string = ''; proxysenha : string = '') : Widestring;
function SOAPResponse( SOAPResponseEnvelope : string ) : string;

function GetCrossTalkHeaderBody( CrossTalk : widestring; var sHeader : widestring; var sBody : widestring  ) : boolean;

function CrossTalkHeader( CrossTalkHeader : widestring; var ResponseCode, ResponseCodeMessage, ProcessCode, messagetype, ExchangePattern, GUID : string ) : Boolean;


implementation

uses StrUtils, XMLDoc, XMLIntf, forms;

const
  cSOAPHeader11 = '<?xml version="1.0" encoding="UTF-8"?>'+
                  '<soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope" xmlns:tem="http://tempuri.org/">'+
                  '<soap:Header/>'+
                  '<soap:Body>'#10;
  cSOAPFooter11 = '</soap:Body>'+
                '</soap:Envelope>';


  cSOAPHeader12 = '<?xml version="1.0" encoding="utf-8"?>'+
                  '<soap12:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" '+
                                   'xmlns:xsd="http://www.w3.org/2001/XMLSchema" '+
                                   'xmlns:soap12="http://www.w3.org/2003/05/soap-envelope" '+
                                   'xmlns:tem="http://tempuri.org/">'+
                  '<soap12:Body>'#10;


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
function SOAPGet( host, SoapAction : string; XML : WideString;
                  ProcessCode,
                  MessageType,
                  ExchangePattern,
                  GUID,
                  EnterpriseId,
                  Token : string;
                  proxy : string =''; proxyusuario : string = ''; proxysenha : string = '') : WideString;
var
  Texto : WideString;
  Acao  : TStringList ;
  Stream: TMemoryStream;
  StrStream: TStringStream;
  ReqResp: TT5HTTPReqResp;
  tentativa : Integer;
  sMessage : WideString;
begin

  sMessage := '<?xml version="1.0" encoding="utf-16"?>'+
                            '<CrossTalk_Message xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.nddigital.com.br/nddcargo">'+
                               '<CrossTalk_Header>'+
                                    '<ProcessCode>'+ProcessCode+'</ProcessCode>'+
                                    '<MessageType>'+MessageType+'</MessageType>'+
                                    '<ExchangePattern>'+ExchangePattern+'</ExchangePattern>';
  if GUID<>'' then
                      sMessage:=sMessage+ '<GUID>'+GUID+'</GUID>';

                      sMessage:=sMessage+ '<DateTime>'+formatDateTime('yyyy-mm-dd"T"hh:mm:ss.zzz-03:00', now)+'</DateTime>'+
                                    '<EnterpriseId>'+EnterpriseId+'</EnterpriseId>'+
                                    '<Token>'+Token+'</Token>'+
                               '</CrossTalk_Header>'+
                               '<CrossTalk_Body>'+
                                    '<CrossTalk_Version_Body versao="4.2.1.0"/>'+
                               '</CrossTalk_Body>'+
                            '</CrossTalk_Message>';

  Acao := TStringList.Create;
  Stream := TMemoryStream.Create;
  Texto := cSOAPHeader12+
           '<tem:Send>'+
               '<!--Optional:-->'+
               '<tem:message>'+
                   ParseText(sMessage, False)+
               '</tem:message>'+
               '<!--Optional:-->';
  if XML='' then   texto := Texto + '<tem:rawData/>'
  else  texto := Texto +
               '<tem:rawData>'+
                         ParseText( StringReplace( XML, '>', ''+cXMLNS+'>', []), False)+
               '</tem:rawData>';

  texto := Texto+ '</tem:Send>';

  Texto := Texto +
           cSOAPFooter12;

  Acao.Text  := Texto;
  if FindCmdLineSwitch('debug', ['-'], true) then
     try Acao.SaveToFile( ExtractFilePath(application.ExeName)+'nddCargo_'+SoapAction{+'_'+formatDateTime('yy_mm_dd_hh_nn_ss_zzz', Now)}+'_'+processcode+'_'+MessageType+'_'+ExchangePattern+'.xml' ); except end;

  Acao.SaveToStream(Stream);


  ReqResp := TT5HTTPReqResp.Create(nil);

  ReqResp.Proxy    := proxy;
  ReqResp.UserName := proxyusuario;
  ReqResp.Password := proxysenha;

  ReqResp.ConnectTimeout := 500000;
  ReqResp.SendTimeout    := 120000;
  ReqResp.ReceiveTimeout := 120000;


  ReqResp.URL := Host;
  //ReqResp.UseUTF8InHeader := True;
  ReqResp.SoapAction := 'http://tempuri.org/'+( trim(SoapAction));

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
    while (Acao.Count>0) and (Copy(Acao.text,1,5) <> '<?xml') do Acao.delete(0);
    result := Acao.text;
    if FindCmdLineSwitch('debug', ['-'], true) then
       try Acao.SaveToFile( ExtractFilePath(application.ExeName)+'nddCargo_'+SoapAction{+'_'+formatDateTime('yy_mm_dd_hh_nn_ss_zzz', Now)}+'_'+processcode+'_'+MessageType+'_'+ExchangePattern+'_r.xml' ); except end;
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
            begin
               node := node.ChildNodes.First; // XXXresult;
               if Assigned(node) then
               begin
                  result := ParseText( node.text )
               end
               else
                  raise Exception.Create('Retorno sem resultado');

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


function GetCrossTalkHeaderBody( CrossTalk : widestring; var sHeader : widestring; var sBody : widestring  ) : boolean;
var
   node : IXMLNode;
   header, body : IXMLNode;
   xml : IXMLDocument;
begin
   result := True;
   CrossTalk := StringReplace(CrossTalk, 'utf-8', 'iso-8859-1', []);
   CrossTalk := StringReplace(CrossTalk, 'UTF-8', 'iso-8859-1', []);
   CrossTalk := StringReplace(CrossTalk, 'UTF-16', 'iso-8859-1', []);
   CrossTalk := StringReplace(CrossTalk, 'utf-16', 'iso-8859-1', []);
   if Pos( '<?xml version=', CrossTalk) <= 0 then CrossTalk := '<?xml version="1.0" encoding="iso-8859-1"?>'+CrossTalk;

   xml := TXMLDocument.Create(nil);
   try
      xml.XML.Text := CrossTalk;
      if FindCmdLineSwitch('debug', ['-'], true) then
         try xml.xml.SaveToFile( ExtractFilePath(application.ExeName)+'xmlndd_'+ FormatDateTime('yyyymmddhhnnsszzz', Now) +'.xml' ); except end;
      xml.Active := True;

      node := xml.ChildNodes.FindNode('CrossTalk_Message');
      if Assigned(node) then
      begin
         header := node.ChildNodes.FindNode('CrossTalk_Header');
         Body := node.ChildNodes.FindNode('CrossTalk_Body');
         if Assigned(header) then
         begin
           sHeader := Header.xml;
         end
         else
            raise Exception.Create('XML não tem HEADER do crosstalk');

         if Assigned(Body) then
         begin
           sBody := Body.XML;
           sBody := StringReplace( sBody, '<CrossTalk_Body>', '', [] );
           sBody := StringReplace( sBody, '</CrossTalk_Body>', '', [] );
         end
//         else
//            raise Exception.Create('XML não tem BODY do crosstalk');
      end
      else
        raise Exception.Create('XML não tem ENVELOPE');
   finally
      node := nil;
      header := nil;
      body := nil;
      xml.Active := False;
      xml := nil;
   end;
end;


function CrossTalkHeader( CrossTalkHeader : widestring; var ResponseCode, ResponseCodeMessage, ProcessCode, messagetype, ExchangePattern, GUID : string ) : Boolean;
var
   node : IXMLNode;
   CrossTalk_Header : IXMLNode;
   xml : IXMLDocument;
begin
   result := True;
   xml := TXMLDocument.Create(nil);
   try
      xml.XML.Text := '<?xml version="1.0" encoding="iso-8859-1"?>'+CrossTalkHeader;
      xml.Active := True;
      CrossTalk_Header := xml.ChildNodes.FindNode('CrossTalk_Header');

      node := CrossTalk_Header.ChildNodes.FindNode('ResponseCode');
      if Assigned(node) then ResponseCode := node.text else ResponseCode := '';
      node := CrossTalk_Header.ChildNodes.FindNode('ResponseCodeMessage');
      if Assigned(node) then ResponseCodeMessage := node.text else ResponseCodeMessage := '';
      node := CrossTalk_Header.ChildNodes.FindNode('MessageType');
      if Assigned(node) then messagetype := node.text else messagetype := '';
      node := CrossTalk_Header.ChildNodes.FindNode('ExchangePattern');
      if Assigned(node) then ExchangePattern := node.text else ExchangePattern := '';
      node := CrossTalk_Header.ChildNodes.FindNode('GUID');
      if Assigned(node) then GUID := node.text else GUID := '';
   finally
      node := nil ;
      CrossTalk_Header := nil;
      xml.Active := False;
      xml := nil;
   end;
end;

end.
