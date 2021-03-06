unit oArmazenamento;

interface

uses
  System.Classes, Data.SqlExpr, oQuery, oBase, System.SysUtils, oLayout, oGeral,
  Data.Db, System.Contnrs, oReader, o510arm, o510age, o510tit, o501tcp;

type
  TIteradorAtualizarTitulos = class;
  TIteradorEspecieTitulo = class;

  TTitulosAssociacao = class(TSubTituloDebitoDiretoAutorizado)
  private
    FTitulos: string;
  public
    property Titulos: string read FTitulos write FTitulos;
  end;

  TIteradorAssociacao = class(TIterador)
  public
    constructor Create;
    destructor Destroy; override;

    procedure Adicionar(const titulo: TSubTituloDebitoDiretoAutorizado);
    function consistir(const titulo: TSubTituloDebitoDiretoAutorizado): string;
  end;

  TArmazenamento = class(T510ARM)
  private
    FListaAssociados: TIteradorAssociacao;
    FListaTituloGeral: TIterador;
    FListaArmazenamento: TIterador;
    F510TIT: TTituloDebitoDiretoAutorizado;
    FListaTituloBanco: TIteradorAtualizarTitulos;
    FListaEspecieTitulo: TIteradorEspecieTitulo;

    F510AGE: T510AGE;
    F095FOR: TFornecedor;
    FCgcCpf: Double;
    FLayout: TLayout;
    FArquivoExiste: Boolean;
    FCamposBuscaEmpFil: TArrayOfString;

    procedure AdicionarPath();
    procedure GerarArmazenamento(const pNome: string);

    procedure AddTitulo();
    procedure AdicaoPorArquivo(const pLinha: string; const p510ARM: T510ARM);

    function ArquivoExiste(): Boolean;
  public
    constructor Create(const pCodPra: Integer);
    destructor Destroy(); override;

    procedure Processar();
    procedure CarregarArquivos();
    procedure AtualizarArmazenamento();

    property Titulo: TTituloDebitoDiretoAutorizado read F510TIT;
    property Fornecedor: TFornecedor read F095FOR;
    property Agendamento: T510AGE read F510AGE;
  end;

  TIteradorAtualizarTitulos = class(TIterador)
  public
    procedure Atualizar();
  end;

  TIteradorEspecieTitulo = class(TIterador)
  private
    FCodBan: string;

    function GetCodBan: string;
    procedure SetCodBan(const pCodBan: string);
  public
    constructor Create(const p510AGE: T510AGE);

    function CarregarEspecie(const pEspBan: string): string;

    property CodBan: string read GetCodBan write SetCodBan;
  end;

implementation

uses
  o070fil, o510lte, o510mle;

{ TArmazenamento }

procedure TArmazenamento.AdicaoPorArquivo(const pLinha: string; const p510ARM: T510ARM);
var
  x070fil: T070FIL;
begin
  F510TIT := TTituloDebitoDiretoAutorizado.CreatePersonalizado(pLinha, FLayout);

  case (F510TIT.Registro.RegLay) of
    rlHeader:
    begin
      FListaFilial.EmpresaPorContribuinte(F510TIT.Registro.CgcCpf);
      FLogEmp := FListaFilial.CodEmp;
    end;

    rlLote:
    begin
      FCgcCpf := 0;
      x070fil := FListaFilial.DadosFilial(F510TIT.Registro.CgcCpf);

      if Assigned(x070fil) then
        FLogFil := x070fil.CodFil
      else
      begin
        FLogFil :=  0;
        FCgcCpf := F510TIT.Registro.CgcCpf;
      end;
    end;

    rlDetalhe:
    begin
      if (F510TIT.Registro.AdicionarRegistro) and (FLogFil > 0) then
      begin
        F510TIT.USU_CodEmp := FLogEmp;
        F510TIT.USU_CodFil := FLogFil;
        F510TIT.USU_SitArm := 'N';
        F510TIT.USU_IdArm := p510ARM.USU_ID;
        F510TIT.Insert;

        Self.AddTitulo();
      end
      else
      if (F510TIT.Registro.AdicionarRegistro) and (FLogFil = 0) then
      begin
        F510Tit.USU_LogTit := Format('Filial com o CNPJ "%s", n�o encontrada!', [FloatToStr(FCgcCpf)]);
        F510TIT.USU_CodEmp := FLogEmp;
        F510TIT.USU_CodFil := FLogFil;
        F510TIT.USU_SitArm := 'N';
        F510TIT.USU_IdArm := p510ARM.USU_ID;
        F510TIT.Insert;
      end;
    end;
  end;
end;

procedure TArmazenamento.AdicionarPath;
var
  xArqSai: string;
begin
  xArqSai := Self.Agendamento.USU_DirArq;

  if not(UltimoCaracter(xArqSai, '\', False)) then
    Self.Agendamento.USU_DirArq := Self.Agendamento.USU_DirArq + '\';
end;

{
  INFO > GerarArmazenamento
  Busca na pasta o arquivo, se encontrou carrega, se nao
  a rotina ira linha a linha inserir os dados pelo xReader > CarregarArquivos
}
function TArmazenamento.ArquivoExiste: Boolean;
var
  x510tit: TTituloDebitoDiretoAutorizado;
begin
  x510tit := nil;

  Result := FArquivoExiste;

  //Se o arquivo existe e ainda estiver com pendencias, carrega os titulos
  if (Result) and (AnsiSameText(Self.USU_SitArm, 'N')) then
  begin
    x510tit := TTituloDebitoDiretoAutorizado.CreateCarregado();
    try
      x510tit.Init;
      x510tit.AddToCommand(Format(' USU_SITARM <>  ''S'' AND USU_IDARM = %d', [Self.USU_ID]));
      x510tit.Open(False);

      while (x510tit.Next) do
      begin
        F510TIT := TTituloDebitoDiretoAutorizado.CreateCarregado();
        F510TIT.Assign(x510tit);

        Self.AddTitulo();
      end;
    finally
      FreeAndNil(x510tit);
    end;
  end;
end;

procedure TArmazenamento.CarregarArquivos;
var
  xReader: TFileReader;
begin
  xReader := TFileReader.Create;
  try
    xReader.PathToRead := (Self.Agendamento.USU_DirArq + '*.txt');
    xReader.First();
    while (xReader.LineExists) do
    begin
      xReader.Assingn(Self.Agendamento.USU_DirArq, True);
      Self.GerarArmazenamento(xReader.PathName);

      if not(ArquivoExiste()) then
      begin
        xReader.BeginRead;
        while (xReader.EndOfFile) do
          Self.AdicaoPorArquivo(xReader.Read, Self);

        xReader.Close;
      end;

      xReader.Next;
    end;
  finally
    FreeAndNil(xReader);
  end;
end;

constructor TArmazenamento.Create(const pCodPra: Integer);
begin
  inherited Create();

  Self.BlockProperty(['Titulo','Fornecedor','Agendamento']);

  F510AGE := T510AGE.Create();
  Self.Agendamento.USU_CodPra := pCodPra;
  Self.Agendamento.PropertyForSelect(['USU_CODPRA']);
  Self.Agendamento.Open(False);
  Self.Agendamento.Close;
  FListaArmazenamento := TIterador.Create;
  FListaTituloGeral := TIterador.Create;
  FListaTituloBanco := TIteradorAtualizarTitulos.Create;
  FListaFilial := TListaFilial.Create;
  F510TIT := TTituloDebitoDiretoAutorizado.CreateCarregado(True);
  F095FOR := TFornecedor.Create();
  FListaAssociados := TIteradorAssociacao.Create();

  FListaEspecieTitulo := TIteradorEspecieTitulo.Create(Self.Agendamento);
  FLayout := TLayout.Create(Self.Agendamento.USU_ID, 'USU_T510TIT');

  AdicionarPath();
end;

procedure TArmazenamento.Processar;
var
  i: Integer;
  xRaiz: string;
  xTitulos: string;
  x510Tit: TTituloDebitoDiretoAutorizado;
  xTitulo: TSubTituloDebitoDiretoAutorizado;

  procedure GerarLogTitulo(const pLog: string);
  begin
    if AnsiSameText(UpperCase(pLog), 'OK') then
    begin
      xTitulo.Init;
      xTitulo.USU_IDTIT := x510tit.USU_ID;
      xTitulo.CodBar := x510tit.USU_CodBar;
      xTitulo.Update();

      x510tit.USU_CodEmp := xTitulo.CodEmp;
      x510tit.USU_CodFil := xTitulo.CodFil;
      x510tit.USU_CodFor := xTitulo.CodFor;
      x510tit.USU_SitTit := xTitulo.SitTit;
      x510tit.USU_LogTit := pLog;
      x510tit.USU_SitArm := 'S';
      x510tit.Update();

      FListaAssociados.Adicionar(xTitulo);
    end
    else
    begin
      x510Tit.USU_LogTit := pLog;
      x510Tit.USU_SitArm := 'N';
      x510Tit.Update;
    end;
  end;

begin
  for i := 0 to pred(FListaTituloGeral.Count) do
  begin
    x510Tit := TTituloDebitoDiretoAutorizado(FListaTituloGeral[i]);
    F095FOR.CgcCpf := x510Tit.USU_CgcCpf;

    xTitulo := TSubTituloDebitoDiretoAutorizado.Create();
    xTitulo.CodEmp := x510Tit.USU_CodEmp;
    xTitulo.CodFil := x510Tit.USU_CodFil;
    xTitulo.CodTpt := FListaEspecieTitulo.CarregarEspecie(x510Tit.USU_CodTpt);
    xTitulo.CodFor := iff(x510Tit.USU_CodFor = 0, F095FOR.CodigoDoFornecedor, x510Tit.USU_CodFor);
    xTitulo.VctOri := x510Tit.USU_VctOri;
    xTitulo.VlrOri := x510Tit.USU_VlrOri;
    xTitulo.CodPor := Self.Agendamento.USU_CodPor;
    xTitulo.PropertyForSelect(['CODEMP','CODFIL','CODTPT','VLRORI','VCTORI','CODFOR']);

    if (IsNull(xTitulo.CodTpt)) then
    begin
      GerarLogTitulo(Format('Esp�cie banc�ria "%s" n�o localizada!', [x510Tit.USU_CodTpt]));
      Continue;
    end;

    xTitulos := FListaAssociados.consistir(xTitulo);

    if not(IsNull(xTitulos)) then
      xTitulo.AddToCommand(Format(' AND NOT(%s)', [xTitulos]));

    xTitulo.Open(False);

    if not(xTitulo.IsEmpty) then
      GerarLogTitulo(xTitulo.Consistir)
    else
    begin
      xRaiz := F095FOR.FornecedoresRaiz(x510Tit.USU_CodFor);

      if not(IsNull(xRaiz)) then
      begin
        xTitulo.Init;

        if not(IsNull(xTitulos)) then
          xTitulo.AddToCommand(Format(' AND NOT(%s)', [xTitulos]));

        xTitulo.AddToCommand('E501TCP.CODFOR IN ('+ xRaiz + ') AND ');
        xTitulo.PropertyForSelect(['CODEMP','CODFIL','CODTPT', 'VLRORI','VCTORI']);
        xTitulo.Open(False);

        if (xTitulo.IsEmpty) then
          GerarLogTitulo('T�tulo n�o encontrado!')
        else
          GerarLogTitulo(xTitulo.Consistir);
      end
      else
        GerarLogTitulo('T�tulo n�o encontrado!');
    end;

    xTitulo.Close;
  end;

  FListaTituloGeral.Clear;
end;

procedure TArmazenamento.AddTitulo;
begin
  F510TIT.USU_CodFor := F095FOR.AdicionarFonecedor(F510TIT.USU_CgcCpf);

  if (F510TIT.USU_CodFor > 0) then
    FListaTituloGeral.AddByClass(F510TIT, TTituloDebitoDiretoAutorizado.CreateCarregado())
  else
  begin
    F510TIT.USU_LogTit := Format('Fornecedor com o CNPJ: "%s" n�o existe!', [FloatToStr(F510TIT.USU_CgcCpf)]);

    if (F510TIT.USU_ID > 0) then
    begin
      F510TIT.USU_SitArm := 'N';
      F510TIT.Update;
    end;
  end;
end;

procedure TArmazenamento.AtualizarArmazenamento;
var
  i: Integer;
  x510TIT: TTituloDebitoDiretoAutorizado;
  x510ARM: T510ARM;
begin
  for i := 0 to pred(FListaArmazenamento.Count) do
  begin
    x510TIT := TTituloDebitoDiretoAutorizado.CreateCarregado;
    x510TIT.USU_IdArm := T510ARM(FListaArmazenamento[i]).USU_ID;
    x510TIT.USU_SitArm := 'N';
    x510TIT.PropertyForSelect(['USU_IDARM','USU_SITARM']);
    x510TIT.Open(False);

    if (x510TIT.IsEmpty) then
    begin
      x510ARM := T510ARM(FListaArmazenamento[i]);
      x510ARM.RemoverArquivo();
    end;

    x510TIT.Close;
  end;
end;

destructor TArmazenamento.Destroy;
begin
  FillChar(FCamposBuscaEmpFil, sizeOf(FCamposBuscaEmpFil), 0);

  FreeAndNil(F510TIT);
  FreeAndNil(FListaArmazenamento);
  FreeAndNil(FListaTituloGeral);
  FreeAndNil(FListaTituloBanco);
  FreeAndNil(FListaFilial);
  FreeAndNil(FListaEspecieTitulo);
  FreeAndNil(F510AGE);
  FreeAndNil(FListaAssociados);

  inherited;
end;

procedure TArmazenamento.GerarArmazenamento(const pNome: string);
var
  x510arm: T510ARM;
begin
  Self.ClearFields;
  Self.USU_CodPor := Self.Agendamento.USU_CodPor;
  Self.USU_NomArq := pNome;
  Self.USU_DatGer := Date;
  Self.PropertyForSelect(['USU_NOMARQ']);
  Self.Open(False);

  FArquivoExiste := not(Self.IsEmpty);

  if not(FArquivoExiste) then
  begin
    Self.USU_SitArm := 'N';

    x510arm := T510ARM.Create;
    x510arm.Assign(Self);
    x510arm.Init;
    x510arm.Insert;
    Self.USU_ID := x510arm.USU_ID;

    FListaArmazenamento.AddByClass(x510arm);
  end
  else
  if not(AnsiSameText(Self.USU_SitArm, 'S')) then
    FListaArmazenamento.AddByClass(Self, T510ARM.Create());

  Self.Close;
end;

{ TIteradorAtualizarTitulos }

procedure TIteradorAtualizarTitulos.Atualizar;
var
  i: Integer;
  xTitulo: TSubTituloDebitoDiretoAutorizado;
begin
  for i := 0 to pred(Self.Count) do
  begin
    xTitulo := TSubTituloDebitoDiretoAutorizado(Self[i]);
    xTitulo.Consistir();
    xTitulo.Processar();
  end;
end;

{ TIteradorEspecieTitulo }

function TIteradorEspecieTitulo.CarregarEspecie(const pEspBan: string): string;
var
 i: Integer;
 x510mle: T510MLE;
begin
  Result := EmptyStr;

  x510mle := T510MLE.Create;
  x510mle.USU_EspBan := pEspBan;

  i := Self.IndexOfFields(x510mle);

  if (i > -1) then
    Result := T510MLE(Self[i]).USU_CodTpt;
end;

constructor TIteradorEspecieTitulo.Create(const p510AGE: T510AGE);
var
  xQuery: THQuery;
  x510lte: T510LTE;
  x510mle: T510MLE;
begin
  inherited Create();

  Self.indexed := True;
  Self.IndexFields(['USU_ESPBAN']);

  xQuery := nil;
  x510lte := nil;
  try
    x510lte := T510lte.Create;
    xQuery := THQuery.CreatePersonalizado;

    xQuery.Command := 'SELECT CODBAN FROM E039POR WHERE CODEMP = :CODEMP AND CODPOR = :CODPOR ';
    xQuery.ParamByName('CODEMP').Value := FLogEmp;
    xQuery.ParamByName('CODPOR').Value := p510AGE.USU_CodPor;
    xQuery.Open;
    if not(xQuery.IsEmpty) then
      FCodBan := xQuery.FindField('CODBAN').AsString;

    xQuery.Close;
    x510lte.USU_CodBan := FCodBan;
    x510lte.PropertyForSelect(['USU_CodBan']);
    x510lte.Open(False);
    x510lte.Close;

    if not(x510lte.IsEmpty) then
    begin
      x510mle := T510MLE.Create;
      x510mle.USU_IdeLte := x510lte.USU_ID;
      x510mle.PropertyForSelect(['USU_IdeLte']);
      x510mle.Open(False);

      while (x510mle.Next) do
        Self.AddByClass(x510mle);

      x510mle.Close;
    end;
  finally
    FreeAndNil(xQuery);
    FreeAndNil(x510lte);
    FreeAndNil(x510mle);
  end;
end;

function TIteradorEspecieTitulo.GetCodBan: string;
begin
  Result := FCodBan;
end;

procedure TIteradorEspecieTitulo.SetCodBan(const pCodBan: string);
begin
  FCodBan := pCodBan;
end;

{ TIteradorAssociacao }

procedure TIteradorAssociacao.Adicionar(
  const titulo: TSubTituloDebitoDiretoAutorizado);
var
  i: Integer;
  xTitulo: TTitulosAssociacao;
begin
  xTitulo := TTitulosAssociacao.Create;
  xTitulo.Assign(titulo);

  i := Self.IndexOfFields(xTitulo);

  if (i > -1) then
    TTitulosAssociacao(Self[i]).Titulos := TTitulosAssociacao(Self[i]).Titulos + ' OR (NUMTIT = ''' + titulo.NumTit + ''')'
  else
  begin
    xTitulo.Titulos := '(NUMTIT = ''' + titulo.NumTit + ''')';
    Self.Add(xTitulo);
  end;
end;

function TIteradorAssociacao.consistir(
  const titulo: TSubTituloDebitoDiretoAutorizado): string;
var
  i: Integer;
  xTitulo: TTitulosAssociacao;
begin
  xTitulo := TTitulosAssociacao.Create;
  xTitulo.Assign(titulo);
  Result := emptyStr;

  i := Self.IndexOfFields(xTitulo);

  if (i > -1) then
    Result := TTitulosAssociacao(Self[i]).Titulos
end;

constructor TIteradorAssociacao.Create;
begin
  inherited Create;

  Self.indexed := True;
  Self.IndexFields(['CODEMP','CODFIL','CODTPT','VLRORI','VCTORI','CODFOR']);
end;

destructor TIteradorAssociacao.Destroy;
begin
  inherited;
end;

end.
