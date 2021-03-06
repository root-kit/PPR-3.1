unit Unit_Model;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, winsock, System.Types;

type
  IPINFO = record
  Ttl :char;
  Tos :char;
  IPFlags :char;
  OptSize :char;
  Options :^char;
end;

type
  ICMPECHO = record
  Source :longint;
  Status :longint;
  RTTime :longint;
  DataSize:Shortint;
  Reserved:Shortint;
  pData :^variant;
  i_ipinfo:IPINFO;
end;

TIcmpCreateFile =
  function():integer; {$IFDEF WIN32} stdcall; {$ENDIF}
TIcmpCloseHandle =
  procedure(var handle:integer);{$IFDEF WIN32} stdcall; {$ENDIF}
TIcmpSendEcho =
  function(var handle:integer; endereco:DWORD; buffer:variant;
  tam:WORD; IP:IPINFO; ICMP:ICMPECHO; tamicmp:DWORD;
  tempo:DWORD):DWORD;{$IFDEF WIN32} stdcall; {$ENDIF}

type
  TDataModuleDB = class(TDataModule)
    ADODataSet_komplex: TADODataSet;
    ADOConnection1: TADOConnection;
    ADODataSet_werkstatt: TADODataSet;
    ADODataSet_Cust_personal: TADODataSet;
    DataSource_werkstatt: TDataSource;
    DataSource_komplex: TDataSource;
    ADODataSet_funktion: TADODataSet;
    DataSource_funktion: TDataSource;
    ADODataSet_etype: TADODataSet;
    DataSource_etype: TDataSource;
    ADODataSet_Cust_einrichtung: TADODataSet;
    DataSource_Cust_einrichtung: TDataSource;
    ADODataSet_Cust_ppr: TADODataSet;
    DataSource_Cust_ppr: TDataSource;
    ADODataSet_Cust_einrichtung_funktion: TADODataSet;
    DataSource_Cust_einrichtung_funktion: TDataSource;
    ADOQuery: TADOQuery;
    DataSource_Cust_personal: TDataSource;
    ADODataSet_Share_einrichtung: TADODataSet;
    DataSource_Share_einrichtung: TDataSource;
    ADODataSet_Share_einrichtung_funktion: TADODataSet;
    DataSource_Share_einrichtung_funktion: TDataSource;
    ADODataSet_Share_funktion: TADODataSet;
    DataSource_Share_funktion: TDataSource;
    procedure ConT;
  private
    { Private declarations }
  end;

var
  DataModuleDB: TDataModuleDB;
  LogPing : TStrings;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}


{$R *.dfm}

procedure TDataModuleDB.ConT;
begin
  ADOConnection1.ConnectionString :='Provider=MSDASQL.1;Persist Security Info=False;Data Source=ppr;SERVER=192.168.1.27;PORT=5432;UID=postgres;PWD=12345;';
  ADOConnection1.LoginPrompt := false;
  ADOConnection1.Connected := true;
  ADOConnection1.Open('postgres','12345');
  ADODataSet_komplex.Active :=True;
  ADODataSet_werkstatt.Active :=True;
  ADODataSet_Cust_personal.Active :=True;
  ADODataSet_funktion.Active :=True;
  ADODataSet_etype.Active :=true;
  ADODataSet_Cust_einrichtung.Active :=true;
  ADODataSet_Cust_ppr.Active :=True;
  ADODataSet_Cust_einrichtung_funktion.Active :=True;
  ADODataSet_Share_einrichtung.Active :=True;
  ADODataSet_Share_einrichtung_funktion.Active :=True;
  ADODataSet_Share_funktion.Active :=True;
end;

end.
