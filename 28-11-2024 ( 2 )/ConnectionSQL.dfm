object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 451
  ClientWidth = 782
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 25
    Top = 248
    Width = 544
    Height = 113
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'AcID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Name'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Email'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'City'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Contact'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Password'
        Visible = True
      end>
  end
  object dbeName: TDBEdit
    Left = 25
    Top = 104
    Width = 161
    Height = 21
    DataField = 'Name'
    DataSource = DataSource1
    TabOrder = 1
  end
  object dbeEmail: TDBEdit
    Left = 25
    Top = 144
    Width = 161
    Height = 21
    DataField = 'Email'
    DataSource = DataSource1
    TabOrder = 2
  end
  object dbeCity: TDBEdit
    Left = 25
    Top = 184
    Width = 161
    Height = 21
    DataField = 'City'
    DataSource = DataSource1
    TabOrder = 3
  end
  object dbeContact: TDBEdit
    Left = 240
    Top = 104
    Width = 161
    Height = 21
    DataField = 'Contact'
    DataSource = DataSource1
    TabOrder = 4
  end
  object dbePassword: TDBEdit
    Left = 240
    Top = 144
    Width = 161
    Height = 21
    DataField = 'Password'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBNavigator1: TDBNavigator
    Left = 25
    Top = 384
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 6
  end
  object adoConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=saadmin;Persist Security Info=True;' +
      'User ID=sa;Initial Catalog=ConnectionDatabaswToDelphi;Data Sourc' +
      'e=DESKTOP-3PUQ500\SQLEXPRESS;Use Procedure for Prepare=1;Auto Tr' +
      'anslate=True;Packet Size=4096;Workstation ID=DESKTOP-3PUQ500;Use' +
      ' Encryption for Data=False;Tag with column collation when possib' +
      'le=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 16
    Top = 24
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = adoConnection
    CursorType = ctStatic
    TableName = 'DatabaseConnection'
    Left = 80
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 144
    Top = 24
  end
end
