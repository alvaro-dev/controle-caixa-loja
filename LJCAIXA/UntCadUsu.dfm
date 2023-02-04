object FrmCadUsu: TFrmCadUsu
  Left = 277
  Top = 198
  AutoSize = True
  BorderStyle = bsSingle
  Caption = 'Cadastro de Usu'#225'rios'
  ClientHeight = 465
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
      Width = 306
      Height = 25
      DataSource = DSUsu
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel, nbRefresh]
      Hints.Strings = (
        'Primeiro Registro'
        'Anterior'
        'Pr'#243'ximo'
        'Ultimo Resgistro'
        'Incluir'
        'Editar'
        'Gravar'
        'Cancelar'
        'Atualizar')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 861
    Height = 424
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 24
      Top = 184
      Width = 817
      Height = 129
      Caption = ' Dados de Login '
      TabOrder = 0
      object Label2: TLabel
        Left = 24
        Top = 32
        Width = 26
        Height = 13
        Caption = 'Login'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 24
        Top = 72
        Width = 31
        Height = 13
        Caption = 'Senha'
        FocusControl = DBEdit3
      end
      object DBEdit2: TDBEdit
        Left = 24
        Top = 48
        Width = 264
        Height = 21
        DataField = 'USLOGIN'
        DataSource = DSUsu
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 24
        Top = 88
        Width = 265
        Height = 21
        DataField = 'USSENHA'
        DataSource = DSUsu
        PasswordChar = #1
        TabOrder = 1
      end
    end
    object GroupBox2: TGroupBox
      Left = 24
      Top = 24
      Width = 817
      Height = 153
      Caption = ' Dados do Usu'#225'rio '
      TabOrder = 1
      object Label1: TLabel
        Left = 24
        Top = 16
        Width = 48
        Height = 13
        Caption = 'Id.Usu'#225'rio'
        FocusControl = DBEdit1
      end
      object Label4: TLabel
        Left = 24
        Top = 56
        Width = 82
        Height = 13
        Caption = 'Nome do Usu'#225'rio'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 24
        Top = 100
        Width = 54
        Height = 13
        Caption = 'Nivel Menu'
        FocusControl = DBEdit5
      end
      object DBEdit1: TDBEdit
        Left = 24
        Top = 32
        Width = 65
        Height = 21
        DataField = 'USID'
        DataSource = DSUsu
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit4: TDBEdit
        Left = 24
        Top = 72
        Width = 481
        Height = 21
        DataField = 'USNOME'
        DataSource = DSUsu
        TabOrder = 1
      end
      object DBEdit5: TDBEdit
        Left = 24
        Top = 116
        Width = 121
        Height = 21
        DataField = 'USTIPO'
        DataSource = DSUsu
        TabOrder = 2
      end
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Extended Properti' +
      'es="DSN=ljcaixa;UID=localhost;DESCRIPTION=ljcaixa;SERVER=localho' +
      'st;DATABASE=ljcaixa;PORT=3306;"'
    LoginPrompt = False
    Left = 488
    Top = 8
  end
  object ADOTab_Usu: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'usuarios'
    Left = 536
    Top = 8
    object ADOTab_UsuUSID: TWordField
      DisplayLabel = 'Id.Usu'#225'rio'
      FieldName = 'USID'
      DisplayFormat = '000000000'
      EditFormat = '000000000'
    end
    object ADOTab_UsuUSLOGIN: TWideStringField
      DisplayLabel = 'Login'
      FieldName = 'USLOGIN'
    end
    object ADOTab_UsuUSSENHA: TWideStringField
      DisplayLabel = 'Senha'
      FieldName = 'USSENHA'
      Size = 90
    end
    object ADOTab_UsuUSNOME: TWideStringField
      DisplayLabel = 'Nome do Usu'#225'rio'
      FieldName = 'USNOME'
      Size = 40
    end
    object ADOTab_UsuUSTIPO: TWideStringField
      DisplayLabel = 'Nivel Menu'
      FieldName = 'USTIPO'
      Size = 3
    end
  end
  object DSUsu: TDataSource
    DataSet = ADOTab_Usu
    Left = 576
    Top = 8
  end
end
