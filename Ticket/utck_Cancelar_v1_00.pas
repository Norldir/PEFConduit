unit utck_Cancelar_v1_00;

Interface
uses
  Classes,
  utck_SchemaCancelamento_1_0,
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
  snCancelar_token = 'token';
  snCancelar_LoteDeCancelamentos = 'LoteDeCancelamentos';

type
  tCancelar = class
  private
    F_NameSpaceAlias: string;
    FToken: string;
    FLote: tLoteDeCancelamentos;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    function GetAsString : string;
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property token: string read FToken write FToken;
    property Lote: tLoteDeCancelamentos read FLote write Flote;
  end;

implementation
uses
  SysUtils,
  mylib;

const
  thisNamespaceURI = 'http://localhost/TicketFreteCDN/fretelote/schemas/SchemaCancelamento_1.0.xsd';
  defNamespaceAlias = ''; // 'mstns;

{ tCancelar }

class function tCancelar._nsURI_: string;
begin
  result := thisNameSpaceURI;
end;

constructor tCancelar.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FLote := tLoteDeCancelamentos.Create;
end;

constructor tCancelar.Create(aRoot: tJanXMLNode2);
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

    if (sn = snCancelar_token) then
       token := xn.text
    else
    if (sn = snCancelar_LoteDeCancelamentos) then
    begin
      // list of simple type
      FLote := tLoteDeCancelamentos.Create(xn);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tCancelar.Destroy;
begin
  FLote.Free;
  inherited;
end;

function tCancelar.GetAsString: string;
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

procedure tCancelar.Save(aNode: tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Cancelar')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCancelar_token));
  xn.text := FToken;

  if Assigned(FLote) then
  begin
    xn := aNode.addChildByName(snCancelar_LoteDeCancelamentos);
    FLote.Save(xn);
  end;
end; // procedure save

end.
