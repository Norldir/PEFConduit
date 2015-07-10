unit uAdministradoraNDDFactory;

interface

uses Classes, uAdministradoraAbstract;

type
   TAdministradoraNDDFactory = class( TAdministradoraAbstract )
   private
      constructor Create( owner : TComponent );
   public
      class function GetVersao( versao : integer ) : TAdministradoraAbstract;
   end;

implementation

uses SysUtils,
  uAdministradoraNDDVersao001, uAdministradoraNDDVersao002, uAdministradoraNDDVersao003ws;


{ TAdministradoraPamcard }

constructor TAdministradoraNDDFactory.Create( owner : TComponent );
begin
   raise Exception.create( 'Este m�todo n�o pode ser chamado, pois esta � uma class factory!' );
end;


class function TAdministradoraNDDFactory.GetVersao(
  versao: integer): TAdministradoraAbstract;
begin
   if versao = 100 then
      result := TAdministradoraNDDVersao001.Create
   else if versao = 110 then
      result := TAdministradoraNDDVersao002.Create
   else if versao = 421 then
      result := TAdministradoraNDDVersao003ws.Create
   else
      raise exception.create('Versao n�o suportada pela NDD');

end;

end.
