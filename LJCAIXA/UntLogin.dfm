object FrmLogin: TFrmLogin
  Left = 5
  Top = 153
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Login'
  ClientHeight = 560
  ClientWidth = 1582
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1582
    Height = 560
    Align = alClient
    AutoSize = True
    TabOrder = 0
    object Panel2: TPanel
      Left = 16
      Top = 200
      Width = 1561
      Height = 257
      Align = alCustom
      TabOrder = 0
      object Label1: TLabel
        Left = 609
        Top = 57
        Width = 82
        Height = 19
        Caption = 'Database :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LbLogin: TLabel
        Left = 636
        Top = 97
        Width = 54
        Height = 19
        Caption = 'Login :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LbSen: TLabel
        Left = 630
        Top = 127
        Width = 59
        Height = 19
        Caption = 'Senha :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BBCancel: TBitBtn
        Left = 806
        Top = 168
        Width = 64
        Height = 25
        TabOrder = 4
        OnClick = BBCancelClick
        Kind = bkCancel
      end
      object BBOk: TBitBtn
        Left = 734
        Top = 168
        Width = 64
        Height = 25
        TabOrder = 3
        OnClick = BBOkClick
        Kind = bkOK
      end
      object MEDatabase: TMaskEdit
        Left = 694
        Top = 57
        Width = 81
        Height = 21
        EditMask = '!99/99/00;1;_'
        MaxLength = 8
        TabOrder = 0
        Text = '  /  /  '
      end
      object EdtLog: TEdit
        Left = 692
        Top = 95
        Width = 179
        Height = 21
        TabOrder = 1
      end
      object EdtSen: TEdit
        Left = 691
        Top = 126
        Width = 180
        Height = 21
        PasswordChar = '*'
        TabOrder = 2
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
    Left = 496
    Top = 408
  end
  object ADOTab_Usu: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'usuarios'
    Left = 536
    Top = 408
    object ADOTab_UsuUSID: TWordField
      FieldName = 'USID'
    end
    object ADOTab_UsuUSLOGIN: TWideStringField
      FieldName = 'USLOGIN'
    end
    object ADOTab_UsuUSSENHA: TWideStringField
      FieldName = 'USSENHA'
      Size = 90
    end
    object ADOTab_UsuUSNOME: TWideStringField
      FieldName = 'USNOME'
      Size = 40
    end
    object ADOTab_UsuUSTIPO: TWideStringField
      FieldName = 'USTIPO'
      Size = 3
    end
  end
  object ADOTab_Menus: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Filter = 'MNSBM<>NULL'
    Filtered = True
    IndexFieldNames = 'MNSEQ'
    TableName = 'menus'
    Left = 576
    Top = 408
    object ADOTab_MenusMNID: TWordField
      FieldName = 'MNID'
    end
    object ADOTab_MenusMNDESC: TWideStringField
      FieldName = 'MNDESC'
      Size = 40
    end
    object ADOTab_MenusMNSEQ: TWideStringField
      FieldName = 'MNSEQ'
      Size = 2
    end
    object ADOTab_MenusMNSBM: TWideStringField
      FieldName = 'MNSBM'
      Size = 2
    end
    object ADOTab_MenusMNTP: TWideStringField
      FieldName = 'MNTP'
      Size = 3
    end
    object ADOTab_MenusMNBLQ: TWideStringField
      FieldName = 'MNBLQ'
      Size = 1
    end
  end
  object MainMenu1: TMainMenu
    Left = 448
    Top = 408
    object X1: TMenuItem
      Caption = 'X - FECHAR'
      OnClick = X1Click
    end
  end
end
