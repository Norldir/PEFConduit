unit uPEFConduitAtualiza;

interface

uses
  Classes, IdHTTP, IdIOHandlerSocket, IdSSLOpenSSL, IdComponent, idUri;

const
  cTempoEntreVerificacaoAtualizacao=2; //em minutos
  
type
  TNotifyLogEvent = procedure(sender : TObject; Mensagem : string ) of object;

  TPEFConduitAtualiza = class(TThread)
  private
    mensagem : string;
    FUrl : string;
    FUrl2 : string;
    FUrl3 : string;
    FonLog: TNotifyLogEvent;
    procedure LogIt( Mensagem : string );
    procedure doLog;
    function GetData(const arquivo: string; Response: TStream;
      var url: string) : boolean;
    procedure SetName(nome: string);
    procedure WorkAtualizador(Sender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Integer);
    procedure WorkBegin(Sender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Integer);
    procedure WorkEndr(Sender: TObject; AWorkMode: TWorkMode);
    procedure SetupIndy(IndyHttp: TIDHttp);
  protected
    procedure Execute; override;
  public
    _proxy, _proxyuser, _proxypass : string;
    constructor create;
    property onLog : TNotifyLogEvent read FonLog write FonLog;
  end;

implementation

uses windows, SysUtils, forms;

{$IFDEF MSWINDOWS}
type
  TThreadNameInfo = record
    FType: LongWord;     // must be 0x1000
    FName: PChar;        // pointer to name (in user address space)
    FThreadID: LongWord; // thread ID (-1 indicates caller thread)
    FFlags: LongWord;    // reserved for future use, must be zero
  end;
{$ENDIF}

{ PEFConduitAtualiza }

procedure TPEFConduitAtualiza.SetName( nome : string );
{$IFDEF MSWINDOWS}
var
  ThreadNameInfo: TThreadNameInfo;
  pnome : PChar;
{$ENDIF}
begin
{$IFDEF MSWINDOWS}
  nome := 'T_'+nome;
  pnome := PChar( nome );
  ThreadNameInfo.FType := $1000;
  ThreadNameInfo.FName := pnome;
  ThreadNameInfo.FThreadID := $FFFFFFFF;
  ThreadNameInfo.FFlags := 0;
  try
    RaiseException( $406D1388, 0, sizeof(ThreadNameInfo) div sizeof(LongWord), @ThreadNameInfo );
  except
  end;
{$ENDIF}
end;

procedure TPEFConduitAtualiza.WorkBegin(Sender: TObject; AWorkMode: TWorkMode; AWorkCount: Integer);
begin
   if Self.Terminated then TIdHTTP(Sender).Disconnect;
//   LogIt( '  Baixando arquivo  '+TIdHTTP(Sender).Request.URL+' -> '+intToStr(AWorkCount) );
end;

procedure TPEFConduitAtualiza.WorkAtualizador(Sender: TObject; AWorkMode: TWorkMode; AWorkCount: Integer);
begin
//   LogIt( '  Iniciando baixa do arquivo  '+TIdHTTP(Sender).Request.URL+' -> '+intToStr(AWorkCount) );
end;

procedure TPEFConduitAtualiza.WorkEndr(Sender: TObject; AWorkMode: TWorkMode);
begin
//   LogIt( '  Finalizada baixa do arquivo  '+TIdHTTP(Sender).Request.URL );
end;

procedure ParseURI(AURI: string; var VProtocol, VHost, VPath, VDocument,
                       VPort, VBookmark : string);
var
  URI: TIdURI;
begin
  URI := TIdURI.Create(AURI);
  try
    VProtocol := URI.Protocol;
    VHost := URI.Host;
    VPath := URI.Path;
    VDocument := URI.Document;
    VPort := URI.Port;
    VBookmark := URI.Bookmark;
  finally
    URI.Free;
  end;
end;

procedure TPEFConduitAtualiza.SetupIndy(IndyHttp: TIDHttp);

  procedure GetHostAndPort(const AURL: string; var AHost, APort: string);
  var
    Index: Integer;
  begin
    Index := Pos(':', AURL);
    if Index > 0 then
    begin
      AHost := Copy(AURL, 1, Index-1);
      APort := Copy(AURL, Index+1, MaxInt);
    end;
end;

var
  Protocol, Host, Path, Document, Port, Bookmark: string;
begin
  IndyHttp.Request.Accept := '*/*';
  { Proxy support configuration }
  if _Proxy <> '' then
  begin
    { first check for 'http://localhost:####' }
    ParseURI(_Proxy, Protocol, Host, Path, Document, Port, Bookmark);
    { if fail then check for 'localhost:####' }
    if Host = '' then
      GetHostAndPort(_Proxy, Host, Port);
    IndyHttp.ProxyParams.ProxyServer := Host;
    if Port <> '' then
      IndyHttp.ProxyParams.ProxyPort := StrToInt(Port);

    { If name/password is used in conjunction with proxy, it's passed
      along for proxy authentication }
    IndyHttp.ProxyParams.ProxyUsername := _proxyuser;
    IndyHttp.ProxyParams.ProxyPassword := _proxypass;
  end else
  begin
    { no proxy with Username/Password implies basic authentication }
    IndyHttp.Request.Username := _proxyuser;
    IndyHttp.Request.Password := _proxypass;
  end;
end;


function TPEFConduitAtualiza.GetData(const arquivo : string; Response: TStream; var url : string) : boolean;
var
  IndyHTTP: TIDHttp;
  tentativa : Integer;
begin
  try
     IndyHTTP := TIDHttp.Create(Nil);
     SetupIndy( IndyHTTP );
     IndyHTTP.OnWork      := WorkAtualizador;
     IndyHTTP.OnWorkBegin := WorkBegin;
     IndyHTTP.OnWorkEnd   := WorkEndr;
     try
       //SetupIndy(IndyHTTP, nil);
       tentativa := 1;
       while True do
       begin
          try
            if url <> '' then
            begin
               IndyHttp.Get(URL+arquivo, Response);
               Break;
            end;

            if tentativa = 1 then
            begin
               IndyHttp.Get(FURL+arquivo, Response);
               url := furl;
               break;
            end
            else if tentativa = 2 then
            begin
               IndyHttp.Get(FURL2+arquivo, Response);
               url := furl2;
               break;
            end
            else if tentativa = 3 then
            begin
               IndyHttp.Get(FURL3+arquivo, Response);
               url := furl3;
               break;
            end
            else abort;
          except
            on e:EAbort do abort;
            on e:exception do
            begin
               if not self.Terminated then
                  inc( tentativa )
               else
                  abort;
            end;
          end;
       end;
   //    FContentType := IndyHttp.Response.RawHeaders.Values[SContentType];
   //    FMimeBoundary := GetMimeBoundaryFromType(FContentType);
       if Response.Size = 0 then
         result := false
       else
         result := True;
   //    CheckContentType;
     finally
       if Assigned(IndyHttp.IoHandler) then
         IndyHttp.IOHandler.Free;
       FreeAndNil(IndyHTTP);
     end;
   except
     on e:Exception do
     begin
        result := False;
        LogIt( e.Message );
     end;
   end;
end;
type
   TVersionInfo = record
    dwSignature,
    dwStrucVersion,
    dwFileVersionMS,
    dwFileVersionLS,
    dwProductVersionMS,
    dwProductVersionLS,
    dwFileFlagsMask,
    dwFileFlags,
    dwFileOS,
    dwFileType,
    dwFileSubtype,
    dwFileDateMS,
    dwFileDateLS: DWORD;
  end;


function T5GetVersion(pluginName: string) : string;
var
  PVer, DPchar: PChar;
  PLen: Cardinal;
  MyPoint: Pointer;
  version: ^TVersionInfo;
  DumD: DWORD;
  LWord, HWord: Word;
begin
  DPChar := StrAlloc(255);
  DPchar := PChar(PluginName);

  PVer := StrAlloc(getFileVersionInfoSize(DPchar, Plen));
  getFileVersionInfo(DPChar, 0, 255, PVer);
  VerQueryValue(Pver, '\', MyPoint, Plen);
  Version := myPoint;
  dumD  := Version.dwFileVersionMS;
  hword := dumD shr 16;
  lword := dumD and 255;
  result  := IntToStr(Hword) + '.' + IntToStr(LWord);
  dumD  := Version.dwFileVersionLs;
  hword := dumD shr 16;
  lword := dumD and 255;
  result := result + '.' + IntToStr(Hword) + '.' + IntToStr(lWord);
end;

function comparaversao( versaoinstalada, versaovalidacao : string ) : Integer;
var
 x, y : Integer;
begin
   x := StrToIntDef( Copy(versaoinstalada,1,Pos('.', versaoinstalada)-1), 0);
   y := StrToIntDef( Copy(versaovalidacao,1,Pos('.', versaovalidacao)-1), 0);
   if x < y then
     Result := -1
   else if x=y then //1.
   begin
      Delete(versaoinstalada,1,Pos('.', versaoinstalada));
      Delete(versaovalidacao,1,Pos('.', versaovalidacao));
      x := StrToIntDef( Copy(versaoinstalada,1,Pos('.', versaoinstalada)-1), 0);
      y := StrToIntDef( Copy(versaovalidacao,1,Pos('.', versaovalidacao)-1), 0);
      if x < y then result := -1
      else if x=y then //0.
      begin
         Delete(versaoinstalada,1,Pos('.', versaoinstalada));
         Delete(versaovalidacao,1,Pos('.', versaovalidacao));
         x := StrToIntDef( Copy(versaoinstalada,1,Pos('.', versaoinstalada)-1), 0);
         y := StrToIntDef( Copy(versaovalidacao,1,Pos('.', versaovalidacao)-1), 0);
         if x < y then result := -1
         else if x<=y then //0.
         begin
            Delete(versaoinstalada,1,Pos('.', versaoinstalada));
            Delete(versaovalidacao,1,Pos('.', versaovalidacao));
            x := StrToIntDef( versaoinstalada, 0);
            y := StrToIntDef( versaovalidacao, 0);
            if x<y then
               result := -1
            else if x=y then
               result := 0
            else
               result := 1;
         end
         else
           result := 1;
      end
      else
        result := 1;
   end
   else
      result := 1;

end;

procedure TPEFConduitAtualiza.Execute;
var
  stm : TStringStream;
  fstm : TFileStream;
  url : string;
  i : integer;
  versaoAtual : string;
  versaoservidor : string;
begin
  try
    for i:=0 to (cTempoEntreVerificacaoAtualizacao*60) do
    begin
       Sleep(1000);
       if terminated then Break;
    end;
    LogIt( 'Verificando atualização.' );
    if (ExtractFileName( Application.ExeName ) <> 'PEFConduitAPP.exe') then
       LogIt('Não é o pefconduitsrv.exe')
    else
    if not FindCmdLineSwitch('noupdate', ['-','/'], true) then
    while not terminated do
    begin
       try
          stm := TStringStream.Create('');
          try
             url := '';
             if GetData('versao.txt', stm, url ) then
             begin
                 versaoAtual := T5GetVersion( Application.exename  );
                 versaoservidor := stm.DataString;
                 if comparaversao( versaoAtual, versaoservidor ) < 0 then
                 begin
                    LogIt( 'Atualização encontrada.' );
                    if FileExists(  ExtractFilePath(Application.exename)+'setup_PEFConduit_full.exe_' ) then
                       DeleteFile(ExtractFilePath(Application.exename)+'setup_PEFConduit_full.exe_' ) ;

                    fstm := TFileStream.Create( ExtractFilePath(Application.exename)+'setup_PEFConduit_full.exe_', fmCreate );
                    try
                       LogIt( 'Baixando atualização.'+ExtractFilePath(Application.exename)+'setup_PEFConduit_full.exe_ de '+url );
                       if GetData(  'setup_PEFConduit_full.exe', fstm, url  ) and (fstm.Size<>0) then
                       begin
                           fstm.Free;
                           fstm := nil;
                           if FileExists(  ExtractFilePath(Application.exename)+'setup_PEFConduit_full.exe' ) then
                              DeleteFile(ExtractFilePath(Application.exename)+'setup_PEFConduit_full.exe' ) ;
                           RenameFile( ExtractFilePath(Application.exename)+'setup_PEFConduit_full.exe_' , ExtractFilePath(Application.exename)+'setup_PEFConduit_full.exe' )  ;
                           WinExec( PChar(ExtractFilePath(Application.exename)+'setup_PEFConduit_full.exe /dir="'+ExtractFilePath(Application.exename)+'" /SILENT '), SW_NORMAL );
                           LogIt( 'Executando atualização.' );
                           Break;
                       end else
                          LogIt('Arquivo não baixado.');
                    finally
                       if Assigned( fstm ) then
                          fstm.free;
                    end;
                 end
                 else
                    LogIt( 'Nada para atualizar. versão instalada: ['+versaoAtual+'] versão atual: ['+versaoservidor+']' );
             end else
               LogIt('Não foi possivel verificar atualização');
          finally
             stm.free;
          end;
       except
          on e:exception do
          begin
             LogIt( e.message );
          end;
       end;
       for i:=0 to (cTempoEntreVerificacaoAtualizacao*60) do
       begin
          Sleep(1000);
          if terminated then Break;
       end;
    end;

    while not terminated do
    begin
       Sleep(100);
    end;
  finally
    LogIt( 'Finalizando atualização.' );
  end;
end;

constructor TPEFConduitAtualiza.create;
begin
  inherited Create( true );
  logit( 'Gerenciador de atualização iniciado');
  FUrl2 := 'http://192.168.2.10/PEFCONDUIT/';
  FUrl := 'http://189.26.121.25/PEFCONDUIT/';
//  FUrl3 := 'http://www.pefconduit.com.br/PEFCONDUIT/';
  setname('Atualizador');
end;

procedure TPEFConduitAtualiza.doLog;
begin
   if Assigned( Fonlog ) then
      FonLog(self, mensagem );
end;

procedure TPEFConduitAtualiza.LogIt(Mensagem: string);
begin
   Self.mensagem := mensagem;
   Synchronize( doLog );
end;

end.

