object Form2: TForm2
  Left = 320
  Top = 205
  Width = 640
  Height = 564
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 340
    Top = 16
    Width = 33
    Height = 13
    Caption = 'Placao'
  end
  object Label2: TLabel
    Left = 340
    Top = 40
    Width = 23
    Height = 13
    Caption = 'Rota'
  end
  object Label3: TLabel
    Left = 340
    Top = 64
    Width = 48
    Height = 13
    Caption = 'Valor frete'
  end
  object Label4: TLabel
    Left = 344
    Top = 88
    Width = 90
    Height = 13
    Caption = 'valor adiantamento'
  end
  object Label5: TLabel
    Left = 440
    Top = 112
    Width = 25
    Height = 13
    Caption = 'Crt'#227'o'
  end
  object Label6: TLabel
    Left = 340
    Top = 136
    Width = 68
    Height = 13
    Caption = 'Conhecimento'
  end
  object Button1: TButton
    Left = 28
    Top = 16
    Width = 237
    Height = 61
    Caption = 'automatico via PEFConduit'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 472
    Top = 12
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'AQT6253'
  end
  object Edit2: TEdit
    Left = 472
    Top = 36
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '1'
  end
  object Edit3: TEdit
    Left = 472
    Top = 60
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '2000'
  end
  object Edit4: TEdit
    Left = 472
    Top = 84
    Width = 121
    Height = 21
    TabOrder = 4
    Text = '500'
  end
  object Edit5: TEdit
    Left = 472
    Top = 108
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'Edit5'
  end
  object ovRG_Metodo: TRadioGroup
    Left = 340
    Top = 176
    Width = 185
    Height = 105
    Caption = 'Metodo'
    ItemIndex = 0
    Items.Strings = (
      'insereContratoFrete'
      'verificaRetorno'
      'cancelaContratoFrete'
      'consultaContratoFrete'
      'inserePreValidacao')
    TabOrder = 6
  end
  object ovRG_Operadora: TRadioGroup
    Left = 340
    Top = 284
    Width = 185
    Height = 105
    Caption = 'Operadora'
    ItemIndex = 0
    Items.Strings = (
      'Sem operadora'
      'Repom'
      'RoadCard'
      'Pancary'
      'Rodocred'
      'NDD')
    TabOrder = 7
  end
  object Button2: TButton
    Left = 540
    Top = 180
    Width = 75
    Height = 209
    Caption = 'Manual'
    TabOrder = 8
    OnClick = Button2Click
  end
  object edt_filial: TEdit
    Left = 416
    Top = 132
    Width = 37
    Height = 21
    TabOrder = 9
    Text = '1'
  end
  object edtSerie: TEdit
    Left = 464
    Top = 132
    Width = 45
    Height = 21
    TabOrder = 10
    Text = '1'
  end
  object edt_Ctrc: TEdit
    Left = 516
    Top = 132
    Width = 68
    Height = 21
    TabOrder = 11
    Text = '352'
  end
  object Button3: TButton
    Left = 52
    Top = 92
    Width = 75
    Height = 25
    Caption = 'Direto'
    TabOrder = 12
    OnClick = Button3Click
  end
  object ovM_log: TMemo
    Left = 0
    Top = 128
    Width = 321
    Height = 241
    Lines.Strings = (
      'ovM_log')
    TabOrder = 13
  end
  object Button4: TButton
    Left = 312
    Top = 440
    Width = 75
    Height = 25
    Caption = 'Button4'
    TabOrder = 14
    OnClick = Button4Click
  end
  object ovLB_TH: TListBox
    Left = 176
    Top = 424
    Width = 121
    Height = 97
    ItemHeight = 13
    TabOrder = 15
    OnDblClick = ovLB_THDblClick
  end
end
