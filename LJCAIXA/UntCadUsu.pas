unit UntCadUsu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, ExtCtrls, DB, ADODB, StdCtrls, Mask;

type
  TFrmCadUsu = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    ADOConnection1: TADOConnection;
    ADOTab_Usu: TADOTable;
    ADOTab_UsuUSID: TWordField;
    ADOTab_UsuUSLOGIN: TWideStringField;
    ADOTab_UsuUSSENHA: TWideStringField;
    ADOTab_UsuUSNOME: TWideStringField;
    ADOTab_UsuUSTIPO: TWideStringField;
    DSUsu: TDataSource;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadUsu: TFrmCadUsu;

implementation

{$R *.dfm}

procedure TFrmCadUsu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmCadUsu.Release;
  FrmCadUsu:=Nil;
end;

end.
