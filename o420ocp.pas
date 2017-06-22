unit o420ocp;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, oTabelas, DateUtils;

type
  {$HINTS OFF}

  T420OCP = class(TTabelaPadrao)
  private
    FCodEmp: Integer;
    FCodFil: Integer;
    FNumOcp: Integer;
    FTnsPro: string;
    FTnsSer: string;
    FDatEmi: TDate;
    FCodUsu: Integer;
    FCodFor: Integer;
    FSeqCto: Integer;
    FPedFor: string;
    FObsOcp: string;
    FCodCpg: string;
    FCodFpg: Integer;
    FCodMoe: string;
    FDatMoe: TDate;
    FCotMoe: Double;
    FFecMoe: string;
    FCodFcr: string;
    FDatFcr: TDate;
    FQtdAbe: Double;
    FCodTra: Integer;
    FCodRed: Integer;
    FVlrFum: Double;
    FQtdFre: Double;
    FForFre: Integer;
    FPerDs1: Double;
    FPerDs2: Double;
    FPerFin: Double;
    FVlrFre: Double;
    FCifFob: string;
    FVlrSeg: Double;
    FVlrEmb: Double;
    FVlrEnc: Double;
    FVlrOut: Double;
    FVlrDar: Double;
    FVlrFrd: Double;
    FVlrOud: Double;
    FVlrBpr: Double;
    FVlrDpr: Double;
    FVlrBse: Double;
    FVlrDse: Double;
    FVlrDs1: Double;
    FVlrDs2: Double;
    FVlrDzf: Double;
    FVlrBfu: Double;
    FVlrFun: Double;
    FVlrBip: Double;
    FVlrIpi: Double;
    FVlrBic: Double;
    FVlrIcm: Double;
    FVlrBsi: Double;
    FVlrSic: Double;
    FVlrBsp: Double;
    FVlrStp: Double;
    FVlrBsc: Double;
    FVlrStc: Double;
    FVlrBis: Double;
    FVlrIss: Double;
    FVlrBir: Double;
    FVlrIrf: Double;
    FVlrBin: Double;
    FVlrIns: Double;
    FVlrLpr: Double;
    FVlrLse: Double;
    FVlrLou: Double;
    FVlrLiq: Double;
    FVlrFin: Double;
    FTemPar: string;
    FCodPor: string;
    FCodCrt: string;
    FRotNap: Integer;
    FFilApr: Integer;
    FNumApr: Integer;
    FSitApr: string;
    FSitOcp: Integer;
    FCodMot: Integer;
    FObsMot: string;
    FFilPed: Integer;
    FNumPed: Integer;
    FVerCal: Integer;
    FUsuGer: Integer;
    FDatGer: TDate;
    FHorGer: Integer;
    FPrcOcp: Integer;
    FPerPrg: Integer;
    FPerFre: Double;
    FPerSeg: Double;
    FPerEmb: Double;
    FPerEnc: Double;
    FPerOut: Double;
    FSeqOrm: Integer;
    FUsuFec: Integer;
    FDatFec: TDate;
    FHorFec: Integer;
    FTipInt: Integer;
    FVlrBcl: Double;
    FVlrCsl: Double;
    FVlrBpt: Double;
    FVlrPit: Double;
    FVlrBct: Double;
    FVlrCrt: Double;
    FVlrBor: Double;
    FVlrOur: Double;
    FCodMfr: string;
    FDatMfr: TDate;
    FCotMfr: Double;
    FVlrBii: Double;
    FVlrIim: Double;
    FVlrRis: Double;
    FVlrBpi: Double;
    FVlrPis: Double;
    FVlrBcr: Double;
    FVlrCor: Double;
    FPerDs3: Double;
    FPerDs4: Double;
    FPerDs5: Double;
    FVlrDs3: Double;
    FVlrDs4: Double;
    FVlrDs5: Double;
    FVlrOri: Double;
    FQtdOri: Double;
    FVlrFei: Double;
    FMoeFei: string;
    FDatFei: TDate;
    FCotFei: Double;
    FVlrSei: Double;
    FMoeSei: string;
    FDatSei: TDate;
    FCotSei: Double;
    FVlrOui: Double;
    FMoeOui: string;
    FDatOui: TDate;
    FCotOui: Double;
    FBcoImp: Double;
    FCofImp: Double;
    FBpiImp: Double;
    FPisImp: Double;
    FSomFre: string;
    FCodSaf: string;
    FSalCan: string;
    FObrCtr: string;
    FQtdBpi: Double;
    FQtdBco: Double;
    FQtdBip: Double;
    FUSU_UsuMod: Integer;
    FUSU_DatMod: TDate;
    FUSU_HorMod: Integer;
    FUSU_TipTrf: string;
    FUSU_OCFab: string;
    FUSU_PPAP: Integer;
    FUSU_CrtOcp: Integer;
    FUSU_EmaEnv: string;
    FUSU_NumSdg: Integer;
    FUSU_IndBTB: string;
    FUSU_PrazEnt: TDate;
    FUSU_DatEmb: TDate;
    FUSU_DatEnt: TDate;
    FUSU_ObsOa: string;
    FUSU_OrdCon: string;

    FCodEmpOLD: Integer;
    FCodFilOLD: Integer;
    FNumOcpOLD: Integer;
    FTnsProOLD: string;
    FTnsSerOLD: string;
    FDatEmiOLD: TDate;
    FCodUsuOLD: Integer;
    FCodForOLD: Integer;
    FSeqCtoOLD: Integer;
    FPedForOLD: string;
    FObsOcpOLD: string;
    FCodCpgOLD: string;
    FCodFpgOLD: Integer;
    FCodMoeOLD: string;
    FDatMoeOLD: TDate;
    FCotMoeOLD: Double;
    FFecMoeOLD: string;
    FCodFcrOLD: string;
    FDatFcrOLD: TDate;
    FQtdAbeOLD: Double;
    FCodTraOLD: Integer;
    FCodRedOLD: Integer;
    FVlrFumOLD: Double;
    FQtdFreOLD: Double;
    FForFreOLD: Integer;
    FPerDs1OLD: Double;
    FPerDs2OLD: Double;
    FPerFinOLD: Double;
    FVlrFreOLD: Double;
    FCifFobOLD: string;
    FVlrSegOLD: Double;
    FVlrEmbOLD: Double;
    FVlrEncOLD: Double;
    FVlrOutOLD: Double;
    FVlrDarOLD: Double;
    FVlrFrdOLD: Double;
    FVlrOudOLD: Double;
    FVlrBprOLD: Double;
    FVlrDprOLD: Double;
    FVlrBseOLD: Double;
    FVlrDseOLD: Double;
    FVlrDs1OLD: Double;
    FVlrDs2OLD: Double;
    FVlrDzfOLD: Double;
    FVlrBfuOLD: Double;
    FVlrFunOLD: Double;
    FVlrBipOLD: Double;
    FVlrIpiOLD: Double;
    FVlrBicOLD: Double;
    FVlrIcmOLD: Double;
    FVlrBsiOLD: Double;
    FVlrSicOLD: Double;
    FVlrBspOLD: Double;
    FVlrStpOLD: Double;
    FVlrBscOLD: Double;
    FVlrStcOLD: Double;
    FVlrBisOLD: Double;
    FVlrIssOLD: Double;
    FVlrBirOLD: Double;
    FVlrIrfOLD: Double;
    FVlrBinOLD: Double;
    FVlrInsOLD: Double;
    FVlrLprOLD: Double;
    FVlrLseOLD: Double;
    FVlrLouOLD: Double;
    FVlrLiqOLD: Double;
    FVlrFinOLD: Double;
    FTemParOLD: string;
    FCodPorOLD: string;
    FCodCrtOLD: string;
    FRotNapOLD: Integer;
    FFilAprOLD: Integer;
    FNumAprOLD: Integer;
    FSitAprOLD: string;
    FSitOcpOLD: Integer;
    FCodMotOLD: Integer;
    FObsMotOLD: string;
    FFilPedOLD: Integer;
    FNumPedOLD: Integer;
    FVerCalOLD: Integer;
    FUsuGerOLD: Integer;
    FDatGerOLD: TDate;
    FHorGerOLD: Integer;
    FPrcOcpOLD: Integer;
    FPerPrgOLD: Integer;
    FPerFreOLD: Double;
    FPerSegOLD: Double;
    FPerEmbOLD: Double;
    FPerEncOLD: Double;
    FPerOutOLD: Double;
    FSeqOrmOLD: Integer;
    FUsuFecOLD: Integer;
    FDatFecOLD: TDate;
    FHorFecOLD: Integer;
    FTipIntOLD: Integer;
    FVlrBclOLD: Double;
    FVlrCslOLD: Double;
    FVlrBptOLD: Double;
    FVlrPitOLD: Double;
    FVlrBctOLD: Double;
    FVlrCrtOLD: Double;
    FVlrBorOLD: Double;
    FVlrOurOLD: Double;
    FCodMfrOLD: string;
    FDatMfrOLD: TDate;
    FCotMfrOLD: Double;
    FVlrBiiOLD: Double;
    FVlrIimOLD: Double;
    FVlrRisOLD: Double;
    FVlrBpiOLD: Double;
    FVlrPisOLD: Double;
    FVlrBcrOLD: Double;
    FVlrCorOLD: Double;
    FPerDs3OLD: Double;
    FPerDs4OLD: Double;
    FPerDs5OLD: Double;
    FVlrDs3OLD: Double;
    FVlrDs4OLD: Double;
    FVlrDs5OLD: Double;
    FVlrOriOLD: Double;
    FQtdOriOLD: Double;
    FVlrFeiOLD: Double;
    FMoeFeiOLD: string;
    FDatFeiOLD: TDate;
    FCotFeiOLD: Double;
    FVlrSeiOLD: Double;
    FMoeSeiOLD: string;
    FDatSeiOLD: TDate;
    FCotSeiOLD: Double;
    FVlrOuiOLD: Double;
    FMoeOuiOLD: string;
    FDatOuiOLD: TDate;
    FCotOuiOLD: Double;
    FBcoImpOLD: Double;
    FCofImpOLD: Double;
    FBpiImpOLD: Double;
    FPisImpOLD: Double;
    FSomFreOLD: string;
    FCodSafOLD: string;
    FSalCanOLD: string;
    FObrCtrOLD: string;
    FQtdBpiOLD: Double;
    FQtdBcoOLD: Double;
    FQtdBipOLD: Double;
    FUSU_UsuModOLD: Integer;
    FUSU_DatModOLD: TDate;
    FUSU_HorModOLD: Integer;
    FUSU_TipTrfOLD: string;
    FUSU_OCFabOLD: string;
    FUSU_PPAPOLD: Integer;
    FUSU_CrtOcpOLD: Integer;
    FUSU_EmaEnvOLD: string;
    FUSU_NumSdgOLD: Integer;
    FUSU_IndBTBOLD: string;
    FUSU_PrazEntOLD: TDate;
    FUSU_DatEmbOLD: TDate;
    FUSU_DatEntOLD: TDate;
    FUSU_ObsOaOLD: string;
    FUSU_OrdConOLD: string;

    function GetCodEmp: Integer;
    procedure SetCodEmp(const pCodEmp: Integer);
    function GetCodFil: Integer;
    procedure SetCodFil(const pCodFil: Integer);
    function GetNumOcp: Integer;
    procedure SetNumOcp(const pNumOcp: Integer);
    function GetTnsPro: string;
    procedure SetTnsPro(const pTnsPro: string);
    function GetTnsSer: string;
    procedure SetTnsSer(const pTnsSer: string);
    function GetDatEmi: TDate;
    procedure SetDatEmi(const pDatEmi: TDate);
    function GetCodUsu: Integer;
    procedure SetCodUsu(const pCodUsu: Integer);
    function GetCodFor: Integer;
    procedure SetCodFor(const pCodFor: Integer);
    function GetSeqCto: Integer;
    procedure SetSeqCto(const pSeqCto: Integer);
    function GetPedFor: string;
    procedure SetPedFor(const pPedFor: string);
    function GetObsOcp: string;
    procedure SetObsOcp(const pObsOcp: string);
    function GetCodCpg: string;
    procedure SetCodCpg(const pCodCpg: string);
    function GetCodFpg: Integer;
    procedure SetCodFpg(const pCodFpg: Integer);
    function GetCodMoe: string;
    procedure SetCodMoe(const pCodMoe: string);
    function GetDatMoe: TDate;
    procedure SetDatMoe(const pDatMoe: TDate);
    function GetCotMoe: Double;
    procedure SetCotMoe(const pCotMoe: Double);
    function GetFecMoe: string;
    procedure SetFecMoe(const pFecMoe: string);
    function GetCodFcr: string;
    procedure SetCodFcr(const pCodFcr: string);
    function GetDatFcr: TDate;
    procedure SetDatFcr(const pDatFcr: TDate);
    function GetQtdAbe: Double;
    procedure SetQtdAbe(const pQtdAbe: Double);
    function GetCodTra: Integer;
    procedure SetCodTra(const pCodTra: Integer);
    function GetCodRed: Integer;
    procedure SetCodRed(const pCodRed: Integer);
    function GetVlrFum: Double;
    procedure SetVlrFum(const pVlrFum: Double);
    function GetQtdFre: Double;
    procedure SetQtdFre(const pQtdFre: Double);
    function GetForFre: Integer;
    procedure SetForFre(const pForFre: Integer);
    function GetPerDs1: Double;
    procedure SetPerDs1(const pPerDs1: Double);
    function GetPerDs2: Double;
    procedure SetPerDs2(const pPerDs2: Double);
    function GetPerFin: Double;
    procedure SetPerFin(const pPerFin: Double);
    function GetVlrFre: Double;
    procedure SetVlrFre(const pVlrFre: Double);
    function GetCifFob: string;
    procedure SetCifFob(const pCifFob: string);
    function GetVlrSeg: Double;
    procedure SetVlrSeg(const pVlrSeg: Double);
    function GetVlrEmb: Double;
    procedure SetVlrEmb(const pVlrEmb: Double);
    function GetVlrEnc: Double;
    procedure SetVlrEnc(const pVlrEnc: Double);
    function GetVlrOut: Double;
    procedure SetVlrOut(const pVlrOut: Double);
    function GetVlrDar: Double;
    procedure SetVlrDar(const pVlrDar: Double);
    function GetVlrFrd: Double;
    procedure SetVlrFrd(const pVlrFrd: Double);
    function GetVlrOud: Double;
    procedure SetVlrOud(const pVlrOud: Double);
    function GetVlrBpr: Double;
    procedure SetVlrBpr(const pVlrBpr: Double);
    function GetVlrDpr: Double;
    procedure SetVlrDpr(const pVlrDpr: Double);
    function GetVlrBse: Double;
    procedure SetVlrBse(const pVlrBse: Double);
    function GetVlrDse: Double;
    procedure SetVlrDse(const pVlrDse: Double);
    function GetVlrDs1: Double;
    procedure SetVlrDs1(const pVlrDs1: Double);
    function GetVlrDs2: Double;
    procedure SetVlrDs2(const pVlrDs2: Double);
    function GetVlrDzf: Double;
    procedure SetVlrDzf(const pVlrDzf: Double);
    function GetVlrBfu: Double;
    procedure SetVlrBfu(const pVlrBfu: Double);
    function GetVlrFun: Double;
    procedure SetVlrFun(const pVlrFun: Double);
    function GetVlrBip: Double;
    procedure SetVlrBip(const pVlrBip: Double);
    function GetVlrIpi: Double;
    procedure SetVlrIpi(const pVlrIpi: Double);
    function GetVlrBic: Double;
    procedure SetVlrBic(const pVlrBic: Double);
    function GetVlrIcm: Double;
    procedure SetVlrIcm(const pVlrIcm: Double);
    function GetVlrBsi: Double;
    procedure SetVlrBsi(const pVlrBsi: Double);
    function GetVlrSic: Double;
    procedure SetVlrSic(const pVlrSic: Double);
    function GetVlrBsp: Double;
    procedure SetVlrBsp(const pVlrBsp: Double);
    function GetVlrStp: Double;
    procedure SetVlrStp(const pVlrStp: Double);
    function GetVlrBsc: Double;
    procedure SetVlrBsc(const pVlrBsc: Double);
    function GetVlrStc: Double;
    procedure SetVlrStc(const pVlrStc: Double);
    function GetVlrBis: Double;
    procedure SetVlrBis(const pVlrBis: Double);
    function GetVlrIss: Double;
    procedure SetVlrIss(const pVlrIss: Double);
    function GetVlrBir: Double;
    procedure SetVlrBir(const pVlrBir: Double);
    function GetVlrIrf: Double;
    procedure SetVlrIrf(const pVlrIrf: Double);
    function GetVlrBin: Double;
    procedure SetVlrBin(const pVlrBin: Double);
    function GetVlrIns: Double;
    procedure SetVlrIns(const pVlrIns: Double);
    function GetVlrLpr: Double;
    procedure SetVlrLpr(const pVlrLpr: Double);
    function GetVlrLse: Double;
    procedure SetVlrLse(const pVlrLse: Double);
    function GetVlrLou: Double;
    procedure SetVlrLou(const pVlrLou: Double);
    function GetVlrLiq: Double;
    procedure SetVlrLiq(const pVlrLiq: Double);
    function GetVlrFin: Double;
    procedure SetVlrFin(const pVlrFin: Double);
    function GetTemPar: string;
    procedure SetTemPar(const pTemPar: string);
    function GetCodPor: string;
    procedure SetCodPor(const pCodPor: string);
    function GetCodCrt: string;
    procedure SetCodCrt(const pCodCrt: string);
    function GetRotNap: Integer;
    procedure SetRotNap(const pRotNap: Integer);
    function GetFilApr: Integer;
    procedure SetFilApr(const pFilApr: Integer);
    function GetNumApr: Integer;
    procedure SetNumApr(const pNumApr: Integer);
    function GetSitApr: string;
    procedure SetSitApr(const pSitApr: string);
    function GetSitOcp: Integer;
    procedure SetSitOcp(const pSitOcp: Integer);
    function GetCodMot: Integer;
    procedure SetCodMot(const pCodMot: Integer);
    function GetObsMot: string;
    procedure SetObsMot(const pObsMot: string);
    function GetFilPed: Integer;
    procedure SetFilPed(const pFilPed: Integer);
    function GetNumPed: Integer;
    procedure SetNumPed(const pNumPed: Integer);
    function GetVerCal: Integer;
    procedure SetVerCal(const pVerCal: Integer);
    function GetUsuGer: Integer;
    procedure SetUsuGer(const pUsuGer: Integer);
    function GetDatGer: TDate;
    procedure SetDatGer(const pDatGer: TDate);
    function GetHorGer: Integer;
    procedure SetHorGer(const pHorGer: Integer);
    function GetPrcOcp: Integer;
    procedure SetPrcOcp(const pPrcOcp: Integer);
    function GetPerPrg: Integer;
    procedure SetPerPrg(const pPerPrg: Integer);
    function GetPerFre: Double;
    procedure SetPerFre(const pPerFre: Double);
    function GetPerSeg: Double;
    procedure SetPerSeg(const pPerSeg: Double);
    function GetPerEmb: Double;
    procedure SetPerEmb(const pPerEmb: Double);
    function GetPerEnc: Double;
    procedure SetPerEnc(const pPerEnc: Double);
    function GetPerOut: Double;
    procedure SetPerOut(const pPerOut: Double);
    function GetSeqOrm: Integer;
    procedure SetSeqOrm(const pSeqOrm: Integer);
    function GetUsuFec: Integer;
    procedure SetUsuFec(const pUsuFec: Integer);
    function GetDatFec: TDate;
    procedure SetDatFec(const pDatFec: TDate);
    function GetHorFec: Integer;
    procedure SetHorFec(const pHorFec: Integer);
    function GetTipInt: Integer;
    procedure SetTipInt(const pTipInt: Integer);
    function GetVlrBcl: Double;
    procedure SetVlrBcl(const pVlrBcl: Double);
    function GetVlrCsl: Double;
    procedure SetVlrCsl(const pVlrCsl: Double);
    function GetVlrBpt: Double;
    procedure SetVlrBpt(const pVlrBpt: Double);
    function GetVlrPit: Double;
    procedure SetVlrPit(const pVlrPit: Double);
    function GetVlrBct: Double;
    procedure SetVlrBct(const pVlrBct: Double);
    function GetVlrCrt: Double;
    procedure SetVlrCrt(const pVlrCrt: Double);
    function GetVlrBor: Double;
    procedure SetVlrBor(const pVlrBor: Double);
    function GetVlrOur: Double;
    procedure SetVlrOur(const pVlrOur: Double);
    function GetCodMfr: string;
    procedure SetCodMfr(const pCodMfr: string);
    function GetDatMfr: TDate;
    procedure SetDatMfr(const pDatMfr: TDate);
    function GetCotMfr: Double;
    procedure SetCotMfr(const pCotMfr: Double);
    function GetVlrBii: Double;
    procedure SetVlrBii(const pVlrBii: Double);
    function GetVlrIim: Double;
    procedure SetVlrIim(const pVlrIim: Double);
    function GetVlrRis: Double;
    procedure SetVlrRis(const pVlrRis: Double);
    function GetVlrBpi: Double;
    procedure SetVlrBpi(const pVlrBpi: Double);
    function GetVlrPis: Double;
    procedure SetVlrPis(const pVlrPis: Double);
    function GetVlrBcr: Double;
    procedure SetVlrBcr(const pVlrBcr: Double);
    function GetVlrCor: Double;
    procedure SetVlrCor(const pVlrCor: Double);
    function GetPerDs3: Double;
    procedure SetPerDs3(const pPerDs3: Double);
    function GetPerDs4: Double;
    procedure SetPerDs4(const pPerDs4: Double);
    function GetPerDs5: Double;
    procedure SetPerDs5(const pPerDs5: Double);
    function GetVlrDs3: Double;
    procedure SetVlrDs3(const pVlrDs3: Double);
    function GetVlrDs4: Double;
    procedure SetVlrDs4(const pVlrDs4: Double);
    function GetVlrDs5: Double;
    procedure SetVlrDs5(const pVlrDs5: Double);
    function GetVlrOri: Double;
    procedure SetVlrOri(const pVlrOri: Double);
    function GetQtdOri: Double;
    procedure SetQtdOri(const pQtdOri: Double);
    function GetVlrFei: Double;
    procedure SetVlrFei(const pVlrFei: Double);
    function GetMoeFei: string;
    procedure SetMoeFei(const pMoeFei: string);
    function GetDatFei: TDate;
    procedure SetDatFei(const pDatFei: TDate);
    function GetCotFei: Double;
    procedure SetCotFei(const pCotFei: Double);
    function GetVlrSei: Double;
    procedure SetVlrSei(const pVlrSei: Double);
    function GetMoeSei: string;
    procedure SetMoeSei(const pMoeSei: string);
    function GetDatSei: TDate;
    procedure SetDatSei(const pDatSei: TDate);
    function GetCotSei: Double;
    procedure SetCotSei(const pCotSei: Double);
    function GetVlrOui: Double;
    procedure SetVlrOui(const pVlrOui: Double);
    function GetMoeOui: string;
    procedure SetMoeOui(const pMoeOui: string);
    function GetDatOui: TDate;
    procedure SetDatOui(const pDatOui: TDate);
    function GetCotOui: Double;
    procedure SetCotOui(const pCotOui: Double);
    function GetBcoImp: Double;
    procedure SetBcoImp(const pBcoImp: Double);
    function GetCofImp: Double;
    procedure SetCofImp(const pCofImp: Double);
    function GetBpiImp: Double;
    procedure SetBpiImp(const pBpiImp: Double);
    function GetPisImp: Double;
    procedure SetPisImp(const pPisImp: Double);
    function GetSomFre: string;
    procedure SetSomFre(const pSomFre: string);
    function GetCodSaf: string;
    procedure SetCodSaf(const pCodSaf: string);
    function GetSalCan: string;
    procedure SetSalCan(const pSalCan: string);
    function GetObrCtr: string;
    procedure SetObrCtr(const pObrCtr: string);
    function GetQtdBpi: Double;
    procedure SetQtdBpi(const pQtdBpi: Double);
    function GetQtdBco: Double;
    procedure SetQtdBco(const pQtdBco: Double);
    function GetQtdBip: Double;
    procedure SetQtdBip(const pQtdBip: Double);
    function GetUSU_UsuMod: Integer;
    procedure SetUSU_UsuMod(const pUSU_UsuMod: Integer);
    function GetUSU_DatMod: TDate;
    procedure SetUSU_DatMod(const pUSU_DatMod: TDate);
    function GetUSU_HorMod: Integer;
    procedure SetUSU_HorMod(const pUSU_HorMod: Integer);
    function GetUSU_TipTrf: string;
    procedure SetUSU_TipTrf(const pUSU_TipTrf: string);
    function GetUSU_OCFab: string;
    procedure SetUSU_OCFab(const pUSU_OCFab: string);
    function GetUSU_PPAP: Integer;
    procedure SetUSU_PPAP(const pUSU_PPAP: Integer);
    function GetUSU_CrtOcp: Integer;
    procedure SetUSU_CrtOcp(const pUSU_CrtOcp: Integer);
    function GetUSU_EmaEnv: string;
    procedure SetUSU_EmaEnv(const pUSU_EmaEnv: string);
    function GetUSU_NumSdg: Integer;
    procedure SetUSU_NumSdg(const pUSU_NumSdg: Integer);
    function GetUSU_IndBTB: string;
    procedure SetUSU_IndBTB(const pUSU_IndBTB: string);
    function GetUSU_PrazEnt: TDate;
    procedure SetUSU_PrazEnt(const pUSU_PrazEnt: TDate);
    function GetUSU_DatEmb: TDate;
    procedure SetUSU_DatEmb(const pUSU_DatEmb: TDate);
    function GetUSU_DatEnt: TDate;
    procedure SetUSU_DatEnt(const pUSU_DatEnt: TDate);
    function GetUSU_ObsOa: string;
    procedure SetUSU_ObsOa(const pUSU_ObsOa: string);
    function GetUSU_OrdCon: string;
    procedure SetUSU_OrdCon(const pUSU_OrdCon: string);

    function GetCodEmpOld: Integer;
    procedure SetCodEmpOld(const pCodEmp: Integer);
    function GetCodFilOld: Integer;
    procedure SetCodFilOld(const pCodFil: Integer);
    function GetNumOcpOld: Integer;
    procedure SetNumOcpOld(const pNumOcp: Integer);
    function GetTnsProOld: string;
    procedure SetTnsProOld(const pTnsPro: string);
    function GetTnsSerOld: string;
    procedure SetTnsSerOld(const pTnsSer: string);
    function GetDatEmiOld: TDate;
    procedure SetDatEmiOld(const pDatEmi: TDate);
    function GetCodUsuOld: Integer;
    procedure SetCodUsuOld(const pCodUsu: Integer);
    function GetCodForOld: Integer;
    procedure SetCodForOld(const pCodFor: Integer);
    function GetSeqCtoOld: Integer;
    procedure SetSeqCtoOld(const pSeqCto: Integer);
    function GetPedForOld: string;
    procedure SetPedForOld(const pPedFor: string);
    function GetObsOcpOld: string;
    procedure SetObsOcpOld(const pObsOcp: string);
    function GetCodCpgOld: string;
    procedure SetCodCpgOld(const pCodCpg: string);
    function GetCodFpgOld: Integer;
    procedure SetCodFpgOld(const pCodFpg: Integer);
    function GetCodMoeOld: string;
    procedure SetCodMoeOld(const pCodMoe: string);
    function GetDatMoeOld: TDate;
    procedure SetDatMoeOld(const pDatMoe: TDate);
    function GetCotMoeOld: Double;
    procedure SetCotMoeOld(const pCotMoe: Double);
    function GetFecMoeOld: string;
    procedure SetFecMoeOld(const pFecMoe: string);
    function GetCodFcrOld: string;
    procedure SetCodFcrOld(const pCodFcr: string);
    function GetDatFcrOld: TDate;
    procedure SetDatFcrOld(const pDatFcr: TDate);
    function GetQtdAbeOld: Double;
    procedure SetQtdAbeOld(const pQtdAbe: Double);
    function GetCodTraOld: Integer;
    procedure SetCodTraOld(const pCodTra: Integer);
    function GetCodRedOld: Integer;
    procedure SetCodRedOld(const pCodRed: Integer);
    function GetVlrFumOld: Double;
    procedure SetVlrFumOld(const pVlrFum: Double);
    function GetQtdFreOld: Double;
    procedure SetQtdFreOld(const pQtdFre: Double);
    function GetForFreOld: Integer;
    procedure SetForFreOld(const pForFre: Integer);
    function GetPerDs1Old: Double;
    procedure SetPerDs1Old(const pPerDs1: Double);
    function GetPerDs2Old: Double;
    procedure SetPerDs2Old(const pPerDs2: Double);
    function GetPerFinOld: Double;
    procedure SetPerFinOld(const pPerFin: Double);
    function GetVlrFreOld: Double;
    procedure SetVlrFreOld(const pVlrFre: Double);
    function GetCifFobOld: string;
    procedure SetCifFobOld(const pCifFob: string);
    function GetVlrSegOld: Double;
    procedure SetVlrSegOld(const pVlrSeg: Double);
    function GetVlrEmbOld: Double;
    procedure SetVlrEmbOld(const pVlrEmb: Double);
    function GetVlrEncOld: Double;
    procedure SetVlrEncOld(const pVlrEnc: Double);
    function GetVlrOutOld: Double;
    procedure SetVlrOutOld(const pVlrOut: Double);
    function GetVlrDarOld: Double;
    procedure SetVlrDarOld(const pVlrDar: Double);
    function GetVlrFrdOld: Double;
    procedure SetVlrFrdOld(const pVlrFrd: Double);
    function GetVlrOudOld: Double;
    procedure SetVlrOudOld(const pVlrOud: Double);
    function GetVlrBprOld: Double;
    procedure SetVlrBprOld(const pVlrBpr: Double);
    function GetVlrDprOld: Double;
    procedure SetVlrDprOld(const pVlrDpr: Double);
    function GetVlrBseOld: Double;
    procedure SetVlrBseOld(const pVlrBse: Double);
    function GetVlrDseOld: Double;
    procedure SetVlrDseOld(const pVlrDse: Double);
    function GetVlrDs1Old: Double;
    procedure SetVlrDs1Old(const pVlrDs1: Double);
    function GetVlrDs2Old: Double;
    procedure SetVlrDs2Old(const pVlrDs2: Double);
    function GetVlrDzfOld: Double;
    procedure SetVlrDzfOld(const pVlrDzf: Double);
    function GetVlrBfuOld: Double;
    procedure SetVlrBfuOld(const pVlrBfu: Double);
    function GetVlrFunOld: Double;
    procedure SetVlrFunOld(const pVlrFun: Double);
    function GetVlrBipOld: Double;
    procedure SetVlrBipOld(const pVlrBip: Double);
    function GetVlrIpiOld: Double;
    procedure SetVlrIpiOld(const pVlrIpi: Double);
    function GetVlrBicOld: Double;
    procedure SetVlrBicOld(const pVlrBic: Double);
    function GetVlrIcmOld: Double;
    procedure SetVlrIcmOld(const pVlrIcm: Double);
    function GetVlrBsiOld: Double;
    procedure SetVlrBsiOld(const pVlrBsi: Double);
    function GetVlrSicOld: Double;
    procedure SetVlrSicOld(const pVlrSic: Double);
    function GetVlrBspOld: Double;
    procedure SetVlrBspOld(const pVlrBsp: Double);
    function GetVlrStpOld: Double;
    procedure SetVlrStpOld(const pVlrStp: Double);
    function GetVlrBscOld: Double;
    procedure SetVlrBscOld(const pVlrBsc: Double);
    function GetVlrStcOld: Double;
    procedure SetVlrStcOld(const pVlrStc: Double);
    function GetVlrBisOld: Double;
    procedure SetVlrBisOld(const pVlrBis: Double);
    function GetVlrIssOld: Double;
    procedure SetVlrIssOld(const pVlrIss: Double);
    function GetVlrBirOld: Double;
    procedure SetVlrBirOld(const pVlrBir: Double);
    function GetVlrIrfOld: Double;
    procedure SetVlrIrfOld(const pVlrIrf: Double);
    function GetVlrBinOld: Double;
    procedure SetVlrBinOld(const pVlrBin: Double);
    function GetVlrInsOld: Double;
    procedure SetVlrInsOld(const pVlrIns: Double);
    function GetVlrLprOld: Double;
    procedure SetVlrLprOld(const pVlrLpr: Double);
    function GetVlrLseOld: Double;
    procedure SetVlrLseOld(const pVlrLse: Double);
    function GetVlrLouOld: Double;
    procedure SetVlrLouOld(const pVlrLou: Double);
    function GetVlrLiqOld: Double;
    procedure SetVlrLiqOld(const pVlrLiq: Double);
    function GetVlrFinOld: Double;
    procedure SetVlrFinOld(const pVlrFin: Double);
    function GetTemParOld: string;
    procedure SetTemParOld(const pTemPar: string);
    function GetCodPorOld: string;
    procedure SetCodPorOld(const pCodPor: string);
    function GetCodCrtOld: string;
    procedure SetCodCrtOld(const pCodCrt: string);
    function GetRotNapOld: Integer;
    procedure SetRotNapOld(const pRotNap: Integer);
    function GetFilAprOld: Integer;
    procedure SetFilAprOld(const pFilApr: Integer);
    function GetNumAprOld: Integer;
    procedure SetNumAprOld(const pNumApr: Integer);
    function GetSitAprOld: string;
    procedure SetSitAprOld(const pSitApr: string);
    function GetSitOcpOld: Integer;
    procedure SetSitOcpOld(const pSitOcp: Integer);
    function GetCodMotOld: Integer;
    procedure SetCodMotOld(const pCodMot: Integer);
    function GetObsMotOld: string;
    procedure SetObsMotOld(const pObsMot: string);
    function GetFilPedOld: Integer;
    procedure SetFilPedOld(const pFilPed: Integer);
    function GetNumPedOld: Integer;
    procedure SetNumPedOld(const pNumPed: Integer);
    function GetVerCalOld: Integer;
    procedure SetVerCalOld(const pVerCal: Integer);
    function GetUsuGerOld: Integer;
    procedure SetUsuGerOld(const pUsuGer: Integer);
    function GetDatGerOld: TDate;
    procedure SetDatGerOld(const pDatGer: TDate);
    function GetHorGerOld: Integer;
    procedure SetHorGerOld(const pHorGer: Integer);
    function GetPrcOcpOld: Integer;
    procedure SetPrcOcpOld(const pPrcOcp: Integer);
    function GetPerPrgOld: Integer;
    procedure SetPerPrgOld(const pPerPrg: Integer);
    function GetPerFreOld: Double;
    procedure SetPerFreOld(const pPerFre: Double);
    function GetPerSegOld: Double;
    procedure SetPerSegOld(const pPerSeg: Double);
    function GetPerEmbOld: Double;
    procedure SetPerEmbOld(const pPerEmb: Double);
    function GetPerEncOld: Double;
    procedure SetPerEncOld(const pPerEnc: Double);
    function GetPerOutOld: Double;
    procedure SetPerOutOld(const pPerOut: Double);
    function GetSeqOrmOld: Integer;
    procedure SetSeqOrmOld(const pSeqOrm: Integer);
    function GetUsuFecOld: Integer;
    procedure SetUsuFecOld(const pUsuFec: Integer);
    function GetDatFecOld: TDate;
    procedure SetDatFecOld(const pDatFec: TDate);
    function GetHorFecOld: Integer;
    procedure SetHorFecOld(const pHorFec: Integer);
    function GetTipIntOld: Integer;
    procedure SetTipIntOld(const pTipInt: Integer);
    function GetVlrBclOld: Double;
    procedure SetVlrBclOld(const pVlrBcl: Double);
    function GetVlrCslOld: Double;
    procedure SetVlrCslOld(const pVlrCsl: Double);
    function GetVlrBptOld: Double;
    procedure SetVlrBptOld(const pVlrBpt: Double);
    function GetVlrPitOld: Double;
    procedure SetVlrPitOld(const pVlrPit: Double);
    function GetVlrBctOld: Double;
    procedure SetVlrBctOld(const pVlrBct: Double);
    function GetVlrCrtOld: Double;
    procedure SetVlrCrtOld(const pVlrCrt: Double);
    function GetVlrBorOld: Double;
    procedure SetVlrBorOld(const pVlrBor: Double);
    function GetVlrOurOld: Double;
    procedure SetVlrOurOld(const pVlrOur: Double);
    function GetCodMfrOld: string;
    procedure SetCodMfrOld(const pCodMfr: string);
    function GetDatMfrOld: TDate;
    procedure SetDatMfrOld(const pDatMfr: TDate);
    function GetCotMfrOld: Double;
    procedure SetCotMfrOld(const pCotMfr: Double);
    function GetVlrBiiOld: Double;
    procedure SetVlrBiiOld(const pVlrBii: Double);
    function GetVlrIimOld: Double;
    procedure SetVlrIimOld(const pVlrIim: Double);
    function GetVlrRisOld: Double;
    procedure SetVlrRisOld(const pVlrRis: Double);
    function GetVlrBpiOld: Double;
    procedure SetVlrBpiOld(const pVlrBpi: Double);
    function GetVlrPisOld: Double;
    procedure SetVlrPisOld(const pVlrPis: Double);
    function GetVlrBcrOld: Double;
    procedure SetVlrBcrOld(const pVlrBcr: Double);
    function GetVlrCorOld: Double;
    procedure SetVlrCorOld(const pVlrCor: Double);
    function GetPerDs3Old: Double;
    procedure SetPerDs3Old(const pPerDs3: Double);
    function GetPerDs4Old: Double;
    procedure SetPerDs4Old(const pPerDs4: Double);
    function GetPerDs5Old: Double;
    procedure SetPerDs5Old(const pPerDs5: Double);
    function GetVlrDs3Old: Double;
    procedure SetVlrDs3Old(const pVlrDs3: Double);
    function GetVlrDs4Old: Double;
    procedure SetVlrDs4Old(const pVlrDs4: Double);
    function GetVlrDs5Old: Double;
    procedure SetVlrDs5Old(const pVlrDs5: Double);
    function GetVlrOriOld: Double;
    procedure SetVlrOriOld(const pVlrOri: Double);
    function GetQtdOriOld: Double;
    procedure SetQtdOriOld(const pQtdOri: Double);
    function GetVlrFeiOld: Double;
    procedure SetVlrFeiOld(const pVlrFei: Double);
    function GetMoeFeiOld: string;
    procedure SetMoeFeiOld(const pMoeFei: string);
    function GetDatFeiOld: TDate;
    procedure SetDatFeiOld(const pDatFei: TDate);
    function GetCotFeiOld: Double;
    procedure SetCotFeiOld(const pCotFei: Double);
    function GetVlrSeiOld: Double;
    procedure SetVlrSeiOld(const pVlrSei: Double);
    function GetMoeSeiOld: string;
    procedure SetMoeSeiOld(const pMoeSei: string);
    function GetDatSeiOld: TDate;
    procedure SetDatSeiOld(const pDatSei: TDate);
    function GetCotSeiOld: Double;
    procedure SetCotSeiOld(const pCotSei: Double);
    function GetVlrOuiOld: Double;
    procedure SetVlrOuiOld(const pVlrOui: Double);
    function GetMoeOuiOld: string;
    procedure SetMoeOuiOld(const pMoeOui: string);
    function GetDatOuiOld: TDate;
    procedure SetDatOuiOld(const pDatOui: TDate);
    function GetCotOuiOld: Double;
    procedure SetCotOuiOld(const pCotOui: Double);
    function GetBcoImpOld: Double;
    procedure SetBcoImpOld(const pBcoImp: Double);
    function GetCofImpOld: Double;
    procedure SetCofImpOld(const pCofImp: Double);
    function GetBpiImpOld: Double;
    procedure SetBpiImpOld(const pBpiImp: Double);
    function GetPisImpOld: Double;
    procedure SetPisImpOld(const pPisImp: Double);
    function GetSomFreOld: string;
    procedure SetSomFreOld(const pSomFre: string);
    function GetCodSafOld: string;
    procedure SetCodSafOld(const pCodSaf: string);
    function GetSalCanOld: string;
    procedure SetSalCanOld(const pSalCan: string);
    function GetObrCtrOld: string;
    procedure SetObrCtrOld(const pObrCtr: string);
    function GetQtdBpiOld: Double;
    procedure SetQtdBpiOld(const pQtdBpi: Double);
    function GetQtdBcoOld: Double;
    procedure SetQtdBcoOld(const pQtdBco: Double);
    function GetQtdBipOld: Double;
    procedure SetQtdBipOld(const pQtdBip: Double);
    function GetUSU_UsuModOld: Integer;
    procedure SetUSU_UsuModOld(const pUSU_UsuMod: Integer);
    function GetUSU_DatModOld: TDate;
    procedure SetUSU_DatModOld(const pUSU_DatMod: TDate);
    function GetUSU_HorModOld: Integer;
    procedure SetUSU_HorModOld(const pUSU_HorMod: Integer);
    function GetUSU_TipTrfOld: string;
    procedure SetUSU_TipTrfOld(const pUSU_TipTrf: string);
    function GetUSU_OCFabOld: string;
    procedure SetUSU_OCFabOld(const pUSU_OCFab: string);
    function GetUSU_PPAPOld: Integer;
    procedure SetUSU_PPAPOld(const pUSU_PPAP: Integer);
    function GetUSU_CrtOcpOld: Integer;
    procedure SetUSU_CrtOcpOld(const pUSU_CrtOcp: Integer);
    function GetUSU_EmaEnvOld: string;
    procedure SetUSU_EmaEnvOld(const pUSU_EmaEnv: string);
    function GetUSU_NumSdgOld: Integer;
    procedure SetUSU_NumSdgOld(const pUSU_NumSdg: Integer);
    function GetUSU_IndBTBOld: string;
    procedure SetUSU_IndBTBOld(const pUSU_IndBTB: string);
    function GetUSU_PrazEntOld: TDate;
    procedure SetUSU_PrazEntOld(const pUSU_PrazEnt: TDate);
    function GetUSU_DatEmbOld: TDate;
    procedure SetUSU_DatEmbOld(const pUSU_DatEmb: TDate);
    function GetUSU_DatEntOld: TDate;
    procedure SetUSU_DatEntOld(const pUSU_DatEnt: TDate);
    function GetUSU_ObsOaOld: string;
    procedure SetUSU_ObsOaOld(const pUSU_ObsOa: string);
    function GetUSU_OrdConOld: string;
    procedure SetUSU_OrdConOld(const pUSU_OrdCon: string);
  protected
    procedure Registros_OLD(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property CodEmp: Integer read GetCodEmp write SetCodEmp;
    property CodFil: Integer read GetCodFil write SetCodFil;
    property NumOcp: Integer read GetNumOcp write SetNumOcp;
    property TnsPro: string read GetTnsPro write SetTnsPro;
    property TnsSer: string read GetTnsSer write SetTnsSer;
    property DatEmi: TDate read GetDatEmi write SetDatEmi;
    property CodUsu: Integer read GetCodUsu write SetCodUsu;
    property CodFor: Integer read GetCodFor write SetCodFor;
    property SeqCto: Integer read GetSeqCto write SetSeqCto;
    property PedFor: string read GetPedFor write SetPedFor;
    property ObsOcp: string read GetObsOcp write SetObsOcp;
    property CodCpg: string read GetCodCpg write SetCodCpg;
    property CodFpg: Integer read GetCodFpg write SetCodFpg;
    property CodMoe: string read GetCodMoe write SetCodMoe;
    property DatMoe: TDate read GetDatMoe write SetDatMoe;
    property CotMoe: Double read GetCotMoe write SetCotMoe;
    property FecMoe: string read GetFecMoe write SetFecMoe;
    property CodFcr: string read GetCodFcr write SetCodFcr;
    property DatFcr: TDate read GetDatFcr write SetDatFcr;
    property QtdAbe: Double read GetQtdAbe write SetQtdAbe;
    property CodTra: Integer read GetCodTra write SetCodTra;
    property CodRed: Integer read GetCodRed write SetCodRed;
    property VlrFum: Double read GetVlrFum write SetVlrFum;
    property QtdFre: Double read GetQtdFre write SetQtdFre;
    property ForFre: Integer read GetForFre write SetForFre;
    property PerDs1: Double read GetPerDs1 write SetPerDs1;
    property PerDs2: Double read GetPerDs2 write SetPerDs2;
    property PerFin: Double read GetPerFin write SetPerFin;
    property VlrFre: Double read GetVlrFre write SetVlrFre;
    property CifFob: string read GetCifFob write SetCifFob;
    property VlrSeg: Double read GetVlrSeg write SetVlrSeg;
    property VlrEmb: Double read GetVlrEmb write SetVlrEmb;
    property VlrEnc: Double read GetVlrEnc write SetVlrEnc;
    property VlrOut: Double read GetVlrOut write SetVlrOut;
    property VlrDar: Double read GetVlrDar write SetVlrDar;
    property VlrFrd: Double read GetVlrFrd write SetVlrFrd;
    property VlrOud: Double read GetVlrOud write SetVlrOud;
    property VlrBpr: Double read GetVlrBpr write SetVlrBpr;
    property VlrDpr: Double read GetVlrDpr write SetVlrDpr;
    property VlrBse: Double read GetVlrBse write SetVlrBse;
    property VlrDse: Double read GetVlrDse write SetVlrDse;
    property VlrDs1: Double read GetVlrDs1 write SetVlrDs1;
    property VlrDs2: Double read GetVlrDs2 write SetVlrDs2;
    property VlrDzf: Double read GetVlrDzf write SetVlrDzf;
    property VlrBfu: Double read GetVlrBfu write SetVlrBfu;
    property VlrFun: Double read GetVlrFun write SetVlrFun;
    property VlrBip: Double read GetVlrBip write SetVlrBip;
    property VlrIpi: Double read GetVlrIpi write SetVlrIpi;
    property VlrBic: Double read GetVlrBic write SetVlrBic;
    property VlrIcm: Double read GetVlrIcm write SetVlrIcm;
    property VlrBsi: Double read GetVlrBsi write SetVlrBsi;
    property VlrSic: Double read GetVlrSic write SetVlrSic;
    property VlrBsp: Double read GetVlrBsp write SetVlrBsp;
    property VlrStp: Double read GetVlrStp write SetVlrStp;
    property VlrBsc: Double read GetVlrBsc write SetVlrBsc;
    property VlrStc: Double read GetVlrStc write SetVlrStc;
    property VlrBis: Double read GetVlrBis write SetVlrBis;
    property VlrIss: Double read GetVlrIss write SetVlrIss;
    property VlrBir: Double read GetVlrBir write SetVlrBir;
    property VlrIrf: Double read GetVlrIrf write SetVlrIrf;
    property VlrBin: Double read GetVlrBin write SetVlrBin;
    property VlrIns: Double read GetVlrIns write SetVlrIns;
    property VlrLpr: Double read GetVlrLpr write SetVlrLpr;
    property VlrLse: Double read GetVlrLse write SetVlrLse;
    property VlrLou: Double read GetVlrLou write SetVlrLou;
    property VlrLiq: Double read GetVlrLiq write SetVlrLiq;
    property VlrFin: Double read GetVlrFin write SetVlrFin;
    property TemPar: string read GetTemPar write SetTemPar;
    property CodPor: string read GetCodPor write SetCodPor;
    property CodCrt: string read GetCodCrt write SetCodCrt;
    property RotNap: Integer read GetRotNap write SetRotNap;
    property FilApr: Integer read GetFilApr write SetFilApr;
    property NumApr: Integer read GetNumApr write SetNumApr;
    property SitApr: string read GetSitApr write SetSitApr;
    property SitOcp: Integer read GetSitOcp write SetSitOcp;
    property CodMot: Integer read GetCodMot write SetCodMot;
    property ObsMot: string read GetObsMot write SetObsMot;
    property FilPed: Integer read GetFilPed write SetFilPed;
    property NumPed: Integer read GetNumPed write SetNumPed;
    property VerCal: Integer read GetVerCal write SetVerCal;
    property UsuGer: Integer read GetUsuGer write SetUsuGer;
    property DatGer: TDate read GetDatGer write SetDatGer;
    property HorGer: Integer read GetHorGer write SetHorGer;
    property PrcOcp: Integer read GetPrcOcp write SetPrcOcp;
    property PerPrg: Integer read GetPerPrg write SetPerPrg;
    property PerFre: Double read GetPerFre write SetPerFre;
    property PerSeg: Double read GetPerSeg write SetPerSeg;
    property PerEmb: Double read GetPerEmb write SetPerEmb;
    property PerEnc: Double read GetPerEnc write SetPerEnc;
    property PerOut: Double read GetPerOut write SetPerOut;
    property SeqOrm: Integer read GetSeqOrm write SetSeqOrm;
    property UsuFec: Integer read GetUsuFec write SetUsuFec;
    property DatFec: TDate read GetDatFec write SetDatFec;
    property HorFec: Integer read GetHorFec write SetHorFec;
    property TipInt: Integer read GetTipInt write SetTipInt;
    property VlrBcl: Double read GetVlrBcl write SetVlrBcl;
    property VlrCsl: Double read GetVlrCsl write SetVlrCsl;
    property VlrBpt: Double read GetVlrBpt write SetVlrBpt;
    property VlrPit: Double read GetVlrPit write SetVlrPit;
    property VlrBct: Double read GetVlrBct write SetVlrBct;
    property VlrCrt: Double read GetVlrCrt write SetVlrCrt;
    property VlrBor: Double read GetVlrBor write SetVlrBor;
    property VlrOur: Double read GetVlrOur write SetVlrOur;
    property CodMfr: string read GetCodMfr write SetCodMfr;
    property DatMfr: TDate read GetDatMfr write SetDatMfr;
    property CotMfr: Double read GetCotMfr write SetCotMfr;
    property VlrBii: Double read GetVlrBii write SetVlrBii;
    property VlrIim: Double read GetVlrIim write SetVlrIim;
    property VlrRis: Double read GetVlrRis write SetVlrRis;
    property VlrBpi: Double read GetVlrBpi write SetVlrBpi;
    property VlrPis: Double read GetVlrPis write SetVlrPis;
    property VlrBcr: Double read GetVlrBcr write SetVlrBcr;
    property VlrCor: Double read GetVlrCor write SetVlrCor;
    property PerDs3: Double read GetPerDs3 write SetPerDs3;
    property PerDs4: Double read GetPerDs4 write SetPerDs4;
    property PerDs5: Double read GetPerDs5 write SetPerDs5;
    property VlrDs3: Double read GetVlrDs3 write SetVlrDs3;
    property VlrDs4: Double read GetVlrDs4 write SetVlrDs4;
    property VlrDs5: Double read GetVlrDs5 write SetVlrDs5;
    property VlrOri: Double read GetVlrOri write SetVlrOri;
    property QtdOri: Double read GetQtdOri write SetQtdOri;
    property VlrFei: Double read GetVlrFei write SetVlrFei;
    property MoeFei: string read GetMoeFei write SetMoeFei;
    property DatFei: TDate read GetDatFei write SetDatFei;
    property CotFei: Double read GetCotFei write SetCotFei;
    property VlrSei: Double read GetVlrSei write SetVlrSei;
    property MoeSei: string read GetMoeSei write SetMoeSei;
    property DatSei: TDate read GetDatSei write SetDatSei;
    property CotSei: Double read GetCotSei write SetCotSei;
    property VlrOui: Double read GetVlrOui write SetVlrOui;
    property MoeOui: string read GetMoeOui write SetMoeOui;
    property DatOui: TDate read GetDatOui write SetDatOui;
    property CotOui: Double read GetCotOui write SetCotOui;
    property BcoImp: Double read GetBcoImp write SetBcoImp;
    property CofImp: Double read GetCofImp write SetCofImp;
    property BpiImp: Double read GetBpiImp write SetBpiImp;
    property PisImp: Double read GetPisImp write SetPisImp;
    property SomFre: string read GetSomFre write SetSomFre;
    property CodSaf: string read GetCodSaf write SetCodSaf;
    property SalCan: string read GetSalCan write SetSalCan;
    property ObrCtr: string read GetObrCtr write SetObrCtr;
    property QtdBpi: Double read GetQtdBpi write SetQtdBpi;
    property QtdBco: Double read GetQtdBco write SetQtdBco;
    property QtdBip: Double read GetQtdBip write SetQtdBip;
    property USU_UsuMod: Integer read GetUSU_UsuMod write SetUSU_UsuMod;
    property USU_DatMod: TDate read GetUSU_DatMod write SetUSU_DatMod;
    property USU_HorMod: Integer read GetUSU_HorMod write SetUSU_HorMod;
    property USU_TipTrf: string read GetUSU_TipTrf write SetUSU_TipTrf;
    property USU_OCFab: string read GetUSU_OCFab write SetUSU_OCFab;
    property USU_PPAP: Integer read GetUSU_PPAP write SetUSU_PPAP;
    property USU_CrtOcp: Integer read GetUSU_CrtOcp write SetUSU_CrtOcp;
    property USU_EmaEnv: string read GetUSU_EmaEnv write SetUSU_EmaEnv;
    property USU_NumSdg: Integer read GetUSU_NumSdg write SetUSU_NumSdg;
    property USU_IndBTB: string read GetUSU_IndBTB write SetUSU_IndBTB;
    property USU_PrazEnt: TDate read GetUSU_PrazEnt write SetUSU_PrazEnt;
    property USU_DatEmb: TDate read GetUSU_DatEmb write SetUSU_DatEmb;
    property USU_DatEnt: TDate read GetUSU_DatEnt write SetUSU_DatEnt;
    property USU_ObsOa: string read GetUSU_ObsOa write SetUSU_ObsOa;
    property USU_OrdCon: string read GetUSU_OrdCon write SetUSU_OrdCon;

    property OLD_CodEmp: Integer read GetCodEmpOLD write SetCodEmpOLD;
    property OLD_CodFil: Integer read GetCodFilOLD write SetCodFilOLD;
    property OLD_NumOcp: Integer read GetNumOcpOLD write SetNumOcpOLD;
    property OLD_TnsPro: string read GetTnsProOLD write SetTnsProOLD;
    property OLD_TnsSer: string read GetTnsSerOLD write SetTnsSerOLD;
    property OLD_DatEmi: TDate read GetDatEmiOLD write SetDatEmiOLD;
    property OLD_CodUsu: Integer read GetCodUsuOLD write SetCodUsuOLD;
    property OLD_CodFor: Integer read GetCodForOLD write SetCodForOLD;
    property OLD_SeqCto: Integer read GetSeqCtoOLD write SetSeqCtoOLD;
    property OLD_PedFor: string read GetPedForOLD write SetPedForOLD;
    property OLD_ObsOcp: string read GetObsOcpOLD write SetObsOcpOLD;
    property OLD_CodCpg: string read GetCodCpgOLD write SetCodCpgOLD;
    property OLD_CodFpg: Integer read GetCodFpgOLD write SetCodFpgOLD;
    property OLD_CodMoe: string read GetCodMoeOLD write SetCodMoeOLD;
    property OLD_DatMoe: TDate read GetDatMoeOLD write SetDatMoeOLD;
    property OLD_CotMoe: Double read GetCotMoeOLD write SetCotMoeOLD;
    property OLD_FecMoe: string read GetFecMoeOLD write SetFecMoeOLD;
    property OLD_CodFcr: string read GetCodFcrOLD write SetCodFcrOLD;
    property OLD_DatFcr: TDate read GetDatFcrOLD write SetDatFcrOLD;
    property OLD_QtdAbe: Double read GetQtdAbeOLD write SetQtdAbeOLD;
    property OLD_CodTra: Integer read GetCodTraOLD write SetCodTraOLD;
    property OLD_CodRed: Integer read GetCodRedOLD write SetCodRedOLD;
    property OLD_VlrFum: Double read GetVlrFumOLD write SetVlrFumOLD;
    property OLD_QtdFre: Double read GetQtdFreOLD write SetQtdFreOLD;
    property OLD_ForFre: Integer read GetForFreOLD write SetForFreOLD;
    property OLD_PerDs1: Double read GetPerDs1OLD write SetPerDs1OLD;
    property OLD_PerDs2: Double read GetPerDs2OLD write SetPerDs2OLD;
    property OLD_PerFin: Double read GetPerFinOLD write SetPerFinOLD;
    property OLD_VlrFre: Double read GetVlrFreOLD write SetVlrFreOLD;
    property OLD_CifFob: string read GetCifFobOLD write SetCifFobOLD;
    property OLD_VlrSeg: Double read GetVlrSegOLD write SetVlrSegOLD;
    property OLD_VlrEmb: Double read GetVlrEmbOLD write SetVlrEmbOLD;
    property OLD_VlrEnc: Double read GetVlrEncOLD write SetVlrEncOLD;
    property OLD_VlrOut: Double read GetVlrOutOLD write SetVlrOutOLD;
    property OLD_VlrDar: Double read GetVlrDarOLD write SetVlrDarOLD;
    property OLD_VlrFrd: Double read GetVlrFrdOLD write SetVlrFrdOLD;
    property OLD_VlrOud: Double read GetVlrOudOLD write SetVlrOudOLD;
    property OLD_VlrBpr: Double read GetVlrBprOLD write SetVlrBprOLD;
    property OLD_VlrDpr: Double read GetVlrDprOLD write SetVlrDprOLD;
    property OLD_VlrBse: Double read GetVlrBseOLD write SetVlrBseOLD;
    property OLD_VlrDse: Double read GetVlrDseOLD write SetVlrDseOLD;
    property OLD_VlrDs1: Double read GetVlrDs1OLD write SetVlrDs1OLD;
    property OLD_VlrDs2: Double read GetVlrDs2OLD write SetVlrDs2OLD;
    property OLD_VlrDzf: Double read GetVlrDzfOLD write SetVlrDzfOLD;
    property OLD_VlrBfu: Double read GetVlrBfuOLD write SetVlrBfuOLD;
    property OLD_VlrFun: Double read GetVlrFunOLD write SetVlrFunOLD;
    property OLD_VlrBip: Double read GetVlrBipOLD write SetVlrBipOLD;
    property OLD_VlrIpi: Double read GetVlrIpiOLD write SetVlrIpiOLD;
    property OLD_VlrBic: Double read GetVlrBicOLD write SetVlrBicOLD;
    property OLD_VlrIcm: Double read GetVlrIcmOLD write SetVlrIcmOLD;
    property OLD_VlrBsi: Double read GetVlrBsiOLD write SetVlrBsiOLD;
    property OLD_VlrSic: Double read GetVlrSicOLD write SetVlrSicOLD;
    property OLD_VlrBsp: Double read GetVlrBspOLD write SetVlrBspOLD;
    property OLD_VlrStp: Double read GetVlrStpOLD write SetVlrStpOLD;
    property OLD_VlrBsc: Double read GetVlrBscOLD write SetVlrBscOLD;
    property OLD_VlrStc: Double read GetVlrStcOLD write SetVlrStcOLD;
    property OLD_VlrBis: Double read GetVlrBisOLD write SetVlrBisOLD;
    property OLD_VlrIss: Double read GetVlrIssOLD write SetVlrIssOLD;
    property OLD_VlrBir: Double read GetVlrBirOLD write SetVlrBirOLD;
    property OLD_VlrIrf: Double read GetVlrIrfOLD write SetVlrIrfOLD;
    property OLD_VlrBin: Double read GetVlrBinOLD write SetVlrBinOLD;
    property OLD_VlrIns: Double read GetVlrInsOLD write SetVlrInsOLD;
    property OLD_VlrLpr: Double read GetVlrLprOLD write SetVlrLprOLD;
    property OLD_VlrLse: Double read GetVlrLseOLD write SetVlrLseOLD;
    property OLD_VlrLou: Double read GetVlrLouOLD write SetVlrLouOLD;
    property OLD_VlrLiq: Double read GetVlrLiqOLD write SetVlrLiqOLD;
    property OLD_VlrFin: Double read GetVlrFinOLD write SetVlrFinOLD;
    property OLD_TemPar: string read GetTemParOLD write SetTemParOLD;
    property OLD_CodPor: string read GetCodPorOLD write SetCodPorOLD;
    property OLD_CodCrt: string read GetCodCrtOLD write SetCodCrtOLD;
    property OLD_RotNap: Integer read GetRotNapOLD write SetRotNapOLD;
    property OLD_FilApr: Integer read GetFilAprOLD write SetFilAprOLD;
    property OLD_NumApr: Integer read GetNumAprOLD write SetNumAprOLD;
    property OLD_SitApr: string read GetSitAprOLD write SetSitAprOLD;
    property OLD_SitOcp: Integer read GetSitOcpOLD write SetSitOcpOLD;
    property OLD_CodMot: Integer read GetCodMotOLD write SetCodMotOLD;
    property OLD_ObsMot: string read GetObsMotOLD write SetObsMotOLD;
    property OLD_FilPed: Integer read GetFilPedOLD write SetFilPedOLD;
    property OLD_NumPed: Integer read GetNumPedOLD write SetNumPedOLD;
    property OLD_VerCal: Integer read GetVerCalOLD write SetVerCalOLD;
    property OLD_UsuGer: Integer read GetUsuGerOLD write SetUsuGerOLD;
    property OLD_DatGer: TDate read GetDatGerOLD write SetDatGerOLD;
    property OLD_HorGer: Integer read GetHorGerOLD write SetHorGerOLD;
    property OLD_PrcOcp: Integer read GetPrcOcpOLD write SetPrcOcpOLD;
    property OLD_PerPrg: Integer read GetPerPrgOLD write SetPerPrgOLD;
    property OLD_PerFre: Double read GetPerFreOLD write SetPerFreOLD;
    property OLD_PerSeg: Double read GetPerSegOLD write SetPerSegOLD;
    property OLD_PerEmb: Double read GetPerEmbOLD write SetPerEmbOLD;
    property OLD_PerEnc: Double read GetPerEncOLD write SetPerEncOLD;
    property OLD_PerOut: Double read GetPerOutOLD write SetPerOutOLD;
    property OLD_SeqOrm: Integer read GetSeqOrmOLD write SetSeqOrmOLD;
    property OLD_UsuFec: Integer read GetUsuFecOLD write SetUsuFecOLD;
    property OLD_DatFec: TDate read GetDatFecOLD write SetDatFecOLD;
    property OLD_HorFec: Integer read GetHorFecOLD write SetHorFecOLD;
    property OLD_TipInt: Integer read GetTipIntOLD write SetTipIntOLD;
    property OLD_VlrBcl: Double read GetVlrBclOLD write SetVlrBclOLD;
    property OLD_VlrCsl: Double read GetVlrCslOLD write SetVlrCslOLD;
    property OLD_VlrBpt: Double read GetVlrBptOLD write SetVlrBptOLD;
    property OLD_VlrPit: Double read GetVlrPitOLD write SetVlrPitOLD;
    property OLD_VlrBct: Double read GetVlrBctOLD write SetVlrBctOLD;
    property OLD_VlrCrt: Double read GetVlrCrtOLD write SetVlrCrtOLD;
    property OLD_VlrBor: Double read GetVlrBorOLD write SetVlrBorOLD;
    property OLD_VlrOur: Double read GetVlrOurOLD write SetVlrOurOLD;
    property OLD_CodMfr: string read GetCodMfrOLD write SetCodMfrOLD;
    property OLD_DatMfr: TDate read GetDatMfrOLD write SetDatMfrOLD;
    property OLD_CotMfr: Double read GetCotMfrOLD write SetCotMfrOLD;
    property OLD_VlrBii: Double read GetVlrBiiOLD write SetVlrBiiOLD;
    property OLD_VlrIim: Double read GetVlrIimOLD write SetVlrIimOLD;
    property OLD_VlrRis: Double read GetVlrRisOLD write SetVlrRisOLD;
    property OLD_VlrBpi: Double read GetVlrBpiOLD write SetVlrBpiOLD;
    property OLD_VlrPis: Double read GetVlrPisOLD write SetVlrPisOLD;
    property OLD_VlrBcr: Double read GetVlrBcrOLD write SetVlrBcrOLD;
    property OLD_VlrCor: Double read GetVlrCorOLD write SetVlrCorOLD;
    property OLD_PerDs3: Double read GetPerDs3OLD write SetPerDs3OLD;
    property OLD_PerDs4: Double read GetPerDs4OLD write SetPerDs4OLD;
    property OLD_PerDs5: Double read GetPerDs5OLD write SetPerDs5OLD;
    property OLD_VlrDs3: Double read GetVlrDs3OLD write SetVlrDs3OLD;
    property OLD_VlrDs4: Double read GetVlrDs4OLD write SetVlrDs4OLD;
    property OLD_VlrDs5: Double read GetVlrDs5OLD write SetVlrDs5OLD;
    property OLD_VlrOri: Double read GetVlrOriOLD write SetVlrOriOLD;
    property OLD_QtdOri: Double read GetQtdOriOLD write SetQtdOriOLD;
    property OLD_VlrFei: Double read GetVlrFeiOLD write SetVlrFeiOLD;
    property OLD_MoeFei: string read GetMoeFeiOLD write SetMoeFeiOLD;
    property OLD_DatFei: TDate read GetDatFeiOLD write SetDatFeiOLD;
    property OLD_CotFei: Double read GetCotFeiOLD write SetCotFeiOLD;
    property OLD_VlrSei: Double read GetVlrSeiOLD write SetVlrSeiOLD;
    property OLD_MoeSei: string read GetMoeSeiOLD write SetMoeSeiOLD;
    property OLD_DatSei: TDate read GetDatSeiOLD write SetDatSeiOLD;
    property OLD_CotSei: Double read GetCotSeiOLD write SetCotSeiOLD;
    property OLD_VlrOui: Double read GetVlrOuiOLD write SetVlrOuiOLD;
    property OLD_MoeOui: string read GetMoeOuiOLD write SetMoeOuiOLD;
    property OLD_DatOui: TDate read GetDatOuiOLD write SetDatOuiOLD;
    property OLD_CotOui: Double read GetCotOuiOLD write SetCotOuiOLD;
    property OLD_BcoImp: Double read GetBcoImpOLD write SetBcoImpOLD;
    property OLD_CofImp: Double read GetCofImpOLD write SetCofImpOLD;
    property OLD_BpiImp: Double read GetBpiImpOLD write SetBpiImpOLD;
    property OLD_PisImp: Double read GetPisImpOLD write SetPisImpOLD;
    property OLD_SomFre: string read GetSomFreOLD write SetSomFreOLD;
    property OLD_CodSaf: string read GetCodSafOLD write SetCodSafOLD;
    property OLD_SalCan: string read GetSalCanOLD write SetSalCanOLD;
    property OLD_ObrCtr: string read GetObrCtrOLD write SetObrCtrOLD;
    property OLD_QtdBpi: Double read GetQtdBpiOLD write SetQtdBpiOLD;
    property OLD_QtdBco: Double read GetQtdBcoOLD write SetQtdBcoOLD;
    property OLD_QtdBip: Double read GetQtdBipOLD write SetQtdBipOLD;
    property OLD_USU_UsuMod: Integer read GetUSU_UsuModOLD write SetUSU_UsuModOLD;
    property OLD_USU_DatMod: TDate read GetUSU_DatModOLD write SetUSU_DatModOLD;
    property OLD_USU_HorMod: Integer read GetUSU_HorModOLD write SetUSU_HorModOLD;
    property OLD_USU_TipTrf: string read GetUSU_TipTrfOLD write SetUSU_TipTrfOLD;
    property OLD_USU_OCFab: string read GetUSU_OCFabOLD write SetUSU_OCFabOLD;
    property OLD_USU_PPAP: Integer read GetUSU_PPAPOLD write SetUSU_PPAPOLD;
    property OLD_USU_CrtOcp: Integer read GetUSU_CrtOcpOLD write SetUSU_CrtOcpOLD;
    property OLD_USU_EmaEnv: string read GetUSU_EmaEnvOLD write SetUSU_EmaEnvOLD;
    property OLD_USU_NumSdg: Integer read GetUSU_NumSdgOLD write SetUSU_NumSdgOLD;
    property OLD_USU_IndBTB: string read GetUSU_IndBTBOLD write SetUSU_IndBTBOLD;
    property OLD_USU_PrazEnt: TDate read GetUSU_PrazEntOLD write SetUSU_PrazEntOLD;
    property OLD_USU_DatEmb: TDate read GetUSU_DatEmbOLD write SetUSU_DatEmbOLD;
    property OLD_USU_DatEnt: TDate read GetUSU_DatEntOLD write SetUSU_DatEntOLD;
    property OLD_USU_ObsOa: string read GetUSU_ObsOaOLD write SetUSU_ObsOaOLD;
    property OLD_USU_OrdCon: string read GetUSU_OrdConOLD write SetUSU_OrdConOLD;
  end;

implementation

{ T420OCP }

constructor T420OCP.Create();
begin
  inherited Create('E420OCP');
end;

destructor T420OCP.Destroy();
begin
  inherited;
end;
function T420OCP.GetCodEmp: Integer;
begin
  Result := FCodEmp;
end;

procedure T420OCP.SetCodEmp(const pCodEmp: Integer);
begin
  FCodEmp := pCodEmp;
end;

function T420OCP.GetCodFil: Integer;
begin
  Result := FCodFil;
end;

procedure T420OCP.SetCodFil(const pCodFil: Integer);
begin
  FCodFil := pCodFil;
end;

function T420OCP.GetNumOcp: Integer;
begin
  Result := FNumOcp;
end;

procedure T420OCP.SetNumOcp(const pNumOcp: Integer);
begin
  FNumOcp := pNumOcp;
end;

function T420OCP.GetTnsPro: string;
begin
  Result := FTnsPro;
end;

procedure T420OCP.SetTnsPro(const pTnsPro: string);
begin
  FTnsPro := pTnsPro;
end;

function T420OCP.GetTnsSer: string;
begin
  Result := FTnsSer;
end;

procedure T420OCP.SetTnsSer(const pTnsSer: string);
begin
  FTnsSer := pTnsSer;
end;

function T420OCP.GetDatEmi: TDate;
begin
  Result := FDatEmi;
end;

procedure T420OCP.SetDatEmi(const pDatEmi: TDate);
begin
  FDatEmi := pDatEmi;
end;

function T420OCP.GetCodUsu: Integer;
begin
  Result := FCodUsu;
end;

procedure T420OCP.SetCodUsu(const pCodUsu: Integer);
begin
  FCodUsu := pCodUsu;
end;

function T420OCP.GetCodFor: Integer;
begin
  Result := FCodFor;
end;

procedure T420OCP.SetCodFor(const pCodFor: Integer);
begin
  FCodFor := pCodFor;
end;

function T420OCP.GetSeqCto: Integer;
begin
  Result := FSeqCto;
end;

procedure T420OCP.SetSeqCto(const pSeqCto: Integer);
begin
  FSeqCto := pSeqCto;
end;

function T420OCP.GetPedFor: string;
begin
  Result := FPedFor;
end;

procedure T420OCP.SetPedFor(const pPedFor: string);
begin
  FPedFor := pPedFor;
end;

function T420OCP.GetObsOcp: string;
begin
  Result := FObsOcp;
end;

procedure T420OCP.SetObsOcp(const pObsOcp: string);
begin
  FObsOcp := pObsOcp;
end;

function T420OCP.GetCodCpg: string;
begin
  Result := FCodCpg;
end;

procedure T420OCP.SetCodCpg(const pCodCpg: string);
begin
  FCodCpg := pCodCpg;
end;

function T420OCP.GetCodFpg: Integer;
begin
  Result := FCodFpg;
end;

procedure T420OCP.SetCodFpg(const pCodFpg: Integer);
begin
  FCodFpg := pCodFpg;
end;

function T420OCP.GetCodMoe: string;
begin
  Result := FCodMoe;
end;

procedure T420OCP.SetCodMoe(const pCodMoe: string);
begin
  FCodMoe := pCodMoe;
end;

function T420OCP.GetDatMoe: TDate;
begin
  Result := FDatMoe;
end;

procedure T420OCP.SetDatMoe(const pDatMoe: TDate);
begin
  FDatMoe := pDatMoe;
end;

function T420OCP.GetCotMoe: Double;
begin
  Result := FCotMoe;
end;

procedure T420OCP.SetCotMoe(const pCotMoe: Double);
begin
  FCotMoe := pCotMoe;
end;

function T420OCP.GetFecMoe: string;
begin
  Result := FFecMoe;
end;

procedure T420OCP.SetFecMoe(const pFecMoe: string);
begin
  FFecMoe := pFecMoe;
end;

function T420OCP.GetCodFcr: string;
begin
  Result := FCodFcr;
end;

procedure T420OCP.SetCodFcr(const pCodFcr: string);
begin
  FCodFcr := pCodFcr;
end;

function T420OCP.GetDatFcr: TDate;
begin
  Result := FDatFcr;
end;

procedure T420OCP.SetDatFcr(const pDatFcr: TDate);
begin
  FDatFcr := pDatFcr;
end;

function T420OCP.GetQtdAbe: Double;
begin
  Result := FQtdAbe;
end;

procedure T420OCP.SetQtdAbe(const pQtdAbe: Double);
begin
  FQtdAbe := pQtdAbe;
end;

function T420OCP.GetCodTra: Integer;
begin
  Result := FCodTra;
end;

procedure T420OCP.SetCodTra(const pCodTra: Integer);
begin
  FCodTra := pCodTra;
end;

function T420OCP.GetCodRed: Integer;
begin
  Result := FCodRed;
end;

procedure T420OCP.SetCodRed(const pCodRed: Integer);
begin
  FCodRed := pCodRed;
end;

function T420OCP.GetVlrFum: Double;
begin
  Result := FVlrFum;
end;

procedure T420OCP.SetVlrFum(const pVlrFum: Double);
begin
  FVlrFum := pVlrFum;
end;

function T420OCP.GetQtdFre: Double;
begin
  Result := FQtdFre;
end;

procedure T420OCP.SetQtdFre(const pQtdFre: Double);
begin
  FQtdFre := pQtdFre;
end;

function T420OCP.GetForFre: Integer;
begin
  Result := FForFre;
end;

procedure T420OCP.SetForFre(const pForFre: Integer);
begin
  FForFre := pForFre;
end;

function T420OCP.GetPerDs1: Double;
begin
  Result := FPerDs1;
end;

procedure T420OCP.SetPerDs1(const pPerDs1: Double);
begin
  FPerDs1 := pPerDs1;
end;

function T420OCP.GetPerDs2: Double;
begin
  Result := FPerDs2;
end;

procedure T420OCP.SetPerDs2(const pPerDs2: Double);
begin
  FPerDs2 := pPerDs2;
end;

function T420OCP.GetPerFin: Double;
begin
  Result := FPerFin;
end;

procedure T420OCP.SetPerFin(const pPerFin: Double);
begin
  FPerFin := pPerFin;
end;

function T420OCP.GetVlrFre: Double;
begin
  Result := FVlrFre;
end;

procedure T420OCP.SetVlrFre(const pVlrFre: Double);
begin
  FVlrFre := pVlrFre;
end;

function T420OCP.GetCifFob: string;
begin
  Result := FCifFob;
end;

procedure T420OCP.SetCifFob(const pCifFob: string);
begin
  FCifFob := pCifFob;
end;

function T420OCP.GetVlrSeg: Double;
begin
  Result := FVlrSeg;
end;

procedure T420OCP.SetVlrSeg(const pVlrSeg: Double);
begin
  FVlrSeg := pVlrSeg;
end;

function T420OCP.GetVlrEmb: Double;
begin
  Result := FVlrEmb;
end;

procedure T420OCP.SetVlrEmb(const pVlrEmb: Double);
begin
  FVlrEmb := pVlrEmb;
end;

function T420OCP.GetVlrEnc: Double;
begin
  Result := FVlrEnc;
end;

procedure T420OCP.SetVlrEnc(const pVlrEnc: Double);
begin
  FVlrEnc := pVlrEnc;
end;

function T420OCP.GetVlrOut: Double;
begin
  Result := FVlrOut;
end;

procedure T420OCP.SetVlrOut(const pVlrOut: Double);
begin
  FVlrOut := pVlrOut;
end;

function T420OCP.GetVlrDar: Double;
begin
  Result := FVlrDar;
end;

procedure T420OCP.SetVlrDar(const pVlrDar: Double);
begin
  FVlrDar := pVlrDar;
end;

function T420OCP.GetVlrFrd: Double;
begin
  Result := FVlrFrd;
end;

procedure T420OCP.SetVlrFrd(const pVlrFrd: Double);
begin
  FVlrFrd := pVlrFrd;
end;

function T420OCP.GetVlrOud: Double;
begin
  Result := FVlrOud;
end;

procedure T420OCP.SetVlrOud(const pVlrOud: Double);
begin
  FVlrOud := pVlrOud;
end;

function T420OCP.GetVlrBpr: Double;
begin
  Result := FVlrBpr;
end;

procedure T420OCP.SetVlrBpr(const pVlrBpr: Double);
begin
  FVlrBpr := pVlrBpr;
end;

function T420OCP.GetVlrDpr: Double;
begin
  Result := FVlrDpr;
end;

procedure T420OCP.SetVlrDpr(const pVlrDpr: Double);
begin
  FVlrDpr := pVlrDpr;
end;

function T420OCP.GetVlrBse: Double;
begin
  Result := FVlrBse;
end;

procedure T420OCP.SetVlrBse(const pVlrBse: Double);
begin
  FVlrBse := pVlrBse;
end;

function T420OCP.GetVlrDse: Double;
begin
  Result := FVlrDse;
end;

procedure T420OCP.SetVlrDse(const pVlrDse: Double);
begin
  FVlrDse := pVlrDse;
end;

function T420OCP.GetVlrDs1: Double;
begin
  Result := FVlrDs1;
end;

procedure T420OCP.SetVlrDs1(const pVlrDs1: Double);
begin
  FVlrDs1 := pVlrDs1;
end;

function T420OCP.GetVlrDs2: Double;
begin
  Result := FVlrDs2;
end;

procedure T420OCP.SetVlrDs2(const pVlrDs2: Double);
begin
  FVlrDs2 := pVlrDs2;
end;

function T420OCP.GetVlrDzf: Double;
begin
  Result := FVlrDzf;
end;

procedure T420OCP.SetVlrDzf(const pVlrDzf: Double);
begin
  FVlrDzf := pVlrDzf;
end;

function T420OCP.GetVlrBfu: Double;
begin
  Result := FVlrBfu;
end;

procedure T420OCP.SetVlrBfu(const pVlrBfu: Double);
begin
  FVlrBfu := pVlrBfu;
end;

function T420OCP.GetVlrFun: Double;
begin
  Result := FVlrFun;
end;

procedure T420OCP.SetVlrFun(const pVlrFun: Double);
begin
  FVlrFun := pVlrFun;
end;

function T420OCP.GetVlrBip: Double;
begin
  Result := FVlrBip;
end;

procedure T420OCP.SetVlrBip(const pVlrBip: Double);
begin
  FVlrBip := pVlrBip;
end;

function T420OCP.GetVlrIpi: Double;
begin
  Result := FVlrIpi;
end;

procedure T420OCP.SetVlrIpi(const pVlrIpi: Double);
begin
  FVlrIpi := pVlrIpi;
end;

function T420OCP.GetVlrBic: Double;
begin
  Result := FVlrBic;
end;

procedure T420OCP.SetVlrBic(const pVlrBic: Double);
begin
  FVlrBic := pVlrBic;
end;

function T420OCP.GetVlrIcm: Double;
begin
  Result := FVlrIcm;
end;

procedure T420OCP.SetVlrIcm(const pVlrIcm: Double);
begin
  FVlrIcm := pVlrIcm;
end;

function T420OCP.GetVlrBsi: Double;
begin
  Result := FVlrBsi;
end;

procedure T420OCP.SetVlrBsi(const pVlrBsi: Double);
begin
  FVlrBsi := pVlrBsi;
end;

function T420OCP.GetVlrSic: Double;
begin
  Result := FVlrSic;
end;

procedure T420OCP.SetVlrSic(const pVlrSic: Double);
begin
  FVlrSic := pVlrSic;
end;

function T420OCP.GetVlrBsp: Double;
begin
  Result := FVlrBsp;
end;

procedure T420OCP.SetVlrBsp(const pVlrBsp: Double);
begin
  FVlrBsp := pVlrBsp;
end;

function T420OCP.GetVlrStp: Double;
begin
  Result := FVlrStp;
end;

procedure T420OCP.SetVlrStp(const pVlrStp: Double);
begin
  FVlrStp := pVlrStp;
end;

function T420OCP.GetVlrBsc: Double;
begin
  Result := FVlrBsc;
end;

procedure T420OCP.SetVlrBsc(const pVlrBsc: Double);
begin
  FVlrBsc := pVlrBsc;
end;

function T420OCP.GetVlrStc: Double;
begin
  Result := FVlrStc;
end;

procedure T420OCP.SetVlrStc(const pVlrStc: Double);
begin
  FVlrStc := pVlrStc;
end;

function T420OCP.GetVlrBis: Double;
begin
  Result := FVlrBis;
end;

procedure T420OCP.SetVlrBis(const pVlrBis: Double);
begin
  FVlrBis := pVlrBis;
end;

function T420OCP.GetVlrIss: Double;
begin
  Result := FVlrIss;
end;

procedure T420OCP.SetVlrIss(const pVlrIss: Double);
begin
  FVlrIss := pVlrIss;
end;

function T420OCP.GetVlrBir: Double;
begin
  Result := FVlrBir;
end;

procedure T420OCP.SetVlrBir(const pVlrBir: Double);
begin
  FVlrBir := pVlrBir;
end;

function T420OCP.GetVlrIrf: Double;
begin
  Result := FVlrIrf;
end;

procedure T420OCP.SetVlrIrf(const pVlrIrf: Double);
begin
  FVlrIrf := pVlrIrf;
end;

function T420OCP.GetVlrBin: Double;
begin
  Result := FVlrBin;
end;

procedure T420OCP.SetVlrBin(const pVlrBin: Double);
begin
  FVlrBin := pVlrBin;
end;

function T420OCP.GetVlrIns: Double;
begin
  Result := FVlrIns;
end;

procedure T420OCP.SetVlrIns(const pVlrIns: Double);
begin
  FVlrIns := pVlrIns;
end;

function T420OCP.GetVlrLpr: Double;
begin
  Result := FVlrLpr;
end;

procedure T420OCP.SetVlrLpr(const pVlrLpr: Double);
begin
  FVlrLpr := pVlrLpr;
end;

function T420OCP.GetVlrLse: Double;
begin
  Result := FVlrLse;
end;

procedure T420OCP.SetVlrLse(const pVlrLse: Double);
begin
  FVlrLse := pVlrLse;
end;

function T420OCP.GetVlrLou: Double;
begin
  Result := FVlrLou;
end;

procedure T420OCP.SetVlrLou(const pVlrLou: Double);
begin
  FVlrLou := pVlrLou;
end;

function T420OCP.GetVlrLiq: Double;
begin
  Result := FVlrLiq;
end;

procedure T420OCP.SetVlrLiq(const pVlrLiq: Double);
begin
  FVlrLiq := pVlrLiq;
end;

function T420OCP.GetVlrFin: Double;
begin
  Result := FVlrFin;
end;

procedure T420OCP.SetVlrFin(const pVlrFin: Double);
begin
  FVlrFin := pVlrFin;
end;

function T420OCP.GetTemPar: string;
begin
  Result := FTemPar;
end;

procedure T420OCP.SetTemPar(const pTemPar: string);
begin
  FTemPar := pTemPar;
end;

function T420OCP.GetCodPor: string;
begin
  Result := FCodPor;
end;

procedure T420OCP.SetCodPor(const pCodPor: string);
begin
  FCodPor := pCodPor;
end;

function T420OCP.GetCodCrt: string;
begin
  Result := FCodCrt;
end;

procedure T420OCP.SetCodCrt(const pCodCrt: string);
begin
  FCodCrt := pCodCrt;
end;

function T420OCP.GetRotNap: Integer;
begin
  Result := FRotNap;
end;

procedure T420OCP.SetRotNap(const pRotNap: Integer);
begin
  FRotNap := pRotNap;
end;

function T420OCP.GetFilApr: Integer;
begin
  Result := FFilApr;
end;

procedure T420OCP.SetFilApr(const pFilApr: Integer);
begin
  FFilApr := pFilApr;
end;

function T420OCP.GetNumApr: Integer;
begin
  Result := FNumApr;
end;

procedure T420OCP.SetNumApr(const pNumApr: Integer);
begin
  FNumApr := pNumApr;
end;

function T420OCP.GetSitApr: string;
begin
  Result := FSitApr;
end;

procedure T420OCP.SetSitApr(const pSitApr: string);
begin
  FSitApr := pSitApr;
end;

function T420OCP.GetSitOcp: Integer;
begin
  Result := FSitOcp;
end;

procedure T420OCP.SetSitOcp(const pSitOcp: Integer);
begin
  FSitOcp := pSitOcp;
end;

function T420OCP.GetCodMot: Integer;
begin
  Result := FCodMot;
end;

procedure T420OCP.SetCodMot(const pCodMot: Integer);
begin
  FCodMot := pCodMot;
end;

function T420OCP.GetObsMot: string;
begin
  Result := FObsMot;
end;

procedure T420OCP.SetObsMot(const pObsMot: string);
begin
  FObsMot := pObsMot;
end;

function T420OCP.GetFilPed: Integer;
begin
  Result := FFilPed;
end;

procedure T420OCP.SetFilPed(const pFilPed: Integer);
begin
  FFilPed := pFilPed;
end;

function T420OCP.GetNumPed: Integer;
begin
  Result := FNumPed;
end;

procedure T420OCP.SetNumPed(const pNumPed: Integer);
begin
  FNumPed := pNumPed;
end;

function T420OCP.GetVerCal: Integer;
begin
  Result := FVerCal;
end;

procedure T420OCP.SetVerCal(const pVerCal: Integer);
begin
  FVerCal := pVerCal;
end;

function T420OCP.GetUsuGer: Integer;
begin
  Result := FUsuGer;
end;

procedure T420OCP.SetUsuGer(const pUsuGer: Integer);
begin
  FUsuGer := pUsuGer;
end;

function T420OCP.GetDatGer: TDate;
begin
  Result := FDatGer;
end;

procedure T420OCP.SetDatGer(const pDatGer: TDate);
begin
  FDatGer := pDatGer;
end;

function T420OCP.GetHorGer: Integer;
begin
  Result := FHorGer;
end;

procedure T420OCP.SetHorGer(const pHorGer: Integer);
begin
  FHorGer := pHorGer;
end;

function T420OCP.GetPrcOcp: Integer;
begin
  Result := FPrcOcp;
end;

procedure T420OCP.SetPrcOcp(const pPrcOcp: Integer);
begin
  FPrcOcp := pPrcOcp;
end;

function T420OCP.GetPerPrg: Integer;
begin
  Result := FPerPrg;
end;

procedure T420OCP.SetPerPrg(const pPerPrg: Integer);
begin
  FPerPrg := pPerPrg;
end;

function T420OCP.GetPerFre: Double;
begin
  Result := FPerFre;
end;

procedure T420OCP.SetPerFre(const pPerFre: Double);
begin
  FPerFre := pPerFre;
end;

function T420OCP.GetPerSeg: Double;
begin
  Result := FPerSeg;
end;

procedure T420OCP.SetPerSeg(const pPerSeg: Double);
begin
  FPerSeg := pPerSeg;
end;

function T420OCP.GetPerEmb: Double;
begin
  Result := FPerEmb;
end;

procedure T420OCP.SetPerEmb(const pPerEmb: Double);
begin
  FPerEmb := pPerEmb;
end;

function T420OCP.GetPerEnc: Double;
begin
  Result := FPerEnc;
end;

procedure T420OCP.SetPerEnc(const pPerEnc: Double);
begin
  FPerEnc := pPerEnc;
end;

function T420OCP.GetPerOut: Double;
begin
  Result := FPerOut;
end;

procedure T420OCP.SetPerOut(const pPerOut: Double);
begin
  FPerOut := pPerOut;
end;

function T420OCP.GetSeqOrm: Integer;
begin
  Result := FSeqOrm;
end;

procedure T420OCP.SetSeqOrm(const pSeqOrm: Integer);
begin
  FSeqOrm := pSeqOrm;
end;

function T420OCP.GetUsuFec: Integer;
begin
  Result := FUsuFec;
end;

procedure T420OCP.SetUsuFec(const pUsuFec: Integer);
begin
  FUsuFec := pUsuFec;
end;

function T420OCP.GetDatFec: TDate;
begin
  Result := FDatFec;
end;

procedure T420OCP.SetDatFec(const pDatFec: TDate);
begin
  FDatFec := pDatFec;
end;

function T420OCP.GetHorFec: Integer;
begin
  Result := FHorFec;
end;

procedure T420OCP.SetHorFec(const pHorFec: Integer);
begin
  FHorFec := pHorFec;
end;

function T420OCP.GetTipInt: Integer;
begin
  Result := FTipInt;
end;

procedure T420OCP.SetTipInt(const pTipInt: Integer);
begin
  FTipInt := pTipInt;
end;

function T420OCP.GetVlrBcl: Double;
begin
  Result := FVlrBcl;
end;

procedure T420OCP.SetVlrBcl(const pVlrBcl: Double);
begin
  FVlrBcl := pVlrBcl;
end;

function T420OCP.GetVlrCsl: Double;
begin
  Result := FVlrCsl;
end;

procedure T420OCP.SetVlrCsl(const pVlrCsl: Double);
begin
  FVlrCsl := pVlrCsl;
end;

function T420OCP.GetVlrBpt: Double;
begin
  Result := FVlrBpt;
end;

procedure T420OCP.SetVlrBpt(const pVlrBpt: Double);
begin
  FVlrBpt := pVlrBpt;
end;

function T420OCP.GetVlrPit: Double;
begin
  Result := FVlrPit;
end;

procedure T420OCP.SetVlrPit(const pVlrPit: Double);
begin
  FVlrPit := pVlrPit;
end;

function T420OCP.GetVlrBct: Double;
begin
  Result := FVlrBct;
end;

procedure T420OCP.SetVlrBct(const pVlrBct: Double);
begin
  FVlrBct := pVlrBct;
end;

function T420OCP.GetVlrCrt: Double;
begin
  Result := FVlrCrt;
end;

procedure T420OCP.SetVlrCrt(const pVlrCrt: Double);
begin
  FVlrCrt := pVlrCrt;
end;

function T420OCP.GetVlrBor: Double;
begin
  Result := FVlrBor;
end;

procedure T420OCP.SetVlrBor(const pVlrBor: Double);
begin
  FVlrBor := pVlrBor;
end;

function T420OCP.GetVlrOur: Double;
begin
  Result := FVlrOur;
end;

procedure T420OCP.SetVlrOur(const pVlrOur: Double);
begin
  FVlrOur := pVlrOur;
end;

function T420OCP.GetCodMfr: string;
begin
  Result := FCodMfr;
end;

procedure T420OCP.SetCodMfr(const pCodMfr: string);
begin
  FCodMfr := pCodMfr;
end;

function T420OCP.GetDatMfr: TDate;
begin
  Result := FDatMfr;
end;

procedure T420OCP.SetDatMfr(const pDatMfr: TDate);
begin
  FDatMfr := pDatMfr;
end;

function T420OCP.GetCotMfr: Double;
begin
  Result := FCotMfr;
end;

procedure T420OCP.SetCotMfr(const pCotMfr: Double);
begin
  FCotMfr := pCotMfr;
end;

function T420OCP.GetVlrBii: Double;
begin
  Result := FVlrBii;
end;

procedure T420OCP.SetVlrBii(const pVlrBii: Double);
begin
  FVlrBii := pVlrBii;
end;

function T420OCP.GetVlrIim: Double;
begin
  Result := FVlrIim;
end;

procedure T420OCP.SetVlrIim(const pVlrIim: Double);
begin
  FVlrIim := pVlrIim;
end;

function T420OCP.GetVlrRis: Double;
begin
  Result := FVlrRis;
end;

procedure T420OCP.SetVlrRis(const pVlrRis: Double);
begin
  FVlrRis := pVlrRis;
end;

function T420OCP.GetVlrBpi: Double;
begin
  Result := FVlrBpi;
end;

procedure T420OCP.SetVlrBpi(const pVlrBpi: Double);
begin
  FVlrBpi := pVlrBpi;
end;

function T420OCP.GetVlrPis: Double;
begin
  Result := FVlrPis;
end;

procedure T420OCP.SetVlrPis(const pVlrPis: Double);
begin
  FVlrPis := pVlrPis;
end;

function T420OCP.GetVlrBcr: Double;
begin
  Result := FVlrBcr;
end;

procedure T420OCP.SetVlrBcr(const pVlrBcr: Double);
begin
  FVlrBcr := pVlrBcr;
end;

function T420OCP.GetVlrCor: Double;
begin
  Result := FVlrCor;
end;

procedure T420OCP.SetVlrCor(const pVlrCor: Double);
begin
  FVlrCor := pVlrCor;
end;

function T420OCP.GetPerDs3: Double;
begin
  Result := FPerDs3;
end;

procedure T420OCP.SetPerDs3(const pPerDs3: Double);
begin
  FPerDs3 := pPerDs3;
end;

function T420OCP.GetPerDs4: Double;
begin
  Result := FPerDs4;
end;

procedure T420OCP.SetPerDs4(const pPerDs4: Double);
begin
  FPerDs4 := pPerDs4;
end;

function T420OCP.GetPerDs5: Double;
begin
  Result := FPerDs5;
end;

procedure T420OCP.SetPerDs5(const pPerDs5: Double);
begin
  FPerDs5 := pPerDs5;
end;

function T420OCP.GetVlrDs3: Double;
begin
  Result := FVlrDs3;
end;

procedure T420OCP.SetVlrDs3(const pVlrDs3: Double);
begin
  FVlrDs3 := pVlrDs3;
end;

function T420OCP.GetVlrDs4: Double;
begin
  Result := FVlrDs4;
end;

procedure T420OCP.SetVlrDs4(const pVlrDs4: Double);
begin
  FVlrDs4 := pVlrDs4;
end;

function T420OCP.GetVlrDs5: Double;
begin
  Result := FVlrDs5;
end;

procedure T420OCP.SetVlrDs5(const pVlrDs5: Double);
begin
  FVlrDs5 := pVlrDs5;
end;

function T420OCP.GetVlrOri: Double;
begin
  Result := FVlrOri;
end;

procedure T420OCP.SetVlrOri(const pVlrOri: Double);
begin
  FVlrOri := pVlrOri;
end;

function T420OCP.GetQtdOri: Double;
begin
  Result := FQtdOri;
end;

procedure T420OCP.SetQtdOri(const pQtdOri: Double);
begin
  FQtdOri := pQtdOri;
end;

function T420OCP.GetVlrFei: Double;
begin
  Result := FVlrFei;
end;

procedure T420OCP.SetVlrFei(const pVlrFei: Double);
begin
  FVlrFei := pVlrFei;
end;

function T420OCP.GetMoeFei: string;
begin
  Result := FMoeFei;
end;

procedure T420OCP.SetMoeFei(const pMoeFei: string);
begin
  FMoeFei := pMoeFei;
end;

function T420OCP.GetDatFei: TDate;
begin
  Result := FDatFei;
end;

procedure T420OCP.SetDatFei(const pDatFei: TDate);
begin
  FDatFei := pDatFei;
end;

function T420OCP.GetCotFei: Double;
begin
  Result := FCotFei;
end;

procedure T420OCP.SetCotFei(const pCotFei: Double);
begin
  FCotFei := pCotFei;
end;

function T420OCP.GetVlrSei: Double;
begin
  Result := FVlrSei;
end;

procedure T420OCP.SetVlrSei(const pVlrSei: Double);
begin
  FVlrSei := pVlrSei;
end;

function T420OCP.GetMoeSei: string;
begin
  Result := FMoeSei;
end;

procedure T420OCP.SetMoeSei(const pMoeSei: string);
begin
  FMoeSei := pMoeSei;
end;

function T420OCP.GetDatSei: TDate;
begin
  Result := FDatSei;
end;

procedure T420OCP.SetDatSei(const pDatSei: TDate);
begin
  FDatSei := pDatSei;
end;

function T420OCP.GetCotSei: Double;
begin
  Result := FCotSei;
end;

procedure T420OCP.SetCotSei(const pCotSei: Double);
begin
  FCotSei := pCotSei;
end;

function T420OCP.GetVlrOui: Double;
begin
  Result := FVlrOui;
end;

procedure T420OCP.SetVlrOui(const pVlrOui: Double);
begin
  FVlrOui := pVlrOui;
end;

function T420OCP.GetMoeOui: string;
begin
  Result := FMoeOui;
end;

procedure T420OCP.SetMoeOui(const pMoeOui: string);
begin
  FMoeOui := pMoeOui;
end;

function T420OCP.GetDatOui: TDate;
begin
  Result := FDatOui;
end;

procedure T420OCP.SetDatOui(const pDatOui: TDate);
begin
  FDatOui := pDatOui;
end;

function T420OCP.GetCotOui: Double;
begin
  Result := FCotOui;
end;

procedure T420OCP.SetCotOui(const pCotOui: Double);
begin
  FCotOui := pCotOui;
end;

function T420OCP.GetBcoImp: Double;
begin
  Result := FBcoImp;
end;

procedure T420OCP.SetBcoImp(const pBcoImp: Double);
begin
  FBcoImp := pBcoImp;
end;

function T420OCP.GetCofImp: Double;
begin
  Result := FCofImp;
end;

procedure T420OCP.SetCofImp(const pCofImp: Double);
begin
  FCofImp := pCofImp;
end;

function T420OCP.GetBpiImp: Double;
begin
  Result := FBpiImp;
end;

procedure T420OCP.SetBpiImp(const pBpiImp: Double);
begin
  FBpiImp := pBpiImp;
end;

function T420OCP.GetPisImp: Double;
begin
  Result := FPisImp;
end;

procedure T420OCP.SetPisImp(const pPisImp: Double);
begin
  FPisImp := pPisImp;
end;

function T420OCP.GetSomFre: string;
begin
  Result := FSomFre;
end;

procedure T420OCP.SetSomFre(const pSomFre: string);
begin
  FSomFre := pSomFre;
end;

function T420OCP.GetCodSaf: string;
begin
  Result := FCodSaf;
end;

procedure T420OCP.SetCodSaf(const pCodSaf: string);
begin
  FCodSaf := pCodSaf;
end;

function T420OCP.GetSalCan: string;
begin
  Result := FSalCan;
end;

procedure T420OCP.SetSalCan(const pSalCan: string);
begin
  FSalCan := pSalCan;
end;

function T420OCP.GetObrCtr: string;
begin
  Result := FObrCtr;
end;

procedure T420OCP.SetObrCtr(const pObrCtr: string);
begin
  FObrCtr := pObrCtr;
end;

function T420OCP.GetQtdBpi: Double;
begin
  Result := FQtdBpi;
end;

procedure T420OCP.SetQtdBpi(const pQtdBpi: Double);
begin
  FQtdBpi := pQtdBpi;
end;

function T420OCP.GetQtdBco: Double;
begin
  Result := FQtdBco;
end;

procedure T420OCP.SetQtdBco(const pQtdBco: Double);
begin
  FQtdBco := pQtdBco;
end;

function T420OCP.GetQtdBip: Double;
begin
  Result := FQtdBip;
end;

procedure T420OCP.SetQtdBip(const pQtdBip: Double);
begin
  FQtdBip := pQtdBip;
end;

function T420OCP.GetUSU_UsuMod: Integer;
begin
  Result := FUSU_UsuMod;
end;

procedure T420OCP.SetUSU_UsuMod(const pUSU_UsuMod: Integer);
begin
  FUSU_UsuMod := pUSU_UsuMod;
end;

function T420OCP.GetUSU_DatMod: TDate;
begin
  Result := FUSU_DatMod;
end;

procedure T420OCP.SetUSU_DatMod(const pUSU_DatMod: TDate);
begin
  FUSU_DatMod := pUSU_DatMod;
end;

function T420OCP.GetUSU_HorMod: Integer;
begin
  Result := FUSU_HorMod;
end;

procedure T420OCP.SetUSU_HorMod(const pUSU_HorMod: Integer);
begin
  FUSU_HorMod := pUSU_HorMod;
end;

function T420OCP.GetUSU_TipTrf: string;
begin
  Result := FUSU_TipTrf;
end;

procedure T420OCP.SetUSU_TipTrf(const pUSU_TipTrf: string);
begin
  FUSU_TipTrf := pUSU_TipTrf;
end;

function T420OCP.GetUSU_OCFab: string;
begin
  Result := FUSU_OCFab;
end;

procedure T420OCP.SetUSU_OCFab(const pUSU_OCFab: string);
begin
  FUSU_OCFab := pUSU_OCFab;
end;

function T420OCP.GetUSU_PPAP: Integer;
begin
  Result := FUSU_PPAP;
end;

procedure T420OCP.SetUSU_PPAP(const pUSU_PPAP: Integer);
begin
  FUSU_PPAP := pUSU_PPAP;
end;

function T420OCP.GetUSU_CrtOcp: Integer;
begin
  Result := FUSU_CrtOcp;
end;

procedure T420OCP.SetUSU_CrtOcp(const pUSU_CrtOcp: Integer);
begin
  FUSU_CrtOcp := pUSU_CrtOcp;
end;

function T420OCP.GetUSU_EmaEnv: string;
begin
  Result := FUSU_EmaEnv;
end;

procedure T420OCP.SetUSU_EmaEnv(const pUSU_EmaEnv: string);
begin
  FUSU_EmaEnv := pUSU_EmaEnv;
end;

function T420OCP.GetUSU_NumSdg: Integer;
begin
  Result := FUSU_NumSdg;
end;

procedure T420OCP.SetUSU_NumSdg(const pUSU_NumSdg: Integer);
begin
  FUSU_NumSdg := pUSU_NumSdg;
end;

function T420OCP.GetUSU_IndBTB: string;
begin
  Result := FUSU_IndBTB;
end;

procedure T420OCP.SetUSU_IndBTB(const pUSU_IndBTB: string);
begin
  FUSU_IndBTB := pUSU_IndBTB;
end;

function T420OCP.GetUSU_PrazEnt: TDate;
begin
  Result := FUSU_PrazEnt;
end;

procedure T420OCP.SetUSU_PrazEnt(const pUSU_PrazEnt: TDate);
begin
  FUSU_PrazEnt := pUSU_PrazEnt;
end;

function T420OCP.GetUSU_DatEmb: TDate;
begin
  Result := FUSU_DatEmb;
end;

procedure T420OCP.SetUSU_DatEmb(const pUSU_DatEmb: TDate);
begin
  FUSU_DatEmb := pUSU_DatEmb;
end;

function T420OCP.GetUSU_DatEnt: TDate;
begin
  Result := FUSU_DatEnt;
end;

procedure T420OCP.SetUSU_DatEnt(const pUSU_DatEnt: TDate);
begin
  FUSU_DatEnt := pUSU_DatEnt;
end;

function T420OCP.GetUSU_ObsOa: string;
begin
  Result := FUSU_ObsOa;
end;

procedure T420OCP.SetUSU_ObsOa(const pUSU_ObsOa: string);
begin
  FUSU_ObsOa := pUSU_ObsOa;
end;

function T420OCP.GetUSU_OrdCon: string;
begin
  Result := FUSU_OrdCon;
end;

procedure T420OCP.SetUSU_OrdCon(const pUSU_OrdCon: string);
begin
  FUSU_OrdCon := pUSU_OrdCon;
end;

function T420OCP.GetCodEmpOLD: Integer;
begin
  Result := FCodEmpOLD;
end;

procedure T420OCP.SetCodEmpOLD(const pCodEmp: Integer);
begin
  FCodEmpOLD := pCodEmp;
end;

function T420OCP.GetCodFilOLD: Integer;
begin
  Result := FCodFilOLD;
end;

procedure T420OCP.SetCodFilOLD(const pCodFil: Integer);
begin
  FCodFilOLD := pCodFil;
end;

function T420OCP.GetNumOcpOLD: Integer;
begin
  Result := FNumOcpOLD;
end;

procedure T420OCP.SetNumOcpOLD(const pNumOcp: Integer);
begin
  FNumOcpOLD := pNumOcp;
end;

function T420OCP.GetTnsProOLD: string;
begin
  Result := FTnsProOLD;
end;

procedure T420OCP.SetTnsProOLD(const pTnsPro: string);
begin
  FTnsProOLD := pTnsPro;
end;

function T420OCP.GetTnsSerOLD: string;
begin
  Result := FTnsSerOLD;
end;

procedure T420OCP.SetTnsSerOLD(const pTnsSer: string);
begin
  FTnsSerOLD := pTnsSer;
end;

function T420OCP.GetDatEmiOLD: TDate;
begin
  Result := FDatEmiOLD;
end;

procedure T420OCP.SetDatEmiOLD(const pDatEmi: TDate);
begin
  FDatEmiOLD := pDatEmi;
end;

function T420OCP.GetCodUsuOLD: Integer;
begin
  Result := FCodUsuOLD;
end;

procedure T420OCP.SetCodUsuOLD(const pCodUsu: Integer);
begin
  FCodUsuOLD := pCodUsu;
end;

function T420OCP.GetCodForOLD: Integer;
begin
  Result := FCodForOLD;
end;

procedure T420OCP.SetCodForOLD(const pCodFor: Integer);
begin
  FCodForOLD := pCodFor;
end;

function T420OCP.GetSeqCtoOLD: Integer;
begin
  Result := FSeqCtoOLD;
end;

procedure T420OCP.SetSeqCtoOLD(const pSeqCto: Integer);
begin
  FSeqCtoOLD := pSeqCto;
end;

function T420OCP.GetPedForOLD: string;
begin
  Result := FPedForOLD;
end;

procedure T420OCP.SetPedForOLD(const pPedFor: string);
begin
  FPedForOLD := pPedFor;
end;

function T420OCP.GetObsOcpOLD: string;
begin
  Result := FObsOcpOLD;
end;

procedure T420OCP.SetObsOcpOLD(const pObsOcp: string);
begin
  FObsOcpOLD := pObsOcp;
end;

function T420OCP.GetCodCpgOLD: string;
begin
  Result := FCodCpgOLD;
end;

procedure T420OCP.SetCodCpgOLD(const pCodCpg: string);
begin
  FCodCpgOLD := pCodCpg;
end;

function T420OCP.GetCodFpgOLD: Integer;
begin
  Result := FCodFpgOLD;
end;

procedure T420OCP.SetCodFpgOLD(const pCodFpg: Integer);
begin
  FCodFpgOLD := pCodFpg;
end;

function T420OCP.GetCodMoeOLD: string;
begin
  Result := FCodMoeOLD;
end;

procedure T420OCP.SetCodMoeOLD(const pCodMoe: string);
begin
  FCodMoeOLD := pCodMoe;
end;

function T420OCP.GetDatMoeOLD: TDate;
begin
  Result := FDatMoeOLD;
end;

procedure T420OCP.SetDatMoeOLD(const pDatMoe: TDate);
begin
  FDatMoeOLD := pDatMoe;
end;

function T420OCP.GetCotMoeOLD: Double;
begin
  Result := FCotMoeOLD;
end;

procedure T420OCP.SetCotMoeOLD(const pCotMoe: Double);
begin
  FCotMoeOLD := pCotMoe;
end;

function T420OCP.GetFecMoeOLD: string;
begin
  Result := FFecMoeOLD;
end;

procedure T420OCP.SetFecMoeOLD(const pFecMoe: string);
begin
  FFecMoeOLD := pFecMoe;
end;

function T420OCP.GetCodFcrOLD: string;
begin
  Result := FCodFcrOLD;
end;

procedure T420OCP.SetCodFcrOLD(const pCodFcr: string);
begin
  FCodFcrOLD := pCodFcr;
end;

function T420OCP.GetDatFcrOLD: TDate;
begin
  Result := FDatFcrOLD;
end;

procedure T420OCP.SetDatFcrOLD(const pDatFcr: TDate);
begin
  FDatFcrOLD := pDatFcr;
end;

function T420OCP.GetQtdAbeOLD: Double;
begin
  Result := FQtdAbeOLD;
end;

procedure T420OCP.SetQtdAbeOLD(const pQtdAbe: Double);
begin
  FQtdAbeOLD := pQtdAbe;
end;

function T420OCP.GetCodTraOLD: Integer;
begin
  Result := FCodTraOLD;
end;

procedure T420OCP.SetCodTraOLD(const pCodTra: Integer);
begin
  FCodTraOLD := pCodTra;
end;

function T420OCP.GetCodRedOLD: Integer;
begin
  Result := FCodRedOLD;
end;

procedure T420OCP.SetCodRedOLD(const pCodRed: Integer);
begin
  FCodRedOLD := pCodRed;
end;

function T420OCP.GetVlrFumOLD: Double;
begin
  Result := FVlrFumOLD;
end;

procedure T420OCP.SetVlrFumOLD(const pVlrFum: Double);
begin
  FVlrFumOLD := pVlrFum;
end;

function T420OCP.GetQtdFreOLD: Double;
begin
  Result := FQtdFreOLD;
end;

procedure T420OCP.SetQtdFreOLD(const pQtdFre: Double);
begin
  FQtdFreOLD := pQtdFre;
end;

function T420OCP.GetForFreOLD: Integer;
begin
  Result := FForFreOLD;
end;

procedure T420OCP.SetForFreOLD(const pForFre: Integer);
begin
  FForFreOLD := pForFre;
end;

function T420OCP.GetPerDs1OLD: Double;
begin
  Result := FPerDs1OLD;
end;

procedure T420OCP.SetPerDs1OLD(const pPerDs1: Double);
begin
  FPerDs1OLD := pPerDs1;
end;

function T420OCP.GetPerDs2OLD: Double;
begin
  Result := FPerDs2OLD;
end;

procedure T420OCP.SetPerDs2OLD(const pPerDs2: Double);
begin
  FPerDs2OLD := pPerDs2;
end;

function T420OCP.GetPerFinOLD: Double;
begin
  Result := FPerFinOLD;
end;

procedure T420OCP.SetPerFinOLD(const pPerFin: Double);
begin
  FPerFinOLD := pPerFin;
end;

function T420OCP.GetVlrFreOLD: Double;
begin
  Result := FVlrFreOLD;
end;

procedure T420OCP.SetVlrFreOLD(const pVlrFre: Double);
begin
  FVlrFreOLD := pVlrFre;
end;

function T420OCP.GetCifFobOLD: string;
begin
  Result := FCifFobOLD;
end;

procedure T420OCP.SetCifFobOLD(const pCifFob: string);
begin
  FCifFobOLD := pCifFob;
end;

function T420OCP.GetVlrSegOLD: Double;
begin
  Result := FVlrSegOLD;
end;

procedure T420OCP.SetVlrSegOLD(const pVlrSeg: Double);
begin
  FVlrSegOLD := pVlrSeg;
end;

function T420OCP.GetVlrEmbOLD: Double;
begin
  Result := FVlrEmbOLD;
end;

procedure T420OCP.SetVlrEmbOLD(const pVlrEmb: Double);
begin
  FVlrEmbOLD := pVlrEmb;
end;

function T420OCP.GetVlrEncOLD: Double;
begin
  Result := FVlrEncOLD;
end;

procedure T420OCP.SetVlrEncOLD(const pVlrEnc: Double);
begin
  FVlrEncOLD := pVlrEnc;
end;

function T420OCP.GetVlrOutOLD: Double;
begin
  Result := FVlrOutOLD;
end;

procedure T420OCP.SetVlrOutOLD(const pVlrOut: Double);
begin
  FVlrOutOLD := pVlrOut;
end;

function T420OCP.GetVlrDarOLD: Double;
begin
  Result := FVlrDarOLD;
end;

procedure T420OCP.SetVlrDarOLD(const pVlrDar: Double);
begin
  FVlrDarOLD := pVlrDar;
end;

function T420OCP.GetVlrFrdOLD: Double;
begin
  Result := FVlrFrdOLD;
end;

procedure T420OCP.SetVlrFrdOLD(const pVlrFrd: Double);
begin
  FVlrFrdOLD := pVlrFrd;
end;

function T420OCP.GetVlrOudOLD: Double;
begin
  Result := FVlrOudOLD;
end;

procedure T420OCP.SetVlrOudOLD(const pVlrOud: Double);
begin
  FVlrOudOLD := pVlrOud;
end;

function T420OCP.GetVlrBprOLD: Double;
begin
  Result := FVlrBprOLD;
end;

procedure T420OCP.SetVlrBprOLD(const pVlrBpr: Double);
begin
  FVlrBprOLD := pVlrBpr;
end;

function T420OCP.GetVlrDprOLD: Double;
begin
  Result := FVlrDprOLD;
end;

procedure T420OCP.SetVlrDprOLD(const pVlrDpr: Double);
begin
  FVlrDprOLD := pVlrDpr;
end;

function T420OCP.GetVlrBseOLD: Double;
begin
  Result := FVlrBseOLD;
end;

procedure T420OCP.SetVlrBseOLD(const pVlrBse: Double);
begin
  FVlrBseOLD := pVlrBse;
end;

function T420OCP.GetVlrDseOLD: Double;
begin
  Result := FVlrDseOLD;
end;

procedure T420OCP.SetVlrDseOLD(const pVlrDse: Double);
begin
  FVlrDseOLD := pVlrDse;
end;

function T420OCP.GetVlrDs1OLD: Double;
begin
  Result := FVlrDs1OLD;
end;

procedure T420OCP.SetVlrDs1OLD(const pVlrDs1: Double);
begin
  FVlrDs1OLD := pVlrDs1;
end;

function T420OCP.GetVlrDs2OLD: Double;
begin
  Result := FVlrDs2OLD;
end;

procedure T420OCP.SetVlrDs2OLD(const pVlrDs2: Double);
begin
  FVlrDs2OLD := pVlrDs2;
end;

function T420OCP.GetVlrDzfOLD: Double;
begin
  Result := FVlrDzfOLD;
end;

procedure T420OCP.SetVlrDzfOLD(const pVlrDzf: Double);
begin
  FVlrDzfOLD := pVlrDzf;
end;

function T420OCP.GetVlrBfuOLD: Double;
begin
  Result := FVlrBfuOLD;
end;

procedure T420OCP.SetVlrBfuOLD(const pVlrBfu: Double);
begin
  FVlrBfuOLD := pVlrBfu;
end;

function T420OCP.GetVlrFunOLD: Double;
begin
  Result := FVlrFunOLD;
end;

procedure T420OCP.SetVlrFunOLD(const pVlrFun: Double);
begin
  FVlrFunOLD := pVlrFun;
end;

function T420OCP.GetVlrBipOLD: Double;
begin
  Result := FVlrBipOLD;
end;

procedure T420OCP.SetVlrBipOLD(const pVlrBip: Double);
begin
  FVlrBipOLD := pVlrBip;
end;

function T420OCP.GetVlrIpiOLD: Double;
begin
  Result := FVlrIpiOLD;
end;

procedure T420OCP.SetVlrIpiOLD(const pVlrIpi: Double);
begin
  FVlrIpiOLD := pVlrIpi;
end;

function T420OCP.GetVlrBicOLD: Double;
begin
  Result := FVlrBicOLD;
end;

procedure T420OCP.SetVlrBicOLD(const pVlrBic: Double);
begin
  FVlrBicOLD := pVlrBic;
end;

function T420OCP.GetVlrIcmOLD: Double;
begin
  Result := FVlrIcmOLD;
end;

procedure T420OCP.SetVlrIcmOLD(const pVlrIcm: Double);
begin
  FVlrIcmOLD := pVlrIcm;
end;

function T420OCP.GetVlrBsiOLD: Double;
begin
  Result := FVlrBsiOLD;
end;

procedure T420OCP.SetVlrBsiOLD(const pVlrBsi: Double);
begin
  FVlrBsiOLD := pVlrBsi;
end;

function T420OCP.GetVlrSicOLD: Double;
begin
  Result := FVlrSicOLD;
end;

procedure T420OCP.SetVlrSicOLD(const pVlrSic: Double);
begin
  FVlrSicOLD := pVlrSic;
end;

function T420OCP.GetVlrBspOLD: Double;
begin
  Result := FVlrBspOLD;
end;

procedure T420OCP.SetVlrBspOLD(const pVlrBsp: Double);
begin
  FVlrBspOLD := pVlrBsp;
end;

function T420OCP.GetVlrStpOLD: Double;
begin
  Result := FVlrStpOLD;
end;

procedure T420OCP.SetVlrStpOLD(const pVlrStp: Double);
begin
  FVlrStpOLD := pVlrStp;
end;

function T420OCP.GetVlrBscOLD: Double;
begin
  Result := FVlrBscOLD;
end;

procedure T420OCP.SetVlrBscOLD(const pVlrBsc: Double);
begin
  FVlrBscOLD := pVlrBsc;
end;

function T420OCP.GetVlrStcOLD: Double;
begin
  Result := FVlrStcOLD;
end;

procedure T420OCP.SetVlrStcOLD(const pVlrStc: Double);
begin
  FVlrStcOLD := pVlrStc;
end;

function T420OCP.GetVlrBisOLD: Double;
begin
  Result := FVlrBisOLD;
end;

procedure T420OCP.SetVlrBisOLD(const pVlrBis: Double);
begin
  FVlrBisOLD := pVlrBis;
end;

function T420OCP.GetVlrIssOLD: Double;
begin
  Result := FVlrIssOLD;
end;

procedure T420OCP.SetVlrIssOLD(const pVlrIss: Double);
begin
  FVlrIssOLD := pVlrIss;
end;

function T420OCP.GetVlrBirOLD: Double;
begin
  Result := FVlrBirOLD;
end;

procedure T420OCP.SetVlrBirOLD(const pVlrBir: Double);
begin
  FVlrBirOLD := pVlrBir;
end;

function T420OCP.GetVlrIrfOLD: Double;
begin
  Result := FVlrIrfOLD;
end;

procedure T420OCP.SetVlrIrfOLD(const pVlrIrf: Double);
begin
  FVlrIrfOLD := pVlrIrf;
end;

function T420OCP.GetVlrBinOLD: Double;
begin
  Result := FVlrBinOLD;
end;

procedure T420OCP.SetVlrBinOLD(const pVlrBin: Double);
begin
  FVlrBinOLD := pVlrBin;
end;

function T420OCP.GetVlrInsOLD: Double;
begin
  Result := FVlrInsOLD;
end;

procedure T420OCP.SetVlrInsOLD(const pVlrIns: Double);
begin
  FVlrInsOLD := pVlrIns;
end;

function T420OCP.GetVlrLprOLD: Double;
begin
  Result := FVlrLprOLD;
end;

procedure T420OCP.SetVlrLprOLD(const pVlrLpr: Double);
begin
  FVlrLprOLD := pVlrLpr;
end;

function T420OCP.GetVlrLseOLD: Double;
begin
  Result := FVlrLseOLD;
end;

procedure T420OCP.SetVlrLseOLD(const pVlrLse: Double);
begin
  FVlrLseOLD := pVlrLse;
end;

function T420OCP.GetVlrLouOLD: Double;
begin
  Result := FVlrLouOLD;
end;

procedure T420OCP.SetVlrLouOLD(const pVlrLou: Double);
begin
  FVlrLouOLD := pVlrLou;
end;

function T420OCP.GetVlrLiqOLD: Double;
begin
  Result := FVlrLiqOLD;
end;

procedure T420OCP.SetVlrLiqOLD(const pVlrLiq: Double);
begin
  FVlrLiqOLD := pVlrLiq;
end;

function T420OCP.GetVlrFinOLD: Double;
begin
  Result := FVlrFinOLD;
end;

procedure T420OCP.SetVlrFinOLD(const pVlrFin: Double);
begin
  FVlrFinOLD := pVlrFin;
end;

function T420OCP.GetTemParOLD: string;
begin
  Result := FTemParOLD;
end;

procedure T420OCP.SetTemParOLD(const pTemPar: string);
begin
  FTemParOLD := pTemPar;
end;

function T420OCP.GetCodPorOLD: string;
begin
  Result := FCodPorOLD;
end;

procedure T420OCP.SetCodPorOLD(const pCodPor: string);
begin
  FCodPorOLD := pCodPor;
end;

function T420OCP.GetCodCrtOLD: string;
begin
  Result := FCodCrtOLD;
end;

procedure T420OCP.SetCodCrtOLD(const pCodCrt: string);
begin
  FCodCrtOLD := pCodCrt;
end;

function T420OCP.GetRotNapOLD: Integer;
begin
  Result := FRotNapOLD;
end;

procedure T420OCP.SetRotNapOLD(const pRotNap: Integer);
begin
  FRotNapOLD := pRotNap;
end;

function T420OCP.GetFilAprOLD: Integer;
begin
  Result := FFilAprOLD;
end;

procedure T420OCP.SetFilAprOLD(const pFilApr: Integer);
begin
  FFilAprOLD := pFilApr;
end;

function T420OCP.GetNumAprOLD: Integer;
begin
  Result := FNumAprOLD;
end;

procedure T420OCP.SetNumAprOLD(const pNumApr: Integer);
begin
  FNumAprOLD := pNumApr;
end;

function T420OCP.GetSitAprOLD: string;
begin
  Result := FSitAprOLD;
end;

procedure T420OCP.SetSitAprOLD(const pSitApr: string);
begin
  FSitAprOLD := pSitApr;
end;

function T420OCP.GetSitOcpOLD: Integer;
begin
  Result := FSitOcpOLD;
end;

procedure T420OCP.SetSitOcpOLD(const pSitOcp: Integer);
begin
  FSitOcpOLD := pSitOcp;
end;

function T420OCP.GetCodMotOLD: Integer;
begin
  Result := FCodMotOLD;
end;

procedure T420OCP.SetCodMotOLD(const pCodMot: Integer);
begin
  FCodMotOLD := pCodMot;
end;

function T420OCP.GetObsMotOLD: string;
begin
  Result := FObsMotOLD;
end;

procedure T420OCP.SetObsMotOLD(const pObsMot: string);
begin
  FObsMotOLD := pObsMot;
end;

function T420OCP.GetFilPedOLD: Integer;
begin
  Result := FFilPedOLD;
end;

procedure T420OCP.SetFilPedOLD(const pFilPed: Integer);
begin
  FFilPedOLD := pFilPed;
end;

function T420OCP.GetNumPedOLD: Integer;
begin
  Result := FNumPedOLD;
end;

procedure T420OCP.SetNumPedOLD(const pNumPed: Integer);
begin
  FNumPedOLD := pNumPed;
end;

function T420OCP.GetVerCalOLD: Integer;
begin
  Result := FVerCalOLD;
end;

procedure T420OCP.SetVerCalOLD(const pVerCal: Integer);
begin
  FVerCalOLD := pVerCal;
end;

function T420OCP.GetUsuGerOLD: Integer;
begin
  Result := FUsuGerOLD;
end;

procedure T420OCP.SetUsuGerOLD(const pUsuGer: Integer);
begin
  FUsuGerOLD := pUsuGer;
end;

function T420OCP.GetDatGerOLD: TDate;
begin
  Result := FDatGerOLD;
end;

procedure T420OCP.SetDatGerOLD(const pDatGer: TDate);
begin
  FDatGerOLD := pDatGer;
end;

function T420OCP.GetHorGerOLD: Integer;
begin
  Result := FHorGerOLD;
end;

procedure T420OCP.SetHorGerOLD(const pHorGer: Integer);
begin
  FHorGerOLD := pHorGer;
end;

function T420OCP.GetPrcOcpOLD: Integer;
begin
  Result := FPrcOcpOLD;
end;

procedure T420OCP.SetPrcOcpOLD(const pPrcOcp: Integer);
begin
  FPrcOcpOLD := pPrcOcp;
end;

function T420OCP.GetPerPrgOLD: Integer;
begin
  Result := FPerPrgOLD;
end;

procedure T420OCP.SetPerPrgOLD(const pPerPrg: Integer);
begin
  FPerPrgOLD := pPerPrg;
end;

function T420OCP.GetPerFreOLD: Double;
begin
  Result := FPerFreOLD;
end;

procedure T420OCP.SetPerFreOLD(const pPerFre: Double);
begin
  FPerFreOLD := pPerFre;
end;

function T420OCP.GetPerSegOLD: Double;
begin
  Result := FPerSegOLD;
end;

procedure T420OCP.SetPerSegOLD(const pPerSeg: Double);
begin
  FPerSegOLD := pPerSeg;
end;

function T420OCP.GetPerEmbOLD: Double;
begin
  Result := FPerEmbOLD;
end;

procedure T420OCP.SetPerEmbOLD(const pPerEmb: Double);
begin
  FPerEmbOLD := pPerEmb;
end;

function T420OCP.GetPerEncOLD: Double;
begin
  Result := FPerEncOLD;
end;

procedure T420OCP.SetPerEncOLD(const pPerEnc: Double);
begin
  FPerEncOLD := pPerEnc;
end;

function T420OCP.GetPerOutOLD: Double;
begin
  Result := FPerOutOLD;
end;

procedure T420OCP.SetPerOutOLD(const pPerOut: Double);
begin
  FPerOutOLD := pPerOut;
end;

function T420OCP.GetSeqOrmOLD: Integer;
begin
  Result := FSeqOrmOLD;
end;

procedure T420OCP.SetSeqOrmOLD(const pSeqOrm: Integer);
begin
  FSeqOrmOLD := pSeqOrm;
end;

function T420OCP.GetUsuFecOLD: Integer;
begin
  Result := FUsuFecOLD;
end;

procedure T420OCP.SetUsuFecOLD(const pUsuFec: Integer);
begin
  FUsuFecOLD := pUsuFec;
end;

function T420OCP.GetDatFecOLD: TDate;
begin
  Result := FDatFecOLD;
end;

procedure T420OCP.SetDatFecOLD(const pDatFec: TDate);
begin
  FDatFecOLD := pDatFec;
end;

function T420OCP.GetHorFecOLD: Integer;
begin
  Result := FHorFecOLD;
end;

procedure T420OCP.SetHorFecOLD(const pHorFec: Integer);
begin
  FHorFecOLD := pHorFec;
end;

function T420OCP.GetTipIntOLD: Integer;
begin
  Result := FTipIntOLD;
end;

procedure T420OCP.SetTipIntOLD(const pTipInt: Integer);
begin
  FTipIntOLD := pTipInt;
end;

function T420OCP.GetVlrBclOLD: Double;
begin
  Result := FVlrBclOLD;
end;

procedure T420OCP.SetVlrBclOLD(const pVlrBcl: Double);
begin
  FVlrBclOLD := pVlrBcl;
end;

function T420OCP.GetVlrCslOLD: Double;
begin
  Result := FVlrCslOLD;
end;

procedure T420OCP.SetVlrCslOLD(const pVlrCsl: Double);
begin
  FVlrCslOLD := pVlrCsl;
end;

function T420OCP.GetVlrBptOLD: Double;
begin
  Result := FVlrBptOLD;
end;

procedure T420OCP.SetVlrBptOLD(const pVlrBpt: Double);
begin
  FVlrBptOLD := pVlrBpt;
end;

function T420OCP.GetVlrPitOLD: Double;
begin
  Result := FVlrPitOLD;
end;

procedure T420OCP.SetVlrPitOLD(const pVlrPit: Double);
begin
  FVlrPitOLD := pVlrPit;
end;

function T420OCP.GetVlrBctOLD: Double;
begin
  Result := FVlrBctOLD;
end;

procedure T420OCP.SetVlrBctOLD(const pVlrBct: Double);
begin
  FVlrBctOLD := pVlrBct;
end;

function T420OCP.GetVlrCrtOLD: Double;
begin
  Result := FVlrCrtOLD;
end;

procedure T420OCP.SetVlrCrtOLD(const pVlrCrt: Double);
begin
  FVlrCrtOLD := pVlrCrt;
end;

function T420OCP.GetVlrBorOLD: Double;
begin
  Result := FVlrBorOLD;
end;

procedure T420OCP.SetVlrBorOLD(const pVlrBor: Double);
begin
  FVlrBorOLD := pVlrBor;
end;

function T420OCP.GetVlrOurOLD: Double;
begin
  Result := FVlrOurOLD;
end;

procedure T420OCP.SetVlrOurOLD(const pVlrOur: Double);
begin
  FVlrOurOLD := pVlrOur;
end;

function T420OCP.GetCodMfrOLD: string;
begin
  Result := FCodMfrOLD;
end;

procedure T420OCP.SetCodMfrOLD(const pCodMfr: string);
begin
  FCodMfrOLD := pCodMfr;
end;

function T420OCP.GetDatMfrOLD: TDate;
begin
  Result := FDatMfrOLD;
end;

procedure T420OCP.SetDatMfrOLD(const pDatMfr: TDate);
begin
  FDatMfrOLD := pDatMfr;
end;

function T420OCP.GetCotMfrOLD: Double;
begin
  Result := FCotMfrOLD;
end;

procedure T420OCP.SetCotMfrOLD(const pCotMfr: Double);
begin
  FCotMfrOLD := pCotMfr;
end;

function T420OCP.GetVlrBiiOLD: Double;
begin
  Result := FVlrBiiOLD;
end;

procedure T420OCP.SetVlrBiiOLD(const pVlrBii: Double);
begin
  FVlrBiiOLD := pVlrBii;
end;

function T420OCP.GetVlrIimOLD: Double;
begin
  Result := FVlrIimOLD;
end;

procedure T420OCP.SetVlrIimOLD(const pVlrIim: Double);
begin
  FVlrIimOLD := pVlrIim;
end;

function T420OCP.GetVlrRisOLD: Double;
begin
  Result := FVlrRisOLD;
end;

procedure T420OCP.SetVlrRisOLD(const pVlrRis: Double);
begin
  FVlrRisOLD := pVlrRis;
end;

function T420OCP.GetVlrBpiOLD: Double;
begin
  Result := FVlrBpiOLD;
end;

procedure T420OCP.SetVlrBpiOLD(const pVlrBpi: Double);
begin
  FVlrBpiOLD := pVlrBpi;
end;

function T420OCP.GetVlrPisOLD: Double;
begin
  Result := FVlrPisOLD;
end;

procedure T420OCP.SetVlrPisOLD(const pVlrPis: Double);
begin
  FVlrPisOLD := pVlrPis;
end;

function T420OCP.GetVlrBcrOLD: Double;
begin
  Result := FVlrBcrOLD;
end;

procedure T420OCP.SetVlrBcrOLD(const pVlrBcr: Double);
begin
  FVlrBcrOLD := pVlrBcr;
end;

function T420OCP.GetVlrCorOLD: Double;
begin
  Result := FVlrCorOLD;
end;

procedure T420OCP.SetVlrCorOLD(const pVlrCor: Double);
begin
  FVlrCorOLD := pVlrCor;
end;

function T420OCP.GetPerDs3OLD: Double;
begin
  Result := FPerDs3OLD;
end;

procedure T420OCP.SetPerDs3OLD(const pPerDs3: Double);
begin
  FPerDs3OLD := pPerDs3;
end;

function T420OCP.GetPerDs4OLD: Double;
begin
  Result := FPerDs4OLD;
end;

procedure T420OCP.SetPerDs4OLD(const pPerDs4: Double);
begin
  FPerDs4OLD := pPerDs4;
end;

function T420OCP.GetPerDs5OLD: Double;
begin
  Result := FPerDs5OLD;
end;

procedure T420OCP.SetPerDs5OLD(const pPerDs5: Double);
begin
  FPerDs5OLD := pPerDs5;
end;

function T420OCP.GetVlrDs3OLD: Double;
begin
  Result := FVlrDs3OLD;
end;

procedure T420OCP.SetVlrDs3OLD(const pVlrDs3: Double);
begin
  FVlrDs3OLD := pVlrDs3;
end;

function T420OCP.GetVlrDs4OLD: Double;
begin
  Result := FVlrDs4OLD;
end;

procedure T420OCP.SetVlrDs4OLD(const pVlrDs4: Double);
begin
  FVlrDs4OLD := pVlrDs4;
end;

function T420OCP.GetVlrDs5OLD: Double;
begin
  Result := FVlrDs5OLD;
end;

procedure T420OCP.SetVlrDs5OLD(const pVlrDs5: Double);
begin
  FVlrDs5OLD := pVlrDs5;
end;

function T420OCP.GetVlrOriOLD: Double;
begin
  Result := FVlrOriOLD;
end;

procedure T420OCP.SetVlrOriOLD(const pVlrOri: Double);
begin
  FVlrOriOLD := pVlrOri;
end;

function T420OCP.GetQtdOriOLD: Double;
begin
  Result := FQtdOriOLD;
end;

procedure T420OCP.SetQtdOriOLD(const pQtdOri: Double);
begin
  FQtdOriOLD := pQtdOri;
end;

function T420OCP.GetVlrFeiOLD: Double;
begin
  Result := FVlrFeiOLD;
end;

procedure T420OCP.SetVlrFeiOLD(const pVlrFei: Double);
begin
  FVlrFeiOLD := pVlrFei;
end;

function T420OCP.GetMoeFeiOLD: string;
begin
  Result := FMoeFeiOLD;
end;

procedure T420OCP.SetMoeFeiOLD(const pMoeFei: string);
begin
  FMoeFeiOLD := pMoeFei;
end;

function T420OCP.GetDatFeiOLD: TDate;
begin
  Result := FDatFeiOLD;
end;

procedure T420OCP.SetDatFeiOLD(const pDatFei: TDate);
begin
  FDatFeiOLD := pDatFei;
end;

function T420OCP.GetCotFeiOLD: Double;
begin
  Result := FCotFeiOLD;
end;

procedure T420OCP.SetCotFeiOLD(const pCotFei: Double);
begin
  FCotFeiOLD := pCotFei;
end;

function T420OCP.GetVlrSeiOLD: Double;
begin
  Result := FVlrSeiOLD;
end;

procedure T420OCP.SetVlrSeiOLD(const pVlrSei: Double);
begin
  FVlrSeiOLD := pVlrSei;
end;

function T420OCP.GetMoeSeiOLD: string;
begin
  Result := FMoeSeiOLD;
end;

procedure T420OCP.SetMoeSeiOLD(const pMoeSei: string);
begin
  FMoeSeiOLD := pMoeSei;
end;

function T420OCP.GetDatSeiOLD: TDate;
begin
  Result := FDatSeiOLD;
end;

procedure T420OCP.SetDatSeiOLD(const pDatSei: TDate);
begin
  FDatSeiOLD := pDatSei;
end;

function T420OCP.GetCotSeiOLD: Double;
begin
  Result := FCotSeiOLD;
end;

procedure T420OCP.SetCotSeiOLD(const pCotSei: Double);
begin
  FCotSeiOLD := pCotSei;
end;

function T420OCP.GetVlrOuiOLD: Double;
begin
  Result := FVlrOuiOLD;
end;

procedure T420OCP.SetVlrOuiOLD(const pVlrOui: Double);
begin
  FVlrOuiOLD := pVlrOui;
end;

function T420OCP.GetMoeOuiOLD: string;
begin
  Result := FMoeOuiOLD;
end;

procedure T420OCP.SetMoeOuiOLD(const pMoeOui: string);
begin
  FMoeOuiOLD := pMoeOui;
end;

function T420OCP.GetDatOuiOLD: TDate;
begin
  Result := FDatOuiOLD;
end;

procedure T420OCP.SetDatOuiOLD(const pDatOui: TDate);
begin
  FDatOuiOLD := pDatOui;
end;

function T420OCP.GetCotOuiOLD: Double;
begin
  Result := FCotOuiOLD;
end;

procedure T420OCP.SetCotOuiOLD(const pCotOui: Double);
begin
  FCotOuiOLD := pCotOui;
end;

function T420OCP.GetBcoImpOLD: Double;
begin
  Result := FBcoImpOLD;
end;

procedure T420OCP.SetBcoImpOLD(const pBcoImp: Double);
begin
  FBcoImpOLD := pBcoImp;
end;

function T420OCP.GetCofImpOLD: Double;
begin
  Result := FCofImpOLD;
end;

procedure T420OCP.SetCofImpOLD(const pCofImp: Double);
begin
  FCofImpOLD := pCofImp;
end;

function T420OCP.GetBpiImpOLD: Double;
begin
  Result := FBpiImpOLD;
end;

procedure T420OCP.SetBpiImpOLD(const pBpiImp: Double);
begin
  FBpiImpOLD := pBpiImp;
end;

function T420OCP.GetPisImpOLD: Double;
begin
  Result := FPisImpOLD;
end;

procedure T420OCP.SetPisImpOLD(const pPisImp: Double);
begin
  FPisImpOLD := pPisImp;
end;

function T420OCP.GetSomFreOLD: string;
begin
  Result := FSomFreOLD;
end;

procedure T420OCP.SetSomFreOLD(const pSomFre: string);
begin
  FSomFreOLD := pSomFre;
end;

function T420OCP.GetCodSafOLD: string;
begin
  Result := FCodSafOLD;
end;

procedure T420OCP.SetCodSafOLD(const pCodSaf: string);
begin
  FCodSafOLD := pCodSaf;
end;

function T420OCP.GetSalCanOLD: string;
begin
  Result := FSalCanOLD;
end;

procedure T420OCP.SetSalCanOLD(const pSalCan: string);
begin
  FSalCanOLD := pSalCan;
end;

function T420OCP.GetObrCtrOLD: string;
begin
  Result := FObrCtrOLD;
end;

procedure T420OCP.SetObrCtrOLD(const pObrCtr: string);
begin
  FObrCtrOLD := pObrCtr;
end;

function T420OCP.GetQtdBpiOLD: Double;
begin
  Result := FQtdBpiOLD;
end;

procedure T420OCP.SetQtdBpiOLD(const pQtdBpi: Double);
begin
  FQtdBpiOLD := pQtdBpi;
end;

function T420OCP.GetQtdBcoOLD: Double;
begin
  Result := FQtdBcoOLD;
end;

procedure T420OCP.SetQtdBcoOLD(const pQtdBco: Double);
begin
  FQtdBcoOLD := pQtdBco;
end;

function T420OCP.GetQtdBipOLD: Double;
begin
  Result := FQtdBipOLD;
end;

procedure T420OCP.SetQtdBipOLD(const pQtdBip: Double);
begin
  FQtdBipOLD := pQtdBip;
end;

function T420OCP.GetUSU_UsuModOLD: Integer;
begin
  Result := FUSU_UsuModOLD;
end;

procedure T420OCP.SetUSU_UsuModOLD(const pUSU_UsuMod: Integer);
begin
  FUSU_UsuModOLD := pUSU_UsuMod;
end;

function T420OCP.GetUSU_DatModOLD: TDate;
begin
  Result := FUSU_DatModOLD;
end;

procedure T420OCP.SetUSU_DatModOLD(const pUSU_DatMod: TDate);
begin
  FUSU_DatModOLD := pUSU_DatMod;
end;

function T420OCP.GetUSU_HorModOLD: Integer;
begin
  Result := FUSU_HorModOLD;
end;

procedure T420OCP.SetUSU_HorModOLD(const pUSU_HorMod: Integer);
begin
  FUSU_HorModOLD := pUSU_HorMod;
end;

function T420OCP.GetUSU_TipTrfOLD: string;
begin
  Result := FUSU_TipTrfOLD;
end;

procedure T420OCP.SetUSU_TipTrfOLD(const pUSU_TipTrf: string);
begin
  FUSU_TipTrfOLD := pUSU_TipTrf;
end;

function T420OCP.GetUSU_OCFabOLD: string;
begin
  Result := FUSU_OCFabOLD;
end;

procedure T420OCP.SetUSU_OCFabOLD(const pUSU_OCFab: string);
begin
  FUSU_OCFabOLD := pUSU_OCFab;
end;

function T420OCP.GetUSU_PPAPOLD: Integer;
begin
  Result := FUSU_PPAPOLD;
end;

procedure T420OCP.SetUSU_PPAPOLD(const pUSU_PPAP: Integer);
begin
  FUSU_PPAPOLD := pUSU_PPAP;
end;

function T420OCP.GetUSU_CrtOcpOLD: Integer;
begin
  Result := FUSU_CrtOcpOLD;
end;

procedure T420OCP.SetUSU_CrtOcpOLD(const pUSU_CrtOcp: Integer);
begin
  FUSU_CrtOcpOLD := pUSU_CrtOcp;
end;

function T420OCP.GetUSU_EmaEnvOLD: string;
begin
  Result := FUSU_EmaEnvOLD;
end;

procedure T420OCP.SetUSU_EmaEnvOLD(const pUSU_EmaEnv: string);
begin
  FUSU_EmaEnvOLD := pUSU_EmaEnv;
end;

function T420OCP.GetUSU_NumSdgOLD: Integer;
begin
  Result := FUSU_NumSdgOLD;
end;

procedure T420OCP.SetUSU_NumSdgOLD(const pUSU_NumSdg: Integer);
begin
  FUSU_NumSdgOLD := pUSU_NumSdg;
end;

function T420OCP.GetUSU_IndBTBOLD: string;
begin
  Result := FUSU_IndBTBOLD;
end;

procedure T420OCP.SetUSU_IndBTBOLD(const pUSU_IndBTB: string);
begin
  FUSU_IndBTBOLD := pUSU_IndBTB;
end;

function T420OCP.GetUSU_PrazEntOLD: TDate;
begin
  Result := FUSU_PrazEntOLD;
end;

procedure T420OCP.SetUSU_PrazEntOLD(const pUSU_PrazEnt: TDate);
begin
  FUSU_PrazEntOLD := pUSU_PrazEnt;
end;

function T420OCP.GetUSU_DatEmbOLD: TDate;
begin
  Result := FUSU_DatEmbOLD;
end;

procedure T420OCP.SetUSU_DatEmbOLD(const pUSU_DatEmb: TDate);
begin
  FUSU_DatEmbOLD := pUSU_DatEmb;
end;

function T420OCP.GetUSU_DatEntOLD: TDate;
begin
  Result := FUSU_DatEntOLD;
end;

procedure T420OCP.SetUSU_DatEntOLD(const pUSU_DatEnt: TDate);
begin
  FUSU_DatEntOLD := pUSU_DatEnt;
end;

function T420OCP.GetUSU_ObsOaOLD: string;
begin
  Result := FUSU_ObsOaOLD;
end;

procedure T420OCP.SetUSU_ObsOaOLD(const pUSU_ObsOa: string);
begin
  FUSU_ObsOaOLD := pUSU_ObsOa;
end;

function T420OCP.GetUSU_OrdConOLD: string;
begin
  Result := FUSU_OrdConOLD;
end;

procedure T420OCP.SetUSU_OrdConOLD(const pUSU_OrdCon: string);
begin
  FUSU_OrdConOLD := pUSU_OrdCon;
end;

procedure T420OCP.Registros_OLD();
begin
  FCodEmpOLD := FCodEmp;
  FCodFilOLD := FCodFil;
  FNumOcpOLD := FNumOcp;
  FTnsProOLD := FTnsPro;
  FTnsSerOLD := FTnsSer;
  FDatEmiOLD := FDatEmi;
  FCodUsuOLD := FCodUsu;
  FCodForOLD := FCodFor;
  FSeqCtoOLD := FSeqCto;
  FPedForOLD := FPedFor;
  FObsOcpOLD := FObsOcp;
  FCodCpgOLD := FCodCpg;
  FCodFpgOLD := FCodFpg;
  FCodMoeOLD := FCodMoe;
  FDatMoeOLD := FDatMoe;
  FCotMoeOLD := FCotMoe;
  FFecMoeOLD := FFecMoe;
  FCodFcrOLD := FCodFcr;
  FDatFcrOLD := FDatFcr;
  FQtdAbeOLD := FQtdAbe;
  FCodTraOLD := FCodTra;
  FCodRedOLD := FCodRed;
  FVlrFumOLD := FVlrFum;
  FQtdFreOLD := FQtdFre;
  FForFreOLD := FForFre;
  FPerDs1OLD := FPerDs1;
  FPerDs2OLD := FPerDs2;
  FPerFinOLD := FPerFin;
  FVlrFreOLD := FVlrFre;
  FCifFobOLD := FCifFob;
  FVlrSegOLD := FVlrSeg;
  FVlrEmbOLD := FVlrEmb;
  FVlrEncOLD := FVlrEnc;
  FVlrOutOLD := FVlrOut;
  FVlrDarOLD := FVlrDar;
  FVlrFrdOLD := FVlrFrd;
  FVlrOudOLD := FVlrOud;
  FVlrBprOLD := FVlrBpr;
  FVlrDprOLD := FVlrDpr;
  FVlrBseOLD := FVlrBse;
  FVlrDseOLD := FVlrDse;
  FVlrDs1OLD := FVlrDs1;
  FVlrDs2OLD := FVlrDs2;
  FVlrDzfOLD := FVlrDzf;
  FVlrBfuOLD := FVlrBfu;
  FVlrFunOLD := FVlrFun;
  FVlrBipOLD := FVlrBip;
  FVlrIpiOLD := FVlrIpi;
  FVlrBicOLD := FVlrBic;
  FVlrIcmOLD := FVlrIcm;
  FVlrBsiOLD := FVlrBsi;
  FVlrSicOLD := FVlrSic;
  FVlrBspOLD := FVlrBsp;
  FVlrStpOLD := FVlrStp;
  FVlrBscOLD := FVlrBsc;
  FVlrStcOLD := FVlrStc;
  FVlrBisOLD := FVlrBis;
  FVlrIssOLD := FVlrIss;
  FVlrBirOLD := FVlrBir;
  FVlrIrfOLD := FVlrIrf;
  FVlrBinOLD := FVlrBin;
  FVlrInsOLD := FVlrIns;
  FVlrLprOLD := FVlrLpr;
  FVlrLseOLD := FVlrLse;
  FVlrLouOLD := FVlrLou;
  FVlrLiqOLD := FVlrLiq;
  FVlrFinOLD := FVlrFin;
  FTemParOLD := FTemPar;
  FCodPorOLD := FCodPor;
  FCodCrtOLD := FCodCrt;
  FRotNapOLD := FRotNap;
  FFilAprOLD := FFilApr;
  FNumAprOLD := FNumApr;
  FSitAprOLD := FSitApr;
  FSitOcpOLD := FSitOcp;
  FCodMotOLD := FCodMot;
  FObsMotOLD := FObsMot;
  FFilPedOLD := FFilPed;
  FNumPedOLD := FNumPed;
  FVerCalOLD := FVerCal;
  FUsuGerOLD := FUsuGer;
  FDatGerOLD := FDatGer;
  FHorGerOLD := FHorGer;
  FPrcOcpOLD := FPrcOcp;
  FPerPrgOLD := FPerPrg;
  FPerFreOLD := FPerFre;
  FPerSegOLD := FPerSeg;
  FPerEmbOLD := FPerEmb;
  FPerEncOLD := FPerEnc;
  FPerOutOLD := FPerOut;
  FSeqOrmOLD := FSeqOrm;
  FUsuFecOLD := FUsuFec;
  FDatFecOLD := FDatFec;
  FHorFecOLD := FHorFec;
  FTipIntOLD := FTipInt;
  FVlrBclOLD := FVlrBcl;
  FVlrCslOLD := FVlrCsl;
  FVlrBptOLD := FVlrBpt;
  FVlrPitOLD := FVlrPit;
  FVlrBctOLD := FVlrBct;
  FVlrCrtOLD := FVlrCrt;
  FVlrBorOLD := FVlrBor;
  FVlrOurOLD := FVlrOur;
  FCodMfrOLD := FCodMfr;
  FDatMfrOLD := FDatMfr;
  FCotMfrOLD := FCotMfr;
  FVlrBiiOLD := FVlrBii;
  FVlrIimOLD := FVlrIim;
  FVlrRisOLD := FVlrRis;
  FVlrBpiOLD := FVlrBpi;
  FVlrPisOLD := FVlrPis;
  FVlrBcrOLD := FVlrBcr;
  FVlrCorOLD := FVlrCor;
  FPerDs3OLD := FPerDs3;
  FPerDs4OLD := FPerDs4;
  FPerDs5OLD := FPerDs5;
  FVlrDs3OLD := FVlrDs3;
  FVlrDs4OLD := FVlrDs4;
  FVlrDs5OLD := FVlrDs5;
  FVlrOriOLD := FVlrOri;
  FQtdOriOLD := FQtdOri;
  FVlrFeiOLD := FVlrFei;
  FMoeFeiOLD := FMoeFei;
  FDatFeiOLD := FDatFei;
  FCotFeiOLD := FCotFei;
  FVlrSeiOLD := FVlrSei;
  FMoeSeiOLD := FMoeSei;
  FDatSeiOLD := FDatSei;
  FCotSeiOLD := FCotSei;
  FVlrOuiOLD := FVlrOui;
  FMoeOuiOLD := FMoeOui;
  FDatOuiOLD := FDatOui;
  FCotOuiOLD := FCotOui;
  FBcoImpOLD := FBcoImp;
  FCofImpOLD := FCofImp;
  FBpiImpOLD := FBpiImp;
  FPisImpOLD := FPisImp;
  FSomFreOLD := FSomFre;
  FCodSafOLD := FCodSaf;
  FSalCanOLD := FSalCan;
  FObrCtrOLD := FObrCtr;
  FQtdBpiOLD := FQtdBpi;
  FQtdBcoOLD := FQtdBco;
  FQtdBipOLD := FQtdBip;
  FUSU_UsuModOLD := FUSU_UsuMod;
  FUSU_DatModOLD := FUSU_DatMod;
  FUSU_HorModOLD := FUSU_HorMod;
  FUSU_TipTrfOLD := FUSU_TipTrf;
  FUSU_OCFabOLD := FUSU_OCFab;
  FUSU_PPAPOLD := FUSU_PPAP;
  FUSU_CrtOcpOLD := FUSU_CrtOcp;
  FUSU_EmaEnvOLD := FUSU_EmaEnv;
  FUSU_NumSdgOLD := FUSU_NumSdg;
  FUSU_IndBTBOLD := FUSU_IndBTB;
  FUSU_PrazEntOLD := FUSU_PrazEnt;
  FUSU_DatEmbOLD := FUSU_DatEmb;
  FUSU_DatEntOLD := FUSU_DatEnt;
  FUSU_ObsOaOLD := FUSU_ObsOa;
  FUSU_OrdConOLD := FUSU_OrdCon;
end;

  {$HINTS ON}
end.
