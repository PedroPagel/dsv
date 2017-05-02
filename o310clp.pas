unit o310clp;

interface

uses
  System.Classes, oTitulo, oBase, System.SysUtils, Data.Db, System.Contnrs,
  oTabelas;

type
  tSelecaoCheck = (scSemDados, scLigacao, scPossuiLigacao, scApenasRemover, scNaoLigado, scSomaNaoLigado);

  TControle = class(T160CLP)
  private
    FTitulo: TIterador;
    FAjuste: TIterador;
    FLigacao: TIterador;
    FTotOri: Extended;
    FTotRea: Extended;

    function GetTitulo: TIterador;
    procedure SetTitulo(const Value: TIterador);
    function GetAjuste: TIterador;
    procedure SetAjuste(const Value: TIterador);
    function GetTotOri: Extended;
    function GetTotRea: Extended;
    procedure SetToRea(const Value: Extended);
    procedure SetTotOri(const Value: Extended);
    function GetLigacao: TIterador;
    procedure SetLigacao(const Value: TIterador);
  public
    constructor Create();
    destructor Destroy(); override;

    procedure InserirContrato(const pNumCtr: Integer);
    procedure RemoverContrato();
    procedure AdicionarTitulosReajuste(const pT090IND: T090IND);
    procedure AdicionarTitulosLigados();

    property Titulo: TIterador read GetTitulo write SetTitulo;
    property Ligacao: TIterador read GetLigacao write SetLigacao;
    property Ajuste: TIterador read GetAjuste write SetAjuste;
    property TotOri: Extended read GetTotOri write SetTotOri;
    property TotRea: Extended read GetTotRea write SetToRea;
  end;

  TTituloControle = class(T301TCR)
  private
    FIndNov: Double;
    FIndRea: Double;
    FIndFin: string;
    FVlrIni: Double;
    FOLD_IndNov: Double;

    function GetIndNov: Double;
    function GetIndRea: Double;
    procedure SetIndNov(const Value: Double);
    procedure SetIndRea(const Value: Double);
    function GetIndFin: string;
    procedure SetIndFin(const Value: string);
    function GetVlrIni: Double;
    procedure SetVlrIni(const Value: Double);
    function GetOLD_IndNov: Double;
    procedure SetOLD_IndNov(const Value: Double);
  public
    constructor Create(const pT090IND: T090IND; const pVlrOri: Double);
    destructor Destroy(); override;

    property IndFin: string read GetIndFin write SetIndFin;
    property IndNov: Double read GetIndNov write SetIndNov;
    property IndRea: Double read GetIndRea write SetIndRea;
    property VlrIni: Double read GetVlrIni write SetVlrIni;
    property OLD_IndNov: Double read GetOLD_IndNov write SetOLD_IndNov;
  end;

  TIteradorControle = class(TIterador)
  private
    F090IND: T090IND;
    FTotOri: Extended;
    FTotRea: Extended;
    FIndexCtr: Integer;
    FIndexTit: Integer;
    FValorIndice: Double;
    FRemoverCalculos: Boolean;
    FTitulo: tTitulo;
    FFiltraContrato: string;
    FFiltraTitulo: string;
    FListaDespesas: TIterador;

    procedure InserirContrato();
    procedure RemoverContrato();
    function GetTitulo: tTitulo;
    procedure SetTitulo(const Value: tTitulo);
    procedure AdicionarTitulosDespesas();
    function GetDespesas: TIterador;
    procedure SetDespesas(const Value: TIterador);
    procedure MovimentarTitulo(const pTitulo: T301TCR; const pID: Integer);
  public
    constructor Create();
    destructor Destroy(); override;

    function SelecaoContrato(): tSelecaoCheck;
    function SelecaoDespesa(): tSelecaoCheck;

    procedure Limpar();
    procedure Carregar();
    procedure Processar();
    procedure GerarLigacao();
    procedure RemoverLigacao();
    procedure MarcarDesmarcarLigacoes(const pValue: Byte); overload;
    procedure MarcarDesmarcarLigacoes(const pValue: Byte; const pPos: Integer); overload;
    procedure MarcarDesmarcarDespesas(const pValue: Byte);
    procedure MarcarDesmarcarReajuste(const pReajusteIterado: TControle; const pValue: Byte);
    procedure MarcarDesmarcar(const pValue: Byte; const pLigacoes: Boolean = False);
    procedure CalcularAjustes();

    function TotalOriginal: Extended;
    function TotalAjustado: Extended;

    property FiltraContrato: string write FFiltraContrato;
    property FiltraTitulo: string write FFiltraTitulo;
    property Despesas: TIterador read GetDespesas write SetDespesas;
    property Titulo: tTitulo read GetTitulo write SetTitulo;
    property IndexCtr: Integer read FIndexCtr write FIndexCtr;
    property IndexTit: Integer  read FIndexTit write FIndexTit;
    property RemoverCalculos: Boolean read FRemoverCalculos write FRemoverCalculos;
    property ValorIndice: Double read FValorIndice write FValorIndice;
  end;

  TIteradorBem = class(T670BEM)
  private
    FListaBLG: TIterador; //Bem ligacao

    function GetLista: TIterador;
    procedure SetLista(const Value: TIterador);
  public
    constructor Create();
    destructor Destroy(); override;

    procedure AdicionarBemLigado();
    procedure Processar();

    property Lista: TIterador read GetLista write SetLista;
  end;

  TControladorBem = class
  private
    FCodEmp: Word;
    FCodBem: string;
    FCondicao: string;
    FListaBLG: TIterador; //Bem ligado
    FListaBNL: TIterador; //Bem Nao Ligado

    function GetCodBem: string;
    function GetCodEmp: Word;

    procedure SetCodBem(const Value: string);
    procedure SetCodEmp(const Value: Word);
    function GetLstNaoLigado: TIterador;
    procedure SetLstNaoLigado(const Value: TIterador);
    function GetLstLigado: TIterador;
    procedure SetLstLigado(const Value: TIterador);
  public
    constructor Create();
    destructor Destroy(); override;

    function SelecaoBem(): tSelecaoCheck;
    function SelecaoNaoLigado(): tSelecaoCheck;

    procedure Limpar();
    procedure Mostrar();
    procedure Processar();
    procedure GerarLigacao();
    procedure RemoverLigacao();
    procedure MarcarDesmarcarNaoLigados(const pValue: Byte);
    procedure MarcarDesmarcarLigacoes(const pValue: Byte); overload;
    procedure MarcarDesmarcarLigacoes(const pValue: Byte; const pPos: Integer); overload;

    property CodEmp: Word read GetCodEmp write SetCodEmp;
    property CodBem: string read GetCodBem write SetCodBem;
    property Condicao: string write FCondicao;
    property LstNaoLigado: TIterador read GetLstNaoLigado write SetLstNaoLigado;
    property LstLigado: TIterador  read GetLstLigado write SetLstLigado;
  end;

  function SituacaoTitulo(const pSitTit: string): Boolean;

implementation

uses
  wsCRAlterar;

function SituacaoTitulo(const pSitTit: string): Boolean;
begin
  Result := not(AnsiSameText(UpperCase(Copy(pSitTit, 0, 1)), 'L'));
end;

{ TControle }

procedure TControle.AdicionarTitulosLigados();
var
  xQueryTitulo: T501TCP;
begin
  xQueryTitulo := T501TCP.Create();
  try
    xQueryTitulo.USU_IDCLP := Self.USU_ID;
    xQueryTitulo.DefinirSelecaoPropriedade(['USU_IDCLP'], True);
    xQueryTitulo.Executar(estSelectLoop);

    while (xQueryTitulo.Proximo) do
      FTitulo.IterarAdd(xQueryTitulo, T501TCP.Create);
  finally
    FreeAndNil(xQueryTitulo);
  end;
end;

procedure TControle.AdicionarTitulosReajuste(const pT090IND: T090IND);
var
  xQueryTitulo: T301TCR;
begin
  xQueryTitulo := T301TCR.Create();
  try
    xQueryTitulo.DesativarUsoParametro;
    xQueryTitulo.DefinirTabelasExtras(['E160CTR']);
    xQueryTitulo.DefinirSelecao(['E160CTR.CODEMP', 'E160CTR.CODFIL','E160CTR.NUMCTR',
                                 'E301TCR.CODEMP','E301TCR.CODFIL', 'E301TCR.NUMCTR','E301TCR.CODTPT','E301TCR.CODCLI'],
                                 [IntToStr(USU_CodEmp), IntToStr(USU_CodFil),IntToStr(USU_NumCtr),
                                 'E160CTR.CODEMP','E160CTR.CODFIL','E160CTR.NUMCTR','E301TCR.CODTPT','E160CTR.CODCLI'], True);
    xQueryTitulo.Executar(estSelectLoop);

    while (xQueryTitulo.Proximo) do
    begin
      FTitulo.IterarAdd(xQueryTitulo, T301TCR.Create());

      if (SituacaoTitulo(xQueryTitulo.SitTit)) and (xQueryTitulo.VlrOri = xQueryTitulo.VlrAbe) then
        FAjuste.IterarAdd(xQueryTitulo, TTituloControle.Create(pT090IND, xQueryTitulo.VlrOri));
    end;
  finally
    FreeAndNil(xQueryTitulo);
  end;
end;

constructor TControle.Create;
begin
  inherited Create();

  DefinirCampoNegado(['ID','Check','Titulo', 'Ajuste','TotOri','TotRea', 'Ligacao']);
  FTitulo := TIterador.Create;
  FAjuste := TIterador.Create;
  FLigacao := TIterador.Create;
end;

destructor TControle.Destroy;
begin
  FTitulo.Clear;
  FAjuste.Clear;
  FLigacao.Clear;

  FreeAndNil(FAjuste);
  FreeAndNil(FTitulo);
  FreeAndNil(FLigacao);

  inherited;
end;

function TControle.GetAjuste: TIterador;
begin
  Result := FAjuste;
end;

function TControle.GetLigacao: TIterador;
begin
  Result := FLigacao;
end;

function TControle.GetTitulo: TIterador;
begin
  Result := FTitulo;
end;

function TControle.GetTotOri: Extended;
begin
  Result := FTotOri;
end;

function TControle.GetTotRea: Extended;
begin
  Result := FTotRea;
end;

procedure TControle.InserirContrato(const pNumCtr: Integer);
var
  i: Integer;
  x301tcr: T301TCR;
begin
  for i := 0 to pred(FAjuste.Count) do
  begin
    x301tcr := T301TCR(FAjuste[i]);

    if (x301tcr.Check = 1) then
    begin
      x301tcr.NumCtr := pNumCtr;
      x301tcr.DefinirSelecaoPropriedade(['CODEMP','CODFIL','NUMTIT','CODTPT'], True);
      x301tcr.DefinirCampoUpdate(['NUMCTR']);
      x301tcr.Executar(estUpdate)
    end;
  end;
end;

procedure TControle.RemoverContrato;
var
  i: Integer;
  x301tcr: T301TCR;
begin
  for i := 0 to pred(FAjuste.Count) do
  begin
    x301tcr := T301TCR(FAjuste[i]);

    if (x301tcr.Check = 1) then
    begin
      x301tcr.NumCtr := 0;
      x301tcr.DefinirSelecaoPropriedade(['CODEMP','CODFIL','NUMTIT','CODTPT'], True);
      x301tcr.DefinirCampoUpdate(['NUMCTR']);
      x301tcr.Executar(estUpdate)
    end;
  end;
end;

procedure TControle.SetAjuste(const Value: TIterador);
begin
  FAjuste := Value;
end;

procedure TControle.SetLigacao(const Value: TIterador);
begin
  FLigacao := Value;
end;

procedure TControle.SetTitulo(const Value: TIterador);
begin
  FTitulo := Value;
end;

procedure TControle.SetToRea(const Value: Extended);
begin
  FTotRea := Value;
end;

procedure TControle.SetTotOri(const Value: Extended);
begin
  FTotOri := Value;
end;

{ TIteradorControle }

procedure TIteradorControle.AdicionarTitulosDespesas();
var
  xQueryTitulo: T501TCP;
begin
  xQueryTitulo := T501TCP.Create();
  try
    xQueryTitulo.DesativarUsoParametro;
    xQueryTitulo.AdicionarCondicao(FFiltraTitulo + 'E501TCP.CODTPT IN (''64'',''39'') AND E501TCP.SITTIT LIKE ''A%'' AND (USU_IDCLP = 0)');
    xQueryTitulo.Executar(estSelectLoop);

    while (xQueryTitulo.Proximo) do
      FListaDespesas.IterarAdd(xQueryTitulo, T501TCP.Create);
  finally
    FreeAndNil(xQueryTitulo);
  end;
end;

procedure TIteradorControle.Carregar();
var
  xQueryReajuste: TControle;
  xControle: TControle;
begin
  xQueryReajuste := TControle.Create();
  try
    xQueryReajuste.DesativarUsoParametro;
    xQueryReajuste.DefinirTabelasExtras(['E160CTR']);
    xQueryReajuste.AdicionarCondicao(FFiltraContrato);
    xQueryReajuste.DefinirSelecao(['E160CTR.CODEMP', 'E160CTR.CODFIL','E160CTR.NUMCTR'],
                                  ['USU_CODEMP','USU_CODFIL','USU_NUMCTR'], True);
    xQueryReajuste.Executar(estSelectLoop);

    while xQueryReajuste.Proximo() do
    begin
      xControle := TControle.Create();
      Self.Iterar(xQueryReajuste, xControle);

      if (FTitulo = tTContasReceber) then
        xControle.AdicionarTitulosReajuste(F090IND)
      else
        xControle.AdicionarTitulosLigados();

      Self.Add(xControle);
    end;

    if (FTitulo = tTContasPagar) then
      Self.AdicionarTitulosDespesas();
  finally
    FreeAndNil(xQueryReajuste);
  end;
end;

constructor TIteradorControle.Create;
begin
  inherited Create();

  F090IND := T090IND.Create('USU_T090IND');
  F090IND.DefinirCampoNegado(['ID']);

  F090IND.USU_CodEmp := FLogEmp;
  F090IND.DefinirSelecaoPropriedade(['USU_CODEMP']);
  F090IND.Executar(estSelect);
  FTitulo := tTContasReceber;
  FListaDespesas := TIterador.Create;
end;

destructor TIteradorControle.Destroy;
begin
  FListaDespesas.Clear;

  FreeAndNil(FListaDespesas);
  FreeAndNil(F090IND);

  inherited;
end;

procedure TIteradorControle.GerarLigacao;
var
  i: Integer;
  x501TCP: T501TCP;
  xControle: TControle;
begin
  xControle := nil;

  for i := 0 to pred(Self.Count) do
    if (TControle(Self[i]).Check = 1) then
    begin
      xControle := TControle(Self[i]);
      Break;
    end;

  StartTransaction;
  try
    for i := pred(Self.Despesas.Count) downto 0 do
    begin
      x501TCP := T501TCP(Self.Despesas[i]);

      if (x501TCP.Check = 1) then
      begin
        x501TCP.USU_IDCLP := xControle.USU_ID;
        x501TCP.DefinirSelecaoPropriedade(['CODEMP','CODFIL','NUMTIT','CODTPT','CODFOR'], True);
        x501TCP.DefinirCampoUpdate(['USU_IDCLP']);
        x501TCP.Executar(estUpdate);

        xControle.Titulo.IterarAdd(x501TCP, T501TCP.Create);
        Self.Despesas.Delete(i);
      end;
    end;

    Commit;
  except
    RollBack;
  end;
end;

function TIteradorControle.GetDespesas: TIterador;
begin
  Result := FListaDespesas;
end;

function TIteradorControle.GetTitulo: tTitulo;
begin
  Result := FTitulo;
end;

procedure TIteradorControle.InserirContrato;
var
  i: Integer;
begin
  StartTransaction;
  try
    for i := 0 to pred(Self.Count) do
      TControle(Self[i]).InserirContrato(TControle(Self[i]).USU_NumCtr);
    Commit;
  except
    RollBack;
  end;
end;

procedure TIteradorControle.Limpar;
var
  i: Integer;
begin
  for i := 0 to pred(Self.Count) do
    TControle(Self[i]).Titulo.Clear;

  Self.Clear;
  FListaDespesas.Clear;
  FTotOri := 0;
  FTotRea := 0;
end;

procedure TIteradorControle.MarcarDesmarcar(const pValue: Byte; const pLigacoes: Boolean = False);
var
  i,j: Integer;
  xTituloControle: TTituloControle;
begin
  for i := 0 to pred(Self.Count) do
  begin
    TControle(Self[i]).Check := pValue;

    if (pLigacoes) then
    begin
      for j := 0 to pred(TControle(Self[i]).Titulo.Count) do
        T501TCP(TControle(Self[i]).Titulo[j]).Check := pValue;
    end
    else
    begin
      FRemoverCalculos := (pValue = 0);

      for j := 0 to pred(TControle(Self[i]).Ajuste.Count) do
      begin
        xTituloControle := TTituloControle(TControle(Self[i]).Ajuste[j]);

        FIndexCtr := i;
        FIndexTit := j;
        FValorIndice := iff(xTituloControle.IndNov > 0, xTituloControle.IndNov, xTituloControle.IndRea);
        CalcularAjustes();

        xTituloControle.Check := pValue;
      end;
    end;
  end;
end;

procedure TIteradorControle.MarcarDesmarcarDespesas(const pValue: Byte);
var
  i: Integer;
begin
  for i := 0 to pred(FListaDespesas.Count) do
    T501TCP(FListaDespesas[i]).Check := pValue;
end;

procedure TIteradorControle.MarcarDesmarcarLigacoes(const pValue: Byte);
var
  i: Integer;
begin
  for i := 0 to pred(Self.Count) do
  begin
    if (TControle(Self[i]).Titulo.Count > 0) then
    begin
      Self.MarcarDesmarcarLigacoes(pValue, i);
      TControle(Self[i]).Check := pValue;
    end;
  end;
end;

procedure TIteradorControle.MarcarDesmarcarLigacoes(const pValue: Byte; const pPos: Integer);
var
  i: Integer;
begin
  for i := 0 to pred(TControle(Self[pPos]).Titulo.Count) do
    T501TCP(TControle(Self[pPos]).Titulo[i]).Check := pValue;
end;

procedure TIteradorControle.MarcarDesmarcarReajuste(const pReajusteIterado: TControle; const pValue: Byte);
var
  i: Integer;
  xTituloControle: TTituloControle;
begin
  FIndexCtr := Self.IndexOf(pReajusteIterado);
  for i := 0 to pred(pReajusteIterado.Ajuste.Count) do
  begin
    xTituloControle := TTituloControle(pReajusteIterado.Ajuste[i]);
    xTituloControle.Check := pValue;

    FIndexTit := i;
    FRemoverCalculos := (pValue = 0);
    FValorIndice := iff(xTituloControle.IndNov > 0, xTituloControle.IndNov, xTituloControle.IndRea);
    CalcularAjustes();
  end;
end;

procedure TIteradorControle.MovimentarTitulo(const pTitulo: T301TCR; const pID: Integer);
var
  x160MOV: T160MOV;
begin
  x160MOV := T160MOV.Create();
  x160MOV.USU_IDCLP := pID;
  x160MOV.USU_CodEmp := pTitulo.CodEmp;
  x160MOV.USU_CodFil := pTitulo.CodFil;
  x160MOV.USU_CodCli := pTitulo.CodCli;
  x160MOV.USU_CodTpt := pTitulo.CodTpt;
  x160MOV.USU_NumTit := pTitulo.NumTit;
  x160MOV.USU_VlrOri := pTitulo.OLD_VlrOri;
  x160MOV.USU_VctOri := pTitulo.VctOri;
  x160MOV.USU_SitTit := pTitulo.SitTit;
  x160MOV.USU_VlrRea := pTitulo.VlrOri;
  x160MOV.USU_VlrBon := 0; //pTitulo.VlrBon;
  x160MOV.USU_DatDsc := Now;
  x160MOV.GerarMovimento;
end;

procedure TIteradorControle.Processar;
var
  i, j, l: Integer;
  x301tcr: T301TCR;
  xRetorno: string;
  xServico: sapiens_Synccom_senior_g5_co_mfi_cre_alteratituloscr;
  xEntrada: alteratituloscrAlteraTitulosCRIn;
  xSaida: alteratituloscrAlteraTitulosCROut;
  xTitulos: Array_Of_alteratituloscrAlteraTitulosCRInGridTitulosAlterar;
begin
  j := 0;
  xServico := Getsapiens_Synccom_senior_g5_co_mfi_cre_alteratituloscr();
  xEntrada := alteratituloscrAlteraTitulosCRIn.Create;

  for i := 0 to pred(Self.Count) do
  begin
    if (TControle(Self[i]).Check = 1) then
    begin
      for l := 0 to pred(TControle(Self[i]).Ajuste.Count) do
      begin
        x301tcr := T301TCR(TControle(Self[i]).Ajuste[l]);

        if (x301tcr.Check = 1) then
        begin
          j := Length(xTitulos);
          Inc(j);
          SetLength(xTitulos, j);
          xTitulos[pred(j)] := alteratituloscrAlteraTitulosCRInGridTitulosAlterar.Create;
          xTitulos[pred(j)].CodFil := x301tcr.CodFil;
          xTitulos[pred(j)].CodTpt := x301tcr.CodTpt;
          xTitulos[pred(j)].NumTit := x301tcr.NumTit;
          xTitulos[pred(j)].codCli := x301tcr.CodCli;
          xTitulos[pred(j)].vlrOri := x301tcr.VlrOri;

          Self.MovimentarTitulo(x301tcr, TControle(Self[i]).USU_ID);
        end;
      end;
    end;
  end;

  if (j > 0) then
  begin
    Self.RemoverContrato();

    xEntrada.gridTitulosAlterar := xTitulos;
    xEntrada.codEmp := FLogEmp;
    xSaida := xServico.AlteraTitulosCR('sapiensweb', 'sapiensweb', 0, xEntrada);
    xRetorno := xSaida.erroExecucao;
    xRetorno := xSaida.resultado;

    Self.InserirContrato();
  end;
end;

procedure TIteradorControle.CalcularAjustes();
var
  xTituloReajuste: TTituloControle;
begin
  xTituloReajuste := TTituloControle(TControle(Self[FIndexCtr]).Ajuste[FIndexTit]);

  if (FRemoverCalculos) or ((FValorIndice > 0) and (FValorIndice <> xTituloReajuste.OLD_IndNov)) then
    FTotRea := (FTotRea - (xTituloReajuste.VlrOri - xTituloReajuste.VlrIni));

  xTituloReajuste.VlrOri := iff(not(FRemoverCalculos), ((xTituloReajuste.VlrIni * (FValorIndice * 0.01)) + xTituloReajuste.VlrIni), xTituloReajuste.VlrIni);

  if not(FRemoverCalculos) then
    FTotRea := (FTotRea + (xTituloReajuste.VlrOri - xTituloReajuste.VlrIni));

  if (FValorIndice = 0) then
    xTituloReajuste.Check := 0;

  xTituloReajuste.OLD_IndNov := FValorIndice;
end;

procedure TIteradorControle.RemoverContrato;
var
  i: Integer;
begin
  StartTransaction;
  try
    for i := 0 to pred(Self.Count) do
      TControle(Self[i]).RemoverContrato();

    Commit;
  except
    RollBack;
  end;
end;

procedure TIteradorControle.RemoverLigacao;
var
  i,j: Integer;
  x501TCP: T501TCP;
begin
  StartTransaction;
  try
    for i := 0 to pred(Self.Count) do
      if (TControle(Self[i]).Check = 1) then
      begin
        for j := pred(TControle(Self[i]).Titulo.Count) downto 0 do
        begin
          x501TCP := T501TCP(TControle(Self[i]).Titulo[j]);
          if (x501TCP.Check = 1) then
          begin
            x501TCP.USU_IDCLP := 0;
            x501TCP.Check := 0;
            x501TCP.DefinirSelecaoPropriedade(['CODEMP','CODFIL','NUMTIT','CODTPT','CODFOR'], True);
            x501TCP.DefinirCampoUpdate(['USU_IDCLP']);
            x501TCP.Executar(estUpdate);

            Self.Despesas.IterarAdd(x501TCP, T501TCP.Create);
            TControle(Self[i]).Titulo.Delete(j);
          end;
        end;
      end;

    Commit;
  except
    RollBack;
  end;
end;

function TIteradorControle.SelecaoContrato: tSelecaoCheck;
var
  i,j: Integer;
  xCount: Integer;
begin
  xCount := 0;
  Result := scSemDados;

  for i := 0 to pred(Self.Count) do
  begin
    if (TControle(Self[i]).Check = 1) then
    begin
      for j := 0 to pred(TControle(Self[i]).Titulo.Count) do
      begin
        if (T501TCP(TControle(Self[i]).Titulo[j]).Check = 1) then
        begin
          Result := scPossuiLigacao;
          Break;
        end;
      end;
      Inc(xCount);
    end;

    if (xCount = 2) then
    begin
      if (Result = scPossuiLigacao) then
        Result := scApenasRemover
      else
        Result := scSomaNaoLigado;
      Break;
    end;
  end;

  if (xCount = 1) and (Result = scSemDados) then
    Result := scLigacao;
end;

function TIteradorControle.SelecaoDespesa: tSelecaoCheck;
begin
  Result := iff(FListaDespesas.Count = 0, scSemDados, scSomaNaoLigado);

  if (FListaDespesas.Selecionados) then
    Result := scNaoLigado;
end;

procedure TIteradorControle.SetDespesas(const Value: TIterador);
begin
  FListaDespesas := Value;
end;

procedure TIteradorControle.SetTitulo(const Value: tTitulo);
begin
  FTitulo := Value;
end;

function TIteradorControle.TotalAjustado: Extended;
begin
  Result := FTotRea;
end;

function TIteradorControle.TotalOriginal: Extended;
begin
  Result := FTotOri;
end;

{ TTituloControle }

constructor TTituloControle.Create(const pT090IND: T090IND; const pVlrOri: Double);
begin
  inherited Create();

  Self.IndRea := pT090IND.USU_VlrInd;
  Self.IndFin := pT090IND.USU_IndFin;
  FVlrIni := pVlrOri;
end;

destructor TTituloControle.Destroy;
begin
  inherited;
end;

function TTituloControle.GetIndFin: string;
begin
  Result := FIndFin;
end;

function TTituloControle.GetIndNov: Double;
begin
  Result := FIndNov;
end;

function TTituloControle.GetIndRea: Double;
begin
  Result := FIndRea;
end;

function TTituloControle.GetOLD_IndNov: Double;
begin
  Result := FOLD_IndNov;
end;

function TTituloControle.GetVlrIni: Double;
begin
  Result := FVlrIni;
end;

procedure TTituloControle.SetIndFin(const Value: string);
begin
  FIndFin := Value;
end;

procedure TTituloControle.SetIndNov(const Value: Double);
begin
  FIndNov := Value;
end;

procedure TTituloControle.SetIndRea(const Value: Double);
begin
  FIndRea := Value;
end;

procedure TTituloControle.SetOLD_IndNov(const Value: Double);
begin
  FOLD_IndNov := Value;
end;

procedure TTituloControle.SetVlrIni(const Value: Double);
begin
  FVlrIni := Value;
end;

{ TControladorBem }

constructor TControladorBem.Create;
begin
  inherited Create();

  FListaBNL := TIterador.Create;
  FListaBLG := TIterador.Create;
end;

destructor TControladorBem.Destroy;
begin
  inherited;

  FreeAndNil(FListaBNL);
  FreeAndNil(FListaBLG);
end;

procedure TControladorBem.GerarLigacao;
var
  i: Integer;
  x670BEM: T670BEM;
  x670LIB: T670LIB;
  xIteradorBem: TIteradorBem;
begin
  xIteradorBem := nil;

  for i := 0 to pred(FListaBLG.Count) do
    if (TIteradorBem(FListaBLG[i]).Check = 1) then
    begin
      xIteradorBem := TIteradorBem(FListaBLG[i]);
      Break;
    end;

  StartTransaction;
  try
    if (Assigned(xIteradorBem)) then
    begin
      for i := pred(FListaBNL.Count) downto 0 do
      begin
        x670BEM := T670BEM(FListaBNL[i]);

        if (x670BEM.Check = 1) then
        begin
          x670LIB := T670LIB.Create;
          x670LIB.USU_IDLIG := xIteradorBem.USU_IDLIB;
          x670LIB.USU_CodEmp := x670BEM.CodEmp;
          x670LIB.USU_CodBem := x670BEM.CodBem;
          x670LIB.USU_DesBem := x670BEM.DesBem;
          x670LIB.Executar(estInsert);

          x670BEM.USU_IDLIB := x670LIB.USU_ID;
          x670BEM.USU_BemPri := 'N';
          x670BEM.DefinirSelecaoPropriedade(['CODEMP','CODBEM'], True);
          x670BEM.DefinirCampoUpdate(['USU_IDLIB','USU_BEMPRI']);
          x670BEM.Executar(estUpdate);

          xIteradorBem.Lista.IterarAdd(x670BEM, T670BEM.Create);
          FListaBNL.Delete(i);
        end;
      end;

      Commit;
    end;
  except
    RollBack;
  end;
end;

function TControladorBem.GetCodBem: string;
begin
  Result := FCodBem;
end;

function TControladorBem.GetCodEmp: Word;
begin
  Result := FCodEmp;
end;

function TControladorBem.GetLstLigado: TIterador;
begin
  Result := FListaBLG;
end;

function TControladorBem.GetLstNaoLigado: TIterador;
begin
  Result := FListaBNL
end;

procedure TControladorBem.Limpar;
begin
  FListaBLG.Clear;
  FListaBNL.Clear;
end;

procedure TControladorBem.MarcarDesmarcarLigacoes(const pValue: Byte; const pPos: Integer);
var
  i: Integer;
  xIteradorBem: TIteradorBem;
begin
  xIteradorBem := TIteradorBem(FListaBLG[pPos]);

  for i := 0 to pred(xIteradorBem.Lista.Count) do
    T670BEM(xIteradorBem.Lista[i]).Check := pValue;
end;

procedure TControladorBem.MarcarDesmarcarLigacoes(const pValue: Byte);
var
  i: Integer;
begin
  for i := 0 to pred(FListaBLG.Count) do
  begin
    if (TIteradorBem(FListaBLG[i]).Lista.Count > 0) then
    begin
      Self.MarcarDesmarcarLigacoes(pValue, i);
      TIteradorBem(FListaBLG[i]).Check := pValue;
    end;
  end;
end;

procedure TControladorBem.MarcarDesmarcarNaoLigados(const pValue: Byte);
var
  i: Integer;
begin
  for i := 0 to pred(FListaBNL.Count) do
    T670BEM(FListaBNL[i]).Check := pValue;
end;

procedure TControladorBem.Mostrar;
var
  xIteradorBem: TIteradorBem;
  x670BEM: T670BEM;
begin
  x670BEM := T670BEM.Create;
  try
    x670BEM.USU_BemClp := 'S';
    x670BEM.DefinirSelecaoPropriedade(['USU_BEMCLP']);
    x670BEM.AdicionarCondicao(FCondicao);
    x670BEM.Executar(estSelectLoop);

    while (x670BEM.Proximo) do
    begin
      if (x670BEM.USU_IDLIB > 0) and not(AnsiSameText(x670BEM.USU_BemPri, 'N')) then
      begin
        xIteradorBem := TIteradorBem.Create;

        FListaBLG.IterarAdd(x670BEM, xIteradorBem);
        xIteradorBem.AdicionarBemLigado();
      end
      else
        FListaBNL.IterarAdd(x670BEM, TIteradorBem.Create);
    end;
  finally
    x670BEM.Fechar;
  end;
end;

procedure TControladorBem.Processar;
var
  i: Integer;
  x670BEM: TIteradorBem;
begin
  for i := 0 to pred(FListaBNL.Count) do
  begin
    x670BEM := TIteradorBem(FListaBNL[i]);

    if (x670BEM.Check = 1) then
      x670BEM.Processar;
  end;
end;

procedure TControladorBem.RemoverLigacao;
var
  i,j: Integer;
  x670LIB: T670LIB;
  x670BEM: T670BEM;
begin
  StartTransaction;
  try
    for i := 0 to pred(FListaBLG.Count) do
      if (TIteradorBem(FListaBLG[i]).Check = 1) then
      begin
        for j := pred(TIteradorBem(FListaBLG[i]).Lista.Count) downto 0 do
        begin
          x670BEM := T670BEM(TIteradorBem(FListaBLG[i]).Lista[j]);
          if (x670BEM.Check = 1) then
          begin
            x670LIB := T670LIB.Create;
            x670LIB.USU_ID := x670BEM.USU_IDLIB;
            x670LIB.DefinirSelecaoPropriedade(['USU_ID']);
            x670LIB.Executar(estDelete);

            x670BEM.USU_IDLIB := 0;
            x670BEM.Check := 0;
            x670BEM.DefinirSelecaoPropriedade(['CODEMP','CODBEM'], True);
            x670BEM.DefinirCampoUpdate(['USU_IDLIB']);
            x670BEM.Executar(estUpdate);

            FListaBNL.IterarAdd(x670BEM, T670BEM.Create);
            TIteradorBem(FListaBLG[i]).Lista.Delete(j);
          end;
        end;
      end;

    Commit;
  except
    RollBack;
  end;
end;

function TControladorBem.SelecaoBem: tSelecaoCheck;
var
  i,j: Integer;
  xCount: Integer;
begin
  xCount := 0;
  Result := scSemDados;

  for i := 0 to pred(FListaBLG.Count) do
  begin
    if (TIteradorBem(FListaBLG[i]).Check = 1) then
    begin
      for j := 0 to pred(TIteradorBem(FListaBLG[i]).Lista.Count) do
      begin
        if (T670BEM(TIteradorBem(FListaBLG[i]).Lista[j]).Check = 1) then
        begin
          Result := scPossuiLigacao;
          Break;
        end;
      end;
      Inc(xCount);
    end;

    if (xCount = 2) then
    begin
      if (Result = scPossuiLigacao) then
        Result := scApenasRemover
      else
        Result := scSomaNaoLigado;
      Break;
    end;
  end;

  if (xCount = 1) and (Result = scSemDados) then
    Result := scLigacao;
end;

function TControladorBem.SelecaoNaoLigado: tSelecaoCheck;
begin
  Result := iff(FListaBNL.Count = 0, scSemDados, scSomaNaoLigado);

  if (FListaBNL.Selecionados) then
    Result := scNaoLigado;
end;

procedure TControladorBem.SetCodBem(const Value: string);
begin
  FCodBem := Value;
end;

procedure TControladorBem.SetCodEmp(const Value: Word);
begin
  FCodEmp := Value;
end;

procedure TControladorBem.SetLstLigado(const Value: TIterador);
begin
  FListaBLG := Value;
end;

procedure TControladorBem.SetLstNaoLigado(const Value: TIterador);
begin
  FListaBNL := Value;
end;

{ TIteradorBem }

procedure TIteradorBem.AdicionarBemLigado();
var
  x670BEM: T670BEM;
  x670LIB: T670LIB;
begin
  x670LIB := T670LIB.Create;
  try
    x670LIB.USU_IDLIG := Self.USU_IDLIB;
    x670LIB.DefinirSelecaoPropriedade(['USU_IDLIG']);
    x670LIB.Executar(estSelectLoop);

    while (x670LIB.Proximo) do
    begin
      x670BEM := T670BEM.Create;
      x670BEM.CodEmp := x670LIB.USU_CodEmp;
      x670BEM.CodBem := x670LIB.USU_CodBem;
      x670BEM.USU_BemClp := 'S';
      x670BEM.DefinirSelecaoPropriedade(['CODEMP','CODBEM','USU_BEMCLP'], True);
      x670BEM.Executar(estSelect);
      FListaBLG.IterarAdd(x670BEM, T670BEM.Create);
      x670BEM.Fechar;
    end;
  finally
    x670LIB.Fechar;
  end;
end;

constructor TIteradorBem.Create;
begin
  inherited Create();

  FListaBLG := TIterador.Create;
end;

destructor TIteradorBem.Destroy;
begin
  inherited;

  FreeAndNil(FListaBLG);
end;

function TIteradorBem.GetLista: TIterador;
begin
  Result := FListaBLG;
end;

procedure TIteradorBem.Processar;
var
  x670LIB: T670LIB;
begin
  x670LIB := T670LIB.Create;
  x670LIB.USU_CodEmp := Self.CodEmp;
  x670LIB.USU_CodBem := Self.CodBem;
  x670LIB.USU_DesBem := Self.DesBem;
  x670LIB.Executar(estInsert);

  Self.USU_BemPri := 'S';
  Self.USU_IDLIB := x670LIB.USU_ID;
  Self.DefinirSelecaoPropriedade(['CODEMP','CODBEM'], True);
  Self.DefinirCampoUpdate(['USU_BEMPRI', 'USU_IDLIB']);
  Self.Executar(estUpdate);
end;

procedure TIteradorBem.SetLista(const Value: TIterador);
begin
  FListaBLG := Value;
end;

end.
