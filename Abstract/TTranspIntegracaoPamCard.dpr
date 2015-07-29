{ -- Rastreabilidade C�digo x Chamados �-
Data	         Autor	                   Projeto	 Chamado
20/10/2011	 Allison Diego dos Santos            $Cxxxxx

  --          Fim Rastreabilidade      �- }
program TTranspIntegracaoPamCard;

uses
  SvcMgr,
  SysUtils,
  uIntegracaoPamCard in 'uIntegracaoPamCard.pas' {IntegracaoPamCard: TService};

{$R *.RES}

{-- Constante que contem o par�metro padr�o para informa��o da empresa }
const
   cParametroEmpresa = '-empresa=';

{-- Fun��o que retorna o nome da instnacia a ser criada, no nosso caso ser� o nome da empresa --}
function getInstanceName : string;
var
   index : Integer;
begin
   Result := '';
   {-- Procura por parametros --}
   for index := 1 to ParamCount do
   begin
     {-- Verifica se o par�metro informaado � id�ntico --}
     if SameText( cParametroEmpresa, Copy( ParamStr( index ), 1, Length( cParametroEmpresa ) ) ) then
     begin
        {-- Recupera o nome do par�metro informado}
        Result := Copy( ParamStr( index ), Length( cParametroEmpresa ) + 1, MaxInt );
        Break;
     end;
   end;
   {-- Verifica se foi informado algum par�metro --}
   if ( ( Result <> '' ) and ( Result[1] = '"' ) ) then
   begin
      {-- Remove as '"' do par�metro informado --}
      Result := AnsiDequotedStr( result, '"' );
   end;
end;

var
   instanceName : String;
begin
                                 
  Application.Initialize;
  Application.CreateForm(TIntegracaoPamCard, IntegracaoPamCard);
  {--Obt�m o nome da instancia informada, se informada --}
  instanceName := getInstanceName;
  {-- Define o nome da instancia --}
  IntegracaoPamCard.instanceName := instanceName;
  Application.Run;
end.
