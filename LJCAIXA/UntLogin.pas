unit UntLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, ADODB, Grids, DBGrids, Mask,
  Menus;

type
  TFrmLogin = class(TForm)
    Panel1: TPanel;
    ADOConnection1: TADOConnection;
    ADOTab_Usu: TADOTable;
    ADOTab_Menus: TADOTable;
    ADOTab_UsuUSID: TWordField;
    ADOTab_UsuUSLOGIN: TWideStringField;
    ADOTab_UsuUSSENHA: TWideStringField;
    ADOTab_UsuUSNOME: TWideStringField;
    ADOTab_UsuUSTIPO: TWideStringField;
    ADOTab_MenusMNID: TWordField;
    ADOTab_MenusMNDESC: TWideStringField;
    ADOTab_MenusMNSEQ: TWideStringField;
    ADOTab_MenusMNSBM: TWideStringField;
    ADOTab_MenusMNTP: TWideStringField;
    ADOTab_MenusMNBLQ: TWideStringField;
    MainMenu1: TMainMenu;
    X1: TMenuItem;
    Panel2: TPanel;
    BBCancel: TBitBtn;
    BBOk: TBitBtn;
    Label1: TLabel;
    MEDatabase: TMaskEdit;
    LbLogin: TLabel;
    EdtLog: TEdit;
    LbSen: TLabel;
    EdtSen: TEdit;
    procedure BBCancelClick(Sender: TObject);
    procedure BBOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure X1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

uses UntPrinc;

{$R *.dfm}

procedure TFrmLogin.BBCancelClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmLogin.BBOkClick(Sender: TObject);
begin
  if EdtLog.Text = EmptyStr then begin
    MessageDlg('Campo '+ LbLogin.Caption +' em branco. Favor Prencher',mtError,mbOKCancel,0);
    EdtLog.SetFocus;
  end
  else if EdtSen.Text = EmptyStr then begin
    MessageDlg('Campo '+ LbSen.Caption +' em branco. Favor Prencher',mtError,mbOKCancel,0);
    EdtSen.SetFocus
  end
  else if ((EdtLog.Text <> EmptyStr) and
           (EdtSen.Text <> EmptyStr)) then begin
    if not ADOTab_Usu.Active then ADOTab_Usu.Open;
    If not (ADOTab_Usu.Locate('USLOGIN;USSENHA', VarArrayOf([EdtLog.Text, EdtSen.Text]), [loPartialKey])) then
    begin
      MessageDlg('Nome ou senha do usuário inválidos.'+#13+#13
                  + 'Se você esqueceu sua senha, consulte '+ #13
                  + 'o administrador do sistema', mtError, [mbOK], 0);
      EdtSen.Clear; // limpa o objeto EdtSenha
      EdtSen.SetFocus; //Ajusta o foco para o objeto EdtSenha
    end
    else begin
      aUser[1]:=ADOTab_UsuUSID.AsString;
      aUser[2]:=ADOTab_UsuUSLOGIN.AsString;
      aUser[3]:=ADOTab_UsuUSSENHA.AsString;
      aUser[4]:=ADOTab_UsuUSNOME.AsString;
      aUser[5]:=ADOTab_UsuUSTIPO.AsString;


      FrmPrinc.MMPrinc.Items.Items[0].Visible:=Enabled;
      FrmPrinc.MMPrinc.Items.Items[1].Visible:=Enabled;
      FrmPrinc.MMPrinc.Items.Items[2].Visible:=Enabled;
      FrmPrinc.MMPrinc.Items.Items[3].Visible:=Enabled;


      //ADOTab_Menus.DisableControls;
      ADOTab_Menus.Filter:='MNSBM<>NULL';
      ADOTab_Menus.Filtered:=True;
      ADOTab_Menus.IndexFieldNames:='MNSEQ';
      ADOTab_Menus.Open;
      ADOTab_Menus.First;
      while not ADOTab_Menus.Eof do
      begin
        //ADOTab_MenusMNSEQ.AsInteger;
        //ADOTab_MenusMNSBM.AsInteger;
        //aMenu[ADOTab_MenusMNSEQ.AsInteger,ADOTab_MenusMNSBM.AsInteger]:=ADOTab_MenusMNTP.AsString;
        //aMenu[j]:=ADOTab_MenusMNSBM.AsString;
        //MessageDlg(aUser[5],mtInformation,mbOKCancel,0);
        //MessageDlg(ADOTab_MenusMNSEQ.AsString,mtInformation,mbOKCancel,0);
        //MessageDlg(ADOTab_MenusMNSBM.AsString,mtInformation,mbOKCancel,0);
        if ADOTab_MenusMNTP.AsInteger <= StrToInt(aUser[5]) then
        begin
          FrmPrinc.MMPrinc.Items.Items[ADOTab_MenusMNSEQ.AsInteger].Items[ADOTab_MenusMNSBM.AsInteger].Visible:=True
        end
        else
        begin
          FrmPrinc.MMPrinc.Items.Items[ADOTab_MenusMNSEQ.AsInteger].Items[ADOTab_MenusMNSBM.AsInteger].Visible:=False
        end;
        ADOTab_Menus.Next;
        //ADOTab_Menus.Refresh;
      end;
      //ADOTab_Menus.EnableControls;
        {
        FrmPrinc.MMPrinc.Items.Items[0].Visible:=Enabled;
        FrmPrinc.MMPrinc.Items.Items[1].Visible:=Enabled;
        FrmPrinc.MMPrinc.Items.Items[2].Visible:=Enabled;
        FrmPrinc.MMPrinc.Items.Items[3].Visible:=Enabled;
        //FrmPrinc.MMPrinc.Items.Items[2].Items[3].Visible:=False;
        //FrmPrinc.MMPrinc.Items.Items[2].Items[3].Visible:=True;
        }
      dDatabase := MEDatabase.Text;
      FrmPrinc.StatusBar1.Panels[1].Text := ' >> Usuário: ' + aUser[2];
      //FrmPrinc.StatusBar1.Panels[2].Text := 'Database: ' + FormatDateTime('hh:nn:ss',now) + ' ' + FormatDateTime ('dddd", "dd" de "mmmm" de "yyyy',now); //
      FrmPrinc.StatusBar1.Panels[2].Text := ' >> Database: ' + dDatabase;
      FrmLogin.Release;
      FrmLogin:=Nil;
    end;
  end;
end;

procedure TFrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TFrmLogin.FormActivate(Sender: TObject);
var i:integer;
begin
  for i := 0 to (Application.MainForm.MDIChildCount - 1) do
  begin
    //MessageDlg('Caption Name: '+ Application.MainForm.MDIChildren[i].Caption,mtInformation,mbOKCancel,0);
    if Application.MainForm.MDIChildren[i].Caption <> 'Login' then
      Application.MainForm.MDIChildren[i].Close;
  end;

  if dDatabase = EmptyStr then begin
    MEDatabase.Text := DateToStr(Date);
  end
  else begin
    MEDatabase.Text := dDatabase;
  end;
  //Panel2.Width:=Panel1.Width;
  MEDatabase.SetFocus;
end;

procedure TFrmLogin.X1Click(Sender: TObject);
begin
   Application.Terminate;
end;

procedure TFrmLogin.FormCreate(Sender: TObject);
begin
  //Panel2.Width:=Panel1.Width;
end;

end.
