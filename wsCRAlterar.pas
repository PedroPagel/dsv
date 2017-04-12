// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://sch:8383/g5-senior-services/sapiens_Synccom_senior_g5_co_mfi_cre_alteratituloscr?wsdl
//  >Import : http://sch:8383/g5-senior-services/sapiens_Synccom_senior_g5_co_mfi_cre_alteratituloscr?wsdl>0
//  >Import : http://sch:8383/g5-senior-services/sapiens_Synccom_senior_g5_co_mfi_cre_alteratituloscr?xsd=1
// Encoding : UTF-8
// Version  : 1.0
// (29/03/2017 14:57:40 - - $Rev: 56641 $)
// ************************************************************************ //

unit wsCRAlterar;

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

  alteratituloscrAlteraTitulosCRInGridTitulosAlterar = class;   { "http://services.senior.com.br"[GblCplx] }
  alteratituloscrAlteraTitulosCRIn = class;     { "http://services.senior.com.br"[GblCplx] }
  alteratituloscrAlteraTitulosCROut = class;    { "http://services.senior.com.br"[Lit][GblCplx] }
  alteratituloscrAlteraTitulosCROutGridRetorno = class;   { "http://services.senior.com.br"[GblCplx] }

  Array_Of_alteratituloscrAlteraTitulosCROutGridRetorno = array of alteratituloscrAlteraTitulosCROutGridRetorno;   { "http://services.senior.com.br"[GblUbnd] }
  Array_Of_alteratituloscrAlteraTitulosCRInGridTitulosAlterar = array of alteratituloscrAlteraTitulosCRInGridTitulosAlterar;   { "http://services.senior.com.br"[GblUbnd] }


  // ************************************************************************ //
  // XML       : alteratituloscrAlteraTitulosCRInGridTitulosAlterar, global, <complexType>
  // Namespace : http://services.senior.com.br
  // ************************************************************************ //
  alteratituloscrAlteraTitulosCRInGridTitulosAlterar = class(TRemotable)
  private
    FcatTef: string;
    FcatTef_Specified: boolean;
    FcodCli: Integer;
    FcodCli_Specified: boolean;
    FcodCnv: Integer;
    FcodCnv_Specified: boolean;
    FcodCrp: string;
    FcodCrp_Specified: boolean;
    FcodCrt: string;
    FcodCrt_Specified: boolean;
    FcodFil: Integer;
    FcodFil_Specified: boolean;
    FcodFpg: Integer;
    FcodFpg_Specified: boolean;
    FcodMoe: string;
    FcodMoe_Specified: boolean;
    FcodNtg: Integer;
    FcodNtg_Specified: boolean;
    FcodPor: string;
    FcodPor_Specified: boolean;
    FcodSac: Double;
    FcodSac_Specified: boolean;
    FcodTpt: string;
    FcodTpt_Specified: boolean;
    FdatEmi: string;
    FdatEmi_Specified: boolean;
    FdatEnt: string;
    FdatEnt_Specified: boolean;
    FdatPpt: string;
    FdatPpt_Specified: boolean;
    FnsuTef: string;
    FnsuTef_Specified: boolean;
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
    procedure SetcatTef(Index: Integer; const Astring: string);
    function  catTef_Specified(Index: Integer): boolean;
    procedure SetcodCli(Index: Integer; const AInteger: Integer);
    function  codCli_Specified(Index: Integer): boolean;
    procedure SetcodCnv(Index: Integer; const AInteger: Integer);
    function  codCnv_Specified(Index: Integer): boolean;
    procedure SetcodCrp(Index: Integer; const Astring: string);
    function  codCrp_Specified(Index: Integer): boolean;
    procedure SetcodCrt(Index: Integer; const Astring: string);
    function  codCrt_Specified(Index: Integer): boolean;
    procedure SetcodFil(Index: Integer; const AInteger: Integer);
    function  codFil_Specified(Index: Integer): boolean;
    procedure SetcodFpg(Index: Integer; const AInteger: Integer);
    function  codFpg_Specified(Index: Integer): boolean;
    procedure SetcodMoe(Index: Integer; const Astring: string);
    function  codMoe_Specified(Index: Integer): boolean;
    procedure SetcodNtg(Index: Integer; const AInteger: Integer);
    function  codNtg_Specified(Index: Integer): boolean;
    procedure SetcodPor(Index: Integer; const Astring: string);
    function  codPor_Specified(Index: Integer): boolean;
    procedure SetcodSac(Index: Integer; const ADouble: Double);
    function  codSac_Specified(Index: Integer): boolean;
    procedure SetcodTpt(Index: Integer; const Astring: string);
    function  codTpt_Specified(Index: Integer): boolean;
    procedure SetdatEmi(Index: Integer; const Astring: string);
    function  datEmi_Specified(Index: Integer): boolean;
    procedure SetdatEnt(Index: Integer; const Astring: string);
    function  datEnt_Specified(Index: Integer): boolean;
    procedure SetdatPpt(Index: Integer; const Astring: string);
    function  datPpt_Specified(Index: Integer): boolean;
    procedure SetnsuTef(Index: Integer; const Astring: string);
    function  nsuTef_Specified(Index: Integer): boolean;
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
  published
    property catTef: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcatTef write SetcatTef stored catTef_Specified;
    property codCli: Integer  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodCli write SetcodCli stored codCli_Specified;
    property codCnv: Integer  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodCnv write SetcodCnv stored codCnv_Specified;
    property codCrp: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodCrp write SetcodCrp stored codCrp_Specified;
    property codCrt: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodCrt write SetcodCrt stored codCrt_Specified;
    property codFil: Integer  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodFil write SetcodFil stored codFil_Specified;
    property codFpg: Integer  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodFpg write SetcodFpg stored codFpg_Specified;
    property codMoe: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodMoe write SetcodMoe stored codMoe_Specified;
    property codNtg: Integer  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodNtg write SetcodNtg stored codNtg_Specified;
    property codPor: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodPor write SetcodPor stored codPor_Specified;
    property codSac: Double   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodSac write SetcodSac stored codSac_Specified;
    property codTpt: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodTpt write SetcodTpt stored codTpt_Specified;
    property datEmi: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FdatEmi write SetdatEmi stored datEmi_Specified;
    property datEnt: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FdatEnt write SetdatEnt stored datEnt_Specified;
    property datPpt: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FdatPpt write SetdatPpt stored datPpt_Specified;
    property nsuTef: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FnsuTef write SetnsuTef stored nsuTef_Specified;
    property numTit: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FnumTit write SetnumTit stored numTit_Specified;
    property sitTit: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FsitTit write SetsitTit stored sitTit_Specified;
    property vctOri: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FvctOri write SetvctOri stored vctOri_Specified;
    property vctPro: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FvctPro write SetvctPro stored vctPro_Specified;
    property vlrOri: Double   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FvlrOri write SetvlrOri stored vlrOri_Specified;
  end;



  // ************************************************************************ //
  // XML       : alteratituloscrAlteraTitulosCRIn, global, <complexType>
  // Namespace : http://services.senior.com.br
  // ************************************************************************ //
  alteratituloscrAlteraTitulosCRIn = class(TRemotable)
  private
    FcodEmp: Integer;
    FcodEmp_Specified: boolean;
    FflowInstanceID: string;
    FflowInstanceID_Specified: boolean;
    FflowName: string;
    FflowName_Specified: boolean;
    FgridTitulosAlterar: Array_Of_alteratituloscrAlteraTitulosCRInGridTitulosAlterar;
    FgridTitulosAlterar_Specified: boolean;
    procedure SetcodEmp(Index: Integer; const AInteger: Integer);
    function  codEmp_Specified(Index: Integer): boolean;
    procedure SetflowInstanceID(Index: Integer; const Astring: string);
    function  flowInstanceID_Specified(Index: Integer): boolean;
    procedure SetflowName(Index: Integer; const Astring: string);
    function  flowName_Specified(Index: Integer): boolean;
    procedure SetgridTitulosAlterar(Index: Integer; const AArray_Of_alteratituloscrAlteraTitulosCRInGridTitulosAlterar: Array_Of_alteratituloscrAlteraTitulosCRInGridTitulosAlterar);
    function  gridTitulosAlterar_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property codEmp:             Integer                                                      Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodEmp write SetcodEmp stored codEmp_Specified;
    property flowInstanceID:     string                                                       Index (IS_OPTN or IS_NLBL or IS_UNQL) read FflowInstanceID write SetflowInstanceID stored flowInstanceID_Specified;
    property flowName:           string                                                       Index (IS_OPTN or IS_NLBL or IS_UNQL) read FflowName write SetflowName stored flowName_Specified;
    property gridTitulosAlterar: Array_Of_alteratituloscrAlteraTitulosCRInGridTitulosAlterar  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FgridTitulosAlterar write SetgridTitulosAlterar stored gridTitulosAlterar_Specified;
  end;



  // ************************************************************************ //
  // XML       : alteratituloscrAlteraTitulosCROut, global, <complexType>
  // Namespace : http://services.senior.com.br
  // Serializtn: [xoLiteralParam]
  // Info      : Wrapper
  // ************************************************************************ //
  alteratituloscrAlteraTitulosCROut = class(TRemotable)
  private
    FerroExecucao: string;
    FerroExecucao_Specified: boolean;
    FgridRetorno: Array_Of_alteratituloscrAlteraTitulosCROutGridRetorno;
    FgridRetorno_Specified: boolean;
    Fresultado: string;
    Fresultado_Specified: boolean;
    procedure SeterroExecucao(Index: Integer; const Astring: string);
    function  erroExecucao_Specified(Index: Integer): boolean;
    procedure SetgridRetorno(Index: Integer; const AArray_Of_alteratituloscrAlteraTitulosCROutGridRetorno: Array_Of_alteratituloscrAlteraTitulosCROutGridRetorno);
    function  gridRetorno_Specified(Index: Integer): boolean;
    procedure Setresultado(Index: Integer; const Astring: string);
    function  resultado_Specified(Index: Integer): boolean;
  public
    constructor Create; override;
    destructor Destroy; override;
  published
    property erroExecucao: string                                                 Index (IS_OPTN or IS_NLBL or IS_UNQL) read FerroExecucao write SeterroExecucao stored erroExecucao_Specified;
    property gridRetorno:  Array_Of_alteratituloscrAlteraTitulosCROutGridRetorno  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FgridRetorno write SetgridRetorno stored gridRetorno_Specified;
    property resultado:    string                                                 Index (IS_OPTN or IS_NLBL or IS_UNQL) read Fresultado write Setresultado stored resultado_Specified;
  end;



  // ************************************************************************ //
  // XML       : alteratituloscrAlteraTitulosCROutGridRetorno, global, <complexType>
  // Namespace : http://services.senior.com.br
  // ************************************************************************ //
  alteratituloscrAlteraTitulosCROutGridRetorno = class(TRemotable)
  private
    FcodCli: Integer;
    FcodCli_Specified: boolean;
    FcodEmp: Integer;
    FcodEmp_Specified: boolean;
    FcodFil: Integer;
    FcodFil_Specified: boolean;
    FcodTpt: string;
    FcodTpt_Specified: boolean;
    FnumTit: string;
    FnumTit_Specified: boolean;
    FtxtRet: string;
    FtxtRet_Specified: boolean;
    procedure SetcodCli(Index: Integer; const AInteger: Integer);
    function  codCli_Specified(Index: Integer): boolean;
    procedure SetcodEmp(Index: Integer; const AInteger: Integer);
    function  codEmp_Specified(Index: Integer): boolean;
    procedure SetcodFil(Index: Integer; const AInteger: Integer);
    function  codFil_Specified(Index: Integer): boolean;
    procedure SetcodTpt(Index: Integer; const Astring: string);
    function  codTpt_Specified(Index: Integer): boolean;
    procedure SetnumTit(Index: Integer; const Astring: string);
    function  numTit_Specified(Index: Integer): boolean;
    procedure SettxtRet(Index: Integer; const Astring: string);
    function  txtRet_Specified(Index: Integer): boolean;
  published
    property codCli: Integer  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodCli write SetcodCli stored codCli_Specified;
    property codEmp: Integer  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodEmp write SetcodEmp stored codEmp_Specified;
    property codFil: Integer  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodFil write SetcodFil stored codFil_Specified;
    property codTpt: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FcodTpt write SetcodTpt stored codTpt_Specified;
    property numTit: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FnumTit write SetnumTit stored numTit_Specified;
    property txtRet: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FtxtRet write SettxtRet stored txtRet_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://services.senior.com.br
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : rpc
  // use       : literal
  // binding   : sapiens_Synccom_senior_g5_co_mfi_cre_alteratituloscrPortBinding
  // service   : g5-senior-services
  // port      : sapiens_Synccom_senior_g5_co_mfi_cre_alteratituloscrPort
  // URL       : http://sch:8383/g5-senior-services/sapiens_Synccom_senior_g5_co_mfi_cre_alteratituloscr
  // ************************************************************************ //
  sapiens_Synccom_senior_g5_co_mfi_cre_alteratituloscr = interface(IInvokable)
  ['{C63B395E-9769-0663-72EA-9A5AB4C213FD}']

    // Cannot unwrap: 
    //     - Input message has more than one part
    //     - Output part does not refer to an element
    function  AlteraTitulosCR(const user: string; const password: string; const encryption: Integer; const parameters: alteratituloscrAlteraTitulosCRIn): alteratituloscrAlteraTitulosCROut; stdcall;
  end;

function Getsapiens_Synccom_senior_g5_co_mfi_cre_alteratituloscr(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): sapiens_Synccom_senior_g5_co_mfi_cre_alteratituloscr;


implementation
  uses SysUtils;

function Getsapiens_Synccom_senior_g5_co_mfi_cre_alteratituloscr(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): sapiens_Synccom_senior_g5_co_mfi_cre_alteratituloscr;
const
  defWSDL = 'http://sch:8383/g5-senior-services/sapiens_Synccom_senior_g5_co_mfi_cre_alteratituloscr?wsdl';
  defURL  = 'http://sch:8383/g5-senior-services/sapiens_Synccom_senior_g5_co_mfi_cre_alteratituloscr';
  defSvc  = 'g5-senior-services';
  defPrt  = 'sapiens_Synccom_senior_g5_co_mfi_cre_alteratituloscrPort';
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
    Result := (RIO as sapiens_Synccom_senior_g5_co_mfi_cre_alteratituloscr);
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


procedure alteratituloscrAlteraTitulosCRInGridTitulosAlterar.SetcatTef(Index: Integer; const Astring: string);
begin
  FcatTef := Astring;
  FcatTef_Specified := True;
end;

function alteratituloscrAlteraTitulosCRInGridTitulosAlterar.catTef_Specified(Index: Integer): boolean;
begin
  Result := FcatTef_Specified;
end;

procedure alteratituloscrAlteraTitulosCRInGridTitulosAlterar.SetcodCli(Index: Integer; const AInteger: Integer);
begin
  FcodCli := AInteger;
  FcodCli_Specified := True;
end;

function alteratituloscrAlteraTitulosCRInGridTitulosAlterar.codCli_Specified(Index: Integer): boolean;
begin
  Result := FcodCli_Specified;
end;

procedure alteratituloscrAlteraTitulosCRInGridTitulosAlterar.SetcodCnv(Index: Integer; const AInteger: Integer);
begin
  FcodCnv := AInteger;
  FcodCnv_Specified := True;
end;

function alteratituloscrAlteraTitulosCRInGridTitulosAlterar.codCnv_Specified(Index: Integer): boolean;
begin
  Result := FcodCnv_Specified;
end;

procedure alteratituloscrAlteraTitulosCRInGridTitulosAlterar.SetcodCrp(Index: Integer; const Astring: string);
begin
  FcodCrp := Astring;
  FcodCrp_Specified := True;
end;

function alteratituloscrAlteraTitulosCRInGridTitulosAlterar.codCrp_Specified(Index: Integer): boolean;
begin
  Result := FcodCrp_Specified;
end;

procedure alteratituloscrAlteraTitulosCRInGridTitulosAlterar.SetcodCrt(Index: Integer; const Astring: string);
begin
  FcodCrt := Astring;
  FcodCrt_Specified := True;
end;

function alteratituloscrAlteraTitulosCRInGridTitulosAlterar.codCrt_Specified(Index: Integer): boolean;
begin
  Result := FcodCrt_Specified;
end;

procedure alteratituloscrAlteraTitulosCRInGridTitulosAlterar.SetcodFil(Index: Integer; const AInteger: Integer);
begin
  FcodFil := AInteger;
  FcodFil_Specified := True;
end;

function alteratituloscrAlteraTitulosCRInGridTitulosAlterar.codFil_Specified(Index: Integer): boolean;
begin
  Result := FcodFil_Specified;
end;

procedure alteratituloscrAlteraTitulosCRInGridTitulosAlterar.SetcodFpg(Index: Integer; const AInteger: Integer);
begin
  FcodFpg := AInteger;
  FcodFpg_Specified := True;
end;

function alteratituloscrAlteraTitulosCRInGridTitulosAlterar.codFpg_Specified(Index: Integer): boolean;
begin
  Result := FcodFpg_Specified;
end;

procedure alteratituloscrAlteraTitulosCRInGridTitulosAlterar.SetcodMoe(Index: Integer; const Astring: string);
begin
  FcodMoe := Astring;
  FcodMoe_Specified := True;
end;

function alteratituloscrAlteraTitulosCRInGridTitulosAlterar.codMoe_Specified(Index: Integer): boolean;
begin
  Result := FcodMoe_Specified;
end;

procedure alteratituloscrAlteraTitulosCRInGridTitulosAlterar.SetcodNtg(Index: Integer; const AInteger: Integer);
begin
  FcodNtg := AInteger;
  FcodNtg_Specified := True;
end;

function alteratituloscrAlteraTitulosCRInGridTitulosAlterar.codNtg_Specified(Index: Integer): boolean;
begin
  Result := FcodNtg_Specified;
end;

procedure alteratituloscrAlteraTitulosCRInGridTitulosAlterar.SetcodPor(Index: Integer; const Astring: string);
begin
  FcodPor := Astring;
  FcodPor_Specified := True;
end;

function alteratituloscrAlteraTitulosCRInGridTitulosAlterar.codPor_Specified(Index: Integer): boolean;
begin
  Result := FcodPor_Specified;
end;

procedure alteratituloscrAlteraTitulosCRInGridTitulosAlterar.SetcodSac(Index: Integer; const ADouble: Double);
begin
  FcodSac := ADouble;
  FcodSac_Specified := True;
end;

function alteratituloscrAlteraTitulosCRInGridTitulosAlterar.codSac_Specified(Index: Integer): boolean;
begin
  Result := FcodSac_Specified;
end;

procedure alteratituloscrAlteraTitulosCRInGridTitulosAlterar.SetcodTpt(Index: Integer; const Astring: string);
begin
  FcodTpt := Astring;
  FcodTpt_Specified := True;
end;

function alteratituloscrAlteraTitulosCRInGridTitulosAlterar.codTpt_Specified(Index: Integer): boolean;
begin
  Result := FcodTpt_Specified;
end;

procedure alteratituloscrAlteraTitulosCRInGridTitulosAlterar.SetdatEmi(Index: Integer; const Astring: string);
begin
  FdatEmi := Astring;
  FdatEmi_Specified := True;
end;

function alteratituloscrAlteraTitulosCRInGridTitulosAlterar.datEmi_Specified(Index: Integer): boolean;
begin
  Result := FdatEmi_Specified;
end;

procedure alteratituloscrAlteraTitulosCRInGridTitulosAlterar.SetdatEnt(Index: Integer; const Astring: string);
begin
  FdatEnt := Astring;
  FdatEnt_Specified := True;
end;

function alteratituloscrAlteraTitulosCRInGridTitulosAlterar.datEnt_Specified(Index: Integer): boolean;
begin
  Result := FdatEnt_Specified;
end;

procedure alteratituloscrAlteraTitulosCRInGridTitulosAlterar.SetdatPpt(Index: Integer; const Astring: string);
begin
  FdatPpt := Astring;
  FdatPpt_Specified := True;
end;

function alteratituloscrAlteraTitulosCRInGridTitulosAlterar.datPpt_Specified(Index: Integer): boolean;
begin
  Result := FdatPpt_Specified;
end;

procedure alteratituloscrAlteraTitulosCRInGridTitulosAlterar.SetnsuTef(Index: Integer; const Astring: string);
begin
  FnsuTef := Astring;
  FnsuTef_Specified := True;
end;

function alteratituloscrAlteraTitulosCRInGridTitulosAlterar.nsuTef_Specified(Index: Integer): boolean;
begin
  Result := FnsuTef_Specified;
end;

procedure alteratituloscrAlteraTitulosCRInGridTitulosAlterar.SetnumTit(Index: Integer; const Astring: string);
begin
  FnumTit := Astring;
  FnumTit_Specified := True;
end;

function alteratituloscrAlteraTitulosCRInGridTitulosAlterar.numTit_Specified(Index: Integer): boolean;
begin
  Result := FnumTit_Specified;
end;

procedure alteratituloscrAlteraTitulosCRInGridTitulosAlterar.SetsitTit(Index: Integer; const Astring: string);
begin
  FsitTit := Astring;
  FsitTit_Specified := True;
end;

function alteratituloscrAlteraTitulosCRInGridTitulosAlterar.sitTit_Specified(Index: Integer): boolean;
begin
  Result := FsitTit_Specified;
end;

procedure alteratituloscrAlteraTitulosCRInGridTitulosAlterar.SetvctOri(Index: Integer; const Astring: string);
begin
  FvctOri := Astring;
  FvctOri_Specified := True;
end;

function alteratituloscrAlteraTitulosCRInGridTitulosAlterar.vctOri_Specified(Index: Integer): boolean;
begin
  Result := FvctOri_Specified;
end;

procedure alteratituloscrAlteraTitulosCRInGridTitulosAlterar.SetvctPro(Index: Integer; const Astring: string);
begin
  FvctPro := Astring;
  FvctPro_Specified := True;
end;

function alteratituloscrAlteraTitulosCRInGridTitulosAlterar.vctPro_Specified(Index: Integer): boolean;
begin
  Result := FvctPro_Specified;
end;

procedure alteratituloscrAlteraTitulosCRInGridTitulosAlterar.SetvlrOri(Index: Integer; const ADouble: Double);
begin
  FvlrOri := ADouble;
  FvlrOri_Specified := True;
end;

function alteratituloscrAlteraTitulosCRInGridTitulosAlterar.vlrOri_Specified(Index: Integer): boolean;
begin
  Result := FvlrOri_Specified;
end;

destructor alteratituloscrAlteraTitulosCRIn.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FgridTitulosAlterar)-1 do
    SysUtils.FreeAndNil(FgridTitulosAlterar[I]);
  System.SetLength(FgridTitulosAlterar, 0);
  inherited Destroy;
end;

procedure alteratituloscrAlteraTitulosCRIn.SetcodEmp(Index: Integer; const AInteger: Integer);
begin
  FcodEmp := AInteger;
  FcodEmp_Specified := True;
end;

function alteratituloscrAlteraTitulosCRIn.codEmp_Specified(Index: Integer): boolean;
begin
  Result := FcodEmp_Specified;
end;

procedure alteratituloscrAlteraTitulosCRIn.SetflowInstanceID(Index: Integer; const Astring: string);
begin
  FflowInstanceID := Astring;
  FflowInstanceID_Specified := True;
end;

function alteratituloscrAlteraTitulosCRIn.flowInstanceID_Specified(Index: Integer): boolean;
begin
  Result := FflowInstanceID_Specified;
end;

procedure alteratituloscrAlteraTitulosCRIn.SetflowName(Index: Integer; const Astring: string);
begin
  FflowName := Astring;
  FflowName_Specified := True;
end;

function alteratituloscrAlteraTitulosCRIn.flowName_Specified(Index: Integer): boolean;
begin
  Result := FflowName_Specified;
end;

procedure alteratituloscrAlteraTitulosCRIn.SetgridTitulosAlterar(Index: Integer; const AArray_Of_alteratituloscrAlteraTitulosCRInGridTitulosAlterar: Array_Of_alteratituloscrAlteraTitulosCRInGridTitulosAlterar);
begin
  FgridTitulosAlterar := AArray_Of_alteratituloscrAlteraTitulosCRInGridTitulosAlterar;
  FgridTitulosAlterar_Specified := True;
end;

function alteratituloscrAlteraTitulosCRIn.gridTitulosAlterar_Specified(Index: Integer): boolean;
begin
  Result := FgridTitulosAlterar_Specified;
end;

constructor alteratituloscrAlteraTitulosCROut.Create;
begin
  inherited Create;
  FSerializationOptions := [xoLiteralParam];
end;

destructor alteratituloscrAlteraTitulosCROut.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FgridRetorno)-1 do
    SysUtils.FreeAndNil(FgridRetorno[I]);
  System.SetLength(FgridRetorno, 0);
  inherited Destroy;
end;

procedure alteratituloscrAlteraTitulosCROut.SeterroExecucao(Index: Integer; const Astring: string);
begin
  FerroExecucao := Astring;
  FerroExecucao_Specified := True;
end;

function alteratituloscrAlteraTitulosCROut.erroExecucao_Specified(Index: Integer): boolean;
begin
  Result := FerroExecucao_Specified;
end;

procedure alteratituloscrAlteraTitulosCROut.SetgridRetorno(Index: Integer; const AArray_Of_alteratituloscrAlteraTitulosCROutGridRetorno: Array_Of_alteratituloscrAlteraTitulosCROutGridRetorno);
begin
  FgridRetorno := AArray_Of_alteratituloscrAlteraTitulosCROutGridRetorno;
  FgridRetorno_Specified := True;
end;

function alteratituloscrAlteraTitulosCROut.gridRetorno_Specified(Index: Integer): boolean;
begin
  Result := FgridRetorno_Specified;
end;

procedure alteratituloscrAlteraTitulosCROut.Setresultado(Index: Integer; const Astring: string);
begin
  Fresultado := Astring;
  Fresultado_Specified := True;
end;

function alteratituloscrAlteraTitulosCROut.resultado_Specified(Index: Integer): boolean;
begin
  Result := Fresultado_Specified;
end;

procedure alteratituloscrAlteraTitulosCROutGridRetorno.SetcodCli(Index: Integer; const AInteger: Integer);
begin
  FcodCli := AInteger;
  FcodCli_Specified := True;
end;

function alteratituloscrAlteraTitulosCROutGridRetorno.codCli_Specified(Index: Integer): boolean;
begin
  Result := FcodCli_Specified;
end;

procedure alteratituloscrAlteraTitulosCROutGridRetorno.SetcodEmp(Index: Integer; const AInteger: Integer);
begin
  FcodEmp := AInteger;
  FcodEmp_Specified := True;
end;

function alteratituloscrAlteraTitulosCROutGridRetorno.codEmp_Specified(Index: Integer): boolean;
begin
  Result := FcodEmp_Specified;
end;

procedure alteratituloscrAlteraTitulosCROutGridRetorno.SetcodFil(Index: Integer; const AInteger: Integer);
begin
  FcodFil := AInteger;
  FcodFil_Specified := True;
end;

function alteratituloscrAlteraTitulosCROutGridRetorno.codFil_Specified(Index: Integer): boolean;
begin
  Result := FcodFil_Specified;
end;

procedure alteratituloscrAlteraTitulosCROutGridRetorno.SetcodTpt(Index: Integer; const Astring: string);
begin
  FcodTpt := Astring;
  FcodTpt_Specified := True;
end;

function alteratituloscrAlteraTitulosCROutGridRetorno.codTpt_Specified(Index: Integer): boolean;
begin
  Result := FcodTpt_Specified;
end;

procedure alteratituloscrAlteraTitulosCROutGridRetorno.SetnumTit(Index: Integer; const Astring: string);
begin
  FnumTit := Astring;
  FnumTit_Specified := True;
end;

function alteratituloscrAlteraTitulosCROutGridRetorno.numTit_Specified(Index: Integer): boolean;
begin
  Result := FnumTit_Specified;
end;

procedure alteratituloscrAlteraTitulosCROutGridRetorno.SettxtRet(Index: Integer; const Astring: string);
begin
  FtxtRet := Astring;
  FtxtRet_Specified := True;
end;

function alteratituloscrAlteraTitulosCROutGridRetorno.txtRet_Specified(Index: Integer): boolean;
begin
  Result := FtxtRet_Specified;
end;

initialization
  { sapiens_Synccom_senior_g5_co_mfi_cre_alteratituloscr }
  InvRegistry.RegisterInterface(TypeInfo(sapiens_Synccom_senior_g5_co_mfi_cre_alteratituloscr), 'http://services.senior.com.br', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(sapiens_Synccom_senior_g5_co_mfi_cre_alteratituloscr), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(sapiens_Synccom_senior_g5_co_mfi_cre_alteratituloscr), ioLiteral);
  { sapiens_Synccom_senior_g5_co_mfi_cre_alteratituloscr.AlteraTitulosCR }
  InvRegistry.RegisterParamInfo(TypeInfo(sapiens_Synccom_senior_g5_co_mfi_cre_alteratituloscr), 'AlteraTitulosCR', 'parameters', '',
                                '[Namespace="http://services.senior.com.br"]');
  InvRegistry.RegisterParamInfo(TypeInfo(sapiens_Synccom_senior_g5_co_mfi_cre_alteratituloscr), 'AlteraTitulosCR', 'result', '',
                                '[Namespace="http://services.senior.com.br"]');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_alteratituloscrAlteraTitulosCROutGridRetorno), 'http://services.senior.com.br', 'Array_Of_alteratituloscrAlteraTitulosCROutGridRetorno');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_alteratituloscrAlteraTitulosCRInGridTitulosAlterar), 'http://services.senior.com.br', 'Array_Of_alteratituloscrAlteraTitulosCRInGridTitulosAlterar');
  RemClassRegistry.RegisterXSClass(alteratituloscrAlteraTitulosCRInGridTitulosAlterar, 'http://services.senior.com.br', 'alteratituloscrAlteraTitulosCRInGridTitulosAlterar');
  RemClassRegistry.RegisterXSClass(alteratituloscrAlteraTitulosCRIn, 'http://services.senior.com.br', 'alteratituloscrAlteraTitulosCRIn');
  RemClassRegistry.RegisterXSClass(alteratituloscrAlteraTitulosCROut, 'http://services.senior.com.br', 'alteratituloscrAlteraTitulosCROut');
  RemClassRegistry.RegisterSerializeOptions(alteratituloscrAlteraTitulosCROut, [xoLiteralParam]);
  RemClassRegistry.RegisterXSClass(alteratituloscrAlteraTitulosCROutGridRetorno, 'http://services.senior.com.br', 'alteratituloscrAlteraTitulosCROutGridRetorno');

end.