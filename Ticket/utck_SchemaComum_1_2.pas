unit utck_SchemaComum_1_2;

Interface
uses
  Classes,
  JanXMLParser2,
  uXMLTools;

// targetNameSpace: http://lote.homologacaoticketfrete.com.br/CDN/fretelote/schemas/SchemaComum_1.2.xsd
// NameSpacePrefix: mstns
// Date of Schema : 25/06/2012 16:40:10
// Translationdate: 25/06/2012 16:40:20
//
//   includes xs=http://www.w3.org/2001/XMLSchema

// ordinal types
type
  tTipoValePedagio = string;
  tNumeroEixos = integer;
  tStatusProcessamento = string;
  tTipoPessoa = string;
  tTipoAutonomo = string;
  tTipoContaBancaria = string;
  tDocumento = string;
  tCPF = string;
  tCNPJ = string;
  tRNTRC = string;
  tRenavam = string;
  tPlaca = string;
  tNumeroCiot = string;
  tDecimalValido = extended;
  tCEP = string;

// constants for enumerations
const
  cTipoValePedagio_Cartao = 'Cartao';
  cTipoValePedagio_Vale = 'Vale';
  cTipoValePedagio_TAG = 'TAG';
  cTipoValePedagio_Nenhum = 'Nenhum';
  cStatusProcessamento_Pendente = 'Pendente';
  cStatusProcessamento_Processado = 'Processado';
  cTipoPessoa_Juridica = 'Juridica';
  cTipoPessoa_Fisica = 'Fisica';
  cTipoAutonomo_TAC = 'TAC';
  cTipoAutonomo_ETC = 'ETC';
  cTipoAutonomo_CTC = 'CTC';
  cTipoContaBancaria_ContaCorrente = 'ContaCorrente';
  cTipoContaBancaria_Poupanca = 'Poupanca';

const
  snEndereco = 'c:Endereco';
  snEndereco_CEP = 'c:CEP';
  snEndereco_CodigoCidade = 'c:CodigoCidade';
  snEndereco_Logradouro = 'c:Logradouro';
  snEndereco_Numero = 'c:Numero';
  snEndereco_Complemento = 'c:Complemento';
  snEndereco_Bairro = 'c:Bairro';

type
  tEndereco = class
  private
    F_NameSpaceAlias: string;
    FCEP: string; // (E)
    FCodigoCidade: string; // (E)
    FLogradouro: string; // (E)
    FNumero: string; // (E)
    FComplemento: string; // (E)
    FComplemento_IsSet_: boolean;
    FBairro: string; // (E)
    procedure SetComplemento(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CEP: string read FCEP write FCEP;
    property CodigoCidade: string read FCodigoCidade write FCodigoCidade;
    property Logradouro: string read FLogradouro write FLogradouro;
    property Numero: string read FNumero write FNumero;
    property Complemento: string read FComplemento write SetComplemento;
    property Complemento_IsSet_:boolean read FComplemento_IsSet_;
    property Bairro: string read FBairro write FBairro;
  end;


const
  snRota = 'c:Rota';
  snRota_CodigoRota = 'c:CodigoRota';

type
  tRota = class
  private
    F_NameSpaceAlias: string;
    FCodigoRota: integer; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CodigoRota: integer read FCodigoRota write FCodigoRota;
  end;

const
  snValePedagio = 'c:ValePedagio';
  snValePedagio_TipoValePedagio = 'c:TipoValePedagio';
  snValePedagio_NumeroEixos = 'c:NumeroEixos';
  snValePedagio_ValorValePedagio = 'c:ValorValePedagio';
  snValePedagio_Proprietario = 'c:Proprietario';
  snValePedagio_Rota = 'c:Rota';

type
  tValePedagio = class
  private
    F_NameSpaceAlias: string;
    FTipoValePedagio: string; // (E)
    FNumeroEixos: integer; // (E)
    FNumeroEixos_IsSet_: boolean;
    FValorValePedagio: extended; // (E)
    FProprietario: string; // (E)
    FProprietario_IsSet_: boolean;
    FRota: tRota; // (E)
    FRota_IsSet_: boolean;
    procedure SetNumeroEixos(value:integer);
    procedure SetProprietario(value:string);
    procedure SetRota(value:tRota);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property TipoValePedagio: string read FTipoValePedagio write FTipoValePedagio;
    property NumeroEixos: integer read FNumeroEixos write SetNumeroEixos;
    property NumeroEixos_IsSet_:boolean read FNumeroEixos_IsSet_;
    property ValorValePedagio: extended read FValorValePedagio write FValorValePedagio;
    property Proprietario: string read FProprietario write SetProprietario;
    property Proprietario_IsSet_:boolean read FProprietario_IsSet_;
    property Rota: tRota read FRota write SetRota;
    property Rota_IsSet_:boolean read FRota_IsSet_;
  end;

const
  snVeiculo = 'c:Veiculo';
  snVeiculo_Placa = 'c:Placa';
  snVeiculo_Rntrc = 'c:Rntrc';
  snVeiculo_Documento = 'c:Documento';
  snVeiculo_ValePedagio = 'c:ValePedagio';

type
  tVeiculo = class
  private
    F_NameSpaceAlias: string;
    FPlaca: string; // (E)
    FRntrc: string; // (E)
    FRntrc_IsSet_: boolean;
    FDocumento: string; // (E)
    FDocumento_IsSet_: boolean;
    FValePedagio: tValePedagio; // (E)
    FValePedagio_IsSet_: boolean;
    procedure SetRntrc(value:string);
    procedure SetDocumento(value:string);
    procedure SetValePedagio(value:tValePedagio);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Placa: string read FPlaca write FPlaca;
    property Rntrc: string read FRntrc write SetRntrc;
    property Rntrc_IsSet_:boolean read FRntrc_IsSet_;
    property Documento: string read FDocumento write SetDocumento;
    property Documento_IsSet_:boolean read FDocumento_IsSet_;
    property ValePedagio: tValePedagio read FValePedagio write SetValePedagio;
    property ValePedagio_IsSet_:boolean read FValePedagio_IsSet_;
  end;

implementation
uses
  SysUtils,
  mylib;

const
  thisNamespaceURI = 'http://lote.homologacaoticketfrete.com.br/CDN/fretelote/schemas/SchemaComum_1.2.xsd';
  defNamespaceAlias = ''; //'mstns';

{ tEndereco }

class function tEndereco._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tEndereco.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tEndereco.Create(aRoot:tJanXMLNode2);
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
    if (sn = snEndereco_CEP) then
      CEP :=  xn.text // string
    else if (sn = snEndereco_CodigoCidade) then
      CodigoCidade := xn.text
    else if (sn = snEndereco_Logradouro) then
      Logradouro :=  xn.text // string
    else if (sn = snEndereco_Numero) then
      Numero :=  xn.text // string
    else if (sn = snEndereco_Complemento) then
      Complemento :=  xn.text // string
    else if (sn = snEndereco_Bairro) then
      Bairro :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tEndereco.Destroy;
begin
  inherited;
end; // destructor ...

procedure tEndereco.SetComplemento(value:string);
begin
  FComplemento := value;
  FComplemento_IsSet_ := true;
end;

procedure tEndereco.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Endereco')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEndereco_CEP));
  xn.text := FCEP;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEndereco_CodigoCidade));
  xn.text := FCodigoCidade;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEndereco_Logradouro));
  xn.text := FLogradouro;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEndereco_Numero));
  xn.text := FNumero;
  if Complemento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEndereco_Complemento));
    xn.text := FComplemento;
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEndereco_Bairro));
  xn.text := FBairro;
end; // procedure save


{ tRota }

class function tRota._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tRota.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tRota.Create(aRoot:tJanXMLNode2);
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
    if (sn = snRota_CodigoRota) then
      CodigoRota := StrToIntDef(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tRota.Destroy;
begin
  inherited;
end; // destructor ...

procedure tRota.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Rota')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snRota_CodigoRota));
  xn.text := IntToStr(FCodigoRota);
end; // procedure save

{ tValePedagio }

class function tValePedagio._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tValePedagio.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tValePedagio.Create(aRoot:tJanXMLNode2);
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
    if (sn = snValePedagio_TipoValePedagio) then
      TipoValePedagio :=  xn.text // string
    else if (sn = snValePedagio_NumeroEixos) then
      NumeroEixos := StrToIntDef(xn.text, 0)
    else if (sn = snValePedagio_ValorValePedagio) then
      ValorValePedagio := DefStrToFloat(xn.text, 0)
    else if (sn = snValePedagio_Proprietario) then
      Proprietario :=  xn.text // string
    else if (sn = snValePedagio_Rota) then
      FRota := tRota.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tValePedagio.Destroy;
begin
  inherited;
end; // destructor ...

procedure tValePedagio.SetNumeroEixos(value:integer);
begin
  FNumeroEixos := value;
  FNumeroEixos_IsSet_ := true;
end;

procedure tValePedagio.SetProprietario(value:string);
begin
  FProprietario := value;
  FProprietario_IsSet_ := true;
end;

procedure tValePedagio.SetRota(value:tRota);
begin
  FRota := value;
  FRota_IsSet_ := true;
end;

procedure tValePedagio.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ValePedagio')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValePedagio_TipoValePedagio));
  xn.text := FTipoValePedagio;
  if NumeroEixos_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValePedagio_NumeroEixos));
    xn.text := IntToStr(FNumeroEixos);
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValePedagio_ValorValePedagio));
  xn.text := MyFloatToStr(FValorValePedagio);
  if Proprietario_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValePedagio_Proprietario));
    xn.text := FProprietario;
  end;
  if Assigned(FRota) then
  begin
    xn := aNode.addChildByName(snValePedagio_Rota);
    FRota.Save(xn);
  end;
end; // procedure save

{ tVeiculo }

class function tVeiculo._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tVeiculo.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tVeiculo.Create(aRoot:tJanXMLNode2);
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
    if (sn = snVeiculo_Placa) then
      Placa :=  xn.text // string
    else if (sn = snVeiculo_Rntrc) then
      Rntrc :=  xn.text // string
    else if (sn = snVeiculo_Documento) then
      Documento :=  xn.text // string
    else if (sn = snVeiculo_ValePedagio) then
      FValePedagio := tValePedagio.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tVeiculo.Destroy;
begin
  inherited;
end; // destructor ...

procedure tVeiculo.SetRntrc(value:string);
begin
  FRntrc := value;
  FRntrc_IsSet_ := true;
end;

procedure tVeiculo.SetDocumento(value:string);
begin
  FDocumento := value;
  FDocumento_IsSet_ := true;
end;

procedure tVeiculo.SetValePedagio(value:tValePedagio);
begin
  FValePedagio := value;
  FValePedagio_IsSet_ := true;
end;

procedure tVeiculo.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Veiculo')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snVeiculo_Placa));
  xn.text := FPlaca;
  if Rntrc_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snVeiculo_Rntrc));
    xn.text := FRntrc;
  end;
  if Documento_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snVeiculo_Documento));
    xn.text := FDocumento;
  end;
  if Assigned(FValePedagio) then
  begin
    xn := aNode.addChildByName(snVeiculo_ValePedagio);
    FValePedagio.Save(xn);
  end;
end; // procedure save

end.
