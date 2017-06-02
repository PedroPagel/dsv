unit oSubSystemFacade;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs,
  oTabelas, wsBancoCentral, DateUtils, oTitulo;

type
  TIteracaoDadosFacade = class; //foward

  TRegistroFacadePeriodo = record
    Registro: T000dbc;
    Meses: TStringList;
  end;

  TListaFacade = array of TRegistroFacadePeriodo;

  TSubFacadeConsumoBancoCentral = class
  private
    FServico: sapiens_Synccom_sernior_g5_co_fin_bancocentral;
    FEntrada: bancocentralConsumirValorIn;
    FConsumo: bancocentralConsumirValorOut;

    function GetCodigo: Integer;
    procedure SetCodigo(const Value: Integer);
    function GetData: TDate;
    procedure SetData(const Value: TDate);
  public
    constructor Create();
    destructor Destroy; override;

    procedure ValorConsumo();

    property Codigo: Integer read GetCodigo write SetCodigo;
    property Data: TDate read GetData write SetData;
    property Consumo: bancocentralConsumirValorOut read FConsumo;
  end;

  TSubFacedeIndices = class(TIterador)
  private
    F090IND: T090IND;
    F090LIC: T090LIC;
    F301TCR: T301TCR;

    function ContratoAberto(const pIteracaoDadosFacade: TIteracaoDadosFacade): Boolean;
    function CriacaoIndice(const pContrato: Integer; const pIndice: string): TIteracaoDadosFacade;
    function ProcessoAgendado(): TIteracaoDadosFacade;
  public
    constructor Create();
    destructor Destroy; override;

    procedure Carregar(const pContrato: Integer; const pIndice: string);
  end;

  TSubFacedeCodigosBancoCentral = class
  private
    F160CTR: T160CTR;
    F000DBC: T000dbc;
    FData: TStringList;
    FListaFacade: TListaFacade;

    procedure MontarPeriodo(const pIteracaoDadosFacade: TIteracaoDadosFacade);
  public
    constructor Create();
    destructor Destroy; override;

    procedure Carregar(const pIndice: TSubFacedeIndices);
    function ListaFacade(): TListaFacade;
  end;

  TSubFaceAtualizarDados = class
  private
    F000DBC: T000dbc;

    function Periodicidade(const pSigla: Char): Byte;

    procedure Carregar(const p000dbc: T000dbc; const pWS: TSubFacadeConsumoBancoCentral);
  public
    constructor Create();
    destructor Destroy; override;

    procedure Execute(const pCodigos: TSubFacedeCodigosBancoCentral; const pWebService: TSubFacadeConsumoBancoCentral);
  end;

  TIteracaoDadosFacade = class(T090IND)
  private
    FCodFil: Integer;
    FNumCtr: Integer;

    function GetCodFil: Integer;
    function GetNumCtr: Integer;
    procedure SetCodFil(const Value: Integer);
    procedure SetNumCtr(const Value: Integer);
  public
    property NumCtr: Integer read GetNumCtr write SetNumCtr;
    property CodFil: Integer read GetCodFil write SetCodFil;
  end;

implementation

{ TSubFacadeConsumoBancoCentral }

constructor TSubFacadeConsumoBancoCentral.Create;
begin
  inherited;

  FServico := Getsapiens_Synccom_sernior_g5_co_fin_bancocentral();
  FEntrada := bancocentralConsumirValorIn.Create;
end;

destructor TSubFacadeConsumoBancoCentral.Destroy;
begin
  inherited;
end;

function TSubFacadeConsumoBancoCentral.GetCodigo: Integer;
begin
  Result := StrToInt(FEntrada.inCodigo);
end;

function TSubFacadeConsumoBancoCentral.GetData: TDate;
begin
  Result := StrToDate(FEntrada.inData);
end;

procedure TSubFacadeConsumoBancoCentral.SetCodigo(const Value: Integer);
begin
  FEntrada.inCodigo := IntToStr(Value);
end;

procedure TSubFacadeConsumoBancoCentral.SetData(const Value: TDate);
begin
  FEntrada.inData := DateToStr(Value);
end;

procedure TSubFacadeConsumoBancoCentral.ValorConsumo;
begin
  FConsumo := FServico.ConsumirValor('sapiensweb', 'sapiensweb', 0, FEntrada);
end;

{ TSubFacedeIndices }

procedure TSubFacedeIndices.Carregar(const pContrato: Integer; const pIndice: string);
begin
  if not(IsNull(pIndice)) then
    CriacaoIndice(pContrato, pIndice)
  else
    ProcessoAgendado();
end;

function TSubFacedeIndices.ContratoAberto(
  const pIteracaoDadosFacade: TIteracaoDadosFacade): Boolean;
begin
  Result := False;

  F301TCR.Start;
  F301TCR.CodEmp := pIteracaoDadosFacade.USU_CodEmp;
  F301TCR.FilCtr := pIteracaoDadosFacade.CodFil;
  F301TCR.NumCtr := pIteracaoDadosFacade.NumCtr;
  F301TCR.PropertyForSelect(['CODEMP','FILCTR','NUMCTR'], True);
  F301TCR.Execute(etSelect, esLoop);

  while (F301TCR.Next) do
    if (F301TCR.VlrOri = F301TCR.VlrAbe) then
    begin
      Result := True;
      Break;
    end;
end;

constructor TSubFacedeIndices.Create;
begin
  inherited Create(True);

  F090IND := T090IND.Create();
  F090LIC := T090LIC.Create();
  F301TCR := T301TCR.Create();

  Self.IndexFields(['USU_CODDBC']);
end;

function TSubFacedeIndices.CriacaoIndice(const pContrato: Integer; const pIndice: string): TIteracaoDadosFacade;
begin
  Result := TIteracaoDadosFacade.Create;
  Result.USU_CodEmp := FLogEmp;
  Result.CodFil := FLogFil;
  Result.NumCtr := pContrato;

  F090IND.USU_CodEmp := FLogEmp;
  F090IND.USU_IndFin := pIndice;
  F090IND.PropertyForSelect(['USU_CODEMP','USU_INDFIN'], True);
  F090IND.Execute(etSelect);

  if (Self.ContratoAberto(Result)) then
    Self.IterarAdd(F090IND, Result);
end;

destructor TSubFacedeIndices.Destroy;
begin
  inherited;

  FreeAndNil(F090LIC);
  FreeAndNil(F090LIC);
  FreeAndNil(F301TCR);
end;

function TSubFacedeIndices.ProcessoAgendado: TIteracaoDadosFacade;
begin
  Result := nil;

  F090LIC.USU_CodEmp := FLogEmp;
  F090LIC.PropertyForSelect(['USU_CODEMP'], True);
  F090LIC.Execute(etSelect, esLoop);

  //Quando for com parametros, buscar direto o indice
  while (F090LIC.Next) do
  begin
    F090IND.USU_ID := F090LIC.USU_IDIND;
    F090IND.PropertyForSelect(['USU_ID'], True);
    F090IND.Execute(etSelect);

    Result := TIteracaoDadosFacade.Create;
    Result.USU_CodEmp := F090LIC.USU_CodEmp;
    Result.CodFil := F090LIC.USU_CodFil;
    Result.NumCtr := F090LIC.USU_NumCtr;

    if (Self.ContratoAberto(Result)) then
      Self.IterarAdd(F090IND, Result);
  end;

  F090LIC.Close;
  F090IND.Close;
end;

{ TSubFacedeCodigosBancoCentral }

procedure TSubFacedeCodigosBancoCentral.Carregar(
  const pIndice: TSubFacedeIndices);
var
  i: Integer;
  xDadosFacade: TIteracaoDadosFacade;
begin
  for i := 0 to pred(pIndice.Count) do
  begin
    xDadosFacade := TIteracaoDadosFacade(pIndice[i]);
    F000DBC.Start;
    F000DBC.USU_CodDbc := xDadosFacade.USU_CodDbc;
    F000DBC.USU_SeqCot := 1;
    F000DBC.PropertyForSelect(['USU_CODDBC','USU_SEQCOT'], True);
    F000DBC.Execute(etSelect);

    F000DBC.Start;
    F000DBC.Field := 'USU_SEQCOT';
    F000DBC.PropertyForSelect(['USU_CODDBC']);
    F000DBC.Execute(etSelect, esMAX);

    MontarPeriodo(xDadosFacade);
  end;
end;

constructor TSubFacedeCodigosBancoCentral.Create;
begin
  inherited Create();

  F000DBC := T000dbc.Create();
  FData := TStringList.Create();
  F160CTR := T160CTR.Create();
end;

destructor TSubFacedeCodigosBancoCentral.Destroy;
begin
  inherited;

  FreeAndNil(FData);
  FreeAndNil(F160CTR);
  FreeAndNil(F000DBC);
end;

function TSubFacedeCodigosBancoCentral.ListaFacade: TListaFacade;
begin
  Result := FListaFacade;
end;

procedure TSubFacedeCodigosBancoCentral.MontarPeriodo(
  const pIteracaoDadosFacade: TIteracaoDadosFacade);
var
  i: Integer;
  xMeses: Word;
  xPeriodo: TDate;
begin
  F160CTR.CodEmp := pIteracaoDadosFacade.USU_CodEmp;
  F160CTR.CodFIl := pIteracaoDadosFacade.CodFil;
  F160CTR.NumCtr := pIteracaoDadosFacade.NumCtr;
  F160CTR.PropertyForSelect(['CODEMP','CODFIL','NUMCTR'], True);
  F160CTR.Execute(etSelect);

  F160CTR.PropertyForSelect(['CODEMP','CODFIL','NUMCTR'], True);
  xMeses := F160CTR.MonthsBetween('INIVIG', Date);
  xPeriodo := F160CTR.IniVig;

  if (xMeses > 0) then
  begin
    i := Length(FListaFacade);
    Inc(i);
    SetLength(FListaFacade, i);
    FListaFacade[pred(i)].Registro := T000dbc.Create();
    TIterador.Repassar(F000DBC, FListaFacade[pred(i)].Registro);

    F000DBC.PropertyForSelect(['USU_CODDBC']);
    F000DBC.Execute(etSelect, esLoop);
    while (F000DBC.Next) do
      //A entrada do codigo do BC nao conta
      if (F000DBC.USU_SeqCot > 1) then
        FData.Add(DateToStr(StartOfTheMonth(F000DBC.USU_DatIni)));

    FListaFacade[pred(i)].Meses := TStringList.Create;

    while (xMeses > 0) do
    begin
      if (FData.IndexOf(DateToStr(StartOfTheMonth(xPeriodo))) = -1) then
      begin
        FListaFacade[pred(i)].Meses.Add(DateToStr(StartOfTheMonth(xPeriodo)));
        FData.Add(DateToStr(StartOfTheMonth(xPeriodo)));
      end;

      Dec(xMeses);
      xPeriodo := IncMonth(xPeriodo);
    end;
  end;
end;

{ TSubFaceAtualizarDados }

procedure TSubFaceAtualizarDados.Carregar(const p000dbc: T000dbc;
  const pWS: TSubFacadeConsumoBancoCentral);
begin
  pWS.ValorConsumo;
  p000dbc.USU_SeqCot := (p000dbc.USU_SeqCot + 1);
  p000dbc.USU_NomDbc := pWS.Consumo.Grid[0].nomeAbreviado;
  p000dbc.USU_DscDbc := pWS.Consumo.Grid[0].nomeCompleto;
  p000dbc.USU_PerDbc := pWS.Consumo.Grid[0].periodicidade[1];
  p000dbc.USU_FonDbc := pWS.Consumo.Grid[0].fonte;
  p000dbc.USU_DatIni := pWS.Data;
  p000dbc.USU_DatFin := pWS.Data;
  p000dbc.USU_DiaDbc := StrToInt(pWS.Consumo.Grid[0].dia);
  p000dbc.USU_MesDbc := StrToInt(pWS.Consumo.Grid[0].mes);
  p000dbc.USU_AnoDbc := StrToInt(pWS.Consumo.Grid[0].ano);
  p000dbc.USU_VlrDbc := StrToFloat(pWS.Consumo.Grid[0].valor);
  p000dbc.USU_NumPer := Periodicidade(pWS.Consumo.Grid[0].periodicidadeSigla[1]);
  p000dbc.Execute(estInsert);
end;

constructor TSubFaceAtualizarDados.Create;
begin
  inherited Create();

  F000DBC := T000dbc.Create();
end;

destructor TSubFaceAtualizarDados.Destroy;
begin
  inherited;

  FreeAndNil(F000DBC);
end;

procedure TSubFaceAtualizarDados.Execute(
  const pCodigos: TSubFacedeCodigosBancoCentral;
  const pWebService: TSubFacadeConsumoBancoCentral);
var
  i,j: Integer;
  x000dbc: T000dbc;
begin
  for i := 0 to High(pCodigos.ListaFacade) do
  begin
    x000dbc := T000dbc(pCodigos.ListaFacade[i].Registro);

    for j := 0 to pred(pCodigos.ListaFacade[i].Meses.Count) do
    begin
      pWebService.Data := StrToDate(pCodigos.ListaFacade[i].Meses[j]);
      pWebService.Codigo := x000dbc.USU_CodDbc;
      Self.Carregar(x000dbc, pWebService);
    end;
  end;
end;

function TSubFaceAtualizarDados.Periodicidade(const pSigla: Char): Byte;
begin
  Result := 0;

  case (pSigla) of
    'D': Result := 1;
    'M': Result := 4;
    'Q': Result := 3;
    'S': Result := 2;
    'A': Result := 8;
    'B': Result := 5;
    'T': Result := 6;
  end;
end;

{ TIteracaoDadosFacade }

function TIteracaoDadosFacade.GetCodFil: Integer;
begin
  Result := FCodFil;
end;

function TIteracaoDadosFacade.GetNumCtr: Integer;
begin
  Result := FNumCtr;
end;

procedure TIteracaoDadosFacade.SetCodFil(const Value: Integer);
begin
  FCodFil := Value;
end;

procedure TIteracaoDadosFacade.SetNumCtr(const Value: Integer);
begin
  FNumCtr := Value;
end;

end.
