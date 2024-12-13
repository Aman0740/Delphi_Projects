object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 462
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
  object Memo1: TMemo
    Left = 208
    Top = 163
    Width = 273
    Height = 225
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 48
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 48
    Top = 83
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit1'
  end
  object Edit3: TEdit
    Left = 48
    Top = 110
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 48
    Top = 274
    Width = 89
    Height = 41
    Caption = 'Button1'
    TabOrder = 4
    OnClick = Button1Click
  end
  object CheckListBox1: TCheckListBox
    Left = 48
    Top = 163
    Width = 89
    Height = 75
    ItemHeight = 13
    Items.Strings = (
      'sum'
      'sub'
      'multi'
      'div')
    TabOrder = 5
  end
end
