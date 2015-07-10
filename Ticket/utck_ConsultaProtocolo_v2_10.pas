unit utck_ConsultaProtocolo_v2_10;

Interface
uses
  Classes,
  utck_SchemaRetorno_1_2,
  JanXMLParser2,
  uXMLTools;

// targetNameSpace: http://lote.homologacaoticketfrete.com.br/CDN/fretelote/schemas/SchemaRetorno_1.2.xsd
// NameSpacePrefix: mstns
// Date of Schema : 25/04/2012 17:12:22
// Translationdate: 25/04/2012 17:12:28
//
//   includes xs=http://www.w3.org/2001/XMLSchema

// ordinal types
type
   tstring = string;
   tboolean = string;
   tTipoStatus = string;
   tTipoOperacao = string;

const
  snConsultarResult = 'ConsultarResult';
  snConsultarResult_Retorno = 'Retorno';
  snConsultarResult_Status = 'Status';
  snConsultarResult_Operacao = 'Operacao';
  snConsultarResult_Protocolo = 'Protocolo';

type
  tConsultarResult = class
  private
    F_NameSpaceAlias: string;
    FRetorno: tManagedStringList; // of tRetorno(E)
    FStatus: tTipoStatus; // (E)
    FOperacao: tTipoOperacao; // (E)
    FProtocolo: tstring; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Retorno: tManagedStringList read FRetorno write FRetorno; // of tRetorno
    property Status: tTipoStatus read FStatus write FStatus;
    property Operacao: tTipoOperacao read FOperacao write FOperacao;
    property Protocolo: tstring read FProtocolo write FProtocolo;
  end;


const
  snConsultarResponse = 'ConsultarResponse';
  snConsultarResponse_ConsultarResult = 'Retornos'; //'ConsultarResult';

type
  tConsultarResponse = class
  private
    F_NameSpaceAlias: string;
    FConsultarResult: tConsultarResult; // (X)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    class function CreateFromXmlString(  s: string): tConsultarResponse;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ConsultarResult: tConsultarResult read FConsultarResult write FConsultarResult;
  end;


const
  snConsultar = 'Consultar';
  snConsultar_token = 'token';
  snConsultar_protocolo = 'protocolo';

type
  tConsultar = class
  private
    F_NameSpaceAlias: string;
    Ftoken: tstring; // (E)
    Fprotocolo: tstring; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    function GetAsString:string;
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property token: tstring read Ftoken write Ftoken;
    property protocolo: tstring read Fprotocolo write Fprotocolo;
  end;


implementation
uses
  SysUtils,
  mylib;

const
  thisNamespaceURI = 'http://lote.homologacaoticketfrete.com.br/CDN/fretelote/schemas/SchemaRetorno_1.3.xsd';
  defNamespaceAlias = '';//'mstns';

{ tConsultarResult }

class function tConsultarResult._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tConsultarResult.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FRetorno := tManagedStringlist.Create;
end; // constructor ...

constructor tConsultarResult.Create(aRoot:tJanXMLNode2);
var
  //xn2,
  xn: tJanXMLNode2;
  sn: string;
  thisURI: string;
  aRetorno : tRetorno;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snConsultarResult_Retorno) then
    begin
      aRetorno := tRetorno.Create( xn );
      FRetorno.AddObject('?', aRetorno);
    end
    else if (sn = snConsultarResult_Status) then
      Status :=  xn.text // tTipoStatus
    else if (sn = snConsultarResult_Operacao) then
      Operacao :=  xn.text // tTipoOperacao
    else if (sn = snConsultarResult_Protocolo) then
      Protocolo :=  xn.text // tstring
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tConsultarResult.Destroy;
begin
  FRetorno.Free;
  inherited;
end; // destructor ...

procedure tConsultarResult.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
  aRetorno : tRetorno;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ConsultarResult')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "Retorno" is tManagedStringlist
  // but of simple elements
  if Assigned(FRetorno) then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConsultarResult_Retorno));
    for i:=0 to FRetorno.Count - 1 do
    begin
      aRetorno := tRetorno( FRetorno.Objects[i] );
      aRetorno.Save( xn );
    end; // for i:=0 to ...
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConsultarResult_Status));
  xn.text := FStatus;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConsultarResult_Operacao));
  xn.text := FOperacao;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConsultarResult_Protocolo));
  xn.text := FProtocolo;
end; // procedure save


{ tConsultarResponse }

class function tConsultarResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tConsultarResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tConsultarResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snConsultarResponse_ConsultarResult)
      and ((thisURI='') or (tConsultarResult._nsURI_ = thisURI)) then
      FConsultarResult := tConsultarResult.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tConsultarResponse.Destroy;
begin
  FConsultarResult.Free;
  inherited;
end; // destructor ...

procedure tConsultarResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ConsultarResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Assigned(FConsultarResult) then
  begin
    xn := aNode.addChildByName(snConsultarResponse_ConsultarResult);
    FConsultarResult.Save(xn);
  end;
end; // procedure save


class function tConsultarResponse.CreateFromXmlString(
  s: string): tConsultarResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tConsultarResponse.Create( parser );
   finally
      parser.Free;
   end;
end;

{ tConsultar }

class function tConsultar._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tConsultar.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tConsultar.Create(aRoot:tJanXMLNode2);
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
    if (sn = snConsultar_token) then
      token :=  xn.text // tstring
    else if (sn = snConsultar_protocolo) then
      protocolo :=  xn.text // tstring
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tConsultar.Destroy;
begin
  inherited;
end; // destructor ...

procedure tConsultar.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Consultar')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConsultar_token));
  xn.text := Ftoken;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConsultar_protocolo));
  xn.text := Fprotocolo;
end; // procedure save


function tConsultar.GetAsString: string;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      self.Save( parser );
      result := parser.xml
   finally
      parser.Free;
   end;
end;

end.
