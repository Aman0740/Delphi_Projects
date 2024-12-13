unit MyTest1Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormMyTest1 = class(TForm)
    btncall: TButton;
    edtName: TEdit;
    lblname: TLabel;
    procedure btncallClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMyTest1: TFormMyTest1;

implementation
uses MyTest2Form ;
{$R *.dfm}

procedure TFormMyTest1.btncallClick(Sender: TObject);
begin
            FormMyTest2 := TFormMyTest2.create( self );  // tme je object create krelo che tena click pr bijo object create thai
            FormMyTest2.show;
end;

end.
