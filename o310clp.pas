unit o310clp;

interface

uses
  System.Classes, oTitulo, oBase, System.SysUtils, Data.Db, System.Contnrs,
  oTabelas, o501tcp, System.DateUtils;

type
  tSelecaoCheck = (scSemDados, scLigacao, scPossuiLigacao, scApenasRemover, scNaoLigado, scSomaNaoLigado);

  TControle = class(T160CLP)
  private
    FTitulo: TIterador;
    FAjuste: TIterador;
    FLigacao: TIterador;

    FTotOri: Extended;
    FTotRea: Extended;
    FBonCtr: Extended;
    FReaCtr: Extended;
    F090IND: T090IND;
    FVlrInd: Double;

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

    procedure AdicionarMovimento(const p160MOV: T160MOV);
    function GetVlrInd: Double;
    procedure SetVlrInd(const Value: Double);

    function PeriodicidadeInicial(const pData: TDate): TDate;
    function DiminuirPeriodo(const pData: TDate; const pMeses: Integer): TDate;
  public
    constructor Create();
    destructor Destroy(); override;

    procedure CarregarIndice(const pTitulo: T301TCR);
    procedure InserirContrato();
    procedure RemoverContrato();
    procedure AdicionarTitulosReajuste();
    procedure AdicionarTitulosLigados();

    function BonificaoDoContrato: Extended;
    function ReajusteDoContrato: Extended;

    property Titulo: TIterador read GetTitulo write SetTitulo;
    property Ligacao: TIterador read GetLigacao write SetLigacao;
    property Ajuste: TIterador read GetAjuste write SetAjuste;
    property TotOri: Extended read GetTotOri write SetTotOri;
    property TotRea: Extended read GetTotRea write SetToRea;
    property VlrInd: Double read GetVlrInd write SetVlrInd;
  end;

  TTituloControle = class(T301TCR)
  private
    FIndNov: Double;
    FIndRea: Double;
    FIndFin: string;
    FVlrIni: Double;
    FVlrBon: Currency;
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
    function GetVlrBon: Currency;
    procedure SetVlrBon(const Value: Currency);
  public
    constructor Create(const pControle: TControle; const pTitulo: T301TCR);
    destructor Destroy(); override;

    property IndFin: string read GetIndFin write SetIndFin;
    property IndNov: Double read GetIndNov write SetIndNov;
    property IndRea: Double read GetIndRea write SetIndRea;
    property VlrIni: Double read GetVlrIni write SetVlrIni;
    property VlrBon: Currency read GetVlrBon write SetVlrBon;
    property OLD_IndNov: Double read GetOLD_IndNov write SetOLD_IndNov;
  end;

  TIteradorControle = class(TIterador)
  private
    FIndexCtr: Integer;
    FIndexTit: Integer;
    FValorIndice: Double;
    FRemoverCalculos: Boolean;
    FTitulo: tTitulo;
    FFiltraContrato: string;
    FFiltraTitulo: string;
    FListaDespesas: TIterador;

    procedure InserirContrato(const pResultado: string);
    procedure RemoverContrato();
    function GetTitulo: tTitulo;
    procedure SetTitulo(const Value: tTitulo);
    procedure AdicionarTitulosDespesas();
    function GetDespesas: TIterador;
    procedure SetDespesas(const Value: TIterador);
    procedure MovimentarTitulo(const pTitulo: TTituloControle; const pID: Integer);
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
    procedure CalcularAjustes();
    procedure Bonificar(const pVlrBon: Double);
    procedure MarcarDesmarcarLigacoes(const pValue: Byte); overload;
    procedure MarcarDesmarcarLigacoes(const pValue: Byte; const pPos: Integer); overload;
    procedure MarcarDesmarcarDespesas(const pValue: Byte);
    procedure MarcarDesmarcarReajuste(const pReajusteIterado: TControle; const pValue: Byte);
    procedure MarcarDesmarcar(const pValue: Byte; const pLigacoes: Boolean = False);

    function TotalOriginal(const pPosicao: Integer): Extended;
    function TotalAjustado(const pPosicao: Integer): Extended;

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
    procedure Excluir();

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
    procedure Excluir();
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
  wsCRAlterar, oMensagem;

function SituacaoTitulo(const pSitTit: string): Boolean;
begin
  Result := not(AnsiSameText(UpperCase(Copy(pSitTit, 0, 1)), 'L'));
end;

{ TControle }

procedure TControle.AdicionarMovimento(const p160MOV: T160MOV);
var
  x160MOV: T160MOV;
  xQueryMov: T160MOV;
begin
  xQueryMov := nil;
  try
    xQueryMov := T160MOV.Create();
    x160MOV := T160MOV.Create();

    x160MOV.USU_IDCLP := p160MOV.USU_IDCLP;
    x160MOV.USU_CodEmp := p160MOV.USU_CodEmp;
    x160MOV.USU_CodFil := p160MOV.USU_CodFil;
    x160MOV.USU_NumTit := p160MOV.USU_NumTit;
    x160MOV.USU_CodTpt := p160MOV.USU_CodTpt;

    x160MOV.SetFields := True;
    x160MOV.Field := 'USU_SEQMOV';
    x160MOV.PropertyForSelect(['USU_CODEMP','USU_CODFIL','USU_NUMTIT','USU_CODTPT'], True);
    x160MOV.Execute(etSelect, esMAX);

    xQueryMov.Field := 'USU_VLRBON';
    xQueryMov.USU_CodEmp := x160MOV.USU_CodEmp;
    xQueryMov.USU_CodFil := x160MOV.USU_CodFil;
    xQueryMov.USU_NumTit := x160MOV.USU_NumTit;
    xQueryMov.USU_CodTpt := x160MOV.USU_CodTpt;
    xQueryMov.PropertyForSelect(['USU_CODEMP','USU_CODFIL','USU_NUMTIT','USU_CODTPT'], True);

    if (xQueryMov.Execute(etSelect, esSUM)) then
      x160MOV.USU_VlrBon := xQueryMov.USU_VlrBon;

    x160MOV.USU_VlrRea := (x160MOV.USU_VlrRea - x160MOV.USU_VlrOri);
    FBonCtr := (FBonCtr + x160MOV.USU_VlrBon);
    FReaCtr := (FReaCtr + x160MOV.USU_VlrRea);

    if not(FTitulo.IndexOfFields(x160MOV)) then
      FTitulo.Add(x160MOV);
  finally
    FreeAndNil(xQueryMov);
  end;
end;

procedure TControle.AdicionarTitulosLigados();
var
  xQueryTitulo: T501TCP;
begin
  xQueryTitulo := T501TCP.Create();
  try
    xQueryTitulo.USU_IDCLP := Self.USU_ID;
    xQueryTitulo.PropertyForSelect(['USU_IDCLP'], True);
    xQueryTitulo.Execute(etSelect, esLoop);

    while (xQueryTitulo.Next) do
      FTitulo.IterarAdd(xQueryTitulo, T501TCP.Create);
  finally
    FreeAndNil(xQueryTitulo);
  end;
end;

procedure TControle.AdicionarTitulosReajuste();
var
  xQueryMovimento: T160MOV;
  xQueryTitulo: T301TCR;
begin
  xQueryTitulo := nil;
  xQueryMovimento := nil;
  try
    xQueryMovimento := T160MOV.Create();
    xQueryMovimento.USU_IDCLP := Self.USU_ID;
    xQueryMovimento.USU_SeqMov := 1;
    xQueryMovimento.PropertyForSelect(['USU_IDCLP','USU_SEQMOV'], True);
    xQueryMovimento.Execute(etSelect, esLoop);

    while (xQueryMovimento.Next) do
      Self.AdicionarMovimento(xQueryMovimento);

    xQueryTitulo := T301TCR.Create();
    xQueryTitulo.AddTable(['E160CTR']);
    xQueryTitulo.AddToCommand(SetOperator(['E160CTR.CODEMP', 'E160CTR.CODFIL','E160CTR.NUMCTR',
                                 'E301TCR.CODEMP','E301TCR.CODFIL', 'E301TCR.NUMCTR','E301TCR.CODTPT','E301TCR.CODCLI'],
                                 [IntToStr(USU_CodEmp), IntToStr(USU_CodFil),IntToStr(USU_NumCtr),
                                 'E160CTR.CODEMP','E160CTR.CODFIL','E160CTR.NUMCTR','E301TCR.CODTPT','E160CTR.CODCLI'], True));

    xQueryTitulo.Execute(etSelect, esLoop);
    Self.CarregarIndice(xQueryTitulo);

    while (xQueryTitulo.Next) do
      if (SituacaoTitulo(xQueryTitulo.SitTit)) and (xQueryTitulo.VlrOri = xQueryTitulo.VlrAbe) then
      begin
        FTotOri := FTotOri + xQueryTitulo.VlrOri;
        FAjuste.IterarAdd(xQueryTitulo, TTituloControle.Create(Self, xQueryTitulo));
      end;
  finally
    FreeAndNil(xQueryTitulo);
    FreeAndNil(xQueryMovimento);
  end;
end;

function TControle.BonificaoDoContrato: Extended;
begin
  Result := FBonCtr;
end;

procedure TControle.CarregarIndice(const pTitulo: T301TCR);
var
  x160ctr: T160CTR;
  x000dbc: T000dbc;
begin
  F090IND := T090IND.Create;
  F090IND.USU_ID := Self.USU_IDIND;
  F090IND.PropertyForSelect(['USU_ID']);
  F090IND.Execute(etSelect);

  x160ctr := T160CTR.Create();
  x160ctr.CodEmp := pTitulo.CodEmp;
  x160ctr.CodFil := pTitulo.FilCtr;
  x160ctr.NumCtr := pTitulo.NumCtr;
  x160ctr.PropertyForSelect(['CODEMP','CODFIL','NUMCTR'], True);
  x160ctr.Execute(etSelect);

  x000dbc := T000dbc.Create;
  x000dbc.USU_CodDbc := F090IND.USU_CodDbc;
  x000dbc.Field := 'USU_VLRDBC';
  x000dbc.Between['USU_DATIND'] := PeriodicidadeInicial(StartOfTheMonth(x160ctr.IniVig));
  x000dbc.Between['USU_DATIND'] := Date;
  x000dbc.PropertyForSelect(['USU_CODDBC']);
  x000dbc.Execute(etSelect, esSUM);

  Self.VlrInd := x000dbc.USU_VlrDbc;
end;

constructor TControle.Create;
begin
  inherited Create();

  BlockProperty(['ID','Check','Titulo', 'Ajuste','TotOri','TotRea', 'Ligacao','VlrInd']);
  FTitulo := TIterador.Create();
  FTitulo.indexed := True;

  FTitulo.IndexFields(['USU_CodEmp','USU_CodFil','USU_NumTit','USU_CodTpt']);

  FBonCtr := 0;
  FReaCtr := 0;
  FAjuste := TIterador.Create;
  FLigacao := TIterador.Create;
end;

function TControle.PeriodicidadeInicial(const pData: TDate): TDate;
begin
  Result := 0;

  case (Self.USU_PerEre) of
    0,1,2,3: Result := 0;
    4: Result := DiminuirPeriodo(pData, 1);
    5: Result := DiminuirPeriodo(pData, 2);
    6: Result := DiminuirPeriodo(pData, 3);
    7: Result := DiminuirPeriodo(pData, 6);
    8: Result := DiminuirPeriodo(pData, 12);
  end;
end;

destructor TControle.Destroy;
begin
  FTitulo.Clear;
  FAjuste.Clear;
  FLigacao.Clear;

  FreeAndNil(FAjuste);
  FreeAndNil(FTitulo);
  FreeAndNil(FLigacao);
  FreeAndNil(F090IND);

  inherited;
end;

function TControle.DiminuirPeriodo(const pData: TDate; const pMeses: Integer): TDate;
var
  i: Integer;
begin
  i := pMeses;
  Result := StartOfTheMonth(Date);

  while not(i = 0) do
  begin
    Dec(i);

    if (IncMonth(Result, -1) <= pData) then
      Break;

    Result := IncMonth(Result, -1);
  end;
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

function TControle.GetVlrInd: Double;
begin
  Result := FVlrInd;
end;

procedure TControle.InserirContrato();
var
  i: Integer;
  x301tcr: T301TCR;
begin
  for i := 0 to pred(FAjuste.Count) do
  begin
    x301tcr := T301TCR(FAjuste[i]);

    if (x301tcr.Check = 1) then
    begin
      x301tcr.Start;
      x301tcr.NumCtr := Self.USU_NumCtr;
      x301tcr.PropertyForSelect(['CODEMP','CODFIL','NUMTIT','CODTPT'], True);
      x301tcr.FieldsForUpdate(['NUMCTR']);
      x301tcr.Execute(estUpdate);
    end;
  end;
end;

function TControle.ReajusteDoContrato: Extended;
begin
  Result := FReaCtr;
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
      x301tcr.Start;
      x301tcr.NumCtr := 0;
      x301tcr.PropertyForSelect(['CODEMP','CODFIL','NUMTIT','CODTPT'], True);
      x301tcr.FieldsForUpdate(['NUMCTR']);
      x301tcr.Execute(estUpdate)
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

procedure TControle.SetVlrInd(const Value: Double);
begin
  FVlrInd := Value;
end;

{ TIteradorControle }

procedure TIteradorControle.AdicionarTitulosDespesas();
var
  xQueryTitulo: T501TCP;
begin
  xQueryTitulo := T501TCP.Create();
  try
    xQueryTitulo.AddToCommand(FFiltraTitulo + 'E501TCP.CODTPT IN (''75'',''39'') AND E501TCP.SITTIT LIKE ''A%'' AND (USU_IDCLP = 0)');
    xQueryTitulo.Execute(etSelect, esLoop);

    while (xQueryTitulo.Next) do
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
    xQueryReajuste.AddTable(['E160CTR']);
    xQueryReajuste.AddToCommand(FFiltraContrato);
    xQueryReajuste.AddToCommand(SetOperator(['E160CTR.CODEMP', 'E160CTR.CODFIL','E160CTR.NUMCTR'],
                                  ['USU_CODEMP','USU_CODFIL','USU_NUMCTR'], True));
    xQueryReajuste.Execute(etSelect, esLoop);

    while xQueryReajuste.Next() do
    begin
      xControle := TControle.Create();
      Self.Iterar(xQueryReajuste, xControle);

      if (FTitulo = tTContasReceber) then
        xControle.AdicionarTitulosReajuste()
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

  FTitulo := tTContasReceber;
  FListaDespesas := TIterador.Create;
end;

destructor TIteradorControle.Destroy;
begin
  FListaDespesas.Clear;

  FreeAndNil(FListaDespesas);

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
        x501TCP.Start;
        x501TCP.USU_IDCLP := xControle.USU_ID;
        x501TCP.PropertyForSelect(['CODEMP','CODFIL','NUMTIT','CODTPT','CODFOR'], True);
        x501TCP.FieldsForUpdate(['USU_IDCLP']);
        x501TCP.Execute(estUpdate);

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

procedure TIteradorControle.InserirContrato(const pResultado: string);
var
  i,j: Integer;
  xControle: TControle;
  xTituloControle: TTituloControle;
begin
  StartTransaction;
  try
    for i := 0 to pred(Self.Count) do
    begin
      xControle := TControle(Self[i]);
      xControle.InserirContrato();

      if AnsiSameText(pResultado, 'OK') then
        for j := 0 to pred(xControle.Ajuste.Count) do
        begin
          xTituloControle := TTituloControle(xControle.Ajuste[j]);

          if (xTituloControle.Check = 1) then
            Self.MovimentarTitulo(xTituloControle, xControle.USU_ID);
        end;
    end;

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

      if (pValue = 1) then
        if not(TControle(Self[i]).Titulo.Selecionados) then
          TControle(Self[i]).Check := 0;
    end
    else
    begin
      FRemoverCalculos := (pValue = 0);

      for j := 0 to pred(TControle(Self[i]).Ajuste.Count) do
      begin
        xTituloControle := TTituloControle(TControle(Self[i]).Ajuste[j]);
        if (xTituloControle.IndRea > 0) then
        begin
          FIndexCtr := i;
          FIndexTit := j;
          FValorIndice := iff(xTituloControle.IndNov > 0, xTituloControle.IndNov, xTituloControle.IndRea);
          CalcularAjustes();

          xTituloControle.Check := pValue;
        end;
      end;

      if (pValue = 1) then
        if not(TControle(Self[i]).Ajuste.Selecionados) then
          TControle(Self[i]).Check := 0;
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

procedure TIteradorControle.MovimentarTitulo(const pTitulo: TTituloControle; const pID: Integer);
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
  x160MOV.USU_VlrBon := pTitulo.VlrBon;
  x160MOV.USU_DatDsc := Date;
  x160MOV.GerarMovimento;
end;

procedure TIteradorControle.Processar;
var
  i, j, l: Integer;
  x301tcr: T301TCR;
  xErro: string;
  xSaida: alteratituloscrAlteraTitulosCROut;
  xEntrada: alteratituloscrAlteraTitulosCRIn;
  xServico: sapiens_Synccom_senior_g5_co_mfi_cre_alteratituloscr;
  xTitulos: Array_Of_alteratituloscrAlteraTitulosCRInGridTitulosAlterar;
begin
  j := 0;
  xSaida := nil;

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
    try
      xSaida := xServico.AlteraTitulosCR('sapiensweb', 'sapiensweb', 0, xEntrada);
      Self.InserirContrato(xSaida.resultado);
    except
      on E: Exception do
      begin
        Self.InserirContrato('ERRO');
        CMessage('Não foi possível alterar o contrato!', mtExceptError, True, 'Erro: '+ E.Message);
      end;
    end;

    if (AnsiSameText(xSaida.resultado, 'ERRO')) then
    begin
      for i := 0 to High(xSaida.gridRetorno) do
        xErro := xErro + xSaida.gridRetorno[i].txtRet;

      CMessage('Erro ao alterar o(s) título(s)!', mtExceptError, True, xSaida.erroExecucao + xErro);
    end;
  end;
end;

procedure TIteradorControle.Bonificar(const pVlrBon: Double);
var
  xTituloReajuste: TTituloControle;
begin
  xTituloReajuste := TTituloControle(TControle(Self[FIndexCtr]).Ajuste[FIndexTit]);

  if not(FRemoverCalculos) then
  begin
    xTituloReajuste.VlrOri := (xTituloReajuste.VlrOri + xTituloReajuste.VlrBon - pVlrBon);
    TControle(Self[FIndexCtr]).TotRea := (TControle(Self[FIndexCtr]).TotRea + xTituloReajuste.VlrBon - pVlrBon);
    xTituloReajuste.VlrBon := pVlrBon;
  end
  else
  begin
    xTituloReajuste.VlrOri := (xTituloReajuste.VlrOri + xTituloReajuste.VlrBon - pVlrBon);
    TControle(Self[FIndexCtr]).TotRea := (TControle(Self[FIndexCtr]).TotRea + xTituloReajuste.VlrBon - pVlrBon);
    xTituloReajuste.VlrBon := pVlrBon;
  end;
end;

procedure TIteradorControle.CalcularAjustes();
var
  xTituloReajuste: TTituloControle;
begin
  xTituloReajuste := TTituloControle(TControle(Self[FIndexCtr]).Ajuste[FIndexTit]);

  if (FRemoverCalculos) or ((FValorIndice <> 0) and (FValorIndice <> xTituloReajuste.OLD_IndNov)) then
    TControle(Self[FIndexCtr]).TotRea := (TControle(Self[FIndexCtr]).TotRea - (xTituloReajuste.VlrOri - xTituloReajuste.VlrIni));

  xTituloReajuste.VlrOri := iff(not(FRemoverCalculos), ((xTituloReajuste.VlrIni * (FValorIndice * 0.01))
    + xTituloReajuste.VlrIni - xTituloReajuste.VlrBon), xTituloReajuste.VlrIni);

  if not(FRemoverCalculos) then
    TControle(Self[FIndexCtr]).TotRea := (TControle(Self[FIndexCtr]).TotRea + (xTituloReajuste.VlrOri - xTituloReajuste.VlrIni));

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
            x501TCP.Start;
            x501TCP.USU_IDCLP := 0;
            x501TCP.Check := 0;
            x501TCP.PropertyForSelect(['CODEMP','CODFIL','NUMTIT','CODTPT','CODFOR'], True);
            x501TCP.FieldsForUpdate(['USU_IDCLP']);
            x501TCP.Execute(estUpdate);

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

function TIteradorControle.TotalAjustado(const pPosicao: Integer): Extended;
begin
  Result := TControle(Self[pred(pPosicao)]).TotRea;
end;

function TIteradorControle.TotalOriginal(const pPosicao: Integer): Extended;
begin
  Result := TControle(Self[pred(pPosicao)]).TotOri;
end;

{ TTituloControle }

constructor TTituloControle.Create(const pControle: TControle; const pTitulo: T301TCR);
begin
  inherited Create();

  Self.IndRea := pControle.VlrInd;
  Self.IndFin := pControle.USU_IndFin;
  FVlrIni := pTitulo.VlrOri;
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

function TTituloControle.GetVlrBon: Currency;
begin
  Result := FVlrBon;
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

procedure TTituloControle.SetVlrBon(const Value: Currency);
begin
  FVlrBon := Value;
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

procedure TControladorBem.Excluir;
var
  i: Integer;
  x670BEM: TIteradorBem;
begin
  StartTransaction;
  try
    for i := 0 to pred(FListaBLG.Count) do
      begin
        x670BEM := TIteradorBem(FListaBLG[i]);

        if (x670BEM.Check = 1) then
          x670BEM.Excluir;
      end;

    Commit;
  except
    RollBack;
  end;
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
          x670LIB.Execute(estInsert);

          x670BEM.Start;
          x670BEM.USU_IDLIB := x670LIB.USU_ID;
          x670BEM.USU_BemPri := 'N';
          x670BEM.PropertyForSelect(['CODEMP','CODBEM'], True);
          x670BEM.FieldsForUpdate(['USU_IDLIB','USU_BEMPRI']);
          x670BEM.Execute(estUpdate);

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
    x670BEM.PropertyForSelect(['USU_BEMCLP']);
    x670BEM.Execute(etSelect, esLoop);

    while (x670BEM.Next) do
    begin
      if (x670BEM.USU_IDLIB > 0) and not(AnsiSameText(x670BEM.USU_BemPri, 'N')) then
      begin
        xIteradorBem := TIteradorBem.Create;

        FListaBLG.IterarAdd(x670BEM, xIteradorBem);
        xIteradorBem.AdicionarBemLigado();
      end
      else
      if (x670BEM.USU_IDLIB = 0) then
        FListaBNL.IterarAdd(x670BEM, TIteradorBem.Create);
    end;
  finally
    x670BEM.Close;
  end;
end;

procedure TControladorBem.Processar;
var
  i: Integer;
  x670BEM: TIteradorBem;
begin
  StartTransaction;
  try
    for i := 0 to pred(FListaBNL.Count) do
      begin
        x670BEM := TIteradorBem(FListaBNL[i]);

        if (x670BEM.Check = 1) then
          x670BEM.Processar;
      end;

    Commit;
  except
    RollBack;
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
            x670LIB.PropertyForSelect(['USU_ID']);
            x670LIB.Execute(estDelete);

            x670BEM.Start;
            x670BEM.USU_IDLIB := 0;
            x670BEM.Check := 0;
            x670BEM.PropertyForSelect(['CODEMP','CODBEM'], True);
            x670BEM.FieldsForUpdate(['USU_IDLIB']);
            x670BEM.Execute(estUpdate);

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
    x670LIB.PropertyForSelect(['USU_IDLIG']);
    x670LIB.Execute(etSelect, esLoop);

    while (x670LIB.Next) do
    begin
      x670BEM := T670BEM.Create;
      x670BEM.CodEmp := x670LIB.USU_CodEmp;
      x670BEM.CodBem := x670LIB.USU_CodBem;
      x670BEM.USU_BemClp := 'S';
      x670BEM.PropertyForSelect(['CODEMP','CODBEM','USU_BEMCLP'], True);
      x670BEM.Execute(etSelect);
      FListaBLG.IterarAdd(x670BEM, T670BEM.Create);
      x670BEM.Close;
    end;
  finally
    x670LIB.Close;
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

procedure TIteradorBem.Excluir;
var
  x670LIB: T670LIB;
  xDelete: T670LIB;
  x670BEM: T670BEM;
begin
  xDelete := nil;
  x670LIB := nil;
  x670BEM := nil;
  try
    xDelete := T670LIB.Create;
    x670LIB := T670LIB.Create;
    x670BEM := T670BEM.Create;

    x670LIB.USU_IDLIG := Self.USU_IDLIB;
    x670LIB.PropertyForSelect(['USU_IDLIG']);
    x670LIB.Execute(etSelect, esLoop);

    while (x670LIB.Next) do
    begin
      FListaBLG.Iterar(x670LIB, xDelete);
      xDelete.PropertyForSelect(['USU_ID']);
      xDelete.Execute(estDelete);

      x670BEM.CodEmp := x670LIB.USU_CodEmp;
      x670BEM.CodBem := x670LIB.USU_CodBem;
      x670BEM.USU_IDLIB := 0;
      x670BEM.USU_BemPri := 'N';
      x670BEM.PropertyForSelect(['CODEMP','CODBEM'], True);
      x670BEM.FieldsForUpdate(['USU_BEMPRI', 'USU_IDLIB']);
      x670BEM.Execute(estUpdate);
    end;

    Self.Start;
    Self.USU_BemPri := 'N';
    Self.USU_IDLIB := 0;
    Self.PropertyForSelect(['CODEMP','CODBEM'], True);
    Self.FieldsForUpdate(['USU_BEMPRI', 'USU_IDLIB']);
    Self.Execute(estUpdate);
  finally
    FreeAndNil(xDelete);
    FreeAndNil(x670LIB);
    FreeAndNil(x670BEM);
  end;
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
  x670LIB.Execute(estInsert);

  Self.Start;
  Self.USU_BemPri := 'S';
  Self.USU_IDLIB := x670LIB.USU_ID;
  Self.PropertyForSelect(['CODEMP','CODBEM'], True);
  Self.FieldsForUpdate(['USU_BEMPRI', 'USU_IDLIB']);
  Self.Execute(estUpdate);
end;

procedure TIteradorBem.SetLista(const Value: TIterador);
begin
  FListaBLG := Value;
end;

end.
