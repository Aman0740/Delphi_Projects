object FormMyTest1: TFormMyTest1
  Left = 0
  Top = 0
  Caption = 'MyTest1'
  ClientHeight = 443
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblname: TLabel
    Left = 47
    Top = 208
    Width = 27
    Height = 13
    Caption = 'Name'
  end
  object btncall: TButton
    Left = 47
    Top = 256
    Width = 113
    Height = 33
    Caption = 'Btn Call'
    TabOrder = 0
    OnClick = btncallClick
  end
  object edtName: TEdit
    Left = 80
    Top = 205
    Width = 153
    Height = 21
    TabOrder = 1
    Text = 'edtName'
  end
end
