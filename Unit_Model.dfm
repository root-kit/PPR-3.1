object DataModuleDB: TDataModuleDB
  OldCreateOrder = False
  Height = 498
  Width = 822
  object ADODataSet_komplex: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from komplex'
    Parameters = <>
    Left = 47
    Top = 390
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 'Provider=MSDASQL.1;Persist Security Info=False;Data Source=ppr;'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 63
    Top = 302
  end
  object ADODataSet_werkstatt: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from werkstatt order by id_werkstatt'
    Parameters = <>
    Left = 276
    Top = 390
  end
  object ADODataSet_Cust_personal: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 
      'SELECT personal.id_personal,werkstatt.namen,personal.namen1,pers' +
      'onal.namen2,personal.namen3,'#13#10'    personal.post'#13#10'    FROM person' +
      'al'#13#10'    LEFT OUTER JOIN werkstatt ON personal.id_werkstatt = wer' +
      'kstatt.id_werkstatt'#13#10'    ORDER BY personal.namen1 ASC;'
    Parameters = <>
    Left = 183
    Top = 6
  end
  object DataSource_werkstatt: TDataSource
    DataSet = ADODataSet_werkstatt
    Left = 277
    Top = 446
  end
  object DataSource_komplex: TDataSource
    DataSet = ADODataSet_komplex
    Left = 47
    Top = 446
  end
  object ADODataSet_funktion: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from funktion'
    Parameters = <>
    Left = 157
    Top = 390
  end
  object DataSource_funktion: TDataSource
    DataSet = ADODataSet_funktion
    Left = 157
    Top = 446
  end
  object ADODataSet_etype: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from etype order by namen;'
    Parameters = <>
    Left = 396
    Top = 390
  end
  object DataSource_etype: TDataSource
    DataSet = ADODataSet_etype
    Left = 396
    Top = 446
  end
  object ADODataSet_Cust_einrichtung: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 
      'SELECT einrichtung.id_einrichtung,werkstatt.namen,etype.namen,ko' +
      'mplex.namen,'#13#10'    einrichtung.klasse,einrichtung.namen,einrichtu' +
      'ng.model,einrichtung.serien_nummer,'#13#10'    einrichtung.einzig_numm' +
      'er,einrichtung.briefing,einrichtung.photo'#13#10'    FROM einrichtung'#13 +
      #10'    LEFT OUTER JOIN werkstatt ON einrichtung.id_werkstatt = wer' +
      'kstatt.id_werkstatt'#13#10'    LEFT OUTER JOIN etype ON einrichtung.id' +
      '_etype = etype.id_etype'#13#10'    LEFT OUTER JOIN komplex ON einricht' +
      'ung.id_komplex = komplex.id_komplex'#13#10'    ORDER BY einrichtung.na' +
      'men ASC;'
    Parameters = <>
    Left = 535
    Top = 6
  end
  object DataSource_Cust_einrichtung: TDataSource
    DataSet = ADODataSet_Cust_einrichtung
    Left = 535
    Top = 62
  end
  object ADODataSet_Cust_ppr: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 
      'SELECT ppr.id_ppr,werkstatt.namen,einrichtung.namen,einrichtung.' +
      'einzig_nummer,'#13#10'    personal.namen1,funktion.namen,einrichtung_f' +
      'unktion.period,einrichtung_funktion.haftung,'#13#10'    einrichtung_fu' +
      'nktion.typen,einrichtung_funktion.link,cast (ppr.date_erstellung' +
      ' as timestamp(0)),'#13#10'    cast (ppr.date_anderung as timestamp(0))' +
      ',cast (ppr.date_end as timestamp(0)),ppr.betriebszeit,'#13#10'    ppr.' +
      'laufzeit,ppr.status,ppr.briefing'#13#10'    FROM ppr'#13#10'    INNER JOIN e' +
      'inrichtung_funktion ON ppr.id_ef = einrichtung_funktion.id_ef'#13#10' ' +
      '   INNER JOIN personal ON ppr.id_personal = personal.id_personal' +
      #13#10'    INNER JOIN einrichtung ON einrichtung_funktion.id_einricht' +
      'ung = einrichtung.id_einrichtung'#13#10'    LEFT OUTER JOIN werkstatt ' +
      'ON einrichtung.id_werkstatt = werkstatt.id_werkstatt'#13#10'    INNER ' +
      'JOIN funktion ON einrichtung_funktion.id_funktion = funktion.id_' +
      'funktion'#13#10'    ORDER BY ppr.date_erstellung ASC;'
    Parameters = <>
    Left = 50
    Top = 6
  end
  object DataSource_Cust_ppr: TDataSource
    DataSet = ADODataSet_Cust_ppr
    Left = 50
    Top = 62
  end
  object ADODataSet_Cust_einrichtung_funktion: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 
      'SELECT einrichtung_funktion.id_ef,werkstatt.namen,etype.namen,ei' +
      'nrichtung.namen,'#13#10'    einrichtung.einzig_nummer,funktion.namen,e' +
      'inrichtung_funktion.period,'#13#10'    einrichtung_funktion.haftung,ei' +
      'nrichtung_funktion.typen,einrichtung_funktion.mittel,'#13#10'    einri' +
      'chtung_funktion.link,einrichtung_funktion.briefing'#13#10'    FROM ein' +
      'richtung_funktion'#13#10'    INNER JOIN einrichtung ON einrichtung_fun' +
      'ktion.id_einrichtung = einrichtung.id_einrichtung'#13#10'    INNER JOI' +
      'N funktion ON einrichtung_funktion.id_funktion = funktion.id_fun' +
      'ktion'#13#10'    LEFT OUTER JOIN werkstatt ON einrichtung.id_werkstatt' +
      ' = werkstatt.id_werkstatt'#13#10'    LEFT OUTER JOIN etype ON einricht' +
      'ung.id_etype = etype.id_etype'#13#10'    ORDER BY einrichtung.namen AS' +
      'C;'
    Parameters = <>
    Left = 356
    Top = 6
  end
  object DataSource_Cust_einrichtung_funktion: TDataSource
    DataSet = ADODataSet_Share_einrichtung_funktion
    Left = 356
    Top = 62
  end
  object ADOQuery: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 160
    Top = 301
  end
  object DataSource_Cust_personal: TDataSource
    DataSet = ADODataSet_Cust_personal
    Left = 183
    Top = 62
  end
  object ADODataSet_Share_einrichtung: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 
      'SELECT einrichtung.id_einrichtung,werkstatt.namen,etype.namen,ko' +
      'mplex.namen,'#13#10'    einrichtung.klasse,einrichtung.namen,einrichtu' +
      'ng.model,einrichtung.serien_nummer,'#13#10'    einrichtung.einzig_numm' +
      'er,einrichtung.briefing,einrichtung.photo'#13#10'    FROM einrichtung'#13 +
      #10'    LEFT OUTER JOIN werkstatt ON einrichtung.id_werkstatt = wer' +
      'kstatt.id_werkstatt'#13#10'    LEFT OUTER JOIN etype ON einrichtung.id' +
      '_etype = etype.id_etype'#13#10'    LEFT OUTER JOIN komplex ON einricht' +
      'ung.id_komplex = komplex.id_komplex'#13#10'    ORDER BY einrichtung.na' +
      'men ASC;'
    Parameters = <>
    Left = 191
    Top = 142
  end
  object DataSource_Share_einrichtung: TDataSource
    DataSet = ADODataSet_Share_einrichtung
    Left = 191
    Top = 198
  end
  object ADODataSet_Share_einrichtung_funktion: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 
      'SELECT einrichtung_funktion.id_ef,werkstatt.namen,etype.namen,ei' +
      'nrichtung.namen,'#13#10'    einrichtung.einzig_nummer,funktion.namen,e' +
      'inrichtung_funktion.period,'#13#10'    einrichtung_funktion.haftung,ei' +
      'nrichtung_funktion.typen,einrichtung_funktion.mittel,'#13#10'    einri' +
      'chtung_funktion.link,einrichtung_funktion.briefing'#13#10'    FROM ein' +
      'richtung_funktion'#13#10'    INNER JOIN einrichtung ON einrichtung_fun' +
      'ktion.id_einrichtung = einrichtung.id_einrichtung'#13#10'    INNER JOI' +
      'N funktion ON einrichtung_funktion.id_funktion = funktion.id_fun' +
      'ktion'#13#10'    LEFT OUTER JOIN werkstatt ON einrichtung.id_werkstatt' +
      ' = werkstatt.id_werkstatt'#13#10'    LEFT OUTER JOIN etype ON einricht' +
      'ung.id_etype = etype.id_etype'#13#10'    ORDER BY einrichtung.namen AS' +
      'C;'
    Parameters = <>
    Left = 382
    Top = 142
  end
  object DataSource_Share_einrichtung_funktion: TDataSource
    DataSet = ADODataSet_Share_einrichtung_funktion
    Left = 382
    Top = 198
  end
  object ADODataSet_Share_funktion: TADODataSet
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from funktion'
    Parameters = <>
    Left = 561
    Top = 142
  end
  object DataSource_Share_funktion: TDataSource
    DataSet = ADODataSet_Share_funktion
    Left = 561
    Top = 198
  end
end
