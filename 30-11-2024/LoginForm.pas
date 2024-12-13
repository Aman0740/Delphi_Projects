unit LoginForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFormLogin = class(TForm)
    DBEditUserName: TDBEdit;
    DBEditPassword: TDBEdit;
    lblUserName: TLabel;
    lblPassword: TLabel;
    btnLogin: TButton;
    btnBackToSignUp: TButton;
    lblLoginPage: TLabel;
    procedure btnBackToSignUpClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLogin: TFormLogin;
  FormSignUp: TForm;

implementation

uses
  SignUpForm;

{$R *.dfm}

procedure TFormLogin.btnBackToSignUpClick(Sender: TObject);
begin
  if not Assigned(FormSignUp) then
    FormSignUp := TFormSignUp.Create(Self);

  FormSignUp.Show;
end;

procedure TFormLogin.btnLoginClick(Sender: TObject);
begin

  ShowMessage('Login button clicked. Implement logic for authentication.');
end;

end.

