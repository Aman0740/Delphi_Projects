object FormSignUp: TFormSignUp
  Left = 0
  Top = 0
  Caption = 'SignUP'
  ClientHeight = 304
  ClientWidth = 414
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblName: TLabel
    Left = 27
    Top = 85
    Width = 27
    Height = 13
    Caption = 'Name'
  end
  object lblEmail: TLabel
    Left = 27
    Top = 146
    Width = 24
    Height = 13
    Caption = 'Email'
  end
  object lblPassword: TLabel
    Left = 203
    Top = 85
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object lblCunformPassword: TLabel
    Left = 203
    Top = 146
    Width = 90
    Height = 13
    Caption = 'Cunform Password'
  end
  object lblSignUpPage: TLabel
    Left = 158
    Top = 24
    Width = 60
    Height = 13
    Caption = 'SignUp Page'
  end
  object DBEditName: TDBEdit
    Left = 27
    Top = 104
    Width = 130
    Height = 21
    DataField = 'Name'
    DataSource = FormDataStore.DataSource1
    TabOrder = 0
  end
  object DBEditEmail: TDBEdit
    Left = 27
    Top = 165
    Width = 130
    Height = 21
    DataField = 'Email'
    DataSource = FormDataStore.DataSource1
    TabOrder = 1
  end
  object DBEditPassword: TDBEdit
    Left = 203
    Top = 104
    Width = 130
    Height = 21
    DataField = 'Password'
    DataSource = FormDataStore.DataSource1
    TabOrder = 2
  end
  object DBEditCunformPassword: TDBEdit
    Left = 203
    Top = 165
    Width = 130
    Height = 21
    DataField = 'Cunform Password'
    DataSource = FormDataStore.DataSource1
    TabOrder = 3
  end
  object btnSubmit: TButton
    Left = 73
    Top = 256
    Width = 100
    Height = 25
    Caption = 'Submit'
    TabOrder = 4
    OnClick = btnSubmitClick
  end
  object btnLogin: TButton
    Left = 203
    Top = 256
    Width = 100
    Height = 25
    Caption = 'Login'
    TabOrder = 5
    OnClick = btnLoginClick
  end
end
