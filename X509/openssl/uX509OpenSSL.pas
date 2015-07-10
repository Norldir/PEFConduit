unit uX509OpenSSL;

interface

uses Classes, SysUtils;

function AssinarXML(var msg : string; NomeCertificado, vXML : WideString; var XMLAssinado : WideString) : boolean;
//procedure GetCertificados( lc : TStringList );
function AssinaturaValida( xml : WideString ) : Boolean;

implementation

uses libxml2, libxmlsec, libxslt;

var
   FOpenSSLInited : Boolean;

function sign_file(const vxml: WideString; const vkey_file: String; const vsenha: String): WideString;
var
  doc     : xmlDocPtr;
  node    : xmlNodePtr;
  dsigCtx : xmlSecDSigCtxPtr;
  buffer  : PAnsiChar;
  bufSize : integer;
  sXML : AnsiString;
  aXML : PAnsiChar;
  key_file : PAnsiChar;
  senha : PAnsiChar;
label
  done;
begin
  doc := nil;
  // node := nil;
  dsigCtx := nil;
  result := '';

  if (vxml = '') or (vkey_file = '') then Exit;

  sXML := vxml;
  aXML := PAnsiChar( sXML );
  key_file := PAnsiChar( vkey_file );
  senha := PAnsiChar( vSenha );
  try
    { load template }
    doc := xmlParseDoc(Axml);
    if ((doc = nil) or (xmlDocGetRootElement(doc) = nil)) then
      raise Exception.Create('Error: unable to parse');

    { find start node }
//    node := xmlSecFindNode(xmlDocGetRootElement(doc), PAnsiChar(xmlSecNodeSignature), PAnsiChar(xmlSecDSigNs));
    node := xmlSecFindNode(xmlDocGetRootElement(doc), PAnsiChar('Signature'), PAnsiChar('http://www.w3.org/2000/09/xmldsig#'));
    if (node = nil) then
      raise Exception.Create('Error: start node not found');

    { create signature context, we don't need keys manager in this example }
    dsigCtx := xmlSecDSigCtxCreate(nil);
    if (dsigCtx = nil) then
      raise Exception.Create('Error :failed to create signature context');

    // { load private key}
    dsigCtx^.signKey := xmlSecCryptoAppKeyLoad(key_file, xmlSecKeyDataFormatPkcs12, senha, nil, nil);
    if (dsigCtx^.signKey = nil) then
      raise Exception.Create('Error: failed to load private pem key from "' + key_file + '"');

//    dsigCtx^.signKey := xmlSecCryptoAppKeyLoad(PAnsiChar(key_file), xmlSecKeyDataFormatPkcs12, PAnsiChar(senha), nil, nil);
//    if (dsigCtx^.signKey = nil) then
//      raise Exception.Create('Error: failed to load private pem key from "' + key_file + '"');

    { set key name to the file name, this is just an example! }
    if (xmlSecKeySetName(dsigCtx^.signKey, PAnsiChar(key_file)) < 0) then
      raise Exception.Create('Error: failed to set key name for key from "' + key_file + '"');

    { sign the template }
    if (xmlSecDSigCtxSign(dsigCtx, node) < 0) then
    begin
      xmlSecDSigCtxDebugDump( dsigCtx, @buffer );
      raise Exception.Create('Error: signature failed');
    end;


    { print signed document to stdout }
    // xmlDocDump(stdout, doc);
    // Can't use "stdout" from Delphi, so we'll use xmlDocDumpMemory instead...
    buffer := nil;
    xmlDocDumpMemory(doc, @buffer, @bufSize);
    if (buffer <> nil) then
      { success }
      result := buffer;
  finally
    { cleanup }
    if (dsigCtx <> nil) then
      xmlSecDSigCtxDestroy(dsigCtx);

    if (doc <> nil) then
      xmlFreeDoc(doc);
  end;
end;


procedure InitXmlSec;
begin
  { Init libxml and libxslt libraries }
  xmlInitParser();
  __xmlLoadExtDtdDefaultValue^ := XML_DETECT_IDS or XML_COMPLETE_ATTRS;
  xmlSubstituteEntitiesDefault(1);
  __xmlIndentTreeOutput^ := 1;

  { Init xmlsec library }
  if (xmlSecInit() < 0) then
    raise Exception.Create('Error: xmlsec initialization failed.');

  { Check loaded library version }
  if (xmlSecCheckVersionExt(1, 2, 8, xmlSecCheckVersionABICompatible) <> 1) then
    raise Exception.Create('Error: loaded xmlsec library version is not compatible.');

  (* Load default crypto engine if we are supporting dynamic
   * loading for xmlsec-crypto libraries. Use the crypto library
   * name ("openssl", "nss", etc.) to load corresponding
   * xmlsec-crypto library.
   *)
  if (xmlSecCryptoDLLoadLibrary('openssl') < 0) then
    raise Exception.Create('Error: unable to load default xmlsec-crypto library. Make sure'#10 +
      'that you have it installed and check shared libraries path'#10 +
      '(LD_LIBRARY_PATH) environment variable.');

  { Init crypto library }
  if (xmlSecCryptoAppInit(nil) < 0) then
    raise Exception.Create('Error: crypto initialization failed.');

  { Init xmlsec-crypto library }
  if (xmlSecCryptoInit() < 0) then
    raise Exception.Create('Error: xmlsec-crypto initialization failed.');

  FOpenSSLInited := True;
end;

procedure ShutDownXmlSec;
begin
  { Shutdown xmlsec-crypto library }
  xmlSecCryptoShutdown();

  { Shutdown crypto library }
  xmlSecCryptoAppShutdown();

  { Shutdown xmlsec library }
  xmlSecShutdown();

  { Shutdown libxslt/libxml }
  xsltCleanupGlobals();
  xmlCleanupParser();
end;

function AssinarXML(var msg : string; NomeCertificado, vXML : WideString; var XMLAssinado : WideString) : boolean;
begin
  if not FOpenSSLInited then InitXmlSec;

  try
     XMLAssinado := sign_file( vXML, 'C:\pefconduit\ct5.pem', 'tecinco' );
     result := True;
  except
     on e:Exception do
     begin
        result := False;
        msg := 'Ao assinar documento: '+e.Message;
     end;
  end;


end;

function AssinaturaValida( xml : WideString ) : Boolean;
begin
  result := True;
end;

initialization
  FOpenSSLInited := False;

finalization
  if FOpenSSLInited then
    ShutDownXmlSec;

end.
