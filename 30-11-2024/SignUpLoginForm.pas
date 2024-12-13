unit SignUpLoginForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnSignUp: TButton;
    btnLogin: TButton;
    procedure btnSignUpClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses SignUpForm , LoginForm;
{$R *.dfm}

procedure TForm1.btnLoginClick(Sender: TObject);
begin
         FormLogin := TFormLogin.create( self );
            FormLogin.show;
end;

procedure TForm1.btnSignUpClick(Sender: TObject);
begin
          FormSignUp := TFormSignUp.create( self );
            FormSignUp.show;

end;

end.
