unit UntCadMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, DBCtrls, ExtCtrls, Grids, DBGrids;

type
  TFrmMenus = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    ADOConnection1: TADOConnection;
    ADOTab_Usu: TADOTable;
    ADOTab_UsuMNID: TWordField;
    ADOTab_UsuMNDESC: TWideStringField;
    ADOTab_UsuMNSEQ: TWideStringField;
    ADOTab_UsuMNSBM: TWideStringField;
    ADOTab_UsuMNTP: TWideStringField;
    ADOTab_UsuMNBLQ: TWideStringField;
    DBGrid1: TDBGrid;
    DSMenus: TDataSource;
    ADOQMenus: TADOQuery;
    DSMenu: TDataSource;
    ADOQMenusMNID: TWordField;
    ADOQMenusMNDESC: TWideStringField;
    ADOQMenusMNSEQ: TWideStringField;
    ADOQMenusMNSBM: TWideStringField;
    ADOQMenusMNTP: TWideStringField;
    ADOQMenusMNBLQ: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenus: TFrmMenus;

implementation

{$R *.dfm}

procedure TFrmMenus.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmMenus.Release;
  FrmMenus:=Nil;
end;

end.
