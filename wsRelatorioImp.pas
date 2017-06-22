// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://sch:8383/g5-senior-services/sapiens_Synccom_senior_g5_co_sup_RelatorioImportacao?wsdl
//  >Import : http://sch:8383/g5-senior-services/sapiens_Synccom_senior_g5_co_sup_RelatorioImportacao?wsdl>0
//  >Import : http://sch:8383/g5-senior-services/sapiens_Synccom_senior_g5_co_sup_RelatorioImportacao?xsd=1
// Encoding : UTF-8
// Version  : 1.0
// (20/06/2017 09:10:15 - - $Rev: 56641 $)
// ************************************************************************ //

unit wsRelatorioImp;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns, oBase;

const
  IS_OPTN = $0001;
  IS_NLBL = $0004;
  IS_UNQL = $0008;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:int             - "http://www.w3.org/2001/XMLSchema"[]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Lit][Gbl]

  relatorioImportacaoconsumirIn = class;        { "http://services.senior.com.br"[GblCplx] }
  relatorioImportacaoconsumirOut = class;       { "http://services.senior.com.br"[Lit][GblCplx] }



  // ************************************************************************ //
  // XML       : relatorioImportacaoconsumirIn, global, <complexType>
  // Namespace : http://services.senior.com.br
  // ************************************************************************ //
  relatorioImportacaoconsumirIn = class(TRemotable)
  private
    FcodEmp: string;
    FcodEmp_Specified: boolean;
    FcodFil: string;
    FcodFil_Specified: boolean;
    FcodFor: string;
    FcodFor_Specified: boolean;
    Festado: string;
    Festado_Specified: boolean;
    FflowInstanceID: string;
    FflowInstanceID_Specified: boolean;
    FflowName: string;
    FflowName_Specified: boolean;
    FnumOcp: string;
    FnumOcp_Specified: boolean;
    procedure SetcodEmp(Index: Integer; const Astring: string);
    function  codEmp_Specified(Index: Integer): boolean;
    procedure SetcodFil(Index: Integer; const Astring: string);
    function  codFil_Specified(Index: Integer): boolean;
    procedure SetcodFor(Index: Integer; const Astring: string);
    function  codFor_Specified(Index: Integer): boolean;
    procedure Setestado(Index: Integer; const Astring: string);
    function  estado_Specified(Index: Integer): boolean;
    procedure SetflowInstanceID(Index: Integer; const Astring: string);
    function  flowInstanceID_Specified(Index: Integer): boolean;
    procedure SetflowName(Index: Integer; const Astring: string);
    function  flowName_Specified(Index: Integer): boolean;
    procedure SetnumOcp(Index: Integer; const Astring: string);
    function  numOcp_Specified(Index: Integer): boolean;
  published
    property codEmp:         string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodEmp write SetcodEmp stored codEmp_Specified;
    property codFil:         string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodFil write SetcodFil stored codFil_Specified;
    property codFor:         string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodFor write SetcodFor stored codFor_Specified;
    property estado:         string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read Festado write Setestado stored estado_Specified;
    property flowInstanceID: string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FflowInstanceID write SetflowInstanceID stored flowInstanceID_Specified;
    property flowName:       string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FflowName write SetflowName stored flowName_Specified;
    property numOcp:         string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FnumOcp write SetnumOcp stored numOcp_Specified;
  end;



  // ************************************************************************ //
  // XML       : relatorioImportacaoconsumirOut, global, <complexType>
  // Namespace : http://services.senior.com.br
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  relatorioImportacaoconsumirOut = class(TRemotable)
  private
    FerroExecucao: string;
    FerroExecucao_Specified: boolean;
    procedure SeterroExecucao(Index: Integer; const Astring: string);
    function  erroExecucao_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
  published
    property erroExecucao: string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FerroExecucao write SeterroExecucao stored erroExecucao_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://services.senior.com.br
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // use       : literal
  // binding   : sapiens_Synccom_senior_g5_co_sup_RelatorioImportacaoPortBinding
  // service   : g5-senior-services
  // port      : sapiens_Synccom_senior_g5_co_sup_RelatorioImportacaoPort
  // URL       : http://sch:8383/g5-senior-services/sapiens_Synccom_senior_g5_co_sup_RelatorioImportacao
  // ************************************************************************ //
  sapiens_Synccom_senior_g5_co_sup_RelatorioImportacao = interface(IInvokable)
  ['{D2FF681F-9D55-D6CE-909E-6BF26C70BF51}']

    // Cannot unwrap: 
    //     - Input message has more than one part
    //     - Output part does not refer to an element
    function  consumir(const user: string; const password: string; const encryption: Integer; const parameters: relatorioImportacaoconsumirIn): relatorioImportacaoconsumirOut; stdcall;
  end;

function Getsapiens_Synccom_senior_g5_co_sup_RelatorioImportacao(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): sapiens_Synccom_senior_g5_co_sup_RelatorioImportacao;


implementation
  uses SysUtils;

function Getsapiens_Synccom_senior_g5_co_sup_RelatorioImportacao(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): sapiens_Synccom_senior_g5_co_sup_RelatorioImportacao;
const
  defWSDL = 'http://sch:8383/g5-senior-services/sapiens_Synccom_senior_g5_co_sup_RelatorioImportacao?wsdl';
  defURL  = 'http://sch:8383/g5-senior-services/sapiens_Synccom_senior_g5_co_sup_RelatorioImportacao';
  defSvc  = 'g5-senior-services';
  defPrt  = 'sapiens_Synccom_senior_g5_co_sup_RelatorioImportacaoPort';
var
  RIO: THTTPRIO;
begin
  Result := nil;

  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;

  Addr := FOracleConnection.MontarURL(TypeInfo(sapiens_Synccom_senior_g5_co_sup_RelatorioImportacao));
  try
    Result := (RIO as sapiens_Synccom_senior_g5_co_sup_RelatorioImportacao);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


procedure relatorioImportacaoconsumirIn.SetcodEmp(Index: Integer; const Astring: string);
begin
  FcodEmp := Astring;
  FcodEmp_Specified := True;
end;

function relatorioImportacaoconsumirIn.codEmp_Specified(Index: Integer): boolean;
begin
  Result := FcodEmp_Specified;
end;

procedure relatorioImportacaoconsumirIn.SetcodFil(Index: Integer; const Astring: string);
begin
  FcodFil := Astring;
  FcodFil_Specified := True;
end;

function relatorioImportacaoconsumirIn.codFil_Specified(Index: Integer): boolean;
begin
  Result := FcodFil_Specified;
end;

procedure relatorioImportacaoconsumirIn.SetcodFor(Index: Integer; const Astring: string);
begin
  FcodFor := Astring;
  FcodFor_Specified := True;
end;

function relatorioImportacaoconsumirIn.codFor_Specified(Index: Integer): boolean;
begin
  Result := FcodFor_Specified;
end;

procedure relatorioImportacaoconsumirIn.Setestado(Index: Integer; const Astring: string);
begin
  Festado := Astring;
  Festado_Specified := True;
end;

function relatorioImportacaoconsumirIn.estado_Specified(Index: Integer): boolean;
begin
  Result := Festado_Specified;
end;

procedure relatorioImportacaoconsumirIn.SetflowInstanceID(Index: Integer; const Astring: string);
begin
  FflowInstanceID := Astring;
  FflowInstanceID_Specified := True;
end;

function relatorioImportacaoconsumirIn.flowInstanceID_Specified(Index: Integer): boolean;
begin
  Result := FflowInstanceID_Specified;
end;

procedure relatorioImportacaoconsumirIn.SetflowName(Index: Integer; const Astring: string);
begin
  FflowName := Astring;
  FflowName_Specified := True;
end;

function relatorioImportacaoconsumirIn.flowName_Specified(Index: Integer): boolean;
begin
  Result := FflowName_Specified;
end;

procedure relatorioImportacaoconsumirIn.SetnumOcp(Index: Integer; const Astring: string);
begin
  FnumOcp := Astring;
  FnumOcp_Specified := True;
end;

function relatorioImportacaoconsumirIn.numOcp_Specified(Index: Integer): boolean;
begin
  Result := FnumOcp_Specified;
end;

constructor relatorioImportacaoconsumirOut.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

procedure relatorioImportacaoconsumirOut.SeterroExecucao(Index: Integer; const Astring: string);
begin
  FerroExecucao := Astring;
  FerroExecucao_Specified := True;
end;

function relatorioImportacaoconsumirOut.erroExecucao_Specified(Index: Integer): boolean;
begin
  Result := FerroExecucao_Specified;
end;

initialization
  { sapiens_Synccom_senior_g5_co_sup_RelatorioImportacao }
  InvRegistry.RegisterInterface(TypeInfo(sapiens_Synccom_senior_g5_co_sup_RelatorioImportacao), 'http://services.senior.com.br', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(sapiens_Synccom_senior_g5_co_sup_RelatorioImportacao), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(sapiens_Synccom_senior_g5_co_sup_RelatorioImportacao), ioLiteral);
  { sapiens_Synccom_senior_g5_co_sup_RelatorioImportacao.consumir }
  InvRegistry.RegisterParamInfo(TypeInfo(sapiens_Synccom_senior_g5_co_sup_RelatorioImportacao), 'consumir', 'parameters', '',
                                '[Namespace="http://services.senior.com.br"]');
  InvRegistry.RegisterParamInfo(TypeInfo(sapiens_Synccom_senior_g5_co_sup_RelatorioImportacao), 'consumir', 'result', '',
                                '[Namespace="http://services.senior.com.br"]');
  RemClassRegistry.RegisterXSClass(relatorioImportacaoconsumirIn, 'http://services.senior.com.br', 'relatorioImportacaoconsumirIn');
  RemClassRegistry.RegisterXSClass(relatorioImportacaoconsumirOut, 'http://services.senior.com.br', 'relatorioImportacaoconsumirOut');
  RemClassRegistry.RegisterSerializeOptions(relatorioImportacaoconsumirOut, [xoLiteralParam]);

end.