unit o096ite;

interface

uses
  System.Classes, oBase, System.SysUtils, System.Contnrs,
  o095for, oGeral, o096dei, o096lfc, o095fim, o420ocp, o420ipo,
  o075pro, o096mdo, o031imo;

type
  TRegistroOrdem = class(T420OCP)
  private
    FPesoTotal: Double;
  public
    property PesoTotal: Double read FPesoTotal write FPesoTotal;
  end;

  TContainer = class
  private
    FPeso: Double;
    FLimite: Double;
    FValor: Double;
    FCargaMinima: Double;
  public
    property Peso: Double read FPeso write FPeso;
    property Limite: Double read FLimite write FLimite;
    property Valor: Double read FValor write FValor;
    property CargaMinima: Double read FCargaMinima write FCargaMinima;
  end;

  TIteradorContainer = class(TIterador)
  private
    FUsados: TArrayOfInteger;
    FMovimentados: TArrayOfInteger;
    FPosicao: Integer;
    FPesoAtual: Double;
  public
    constructor Create();
    destructor Destroy(); override;

    procedure Primeiro(); //menor container
    procedure Ultimo(); //maior
    procedure Proximo();
    procedure MovimentarContainer();

    function Eof: Boolean;
    function Registro: TContainer;
    function Movimentos: Double;
  end;

  TIteradorPesoOrdem = class(TIterador)
  public
    constructor Create();
    destructor Destroy(); override;

    procedure Adicionar(const E420OCP: T420OCP; const peso: Double);
  end;

  TIteradorOrdem = class(T420OCP)
  private
    FIteradorProduto: TIterador;
  public
    constructor Create();
    destructor Destroy(); override;

    property IteradorProduto: TIterador read FIteradorProduto write FIteradorProduto;
  end;

  TIteradorFornecedor = class(T095FOR)
  private
    FGrupo: string;
    FPeriodo: Char;
    FIteradorOrdemCompra: TIterador;
  public
    constructor Create();
    destructor Destroy(); override;

    property Grupo: string read FGrupo write FGrupo;
    property Periodo: Char read FPeriodo write FPeriodo;
    property IteradorOrdemCompra: TIterador read FIteradorOrdemCompra write FIteradorOrdemCompra;
  end;

implementation

{ TIteradorContainer }

constructor TIteradorContainer.Create;
begin
  inherited Create;

  FillChar(FUsados, sizeOf(FUsados), 0);
  FillChar(FMovimentados, sizeOf(FMovimentados), 0);
end;

destructor TIteradorContainer.Destroy;
begin
  FillChar(FUsados, sizeOf(FUsados), 0);
  FillChar(FMovimentados, sizeOf(FMovimentados), 0);

  inherited;
end;

function TIteradorContainer.Eof: Boolean;
var
  i: Integer;
begin
  i := Length(FUsados);
  Inc(i);
  SetLength(FUsados, i);

  FUsados[pred(i)] := FPosicao;

  Result := (Length(FUsados) >= Self.Count);
end;

procedure TIteradorContainer.MovimentarContainer;
var
  i: Integer;
begin
  i := Length(FMovimentados);
  Inc(i);
  SetLength(FMovimentados, i);

  FMovimentados[pred(i)] := FPosicao;
end;

function TIteradorContainer.Movimentos: Double;
var
  i: Integer;
  xContainer: TContainer;
begin
  Result := 0;

  for i := 0 to High(FMovimentados) do
  begin
    xContainer := TContainer(Self[FMovimentados[i]]);
    Result := Result + xContainer.Valor;
  end;
end;

procedure TIteradorContainer.Ultimo;
var
  xContainer: TContainer;
  xMaior: Double;
  i: Integer;
begin
  FPosicao := -1;
  xMaior := 0;

  for i := 0 to pred(Self.Count) do
  begin
    xContainer := TContainer(Self[i]);

    if (xContainer.Limite > xMaior) then
    begin
      FPosicao := i;
      xMaior := xContainer.Limite;
    end;
  end;
end;

procedure TIteradorContainer.Primeiro;
var
  xContainer: TContainer;
  xMenor: Double;
  i: Integer;
begin
  FillChar(FUsados, sizeOf(FUsados), 0);
  FPosicao := -1;
  xMenor := 0;

  for i := 0 to pred(Self.Count) do
  begin
    xContainer := TContainer(Self[i]);

    if (xContainer.Limite < xMenor) or (xMenor = 0) then
    begin
      FPosicao := i;
      xMenor := xContainer.Limite;
    end;
  end;

  FPesoAtual := xMenor;
end;

procedure TIteradorContainer.Proximo;
var
  i: Integer;
  xMenor: Double;
  xContainer: TContainer;

  function Usados(const id: Integer): Boolean;
  var
    i: Integer;
  begin
    Result := False;

    for i := 0 to High(FUsados) do
    begin
      if (FUsados[i] = id) then
      begin
        Result := True;
        Break;
      end;
    end;
  end;

begin
  xMenor := 0;

  for i := 0 to pred(Self.Count) do
  begin
    if not(Usados(i)) then
    begin
      xContainer := TContainer(Self[i]);

      if (xContainer.Limite < xMenor) or (xMenor = 0) then
      begin
        FPosicao := i;
        xMenor := xContainer.Limite;
      end;
    end;
  end;
end;

function TIteradorContainer.Registro: TContainer;
begin
  Result := TContainer(Self[FPosicao]);
end;

{ TIteradorPesoOrdem }

procedure TIteradorPesoOrdem.Adicionar(const E420OCP: T420OCP; const peso: Double);
var
  i: Integer;
  xRegistro: TRegistroOrdem;
begin
  i := Self.IndexOfFields(E420OCP);

  if (i = -1) then
  begin
    xRegistro := TRegistroOrdem.Create;
    xRegistro.Assign(E420OCP);
    xRegistro.PesoTotal := xRegistro.PesoTotal + peso;

    Self.Add(xRegistro);
  end
  else
  begin
    xRegistro := TRegistroOrdem(Self[i]);
    xRegistro.PesoTotal := xRegistro.PesoTotal + peso;
  end;
end;

constructor TIteradorPesoOrdem.Create;
begin
  inherited Create;

  indexed := True;
  IndexFields(['CodEmp','CodFil','NumOcp']);
end;

destructor TIteradorPesoOrdem.Destroy;
begin
  inherited;
end;

{ TIteradorFornecedor }

constructor TIteradorFornecedor.Create;
begin
  inherited Create();

  FIteradorOrdemCompra := TIterador.Create;
end;

destructor TIteradorFornecedor.Destroy;
begin
  FreeAndNil(FIteradorOrdemCompra);

  inherited;
end;

{ TIteradorOrdem }

constructor TIteradorOrdem.Create;
begin
  inherited Create();

  BlockProperty(['IteradorProduto']);
  FIteradorProduto := TIterador.Create;
end;

destructor TIteradorOrdem.Destroy;
begin
  FreeAndNil(FIteradorProduto);

  inherited;
end;


end.
