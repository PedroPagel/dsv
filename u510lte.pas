unit u510lte;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u000cad, oPanel, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, oButtonedEdit, Vcl.Grids, Vcl.DBGrids,
  oDataSetGrid, Vcl.ComCtrls, oDateTimePicker, oBase;

type
  TF510LTE = class(TF000CAD)
    HPanel1: THPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    FGridMle: TDataSetGrid;
    BECodBan: THButtonedEdit;
    BEDesLig: THButtonedEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    BEUsuGer: THButtonedEdit;
    BEUsuAlt: THButtonedEdit;
    DTDatGer: THDateTimePicker;
    DTDatAlt: THDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F510LTE: TF510LTE;

implementation

uses
  o510lte, o510mle, oMensagem, System.Contnrs;

{$R *.dfm}

procedure TF510LTE.FormCreate(Sender: TObject);
begin
  inherited;

  FGridMle.Init('USU_T510MLE', Self);
  FGridMle.ClassTable := 'T510MLE';
  FGridMle.LookupField('USU_CodTpt', 'E002TPT', [], 'CodTpt');
  FGridMle.CreateDataSet;

  FGridMle.ReadOnly('USU_EspBan', False);
  FGridMle.ReadOnly('USU_CodTpt', False);

  if (System.ParamCount > 0) then
    FLogUsu := StrToInt(ParamStr(3));

  Registrar('T510LTE' , 'USU_T510LTE');
end;

initialization
  RegisterClasses([T510LTE]);
  RegisterClasses([T510MLE]);
  RegisterClasses([TF510LTE]);

finalization
  UnRegisterClasses([T510LTE]);
  UnRegisterClasses([T510MLE]);
  UnRegisterClasses([TF510LTE]);

end.
