unit uovF_PEFConduitAPPConfigCNPJ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls;

type
  TAddFunc = procedure(arquivo : string) of object; 
  TovF_PEFConduitAPPConfigCNPJ = class(TForm)
    ovL_cnpj: TLabel;
    ovE_CNPJ: TEdit;
    ovPC_Administradoras: TPageControl;
    ovTS_NDDCargo: TTabSheet;
    ovTS_Repom: TTabSheet;
    ovTS_Rodocred: TTabSheet;
    ovTS_Pancary: TTabSheet;
    ovTS_Ticket: TTabSheet;
    ovBB_Confirma: TBitBtn;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    GroupBox2: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    ovE_repom_webserver: TEdit;
    ovE_repom_usuario: TEdit;
    ovE_repom_senha: TEdit;
    ovE_repom_operacao_codigo: TEdit;
    ovE_repom_roteiro_ida_volta: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    GroupBox3: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    ovE_dbtrans_webserver: TEdit;
    ovE_dbtrans_usuario: TEdit;
    ovE_dbtransp_senha: TEdit;
    ovE_dbtrans_cliente: TEdit;
    ovE_dbtrans_condicaoliberacaooperacao_adt: TEdit;
    ovE_dbtransp_localrealizacao_adiantamento: TEdit;
    ovE_dbtransp_codigooperacao_saldo: TEdit;
    ovE_dbtransp_condicaoliberacaooperacao_saldo: TEdit;
    ovE_dbtransp_localrealizacao_salod: TEdit;
    ovE_dbtransp_codigoclausula: TEdit;
    ovE_dbtransp_documentos_entrega: TEdit;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    GroupBox4: TGroupBox;
    ovE_ticket_Webserver: TEdit;
    ovE_ticket_Usuario: TEdit;
    ovE_ticket_Senha: TEdit;
    ovE_ticket_CodigoBase: TEdit;
    Label35: TLabel;
    ovE_ticket_CodigoCliente: TEdit;
    ovB_ValidaCNPJ: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ovBB_8: TBitBtn;
    ovBB_9: TBitBtn;
    ovBB_10: TBitBtn;
    ovBB_11: TBitBtn;
    ovBB_12: TBitBtn;
    ovBB_13: TBitBtn;
    ovBB_15: TBitBtn;
    ovBB_16: TBitBtn;
    ovBB_17: TBitBtn;
    ovBB_18: TBitBtn;
    Label6: TLabel;
    ovE_dbtransp_codigoclausulapeso: TEdit;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    ovE_dbtransp_codigoclausulaviagem: TEdit;
    Label7: TLabel;
    ovPC_1: TPageControl;
    ovTS_configNdd: TTabSheet;
    ovTS_UtilitariosNdd: TTabSheet;
    Label1: TLabel;
    ovDB_ndd_TipoIntegracao: TComboBox;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    ovE_NDD_GeraMovimentacaoFinanceira: TEdit;
    ovE_ImpressaoAutomaticaDot: TEdit;
    ovE_NDD_TipoOperacaoTransporte: TEdit;
    ovE_NDD_TipoRotaPadrao: TEdit;
    ovE_NDD_UtilizaRoteirizador: TEdit;
    ovE_NDD_Notificarotacontratante: TEdit;
    ovE_NDD_LocaldeEfetivacaodoPagamento: TEdit;
    ovBB_1: TBitBtn;
    ovBB_2: TBitBtn;
    ovBB_3: TBitBtn;
    ovBB_4: TBitBtn;
    ovBB_5: TBitBtn;
    ovBB_6: TBitBtn;
    ovBB_7: TBitBtn;
    ovE_NDD_LocaldeEfetivacaodoPagamentoAdt: TEdit;
    BitBtn6: TBitBtn;
    ovBB_14: TBitBtn;
    GroupBox6: TGroupBox;
    ovLB_NddTimeOut: TListBox;
    ovB_1: TButton;
    PageControl1: TPageControl;
    ovTS_configPancard: TTabSheet;
    Label29: TLabel;
    Label30: TLabel;
    ovE_pancary_envio: TEdit;
    ovE_pancary_retorno: TEdit;
    GroupBox5: TGroupBox;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    ovE_pancary_viagem_parcelaA_efetivacao_tipo: TEdit;
    BitBtn7: TBitBtn;
    ovE_pancary_viagem_parcelaA_status_id: TEdit;
    BitBtn8: TBitBtn;
    ovE_pancary_viagem_parcelaS_efetivacao_tipo: TEdit;
    BitBtn9: TBitBtn;
    ovTS_timeoutpancard: TTabSheet;
    GroupBox7: TGroupBox;
    ovLB_PancaryTimeOut: TListBox;
    Button1: TButton;
    ovPC_ndd: TPageControl;
    ovTS_NDDTXT: TTabSheet;
    ovTS_NDDWS: TTabSheet;
    ovL_DiretorioEnvio: TLabel;
    Label2: TLabel;
    ovE_ndd_envio: TEdit;
    ovE_ndd_retorno: TEdit;
    ovL_1: TLabel;
    ovE_NDDWS: TEdit;
    ovL_2: TLabel;
    ovCB_NddCertificado: TComboBox;
    Label39: TLabel;
    ovCK_pancary_viagem_quitacao: TCheckBox;
    Label40: TLabel;
    ovE_pancary_valor_minimo_VA: TEdit;
    BitBtn10: TBitBtn;
    Label41: TLabel;
    ovE_pancary_viagem_parcelaS_status_id: TEdit;
    BitBtn11: TBitBtn;
    Label42: TLabel;
    ovE_NDD_DiasParaLiberarSaldo: TEdit;
    BitBtn12: TBitBtn;
    Label43: TLabel;
    ovE_NDD_MinutosParaLiberarAdiantamento: TEdit;
    BitBtn13: TBitBtn;
    Label44: TLabel;
    ovE_NDD_Confirmador: TEdit;
    BitBtn14: TBitBtn;
    ovTS_Target: TTabSheet;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    GroupBox8: TGroupBox;
    ovE_Target_Webserver: TEdit;
    ovE_target_Identification: TEdit;
    ovE_Target_Token: TEdit;
    BitBtn15: TBitBtn;
    procedure ovB_ValidaCNPJClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ovBB_1Click(Sender: TObject);
    procedure ovBB_2Click(Sender: TObject);
    procedure ovBB_3Click(Sender: TObject);
    procedure ovBB_4Click(Sender: TObject);
    procedure ovBB_5Click(Sender: TObject);
    procedure ovBB_6Click(Sender: TObject);
    procedure ovBB_7Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ovBB_8Click(Sender: TObject);
    procedure ovBB_9Click(Sender: TObject);
    procedure ovBB_10Click(Sender: TObject);
    procedure ovBB_11Click(Sender: TObject);
    procedure ovBB_12Click(Sender: TObject);
    procedure ovBB_13Click(Sender: TObject);
    procedure ovBB_14Click(Sender: TObject);
    procedure ovBB_15Click(Sender: TObject);
    procedure ovBB_16Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure ovB_1Click(Sender: TObject);
    procedure ovTS_UtilitariosNddShow(Sender: TObject);
    procedure ovTS_timeoutpancardShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ovDB_ndd_TipoIntegracaoChange(Sender: TObject);
    procedure ovCB_NddCertificadoDropDown(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
  private
    function valida: boolean;
    procedure ValidacaoFim(Sender: TObject);
    procedure AddArquivoNddCargo(arquivo: string);
    procedure buscaArquivosTimeOut(diretorio: string; add: TAddFunc);
    procedure RecuperaTimeOut(adm, arquivo: string);
    procedure AddArquivoPancary(arquivo: string);
    { Private declarations }
  public
    { Public declarations }
    proxy,
    proxyusuario,
    proxysenha : string;
    diretorioBase : string;
  end;

var
  ovF_PEFConduitAPPConfigCNPJ: TovF_PEFConduitAPPConfigCNPJ;

implementation

uses uPEFConduitLic, uX509Capicom;
{$R *.dfm}

function TovF_PEFConduitAPPConfigCNPJ.valida : boolean;
var
  administradoras : string;
begin
   result := uPEFConduitLic.ValidaLicenca( ovE_CNPJ.text, administradoras, proxy, proxyusuario, proxysenha,  ValidacaoFim );
   ovTS_NDDCargo.TabVisible := Pos('NDDCARGO', administradoras) > 0;
   ovTS_Repom.TabVisible := Pos('REPOM', administradoras) > 0;
   ovTS_Rodocred.TabVisible := Pos('RODOCRED', administradoras) > 0;
   ovTS_Pancary.TabVisible := Pos('PANCARY', administradoras) > 0;
   ovTS_Ticket.TabVisible := Pos('TICKET', administradoras) > 0;
end;

procedure TovF_PEFConduitAPPConfigCNPJ.ovB_ValidaCNPJClick(
  Sender: TObject);
begin
   ovB_ValidaCNPJ.caption := 'Validando, aguarde..';
   ovB_ValidaCNPJ.Enabled := false;
   Application.ProcessMessages;
   valida;
end;

procedure TovF_PEFConduitAPPConfigCNPJ.ValidacaoFim(Sender: TObject);
begin
   if Assigned( sender ) and (ovB_ValidaCNPJ.tag<3) then
   begin
      ovB_ValidaCNPJ.tag := ovB_ValidaCNPJ.tag + 1;
      ovB_ValidaCNPJ.Caption := 'Validando licença '+intToStr( ovB_ValidaCNPJ.tag );
      valida;
   end
   else
   begin
     ovB_ValidaCNPJ.Enabled := True;
     ovB_ValidaCNPJ.caption := 'Validar licença';
     ovB_ValidaCNPJ.tag := 0;
   end;
end;

procedure TovF_PEFConduitAPPConfigCNPJ.FormCreate(Sender: TObject);
begin
   ovTS_NDDCargo.TabVisible := false;
   ovTS_Repom.TabVisible := false;
   ovTS_Rodocred.TabVisible := false;
   ovTS_Pancary.TabVisible := false;
   ovTS_Ticket.TabVisible := false;
end;

procedure TovF_PEFConduitAPPConfigCNPJ.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
 canclose := ovB_ValidaCNPJ.Enabled;
 if not canclose then
    showmessage('Estou validando o cnpj, por favor aguarde!');
end;

procedure TovF_PEFConduitAPPConfigCNPJ.ovBB_14Click(Sender: TObject);
begin
   application.MessageBox( PChar('NDDCargo versão 1.00'#10+
                                'Disponivel para a vesão 1, integração via TXT, para a versão 2 integração via WebSErver'),
                           'Origem',
                           MB_ICONINFORMATION or MB_OK or MB_TOPMOST or MB_APPLMODAL or MB_DEFBUTTON1 );
end;

procedure TovF_PEFConduitAPPConfigCNPJ.ovBB_1Click(Sender: TObject);
begin
   application.MessageBox( PChar('NDDCargo versão 1.00'#10+
                                'Registro 1000 campo 8 do manual'#10+
                                'Valores válidos: 1 ou 2'#10+
                                'Modificavel através do registro 7000 operadora NDDCargo parâmetro "GerarMovimentacaoFinanceira"'  ),
                           'Origem',
                           MB_ICONINFORMATION or MB_OK or MB_TOPMOST or MB_APPLMODAL or MB_DEFBUTTON1 );
end;

procedure TovF_PEFConduitAPPConfigCNPJ.ovBB_2Click(Sender: TObject);
begin
   application.MessageBox( PChar('NDDCargo versão 1.00'#10+
                                'Registro 1000 campo 10 do manual'#10+
                                'Valores válidos: 1 ou 2'#10+
                                'Modificavel através do registro 7000 operadora NDDCargo parâmetro "ImpressaoAutomaticaDOT"'  ),
                           'Origem',
                           MB_ICONINFORMATION or MB_OK or MB_TOPMOST or MB_APPLMODAL or MB_DEFBUTTON1 );
end;

procedure TovF_PEFConduitAPPConfigCNPJ.ovBB_3Click(Sender: TObject);
begin
   application.MessageBox( PChar('NDDCargo versão 1.00'#10+
                                'Registro 1000 campo 11 do manual'#10+
                                'Valores válidos: 1 ou 2'#10+
                                'Modificavel através do registro 7000 operadora NDDCargo parâmetro "TipoOperacaoTransporte"'  ),
                           'Origem',
                           MB_ICONINFORMATION or MB_OK or MB_TOPMOST or MB_APPLMODAL or MB_DEFBUTTON1 );
end;

procedure TovF_PEFConduitAPPConfigCNPJ.ovBB_4Click(Sender: TObject);
begin
   application.MessageBox( PChar('NDDCargo versão 1.00'#10+
                                'Registro 4600 campo 2 do manual'#10+
                                'Valores válidos: 1 ou 2'#10+
                                'Modificavel através do registro 7000 operadora NDDCargo parâmetro "TipoRotaPadrao"'#10+
                                'OBS: Rotas somente são cadastrada se parâmetro "CadastraRota" estiver com valor "S" ' ),
                           'Origem',
                           MB_ICONINFORMATION or MB_OK or MB_TOPMOST or MB_APPLMODAL or MB_DEFBUTTON1 );
end;

procedure TovF_PEFConduitAPPConfigCNPJ.ovBB_5Click(Sender: TObject);
begin
   application.MessageBox( PChar('NDDCargo versão 1.00'#10+
                                'Registro 4600 campo 3 do manual'#10+
                                'Valores válidos: 1 ou 2'#10+
                                'Modificavel através do registro 7000 operadora NDDCargo parâmetro "UtilizaRoteirizador"'#10+
                                'OBS: Rotas somente são cadastrada se parâmetro "CadastraRota" estiver com valor "S"  '),
                           'Origem',
                           MB_ICONINFORMATION or MB_OK or MB_TOPMOST or MB_APPLMODAL or MB_DEFBUTTON1 );
end;

procedure TovF_PEFConduitAPPConfigCNPJ.ovBB_6Click(Sender: TObject);
begin
   application.MessageBox( PChar('NDDCargo versão 1.00'#10+
                                'Registro 4600 campo 5 do manual'#10+
                                'Valores válidos: 1 ou 2'#10+
                                'Modificavel através do registro 7000 operadora NDDCargo parâmetro "NotificaRotaContratante"'#10+
                                'OBS: Rotas somente são cadastrada se parâmetro "CadastraRota" estiver com valor "S"  '),
                           'Origem',
                           MB_ICONINFORMATION or MB_OK or MB_TOPMOST or MB_APPLMODAL or MB_DEFBUTTON1 );
end;

procedure TovF_PEFConduitAPPConfigCNPJ.ovBB_7Click(Sender: TObject);
begin
   application.MessageBox( PChar('NDDCargo versão 1.00'#10+
                                'Registro 9200 campo 2 do manual'#10+
                                'Valores válidos: 1, 2, 3 ou 4'#10+
                                'Modificavel através do registro 7000 operadora NDDCargo parâmetro "LocalEfetivacaoPagamento" '),
                           'Origem',
                           MB_ICONINFORMATION or MB_OK or MB_TOPMOST or MB_APPLMODAL or MB_DEFBUTTON1 );
end;

procedure TovF_PEFConduitAPPConfigCNPJ.BitBtn1Click(Sender: TObject);
begin
   application.MessageBox( PChar('Manual Técnico de Integração - REpom Express - v1.0'#10+
                                'Campo GP03 do manual'#10+
                                'Modificavel através do registro 7000 operadora REPOM parâmetro "OPERACAO_CODIGO" '),
                           'Origem',
                           MB_ICONINFORMATION or MB_OK or MB_TOPMOST or MB_APPLMODAL or MB_DEFBUTTON1 );
end;

procedure TovF_PEFConduitAPPConfigCNPJ.BitBtn2Click(Sender: TObject);
begin
   application.MessageBox( PChar('Manual Técnico de Integração - REpom Express - v1.0'#10+
                                'Campo GP04 do manual'#10+
                                'Modificavel através do registro 7000 operadora REPOM parâmetro "ROTEIRO_IDA_VOLTA" '),
                           'Origem',
                           MB_ICONINFORMATION or MB_OK or MB_TOPMOST or MB_APPLMODAL or MB_DEFBUTTON1 );
end;

procedure TovF_PEFConduitAPPConfigCNPJ.BitBtn3Click(Sender: TObject);
begin
   application.MessageBox( PChar('Manual Técnico de Integração Cliente -  Rodocred v1.01'#10+
                                'Item 4.2.6 Anexo - Tabela de Configuração de Programação de Viagem'#10+
                                'Valores válidos: DAD, EST, FIL ou LIB '#10+
                                'Modificavel através do registro 7000 operadora RODOCRED parâmetro "CondicaoLiberacaoOperacao_Adt" '),
                           'Origem',
                           MB_ICONINFORMATION or MB_OK or MB_TOPMOST or MB_APPLMODAL or MB_DEFBUTTON1 );
end;

procedure TovF_PEFConduitAPPConfigCNPJ.ovBB_8Click(Sender: TObject);
begin
   application.MessageBox( PChar('Manual Técnico de Integração Cliente -  Rodocred v1.01'#10+
                                'Item 4.2.6 Anexo - Tabela de Configuração de Programação de Viagem'#10+
                                'Valores válidos: QER, REd, EST, QFL ou FIL '#10+
                                'Modificavel através do registro 7000 operadora RODOCRED parâmetro "LocalRealizacao_Adiantamento" '),
                           'Origem',
                           MB_ICONINFORMATION or MB_OK or MB_TOPMOST or MB_APPLMODAL or MB_DEFBUTTON1 );
end;

procedure TovF_PEFConduitAPPConfigCNPJ.ovBB_9Click(Sender: TObject);
begin
   application.MessageBox( PChar('Manual Técnico de Integração Cliente -  Rodocred v1.01'#10+
                                'Item 4.2.6 Anexo - Tabela de Configuração de Programação de Viagem'#10+
                                'Valores válidos: EDL, EDS, EDP, ESP, PES, DIA ou CUS '#10+
                                'Modificavel através do registro 7000 operadora RODOCRED parâmetro "CodigoOperacao_Saldo" '),
                           'Origem',
                           MB_ICONINFORMATION or MB_OK or MB_TOPMOST or MB_APPLMODAL or MB_DEFBUTTON1 );
end;

procedure TovF_PEFConduitAPPConfigCNPJ.ovBB_10Click(Sender: TObject);
begin
   application.MessageBox( PChar('Manual Técnico de Integração Cliente -  Rodocred v1.01'#10+
                                'Item 4.2.6 Anexo - Tabela de Configuração de Programação de Viagem'#10+
                                'Valores válidos: EST ou FIL  '#10+
                                'Modificavel através do registro 7000 operadora RODOCRED parâmetro "CondicaoLiberacaoOperacao_Saldo" '),
                           'Origem',
                           MB_ICONINFORMATION or MB_OK or MB_TOPMOST or MB_APPLMODAL or MB_DEFBUTTON1 );

end;

procedure TovF_PEFConduitAPPConfigCNPJ.ovBB_11Click(Sender: TObject);
begin
   application.MessageBox( PChar('Manual Técnico de Integração Cliente -  Rodocred v1.01'#10+
                                'Item 4.2.6 Anexo - Tabela de Configuração de Programação de Viagem'#10+
                                'Valores válidos: QER, EST, QFL ou FIL   '#10+
                                'Modificavel através do registro 7000 operadora RODOCRED parâmetro "LocalRealizacao_Saldo" '),
                           'Origem',
                           MB_ICONINFORMATION or MB_OK or MB_TOPMOST or MB_APPLMODAL or MB_DEFBUTTON1 );

end;

procedure TovF_PEFConduitAPPConfigCNPJ.ovBB_12Click(Sender: TObject);
begin
   application.MessageBox( PChar('Manual Técnico de Integração Cliente -  Rodocred v1.01'#10+
                                'Código das clausulas contratuais enviadas para a rodocred'#10+
                                'Valores válidos: Conforme cadastro no site da rodocred, Separado por ponto e virgula. Somente é gerada uma automatica referente a tolerância. '#10+
                                'Modificavel através do registro 7000 operadora RODOCRED parâmetro "CodigoClausula" '),
                           'Origem',
                           MB_ICONINFORMATION or MB_OK or MB_TOPMOST or MB_APPLMODAL or MB_DEFBUTTON1 );
end;

procedure TovF_PEFConduitAPPConfigCNPJ.ovBB_13Click(Sender: TObject);
begin
   application.MessageBox( PChar('Manual Técnico de Integração Cliente -  Rodocred v1.01'#10+
                                'Código dos documentos que devem ser entregues no momento do Saldo'#10+
                                'Valores válidos: Conforme cadastro no site da rodocred, Separado por ponto e virgula.  '#10+
                                'Normalmente são adicionados os item CTE;TCK;NFF'#10+
                                'Modificavel através do registro 0200 '),
                           'Origem',
                           MB_ICONINFORMATION or MB_OK or MB_TOPMOST or MB_APPLMODAL or MB_DEFBUTTON1 );
end;


procedure TovF_PEFConduitAPPConfigCNPJ.ovBB_15Click(Sender: TObject);
begin
   application.MessageBox( PChar('Este processo verifica a liberação do CNPJ junto a PEFConduit.'#10+
                                 'Para tanto é necessário ter acesso ao indereço www.PEFConduit.com.br ou 189.25.121.26 '#10+
                                 'A liberação é validada em período de 30 dias, caso não consiga validar o sistema para de executar'),
                           'Origem',
                           MB_ICONINFORMATION or MB_OK or MB_TOPMOST or MB_APPLMODAL or MB_DEFBUTTON1 );
end;

procedure TovF_PEFConduitAPPConfigCNPJ.ovBB_16Click(Sender: TObject);
begin
   application.MessageBox( PChar('Entre em contato com a Administradora de Pagamento de Frete e solicite os parametro de integração via WEBSERVER.'),
                           'Origem',
                           MB_ICONINFORMATION or MB_OK or MB_TOPMOST or MB_APPLMODAL or MB_DEFBUTTON1 );
end;

procedure TovF_PEFConduitAPPConfigCNPJ.BitBtn4Click(Sender: TObject);
begin
   application.MessageBox( PChar('Manual Técnico de Integração Cliente -  Rodocred v1.01'#10+
                                'Código das clausulas contratuais enviadas para a rodocred quando o frete for por PESO, ValorTotalMotorista diferente do ValorTotalFrete no registro 0000'#10+
                                'Valores válidos: Conforme cadastro no site da rodocred, Separado por ponto e virgula. '#10+
                                'Modificavel através do registro 7000 operadora RODOCRED parâmetro "CodigoClausula" '),
                           'Origem',
                           MB_ICONINFORMATION or MB_OK or MB_TOPMOST or MB_APPLMODAL or MB_DEFBUTTON1 );

end;

procedure TovF_PEFConduitAPPConfigCNPJ.BitBtn5Click(Sender: TObject);
begin
   application.MessageBox( PChar('Manual Técnico de Integração Cliente -  Rodocred v1.01'#10+
                                'Código das clausulas contratuais enviadas para a rodocred quando o frete for por VIAGEM, ValorTotalMotorista igual ao ValorTotalFrete no registro 0000'#10+
                                'Valores válidos: Conforme cadastro no site da rodocred, Separado por ponto e virgula. '#10+
                                'Modificavel através do registro 7000 operadora RODOCRED parâmetro "CodigoClausula" '),
                           'Origem',
                           MB_ICONINFORMATION or MB_OK or MB_TOPMOST or MB_APPLMODAL or MB_DEFBUTTON1 );
end;

procedure TovF_PEFConduitAPPConfigCNPJ.BitBtn6Click(Sender: TObject);
begin
   application.MessageBox( PChar('NDDCargo versão 1.00'#10+
                                'Registro 9200 campo 2 do manual'#10+
                                'Valores válidos: 1, 2, 3 ou 4'#10+
                                'Modificavel através do registro 7000 operadora NDDCargo parâmetro "LocalEfetivacaoPagamentoAdiantamento" '#10+
                                'Deixar em branco caso queira usar pagamento agendado.'),
                           'Origem',
                           MB_ICONINFORMATION or MB_OK or MB_TOPMOST or MB_APPLMODAL or MB_DEFBUTTON1 );
end;

procedure TovF_PEFConduitAPPConfigCNPJ.BitBtn7Click(Sender: TObject);
begin
   application.MessageBox( PChar('Pancary versão 2.95'#10+
                                'viagem.parcelaA.efetivacao.tipo'),
                           'Origem',
                           MB_ICONINFORMATION or MB_OK or MB_TOPMOST or MB_APPLMODAL or MB_DEFBUTTON1 );
end;

procedure TovF_PEFConduitAPPConfigCNPJ.BitBtn8Click(Sender: TObject);
begin
   application.MessageBox( PChar('Pancary versão 2.95'#10+
                                'viagem.parcelaA.status.id'),
                           'Origem',
                           MB_ICONINFORMATION or MB_OK or MB_TOPMOST or MB_APPLMODAL or MB_DEFBUTTON1 );

end;

procedure TovF_PEFConduitAPPConfigCNPJ.BitBtn9Click(Sender: TObject);
begin
   application.MessageBox( PChar('Pancary versão 2.95'#10+
                                'viagem.parcelaS.efetivacao.tipo'),
                           'Origem',
                           MB_ICONINFORMATION or MB_OK or MB_TOPMOST or MB_APPLMODAL or MB_DEFBUTTON1 );

end;

procedure TovF_PEFConduitAPPConfigCNPJ.AddArquivoNddCargo( arquivo : string );
begin

   ovLB_NddTimeOut.Items.add( FormatDateTime( 'dd/mm/yy hh:nn:ss', FileDateToDateTime(  FileAge( arquivo ) ))+'|'+StringReplace(  arquivo, diretorioBase+'NDDCARGO\', '', [] ) );
end;

procedure TovF_PEFConduitAPPConfigCNPJ.AddArquivoPancary( arquivo : string );
begin

   ovLB_PancaryTimeOut.Items.add( FormatDateTime( 'dd/mm/yy hh:nn:ss', FileDateToDateTime(  FileAge( arquivo ) ))+'|'+StringReplace(  arquivo, diretorioBase+'PANCARY\', '', [] ) );
end;


procedure TovF_PEFConduitAPPConfigCNPJ.buscaArquivosTimeOut( diretorio : string; add : TAddFunc );
var
   sr: TSearchRec;
   processaArquivo : Boolean;
begin
   if FindFirst(diretorio+'*.*', faAnyFile, sr) = 0 then
   begin
     repeat
       processaArquivo := Pos('TIMEDOUT', diretorio) > 0;
       if (sr.Attr = faDirectory) then
       begin
          if (sr.Name <> '.') and (sr.Name<>'..') then buscaArquivosTimeOut( diretorio+sr.Name+'\', add);
       end
       else if processaArquivo then
       begin
          Add( diretorio+sr.Name );
       end;
     until FindNext(sr) <> 0;
     FindClose(sr);
   end;
end;

procedure TovF_PEFConduitAPPConfigCNPJ.ovB_1Click(Sender: TObject);
begin
  RecuperaTimeOut( 'NDDCARGO', ovLB_NddTimeOut.Items[ ovLB_NddTimeOut.ItemIndex ]);
  ovLB_NddTimeOut.Items.Delete( ovLB_NddTimeOut.ItemIndex );
end;

procedure TovF_PEFConduitAPPConfigCNPJ.RecuperaTimeOut( adm : string; arquivo : string );
var
  a : TextFile;
  l : string;
  sl : TStringList;
  na, fp : string;
begin

  sl := TStringList.Create;
  try
     na := Arquivo;
     na := copy( na, pos('|', na)+1, 255);
     na := diretorioBase+adm+'\'+na;
     AssignFile( a, na );
     Reset( a );
     try
       Readln( a, l );
       while not Eof( a) do
       begin
          if pos('9999|', l) = 0 then
             sl.Add( l );
          Readln( a, l );
       end;
     finally
       CloseFile(a);
     end;
     l := '9999|1.00||'+formatDateTime('dd/mm/yyyy hh:nn:ss', now);
     sl.Add( l );

     fp := ExtractFilePath( na );
     fp := fp+'..\';
     sl.SaveToFile( fp+ExtractFileName( na )  );
     DeleteFile( na );
  finally
    sl.free;
  end;
end;

procedure TovF_PEFConduitAPPConfigCNPJ.ovTS_UtilitariosNddShow(
  Sender: TObject);
begin
   buscaArquivosTimeOut(  diretorioBase+'NDDCARGO\', AddArquivoNddCargo );
   //busca arquivos com time-out
end;

procedure TovF_PEFConduitAPPConfigCNPJ.ovTS_timeoutpancardShow(
  Sender: TObject);
begin
   buscaArquivosTimeOut(  diretorioBase+'PANCARY\', AddArquivoPANCARY );
end;

procedure TovF_PEFConduitAPPConfigCNPJ.Button1Click(Sender: TObject);
begin
  RecuperaTimeOut( 'PANCARY', ovLB_PancaryTimeOut.Items[ ovLB_PancaryTimeOut.ItemIndex ]);
  ovLB_PancaryTimeOut.Items.Delete( ovLB_PancaryTimeOut.ItemIndex );
end;

procedure TovF_PEFConduitAPPConfigCNPJ.ovDB_ndd_TipoIntegracaoChange(
  Sender: TObject);
begin
   ovTS_NDDTXT.TabVisible := ovDB_ndd_TipoIntegracao.Text = 'T-TXT';
   ovTS_UtilitariosNdd.TabVisible := ovDB_ndd_TipoIntegracao.Text = 'T-TXT';

   ovTS_NDDWS.TabVisible  := ovDB_ndd_TipoIntegracao.Text = 'W-WebServer';
end;

procedure TovF_PEFConduitAPPConfigCNPJ.ovCB_NddCertificadoDropDown(
  Sender: TObject);
var
  sl : TStringList;
  cb : TComboBox;
  atual : string;
begin
  cb := TComboBox(Sender);
  atual := cb.Text;
  sl := TStringList.Create;
  try
     GetCertificados( sl );
     cb.Clear;
     cb.Items.Assign( sl );
  finally
     sl.Free;
  end;
//  cb.ItemIndex := cb.Items.IndexOf( atual );
//  if cb.ItemIndex  = -1 then
//  begin
//    cb.Items.Insert(0, atual);
//    cb.ItemIndex := 0;
//  end;
end;

procedure TovF_PEFConduitAPPConfigCNPJ.BitBtn12Click(Sender: TObject);{#18466}
begin
   application.MessageBox( PChar('NDDCargo versão 1.00'#10+
                                'Número de dias de previsão de pagamento do Saldo.'),
                           'Dias para pagar o Saldo',
                           MB_ICONINFORMATION or MB_OK or MB_TOPMOST or MB_APPLMODAL or MB_DEFBUTTON1 );
end;

procedure TovF_PEFConduitAPPConfigCNPJ.BitBtn13Click(Sender: TObject);{#18466}
begin
   application.MessageBox( PChar('NDDCargo versão 1.00'#10+
                                'Número de Minutos para liberar o adiantamento após a aprovação do contrato.'),
                           'Minutos para liberar o Adiantamento',
                           MB_ICONINFORMATION or MB_OK or MB_TOPMOST or MB_APPLMODAL or MB_DEFBUTTON1 );
end;

procedure TovF_PEFConduitAPPConfigCNPJ.BitBtn14Click(Sender: TObject);
begin
   application.MessageBox( PChar('NDDCargo versão 1.00'#10+
                                'CNPJ/CPF Confirmador eletronico.'),
                           'Registro 7000 NDD',
                           MB_ICONINFORMATION or MB_OK or MB_TOPMOST or MB_APPLMODAL or MB_DEFBUTTON1 );

end;

end.
