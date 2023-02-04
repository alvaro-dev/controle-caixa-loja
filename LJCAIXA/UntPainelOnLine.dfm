object FrmPainelOnLine: TFrmPainelOnLine
  Left = 239
  Top = 115
  BorderStyle = bsSingle
  Caption = 'Painel OnLine'
  ClientHeight = 737
  ClientWidth = 1284
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1283
    Height = 737
    TabOrder = 0
    object GroupBox2: TGroupBox
      Left = 8
      Top = 8
      Width = 1273
      Height = 721
      TabOrder = 0
      object DBChart1: TDBChart
        Left = 8
        Top = 16
        Width = 369
        Height = 225
        BackWall.Brush.Color = clWhite
        Title.Text.Strings = (
          'Evolu'#231#227'o do Per'#237'odo')
        LeftAxis.LabelStyle = talValue
        LeftAxis.Title.Caption = 'Total Receber / Total a Pagar'
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        TabOrder = 0
        object Series1: TBarSeries
          Marks.ArrowLength = 8
          Marks.BackColor = 4227072
          Marks.Visible = True
          DataSource = ADOQuery1
          SeriesColor = clGreen
          Title = 'Entrada/Receber'
          XLabelsSource = 'FCDT'
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'FCVLTOTREC'
        end
        object Series2: TBarSeries
          Marks.ArrowLength = 20
          Marks.Visible = True
          DataSource = ADOQuery1
          SeriesColor = clRed
          Title = 'Sa'#237'da/Pagar'
          XLabelsSource = 'FCDT'
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Bar'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'FCVLTOTPAG'
        end
      end
      object DBChart2: TDBChart
        Left = 8
        Top = 248
        Width = 1257
        Height = 465
        BackWall.Brush.Color = clWhite
        Title.Text.Strings = (
          'Movimenta'#231#227'o do Per'#237'odo')
        LeftAxis.LabelStyle = talValue
        LeftAxis.Title.Caption = 'Total Receber / Total a Pagar'
        View3DOptions.Elevation = 315
        View3DOptions.Orthogonal = False
        View3DOptions.Perspective = 0
        View3DOptions.Rotation = 360
        TabOrder = 1
        object BarSeries1: TLineSeries
          Marks.ArrowLength = 8
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = ADOQuery2
          PercentFormat = '##0.00 %'
          SeriesColor = clGreen
          Title = 'Entrada/Receber'
          ValueFormat = '#,##0.00'
          XLabelsSource = 'MVBHRMOV'
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = True
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'MVBVALOR'
        end
        object BarSeries2: TLineSeries
          Marks.ArrowLength = 20
          Marks.Style = smsValue
          Marks.Visible = True
          DataSource = ADOQuery3
          PercentFormat = '##0.00 %'
          SeriesColor = clRed
          Title = 'Sa'#237'da/Pagar'
          ValueFormat = '#,##0.00'
          XLabelsSource = 'MVBDTMOV'
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
          YValues.ValueSource = 'MVBVALOR'
        end
      end
      object Panel2: TPanel
        Left = 384
        Top = 16
        Width = 393
        Height = 225
        TabOrder = 2
        object DBGrid1: TDBGrid
          Left = 8
          Top = 8
          Width = 377
          Height = 209
          DataSource = DSAcDiar2
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'FCDT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FCCXFK'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FCVLTOTREC'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FCVLTOTPAG'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FCSLDATUAL'
              Visible = True
            end>
        end
      end
      object Panel3: TPanel
        Left = 784
        Top = 16
        Width = 481
        Height = 225
        TabOrder = 3
        object DBChart3: TDBChart
          Left = 4
          Top = 4
          Width = 473
          Height = 218
          AllowPanning = pmNone
          AllowZoom = False
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          BackWall.Pen.Visible = False
          Title.Text.Strings = (
            'TDBChart')
          AxisVisible = False
          ClipPoints = False
          Frame.Visible = False
          View3DOptions.Elevation = 315
          View3DOptions.Orthogonal = False
          View3DOptions.Perspective = 0
          View3DOptions.Rotation = 360
          View3DWalls = False
          TabOrder = 0
          object Series3: TPieSeries
            Marks.ArrowLength = 8
            Marks.Style = smsPercent
            Marks.Visible = True
            DataSource = ADOTabAcDiar3
            SeriesColor = clRed
            XLabelsSource = 'FCDT'
            OtherSlice.Text = 'Other'
            PieValues.DateTime = False
            PieValues.Name = 'Pie'
            PieValues.Multiplier = 1.000000000000000000
            PieValues.Order = loNone
            PieValues.ValueSource = 'FCVLDIN'
          end
          object Series4: TPieSeries
            Marks.ArrowLength = 8
            Marks.Style = smsPercent
            Marks.Visible = True
            DataSource = ADOTabAcDiar31
            SeriesColor = clRed
            XLabelsSource = 'FCVLTOTREC'
            OtherSlice.Text = 'Other'
            PieValues.DateTime = False
            PieValues.Name = 'Pie'
            PieValues.Multiplier = 1.000000000000000000
            PieValues.Order = loNone
            PieValues.ValueSource = 'FCVLDIN'
          end
        end
      end
    end
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from acdiarios'
      'where fcdt = 20121224')
    Left = 64
    Top = 40
    object ADOQuery1FCID: TAutoIncField
      FieldName = 'FCID'
      ReadOnly = True
    end
    object ADOQuery1FCCXFK: TWordField
      FieldName = 'FCCXFK'
    end
    object ADOQuery1FCDT: TDateField
      FieldName = 'FCDT'
    end
    object ADOQuery1FCVLDIN: TFloatField
      FieldName = 'FCVLDIN'
    end
    object ADOQuery1FCVLCHEQ: TFloatField
      FieldName = 'FCVLCHEQ'
    end
    object ADOQuery1FCVLCC: TFloatField
      FieldName = 'FCVLCC'
    end
    object ADOQuery1FCVLCD: TFloatField
      FieldName = 'FCVLCD'
    end
    object ADOQuery1FCTROCO: TFloatField
      FieldName = 'FCTROCO'
    end
    object ADOQuery1FCVLOUTROS: TFloatField
      FieldName = 'FCVLOUTROS'
    end
    object ADOQuery1FCVLTOTREC: TFloatField
      FieldName = 'FCVLTOTREC'
    end
    object ADOQuery1FCVLTOTPAG: TFloatField
      FieldName = 'FCVLTOTPAG'
    end
    object ADOQuery1FCSLDINI: TFloatField
      FieldName = 'FCSLDINI'
    end
    object ADOQuery1FCSLDFIN: TFloatField
      FieldName = 'FCSLDFIN'
    end
    object ADOQuery1FCSLDATUAL: TFloatField
      FieldName = 'FCSLDATUAL'
    end
    object ADOQuery1FCSEQAB: TWideStringField
      FieldName = 'FCSEQAB'
      Size = 9
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Extended Properti' +
      'es="DSN=ljcaixa;UID=localhost;DESCRIPTION=ljcaixa;SERVER=localho' +
      'st;DATABASE=ljcaixa;PORT=3306;"'
    LoginPrompt = False
    Left = 32
    Top = 40
  end
  object DSCx1: TDataSource
    DataSet = ADOQuery1
    Left = 96
    Top = 40
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from movcx'
      'where MVBDTMOV = 20121224 AND MVBTPRP = '#39'R'#39)
    Left = 536
    Top = 360
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 568
    Top = 360
  end
  object ADOQuery3: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from movcx'
      'where MVBDTMOV = 20121224 AND MVBTPRP = '#39'P'#39)
    Left = 600
    Top = 360
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery3
    Left = 632
    Top = 360
  end
  object ADOTabCx2: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Filter = 'CXID=1 AND CXDTABERT='#39'24/12/2012'#39
    Filtered = True
    TableName = 'caixas'
    Left = 582
    Top = 41
    object ADOTabCx2CXID: TWordField
      FieldName = 'CXID'
    end
    object ADOTabCx2CXDESC: TWideStringField
      FieldName = 'CXDESC'
      Size = 40
    end
    object ADOTabCx2CXBLQ: TWideStringField
      FieldName = 'CXBLQ'
      Size = 1
    end
    object ADOTabCx2CXSTATUS: TWideStringField
      FieldName = 'CXSTATUS'
      Size = 1
    end
    object ADOTabCx2CXDTABERT: TDateField
      FieldName = 'CXDTABERT'
    end
    object ADOTabCx2CXHRABERT: TTimeField
      FieldName = 'CXHRABERT'
    end
    object ADOTabCx2CXDTFEC: TDateField
      FieldName = 'CXDTFEC'
    end
    object ADOTabCx2CXHRFEC: TTimeField
      FieldName = 'CXHRFEC'
    end
    object ADOTabCx2CXSEQAB: TWideStringField
      FieldName = 'CXSEQAB'
      Size = 9
    end
  end
  object ADOTabMovCx2: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Filtered = True
    IndexFieldNames = 'MVBCXFK;MVBDTMOV'
    MasterFields = 'CXID;CXDTABERT'
    MasterSource = DSCx2
    TableName = 'movcx'
    Left = 583
    Top = 72
    object ADOTabMovCx2MVBID: TAutoIncField
      FieldName = 'MVBID'
      ReadOnly = True
    end
    object ADOTabMovCx2MVBCXFK: TWordField
      FieldName = 'MVBCXFK'
    end
    object ADOTabMovCx2MVBDTMOV: TDateField
      FieldName = 'MVBDTMOV'
    end
    object ADOTabMovCx2MVBHRMOV: TTimeField
      FieldName = 'MVBHRMOV'
    end
    object ADOTabMovCx2MVBDESC: TWideStringField
      FieldName = 'MVBDESC'
      Size = 120
    end
    object ADOTabMovCx2MVBVALOR: TFloatField
      FieldName = 'MVBVALOR'
    end
    object ADOTabMovCx2MVBTPRP: TWideStringField
      FieldName = 'MVBTPRP'
      Size = 1
    end
    object ADOTabMovCx2MVBFORMPAG: TWideStringField
      FieldName = 'MVBFORMPAG'
      Size = 2
    end
    object ADOTabMovCx2MVBOBS: TMemoField
      FieldName = 'MVBOBS'
      BlobType = ftMemo
    end
    object ADOTabMovCx2MVBVLDIN: TFloatField
      FieldName = 'MVBVLDIN'
    end
    object ADOTabMovCx2MVBVLCHEQ: TFloatField
      FieldName = 'MVBVLCHEQ'
    end
    object ADOTabMovCx2MVBVLCC: TFloatField
      FieldName = 'MVBVLCC'
    end
    object ADOTabMovCx2MVBVLCD: TFloatField
      FieldName = 'MVBVLCD'
    end
    object ADOTabMovCx2MVBVLTROCO: TFloatField
      FieldName = 'MVBVLTROCO'
    end
    object ADOTabMovCx2MVBVLOUTROS: TFloatField
      FieldName = 'MVBVLOUTROS'
    end
    object ADOTabMovCx2MVBUSU: TWideStringField
      FieldName = 'MVBUSU'
    end
    object ADOTabMovCx2MVBFLGREC: TWideStringField
      FieldName = 'MVBFLGREC'
      Size = 1
    end
    object ADOTabMovCx2MVBSEQAB: TWideStringField
      FieldName = 'MVBSEQAB'
      Size = 9
    end
  end
  object DSCx2: TDataSource
    DataSet = ADOTabCx2
    Left = 732
    Top = 48
  end
  object DSMvCx2: TDataSource
    DataSet = ADOTabMovCx2
    Left = 731
    Top = 80
  end
  object DSAcDiar2: TDataSource
    DataSet = ADOTabAcDiar2
    Left = 731
    Top = 112
  end
  object ADOTabAcDiar2: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'FCCXFK;FCDT'
    MasterFields = 'CXID;CXDTABERT'
    MasterSource = DSCx2
    TableName = 'acdiarios'
    Left = 584
    Top = 103
    object ADOTabAcDiar2FCID: TAutoIncField
      FieldName = 'FCID'
      ReadOnly = True
    end
    object ADOTabAcDiar2FCCXFK: TWordField
      FieldName = 'FCCXFK'
    end
    object ADOTabAcDiar2FCDT: TDateField
      FieldName = 'FCDT'
    end
    object ADOTabAcDiar2FCVLDIN: TFloatField
      FieldName = 'FCVLDIN'
    end
    object ADOTabAcDiar2FCVLCHEQ: TFloatField
      FieldName = 'FCVLCHEQ'
    end
    object ADOTabAcDiar2FCVLCC: TFloatField
      FieldName = 'FCVLCC'
    end
    object ADOTabAcDiar2FCVLCD: TFloatField
      FieldName = 'FCVLCD'
    end
    object ADOTabAcDiar2FCTROCO: TFloatField
      FieldName = 'FCTROCO'
    end
    object ADOTabAcDiar2FCVLOUTROS: TFloatField
      FieldName = 'FCVLOUTROS'
    end
    object ADOTabAcDiar2FCVLTOTREC: TFloatField
      FieldName = 'FCVLTOTREC'
    end
    object ADOTabAcDiar2FCVLTOTPAG: TFloatField
      FieldName = 'FCVLTOTPAG'
    end
    object ADOTabAcDiar2FCSLDINI: TFloatField
      FieldName = 'FCSLDINI'
    end
    object ADOTabAcDiar2FCSLDFIN: TFloatField
      FieldName = 'FCSLDFIN'
    end
    object ADOTabAcDiar2FCSLDATUAL: TFloatField
      FieldName = 'FCSLDATUAL'
    end
    object ADOTabAcDiar2FCSEQAB: TWideStringField
      FieldName = 'FCSEQAB'
      Size = 9
    end
  end
  object ADOTabAcDiar3: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Filter = 'FCCXFK=1 AND FCDT='#39'24/12/2012'#39
    Filtered = True
    TableName = 'acdiarios'
    Left = 1160
    Top = 48
    object ADOTabAcDiar3FCID: TAutoIncField
      FieldName = 'FCID'
      ReadOnly = True
    end
    object ADOTabAcDiar3FCCXFK: TWordField
      FieldName = 'FCCXFK'
    end
    object ADOTabAcDiar3FCDT: TDateField
      FieldName = 'FCDT'
    end
    object ADOTabAcDiar3FCVLDIN: TFloatField
      FieldName = 'FCVLDIN'
    end
    object ADOTabAcDiar3FCVLCHEQ: TFloatField
      FieldName = 'FCVLCHEQ'
    end
    object ADOTabAcDiar3FCVLCC: TFloatField
      FieldName = 'FCVLCC'
    end
    object ADOTabAcDiar3FCVLCD: TFloatField
      FieldName = 'FCVLCD'
    end
    object ADOTabAcDiar3FCTROCO: TFloatField
      FieldName = 'FCTROCO'
    end
    object ADOTabAcDiar3FCVLOUTROS: TFloatField
      FieldName = 'FCVLOUTROS'
    end
    object ADOTabAcDiar3FCVLTOTREC: TFloatField
      FieldName = 'FCVLTOTREC'
    end
    object ADOTabAcDiar3FCVLTOTPAG: TFloatField
      FieldName = 'FCVLTOTPAG'
    end
    object ADOTabAcDiar3FCSLDINI: TFloatField
      FieldName = 'FCSLDINI'
    end
    object ADOTabAcDiar3FCSLDFIN: TFloatField
      FieldName = 'FCSLDFIN'
    end
    object ADOTabAcDiar3FCSLDATUAL: TFloatField
      FieldName = 'FCSLDATUAL'
    end
    object ADOTabAcDiar3FCSEQAB: TWideStringField
      FieldName = 'FCSEQAB'
      Size = 9
    end
  end
  object DSAcDiar3: TDataSource
    Left = 1200
    Top = 48
  end
  object ADOTabAcDiar31: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Filter = 'FCCXFK=1 AND FCDT='#39'24/12/2012'#39
    Filtered = True
    TableName = 'acdiarios'
    Left = 1160
    Top = 80
    object AutoIncField1: TAutoIncField
      FieldName = 'FCID'
      ReadOnly = True
    end
    object WordField1: TWordField
      FieldName = 'FCCXFK'
    end
    object DateField1: TDateField
      FieldName = 'FCDT'
    end
    object FloatField1: TFloatField
      FieldName = 'FCVLDIN'
    end
    object FloatField2: TFloatField
      FieldName = 'FCVLCHEQ'
    end
    object FloatField3: TFloatField
      FieldName = 'FCVLCC'
    end
    object FloatField4: TFloatField
      FieldName = 'FCVLCD'
    end
    object FloatField5: TFloatField
      FieldName = 'FCTROCO'
    end
    object FloatField6: TFloatField
      FieldName = 'FCVLOUTROS'
    end
    object FloatField7: TFloatField
      FieldName = 'FCVLTOTREC'
    end
    object FloatField8: TFloatField
      FieldName = 'FCVLTOTPAG'
    end
    object FloatField9: TFloatField
      FieldName = 'FCSLDINI'
    end
    object FloatField10: TFloatField
      FieldName = 'FCSLDFIN'
    end
    object FloatField11: TFloatField
      FieldName = 'FCSLDATUAL'
    end
    object WideStringField1: TWideStringField
      FieldName = 'FCSEQAB'
      Size = 9
    end
  end
end
