unit utck_SchemaAutonomo_1_0;

Interface
uses
  Classes,
  JanXMLParser2,
  utck_SchemaComum_1_1,
  utck_SchemaComum_1_2,
  uXMLTools;

// targetNameSpace: http://lote.homologacaoticketfrete.com.br/CDN/fretelote/schemas/SchemaAutonomo_1.0.xsd
// NameSpacePrefix: mstns
// Date of Schema : 02/07/2012 16:20:12
// Translationdate: 02/07/2012 16:20:15
//
//   includes c=http://lote.homologacaoticketfrete.com.br/CDN/fretelote/schemas/SchemaComum_1.1.xsd in 'SchemaComum_1.1.pas'
//   includes xs=http://www.w3.org/2001/XMLSchema

const
  snDadosBancarios = 'DadosBancarios';
  snDadosBancarios_Banco = 'Banco';
  snDadosBancarios_TipoConta = 'TipoConta';
  snDadosBancarios_Agencia = 'Agencia';
  snDadosBancarios_AgenciaDigito = 'AgenciaDigito';
  snDadosBancarios_Conta = 'Conta';
  snDadosBancarios_ContaDigito = 'ContaDigito';

type
  tDadosBancarios = class
  private
    F_NameSpaceAlias: string;
    FBanco: int64; // (E)
    FTipoConta: tTipoContaBancaria; // (E)
    FAgencia: string; // (E)
    FAgenciaDigito: string; // (E)
    FAgenciaDigito_IsSet_: boolean;
    FConta: string; // (E)
    FContaDigito: string; // (E)
    FContaDigito_IsSet_: boolean;
    procedure SetAgenciaDigito(value:string);
    procedure SetContaDigito(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Banco: int64 read FBanco write FBanco;
    property TipoConta: tTipoContaBancaria read FTipoConta write FTipoConta;
    property Agencia: string read FAgencia write FAgencia;
    property AgenciaDigito: string read FAgenciaDigito write SetAgenciaDigito;
    property AgenciaDigito_IsSet_:boolean read FAgenciaDigito_IsSet_;
    property Conta: string read FConta write FConta;
    property ContaDigito: string read FContaDigito write SetContaDigito;
    property ContaDigito_IsSet_:boolean read FContaDigito_IsSet_;
  end;

const
  snVeiculo = 'Veiculo';
  snVeiculo_Placa = 'Placa';
  snVeiculo_Renavam = 'Renavam';

type
  tVeiculo = class
  private
    F_NameSpaceAlias: string;
    FPlaca: tPlaca; // (E)
    FRenavam: tRenavam; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Placa: tPlaca read FPlaca write FPlaca;
    property Renavam: tRenavam read FRenavam write FRenavam;
  end;

const
  snDependentes = 'Dependentes';
  snDependentes_Dependente = 'Dependente';

type
  tDependentes = class
  private
    F_NameSpaceAlias: string;
    FDependente: tManagedStringList; // of tPessoaFisica(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Dependente: tManagedStringList read FDependente write FDependente; // of tPessoaFisica
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
  snAutonomo = 'Autonomo';
  snAutonomo_TipoPessoa = 'TipoPessoa';
  snAutonomo_TipoAutonomo = 'TipoAutonomo';
  snAutonomo_RNTRC = 'RNTRC';
  snAutonomo_Veiculos = 'Veiculos';
  snAutonomo_DadosBancarios = 'DadosBancarios';
  snAutonomo_Email = 'Email';
  snAutonomo_Cartao = 'Cartao';
  snAutonomo_Endereco = 'Endereco';
  snAutonomo_Dependentes = 'Dependentes';

type
  tAutonomo = class
  private
    F_NameSpaceAlias: string;
    FTipoPessoa: tTipoPessoa; // (E)
    FTipoAutonomo: tTipoAutonomo; // (E)
    FRNTRC: tRNTRC; // (E)
    FVeiculos: tVeiculos; // (E)
    FDadosBancarios: tDadosBancarios; // (E)
    FDadosBancarios_IsSet_: boolean;
    FEmail: string; // (E)
    FCartao: string; // (E)
    FCartao_IsSet_: boolean;
    FEndereco: tEndereco; // (E)
    FDependentes: tDependentes; // (E)
    FDependentes_IsSet_: boolean;
    procedure SetDadosBancarios(value:tDadosBancarios);
    procedure SetCartao(value:string);
    procedure SetDependentes(value:tDependentes);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property TipoPessoa: tTipoPessoa read FTipoPessoa write FTipoPessoa;
    property TipoAutonomo: tTipoAutonomo read FTipoAutonomo write FTipoAutonomo;
    property RNTRC: tRNTRC read FRNTRC write FRNTRC;
    property Veiculos: tVeiculos read FVeiculos write FVeiculos;
    property DadosBancarios: tDadosBancarios read FDadosBancarios write SetDadosBancarios;
    property DadosBancarios_IsSet_:boolean read FDadosBancarios_IsSet_;
    property Email: string read FEmail write FEmail;
    property Cartao: string read FCartao write SetCartao;
    property Cartao_IsSet_:boolean read FCartao_IsSet_;
    property Endereco: tEndereco read FEndereco write FEndereco;
    property Dependentes: tDependentes read FDependentes write SetDependentes;
    property Dependentes_IsSet_:boolean read FDependentes_IsSet_;
  end;

const
  snAutonomoPF = 'AutonomoPF';
  snAutonomoPF_CPF = 'CPF';
  snAutonomoPF_Nome = 'Nome';
  snAutonomoPF_Sobrenome = 'Sobrenome';

type
  tAutonomoPF = class( tAutonomo )
  private
    F_NameSpaceAlias: string;
    FCPF: tCPF; // (E)
    FNome: string; // (E)
    FNome_IsSet_: boolean;
    FSobrenome: string; // (E)
    FSobrenome_IsSet_: boolean;
    procedure SetNome(value:string);
    procedure SetSobrenome(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CPF: tCPF read FCPF write FCPF;
    property Nome: string read FNome write SetNome;
    property Nome_IsSet_:boolean read FNome_IsSet_;
    property Sobrenome: string read FSobrenome write SetSobrenome;
    property Sobrenome_IsSet_:boolean read FSobrenome_IsSet_;
  end;

const
  snAutonomoPJ = 'AutonomoPJ';
  snAutonomoPJ_CNPJ = 'CNPJ';
  snAutonomoPJ_RazaoSocial = 'RazaoSocial';
  snAutonomoPJ_NomeFantasia = 'NomeFantasia';
  snAutonomoPJ_Representante = 'Representante';

type
  tAutonomoPJ = class( tAutonomo )
  private
    F_NameSpaceAlias: string;
    FCNPJ: tCNPJ; // (E)
    FRazaoSocial: string; // (E)
    FRazaoSocial_IsSet_: boolean;
    FNomeFantasia: string; // (E)
    FNomeFantasia_IsSet_: boolean;
    FRepresentante: tPessoaFisica; // (E)
    procedure SetRazaoSocial(value:string);
    procedure SetNomeFantasia(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CNPJ: tCNPJ read FCNPJ write FCNPJ;
    property RazaoSocial: string read FRazaoSocial write SetRazaoSocial;
    property RazaoSocial_IsSet_:boolean read FRazaoSocial_IsSet_;
    property NomeFantasia: string read FNomeFantasia write SetNomeFantasia;
    property NomeFantasia_IsSet_:boolean read FNomeFantasia_IsSet_;
    property Representante: tPessoaFisica read FRepresentante write FRepresentante;
  end;

const
  snLoteDeAutonomos = 'LoteDeAutonomos';
  snLoteDeAutonomos_Autonomo = 'Autonomo';
  snLoteDeAutonomos_AutonomoPJ = 'AutonomoPJ';
  snLoteDeAutonomos_AutonomoPF = 'AutonomoPF';

type
  tLoteDeAutonomos = class
  private
    F_NameSpaceAlias: string;
    FAutonomo: tManagedStringList;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Autonomo: tManagedStringList read FAutonomo write FAutonomo; // of tAutonomo
    function GetAsString: string; // of tAutonomo(E)
  end;

implementation
uses
  SysUtils,
  mylib;

const
  thisNamespaceURI = 'http://lote.homologacaoticketfrete.com.br/CDN/fretelote/schemas/SchemaAutonomo_1.0.xsd';
  defNamespaceAlias = '';

{ tDadosBancarios }

class function tDadosBancarios._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tDadosBancarios.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tDadosBancarios.Create(aRoot:tJanXMLNode2);
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
    if (sn = snDadosBancarios_Banco) then
      Banco := StrToInt64Def(xn.text, 0)
    else if (sn = snDadosBancarios_TipoConta) then
      TipoConta :=  xn.text // tTipoContaBancaria
    else if (sn = snDadosBancarios_Agencia) then
      Agencia :=  xn.text // string
    else if (sn = snDadosBancarios_AgenciaDigito) then
      AgenciaDigito :=  xn.text // string
    else if (sn = snDadosBancarios_Conta) then
      Conta :=  xn.text // string
    else if (sn = snDadosBancarios_ContaDigito) then
      ContaDigito :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tDadosBancarios.Destroy;
begin
  inherited;
end; // destructor ...

procedure tDadosBancarios.SetAgenciaDigito(value:string);
begin
  FAgenciaDigito := value;
  FAgenciaDigito_IsSet_ := true;
end;

procedure tDadosBancarios.SetContaDigito(value:string);
begin
  FContaDigito := value;
  FContaDigito_IsSet_ := true;
end;

procedure tDadosBancarios.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
////  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'DadosBancarios')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosBancarios_Banco));
  xn.text := IntToStr(FBanco);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosBancarios_TipoConta));
  xn.text := FTipoConta;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosBancarios_Agencia));
  xn.text := FAgencia;
  if AgenciaDigito_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosBancarios_AgenciaDigito));
    xn.text := FAgenciaDigito;
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosBancarios_Conta));
  xn.text := FConta;
  if ContaDigito_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDadosBancarios_ContaDigito));
    xn.text := FContaDigito;
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
      Placa :=  xn.text // tPlaca
    else if (sn = snVeiculo_Renavam) then
      Renavam :=  xn.text // tRenavam
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tVeiculo.Destroy;
begin
  inherited;
end; // destructor ...

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
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snVeiculo_Renavam));
  xn.text := FRenavam;
end; // procedure save

{ tAutonomoPF }

class function tAutonomoPF._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAutonomoPF.Create;
begin
  inherited;
  _NamespaceAlias := defNamespaceAlias;
  TipoPessoa := 'Fisica';
end; // constructor ...

constructor tAutonomoPF.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
//  i: integer;
  thisURI: string;
begin
  inherited create( aRoot );
  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snAutonomoPF_CPF) then
      CPF :=  xn.text // tCPF
    else if (sn = snAutonomoPF_Nome) then
      Nome :=  xn.text // string
    else if (sn = snAutonomoPF_Sobrenome) then
      Sobrenome :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tAutonomoPF.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAutonomoPF.SetNome(value:string);
begin
  FNome := value;
  FNome_IsSet_ := true;
end;

procedure tAutonomoPF.SetSobrenome(value:string);
begin
  FSobrenome := value;
  FSobrenome_IsSet_ := true;
end;

procedure tAutonomoPF.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  inherited Save( aNode );
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AutonomoPF')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAutonomoPF_CPF));
  xn.text := FCPF;
  if Nome_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAutonomoPF_Nome));
    xn.text := FNome;
  end;
  if Sobrenome_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAutonomoPF_Sobrenome));
    xn.text := FSobrenome;
  end;
end; // procedure save

{ tAutonomoPJ }

class function tAutonomoPJ._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tAutonomoPJ.Create;
begin
  inherited create;
  _NamespaceAlias := defNamespaceAlias;
  TipoPessoa := 'Juridica';
end; // constructor ...

constructor tAutonomoPJ.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
//  i: integer;
  thisURI: string;
begin
  inherited create( aRoot );
  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snAutonomoPJ_CNPJ) then
      CNPJ :=  xn.text // tCNPJ
    else if (sn = snAutonomoPJ_RazaoSocial) then
      RazaoSocial :=  xn.text // string
    else if (sn = snAutonomoPJ_NomeFantasia) then
      NomeFantasia :=  xn.text // string
    else if (sn = snAutonomoPJ_Representante) then
      Representante :=  tPessoaFisica.Create( xn ) // tPessoaFisica
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tAutonomoPJ.Destroy;
begin
  inherited;
end; // destructor ...

procedure tAutonomoPJ.SetRazaoSocial(value:string);
begin
  FRazaoSocial := value;
  FRazaoSocial_IsSet_ := true;
end;

procedure tAutonomoPJ.SetNomeFantasia(value:string);
begin
  FNomeFantasia := value;
  FNomeFantasia_IsSet_ := true;
end;

procedure tAutonomoPJ.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  inherited save( aNode );

  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'AutonomoPJ')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAutonomoPJ_CNPJ));
  xn.text := FCNPJ;
  if RazaoSocial_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAutonomoPJ_RazaoSocial));
    xn.text := FRazaoSocial;
  end;
  if NomeFantasia_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAutonomoPJ_NomeFantasia));
    xn.text := FNomeFantasia;
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAutonomoPJ_Representante));
  FRepresentante.Save( xn );


end; // procedure save

{ tDependentes }

class function tDependentes._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tDependentes.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FDependente := tManagedStringlist.Create;
end; // constructor ...

constructor tDependentes.Create(aRoot:tJanXMLNode2);
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
    if (sn = snDependentes_Dependente) then
    begin
      // list of simple type
      FDependente.Add(xn.text);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tDependentes.Destroy;
begin
  FDependente.Free;
  inherited;
end; // destructor ...

procedure tDependentes.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Dependentes')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "Dependente" is tManagedStringlist
  // but of simple elements
  if Assigned(FDependente) then
    for i:=0 to FDependente.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDependentes_Dependente));
      xn.text := FDependente.Strings[i];
    end; // for i:=0 to ...
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
      tVeiculo( FVeiculo.Objects[i] ).Save( xn );
    end; // for i:=0 to ...
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
    if (sn = snAutonomo_TipoPessoa) then
      TipoPessoa :=  xn.text // tTipoPessoa
    else if (sn = snAutonomo_TipoAutonomo) then
      TipoAutonomo :=  xn.text // tTipoAutonomo
    else if (sn = snAutonomo_RNTRC) then
      RNTRC :=  xn.text // tRNTRC
    else if (sn = snAutonomo_Veiculos)
      and ((thisURI='') or (tVeiculos._nsURI_ = thisURI)) then
      FVeiculos := tVeiculos.Create(xn)
    else if (sn = snAutonomo_DadosBancarios) then
      FDadosBancarios := tDadosBancarios.Create(xn)
    else if (sn = snAutonomo_Email) then
      Email :=  xn.text // string
    else if (sn = snAutonomo_Cartao) then
      Cartao :=  xn.text // string
    else if (sn = snAutonomo_Endereco) then
      Endereco :=  tEndereco.Create( xn ) // tEndereco
    else if (sn = snAutonomo_Dependentes)
      and ((thisURI='') or (tDependentes._nsURI_ = thisURI)) then
      FDependentes := tDependentes.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tAutonomo.Destroy;
begin
  FVeiculos.Free;
  FDependentes.Free;
  inherited;
end; // destructor ...

procedure tAutonomo.SetDadosBancarios(value:tDadosBancarios);
begin
  FDadosBancarios := value;
  FDadosBancarios_IsSet_ := true;
end;

procedure tAutonomo.SetCartao(value:string);
begin
  FCartao := value;
  FCartao_IsSet_ := true;
end;

procedure tAutonomo.SetDependentes(value:tDependentes);
begin
  FDependentes := value;
  FDependentes_IsSet_ := true;
end;

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

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAutonomo_TipoPessoa));
  xn.text := FTipoPessoa;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAutonomo_TipoAutonomo));
  xn.text := FTipoAutonomo;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAutonomo_RNTRC));
  xn.text := FRNTRC;
  if Assigned(FVeiculos) then
  begin
    xn := aNode.addChildByName(snAutonomo_Veiculos);
    FVeiculos.Save(xn);
  end;
  if Assigned(FDadosBancarios) then
  begin
    xn := aNode.addChildByName(snAutonomo_DadosBancarios);
    FDadosBancarios.Save(xn);
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAutonomo_Email));
  xn.text := FEmail;
  if Cartao_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAutonomo_Cartao));
    xn.text := FCartao;
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snAutonomo_Endereco));
  FEndereco.Save( xn );
  if Assigned(FDependentes) then
  begin
    xn := aNode.addChildByName(snAutonomo_Dependentes);
    FDependentes.Save(xn);
  end;
end; // procedure save

{ tLoteDeAutonomos }

class function tLoteDeAutonomos._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tLoteDeAutonomos.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FAutonomo := tManagedStringlist.Create;
end; // constructor ...

constructor tLoteDeAutonomos.Create(aRoot:tJanXMLNode2);
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
    if (sn = snLoteDeAutonomos_Autonomo) then
    begin
      // list of simple type
      FAutonomo.Add(xn.text);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tLoteDeAutonomos.Destroy;
begin
  FAutonomo.Free;
  inherited;
end; // destructor ...

procedure tLoteDeAutonomos.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'LoteDeAutonomos')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  aNode.attribute['xmlns:xsi'] := 'http://www.w3.org/2001/XMLSchema-instance';
  aNode.attribute['xmlns:xsd'] := 'http://www.w3.org/2001/XMLSchema';
  aNode.attribute['xmlns']     := 'http://lote.homologacaoticketfrete.com.br/CDN/fretelote/schemas/SchemaAutonomo_1.0.xsd';
  aNode.attribute['xmlns:c']   := 'http://lote.homologacaoticketfrete.com.br/CDN/fretelote/schemas/SchemaComum_1.2.xsd';


  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "Autonomo" is tManagedStringlist
  // but of simple elements
  if Assigned(FAutonomo) then
    for i:=0 to FAutonomo.Count - 1 do
    begin
      if  ( FAutonomo.Objects[i] is tAutonomoPF) then
      begin
        xn := aNode.addChildByName(nsName(_NameSpaceAlias, snLoteDeAutonomos_Autonomo));
        xn.attribute['xsi:type']:=snLoteDeAutonomos_AutonomoPF;
        tAutonomoPF(FAutonomo.Objects[i]).Save( xn )
      end
      else if (FAutonomo.Objects[i] is tAutonomoPJ) then
      begin
        xn := aNode.addChildByName(nsName(_NameSpaceAlias, snLoteDeAutonomos_Autonomo));
        xn.attribute['xsi:type']:=snLoteDeAutonomos_AutonomoPJ;
        tAutonomoPJ(FAutonomo.Objects[i]).Save( xn )
      end
      else
      begin
        xn := aNode.addChildByName(nsName(_NameSpaceAlias, snLoteDeAutonomos_Autonomo));
        tAutonomo(FAutonomo.Objects[i]).Save( xn );
      end;


    end; // for i:=0 to ...
end; // procedure save

function tLoteDeAutonomos.GetAsString: string;
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
