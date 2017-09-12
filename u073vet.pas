unit u073vet;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u000cad, oPanel, Vcl.ComCtrls,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, oButtonedEdit, o073vet, Vcl.Grids,
  Vcl.ValEdit;

type
  TF073VET = class(TF000CAD)
    T073VET_USU_CODEMP: THButtonedEdit;
    T073VET_USU_CODFIL: THButtonedEdit;
    T073VET_USU_CODFOR: THButtonedEdit;
    Label6: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    HButtonedEdit1: THButtonedEdit;
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

  Registrar('T073VET' , 'USU_T073VET', [], []);

  T073VET_USU_CODEMP.AddLeftTableForm(Self);
  T073VET_USU_CODFOR.AddLeftTableForm(Self);
  T073VET_USU_CODFIL.AddLeftTableForm(Self);

  T073VET_USU_CODFIL.AddFilterLookup(T073VET_USU_CODEMP);

  T073VET_USU_CODFOR.Filter := 'SITFOR = ''A''';
end;

initialization
  RegisterClasses([T073VET]);

finalization
  UnRegisterClasses([T073VET]);

end.
