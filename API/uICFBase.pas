unit uICFBase;

interface

uses Classes, SysUtils;

type
  tOperacaoPEF = ( toAbreCiot, toCancelaCiot, toConsultaOperacaoPendente, toConsultaCIOT, toExtrato, toPagamentoImediatoParcela, toAlteraParcela, toUNK  );
  tStatusRetorno = ( tsrAprovado, tsrCancelado, tsrErro, tsrAguardando, tsrInformacao, tsrUNK );
  tMotivoRetorno = ( tmrEventoDoContrato, tmrInformativo );
  TNotifyLogEvent = procedure(sender : TObject; Mensagem : string ) of object;

function SeparaDados( valor : string; Itens : TStringList; separador : Char='|' ) : boolean;
function Split( delimiter : string; value : string ) : TStringList;
function Merge( delimiter : string; a : TStringList) : string;

function ValidaCriaDiretorio( dir : string ) : Boolean;

implementation

function SeparaDados( valor : string; Itens : TStringList; separador : Char='|' ) : boolean;
var
 i, p : PChar;
 item : string;
begin
 if valor <> '' then
 begin
    p := PChar(valor);
    try
       i := p;
       repeat
          if p^ = separador then
          begin
             item := Copy( i, 1, (p-i) );
             Itens.Add( Trim( item ) );
             i := p+1;
          end;
          inc(p);
       until p^=#0;
       item := i;
       Itens.Add( item );
       result := true;
    except
       result := False;
    end;
 end
 else
   result := true;
end;

function Split( delimiter : string; value : string ) : TStringList;
var
  p : PChar;
  v : string;
begin
  result := TStringList.Create;
  if value <> '' then
  begin
     p := PChar(value);
     v := '';
     repeat
        if p^ = delimiter then
        begin
           result.Add( v );
           v:=''
        end else v:=v+p^;
        Inc(p);
     until p^= #0;
     if v<>'' then
        Result.Add( v );
  end;
end;

function Merge( delimiter : string; a : TStringList) : string;
begin
   result := a[0];
   a.Delete(0);
   while a.Count > 0 do
   begin
      result := Result+delimiter+a[0];
      a.Delete(0);
   end;
   result := Result+delimiter;
   a.Free;
end;

function ValidaCriaDiretorio( dir : string ) : Boolean;
var
  vDiretorioAnalise : string; 
begin
   result := True;
   with Split( '\', dir ) do
   try
     vDiretorioAnalise := Strings[0]; // c:\
     Delete(0);
     while Count > 0 do
     begin
        vDiretorioAnalise := vDiretorioAnalise+'\'+strings[0];
        if not DirectoryExists( vDiretorioAnalise ) then
          result := CreateDir( vDiretorioAnalise );
        if not Result then Break;
        Delete(0);
     end;
   finally
     Free;
   end;
end;

end.
