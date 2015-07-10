object ovF_PEFConduitDOT: TovF_PEFConduitDOT
  Left = 252
  Top = 171
  Width = 295
  Height = 210
  Caption = 'ovF_PEFConduitDOT'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ovM_Variaveis: TMemo
    Left = 88
    Top = 0
    Width = 185
    Height = 177
    Lines.Strings = (
      'ovM_Variaveis')
    TabOrder = 0
  end
  object oFRX_DOT: TfrxReport
    Version = '3.22'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = 41058.504523333300000000
    ReportOptions.LastChange = 41058.741259166700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  MEMO117.text := get('#39'NotasFiscais['#39'+inttoStr(<Line>-1)+'#39'].Nume' +
        'roNota'#39') ;'
      'end;'
      ''
      'procedure MasterData2OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  masterData1.rowcount := <NotasFiscais.count>;'
      '  masterData3.rowcount := <DocumentosEntrega.count>;'
      'end;'
      ''
      'procedure MasterData3OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  memo88.text := get('#39'DocumentosEntrega['#39'+inttoStr(<Line>-1)+'#39'].' +
        'Codigo'#39');'
      
        '  memo89.text := get('#39'DocumentosEntrega['#39'+inttoStr(<Line>-1)+'#39'].' +
        'documento'#39');'
      
        '  memo90.text := get('#39'DocumentosEntrega['#39'+inttoStr(<Line>-1)+'#39'].' +
        'complemento'#39');'
      'end;'
      ''
      'begin'
      '   try'
      '     Picture1.picture.loadfromfile( <cnpj_filial>+'#39'.jpg'#39' );'
      '   except'
      ''
      '   end'
      'end.')
    OnGetValue = oFRX_DOTGetValue
    Left = 32
    Datasets = <>
    Variables = <
      item
        Name = ' BEAN'
        Value = Null
      end
      item
        Name = 'Name'
        Value = Null
      end
      item
        Name = 'Tag'
        Value = '0'
      end
      item
        Name = 'DadosImpressaoDOT.Name'
        Value = Null
      end
      item
        Name = 'DadosImpressaoDOT.Tag'
        Value = '0'
      end
      item
        Name = 'DadosImpressaoDOT.NomeFilial'
        Value = Null
      end
      item
        Name = 'DadosImpressaoDOT.EnderecoFilial'
        Value = Null
      end
      item
        Name = 'DadosImpressaoDOT.CidadeFilial'
        Value = Null
      end
      item
        Name = 'DadosImpressaoDOT.Bairro'
        Value = Null
      end
      item
        Name = 'DadosImpressaoDOT.CEP'
        Value = Null
      end
      item
        Name = 'DadosImpressaoDOT.InscricaoEstadual'
        Value = Null
      end
      item
        Name = 'DadosImpressaoDOT.Telefone'
        Value = Null
      end
      item
        Name = 'DadosImpressaoDOT.FAX'
        Value = Null
      end
      item
        Name = 'DadosImpressaoDOT.DestinoDOT'
        Value = Null
      end
      item
        Name = 'DadosImpressaoDOT.LocalDestino'
        Value = Null
      end
      item
        Name = 'cnpj_matriz'
        Value = '74092487000116'
      end
      item
        Name = 'uf_matriz'
        Value = 'PR'
      end
      item
        Name = 'cidadeMatriz'
        Value = 'LONDRINA'
      end
      item
        Name = 'cnpj_filial'
        Value = '74092487000116'
      end
      item
        Name = 'codigo_filial'
        Value = '100'
      end
      item
        Name = 'serie_documento'
        Value = '4'
      end
      item
        Name = 'documento'
        Value = '803'
      end
      item
        Name = 'datasaida'
        Value = '24/05/2012'
      end
      item
        Name = 'quantidade'
        Value = '1'
      end
      item
        Name = 'valorNotaFiscal'
        Value = '1998'
      end
      item
        Name = 'valorSaldo'
        Value = '2855,79'
      end
      item
        Name = 'valorAdiantamento'
        Value = '3490,41'
      end
      item
        Name = 'valorTotalMotorista'
        Value = '6346,2'
      end
      item
        Name = 'valorFreteMotorista'
        Value = '0,51'
      end
      item
        Name = 'valorDocumento'
        Value = '9000'
      end
      item
        Name = 'pesoSaida'
        Value = '12525'
      end
      item
        Name = 'descricaoCarga'
        Value = 'DEF. AGRICOLAS'
      end
      item
        Name = 'contratado.Name'
        Value = Null
      end
      item
        Name = 'contratado.Tag'
        Value = '0'
      end
      item
        Name = 'contratado.contratado_cnpj_cpf'
        Value = '27269448841'
      end
      item
        Name = 'contratado.pessoa_tipo'
        Value = 'J'
      end
      item
        Name = 'contratado.nome_contratado'
        Value = 'ANDRE FERNANDO CARDOSO'
      end
      item
        Name = 'contratado.nome_fantasia'
        Value = 'ANDRE FERNANDO CARDOSO'
      end
      item
        Name = 'contratado.cep'
        Value = '86039090'
      end
      item
        Name = 'contratado.telefone1'
        Value = '4333808080'
      end
      item
        Name = 'contratado.telefone2'
        Value = Null
      end
      item
        Name = 'contratado.celular'
        Value = Null
      end
      item
        Name = 'contratado.email'
        Value = Null
      end
      item
        Name = 'contratado.contato'
        Value = 'ANDRE'
      end
      item
        Name = 'contratado.dependentes'
        Value = Null
      end
      item
        Name = 'contratado.inss_codigo'
        Value = Null
      end
      item
        Name = 'contratado.rntrc_codigo'
        Value = '00169192'
      end
      item
        Name = 'contratado.endereco'
        Value = 'AVENIDA TESTE, 500'
      end
      item
        Name = 'contratado.endereco_complemento'
        Value = Null
      end
      item
        Name = 'contratado.bairro'
        Value = 'NAO INFORMADO'
      end
      item
        Name = 'contratado.cidade'
        Value = 'LONDRINA'
      end
      item
        Name = 'contratado.uf'
        Value = 'PR'
      end
      item
        Name = 'contratado.cidade_ibge'
        Value = '4113700'
      end
      item
        Name = 'valorINSS'
        Value = '0'
      end
      item
        Name = 'BaseINSS'
        Value = '0'
      end
      item
        Name = 'AliquotaINSS'
        Value = '0'
      end
      item
        Name = 'BaseSestSenat'
        Value = '7012,37'
      end
      item
        Name = 'valorSest'
        Value = '21,04'
      end
      item
        Name = 'AliquotaSest'
        Value = '0,3'
      end
      item
        Name = 'valorSenat'
        Value = '14,02'
      end
      item
        Name = 'AliquotaSenat'
        Value = '0,2'
      end
      item
        Name = 'valorIRRF'
        Value = '631,11'
      end
      item
        Name = 'BaseIRRF'
        Value = '18144,84'
      end
      item
        Name = 'AliquotaIRRF'
        Value = '22,5'
      end
      item
        Name = 'cliente_Origem.Name'
        Value = Null
      end
      item
        Name = 'cliente_Origem.Tag'
        Value = '0'
      end
      item
        Name = 'cliente_Origem.cnpj_cpf'
        Value = '47334568915'
      end
      item
        Name = 'cliente_Origem.nome'
        Value = 'BRUNO ANTONIO ZUTTION'
      end
      item
        Name = 'cliente_Origem.endereco'
        Value = 'RODOVIA BR 020 KM 447 RODA VELHA, S/N, 0'
      end
      item
        Name = 'cliente_Origem.complemento'
        Value = 'FAZ BRUNO'
      end
      item
        Name = 'cliente_Origem.bairro'
        Value = 'RURAL'
      end
      item
        Name = 'cliente_Origem.cep'
        Value = '47820000'
      end
      item
        Name = 'cliente_Origem.cidade'
        Value = 'SAO DESIDERIO'
      end
      item
        Name = 'cliente_Origem.ibge'
        Value = '2928901'
      end
      item
        Name = 'cliente_Origem.uf'
        Value = 'BA'
      end
      item
        Name = 'cliente_Destino.Name'
        Value = Null
      end
      item
        Name = 'cliente_Destino.Tag'
        Value = '0'
      end
      item
        Name = 'cliente_Destino.cnpj_cpf'
        Value = '79765269000119'
      end
      item
        Name = 'cliente_Destino.nome'
        Value = 'SOFTCENTER'
      end
      item
        Name = 'cliente_Destino.endereco'
        Value = 'AVENIDA SANTOS DUMONT, 505'
      end
      item
        Name = 'cliente_Destino.complemento'
        Value = 'CONJ. 204'
      end
      item
        Name = 'cliente_Destino.bairro'
        Value = 'TESTE SOFT'
      end
      item
        Name = 'cliente_Destino.cep'
        Value = '86039090'
      end
      item
        Name = 'cliente_Destino.cidade'
        Value = 'LONDRINA'
      end
      item
        Name = 'cliente_Destino.ibge'
        Value = '4113700'
      end
      item
        Name = 'cliente_Destino.uf'
        Value = 'PR'
      end
      item
        Name = 'cliente_Consignatario.Name'
        Value = Null
      end
      item
        Name = 'cliente_Consignatario.Tag'
        Value = '0'
      end
      item
        Name = 'cliente_Consignatario.cnpj_cpf'
        Value = Null
      end
      item
        Name = 'cliente_Consignatario.nome'
        Value = Null
      end
      item
        Name = 'cliente_Consignatario.endereco'
        Value = Null
      end
      item
        Name = 'cliente_Consignatario.complemento'
        Value = Null
      end
      item
        Name = 'cliente_Consignatario.bairro'
        Value = Null
      end
      item
        Name = 'cliente_Consignatario.cep'
        Value = Null
      end
      item
        Name = 'cliente_Consignatario.cidade'
        Value = Null
      end
      item
        Name = 'cliente_Consignatario.ibge'
        Value = Null
      end
      item
        Name = 'cliente_Consignatario.uf'
        Value = Null
      end
      item
        Name = 'veiculo.Name'
        Value = Null
      end
      item
        Name = 'veiculo.Tag'
        Value = '0'
      end
      item
        Name = 'veiculo.contratado_cnpj_cpf'
        Value = '27269448841'
      end
      item
        Name = 'veiculo.placa'
        Value = 'CZC8816'
      end
      item
        Name = 'veiculo.numero_eixos'
        Value = '2'
      end
      item
        Name = 'veiculo.renavam'
        Value = '391894854'
      end
      item
        Name = 'veiculo.rntrc_codigo'
        Value = '00169192'
      end
      item
        Name = 'veiculo.placa_uf'
        Value = 'PR'
      end
      item
        Name = 'veiculo.rntrc_tipo'
        Value = 'T'
      end
      item
        Name = 'veiculo.categoriaveiculo'
        Value = '1'
      end
      item
        Name = 'veiculo.dadosRodocred.Name'
        Value = Null
      end
      item
        Name = 'veiculo.dadosRodocred.Tag'
        Value = '0'
      end
      item
        Name = 'veiculo.dadosRodocred.ModeloVeiculoRodocred'
        Value = Null
      end
      item
        Name = 'veiculo.dadosRodocred.TipoVeiculoRodocred'
        Value = Null
      end
      item
        Name = 'veiculo.dadosRodocred.TipoRodagemRodocred'
        Value = Null
      end
      item
        Name = 'veiculo.dadosRodocred.TipoCombustivelRodocred'
        Value = Null
      end
      item
        Name = 'veiculo.dadosPamcary.Name'
        Value = Null
      end
      item
        Name = 'veiculo.dadosPamcary.Tag'
        Value = '0'
      end
      item
        Name = 'veiculo.dadosPamcary.CaterogiraVeiculoPamcad'
        Value = Null
      end
      item
        Name = 'veiculo.dadosNDD.Name'
        Value = Null
      end
      item
        Name = 'veiculo.dadosNDD.Tag'
        Value = '0'
      end
      item
        Name = 'veiculo.dadosNDD.CategoriaPedagio'
        Value = Null
      end
      item
        Name = 'DadosDeposito.Name'
        Value = Null
      end
      item
        Name = 'DadosDeposito.Tag'
        Value = '0'
      end
      item
        Name = 'DadosDeposito.banco'
        Value = Null
      end
      item
        Name = 'DadosDeposito.agencia'
        Value = Null
      end
      item
        Name = 'DadosDeposito.dvAgendia'
        Value = Null
      end
      item
        Name = 'DadosDeposito.conta'
        Value = Null
      end
      item
        Name = 'DadosDeposito.dvConta'
        Value = Null
      end
      item
        Name = 'numeroCartaoFrete'
        Value = Null
      end
      item
        Name = 'numeroContratoFrete'
        Value = 'R3803'
      end
      item
        Name = 'rota.Name'
        Value = Null
      end
      item
        Name = 'rota.Tag'
        Value = '0'
      end
      item
        Name = 'rota.codigoRota'
        Value = '1'
      end
      item
        Name = 'rota.pontosRota.count'
        Value = '1'
      end
      item
        Name = 'rota.pontosRota[0].Name'
        Value = Null
      end
      item
        Name = 'rota.pontosRota[0].Tag'
        Value = '0'
      end
      item
        Name = 'rota.pontosRota[0].ibge_origem'
        Value = '2928901'
      end
      item
        Name = 'rota.pontosRota[0].uf_origem'
        Value = 'BA'
      end
      item
        Name = 'rota.pontosRota[0].ibge_destino'
        Value = '4113700'
      end
      item
        Name = 'rota.pontosRota[0].uf_destino'
        Value = 'PR'
      end
      item
        Name = 'rota.pontosRota[0].descricao'
        Value = Null
      end
      item
        Name = 'motorista.Name'
        Value = Null
      end
      item
        Name = 'motorista.Tag'
        Value = '0'
      end
      item
        Name = 'motorista.cpf'
        Value = '27269448841'
      end
      item
        Name = 'motorista.nome'
        Value = 'ANDRE FERNANDO CARDOSO'
      end
      item
        Name = 'motorista.cep'
        Value = '86039090'
      end
      item
        Name = 'motorista.telefone'
        Value = '4333707070'
      end
      item
        Name = 'motorista.celular'
        Value = Null
      end
      item
        Name = 'motorista.email'
        Value = Null
      end
      item
        Name = 'motorista.data_nascimento'
        Value = '01/05/1975'
      end
      item
        Name = 'motorista.rg'
        Value = '123'
      end
      item
        Name = 'motorista.Orgao_Expedido'
        Value = 'SSP'
      end
      item
        Name = 'motorista.carteira_habilitacao'
        Value = '02776518745'
      end
      item
        Name = 'motorista.carteira_habilitacao_dt_val'
        Value = '01/02/1990'
      end
      item
        Name = 'motorista.carteira_habilitacao_categoria'
        Value = 'A'
      end
      item
        Name = 'motorista.endereco'
        Value = 'AVENIDA TESTE, 500'
      end
      item
        Name = 'motorista.endereco_complemento'
        Value = Null
      end
      item
        Name = 'motorista.bairro'
        Value = 'JARDIM TESTE'
      end
      item
        Name = 'motorista.cidade'
        Value = 'LONDRINA'
      end
      item
        Name = 'motorista.uf'
        Value = 'PR'
      end
      item
        Name = 'tipoPagamentoContratoFrete'
        Value = '1'
      end
      item
        Name = 'pedagio.Name'
        Value = Null
      end
      item
        Name = 'pedagio.Tag'
        Value = '0'
      end
      item
        Name = 'pedagio.valorPedagio'
        Value = '0'
      end
      item
        Name = 'pedagio.formaPagamentoPedagio'
        Value = 'N'
      end
      item
        Name = 'pedagio.administradorPedagio'
        Value = Null
      end
      item
        Name = 'pedagio.resposavelPagamentoPedagio'
        Value = '0'
      end
      item
        Name = 'pedagio.NumeroCartaoPedagio'
        Value = Null
      end
      item
        Name = 'formaPagamentoDocumento'
        Value = 'F'
      end
      item
        Name = 'observacoes'
        Value = Null
      end
      item
        Name = 'NCM'
        Value = '5201'
      end
      item
        Name = 'Usuario'
        Value = 'ROOT'
      end
      item
        Name = 'ParcelasAdiantamento.count'
        Value = '1'
      end
      item
        Name = 'ParcelasAdiantamento[0].Name'
        Value = Null
      end
      item
        Name = 'ParcelasAdiantamento[0].Tag'
        Value = '0'
      end
      item
        Name = 'ParcelasAdiantamento[0].dias'
        Value = '0'
      end
      item
        Name = 'ParcelasAdiantamento[0].valor'
        Value = '3490,41'
      end
      item
        Name = 'Telefone_empresa'
        Value = '5133442309'
      end
      item
        Name = 'NotasFiscais.count'
        Value = '1'
      end
      item
        Name = 'NotasFiscais[0].Name'
        Value = Null
      end
      item
        Name = 'NotasFiscais[0].Tag'
        Value = '0'
      end
      item
        Name = 'NotasFiscais[0].NumeroNota'
        Value = '1559'
      end
      item
        Name = 'NotasFiscais[0].SerieNota'
        Value = '1'
      end
      item
        Name = 'NotasFiscais[0].modelo'
        Value = '01'
      end
      item
        Name = 'NotasFiscais[0].Cnpj_Remetente'
        Value = '47334568915'
      end
      item
        Name = 'NotasFiscais[0].RazaoSocial_Remetente'
        Value = 'BRUNO ANTONIO ZUTTION'
      end
      item
        Name = 'NotasFiscais[0].Cnpj_Destinatario'
        Value = '79765269000119'
      end
      item
        Name = 'NotasFiscais[0].RazaoSocial_Destinatario'
        Value = 'SOFTCENTER'
      end
      item
        Name = 'TipoTolerancia'
        Value = 'X'
      end
      item
        Name = 'PercentualTolerancia'
        Value = '0'
      end
      item
        Name = 'TipoOperacaoTransporte'
        Value = 'P'
      end
      item
        Name = 'ProprietarioCarga'
        Value = 'D'
      end
      item
        Name = 'NumeroProtocoloProcessamento'
        Value = Null
      end
      item
        Name = 'DataProtocoloProcessamento'
        Value = '25/05/2012 11:46:53'
      end
      item
        Name = 'NumeroViagem'
        Value = Null
      end
      item
        Name = 'NumeroCIOT'
        Value = Null
      end>
    Style = <>
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      LargeDesignHeight = True
      object MasterData2: TfrxMasterData
        Height = 1024.252630000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        OnBeforePrint = 'MasterData2OnBeforePrint'
        RowCount = 1
        object Shape1: TfrxShapeView
          Top = 3.779530000000000000
          Width = 718.110700000000000000
          Height = 128.504020000000000000
          Shape = skRoundRectangle
        end
        object Memo1: TfrxMemoView
          Left = 222.992086930000000000
          Top = 86.929163150000000000
          Width = 106.456761670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TELEFONE:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 328.819110000000000000
          Top = 7.559060000000000000
          Width = 389.291590000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[DadosImpressaoDOT.NomeFilial]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 328.819110000000000000
          Top = 26.456710000000000000
          Width = 389.291590000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '[DadosImpressaoDOT.EnderecoFilial]  CIDADE: [DadosImpressaoDOT.C' +
              'idadeFilial]'
            'CEP:[DadosImpressaoDOT.CEP]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 328.819110000000000000
          Top = 86.929163150000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DadosImpressaoDOT.Telefone]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 468.661720000000000000
          Top = 86.929190000000000000
          Width = 98.897701670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'FAX:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 566.929500000000000000
          Top = 86.929190000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DadosImpressaoDOT.FAX]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 222.992270000000000000
          Top = 68.031500940000000000
          Width = 106.456761670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 328.819110000000000000
          Top = 68.031500940000000000
          Width = 136.063080000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[cnpj_filial]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 468.661720000000000000
          Top = 68.031540000000000000
          Width = 98.897701670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Insc. Estadual:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 566.929500000000000000
          Top = 68.031540000000000000
          Width = 128.504020000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[DadosImpressaoDOT.InscricaoEstadual]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 219.212740000000000000
          Top = 3.779530000000000000
          Height = 105.826840000000000000
          Frame.Typ = [ftLeft]
        end
        object Memo11: TfrxMemoView
          Left = 222.992270000000000000
          Top = 7.559060000000000000
          Width = 106.456761670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CONTRATANTE:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 222.992270000000000000
          Top = 26.456710000000000000
          Width = 106.456761670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'ENDERE'#195#8225'O:')
          ParentFont = False
        end
        object Shape3: TfrxShapeView
          Top = 136.063080000000000000
          Width = 718.110700000000000000
          Height = 105.826840000000000000
          Shape = skRoundRectangle
        end
        object Memo14: TfrxMemoView
          Left = 3.779530000000000000
          Top = 147.401670000000000000
          Width = 711.181561670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'DADOS DO MOTORISTA / PROPRIET'#195#129'RIO DO CAMINH'#195#402'O')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Top = 166.299320000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo13: TfrxMemoView
          Left = 3.779530000000000000
          Top = 170.078850000000000000
          Width = 106.456761670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CONTRATADO:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 188.976500000000000000
          Width = 106.456761670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'VE'#195#141'CULO:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 3.779530000000000000
          Top = 207.874150000000000000
          Width = 106.456761670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'ENDERE'#195#8225'O:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 3.779530000000000000
          Top = 226.771800000000000000
          Width = 106.456761670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'MOTORISTA:')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 215.433210000000000000
          Top = 188.976500000000000000
          Width = 76.220521670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'REBOQUES:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 532.913730000000000000
          Top = 170.078850000000000000
          Width = 64.881931670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CNPJ/CPF:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 532.913730000000000000
          Top = 188.976500000000000000
          Width = 64.881931670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'RNTR:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 532.913730000000000000
          Top = 207.874150000000000000
          Width = 64.881931670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CEP:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 532.913730000000000000
          Top = 226.771800000000000000
          Width = 64.881931670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CART'#195#402'O:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 393.071120000000000000
          Top = 226.771800000000000000
          Width = 34.645691670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CPF:')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 109.606370000000000000
          Top = 226.771800000000000000
          Width = 283.464750000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[motorista.nome]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 109.606370000000000000
          Top = 170.078850000000000000
          Width = 423.307360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[contratado.nome_contratado]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 427.086890000000000000
          Top = 226.771800000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[motorista.cpf]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 109.606370000000000000
          Top = 207.874150000000000000
          Width = 423.307360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              '[contratado.endereco]   -   [contratado.bairro]   -   [contratad' +
              'o.uf]'
            '  ')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 109.606370000000000000
          Top = 188.976500000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[veiculo.placa]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 291.023810000000000000
          Top = 188.976500000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[veiculo.carretas[0].placa]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 351.496290000000000000
          Top = 188.976500000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[veiculo.carretas[1].placa]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 597.165740000000000000
          Top = 207.874150000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[contratado.cep]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 597.165740000000000000
          Top = 170.078850000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[contratado.contratado_cnpj_cpf]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 597.165740000000000000
          Top = 188.976500000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[contratado.rntrc_codigo]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 597.165740000000000000
          Top = 226.771800000000000000
          Width = 120.944960000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[numeroCartaoFrete]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 109.606370000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo35: TfrxMemoView
          Left = 3.779530000000000000
          Top = 113.385900000000000000
          Width = 711.181561670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'CONTRATO DE FRETE')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Top = 245.669450000000000000
          Width = 718.110700000000000000
          Height = 177.637910000000000000
          Shape = skRoundRectangle
        end
        object Memo36: TfrxMemoView
          Left = 3.779530000000000000
          Top = 253.228510000000000000
          Width = 529.764121670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'DADOS DO FRETE')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Top = 272.126160000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo37: TfrxMemoView
          Left = 3.779530000000000000
          Top = 275.905690000000000000
          Width = 106.456761670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'ADMINISTRADORA:')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 109.606370000000000000
          Top = 275.905690000000000000
          Width = 90.708720000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 200.315090000000000000
          Top = 275.905690000000000000
          Width = 76.220521670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CIOT:')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 275.905690000000000000
          Top = 275.905690000000000000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[NumeroCIOT]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 332.598640000000000000
          Top = 298.582870000000000000
          Width = 125.354411670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CTRC:')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 457.323130000000000000
          Top = 298.582870000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[documento]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 3.779530000000000000
          Top = 298.582870000000000000
          Width = 106.456761670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'FRETE TONELADA:')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 109.606370000000000000
          Top = 298.582870000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[valorFreteMotorista]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 3.779530000000000000
          Top = 313.700990000000000000
          Width = 106.456761670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'FRETE BRUTO:')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 109.606370000000000000
          Top = 313.700990000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[valorTotalMotorista]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 3.779530000000000000
          Top = 328.819110000000000000
          Width = 106.456761670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'VALOR IMPOSTOS:')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 3.779530000000000000
          Top = 351.496290000000000000
          Width = 106.456761670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'ADIANTAMENTO:')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Left = 3.779530000000000000
          Top = 366.614410000000000000
          Width = 106.456761670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'SALDO FRETE:')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Left = 3.779530000000000000
          Top = 381.732530000000000000
          Width = 106.456761670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'FRETE L'#195#141'QUIDO:')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 200.315090000000000000
          Top = 298.582870000000000000
          Width = 76.220521670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'INSS:')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 200.315090000000000000
          Top = 313.700990000000000000
          Width = 76.220521670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'IRRF:')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Left = 200.315090000000000000
          Top = 328.819110000000000000
          Width = 76.220521670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'SEST/SENAT:')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 275.905690000000000000
          Top = 298.582870000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[valorINSS]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Left = 275.905690000000000000
          Top = 328.819110000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[<valorSest>+<valorSenat>]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Left = 275.905690000000000000
          Top = 313.700990000000000000
          Width = 45.354360000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[valorIRRF]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Left = 332.598640000000000000
          Top = 313.700990000000000000
          Width = 125.354411670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'NOTA FISCAL:')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Left = 332.598640000000000000
          Top = 328.819110000000000000
          Width = 125.354411670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'VALOR MERCADORIA:')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 332.598640000000000000
          Top = 343.937230000000000000
          Width = 125.354411670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'PESO SA'#195#141'DA:')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Left = 457.323130000000000000
          Top = 343.937230000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[pesoSaida]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          Left = 332.598640000000000000
          Top = 359.055350000000000000
          Width = 125.354411670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'DATA SA'#195#141'DA:')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 332.598640000000000000
          Top = 374.173470000000000000
          Width = 125.354411670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'PREVIS'#195#402'O CHEGADA:')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 457.323130000000000000
          Top = 359.055350000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[datasaida]')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 3.779530000000000000
          Top = 404.409710000000000000
          Width = 106.456761670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CIDADE ORIGEM:')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 362.834880000000000000
          Top = 404.409710000000000000
          Width = 102.677231670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CIDADE DESTINO:')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 109.606370000000000000
          Top = 404.409710000000000000
          Width = 253.228510000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[cliente_Origem.cidade] [cliente_Origem.endereco]')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 464.882190000000000000
          Top = 404.409710000000000000
          Width = 253.228510000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[cliente_Destino.cidade] [cliente_Destino.endereco]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 109.606370000000000000
          Top = 351.496290000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[valorAdiantamento]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 109.606370000000000000
          Top = 328.819110000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[<valorINSS>+<valorSest>+<valorSenat>+<valorIRRF>]')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 109.606370000000000000
          Top = 381.732530000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[<valorAdiantamento>+<valorSaldo>]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 457.323130000000000000
          Top = 328.819110000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[valorNotaFiscal]')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          Left = 109.606370000000000000
          Top = 366.614410000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[valorSaldo]')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          Left = 457.323130000000000000
          Top = 374.173470000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Shape4: TfrxShapeView
          Top = 430.866420000000000000
          Width = 718.110700000000000000
          Height = 136.063080000000000000
          Shape = skRoundRectangle
        end
        object Memo75: TfrxMemoView
          Left = 3.779530000000000000
          Top = 438.425480000000000000
          Width = 711.181561670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            
              'DADOS CLIENTE ORIGEM                                            ' +
              '      DADOS CLIENTE DESTINO')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Top = 457.323130000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo76: TfrxMemoView
          Left = 3.779530000000000000
          Top = 461.102660000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[cliente_Origem.nome]')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Left = 362.834880000000000000
          Top = 461.102660000000000000
          Width = 355.275820000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[cliente_Destino.nome]')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          Left = 3.779530000000000000
          Top = 480.000310000000000000
          Width = 106.456761670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CNPJ/CPF:')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          Left = 109.606370000000000000
          Top = 480.000310000000000000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[cliente_Origem.cnpj_cpf]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Left = 3.779530000000000000
          Top = 495.118430000000000000
          Width = 106.456761670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'ENDERE'#195#8225'O:')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          Left = 362.834880000000000000
          Top = 480.000310000000000000
          Width = 102.677231670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'CNPJ/CPF:')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          Left = 362.834880000000000000
          Top = 495.118430000000000000
          Width = 102.677231670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'ENDERE'#195#8225'O:')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 464.882190000000000000
          Top = 480.000310000000000000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[cliente_Destino.cnpj_cpf]')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 109.606370000000000000
          Top = 495.118430000000000000
          Width = 253.228510000000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[cliente_Origem.endereco] [cliente_Origem.bairro]'
            '[cliente_Origem.uf]'
            'CEP:[cliente_Origem.cep]')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 464.882190000000000000
          Top = 495.118430000000000000
          Width = 253.228510000000000000
          Height = 71.811070000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[cliente_Destino.endereco] [cliente_Destino.bairro]'
            '[cliente_Destino.uf]'
            'CEP:[cliente_Destino.cep]')
          ParentFont = False
        end
        object Shape5: TfrxShapeView
          Top = 570.709030000000000000
          Width = 718.110700000000000000
          Height = 86.929190000000000000
          Shape = skRoundRectangle
        end
        object Memo86: TfrxMemoView
          Left = 3.779530000000000000
          Top = 574.488560000000000000
          Width = 711.181561670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'DOCUMENTOS A SEREM RECOLHIDOS PELO POSTO')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Top = 593.386210000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Shape6: TfrxShapeView
          Top = 661.417750000000000000
          Width = 718.110700000000000000
          Height = 275.905690000000000000
          Shape = skRoundRectangle
        end
        object Memo96: TfrxMemoView
          Left = 3.779530000000000000
          Top = 665.197280000000000000
          Width = 711.181561670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'CLAUSULAS DO CONTRATO')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 1.889763780000000000
          Top = 684.094930000000000000
          Width = 714.330708660000000000
          Frame.Typ = [ftTop]
        end
        object Memo100: TfrxMemoView
          Left = 7.559060000000000000
          Top = 687.874460000000000000
          Width = 702.992580000000000000
          Height = 158.740260000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            
              '1'#194#186') O presente contrato '#195#169' firmado pelas partes identificadas n' +
              'os termos da legisla'#195#167#195#163'o pertinente ( LEI N'#194#186' 11.442 de 05/01/2' +
              '007 ) e demais disposi'#195#167#195#181'es legais aplic'#195#161'vel '#195#160' esp'#195#169'cie.'
            
              '2'#194#186') Este documento apenas ter'#195#161' validade quando assinado pelas ' +
              'partes ou por seus propostos devidamente identificados e com esp' +
              'a'#195#167'os preenchidos.'
            
              '3'#194#186') A CONTRATANTE responder'#195#161' pelos atrasos ocorridos na opera'#195 +
              #167#195#163'o de descarregamento, salvo quando ocorre por culpa do TRANSP' +
              'ORTADOR, ENCARGOS E HOR'#195#129'RIOS.'
            
              '4'#194#186') O prazo para a carga e descarga se outro n'#195#163'o for contratad' +
              'o, ser'#195#161' discriminado, considerando-se para esse caso fim do hor' +
              #195#161'rio comercial do local de descarregamento previsto do contrato' +
              '.'
            
              '5'#194#186') Todas as despesas decorrentes dos servi'#195#167'os ora contratados' +
              ' ocorrem por conta do TRANSPORTADOR DA CARGA, inclusive os encar' +
              'gos sociais, trabalhistas, previdenci'#195#161'rio, combust'#195#173'veis, manut' +
              'en'#195#167#195#163'o, reparos, etc.'
            
              '6'#194#186') As partes contratadas ficar'#195#163'o de posse de uma via do prese' +
              'nte contrato.'
            
              '7'#194#186') Toda mercadoria que for entregue ao cliente final com avari' +
              'as ou falta de mercadoria, ser'#195#161' descontado o valor do produto d' +
              'o motorista ou propriet'#195#161'rio conforme valor do destinat'#195#161'rio da ' +
              'mercadoria.'
            
              '8'#194#186') Declaro estar ciente e concordar com todas as condi'#195#167#195#181'es p' +
              'ara o transporte, ajustadas neste contrato de frete, inclusive e' +
              'm rela'#195#167#195#163'o aos valores de frete, estadias na descarga e toler'#195#162 +
              'ncia de quebra.'
            ''
            ' ')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          Left = 7.559060000000000000
          Top = 854.173780000000000000
          Width = 427.086890000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            
              'Toler'#195#162'ncia de [PercentualTolerancia]% sobre o [iif(<TipoToleran' +
              'cia>='#39'E'#39','#39'Excedente'#39', '#39'Integral'#39')].')
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          Left = 7.559060000000000000
          Top = 873.071430000000000000
          Width = 427.086890000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            'Em caso de falta de mercadoria descontar ')
          ParentFont = False
        end
        object Shape7: TfrxShapeView
          Top = 941.102970000000000000
          Width = 718.110700000000000000
          Height = 83.149660000000000000
          Shape = skRoundRectangle
        end
        object Memo105: TfrxMemoView
          Left = 7.559060000000000000
          Top = 1009.134510000000000000
          Width = 68.661461670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Expedidor:')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Top = 1005.354980000000000000
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
        end
        object Memo106: TfrxMemoView
          Left = 453.543600000000000000
          Top = 1009.134510000000000000
          Width = 148.031591670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Data de Emiss'#195#163'o Contrato:')
          ParentFont = False
        end
        object Line9: TfrxLineView
          Left = 37.795300000000000000
          Top = 975.118740000000000000
          Width = 260.787570000000000000
          Frame.Typ = [ftTop]
        end
        object Memo107: TfrxMemoView
          Left = 102.047310000000000000
          Top = 990.236860000000000000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[contratado.contratado_cnpj_cpf]')
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          Left = 37.795300000000000000
          Top = 975.118740000000000000
          Width = 260.787570000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Assinatura do Contratado')
          ParentFont = False
        end
        object Memo109: TfrxMemoView
          Left = 37.795300000000000000
          Top = 990.236860000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CPF/CNPJ:')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          Left = 419.527830000000000000
          Top = 990.236860000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CPF/CNPJ:')
          ParentFont = False
        end
        object Line10: TfrxLineView
          Left = 419.527830000000000000
          Top = 975.118740000000000000
          Width = 260.787570000000000000
          Frame.Typ = [ftTop]
        end
        object Memo112: TfrxMemoView
          Left = 419.527830000000000000
          Top = 975.118740000000000000
          Width = 260.787570000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Assinatura do Contratante')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          Left = 483.779840000000000000
          Top = 990.236860000000000000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[cnpj_filial]')
          ParentFont = False
        end
        object Memo113: TfrxMemoView
          Left = 600.945270000000000000
          Top = 1009.134510000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[datasaida]')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          Left = 75.590600000000000000
          Top = 1009.134510000000000000
          Width = 377.953000000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[Usuario]')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 7.559060000000000000
          Top = 891.969080000000000000
          Width = 699.213050000000000000
          Height = 41.574830000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          Memo.UTF8 = (
            'ATEN'#195#8225#195#402'O:'
            
              'Sr. Motorista, este documento n'#195#163'o vale como comprovante de entr' +
              'ega ou recibo de frete. Por favor, solicite o carimbo com data e' +
              ' assinatura da segunda via do conhecimento.')
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          Left = 532.913730000000000000
          Top = 253.228510000000000000
          Width = 185.826891670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'ADMINISTRADORA')
          ParentFont = False
        end
        object Memo103: TfrxMemoView
          Left = 532.913730000000000000
          Top = 275.905690000000000000
          Width = 185.196970000000000000
          Height = 124.724490000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          Left = 415.748300000000000000
          Top = 188.976500000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[veiculo.carretas[2].placa]')
          ParentFont = False
        end
        object Subreport2: TfrxSubreport
          Left = 457.323130000000000000
          Top = 313.700990000000000000
          Width = 257.008040000000000000
          Height = 15.118120000000000000
          Page = oFRX_DOT.Page2
        end
        object Subreport3: TfrxSubreport
          Top = 593.386210000000000000
          Width = 714.331170000000000000
          Height = 64.252010000000000000
          Page = oFRX_DOT.Page3
        end
        object Picture1: TfrxPictureView
          Left = 7.559060000000000000
          Top = 11.338590000000000000
          Width = 204.094620000000000000
          Height = 90.708720000000000000
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        Columns = 5
        ColumnWidth = 56.692913385826800000
        RowCount = 1
        object Memo117: TfrxMemoView
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object Page3: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object MasterData3: TfrxMasterData
        Height = 15.118120000000000000
        Top = 56.692950000000000000
        Width = 793.701300000000000000
        OnBeforePrint = 'MasterData3OnBeforePrint'
        RowCount = 1
        object Memo88: TfrxMemoView
          Left = 3.779530000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          Left = 166.299320000000000000
          Width = 185.196970000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          Left = 355.275820000000000000
          Width = 423.307360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 15.118120000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo87: TfrxMemoView
          Left = 3.779530000000000000
          Width = 125.354411670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'TIPO DO DOCUMENTO')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          Left = 166.299320000000000000
          Width = 61.102401670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'N'#195#353'MERO')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 359.055350000000000000
          Width = 83.779581670000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'OBSERVA'#195#8225#195#402'O')
          ParentFont = False
        end
      end
    end
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    Restrictions = []
    RTLLanguage = False
    Left = 8
    Top = 32
  end
  object frxGZipCompressor1: TfrxGZipCompressor
    Left = 8
    Top = 64
  end
  object frxPDFExport2: TfrxPDFExport
    ShowDialog = False
    ExportNotPrintable = True
    UseFileCache = True
    ShowProgress = False
    EmbeddedFonts = True
    PrintOptimized = False
    Outline = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Background = False
    Creator = 'FastReport (http://www.fast-report.com)'
    HTMLTags = True
    Left = 8
    Top = 96
  end
  object frxChartObject1: TfrxChartObject
    Left = 40
    Top = 64
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 40
    Top = 32
  end
  object frxRichObject1: TfrxRichObject
    Left = 40
    Top = 96
  end
end
