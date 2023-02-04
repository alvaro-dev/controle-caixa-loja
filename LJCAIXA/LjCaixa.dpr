program LjCaixa;

uses
  Forms,
  UntPrinc in 'UntPrinc.pas' {FrmPrinc},
  UntLogin in 'UntLogin.pas' {FrmLogin},
  UntCadCx in 'UntCadCx.pas' {FrmCadCx},
  UntCxAF in 'UntCxAF.pas' {FrmCxAF},
  UntVendas in 'UntVendas.pas' {FrmVendas},
  UntAbertCx2 in 'UntAbertCx2.pas' {FrmAbertCx},
  UntFecCx2 in 'UntFecCx2.pas' {FrmFecCx},
  UntMvbAcd in 'UntMvbAcd.pas' {FrmMvbAcd},
  UntAltMvCx in 'UntAltMvCx.pas' {FrmAltMvCx},
  UntAltDelMvCx in 'UntAltDelMvCx.pas' {FrmAltDelMvCx},
  UntMudarSen in 'UntMudarSen.pas' {FrmMudasSenha},
  UntRelFecVenda in 'UntRelFecVenda.pas' {FrmRelFecVenda},
  UntCadUsu in 'UntCadUsu.pas' {FrmCadUsu},
  UntCadMenu in 'UntCadMenu.pas' {FrmMenus},
  UntPainelOnLine in 'UntPainelOnLine.pas' {FrmPainelOnLine};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrinc, FrmPrinc);
  Application.CreateForm(TFrmAbertCx, FrmAbertCx);
  Application.CreateForm(TFrmFecCx, FrmFecCx);
  Application.CreateForm(TFrmAltDelMvCx, FrmAltDelMvCx);
  Application.Run;
end.
