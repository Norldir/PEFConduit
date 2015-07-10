object Form1: TForm1
  Left = 494
  Top = 288
  Width = 802
  Height = 320
  Anchors = [akLeft, akTop, akRight, akBottom]
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 12
    Top = 25
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 164
    Top = 0
    Width = 630
    Height = 293
    Align = alRight
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object XMLDocument1: TXMLDocument
    Active = True
    Left = 428
    Top = 96
    DOMVendorDesc = 'MSXML'
  end
end
