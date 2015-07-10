unit utck_Autenticar_v1_00;

Interface
uses
  Classes,
  JanXMLParser2,
  uXMLTools;

// targetNameSpace: http://lote.homologacaoticketfrete.com.br/CDN/fretelote/schemas/SchemaRetorno_1.0.xsd
// NameSpacePrefix: mstns
// Date of Schema : 25/04/2012 14:47:54
// Translationdate: 25/04/2012 14:48:01
//
//   includes xs=http://www.w3.org/2001/XMLSchema
type
  tboolean = string;
  tstring = string;
  tunsignedInt = string;
const
  snRetornoAutenticacao = 'RetornoAutenticacao';
  snRetornoAutenticacao_Sucesso = 'Sucesso';
  snRetornoAutenticacao_Token = 'Token';
  snRetornoAutenticacao_Mensagem = 'Mensagem';

type
  tRetornoAutenticacao = class
  private
    F_NameSpaceAlias: string;
    FSucesso: tboolean; // (E)
    FToken: tstring; // (E)
    FMensagem: tstring; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Sucesso: tboolean read FSucesso write FSucesso;
    property Token: tstring read FToken write FToken;
    property Mensagem: tstring read FMensagem write FMensagem;
  end;

const
  snAutenticarResponse = 'AutenticarResponse';
  snAutenticarResponse_AutenticarResult = 'AutenticarResult';

type
  tAutenticarResponse = class
  private
    F_NameSpaceAlias: string;
    FAutenticarResult: tRetornoAutenticacao; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    class function CreateFromXmlString( s : string ) : tAutenticarResponse;
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property AutenticarResult: tRetornoAutenticacao read FAutenticarResult write FAutenticarResult;
  end;

const
  snAutenticar = 'Autenticar';
  snAutenticar_usuario = 'usuario';
  snAutenticar_senha = 'senha';
  snAutenticar_codigoBase = 'codigoBase';
  snAutenticar_codigoCliente = 'codigoCliente';

type
  tAutenticar = class
  private
    F_NameSpaceAlias: string;
    Fusuario: tstring; // (E)
    Fsenha: tstring; // (E)
    FcodigoBase: tunsignedInt; // (E)
    FcodigoCliente: tunsignedInt; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    function GetAsString : string;
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property usuario: tstring read Fusuario write Fusuario;
    property senha: tstring read Fsenha write Fsenha;
    property codigoBase: tunsignedInt read FcodigoBase write FcodigoBase;
    property codigoCliente: tunsignedInt read FcodigoCliente write FcodigoCliente;
  end;


implementation
uses
  SysUtils,
  mylib;

const
  thisNamespaceURI = 'http://lote.homologacaoticketfrete.com.br/CDN/fretelote/schemas/SchemaRetorno_1.0.xsd';
  defNamespaceAlias = '';//'mstns';

{ tRetornoAutenticacao }

class function tRetornoAutenticacao._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tRetornoAutenticacao.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tRetornoAutenticacao.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  //i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snRetornoAutenticacao_Sucesso) then
      Sucesso :=  xn.text // tboolean
    else if (sn = snRetornoAutenticacao_Token) then
      Token :=  xn.text // tstring
    else if (sn = snRetornoAutenticacao_Mensagem) then
      Mensagem :=  xn.text // tstring
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tRetornoAutenticacao.Destroy;
begin
  inherited;
end; // destructor ...

procedure tRetornoAutenticacao.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  //i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'RetornoAutenticacao')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetornoAutenticacao_Sucesso));
  xn.text := FSucesso;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetornoAutenticacao_Token));
  xn.text := FToken;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetornoAutenticacao_Mensagem));
  xn.text := FMensagem;
end; // procedure save

{ tAutenticarResponse }

class function tAutenticarResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAutenticarResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tAutenticarResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  //i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snAutenticarResponse_AutenticarResult) then
      FAutenticarResult := tRetornoAutenticacao.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tAutenticarResponse.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAutenticarResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  //i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AutenticarResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Assigned(FAutenticarResult) then
  begin
    xn := aNode.addChildByName(snAutenticarResponse_AutenticarResult);
    FAutenticarResult.Save(xn);
  end;
end; // procedure save


class function tAutenticarResponse.CreateFromXmlString(
  s: string): tAutenticarResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tAutenticarResponse.Create( parser );
   finally
      parser.Free;
   end;
end;


{ tAutenticar }

class function tAutenticar._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAutenticar.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tAutenticar.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  //i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snAutenticar_usuario) then
      usuario :=  xn.text // tstring
    else if (sn = snAutenticar_senha) then
      senha :=  xn.text // tstring
    else if (sn = snAutenticar_codigoBase) then
      codigoBase :=  xn.text // tunsignedInt
    else if (sn = snAutenticar_codigoCliente) then
      codigoCliente :=  xn.text // tunsignedInt
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tAutenticar.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAutenticar.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  //i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Autenticar')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  //aNode.attribute['xmlns']:='http://www.ticketfrete.com.br/servicos/';

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAutenticar_usuario));
  xn.text := Fusuario;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAutenticar_senha));
  xn.text := Fsenha;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAutenticar_codigoBase));
  xn.text := FcodigoBase;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAutenticar_codigoCliente));
  xn.text := FcodigoCliente;
end; // procedure save


function tAutenticar.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      parser.formatedXML := False;
      parser.XMLTag      := False;
      result := parser.xml;
   finally
      parser.Free;
   end;
end;

end.
