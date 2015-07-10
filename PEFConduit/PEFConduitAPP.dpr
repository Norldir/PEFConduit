program PEFConduitAPP;

uses
  Forms,
  uovF_PEFConduitAPPConfig in 'uovF_PEFConduitAPPConfig.pas' {ovF_PEFConduitAPPConfig},
  uovF_PEFConduitAPPConfigGrupo in 'uovF_PEFConduitAPPConfigGrupo.pas' {ovF_PEFConduitAPPConfigGrupo},
  uovF_PEFConduitAPPConfigCNPJ in 'uovF_PEFConduitAPPConfigCNPJ.pas' {ovF_PEFConduitAPPConfigCNPJ},
  uPEFServiceControl in 'uPEFServiceControl.pas',
  uovF_PEFConduitAPP in 'uovF_PEFConduitAPP.pas' {ovF_PEFConduitAPP},
  uPEFServiceControl2 in 'uPEFServiceControl2.pas',
  uPEFConduitAtualiza in 'uPEFConduitAtualiza.pas';

{$R *.res}
{$R PefConduitAppAdmin.RES}

{
 http://www.exampledb.com/run-delphi-application-as-administrator-windows.htm
 C:\projetos\transp_new\source\IntegracaoContratoFrete\PEFConduit>brcc32 RequestAdmin.RC -fo PefConduitAppAdmin.RES

}


begin
  Application.Initialize;
  Application.CreateForm(TovF_PEFConduitAPP, ovF_PEFConduitAPP);
  Application.Run;
end.
