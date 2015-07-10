unit utck_AberturaContrato_result_v1_10;


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
  snCriarResponse = 'CriarResponse';
  snCriarResponse_CriarResult = 'CriarResult';

type
  tCriarResponse = class
  private
    F_NameSpaceAlias: string;
    FCriarResult: tRetornos; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    class function CreateFromXmlString( s : string ) : tCriarResponse;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CriarResult: tRetornos read FCriarResult write FCriarResult;
  end;

implementation
uses
  SysUtils,
  mylib;

const
  thisNamespaceURI = 'http://lote.homologacaoticketfrete.com.br/CDN/fretelote/schemas/SchemaRetorno_1.1.xsd';
  defNamespaceAlias = ''; //'mstns';

{ tCriarResponse }

class function tCriarResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCriarResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tCriarResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snCriarResponse_CriarResult) then
      FCriarResult := tRetornos.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tCriarResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tCriarResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'CriarResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Assigned(FCriarResult) then
  begin
    xn := aNode.addChildByName(snCriarResponse_CriarResult);
    FCriarResult.Save(xn);
  end;
end; // procedure save


class function tCriarResponse.CreateFromXmlString(
  s: string): tCriarResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tCriarResponse.Create( parser );
   finally
      parser.Free;
   end;
end;

end.
