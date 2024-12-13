object FormMyTest2: TFormMyTest2
  Left = 0
  Top = 0
  Caption = 'MyTest2'
  ClientHeight = 424
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
  object lblName: TLabel
    Left = 83
    Top = 236
    Width = 27
    Height = 13
    Caption = 'Name'
  end
  object btnCallValue: TButton
    Left = 64
    Top = 272
    Width = 161
    Height = 41
    Caption = 'Call  Value'
    TabOrder = 0
    OnClick = btnCallValueClick
  end
  object edtName: TEdit
    Left = 128
    Top = 233
    Width = 193
    Height = 21
    TabOrder = 1
    Text = 'edtName'
  end
  object edtSecondForm: TEdit
    Left = 64
    Top = 152
    Width = 225
    Height = 21
    TabOrder = 2
    Text = 'edtSecondForm'
  end
end
