unit uAdministradoraPamcard;

interface

uses uAdministradoraPamcardAbstract;

type
   TAdministradoraPamcard = class( TAdministradoraPamcardAbstract )
   private
      CodigoAdministradora : integer;
   public
      function setCodigoAdministradora( const value : integer ) : boolean; override;
      function getCodigoAdministradora : integer; override;

      destructor Destroy; override;
      constructor Create;
   end;

implementation


{ TAdministradoraPamcard }

constructor TAdministradoraPamcard.Create;
begin
   inherited Create;
end;

destructor TAdministradoraPamcard.Destroy;
begin
   inherited Destroy;
end;

function TAdministradoraPamcard.getCodigoAdministradora : integer;
begin
   result := self.CodigoAdministradora;
end;

function TAdministradoraPamcard.setCodigoAdministradora( const value : integer ) : boolean;
begin
   self.CodigoAdministradora := value;
end;

end.
