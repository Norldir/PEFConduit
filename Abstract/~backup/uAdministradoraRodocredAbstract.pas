unit uAdministradoraRodocredAbstract;

interface

uses uAdministradoraAbstract;

type
   TAdministradoraRodocredAbstract = class( TObject )
   public
      function setCodigoAdministradora( const value : integer ) : boolean; virtual;
      function getCodigoAdministradora : integer; virtual;
      
      function insereContratoFrete : boolean; virtual;
      function insereFavorecido : boolean; virtual;

      destructor Destroy; override;
      constructor Create;
   end;

implementation

{ TAdministradoraRodocredAbstract }

constructor TAdministradoraRodocredAbstract.Create;
begin
   inherited Create;
end;

destructor TAdministradoraRodocredAbstract.Destroy;
begin
   inherited Destroy;
end;

function TAdministradoraRodocredAbstract.getCodigoAdministradora: integer;
begin result := 0; end;

function TAdministradoraRodocredAbstract.insereContratoFrete: boolean;
begin result := false end;

function TAdministradoraRodocredAbstract.insereFavorecido: boolean;
begin result := false; end;

function TAdministradoraRodocredAbstract.setCodigoAdministradora(const value: integer): boolean;
begin result := false; end;

end.
