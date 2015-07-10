program TesteIntegracaoContratoFrete;

uses
  Forms,
  uT5Funcoes,
  uovF_TesteIntegracaocontratoFrete in 'uovF_TesteIntegracaocontratoFrete.pas' {Form2},
  uoDM_Acesso in '..\uoDM_Acesso.pas' {oDM_Acesso: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(ToDM_Acesso, oDM_Acesso);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
