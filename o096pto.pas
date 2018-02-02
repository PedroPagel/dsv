unit o096pto;

interface

uses
  System.Classes, oBase, System.SysUtils, System.Contnrs,
  o095for, o095fim, o420ocp, o420ipo, webserviceContasPagar,
  o075pro, o096ite, o096ger, o501pfi, o096mto;

type

  TIteradorPrevisao = class(TBase)
  private
    FLista: TIterador;
    FGerenciador: TGerenciador;

    F095FOR: T095FOR;
    F095FIM: T095FIM;
    F420OCP: T420OCP;
    F420IPO: T420IPO;

    FDataBase: TDate;
    FTotalGastos: Double;
    FPosFornecedor: Integer;
    FQtdTitulos: Integer;
    FProcessoAutomatico: Boolean;

    FDadosOrdem: string;
    FDadosFornecedor: string;

    procedure CarregarGerenciadores(const fornecedor: TIteradorFornecedor; const grupo: string = '');
    procedure IncluirGerenciadores(const fornecedor: TIteradorFornecedor; const E420IPO: T420IPO; const ordem: TIteradorOrdem; const grupo: string = '');
    procedure IncluirTitulos(const ordem: T420OCP; const fornecedor: TIteradorFornecedor);
    procedure Executar();

    procedure MontaPeriodo();
    procedure VerificarPrevisoes();
    procedure CarregarInvoices();
    procedure SetProcessoAutomatico(const Value: Boolean);
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
    property ProcessoAutomatico: Boolean write SetProcessoAutomatico;
  end;

implementation

uses
  oMensagem, oQuery;

{ TIteradorPrevisaoBase }

procedure TIteradorPrevisao.AtribuirParametros;
begin
  //nada
end;

procedure TIteradorPrevisao.CarregarInvoices();
var
  xIteradorOrdem: TIteradorOrdem;
  xIteradorFornecedor: TIteradorFornecedor;
begin
  FLista.Clear;
  Titulo := True;
  CalcularGrupo := True;
  Imposto := True;

  F095FOR.Init;
  F095FOR.AddToCommand('E095FOR.TIPMER = ''E'' AND '+
                      'EXISTS(SELECT 1 FROM E440NFC, USU_TITENSFAT WHERE '+
                      'USU_TITENSFAT.USU_CODEMP = E440NFC.CODEMP AND '+
                      'USU_TITENSFAT.USU_CODFIL = E440NFC.CODFIL AND '+
                      'USU_TITENSFAT.USU_NUMNFC = E440NFC.NUMNFC AND '+
                      'E095FOR.CODFOR = E440NFC.CODFOR AND '+
                      'E440NFC.CODFOR IN (SELECT USU_CODFOR FROM USU_T095FIM) AND '+
                      '(E440NFC.CODSNF = ''INV'') AND '+
                      'E440NFC.DATGER = TO_DATE('''+ DateToStr(Now) +''',''DD/MM/YYYY''))');

  F095FOR.Open(False);
  F095FOR.First;
  while (F095FOR.Next) do
  begin
    F095FOR.Check := 1;

    xIteradorFornecedor := TIteradorFornecedor.Create;
    xIteradorFornecedor.Assign(F095FOR);

    F420OCP.Init;
    F420OCP.CodFor := F095FOR.CodFor;
    F420OCP.PropertyForSelect(['CODFOR']);
    F420OCP.AddToCommand(' AND EXISTS(SELECT 1 FROM E440NFC, USU_TITENSFAT WHERE '+
                         'USU_TITENSFAT.USU_CODEMP = E440NFC.CODEMP AND '+
                         'USU_TITENSFAT.USU_CODFIL = E440NFC.CODFIL AND '+
                         'USU_TITENSFAT.USU_NUMNFC = E440NFC.NUMNFC AND '+
                         'USU_TITENSFAT.USU_CODFOR = E420OCP.CODFOR AND '+
                         'E440NFC.CODFOR = E420OCP.CODFOR AND '+
                         'E420OCP.CODEMP = USU_TITENSFAT.USU_CODEMP AND '+
                         'E420OCP.CODFIL = USU_TITENSFAT.USU_CODFIL AND '+
                         'E420OCP.NUMOCP = USU_TITENSFAT.USU_NUMOCP AND '+
                         'E440NFC.DATGER = TO_DATE('''+ DateToStr(Now) +''',''DD/MM/YYYY'')) AND '+
                         'NOT EXISTS(SELECT 1 FROM E440IPC, E440NFC WHERE E440IPC.CODEMP = E420OCP.CODEMP AND '+
                         'E440IPC.CODFIL = E420OCP.CODFIL AND '+
                         'E440IPC.USU_OCPFAT = E420OCP.NUMOCP AND '+
                         'E440NFC.CODEMP = E440IPC.CODEMP AND '+
                         'E440NFC.CODFIL = E440IPC.CODFIL AND '+
                         'E440NFC.CODFOR = E440IPC.CODFOR AND '+
                         'E440NFC.NUMNFC = E440IPC.NUMNFC AND '+
                         'E440NFC.CODSNF = E440IPC.CODSNF AND '+
                         'E440NFC.CODSNF = ''55'')');

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
      F420IPO.PropertyForSelect(['CODEMP','CODFIL','NUMOCP']);
      F420IPO.AddToCommand(' AND EXISTS(SELECT 1 FROM E440NFC, USU_TITENSFAT WHERE '+
                           'USU_TITENSFAT.USU_CODEMP = E440NFC.CODEMP AND '+
                           'USU_TITENSFAT.USU_CODFIL = E440NFC.CODFIL AND '+
                           'USU_TITENSFAT.USU_NUMNFC = E440NFC.NUMNFC AND '+
                           'E420IPO.CODEMP = USU_TITENSFAT.USU_CODEMP AND '+
                           'E420IPO.CODFIL = USU_TITENSFAT.USU_CODFIL AND '+
                           'E420IPO.NUMOCP = USU_TITENSFAT.USU_NUMOCP AND '+
                           'E420IPO.SEQIPO IN (USU_TITENSFAT.USU_SEQIPO) AND '+
                           'E440NFC.DATGER = TO_DATE('''+ DateToStr(Now) +''',''DD/MM/YYYY''))');
      F420IPO.Open(False);
      while (F420IPO.Next) do
        xIteradorOrdem.IteradorProduto.AddByClass(F420IPO);

      xIteradorFornecedor.IteradorOrdemCompra.Add(xIteradorOrdem);
    end;

    F420IPO.ClearFields;
    F420IPO.Close;
    F420OCP.Close;
  end;
  F095FOR.Close;

  //Remove o que foi gerado pela tela de privisões
  VerificarPrevisoes();
end;

procedure TIteradorPrevisao.Carregar;
var
  xOrdem: string;
  xFornecedor: string;
  xIteradorOrdem: TIteradorOrdem;
  xIteradorFornecedor: TIteradorFornecedor;
begin
  FLista.Clear;

  xFornecedor := ' CODFOR IN (SELECT USU_CODFOR FROM USU_T095FIM) ';

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
  i,j,y: Integer;
  x420ipo: T420IPO;
  xIteradorOrdem: TIteradorOrdem;
  xIteradorFornecedor: TIteradorFornecedor;
begin
  FQtdTitulos := 0;

  if (FProcessoAutomatico) then
    CarregarInvoices();

  for i := 0 to pred(FLista.Count) do
  begin
    FTotalGastos := 0;
    xIteradorFornecedor := TIteradorFornecedor(FLista[i]);

    if (xIteradorFornecedor.Check = 1) then
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

          if not(FProcessoAutomatico) then
            IncluirTitulos(T420OCP(xIteradorOrdem), xIteradorFornecedor)
          else
            FGerenciador.Add(T420OCP(xIteradorOrdem));
        end;
      end;

      if (FProcessoAutomatico) then
        IncluirTitulos(nil, xIteradorFornecedor);
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

  FProcessoAutomatico := False;

  F420OCP := T420OCP.Create;
  F420IPO := T420IPO.Create;
  F095FOR := T095FOR.Create;
  F095FIM := T095FIM.Create;

  FGerenciador := TGerenciador.Create;
  FLista := TIterador.Create;
end;

destructor TIteradorPrevisao.Destroy;
begin
  FreeAndNil(FLista);
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

  if not(FProcessoAutomatico) then
  begin
    if not(FGerenciador.Processado) then
      CMessage('Problemas ao gerar o(s) título(s), motivo no botão detalhe(s)!', mtExceptError, True, FGerenciador.Erro)
    else
      Inc(FQtdTitulos);
  end;

  //Verifica alguma nota foi gerada por invoice
  if (FProcessoAutomatico) then
    FGerenciador.VerificarNotas;
end;

procedure TIteradorPrevisao.IncluirTitulos(const ordem: T420OCP;
  const fornecedor: TIteradorFornecedor);
begin
  if Assigned(ordem) then
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

procedure TIteradorPrevisao.SetProcessoAutomatico(const Value: Boolean);
begin
  FGerenciador.ProcessoAutomatico := Value;
  FProcessoAutomatico := Value;
end;

procedure TIteradorPrevisao.VerificarPrevisoes;
var
  i,j: Integer;
  xIteradorOrdem: TIteradorOrdem;
  xIteradorFornecedor: TIteradorFornecedor;
begin
  for i := 0 to pred(FLista.Count) do
  begin
    xIteradorFornecedor := TIteradorFornecedor(FLista[i]);

    for j := 0 to pred(xIteradorFornecedor.IteradorOrdemCompra.Count) do
    begin
      xIteradorOrdem := TIteradorOrdem(TIteradorFornecedor(xIteradorFornecedor.IteradorOrdemCompra[j]));

      if AnsiSameText(xIteradorOrdem.USU_TitImp, 'S') then
        FGerenciador.AdicionarExclusao(xIteradorOrdem);
    end;
  end;

  FGerenciador.ExcluirPrevisoes;
end;

end.
