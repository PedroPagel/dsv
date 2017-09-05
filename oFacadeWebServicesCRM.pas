unit oFacadeWebServicesCRM;

interface

uses
  System.Classes, oTitulo, oBase, System.SysUtils, Data.Db, System.Contnrs,
  WConnect_WSDL, Xml.XMLDoc, Vcl.Forms, oMensagem;

type
  TFacadeWebServicesCRM = class
  private
    FServico: WConnect_CRM_SeniorPortType;

    FProdutos: Array_Of_produtosRecebe;
    FID: Integer;

    FDados: oportunidade;
    FRegistros: produtosRecebeArray;
    FAgedamento: compromisso;

    function GetRegistros: produtosRecebe;
    procedure BeforeExecute(const MethodName: string; SOAPRequest: TStream);
  public
    constructor Create();
    destructor Destroy(); override;

    function ConsumirOportunidade: oportunidadeRetornoDados;
    function ConsumirCompromisso: compromissoRetornoDados;
    function ConsumirProdutos: produtosRetornoDados;
    procedure Add();

    property Dados: oportunidade read FDados write FDados;
    property Produtos: produtosRecebe read GetRegistros;
    property Agedamento: compromisso read FAgedamento write FAgedamento;
  end;

implementation

uses
  Soap.OpConvertOptions, SOAPHTTPClient;

{ TFacadeWebServicesCRM }

procedure TFacadeWebServicesCRM.Add;
begin
  FID := Length(FProdutos);
  Inc(FID);
  SetLength(FProdutos, FID);
  Dec(FID);

  FProdutos[FID] := produtosRecebe.Create;
end;

//Carrega o xml para consulta
procedure TFacadeWebServicesCRM.BeforeExecute(const MethodName: string;
  SOAPRequest: TStream);
var
  xTemp : TStringList;
  xBegin,xEnd: TStringList;
  i: Integer;
  xMensagem: string;
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

  xMensagem := '';
  for i := 0 to pred(xEnd.Count) do
    xMensagem := xMensagem + xEnd[i];

  //gambi para remover hint
  //BeforeExecute('', nil);
end;

function TFacadeWebServicesCRM.ConsumirCompromisso: compromissoRetornoDados;
begin
  Result := FServico.setCompromissos(FAgedamento);
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
  xRIO: THTTPRIO;
begin
  inherited;

  FID := 0;

  xRIO := THTTPRIO.Create(nil);
  xRIO.HTTPWebNode.Proxy := 'proxy.henningsbnu.local:3128';
  xRIO.HTTPWebNode.UserName := 'workcrm';
  xRIO.HTTPWebNode.Password := '3is3NbahN';
  xRIO.HTTPWebNode.UseUTF8InHeader := False;
  xRIO.Converter.Encoding := 'ISO-8859-1';
  xRIO.Converter.Options := [soSendMultiRefObj,soTryAllSchema,soRootRefNodesToBody,soCacheMimeResponse];
  xRIO.OnBeforeExecute := BeforeExecute;

  FServico := GetWConnect_CRM_SeniorPortType(False, '', xRIO);

  FDados := oportunidade.Create;
  FDados.UsuarioLogin := 'integracao';
  FDados.UsuarioSenha := 'integracao';

  FRegistros := produtosRecebeArray.Create;
  FRegistros.UsuarioLogin := 'integracao';
  FRegistros.UsuarioSenha := 'integracao';

  FAgedamento := compromisso.Create;
  FAgedamento.UsuarioLogin := 'integracao';
  FAgedamento.UsuarioSenha := 'integracao';
end;

destructor TFacadeWebServicesCRM.Destroy;
begin
  inherited;
end;

function TFacadeWebServicesCRM.GetRegistros: produtosRecebe;
begin
  Result := FProdutos[FID];
end;

end.
