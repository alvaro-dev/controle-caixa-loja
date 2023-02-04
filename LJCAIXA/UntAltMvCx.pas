unit UntAltMvCx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntVendas, DB, ADODB, ComCtrls, StdCtrls, DBCtrls, Mask,
  Buttons, ExtCtrls;

type
  TFrmAltMvCx = class(TFrmVendas)
    procedure BBCancelarClick(Sender: TObject);
    procedure BBGravarClick(Sender: TObject);
    procedure DBComboBox2Exit(Sender: TObject);
    procedure BBIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAltMvCx: TFrmAltMvCx;

implementation

{$R *.dfm}

Uses UntMvbAcd;

procedure TFrmAltMvCx.BBCancelarClick(Sender: TObject);
begin
  inherited;
  FrmMvbAcd.AdoTabMovBc.Cancel;
  FrmAltMvCx.Close;
end;

procedure TFrmAltMvCx.BBGravarClick(Sender: TObject);
begin
  

































  FrmMvbAcd.AdoTabMovBc.Post;


  //BBIncluir.Enabled:=True;
  BBGravar.Enabled:=False;
  BBCancelar.Enabled:=False;
  //Button1.Enabled:=False;
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


  FrmAltMvCx.Close;
end;

procedure TFrmAltMvCx.DBComboBox2Exit(Sender: TObject);
begin
  FrmMvbAcd.AdoTabMovBcMVBVLDIN.Value:=0.00;
  FrmMvbAcd.AdoTabMovBcMVBVLCHEQ.Value:=0.00;
  FrmMvbAcd.AdoTabMovBcMVBVLCC.Value:=0.00;
  FrmMvbAcd.AdoTabMovBcMVBVLCD.Value:=0.00;
  FrmMvbAcd.AdoTabMovBcMVBVLOUTROS.Value:=0.00;
  FrmMvbAcd.AdoTabMovBcMVBVLTROCO.Value:=0.00;

  if FrmMvbAcd.AdoTabMovBcMVBFORMPAG.AsString = 'DN' then
    FrmMvbAcd.AdoTabMovBcMVBVLDIN.Value:=FrmMvbAcd.AdoTabMovBcMVBVALOR.Value
  else if FrmMvbAcd.AdoTabMovBcMVBFORMPAG.AsString = 'CH' then
    FrmMvbAcd.AdoTabMovBcMVBVLCHEQ.Value:=FrmMvbAcd.AdoTabMovBcMVBVALOR.Value
  else if FrmMvbAcd.AdoTabMovBcMVBFORMPAG.AsString = 'CC' then
    FrmMvbAcd.AdoTabMovBcMVBVLCC.Value:=FrmMvbAcd.AdoTabMovBcMVBVALOR.Value
  else if FrmMvbAcd.AdoTabMovBcMVBFORMPAG.AsString = 'CD' then
    FrmMvbAcd.AdoTabMovBcMVBVLCD.Value:=FrmMvbAcd.AdoTabMovBcMVBVALOR.Value
  else if FrmMvbAcd.AdoTabMovBcMVBFORMPAG.AsString = 'TR' then
    FrmMvbAcd.AdoTabMovBcMVBVLTROCO.Value:=FrmMvbAcd.AdoTabMovBcMVBVALOR.Value
  else if FrmMvbAcd.AdoTabMovBcMVBFORMPAG.AsString = 'OU' then
    FrmMvbAcd.AdoTabMovBcMVBVLOUTROS.Value:=FrmMvbAcd.AdoTabMovBcMVBVALOR.Value;

  if FrmMvbAcd.AdoTabMovBcMVBFORMPAG.AsString = 'CN' then
  begin
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

procedure TFrmAltMvCx.BBIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit5.SetFocus;
end;

end.
