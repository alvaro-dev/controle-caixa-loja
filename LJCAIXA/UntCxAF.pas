unit UntCxAF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, Buttons, DB, ADODB;

type
  TFrmCxAF = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    ADOConnection1: TADOConnection;
    ADOTabCxAF: TADOTable;
    ADOTabCxAFCXID: TWordField;
    ADOTabCxAFCXDESC: TWideStringField;
    ADOTabCxAFCXBLQ: TWideStringField;
    ADOTabCxAFCXSTATUS: TWideStringField;
    ADOTabCxAFCXDTABERT: TDateField;
    ADOTabCxAFCXHRABERT: TTimeField;
    ADOTabCxAFCXDTFEC: TDateField;
    ADOTabCxAFCXHRFEC: TTimeField;
    DataSource1: TDataSource;
    BBCAb: TBitBtn;
    BBCFec: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    LbStatus: TLabel;
    ADOTab_CxMov: TADOTable;
    ADOTab_CxMovMVBID: TAutoIncField;
    ADOTab_CxMovMVBCXFK: TWordField;
    ADOTab_CxMovMVBDTMOV: TDateField;
    ADOTab_CxMovMVBHRMOV: TTimeField;
    ADOTab_CxMovMVBDESC: TWideStringField;
    ADOTab_CxMovMVBVALOR: TFloatField;
    ADOTab_CxMovMVBTPRP: TWideStringField;
    ADOTab_CxMovMVBFORMPAG: TWideStringField;
    ADOTab_CxMovMVBOBS: TMemoField;
    ADOTab_CxMovMVBVLDIN: TFloatField;
    ADOTab_CxMovMVBVLCHEQ: TFloatField;
    ADOTab_CxMovMVBVLCC: TFloatField;
    ADOTab_CxMovMVBVLCD: TFloatField;
    ADOTab_CxMovMVBVLTROCO: TFloatField;
    ADOTab_CxMovMVBVLOUTROS: TFloatField;
    ADOTab_CxMovMVBUSU: TWideStringField;
    ADOTab_CxMovMVBFLGREC: TWideStringField;
    ADOTab_AcCx: TADOTable;
    ADOTab_AcCxFCID: TAutoIncField;
    ADOTab_AcCxFCCXFK: TWordField;
    ADOTab_AcCxFCDT: TDateField;
    ADOTab_AcCxFCVLDIN: TFloatField;
    ADOTab_AcCxFCVLCHEQ: TFloatField;
    ADOTab_AcCxFCVLCC: TFloatField;
    ADOTab_AcCxFCVLCD: TFloatField;
    ADOTab_AcCxFCTROCO: TFloatField;
    ADOTab_AcCxFCVLOUTROS: TFloatField;
    ADOTab_AcCxFCVLTOTREC: TFloatField;
    ADOTab_AcCxFCVLTOTPAG: TFloatField;
    ADOTab_AcCxFCSLDINI: TFloatField;
    ADOTab_AcCxFCSLDFIN: TFloatField;
    ADOTab_AcCxFCSLDATUAL: TFloatField;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    DataSource2: TDataSource;
    ADOTabCxAFCXSEQAB: TWideStringField;
    ADOTab_CxMovMVBSEQAB: TWideStringField;
    ADOTab_AcCxFCSEQAB: TWideStringField;
    procedure BBCAbClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure BBCFecClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCxAF: TFrmCxAF;

implementation

uses UntAbertCx2, UntFecCx2, UntPrinc;

{$R *.dfm}

procedure TFrmCxAF.BBCAbClick(Sender: TObject);
begin
  {if ADOTabCxAFCXDTABERT.Value < date then
  begin
    if (ADOTabCxAFCXDTFEC.Value <= ADOTabCxAFCXDTABERT.Value) and
       (ADOTabCxAFCXDTFEC.Value < Date) then
    begin
      ADOTabCxAF.Edit;
      ADOTabCxAFCXDTABERT.Value := Date;
      ADOTabCxAFCXHRABERT.Value := Time;
      ADOTabCxAFCXSTATUS.Value:='A';
      ADOTabCxAF.Post;
      ADOTabCxAF.Refresh;
      LbStatus.Caption:='CAIXA ABERTO';
      LbStatus.Font.Color:=clGreen;
    end
    else begin
      MessageDlg('Caixa j� Fechado no dia.',mtInformation,mbOKCancel,0);
      ADOTabCxAF.Refresh;
    end;
  end
  else begin
    MessageDlg('Caixa j� est� aberto ou j� foi aberto no dia.',mtInformation,mbOKCancel,0);
    ADOTabCxAF.Refresh;
  end;

  if ADOTabCxAFCXSTATUS.AsString = 'A' then
  begin
    BBCAb.Enabled:=False;
    BBCFec.Enabled:=True;
    LbStatus.Caption:='CAIXA ABERTO';
    LbStatus.Font.Color:=clGreen;
  end
  else if (ADOTabCxAFCXSTATUS.AsString = 'F') OR (ADOTabCxAFCXSTATUS.AsString = '3') then
  begin
    BBCAb.Enabled:=True;
    BBCFec.Enabled:=False;
    LbStatus.Caption:='CAIXA FECHADO';
    LbStatus.Font.Color:=clRed;
  end;}
  //MessageDlg('Database: '+dDatabase,mtInformation,mbOKCancel,0);
  if ((ADOTabCxAFCXSTATUS.AsString <> 'A') and (ADOTabCxAFCXBLQ.AsString = 'N') and
      (ADOTabCxAFCXDTABERT.Value < StrToDate(dDatabase)) ) then begin
    FrmCxAF.ADOTab_CxMov.Insert;
    FrmAbertCx.ShowModal;
  end
  else begin
    MessageDlg('Caixa encontra-se aberto para esta database ou database � inv�lida.',mtWarning,mbOKCancel,0);
  end;
end;

procedure TFrmCxAF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmCxAF.Release;
  FrmCxAF:=Nil;
end;

procedure TFrmCxAF.FormActivate(Sender: TObject);
begin
  //MessageDlg(ADOTabCxAFCXDESC.AsString,mtInformation,mbOKCancel,0);
  if ADOTabCxAFCXSTATUS.AsString = 'A' then
  begin
    BBCAb.Enabled:=False;
    BBCFec.Enabled:=True;
    LbStatus.Caption:='CAIXA ABERTO';
    LbStatus.Font.Color:=clGreen;
  end
  else if (ADOTabCxAFCXSTATUS.AsString = 'F') OR (ADOTabCxAFCXSTATUS.AsString = '3') then
  begin
    BBCAb.Enabled:=True;
    BBCFec.Enabled:=False;
    LbStatus.Caption:='CAIXA FECHADO';
    LbStatus.Font.Color:=clRed;
  end;
end;

procedure TFrmCxAF.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button = nbFirst) or (Button = nbPrior) or
      (Button = nbNext) or (Button = nbLast) then
  begin
    if ADOTabCxAFCXSTATUS.AsString = 'A' then
    begin
      BBCAb.Enabled:=False;
      BBCFec.Enabled:=True;
      LbStatus.Caption:='CAIXA ABERTO';
      LbStatus.Font.Color:=clGreen;
    end
    else if (ADOTabCxAFCXSTATUS.AsString = 'F') OR
            (ADOTabCxAFCXSTATUS.AsString = '3') then
    begin
      BBCAb.Enabled:=True;
      BBCFec.Enabled:=False;
      LbStatus.Caption:='CAIXA FECHADO';
      LbStatus.Font.Color:=clRed;
    end;
  end;
end;

procedure TFrmCxAF.BBCFecClick(Sender: TObject);
begin
  {ADOTabCxAF.Edit;
  ADOTabCxAFCXDTFEC.Value := Date;
  ADOTabCxAFCXHRFEC.Value := Time;
  ADOTabCxAFCXSTATUS.Value:='F';
  ADOTabCxAF.Post;
  ADOTabCxAF.Refresh;
  if ADOTabCxAFCXSTATUS.AsString = 'A' then
  begin
    BBCAb.Enabled:=False;
    BBCFec.Enabled:=True;
    LbStatus.Caption:='CAIXA ABERTO';
    LbStatus.Font.Color:=clGreen;
  end
  else if (ADOTabCxAFCXSTATUS.AsString = 'F') OR (ADOTabCxAFCXSTATUS.AsString = '3') then
  begin
    BBCAb.Enabled:=True;
    BBCFec.Enabled:=False;
    LbStatus.Caption:='CAIXA FECHADO';
    LbStatus.Font.Color:=clRed;
  end;}
  if ((ADOTabCxAFCXSTATUS.AsString <> 'F') and (ADOTabCxAFCXBLQ.AsString = 'N') and
      ((ADOTabCxAFCXDTABERT.Value = StrToDate(dDatabase)) and
        (ADOTabCxAFCXDTFEC.Value  < StrToDate(dDatabase))) ) then begin
    FrmFecCx.ShowModal;
  end
  else begin
    MessageDlg('Caixa encontra-se fechado para esta database ou database � inv�lida.',mtWarning,mbOKCancel,0);
  end;
end;

end.
