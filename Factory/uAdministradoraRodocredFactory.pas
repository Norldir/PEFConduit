unit uAdministradoraRodocredFactory;

interface

uses uAdministradoraAbstract;

type
   TAdministradoraRodocredFactory = class( TAdministradoraAbstract )
   private
      constructor Create;
   public
      class function GetVersao( versao : integer  ) : TAdministradoraAbstract;
   end;

implementation

uses uAdministradoraRodocredVersao001, SysUtils;

{ TAdministradoraRodocredFactory }

constructor TAdministradoraRodocredFactory.Create;
begin
   raise Exception.create( 'Este método não pode ser chamado, pois esta é uma class factory!' );
end;

class function TAdministradoraRodocredFactory.GetVersao(
  versao: integer): TAdministradoraAbstract;
begin
   if versao = 100 then
      result := TAdministradoraRodocredVersao001.Create
   else
      raise exception.create('Versao não suportada pela rodocred');

end;

end.
