unit uAdministradoraFactory;

interface

uses Classes, Dialogs, uAdministradoraAbstract;

type
   TAdministradoraFactory = class( TAdministradoraAbstract )
   protected
      constructor create; overload;
   public
      class function GetAdministradora( Administradora, versao : integer ) : TAdministradoraAbstract; overload;
   end;

implementation

uses SysUtils,
     uAdministradoraPamcardFactory,
     uAdministradoraRodocredFactory,
     uAdministradoraRepomFactory;

const
    cSemIntegracao = 1;
    cRepom = 2;
    cPamcary = 4;
    cRodoCred = 5;

{ TAdministradoraFactory }

class function TAdministradoraFactory.GetAdministradora( Administradora, versao : integer ) : TAdministradoraAbstract;
begin
   case Administradora of
      cRepom    : result := TAdministradoraRepomFactory.GetVersao( versao );
      cRodoCred : result := TAdministradoraRodocredFactory.GetVersao( versao );
      cPamcary  : result := TAdministradoraPamcardFactory.GetVersao( versao );
      else raise exception.create( 'N�o h� implementa��o para esta administradora ');
   end;
end;

constructor TAdministradoraFactory.create;
begin
   raise exception.create( 'Este m�todo n�o pode ser chamado, pois esta � uma class factory!' );
end;

end.
