unit oConsulta;

interface

uses
  System.Classes, Data.SqlExpr, oQuery, oBase, oGeral, System.SysUtils, o510cad,
  Data.Db, System.Contnrs, oMensagem, o501tcp, o510arm, o510tit;

type
  T510CON = class(T510ARM)
  private
    FQuery: THQuery;
    FListaArm: TIterador;
    FListaTit: TIterador;
    F510CAD: T510CAD;
    FLOG: string;
    FArmazenado: Boolean;

    function BuscarArmazenados(const pCondicao: string): Boolean;
    procedure Deletar();
    procedure RemoverAssociados();
    procedure Consistir(const p510CON: T510CON);
  public
    constructor Create();
    destructor Destroy(); override;

    procedure Consultar(const pCondicao: string);
    procedure MarcarDesmarcar(const pValue: Byte);
    procedure Excluir(); overload;
    procedure Excluir(const pLine: Integer; const pOrigem: T510CON); overload;

    function ListaTit: TIterador;
    function ListaArm: TIterador;
  end;

implementation

{ T510CON }

procedure T510CON.Consistir(const p510CON: T510CON);
var
  i: Integer;
begin
  F510CAD.Init;
  F510CAD.USU_CodPor := p510CON.USU_CodPor;
  F510CAD.USU_CodUsu := FLogUsu;
  F510CAD.Open();

  if (AnsiSameText(F510CAD.USU_PerExc, 'N') or IsNull(F510CAD.USU_PerExc)) then
    FLOG := Format('Usuário: %s, sem permissão para exclusão!', [IntToStr(FLogUsu)])
  else
  if not(F510CAD.IsEmpty) then
  begin
    if (F510CAD.USU_IniVig <= p510CON.USU_DatGer) and (F510CAD.USU_FimVig >= p510CON.USU_DatGer) then
    begin
      if not(IsNull(FLOG)) then
        FLOG := FLOG + ' ';

      FLOG := FLOG + Format('O armazenamento: %s, não pode ser excluído, ainda está dentro do período de vigência!', [p510CON.USU_NomArq]);
    end;
  end
  else
  begin
    if not(IsNull(FLOG)) then
      FLOG := FLOG + ' ';

    FLOG := FLOG + Format('O armazenamento: %s, não possui ligação com o Usuário: %s, da Empresa: %s e Portador: %s',
      [p510CON.USU_NomArq, IntToStr(FLogUsu), IntToStr(FLogEmp), p510CON.USU_CodPor]);
  end;

  if not(FArmazenado) then
    for i := 0 to pred(p510CON.ListaTit.Count) do
    begin
      if (AnsiSameText(T510TIT(p510CON.ListaTit[i]).USU_SitArm, 'S')) then
      begin
        FArmazenado := True;
        Break;
      end;
    end;
end;

procedure T510CON.Consultar(const pCondicao: string);
var
  x510CON: T510CON;
begin
  FListaArm.Clear;
  FListaTit.Clear;
  Self.OrdenationCommand('ORDER BY USU_DATGER DESC');
  Self.Open(False);

  while Self.Next() do
  begin
    x510CON := T510CON.Create;
    x510CON.Assign(Self);

    if (x510CON.BuscarArmazenados(pCondicao)) then
      FListaArm.Add(x510CON);
  end;
end;

constructor T510CON.Create;
begin
  inherited Create();

  FQuery := THQuery.CreatePersonalizado();
  FListaArm := TIterador.Create();
  FListaTit := TIterador.Create();
  F510CAD := T510CAD.Create();

  FArmazenado := False;
end;

procedure T510CON.Deletar;
var
  x510TIT: T510TIT;
begin
  x510TIT := T510TIT.Create();
  try
    x510TIT.USU_IdArm := Self.USU_ID;
    x510TIT.PropertyForSelect(['USU_IDARM']);
    x510TIT.Delete;

    Self.Init;
    Self.Delete;

    Self.RemoverArquivo(False);
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

procedure T510CON.Excluir(const pLine: Integer; const pOrigem: T510CON);
var
  x510TIT: TTituloDebitoDiretoAutorizado;
  i: Integer;
begin
  StartTransaction;
  try
    FLOG := EmptyStr;
    FArmazenado := False;
    F510CAD.USU_CodEmp := FLogEmp;
    F510CAD.USU_CodUsu := FlogUsu;

    Self.Consistir(Self);

    if not(IsNull(FLOG)) then
      CMessage('Erro(s) ao excluir, consulte o botão detalhe(s)', mtExceptError, True, FLOG);

    if (FArmazenado) then
      if (CMessage('Para remover este registro, será removida sua associação, deseja continuar?', mtConfirmationYesNo)) then
        pOrigem.RemoverAssociados()
      else
        Abort;

    if (Self.ListaTit.Count > 1) then
    begin
      x510TIT := TTituloDebitoDiretoAutorizado(Self.ListaTit[pLine]);
      x510TIT.Excluir(Self.USU_ID);
      i := Self.ListaTit.IndexOf(x510TIT);
      Self.ListaTit.Delete(i);
      Commit;
    end
    else
    if (Self.ListaTit.Count = 1) then
      pOrigem.Excluir();
  except
    RollBack;
  end;
end;

procedure T510CON.Excluir;
var
  i, j: Integer;
  x510CON: T510CON;

  procedure Remover();
  var
    y: Integer;
  begin
    for y := pred(FListaArm.Count) downto 0 do
    begin
      if (T510CON(FListaArm[y]).Check = 1) then
      begin
        T510CON(FListaArm[y]).Deletar;
        FListaArm.Delete(FListaArm.IndexOf(T510CON(FListaArm[y])));
      end;
    end;

    Commit;
  end;

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
      F510CAD.Close;
    end;
  end;

  StartTransaction;
  try
    if (j = 0) then
      CMessage('Nenhum Arquivo Selecionado!', mtExceptError);

    if not(IsNull(FLOG)) then
      CMessage('Erro(s) ao excluir, consulte o botão detalhe(s)', mtExceptError, True, FLOG);

    if (FArmazenado) then
    begin
      if (CMessage('Associações serão removidas para excluir armazenamento(s), deseja continuar?', mtConfirmationYesNo)) then
      begin
        RemoverAssociados();
        Remover();
      end
      else
        Abort;
    end
    else
      Remover();
  except
    RollBack;
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

procedure T510CON.RemoverAssociados;
var
  i,j: Integer;
  x510CON: T510CON;
  x501TCP: T501TCP;
begin
  x501TCP := T501TCP.Create();

  for i := 0 to pred(FListaArm.Count) do
  begin
    if (T510CON(FListaArm[i]).Check = 1) then
    begin
      for j := 0 to pred(T510CON(FListaArm[i]).ListaTit.Count) do
      begin
        x510CON := T510CON(T510CON(FListaArm[i]).ListaTit[j]);

        if (x510CON.Check = 1) then
        begin
          x501TCP.Init;
          x501TCP.AddToCommand(Format(' USU_IDTIT = %d', [x510CON.USU_ID]));
          x501TCP.Open(False);

          if not(x501TCP.IsEmpty) then
          begin
            x501TCP.USU_IDTIT := 0;
            x501TCP.Update();
          end;
        end;
      end;
    end;
  end;
end;

function T510CON.BuscarArmazenados(const pCondicao: string): Boolean;
var
  x501TCP: T510TIT;
  x510TIT: TTituloDebitoDiretoAutorizado;

  function Command: String;
  begin
    Result := Format(' USU_IDARM = %d', [Self.USU_ID]);

    if not(IsNull(pCondicao)) then
      Result := Result + ' AND ' + pCondicao;
  end;

begin
  x510TIT := TTituloDebitoDiretoAutorizado.CreateCarregado(True);
  x510TIT.AddToCommand(Command);
  x510TIT.Open();

  Result := not(x510TIT.IsEmpty);

  while (x510TIT.Next()) do
  begin
    x501TCP := TTituloDebitoDiretoAutorizado.CreateCarregado(True);
    x501TCP.Assign(x510TIT);

    //x510TCP.ConsultarTitulo();
    FListaTit.Add(x501TCP);
  end;
end;

end.
