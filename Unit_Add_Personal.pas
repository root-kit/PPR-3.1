unit Unit_Add_Personal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.Grids, Vcl.ValEdit;

type
  TForm_Personal = class(TForm)
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    GridPanel2: TGridPanel;
    ListBox_werkstatt_namen: TListBox;
    GridPanel1: TGridPanel;
    Button2: TButton;
    Button4: TButton;
    procedure Button4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Personal: TForm_Personal;

implementation

{$R *.dfm}

uses Unit_Model, Unit_Add_Werkstatt, Unit_Tables, Unit_Main;

procedure TForm_Personal.Button2Click(Sender: TObject);
begin
  With DataModuleDB do
    If ListBox_werkstatt_namen.ItemIndex>-1 then begin
//      If ADO_personal.Fields[2]
    end;
end;

procedure TForm_Personal.Button4Click(Sender: TObject);
begin
  With DataModuleDB do
    begin
      If ADO_personal.Modified then ADO_personal.Append;
    end;
end;

procedure TForm_Personal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form_Tables.Enabled :=True;
  Form_Tables.Show;

end;

procedure TForm_Personal.FormShow(Sender: TObject);
Var i: Word;
begin
  ListBox_werkstatt_namen.Clear;
  For i:=1 to Form_Werkstatt.ValueWerkstatt.Strings.Count do
    begin
      ListBox_werkstatt_namen.Items.Add(Form_Werkstatt.ValueWerkstatt.Cells[1,i]);
      If ListBox_werkstatt_namen.Items[ListBox_werkstatt_namen.Count-1] = DataModuleDB.ADO_personal.FieldByName('namen').AsString then
      ListBox_werkstatt_namen.ItemIndex :=ListBox_werkstatt_namen.Count-1;
    end;

end;

end.
