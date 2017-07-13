unit oFacadeConta;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, oTabelas,
  DateUtils, o600cco, o600rcu, oDataSetGrid;

type
  TIteradorFacade = class(T600CCO)
  private
    FLista: TIterador;
  public
    constructor Create();
    destructor Destroy(); override;

    function Lista: TIterador;
    procedure AdicionarRelacionamento(const p600rcu: T600RCU);
  end;

  TFacadeConta = class(TIterador)
  private
    F600CCO: T600CCO;
    FGrid: TDataSetGrid;
  public
    constructor Create(const pGrid: TDataSetGrid);
    destructor Destroy(); override;

    procedure AddComando(const pComando: string);
    procedure Carregar();
  end;

implementation

{ TFacadeConta }

procedure TFacadeConta.AddComando(const pComando: string);
begin
  F600CCO.Start;
  F600CCO.AddToCommand(pComando);
end;

procedure TFacadeConta.Carregar;
var
  i: Integer;
begin
  i := 0;
  Self.Clear;
  F600CCO.Execute(etSelect, esLoop);

  FGrid.Clear;
  FGrid.Disconnect;
  while (F600CCO.Next) do
  begin
    Self.IterarAdd(F600CCO, TIteradorFacade.Create);

    FGrid.Add;
    FGrid.AddFields(F600CCO);
    FGrid.FindField('pos').AsInteger := i;
    Inc(i);
  end;

  FGrid.Connect;
  FGrid.First;
end;

constructor TFacadeConta.Create(const pGrid: TDataSetGrid);
begin
  inherited Create();

  FGrid := pGrid;
  F600CCO := T600CCO.Create;
end;

destructor TFacadeConta.Destroy;
begin
  FreeAndNil(F600CCO);

  inherited;
end;

{ TIteradorFacade }

procedure TIteradorFacade.AdicionarRelacionamento(const p600rcu: T600RCU);
begin
  FLista.IterarAdd(p600rcu, T600RCU.Create);
end;

constructor TIteradorFacade.Create;
begin
  inherited;

  FLista := TIterador.Create;
end;

destructor TIteradorFacade.Destroy;
begin
  FreeAndNil(FLista);

  inherited;
end;

function TIteradorFacade.Lista: TIterador;
begin
  Result := FLista;
end;

end.
