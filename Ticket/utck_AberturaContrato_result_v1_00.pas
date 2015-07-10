unit utck_AberturaContrato_result_v1_00;


Interface
uses
  Classes,
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
  snArrayOfString = 'ArrayOfString';
  snArrayOfString_string = 'string';

type
  tArrayOfString = class
  private
    F_NameSpaceAlias: string;
    Fstring: tstring; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property xstring: tstring read Fstring write Fstring;
  end;

const
  snRetornoLote = 'RetornoLote';
  snRetornoLote_Sucesso = 'Sucesso';
  snRetornoLote_Protocolo = 'Protocolo';
  snRetornoLote_Erros = 'Erros';

type
  tRetornoLote = class
  private
    F_NameSpaceAlias: string;
    FSucesso: tboolean; // (E)
    FProtocolo: tstring; // (E)
    FErros: tManagedStringList; // of tArrayOfString(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    class function CreateFromXmlString( s : string ) : tRetornoLote;
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Sucesso: tboolean read FSucesso write FSucesso;
    property Protocolo: tstring read FProtocolo write FProtocolo;
    property Erros: tManagedStringList read FErros write FErros; // of tArrayOfString
  end;

const
  snCriarResponse = 'CriarResponse';
  snCriarResponse_CriarResult = 'CriarResult';

type
  tCriarResponse = class
  private
    F_NameSpaceAlias: string;
    FCriarResult: tRetornoLote; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    class function CreateFromXmlString( s : string ) : tCriarResponse;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CriarResult: tRetornoLote read FCriarResult write FCriarResult;
  end;

implementation
uses
  SysUtils,
  mylib;

const
  thisNamespaceURI = 'http://lote.homologacaoticketfrete.com.br/CDN/fretelote/schemas/SchemaRetorno_1.0.xsd';
  defNamespaceAlias = ''; //'mstns';

{ tArrayOfString }

class function tArrayOfString._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tArrayOfString.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tArrayOfString.Create(aRoot:tJanXMLNode2);
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
    if (sn = snArrayOfString_string) then
      xstring :=  xn.text // tstring
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tArrayOfString.Destroy;
begin
  inherited;
end; // destructor ...

procedure tArrayOfString.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ArrayOfString')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snArrayOfString_string));
  xn.text := Fstring;
end; // procedure save

{ tRetornoLote }

class function tRetornoLote._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tRetornoLote.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FErros := tManagedStringlist.Create;
end; // constructor ...

constructor tRetornoLote.Create(aRoot:tJanXMLNode2);
var
  xn2, xn: tJanXMLNode2;
  sn: string;
  thisURI: string;
//  i : Integer;
  aErros : tArrayOfString;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snRetornoLote_Sucesso) then
      Sucesso :=  xn.text // tboolean
    else if (sn = snRetornoLote_Protocolo) then
      Protocolo :=  xn.text // tstring
    else if (sn = snRetornoLote_Erros) then
    begin
      xn2 := xn.FirstChild;
      while Assigned( xn2 ) do
      begin
         aErros := tArrayOfString.Create( xn2 );
         FErros.AddObject('', aErros );
      end;
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tRetornoLote.Destroy;
begin
  FErros.Free;
  inherited;
end; // destructor ...

procedure tRetornoLote.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'RetornoLote')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetornoLote_Sucesso));
  xn.text := FSucesso;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetornoLote_Protocolo));
  xn.text := FProtocolo;
  // element "Erros" is tManagedStringlist
  // but of simple elements
  if Assigned(FErros) then
    for i:=0 to FErros.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetornoLote_Erros));
      xn.text := FErros.Strings[i];
    end; // for i:=0 to ...
end; // procedure save

class function tRetornoLote.CreateFromXmlString(
  s: string): tRetornoLote;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tRetornoLote.Create( parser );
   finally
      parser.Free;
   end;
end;


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
      FCriarResult := tRetornoLote.Create(xn)
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
