unit o096ger;

interface

uses
  System.Classes, oBase, System.SysUtils, System.Contnrs, o096ite,
  o095for, oGeral, o096dei, o096lfc, o095fim, o420ocp, o420ipo, webserviceContasPagar,
  o075pro, o096mdo, o031imo, o050dic, o097dem, o501tcp;

type

  TCotacao = class(T031IMO)
  private
    FMedCot: Double;
  public
    property MedCot: Double read FMedCot write FMedCot;
  end;

  TBase = class(T501TCP)
  private
    FListaMoedas: TIterador;
    FCalcularGrupo: Boolean;
    FContainer: Boolean;
    FImposto: Boolean;
    FTitulo: Boolean;
    F031IMO: T031IMO;
    FData: TDate;

    FGeradorTitulo: TGeradorTitulo;
  public
    constructor Create();
    destructor Destroy(); override;

    function DataPrevisao: TDate;
    function GeradorTitulo: TGeradorTitulo;
    function CalcularMoeda(const moeda: string): Double;

    property Data: TDate read FData write FData;
    property Titulo: Boolean read FTitulo write FTitulo;
    property Imposto: Boolean read FImposto write FImposto;
    property Container: Boolean read FContainer write FContainer;
    property CalcularGrupo: Boolean read FCalcularGrupo write FCalcularGrupo;
  end;

  TGerenciadorContainer = class(TBase)
  private
    FIteradorPesoOrdem: TIteradorPesoOrdem;
    FIteradorContainer: TIteradorContainer;
    FListaDespesas: TIterador;
    F096MDO: T096MDO;

    FSobra: Integer;
    FIdeFor: Integer;
    FValor: Double;
    FQtdTitulos: Integer;
    FTotalGastos: Double;

    function BuscarContainer(const total: Double): Boolean;

    procedure CarregarDespesas();
    procedure CarregarDespesaGrupo(const grupo: string);
    procedure AtualizarOrdemCompra(const iterador: TIterador);
    procedure GerarMovimentos(const gerador: TGeradorTitulo);
    procedure GerarTitulo(const iterador: TIterador; const fornecedor: Integer);
  public
    constructor Create();
    destructor Destroy(); override;

    procedure IncluirItem(const produto: T420IPO; const ordem: T420OCP);
    procedure Carregar(const fornecedor: Integer; const grupo: string = '');
    procedure Executar(const iterador: TIterador; const fornecedor: Integer);

    function ValorContainer: Double;
    function IdentificadorFornecedor: Integer;
    function Gastos: Double;
  end;

  TGerenciardorTitulo = class(TBase)
  private
    FVlrFin: Double;

    function GetVlrFin: Double;
    procedure SetVlrFin(const Value: Double);
  public
    procedure Executar();
    procedure Adicionar(const produto: T420IPO; const ordem: T420OCP);

    property VlrFin: Double read GetVlrFin write SetVlrFin;
  end;

  TGeradorImposto = class(TBase)
  private
    FVlrImp: Double;
    function GetVlrImp: Double;
    procedure SetVlrImp(const Value: Double);
  public
    procedure Executar();
    procedure Adicionar(const produto: T420IPO; const ordem: T420OCP);

    property VlrImp: Double read GetVlrImp write SetVlrImp;
  end;

implementation

{ TBase }

function TBase.CalcularMoeda(const moeda: string): Double;
var
  xData: TData;
  i: Integer;
  xIteradorCotacao: TCotacao;
begin
  i := FListaMoedas.IndexOf(moeda);

  if (i = -1) then
  begin
    xData := TData.Create(Date);
    try
      xData.DecDays(30);

      F031IMO.Init;
      F031IMO.CodMoe := moeda;
      F031IMO.Between['DATMOE'] := xData.Data;
      F031IMO.Between['DATMOE'] := Date;
      F031IMO.FieldForSum := 'VLRCOT';
      F031IMO.FieldForCount := 'CODMOE';
      F031IMO.Select := [ssSum, ssCount];
      F031IMO.Open();

      xIteradorCotacao := TCotacao.Create;
      xIteradorCotacao.Assign(F031IMO);
      xIteradorCotacao.MedCot := (F031IMO.VlrCot / F031IMO.CountField);
      FListaMoedas.Add(xIteradorCotacao);

      Result := xIteradorCotacao.MedCot;
    finally
      F031IMO.Close;
      FreeAndNil(xData);
    end;
  end
  else
    Result := TCotacao(FListaMoedas[i]).MedCot;
end;

constructor TBase.Create;
begin
  inherited Create;

  FGeradorTitulo := TGeradorTitulo.Create;
  F031IMO := T031IMO.Create;

  FListaMoedas := TIterador.Create();
  FListaMoedas.indexed := True;
  FListaMoedas.IndexFields(['CodMoe']);
end;

function TBase.DataPrevisao: TDate;
begin
  Result := FData;
end;

destructor TBase.Destroy;
begin
  FreeAndNil(FGeradorTitulo);
  FreeAndNil(F031IMO);
  FreeAndNil(FListaMoedas);

  inherited;
end;

function TBase.GeradorTitulo: TGeradorTitulo;
begin
  Result := FGeradorTitulo;
end;

{ TGerenciadorContainer }

procedure TGerenciadorContainer.Carregar(const fornecedor: Integer; const grupo: string = '');
var
  x050dic: T050DIC;
  x096lfc: T096LFC;
  xGrupo: string;
  xContainer: TContainer;
begin
  FSobra := 0;
  FValor := 0;
  xGrupo := EmptyStr;
  FIteradorContainer.Clear;
  FListaDespesas.Clear;

  x096lfc := T096LFC.Create;
  try
    x050dic := T050DIC.Create;

    x096lfc.USU_CodFor := fornecedor;
    x096lfc.USU_CodGfi := grupo;
    x096lfc.USU_LigCon := 'A';

    if not(IsNull(grupo)) then
      x096lfc.PropertyForSelect(['USU_CODGFI', 'USU_LIGCON'])
    else
      x096lfc.PropertyForSelect(['USU_CODFOR', 'USU_LIGCON']);

    x096lfc.Open(False);
    if not(x096lfc.IsEmpty) then
      FIdeFor := x096lfc.USU_IdeFor;

    while (x096lfc.Next) do
    begin
      x050dic.Init;
      x050dic.USU_ID := x096lfc.USU_IdeCon;
      x050dic.Open;

      xContainer := TContainer.Create;
      xContainer.Valor := x096lfc.USU_VlrFrt;
      xContainer.Peso := x050dic.USU_CapCar;
      xContainer.Limite := x050dic.USU_LimCon;
      xContainer.CargaMinima := x050dic.USU_LimMin;

      FIteradorContainer.Add(xContainer);
    end;
  finally
    FreeAndNil(x050dic);
    FreeAndNil(x096lfc);
  end;
end;

procedure TGerenciadorContainer.CarregarDespesaGrupo(const grupo: string);
var
  x096dei: T096DEI;
  x097dem: T097DEM;
  xDespesa: Double;
begin
  FTotalGastos := FTotalGastos + Self.ValorContainer;

  x096dei := T096DEI.Create;
  try
    x096dei.USU_CodGfi := grupo;
    x096dei.PropertyForSelect(['USU_CODGFI']);
    x096dei.Open(False);

    while (x096dei.Next) do
    begin
      xDespesa := (x096dei.USU_VlrDes * (CalcularMoeda(x096dei.USU_CodMoe)));

      FTotalGastos := FTotalGastos + xDespesa;

      x097dem := T097DEM.Create;
      x097dem.USU_DesFor := x096dei.USU_DesFor;
      x097dem.USU_VlrDes := xDespesa;

      FListaDespesas.Add(x097dem);
    end;
  finally
    FreeAndNil(x096dei);
  end;
end;

procedure TGerenciadorContainer.CarregarDespesas();
var
  x096dei: T096DEI;
  x097dem: T097DEM;
  xDespesa: Double;
begin
  FTotalGastos := FTotalGastos + Self.ValorContainer;

  x096dei := T096DEI.Create;
  try
    x096dei.USU_IdeFim := Self.IdentificadorFornecedor;
    x096dei.doForeignKey := True;
    x096dei.Open();

    while (x096dei.Next) do
    begin
      xDespesa := (x096dei.USU_VlrDes * (CalcularMoeda(x096dei.USU_CodMoe)));

      FTotalGastos := FTotalGastos + xDespesa;

      x097dem := T097DEM.Create;
      x097dem.USU_DesFor := x096dei.USU_DesFor;
      x097dem.USU_VlrDes := xDespesa;

      FListaDespesas.Add(x097dem);
    end;
  finally
    FreeAndNil(x096dei);
  end;
end;

constructor TGerenciadorContainer.Create;
begin
  inherited Create;

  FIteradorContainer := TIteradorContainer.Create();
  F096MDO := T096MDO.Create;

  FListaDespesas := TIterador.Create;
  FIteradorPesoOrdem := TIteradorPesoOrdem.Create();
end;

destructor TGerenciadorContainer.Destroy;
begin
  FreeAndNil(FIteradorContainer);
  FreeAndNil(F096MDO);
  FreeAndNil(FListaDespesas);
  FreeAndNil(FIteradorPesoOrdem);

  inherited;
end;

procedure TGerenciadorContainer.Executar(const iterador: TIterador; const fornecedor: Integer);
var
  xRegistro: TRegistroOrdem;
  xContinuar: Boolean;
  xTotal: Double;
  i: Integer;
  xSobras: array of Integer;

  function Sobra(const id: Integer): Boolean;
  var
    i: Integer;
  begin
    Result := False;

    for i := 0 to High(xSobras) do
    begin
      if (xSobras[i] = id) then
      begin
        Result := True;
        Break;
      end;
    end;
  end;

  procedure RemoverOrdem();
  var
    xRegistro: TRegistroOrdem;
    xMenor: Integer;
    xPeso: Double;
    i: Integer;
  begin
    xMenor := 0;
    xPeso := 0;

    for i := 0 to pred(FIteradorPesoOrdem.Count) do
    begin
      xRegistro := TRegistroOrdem(FIteradorPesoOrdem[i]);

      if ((xRegistro.PesoTotal < xPeso) and not(Sobra(i))) or (xPeso = 0) then
      begin
        xMenor := i;
        xPeso := xRegistro.PesoTotal
      end;
    end;

    i := Length(xSobras);
    Inc(i);
    SetLength(xSobras, i);
    xSobras[pred(i)] := xMenor;

    for i := 0 to pred(FIteradorPesoOrdem.Count) do
    begin
      xRegistro := TRegistroOrdem(FIteradorPesoOrdem[i]);

      if not(Sobra(i)) then
        xTotal := xTotal + xRegistro.PesoTotal;
    end;
  end;

begin
  xTotal := 0;
  xContinuar := False;

  for i := 0 to pred(FIteradorPesoOrdem.Count) do
  begin
    xRegistro := TRegistroOrdem(FIteradorPesoOrdem[i]);
    xTotal := xTotal + xRegistro.PesoTotal;
  end;

  if not(BuscarContainer(xTotal)) then
  begin
    xTotal := 0;

    //se falhou em passar o total para os containers, diminui do menor
    while not(xContinuar) do
    begin
      RemoverOrdem;
      xContinuar := BuscarContainer(xTotal);
    end;

    if (Length(xSobras) > 0) then
    begin
      xTotal := 0;

      for i := 0 to High(xSobras) do
      begin
        xRegistro := TRegistroOrdem(FIteradorPesoOrdem[xSobras[i]]);
        xTotal := xTotal + xRegistro.PesoTotal;
      end;

      BuscarContainer(xTotal)
    end;
  end;

  FIteradorPesoOrdem.Clear;

  if (FIteradorContainer.Movimentos > 0) then
  begin
    Self.CarregarDespesas();
    Self.GerarTitulo(iterador, fornecedor);
  end;
end;

procedure TGerenciadorContainer.AtualizarOrdemCompra(const iterador: TIterador);
var
  i: Integer;
  x420ocp: T420OCP;
begin
  for i := 0 to pred(iterador.Count) do
  begin
    x420ocp := T420OCP(iterador[i]);
    x420ocp.USU_IdeMdo := F096MDO.USU_ID;
    x420ocp.Update;
  end;
end;

function TGerenciadorContainer.BuscarContainer(const total: Double): Boolean;
var
  xContainer: TContainer;
  xManipularPeso: Double;

  function AlterarContainer(const peso: Double): Integer;
  var
    xContainer: TContainer;
    xProximo: Double;
    xAnterior: Double;
    i,j: Integer;
  begin
    Result := -1;
    j := 0;
    xProximo := 0;
    xAnterior := 0;

    for i := 0 to pred(FIteradorContainer.Count) do
    begin
      xContainer := TContainer(FIteradorContainer[i]);

      if (xContainer.Limite < xProximo) or (xProximo = 0) then
      begin
        xProximo := xContainer.Limite;
        Result := i;

        if (xProximo <= peso) then
        begin
          xProximo := xAnterior;
          Result := j;
        end;
      end;

      j := i;
      xAnterior := xContainer.Limite;
    end;
  end;

begin
  if (FIteradorContainer.Count > 0) then
  begin
    FIteradorContainer.Primeiro;
    xContainer := FIteradorContainer.Registro;

    xManipularPeso := 0;
    Result := False;

    if (total >= (xContainer.CargaMinima * 1000)) then
    begin
      //testa pelo peso total
      while not(FIteradorContainer.Eof) do
      begin
        xContainer := FIteradorContainer.Registro;

        if (total >= (xContainer.CargaMinima * 1000)) and (total <= (xContainer.Limite * 1000)) then
        begin
          FIteradorContainer.MovimentarContainer;
          Result := True;
          Break;
        end;

        FIteradorContainer.Proximo;
      end;

      //tenta diminuir do total para os containers
      if not(Result) then
      begin
        xManipularPeso := total;

        FIteradorContainer.Ultimo;
        xContainer := FIteradorContainer.Registro;
        xManipularPeso := xManipularPeso - (xContainer.Limite * 1000);

        FIteradorContainer.MovimentarContainer;
        Result := BuscarContainer(xManipularPeso);
      end;

      if (xManipularPeso > 0) then
        Result := False;
    end
    else
      Result := True;
  end
  else
     Result := True;
end;

function TGerenciadorContainer.Gastos: Double;
begin
  Result := FTotalGastos;
end;

procedure TGerenciadorContainer.GerarMovimentos(const gerador: TGeradorTitulo);
var
  i: Integer;
  x097dem: T097DEM;
begin
  F096MDO.USU_CodEmp := gerador.CodEmp;
  F096MDO.USU_CodFil := gerador.CodFil;
  F096MDO.USU_CodFor := gerador.CodFor;
  F096MDO.USU_CodTpt := gerador.CodTpt;
  F096MDO.USU_NumTit := gerador.NumTit;
  F096MDO.Insert;

  for i := 0 to pred(FListaDespesas.Count) do
  begin
    x097dem := T097DEM(FListaDespesas[i]);
    x097dem.USU_IdeMdo := F096MDO.USU_ID;
    x097dem.Insert;
  end;
end;

procedure TGerenciadorContainer.GerarTitulo(const iterador: TIterador; const fornecedor: Integer);
begin
  GeradorTitulo.CodEmp := FLogEmp;
  GeradorTitulo.CodFil := FLogFil;
  GeradorTitulo.CodFor := fornecedor;
  GeradorTitulo.VctOri := Self.DataPrevisao;
  GeradorTitulo.DatPpt := Self.DataPrevisao;
  GeradorTitulo.VlrOri := FTotalGastos;
  GeradorTitulo.DatEmi := Date;
  GeradorTitulo.DatEnt := Date;
  GeradorTitulo.Titulo := toPrevisto;
  GeradorTitulo.ObsTcp := ObsTcp;
  GeradorTitulo.Add;

  GeradorTitulo.Executar;

  if (GeradorTitulo.Processado) then
  begin
    Self.GerarMovimentos(GeradorTitulo);
    Self.AtualizarOrdemCompra(iterador);
    Inc(FQtdTitulos);
  end;
end;

function TGerenciadorContainer.IdentificadorFornecedor: Integer;
begin
  Result := FIdeFor;
end;

procedure TGerenciadorContainer.IncluirItem(const produto: T420IPO;
  const ordem: T420OCP);
var
  x075pro: T075PRO;
begin
  x075pro := T075PRO.Create;
  try
    x075pro.Init;
    x075pro.CodEmp := produto.CodEmp;
    x075pro.CodPro := produto.CodPro;
    x075pro.Open();

    if (Data < produto.DatEnt) or (Data < produto.USU_DatCon) then
      Data := iff(produto.USU_DatCon > produto.DatEnt, produto.USU_DatCon, produto.DatEnt);

    FIteradorPesoOrdem.Adicionar(ordem, (x075pro.PesBru * produto.QtdPed));
  finally
    FreeAndNil(x075pro);
  end;
end;

function TGerenciadorContainer.ValorContainer: Double;
begin
  Result := FIteradorContainer.Movimentos;
end;

{ TGerenciardorTitulo }

procedure TGerenciardorTitulo.Adicionar(const produto: T420IPO;
  const ordem: T420OCP);
begin
  if (Data < produto.DatEnt) or (Data < produto.USU_DatCon) then
    Data := iff(produto.USU_DatCon > produto.DatEnt, produto.USU_DatCon, produto.DatEnt);

  if (CodFor = 0) then
    CodFor := ordem.CodFor;

  if IsNull(CodMoe) then
    CodMoe := ordem.CodMoe;

  VlrFin := VlrFin + ordem.VlrFin;
end;

procedure TGerenciardorTitulo.Executar;
begin
  GeradorTitulo.CodEmp := FLogEmp;
  GeradorTitulo.CodFil := FLogFil;
  GeradorTitulo.CodFor := CodFor;
  GeradorTitulo.VctOri := Self.DataPrevisao;
  GeradorTitulo.DatPpt := Self.DataPrevisao;
  GeradorTitulo.VlrOri := (VlrFin * (CalcularMoeda(CodMoe)));
  GeradorTitulo.DatEmi := Date;
  GeradorTitulo.DatEnt := Date;
  GeradorTitulo.Titulo := toPrevisto;
  GeradorTitulo.ObsTcp := ObsTcp;
  GeradorTitulo.Add;

  GeradorTitulo.Executar;
end;

function TGerenciardorTitulo.GetVlrFin: Double;
begin
  Result := FVlrFin;
end;

procedure TGerenciardorTitulo.SetVlrFin(const Value: Double);
begin
  FVlrFin := Value;
end;

{ TGeradorImposto }

procedure TGeradorImposto.Adicionar(const produto: T420IPO;
  const ordem: T420OCP);
begin
  if (Data < produto.DatEnt) or (Data < produto.USU_DatCon) then
    Data := iff(produto.USU_DatCon > produto.DatEnt, produto.USU_DatCon, produto.DatEnt);

  if (CodFor = 0) then
    CodFor := ordem.CodFor;

  if IsNull(CodMoe) then
    CodMoe := ordem.CodMoe;

  //IPI / COFINS / PIS / Importação
  VlrImp := VlrImp + (produto.VlrPis + produto.VlrCrt + produto.VlrIim + produto.VlrIpi);
end;

procedure TGeradorImposto.Executar;
begin
  GeradorTitulo.CodEmp := FLogEmp;
  GeradorTitulo.CodFil := FLogFil;
  GeradorTitulo.CodFor := CodFor;
  GeradorTitulo.VctOri := Self.DataPrevisao;
  GeradorTitulo.DatPpt := Self.DataPrevisao;
  GeradorTitulo.VlrOri := (VlrImp * (CalcularMoeda(CodMoe)));
  GeradorTitulo.DatEmi := Date;
  GeradorTitulo.DatEnt := Date;
  GeradorTitulo.Titulo := toPrevisto;
  GeradorTitulo.ObsTcp := ObsTcp;
  GeradorTitulo.Add;

  GeradorTitulo.Executar;
end;

function TGeradorImposto.GetVlrImp: Double;
begin
  Result := FVlrImp;
end;

procedure TGeradorImposto.SetVlrImp(const Value: Double);
begin
  FVlrImp := Value;
end;

end.
