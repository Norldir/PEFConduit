unit uRodocred;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, activeX, Types, IntfInfo, TypInfo, SOAPDomConv, OPToSOAPDomConv,
  xmldom, XMLIntf, msxmldom, XMLDoc;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    XMLDocument1: TXMLDocument;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
function _Serializa( Instance : TObject; rootNode : IXMLNode ) : widestring;


var
  Form1: TForm1;

implementation

uses urdc_ConsultarViagens_v1_00, urdc_ManterMotorista_v1_00,
  urdc_ManterTransportador_v1_00, urdc_ManterVeiculo_v1_00,
  urdc_ManterViagem_v1_00, urdc_TiposPadrao_v1_00;

{$R *.dfm}


function GetObjectPropAsText(Instance: TObject; PropInfo: PPropInfo): WideString;
var
 I: LongInt;
 E: Extended;
 I64: Int64;
 DT: TDateTime;
begin
  case (PropInfo.PropType)^.Kind of
    tkInteger:
      begin
        I := GetOrdProp(Instance, PropInfo);
        Result := IntToStr(I);
      end;
    tkFloat:
      begin
        E := GetFloatProp(Instance, PropInfo);
        if PropInfo.PropType^ = TypeInfo(TDateTime) then
        begin
          DT := E;
          Result := FormatDateTime('dd/mm/yyy hh:nn', DT);
        end
        else
          Result := FloatToStr(E);
      end;
    tkWString:
      Result := GetWideStrProp(Instance, PropInfo);
    tkString,
    tkLString:
      Result := GetStrProp(Instance, PropInfo);
    tkInt64:
      begin
        I64 := GetInt64Prop(Instance, PropInfo);
        Result := IntToStr(I64);
      end;
    tkEnumeration:
      begin
        Result := GetEnumProp(Instance, PropInfo);
        if PropInfo.PropType^ = TypeInfo(System.Boolean) then
          Result := Lowercase(Result);
      end;
    tkChar:
      begin
        I := GetOrdProp(Instance, PropInfo);
        Result :=  wideString( Char(I) );
      end;
    tkWChar:
      begin
        I := GetOrdProp(Instance, PropInfo);
        Result :=  wideString( WideChar(I) );
      end;
    tkClass:
      ;
    tkSet,
    tkMethod,

    tkArray,
    tkRecord,
    tkInterface,


    tkDynArray,
    tkVariant:
      raise exception.Create( 'classe invalida '+(PropInfo.PropType)^.Name );
  end;
end;

function GetDynArrayLength(P: Pointer): Integer;
begin
  asm
    MOV  EAX, DWORD PTR P
    CALL System.@DynArrayLength
    MOV DWORD PTR [Result], EAX
  end;
end;

procedure CastNativeToSoap(Info: PTypeInfo;
     var SoapData: WideString; NatData: Pointer; var IsNull: Boolean);
var
  TypeData: PTypeData;
begin
  TypeData := GetTypeData(Info);
  case Info.Kind of
    tkInteger:
      case TypeData.OrdType of
        otSByte,
        otUByte:
          SoapData := IntToStr(byte(NatData^) );
        otSWord:
          SoapData := IntToStr(SmallInt(NatData^));
        otUWord:
           SoapData := IntToStr(SmallInt(NatData^));
        otSLong,
        otULong:
          SoapData := IntToStr(Integer(NatData^));
      end;
    tkFloat:
      case TypeData.FloatType of
        ftSingle:
          SoapData := FloatToStr(Single(NatData^));
        ftDouble:
        begin
          if Info = TypeInfo(TDateTime) then
            SoapData := FormatDateTime('dd/mm/yyyy hh:nn', TDateTime(NatData^))
          else
            SoapData := FloatToStr(Double(NatData^));
        end;
        ftComp:
          SoapData := FloatToStr(Comp(NatData^));
        ftCurr:
          SoapData := FloatToStr(Currency(NatData^));
        ftExtended:
         SoapData := FloatToStr(Extended(NatData^));
      end;
    tkInt64:
      SoapData := IntToStr(Int64(NatData^));
    tkChar:
      SoapData := Char(NatData^);
    tkWChar:
      SoapData := WideChar(NatData^);
    tkWString:
      SoapData  := PWideString(NatData)^;
    tkString:
      SoapData := PShortString(NatData)^;
    tkLString:
      SoapData := PAnsiString(NatData)^;
  end;
end;
function GetTypeSize(P: PTypeInfo): Integer;
var
  TypeData: PTypeData;
begin
  Result := 4;
  TypeData := GetTypeData(P);
  case P.Kind of
    tkInteger:
      case TypeData^.OrdType of
        otSByte,
        otUByte:
            Result := sizeof(Byte);
        otSWord,
        otUWord:
          begin
            Result := sizeof(Word);
          end;
        otSLong,
        otULong:
          ;
      end;
    tkFloat:
      case TypeData.FloatType of
        ftSingle:
          Result := Sizeof(Single);
        ftDouble:
          Result := Sizeof(Double);
        ftComp:
          Result := Sizeof(Comp);
        ftCurr:
          Result := Sizeof(Currency);
        ftExtended:
          Result := Sizeof(Extended);
      end;
    tkChar:
      Result := 1;
    tkWChar:
      Result := 2;
    tkInt64:
      Result := sizeof(Int64);
    tkVariant:
      Result := sizeof(TVarData);
    tkEnumeration:
      Result := 1;
  end;
end;

procedure WriteRectDynArrayElem(RootNode, Node: IXMLNode;
                                             Info: PTypeInfo;
                                             Size, Dim: Integer;
                                             P: Pointer;
                                             const TypeName: String);
var
  I: Integer;
  S: wideString;
  IsNull: Boolean;
  ArNode: IXMLNode;
  ElemSize: Integer;
  NodeName: String;
  Obj: TObject;
  instance : TObject;
begin
   // P := Pointer(PInteger(P)^);

    NodeName := TypeName;

    { Write out data }
    for I := 0 to Size-1 do
    begin
      if Info.Kind = tkClass then
      begin
        instance := Pointer(PInteger(P)^);
        if assigned( instance ) then
        begin
           //instance := GetObjectProp(instance, info);
           ArNode := RootNode.AddChild(typename);
           _Serializa( instance, ArNode );
        end;
      end else
      if Info.Kind = tkVariant then
      begin
        //ConvertVariantToSoap(RootNode, Node, NodeName, Info, P, 1, NULL, False);
      end else
      begin
        ArNode := Node.AddChild(NodeName);
        { Set Value }
        CastNativeToSoap(Info, S, P, IsNull);
        ArNode.Text := S;
      end;
      P := Pointer( Integer(P) + GetTypeSize(Info));
    end;
end;


function _Serializa( Instance : TObject; rootNode : IXMLNode ) : widestring;
var
  PropList: PPropList;
  Count, i: Integer;
  Kind: TTypeKind;
  Obj: TObject;
  ClsType: TClass;
  InstNode, ElemNode : IXMLNode;
  ExtPropName : string;
  P: Pointer;
  NodeVal : string;
  ElemInfo: PTypeInfo;
  dims : integer;
begin
  try
  InstNode := rootNode;
  Count := GetPropList(Instance.ClassInfo, tkProperties, nil);
  GetMem(PropList, Count * SizeOf(PPropInfo));
  try
    GetPropList(Instance.ClassInfo, tkProperties, PropList);
    for I := 0 to Count - 1 do
    begin
      Kind := (PropList[I].PropType)^.Kind;
      ExtPropName := PropList[I].Name;
      { Class Property }
      if Kind = tkClass then
      begin
        Obj := GetObjectProp(Instance, PropList[I]);
        if Obj = nil then
        begin
            //
        end
        else
        begin
          ElemNode := InstNode.AddChild(ExtPropName, '');
          _Serializa( obj, ElemNode );
        end;
      { Array property }
      end else if Kind = tkDynArray then
      begin
        P := Pointer(GetOrdPropEx(Instance, PropList[I]));
        GetDynArrayElTypeInfo(PropList[I]^.PropType^, ElemInfo, dims);
        WriteRectDynArrayElem( rootNode, rootNode, ElemInfo , GetDynArrayLength(P) , 0, P, ExtPropName );
      { Variant property }
      end else if Kind = tkVariant then
      begin
         //V := GetVariantProp(Instance, PropList[I]);
         //ConvertVariantToSoap(RootNode, InstNode, ExtPropName, nil, nil, 0, V, True);
      end else
      { Simple type property ?? }
      begin
          NodeVal := GetObjectPropAsText(Instance, PropList[I]);
          { Check if user does not want to send empty nodes }
          if (NodeVal <> '') then
          begin
            ElemNode := instnode.AddChild( ExtPropName );
            Elemnode.Text := NodeVal;
          end;
      end;
    end;
  finally
    FreeMem(PropList, Count * SizeOf(Pointer));
  end;
  except
     on e:EXCEption do
       showmessage( e.Message );
  end;
  result := rootNode.xml;
end;


procedure TForm1.Button1Click(Sender: TObject);
var
   materviagem : tMaterViagem;
begin

   materviagem := tMaterViagem.Create;


   with materviagem.GetManterViagemRequest do
   begin
      with GetIdentificacaoIntegracao do
      begin

         IdClienteRodocred := 10;
         TokenAutenticacao := 'token';
         NumeroTransacao := 'transa';
         VersaoServico := '1.00';

      end;

      IdClienteResponsavel := '';
      Operacao := 'INC';
      TipoViagem := 'teste';
      MeioPagamentoTransporte := 'DEP';

      with GetDadosViagem do
      begin
         NumeroViagem := '11111';
         Embarque := '';
         PrevisaoEntrega := '';

         with GetForo do
         begin
            Estado :='PR';
            Cidade := 'cascvel';
         end;
         GerarCIOT := true;
      end;

      with GetTransportador do
      begin
         CNPJCPFTransportador := '0000000';
         RNTRC := '00000';
         NomeTransportador := 'nononononoono';
      end;
      
      with GetRotaViagem do
      begin
        addCodigoRota(1);
        addCodigoRota(2);
        with addOrigemDestinoRota do
        begin
           CodigoIBGEOrigem  := '1';
           CodigoIBGEDestino := '2';
        end;
        with addOrigemDestinoRota do
        begin
           CodigoIBGEOrigem  := '3';
           CodigoIBGEDestino := '4';
        end;
      end;

      with AddVeiculosViagem do
      begin
          PlacaVeiculo := 'xxx1010';
          TipoVeiculo  := '1';
          QtdeEixos    := 8;
          TipoRodagem  := 'tr';
          RNTRC        := 'rntrc';
          CNPJCPF      := '12345678901234';
      end;

      with AddVeiculosViagem do
      begin
          PlacaVeiculo := 'xxx1010';
          TipoVeiculo  := '1';
          QtdeEixos    := 8;
          TipoRodagem  := 'tr';
          RNTRC        := 'rntrc';
          CNPJCPF      := '12345678901234';
      end;

      with GetValePedagioViagem do
      begin
         OperadoraFinanceiraVP := 'VP';
         MeioPagamentoValePedagio := 1;
         ModalidadeLocalImpressao := 'MLI';
         IDLocalImpressao := '';
         ValorPedagio := 200;
         with addPracasTarifaDiferenciada do
         begin
            IdPraca := '123';
            CondicaoCompraVP := 'ccvp';
         end;
      end;

      with AddMotoristaViagem do
      begin
         CPFMotorista  := 'cpff';
         NomeMotorista := 'motoriasta 1';
      end;
      with AddMotoristaViagem do
      begin
         CPFMotorista  := 'cpff';
         NomeMotorista := 'motoriasta 2';
      end;

      with GetEnvolvidosTransporteViagem do
      begin
         TipoFrete := 'tf';
         with addEnvolvidosTransporte do
         begin
            TipoEnvolvido :='1';
            CNPJCPF := '123';
            NomeEnvolvido := 'nome';
            with GetEndereco do
            begin
               TipoEndereco := '1';
               CEP   := '123';
               TipoLogradouro := 'tl';
               Logradouro := 'log';
               Numero := '111';
               Complemento := 'mllmlml';
               Bairro := 'jkkjkjk';
               Cidade := 'kjlkjlj';
               Estado := 'PR';
            end;
         end;
      end;

      with GetValoresViagem do
      begin
         ValorDespesas := 10;
         ValorFrete    := 10;
         ValorCombustivel := 10;
         PesoCarga := 1000;
         UnidadeMedidaPeso := 'Kg';
      end;

      with GetImpostosViagem do
      begin
         ValorTotalImpostos := 10000;
         with addImpostos do
         begin
            CodigoImposto   := '1';
            BaseCalculoImposto := 100;
            PercentualImposto := 10;
            ValorImposto := 10;
            RetencaoImposto     := true;
         end;
      end;

      with GetDadosBancarios do
      begin
         CodigoBanco := '1';
         NumeroAgencia := '1';
         DvAgencia := '1';
         NumeroConta := '1';
         DVConta := '1';
         InformacoesPagamento := '1';
      end;

      with GetDocumentosViagem do
      begin
         with AddDocumento do
         begin
            CodigoDocumento    := 'a';
            NumeroDocumento    := 'a';
            CodigoAuxiliar     := 'a';
            DocumentoRequerido :='a';
            NaturezaCarga      := 'a';
            ObservacaoDocumento:= 'a';
         end;
      end;

      with GetProgramacaoViagem do
      begin
         with addOperacaoViagem do
         begin
            CodigoOperacao := 'qwer';
            CondicaoLiberacaoOperacao := ' aaaa';
            DataOperacao := '';
            LocalRealizacao := 'cvel';

            with GetEstabelecimento do
            begin
               IDEstabelecimento := 1;
               CNPJEstabelecimento := 'asdfasdfsad';
            end;

            with GetFilialEmpresa do
            begin
               IDFilial := 1;
            end;

            with addEventoOperacao do
            begin
                CodigoEventoOperacao := 'inc';
                ValorEvento := 100;
                QuantidadeLitros := 0;
                Combustivel := 'xxx';
            end;
         end;
      end;
   end;
  CoInitialize(nil);

   XMLDocument1.Active := false;
   XMLDocument1.xml.text := '';
   XMLDocument1.Active := active;

  memo1.Text := _Serializa( materviagem, XMLDocument1.AddChild('root') );

{
  with TXmlSerializer.Create do
  try
      memo1.lines.text := (Serialize(materviagem, 'c:\temp\x.txt'));

  finally
    free;
  end;
  }
  CoUninitialize;

  materviagem.free;
end;

end.
