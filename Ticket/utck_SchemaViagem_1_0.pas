unit utck_SchemaViagem_1_0;

Interface
uses
  Classes,
  JanXMLParser2,
  utck_SchemaComum_1_0,
  uXMLTools;

// targetNameSpace: http://lote.homologacaoticketfrete.com.br/CDN/fretelote/schemas/SchemaViagem_1.0.xsd
// NameSpacePrefix: mstns
// Date of Schema : 02/07/2012 11:38:52
// Translationdate: 02/07/2012 11:48:08
//
//   includes c=http://lote.homologacaoticketfrete.com.br/CDN/fretelote/schemas/SchemaComum_1.0.xsd in 'SchemaComum_1.0.pas'
//   includes xs=http://www.w3.org/2001/XMLSchema

// ordinal types
type
  tCodigoSubNatureza = string;
  tPeso = extended;
  tFormaDePagamento = string;

// constants for enumerations
const
  cFormaDePagamento_TransferenciaBancaria = 'TransferenciaBancaria';
  cFormaDePagamento_CartaoAVista = 'CartaoAVista';
  cFormaDePagamento_CartaoParcelado = 'CartaoParcelado';

const
  snParcela = 'v:Parcela';
  snParcela_Vencimento = 'v:Vencimento';
  snParcela_ValorParcela = 'v:ValorParcela';

type
  tParcela = class
  private
    F_NameSpaceAlias: string;
    FVencimento: tDateTime; // (E)
    FValorParcela: tDecimalValido; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Vencimento: tDateTime read FVencimento write FVencimento;
    property ValorParcela: tDecimalValido read FValorParcela write FValorParcela;
  end;

const
  snParcelas = 'v:Parcelas';
  snParcelas_Parcela = 'v:Parcela';

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
  snPagamento = 'v:Pagamento';
  snPagamento_FormaDePagamento = 'v:FormaDePagamento';
  snPagamento_Parcelas = 'v:Parcelas';

type
  tPagamento = class
  private
    F_NameSpaceAlias: string;
    FFormaDePagamento: string; // (E)
    FParcelas: tParcelas; // (E)
    FParcelas_IsSet_: boolean;
    procedure SetParcelas(value:tParcelas);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property FormaDePagamento: string read FFormaDePagamento write FFormaDePagamento;
    property Parcelas: tParcelas read FParcelas write SetParcelas;
    property Parcelas_IsSet_:boolean read FParcelas_IsSet_;
  end;

const
  snValoresImpostos = 'v:ValoresImpostos';
  snValoresImpostos_IR = 'v:IR';
  snValoresImpostos_INSS = 'v:INSS';
  snValoresImpostos_ICMS = 'v:ICMS';
  snValoresImpostos_ISSQN = 'v:ISSQN';
  snValoresImpostos_SESTSENAT = 'v:SESTSENAT';

type
  tValoresImpostos = class
  private
    F_NameSpaceAlias: string;
    FIR: tDecimalValido; // (E)
    FINSS: tDecimalValido; // (E)
    FICMS: tDecimalValido; // (E)
    FISSQN: tDecimalValido; // (E)
    FSESTSENAT: tDecimalValido; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property IR: tDecimalValido read FIR write FIR;
    property INSS: tDecimalValido read FINSS write FINSS;
    property ICMS: tDecimalValido read FICMS write FICMS;
    property ISSQN: tDecimalValido read FISSQN write FISSQN;
    property SESTSENAT: tDecimalValido read FSESTSENAT write FSESTSENAT;
  end;

const
  snValores = 'v:Valores';
  snValores_Pedagio = 'v:Pedagio';
  snValores_Frete = 'v:Frete';
  snValores_Combustivel = 'v:Combustivel';
  snValores_Despesas = 'v:Despesas';
  snValores_ValoresImpostos = 'v:ValoresImpostos';

type
  tValores = class
  private
    F_NameSpaceAlias: string;
    FPedagio: tDecimalValido; // (E)
    FPedagio_IsSet_: boolean;
    FFrete: tDecimalValido; // (E)
    FCombustivel: tDecimalValido; // (E)
    FCombustivel_IsSet_: boolean;
    FDespesas: tDecimalValido; // (E)
    FDespesas_IsSet_: boolean;
    FValoresImpostos: tValoresImpostos; // (E)
    procedure SetPedagio(value:tDecimalValido);
    procedure SetCombustivel(value:tDecimalValido);
    procedure SetDespesas(value:tDecimalValido);
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property Pedagio: tDecimalValido read FPedagio write SetPedagio;
    property Pedagio_IsSet_:boolean read FPedagio_IsSet_;
    property Frete: tDecimalValido read FFrete write FFrete;
    property Combustivel: tDecimalValido read FCombustivel write SetCombustivel;
    property Combustivel_IsSet_:boolean read FCombustivel_IsSet_;
    property Despesas: tDecimalValido read FDespesas write SetDespesas;
    property Despesas_IsSet_:boolean read FDespesas_IsSet_;
    property ValoresImpostos: tValoresImpostos read FValoresImpostos write FValoresImpostos;
  end;

const
  snMercadoria = 'v:Mercadoria';
  snMercadoria_CodigoSubNatureza = 'v:CodigoSubNatureza';
  snMercadoria_Peso = 'v:Peso';

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
  snVeiculos = 'v:Veiculos';
  snVeiculos_Veiculo = 'v:Veiculo';

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
  snViagem = 'v:Viagem';
  snViagem_CodigoCidadeOrigem = 'v:CodigoCidadeOrigem';
  snViagem_CodigoCidadeDestino = 'v:CodigoCidadeDestino';
  snViagem_Mercadoria = 'v:Mercadoria';
  snViagem_Veiculos = 'v:Veiculos';
  snViagem_Valores = 'v:Valores';
  snViagem_Pagamento = 'v:Pagamento';

type
  tViagem = class
  private
    F_NameSpaceAlias: string;
    FCodigoCidadeOrigem: integer; // (E)
    FCodigoCidadeDestino: integer; // (E)
    FMercadoria: tMercadoria; // (E)
    FVeiculos: tVeiculos; // (E)
    FValores: tValores; // (E)
    FPagamento: tPagamento; // (E)
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property CodigoCidadeOrigem: integer read FCodigoCidadeOrigem write FCodigoCidadeOrigem;
    property CodigoCidadeDestino: integer read FCodigoCidadeDestino write FCodigoCidadeDestino;
    property Mercadoria: tMercadoria read FMercadoria write FMercadoria;
    property Veiculos: tVeiculos read FVeiculos write FVeiculos;
    property Valores: tValores read FValores write FValores;
    property Pagamento: tPagamento read FPagamento write FPagamento;
  end;

implementation
uses
  SysUtils,
  mylib;

const
  thisNamespaceURI = 'http://lote.homologacaoticketfrete.com.br/CDN/fretelote/schemas/SchemaViagem_1.0.xsd';
  defNamespaceAlias = '';

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
//  i: integer;
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
      ValorParcela :=  DefStrToFloat(xn.text,0) // tDecimalValido
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
//  i: integer;
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
  xn.text := MyFloatToStr( FValorParcela );
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
//  i: integer;
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
      aParcela := tParcela.Create(xn);
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
end; // constructor ...

constructor tPagamento.Create(aRoot:tJanXMLNode2);
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

procedure tPagamento.SetParcelas(value:tParcelas);
begin
  FParcelas := value;
  FParcelas_IsSet_ := true;
end;

procedure tPagamento.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
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

{ tValoresImpostos }

class function tValoresImpostos._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tValoresImpostos.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tValoresImpostos.Create(aRoot:tJanXMLNode2);
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
    if (sn = snValoresImpostos_IR) then
      IR := DefStrToFloat( xn.text, 0) // tDecimalValido
    else if (sn = snValoresImpostos_INSS) then
      INSS :=  DefStrToFloat(xn.text,0) // tDecimalValido
    else if (sn = snValoresImpostos_ICMS) then
      ICMS :=  DefStrToFloat(xn.text,0) // tDecimalValido
    else if (sn = snValoresImpostos_ISSQN) then
      ISSQN :=  DefStrToFloat(xn.text,0) // tDecimalValido
    else if (sn = snValoresImpostos_SESTSENAT) then
      SESTSENAT :=  DefStrToFloat(xn.text,0) // tDecimalValido
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tValoresImpostos.Destroy;
begin
  inherited;
end; // destructor ...

procedure tValoresImpostos.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'ValoresImpostos')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValoresImpostos_IR));
  xn.text := MyFloatToStr( FIR );
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValoresImpostos_INSS));
  xn.text := MyFloatToStr(FINSS );
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValoresImpostos_ICMS));
  xn.text := MyFloatToStr(FICMS);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValoresImpostos_ISSQN));
  xn.text := MyFloatToStr(FISSQN);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValoresImpostos_SESTSENAT));
  xn.text := MyFloatToStr(FSESTSENAT);
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
//  i: integer;
  thisURI: string;
begin
  F_NameSpaceAlias := aRoot.NameSpace;
  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snValores_Pedagio) then
      Pedagio := DefStrToFloat( xn.text,0 ) // tDecimalValido
    else if (sn = snValores_Frete) then
      Frete :=  DefStrToFloat(xn.text,0) // tDecimalValido
    else if (sn = snValores_Combustivel) then
      Combustivel :=  DefStrToFloat(xn.text,0) // tDecimalValido
    else if (sn = snValores_Despesas) then
      Despesas :=  DefStrToFloat(xn.text,0) // tDecimalValido
    else if (sn = snValores_ValoresImpostos) then
      FValoresImpostos := tValoresImpostos.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tValores.Destroy;
begin
  inherited;
end; // destructor ...

procedure tValores.SetPedagio(value:tDecimalValido);
begin
  FPedagio := value;
  FPedagio_IsSet_ := true;
end;

procedure tValores.SetCombustivel(value:tDecimalValido);
begin
  FCombustivel := value;
  FCombustivel_IsSet_ := true;
end;

procedure tValores.SetDespesas(value:tDecimalValido);
begin
  FDespesas := value;
  FDespesas_IsSet_ := true;
end;

procedure tValores.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
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

  if Pedagio_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValores_Pedagio));
    xn.text := MyFloatToStr(FPedagio);
  end;
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValores_Frete));
  xn.text := MyFloatToStr(FFrete);
  if Combustivel_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValores_Combustivel));
    xn.text := MyFloatToStr(FCombustivel);
  end;
  if Despesas_IsSet_ then
  begin
    xn := aNode.addChildByName(nsName(_NameSpaceAlias, snValores_Despesas));
    xn.text := MyFloatToStr(FDespesas);
  end;
  if Assigned(FValoresImpostos) then
  begin
    xn := aNode.addChildByName(snValores_ValoresImpostos);
    FValoresImpostos.Save(xn);
  end;
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
//  i: integer;
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
//  i: integer;
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
      tVeiculo( FVeiculo.Objects[i]).Save(xn);
    end; // for i:=0 to ...
end; // procedure save

{ tViagem }

class function tViagem._nsURI_;
begin
  result := thisNameSpaceURI;
end; // class function _nsURI_

constructor tViagem.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end; // constructor ...

constructor tViagem.Create(aRoot:tJanXMLNode2);
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
    if (sn = snViagem_CodigoCidadeOrigem) then
      CodigoCidadeOrigem := StrToIntDef(xn.text, 0)
    else if (sn = snViagem_CodigoCidadeDestino) then
      CodigoCidadeDestino := StrToIntDef(xn.text, 0)
    else if (sn = snViagem_Mercadoria) then
      FMercadoria := tMercadoria.Create(xn)
    else if (sn = snViagem_Veiculos)
      and ((thisURI='') or (tVeiculos._nsURI_ = thisURI)) then
      FVeiculos := tVeiculos.Create(xn)
    else if (sn = snViagem_Valores) then
      FValores := tValores.Create(xn)
    else if (sn = snViagem_Pagamento) then
      FPagamento := tPagamento.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor tViagem.Destroy;
begin
  FVeiculos.Free;
  inherited;
end; // destructor ...

procedure tViagem.Save(aNode:tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'Viagem')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snViagem_CodigoCidadeOrigem));
  xn.text := IntToStr(FCodigoCidadeOrigem);
  xn := aNode.addChildByName(nsName(_NameSpaceAlias, snViagem_CodigoCidadeDestino));
  xn.text := IntToStr(FCodigoCidadeDestino);
  if Assigned(FMercadoria) then
  begin
    xn := aNode.addChildByName(snViagem_Mercadoria);
    FMercadoria.Save(xn);
  end;
  if Assigned(FVeiculos) then
  begin
    xn := aNode.addChildByName(snViagem_Veiculos);
    FVeiculos.Save(xn);
  end;
  if Assigned(FValores) then
  begin
    xn := aNode.addChildByName(snViagem_Valores);
    FValores.Save(xn);
  end;
  if Assigned(FPagamento) then
  begin
    xn := aNode.addChildByName(snViagem_Pagamento);
    FPagamento.Save(xn);
  end;
end; // procedure save

end.
