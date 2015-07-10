unit uovF_AdministradoraExecute;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TovF_AdministradoraExecute = class(TForm)
    ovB_Executa: TButton;
    procedure ovB_ExecutaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ovF_AdministradoraExecute: TovF_AdministradoraExecute;

implementation

uses uAdministradoraFactory;

{$R *.dfm}

procedure TovF_AdministradoraExecute.ovB_ExecutaClick(Sender: TObject);

begin
   try
      with ( TAdministradoraFactory.GetAdministradora( 1, 100 ) ) do try
         //insereFavorecido;
      finally
         Free;
      end;
   except
      on e:Exception do
      begin
         ShowMessage( e.Message );
      end;
   end;
end;

initialization
   RegisterClass( TovF_AdministradoraExecute );
finalization
   UnRegisterClass( TovF_AdministradoraExecute );

end.
