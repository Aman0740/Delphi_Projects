unit MyTest2Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormMyTest2 = class(TForm)
    btnCallValue: TButton;
    edtName: TEdit;
    lblName: TLabel;
    edtSecondForm: TEdit;
    procedure btnCallValueClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMyTest2: TFormMyTest2;

implementation
uses MyTest1Form;
{$R *.dfm}

procedure TFormMyTest2.btnCallValueClick(Sender: TObject);
begin
      edtName.Text := FormMyTest1.edtName.Text;
end;

procedure TFormMyTest2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
            Action := caFree;
            FormMyTest2 := nil;
end;

end.
