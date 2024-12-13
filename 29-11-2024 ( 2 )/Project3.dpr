program Project3;

uses
  Vcl.Forms,
  RadioCheckBoxGroup in 'RadioCheckBoxGroup.pas' {FormRadioCheckBoxGroup};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormRadioCheckBoxGroup, FormRadioCheckBoxGroup);
  Application.Run;
end.
