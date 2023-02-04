unit UntMudarSen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, ADODB, ExtCtrls, Buttons;

type
  TFrmMudasSenha = class(TForm)
    Panel1: TPanel;
    ADOConnection1: TADOConnection;
    ADOTabMudSen: TADOTable;
    ADOTabMudSenUSID: TWordField;
    ADOTabMudSenUSLOGIN: TWideStringField;
    ADOTabMudSenUSSENHA: TWideStringField;
    ADOTabMudSenUSNOME: TWideStringField;
    ADOTabMudSenUSTIPO: TWideStringField;
    DataSource1: TDataSource;
    EdtSenAtual: TEdit;
    EdtSenNew: TEdit;
    EdtSenConf: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel2: TPanel;
    BBOk: TBitBtn;
    BBCancel: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BBCancelClick(Sender: TObject);
    procedure EdtSenAtualExit(Sender: TObject);
    procedure EdtSenConfExit(Sender: TObject);
    procedure EdtSenNewExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BBOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMudasSenha: TFrmMudasSenha;

implementation

{$R *.dfm}

Uses UntPrinc;

procedure TFrmMudasSenha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmMudasSenha.Release;
  FrmMudasSenha:=Nil;
end;

procedure TFrmMudasSenha.BBCancelClick(Sender: TObject);
begin
  close;
end;

procedure TFrmMudasSenha.EdtSenAtualExit(Sender: TObject);
Var
  usuario: string;
begin
    usuario := aUser[3];
    //MessageDlg('Senhaauser:'+usuario,mtInformation,mbOKCancel,0);
    //MessageDlg('Senha.:'+ADOTabMudSenUSSENHA.Text,mtInformation,mbOKCancel,0);
    //MessageDlg('Edit1:'+EdtSenAtual.Text,mtInformation,mbOKCancel,0);
    //MessageDlg('Edit2:'+EdtSenNew.Text,mtInformation,mbOKCancel,0);
    //MessageDlg('Edit3:'+EdtSenConf.Text,mtInformation,mbOKCancel,0);
    if EdtSenAtual.Text <> ADOTabMudSenUSSENHA.Text then begin
      MessageDlg('Senha atual não confere. Digite sua senha atual novamente.',mtWarning,mbOKCancel,0);
      EdtSenAtual.SetFocus;
      EdtSenAtual.Clear;
    end;
end;

procedure TFrmMudasSenha.EdtSenConfExit(Sender: TObject);
Var
  usuario: string;
begin
  usuario := aUser[3];
  //MessageDlg('Senhaauser:'+usuario,mtInformation,mbOKCancel,0);
  //MessageDlg('Senha.:'+ADOTabMudSenUSSENHA.Text,mtInformation,mbOKCancel,0);
  //MessageDlg('Edit2:'+EdtSenNew.Text,mtInformation,mbOKCancel,0);
  //MessageDlg('Edit3:'+EdtSenConf.Text,mtInformation,mbOKCancel,0);
  if EdtSenNew.Text <> EdtSenConf.Text then begin
    MessageDlg('Senha divergente. Digite a nova senha novamente.',mtWarning,mbOKCancel,0);
    EdtSenNew.Clear;
    EdtSenConf.Clear;
    EdtSenNew.SetFocus;
  end;
end;

procedure TFrmMudasSenha.EdtSenNewExit(Sender: TObject);
begin
  EdtSenConf.SetFocus;
end;

procedure TFrmMudasSenha.FormActivate(Sender: TObject);
begin
  ADOTabMudSen.Filter := 'USID='+Trim(aUser[1]);
  ADOTabMudSen.Filtered:=True;
end;

procedure TFrmMudasSenha.BBOkClick(Sender: TObject);
Var
  usuario: string;
begin
  usuario := aUser[3];
  //MessageDlg('Senhaauser:'+usuario,mtInformation,mbOKCancel,0);
  //MessageDlg('Senha.:'+ADOTabMudSenUSSENHA.Text,mtInformation,mbOKCancel,0);
  //MessageDlg('Edit2:'+EdtSenNew.Text,mtInformation,mbOKCancel,0);
  //MessageDlg('Edit3:'+EdtSenConf.Text,mtInformation,mbOKCancel,0);
  if EdtSenNew.Text <> EdtSenConf.Text then begin
    MessageDlg('Senha divergente. Digite a nova senha novamente.',mtWarning,mbOKCancel,0);
    EdtSenNew.Clear;
    EdtSenConf.Clear;
    EdtSenNew.SetFocus;
  end
  else begin
    ADOTabMudSen.Edit;
    ADOTabMudSenUSSENHA.Text := EdtSenNew.Text;
    ADOTabMudSen.Post;
    ADOTabMudSen.Refresh;
    aUser[3] := EdtSenNew.Text;
    MessageDlg('Senha alterada com Sucesso.',mtWarning,mbOKCancel,0);
    Close;
  end;
end;

end.
