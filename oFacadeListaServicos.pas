unit oFacadeListaServicos;

interface

uses
  oFacadeBaseCRM, WConnect_WSDL, oBase, o000isc, System.Classes;

type
  TFacadeListaServico = class
  private
    FCodEmp: Integer;

    FServico: WConnect_CRM_SeniorPortType;
    FDados: oportunidade;
    FAgedamento: compromisso;
    FRegistros: produtosRecebeArray;
    FFechamentoCompromisso: concluiCompromisso;

    procedure BeforeExecute(const MethodName: string; SOAPRequest: TStream);
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

procedure TFacadeListaServico.BeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  xTemp : TStringList;
  xBegin,xEnd: TStringList;
  i: Integer;
begin
  xBegin := TStringList.Create();
  xEnd := TStringList.Create();
  xTemp := TStringList.Create();

  SOAPRequest.Position := 0;

  xTemp.LoadFromStream(SOAPRequest);
  xBegin.Text := StringReplace(xTemp.Text,'&lt;','<',[RfReplaceAll]);
  xEnd.Text := StringReplace(xBegin.Text,'&gt;','>',[RfReplaceAll]);
  SOAPRequest.Position := 0;
  SOAPRequest.Size := 0;
  xEnd.SaveToStream(SOAPRequest);
  SOAPRequest.Position := 0;

  FMensagem := '';
  for i := 0 to pred(xEnd.Count) do
    FMensagem := FMensagem + xEnd[i];

  //gambi para remover hint
  //BeforeExecute('', nil);
end;

constructor TFacadeListaServico.Create(const integracao: T000ISC);
var
  xRIO: THTTPRIO;
begin
  inherited Create;

  //xRIO := nil;
  xRIO := THTTPRIO.Create(nil);

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
  xRio.OnBeforeExecute := BeforeExecute;

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
