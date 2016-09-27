object Form_Edit_ef: TForm_Edit_ef
  Left = 0
  Top = 0
  Caption = 'Form_Edit_ef'
  ClientHeight = 345
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 774
    Height = 285
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 10
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    MultiLine = True
    ParentFont = False
    Style = tsFlatButtons
    TabOrder = 0
    ExplicitWidth = 928
    ExplicitHeight = 510
    object TabSheet1: TTabSheet
      Caption = #1055#1086#1083#1103' '#1076#1083#1103' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103
      ExplicitLeft = 0
      ExplicitTop = 39
      ExplicitWidth = 920
      ExplicitHeight = 473
      object GridPanel1: TGridPanel
        Left = 0
        Top = 0
        Width = 753
        Height = 248
        Align = alLeft
        BevelOuter = bvNone
        ColumnCollection = <
          item
            SizeStyle = ssAbsolute
            Value = 200.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 150.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 120.000000000000000000
          end
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
            Control = Label3
            Row = 1
          end
          item
            Column = 0
            Control = Label4
            Row = 2
          end
          item
            Column = 1
            ColumnSpan = 2
            Control = SelectID_ef
            Row = 0
          end
          item
            Column = 1
            ColumnSpan = 2
            Control = ComboBox_period
            Row = 2
          end
          item
            Column = 3
            Control = Label11
            Row = 0
          end
          item
            Column = 3
            Control = Memo_briefing
            Row = 1
            RowSpan = 6
          end
          item
            Column = 0
            Control = Label8
            Row = 3
          end
          item
            Column = 1
            ColumnSpan = 2
            Control = Edit_typen
            Row = 3
          end
          item
            Column = 0
            Control = Label9
            Row = 4
          end
          item
            Column = 1
            ColumnSpan = 2
            Control = Edit_link
            Row = 4
          end
          item
            Column = 0
            Control = Label10
            Row = 5
          end
          item
            Column = 1
            ColumnSpan = 2
            Control = Edit_mittel
            Row = 5
          end
          item
            Column = 0
            Control = Label12
            Row = 6
          end
          item
            Column = 1
            ColumnSpan = 2
            Control = Edit_regel
            Row = 6
          end
          item
            Column = 1
            ColumnSpan = 2
            Control = Edit_huftung
            Row = 1
          end>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
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
          end>
        TabOrder = 0
        ExplicitTop = 6
        ExplicitHeight = 473
        object Label1: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 8
          Width = 170
          Height = 22
          Margins.Left = 5
          Margins.Top = 8
          Margins.Right = 25
          Margins.Bottom = 5
          Align = alClient
          Alignment = taRightJustify
          Caption = 'ID :'
          ExplicitLeft = 129
          ExplicitWidth = 26
          ExplicitHeight = 18
        end
        object Label3: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 43
          Width = 170
          Height = 22
          Margins.Left = 5
          Margins.Top = 8
          Margins.Right = 25
          Margins.Bottom = 5
          Align = alClient
          Alignment = taRightJustify
          Caption = #1047#1086#1085#1072' '#1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1086#1089#1090#1080' :'
          ExplicitLeft = -13
          ExplicitWidth = 168
          ExplicitHeight = 18
        end
        object Label4: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 78
          Width = 170
          Height = 22
          Margins.Left = 5
          Margins.Top = 8
          Margins.Right = 25
          Margins.Bottom = 5
          Align = alClient
          Alignment = taRightJustify
          Caption = #1055#1077#1088#1077#1086#1076#1080#1095#1085#1086#1089#1090#1100' :'
          ExplicitLeft = 40
          ExplicitWidth = 115
          ExplicitHeight = 18
        end
        object SelectID_ef: TLabel
          AlignWithMargins = True
          Left = 205
          Top = 8
          Width = 260
          Height = 22
          Margins.Left = 5
          Margins.Top = 8
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          Caption = 'Label_ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 185
          ExplicitWidth = 69
          ExplicitHeight = 18
        end
        object ComboBox_period: TComboBox
          AlignWithMargins = True
          Left = 205
          Top = 75
          Width = 260
          Height = 26
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          DropDownCount = 20
          TabOrder = 0
          Items.Strings = (
            #1045#1078#1077#1095#1072#1089#1085#1086
            #1045#1078#1077#1076#1085#1077#1074#1085#1086
            #1045#1078#1077#1085#1077#1076#1077#1083#1100#1085#1086
            #1045#1078#1077#1084#1077#1089#1103#1095#1085#1086
            #1045#1078#1077#1075#1086#1076#1085#1086)
          ExplicitLeft = 185
        end
        object Label11: TLabel
          AlignWithMargins = True
          Left = 475
          Top = 8
          Width = 273
          Height = 22
          Margins.Left = 5
          Margins.Top = 8
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077' :'
          ExplicitLeft = 455
          ExplicitWidth = 76
          ExplicitHeight = 18
        end
        object Memo_briefing: TMemo
          AlignWithMargins = True
          Left = 475
          Top = 40
          Width = 273
          Height = 200
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          TabOrder = 1
          ExplicitLeft = 455
          ExplicitWidth = 293
          ExplicitHeight = 235
        end
        object Label8: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 113
          Width = 170
          Height = 22
          Margins.Left = 5
          Margins.Top = 8
          Margins.Right = 25
          Margins.Bottom = 5
          Align = alClient
          Alignment = taRightJustify
          Caption = #1058#1080#1087' :'
          ExplicitLeft = 119
          ExplicitWidth = 36
          ExplicitHeight = 18
        end
        object Edit_typen: TEdit
          AlignWithMargins = True
          Left = 205
          Top = 110
          Width = 260
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          TabOrder = 2
          ExplicitLeft = 194
          ExplicitTop = 109
          ExplicitWidth = 121
          ExplicitHeight = 26
        end
        object Label9: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 148
          Width = 170
          Height = 22
          Margins.Left = 5
          Margins.Top = 8
          Margins.Right = 25
          Margins.Bottom = 5
          Align = alClient
          Alignment = taRightJustify
          Caption = #1057#1089#1099#1083#1082#1072' '#1085#1072' '#1086#1087#1080#1089#1072#1085#1080#1077' :'
          ExplicitLeft = 7
          ExplicitWidth = 148
          ExplicitHeight = 18
        end
        object Edit_link: TEdit
          AlignWithMargins = True
          Left = 205
          Top = 145
          Width = 260
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          TabOrder = 3
          ExplicitLeft = 29
          ExplicitTop = 144
          ExplicitWidth = 121
          ExplicitHeight = 26
        end
        object Label10: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 183
          Width = 170
          Height = 22
          Margins.Left = 5
          Margins.Top = 8
          Margins.Right = 25
          Margins.Bottom = 5
          Align = alClient
          Alignment = taRightJustify
          Caption = #1057#1088#1077#1076#1089#1090#1074#1072' :'
          ExplicitLeft = 81
          ExplicitWidth = 74
          ExplicitHeight = 18
        end
        object Edit_mittel: TEdit
          AlignWithMargins = True
          Left = 205
          Top = 180
          Width = 260
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          TabOrder = 4
          ExplicitLeft = 29
          ExplicitTop = 144
          ExplicitWidth = 121
          ExplicitHeight = 26
        end
        object Label12: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 218
          Width = 170
          Height = 22
          Margins.Left = 5
          Margins.Top = 8
          Margins.Right = 25
          Margins.Bottom = 5
          Align = alClient
          Alignment = taRightJustify
          Caption = #1055#1086#1088#1103#1076#1086#1082' '#1074#1099#1087#1086#1083#1085#1077#1085#1080#1103':'
          ExplicitLeft = 6
          ExplicitWidth = 149
          ExplicitHeight = 18
        end
        object Edit_regel: TEdit
          AlignWithMargins = True
          Left = 205
          Top = 215
          Width = 260
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          TabOrder = 5
          ExplicitLeft = 194
          ExplicitTop = 284
          ExplicitWidth = 121
          ExplicitHeight = 26
        end
        object Edit_huftung: TEdit
          AlignWithMargins = True
          Left = 205
          Top = 40
          Width = 260
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          TabOrder = 6
          ExplicitLeft = 194
          ExplicitTop = 109
          ExplicitWidth = 121
          ExplicitHeight = 26
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077
      ImageIndex = 2
      ExplicitWidth = 1041
      ExplicitHeight = 529
      object GridPanel3: TGridPanel
        Left = 0
        Top = 0
        Width = 766
        Height = 248
        Align = alClient
        ColumnCollection = <
          item
            SizeStyle = ssAbsolute
            Value = 150.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 150.000000000000000000
          end
          item
            Value = 100.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 200.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 100.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            ColumnSpan = 5
            Control = DBNavigator2
            Row = 2
          end
          item
            Column = 0
            Control = Label15
            Row = 0
          end
          item
            Column = 1
            ColumnSpan = 2
            Control = EditSearch_einrichtung
            Row = 0
          end
          item
            Column = 3
            Control = Label16
            Row = 0
          end
          item
            Column = 4
            Control = SelectID_einrichtung
            Row = 0
          end
          item
            Column = 0
            ColumnSpan = 5
            Control = Grid_einrichtung
            Row = 1
          end>
        RowCollection = <
          item
            SizeStyle = ssAbsolute
            Value = 35.000000000000000000
          end
          item
            Value = 100.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 40.000000000000000000
          end>
        TabOrder = 0
        ExplicitWidth = 1041
        ExplicitHeight = 529
        object DBNavigator2: TDBNavigator
          AlignWithMargins = True
          Left = 6
          Top = 212
          Width = 754
          Height = 30
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          DataSource = DataModuleDB.DataSource_Share_einrichtung_funktion
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alClient
          TabOrder = 0
          ExplicitTop = 493
          ExplicitWidth = 1029
        end
        object Label15: TLabel
          AlignWithMargins = True
          Left = 6
          Top = 10
          Width = 140
          Height = 21
          Margins.Left = 5
          Margins.Top = 9
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          Alignment = taRightJustify
          Caption = #1055#1086#1080#1089#1082' : '
          ExplicitLeft = 86
          ExplicitWidth = 60
          ExplicitHeight = 19
        end
        object EditSearch_einrichtung: TEdit
          AlignWithMargins = True
          Left = 156
          Top = 6
          Width = 250
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alLeft
          TabOrder = 1
          OnChange = EditSearch_einrichtungChange
          ExplicitHeight = 27
        end
        object Label16: TLabel
          AlignWithMargins = True
          Left = 470
          Top = 10
          Width = 190
          Height = 21
          Margins.Left = 5
          Margins.Top = 9
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          Alignment = taRightJustify
          Caption = #1042#1099#1073#1088#1072#1085' ID : '
          ExplicitLeft = 556
          ExplicitWidth = 93
          ExplicitHeight = 19
        end
        object SelectID_einrichtung: TLabel
          AlignWithMargins = True
          Left = 670
          Top = 10
          Width = 90
          Height = 21
          Margins.Left = 5
          Margins.Top = 9
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          Alignment = taCenter
          Caption = 'Null'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 659
          ExplicitWidth = 32
          ExplicitHeight = 19
        end
        object Grid_einrichtung: TDBGrid
          AlignWithMargins = True
          Left = 6
          Top = 41
          Width = 754
          Height = 161
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          DataSource = DataModuleDB.DataSource_Share_einrichtung
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = Grid_einrichtungCellClick
          OnKeyDown = Grid_einrichtungKeyDown
          OnMouseWheelDown = Grid_einrichtungMouseWheelDown
          OnMouseWheelUp = Grid_einrichtungMouseWheelDown
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'id_einrichtung'
              Title.Caption = 'ID'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'namen'
              Title.Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'namen_3'
              Title.Caption = #1050#1086#1085#1090#1088#1086#1083#1100#1085#1072#1103' '#1090#1086#1095#1082#1072
              Width = 260
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'namen_2'
              Title.Caption = #1050#1086#1084#1087#1083#1077#1082#1089
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'einzig_nummer'
              Title.Caption = #1053#1086#1084#1077#1088' '#1050#1058
              Width = 180
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'namen_1'
              Title.Caption = #1058#1080#1087' '#1050#1058
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'klasse'
              Title.Caption = #1050#1083#1072#1089#1089
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'model'
              Title.Caption = #1052#1086#1076#1077#1083#1100
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'serien_nummer'
              Title.Caption = #1057#1077#1088#1080#1081#1085#1099#1081' '#1085#1086#1084#1077#1088
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'briefing'
              Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'photo'
              Title.Caption = #1060#1086#1090#1086
              Width = 150
              Visible = True
            end>
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1042#1099#1073#1088#1072#1090#1100' '#1074#1080#1076' '#1088#1072#1073#1086#1090#1099
      ImageIndex = 3
      ExplicitWidth = 920
      ExplicitHeight = 473
      object GridPanel4: TGridPanel
        Left = 0
        Top = 0
        Width = 766
        Height = 248
        Align = alClient
        ColumnCollection = <
          item
            SizeStyle = ssAbsolute
            Value = 150.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 150.000000000000000000
          end
          item
            Value = 100.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 200.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 100.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            ColumnSpan = 5
            Control = DBNavigator3
            Row = 2
          end
          item
            Column = 0
            Control = Label2
            Row = 0
          end
          item
            Column = 1
            ColumnSpan = 2
            Control = EditSearch_funktion
            Row = 0
          end
          item
            Column = 3
            Control = Label6
            Row = 0
          end
          item
            Column = 4
            Control = SelectID_funktion
            Row = 0
          end
          item
            Column = 0
            ColumnSpan = 5
            Control = Grid_funktion
            Row = 1
          end>
        RowCollection = <
          item
            SizeStyle = ssAbsolute
            Value = 35.000000000000000000
          end
          item
            Value = 100.000000000000000000
          end
          item
            SizeStyle = ssAbsolute
            Value = 40.000000000000000000
          end>
        TabOrder = 0
        ExplicitTop = 6
        ExplicitWidth = 764
        object DBNavigator3: TDBNavigator
          AlignWithMargins = True
          Left = 6
          Top = 212
          Width = 754
          Height = 30
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          DataSource = DataModuleDB.DataSource_Share_einrichtung_funktion
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alClient
          TabOrder = 0
          ExplicitTop = 437
          ExplicitWidth = 908
        end
        object Label2: TLabel
          AlignWithMargins = True
          Left = 6
          Top = 10
          Width = 140
          Height = 21
          Margins.Left = 5
          Margins.Top = 9
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          Alignment = taRightJustify
          Caption = #1055#1086#1080#1089#1082' : '
          ExplicitLeft = 86
          ExplicitWidth = 60
          ExplicitHeight = 19
        end
        object EditSearch_funktion: TEdit
          AlignWithMargins = True
          Left = 156
          Top = 6
          Width = 250
          Height = 25
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alLeft
          TabOrder = 1
          ExplicitHeight = 27
        end
        object Label6: TLabel
          AlignWithMargins = True
          Left = 470
          Top = 10
          Width = 190
          Height = 21
          Margins.Left = 5
          Margins.Top = 9
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          Alignment = taRightJustify
          Caption = #1042#1099#1073#1088#1072#1085' ID : '
          ExplicitLeft = 721
          ExplicitWidth = 93
          ExplicitHeight = 19
        end
        object SelectID_funktion: TLabel
          AlignWithMargins = True
          Left = 670
          Top = 10
          Width = 90
          Height = 21
          Margins.Left = 5
          Margins.Top = 9
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          Alignment = taCenter
          Caption = 'Null'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 824
          ExplicitWidth = 32
          ExplicitHeight = 19
        end
        object Grid_funktion: TDBGrid
          AlignWithMargins = True
          Left = 6
          Top = 41
          Width = 754
          Height = 161
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Align = alClient
          DataSource = DataModuleDB.DataSource_Share_funktion
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -16
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = Grid_funktionCellClick
          OnKeyDown = Grid_funktionKeyDown
          OnMouseWheelDown = Grid_funktionMouseWheelDown
          OnMouseWheelUp = Grid_funktionMouseWheelDown
          Columns = <
            item
              Expanded = False
              FieldName = 'id_funktion'
              Title.Caption = 'ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'namen'
              Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              Width = 314
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'klasse'
              Title.Caption = #1050#1083#1072#1089#1089
              Width = 115
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'briefing'
              Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
              Width = 336
              Visible = True
            end>
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 300
    Width = 784
    Height = 45
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitTop = 334
    ExplicitWidth = 773
    object Button_Apply: TButton
      AlignWithMargins = True
      Left = 25
      Top = 0
      Width = 184
      Height = 35
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 5
      Margins.Bottom = 10
      Align = alLeft
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
      TabOrder = 0
      OnClick = Button_ApplyClick
    end
    object Button_Cancel: TButton
      AlignWithMargins = True
      Left = 575
      Top = 0
      Width = 184
      Height = 35
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 25
      Margins.Bottom = 10
      Align = alRight
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      TabOrder = 1
      ExplicitLeft = 564
    end
  end
end
