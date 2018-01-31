unit o096pto;

interface

uses
  System.Classes, oBase, System.SysUtils, System.Contnrs,
  o095for, o095fim, o420ocp, o420ipo, webserviceContasPagar,
  o075pro, o096ite, o096ger, o501pfi;

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
    FGerenciador: TGerenciador;

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
    procedure IncluirGerenciadores(const fornecedor: TIteradorFornecedor; const E420IPO: T420IPO; const ordem: TIteradorOrdem; const grupo: string = '');
    procedure IncluirTitulos(const ordem: T420OCP; const fornecedor: TIteradorFornecedor);
    procedure Executar();

    procedure MontaPeriodo();
  public
    constructor Create();
    destructor Destroy(); override;

    procedure Carregar();
    procedure Processar();
    procedure AtribuirParametros(); override;
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

uses
  oMensagem;

{ TIteradorPrevisaoBase }

procedure TIteradorPrevisao.AtribuirParametros;
begin
  //nada
end;

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
      xOrdem := FDadosOrdem + ' AND ';

    xOrdem := FDadosOrdem + ' E420OCP.SITOCP IN (1,2,8) ';
    xOrdem := xOrdem + Format(' AND E420OCP.CODFOR = %s AND (E420OCP.USU_TITIMP = ''N'')'
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
      xIteradorFornecedor.DiasRegistro := F095FIM.USU_DiaReg;
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
              IncluirGerenciadores(xIteradorFornecedor, x420ipo, xIteradorOrdem);
            end;

            IncluirTitulos(T420OCP(xIteradorOrdem), xIteradorFornecedor);
          end;
        end;
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
              IncluirGerenciadores(xIteradorFornecedor, x420ipo, xIteradorOrdem);
            end;

            xListaOrdem.AddByClass(xIteradorOrdem);
            IncluirTitulos(T420OCP(xListaOrdem), xIteradorFornecedor);
          end;
        end;
      end;
    end;
  end;

  Executar();
end;

procedure TIteradorPrevisao.IncluirGerenciadores(const fornecedor: TIteradorFornecedor;
  const E420IPO: T420IPO; const ordem: TIteradorOrdem; const grupo: string = '');
begin
  if (Titulo) then
    FGerenciador.GerenciarTitulo.IncluirProduto(E420IPO, ordem);

  if (Imposto) then
    FGerenciador.GerenciarImposto.IncluirProduto(E420IPO, ordem, fornecedor);

  FGerenciador.GerenciarDespesas.IncluirProduto(FGerenciador.GerenciarImposto.VlrImp, E420IPO, ordem, grupo);
end;

function TIteradorPrevisao.ItemSelecionado: Boolean;
begin
  Result := TIteradorFornecedor(FLista[FPosFornecedor]).IteradorOrdemCompra.Selecionados;
end;

procedure TIteradorPrevisao.CarregarGerenciadores(const fornecedor: TIteradorFornecedor; const grupo: string = '');
begin
  FGerenciador.GerenciarTitulo.VlrFin := 0;
  FGerenciador.GerenciarImposto.VlrImp := 0;
  FGerenciador.GerenciarDespesas.Carregar(fornecedor.CodFor, grupo);
end;

constructor TIteradorPrevisao.Create;
begin
  inherited Create;

  F420OCP := T420OCP.Create;
  F420IPO := T420IPO.Create;
  F095FOR := T095FOR.Create;
  F095FIM := T095FIM.Create;

  FGerenciador := TGerenciador.Create;
  FListaGrupos := TGrupos.Create;
  FLista := TIterador.Create;
end;

destructor TIteradorPrevisao.Destroy;
begin
  FreeAndNil(FLista);
  FreeAndNil(FListaGrupos);
  FreeAndNil(FGerenciador);

  FreeAndNil(F420OCP);
  FreeAndNil(F420IPO);
  FreeAndNil(F095FOR);
  FreeAndNil(F095FIM);

  inherited;
end;

procedure TIteradorPrevisao.Executar;
begin
  FGerenciador.Executar();

  if not(FGerenciador.Processado) then
    CMessage('Problemas ao gerar o(s) título(s), motivo no botão detalhe(s)!', mtExceptError, True, FGerenciador.Erro)
  else
    Inc(FQtdTitulos);
end;

procedure TIteradorPrevisao.IncluirTitulos(const ordem: T420OCP;
  const fornecedor: TIteradorFornecedor);
begin
  FGerenciador.Add(ordem);

  if (Titulo) then
    FGerenciador.TituloFornecedor(fornecedor);

  if (Imposto) then
    FGerenciador.TituloImposto(fornecedor);

  FGerenciador.TituloDespesas(fornecedor);
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
