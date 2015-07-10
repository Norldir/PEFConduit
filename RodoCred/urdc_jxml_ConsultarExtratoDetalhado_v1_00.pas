unit urdc_jxml_ConsultarExtratoDetalhado_v1_00;

Interface
uses
  Classes,
  JanXMLParser2,
  uXMLTools,
  urdc_jxml_TiposPadrao_v1_00,
  urdc_jxml_TiposPadrao_v1_01,
  urdc_jxml_TiposPadrao_v1_02,
  urdc_jxml_TiposPadrao_v1_03;

// targetNameSpace: https://ws.rodocred.com.br/
// NameSpacePrefix: rdc
// Date of Schema : 18/07/2012 16:53:58
// Translationdate: 02/04/2013 16:22:16
//
//   includes xs=http://www.w3.org/2001/XMLSchema

const
  snListaExtrato = 'ListaExtrato';
  snListaExtrato_Extrato = 'Extrato';

type
  tListaExtrato = class
  private
    F_NameSpaceAlias: string;
    FExtrato: tManagedStringList; // of tExtrato(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Extrato: tManagedStringList read FExtrato write FExtrato; // of tExtrato
  end;

const
  snConsultarExtratoDetalhadoResponse = 'ConsultarExtratoDetalhadoResponse';
  snConsultarExtratoDetalhadoResponse_RetornoMensagem = 'RetornoMensagem';
  snConsultarExtratoDetalhadoResponse_ListaExtrato = 'ListaExtrato';
  snConsultarExtratoDetalhadoResponse_DataSituacaoExtrato = 'DataSituacaoExtrato';

type
  tConsultarExtratoDetalhadoResponse = class
  private
    F_NameSpaceAlias: string;
    FRetornoMensagem: tRetornoMensagem; // (E)
    FListaExtrato: tListaExtrato; // (E)
    FDataSituacaoExtrato: tDataSituacaoExtrato; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    class function CreateFromXmlString(s: string): tConsultarExtratoDetalhadoResponse;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property RetornoMensagem: tRetornoMensagem read FRetornoMensagem write FRetornoMensagem;
    property ListaExtrato: tListaExtrato read FListaExtrato write FListaExtrato;
    property DataSituacaoExtrato: tDataSituacaoExtrato read FDataSituacaoExtrato write FDataSituacaoExtrato;
  end;

const
  snConsultarExtratoDetalhadoRequest = 'ConsultarExtratoDetalhadoRequest';
  snConsultarExtratoDetalhadoRequest_IdentificacaoIntegracao = 'IdentificacaoIntegracao';
  snConsultarExtratoDetalhadoRequest_IdClienteResponsavel = 'IdClienteResponsavel';
  snConsultarExtratoDetalhadoRequest_DataExtrato = 'DataExtrato';

type
  tConsultarExtratoDetalhadoRequest = class
  private
    F_NameSpaceAlias: string;
    FIdentificacaoIntegracao: tIdentificacaoIntegracao; // (E)
    FIdClienteResponsavel: tIdClienteResponsavel; // (E)
    FIdClienteResponsavel_IsSet_: boolean;
    FDataExtrato: tDate; // (E)
    procedure SetIdClienteResponsavel(value:tIdClienteResponsavel);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    function GetAsString: string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property IdentificacaoIntegracao: tIdentificacaoIntegracao read FIdentificacaoIntegracao write FIdentificacaoIntegracao;
    property IdClienteResponsavel: tIdClienteResponsavel read FIdClienteResponsavel write SetIdClienteResponsavel;
    property IdClienteResponsavel_IsSet_:boolean read FIdClienteResponsavel_IsSet_;
    property DataExtrato: tDate read FDataExtrato write FDataExtrato;
  end;

const
  snConsultarExtratoDetalhado = 'ConsultarExtratoDetalhado';
  snConsultarExtratoDetalhado_ConsultarExtratoDetalhadoRequest = 'ConsultarExtratoDetalhadoRequest';
  snConsultarExtratoDetalhado_ConsultarExtratoDetalhadoResponse = 'ConsultarExtratoDetalhadoResponse';

type
  tConsultarExtratoDetalhado = class
  private
    F_NameSpaceAlias: string;
    FConsultarExtratoDetalhadoRequest: tConsultarExtratoDetalhadoRequest; // (E)
    FConsultarExtratoDetalhadoResponse: tConsultarExtratoDetalhadoResponse; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property ConsultarExtratoDetalhadoRequest: tConsultarExtratoDetalhadoRequest read FConsultarExtratoDetalhadoRequest write FConsultarExtratoDetalhadoRequest;
    property ConsultarExtratoDetalhadoResponse: tConsultarExtratoDetalhadoResponse read FConsultarExtratoDetalhadoResponse write FConsultarExtratoDetalhadoResponse;
  end;

implementation
uses
  SysUtils,
  mylib;

const
  thisNamespaceURI = 'https://ws.rodocred.com.br/';
  defNamespaceAlias = '';

{ tListaExtrato }

class function tListaExtrato._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tListaExtrato.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FExtrato := tManagedStringlist.Create;
end; // constructor ...

constructor tListaExtrato.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
//  i: integer;
  thisURI: string;
  aExtrato: tExtrato;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snListaExtrato_Extrato)
      and ((thisURI='') or (tExtrato._nsURI_ = thisURI)) then
    begin
      aExtrato := tExtrato.Create(xn);
      FExtrato.AddObject('?', aExtrato);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tListaExtrato.Destroy;
begin
  FExtrato.Free;
  inherited;
end; // destructor ...

procedure tListaExtrato.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ListaExtrato')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "Extrato" is tManagedStringlist
  if Assigned(FExtrato) then
    for i:=0 to FExtrato.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snListaExtrato_Extrato));
      tExtrato(FExtrato.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tConsultarExtratoDetalhadoResponse }

class function tConsultarExtratoDetalhadoResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tConsultarExtratoDetalhadoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tConsultarExtratoDetalhadoResponse.Create(aRoot:tJanXMLNode2);
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
    if (sn = snConsultarExtratoDetalhadoResponse_RetornoMensagem)
      and ((thisURI='') or (tRetornoMensagem._nsURI_ = thisURI)) then
      FRetornoMensagem := tRetornoMensagem.Create(xn)
    else if (sn = snConsultarExtratoDetalhadoResponse_ListaExtrato)
      and ((thisURI='') or (tListaExtrato._nsURI_ = thisURI)) then
      FListaExtrato := tListaExtrato.Create(xn)
    else if (sn = snConsultarExtratoDetalhadoResponse_DataSituacaoExtrato) then
      FDataSituacaoExtrato := StrToDateDef( xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tConsultarExtratoDetalhadoResponse.Destroy;
begin
  FRetornoMensagem.Free;
  FListaExtrato.Free;
  inherited;
end; // destructor ...

procedure tConsultarExtratoDetalhadoResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ConsultarExtratoDetalhadoResponse')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Assigned(FRetornoMensagem) then
  begin
    xn := aNode.addChildByName(snConsultarExtratoDetalhadoResponse_RetornoMensagem);
    FRetornoMensagem.Save(xn);
  end;
  if Assigned(FListaExtrato) then
  begin
    xn := aNode.addChildByName(snConsultarExtratoDetalhadoResponse_ListaExtrato);
    FListaExtrato.Save(xn);
  end;
    xn := aNode.addChildByName(snConsultarExtratoDetalhadoResponse_DataSituacaoExtrato);
    FDataSituacaoExtrato := strToDatetimeDef( xn.text, 0);
end; // procedure save

class function tConsultarExtratoDetalhadoResponse.CreateFromXmlString(
  s: string): tConsultarExtratoDetalhadoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tConsultarExtratoDetalhadoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;

{ tConsultarExtratoDetalhadoRequest }

class function tConsultarExtratoDetalhadoRequest._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tConsultarExtratoDetalhadoRequest.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FIdentificacaoIntegracao := tIdentificacaoIntegracao.create;
end; // constructor ...

constructor tConsultarExtratoDetalhadoRequest.Create(aRoot:tJanXMLNode2);
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
    if (sn = snConsultarExtratoDetalhadoRequest_IdentificacaoIntegracao)
      and ((thisURI='') or (tIdentificacaoIntegracao._nsURI_ = thisURI)) then
      FIdentificacaoIntegracao := tIdentificacaoIntegracao.Create(xn)
    else if (sn = snConsultarExtratoDetalhadoRequest_IdClienteResponsavel)then
      FIdClienteResponsavel := strToIntDef( xn.text, 0)
    else if (sn = snConsultarExtratoDetalhadoRequest_DataExtrato) then
      DataExtrato := DateFromXMLDateTime(xn.text) // tDate
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tConsultarExtratoDetalhadoRequest.Destroy;
begin
  FIdentificacaoIntegracao.Free;
  inherited;
end; // destructor ...

procedure tConsultarExtratoDetalhadoRequest.SetIdClienteResponsavel(value:tIdClienteResponsavel);
begin
  FIdClienteResponsavel := value;
  FIdClienteResponsavel_IsSet_ := true;
end;

function tConsultarExtratoDetalhadoRequest.GetAsString: string;
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

procedure tConsultarExtratoDetalhadoRequest.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ConsultarExtratoDetalhadoRequest')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Assigned(FIdentificacaoIntegracao) then
  begin
    xn := aNode.addChildByName(snConsultarExtratoDetalhadoRequest_IdentificacaoIntegracao);
    FIdentificacaoIntegracao.Save(xn);
  end;
  if FIdClienteResponsavel <> 0 then
  begin
    xn := aNode.addChildByName(snConsultarExtratoDetalhadoRequest_IdClienteResponsavel);
    xn.text := IntToStr(FIdClienteResponsavel);
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConsultarExtratoDetalhadoRequest_DataExtrato));
  xn.text := DateToXMLDateTime(FDataExtrato);
end; // procedure save

{ tConsultarExtratoDetalhado }

class function tConsultarExtratoDetalhado._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tConsultarExtratoDetalhado.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tConsultarExtratoDetalhado.Create(aRoot:tJanXMLNode2);
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
    if (sn = snConsultarExtratoDetalhado_ConsultarExtratoDetalhadoRequest)
      and ((thisURI='') or (tConsultarExtratoDetalhadoRequest._nsURI_ = thisURI)) then
      FConsultarExtratoDetalhadoRequest := tConsultarExtratoDetalhadoRequest.Create(xn)
    else if (sn = snConsultarExtratoDetalhado_ConsultarExtratoDetalhadoResponse)
      and ((thisURI='') or (tConsultarExtratoDetalhadoResponse._nsURI_ = thisURI)) then
      FConsultarExtratoDetalhadoResponse := tConsultarExtratoDetalhadoResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tConsultarExtratoDetalhado.Destroy;
begin
  FConsultarExtratoDetalhadoRequest.Free;
  FConsultarExtratoDetalhadoResponse.Free;
  inherited;
end; // destructor ...

procedure tConsultarExtratoDetalhado.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ConsultarExtratoDetalhado')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Assigned(FConsultarExtratoDetalhadoRequest) then
  begin
    xn := aNode.addChildByName(snConsultarExtratoDetalhado_ConsultarExtratoDetalhadoRequest);
    FConsultarExtratoDetalhadoRequest.Save(xn);
  end;
  if Assigned(FConsultarExtratoDetalhadoResponse) then
  begin
    xn := aNode.addChildByName(snConsultarExtratoDetalhado_ConsultarExtratoDetalhadoResponse);
    FConsultarExtratoDetalhadoResponse.Save(xn);
  end;
end; // procedure save

end.
