unit o310clp;

interface

uses
  System.Classes, oTitulo, oBase, System.SysUtils, Data.Db, System.Contnrs,
  oTabelas;

type
  tSelecaoCheck = (scSemDados, scLigacao, scPossuiLigacao, scApenasRemover, scDespesa, scSomaDespesa);

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
    procedure AdicionarTitulosReajuste();
    procedure AdicionarTitulosLigados();
    procedure CalcularAjustes(const pT090IND: T090IND);

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

    function GetIndNov: Double;
    function GetIndRea: Double;
    procedure SetIndNov(const Value: Double);
    procedure SetIndRea(const Value: Double);
    function GetIndFin: string;
    procedure SetIndFin(const Value: string);
  public
    property IndFin: string read GetIndFin write SetIndFin;
    property IndNov: Double read GetIndNov write SetIndNov;
    property IndRea: Double read GetIndRea write SetIndRea;
  end;

  TIteradorControle = class(TIterador)
  private
    F090IND: T090IND;
    FTotOri: Extended;
    FTotRea: Extended;
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
    procedure RecalcularAjustes(const pIndNov: Double; const pContrato: Integer; const pTitulo: Integer);

    function TotalOriginal: Extended;
    function TotalAjustado: Extended;

    property FiltraContrato: string write FFiltraContrato;
    property FiltraTitulo: string write FFiltraTitulo;
    property Despesas: TIterador read GetDespesas write SetDespesas;
    property Titulo: tTitulo read GetTitulo write SetTitulo;
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

procedure TControle.AdicionarTitulosReajuste;
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

      if (SituacaoTitulo(xQueryTitulo.SitTit)) then
        FAjuste.IterarAdd(xQueryTitulo, TTituloControle.Create());
    end;
  finally
    FreeAndNil(xQueryTitulo);
  end;
end;

procedure TControle.CalcularAjustes(const pT090IND: T090IND);
var
  i: Integer;
  xTituloReajuste: TTituloControle;
begin
  for i := 0 to pred(FAjuste.Count) do
  begin
    xTituloReajuste := TTituloControle(FAjuste[i]);
    xTituloReajuste.IndRea := pT090IND.USU_VlrInd;
    xTituloReajuste.IndFin := pT090IND.USU_IndFin;

    if (SituacaoTitulo(xTituloReajuste.SitTit)) then
    begin
      FTotOri := (FTotOri + xTituloReajuste.VlrOri);
      xTituloReajuste.VlrOri := ((xTituloReajuste.VlrOri * (pT090IND.USU_VlrInd * 0.01)) + xTituloReajuste.VlrOri);
      FTotRea := (FTotRea + xTituloReajuste.VlrOri);
    end;
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
      begin
        xControle.AdicionarTitulosReajuste();
        xControle.CalcularAjustes(F090IND);

        FTotOri := (FTotOri + xControle.TotOri);
        FTotRea := (FTotRea + xControle.TotRea);
      end
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
begin
  for i := 0 to pred(Self.Count) do
  begin
    TControle(Self[i]).Check := pValue;

    if (pLigacoes) then
      for j := 0 to pred(TControle(Self[i]).Titulo.Count) do
        T501TCP(TControle(Self[i]).Titulo[j]).Check := pValue;
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
begin
  for i := 0 to pred(pReajusteIterado.Ajuste.Count) do
  begin
    if (SituacaoTitulo(T301TCR(pReajusteIterado.Ajuste[i]).SitTit)) then
      T301TCR(pReajusteIterado.Ajuste[i]).Check := pValue;
  end;
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

procedure TIteradorControle.RecalcularAjustes(const pIndNov: Double;
  const pContrato: Integer; const pTitulo: Integer);
var
  xTituloReajuste: TTituloControle;
  x301tcr: T301TCR;
begin
  x301tcr := T301TCR(TControle(Self[pContrato]).Titulo[pTitulo]);
  xTituloReajuste := TTituloControle(TControle(Self[pContrato]).Ajuste[pTitulo]);

  FTotRea := (FTotRea - xTituloReajuste.VlrOri);
  xTituloReajuste.VlrOri := ((x301tcr.VlrOri * (pIndNov * 0.01)) + x301tcr.VlrOri);
  xTituloReajuste.IndNov := pIndNov;

  FTotRea := (FTotRea + xTituloReajuste.VlrOri);
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
        Result := scSomaDespesa;
      Break;
    end;
  end;

  if (xCount = 1) and (Result = scSemDados) then
    Result := scLigacao;
end;

function TIteradorControle.SelecaoDespesa: tSelecaoCheck;
begin
  Result := iff(FListaDespesas.Count = 0, scSemDados, scSomaDespesa);

  if (FListaDespesas.Selecionados) then
    Result := scDespesa;
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

end.
