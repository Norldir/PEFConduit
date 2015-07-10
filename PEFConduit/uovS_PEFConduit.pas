unit uovS_PEFConduit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, SvcMgr, Dialogs,
  uXMLConfig, uPEFConduitVareDiretorio;

type
  TPEFConduit = class(TService)
    procedure ServiceExecute(Sender: TService);
    procedure ServicePause(Sender: TService; var Paused: Boolean);
    procedure ServiceStart(Sender: TService; var Started: Boolean);
    procedure ServiceStop(Sender: TService; var Stopped: Boolean);
    procedure ServiceContinue(Sender: TService; var Continued: Boolean);
    procedure ServiceCreate(Sender: TObject);
  private
    xml : tconfiguracao;
    varredor : TPEFConduitVareDiretorio;
    FinalizaServico : Boolean;
    diretorioLog : string;
    procedure VarredorTerminate(Sender: TObject);
    function FinalizaProcessos: boolean;
    procedure StateChangeVarredor(sender: TObject;
      Estado: TEstadoExecucao);
    procedure Log(sender: TObject; Mensagem: STring);
    function Validadiretorios(xml: tconfiguracao;
      var msg: string): Boolean;
    procedure IniciaPara(iniciar: Boolean);
    procedure limpaLogs;
  public
    function GetServiceController: TServiceController; override;
    { Public declarations }
  end;

var
  PEFConduit: TPEFConduit;

implementation

uses Forms, uICFBase, DateUtils;

var
   CritSect : TRTLCriticalSection;
{$R *.DFM}

procedure TPEFConduit.Log(sender: TObject; Mensagem: STring);
var
   arq : TextFile;
   nomearquivolog : string;
begin
   nomearquivolog := diretorioLog+'log_'+formatDateTime('yyyy_mm_dd_hh', Now)+'.txt';
   EnterCriticalSection(CritSect);
   try
      AssignFile( arq, nomearquivolog);
      try
         if FileExists( nomearquivolog ) then
            append( arq )
         else
            Rewrite(arq);
         Writeln( arq, formatDateTime('hh:nn:ss.zzz', Now)+' '+mensagem );
      finally
         CloseFile( arq );
      end;
   finally
      LeaveCriticalSection(CritSect);
   end;
end;

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  PEFConduit.Controller(CtrlCode);
end;

function TPEFConduit.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

procedure TPEFConduit.ServiceExecute(Sender: TService);
begin
   log(Sender, 'Rodando');
   while (not(self.Terminated)) do
      ServiceThread.ProcessRequests(true); //executa enquanto o servico estiver em estado rodando.
   log(Sender, 'fim');
end;

procedure TPEFConduit.ServicePause(Sender: TService; var Paused: Boolean);
begin
   IniciaPara( false );
   log(Sender, 'Servico pausado');
end;

procedure TPEFConduit.ServiceStart(Sender: TService; var Started: Boolean);
var
  fDiretorioLog : string;
begin
  log(Sender, 'iniciando servico');
  try
     if not FileExists( ExtractFilePath(Application.ExeName)+'PEFCondutiConfig.xml' ) then
     begin
        log(Sender, 'O arquivo de configuração não pode ser localizado:'+ExtractFilePath(Application.ExeName)+'PEFCondutiConfig.xml');
        Started := False;
        Exit;
     end;

     xml := CarregaArquivoConfiguracao( ExtractFilePath(Application.ExeName)+'PEFCondutiConfig.xml' );

     xml.diretorioBase :=  IncludeTrailingPathDelimiter(xml.diretorioBase );

     FdiretorioLog := IncludeTrailingPathDelimiter( xml.diretorioBase);
     FdiretorioLog := FdiretorioLog+'log\';
     ValidaCriaDiretorio ( fDiretorioLog );
     log( sender,     FdiretorioLog );
     Log( Self, 'Criando thread varredora');

     varredor := TPEFConduitVareDiretorio.Create(true);
     varredor.OnTerminate := VarredorTerminate;
     varredor.onStateChange := StateChangeVarredor;
     varredor.onLog := Log;

     log(Sender, 'Servico iniciado');
     IniciaPara( True );
     diretorioLog := fDiretorioLog;

     limpaLogs;

  except
     on e:exception do
     begin
        log(Sender, e.Message);
     end;
  end;
end;

procedure TPEFConduit.ServiceStop(Sender: TService; var Stopped: Boolean);
begin
  log(Sender, 'Servico parado');
  Stopped := FinalizaProcessos;
end;

procedure TPEFConduit.ServiceContinue(Sender: TService;
  var Continued: Boolean);
begin
  log(Sender, 'Servico reiniciado');
  IniciaPara( True );
end;

procedure TPEFConduit.limpaLogs;
var
  vii : Integer;
  f : TSearchRec;
begin
   if (diretorioLog <> '') and (Pos('\log\', diretorioLog) > 0 ) then
   try
       if FindFirst(diretorioLog+'*.txt', faAnyFile, f )=0 then
       try
          repeat
             if fileexists( diretorioLog+f.Name ) then
             begin 
                if DaysBetween( FileDateToDateTime( f.Time ), now ) > 7 then
                begin
                   Log( self , 'removendo arquivo de log : '+diretorioLog+f.Name );
                   DeleteFile( diretorioLog+f.Name );
                end;
             end;
          until findnext(f ) <> 0;
       finally
           findclose(f);
       end;
   except
       on e:Exception do
          log(self, e.message)//hmmm, Dam what you want with this ?
   end;
end;

procedure TPEFConduit.ServiceCreate(Sender: TObject);
begin
   FinalizaServico := False;
   try
     diretorioLog    := ExtractFilePath( Application.ExeName );
     ValidaCriaDiretorio ( DiretorioLog+'log\' );
     DiretorioLog := DiretorioLog+'log\';
   except
     on e:Exception do log(Self, e.message);
   end;
   Log(Self, CmdLine );
   if FindCmdLineSwitch('debug',['-'], true) then Log(Self, 'Modo debug ativo');
   log(Sender, 'Criando servico');
end;


{Este método inicia e para o monitoramento dos diretorios
 das operadoras.}
procedure TPEFConduit.IniciaPara( iniciar : Boolean );
var
  msgerro : string;
begin
  if iniciar and varredor.Stoped then
  begin
     try
        Log( Self, 'Validando diretorios');
        if not Validadiretorios( xml, msgerro ) then
           log( Self, msgerro );
     finally
        //
     end;
     varredor.Start;
     Log( Self, 'Solicitando inicio do processo');
  end
  else if  not iniciar and not varredor.Stoped then
  begin
     varredor.Stop;
     Log( Self, 'Solicitando parada do processo');
  end;
end;


function TPEFConduit.FinalizaProcessos: boolean;
begin
   result := True;
   Log( Self, 'Finalizando processos, aguarde...');
   if Assigned(xml) then xml.Free;
   if Assigned( varredor ) then
   begin
       if not varredor.Stoped then
       begin
          varredor.Stop;    //suspende a tread
          while not varredor.Stoped do Application.ProcessMessages; //( 100 );
          varredor.Terminate;
          varredor.resume;
          varredor.WaitFor;
       end;
       varredor.Free;
   end;

   Log( Self, 'Processos finalizado...');
   FinalizaServico := True;
end;

procedure TPEFConduit.StateChangeVarredor(sender: TObject;
  Estado: TEstadoExecucao);
begin

end;

function TPEFConduit.Validadiretorios(xml: tconfiguracao;
  var msg: string): Boolean;
   procedure CriaPastas( dirBase, administradora : string );
   begin
       ValidaCriaDiretorio( dirBase+'\'+administradora+'\ENVIA\PROCESSA\');
       ValidaCriaDiretorio( dirBase+'\'+administradora+'\ENVIA\RETORNO\');

       ValidaCriaDiretorio( dirBase+'\'+administradora+'\CANCELAMENTO\PROCESSA\');
       ValidaCriaDiretorio( dirBase+'\'+administradora+'\CANCELAMENTO\RETORNO\');
   end;
var
  grupo : tgrupo;
  cnpj : tcnpj;
begin
  try
     varredor.clearDiretorioParaMonitorar;
     ValidaCriaDiretorio( xml.diretorioBase );
     if xml.grupos.grupo.first <> nil then
     repeat
        grupo := TGrupo( xml.grupos.grupo.current );
        if grupo.cnpjs.cnpj.first <> nil then
        repeat
           cnpj := Tcnpj( grupo.cnpjs.cnpj.current );
           CriaPastas( xml.diretorioBase+grupo.id+'\'+cnpj.id, 'REPOM');
           CriaPastas( xml.diretorioBase+grupo.id+'\'+cnpj.id, 'DBTRANS');
           CriaPastas( xml.diretorioBase+grupo.id+'\'+cnpj.id, 'PANCARY');
           CriaPastas( xml.diretorioBase+grupo.id+'\'+cnpj.id, 'NDDCARGO');
           CriaPastas( xml.diretorioBase+grupo.id+'\'+cnpj.id, 'TICKET');
           CriaPastas( xml.diretorioBase+grupo.id+'\'+cnpj.id, 'TARGET');

           varredor.addDiretorioParaMonitorar( xml.diretorioBase+grupo.id+'\'+cnpj.id+'\REPOM\ENVIA\', cnpj.administradoras.repom );
           varredor.addDiretorioParaMonitorar( xml.diretorioBase+grupo.id+'\'+cnpj.id+'\DBTRANS\ENVIA\', cnpj.administradoras.dbtrans );
           varredor.addDiretorioParaMonitorar( xml.diretorioBase+grupo.id+'\'+cnpj.id+'\PANCARY\ENVIA\', cnpj.administradoras.pancary);
           varredor.addDiretorioParaMonitorar( xml.diretorioBase+grupo.id+'\'+cnpj.id+'\NDDCARGO\ENVIA\', cnpj.administradoras.nddcargo);
           varredor.addDiretorioParaMonitorar( xml.diretorioBase+grupo.id+'\'+cnpj.id+'\TICKET\ENVIA\', cnpj.administradoras.ticket);
           varredor.addDiretorioParaMonitorar( xml.diretorioBase+grupo.id+'\'+cnpj.id+'\TARGET\ENVIA\', cnpj.administradoras.target);

           varredor.addDiretorioParaMonitorar( xml.diretorioBase+grupo.id+'\'+cnpj.id+'\REPOM\CANCELAMENTO\', cnpj.administradoras.repom );
           varredor.addDiretorioParaMonitorar( xml.diretorioBase+grupo.id+'\'+cnpj.id+'\DBTRANS\CANCELAMENTO\', cnpj.administradoras.dbtrans );
           varredor.addDiretorioParaMonitorar( xml.diretorioBase+grupo.id+'\'+cnpj.id+'\PANCARY\CANCELAMENTO\', cnpj.administradoras.pancary);
           varredor.addDiretorioParaMonitorar( xml.diretorioBase+grupo.id+'\'+cnpj.id+'\NDDCARGO\CANCELAMENTO\', cnpj.administradoras.nddcargo);
           varredor.addDiretorioParaMonitorar( xml.diretorioBase+grupo.id+'\'+cnpj.id+'\TICKET\CANCELAMENTO\', cnpj.administradoras.ticket);
           varredor.addDiretorioParaMonitorar( xml.diretorioBase+grupo.id+'\'+cnpj.id+'\TARGET\CANCELAMENTO\', cnpj.administradoras.target);

        until grupo.cnpjs.cnpj.next = nil;
     until xml.grupos.grupo.next = nil;
     result := True;
  except
     on e:Exception do
     begin
        result := false;
        msg := e.Message;
     end;
  end;
end;

procedure TPEFConduit.VarredorTerminate(Sender: TObject);
begin
   //varredor := nil;
   FinalizaServico := True;
   log( Sender, 'Varredor de diretórios finalizado');
end;

initialization
  InitializeCriticalSection(CritSect);

finalization
  DeleteCriticalSection(CritSect);

end.
