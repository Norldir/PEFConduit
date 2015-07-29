unit uAdministradoraPamcardAbstract;

interface

uses Classes, Dialogs, uAdministradoraAbstract;

type
   TAdministradoraPamcardAbstract = class( TAdministradoraAbstract )
   public
      function setCodigoAdministradora( const value : integer ) : boolean; virtual;
      function getCodigoAdministradora : integer; virtual;
      
      function insereContratoFrete : boolean; virtual;
      function insereFavorecido : boolean; virtual;

      destructor Destroy; override;
      constructor Create( owner : TComponent );
   end;

implementation
                                      
{ TAdministradoraPamcardAbstract }

constructor TAdministradoraPamcardAbstract.Create( owner : TComponent );
begin
   inherited Create( owner );
end;

destructor TAdministradoraPamcardAbstract.Destroy;
begin
   ShowMessage('TAdministradoraPamcardAbstract.Destroy');
   
   inherited Destroy;
end;

function TAdministradoraPamcardAbstract.getCodigoAdministradora: integer;
begin result := 0 end;

function TAdministradoraPamcardAbstract.insereContratoFrete: boolean;
begin result := false end;

function TAdministradoraPamcardAbstract.insereFavorecido: boolean;
begin
   result := false
end;

function TAdministradoraPamcardAbstract.setCodigoAdministradora(const value: integer): boolean;
begin result := false; end;

end.
