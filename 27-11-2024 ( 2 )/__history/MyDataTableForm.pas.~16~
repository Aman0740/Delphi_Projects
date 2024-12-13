unit MyDataTableForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1DataTable = class(TForm)
    edtName: TEdit;
    lblName: TLabel;
    lblRollNo: TLabel;
    lblAge: TLabel;
    lblCource: TLabel;
    lblMarks: TLabel;
    btnSubmit: TButton;
    btnCall: TButton;
    edtRollNo: TEdit;
    edtAge: TEdit;
    edtCource: TEdit;
    edtMarks: TEdit;
    procedure btnCallClick(Sender: TObject);
    procedure btnSubmitClick(Sender: TObject);
  private
    FDataList: TStringList; // Holds the submitted data
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property DataList: TStringList read FDataList; // Expose the data for other forms
  end;

var
  Form1DataTable: TForm1DataTable;

implementation

uses
  MyDataTableForm2;

{$R *.dfm}

constructor TForm1DataTable.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FDataList := TStringList.Create; // Initialize the data list
  // Add a header row for the table
  FDataList.Add(Format('%-10s %-10s %-5s %-10s %-5s', ['Name', 'Roll No', 'Age', 'Course', 'Marks']));
end;

destructor TForm1DataTable.Destroy;
begin
  FDataList.Free; // Free the data list when the form is destroyed
  inherited Destroy;
end;

procedure TForm1DataTable.btnCallClick(Sender: TObject);
begin
  if not Assigned(FormMyDataTable2) then
    FormMyDataTable2 := TFormMyDataTable2.Create(Self);
  FormMyDataTable2.Show;
end;

procedure TForm1DataTable.btnSubmitClick(Sender: TObject);
var
  Data: string;
begin
  // Format the data as a table row
  Data := Format('%-10s %-10s %-5s %-10s %-5s',
    [edtName.Text, edtRollNo.Text, edtAge.Text, edtCource.Text, edtMarks.Text]);

  // Add the formatted data to the list
  FDataList.Add(Data);

  // Notify the user
  ShowMessage('Data submitted successfully!');
end;

end.

