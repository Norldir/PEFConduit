unit uAdministradoraPamcardFactory;

interface

uses Classes, uAdministradoraAbstract;

type
   TAdministradoraPamcardFactory = class( TAdministradoraAbstract )
   private
      constructor Create( owner : TComponent ); 
   public
      class function GetVersao( versao : integer ) : TAdministradoraAbstract;
   end;

implementation

uses uAdministradoraPamcardVersao001, SysUtils;


{ TAdministradoraPamcard }

constructor TAdministradoraPamcardFactory.Create( owner : TComponent );
begin
   raise Exception.create( 'Este método não pode ser chamado, pois esta é uma class factory!' );
end;


class function TAdministradoraPamcardFactory.GetVersao(
  versao: integer): TAdministradoraAbstract;
begin
   if versao = 100 then
      result := TAdministradoraPamcardVersao001.Create
   else
      raise exception.create('Versao não suportada pela pamcard');

end;

end.
