{ -- Rastreabilidade Código x Chamados –-
Data	         Autor	                   Projeto	 Chamado
20/10/2011	 Allison Diego dos Santos	      	    $Cxxxxx
	   
  --          Fim Rastreabilidade      –- }
unit uIntegracaoPamCard;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  SvcMgr,
  Dialogs,
  ExtCtrls,
  WinSvc,
  SqlExpr,
  DB,
  ActiveX;

type
  TIntegracaoPamCard = class( TService )
    oTM_Service: TTimer;
    procedure ServiceAfterInstall(Sender: TService);
    procedure ServiceContinue(Sender: TService; var Continued: Boolean);
    procedure ServiceCreate(Sender: TObject);
    procedure ServiceDestroy(Sender: TObject);
    procedure ServiceExecute(Sender: TService);
    procedure ServicePause(Sender: TService; var Paused: Boolean);
    procedure ServiceStart(Sender: TService; var Started: Boolean);
    procedure ServiceStop(Sender: TService; var Stopped: Boolean);
    procedure oTM_ServiceTimer(Sender: TObject);
  private
    FinstanceName: String;
    FMasterConnection: TSQLConnection;
    procedure ChangeServiceConfiguration;
    procedure Executa;
    procedure SetinstanceName    ( const Value : String         );
    procedure SetMasterConnection( const Value : TSQLConnection );
    procedure IniciaParaTimer    ( const Value : Boolean        );
    procedure AtualizaSituacaoContratoFreteIntegracao( const identicadorCFI : integer; const situacao : string );
    procedure PersisteContratoFreteIntegracaoLog( const caminhoArquivo : String; const identificaoCFI : integer; const operacaoRealizada : string );
    { Private declarations }
  public
    { Public declarations }
    property instanceName     : String         read FinstanceName     write SetinstanceName;
    property MasterConnection : TSQLConnection read FMasterConnection write SetMasterConnection;

    function GetServiceController: TServiceController; override;
  end;

var
  IntegracaoPamCard: TIntegracaoPamCard;

const
{-- Cosntantes de Controle do Timer --}
    cIntervaloMilisecundos = 5000;
    cIniciaTimer           = True;
    cParaTimer             = False;

{-- Cosntantes de Situacao Contrato de frete --}
    cSituacaoPendente      = 'P';
    cSituacaoExecutando    = 'E';
    cSituacaoGerada        = 'G';

    cEnvio                 = 'ENVIO';
    cRecebido              = 'RECEBIDO';

implementation

uses
  uT5Funcoes,
  uT5CnfConexao,
  uAdministradoraFactory, DateUtils;

{$R *.DFM}

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  IntegracaoPamCard.Controller(CtrlCode);
end;

procedure TIntegracaoPamCard.ChangeServiceConfiguration;
var
  serviceManager : Cardinal;
  service        : Cardinal;
  novoCaminho    : String;
begin
   {--
       Abre o service manager, service manager é uma função inicializada com o windows
       que permitir ter acesso a serviços instalados no computador.
       Mais Detalhes:
        - http://msdn.microsoft.com/en-us/library/windows/desktop/ms685150%28v=vs.85%29.aspx
    --}

   serviceManager := OpenSCManager( nil, nil, SC_MANAGER_ALL_ACCESS);
   if (serviceManager = 0) then
     RaiseLastOSError;
   try
      // Abre o Serviço
      service := OpenService(serviceManager, PChar(Self.Name), SERVICE_CHANGE_CONFIG);
      if ( service = 0 ) then
         RaiseLastOSError;

      try
         // Define os parametros do serviço
         novoCaminho := ParamStr( 0 ) + ' ' + Format('-empresa="%s"', [ FInstanceName ] );
         ChangeServiceConfig( service, SERVICE_NO_CHANGE,   //  dwServiceType
                                       SERVICE_NO_CHANGE,   //  dwStartType
                                       SERVICE_NO_CHANGE,   //  dwErrorControl
                                       PChar( novoCaminho ), //  <-- O unico que precisa ser definido/alterado
                                       nil,                 //  lpLoadOrderGroup
                                       nil,                 //  lpdwTagId
                                       nil,                 //  lpDependencies
                                       nil,                 //  lpServiceStartName
                                       nil,                 //  lpPassword
                                       nil);                //  lpDisplayName
      finally
         CloseServiceHandle( service );
      end;
   finally
     CloseServiceHandle(serviceManager);
   end;
end;

function TIntegracaoPamCard.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

procedure TIntegracaoPamCard.SetinstanceName( const Value: String );
begin
   if ( FInstanceName <> Value ) then
   begin
      FInstanceName := Value;
      if (FInstanceName <> '') then
      begin
         Self.Name := 'IntegracaoPamCard_' + FInstanceName;
         Self.DisplayName := Format('T-Transp Integracao Pam Card %s', [FInstanceName]);
      end;
   end;
end;

procedure TIntegracaoPamCard.ServiceAfterInstall( Sender: TService );
begin
   if ( FinstanceName <> '' ) then
   begin
      ChangeServiceConfiguration;
   end;
   uT5Funcoes.GravaLogXML( Self.Name, 'Informação', now, ( Self.Name ), ('Criando Serviço '+ Self.DisplayName + '...' )  );
end;

procedure TIntegracaoPamCard.ServiceContinue( Sender: TService; var Continued: Boolean );
begin
   uT5Funcoes.GravaLogXML( Self.Name, 'Erro', now, ( Self.Name ), ('Continuando a execução do Serviço '+ Self.DisplayName )   );
end;

procedure TIntegracaoPamCard.ServiceCreate(Sender: TObject);
begin
   MasterConnection := TSQLConnection.Create( Self );
   MasterConnection.LoginPrompt := false;
   uT5CnfConexao.ConfiguraConexao( MasterConnection );
   uT5Funcoes.SetMasterConnection( MasterConnection );
   self.oTM_Service.Interval := cIntervaloMilisecundos;
   self.IniciaParaTimer( cIniciaTimer );
end;

procedure TIntegracaoPamCard.ServiceDestroy(Sender: TObject);
begin
   uT5Funcoes.GravaLogXML( Self.Name, 'Informação', now, ( Self.Name ), ('Destruindo Serviço '+ Self.DisplayName + '...' )  );
end;

procedure TIntegracaoPamCard.ServiceExecute(Sender: TService);
begin
   while ( not Terminated ) do
      ServiceThread.ProcessRequests( True );
end;

procedure TIntegracaoPamCard.ServicePause(Sender: TService; var Paused: Boolean );
begin
   uT5Funcoes.GravaLogXML( Self.Name, 'Informação', now, ( Self.Name ), ('Serviço '+ Self.DisplayName + ' em pausa' )  );
end;

procedure TIntegracaoPamCard.ServiceStart(Sender: TService;  var Started: Boolean);
begin
   uT5Funcoes.GravaLogXML( Self.Name, 'Informação', now, ( Self.Name ), ('Serviço '+ Self.DisplayName + ' está inicializado' )  );
end;

procedure TIntegracaoPamCard.ServiceStop(Sender: TService;  var Stopped: Boolean);
begin
   uT5Funcoes.GravaLogXML( Self.Name, 'Informação', now, ( Self.Name ), ('Serviço '+ Self.DisplayName + ' está parado' )  );
end;

procedure TIntegracaoPamCard.SetMasterConnection( const Value: TSQLConnection );
begin
   FMasterConnection := Value;
end;

procedure TIntegracaoPamCard.IniciaParaTimer(const Value: Boolean);
begin
   oTM_Service.Enabled := value;
end;

procedure TIntegracaoPamCard.Executa;
var
   vQuery            : TSQLQuery;
   vSql              : String;
   factory           : TAdministradoraFactory;
   idetinficadorCTFI : Integer;
   caminhoDoArquivo  : String;
begin
   caminhoDoArquivo  := '';
   idetinficadorCTFI := 0;
   try
      vSql := 'SELECT contratofreteintegracao.CTFI_ID,                                                                           ' +#13#10+
              '       contratofreteintegracao.CTFI_SITUACAO,                                                                     ' +#13#10+
              '       conhecimentocontratofrete.CAPF_ID,                                                                         ' +#13#10+
              '       conhecimentocontratofrete.CNHCF_ID,                                                                        ' +#13#10+
              '       conhecimentocontratofrete.FLL_CODIGO,                                                                      ' +#13#10+
              '       conhecimentocontratofrete.CNH_SERIE,                                                                       ' +#13#10+
              '       conhecimentocontratofrete.CNH_CONHECIMENTO                                                                 ' +#13#10+
              'FROM contratofreteintegracao INNER JOIN                                                                           ' +#13#10+
              '      conhecimentocontratofrete ON ( contratofreteintegracao.CNHCF_ID = conhecimentocontratofrete.CNHCF_ID      ) ' +#13#10+
              'WHERE CTFI_SITUACAO = ''P''                                                                                       ' +#13#10+
              'ORDER BY contratofreteintegracao.CTFI_ID';

      vQuery  := TSQLQuery.Create( nil );

      with ( vQuery ) do
      try
         SQLConnection := self.MasterConnection;
         SQL.Text      := vSql;
         Open;
         while ( not Eof ) do
         begin

            uT5Funcoes.GravaLogXML( Self.Name, 'Informação', now, ( Self.Name ), ( 'Gerando o arquivo para o Conhecimento: ' +
                                                                                   IntToStr( FieldByName( 'FLL_CODIGO'       ).AsInteger ) +' - '+
                                                                                  QuotedStr( FieldByName( 'CNH_SERIE'        ).AsString  ) +' - '+
                                                                                   IntToStr( FieldByName( 'CNH_CONHECIMENTO' ).AsInteger ) ) );


            idetinficadorCTFI := FieldByName( 'CAPF_ID' ).AsInteger; {-- Passa-se o ID para a variavel, para que quando ocorra erro possa se alterar o a situação do registro --}
            AtualizaSituacaoContratoFreteIntegracao( idetinficadorCTFI, cSituacaoExecutando );

            factory := TAdministradoraFactory.Create( self );
            with ( factory ) do
            try

               setCodigoAdministradora ( FieldByName( 'CAPF_ID'          ).AsInteger );
               setFilial               ( FieldByName( 'FLL_CODIGO'       ).AsInteger );
               setSerie                ( FieldByName( 'CNH_SERIE'        ).AsString  );
               setConhecimento         ( FieldByName( 'CNH_CONHECIMENTO' ).AsInteger );

               insereContratoFrete;

               caminhoDoArquivo := getDiretorioArquivo;

               AtualizaSituacaoContratoFreteIntegracao( idetinficadorCTFI, cSituacaoGerada );

               PersisteContratoFreteIntegracaoLog( caminhoDoArquivo,
                                                   idetinficadorCTFI,
                                                   cEnvio );

               uT5Funcoes.GravaLogXML( Self.Name, 'Informação', now, ( Self.Name ), ('Gerado o arquivo: '+ ExtractFileName( caminhoDoArquivo )  )  );
            finally
               Free;
            end;
            Next;
         end;
      finally
         Free;
      end;
   except
      on e : Exception do
      begin
         if ( idetinficadorCTFI <> 0 ) then
            AtualizaSituacaoContratoFreteIntegracao( idetinficadorCTFI, cSituacaoPendente );
         uT5Funcoes.GravaLogXML( Self.Name, 'Erro', now, ( Self.Name ), ('(TIntegracaoPamCard.Executa)'+#13#10+e.Message )  );
      end;
   end;
end;

procedure TIntegracaoPamCard.oTM_ServiceTimer(Sender: TObject);
begin
   try
      self.IniciaParaTimer( cParaTimer );
      if ( not MasterConnection.Connected ) then MasterConnection.Connected := True;
      Executa;
   finally
      self.IniciaParaTimer( cIniciaTimer );
   end;
end;

procedure TIntegracaoPamCard.AtualizaSituacaoContratoFreteIntegracao( const identicadorCFI : integer; const situacao: string );
var parametros : TParams;
begin
   try
      parametros := TParams.Create( nil );
      CoInitialize(nil);
      with ( parametros ) do
      try
         CreateParam( ftInteger, 'CTFI_ID',       ptInput ).AsInteger := identicadorCFI;
         CreateParam( ftString,  'CTFI_SITUACAO', ptInput ).AsString  := situacao;
          pExecutaSQL( MasterConnection,
                      'UPDATE CONTRATOFRETEINTEGRACAO        ' +#13#10+
                      '   SET CTFI_SITUACAO = :CTFI_SITUACAO ' +#13#10+
                      'WHERE CTFI_ID = CTFI_ID', parametros );
      finally
         Free;
         CoUninitialize;
      end;
   except
      on e : Exception do
      begin
         uT5Funcoes.GravaLogXML( Self.Name, 'Erro', now, ( Self.Name ), ('(TIntegracaoPamCard.Executa)'+#13#10+e.Message )  );
      end;
   end;
end;

procedure TIntegracaoPamCard.PersisteContratoFreteIntegracaoLog( const caminhoArquivo    : String;
                                                                 const identificaoCFI    : integer;
                                                                 const operacaoRealizada : string );
   procedure getArquivoCompactado(Arquivo : TFileStream; P : TParam );
   var dMemoryStream : TMemoryStream;
       fFileStream   : TFileStream;
   begin
      dMemoryStream := TMemoryStream.create;
      fFileStream   := Arquivo;

      try
         CompactarArquivo( fFileStream, dMemoryStream );
         dMemoryStream.Position := 0;
         P.LoadFromStream( dMemoryStream, ftBlob );
      finally
         fFileStream.Free;
         dMemoryStream.Free;
      end;
   end;
var
   parametros : TParams;
   arquivo    : TFileStream;
begin
   try
      parametros := TParams.Create( nil );
      CoInitialize(nil);
      with ( parametros ) do
      try
         CreateParam( ftInteger, 'CTFI_ID',            ptInput ).AsInteger := identificaoCFI;
         CreateParam( ftDate,    'CTFIL_DATAOPERACAO', ptInput ).AsDate    := DateOf( now );
         CreateParam( ftString,  'CTFIL_OPERACAO',     ptInput ).AsString  := operacaoRealizada;
         CreateParam( ftBlob,    'CTFIL_ARQUIVO',      ptInput );
         if ( caminhoArquivo <> '' ) then
         begin
            arquivo := TFileStream.Create( caminhoArquivo, fmOpenRead );
            getArquivoCompactado( arquivo, ParamByName( 'CTFIL_ARQUIVO' ) );
         end else
         begin
            ParamByName( 'CTFIL_ARQUIVO' ).Clear;
         end;

         pExecutaSQL( MasterConnection,
                      'INSERT INTO CONTRATOFRETEINTEGRACAOLOG ( CTFI_ID,           '+#13#10+
                      '                                         CTFIL_DATAOPERACAO,'+#13#10+
                      '                                         CTFIL_OPERACAO,    '+#13#10+
                      '                                         CTFIL_ARQUIVO )    '+#13#10+
                      'VALUES (:CTFI_ID,                                           '+#13#10+
                      '        :CTFIL_DATAOPERACAO,                                '+#13#10+
                      '        :CTFIL_OPERACAO,                                    '+#13#10+
                      '        :CTFIL_ARQUIVO )', parametros );
      finally
         Free;
         CoUninitialize;
      end;
   except
      on e : Exception do
      begin
         uT5Funcoes.GravaLogXML( Self.Name, 'Erro', now, ( Self.Name ), ( '(TIntegracaoPamCard.PersisteContratoFreteIntegracaoLog)'+#13#10+e.Message )  );
      end;
   end;
end;

end.
