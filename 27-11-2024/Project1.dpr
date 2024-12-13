program Project1;

uses
  Vcl.Forms,
  MyTest1Form in 'MyTest1Form.pas' {FormMyTest1},
  MyTest2Form in 'MyTest2Form.pas' {FormMyTest2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMyTest1, FormMyTest1);
  Application.CreateForm(TFormMyTest2, FormMyTest2);
  Application.Run;
end.
