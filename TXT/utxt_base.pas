{
 Tecinco Informática - Todos os direitos reservados - 2012.
 Autor: Norldir Kunkel
}
unit utxt_base;

interface

uses classes, Contnrs;

type
  TOperacaoLeituraArquivo = (opVoltaParaPai, opFinalArquivo, opProximaLinha);

  TTXTFilhos = class( TList )
  private
     vItem : Integer;
  public
     destructor destroy;  override;
     function First  : TObject; overload;
     function Next   : TObject;
     function Actual : TObject;
     function Find(Propriedade: string; valor: Variant; Next : Boolean = false): TObject;
     function Last : TObject; overload;
  end;

  TTXT_Base = class (TComponent )
  protected
    property name;
    property tag;
  end;


  TTXT = class( TTXT_Base )
  protected
     FRegistro : string;
     Fversao : string;
     FversaoCompativel : string;
  private
    teste : boolean;
    function Delimitador : string;
    function EOL : string;
    constructor create( owner : TComponent ); overload; override;
    function SetAsTStrings(value: TStrings): boolean;
    function LeArquivo(var arq : textfile; var linha : string;  var operacao : TOperacaoLeituraArquivo; var msg: string): Boolean;
    function LeTX2(arq : TStringList; var linha : string;  var operacao : TOperacaoLeituraArquivo; var msg: string): Boolean;
  public
    function GetAsString: widestring;
    function GetAsTx2String : widestring;
    procedure SaveToFile( arquivo : string );
    procedure SaveToTX2File( arquivo : string );
    function LoadFromFile( arquivo : string; var msg : string ) : Boolean;
    function LoadFromTX2File( arquivo : string; var msg : string ) : Boolean;
    function LoadFromTX2( arq : TStringList; var msg : string ) : Boolean;
    constructor create; overload;
    destructor Destroy; override;
     
  published
     property Registro : string read FRegistro;
     property versao   : string read Fversao;
  end;

  TTXT_PEF = class( TTXT )
  end;

implementation

uses
  SysUtils, windows, IntfInfo, TypInfo, uICFBase;
var
   class_var_Refs : TStringList;
   CritSect : TRTLCriticalSection;

{ TNDD }

function SetObjectPropAsText( Instance: TObject; PropInfo: PPropInfo; valor : string ) : Boolean;
var
 I: LongInt;
 E: Extended;
 I64: Int64;
 ws : WideString;
 dt : TdateTime;
 fs  : TFormatSettings;
begin
  GetLocaleFormatSettings( LOCALE_USER_DEFAULT , fs);
  fs.DecimalSeparator := '.';
  fs.DateSeparator    := '/';
  fs.LongDateFormat   := 'dd/mm/yyyy';
  fs.LongTimeFormat   := 'hh:nn:ss';
  fs.ShortDateFormat  := 'dd/mm/yyyy';
  fs.ShortTimeFormat  := 'h:n';
  fs.TimeSeparator    := ':';
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
             result := (valor <> '') and TryStrToDateTime( valor, dt, fs);
             e := dt;
           end
           else
           begin
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
           result := (valor <> '') and TryStrToInt64(valor, I64 );
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
 fs  : TFormatSettings;
begin
  fs.DecimalSeparator := '.';
  fs.DateSeparator    := '/';
  fs.LongDateFormat   := 'dd/mm/yyyy';
  fs.LongTimeFormat   := 'hh:nn:ss';
  fs.ShortDateFormat  := 'dd/mm/yyyy';
  fs.ShortTimeFormat  := 'h:n';
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
          if DT = 0 then Result := ''
                    else Result := FormatDateTime('dd/mm/yyyy hh:nn:ss', DT);
        end
        else
          Result := FloatToStr(E, fs);
      end;
    tkWString:
      Result := GetWideStrProp(Instance, PropInfo);
    tkString,
    tkLString:
    begin
      Result := GetStrProp(Instance, PropInfo);
      Result := StringReplace( result, #10, ' ', [rfReplaceAll]);
      Result := StringReplace( result, #13, ' ', [rfReplaceAll]);
      Result := StringReplace( result, '|', ' ', [rfReplaceAll]);
    end;
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

constructor TTXT.create(owner: TComponent);
begin
  inherited;
  teste := false;
end;

function TTXT.Delimitador: string;
begin
   result := '|';
end;

function TTXT.EOL: string;
begin
   result := #13#10;
end;


function TTXT.GetAsString: widestring;
var
  PropList: PPropList;
  Count, i: Integer;
  Kind: TTypeKind;
  Obj : TObject;
  objList : TTXTFilhos;
  nddObj : TTXT;
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
                if (obj is TTXTFilhos) then
                begin
                   objList := (obj as TTXTFilhos);
                   if objList.First <> nil then
                   repeat
                      obj := objList.Actual;
                      if (obj is TTXT) then
                      begin
                         nddObj := TTXT( Obj );
                         result := result + Eol + nddObj.GetAsString;
                      end;
                   until objList.Next = nil;
                end else if (obj is TTXT) then
                begin
                   nddObj := TTXT( Obj );
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


function TTXT.SetAsTStrings( value : TStrings ): boolean;
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
                 if (PropList[I].Name = 'Registro') or (PropList[I].Name='versao') then
                 else
                 begin
                     if item >= value.count then //raise Exception.Create('A quantidade de valores na linha é menor que o requerido pelo registro!')
                     else
                     begin
                       valor := value[ item ];
                       SetObjectPropAsText( self, PropList[I], valor );
                     end;
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

function TTXTFilhos.Actual: TObject;
begin
   if vItem >= count then
      result := nil
   else
      result := Self.Items[ vItem ];
end;

destructor TTXTFilhos.destroy;
var
   obj : TObject;
begin
   while Count > 0 do
   begin
      obj := TObject(Items[0]);
      obj.Free;
      Delete(0);
   end;
end;


type
   TAddFilho = function : TTXT of object;

function TTXT.LeArquivo(var arq : textfile; var linha : string; var operacao : TOperacaoLeituraArquivo; var msg: string): Boolean;
var
  Dados : TStringList;
  filho : TTXT;
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
              else if (Dados[0] = FRegistro) then
              begin
                 if ((Dados[1] = Fversao) or (Pos(Dados[1], FversaoCompativel) > 0))then
                 begin
                    UltimoRegistro := Dados[0];
                    try
                       Self.SetAsTStrings( dados );
                    except
                       on e:Exception do
                       begin
                          raise Exception.Create( 'registro: '+Fregistro+'-'+e.message );
                       end;
                    end;
                    if Eof( arq ) then
                       operacao := opFinalArquivo
                    else
                    begin
                       Readln( arq, linha );
                       operacao := opProximaLinha;
                    end;
                 end
                 else
                 begin
                    result := False;
                    msg := 'registro '+dados[0]+' espera versao '+Fversao+' mas encontrou '+dados[1];
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
                     msg := 'Linha tipo '+Dados[0]+' não reconhecida ou fora de ordem apos a linha '+FRegistro+' - '+e.Message;
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


function TTXT.LoadFromFile(arquivo: string; var msg: string): Boolean;
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
        result := LeArquivo( arq, linha, operacao, msg);
     finally
       CloseFile( arq );
     end;
  except
   on e:Exception do
   begin
      result := False;
      msg:= e.Message+' - '+arquivo;
   end;
  end;
end;

procedure TTXT.SaveToFile(arquivo: string);
var
  arq : TextFile;
begin
  AssignFile( arq, arquivo);
  Rewrite( arq );
  try
    Writeln( arq, getasString );
  finally
    CloseFile( arq );
  end;
end;

function GetProperty( self : TObject; prop : string ) : PPropInfo;
var
  PropList: PPropList;
  Count, i: Integer;
  Kind: TTypeKind;
  classe : string;
begin
   result := nil;
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
            result :=  PropList[I];
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


function TTXTFilhos.Find(Propriedade: string; valor: Variant; Next : Boolean = false): TObject;
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

function TTXTFilhos.First: TObject;
begin
  vItem := 0;
  result := self.Actual;
end;

function TTXTFilhos.Last: TObject;
begin
  if count = 0 then
    result := nil
  else
  begin
    vItem := Count -1;
    result := self.Actual;
  end;
end;

function TTXTFilhos.Next: TObject;
begin
  if (vItem+1) > (Count-1) then
     Result := nil
  else
  begin
     Inc(vItem);
     result := self.Actual;
  end;
end;

function TTXT.LoadFromTX2(arq: TStringList; var msg: string): Boolean;
var
  linha : string;
  operacao : TOperacaoLeituraArquivo;
begin
  operacao := opProximaLinha;
  try
     linha := arq[0];
     result := LeTX2( arq, linha, operacao, msg);
     if arq.Count > 0 then
        raise Exception.Create('Não foi possivel consumir o arquivo por completo linha com erro : '+copy(arq.text,1,100));
  except
   on e:Exception do
   begin
      result := False;
      msg:=e.Message;
   end;
  end;
end;

function TTXT.LeTX2(arq: TStringList; var linha: string;
  var operacao: TOperacaoLeituraArquivo; var msg: string): Boolean;

  function ReadLn( arq : TStringList; var linha : string ) : Boolean;
  begin
     if arq.Count > 0 then
     begin
        linha := arq[0];
        arq.Delete(0);
        result := True;
     end
     else
        result := False;
  end;

var
  filho : TTXT;
  m : Tmethod;
  UltimoRegistro : string;

  Propriedade : string;
  Valor       : string;
  viEqual     : Integer;
  PropInfo    : PPropInfo;

begin
    Result := true;
    UltimoRegistro := '';
    try
       while ( result ) do
       begin
           if linha <> '' then
           begin
              viEqual := Pos('=', linha);
              if viEqual = 0 then raise Exception.Create('Formato incorreto da linha de dados : '+linha);
              valor := linha;
              Propriedade := lowercase( Copy( valor, 1, viEqual-1) );
              Delete( valor, 1, viEqual);
              if UpperCase( Propriedade ) = 'SALVARPARTE' then
              begin
                if ReadLn( arq, linha) then
                  operacao := opProximaLinha
                else
                  operacao := opFinalArquivo;
              end
              else
              if UpperCase( Propriedade ) = 'INCLUIRPARTE' then
              begin
                 if Valor = FRegistro then
                    operacao := opVoltaParaPai
                 else
                 begin
                    m.Code := Self.MethodAddress('add'+valor); //find method code
                    if Assigned( m.code) then
                    try
                      m.Data := pointer(Self); //store pointer to object instance
                      filho := TAddFilho(m);
                      if not ReadLn( arq, linha ) then
                        operacao := opFinalArquivo
                      else
                      begin
                        result := filho.LeTX2( arq, linha, operacao, msg);
                        if operacao = opVoltaParaPai then operacao := opProximaLinha;
                      end;
                      UltimoRegistro := valor;
                    except
                      on e:exception do
                      begin
                        result := False;
                        msg := 'Linha tipo '+valor+' não reconhecida ou fora de ordem apos a linha '+FRegistro+' - '+e.Message;
                        operacao := opFinalArquivo;
                      end;
                    end
                    else
                    begin
                       operacao := opVoltaParaPai;
                    end;
                 end;
              end
              else
              begin
                 PropInfo := GetProperty( Self, Propriedade );
                 if not Assigned( PropInfo ) then raise Exception.Create('A propriedade '+propriedade+' não existe para o registro '+self.FRegistro);
                 if (Propriedade = 'registro') then
                 begin
                    if ReadLn(arq, linha ) then operacao := opProximaLinha else operacao := opFinalArquivo;
                 end
                 else
                 if (Propriedade = 'versao') then
                 begin
                    if (valor <> Fversao) and (Pos(valor, FversaoCompativel) = 0)then
                    begin
                       result := False;
                       msg := 'registro '+self.FRegistro+' espera versao '+Fversao+' mas encontrou '+valor;
                       operacao := opFinalArquivo
                    end;
                    if ReadLn(arq, linha ) then operacao := opProximaLinha else operacao := opFinalArquivo;
                 end
                 else
                 begin
                    try
                       SetObjectPropAsText( Self, PropInfo, valor );
                       if ReadLn(arq, linha ) then operacao := opProximaLinha else operacao := opFinalArquivo;
                    except
                       on e:Exception do
                       begin
                          result := False;
                          msg := 'registro: '+Fregistro+', propriedade: '+Propriedade+' - '+e.message;
                          operacao := opFinalArquivo;
                       end;
                    end;
                 end
              end;
           end
           else
           begin
              if ReadLn(arq, linha ) then operacao := opProximaLinha else operacao := opFinalArquivo;
           end;

           if operacao <> opProximaLinha then
              Break;

       end;
    except
      on e:Exception do
      begin
         result := False;
         msg := 'registro: '+Fregistro+', propriedade: '+Propriedade+' - '+e.message;
      end;
    end;
end;

function TTXT.LoadFromTX2File(arquivo: string; var msg: string): Boolean;
var
  arq : TextFile;
  linha : string;

  TX2 : TStringList;

begin
  try
     TX2 := TStringList.Create;
     try
        AssignFile( arq, arquivo);
        Reset( arq );
        try
           repeat

             Readln( arq, linha );
             TX2.Add( linha  )
           until Eof(arq );
        finally
          CloseFile( arq );
        end;

        result := LoadFromTX2( TX2, msg );

     finally
        TX2.Free;
     end;


  except
   on e:Exception do
   begin
      result := False;
      msg:=e.Message;
   end;
  end;
end;

procedure TTXT.SaveToTX2File(arquivo: string);
var
  arq : TextFile;
begin
  AssignFile( arq, arquivo);
  Rewrite( arq );
  try
    Writeln( arq, getAsTx2String );
  finally
    CloseFile( arq );
  end;
end;

function TTXT.GetAsTx2String: widestring;
var
  PropList: PPropList;
  Count, i: Integer;
  Kind: TTypeKind;
  Obj : TObject;
  objList : TTXTFilhos;
  nddObj : TTXT;
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
                if (obj is TTXTFilhos) then
                begin
                   objList := (obj as TTXTFilhos);
                   if objList.First <> nil then
                   repeat
                      obj := objList.Actual;
                      if (obj is TTXT) then
                      begin
                         nddObj := TTXT( Obj );
                         result := result + Eol+
                                   'INCLUIRPARTE='+nddObj.FRegistro+EOL+
                                   nddObj.GetAstx2String+
                                   'SALVARPARTE='+nddObj.FRegistro+EOL;
                      end;
                   until objList.Next = nil;
                end else if (obj is TTXT) then
                begin
                   nddObj := TTXT( Obj );
                   result := result+
                             'INCLUIRPARTE='+nddObj.FRegistro+EOL+
                             nddObj.GetAstx2String+EOL+
                             'SALVARPARTE='+nddObj.FRegistro+EOL + Eol;
                end;
             end;
          end
          else
          begin
              if (PropList[I].Name = 'Tag') or (PropList[I].Name='Name') then
              else
              begin
                 if teste and (GetObjectPropAsText(self, PropList[I]) = '') then
                   result := result + PropList[I].Name
                 else
                   result := result +  PropList[I].Name+'='+GetObjectPropAsText(self, PropList[I])+EOL;
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

constructor TTXT.create;
begin
  inherited create(nil);
  if FindCmdLineSwitch('debug', ['-'], True ) then
  begin
     EnterCriticalSection(CritSect);
     try
        class_var_Refs.AddObject(  Self.ClassName, self );
     finally
        LeaveCriticalSection(CritSect);
     end;
  end;
end;

destructor TTXT.Destroy;
begin
  if FindCmdLineSwitch('debug', ['-'], True ) then
  begin
     EnterCriticalSection(CritSect);
     try
        class_var_Refs.Delete(  class_var_Refs.IndexOfObject( self ) );
     finally
        LeaveCriticalSection(CritSect);
     end;
  end;
  inherited;
end;

initialization
   InitializeCriticalSection(CritSect);
   class_var_Refs := TStringList.Create;

finalization
   DeleteCriticalSection(CritSect);
   if class_var_Refs.Count <> 0 then
   begin
      class_var_Refs.SaveToFile( 'dump_txt.txt'  );
      class_var_Refs.Free;
   end;

end.
