unit UntVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, DBCtrls, ExtCtrls, StdCtrls, Mask, Buttons, ComCtrls,
  Grids, DBGrids;

type
  TFrmVendas = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ADOConnection1: TADOConnection;
    ADOTabMvbCx: TADOTable;
    ADOTabMvbCxMVBID: TAutoIncField;
    ADOTabMvbCxMVBCXFK: TWordField;
    ADOTabMvbCxMVBDTMOV: TDateField;
    ADOTabMvbCxMVBHRMOV: TTimeField;
    ADOTabMvbCxMVBDESC: TWideStringField;
    ADOTabMvbCxMVBVALOR: TFloatField;
    ADOTabMvbCxMVBTPRP: TWideStringField;
    ADOTabMvbCxMVBOBS: TMemoField;
    ADOTabMvbCxMVBVLDIN: TFloatField;
    ADOTabMvbCxMVBVLCHEQ: TFloatField;
    ADOTabMvbCxMVBVLCC: TFloatField;
    ADOTabMvbCxMVBVLCD: TFloatField;
    ADOTabMvbCxMVBVLOUTROS: TFloatField;
    ADOTabMvbCxMVBUSU: TWideStringField;
    ADOTabMvbCxMVBFLGREC: TWideStringField;
    ADOTabAcDiario: TADOTable;
    ADOTabAcDiarioFCID: TAutoIncField;
    ADOTabAcDiarioFCCXFK: TWordField;
    ADOTabAcDiarioFCDT: TDateField;
    ADOTabAcDiarioFCVLDIN: TFloatField;
    ADOTabAcDiarioFCVLCHEQ: TFloatField;
    ADOTabAcDiarioFCVLCC: TFloatField;
    ADOTabAcDiarioFCVLCD: TFloatField;
    ADOTabAcDiarioFCTROCO: TFloatField;
    ADOTabAcDiarioFCVLOUTROS: TFloatField;
    ADOTabAcDiarioFCVLTOTREC: TFloatField;
    ADOTabAcDiarioFCVLTOTPAG: TFloatField;
    ADOTabAcDiarioFCSLDINI: TFloatField;
    ADOTabAcDiarioFCSLDFIN: TFloatField;
    ADOTabAcDiarioFCSLDATUAL: TFloatField;
    DSMovCx: TDataSource;
    DSAcDiario: TDataSource;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label8: TLabel;
    DBMemo1: TDBMemo;
    ADOTabCadCx: TADOTable;
    ADOTabCadCxCXID: TWordField;
    ADOTabCadCxCXDESC: TWideStringField;
    ADOTabCadCxCXBLQ: TWideStringField;
    ADOTabCadCxCXSTATUS: TWideStringField;
    ADOTabCadCxCXDTABERT: TDateField;
    ADOTabCadCxCXHRABERT: TTimeField;
    ADOTabCadCxCXDTFEC: TDateField;
    ADOTabCadCxCXHRFEC: TTimeField;
    DataSource1: TDataSource;
    ADOTabMvbCxDescCxIdFk: TStringField;
    Label15: TLabel;
    DBEdit11: TDBEdit;
    ADOTabMvbCxMVBVLTROCO: TFloatField;
    ADOTabMvbCxMVBFORMPAG: TWideStringField;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    BBIncluir: TBitBtn;
    BBGravar: TBitBtn;
    BBCancelar: TBitBtn;
    MonthCalendar1: TMonthCalendar;
    Button1: TButton;
    ADOTabAcDiarioFCSEQAB: TWideStringField;
    ADOTabCadCxCXSEQAB: TWideStringField;
    ADOTabMvbCxMVBSEQAB: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBComboBox2Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure BBIncluirClick(Sender: TObject);
    procedure BBCancelarClick(Sender: TObject);
    procedure BBGravarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure MonthCalendar1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVendas: TFrmVendas;

implementation

Uses UntPrinc;

{$R *.dfm}

procedure TFrmVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmVendas.Release;
  FrmVendas:=Nil;
end;

procedure TFrmVendas.DBComboBox2Exit(Sender: TObject);
begin
  //MessageDlg('mudou',mtInformation,mbOKCancel,0);
  //MessageDlg('DBComboBox2.Text: '+DBComboBox2.Text,mtWarning,mbOKCancel,0);
  //MessageDlg('DBComboBox2.Text: '+DBComboBox2.Text[1]+DBComboBox2.Text[2],mtWarning,mbOKCancel,0);
  //MessageDlg('DBComboBox2.Text: '+DBComboBox2.Text[2],mtWarning,mbOKCancel,0);
  ADOTabMvbCxMVBVLDIN.Value:=0.00;
  ADOTabMvbCxMVBVLCHEQ.Value:=0.00;
  ADOTabMvbCxMVBVLCC.Value:=0.00;
  ADOTabMvbCxMVBVLCD.Value:=0.00;
  ADOTabMvbCxMVBVLOUTROS.Value:=0.00;
  ADOTabMvbCxMVBVLTROCO.Value:=0.00;

  if ADOTabMvbCxMVBFORMPAG.AsString = 'DN' then
    ADOTabMvbCxMVBVLDIN.Value:=ADOTabMvbCxMVBVALOR.Value
  else if ADOTabMvbCxMVBFORMPAG.AsString = 'CH' then
    ADOTabMvbCxMVBVLCHEQ.Value:=ADOTabMvbCxMVBVALOR.Value
  else if ADOTabMvbCxMVBFORMPAG.AsString = 'CC' then
    ADOTabMvbCxMVBVLCC.Value:=ADOTabMvbCxMVBVALOR.Value
  else if ADOTabMvbCxMVBFORMPAG.AsString = 'CD' then
    ADOTabMvbCxMVBVLCD.Value:=ADOTabMvbCxMVBVALOR.Value
  else if ADOTabMvbCxMVBFORMPAG.AsString = 'TR' then
    ADOTabMvbCxMVBVLTROCO.Value:=ADOTabMvbCxMVBVALOR.Value
  else if ADOTabMvbCxMVBFORMPAG.AsString = 'OU' then
    ADOTabMvbCxMVBVLOUTROS.Value:=ADOTabMvbCxMVBVALOR.Value;
    
  if ADOTabMvbCxMVBFORMPAG.AsString = 'CN' then
  begin
    //ADOTabMvbCxMVBVLDIN.Value:=ADOTabMvbCxMVBVALOR.Value;
    //tela.showmodal;
    DBEdit4.ReadOnly:=False;
    DBEdit7.ReadOnly:=False;
    DBEdit8.ReadOnly:=False;
    DBEdit9.ReadOnly:=False;
    DBEdit10.ReadOnly:=False;
    DBEdit12.ReadOnly:=False;
  end
  else begin
    DBEdit4.ReadOnly:=True;
    DBEdit7.ReadOnly:=True;
    DBEdit8.ReadOnly:=True;
    DBEdit9.ReadOnly:=True;
    DBEdit10.ReadOnly:=True;
    DBEdit12.ReadOnly:=True;
  end;
end;

procedure TFrmVendas.DBEdit2Exit(Sender: TObject);
begin
  if (ADOTabCadCxCXSTATUS.AsString = 'F') or
     (ADOTabCadCxCXBLQ.AsString = 'S') then
  begin
    MessageDlg('Caixa Bloqeado para Movimento ou já se encontra fechado. Favor Informar Outro Caixa.',mtInformation,mbOKCancel,0);
    DBEdit2.SetFocus;
  end;
end;

procedure TFrmVendas.BBIncluirClick(Sender: TObject);
begin
  if ADOTabCadCxCXSTATUS.Value = 'A' then begin
    DBEdit1.Enabled := True;
    DBEdit2.Enabled := True;
    DBEdit3.Enabled := True;
    DBEdit4.Enabled := True;
    DBEdit5.Enabled := True;
    DBEdit6.Enabled := True;
    DBEdit7.Enabled := True;
    DBEdit8.Enabled := True;
    DBEdit9.Enabled := True;
    DBEdit10.Enabled := True;
    DBEdit11.Enabled := True;
    DBEdit12.Enabled := True;
    DBComboBox1.Enabled:=True;
    DBComboBox2.Enabled:=True;
    //Button1.Enabled:=True;
    ADOTabMvbCx.Active:=True;
    ADOTabMvbCx.Insert;
    ADOTabMvbCxMVBCXFK.Value:=1;
    ADOTabMvbCxMVBDTMOV.Value:=StrToDate(dDatabase);
    ADOTabMvbCxMVBHRMOV.Value:=Time;
    ADOTabMvbCxMVBVALOR.Value:=0.00;
    ADOTabMvbCxMVBTPRP.AsString:='R';
    //ADOTabMvbCxMVBFORMPAG.Value:=DBComboBox2.Items[1];
    ADOTabMvbCxMVBFORMPAG.AsString := 'DN';
    ADOTabMvbCxMVBVLDIN.Value:=0.00;
    ADOTabMvbCxMVBVLCHEQ.Value:=0.00;
    ADOTabMvbCxMVBVLCC.Value:=0.00;
    ADOTabMvbCxMVBVLCD.Value:=0.00;
    ADOTabMvbCxMVBVLOUTROS.Value:=0.00;
    ADOTabMvbCxMVBVLTROCO.Value:=0.00;
    ADOTabMvbCxMVBUSU.Text:= aUser[1];

    BBIncluir.Enabled:=False;
    BBGravar.Enabled:=True;
    BBCancelar.Enabled:=True;
    //Button1 desabilitado para não alterar data do movimento
    //Button1.Enabled:=True;
    MonthCalendar1.Visible:=False;
    DBEdit5.SetFocus;
  end
  Else
  begin
    MessageDlg('Caixa encontra-se fechado. Favor Informar Outro Caixa.',mtInformation,mbOKCancel,0);
  end;
end;

procedure TFrmVendas.BBCancelarClick(Sender: TObject);
begin
  ADOTabMvbCx.Cancel;
  ADOTabMvbCx.Active:=False;

  BBIncluir.Enabled:=True;
  BBGravar.Enabled:=False;
  BBCancelar.Enabled:=False;
  Button1.Enabled:=False;
  MonthCalendar1.Visible:=False;

  DBEdit1.Enabled := True;
  DBEdit2.Enabled := True;
  DBEdit3.Enabled := True;
  DBEdit4.Enabled := True;
  DBEdit5.Enabled := True;
  DBEdit6.Enabled := True;
  DBEdit7.Enabled := True;
  DBEdit8.Enabled := True;
  DBEdit9.Enabled := True;
  DBEdit10.Enabled := True;
  DBEdit11.Enabled := True;
  DBEdit12.Enabled := True;
  DBComboBox1.Enabled:=True;
  DBComboBox2.Enabled:=True;
end;

procedure TFrmVendas.BBGravarClick(Sender: TObject);
var
  VlLanc:Double;
  VlTotFPag:Double;
begin
  //MessageDlg('DBEdit6.Text:'+DBEdit6.Text,mtWarning,mbOKCancel,0);
  //MessageDlg('ADOTabMvbCxMVBVALOR.AsString:'+ADOTabMvbCxMVBVALOR.AsString,mtWarning,mbOKCancel,0);
  VlLanc    := ADOTabMvbCxMVBVALOR.Value;
  VlTotFPag := ADOTabMvbCxMVBVLDIN.Value+ADOTabMvbCxMVBVLCHEQ.Value+ADOTabMvbCxMVBVLCC.Value+ADOTabMvbCxMVBVLCD.Value+ADOTabMvbCxMVBVLOUTROS.Value+ADOTabMvbCxMVBVLTROCO.Value;
  //MessageDlg('VlLanc:'+FloatToStr(VlLanc),mtWarning,mbOKCancel,0);
  //MessageDlg('VlTotFPag:'+FloatToStr(VlTotFPag),mtWarning,mbOKCancel,0);
  //Validação de campos
  if (ADOTabCadCxCXSTATUS.AsString = 'F') or
     (ADOTabCadCxCXBLQ.AsString = 'S') then
  begin
    MessageDlg('Caixa Bloqeado para Movimento ou já se encontra fechado. Favor Informar Outro Caixa.',mtWarning,mbOKCancel,0);
    DBEdit2.SetFocus;
  end
  else if dbedit3.Text = '' then
  begin
    MessageDlg('Data do Lançamento Inválida.',mtWarning,mbOKCancel,0);
    DBEdit3.SetFocus;
  end
  else if dbedit5.Text = '' then
  begin
    MessageDlg('Informar uma Descrição para o Lançamento.',mtWarning,mbOKCancel,0);
    DBEdit5.SetFocus;
  end
  else if DBEdit6.Text = '0,00' then
  begin
    MessageDlg('Informar o valor do Lançamento.',mtWarning,mbOKCancel,0);
    DBEdit6.SetFocus;
  end
  else if (DBComboBox1.Text[1] <> 'R') and (DBComboBox1.Text[1] <> 'P') then
  begin
    MessageDlg('Informar um Tipo de Lançamento. R/P.',mtWarning,mbOKCancel,0);
    DBComboBox1.SetFocus;
  end
  else if (DBComboBox2.Text[1]+DBComboBox2.Text[2] <> 'DN') and (DBComboBox2.Text[1]+DBComboBox2.Text[2] <> 'CH') and
          (DBComboBox2.Text[1]+DBComboBox2.Text[2] <> 'CC') and (DBComboBox2.Text[1]+DBComboBox2.Text[2] <> 'CD') and
          (DBComboBox2.Text[1]+DBComboBox2.Text[2] <> 'TR') and (DBComboBox2.Text[1]+DBComboBox2.Text[2] <> 'OU') and
          (DBComboBox2.Text[1]+DBComboBox2.Text[2] <> 'CN') then
  begin
    MessageDlg('Informar uma Forma de Pagamento válida.',mtWarning,mbOKCancel,0);
    DBComboBox2.SetFocus;
  end
  else if (DBEdit4.Text  = '0,00') and (DBEdit7.Text  = '0,00') and
          (DBEdit8.Text  = '0,00') and (DBEdit9.Text  = '0,00') and
          (DBEdit10.Text = '0,00') and (DBEdit12.Text = '0,00') then
  begin
    MessageDlg('Validar valor pago de acordo com a Forma de Pagamento.',mtWarning,mbOKCancel,0);
    DBComboBox2.SetFocus;
  end
  else if VlLanc <> VlTotFPag then
  begin
    MessageDlg('Valor total do Lançamento não confere com o total informado na Forma de Pagamento.',mtWarning,mbOKCancel,0);
    DBComboBox2.SetFocus;
  end
  else begin
    //numeracao sequencia do caixa para dia de hoje
    //ADOTabMvbCxMVBSEQAB.Value:='1';



    //MessageDlg('Data1: '+DateToStr(date),mtWarning,mbOKCancel,0);

    //MVBFLGREC<>'X  '
    //ADOTabAcDiario.Filter:='MVBDTMOV=15/11/2012';
    ADOTabAcDiario.Filtered:=False;
    //ADOTabAcDiario.Filter:='FCDT='''+DateToStr(date)+'';
    //ADOTabAcDiario.Filter:='FCDT=15/11/2012';
    ADOTabAcDiario.Filter:='FCDT='+Trim(dDatabase);
    ADOTabAcDiario.Filtered:=True;
    //ADOTabAcDiario.Filtered:=False;
    //ADOTabAcDiario.Filter:='FCSEQAB=''1        ''';
    //ADOTabAcDiario.Filtered:=True;
    ADOTabAcDiario.Open;
    //MessageDlg('Data22222: '+DateToStr(date),mtWarning,mbOKCancel,0);
    ADOTabAcDiario.Edit;
    ADOTabAcDiarioFCCXFK.Value:=ADOTabMvbCxMVBCXFK.Value;
    ADOTabAcDiarioFCDT.Value:=ADOTabMvbCxMVBDTMOV.Value;
    if ADOTabMvbCxMVBTPRP.AsString = 'R' then begin
      ADOTabAcDiarioFCVLDIN.Value     := ADOTabAcDiarioFCVLDIN.Value    + ADOTabMvbCxMVBVLDIN.Value;
      ADOTabAcDiarioFCVLCHEQ.Value    := ADOTabAcDiarioFCVLCHEQ.Value   + ADOTabMvbCxMVBVLCHEQ.Value;
      ADOTabAcDiarioFCVLCC.Value      := ADOTabAcDiarioFCVLCC.Value     + ADOTabMvbCxMVBVLCC.Value;
      ADOTabAcDiarioFCVLCD.Value      := ADOTabAcDiarioFCVLCD.Value     + ADOTabMvbCxMVBVLCD.Value;
      ADOTabAcDiarioFCVLOUTROS.Value  := ADOTabAcDiarioFCVLOUTROS.Value + ADOTabMvbCxMVBVLOUTROS.Value;
      ADOTabAcDiarioFCTROCO.Value     := ADOTabAcDiarioFCTROCO.Value    + ADOTabMvbCxMVBVLTROCO.Value;
      ADOTabAcDiarioFCVLTOTREC.Value  := ADOTabAcDiarioFCVLTOTREC.Value + ADOTabMvbCxMVBVALOR.Value;
      ADOTabAcDiarioFCSLDATUAL.Value  := ADOTabAcDiarioFCSLDATUAL.Value + ADOTabMvbCxMVBVALOR.Value;
    end
    else if ADOTabMvbCxMVBTPRP.AsString = 'P' then begin
      ADOTabAcDiarioFCVLDIN.Value     := ADOTabAcDiarioFCVLDIN.Value    - ADOTabMvbCxMVBVLDIN.Value;
      ADOTabAcDiarioFCVLCHEQ.Value    := ADOTabAcDiarioFCVLCHEQ.Value   - ADOTabMvbCxMVBVLCHEQ.Value;
      ADOTabAcDiarioFCVLCC.Value      := ADOTabAcDiarioFCVLCC.Value     - ADOTabMvbCxMVBVLCC.Value;
      ADOTabAcDiarioFCVLCD.Value      := ADOTabAcDiarioFCVLCD.Value     - ADOTabMvbCxMVBVLCD.Value;
      ADOTabAcDiarioFCVLOUTROS.Value  := ADOTabAcDiarioFCVLOUTROS.Value - ADOTabMvbCxMVBVLOUTROS.Value;
      ADOTabAcDiarioFCTROCO.Value     := ADOTabAcDiarioFCTROCO.Value    - ADOTabMvbCxMVBVLTROCO.Value;
      ADOTabAcDiarioFCVLTOTPAG.Value  := ADOTabAcDiarioFCVLTOTPAG.Value + ADOTabMvbCxMVBVALOR.Value;
      ADOTabAcDiarioFCSLDATUAL.Value  := ADOTabAcDiarioFCSLDATUAL.Value - ADOTabMvbCxMVBVALOR.Value;
    end;
    //ADOTabAcDiarioFCSEQAB.Value := ADOTabMvbCxMVBSEQAB.Value;
    ADOTabAcDiario.Post;
    ADOTabMvbCx.Post;
    ADOTabMvbCx.Active:=False;
    ADOTabAcDiario.Active:=False;

    BBIncluir.Enabled:=True;
    BBGravar.Enabled:=False;
    BBCancelar.Enabled:=False;
    Button1.Enabled:=False;
    MonthCalendar1.Visible:=False;

    DBEdit1.Enabled := True;
    DBEdit2.Enabled := True;
    DBEdit3.Enabled := True;
    DBEdit4.Enabled := True;
    DBEdit5.Enabled := True;
    DBEdit6.Enabled := True;
    DBEdit7.Enabled := True;
    DBEdit8.Enabled := True;
    DBEdit9.Enabled := True;
    DBEdit10.Enabled := True;
    DBEdit11.Enabled := True;
    DBEdit12.Enabled := True;
    DBComboBox1.Enabled:=True;
    DBComboBox2.Enabled:=True;
    BBIncluir.SetFocus;
  end;
end;

procedure TFrmVendas.Button1Click(Sender: TObject);
begin
  MonthCalendar1.Visible:=True;
  MonthCalendar1.Left:=Button1.Left;
  MonthCalendar1.Top:=Button1.Top;
end;

procedure TFrmVendas.MonthCalendar1DblClick(Sender: TObject);
begin
  DBEdit3.Text:=DateToStr(MonthCalendar1.Date);
  MonthCalendar1.Visible:=False;
end;

end.
