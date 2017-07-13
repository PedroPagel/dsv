unit oFacadeRCU;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, oTabelas,
  DateUtils, oFacadeRelacionamento, oFacadeConta, oDataSetGrid;

type
  TFacade = class
  private
    FComando: string;
    FUsuario: string;
    FGridCco: TDataSetGrid;
    FGridUsu: TDataSetGrid;

    FFacadeConta: TFacadeConta;
    FFacadeRelacionamento: TFacadeRelacionamento;

    procedure CarregarConta();
    procedure CarregarUsuario();
    procedure SetGridCco(const Value: TDataSetGrid);
    procedure SetGridCcu(const Value: TDataSetGrid);
  public
    constructor Create();
    destructor Destroy(); override;

    procedure Carregar;
    procedure EnterLine;
    function RetornaFacade(): TFacadeConta;

    property Comando: string write FComando;
    property Usuario: string write FUsuario;
    property GridCco: TDataSetGrid read FGridCco write SetGridCco;
    property GridUsu: TDataSetGrid read FGridUsu write SetGridCcu;
  end;

implementation

{ TFacade }

procedure TFacade.Carregar;
begin
  CarregarConta;
  CarregarUsuario;
end;

procedure TFacade.CarregarConta;
begin
  FFacadeConta.AddComando(FComando);
  FFacadeConta.Carregar;
end;

procedure TFacade.CarregarUsuario;
begin
  FFacadeRelacionamento.RelacionarFacades(FFacadeConta);
end;

constructor TFacade.Create;
begin
  inherited Create;
end;

destructor TFacade.Destroy;
begin
  FreeAndNil(FFacadeConta);
  FreeAndNil(FFacadeRelacionamento);

  inherited;
end;

procedure TFacade.EnterLine;
begin
  FFacadeRelacionamento.EnterLine(FGridCco.FindField('pos').AsInteger);
end;

function TFacade.RetornaFacade: TFacadeConta;
begin
  Result := FFacadeConta;
end;

procedure TFacade.SetGridCco(const Value: TDataSetGrid);
begin
  FGridCco := Value;
  FFacadeConta := TFacadeConta.Create(Value);
end;

procedure TFacade.SetGridCcu(const Value: TDataSetGrid);
begin
  FGridUsu := Value;
  FFacadeRelacionamento := TFacadeRelacionamento.Create(Value);
end;

end.
