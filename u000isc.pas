unit u000isc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u000cad, oPanel, Vcl.DBCtrls, oBase,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, oDateTimePicker, oButtonedEdit, o000isc;

type
  TF000ISC = class(TF000CAD)
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    BEUsuGer: THButtonedEdit;
    BEUsuAlt: THButtonedEdit;
    DTDatGer: THDateTimePicker;
    DTDatAlt: THDateTimePicker;
    BECodEmp: THButtonedEdit;
    Label2: TLabel;
    BEUsuCrm: THButtonedEdit;
    Label3: TLabel;
    BESenCrm: THButtonedEdit;
    Label4: TLabel;
    Label5: TLabel;
    BEUrlCrm: THButtonedEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F000ISC: TF000ISC;

implementation

{$R *.dfm}

procedure TF000ISC.FormCreate(Sender: TObject);
begin
  inherited;

  if (System.ParamCount > 0) then
    FLogUsu := StrToInt(ParamStr(3));

  Registrar('T000ISC' , 'USU_T000ISC');
end;

initialization
  RegisterClasses([T000ISC]);
  RegisterClasses([T000ISC]);

finalization
  UnRegisterClasses([T000ISC]);
  UnRegisterClasses([T000ISC]);
end.
