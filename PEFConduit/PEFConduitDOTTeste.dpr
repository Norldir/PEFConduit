program PEFConduitDOTTeste;

uses
  Forms,
  uovF_PEFConduitDOTTeste in 'uovF_PEFConduitDOTTeste.pas' {ovF_PEFConduitDOTTeste};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TovF_PEFConduitDOTTeste, ovF_PEFConduitDOTTeste);
  Application.Run;
end.
