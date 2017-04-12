unit oRotinaDDA;

interface

uses
  System.Classes, Data.SqlExpr, oQuery, oBase, oTitulo, System.SysUtils,
  Data.Db, System.Contnrs, oTabelas;

type
  TTituloArmazenamento = class(TTitulo)
  private
    FId: Integer;
    FIdArm: Integer;
    FCodFor: Integer;
    FLog: string;

    function GetId: Integer;
    function GetIdArm: Integer;
    function GetCodFor: Integer;

    procedure SetId(const pId: Integer);
    procedure SetIdArm(const pIdArm: Integer);
    procedure SetCodFor(const pCodFor: Integer);
  public
    constructor Create();

    procedure AddLog(const pMensagem: string);
    function Estado(): TEstadoTabela;

    property Id: Integer read GetId write SetId;
    property IdArm: Integer read GetIdArm write SetIdArm;
    property CodFor: Integer read GetCodFor write SetCodFor;
  end;

  TBaseTitulos = class
  private
    FListaArmazenamento: TIterador;
    FListaTituloGeral: TIterador;
    FListaTituloBanco: TIteradorAtualizarTitulos;
    FListaTituloGerar: TIteradorCriacaoTitulos;
    FListaEspecieTitulo: TIteradorEspecieTitulo;

    F510AGE: T510AGE;
    F095FOR: T095FOR;
    F510TIT: T510TIT;
    F510ARM: T510ARM;
    FCamposBuscaEmpFil: TArrayOfString;

    procedure MontaBuscaPadraoEmpFil();
    procedure MontaFiliais();
    procedure BuscarExistentes();
    procedure AtualizarTitulos();
    //procedure CriarTitulos();
    procedure AddTitulo();
    procedure Liberar();
    procedure GerarNovo(const pLinha: string = '');
    procedure GerarArmazenamento(const pNome: string);
    procedure Executar();
    procedure AtualizarArmazenamento();
  public
    constructor Create();
    destructor Destroy(); override;
  public
    property C510TIT: T510TIT read F510TIT;
    property C095FOR: T095FOR read F095FOR;
    property C510AGE: T510AGE read F510AGE;
    property C510ARM: T510ARM read F510ARM;
  end;

  TArmazenamento = class(TBaseTitulos)
  private
    FDiretorio: TSearchRec;
    F510TIT: T510TIT;
    FIterador: TIterador;

    procedure AddTitulo(const pLinha: string; const p510ARM: T510ARM); overload;
    procedure AddTitulo(const p510ARM: T510ARM); overload;
  public
    constructor Create();
    destructor Destroy(); override;

    procedure Processar();
  end;

implementation

uses
  Winapi.Windows;

{ TArmazenamento }

procedure TArmazenamento.AddTitulo(const pLinha: string; const p510ARM: T510ARM);
begin
  Self.GerarNovo(pLinha);
  if (Self.C510TIT.LinhaValida) then
  begin
    inherited AddTitulo();

    Self.C510TIT.SitArm := 'N';
    Self.C510TIT.IdArm := p510ARM.Id;
    Self.C510TIT.DefinirTipoTabela(True);
    Self.C510TIT.Executar(estInsert);
  end
  else
    Self.Liberar();
end;

procedure TArmazenamento.AddTitulo(const p510ARM: T510ARM);
begin
  F510TIT.Iniciar;
  F510TIT.IdArm := p510ARM.Id;
  F510TIT.DefinirSelecaoPropriedade(['IDARM'], True);
  F510TIT.AdicionarCondicao(' AND USU_SITARM <>  ''S''');
  F510TIT.Executar(estSelectLoop);

  while (F510TIT.Proximo) do
  begin
    Self.GerarNovo();
    FIterador.Iterar(F510TIT, Self.C510TIT);
    inherited AddTitulo();
  end;
end;

constructor TArmazenamento.Create();
var
  xLinha: string;
  xArqSai: string;
  xFile: TextFile;
  i: Integer;
begin
  inherited Create();
  F510TIT := T510TIT.CreateCarregado(True);
  FIterador := TIterador.Create;

  xArqSai := Self.C510AGE.DirArq;

  Self.MontaFiliais;
  Self.MontaBuscaPadraoEmpFil;

  if not(UltimoCaracter(xArqSai, '\', False)) then
    Self.C510AGE.DirArq := Self.C510AGE.DirArq + '\';

  i := FindFirst(Self.C510AGE.DirArq + '*.RET', faAnyFile, FDiretorio);
  while i = 0 do
  begin
    AssignFile(xFile, Self.C510AGE.DirArq + FDiretorio.Name);
    Self.GerarArmazenamento(FDiretorio.Name);

    if not(C510ARM.ArquivoExiste) then
    begin
      Reset(xFile);
      while not(Eof(xFile)) do
      begin
        ReadLn(xFile, xLinha);
        Self.AddTitulo(xLinha, C510ARM);
      end;
      CloseFile(xFile);
    end
    else
    if not(C510ARM.Armazenado) then
      Self.AddTitulo(C510ARM);

    i := FindNext(FDiretorio);
  end;
end;

destructor TArmazenamento.Destroy;
begin
  FreeAndNil(FIterador);
  FreeAndNil(F510TIT);

  inherited;
end;

procedure TArmazenamento.Processar;
begin
  Self.Executar();
  Self.AtualizarArmazenamento();
end;

{ TBaseTitulos }

procedure TBaseTitulos.AddTitulo;
var
  xTitulo: TTituloDDA;
begin
  if not(F510TIT.Carregado) then
    F095FOR.AdicionarFonecedor(F510TIT);

  if (F510TIT.CodFor > 0) then
    FListaTituloGeral.Add(F510TIT)
  else
  begin
    F510TIT.LogTit := Format('Fornecedor com o CNPJ: "%s" não existe!', [FloatToStr(F510TIT.CgcCpf)]);

    if (F510TIT.Id > 0) then
    begin
      xTitulo := TTituloDDA.Create();
      xTitulo.Anexar(F510TIT);
      xTitulo.GerarLog();
    end;
  end;
end;

procedure TBaseTitulos.Executar();
begin
  Self.BuscarExistentes();
  Self.AtualizarTitulos();
  //Self.CriarTitulos();
end;

procedure TBaseTitulos.AtualizarArmazenamento;
var
  i: Integer;
  x510TIT: T510TIT;
  x510ARM: T510ARM;
begin
  for i := 0 to pred(FListaArmazenamento.Count) do
  begin
    x510TIT := T510TIT.CreateCarregado;
    x510TIT.IdArm := T510ARM(FListaArmazenamento[i]).Id;
    x510TIT.SitArm := 'N';
    x510TIT.DefinirSelecaoPropriedade(['IDARM','SITARM'], True);
    if not(x510TIT.Executar(estSelect)) then
    begin
      x510ARM := T510ARM(FListaArmazenamento[i]);
      x510ARM.SitArm := 'S';
      x510ARM.DatFin := Date;
      x510ARM.DefinirSelecaoPropriedade(['ID']);
      x510ARM.Executar(estUpdate);

      if not(DirectoryExists(x510ARM.DirArm + 'DDA_BKP\')) then
        CreateDir(x510ARM.DirArm + 'DDA_BKP\');

      CopyFile(PWideChar(x510ARM.DirArm + x510ARM.NomArq), PWideChar(x510ARM.DirArm + 'DDA_BKP\' + x510ARM.NomArq), False);
      DeleteFile(PWideChar(x510ARM.DirArm + x510ARM.NomArq));
    end;
  end;
end;

procedure TBaseTitulos.AtualizarTitulos;
begin
  FListaTituloBanco.Atualizar();
end;

procedure TBaseTitulos.BuscarExistentes;
var
  i: Integer;
  x510Tit: T510TIT;
  xTitulo: TTituloDDA;
begin
  for i := 0 to pred(FListaTituloGeral.Count) do
  begin
    x510Tit := T510TIT(FListaTituloGeral[i]);
    F095FOR.CgcCpf := x510Tit.CgcCpf;

    xTitulo := TTituloDDA.Create();
    FListaTituloGeral.Iterar(x510Tit, xTitulo);
    xTitulo.CodFor := iff(x510Tit.CodFor = 0, F095FOR.CodigoDoFornecedor, x510Tit.CodFor);
    xTitulo.CodEmp := F510AGE.EmpGer;
    xTitulo.CodFil := F510AGE.FilGer;
    xTitulo.CodTpt := FListaEspecieTitulo.CarregarEspecie(x510Tit.CodTpt);
    xTitulo.CodPor := F510AGE.CodPor;

    xTitulo.Anexar(x510Tit);
    xTitulo.DefinirSelecaoPropriedade(FCamposBuscaEmpFil, True);

    if (xTitulo.Executar(estSelect)) then
      FListaTituloBanco.Add(xTitulo)
    else
    begin
      x510Tit.LogTit := 'Títlo não encontrado!';
      xTitulo.Anexar(x510Tit);
      xTitulo.GerarLog();

      //xTitulo.Preparar();
      //FListaTituloGerar.Add(xTitulo);
    end;
  end;

  FListaTituloGeral.Clear;
end;

constructor TBaseTitulos.Create;
begin
  inherited;

  FListaArmazenamento := TIterador.Create;
  FListaTituloGeral := TIterador.Create;
  FListaTituloBanco := TIteradorAtualizarTitulos.Create;
  FListaTituloGerar := TIteradorCriacaoTitulos.Create;
  FListaFilial := TListaFilial.Create;

  F095FOR := T095FOR.Create();
  F510AGE := T510AGE.Create('USU_T510AGE');
  F510AGE.DefinirTipoTabela(True);
  F510AGE.DesativarUsoParametro();
  F510AGE.DefinirSelecao(['USU_ID'], ['(SELECT USU_IDAGE FROM E000AGE WHERE CODPRA = 2447)']);
  F510AGE.Executar(estSelect);

  FListaEspecieTitulo := TIteradorEspecieTitulo.Create(F510AGE);
end;

{
procedure TBaseTitulos.CriarTitulos;
begin
  FListaTituloGerar.Criar();
end;}

destructor TBaseTitulos.Destroy;
begin
  FillChar(FCamposBuscaEmpFil, sizeOf(FCamposBuscaEmpFil), 0);

  FreeAndNil(FListaArmazenamento);
  FreeAndNil(FListaTituloGeral);
  FreeAndNil(FListaTituloBanco);
  FreeAndNil(FListaTituloGerar);
  FreeAndNil(FListaFilial);
  FreeAndNil(FListaEspecieTitulo);

  inherited;
end;

procedure TBaseTitulos.GerarArmazenamento(const pNome: string);
begin
  F510ARM := T510ARM.CreatePersonalizado(Self.C510AGE, pNome);

  if not(F510ARM.Armazenado) then
    FListaArmazenamento.Add(F510ARM);
end;

procedure TBaseTitulos.GerarNovo(const pLinha: string = '');
begin
  if (pLinha = EmptyStr) then
    F510TIT := T510TIT.CreateCarregado
  else
    F510TIT := T510TIT.Create(pLinha);
end;

procedure TBaseTitulos.Liberar;
begin
  FreeAndNil(F510TIT);
end;

procedure TBaseTitulos.MontaBuscaPadraoEmpFil;
begin
  case (F510AGE.EmpFil) of
    1:
    begin
      SetLength(FCamposBuscaEmpFil, 5);
      FCamposBuscaEmpFil[0] := 'CODEMP';
      FCamposBuscaEmpFil[1] := 'CODTPT';
      FCamposBuscaEmpFil[2] := 'CODFOR';
      FCamposBuscaEmpFil[3] := 'VCTORI';
      FCamposBuscaEmpFil[4] := 'VLRORI';
    end;

    2:
    begin
      SetLength(FCamposBuscaEmpFil, 6);
      FCamposBuscaEmpFil[0] := 'CODEMP';
      FCamposBuscaEmpFil[1] := 'CODFIL';
      FCamposBuscaEmpFil[2] := 'CODTPT';
      FCamposBuscaEmpFil[3] := 'CODFOR';
      FCamposBuscaEmpFil[4] := 'VCTORI';
      FCamposBuscaEmpFil[5] := 'VLRORI';
    end;
  else
    begin
      SetLength(FCamposBuscaEmpFil, 4);
      FCamposBuscaEmpFil[0] := 'CODTPT';
      FCamposBuscaEmpFil[1] := 'CODFOR';
      FCamposBuscaEmpFil[2] := 'VCTORI';
      FCamposBuscaEmpFil[3] := 'VLRORI';
    end;
  end;
end;

procedure TBaseTitulos.MontaFiliais;
begin
  case (F510AGE.EmpFil) of
    1: FListaFilial.AddEmpresaLogada(F510AGE.EmpGer);
    2: FListaFilial.AddEmpresaFilialLogada(F510AGE.EmpGer, F510AGE.FilGer);
    3: FListaFilial.AddTodas();
  end;
end;

{ TTituloArmazenamento }

procedure TTituloArmazenamento.AddLog(const pMensagem: string);
begin
  FLog := pMensagem;
end;

constructor TTituloArmazenamento.Create;
begin
  inherited Create('E501TCP');
  DefinirCampoNegado(['USU_ID','USU_IDARM']);

  FLog := EmptyStr;
end;

function TTituloArmazenamento.Estado: TEstadoTabela;
begin
  Result := iff(FLog = EmptyStr, estNenhum, estUpdate);
end;

function TTituloArmazenamento.GetCodFor: Integer;
begin
  Result := FCodFor;
end;

function TTituloArmazenamento.GetId: Integer;
begin
  Result := FId;
end;

function TTituloArmazenamento.GetIdArm: Integer;
begin
  Result := FIdArm;
end;

procedure TTituloArmazenamento.SetCodFor(const pCodFor: Integer);
begin
  FCodFor := pCodFor;
end;

procedure TTituloArmazenamento.SetId(const pId: Integer);
begin
  FId := pId;
end;

procedure TTituloArmazenamento.SetIdArm(const pIdArm: Integer);
begin
  FIdArm := pIdArm;
end;

end.
