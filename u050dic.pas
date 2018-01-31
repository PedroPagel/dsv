unit u050dic;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u000cad, oPanel, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, oDateTimePicker, oButtonedEdit, o050dic,
  oBase;

type
  TF050DIC = class(TF000CAD)
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label3: TLabel;
    BEUsuGer: THButtonedEdit;
    BEUsuAlt: THButtonedEdit;
    DTDatGer: THDateTimePicker;
    DTDatAlt: THDateTimePicker;
    BEDesCon: THButtonedEdit;
    BELarCon: THButtonedEdit;
    Label2: TLabel;
    BENomCon: THButtonedEdit;
    BEComCon: THButtonedEdit;
    BEAltCon: THButtonedEdit;
    USU_CapCar: THButtonedEdit;
    BELimCon: THButtonedEdit;
    BEMetCub: THButtonedEdit;
    BESitCon: THButtonedEdit;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    BELimMin: THButtonedEdit;
    Label10: TLabel;
    Label18: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  published
    procedure BEAltConExit();
    procedure F050DICEnter();
  end;

var
  F050DIC: TF050DIC;

implementation

{$R *.dfm}

procedure TF050DIC.BEAltConExit;
var
  xAltura: Double;
  xComprimento: Double;
  xLargura: Double;
begin
  xAltura := StrToFloat(BEAltCon.Text);
  xLargura := StrToFloat(BELarCon.Text);
  xComprimento := StrToFloat(BEComCon.Text);

  if ((xAltura > 0) and (xComprimento > 0) and (xLargura > 0)) then
    BEMetCub.Text := FloatToStr(CRound(((xAltura * xLargura) * xComprimento), 2));
end;

procedure TF050DIC.F050DICEnter;
begin
  if (State = erInserir) then
    BESitCon.Text := 'A';
end;

procedure TF050DIC.FormCreate(Sender: TObject);
begin
  inherited;

  if (System.ParamCount > 0) then
    FLogUsu := StrToInt(ParamStr(3));

  Registrar('T050DIC' , 'USU_T050DIC');

  BEMetCub.Enabled := False;
end;

end.
