program PPR;

uses
  Vcl.Forms,
  Unit_Main in 'Unit_Main.pas' {Form_Main},
  Unit_Tables in 'Unit_Tables.pas' {Form_Tables},
  Unit_Model in 'Unit_Model.pas' {DataModuleDB: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  Unit_Personal in 'Unit_Personal.pas' {Form_Personal},
  Unit_Edit_ppr in 'Unit_Edit_ppr.pas' {Form_Edit_ppr},
  Unit_Function in 'Unit_Function.pas',
  Unit_Edit_ef in 'Unit_Edit_ef.pas' {Form_Edit_ef};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Emerald Light Slate');
  Application.CreateForm(TDataModuleDB, DataModuleDB);
  Application.CreateForm(TForm_Tables, Form_Tables);
  Application.CreateForm(TForm_Personal, Form_Personal);
  Application.CreateForm(TForm_Edit_ppr, Form_Edit_ppr);
  Application.CreateForm(TForm_Edit_ef, Form_Edit_ef);
  Application.Run;
end.
