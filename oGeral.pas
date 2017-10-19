unit oGeral;

interface

uses
  oBase, o070fil, System.SysUtils, System.Classes, System.Contnrs;

type
  TListaFilial = class(T070FIL)
  private
    FLista: TIterador;
  public
    constructor Create();
    destructor Destroy(); override;

    function DadosFilial(const pNumCgc: Double): T070FIL; overload;
    function DadosFilial(const pCodEmp: Integer; const pCodFil: Integer): T070FIL; overload;

    procedure AddTodas();
    procedure EmpresaPorContribuinte(const pNumCgc: Double; const pAdicionarFiliais: Boolean = False);
  end;

  TListFil = class
  public
    class var FListaFilial: TListaFilial;
  end;

var
  FListaFilial: TListaFilial;

implementation

{ TListaFilial }

procedure TListaFilial.AddTodas;
begin
  Self.PropertyForSelect(['CODEMP']);
  Self.Execute(etSelect, esLoop);

  while (Self.Next) do
    FLista.IterarAdd(Self, T070FIL.Create());
end;

constructor TListaFilial.Create;
begin
  inherited Create();

  FLista := TIterador.Create();
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
      FLista.Iterar(T070FIL(FLista[i]), Result);
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
      FLista.Iterar(T070FIL(FLista[i]), Result);
      Break;
    end;
  end;
end;

destructor TListaFilial.Destroy;
begin
  inherited;

  FreeAndNil(FLista);
end;


procedure TListaFilial.EmpresaPorContribuinte(const pNumCgc: Double; const pAdicionarFiliais: Boolean = False);
begin
  Self.Start;
  Self.NumCgc := pNumCgc;
  Self.PropertyForSelect(['NUMCGC']);
  Self.Execute(etSelect);

  if (pAdicionarFiliais) then
    Self.AddTodas;
end;

end.
