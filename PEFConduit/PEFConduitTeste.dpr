program PEFConduitTeste;

uses
  Forms,
  uovF_PEFConduitTeste in 'uovF_PEFConduitTeste.pas' {ovF_PEFConduitAPP},
  uovF_PEFConduitAPPConfig in 'uovF_PEFConduitAPPConfig.pas' {ovF_PEFConduitAPPConfig},
  uovF_PEFConduitAPPConfigGrupo in 'uovF_PEFConduitAPPConfigGrupo.pas' {ovF_PEFConduitAPPConfigGrupo},
  uovF_PEFConduitAPPConfigCNPJ in 'uovF_PEFConduitAPPConfigCNPJ.pas' {ovF_PEFConduitAPPConfigCNPJ},
  uPEFServiceControl in 'uPEFServiceControl.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TovF_PEFConduitAPP, ovF_PEFConduitAPP);
  Application.CreateForm(TovF_PEFConduitAPPConfigCNPJ, ovF_PEFConduitAPPConfigCNPJ);
  Application.Run;
end.
