object FrmRelFecVenda: TFrmRelFecVenda
  Left = 422
  Top = 235
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio Fechamento de Venda'
  ClientHeight = 156
  ClientWidth = 332
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
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 329
    Height = 113
    TabOrder = 0
    object Label1: TLabel
      Left = 43
      Top = 32
      Width = 97
      Height = 13
      Caption = 'Codigo do Caixa:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 72
      Width = 118
      Height = 13
      Caption = 'Data Movimenta'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdtCx: TEdit
      Left = 155
      Top = 27
      Width = 121
      Height = 21
      TabOrder = 0
      Text = '1'
    end
    object MEDtMovCx: TMaskEdit
      Left = 154
      Top = 64
      Width = 122
      Height = 21
      EditMask = '!99/99/00;1;_'
      MaxLength = 8
      TabOrder = 1
      Text = '  /  /  '
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 113
    Width = 329
    Height = 41
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 128
      Top = 8
      Width = 81
      Height = 25
      Caption = 'Executar'
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 232
      Top = 8
      Width = 81
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = BitBtn2Click
      Kind = bkCancel
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Extended Properti' +
      'es="DSN=ljcaixa;UID=localhost;DESCRIPTION=ljcaixa;SERVER=localho' +
      'st;DATABASE=ljcaixa;PORT=3306;"'
    LoginPrompt = False
    Top = 120
  end
  object ADOQMovCx: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from movcx')
    Left = 32
    Top = 120
    object ADOQMovCxMVBID: TAutoIncField
      DisplayLabel = 'Id.Mov.'
      FieldName = 'MVBID'
      ReadOnly = True
      DisplayFormat = '000000000'
      EditFormat = '000000000'
    end
    object ADOQMovCxMVBCXFK: TWordField
      FieldName = 'MVBCXFK'
      DisplayFormat = '000000000'
      EditFormat = '000000000'
    end
    object ADOQMovCxMVBDTMOV: TDateField
      DisplayLabel = 'Dt.Mov.'
      FieldName = 'MVBDTMOV'
    end
    object ADOQMovCxMVBHRMOV: TTimeField
      FieldName = 'MVBHRMOV'
    end
    object ADOQMovCxMVBDESC: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'MVBDESC'
      Size = 120
    end
    object ADOQMovCxMVBVALOR: TFloatField
      DisplayLabel = 'Vl.Mov.'
      FieldName = 'MVBVALOR'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object ADOQMovCxMVBTPRP: TWideStringField
      DisplayLabel = 'R/P'
      FieldName = 'MVBTPRP'
      Size = 1
    end
    object ADOQMovCxMVBFORMPAG: TWideStringField
      DisplayLabel = 'F.Pag.'
      FieldName = 'MVBFORMPAG'
      Size = 2
    end
    object ADOQMovCxMVBOBS: TMemoField
      FieldName = 'MVBOBS'
      BlobType = ftMemo
    end
    object ADOQMovCxMVBVLDIN: TFloatField
      DisplayLabel = 'Vl.Din.'
      FieldName = 'MVBVLDIN'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object ADOQMovCxMVBVLCHEQ: TFloatField
      DisplayLabel = 'Vl.Cheque'
      FieldName = 'MVBVLCHEQ'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object ADOQMovCxMVBVLCC: TFloatField
      DisplayLabel = 'Vl.Cart.Cred.'
      FieldName = 'MVBVLCC'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object ADOQMovCxMVBVLCD: TFloatField
      DisplayLabel = 'Vl.Cart.Deb.'
      FieldName = 'MVBVLCD'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object ADOQMovCxMVBVLTROCO: TFloatField
      DisplayLabel = 'Vl.Troco'
      FieldName = 'MVBVLTROCO'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object ADOQMovCxMVBVLOUTROS: TFloatField
      DisplayLabel = 'Outros Vl.'
      FieldName = 'MVBVLOUTROS'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object ADOQMovCxMVBUSU: TWideStringField
      FieldName = 'MVBUSU'
    end
    object ADOQMovCxMVBFLGREC: TWideStringField
      FieldName = 'MVBFLGREC'
      Size = 1
    end
    object ADOQMovCxMVBSEQAB: TWideStringField
      FieldName = 'MVBSEQAB'
      Size = 9
    end
  end
  object RvProject1: TRvProject
    ProjectFile = 'C:\LJCAIXA\Relatorios\RelMovCx.rav'
    Left = 64
    Top = 120
  end
  object RvDataSetConnection1: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = ADOQMovCx
    Left = 96
    Top = 120
  end
end
