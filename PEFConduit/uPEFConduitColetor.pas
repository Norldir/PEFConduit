unit uPEFConduitColetor;

interface

type
  TTipoEstatistica = (tepefAprovados, tepefRejeitados );
const
  cTipoEstatisticaDesc : array[0..1] of string = ('Aprovados', 'Rejeitados' );

function coletorEstatistica( TipoEstatistica : TTipoEstatistica;
                              empresa : string;
                              Parametros : Variant;
                              var mensagem : string ) : boolean;
implementation

uses Windows, forms, SysUtils, classes, Variants,
     IdHTTP, IdIOHandlerSocket, IdSSLOpenSSL, IdComponent;
var
   CritSect : TRTLCriticalSection;

function EnviaEstatistica( var mensagem : string ) : boolean;
begin
   result := true;
end;

function coletorEstatistica( TipoEstatistica : TTipoEstatistica;
                              empresa : string;
                              Parametros : Variant;
                              var mensagem : string ) : boolean;
var
   diretorio : string;
   arquivo   : string;

   conteudo : TStringList;

   pFloat : Extended;
   AnoMes : string;
begin
  try
    diretorio := ExtractFilePath( Application.ExeName );
    arquivo := diretorio + empresa+'.pefest';
    AnoMes := FormatDateTime('yyyymm', Now );
    mensagem := 'entrando na seção critica';
    EnterCriticalSection(CritSect);
    try
       conteudo := TStringList.create;
       try
          if FileExists( arquivo ) then
             conteudo.LoadFromFile( arquivo );
          mensagem := 'Totalizando';
          if TipoEstatistica = tepefAprovados then
          begin
             try
                pFloat := Parametros[0];
             except
                pFloat := 0;
             end;
             conteudo.Values[ 'Aprovados_'+anomes ] := IntToStr( StrToIntDef( conteudo.Values['Aprovados_'+anomes], 0) +1 );
             conteudo.Values[ 'Aprovados_'+anomes+'_valor' ] := FloatToStr( StrToFloatDef( conteudo.Values['Aprovados_'+anomes+'_valor'], 0) + pFloat  );
          end;
          mensagem := 'Salvando arquivo';
          conteudo.SaveToFile( arquivo );
       finally
          conteudo.free;
       end;
    finally
       mensagem := 'Sainda seção critica';
       LeaveCriticalSection(CritSect);
    end;
    mensagem := '';
    result := True;
  except
    on e:exception do
    begin
       mensagem := mensagem+':'+e.Message;
       result := False;
    end;
  end;
end;

initialization
  InitializeCriticalSection(CritSect);

finalization
  DeleteCriticalSection(CritSect);
end.
