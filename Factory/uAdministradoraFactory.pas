unit uAdministradoraFactory;

interface

uses Classes, uAdministradoraAbstract;

const
    cSemIntegracao = 1;
    cRepom = 2;
    cPamcary = 4;
    cRodoCred = 5;
    cNDD = 6;
    cTicket = 7;
    cTarget = 8;


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
     uAdministradoraRepomFactory,
     uAdministradoraNDDFactory,
     uAdministradoraTicketFactory,
     uAdministradoraTargetFactory;

{ TAdministradoraFactory }

class function TAdministradoraFactory.GetAdministradora( Administradora, versao : integer ) : TAdministradoraAbstract;
begin
   case Administradora of
      cRepom    : result := TAdministradoraRepomFactory.GetVersao( versao );
      cRodoCred : result := TAdministradoraRodocredFactory.GetVersao( versao );
      cPamcary  : result := TAdministradoraPamcardFactory.GetVersao( versao );
      cNDD      : result := TAdministradoraNDDFactory.GetVersao( versao );
      cTicket   : result := TAdministradoraTicketFactory.GetVersao( versao );
      cTarget   : result := TAdministradoraTargetFactory.GetVersao( versao );
      else raise exception.create( 'Não há implementação para esta administradora ');
   end;
end;

constructor TAdministradoraFactory.create;
begin
   raise exception.create( 'Este método não pode ser chamado, pois esta é uma class factory!' );
end;

end.
