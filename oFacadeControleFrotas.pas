unit oFacadeControleFrotas;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, oTabelas,
  DateUtils, oFacadeControladora, oDataSetGrid, o133mau, o133vem;

type
  TFacadeCFT = class
  private
    FGridMau: TDataSetGrid;
    FGridVem: TDataSetGrid;

    FFacadeControladora: TFacadeControladora;
  public
    procedure Carregar;
    procedure EnterLine;
    function AddVeiculos(): T133VEM;
    function AddMatricula(): T133MAU;

    constructor Create(const pGridMau, pGridVem: TDataSetGrid);
    destructor Destroy(); override;
  end;

implementation

{ TFacadeCFT }

function TFacadeCFT.AddMatricula: T133MAU;
begin
  Result := T133MAU.Create;
  Result.USU_NumMat := FGridMau.FindField('USU_NumMat').AsString;
  Result.USU_MotVei := FGridMau.FindField('USU_MotVei').AsString;
  Result.USU_CodEmp := FGridMau.FindField('USU_CodEmp').AsInteger;
  Result.USU_CodCcu := FGridMau.FindField('USU_CodCcu').AsString;
  Result.USU_CodUsu := FGridMau.FindField('USU_CodUsu').AsInteger;
  Result.USU_DatGer := FGridMau.FindField('USU_DatGer').AsDateTime;
  Result.USU_UsuGer := FGridMau.FindField('USU_UsuGer').AsInteger;
  FFacadeControladora.Matricula.Add(Result);
end;

function TFacadeCFT.AddVeiculos: T133VEM;
begin
  if not(TIteradorMatricula(FFacadeControladora[pred(FGridMau.Line)]).Matricula.Exists(FGridVem.Line)) then
  begin
    Result := T133VEM.Create;
    Result.USU_PlaVei := FGridVem.FindField('USU_PlaVei').AsString;
    Result.USU_ModVei := FGridVem.FindField('USU_ModVei').AsString;
    Result.USU_DatGer := FGridVem.FindField('USU_DatGer').AsDateTime;
    Result.USU_UsuGer := FGridVem.FindField('USU_UsuGer').AsInteger;
    FFacadeControladora.Veiculo.Add(Result);
  end;
end;

procedure TFacadeCFT.Carregar;
var
  i: Integer;
begin
  FFacadeControladora.CarregarFacade;
  FGridMau.Clear;
  FGridMau.Disconnect;
  for i := 0 to pred(FFacadeControladora.Count) do
  begin
    FGridMau.Add;
    FGridMau.AddFields(T133MAU(FFacadeControladora[i]));
  end;
  FGridMau.Connect;
  FGridMau.First;
end;

constructor TFacadeCFT.Create(const pGridMau, pGridVem: TDataSetGrid);
begin
  inherited Create();

  FGridMau := pGridMau;
  FGridVem := pGridVem;
  FFacadeControladora := TFacadeControladora.Create;
end;

destructor TFacadeCFT.Destroy;
begin
  inherited;
end;

procedure TFacadeCFT.EnterLine;
var
  i: Integer;
begin
  FGridVem.Clear;
  FGridVem.Disconnect;
  for i := 0 to pred(TIteradorMatricula(FFacadeControladora[pred(FGridMau.Line)]).Matricula.Count) do
  begin
    FGridVem.Add;
    FGridVem.AddFields(TIteradorMatricula(FFacadeControladora[pred(FGridMau.Line)]).Matricula[i]);
  end;
  FGridVem.Connect;
  FGridVem.First;
end;

end.
