object Form_Personal: TForm_Personal
  Left = 0
  Top = 0
  Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1055#1077#1088#1089#1086#1085#1072#1083
  ClientHeight = 440
  ClientWidth = 440
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object DBEdit2: TDBEdit
    Left = 208
    Top = 72
    Width = 121
    Height = 26
    DataField = 'namen2'
    DataSource = DataModuleDB.Data_personal
    TabOrder = 0
  end
  object GridPanel2: TGridPanel
    Left = 0
    Top = 0
    Width = 440
    Height = 399
    Align = alClient
    ColumnCollection = <
      item
        SizeStyle = ssAbsolute
        Value = 142.000000000000000000
      end
      item
        Value = 100.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 1
        Control = DBEdit1
        Row = 0
      end
      item
        Column = 1
        Control = DBEdit3
        Row = 1
      end
      item
        Column = 1
        Control = DBEdit4
        Row = 2
      end
      item
        Column = 1
        Control = DBEdit5
        Row = 3
      end
      item
        Column = 0
        Control = Label1
        Row = 0
      end
      item
        Column = 0
        Control = Label2
        Row = 1
      end
      item
        Column = 0
        Control = Label3
        Row = 2
      end
      item
        Column = 0
        Control = Label4
        Row = 3
      end
      item
        Column = 0
        Control = Label5
        Row = 4
      end
      item
        Column = 1
        Control = ListBox_werkstatt_namen
        Row = 4
      end>
    RowCollection = <
      item
        SizeStyle = ssAbsolute
        Value = 35.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 35.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 35.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 35.000000000000000000
      end
      item
        Value = 100.000000000000000000
      end
      item
        SizeStyle = ssAuto
      end>
    TabOrder = 1
    object DBEdit1: TDBEdit
      AlignWithMargins = True
      Left = 148
      Top = 6
      Width = 286
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      DataField = 'namen1'
      DataSource = DataModuleDB.Data_personal
      TabOrder = 0
      ExplicitHeight = 26
    end
    object DBEdit3: TDBEdit
      AlignWithMargins = True
      Left = 148
      Top = 41
      Width = 286
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      DataField = 'namen2'
      DataSource = DataModuleDB.Data_personal
      TabOrder = 1
      ExplicitHeight = 26
    end
    object DBEdit4: TDBEdit
      AlignWithMargins = True
      Left = 148
      Top = 76
      Width = 286
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      DataField = 'namen3'
      DataSource = DataModuleDB.Data_personal
      TabOrder = 2
      ExplicitHeight = 26
    end
    object DBEdit5: TDBEdit
      AlignWithMargins = True
      Left = 148
      Top = 111
      Width = 286
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      DataField = 'post'
      DataSource = DataModuleDB.Data_personal
      TabOrder = 3
      ExplicitHeight = 26
    end
    object Label1: TLabel
      AlignWithMargins = True
      Left = 6
      Top = 6
      Width = 60
      Height = 18
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      Alignment = taCenter
      Caption = #1060#1072#1084#1080#1083#1080#1103
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 6
      Top = 41
      Width = 28
      Height = 18
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      Alignment = taCenter
      Caption = #1048#1084#1103
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 6
      Top = 76
      Width = 66
      Height = 18
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      Alignment = taCenter
      Caption = #1054#1090#1095#1077#1089#1090#1074#1086
    end
    object Label4: TLabel
      AlignWithMargins = True
      Left = 6
      Top = 111
      Width = 77
      Height = 18
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      Alignment = taCenter
      Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
    end
    object Label5: TLabel
      AlignWithMargins = True
      Left = 6
      Top = 241
      Width = 55
      Height = 18
      Margins.Left = 5
      Margins.Top = 100
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      Alignment = taCenter
      Caption = #1059#1095#1072#1089#1090#1086#1082
    end
    object ListBox_werkstatt_namen: TListBox
      AlignWithMargins = True
      Left = 148
      Top = 146
      Width = 286
      Height = 247
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      ItemHeight = 18
      TabOrder = 4
    end
  end
  object GridPanel1: TGridPanel
    Left = 0
    Top = 399
    Width = 440
    Height = 41
    Align = alBottom
    ColumnCollection = <
      item
        Value = 25.009149878579270000
      end
      item
        Value = 24.994559449174980000
      end
      item
        Value = 24.995945437400610000
      end
      item
        Value = 25.000345234845140000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = Button2
        Row = 0
      end
      item
        Column = 3
        Control = Button4
        Row = 0
      end>
    RowCollection = <
      item
        Value = 100.000000000000000000
      end>
    TabOrder = 2
    object Button2: TButton
      AlignWithMargins = True
      Left = 6
      Top = 6
      Width = 99
      Height = 29
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button4: TButton
      AlignWithMargins = True
      Left = 333
      Top = 6
      Width = 101
      Height = 29
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      TabOrder = 1
      OnClick = Button4Click
    end
  end
end
