object FrmVendas: TFrmVendas
  Left = 346
  Top = 139
  AutoSize = True
  BorderStyle = bsSingle
  Caption = 'Vendas Balc'#227'o'
  ClientHeight = 473
  ClientWidth = 862
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
    Top = 432
    Width = 862
    Height = 41
    TabOrder = 0
    object BBIncluir: TBitBtn
      Left = 64
      Top = 8
      Width = 129
      Height = 25
      Caption = 'Novo Lan'#231'amento'
      TabOrder = 0
      OnClick = BBIncluirClick
      Glyph.Data = {
        F2010000424DF201000000000000760000002800000024000000130000000100
        0400000000007C01000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
        3333333333388F3333333333000033334224333333333333338338F333333333
        0000333422224333333333333833338F33333333000033422222243333333333
        83333338F3333333000034222A22224333333338F33F33338F33333300003222
        A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
        38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
        2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
        0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
        333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
        33333A2224A2233333333338F338F83300003333333333A2224A333333333333
        8F338F33000033333333333A222433333333333338F338F30000333333333333
        A224333333333333338F38F300003333333333333A223333333333333338F8F3
        000033333333333333A3333333333333333383330000}
      NumGlyphs = 2
    end
    object BBGravar: TBitBtn
      Left = 584
      Top = 8
      Width = 89
      Height = 25
      Caption = 'Salvar'
      Enabled = False
      TabOrder = 1
      OnClick = BBGravarClick
      Kind = bkOK
    end
    object BBCancelar: TBitBtn
      Left = 677
      Top = 8
      Width = 81
      Height = 25
      Caption = 'Cancelar'
      Enabled = False
      TabOrder = 2
      OnClick = BBCancelarClick
      Kind = bkCancel
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 96
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 16
      Top = 8
      Width = 833
      Height = 81
      Caption = ' Cabe'#231'alho do Lan'#231'amento '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 24
        Top = 24
        Width = 100
        Height = 13
        Caption = 'No.do Movimento'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 168
        Top = 24
        Width = 70
        Height = 13
        Caption = 'No.do Caixa'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 312
        Top = 24
        Width = 111
        Height = 13
        Caption = 'Descri'#231#227'o do Caixa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 240
        Top = 24
        Width = 7
        Height = 16
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 24
        Top = 40
        Width = 134
        Height = 24
        Color = clScrollBar
        DataField = 'MVBID'
        DataSource = DSMovCx
        Enabled = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 168
        Top = 40
        Width = 134
        Height = 24
        Color = clSkyBlue
        DataField = 'MVBCXFK'
        DataSource = DSMovCx
        Enabled = False
        TabOrder = 1
        OnExit = DBEdit2Exit
      end
      object DBEdit11: TDBEdit
        Left = 312
        Top = 40
        Width = 481
        Height = 24
        Color = clScrollBar
        DataField = 'DescCxIdFk'
        DataSource = DSMovCx
        Enabled = False
        ReadOnly = True
        TabOrder = 2
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 96
    Width = 862
    Height = 97
    TabOrder = 2
    object GroupBox2: TGroupBox
      Left = 16
      Top = 8
      Width = 833
      Height = 81
      Caption = '  Dados do Lan'#231'amento '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label3: TLabel
        Left = 24
        Top = 24
        Width = 87
        Height = 13
        Caption = 'Dt.Lan'#231'amento'
        FocusControl = DBEdit3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 184
        Top = 24
        Width = 149
        Height = 13
        Caption = 'Descri'#231#227'o do Lan'#231'amento'
        FocusControl = DBEdit5
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 672
        Top = 24
        Width = 50
        Height = 13
        Caption = 'Valor R$'
        FocusControl = DBEdit6
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 112
        Top = 24
        Width = 7
        Height = 16
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 335
        Top = 24
        Width = 7
        Height = 16
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 728
        Top = 24
        Width = 7
        Height = 16
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit3: TDBEdit
        Left = 24
        Top = 40
        Width = 121
        Height = 24
        DataField = 'MVBDTMOV'
        DataSource = DSMovCx
        Enabled = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit5: TDBEdit
        Left = 184
        Top = 40
        Width = 481
        Height = 24
        DataField = 'MVBDESC'
        DataSource = DSMovCx
        Enabled = False
        TabOrder = 1
      end
      object DBEdit6: TDBEdit
        Left = 672
        Top = 40
        Width = 145
        Height = 24
        Color = clYellow
        DataField = 'MVBVALOR'
        DataSource = DSMovCx
        Enabled = False
        TabOrder = 2
        OnExit = DBComboBox2Exit
      end
      object Button1: TButton
        Left = 147
        Top = 40
        Width = 26
        Height = 25
        Caption = 'Dt.'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = Button1Click
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 193
    Width = 862
    Height = 137
    TabOrder = 3
    object GroupBox3: TGroupBox
      Left = 8
      Top = 8
      Width = 833
      Height = 121
      Caption = ' Classifica'#231#227'o do Lan'#231'amento '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label4: TLabel
        Left = 24
        Top = 24
        Width = 91
        Height = 13
        Caption = 'Tipo Movimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 24
        Top = 64
        Width = 102
        Height = 13
        Caption = 'Forma Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 336
        Top = 24
        Width = 63
        Height = 13
        Caption = 'Vl.Dinheiro'
        FocusControl = DBEdit4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 336
        Top = 64
        Width = 59
        Height = 13
        Caption = 'Vl.Cheque'
        FocusControl = DBEdit7
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 480
        Top = 24
        Width = 97
        Height = 13
        Caption = 'Vl.Cart'#227'o Cr'#233'dito'
        FocusControl = DBEdit8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 480
        Top = 64
        Width = 98
        Height = 13
        Caption = 'Vl. Cart'#227'o D'#233'bito'
        FocusControl = DBEdit9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 624
        Top = 24
        Width = 53
        Height = 13
        Caption = 'Vl.Outros'
        FocusControl = DBEdit10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 624
        Top = 64
        Width = 49
        Height = 13
        Caption = 'Vl.Troco'
        FocusControl = DBEdit12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 120
        Top = 24
        Width = 7
        Height = 16
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 128
        Top = 64
        Width = 7
        Height = 16
        Caption = '*'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBComboBox1: TDBComboBox
        Left = 24
        Top = 40
        Width = 281
        Height = 22
        Style = csOwnerDrawVariable
        AutoDropDown = True
        DataField = 'MVBTPRP'
        DataSource = DSMovCx
        Enabled = False
        ItemHeight = 16
        Items.Strings = (
          'R=RECEBER/ENTRADA'
          'P=PAGAR/SAIDA')
        TabOrder = 0
      end
      object DBComboBox2: TDBComboBox
        Left = 24
        Top = 80
        Width = 281
        Height = 22
        Style = csOwnerDrawVariable
        DataField = 'MVBFORMPAG'
        DataSource = DSMovCx
        Enabled = False
        ItemHeight = 16
        Items.Strings = (
          'DN=DINHEIRO'
          'CH=CHEQUE'
          'CC=CARTAO DE CREDITO'
          'CD=CARTAO DE DEBITO'
          'TR=TROCO'
          'OU=OUTROS'
          'CN=CONDI'#199#195'O NEGOCIADA')
        TabOrder = 1
        OnExit = DBComboBox2Exit
      end
      object DBEdit4: TDBEdit
        Left = 336
        Top = 40
        Width = 134
        Height = 24
        Color = clYellow
        DataField = 'MVBVLDIN'
        DataSource = DSMovCx
        Enabled = False
        ReadOnly = True
        TabOrder = 2
      end
      object DBEdit7: TDBEdit
        Left = 336
        Top = 80
        Width = 134
        Height = 24
        Color = clYellow
        DataField = 'MVBVLCHEQ'
        DataSource = DSMovCx
        Enabled = False
        ReadOnly = True
        TabOrder = 3
      end
      object DBEdit8: TDBEdit
        Left = 480
        Top = 40
        Width = 134
        Height = 24
        Color = clYellow
        DataField = 'MVBVLCC'
        DataSource = DSMovCx
        Enabled = False
        ReadOnly = True
        TabOrder = 4
      end
      object DBEdit9: TDBEdit
        Left = 480
        Top = 80
        Width = 134
        Height = 24
        Color = clYellow
        DataField = 'MVBVLCD'
        DataSource = DSMovCx
        Enabled = False
        ReadOnly = True
        TabOrder = 5
      end
      object DBEdit10: TDBEdit
        Left = 624
        Top = 40
        Width = 134
        Height = 24
        Color = clYellow
        DataField = 'MVBVLOUTROS'
        DataSource = DSMovCx
        Enabled = False
        ReadOnly = True
        TabOrder = 6
      end
      object DBEdit12: TDBEdit
        Left = 624
        Top = 80
        Width = 134
        Height = 24
        Color = clYellow
        DataField = 'MVBVLTROCO'
        DataSource = DSMovCx
        Enabled = False
        ReadOnly = True
        TabOrder = 7
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 330
    Width = 862
    Height = 101
    TabOrder = 4
    object Label8: TLabel
      Left = 8
      Top = 1
      Width = 75
      Height = 13
      Caption = 'Observa'#231#245'es'
      FocusControl = DBMemo1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBMemo1: TDBMemo
      Left = 8
      Top = 17
      Width = 842
      Height = 75
      DataField = 'MVBOBS'
      DataSource = DSMovCx
      Enabled = False
      TabOrder = 0
    end
  end
  object MonthCalendar1: TMonthCalendar
    Left = 202
    Top = 315
    Width = 191
    Height = 154
    Date = 41227.582274525460000000
    TabOrder = 5
    Visible = False
    OnDblClick = MonthCalendar1DblClick
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Extended Properti' +
      'es="DSN=ljcaixa;DESCRIPTION=ljcaixa;SERVER=localhost;UID=localho' +
      'st;DATABASE=ljcaixa;PORT=3306"'
    LoginPrompt = False
    Left = 544
    Top = 16
  end
  object ADOTabMvbCx: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    Filter = 'MVBFLGREC<>'#39'X  '#39
    Filtered = True
    TableName = 'movcx'
    Left = 584
    Top = 16
    object ADOTabMvbCxMVBID: TAutoIncField
      DisplayLabel = 'No.do Movimento'
      FieldName = 'MVBID'
      ReadOnly = True
      DisplayFormat = '000000000'
      EditFormat = '000000000'
    end
    object ADOTabMvbCxMVBCXFK: TWordField
      DisplayLabel = 'No.do Caixa'
      FieldName = 'MVBCXFK'
      DisplayFormat = '000000000'
      EditFormat = '000000000'
    end
    object ADOTabMvbCxMVBDTMOV: TDateField
      DisplayLabel = 'Dt.Lan'#231'amento'
      FieldName = 'MVBDTMOV'
    end
    object ADOTabMvbCxMVBHRMOV: TTimeField
      DisplayLabel = 'Hr.Lan'#231'amento'
      FieldName = 'MVBHRMOV'
    end
    object ADOTabMvbCxMVBDESC: TWideStringField
      DisplayLabel = 'Descri'#231#227'o do Lan'#231'amento'
      FieldName = 'MVBDESC'
      Size = 120
    end
    object ADOTabMvbCxMVBVALOR: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'MVBVALOR'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object ADOTabMvbCxMVBTPRP: TWideStringField
      DisplayLabel = 'Tipo Movimento'
      FieldName = 'MVBTPRP'
      Size = 1
    end
    object ADOTabMvbCxMVBOBS: TMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'MVBOBS'
      BlobType = ftMemo
    end
    object ADOTabMvbCxMVBVLDIN: TFloatField
      DisplayLabel = 'Vl.Dinheiro'
      FieldName = 'MVBVLDIN'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object ADOTabMvbCxMVBVLCHEQ: TFloatField
      DisplayLabel = 'Vl.Cheque'
      FieldName = 'MVBVLCHEQ'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object ADOTabMvbCxMVBVLCC: TFloatField
      DisplayLabel = 'Vl.Cart'#227'o Cr'#233'dito'
      FieldName = 'MVBVLCC'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object ADOTabMvbCxMVBVLCD: TFloatField
      DisplayLabel = 'Vl. Cart'#227'o D'#233'bito'
      FieldName = 'MVBVLCD'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object ADOTabMvbCxMVBVLOUTROS: TFloatField
      DisplayLabel = 'Vl.Outros'
      FieldName = 'MVBVLOUTROS'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object ADOTabMvbCxMVBUSU: TWideStringField
      DisplayLabel = 'Usuario do Lan'#231'amento'
      FieldName = 'MVBUSU'
    end
    object ADOTabMvbCxMVBFLGREC: TWideStringField
      DisplayLabel = 'Reconciliado'
      FieldName = 'MVBFLGREC'
      Size = 1
    end
    object ADOTabMvbCxDescCxIdFk: TStringField
      DisplayLabel = 'Descri'#231#227'o do Caixa'
      FieldKind = fkLookup
      FieldName = 'DescCxIdFk'
      LookupDataSet = ADOTabCadCx
      LookupKeyFields = 'CXID'
      LookupResultField = 'CXDESC'
      KeyFields = 'MVBCXFK'
      Lookup = True
    end
    object ADOTabMvbCxMVBVLTROCO: TFloatField
      DisplayLabel = 'Vl.Troco'
      FieldName = 'MVBVLTROCO'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object ADOTabMvbCxMVBFORMPAG: TWideStringField
      DisplayLabel = 'Forma Pagamento'
      FieldName = 'MVBFORMPAG'
      Size = 2
    end
    object ADOTabMvbCxMVBSEQAB: TWideStringField
      FieldName = 'MVBSEQAB'
      Size = 9
    end
  end
  object ADOTabAcDiario: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'acdiarios'
    Left = 664
    Top = 16
    object ADOTabAcDiarioFCID: TAutoIncField
      FieldName = 'FCID'
      ReadOnly = True
    end
    object ADOTabAcDiarioFCCXFK: TWordField
      FieldName = 'FCCXFK'
    end
    object ADOTabAcDiarioFCDT: TDateField
      FieldName = 'FCDT'
    end
    object ADOTabAcDiarioFCVLDIN: TFloatField
      FieldName = 'FCVLDIN'
    end
    object ADOTabAcDiarioFCVLCHEQ: TFloatField
      FieldName = 'FCVLCHEQ'
    end
    object ADOTabAcDiarioFCVLCC: TFloatField
      FieldName = 'FCVLCC'
    end
    object ADOTabAcDiarioFCVLCD: TFloatField
      FieldName = 'FCVLCD'
    end
    object ADOTabAcDiarioFCTROCO: TFloatField
      FieldName = 'FCTROCO'
    end
    object ADOTabAcDiarioFCVLOUTROS: TFloatField
      FieldName = 'FCVLOUTROS'
    end
    object ADOTabAcDiarioFCVLTOTREC: TFloatField
      FieldName = 'FCVLTOTREC'
    end
    object ADOTabAcDiarioFCVLTOTPAG: TFloatField
      FieldName = 'FCVLTOTPAG'
    end
    object ADOTabAcDiarioFCSLDINI: TFloatField
      FieldName = 'FCSLDINI'
    end
    object ADOTabAcDiarioFCSLDFIN: TFloatField
      FieldName = 'FCSLDFIN'
    end
    object ADOTabAcDiarioFCSLDATUAL: TFloatField
      FieldName = 'FCSLDATUAL'
    end
    object ADOTabAcDiarioFCSEQAB: TWideStringField
      FieldName = 'FCSEQAB'
      Size = 9
    end
  end
  object DSMovCx: TDataSource
    DataSet = ADOTabMvbCx
    Left = 616
    Top = 16
  end
  object DSAcDiario: TDataSource
    DataSet = ADOTabAcDiario
    Left = 696
    Top = 16
  end
  object ADOTabCadCx: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Filter = 'CXID='#39'1'#39
    Filtered = True
    TableName = 'caixas'
    Left = 744
    Top = 16
    object ADOTabCadCxCXID: TWordField
      FieldName = 'CXID'
    end
    object ADOTabCadCxCXDESC: TWideStringField
      DisplayLabel = 'Descri'#231#227'o do Caixa'
      FieldName = 'CXDESC'
      Size = 40
    end
    object ADOTabCadCxCXBLQ: TWideStringField
      FieldName = 'CXBLQ'
      Size = 1
    end
    object ADOTabCadCxCXSTATUS: TWideStringField
      FieldName = 'CXSTATUS'
      Size = 1
    end
    object ADOTabCadCxCXDTABERT: TDateField
      FieldName = 'CXDTABERT'
    end
    object ADOTabCadCxCXHRABERT: TTimeField
      FieldName = 'CXHRABERT'
    end
    object ADOTabCadCxCXDTFEC: TDateField
      FieldName = 'CXDTFEC'
    end
    object ADOTabCadCxCXHRFEC: TTimeField
      FieldName = 'CXHRFEC'
    end
    object ADOTabCadCxCXSEQAB: TWideStringField
      FieldName = 'CXSEQAB'
      Size = 9
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTabCadCx
    Left = 776
    Top = 16
  end
end
