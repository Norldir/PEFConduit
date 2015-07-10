unit utck_AberturaContrato_v1_00;

Interface
uses
  Classes,
  JanXMLParser2,
  uXMLTools;

// targetNameSpace: http://localhost/TicketFreteCDN/fretelote/schemas/SchemaFrete_1.1.xsd
// NameSpacePrefix: mstns
// Date of Schema : 25/04/2012 10:30:02
// Translationdate: 25/04/2012 10:30:09
//
//   includes xs=http://www.w3.org/2001/XMLSchema

// ordinal types
type
  tCodigoSubNatureza = string;
  tPeso = extended;
  tCEP = string;
  tTipoValePedagio = string;
  tFormaDePagamento = string;
  tTipoPessoa = string;
  tCiot = string;
  tDocumento = string;

// constants for enumerations
const
  cTipoValePedagio_Cartao = 'Cartao';
  cTipoValePedagio_Vale = 'Vale';
  cTipoValePedagio_TAG = 'TAG';
  cFormaDePagamento_TransferenciaBancaria = 'TransferenciaBancaria';
  cFormaDePagamento_CartaoAVista = 'CartaoAVista';
  cFormaDePagamento_CartaoParcelado = 'CartaoParcelado';
  cTipoPessoa_Juridica = 'Juridica';
  cTipoPessoa_Fisica = 'Fisica';

const
  snParcela = 'Parcela';
  snParcela_Vencimento = 'Vencimento';
  snParcela_ValorParcela = 'ValorParcela';

type
  tParcela = class
  private
    F_NameSpaceAlias: string;
    FVencimento: tDateTime; // (E)
    FValorParcela: extended; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Vencimento: tDateTime read FVencimento write FVencimento;
    property ValorParcela: extended read FValorParcela write FValorParcela;
  end;

const
  snParcelas = 'Parcelas';
  snParcelas_Parcela = 'Parcela';

type
  tParcelas = class
  private
    F_NameSpaceAlias: string;
    FParcela: tManagedStringList; // of tParcela(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Parcela: tManagedStringList read FParcela write FParcela; // of tParcela
  end;

const
  snPagamento = 'Pagamento';
  snPagamento_FormaDePagamento = 'FormaDePagamento';
  snPagamento_Parcelas = 'Parcelas';

type
  tPagamento = class
  private
    F_NameSpaceAlias: string;
    FFormaDePagamento: string; // (E)
    FParcelas: tParcelas; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property FormaDePagamento: string read FFormaDePagamento write FFormaDePagamento;
    property Parcelas: tParcelas read FParcelas write FParcelas;
  end;

const
  snValores = 'Valores';
  snValores_TipoValePedagio = 'TipoValePedagio';
  snValores_Pedagio = 'Pedagio';
  snValores_Frete = 'Frete';
  snValores_Combustivel = 'Combustivel';
  snValores_Despesas = 'Despesas';
  snValores_Impostos = 'Impostos';

type
  tValores = class
  private
    F_NameSpaceAlias: string;
    FTipoValePedagio: string; // (E)
    FPedagio: extended; // (E)
    FFrete: extended; // (E)
    FCombustivel: extended; // (E)
    FDespesas: extended; // (E)
    FImpostos: extended; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property TipoValePedagio: string read FTipoValePedagio write FTipoValePedagio;
    property Pedagio: extended read FPedagio write FPedagio;
    property Frete: extended read FFrete write FFrete;
    property Combustivel: extended read FCombustivel write FCombustivel;
    property Despesas: extended read FDespesas write FDespesas;
    property Impostos: extended read FImpostos write FImpostos;
  end;

const
  snVeiculo = 'Veiculo';
  snVeiculo_Placa = 'Placa';
  snVeiculo_Rntrc = 'Rntrc';
  snVeiculo_Documento = 'Documento';

type
  tVeiculo = class
  private
    F_NameSpaceAlias: string;
    FPlaca: string; // (E)
    FRntrc: string; // (E)
    FDocumento: string; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Placa: string read FPlaca write FPlaca;
    property Rntrc: string read FRntrc write FRntrc;
    property Documento: string read FDocumento write FDocumento;
  end;

const
  snEndereco = 'Endereco';
  snEndereco_CEP = 'CEP';
  snEndereco_CodigoCidade = 'CodigoCidade';
  snEndereco_Logradouro = 'Logradouro';
  snEndereco_Numero = 'Numero';
  snEndereco_Complemento = 'Complemento';
  snEndereco_Bairro = 'Bairro';

type
  tEndereco = class
  private
    F_NameSpaceAlias: string;
    FCEP: string; // (E)
    FCodigoCidade: string; // (E)
    FLogradouro: string; // (E)
    FNumero: string; // (E)
    FComplemento: string; // (E)
    FBairro: string; // (E)
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
    property Complemento: string read FComplemento write FComplemento;
    property Bairro: string read FBairro write FBairro;
  end;

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
    FTipoPessoa: string; // (E)
    FDocumento: string; // (E)
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
    property TipoPessoa: string read FTipoPessoa write FTipoPessoa;
    property Documento: string read FDocumento write FDocumento;
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
    FTipoPessoa: string; // (E)
    FDocumento: string; // (E)
    FNomeRazaoSocial: string; // (E)
    FSobrenomeNomeFantasia: string; // (E)
    FEndereco: tEndereco; // (E)
    FTelefone: string; // (E)
    FEmail: string; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property TipoPessoa: string read FTipoPessoa write FTipoPessoa;
    property Documento: string read FDocumento write FDocumento;
    property NomeRazaoSocial: string read FNomeRazaoSocial write FNomeRazaoSocial;
    property SobrenomeNomeFantasia: string read FSobrenomeNomeFantasia write FSobrenomeNomeFantasia;
    property Endereco: tEndereco read FEndereco write FEndereco;
    property Telefone: string read FTelefone write FTelefone;
    property Email: string read FEmail write FEmail;
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
    FTipoPessoa: string; // (E)
    FDocumento: string; // (E)
    FNomeRazaoSocial: string; // (E)
    FSobrenomeNomeFantasia: string; // (E)
    FEndereco: tEndereco; // (E)
    FSubcontratante: boolean; // (E)
    FCiotPrincipal: string; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property TipoPessoa: string read FTipoPessoa write FTipoPessoa;
    property Documento: string read FDocumento write FDocumento;
    property NomeRazaoSocial: string read FNomeRazaoSocial write FNomeRazaoSocial;
    property SobrenomeNomeFantasia: string read FSobrenomeNomeFantasia write FSobrenomeNomeFantasia;
    property Endereco: tEndereco read FEndereco write FEndereco;
    property Subcontratante: boolean read FSubcontratante write FSubcontratante;
    property CiotPrincipal: string read FCiotPrincipal write FCiotPrincipal;
  end;

const
  snAutonomo = 'Autonomo';
  snAutonomo_Documento = 'Documento';

type
  tAutonomo = class
  private
    F_NameSpaceAlias: string;
    FDocumento: string; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Documento: string read FDocumento write FDocumento;
  end;

const
  snMercadoria = 'Mercadoria';
  snMercadoria_CodigoSubNatureza = 'CodigoSubNatureza';
  snMercadoria_Peso = 'Peso';

type
  tMercadoria = class
  private
    F_NameSpaceAlias: string;
    FCodigoSubNatureza: string; // (E)
    FPeso: extended; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CodigoSubNatureza: string read FCodigoSubNatureza write FCodigoSubNatureza;
    property Peso: extended read FPeso write FPeso;
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
  snFrete = 'Frete';
  snFrete_Descricao = 'Descricao';
  snFrete_CodigoCidadeOrigem = 'CodigoCidadeOrigem';
  snFrete_CodigoCidadeDestino = 'CodigoCidadeDestino';
  snFrete_DataInicio = 'DataInicio';
  snFrete_DataTermino = 'DataTermino';
  snFrete_DadosComplementares = 'DadosComplementares';
  snFrete_Mercadoria = 'Mercadoria';
  snFrete_Autonomo = 'Autonomo';
  snFrete_Veiculos = 'Veiculos';
  snFrete_Valores = 'Valores';
  snFrete_Pagamento = 'Pagamento';
  snFrete_Contratante = 'Contratante';
  snFrete_Destinatario = 'Destinatario';
  snFrete_Consignatario = 'Consignatario';
  snFrete_RegrasQuitacao = 'RegrasQuitacao';
  anFrete_referencia = 'referencia';

type
  tFrete = class
  private
    F_NameSpaceAlias: string;
    FDescricao: string; // (E)
    FCodigoCidadeOrigem: string; // (E)
    FCodigoCidadeDestino: string; // (E)
    FDataInicio: tDateTime; // (E)
    FDataTermino: tDateTime; // (E)
    FDadosComplementares: string; // (E)
    FMercadoria: tMercadoria; // (E)
    FAutonomo: tAutonomo; // (E)
    FVeiculos: tVeiculos; // (E)
    FValores: tValores; // (E)
    FPagamento: tPagamento; // (E)
    FContratante: tContratante; // (E)
    FDestinatario: tDestinatario; // (E)
    FConsignatario: tConsignatario; // (E)
    FRegrasQuitacao: string; // (E)
    Freferencia: string; // (A)
    Freferencia_IsSet_: boolean;
    procedure Setreferencia(value:string);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Descricao: string read FDescricao write FDescricao;
    property CodigoCidadeOrigem: string read FCodigoCidadeOrigem write FCodigoCidadeOrigem;
    property CodigoCidadeDestino: string read FCodigoCidadeDestino write FCodigoCidadeDestino;
    property DataInicio: tDateTime read FDataInicio write FDataInicio;
    property DataTermino: tDateTime read FDataTermino write FDataTermino;
    property DadosComplementares: string read FDadosComplementares write FDadosComplementares;
    property Mercadoria: tMercadoria read FMercadoria write FMercadoria;
    property Autonomo: tAutonomo read FAutonomo write FAutonomo;
    property Veiculos: tVeiculos read FVeiculos write FVeiculos;
    property Valores: tValores read FValores write FValores;
    property Pagamento: tPagamento read FPagamento write FPagamento;
    property Contratante: tContratante read FContratante write FContratante;
    property Destinatario: tDestinatario read FDestinatario write FDestinatario;
    property Consignatario: tConsignatario read FConsignatario write FConsignatario;
    property RegrasQuitacao: string read FRegrasQuitacao write FRegrasQuitacao;
    property referencia: string read Freferencia write Setreferencia;
    property referencia_IsSet_:boolean read Freferencia_IsSet_;
  end;

const
  snLoteDeFretes = 'LoteDeFretes';
  snLoteDeFretes_Frete = 'Frete';

type
  tLoteDeFretes = class
  private
    F_NameSpaceAlias: string;
    FFrete: tManagedStringList; // of tFrete(E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    function GetAsString : string;
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Frete: tManagedStringList read FFrete write FFrete; // of tFrete
  end;

const
  snCriar_token = 'token';
  snCriar_LoteDeFretes = 'lote';

type
  tCriar = class
  private
    F_NameSpaceAlias: string;
    FToken: string;
    FLote: tLoteDeFretes;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    function GetAsString : string;
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property token: string read FToken write FToken;
    property Lote: tLoteDeFretes read FLote write Flote;
  end;

implementation
uses
  SysUtils,
  mylib;

const
  thisNamespaceURI = 'http://localhost/TicketFreteCDN/fretelote/schemas/SchemaFrete_1.1.xsd';
  defNamespaceAlias = ''; // 'mstns;

{ tParcela }

class function tParcela._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tParcela.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tParcela.Create(aRoot:tJanXMLNode2);
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
    if (sn = snParcela_Vencimento) then
      Vencimento := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snParcela_ValorParcela) then
      ValorParcela := DefStrToFloat(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tParcela.Destroy;
begin
  inherited;
end; // destructor ...

procedure tParcela.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  //i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Parcela')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snParcela_Vencimento));
  xn.text := DateTimeToXMLDateTime(FVencimento);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snParcela_ValorParcela));
  xn.text := MyFloatToStr(FValorParcela);
end; // procedure save

{ tParcelas }

class function tParcelas._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tParcelas.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FParcela := tManagedStringlist.Create;
end; // constructor ...

constructor tParcelas.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  //i: integer;
  thisURI: string;
  aParcela: tParcela;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snParcelas_Parcela)
      and ((thisURI='') or (tParcela._nsURI_ = thisURI)) then
    begin
      aParcela := tParcela.Create( xn );
      FParcela.AddObject('?', aParcela);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tParcelas.Destroy;
begin
  FParcela.Free;
  inherited;
end; // destructor ...

procedure tParcelas.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Parcelas')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "Parcela" is tManagedStringlist
  if Assigned(FParcela) then
    for i:=0 to FParcela.Count - 1 do
    begin
      xn := aNode.addChildByName(nsName(_NameSpaceAlias, snParcelas_Parcela));
      tParcela(FParcela.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tPagamento }

class function tPagamento._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tPagamento.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FParcelas:= tParcelas.Create;
end; // constructor ...

constructor tPagamento.Create(aRoot:tJanXMLNode2);
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
    if (sn = snPagamento_FormaDePagamento) then
      FormaDePagamento :=  xn.text // string
    else if (sn = snPagamento_Parcelas)
      and ((thisURI='') or (tParcelas._nsURI_ = thisURI)) then
      FParcelas := tParcelas.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tPagamento.Destroy;
begin
  FParcelas.Free;
  inherited;
end; // destructor ...

procedure tPagamento.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  //i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Pagamento')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snPagamento_FormaDePagamento));
  xn.text := FFormaDePagamento;
  if Assigned(FParcelas) then
  begin
    xn := aNode.addChildByName(snPagamento_Parcelas);
    FParcelas.Save(xn);
  end;
end; // procedure save

{ tValores }

class function tValores._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tValores.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tValores.Create(aRoot:tJanXMLNode2);
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
    if (sn = snValores_TipoValePedagio) then
      TipoValePedagio :=  xn.text // string
    else if (sn = snValores_Pedagio) then
      Pedagio := DefStrToFloat(xn.text, 0)
    else if (sn = snValores_Frete) then
      Frete := DefStrToFloat(xn.text, 0)
    else if (sn = snValores_Combustivel) then
      Combustivel := DefStrToFloat(xn.text, 0)
    else if (sn = snValores_Despesas) then
      Despesas := DefStrToFloat(xn.text, 0)
    else if (sn = snValores_Impostos) then
      Impostos := DefStrToFloat(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tValores.Destroy;
begin
  inherited;
end; // destructor ...

procedure tValores.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  //i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Valores')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValores_TipoValePedagio));
  xn.text := FTipoValePedagio;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValores_Pedagio));
  xn.text := MyFloatToStr(FPedagio);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValores_Frete));
  xn.text := MyFloatToStr(FFrete);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValores_Combustivel));
  xn.text := MyFloatToStr(FCombustivel);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValores_Despesas));
  xn.text := MyFloatToStr(FDespesas);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValores_Impostos));
  xn.text := MyFloatToStr(FImpostos);
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
  //i: integer;
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
  //i: integer;
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
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snVeiculo_Rntrc));
  xn.text := FRntrc;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snVeiculo_Documento));
  xn.text := FDocumento;
end; // procedure save

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
  //i: integer;
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

procedure tEndereco.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  //i: integer;
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
  xn.text := CodigoCidade;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEndereco_Logradouro));
  xn.text := FLogradouro;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEndereco_Numero));
  xn.text := FNumero;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEndereco_Complemento));
  xn.text := FComplemento;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snEndereco_Bairro));
  xn.text := FBairro;
end; // procedure save

{ tConsignatario }

class function tConsignatario._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tConsignatario.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FEndereco:= tEndereco.create;
end; // constructor ...

constructor tConsignatario.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  //i: integer;
  thisURI: string;
begin
  create;
  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snConsignatario_TipoPessoa) then
      TipoPessoa :=  xn.text // string
    else if (sn = snConsignatario_Documento) then
      Documento :=  xn.text // string
    else if (sn = snConsignatario_NomeRazaoSocial) then
      NomeRazaoSocial :=  xn.text // string
    else if (sn = snConsignatario_SobrenomeNomeFantasia) then
      SobrenomeNomeFantasia :=  xn.text // string
    else if (sn = snConsignatario_Endereco) then
      FEndereco := tEndereco.Create(xn)
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
  FEndereco.free;
  inherited;
end; // destructor ...

procedure tConsignatario.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  //i: integer;
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
  if Assigned(FEndereco) then
  begin
    xn := aNode.addChildByName(snConsignatario_Endereco);
    FEndereco.Save(xn);
  end;
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
  FEndereco:= tEndereco.Create;
end; // constructor ...

constructor tDestinatario.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  //i: integer;
  thisURI: string;
begin
  create;
  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snDestinatario_TipoPessoa) then
      TipoPessoa :=  xn.text // string
    else if (sn = snDestinatario_Documento) then
      Documento :=  xn.text // string
    else if (sn = snDestinatario_NomeRazaoSocial) then
      NomeRazaoSocial :=  xn.text // string
    else if (sn = snDestinatario_SobrenomeNomeFantasia) then
      SobrenomeNomeFantasia :=  xn.text // string
    else if (sn = snDestinatario_Endereco) then
      FEndereco := tEndereco.Create(xn)
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
  FEndereco.Free;
  inherited;
end; // destructor ...

procedure tDestinatario.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  //i: integer;
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
  if Assigned(FEndereco) then
  begin
    xn := aNode.addChildByName(snDestinatario_Endereco);
    FEndereco.Save(xn);
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDestinatario_Telefone));
  xn.text := FTelefone;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snDestinatario_Email));
  xn.text := FEmail;
end; // procedure save

{ tContratante }

class function tContratante._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tContratante.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FEndereco:= tEndereco.Create;
end; // constructor ...

constructor tContratante.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  //i: integer;
  thisURI: string;
begin
  create;
  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snContratante_TipoPessoa) then
      TipoPessoa :=  xn.text // string
    else if (sn = snContratante_Documento) then
      Documento :=  xn.text // string
    else if (sn = snContratante_NomeRazaoSocial) then
      NomeRazaoSocial :=  xn.text // string
    else if (sn = snContratante_SobrenomeNomeFantasia) then
      SobrenomeNomeFantasia :=  xn.text // string
    else if (sn = snContratante_Endereco) then
      FEndereco := tEndereco.Create(xn)
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
  FEndereco.Free;
  inherited;

end; // destructor ...

procedure tContratante.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  //i: integer;
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
  if Assigned(FEndereco) then
  begin
    xn := aNode.addChildByName(snContratante_Endereco);
    FEndereco.Save(xn);
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snContratante_Subcontratante));
  xn.text := BoolToStr(FSubcontratante);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snContratante_CiotPrincipal));
  xn.text := FCiotPrincipal;
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
  //i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snAutonomo_Documento) then
      Documento :=  xn.text // string
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
  //i: integer;
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

{ tMercadoria }

class function tMercadoria._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tMercadoria.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tMercadoria.Create(aRoot:tJanXMLNode2);
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
    if (sn = snMercadoria_CodigoSubNatureza) then
      CodigoSubNatureza :=  xn.text // string
    else if (sn = snMercadoria_Peso) then
      Peso := DefStrToFloat(xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tMercadoria.Destroy;
begin
  inherited;
end; // destructor ...

procedure tMercadoria.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  //i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Mercadoria')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snMercadoria_CodigoSubNatureza));
  xn.text := FCodigoSubNatureza;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snMercadoria_Peso));
  xn.text := MyFloatToStr(FPeso);
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
  //i: integer;
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
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snVeiculos_Veiculo));
    for i:=0 to FVeiculo.Count - 1 do
    begin
      tVeiculo( FVeiculo.Objects[i] ).Save( xn );
    end; // for i:=0 to ...
  end;
end; // procedure save

{ tFrete }

class function tFrete._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tFrete.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FMercadoria    := tMercadoria.Create;
  FAutonomo      := tAutonomo.Create;
  FVeiculos      := tVeiculos.Create;
  FValores       := tValores.Create;
  FPagamento     := tPagamento.Create;
  FContratante   := tContratante.Create;
  FDestinatario  := tDestinatario.Create;
  FConsignatario := tConsignatario.Create;
end; // constructor ...

constructor tFrete.Create(aRoot:tJanXMLNode2);
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
    if sn = anFrete_referencia then
      referencia := aRoot.attribute[i]; // string
  end;

  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snFrete_Descricao) then
      Descricao :=  xn.text // string
    else if (sn = snFrete_CodigoCidadeOrigem) then
      CodigoCidadeOrigem := xn.text
    else if (sn = snFrete_CodigoCidadeDestino) then
      CodigoCidadeDestino := xn.text
    else if (sn = snFrete_DataInicio) then
      DataInicio := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snFrete_DataTermino) then
      DataTermino := DateTimeFromXMLDateTime(xn.text) // tDateTime
    else if (sn = snFrete_DadosComplementares) then
      DadosComplementares :=  xn.text // string
    else if (sn = snFrete_Mercadoria) then
      FMercadoria := tMercadoria.Create(xn)
    else if (sn = snFrete_Autonomo) then
      FAutonomo := tAutonomo.Create(xn)
    else if (sn = snFrete_Veiculos)
      and ((thisURI='') or (tVeiculos._nsURI_ = thisURI)) then
      FVeiculos := tVeiculos.Create(xn)
    else if (sn = snFrete_Valores) then
      FValores := tValores.Create(xn)
    else if (sn = snFrete_Pagamento) then
      FPagamento := tPagamento.Create(xn)
    else if (sn = snFrete_Contratante) then
      FContratante := tContratante.Create(xn)
    else if (sn = snFrete_Destinatario) then
      FDestinatario := tDestinatario.Create(xn)
    else if (sn = snFrete_Consignatario) then
      FConsignatario := tConsignatario.Create(xn)
    else if (sn = snFrete_RegrasQuitacao) then
      RegrasQuitacao :=  xn.text // string
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tFrete.Destroy;
begin
  FVeiculos.Free;
  FMercadoria.Free;
  FAutonomo.Free;
  FValores.Free;
  FPagamento.Free;
  FContratante.Free;
  FDestinatario.Free;
  if Assigned(FConsignatario) then FConsignatario.Free;
  inherited;
end; // destructor ...

procedure tFrete.Setreferencia(value:string);
begin
  Freferencia := value;
  Freferencia_IsSet_ := true;
end;

procedure tFrete.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  //i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Frete')
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
    aNode.attribute[anFrete_referencia] := Freferencia;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snFrete_Descricao));
  xn.text := FDescricao;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snFrete_CodigoCidadeOrigem));
  xn.text := FCodigoCidadeOrigem;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snFrete_CodigoCidadeDestino));
  xn.text := FCodigoCidadeDestino;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snFrete_DataInicio));
  xn.text := DateTimeToXMLDateTime(FDataInicio);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snFrete_DataTermino));
  xn.text := DateTimeToXMLDateTime(FDataTermino);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snFrete_DadosComplementares));
  xn.text := FDadosComplementares;
  if Assigned(FMercadoria) then
  begin
    xn := aNode.addChildByName(snFrete_Mercadoria);
    FMercadoria.Save(xn);
  end;
  if Assigned(FAutonomo) then
  begin
    xn := aNode.addChildByName(snFrete_Autonomo);
    FAutonomo.Save(xn);
  end;
  if Assigned(FVeiculos) then
  begin
    xn := aNode.addChildByName(snFrete_Veiculos);
    FVeiculos.Save(xn);
  end;
  if Assigned(FValores) then
  begin
    xn := aNode.addChildByName(snFrete_Valores);
    FValores.Save(xn);
  end;
  if Assigned(FPagamento) then
  begin
    xn := aNode.addChildByName(snFrete_Pagamento);
    FPagamento.Save(xn);
  end;
  if Assigned(FContratante) then
  begin
    xn := aNode.addChildByName(snFrete_Contratante);
    FContratante.Save(xn);
  end;
  if Assigned(FDestinatario) then
  begin
    xn := aNode.addChildByName(snFrete_Destinatario);
    FDestinatario.Save(xn);
  end;
  if Assigned(FConsignatario) then
  begin
    xn := aNode.addChildByName(snFrete_Consignatario);
    FConsignatario.Save(xn);
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snFrete_RegrasQuitacao));
  xn.text := FRegrasQuitacao;
end; // procedure save

{ tLoteDeFretes }

class function tLoteDeFretes._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tLoteDeFretes.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FFrete := tManagedStringlist.Create;
end; // constructor ...

constructor tLoteDeFretes.Create(aRoot:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  //i: integer;
  thisURI: string;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snLoteDeFretes_Frete) then
    begin
      // list of simple type
      FFrete.Add(xn.text);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tLoteDeFretes.Destroy;
begin
  FFrete.Free;
  inherited;
end; // destructor ...

procedure tLoteDeFretes.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
  i: integer;
  aFretes : tFrete;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'LoteDeFretes')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  aNode.attribute['xmlns'] := 'http://lote.homologacaoticketfrete.com.br/CDN/fretelote/schemas/SchemaFrete_1.1.xsd';
  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  // element "Frete" is tManagedStringlist
  // but of simple elements
  if Assigned(FFrete) then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snLoteDeFretes_Frete));
    for i:=0 to FFrete.Count - 1 do
    begin
      aFretes := TFrete( FFrete.Objects[i] );
      aFretes.Save( xn );
    end; // for i:=0 to ...
  end;
end; // procedure save

function tLoteDeFretes.GetAsString: string;
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

{ tCriar }

class function tCriar._nsURI_: string;
begin
  result := thisNameSpaceURI;
end;

constructor tCriar.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
  FLote := tLoteDeFretes.Create;
end;

constructor tCriar.Create(aRoot: tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  //i: integer;
  thisURI: string;
begin
  Create;

  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;

    if (sn = snCriar_token) then
       token := xn.text
    else
    if (sn = snCriar_LoteDeFretes) then
    begin
      // list of simple type
      FLote := tLoteDeFretes.Create(xn);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tCriar.Destroy;
begin
  FLote.Free;
  inherited;
end;

function tCriar.GetAsString: string;
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

procedure tCriar.Save(aNode: tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Criar')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snCriar_token));
  xn.text := FToken;

  if Assigned(FLote) then
  begin
    xn := aNode.addChildByName(snCriar_LoteDeFretes);
    FLote.Save(xn);
  end;
end; // procedure save

end.
