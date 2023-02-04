object FrmMudasSenha: TFrmMudasSenha
  Left = 288
  Top = 145
  AutoSize = True
  BorderStyle = bsSingle
  Caption = 'Mudar Senha'
  ClientHeight = 186
  ClientWidth = 410
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
    Left = 1
    Top = 0
    Width = 409
    Height = 145
    TabOrder = 0
    object Label2: TLabel
      Left = 16
      Top = 26
      Width = 159
      Height = 16
      Caption = 'Digite sua senha atual:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 70
      Width = 143
      Height = 16
      Caption = 'Digite a nova senha:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 17
      Top = 101
      Width = 163
      Height = 16
      Caption = 'Confirme a nova senha:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdtSenAtual: TEdit
      Left = 184
      Top = 20
      Width = 201
      Height = 21
      PasswordChar = '*'
      TabOrder = 0
      OnExit = EdtSenAtualExit
    end
    object EdtSenNew: TEdit
      Left = 184
      Top = 64
      Width = 201
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
      OnExit = EdtSenNewExit
    end
    object EdtSenConf: TEdit
      Left = 184
      Top = 96
      Width = 201
      Height = 21
      PasswordChar = '*'
      TabOrder = 2
      OnExit = EdtSenConfExit
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 145
    Width = 410
    Height = 41
    TabOrder = 1
    object BBOk: TBitBtn
      Left = 192
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      OnClick = BBOkClick
      Kind = bkOK
    end
    object BBCancel: TBitBtn
      Left = 288
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      OnClick = BBCancelClick
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
    Left = 8
    Top = 152
  end
  object ADOTabMudSen: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'usuarios'
    Left = 48
    Top = 152
    object ADOTabMudSenUSID: TWordField
      FieldName = 'USID'
    end
    object ADOTabMudSenUSLOGIN: TWideStringField
      FieldName = 'USLOGIN'
    end
    object ADOTabMudSenUSSENHA: TWideStringField
      FieldName = 'USSENHA'
      Size = 90
    end
    object ADOTabMudSenUSNOME: TWideStringField
      FieldName = 'USNOME'
      Size = 40
    end
    object ADOTabMudSenUSTIPO: TWideStringField
      FieldName = 'USTIPO'
      Size = 3
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTabMudSen
    Left = 88
    Top = 152
  end
end
