unit urpm_jxml_ConsultaContrato_v1_00;

interface
uses
  Classes,
  JanXMLParser2,
  uXMLTools;

type
  TCupons = class
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
  end;

const
  snMovimento_movimento_codigo_cliente = 'movimento_codigo_cliente';
  snMovimento_valor = 'valor';
  snMovimento_data = 'data';

type
  TConsultaContratoMovimento = class
  private
    Fvalor: extended;
    Fmovimento_codigo_cliente: string;
    Fdata: TDateTime;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;

    property movimento_codigo_cliente : string read Fmovimento_codigo_cliente write Fmovimento_codigo_cliente;
    property valor : extended read Fvalor write Fvalor;
    property data : TDateTime read Fdata write Fdata;

  end;

const
  snMovimento = 'movimento';

type
  TConsultaContratoMovimentos = class
  private
    Fmovimento: tManagedStringList;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    property movimento : tManagedStringList read Fmovimento write Fmovimento;

  end;

const
  snprocesso_transporteResponse = 'processo_transporteResponse';
  snprocesso_transporte_codigo = 'processo_transporte_codigo';
  snprocesso_transporte_codigo_cliente = 'processo_transporte_codigo_cliente';
  snprocesso_cliente_filial_codigo_cliente = 'processo_cliente_filial_codigo_cliente';
  snstatus_codigo = 'status_codigo';
  snstatus_descricao = 'status_descricao';
  sndata_quitacao = 'data_quitacao';
  snvalor_pedagio = 'valor_pedagio';
  snstatus_pedagio_codigo = 'status_pedagio_codigo';
  snstatus_pedagio_descricao = 'status_pedagio_descricao';
  sndata_carregamento_pedagio = 'data_carregamento_pedagio';
  snvalor_pedagio_descargas = 'valor_pedagio_descargas';
  snmovimentos = 'movimentos';
  sncupons = 'cupons';

type
  TConsultaContratoResponse = class
  private
    F_NameSpaceAlias: string;
    Fvalor_pedagio: extended;
    Fprocesso_cliente_filial_codigo_cliente: string;
    Fstatus_codigo: string;
    Fstatus_pedagio_descricao: string;
    Fstatus_pedagio_codigo: string;
    Fstatus_descricao: string;
    Fprocesso_transporte_codigo_cliente: string;
    Fvalor_pedagio_descargas: string;
    Fprocesso_transporte_codigo: string;
    Fcupons: TCupons;
    Fdata_quitacao: tdatetime;
    Fdata_carregamento_pedagio: TDateTime;
    Fmovimentos: TConsultaContratoMovimentos;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    class function CreateFromXmlString(s: string): TConsultaContratoResponse;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;

    property processo_transporte_codigo : string read Fprocesso_transporte_codigo write Fprocesso_transporte_codigo;
    property processo_transporte_codigo_cliente : string read Fprocesso_transporte_codigo_cliente write Fprocesso_transporte_codigo_cliente;
    property processo_cliente_filial_codigo_cliente : string read Fprocesso_cliente_filial_codigo_cliente write Fprocesso_cliente_filial_codigo_cliente;
    property status_codigo : string read Fstatus_codigo write Fstatus_codigo;
    property status_descricao : string read Fstatus_descricao write Fstatus_descricao;
    property data_quitacao : tdatetime read Fdata_quitacao write Fdata_quitacao;
    property valor_pedagio : extended read Fvalor_pedagio write Fvalor_pedagio;
    property status_pedagio_codigo : string read Fstatus_pedagio_codigo write Fstatus_pedagio_codigo;
    property status_pedagio_descricao : string read Fstatus_pedagio_descricao write Fstatus_pedagio_descricao;
    property data_carregamento_pedagio : TDateTime read Fdata_carregamento_pedagio write Fdata_carregamento_pedagio;
    property valor_pedagio_descargas : string read Fvalor_pedagio_descargas write Fvalor_pedagio_descargas;
    property movimentos : TConsultaContratoMovimentos read Fmovimentos write Fmovimentos;
    property cupons : TCupons read Fcupons write Fcupons;
  end;

implementation
uses
  SysUtils,
  mylib;

const
  thisNamespaceURI = 'http://www.repom.com.br/';
  defNamespaceAlias = '';

function myStrToFloat( value : string ) : extended;
var
  fs : TFormatSettings;
begin
  fs.DecimalSeparator := '.';
  fs.ThousandSeparator:= ',';
  value := StringReplace(value, ',', '', [rfReplaceAll]);
  result := StrToFloatDef( value , 0, fs );
end;

{ TConsultaContratoResponse }

class function TConsultaContratoResponse._nsURI_: string;
begin
  result := thisNameSpaceURI;
end;

constructor TConsultaContratoResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end;

constructor TConsultaContratoResponse.Create(aRoot: tJanXMLNode2);
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


    if sn = snprocesso_transporte_codigo then
       Fprocesso_transporte_codigo := xn.text
    else if sn = snprocesso_transporte_codigo_cliente then
       Fprocesso_transporte_codigo_cliente := xn.text
    else if sn = snprocesso_cliente_filial_codigo_cliente then
       Fprocesso_cliente_filial_codigo_cliente := xn.text
    else if sn = snstatus_codigo then
       Fstatus_codigo := xn.text
    else if sn = snstatus_descricao then
       Fstatus_descricao := xn.text
    else if sn = sndata_quitacao then
       Fdata_quitacao := StrToDateTimeDef( xn.text, 0)
    else if sn = snvalor_pedagio then
       Fvalor_pedagio := myStrToFloat( xn.text)
    else if sn = snstatus_pedagio_codigo then
       Fstatus_pedagio_codigo := xn.text
    else if sn = snstatus_pedagio_descricao then
       Fstatus_pedagio_descricao := xn.text
    else if sn = sndata_carregamento_pedagio then
       Fdata_carregamento_pedagio := mystrToFloat( xn.text)
    else if sn = snvalor_pedagio_descargas then
       Fvalor_pedagio_descargas := xn.text
    else if sn = snmovimentos then
       Fmovimentos := TConsultaContratoMovimentos.Create( xn )
    else if sn = sncupons then
       Fcupons := TCupons.create( xn )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

class function TConsultaContratoResponse.CreateFromXmlString(
  s: string): TConsultaContratoResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := TConsultaContratoResponse.Create( parser );
   finally
      parser.Free;
   end;
end;

destructor TConsultaContratoResponse.Destroy;
begin
  if assigned( Fmovimentos ) then Fmovimentos.free;
  if assigned( Fcupons ) then Fcupons.free;
  inherited;
end;

procedure TConsultaContratoResponse.Save(aNode: tJanXMLNode2);
var
  xn: tJanXMLNode2;
//  i: integer;
begin
  if aNode.name = '' then
    aNode.name := nsName(_NameSpaceAlias, 'financeiro')
  else if pos(colon, aNode.name) = 0 then
    aNode.name := nsName(_NameSpaceAlias, aNode.name);

  if _NameSpaceAlias <> '' then
  begin
    xn := aNode;
    while Assigned(xn.ParentNode) do
      xn := xn.ParentNode;
    xn.attribute['xmlns:' + _NameSpaceAlias] := thisNameSpaceURI;
  end;

end; // procedure save

{ TConsultaContratoMovimentos }

constructor TConsultaContratoMovimentos.Create(aRoot: tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  thisURI: string;
  aMovimento: TConsultaContratoMovimento;
begin
  Create;

  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snMovimento) then
    begin
      aMovimento := TConsultaContratoMovimento.Create(xn);
      Fmovimento.AddObject('?', aMovimento);
    end
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

constructor TConsultaContratoMovimentos.Create;
begin
   Fmovimento := tManagedStringList.Create;
end;

destructor TConsultaContratoMovimentos.Destroy;
begin
  Fmovimento.Free;
  inherited;
end;

{ TCupons }

constructor TCupons.Create;
begin

end;

constructor TCupons.Create(aRoot: tJanXMLNode2);
begin

end;

destructor TCupons.Destroy;
begin

  inherited;
end;

{ TConsultaContratoMovimento }

constructor TConsultaContratoMovimento.Create;
begin

end;

constructor TConsultaContratoMovimento.Create(aRoot: tJanXMLNode2);
var
  xn: tJanXMLNode2;
  sn: string;
  thisURI: string;
  aMovimento: TConsultaContratoMovimento;
begin  
  Create;

  xn := aRoot.FirstChild;
  while Assigned(xn) do
  begin
    sn := NamePart(xn.name);
    thisURI := xn.namespaceURI;
    if (sn = snMovimento_movimento_codigo_cliente) then
      Fmovimento_codigo_cliente := xn.text
    else if (sn = snMovimento_valor) then
      Fvalor := myStrToFloat( xn.text )
    else if (sn = snMovimento_Data) then
      FData := strToDateTimeDef( xn.text, 0)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

destructor TConsultaContratoMovimento.Destroy;
begin

  inherited;
end;

end.

