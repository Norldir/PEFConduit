unit uovF_PEFConduitAPP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, uXMLConfig, Buttons,
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
    ovI_Logo: TImage;
    ovCK_AutoIniciar: TCheckBox;
    ovCK_MonitorarServico: TCheckBox;
    ovB_Install: TButton;
    ovB_Uninstall: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure oA_configuracaoUpdate(Sender: TObject);
    procedure oA_configuracaoExecute(Sender: TObject);
    procedure oA_IniciaParaUpdate(Sender: TObject);
    procedure oA_IniciaParaExecute(Sender: TObject);
    procedure CoolTrayIcon1Click(Sender: TObject);
    procedure ovBB_FinalizarClick(Sender: TObject);
    procedure oT_VerificaServicoTimer(Sender: TObject);
    procedure ovCK_AutoIniciarClick(Sender: TObject);
    procedure ovCK_MonitorarServicoClick(Sender: TObject);
    procedure ovB_InstallClick(Sender: TObject);
    procedure ovB_UninstallClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    RetornoStatus : integer;
    ParadaForcada : Boolean;
    ImLogginOff   : Boolean;
    atualizador : TPEFConduitAtualiza;
    procedure Log(sender: TObject; Mensagem: STring);
    procedure ExecutaOperacaoSobreServico(Tafera: integer);
    Procedure WMEndSession(var Msg : TWMEndSession);message WM_ENDSESSION;
    procedure OnQueryEndSession(var Msg : TMessage); message WM_QUERYENDSESSION;
    function ServicoRodando: boolean;
    function autoiniciarAplicativo: Boolean;
    function AutoRestart: boolean;
    function GetPassword: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ovF_PEFConduitAPP: TovF_PEFConduitAPP;

implementation

uses uXMLTools, uovF_PEFConduitAPPConfig, uPEFServiceControl, Registry,
  uPEFServiceControl2;

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
var
   RS : integer;
begin
   with TManipulacaoServico.Create do try
      Connect('');
      OpenServiceConnection('PEFConduit');
      case Tafera of
         0: PauseService;
         1: ContinueService;
         2: StartService;
         3: StopService;
         10: begin
            RS := GetStatus;
            if RetornoStatus <> RS then
            begin
               RetornoStatus := RS;
               case RetornoStatus of
                 1: CoolTrayIcon1.ShowBalloonHint('Parado',                    'PEFConduit',bitInfo, 30);
                 2: CoolTrayIcon1.ShowBalloonHint('Inicializando',             'PEFConduit',bitInfo, 30);
                 3: CoolTrayIcon1.ShowBalloonHint('Finalizando',               'PEFConduit',bitInfo, 30);
                 4: CoolTrayIcon1.ShowBalloonHint('Executando',                'PEFConduit',bitInfo, 30);
                 5: CoolTrayIcon1.ShowBalloonHint('Pendência para continuar',  'PEFConduit',bitInfo, 30);
                 6: CoolTrayIcon1.ShowBalloonHint('Pendência para pausar',     'PEFConduit',bitInfo, 30);
                 7: CoolTrayIcon1.ShowBalloonHint('Pausado',                   'PEFConduit',bitInfo, 30);
                 else log(self, 'Serviço PEFConduit não instalado.'+#13#10+
                                 'Entre em contato com a TECINCO - Tecinco Informática S/C Ltda'+#13#10+
                                 'para suporte e maiores informações.'+#13#10+
                                 'Telefone: (45) 3225-1074'+#13#10+
                                 'E-Mail  : suporte@tecinco.com.br'+#13#10+
                                 'Web     : www.tecinco.com.br');
               end;
            end;
         end;
      end;
      ShutdownService;
   finally
      free;
   end;
end;


procedure TovF_PEFConduitAPP.Log( sender : TObject; Mensagem : STring );
begin
   ovM_Log.Lines.Insert( 0, FormatDateTime('dd/mm/yyyy hh:nn:ss.zzz', now)+' - '+Mensagem );
   ovM_Log.Update;
end;

procedure TovF_PEFConduitAPP.FormCreate(Sender: TObject);
begin
   ImLogginOff := false;
   RetornoStatus := -1;
   try
     ExecutaOperacaoSobreServico( 10 );
   except
      on e:Exception do
      begin
          ShowMessage('O usuário do Windows utilizado para iniciar o PEFConduitApp não tem privilégios de manipular serviços do windows. Utilize outro que tenha privilégios de Administrador!');
          ovB_Install.Visible := False;
          ovB_Uninstall.Visible := False;
          ovSB_VarreDir.visible := False;
      end;
   end;
   ovCK_AutoIniciar.OnClick := nil;
   ovCK_AutoIniciar.Checked := autoiniciarAplicativo;
   ovCK_AutoIniciar.OnClick := ovCK_AutoIniciarClick;

   ovCK_MonitorarServico.OnClick := nil;
   ovCK_MonitorarServico.Checked := AutoRestart;
   ovCK_MonitorarServico.OnClick := ovCK_MonitorarServicoClick;

   ovB_Install.Enabled := not ServiceExists('PEFConduit');
   ovB_Uninstall.Enabled := not ovB_Install.Enabled;

   atualizador := TPEFConduitAtualiza.create;
   try
      with TovF_PEFConduitAPPConfig.Create( nil ) do
      try
         atualizador._proxy := oCDS_Configuracao.fieldByName('proxy').AsString;
         atualizador._proxyuser := oCDS_Configuracao.fieldByName('proxysenha').AsString;
         atualizador._proxypass := oCDS_Configuracao.fieldByName('proxyusuario').AsString;
      finally
         Free;
      end;
   except
   end;
   atualizador.onLog := self.Log;
   atualizador.Resume;
end;

procedure TovF_PEFConduitAPP.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   CanClose := CoolTrayIcon1.Tag = 1;
   if not canclose then
      CoolTrayIcon1.HideMainForm;
end;

procedure TovF_PEFConduitAPP.oA_configuracaoUpdate(Sender: TObject);
begin
   TACtion( Sender ).Enabled := ovB_Install.Enabled or not ServicoRodando;
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
   TAction(sender).Enabled := not ovB_Install.Enabled;
   if not ServicoRodando then
   begin
      if TAction(sender).Caption  <> 'Iniciar' then
      begin
          TAction(sender).Caption  := 'Iniciar';
          log(Sender, 'Processo parado');
          ovB_Uninstall.Enabled := true;
      end;
   end
   else
   begin
      if TAction(sender).Caption  <> 'Parar' then
      begin
          TAction(sender).Caption  := 'Parar';
          log(Sender, 'Processo iniciado');
          CoolTrayIcon1.HideMainForm;
          ovB_Uninstall.Enabled := False;
      end;
   end;
end;

procedure TovF_PEFConduitAPP.oA_IniciaParaExecute(Sender: TObject);
begin
   if ServicoRodando then
   begin
      ParadaForcada := True;
      ExecutaOperacaoSobreServico( 3 );
   end
   else
   begin
      ParadaForcada := false;
      ExecutaOperacaoSobreServico( 2 );
   end;
end;

procedure TovF_PEFConduitAPP.CoolTrayIcon1Click(Sender: TObject);
begin
   self.Show;
end;

procedure TovF_PEFConduitAPP.ovBB_FinalizarClick(Sender: TObject);
begin
  if (application.MessageBox( 'Deseja realmente finalizar o programa monitor do PEFConduit ?', '', MB_ICONQUESTION or MB_YESNO or MB_DEFBUTTON2) = idYes) then
  begin
     CoolTrayIcon1.tag := 1;
  end;
  close
end;

procedure TovF_PEFConduitAPP.oT_VerificaServicoTimer(Sender: TObject);
begin
   ExecutaOperacaoSobreServico( 10 );
   if ovCK_MonitorarServico.Checked and  not ServicoRodando and not ParadaForcada then
   begin
      ExecutaOperacaoSobreServico( 2 );
   end;
end;

function TovF_PEFConduitAPP.autoiniciarAplicativo : Boolean;
var key: string;
     Reg: TRegIniFile;
begin
  key := '\Software\Microsoft\Windows\CurrentVersion\Run';
  Reg := TRegIniFile.Create;
  try
    Reg.RootKey:=HKEY_LOCAL_MACHINE;
    Reg.CreateKey(Key);
    if Reg.OpenKey(Key,False) then
    begin
       Result := Reg.ReadString(key, 'PEFConduitMonitor', '')=application.exename;
    end
    else
    begin
      log(self, 'Não foi possível verificar a função autoiniciar este aplicativo');
      result := False;
    end;
  finally
    Reg.Free;
  end;
end;

procedure TovF_PEFConduitAPP.ovCK_AutoIniciarClick(Sender: TObject);
var key: string;
     Reg: TRegIniFile;
begin
  key := '\Software\Microsoft\Windows\CurrentVersion\Run';
  Reg := TRegIniFile.Create;
  try
    Reg.RootKey:=HKEY_LOCAL_MACHINE;
    Reg.CreateKey(Key);
    if Reg.OpenKey(Key,False) then
    begin
       if ovCK_AutoIniciar.Checked then
          Reg.WriteString(key, 'PEFConduitMonitor', application.exename)
       else
          Reg.DeleteValue('PEFConduitMonitor');
    end
    else
      log(Sender, 'Não foi possível colocar o PEFConduitAPP para iniciar automaticamente');
  finally
    Reg.Free;
  end;
end;


function TovF_PEFConduitAPP.AutoRestart : boolean;
var key: string;
     Reg: TRegIniFile;
begin
  Result := True;
  key := '\Software\Tecinco\PEFConduit';
  Reg := TRegIniFile.Create;
  try
    Reg.RootKey:=HKEY_CURRENT_USER;
    Reg.CreateKey(Key);
    if Reg.OpenKey(Key,False) then
    begin
       result :=  Reg.ReadString(key, 'AutoRestart', '')='Sim'
    end
    else
      log(self, 'Não foi possível colocar auto reiniciar o EPFConduitSRV');
  finally
    Reg.Free;
  end;
end;


procedure TovF_PEFConduitAPP.ovCK_MonitorarServicoClick(Sender: TObject);
var key: string;
     Reg: TRegIniFile;
begin
  key := '\Software\Tecinco\PEFConduit';
  Reg := TRegIniFile.Create;
  try
    Reg.RootKey:=HKEY_CURRENT_USER;
    Reg.CreateKey(Key);
    if Reg.OpenKey(Key,False) then
    begin
       if ovCK_MonitorarServico.Checked then
          Reg.WriteString(key, 'AutoRestart', 'Sim')
       else
          Reg.WriteString(key, 'AutoRestart', 'Não')
    end
    else
      log(Sender, 'Não foi possível colocar auto reiniciar o EPFConduitSRV');
  finally
    Reg.Free;
  end;
end;
Function GetUserFromWindows: string;
Var
   UserName : string;
   UserNameLen : Dword;
Begin
   UserNameLen := 255;
   SetLength(userName, UserNameLen) ;
   If GetUserName(PChar(UserName), UserNameLen) Then
     Result := Copy(UserName,1,UserNameLen - 1)
   Else
     Result := 'Unknown';
End;


function TovF_PEFConduitAPP.GetPassword : string;
var
  f : TForm;
  e : TEdit;
begin
  f := CreateMessageDialog('Informe a senha do usuario "'+GetUserFromWindows+'"', mtInformation, [mbOK,mbCancel]);
  e := TEdit.Create( f );
  e.Parent := f;
  e.Top := 35;
  e.left := 60;
  e.PasswordChar := '#';
  e.TabOrder := 0;
  f.Height := f.Height + e.Height + 5;
  f.ShowModal;
  result := e.Text;
  f.Free;
end;


procedure TovF_PEFConduitAPP.ovB_InstallClick(Sender: TObject);
begin

   if Application.MessageBox( pchar( 'Será usado algum tipo de integração que fará uso de um Certificado Digital para assinar as mensagens?' ),
                              '', MB_ICONQUESTION or MB_YESNO or MB_APPLMODAL or MB_DEFBUTTON1) = idYEs then
   begin

       SimpleCreateService( 'PEFConduit',
                            'PEFConduit',
                            pchar(ExtractFilePath(Application.ExeName)+'PEFConduitSrv.exe'),
                            2, '.\'+GetUserFromWindows, GetPassword,True, False );

       Application.MessageBox('Caso a senha deste usuário seja alterada, o serviço de integrção irá parar. Atenção a esta restrição.', 'Atenção', MB_ICONINFORMATION or MB_OK or MB_APPLMODAL or MB_DEFBUTTON1);
       
   end
   else
   begin
       SimpleCreateService( 'PEFConduit',
                            'PEFConduit',
                            pchar(ExtractFilePath(Application.ExeName)+'PEFConduitSrv.exe'),
                            2, '', '',True, False );
   end;
   ovB_Install.Enabled := False;
   ovB_Uninstall.Enabled := True;
end;

procedure TovF_PEFConduitAPP.ovB_UninstallClick(Sender: TObject);
begin
   SimpleDeleteService('PEFConduit');
   ovB_Install.Enabled := true;
   ovB_Uninstall.Enabled := false;
end;


procedure TovF_PEFConduitAPP.WMEndSession(var Msg: TWMEndSession);
begin
  log(Self, 'Desligando windows');
  if ServicoRodando and not ImLogginOff then
  begin
     ParadaForcada := True;
     ExecutaOperacaoSobreServico( 3 );
  end;
  CoolTrayIcon1.Tag := 1;
  Close;
  inherited;
end;

procedure TovF_PEFConduitAPP.FormDestroy(Sender: TObject);
begin
   Log( Self, 'Finalizando atualizador, aguarde...');
   atualizador.terminate;
   atualizador.WaitFor;
   atualizador.Free;
end;

procedure TovF_PEFConduitAPP.OnQueryEndSession(var Msg: TMessage);
begin
  ImLogginOff := True;
  inherited;
end;

end.
