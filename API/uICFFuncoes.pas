{$Define ParametroSistemaBuffered}
unit uICFFuncoes;

interface

uses Windows, classes;


function iif( Flag : Boolean; ValueTrue, ValueFalse : variant) : variant;
function IfNull( value, default : variant ) : variant;

function SomenteNumeros( value : string ) : boolean;
function ZeroOuVazio( valor : string ) : boolean;
function RemoveCaracterEspecial(Texto : String ) : string;

Procedure DivideEndereco( var endereco : string; var TipoLogradouro : string; var Numero : string );
Procedure DivideTelefone( var Telefone : string; var DDD : string );
function SeparaDados( valor : string; Itens : TStringList; separador : Char='|' ) : boolean;

function RetornaCEP( cep : string; comTraco : boolean = true ) : string;

function lSeparaDados( valor : string; separador : Char='|' ) : TStringList;

implementation

uses Variants, SysUtils;

function ConvertAccentString(S: String): String;
  function ConvertAccentChar(C: Char): Char;
  begin
    case ord(C) of
      0192, 0193, 0194, 0195, 0196, 0197: result:= 'A';
      0224, 0225, 0226, 0227, 0228, 0229: result:= 'a';
      0200, 0201, 0202, 0203: result:= 'E';
      0232, 0233, 0234, 0235: result:= 'e';
      0204, 0205, 0206, 0207: result:= 'I';
      0236, 0237, 0238, 0239: result:= 'i';
      0210, 0211, 0212, 0213, 0214: result:= 'O';
      0242, 0243, 0244, 0245, 0246: result:= 'o';
      0217, 0218, 0219, 0220: result:= 'U';
      0249, 0250, 0251, 0252: result:= 'u';
      0199: result:= 'C';
      0231: result:= 'c';
    else
      result:= C;
    end;
  end;
var
  I: Integer;
begin
   for I:= 1 to length(S) do
      result:= result + ConvertAccentChar(S[I]);
end;


function somenteNumero( v : string ) : string;
var p : PChar;
begin
   Result := '';
   p := PChar( v );
   if p^<>#0 then
   repeat
       if p^in ['0'..'9'] then result := result + p^;
       Inc(p);
   until p^=#0
end;

function RetornaCEP( cep : string; comTraco : boolean = true ) : string;
begin
   cep := somenteNumero( cep );
   result := Copy( cep, 1, 5);
   if comTraco then
      result := result +'-';
   result := result + Copy(cep, 6,3);
end;


Procedure DivideTelefone( var Telefone : string; var DDD : string );
var
//   p : PChar;
   rawDDD : string;
   vOriginal : string;
begin
  DDD := '';
  rawDDD := '';
  vOriginal := Telefone;
  Telefone := Trim( somenteNumero( Telefone) );

  if telefone = '' then exit;

  if Telefone[1] = '0' then
  begin
    DDD := copy(Telefone, 1, 3);
    Delete(Telefone, 1,3);
  end
  else
  begin
    DDD := copy(Telefone, 1, 2);
    Delete(Telefone, 1,2);
  end;

  if not (Length(Telefone) in [8,9]) then
  begin
    Telefone := vOriginal;
    ddd := ''; 
  end;

//  p := PChar( telefone );;
//  if p^='(' then
//  begin
//     rawDDD := p^;
//     Inc(p);
//     if p^ <> ')' then
//     repeat
//        ddd := DDD + p^;
//        rawDDD := rawDDD + p^;
//        Inc(p);
//     until (p^=')') or (p^=#0);
//     if p^=')' then
//     begin
//        rawDDD := rawDDD + p^;
//        Delete(Telefone, 1, Length(rawDDD));
//        Telefone := somenteNumero( Telefone );
//     end else DDD := '';
//  end
//  else if p^<> #0 then
//  begin
//     repeat
//        ddd := DDD + p^;
//        Inc(p);
//     until not (p^ in ['0'..'9']) or (p^=#0);
//     if Length( DDD ) <= 3 then
//     begin
//        Delete(Telefone, 1, Length(DDD));
//        Telefone := somenteNumero( Telefone );
//     end else
//        ddd := '';
//  end;
  if (Length( DDD ) > 1) and (Length( DDD ) < 3) then
     DDD := '0'+ddd;
end;


{Dado uma linha de endereco este procedimento separa o que é tipo de logradouro do logradouro e do numero}
Procedure DivideEndereco( var endereco : string; var TipoLogradouro : string; var Numero : string );
const
   aTipoLogradouro : array[0..43] of string = ('AEROPORTO',
                                               'ALAMEDA',
                                               'ÁREA',
                                               'AVENIDA',
                                               'CAMPO',
                                               'CHÁCARA',
                                               'COLÔNIA',
                                               'CONDOMÍNIO',
                                               'CONJUNTO',
                                               'DISTRITO',
                                               'ESPLANADA',
                                               'ESTAÇÃO',
                                               'ESTRADA',
                                               'FAVELA',
                                               'FAZENDA',
                                               'FEIRA',
                                               'JARDIM',
                                               'LADEIRA',
                                               'LAGO',
                                               'LAGOA',
                                               'LARGO',
                                               'LOTEAMENTO',
                                               'MORRO',
                                               'NÚCLEO',
                                               'PARQUE',
                                               'PASSARELA',
                                               'PÁTIO',
                                               'PRAÇA',
                                               'QUADRA',
                                               'RECANTO',
                                               'RESIDENCIAL',
                                               'RODOVIA',
                                               'RUA',
                                               'SETOR',
                                               'SÍTIO',
                                               'TRAVESSA',
                                               'TRECHO',
                                               'TREVO',
                                               'VALE',
                                               'VEREDA',
                                               'VIA',
                                               'VIADUTO',
                                               'VIELA',
                                               'VILA'
                                               );
   aTipoLogradouro2 : array[0..43] of string = ( 'Aeroporto',
                                               'Alameda',
                                               'Área',
                                               'Avenida',
                                               'Campo',
                                               'Chácara',
                                               'Colônia',
                                               'Condomínio',
                                               'Conjunto',
                                               'Distrito',
                                               'Esplanada',
                                               'Estação',
                                               'Estrada',
                                               'Favela',
                                               'Fazenda',
                                               'Feira',
                                               'Jardim',
                                               'Ladeira',
                                               'Lago',
                                               'Lagoa',
                                               'Largo',
                                               'Loteamento',
                                               'Morro',
                                               'Núcleo',
                                               'Parque',
                                               'Passarela',
                                               'Pátio',
                                               'Praça',
                                               'Quadra',
                                               'Recanto',
                                               'Residencial',
                                               'Rodovia',
                                               'Rua',
                                               'Setor',
                                               'Sítio',
                                               'Travessa',
                                               'Trecho',
                                               'Trevo',
                                               'Vale',
                                               'Vereda',
                                               'Via',
                                               'Viaduto',
                                               'Viela',
                                               'Vila'
                                               );
var
   vii : Integer;
   p : PChar;
   parte : string;
begin
   TipoLogradouro := '';
   numero         := '';

   if endereco = '' then exit;

   if (uppercase(copy(endereco, 1, 2)) = 'R.') or (uppercase(copy(endereco, 1, 2)) = 'R ') or (uppercase(copy(endereco, 1, 2)) = 'R:') then
   begin
      delete(endereco, 1,2);
      endereco := 'Rua '+endereco;
   end
   else
   if (uppercase(copy(endereco, 1, 3)) = 'AV ') or (uppercase(copy(endereco, 1, 3)) = 'AV.') or (uppercase(copy(endereco, 1, 3)) = 'AV:') then
   begin
      delete(endereco, 1,3);
      endereco := 'Avenida '+endereco;
   end
   else
   if (uppercase(copy(endereco, 1, 4)) = 'ROD ') or (uppercase(copy(endereco, 1, 4)) = 'ROD.') then
   begin
      delete(endereco, 1,4);
      endereco := 'Rodovia '+endereco;
   end;

   for vii := 0 to length(aTipoLogradouro) -1 do
   begin
      parte := Copy( endereco, 1, length( aTipoLogradouro[vii] ));

      if uppercase(parte) = uppercase(aTipoLogradouro[vii]) then
      begin
         TipoLogradouro := aTipoLogradouro2[vii];
         Delete( endereco, 1, length( aTipoLogradouro[vii] ));
         Break;
      end;
   end;
   endereco := Trim( endereco );
   p := PChar(endereco);
   p := p+length( endereco )-1;
   if (p^<>#0) and (p^ in ['0'..'9']) then
   repeat
      Numero := p^ + numero;
      dec(p);
   until not (p^ in ['0'..'9']);
   Delete( endereco, Length(endereco)-Length( numero )+1, Length( numero ));

   endereco := Trim( endereco );
   {#SS19764 / 4}
   {-- Para corrigir o erro que ocorre quando no campo endereço é informado apenas a Tipo do Endereço e o Número e deixado o Endereço vazio --}
   if endereco = '' then begin
      endereco := ' '; {-- Variavel recebe um espaço em braco --}
   end;
   if endereco[ Length(endereco)] = ',' then
      Delete( endereco, Length(endereco), 1);


   TipoLogradouro := ConvertAccentString( TipoLogradouro ); {#T11803}

end;



function ZeroOuVazio( valor : string ) : boolean;
begin
   valor := trim( valor );
   result := (valor = '0') or (valor = '');
end;

function SomenteNumeros( value : string ) : boolean;
var
  p : pchar;
begin
  p := pchar( value );
  result := p^<>#0;
  while (p^<>#0) and result do begin
     if not (p^ in ['0'..'9'])  then
        result := false;
     inc(p);
  end;
end;


(*
  Se o valor for null retorna um default
*)
function IfNull( value, default : variant ) : variant;
begin
  if varIsNull( value ) then
    result := default
  else
    result := value;;
end;


{-----------------------------------------------------------------------------
  Procedimento: iif
  Programador : norldir        Data        : 28-jan-2004
  Parâmetros  : Flag : Boolean; ValueTrue, ValueFalse : variant
  Retorno     : variant
  Descrição   : in-line IF. only.
-----------------------------------------------------------------------------}
function iif( Flag : Boolean; ValueTrue, ValueFalse : variant) : variant;
begin
  if Flag then
     result := ValueTrue
  else
     result := ValueFalse;
end;

function RemoveCaracterEspecial(Texto : String ) : string;
var vTexto : string;
    p : pchar;
begin
   result := '';
   try
      vTexto := UpperCase(Texto);
      p := pchar(vTexto);
      while p^ <> #0 do begin
         case p^ of
            'A'..'Z' :;
            '0'..'9' :;
            #199:       p^ := 'C';
            #192, #193, #194, #195, #196, #197, #198: p^ := 'A';
            #200, #201, #202, #203:                   p^ := 'E';
            #204, #205, #206, #207:                   p^ := 'I';
            #210, #211, #212, #213, #214:             p^ := 'O';
            #217, #218, #219, #220:                   p^ := 'U';
            else
               p^ := ' ';
         end;
         inc( p );
      end;

      result := StringReplace( vTexto, ' ', '', [rfReplaceAll, rfIgnoreCase] );
   except
      on e : exception do begin
         raise Exception.Create(e.message);
      end;
   end;
end;

{-----------------------------------------------------------------------------

{-----------------------------------------------------------------------------
  Procedure: SeparaDados
  Autor:     Callian
  Data:      02-mai-2012

  Deve ser passado na assinatura um stringList sem Delimiter e DelimitedText, caso contrário,
  a regra aqui aplicada não sera funcional.

  Retorna os valores no string list em forma de array. Para acessar deve ser usado:

  Itens[0];Itens[1];Itens[2]
-----------------------------------------------------------------------------}
function SeparaDados( valor : string; Itens : TStringList; separador : Char='|' ) : boolean;
var
   i, p : PChar;
   item : string;
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
end;

function lSeparaDados( valor : string; separador : Char='|' ) : TStringList;
begin
  result := TStringList.Create;
  SeparaDados( valor, result, separador );
end;


initialization
finalization

end.


