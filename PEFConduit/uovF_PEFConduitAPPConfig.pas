unit uovF_PEFConduitAPPConfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Provider, Xmlxform2, DBClient, Grids, DBGrids, StdCtrls, xmldom,
  Mask, DBCtrls, Buttons, ExtCtrls, Xmlxform;

type
  TovF_PEFConduitAPPConfig = class(TForm)
    oCDS_Configuracao: TClientDataSet;
    oCDS_ConfiguracaodiretorioBase: TStringField;
    oCDS_Configuracaogrupo: TDataSetField;
    oDSP_XMLTransformProvider: TXMLTransformProvider;
    oCDS_Grupos: TClientDataSet;
    oCDS_Gruposid: TStringField;
    oCDS_Gruposcnpj: TDataSetField;
    oCDS_CNPJs: TClientDataSet;
    oCDS_CNPJsid: TStringField;
    oCDS_CNPJsrepom: TDataSetField;
    oCDS_CNPJspancary: TDataSetField;
    oCDS_CNPJsnddcargo: TDataSetField;
    oCDS_CNPJsdbtrans: TDataSetField;
    oCDS_Repom: TClientDataSet;
    oCDS_Pancary: TClientDataSet;
    oCDS_NddCargo: TClientDataSet;
    oCDS_DBTrans: TClientDataSet;
    oDS_Configuracao: TDataSource;
    oDS_Grupos: TDataSource;
    oDS_CNPJs: TDataSource;
    oDS_Repom: TDataSource;
    oDS_Pancary: TDataSource;
    oDS_NddCargo: TDataSource;
    oDS_DBTrans: TDataSource;
    ovB_Gravar: TButton;
    ovL_Diretorio: TLabel;
    ovDBE_Diretorio: TDBEdit;
    ovGB_Grupos: TGroupBox;
    ovGB_CNPJ: TGroupBox;
    ovBB_NogoGrupo: TBitBtn;
    ovBB_RemoverGrupo: TBitBtn;
    ovBB_EditarGrupo: TBitBtn;
    ovBB_EditarCnpj: TBitBtn;
    ovBB_NovoCnpj: TBitBtn;
    ovBB_RemoveCnpj: TBitBtn;
    ovDBG_Grupos: TDBGrid;
    ovDBG_Cnpjs: TDBGrid;
    Image1: TImage;
    oCDS_Repomwebserver: TStringField;
    oCDS_Repomusuario: TStringField;
    oCDS_Repomsenha: TStringField;
    oCDS_RepomOPERACAO_CODIGO: TStringField;
    oCDS_RepomROTEIRO_IDA_VOLTA: TStringField;
    oCDS_Pancaryenvio: TStringField;
    oCDS_Pancaryretorno: TStringField;
    oCDS_DBTranswebserver: TStringField;
    oCDS_DBTransusuario: TStringField;
    oCDS_DBTranssenha: TStringField;
    oCDS_DBTranscliente: TStringField;
    oCDS_DBTransCondicaoLiberacaoOperacao_Adt: TStringField;
    oCDS_DBTransLocalRealizacao_Adiantamento: TStringField;
    oCDS_DBTransCodigoOperacao_Saldo: TStringField;
    oCDS_DBTransCondicaoLiberacaoOperacao_Saldo: TStringField;
    oCDS_DBTransLocalRealizacao_Saldo: TStringField;
    oCDS_DBTransCodigoClausula: TStringField;
    oCDS_DBTransDocumentos_Entrega: TStringField;
    oCDS_NddCargotipoIntegracao: TStringField;
    oCDS_NddCargoenvio: TStringField;
    oCDS_NddCargoretorno: TStringField;
    oCDS_NddCargoGerarMovimentacaoFinanceira: TStringField;
    oCDS_NddCargoImpressaoAutomaticaDOT: TStringField;
    oCDS_NddCargoTipodeOperacaodeTransporte: TStringField;
    oCDS_NddCargoTipodaCarga: TStringField;
    oCDS_NddCargoProprietariodaCarga: TStringField;
    oCDS_NddCargoTipodeRotaPadrao: TStringField;
    oCDS_NddCargoUtilizaRoteirizador: TStringField;
    oCDS_NddCargoNotificaRotaContratante: TStringField;
    oCDS_NddCargoLocaldeEfetivacaodoPagamento: TStringField;
    oCDS_NddCargoLocaldeEfetivacaodoPagamentoAdt: TStringField;
    oCDS_NddCargoDocumentoParaEntregar: TStringField;
    oCDS_CNPJsticket: TDataSetField;
    oCDS_Ticket: TClientDataSet;
    oDS_Ticket: TDataSource;
    oCDS_Ticketwebserver: TStringField;
    oCDS_Ticketusuario: TStringField;
    oCDS_Ticketsenha: TStringField;
    oCDS_TicketcodigoBase: TStringField;
    oCDS_TicketcodigoCliente: TStringField;
    oCDS_TicketparametrosTicket: TStringField;
    oCDS_DBTransCodigoClausulaViagem: TStringField;
    oCDS_DBTransCodigoClausulaPeso: TStringField;
    ovL_1: TLabel;
    ovL_2: TLabel;
    ovL_3: TLabel;
    ovDBE_proxy: TDBEdit;
    ovDBE_proxyusuario: TDBEdit;
    ovDBE_proxysenha: TDBEdit;
    strngfldCDS_Configuracaoproxy: TStringField;
    strngfldCDS_Configuracaoproxyusuario: TStringField;
    strngfldCDS_Configuracaoproxysenha: TStringField;
    dbchkretornocomhora: TDBCheckBox;
    strngfldCDS_Configuracaoretornocomhora: TStringField;
    oCDS_Pancaryviagem_parcelaA_efetivacao_tipo: TStringField;
    oCDS_Pancaryviagem_parcelaA_status_id: TStringField;
    oCDS_Pancaryviagem_parcelaS_efetivacao_tipo: TStringField;
    oCDS_NddCargonddws: TStringField;
    oCDS_NddCargonddcertificado: TStringField;
    oCDS_Pancaryviagem_parcelaS_status_id: TStringField;
    oCDS_Pancaryviagem_quitacao: TStringField;
    oCDS_Pancaryvalor_minimo_VA: TStringField;
    oCDS_NddCargoDiasParaLiberarSaldo: TStringField;
    oCDS_NddCargoMinutosParaLiberarAdiantamento: TStringField;
    oCDS_NddCargoConfirmador: TStringField;
    oCDS_CNPJstarget: TDataSetField;
    oCDS_Target: TClientDataSet;
    oDS_Target: TDataSource;
    oCDS_Targetwebserver: TStringField;
    oCDS_Targetidentification: TStringField;
    oCDS_Targettoken: TStringField;
    oCDS_Targetparametrostarget: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure ovB_GravarClick(Sender: TObject);
    procedure ovBB_RemoverGrupoClick(Sender: TObject);
    procedure ovBB_NogoGrupoClick(Sender: TObject);
    procedure ovBB_EditarCnpjClick(Sender: TObject);
    procedure oCDS_ConfiguracaoReconcileError(
      DataSet: TCustomClientDataSet; E: EReconcileError;
      UpdateKind: TUpdateKind; var Action: TReconcileAction);
    procedure ovBB_RemoveCnpjClick(Sender: TObject);
    procedure oCDS_ConfiguracaodiretorioBaseSetText(Sender: TField;
      const Text: String);
  private
    procedure RemoveCnpj;
    procedure RemoveGrupo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ovF_PEFConduitAPPConfig: TovF_PEFConduitAPPConfig;

implementation

uses uovF_PEFConduitAPPConfigGrupo, uovF_PEFConduitAPPConfigCNPJ;

{$R *.dfm}

procedure TovF_PEFConduitAPPConfig.FormCreate(Sender: TObject);
var
  diretorio : string;
begin
  diretorio := ExtractFilePath( Application.ExeName );

  oDSP_XMLTransformProvider.XMLDataFile := diretorio+ExtractFileName( oDSP_XMLTransformProvider.XMLDataFile );
  oDSP_XMLTransformProvider.TransformRead.TransformationFile := diretorio+ExtractFileName( oDSP_XMLTransformProvider.TransformRead.TransformationFile );
  oDSP_XMLTransformProvider.TransformWrite.TransformationFile := diretorio+ExtractFileName( oDSP_XMLTransformProvider.TransformWrite.TransformationFile );

  if not FileExists( oDSP_XMLTransformProvider.XMLDataFile ) then
  begin
     with TStringList.Create do
     try
        text := '<?xml version="1.0" encoding="utf-8"?>'#10+
                '<configuracao>'+
                '	<diretorioBase>c:\pefconduit\</diretorioBase>'+
                '	<grupos>'+
                '		<grupo id="homologacao">'+
                '			<cnpjs>'+
                '			</cnpjs>'+
                '		</grupo>'+
                '	</grupos>'+
                '</configuracao>';
        SaveToFile(  oDSP_XMLTransformProvider.XMLDataFile );
     finally
        free;
     end;
  end;
  try
     oCDS_Configuracao.open;
  except
     on e:exception do
     begin
         showmessage( 'Erro : '+e.message+#10#10+
                      'Arquivo de configuracao : '+ oDSP_XMLTransformProvider.XMLDataFile +#10+
                      'ToDp : '+  oDSP_XMLTransformProvider.TransformRead.TransformationFile + #10+
                      'ToXML: '+  oDSP_XMLTransformProvider.TransformWrite.TransformationFile  );
        abort; 
     end;
  end;
end;

procedure TovF_PEFConduitAPPConfig.ovB_GravarClick(Sender: TObject);
begin
  oCDS_Configuracao.CheckBrowseMode;
  if oCDS_Configuracao.ApplyUpdates(0) <> 0 then raise exception.Create('Não foram salvas as configurações.'); 
end;

procedure TovF_PEFConduitAPPConfig.RemoveCnpj;
begin
   if not oCDS_CNPJs.IsEmpty then
   begin
      while not oCDS_Repom.isEmpty do oCDS_Repom.Delete;
      while not oCDS_DBTrans.isEmpty do oCDS_DBTrans.Delete;
      while not oCDS_Pancary.isEmpty do oCDS_Pancary.Delete;
      while not oCDS_NddCargo.isEmpty do oCDS_NddCargo.Delete;
      while not oCDS_Ticket.isEmpty do oCDS_Ticket.Delete;
      oCDS_CNPJs.Delete;
   end;
end;

procedure TovF_PEFConduitAPPConfig.RemoveGrupo;
begin
   if not oCDS_Grupos.IsEmpty then
      oCDS_Grupos.Delete;
end;

procedure TovF_PEFConduitAPPConfig.ovBB_RemoverGrupoClick(Sender: TObject);
begin
   if (application.MessageBox( pchar('Deseja realmente remover este grupo com todos os CNPJ cadastrado?'),
                               PChar( 'Confirma ação' ),
                               MB_ICONQUESTION or MB_YESNO or MB_DEFBUTTON2) = idYes) then
   begin
      while not oCDS_CNPJs.IsEmpty do
      begin
         RemoveCnpj;
      end;
      RemoveGrupo;
   end;
end;

procedure TovF_PEFConduitAPPConfig.ovBB_NogoGrupoClick(Sender: TObject);
var
   b : TBitBtn;
begin
   b := TBitBtn( sender );

   if (b.Tag = 1) and oCDS_Grupos.IsEmpty then Exit;

   with TovF_PEFConduitAPPConfigGrupo.Create( self )do
   try
      if b.Tag = 1 then
         ovE_NomeGrupo.Text := oCDS_Gruposid.Text
      else
         ovE_NomeGrupo.Text := '';
      if ShowModal = mrOk then
      begin
         if b.Tag=1 then
            oCDS_Grupos.Edit
         else
            oCDS_Grupos.Insert;
         oCDS_Gruposid.Text := ovE_NomeGrupo.Text;
         oCDS_Grupos.Post;
      end;
   finally
      Free;
   end;
end;

procedure TovF_PEFConduitAPPConfig.ovBB_EditarCnpjClick(Sender: TObject);
var
   b : TBitBtn;
begin
   b := TBitBtn( sender );

   if (b.Tag = 1) and oCDS_Grupos.IsEmpty then Exit;

   with TovF_PEFConduitAPPConfigCNPJ.Create( self )do
   try                                      
      diretorioBase := IncludeTrailingPathDelimiter(ovDBE_Diretorio.Field.Text)+oCDS_Gruposid.Text+'\'+oCDS_CNPJsid.Text+'\';
      proxy := oCDS_Configuracao.fieldByName('proxy').AsString;
      proxyusuario := oCDS_Configuracao.fieldByName('proxysenha').AsString;
      proxysenha := oCDS_Configuracao.fieldByName('proxyusuario').AsString;

      if b.Tag = 1 then
      begin
         ovE_CNPJ.Text := oCDS_CNPJsid.Text;

         ovDB_ndd_TipoIntegracao.ItemIndex := ovDB_ndd_TipoIntegracao.Items.IndexOf( oCDS_NddCargotipoIntegracao.Text );
         if ovDB_ndd_TipoIntegracao.ItemIndex=-1 then ovDB_ndd_TipoIntegracao.ItemIndex:=0;
         ovDB_ndd_TipoIntegracao.OnChange( ovDB_ndd_TipoIntegracao );


         ovE_nddws.text               := oCDS_NddCargonddws.Text;
         ovCB_NddCertificado.Clear;
         if oCDS_NddCargonddcertificado.Text <> '' then
         begin
            ovCB_NddCertificado.Items.Add( oCDS_NddCargonddcertificado.Text );
            ovCB_NddCertificado.ItemIndex:=0;
         end;


         ovE_ndd_envio.text           := oCDS_NDDCargoenvio.text;
         ovE_ndd_retorno.text         := oCDS_NDDCargoretorno.text;
         ovE_NDD_GeraMovimentacaoFinanceira.text                                  := oCDS_NddCargoGerarMovimentacaoFinanceira.text;
         ovE_ImpressaoAutomaticaDot.text                                          := oCDS_NDDCargoImpressaoAutomaticaDot.text;
         ovE_NDD_TipoOperacaoTransporte.text                                      := oCDS_NddCargoTipodeOperacaodeTransporte.text;
         //ovE_NDD_TipoCarga.text                                                   := oCDS_NddCargoTipodaCarga.text;
         //ovE_NDD_ProprietariodaCarga.text                                         := oCDS_NddCargoProprietariodaCarga.text;
         ovE_NDD_TipoRotaPadrao.text                                              := oCDS_NddCargoTipodeRotaPadrao.text;
         ovE_NDD_UtilizaRoteirizador.text                                         := oCDS_NDDCargoUtilizaRoteirizador.text;
         ovE_NDD_Notificarotacontratante.text                                     := oCDS_NDDCargoNotificarotacontratante.text;
         ovE_NDD_LocaldeEfetivacaodoPagamento.text                                := oCDS_NDDCargoLocaldeEfetivacaodoPagamento.text;
         ovE_NDD_LocaldeEfetivacaodoPagamentoAdt.text                             := oCDS_NDDCargoLocaldeEfetivacaodoPagamentoAdt.text;
         //ovE_ndd_DocumentoParaEntrega.text                                        := oCDS_NddCargoDocumentoParaEntregar.text;
         ovE_NDD_DiasParaLiberarSaldo.text                                        := oCDS_NDDCargoDiasParaLiberarSaldo.text;{#18466}
         ovE_NDD_MinutosParaLiberarAdiantamento.text                              := oCDS_NDDCargoMinutosParaLiberarAdiantamento.text;{#18466}
         ovE_NDD_Confirmador.text                                                 := oCDS_NDDCargoConfirmador.text;{#19164}

         ovE_repom_webserver.text                                                 := oCDS_Repomwebserver.text;
         ovE_repom_usuario.text                                                   := oCDS_Repomusuario.text;
         ovE_repom_senha.text                                                     := oCDS_Repomsenha.text;
         ovE_repom_operacao_codigo.text                                           := oCDS_Repomoperacao_codigo.text;
         ovE_repom_roteiro_ida_volta.text                                         := oCDS_Repomroteiro_ida_volta.text;

         ovE_dbtrans_webserver.text                                               := oCDS_DbTranswebserver.text;
         ovE_dbtrans_usuario.text                                                 := oCDS_DbTransusuario.text;
         ovE_dbtransp_senha.text                                                  := oCDS_DBTranssenha.text;
         ovE_dbtrans_cliente.text                                                 := oCDS_DbTranscliente.text;
         ovE_dbtrans_condicaoliberacaooperacao_adt.text                           := oCDS_DbTranscondicaoliberacaooperacao_adt.text;
         ovE_dbtransp_localrealizacao_adiantamento.text                           := oCDS_dbtranslocalrealizacao_adiantamento.text;
         ovE_dbtransp_codigooperacao_saldo.text                                   := oCDS_dbtranscodigooperacao_saldo.text;
         ovE_dbtransp_condicaoliberacaooperacao_saldo.text                        := oCDS_dbtranscondicaoliberacaooperacao_saldo.text;
         ovE_dbtransp_localrealizacao_salod.text                                  := oCDS_dbtranslocalrealizacao_saldo.text;
         ovE_dbtransp_codigoclausula.text                                         := oCDS_dbtranscodigoclausula.text;
         ovE_dbtransp_codigoclausulapeso.text                                     := oCDS_DBTransCodigoClausulaPeso.text;
         ovE_dbtransp_codigoclausulaviagem.text                                   := oCDS_DBTransCodigoClausulaViagem.text;
         ovE_dbtransp_documentos_entrega.text                                     := oCDS_dbtransdocumentos_entrega.text;

         ovE_pancary_envio.text                                                   := oCDS_Pancaryenvio.text;
         ovE_pancary_retorno.text                                                 := oCDS_Pancaryretorno.text;

         ovE_pancary_viagem_parcelaA_efetivacao_tipo.text                         := oCDS_Pancaryviagem_parcelaA_efetivacao_tipo.Text;
         ovE_pancary_viagem_parcelaA_status_id.text                               := oCDS_Pancaryviagem_parcelaA_status_id.text;
         ovE_pancary_viagem_parcelaS_efetivacao_tipo.text                         := oCDS_Pancaryviagem_parcelaS_efetivacao_tipo.text;
         ovE_pancary_viagem_parcelaS_status_id.text                               := oCDS_Pancaryviagem_parcelaS_status_id.text;
         ovCK_pancary_viagem_quitacao.checked                                     := oCDS_Pancaryviagem_quitacao.text='S';
         ovE_pancary_valor_minimo_VA.text                                         := oCDS_Pancaryvalor_minimo_VA.text;

         ovE_ticket_Webserver.text                                                := oCDS_Ticketwebserver.text;
         ovE_ticket_Usuario.text                                                  := oCDS_Ticketusuario.text;
         ovE_ticket_Senha.text                                                    := oCDS_Ticketsenha.text;
         ovE_ticket_CodigoBase.text                                               := oCDS_TicketcodigoBase.text;
         ovE_ticket_CodigoCliente.text                                            := oCDS_TicketcodigoCliente.text;


         ovE_target_Webserver.text                                                := oCDS_targetwebserver.text;
         ovE_target_identification.text                                           := oCDS_targetidentification.text;
         ovE_target_token.text                                                    := oCDS_targettoken.text;

         ovB_ValidaCNPJ.Click;
      end
      else
      begin
         ovE_CNPJ.Text := '';
         ovDB_ndd_TipoIntegracao.Text := 'T-WebServer';

         ovE_nddws.text               := 'https://wsagent.nddcargo.com.br/wsagente/ExchangeMessage.asmx';
         ovCB_NddCertificado.text     := '';

         ovE_ndd_envio.text           := '';
         ovE_ndd_retorno.text         := '';
         ovE_NDD_GeraMovimentacaoFinanceira.text                                  := '';
         ovE_ImpressaoAutomaticaDot.text                                          := '';
         ovE_NDD_TipoOperacaoTransporte.text                                      := '';
         //ovE_NDD_TipoCarga.text                                                   := '';
         //ovE_NDD_ProprietariodaCarga.text                                         := '';
         ovE_NDD_TipoRotaPadrao.text                                              := '';
         ovE_NDD_UtilizaRoteirizador.text                                         := '';
         ovE_NDD_Notificarotacontratante.text                                     := '';
         ovE_NDD_LocaldeEfetivacaodoPagamento.text                                := '';
         ovE_NDD_LocaldeEfetivacaodoPagamentoAdt.text                    := '';
         //ovE_ndd_DocumentoParaEntrega.text                                        := '';
         ovE_NDD_DiasParaLiberarSaldo.text                                       := '';{#18466}
         ovE_NDD_MinutosParaLiberarAdiantamento.text                             := '';{#18466}

         ovE_repom_webserver.text                                                 := '';
         ovE_repom_usuario.text                                                   := '';
         ovE_repom_senha.text                                                     := '';
         ovE_repom_operacao_codigo.text                                           := '';
         ovE_repom_roteiro_ida_volta.text                                         := '';

         ovE_dbtrans_webserver.text                                               := '';
         ovE_dbtrans_usuario.text                                                 := '';
         ovE_dbtransp_senha.text                                                  := '';
         ovE_dbtrans_cliente.text                                                 := '';
         ovE_dbtrans_condicaoliberacaooperacao_adt.text                           := '';
         ovE_dbtransp_localrealizacao_adiantamento.text                           := '';
         ovE_dbtransp_codigooperacao_saldo.text                                   := '';
         ovE_dbtransp_condicaoliberacaooperacao_saldo.text                        := '';
         ovE_dbtransp_localrealizacao_salod.text                                  := '';
         ovE_dbtransp_codigoclausula.text                                         := '';
         ovE_dbtransp_codigoclausulapeso.text                                     := '';
         ovE_dbtransp_codigoclausulaviagem.text                                   := '';
         ovE_dbtransp_documentos_entrega.text                                     := '';

         ovE_pancary_envio.text                                                   := '';
         ovE_pancary_retorno.text                                                 := '';
         ovE_pancary_viagem_parcelaA_efetivacao_tipo.text                         := '';
         ovE_pancary_viagem_parcelaA_status_id.text                               := '';
         ovE_pancary_viagem_parcelaS_efetivacao_tipo.text                         := '';
         ovE_pancary_viagem_parcelaS_status_id.text                               := '';
         ovCK_pancary_viagem_quitacao.checked                                     := false;
         ovE_pancary_valor_minimo_VA.text                                         := '200';



         ovE_ticket_Webserver.text                                                := '';
         ovE_ticket_Usuario.text                                                  := '';
         ovE_ticket_Senha.text                                                    := '';
         ovE_ticket_CodigoBase.text                                               := '';
         ovE_ticket_CodigoCliente.text                                            := '';

         ovE_target_Webserver.text                                                := '';
         ovE_target_identification.text                                           := '';
         ovE_target_token.text                                                    := '';
      end;
      if ShowModal = mrOk then
      begin
         if b.Tag=1 then
            oCDS_CNPJs.Edit
         else
            oCDS_CNPJs.Insert;
         oCDS_CNPJsid.Text := ovE_CNPJ.Text;

         if oCDS_NddCargo.IsEmpty then oCDS_NddCargo.Insert else oCDS_NddCargo.Edit;
         oCDS_NddCargotipoIntegracao.Text := ovDB_ndd_TipoIntegracao.Text;

         oCDS_NddCargonddws.Text := ovE_nddws.text;
         oCDS_NddCargonddcertificado.Text := ovCB_NddCertificado.text;

         oCDS_NDDCargoenvio.text :=  IncludeTrailingPathDelimiter(ovE_ndd_envio.text);
         oCDS_NDDCargoretorno.text :=  IncludeTrailingPathDelimiter(ovE_ndd_retorno.text);
         oCDS_NddCargoGerarMovimentacaoFinanceira.text := ovE_NDD_GeraMovimentacaoFinanceira.text;
         oCDS_NDDCargoImpressaoAutomaticaDot.text := ovE_ImpressaoAutomaticaDot.text;
         oCDS_NddCargoTipodeOperacaodeTransporte.text := ovE_NDD_TipoOperacaoTransporte.text;
         //oCDS_NddCargoTipodaCarga.text := ovE_NDD_TipoCarga.text;
         //oCDS_NddCargoProprietariodaCarga.text := ovE_NDD_ProprietariodaCarga.text;
         oCDS_NddCargoTipodeRotaPadrao.text := ovE_NDD_TipoRotaPadrao.text;
         oCDS_NDDCargoUtilizaRoteirizador.text := ovE_NDD_UtilizaRoteirizador.text;
         oCDS_NDDCargoNotificarotacontratante.text := ovE_NDD_Notificarotacontratante.text;
         oCDS_NDDCargoLocaldeEfetivacaodoPagamento.text := ovE_NDD_LocaldeEfetivacaodoPagamento.text;
         oCDS_NDDCargoLocaldeEfetivacaodoPagamentoAdt.text := ovE_NDD_LocaldeEfetivacaodoPagamentoAdt.text;
         //oCDS_NddCargoDocumentoParaEntregar.text := ovE_ndd_DocumentoParaEntrega.text;
         oCDS_NDDCargoDiasParaLiberarSaldo.text := ovE_NDD_DiasParaLiberarSaldo.text;{#18466}
         oCDS_NDDCargoMinutosParaLiberarAdiantamento.text := ovE_NDD_MinutosParaLiberarAdiantamento.text;{#18466}
         oCDS_NDDCargoConfirmador.text := ovE_NDD_Confirmador.text;{#19164}

         if oCDS_Repom.IsEmpty then oCDS_Repom.Insert else oCDS_Repom.Edit;
         oCDS_Repomwebserver.text := ovE_repom_webserver.text;
         oCDS_Repomusuario.text := ovE_repom_usuario.text;
         oCDS_Repomsenha.text := ovE_repom_senha.text;
         oCDS_Repomoperacao_codigo.text := ovE_repom_operacao_codigo.text;
         oCDS_Repomroteiro_ida_volta.text := ovE_repom_roteiro_ida_volta.text;

         if oCDS_DBTrans.IsEmpty then oCDS_DBTrans.Insert else oCDS_DBTrans.Edit;
         oCDS_DbTranswebserver.text := ovE_dbtrans_webserver.text;
         oCDS_DbTransusuario.text := ovE_dbtrans_usuario.text;
         oCDS_DBTranssenha.text := ovE_dbtransp_senha.text;
         oCDS_DbTranscliente.text := ovE_dbtrans_cliente.text;
         oCDS_DbTranscondicaoliberacaooperacao_adt.text := ovE_dbtrans_condicaoliberacaooperacao_adt.text;
         oCDS_dbtranslocalrealizacao_adiantamento.text := ovE_dbtransp_localrealizacao_adiantamento.text;
         oCDS_dbtranscodigooperacao_saldo.text := ovE_dbtransp_codigooperacao_saldo.text;
         oCDS_dbtranscondicaoliberacaooperacao_saldo.text := ovE_dbtransp_condicaoliberacaooperacao_saldo.text;
         oCDS_dbtranslocalrealizacao_saldo.text := ovE_dbtransp_localrealizacao_salod.text;
         oCDS_dbtranscodigoclausula.text := ovE_dbtransp_codigoclausula.text;
         oCDS_DBTransCodigoClausulaPeso.text := ovE_dbtransp_codigoclausulapeso.text;
         oCDS_DBTransCodigoClausulaViagem.text := ovE_dbtransp_codigoclausulaviagem.text;
         oCDS_dbtransdocumentos_entrega.text := ovE_dbtransp_documentos_entrega.text;

         if oCDS_Ticket.IsEmpty then oCDS_Ticket.Insert else oCDS_Ticket.Edit;
         oCDS_Ticketwebserver.text := ovE_ticket_Webserver.text;
         oCDS_Ticketusuario.text := ovE_ticket_Usuario.text;
         oCDS_Ticketsenha.text := ovE_ticket_Senha.text;
         oCDS_TicketcodigoBase.text := ovE_ticket_CodigoBase.text;
         oCDS_TicketcodigoCliente.text := ovE_ticket_CodigoCliente.text;


         if oCDS_Pancary.IsEmpty then oCDS_Pancary.Insert else oCDS_Pancary.Edit;
         oCDS_Pancaryenvio.text :=  IncludeTrailingPathDelimiter(ovE_pancary_envio.text);
         oCDS_Pancaryretorno.text := IncludeTrailingPathDelimiter(ovE_pancary_retorno.text);
         oCDS_Pancaryviagem_parcelaA_efetivacao_tipo.Text := ovE_pancary_viagem_parcelaA_efetivacao_tipo.text;
         oCDS_Pancaryviagem_parcelaA_status_id.text := ovE_pancary_viagem_parcelaA_status_id.text;
         oCDS_Pancaryviagem_parcelaS_efetivacao_tipo.text := ovE_pancary_viagem_parcelaS_efetivacao_tipo.text;

         oCDS_Pancaryviagem_parcelaS_status_id.text       := ovE_pancary_viagem_parcelaS_status_id.text;
         if ovCK_pancary_viagem_quitacao.checked then oCDS_Pancaryviagem_quitacao.text:='S' else oCDS_Pancaryviagem_quitacao.text:='N';
         oCDS_Pancaryvalor_minimo_VA.text := ovE_pancary_valor_minimo_VA.text;                                         

         if oCDS_Target.IsEmpty then oCDS_Target.Insert else oCDS_Target.Edit;
         oCDS_targetwebserver.text := ovE_target_Webserver.text;
         oCDS_targetidentification.text := ovE_target_identification.text;
         oCDS_targettoken.text := ovE_target_token.text;                                                    

         oCDS_CNPJs.Post;
      end;
   finally
      Free;
   end;
end;

procedure TovF_PEFConduitAPPConfig.oCDS_ConfiguracaoReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
    ShowMessage(e.Message);
end;

procedure TovF_PEFConduitAPPConfig.ovBB_RemoveCnpjClick(Sender: TObject);
begin
   if (application.MessageBox( pchar('Deseja realmente remover este CNPJ?'),
                               PChar( 'Confirma ação' ),
                               MB_ICONQUESTION or MB_YESNO or MB_DEFBUTTON2) = idYes) then
   begin
      RemoveCnpj;
   end;
end;

procedure TovF_PEFConduitAPPConfig.oCDS_ConfiguracaodiretorioBaseSetText(
  Sender: TField; const Text: String);
begin
  sender.asSTring := IncludeTrailingPathDelimiter( text );
end;

end.
