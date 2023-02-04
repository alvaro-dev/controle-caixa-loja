unit UntMvbAcd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ADODB, StdCtrls, DB, Buttons, Mask, Grids, DBGrids,
  DBCtrls;

type
  TFrmMvbAcd = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    ADOConnection1: TADOConnection;
    AdoTabMovBc: TADOTable;
    AdoTabMovBcMVBID: TAutoIncField;
    AdoTabMovBcMVBCXFK: TWordField;
    AdoTabMovBcMVBDTMOV: TDateField;
    AdoTabMovBcMVBHRMOV: TTimeField;
    AdoTabMovBcMVBDESC: TWideStringField;
    AdoTabMovBcMVBVALOR: TFloatField;
    AdoTabMovBcMVBTPRP: TWideStringField;
    AdoTabMovBcMVBFORMPAG: TWideStringField;
    AdoTabMovBcMVBOBS: TMemoField;
    AdoTabMovBcMVBVLDIN: TFloatField;
    AdoTabMovBcMVBVLCHEQ: TFloatField;
    AdoTabMovBcMVBVLCC: TFloatField;
    AdoTabMovBcMVBVLCD: TFloatField;
    AdoTabMovBcMVBVLTROCO: TFloatField;
    AdoTabMovBcMVBVLOUTROS: TFloatField;
    AdoTabMovBcMVBUSU: TWideStringField;
    AdoTabMovBcMVBFLGREC: TWideStringField;
    AdoTabMovBcMVBSEQAB: TWideStringField;
    DBGMovBc: TDBGrid;
    DSTMvBc: TDataSource;
    ADOTabAcDiarios: TADOTable;
    ADOTabAcDiariosFCID: TAutoIncField;
    ADOTabAcDiariosFCCXFK: TWordField;
    ADOTabAcDiariosFCDT: TDateField;
    ADOTabAcDiariosFCVLDIN: TFloatField;
    ADOTabAcDiariosFCVLCHEQ: TFloatField;
    ADOTabAcDiariosFCVLCC: TFloatField;
    ADOTabAcDiariosFCVLCD: TFloatField;
    ADOTabAcDiariosFCTROCO: TFloatField;
    ADOTabAcDiariosFCVLOUTROS: TFloatField;
    ADOTabAcDiariosFCVLTOTREC: TFloatField;
    ADOTabAcDiariosFCVLTOTPAG: TFloatField;
    ADOTabAcDiariosFCSLDINI: TFloatField;
    ADOTabAcDiariosFCSLDFIN: TFloatField;
    ADOTabAcDiariosFCSLDATUAL: TFloatField;
    ADOTabAcDiariosFCSEQAB: TWideStringField;
    DataSource1: TDataSource;
    Panel5: TPanel;
    MEDtMov: TMaskEdit;
    Label1: TLabel;
    EdtCx: TEdit;
    Label2: TLabel;
    BBOK: TBitBtn;
    ADOTabCx: TADOTable;
    ADOTabCxCXID: TWordField;
    ADOTabCxCXDESC: TWideStringField;
    ADOTabCxCXBLQ: TWideStringField;
    ADOTabCxCXSTATUS: TWideStringField;
    ADOTabCxCXDTABERT: TDateField;
    ADOTabCxCXHRABERT: TTimeField;
    ADOTabCxCXDTFEC: TDateField;
    ADOTabCxCXHRFEC: TTimeField;
    ADOTabCxCXSEQAB: TWideStringField;
    Panel4: TPanel;
    DBGAcDiarios: TDBGrid;
    Panel6: TPanel;
    AdoTabMovBcSld: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ADOTabAcDiariosCalcFields(DataSet: TDataSet);
    procedure BBOKClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGMovBcDblClick(Sender: TObject);
    procedure DBGMovBcEditButtonClick(Sender: TObject);
    procedure DBGMovBcColExit(Sender: TObject);
    procedure DBGMovBcColEnter(Sender: TObject);
    procedure DBGMovBcEnter(Sender: TObject);
    procedure DBGMovBcExit(Sender: TObject);
    procedure DBGMovBcEndDock(Sender, Target: TObject; X, Y: Integer);
    procedure DBGMovBcDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure DBGMovBcKeyPress(Sender: TObject; var Key: Char);
    procedure DBGMovBcKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel6Click(Sender: TObject);
    procedure AdoTabMovBcSldValidate(Sender: TField);
    procedure AdoTabMovBcCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    cAux : string;
    //nAux : Double;
  public
    { Public declarations }
  end;

var
  FrmMvbAcd: TFrmMvbAcd;

implementation

Uses UntPrinc, UntAltDelMvCx;

{$R *.dfm}

procedure TFrmMvbAcd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmMvbAcd.Release;
  FrmMvbAcd:=Nil;
end;

procedure TFrmMvbAcd.ADOTabAcDiariosCalcFields(DataSet: TDataSet);
begin
  //AdoTabMovBc.Edit;
  //AdoTabMovBcTotVl.Value := AdoTabMovBcTotVl.Value + AdoTabMovBcMVBVALOR.Value;
  //AdoTabMovBc.Post;
end;

procedure TFrmMvbAcd.BBOKClick(Sender: TObject);
begin
  //IF MEDtMov.Text <> '' and !EmptyStr(EdtCx.Text) then begin
    AdoTabMovBc.Filtered:=False;
    AdoTabMovBc.Filter:='MVBDTMOV='+Trim(MEDtMov.Text) +' AND mvbcxfk = '+ trim(EdtCx.Text);
    AdoTabMovBc.Filtered:=True;
    ADOTabAcDiarios.Filtered:=False;
    ADOTabAcDiarios.Filter:='FCDT='+Trim(MEDtMov.Text) +' AND FCCXFK = '+ trim(EdtCx.Text);
    ADOTabAcDiarios.Filtered:=True;
  //end;
end;

procedure TFrmMvbAcd.FormActivate(Sender: TObject);
begin
    //nAux := 0;
    MEDtMov.Text := Trim(dDatabase);
    EdtCx.Text := '1';
    AdoTabMovBc.Filtered:=False;
    AdoTabMovBc.Filter:='MVBDTMOV='+Trim(MEDtMov.Text) +' AND mvbcxfk = '+ trim(EdtCx.Text);
    //AdoTabMovBc.Filter:='MVBDTMOV='+Trim(MEDtMov.Text);
    AdoTabMovBc.Filtered:=True;
    ADOTabAcDiarios.Filtered:=False;
    ADOTabAcDiarios.Filter:='FCDT='+Trim(MEDtMov.Text) +' AND FCCXFK = '+ trim(EdtCx.Text);
    //ADOTabAcDiarios.Filter:='FCDT='+Trim(MEDtMov.Text);
    ADOTabAcDiarios.Filtered:=True;
    cAux := '1';
    if cAux = '0' then begin
      Panel4.Visible:=False;
      Panel6.Caption:='<<<<<<<<<<';
    end
    else begin
      Panel4.Visible:=True;
      Panel6.Caption:='>>>>>>>>>>';
    end;
end;

procedure TFrmMvbAcd.DBGMovBcDblClick(Sender: TObject);
begin
  {MessageDlg('Ok',mtInformation,mbOKCancel,0);
  MessageDlg('Id.Mov.:'+AdoTabMovBcMVBID.Text,mtInformation,mbOKCancel,0);
  FrmAltMvCx.DBEdit1.Enabled := True;
  FrmAltMvCx.DBEdit2.Enabled := True;
  FrmAltMvCx.DBEdit3.Enabled := True;
  FrmAltMvCx.DBEdit4.Enabled := True;
  FrmAltMvCx.DBEdit5.Enabled := True;
  FrmAltMvCx.DBEdit6.Enabled := True;
  FrmAltMvCx.DBEdit7.Enabled := True;
  FrmAltMvCx.DBEdit8.Enabled := True;
  FrmAltMvCx.DBEdit9.Enabled := True;
  FrmAltMvCx.DBEdit10.Enabled := True;
  FrmAltMvCx.DBEdit11.Enabled := True;
  FrmAltMvCx.DBEdit12.Enabled := True;
  FrmAltMvCx.DBComboBox1.Enabled:=True;
  FrmAltMvCx.DBComboBox2.Enabled:=True;
  FrmAltMvCx.Button1.Enabled:=True;
  //FrmMvbAcd.AdoTabMovBc.Active:=True;
  AdoTabMovBc.Edit;
  //BBIncluir.Enabled:=False;
  FrmAltMvCx.BBGravar.Enabled:=True;
  FrmAltMvCx.BBCancelar.Enabled:=True;
  //Button1.Enabled:=True;
  FrmAltMvCx.MonthCalendar1.Visible:=False;
  FrmAltMvCx.Show;}
  if ((ADOTabCxCXSTATUS.AsString = 'A') and (ADOTabCxCXBLQ.AsString = 'N') and
      ((ADOTabCxCXDTABERT.Value = StrToDate(MEDtMov.Text)) and
       (ADOTabCxCXDTFEC.Value   < StrToDate(MEDtMov.Text))) ) then begin
    FrmAltDelMvCx.Show;
  end
  else begin
    MessageDlg('Caixa encontra-se fechado para movimentação.',mtWarning,mbOKCancel,0);
  end;
end;

procedure TFrmMvbAcd.DBGMovBcEditButtonClick(Sender: TObject);
begin
  //MessageDlg('EditaButton.',mtInformation,mbOKCancel,0);
  //MessageDlg('AdoTabMovBcMVBID:'+AdoTabMovBcMVBID.Text,mtInformation,mbOKCancel,0);
end;

procedure TFrmMvbAcd.DBGMovBcColExit(Sender: TObject);
begin
  {MessageDlg('ColExit',mtInformation,mbOKCancel,0);
  MessageDlg('AdoTabMovBcMVBID:'+AdoTabMovBcMVBID.Text,mtInformation,mbOKCancel,0);
  MessageDlg('AdoTabMovBcMVBDESC:'+AdoTabMovBcMVBDESC.Text,mtInformation,mbOKCancel,0);}
end;

procedure TFrmMvbAcd.DBGMovBcColEnter(Sender: TObject);
begin
  {MessageDlg('ColEnter',mtInformation,mbOKCancel,0);
  MessageDlg('AdoTabMovBcMVBID:'+AdoTabMovBcMVBID.Text,mtInformation,mbOKCancel,0);
  MessageDlg('AdoTabMovBcMVBDESC:'+AdoTabMovBcMVBDESC.Text,mtInformation,mbOKCancel,0);}
end;

procedure TFrmMvbAcd.DBGMovBcEnter(Sender: TObject);
begin
  //MessageDlg('Enter',mtInformation,mbOKCancel,0);
end;

procedure TFrmMvbAcd.DBGMovBcExit(Sender: TObject);
begin
  //MessageDlg('Exit',mtInformation,mbOKCancel,0);
end;

procedure TFrmMvbAcd.DBGMovBcEndDock(Sender, Target: TObject; X,
  Y: Integer);
begin
  //MessageDlg('EndDock',mtInformation,mbOKCancel,0);
  //MessageDlg('AdoTabMovBcMVBID:'+AdoTabMovBcMVBID.Text,mtInformation,mbOKCancel,0);
end;

procedure TFrmMvbAcd.DBGMovBcDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  {MessageDlg('DrawDataCell',mtInformation,mbOKCancel,0);
  MessageDlg('AdoTabMovBcMVBID:'+AdoTabMovBcMVBID.Text,mtInformation,mbOKCancel,0);
  MessageDlg('AdoTabMovBcMVBDESC:'+AdoTabMovBcMVBDESC.Text,mtInformation,mbOKCancel,0);}
end;

procedure TFrmMvbAcd.DBGMovBcKeyPress(Sender: TObject; var Key: Char);
begin
  {MessageDlg('Key Press',mtInformation,mbOKCancel,0);
  MessageDlg('AdoTabMovBcMVBID:'+AdoTabMovBcMVBID.Text,mtInformation,mbOKCancel,0);
  MessageDlg('AdoTabMovBcMVBDESC:'+AdoTabMovBcMVBDESC.Text,mtInformation,mbOKCancel,0);}
end;

procedure TFrmMvbAcd.DBGMovBcKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  {MessageDlg('Key UP',mtInformation,mbOKCancel,0);
  MessageDlg('AdoTabMovBcMVBID:'+AdoTabMovBcMVBID.Text,mtInformation,mbOKCancel,0);
  MessageDlg('AdoTabMovBcMVBDESC:'+AdoTabMovBcMVBDESC.Text,mtInformation,mbOKCancel,0);}
end;

procedure TFrmMvbAcd.Panel6Click(Sender: TObject);
begin
  if cAux = '0' then begin
      Panel4.Visible:=False;
      Panel6.Caption:='<<<<<<<<<<';
      cAux := '1';
    end
    else begin
      Panel4.Visible:=True;
      Panel6.Caption:='>>>>>>>>>>';
      cAux := '0';
    end;
end;

procedure TFrmMvbAcd.AdoTabMovBcSldValidate(Sender: TField);
begin
  //AdoTabMovBcSld.Value := AdoTabMovBcSld.Value + AdoTabMovBcMVBVALOR.Value;
end;

procedure TFrmMvbAcd.AdoTabMovBcCalcFields(DataSet: TDataSet);
begin
  //MessageDlg('nAux:'+floattostr(nAux),mtInformation,mbOKCancel,0);
  //MessageDlg('AdoTabMovBcMVBVALOR:'+AdoTabMovBcMVBVALOR.AsString,mtInformation,mbOKCancel,0);
  {if nAux <= 0 then
  begin
    nAux := AdoTabMovBcMVBVALOR.Value;
    AdoTabMovBcSld.Value := nAux;
  end
  else
  begin
    nAux := nAux + AdoTabMovBcMVBVALOR.Value;
    AdoTabMovBcSld.Value := nAux; //+ AdoTabMovBcMVBVALOR.Value;
  end;
  }//MessageDlg('nAux:'+floattostr(nAux),mtInformation,mbOKCancel,0);
  //MessageDlg('AdoTabMovBcSld:'+AdoTabMovBcSld.AsString,mtInformation,mbOKCancel,0);
  //AdoTabMovBcSld.Value := nAux ; //+ AdoTabMovBcMVBVALOR.Value;
  
end;

end.
