unit UntPrinc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, DB, ADODB, XPMan;

type
  TFrmPrinc = class(TForm)
    MMPrinc: TMainMenu;
    Sistema1: TMenuItem;
    MudarSenha1: TMenuItem;
    Login1: TMenuItem;
    Configurador1: TMenuItem;
    Usurios1: TMenuItem;
    Menus1: TMenuItem;
    Vendas1: TMenuItem;
    Caixas1: TMenuItem;
    VendasBalco1: TMenuItem;
    N1: TMenuItem;
    Consultar1: TMenuItem;
    N2: TMenuItem;
    Movimentos1: TMenuItem;
    AcumuladosDirios1: TMenuItem;
    AbrirFecharCaixa1: TMenuItem;
    N3: TMenuItem;
    ReprocessarSaldo1: TMenuItem;
    Relatrios1: TMenuItem;
    N4: TMenuItem;
    Sair1: TMenuItem;
    StatusBar1: TStatusBar;
    MovimentaodoCaixa1: TMenuItem;
    XPManifest1: TXPManifest;
    PainelOnLine1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Login1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MudarSenha1Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure Menus1Click(Sender: TObject);
    procedure Caixas1Click(Sender: TObject);
    procedure AbrirFecharCaixa1Click(Sender: TObject);
    procedure VendasBalco1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Movimentos1Click(Sender: TObject);
    procedure MovimentaodoCaixa1Click(Sender: TObject);
    procedure StatusBar1DblClick(Sender: TObject);
    procedure PainelOnLine1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrinc: TFrmPrinc;
  aUser: array [1..5] of string;
  aMenu: array [1..5,1..12] of string;
  nauxlg: Smallint;
  dDatabase : String;

implementation

{$R *.dfm}

uses UntLogin, UntCadCx, UntCxAF, UntVendas, UntMvbAcd, UntMudarSen,
  UntRelFecVenda, UntCadUsu, UntCadMenu, UntPainelOnLine;

procedure TFrmPrinc.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmPrinc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TFrmPrinc.Login1Click(Sender: TObject);
begin
  if not Assigned(FrmLogin) then
  begin
    Application.CreateForm(TFrmLogin,FrmLogin);
    FrmLogin.Show;
  end;
end;

procedure TFrmPrinc.FormActivate(Sender: TObject);
begin
  if nauxlg = 0 then
  begin
    if not Assigned(FrmLogin) then
    begin
      Application.CreateForm(TFrmLogin,FrmLogin);
      FrmLogin.Show;
    end;
    nauxlg := 1;
  end;
end;

procedure TFrmPrinc.MudarSenha1Click(Sender: TObject);
begin
  if not Assigned(FrmMudasSenha) then
  begin
    Application.CreateForm(TFrmMudasSenha,FrmMudasSenha);
    FrmMudasSenha.Show;
  end;
end;

procedure TFrmPrinc.Usurios1Click(Sender: TObject);
begin
  if not Assigned(FrmCadUsu) then
  begin
    Application.CreateForm(TFrmCadUsu,FrmCadUsu);
    FrmCadUsu.Show;
  end;
end;

procedure TFrmPrinc.Menus1Click(Sender: TObject);
begin
  if not Assigned(FrmMenus) then
  begin
    Application.CreateForm(TFrmMenus,FrmMenus);
    FrmMenus.Show;
  end;
end;

procedure TFrmPrinc.Caixas1Click(Sender: TObject);
begin
  if not Assigned(FrmCadCx) then
  begin
    Application.CreateForm(TFrmCadCx,FrmCadCx);
    FrmCadCx.Show;
  end;
end;

procedure TFrmPrinc.AbrirFecharCaixa1Click(Sender: TObject);
begin
  if not Assigned(FrmCxAF) then
  begin
    Application.CreateForm(TFrmCxAF,FrmCxAF);
    FrmCxAF.Show;
  end;
end;

procedure TFrmPrinc.VendasBalco1Click(Sender: TObject);
begin
  if not Assigned(FrmVendas) then
  begin
    Application.CreateForm(TFrmVendas,FrmVendas);
    FrmVendas.Show;
  end;
end;

procedure TFrmPrinc.FormCreate(Sender: TObject);
begin
  nauxlg := 0;
end;

procedure TFrmPrinc.Movimentos1Click(Sender: TObject);
begin
  if not Assigned(FrmMvbAcd) then
  begin
    Application.CreateForm(TFrmMvbAcd,FrmMvbAcd);
    FrmMvbAcd.Show;
  end;
end;

procedure TFrmPrinc.MovimentaodoCaixa1Click(Sender: TObject);
begin
  if not Assigned(FrmRelFecVenda) then
  begin
    Application.CreateForm(TFrmRelFecVenda,FrmRelFecVenda);
    FrmRelFecVenda.Show;
  end;
end;

procedure TFrmPrinc.StatusBar1DblClick(Sender: TObject);
begin
  if not Assigned(FrmLogin) then
  begin
    Application.CreateForm(TFrmLogin,FrmLogin);
    FrmLogin.Show;
  end;
  //FrmLogin.Show;
end;

procedure TFrmPrinc.PainelOnLine1Click(Sender: TObject);
begin
  if not Assigned(FrmPainelOnLine) then
  begin
    Application.CreateForm(TFrmPainelOnLine,FrmPainelOnLine);
    FrmPainelOnLine.Show;
  end;
end;

end.
