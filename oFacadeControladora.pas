unit oFacadeControladora;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, oTabelas,
  DateUtils, o133vem, o133mau;

type
  TIteradorMatricula = class(T133MAU)
  private
    FLista: TIterador;
    function GetMatricula: TIterador;
    procedure SetMatricula(const Value: TIterador);
  public
    constructor Create(const pID: Integer);
    destructor Destroy(); override;

    property Matricula: TIterador read GetMatricula write SetMatricula;
  end;

  TFacadeControladora = class(TIterador)
  private
    FListaMAU: TIterador;
    FListaVEM: TIterador;

    function GetMatricula: TIterador;
    function GetVeiculo: TIterador;
    procedure SetMatricula(const Value: TIterador);
    procedure SetVeiculo(const Value: TIterador);
  public
    constructor Create();
    destructor Destroy(); override;

    procedure CarregarFacade();

    property Matricula: TIterador read GetMatricula write SetMatricula;
    property Veiculo: TIterador read GetVeiculo write SetVeiculo;
  end;

implementation

{ TFacadeControladora }

procedure TFacadeControladora.CarregarFacade;
var
  xQueryMAU: T133MAU;
begin
  xQueryMAU := T133MAU.Create;
  xQueryMAU.Execute(etSelect, esLoop);

  while (xQueryMAU.Next) do
    Self.IterarAdd(xQueryMAU, TIteradorMatricula.Create(xQueryMAU.USU_ID));
end;

constructor TFacadeControladora.Create;
begin
  inherited Create;

  FListaMAU := TIterador.Create();
  FListaVEM := TIterador.Create();
end;

destructor TFacadeControladora.Destroy;
begin
  FreeAndNil(FListaMAU);
  FreeAndNil(FListaVEM);

  inherited;
end;

function TFacadeControladora.GetMatricula: TIterador;
begin
  Result := FListaMAU;
end;

function TFacadeControladora.GetVeiculo: TIterador;
begin
  Result := FListaVEM;
end;

procedure TFacadeControladora.SetMatricula(const Value: TIterador);
begin
  FListaMAU := Value;
end;

procedure TFacadeControladora.SetVeiculo(const Value: TIterador);
begin
  FListaVEM := Value;
end;

{ TIteradorMatricula }

constructor TIteradorMatricula.Create(const pID: Integer);
var
  xQueryVEM: T133VEM;
begin
  inherited Create();

  FLista := TIterador.Create();

  xQueryVEM := T133VEM.Create;
  xQueryVEM.USU_IDMAU := pID;
  xQueryVEM.PropertyForSelect(['USU_IDMAU']);
  xQueryVEM.Execute(etSelect, esLoop);

  while (xQueryVEM.Next) do
    FLista.IterarAdd(xQueryVEM, T133VEM.Create);
end;

destructor TIteradorMatricula.Destroy;
begin
  FreeAndNil(FLista);

  inherited;
end;

function TIteradorMatricula.GetMatricula: TIterador;
begin
  Result := FLista;
end;

procedure TIteradorMatricula.SetMatricula(const Value: TIterador);
begin
  FLista := Value;
end;

end.
