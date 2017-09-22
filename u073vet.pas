unit u073vet;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u000cad, oPanel, Vcl.ComCtrls,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, oButtonedEdit, o073vet, Vcl.Grids,
  Vcl.ValEdit, oValueListEditor, oMemo, oDateTimePicker;

type
  TF073VET = class(TF000CAD)
    BECodEmp: THButtonedEdit;
    BECodFil: THButtonedEdit;
    BECodFor: THButtonedEdit;
    BEUsuGer: THButtonedEdit;
    MMObsVet: THMemo;
    BEUsuAlt: THButtonedEdit;
    DTDatGer: THDateTimePicker;
    DTDatAlt: THDateTimePicker;
    ENConVet: THButtonedEdit;
    ENDiaSem: THButtonedEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F073VET: TF073VET;

implementation

{$R *.dfm}

procedure TF073VET.FormCreate(Sender: TObject);
begin
  inherited;

  Registrar('T073VET' , 'USU_T073VET');

  BECodEmp.AddLeftTableForm(Self);
  BECodFor.AddLeftTableForm(Self);
  BECodFil.AddLeftTableForm(Self);
  BECodFil.AddFilterLookup(BECodEmp);
  BECodFor.Filter := 'SITFOR = ''A''';
end;

initialization
  RegisterClasses([T073VET]);

finalization
  UnRegisterClasses([T073VET]);

end.
