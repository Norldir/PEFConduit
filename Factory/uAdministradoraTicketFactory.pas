unit uAdministradoraTicketFactory;

interface

uses Classes, uAdministradoraAbstract;

type
   TAdministradoraTicketFactory = class( TAdministradoraAbstract )
   private
      constructor Create( owner : TComponent );
   public
      class function GetVersao( versao : integer ) : TAdministradoraAbstract;
   end;

implementation

uses uAdministradoraTicketVersao001, uAdministradoraTicketVersao002, SysUtils,
  uAdministradoraTicketVersao003;


{ TAdministradoraPamcard }

constructor TAdministradoraTicketFactory.Create( owner : TComponent );
begin
   raise Exception.create( 'Este m�todo n�o pode ser chamado, pois esta � uma class factory!' );
end;


class function TAdministradoraTicketFactory.GetVersao(
  versao: integer): TAdministradoraAbstract;
begin
   if versao = 100 then
      result := TAdministradoraTicketVersao001.Create
   else if versao = 200 then
      result := TAdministradoraTicketVersao002.Create
   else if versao = 300 then
      result := TAdministradoraTicketVersao003.Create
   else
      raise exception.create('Versao n�o suportada pela repom');

end;

end.
