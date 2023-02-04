unit UntRelFecVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, ADODB, RpRender,
  RpRenderCanvas, RpRenderPrinter, RpCon, RpConDS, RpDefine, RpRave, Mask;

type
  TFrmRelFecVenda = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ADOConnection1: TADOConnection;
    ADOQMovCx: TADOQuery;
    ADOQMovCxMVBID: TAutoIncField;
    ADOQMovCxMVBCXFK: TWordField;
    ADOQMovCxMVBDTMOV: TDateField;
    ADOQMovCxMVBHRMOV: TTimeField;
    ADOQMovCxMVBDESC: TWideStringField;
    ADOQMovCxMVBVALOR: TFloatField;
    ADOQMovCxMVBTPRP: TWideStringField;
    ADOQMovCxMVBFORMPAG: TWideStringField;
    ADOQMovCxMVBOBS: TMemoField;
    ADOQMovCxMVBVLDIN: TFloatField;
    ADOQMovCxMVBVLCHEQ: TFloatField;
    ADOQMovCxMVBVLCC: TFloatField;
    ADOQMovCxMVBVLCD: TFloatField;
    ADOQMovCxMVBVLTROCO: TFloatField;
    ADOQMovCxMVBVLOUTROS: TFloatField;
    ADOQMovCxMVBUSU: TWideStringField;
    ADOQMovCxMVBFLGREC: TWideStringField;
    ADOQMovCxMVBSEQAB: TWideStringField;
    RvProject1: TRvProject;
    RvDataSetConnection1: TRvDataSetConnection;
    Label1: TLabel;
    EdtCx: TEdit;
    Label2: TLabel;
    MEDtMovCx: TMaskEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelFecVenda: TFrmRelFecVenda;

implementation

{$R *.dfm}

Uses UntPrinc;

procedure TFrmRelFecVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmRelFecVenda.Release;
  FrmRelFecVenda:=Nil;
end;

procedure TFrmRelFecVenda.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmRelFecVenda.BitBtn1Click(Sender: TObject);
begin
   ADOQMovCx.Filtered:=False;
   ADOQMovCx.Filter:='MVBDTMOV='+Trim(MEDtMovCx.Text) +' AND mvbcxfk = '+ trim(EdtCx.Text);
   ADOQMovCx.Filtered:=True;
   RvProject1.Execute;
end;

procedure TFrmRelFecVenda.FormActivate(Sender: TObject);
begin
  MEDtMovCx.Text := dDatabase;
end;

end.
