unit UntAbertCx2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls;

type
  TFrmAbertCx = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAbertCx: TFrmAbertCx;

implementation

{$R *.dfm}

Uses UntCxAF, UntPrinc, DB;

procedure TFrmAbertCx.BitBtn2Click(Sender: TObject);
begin
  FrmCxAF.ADOTab_CxMov.Cancel;
  FrmAbertCx.Close;
end;

procedure TFrmAbertCx.BitBtn1Click(Sender: TObject);
begin
  if FrmCxAF.ADOTabCxAFCXDTABERT.Value < StrToDate(dDatabase) then
  begin
    //if (FrmCxAF.ADOTabCxAFCXDTFEC.Value < FrmCxAF.ADOTabCxAFCXDTABERT.Value) and
       //(FrmCxAF.ADOTabCxAFCXDTFEC.Value < StrToDate(dDatabase)) then
    if (FrmCxAF.ADOTabCxAFCXSTATUS.AsString <> 'A') then
    begin
      FrmCxAF.ADOTabCxAF.Edit;
      FrmCxAF.ADOTabCxAFCXDTABERT.Value := StrToDate(dDatabase);
      FrmCxAF.ADOTabCxAFCXHRABERT.Value := Time;
      FrmCxAF.ADOTabCxAFCXSTATUS.Value  := 'A';

      //acertar numeração automatica
      //FrmCxAF.ADOTabCxAFCXSEQAB.Value := '1';

      //Alvaro
      //FrmCxAF.ADOTab_CxMov.Insert;
      FrmCxAF.ADOTab_CxMovMVBCXFK.Value   := FrmCxAF.ADOTabCxAFCXID.Value;
      FrmCxAF.ADOTab_CxMovMVBDTMOV.Value  := StrToDate(dDatabase);
      FrmCxAF.ADOTab_CxMovMVBHRMOV.Value  := Time;
      FrmCxAF.ADOTab_CxMovMVBDESC.Value   := 'TROCO';
      //FrmCxAF.ADOTab_CxMovMVBVALOR.Value :=  StrToFloat(trim(DBEdit1.Text));  //StrToCurrDef(trim(Edit1.Text),0);   //StrToCurr(trim(Edit1.Text));
      FrmCxAF.ADOTab_CxMovMVBTPRP.Value   := 'R';
      FrmCxAF.ADOTab_CxMovMVBFORMPAG.Value:= 'TR';
      FrmCxAF.ADOTab_CxMovMVBVLTROCO.Value :=  StrToFloat(trim(DBEdit1.Text)); //FrmCxAF.ADOTab_CxMovMVBVALOR.Value; //StrToFloat(trim(Edit1.Text));
      FrmCxAF.ADOTab_CxMovMVBUSU.Value    := aUser[1];
      FrmCxAF.ADOTab_CxMovMVBVLDIN.Value:=0.00;
      FrmCxAF.ADOTab_CxMovMVBVLCHEQ.Value:=0.00;
      FrmCxAF.ADOTab_CxMovMVBVLCC.Value:=0.00;
      FrmCxAF.ADOTab_CxMovMVBVLCD.Value:=0.00;
      FrmCxAF.ADOTab_CxMovMVBVLOUTROS.Value:=0.00;
      //FrmCxAF.ADOTab_CxMovMVBSEQAB.Value  := '1';

      FrmCxAF.ADOTab_AcCx.Insert;
      FrmCxAF.ADOTab_AcCxFCCXFK.Value     := FrmCxAF.ADOTabCxAFCXID.Value;
      FrmCxAF.ADOTab_AcCxFCDT.Value       := StrToDate(dDatabase);
      {FrmCxAF.ADOTab_AcCxFCTROCO.Value :=  FrmCxAF.ADOTab_CxMovMVBVALOR.Value;
      FrmCxAF.ADOTab_AcCxFCVLTOTREC.Value :=  FrmCxAF.ADOTab_CxMovMVBVALOR.Value;
      FrmCxAF.ADOTab_AcCxFCSLDINI.Value :=  FrmCxAF.ADOTab_CxMovMVBVALOR.Value;
      FrmCxAF.ADOTab_AcCxFCSLDATUAL.Value :=  FrmCxAF.ADOTab_CxMovMVBVALOR.Value;}
      FrmCxAF.ADOTab_AcCxFCTROCO.Value :=  StrToFloat(trim(DBEdit1.Text));
      FrmCxAF.ADOTab_AcCxFCSLDINI.Value :=  StrToFloat(trim(DBEdit1.Text));
      FrmCxAF.ADOTab_AcCxFCSLDATUAL.Value :=  StrToFloat(trim(DBEdit1.Text));
      FrmCxAF.ADOTab_AcCxFCVLDIN.Value:=0.00;
      FrmCxAF.ADOTab_AcCxFCVLCHEQ.Value:=0.00;
      FrmCxAF.ADOTab_AcCxFCVLCC.Value:=0.00;
      FrmCxAF.ADOTab_AcCxFCVLCD.Value:=0.00;
      FrmCxAF.ADOTab_AcCxFCVLOUTROS.Value:=0.00;
      FrmCxAF.ADOTab_AcCxFCVLTOTPAG.Value:=0.00;
      FrmCxAF.ADOTab_AcCxFCSLDFIN.Value:=0.00;
      FrmCxAF.ADOTab_AcCxFCVLTOTREC.Value :=  0.00;
      //FrmCxAF.ADOTab_AcCxFCSEQAB.Value    := '1';

      FrmCxAF.ADOTab_CxMov.Post;
      FrmCxAF.ADOTab_AcCx.Post;

      FrmCxAF.ADOTabCxAF.Post;

      FrmCxAF.ADOTabCxAF.Refresh;
      FrmCxAF.LbStatus.Caption:='CAIXA ABERTO';
      FrmCxAF.LbStatus.Font.Color:=clGreen;


      FrmAbertCx.Close;

    end
    else begin
      MessageDlg('Caixa já Fechado no dia.',mtInformation,mbOKCancel,0);
      FrmCxAF.ADOTab_CxMov.Cancel;
      FrmCxAF.ADOTabCxAF.Refresh;
    end;
  end
  else begin
    MessageDlg('Caixa já está aberto ou já foi aberto no dia.',mtInformation,mbOKCancel,0);
    FrmCxAF.ADOTab_CxMov.Cancel;
    FrmCxAF.ADOTabCxAF.Refresh;
  end;

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
end;

end.
