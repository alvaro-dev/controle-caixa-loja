object FrmMvbAcd: TFrmMvbAcd
  Left = 241
  Top = 264
  AutoSize = True
  BorderStyle = bsSingle
  Caption = 'Movimento Di'#225'rio do Caixa'
  ClientHeight = 613
  ClientWidth = 1289
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
    Width = 1289
    Height = 545
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = -1
      Width = 1281
      Height = 57
      TabOrder = 0
      object Panel5: TPanel
        Left = 8
        Top = 8
        Width = 609
        Height = 41
        TabOrder = 0
        object Label1: TLabel
          Left = 240
          Top = 12
          Width = 115
          Height = 13
          Caption = 'Data do Movimento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 24
          Top = 12
          Width = 84
          Height = 13
          Caption = 'Cod. do Caixa:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object MEDtMov: TMaskEdit
          Left = 360
          Top = 8
          Width = 113
          Height = 21
          EditMask = '!99/99/00;1;_'
          MaxLength = 8
          TabOrder = 0
          Text = '  /  /  '
        end
        object EdtCx: TEdit
          Left = 112
          Top = 8
          Width = 121
          Height = 21
          TabOrder = 1
          Text = '1'
        end
        object BBOK: TBitBtn
          Left = 496
          Top = 8
          Width = 65
          Height = 25
          TabOrder = 2
          OnClick = BBOKClick
          Kind = bkOK
        end
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 56
      Width = 1281
      Height = 488
      TabOrder = 1
      object DBGMovBc: TDBGrid
        Left = 8
        Top = 8
        Width = 1265
        Height = 474
        DataSource = DSTMvBc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnColEnter = DBGMovBcColEnter
        OnColExit = DBGMovBcColExit
        OnDrawDataCell = DBGMovBcDrawDataCell
        OnDblClick = DBGMovBcDblClick
        OnEditButtonClick = DBGMovBcEditButtonClick
        OnEndDock = DBGMovBcEndDock
        OnEnter = DBGMovBcEnter
        OnExit = DBGMovBcExit
        OnKeyPress = DBGMovBcKeyPress
        OnKeyUp = DBGMovBcKeyUp
        Columns = <
          item
            Expanded = False
            FieldName = 'MVBID'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MVBDTMOV'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MVBDESC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Width = 216
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MVBFORMPAG'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MVBTPRP'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MVBVALOR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MVBVLDIN'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clTeal
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MVBVLCHEQ'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clTeal
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MVBVLCC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clTeal
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MVBVLCD'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clTeal
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MVBVLOUTROS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clTeal
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MVBVLTROCO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clTeal
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 561
    Width = 1289
    Height = 52
    TabOrder = 1
    object DBGAcDiarios: TDBGrid
      Left = 7
      Top = 2
      Width = 1220
      Height = 46
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'FCID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FCDT'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FCVLTOTREC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clGreen
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FCVLTOTPAG'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clRed
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FCSLDATUAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FCVLDIN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clTeal
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FCVLCHEQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clTeal
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FCVLCC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clTeal
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FCVLCD'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clTeal
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FCVLOUTROS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clTeal
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FCTROCO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clTeal
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 97
          Visible = True
        end>
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 545
    Width = 1289
    Height = 19
    BorderStyle = bsSingle
    Caption = '>>>>>>>>>>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Panel6Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Extended Properti' +
      'es="DSN=ljcaixa;DESCRIPTION=ljcaixa;SERVER=localhost;UID=localho' +
      'st;DATABASE=ljcaixa;PORT=3306"'
    LoginPrompt = False
    Left = 1064
    Top = 16
  end
  object AdoTabMovBc: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    OnCalcFields = AdoTabMovBcCalcFields
    TableName = 'movcx'
    Left = 1104
    Top = 16
    object AdoTabMovBcMVBID: TAutoIncField
      DisplayLabel = 'Id.Mov.'
      FieldName = 'MVBID'
      ReadOnly = True
      DisplayFormat = '00000000'
      EditFormat = '00000000'
    end
    object AdoTabMovBcMVBCXFK: TWordField
      DisplayLabel = 'Cod.Caixa'
      FieldName = 'MVBCXFK'
      DisplayFormat = '00000000'
      EditFormat = '00000000'
    end
    object AdoTabMovBcMVBDTMOV: TDateField
      DisplayLabel = 'Dt.Mov.'
      FieldName = 'MVBDTMOV'
    end
    object AdoTabMovBcMVBHRMOV: TTimeField
      DisplayLabel = 'HrMov.'
      FieldName = 'MVBHRMOV'
    end
    object AdoTabMovBcMVBDESC: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'MVBDESC'
      Size = 120
    end
    object AdoTabMovBcMVBVALOR: TFloatField
      DisplayLabel = 'Valor Mov.'
      DisplayWidth = 10
      FieldName = 'MVBVALOR'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object AdoTabMovBcMVBTPRP: TWideStringField
      DefaultExpression = 'R'
      DisplayLabel = 'Tipo Entrada/Saida'
      FieldName = 'MVBTPRP'
      Size = 1
    end
    object AdoTabMovBcMVBFORMPAG: TWideStringField
      DefaultExpression = 'DN'
      DisplayLabel = 'Forma de Pag.'
      FieldName = 'MVBFORMPAG'
      Size = 2
    end
    object AdoTabMovBcMVBOBS: TMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'MVBOBS'
      BlobType = ftMemo
    end
    object AdoTabMovBcMVBVLDIN: TFloatField
      DisplayLabel = 'Vl.Dinheiro'
      FieldName = 'MVBVLDIN'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object AdoTabMovBcMVBVLCHEQ: TFloatField
      DisplayLabel = 'Vl.Cheque'
      FieldName = 'MVBVLCHEQ'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object AdoTabMovBcMVBVLCC: TFloatField
      DisplayLabel = 'Vl.Cart'#227'o Cr'#233'dito'
      FieldName = 'MVBVLCC'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object AdoTabMovBcMVBVLCD: TFloatField
      DisplayLabel = 'Vl.Cart'#227'o D'#233'bito'
      FieldName = 'MVBVLCD'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object AdoTabMovBcMVBVLTROCO: TFloatField
      DisplayLabel = 'Vl.Troco'
      FieldName = 'MVBVLTROCO'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object AdoTabMovBcMVBVLOUTROS: TFloatField
      DisplayLabel = 'Outros Valores'
      FieldName = 'MVBVLOUTROS'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object AdoTabMovBcMVBUSU: TWideStringField
      DisplayLabel = 'Usuario'
      FieldName = 'MVBUSU'
    end
    object AdoTabMovBcMVBFLGREC: TWideStringField
      DisplayLabel = 'FlagRP'
      FieldName = 'MVBFLGREC'
      Size = 1
    end
    object AdoTabMovBcMVBSEQAB: TWideStringField
      DisplayLabel = 'Seq.'
      FieldName = 'MVBSEQAB'
      Size = 9
    end
    object AdoTabMovBcSld: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Sld'
      OnValidate = AdoTabMovBcSldValidate
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
      Calculated = True
    end
  end
  object DSTMvBc: TDataSource
    DataSet = AdoTabMovBc
    Left = 1136
    Top = 24
  end
  object ADOTabAcDiarios: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    OnCalcFields = ADOTabAcDiariosCalcFields
    TableName = 'acdiarios'
    Left = 1168
    Top = 15
    object ADOTabAcDiariosFCID: TAutoIncField
      DisplayLabel = 'ID.Mov.'
      DisplayWidth = 12
      FieldName = 'FCID'
      ReadOnly = True
      DisplayFormat = '000000000'
      EditFormat = '000000000'
    end
    object ADOTabAcDiariosFCCXFK: TWordField
      DisplayLabel = 'Cod.Caixa'
      DisplayWidth = 11
      FieldName = 'FCCXFK'
      DisplayFormat = '000000000'
      EditFormat = '000000000'
    end
    object ADOTabAcDiariosFCDT: TDateField
      DisplayLabel = 'Dt.Mov.'
      DisplayWidth = 14
      FieldName = 'FCDT'
    end
    object ADOTabAcDiariosFCVLDIN: TFloatField
      DisplayLabel = 'Total Dinheiro'
      DisplayWidth = 13
      FieldName = 'FCVLDIN'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object ADOTabAcDiariosFCVLCHEQ: TFloatField
      DisplayLabel = 'Total Cheque'
      DisplayWidth = 14
      FieldName = 'FCVLCHEQ'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object ADOTabAcDiariosFCVLCC: TFloatField
      DisplayLabel = 'Total Cart'#227'o Cred.'
      DisplayWidth = 17
      FieldName = 'FCVLCC'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object ADOTabAcDiariosFCVLCD: TFloatField
      DisplayLabel = 'Total  Cart'#227'o D'#233'bito'
      DisplayWidth = 19
      FieldName = 'FCVLCD'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object ADOTabAcDiariosFCTROCO: TFloatField
      DisplayLabel = 'Total Troco'
      DisplayWidth = 13
      FieldName = 'FCTROCO'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object ADOTabAcDiariosFCVLOUTROS: TFloatField
      DisplayLabel = 'Total Outros Vl.'
      DisplayWidth = 15
      FieldName = 'FCVLOUTROS'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object ADOTabAcDiariosFCVLTOTREC: TFloatField
      DisplayLabel = 'Total Entrada'
      DisplayWidth = 14
      FieldName = 'FCVLTOTREC'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object ADOTabAcDiariosFCVLTOTPAG: TFloatField
      DisplayLabel = 'Total Saida'
      DisplayWidth = 14
      FieldName = 'FCVLTOTPAG'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object ADOTabAcDiariosFCSLDINI: TFloatField
      DisplayLabel = 'Saldo Inicial'
      DisplayWidth = 14
      FieldName = 'FCSLDINI'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object ADOTabAcDiariosFCSLDFIN: TFloatField
      DisplayLabel = 'Saldo Final'
      DisplayWidth = 12
      FieldName = 'FCSLDFIN'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object ADOTabAcDiariosFCSLDATUAL: TFloatField
      DisplayLabel = 'Saldo Atual'
      DisplayWidth = 13
      FieldName = 'FCSLDATUAL'
      DisplayFormat = '#####0.00'
      EditFormat = '#####0.00'
    end
    object ADOTabAcDiariosFCSEQAB: TWideStringField
      DisplayLabel = 'Seq.'
      DisplayWidth = 11
      FieldName = 'FCSEQAB'
      Size = 9
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTabAcDiarios
    Left = 1200
    Top = 23
  end
  object ADOTabCx: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Filter = 'CXID = '#39'1'#39
    Filtered = True
    TableName = 'caixas'
    Left = 1024
    Top = 23
    object ADOTabCxCXID: TWordField
      FieldName = 'CXID'
    end
    object ADOTabCxCXDESC: TWideStringField
      FieldName = 'CXDESC'
      Size = 40
    end
    object ADOTabCxCXBLQ: TWideStringField
      FieldName = 'CXBLQ'
      Size = 1
    end
    object ADOTabCxCXSTATUS: TWideStringField
      FieldName = 'CXSTATUS'
      Size = 1
    end
    object ADOTabCxCXDTABERT: TDateField
      FieldName = 'CXDTABERT'
    end
    object ADOTabCxCXHRABERT: TTimeField
      FieldName = 'CXHRABERT'
    end
    object ADOTabCxCXDTFEC: TDateField
      FieldName = 'CXDTFEC'
    end
    object ADOTabCxCXHRFEC: TTimeField
      FieldName = 'CXHRFEC'
    end
    object ADOTabCxCXSEQAB: TWideStringField
      FieldName = 'CXSEQAB'
      Size = 9
    end
  end
end
