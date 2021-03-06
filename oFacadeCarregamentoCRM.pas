unit oFacadeCarregamentoCRM;

interface

uses
  oFacadeBaseCRM, oFacadeWebServicesCRM, oBase, o120ped, o120ipd, o120pxp;

type
  TTipoExecucao = (teCompromisso, teOportunidade);

  TFacedeCarregamentoCRM = class(TFacadeBaseCRM)
  private
    FWebservice: TFacadeWebServicesCRM;
    F120PED: T120PED;
    F120IPD: T120IPD;
    FPedidoComItens: Boolean;
    FPedidoExiste: Boolean;
    FPendencias: TIterador;
    FOportunidadeAtualizada: Boolean;

    procedure ConsumirFechamentoCompromisso();
    procedure CarregaPendencias();
    procedure CarregaPedido(const pDados: TFacadeBaseCRM);
    procedure FecharPorCompromisso();
    procedure FecharPorOrcamento();
  public
    constructor Create();
    destructor Destroy(); override;

    procedure Carregar(const pDados: TFacadeBaseCRM; const pWebServices: TFacadeWebServicesCRM);
    procedure ConsumirOportunidade();
    procedure ConsumirProdutos();
    procedure AtualizarPedido();
    procedure ConsumirCompromisso();
    procedure AtualizarPendencias();
    procedure FecharCompromissosAbertos();

    function PermiteAtualizar: Boolean;
    function TipoExecucao: TTipoExecucao;

    property Pedido: T120PED read F120PED;
  end;

implementation

uses
  System.SysUtils, o085cli, WConnect_WSDL, o120pen, System.Classes, System.Contnrs;

{ TFacedeCarregamentoCRM }

procedure TFacedeCarregamentoCRM.AtualizarPedido;
begin
  if (PermiteAtualizar) then
  begin
    StartTransaction;
    try
      Pedido.Init;
      Pedido.Update();

      Commit;
    except
      RollBack;
    end;
  end;
end;

procedure TFacedeCarregamentoCRM.AtualizarPendencias;
var
  i: Integer;
  x120pen: T120PEN;
begin
  StartTransaction;
  try
    for i := 0 to pred(FPendencias.Count) do
    begin
      x120pen := T120PEN(FPendencias[i]);

      if (x120pen.USU_NumCom > 0) then
        x120pen.Update();
    end;

    Commit;
  except
    RollBack;
  end;
end;

procedure TFacedeCarregamentoCRM.CarregaPedido(const pDados: TFacadeBaseCRM);
begin
  F120PED.CodEmp := pDados.CodEmp;
  F120PED.CodFil := pDados.CodFil;
  F120PED.NumPed := pDados.NumPed;
  F120PED.Open();

  if not(F120PED.IsEmpty) then
  begin
    FWebservice.CodEmp := pDados.CodEmp;
    FWebservice.Dados.oportunidadeContaId := F120PED.CodCli;
    FWebservice.Dados.oportunidadeNumeroPedido := IntToStr(F120PED.CodEmp) + '-' +
      IntToStr(F120PED.CodFil) + '-' + IntToStr(F120PED.NumPed);

    FWebservice.Dados.oportunidadeNome := 'Orçamento/Pedido '+ FWebservice.Dados.oportunidadeNumeroPedido;
    FWebservice.Dados.oportunidadeHistorico := 'Importação Automática Sapiens - JOB';
    FWebservice.Dados.oportunidadeTipoId := 1;
    FWebservice.Dados.oportunidadeOrigemId := 12;
    FWebservice.Dados.oportunidadeModalidadeNegocioId := 1;
    FWebservice.Dados.oportunidadeUsuarioIdERP := F120PED.CodVen;
    FWebservice.Dados.oportunidadeProbabilidade := 100;
    FWebservice.Dados.oportunidadeDataPrevistaFechamento := FormatDateTime('YYYY-MM-DD', F120PED.DatPrv);
    FWebservice.Dados.oportunidadeValorPrevisto := StringReplace(FloatToStr(F120PED.VlrOri), ',', '.', [rfReplaceAll]);

    //veio do fechamento
    if (F120PED.SitPed in [1,2,4]) then
    begin
      //fechado
      FWebservice.Dados.oportunidadeEstagioId := 1;
      F120IPD.CodEmp := F120PED.CodEmp;
      F120IPD.CodFil := F120PED.CodFil;
      F120IPD.NumPed := F120PED.NumPed;

      F120IPD.AddTable(['E075PRO']);
      F120IPD.AddToCommand(' E075PRO.INDKIT = ''N'' AND E075PRO.CODEMP = E120IPD.CODEMP AND E075PRO.CODPRO = E120IPD.CODPRO AND ');
      F120IPD.Open();
      FPedidoComItens := not(F120IPD.IsEmpty);

      if not(F120IPD.IsEmpty) then
      begin
        FWebservice.Add;
        FWebservice.Produtos.oportunidadeProdutoId := F120IPD.CodPro;
        FWebservice.Produtos.oportunidadeProdutoDerivacao := F120IPD.CodDer;
        FWebservice.Produtos.oportunidadeProdutoQuantidadePedida := FloatToStr(F120IPD.QtdPed);
        FWebservice.Produtos.oportunidadeProdutoQuantidadeFaturada := FloatToStr(F120IPD.QtdFat);
        FWebservice.Produtos.oportunidadeProdutoQuantidadeAberta := FloatToStr(F120IPD.QtdAbe);
        FWebservice.Produtos.oportunidadeProdutoQuantidadeCancelada := FloatToStr(F120IPD.QtdCan);
        FWebservice.Produtos.oportunidadeProdutoPrecoUnitario := StringReplace(FloatToStr(F120IPD.PreUni), ',', '.', [rfReplaceAll]);
        FWebservice.Produtos.oportunidadeProdutoSituacaoItem := IntToStr(F120IPD.SitIpd);
        FWebservice.Produtos.oportunidadeProdutoKits := 'N';
      end;
    end
    else
    if (F120PED.SitPed = 9) or (F120PED.SitPed = 5) then
    begin
      //reabrir
      FWebservice.Dados.oportunidadeEstagioId := iff(F120PED.USU_NumOptCRM > 0, 6, 2);
      FWebservice.Dados.oportunidadeMotivoFechamentoId := iff(F120PED.USU_NumOptCRM > 0, 1, 0);
    end;
  end;
end;

procedure TFacedeCarregamentoCRM.CarregaPendencias();
var
  x120pen: T120PEN;
begin
  x120pen := T120PEN.Create;
  x120pen.AddToCommand(' USU_NUMCOM = 0 AND '+
                       'USU_SITMOV = ''A'' AND '+
                       'EXISTS(SELECT 1 FROM E120PED WHERE '+
                       'E120PED.CODEMP = USU_T120PEN.USU_CODEMP AND '+
                       'E120PED.CODFIL = USU_T120PEN.USU_CODFIL AND '+
                       'E120PED.NUMPED = USU_T120PEN.USU_NUMPED AND '+
                       'E120PED.SITPED = 9)');
  x120pen.Open(False);

  while (x120pen.Next) do
    FPendencias.AddByClass(x120pen);
end;

procedure TFacedeCarregamentoCRM.Carregar(const pDados: TFacadeBaseCRM;
  const pWebservices: TFacadeWebServicesCRM);
begin
  FWebservice := pWebServices;

  if (TipoExecucao = teCompromisso) then
    CarregaPendencias()
  else
    CarregaPedido(pDados);
end;

procedure TFacedeCarregamentoCRM.ConsumirCompromisso;
var
  i: Integer;
 xData: TData;
 x085cli: T085CLI;
 x120pen: T120PEN;

  function VerificarZero(const pValue: Integer): string;
  begin
    Result := iff(pValue < 10, '0' + IntToStr(pValue), pValue);
  end;

begin
  for i := 0 to pred(FPendencias.Count) do
  begin
    x120pen := T120PEN(FPendencias[i]);

    xData := nil;
    x085cli := nil;
    try
      xData := TData.Create(x120pen.USU_DatPrv);
      xData.DiaUtil := True;
      xData.IncDays(5);

      x085cli := T085CLI.Create;
      x085cli.CodCli := x120pen.USU_CodCli;
      x085cli.Open();

      if not(x085cli.IsEmpty) then
      begin
        FWebservice.CodEmp := x120pen.USU_CodEmp;
        FWebservice.Agedamento.compromissoUsuarioId := x120pen.USU_UsuGer;
        FWebservice.Agedamento.compromissoTipoRecorrencia := 10;
        FWebservice.Agedamento.compromissoAtividade := 3;
        FWebservice.Agedamento.compromissoAssunto := 'Programação de Compromisso';
        FWebservice.Agedamento.compromissoPrioridade := 1;
        FWebservice.Agedamento.compromissoCategoriaId := 8;
        FWebservice.Agedamento.compromissoLocal := x085cli.ApeCli;
        FWebservice.Agedamento.compromissoNotificarEmail := 1;
        FWebservice.Agedamento.compromissoContaId := IntToStr(x085cli.CodCli);
        FWebservice.Agedamento.compromissoStatus := 3;
        FWebservice.Agedamento.compromissoContaTipo := 3;
        FWebservice.Agedamento.compromissoUsuarioAgendador := x120pen.USU_UsuGer;
        FWebservice.Agedamento.compromissoHora := '08:00';
        FWebservice.Agedamento.compromissoData := FormatDateTime('YYYY-MM-DD', xData.Data);
        FWebservice.Agedamento.compromissoDia := VerificarZero(xData.Dia);
        FWebservice.Agedamento.compromissoMes := VerificarZero(xData.Mes);
        FWebservice.Agedamento.compromissoAno := xData.Ano;
        FWebservice.Agedamento.compromissoDescricao := Format('Processo criado na integração CRM x Sapiens pelo '+
          'Orçamento/Pedido: %s', [IntToStr(x120pen.USU_NumPed)]);

        x120pen.USU_NumCom := FWebservice.ConsumirCompromisso.id_registro;
      end;
    finally
      FreeAndNil(xData);
      FreeAndNil(x085cli);
    end;
  end;
end;

procedure TFacedeCarregamentoCRM.ConsumirFechamentoCompromisso;
var
  x120pen: T120PEN;
  xUpdate: T120PEN;
  x120pxp: T120PXP;
begin
  StartTransaction;
  try
    x120pen := T120PEN.Create;
    x120pxp := T120PXP.Create;
    try
      x120pxp.CodEmp := F120PED.CodEmp;
      x120pxp.CodFil := F120PED.CodFil;
      x120pxp.NumPed := F120PED.NumPed;
      x120pxp.Open();

      if not(x120pxp.IsEmpty) then
      begin
        x120pen.USU_CodEmp := x120pxp.CodEmp;
        x120pen.USU_CodFil := x120pxp.CodFil;
        x120pen.USU_NumPed := x120pxp.NumPdp;
        x120pen.Open();

        if not(x120pen.IsEmpty) then
        begin
          //compromisso pode ainda nao existir
          if (x120pen.USU_NumCom > 0) then
          begin
            FWebservice.CodEmp := x120pen.USU_CodEmp;
            FWebservice.ConsumirFechamentoCompromisso(x120pen.USU_NumCom);

            //Finaliza no banco
            xUpdate := T120PEN.Create;
            try
              xUpdate.Assign(x120pen);

              xUpdate.Init;
              xUpdate.USU_SitMov := 'I';
              xUpdate.Update();
            finally
              FreeAndNil(xUpdate);
            end;
          end;
        end;
      end;
    finally
      FreeAndNil(x120pen);
      FreeAndNil(x120pxp);
    end;

    Commit;
  except
    RollBack;
  end;
end;

procedure TFacedeCarregamentoCRM.ConsumirOportunidade;
var
  xOportunidadeRetornoDados: oportunidadeRetornoDados;
begin
  xOportunidadeRetornoDados := FWebservice.ConsumirOportunidade;
  F120PED.USU_NumOptCRM := xOportunidadeRetornoDados.id_oportunidade;

  FPedidoExiste := True;
  FOportunidadeAtualizada := (AnsiSameText('2', xOportunidadeRetornoDados.tipo));
  ConsumirFechamentoCompromisso();
end;

procedure TFacedeCarregamentoCRM.ConsumirProdutos;
begin
  if (FPedidoComItens) and (FPedidoExiste) then
    FWebservice.ConsumirProdutos;
end;

constructor TFacedeCarregamentoCRM.Create;
begin
  inherited;

  F120PED := T120PED.Create;
  F120IPD := T120IPD.Create;
  FPendencias := TIterador.Create();

  FPedidoComItens := False;
  FPedidoExiste := False;
  FOportunidadeAtualizada := False;
end;

destructor TFacedeCarregamentoCRM.Destroy;
begin
  inherited;

  FreeAndNil(F120PED);
  FreeAndNil(F120IPD);
  FreeAndNil(FPendencias);
end;

procedure TFacedeCarregamentoCRM.FecharCompromissosAbertos;
begin
  try
    StartTransaction;
    try
      FecharPorCompromisso;
      FecharPorOrcamento;
    finally
      Commit;
    end;
  except
    RollBack;
  end;
end;

procedure TFacedeCarregamentoCRM.FecharPorCompromisso;
var
  x120pen: T120PEN;
  xUpdate: T120PEN;
begin
  x120pen := T120PEN.Create;
  try
    x120pen.AddToCommand(' USU_NUMCOM > 0 AND '+
                          'USU_SITMOV = ''A'' AND '+
                          'EXISTS(SELECT 1 FROM E120PED WHERE '+
                          'E120PED.CODEMP = USU_T120PEN.USU_CODEMP AND '+
                          'E120PED.CODFIL = USU_T120PEN.USU_CODFIL AND '+
                          'E120PED.NUMPED = USU_T120PEN.USU_NUMPED AND '+
                          '(E120PED.SITPED IN (4,5)))');

    x120pen.Open(False);
    while (x120pen.Next) do
    begin
      if (x120pen.USU_NumCom > 0) then
      begin
        FWebservice.CodEmp := x120pen.USU_CodEmp;
        FWebservice.ConsumirFechamentoCompromisso(x120pen.USU_NumCom);
      end;

      //Finaliza no banco
      xUpdate := T120PEN.Create;
      try
        xUpdate.Assign(x120pen);

        xUpdate.Init;
        xUpdate.USU_SitMov := 'I';
        xUpdate.Update();
      finally
        FreeAndNil(xUpdate);
      end;
    end;
  finally
    FreeAndNil(x120pen);
  end;
end;

procedure TFacedeCarregamentoCRM.FecharPorOrcamento;
var
  x120pen: T120PEN;
  xUpdate: T120PEN;
begin
  x120pen := T120PEN.Create;
  try
    x120pen.AddToCommand(' USU_SITMOV = ''A'' AND '+
                         'EXISTS(SELECT 1 FROM E120PXP, E120PED WHERE '+
                         'E120PXP.CODEMP = USU_T120PEN.USU_CODEMP AND '+
                         'E120PXP.CODFIL = USU_T120PEN.USU_CODFIL AND '+
                         'E120PXP.NUMPDP = USU_T120PEN.USU_NUMPED AND '+
                         'E120PXP.SEQIPD = 1 AND '+
                         'E120PED.CODEMP = E120PXP.CODEMP AND '+
                         'E120PED.CODFIL = E120PXP.CODFIL AND '+
                         'E120PED.NUMPED = E120PXP.NUMPED AND '+
                         'E120PED.SITPED IN (4,5))');

    x120pen.Open(False);
    while (x120pen.Next) do
    begin
      if (x120pen.USU_NumCom > 0) then
      begin
        FWebservice.CodEmp := x120pen.USU_CodEmp;
        FWebservice.ConsumirFechamentoCompromisso(x120pen.USU_NumCom);
      end;

      //Finaliza no banco
      xUpdate := T120PEN.Create;
      try
        xUpdate.Assign(x120pen);

        xUpdate.Init;
        xUpdate.USU_SitMov := 'I';
        xUpdate.Update();
      finally
        FreeAndNil(xUpdate);
      end;
    end;
  finally
    FreeAndNil(x120pen);
  end;
end;

//Se a oportunidade foi criada/atualizada  ou a oportunidade nao existe.
function TFacedeCarregamentoCRM.PermiteAtualizar: Boolean;
begin
  Result := (FOportunidadeAtualizada or ((F120PED.USU_NumOptCRM = 0)));
end;

function TFacedeCarregamentoCRM.TipoExecucao: TTipoExecucao;
begin
  Result := teOportunidade;

  if not(IsNull(ParamStr(6))) and (AnsiSameText(ParamStr(6), 'Compromisso')) then
    Result := teCompromisso;
end;

end.
