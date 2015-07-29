unit uAdministradoraAbstract;

interface

uses SysUtils, Windows, Variants, Classes, uICFBase, utxt_base, uIntegracaoContratofreteBean;

type
   TNotifyLogEvent = procedure(sender : TObject; Mensagem : string ) of object;
   TAdministradoraAbstract = class( TObject )
   protected
      FDadosOperadora: TBeanOperadora;
      function getCodigoAdministradora   : integer; virtual;
      procedure SetDadosOperadora(const Value: TBeanOperadora); virtual;
      procedure LogIt( Mensagem : string );
   private
      FMsgError : string;
      FBean : TBeanContrato;

      FBeanTXT : TTXT;

      FArquivoRecebido: TStringList;
      FArquivoGerado: TStringList;
      FSituacao: tStatusRetorno;
      FCIOT: string;
      FProtocolo: string;
      FonLog: TNotifyLogEvent;
      FValorPedagio: extended;
      FBeanTXTRet: TTXT;


      procedure setMsgError             ( const value : String  ); virtual;
      function getMsgError               : String;  virtual;
      procedure SetArquivoGerado(const Value: TStringList);
      procedure SetArquivoRecebido(const Value: TStringList);
      procedure SetSituacao(const Value: tStatusRetorno);
      procedure SetCIOT(const Value: string);
      procedure SetProtocolo(const Value: string);
   public
      function verificaRetorno           : boolean; virtual;
      function insereContratoFrete       : boolean; virtual;
      function cancelaContratoFrete      : boolean; virtual;
      function ConsultaContratoFrete     : boolean; virtual;
      function PagamentoImediatoParcela  : boolean; virtual;
      function AlteraContrato            : boolean; virtual;
      function inserePreValidacao( Cartao, Caminhao : string; Rota : integer; ValorFrete, ValorAdiantamento : extended) : boolean; virtual;
      function GetDOT(vViagem, Arquivo: string): boolean; virtual;

      function ExtratoDe( Data : TDateTime  ) : boolean; virtual;

      procedure SetBean( bean : TBeanContrato );

      destructor Destroy; override;
      constructor Create( owner : TComponent );

      property msgError : string read getMsgError write setMsgError;
      property onLog : TNotifyLogEvent read FonLog write FonLog;
      property CodigoAdministradora : integer read getCodigoAdministradora;
      property Bean : TBeanContrato read FBean write SetBean;
      property BeanTXT : TTXT read FBeanTXT write FBeanTXT;
      property BeanTXTRet : TTXT read FBeanTXTRet write FBeanTXTRet;
      property DadosOperadora : TBeanOperadora read FDadosOperadora write SetDadosOperadora;

      property ArquivoGerado : TStringList read FArquivoGerado write SetArquivoGerado;
      property ArquivoRecebido : TStringList read FArquivoRecebido write SetArquivoRecebido;
      property Situacao : tStatusRetorno read FSituacao write SetSituacao;

      property CIOT : string read FCIOT write SetCIOT;
      {N˙mero do protocolo ou viagem junto a administradora de frete}
      property Protocolo : string read FProtocolo write SetProtocolo;
      {Valor do pedagio, algumas operadoras n„o retornam este valor, ent„o o sistema volta o mesmo valor enviado}
      property ValorPedagio : extended read FValorPedagio write FValorPedagio;

   end;

   function RemoveCaracteresEspeciais(Str: string): string;
implementation


function RemoveCaracteresEspeciais(Str: string): string;
const
  ComAcento = '‡‚ÍÙ˚„ı·ÈÌÛ˙Á¸¿¬ ‘€√’¡…Õ”⁄«‹∫';
  SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCUo';
var
   x: Integer;
begin;
  for x := 1 to Length(Str) do
     if Pos(Str[x],ComAcento) <> 0 then
       Str[x] := SemAcento[Pos(Str[x], ComAcento)];
  Result := Str;
end;

{ TAdministradoraAbstract }

function TAdministradoraAbstract.AlteraContrato: boolean;
begin
  msgError := 'N„o implementado o metodo na classe!';
  result := false
end;

function TAdministradoraAbstract.cancelaContratoFrete: boolean;
begin
  msgError := 'N„o implementado o metodo na classe!';
  result := false
end;

function TAdministradoraAbstract.ConsultaContratoFrete: boolean;
begin
   msgError := 'N„o implementado o metodo na classe!';
   result := false;
end;

constructor TAdministradoraAbstract.Create( owner : TComponent );
begin
   inherited Create;
   FArquivoRecebido := TStringList.Create;
   FArquivoGerado   := TStringList.Create;
end;

destructor TAdministradoraAbstract.Destroy;
begin
   FArquivoRecebido.Free;
   FArquivoGerado.Free;

   if Assigned(FDadosOperadora) then
       FDadosOperadora.Free;

   inherited Destroy;
end;

{-- Abstract methods --}

function TAdministradoraAbstract.ExtratoDe(Data: TDateTime): boolean;
begin
  result := false;
  msgError := 'N„o implementado o metodo na classe filha para setar o codigo da administradora!';
end;

function TAdministradoraAbstract.getCodigoAdministradora: integer;
begin
  result := 0;
  msgError := 'N„o implementado o metodo na classe filha para setar o codigo da administradora!';
end;

function TAdministradoraAbstract.GetDOT(vViagem, Arquivo: string): boolean;
begin
   result := false;
end;

function TAdministradoraAbstract.getMsgError: String;
begin
  result := self.FMsgError;
  self.FMsgError := '';
end;

function TAdministradoraAbstract.insereContratoFrete: boolean;
begin
  msgError := 'N„o implementado o metodo na classe!';
  result := false
end;

function TAdministradoraAbstract.inserePreValidacao(Cartao,
  Caminhao: string; Rota: integer; ValorFrete,
  ValorAdiantamento: extended): boolean;
begin
  msgError := 'N„o implementado o metodo na classe!';
  result := false;
end;

procedure TAdministradoraAbstract.LogIt(Mensagem: string);
begin
   if Assigned( FonLog ) then
      FonLog( Self, mensagem );
end;

function TAdministradoraAbstract.PagamentoImediatoParcela: boolean;
begin
   msgError := 'FunÁ„o n„o disponivel para esta administradora!';
   result := false;
end;

procedure TAdministradoraAbstract.SetArquivoGerado(
  const Value: TStringList);
begin
  FArquivoGerado := Value;
end;

procedure TAdministradoraAbstract.SetArquivoRecebido(
  const Value: TStringList);
begin
  FArquivoRecebido := Value;
end;

procedure TAdministradoraAbstract.SetBean(bean: TBeanContrato);
begin
   FBean := bean;
end;

procedure TAdministradoraAbstract.SetCIOT(const Value: string);
begin
  FCIOT := Value;
end;

procedure TAdministradoraAbstract.SetDadosOperadora(
  const Value: TBeanOperadora);
begin
  FDadosOperadora := Value;
end;

procedure TAdministradoraAbstract.setMsgError(const value: String);
begin
  self.FMsgError := self.FMsgError+#10+value;
end;

procedure TAdministradoraAbstract.SetProtocolo(const Value: string);
begin
  FProtocolo := Value;
end;

procedure TAdministradoraAbstract.SetSituacao(const Value: tStatusRetorno);
begin
  FSituacao := Value;
end;

function TAdministradoraAbstract.verificaRetorno: boolean;
begin
  result := false;
  msgError := 'N„o implementado o metodo na classe filha para setar o codigo da administradora!';
end;

end.
