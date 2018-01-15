unit o096pto;

interface

uses
  System.Classes, oBase, System.SysUtils, System.Contnrs,
  o095for, o095fim, o420ocp, o420ipo, webserviceContasPagar,
  o075pro, o096ite, o096ger;

CONST
  CMARGEM_ERRO = 500;

type
  TGrupos = class
  private
    FLista: TIterador;
    FGrupo: string;
    FPosicao: TArrayOfInteger;
  public
    constructor Create();
    destructor Destroy(); override;

    property Grupo: string read FGrupo write FGrupo;
    property Posicao: TArrayOfInteger read FPosicao write FPosicao;

    function QtdGrupos: Integer;
    function SetGrupo(const posicao: Integer): TArrayOfInteger;
    procedure Aumentar(const position: Integer);
    procedure Adicionar(const posicao: Integer; const grupo: string);
  end;

  TIteradorPrevisao = class(TBase)
  private
    FLista: TIterador;
    FListaGrupos: TGrupos;
    FGerenciadorContainer: TGerenciadorContainer;
    FGerenciardorTitulo: TGerenciardorTitulo;
    FGeradorImposto: TGeradorImposto;

    F095FOR: T095FOR;
    F095FIM: T095FIM;
    F420OCP: T420OCP;
    F420IPO: T420IPO;

    FDataBase: TDate;
    FTotalGastos: Double;
    FPosFornecedor: Integer;
    FQtdTitulos: Integer;

    FGrupo: string;
    FDadosOrdem: string;
    FDadosFornecedor: string;

    procedure CarregarGerenciadores(const fornecedor: TIteradorFornecedor; const grupo: string = '');
    procedure IncluirGerenciadores(const E420IPO: T420IPO; const ordem: TIteradorOrdem);
    procedure ExecutarGerenciadores(const iterador: TIterador; const fornecedor: TIteradorFornecedor);

    procedure MontaPeriodo();
  public
    constructor Create();
    destructor Destroy(); override;

    procedure Carregar();
    procedure Processar();
    procedure MarcarDesmarcarOrdem(const id: Integer; const check: Byte);
    procedure MarcarDesmarcarFornecedor(const id: Integer; const check: Byte);

    function QtdFornecedor: Integer;
    function Fornecedor(const pos: Integer): TIteradorFornecedor;

    function QtdOrdemCompra: Integer;
    function OrdemCompra(const pos: Integer): T420OCP;
    function QtdProduto(const idOrd: Integer): Integer;
    function Produto(const idOrd, idPro: Integer): T075PRO;
    function ItemSelecionado(): Boolean;
    function Processado: Boolean;

    property DadosFornecedor: string write FDadosFornecedor;
    property DadosOrdem: string write FDadosOrdem;
    property DataBase: TDate read FDataBase write FDataBase;
    property Grupo: string read FGrupo write FGrupo;
  end;

implementation

{ TIteradorPrevisaoBase }

procedure TIteradorPrevisao.Carregar();
var
  xOrdem: string;
  xFornecedor: string;
  xIteradorOrdem: TIteradorOrdem;
  xIteradorFornecedor: TIteradorFornecedor;
begin
  FLista.Clear;

  xFornecedor := ' CODFOR IN (SELECT USU_CODFOR FROM USU_T095FIM ';

  if not(IsNull(FGrupo)) then
    xFornecedor := xFornecedor + Format(' WHERE USU_CODGFI IN (%s)', [FGrupo]);

  xFornecedor := xFornecedor + ')';

  if not(IsNull(FDadosFornecedor)) then
    xFornecedor := xFornecedor + ' AND ' + FDadosFornecedor;

  F095FOR.Init;
  F095FOR.AddToCommand(xFornecedor);
  F095FOR.Open(False);

  F095FOR.First;
  while (F095FOR.Next) do
  begin
    F095FOR.Check := 1;

    xOrdem := EmptyStr;
    xIteradorFornecedor := TIteradorFornecedor.Create;
    xIteradorFornecedor.Assign(F095FOR);

    if not(IsNull(FDadosOrdem)) then
      xOrdem := FDadosOrdem + ' AND E420OCP.SITOCP = 1 '
    else
      xOrdem := FDadosOrdem + ' E420OCP.SITOCP = 1 ';

    xOrdem := xOrdem + Format(' AND E420OCP.CODFOR = %s AND (E420OCP.USU_IDEMDO = 0)'
    , [IntToStr(F095FOR.CodFor)]);

    F420OCP.Init;
    F420OCP.AddToCommand(xOrdem);
    MontaPeriodo();

    F420OCP.Open(False);

    if not(F420OCP.IsEmpty) then
    begin
      xIteradorFornecedor.Check := 1;
      xIteradorFornecedor.Periodo := F095FIM.USU_PerOrd;
      xIteradorFornecedor.Grupo := F095FIM.USU_CodGfi;
      FLista.Add(xIteradorFornecedor);
    end;

    while (F420OCP.Next) do
    begin
      F420OCP.Check := 1;

      xIteradorOrdem := TIteradorOrdem.Create;
      xIteradorOrdem.Assign(F420OCP);

      F420IPO.Init;
      F420IPO.CodEmp := xIteradorOrdem.CodEmp;
      F420IPO.CodFil := xIteradorOrdem.CodFil;
      F420IPO.NumOcp := xIteradorOrdem.NumOcp;
      F420IPO.Open();

      while (F420IPO.Next) do
        xIteradorOrdem.IteradorProduto.AddByClass(F420IPO);

      xIteradorFornecedor.IteradorOrdemCompra.Add(xIteradorOrdem);
    end;

    F420IPO.ClearFields;
    F420IPO.Close;
    F420OCP.Close;
  end;

  F095FOR.Close;
end;

procedure TIteradorPrevisao.Processar;
var
  i,j,y,t: Integer;
  x420ipo: T420IPO;
  xIteradorOrdem: TIteradorOrdem;
  xListaOrdem: TIterador;
  xIteradorFornecedor: TIteradorFornecedor;
begin
  xIteradorFornecedor := nil;
  FQtdTitulos := 0;

  for i := 0 to pred(FLista.Count) do
  begin
    FTotalGastos := 0;
    xIteradorFornecedor := TIteradorFornecedor(FLista[i]);

    if (xIteradorFornecedor.Check = 1) then
      if (IsNull(xIteradorFornecedor.Grupo) and (CalcularGrupo)) or not(CalcularGrupo) then
      begin
        CarregarGerenciadores(xIteradorFornecedor);

        for j := 0 to pred(xIteradorFornecedor.IteradorOrdemCompra.Count) do
        begin
          if (T420OCP(xIteradorFornecedor.IteradorOrdemCompra[j]).Check = 1) then
          begin
            xIteradorOrdem := TIteradorOrdem(TIteradorFornecedor(xIteradorFornecedor.IteradorOrdemCompra[j]));

            for y := 0 to pred(xIteradorOrdem.IteradorProduto.Count) do
            begin
              x420ipo := T420IPO(xIteradorOrdem.IteradorProduto[y]);
              IncluirGerenciadores(x420ipo, xIteradorOrdem);
            end;
          end;
        end;

        ExecutarGerenciadores(xIteradorFornecedor.IteradorOrdemCompra, xIteradorFornecedor);
      end
      else
        FListaGrupos.Adicionar(i, xIteradorFornecedor.Grupo);
  end;

  if (CalcularGrupo) and (FListaGrupos.QtdGrupos > 0) then
  begin
    xListaOrdem := TIterador.Create();

    for i := 0 to pred(FListaGrupos.QtdGrupos) do
    begin
      xListaOrdem.Clear;

      for y := 0 to High(FListaGrupos.SetGrupo(i)) do
      begin
        xIteradorFornecedor := TIteradorFornecedor(FLista[FListaGrupos.SetGrupo(i)[y]]);
        CarregarGerenciadores(xIteradorFornecedor, xIteradorFornecedor.Grupo);

        for j := 0 to pred(xIteradorFornecedor.IteradorOrdemCompra.Count) do
        begin
          if (T420OCP(xIteradorFornecedor.IteradorOrdemCompra[j]).Check = 1) then
          begin
            xIteradorOrdem := TIteradorOrdem(TIteradorFornecedor(xIteradorFornecedor.IteradorOrdemCompra[j]));

            for t := 0 to pred(xIteradorOrdem.IteradorProduto.Count) do
            begin
              x420ipo := T420IPO(xIteradorOrdem.IteradorProduto[t]);
              IncluirGerenciadores(x420ipo, xIteradorOrdem);
            end;

            xListaOrdem.AddByClass(xIteradorOrdem);
          end;
        end;
      end;

      ExecutarGerenciadores(xListaOrdem, xIteradorFornecedor);
    end;
  end;
end;

procedure TIteradorPrevisao.IncluirGerenciadores(const E420IPO: T420IPO; const ordem: TIteradorOrdem);
begin
  if (Container) then
    FGerenciadorContainer.IncluirItem(E420IPO, ordem);

  if (Titulo) then
    FGerenciardorTitulo.Adicionar(E420IPO, ordem);

  if (Imposto) then
    FGeradorImposto.Adicionar(E420IPO, ordem);
end;

function TIteradorPrevisao.ItemSelecionado: Boolean;
begin
  Result := TIteradorFornecedor(FLista[FPosFornecedor]).IteradorOrdemCompra.Selecionados;
end;

procedure TIteradorPrevisao.CarregarGerenciadores(const fornecedor: TIteradorFornecedor; const grupo: string = '');
begin
  FGerenciardorTitulo.VlrFin := 0;
  FGeradorImposto.VlrImp := 0;

  if (Container) then
    FGerenciadorContainer.Carregar(fornecedor.CodFor, grupo);
end;

constructor TIteradorPrevisao.Create;
begin
  inherited Create;

  F420OCP := T420OCP.Create;
  F420IPO := T420IPO.Create;
  F095FOR := T095FOR.Create;
  F095FIM := T095FIM.Create;

  FListaGrupos := TGrupos.Create;

  FLista := TIterador.Create;

  FGeradorImposto := TGeradorImposto.Create;
  FGerenciardorTitulo := TGerenciardorTitulo.Create;
  FGerenciadorContainer := TGerenciadorContainer.Create;
end;

destructor TIteradorPrevisao.Destroy;
begin
  FreeAndNil(FLista);
  FreeAndNil(FListaGrupos);
  FreeAndNil(FGeradorImposto);
  FreeAndNil(FGerenciardorTitulo);
  FreeAndNil(FGerenciadorContainer);

  FreeAndNil(F420OCP);
  FreeAndNil(F420IPO);
  FreeAndNil(F095FOR);
  FreeAndNil(F095FIM);

  inherited;
end;

procedure TIteradorPrevisao.ExecutarGerenciadores(const iterador: TIterador;
  const fornecedor: TIteradorFornecedor);
begin
  if (Container) then
    FGerenciadorContainer.Executar(iterador, fornecedor.CodFor);

  if (Titulo) then
    FGerenciardorTitulo.Executar();

  if (Imposto) then
    FGeradorImposto.Executar();
end;

function TIteradorPrevisao.Fornecedor(const pos: Integer): TIteradorFornecedor;
begin
  Result := TIteradorFornecedor(FLista[pos]);
  FPosFornecedor := pos;
end;

procedure TIteradorPrevisao.MarcarDesmarcarFornecedor(const id: Integer; const check: Byte);
begin
  FPosFornecedor := id;
  T095FOR(TIteradorFornecedor(FLista[id])).Check := check;
end;

procedure TIteradorPrevisao.MarcarDesmarcarOrdem(const id: Integer; const check: Byte);
begin
  T420OCP(TIteradorFornecedor(FLista[FPosFornecedor]).IteradorOrdemCompra[id]).Check := check;
end;

procedure TIteradorPrevisao.MontaPeriodo();
var
  xData: TData;
begin
  F095FIM.Init;
  F095FIM.USU_CodFor := F095FOR.CodFor;
  F095FIM.doForeignKey := True;
  F095FIM.Open();

  if (FDataBase > 1) then
  begin
    xData := TData.Create(FDataBase);
    try
      if AnsiSameText(F095FIM.USU_PerOrd, 'S')  then
      begin
        F420OCP.Between['DatFec'] := xData.PrimeiroDiaSemana;
        F420OCP.Between['DatFec'] := xData.UltimoDiaSemana;
      end;

      if AnsiSameText(F095FIM.USU_PerOrd, 'Q')  then
      begin
        xData.DecDays(7);
        F420OCP.Between['DatFec'] := xData.Data;

        xData.IncDays(14);
        F420OCP.Between['DatFec'] := xData.Data;
      end;

      if AnsiSameText(F095FIM.USU_PerOrd, 'M')  then
      begin
        F420OCP.Between['DatFec'] := xData.PrimeiroDiaMes;
        F420OCP.Between['DatFec'] := xData.UltimoDiaMes;
      end;
    finally
      FreeAndNil(xData);
    end;
  end;
end;

function TIteradorPrevisao.OrdemCompra(const pos: Integer): T420OCP;
begin
  Result := T420OCP(TIteradorFornecedor(FLista[FPosFornecedor]).IteradorOrdemCompra[pos])
end;

function TIteradorPrevisao.Processado: Boolean;
begin
  Result := (FQtdTitulos > 0);
end;

function TIteradorPrevisao.Produto(const idOrd, idPro: Integer): T075PRO;
begin
  Result := T075PRO(TIteradorOrdem(TIteradorFornecedor(FLista[FPosFornecedor]).IteradorOrdemCompra[idOrd]).IteradorProduto[idPro]);
end;

function TIteradorPrevisao.QtdFornecedor: Integer;
begin
  Result := FLista.Count;
end;

function TIteradorPrevisao.QtdOrdemCompra: Integer;
begin
  Result := TIteradorFornecedor(FLista[FPosFornecedor]).IteradorOrdemCompra.Count;
end;

function TIteradorPrevisao.QtdProduto(const idOrd: Integer): Integer;
begin
  Result := TIteradorOrdem(TIteradorFornecedor(FLista[FPosFornecedor]).IteradorOrdemCompra[idOrd]).IteradorProduto.Count;
end;

{ TGrupos }

procedure TGrupos.Adicionar(const posicao: Integer; const grupo: string);
var
  i,y: Integer;
  xGrupo: TGrupos;

  procedure AumentaPosicao();
  begin
    y := Length(xGrupo.Posicao);
    Inc(y);

    xGrupo.Aumentar(y);
    xGrupo.Posicao[pred(y)] := posicao;
  end;

begin
  xGrupo := TGrupos.Create;
  xGrupo.Grupo := grupo;
  i := FLista.IndexOfFields(xGrupo);

  if (i > -1) then
    xGrupo := TGrupos(FLista[i])
  else
    FLista.Add(xGrupo);

  AumentaPosicao();
end;

constructor TGrupos.Create;
begin
  inherited Create;

  FLista := TIterador.Create();
  FLista.indexed := True;
  FLista.IndexFields(['Grupo']);
end;

destructor TGrupos.Destroy;
begin
  FreeAndNil(FLista);

  inherited;
end;

function TGrupos.QtdGrupos: Integer;
begin
  Result := FLista.Count;
end;

function TGrupos.SetGrupo(const posicao: Integer): TArrayOfInteger;
begin
  Result := TGrupos(FLista[posicao]).Posicao;
end;

procedure TGrupos.Aumentar(const position: Integer);
begin
  SetLength(FPosicao, position);
end;

end.
