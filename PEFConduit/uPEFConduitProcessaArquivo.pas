unit uPEFConduitProcessaArquivo;

interface
uses
  Classes {$IFDEF MSWINDOWS} , Windows {$ENDIF}, uICFBase, utxt_base, uAdministradoraAbstract, uIntegracaoContratofreteBean;

type
  TPEFConduitProcessaArquivo = class(TThread)
  private
    mensagem : string;
    Farquivo: string;
    FconfiguracaoAdministradora: TObject;

    FcontinuaVivo : Boolean;
    FonLog: TNotifyLogEvent;
    FdiretorioLog: string;
    Fcnpj: string;

    FHoraEvento : TDateTime;

    procedure LogIt( Mensagem : string );
    procedure doLog;

    procedure Setarquivo(const Value: string);
    procedure SetName(nome: string);
    procedure processaArquivo;
    function Notifica(numeroContratoFrete : string; NovoStatus : tStatusRetorno; Motivo : tMotivoRetorno; Mensagem,
      ArquivoGerado, ArquivoRecebido, CIOT, Protocolo: string; ValorPedgio : Extended): boolean;
    function NotificaEnvio(numeroContratoFrete : string; NovoStatus : tStatusRetorno; Motivo : tMotivoRetorno;
      Mensagem, ArquivoGerado, ArquivoRecebido, CIOT,
      Protocolo: string; vValorPedagio : Extended): boolean;
    function NotificaCancelamento(numeroContratoFrete : string; NovoStatus : tStatusRetorno; Motivo : tMotivoRetorno;
      Mensagem, ArquivoGerado, ArquivoRecebido, CIOT,
      Protocolo: string): boolean;
    function ImprimeDOT(vBean: TObject): boolean;
    function GetNomeDOT(vBean: TObject): string;
    function SalvaArquivo(Conteudo, Arquivo: string): boolean;
    function GetDiretorioArquivoRetorno(var Diretorio,
      Arquivo: string): boolean;
    function processaRequisicaoExtrato(var msg: string;
      Administradora: TAdministradoraAbstract; BeanTXT: TTxt): boolean;
    function processaRequisicaoConsulta(var msg: string;
      Administradora: TAdministradoraAbstract; BeanTXT: TTxt): boolean;
    function processaRequisicaoCancelamento(var msg: string;
      Administradora: TAdministradoraAbstract): boolean;
    procedure AdicionaProtocoloAoArquivo(Farquivo, Protocolo: string);
    function processaRequisicaoAbertura(var msg: string; Administradora: TAdministradoraAbstract; vbean : TBeanContrato): boolean;
    function processaOperacaoPendente(var msg: string;
      Administradora: TAdministradoraAbstract; operacao : tOperacaoPEF): boolean;
    function NotificaExtrato(datasolicitada: string;
      NovoStatus: tStatusRetorno; Mensagem,
      ArquivoGerado, ArquivoRecebido: string; beanret: TObject): boolean;
    function NotificaConsulta(contrato: string;
      NovoStatus: tStatusRetorno; Mensagem, ArquivoGerado,
      ArquivoRecebido: string; beanret: TObject): boolean;
    function processaPagamentoImediato(var msg: string;
      Administradora: TAdministradoraAbstract): boolean;
    function NotificaPagamento(numeroContratoFrete: string;
      NovoStatus: tStatusRetorno; Motivo: tMotivoRetorno; Mensagem,
      ArquivoGerado, ArquivoRecebido, CIOT, Protocolo: string): boolean;
    function processaAlteracaoParcela(var msg: string;
      Administradora: TAdministradoraAbstract): boolean;
    function NotificaAlteracao(numeroContratoFrete: string;
      NovoStatus: tStatusRetorno; Motivo: tMotivoRetorno; Mensagem,
      ArquivoGerado, ArquivoRecebido, CIOT, Protocolo: string): boolean;
  protected
    procedure Execute; override;
  public
    constructor create( suspended : boolean = true );
    destructor destroy; override;
    property arquivo : string read Farquivo write Setarquivo;
    property cnpj : string read Fcnpj write Fcnpj;
    property diretorioLog : string read FdiretorioLog write FdiretorioLog;
    property configuracaoAdministradora : TObject read FconfiguracaoAdministradora write FconfiguracaoAdministradora;
    property onLog : TNotifyLogEvent read FonLog write FonLog;
  end;

implementation

uses SysUtils, ActiveX,
     uPEFLoadTXTBean, uAdministradoraFactory,
     uXMLConfig, utxt_pef_env_ret_v1_0,
     uPEFConduitLic, utxt_pef_can_ret_v1_0, uPEFConduitColetor, Variants,
     DateUtils, uovF_PEFConduitDOT, utxt_pef_con_v1_0, utxt_pef_ext_v1_0,
     utxt_pef_v1_0, utxt_pef_pag_v1_0, utxt_pef_can_v1_0,
  utxt_pef_alt_v1_0;

var
   class_var_Refs : TStringList;
   CritSect : TRTLCriticalSection;

{$IFDEF MSWINDOWS}
type
  TThreadNameInfo = record
    FType: LongWord;     // must be 0x1000
    FName: PChar;        // pointer to name (in user address space)
    FThreadID: LongWord; // thread ID (-1 indicates caller thread)
    FFlags: LongWord;    // reserved for future use, must be zero
  end;
{$ENDIF}

{ TPEFConduitProcessaArquivo }

procedure TPEFConduitProcessaArquivo.SetName( nome : string );
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

function GetDadosOperadora( operadora : integer; CA : TObject; Bean : TBeanContrato ) : TBeanOperadora;
var
  obj : TObject;
begin
   case operadora of
      0,1: result := nil;
      2:
      begin
        result := TBeanOperadoraRepom.create;
        with TBeanOperadoraRepom( result ) do
        begin
           WebServer  := Trepom( CA ).webserver;
           usuario    := Trepom( CA ).usuario;
           senha      := Trepom( CA ).senha;

           proxy.proxy        := tconfiguracao( tgrupo( tcnpj( tadministradoras( Trepom( CA ).Admininstradora ).cnpj ).grupo ).configuracao ).proxy;
           proxy.proxyusuario := tconfiguracao( tgrupo( tcnpj( tadministradoras( Trepom( CA ).Admininstradora ).cnpj ).grupo ).configuracao ).proxyusuario;
           proxy.proxysenha   := tconfiguracao( tgrupo( tcnpj( tadministradoras( Trepom( CA ).Admininstradora ).cnpj ).grupo ).configuracao ).proxysenha;

        end;

        if assigned( bean ) then
        begin
           if bean.ParametrosOperadora.Values['OPERACAO_CODIGO'] = '' then bean.ParametrosOperadora.Values['OPERACAO_CODIGO'] := ( Trepom( CA ).parametrosRepom.OPERACAO_CODIGO );
           if bean.ParametrosOperadora.Values['ROTEIRO_IDA_VOLTA'] = '' then bean.ParametrosOperadora.Values['ROTEIRO_IDA_VOLTA'] := ( Trepom( CA ).parametrosRepom.ROTEIRO_IDA_VOLTA );
        end;

      end;
      3:result := nil;
      4:
      begin
         result := TBeanOperadoraPamcard.create;
         with  TBeanOperadoraPamcard( result ) do
         begin
            diretorioEntrada := tpancary(CA).retorno;
            diretorioSaida   := tpancary(CA).envio;

            proxy.proxy        := tconfiguracao( tgrupo( tcnpj( tadministradoras( tpancary( CA ).Admininstradora ).cnpj ).grupo ).configuracao ).proxy;
            proxy.proxyusuario := tconfiguracao( tgrupo( tcnpj( tadministradoras( tpancary( CA ).Admininstradora ).cnpj ).grupo ).configuracao ).proxyusuario;
            proxy.proxysenha   := tconfiguracao( tgrupo( tcnpj( tadministradoras( tpancary( CA ).Admininstradora ).cnpj ).grupo ).configuracao ).proxysenha;
         end;
        if assigned( bean ) then
        begin
           if Bean.ParametrosOperadora.Values['viagem_parcelaA_efetivacao_tipo'] = '' then  Bean.ParametrosOperadora.Values['viagem_parcelaA_efetivacao_tipo'] := tpancary(ca).parametrosPamcary.viagem_parcelaA_efetivacao_tipo;
           if Bean.ParametrosOperadora.Values['viagem_parcelaA_status_id'] = '' then  Bean.ParametrosOperadora.Values['viagem_parcelaA_status_id'] := tpancary(ca).parametrosPamcary.viagem_parcelaA_status_id;
           if Bean.ParametrosOperadora.Values['viagem_parcelaS_efetivacao_tipo'] = '' then  Bean.ParametrosOperadora.Values['viagem_parcelaS_efetivacao_tipo'] := tpancary(ca).parametrosPamcary.viagem_parcelaS_efetivacao_tipo;

           if Bean.ParametrosOperadora.Values['viagem_parcelaS_status_id'] = '' then  Bean.ParametrosOperadora.Values['viagem_parcelaS_status_id'] := tpancary(ca).parametrosPamcary.viagem_parcelaS_status_id;
           if Bean.ParametrosOperadora.Values['viagem_quitacao'] = '' then  Bean.ParametrosOperadora.Values['viagem_quitacao'] := tpancary(ca).parametrosPamcary.viagem_quitacao;
           if Bean.ParametrosOperadora.Values['valor_minimo_VA'] = '' then  Bean.ParametrosOperadora.Values['valor_minimo_VA'] := tpancary(ca).parametrosPamcary.valor_minimo_VA;
        end;

      end;
      5:
      begin
        result := TBeanOperadoraRodocred.create;
        with TBeanOperadoraRodocred( result ) do
        begin
            WebServer  := tdbtrans(ca).webserver;
            usuario    := tdbtrans(ca).usuario;
            senha      := tdbtrans(ca).senha;
            cliente    := tdbtrans(ca).cliente;
            proxy.proxy        := tconfiguracao( tgrupo( tcnpj( tadministradoras( tdbtrans( CA ).Admininstradora ).cnpj ).grupo ).configuracao ).proxy;
            proxy.proxyusuario := tconfiguracao( tgrupo( tcnpj( tadministradoras( tdbtrans( CA ).Admininstradora ).cnpj ).grupo ).configuracao ).proxyusuario;
            proxy.proxysenha   := tconfiguracao( tgrupo( tcnpj( tadministradoras( tdbtrans( CA ).Admininstradora ).cnpj ).grupo ).configuracao ).proxysenha;

            obj := tdbtrans( CA ).Admininstradora;
            if Assigned(obj ) then
            begin
               obj := tadministradoras( obj).cnpj;
               if Assigned(obj ) then
               begin
                  obj := tcnpj(obj).grupo;
                  if Assigned(obj ) then
                  begin
                     obj := tgrupo(obj).configuracao;
                     if Assigned( obj ) then
                     begin
                        proxy.proxy        := tconfiguracao( obj ).proxy;
                        proxy.proxyusuario := tconfiguracao( obj ).proxyusuario;
                        proxy.proxysenha   := tconfiguracao( obj ).proxysenha;

                     end;
                  end;
               end;
            end;
        end;
        if assigned( bean ) then
        begin
           if Bean.ParametrosOperadora.Values['CondicaoLiberacaoOperacao_Adt'] = '' then  Bean.ParametrosOperadora.Values['CondicaoLiberacaoOperacao_Adt'] := tdbtrans(ca).parametrosDBTrans.CondicaoLiberacaoOperacao_Adt;
           if Bean.ParametrosOperadora.Values['LocalRealizacao_Adiantamento'] = '' then  Bean.ParametrosOperadora.Values['LocalRealizacao_Adiantamento'] := tdbtrans(ca).parametrosDBTrans.LocalRealizacao_Adiantamento;
           if Bean.ParametrosOperadora.Values['CodigoOperacao_Saldo'] = '' then  Bean.ParametrosOperadora.Values['CodigoOperacao_Saldo'] := tdbtrans(ca).parametrosDBTrans.CodigoOperacao_Saldo;
           if Bean.ParametrosOperadora.Values['CondicaoLiberacaoOperacao_Saldo'] = '' then  Bean.ParametrosOperadora.Values['CondicaoLiberacaoOperacao_Saldo'] := tdbtrans(ca).parametrosDBTrans.CondicaoLiberacaoOperacao_Saldo;
           if Bean.ParametrosOperadora.Values['LocalRealizacao_Saldo'] = '' then  Bean.ParametrosOperadora.Values['LocalRealizacao_Saldo'] := tdbtrans(ca).parametrosDBTrans.LocalRealizacao_Saldo;
           if Bean.ParametrosOperadora.Values['CodigoClausula'] = '' then  Bean.ParametrosOperadora.Values['CodigoClausula'] := tdbtrans(ca).parametrosDBTrans.CodigoClausula;
           if Bean.ParametrosOperadora.Values['CodigoClausulaPeso'] = '' then  Bean.ParametrosOperadora.Values['CodigoClausulaPeso'] := tdbtrans(ca).parametrosDBTrans.CodigoClausulaPeso;
           if Bean.ParametrosOperadora.Values['CodigoClausulaViagem'] = '' then  Bean.ParametrosOperadora.Values['CodigoClausulaViagem'] := tdbtrans(ca).parametrosDBTrans.CodigoClausulaViagem;
           if Bean.ParametrosOperadora.Values['Documentos_Entrega'] = '' then  Bean.ParametrosOperadora.Values['Documentos_Entrega'] := tdbtrans(ca).parametrosDBTrans.Documentos_Entrega;
        end;

      end;
      6:
      begin
         result := TBeanOperadoraNDD.create;
         with  TBeanOperadoraNDD( result ) do
         begin

            TipoIntegracao := Copy(tnddcargo(ca).tipoIntegracao,1,1);
            if TipoIntegracao = '' then  TipoIntegracao := 'T';

            diretorioEntrada := tnddcargo(ca).retorno;
            diretorioSaida   := tnddcargo(ca).envio;

            WebServer        := tnddcargo(ca).nddws;
            Certificado      := tnddcargo(ca).nddcertificado;

            proxy.proxy        := tconfiguracao( tgrupo( tcnpj( tadministradoras( tnddcargo( CA ).Admininstradora ).cnpj ).grupo ).configuracao ).proxy;
            proxy.proxyusuario := tconfiguracao( tgrupo( tcnpj( tadministradoras( tnddcargo( CA ).Admininstradora ).cnpj ).grupo ).configuracao ).proxyusuario;
            proxy.proxysenha   := tconfiguracao( tgrupo( tcnpj( tadministradoras( tnddcargo( CA ).Admininstradora ).cnpj ).grupo ).configuracao ).proxysenha;
         end;
        if assigned( bean ) then
        begin
            if Bean.ParametrosOperadora.Values['GerarMovimentacaoFinanceira'] = '' then  Bean.ParametrosOperadora.Values['GerarMovimentacaoFinanceira'] := tnddcargo(ca).parametrosNddCargo.GerarMovimentacaoFinanceira;
            if Bean.ParametrosOperadora.Values['ImpressaoAutomaticaDOT'] = '' then  Bean.ParametrosOperadora.Values['ImpressaoAutomaticaDOT'] := tnddcargo(ca).parametrosNddCargo.ImpressaoAutomaticaDOT;
            if Bean.ParametrosOperadora.Values['TipodeOperacaodeTransporte'] = '' then  Bean.ParametrosOperadora.Values['TipodeOperacaodeTransporte'] := tnddcargo(ca).parametrosNddCargo.TipodeOperacaodeTransporte;
            if Bean.ParametrosOperadora.Values['TipodaCarga'] = '' then  Bean.ParametrosOperadora.Values['TipodaCarga'] := tnddcargo(ca).parametrosNddCargo.TipodaCarga;
            if Bean.ParametrosOperadora.Values['ProprietariodaCarga'] = '' then  Bean.ParametrosOperadora.Values['ProprietariodaCarga'] := tnddcargo(ca).parametrosNddCargo.ProprietariodaCarga;
            if Bean.ParametrosOperadora.Values['TipodeRotaPadrao'] = '' then  Bean.ParametrosOperadora.Values['TipodeRotaPadrao'] := tnddcargo(ca).parametrosNddCargo.TipodeRotaPadrao;
            if Bean.ParametrosOperadora.Values['UtilizaRoteirizador'] = '' then  Bean.ParametrosOperadora.Values['UtilizaRoteirizador'] := tnddcargo(ca).parametrosNddCargo.UtilizaRoteirizador;
            if Bean.ParametrosOperadora.Values['NotificaRotaContratante'] = '' then  Bean.ParametrosOperadora.Values['NotificaRotaContratante'] := tnddcargo(ca).parametrosNddCargo.NotificaRotaContratante;
            if Bean.ParametrosOperadora.Values['LocaldeEfetivacaodoPagamento'] = '' then  Bean.ParametrosOperadora.Values['LocaldeEfetivacaodoPagamento'] := tnddcargo(ca).parametrosNddCargo.LocaldeEfetivacaodoPagamento;
            if Bean.ParametrosOperadora.Values['LocaldeEfetivacaodoPagamentoAdt'] = '' then  Bean.ParametrosOperadora.Values['LocaldeEfetivacaodoPagamentoAdt'] := tnddcargo(ca).parametrosNddCargo.LocaldeEfetivacaodoPagamentoAdt;
   //         if Bean.ParametrosOperadora.Values['DocumentoParaEntregar'] = '' then  Bean.ParametrosOperadora.Values['DocumentoParaEntregar'] := tnddcargo(ca).parametrosNddCargo.DocumentoParaEntregar;

            if Bean.ParametrosOperadora.Values['DiasParaLiberarSaldo'] = '' then  Bean.ParametrosOperadora.Values['DiasParaLiberarSaldo'] := tnddcargo(ca).parametrosNddCargo.DiasParaLiberarSaldo;{#18466}
            if Bean.ParametrosOperadora.Values['DiasParaLiberarSaldo'] = '' then  Bean.ParametrosOperadora.Values['DiasParaLiberarSaldo'] := '30';{#18466}
            if Bean.ParametrosOperadora.Values['MinutosParaLiberarAdiantamento'] = '' then  Bean.ParametrosOperadora.Values['MinutosParaLiberarAdiantamento'] := tnddcargo(ca).parametrosNddCargo.MinutosParaLiberarAdiantamento;{#18466}
            if Bean.ParametrosOperadora.Values['MinutosParaLiberarAdiantamento'] = '' then  Bean.ParametrosOperadora.Values['MinutosParaLiberarAdiantamento'] := '60';{#18466}

            if Bean.ParametrosOperadora.Values['Confirmador'] = '' then  Bean.ParametrosOperadora.Values['Confirmador'] := tnddcargo(ca).parametrosNddCargo.Confirmador;{#19164}

        end;
      end;
      7:
      begin
         result := TBeanOperadoraTicket.create;
         with  TBeanOperadoraTicket( result ) do
         begin
            WebServer        := tticket( CA ).webserver;
            usuario          := tticket( CA ).usuario;
            senha            := tticket( CA ).senha;
            codigoCliente    := tticket( CA ).codigoCliente;
            codigoBase       := tticket( CA ).codigoBase;
            proxy.proxy        := tconfiguracao( tgrupo( tcnpj( tadministradoras( tticket( CA ).Admininstradora ).cnpj ).grupo ).configuracao ).proxy;
            proxy.proxyusuario := tconfiguracao( tgrupo( tcnpj( tadministradoras( tticket( CA ).Admininstradora ).cnpj ).grupo ).configuracao ).proxyusuario;
            proxy.proxysenha   := tconfiguracao( tgrupo( tcnpj( tadministradoras( tticket( CA ).Admininstradora ).cnpj ).grupo ).configuracao ).proxysenha;
         end;
      end;
      8:
      begin
         result := TBeanOperadoraTarget.create;
         with  TBeanOperadoraTarget( result ) do
         begin
            WebServer          := tTarget( CA ).webserver;
            Identification     := tTarget( CA ).Identification;
            Token              := tTarget( CA ).Token;
            proxy.proxy        := tconfiguracao( tgrupo( tcnpj( tadministradoras( tticket( CA ).Admininstradora ).cnpj ).grupo ).configuracao ).proxy;
            proxy.proxyusuario := tconfiguracao( tgrupo( tcnpj( tadministradoras( tticket( CA ).Admininstradora ).cnpj ).grupo ).configuracao ).proxyusuario;
            proxy.proxysenha   := tconfiguracao( tgrupo( tcnpj( tadministradoras( tticket( CA ).Admininstradora ).cnpj ).grupo ).configuracao ).proxysenha;
         end;
      end;
      else result := nil;
   end;
end;

function TPEFConduitProcessaArquivo.SalvaArquivo( Conteudo : string; Arquivo : string ) : boolean;
begin
   if conteudo <> '' then
   begin
      if tconfiguracao( tgrupo( tcnpj( tadministradoras( tAdministradoraContratoFrete( configuracaoAdministradora ).Admininstradora ).cnpj ).grupo ).configuracao ).retornocomhora = 'S' then
         arquivo := ChangeFileExt( Arquivo,'')+'_'+FormatDateTime('yyyymmddhhnnsszzz', FHoraEvento)+extractFileExt( Arquivo );

      with TStringList.Create do
      try
         text := Conteudo;
         if text <> '' then
         begin
            SaveToFile(  diretorioLog+  ChangeFileExt( ExtractFileName(Arquivo),'')+'_'+FormatDateTime('yyyymmddhhnnsszzz', FHoraEvento)+extractFileExt( Arquivo ));
            SaveToFile(  arquivo );
         end;
      finally
         Free;
      end;
   end;
   result := true;
end;

function TPEFConduitProcessaArquivo.GetDiretorioArquivoRetorno( var Diretorio, Arquivo : string ) :boolean;
var a : TStringList;
begin
   Diretorio := ExtractFilePath( Farquivo );
   a := Split( '\', Diretorio);
   try
      a.Delete( a.Count-1);
   finally
      Diretorio := Merge('\', a );
   end;
   Diretorio := Diretorio+'RETORNO\';
   Arquivo   := ExtractFileName( Farquivo );
   result := true;
end;

function TPEFConduitProcessaArquivo.NotificaCancelamento( numeroContratoFrete:string;
                                         NovoStatus : tStatusRetorno;
                                         Motivo : tMotivoRetorno;
                                         Mensagem : string;
                                         ArquivoGerado : string;
                                         ArquivoRecebido : string;
                                         CIOT,
                                         Protocolo : string ) : boolean;
var
   ret : utxt_pef_can_ret_v1_0.TCancelamento_0000;
   vDiretorio : string;
   vArquivo   : string;
begin
   GetDiretorioArquivoRetorno( vDiretorio, vArquivo );

   ret := utxt_pef_can_ret_v1_0.TCancelamento_0000.create;
   try
      ret.protocolo:= Protocolo;
      if NovoStatus = tsrErro {'E'} then
         ret.motivoRetorno := 'E'
      else if NovoStatus = tsrAguardando { 'A' } then
         ret.motivoRetorno := 'I'
      else if NovoStatus = tsrCancelado {'C'} then
         ret.motivoRetorno := 'C'
      else if NovoStatus = tsrAprovado {'R'} then
         ret.motivoRetorno := 'C'
      else if NovoStatus = tsrInformacao {'I'} then
         ret.motivoRetorno := 'I'
      else
         ret.motivoRetorno := 'I'; //NovoStatus;

      ret.Descricao := Mensagem;
      ret.numeroContratoFrete := numeroContratoFrete;

      ret.add0001.DataHoraRetorno := Now;

      if ret.motivoRetorno = 'I' then
      begin
         ret.SaveToFile( diretorioLog+ ChangeFileExt( vArquivo,'')+'_'+FormatDateTime('yyyymmddhhnnsszzz', FHoraEvento)+'.sit');
         if tconfiguracao( tgrupo( tcnpj( tadministradoras( tAdministradoraContratoFrete( configuracaoAdministradora ).Admininstradora ).cnpj ).grupo ).configuracao ).retornocomhora = 'S' then
            ret.SaveToFile( vDiretorio+ChangeFileExt( vArquivo,'')+'_'+FormatDateTime('yyyymmddhhnnsszzz', FHoraEvento)+'.sit')
         else
            ret.SaveToFile( vDiretorio+ChangeFileExt( vArquivo,'.sit'));
      end
      else
      begin
         ret.SaveToFile( diretorioLog+ ChangeFileExt( vArquivo,'')+'_'+FormatDateTime('yyyymmddhhnnsszzz', FHoraEvento)+'.ret');
         if tconfiguracao( tgrupo( tcnpj( tadministradoras( tAdministradoraContratoFrete( configuracaoAdministradora ).Admininstradora ).cnpj ).grupo ).configuracao ).retornocomhora = 'S' then
            ret.SaveToFile( vDiretorio+ChangeFileExt( vArquivo,'')+'_'+FormatDateTime('yyyymmddhhnnsszzz', FHoraEvento)+'.ret')
         else
            ret.SaveToFile( vDiretorio+ChangeFileExt( vArquivo,'.ret'));
      end;
   finally
      ret.free;
   end;

   salvaArquivo( ArquivoGerado, vDiretorio+ChangeFileExt( vArquivo,'')+'.gen' );
   salvaArquivo( ArquivoRecebido, vDiretorio+ChangeFileExt( vArquivo,'')+'.rec' );

   result := True;
end;


function TPEFConduitProcessaArquivo.GetNomeDOT( vBean : TObject ) : string;
var
   vDiretorio : string;
   vArquivo   : string;
begin
   GetDiretorioArquivoRetorno( vDiretorio, vArquivo );

   if tconfiguracao( tgrupo( tcnpj( tadministradoras( tAdministradoraContratoFrete( configuracaoAdministradora ).Admininstradora ).cnpj ).grupo ).configuracao ).retornocomhora = 'S' then
      vArquivo := ChangeFileExt( vArquivo,'')+'_'+FormatDateTime('yyyymmddhhnnsszzz', FHoraEvento)+'.pdf';

   vArquivo := ChangeFileExt( vArquivo, '.pdf' );
   vArquivo   := vDiretorio+vArquivo;

   result := vArquivo;

end;

function TPEFConduitProcessaArquivo.ImprimeDOT( vBean : TObject ) : boolean;
var
   vDiretorio : string;
   vArquivo   : string;
   a : TStringList;
   oBean : TBeanContrato;
   msg : string;
begin
   oBean := TBeanContrato( vBean );
   try
      vDiretorio := ExtractFilePath( Farquivo );
      a := Split( '\', vDiretorio);
      try
         a.Delete( a.Count-1);
      finally
         vDiretorio := Merge('\', a );
      end;
      vDiretorio := vDiretorio+'RETORNO\';
      vArquivo := ExtractFileName( FArquivo );
      vArquivo := ChangeFileExt( vArquivo, '.pdf' );
      vArquivo   := vDiretorio+vArquivo;

      with TovF_PEFConduitDOT.Create( nil ) do
      try
         bean := oBean;
         result := processaDOT( vArquivo, msg );
         if not result then  NotificaEnvio( oBean.numeroContratoFrete, tsrInformacao{'I'}, tmrInformativo{'I'}, 'Não foi possivel fazer a impressao do DOT: '+msg, '','','','', 0) ;
      finally
         Free;
      end;
   except
      on e:exception do
      begin
         LogIt( 'Imprimindo DOT : '+e.Message );
         result := false;
      end;
   end;
end;


function TPEFConduitProcessaArquivo.NotificaConsulta( contrato:string;
                                         NovoStatus : tStatusRetorno;
                                         Mensagem : string;
                                         ArquivoGerado : string;
                                         ArquivoRecebido : string;
                                         beanret : TObject  ) : boolean;
var
   vDiretorio : string;
   vArquivo   : string;
   ret        : TConsulta_ret_0000;
begin
   GetDiretorioArquivoRetorno( vDiretorio, vArquivo );
   ret := TConsulta_ret_0000( beanret );

   if not Assigned( ret ) then ret :=  TConsulta_ret_0000.create;

   try

      if NovoStatus = tsrErro {'E'} then
         ret.motivoRetorno := 'E'
      else if NovoStatus = tsrAguardando {'A'} then
         ret.motivoRetorno := 'I'
      else if NovoStatus = tsrAprovado {'R'} then
         ret.motivoRetorno := 'A'
      else if NovoStatus = tsrInformacao {'I'} then
         ret.motivoRetorno := 'I'
      else
         ret.motivoRetorno := 'I'; //NovoStatus;
      ret.Motivo := Mensagem;



      if ret.motivoRetorno = 'I' then
      begin
         ret.SaveToFile( diretorioLog+ ChangeFileExt( vArquivo,'')+'_'+FormatDateTime('yyyymmddhhnnsszzz', FHoraEvento)+'.sit');

         {   fixo mudar apos teste agotran
         if tconfiguracao( tgrupo(  tcnpj( tadministradoras(  tAdministradoraContratoFrete( configuracaoAdministradora ).Admininstradora ).cnpj ).grupo ).configuracao ).retornocomhora = 'S' then
            ret.SaveToFile( vDiretorio+ChangeFileExt( vArquivo,'')+'_'+FormatDateTime('yyyymmddhhnnsszzz', FHoraEvento)+'.sit')
         else
            ret.SaveToFile( vDiretorio+ChangeFileExt( vArquivo,'.sit'));  }
      end
      else
      begin
         //ret.SaveToFile( diretorioLog+ ChangeFileExt( vArquivo,'')+'_'+FormatDateTime('yyyymmddhhnnsszzz', FHoraEvento)+'.ret'); fixo mudar apos teste agotran
         if tconfiguracao( tgrupo(  tcnpj( tadministradoras(  tAdministradoraContratoFrete( configuracaoAdministradora ).Admininstradora ).cnpj ).grupo ).configuracao ).retornocomhora = 'S' then
            ret.SaveToFile( vDiretorio+ChangeFileExt( vArquivo,'')+'_'+FormatDateTime('yyyymmddhhnnsszzz', FHoraEvento)+'.ret')
         else
            ret.SaveToFile( vDiretorio+ChangeFileExt( vArquivo,'.ret'));
      end;
   finally
      ret.free;
   end;


   //salvaArquivo( ArquivoGerado, vDiretorio+ChangeFileExt( vArquivo,'')+'.gen' );      fixo mudar apos teste agotran
   salvaArquivo( ArquivoRecebido, vDiretorio+ChangeFileExt( vArquivo,'')+'.rec' );

   result := True;
end;


function TPEFConduitProcessaArquivo.NotificaExtrato( datasolicitada:string;
                                         NovoStatus : tStatusRetorno;
                                         Mensagem : string;
                                         ArquivoGerado : string;
                                         ArquivoRecebido : string;
                                         beanret : TObject  ) : boolean;
var
   vDiretorio : string;
   vArquivo   : string;
   ret        : TExtrato_ret_0000;
begin
   GetDiretorioArquivoRetorno( vDiretorio, vArquivo );
   ret := TExtrato_ret_0000( beanret );

   if not Assigned( ret ) then ret :=  TExtrato_ret_0000.create;

   try

      if NovoStatus = tsrErro {'E'} then
         ret.motivoRetorno := 'E'
      else if NovoStatus = tsrAguardando {'A'} then
         ret.motivoRetorno := 'I'
      else if NovoStatus = tsrAprovado {'R'} then
         ret.motivoRetorno := 'A'
      else if NovoStatus = tsrInformacao {'I'} then
         ret.motivoRetorno := 'I'
      else
         ret.motivoRetorno := 'I'; //NovoStatus;
      ret.Descricao := Mensagem;



      if ret.motivoRetorno = 'I' then
      begin
         ret.SaveToFile( diretorioLog+ ChangeFileExt( vArquivo,'')+'_'+FormatDateTime('yyyymmddhhnnsszzz', FHoraEvento)+'.sit');

         if tconfiguracao( tgrupo(  tcnpj( tadministradoras(  tAdministradoraContratoFrete( configuracaoAdministradora ).Admininstradora ).cnpj ).grupo ).configuracao ).retornocomhora = 'S' then
            ret.SaveToFile( vDiretorio+ChangeFileExt( vArquivo,'')+'_'+FormatDateTime('yyyymmddhhnnsszzz', FHoraEvento)+'.sit')
         else
            ret.SaveToFile( vDiretorio+ChangeFileExt( vArquivo,'.sit'));
      end
      else
      begin
         ret.SaveToFile( diretorioLog+ ChangeFileExt( vArquivo,'')+'_'+FormatDateTime('yyyymmddhhnnsszzz', FHoraEvento)+'.ret');
         if tconfiguracao( tgrupo(  tcnpj( tadministradoras(  tAdministradoraContratoFrete( configuracaoAdministradora ).Admininstradora ).cnpj ).grupo ).configuracao ).retornocomhora = 'S' then
            ret.SaveToFile( vDiretorio+ChangeFileExt( vArquivo,'')+'_'+FormatDateTime('yyyymmddhhnnsszzz', FHoraEvento)+'.ret')
         else
            ret.SaveToFile( vDiretorio+ChangeFileExt( vArquivo,'.ret'));
      end;
   finally
      ret.free;
   end;


   salvaArquivo( ArquivoGerado, vDiretorio+ChangeFileExt( vArquivo,'')+'.gen' );
   salvaArquivo( ArquivoRecebido, vDiretorio+ChangeFileExt( vArquivo,'')+'.rec' );

   result := True;
end;


function TPEFConduitProcessaArquivo.NotificaEnvio( numeroContratoFrete:string;
                                         NovoStatus : tStatusRetorno;
                                         Motivo : tMotivoRetorno;
                                         Mensagem : string;
                                         ArquivoGerado : string;
                                         ArquivoRecebido : string;
                                         CIOT,
                                         Protocolo : string;
                                         vValorPedagio : Extended ) : boolean;
var
   ret : utxt_pef_env_ret_v1_0.T0000;
   vDiretorio : string;
   vArquivo   : string;
begin
   GetDiretorioArquivoRetorno( vDiretorio, vArquivo );

   ret := utxt_pef_env_ret_v1_0.T0000.create;
   try
      ret.CIOT := CIOT;
      ret.viagem:= Protocolo;
      if NovoStatus = tsrErro {'E'} then
         ret.motivoRetorno := 'E'
      else if NovoStatus = tsrAguardando {'A'} then
         ret.motivoRetorno := 'I'
      else if NovoStatus = tsrAprovado {'R'} then
         ret.motivoRetorno := 'A'
      else if NovoStatus = tsrInformacao {'I'} then
         ret.motivoRetorno := 'I'
      else
         ret.motivoRetorno := 'I'; //NovoStatus;
      ret.Descricao := Mensagem;
      ret.numeroContratoFrete := numeroContratoFrete;

      with ret.add0001 do
      begin
        DataHoraRetorno := Now;
        ValorPedagio    := vValorPedagio;
      end;

      if ret.motivoRetorno = 'I' then
      begin
         ret.SaveToFile( diretorioLog+ ChangeFileExt( vArquivo,'')+'_'+FormatDateTime('yyyymmddhhnnsszzz', FHoraEvento)+'.sit');

         if tconfiguracao( tgrupo(  tcnpj( tadministradoras(  tAdministradoraContratoFrete( configuracaoAdministradora ).Admininstradora ).cnpj ).grupo ).configuracao ).retornocomhora = 'S' then
            ret.SaveToFile( vDiretorio+ChangeFileExt( vArquivo,'')+'_'+FormatDateTime('yyyymmddhhnnsszzz', FHoraEvento)+'.sit')
         else
            ret.SaveToFile( vDiretorio+ChangeFileExt( vArquivo,'.sit'));
      end
      else
      begin
         ret.SaveToFile( diretorioLog+ ChangeFileExt( vArquivo,'')+'_'+FormatDateTime('yyyymmddhhnnsszzz', FHoraEvento)+'.ret');
         if tconfiguracao( tgrupo(  tcnpj( tadministradoras(  tAdministradoraContratoFrete( configuracaoAdministradora ).Admininstradora ).cnpj ).grupo ).configuracao ).retornocomhora = 'S' then
            ret.SaveToFile( vDiretorio+ChangeFileExt( vArquivo,'')+'_'+FormatDateTime('yyyymmddhhnnsszzz', FHoraEvento)+'.ret')
         else
            ret.SaveToFile( vDiretorio+ChangeFileExt( vArquivo,'.ret'));
      end;
   finally
      ret.free;
   end;


   salvaArquivo( ArquivoGerado, vDiretorio+ChangeFileExt( vArquivo,'')+'.gen' );
   salvaArquivo( ArquivoRecebido, vDiretorio+ChangeFileExt( vArquivo,'')+'.rec' );

   result := True;
end;

function TPEFConduitProcessaArquivo.NotificaPagamento( numeroContratoFrete:string;
                                         NovoStatus : tStatusRetorno;
                                         Motivo : tMotivoRetorno;
                                         Mensagem : string;
                                         ArquivoGerado : string;
                                         ArquivoRecebido : string;
                                         CIOT,
                                         Protocolo : string ) : boolean;
var
   ret : utxt_pef_pag_v1_0.TPagamento_ret_0000;
   vDiretorio : string;
   vArquivo   : string;
begin
   GetDiretorioArquivoRetorno( vDiretorio, vArquivo );

   ret := utxt_pef_pag_v1_0.TPagamento_ret_0000.create;
   try
      ret.protocolo:= Protocolo;
      if NovoStatus = tsrErro {'E'} then
         ret.motivoRetorno := 'E'
      else if NovoStatus = tsrAguardando { 'A' } then
         ret.motivoRetorno := 'I'
      else if NovoStatus = tsrCancelado {'C'} then
         ret.motivoRetorno := 'C'
      else if NovoStatus = tsrAprovado {'R'} then
         ret.motivoRetorno := 'C'
      else if NovoStatus = tsrInformacao {'I'} then
         ret.motivoRetorno := 'I'
      else
         ret.motivoRetorno := 'I'; //NovoStatus;

      ret.Descricao := Mensagem;
      ret.numeroContratoFrete := numeroContratoFrete;

      ret.add0001.DataHoraRetorno := Now;

      if ret.motivoRetorno = 'I' then
      begin
         ret.SaveToFile( diretorioLog+ ChangeFileExt( vArquivo,'')+'_'+FormatDateTime('yyyymmddhhnnsszzz', FHoraEvento)+'.sit');
         if tconfiguracao( tgrupo( tcnpj( tadministradoras( tAdministradoraContratoFrete( configuracaoAdministradora ).Admininstradora ).cnpj ).grupo ).configuracao ).retornocomhora = 'S' then
            ret.SaveToFile( vDiretorio+ChangeFileExt( vArquivo,'')+'_'+FormatDateTime('yyyymmddhhnnsszzz', FHoraEvento)+'.sit')
         else
            ret.SaveToFile( vDiretorio+ChangeFileExt( vArquivo,'.sit'));
      end
      else
      begin
         ret.SaveToFile( diretorioLog+ ChangeFileExt( vArquivo,'')+'_'+FormatDateTime('yyyymmddhhnnsszzz', FHoraEvento)+'.ret');
         if tconfiguracao( tgrupo( tcnpj( tadministradoras( tAdministradoraContratoFrete( configuracaoAdministradora ).Admininstradora ).cnpj ).grupo ).configuracao ).retornocomhora = 'S' then
            ret.SaveToFile( vDiretorio+ChangeFileExt( vArquivo,'')+'_'+FormatDateTime('yyyymmddhhnnsszzz', FHoraEvento)+'.ret')
         else
            ret.SaveToFile( vDiretorio+ChangeFileExt( vArquivo,'.ret'));
      end;
   finally
      ret.free;
   end;

   salvaArquivo( ArquivoGerado, vDiretorio+ChangeFileExt( vArquivo,'')+'.gen' );
   salvaArquivo( ArquivoRecebido, vDiretorio+ChangeFileExt( vArquivo,'')+'.rec' );

   result := True;
end;


function TPEFConduitProcessaArquivo.NotificaAlteracao( numeroContratoFrete:string;
                                         NovoStatus : tStatusRetorno;
                                         Motivo : tMotivoRetorno;
                                         Mensagem : string;
                                         ArquivoGerado : string;
                                         ArquivoRecebido : string;
                                         CIOT,
                                         Protocolo : string ) : boolean;
var
   ret : utxt_pef_alt_v1_0.TAlteracaoContrato_ret_0000;
   vDiretorio : string;
   vArquivo   : string;
begin
   GetDiretorioArquivoRetorno( vDiretorio, vArquivo );

   ret := utxt_pef_alt_v1_0.TAlteracaoContrato_ret_0000.create;
   try
      ret.protocolo:= Protocolo;
      if NovoStatus = tsrErro {'E'} then
         ret.motivoRetorno := 'E'
      else if NovoStatus = tsrAguardando { 'A' } then
         ret.motivoRetorno := 'I'
      else if NovoStatus = tsrCancelado {'C'} then
         ret.motivoRetorno := 'C'
      else if NovoStatus = tsrAprovado {'R'} then
         ret.motivoRetorno := 'C'
      else if NovoStatus = tsrInformacao {'I'} then
         ret.motivoRetorno := 'I'
      else
         ret.motivoRetorno := 'I'; //NovoStatus;

      ret.Descricao := Mensagem;
      ret.numeroContratoFrete := numeroContratoFrete;

      ret.add0001.DataHoraRetorno := Now;

      if ret.motivoRetorno = 'I' then
      begin
         ret.SaveToFile( diretorioLog+ ChangeFileExt( vArquivo,'')+'_'+FormatDateTime('yyyymmddhhnnsszzz', FHoraEvento)+'.sit');
         if tconfiguracao( tgrupo( tcnpj( tadministradoras( tAdministradoraContratoFrete( configuracaoAdministradora ).Admininstradora ).cnpj ).grupo ).configuracao ).retornocomhora = 'S' then
            ret.SaveToFile( vDiretorio+ChangeFileExt( vArquivo,'')+'_'+FormatDateTime('yyyymmddhhnnsszzz', FHoraEvento)+'.sit')
         else
            ret.SaveToFile( vDiretorio+ChangeFileExt( vArquivo,'.sit'));
      end
      else
      begin
         ret.SaveToFile( diretorioLog+ ChangeFileExt( vArquivo,'')+'_'+FormatDateTime('yyyymmddhhnnsszzz', FHoraEvento)+'.ret');
         if tconfiguracao( tgrupo( tcnpj( tadministradoras( tAdministradoraContratoFrete( configuracaoAdministradora ).Admininstradora ).cnpj ).grupo ).configuracao ).retornocomhora = 'S' then
            ret.SaveToFile( vDiretorio+ChangeFileExt( vArquivo,'')+'_'+FormatDateTime('yyyymmddhhnnsszzz', FHoraEvento)+'.ret')
         else
            ret.SaveToFile( vDiretorio+ChangeFileExt( vArquivo,'.ret'));
      end;
   finally
      ret.free;
   end;

   salvaArquivo( ArquivoGerado, vDiretorio+ChangeFileExt( vArquivo,'')+'.gen' );
   salvaArquivo( ArquivoRecebido, vDiretorio+ChangeFileExt( vArquivo,'')+'.rec' );

   result := True;
end;

function TPEFConduitProcessaArquivo.Notifica( numeroContratoFrete:string;
                                         NovoStatus : tStatusRetorno;
                                         Motivo : tMotivoRetorno;
                                         Mensagem : string;
                                         ArquivoGerado : string;
                                         ArquivoRecebido : string;
                                         CIOT,
                                         Protocolo : string;
                                         ValorPedgio : Extended ) : boolean;
begin
   if  (Copy(uppercase( ExtractFileName( Farquivo )), 1, 4) = 'ENV_') then
      result := NotificaEnvio( numeroContratoFrete, NovoStatus, Motivo, Mensagem, ArquivoGerado, ArquivoRecebido, CIOT, Protocolo, ValorPedgio )
   else if (Copy(uppercase( ExtractFileName( Farquivo)), 1, 4) = 'CAN_') then
      result := NotificaCancelamento( numeroContratoFrete, NovoStatus, Motivo, Mensagem, ArquivoGerado, ArquivoRecebido, CIOT, Protocolo )
   else if (Copy(uppercase( ExtractFileName( Farquivo)), 1, 4) = 'PAG_') then
      result := NotificaPagamento( numeroContratoFrete, NovoStatus, Motivo, Mensagem, ArquivoGerado, ArquivoRecebido, CIOT, Protocolo )
   else if (Copy(uppercase( ExtractFileName( Farquivo)), 1, 4) = 'ALT_') then
      result := NotificaAlteracao( numeroContratoFrete, NovoStatus, Motivo, Mensagem, ArquivoGerado, ArquivoRecebido, CIOT, Protocolo )
   else
      result := False;
end;

function TPEFConduitProcessaArquivo.processaRequisicaoConsulta( var msg : string; Administradora : TAdministradoraAbstract; BeanTXT : TTxt ) : boolean;
var
   bean : TConsulta_0000;
begin
 Try
   bean := TConsulta_0000( BeanTXT );
   NotificaConsulta( '', tsrInformacao{'I'},'Integrando consulta com a administradora, aguarde retorno!','','',nil);
   if Administradora.ConsultaContratoFrete then
   begin
      if Administradora.Situacao = tsrAguardando {'A'} then
      begin //aguarde retorno
         NotificaConsulta( bean.viagem, tsrInformacao{'I'}, 'Solicitado consulta para administradora, aguardando retorno!','','',nil);
         MoveFile( PChar(Farquivo), PChar(ChangeFileExt(Farquivo, '.wait') ));
         Farquivo := ChangeFileExt(Farquivo, '.wait');

         AdicionaProtocoloAoArquivo( Farquivo,  '' ); //algumas administradores retornam um numero de protocolo para consultar se processou certo.

         CopyFile( PChar(Farquivo),
                   PChar( diretorioLog+ ExtractFileName( ChangeFileExt(Farquivo, '')+'_'+FormatDateTime('yyyymmddhhnnsszzz', Now)+'.wait' ) ), false);

         FcontinuaVivo := True;
      end
      else
      begin
         MoveFile( PChar(Farquivo),
                   PChar( diretorioLog+ ExtractFileName( ChangeFileExt(Farquivo, '')+'_'+FormatDateTime('yyyymmddhhnnsszzz', Now)+'.save' ) ));
         //DeleteFile( PChar(Farquivo) );

         NotificaConsulta( bean.viagem, Administradora.Situacao, Administradora.msgError,Administradora.ArquivoGerado.text,Administradora.ArquivoRecebido.text,Administradora.BeanTXTRet);
         Administradora.BeanTXTRet := nil;
      end
   end
   else
   begin
       NotificaConsulta( bean.viagem, tsrErro, Administradora.msgError,Administradora.ArquivoGerado.text,Administradora.ArquivoRecebido.text,nil);
       MoveFile( PChar(Farquivo),
                   PChar( diretorioLog+ ExtractFileName( ChangeFileExt(Farquivo, '')+'_'+FormatDateTime('yyyymmddhhnnsszzz', Now)+'.save' ) ));
   end;
   result := true;
 Except
   on e:exception do
   begin
      msg := e.message;
      result := false;
   end;
 end;
end;

function TPEFConduitProcessaArquivo.processaRequisicaoExtrato( var msg : string; Administradora : TAdministradoraAbstract; BeanTXT : TTxt ) : boolean;
var
   bean : TExtrato_0000;
begin
 Try
   bean := TExtrato_0000( BeanTXT );
   NotificaExtrato( FormatDateTime('dd/mm/yyyy',Bean.DataExtrato), tsrInformacao{'I'}, 'Solicitando extrato para a administradora, aguarde retorno!','','',nil);
   if Administradora.ExtratoDe( Bean.DataExtrato  ) then
   begin
      if Administradora.Situacao = tsrAguardando {'A'} then
      begin //aguarde retorno
         NotificaExtrato( FormatDateTime('dd/mm/yyyy',Bean.DataExtrato), tsrInformacao{'I'}, 'Solicitado extrato para administradora, aguardando retorno!','','',nil);
         MoveFile( PChar(Farquivo), PChar(ChangeFileExt(Farquivo, '.wait') ));
         Farquivo := ChangeFileExt(Farquivo, '.wait');

         AdicionaProtocoloAoArquivo( Farquivo,  '' ); //algumas administradores retornam um numero de protocolo para consultar se processou certo.

         CopyFile( PChar(Farquivo),
                   PChar( diretorioLog+ ExtractFileName( ChangeFileExt(Farquivo, '')+'_'+FormatDateTime('yyyymmddhhnnsszzz', Now)+'.wait' ) ), false);

         FcontinuaVivo := True;
      end
      else
      begin
         MoveFile( PChar(Farquivo),
                   PChar( diretorioLog+ ExtractFileName( ChangeFileExt(Farquivo, '')+'_'+FormatDateTime('yyyymmddhhnnsszzz', Now)+'.save' ) ));
         //DeleteFile( PChar(Farquivo) );

         NotificaExtrato( FormatDateTime('dd/mm/yyyy',Bean.DataExtrato), Administradora.Situacao, Administradora.msgError,Administradora.ArquivoGerado.text,Administradora.ArquivoRecebido.text,Administradora.BeanTXTRet);
         Administradora.BeanTXTRet := nil;
      end
   end
   else
   begin
       NotificaExtrato( FormatDateTime('dd/mm/yyyy',Bean.DataExtrato), tsrErro, Administradora.msgError,Administradora.ArquivoGerado.text,Administradora.ArquivoRecebido.text,nil);
       MoveFile( PChar(Farquivo),
                   PChar( diretorioLog+ ExtractFileName( ChangeFileExt(Farquivo, '')+'_'+FormatDateTime('yyyymmddhhnnsszzz', Now)+'.save' ) ));
   end;
   result := true;
 Except
   on e:exception do
   begin
      msg := e.message;
      result := false;
   end;
 end;
end;

function TPEFConduitProcessaArquivo.processaRequisicaoCancelamento( var msg : string; Administradora : TAdministradoraAbstract ) : boolean;
begin
 with Administradora do
 Try
    Notifica( Bean.numeroContratoFrete,tsrInformacao{'I'}, tmrInformativo{'I'}, 'Integrando cancelamento com a administradora, aguarde retorno!','','','','', 0);
    cancelaContratoFrete;
    Notifica( Bean.numeroContratoFrete,
                             situacao,
                             tmrEventoDoContrato{'E'},
                             trim( msgerror ),
                             ArquivoGerado.Text,
                             ArquivoRecebido.Text,
                             CIOT,
                             protocolo,
                             ValorPedagio
                              );
    if Situacao = tsrAguardando {'A'} then
    begin //aguarde retorno
       Notifica( Bean.numeroContratoFrete,tsrInformacao{'I'}, tmrInformativo{'I'}, 'Enviado cancelamento para administradora, aguardando retorno!','','','','', 0);
       MoveFile( PChar(Farquivo), PChar(ChangeFileExt(Farquivo, '.wait') ));
       Farquivo := ChangeFileExt(Farquivo, '.wait');

       AdicionaProtocoloAoArquivo( Farquivo,  Protocolo ); //algumas administradores retornam um numero de protocolo para consultar se processou certo.

       CopyFile( PChar(Farquivo),
                 PChar( diretorioLog+ ExtractFileName( ChangeFileExt(Farquivo, '')+'_'+FormatDateTime('yyyymmddhhnnsszzz', Now)+'.wait' ) ), false);

       FcontinuaVivo := True;
    end
    else
    begin
       MoveFile( PChar(Farquivo),
                 PChar( diretorioLog+ ExtractFileName( ChangeFileExt(Farquivo, '')+'_'+FormatDateTime('yyyymmddhhnnsszzz', Now)+'.save' ) ));
       //DeleteFile( PChar(Farquivo) );
    end;
    result := true;
 Except
   on e:exception do
   begin
      msg := e.message;
      result := false;
   end;
 end;
end;

function TPEFConduitProcessaArquivo.processaRequisicaoAbertura( var msg : string; Administradora : TAdministradoraAbstract; vbean : TBeanContrato ) : boolean;
begin
 with Administradora do
 Try
   Notifica( Bean.numeroContratoFrete,tsrInformacao{'I'}, tmrInformativo{'I'}, 'Integrando com a administradora, aguarde retorno!','','','','', 0);
   InsereContratoFrete;
   Notifica( Bean.numeroContratoFrete,
                            situacao,
                            tmrEventoDoContrato{'E'},
                            trim( msgerror ),
                            ArquivoGerado.Text,
                            ArquivoRecebido.Text,
                            CIOT,
                            protocolo,
                            ValorPedagio
                             );
   if Situacao = tsrAguardando {'A'} then
   begin //aguarde retorno
      Notifica( Bean.numeroContratoFrete,tsrInformacao{'I'}, tmrInformativo{'I'}, 'Enviado para administradora, aguardando retorno!','','','','',0 );
      MoveFile( PChar(Farquivo), PChar(ChangeFileExt(Farquivo, '.wait') ));
      Farquivo := ChangeFileExt(Farquivo, '.wait');

      AdicionaProtocoloAoArquivo( Farquivo,  Protocolo ); //algumas administradores retornam um numero de protocolo para consultar se processou certo.

      CopyFile( PChar(Farquivo),
                PChar( diretorioLog+ ExtractFileName( ChangeFileExt(Farquivo, '')+'_'+FormatDateTime('yyyymmddhhnnsszzz', Now)+'.wait' ) ), false);

      FcontinuaVivo := True;
   end
   else
   begin
      MoveFile( PChar(Farquivo),
                PChar( diretorioLog+ ExtractFileName( ChangeFileExt(Farquivo, '')+'_'+FormatDateTime('yyyymmddhhnnsszzz', Now)+'.save' ) ));
      //DeleteFile( PChar(Farquivo) );
      Bean.NumeroCIOT   := CIOT;
      Bean.NumeroViagem := protocolo;
      bean.pedagio.valorPedagio := ValorPedagio;

      if situacao = tsrAprovado {'R'} then {botar no news}
      try
         //se for somente PDF, então tenta pegar ele e gera no diretorio.
         if (upperCase(vbean.DadosImpressaoDOT.DestinoDOT) = 'PDFADM')  then
         begin
            if not GetDOT(  vbean.NumeroViagem, self.GetNomeDOT(vBean) ) then
               self.ImprimeDOT( vbean );
         end;
      except
         on e:exception do   msg := e.message; // hmm dam, what a hell i do with you. if got error no PDF gen, go forward....arg this gonna make me crazi a day.
      end;
   end;

    result := true;
 Except
   on e:exception do
   begin
      msg := e.message;
      result := false;
   end;
 end;
end;

function TPEFConduitProcessaArquivo.processaOperacaoPendente( var msg : string; Administradora : TAdministradoraAbstract; operacao : tOperacaoPEF ) : boolean;
var
   beanExtrato : TExtrato_0000;
   beanConsulta : TConsulta_0000;
   timedOutdir : string;
begin

 with Administradora do
 Try
    if (Bean.DataProtocoloProcessamento<>0) and (Abs(MinutesBetween( Bean.DataProtocoloProcessamento, Now )) > 175) then
    begin
       Notifica( Bean.numeroContratoFrete,
                              tsrErro {'E'},
                              tmrEventoDoContrato{'A'},
                              trim('Não foi recebida resposta da administradora em 4 horas, abortando verificação de retorno.'+fArquivo),
                              '',
                              '',
                              '',
                              '',
                              0 );
       //DeleteFile( Farquivo );
       LogIt('Arquivo não teve resposta da adminsitradora '+Farquivo);
       timedOutdir := ExtractFilePath( Farquivo )+'TIMEDOUT\';
       if not DirectoryExists(  timedOutdir ) then ForceDirectories( timedOutdir );
       CopyFile( PChar(Farquivo), PChar( timedOutdir+ExtractFileName( Farquivo ) ), True );

       MoveFile( PChar(Farquivo),
                 PChar( diretorioLog+ ExtractFileName( ChangeFileExt(Farquivo, '')+'_'+FormatDateTime('yyyymmddhhnnsszzz', Now)) ));
       FcontinuaVivo := false;
       situacao      := tsrErro;
    end
    else if VerificaRetorno then
    begin
      if situacao <> tsrAguardando {'A'} then
      begin

         if situacao = tsrAprovado {'R'} then {botar no news}
         try
            //se for somente PDF, então tenta pegar ele e gera no diretorio.
            if (upperCase(bean.DadosImpressaoDOT.DestinoDOT) = 'PDFAdm')  then
            begin
               if not GetDOT(  bean.NumeroViagem, self.GetNomeDOT(Bean) ) then
                  self.ImprimeDOT( bean );
            end;
         except
            // hmm dam, what a hell i do with you. if got error no PDF gen, go forward....arg this gonna make me crazi a day.
         end;
         case operacao of
            toExtrato      :
            begin
               beanExtrato := TExtrato_0000( BeanTXT );
               NotificaExtrato( FormatDateTime('dd/mm/yyyy', beanExtrato.DataExtrato), Situacao, Trim(msgError), ArquivoGerado.Text, ArquivoRecebido.text, BeanTXTRet );
            end;
            toConsultaCIOT :
            begin
               beanConsulta := TConsulta_0000( BeanTXT );
               NotificaConsulta(beanConsulta.viagem,  Situacao, Trim(msgError), ArquivoGerado.Text, ArquivoRecebido.text, BeanTXTRet );
            end;
            else
               Notifica( Bean.numeroContratoFrete,
                                      situacao,
                                      tmrEventoDoContrato{'A'},
                                      trim(msgerror),
                                      ArquivoGerado.Text,
                                      ArquivoRecebido.Text,
                                      CIOT,
                                      protocolo,
                                      ValorPedagio
                                       );
         end;
         //DeleteFile( Farquivo );
         MoveFile( PChar(Farquivo),
                   PChar( diretorioLog+ ExtractFileName( ChangeFileExt(Farquivo, '')+'_'+FormatDateTime('yyyymmddhhnnsszzz', Now)) ));
         FcontinuaVivo := false;
         Bean.NumeroCIOT   := CIOT;
         Bean.NumeroViagem := protocolo;
         bean.pedagio.valorPedagio := ValorPedagio;
      end;
    end else
    begin
      if situacao = tsrErro {'E'} then
      begin
         Notifica( Bean.numeroContratoFrete,
                                situacao,
                                tmrEventoDoContrato{'A'},
                                trim(msgerror),
                                ArquivoGerado.Text,
                                ArquivoRecebido.Text,
                                CIOT,
                                protocolo,
                                0
                                 );
         MoveFile( PChar(Farquivo),
                   PChar( diretorioLog+ ExtractFileName( ChangeFileExt(Farquivo, '')+'_'+FormatDateTime('yyyymmddhhnnsszzz', Now)) ));
         FcontinuaVivo := false;
      end
      else
         FcontinuaVivo := True;
    end;

    result := true;
 Except
   on e:exception do
   begin
      msg := e.message;
      result := false;
   end;
 end;
end;

function TPEFConduitProcessaArquivo.processaPagamentoImediato( var msg : string; Administradora : TAdministradoraAbstract ) : boolean;
begin
 with Administradora do
 Try
    Notifica( Bean.numeroContratoFrete,tsrInformacao{'I'}, tmrInformativo{'I'}, 'Integrando pagamento imediato com a administradora, aguarde retorno!','','','','', 0);
    PagamentoImediatoParcela;
    Notifica( Bean.numeroContratoFrete,
                             situacao,
                             tmrEventoDoContrato{'E'},
                             trim( msgerror ),
                             ArquivoGerado.Text,
                             ArquivoRecebido.Text,
                             CIOT,
                             protocolo,
                             ValorPedagio
                              );
    if Situacao = tsrAguardando {'A'} then
    begin //aguarde retorno
       Notifica( Bean.numeroContratoFrete,tsrInformacao{'I'}, tmrInformativo{'I'}, 'Enviado pagametno imediato para administradora, aguardando retorno!','','','','', 0);
       MoveFile( PChar(Farquivo), PChar(ChangeFileExt(Farquivo, '.wait') ));
       Farquivo := ChangeFileExt(Farquivo, '.wait');

       AdicionaProtocoloAoArquivo( Farquivo,  Protocolo ); //algumas administradores retornam um numero de protocolo para consultar se processou certo.

       CopyFile( PChar(Farquivo),
                 PChar( diretorioLog+ ExtractFileName( ChangeFileExt(Farquivo, '')+'_'+FormatDateTime('yyyymmddhhnnsszzz', Now)+'.wait' ) ), false);

       FcontinuaVivo := True;
    end
    else
    begin
       MoveFile( PChar(Farquivo),
                 PChar( diretorioLog+ ExtractFileName( ChangeFileExt(Farquivo, '')+'_'+FormatDateTime('yyyymmddhhnnsszzz', Now)+'.save' ) ));
       //DeleteFile( PChar(Farquivo) );
    end;
    result := true;
 Except
   on e:exception do
   begin
      msg := e.message;
      result := false;
   end;
 end;
end;

function TPEFConduitProcessaArquivo.processaAlteracaoParcela( var msg : string; Administradora : TAdministradoraAbstract ) : boolean;
begin
 with Administradora do
 Try
    Notifica( Bean.numeroContratoFrete,tsrInformacao{'I'}, tmrInformativo{'I'}, 'Integrando alteracao de parcela com a administradora, aguarde retorno!','','','','', 0);
    Administradora.AlteraContrato;
    Notifica( Bean.numeroContratoFrete,
                             situacao,
                             tmrEventoDoContrato{'E'},
                             trim( msgerror ),
                             ArquivoGerado.Text,
                             ArquivoRecebido.Text,
                             CIOT,
                             protocolo,
                             ValorPedagio
                              );
    if Situacao = tsrAguardando {'A'} then
    begin //aguarde retorno
       Notifica( Bean.numeroContratoFrete,tsrInformacao{'I'}, tmrInformativo{'I'}, 'Enviado alteracao de parcela para administradora, aguardando retorno!','','','','', 0);
       MoveFile( PChar(Farquivo), PChar(ChangeFileExt(Farquivo, '.wait') ));
       Farquivo := ChangeFileExt(Farquivo, '.wait');

       AdicionaProtocoloAoArquivo( Farquivo,  Protocolo ); //algumas administradores retornam um numero de protocolo para consultar se processou certo.

       CopyFile( PChar(Farquivo),
                 PChar( diretorioLog+ ExtractFileName( ChangeFileExt(Farquivo, '')+'_'+FormatDateTime('yyyymmddhhnnsszzz', Now)+'.wait' ) ), false);

       FcontinuaVivo := True;
    end
    else
    begin
       MoveFile( PChar(Farquivo),
                 PChar( diretorioLog+ ExtractFileName( ChangeFileExt(Farquivo, '')+'_'+FormatDateTime('yyyymmddhhnnsszzz', Now)+'.save' ) ));
       //DeleteFile( PChar(Farquivo) );
    end;
    result := true;
 Except
   on e:exception do
   begin
      msg := e.message;
      result := false;
   end;
 end;
end;

procedure TPEFConduitProcessaArquivo.AdicionaProtocoloAoArquivo( Farquivo : string;  Protocolo : string );
var
   t : TextFile;
begin
   AssignFile( t, Farquivo );
   try
     Append( t );
     Writeln(t, '9999|1.00|'+protocolo+'|'+formatDateTime('dd/mm/yyyy hh:nn:ss', Now));
   finally
     CloseFile( t);
   end;
end;

procedure TPEFConduitProcessaArquivo.processaArquivo;
  procedure getOperadoraVersao( var operadora, versao : integer );
  begin
    if configuracaoAdministradora is TRepom then
    begin
       operadora := cRepom;
       versao   := 100;
    end
    else if configuracaoAdministradora is TDbTrans then
    begin
       operadora := cRodoCred;
       versao   := 100;
    end
    else if configuracaoAdministradora is TNddCargo then
    begin
       operadora := cNdd;
       if (configuracaoAdministradora as TNddCargo).tipoIntegracao = 'W' then
          versao   := 421
       else
          versao   := 110; // mudar para 110 para ndd versao 4.1.2
    end
    else if configuracaoAdministradora is TPancary then
    begin
       operadora := cPamcary;
       versao   := 100;
    end
    else if configuracaoAdministradora is TTicket then
    begin
       operadora := cTicket;
       versao   := 300;
    end
    else if configuracaoAdministradora is TTarget then
    begin
       operadora := cTarget;
       versao   := 100;
    end
    else
    begin
       operadora := cSemIntegracao;
       versao   := 100;
    end;
  end;

  procedure getTipoArquivo( var tipoArquivo : TOperacaoPEF;  var vBeanTXT : TTxt );
  begin
    if (Copy(uppercase( ExtractFileName( Farquivo )), 1, 4) = 'ENV_') then
    begin
       tipoArquivo := toAbreCiot; // 'P'
       vBeanTXT := utxt_pef_v1_0.TContrato_0000.create;
    end
    else if (Copy(uppercase( ExtractFileName( Farquivo)), 1, 4) = 'CAN_') then
    begin
       tipoArquivo := toCancelaCiot; // 'C'
       vBeanTXT := utxt_pef_can_v1_0.TCancelamento_0000.create;
    end
    else if (Copy(uppercase( ExtractFileName( Farquivo)), 1, 4) = 'CON_') then
    begin
       tipoArquivo := toConsultaCIOT; // 'Q'
       vBeanTXT := TConsulta_0000.create;
    end
    else if (Copy(uppercase( ExtractFileName( Farquivo)), 1, 4) = 'EXT_') then
    begin
       tipoArquivo := toExtrato; // 'E'
       vBeanTXT := TExtrato_0000.create;
    end
    else if (Copy(uppercase( ExtractFileName( Farquivo)), 1, 4) = 'PAG_') then
    begin
       tipoArquivo := toPagamentoImediatoParcela; // 
       vBeanTXT := utxt_pef_pag_v1_0.TPagamento_0000.create;
    end
    else if (Copy(uppercase( ExtractFileName( Farquivo)), 1, 4) = 'ALT_') then
    begin
       tipoArquivo := toAlteraParcela; //
       vBeanTXT := utxt_pef_alt_v1_0.TAlteracaoContrato_0000.create;
    end
    else
    begin
       vBeanTXT := nil;
       tipoArquivo := toUNK; // '.';
    end;
  end;

var
  vBean : TBeanContrato;
  vBeanTXT : TTXT;
  vNumeroContrato, msg , msgErro : string;
  operadora, versao : integer;
  operacao : tOperacaoPEF;
  TipoArquivo : tOperacaoPEF;
  info : string;

  Administradora : TAdministradoraAbstract;

begin
    if FindCmdLineSwitch('debug',['-'], true) then LogIt('ID'+intToStr(self.Handle)+' TPEFConduitProcessaArquivo.processaArquivo:inicio ');
    info := 'Carregando configuracao';
    getOperadoraVersao( operadora, versao  );
    info := 'Trantando tipo';

    getTipoArquivo( tipoArquivo, vBeanTXT );

    if assigned( vBeanTXT ) then
    begin
       if ExtractFileExt( Farquivo ) = '.tx2' then vBeanTXT.LoadFromTX2File( Farquivo, msg ) else vBeanTXT.LoadFromFile( Farquivo, msg );
    end;

    try

       if (uppercase( ExtractFileExt(Farquivo)) = '.PRO') then
       begin
          operacao := tipoArquivo;
       end
       else if (uppercase(ExtractFileExt(Farquivo)) = '.WAIT') then
       begin
          operacao := toConsultaOperacaoPendente; // 'A';
          FcontinuaVivo := True;
       end
       else
          exit; {?}


       info := 'Carregando TXT';
       try
          vbean := TBeanContrato.create;
          try

             if FindCmdLineSwitch('debug',['-'], true) then LogIt('ID'+intToStr(self.Handle)+' carregando arquivo '+FArquivo);

             if not CarregaBeanDoArquivo( vBean, FArquivo, msg ) then
             begin
                vNumeroContrato := vBean.numeroContratoFrete;
                raise exception.create( msg+'  '+msgErro );
             end;

             if not FindCmdLineSwitch('force', ['-'], true) then // força a entrada de qq cnpj
             begin
                info := 'validando cnpj';

                if FindCmdLineSwitch('debug',['-'], true) then LogIt('ID'+intToStr(self.Handle)+' validando cnpj ');

                if vBean.cnpj_filial <> self.cnpj then
                   raise Exception.Create('Foi inserido o arquivo "'+farquivo+'" com cnpj '+vBean.cnpj_filial+' no diretório do cnpj '+self.cnpj);
             end;

             info := 'Validando licenca';
             if FindCmdLineSwitch('debug',['-'], true) then LogIt('ID'+intToStr(self.Handle)+' validando licenca');

             if not uPEFConduitLic.validaLicenca( self.cnpj,
                                                  tconfiguracao( tgrupo( tcnpj( tadministradoras( tadministradoracontratofrete( configuracaoAdministradora ).Admininstradora ).cnpj ).grupo ).configuracao ).proxy,
                                                  tconfiguracao( tgrupo( tcnpj( tadministradoras( tadministradoracontratofrete( configuracaoAdministradora ).Admininstradora ).cnpj ).grupo ).configuracao ).proxyusuario,
                                                  tconfiguracao( tgrupo( tcnpj( tadministradoras( tadministradoracontratofrete( configuracaoAdministradora ).Admininstradora ).cnpj ).grupo ).configuracao ).proxysenha ) then
                raise Exception.Create('Erro de licenciamento para o cnpj '+self.cnpj+' entre em contato com o suporte.');

             info := 'Inciando Factory';
             FHoraEvento := now;

             if FindCmdLineSwitch('debug',['-'], true) then LogIt('ID'+intToStr(self.Handle)+' criando factory da adminstradora');

             administradora := uAdministradoraFactory.TAdministradoraFactory.GetAdministradora( operadora, versao );
             with Administradora  do
             try
                onLog := Self.onLog;
                Bean := vBean;
                BeanTXT := vBeanTXT;
                info := 'setando operadora';
                try
                   DadosOperadora := GetDadosOperadora( operadora, configuracaoAdministradora, vBean );
                   info := 'no processo:';

                   if FindCmdLineSwitch('debug',['-'], true) then LogIt('ID'+intToStr(self.Handle)+' processando operacao ');

                   ValorPedagio := bean.pedagio.valorPedagio; {Atribui o valor do pedagio pois algumas administradoras não retornam esta informação}
                   case operacao of
                      toExtrato :                          if not processaRequisicaoExtrato( msg, Administradora, vBeanTXT )  then raise exception.create( msg );
                      toConsultaCIOT {Q}:                  if not processaRequisicaoConsulta( msg, Administradora, vBeanTXT ) then raise exception.create( msg );
                      toCancelaCiot { 'C' }:               if not processaRequisicaoCancelamento( msg, Administradora )       then raise exception.create( msg );
                      toAbreCiot { 'P' }:                  if not processaRequisicaoAbertura( msg, Administradora, vBean )    then raise exception.create( msg );
                      toConsultaOperacaoPendente { 'A' } : if not processaOperacaoPendente( msg, Administradora, tipoArquivo )then raise exception.create( msg );
                      toPagamentoImediatoParcela :         if not processaPagamentoImediato( msg, Administradora )            then raise exception.create( msg );
                      toAlteraParcela :                    if not processaAlteracaoParcela( msg, Administradora )             then raise exception.create( msg );
                      toUNK { 'O' }:
                      begin
{                         if not inserePreValidacao( vCartao, vVeiculo, vRota, vTotaFrete, vAdiantamento ) then
                            MudaStatusContratoFrete( contrato,
                                                     situacao,
                                                     'A',
                                                     trim(msgerror),
                                                     ArquivoGerado.Text,
                                                     ArquivoRecebido.Text,
                                                     '',
                                                     ''
                                                      );}

                      end
                      else raise exception.create( 'Operação não reconhecida pelo sistema ');
                   end;

                   if FindCmdLineSwitch('debug',['-'], true) then LogIt('ID'+intToStr(self.Handle)+' validando retorno processo ');

                   if situacao = tsrAprovado {'R'} then
                   begin
                       //coleta informações estatisticas
                       try
                          if not coletorEstatistica( tepefAprovados,
                                           vbean.cnpj_filial,
                                           VarArrayOf([ vbean.valorTotalMotorista, Now  ]),
                                           info ) then
                              LogIt('Coletor : '+info);

                          //processa impressao
                          if (upperCase(vbean.DadosImpressaoDOT.DestinoDOT) = 'PDF') or
                             (upperCase(vbean.DadosImpressaoDOT.DestinoDOT) = 'AMBOS') or
                             (upperCase(bean.DadosImpressaoDOT.DestinoDOT) = 'IMPRESSORA') then
                          begin
                              if FindCmdLineSwitch('debug',['-'], true) then LogIt('ID'+intToStr(self.Handle)+' gerando impressao ');
                              self.ImprimeDOT( vbean );
                          end;
                       except
                        on e:Exception do
                        begin
                          LogIt('Coletor::'+e.message);
                        end;
                       end;
                   end;
                except
                   on e:exception do
                   begin
                      Notifica( vNumeroContrato,
                                             tsrErro {'E'},
                                             tmrEventoDoContrato {'A'},
                                             'processaArquivo:'+trim(e.Message),
                                             ArquivoGerado.Text,
                                             ArquivoRecebido.Text,
                                             CIOT,
                                             protocolo,
                                             0
                                              );
                      raise;
                   end;
                end;

             finally
                free;
             end;
          finally
             vBean.free;
          end;
       except
          on e:exception do
          begin
             FcontinuaVivo := false;
             Notifica( vNumeroContrato,
                                      tsrErro {'E'},
                                      tmrEventoDoContrato {'E'},
                                      info +' - '+trim( e.message ),
                                      '',
                                      '',
                                      '',
                                      '',
                                      0
                                       );
             MoveFile( PChar(Farquivo),
                       PChar( diretorioLog+ ExtractFileName( ChangeFileExt(Farquivo, '')+'_'+FormatDateTime('yyyymmddhhnnsszzz', Now))+'.err' ));
             //MoveFile( PChar(Farquivo), PChar(ChangeFileExt(Farquivo, '.err') ));
             LogIt( 'Erro ao processar arquivo '+Farquivo+' -> '+e.Message );
          end;
       end;
    finally
       vBeanTXT.free;
    end;
    if FindCmdLineSwitch('debug',['-'], true) then LogIt('ID'+intToStr(self.Handle)+' TPEFConduitProcessaArquivo.processaArquivo:fim ');
end;


procedure TPEFConduitProcessaArquivo.Execute;
var
   nomearquivo    : string;
begin
    nomearquivo := ExtractFileName( Farquivo );
    FcontinuaVivo := False;
    SetName( nomearquivo );
    try
       if FindCmdLineSwitch('debug',['-'], true) then LogIt('Iniciando processo com arquivo '+Self.Farquivo+' ID'+intToStr(self.Handle));
       CoInitialize(nil);
       try
         repeat
            processaArquivo;
            if FcontinuaVivo then
            begin
               //LogIt( 'Aguardando retorno do arquivo : '+Farquivo );
               Sleep(1000);
            end;
         until not FcontinuaVivo or Terminated;
       finally
         CoUninitialize
       end;
       if FindCmdLineSwitch('debug',['-'], true) then LogIt('ID'+intToStr(self.Handle)+' - Finalizado processo com arquivo ');
    except
       on e:Exception do
       begin
           MoveFile( PChar(farquivo), pchar(ChangeFileExt( farquivo, '.err')));
           raise Exception.Create( farquivo+' : '+e.Message );
       end;
    end;
end;

procedure TPEFConduitProcessaArquivo.Setarquivo(const Value: string);
begin
  Farquivo := Value;
end;

procedure TPEFConduitProcessaArquivo.doLog;
begin
   if Assigned( Fonlog ) then
      FonLog(self, mensagem );
end;

procedure TPEFConduitProcessaArquivo.LogIt(Mensagem: string);
begin
   Self.mensagem := mensagem;
   Synchronize( doLog );
end;

constructor TPEFConduitProcessaArquivo.create(suspended: boolean);
begin
  inherited;
  FreeOnTerminate := True;
  if FindCmdLineSwitch('debug', ['-'], True ) then
  begin
     EnterCriticalSection(CritSect);
     try
        class_var_Refs.AddObject(  Self.ClassName, self );
     finally
        LeaveCriticalSection(CritSect);
     end;
  end;
  SetName( 'ProcessadorArquivo' );
end;

destructor TPEFConduitProcessaArquivo.destroy;
begin
  if FindCmdLineSwitch('debug', ['-'], True ) then
  begin
     EnterCriticalSection(CritSect);
     try
        class_var_Refs.Delete(  class_var_Refs.IndexOfObject( self ) );
     finally
        LeaveCriticalSection(CritSect);
     end;
  end;
  inherited;
end;

initialization
   InitializeCriticalSection(CritSect);
   class_var_Refs := TStringList.Create;
finalization
   DeleteCriticalSection(CritSect);
   if class_var_Refs.Count <> 0 then
   begin
      class_var_Refs.SaveToFile( 'dump_PCPA.txt'  );
      class_var_Refs.Free;
   end;

end.
