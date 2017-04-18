unit oConsulta;

interface

uses
  System.Classes, Data.SqlExpr, oQuery, oBase, oTitulo, System.SysUtils,
  Data.Db, System.Contnrs, oTabelas, oMensagem;

type
  T510CON = class(T510ARM)
  private
    FQuery: THQuery;
    FListaArm: TIterador;
    FListaTit: TIterador;
    F510CAD: T510CAD;
    FLOG: string;

    function BuscarArmazenados(const pCondicao: string): Boolean;
    procedure Deletar();
    procedure Consistir(const p510CON: T510CON);
  public
    constructor Create();
    destructor Destroy(); override;

    procedure Consultar(const pCondicao: string);
    procedure MarcarDesmarcar(const pValue: Byte);
    procedure Excluir(); overload;
    procedure Excluir(const pLine: Integer); overload;
    procedure ConsistirDelete(const p510CON: T510CON);

    function ListaTit: TIterador;
    function ListaArm: TIterador;
  end;

implementation

{ T510CON }

procedure T510CON.Consistir(const p510CON: T510CON);
begin
  F510CAD.USU_CodPor := p510CON.CodPor;
  F510CAD.DefinirSelecaoPropriedade(['USU_CodEmp', 'USU_CodUsu','USU_CodPor'], True);

  if (F510CAD.Executar(estSelect)) then
  begin
    if (F510CAD.USU_IniVig <= p510CON.DatGer) and (F510CAD.USU_FimVig >= p510CON.DatGer) then
    begin
      if not(IsNull(FLOG)) then
        FLOG := FLOG + ' ';

      FLOG := FLOG + Format('O armazenamento: %s, não pode ser excluído, ainda está dentro do período de vigência!', [p510CON.NomArq]);
    end;
  end
  else
  begin
    if not(IsNull(FLOG)) then
      FLOG := FLOG + ' ';

    FLOG := FLOG + Format('O armazenamento: %s, não possui ligação com o Usuário: %s, da Empresa: %s e Portador: %s',
      [p510CON.NomArq, IntToStr(FLogEmp), IntToStr(FLogUsu) , p510CON.CodPor]);
  end;
end;

procedure T510CON.ConsistirDelete(const p510CON: T510CON);
var
  i: Integer;
begin
  if (p510CON.ListaTit.Count = 0) then
  begin
    i := FListaArm.IndexOf(p510CON);
    FListaArm.Delete(i);
  end;
end;

procedure T510CON.Consultar(const pCondicao: string);
var
  x510CON: T510CON;
begin
  FListaArm.Clear;
  FListaTit.Clear;

  Self.Executar(estSelectLoop);

  while Self.Proximo() do
  begin
    x510CON := T510CON.Create;
    FListaArm.Iterar(Self, x510CON);

    if (x510CON.BuscarArmazenados(pCondicao)) then
      FListaArm.Add(x510CON);
  end;
end;

constructor T510CON.Create;
begin
  inherited Create('USU_T510ARM');
  Self.DefinirTipoTabela(True);

  FQuery := THQuery.CreatePersonalizado();
  FListaArm := TIterador.Create();
  FListaTit := TIterador.Create();

  F510CAD := T510CAD.Create();
end;

procedure T510CON.Deletar;
var
  x510TIT: T510TIT;
begin
  x510TIT := T510TIT.Create('USU_T510TIT');
  try
    x510TIT.IdArm := Self.Id;
    x510TIT.DefinirSelecaoPropriedade(['IDARM']);
    x510TIT.Executar(estDelete);

    Self.DefinirSelecaoPropriedade(['ID']);
    Self.Executar(estDelete);
  finally
    FreeAndNil(x510TIT);
  end;
end;

destructor T510CON.Destroy;
begin
  FreeAndNil(FQuery);
  FreeAndNil(FListaArm);
  FreeAndNil(FListaTit);

  inherited;
end;

procedure T510CON.Excluir(const pLine: Integer);
var
  x510TIT: T510TIT;
  i: Integer;
begin
  StartTransaction;
  try
    FLOG := EmptyStr;
    F510CAD.USU_CodEmp := FLogEmp;
    F510CAD.USU_CodUsu := FlogUsu;

    Self.Consistir(Self);

    if not(IsNull(FLOG)) then
      CMessage('Erro(s) ao excluir, consulte o botão detalhe(s)', mtExceptError, True, FLOG);

    if (Self.ListaTit.Count > 1) then
    begin
      x510TIT := T510TIT(Self.ListaTit[pLine]);
      x510TIT.Excluir(Self.Id);
      i := Self.ListaTit.IndexOf(x510TIT);
      Self.ListaTit.Delete(i);
    end
    else
    if (Self.ListaTit.Count = 1) then
    begin
      Self.Check := 1;
      Self.Excluir();
    end;

    Commit;
  except
    RollBack;
  end;
end;

procedure T510CON.Excluir;
var
  i, j: Integer;
  x510CON: T510CON;
begin
  j := 0;
  FLOG := EmptyStr;
  F510CAD.USU_CodEmp := FLogEmp;
  F510CAD.USU_CodUsu := FlogUsu;

  for i := 0 to pred(FListaArm.Count) do
  begin
    x510CON := T510CON(FListaArm[i]);

    if (x510CON.Check = 1) then
    begin
      Self.Consistir(x510CON);

      Inc(j);
      F510CAD.Fechar;
    end;
  end;

  if (j = 0) then
    CMessage('Nenhum Arquivo Selecionado!', mtErrorInform);

  if not(IsNull(FLOG)) then
    CMessage('Erro(s) ao excluir, consulte o botão detalhe(s)', mtErrorInform, True, FLOG)
  else
  begin
    StartTransaction;
    try
      for i := 0 to pred(FListaArm.Count) do
        T510CON(FListaArm[i]).Deletar;

      Commit;
    except
      RollBack;
    end;
  end;
end;

function T510CON.ListaArm: TIterador;
begin
  Result := FListaArm;
end;

function T510CON.ListaTit: TIterador;
begin
  Result := FListaTit;
end;

procedure T510CON.MarcarDesmarcar(const pValue: Byte);
var
  i,j: Integer;
  x510TIT: T510TIT;
  x510CON: T510CON;
begin
  for i := 0 to pred(FListaArm.Count) do
  begin
    x510CON := T510CON(FListaArm[i]);
    x510CON.Check := pValue;

    for j := 0 to pred(x510CON.ListaTit.Count) do
    begin
      x510TIT := T510TIT(x510CON.ListaTit[j]);
      x510TIT.Check := pValue;
    end;
  end;
end;

function T510CON.BuscarArmazenados(const pCondicao: string): Boolean;
var
  x510TCP: T510TIT;
  x510TIT: T510TIT;
begin
  x510TIT := T510TIT.CreateCarregado(True);
  x510TIT.IdArm := Self.Id;
  x510TIT.DefinirSelecaoPropriedade(['IDARM'], True);
  x510TIT.AdicionarCondicao(pCondicao);
  Result := x510TIT.Executar(estSelectLoop);

  while (x510TIT.Proximo()) do
  begin
    x510TCP := T510TIT.CreateCarregado(True);
    FListaTit.Iterar(x510TIT, x510TCP);

    x510TCP.ConsultarTitulo();
    FListaTit.Add(x510TCP);
  end;
end;

end.
