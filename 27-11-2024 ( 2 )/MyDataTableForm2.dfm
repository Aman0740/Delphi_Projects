object FormMyDataTable2: TFormMyDataTable2
  Left = 0
  Top = 0
  Caption = 'DataTable2'
  ClientHeight = 356
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 32
    Top = 32
    Width = 321
    Height = 225
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object btnShowData: TButton
    Left = 64
    Top = 288
    Width = 107
    Height = 25
    Caption = 'Show Data'
    TabOrder = 1
    OnClick = btnShowDataClick
  end
  object btnDelete: TButton
    Left = 216
    Top = 288
    Width = 107
    Height = 25
    Caption = 'Delete'
    TabOrder = 2
  end
end
