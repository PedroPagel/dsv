// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://sch:8383/g5-senior-services/sapiens_Synccom_sernior_g5_co_fin_bancocentral?wsdl
//  >Import : http://sch:8383/g5-senior-services/sapiens_Synccom_sernior_g5_co_fin_bancocentral?wsdl>0
//  >Import : http://sch:8383/g5-senior-services/sapiens_Synccom_sernior_g5_co_fin_bancocentral?xsd=1
// Encoding : UTF-8
// Version  : 1.0
// (18/05/2017 11:44:24 - - $Rev: 56641 $)
// ************************************************************************ //

unit wsBancoCentral;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
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

  bancocentralConsumirValorIn = class;          { "http://services.senior.com.br"[GblCplx] }
  bancocentralConsumirValorOutGrid = class;     { "http://services.senior.com.br"[GblCplx] }
  bancocentralConsumirValorOut = class;         { "http://services.senior.com.br"[Lit][GblCplx] }

  Array_Of_bancocentralConsumirValorOutGrid = array of bancocentralConsumirValorOutGrid;   { "http://services.senior.com.br"[GblUbnd] }


  // ************************************************************************ //
  // XML       : bancocentralConsumirValorIn, global, <complexType>
  // Namespace : http://services.senior.com.br
  // ************************************************************************ //
  bancocentralConsumirValorIn = class(TRemotable)
  private
    FflowInstanceID: string;
    FflowInstanceID_Specified: boolean;
    FflowName: string;
    FflowName_Specified: boolean;
    FinCodigo: string;
    FinCodigo_Specified: boolean;
    FinData: string;
    FinData_Specified: boolean;
    procedure SetflowInstanceID(Index: Integer; const Astring: string);
    function  flowInstanceID_Specified(Index: Integer): boolean;
    procedure SetflowName(Index: Integer; const Astring: string);
    function  flowName_Specified(Index: Integer): boolean;
    procedure SetinCodigo(Index: Integer; const Astring: string);
    function  inCodigo_Specified(Index: Integer): boolean;
    procedure SetinData(Index: Integer; const Astring: string);
    function  inData_Specified(Index: Integer): boolean;
  published
    property flowInstanceID: string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FflowInstanceID write SetflowInstanceID stored flowInstanceID_Specified;
    property flowName:       string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FflowName write SetflowName stored flowName_Specified;
    property inCodigo:       string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FinCodigo write SetinCodigo stored inCodigo_Specified;
    property inData:         string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FinData write SetinData stored inData_Specified;
  end;



  // ************************************************************************ //
  // XML       : bancocentralConsumirValorOutGrid, global, <complexType>
  // Namespace : http://services.senior.com.br
  // ************************************************************************ //
  bancocentralConsumirValorOutGrid = class(TRemotable)
  private
    Fano: string;
    Fano_Specified: boolean;
    FanoFim: string;
    FanoFim_Specified: boolean;
    FanoInicio: string;
    FanoInicio_Specified: boolean;
    Faviso: string;
    Faviso_Specified: boolean;
    Fdia: string;
    Fdia_Specified: boolean;
    FdiaFim: string;
    FdiaFim_Specified: boolean;
    FdiaInicio: string;
    FdiaInicio_Specified: boolean;
    Fespecial: string;
    Fespecial_Specified: boolean;
    Ffonte: string;
    Ffonte_Specified: boolean;
    FfullName: string;
    FfullName_Specified: boolean;
    FgestorProprietario: string;
    FgestorProprietario_Specified: boolean;
    Fmes: string;
    Fmes_Specified: boolean;
    FmesFim: string;
    FmesFim_Specified: boolean;
    FmesInicio: string;
    FmesInicio_Specified: boolean;
    FnomeAbreviado: string;
    FnomeAbreviado_Specified: boolean;
    FnomeCompleto: string;
    FnomeCompleto_Specified: boolean;
    Foid: string;
    Foid_Specified: boolean;
    Fperiodicidade: string;
    Fperiodicidade_Specified: boolean;
    FperiodicidadeSigla: string;
    FperiodicidadeSigla_Specified: boolean;
    FpossuiBloqueios: string;
    FpossuiBloqueios_Specified: boolean;
    Fpublica: string;
    Fpublica_Specified: boolean;
    FshortName: string;
    FshortName_Specified: boolean;
    FunidadePadrao: string;
    FunidadePadrao_Specified: boolean;
    FunidadePadraoIngles: string;
    FunidadePadraoIngles_Specified: boolean;
    Fvalor: string;
    Fvalor_Specified: boolean;
    FvalorDiaNaoUtil: string;
    FvalorDiaNaoUtil_Specified: boolean;
    procedure Setano(Index: Integer; const Astring: string);
    function  ano_Specified(Index: Integer): boolean;
    procedure SetanoFim(Index: Integer; const Astring: string);
    function  anoFim_Specified(Index: Integer): boolean;
    procedure SetanoInicio(Index: Integer; const Astring: string);
    function  anoInicio_Specified(Index: Integer): boolean;
    procedure Setaviso(Index: Integer; const Astring: string);
    function  aviso_Specified(Index: Integer): boolean;
    procedure Setdia(Index: Integer; const Astring: string);
    function  dia_Specified(Index: Integer): boolean;
    procedure SetdiaFim(Index: Integer; const Astring: string);
    function  diaFim_Specified(Index: Integer): boolean;
    procedure SetdiaInicio(Index: Integer; const Astring: string);
    function  diaInicio_Specified(Index: Integer): boolean;
    procedure Setespecial(Index: Integer; const Astring: string);
    function  especial_Specified(Index: Integer): boolean;
    procedure Setfonte(Index: Integer; const Astring: string);
    function  fonte_Specified(Index: Integer): boolean;
    procedure SetfullName(Index: Integer; const Astring: string);
    function  fullName_Specified(Index: Integer): boolean;
    procedure SetgestorProprietario(Index: Integer; const Astring: string);
    function  gestorProprietario_Specified(Index: Integer): boolean;
    procedure Setmes(Index: Integer; const Astring: string);
    function  mes_Specified(Index: Integer): boolean;
    procedure SetmesFim(Index: Integer; const Astring: string);
    function  mesFim_Specified(Index: Integer): boolean;
    procedure SetmesInicio(Index: Integer; const Astring: string);
    function  mesInicio_Specified(Index: Integer): boolean;
    procedure SetnomeAbreviado(Index: Integer; const Astring: string);
    function  nomeAbreviado_Specified(Index: Integer): boolean;
    procedure SetnomeCompleto(Index: Integer; const Astring: string);
    function  nomeCompleto_Specified(Index: Integer): boolean;
    procedure Setoid(Index: Integer; const Astring: string);
    function  oid_Specified(Index: Integer): boolean;
    procedure Setperiodicidade(Index: Integer; const Astring: string);
    function  periodicidade_Specified(Index: Integer): boolean;
    procedure SetperiodicidadeSigla(Index: Integer; const Astring: string);
    function  periodicidadeSigla_Specified(Index: Integer): boolean;
    procedure SetpossuiBloqueios(Index: Integer; const Astring: string);
    function  possuiBloqueios_Specified(Index: Integer): boolean;
    procedure Setpublica(Index: Integer; const Astring: string);
    function  publica_Specified(Index: Integer): boolean;
    procedure SetshortName(Index: Integer; const Astring: string);
    function  shortName_Specified(Index: Integer): boolean;
    procedure SetunidadePadrao(Index: Integer; const Astring: string);
    function  unidadePadrao_Specified(Index: Integer): boolean;
    procedure SetunidadePadraoIngles(Index: Integer; const Astring: string);
    function  unidadePadraoIngles_Specified(Index: Integer): boolean;
    procedure Setvalor(Index: Integer; const Astring: string);
    function  valor_Specified(Index: Integer): boolean;
    procedure SetvalorDiaNaoUtil(Index: Integer; const Astring: string);
    function  valorDiaNaoUtil_Specified(Index: Integer): boolean;
  published
    property ano:                 string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read Fano write Setano stored ano_Specified;
    property anoFim:              string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FanoFim write SetanoFim stored anoFim_Specified;
    property anoInicio:           string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FanoInicio write SetanoInicio stored anoInicio_Specified;
    property aviso:               string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read Faviso write Setaviso stored aviso_Specified;
    property dia:                 string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read Fdia write Setdia stored dia_Specified;
    property diaFim:              string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FdiaFim write SetdiaFim stored diaFim_Specified;
    property diaInicio:           string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FdiaInicio write SetdiaInicio stored diaInicio_Specified;
    property especial:            string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read Fespecial write Setespecial stored especial_Specified;
    property fonte:               string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read Ffonte write Setfonte stored fonte_Specified;
    property fullName:            string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FfullName write SetfullName stored fullName_Specified;
    property gestorProprietario:  string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FgestorProprietario write SetgestorProprietario stored gestorProprietario_Specified;
    property mes:                 string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read Fmes write Setmes stored mes_Specified;
    property mesFim:              string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FmesFim write SetmesFim stored mesFim_Specified;
    property mesInicio:           string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FmesInicio write SetmesInicio stored mesInicio_Specified;
    property nomeAbreviado:       string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FnomeAbreviado write SetnomeAbreviado stored nomeAbreviado_Specified;
    property nomeCompleto:        string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FnomeCompleto write SetnomeCompleto stored nomeCompleto_Specified;
    property oid:                 string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read Foid write Setoid stored oid_Specified;
    property periodicidade:       string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read Fperiodicidade write Setperiodicidade stored periodicidade_Specified;
    property periodicidadeSigla:  string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FperiodicidadeSigla write SetperiodicidadeSigla stored periodicidadeSigla_Specified;
    property possuiBloqueios:     string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FpossuiBloqueios write SetpossuiBloqueios stored possuiBloqueios_Specified;
    property publica:             string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read Fpublica write Setpublica stored publica_Specified;
    property shortName:           string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FshortName write SetshortName stored shortName_Specified;
    property unidadePadrao:       string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FunidadePadrao write SetunidadePadrao stored unidadePadrao_Specified;
    property unidadePadraoIngles: string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FunidadePadraoIngles write SetunidadePadraoIngles stored unidadePadraoIngles_Specified;
    property valor:               string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read Fvalor write Setvalor stored valor_Specified;
    property valorDiaNaoUtil:     string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FvalorDiaNaoUtil write SetvalorDiaNaoUtil stored valorDiaNaoUtil_Specified;
  end;



  // ************************************************************************ //
  // XML       : bancocentralConsumirValorOut, global, <complexType>
  // Namespace : http://services.senior.com.br
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  bancocentralConsumirValorOut = class(TRemotable)
  private
    FerroExecucao: string;
    FerroExecucao_Specified: boolean;
    Fgrid: Array_Of_bancocentralConsumirValorOutGrid;
    Fgrid_Specified: boolean;
    procedure SeterroExecucao(Index: Integer; const Astring: string);
    function  erroExecucao_Specified(Index: Integer): boolean;
    procedure Setgrid(Index: Integer; const AArray_Of_bancocentralConsumirValorOutGrid: Array_Of_bancocentralConsumirValorOutGrid);
    function  grid_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property erroExecucao: string                                     Index (IS_OPTN or IS_NLBL or IS_UNQL) read FerroExecucao write SeterroExecucao stored erroExecucao_Specified;
    property grid:         Array_Of_bancocentralConsumirValorOutGrid  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fgrid write Setgrid stored grid_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://services.senior.com.br
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // use       : literal
  // binding   : sapiens_Synccom_sernior_g5_co_fin_bancocentralPortBinding
  // service   : g5-senior-services
  // port      : sapiens_Synccom_sernior_g5_co_fin_bancocentralPort
  // URL       : http://sch:8383/g5-senior-services/sapiens_Synccom_sernior_g5_co_fin_bancocentral
  // ************************************************************************ //
  sapiens_Synccom_sernior_g5_co_fin_bancocentral = interface(IInvokable)
  ['{8E44ACB0-5BD1-C013-A75C-EDFC1507336E}']

    // Cannot unwrap:
    //     - Input message has more than one part
    //     - Output part does not refer to an element
    function  ConsumirValor(const user: string; const password: string; const encryption: Integer; const parameters: bancocentralConsumirValorIn): bancocentralConsumirValorOut; stdcall;
  end;

function Getsapiens_Synccom_sernior_g5_co_fin_bancocentral(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): sapiens_Synccom_sernior_g5_co_fin_bancocentral;


implementation
  uses SysUtils;

function Getsapiens_Synccom_sernior_g5_co_fin_bancocentral(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): sapiens_Synccom_sernior_g5_co_fin_bancocentral;
const
  defWSDL = 'http://sch:8383/g5-senior-services/sapiens_Synccom_sernior_g5_co_fin_bancocentral?wsdl';
  defURL  = 'http://sch:8383/g5-senior-services/sapiens_Synccom_sernior_g5_co_fin_bancocentral';
  defSvc  = 'g5-senior-services';
  defPrt  = 'sapiens_Synccom_sernior_g5_co_fin_bancocentralPort';
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
  try
    Result := (RIO as sapiens_Synccom_sernior_g5_co_fin_bancocentral);
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


procedure bancocentralConsumirValorIn.SetflowInstanceID(Index: Integer; const Astring: string);
begin
  FflowInstanceID := Astring;
  FflowInstanceID_Specified := True;
end;

function bancocentralConsumirValorIn.flowInstanceID_Specified(Index: Integer): boolean;
begin
  Result := FflowInstanceID_Specified;
end;

procedure bancocentralConsumirValorIn.SetflowName(Index: Integer; const Astring: string);
begin
  FflowName := Astring;
  FflowName_Specified := True;
end;

function bancocentralConsumirValorIn.flowName_Specified(Index: Integer): boolean;
begin
  Result := FflowName_Specified;
end;

procedure bancocentralConsumirValorIn.SetinCodigo(Index: Integer; const Astring: string);
begin
  FinCodigo := Astring;
  FinCodigo_Specified := True;
end;

function bancocentralConsumirValorIn.inCodigo_Specified(Index: Integer): boolean;
begin
  Result := FinCodigo_Specified;
end;

procedure bancocentralConsumirValorIn.SetinData(Index: Integer; const Astring: string);
begin
  FinData := Astring;
  FinData_Specified := True;
end;

function bancocentralConsumirValorIn.inData_Specified(Index: Integer): boolean;
begin
  Result := FinData_Specified;
end;

procedure bancocentralConsumirValorOutGrid.Setano(Index: Integer; const Astring: string);
begin
  Fano := Astring;
  Fano_Specified := True;
end;

function bancocentralConsumirValorOutGrid.ano_Specified(Index: Integer): boolean;
begin
  Result := Fano_Specified;
end;

procedure bancocentralConsumirValorOutGrid.SetanoFim(Index: Integer; const Astring: string);
begin
  FanoFim := Astring;
  FanoFim_Specified := True;
end;

function bancocentralConsumirValorOutGrid.anoFim_Specified(Index: Integer): boolean;
begin
  Result := FanoFim_Specified;
end;

procedure bancocentralConsumirValorOutGrid.SetanoInicio(Index: Integer; const Astring: string);
begin
  FanoInicio := Astring;
  FanoInicio_Specified := True;
end;

function bancocentralConsumirValorOutGrid.anoInicio_Specified(Index: Integer): boolean;
begin
  Result := FanoInicio_Specified;
end;

procedure bancocentralConsumirValorOutGrid.Setaviso(Index: Integer; const Astring: string);
begin
  Faviso := Astring;
  Faviso_Specified := True;
end;

function bancocentralConsumirValorOutGrid.aviso_Specified(Index: Integer): boolean;
begin
  Result := Faviso_Specified;
end;

procedure bancocentralConsumirValorOutGrid.Setdia(Index: Integer; const Astring: string);
begin
  Fdia := Astring;
  Fdia_Specified := True;
end;

function bancocentralConsumirValorOutGrid.dia_Specified(Index: Integer): boolean;
begin
  Result := Fdia_Specified;
end;

procedure bancocentralConsumirValorOutGrid.SetdiaFim(Index: Integer; const Astring: string);
begin
  FdiaFim := Astring;
  FdiaFim_Specified := True;
end;

function bancocentralConsumirValorOutGrid.diaFim_Specified(Index: Integer): boolean;
begin
  Result := FdiaFim_Specified;
end;

procedure bancocentralConsumirValorOutGrid.SetdiaInicio(Index: Integer; const Astring: string);
begin
  FdiaInicio := Astring;
  FdiaInicio_Specified := True;
end;

function bancocentralConsumirValorOutGrid.diaInicio_Specified(Index: Integer): boolean;
begin
  Result := FdiaInicio_Specified;
end;

procedure bancocentralConsumirValorOutGrid.Setespecial(Index: Integer; const Astring: string);
begin
  Fespecial := Astring;
  Fespecial_Specified := True;
end;

function bancocentralConsumirValorOutGrid.especial_Specified(Index: Integer): boolean;
begin
  Result := Fespecial_Specified;
end;

procedure bancocentralConsumirValorOutGrid.Setfonte(Index: Integer; const Astring: string);
begin
  Ffonte := Astring;
  Ffonte_Specified := True;
end;

function bancocentralConsumirValorOutGrid.fonte_Specified(Index: Integer): boolean;
begin
  Result := Ffonte_Specified;
end;

procedure bancocentralConsumirValorOutGrid.SetfullName(Index: Integer; const Astring: string);
begin
  FfullName := Astring;
  FfullName_Specified := True;
end;

function bancocentralConsumirValorOutGrid.fullName_Specified(Index: Integer): boolean;
begin
  Result := FfullName_Specified;
end;

procedure bancocentralConsumirValorOutGrid.SetgestorProprietario(Index: Integer; const Astring: string);
begin
  FgestorProprietario := Astring;
  FgestorProprietario_Specified := True;
end;

function bancocentralConsumirValorOutGrid.gestorProprietario_Specified(Index: Integer): boolean;
begin
  Result := FgestorProprietario_Specified;
end;

procedure bancocentralConsumirValorOutGrid.Setmes(Index: Integer; const Astring: string);
begin
  Fmes := Astring;
  Fmes_Specified := True;
end;

function bancocentralConsumirValorOutGrid.mes_Specified(Index: Integer): boolean;
begin
  Result := Fmes_Specified;
end;

procedure bancocentralConsumirValorOutGrid.SetmesFim(Index: Integer; const Astring: string);
begin
  FmesFim := Astring;
  FmesFim_Specified := True;
end;

function bancocentralConsumirValorOutGrid.mesFim_Specified(Index: Integer): boolean;
begin
  Result := FmesFim_Specified;
end;

procedure bancocentralConsumirValorOutGrid.SetmesInicio(Index: Integer; const Astring: string);
begin
  FmesInicio := Astring;
  FmesInicio_Specified := True;
end;

function bancocentralConsumirValorOutGrid.mesInicio_Specified(Index: Integer): boolean;
begin
  Result := FmesInicio_Specified;
end;

procedure bancocentralConsumirValorOutGrid.SetnomeAbreviado(Index: Integer; const Astring: string);
begin
  FnomeAbreviado := Astring;
  FnomeAbreviado_Specified := True;
end;

function bancocentralConsumirValorOutGrid.nomeAbreviado_Specified(Index: Integer): boolean;
begin
  Result := FnomeAbreviado_Specified;
end;

procedure bancocentralConsumirValorOutGrid.SetnomeCompleto(Index: Integer; const Astring: string);
begin
  FnomeCompleto := Astring;
  FnomeCompleto_Specified := True;
end;

function bancocentralConsumirValorOutGrid.nomeCompleto_Specified(Index: Integer): boolean;
begin
  Result := FnomeCompleto_Specified;
end;

procedure bancocentralConsumirValorOutGrid.Setoid(Index: Integer; const Astring: string);
begin
  Foid := Astring;
  Foid_Specified := True;
end;

function bancocentralConsumirValorOutGrid.oid_Specified(Index: Integer): boolean;
begin
  Result := Foid_Specified;
end;

procedure bancocentralConsumirValorOutGrid.Setperiodicidade(Index: Integer; const Astring: string);
begin
  Fperiodicidade := Astring;
  Fperiodicidade_Specified := True;
end;

function bancocentralConsumirValorOutGrid.periodicidade_Specified(Index: Integer): boolean;
begin
  Result := Fperiodicidade_Specified;
end;

procedure bancocentralConsumirValorOutGrid.SetperiodicidadeSigla(Index: Integer; const Astring: string);
begin
  FperiodicidadeSigla := Astring;
  FperiodicidadeSigla_Specified := True;
end;

function bancocentralConsumirValorOutGrid.periodicidadeSigla_Specified(Index: Integer): boolean;
begin
  Result := FperiodicidadeSigla_Specified;
end;

procedure bancocentralConsumirValorOutGrid.SetpossuiBloqueios(Index: Integer; const Astring: string);
begin
  FpossuiBloqueios := Astring;
  FpossuiBloqueios_Specified := True;
end;

function bancocentralConsumirValorOutGrid.possuiBloqueios_Specified(Index: Integer): boolean;
begin
  Result := FpossuiBloqueios_Specified;
end;

procedure bancocentralConsumirValorOutGrid.Setpublica(Index: Integer; const Astring: string);
begin
  Fpublica := Astring;
  Fpublica_Specified := True;
end;

function bancocentralConsumirValorOutGrid.publica_Specified(Index: Integer): boolean;
begin
  Result := Fpublica_Specified;
end;

procedure bancocentralConsumirValorOutGrid.SetshortName(Index: Integer; const Astring: string);
begin
  FshortName := Astring;
  FshortName_Specified := True;
end;

function bancocentralConsumirValorOutGrid.shortName_Specified(Index: Integer): boolean;
begin
  Result := FshortName_Specified;
end;

procedure bancocentralConsumirValorOutGrid.SetunidadePadrao(Index: Integer; const Astring: string);
begin
  FunidadePadrao := Astring;
  FunidadePadrao_Specified := True;
end;

function bancocentralConsumirValorOutGrid.unidadePadrao_Specified(Index: Integer): boolean;
begin
  Result := FunidadePadrao_Specified;
end;

procedure bancocentralConsumirValorOutGrid.SetunidadePadraoIngles(Index: Integer; const Astring: string);
begin
  FunidadePadraoIngles := Astring;
  FunidadePadraoIngles_Specified := True;
end;

function bancocentralConsumirValorOutGrid.unidadePadraoIngles_Specified(Index: Integer): boolean;
begin
  Result := FunidadePadraoIngles_Specified;
end;

procedure bancocentralConsumirValorOutGrid.Setvalor(Index: Integer; const Astring: string);
begin
  Fvalor := Astring;
  Fvalor_Specified := True;
end;

function bancocentralConsumirValorOutGrid.valor_Specified(Index: Integer): boolean;
begin
  Result := Fvalor_Specified;
end;

procedure bancocentralConsumirValorOutGrid.SetvalorDiaNaoUtil(Index: Integer; const Astring: string);
begin
  FvalorDiaNaoUtil := Astring;
  FvalorDiaNaoUtil_Specified := True;
end;

function bancocentralConsumirValorOutGrid.valorDiaNaoUtil_Specified(Index: Integer): boolean;
begin
  Result := FvalorDiaNaoUtil_Specified;
end;

constructor bancocentralConsumirValorOut.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor bancocentralConsumirValorOut.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fgrid)-1 do
    SysUtils.FreeAndNil(Fgrid[I]);
  System.SetLength(Fgrid, 0);
  inherited Destroy;
end;

procedure bancocentralConsumirValorOut.SeterroExecucao(Index: Integer; const Astring: string);
begin
  FerroExecucao := Astring;
  FerroExecucao_Specified := True;
end;

function bancocentralConsumirValorOut.erroExecucao_Specified(Index: Integer): boolean;
begin
  Result := FerroExecucao_Specified;
end;

procedure bancocentralConsumirValorOut.Setgrid(Index: Integer; const AArray_Of_bancocentralConsumirValorOutGrid: Array_Of_bancocentralConsumirValorOutGrid);
begin
  Fgrid := AArray_Of_bancocentralConsumirValorOutGrid;
  Fgrid_Specified := True;
end;

function bancocentralConsumirValorOut.grid_Specified(Index: Integer): boolean;
begin
  Result := Fgrid_Specified;
end;

initialization
  { sapiens_Synccom_sernior_g5_co_fin_bancocentral }
  InvRegistry.RegisterInterface(TypeInfo(sapiens_Synccom_sernior_g5_co_fin_bancocentral), 'http://services.senior.com.br', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(sapiens_Synccom_sernior_g5_co_fin_bancocentral), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(sapiens_Synccom_sernior_g5_co_fin_bancocentral), ioLiteral);
  { sapiens_Synccom_sernior_g5_co_fin_bancocentral.ConsumirValor }
  InvRegistry.RegisterParamInfo(TypeInfo(sapiens_Synccom_sernior_g5_co_fin_bancocentral), 'ConsumirValor', 'parameters', '',
                                '[Namespace="http://services.senior.com.br"]');
  InvRegistry.RegisterParamInfo(TypeInfo(sapiens_Synccom_sernior_g5_co_fin_bancocentral), 'ConsumirValor', 'result', '',
                                '[Namespace="http://services.senior.com.br"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_bancocentralConsumirValorOutGrid), 'http://services.senior.com.br', 'Array_Of_bancocentralConsumirValorOutGrid');
  RemClassRegistry.RegisterXSClass(bancocentralConsumirValorIn, 'http://services.senior.com.br', 'bancocentralConsumirValorIn');
  RemClassRegistry.RegisterXSClass(bancocentralConsumirValorOutGrid, 'http://services.senior.com.br', 'bancocentralConsumirValorOutGrid');
  RemClassRegistry.RegisterXSClass(bancocentralConsumirValorOut, 'http://services.senior.com.br', 'bancocentralConsumirValorOut');
  RemClassRegistry.RegisterSerializeOptions(bancocentralConsumirValorOut, [xoLiteralParam]);

end.
