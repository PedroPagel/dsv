unit o096pto;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, System.DateUtils,
  o095for, oGeral, o096dei, o096lfc, o095fim, o420ocp, o420ipo, webserviceContasPagar,
  o075pro, o096mdo, o031imo;

CONST
  CMARGEM_ERRO = 500;

type
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

  TGerenciadorDeUnidades = class
  private
    FLista: TIterador;
    FMedidaControle: Double;
    FTotalPeso: Double;
    FValor: Double;
    FUltimoContainer: Integer;
    FContainerInicial: Integer;
    FContainerCompletado: Boolean;
    FIdeFor: Integer;
    FListaMoedas: TIterador;
    F031IMO: T031IMO;
    FMoeda: string;
    FSobra: Integer;
    FMovimento: Boolean;

    function AlterarControle(const id: Integer): Boolean;
    function CalcularMoeda(const moeda: string): Double;

    procedure MovimentarContainer();
  public
    constructor Create();
    destructor Destroy(); override;

    procedure GerarSobra();
    procedure Carregar(const fornecedor: Integer);
    procedure Calcular(const produto: T420IPO; const moeda: string);

    function ValorContainer: Double;
    function IdentificadorFornecedor: Integer;
    function VerificarSobra(const quantidade: Integer): Boolean;
    function GerarTitulo: Boolean;
  end;

  TIteradorCotacao = class(T031IMO)
  private
    FMedCot: Double;
  public
    property MedCot: Double read FMedCot write FMedCot;
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
    FPeriodo: Char;
    FIteradorOrdemCompra: TIterador;
  public
    constructor Create();
    destructor Destroy(); override;

    property Periodo: Char read FPeriodo write FPeriodo;
    property IteradorOrdemCompra: TIterador read FIteradorOrdemCompra write FIteradorOrdemCompra;
  end;

  TIteradorPrevisao = class
  private
    FLista: TIterador;
    FListaDespesas: TIterador;

    F095FOR: T095FOR;
    F095FIM: T095FIM;
    F420OCP: T420OCP;
    F420IPO: T420IPO;
    F096MDO: T096MDO;

    FDataBase: TDate;
    FTotalGastos: Double;
    FPosFornecedor: Integer;

    FDadosOrdem: string;
    FDadosFornecedor: string;
    FGerenciadorDeUnidades: TGerenciadorDeUnidades;

    procedure MontaPeriodo();
    procedure GerarMovimentos(const gerador: TGeradorTitulo);
    procedure AtualizarOrdemCompra(const iterador: TIterador);
    procedure CarregarDespesas(const gerenciador: TGerenciadorDeUnidades);
    procedure GerarTitulo(const iterador: TIterador; const fornecedor: Integer);
  public
    constructor Create();
    destructor Destroy(); override;

    procedure Carregar();
    procedure Processar();
    procedure MarcarDesmarcarOrdem(const id: Integer; const check: Byte);
    procedure MarcarDesmarcarFornecedor(const id: Integer; const check: Byte);

    function QtdFornecedor: Integer;
    function Fornecedor(const pos: Integer): TIteradorFornecedor;

    function QtdOrdemCompra: Integer;
    function OrdemCompra(const pos: Integer): T420OCP;
    function QtdProduto(const idOrd: Integer): Integer;
    function Produto(const idOrd, idPro: Integer): T075PRO;
    function ItemSelecionado(): Boolean;

    property DadosFornecedor: string write FDadosFornecedor;
    property DadosOrdem: string write FDadosOrdem;
    property DataBase: TDate read FDataBase write FDataBase;
  end;

implementation

uses
  o050dic, o097dem;

{ TIteradorPrevisaoBase }

procedure TIteradorPrevisao.AtualizarOrdemCompra(const iterador: TIterador);
var
  i: Integer;
  x420ocp: T420OCP;
begin
  for i := 0 to pred(iterador.Count) do
  begin
    x420ocp := T420OCP(iterador[i]);
    x420ocp.usu_IdeMdo := F096MDO.USU_ID;
    x420ocp.Update;
  end;
end;

procedure TIteradorPrevisao.Carregar();
var
  xOrdem: string;
  xFornecedor: string;
  xIteradorOrdem: TIteradorOrdem;
  xIteradorFornecedor: TIteradorFornecedor;
begin
  FLista.Clear;
  FListaDespesas.Clear;

  xFornecedor := ' CODFOR IN (SELECT USU_CODFOR FROM USU_T095FIM) ';

  if not(IsNull(FDadosFornecedor)) then
    xFornecedor := xFornecedor + ' AND ' + FDadosFornecedor;

  F095FOR.Init;
  F095FOR.AddToCommand(xFornecedor);
  F095FOR.Open(False);

  F095FOR.First;
  while (F095FOR.Next) do
  begin
    F095FOR.Check := 1;

    xOrdem := EmptyStr;
    xIteradorFornecedor := TIteradorFornecedor.Create;
    xIteradorFornecedor.Assign(F095FOR);

    if not(IsNull(FDadosOrdem)) then
      xOrdem := FDadosOrdem + ' AND E420OCP.SITOCP = 1 '
    else
      xOrdem := FDadosOrdem + ' E420OCP.SITOCP = 1 ';

    xOrdem := xOrdem + Format(' AND E420OCP.CODFOR = %s AND ((E420OCP.USU_IDEMDO = 0) OR (E420OCP.USU_IDEMDO IS NULL))'
    , [IntToStr(F095FOR.CodFor)]);

    F420OCP.Init;
    F420OCP.AddToCommand(xOrdem);
    MontaPeriodo();

    F420OCP.Open(False);

    if not(F420OCP.IsEmpty) then
    begin
      xIteradorFornecedor.Check := 1;
      xIteradorFornecedor.Periodo := F095FIM.USU_PerOrd;
      FLista.Add(xIteradorFornecedor);
    end;

    while (F420OCP.Next) do
    begin
      F420OCP.Check := 1;

      xIteradorOrdem := TIteradorOrdem.Create;
      xIteradorOrdem.Assign(F420OCP);

      F420IPO.Init;
      F420IPO.CodEmp := xIteradorOrdem.CodEmp;
      F420IPO.CodFil := xIteradorOrdem.CodFil;
      F420IPO.NumOcp := xIteradorOrdem.NumOcp;
      F420IPO.Open();

      while (F420IPO.Next) do
        xIteradorOrdem.IteradorProduto.AddByClass(F420IPO);

      xIteradorFornecedor.IteradorOrdemCompra.Add(xIteradorOrdem);
    end;

    F420IPO.ClearFields;
    F420IPO.Close;
    F420OCP.Close;
  end;

  F095FOR.Close;
end;

procedure TIteradorPrevisao.CarregarDespesas(const gerenciador: TGerenciadorDeUnidades);
var
  x096dei: T096DEI;
  x097dem: T097DEM;
  xDespesa: Double;
begin
  FTotalGastos := FTotalGastos + gerenciador.ValorContainer;

  x096dei := T096DEI.Create;
  try
    x096dei.USU_IdeFim := gerenciador.IdentificadorFornecedor;
    x096dei.doForeignKey := True;
    x096dei.Open();

    while (x096dei.Next) do
    begin
      xDespesa := (x096dei.USU_VlrDes * (FGerenciadorDeUnidades.CalcularMoeda(x096dei.USU_CodMoe)));

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

function TIteradorPrevisao.ItemSelecionado: Boolean;
begin
  Result := TIteradorFornecedor(FLista[FPosFornecedor]).IteradorOrdemCompra.Selecionados;
end;

constructor TIteradorPrevisao.Create;
begin
  inherited Create;

  F420OCP := T420OCP.Create;
  F420IPO := T420IPO.Create;
  F095FOR := T095FOR.Create;
  F096MDO := T096MDO.Create;
  F095FIM := T095FIM.Create;

  FLista := TIterador.Create;
  FListaDespesas := TIterador.Create;
  FGerenciadorDeUnidades := TGerenciadorDeUnidades.Create;
end;

destructor TIteradorPrevisao.Destroy;
begin
  FreeAndNil(FLista);
  FreeAndNil(FListaDespesas);
  FreeAndNil(FGerenciadorDeUnidades);

  FreeAndNil(F420OCP);
  FreeAndNil(F420IPO);
  FreeAndNil(F095FOR);
  FreeAndNil(F096MDO);
  FreeAndNil(F095FIM);

  inherited;
end;

function TIteradorPrevisao.Fornecedor(const pos: Integer): TIteradorFornecedor;
begin
  Result := TIteradorFornecedor(FLista[pos]);
  FPosFornecedor := pos;
end;

procedure TIteradorPrevisao.GerarMovimentos(const gerador: TGeradorTitulo);
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

procedure TIteradorPrevisao.GerarTitulo(const iterador: TIterador; const fornecedor: Integer);
var
  xServico: sapiens_Synccom_senior_g5_co_mfi_cpa_titulos;
  xTitulo: Array_Of_titulosGravarTitulosCPInTitulos;
  xEntrada: titulosGravarTitulosCPIn;
  xSaida: titulosGravarTitulosCPOut;
  i: Integer;
  xData: TData;
  xGeradorTitulo: TGeradorTitulo;
begin
  xGeradorTitulo := TGeradorTitulo.Create();
  try
    xServico := Getsapiens_Synccom_senior_g5_co_mfi_cpa_titulos();
    xEntrada := titulosGravarTitulosCPIn.Create;
    xData := TData.Create(0);

    xGeradorTitulo.CodEmp := FLogEmp;
    xGeradorTitulo.CodFil := FLogFil;
    xGeradorTitulo.CodTpt := 'PRV';
    xGeradorTitulo.CodFor := fornecedor;

    i := Length(xTitulo);
    Inc(i);
    SetLength(xTitulo, i);
    xTitulo[pred(i)] := titulosGravarTitulosCPInTitulos.Create;
    xTitulo[pred(i)].codEmp := IntToStr(FLogEmp);
    xTitulo[pred(i)].codFil := IntToStr(FLogFil);
    xTitulo[pred(i)].codFor := IntToStr(fornecedor);
    xTitulo[pred(i)].NumTit := xGeradorTitulo.Gerar;
    xTitulo[pred(i)].codTns := '90535';
    xTitulo[pred(i)].CodTpt := 'PRV';
    xTitulo[pred(i)].vlrOri := FloatToStr(FTotalGastos);

    xTitulo[pred(i)].datEnt := DateToStr(xData.Data);
    xTitulo[pred(i)].datEmi := DateToStr(xData.Data);
    xTitulo[pred(i)].CodPor := '9999';
    xTitulo[pred(i)].codCrt := '99';

    xData.IncDays(30);
    xTitulo[pred(i)].VctOri := DateToStr(xData.Data);
    xTitulo[pred(i)].datPpt := DateToStr(xData.Data);

    xEntrada.titulos := xTitulo;
    xSaida := xServico.GravarTitulosCP('sapiensweb','sapiensweb', 0, xEntrada);

    if (xSaida.tipoRetorno = '1') then
    begin
      GerarMovimentos(xGeradorTitulo);
      AtualizarOrdemCompra(iterador);
    end;
  finally
    FreeAndNil(xGeradorTitulo);
    FreeAndNil(xData);
    FreeAndNil(xEntrada);
    FreeAndNil(xSaida);
  end;
end;

procedure TIteradorPrevisao.MarcarDesmarcarFornecedor(const id: Integer; const check: Byte);
begin
  FPosFornecedor := id;
  T095FOR(TIteradorFornecedor(FLista[id])).Check := check;
end;

procedure TIteradorPrevisao.MarcarDesmarcarOrdem(const id: Integer; const check: Byte);
begin
  T420OCP(TIteradorFornecedor(FLista[FPosFornecedor]).IteradorOrdemCompra[id]).Check := check;
end;

procedure TIteradorPrevisao.MontaPeriodo();
var
  xData: TData;
begin
  F095FIM.Init;
  F095FIM.USU_CodFor := F095FOR.CodFor;
  F095FIM.doForeignKey := True;
  F095FIM.Open();

  if (FDataBase > 1) then
  begin
    xData := TData.Create(FDataBase);
    try
      if AnsiSameText(F095FIM.USU_PerOrd, 'S')  then
      begin
        F420OCP.Between['DatFec'] := xData.PrimeiroDiaSemana;
        F420OCP.Between['DatFec'] := xData.UltimoDiaSemana;
      end;

      if AnsiSameText(F095FIM.USU_PerOrd, 'Q')  then
      begin
        xData.DecDays(7);
        F420OCP.Between['DatFec'] := xData.Data;

        xData.IncDays(14);
        F420OCP.Between['DatFec'] := xData.Data;
      end;

      if AnsiSameText(F095FIM.USU_PerOrd, 'M')  then
      begin
        F420OCP.Between['DatFec'] := xData.PrimeiroDiaMes;
        F420OCP.Between['DatFec'] := xData.UltimoDiaMes;
      end;
    finally
      FreeAndNil(xData);
    end;
  end;
end;

function TIteradorPrevisao.OrdemCompra(const pos: Integer): T420OCP;
begin
  Result := T420OCP(TIteradorFornecedor(FLista[FPosFornecedor]).IteradorOrdemCompra[pos])
end;

procedure TIteradorPrevisao.Processar;
var
  i,j,y: Integer;
  x420ipo: T420IPO;
  xIteradorOrdem: TIteradorOrdem;
  xIteradorFornecedor: TIteradorFornecedor;
begin
  for i := 0 to pred(FLista.Count) do
  begin
    FTotalGastos := 0;
    xIteradorFornecedor := TIteradorFornecedor(FLista[i]);
    FGerenciadorDeUnidades.Carregar(xIteradorFornecedor.CodFor);

    if (xIteradorFornecedor.Check = 1) then
      for j := 0 to pred(xIteradorFornecedor.IteradorOrdemCompra.Count) do
      begin
        if (T420OCP(xIteradorFornecedor.IteradorOrdemCompra[j]).Check = 1) then
        begin
          xIteradorOrdem := TIteradorOrdem(TIteradorFornecedor(xIteradorFornecedor.IteradorOrdemCompra[j]));

          for y := 0 to pred(xIteradorOrdem.IteradorProduto.Count) do
          begin
            x420ipo := T420IPO(xIteradorOrdem.IteradorProduto[y]);
            FGerenciadorDeUnidades.Calcular(x420ipo, xIteradorOrdem.CodMoe);
          end;
        end;
      end;

    if (FGerenciadorDeUnidades.VerificarSobra(xIteradorFornecedor.IteradorOrdemCompra.Count)) then
      FGerenciadorDeUnidades.GerarSobra();

    if (FGerenciadorDeUnidades.GerarTitulo) then
    begin
      CarregarDespesas(FGerenciadorDeUnidades);
      GerarTitulo(xIteradorFornecedor.IteradorOrdemCompra, xIteradorFornecedor.CodFor);
    end;
  end;
end;

function TIteradorPrevisao.Produto(const idOrd, idPro: Integer): T075PRO;
begin
  Result := T075PRO(TIteradorOrdem(TIteradorFornecedor(FLista[FPosFornecedor]).IteradorOrdemCompra[idOrd]).IteradorProduto[idPro]);
end;

function TIteradorPrevisao.QtdFornecedor: Integer;
begin
  Result := FLista.Count;
end;

function TIteradorPrevisao.QtdOrdemCompra: Integer;
begin
  Result := TIteradorFornecedor(FLista[FPosFornecedor]).IteradorOrdemCompra.Count;
end;

function TIteradorPrevisao.QtdProduto(const idOrd: Integer): Integer;
begin
  Result := TIteradorOrdem(TIteradorFornecedor(FLista[FPosFornecedor]).IteradorOrdemCompra[idOrd]).IteradorProduto.Count;
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

{ TGerenciadorDeUnidades }

procedure TGerenciadorDeUnidades.Calcular(const produto: T420IPO; const moeda: string);
var
  x075pro: T075PRO;
begin
  x075pro := T075PRO.Create;
  try
    FMoeda := moeda;

    x075pro.Init;
    x075pro.CodEmp := produto.CodEmp;
    x075pro.CodPro := produto.CodPro;
    x075pro.Open();

    FTotalPeso := (FTotalPeso + (x075pro.PesBru * produto.QtdPed));

    if (CRound(FMedidaControle * 1000, 2) < CRound(FTotalPeso,2)) and (FTotalPeso > CMARGEM_ERRO) then
      AlterarControle(0);

    if (FContainerCompletado) then
    begin
      FTotalPeso := x075pro.PesBru;
      MovimentarContainer();
    end;
  finally
    FreeAndNil(x075pro);
  end;
end;

function TGerenciadorDeUnidades.CalcularMoeda(const moeda: string): Double;
var
  xData: TData;
  i: Integer;
  xIteradorCotacao: TIteradorCotacao;
begin
  i := FListaMoedas.IndexOf(moeda);

  if (i = -1) then
  begin
    xData := TData.Create(Date);
    try
      xData.DecDays(90);

      F031IMO.Init;
      F031IMO.CodMoe := moeda;
      F031IMO.Between['DATMOE'] := xData.Data;
      F031IMO.Between['DATMOE'] := Date;
      F031IMO.FieldForSum := 'VLRCOT';
      F031IMO.FieldForCount := 'CODMOE';
      F031IMO.Select := [ssSum, ssCount];
      F031IMO.Open();

      xIteradorCotacao := TIteradorCotacao.Create;
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
    Result := TIteradorCotacao(FListaMoedas[i]).MedCot;
end;

procedure TGerenciadorDeUnidades.Carregar(const fornecedor: Integer);
var
  x050dic: T050DIC;
  x096lfc: T096LFC;
  xContainer: TContainer;
begin
  FSobra := 0;
  FValor := 0;
  FMedidaControle := 0;
  FMovimento := False;

  x096lfc := T096LFC.Create;
  try
    x050dic := T050DIC.Create;

    x096lfc.USU_CodFor := fornecedor;
    x096lfc.USU_LigCon := 'A';
    x096lfc.PropertyForSelect(['USU_CODFOR', 'USU_LIGCON'], True);
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

      if (FMedidaControle > x050dic.USU_LimCon) or (FMedidaControle = 0) then
      begin
        FMedidaControle := x050dic.USU_LimCon;
        FUltimoContainer := FLista.Count;
        FContainerInicial := FLista.Count;
      end;

      FLista.Add(xContainer);
    end;
  finally
    FreeAndNil(x050dic);
    FreeAndNil(x096lfc);
  end;
end;

constructor TGerenciadorDeUnidades.Create;
begin
  inherited Create;

  FLista := TIterador.Create();
  F031IMO := T031IMO.Create;

  FListaMoedas := TIterador.Create();
  FListaMoedas.indexed := True;
  FListaMoedas.IndexFields(['CodMoe']);
end;

destructor TGerenciadorDeUnidades.Destroy;
begin
  FreeAndNil(FLista);
  FreeAndNil(F031IMO);
  FreeAndNil(FListaMoedas);

  inherited;
end;

procedure TGerenciadorDeUnidades.GerarSobra;
var
  i: Integer;
  xContainer: TContainer;
  xMenorLimite: Double;
  xIdLimite: Integer;

  procedure AlterarLimite(const id: Integer);
  var
    i: Integer;
  begin
    for i := id to pred(FLista.Count) do
    begin
      xContainer := TContainer(FLista[i]);

      if (xMenorLimite > xContainer.CargaMinima) or (xMenorLimite = 0) then
      begin
        xIdLimite := i;
        xMenorLimite := xContainer.CargaMinima;
      end;

      if (xMenorLimite < xContainer.CargaMinima) and (i = FLista.Count) then
      begin
        xIdLimite := i;
        xMenorLimite := xContainer.CargaMinima;
      end;
    end;
  end;

begin
  xIdLimite := 0;
  xMenorLimite := 0;

  if (FTotalPeso > CMARGEM_ERRO) then
  begin
    //AlterarLimite(0);

    for i := 0 to pred(FLista.Count) do
    begin
      xContainer := TContainer(FLista[i]);

      if (FTotalPeso >= (xContainer.CargaMinima * 1000)) and (FTotalPeso <= (xContainer.Limite * 1000)) then
      begin
        FUltimoContainer := i;
        MovimentarContainer;
        Break;
      end;
    end;
  end;
end;

function TGerenciadorDeUnidades.GerarTitulo: Boolean;
begin
  Result := FMovimento;
end;

function TGerenciadorDeUnidades.IdentificadorFornecedor: Integer;
begin
  Result := FIdeFor;
end;

procedure TGerenciadorDeUnidades.MovimentarContainer;
var
  xContainer: TContainer;
begin
  Inc(FSobra);
  FMovimento := True;

  xContainer := TContainer(FLista[FContainerInicial]);
  FMedidaControle := xContainer.Limite; //Coloca para o menor container novamente

  xContainer := TContainer(FLista[FUltimoContainer]); //processa com o ultimo container usado
  FValor := FValor + (xContainer.Valor * CalcularMoeda(FMoeda));
end;

function TGerenciadorDeUnidades.ValorContainer: Double;
begin
  if not(FContainerCompletado) then
    FValor := FValor + TContainer(FLista[FUltimoContainer]).Valor; //podemos ter 2 containers e um estar quase cheio

  Result := FValor;
end;

function TGerenciadorDeUnidades.VerificarSobra(
  const quantidade: Integer): Boolean;
begin
  Result := (quantidade > FSobra);
end;

function TGerenciadorDeUnidades.AlterarControle(const id: Integer): Boolean;
var
  xContainer: TContainer;
begin
  Result := False;
  FContainerCompletado := True;

  if (id < FLista.Count) then
  begin
    xContainer := TContainer(FLista[id]);

    if (FMedidaControle < xContainer.Limite) then
    begin
      FMedidaControle := xContainer.Limite;
      FContainerCompletado := False;
      FUltimoContainer := id;

      if ((FMedidaControle * 1000) <= FTotalPeso) then
      begin
        if (AlterarControle(id + 1)) then
          Exit;
      end
      else
        Result := True;
    end
    else
      AlterarControle(id + 1);
  end;

  //Quantidade maior que qualquer container
  if (id = FLista.Count) then
  begin
    FTotalPeso := FTotalPeso - (FMedidaControle * 1000);

    //Movimenta para o maior achado
    MovimentarContainer;

    if ((FMedidaControle * 1000) <= FTotalPeso) then
      AlterarControle(0);

    if (FTotalPeso <= CMARGEM_ERRO) then
      FContainerCompletado := False;
  end;
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
