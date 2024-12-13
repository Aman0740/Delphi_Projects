unit RadioCheckBoxGroup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.CheckLst;

type
  TFormRadioCheckBoxGroup = class(TForm)
    edtValue: TEdit;
    edtValue2: TEdit;
    edtTotal: TEdit;
    Memo1: TMemo;
    CheckListBox1: TCheckListBox;
    RadioGroup1: TRadioGroup;
    btnSubmit: TButton;
    lblRadioButtons: TLabel;
    lblCheckBoxs: TLabel;
    lblValue1: TLabel;
    lblValue2: TLabel;
    procedure btnSubmitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRadioCheckBoxGroup: TFormRadioCheckBoxGroup;

implementation

{$R *.dfm}

procedure TFormRadioCheckBoxGroup.btnSubmitClick(Sender: TObject);
var
  a, b, resultValue: Integer;
begin
  a := StrToIntDef(edtValue.Text, 0);
  b := StrToIntDef(edtValue2.Text, 0);
  resultValue := 0;

  // Checkbox logic
  if CheckListBox1.Checked[0] then
    Memo1.Lines.Add('Addition: ' + IntToStr(a + b));

  if CheckListBox1.Checked[1] then
    Memo1.Lines.Add('Subtraction: ' + IntToStr(a - b));

  if CheckListBox1.Checked[2] then
    Memo1.Lines.Add('Multiplication: ' + IntToStr(a * b));

  if CheckListBox1.Checked[3] then
  begin
    if b <> 0 then
      Memo1.Lines.Add('Division: ' + IntToStr(a div b))
    else
      Memo1.Lines.Add('Checkbox Error: Division by zero');
  end;

  //  RadioGroup logic
  case RadioGroup1.ItemIndex of
    0: // Addition
      resultValue := a + b;

    1: // Subtraction
      resultValue := a - b;

    2: // Multiplication
      resultValue := a * b;

    3: // Division
      begin
        if b <> 0 then
          resultValue := a div b
        else
        begin
          edtTotal.Text := 'Error: Division by zero';
          Exit;
        end;
      end;

    else
      begin
        edtTotal.Text := 'Invalid operation';
        Exit;
      end;
  end;

  edtTotal.Text := IntToStr(resultValue);
end;

end.

