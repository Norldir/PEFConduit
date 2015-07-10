unit urpm_jxml_EmiteFinanceiro_v1_00;

interface
uses
  Classes,
  JanXMLParser2,
  uXMLTools;

const
   snFinanceiro = 'financeiro';
   snFinanceiro_linhas = 'linhas';

type
  TFinanceiroLinha = class
  public
     IdentificadorRegistro : string;
     ContratoRepom         : string;
     ProcessoTransporteCliente : string;
     FilialEmissao : string;
     TipoTransacaoFinanceira : string;
     TipoMovimentacaoFinanceira : string;
     ValorTransacaoFinanceira : extended;
     DataTransacaoFinanceira : TdateTime;
     DataPagamentoTransacaoFinanceira : TdateTime;
     TituloBancario : string;
     ValorTituloBancario : extended;
     CodigoLotePagamento : string;
     constructor create( linha : string ); overload;
  end;

  tFinanceiro = class
  private
    F_NameSpaceAlias: string;
    Flinhas: tManagedStringList;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property linhas : tManagedStringList read Flinhas write Flinhas;
  end;


const
   snMovimento = 'movimento';
   snMovimento_financeiro = 'financeiro';
   snMovimento_registros = 'registros';

type
  tFinanceiroMovimento = class
  private
    F_NameSpaceAlias: string;
    FFinanceiro: tFinanceiro;
    Fregistros : integer;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    class function CreateFromXmlString(s: string): tFinanceiroMovimento;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property financeiro : tfinanceiro read Ffinanceiro write Ffinanceiro;
    property registros : integer read Fregistros write Fregistros;
  end;


const
  snEmiteFinanceiroResponse = 'EmiteFinanceiroResponse';
  snEmiteFinanceiroResponse_Movimento = 'movimento';

type
  tEmiteFinanceiroResponse = class
  private
    F_NameSpaceAlias: string;
    Fmovimento: tFinanceiroMovimento;
  public
    constructor Create; overload;
    constructor Create(aRoot:tJanXMLNode2); overload;
    destructor Destroy; override;
    class function _nsURI_:string;
    class function CreateFromXmlString(s: string): tEmiteFinanceiroResponse;
    procedure Save(aNode:tJanXMLNode2);
    property _NameSpaceAlias: string read F_NameSpaceAlias write F_NameSpaceAlias;
    property movimento : tFinanceiroMovimento read Fmovimento write Fmovimento;
  end;

implementation
uses
  SysUtils,
  mylib;

const
  thisNamespaceURI = 'http://www.repom.com.br/';
  defNamespaceAlias = '';

{ tEmiteFinanceiroResponse }

class function tEmiteFinanceiroResponse._nsURI_: string;
begin
  result := thisNameSpaceURI;
end;

constructor tEmiteFinanceiroResponse.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end;

constructor tEmiteFinanceiroResponse.Create(aRoot: tJanXMLNode2);
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
    if (sn = snEmiteFinanceiroResponse_Movimento) then
      Fmovimento := tFinanceiroMovimento.Create(xn)
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...

class function tEmiteFinanceiroResponse.CreateFromXmlString(
  s: string): tEmiteFinanceiroResponse;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tEmiteFinanceiroResponse.Create( parser );
   finally
      parser.Free;
   end;
end;

destructor tEmiteFinanceiroResponse.Destroy;
begin
  if assigned( Fmovimento ) then Fmovimento.free;
  inherited;
end;

procedure tEmiteFinanceiroResponse.Save(aNode: tJanXMLNode2);
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

  if Assigned(Fmovimento) then
  begin
    xn := aNode.addChildByName(snEmiteFinanceiroResponse_Movimento);
    Fmovimento.Save(xn);
  end;
end; // procedure save

{ tFinanceiroMovimento }

class function tFinanceiroMovimento._nsURI_: string;
begin
  result := thisNameSpaceURI;
end;

constructor tFinanceiroMovimento.Create;
begin
  _NamespaceAlias := defNamespaceAlias;
end;

constructor tFinanceiroMovimento.Create(aRoot: tJanXMLNode2);
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
    if (sn = snMovimento_Financeiro) then
      FFinanceiro := tFinanceiro.Create(xn)
    else if (sn = snMovimento_Registros) then
      Fregistros := strToIntDef( xn.text, 0 )
    else;
    xn := xn.NextSibling;
  end; // while Assigned(xn) do ...
end; // constructor ...


destructor tFinanceiroMovimento.Destroy;
begin
  if assigned( FFinanceiro ) then FFinanceiro.free;
  inherited;
end;

procedure tFinanceiroMovimento.Save(aNode: tJanXMLNode2);
begin
  raise exception.create( 'não aplicado' );
end;

class function tFinanceiroMovimento.CreateFromXmlString(
  s: string): tFinanceiroMovimento;
var
  parser : TjanXMLParser2;
begin
   parser := TjanXMLParser2.create;
   try
      parser.xml := s;
      result := tFinanceiroMovimento.Create( parser );
   finally
      parser.Free;
   end;
end;

{ tFinanceiro }

class function tFinanceiro._nsURI_: string;
begin

end;

constructor tFinanceiro.Create;
begin

end;

constructor tFinanceiro.Create(aRoot: tJanXMLNode2);
var
   linha : string;
   linhaCompleta : string;

   oLinha : TFinanceiroLinha;
begin
   Flinhas := tManagedStringList.Create;

   linhaCompleta := aRoot.text;
   linha := copy( linhaCompleta, 1, 117);
   delete( linhaCompleta,1,117);
   while linha <> '' do
   begin
      oLinha := TFinanceiroLinha.create( linha );

      Flinhas.AddObject('?', oLinha );

      linha := copy( linhaCompleta, 1, 117);
      delete( linhaCompleta,1,117);
   end;
end;

destructor tFinanceiro.Destroy;
begin
  Flinhas.free;
  inherited;
end;

procedure tFinanceiro.Save(aNode: tJanXMLNode2);
begin
   raise exception.create( 'não implementado ');
end;

{ TFinanceiroLinha }

constructor TFinanceiroLinha.create(linha: string);
   function lStrToFloat( v : string ) : extended;
   var f :  TFormatSettings;
   begin
      f.DecimalSeparator := '.';
      if not TryStrToFloat( v, result, f  ) then
         raise exception.create( ' Valor inválido '+v);
   end;

   function lStrToDate( v: string ) : TdateTime;
   begin
      result := StrToDateDef( copy(v,1,2)+'/'+copy(v,3,2)+'/'+copy(v,5,4), 0  );
   end;
begin
  inherited create;
  IdentificadorRegistro     := copy( linha, 1, 3); delete(linha, 1, 3);
  ContratoRepom             := intToStr(strToInt(copy( linha, 1, 9))); delete(linha, 1, 9);
  ProcessoTransporteCliente := trim(copy( linha, 1, 18)); delete(linha, 1, 18);
  FilialEmissao             := trim(copy( linha, 1, 10)); delete(linha, 1, 10);
  TipoTransacaoFinanceira   := copy( linha, 1, 3); delete(linha, 1, 3);

  if      TipoTransacaoFinanceira = '001' then TipoTransacaoFinanceira := 'Adiantamento'
  else if TipoTransacaoFinanceira = '002' then TipoTransacaoFinanceira := 'Credito no Cartao aplicado durante a viagem'
  else if TipoTransacaoFinanceira = '003' then TipoTransacaoFinanceira := 'Saldo de Frete'
  else if TipoTransacaoFinanceira = '004' then TipoTransacaoFinanceira := 'Vale Pedagio carregado no Cartao'
  else if TipoTransacaoFinanceira = '005' then TipoTransacaoFinanceira := 'Taxa do Vale Pedagio carregado no Cartao'
  else if TipoTransacaoFinanceira = '006' then TipoTransacaoFinanceira := 'Descarga do Vale Pedagio no Cartao'
  else if TipoTransacaoFinanceira = '007' then TipoTransacaoFinanceira := 'Devolucao de Contrato Interrompido'
  else if TipoTransacaoFinanceira = '008' then TipoTransacaoFinanceira := 'Titulo de Contrato';

  TipoMovimentacaoFinanceira:= copy( linha, 1, 1); delete(linha, 1, 1);
  ValorTransacaoFinanceira  := lStrToFloat(copy( linha, 1, 12)); delete(linha, 1, 12);
  DataTransacaoFinanceira   := lStrToDate(copy( linha, 1, 8)); delete(linha, 1, 8);
  DataPagamentoTransacaoFinanceira := lStrToDate(copy( linha, 1, 8)); delete(linha, 1, 8);
  TituloBancario            := copy( linha, 1, 12); delete(linha, 1, 12);
  ValorTituloBancario       := lStrToFloat(copy( linha, 1, 12)); delete(linha, 1, 12);
  CodigoLotePagamento       := copy( linha, 1, 20); delete(linha, 1, 20);
end;

end.

