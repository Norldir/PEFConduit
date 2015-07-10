unit uAdministradoraTargetFactory;

interface

uses Classes, uAdministradoraAbstract;

type
   TAdministradoraTargetFactory = class( TAdministradoraAbstract )
   private
      constructor Create( owner : TComponent );
   public
      class function GetVersao( versao : integer ) : TAdministradoraAbstract;
   end;

implementation

uses SysUtils,
  uAdministradoraTargetVersao001;


{ TAdministradoraPamcard }

constructor TAdministradoraTargetFactory.Create( owner : TComponent );
begin
   raise Exception.create( 'Este método não pode ser chamado, pois esta é uma class factory!' );
end;


class function TAdministradoraTargetFactory.GetVersao(
  versao: integer): TAdministradoraAbstract;
begin
   if versao = 100 then
      result := TAdministradoraTargetVersao001.Create
   else
      raise exception.create('Versao não suportada pela Target');

end;

end.
