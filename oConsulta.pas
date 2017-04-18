unit oConsulta;

interface

uses
  System.Classes, Data.SqlExpr, oQuery, oBase, oTitulo, System.SysUtils,
  Data.Db, System.Contnrs, oTabelas;

type
  T510CON = class(T510ARM)
  private
    FQuery: THQuery;
    FListaArm: TIterador;
    FListaTit: TIterador;

    function BuscarArmazenados(const pCondicao: string): Boolean;
  public
    constructor Create();
    destructor Destroy(); override;

    procedure Consultar(const pCondicao: string);

    function ListaTit: TIterador;
    function ListaArm: TIterador;
  end;

implementation

{ T510CON }

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
end;

destructor T510CON.Destroy;
begin
  FreeAndNil(FQuery);
  FreeAndNil(FListaArm);
  FreeAndNil(FListaTit);

  inherited;
end;

function T510CON.ListaArm: TIterador;
begin
  Result := FListaArm;
end;

function T510CON.ListaTit: TIterador;
begin
  Result := FListaTit;
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
