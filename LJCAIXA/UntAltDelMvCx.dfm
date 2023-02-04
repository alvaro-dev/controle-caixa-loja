object FrmAltDelMvCx: TFrmAltDelMvCx
  Left = 249
  Top = 166
  AutoSize = True
  BorderStyle = bsSingle
  Caption = 'Manuten'#231#227'o no Movimento do Caixa'
  ClientHeight = 466
  ClientWidth = 862
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 96
    TabOrder = 0
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
        DataSource = FrmMvbAcd.DSTMvBc
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
        DataSource = FrmMvbAcd.DSTMvBc
        ReadOnly = True
        TabOrder = 1
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 96
    Width = 862
    Height = 97
    TabOrder = 1
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
        DataSource = FrmMvbAcd.DSTMvBc
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit5: TDBEdit
        Left = 184
        Top = 40
        Width = 481
        Height = 24
        DataField = 'MVBDESC'
        DataSource = FrmMvbAcd.DSTMvBc
        ReadOnly = True
        TabOrder = 1
      end
      object DBEdit6: TDBEdit
        Left = 672
        Top = 40
        Width = 145
        Height = 24
        Color = clYellow
        DataField = 'MVBVALOR'
        DataSource = FrmMvbAcd.DSTMvBc
        TabOrder = 2
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
        TabStop = False
        Visible = False
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 193
    Width = 862
    Height = 137
    TabOrder = 2
    object GroupBox3: TGroupBox
      Left = 16
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
      object DBEdit4: TDBEdit
        Left = 336
        Top = 40
        Width = 134
        Height = 24
        Color = clYellow
        DataField = 'MVBVLDIN'
        DataSource = FrmMvbAcd.DSTMvBc
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
        DataSource = FrmMvbAcd.DSTMvBc
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
        DataSource = FrmMvbAcd.DSTMvBc
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
        DataSource = FrmMvbAcd.DSTMvBc
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
        DataSource = FrmMvbAcd.DSTMvBc
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
        DataSource = FrmMvbAcd.DSTMvBc
        ReadOnly = True
        TabOrder = 7
      end
      object DBEdit11: TDBEdit
        Left = 24
        Top = 40
        Width = 281
        Height = 24
        DataField = 'MVBTPRP'
        DataSource = FrmMvbAcd.DSTMvBc
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit13: TDBEdit
        Left = 24
        Top = 80
        Width = 281
        Height = 24
        DataField = 'MVBFORMPAG'
        DataSource = FrmMvbAcd.DSTMvBc
        ReadOnly = True
        TabOrder = 1
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 330
    Width = 862
    Height = 101
    TabOrder = 3
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
      DataSource = FrmMvbAcd.DSTMvBc
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 425
    Width = 862
    Height = 41
    TabOrder = 4
    object BBGravar: TBitBtn
      Left = 552
      Top = 5
      Width = 89
      Height = 29
      Caption = '&Deletar'
      TabOrder = 0
      OnClick = BBGravarClick
      Kind = bkYes
    end
    object BBCancelar: TBitBtn
      Left = 661
      Top = 4
      Width = 81
      Height = 29
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = BBCancelarClick
      Kind = bkCancel
    end
  end
end
