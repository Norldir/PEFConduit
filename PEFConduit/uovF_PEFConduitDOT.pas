unit uovF_PEFConduitDOT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, frxClass, frxExportPDF, uIntegracaoContratofreteBean,
  frxDesgn, frxGZip, frxRich, frxBarcode, frxChart;

type
  TovF_PEFConduitDOT = class(TForm)
    ovM_Variaveis: TMemo;
    frxDesigner1: TfrxDesigner;
    frxGZipCompressor1: TfrxGZipCompressor;
    frxPDFExport2: TfrxPDFExport;
    frxChartObject1: TfrxChartObject;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxRichObject1: TfrxRichObject;
    oFRX_DOT: TfrxReport;
    procedure oFRX_DOTGetValue(const VarName: String; var Value: Variant);
  private
    FBEAN: TBeanContrato;
    procedure SetBEAN(const Value: TBeanContrato);
    { Private declarations }
  public
    function processaDOT(diretorio : string; var msg : string ) : boolean;
    property BEAN : TBeanContrato read FBEAN write SetBEAN;
  end;

var
  ovF_PEFConduitDOT: TovF_PEFConduitDOT;

implementation

uses IntfInfo, TypInfo, Contnrs, frxPrinter, Printers;

{$R *.dfm}
function GetObjectPropValue(Instance: TObject; PropInfo: PPropInfo): variant;
var
 I: LongInt;
 E: Extended;
 I64: Int64;
 DT: TDateTime;
 fs  : TFormatSettings;
begin
  fs.DecimalSeparator := '.';
  fs.DateSeparator    := '/';
  fs.LongDateFormat   := 'dd/mm/yyyy';
  fs.LongTimeFormat   := 'hh:nn:ss';
  fs.ShortDateFormat  := 'dd/mm/yyyy';
  fs.ShortTimeFormat  := 'h:n';
  case (PropInfo.PropType)^.Kind of
    tkInteger:
      begin
        I := GetOrdProp(Instance, PropInfo);
        Result := I;
      end;
    tkFloat:
      begin
        E := GetFloatProp(Instance, PropInfo);
        if PropInfo.PropType^ = TypeInfo(TDateTime) then
        begin
          DT := E;
          Result := DT;
        end
        else
          Result := E;
      end;
    tkWString:
      Result := GetWideStrProp(Instance, PropInfo);
    tkString,
    tkLString:
    begin
      Result := GetStrProp(Instance, PropInfo);
      Result := StringReplace( result, #10, ' ', [rfReplaceAll]);
      Result := StringReplace( result, #13, ' ', [rfReplaceAll]);
      Result := StringReplace( result, '|', ' ', [rfReplaceAll]);
    end;
    tkInt64:
      begin
        I64 := GetInt64Prop(Instance, PropInfo);
        Result := I64;
      end;
    tkEnumeration:
      begin
        Result := GetEnumProp(Instance, PropInfo);
        if PropInfo.PropType^ = TypeInfo(System.Boolean) then
          Result := Lowercase(Result);
      end;
    tkChar:
      begin
        I := GetOrdProp(Instance, PropInfo);
        Result :=  wideString( Char(I) );
      end;
    tkWChar:
      begin
        I := GetOrdProp(Instance, PropInfo);
        Result :=  wideString( WideChar(I) );
      end;
    tkClass:
      ;
    tkSet,
    tkMethod,

    tkArray,
    tkRecord,
    tkInterface,


    tkDynArray,
    tkVariant:
      raise exception.Create( 'classe invalida '+(PropInfo.PropType)^.Name );
  end;
end;

function GetDe_Para : TStringList;
begin
  result := TStringList.Create;

  Result.Values['FLL_DESCRICAO'] := '';
  Result.Values['ENDERECO'] := '';
  Result.Values['CIDADEFILIAL'] := 'codigo_filial';
  Result.Values['FLL_CEP'] := '';
  Result.Values['FLL_TELEFONE'] := '';
  Result.Values['FLL_FAX'] := '';
  Result.Values['FLL_CNPJ'] := '';
  Result.Values['FLL_INSCRICAOESTADUAL'] := '';
  Result.Values['MTR_NOME'] := 'motorista.nome';
  Result.Values['PRP_NOME'] := 'contratado.nome_contratado';
  Result.Values['MTR_CPF'] := 'motorista.cpf';
  Result.Values['PRP_ENDERECO'] := 'contratado.endereco';
  Result.Values['PRP_BAIRRO'] := 'contratado.bairro';
  Result.Values['MTR_CIDADE_UF'] := 'motorista.uf';
  Result.Values['CMH_PLACA'] := 'veiculo.placa';
  Result.Values['CMH_PLACACARRETA'] := 'veiculo.carretas[0].placa';
  Result.Values['CMH_PLACACARRETA2'] := 'veiculo.carretas[1].placa';
  Result.Values['CMH_PLACACARRETA3'] := 'veiculo.carretas[2].placa';
  Result.Values['PRP_CEP'] := 'contratado.cep';
  Result.Values['PRP_CNPJ_CPF'] := 'contratado.contratado_cnpj_cpf';
  Result.Values['PRP_RNTRC'] := 'contratado.rntrc_codigo';
  Result.Values['CCFCF_NUMEROCARTAO'] := 'numeroCartaoFrete';
  Result.Values['CAPF_NOMEAPRESENTACAO'] := '';
  Result.Values['CNHCF_CIOT'] := 'NumeroCIOT';
  Result.Values['CNH_CONHECIMENTO'] := 'documento';
  Result.Values['CNH_VALORFRETEMOTORISTA'] := 'valorFreteMotorista';
  Result.Values['CNH_VALORTOTALFRETEMOTORISTA'] := 'valorTotalMotorista';
  Result.Values['CNH_VALORINSS'] := 'valorINSS';
  Result.Values['CNH_VALORSEST'] := 'valorSEST';
  Result.Values['CNH_VALORSENAT'] := 'valorSENAT';
  Result.Values['SESTSENAT'] := '[<valorSENAT>+<valorSEST>]';
  Result.Values['CNH_IMPOSTORENDA'] := 'valorIRRF';
  Result.Values['CNH_NOTAFISCAL'] := '';
  Result.Values['CNH_PESOSAIDA'] := 'quantidade';
  Result.Values['CNH_DATASAIDA'] := 'datasaida';
  Result.Values['CNH_LOCALCOLETA'] := '';
  Result.Values['CNH_LOCALENTREGA'] := '';
  Result.Values['CNH_VALORADIANTAMENTO'] := 'valorAdiantamento';
  Result.Values['CNH_VALORINSS'] := 'valorINSS';
  Result.Values['CNH_VALORNOTAFISCAL'] := 'valorNotaFiscal';
  Result.Values['DATACHEGADA'] := '';
  Result.Values['CLO_RAZAOSOCIAL'] := '';
  Result.Values['CLD_RAZAOSOCIAL'] := '';
  Result.Values['CLO_CNPJ_CPF'] := '';
  Result.Values['CLD_CNPJ_CPF'] := '';
  Result.Values['CLO_ENDERECO'] := '';
  Result.Values['CLO_BAIRRO'] := '';
  Result.Values['CLO_CIDADE_UF'] := '';
  Result.Values['CLO_CEP'] := '';
  Result.Values['CLD_ENDERECO'] := '';
  Result.Values['CLD_BAIRRO'] := '';
  Result.Values['CLD_CIDADE_UF'] := '';
  Result.Values['CLD_CEP'] := '';
  Result.Values['CNH_CONHECIMENTO'] := '';
  Result.Values['CNH_NOTAFISCAL'] := '';
  Result.Values['CNH_PERCENTUALTOLERANCIA'] := '';
  Result.Values['tolerancia'] := '';
  Result.Values['PRP_CNPJ_CPF'] := '';
  Result.Values['FLL_CNPJ'] := '';
  Result.Values['CNH_DATAEMISSAO'] := '';
  Result.Values['USR_NOME'] := '';
  Result.Values['CNHCFR_DESCRICAO'] := '';
  Result.Values['TICKET'] := '';
end;

function GetValue( Bean : TObject; field : string ) : variant;
var
  PropList: PPropList;
  Count, i: Integer;
  Kind: TTypeKind;
  Obj : TObject;
  objList : TObjectList;
  classe : string;
  indexField, nextField : string;
  indexPosition : Integer;
begin
   try
      Count := GetPropList(Bean.ClassInfo, tkProperties, nil);
      GetMem(PropList, Count * SizeOf(PPropInfo));
      try
        if Pos('.', field) > 0 then
        begin
           nextField := Copy( field, Pos('.', field)+1, 1000);
           field     := Copy( field, 1, Pos('.', field)-1);
        end else
           nextField :='';

        if Pos('[', field) > 0 then
        begin
           indexField := Copy( field,
                               Pos('[', field)+1,
                               Pos(']', field) - Pos('[', field)-1 );
           field      := Copy( field, 1, Pos('[', field)-1);
           indexPosition := StrToInt( indexField );
        end
        else
          indexPosition := -1;

        GetPropList(bean.ClassInfo, tkProperties, PropList, false);
        for I := 0 to Count - 1 do
        begin
          Kind := (PropList[I].PropType)^.Kind;
          classe := (PropList[I].PropType)^.Name;
          if (Kind = tkClass) and (uppercase(PropList[I].Name) = uppercase(field)) then
          begin
             Obj := GetObjectProp(bean, PropList[I]);
             if assigned(obj) then
             begin
                if (obj is TObjectList) then
                begin
                   objList := (obj as TObjectList);
                   if indexPosition = -1 then
                   begin
                      if nextField = 'count' then
                        result := objList.count
                      else
                         result := GetValue( objList, nextField );
                   end
                   else
                   if (indexPosition < objList.Count) then
                   begin
                     obj     := objList[ indexPosition ];
                     result := GetValue( Obj, nextField );
                   end else
                     result := null;
                end else if (obj is TObject) then
                begin
                   Obj := TObject( Obj );
                   result := GetValue( Obj, nextField);
                end;
             end;
             Break;
          end
          else if (uppercase(PropList[I].Name) = uppercase(field)) then
          begin
              result := GetObjectPropValue(bean, PropList[I]);
              Break;
          end;
        end;
      finally
        FreeMem(PropList, Count * SizeOf(PPropInfo));
      end;
   except
      on e:exception do
      begin
         raise Exception.Create( e.Message+' '+classe );

      end;
   end;
end;

procedure TovF_PEFConduitDOT.oFRX_DOTGetValue(const VarName: String;
  var Value: Variant);
begin
   try
      Value := GetValue(BEAN, VarName);
      if VarIsEmpty(Value) then
        value := null;
   except
     on e:exception do
     begin
        showmessage( varName+' - '+e.message);
        value := 0;
     end;
   end;
end;

procedure TovF_PEFConduitDOT.SetBEAN(const Value: TBeanContrato);

   procedure GetVariaveis( Bean : TObject; Pai : string);
   var
     PropList: PPropList;
     Count, i: Integer;
     Kind: TTypeKind;
     Obj : TObject;
     objList : TObjectList;
     classe : string;
     Field : string;
   begin
      try
         Count := GetPropList(Bean.ClassInfo, tkProperties, nil);
         GetMem(PropList, Count * SizeOf(PPropInfo));
         try
           GetPropList(bean.ClassInfo, tkProperties, PropList, false);
           for I := 0 to Count - 1 do
           begin
             Kind := (PropList[I].PropType)^.Kind;
             classe := (PropList[I].PropType)^.Name;
             Field  := PropList[I].Name;
             if (Kind = tkClass)  then
             begin
                Obj := GetObjectProp(bean, PropList[I]);
                if assigned(obj) then
                begin
                   if (obj is TObjectList) then
                   begin
                      objList := (obj as TObjectList);
                      if ( objList.Count > 0 ) then
                      begin
                        if oFRX_DOT.Variables.IndexOf( pai+field ) = -1 then
                           oFRX_DOT.Variables.AddVariable( 'BEAN', pai+field+'.count', objList.Count );
                        obj     := objList[ 0 ];
                        GetVariaveis( Obj, pai+Field+'[0].' );
                      end;
                   end else if (obj is TObject) then
                   begin
                      Obj := TObject( Obj );
                      GetVariaveis( Obj, pai+Field+'.' );
                   end;
                end;
             end
             else
             begin
                if oFRX_DOT.Variables.IndexOf( pai+field ) = -1 then
                   oFRX_DOT.Variables.AddVariable( 'BEAN', pai+field, GetObjectPropValue(bean, PropList[I]) );
             end;
           end;
         finally
           FreeMem(PropList, Count * SizeOf(PPropInfo));
         end;
      except
         on e:exception do
         begin
            raise Exception.Create( e.Message+' '+classe );

         end;
      end;
   end;
begin
  FBEAN := Value;
  try
     if FileExists( ExtractFilePath( Application.ExeName )+'dot.frx'  ) then
        oFRX_DOT.LoadFromFile( ExtractFilePath( Application.ExeName)+'dot.frx'  );
     oFRX_DOT.Variables.DeleteCategory('BEAN');
     oFRX_DOT.Variables.Add.Name:= ' BEAN';
     GetVariaveis( FBEAN, '' );
  except

  end;
end;

function TovF_PEFConduitDOT.processaDOT(diretorio : string; var msg : string ) : boolean;
begin
  try
     oFRX_DOT.ShowProgress            := False;
     if      (upperCase(bean.DadosImpressaoDOT.DestinoDOT) = 'PDF') or (upperCase(bean.DadosImpressaoDOT.DestinoDOT) = 'AMBOS') then
     begin
        frxPDFExport2.FileName := diretorio;
        oFRX_DOT.PrepareReport(true);
        oFRX_DOT.Export( frxPDFExport2 );
     end;
     if (upperCase(bean.DadosImpressaoDOT.DestinoDOT) = 'IMPRESSORA')  or (upperCase(bean.DadosImpressaoDOT.DestinoDOT) = 'AMBOS') then
     begin
        if (bean.DadosImpressaoDOT.LocalDestino<>'') and (frxPrinters.IndexOf( bean.DadosImpressaoDOT.LocalDestino ) = -1) then
        begin
           raise exception.Create('A impressora '+bean.DadosImpressaoDOT.LocalDestino+' não pode ser usada, pois não esta instalada na máquina! '+
                                  'Impressoras disponiveis [frxPrinters.Printers]: '+StringReplace( StringReplace( frxPrinters.Printers.Text, #13, '', [rfReplaceAll]), #10, ',', [rfReplaceAll])+'. '+
                                  'Impressoras disponiveis [Printer.printers] : '+StringReplace( StringReplace( Printer.Printers.Text, #13, '', [rfReplaceAll]), #10, ',', [rfReplaceAll]));
        end
        else
        begin
           if Trim( bean.DadosImpressaoDOT.LocalDestino) <>'' then
              oFRX_DOT.PrintOptions.Printer := bean.DadosImpressaoDOT.LocalDestino;
           oFRX_DOT.SelectPrinter;
           oFRX_DOT.PrintOptions.ShowDialog := False;
           oFRX_DOT.PrepareReport(true);
           oFRX_DOT.Print;
        end;
     end;
     Result := true;
  except
     on e:exception do
     begin
        msg := e.message;
        Result := False;
     end;
  end;

end;

end.
