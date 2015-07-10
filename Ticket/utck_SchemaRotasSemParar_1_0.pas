unit utck_SchemaRotasSemParar_1_0;

Interface
uses
  Classes,
  JanXMLParser2,
  uXMLTools;

// targetNameSpace: http://lote.homologacaoticketfrete.com.br/CDN/fretelote/schemas/SchemaRotasSemParar_1.0.xsd
// NameSpacePrefix: mstns
// Date of Schema : 25/06/2012 17:28:26
// Translationdate: 25/06/2012 17:28:37
//
//   includes xs=http://www.w3.org/2001/XMLSchema

const
  snRotaSemParar = 'RotaSemParar';
  snRotaSemParar_Codigo = 'Codigo';
  snRotaSemParar_Nome = 'Nome';

type
  tRotaSemParar = class
  private
    F_NameSpaceAlias: string;
    FCodigo: int64; // (E)
    FCodigo_IsSet_: boolean;
    FNome: string; // (E)
    procedure SetCodigo(value:int64);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Codigo: int64 read FCodigo write SetCodigo;
    property Codigo_IsSet_:boolean read FCodigo_IsSet_;
    property Nome: string read FNome write FNome;
  end;

const
  snRotasSemParar = 'RotasSemParar';

type
  tRotasSemParar = class
  private
    F_NameSpaceAlias: string;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
  end;

implementation
uses
  SysUtils,
  mylib;

const
  thisNamespaceURI = 'http://lote.homologacaoticketfrete.com.br/CDN/fretelote/schemas/SchemaRotasSemParar_1.0.xsd';
  defNamespaceAlias = ''; //'mstns';

{ tRotaSemParar }

class function tRotaSemParar._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tRotaSemParar.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tRotaSemParar.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
//  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snRotaSemParar_Codigo) then
      Codigo := StrToInt64Def(xn.text, 0)
    else if (sn = snRotaSemParar_Nome) then
      Nome :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tRotaSemParar.Destroy;
begin
  inherited;
end; // destructor ...

procedure tRotaSemParar.SetCodigo(value:int64);
begin
  FCodigo := value;
  FCodigo_IsSet_ := true;
end;

procedure tRotaSemParar.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'RotaSemParar')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Codigo_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRotaSemParar_Codigo));
    xn.text := IntToStr(FCodigo);
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRotaSemParar_Nome));
  xn.text := FNome;
end; // procedure save

{ tRotasSemParar }

class function tRotasSemParar._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tRotasSemParar.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tRotasSemParar.Create(aRoot:tJanXMLNode2);
//var
//  xn: tJanXMLNode2;
//  sn: string;
//  i: integer;
//  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
end; // constructor ...

destructor tRotasSemParar.Destroy;
begin
  inherited;
end; // destructor ...

procedure tRotasSemParar.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'RotasSemParar')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

end; // procedure save

end.
