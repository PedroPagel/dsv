unit o600cco;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, oTabelas, DateUtils;

type
  T600CCO = class(TTabelaPadrao)
  private
    FCodEmp: Integer;
    FNumCco: string;
    FDesCco: string;
    FAbrCco: string;
    FCodTcc: string;
    FCodBan: string;
    FCodAge: string;
    FNumCta: string;
    FCodMoe: string;
    FCodFil: Integer;
    FFloBan: Integer;
    FNomCto: string;
    FFaxCto: string;
    FFonCto: string;
    FDatIni: TDate;
    FSalIni: Double;
    FCodTns: string;
    FDatLim: TDate;
    FVlrLim: Double;
    FUltChe: Integer;
    FDatUch: TDate;
    FUltAvi: Integer;
    FDatUav: TDate;
    FUltCtb: Integer;
    FDatUtb: TDate;
    FCriRat: Integer;
    FCtaRed: Integer;
    FCtaRcr: Integer;
    FCtaFdv: Integer;
    FCtaFcr: Integer;
    FCtaAux: Integer;
    FCtaMny: string;
    FModChe: string;
    FModAvi: string;
    FModCtb: string;
    FUtiTal: string;
    FSitCco: string;
    FUsuGer: Integer;
    FDatGer: TDate;
    FHorGer: Integer;
    FUSU_EmaSol: string;

    FCodEmpOLD: Integer;
    FNumCcoOLD: string;
    FDesCcoOLD: string;
    FAbrCcoOLD: string;
    FCodTccOLD: string;
    FCodBanOLD: string;
    FCodAgeOLD: string;
    FNumCtaOLD: string;
    FCodMoeOLD: string;
    FCodFilOLD: Integer;
    FFloBanOLD: Integer;
    FNomCtoOLD: string;
    FFaxCtoOLD: string;
    FFonCtoOLD: string;
    FDatIniOLD: TDate;
    FSalIniOLD: Double;
    FCodTnsOLD: string;
    FDatLimOLD: TDate;
    FVlrLimOLD: Double;
    FUltCheOLD: Integer;
    FDatUchOLD: TDate;
    FUltAviOLD: Integer;
    FDatUavOLD: TDate;
    FUltCtbOLD: Integer;
    FDatUtbOLD: TDate;
    FCriRatOLD: Integer;
    FCtaRedOLD: Integer;
    FCtaRcrOLD: Integer;
    FCtaFdvOLD: Integer;
    FCtaFcrOLD: Integer;
    FCtaAuxOLD: Integer;
    FCtaMnyOLD: string;
    FModCheOLD: string;
    FModAviOLD: string;
    FModCtbOLD: string;
    FUtiTalOLD: string;
    FSitCcoOLD: string;
    FUsuGerOLD: Integer;
    FDatGerOLD: TDate;
    FHorGerOLD: Integer;
    FUSU_EmaSolOLD: string;

    function GetCodEmp: Integer;
    procedure SetCodEmp(const pCodEmp: Integer);
    function GetNumCco: string;
    procedure SetNumCco(const pNumCco: string);
    function GetDesCco: string;
    procedure SetDesCco(const pDesCco: string);
    function GetAbrCco: string;
    procedure SetAbrCco(const pAbrCco: string);
    function GetCodTcc: string;
    procedure SetCodTcc(const pCodTcc: string);
    function GetCodBan: string;
    procedure SetCodBan(const pCodBan: string);
    function GetCodAge: string;
    procedure SetCodAge(const pCodAge: string);
    function GetNumCta: string;
    procedure SetNumCta(const pNumCta: string);
    function GetCodMoe: string;
    procedure SetCodMoe(const pCodMoe: string);
    function GetCodFil: Integer;
    procedure SetCodFil(const pCodFil: Integer);
    function GetFloBan: Integer;
    procedure SetFloBan(const pFloBan: Integer);
    function GetNomCto: string;
    procedure SetNomCto(const pNomCto: string);
    function GetFaxCto: string;
    procedure SetFaxCto(const pFaxCto: string);
    function GetFonCto: string;
    procedure SetFonCto(const pFonCto: string);
    function GetDatIni: TDate;
    procedure SetDatIni(const pDatIni: TDate);
    function GetSalIni: Double;
    procedure SetSalIni(const pSalIni: Double);
    function GetCodTns: string;
    procedure SetCodTns(const pCodTns: string);
    function GetDatLim: TDate;
    procedure SetDatLim(const pDatLim: TDate);
    function GetVlrLim: Double;
    procedure SetVlrLim(const pVlrLim: Double);
    function GetUltChe: Integer;
    procedure SetUltChe(const pUltChe: Integer);
    function GetDatUch: TDate;
    procedure SetDatUch(const pDatUch: TDate);
    function GetUltAvi: Integer;
    procedure SetUltAvi(const pUltAvi: Integer);
    function GetDatUav: TDate;
    procedure SetDatUav(const pDatUav: TDate);
    function GetUltCtb: Integer;
    procedure SetUltCtb(const pUltCtb: Integer);
    function GetDatUtb: TDate;
    procedure SetDatUtb(const pDatUtb: TDate);
    function GetCriRat: Integer;
    procedure SetCriRat(const pCriRat: Integer);
    function GetCtaRed: Integer;
    procedure SetCtaRed(const pCtaRed: Integer);
    function GetCtaRcr: Integer;
    procedure SetCtaRcr(const pCtaRcr: Integer);
    function GetCtaFdv: Integer;
    procedure SetCtaFdv(const pCtaFdv: Integer);
    function GetCtaFcr: Integer;
    procedure SetCtaFcr(const pCtaFcr: Integer);
    function GetCtaAux: Integer;
    procedure SetCtaAux(const pCtaAux: Integer);
    function GetCtaMny: string;
    procedure SetCtaMny(const pCtaMny: string);
    function GetModChe: string;
    procedure SetModChe(const pModChe: string);
    function GetModAvi: string;
    procedure SetModAvi(const pModAvi: string);
    function GetModCtb: string;
    procedure SetModCtb(const pModCtb: string);
    function GetUtiTal: string;
    procedure SetUtiTal(const pUtiTal: string);
    function GetSitCco: string;
    procedure SetSitCco(const pSitCco: string);
    function GetUsuGer: Integer;
    procedure SetUsuGer(const pUsuGer: Integer);
    function GetDatGer: TDate;
    procedure SetDatGer(const pDatGer: TDate);
    function GetHorGer: Integer;
    procedure SetHorGer(const pHorGer: Integer);
    function GetUSU_EmaSol: string;
    procedure SetUSU_EmaSol(const pUSU_EmaSol: string);

    function GetCodEmpOld: Integer;
    procedure SetCodEmpOld(const pCodEmp: Integer);
    function GetNumCcoOld: string;
    procedure SetNumCcoOld(const pNumCco: string);
    function GetDesCcoOld: string;
    procedure SetDesCcoOld(const pDesCco: string);
    function GetAbrCcoOld: string;
    procedure SetAbrCcoOld(const pAbrCco: string);
    function GetCodTccOld: string;
    procedure SetCodTccOld(const pCodTcc: string);
    function GetCodBanOld: string;
    procedure SetCodBanOld(const pCodBan: string);
    function GetCodAgeOld: string;
    procedure SetCodAgeOld(const pCodAge: string);
    function GetNumCtaOld: string;
    procedure SetNumCtaOld(const pNumCta: string);
    function GetCodMoeOld: string;
    procedure SetCodMoeOld(const pCodMoe: string);
    function GetCodFilOld: Integer;
    procedure SetCodFilOld(const pCodFil: Integer);
    function GetFloBanOld: Integer;
    procedure SetFloBanOld(const pFloBan: Integer);
    function GetNomCtoOld: string;
    procedure SetNomCtoOld(const pNomCto: string);
    function GetFaxCtoOld: string;
    procedure SetFaxCtoOld(const pFaxCto: string);
    function GetFonCtoOld: string;
    procedure SetFonCtoOld(const pFonCto: string);
    function GetDatIniOld: TDate;
    procedure SetDatIniOld(const pDatIni: TDate);
    function GetSalIniOld: Double;
    procedure SetSalIniOld(const pSalIni: Double);
    function GetCodTnsOld: string;
    procedure SetCodTnsOld(const pCodTns: string);
    function GetDatLimOld: TDate;
    procedure SetDatLimOld(const pDatLim: TDate);
    function GetVlrLimOld: Double;
    procedure SetVlrLimOld(const pVlrLim: Double);
    function GetUltCheOld: Integer;
    procedure SetUltCheOld(const pUltChe: Integer);
    function GetDatUchOld: TDate;
    procedure SetDatUchOld(const pDatUch: TDate);
    function GetUltAviOld: Integer;
    procedure SetUltAviOld(const pUltAvi: Integer);
    function GetDatUavOld: TDate;
    procedure SetDatUavOld(const pDatUav: TDate);
    function GetUltCtbOld: Integer;
    procedure SetUltCtbOld(const pUltCtb: Integer);
    function GetDatUtbOld: TDate;
    procedure SetDatUtbOld(const pDatUtb: TDate);
    function GetCriRatOld: Integer;
    procedure SetCriRatOld(const pCriRat: Integer);
    function GetCtaRedOld: Integer;
    procedure SetCtaRedOld(const pCtaRed: Integer);
    function GetCtaRcrOld: Integer;
    procedure SetCtaRcrOld(const pCtaRcr: Integer);
    function GetCtaFdvOld: Integer;
    procedure SetCtaFdvOld(const pCtaFdv: Integer);
    function GetCtaFcrOld: Integer;
    procedure SetCtaFcrOld(const pCtaFcr: Integer);
    function GetCtaAuxOld: Integer;
    procedure SetCtaAuxOld(const pCtaAux: Integer);
    function GetCtaMnyOld: string;
    procedure SetCtaMnyOld(const pCtaMny: string);
    function GetModCheOld: string;
    procedure SetModCheOld(const pModChe: string);
    function GetModAviOld: string;
    procedure SetModAviOld(const pModAvi: string);
    function GetModCtbOld: string;
    procedure SetModCtbOld(const pModCtb: string);
    function GetUtiTalOld: string;
    procedure SetUtiTalOld(const pUtiTal: string);
    function GetSitCcoOld: string;
    procedure SetSitCcoOld(const pSitCco: string);
    function GetUsuGerOld: Integer;
    procedure SetUsuGerOld(const pUsuGer: Integer);
    function GetDatGerOld: TDate;
    procedure SetDatGerOld(const pDatGer: TDate);
    function GetHorGerOld: Integer;
    procedure SetHorGerOld(const pHorGer: Integer);
    function GetUSU_EmaSolOld: string;
    procedure SetUSU_EmaSolOld(const pUSU_EmaSol: string);
  protected
    procedure Registros_OLD(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property CodEmp: Integer read GetCodEmp write SetCodEmp;
    property NumCco: string read GetNumCco write SetNumCco;
    property DesCco: string read GetDesCco write SetDesCco;
    property AbrCco: string read GetAbrCco write SetAbrCco;
    property CodTcc: string read GetCodTcc write SetCodTcc;
    property CodBan: string read GetCodBan write SetCodBan;
    property CodAge: string read GetCodAge write SetCodAge;
    property NumCta: string read GetNumCta write SetNumCta;
    property CodMoe: string read GetCodMoe write SetCodMoe;
    property CodFil: Integer read GetCodFil write SetCodFil;
    property FloBan: Integer read GetFloBan write SetFloBan;
    property NomCto: string read GetNomCto write SetNomCto;
    property FaxCto: string read GetFaxCto write SetFaxCto;
    property FonCto: string read GetFonCto write SetFonCto;
    property DatIni: TDate read GetDatIni write SetDatIni;
    property SalIni: Double read GetSalIni write SetSalIni;
    property CodTns: string read GetCodTns write SetCodTns;
    property DatLim: TDate read GetDatLim write SetDatLim;
    property VlrLim: Double read GetVlrLim write SetVlrLim;
    property UltChe: Integer read GetUltChe write SetUltChe;
    property DatUch: TDate read GetDatUch write SetDatUch;
    property UltAvi: Integer read GetUltAvi write SetUltAvi;
    property DatUav: TDate read GetDatUav write SetDatUav;
    property UltCtb: Integer read GetUltCtb write SetUltCtb;
    property DatUtb: TDate read GetDatUtb write SetDatUtb;
    property CriRat: Integer read GetCriRat write SetCriRat;
    property CtaRed: Integer read GetCtaRed write SetCtaRed;
    property CtaRcr: Integer read GetCtaRcr write SetCtaRcr;
    property CtaFdv: Integer read GetCtaFdv write SetCtaFdv;
    property CtaFcr: Integer read GetCtaFcr write SetCtaFcr;
    property CtaAux: Integer read GetCtaAux write SetCtaAux;
    property CtaMny: string read GetCtaMny write SetCtaMny;
    property ModChe: string read GetModChe write SetModChe;
    property ModAvi: string read GetModAvi write SetModAvi;
    property ModCtb: string read GetModCtb write SetModCtb;
    property UtiTal: string read GetUtiTal write SetUtiTal;
    property SitCco: string read GetSitCco write SetSitCco;
    property UsuGer: Integer read GetUsuGer write SetUsuGer;
    property DatGer: TDate read GetDatGer write SetDatGer;
    property HorGer: Integer read GetHorGer write SetHorGer;
    property USU_EmaSol: string read GetUSU_EmaSol write SetUSU_EmaSol;

    property OLD_CodEmp: Integer read GetCodEmpOLD write SetCodEmpOLD;
    property OLD_NumCco: string read GetNumCcoOLD write SetNumCcoOLD;
    property OLD_DesCco: string read GetDesCcoOLD write SetDesCcoOLD;
    property OLD_AbrCco: string read GetAbrCcoOLD write SetAbrCcoOLD;
    property OLD_CodTcc: string read GetCodTccOLD write SetCodTccOLD;
    property OLD_CodBan: string read GetCodBanOLD write SetCodBanOLD;
    property OLD_CodAge: string read GetCodAgeOLD write SetCodAgeOLD;
    property OLD_NumCta: string read GetNumCtaOLD write SetNumCtaOLD;
    property OLD_CodMoe: string read GetCodMoeOLD write SetCodMoeOLD;
    property OLD_CodFil: Integer read GetCodFilOLD write SetCodFilOLD;
    property OLD_FloBan: Integer read GetFloBanOLD write SetFloBanOLD;
    property OLD_NomCto: string read GetNomCtoOLD write SetNomCtoOLD;
    property OLD_FaxCto: string read GetFaxCtoOLD write SetFaxCtoOLD;
    property OLD_FonCto: string read GetFonCtoOLD write SetFonCtoOLD;
    property OLD_DatIni: TDate read GetDatIniOLD write SetDatIniOLD;
    property OLD_SalIni: Double read GetSalIniOLD write SetSalIniOLD;
    property OLD_CodTns: string read GetCodTnsOLD write SetCodTnsOLD;
    property OLD_DatLim: TDate read GetDatLimOLD write SetDatLimOLD;
    property OLD_VlrLim: Double read GetVlrLimOLD write SetVlrLimOLD;
    property OLD_UltChe: Integer read GetUltCheOLD write SetUltCheOLD;
    property OLD_DatUch: TDate read GetDatUchOLD write SetDatUchOLD;
    property OLD_UltAvi: Integer read GetUltAviOLD write SetUltAviOLD;
    property OLD_DatUav: TDate read GetDatUavOLD write SetDatUavOLD;
    property OLD_UltCtb: Integer read GetUltCtbOLD write SetUltCtbOLD;
    property OLD_DatUtb: TDate read GetDatUtbOLD write SetDatUtbOLD;
    property OLD_CriRat: Integer read GetCriRatOLD write SetCriRatOLD;
    property OLD_CtaRed: Integer read GetCtaRedOLD write SetCtaRedOLD;
    property OLD_CtaRcr: Integer read GetCtaRcrOLD write SetCtaRcrOLD;
    property OLD_CtaFdv: Integer read GetCtaFdvOLD write SetCtaFdvOLD;
    property OLD_CtaFcr: Integer read GetCtaFcrOLD write SetCtaFcrOLD;
    property OLD_CtaAux: Integer read GetCtaAuxOLD write SetCtaAuxOLD;
    property OLD_CtaMny: string read GetCtaMnyOLD write SetCtaMnyOLD;
    property OLD_ModChe: string read GetModCheOLD write SetModCheOLD;
    property OLD_ModAvi: string read GetModAviOLD write SetModAviOLD;
    property OLD_ModCtb: string read GetModCtbOLD write SetModCtbOLD;
    property OLD_UtiTal: string read GetUtiTalOLD write SetUtiTalOLD;
    property OLD_SitCco: string read GetSitCcoOLD write SetSitCcoOLD;
    property OLD_UsuGer: Integer read GetUsuGerOLD write SetUsuGerOLD;
    property OLD_DatGer: TDate read GetDatGerOLD write SetDatGerOLD;
    property OLD_HorGer: Integer read GetHorGerOLD write SetHorGerOLD;
    property OLD_USU_EmaSol: string read GetUSU_EmaSolOLD write SetUSU_EmaSolOLD;
  end;

implementation

{ T600CCO }

constructor T600CCO.Create();
begin
  inherited Create('E600CCO');
end;

destructor T600CCO.Destroy();
begin
  inherited;
end;
function T600CCO.GetCodEmp: Integer;
begin
  Result := FCodEmp;
end;

procedure T600CCO.SetCodEmp(const pCodEmp: Integer);
begin
  FCodEmp := pCodEmp;
end;

function T600CCO.GetNumCco: string;
begin
  Result := FNumCco;
end;

procedure T600CCO.SetNumCco(const pNumCco: string);
begin
  FNumCco := pNumCco;
end;

function T600CCO.GetDesCco: string;
begin
  Result := FDesCco;
end;

procedure T600CCO.SetDesCco(const pDesCco: string);
begin
  FDesCco := pDesCco;
end;

function T600CCO.GetAbrCco: string;
begin
  Result := FAbrCco;
end;

procedure T600CCO.SetAbrCco(const pAbrCco: string);
begin
  FAbrCco := pAbrCco;
end;

function T600CCO.GetCodTcc: string;
begin
  Result := FCodTcc;
end;

procedure T600CCO.SetCodTcc(const pCodTcc: string);
begin
  FCodTcc := pCodTcc;
end;

function T600CCO.GetCodBan: string;
begin
  Result := FCodBan;
end;

procedure T600CCO.SetCodBan(const pCodBan: string);
begin
  FCodBan := pCodBan;
end;

function T600CCO.GetCodAge: string;
begin
  Result := FCodAge;
end;

procedure T600CCO.SetCodAge(const pCodAge: string);
begin
  FCodAge := pCodAge;
end;

function T600CCO.GetNumCta: string;
begin
  Result := FNumCta;
end;

procedure T600CCO.SetNumCta(const pNumCta: string);
begin
  FNumCta := pNumCta;
end;

function T600CCO.GetCodMoe: string;
begin
  Result := FCodMoe;
end;

procedure T600CCO.SetCodMoe(const pCodMoe: string);
begin
  FCodMoe := pCodMoe;
end;

function T600CCO.GetCodFil: Integer;
begin
  Result := FCodFil;
end;

procedure T600CCO.SetCodFil(const pCodFil: Integer);
begin
  FCodFil := pCodFil;
end;

function T600CCO.GetFloBan: Integer;
begin
  Result := FFloBan;
end;

procedure T600CCO.SetFloBan(const pFloBan: Integer);
begin
  FFloBan := pFloBan;
end;

function T600CCO.GetNomCto: string;
begin
  Result := FNomCto;
end;

procedure T600CCO.SetNomCto(const pNomCto: string);
begin
  FNomCto := pNomCto;
end;

function T600CCO.GetFaxCto: string;
begin
  Result := FFaxCto;
end;

procedure T600CCO.SetFaxCto(const pFaxCto: string);
begin
  FFaxCto := pFaxCto;
end;

function T600CCO.GetFonCto: string;
begin
  Result := FFonCto;
end;

procedure T600CCO.SetFonCto(const pFonCto: string);
begin
  FFonCto := pFonCto;
end;

function T600CCO.GetDatIni: TDate;
begin
  Result := FDatIni;
end;

procedure T600CCO.SetDatIni(const pDatIni: TDate);
begin
  FDatIni := pDatIni;
end;

function T600CCO.GetSalIni: Double;
begin
  Result := FSalIni;
end;

procedure T600CCO.SetSalIni(const pSalIni: Double);
begin
  FSalIni := pSalIni;
end;

function T600CCO.GetCodTns: string;
begin
  Result := FCodTns;
end;

procedure T600CCO.SetCodTns(const pCodTns: string);
begin
  FCodTns := pCodTns;
end;

function T600CCO.GetDatLim: TDate;
begin
  Result := FDatLim;
end;

procedure T600CCO.SetDatLim(const pDatLim: TDate);
begin
  FDatLim := pDatLim;
end;

function T600CCO.GetVlrLim: Double;
begin
  Result := FVlrLim;
end;

procedure T600CCO.SetVlrLim(const pVlrLim: Double);
begin
  FVlrLim := pVlrLim;
end;

function T600CCO.GetUltChe: Integer;
begin
  Result := FUltChe;
end;

procedure T600CCO.SetUltChe(const pUltChe: Integer);
begin
  FUltChe := pUltChe;
end;

function T600CCO.GetDatUch: TDate;
begin
  Result := FDatUch;
end;

procedure T600CCO.SetDatUch(const pDatUch: TDate);
begin
  FDatUch := pDatUch;
end;

function T600CCO.GetUltAvi: Integer;
begin
  Result := FUltAvi;
end;

procedure T600CCO.SetUltAvi(const pUltAvi: Integer);
begin
  FUltAvi := pUltAvi;
end;

function T600CCO.GetDatUav: TDate;
begin
  Result := FDatUav;
end;

procedure T600CCO.SetDatUav(const pDatUav: TDate);
begin
  FDatUav := pDatUav;
end;

function T600CCO.GetUltCtb: Integer;
begin
  Result := FUltCtb;
end;

procedure T600CCO.SetUltCtb(const pUltCtb: Integer);
begin
  FUltCtb := pUltCtb;
end;

function T600CCO.GetDatUtb: TDate;
begin
  Result := FDatUtb;
end;

procedure T600CCO.SetDatUtb(const pDatUtb: TDate);
begin
  FDatUtb := pDatUtb;
end;

function T600CCO.GetCriRat: Integer;
begin
  Result := FCriRat;
end;

procedure T600CCO.SetCriRat(const pCriRat: Integer);
begin
  FCriRat := pCriRat;
end;

function T600CCO.GetCtaRed: Integer;
begin
  Result := FCtaRed;
end;

procedure T600CCO.SetCtaRed(const pCtaRed: Integer);
begin
  FCtaRed := pCtaRed;
end;

function T600CCO.GetCtaRcr: Integer;
begin
  Result := FCtaRcr;
end;

procedure T600CCO.SetCtaRcr(const pCtaRcr: Integer);
begin
  FCtaRcr := pCtaRcr;
end;

function T600CCO.GetCtaFdv: Integer;
begin
  Result := FCtaFdv;
end;

procedure T600CCO.SetCtaFdv(const pCtaFdv: Integer);
begin
  FCtaFdv := pCtaFdv;
end;

function T600CCO.GetCtaFcr: Integer;
begin
  Result := FCtaFcr;
end;

procedure T600CCO.SetCtaFcr(const pCtaFcr: Integer);
begin
  FCtaFcr := pCtaFcr;
end;

function T600CCO.GetCtaAux: Integer;
begin
  Result := FCtaAux;
end;

procedure T600CCO.SetCtaAux(const pCtaAux: Integer);
begin
  FCtaAux := pCtaAux;
end;

function T600CCO.GetCtaMny: string;
begin
  Result := FCtaMny;
end;

procedure T600CCO.SetCtaMny(const pCtaMny: string);
begin
  FCtaMny := pCtaMny;
end;

function T600CCO.GetModChe: string;
begin
  Result := FModChe;
end;

procedure T600CCO.SetModChe(const pModChe: string);
begin
  FModChe := pModChe;
end;

function T600CCO.GetModAvi: string;
begin
  Result := FModAvi;
end;

procedure T600CCO.SetModAvi(const pModAvi: string);
begin
  FModAvi := pModAvi;
end;

function T600CCO.GetModCtb: string;
begin
  Result := FModCtb;
end;

procedure T600CCO.SetModCtb(const pModCtb: string);
begin
  FModCtb := pModCtb;
end;

function T600CCO.GetUtiTal: string;
begin
  Result := FUtiTal;
end;

procedure T600CCO.SetUtiTal(const pUtiTal: string);
begin
  FUtiTal := pUtiTal;
end;

function T600CCO.GetSitCco: string;
begin
  Result := FSitCco;
end;

procedure T600CCO.SetSitCco(const pSitCco: string);
begin
  FSitCco := pSitCco;
end;

function T600CCO.GetUsuGer: Integer;
begin
  Result := FUsuGer;
end;

procedure T600CCO.SetUsuGer(const pUsuGer: Integer);
begin
  FUsuGer := pUsuGer;
end;

function T600CCO.GetDatGer: TDate;
begin
  Result := FDatGer;
end;

procedure T600CCO.SetDatGer(const pDatGer: TDate);
begin
  FDatGer := pDatGer;
end;

function T600CCO.GetHorGer: Integer;
begin
  Result := FHorGer;
end;

procedure T600CCO.SetHorGer(const pHorGer: Integer);
begin
  FHorGer := pHorGer;
end;

function T600CCO.GetUSU_EmaSol: string;
begin
  Result := FUSU_EmaSol;
end;

procedure T600CCO.SetUSU_EmaSol(const pUSU_EmaSol: string);
begin
  FUSU_EmaSol := pUSU_EmaSol;
end;

function T600CCO.GetCodEmpOLD: Integer;
begin
  Result := FCodEmpOLD;
end;

procedure T600CCO.SetCodEmpOLD(const pCodEmp: Integer);
begin
  FCodEmpOLD := pCodEmp;
end;

function T600CCO.GetNumCcoOLD: string;
begin
  Result := FNumCcoOLD;
end;

procedure T600CCO.SetNumCcoOLD(const pNumCco: string);
begin
  FNumCcoOLD := pNumCco;
end;

function T600CCO.GetDesCcoOLD: string;
begin
  Result := FDesCcoOLD;
end;

procedure T600CCO.SetDesCcoOLD(const pDesCco: string);
begin
  FDesCcoOLD := pDesCco;
end;

function T600CCO.GetAbrCcoOLD: string;
begin
  Result := FAbrCcoOLD;
end;

procedure T600CCO.SetAbrCcoOLD(const pAbrCco: string);
begin
  FAbrCcoOLD := pAbrCco;
end;

function T600CCO.GetCodTccOLD: string;
begin
  Result := FCodTccOLD;
end;

procedure T600CCO.SetCodTccOLD(const pCodTcc: string);
begin
  FCodTccOLD := pCodTcc;
end;

function T600CCO.GetCodBanOLD: string;
begin
  Result := FCodBanOLD;
end;

procedure T600CCO.SetCodBanOLD(const pCodBan: string);
begin
  FCodBanOLD := pCodBan;
end;

function T600CCO.GetCodAgeOLD: string;
begin
  Result := FCodAgeOLD;
end;

procedure T600CCO.SetCodAgeOLD(const pCodAge: string);
begin
  FCodAgeOLD := pCodAge;
end;

function T600CCO.GetNumCtaOLD: string;
begin
  Result := FNumCtaOLD;
end;

procedure T600CCO.SetNumCtaOLD(const pNumCta: string);
begin
  FNumCtaOLD := pNumCta;
end;

function T600CCO.GetCodMoeOLD: string;
begin
  Result := FCodMoeOLD;
end;

procedure T600CCO.SetCodMoeOLD(const pCodMoe: string);
begin
  FCodMoeOLD := pCodMoe;
end;

function T600CCO.GetCodFilOLD: Integer;
begin
  Result := FCodFilOLD;
end;

procedure T600CCO.SetCodFilOLD(const pCodFil: Integer);
begin
  FCodFilOLD := pCodFil;
end;

function T600CCO.GetFloBanOLD: Integer;
begin
  Result := FFloBanOLD;
end;

procedure T600CCO.SetFloBanOLD(const pFloBan: Integer);
begin
  FFloBanOLD := pFloBan;
end;

function T600CCO.GetNomCtoOLD: string;
begin
  Result := FNomCtoOLD;
end;

procedure T600CCO.SetNomCtoOLD(const pNomCto: string);
begin
  FNomCtoOLD := pNomCto;
end;

function T600CCO.GetFaxCtoOLD: string;
begin
  Result := FFaxCtoOLD;
end;

procedure T600CCO.SetFaxCtoOLD(const pFaxCto: string);
begin
  FFaxCtoOLD := pFaxCto;
end;

function T600CCO.GetFonCtoOLD: string;
begin
  Result := FFonCtoOLD;
end;

procedure T600CCO.SetFonCtoOLD(const pFonCto: string);
begin
  FFonCtoOLD := pFonCto;
end;

function T600CCO.GetDatIniOLD: TDate;
begin
  Result := FDatIniOLD;
end;

procedure T600CCO.SetDatIniOLD(const pDatIni: TDate);
begin
  FDatIniOLD := pDatIni;
end;

function T600CCO.GetSalIniOLD: Double;
begin
  Result := FSalIniOLD;
end;

procedure T600CCO.SetSalIniOLD(const pSalIni: Double);
begin
  FSalIniOLD := pSalIni;
end;

function T600CCO.GetCodTnsOLD: string;
begin
  Result := FCodTnsOLD;
end;

procedure T600CCO.SetCodTnsOLD(const pCodTns: string);
begin
  FCodTnsOLD := pCodTns;
end;

function T600CCO.GetDatLimOLD: TDate;
begin
  Result := FDatLimOLD;
end;

procedure T600CCO.SetDatLimOLD(const pDatLim: TDate);
begin
  FDatLimOLD := pDatLim;
end;

function T600CCO.GetVlrLimOLD: Double;
begin
  Result := FVlrLimOLD;
end;

procedure T600CCO.SetVlrLimOLD(const pVlrLim: Double);
begin
  FVlrLimOLD := pVlrLim;
end;

function T600CCO.GetUltCheOLD: Integer;
begin
  Result := FUltCheOLD;
end;

procedure T600CCO.SetUltCheOLD(const pUltChe: Integer);
begin
  FUltCheOLD := pUltChe;
end;

function T600CCO.GetDatUchOLD: TDate;
begin
  Result := FDatUchOLD;
end;

procedure T600CCO.SetDatUchOLD(const pDatUch: TDate);
begin
  FDatUchOLD := pDatUch;
end;

function T600CCO.GetUltAviOLD: Integer;
begin
  Result := FUltAviOLD;
end;

procedure T600CCO.SetUltAviOLD(const pUltAvi: Integer);
begin
  FUltAviOLD := pUltAvi;
end;

function T600CCO.GetDatUavOLD: TDate;
begin
  Result := FDatUavOLD;
end;

procedure T600CCO.SetDatUavOLD(const pDatUav: TDate);
begin
  FDatUavOLD := pDatUav;
end;

function T600CCO.GetUltCtbOLD: Integer;
begin
  Result := FUltCtbOLD;
end;

procedure T600CCO.SetUltCtbOLD(const pUltCtb: Integer);
begin
  FUltCtbOLD := pUltCtb;
end;

function T600CCO.GetDatUtbOLD: TDate;
begin
  Result := FDatUtbOLD;
end;

procedure T600CCO.SetDatUtbOLD(const pDatUtb: TDate);
begin
  FDatUtbOLD := pDatUtb;
end;

function T600CCO.GetCriRatOLD: Integer;
begin
  Result := FCriRatOLD;
end;

procedure T600CCO.SetCriRatOLD(const pCriRat: Integer);
begin
  FCriRatOLD := pCriRat;
end;

function T600CCO.GetCtaRedOLD: Integer;
begin
  Result := FCtaRedOLD;
end;

procedure T600CCO.SetCtaRedOLD(const pCtaRed: Integer);
begin
  FCtaRedOLD := pCtaRed;
end;

function T600CCO.GetCtaRcrOLD: Integer;
begin
  Result := FCtaRcrOLD;
end;

procedure T600CCO.SetCtaRcrOLD(const pCtaRcr: Integer);
begin
  FCtaRcrOLD := pCtaRcr;
end;

function T600CCO.GetCtaFdvOLD: Integer;
begin
  Result := FCtaFdvOLD;
end;

procedure T600CCO.SetCtaFdvOLD(const pCtaFdv: Integer);
begin
  FCtaFdvOLD := pCtaFdv;
end;

function T600CCO.GetCtaFcrOLD: Integer;
begin
  Result := FCtaFcrOLD;
end;

procedure T600CCO.SetCtaFcrOLD(const pCtaFcr: Integer);
begin
  FCtaFcrOLD := pCtaFcr;
end;

function T600CCO.GetCtaAuxOLD: Integer;
begin
  Result := FCtaAuxOLD;
end;

procedure T600CCO.SetCtaAuxOLD(const pCtaAux: Integer);
begin
  FCtaAuxOLD := pCtaAux;
end;

function T600CCO.GetCtaMnyOLD: string;
begin
  Result := FCtaMnyOLD;
end;

procedure T600CCO.SetCtaMnyOLD(const pCtaMny: string);
begin
  FCtaMnyOLD := pCtaMny;
end;

function T600CCO.GetModCheOLD: string;
begin
  Result := FModCheOLD;
end;

procedure T600CCO.SetModCheOLD(const pModChe: string);
begin
  FModCheOLD := pModChe;
end;

function T600CCO.GetModAviOLD: string;
begin
  Result := FModAviOLD;
end;

procedure T600CCO.SetModAviOLD(const pModAvi: string);
begin
  FModAviOLD := pModAvi;
end;

function T600CCO.GetModCtbOLD: string;
begin
  Result := FModCtbOLD;
end;

procedure T600CCO.SetModCtbOLD(const pModCtb: string);
begin
  FModCtbOLD := pModCtb;
end;

function T600CCO.GetUtiTalOLD: string;
begin
  Result := FUtiTalOLD;
end;

procedure T600CCO.SetUtiTalOLD(const pUtiTal: string);
begin
  FUtiTalOLD := pUtiTal;
end;

function T600CCO.GetSitCcoOLD: string;
begin
  Result := FSitCcoOLD;
end;

procedure T600CCO.SetSitCcoOLD(const pSitCco: string);
begin
  FSitCcoOLD := pSitCco;
end;

function T600CCO.GetUsuGerOLD: Integer;
begin
  Result := FUsuGerOLD;
end;

procedure T600CCO.SetUsuGerOLD(const pUsuGer: Integer);
begin
  FUsuGerOLD := pUsuGer;
end;

function T600CCO.GetDatGerOLD: TDate;
begin
  Result := FDatGerOLD;
end;

procedure T600CCO.SetDatGerOLD(const pDatGer: TDate);
begin
  FDatGerOLD := pDatGer;
end;

function T600CCO.GetHorGerOLD: Integer;
begin
  Result := FHorGerOLD;
end;

procedure T600CCO.SetHorGerOLD(const pHorGer: Integer);
begin
  FHorGerOLD := pHorGer;
end;

function T600CCO.GetUSU_EmaSolOLD: string;
begin
  Result := FUSU_EmaSolOLD;
end;

procedure T600CCO.SetUSU_EmaSolOLD(const pUSU_EmaSol: string);
begin
  FUSU_EmaSolOLD := pUSU_EmaSol;
end;

procedure T600CCO.Registros_OLD();
begin
  FCodEmpOLD := FCodEmp;
  FNumCcoOLD := FNumCco;
  FDesCcoOLD := FDesCco;
  FAbrCcoOLD := FAbrCco;
  FCodTccOLD := FCodTcc;
  FCodBanOLD := FCodBan;
  FCodAgeOLD := FCodAge;
  FNumCtaOLD := FNumCta;
  FCodMoeOLD := FCodMoe;
  FCodFilOLD := FCodFil;
  FFloBanOLD := FFloBan;
  FNomCtoOLD := FNomCto;
  FFaxCtoOLD := FFaxCto;
  FFonCtoOLD := FFonCto;
  FDatIniOLD := FDatIni;
  FSalIniOLD := FSalIni;
  FCodTnsOLD := FCodTns;
  FDatLimOLD := FDatLim;
  FVlrLimOLD := FVlrLim;
  FUltCheOLD := FUltChe;
  FDatUchOLD := FDatUch;
  FUltAviOLD := FUltAvi;
  FDatUavOLD := FDatUav;
  FUltCtbOLD := FUltCtb;
  FDatUtbOLD := FDatUtb;
  FCriRatOLD := FCriRat;
  FCtaRedOLD := FCtaRed;
  FCtaRcrOLD := FCtaRcr;
  FCtaFdvOLD := FCtaFdv;
  FCtaFcrOLD := FCtaFcr;
  FCtaAuxOLD := FCtaAux;
  FCtaMnyOLD := FCtaMny;
  FModCheOLD := FModChe;
  FModAviOLD := FModAvi;
  FModCtbOLD := FModCtb;
  FUtiTalOLD := FUtiTal;
  FSitCcoOLD := FSitCco;
  FUsuGerOLD := FUsuGer;
  FDatGerOLD := FDatGer;
  FHorGerOLD := FHorGer;
  FUSU_EmaSolOLD := FUSU_EmaSol;
end;

end.
