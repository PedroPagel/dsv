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
    FProcessoAutomatico: Boolean;

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
    procedure CarregarDatasNota(const produto: T420IPO; const tituloFornecedor: Boolean = False);

    property Data: TDate read FData write FData;
    property Titulo: Boolean read FTitulo write FTitulo;
    property Imposto: Boolean read FImposto write FImposto;
    property Parametros: T501PFI read GetParametros write SetParametros;
    property CalcularGrupo: Boolean read FCalcularGrupo write FCalcularGrupo;
    property ProcessoAutomatico: Boolean read FProcessoAutomatico write FProcessoAutomatico;
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
    FProcessoAutomatico: Boolean;

    function GetDespesas: TGerenciadorDespesas;
    function GetTitulo: TGerenciardorTitulo;
    function GetImposto: TGeradorImposto;

    procedure AdicionarTitulos();
    procedure AtualizarOrdemCompra();
    procedure SetProcessoAutomatico(const Value: Boolean);
  public
    constructor Create();
    destructor Destroy; override;

    function Erro: string;
    function Processado: Boolean;

    procedure Init();
    procedure Executar();
    procedure Add(const ordem: T420OCP); overload;
    procedure AdicionarExclusao(const ordem: T420OCP);
    procedure ExcluirPrevisoes();
    procedure VerificarNotas();
    procedure TituloImposto(const fornecedor: TIteradorFornecedor);
    procedure TituloDespesas(const fornecedor: TIteradorFornecedor);
    procedure TituloFornecedor(const fornecedor: TIteradorFornecedor);

    property GerenciarImposto: TGeradorImposto read GetImposto;
    property GerenciarTitulo: TGerenciardorTitulo read GetTitulo;
    property GerenciarDespesas: TGerenciadorDespesas read GetDespesas;
    property ProcessoAutomatico: Boolean read FProcessoAutomatico write SetProcessoAutomatico;
  end;

implementation

uses
  oQuery, Data.DB;

{ TBase }

procedure TBase.AlterarData(const dias: Integer);
var
  xDia: TData;
begin
  xDia := TData.Create(FData);
  try
    xDia.IncDays(dias);
    FData := xDia.Data;
  finally
    FreeAndNil(xDia);
  end;
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

      if (F031IMO.VlrCot > 0) then
      begin
        xIteradorCotacao.MedCot := (F031IMO.VlrCot / F031IMO.CountField);
        FListaMoedas.Add(xIteradorCotacao);
      end;

      Result := xIteradorCotacao.MedCot;
    finally
      F031IMO.Close;
      FreeAndNil(xData);
    end;
  end
  else
    Result := TCotacao(FListaMoedas[i]).MedCot;
end;

procedure TBase.CarregarDatasNota(const produto: T420IPO; const tituloFornecedor: Boolean = False);
var
  xNota: THQuery;
begin
  xNota := THQuery.CreatePersonalizado();
  try
    xNota.Command := 'SELECT E440NFC.USU_DATFAT, E440NFC.USU_DATREC FROM E440NFC, E440IPC '+
                    'WHERE '+
                    'E440IPC.CODEMP = :CODEMP AND '+
                    'E440IPC.FILOCP = :CODFIL AND '+
                    'E440IPC.NUMOCP = :NUMOCP AND '+
                    'E440IPC.SEQIPO = :SEQIPO AND '+
                    'E440IPC.CODEMP = E440NFC.CODEMP AND '+
                    'E440IPC.CODFIL = E440NFC.CODFIL AND '+
                    'E440IPC.CODFOR = E440NFC.CODFOR AND '+
                    'E440IPC.NUMNFC = E440NFC.NUMNFC AND '+
                    'E440IPC.CODSNF = E440NFC.CODSNF ';

    xNota.ParamByName('CODEMP').Value := produto.CodEmp;
    xNota.ParamByName('CODFIL').Value := produto.CodFil;
    xNota.ParamByName('NUMOCP').Value := produto.NumOcp;
    xNota.ParamByName('SEQIPO').Value := produto.SeqIpo;
    xNota.Open;
    if not(xNota.IsEmpty) then
    begin
      if ((Data < xNota.FindField('USU_DATFAT').AsDateTime) or (Data < xNota.FindField('USU_DATREC').AsDateTime)) then
        if (tituloFornecedor) then
          Data := xNota.FindField('USU_DATFAT').AsDateTime
        else
          Data := xNota.FindField('USU_DATREC').AsDateTime;
    end;

    if (Data = 0) or (Data = StrToDate('31/12/1900')) then
    begin
      Data := Now;
      AlterarData(30);
    end;
  finally
    FreeAndNil(xNota);
  end;
end;

constructor TBase.Create();
begin
  inherited Create;

  F501PFI := T501PFI.Create;
  F031IMO := T031IMO.Create;

  FProcessoAutomatico := False;
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
  if ((Data < produto.DatEnt) or (Data < produto.USU_DatCon)) and not(FProcessoAutomatico) then
    Data := iff(produto.USU_DatCon > produto.DatEnt, produto.USU_DatCon, produto.DatEnt)
  else
  if (FProcessoAutomatico) then
    CarregarDatasNota(produto, True);

  if (CodFor = 0) then
    CodFor := ordem.CodFor;

  if IsNull(CodMoe) then
    CodMoe := ordem.CodMoe;

  VlrFin := VlrFin + (produto.QtdPed * produto.PreUni);
end;

procedure TGerenciardorTitulo.IncluirTitulo(const criaTituloCP: TGeradorTitulo;
  const fornecedor: TIteradorFornecedor);
begin
  inherited;

  AlterarData(iff(ProcessoAutomatico, 1, fornecedor.DiasRegistro));

  criaTituloCP.CodFor := fornecedor.CodFor;
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
  if ((Data < produto.DatEnt) or (Data < produto.USU_DatCon)) and not(FProcessoAutomatico) then
    Data := iff(produto.USU_DatCon > produto.DatEnt, produto.USU_DatCon, produto.DatEnt)
  else
  if (FProcessoAutomatico) then
    CarregarDatasNota(produto);

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
  criaTituloCP.CodFor := fornecedor.CodFor;
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
  if ((Data < produto.DatEnt) or (Data < produto.USU_DatCon)) and not(FProcessoAutomatico) then
    Data := iff(produto.USU_DatCon > produto.DatEnt, produto.USU_DatCon, produto.DatEnt)
  else
  if (FProcessoAutomatico) then
    CarregarDatasNota(produto);

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
  criaTituloCP.CodFor := fornecedor.CodFor;
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

procedure TGerenciador.AdicionarExclusao(const ordem: T420OCP);
var
  x096mto: T096MTO;
  xDelete: T096MTO;
begin
  xDelete := nil;
  x096mto := T096MTO.Create;
  try
    x096mto.USU_EmpOcp := ordem.CodEmp;
    x096mto.USU_FilOcp := ordem.CodFil;
    x096mto.USU_NumOcp := ordem.NumOcp;
    x096mto.doForeignKey := True;
    x096mto.Open();

    while x096mto.Next do
    begin
      FExcluirTitulo.CodEmp := x096mto.USU_CodEmp;
      FExcluirTitulo.CodFil := x096mto.USU_CodFil;
      FExcluirTitulo.CodFor := x096mto.USU_CodFor;
      FExcluirTitulo.NumTit := x096mto.USU_NumTit;
      FExcluirTitulo.CodTpt := x096mto.USU_CodTpt;
      FExcluirTitulo.Add;

      xDelete := T096MTO.Create;
      xDelete.Assign(x096mto);
      xDelete.Delete;
    end;
  finally
    FreeAndNil(x096mto);
    FreeAndNil(xDelete);
  end;
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
  xUpdate: T501TCP;
  i: Integer;
begin
  for i := 0 to pred(FListaTitulos.Count) do
  begin
    x501tcp := T501TCP(FListaTitulos[i]);

    if not(ProcessoAutomatico) then
    begin
      x420ocp := T420OCP.Create;
      x420ocp.CodEmp := x501tcp.CodEmp;
      x420ocp.CodFil := x501tcp.CodFil;
      x420ocp.NumOcp := x501tcp.NumOcp;

      x420ocp := T420OCP(Self[Self.IndexOfFields(x420ocp)]);
      x420ocp.USU_TitImp := 'S';
      x420ocp.Update;
    end;

    x096mto := T096MTO.Create;
    try
      x096mto.USU_CodEmp := x501tcp.CodEmp;
      x096mto.USU_CodFil := x501tcp.CodFil;
      x096mto.USU_NumTit := x501tcp.NumTit;
      x096mto.USU_CodFor := x501tcp.CodFor;
      x096mto.USU_CodTpt := x501tcp.CodTpt;
      x096mto.USU_EmpOcp := x501tcp.CodEmp;
      x096mto.USU_FilOcp := x501tcp.CodFil;
      x096mto.USU_NumOcp := x501tcp.NumOcp;
      x096mto.Insert;

      xUpdate := T501TCP.Create;
      xUpdate.Assign(x501tcp);
      xUpdate.Open();

      if not(xUpdate.IsEmpty) then
      begin
        xUpdate.ObsTcp := Format('Título de Previsão, criado pela ordem de compra: %d, empresa: %d e filial: %d',
          [x501tcp.NumOcp, x501tcp.CodEmp, x501tcp.CodFil]);
        xUpdate.Update;
      end;
    finally
      FreeAndNil(x096mto);
      FreeAndNil(xUpdate);
    end;
  end;

  if (ProcessoAutomatico) then
  begin
    for i := 0 to pred(Self.Count) do
    begin
      x420ocp := T420OCP(Self[i]);
      x420ocp.USU_TitImp := 'S';
      x420ocp.Update;
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

procedure TGerenciador.ExcluirPrevisoes;
begin
  FExcluirTitulo.Executar;
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

procedure TGerenciador.SetProcessoAutomatico(const Value: Boolean);
begin
  FProcessoAutomatico := Value;

  FGerenciadorImposto.ProcessoAutomatico := Value;
  FGerenciardorTitulo.ProcessoAutomatico := Value;
  FGerenciadorDespesas.ProcessoAutomatico := Value;
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

procedure TGerenciador.VerificarNotas;
var
  x096mto: T096MTO;
  xDelete: T096MTO;
begin
  xDelete := nil;
  x096mto := T096MTO.Create;
  try
    x096mto.AddToCommand('EXISTS(SELECT 1 FROM E420OCP, E440IPC, E440NFC '+
                         'WHERE '+
                         'E440IPC.CODEMP = E420OCP.CODEMP AND '+
                         'E440IPC.CODFIL = E420OCP.CODFIL AND '+
                         'E440IPC.USU_OCPFAT = E420OCP.NUMOCP AND '+
                         'E440NFC.CODEMP = E440IPC.CODEMP AND '+
                         'E440NFC.CODFIL = E440IPC.CODFIL AND '+
                         'E440NFC.CODFOR = E440IPC.CODFOR AND '+
                         'E440NFC.NUMNFC = E440IPC.NUMNFC AND '+
                         'E440NFC.CODSNF = E440IPC.CODSNF AND '+
                         'E440NFC.CODSNF = ''55'' AND '+
                         'E440NFC.DATGER = TO_DATE('''+ DateToStr(Now) +''',''DD/MM/YYYY'') AND '+
                         'USU_T096MTO.USU_EMPOCP = E420OCP.CODEMP AND '+
                         'USU_T096MTO.USU_FILOCP = E420OCP.CODFIL AND '+
                         'USU_T096MTO.USU_NUMOCP = E420OCP.NUMOCP)');

    x096mto.Open(False);
    while (x096mto.Next) do
    begin
      FExcluirTitulo.CodEmp := x096mto.USU_CodEmp;
      FExcluirTitulo.CodFil := x096mto.USU_CodFil;
      FExcluirTitulo.CodFor := x096mto.USU_CodFor;
      FExcluirTitulo.NumTit := x096mto.USU_NumTit;
      FExcluirTitulo.CodTpt := x096mto.USU_CodTpt;
      FExcluirTitulo.Add;

      xDelete := T096MTO.Create;
      xDelete.Assign(x096mto);
      xDelete.Delete;
    end;
  finally
    FreeAndNil(x096mto);
    FreeAndNil(xDelete);
  end;

  FExcluirTitulo.Executar;
end;

end.
