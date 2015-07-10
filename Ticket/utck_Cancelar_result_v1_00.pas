unit utck_Cancelar_result_v1_00;


Interface
uses
  Classes,
  utck_SchemaRetorno_1_1,
  JanXMLParser2,
  uXMLTools;

// targetNameSpace: http://lote.homologacaoticketfrete.com.br/CDN/fretelote/schemas/SchemaRetorno_1.0.xsd
// NameSpacePrefix: mstns
// Date of Schema : 25/04/2012 16:27:58
// Translationdate: 25/04/2012 16:28:04
//
//   includes xs=http://www.w3.org/2001/XMLSchema
type
   tstring = string;
   tboolean = string;

const
  snCancelarResponse = 'CancelarResponse';
  snCancelarResponse_CancelarResult = 'CancelarResult';

type
  TCancelarResponse = class
  private
    F_NameSpaceAlias: string;
    FCancelarResult: tRetornos; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    class function CreateFromXmlString( s : string ) : TCancelarResponse;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CancelarResult: tRetornos read FCancelarResult write FCancelarResult;
  end;

implementation
uses
  SysUtils,
  mylib;

const
  thisNamespaceURI = 'http://lote.homologacaoticketfrete.com.br/CDN/fretelote/schemas/SchemaRetorno_1.1.xsd';
  defNamespaceAlias = ''; //'mstns';

{ TCancelarResponse }

class function TCancelarResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor TCancelarResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor TCancelarResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snCancelarResponse_CancelarResult) then
      FCancelarResult := tRetornos.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor TCancelarResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure TCancelarResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CancelarResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Assigned(FCancelarResult) then
  begin
    xn := aNode.addChildByName(snCancelarResponse_CancelarResult);
    FCancelarResult.Save(xn);
  end;
end; // procedure save


class function TCancelarResponse.CreateFromXmlString(
  s: string): TCancelarResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := TCancelarResponse.Create( parser );
   finally
      parser.Free;
   end;
end;

end.
