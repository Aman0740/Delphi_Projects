program FormProject1;

uses
  Vcl.Forms,
  ProjectForm1 in 'ProjectForm1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
