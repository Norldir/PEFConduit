object ovF_PEFConduitAPP: TovF_PEFConduitAPP
  Left = 402
  Top = 187
  Width = 612
  Height = 371
  Caption = 'PEFConduitAPP'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ovSB_VarreDir: TSpeedButton
    Left = 8
    Top = 8
    Width = 137
    Height = 25
    Action = oA_IniciaPara
    AllowAllUp = True
  end
  object Button2: TButton
    Left = 8
    Top = 36
    Width = 137
    Height = 25
    Action = oA_configuracao
    TabOrder = 0
  end
  object ovBB_Finalizar: TBitBtn
    Left = 4
    Top = 316
    Width = 145
    Height = 25
    Caption = 'Parar monitor'
    TabOrder = 1
    OnClick = ovBB_FinalizarClick
  end
  object ovM_Log: TMemo
    Left = 152
    Top = 8
    Width = 445
    Height = 333
    TabOrder = 2
  end
  object oAL_PEF: TActionList
    Left = 16
    Top = 92
    object oA_configuracao: TAction
      Caption = 'Configura'#231#227'o'
      OnExecute = oA_configuracaoExecute
      OnUpdate = oA_configuracaoUpdate
    end
    object oA_IniciaPara: TAction
      Caption = 'Iniciar'
      OnExecute = oA_IniciaParaExecute
      OnUpdate = oA_IniciaParaUpdate
    end
  end
  object CoolTrayIcon1: TCoolTrayIcon
    CycleInterval = 0
    Icon.Data = {
      0000010001002020040000000000E80200001600000028000000200000004000
      0000010004000000000000020000000000000000000000000000000000000000
      000000008000008000000080800080000000800080008080000080808000C0C0
      C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006444
      4444444444444444444444444400666666666666666666666666666666007FFF
      FFFFFFFFFFFFFFFFFFFFFFFFF7006FFFFFFFFFFFFFFFFFFFFFFFFFFFF7006FFF
      FFFFFFFFFFFFFFFFFFFFFFFFF7006FFFFFFFFFFFFFFFFFFFFFFFFFFFF7006FFF
      FFFFFFFFFFFFFFFFFFFFFFFFF7006FFFFFFFFFFFFFFFFFFFFFFFFFFFF7006FFF
      FFFFFFFFFFFFFFFFFFFFFFFFF7006FFFFFFFFFFFFFFFFFFFFFFFFFFFF7006FFF
      FFFFFFFFFFFFFFFFFFFFFFFFF7006FFFFFFFFFFFFFFFFFFFFFFFFFFFF7006FFF
      FFFFFFFFFFFFFFFFFFFFFFFFF7006FFFFFFFFFFFFFFFFFFFFFFFFFFFF7006FFF
      FFFFFFFFFFFFFFFFFFFFFFFFF8006FFFFFFFFFFFFFFFFFFFFFFFFFFFF8006FFF
      FFFFFFFFFFFFFFFFFFFFFFFFF8006FFFFFFFFFFFFFFFFFFFFFFFFFFFF8006FFF
      FFFFFFFFFFFFFFFFFFFFFFFFF8006FFFFFFFFFFFFFFFFFFFFFFFFFFFF8006888
      8888888888888888888888888600666666666666666666666664666666006666
      666666666666666666867E697600668EEEEEEEEEEEEEEEE66EE6EE6766006666
      6666666666666666666666666600000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FFFFFFFFFFFF8000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFF}
    IconVisible = True
    IconIndex = 0
    MinimizeToTray = True
    OnClick = CoolTrayIcon1Click
    Left = 156
    Top = 8
  end
  object oT_VerificaServico: TTimer
    Left = 188
    Top = 8
  end
end