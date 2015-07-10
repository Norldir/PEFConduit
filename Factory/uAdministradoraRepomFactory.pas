unit uAdministradoraRepomFactory;

interface

uses Classes,  uAdministradoraAbstract;

type
   TAdministradoraRepomFactory = class( TAdministradoraAbstract )
   private
      constructor Create( owner : TComponent );
   public
      class function GetVersao( versao : integer ) : TAdministradoraAbstract;
   end;

implementation

uses uAdministradoraRepomVersao001, SysUtils;


{ TAdministradoraPamcard }

constructor TAdministradoraRepomFactory.Create( owner : TComponent );
begin
   raise Exception.create( 'Este m�todo n�o pode ser chamado, pois esta � uma class factory!' );
end;


class function TAdministradoraRepomFactory.GetVersao(
  versao: integer): TAdministradoraAbstract;
begin
   if versao = 100 then
      result := TAdministradoraRepomdVersao001.Create
   else
      raise exception.create('Versao n�o suportada pela repom');

end;

end.
