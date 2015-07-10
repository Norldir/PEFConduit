unit T5XmlSerializa;

interface

uses SysUtils, xmldom, XMLIntf, msxmldom, XMLDoc;

type
   rSerializacao = record
     CriaTagParaArray : boolean;
     UsaArrayComoNome : boolean;
     FormatSettings   : TformatSettings;
     CriaTagVazia     : Boolean;
   end;

function _Serializa( Instance : TObject; rootNode : IXMLNode; var mensagem : string; Parametros : rSerializacao ) : boolean; overload;
function _Serializa(  Instance : TObject; var mensagem : string; Parametros : rSerializacao ) : boolean; overload;

function _DeSerializa( Instance : TObject; rootNode : IXMLNode; var mensagem : string; Parametros : rSerializacao ) : boolean; overload;
function _DeSerializa(  Instance : TObject; XmlRetorno : string; var mensagem : string; Parametros : rSerializacao; skipFirst : Boolean = false ) : boolean; overload;


implementation

uses
  IntfInfo, TypInfo, SOAPDomConv, OPToSOAPDomConv, Classes;


procedure SetObjectPropAsText(Instance: TObject; PropInfo: PPropInfo; Value : String; Parametros : rSerializacao);
var
// I: LongInt;
 E: Extended;
// I64: Int64;
 DT: TDateTime;
begin
  case (PropInfo.PropType)^.Kind of
    tkInteger:
      begin
        if value <> '' then
           SetOrdProp(Instance, PropInfo, StrToInt( value ));
      end;
    tkFloat:
      begin
        //E := GetFloatProp(Instance, PropInfo);
        if PropInfo.PropType^ = TypeInfo(TDateTime) then
        begin
          if Pos(':', Value) > 0  then
            DT := StrToDateTime( value, Parametros.FormatSettings )
          else
            DT := StrToDate( value, Parametros.FormatSettings );
          E  := DT;
        end
        else
          e := StrToFloat( value, Parametros.FormatSettings );
        SetFloatProp(Instance, PropInfo, e );
      end;
    tkWString:
      SetWideStrProp(Instance, PropInfo, value);
    tkString,
    tkLString:
      SetStrProp(Instance, PropInfo, value);
    tkInt64:
      begin
        SetInt64Prop(Instance, PropInfo, StrToInt64(value));
      end;
    tkEnumeration:
      begin
//        Result := GetEnumProp(Instance, PropInfo);
//        if PropInfo.PropType^ = TypeInfo(System.Boolean) then
//          Result := Lowercase(Result);
      end;
    tkChar:
      begin
        SetOrdProp(Instance, PropInfo, Ord((value+#0)[1]));
      end;
    tkWChar:
      begin
        SetOrdProp(Instance, PropInfo, Ord((value+#0)[1]));
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

function GetObjectPropAsText(Instance: TObject; PropInfo: PPropInfo; Parametros : rSerializacao): WideString;
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
          Result := FormatDateTime(Parametros.FormatSettings.ShortDateFormat , DT);
        end
        else
          result := FormatFloat( '0.##', E, Parametros.FormatSettings);
          //Result := FloatToStr(E);
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
  result := UTF8Encode( result ); 
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
                                             const TypeName: String; Parametros : rSerializacao);
var
  I: Integer;
  S: wideString;
  IsNull: Boolean;
  ArNode: IXMLNode;
//  ElemSize: Integer;
  NodeName: String;
//  Obj: TObject;
  instance : TObject;
  mensagem : string;
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
           if Parametros.CriaTagParaArray then
              ArNode := RootNode.AddChild(typename)
           else
              ArNode := RootNode;
              
           if not _Serializa( instance, ArNode, mensagem, Parametros ) then
              raise exception.create( mensagem );
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


function _Serializa( Instance : TObject; rootNode : IXMLNode; var mensagem : string; Parametros : rSerializacao ) : boolean;  overload;
var
  PropList: PPropList;
  Count, i: Integer;
  Kind: TTypeKind;
  Obj: TObject;
//  ClsType: TClass;
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
        GetPropList(Instance.ClassInfo, tkProperties, PropList, false);
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
              if not _Serializa( obj, ElemNode, mensagem, Parametros ) then
                 raise exception.create( mensagem );
            end;
          { Array property }
          end else if Kind = tkDynArray then
          begin
            P := Pointer(GetOrdPropEx(Instance, PropList[I]));
            GetDynArrayElTypeInfo(PropList[I]^.PropType^, ElemInfo, dims);
            WriteRectDynArrayElem( rootNode, rootNode, ElemInfo , GetDynArrayLength(P) , 0, P, ExtPropName, Parametros );
          { Variant property }
          end else if Kind = tkVariant then
          begin
             //V := GetVariantProp(Instance, PropList[I]);
             //ConvertVariantToSoap(RootNode, InstNode, ExtPropName, nil, nil, 0, V, True);
          end else
          { Simple type property ?? }
          begin
              NodeVal := GetObjectPropAsText(Instance, PropList[I], Parametros);
              { Check if user does not want to send empty nodes }
              if (NodeVal <> '') or ( Parametros.CriaTagVazia )then
              begin
                ElemNode := instnode.AddChild( ExtPropName );
                if (NodeVal <> '') then
                   Elemnode.Text := NodeVal;
              end;
          end;
        end;
      finally
        FreeMem(PropList, Count * SizeOf(Pointer));
      end;
      mensagem := rootNode.XML;
      result := true;
  except
     on e:EXCEption do
     begin
        mensagem := e.Message;
        result := false;
     end;
  end;
end;


function _Serializa(  Instance : TObject; var mensagem : string; Parametros : rSerializacao ) : boolean; overload;
var
   xmlDoc : IXMLDocument;
   rootNode : IXMLNode;
begin
   xmlDoc := TXMLDocument.Create(nil);
   try
      xmlDoc.active := true;

      rootNode := xmlDoc.AddChild(copy(Instance.ClassName,2,200));

      result := _Serializa(Instance, rootNode, mensagem, Parametros );
      if result then
      begin
         if rootNode.IsTextElement then
            mensagem := rootNode.text
         else
         begin
            mensagem := rootNode.XML;
         end;
      end;
   finally
     xmlDoc.active := false;
     xmlDoc := nil;
   end;
end;

type
  TAddMethod = function : TObject of object;

function AdicionaItemArray( instance : TObject; node : IXMLNode; ExtPropName : string; var mensagem : string; Parametros : rSerializacao ) : boolean;
var
  exec : TAddMethod;
  Routine : TMethod;
  obj : TObject;
begin
   result := true;
   Routine.Data := Pointer(instance) ;
   Routine.Code := instance.MethodAddress( 'add'+ExtPropName) ;
   if NOT Assigned(Routine.Code) then
   begin
      Exit;
   end;
   Exec := TAddMethod(Routine) ;
   while assigned( node ) do
   begin
      obj := Exec;
      result := _deserializa( obj, node.ChildNodes.First, mensagem, parametros );

      if Parametros.CriaTagParaArray then break;

      node := node.NextSibling;
   end;
end;

function _DeSerializa( Instance : TObject; rootNode : IXMLNode; var mensagem : string; Parametros : rSerializacao ) : boolean;
var
  PropList: PPropList;
  Count, i: Integer;
  Kind: TTypeKind;
  Obj: TObject;
//  ClsType: TClass;
  InstNode, ElemNode : IXMLNode;
  ExtPropName : string;
  P: Pointer;
  NodeVal : string;
  ElemInfo: PTypeInfo;
  dims : integer;

  node : IXMLNode;
  nomeNode : string;
//  nodeclass : Tclass;
begin
  try
      InstNode := rootNode;
      try
        ExtPropName := copy(Instance.ClassName,2,200);
      except
        ExtPropName := '';
      end;


      if not assigned( rootNode ) then
      begin
          result := true;
          exit;
      end;

      if rootNode.NodeName = ExtPropName then
         rootNode := rootNode.ChildNodes.First
      else
         rootNode := rootNode;

      Count := GetPropList(Instance.ClassInfo, tkProperties, nil);
      GetMem(PropList, Count * SizeOf(PPropInfo));
      try
        GetPropList(Instance.ClassInfo, tkProperties, PropList, false);
        node := rootNode;
        while assigned( Node ) do
        begin
          nomeNode := node.NodeName;
          for I := 0 to Count - 1 do
          begin
            ExtPropName := PropList[I].Name;

            if ExtPropName <> NomeNode then continue;

            Kind := (PropList[I].PropType)^.Kind;
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
                ElemNode := node.ChildNodes.First;
                if not _DeSerializa( obj, ElemNode, mensagem, parametros ) then
                   raise exception.create( mensagem );
              end;
            { Array property }
            end else if Kind = tkDynArray then
            begin
              P := Pointer(GetOrdPropEx(Instance, PropList[I]));
              GetDynArrayElTypeInfo(PropList[I]^.PropType^, ElemInfo, dims);
              if ElemInfo.Kind = tkClass then
              begin
                  if not Parametros.CriaTagParaArray then
                     {result := }AdicionaItemArray( instance, node.ChildNodes.First, copy(ElemInfo.name,2,200), mensagem, parametros )
                  else
                     {result := }AdicionaItemArray( instance, node, copy(ElemInfo.name,2,200), mensagem, parametros );
              end;

              //WriteRectDynArrayElem( rootNode, rootNode, ElemInfo , GetDynArrayLength(P) , 0, P, ExtPropName );

            { Variant property }
            end else if Kind = tkVariant then
            begin
               //V := GetVariantProp(Instance, PropList[I]);
               //ConvertVariantToSoap(RootNode, InstNode, ExtPropName, nil, nil, 0, V, True);
            end else
            { Simple type property ?? }
            begin
                NodeVal := node.Text;
                SetObjectPropAsText( Instance, PropList[I], nodeval, Parametros );
                //SetStrProp( instance, extpropname, nodeval );
//                { Check if user does not want to send empty nodes }
//                if (NodeVal <> '') then
//                begin
//                  ElemNode := instnode.AddChild( ExtPropName );
//                  Elemnode.Text := NodeVal;
//                end;
            end;
            break;
          end;

          node := node.NextSibling;
        end;
      finally
        FreeMem(PropList, Count * SizeOf(Pointer));
      end;
      mensagem := rootNode.XML;
      result := true;
  except
     on e:EXCEption do
     begin
        mensagem := e.Message;
        result := false;
     end;
  end;
end;


function _DeSerializa(  Instance : TObject; XmlRetorno : string; var mensagem : string; Parametros : rSerializacao; skipFirst : Boolean = false ) : boolean; overload;
var
   xmlDoc : IXMLDocument;
   Node : IXMLNode;
begin
   try
   xmlDoc := TXMLDocument.Create(nil);
   try
      if Pos('encoding="', XmlRetorno) > 0 then
         XmlRetorno := StringReplace( XmlRetorno, 'utf-8', 'iso-8859-1', [] )
      else
         XmlRetorno := '<?xml version="1.0" encoding="iso-8859-1"?>'+XmlRetorno;
      XmlRetorno := stringReplace(XmlRetorno, '&', 'e', [rfReplaceAll]);
      XmlRetorno := trim( XmlRetorno );

      xmlDoc.xml.text := XmlRetorno;
      xmlDoc.active := true;
      Node := xmlDoc.ChildNodes.First.NextSibling;
      if skipFirst then
         Node := node.ChildNodes.First;

      result := _DeSerializa( instance, node, mensagem, parametros );

   finally
     xmlDoc.active := false;
     xmlDoc := nil;
   end;
   except
      on e:exception do
      begin
         raise exception.create( '_DeSerializa:'+e.message )
      end;
   end;
end;


end.
