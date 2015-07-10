unit urdc_jxml_DetalharViagem_v1_01;

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
// Translationdate: 28/03/2013 16:15:04
//
//   includes xs=http://www.w3.org/2001/XMLSchema

const
  snDetalharViagemResponse = 'DetalharViagemResponse';
  snDetalharViagemResponse_RetornoMensagem = 'RetornoMensagem';
  snDetalharViagemResponse_TipoViagem = 'TipoViagem';
  snDetalharViagemResponse_DadosViagem = 'DadosViagem';
  snDetalharViagemResponse_CIOT = 'CIOT';
  snDetalharViagemResponse_Transportador = 'Transportador';
  snDetalharViagemResponse_RotaViagem = 'RotaViagem';
  snDetalharViagemResponse_VeiculosViagem = 'VeiculosViagem';
  snDetalharViagemResponse_ValePedagioViagem = 'ValePedagioViagem';
  snDetalharViagemResponse_ListaPedidosValePedagio = 'ListaPedidosValePedagio';
  snDetalharViagemResponse_MotoristaViagem = 'MotoristaViagem';
  snDetalharViagemResponse_EnvolvidosTransporteViagem = 'EnvolvidosTransporteViagem';
  snDetalharViagemResponse_ValoresViagem = 'ValoresViagem';
  snDetalharViagemResponse_ImpostosViagem = 'ImpostosViagem';
  snDetalharViagemResponse_DadosBancarios = 'DadosBancarios';
  snDetalharViagemResponse_DocumentosViagem = 'DocumentosViagem';
  snDetalharViagemResponse_DetalheProgramacaoViagem = 'DetalheProgramacaoViagem';
  snDetalharViagemResponse_ClausulasViagem = 'ClausulasViagem';

type
  tDetalharViagemResponse = class
  private
    F_NameSpaceAlias: string;
    FRetornoMensagem: tRetornoMensagem; // (E)
    FTipoViagem: tTipoViagem; // (E)
    FDadosViagem: tDadosViagem; // (E)
    FCIOT: tCIOT; // (E)
    FCIOT_IsSet_: boolean;
    FTransportador: tTransportador; // (E)
    FTransportador_IsSet_: boolean;
    FRotaViagem: tRotaViagem; // (E)
    FRotaViagem_IsSet_: boolean;
    FVeiculosViagem: tManagedStringList; // of tVeiculosViagem(E)
    FValePedagioViagem: tValePedagioViagem; // (E)
    FValePedagioViagem_IsSet_: boolean;
    FListaPedidosValePedagio: tListaPedidosValePedagio; // (E)
    FListaPedidosValePedagio_IsSet_: boolean;
    FMotoristaViagem: tManagedStringList; // of tMotoristaViagem(E)
    FEnvolvidosTransporteViagem: tEnvolvidosTransporteViagem; // (E)
    FEnvolvidosTransporteViagem_IsSet_: boolean;
    FValoresViagem: tValoresViagem; // (E)
    FImpostosViagem: tImpostosViagem; // (E)
    FImpostosViagem_IsSet_: boolean;
    FDadosBancarios: tDadosBancarios; // (E)
    FDadosBancarios_IsSet_: boolean;
    FDocumentosViagem: tDocumentosViagem; // (E)
    FDocumentosViagem_IsSet_: boolean;
    FDetalheProgramacaoViagem: tDetalheProgramacaoViagem; // (E)
    FDetalheProgramacaoViagem_IsSet_: boolean;
    FClausulasViagem: tManagedStringList; // of tClausulasViagem(E)
    procedure SetCIOT(value:tCIOT);
    procedure SetTransportador(value:tTransportador);
    procedure SetRotaViagem(value:tRotaViagem);
    procedure SetValePedagioViagem(value:tValePedagioViagem);
    procedure SetListaPedidosValePedagio(value:tListaPedidosValePedagio);
    procedure SetEnvolvidosTransporteViagem(value:tEnvolvidosTransporteViagem);
    procedure SetImpostosViagem(value:tImpostosViagem);
    procedure SetDadosBancarios(value:tDadosBancarios);
    procedure SetDocumentosViagem(value:tDocumentosViagem);
    procedure SetDetalheProgramacaoViagem(value:tDetalheProgramacaoViagem);
  public
    class function CreateFromXmlString(s: string): tDetalharViagemResponse;
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    function GetAsString: string;
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property RetornoMensagem: tRetornoMensagem read FRetornoMensagem write FRetornoMensagem;
    property TipoViagem: tTipoViagem read FTipoViagem write FTipoViagem;
    property DadosViagem: tDadosViagem read FDadosViagem write FDadosViagem;
    property CIOT: tCIOT read FCIOT write SetCIOT;
    property CIOT_IsSet_:boolean read FCIOT_IsSet_;
    property Transportador: tTransportador read FTransportador write SetTransportador;
    property Transportador_IsSet_:boolean read FTransportador_IsSet_;
    property RotaViagem: tRotaViagem read FRotaViagem write SetRotaViagem;
    property RotaViagem_IsSet_:boolean read FRotaViagem_IsSet_;
    property VeiculosViagem: tManagedStringList read FVeiculosViagem write FVeiculosViagem; // of tVeiculosViagem
    property ValePedagioViagem: tValePedagioViagem read FValePedagioViagem write SetValePedagioViagem;
    property ValePedagioViagem_IsSet_:boolean read FValePedagioViagem_IsSet_;
    property ListaPedidosValePedagio: tListaPedidosValePedagio read FListaPedidosValePedagio write SetListaPedidosValePedagio;
    property ListaPedidosValePedagio_IsSet_:boolean read FListaPedidosValePedagio_IsSet_;
    property MotoristaViagem: tManagedStringList read FMotoristaViagem write FMotoristaViagem; // of tMotoristaViagem
    property EnvolvidosTransporteViagem: tEnvolvidosTransporteViagem read FEnvolvidosTransporteViagem write SetEnvolvidosTransporteViagem;
    property EnvolvidosTransporteViagem_IsSet_:boolean read FEnvolvidosTransporteViagem_IsSet_;
    property ValoresViagem: tValoresViagem read FValoresViagem write FValoresViagem;
    property ImpostosViagem: tImpostosViagem read FImpostosViagem write SetImpostosViagem;
    property ImpostosViagem_IsSet_:boolean read FImpostosViagem_IsSet_;
    property DadosBancarios: tDadosBancarios read FDadosBancarios write SetDadosBancarios;
    property DadosBancarios_IsSet_:boolean read FDadosBancarios_IsSet_;
    property DocumentosViagem: tDocumentosViagem read FDocumentosViagem write SetDocumentosViagem;
    property DocumentosViagem_IsSet_:boolean read FDocumentosViagem_IsSet_;
    property DetalheProgramacaoViagem: tDetalheProgramacaoViagem read FDetalheProgramacaoViagem write SetDetalheProgramacaoViagem;
    property DetalheProgramacaoViagem_IsSet_:boolean read FDetalheProgramacaoViagem_IsSet_;
    property ClausulasViagem: tManagedStringList read FClausulasViagem write FClausulasViagem; // of tClausulasViagem
  end;

const
  snDetalharViagemRequest = 'DetalharViagemRequest';
  snDetalharViagemRequest_IdentificacaoIntegracao = 'IdentificacaoIntegracao';
  snDetalharViagemRequest_IdClienteResponsavel = 'IdClienteResponsavel';
  snDetalharViagemRequest_NumeroViagem = 'NumeroViagem';

type
  tDetalharViagemRequest = class
  private
    F_NameSpaceAlias: string;
    FIdentificacaoIntegracao: tIdentificacaoIntegracao; // (E)
    FIdClienteResponsavel: tIdClienteResponsavel; // (E)
    FIdClienteResponsavel_IsSet_: boolean;
    FNumeroViagem: tNumeroViagem; // (E)
    procedure SetIdClienteResponsavel(value:tIdClienteResponsavel);
  public
    class function CreateFromXmlString(s: string): tDetalharViagemRequest;
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    function GetAsString: string;
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property IdentificacaoIntegracao: tIdentificacaoIntegracao read FIdentificacaoIntegracao write FIdentificacaoIntegracao;
    property IdClienteResponsavel: tIdClienteResponsavel read FIdClienteResponsavel write SetIdClienteResponsavel;
    property IdClienteResponsavel_IsSet_:boolean read FIdClienteResponsavel_IsSet_;
    property NumeroViagem: tNumeroViagem read FNumeroViagem write FNumeroViagem;
  end;

const
  snDetalharViagem = 'DetalharViagem';
  snDetalharViagem_DetalharViagemRequest = 'DetalharViagemRequest';
  snDetalharViagem_DetalharViagemResponse = 'DetalharViagemResponse';

type
  tDetalharViagem = class
  private
    F_NameSpaceAlias: string;
    FDetalharViagemRequest: tDetalharViagemRequest; // (E)
    FDetalharViagemResponse: tDetalharViagemResponse;
  public
    class function CreateFromXmlString(s: string): tDetalharViagem;
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    function GetAsString: string; // (E)
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property DetalharViagemRequest: tDetalharViagemRequest read FDetalharViagemRequest write FDetalharViagemRequest;
    property DetalharViagemResponse: tDetalharViagemResponse read FDetalharViagemResponse write FDetalharViagemResponse;
  end;

implementation
uses
  SysUtils,
  mylib;

const
  thisNamespaceURI = 'https://ws.rodocred.com.br/';
  defNamespaceAlias = '';

{ tDetalharViagemResponse }

class function tDetalharViagemResponse._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tDetalharViagemResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FVeiculosViagem := tManagedStringlist.Create;
  FMotoristaViagem := tManagedStringlist.Create;
  FClausulasViagem := tManagedStringlist.Create;
end; // constructor ...

class function tDetalharViagemResponse.CreateFromXmlString(
  s: string): tDetalharViagemResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tDetalharViagemResponse.Create( parser );
   finally
      parser.Free;
   end;
end;

constructor tDetalharViagemResponse.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
//  i: integer;
  thisURI: string;
  aVeiculosViagem: tVeiculosViagem;
  aMotoristaViagem: tMotoristaViagem;
  aClausulasViagem: tClausulasViagem;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snDetalharViagemResponse_RetornoMensagem)
      and ((thisURI='') or (tRetornoMensagem._nsURI_ = thisURI)) then
      FRetornoMensagem := tRetornoMensagem.Create(xn)
    else if (sn = snDetalharViagemResponse_TipoViagem)then
      FTipoViagem := xn.text
    else if (sn = snDetalharViagemResponse_DadosViagem)
      and ((thisURI='') or (tDadosViagem._nsURI_ = thisURI)) then
      FDadosViagem := tDadosViagem.Create(xn)
    else if (sn = snDetalharViagemResponse_CIOT)
      and ((thisURI='') or (tCIOT._nsURI_ = thisURI)) then
      FCIOT := tCIOT.Create(xn)
    else if (sn = snDetalharViagemResponse_Transportador)
      and ((thisURI='') or (tTransportador._nsURI_ = thisURI)) then
      FTransportador := tTransportador.Create(xn)
    else if (sn = snDetalharViagemResponse_RotaViagem)
      and ((thisURI='') or (tRotaViagem._nsURI_ = thisURI)) then
      FRotaViagem := tRotaViagem.Create(xn)
    else if (sn = snDetalharViagemResponse_VeiculosViagem)
      and ((thisURI='') or (tVeiculosViagem._nsURI_ = thisURI)) then
    begin
      aVeiculosViagem := tVeiculosViagem.Create(xn);
      FVeiculosViagem.AddObject('?', aVeiculosViagem);
    end
    else if (sn = snDetalharViagemResponse_ValePedagioViagem)
      and ((thisURI='') or (tValePedagioViagem._nsURI_ = thisURI)) then
      FValePedagioViagem := tValePedagioViagem.Create(xn)
    else if (sn = snDetalharViagemResponse_ListaPedidosValePedagio)
      and ((thisURI='') or (tListaPedidosValePedagio._nsURI_ = thisURI)) then
      FListaPedidosValePedagio := tListaPedidosValePedagio.Create(xn)
    else if (sn = snDetalharViagemResponse_MotoristaViagem)
      and ((thisURI='') or (tMotoristaViagem._nsURI_ = thisURI)) then
    begin
      aMotoristaViagem := tMotoristaViagem.Create(xn);
      FMotoristaViagem.AddObject('?', aMotoristaViagem);
    end
    else if (sn = snDetalharViagemResponse_EnvolvidosTransporteViagem)
      and ((thisURI='') or (tEnvolvidosTransporteViagem._nsURI_ = thisURI)) then
      FEnvolvidosTransporteViagem := tEnvolvidosTransporteViagem.Create(xn)
    else if (sn = snDetalharViagemResponse_ValoresViagem)
      and ((thisURI='') or (tValoresViagem._nsURI_ = thisURI)) then
      FValoresViagem := tValoresViagem.Create(xn)
    else if (sn = snDetalharViagemResponse_ImpostosViagem)
      and ((thisURI='') or (tImpostosViagem._nsURI_ = thisURI)) then
      FImpostosViagem := tImpostosViagem.Create(xn)
    else if (sn = snDetalharViagemResponse_DadosBancarios)
      and ((thisURI='') or (tDadosBancarios._nsURI_ = thisURI)) then
      FDadosBancarios := tDadosBancarios.Create(xn)
    else if (sn = snDetalharViagemResponse_DocumentosViagem)
      and ((thisURI='') or (tDocumentosViagem._nsURI_ = thisURI)) then
      FDocumentosViagem := tDocumentosViagem.Create(xn)
    else if (sn = snDetalharViagemResponse_DetalheProgramacaoViagem)
      and ((thisURI='') or (tDetalheProgramacaoViagem._nsURI_ = thisURI)) then
      FDetalheProgramacaoViagem := tDetalheProgramacaoViagem.Create(xn)
    else if (sn = snDetalharViagemResponse_ClausulasViagem)
      and ((thisURI='') or (tClausulasViagem._nsURI_ = thisURI)) then
    begin
      aClausulasViagem := tClausulasViagem.Create(xn);
      FClausulasViagem.AddObject('?', aClausulasViagem);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tDetalharViagemResponse.Destroy;
begin
  FRetornoMensagem.Free;
  FDadosViagem.Free;
  FCIOT.Free;
  FTransportador.Free;
  FRotaViagem.Free;
  FVeiculosViagem.Free;
  FValePedagioViagem.Free;
  FListaPedidosValePedagio.Free;
  FMotoristaViagem.Free;
  FEnvolvidosTransporteViagem.Free;
  FValoresViagem.Free;
  FImpostosViagem.Free;
  FDadosBancarios.Free;
  FDocumentosViagem.Free;
  FDetalheProgramacaoViagem.Free;
  FClausulasViagem.Free;
  inherited;
end; // destructor ...

procedure tDetalharViagemResponse.SetCIOT(value:tCIOT);
begin
  FCIOT := value;
  FCIOT_IsSet_ := true;
end;

procedure tDetalharViagemResponse.SetTransportador(value:tTransportador);
begin
  FTransportador := value;
  FTransportador_IsSet_ := true;
end;

procedure tDetalharViagemResponse.SetRotaViagem(value:tRotaViagem);
begin
  FRotaViagem := value;
  FRotaViagem_IsSet_ := true;
end;

procedure tDetalharViagemResponse.SetValePedagioViagem(value:tValePedagioViagem);
begin
  FValePedagioViagem := value;
  FValePedagioViagem_IsSet_ := true;
end;

procedure tDetalharViagemResponse.SetListaPedidosValePedagio(value:tListaPedidosValePedagio);
begin
  FListaPedidosValePedagio := value;
  FListaPedidosValePedagio_IsSet_ := true;
end;

procedure tDetalharViagemResponse.SetEnvolvidosTransporteViagem(value:tEnvolvidosTransporteViagem);
begin
  FEnvolvidosTransporteViagem := value;
  FEnvolvidosTransporteViagem_IsSet_ := true;
end;

procedure tDetalharViagemResponse.SetImpostosViagem(value:tImpostosViagem);
begin
  FImpostosViagem := value;
  FImpostosViagem_IsSet_ := true;
end;

procedure tDetalharViagemResponse.SetDadosBancarios(value:tDadosBancarios);
begin
  FDadosBancarios := value;
  FDadosBancarios_IsSet_ := true;
end;

procedure tDetalharViagemResponse.SetDocumentosViagem(value:tDocumentosViagem);
begin
  FDocumentosViagem := value;
  FDocumentosViagem_IsSet_ := true;
end;

procedure tDetalharViagemResponse.SetDetalheProgramacaoViagem(value:tDetalheProgramacaoViagem);
begin
  FDetalheProgramacaoViagem := value;
  FDetalheProgramacaoViagem_IsSet_ := true;
end;

function tDetalharViagemResponse.GetAsString: string;
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

procedure tDetalharViagemResponse.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'DetalharViagemResponse')
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
    xn := aNode.addChildByName(snDetalharViagemResponse_RetornoMensagem);
    FRetornoMensagem.Save(xn);
  end;
    xn := aNode.addChildByName(snDetalharViagemResponse_TipoViagem);
    xn.text := FTipoViagem;

  if Assigned(FDadosViagem) then
  begin
    xn := aNode.addChildByName(snDetalharViagemResponse_DadosViagem);
    FDadosViagem.Save(xn);
  end;
  if Assigned(FCIOT) then
  begin
    xn := aNode.addChildByName(snDetalharViagemResponse_CIOT);
    FCIOT.Save(xn);
  end;
  if Assigned(FTransportador) then
  begin
    xn := aNode.addChildByName(snDetalharViagemResponse_Transportador);
    FTransportador.Save(xn);
  end;
  if Assigned(FRotaViagem) then
  begin
    xn := aNode.addChildByName(snDetalharViagemResponse_RotaViagem);
    FRotaViagem.Save(xn);
  end;
  // element "VeiculosViagem" is tManagedStringlist
  if Assigned(FVeiculosViagem) then
    for i:=0 to FVeiculosViagem.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDetalharViagemResponse_VeiculosViagem));
      tVeiculosViagem(FVeiculosViagem.Objects[i]).Save(xn);
    end; // for i:=0 to ...
  if Assigned(FValePedagioViagem) then
  begin
    xn := aNode.addChildByName(snDetalharViagemResponse_ValePedagioViagem);
    FValePedagioViagem.Save(xn);
  end;
  if Assigned(FListaPedidosValePedagio) then
  begin
    xn := aNode.addChildByName(snDetalharViagemResponse_ListaPedidosValePedagio);
    FListaPedidosValePedagio.Save(xn);
  end;
  // element "MotoristaViagem" is tManagedStringlist
  if Assigned(FMotoristaViagem) then
    for i:=0 to FMotoristaViagem.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDetalharViagemResponse_MotoristaViagem));
      tMotoristaViagem(FMotoristaViagem.Objects[i]).Save(xn);
    end; // for i:=0 to ...
  if Assigned(FEnvolvidosTransporteViagem) then
  begin
    xn := aNode.addChildByName(snDetalharViagemResponse_EnvolvidosTransporteViagem);
    FEnvolvidosTransporteViagem.Save(xn);
  end;
  if Assigned(FValoresViagem) then
  begin
    xn := aNode.addChildByName(snDetalharViagemResponse_ValoresViagem);
    FValoresViagem.Save(xn);
  end;
  if Assigned(FImpostosViagem) then
  begin
    xn := aNode.addChildByName(snDetalharViagemResponse_ImpostosViagem);
    FImpostosViagem.Save(xn);
  end;
  if Assigned(FDadosBancarios) then
  begin
    xn := aNode.addChildByName(snDetalharViagemResponse_DadosBancarios);
    FDadosBancarios.Save(xn);
  end;
  if Assigned(FDocumentosViagem) then
  begin
    xn := aNode.addChildByName(snDetalharViagemResponse_DocumentosViagem);
    FDocumentosViagem.Save(xn);
  end;
  if Assigned(FDetalheProgramacaoViagem) then
  begin
    xn := aNode.addChildByName(snDetalharViagemResponse_DetalheProgramacaoViagem);
    FDetalheProgramacaoViagem.Save(xn);
  end;
  // element "ClausulasViagem" is tManagedStringlist
  if Assigned(FClausulasViagem) then
    for i:=0 to FClausulasViagem.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDetalharViagemResponse_ClausulasViagem));
      tClausulasViagem(FClausulasViagem.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tDetalharViagemRequest }

class function tDetalharViagemRequest._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tDetalharViagemRequest.Create;
begin
  FIdentificacaoIntegracao := tIdentificacaoIntegracao.Create;   
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tDetalharViagemRequest.CreateFromXmlString(
  s: string): tDetalharViagemRequest;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tDetalharViagemRequest.Create( parser );
   finally
      parser.Free;
   end;
end;

constructor tDetalharViagemRequest.Create(aRoot:tJanXMLNode2);
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
    if (sn = snDetalharViagemRequest_IdentificacaoIntegracao)
      and ((thisURI='') or (tIdentificacaoIntegracao._nsURI_ = thisURI)) then
      FIdentificacaoIntegracao := tIdentificacaoIntegracao.Create(xn)
    else if (sn = snDetalharViagemRequest_IdClienteResponsavel)then
      FIdClienteResponsavel :=  StrToIntDef(xn.text,0)
    else if (sn = snDetalharViagemRequest_NumeroViagem)then
      FNumeroViagem := xn.text
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tDetalharViagemRequest.Destroy;
begin
  FIdentificacaoIntegracao.Free;
  inherited;
end; // destructor ...

procedure tDetalharViagemRequest.SetIdClienteResponsavel(value:tIdClienteResponsavel);
begin
  FIdClienteResponsavel := value;
  FIdClienteResponsavel_IsSet_ := true;
end;

function tDetalharViagemRequest.GetAsString: string;
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

procedure tDetalharViagemRequest.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'DetalharViagemRequest')
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
    xn := aNode.addChildByName(snDetalharViagemRequest_IdentificacaoIntegracao);
    FIdentificacaoIntegracao.Save(xn);
  end;

  if FIdClienteResponsavel<>0 then
  begin
    xn := aNode.addChildByName(snDetalharViagemRequest_IdClienteResponsavel);
    xn.text := intToSTr( FIdClienteResponsavel );
  end;

  xn := aNode.addChildByName(snDetalharViagemRequest_NumeroViagem);
  xn.text := FNumeroViagem;
  
end; // procedure save

{ tDetalharViagem }

class function tDetalharViagem._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tDetalharViagem.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

class function tDetalharViagem.CreateFromXmlString(
  s: string): tDetalharViagem;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tDetalharViagem.Create( parser );
   finally
      parser.Free;
   end;
end;

constructor tDetalharViagem.Create(aRoot:tJanXMLNode2);
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
    if (sn = snDetalharViagem_DetalharViagemRequest)
      and ((thisURI='') or (tDetalharViagemRequest._nsURI_ = thisURI)) then
      FDetalharViagemRequest := tDetalharViagemRequest.Create(xn)
    else if (sn = snDetalharViagem_DetalharViagemResponse)
      and ((thisURI='') or (tDetalharViagemResponse._nsURI_ = thisURI)) then
      FDetalharViagemResponse := tDetalharViagemResponse.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tDetalharViagem.Destroy;
begin
  FDetalharViagemRequest.Free;
  FDetalharViagemResponse.Free;
  inherited;
end; // destructor ...

function tDetalharViagem.GetAsString: string;
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

procedure tDetalharViagem.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'DetalharViagem')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Assigned(FDetalharViagemRequest) then
  begin
    xn := aNode.addChildByName(snDetalharViagem_DetalharViagemRequest);
    FDetalharViagemRequest.Save(xn);
  end;
  if Assigned(FDetalharViagemResponse) then
  begin
    xn := aNode.addChildByName(snDetalharViagem_DetalharViagemResponse);
    FDetalharViagemResponse.Save(xn);
  end;
end; // procedure save

end.
