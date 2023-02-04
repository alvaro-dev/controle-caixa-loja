inherited FrmAltMvCx: TFrmAltMvCx
  Left = 223
  Top = 193
  Caption = 'Alterar Movimento Caixa'
  FormStyle = fsNormal
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited BBIncluir: TBitBtn
      Visible = False
    end
  end
  inherited Panel2: TPanel
    inherited GroupBox1: TGroupBox
      inherited Label15: TLabel
        Visible = False
      end
      inherited DBEdit2: TDBEdit
        ReadOnly = True
        OnExit = nil
      end
      inherited DBEdit11: TDBEdit
        DataField = 'MVBDESC'
        Visible = False
      end
    end
  end
  inherited Panel3: TPanel
    inherited GroupBox2: TGroupBox
      inherited DBEdit6: TDBEdit
        OnExit = nil
      end
    end
  end
  inherited MonthCalendar1: TMonthCalendar
    Date = 41227.582287164350000000
  end
  inherited ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Extended Properti' +
      'es="DSN=ljcaixa;DESCRIPTION=ljcaixa;SERVER=localhost;UID=localho' +
      'st;DATABASE=ljcaixa;PORT=3306"'
  end
end
