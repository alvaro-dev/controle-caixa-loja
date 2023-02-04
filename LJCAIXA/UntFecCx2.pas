unit UntFecCx2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, DB, ADODB, Buttons;

type
  TFrmFecCx = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    ADOConnection1: TADOConnection;
    ADOTab_AcD: TADOTable;
    ADOTab_AcDFCID: TAutoIncField;
    ADOTab_AcDFCCXFK: TWordField;
    ADOTab_AcDFCDT: TDateField;
    ADOTab_AcDFCVLDIN: TFloatField;
    ADOTab_AcDFCVLCHEQ: TFloatField;
    ADOTab_AcDFCVLCC: TFloatField;
    ADOTab_AcDFCVLCD: TFloatField;
    ADOTab_AcDFCTROCO: TFloatField;
    ADOTab_AcDFCVLOUTROS: TFloatField;
    ADOTab_AcDFCVLTOTREC: TFloatField;
    ADOTab_AcDFCVLTOTPAG: TFloatField;
    ADOTab_AcDFCSLDINI: TFloatField;
    ADOTab_AcDFCSLDFIN: TFloatField;
    ADOTab_AcDFCSLDATUAL: TFloatField;
    ADOTab_AcDFCSEQAB: TWideStringField;
    DataSource1: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Panel3: TPanel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ADOTab_Mvb: TADOTable;
    ADOTab_MvbMVBID: TAutoIncField;
    ADOTab_MvbMVBCXFK: TWordField;
    ADOTab_MvbMVBDTMOV: TDateField;
    ADOTab_MvbMVBHRMOV: TTimeField;
    ADOTab_MvbMVBDESC: TWideStringField;
    ADOTab_MvbMVBVALOR: TFloatField;
    ADOTab_MvbMVBTPRP: TWideStringField;
    ADOTab_MvbMVBFORMPAG: TWideStringField;
    ADOTab_MvbMVBOBS: TMemoField;
    ADOTab_MvbMVBVLDIN: TFloatField;
    ADOTab_MvbMVBVLCHEQ: TFloatField;
    ADOTab_MvbMVBVLCC: TFloatField;
    ADOTab_MvbMVBVLCD: TFloatField;
    ADOTab_MvbMVBVLTROCO: TFloatField;
    ADOTab_MvbMVBVLOUTROS: TFloatField;
    ADOTab_MvbMVBUSU: TWideStringField;
    ADOTab_MvbMVBFLGREC: TWideStringField;
    ADOTab_MvbMVBSEQAB: TWideStringField;
    Label13: TLabel;
    EdtTotVenda: TEdit;
    ADOQMvbCx: TADOQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFecCx: TFrmFecCx;

implementation

{$R *.dfm}

Uses UntCxAF, UntPrinc;

procedure TFrmFecCx.FormActivate(Sender: TObject);
begin
  //Posicionar registro para fechamento
  ADOTab_AcD.Filtered:=False;
  ADOTab_AcD.Filter:='FCDT='+Trim(dDatabase);
  ADOTab_AcD.Filtered:=True;
  ADOTab_AcD.Open;
  ADOTab_AcD.Refresh;
  //ADOTab_Mvb.Refresh;
  EdtTotVenda.text:= formatfloat('#####0.00', strtofloat(DBEdit10.Text) - strtofloat(DBEdit8.Text)); //floattostr(strtofloat(DBEdit10.Text) - strtofloat(DBEdit8.Text));
end;

procedure TFrmFecCx.BitBtn1Click(Sender: TObject);
begin
  //Fechar o caixa apos conferencia de tela
  FrmCxAF.ADOTabCxAF.Edit;
  FrmCxAF.ADOTabCxAFCXDTFEC.Value := StrToDate(dDatabase);
  FrmCxAF.ADOTabCxAFCXHRFEC.Value := Time;
  FrmCxAF.ADOTabCxAFCXSTATUS.Value:='F';
  FrmCxAF.ADOTabCxAF.Post;
  FrmCxAF.ADOTabCxAF.Refresh;
  if FrmCxAF.ADOTabCxAFCXSTATUS.AsString = 'A' then
  begin
    FrmCxAF.BBCAb.Enabled:=False;
    FrmCxAF.BBCFec.Enabled:=True;
    FrmCxAF.LbStatus.Caption:='CAIXA ABERTO';
    FrmCxAF.LbStatus.Font.Color:=clGreen;
  end
  else if (FrmCxAF.ADOTabCxAFCXSTATUS.AsString = 'F') OR (FrmCxAF.ADOTabCxAFCXSTATUS.AsString = '3') then
  begin
    FrmCxAF.BBCAb.Enabled:=True;
    FrmCxAF.BBCFec.Enabled:=False;
    FrmCxAF.LbStatus.Caption:='CAIXA FECHADO';
    FrmCxAF.LbStatus.Font.Color:=clRed;
  end;

  //Reconciliar todos movimentos do dia
  ADOQMvbCx.SQL.Clear;
  //ADOQMvbCx.SQL.Add('UPDATE MOVCX SET MVBFLGREC = "X" WHERE MVBDTMOV = '+trim(dDatabase));
  ADOQMvbCx.SQL.Add('update MOVCX set MVBFLGREC = '+''''+'X'+''''+' WHERE MVBDTMOV = '+''''+dDatabase+''''+'');
  ADOQMvbCx.ExecSQL;
  {ADOTab_Mvb.Filtered:=False;
  ADOTab_Mvb.Filter:='MVBDTMOV='+Trim(dDatabase);
  ADOTab_Mvb.Filtered:=True;
  ADOTab_Mvb.Open;
  ADOTab_Mvb.First;
  ADOTab_Mvb.Edit;
  while not ADOTab_Mvb.Eof do
  begin

    ADOTab_MvbMVBFLGREC.AsString:='X';
    //ADOTab_Mvb.Post;
    ADOTab_Mvb.Next;
  end;
  ADOTab_Mvb.Post;
  }
  close;
end;

procedure TFrmFecCx.BitBtn2Click(Sender: TObject);
begin
  ADOTab_AcD.Close;
  Close;
end;

end.
