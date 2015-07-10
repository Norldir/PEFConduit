unit uovF_PEFConduitTeste;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, uXMLConfig, uPEFConduitVareDiretorio, Buttons,
  DB, DBClient, Provider, ActnList, CoolTrayIcon, ExtCtrls, uPEFConduitAtualiza;

type
  TovF_PEFConduitAPP = class(TForm)
    ovSB_VarreDir: TSpeedButton;
    Button2: TButton;
    oAL_PEF: TActionList;
    oA_configuracao: TAction;
    oA_IniciaPara: TAction;
    CoolTrayIcon1: TCoolTrayIcon;
    ovBB_Finalizar: TBitBtn;
    ovM_Log: TMemo;
    oT_VerificaServico: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure oA_configuracaoUpdate(Sender: TObject);
    procedure oA_configuracaoExecute(Sender: TObject);
    procedure oA_IniciaParaUpdate(Sender: TObject);
    procedure oA_IniciaParaExecute(Sender: TObject);
    procedure CoolTrayIcon1Click(Sender: TObject);
    procedure ovBB_FinalizarClick(Sender: TObject);
  private
    xml : tconfiguracao;
    atualizador : TPEFConduitAtualiza;
    varredor : TPEFConduitVareDiretorio;
    procedure VarredorTerminate(Sender: TObject);
    function FinalizaProcessos: boolean;
    procedure StateChangeVarredor(sender: TObject;
      Estado: TEstadoExecucao);
    procedure Log(sender: TObject; Mensagem: STring);
    function Validadiretorios(xml: tconfiguracao;
      var msg: string): Boolean;
    procedure ExecutaOperacaoSobreServico(Tafera: integer);
    function ServicoRodando: boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ovF_PEFConduitAPP: TovF_PEFConduitAPP;

implementation

uses uXMLTools, uovF_PEFConduitAPPConfig, uPEFServiceControl, uICFBase;

{$R *.dfm}
function TovF_PEFConduitAPP.ServicoRodando : boolean;
begin
   with TManipulacaoServico.Create do try
      Connect('');
      OpenServiceConnection('PEFConduit');
      result := IsServiceRunning;
   finally
      Free;
   end;
end;

procedure TovF_PEFConduitAPP.ExecutaOperacaoSobreServico(Tafera : integer);
var RetornoStatus : integer;
begin
   with TManipulacaoServico.Create do try
      Connect('');
      OpenServiceConnection('ttranspcte');
      case Tafera of
         0: PauseService;
         1: ContinueService;
         2: StartService;
         3: StopService;
         10: begin
            RetornoStatus := GetStatus;
            case RetornoStatus of
              1: CoolTrayIcon1.ShowBalloonHint('Parado',                    'Serivço CT-e Tecinco Informática.',bitInfo, 30);
              2: CoolTrayIcon1.ShowBalloonHint('Inicializando',             'Serivço CT-e Tecinco Informática.',bitInfo, 30);
              3: CoolTrayIcon1.ShowBalloonHint('Finalizando',               'Serivço CT-e Tecinco Informática.',bitInfo, 30);
              4: CoolTrayIcon1.ShowBalloonHint('Executando',                'Serivço CT-e Tecinco Informática.',bitInfo, 30);
              5: CoolTrayIcon1.ShowBalloonHint('Pendência para continuar',  'Serivço CT-e Tecinco Informática.',bitInfo, 30);
              6: CoolTrayIcon1.ShowBalloonHint('Pendência para pausar',     'Serivço CT-e Tecinco Informática.',bitInfo, 30);
              7: CoolTrayIcon1.ShowBalloonHint('Pausado',                   'Serivço CT-e Tecinco Informática.',bitInfo, 30);
              else MessageDlg('Serviço PEFConduit não instalado.'+#13#10+
                              'Entre em contato com a TECINCO - Tecinco Informática S/C Ltda'+#13#10+
                              'para suporte e maiores informações.'+#13#10+
                              'Telefone: (45) 3225-1074'+#13#10+
                              'E-Mail  : suporte@tecinco.com.br'+#13#10+
                              'Web     : www.tecinco.com.br'+#13#10, mtError, [mbOK], 0);
            end;
         end;
      end;
      ShutdownService;
   finally
      free;
   end;
end;

function TovF_PEFConduitAPP.Validadiretorios( xml : tconfiguracao; var msg : string ) : Boolean;
   procedure CriaPastas( dirBase, administradora : string );
   begin
       if not DirectoryExists( dirBase+'\'+administradora+'\ENVIA\PROCESSA\' ) then
       begin
         if uICFBAse.ValidaCriaDiretorio( dirBase+'\'+administradora+'\ENVIA\PROCESSA\') then
         begin
           if not uICFBAse.ValidaCriaDiretorio( dirBase+'\'+administradora+'\ENVIA\RETORNO\') then
              ShowMessage('Não foi possivel criar os diretorios de retorno');
         end
         else
           ShowMessage('Não foi possivel criar os diretorios de envio');
       end;
       if not DirectoryExists( dirBase+'\'+administradora+'\CANCELAMENTO\PROCESSA\' ) then
       begin
         if uICFBAse.ValidaCriaDiretorio( dirBase+'\'+administradora+'\CANCELAMENTO\PROCESSA\') then
         begin
           if not uICFBAse.ValidaCriaDiretorio( dirBase+'\'+administradora+'\CANCELAMENTO\RETORNO\') then
              ShowMessage('Não foi possivel criar os diretorios de retorno de cancelamento');
         end
         else
           ShowMessage('Não foi possivel criar os diretorios de cancelamento');
       end;
   end;
var
  grupo : tgrupo;
  cnpj : tcnpj;
begin
  try
     varredor.clearDiretorioParaMonitorar;
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


function TovF_PEFConduitAPP.FinalizaProcessos : boolean;
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
end;


procedure TovF_PEFConduitAPP.VarredorTerminate(Sender: TObject);
begin
   varredor := nil;
end;

procedure TovF_PEFConduitAPP.StateChangeVarredor( sender : TObject; Estado : TEstadoExecucao );
begin

end;

procedure TovF_PEFConduitAPP.Log( sender : TObject; Mensagem : STring );
begin
   ovM_Log.Lines.Insert( 0, Mensagem );
   ovM_Log.Update;
   if ovM_Log.Lines.Count>100  then
      ovM_Log.Lines.Delete( 100 );
end;

procedure TovF_PEFConduitAPP.FormCreate(Sender: TObject);
begin
     Log( Self, 'Carregando configuração');
     xml := CarregaArquivoConfiguracao( ExtractFilePath(Application.ExeName)+'PEFCondutiConfig.xml' );
     varredor := TPEFConduitVareDiretorio.Create(true);
     varredor.OnTerminate := VarredorTerminate;
     varredor.onStateChange := StateChangeVarredor;
     varredor.onLog := Log;


   atualizador := TPEFConduitAtualiza.create;
   atualizador.onLog := Log;
   atualizador.Resume;
     
end;

procedure TovF_PEFConduitAPP.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   if Assigned( varredor ) then
   begin
      if CoolTrayIcon1.Tag = 1 then
         CanClose :=FinalizaProcessos
      else
      begin
         CoolTrayIcon1.HideMainForm;
         CanClose :=false;
      end;
   end
   else
   begin
      CanClose := True;
   end;
end;

procedure TovF_PEFConduitAPP.oA_configuracaoUpdate(Sender: TObject);
begin
  if Assigned(varredor) then
     TACtion( Sender ).Enabled := Assigned(varredor) and varredor.Stoped
  else
     TACtion( Sender ).Enabled := not ServicoRodando;
end;

procedure TovF_PEFConduitAPP.oA_configuracaoExecute(Sender: TObject);
begin
   with TovF_PEFConduitAPPConfig.Create( self ) do
   try
      showmodal;
   finally
      free;
   end;
end;

procedure TovF_PEFConduitAPP.oA_IniciaParaUpdate(Sender: TObject);
begin
   if Assigned( varredor ) then
   begin
      if varredor.Stoped then
      begin
         if TAction(sender).Caption  <> 'Iniciar' then
         begin
             TAction(sender).Caption  := 'Iniciar';
             log(Sender, 'Processo parado');
         end;
      end
      else
      begin
         if TAction(sender).Caption  <> 'Parar' then
         begin
             TAction(sender).Caption  := 'Parar';
             log(Sender, 'Processo iniciado');
         end;
      end;
   end
   else
   begin
      if not ServicoRodando then
      begin
         if TAction(sender).Caption  <> 'Iniciar' then
         begin
             TAction(sender).Caption  := 'Iniciar';
             log(Sender, 'Processo parado');
         end;
      end
      else
      begin
         if TAction(sender).Caption  <> 'Parar' then
         begin
             TAction(sender).Caption  := 'Parar';
             log(Sender, 'Processo iniciado');
         end;
      end;
   end;
end;

procedure TovF_PEFConduitAPP.oA_IniciaParaExecute(Sender: TObject);
var
  msgerro : string;
begin
  if Assigned( varredor ) then
  begin
     if varredor.Stoped then
     begin
        try
           if not Validadiretorios( xml, msgerro ) then
              ShowMessage( msgerro );
        finally
           //
        end;
        varredor.Start;
        Log( Self, 'Solicitando inicio do processo');
     end
     else
     begin
        varredor.Stop;
        Log( Self, 'Solicitando parada do processo');
     end;
  end
  else
  begin
     if ServicoRodando then
        ExecutaOperacaoSobreServico( 3 )
     else
        ExecutaOperacaoSobreServico( 2 );
  end;
end;

procedure TovF_PEFConduitAPP.CoolTrayIcon1Click(Sender: TObject);
begin
   self.Show;
end;

procedure TovF_PEFConduitAPP.ovBB_FinalizarClick(Sender: TObject);
begin
  CoolTrayIcon1.tag := 1;
  close
end;

end.
