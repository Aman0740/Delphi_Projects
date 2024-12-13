object FormTwoQueryTable: TFormTwoQueryTable
  Left = 0
  Top = 0
  Caption = 'TwoQueryTable'
  ClientHeight = 539
  ClientWidth = 892
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TwwDBGrid
    Left = 8
    Top = 216
    Width = 860
    Height = 120
    ControlType.Strings = (
      'LKPUserName;CustomEdit;wwDBLookupCombo1;F')
    Selected.Strings = (
      'LKPUserName'#9'20'#9'LKPUserName'#9#9
      'Name'#9'20'#9'Name'#9#9
      'Email'#9'20'#9'Email'#9#9
      'City'#9'20'#9'City'#9#9
      'Contact'#9'20'#9'Contact'#9#9
      'Password'#9'20'#9'Password'#9#9
      'EmpID'#9'20'#9'EmpID'#9#9)
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DataSource1
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 342
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object wwDBEdit1: TwwDBEdit
    Left = 24
    Top = 168
    Width = 121
    Height = 21
    DataField = 'Name'
    DataSource = DataSource1
    TabOrder = 2
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object wwDBLookupCombo1: TwwDBLookupCombo
    Left = 24
    Top = 285
    Width = 121
    Height = 21
    DropDownAlignment = taLeftJustify
    Selected.Strings = (
      'EmpName'#9'50'#9'EmpName'#9'F')
    DataField = 'EmpID'
    DataSource = DataSource1
    LookupTable = adoEmployeeTable
    LookupField = 'EmpID'
    TabOrder = 3
    AutoDropDown = False
    ShowButton = True
    PreciseEditRegion = False
    AllowClearKey = False
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=saadmin;Persist Security Info=True;' +
      'User ID=sa;Initial Catalog=2QueryTableDataBaseConnection;Data So' +
      'urce=DESKTOP-3PUQ500\SQLEXPRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 40
    Top = 40
  end
  object adoUserTable: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  From UserTable')
    Left = 136
    Top = 40
    object adoUserTableLKPUserName: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'LKPUserName'
      LookupDataSet = adoEmployeeTable
      LookupKeyFields = 'EmpID'
      LookupResultField = 'EmpName'
      KeyFields = 'EmpID'
      Size = 50
      Lookup = True
    end
    object adoUserTableName: TStringField
      DisplayWidth = 20
      FieldName = 'Name'
      Size = 50
    end
    object adoUserTableEmail: TStringField
      DisplayWidth = 20
      FieldName = 'Email'
      Size = 50
    end
    object adoUserTableCity: TStringField
      DisplayWidth = 20
      FieldName = 'City'
      Size = 50
    end
    object adoUserTableContact: TStringField
      DisplayWidth = 20
      FieldName = 'Contact'
      Size = 50
    end
    object adoUserTableAcID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'AcID'
      ReadOnly = True
      Visible = False
    end
    object adoUserTableEmpID: TIntegerField
      DisplayWidth = 20
      FieldName = 'EmpID'
    end
  end
  object adoEmployeeTable: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From EmployeeTable')
    Left = 232
    Top = 24
    object adoEmployeeTableEmpName: TStringField
      DisplayWidth = 50
      FieldName = 'EmpName'
      Size = 50
    end
    object adoEmployeeTableEmpID: TAutoIncField
      FieldName = 'EmpID'
      ReadOnly = True
      Visible = False
    end
    object adoEmployeeTableEmpEmail: TStringField
      FieldName = 'EmpEmail'
      Visible = False
      Size = 50
    end
    object adoEmployeeTableEmpCity: TStringField
      FieldName = 'EmpCity'
      Visible = False
      Size = 50
    end
    object adoEmployeeTableEmpContact: TStringField
      FieldName = 'EmpContact'
      Visible = False
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = adoUserTable
    Left = 296
    Top = 64
  end
end
