unit UntAltDelMvCx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, DBCtrls, Mask, ExtCtrls;

type
  TFrmAltDelMvCx = class(TForm)
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label16: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Button1: TButton;
    Panel4: TPanel;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    Panel5: TPanel;
    Label8: TLabel;
    DBMemo1: TDBMemo;
    Panel1: TPanel;
    BBGravar: TBitBtn;
    BBCancelar: TBitBtn;
    DBEdit11: TDBEdit;
    DBEdit13: TDBEdit;
    procedure BBCancelarClick(Sender: TObject);
    procedure BBGravarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAltDelMvCx: TFrmAltDelMvCx;

implementation

{$R *.dfm}

Uses UntMvbAcd;

procedure TFrmAltDelMvCx.BBCancelarClick(Sender: TObject);
begin
  FrmAltDelMvCx.Close;
end;

procedure TFrmAltDelMvCx.BBGravarClick(Sender: TObject);
begin
  with FrmMvbAcd do begin
    ADOTabAcDiarios.Edit;
    if AdoTabMovBcMVBTPRP.AsString = 'R' then begin
      ADOTabAcDiariosFCVLDIN.Value     := ADOTabAcDiariosFCVLDIN.Value    - AdoTabMovBcMVBVLDIN.Value;
      ADOTabAcDiariosFCVLCHEQ.Value    := ADOTabAcDiariosFCVLCHEQ.Value   - AdoTabMovBcMVBVLCHEQ.Value;
      ADOTabAcDiariosFCVLCC.Value      := ADOTabAcDiariosFCVLCC.Value     - AdoTabMovBcMVBVLCC.Value;
      ADOTabAcDiariosFCVLCD.Value      := ADOTabAcDiariosFCVLCD.Value     - AdoTabMovBcMVBVLCD.Value;
      ADOTabAcDiariosFCVLOUTROS.Value  := ADOTabAcDiariosFCVLOUTROS.Value - AdoTabMovBcMVBVLOUTROS.Value;
      ADOTabAcDiariosFCTROCO.Value     := ADOTabAcDiariosFCTROCO.Value    - AdoTabMovBcMVBVLTROCO.Value;
      ADOTabAcDiariosFCVLTOTREC.Value  := ADOTabAcDiariosFCVLTOTREC.Value - AdoTabMovBcMVBVALOR.Value;
      ADOTabAcDiariosFCSLDATUAL.Value  := ADOTabAcDiariosFCSLDATUAL.Value - AdoTabMovBcMVBVALOR.Value;
    end
    else if AdoTabMovBcMVBTPRP.AsString = 'P' then begin
      ADOTabAcDiariosFCVLDIN.Value     := ADOTabAcDiariosFCVLDIN.Value    + AdoTabMovBcMVBVLDIN.Value;
      ADOTabAcDiariosFCVLCHEQ.Value    := ADOTabAcDiariosFCVLCHEQ.Value   + AdoTabMovBcMVBVLCHEQ.Value;
      ADOTabAcDiariosFCVLCC.Value      := ADOTabAcDiariosFCVLCC.Value     + AdoTabMovBcMVBVLCC.Value;
      ADOTabAcDiariosFCVLCD.Value      := ADOTabAcDiariosFCVLCD.Value     + AdoTabMovBcMVBVLCD.Value;
      ADOTabAcDiariosFCVLOUTROS.Value  := ADOTabAcDiariosFCVLOUTROS.Value + AdoTabMovBcMVBVLOUTROS.Value;
      ADOTabAcDiariosFCTROCO.Value     := ADOTabAcDiariosFCTROCO.Value    + AdoTabMovBcMVBVLTROCO.Value;
      ADOTabAcDiariosFCVLTOTPAG.Value  := ADOTabAcDiariosFCVLTOTPAG.Value - AdoTabMovBcMVBVALOR.Value;
      ADOTabAcDiariosFCSLDATUAL.Value  := ADOTabAcDiariosFCSLDATUAL.Value + AdoTabMovBcMVBVALOR.Value;
    end;
    //ADOTabAcDiarioFCSEQAB.Value := ADOTabMvbCxMVBSEQAB.Value;
    ADOTabAcDiarios.Post;
    ADOTabAcDiarios.Refresh;
    AdoTabMovBc.Delete;
    AdoTabMovBc.Refresh;
    FrmAltDelMvCx.Close;
  end; // endo do with
end;

procedure TFrmAltDelMvCx.FormActivate(Sender: TObject);
begin
  FrmMvbAcd.AdoTabMovBc.Open;
  FrmMvbAcd.AdoTabMovBc.Refresh;
end;

end.
