unit undd_can_ret_v2_00;

interface

uses classes, undd_base;

type
  TNDD_can_ret_1200 =  class(TNDD)
  private
    Fndot: string;
    Fndot_dv: string;
  public
    constructor create;
  published
     property ndot :string read Fndot write Fndot;
     property ndot_dv : string read Fndot_dv write Fndot_dv;
  end;

  TNDD_can_ret_1100 =  class(TNDD)
  private
    Fciot: string;
    FCiot_dv: string;
  public
    constructor create;
  published
     property ciot :string read Fciot write Fciot;
     property ciot_dv : string read FCiot_dv write FCiot_dv;
  end;

  TNDD_can_ret_1000 =  class(TNDD)
  private
    FprotocoloCanc: string;
    FdataHora: TDateTime;
    Freg1100: TNDDFilhos;
    Freg1200: TNDDFilhos;
  public
    constructor create;
    destructor Destroy; override;
  published
    function add1100 : TNDD_can_ret_1100;
    function add1200 : TNDD_can_ret_1200;
    property dataHora : TDateTime read FdataHora write FdataHora;
    property protocoloCanc : string read FprotocoloCanc write FprotocoloCanc;
    property reg1100 : TNDDFilhos read Freg1100 write Freg1100;
    property reg1200 : TNDDFilhos read Freg1200 write Freg1200;
  end;

  TNDD_can_ret_0100 =  class(TNDD)
  private
    FDescricao: string;
    Fcategoria: string;
    Fcodigo: string;
    FObservacao: string;
  public
    constructor create;
  published
    property categoria : string read Fcategoria write Fcategoria;
    property codigo : string read Fcodigo write Fcodigo;
    property descricao : string read FDescricao write Fdescricao;
    property Observacao : string read FObservacao write FObservacao;
  end;


  TNDD_can_ret_0000 =  class(TNDD)
  private
    FResponseCodeMessage: string;
    FResposeCode: string;
    Freg0100: TNDDFilhos;
    Freg1000: TNDDFilhos;
  public
    constructor create;
    destructor destroy; override;
  published
    function add0100 : TNDD_can_ret_0100;
    function add1000 : TNDD_can_ret_1000;
    property ResposeCode : string read FResposeCode write FResposeCode;
    property ResponseCodeMessage : string read FResponseCodeMessage write FResponseCodeMessage;
    property reg0100 : TNDDFilhos read Freg0100 write Freg0100;
    property reg1000 : TNDDFilhos read Freg1000 write Freg1000;
  end;

implementation




{ TNDD_can_ret_0000 }

function TNDD_can_ret_0000.add0100: TNDD_can_ret_0100;
begin
   result := TNDD_can_ret_0100.create;
   Freg0100.Add( result );
end;

function TNDD_can_ret_0000.add1000: TNDD_can_ret_1000;
begin
   result := TNDD_can_ret_1000.create;
   Freg1000.Add( result );
end;

constructor TNDD_can_ret_0000.create;
begin
  Fp00_id := '0000';
  Freg0100 := TNDDFilhos.Create; {#T495}
  Freg1000 := TNDDFilhos.Create;
end;

destructor TNDD_can_ret_0000.destroy;
begin
   reg0100.free;
   reg1000.free;
   inherited;
end;

{ TNDD_can_ret_0100 }

constructor TNDD_can_ret_0100.create;
begin
  Fp00_id := '0100';
end;

{ TNDD_can_ret_1000 }

function TNDD_can_ret_1000.add1100: TNDD_can_ret_1100;
begin
   result := TNDD_can_ret_1100.create;
   Freg1100.Add( result );
end;

function TNDD_can_ret_1000.add1200: TNDD_can_ret_1200;
begin
   result := TNDD_can_ret_1200.create;
   Freg1200.Add( result );
end;

constructor TNDD_can_ret_1000.create;
begin
   Fp00_id := '1000';
   Freg1100 := TNDDFilhos.Create;
   Freg1200 := TNDDFilhos.Create;
end;

destructor TNDD_can_ret_1000.Destroy;
begin
  Freg1100.free;
  Freg1200.Free;
  inherited;
end;

{ TNDD_can_ret_1100 }

constructor TNDD_can_ret_1100.create;
begin
   Fp00_id := '1100';
end;

{ TNDD_can_ret_1200 }

constructor TNDD_can_ret_1200.create;
begin
   Fp00_id := '1200';
end;

end.
