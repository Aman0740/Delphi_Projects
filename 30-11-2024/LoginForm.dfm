object FormLogin: TFormLogin
  Left = 0
  Top = 0
  Caption = 'FormLogin'
  ClientHeight = 423
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
  object lblUserName: TLabel
    Left = 152
    Top = 101
    Width = 49
    Height = 13
    Caption = 'UserName'
  end
  object lblPassword: TLabel
    Left = 152
    Top = 165
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object lblLoginPage: TLabel
    Left = 200
    Top = 32
    Width = 60
    Height = 13
    Caption = 'LOGIN PAGE'
  end
  object DBEditUserName: TDBEdit
    Left = 152
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object DBEditPassword: TDBEdit
    Left = 152
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnLogin: TButton
    Left = 80
    Top = 240
    Width = 100
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = btnLoginClick
  end
  object btnBackToSignUp: TButton
    Left = 224
    Top = 240
    Width = 100
    Height = 25
    Caption = 'Back To SignUp'
    TabOrder = 3
    OnClick = btnBackToSignUpClick
  end
end
