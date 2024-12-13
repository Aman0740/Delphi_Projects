program Project2;

uses
  Vcl.Forms,
  MyDataTableForm in 'MyDataTableForm.pas' {Form1DataTable},
  MyDataTableForm2 in 'MyDataTableForm2.pas' {FormMyDataTable2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1DataTable, Form1DataTable);
  Application.CreateForm(TFormMyDataTable2, FormMyDataTable2);
  Application.Run;
end.
