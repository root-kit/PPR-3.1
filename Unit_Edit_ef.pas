unit Unit_Edit_ef;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.ComCtrls;

type
  TForm_Edit_ef = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GridPanel1: TGridPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SelectID_ef: TLabel;
    ComboBox_period: TComboBox;
    Label11: TLabel;
    Memo_briefing: TMemo;
    TabSheet3: TTabSheet;
    GridPanel3: TGridPanel;
    DBNavigator2: TDBNavigator;
    Label15: TLabel;
    EditSearch_einrichtung: TEdit;
    Label16: TLabel;
    SelectID_einrichtung: TLabel;
    Panel1: TPanel;
    Button_Apply: TButton;
    Button_Cancel: TButton;
    Grid_einrichtung: TDBGrid;
    TabSheet4: TTabSheet;
    GridPanel4: TGridPanel;
    DBNavigator3: TDBNavigator;
    Label2: TLabel;
    EditSearch_funktion: TEdit;
    Label6: TLabel;
    SelectID_funktion: TLabel;
    Label8: TLabel;
    Edit_typen: TEdit;
    Label9: TLabel;
    Edit_link: TEdit;
    Label10: TLabel;
    Edit_mittel: TEdit;
    Label12: TLabel;
    Edit_regel: TEdit;
    Edit_huftung: TEdit;
    Grid_funktion: TDBGrid;
    procedure Button_ApplyClick(Sender: TObject);
    procedure EditSearch_einrichtungChange(Sender: TObject);
    procedure Grid_funktionCellClick(Column: TColumn);
    procedure Grid_funktionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Grid_funktionMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure Grid_einrichtungCellClick(Column: TColumn);
    procedure Grid_einrichtungMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure Grid_einrichtungKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure UpdateEF;
    procedure DeleteEF;
    procedure InsertEF(Key: string; Val: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Edit_ef: TForm_Edit_ef;

implementation

{$R *.dfm}

uses Unit_Model, Unit_Tables;

procedure TForm_Edit_ef.UpdateEF;
Var h2,dS,S : String;
    Values, Into : String;
    i: Word;
begin
    h2 :=QuotedStr(SelectID_ef.Caption);
    With DataModuleDB.ADOQuery do
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE einrichtung_funktion SET ');
        dS :=QuotedStr(Grid_einrichtung.DataSource.DataSet.FieldByName('id_einrichtung').AsString);
        SQL.Add('id_einrichtung='+dS);
        dS :=QuotedStr(Grid_funktion.DataSource.DataSet.FieldByName('id_funktion').AsString);
        SQL.Add(', id_funktion='+dS);
        dS :=QuotedStr(ComboBox_period.Text);
        SQL.Add(', period='+dS);
        dS :=QuotedStr(Edit_huftung.Text);
        SQL.Add(', haftung='+dS);
        dS :=QuotedStr(Edit_mittel.Text);
        SQL.Add(', mittel='+dS);
        dS :=QuotedStr(Edit_typen.Text);
        SQL.Add(', typen='+dS);
        dS :=QuotedStr(Edit_link.Text);
        SQL.Add(', link='+dS);
        If Memo_briefing.Lines.Text<>'' then
          begin
            dS :=QuotedStr(Memo_briefing.Lines.Text);
            SQL.Add(', briefing='+dS);
          end;
        SQL.Add('WHERE id_ef='+h2+';');
        Memo_briefing.Lines.Clear;
        Memo_briefing.Lines.AddStrings(SQL);
        Memo_briefing.CopyToClipboard;
  //      For i:=0 to SQL.Count-1 do ShowMessage(SQL[i]);
        ExecSQL;
      end;

end;

procedure TForm_Edit_ef.DeleteEF;
Var h2 : String;
begin
  h2 :=QuotedStr(SelectID_ef.Caption);
  With DataModuleDB.ADOQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM einrichtung_funktion WHERE id_ef IN ('+h2+');');
      Memo_briefing.Lines.Clear;
      Memo_briefing.Lines.AddStrings(SQL);
      Memo_briefing.CopyToClipboard;
  //      For i:=0 to SQL.Count-1 do ShowMessage(SQL[i]);
      Open;
    end;
end;

procedure TForm_Edit_ef.InsertEF(Key: string; Val: string);
Var dS,S : String;
    Values, Into : String;
    i: Word;
begin
  With DataModuleDB.ADOQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Add('INSERT INTO einrichtung_funktion ');
//        id_ef   id_einrichtung   id_funktion   period   haftung   typen   link   mittel   briefing
      Into :='(id_einrichtung,id_funktion,';
      Values :='VALUES ('+QuotedStr(Grid_einrichtung.DataSource.DataSet.FieldByName('id_einrichtung').AsString);
      Values :=Values+', '+QuotedStr(Grid_funktion.DataSource.DataSet.FieldByName('id_funktion').AsString);
      If Edit_typen.Text<>'' then
        begin
          Into :=Into+', typen';
          Values :=Values+', '+QuotedStr(Edit_typen.Text);
        end;
      If Edit_link.Text<>'' then
        begin
          Into :=Into+', link';
          Values :=Values+', '+QuotedStr(Edit_link.Text);
        end;
      If Edit_mittel.Text<>'' then
        begin
          Into :=Into+', mittel';
          Values :=Values+', '+QuotedStr(Edit_mittel.Text);
        end;
      If Edit_regel.Text<>'' then
        begin
          Into :=Into+', regel';
          Values :=Values+', '+QuotedStr(Edit_regel.Text);
        end;
      If Edit_huftung.Text<>'' then
        begin
          Into :=Into+', huftung';
          Values :=Values+', '+QuotedStr(Edit_huftung.Text);
        end;
      If ComboBox_period.Text<>'' then
        begin
          Into :=Into+', period';
          Values :=Values+', '+QuotedStr(ComboBox_period.Text);
        end;
      If Memo_briefing.Lines.Text<>'' then
        begin
          Into :=Into+', briefing';
          Values :=Values+QuotedStr(Memo_briefing.Lines.Text)+')';
        end;
      Into :=Into+')';
      Values :=Values+')';
      SQL.Add(Into+' '+Values+';');
      Memo_briefing.Lines.Clear;
      Memo_briefing.Lines.AddStrings(SQL);
      Memo_briefing.CopyToClipboard;
  //      For i:=0 to SQL.Count-1 do ShowMessage(SQL[i]);
      Open;
    end;
end;

procedure TForm_Edit_ef.Button_ApplyClick(Sender: TObject);
begin
  If CaptionEdit='Изменение в Таблице Работы на Оборудовании' then
      UpdateEF else if CaptionEdit = 'Добавление в Таблицу Работы на Оборудовании' then
      InsertEF('q','q') else if CaptionEdit = 'Удаление из Таблицы Работы на Оборудовании' then
      DeleteEF;
//id_ef   id_einrichtung   id_funktion   period   haftung   typen   link   mittel   briefing
end;

procedure TForm_Edit_ef.EditSearch_einrichtungChange(Sender: TObject);
Var h2 : String;
begin
  h2 :=QuotedStr('%'+EditSearch_einrichtung.Text+'%');
  With DataModuleDB do
    begin
      ADODataSet_Share_einrichtung.Close;
      ADODataSet_Share_einrichtung.CommandText :='SELECT einrichtung.id_einrichtung,werkstatt.namen,etype.namen,komplex.namen,'+
                                  'einrichtung.klasse,einrichtung.namen,einrichtung.model,einrichtung.serien_nummer,'+
                                  'einrichtung.einzig_nummer,einrichtung.briefing,einrichtung.photo '+
                                  'FROM einrichtung '+
                                  'LEFT OUTER JOIN werkstatt ON einrichtung.id_werkstatt = werkstatt.id_werkstatt '+
                                  'LEFT OUTER JOIN etype ON einrichtung.id_etype = etype.id_etype '+
                                  'LEFT OUTER JOIN komplex ON einrichtung.id_komplex = komplex.id_komplex '+
                                  'WHERE werkstatt.namen ILIKE '+h2+' OR '+
                                  'etype.namen ILIKE '+h2+' OR '+
                                  'komplex.namen ILIKE '+h2+' OR '+
                                  'einrichtung.namen ILIKE '+h2+' OR '+
                                  'einrichtung.model ILIKE '+h2+' OR '+
                                  'einrichtung.serien_nummer ILIKE '+h2+' OR '+
                                  'einrichtung.einzig_nummer ILIKE '+h2+' OR '+
                                  'einrichtung.briefing ILIKE '+h2+' OR '+
                                  'einrichtung.photo ILIKE '+h2+' '+
                                  'ORDER BY einrichtung.namen ASC;';
      ADODataSet_Share_einrichtung.Open;
    end;
end;

procedure TForm_Edit_ef.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  Form_Tables.Enabled :=True;
  CanClose :=False;
  Form_Edit_ef.Hide;
end;

procedure TForm_Edit_ef.FormShow(Sender: TObject);
Var h2,dS : String;
    i : Word;
    DT : TDateTime;
begin
  Caption :=CaptionEdit;
  If Caption='Изменение в Таблице Работы на Оборудовании' then
    begin
      h2 :=QuotedStr(Form_Tables.Grid_einrichtung_funktion.DataSource.DataSet.FieldByName('id_ef').AsString);
      With DataModuleDB.ADOQuery do
        begin
          Close;
          SQL.Clear;
          SQL.Add('SELECT id_einrichtung,id_funktion,period,haftung,typen,link,mittel,briefing FROM einrichtung_funktion WHERE id_ef='+h2+';');
          Open;
          SelectID_einrichtung.Caption :=FieldByName('id_einrichtung').AsString;
          SelectID_funktion.Caption :=FieldByName('id_funktion').AsString;
          ComboBox_period.Text :=FieldByName('period').AsString;
          Edit_typen.Text :=FieldByName('typen').AsString;
          Edit_link.Text :=FieldByName('link').AsString;
          Edit_mittel.Text :=FieldByName('mittel').AsString;
          Edit_regel.Text :=FieldByName('period').AsString;
          Edit_huftung.Text :=FieldByName('haftung').AsString;
          Memo_briefing.Lines.Text :=FieldByName('briefing').AsString;
        end;
      EditSearch_einrichtung.Clear;
      EditSearch_funktion.Clear;
      DataModuleDB.ADODataSet_Share_einrichtung.Locate('id_einrichtung', SelectID_einrichtung.Caption, []);
      DataModuleDB.ADODataSet_Share_funktion.Locate('id_funktion', SelectID_funktion.Caption, []);
    end else
    begin

    end;
end;

procedure TForm_Edit_ef.Grid_einrichtungCellClick(Column: TColumn);
begin
  SelectID_einrichtung.Caption :=Grid_einrichtung.DataSource.DataSet.FieldByName('id_ef').AsString;
end;

procedure TForm_Edit_ef.Grid_einrichtungKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    9,33,34,38,40 : SelectID_einrichtung.Caption :=Grid_einrichtung.DataSource.DataSet.FieldByName('id_ef').AsString;
  End;
end;

procedure TForm_Edit_ef.Grid_einrichtungMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  SelectID_einrichtung.Caption :=Grid_einrichtung.DataSource.DataSet.FieldByName('id_ef').AsString;
end;

procedure TForm_Edit_ef.Grid_funktionCellClick(Column: TColumn);
begin
  SelectID_funktion.Caption :=Grid_funktion.DataSource.DataSet.FieldByName('id_ef').AsString;
end;

procedure TForm_Edit_ef.Grid_funktionKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key of
    9,33,34,38,40 : SelectID_funktion.Caption :=Grid_funktion.DataSource.DataSet.FieldByName('id_ef').AsString;
  End;
end;

procedure TForm_Edit_ef.Grid_funktionMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  SelectID_funktion.Caption :=Grid_funktion.DataSource.DataSet.FieldByName('id_ef').AsString;
end;

end.

