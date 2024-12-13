program Project3;

uses
  Vcl.Forms,
  SignUpLoginForm in 'SignUpLoginForm.pas' {Form1},
  SignUpForm in 'SignUpForm.pas' {FormSignUp},
  LoginForm in 'LoginForm.pas' {FormLogin},
  DataStoreForm in 'DataStoreForm.pas' {FormDataStore};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFormSignUp, FormSignUp);
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TFormDataStore, FormDataStore);
  Application.Run;
end.
