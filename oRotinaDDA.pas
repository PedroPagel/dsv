unit oRotinaDDA;

interface

uses
  System.Classes, Data.SqlExpr, oQuery, oBase, oTitulo, System.SysUtils,
  Data.Db, System.Contnrs, oTabelas, oReader;

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
    function Estado(): TTableState;

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
    procedure Execute();
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

{ TArmazenamento }

procedure TArmazenamento.AddTitulo(const pLinha: string; const p510ARM: T510ARM);
begin
  Self.GerarNovo(pLinha);
  if (Self.C510TIT.LinhaValida) then
  begin
    inherited AddTitulo();

    Self.C510TIT.USU_SitArm := 'N';
    Self.C510TIT.USU_IdArm := p510ARM.USU_ID;
    Self.C510TIT.Execute(estInsert);
  end
  else
    Self.Liberar();
end;

procedure TArmazenamento.AddTitulo(const p510ARM: T510ARM);
begin
  F510TIT.Start;
  F510TIT.USU_IdArm := p510ARM.USU_ID;
  F510TIT.PropertyForSelect(['USU_IDARM'], True);
  F510TIT.AddToCommand(' AND USU_SITARM <>  ''S''', False);
  F510TIT.Execute(etSelect, esLoop);

  while (F510TIT.Next) do
  begin
    Self.GerarNovo();
    FIterador.Iterar(F510TIT, Self.C510TIT);
    inherited AddTitulo();
  end;
end;

constructor TArmazenamento.Create();
var
  xArqSai: string;
  xReader: oReader.TFileReader;
begin
  inherited Create();

  F510TIT := nil;
  xReader := nil;
  FIterador := nil;
  try
    FIterador := TIterador.Create;
    xReader := TFileReader.Create();
    F510TIT := T510TIT.CreateCarregado(True);

    xArqSai := Self.C510AGE.USU_DirArq;

    Self.MontaFiliais;
    Self.MontaBuscaPadraoEmpFil;

    if not(UltimoCaracter(xArqSai, '\', False)) then
      Self.C510AGE.USU_DirArq := Self.C510AGE.USU_DirArq + '\';

    xReader.PathToRead := (Self.C510AGE.USU_DirArq + '*.RET');

    xReader.First();
    while (xReader.LineExists) do
    begin
      xReader.Assingn(Self.C510AGE.USU_DirArq, True);
      Self.GerarArmazenamento(xReader.PathName);

      if not(C510ARM.ArquivoExiste) then
      begin
        xReader.BeginRead;
        while (xReader.EndOfFile) do
          Self.AddTitulo(xReader.Read, C510ARM);

        xReader.Close;
      end
      else
      if not(C510ARM.Armazenado) then
        Self.AddTitulo(C510ARM);

      xReader.Next;
    end;
  finally
    FreeAndNil(xReader);
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
  Self.Execute();
  Self.AtualizarArmazenamento();
end;

{ TBaseTitulos }

procedure TBaseTitulos.AddTitulo;
var
  xTitulo: TTituloDDA;
begin
  F095FOR.AdicionarFonecedor(F510TIT);

  if (F510TIT.USU_CodFor > 0) then
    FListaTituloGeral.Add(F510TIT)
  else
  begin
    F510TIT.USU_LogTit := Format('Fornecedor com o CNPJ: "%s" não existe!', [FloatToStr(F510TIT.USU_CgcCpf)]);

    if (F510TIT.USU_ID > 0) then
    begin
      xTitulo := TTituloDDA.Create();
      xTitulo.Anexar(F510TIT);
      xTitulo.GerarLog();
    end;
  end;
end;

procedure TBaseTitulos.Execute();
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
    x510TIT.USU_IdArm := T510ARM(FListaArmazenamento[i]).USU_ID;
    x510TIT.USU_SitArm := 'N';
    x510TIT.PropertyForSelect(['USU_IDARM','USU_SITARM'], True);

    if not(x510TIT.Execute(etSelect)) then
    begin
      x510ARM := T510ARM(FListaArmazenamento[i]);
      x510ARM.RemoverArquivo();
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
    F095FOR.CgcCpf := x510Tit.USU_CgcCpf;

    xTitulo := TTituloDDA.Create();
    xTitulo.CodEmp := F510AGE.USU_EmpGer;
    xTitulo.CodFil := F510AGE.USU_FilGer;
    xTitulo.CodTpt := FListaEspecieTitulo.CarregarEspecie(x510Tit.USU_CodTpt);
    xTitulo.CodFor := iff(x510Tit.USU_CodFor = 0, F095FOR.CodigoDoFornecedor, x510Tit.USU_CodFor);
    xTitulo.VctOri := x510Tit.USU_VctOri;
    xTitulo.VlrOri := x510Tit.USU_VlrOri;
    xTitulo.CodPor := F510AGE.USU_CodPor;
    xTitulo.Anexar(x510Tit);
    xTitulo.PropertyForSelect(['CODEMP','VLRORI','VCTORI','CODFOR'], True);

    if (xTitulo.Execute(etSelect)) then
      FListaTituloBanco.Add(xTitulo)
    else
    begin
      xTitulo.Start;
      xTitulo.AddToCommand('E501TCP.CODFOR IN ('+ F095FOR.FornecedoresRaiz + ') AND ');
      xTitulo.PropertyForSelect(['CODEMP','VLRORI','VCTORI'], True);

      if not(xTitulo.Execute(etSelect)) then
      begin
        x510Tit.USU_LogTit := 'Título não encontrado!';
        xTitulo.Anexar(x510Tit);
        xTitulo.GerarLog();
      end
      else
        FListaTituloBanco.Add(xTitulo);
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
  F510AGE.USU_EmpGer := FLogEmp;
  F510AGE.USU_FilGer := FLogFil;
  F510AGE.PropertyForSelect(['USU_EMPGER','USU_FILGER'], True);
  F510AGE.Execute(etSelect);

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
  case (F510AGE.USU_EmpFil) of
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
  case (F510AGE.USU_EmpFil) of
    1: FListaFilial.AddEmpresaLogada(F510AGE.USU_EmpGer);
    2: FListaFilial.AddEmpresaFilialLogada(F510AGE.USU_EmpGer, F510AGE.USU_FilGer);
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
  BlockProperty(['USU_ID','USU_IDARM']);

  FLog := EmptyStr;
end;

function TTituloArmazenamento.Estado: TTableState;
begin
  Result := iff(FLog = EmptyStr, etNone, estUpdate);
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
