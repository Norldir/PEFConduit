unit uovF_PEFConduitDOTTeste;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TovF_PEFConduitDOTTeste = class(TForm)
    ovB_ShowDOT: TButton;
    ovL_Contrato: TLabel;
    ovE_Contrato: TEdit;
    ovSB_Abrir: TSpeedButton;
    oODLG_Abrir: TOpenDialog;
    ovB_Modelar: TButton;
    procedure ovB_ShowDOTClick(Sender: TObject);
    procedure ovSB_AbrirClick(Sender: TObject);
    procedure ovB_ModelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ovF_PEFConduitDOTTeste: TovF_PEFConduitDOTTeste;

implementation

uses uovF_PEFConduitDOT, uPEFLoadTXTBean, uIntegracaoContratofreteBean;

{$R *.dfm}

procedure TovF_PEFConduitDOTTeste.ovB_ShowDOTClick(Sender: TObject);
var
   vlbean : TBeanContrato;
   msg : string;
begin
  vlbean := TBeanContrato.create;
  try
     if uPEFLoadTXTBean.CarregaBeanDoArquivo( vlbean, ovE_Contrato.text, msg ) then
     begin
        with TovF_PEFConduitDOT.Create( self ) do
        try
           if FileExists( ExtractFilePath( Application.ExeName)+'dot.frx'  ) then
              oFRX_DOT.LoadFromFile( ExtractFilePath( Application.ExeName)+'dot.frx'  );
           bean := vlbean;


           processaDOT( ExtractFilePath( Application.exename )+ChangeFileExt( ExtractFileName(ovE_Contrato.text), '.pdf') , msg );

           oFRX_DOT.ShowReport( True );


        finally
           Free;
        end;
     end
     else
       showmessage( msg );
  finally
     vlbean.free;
  end;
end;

procedure TovF_PEFConduitDOTTeste.ovSB_AbrirClick(Sender: TObject);
begin
    if oODLG_Abrir.Execute then
    begin
      ovE_Contrato.text := oODLG_Abrir.FileName;
      ovB_ShowDOT.SetFocus;
    end;
end;

procedure TovF_PEFConduitDOTTeste.ovB_ModelarClick(Sender: TObject);
var
   vlbean : TBeanContrato;
   msg : string;
begin
  vlbean := TBeanContrato.create;
  try
     if uPEFLoadTXTBean.CarregaBeanDoArquivo( vlbean, ovE_Contrato.text, msg ) then
     begin
        with TovF_PEFConduitDOT.Create( self ) do
        try
           if FileExists( ExtractFilePath( Application.ExeName)+'dot.frx'  ) then
              oFRX_DOT.LoadFromFile( ExtractFilePath( Application.ExeName)+'dot.frx'  );
           bean := vlbean;
           oFRX_DOT.DesignReport;
           oFRX_DOT.SaveToFile( ExtractFilePath( Application.ExeName)+'dot.frx'  );
        finally
           Free;
        end;
     end
     else
       showmessage( msg );
  finally
     vlbean.free;
  end;
end;

end.
