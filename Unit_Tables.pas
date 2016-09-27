unit Unit_Tables;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.ValEdit, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.CheckLst, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Mask,
  ToolPanels, OverbyteIcsWndControl, OverbyteIcsPing, Vcl.Menus;

type
  TForm_Tables = class(TForm)
    Ping1: TPing;
    Connect: TCheckBox;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    PageControlBase: TPageControl;
    join: TTabSheet;
    simple: TTabSheet;
    PageControl1: TPageControl;
    PageC: TPageControl;
    TabSheet9: TTabSheet;
    GridPanel6: TGridPanel;
    Label10: TLabel;
    EditSearch_einrihtung: TEdit;
    Grid_einruchtung: TDBGrid;
    TabSheet11: TTabSheet;
    GridPanel8: TGridPanel;
    Label12: TLabel;
    EditSearch_personal: TEdit;
    DBGrid10: TDBGrid;
    TabSheet12: TTabSheet;
    DBGrid11: TDBGrid;
    Panel1: TPanel;
    Label13: TLabel;
    EditSearch_werkstatt: TEdit;
    DBNavigator13: TDBNavigator;
    TabSheet13: TTabSheet;
    DBGrid12: TDBGrid;
    Panel5: TPanel;
    Label14: TLabel;
    EditSearch_etype: TEdit;
    DBNavigator14: TDBNavigator;
    TabSheet14: TTabSheet;
    DBGrid13: TDBGrid;
    Panel6: TPanel;
    Label15: TLabel;
    EditSearch_komplex: TEdit;
    DBNavigator15: TDBNavigator;
    TabSheet15: TTabSheet;
    Panel8: TPanel;
    Label16: TLabel;
    EditSearch_funktion: TEdit;
    DBNavigator16: TDBNavigator;
    PageControl_Join: TPageControl;
    TabSheet_PPR: TTabSheet;
    GridPanel4: TGridPanel;
    Grid_ppr: TDBGrid;
    Label2: TLabel;
    EditSearch_ppr: TEdit;
    TabSheet6: TTabSheet;
    GridPanel2: TGridPanel;
    Label6: TLabel;
    EditSearch_einrihtung_funktion: TEdit;
    Grid_einrichtung_funktion: TDBGrid;
    GridPanel1: TGridPanel;
    Button2: TButton;
    Button5: TButton;
    DBNavigator4: TDBNavigator;
    Button6: TButton;
    DBGrid14: TDBGrid;
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit8Change(Sender: TObject);
    procedure EditSearch_pprChange(Sender: TObject);
    procedure EditSearch_einrihtungChange(Sender: TObject);
    procedure EditSearch_einrihtung_funktionChange(Sender: TObject);
    procedure EditSearch_personalChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Tables: TForm_Tables;
  CaptionEdit : String;

implementation

{$R *.dfm}

uses Unit_Model, Unit_Personal, Unit_Werkstatt, Unit_Main, Unit_Edit_ppr,
  Unit_Edit_ef;



procedure TForm_Tables.EditSearch_einrihtungChange(Sender: TObject);
Var h2 : String;
begin
  h2 :=QuotedStr('%'+EditSearch_einrihtung.Text+'%');
  With DataModuleDB do
    begin
      ADODataSet_Cust_einrichtung.Close;
      ADODataSet_Cust_einrichtung.CommandText :='SELECT einrichtung.id_einrichtung,werkstatt.namen,etype.namen,komplex.namen,'+
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
      ADODataSet_Cust_einrichtung.Open;
    end;
end;

procedure TForm_Tables.EditSearch_einrihtung_funktionChange(Sender: TObject);
Var h2 : String;
begin
  h2 :=QuotedStr('%'+EditSearch_einrihtung_funktion.Text+'%');
  With DataModuleDB do
    begin
      ADODataSet_Cust_einrichtung_funktion.Close;
      ADODataSet_Cust_einrichtung_funktion.CommandText := 'SELECT einrichtung_funktion.id_ef,werkstatt.namen,etype.namen,einrichtung.namen, '+
                                  'einrichtung.einzig_nummer,funktion.namen,einrichtung_funktion.period, '+
                                  'einrichtung_funktion.haftung,einrichtung_funktion.typen,einrichtung_funktion.mittel, '+
                                  'einrichtung_funktion.link,einrichtung_funktion.briefing '+
                                  'FROM einrichtung_funktion '+
                                  'INNER JOIN einrichtung ON einrichtung_funktion.id_einrichtung = einrichtung.id_einrichtung '+
                                  'INNER JOIN funktion ON einrichtung_funktion.id_funktion = funktion.id_funktion '+
                                  'LEFT OUTER JOIN werkstatt ON einrichtung.id_werkstatt = werkstatt.id_werkstatt '+
                                  'LEFT OUTER JOIN etype ON einrichtung.id_etype = etype.id_etype '+
                                  'WHERE werkstatt.namen ILIKE '+h2+'  OR '+
                                  'etype.namen ILIKE '+h2+'  OR '+
                                  'einrichtung.namen ILIKE '+h2+'  OR '+
                                  'einrichtung.einzig_nummer ILIKE '+h2+'  OR '+
                                  'funktion.namen ILIKE '+h2+'  OR '+
                                  'einrichtung_funktion.haftung ILIKE '+h2+'  OR '+
                                  'einrichtung_funktion.typen ILIKE '+h2+'  OR '+
                                  'einrichtung_funktion.mittel ILIKE '+h2+'  OR '+
                                  'einrichtung_funktion.link ILIKE '+h2+'  OR '+
                                  'einrichtung_funktion.briefing ILIKE '+h2+' ORDER BY einrichtung.namen ASC;';
      ADODataSet_Cust_einrichtung_funktion.Open;
    end;
end;

procedure TForm_Tables.EditSearch_personalChange(Sender: TObject);
Var h2 : String;
begin
  h2 :=QuotedStr('%'+EditSearch_personal.Text+'%');
  With DataModuleDB do
    begin
      ADODataSet_Cust_personal.Close;
      ADODataSet_Cust_personal.CommandText := 'SELECT personal.id_personal,werkstatt.namen,personal.namen1, '+
                                  'personal.namen2,personal.namen3,personal.post '+
                                  'FROM personal '+
                                  'LEFT OUTER JOIN werkstatt ON personal.id_werkstatt = werkstatt.id_werkstatt '+
                                  'WHERE werkstatt.namen LIKE '+h2+' OR '+
                                  'personal.namen1 ILIKE '+h2+' OR '+
                                  'personal.namen2 ILIKE '+h2+' OR '+
                                  'personal.namen3 ILIKE '+h2+' OR '+
                                  'personal.post ILIKE '+h2+
                                  'ORDER BY personal.namen1 ASC;';
      ADODataSet_Cust_personal.Open;
    end;
end;

procedure TForm_Tables.EditSearch_pprChange(Sender: TObject);
Var h2 : String;
begin
  If Connect.Checked then
    begin
      h2 :=QuotedStr('%'+EditSearch_ppr.Text+'%');
      With DataModuleDB do
        begin
          ADODataSet_Cust_ppr.Close;
          ADODataSet_Cust_ppr.CommandText :='SELECT ppr.id_ppr,werkstatt.namen,einrichtung.namen,einrichtung.einzig_nummer, '+
                                      'personal.namen1,funktion.namen,einrichtung_funktion.period,einrichtung_funktion.haftung, '+
                                      'einrichtung_funktion.typen,einrichtung_funktion.link,cast (ppr.date_erstellung as timestamp(0)), '+
                                      'cast (ppr.date_anderung as timestamp(0)),cast (ppr.date_end as timestamp(0)),ppr.betriebszeit, '+
                                      'ppr.laufzeit,ppr.status,ppr.briefing '+
                                      'FROM ppr '+
                                      'INNER JOIN einrichtung_funktion ON ppr.id_ef = einrichtung_funktion.id_ef '+
                                      'INNER JOIN personal ON ppr.id_personal = personal.id_personal '+
                                      'INNER JOIN einrichtung ON einrichtung_funktion.id_einrichtung = einrichtung.id_einrichtung '+
                                      'LEFT OUTER JOIN werkstatt ON einrichtung.id_werkstatt = werkstatt.id_werkstatt '+
                                      'INNER JOIN funktion ON einrichtung_funktion.id_funktion = funktion.id_funktion '+
                                      'WHERE werkstatt.namen ILIKE '+h2+' OR '+
                                      'einrichtung.namen ILIKE '+h2+' OR '+
                                      'einrichtung.einzig_nummer ILIKE '+h2+' OR '+
                                      'personal.namen1 ILIKE '+h2+' OR '+
                                      'funktion.namen ILIKE '+h2+' OR '+
                                      'einrichtung_funktion.haftung ILIKE '+h2+' OR '+
                                      'einrichtung_funktion.typen ILIKE '+h2+' OR '+
                                      'einrichtung_funktion.link ILIKE '+h2+' OR '+
                                      'ppr.briefing ILIKE '+h2+' ORDER BY ppr.date_erstellung ASC;';
          ADODataSet_Cust_ppr.Open;
        end;
    end;
end;

procedure TForm_Tables.FormCreate(Sender: TObject);
begin
  if Connect.Checked then DataModuleDB.ConT;
end;

procedure TForm_Tables.N2Click(Sender: TObject);
begin
  ShowMessage('print');
end;

procedure TForm_Tables.Button2Click(Sender: TObject);
begin
  If Connect.Checked then
    begin
      Enabled :=False;
      case PageControl_Join.TabIndex of
        0:  begin
              CaptionEdit :='���������� � ������� ���';
              Form_Edit_ppr.Show;
        end;
        1:  begin
              CaptionEdit :='���������� � ������� ������ �� ������������';
              Form_Edit_ef.Show;
        end;
        2:  CaptionEdit :='���������� � ������� ���';
      end;
    end;
end;

procedure TForm_Tables.Button5Click(Sender: TObject);
Var i: Integer;
begin
  If Connect.Checked then
    begin
      Enabled :=False;
      case PageControl_Join.TabIndex of
        0:  begin
              CaptionEdit :='��������� � ������� ���';
              Form_Edit_ppr.Show;
        end;
        1:  begin
              CaptionEdit :='��������� � ������� ������ �� ������������';
              Form_Edit_ef.Show;
        end;
        2:  CaptionEdit :='��������� � ������� ���';
      end;
    end;
end;

procedure TForm_Tables.Button6Click(Sender: TObject);
Var i: byte;
begin
  If Connect.Checked then
    begin
      i:= MessageDlg('�� ������������� ������ �������?',mtWarning, mbYesNo, 0);
      Case i of
        6:  Case PageControl_Join.TabIndex of
              0:  Form_Edit_ppr.DeletePPR;
              1:  Form_Edit_ef.DeleteEF;
        End;
        7: Grid_ppr.SetFocus;
      End;
    end;
end;

procedure TForm_Tables.Edit3Change(Sender: TObject);
Var h2 : String;
begin
  h2 :=QuotedStr('%'+EditSearch_werkstatt.Text+'%');
  With DataModuleDB do
    begin
      ADODataSet_werkstatt.Close;
      ADODataSet_werkstatt.CommandText :='SELECT * FROM werkstatt WHERE namen ILIKE '+h2+' ORDER BY namen;';
      ADODataSet_werkstatt.Open;
    end;
end;

procedure TForm_Tables.Edit4Change(Sender: TObject);
Var h2 : String;
begin
  h2 :=QuotedStr('%'+EditSearch_etype.Text+'%');
  With DataModuleDB do
    begin
      ADODataSet_etype.Close;
      ADODataSet_etype.CommandText :='SELECT * FROM etype WHERE namen ILIKE '+h2+' ORDER BY namen;';
      ADODataSet_etype.Open;
    end;
end;

procedure TForm_Tables.Edit5Change(Sender: TObject);
Var h2 : String;
begin
  h2 :=QuotedStr('%'+EditSearch_komplex.Text+'%');
  With DataModuleDB do
    begin
      ADODataSet_komplex.Close;
      ADODataSet_komplex.CommandText :='SELECT * FROM komplex WHERE namen ILIKE '+h2+' OR briefing ILIKE '+h2+' OR photo ILIKE '+h2+' ORDER BY namen;';
      ADODataSet_komplex.Open;
    end;
end;

procedure TForm_Tables.Edit8Change(Sender: TObject);
Var h2 : String;
begin
  h2 :=QuotedStr('%'+EditSearch_funktion.Text+'%');
  With DataModuleDB do
    begin
      ADODataSet_funktion.Close;
      ADODataSet_funktion.CommandText :='SELECT * FROM funktion WHERE namen ILIKE '+h2+' OR briefing ILIKE '+h2+';';
      ADODataSet_funktion.Open;
    end;
end;

end.
