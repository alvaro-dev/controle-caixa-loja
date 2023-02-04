object FrmFecCx: TFrmFecCx
  Left = 302
  Top = 159
  AutoSize = True
  BorderStyle = bsSingle
  Caption = 'Fechamento de Caixa'
  ClientHeight = 378
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 505
    Height = 378
    TabOrder = 0
    object Panel2: TPanel
      Left = 8
      Top = 8
      Width = 489
      Height = 65
      TabOrder = 0
      object Label1: TLabel
        Left = 24
        Top = 8
        Width = 11
        Height = 13
        Caption = 'ID'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 176
        Top = 8
        Width = 48
        Height = 13
        Caption = 'Cod.Caixa'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 328
        Top = 8
        Width = 100
        Height = 13
        Caption = 'Data do Fechamento'
        FocusControl = DBEdit3
      end
      object DBEdit1: TDBEdit
        Left = 24
        Top = 24
        Width = 134
        Height = 21
        DataField = 'FCID'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 176
        Top = 24
        Width = 134
        Height = 21
        DataField = 'FCCXFK'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 328
        Top = 24
        Width = 134
        Height = 21
        DataField = 'FCDT'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 2
      end
    end
    object Panel3: TPanel
      Left = 8
      Top = 73
      Width = 489
      Height = 257
      TabOrder = 1
      object Label4: TLabel
        Left = 24
        Top = 3
        Width = 51
        Height = 13
        Caption = 'Vl.Dinheiro'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 24
        Top = 43
        Width = 49
        Height = 13
        Caption = 'Vl.Cheque'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 24
        Top = 83
        Width = 94
        Height = 13
        Caption = 'Vl.Cart'#227'o de Cr'#233'dito'
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 24
        Top = 123
        Width = 92
        Height = 13
        Caption = 'Vl.Cart'#227'o de D'#233'bito'
        FocusControl = DBEdit7
      end
      object Label8: TLabel
        Left = 24
        Top = 163
        Width = 40
        Height = 13
        Caption = 'Vl.Troco'
        FocusControl = DBEdit8
      end
      object Label9: TLabel
        Left = 24
        Top = 203
        Width = 69
        Height = 13
        Caption = 'Outros Valores'
        FocusControl = DBEdit9
      end
      object Label10: TLabel
        Left = 328
        Top = 8
        Width = 115
        Height = 13
        Caption = 'Total Recebido/Entrada'
        FocusControl = DBEdit10
      end
      object Label11: TLabel
        Left = 328
        Top = 48
        Width = 84
        Height = 13
        Caption = 'Total Pago/Saida'
        FocusControl = DBEdit11
      end
      object Label12: TLabel
        Left = 328
        Top = 88
        Width = 54
        Height = 13
        Caption = 'Saldo Atual'
        FocusControl = DBEdit12
      end
      object Label13: TLabel
        Left = 202
        Top = 220
        Width = 120
        Height = 16
        Caption = 'Total de Vendas:'
        FocusControl = DBEdit12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit4: TDBEdit
        Left = 24
        Top = 19
        Width = 134
        Height = 21
        DataField = 'FCVLDIN'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit5: TDBEdit
        Left = 24
        Top = 59
        Width = 134
        Height = 21
        DataField = 'FCVLCHEQ'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit6: TDBEdit
        Left = 24
        Top = 99
        Width = 134
        Height = 21
        DataField = 'FCVLCC'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit7: TDBEdit
        Left = 24
        Top = 139
        Width = 134
        Height = 21
        DataField = 'FCVLCD'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit8: TDBEdit
        Left = 24
        Top = 179
        Width = 134
        Height = 21
        DataField = 'FCTROCO'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit9: TDBEdit
        Left = 24
        Top = 219
        Width = 134
        Height = 21
        DataField = 'FCVLOUTROS'
        DataSource = DataSource1
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit10: TDBEdit
        Left = 328
        Top = 24
        Width = 134
        Height = 21
        Color = clWhite
        DataField = 'FCVLTOTREC'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
      object DBEdit11: TDBEdit
        Left = 328
        Top = 64
        Width = 134
        Height = 21
        Color = clWhite
        DataField = 'FCVLTOTPAG'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
      object DBEdit12: TDBEdit
        Left = 328
        Top = 104
        Width = 134
        Height = 21
        Color = clWhite
        DataField = 'FCSLDATUAL'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
      object EdtTotVenda: TEdit
        Left = 328
        Top = 216
        Width = 137
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
    end
    object Panel4: TPanel
      Left = 8
      Top = 330
      Width = 489
      Height = 41
      TabOrder = 2
      object BitBtn1: TBitBtn
        Left = 288
        Top = 8
        Width = 75
        Height = 25
        TabOrder = 0
        OnClick = BitBtn1Click
        Kind = bkOK
      end
      object BitBtn2: TBitBtn
        Left = 384
        Top = 8
        Width = 75
        Height = 25
        TabOrder = 1
        OnClick = BitBtn2Click
        Kind = bkCancel
      end
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Extended Properti' +
      'es="DSN=ljcaixa;DESCRIPTION=ljcaixa;SERVER=localhost;UID=localho' +
      'st;DATABASE=ljcaixa;PORT=3306"'
    LoginPrompt = False
    Left = 200
    Top = 96
  end
  object ADOTab_AcD: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'acdiarios'
    Left = 240
    Top = 96
    object ADOTab_AcDFCID: TAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'FCID'
      ReadOnly = True
      DisplayFormat = '000000000'
      EditFormat = '000000000'
    end
    object ADOTab_AcDFCCXFK: TWordField
      DisplayLabel = 'Cod.Caixa'
      FieldName = 'FCCXFK'
      DisplayFormat = '000000000'
      EditFormat = '000000000'
    end
    object ADOTab_AcDFCDT: TDateField
      DisplayLabel = 'Data do Fechamento'
      FieldName = 'FCDT'
    end
    object ADOTab_AcDFCVLDIN: TFloatField
      DisplayLabel = 'Vl.Dinheiro'
      FieldName = 'FCVLDIN'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object ADOTab_AcDFCVLCHEQ: TFloatField
      DisplayLabel = 'Vl.Cheque'
      FieldName = 'FCVLCHEQ'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object ADOTab_AcDFCVLCC: TFloatField
      DisplayLabel = 'Vl.Cart'#227'o de Cr'#233'dito'
      FieldName = 'FCVLCC'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object ADOTab_AcDFCVLCD: TFloatField
      DisplayLabel = 'Vl.Cart'#227'o de D'#233'bito'
      FieldName = 'FCVLCD'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object ADOTab_AcDFCTROCO: TFloatField
      DisplayLabel = 'Vl.Troco'
      FieldName = 'FCTROCO'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object ADOTab_AcDFCVLOUTROS: TFloatField
      DisplayLabel = 'Outros Valores'
      FieldName = 'FCVLOUTROS'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object ADOTab_AcDFCVLTOTREC: TFloatField
      DisplayLabel = 'Total Recebido/Entrada'
      FieldName = 'FCVLTOTREC'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object ADOTab_AcDFCVLTOTPAG: TFloatField
      DisplayLabel = 'Total Pago/Saida'
      FieldName = 'FCVLTOTPAG'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object ADOTab_AcDFCSLDINI: TFloatField
      DisplayLabel = 'Saldo Inicial'
      FieldName = 'FCSLDINI'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object ADOTab_AcDFCSLDFIN: TFloatField
      DisplayLabel = 'Saldo Final'
      FieldName = 'FCSLDFIN'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object ADOTab_AcDFCSLDATUAL: TFloatField
      DisplayLabel = 'Saldo Atual'
      FieldName = 'FCSLDATUAL'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object ADOTab_AcDFCSEQAB: TWideStringField
      FieldName = 'FCSEQAB'
      Size = 9
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTab_AcD
    Left = 280
    Top = 96
  end
  object ADOTab_Mvb: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'movcx'
    Left = 240
    Top = 129
    object ADOTab_MvbMVBID: TAutoIncField
      FieldName = 'MVBID'
      ReadOnly = True
    end
    object ADOTab_MvbMVBCXFK: TWordField
      FieldName = 'MVBCXFK'
    end
    object ADOTab_MvbMVBDTMOV: TDateField
      FieldName = 'MVBDTMOV'
    end
    object ADOTab_MvbMVBHRMOV: TTimeField
      FieldName = 'MVBHRMOV'
    end
    object ADOTab_MvbMVBDESC: TWideStringField
      FieldName = 'MVBDESC'
      Size = 120
    end
    object ADOTab_MvbMVBVALOR: TFloatField
      FieldName = 'MVBVALOR'
    end
    object ADOTab_MvbMVBTPRP: TWideStringField
      FieldName = 'MVBTPRP'
      Size = 1
    end
    object ADOTab_MvbMVBFORMPAG: TWideStringField
      FieldName = 'MVBFORMPAG'
      Size = 2
    end
    object ADOTab_MvbMVBOBS: TMemoField
      FieldName = 'MVBOBS'
      BlobType = ftMemo
    end
    object ADOTab_MvbMVBVLDIN: TFloatField
      FieldName = 'MVBVLDIN'
    end
    object ADOTab_MvbMVBVLCHEQ: TFloatField
      FieldName = 'MVBVLCHEQ'
    end
    object ADOTab_MvbMVBVLCC: TFloatField
      FieldName = 'MVBVLCC'
    end
    object ADOTab_MvbMVBVLCD: TFloatField
      FieldName = 'MVBVLCD'
    end
    object ADOTab_MvbMVBVLTROCO: TFloatField
      FieldName = 'MVBVLTROCO'
    end
    object ADOTab_MvbMVBVLOUTROS: TFloatField
      FieldName = 'MVBVLOUTROS'
    end
    object ADOTab_MvbMVBUSU: TWideStringField
      FieldName = 'MVBUSU'
    end
    object ADOTab_MvbMVBFLGREC: TWideStringField
      FieldName = 'MVBFLGREC'
      Size = 1
    end
    object ADOTab_MvbMVBSEQAB: TWideStringField
      FieldName = 'MVBSEQAB'
      Size = 9
    end
  end
  object ADOQMvbCx: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from movcx')
    Left = 240
    Top = 169
  end
end
