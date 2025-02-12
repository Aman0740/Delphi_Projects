unit SignUpForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFormSignUp = class(TForm)
    DBEditName: TDBEdit;
    DBEditEmail: TDBEdit;
    DBEditPassword: TDBEdit;
    DBEditCunformPassword: TDBEdit;
    lblName: TLabel;
    lblEmail: TLabel;
    lblPassword: TLabel;
    lblCunformPassword: TLabel;
    btnSubmit: TButton;
    btnLogin: TButton;
    lblSignUpPage: TLabel;
    procedure btnLoginClick(Sender: TObject);
    procedure btnSubmitClick(Sender: TObject);
  private
    { Private declarations }
    function ValidateInputs: Boolean;
  public
    { Public declarations }
  end;

var
  FormSignUp: TFormSignUp;

implementation

uses
  LoginForm, DataStoreForm;

{$R *.dfm}

procedure TFormSignUp.btnLoginClick(Sender: TObject);
begin
  FormLogin := TFormLogin.Create(Self);
  try
    FormLogin.ShowModal;
  finally
    FormLogin.Free;
  end;
end;

function TFormSignUp.ValidateInputs: Boolean;
begin
  Result := False;

  if DBEditName.Text = '' then
  begin
    ShowMessage('Name is required.');
    Exit;
  end;

  if DBEditEmail.Text = '' then
  begin
    ShowMessage('Email is required.');
    Exit;
  end;

  if DBEditPassword.Text = '' then
  begin
    ShowMessage('Password is required.');
    Exit;
  end;

  if DBEditPassword.Text <> DBEditCunformPassword.Text then
  begin
    ShowMessage('Passwords do not match.');
    Exit;
  end;

  Result := True;
end;

procedure TFormSignUp.btnSubmitClick(Sender: TObject);
begin
  if not ValidateInputs then
    Exit;

  FormDataStore := TFormDataStore.Create(Self);
  try
    FormDataStore.Show;


    with FormDataStore.ADOTable1 do
    begin
      Append;
      FieldByName('Name').AsString := DBEditName.Text;
      FieldByName('Email').AsString := DBEditEmail.Text;
      FieldByName('Password').AsString := DBEditPassword.Text;
      FieldByName('Cunform Password').AsString := DBEditCunformPassword.Text;
      Post;
    end;

    ShowMessage('Signup successful!');
  finally
    FormDataStore.Free;
  end;
end;

end.

