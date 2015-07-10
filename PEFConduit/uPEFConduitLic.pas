unit uPEFConduitLic;
{$WARN SYMBOL_PLATFORM off}
interface

uses Classes, IdHTTP, IdIOHandlerSocket, IdSSLOpenSSL,
     WSDLIntf;

type
 TValidaLicenca = class
 private
    FUrl : string;
    FUrl2 : string;
    FUrl3 : string;
    FMimeBoundary : string;
    FContentType : string;

    FProxy : string;
    FAgent : string;
    FUserName : string;
    FPassword : string;

    FUrlHost : string;
    FUrlPort : string;

    FBindingType : TWebServiceBindingType;
    FAdministradoras: TStringList;
    FLicencaValida: Boolean;
    //procedure PostData(const Request: TStream; Response: TStream);
    procedure SetupIndy(IndyHttp: TIDHttp; _Request: TStream);
    procedure CheckContentType;
    procedure GetData(const cnpj: string; Response: TStream);
    procedure log( msg : string );
 public
    constructor create;
    destructor destroy; override;
    function Valida( cnpj : string ) : boolean;
    property LicencaValida : Boolean read FLicencaValida;
    property Administradoras : TStringList read FAdministradoras;
 end;

function ValidaLicenca( Cnpj : string; proxy, UserName, password : string) : Boolean; overload;
function ValidaLicenca( Cnpj : string; var ListaOperadoras : string; proxy, UserName, password : string; callback : TNotifyEvent=nil) : Boolean;overload;

implementation

uses SysUtils, SOAPConst, Forms, Windows,
     IdIntercept, IdException, IdURI, IdGlobal, IdHeaderList, IdHTTPHeaderInfo,
     XMLIntf, xmldoc, DateUtils, ComObj, ActiveX;

var
  lBuscadores : TThreadList;
  CritSectLic : TRTLCriticalSection;

{$IFDEF MSWINDOWS}
type
  TThreadNameInfo = record
    FType: LongWord;     // must be 0x1000
    FName: PChar;        // pointer to name (in user address space)
    FThreadID: LongWord; // thread ID (-1 indicates caller thread)
    FFlags: LongWord;    // reserved for future use, must be zero
  end;
{$ENDIF}

type
  TBuscaLicencaThread = class( TThread )
    procedure IamEnded;
  private
    Fcnpj: string;
    procedure SetName(nome: string);
  protected
    procedure Execute; override;
  public
    _proxy, _proxyuser, _proxypass : string;
    function validaLicenciamento: boolean;
    constructor create( cnpj : string ); overload;
    property cnpj : string read Fcnpj write Fcnpj;
  end;

  constructor TBuscaLicencaThread.create(cnpj: string);
  begin
    inherited Create( True );
    self.cnpj := cnpj;
    FreeOnTerminate := True;
    setname('Licenciador');
  end;

  procedure TBuscaLicencaThread.IamEnded;
  var
    l : TList;
  begin
    l := lBuscadores.LockList;
    try
      l.Delete( l.IndexOf( Self ) );
    except
      lBuscadores.UnlockList;
    end;
  end;

  procedure TBuscaLicencaThread.Execute;
  begin
     try
        validaLicenciamento;
     finally
        Synchronize( IamEnded );
     end
  end;

  function  TBuscaLicencaThread.validaLicenciamento : boolean;
  var
     valido : boolean;
     ListaOperadoras : string;
     diretorio, chave :string;
  begin
    diretorio :=  IncludeTrailingBackslash( ExtractFilePath( Application.ExeName ) );
    CoInitialize(nil);
    try
      with TValidaLicenca.create do
      try
         FProxy := _proxy;
         FUserName := _proxyuser;
         FPassword := _proxypass;

         valido := Valida( Cnpj ) and LicencaValida;
         Administradoras.Delimiter := '|';
         ListaOperadoras := Administradoras.DelimitedText;
      finally
         Free;
      end;

      result := valido;

      with TStringList.Create do
      try
        if valido then
           chave := '1'
        else
           chave := '0';
        if Pos('REPOM', ListaOperadoras) > 0 then chave := chave+'R' else chave := chave+   copy('EPOM',   Random(3)+1, 1);
        if Pos('PANCARY', ListaOperadoras) > 0 then chave := chave+'P' else chave := chave+ copy('ANCARY', Random(5)+1, 1);
        if Pos('RODOCRED', ListaOperadoras) > 0 then chave := chave+'D' else chave := chave+copy('ROOCRE', Random(5)+1, 1);
        if Pos('NDDCARGO', ListaOperadoras) > 0 then chave := chave+'N' else chave := chave+copy('DDCARGO', Random(6)+1, 1);
        if Pos('TICKET', ListaOperadoras) > 0 then chave := chave+'T' else chave := chave+  copy('ICKE', Random(3)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);
        if Pos('NONE', ListaOperadoras) > 0 then chave := chave+'0' else chave := chave+  copy('REPOMPANCARYRODOCREDNDDCARGOTICKETBANCODOBRASIL', Random(37)+1, 1);

        chave := chave + IntToStr( DateTimeToUnix( IncMonth(Now, 2) ));

        text := chave;
        SaveToFile(diretorio+cnpj+'.peflic' );
      finally
        Free;
      end;
    finally
      CoUninitialize;
    end;
  end;

procedure BuscaLicenca( cnpj : string; callback : TNotifyEvent; proxy, UserName, password : string ) ;
var
  l : TList;
  t : TThread;
  vii : Integer;
  jaExiste : Boolean;
begin
  jaExiste :=False;
  l := lBuscadores.LockList;
  try
     for vii:=0 to l.Count-1 do
     begin
        if TBuscaLicencaThread(l[vii]).cnpj = cnpj then
        begin
           jaExiste := True;
           Break;
        end;
     end;
     if not jaExiste then
     begin
        t := TBuscaLicencaThread.create( cnpj );
        with TBuscaLicencaThread(t) do
        begin
           _proxy := proxy;
           _proxyuser := UserName;
           _proxypass := password;
        end;
        l.Add( t );
        t.OnTerminate := callback;
        t.Resume;
     end;
  finally
     lBuscadores.UnlockList;
  end;
end;

function BuscaLicencaNotThreaded( cnpj : string; callback : TNotifyEvent; proxy, UserName, password : string )  : boolean;
var
  t : TBuscaLicencaThread;
  vii : Integer;
  jaExiste : Boolean;
begin
    t := TBuscaLicencaThread.create( cnpj );
    with TBuscaLicencaThread(t) do
    begin
       _proxy := proxy;
       _proxyuser := UserName;
       _proxypass := password;
       OnTerminate := callback;

       Result := validaLicenciamento;

    end;
end;



function ValidaLicenca( Cnpj : string; var ListaOperadoras : string; proxy, UserName, password : string; callback : TNotifyEvent=nil) : Boolean;
var
  diretorio : string;
  chave : string;
  dt : TDateTime;
  local : string;
  retornoLic : Boolean;
  label RevalidaLicenca;
begin
   try
      dt := 0;
      result := False;
      diretorio :=  IncludeTrailingBackslash( ExtractFilePath( Application.ExeName ) );
      local := 'Verificando se arquivo existe '+diretorio+cnpj+'.peflic' ;

RevalidaLicenca: // muito cuidado com este GOTO son.

      if FileExists( diretorio+cnpj+'.peflic' ) then
      begin
         with TStringList.Create do
         try
           local := 'Carregando arquivo '+diretorio+cnpj+'.peflic';
           LoadFromFile( diretorio+cnpj+'.peflic' );
           chave := strings[0];
           result := Copy( chave, 1,1) ='1';
           if result then
           begin
              if Copy( chave, 2, 1)  ='R' then ListaOperadoras := ListaOperadoras+'REPOM|';
              if Copy( chave, 3, 1)  ='P' then ListaOperadoras := ListaOperadoras+'PANCARY|';
              if Copy( chave, 4, 1)  ='D' then ListaOperadoras := ListaOperadoras+'RODOCRED|';
              if Copy( chave, 5, 1)  ='N' then ListaOperadoras := ListaOperadoras+'NDDCARGO|';
              if Copy( chave, 6, 1)  ='T' then ListaOperadoras := ListaOperadoras+'TICKET|';
              if Copy( chave, 7, 1)  ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 8, 1)  ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 9, 1)  ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 10, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 11, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 12, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 13, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 14, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 15, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 16, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 17, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 18, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 19, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 20, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 21, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 22, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 23, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 24, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 25, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 26, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 27, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 28, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 29, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 30, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 31, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 32, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 33, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 34, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 35, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 36, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 37, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 38, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 39, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 40, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 41, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 42, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 43, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 44, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 45, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 46, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 47, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 48, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 49, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              if Copy( chave, 50, 1) ='1' then ListaOperadoras := ListaOperadoras+'|';
              try
                 dt := UnixToDateTime( StrToInt64Def( Copy( chave, 51, 63), 0 ));
              except
                 dt := 0;
              end;
              result := (dt > Now) and (dt < IncMonth(Now,2));
           end;
         finally
           Free;
         end;
      end;

      if not result or (dt < IncMonth(Now,1))then
      begin
          local:= 'bucando licensa';
          if TryEnterCriticalSection(CritSectLic)  then
          begin
             try
                retornoLic := BuscaLicencaNotThreaded( cnpj, callback, proxy, UserName, password );
             finally
                LeaveCriticalSection(CritSectLic);
             end;
             if retornoLic then goto RevalidaLicenca; // teve respsota positiva vai valida denovo
          end else
          begin
             Sleep(200);
             goto RevalidaLicenca;
          end;
      end else
      begin
         local := 'Dando callback';
         if Assigned(callback) then callback( nil );
      end;
   except
      on e:exception do
      begin
         with TStringList.Create do
         try
            if fileexists(ExtractFilePath( Application.ExeName )+'lice.txt') then LoadFromFile(ExtractFilePath( Application.ExeName )+'lice.txt');
            Add('Ao validar a licença ocorreu o erro: '+local+#10+e.message);
            SaveToFile( ExtractFilePath( Application.ExeName )+'lice.txt' );
         finally
            Free;
         end;
         result := False;
      end;
   end;
end;

function ValidaLicenca( Cnpj : string; proxy, UserName, password : string) : Boolean; overload;
var
   adm : string;
begin
   result := ValidaLicenca( Cnpj, adm, proxy, UserName, password );
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

procedure TValidaLicenca.CheckContentType;
begin
  { NOTE: Content-Types are case insensitive! }
  {       Here we're not validating that we
          have a valid content-type; rather
          we're checking for some common invalid
          ones }
  if SameText(FContentType, ContentTypeTextPlain) or
     SameText(FContentType, STextHtml) then
    raise exception.CreateFmt(SInvalidContentType, [FContentType]);
end;

procedure TValidaLicenca.SetupIndy(IndyHttp: TIDHttp; _Request: TStream);

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

  function IsHTTPS: Boolean;
  var
    Protocol, Host, path, Document, Port, Bookmark: string;
  begin
    ParseURI(FUrl, Protocol, Host, path, Document, Port, Bookmark);
    Result := AnsiSameText(Protocol, 'HTTPS');
  end;

var
  Protocol, Host, Path, Document, Port, Bookmark: string;
begin
  if IsHttps then
  begin
    //IndyHttp.IOHandler := TIdSSLIOHandlerSocket.Create(Nil);
  end;

{  if Request is TMimeAttachmentHandler then }
  if FBindingType = btMIME then
  begin
    IndyHttp.Request.ContentType := Format(ContentHeaderMIME, [FMimeBoundary]);
    IndyHttp.Request.CustomHeaders.Add(MimeVersion);
  end else { Assume btSOAP }
  begin
    IndyHttp.Request.ContentType := sTextXML;
    //IndyHttp.Request.CustomHeaders.Add(GetSOAPActionHeader);
  end;

  IndyHttp.Request.Accept := '*/*';
  IndyHttp.Request.UserAgent := Self.FAgent;

  { Proxy support configuration }
  if FProxy <> '' then
  begin
    { first check for 'http://localhost:####' }
    ParseURI(FProxy, Protocol, Host, Path, Document, Port, Bookmark);
    { if fail then check for 'localhost:####' }
    if Host = '' then
      GetHostAndPort(FProxy, Host, Port);
    IndyHttp.ProxyParams.ProxyServer := Host;
    if Port <> '' then
      IndyHttp.ProxyParams.ProxyPort := StrToInt(Port);

    { If name/password is used in conjunction with proxy, it's passed
      along for proxy authentication }
    IndyHttp.ProxyParams.ProxyUsername := FUserName;
    IndyHttp.ProxyParams.ProxyPassword := FPassword;
  end else
  begin
    { no proxy with Username/Password implies basic authentication }
    IndyHttp.Request.Username := FUserName;
    IndyHttp.Request.Password := FPassword;
  end;
  IndyHttp.URL.Host := FUrlHost;
  IndyHttp.URL.Port := FUrlPort;
end;

procedure TValidaLicenca.GetData(const cnpj : string; Response: TStream);
var
  IndyHTTP: TIDHttp;
  tentativa : Integer;

  _URL : string;

begin
  IndyHTTP := TIDHttp.Create(Nil);
  try
    SetupIndy(IndyHTTP, nil);
    tentativa := 1;
    while True do
    begin
       try
         if tentativa = 1 then
         begin
            _URL := FURL+'?cnpj='+cnpj;
         end
         else if tentativa = 2 then
         begin
            _URL := FURL2+'?cnpj='+cnpj;
         end
         else if tentativa = 3 then
         begin
            _URL := FURL3+'?cnpj='+cnpj;
         end
         else abort;
         log( 'Tentando url : '+_URL  );
         IndyHttp.Get(_URL, Response);
         break;
       except
         on e:EAbort do abort;
         on e:exception do
         begin
            inc( tentativa );
            log( '    erro: '+e.Message );
         end;
       end;
    end;
    FContentType := IndyHttp.Response.RawHeaders.Values[SContentType];
    //FMimeBoundary := GetMimeBoundaryFromType(FContentType);
    if Response.Size = 0 then
      raise exception.Create('Resposta inválida do servidor');
    CheckContentType;
  finally
    if Assigned(IndyHttp.IoHandler) then
      IndyHttp.IOHandler.Free;
    FreeAndNil(IndyHTTP);
  end;
end;

//procedure TValidaLicenca.PostData(const Request: TStream; Response: TStream);
//var
//  IndyHTTP: TIDHttp;
//  tentativa : Integer;
//begin
//  IndyHTTP := TIDHttp.Create(Nil);
//  try
//    SetupIndy(IndyHTTP, Request);
//    tentativa := 1;
//    while True do
//    begin
//       try
//         if tentativa = 1 then
//         begin
//            IndyHttp.Post(FURL, Request, Response);
//            break;
//         end
//         else if tentativa = 2 then
//         begin
//            IndyHttp.Post(FURL2, Request, Response);
//            break;
//         end
//         else if tentativa = 3 then
//         begin
//            IndyHttp.Post(FURL3, Request, Response);
//            break;
//         end
//         else abort;
//       except
//         on e:EAbort do abort;
//         on e:exception do
//            inc( tentativa );
//       end;
//    end;
//    FContentType := IndyHttp.Response.RawHeaders.Values[SContentType];
//    FMimeBoundary := GetMimeBoundaryFromType(FContentType);
//    if Response.Size = 0 then
//      raise exception.Create('Resposta inválida do servidor');
//    CheckContentType;
//  finally
//    if Assigned(IndyHttp.IoHandler) then
//      IndyHttp.IOHandler.Free;
//    FreeAndNil(IndyHTTP);
//  end;
//end;


constructor TValidaLicenca.create;
begin
  FAdministradoras := TStringList.Create;
  FUrl := 'http://189.26.121.25/validalicenca.aspx';
  FUrl2 := 'http://189.26.121.25/PEFCONDUIT/validalicenca.php';
  FUrl3 := 'http://192.168.2.10/PEFCONDUIT/validalicenca.php';

  FMimeBoundary := '';
  FContentType := '';

  FProxy := '';
  FAgent := '';
  FUserName := '';
  FPassword := '';

//  FUrlHost := 'http://www.pefconduit.com.br';
  FUrlHost := '';
  FUrlPort := '';

  FBindingType :=  btHttp;
end;

function TValidaLicenca.Valida(cnpj: string): boolean;
var
  req, res : TStringStream;
  ixmldoc : IXMLDocument;
  inode   : IXMLNode;
begin
  try
     res := TStringStream.Create('');
     req := TStringStream.Create('consulta="<ConsultaLicensa><cnpj>'+cnpj+'</cnpj></ConsultaLicensa>"');
     try
        //PostData( req, res );
        GetData( cnpj, res );
        log(res.DataString);
        ixmldoc := TxmlDocument.Create(nil);
        try
          ixmldoc.XML.Text := res.DataString;
          ixmldoc.Active := true;

          inode := ixmldoc.ChildNodes.First.ChildNodes.FindNode('Status');
          FLicencaValida := assigned( inode) and (inode.Text = 'A');
          if FLicencaValida then
          begin
             inode := ixmldoc.ChildNodes.First.ChildNodes.FindNode('Administradoras');
             if Assigned(inode ) then
             begin
                inode := inode.ChildNodes.First;
                if Assigned( inode ) then
                repeat
                   Administradoras.Add( inode.text );
                   inode := inode.NextSibling;
                until not Assigned(inode);
             end;
          end;
          ixmldoc.Active := false;
        finally
           ixmldoc := nil;
        end;
     finally
        res.free;
        req.Free;
     end;
     result := True;
  except
     result := False;
     FLicencaValida := False;
     Administradoras.Clear;
  end;
end;

destructor TValidaLicenca.destroy;
begin
  FAdministradoras.Free;
  inherited;
end;


procedure TValidaLicenca.log(msg: string);
begin
//            if FindCmdLineSwitch('debug',['-'], true) then
   try
      with TStringList.Create do
      try
         if fileexists(ExtractFilePath( Application.ExeName )+'lic.txt') then LoadFromFile(ExtractFilePath( Application.ExeName )+'lic.txt');
         Add(msg);
         SaveToFile( ExtractFilePath( Application.ExeName )+'lic.txt' );
      finally
         Free;
      end;
   except
      raise;
   end;
end;

procedure TBuscaLicencaThread.SetName(nome: string);
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

initialization
  InitializeCriticalSection(CritSectLic);
  lBuscadores := TThreadList.Create;

finalization
  DeleteCriticalSection(CritSectLic);
 try
   FreeAndNil( lBuscadores );
 except
 end;

end.
