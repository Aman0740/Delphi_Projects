unit ConnectionSQL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    adoConnection: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    dbeName: TDBEdit;
    dbeEmail: TDBEdit;
    dbeCity: TDBEdit;
    dbeContact: TDBEdit;
    dbePassword: TDBEdit;
    DBNavigator1: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
