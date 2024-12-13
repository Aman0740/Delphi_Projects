unit ProjectForm1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.CheckLst;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    CheckListBox1: TCheckListBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    function ValidateInputs(out a, b, c: Integer): Boolean;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function TForm1.ValidateInputs(out a, b, c: Integer): Boolean;
begin
  Result := False;
  Memo1.Clear; // Clear previous results
  // Validate and convert input fields
  if not TryStrToInt(Edit1.Text, a) then
  begin
    ShowMessage('Please enter a valid integer in Edit1.');
    Exit;
  end;
  if not TryStrToInt(Edit2.Text, b) then
  begin
    ShowMessage('Please enter a valid integer in Edit2.');
    Exit;
  end;
  if not TryStrToInt(Edit3.Text, c) then
  begin
    ShowMessage('Please enter a valid integer in Edit3.');
    Exit;
  end;
  Result := True; // Inputs are valid
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  a, b, c: Integer;
begin
  if not ValidateInputs(a, b, c) then
    Exit;

  // Perform operations based on checkbox selections
  if CheckListBox1.Checked[0] then // Addition
    Memo1.Lines.Add(Format('Addition: %d', [a + b + c]));

  if CheckListBox1.Checked[1] then // Subtraction
    Memo1.Lines.Add(Format('Subtraction: %d', [a - b - c]));

  if CheckListBox1.Checked[2] then // Multiplication
    Memo1.Lines.Add(Format('Multiplication: %d', [a * b * c]));

  if CheckListBox1.Checked[3] then // Division
  begin
    if (b = 0) or (c = 0) then
      Memo1.Lines.Add('Division: Cannot divide by zero.')
    else
      Memo1.Lines.Add(Format('Division: %.2f', [a / b / c])); // Result as floating-point
  end;

  // If no checkboxes are selected
  if Memo1.Lines.Count = 0 then
    Memo1.Lines.Add('No operations selected. Please select an operation.');
end;

end.

