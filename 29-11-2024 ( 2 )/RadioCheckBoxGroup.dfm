object FormRadioCheckBoxGroup: TFormRadioCheckBoxGroup
  Left = 0
  Top = 0
  Caption = 'RadioCheckBoxGroup'
  ClientHeight = 566
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
  object lblRadioButtons: TLabel
    Left = 40
    Top = 101
    Width = 67
    Height = 13
    Caption = 'Radio Buttons'
  end
  object lblCheckBoxs: TLabel
    Left = 240
    Top = 101
    Width = 57
    Height = 13
    Caption = 'Check Box'#39's'
  end
  object lblValue1: TLabel
    Left = 8
    Top = 64
    Width = 35
    Height = 13
    Caption = 'Value 1'
  end
  object lblValue2: TLabel
    Left = 227
    Top = 64
    Width = 35
    Height = 13
    Caption = 'Value 2'
  end
  object edtValue: TEdit
    Left = 49
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtValue2: TEdit
    Left = 272
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtTotal: TEdit
    Left = 40
    Top = 304
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = 240
    Top = 304
    Width = 185
    Height = 169
    Lines.Strings = (
      'M.F.CkB')
    TabOrder = 3
  end
  object CheckListBox1: TCheckListBox
    Left = 240
    Top = 120
    Width = 89
    Height = 89
    ItemHeight = 13
    Items.Strings = (
      'Sum'
      'Sub'
      'Multi'
      'Div'
      'Per')
    TabOrder = 4
  end
  object RadioGroup1: TRadioGroup
    Left = 40
    Top = 120
    Width = 137
    Height = 105
    Caption = 'RadioGroup1'
    Items.Strings = (
      'Sum'
      'Sub'
      'Multi'
      'Div'
      'Pre')
    TabOrder = 5
  end
  object btnSubmit: TButton
    Left = 136
    Top = 256
    Width = 137
    Height = 25
    Caption = 'Submit'
    TabOrder = 6
    OnClick = btnSubmitClick
  end
end
