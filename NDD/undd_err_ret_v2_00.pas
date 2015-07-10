unit undd_err_ret_v2_00;

interface
uses classes, undd_base;
type
  TNDD_err_1000 = class(TNDD)
  private
    Fmensagem: string;
    Fcodigo: string;
  public
    constructor create;
  published
    property codigo : string read Fcodigo write Fcodigo;
    property mensagem : string read Fmensagem write Fmensagem;
  end;

  TNDD_err_0000 = class(TNDD)
  private
    Freg1000: TNDDFilhos;
    FArquivo: string;
    FdataHora: TDateTime;
  public
    constructor create;
    destructor destroy; override;
  published
    function add1000 : TNDD_err_1000;
    property Arquivo : string read FArquivo write FArquivo;
    property dataHora : TDateTime read FdataHora write FdataHora;
    property reg1000 : TNDDFilhos read Freg1000 write Freg1000;
  end;

implementation

{ TNDD_0000 }

function TNDD_err_0000.add1000: TNDD_err_1000;
begin
   Result := TNDD_err_1000.create;
   Freg1000.Add( Result );
end;

constructor TNDD_err_0000.create;
begin
  Fp00_id := '0000';
  Freg1000 := TNDDFilhos.Create;
end;

destructor TNDD_err_0000.destroy;
begin
  Freg1000.Free;
  inherited;
end;

{ TNDD_err_1000 }

constructor TNDD_err_1000.create;
begin
  Fp00_id := '1000';
end;

end.
