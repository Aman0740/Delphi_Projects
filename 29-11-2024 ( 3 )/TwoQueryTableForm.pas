unit TwoQueryTableForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  vcl.Wwdbedit, Vcl.ExtCtrls, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Data.DB,
  Data.Win.ADODB, vcl.wwdblook;

type
  TFormTwoQueryTable = class(TForm)
    ADOConnection1: TADOConnection;
    adoUserTable: TADOQuery;
    adoEmployeeTable: TADOQuery;
    DataSource1: TDataSource;
    wwDBGrid1: TwwDBGrid;
    DBNavigator1: TDBNavigator;
    wwDBEdit1: TwwDBEdit;
    adoUserTableAcID: TAutoIncField;
    adoUserTableName: TStringField;
    adoUserTableEmail: TStringField;
    adoUserTableCity: TStringField;
    adoUserTableContact: TStringField;
    adoUserTableEmpID: TIntegerField;
    adoUserTableLKPUserName: TStringField;
    adoEmployeeTableEmpID: TAutoIncField;
    adoEmployeeTableEmpName: TStringField;
    adoEmployeeTableEmpEmail: TStringField;
    adoEmployeeTableEmpCity: TStringField;
    adoEmployeeTableEmpContact: TStringField;
    wwDBLookupCombo1: TwwDBLookupCombo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTwoQueryTable: TFormTwoQueryTable;

implementation

{$R *.dfm}

end.
