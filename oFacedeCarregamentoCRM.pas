unit oFacedeCarregamentoCRM;

interface

uses
  oFacadeBaseCRM, oFacadeWebServicesCRM, oBase, o120ped, o120ipd;

type
  TFacedeCarregamentoCRM = class(TFacadeBaseCRM)
  private
    FWebservice: TFacadeWebServicesCRM;
    F120PED: T120PED;
    F120IPD: T120IPD;
    FPedidoComItens: Boolean;
    FOportunidadeAtualizada: Boolean;

  public
    constructor Create();
    destructor Destroy(); override;

    procedure Carregar(const pDados: TFacadeBaseCRM; const pWebServices: TFacadeWebServicesCRM);
    procedure ConsumirOportunidade();
    procedure ConsumirProdutos();
    procedure ConsumirCompromisso();

    function OportunidadeAtualizada: Boolean;

    property Pedido: T120PED read F120PED;
  end;

implementation

uses
  System.SysUtils, o085cli, WConnect_WSDL;

{ TFacedeCarregamentoCRM }

procedure TFacedeCarregamentoCRM.Carregar(const pDados: TFacadeBaseCRM;
  const pWebservices: TFacadeWebServicesCRM);
begin
  FWebservice := pWebservices;

  F120PED.CodEmp := pDados.CodEmp;
  F120PED.CodFil := pDados.CodFil;
  F120PED.NumPed := pDados.NumPed;
  F120PED.PropertyForSelect(['CODEMP', 'CODFIL', 'NUMPED'], True);

  if (F120PED.Execute(etSelect)) then
  begin
    FWebservice.Dados.oportunidadeContaId := F120PED.CodCli;
    FWebservice.Dados.oportunidadeNumeroPedido := IntToStr(F120PED.CodEmp) + '-' +
      IntToStr(F120PED.CodFil) + '-' + IntToStr(F120PED.NumPed);

    FWebservice.Dados.oportunidadeNome := 'Orçamento/Pedido '+ FWebservice.Dados.oportunidadeNumeroPedido;
    FWebservice.Dados.oportunidadeHistorico := 'Importação Automática Sapiens - JOB';
    FWebservice.Dados.oportunidadeTipoId := 1;
    FWebservice.Dados.oportunidadeOrigemId := 12;
    FWebservice.Dados.oportunidadeModalidadeNegocioId := 1;
    FWebservice.Dados.oportunidadeUsuarioIdERP := F120PED.CodRep;
    FWebservice.Dados.oportunidadeProbabilidade := 100;

    FWebservice.Dados.oportunidadeDataPrevistaFechamento := FormatDateTime('YYYY-MM-DD', F120PED.DatEmi);
    FWebservice.Dados.oportunidadeValorPrevisto := StringReplace(FloatToStr(F120PED.VlrOri), ',', '.', [rfReplaceAll]);

    if (F120PED.SitPed = 1) then
    begin
      //fechado
      FWebservice.Dados.oportunidadeEstagioId := 1;
      F120IPD.CodEmp := F120PED.CodEmp;
      F120IPD.CodFil := F120PED.CodFil;
      F120IPD.NumPed := F120PED.NumPed;
      F120IPD.PropertyForSelect(['CODEMP', 'CODFIL', 'NUMPED'], True);

      F120IPD.AddTable(['E075PRO']);
      F120IPD.AddToCommand(' AND E075PRO.INDKIT = ''N'' AND E075PRO.CODEMP = E120IPD.CODEMP AND E075PRO.CODPRO = E120IPD.CODPRO', False);
      FPedidoComItens := F120IPD.Execute(etSelect, esLoop);

      while (F120IPD.Next) do
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
    if (F120PED.SitPed = 9) then
    begin
      //reabrir
      FWebservice.Dados.oportunidadeEstagioId := 6;
      FWebservice.Dados.oportunidadeMotivoFechamentoId := 1;
    end;
  end;
end;

procedure TFacedeCarregamentoCRM.ConsumirCompromisso;
var
 xData: TData;
 x085cli: T085CLI;

  function VerificarZero(const pValue: Integer): string;
  begin
    Result := iff(pValue < 10, '0' + IntToStr(pValue), pValue);
  end;

begin
  if not(FOportunidadeAtualizada) then
  begin
    xData := nil;
    x085cli := nil;
    try
      xData := TData.Create(F120PED.DatPrv);
      xData.DiaDaSemana := True;
      xData.IncDays(15);

      x085cli := T085CLI.Create;
      x085cli.CodCli := F120PED.CodCli;
      x085cli.PropertyForSelect(['CODCLI']);

      if (x085cli.Execute(etSelect)) then
      begin
        FWebservice.Agedamento.compromissoUsuarioId := F120PED.CodRep;
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
        FWebservice.Agedamento.compromissoUsuarioAgendador := F120PED.CodRep;

        FWebservice.Agedamento.compromissoHora := '08:00';
        FWebservice.Agedamento.compromissoData := FormatDateTime('YYYY-MM-DD', xData.Data);
        FWebservice.Agedamento.compromissoDia := VerificarZero(xData.Dia);
        FWebservice.Agedamento.compromissoMes := VerificarZero(xData.Mes);
        FWebservice.Agedamento.compromissoAno := xData.Ano;

        FWebservice.Agedamento.compromissoDescricao := Format('Processo criado na integração CRM x Sapiens pela '+
          'Oportunidade: %s', [FWebservice.Dados.oportunidadeNumeroPedido]);


        FWebservice.ConsumirCompromisso;
      end;
    finally
      FreeAndNil(xData);
      FreeAndNil(x085cli);
    end;
  end;
end;

procedure TFacedeCarregamentoCRM.ConsumirOportunidade;
var
  xOportunidadeRetornoDados: oportunidadeRetornoDados;
begin
  xOportunidadeRetornoDados := FWebservice.ConsumirOportunidade;
  F120PED.USU_NumOptCRM := xOportunidadeRetornoDados.id_oportunidade;

  FOportunidadeAtualizada := (AnsiSameText('2', xOportunidadeRetornoDados.tipo));
end;

procedure TFacedeCarregamentoCRM.ConsumirProdutos;
begin
  if not(FOportunidadeAtualizada) and (FPedidoComItens) then
    FWebservice.ConsumirProdutos;
end;

constructor TFacedeCarregamentoCRM.Create;
begin
  inherited;

  F120PED := T120PED.Create;
  F120IPD := T120IPD.Create;
  FPedidoComItens := False;
  FOportunidadeAtualizada := False;
end;

destructor TFacedeCarregamentoCRM.Destroy;
begin
  inherited;

  FreeAndNil(F120PED);
  FreeAndNil(F120IPD);
end;

function TFacedeCarregamentoCRM.OportunidadeAtualizada: Boolean;
begin
  Result := FOportunidadeAtualizada;
end;

end.
