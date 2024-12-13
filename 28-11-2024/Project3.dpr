program Project3;

uses
  Vcl.Forms,
  RadioForm in 'RadioForm.pas' {FormRadio};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormRadio, FormRadio);
  Application.Run;
end.
