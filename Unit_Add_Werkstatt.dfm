object Form_Werkstatt: TForm_Werkstatt
  Left = 0
  Top = 0
  Caption = #1056#1077#1076#1072#1082#1090#1086#1088' '#1062#1077#1093#1086#1074
  ClientHeight = 440
  ClientWidth = 440
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    440
    440)
  PixelsPerInch = 96
  TextHeight = 18
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 440
    Height = 334
    Align = alClient
    DataSource = DataModuleDB.Data_werkstatt
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -15
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'namen'
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1062#1077#1093#1072
        Visible = True
      end>
  end
  object GridPanel1: TGridPanel
    Left = 0
    Top = 334
    Width = 440
    Height = 106
    Align = alBottom
    ColumnCollection = <
      item
        Value = 100.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = Label1
        Row = 0
      end
      item
        Column = 0
        Control = DBEdit1
        Row = 1
      end
      item
        Column = 0
        Control = GridPanel2
        Row = 2
      end>
    RowCollection = <
      item
        SizeStyle = ssAbsolute
        Value = 30.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 35.000000000000000000
      end
      item
        SizeStyle = ssAuto
      end>
    TabOrder = 1
    object Label1: TLabel
      AlignWithMargins = True
      Left = 6
      Top = 6
      Width = 114
      Height = 18
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1062#1077#1093#1072' :'
    end
    object DBEdit1: TDBEdit
      AlignWithMargins = True
      Left = 6
      Top = 36
      Width = 428
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      DataField = 'namen'
      DataSource = DataModuleDB.Data_werkstatt
      TabOrder = 0
      ExplicitHeight = 26
    end
    object GridPanel2: TGridPanel
      Left = 1
      Top = 66
      Width = 438
      Height = 41
      Align = alClient
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
          Column = 2
          Control = Button3
          Row = 0
        end
        item
          Column = 1
          Control = Button1
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
      TabOrder = 1
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
      object Button3: TButton
        AlignWithMargins = True
        Left = 223
        Top = 6
        Width = 98
        Height = 29
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alClient
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 1
        OnClick = Button3Click
      end
      object Button1: TButton
        AlignWithMargins = True
        Left = 115
        Top = 6
        Width = 98
        Height = 29
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alClient
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 2
        OnClick = Button1Click
      end
      object Button4: TButton
        AlignWithMargins = True
        Left = 331
        Top = 6
        Width = 101
        Height = 29
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alClient
        Caption = #1054#1090#1084#1077#1085#1080#1090#1100
        TabOrder = 3
        OnClick = Button4Click
      end
    end
  end
  object ValueWerkstatt: TValueListEditor
    Left = 176
    Top = 28
    Width = 256
    Height = 300
    Anchors = []
    TabOrder = 2
    Visible = False
    ColWidths = (
      150
      100)
  end
end
