program Project3;

uses
  Vcl.Forms,
  TwoQueryTableForm in 'TwoQueryTableForm.pas' {FormTwoQueryTable};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormTwoQueryTable, FormTwoQueryTable);
  Application.Run;
end.
