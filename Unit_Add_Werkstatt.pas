unit Unit_Add_Werkstatt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ValEdit;

type
  TForm_Werkstatt = class(TForm)
    DBGrid1: TDBGrid;
    GridPanel1: TGridPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    GridPanel2: TGridPanel;
    Button2: TButton;
    Button3: TButton;
    ValueWerkstatt: TValueListEditor;
    Button1: TButton;
    Button4: TButton;
    procedure Button2Click(Sender: TObject);
    function GetNewID_WerkStatt: Integer;
    procedure ReloadKeys;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Werkstatt: TForm_Werkstatt;

implementation

{$R *.dfm}

uses Unit_Model;

procedure TForm_Werkstatt.ReloadKeys;
Var i: Integer;
begin
  With DataModuleDB do
    begin
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('SELECT * FROM werkstatt ORDER BY id_werkstatt;');
      ADOQuery1.Open;
      ValueWerkstatt.Strings.Clear;
      For i:=0 to ADOQuery1.RecordCount-1 do
        begin
          ValueWerkstatt.InsertRow(ADOQuery1.FieldByName('id_werkstatt').AsString,ADOQuery1.FieldByName('namen').AsString,True);
          ADOQuery1.Next;
        end;
    end;
end;

function TForm_Werkstatt.GetNewID_WerkStatt: Integer;
begin
  With DataModuleDB do
    begin
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.Add('SELECT id_werkstatt FROM werkstatt ORDER BY id_werkstatt;');
      ADOQuery1.Open;
      ADOQuery1.Last;
      Result :=ADOQuery1.Fields[0].AsInteger;
    end;
end;

procedure TForm_Werkstatt.Button1Click(Sender: TObject);
begin
  With DataModuleDB do
    begin
      ADO_werkstatt.Insert;
      ValueWerkstatt.InsertRow(IntToStr(StrToInt(ValueWerkstatt.Keys[ValueWerkstatt.RowCount-1])+100), 'Новый цех', True);
      ADO_werkstatt.Fields[0].AsInteger :=StrToInt(ValueWerkstatt.Keys[ValueWerkstatt.RowCount-1]);
      ADO_werkstatt.Fields[1].AsString :=ValueWerkstatt.Values[ADO_werkstatt.Fields[0].AsString];
      DBEdit1.SetFocus;
      DBEdit1.SelectAll;
    end;
end;

procedure TForm_Werkstatt.Button2Click(Sender: TObject);
Var i: Integer;
begin
  With DataModuleDB do
    If ADO_werkstatt.Modified then ADO_werkstatt.Post;
end;

procedure TForm_Werkstatt.Button3Click(Sender: TObject);
Var i: Word;
begin
  Case MessageDlg('Вы действительно хотите удалить запись?', mtInformation, mbYesNo, 0) of
    6:  begin
          DataModuleDB.ADO_werkstatt.Delete;
          ReloadKeys;
    end;
  End;
end;

procedure TForm_Werkstatt.Button4Click(Sender: TObject);
begin
  Form_Werkstatt.Hide;
end;

procedure TForm_Werkstatt.FormCreate(Sender: TObject);
begin
  ReloadKeys;
end;

end.
