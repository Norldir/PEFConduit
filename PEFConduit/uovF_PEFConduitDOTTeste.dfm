object ovF_PEFConduitDOTTeste: TovF_PEFConduitDOTTeste
  Left = 344
  Top = 247
  Width = 383
  Height = 111
  Caption = 'ovF_PEFConduitDOTTeste'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object ovL_Contrato: TLabel
    Left = 8
    Top = 16
    Width = 40
    Height = 13
    Caption = 'Contrato'
  end
  object ovSB_Abrir: TSpeedButton
    Left = 344
    Top = 16
    Width = 23
    Height = 22
    OnClick = ovSB_AbrirClick
  end
  object ovB_ShowDOT: TButton
    Left = 56
    Top = 48
    Width = 129
    Height = 25
    Caption = 'Mostrar DOT'
    TabOrder = 0
    OnClick = ovB_ShowDOTClick
  end
  object ovE_Contrato: TEdit
    Left = 56
    Top = 16
    Width = 281
    Height = 21
    TabOrder = 1
  end
  object ovB_Modelar: TButton
    Left = 208
    Top = 48
    Width = 129
    Height = 25
    Caption = 'Modelar DOT'
    TabOrder = 2
    OnClick = ovB_ModelarClick
  end
  object oODLG_Abrir: TOpenDialog
    Left = 16
    Top = 48
  end
end
