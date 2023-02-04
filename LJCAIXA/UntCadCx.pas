unit UntCadCx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, Mask, ADODB, ExtCtrls, Grids, DBGrids;

type
  TFrmCadCx = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    ADOTabCadCx: TADOTable;
    ADOTabCadCxCXID: TWordField;
    ADOTabCadCxCXDESC: TWideStringField;
    ADOTabCadCxCXBLQ: TWideStringField;
    ADOTabCadCxCXSTATUS: TWideStringField;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadCx: TFrmCadCx;

implementation

{$R *.dfm}

procedure TFrmCadCx.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmCadCx.Release;
  FrmCadCx:=Nil;
end;

procedure TFrmCadCx.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  {if (Button = nbPost) then
  begin
    if ADOTabCadCxCXBLQ.Value = '' then
      ADOTabCadCxCXBLQ.Value    :=  'N';
    if ADOTabCadCxCXSTATUS.Value = '' then
      ADOTabCadCxCXSTATUS.Value :=  'F';
  end;}
end;

procedure TFrmCadCx.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
   if (Button = nbInsert) then
  begin
    if ADOTabCadCxCXBLQ.Value = '' then
      ADOTabCadCxCXBLQ.Value    :=  'N';
    if ADOTabCadCxCXSTATUS.Value = '' then
      ADOTabCadCxCXSTATUS.Value :=  'F';
  end;
end;

end.
