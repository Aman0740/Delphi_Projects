unit MyDataTableForm2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormMyDataTable2 = class(TForm)
    Memo1: TMemo;
    btnShowData: TButton;
    btnDelete: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnShowDataClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMyDataTable2: TFormMyDataTable2;

implementation

uses
  MyDataTableForm;

{$R *.dfm}

procedure TFormMyDataTable2.btnShowDataClick(Sender: TObject);
begin
  // Check if the main form and its data list are available
  if Assigned(Form1DataTable) then
  begin
    if Form1DataTable.DataList.Count > 0 then
    begin
      Memo1.Lines.Assign(Form1DataTable.DataList); // Display the data in the memo
    end
    else
    begin
      Memo1.Clear;
      ShowMessage('No data available to display.');
    end;
  end
  else
  begin
    ShowMessage('Main form is not available.');
  end;
end;

procedure TFormMyDataTable2.btnDeleteClick(Sender: TObject);
begin
  // Clear the memo and the main form's data list
  Memo1.Clear;
  if Assigned(Form1DataTable) then
  begin
    Form1DataTable.DataList.Clear;
    // Add back the header row to the data list
    Form1DataTable.DataList.Add(Format('%-10s %-10s %-5s %-10s %-5s', ['Name', 'Roll No', 'Age', 'Course', 'Marks']));
  end;

  ShowMessage('All data has been deleted.');
end;

procedure TFormMyDataTable2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FormMyDataTable2 := nil; // Properly release the form instance
end;

end.

