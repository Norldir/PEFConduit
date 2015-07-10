unit undd_base;

interface

uses classes, Contnrs;

type
  TOperacaoLeituraArquivo = (opVoltaParaPai, opFinalArquivo, opProximaLinha);

  TNDDFilhos = class( TObjectList )
  private
     vItem : Integer;
  public
     //destructor destroy; override;
     function First  : TObject; overload;
     function Next   : TObject;
     function Actual : TObject;
     function Find(Propriedade: string; valor: Variant; Next : Boolean = false): TObject;
     function Last : TObject; overload;
  end;

  TNDD_Base = class (TComponent )
  protected
    property name;
    property tag;
  end;


  TNDD = class( TNDD_Base )
  protected
    Fp00_id: string;
  private
    teste : boolean;
    function Delimitador : string;
    function EOL : string;
    function SetAsTStrings(value: TStrings): boolean;
    function LeArquivo(var arq : textfile; var linha : string;  var operacao : TOperacaoLeituraArquivo; var msg: string): Boolean;
    constructor create( owner : TComponent ); overload; override;
  public
    function GetAsString : widestring;
    function LoadFromFile( arquivo : string; var msg : string ) : Boolean;
    constructor create; overload;
  published
    property id : string read Fp00_id;
  end;


implementation

uses
  SysUtils, IntfInfo, TypInfo, uICFBase;

{ TNDD }
function SetObjectPropAsText( Instance: TObject; PropInfo: PPropInfo; valor : string ) : Boolean;
var
 I: LongInt;
 E: Extended;
 I64: Int64;
 ws : WideString;
 fs : TFormatSettings;
 dt : TDateTime;
begin
  result := True;
  try
     case (PropInfo.PropType)^.Kind of
       tkInteger:
         begin
           result := (valor <> '') and TryStrToInt(valor, i );
           if result then SetOrdProp( Instance, PropInfo^.Name, I);
         end;
       tkFloat:
         begin
           E := GetFloatProp(Instance, PropInfo);
           if PropInfo.PropType^ = TypeInfo(TDateTime) then
           begin
             fs.DateSeparator   :='-';
             fs.ShortDateFormat := 'yyyy-mm-dd';
             fs.TimeSeparator := ':';
             fs.LongDateFormat := 'yyyy-mm-dd';
             fs.LongTimeFormat := 'hh:mm:ss';
             fs.ShortTimeFormat := 'hh:mm:ss';
             result := (valor <> '') and TryStrToDateTime( valor, dt, fs);
             e := dt;
           end
           else
           begin
              fs.DecimalSeparator   :='.';
              fs.ThousandSeparator   :=',';
              result := (valor <> '') and TryStrToFloat(valor, E, fs);
           end;
           if result then SetFloatProp(Instance, PropInfo^.Name, E );
         end;
       tkWString:
         begin
            ws := valor;
            SetWideStrProp(Instance, PropInfo^.Name, ws);
         end;
       tkString,
       tkLString:
         SetStrProp(Instance, PropInfo^.Name, valor);
       tkInt64:
         begin
           result := (valor <> '') and TryStrToInt64(valor, I64);
           if result then SetInt64Prop(Instance, PropInfo^.Name, i64);
         end;
       tkEnumeration:
         begin
         end;
       tkChar:
         begin
           if valor<>'' then
           begin
              i := Ord( Copy( valor,1,1 )[1] );
              SetOrdProp(Instance, PropInfo^.Name, i);
           end;
         end;
       tkWChar:
         begin
           if valor<>'' then
           begin
              i := Ord( Copy( valor,1,1 )[1] );
              SetOrdProp(Instance, PropInfo^.Name, i);
           end;
         end;
       tkClass:
         raise exception.Create( 'classe invalida '+(PropInfo.PropType)^.Name );
       tkSet,
       tkMethod,

       tkArray,
       tkRecord,
       tkInterface,


       tkDynArray,
       tkVariant:
         raise exception.Create( 'classe invalida '+(PropInfo.PropType)^.Name );
       else
         raise exception.Create( 'classe invalida '+(PropInfo.PropType)^.Name );
     end;
  except
    on e:Exception do
    begin
       raise Exception.Create('Não foi possivel atribuir o valor ['+valor+'] ao objecto '+Instance.ClassName+' propriedade '+PropInfo^.Name+' - '+e.Message);
    end;
  end;
end;


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
          Result := FormatDateTime('yyyy-mm-dd hh:nn:ss', DT);
        end
        else
          Result := stringReplace(FloatToStr(E), '.', ',',[]);
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

constructor TNDD.create;
begin
  inherited create(nil);

end;

constructor TNDD.create(owner: TComponent);
begin
  inherited;
  teste := false;
end;

function TNDD.Delimitador: string;
begin
   result := ';';
end;

function TNDD.EOL: string;
begin
   result := #13#10;
end;


function TNDD.GetAsString: widestring;
var
  PropList: PPropList;
  Count, i: Integer;
  Kind: TTypeKind;
  //P: Pointer;
  Obj : TObject;
  vii : integer;
  objList : TObjectList;
  nddObj : TNDD;
  classe : string;
begin
   result := '';
   try
      Count := GetPropList(self.ClassInfo, tkProperties, nil);
      GetMem(PropList, Count * SizeOf(PPropInfo));
      try
        GetPropList(self.ClassInfo, tkProperties, PropList, false);
        for I := 0 to Count - 1 do
        begin
          Kind := (PropList[I].PropType)^.Kind;
          classe := (PropList[I].PropType)^.Name;
          if Kind = tkClass then
          begin
             Obj := GetObjectProp(self, PropList[I]);
             if assigned(obj) then
             begin
                if (obj is TNDDFilhos) then
                begin
                   objList := (obj as TNDDFilhos);
                   for vii := 0 to objList.Count - 1 do
                   begin
                      obj := objList.Items[vii];
                      if (obj is TNdd) then
                      begin
                         nddObj := TNdd( Obj );
                         result := result + Eol + nddObj.GetAsString;
                      end;
                   end;
                end else if (obj is TNDD) then
                begin
                   nddObj := TNdd( Obj );
                   result := result + Eol + nddObj.GetAsString;
                end;
             end;
          end
          else
          begin
              if (PropList[I].Name = 'Tag') or (PropList[I].Name='Name') then
              else
              begin
                 if result <> '' then result := result + Delimitador;
                 if teste and (GetObjectPropAsText(self, PropList[I]) = '') then
                   result := result + PropList[I].Name
                 else
                   result := result + GetObjectPropAsText(self, PropList[I]);
              end;
          end;
        end;
      finally
        FreeMem(PropList, Count * SizeOf(PPropInfo));
      end;
   except
      on e:exception do
      begin
         raise Exception.Create( e.Message+' '+classe );

      end;
   end;
end;


type
   TAddFilho = function : Tndd of object;


function TNDD.LeArquivo(var arq: textfile; var linha: string;
  var operacao: TOperacaoLeituraArquivo; var msg: string): Boolean;
var
  Dados : TStringList;
  filho : TNDD;
  m : Tmethod;
  UltimoRegistro : string;
begin
    Result := true;
    UltimoRegistro := '';
    while ( result ) do
    begin
        Dados := TStringList.Create;
        try
           if SeparaDados( linha, dados, self.Delimitador[1] ) then // separa os dados por | em linhas
           begin
              if Dados[0] = UltimoRegistro then // se tiver 2 registros em sequencia, tenque voltar para o pai.
                 operacao := opVoltaParaPai
              else if (Dados[0] = Fp00_id) then
              begin
                 UltimoRegistro := Dados[0];
                 try
                    Self.SetAsTStrings( dados );
                 except
                   on e:Exception do
                   begin
                      raise Exception.Create('Na linha '+Fp00_id+' - '+e.message);
                   end;
                 end;
                 if Eof( arq ) then
                    operacao := opFinalArquivo
                 else
                 begin
                    Readln( arq, linha );
                    if Utf8ToAnsi( linha ) <> '' then
                       linha := Utf8ToAnsi( linha );
                    operacao := opProximaLinha;
                 end;
              end
              else
              begin
                 m.Code := Self.MethodAddress('add'+dados[0]); //find method code
                 if Assigned( m.code) then
                 try
                   m.Data := pointer(Self); //store pointer to object instance
                   filho := TAddFilho(m);
                   result := filho.LeArquivo( arq, linha, operacao, msg);
                   if operacao = opVoltaParaPai then operacao := opProximaLinha;
                 except
                   on e:exception do
                   begin
                     result := False;
                     msg := 'Linha tipo '+Dados[0]+' não reconhecida ou fora de ordem apos a linha '+Fp00_id+' - '+e.Message;
                   end;
                 end
                 else
                 begin
                    operacao := opVoltaParaPai;
                 end;
              end;
           end;
        finally
           Dados.Free;
        end;

        if operacao <> opProximaLinha then
           Break;
          
    end;
end;

function TNDD.LoadFromFile(arquivo: string; var msg: string): Boolean;
var
  arq : TextFile;
  linha : string;
  operacao : TOperacaoLeituraArquivo;
begin
  operacao := opProximaLinha;
  try
     AssignFile( arq, arquivo);
     Reset( arq );
     try
        Readln( arq, linha );
        linha := Utf8ToAnsi( linha );
        if Copy(linha,1,1) ='?' then delete(linha, 1,1);
        result := LeArquivo( arq, linha, operacao, msg);
     finally
       CloseFile( arq );
     end;
  except
   on e:Exception do
   begin
      result := False;
      msg:=e.Message;
   end;
  end;
end;

function TNDD.SetAsTStrings(value: TStrings): boolean;
var
  PropList: PPropList;
  Count, i: Integer;
  Kind: TTypeKind;
  classe : string;
  item : Integer;
  valor : string;
begin
   result := true;
   try
      Count := GetPropList(self.ClassInfo, tkProperties, nil);
      GetMem(PropList, Count * SizeOf(PPropInfo));
      try
        GetPropList(self.ClassInfo, tkProperties, PropList, false);
        item := 0;
        for I := 0 to Count - 1 do
        begin
          Kind := (PropList[I].PropType)^.Kind;
          classe := (PropList[I].PropType)^.Name;
          if Kind = tkClass then
          begin
          end
          else
          begin
              if (PropList[I].Name = 'Tag') or (PropList[I].Name='Name') then
              else
              begin
                 if (PropList[I].Name = 'id') or (PropList[I].Name='versao') then
                 else
                 begin
                     if item >= value.count then
                     begin
                        raise exception.create('encontrado o final da linha precocemente. Campo esperado: '+PropList[I].Name+'.');
                     end;
                     valor := value[ item ];
                     SetObjectPropAsText( self, PropList[I], valor );
                 end;
                 inc(item);
              end;
          end;
        end;
      finally
        FreeMem(PropList, Count * SizeOf(PPropInfo));
      end;
   except
      on e:exception do
      begin
         raise Exception.Create( e.Message+' '+classe );

      end;
   end;
end;

{ TNDDFilhos }

//destructor TNDDFilhos.destroy;
//var o:TObject;
//begin
//   while Count > 0 do
//   begin
//      o := self.Items[0];
//      o.Free;
//      self.Delete(0);
//   end;
//   inherited;
//end;

{ TNDDFilhos }

function TNDDFilhos.Actual: TObject;
begin
   if vItem >= count then
      result := nil
   else
      result := Self.Items[ vItem ];
end;

function GetPropertyValue( self : TObject; prop : string ) : string;
var
  PropList: PPropList;
  Count, i: Integer;
  Kind: TTypeKind;
  classe : string;
begin
   result := '';
   try
      Count := GetPropList(self.ClassInfo, tkProperties, nil);
      GetMem(PropList, Count * SizeOf(PPropInfo));
      try
        GetPropList(self.ClassInfo, tkProperties, PropList, false);
        for I := 0 to Count - 1 do
        begin
          Kind := (PropList[I].PropType)^.Kind;
          classe := (PropList[I].PropType)^.Name;

          if UpperCase( PropList[I].Name) <> UpperCase( prop ) then
             Continue;

          if Kind = tkClass then
          begin
          end
          else
          begin
            result := GetObjectPropAsText(self, PropList[I]);
            Break;
          end;
        end;
      finally
        FreeMem(PropList, Count * SizeOf(PPropInfo));
      end;
   except
      on e:exception do
      begin
         raise Exception.Create( e.Message+' '+classe );

      end;
   end;
end;

function TNDDFilhos.Find(Propriedade: string; valor: Variant;
  Next: Boolean): TObject;
var
  vii : Integer;
  obj : TObject;
  vi : Integer;
begin
   Result := nil;
   valor := UpperCase( valor );
   if next then vi:=vItem+1
   else vi := 0;
   for vii:=vi to Self.Count-1 do
   begin
      obj := Self.Items[vii];
      if UpperCase( GetPropertyValue( obj, Propriedade ) )  = valor then
      begin
         result := obj;
         vItem := vii;
         Break;
      end;
   end;
end;

function TNDDFilhos.First: TObject;
begin
  vItem := 0;
  result := self.Actual;
end;

function TNDDFilhos.Last: TObject;
begin
  if count = 0 then
    result := nil
  else
  begin
    vItem := Count -1;
    result := self.Actual;
  end;
end;

function TNDDFilhos.Next: TObject;
begin
  if (vItem+1) > (Count-1) then
     Result := nil
  else
  begin
     Inc(vItem);
     result := self.Actual;
  end;
end;

end.
