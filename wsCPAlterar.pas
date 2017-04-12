// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://sch:8383/g5-senior-services/sapiens_Synccom_senior_g5_co_mfi_cpa_alteratituloscp?wsdl
//  >Import : http://sch:8383/g5-senior-services/sapiens_Synccom_senior_g5_co_mfi_cpa_alteratituloscp?wsdl>0
//  >Import : http://sch:8383/g5-senior-services/sapiens_Synccom_senior_g5_co_mfi_cpa_alteratituloscp?xsd=1
// Encoding : UTF-8
// Version  : 1.0
// (21/03/2017 17:31:28 - - $Rev: 56641 $)
// ************************************************************************ //

unit wsCPAlterar;

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
  // !:double          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Lit][Gbl]

  alteratituloscpAlteraTitulosCPInGridTitulosAlterar = class;   { "http://services.senior.com.br"[GblCplx] }
  alteratituloscpAlteraTitulosCPIn = class;     { "http://services.senior.com.br"[GblCplx] }
  alteratituloscpAlteraTitulosCPOut = class;    { "http://services.senior.com.br"[Lit][GblCplx] }
  alteratituloscpAlteraTitulosCPOutGridRetorno = class;   { "http://services.senior.com.br"[GblCplx] }

  Array_Of_alteratituloscpAlteraTitulosCPOutGridRetorno = array of alteratituloscpAlteraTitulosCPOutGridRetorno;   { "http://services.senior.com.br"[GblUbnd] }
  Array_Of_alteratituloscpAlteraTitulosCPInGridTitulosAlterar = array of alteratituloscpAlteraTitulosCPInGridTitulosAlterar;   { "http://services.senior.com.br"[GblUbnd] }


  // ************************************************************************ //
  // XML       : alteratituloscpAlteraTitulosCPInGridTitulosAlterar, global, <complexType>
  // Namespace : http://services.senior.com.br
  // ************************************************************************ //
  alteratituloscpAlteraTitulosCPInGridTitulosAlterar = class(TRemotable)
  private
    FcodCrp: string;
    FcodCrp_Specified: boolean;
    FcodCrt: string;
    FcodCrt_Specified: boolean;
    FcodFav: Double;
    FcodFav_Specified: boolean;
    FcodFil: Integer;
    FcodFil_Specified: boolean;
    FcodFor: Integer;
    FcodFor_Specified: boolean;
    FcodFpg: Integer;
    FcodFpg_Specified: boolean;
    FcodMoe: string;
    FcodMoe_Specified: boolean;
    FcodNtg: Integer;
    FcodNtg_Specified: boolean;
    FcodPor: string;
    FcodPor_Specified: boolean;
    FcodTpt: string;
    FcodTpt_Specified: boolean;
    FdatEmi: string;
    FdatEmi_Specified: boolean;
    FdatEnt: string;
    FdatEnt_Specified: boolean;
    FdatPpt: string;
    FdatPpt_Specified: boolean;
    FnumTit: string;
    FnumTit_Specified: boolean;
    FsitTit: string;
    FsitTit_Specified: boolean;
    FvctOri: string;
    FvctOri_Specified: boolean;
    FvctPro: string;
    FvctPro_Specified: boolean;
    FvlrOri: Double;
    FvlrOri_Specified: boolean;
    FvlrRba: Double;
    FvlrRba_Specified: boolean;
    procedure SetcodCrp(Index: Integer; const Astring: string);
    function  codCrp_Specified(Index: Integer): boolean;
    procedure SetcodCrt(Index: Integer; const Astring: string);
    function  codCrt_Specified(Index: Integer): boolean;
    procedure SetcodFav(Index: Integer; const ADouble: Double);
    function  codFav_Specified(Index: Integer): boolean;
    procedure SetcodFil(Index: Integer; const AInteger: Integer);
    function  codFil_Specified(Index: Integer): boolean;
    procedure SetcodFor(Index: Integer; const AInteger: Integer);
    function  codFor_Specified(Index: Integer): boolean;
    procedure SetcodFpg(Index: Integer; const AInteger: Integer);
    function  codFpg_Specified(Index: Integer): boolean;
    procedure SetcodMoe(Index: Integer; const Astring: string);
    function  codMoe_Specified(Index: Integer): boolean;
    procedure SetcodNtg(Index: Integer; const AInteger: Integer);
    function  codNtg_Specified(Index: Integer): boolean;
    procedure SetcodPor(Index: Integer; const Astring: string);
    function  codPor_Specified(Index: Integer): boolean;
    procedure SetcodTpt(Index: Integer; const Astring: string);
    function  codTpt_Specified(Index: Integer): boolean;
    procedure SetdatEmi(Index: Integer; const Astring: string);
    function  datEmi_Specified(Index: Integer): boolean;
    procedure SetdatEnt(Index: Integer; const Astring: string);
    function  datEnt_Specified(Index: Integer): boolean;
    procedure SetdatPpt(Index: Integer; const Astring: string);
    function  datPpt_Specified(Index: Integer): boolean;
    procedure SetnumTit(Index: Integer; const Astring: string);
    function  numTit_Specified(Index: Integer): boolean;
    procedure SetsitTit(Index: Integer; const Astring: string);
    function  sitTit_Specified(Index: Integer): boolean;
    procedure SetvctOri(Index: Integer; const Astring: string);
    function  vctOri_Specified(Index: Integer): boolean;
    procedure SetvctPro(Index: Integer; const Astring: string);
    function  vctPro_Specified(Index: Integer): boolean;
    procedure SetvlrOri(Index: Integer; const ADouble: Double);
    function  vlrOri_Specified(Index: Integer): boolean;
    procedure SetvlrRba(Index: Integer; const ADouble: Double);
    function  vlrRba_Specified(Index: Integer): boolean;
  published
    property codCrp: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodCrp write SetcodCrp stored codCrp_Specified;
    property codCrt: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodCrt write SetcodCrt stored codCrt_Specified;
    property codFav: Double   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodFav write SetcodFav stored codFav_Specified;
    property codFil: Integer  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodFil write SetcodFil stored codFil_Specified;
    property codFor: Integer  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodFor write SetcodFor stored codFor_Specified;
    property codFpg: Integer  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodFpg write SetcodFpg stored codFpg_Specified;
    property codMoe: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodMoe write SetcodMoe stored codMoe_Specified;
    property codNtg: Integer  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodNtg write SetcodNtg stored codNtg_Specified;
    property codPor: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodPor write SetcodPor stored codPor_Specified;
    property codTpt: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodTpt write SetcodTpt stored codTpt_Specified;
    property datEmi: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FdatEmi write SetdatEmi stored datEmi_Specified;
    property datEnt: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FdatEnt write SetdatEnt stored datEnt_Specified;
    property datPpt: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FdatPpt write SetdatPpt stored datPpt_Specified;
    property numTit: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FnumTit write SetnumTit stored numTit_Specified;
    property sitTit: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FsitTit write SetsitTit stored sitTit_Specified;
    property vctOri: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FvctOri write SetvctOri stored vctOri_Specified;
    property vctPro: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FvctPro write SetvctPro stored vctPro_Specified;
    property vlrOri: Double   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FvlrOri write SetvlrOri stored vlrOri_Specified;
    property vlrRba: Double   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FvlrRba write SetvlrRba stored vlrRba_Specified;
  end;



  // ************************************************************************ //
  // XML       : alteratituloscpAlteraTitulosCPIn, global, <complexType>
  // Namespace : http://services.senior.com.br
  // ************************************************************************ //
  alteratituloscpAlteraTitulosCPIn = class(TRemotable)
  private
    FcodEmp: Integer;
    FcodEmp_Specified: boolean;
    FflowInstanceID: string;
    FflowInstanceID_Specified: boolean;
    FflowName: string;
    FflowName_Specified: boolean;
    FgridTitulosAlterar: Array_Of_alteratituloscpAlteraTitulosCPInGridTitulosAlterar;
    FgridTitulosAlterar_Specified: boolean;
    procedure SetcodEmp(Index: Integer; const AInteger: Integer);
    function  codEmp_Specified(Index: Integer): boolean;
    procedure SetflowInstanceID(Index: Integer; const Astring: string);
    function  flowInstanceID_Specified(Index: Integer): boolean;
    procedure SetflowName(Index: Integer; const Astring: string);
    function  flowName_Specified(Index: Integer): boolean;
    procedure SetgridTitulosAlterar(Index: Integer; const AArray_Of_alteratituloscpAlteraTitulosCPInGridTitulosAlterar: Array_Of_alteratituloscpAlteraTitulosCPInGridTitulosAlterar);
    function  gridTitulosAlterar_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property codEmp:             Integer                                                      Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodEmp write SetcodEmp stored codEmp_Specified;
    property flowInstanceID:     string                                                       Index (IS_OPTN or IS_NLBL or IS_UNQL) read FflowInstanceID write SetflowInstanceID stored flowInstanceID_Specified;
    property flowName:           string                                                       Index (IS_OPTN or IS_NLBL or IS_UNQL) read FflowName write SetflowName stored flowName_Specified;
    property gridTitulosAlterar: Array_Of_alteratituloscpAlteraTitulosCPInGridTitulosAlterar  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FgridTitulosAlterar write SetgridTitulosAlterar stored gridTitulosAlterar_Specified;
  end;



  // ************************************************************************ //
  // XML       : alteratituloscpAlteraTitulosCPOut, global, <complexType>
  // Namespace : http://services.senior.com.br
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  alteratituloscpAlteraTitulosCPOut = class(TRemotable)
  private
    FerroExecucao: string;
    FerroExecucao_Specified: boolean;
    FgridRetorno: Array_Of_alteratituloscpAlteraTitulosCPOutGridRetorno;
    FgridRetorno_Specified: boolean;
    Fresultado: string;
    Fresultado_Specified: boolean;
    procedure SeterroExecucao(Index: Integer; const Astring: string);
    function  erroExecucao_Specified(Index: Integer): boolean;
    procedure SetgridRetorno(Index: Integer; const AArray_Of_alteratituloscpAlteraTitulosCPOutGridRetorno: Array_Of_alteratituloscpAlteraTitulosCPOutGridRetorno);
    function  gridRetorno_Specified(Index: Integer): boolean;
    procedure Setresultado(Index: Integer; const Astring: string);
    function  resultado_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property erroExecucao: string                                                 Index (IS_OPTN or IS_NLBL or IS_UNQL) read FerroExecucao write SeterroExecucao stored erroExecucao_Specified;
    property gridRetorno:  Array_Of_alteratituloscpAlteraTitulosCPOutGridRetorno  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FgridRetorno write SetgridRetorno stored gridRetorno_Specified;
    property resultado:    string                                                 Index (IS_OPTN or IS_NLBL or IS_UNQL) read Fresultado write Setresultado stored resultado_Specified;
  end;



  // ************************************************************************ //
  // XML       : alteratituloscpAlteraTitulosCPOutGridRetorno, global, <complexType>
  // Namespace : http://services.senior.com.br
  // ************************************************************************ //
  alteratituloscpAlteraTitulosCPOutGridRetorno = class(TRemotable)
  private
    FcodEmp: Integer;
    FcodEmp_Specified: boolean;
    FcodFil: Integer;
    FcodFil_Specified: boolean;
    FcodFor: Integer;
    FcodFor_Specified: boolean;
    FcodTpt: string;
    FcodTpt_Specified: boolean;
    FnumTit: string;
    FnumTit_Specified: boolean;
    FtxtRet: string;
    FtxtRet_Specified: boolean;
    procedure SetcodEmp(Index: Integer; const AInteger: Integer);
    function  codEmp_Specified(Index: Integer): boolean;
    procedure SetcodFil(Index: Integer; const AInteger: Integer);
    function  codFil_Specified(Index: Integer): boolean;
    procedure SetcodFor(Index: Integer; const AInteger: Integer);
    function  codFor_Specified(Index: Integer): boolean;
    procedure SetcodTpt(Index: Integer; const Astring: string);
    function  codTpt_Specified(Index: Integer): boolean;
    procedure SetnumTit(Index: Integer; const Astring: string);
    function  numTit_Specified(Index: Integer): boolean;
    procedure SettxtRet(Index: Integer; const Astring: string);
    function  txtRet_Specified(Index: Integer): boolean;
  published
    property codEmp: Integer  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodEmp write SetcodEmp stored codEmp_Specified;
    property codFil: Integer  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodFil write SetcodFil stored codFil_Specified;
    property codFor: Integer  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodFor write SetcodFor stored codFor_Specified;
    property codTpt: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodTpt write SetcodTpt stored codTpt_Specified;
    property numTit: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FnumTit write SetnumTit stored numTit_Specified;
    property txtRet: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FtxtRet write SettxtRet stored txtRet_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://services.senior.com.br
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // use       : literal
  // binding   : sapiens_Synccom_senior_g5_co_mfi_cpa_alteratituloscpPortBinding
  // service   : g5-senior-services
  // port      : sapiens_Synccom_senior_g5_co_mfi_cpa_alteratituloscpPort
  // URL       : http://sch:8383/g5-senior-services/sapiens_Synccom_senior_g5_co_mfi_cpa_alteratituloscp
  // ************************************************************************ //
  sapiens_Synccom_senior_g5_co_mfi_cpa_alteratituloscp = interface(IInvokable)
  ['{DE99ED8A-5694-1831-6ED8-CB061A87258B}']

    // Cannot unwrap: 
    //     - Input message has more than one part
    //     - Output part does not refer to an element
    function  AlteraTitulosCP(const user: string; const password: string; const encryption: Integer; const parameters: alteratituloscpAlteraTitulosCPIn): alteratituloscpAlteraTitulosCPOut; stdcall;
  end;

function Getsapiens_Synccom_senior_g5_co_mfi_cpa_alteratituloscp(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): sapiens_Synccom_senior_g5_co_mfi_cpa_alteratituloscp;


implementation
  uses SysUtils;

function Getsapiens_Synccom_senior_g5_co_mfi_cpa_alteratituloscp(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): sapiens_Synccom_senior_g5_co_mfi_cpa_alteratituloscp;
const
  defWSDL = 'http://sch:8383/g5-senior-services/sapiens_Synccom_senior_g5_co_mfi_cpa_alteratituloscp?wsdl';
  defURL  = 'http://sch:8383/g5-senior-services/sapiens_Synccom_senior_g5_co_mfi_cpa_alteratituloscp';
  defSvc  = 'g5-senior-services';
  defPrt  = 'sapiens_Synccom_senior_g5_co_mfi_cpa_alteratituloscpPort';
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
  begin
    RIO := THTTPRIO.Create(nil);
    RIO.HTTPWebNode.ReceiveTimeout := 1800000;
    RIO.HTTPWebNode.ConnectTimeout := 1800000;
  end
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as sapiens_Synccom_senior_g5_co_mfi_cpa_alteratituloscp);
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


procedure alteratituloscpAlteraTitulosCPInGridTitulosAlterar.SetcodCrp(Index: Integer; const Astring: string);
begin
  FcodCrp := Astring;
  FcodCrp_Specified := True;
end;

function alteratituloscpAlteraTitulosCPInGridTitulosAlterar.codCrp_Specified(Index: Integer): boolean;
begin
  Result := FcodCrp_Specified;
end;

procedure alteratituloscpAlteraTitulosCPInGridTitulosAlterar.SetcodCrt(Index: Integer; const Astring: string);
begin
  FcodCrt := Astring;
  FcodCrt_Specified := True;
end;

function alteratituloscpAlteraTitulosCPInGridTitulosAlterar.codCrt_Specified(Index: Integer): boolean;
begin
  Result := FcodCrt_Specified;
end;

procedure alteratituloscpAlteraTitulosCPInGridTitulosAlterar.SetcodFav(Index: Integer; const ADouble: Double);
begin
  FcodFav := ADouble;
  FcodFav_Specified := True;
end;

function alteratituloscpAlteraTitulosCPInGridTitulosAlterar.codFav_Specified(Index: Integer): boolean;
begin
  Result := FcodFav_Specified;
end;

procedure alteratituloscpAlteraTitulosCPInGridTitulosAlterar.SetcodFil(Index: Integer; const AInteger: Integer);
begin
  FcodFil := AInteger;
  FcodFil_Specified := True;
end;

function alteratituloscpAlteraTitulosCPInGridTitulosAlterar.codFil_Specified(Index: Integer): boolean;
begin
  Result := FcodFil_Specified;
end;

procedure alteratituloscpAlteraTitulosCPInGridTitulosAlterar.SetcodFor(Index: Integer; const AInteger: Integer);
begin
  FcodFor := AInteger;
  FcodFor_Specified := True;
end;

function alteratituloscpAlteraTitulosCPInGridTitulosAlterar.codFor_Specified(Index: Integer): boolean;
begin
  Result := FcodFor_Specified;
end;

procedure alteratituloscpAlteraTitulosCPInGridTitulosAlterar.SetcodFpg(Index: Integer; const AInteger: Integer);
begin
  FcodFpg := AInteger;
  FcodFpg_Specified := True;
end;

function alteratituloscpAlteraTitulosCPInGridTitulosAlterar.codFpg_Specified(Index: Integer): boolean;
begin
  Result := FcodFpg_Specified;
end;

procedure alteratituloscpAlteraTitulosCPInGridTitulosAlterar.SetcodMoe(Index: Integer; const Astring: string);
begin
  FcodMoe := Astring;
  FcodMoe_Specified := True;
end;

function alteratituloscpAlteraTitulosCPInGridTitulosAlterar.codMoe_Specified(Index: Integer): boolean;
begin
  Result := FcodMoe_Specified;
end;

procedure alteratituloscpAlteraTitulosCPInGridTitulosAlterar.SetcodNtg(Index: Integer; const AInteger: Integer);
begin
  FcodNtg := AInteger;
  FcodNtg_Specified := True;
end;

function alteratituloscpAlteraTitulosCPInGridTitulosAlterar.codNtg_Specified(Index: Integer): boolean;
begin
  Result := FcodNtg_Specified;
end;

procedure alteratituloscpAlteraTitulosCPInGridTitulosAlterar.SetcodPor(Index: Integer; const Astring: string);
begin
  FcodPor := Astring;
  FcodPor_Specified := True;
end;

function alteratituloscpAlteraTitulosCPInGridTitulosAlterar.codPor_Specified(Index: Integer): boolean;
begin
  Result := FcodPor_Specified;
end;

procedure alteratituloscpAlteraTitulosCPInGridTitulosAlterar.SetcodTpt(Index: Integer; const Astring: string);
begin
  FcodTpt := Astring;
  FcodTpt_Specified := True;
end;

function alteratituloscpAlteraTitulosCPInGridTitulosAlterar.codTpt_Specified(Index: Integer): boolean;
begin
  Result := FcodTpt_Specified;
end;

procedure alteratituloscpAlteraTitulosCPInGridTitulosAlterar.SetdatEmi(Index: Integer; const Astring: string);
begin
  FdatEmi := Astring;
  FdatEmi_Specified := True;
end;

function alteratituloscpAlteraTitulosCPInGridTitulosAlterar.datEmi_Specified(Index: Integer): boolean;
begin
  Result := FdatEmi_Specified;
end;

procedure alteratituloscpAlteraTitulosCPInGridTitulosAlterar.SetdatEnt(Index: Integer; const Astring: string);
begin
  FdatEnt := Astring;
  FdatEnt_Specified := True;
end;

function alteratituloscpAlteraTitulosCPInGridTitulosAlterar.datEnt_Specified(Index: Integer): boolean;
begin
  Result := FdatEnt_Specified;
end;

procedure alteratituloscpAlteraTitulosCPInGridTitulosAlterar.SetdatPpt(Index: Integer; const Astring: string);
begin
  FdatPpt := Astring;
  FdatPpt_Specified := True;
end;

function alteratituloscpAlteraTitulosCPInGridTitulosAlterar.datPpt_Specified(Index: Integer): boolean;
begin
  Result := FdatPpt_Specified;
end;

procedure alteratituloscpAlteraTitulosCPInGridTitulosAlterar.SetnumTit(Index: Integer; const Astring: string);
begin
  FnumTit := Astring;
  FnumTit_Specified := True;
end;

function alteratituloscpAlteraTitulosCPInGridTitulosAlterar.numTit_Specified(Index: Integer): boolean;
begin
  Result := FnumTit_Specified;
end;

procedure alteratituloscpAlteraTitulosCPInGridTitulosAlterar.SetsitTit(Index: Integer; const Astring: string);
begin
  FsitTit := Astring;
  FsitTit_Specified := True;
end;

function alteratituloscpAlteraTitulosCPInGridTitulosAlterar.sitTit_Specified(Index: Integer): boolean;
begin
  Result := FsitTit_Specified;
end;

procedure alteratituloscpAlteraTitulosCPInGridTitulosAlterar.SetvctOri(Index: Integer; const Astring: string);
begin
  FvctOri := Astring;
  FvctOri_Specified := True;
end;

function alteratituloscpAlteraTitulosCPInGridTitulosAlterar.vctOri_Specified(Index: Integer): boolean;
begin
  Result := FvctOri_Specified;
end;

procedure alteratituloscpAlteraTitulosCPInGridTitulosAlterar.SetvctPro(Index: Integer; const Astring: string);
begin
  FvctPro := Astring;
  FvctPro_Specified := True;
end;

function alteratituloscpAlteraTitulosCPInGridTitulosAlterar.vctPro_Specified(Index: Integer): boolean;
begin
  Result := FvctPro_Specified;
end;

procedure alteratituloscpAlteraTitulosCPInGridTitulosAlterar.SetvlrOri(Index: Integer; const ADouble: Double);
begin
  FvlrOri := ADouble;
  FvlrOri_Specified := True;
end;

function alteratituloscpAlteraTitulosCPInGridTitulosAlterar.vlrOri_Specified(Index: Integer): boolean;
begin
  Result := FvlrOri_Specified;
end;

procedure alteratituloscpAlteraTitulosCPInGridTitulosAlterar.SetvlrRba(Index: Integer; const ADouble: Double);
begin
  FvlrRba := ADouble;
  FvlrRba_Specified := True;
end;

function alteratituloscpAlteraTitulosCPInGridTitulosAlterar.vlrRba_Specified(Index: Integer): boolean;
begin
  Result := FvlrRba_Specified;
end;

destructor alteratituloscpAlteraTitulosCPIn.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FgridTitulosAlterar)-1 do
    SysUtils.FreeAndNil(FgridTitulosAlterar[I]);
  System.SetLength(FgridTitulosAlterar, 0);
  inherited Destroy;
end;

procedure alteratituloscpAlteraTitulosCPIn.SetcodEmp(Index: Integer; const AInteger: Integer);
begin
  FcodEmp := AInteger;
  FcodEmp_Specified := True;
end;

function alteratituloscpAlteraTitulosCPIn.codEmp_Specified(Index: Integer): boolean;
begin
  Result := FcodEmp_Specified;
end;

procedure alteratituloscpAlteraTitulosCPIn.SetflowInstanceID(Index: Integer; const Astring: string);
begin
  FflowInstanceID := Astring;
  FflowInstanceID_Specified := True;
end;

function alteratituloscpAlteraTitulosCPIn.flowInstanceID_Specified(Index: Integer): boolean;
begin
  Result := FflowInstanceID_Specified;
end;

procedure alteratituloscpAlteraTitulosCPIn.SetflowName(Index: Integer; const Astring: string);
begin
  FflowName := Astring;
  FflowName_Specified := True;
end;

function alteratituloscpAlteraTitulosCPIn.flowName_Specified(Index: Integer): boolean;
begin
  Result := FflowName_Specified;
end;

procedure alteratituloscpAlteraTitulosCPIn.SetgridTitulosAlterar(Index: Integer; const AArray_Of_alteratituloscpAlteraTitulosCPInGridTitulosAlterar: Array_Of_alteratituloscpAlteraTitulosCPInGridTitulosAlterar);
begin
  FgridTitulosAlterar := AArray_Of_alteratituloscpAlteraTitulosCPInGridTitulosAlterar;
  FgridTitulosAlterar_Specified := True;
end;

function alteratituloscpAlteraTitulosCPIn.gridTitulosAlterar_Specified(Index: Integer): boolean;
begin
  Result := FgridTitulosAlterar_Specified;
end;

constructor alteratituloscpAlteraTitulosCPOut.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor alteratituloscpAlteraTitulosCPOut.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FgridRetorno)-1 do
    SysUtils.FreeAndNil(FgridRetorno[I]);
  System.SetLength(FgridRetorno, 0);
  inherited Destroy;
end;

procedure alteratituloscpAlteraTitulosCPOut.SeterroExecucao(Index: Integer; const Astring: string);
begin
  FerroExecucao := Astring;
  FerroExecucao_Specified := True;
end;

function alteratituloscpAlteraTitulosCPOut.erroExecucao_Specified(Index: Integer): boolean;
begin
  Result := FerroExecucao_Specified;
end;

procedure alteratituloscpAlteraTitulosCPOut.SetgridRetorno(Index: Integer; const AArray_Of_alteratituloscpAlteraTitulosCPOutGridRetorno: Array_Of_alteratituloscpAlteraTitulosCPOutGridRetorno);
begin
  FgridRetorno := AArray_Of_alteratituloscpAlteraTitulosCPOutGridRetorno;
  FgridRetorno_Specified := True;
end;

function alteratituloscpAlteraTitulosCPOut.gridRetorno_Specified(Index: Integer): boolean;
begin
  Result := FgridRetorno_Specified;
end;

procedure alteratituloscpAlteraTitulosCPOut.Setresultado(Index: Integer; const Astring: string);
begin
  Fresultado := Astring;
  Fresultado_Specified := True;
end;

function alteratituloscpAlteraTitulosCPOut.resultado_Specified(Index: Integer): boolean;
begin
  Result := Fresultado_Specified;
end;

procedure alteratituloscpAlteraTitulosCPOutGridRetorno.SetcodEmp(Index: Integer; const AInteger: Integer);
begin
  FcodEmp := AInteger;
  FcodEmp_Specified := True;
end;

function alteratituloscpAlteraTitulosCPOutGridRetorno.codEmp_Specified(Index: Integer): boolean;
begin
  Result := FcodEmp_Specified;
end;

procedure alteratituloscpAlteraTitulosCPOutGridRetorno.SetcodFil(Index: Integer; const AInteger: Integer);
begin
  FcodFil := AInteger;
  FcodFil_Specified := True;
end;

function alteratituloscpAlteraTitulosCPOutGridRetorno.codFil_Specified(Index: Integer): boolean;
begin
  Result := FcodFil_Specified;
end;

procedure alteratituloscpAlteraTitulosCPOutGridRetorno.SetcodFor(Index: Integer; const AInteger: Integer);
begin
  FcodFor := AInteger;
  FcodFor_Specified := True;
end;

function alteratituloscpAlteraTitulosCPOutGridRetorno.codFor_Specified(Index: Integer): boolean;
begin
  Result := FcodFor_Specified;
end;

procedure alteratituloscpAlteraTitulosCPOutGridRetorno.SetcodTpt(Index: Integer; const Astring: string);
begin
  FcodTpt := Astring;
  FcodTpt_Specified := True;
end;

function alteratituloscpAlteraTitulosCPOutGridRetorno.codTpt_Specified(Index: Integer): boolean;
begin
  Result := FcodTpt_Specified;
end;

procedure alteratituloscpAlteraTitulosCPOutGridRetorno.SetnumTit(Index: Integer; const Astring: string);
begin
  FnumTit := Astring;
  FnumTit_Specified := True;
end;

function alteratituloscpAlteraTitulosCPOutGridRetorno.numTit_Specified(Index: Integer): boolean;
begin
  Result := FnumTit_Specified;
end;

procedure alteratituloscpAlteraTitulosCPOutGridRetorno.SettxtRet(Index: Integer; const Astring: string);
begin
  FtxtRet := Astring;
  FtxtRet_Specified := True;
end;

function alteratituloscpAlteraTitulosCPOutGridRetorno.txtRet_Specified(Index: Integer): boolean;
begin
  Result := FtxtRet_Specified;
end;

initialization
  { sapiens_Synccom_senior_g5_co_mfi_cpa_alteratituloscp }
  InvRegistry.RegisterInterface(TypeInfo(sapiens_Synccom_senior_g5_co_mfi_cpa_alteratituloscp), 'http://services.senior.com.br', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(sapiens_Synccom_senior_g5_co_mfi_cpa_alteratituloscp), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(sapiens_Synccom_senior_g5_co_mfi_cpa_alteratituloscp), ioLiteral);
  { sapiens_Synccom_senior_g5_co_mfi_cpa_alteratituloscp.AlteraTitulosCP }
  InvRegistry.RegisterParamInfo(TypeInfo(sapiens_Synccom_senior_g5_co_mfi_cpa_alteratituloscp), 'AlteraTitulosCP', 'parameters', '',
                                '[Namespace="http://services.senior.com.br"]');
  InvRegistry.RegisterParamInfo(TypeInfo(sapiens_Synccom_senior_g5_co_mfi_cpa_alteratituloscp), 'AlteraTitulosCP', 'result', '',
                                '[Namespace="http://services.senior.com.br"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_alteratituloscpAlteraTitulosCPOutGridRetorno), 'http://services.senior.com.br', 'Array_Of_alteratituloscpAlteraTitulosCPOutGridRetorno');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_alteratituloscpAlteraTitulosCPInGridTitulosAlterar), 'http://services.senior.com.br', 'Array_Of_alteratituloscpAlteraTitulosCPInGridTitulosAlterar');
  RemClassRegistry.RegisterXSClass(alteratituloscpAlteraTitulosCPInGridTitulosAlterar, 'http://services.senior.com.br', 'alteratituloscpAlteraTitulosCPInGridTitulosAlterar');
  RemClassRegistry.RegisterXSClass(alteratituloscpAlteraTitulosCPIn, 'http://services.senior.com.br', 'alteratituloscpAlteraTitulosCPIn');
  RemClassRegistry.RegisterXSClass(alteratituloscpAlteraTitulosCPOut, 'http://services.senior.com.br', 'alteratituloscpAlteraTitulosCPOut');
  RemClassRegistry.RegisterSerializeOptions(alteratituloscpAlteraTitulosCPOut, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(alteratituloscpAlteraTitulosCPOutGridRetorno, 'http://services.senior.com.br', 'alteratituloscpAlteraTitulosCPOutGridRetorno');

end.