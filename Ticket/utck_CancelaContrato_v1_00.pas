unit utck_CancelaContrato_v1_00;
Interface
uses
  Classes,
  JanXMLParser2,
  uXMLTools;

// targetNameSpace: http://lote.homologacaoticketfrete.com.br/CDN/fretelote/schemas/SchemaCancelamento_1.0.xsd
// NameSpacePrefix: 
// Date of Schema : 25/04/2012 10:36:20
// Translationdate: 25/04/2012 10:36:48
//
//   includes mstns=http://lote.homologacaoticketfrete.com.br/CDN/fretelote/schemas/SchemaCancelamento_1.0.xsd
//   includes xs=http://www.w3.org/2001/XMLSchema

// ordinal types
type
  tCiot = string;

const
  snLoteDeCancelamentos = 'LoteDeCancelamentos';
  snLoteDeCancelamentos_Ciot = 'Ciot';

type
  tLoteDeCancelamentos = class
  private
    F_NameSpaceAlias: string;
    FCiot: tManagedStringList; // of tCiot(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Ciot: tManagedStringList read FCiot write FCiot; // of tCiot
  end;


implementation
uses
  SysUtils,
  mylib;

const
  thisNamespaceURI = 'http://lote.homologacaoticketfrete.com.br/CDN/fretelote/schemas/SchemaCancelamento_1.0.xsd';
  defNamespaceAlias = '';

{ tLoteDeCancelamentos }

class function tLoteDeCancelamentos._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tLoteDeCancelamentos.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FCiot := tManagedStringlist.Create;
end; // constructor ...

constructor tLoteDeCancelamentos.Create(aRoot:tJanXMLNode2);
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
    if (sn = snLoteDeCancelamentos_Ciot) then
    begin
      // list of simple type
      FCiot.Add(xn.text);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tLoteDeCancelamentos.Destroy;
begin
  FCiot.Free;
  inherited;
end; // destructor ...

procedure tLoteDeCancelamentos.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'LoteDeCancelamentos')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "Ciot" is tManagedStringlist
  // but of simple elements
  if Assigned(FCiot) then
    for i:=0 to FCiot.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snLoteDeCancelamentos_Ciot));
      xn.text := FCiot.Strings[i];
    end; // for i:=0 to ...
end; // procedure save


end.
