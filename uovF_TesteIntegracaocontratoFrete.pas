unit uovF_TesteIntegracaocontratoFrete;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, FMTBcd, DB,
  SqlExpr;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    ovRG_Metodo: TRadioGroup;
    ovRG_Operadora: TRadioGroup;
    Button2: TButton;
    Label6: TLabel;
    edt_filial: TEdit;
    edtSerie: TEdit;
    edt_Ctrc: TEdit;
    Button3: TButton;
    ovM_log: TMemo;
    Button4: TButton;
    ovLB_TH: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ovLB_THDblClick(Sender: TObject);
  private
    procedure log(tipo,msg: string);
    procedure FimThread(Sender: TObject);
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses uT5Funcoes, uTranspPEF, uTranspPEFThreaded;

{$R *.dfm}


procedure TForm2.Button1Click(Sender: TObject);
begin
   uTranspPEF.ExecutaIntegracao_v2( log, GetMasterConnection, '76652841000145' );
end;

procedure TForm2.Button2Click(Sender: TObject);
var
  contrato : variant;
begin
    contrato := fRetornaValor( GetMasterConnection,
                               'SELECT CNHCF_ID '+
                               'FROM CONHECIMENTOCONTRATOFRETE '+
                               'WHERE FLL_CODIGO = '+( edt_filial.Text )+
                               '  AND CNH_SERIE = '+quotedStr( edtSerie.Text )+
                               '  AND CNH_CONHECIMENTO = '+( edt_Ctrc.Text )
    );
//    uTranspPEF.IntegraContrato( contrato, ('PACCO')[ovRG_Metodo.ItemIndex+1], ovRG_Operadora.ItemIndex+1, 100,
//                                Edit5.Text, Edit1.Text, StrToInt(Edit2.text), StrToFloat(Edit3.text), StrToFloat(Edit4.text)  );
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
//   uTranspPEF_v1.ExecutaIntegracao;
end;
procedure TForm2.log( tipo, msg : string);
begin
  ovM_log.Lines.Add( tipo + ' - '+msg );
end;


procedure TForm2.FimThread(Sender: TObject);
var
  i : Integer;
begin
  i := ovLB_TH.Items.IndexOfObject(  sender );
  ovLB_TH.Items.Delete( i );
end;

procedure TForm2.Button4Click(Sender: TObject);
var
  t : TGerenciador;
begin
  t := TGerenciador.create(  GetMasterConnection );
  t.OnTerminate := FimThread;
//  t.SendLog := Self.log;
  ovLB_TH.AddItem( IntToStr(t.Handle), t );
  t.Resume;
end;

procedure TForm2.ovLB_THDblClick(Sender: TObject);
var
  t : TGerenciador;
begin
  t := TGerenciador( ovLB_TH.Items.Objects[ovLB_TH.ItemIndex ]);
  t.Terminate;
end;

end.
