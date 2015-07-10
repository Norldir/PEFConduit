unit XmlSerializer;

interface

uses
  SysUtils, ActiveX,
  InvokeRegistry, OPToSOAPDomConv, XmlDoc, XmlIntf, XmlDom;

type
  TXmlSerializer = class
  private
    FObjConverter : IObjConverter;
    FXmlNamespace : string;
    FXmlRootNode  : string;
    FXmlObjectNode: string;
  protected
    function _Deserialize(DeserializedObjectType: TClass;
      const Xml: string; IsFileName: Boolean): TObject;
  public
    function Serialize(Obj: TObject): string; overload;
    function Serialize(Obj: TObject; const XmlFileName: string): string; overload;

    function Deserialize(DeserializedObjectType: TClass;
      const XmlContent: string): TObject;
    function DeserializeFromFile(DeserializedObjectType: TClass;
      const XmlFileName: string): TObject;

    property Converter    : IObjConverter read FObjConverter  write FObjConverter;
    property XmlNamespace : string        read FXmlNamespace  write FXmlNamespace;
    property XmlRootNode  : string        read FXmlRootNode   write FXmlRootNode;
    property XmlObjectNode: string        read FXmlObjectNode write FXmlObjectNode;
  end;

implementation
uses OPConvert;
//------------------------------------------------------------------------------
// l�trehoz egy objkektum-p�ld�nyt XML-bol
//
function TXmlSerializer._Deserialize(DeserializedObjectType: TClass;
  const Xml: string; IsFileName: Boolean): TObject;
var
  XmlDoc  : TXMLDocument;
  Conv    : IObjConverter;
  RootNode: IXMLNode;
begin
  Result := nil;

  XmlDoc := TXMLDocument.Create(nil);
  try
    if IsFileName then
      XmlDoc.LoadFromFile(Xml)
    else
      XmlDoc.XML.Text := Xml;

    XmlDoc.Active := True;

    // XML ellenorz�se
    RootNode := XmlDoc.DocumentElement;
    if not Assigned(RootNode) or (RootNode.ChildNodes.Count = 0) then
      raise Exception.Create('Invalid XML format.');       

    // konverter
    if Assigned(Converter) then
      Conv := Converter
    else
      Conv := TSOAPDomConv.Create(nil) as IObjConverter;

    RootNode := XmlDoc.DocumentElement.ChildNodes[0];

    // objektum l�trehoz�sa
    Result := DeserializedObjectType.Create;
    try
      Conv.InitObjectFromSOAP(Result, RootNode, RootNode);
    except
      FreeAndNil(Result);
      raise;
    end;
  finally
    XmlDoc.Free;
  end;
end;

//------------------------------------------------------------------------------
// l�trehoz egy objkektum-p�ld�nyt XML tartalomb�l
//
function TXmlSerializer.Deserialize(DeserializedObjectType: TClass;
  const XmlContent: string): TObject;
begin
  Result := _Deserialize(DeserializedObjectType, XmlContent, False);
end;

//------------------------------------------------------------------------------
// l�trehoz egy objkektum-p�ld�nyt XML f�jlb�l
//
function TXmlSerializer.DeserializeFromFile(DeserializedObjectType: TClass;
  const XmlFileName: string): TObject;
begin
  Result := _Deserialize(DeserializedObjectType, XmlFileName, True);
end;

//------------------------------------------------------------------------------
// szerializ�lja egy objektum published tagjait egy XML f�jlba
//
function TXmlSerializer.Serialize(Obj: TObject;
  const XmlFileName: string): string;
var
  RefId      : WideString;
  XmlDoc     : TXMLDocument;
  RootNode   : IXMLNode;
  Conv       : IObjConverter;
  XNamespace : string;
  XRootNode  : string;
  XObjectNode: string;
  c : TSOAPDomConv;
begin
  Result := EmptyStr;

  XmlDoc := TXMLDocument.Create(nil);
  try
    XmlDoc.Active  := True;
    XmlDoc.Options := XmlDoc.Options + [doNodeAutoIndent];

    // konverter
    if Assigned(Converter) then
      Conv := Converter
    else
    begin
      c := TSOAPDomConv.Create(nil);
      c.Options := [soSendUntyped, soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soDocument, soDontSendEmptyNodes, soCacheMimeResponse, soUTF8EncodeXML];
      Conv := c as IObjConverter;
    end;

    // XML n�vt�r
    if XmlNamespace = EmptyStr then
      XNamespace := SXMLNamespaceURI
    else
      XNamespace := XmlNamespace;

    // gy�k�relem
    if XRootNode = EmptyStr then
      XRootNode := 'Root'
    else
      XRootNode := XmlRootNode;

    RootNode := XmlDoc.AddChild(XRootNode);

    // az objektumot le�r� csom�pont az XML-ben
    if XmlObjectNode = EmptyStr then
      XObjectNode := Obj.ClassName
    else
      XObjectNode := XmlObjectNode;

    // szerializ�ci� SOAP XML form�tumba
    Conv.ObjInstanceToSOAP(Obj,
      RootNode, RootNode, XObjectNode, XNamespace, [], RefId);

    Result := XmlDoc.XML.Text;

    // ment�s f�jlba
    if XmlFileName <> EmptyStr then
      XmlDoc.SaveToFile(XmlFileName);
  finally
    XmlDoc.Free;
  end;
end;

//------------------------------------------------------------------------------
// szerializ�lja egy objektum published tagjait XML-be
//
function TXmlSerializer.Serialize(Obj: TObject): string;
begin
  Result:= Serialize(Obj, EmptyStr);
end;

end.

