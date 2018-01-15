unit oFacadeWebServicesCRM;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs,
  Xml.XMLDoc, oMensagem, WConnect_WSDL, oFacadeBaseCRM, oFacadeListaServicos;

type
  TFacadeWebServicesCRM = class(TIterador)
  private
    FServico: WConnect_CRM_SeniorPortType;
    FProdutos: Array_Of_produtosRecebe;
    FID: Integer;

    FDados: oportunidade;
    FRegistros: produtosRecebeArray;
    FAgedamento: compromisso;
    FFechamentoCompromisso: concluiCompromisso;

    procedure SetCodEmp(Value: Integer);
    function GetRegistros: produtosRecebe;
  public
    constructor Create();
    destructor Destroy(); override;

    function ConsumirOportunidade: oportunidadeRetornoDados;
    function ConsumirCompromisso: compromissoRetornoDados;
    function ConsumirProdutos: produtosRetornoDados;
    function ConsumirFechamentoCompromisso(const pId: Integer): concluiCompromissoRetornoDados;
    procedure Add();

    property CodEmp: Integer write SetCodEmp;
    property Dados: oportunidade read FDados write FDados;
    property Produtos: produtosRecebe read GetRegistros;
    property Agedamento: compromisso read FAgedamento write FAgedamento;
  end;

implementation

uses
  Soap.OpConvertOptions, SOAPHTTPClient, o000isc;

{ TFacadeWebServicesCRM }

procedure TFacadeWebServicesCRM.Add;
begin
  FID := Length(FProdutos);
  Inc(FID);
  SetLength(FProdutos, FID);
  Dec(FID);

  FProdutos[FID] := produtosRecebe.Create;
end;

function TFacadeWebServicesCRM.ConsumirCompromisso: compromissoRetornoDados;
begin
  Result := FServico.setCompromissos(FAgedamento);
end;

function TFacadeWebServicesCRM.ConsumirFechamentoCompromisso(const pId: Integer): concluiCompromissoRetornoDados;
begin
  FFechamentoCompromisso.compromissoId := pId;
  Result := FServico.setConcluiCompromissos(FFechamentoCompromisso);
end;

function TFacadeWebServicesCRM.ConsumirOportunidade: oportunidadeRetornoDados;
begin
  Result := FServico.setOportunidade(FDados);
  FRegistros.produtosOportunidadeId := Result.id_oportunidade;
end;

function TFacadeWebServicesCRM.ConsumirProdutos: produtosRetornoDados;
begin
  FRegistros.produtosRecebe := FProdutos;
  Result := FServico.setProdutosOportunidade(FRegistros);
end;

constructor TFacadeWebServicesCRM.Create;
var
  x000isc: T000ISC;
  xFacadeListaServico: TFacadeListaServico;
begin
  inherited Create();

  FID := 0;
  Self.indexed := True;
  Self.IndexFields(['CodEmp']);

  x000isc := T000ISC.Create;
  try
    x000isc.Init;
    x000isc.Open();
    while (x000isc.Next) do
    begin
      xFacadeListaServico := TFacadeListaServico.Create(x000isc);
      xFacadeListaServico.CodEmp := x000isc.USU_CodEmp;
      inherited Add(xFacadeListaServico);
    end;
  finally
    FreeAndNil(x000isc);
  end;
end;

destructor TFacadeWebServicesCRM.Destroy;
begin
  inherited;
end;

function TFacadeWebServicesCRM.GetRegistros: produtosRecebe;
begin
  Result := FProdutos[FID];
end;

procedure TFacadeWebServicesCRM.SetCodEmp(Value: Integer);
var
  i: Integer;
begin
  i := Self.IndexOf(IntToStr(Value));

  if (i > -1) then
  begin
    FRegistros := TFacadeListaServico(Self[i]).Registros;
    FDados := TFacadeListaServico(Self[i]).Dados;
    FAgedamento := TFacadeListaServico(Self[i]).Agedamento;
    FFechamentoCompromisso := TFacadeListaServico(Self[i]).FechamentoCompromisso;
    FServico := TFacadeListaServico(Self[i]).Servico;
  end;
end;

end.
