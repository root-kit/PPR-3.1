unit Unit_Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Data.DB, Data.Win.ADODB,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TForm_Main = class(TForm)
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Main: TForm_Main;

implementation

{$R *.dfm}

uses Unit_Model, Unit_Tables, Unit_Personal, Unit_Werkstatt;

procedure TForm_Main.Button2Click(Sender: TObject);
begin
  Form_Tables.Show;
  Form_Main.Hide;
end;

procedure TForm_Main.Button5Click(Sender: TObject);
begin
  Form_Personal.Show;
end;

procedure TForm_Main.FormShow(Sender: TObject);
begin
  Repaint;
end;

end.
