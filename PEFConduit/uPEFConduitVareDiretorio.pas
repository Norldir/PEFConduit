unit uPEFConduitVareDiretorio;

interface

uses
  Classes {$IFDEF MSWINDOWS} , Windows {$ENDIF}, uPEFConduitProcessaArquivo;

{$WARN SYMBOL_PLATFORM off}

type
  TEstadoExecucao = (vsRunning, vsStoped, vsStoping);
  TNotifyStateChangeEvent = procedure( sender : TObject; Estado : TEstadoExecucao ) of object;
  TNotifyLogEvent = procedure(sender : TObject; Mensagem : string ) of object;

type
  TPEFConduitVareDiretorio = class(TThread)
  private
    Semaphore : Cardinal; //http://edn.embarcadero.com/article/29908
    FWaitForDuration : Integer; //tempo de espera por uma vaga no semaphoro
        
    FListaProcessadores : TThreadList; //lista de threads ativas. Usada para controlar quantos processos estão em execução no momento.
    FlistaDiretorio : TStringList;
    FconfigAdministradora : TObject;
    FDiretoro : string;

    mensagem : string;

    FStoped : Boolean;
    FinternalStop : Boolean;
    FonStateChange: TNotifyStateChangeEvent;
    FonLog: TNotifyLogEvent;
    FTotalProcessadores: integer;

    procedure SetName;


    {Métodos do... exigem sincronização de execução,
     Somente deve ser chamado por synchronize. Por que? estude ttreads}
    procedure doLog;
    procedure DoAddDiretorioParaMonitorar;
    procedure DoClearDiretorioParaMonitorar;
    procedure doStop;
    procedure doStart;
    procedure doStoped;

    procedure ProcessaDiretorios;
    procedure VarreDiretorioPendente(diretorio: string;
      ObjOperadora: TObject);
    procedure processadorEnd(sender: TObject); //evento disparado quando termina um processador de arquivo
    function processadorStart(arquivo: string;
      ObjOperadora: TObject): TPEFConduitProcessaArquivo;

    procedure VarreDiretorio(diretorio: string; ObjOperadora: TObject);
    procedure retomaProcessosPendentes;
    procedure limpaLogs;
    procedure LogIt( Mensagem : string );
  protected
    procedure Execute; override;
  public
    constructor create( Createsuspended : Boolean ); overload;
    constructor create( Createsuspended : Boolean; Processadores : integer ); overload;
    destructor destroy; override;

    procedure clearDiretorioParaMonitorar;
    procedure addDiretorioParaMonitorar( diretorio : string; config : TObject );
    procedure Stop;
    procedure Start;
    function Stoped : boolean;

    property TotalProcessadores : integer read FTotalProcessadores write FTotalProcessadores;
    property onStateChange : TNotifyStateChangeEvent read FonStateChange write FonStateChange;
    property onLog : TNotifyLogEvent read FonLog write FonLog;
  end;

implementation

uses SysUtils, uICFBase, Math, DateUtils;

{ Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure PEFConduitVareDiretorio.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }

{$IFDEF MSWINDOWS}
type
  TThreadNameInfo = record
    FType: LongWord;     // must be 0x1000
    FName: PChar;        // pointer to name (in user address space)
    FThreadID: LongWord; // thread ID (-1 indicates caller thread)
    FFlags: LongWord;    // reserved for future use, must be zero
  end;
{$ENDIF}

{ PEFConduitVareDiretorio }

procedure TPEFConduitVareDiretorio.SetName;
{$IFDEF MSWINDOWS}
var
  ThreadNameInfo: TThreadNameInfo;
{$ENDIF}
begin
{$IFDEF MSWINDOWS}
  ThreadNameInfo.FType := $1000;
  ThreadNameInfo.FName := 'Varredor';
  ThreadNameInfo.FThreadID := $FFFFFFFF;
  ThreadNameInfo.FFlags := 0;
  try
    RaiseException( $406D1388, 0, sizeof(ThreadNameInfo) div sizeof(LongWord), @ThreadNameInfo );
  except
  end;
{$ENDIF}
end;

procedure TPEFConduitVareDiretorio.VarreDiretorioPendente( diretorio : string; ObjOperadora : TObject );
   procedure IniciaProcesso( arquivo : string );
   begin
      processadorStart( diretorio+arquivo, ObjOperadora );
   end;
var
   sr : TSearchRec;
   arquivo : string;
begin
   if FindFirst( diretorio+'*.PRO', faArchive, sr ) = 0 then
   begin
      repeat
          arquivo := upperCase( sr.Name );
          IniciaProcesso( arquivo );
          if terminated then Break;
      until FindNext( sr ) <> 0;
      FindClose( sr );
   end;
   if FindFirst( diretorio+'*.WAIT', faArchive, sr ) = 0 then
   begin
      repeat
          arquivo := upperCase( sr.Name );
          IniciaProcesso( arquivo );
          if terminated then Break;
      until FindNext( sr ) <> 0;
      FindClose( sr );
   end;
end;

procedure TPEFConduitVareDiretorio.retomaProcessosPendentes;
var
   vii : Integer;
   diretorioAtual : string;
   ObjOperadora : TObject;
begin
   for vii:=0  to FlistaDiretorio.Count-1 do
   begin
      diretorioAtual := FlistaDiretorio[vii];
      ObjOperadora   := FlistaDiretorio.objects[vii];

      VarreDiretorioPendente( diretorioAtual+'PROCESSA\' , ObjOperadora);

      if Terminated then Break;
   end;
end;

procedure TPEFConduitVareDiretorio.Execute;
var
  i : Integer;
begin
  if FindCmdLineSwitch('debug',['-'], true) then LogIt('ID'+intToStr(self.Handle)+' iniciando varredor');

  SetName;
  FinternalStop := false;

  if FindCmdLineSwitch('debug',['-'], true) then LogIt('ID'+intToStr(self.Handle)+' limpando logs');
  limpaLogs;

  if FindCmdLineSwitch('debug',['-'], true) then LogIt('ID'+intToStr(self.Handle)+' retomando pendencias');
  retomaProcessosPendentes;

  if FindCmdLineSwitch('debug',['-'], true) then LogIt('ID'+intToStr(self.Handle)+' Pronto para novos arquivos');

  while not Terminated  do
  begin

    if FindCmdLineSwitch('debug',['-'], true) then
    begin
       if (i mod 100) = 0 then
       begin
          LogIt('ID'+intToStr(self.Handle)+' verrificando novos arquivos.');
          i := 0;
       end;
       i := i +1;
    end;

    try
       ProcessaDiretorios;
    except
       on e:exception do
       begin
          //FinternalStop := True;
          LogIt( 'TPEFConduitVareDiretorio.Execute:'+e.Message );
       end;
    end;

    if FinternalStop then
    begin
       LogIt( 'TPEFConduitVareDiretorio.Execute: Suspendendo.' );
       suspend;
       FinternalStop := false;
       //Sleep(20000); // espera 10 segundos, pois em 80% dos casos foi detectado que é o antiviusa ou firewall, então espera o antivirus terminar a varedura no arquivo para continuar
    end else
       Sleep(100);
  end;

  if FindCmdLineSwitch('debug',['-'], true) then LogIt('ID'+intToStr(self.Handle)+' verficação de novos arquivos finalizada');
end;

{Quando um processador de arquivos termina, ele executa este evento}
procedure TPEFConduitVareDiretorio.processadorEnd( sender : TObject );
begin
   FListaProcessadores.Remove( sender ); //remove ele da lista
   ReleaseSemaphore(Semaphore, 1, nil); //libera o semaphoro
end;

   function somenteNumero( value : string ) : Boolean;
   var
      p: PChar;
   begin
      Result := true;
      p := PChar(value);
      repeat
         if not (p^ in ['0'..'9']) then
         begin
            Result := False;
            Break;
         end;
         inc(p);
      until p^= #0;
   end;
   
{Este procedimento cria, configura e iniciar o processador do arquivo}
function TPEFConduitVareDiretorio.processadorStart( arquivo : string; ObjOperadora :TObject ) : TPEFConduitProcessaArquivo;
var
   processador : TPEFConduitProcessaArquivo;
   l : TList;
   cnpj, diretorioLog : string;
    WaitResult : Integer;
begin
   with split('\', arquivo) do
   try
      while count > 0 do
      begin
         diretorioLog := diretorioLog+Strings[0]+'\';
         if (Length( Strings[0] ) = 14) and somenteNumero( Strings[0]) then
         begin
            cnpj := Strings[0];
            Break;
         end;
         Delete(0);
      end;
   finally
      Free;
   end;

   diretorioLog := diretorioLog+'log\';
   if not DirectoryExists( diretorioLog ) then
   begin
       LogIt( 'criando diretorio : '+diretorioLog );
       ValidaCriaDiretorio ( diretorioLog  );
   end;

   {O processo abaixo usa o semaphoro para aguardar por uma vaga para iniciar
    a nova thread, desta forma evitando a criação demasiada de thread denegrindo
    a performance do processo. Por padrão são criadas até 100 processadores
    ou seja, até 100 arquivos são processados por vez}
   repeat
     WaitResult := WaitForSingleObject(Semaphore, FWaitForDuration);
     case WaitResult of
       WAIT_OBJECT_0  : ;
       WAIT_TIMEOUT   : ;
       WAIT_ABANDONED : ;
     end;
   until WaitResult = WAIT_OBJECT_0;

   l:=FListaProcessadores.LockList; //Bloqueia a lista de thread ativas.
   try
     processador := TPEFConduitProcessaArquivo.Create( True ); //Cria o processador
     try
        processador.OnTerminate := Self.processadorEnd; //Seta o evento de termino
        processador.onLog       := self.onLog; //seta o evento de log
        processador.arquivo := arquivo;
        processador.configuracaoAdministradora := ObjOperadora;
        processador.cnpj := cnpj;
        processador.diretorioLog := diretorioLog;
        l.Add( processador ); //Adicionaa alista de controle
     except
        on e:Exception do
        begin
           
           processador.Free;
           processador := nil;
           LogIt('Ao iniciar processador do arquivo : '+ e.Message );
        end;
     end;
   finally
     FListaProcessadores.UnlockList;
   end;

   if Assigned( processador ) then
      processador.Resume;

   result := processador;
end;

procedure TPEFConduitVareDiretorio.VarreDiretorio( diretorio : string; ObjOperadora : TObject );
var
   sr : TSearchRec;
   arquivo : string;

   diretorioArquivo,
   diretorioProcessamentoArquivo : string;
begin
   if FindFirst( diretorio+'*.txt', faArchive, sr ) = 0 then    //Busca todos os arquivo no formato TXT do diretorio
   begin
      repeat

          if FindCmdLineSwitch('debug',['-'], true) then LogIt('ID'+intToStr(self.Handle)+':TPEFConduitVareDiretorio.VarreDiretorio:'+diretorio+sr.name);

          arquivo := upperCase( sr.Name );
          if (pos(Copy( arquivo, 1, 4), 'ENV_CON_EXT_PAG_ALT_CAN_')>0) and (ExtractFileExt(arquivo)='.TXT') then //Processa arquivos de Envio!
          begin
             LogIt( 'processando arquivo : '+diretorio+arquivo );
             diretorioArquivo := diretorio+arquivo;
             diretorioProcessamentoArquivo := diretorio+'PROCESSA\'+arquivo;
             if RenameFile( diretorioArquivo, ChangeFileExt( diretorioArquivo, '.pro' ) ) then //tenta renomear o arquivo, se não conseguir é pq esta em uso.
             begin

                if FindCmdLineSwitch('debug',['-'], true) then LogIt('ID'+intToStr(self.Handle)+':TPEFConduitVareDiretorio.VarreDiretorio:'+diretorio+sr.name+' capturado');

                diretorioArquivo := ChangeFileExt( diretorioArquivo, '.pro');
                diretorioProcessamentoArquivo := ChangeFileExt( diretorioProcessamentoArquivo, '.pro');
                if    (    FileExists( diretorioProcessamentoArquivo ) and DeleteFile( diretorioProcessamentoArquivo ) )
                   or (not FileExists( diretorioProcessamentoArquivo ) ) then //verifica se o arquivo de processamento já existe no diretorio processa, se existir apaga. move o novo para lá. se falhar é por que ele já esta em trabalho.
                begin
                   if MoveFile(pchar(diretorioArquivo), pchar(diretorioProcessamentoArquivo)) then // move para o diretorio de processamento
                   begin
                      processadorStart( diretorioProcessamentoArquivo, ObjOperadora );
                   end else
                     RenameFile( diretorioArquivo, ChangeFileExt( diretorioArquivo, '.txt' ) );//volta para o nome certo para tentar no proximo ciclo de varedura
                end else
                  RenameFile( diretorioArquivo, ChangeFileExt( diretorioArquivo, '.txt' ) );//volta para o nome certo para tentar no proximo ciclo de varedura
             end
             else
               if FindCmdLineSwitch('debug',['-'], true) then LogIt('ID'+intToStr(self.Handle)+':TPEFConduitVareDiretorio.VarreDiretorio:'+diretorio+sr.name+' não capturado');
             Sleep(10);
          end(* else if (Copy( arquivo, 1, 4) = 'CAN_') and (ExtractFileExt(arquivo)='.TXT') then //Processa arquivos de Envio!
          begin
             LogIt( 'processando arquivo de cancelamento: '+diretorio+arquivo );
             diretorioArquivo := diretorio+arquivo;
             diretorioProcessamentoArquivo := diretorio+'PROCESSA\'+arquivo;

             if RenameFile( diretorioArquivo, ChangeFileExt( diretorioArquivo, '.pro' ) ) then //tenta renomear o arquivo, se não conseguir é pq esta em uso.
             begin

                if FindCmdLineSwitch('debug',['-'], true) then LogIt('ID'+intToStr(self.Handle)+':TPEFConduitVareDiretorio.VarreDiretorio:'+diretorio+sr.name+' capturado');

                diretorioArquivo := ChangeFileExt( diretorioArquivo, '.pro');
                diretorioProcessamentoArquivo := ChangeFileExt( diretorioProcessamentoArquivo, '.pro');
                if    (    FileExists( diretorioProcessamentoArquivo ) and DeleteFile( diretorioProcessamentoArquivo ) )
                   or (not FileExists( diretorioProcessamentoArquivo ) ) then //verifica se o arquivo de processamento já existe no diretorio processa, se existir apaga. move o novo para lá. se falhar é por que ele já esta em trabalho.
                begin
                   if MoveFile(pchar(diretorioArquivo), pchar(diretorioProcessamentoArquivo)) then // move para o diretorio de processamento
                   begin
                      processadorStart( diretorioProcessamentoArquivo, ObjOperadora );
                   end else
                     RenameFile( diretorioArquivo, ChangeFileExt( diretorioArquivo, '.txt' ) );//volta para o nome certo para tentar no proximo ciclo de varedura
                end else
                  RenameFile( diretorioArquivo, ChangeFileExt( diretorioArquivo, '.txt' ) );//volta para o nome certo para tentar no proximo ciclo de varedura
             end
             else
               if FindCmdLineSwitch('debug',['-'], true) then LogIt('ID'+intToStr(self.Handle)+':TPEFConduitVareDiretorio.VarreDiretorio:'+diretorio+sr.name+' não capturado');
             Sleep(10);
          end else if (Copy( arquivo, 1, 4) = 'CON_') and (ExtractFileExt(arquivo)='.TXT') then //Processa arquivos de Envio!
          begin
             LogIt( 'processando arquivo de consulta: '+diretorio+arquivo );
             diretorioArquivo := diretorio+arquivo;
             diretorioProcessamentoArquivo := diretorio+'PROCESSA\'+arquivo;

             if RenameFile( diretorioArquivo, ChangeFileExt( diretorioArquivo, '.pro' ) ) then //tenta renomear o arquivo, se não conseguir é pq esta em uso.
             begin
                if FindCmdLineSwitch('debug',['-'], true) then LogIt('ID'+intToStr(self.Handle)+':TPEFConduitVareDiretorio.VarreDiretorio:'+diretorio+sr.name+' capturado');
                diretorioArquivo := ChangeFileExt( diretorioArquivo, '.pro');
                diretorioProcessamentoArquivo := ChangeFileExt( diretorioProcessamentoArquivo, '.pro');
                if    (    FileExists( diretorioProcessamentoArquivo ) and DeleteFile( diretorioProcessamentoArquivo ) )
                   or (not FileExists( diretorioProcessamentoArquivo ) ) then //verifica se o arquivo de processamento já existe no diretorio processa, se existir apaga. move o novo para lá. se falhar é por que ele já esta em trabalho.
                begin
                   if MoveFile(pchar(diretorioArquivo), pchar(diretorioProcessamentoArquivo)) then // move para o diretorio de processamento
                   begin
                      processadorStart( diretorioProcessamentoArquivo, ObjOperadora );
                   end else
                     RenameFile( diretorioArquivo, ChangeFileExt( diretorioArquivo, '.txt' ) );//volta para o nome certo para tentar no proximo ciclo de varedura
                end else
                  RenameFile( diretorioArquivo, ChangeFileExt( diretorioArquivo, '.txt' ) );//volta para o nome certo para tentar no proximo ciclo de varedura
             end
             else
               if FindCmdLineSwitch('debug',['-'], true) then LogIt('ID'+intToStr(self.Handle)+':TPEFConduitVareDiretorio.VarreDiretorio:'+diretorio+sr.name+' não capturado');
             Sleep(10);
          end else if (Copy( arquivo, 1, 4) = 'EXT_') and (ExtractFileExt(arquivo)='.TXT') then //Processa arquivos de Envio!
          begin
             LogIt( 'processando arquivo de extrato: '+diretorio+arquivo );
             diretorioArquivo := diretorio+arquivo;
             diretorioProcessamentoArquivo := diretorio+'PROCESSA\'+arquivo;

             if RenameFile( diretorioArquivo, ChangeFileExt( diretorioArquivo, '.pro' ) ) then //tenta renomear o arquivo, se não conseguir é pq esta em uso.
             begin

                if FindCmdLineSwitch('debug',['-'], true) then LogIt('ID'+intToStr(self.Handle)+':TPEFConduitVareDiretorio.VarreDiretorio:'+diretorio+sr.name+' capturado');

                diretorioArquivo := ChangeFileExt( diretorioArquivo, '.pro');
                diretorioProcessamentoArquivo := ChangeFileExt( diretorioProcessamentoArquivo, '.pro');
                if    (    FileExists( diretorioProcessamentoArquivo ) and DeleteFile( diretorioProcessamentoArquivo ) )
                   or (not FileExists( diretorioProcessamentoArquivo ) ) then //verifica se o arquivo de processamento já existe no diretorio processa, se existir apaga. move o novo para lá. se falhar é por que ele já esta em trabalho.
                begin
                   if MoveFile(pchar(diretorioArquivo), pchar(diretorioProcessamentoArquivo)) then // move para o diretorio de processamento
                   begin
                      processadorStart( diretorioProcessamentoArquivo, ObjOperadora );
                   end else
                     RenameFile( diretorioArquivo, ChangeFileExt( diretorioArquivo, '.txt' ) );//volta para o nome certo para tentar no proximo ciclo de varedura
                end else
                  RenameFile( diretorioArquivo, ChangeFileExt( diretorioArquivo, '.txt' ) );//volta para o nome certo para tentar no proximo ciclo de varedura
             end
             else
               if FindCmdLineSwitch('debug',['-'], true) then LogIt('ID'+intToStr(self.Handle)+':TPEFConduitVareDiretorio.VarreDiretorio:'+diretorio+sr.name+' não capturado');
             Sleep(10);
          end else if (Copy( arquivo, 1, 4) = 'PAG_') and (ExtractFileExt(arquivo)='.TXT') then //Processa arquivos de Envio!
          begin
             LogIt( 'processando arquivo de pagamento imediato de parcela: '+diretorio+arquivo );
             diretorioArquivo := diretorio+arquivo;
             diretorioProcessamentoArquivo := diretorio+'PROCESSA\'+arquivo;

             if RenameFile( diretorioArquivo, ChangeFileExt( diretorioArquivo, '.pro' ) ) then //tenta renomear o arquivo, se não conseguir é pq esta em uso.
             begin

                if FindCmdLineSwitch('debug',['-'], true) then LogIt('ID'+intToStr(self.Handle)+':TPEFConduitVareDiretorio.VarreDiretorio:'+diretorio+sr.name+' capturado');

                diretorioArquivo := ChangeFileExt( diretorioArquivo, '.pro');
                diretorioProcessamentoArquivo := ChangeFileExt( diretorioProcessamentoArquivo, '.pro');
                if    (    FileExists( diretorioProcessamentoArquivo ) and DeleteFile( diretorioProcessamentoArquivo ) )
                   or (not FileExists( diretorioProcessamentoArquivo ) ) then //verifica se o arquivo de processamento já existe no diretorio processa, se existir apaga. move o novo para lá. se falhar é por que ele já esta em trabalho.
                begin
                   if MoveFile(pchar(diretorioArquivo), pchar(diretorioProcessamentoArquivo)) then // move para o diretorio de processamento
                   begin
                      processadorStart( diretorioProcessamentoArquivo, ObjOperadora );
                   end else
                     RenameFile( diretorioArquivo, ChangeFileExt( diretorioArquivo, '.txt' ) );//volta para o nome certo para tentar no proximo ciclo de varedura
                end else
                  RenameFile( diretorioArquivo, ChangeFileExt( diretorioArquivo, '.txt' ) );//volta para o nome certo para tentar no proximo ciclo de varedura
             end
             else
               if FindCmdLineSwitch('debug',['-'], true) then LogIt('ID'+intToStr(self.Handle)+':TPEFConduitVareDiretorio.VarreDiretorio:'+diretorio+sr.name+' não capturado');
             Sleep(10);
          end*);

          if terminated then Break;
      until FindNext( sr ) <> 0;
      FindClose( sr );
   end;
end;

{Processa cada um dos diretorios configurados para monitoramento}
procedure TPEFConduitVareDiretorio.ProcessaDiretorios;
var
   vii : Integer;
   diretorioAtual : string;
   ObjOperadora : TObject;
begin
   for vii:=0  to FlistaDiretorio.Count-1 do
   begin
      diretorioAtual := FlistaDiretorio[vii]; //Onde estou ? Se cheguei aqui, é pelo fato de estar no diretorio de alguma administradora
      ObjOperadora   := FlistaDiretorio.objects[vii]; //Objeto que contem os dados do arquivo de configuração XML do PEFConduit
      try
         VarreDiretorio( diretorioAtual , ObjOperadora);
      except
         on e:exception do
           raise exception.create( diretorioAtual+' : '+e.Message);
      end;
      if Terminated then Break;
   end;
end;

procedure TPEFConduitVareDiretorio.addDiretorioParaMonitorar(
  diretorio: string; config : TObject);
begin
   FDiretoro := diretorio;
   FconfigAdministradora := config;
   Synchronize( DoAddDiretorioParaMonitorar );

   if FindCmdLineSwitch('debug',['-'], true) then LogIt('ID'+intToStr(self.Handle)+' Monitorando: '+diretorio);

end;

{Somente deve ser chamado por synchronize. Por que? estude ttreads}
procedure TPEFConduitVareDiretorio.DoAddDiretorioParaMonitorar;
begin
   FlistaDiretorio.AddObject( FDiretoro, FconfigAdministradora );
end;

constructor TPEFConduitVareDiretorio.create(Createsuspended: Boolean);
begin
   create( Createsuspended, 100 );
end;

constructor TPEFConduitVareDiretorio.create(Createsuspended: Boolean; Processadores : integer );
begin
  inherited create( Createsuspended );
  FlistaDiretorio := TStringList.Create;
  FListaProcessadores := TThreadList.Create;
  FinternalStop := True;

  FWaitForDuration := 500;
  Semaphore := CreateSemaphore(nil, Processadores, Processadores, 'processadores');
end;

destructor TPEFConduitVareDiretorio.destroy;
begin
  FlistaDiretorio.free;
  FListaProcessadores.free;

  CloseHandle(Semaphore);

  inherited;
end;

{dispara o processo de limpeza da lista de processadores de arquivos}
procedure TPEFConduitVareDiretorio.clearDiretorioParaMonitorar;
begin
  Synchronize( DoclearDiretorioParaMonitorar );
end;

{Este processo sometne pode ser chamado por um synchronize}
procedure TPEFConduitVareDiretorio.DoclearDiretorioParaMonitorar;
begin
  FlistaDiretorio.Clear;
end;

procedure TPEFConduitVareDiretorio.Start;
begin
   Synchronize( doStart );
end;

procedure TPEFConduitVareDiretorio.Stop;
begin
   Synchronize( doStop );
end;

function TPEFConduitVareDiretorio.Stoped: boolean;
begin
   Synchronize( doStoped );
   result := FStoped;
end;

{Somente deve ser chamado por synchronize. Por que? estude ttreads}
procedure TPEFConduitVareDiretorio.doStart;
begin
   if Suspended then
      resume;
end;

{Somente deve ser chamado por synchronize. Por que? estude ttreads}
procedure TPEFConduitVareDiretorio.doStop;
var
  vii: Integer;
  l : TList;
begin
   if not FinternalStop then
   begin
      FinternalStop := True;
      l:=FListaProcessadores.LockList;
      try
         for vii:= 0 to l.count-1 do
           TThread( l[vii] ).Terminate;
      finally
        FListaProcessadores.UnlockList;
      end;
   end;
end;

{Somente deve ser chamado por synchronize. Por que? estude ttreads}
procedure TPEFConduitVareDiretorio.doStoped;
var
  l : TList;
begin
   FStoped := FinternalStop and Suspended;
   if FStoped then
   begin
      l:=FListaProcessadores.LockList;
      try
         FStoped := l.Count = 0;
      finally
        FListaProcessadores.UnlockList;
      end;
   end;
end;


{Somente deve ser chamado por synchronize. Por que? estude ttreads}
procedure TPEFConduitVareDiretorio.doLog;
begin
   if Assigned(Fonlog ) then
      FonLog(self, mensagem );
end;

procedure TPEFConduitVareDiretorio.LogIt(Mensagem: string);
begin
   Self.mensagem := mensagem;
   Synchronize( doLog );
end;

procedure TPEFConduitVareDiretorio.limpaLogs;
var
  vii : Integer;
  diretorioLog : string;
  f : TSearchRec;
begin
   try
      for vii:=0  to FlistaDiretorio.Count-1 do
      begin
         with split('\', FlistaDiretorio[vii]) do
         try
            while count > 0 do
            begin
               diretorioLog := diretorioLog+Strings[0]+'\';
               if (Length( Strings[0] ) = 14) and somenteNumero( Strings[0]) then
               begin
                  Break;
               end;
               Delete(0);
            end;
         finally
            Free;
         end;

         diretorioLog := diretorioLog+'log\';
         if DirectoryExists( diretorioLog ) then
         begin
            if FindFirst(diretorioLog+'*.*', faAnyFile, f )=0 then
            try
               repeat
                  if fileexists( diretorioLog+f.Name ) then
                  begin
                     if DaysBetween( FileDateToDateTime( f.Time ), now ) > 7 then
                     begin
                        DeleteFile( diretorioLog+f.Name );
                        Logit(  'removendo arquivo de log : '+diretorioLog+f.Name );
                     end;
                  end;
               until findnext(f ) <> 0;
            finally
                findclose(f);
            end;
         end;
      end;
   except
       //hmmm, Dam what you want with this ?
   end;
end;

end.
