unit oFacadeListaServicos;

interface

uses
  oFacadeBaseCRM, WConnect_WSDL, oBase, o000isc;

type
  TFacadeListaServico = class
  private
    FCodEmp: Integer;

    FServico: WConnect_CRM_SeniorPortType;
    FDados: oportunidade;
    FAgedamento: compromisso;
    FRegistros: produtosRecebeArray;
    FFechamentoCompromisso: concluiCompromisso;
  public
    constructor Create(const integracao: T000ISC);
    destructor Destroy(); override;

    function Dados: oportunidade;
    function Registros: produtosRecebeArray;
    function Agedamento: compromisso;
    function FechamentoCompromisso: concluiCompromisso;
    function Servico: WConnect_CRM_SeniorPortType;

    property CodEmp: Integer read FCodEmp write FCodEmp;
  end;

implementation

uses
  System.SysUtils, Soap.SOAPHTTPClient, Soap.OpConvertOptions;

{ TFacadeListaServico }

function TFacadeListaServico.Agedamento: compromisso;
begin
  Result := FAgedamento;
end;

constructor TFacadeListaServico.Create(const integracao: T000ISC);
var
  xRIO: THTTPRIO;
begin
  inherited Create;

  xRIO := nil;

  if not(AnsiSameText(ParamStr(6), 'Compromisso')) then
  begin
    xRIO := THTTPRIO.Create(nil);
    xRIO.HTTPWebNode.Proxy := 'proxy.henningsbnu.local:3128';
    xRIO.HTTPWebNode.UserName := 'workcrm';
    xRIO.HTTPWebNode.Password := '3is3NbahN';
    xRIO.HTTPWebNode.UseUTF8InHeader := False;
    xRIO.Converter.Encoding := 'ISO-8859-1';
    xRIO.Converter.Options := [soSendMultiRefObj,soTryAllSchema,soRootRefNodesToBody,soCacheMimeResponse];
  end;

  FServico := GetWConnect_CRM_SeniorPortType(False, integracao.USU_UrlCrm, xRIO);

  FDados := oportunidade.Create;
  FDados.UsuarioLogin := integracao.USU_UsuCrm;
  FDados.UsuarioSenha := integracao.USU_SenCrm;

  FRegistros := produtosRecebeArray.Create;
  FRegistros.UsuarioLogin := integracao.USU_UsuCrm;
  FRegistros.UsuarioSenha := integracao.USU_SenCrm;

  FAgedamento := compromisso.Create;
  FAgedamento.UsuarioLogin := integracao.USU_UsuCrm;
  FAgedamento.UsuarioSenha := integracao.USU_SenCrm;

  FFechamentoCompromisso := concluiCompromisso.Create;
  FFechamentoCompromisso.UsuarioLogin := integracao.USU_UsuCrm;
  FFechamentoCompromisso.UsuarioSenha := integracao.USU_SenCrm;
end;

function TFacadeListaServico.Dados: oportunidade;
begin
  Result := FDados;
end;

destructor TFacadeListaServico.Destroy;
begin
  inherited;
end;

function TFacadeListaServico.FechamentoCompromisso: concluiCompromisso;
begin
  Result := FFechamentoCompromisso;
end;

function TFacadeListaServico.Registros: produtosRecebeArray;
begin
  Result := FRegistros;
end;

function TFacadeListaServico.Servico: WConnect_CRM_SeniorPortType;
begin
  Result := FServico;
end;

end.
