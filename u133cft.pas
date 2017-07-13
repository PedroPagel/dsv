unit u133cft;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, oDataSetGrid, oFacadeControleFrotas;

type
  TF133MAU = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Excluir: TButton;
    Desmarcar: TButton;
    Marcar: TButton;
    Mostrar: TButton;
    Processar: TButton;
    Sair: TButton;
    Cancelar: TButton;
    pnl2: TPanel;
    spl1: TSplitter;
    FGridMau: TDataSetGrid;
    pnl3: TPanel;
    pnl4: TPanel;
    pnl6: TPanel;
    FGridVem: TDataSetGrid;
    procedure FormCreate(Sender: TObject);
    procedure SairClick(Sender: TObject);
    procedure MostrarClick(Sender: TObject);
  private
    { Private declarations }
    FFacade: TFacadeCFT;
  public
    { Public declarations }
  published
    procedure FGridMauEnterLine();
    procedure FGridMauAfterInsert();
    procedure FGridVemAfterInsert();
    procedure FGridVemExitLine();
    procedure FGridVemUSU_PlaVeiExit();
  end;

var
  F133MAU: TF133MAU;

implementation

uses
  Data.DB, oBase, oMensagem;

{$R *.dfm}

procedure TF133MAU.FGridMauAfterInsert;
begin
  FFacade.AddMatricula;
end;

procedure TF133MAU.FGridMauEnterLine;
begin
  FFacade.EnterLine;
end;

procedure TF133MAU.FGridVemAfterInsert;
begin
  FGridVem.FindField('USU_DatGer').AsDateTime := Date;
  FGridVem.FindField('USU_UsuGer').AsInteger := 1403;
end;

procedure TF133MAU.FGridVemExitLine;
begin
  FFacade.AddVeiculos;
  //FGridVem.Delete;
end;

procedure TF133MAU.FGridVemUSU_PlaVeiExit;
begin
  if (IsNull(FGridVem.FindField('USU_PlaVei').AsString)) then
  begin
    CMessage('A placa deve ser informada!', mtErrorInform);
    FGridVem.SetFocus;
  end;
end;

procedure TF133MAU.FormCreate(Sender: TObject);
begin
  FGridMau.Init('USU_T133MAU', F133MAU);
  FGridMau.AddColumn('Check', 'Sel.', ftInteger, 0, True);
  FGridMau.LookupField('USU_CodEmp', 'E070EMP', [], 'CodEmp');
  FGridMau.CreateDataSet;

  FGridVem.Init('USU_T133VEM', F133MAU);
  FGridVem.AddColumn('Check', 'Sel.', ftInteger, 0, True);
  FGridVem.CreateDataSet;

  FGridVem.ReadOnly('USU_PlaVei', False);
  FGridVem.ReadOnly('USU_ModVei', False);

  FFacade := TFacadeCFT.Create(FGridMau, FGridVem);
end;

procedure TF133MAU.MostrarClick(Sender: TObject);
begin
  FFacade.Carregar;
end;

procedure TF133MAU.SairClick(Sender: TObject);
begin
  Close;
end;

end.
