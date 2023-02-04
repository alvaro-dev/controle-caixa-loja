object FrmMenus: TFrmMenus
  Left = 205
  Top = 114
  AutoSize = True
  BorderStyle = bsSingle
  Caption = 'Cadastro de Menus'
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
      DataSource = DSMenu
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
    object DBGrid1: TDBGrid
      Left = 0
      Top = 1
      Width = 858
      Height = 423
      DataSource = DSMenu
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
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
    TableName = 'menus'
    Left = 536
    Top = 8
    object ADOTab_UsuMNID: TWordField
      DisplayLabel = 'Id.Menu'
      FieldName = 'MNID'
      DisplayFormat = '000000000'
      EditFormat = '000000000'
    end
    object ADOTab_UsuMNDESC: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'MNDESC'
      Size = 40
    end
    object ADOTab_UsuMNSEQ: TWideStringField
      DisplayLabel = 'Sequencia'
      FieldName = 'MNSEQ'
      Size = 2
    end
    object ADOTab_UsuMNSBM: TWideStringField
      DisplayLabel = 'SubMenu'
      FieldName = 'MNSBM'
      Size = 2
    end
    object ADOTab_UsuMNTP: TWideStringField
      DisplayLabel = 'Nivel de Menu'
      FieldName = 'MNTP'
      Size = 3
    end
    object ADOTab_UsuMNBLQ: TWideStringField
      DisplayLabel = 'Bloqueado?'
      FieldName = 'MNBLQ'
      Size = 1
    end
  end
  object DSMenus: TDataSource
    DataSet = ADOTab_Usu
    Left = 584
    Top = 8
  end
  object ADOQMenus: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from menus order by MNSEQ, MNSBM'
      '')
    Left = 648
    Top = 8
    object ADOQMenusMNID: TWordField
      DisplayLabel = 'Id.Menu'
      FieldName = 'MNID'
      DisplayFormat = '000000000'
      EditFormat = '000000000'
    end
    object ADOQMenusMNDESC: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'MNDESC'
      Size = 40
    end
    object ADOQMenusMNSEQ: TWideStringField
      DisplayLabel = 'Cod.Sequencia Menu'
      FieldName = 'MNSEQ'
      Size = 2
    end
    object ADOQMenusMNSBM: TWideStringField
      DisplayLabel = 'Cod.SubMenu'
      FieldName = 'MNSBM'
      Size = 2
    end
    object ADOQMenusMNTP: TWideStringField
      DisplayLabel = 'NIvel Menu X Usu'#225'rio'
      FieldName = 'MNTP'
      Size = 3
    end
    object ADOQMenusMNBLQ: TWideStringField
      DisplayLabel = 'Bloqueado para uso?'
      FieldName = 'MNBLQ'
      Size = 1
    end
  end
  object DSMenu: TDataSource
    DataSet = ADOQMenus
    Left = 696
    Top = 8
  end
end
