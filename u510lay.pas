unit u510lay;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u000cad, oPanel, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, oButtonedEdit, Vcl.Grids, Vcl.DBGrids,
  oDataSetGrid, oBase;

type
  TF510LAY = class(TF000CAD)
    BECodAge: THButtonedEdit;
    BECodPor: THButtonedEdit;
    BEDirArq: THButtonedEdit;
    ENRaiCnp: THButtonedEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    HPanel1: THPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    FGridLay: TDataSetGrid;

    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F510LAY: TF510LAY;

implementation

uses
  o510age, o510lay, Data.DB, System.Contnrs, oMensagem;

{$R *.dfm}

procedure TF510LAY.FormCreate(Sender: TObject);
begin
  inherited;

  FGridLay.Init('USU_T510LAY', F510LAY);
  FGridLay.ClassTable := 'T510LAY';
  FGridLay.CreateDataSet;

  FGridLay.ReadOnly('USU_NomCol', False);
  FGridLay.ReadOnly('USU_PosCol', False);
  FGridLay.ReadOnly('USU_TamCol', False);
  Registrar('T510AGE' , 'USU_T510AGE');
end;

end.
