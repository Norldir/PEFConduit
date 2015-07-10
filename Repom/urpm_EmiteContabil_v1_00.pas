unit urpm_EmiteContabil_v1_00;

interface
uses
   Classes, InvokeRegistry;

type
  tprocesso_EmiteContabil = class( TRemotable )
  private
    FstrDataMovimento: string;
  public
     constructor create; override;
     destructor destroy;
  published
     property strDataMovimento : string read FstrDataMovimento write FstrDataMovimento;
  end;

implementation


{ tprocesso_EmiteContabil }

constructor tprocesso_EmiteContabil.create;
begin
  inherited;

end;

destructor tprocesso_EmiteContabil.destroy;
begin

end;

end.
