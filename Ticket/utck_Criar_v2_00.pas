unit utck_Criar_v2_00;

Interface
uses
  Classes,
  utck_SchemaFrete_2_0,
  JanXMLParser2,
  uXMLTools;

// targetNameSpace: http://localhost/TicketFreteCDN/fretelote/schemas/SchemaFrete_1.1.xsd
// NameSpacePrefix: mstns
// Date of Schema : 25/04/2012 10:30:02
// Translationdate: 25/04/2012 10:30:09
//
//   includes xs=http://www.w3.org/2001/XMLSchema

// ordinal types
const
  snCriar_token = 'token';
  snCriar_LoteDeFretes = 'LoteDeFretes';

type
  tCriar = class
  private
    F_NameSpaceAlias: string;
    FToken: string;
    FLote: tLoteDeFretes;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    function GetAsString : string;
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property token: string read FToken write FToken;
    property Lote: tLoteDeFretes read FLote write Flote;
  end;

implementation
uses
  SysUtils,
  mylib;

const
  thisNamespaceURI = 'http://localhost/TicketFreteCDN/fretelote/schemas/SchemaFrete_1.1.xsd';
  defNamespaceAlias = ''; // 'mstns;

{ tCriar }

class function tCriar._nsURI_: string;
begin
  result := thisNameSpaceURI;
end;

constructor tCriar.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FLote := tLoteDeFretes.Create;
end;

constructor tCriar.Create(aRoot: tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  //i: integer;
  thisURI: string;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;

    if (sn = snCriar_token) then
       token := xn.text
    else
    if (sn = snCriar_LoteDeFretes) then
    begin
      // list of simple type
      FLote := tLoteDeFretes.Create(xn);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tCriar.Destroy;
begin
  FLote.Free;
  inherited;
end;

function tCriar.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.declaration.attribute['encoding'] := 'utf-8';
      parser.formatedXML :=False;
      parser.XMLTag := False;
      self.Save( parser );
      result := parser.xml
   finally
      parser.Free;
   end;
end;

procedure tCriar.Save(aNode: tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Criar')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCriar_token));
  xn.text := FToken;

  if Assigned(FLote) then
  begin
    xn := aNode.addChildByName(snCriar_LoteDeFretes);
    FLote.Save(xn);
  end;
end; // procedure save

end.
