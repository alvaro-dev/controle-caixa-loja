object FrmCadCx: TFrmCadCx
  Left = 268
  Top = 176
  AutoSize = True
  BorderStyle = bsSingle
  Caption = 'Cadastro de Caixas'
  ClientHeight = 377
  ClientWidth = 457
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
    Width = 457
    Height = 41
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 48
      Top = 8
      Width = 297
      Height = 25
      DataSource = DataSource1
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
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
      OnClick = DBNavigator1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 457
    Height = 336
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 456
      Height = 329
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CXID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CXDESC'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CXSTATUS'
          PickList.Strings = (
            'A=ABERTO'
            'F=FECHADO')
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CXBLQ'
          PickList.Strings = (
            'S=SIM'
            'N=NAO')
          Visible = True
        end>
    end
  end
  object ADOTabCadCx: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'caixas'
    Left = 88
    Top = 232
    object ADOTabCadCxCXID: TWordField
      DisplayLabel = 'No.do Caixa'
      FieldName = 'CXID'
      DisplayFormat = '000000000'
      EditFormat = '000000000'
    end
    object ADOTabCadCxCXDESC: TWideStringField
      DisplayLabel = 'Descri'#231#227'o do Caixa'
      FieldName = 'CXDESC'
      Size = 40
    end
    object ADOTabCadCxCXSTATUS: TWideStringField
      DefaultExpression = 'F'
      DisplayLabel = 'Status'
      FieldName = 'CXSTATUS'
      Size = 1
    end
    object ADOTabCadCxCXBLQ: TWideStringField
      DefaultExpression = 'N'
      DisplayLabel = 'Caixa Bloqueado?'
      FieldName = 'CXBLQ'
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTabCadCx
    Left = 128
    Top = 232
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Extended Properti' +
      'es="DSN=ljcaixa;DESCRIPTION=ljcaixa;SERVER=localhost;UID=localho' +
      'st;DATABASE=ljcaixa;PORT=3306"'
    LoginPrompt = False
    Left = 48
    Top = 233
  end
end
