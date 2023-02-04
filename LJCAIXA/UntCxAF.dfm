object FrmCxAF: TFrmCxAF
  Left = 240
  Top = 190
  AutoSize = True
  BorderStyle = bsSingle
  Caption = 'Abrir Fechar Caixa'
  ClientHeight = 377
  ClientWidth = 861
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
    Width = 861
    Height = 41
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 48
      Top = 8
      Width = 325
      Height = 25
      DataSource = DataSource1
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      Hints.Strings = (
        'Primeiro Registro'
        'Anterior'
        'Pr'#243'ximo'
        'Ultimo Resgistro'
        'Incluir'
        'Deletar'
        'Editar'
        'Gravar'
        'Cancelar'
        'Atualizar')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      BeforeAction = DBNavigator1BeforeAction
      OnClick = DBNavigator1BeforeAction
    end
    object BBCAb: TBitBtn
      Left = 392
      Top = 8
      Width = 98
      Height = 26
      Caption = 'Abrir Caixa'
      Enabled = False
      TabOrder = 1
      OnClick = BBCAbClick
      Kind = bkOK
    end
    object BBCFec: TBitBtn
      Left = 496
      Top = 8
      Width = 106
      Height = 26
      Caption = 'Fechar Caixa'
      Enabled = False
      TabOrder = 2
      OnClick = BBCFecClick
      Kind = bkAbort
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 861
    Height = 336
    TabOrder = 1
    object Label1: TLabel
      Left = 40
      Top = 8
      Width = 58
      Height = 13
      Caption = 'No.do Caixa'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 40
      Top = 48
      Width = 92
      Height = 13
      Caption = 'Descri'#231#227'o do Caixa'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 40
      Top = 88
      Width = 86
      Height = 13
      Caption = 'Caixa Bloqueado?'
    end
    object Label4: TLabel
      Left = 40
      Top = 128
      Width = 30
      Height = 13
      Caption = 'Status'
    end
    object Label5: TLabel
      Left = 40
      Top = 168
      Width = 54
      Height = 13
      Caption = 'Dt.Abertura'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 184
      Top = 168
      Width = 54
      Height = 13
      Caption = 'Hr.Abertura'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 40
      Top = 208
      Width = 73
      Height = 13
      Caption = 'Dt.Fechamento'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 184
      Top = 208
      Width = 73
      Height = 13
      Caption = 'Hr.Fechamento'
      FocusControl = DBEdit8
    end
    object LbStatus: TLabel
      Left = 40
      Top = 264
      Width = 69
      Height = 29
      Caption = '------'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -24
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 328
      Top = 168
      Width = 43
      Height = 13
      Caption = 'Vl. Troco'
      FocusControl = DBEdit3
    end
    object DBComboBox1: TDBComboBox
      Left = 40
      Top = 104
      Width = 145
      Height = 21
      DataField = 'CXBLQ'
      DataSource = DataSource1
      ItemHeight = 13
      Items.Strings = (
        'S=SIM'
        'N=NAO')
      ReadOnly = True
      TabOrder = 0
    end
    object DBComboBox2: TDBComboBox
      Left = 40
      Top = 144
      Width = 145
      Height = 21
      AutoDropDown = True
      DataField = 'CXSTATUS'
      DataSource = DataSource1
      ItemHeight = 13
      Items.Strings = (
        'A'
        'F'
        '3')
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 40
      Top = 24
      Width = 134
      Height = 21
      DataField = 'CXID'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 40
      Top = 64
      Width = 524
      Height = 21
      DataField = 'CXDESC'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 40
      Top = 184
      Width = 134
      Height = 21
      DataField = 'CXDTABERT'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 184
      Top = 184
      Width = 134
      Height = 21
      DataField = 'CXHRABERT'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 40
      Top = 224
      Width = 134
      Height = 21
      DataField = 'CXDTFEC'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 184
      Top = 224
      Width = 134
      Height = 21
      DataField = 'CXHRFEC'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 7
    end
    object DBEdit3: TDBEdit
      Left = 328
      Top = 184
      Width = 134
      Height = 21
      DataField = 'MVBVLTROCO'
      DataSource = DataSource2
      TabOrder = 8
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Extended Properti' +
      'es="DSN=ljcaixa;DESCRIPTION=ljcaixa;SERVER=localhost;UID=localho' +
      'st;DATABASE=ljcaixa;PORT=3306"'
    LoginPrompt = False
    Left = 640
    Top = 8
  end
  object ADOTabCxAF: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'caixas'
    Left = 680
    Top = 8
    object ADOTabCxAFCXID: TWordField
      DisplayLabel = 'No.do Caixa'
      FieldName = 'CXID'
      DisplayFormat = '000000000'
      EditFormat = '000000000'
    end
    object ADOTabCxAFCXDESC: TWideStringField
      DisplayLabel = 'Descri'#231#227'o do Caixa'
      FieldName = 'CXDESC'
      Size = 40
    end
    object ADOTabCxAFCXBLQ: TWideStringField
      DisplayLabel = 'Caixa Bloqueado?'
      FieldName = 'CXBLQ'
      Size = 1
    end
    object ADOTabCxAFCXSTATUS: TWideStringField
      DisplayLabel = 'Status'
      FieldName = 'CXSTATUS'
      Size = 1
    end
    object ADOTabCxAFCXDTABERT: TDateField
      DisplayLabel = 'Dt.Abertura'
      FieldName = 'CXDTABERT'
    end
    object ADOTabCxAFCXHRABERT: TTimeField
      DisplayLabel = 'Hr.Abertura'
      FieldName = 'CXHRABERT'
    end
    object ADOTabCxAFCXDTFEC: TDateField
      DisplayLabel = 'Dt.Fechamento'
      FieldName = 'CXDTFEC'
    end
    object ADOTabCxAFCXHRFEC: TTimeField
      DisplayLabel = 'Hr.Fechamento'
      FieldName = 'CXHRFEC'
    end
    object ADOTabCxAFCXSEQAB: TWideStringField
      FieldName = 'CXSEQAB'
      Size = 9
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTabCxAF
    Left = 712
    Top = 8
  end
  object ADOTab_CxMov: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'movcx'
    Left = 752
    Top = 8
    object ADOTab_CxMovMVBID: TAutoIncField
      FieldName = 'MVBID'
      ReadOnly = True
    end
    object ADOTab_CxMovMVBCXFK: TWordField
      FieldName = 'MVBCXFK'
    end
    object ADOTab_CxMovMVBDTMOV: TDateField
      FieldName = 'MVBDTMOV'
    end
    object ADOTab_CxMovMVBHRMOV: TTimeField
      FieldName = 'MVBHRMOV'
    end
    object ADOTab_CxMovMVBDESC: TWideStringField
      FieldName = 'MVBDESC'
      Size = 120
    end
    object ADOTab_CxMovMVBVALOR: TFloatField
      DefaultExpression = '##0.00'
      FieldName = 'MVBVALOR'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
      currency = True
    end
    object ADOTab_CxMovMVBTPRP: TWideStringField
      FieldName = 'MVBTPRP'
      Size = 1
    end
    object ADOTab_CxMovMVBFORMPAG: TWideStringField
      FieldName = 'MVBFORMPAG'
      Size = 2
    end
    object ADOTab_CxMovMVBOBS: TMemoField
      FieldName = 'MVBOBS'
      BlobType = ftMemo
    end
    object ADOTab_CxMovMVBVLDIN: TFloatField
      FieldName = 'MVBVLDIN'
    end
    object ADOTab_CxMovMVBVLCHEQ: TFloatField
      FieldName = 'MVBVLCHEQ'
    end
    object ADOTab_CxMovMVBVLCC: TFloatField
      FieldName = 'MVBVLCC'
    end
    object ADOTab_CxMovMVBVLCD: TFloatField
      FieldName = 'MVBVLCD'
    end
    object ADOTab_CxMovMVBVLTROCO: TFloatField
      FieldName = 'MVBVLTROCO'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object ADOTab_CxMovMVBVLOUTROS: TFloatField
      FieldName = 'MVBVLOUTROS'
    end
    object ADOTab_CxMovMVBUSU: TWideStringField
      FieldName = 'MVBUSU'
    end
    object ADOTab_CxMovMVBFLGREC: TWideStringField
      FieldName = 'MVBFLGREC'
      Size = 1
    end
    object ADOTab_CxMovMVBSEQAB: TWideStringField
      FieldName = 'MVBSEQAB'
      Size = 9
    end
  end
  object ADOTab_AcCx: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'acdiarios'
    Left = 824
    Top = 8
    object ADOTab_AcCxFCID: TAutoIncField
      FieldName = 'FCID'
      ReadOnly = True
    end
    object ADOTab_AcCxFCCXFK: TWordField
      FieldName = 'FCCXFK'
    end
    object ADOTab_AcCxFCDT: TDateField
      FieldName = 'FCDT'
    end
    object ADOTab_AcCxFCVLDIN: TFloatField
      FieldName = 'FCVLDIN'
    end
    object ADOTab_AcCxFCVLCHEQ: TFloatField
      FieldName = 'FCVLCHEQ'
    end
    object ADOTab_AcCxFCVLCC: TFloatField
      FieldName = 'FCVLCC'
    end
    object ADOTab_AcCxFCVLCD: TFloatField
      FieldName = 'FCVLCD'
    end
    object ADOTab_AcCxFCTROCO: TFloatField
      FieldName = 'FCTROCO'
    end
    object ADOTab_AcCxFCVLOUTROS: TFloatField
      FieldName = 'FCVLOUTROS'
    end
    object ADOTab_AcCxFCVLTOTREC: TFloatField
      FieldName = 'FCVLTOTREC'
    end
    object ADOTab_AcCxFCVLTOTPAG: TFloatField
      FieldName = 'FCVLTOTPAG'
    end
    object ADOTab_AcCxFCSLDINI: TFloatField
      FieldName = 'FCSLDINI'
    end
    object ADOTab_AcCxFCSLDFIN: TFloatField
      FieldName = 'FCSLDFIN'
    end
    object ADOTab_AcCxFCSLDATUAL: TFloatField
      FieldName = 'FCSLDATUAL'
    end
    object ADOTab_AcCxFCSEQAB: TWideStringField
      FieldName = 'FCSEQAB'
      Size = 9
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOTab_CxMov
    Left = 784
    Top = 8
  end
end
