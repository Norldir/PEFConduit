unit uX509Capicom;

interface

uses
   Classes, SysUtils, CAPICOM_TLB, MSXML2_TLB, comObj, activex;
type
   TStoreCertificate = class
   public
      nomeCertificado : string;
      store : IStore3;
      certificate : ICertificate2;
   end;

function AssinarXML(var msg : string; NomeCertificado, vXML : WideString; var XMLAssinado : WideString) : boolean;
function AssinarXML2(var msg : string; StoreCertificado : TStoreCertificate; vXML : WideString; var XMLAssinado : WideString) : boolean;
procedure GetCertificados( lc : TStringList );
function AssinaturaValida( xml : WideString ) : Boolean;
function GetStoreCertificate( NomeCertificado:string; var StoreCertificate : TStoreCertificate ) : Boolean;


implementation

uses StrUtils;

const
  DSIGNS = 'xmlns:ds="http://www.w3.org/2000/09/xmldsig#"';
  local_CAPICOM_STORE = CAPICOM_CURRENT_USER_STORE; //CAPICOM_CURRENT_USER_STORE; //CAPICOM_LOCAL_MACHINE_STORE;

procedure GetCertificados( lc : TStringList );
var i : integer;
    store : TStore;
    cert : TCertificate;
    certs : TCertificates;
    ov : OleVariant;
begin
  store := TStore.Create (nil);        
  try
     store.Open(local_CAPICOM_STORE, 'My', CAPICOM_STORE_OPEN_MAXIMUM_ALLOWED);

     certs := TCertificates.Create(nil);
     try
        certs.ConnectTo(store.Certificates as ICertificates2);

        cert := TCertificate.Create(nil);
        try
           for i := 1 to certs.Count do begin
             ov := (certs.Item [i]);
             cert.ConnectTo (IDispatch (ov) as ICertificate2);

             if cert.HasPrivateKey And
             (cert.ValidFromDate <= Now) And
             (cert.ValidToDate >= Now) then begin
                { Use o certificado aqui para, por exemplo, assinar um documento. }
                lc.Add(  cert.SubjectName );
             end;
           end;
        finally
           cert.free;
        end;
     finally
       certs.Free;
     end;
  finally
     store.Close;
     store.Free;
  end;
end;

function GetCertificado( nomeCertificado : string  ) : TCertificate;
var i : integer;
    store : TStore;
    cert : TCertificate;
    certs : TCertificates;
    ov : OleVariant;
begin
  result := nil;
  store := TStore.Create (nil);
  try
     store.Open(local_CAPICOM_STORE, 'My', CAPICOM_STORE_OPEN_MAXIMUM_ALLOWED);

     certs := TCertificates.Create(nil);
     try
        certs.ConnectTo(store.Certificates as ICertificates2);
        cert := TCertificate.Create(nil);
        for i := 1 to certs.Count do begin
          ov := (certs.Item [i]);
          cert.ConnectTo (IDispatch (ov) as ICertificate2);

          if cert.SubjectName = nomeCertificado then
          begin
             if  cert.HasPrivateKey And
                (cert.ValidFromDate <= Now) And
                (cert.ValidToDate >= Now) then
             begin
                Result := cert;
             end;
          end;
        end;
        if not Assigned(Result) then cert.Free;
     finally
        certs.Free;
     end;
     store.Close;
  finally
     store.Free;
  end;
end;

function GetICertificado( nomeCertificado : string  ) : ICertificate2;
var i : integer;
    store : TStore;
    cert : TCertificate;
    certs : TCertificates;
    ov : OleVariant;
begin
  result := nil;
  store := TStore.Create (nil);
  try
     store.Open(local_CAPICOM_STORE, 'My', CAPICOM_STORE_OPEN_MAXIMUM_ALLOWED);

     certs := TCertificates.Create(nil);
     try
        certs.ConnectTo(store.Certificates as ICertificates2);
        cert := TCertificate.Create(nil);
        for i := 1 to certs.Count do begin
          ov := (certs.Item [i]);
          cert.ConnectTo (IDispatch (ov) as ICertificate2);

          if cert.SubjectName = nomeCertificado then
          begin
             if  cert.HasPrivateKey And
                (cert.ValidFromDate <= Now) And
                (cert.ValidToDate >= Now) then
             begin
                Result := IDispatch (ov) as ICertificate2;
             end;
          end;
        end;
        cert.Free;
     finally
        certs.Free;
     end;
     store.Close;
  finally
     store.Free;
  end;
end;

function GetStoreCertificate( NomeCertificado:string; var StoreCertificate : TStoreCertificate ) : Boolean;
var
  CertStore,
  CertStoreMem  : IStore3;
  iCerts         : ICertificates2;
  iCert          : ICertificate2;
  i : Integer;
begin
  CertStore := CoStore.Create;
  CertStore.Open(local_CAPICOM_STORE, 'My', CAPICOM_STORE_OPEN_READ_ONLY);

  CertStoreMem := CoStore.Create;
  CertStoreMem.Open(CAPICOM_MEMORY_STORE, 'Memoria', CAPICOM_STORE_OPEN_MAXIMUM_ALLOWED);

  iCerts := CertStore.Certificates as ICertificates2;
  for i:= 1 to iCerts.Count do
  begin
    iCert := IInterface(iCerts.Item[i]) as ICertificate2;
    if iCert.SubjectName = NomeCertificado then
    begin
       CertStoreMem.Add(iCert);
       break;
    end;
  end;

  if CertStoreMem.Certificates.Count = 0 then
     result := false //raise Exception.Create('Não foi possivel localizar o certificado. Verifique se ele esta instalado em "CAPICOM_LOCAL_USER_STORE".')
  else
  begin
     StoreCertificate := TStoreCertificate.Create;
     StoreCertificate.store := CertStoreMem;
     StoreCertificate.certificate := iCert;
     result := True;
  end;

  CertStore    := nil;
  CertStoreMem := nil;
  iCerts       := nil;
  iCert        := nil;
end;

function AssinarMSXML2(var msg : string; XML : WideString; CertStore     : IStore3; Certificado : ICertificate2; out XMLAssinado : WideString): Boolean;
var
 PrivateKey    : IPrivateKey;

 I,  PosIni, PosFim : Integer;

 xmlHeaderAntes, xmlHeaderDepois : AnsiString ;
 xmldoc  : IXMLDOMDocument3;
 KeyInfo, X509Data, xmlnode : IXMLDOMNode;

 xmlRestante : WideString;

 xmldsig : IXMLDigitalSignature;
 dsigKey   : IXMLDSigKey;
 signedKey : IXMLDSigKey;
begin
//   CoInitialize(nil);
   try
      // Lendo Header antes de assinar //
      xmlHeaderAntes := '' ;
      I := pos('?>',XML) ;
      if I > 0 then
         xmlHeaderAntes := copy(XML,1,I+1) ;

      xmldoc := CoDOMDocument50.Create;

      xmldoc.async              := False;
      xmldoc.validateOnParse    := False;
      xmldoc.preserveWhiteSpace := True;

      xmldsig := CoMXDigitalSignature50.Create;

      if (not xmldoc.loadXML(XML) ) then
         raise Exception.Create('Não foi possível carregar o arquivo: '+XML);

      xmldoc.setProperty('SelectionNamespaces', DSIGNS);

      xmldsig.signature := xmldoc.selectSingleNode('.//ds:Signature');

      if (xmldsig.signature = nil) then
         raise Exception.Create('Falha ao setar assinatura.');

      if (xmldsig.signature = nil) then
         raise Exception.Create('É preciso carregar o template antes de assinar.');


      xmldsig.store := CertStore;
      OleCheck(IDispatch(Certificado.PrivateKey).QueryInterface(IPrivateKey,PrivateKey));

      dsigKey := xmldsig.createKeyFromCSP(PrivateKey.ProviderType, PrivateKey.ProviderName, PrivateKey.ContainerName, 0);
      if (dsigKey = nil) then
         raise Exception.Create('Erro ao criar a chave do CSP.');

      signedKey := xmldsig.sign(dsigKey, $00000002);
      if (signedKey <> nil) then
      begin

         XMLAssinado := xmldoc.xml;
         PosIni := Pos('<SignatureValue>', XMLAssinado) + length('<SignatureValue>');

         xmlRestante := copy(XMLAssinado, PosIni, length(XMLAssinado));
         XMLAssinado := copy(XMLAssinado, 1, PosIni );


         xmlRestante := StringReplace(xmlRestante, ' ', '', [rfReplaceAll]);
         xmlRestante := StringReplace(xmlRestante, #9, '', [rfReplaceAll]);
         xmlRestante := StringReplace(xmlRestante, #10, '', [rfReplaceAll]);
         xmlRestante := StringReplace(xmlRestante, #13, '', [rfReplaceAll]);

         PosIni := Pos('<X509Certificate>', xmlRestante) - 1;
         PosFim := PosIni;
         while PosEx( '<X509Certificate>', xmlRestante, posFim+length('<X509Certificate>') ) > 0 do
            PosFim := PosEx( '<X509Certificate>', xmlRestante, posFim+length('<X509Certificate>') );

         if PosIni <> PosFim then
            xmlRestante := copy(xmlRestante, 1, PosIni) + copy(xmlRestante, PosFim, length(xmlRestante));

         XMLAssinado := XMLAssinado + xmlRestante;
      end
      else
         raise Exception.Create('Assinatura Falhou.');

      if xmlHeaderAntes <> '' then
      begin
         I := pos('?>',XMLAssinado) ;
         if I > 0 then
          begin
            xmlHeaderDepois := copy(XMLAssinado,1,I+1) ;
            if xmlHeaderAntes <> xmlHeaderDepois then
               XMLAssinado := StuffString(XMLAssinado,1,length(xmlHeaderDepois),xmlHeaderAntes) ;
          end
         else
            XMLAssinado := xmlHeaderAntes + XMLAssinado ;
      end;


      Result := True;
   finally
      dsigKey   := nil;
      signedKey := nil;
      xmldoc    := nil;
      xmldsig   := nil;
      //CertStoreMem  := nil;
//      CoUninitialize;
   end;
end;

function AssinarMSXML(var msg : string; XML : WideString; Certificado : ICertificate2; out XMLAssinado : WideString): Boolean;
var
 CertStore     : IStore3;
begin
   result := False;
   try
      CertStore := CoStore.Create;
      CertStore.Open(local_CAPICOM_STORE, 'My', CAPICOM_STORE_OPEN_READ_ONLY);

      if not Certificado.HasPrivateKey then
         raise Exception.Create('O certificado "'+Certificado.SubjectName+'" não possui a chave privada. Veja documentação sobre como instalar a chave privada no "CAPICOM_LOCAL_MACHINE_STORE"');
      if (Certificado.ValidToDate < Now) then
         raise Exception.Create('O certificado "'+Certificado.SubjectName+'" esta vencido.');

      result := AssinarMSXML2( msg, XML, CertStore, Certificado, XMLAssinado );

      CertStore     := nil;
   except
      on e:Exception do
      begin
         msg := e.message;
         Result := False;
      end;
   end;
end;

(*function AssinaCapiCom(XML : WideString; iCert : ICertificate2; outXML : WideString ) : boolean;
var lSigner : TSigner;
    lSignedData : TSignedData;
    msg, content : WideString;
    cert: TCertificate;
begin
   cert := TCertificate.Create(nil);
   cert.ConnectTo ( icert);

   { Configura o objeto responsável por fazer a assinatura, informando qual é o certificado a ser usado e o conteúdo a ser assinado }
   lSigner := TSigner.Create(nil);
   lSigner.Certificate := cert.DefaultInterface;

   lSignedData := TSignedData.Create(nil);

   lSignedData.Content := XML;

   { Efetivamente assina o conteúdo }
   outXML := lSignedData.Sign(lSigner.DefaultInterface, false, CAPICOM_ENCODE_BASE64);
   lSignedData.Free;
   lSigner.Free;

   cert.Free;

   result := outXML<>'';
end;
*)

function AssinarXML2(var msg : string; StoreCertificado : TStoreCertificate; vXML : WideString; var XMLAssinado : WideString) : boolean;
begin
  try
     result := AssinarMSXML2(msg, vXML, StoreCertificado.Store, StoreCertificado.certificate,  XMLAssinado );
  except
     on e:Exception do
     begin
        result := False;
        msg := 'Ao assinar documento: '+e.Message;
     end;
  end;
end;

function AssinarXML(var msg : string; NomeCertificado, vXML : WideString; var XMLAssinado : WideString) : boolean;
var
  cert : ICertificate2;
  outXML : WideString;
begin
  XMLAssinado := '';
  Result := True;
  try
     cert := GetICertificado( NomeCertificado  );
  except
     on e:Exception do
     begin
        result := False;
        msg := 'Ao recuperar a chave publica: '+e.Message;
     end;
  end;

  if Result then
  try
     result := AssinarMSXML(msg, vXML, cert, outXML );
     XMLAssinado := outXML;
  except
     on e:Exception do
     begin
        result := False;
        msg := 'Ao assinar documento: '+e.Message;
     end;
  end;

end;


function AssinaturaValida( xml : WideString ) : Boolean;
var
 xmldoc  : IXMLDOMDocument3;
 xmldsig : IXMLDigitalSignature;

 keyInfo, X509Data : IXMLDOMNode;
 //X509Certificate : IXMLDOMNode;

 dsigKey   : IXMLDSigKey;
 signedKey : IXMLDSigKey;
begin
   xmldoc := CoDOMDocument50.Create;
   xmldoc.async              := False;
   xmldoc.validateOnParse    := False;
   xmldoc.preserveWhiteSpace := True;
   xmldsig := CoMXDigitalSignature50.Create;

{
   //pegar a Tag "NFe", à que contem assinatura dig.
   XmlNodeList nodeNFe = tagVal;
   string NFe = nodeNFe[0].OuterXml.ToString();
   //carregar o XML da NFe
   XmlDocument xmlNFe = new XmlDocument();
   xmlNFe.PreserveWhitespace = true;
   xmlNFe.LoadXml(NFe);}

   if (not xmldoc.loadXML(XML) ) then
      raise Exception.Create('Não foi possível carregar o arquivo: '+XML);

   xmldoc.setProperty('SelectionNamespaces', DSIGNS);

{
   //Carregar a assinatura
   SignedXml signedXml = new SignedXml(xmlNFe);
   XmlNodeList nodeList = xmlNFe.GetElementsByTagName("Signature");
   signedXml.LoadXml((XmlElement)nodeList[0]);
}
   xmldsig.signature := xmldoc.selectSingleNode('.//ds:Signature');

   if (xmldsig.signature = nil) then
      raise Exception.Create('Falha ao setar assinatura.');

{
   //buscar o KeyInfo da assinatura
   IEnumerator keyInfoItems = signedXml.KeyInfo.GetEnumerator();
   keyInfoItems.MoveNext();
   KeyInfoX509Data keyInfoX509 = (KeyInfoX509Data)keyInfoItems.Current;
   //buscar o certificado do KeyInfo
   X509Certificate2 keyInfoCert = (X509Certificate2)keyInfoX509.Certificates[0];
   //Validar se assinatura é valida
   return signedXml.CheckSignature(keyInfoCert.PublicKey.Key);
}

   keyInfo := xmldsig.signature.selectSingleNode('.//ds:KeyInfo');
   X509Data := keyInfo.selectSingleNode('.//ds:X509Data');
   //X509Certificate := X509Data.selectSingleNode('.//ds:X509Certificate');

   dsigKey := xmldsig.createKeyFromNode( X509Data );

   signedKey := xmldsig.verify( dsigKey  );
   if (signedKey <> nil) then

     Result := true
   else
     result := false;


   dsigKey   := nil;
   signedKey := nil;
   xmldoc    := nil;
   xmldsig   := nil;
end;



(*var store : IStore3;
  cert : TCertificate;
  lKey : IPrivateKey;
  xmlDoc: IXmlDomDocument3;
  noSignature : IXMLDOMElement;
  xmlSign : IXMLDigitalSignature;
  xmlDsigKey: IXMLDSigKey;
  certBase64 : WideString;
  SignatureValue, noX509Certificate : IXMLDOMElement;
begin
  try
     cert := GetCertificado( NomeCertificado   );
     if Assigned( cert ) then
     begin

        lKey := Cert.PrivateKey;

        { Monta um Store em memória com o Certificado obtido antes }
        store := CoStore.Create;
        try
           store.Open(local_CAPICOM_STORE, 'My', CAPICOM_STORE_OPEN_MAXIMUM_ALLOWED);
           store.Add(cert.DefaultInterface);

           xmlDoc := PreparaXML( vXML );
           try
              noSignature := NodeSignature (xmlDoc, URI);
              if (noSignature <> Nil) then
              begin
                 xmlSign := CoMXDigitalSignature50.Create;
                 xmlSign.signature := noSignature;
                 xmlSign.store := store;

                 { Monta a chave com o tipo exigido pelo método Sign }
                 xmlDsigKey := xmlSign.createKeyFromCSP(lKey.ProviderType, lKey.ProviderName, lKey.ContainerName, 0);
                 { Assina o XML }
                 xmlSign.sign(xmlDsigKey, $00000002);
                 SignatureValue := noSignature.firstChild.nextSibling as IXMLDOMElement;
                 SignatureValue.text := Trim (StringReplace(SignatureValue.text, #13, '', [rfReplaceAll]));
                 SignatureValue.text := Trim (StringReplace(SignatureValue.text, #10, '', [rfReplaceAll]));
                 SignatureValue.text := Trim (StringReplace(SignatureValue.text, ' ', '', [rfReplaceAll]));

                 certBase64 := cert.Export(CAPICOM_ENCODE_BASE64);
                 certBase64 := Trim (StringReplace(certBase64, #13#10, '', [rfReplaceAll]));
                 noX509Certificate := noSignature.firstChild.nextSibling.nextSibling.firstChild.firstChild as IXMLDOMElement;
                 noX509Certificate.text :=   certBase64  ;


                 result := xmlDoc.xml;

              end
              else
              begin
                 raise Exception.create('XML em um formato inválido');
              end;
           finally
             result := xmlDoc.xml;
             xmldoc := nil;
           end;
        finally
           store := nil;
        end;
     end
     else
     begin
        raise Exception.create('Certificado digital '+NomeCertificado+' não localizado ou vencido');
     end;
  except
     on e:exception do
     begin
        raise exception.Create('AssinarXML:'+e.Message+result);
     end;
  end;
end;
*)


end.
