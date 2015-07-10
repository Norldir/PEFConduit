unit utck_SchemaFrete_2_0;

Interface
uses
  Classes,
  JanXMLParser2,
  utck_SchemaComum_1_0,
  utck_SchemaViagem_1_0,
  uXMLTools;

// targetNameSpace: http://lote.homologacaoticketfrete.com.br/CDN/fretelote/schemas/SchemaFrete_2.0.xsd
// NameSpacePrefix: mstns
// Date of Schema : 02/07/2012 11:36:28
// Translationdate: 02/07/2012 11:47:16
//
//   includes c=http://lote.homologacaoticketfrete.com.br/CDN/fretelote/schemas/SchemaComum_1.0.xsd in 'SchemaComum_1.0.pas'
//   includes v=http://lote.homologacaoticketfrete.com.br/CDN/fretelote/schemas/SchemaViagem_1.0.xsd in 'SchemaViagem_1.0.pas'
//   includes xs=http://www.w3.org/2001/XMLSchema

// ordinal types
type
  tTipoCiot = string;
  tCiotPrincipal = string;

// constants for enumerations
const
  cTipoCiot_Padrao = 'Padrao';
  cTipoCiot_Agregado = 'Agregado';

const
  snConsignatario = 'Consignatario';
  snConsignatario_TipoPessoa = 'TipoPessoa';
  snConsignatario_Documento = 'Documento';
  snConsignatario_NomeRazaoSocial = 'NomeRazaoSocial';
  snConsignatario_SobrenomeNomeFantasia = 'SobrenomeNomeFantasia';
  snConsignatario_Endereco = 'Endereco';
  snConsignatario_Email = 'Email';
  snConsignatario_Telefone = 'Telefone';

type
  tConsignatario = class
  private
    F_NameSpaceAlias: string;
    FTipoPessoa: tTipoPessoa; // (E)
    FDocumento: tDocumento; // (E)
    FNomeRazaoSocial: string; // (E)
    FSobrenomeNomeFantasia: string; // (E)
    FEndereco: tEndereco; // (E)
    FEmail: string; // (E)
    FTelefone: string; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property TipoPessoa: tTipoPessoa read FTipoPessoa write FTipoPessoa;
    property Documento: tDocumento read FDocumento write FDocumento;
    property NomeRazaoSocial: string read FNomeRazaoSocial write FNomeRazaoSocial;
    property SobrenomeNomeFantasia: string read FSobrenomeNomeFantasia write FSobrenomeNomeFantasia;
    property Endereco: tEndereco read FEndereco write FEndereco;
    property Email: string read FEmail write FEmail;
    property Telefone: string read FTelefone write FTelefone;
  end;

const
  snDestinatario = 'Destinatario';
  snDestinatario_TipoPessoa = 'TipoPessoa';
  snDestinatario_Documento = 'Documento';
  snDestinatario_NomeRazaoSocial = 'NomeRazaoSocial';
  snDestinatario_SobrenomeNomeFantasia = 'SobrenomeNomeFantasia';
  snDestinatario_Endereco = 'Endereco';
  snDestinatario_Telefone = 'Telefone';
  snDestinatario_Email = 'Email';

type
  tDestinatario = class
  private
    F_NameSpaceAlias: string;
    FTipoPessoa: tTipoPessoa; // (E)
    FDocumento: tDocumento; // (E)
    FNomeRazaoSocial: string; // (E)
    FSobrenomeNomeFantasia: string; // (E)
    FEndereco: tEndereco; // (E)
    FTelefone: string; // (E)
    FTelefone_IsSet_: boolean;
    FEmail: string; // (E)
    FEmail_IsSet_: boolean;
    procedure SetTelefone(value:string);
    procedure SetEmail(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property TipoPessoa: tTipoPessoa read FTipoPessoa write FTipoPessoa;
    property Documento: tDocumento read FDocumento write FDocumento;
    property NomeRazaoSocial: string read FNomeRazaoSocial write FNomeRazaoSocial;
    property SobrenomeNomeFantasia: string read FSobrenomeNomeFantasia write FSobrenomeNomeFantasia;
    property Endereco: tEndereco read FEndereco write FEndereco;
    property Telefone: string read FTelefone write SetTelefone;
    property Telefone_IsSet_:boolean read FTelefone_IsSet_;
    property Email: string read FEmail write SetEmail;
    property Email_IsSet_:boolean read FEmail_IsSet_;
  end;

const
  snContratante = 'Contratante';
  snContratante_TipoPessoa = 'TipoPessoa';
  snContratante_Documento = 'Documento';
  snContratante_NomeRazaoSocial = 'NomeRazaoSocial';
  snContratante_SobrenomeNomeFantasia = 'SobrenomeNomeFantasia';
  snContratante_Endereco = 'Endereco';
  snContratante_Subcontratante = 'Subcontratante';
  snContratante_CiotPrincipal = 'CiotPrincipal';

type
  tContratante = class
  private
    F_NameSpaceAlias: string;
    FTipoPessoa: tTipoPessoa; // (E)
    FDocumento: tDocumento; // (E)
    FNomeRazaoSocial: string; // (E)
    FSobrenomeNomeFantasia: string; // (E)
    FEndereco: tEndereco; // (E)
    FSubcontratante: boolean; // (E)
    FCiotPrincipal: string; // (E)
    FCiotPrincipal_IsSet_: boolean;
    procedure SetCiotPrincipal(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property TipoPessoa: tTipoPessoa read FTipoPessoa write FTipoPessoa;
    property Documento: tDocumento read FDocumento write FDocumento;
    property NomeRazaoSocial: string read FNomeRazaoSocial write FNomeRazaoSocial;
    property SobrenomeNomeFantasia: string read FSobrenomeNomeFantasia write FSobrenomeNomeFantasia;
    property Endereco: tEndereco read FEndereco write FEndereco;
    property Subcontratante: boolean read FSubcontratante write FSubcontratante;
    property CiotPrincipal: string read FCiotPrincipal write SetCiotPrincipal;
    property CiotPrincipal_IsSet_:boolean read FCiotPrincipal_IsSet_;
  end;

const
  snAutonomo = 'Autonomo';
  snAutonomo_Documento = 'Documento';

type
  tAutonomo = class
  private
    F_NameSpaceAlias: string;
    FDocumento: tDocumento; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Documento: tDocumento read FDocumento write FDocumento;
  end;

const
  snViagens = 'Viagens';
  snViagens_Viagem = 'Viagem';

type
  tViagens = class
  private
    F_NameSpaceAlias: string;
    FViagem: tViagem; // (E)
    FViagem_IsSet_: boolean;
    procedure SetViagem(value:tViagem);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Viagem: tViagem read FViagem write SetViagem;
    property Viagem_IsSet_:boolean read FViagem_IsSet_;
  end;

const
  snVeiculos = 'Veiculos';
  snVeiculos_Veiculo = 'Veiculo';

type
  tVeiculos = class
  private
    F_NameSpaceAlias: string;
    FVeiculo: tManagedStringList; // of tVeiculo(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Veiculo: tManagedStringList read FVeiculo write FVeiculo; // of tVeiculo
  end;

const
  snCiot = 'Ciot';
  snCiot_TipoCiot = 'TipoCiot';
  snCiot_Descricao = 'Descricao';
  snCiot_DataInicio = 'DataInicio';
  snCiot_DataTermino = 'DataTermino';
  snCiot_ValorEstimado = 'ValorEstimado';
  snCiot_DadosComplementares = 'DadosComplementares';
  snCiot_Autonomo = 'Autonomo';
  snCiot_Contratante = 'Contratante';
  snCiot_Destinatario = 'Destinatario';
  snCiot_Consignatario = 'Consignatario';
  snCiot_RegrasQuitacao = 'RegrasQuitacao';
  snCiot_Veiculos = 'Veiculos';
  snCiot_Viagens = 'Viagens';
  anCiot_referencia = 'referencia';

type
  tCiot = class
  private
    F_NameSpaceAlias: string;
    FTipoCiot: string; // (E)
    FDescricao: string; // (E)
    FDataInicio: tDateTime; // (E)
    FDataTermino: tDateTime; // (E)
    FValorEstimado: tDecimalValido; // (E)
    FValorEstimado_IsSet_: boolean;
    FDadosComplementares: string; // (E)
    FDadosComplementares_IsSet_: boolean;
    FAutonomo: tAutonomo; // (E)
    FContratante: tContratante; // (E)
    FDestinatario: tDestinatario; // (E)
    FDestinatario_IsSet_: boolean;
    FConsignatario: tConsignatario; // (E)
    FConsignatario_IsSet_: boolean;
    FRegrasQuitacao: string; // (E)
    FRegrasQuitacao_IsSet_: boolean;
    FVeiculos: tVeiculos; // (E)
    FVeiculos_IsSet_: boolean;
    FViagens: tViagens; // (E)
    FViagens_IsSet_: boolean;
    Freferencia: string; // (A)
    Freferencia_IsSet_: boolean;
    procedure SetValorEstimado(value:tDecimalValido);
    procedure SetDadosComplementares(value:string);
    procedure SetDestinatario(value:tDestinatario);
    procedure SetConsignatario(value:tConsignatario);
    procedure SetRegrasQuitacao(value:string);
    procedure SetVeiculos(value:tVeiculos);
    procedure SetViagens(value:tViagens);
    procedure Setreferencia(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property TipoCiot: string read FTipoCiot write FTipoCiot;
    property Descricao: string read FDescricao write FDescricao;
    property DataInicio: tDateTime read FDataInicio write FDataInicio;
    property DataTermino: tDateTime read FDataTermino write FDataTermino;
    property ValorEstimado: tDecimalValido read FValorEstimado write SetValorEstimado;
    property ValorEstimado_IsSet_:boolean read FValorEstimado_IsSet_;
    property DadosComplementares: string read FDadosComplementares write SetDadosComplementares;
    property DadosComplementares_IsSet_:boolean read FDadosComplementares_IsSet_;
    property Autonomo: tAutonomo read FAutonomo write FAutonomo;
    property Contratante: tContratante read FContratante write FContratante;
    property Destinatario: tDestinatario read FDestinatario write SetDestinatario;
    property Destinatario_IsSet_:boolean read FDestinatario_IsSet_;
    property Consignatario: tConsignatario read FConsignatario write SetConsignatario;
    property Consignatario_IsSet_:boolean read FConsignatario_IsSet_;
    property RegrasQuitacao: string read FRegrasQuitacao write SetRegrasQuitacao;
    property RegrasQuitacao_IsSet_:boolean read FRegrasQuitacao_IsSet_;
    property Veiculos: tVeiculos read FVeiculos write SetVeiculos;
    property Veiculos_IsSet_:boolean read FVeiculos_IsSet_;
    property Viagens: tViagens read FViagens write SetViagens;
    property Viagens_IsSet_:boolean read FViagens_IsSet_;
    property referencia: string read Freferencia write Setreferencia;
    property referencia_IsSet_:boolean read Freferencia_IsSet_;
  end;

const
  snLoteDeFretes = 'LoteDeFretes';
  snLoteDeFretes_Ciot = 'Ciot';

type
  tLoteDeFretes = class
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
  thisNamespaceURI = 'http://lote.homologacaoticketfrete.com.br/CDN/fretelote/schemas/SchemaFrete_2.0.xsd';
  defNamespaceAlias = '';

{ tConsignatario }

class function tConsignatario._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tConsignatario.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tConsignatario.Create(aRoot:tJanXMLNode2);
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
    if (sn = snConsignatario_TipoPessoa) then
      TipoPessoa :=  xn.text // tTipoPessoa
    else if (sn = snConsignatario_Documento) then
      Documento :=  xn.text // tDocumento
    else if (sn = snConsignatario_NomeRazaoSocial) then
      NomeRazaoSocial :=  xn.text // string
    else if (sn = snConsignatario_SobrenomeNomeFantasia) then
      SobrenomeNomeFantasia :=  xn.text // string
    else if (sn = snConsignatario_Endereco) then
      Endereco :=  tEndereco.Create( xn ) // tEndereco
    else if (sn = snConsignatario_Email) then
      Email :=  xn.text // string
    else if (sn = snConsignatario_Telefone) then
      Telefone :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tConsignatario.Destroy;
begin
  inherited;
end; // destructor ...

procedure tConsignatario.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Consignatario')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConsignatario_TipoPessoa));
  xn.text := FTipoPessoa;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConsignatario_Documento));
  xn.text := FDocumento;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConsignatario_NomeRazaoSocial));
  xn.text := FNomeRazaoSocial;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConsignatario_SobrenomeNomeFantasia));
  xn.text := FSobrenomeNomeFantasia;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConsignatario_Endereco));
  FEndereco.Save( xn );
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConsignatario_Email));
  xn.text := FEmail;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snConsignatario_Telefone));
  xn.text := FTelefone;
end; // procedure save

{ tDestinatario }

class function tDestinatario._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tDestinatario.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tDestinatario.Create(aRoot:tJanXMLNode2);
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
    if (sn = snDestinatario_TipoPessoa) then
      TipoPessoa :=  xn.text // tTipoPessoa
    else if (sn = snDestinatario_Documento) then
      Documento :=  xn.text // tDocumento
    else if (sn = snDestinatario_NomeRazaoSocial) then
      NomeRazaoSocial :=  xn.text // string
    else if (sn = snDestinatario_SobrenomeNomeFantasia) then
      SobrenomeNomeFantasia :=  xn.text // string
    else if (sn = snDestinatario_Endereco) then
      Endereco :=  tEndereco.Create( xn ) // tEndereco
    else if (sn = snDestinatario_Telefone) then
      Telefone :=  xn.text // string
    else if (sn = snDestinatario_Email) then
      Email :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tDestinatario.Destroy;
begin
  inherited;
end; // destructor ...

procedure tDestinatario.SetTelefone(value:string);
begin
  FTelefone := value;
  FTelefone_IsSet_ := true;
end;

procedure tDestinatario.SetEmail(value:string);
begin
  FEmail := value;
  FEmail_IsSet_ := true;
end;

procedure tDestinatario.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Destinatario')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDestinatario_TipoPessoa));
  xn.text := FTipoPessoa;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDestinatario_Documento));
  xn.text := FDocumento;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDestinatario_NomeRazaoSocial));
  xn.text := FNomeRazaoSocial;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDestinatario_SobrenomeNomeFantasia));
  xn.text := FSobrenomeNomeFantasia;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDestinatario_Endereco));
  FEndereco.Save( xn );
  if Telefone_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDestinatario_Telefone));
    xn.text := FTelefone;
  end;
  if Email_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDestinatario_Email));
    xn.text := FEmail;
  end;
end; // procedure save

{ tContratante }

class function tContratante._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tContratante.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tContratante.Create(aRoot:tJanXMLNode2);
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
    if (sn = snContratante_TipoPessoa) then
      TipoPessoa :=  xn.text // tTipoPessoa
    else if (sn = snContratante_Documento) then
      Documento :=  xn.text // tDocumento
    else if (sn = snContratante_NomeRazaoSocial) then
      NomeRazaoSocial :=  xn.text // string
    else if (sn = snContratante_SobrenomeNomeFantasia) then
      SobrenomeNomeFantasia :=  xn.text // string
    else if (sn = snContratante_Endereco) then
      Endereco :=  tEndereco.Create(xn) // tEndereco
    else if (sn = snContratante_Subcontratante) then
      Subcontratante := (xn.text = 'true')
    else if (sn = snContratante_CiotPrincipal) then
      CiotPrincipal :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tContratante.Destroy;
begin
  inherited;
end; // destructor ...

procedure tContratante.SetCiotPrincipal(value:string);
begin
  FCiotPrincipal := value;
  FCiotPrincipal_IsSet_ := true;
end;

procedure tContratante.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Contratante')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snContratante_TipoPessoa));
  xn.text := FTipoPessoa;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snContratante_Documento));
  xn.text := FDocumento;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snContratante_NomeRazaoSocial));
  xn.text := FNomeRazaoSocial;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snContratante_SobrenomeNomeFantasia));
  xn.text := FSobrenomeNomeFantasia;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snContratante_Endereco));
  FEndereco.Save( xn );
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snContratante_Subcontratante));
  xn.text := BoolToStr(FSubcontratante);
  if CiotPrincipal_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snContratante_CiotPrincipal));
    xn.text := FCiotPrincipal;
  end;
end; // procedure save

{ tAutonomo }

class function tAutonomo._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAutonomo.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tAutonomo.Create(aRoot:tJanXMLNode2);
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
    if (sn = snAutonomo_Documento) then
      Documento :=  xn.text // tDocumento
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tAutonomo.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAutonomo.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Autonomo')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAutonomo_Documento));
  xn.text := FDocumento;
end; // procedure save

{ tViagens }

class function tViagens._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tViagens.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tViagens.Create(aRoot:tJanXMLNode2);
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
    if (sn = snViagens_Viagem) then
      Viagem :=  tViagem.Create(xn ) // tViagem
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tViagens.Destroy;
begin
  inherited;
end; // destructor ...

procedure tViagens.SetViagem(value:tViagem);
begin
  FViagem := value;
  FViagem_IsSet_ := true;
end;

procedure tViagens.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Viagens')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if Viagem_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snViagens_Viagem));
    FViagem.Save(xn);
  end;
end; // procedure save

{ tVeiculos }

class function tVeiculos._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tVeiculos.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FVeiculo := tManagedStringlist.Create;
end; // constructor ...

constructor tVeiculos.Create(aRoot:tJanXMLNode2);
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
    if (sn = snVeiculos_Veiculo) then
    begin
      // list of simple type
      FVeiculo.Add(xn.text);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tVeiculos.Destroy;
begin
  FVeiculo.Free;
  inherited;
end; // destructor ...

procedure tVeiculos.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Veiculos')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "Veiculo" is tManagedStringlist
  // but of simple elements
  if Assigned(FVeiculo) then
    for i:=0 to FVeiculo.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snVeiculos_Veiculo));
      xn.text := FVeiculo.Strings[i];
    end; // for i:=0 to ...
end; // procedure save

{ tCiot }

class function tCiot._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tCiot.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tCiot.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
  for i:=0 to aRoot.attributecount -1 do
  begin
    sn := NamePart(aRoot.attributeName[i]);
    if sn = anCiot_referencia then
      referencia := aRoot.attribute[i]; // string
  end;

  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snCiot_TipoCiot) then
      TipoCiot :=  xn.text // string
    else if (sn = snCiot_Descricao) then
      Descricao :=  xn.text // string
    else if (sn = snCiot_DataInicio) then
      DataInicio := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snCiot_DataTermino) then
      DataTermino := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snCiot_ValorEstimado) then
      ValorEstimado := DefStrToFloat( xn.text, 0) // tDecimalValido
    else if (sn = snCiot_DadosComplementares) then
      DadosComplementares :=  xn.text // string
    else if (sn = snCiot_Autonomo) then
      FAutonomo := tAutonomo.Create(xn)
    else if (sn = snCiot_Contratante) then
      FContratante := tContratante.Create(xn)
    else if (sn = snCiot_Destinatario) then
      FDestinatario := tDestinatario.Create(xn)
    else if (sn = snCiot_Consignatario) then
      FConsignatario := tConsignatario.Create(xn)
    else if (sn = snCiot_RegrasQuitacao) then
      RegrasQuitacao :=  xn.text // string
    else if (sn = snCiot_Veiculos)
      and ((thisURI='') or (tVeiculos._nsURI_ = thisURI)) then
      FVeiculos := tVeiculos.Create(xn)
    else if (sn = snCiot_Viagens)
      and ((thisURI='') or (tViagens._nsURI_ = thisURI)) then
      FViagens := tViagens.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tCiot.Destroy;
begin
  FVeiculos.Free;
  FViagens.Free;
  inherited;
end; // destructor ...

procedure tCiot.SetValorEstimado(value:tDecimalValido);
begin
  FValorEstimado := value;
  FValorEstimado_IsSet_ := true;
end;

procedure tCiot.SetDadosComplementares(value:string);
begin
  FDadosComplementares := value;
  FDadosComplementares_IsSet_ := true;
end;

procedure tCiot.SetDestinatario(value:tDestinatario);
begin
  FDestinatario := value;
  FDestinatario_IsSet_ := true;
end;

procedure tCiot.SetConsignatario(value:tConsignatario);
begin
  FConsignatario := value;
  FConsignatario_IsSet_ := true;
end;

procedure tCiot.SetRegrasQuitacao(value:string);
begin
  FRegrasQuitacao := value;
  FRegrasQuitacao_IsSet_ := true;
end;

procedure tCiot.SetVeiculos(value:tVeiculos);
begin
  FVeiculos := value;
  FVeiculos_IsSet_ := true;
end;

procedure tCiot.SetViagens(value:tViagens);
begin
  FViagens := value;
  FViagens_IsSet_ := true;
end;

procedure tCiot.Setreferencia(value:string);
begin
  Freferencia := value;
  Freferencia_IsSet_ := true;
end;

procedure tCiot.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Ciot')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  if referencia_IsSet_ then
    aNode.attribute[anCiot_referencia] := Freferencia;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCiot_TipoCiot));
  xn.text := FTipoCiot;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCiot_Descricao));
  xn.text := FDescricao;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCiot_DataInicio));
  xn.text := DateTimeToXMLDateTime(FDataInicio);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCiot_DataTermino));
  xn.text := DateTimeToXMLDateTime(FDataTermino);
  if ValorEstimado_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCiot_ValorEstimado));
    xn.text := MyFloatToStr( FValorEstimado );
  end;
  if DadosComplementares_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCiot_DadosComplementares));
    xn.text := FDadosComplementares;
  end;
  if Assigned(FAutonomo) then
  begin
    xn := aNode.addChildByName(snCiot_Autonomo);
    FAutonomo.Save(xn);
  end;
  if Assigned(FContratante) then
  begin
    xn := aNode.addChildByName(snCiot_Contratante);
    FContratante.Save(xn);
  end;
  if Assigned(FDestinatario) then
  begin
    xn := aNode.addChildByName(snCiot_Destinatario);
    FDestinatario.Save(xn);
  end;
  if Assigned(FConsignatario) then
  begin
    xn := aNode.addChildByName(snCiot_Consignatario);
    FConsignatario.Save(xn);
  end;
  if RegrasQuitacao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCiot_RegrasQuitacao));
    xn.text := FRegrasQuitacao;
  end;
  if Assigned(FVeiculos) then
  begin
    xn := aNode.addChildByName(snCiot_Veiculos);
    FVeiculos.Save(xn);
  end;
  if Assigned(FViagens) then
  begin
    xn := aNode.addChildByName(snCiot_Viagens);
    FViagens.Save(xn);
  end;
end; // procedure save

{ tLoteDeFretes }

class function tLoteDeFretes._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tLoteDeFretes.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FCiot := tManagedStringlist.Create;
end; // constructor ...

constructor tLoteDeFretes.Create(aRoot:tJanXMLNode2);
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
    if (sn = snLoteDeFretes_Ciot) then
    begin
      // list of simple type
      FCiot.Add(xn.text);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tLoteDeFretes.Destroy;
begin
  FCiot.Free;
  inherited;
end; // destructor ...

procedure tLoteDeFretes.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'LoteDeFretes')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  aNode.attribute['xmlns']     := 'http://lote.homologacaoticketfrete.com.br/CDN/fretelote/schemas/SchemaFrete_2.0.xsd';
  aNode.attribute['xmlns:c']   := 'http://lote.homologacaoticketfrete.com.br/CDN/fretelote/schemas/SchemaComum_1.0.xsd';
  aNode.attribute['xmlns:v']   := 'http://lote.homologacaoticketfrete.com.br/CDN/fretelote/schemas/SchemaViagem_1.0.xsd';

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
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snLoteDeFretes_Ciot));
      Tciot(FCiot.objects[i]).save( xn );
    end; // for i:=0 to ...
end; // procedure save

end.
