unit o096ger;

interface

uses
  System.Classes, oBase, System.SysUtils, System.Contnrs, o096ite,
  o095for, oGeral, o096dei, o096lfc, o095fim, o420ocp, o420ipo, webserviceContasPagar,
  o075pro, o096mto, o031imo, o050dic, o097dem, o501tcp, o097gfi, o501pfi;

type

  TCotacao = class(T031IMO)
  private
    FMedCot: Double;
  public
    property MedCot: Double read FMedCot write FMedCot;
  end;

  TIteradorParametros = class(TIterador)
  private
    procedure Carregar();
    function GetParametro(index: Integer): T501PFI;
  public
    constructor Create;
    destructor Destroy; override;

    property Parametro[index: Integer]: T501PFI read GetParametro;
  end;

  TBase = class(T501TCP)
  private
    FListaMoedas: TIterador;
    FCalcularGrupo: Boolean;
    FImposto: Boolean;
    FTitulo: Boolean;
    F031IMO: T031IMO;
    FData: TDate;
    F501PFI: T501PFI;

    function GetParametros: T501PFI;
    procedure SetParametros(const Value: T501PFI);
    procedure IncluirTitulo(const criaTituloCP: TGeradorTitulo; const fornecedor: TIteradorFornecedor = nil); virtual;
  public
    constructor Create();
    destructor Destroy(); override;

    function DataPrevisao: TDate;
    function CalcularMoeda(const moeda: string): Double;

    procedure AtribuirParametros(); virtual; abstract;
    procedure AlterarData(const dias: Integer);

    property Data: TDate read FData write FData;
    property Titulo: Boolean read FTitulo write FTitulo;
    property Imposto: Boolean read FImposto write FImposto;
    property Parametros: T501PFI read GetParametros write SetParametros;
    property CalcularGrupo: Boolean read FCalcularGrupo write FCalcularGrupo;
  end;

  TGerenciardorTitulo = class(TBase)
  private
    FVlrFin: Double;

    function GetVlrFin: Double;
    procedure SetVlrFin(const Value: Double);
    procedure IncluirTitulo(const criaTituloCP: TGeradorTitulo; const fornecedor: TIteradorFornecedor = nil); override;
  public
    procedure IncluirProduto(const produto: T420IPO; const ordem: T420OCP);
    procedure AtribuirParametros(); override;

    property VlrFin: Double read GetVlrFin write SetVlrFin;
  end;

  TGeradorImposto = class(TBase)
  private
    FVlrImp: Double;

    function GetVlrImp: Double;
    procedure SetVlrImp(const Value: Double);
    procedure IncluirTitulo(const criaTituloCP: TGeradorTitulo; const fornecedor: TIteradorFornecedor = nil); override;
  public
    procedure AtribuirParametros(); override;
    procedure IncluirProduto(const produto: T420IPO; const ordem: T420OCP; const fornecedor: TIteradorFornecedor);

    property VlrImp: Double read GetVlrImp write SetVlrImp;
  end;

  TGerenciadorDespesas = class(TBase)
  private
    FVlrDes: Double;
    FListaGrupos: TIterador;
    FListaFornecedores: TIterador;

    function GetVlrDes: Double;
    procedure SetVlrDes(const Value: Double);
    procedure IncluirTitulo(const criaTituloCP: TGeradorTitulo; const fornecedor: TIteradorFornecedor = nil); override;
  public
    constructor Create();
    destructor Destroy(); override;

    procedure AtribuirParametros(); override;
    procedure Carregar(const fornecedor: Integer; const grupo: string = '');
    procedure IncluirProduto(const imposto: Double; const produto: T420IPO; const ordem: T420OCP; const grupo: string = '');

    property VlrDes: Double read GetVlrDes write SetVlrDes;
  end;

  TGerenciador = class(TIterador)
  private
    FErro: string;
    FListaTitulos: TIterador;
    FGeradorTitulo: TGeradorTitulo;
    FExcluirTitulo: TExcluirTitulo;
    FGerenciadorImposto: TGeradorImposto;
    FIteradorParametros: TIteradorParametros;
    FGerenciardorTitulo: TGerenciardorTitulo;
    FGerenciadorDespesas: TGerenciadorDespesas;

    function GetDespesas: TGerenciadorDespesas;
    function GetTitulo: TGerenciardorTitulo;
    function GetImposto: TGeradorImposto;

    procedure AdicionarTitulos();
    procedure AtualizarOrdemCompra();
  public
    constructor Create();
    destructor Destroy; override;

    function Erro: string;
    function Processado: Boolean;

    procedure Init();
    procedure Executar();
    procedure Add(const ordem: T420OCP); overload;
    procedure TituloImposto(const fornecedor: TIteradorFornecedor);
    procedure TituloDespesas(const fornecedor: TIteradorFornecedor);
    procedure TituloFornecedor(const fornecedor: TIteradorFornecedor);

    property GerenciarImposto: TGeradorImposto read GetImposto;
    property GerenciarTitulo: TGerenciardorTitulo read GetTitulo;
    property GerenciarDespesas: TGerenciadorDespesas read GetDespesas;
  end;

implementation

{ TBase }

procedure TBase.AlterarData(const dias: Integer);
var
  xDia: TData;
begin
  xDia := TData.Create(FData);
  xDia.IncDays(dias);
  FData := xDia.Data;
end;

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

constructor TBase.Create();
begin
  inherited Create;

  F501PFI := T501PFI.Create;
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
  FreeAndNil(F501PFI);
  FreeAndNil(F031IMO);
  FreeAndNil(FListaMoedas);

  inherited;
end;

function TBase.GetParametros: T501PFI;
begin
  Result := F501PFI;
end;

procedure TBase.IncluirTitulo(const criaTituloCP: TGeradorTitulo;
  const fornecedor: TIteradorFornecedor);
begin
  AtribuirParametros();

  criaTituloCP.CodEmp := FLogEmp;
  criaTituloCP.CodFil := FLogFil;
  criaTituloCP.CodFor := CodFor;
  criaTituloCP.CodCrt := CodCrt;
  criaTituloCP.CodPor := CodPor;
  criaTituloCP.CodTpt := CodTpt;
  criaTituloCP.CodTns := CodTns;
end;

procedure TBase.SetParametros(const Value: T501PFI);
begin
  F501PFI := Value;
end;

{ TGerenciardorTitulo }

procedure TGerenciardorTitulo.IncluirProduto(const produto: T420IPO;
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

procedure TGerenciardorTitulo.IncluirTitulo(const criaTituloCP: TGeradorTitulo;
  const fornecedor: TIteradorFornecedor);
begin
  inherited;

  AlterarData(fornecedor.DiasRegistro);

  criaTituloCP.VctOri := Self.DataPrevisao;
  criaTituloCP.DatPpt := Self.DataPrevisao;
  criaTituloCP.VlrOri := (VlrFin * (CalcularMoeda(CodMoe)));
  criaTituloCP.DatEmi := Date;
  criaTituloCP.DatEnt := Date;
  criaTituloCP.Titulo := toPrevisto;
  criaTituloCP.ObsTcp := ObsTcp;
  criaTituloCP.Add;
end;

procedure TGerenciardorTitulo.AtribuirParametros();
begin
  CodCrt := parametros.USU_CodCrt;
  CodPor := parametros.USU_CodPor;
  CodTpt := parametros.USU_TptTit;
  CodTns := parametros.USU_TnsTit;
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

procedure TGeradorImposto.IncluirProduto(const produto: T420IPO;
  const ordem: T420OCP; const fornecedor: TIteradorFornecedor);

  procedure SomaBase(const value: Double);
  begin
    if (value > 0) then
      VlrImp := VlrImp + ((value / 100) * produto.VlrBru);
  end;

begin
  if (Data < produto.DatEnt) or (Data < produto.USU_DatCon) then
    Data := iff(produto.USU_DatCon > produto.DatEnt, produto.USU_DatCon, produto.DatEnt);

  if (CodFor = 0) then
    CodFor := ordem.CodFor;

  if IsNull(CodMoe) then
    CodMoe := ordem.CodMoe;

  SomaBase(produto.PerIim);
  SomaBase(produto.PerIpi);
  SomaBase(fornecedor.PerPid + fornecedor.PerCod);
end;

procedure TGeradorImposto.IncluirTitulo(const criaTituloCP: TGeradorTitulo;
  const fornecedor: TIteradorFornecedor);
begin
  inherited;

  AlterarData(fornecedor.DiasRegistro);

  criaTituloCP.CodEmp := FLogEmp;
  criaTituloCP.CodFil := FLogFil;
  criaTituloCP.CodFor := CodFor;
  criaTituloCP.VctOri := Self.DataPrevisao;
  criaTituloCP.DatPpt := Self.DataPrevisao;
  criaTituloCP.VlrOri := (VlrImp * (CalcularMoeda(CodMoe)));
  criaTituloCP.DatEmi := Date;
  criaTituloCP.DatEnt := Date;
  criaTituloCP.Titulo := toPrevisto;
  criaTituloCP.ObsTcp := ObsTcp;
  criaTituloCP.Add;
end;

procedure TGeradorImposto.AtribuirParametros;
begin
  CodCrt := parametros.USU_CodCrt;
  CodPor := parametros.USU_CodPor;
  CodTpt := parametros.USU_TptImp;
  CodTns := parametros.USU_TnsImp;
end;

function TGeradorImposto.GetVlrImp: Double;
begin
  Result := FVlrImp;
end;

procedure TGeradorImposto.SetVlrImp(const Value: Double);
begin
  FVlrImp := Value;
end;

{ TGerenciadorDespesas }

procedure TGerenciadorDespesas.IncluirProduto(const imposto: Double; const produto: T420IPO;
  const ordem: T420OCP; const grupo: string = '');
var
  i: Integer;
  x095fim: T095FIM;
  x097gfi: T097GFI;
begin
  if (Data < produto.DatEnt) or (Data < produto.USU_DatCon) then
    Data := iff(produto.USU_DatCon > produto.DatEnt, produto.USU_DatCon, produto.DatEnt);

  if (CodFor = 0) then
    CodFor := ordem.CodFor;

  if IsNull(CodMoe) then
    CodMoe := ordem.CodMoe;

  if (FListaGrupos.Count > 0) and not(IsNull(grupo)) then
  begin
    x097gfi := T097GFI.Create;
    x097gfi.USU_CodGfi := grupo;

    i := FListaGrupos.IndexOfFields(x097gfi);

    if (i >= 0) then
    begin
      x097gfi := T097GFI(FListaGrupos[i]);
      FVlrDes := FVlrDes + ((x097gfi.USU_PerDes / 100) * (ordem.VlrOri + imposto));
      AlterarData(x097gfi.USU_DiaReg);
    end;
  end;

  if (FListaFornecedores.Count > 0) then
  begin
    x095fim := T095FIM.Create;
    x095fim.USU_CodFor := ordem.CodFor;

    i := FListaFornecedores.IndexOfFields(x095fim);

    if (i >= 0) then
    begin
      x095fim := T095FIM(FListaFornecedores[i]);
      FVlrDes := FVlrDes + ((x095fim.USU_PerDes / 100) * (ordem.VlrOri + imposto));
      AlterarData(x095fim.USU_DiaReg);
    end;
  end;
end;

procedure TGerenciadorDespesas.AtribuirParametros;
begin
  CodCrt := parametros.USU_CodCrt;
  CodPor := parametros.USU_CodPor;
  CodTpt := parametros.USU_TptDes;
  CodTns := parametros.USU_TnsDes;
end;

procedure TGerenciadorDespesas.Carregar(const fornecedor: Integer;
  const grupo: string = '');
var
  x095fim: T095FIM;
  x097gfi: T097GFI;
begin
  x095fim := nil;
  x097gfi := nil;
  try
    if not(IsNull(grupo)) then
    begin
      x097gfi := T097GFI.Create;
      x097gfi.USU_CodGfi := grupo;
      x097gfi.USU_SitReg := 'A';
      x097gfi.PropertyForSelect(['USU_CODGFI','USU_SITREG']);
      x097gfi.Open(False);

      if not(x097gfi.IsEmpty) then
        FListaGrupos.AddByClass(x097gfi);
    end
    else
    begin
      x095fim := T095FIM.Create;
      x095fim.USU_CodFor := fornecedor;
      x095fim.PropertyForSelect(['USU_CODFOR']);
      x095fim.Open(False);

      if not(x095fim.IsEmpty) then
        FListaFornecedores.AddByClass(x095fim);
    end;
  finally
    FreeAndNil(x097gfi);
    FreeAndNil(x095fim);
  end;
end;

constructor TGerenciadorDespesas.Create();
begin
  inherited Create();

  FListaGrupos := TIterador.Create();
  FListaGrupos.indexed := True;
  FListaGrupos.IndexFields(['USU_CODGFI']);

  FListaFornecedores := TIterador.Create();
  FListaFornecedores.indexed := True;
  FListaFornecedores.IndexFields(['USU_CODFOR']);
end;

destructor TGerenciadorDespesas.Destroy;
begin
  FreeAndNil(FListaGrupos);
  FreeAndNil(FListaFornecedores);

  inherited;
end;

procedure TGerenciadorDespesas.IncluirTitulo(const criaTituloCP: TGeradorTitulo;
  const fornecedor: TIteradorFornecedor = nil);
begin
  inherited;

  criaTituloCP.CodEmp := FLogEmp;
  criaTituloCP.CodFil := FLogFil;
  criaTituloCP.CodFor := CodFor;
  criaTituloCP.VctOri := Self.DataPrevisao;
  criaTituloCP.DatPpt := Self.DataPrevisao;
  criaTituloCP.VlrOri := (VlrDes * (CalcularMoeda(CodMoe)));
  criaTituloCP.DatEmi := Date;
  criaTituloCP.DatEnt := Date;
  criaTituloCP.Titulo := toPrevisto;
  criaTituloCP.ObsTcp := ObsTcp;
  criaTituloCP.Add;
end;

function TGerenciadorDespesas.GetVlrDes: Double;
begin
  Result := FVlrDes;
end;

procedure TGerenciadorDespesas.SetVlrDes(const Value: Double);
begin
  FVlrDes := Value;
end;

{ TIteradorParametros }

procedure TIteradorParametros.Carregar;
var
  x501pfi: T501PFI;
begin
  x501pfi := T501PFI.Create;
  try
    x501pfi.Open();

    while (x501pfi.Next) do
      Self.AddByClass(x501pfi);
  finally
    FreeAndNil(x501pfi);
  end;
end;

constructor TIteradorParametros.Create;
begin
  inherited Create;

  Self.indexed := True;
  Self.IndexFields(['USU_CodEmp']);

  Carregar();
end;

destructor TIteradorParametros.Destroy;
begin
  Self.Clear;

  inherited;
end;

function TIteradorParametros.GetParametro(index: Integer): T501PFI;
begin
  Result := T501PFI(Self[Self.IndexOf(IntToStr(index))]);
end;

{ TGerenciador }

procedure TGerenciador.Add(const ordem: T420OCP);
begin
  Self.AddByClass(ordem);
end;

procedure TGerenciador.AdicionarTitulos;
var
  x501tcp: T501TCP;
begin
  x501tcp := T501TCP.Create;
  x501tcp.CodEmp := FGeradorTitulo.CodEmp;
  x501tcp.CodFil := FGeradorTitulo.CodFil;
  x501tcp.CodTpt := FGeradorTitulo.CodTpt;
  x501tcp.CodFor := FGeradorTitulo.CodFor;
  x501tcp.NumTit := FGeradorTitulo.NumTit;
  x501tcp.NumOcp := T420OCP(Self[pred(Self.Count)]).NumOcp;
  FListaTitulos.Add(x501tcp);
end;

procedure TGerenciador.AtualizarOrdemCompra();
var
  x096mto: T096MTO;
  x420ocp: T420OCP;
  x501tcp: T501TCP;
  i: Integer;
begin
  for i := 0 to pred(FListaTitulos.Count) do
  begin
    x501tcp := T501TCP(FListaTitulos[i]);

    x420ocp := T420OCP.Create;
    x420ocp.CodEmp := x501tcp.CodEmp;
    x420ocp.CodFil := x501tcp.CodFil;
    x420ocp.NumOcp := x501tcp.NumOcp;

    x420ocp := T420OCP(Self[Self.IndexOfFields(x420ocp)]);
    x420ocp.USU_TitImp := 'S';
    x420ocp.Update;

    x096mto := T096MTO.Create;
    try
      x096mto.USU_CodEmp := x501tcp.CodEmp;
      x096mto.USU_CodFil := x501tcp.CodFil;
      x096mto.USU_NumTit := x501tcp.NumTit;
      x096mto.USU_CodFor := x501tcp.CodFor;
      x096mto.USU_CodTpt := x501tcp.CodTpt;
      x096mto.USU_EmpOcp := x420ocp.CodEmp;
      x096mto.USU_FilOcp := x420ocp.CodFil;
      x096mto.USU_NumOcp := x420ocp.NumOcp;
      x096mto.Insert;
    finally
      FreeAndNil(x096mto);
    end;
  end;
end;

constructor TGerenciador.Create;
begin
  inherited Create();

  FGerenciadorImposto := TGeradorImposto.Create;
  FGerenciardorTitulo := TGerenciardorTitulo.Create;
  FGerenciadorDespesas := TGerenciadorDespesas.Create;
  FIteradorParametros := TIteradorParametros.Create;
  FGeradorTitulo := TGeradorTitulo.Create;
  FExcluirTitulo := TExcluirTitulo.Create;
  FListaTitulos := TIterador.Create();

  indexed := True;
  IndexFields(['CodEmp', 'CodFil', 'NumOcp']);
end;

destructor TGerenciador.Destroy;
begin
  FreeAndNil(FListaTitulos);
  FreeAndNil(FGeradorTitulo);
  FreeAndNil(FExcluirTitulo);
  FreeAndNil(FIteradorParametros);
  FreeAndNil(FGerenciadorImposto);
  FreeAndNil(FGerenciardorTitulo);
  FreeAndNil(FGerenciadorDespesas);

  inherited;
end;

function TGerenciador.Erro: string;
begin
  Result := FErro;
end;

procedure TGerenciador.Executar;
var
  xTitulosOut: Array_Of_titulosGravarTitulosCPOutResultado;
  i: Integer;
begin
  xTitulosOut := FGeradorTitulo.Executar();

  if not(FGeradorTitulo.Processado) then
  begin
    for i := 0 to High(xTitulosOut) do
    begin
      if not(AnsiSameText(xTitulosOut[i].resultado, 'Ok')) then
        FErro := FErro + Format('Erro ao gerar o título: %s, motivo: %s', [xTitulosOut[i].numTit, xTitulosOut[i].resultado])
      else
      begin
        FExcluirTitulo.CodEmp := xTitulosOut[i].codEmp;
        FExcluirTitulo.CodFil := StrToInt(xTitulosOut[i].codFil);
        FExcluirTitulo.CodFor := StrToInt(xTitulosOut[i].codFor);
        FExcluirTitulo.CodTpt := xTitulosOut[i].codTpt;
        FExcluirTitulo.NumTit := xTitulosOut[i].numTit;
        FExcluirTitulo.Add;
      end;
    end;

    FExcluirTitulo.Executar;
  end
  else
    AtualizarOrdemCompra;
end;

function TGerenciador.GetDespesas: TGerenciadorDespesas;
begin
  Result := FGerenciadorDespesas;
end;

function TGerenciador.GetImposto: TGeradorImposto;
begin
  Result := FGerenciadorImposto;
end;

function TGerenciador.GetTitulo: TGerenciardorTitulo;
begin
  Result := FGerenciardorTitulo;
end;

procedure TGerenciador.Init;
begin
  FGeradorTitulo.Init;
  FErro := EmptyStr;
end;

function TGerenciador.Processado: Boolean;
begin
  Result := FGeradorTitulo.Processado;
end;

procedure TGerenciador.TituloDespesas(const fornecedor: TIteradorFornecedor);
var
  i: Integer;
begin
  i := FIteradorParametros.IndexOf(IntToStr(FLogEmp));

  if (i > -1) then
  begin
    FGerenciadorDespesas.Parametros := T501PFI(FIteradorParametros[i]);
    FGerenciadorDespesas.IncluirTitulo(FGeradorTitulo, fornecedor);

    Self.AdicionarTitulos();
  end;
end;

procedure TGerenciador.TituloFornecedor(const fornecedor: TIteradorFornecedor);
var
  i: Integer;
begin
  i := FIteradorParametros.IndexOf(IntToStr(FLogEmp));

  if (i > -1) then
  begin
    FGerenciardorTitulo.Parametros := T501PFI(FIteradorParametros[i]);
    FGerenciardorTitulo.IncluirTitulo(FGeradorTitulo, fornecedor);

    Self.AdicionarTitulos();
  end;
end;

procedure TGerenciador.TituloImposto(const fornecedor: TIteradorFornecedor);
var
  i: Integer;
begin
  i := FIteradorParametros.IndexOf(IntToStr(FLogEmp));

  if (i > -1) then
  begin
    FGerenciadorImposto.Parametros := T501PFI(FIteradorParametros[i]);
    FGerenciadorImposto.IncluirTitulo(FGeradorTitulo, fornecedor);

    Self.AdicionarTitulos();
  end;
end;

end.
