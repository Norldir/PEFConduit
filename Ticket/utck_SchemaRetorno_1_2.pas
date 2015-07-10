unit utck_SchemaRetorno_1_2;

Interface
uses
  Classes,
  JanXMLParser2,
  utck_SchemaComum_1_2,
  uXMLTools;

// targetNameSpace: http://lote.homologacaoticketfrete.com.br/CDN/fretelote/schemas/SchemaRetorno_1.2.xsd
// NameSpacePrefix: mstns
// Date of Schema : 25/06/2012 17:08:22
// Translationdate: 25/06/2012 17:08:32
//
//   includes c=http://lote.homologacaoticketfrete.com.br/CDN/fretelote/schemas/SchemaComum_1.2.xsd in 'SchemaComum_1.2.pas'
//   includes xs=http://www.w3.org/2001/XMLSchema

// ordinal types
type
  tTipoOperacao = string;
  tTipoStatus = string;

// constants for enumerations
const
  cTipoOperacao_Criacao = 'Criacao';
  cTipoOperacao_Cancelamento = 'Cancelamento';
  cTipoOperacao_Encerramento = 'Encerramento';
  cTipoOperacao_CadastroAutonomo = 'CadastroAutonomo';
  cTipoOperacao_Retificacao = 'Retificacao';
  cTipoOperacao_InclusaoViagemFreteAgregado = 'InclusaoViagemFreteAgregado';
  cTipoOperacao_ExclusaoViagemFreteAgregado = 'ExclusaoViagemFreteAgregado';
  cTipoStatus_Pendente = 'Pendente';
  cTipoStatus_Processado = 'Processado';

const
  snMotivo = 'Motivo';
  snMotivo_Motivo = 'Motivo';

type
  tMotivo = class
  private
    F_NameSpaceAlias: string;
    FMotivo: tManagedStringList; // of string(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Motivo: tManagedStringList read FMotivo write FMotivo; // of string
  end;

const
  snRetorno = 'Retorno';
  snRetorno_Referencia = 'Referencia';
  snRetorno_CodigoViagem = 'CodigoViagem';
  snRetorno_Ciot = 'Ciot';
  snRetorno_Sucesso = 'Sucesso';
  snRetorno_Motivos = 'Motivos';

type
  tRetorno = class
  private
    F_NameSpaceAlias: string;
    FReferencia: string; // (E)
    FReferencia_IsSet_: boolean;
    FCodigoViagem: int64; // (E)
    FCodigoViagem_IsSet_: boolean;
    FCiot: tNumeroCiot; // (E)
    FCiot_IsSet_: boolean;
    FSucesso: string; // (E)
    FMotivos: tMotivo; // (E)
    FMotivos_IsSet_: boolean;
    procedure SetReferencia(value:string);
    procedure SetCodigoViagem(value:int64);
    procedure SetCiot(value:tNumeroCiot);
    procedure SetMotivos(value:tMotivo);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Referencia: string read FReferencia write SetReferencia;
    property Referencia_IsSet_:boolean read FReferencia_IsSet_;
    property CodigoViagem: int64 read FCodigoViagem write SetCodigoViagem;
    property CodigoViagem_IsSet_:boolean read FCodigoViagem_IsSet_;
    property Ciot: tNumeroCiot read FCiot write SetCiot;
    property Ciot_IsSet_:boolean read FCiot_IsSet_;
    property Sucesso: string read FSucesso write FSucesso;
    property Motivos: tMotivo read FMotivos write SetMotivos;
    property Motivos_IsSet_:boolean read FMotivos_IsSet_;
  end;

const
  snRetornos = 'Retornos';
  snRetornos_Status = 'Status';
  snRetornos_Operacao = 'Operacao';
  snRetornos_Protocolo = 'Protocolo';
  snRetornos_Retorno = 'Retorno';

type
  tRetornos = class
  private
    F_NameSpaceAlias: string;
    FStatus: string; // (E)
    FOperacao: string; // (E)
    FProtocolo: string; // (E)
    FRetorno: tManagedStringList; // of tRetorno(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Status: string read FStatus write FStatus;
    property Operacao: string read FOperacao write FOperacao;
    property Protocolo: string read FProtocolo write FProtocolo;
    property Retorno: tManagedStringList read FRetorno write FRetorno; // of tRetorno
  end;

implementation
uses
  SysUtils,
  mylib;

const
  thisNamespaceURI = 'http://lote.homologacaoticketfrete.com.br/CDN/fretelote/schemas/SchemaRetorno_1.3.xsd';
  defNamespaceAlias = ''; //'mstns';

{ tMotivo }

class function tMotivo._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tMotivo.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FMotivo := tManagedStringlist.Create;
end; // constructor ...

constructor tMotivo.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
//  i: integer;
  thisURI: string;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snMotivo_Motivo) then
    begin
      // list of simple type
      FMotivo.Add(xn.text);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tMotivo.Destroy;
begin
  FMotivo.Free;
  inherited;
end; // destructor ...

procedure tMotivo.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Motivo')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "Motivo" is tManagedStringlist
  // but of simple elements
  if Assigned(FMotivo) then
    for i:=0 to FMotivo.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snMotivo_Motivo));
      xn.text := FMotivo.Strings[i];
    end; // for i:=0 to ...
end; // procedure save

{ tRetorno }

class function tRetorno._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tRetorno.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tRetorno.Create(aRoot:tJanXMLNode2);
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
    if (sn = snRetorno_Referencia) then
      Referencia :=  xn.text // string
    else if (sn = snRetorno_CodigoViagem) then
      CodigoViagem := StrToInt64Def(xn.text, 0)
    else if (sn = snRetorno_Ciot) then
      Ciot :=  xn.text // tNumeroCiot
    else if (sn = snRetorno_Sucesso) then
      Sucesso := xn.text
    else if (sn = snRetorno_Motivos) then
      FMotivos := tMotivo.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tRetorno.Destroy;
begin
  inherited;
end; // destructor ...

procedure tRetorno.SetReferencia(value:string);
begin
  FReferencia := value;
  FReferencia_IsSet_ := true;
end;

procedure tRetorno.SetCodigoViagem(value:int64);
begin
  FCodigoViagem := value;
  FCodigoViagem_IsSet_ := true;
end;

procedure tRetorno.SetCiot(value:tNumeroCiot);
begin
  FCiot := value;
  FCiot_IsSet_ := true;
end;

procedure tRetorno.SetMotivos(value:tMotivo);
begin
  FMotivos := value;
  FMotivos_IsSet_ := true;
end;

procedure tRetorno.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Retorno')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Referencia_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetorno_Referencia));
    xn.text := FReferencia;
  end;
  if CodigoViagem_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetorno_CodigoViagem));
    xn.text := IntToStr(FCodigoViagem);
  end;
  if Ciot_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetorno_Ciot));
    xn.text := FCiot;
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetorno_Sucesso));
  xn.text := FSucesso;
  if Assigned(FMotivos) then
  begin
    xn := aNode.addChildByName(snRetorno_Motivos);
    FMotivos.Save(xn);
  end;
end; // procedure save

{ tRetornos }

class function tRetornos._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tRetornos.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FRetorno := tManagedStringlist.Create;
end; // constructor ...

constructor tRetornos.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
//  i: integer;
  thisURI: string;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snRetornos_Status) then
      Status :=  xn.text // string
    else if (sn = snRetornos_Operacao) then
      Operacao :=  xn.text // string
    else if (sn = snRetornos_Protocolo) then
      Protocolo :=  xn.text // string
    else if (sn = snRetornos_Retorno) then
    begin
      // list of simple type
      FRetorno.Add(xn.text);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tRetornos.Destroy;
begin
  FRetorno.Free;
  inherited;
end; // destructor ...

procedure tRetornos.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Retornos')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetornos_Status));
  xn.text := FStatus;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetornos_Operacao));
  xn.text := FOperacao;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetornos_Protocolo));
  xn.text := FProtocolo;
  // element "Retorno" is tManagedStringlist
  // but of simple elements
  if Assigned(FRetorno) then
    for i:=0 to FRetorno.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRetornos_Retorno));
      xn.text := FRetorno.Strings[i];
    end; // for i:=0 to ...
end; // procedure save

end.
