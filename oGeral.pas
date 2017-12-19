unit oGeral;

interface

uses
  oBase, o070fil, System.SysUtils, System.Classes, System.Contnrs, o501tcp,
  oLayout, Data.SqlExpr, oQuery, Data.Db, o510age, o510arm, o095for, o510tit,
  o095hfo, o000dbc, o160mov;

CONST
  FCODIGO = 'Código';
  FPOSICAO = 9;

type
  TRegistro = record
    Codigo: Integer;
    Descricao: string;
    Linha: Integer;
  end;

  TSubTituloDebitoDiretoAutorizado = class; //foward

  TListaFilial = class(T070FIL)
  private
    FLista: TIterador;
  public
    constructor Create();
    destructor Destroy(); override;

    function DadosFilial(const pNumCgc: Double): T070FIL; overload;
    function DadosFilial(const pCodEmp: Integer; const pCodFil: Integer): T070FIL; overload;

    procedure EmpresaPorContribuinte(const pNumCgc: Double);
  end;

  TListFil = class
  public
    class var FListaFilial: TListaFilial;
  end;

  TFornecedor = class(T095FOR)
  private
    FRaiz: string;
    FLista: TStringList;
    FIterador: TIterador;

    function ListaInternaFornecedores: string;
    function ListaFornecedores: string;
    function BuscarPorCNPJ(const pCNPJ: Double): string;
  public
    constructor Create();
    constructor CreatePersonalizado(const pCgcCpf: Double);
    destructor Destroy(); override;

    procedure CarregarFornecedores();
    function AdicionarFonecedor(const pCgcCpf: Double): Integer;

    function CodigoDoFornecedor: Integer;
    function FornecedoresRaiz(const pCodFor: Integer): string;
  end;

  TIteradorHistoricoFornecedor = class(TIterador)
  public
    function BuscarHistoricoFornecedor(const pTitulo: T501TCP) : T095HFO;
  end;

   TTituloDebitoDiretoAutorizado = class(T510TIT)
   private
    FCarregado: Boolean;
    FCodReg: TCodReg;
    FTituloDebitoDiretoAutorizado: TSubTituloDebitoDiretoAutorizado;
   public
    constructor Create();
    constructor CreatePersonalizado(const pLinha: string; const pLayout: TLayout);
    destructor Destroy(); override;

    constructor CreateCarregado(const pUsaID: Boolean = False);

    function Carregado: Boolean;
    function Registro: TCodReg;
    function Titulo: TSubTituloDebitoDiretoAutorizado;

    procedure Alterar();
    procedure ConsultarTitulo();
    procedure Excluir(const pID: Integer);
   end;

   TSubTituloDebitoDiretoAutorizado = class(T501TCP)
   private
     FListaHistorico: TIterador;
     FFilial: T070FIL;
     FIteradorHistoricoFornecedor: TIteradorHistoricoFornecedor;

     function GetFilial: T070FIL;
     function VerificarCodigoDeBarras(): Boolean;
     function VerificarContabilizacao(): Boolean;
     procedure SetFilial(const pFilial: T070FIL);
   public
     constructor Create();
     destructor Destroy(); override;

     function Consistir(): string;
     procedure Processar();
     procedure Preparar();

     property Filial: T070FIL read GetFilial write SetFilial;
  end;

  TMovimentoContrato = class(T160MOV)
  public
    procedure GerarMovimento();
  end;

var
  FListaFilial: TListaFilial;

implementation

uses
  System.Variants, o501mcp, oReader;

{ TListaFilial }

constructor TListaFilial.Create;
begin
  inherited Create();

  FLista := TIterador.Create();
  FLista.indexed := True;
  FLista.IndexFields(['CODEMP']);
end;

function TListaFilial.DadosFilial(const pCodEmp: Integer;
  const pCodFil: Integer): T070FIL;
var
  i: Integer;
begin
  Result := nil;

  for i := 0 to pred(Self.Count) do
  begin
    if (T070FIL(FLista[i]).CodEmp = pCodEmp) and
      (T070FIL(FLista[i]).CodFil = pCodFil) then
    begin
      Result := T070FIL.Create;
      Result.Assign(T070FIL(FLista[i]));

      Break;
    end;
  end;
end;

function TListaFilial.DadosFilial(const pNumCgc: Double): T070FIL;
var
  i: Integer;
begin
  Result := nil;

  for i := 0 to pred(FLista.Count) do
  begin
    if (T070FIL(FLista[i]).CodEmp = Self.CodEmp) and
      (T070FIL(FLista[i]).NumCgc = pNumCgc) then
    begin
      Result := T070FIL.Create;
      Result.Assign(T070FIL(FLista[i]));

      Break;
    end;
  end;
end;

destructor TListaFilial.Destroy;
begin
  inherited;

  FreeAndNil(FLista);
end;


procedure TListaFilial.EmpresaPorContribuinte(const pNumCgc: Double);
var
  xRaiz: string;
begin
  xRaiz := FloatToStrF(pNumCgc, ffFixed, 14, 0);
  xRaiz := '''%' + Copy(xRaiz, 1, 8) + '%''';

  Self.Init;
  Self.ClearFields;
  Self.AddToCommand(Format('NUMCGC LIKE %s', [xRaiz]));
  Self.Open(False);

  if (FLista.IndexOf(IntToStr(Self.CodEmp)) = -1) then
  begin
    while (Self.Next) do
      FLista.AddByClass(Self);
  end;

  Self.Close;
end;

{ T095FOR }

function TFornecedor.AdicionarFonecedor(const pCgcCpf: Double): Integer;
var
  i: Integer;
  xAchou: Boolean;
  x095FOR: TFornecedor;
begin
  xAchou := False;
  x095FOR := nil;

  for i := 0 to pred(FIterador.Count) do
  begin
    if (pCgcCpf = (TFornecedor(FIterador[i]).CgcCpf)) then
    begin
      xAchou := True;
      x095FOR := TFornecedor(FIterador[i]);
      Break;
    end;
  end;

  if not(xAchou) then
  begin
    x095FOR := TFornecedor.CreatePersonalizado(pCgcCpf);
    x095FOR.CarregarFornecedores;
    FIterador.Add(x095FOR);
  end;

  Result := x095FOR.CodFor;
end;

function TFornecedor.BuscarPorCNPJ(const pCNPJ: Double): string;
begin
  FRaiz := FloatToStrF(pCNPJ, ffFixed, 14, 0);
  FRaiz := Copy(FRaiz, 1, 8) + '%';

  Result := 'SELECT E095FOR.CODFOR AS ORIGINAL, 0 AS RAIZ ' +
              'FROM E095FOR ' +
              'WHERE E095FOR.CGCCPF = :CGCCPF ' +
            'UNION ALL ' +
            'SELECT 0 AS ORIGINAL, E095FOR.CODFOR AS RAIZ ' +
              'FROM E095FOR ' +
              'WHERE '+
              'E095FOR.CGCCPF LIKE (:RAIZFOR) AND '+
              'E095FOR.CGCCPF <> :CGCRAIZ ' +
            'ORDER BY RAIZ ASC ';
end;

procedure TFornecedor.CarregarFornecedores;
var
  xQuery: THQuery;
  xRaiz: Integer;
begin
  xQuery := THQuery.CreatePersonalizado();
  try
    xQuery.SQL.Clear;
    xQuery.Command := BuscarPorCNPJ(CgcCpf);

    xQuery.ParamByName('CGCCPF').Value := CgcCpf;
    xQuery.ParamByName('CGCRAIZ').Value := CgcCpf;
    xQuery.ParamByName('RAIZFOR').Value := FRaiz;
    xQuery.Open;
    while not(xQuery.Eof) do
    begin
      if (xQuery.FindField('ORIGINAL').AsInteger > 0) then
        CodFor := xQuery.FindField('ORIGINAL').AsInteger;

      xRaiz := xQuery.FindField('RAIZ').AsInteger;

      if ((FLista.IndexOf(IntToStr(xRaiz)) = -1) and (xRaiz > 0)) then
        FLista.Add(IntToStr(xRaiz));

      xQuery.Next;
    end;

    xQuery.Close;
  finally
    FreeAndNil(xQuery);
  end;
end;

function TFornecedor.CodigoDoFornecedor: Integer;
var
  i: Integer;
begin
  Result := 0;

  for i := 0 to pred(FIterador.Count) do
  begin
    if (CgcCpf = (TFornecedor(FIterador[i]).CgcCpf)) then
    begin
      Result := TFornecedor(FIterador[i]).CodFor;
      Break;
    end;
  end;
end;

constructor TFornecedor.Create;
begin
  inherited Create();

  FLista := TStringList.Create;

  FIterador := TIterador.Create();
  FIterador.indexed := True;
  FIterador.IndexFields(['CODFOR'])
end;

constructor TFornecedor.CreatePersonalizado(const pCgcCpf: Double);
begin
  inherited Create();

  Self.CgcCpf := pCgcCpf;
  FLista := TStringList.Create;

  FIterador := TIterador.Create();
end;

destructor TFornecedor.Destroy;
begin
  FreeAndNil(FLista);
  FreeAndNil(FIterador);

  inherited;
end;

function TFornecedor.ListaFornecedores: string;
var
  i: Integer;
begin
  Result := EmptyStr;

  if (Assigned(FLista)) then
  begin
    i := FIterador.IndexOfFields(Self);

    if (i > -1) then
      Result := TFornecedor(FIterador[i]).ListaInternaFornecedores;
  end;

  UltimoCaracter(Result, ',');
end;

function TFornecedor.ListaInternaFornecedores: string;
var
  i: Integer;
begin
  Result := EmptyStr;

  for i := 0 to pred(FLista.Count) do
    Result := Result + FLista[i] + ',';
end;

function TFornecedor.FornecedoresRaiz(const pCodFor: Integer): string;
begin
  if (pCodFor > 0) then
    CodFor := pCodFor;

  Result := Self.ListaFornecedores;
end;

{ TMovimentoContrato}

procedure TMovimentoContrato.GerarMovimento;
var
  xReajuste: Double;
  xBonificacao: Double;
begin
  xReajuste := Self.USU_VlrRea;
  xBonificacao := Self.USU_VlrBon;

  Self.PropertyForSelect(['USU_IDCLP','USU_CODEMP','USU_CODFIL','USU_NUMTIT','USU_CODTPT'], True);
  Self.Open();

  if not(Self.IsEmpty) then
  begin
    Self.AddToCommand(SetOperator(['USU_IDCLP','USU_CODEMP','USU_CODFIL','USU_NUMTIT','USU_CODTPT'],
                        [IntToStr(Self.USU_IDCLP), IntToStr(USU_CodEmp), IntToStr(USU_CodFil),
                         QuotedStr(Self.USU_NumTit), QuotedStr(Self.USU_CodTpt)], True), False);
    Self.USU_SeqMov := GenerateID('USU_SeqMov');
  end
  else
    Self.USU_SeqMov := 1;

  Self.USU_VlrRea := xReajuste;
  Self.USU_VlrBon := xBonificacao;
  Self.Insert();
end;



{ TTituloDebitoDiretoAutorizado }

function TSubTituloDebitoDiretoAutorizado.Consistir(): string;
var
  xHistorico: T095HFO;

  procedure AddLog(const pLog: string);
  begin
    if not(IsNull(Result)) then
    begin
      if not(Length(Result + pLog) > 950) then
        Result := Result + ' - ' + pLog;
    end
    else
      Result := pLog;
  end;

begin
  Result := EmptyStr;

  if (BuscarString(Self.SitTit, ['AI','LQ','LP','LX','LI','LM','LS','PE','LC','LO','LV'])) then
      AddLog(Format('Alteração não permitida. Título com situação igual a %s não pode ser alterado.', [Self.SitTit]));

  if (Self.VlrOri <> Self.VlrAbe) then
    AddLog('Alteração não permitida. Título já possui baixas.');

  xHistorico := FIteradorHistoricoFornecedor.BuscarHistoricoFornecedor(Self);

  if (Assigned(xHistorico) and (xHistorico.CodPor = EmptyStr)) then
    AddLog(Format('Alteração não permitida. Não foi possível localizar Histórico do Fornecedor %d para Filial %d.',
                       [Self.CodFor,Self.CodFil]));

  if (VerificarCodigoDeBarras) then
    AddLog(Format('Código de Barras "%s" já cadastrado para o título: Filial %d, Número %s, Tipo %s e Fornecedor %d',
      [Self.CodBar, Self.CodFil, Self.NumTit, Self.CodTpt, Self.CodFor]));

  if (VerificarContabilizacao) then
    AddLog('Alteração não permitida. Movimento de Entrada do Título já está contabilizado.');

  if (AnsiSameText(Self.CodPor, xHistorico.CodPor) and AnsiSameText(Self.CodPor, FFilial.RecPor)) then
    AddLog('Alteração não permitida. Título não está em Portador Empresa ou Portador Fornecedor.');

  if IsNull(Result) then
    AddLog('Ok');
end;

constructor TSubTituloDebitoDiretoAutorizado.Create;
begin
  inherited Create();

  FFilial := T070FIL.Create;
  BlockProperty(['NomArq', 'Filial']);
  FListaHistorico := TIterador.Create;
  FIteradorHistoricoFornecedor := TIteradorHistoricoFornecedor.Create;
end;

destructor TSubTituloDebitoDiretoAutorizado.Destroy;
begin
  FreeAndNil(FIteradorHistoricoFornecedor);
  FListaHistorico.Clear;
  FreeAndNil(FFilial);

  inherited;
end;

function TSubTituloDebitoDiretoAutorizado.GetFilial: T070FIL;
begin
  Result := FFilial;
end;

procedure TSubTituloDebitoDiretoAutorizado.Preparar;
var
  xHistorico: T095HFO;
begin
  FFilial :=  FListaFilial.DadosFilial(Self.CodEmp, Self.CodFil);
  xHistorico := FIteradorHistoricoFornecedor.BuscarHistoricoFornecedor(Self);

  if (Assigned(xHistorico)) then
  begin
    Self.PerMul := iff((xHistorico.PagMul > 0), xHistorico.PagMul, FFilial.PagMul);
    Self.TolMul := iff((xHistorico.PagDtm > 0), xHistorico.PagDtm, FFilial.PagDtm);
    Self.PerJrs := iff((xHistorico.PagJmm > 0), xHistorico.PagJmm, FFilial.PagJmm);
    Self.TolJrs := iff((xHistorico.PagDtj > 0), xHistorico.PagDtj, FFilial.PagDtj);
    Self.TipJrs := VarToChar(iff(not(IsNull(xHistorico.PagTir)), xHistorico.PagTir, FFilial.PagTjr));
    Self.CodCrt := iff(not(IsNull(xHistorico.CodCrt)), xHistorico.CodCrt, FFilial.RecCrt);
    Self.CodPor := iff(not(IsNull(xHistorico.CodPor)), xHistorico.CodPor, FFilial.RecPor);
    Self.AntDsc := xHistorico.AntDsc;
    Self.PerDsc := xHistorico.PerDsc;
    Self.TolDsc := xHistorico.TolDsc;
    Self.CodCrp := xHistorico.CodCrp;

    if	(xHistorico.CodFpg > 0) then
      Self.CodFpg := xHistorico.CodFpg;
  end;
end;

procedure TSubTituloDebitoDiretoAutorizado.Processar;
begin            {
  if (AnsiSameText(F510TIT.USU_LogTit,'Ok')) then
  begin

  end
  else
    GerarLog();             }
end;

procedure TSubTituloDebitoDiretoAutorizado.SetFilial(const pFilial: T070FIL);
begin
  FFilial.Assign(pFilial);
end;

function TSubTituloDebitoDiretoAutorizado.VerificarCodigoDeBarras: Boolean;
var
  xQuery: THQuery;
begin
  Result := False;

  xQuery := THQuery.CreatePersonalizado();
  try
    if not(IsNull(Self.CodBar)) then
    begin
      xQuery.Command := 'SELECT CODEMP, CODFIL, CODFOR, NUMTIT, CODTPT FROM E501TCP '+
                        'WHERE CODBAR = :CODBAR AND '+
                          'NOT(CODEMP = :CODEMP AND '+
                              'CODFIL = :CODFIL AND '+
                              'NUMTIT = :NUMTIT AND '+
                              'CODTPT = :CODTPT AND '+
                              'CODFOR = :CODFOR) ';

      xQuery.ParamByName('CODBAR').Value := Self.CodBar;
      xQuery.ParamByName('CODEMP').Value := Self.CodEmp;
      xQuery.ParamByName('CODFIL').Value := Self.CodFil;
      xQuery.ParamByName('NUMTIT').Value := Self.NumTit;
      xQuery.ParamByName('CODTPT').Value := Self.CodTpt;
      xQuery.ParamByName('CODFOR').Value := Self.CodFor;
      xQuery.Open;
      Result := not(xQuery.IsEmpty);

      if (Result) then
      begin
        Self.CodEmp := xQuery.FindField('CODEMP').AsInteger;
        Self.CodFil := xQuery.FindField('CODFIL').AsInteger;
        Self.NumTit := xQuery.FindField('NUMTIT').AsString;
        Self.CodTpt := xQuery.FindField('CODTPT').AsString;
        Self.CodFor := xQuery.FindField('CODFOR').AsInteger;
      end;
      xQuery.Close;
    end;
  finally
    FreeAndNil(xQuery);
  end;
end;

function TSubTituloDebitoDiretoAutorizado.VerificarContabilizacao: Boolean;
var
  x501MCP: T501MCP;
begin
  x501MCP := T501MCP.Create();
  try
    x501MCP.CodEmp := Self.CodEmp;
    x501MCP.CodFil := Self.CodFil;
    x501MCP.NumTit := Self.NumTit;
    x501MCP.CodFor := Self.CodFor;
    x501MCP.CodTpt := Self.CodTpt;
    x501MCP.DatPgt := 0;
    x501MCP.VlrMov := 0;
    x501MCP.PropertyForSelect(['CODEMP','CODFIL','NUMTIT','CODFOR','DATPGT'], True);
    x501MCP.AddToCommand('AND NUMLOT > 0 AND VLRMOV > 0', False);
    x501MCP.Open(False);
  	Result := x501MCP.IsEmpty;

    x501MCP.Close;
  finally
    FreeAndNil(x501MCP);
  end;
end;

{ TIteradorHistoricoFornecedor }

function TIteradorHistoricoFornecedor.BuscarHistoricoFornecedor(
  const pTitulo: T501TCP): T095HFO;
var
  i: Integer;
  xHistorico: T095HFO;
  xAchou: Boolean;
begin
  xAchou := False;
  Result := nil;

  for i := 0 to pred(Self.Count) do
  begin
    xHistorico := T095HFO(Self[i]);

    if (xHistorico.CodEmp = pTitulo.CodEmp) and (xHistorico.CodFil = pTitulo.CodFil) and
       (xHistorico.CodFor = pTitulo.CodFor) then
    begin
      Result := xHistorico;
      Break;
    end;
  end;

  if not(xAchou) then
  begin
    xHistorico := T095HFO.Create;
    xHistorico.CodEmp := pTitulo.CodEmp;
    xHistorico.CodFil := pTitulo.CodFil;
    xHistorico.CodFor := pTitulo.CodFor;
    xHistorico.Open();
    xHistorico.Close;

    Result := xHistorico;

    Self.Add(Result);
  end;
end;

{ TTituloDebitoDiretoAutorizado }

constructor TTituloDebitoDiretoAutorizado.Create();
begin
  inherited Create();

  FCarregado := False;
end;

destructor TTituloDebitoDiretoAutorizado.Destroy();
begin
  inherited;
  Self.Close;

  FreeAndNil(FTituloDebitoDiretoAutorizado);
end;

constructor TTituloDebitoDiretoAutorizado.CreateCarregado(const pUsaID: Boolean = False);
begin
  inherited Create();

  FCarregado := True;

  if not(pUsaID) then
    BlockProperty(['USU_IDARM']);
end;

constructor TTituloDebitoDiretoAutorizado.CreatePersonalizado(const pLinha: string;
  const pLayout: TLayout);
begin
  inherited Create();

  FCarregado := False;

  FillChar(FCodReg, SizeOf(FCodReg), 0);
  FCodReg.Posicao := 14;
  FCodReg.Tamanho := 1;
  FCodReg.Campo := 'CodReg';
  FCodReg.Registro1 := 'G';
  FCodReg := pLayout.AdicionarLinhas(pLinha, Self, FCodReg);
end;

procedure TTituloDebitoDiretoAutorizado.Alterar;
begin
  FTituloDebitoDiretoAutorizado.PropertyForSelect(['USU_IDTIT']);
  FTituloDebitoDiretoAutorizado.Update();
end;

function TTituloDebitoDiretoAutorizado.Carregado: Boolean;
begin
  Result := FCarregado;
end;

procedure TTituloDebitoDiretoAutorizado.ConsultarTitulo;
begin
  if not(Assigned(FTituloDebitoDiretoAutorizado))  then
  begin
    FTituloDebitoDiretoAutorizado := TSubTituloDebitoDiretoAutorizado.Create;
    FTituloDebitoDiretoAutorizado.USU_IDTIT := Self.USU_ID;
    FTituloDebitoDiretoAutorizado.PropertyForSelect(['USU_IDTIT'], True);
    FTituloDebitoDiretoAutorizado.Open();
  end;
end;

procedure TTituloDebitoDiretoAutorizado.Excluir(const pID: Integer);
begin
  Self.Init;
  Self.USU_IdArm := pID;
  Self.Delete;
end;

function TTituloDebitoDiretoAutorizado.Registro: TCodReg;
begin
  Result := FCodReg;
end;

function TTituloDebitoDiretoAutorizado.Titulo: TSubTituloDebitoDiretoAutorizado;
begin
  Result := FTituloDebitoDiretoAutorizado;
end;

end.
