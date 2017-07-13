unit oFacadeRelacionamento;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, oTabelas,
  DateUtils, o600rcu, oFacadeConta, oDataSetGrid;

type
  TFacadeRelacionamento = class(TIterador)
  private
    F600RCU: T600RCU;
    FGrid: TDataSetGrid;
    FFacadeConta: TFacadeConta;
  public
    constructor Create(const pGrid: TDataSetGrid);
    destructor Destroy(); override;

    procedure EnterLine(const pLine: Integer);
    procedure RelacionarFacades(const pFacadeConta: TFacadeConta);
  end;

implementation

{ TFacadeRelacionamento }

procedure TFacadeRelacionamento.RelacionarFacades(const pFacadeConta: TFacadeConta);
var
  i: Integer;
  xIterador: TIteradorFacade;
begin
  FFacadeConta := pFacadeConta;

  for i := 0 to pred(FFacadeConta.Count) do
  begin
    xIterador := TIteradorFacade(FFacadeConta[i]);

    F600RCU.Start;
    F600RCU.USU_CodEmp := xIterador.CodEmp;
    F600RCU.USU_NumCco := xIterador.NumCco;
    F600RCU.PropertyForSelect(['USU_CODEMP','USU_NUMCCO'], True);
    F600RCU.Execute(etSelect, esLoop);

    while (F600RCU.Next) do
      xIterador.AdicionarRelacionamento(F600RCU);

    F600RCU.Close;
  end;
end;

constructor TFacadeRelacionamento.Create(const pGrid: TDataSetGrid);
begin
  FGrid := pGrid;
  F600RCU := T600RCU.Create;

  inherited Create();
end;

destructor TFacadeRelacionamento.Destroy;
begin
  FreeAndNil(F600RCU);

  inherited;
end;

procedure TFacadeRelacionamento.EnterLine(const pLine: Integer);
var
  i: Integer;
begin
  FGrid.Clear;

  if (Assigned(FFacadeConta) and (FFacadeConta.Count > 0)) then
  begin
    FGrid.Disconnect;

    for i := 0 to pred(TIteradorFacade(FFacadeConta[pLine]).Lista.Count) do
    begin
      FGrid.Add;
      FGrid.AddFields(T600RCU(TIteradorFacade(FFacadeConta[pLine]).Lista[i]));
    end;

    FGrid.Connect;
    FGrid.First;
  end;
end;

end.
