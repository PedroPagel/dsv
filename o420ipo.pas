unit o420ipo;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T420IPO = class(TTabelaPadrao)
  private
    FCodEmp: Integer;
    FCodFil: Integer;
    FNumOcp: Integer;
    FSeqIpo: Integer;
    FTnsPro: string;
    FCodPro: string;
    FCodDer: string;
    FCplIpo: string;
    FProFor: string;
    FDesFor: string;
    FUniFor: string;
    FCodFam: string;
    FCodTic: string;
    FCodTrd: string;
    FCodTst: string;
    FCodStp: string;
    FCodStc: string;
    FCodDep: string;
    FCodLot: string;
    FQtdPed: Double;
    FQtdRec: Double;
    FQtdCan: Double;
    FQtdAbe: Double;
    FUniMed: string;
    FCodTpr: string;
    FPreUni: Double;
    FPreFix: Char;
    FPerDsc: Double;
    FPerDs3: Double;
    FPerDs4: Double;
    FPerDs5: Double;
    FPerIpi: Double;
    FPerIcm: Double;
    FPerFun: Double;
    FDatEnt: TDate;
    FCodPvp: string;
    FNumPrj: Integer;
    FCodFpj: Integer;
    FCtaFin: Integer;
    FCtaRed: Integer;
    FCodCcu: string;
    FVlrFre: Double;
    FVlrSeg: Double;
    FVlrEmb: Double;
    FVlrEnc: Double;
    FVlrOut: Double;
    FVlrDar: Double;
    FVlrFrd: Double;
    FVlrOud: Double;
    FVlrBru: Double;
    FVlrDsc: Double;
    FVlrDs1: Double;
    FVlrDs2: Double;
    FVlrDs3: Double;
    FVlrDs4: Double;
    FVlrDs5: Double;
    FVlrDzf: Double;
    FVlrBfu: Double;
    FVlrFun: Double;
    FVlrBip: Double;
    FVlrIpi: Double;
    FVlrBic: Double;
    FVlrIcm: Double;
    FVlrBsi: Double;
    FVlrIcs: Double;
    FVlrBsp: Double;
    FVlrStp: Double;
    FVlrBsc: Double;
    FVlrStc: Double;
    FVlrLpr: Double;
    FVlrLou: Double;
    FVlrLiq: Double;
    FVlrFin: Double;
    FAcrFin: Double;
    FSitIpo: Integer;
    FCodMot: Integer;
    FObsMot: string;
    FSeqIpd: Integer;
    FFilCtr: Integer;
    FNumCtr: Integer;
    FDatCpt: TDate;
    FSeqCcp: Integer;
    FIndEqi: Char;
    FUsuGer: Integer;
    FDatGer: TDate;
    FHorGer: Integer;
    FFilPed: Integer;
    FNumPed: Integer;
    FDatVlt: TDate;
    FQtdFor: Double;
    FPreFor: Double;
    FCodMoe: string;
    FDatMoe: TDate;
    FCotMoe: Double;
    FFecMoe: Char;
    FPerIim: Double;
    FVlrBii: Double;
    FVlrIim: Double;
    FVlrRis: Double;
    FSeqIor: Integer;
    FVlrBpi: Double;
    FVlrPis: Double;
    FVlrBcr: Double;
    FVlrCor: Double;
    FCodFxa: string;
    FIdxGrd: Integer;
    FPerPit: Double;
    FVlrBpt: Double;
    FVlrPit: Double;
    FPerCrt: Double;
    FVlrBct: Double;
    FVlrCrt: Double;
    FPerCsl: Double;
    FVlrBcl: Double;
    FVlrCsl: Double;
    FPerOur: Double;
    FVlrBor: Double;
    FVlrOur: Double;
    FPerIrf: Double;
    FVlrBir: Double;
    FVlrIrf: Double;
    FFilCes: Integer;
    FDatCes: TDate;
    FSeqCes: Integer;
    FPerDs1: Double;
    FPerDs2: Double;
    FVlrOri: Double;
    FQtdOri: Double;
    FVlrFei: Double;
    FVlrSei: Double;
    FVlrOui: Double;
    FBcoImp: Double;
    FCofImp: Double;
    FBpiImp: Double;
    FPisImp: Double;
    FSeqCpk: Integer;
    FVlrDm1: Double;
    FVlrDm2: Double;
    FVlrDm3: Double;
    FVlrDm4: Double;
    FVlrDm5: Double;
    FVlrDm6: Double;
    FBemPri: string;
    FEmpPed: Integer;
    FEmpNfv: Integer;
    FFilNfv: Integer;
    FSnfNfv: string;
    FNumNfv: Integer;
    FSeqIpv: Integer;
    FCodTrg: string;
    FPerBon: Double;
    FVlrDfa: Double;
    FQtdBpi: Double;
    FAliPis: Double;
    FQtdBco: Double;
    FAliCof: Double;
    FQtdBip: Double;
    FAliIpi: Double;
    FCodFab: string;
    FProFab: string;
    FSubPro: Char;
    FTipCur: Integer;
    FUSU_DatCon: TDate;
    FUSU_UsuMod: Integer;
    FUSU_DatMod: TDate;
    FUSU_HorMod: Integer;
    FUSU_LisCli: string;
    FUSU_QtdExa: Char;
    FUSU_TipTrf: Char;
    FUSU_OC831: Char;
    FUSU_QtdAna: Double;
    FUSU_NumAna: Integer;
    FUSU_FilPed: Integer;
    FUSU_NumPed: Integer;
    FUSU_SeqIpd: Integer;
    FUSU_ObsImp: string;
    FUSU_NumReq: Integer;
    FUSU_SeqReq: Integer;

    FCodEmpOLD: Integer;
    FCodFilOLD: Integer;
    FNumOcpOLD: Integer;
    FSeqIpoOLD: Integer;
    FTnsProOLD: string;
    FCodProOLD: string;
    FCodDerOLD: string;
    FCplIpoOLD: string;
    FProForOLD: string;
    FDesForOLD: string;
    FUniForOLD: string;
    FCodFamOLD: string;
    FCodTicOLD: string;
    FCodTrdOLD: string;
    FCodTstOLD: string;
    FCodStpOLD: string;
    FCodStcOLD: string;
    FCodDepOLD: string;
    FCodLotOLD: string;
    FQtdPedOLD: Double;
    FQtdRecOLD: Double;
    FQtdCanOLD: Double;
    FQtdAbeOLD: Double;
    FUniMedOLD: string;
    FCodTprOLD: string;
    FPreUniOLD: Double;
    FPreFixOLD: Char;
    FPerDscOLD: Double;
    FPerDs3OLD: Double;
    FPerDs4OLD: Double;
    FPerDs5OLD: Double;
    FPerIpiOLD: Double;
    FPerIcmOLD: Double;
    FPerFunOLD: Double;
    FDatEntOLD: TDate;
    FCodPvpOLD: string;
    FNumPrjOLD: Integer;
    FCodFpjOLD: Integer;
    FCtaFinOLD: Integer;
    FCtaRedOLD: Integer;
    FCodCcuOLD: string;
    FVlrFreOLD: Double;
    FVlrSegOLD: Double;
    FVlrEmbOLD: Double;
    FVlrEncOLD: Double;
    FVlrOutOLD: Double;
    FVlrDarOLD: Double;
    FVlrFrdOLD: Double;
    FVlrOudOLD: Double;
    FVlrBruOLD: Double;
    FVlrDscOLD: Double;
    FVlrDs1OLD: Double;
    FVlrDs2OLD: Double;
    FVlrDs3OLD: Double;
    FVlrDs4OLD: Double;
    FVlrDs5OLD: Double;
    FVlrDzfOLD: Double;
    FVlrBfuOLD: Double;
    FVlrFunOLD: Double;
    FVlrBipOLD: Double;
    FVlrIpiOLD: Double;
    FVlrBicOLD: Double;
    FVlrIcmOLD: Double;
    FVlrBsiOLD: Double;
    FVlrIcsOLD: Double;
    FVlrBspOLD: Double;
    FVlrStpOLD: Double;
    FVlrBscOLD: Double;
    FVlrStcOLD: Double;
    FVlrLprOLD: Double;
    FVlrLouOLD: Double;
    FVlrLiqOLD: Double;
    FVlrFinOLD: Double;
    FAcrFinOLD: Double;
    FSitIpoOLD: Integer;
    FCodMotOLD: Integer;
    FObsMotOLD: string;
    FSeqIpdOLD: Integer;
    FFilCtrOLD: Integer;
    FNumCtrOLD: Integer;
    FDatCptOLD: TDate;
    FSeqCcpOLD: Integer;
    FIndEqiOLD: Char;
    FUsuGerOLD: Integer;
    FDatGerOLD: TDate;
    FHorGerOLD: Integer;
    FFilPedOLD: Integer;
    FNumPedOLD: Integer;
    FDatVltOLD: TDate;
    FQtdForOLD: Double;
    FPreForOLD: Double;
    FCodMoeOLD: string;
    FDatMoeOLD: TDate;
    FCotMoeOLD: Double;
    FFecMoeOLD: Char;
    FPerIimOLD: Double;
    FVlrBiiOLD: Double;
    FVlrIimOLD: Double;
    FVlrRisOLD: Double;
    FSeqIorOLD: Integer;
    FVlrBpiOLD: Double;
    FVlrPisOLD: Double;
    FVlrBcrOLD: Double;
    FVlrCorOLD: Double;
    FCodFxaOLD: string;
    FIdxGrdOLD: Integer;
    FPerPitOLD: Double;
    FVlrBptOLD: Double;
    FVlrPitOLD: Double;
    FPerCrtOLD: Double;
    FVlrBctOLD: Double;
    FVlrCrtOLD: Double;
    FPerCslOLD: Double;
    FVlrBclOLD: Double;
    FVlrCslOLD: Double;
    FPerOurOLD: Double;
    FVlrBorOLD: Double;
    FVlrOurOLD: Double;
    FPerIrfOLD: Double;
    FVlrBirOLD: Double;
    FVlrIrfOLD: Double;
    FFilCesOLD: Integer;
    FDatCesOLD: TDate;
    FSeqCesOLD: Integer;
    FPerDs1OLD: Double;
    FPerDs2OLD: Double;
    FVlrOriOLD: Double;
    FQtdOriOLD: Double;
    FVlrFeiOLD: Double;
    FVlrSeiOLD: Double;
    FVlrOuiOLD: Double;
    FBcoImpOLD: Double;
    FCofImpOLD: Double;
    FBpiImpOLD: Double;
    FPisImpOLD: Double;
    FSeqCpkOLD: Integer;
    FVlrDm1OLD: Double;
    FVlrDm2OLD: Double;
    FVlrDm3OLD: Double;
    FVlrDm4OLD: Double;
    FVlrDm5OLD: Double;
    FVlrDm6OLD: Double;
    FBemPriOLD: string;
    FEmpPedOLD: Integer;
    FEmpNfvOLD: Integer;
    FFilNfvOLD: Integer;
    FSnfNfvOLD: string;
    FNumNfvOLD: Integer;
    FSeqIpvOLD: Integer;
    FCodTrgOLD: string;
    FPerBonOLD: Double;
    FVlrDfaOLD: Double;
    FQtdBpiOLD: Double;
    FAliPisOLD: Double;
    FQtdBcoOLD: Double;
    FAliCofOLD: Double;
    FQtdBipOLD: Double;
    FAliIpiOLD: Double;
    FCodFabOLD: string;
    FProFabOLD: string;
    FSubProOLD: Char;
    FTipCurOLD: Integer;
    FUSU_DatConOLD: TDate;
    FUSU_UsuModOLD: Integer;
    FUSU_DatModOLD: TDate;
    FUSU_HorModOLD: Integer;
    FUSU_LisCliOLD: string;
    FUSU_QtdExaOLD: Char;
    FUSU_TipTrfOLD: Char;
    FUSU_OC831OLD: Char;
    FUSU_QtdAnaOLD: Double;
    FUSU_NumAnaOLD: Integer;
    FUSU_FilPedOLD: Integer;
    FUSU_NumPedOLD: Integer;
    FUSU_SeqIpdOLD: Integer;
    FUSU_ObsImpOLD: string;
    FUSU_NumReqOLD: Integer;
    FUSU_SeqReqOLD: Integer;

    function GetCodEmp: Integer;
    procedure SetCodEmp(const pCodEmp: Integer);
    function GetCodFil: Integer;
    procedure SetCodFil(const pCodFil: Integer);
    function GetNumOcp: Integer;
    procedure SetNumOcp(const pNumOcp: Integer);
    function GetSeqIpo: Integer;
    procedure SetSeqIpo(const pSeqIpo: Integer);
    function GetTnsPro: string;
    procedure SetTnsPro(const pTnsPro: string);
    function GetCodPro: string;
    procedure SetCodPro(const pCodPro: string);
    function GetCodDer: string;
    procedure SetCodDer(const pCodDer: string);
    function GetCplIpo: string;
    procedure SetCplIpo(const pCplIpo: string);
    function GetProFor: string;
    procedure SetProFor(const pProFor: string);
    function GetDesFor: string;
    procedure SetDesFor(const pDesFor: string);
    function GetUniFor: string;
    procedure SetUniFor(const pUniFor: string);
    function GetCodFam: string;
    procedure SetCodFam(const pCodFam: string);
    function GetCodTic: string;
    procedure SetCodTic(const pCodTic: string);
    function GetCodTrd: string;
    procedure SetCodTrd(const pCodTrd: string);
    function GetCodTst: string;
    procedure SetCodTst(const pCodTst: string);
    function GetCodStp: string;
    procedure SetCodStp(const pCodStp: string);
    function GetCodStc: string;
    procedure SetCodStc(const pCodStc: string);
    function GetCodDep: string;
    procedure SetCodDep(const pCodDep: string);
    function GetCodLot: string;
    procedure SetCodLot(const pCodLot: string);
    function GetQtdPed: Double;
    procedure SetQtdPed(const pQtdPed: Double);
    function GetQtdRec: Double;
    procedure SetQtdRec(const pQtdRec: Double);
    function GetQtdCan: Double;
    procedure SetQtdCan(const pQtdCan: Double);
    function GetQtdAbe: Double;
    procedure SetQtdAbe(const pQtdAbe: Double);
    function GetUniMed: string;
    procedure SetUniMed(const pUniMed: string);
    function GetCodTpr: string;
    procedure SetCodTpr(const pCodTpr: string);
    function GetPreUni: Double;
    procedure SetPreUni(const pPreUni: Double);
    function GetPreFix: Char;
    procedure SetPreFix(const pPreFix: Char);
    function GetPerDsc: Double;
    procedure SetPerDsc(const pPerDsc: Double);
    function GetPerDs3: Double;
    procedure SetPerDs3(const pPerDs3: Double);
    function GetPerDs4: Double;
    procedure SetPerDs4(const pPerDs4: Double);
    function GetPerDs5: Double;
    procedure SetPerDs5(const pPerDs5: Double);
    function GetPerIpi: Double;
    procedure SetPerIpi(const pPerIpi: Double);
    function GetPerIcm: Double;
    procedure SetPerIcm(const pPerIcm: Double);
    function GetPerFun: Double;
    procedure SetPerFun(const pPerFun: Double);
    function GetDatEnt: TDate;
    procedure SetDatEnt(const pDatEnt: TDate);
    function GetCodPvp: string;
    procedure SetCodPvp(const pCodPvp: string);
    function GetNumPrj: Integer;
    procedure SetNumPrj(const pNumPrj: Integer);
    function GetCodFpj: Integer;
    procedure SetCodFpj(const pCodFpj: Integer);
    function GetCtaFin: Integer;
    procedure SetCtaFin(const pCtaFin: Integer);
    function GetCtaRed: Integer;
    procedure SetCtaRed(const pCtaRed: Integer);
    function GetCodCcu: string;
    procedure SetCodCcu(const pCodCcu: string);
    function GetVlrFre: Double;
    procedure SetVlrFre(const pVlrFre: Double);
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
    function GetVlrBru: Double;
    procedure SetVlrBru(const pVlrBru: Double);
    function GetVlrDsc: Double;
    procedure SetVlrDsc(const pVlrDsc: Double);
    function GetVlrDs1: Double;
    procedure SetVlrDs1(const pVlrDs1: Double);
    function GetVlrDs2: Double;
    procedure SetVlrDs2(const pVlrDs2: Double);
    function GetVlrDs3: Double;
    procedure SetVlrDs3(const pVlrDs3: Double);
    function GetVlrDs4: Double;
    procedure SetVlrDs4(const pVlrDs4: Double);
    function GetVlrDs5: Double;
    procedure SetVlrDs5(const pVlrDs5: Double);
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
    function GetVlrIcs: Double;
    procedure SetVlrIcs(const pVlrIcs: Double);
    function GetVlrBsp: Double;
    procedure SetVlrBsp(const pVlrBsp: Double);
    function GetVlrStp: Double;
    procedure SetVlrStp(const pVlrStp: Double);
    function GetVlrBsc: Double;
    procedure SetVlrBsc(const pVlrBsc: Double);
    function GetVlrStc: Double;
    procedure SetVlrStc(const pVlrStc: Double);
    function GetVlrLpr: Double;
    procedure SetVlrLpr(const pVlrLpr: Double);
    function GetVlrLou: Double;
    procedure SetVlrLou(const pVlrLou: Double);
    function GetVlrLiq: Double;
    procedure SetVlrLiq(const pVlrLiq: Double);
    function GetVlrFin: Double;
    procedure SetVlrFin(const pVlrFin: Double);
    function GetAcrFin: Double;
    procedure SetAcrFin(const pAcrFin: Double);
    function GetSitIpo: Integer;
    procedure SetSitIpo(const pSitIpo: Integer);
    function GetCodMot: Integer;
    procedure SetCodMot(const pCodMot: Integer);
    function GetObsMot: string;
    procedure SetObsMot(const pObsMot: string);
    function GetSeqIpd: Integer;
    procedure SetSeqIpd(const pSeqIpd: Integer);
    function GetFilCtr: Integer;
    procedure SetFilCtr(const pFilCtr: Integer);
    function GetNumCtr: Integer;
    procedure SetNumCtr(const pNumCtr: Integer);
    function GetDatCpt: TDate;
    procedure SetDatCpt(const pDatCpt: TDate);
    function GetSeqCcp: Integer;
    procedure SetSeqCcp(const pSeqCcp: Integer);
    function GetIndEqi: Char;
    procedure SetIndEqi(const pIndEqi: Char);
    function GetUsuGer: Integer;
    procedure SetUsuGer(const pUsuGer: Integer);
    function GetDatGer: TDate;
    procedure SetDatGer(const pDatGer: TDate);
    function GetHorGer: Integer;
    procedure SetHorGer(const pHorGer: Integer);
    function GetFilPed: Integer;
    procedure SetFilPed(const pFilPed: Integer);
    function GetNumPed: Integer;
    procedure SetNumPed(const pNumPed: Integer);
    function GetDatVlt: TDate;
    procedure SetDatVlt(const pDatVlt: TDate);
    function GetQtdFor: Double;
    procedure SetQtdFor(const pQtdFor: Double);
    function GetPreFor: Double;
    procedure SetPreFor(const pPreFor: Double);
    function GetCodMoe: string;
    procedure SetCodMoe(const pCodMoe: string);
    function GetDatMoe: TDate;
    procedure SetDatMoe(const pDatMoe: TDate);
    function GetCotMoe: Double;
    procedure SetCotMoe(const pCotMoe: Double);
    function GetFecMoe: Char;
    procedure SetFecMoe(const pFecMoe: Char);
    function GetPerIim: Double;
    procedure SetPerIim(const pPerIim: Double);
    function GetVlrBii: Double;
    procedure SetVlrBii(const pVlrBii: Double);
    function GetVlrIim: Double;
    procedure SetVlrIim(const pVlrIim: Double);
    function GetVlrRis: Double;
    procedure SetVlrRis(const pVlrRis: Double);
    function GetSeqIor: Integer;
    procedure SetSeqIor(const pSeqIor: Integer);
    function GetVlrBpi: Double;
    procedure SetVlrBpi(const pVlrBpi: Double);
    function GetVlrPis: Double;
    procedure SetVlrPis(const pVlrPis: Double);
    function GetVlrBcr: Double;
    procedure SetVlrBcr(const pVlrBcr: Double);
    function GetVlrCor: Double;
    procedure SetVlrCor(const pVlrCor: Double);
    function GetCodFxa: string;
    procedure SetCodFxa(const pCodFxa: string);
    function GetIdxGrd: Integer;
    procedure SetIdxGrd(const pIdxGrd: Integer);
    function GetPerPit: Double;
    procedure SetPerPit(const pPerPit: Double);
    function GetVlrBpt: Double;
    procedure SetVlrBpt(const pVlrBpt: Double);
    function GetVlrPit: Double;
    procedure SetVlrPit(const pVlrPit: Double);
    function GetPerCrt: Double;
    procedure SetPerCrt(const pPerCrt: Double);
    function GetVlrBct: Double;
    procedure SetVlrBct(const pVlrBct: Double);
    function GetVlrCrt: Double;
    procedure SetVlrCrt(const pVlrCrt: Double);
    function GetPerCsl: Double;
    procedure SetPerCsl(const pPerCsl: Double);
    function GetVlrBcl: Double;
    procedure SetVlrBcl(const pVlrBcl: Double);
    function GetVlrCsl: Double;
    procedure SetVlrCsl(const pVlrCsl: Double);
    function GetPerOur: Double;
    procedure SetPerOur(const pPerOur: Double);
    function GetVlrBor: Double;
    procedure SetVlrBor(const pVlrBor: Double);
    function GetVlrOur: Double;
    procedure SetVlrOur(const pVlrOur: Double);
    function GetPerIrf: Double;
    procedure SetPerIrf(const pPerIrf: Double);
    function GetVlrBir: Double;
    procedure SetVlrBir(const pVlrBir: Double);
    function GetVlrIrf: Double;
    procedure SetVlrIrf(const pVlrIrf: Double);
    function GetFilCes: Integer;
    procedure SetFilCes(const pFilCes: Integer);
    function GetDatCes: TDate;
    procedure SetDatCes(const pDatCes: TDate);
    function GetSeqCes: Integer;
    procedure SetSeqCes(const pSeqCes: Integer);
    function GetPerDs1: Double;
    procedure SetPerDs1(const pPerDs1: Double);
    function GetPerDs2: Double;
    procedure SetPerDs2(const pPerDs2: Double);
    function GetVlrOri: Double;
    procedure SetVlrOri(const pVlrOri: Double);
    function GetQtdOri: Double;
    procedure SetQtdOri(const pQtdOri: Double);
    function GetVlrFei: Double;
    procedure SetVlrFei(const pVlrFei: Double);
    function GetVlrSei: Double;
    procedure SetVlrSei(const pVlrSei: Double);
    function GetVlrOui: Double;
    procedure SetVlrOui(const pVlrOui: Double);
    function GetBcoImp: Double;
    procedure SetBcoImp(const pBcoImp: Double);
    function GetCofImp: Double;
    procedure SetCofImp(const pCofImp: Double);
    function GetBpiImp: Double;
    procedure SetBpiImp(const pBpiImp: Double);
    function GetPisImp: Double;
    procedure SetPisImp(const pPisImp: Double);
    function GetSeqCpk: Integer;
    procedure SetSeqCpk(const pSeqCpk: Integer);
    function GetVlrDm1: Double;
    procedure SetVlrDm1(const pVlrDm1: Double);
    function GetVlrDm2: Double;
    procedure SetVlrDm2(const pVlrDm2: Double);
    function GetVlrDm3: Double;
    procedure SetVlrDm3(const pVlrDm3: Double);
    function GetVlrDm4: Double;
    procedure SetVlrDm4(const pVlrDm4: Double);
    function GetVlrDm5: Double;
    procedure SetVlrDm5(const pVlrDm5: Double);
    function GetVlrDm6: Double;
    procedure SetVlrDm6(const pVlrDm6: Double);
    function GetBemPri: string;
    procedure SetBemPri(const pBemPri: string);
    function GetEmpPed: Integer;
    procedure SetEmpPed(const pEmpPed: Integer);
    function GetEmpNfv: Integer;
    procedure SetEmpNfv(const pEmpNfv: Integer);
    function GetFilNfv: Integer;
    procedure SetFilNfv(const pFilNfv: Integer);
    function GetSnfNfv: string;
    procedure SetSnfNfv(const pSnfNfv: string);
    function GetNumNfv: Integer;
    procedure SetNumNfv(const pNumNfv: Integer);
    function GetSeqIpv: Integer;
    procedure SetSeqIpv(const pSeqIpv: Integer);
    function GetCodTrg: string;
    procedure SetCodTrg(const pCodTrg: string);
    function GetPerBon: Double;
    procedure SetPerBon(const pPerBon: Double);
    function GetVlrDfa: Double;
    procedure SetVlrDfa(const pVlrDfa: Double);
    function GetQtdBpi: Double;
    procedure SetQtdBpi(const pQtdBpi: Double);
    function GetAliPis: Double;
    procedure SetAliPis(const pAliPis: Double);
    function GetQtdBco: Double;
    procedure SetQtdBco(const pQtdBco: Double);
    function GetAliCof: Double;
    procedure SetAliCof(const pAliCof: Double);
    function GetQtdBip: Double;
    procedure SetQtdBip(const pQtdBip: Double);
    function GetAliIpi: Double;
    procedure SetAliIpi(const pAliIpi: Double);
    function GetCodFab: string;
    procedure SetCodFab(const pCodFab: string);
    function GetProFab: string;
    procedure SetProFab(const pProFab: string);
    function GetSubPro: Char;
    procedure SetSubPro(const pSubPro: Char);
    function GetTipCur: Integer;
    procedure SetTipCur(const pTipCur: Integer);
    function GetUSU_DatCon: TDate;
    procedure SetUSU_DatCon(const pUSU_DatCon: TDate);
    function GetUSU_UsuMod: Integer;
    procedure SetUSU_UsuMod(const pUSU_UsuMod: Integer);
    function GetUSU_DatMod: TDate;
    procedure SetUSU_DatMod(const pUSU_DatMod: TDate);
    function GetUSU_HorMod: Integer;
    procedure SetUSU_HorMod(const pUSU_HorMod: Integer);
    function GetUSU_LisCli: string;
    procedure SetUSU_LisCli(const pUSU_LisCli: string);
    function GetUSU_QtdExa: Char;
    procedure SetUSU_QtdExa(const pUSU_QtdExa: Char);
    function GetUSU_TipTrf: Char;
    procedure SetUSU_TipTrf(const pUSU_TipTrf: Char);
    function GetUSU_OC831: Char;
    procedure SetUSU_OC831(const pUSU_OC831: Char);
    function GetUSU_QtdAna: Double;
    procedure SetUSU_QtdAna(const pUSU_QtdAna: Double);
    function GetUSU_NumAna: Integer;
    procedure SetUSU_NumAna(const pUSU_NumAna: Integer);
    function GetUSU_FilPed: Integer;
    procedure SetUSU_FilPed(const pUSU_FilPed: Integer);
    function GetUSU_NumPed: Integer;
    procedure SetUSU_NumPed(const pUSU_NumPed: Integer);
    function GetUSU_SeqIpd: Integer;
    procedure SetUSU_SeqIpd(const pUSU_SeqIpd: Integer);
    function GetUSU_ObsImp: string;
    procedure SetUSU_ObsImp(const pUSU_ObsImp: string);
    function GetUSU_NumReq: Integer;
    procedure SetUSU_NumReq(const pUSU_NumReq: Integer);
    function GetUSU_SeqReq: Integer;
    procedure SetUSU_SeqReq(const pUSU_SeqReq: Integer);

    function GetCodEmpOld: Integer;
    procedure SetCodEmpOld(const pCodEmp: Integer);
    function GetCodFilOld: Integer;
    procedure SetCodFilOld(const pCodFil: Integer);
    function GetNumOcpOld: Integer;
    procedure SetNumOcpOld(const pNumOcp: Integer);
    function GetSeqIpoOld: Integer;
    procedure SetSeqIpoOld(const pSeqIpo: Integer);
    function GetTnsProOld: string;
    procedure SetTnsProOld(const pTnsPro: string);
    function GetCodProOld: string;
    procedure SetCodProOld(const pCodPro: string);
    function GetCodDerOld: string;
    procedure SetCodDerOld(const pCodDer: string);
    function GetCplIpoOld: string;
    procedure SetCplIpoOld(const pCplIpo: string);
    function GetProForOld: string;
    procedure SetProForOld(const pProFor: string);
    function GetDesForOld: string;
    procedure SetDesForOld(const pDesFor: string);
    function GetUniForOld: string;
    procedure SetUniForOld(const pUniFor: string);
    function GetCodFamOld: string;
    procedure SetCodFamOld(const pCodFam: string);
    function GetCodTicOld: string;
    procedure SetCodTicOld(const pCodTic: string);
    function GetCodTrdOld: string;
    procedure SetCodTrdOld(const pCodTrd: string);
    function GetCodTstOld: string;
    procedure SetCodTstOld(const pCodTst: string);
    function GetCodStpOld: string;
    procedure SetCodStpOld(const pCodStp: string);
    function GetCodStcOld: string;
    procedure SetCodStcOld(const pCodStc: string);
    function GetCodDepOld: string;
    procedure SetCodDepOld(const pCodDep: string);
    function GetCodLotOld: string;
    procedure SetCodLotOld(const pCodLot: string);
    function GetQtdPedOld: Double;
    procedure SetQtdPedOld(const pQtdPed: Double);
    function GetQtdRecOld: Double;
    procedure SetQtdRecOld(const pQtdRec: Double);
    function GetQtdCanOld: Double;
    procedure SetQtdCanOld(const pQtdCan: Double);
    function GetQtdAbeOld: Double;
    procedure SetQtdAbeOld(const pQtdAbe: Double);
    function GetUniMedOld: string;
    procedure SetUniMedOld(const pUniMed: string);
    function GetCodTprOld: string;
    procedure SetCodTprOld(const pCodTpr: string);
    function GetPreUniOld: Double;
    procedure SetPreUniOld(const pPreUni: Double);
    function GetPreFixOld: Char;
    procedure SetPreFixOld(const pPreFix: Char);
    function GetPerDscOld: Double;
    procedure SetPerDscOld(const pPerDsc: Double);
    function GetPerDs3Old: Double;
    procedure SetPerDs3Old(const pPerDs3: Double);
    function GetPerDs4Old: Double;
    procedure SetPerDs4Old(const pPerDs4: Double);
    function GetPerDs5Old: Double;
    procedure SetPerDs5Old(const pPerDs5: Double);
    function GetPerIpiOld: Double;
    procedure SetPerIpiOld(const pPerIpi: Double);
    function GetPerIcmOld: Double;
    procedure SetPerIcmOld(const pPerIcm: Double);
    function GetPerFunOld: Double;
    procedure SetPerFunOld(const pPerFun: Double);
    function GetDatEntOld: TDate;
    procedure SetDatEntOld(const pDatEnt: TDate);
    function GetCodPvpOld: string;
    procedure SetCodPvpOld(const pCodPvp: string);
    function GetNumPrjOld: Integer;
    procedure SetNumPrjOld(const pNumPrj: Integer);
    function GetCodFpjOld: Integer;
    procedure SetCodFpjOld(const pCodFpj: Integer);
    function GetCtaFinOld: Integer;
    procedure SetCtaFinOld(const pCtaFin: Integer);
    function GetCtaRedOld: Integer;
    procedure SetCtaRedOld(const pCtaRed: Integer);
    function GetCodCcuOld: string;
    procedure SetCodCcuOld(const pCodCcu: string);
    function GetVlrFreOld: Double;
    procedure SetVlrFreOld(const pVlrFre: Double);
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
    function GetVlrBruOld: Double;
    procedure SetVlrBruOld(const pVlrBru: Double);
    function GetVlrDscOld: Double;
    procedure SetVlrDscOld(const pVlrDsc: Double);
    function GetVlrDs1Old: Double;
    procedure SetVlrDs1Old(const pVlrDs1: Double);
    function GetVlrDs2Old: Double;
    procedure SetVlrDs2Old(const pVlrDs2: Double);
    function GetVlrDs3Old: Double;
    procedure SetVlrDs3Old(const pVlrDs3: Double);
    function GetVlrDs4Old: Double;
    procedure SetVlrDs4Old(const pVlrDs4: Double);
    function GetVlrDs5Old: Double;
    procedure SetVlrDs5Old(const pVlrDs5: Double);
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
    function GetVlrIcsOld: Double;
    procedure SetVlrIcsOld(const pVlrIcs: Double);
    function GetVlrBspOld: Double;
    procedure SetVlrBspOld(const pVlrBsp: Double);
    function GetVlrStpOld: Double;
    procedure SetVlrStpOld(const pVlrStp: Double);
    function GetVlrBscOld: Double;
    procedure SetVlrBscOld(const pVlrBsc: Double);
    function GetVlrStcOld: Double;
    procedure SetVlrStcOld(const pVlrStc: Double);
    function GetVlrLprOld: Double;
    procedure SetVlrLprOld(const pVlrLpr: Double);
    function GetVlrLouOld: Double;
    procedure SetVlrLouOld(const pVlrLou: Double);
    function GetVlrLiqOld: Double;
    procedure SetVlrLiqOld(const pVlrLiq: Double);
    function GetVlrFinOld: Double;
    procedure SetVlrFinOld(const pVlrFin: Double);
    function GetAcrFinOld: Double;
    procedure SetAcrFinOld(const pAcrFin: Double);
    function GetSitIpoOld: Integer;
    procedure SetSitIpoOld(const pSitIpo: Integer);
    function GetCodMotOld: Integer;
    procedure SetCodMotOld(const pCodMot: Integer);
    function GetObsMotOld: string;
    procedure SetObsMotOld(const pObsMot: string);
    function GetSeqIpdOld: Integer;
    procedure SetSeqIpdOld(const pSeqIpd: Integer);
    function GetFilCtrOld: Integer;
    procedure SetFilCtrOld(const pFilCtr: Integer);
    function GetNumCtrOld: Integer;
    procedure SetNumCtrOld(const pNumCtr: Integer);
    function GetDatCptOld: TDate;
    procedure SetDatCptOld(const pDatCpt: TDate);
    function GetSeqCcpOld: Integer;
    procedure SetSeqCcpOld(const pSeqCcp: Integer);
    function GetIndEqiOld: Char;
    procedure SetIndEqiOld(const pIndEqi: Char);
    function GetUsuGerOld: Integer;
    procedure SetUsuGerOld(const pUsuGer: Integer);
    function GetDatGerOld: TDate;
    procedure SetDatGerOld(const pDatGer: TDate);
    function GetHorGerOld: Integer;
    procedure SetHorGerOld(const pHorGer: Integer);
    function GetFilPedOld: Integer;
    procedure SetFilPedOld(const pFilPed: Integer);
    function GetNumPedOld: Integer;
    procedure SetNumPedOld(const pNumPed: Integer);
    function GetDatVltOld: TDate;
    procedure SetDatVltOld(const pDatVlt: TDate);
    function GetQtdForOld: Double;
    procedure SetQtdForOld(const pQtdFor: Double);
    function GetPreForOld: Double;
    procedure SetPreForOld(const pPreFor: Double);
    function GetCodMoeOld: string;
    procedure SetCodMoeOld(const pCodMoe: string);
    function GetDatMoeOld: TDate;
    procedure SetDatMoeOld(const pDatMoe: TDate);
    function GetCotMoeOld: Double;
    procedure SetCotMoeOld(const pCotMoe: Double);
    function GetFecMoeOld: Char;
    procedure SetFecMoeOld(const pFecMoe: Char);
    function GetPerIimOld: Double;
    procedure SetPerIimOld(const pPerIim: Double);
    function GetVlrBiiOld: Double;
    procedure SetVlrBiiOld(const pVlrBii: Double);
    function GetVlrIimOld: Double;
    procedure SetVlrIimOld(const pVlrIim: Double);
    function GetVlrRisOld: Double;
    procedure SetVlrRisOld(const pVlrRis: Double);
    function GetSeqIorOld: Integer;
    procedure SetSeqIorOld(const pSeqIor: Integer);
    function GetVlrBpiOld: Double;
    procedure SetVlrBpiOld(const pVlrBpi: Double);
    function GetVlrPisOld: Double;
    procedure SetVlrPisOld(const pVlrPis: Double);
    function GetVlrBcrOld: Double;
    procedure SetVlrBcrOld(const pVlrBcr: Double);
    function GetVlrCorOld: Double;
    procedure SetVlrCorOld(const pVlrCor: Double);
    function GetCodFxaOld: string;
    procedure SetCodFxaOld(const pCodFxa: string);
    function GetIdxGrdOld: Integer;
    procedure SetIdxGrdOld(const pIdxGrd: Integer);
    function GetPerPitOld: Double;
    procedure SetPerPitOld(const pPerPit: Double);
    function GetVlrBptOld: Double;
    procedure SetVlrBptOld(const pVlrBpt: Double);
    function GetVlrPitOld: Double;
    procedure SetVlrPitOld(const pVlrPit: Double);
    function GetPerCrtOld: Double;
    procedure SetPerCrtOld(const pPerCrt: Double);
    function GetVlrBctOld: Double;
    procedure SetVlrBctOld(const pVlrBct: Double);
    function GetVlrCrtOld: Double;
    procedure SetVlrCrtOld(const pVlrCrt: Double);
    function GetPerCslOld: Double;
    procedure SetPerCslOld(const pPerCsl: Double);
    function GetVlrBclOld: Double;
    procedure SetVlrBclOld(const pVlrBcl: Double);
    function GetVlrCslOld: Double;
    procedure SetVlrCslOld(const pVlrCsl: Double);
    function GetPerOurOld: Double;
    procedure SetPerOurOld(const pPerOur: Double);
    function GetVlrBorOld: Double;
    procedure SetVlrBorOld(const pVlrBor: Double);
    function GetVlrOurOld: Double;
    procedure SetVlrOurOld(const pVlrOur: Double);
    function GetPerIrfOld: Double;
    procedure SetPerIrfOld(const pPerIrf: Double);
    function GetVlrBirOld: Double;
    procedure SetVlrBirOld(const pVlrBir: Double);
    function GetVlrIrfOld: Double;
    procedure SetVlrIrfOld(const pVlrIrf: Double);
    function GetFilCesOld: Integer;
    procedure SetFilCesOld(const pFilCes: Integer);
    function GetDatCesOld: TDate;
    procedure SetDatCesOld(const pDatCes: TDate);
    function GetSeqCesOld: Integer;
    procedure SetSeqCesOld(const pSeqCes: Integer);
    function GetPerDs1Old: Double;
    procedure SetPerDs1Old(const pPerDs1: Double);
    function GetPerDs2Old: Double;
    procedure SetPerDs2Old(const pPerDs2: Double);
    function GetVlrOriOld: Double;
    procedure SetVlrOriOld(const pVlrOri: Double);
    function GetQtdOriOld: Double;
    procedure SetQtdOriOld(const pQtdOri: Double);
    function GetVlrFeiOld: Double;
    procedure SetVlrFeiOld(const pVlrFei: Double);
    function GetVlrSeiOld: Double;
    procedure SetVlrSeiOld(const pVlrSei: Double);
    function GetVlrOuiOld: Double;
    procedure SetVlrOuiOld(const pVlrOui: Double);
    function GetBcoImpOld: Double;
    procedure SetBcoImpOld(const pBcoImp: Double);
    function GetCofImpOld: Double;
    procedure SetCofImpOld(const pCofImp: Double);
    function GetBpiImpOld: Double;
    procedure SetBpiImpOld(const pBpiImp: Double);
    function GetPisImpOld: Double;
    procedure SetPisImpOld(const pPisImp: Double);
    function GetSeqCpkOld: Integer;
    procedure SetSeqCpkOld(const pSeqCpk: Integer);
    function GetVlrDm1Old: Double;
    procedure SetVlrDm1Old(const pVlrDm1: Double);
    function GetVlrDm2Old: Double;
    procedure SetVlrDm2Old(const pVlrDm2: Double);
    function GetVlrDm3Old: Double;
    procedure SetVlrDm3Old(const pVlrDm3: Double);
    function GetVlrDm4Old: Double;
    procedure SetVlrDm4Old(const pVlrDm4: Double);
    function GetVlrDm5Old: Double;
    procedure SetVlrDm5Old(const pVlrDm5: Double);
    function GetVlrDm6Old: Double;
    procedure SetVlrDm6Old(const pVlrDm6: Double);
    function GetBemPriOld: string;
    procedure SetBemPriOld(const pBemPri: string);
    function GetEmpPedOld: Integer;
    procedure SetEmpPedOld(const pEmpPed: Integer);
    function GetEmpNfvOld: Integer;
    procedure SetEmpNfvOld(const pEmpNfv: Integer);
    function GetFilNfvOld: Integer;
    procedure SetFilNfvOld(const pFilNfv: Integer);
    function GetSnfNfvOld: string;
    procedure SetSnfNfvOld(const pSnfNfv: string);
    function GetNumNfvOld: Integer;
    procedure SetNumNfvOld(const pNumNfv: Integer);
    function GetSeqIpvOld: Integer;
    procedure SetSeqIpvOld(const pSeqIpv: Integer);
    function GetCodTrgOld: string;
    procedure SetCodTrgOld(const pCodTrg: string);
    function GetPerBonOld: Double;
    procedure SetPerBonOld(const pPerBon: Double);
    function GetVlrDfaOld: Double;
    procedure SetVlrDfaOld(const pVlrDfa: Double);
    function GetQtdBpiOld: Double;
    procedure SetQtdBpiOld(const pQtdBpi: Double);
    function GetAliPisOld: Double;
    procedure SetAliPisOld(const pAliPis: Double);
    function GetQtdBcoOld: Double;
    procedure SetQtdBcoOld(const pQtdBco: Double);
    function GetAliCofOld: Double;
    procedure SetAliCofOld(const pAliCof: Double);
    function GetQtdBipOld: Double;
    procedure SetQtdBipOld(const pQtdBip: Double);
    function GetAliIpiOld: Double;
    procedure SetAliIpiOld(const pAliIpi: Double);
    function GetCodFabOld: string;
    procedure SetCodFabOld(const pCodFab: string);
    function GetProFabOld: string;
    procedure SetProFabOld(const pProFab: string);
    function GetSubProOld: Char;
    procedure SetSubProOld(const pSubPro: Char);
    function GetTipCurOld: Integer;
    procedure SetTipCurOld(const pTipCur: Integer);
    function GetUSU_DatConOld: TDate;
    procedure SetUSU_DatConOld(const pUSU_DatCon: TDate);
    function GetUSU_UsuModOld: Integer;
    procedure SetUSU_UsuModOld(const pUSU_UsuMod: Integer);
    function GetUSU_DatModOld: TDate;
    procedure SetUSU_DatModOld(const pUSU_DatMod: TDate);
    function GetUSU_HorModOld: Integer;
    procedure SetUSU_HorModOld(const pUSU_HorMod: Integer);
    function GetUSU_LisCliOld: string;
    procedure SetUSU_LisCliOld(const pUSU_LisCli: string);
    function GetUSU_QtdExaOld: Char;
    procedure SetUSU_QtdExaOld(const pUSU_QtdExa: Char);
    function GetUSU_TipTrfOld: Char;
    procedure SetUSU_TipTrfOld(const pUSU_TipTrf: Char);
    function GetUSU_OC831Old: Char;
    procedure SetUSU_OC831Old(const pUSU_OC831: Char);
    function GetUSU_QtdAnaOld: Double;
    procedure SetUSU_QtdAnaOld(const pUSU_QtdAna: Double);
    function GetUSU_NumAnaOld: Integer;
    procedure SetUSU_NumAnaOld(const pUSU_NumAna: Integer);
    function GetUSU_FilPedOld: Integer;
    procedure SetUSU_FilPedOld(const pUSU_FilPed: Integer);
    function GetUSU_NumPedOld: Integer;
    procedure SetUSU_NumPedOld(const pUSU_NumPed: Integer);
    function GetUSU_SeqIpdOld: Integer;
    procedure SetUSU_SeqIpdOld(const pUSU_SeqIpd: Integer);
    function GetUSU_ObsImpOld: string;
    procedure SetUSU_ObsImpOld(const pUSU_ObsImp: string);
    function GetUSU_NumReqOld: Integer;
    procedure SetUSU_NumReqOld(const pUSU_NumReq: Integer);
    function GetUSU_SeqReqOld: Integer;
    procedure SetUSU_SeqReqOld(const pUSU_SeqReq: Integer);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property CodEmp: Integer read GetCodEmp write SetCodEmp;
    property CodFil: Integer read GetCodFil write SetCodFil;
    property NumOcp: Integer read GetNumOcp write SetNumOcp;
    property SeqIpo: Integer read GetSeqIpo write SetSeqIpo;
    property TnsPro: string read GetTnsPro write SetTnsPro;
    property CodPro: string read GetCodPro write SetCodPro;
    property CodDer: string read GetCodDer write SetCodDer;
    property CplIpo: string read GetCplIpo write SetCplIpo;
    property ProFor: string read GetProFor write SetProFor;
    property DesFor: string read GetDesFor write SetDesFor;
    property UniFor: string read GetUniFor write SetUniFor;
    property CodFam: string read GetCodFam write SetCodFam;
    property CodTic: string read GetCodTic write SetCodTic;
    property CodTrd: string read GetCodTrd write SetCodTrd;
    property CodTst: string read GetCodTst write SetCodTst;
    property CodStp: string read GetCodStp write SetCodStp;
    property CodStc: string read GetCodStc write SetCodStc;
    property CodDep: string read GetCodDep write SetCodDep;
    property CodLot: string read GetCodLot write SetCodLot;
    property QtdPed: Double read GetQtdPed write SetQtdPed;
    property QtdRec: Double read GetQtdRec write SetQtdRec;
    property QtdCan: Double read GetQtdCan write SetQtdCan;
    property QtdAbe: Double read GetQtdAbe write SetQtdAbe;
    property UniMed: string read GetUniMed write SetUniMed;
    property CodTpr: string read GetCodTpr write SetCodTpr;
    property PreUni: Double read GetPreUni write SetPreUni;
    property PreFix: Char read GetPreFix write SetPreFix;
    property PerDsc: Double read GetPerDsc write SetPerDsc;
    property PerDs3: Double read GetPerDs3 write SetPerDs3;
    property PerDs4: Double read GetPerDs4 write SetPerDs4;
    property PerDs5: Double read GetPerDs5 write SetPerDs5;
    property PerIpi: Double read GetPerIpi write SetPerIpi;
    property PerIcm: Double read GetPerIcm write SetPerIcm;
    property PerFun: Double read GetPerFun write SetPerFun;
    property DatEnt: TDate read GetDatEnt write SetDatEnt;
    property CodPvp: string read GetCodPvp write SetCodPvp;
    property NumPrj: Integer read GetNumPrj write SetNumPrj;
    property CodFpj: Integer read GetCodFpj write SetCodFpj;
    property CtaFin: Integer read GetCtaFin write SetCtaFin;
    property CtaRed: Integer read GetCtaRed write SetCtaRed;
    property CodCcu: string read GetCodCcu write SetCodCcu;
    property VlrFre: Double read GetVlrFre write SetVlrFre;
    property VlrSeg: Double read GetVlrSeg write SetVlrSeg;
    property VlrEmb: Double read GetVlrEmb write SetVlrEmb;
    property VlrEnc: Double read GetVlrEnc write SetVlrEnc;
    property VlrOut: Double read GetVlrOut write SetVlrOut;
    property VlrDar: Double read GetVlrDar write SetVlrDar;
    property VlrFrd: Double read GetVlrFrd write SetVlrFrd;
    property VlrOud: Double read GetVlrOud write SetVlrOud;
    property VlrBru: Double read GetVlrBru write SetVlrBru;
    property VlrDsc: Double read GetVlrDsc write SetVlrDsc;
    property VlrDs1: Double read GetVlrDs1 write SetVlrDs1;
    property VlrDs2: Double read GetVlrDs2 write SetVlrDs2;
    property VlrDs3: Double read GetVlrDs3 write SetVlrDs3;
    property VlrDs4: Double read GetVlrDs4 write SetVlrDs4;
    property VlrDs5: Double read GetVlrDs5 write SetVlrDs5;
    property VlrDzf: Double read GetVlrDzf write SetVlrDzf;
    property VlrBfu: Double read GetVlrBfu write SetVlrBfu;
    property VlrFun: Double read GetVlrFun write SetVlrFun;
    property VlrBip: Double read GetVlrBip write SetVlrBip;
    property VlrIpi: Double read GetVlrIpi write SetVlrIpi;
    property VlrBic: Double read GetVlrBic write SetVlrBic;
    property VlrIcm: Double read GetVlrIcm write SetVlrIcm;
    property VlrBsi: Double read GetVlrBsi write SetVlrBsi;
    property VlrIcs: Double read GetVlrIcs write SetVlrIcs;
    property VlrBsp: Double read GetVlrBsp write SetVlrBsp;
    property VlrStp: Double read GetVlrStp write SetVlrStp;
    property VlrBsc: Double read GetVlrBsc write SetVlrBsc;
    property VlrStc: Double read GetVlrStc write SetVlrStc;
    property VlrLpr: Double read GetVlrLpr write SetVlrLpr;
    property VlrLou: Double read GetVlrLou write SetVlrLou;
    property VlrLiq: Double read GetVlrLiq write SetVlrLiq;
    property VlrFin: Double read GetVlrFin write SetVlrFin;
    property AcrFin: Double read GetAcrFin write SetAcrFin;
    property SitIpo: Integer read GetSitIpo write SetSitIpo;
    property CodMot: Integer read GetCodMot write SetCodMot;
    property ObsMot: string read GetObsMot write SetObsMot;
    property SeqIpd: Integer read GetSeqIpd write SetSeqIpd;
    property FilCtr: Integer read GetFilCtr write SetFilCtr;
    property NumCtr: Integer read GetNumCtr write SetNumCtr;
    property DatCpt: TDate read GetDatCpt write SetDatCpt;
    property SeqCcp: Integer read GetSeqCcp write SetSeqCcp;
    property IndEqi: Char read GetIndEqi write SetIndEqi;
    property UsuGer: Integer read GetUsuGer write SetUsuGer;
    property DatGer: TDate read GetDatGer write SetDatGer;
    property HorGer: Integer read GetHorGer write SetHorGer;
    property FilPed: Integer read GetFilPed write SetFilPed;
    property NumPed: Integer read GetNumPed write SetNumPed;
    property DatVlt: TDate read GetDatVlt write SetDatVlt;
    property QtdFor: Double read GetQtdFor write SetQtdFor;
    property PreFor: Double read GetPreFor write SetPreFor;
    property CodMoe: string read GetCodMoe write SetCodMoe;
    property DatMoe: TDate read GetDatMoe write SetDatMoe;
    property CotMoe: Double read GetCotMoe write SetCotMoe;
    property FecMoe: Char read GetFecMoe write SetFecMoe;
    property PerIim: Double read GetPerIim write SetPerIim;
    property VlrBii: Double read GetVlrBii write SetVlrBii;
    property VlrIim: Double read GetVlrIim write SetVlrIim;
    property VlrRis: Double read GetVlrRis write SetVlrRis;
    property SeqIor: Integer read GetSeqIor write SetSeqIor;
    property VlrBpi: Double read GetVlrBpi write SetVlrBpi;
    property VlrPis: Double read GetVlrPis write SetVlrPis;
    property VlrBcr: Double read GetVlrBcr write SetVlrBcr;
    property VlrCor: Double read GetVlrCor write SetVlrCor;
    property CodFxa: string read GetCodFxa write SetCodFxa;
    property IdxGrd: Integer read GetIdxGrd write SetIdxGrd;
    property PerPit: Double read GetPerPit write SetPerPit;
    property VlrBpt: Double read GetVlrBpt write SetVlrBpt;
    property VlrPit: Double read GetVlrPit write SetVlrPit;
    property PerCrt: Double read GetPerCrt write SetPerCrt;
    property VlrBct: Double read GetVlrBct write SetVlrBct;
    property VlrCrt: Double read GetVlrCrt write SetVlrCrt;
    property PerCsl: Double read GetPerCsl write SetPerCsl;
    property VlrBcl: Double read GetVlrBcl write SetVlrBcl;
    property VlrCsl: Double read GetVlrCsl write SetVlrCsl;
    property PerOur: Double read GetPerOur write SetPerOur;
    property VlrBor: Double read GetVlrBor write SetVlrBor;
    property VlrOur: Double read GetVlrOur write SetVlrOur;
    property PerIrf: Double read GetPerIrf write SetPerIrf;
    property VlrBir: Double read GetVlrBir write SetVlrBir;
    property VlrIrf: Double read GetVlrIrf write SetVlrIrf;
    property FilCes: Integer read GetFilCes write SetFilCes;
    property DatCes: TDate read GetDatCes write SetDatCes;
    property SeqCes: Integer read GetSeqCes write SetSeqCes;
    property PerDs1: Double read GetPerDs1 write SetPerDs1;
    property PerDs2: Double read GetPerDs2 write SetPerDs2;
    property VlrOri: Double read GetVlrOri write SetVlrOri;
    property QtdOri: Double read GetQtdOri write SetQtdOri;
    property VlrFei: Double read GetVlrFei write SetVlrFei;
    property VlrSei: Double read GetVlrSei write SetVlrSei;
    property VlrOui: Double read GetVlrOui write SetVlrOui;
    property BcoImp: Double read GetBcoImp write SetBcoImp;
    property CofImp: Double read GetCofImp write SetCofImp;
    property BpiImp: Double read GetBpiImp write SetBpiImp;
    property PisImp: Double read GetPisImp write SetPisImp;
    property SeqCpk: Integer read GetSeqCpk write SetSeqCpk;
    property VlrDm1: Double read GetVlrDm1 write SetVlrDm1;
    property VlrDm2: Double read GetVlrDm2 write SetVlrDm2;
    property VlrDm3: Double read GetVlrDm3 write SetVlrDm3;
    property VlrDm4: Double read GetVlrDm4 write SetVlrDm4;
    property VlrDm5: Double read GetVlrDm5 write SetVlrDm5;
    property VlrDm6: Double read GetVlrDm6 write SetVlrDm6;
    property BemPri: string read GetBemPri write SetBemPri;
    property EmpPed: Integer read GetEmpPed write SetEmpPed;
    property EmpNfv: Integer read GetEmpNfv write SetEmpNfv;
    property FilNfv: Integer read GetFilNfv write SetFilNfv;
    property SnfNfv: string read GetSnfNfv write SetSnfNfv;
    property NumNfv: Integer read GetNumNfv write SetNumNfv;
    property SeqIpv: Integer read GetSeqIpv write SetSeqIpv;
    property CodTrg: string read GetCodTrg write SetCodTrg;
    property PerBon: Double read GetPerBon write SetPerBon;
    property VlrDfa: Double read GetVlrDfa write SetVlrDfa;
    property QtdBpi: Double read GetQtdBpi write SetQtdBpi;
    property AliPis: Double read GetAliPis write SetAliPis;
    property QtdBco: Double read GetQtdBco write SetQtdBco;
    property AliCof: Double read GetAliCof write SetAliCof;
    property QtdBip: Double read GetQtdBip write SetQtdBip;
    property AliIpi: Double read GetAliIpi write SetAliIpi;
    property CodFab: string read GetCodFab write SetCodFab;
    property ProFab: string read GetProFab write SetProFab;
    property SubPro: Char read GetSubPro write SetSubPro;
    property TipCur: Integer read GetTipCur write SetTipCur;
    property USU_DatCon: TDate read GetUSU_DatCon write SetUSU_DatCon;
    property USU_UsuMod: Integer read GetUSU_UsuMod write SetUSU_UsuMod;
    property USU_DatMod: TDate read GetUSU_DatMod write SetUSU_DatMod;
    property USU_HorMod: Integer read GetUSU_HorMod write SetUSU_HorMod;
    property USU_LisCli: string read GetUSU_LisCli write SetUSU_LisCli;
    property USU_QtdExa: Char read GetUSU_QtdExa write SetUSU_QtdExa;
    property USU_TipTrf: Char read GetUSU_TipTrf write SetUSU_TipTrf;
    property USU_OC831: Char read GetUSU_OC831 write SetUSU_OC831;
    property USU_QtdAna: Double read GetUSU_QtdAna write SetUSU_QtdAna;
    property USU_NumAna: Integer read GetUSU_NumAna write SetUSU_NumAna;
    property USU_FilPed: Integer read GetUSU_FilPed write SetUSU_FilPed;
    property USU_NumPed: Integer read GetUSU_NumPed write SetUSU_NumPed;
    property USU_SeqIpd: Integer read GetUSU_SeqIpd write SetUSU_SeqIpd;
    property USU_ObsImp: string read GetUSU_ObsImp write SetUSU_ObsImp;
    property USU_NumReq: Integer read GetUSU_NumReq write SetUSU_NumReq;
    property USU_SeqReq: Integer read GetUSU_SeqReq write SetUSU_SeqReq;

    property OLD_CodEmp: Integer read GetCodEmpOLD write SetCodEmpOLD;
    property OLD_CodFil: Integer read GetCodFilOLD write SetCodFilOLD;
    property OLD_NumOcp: Integer read GetNumOcpOLD write SetNumOcpOLD;
    property OLD_SeqIpo: Integer read GetSeqIpoOLD write SetSeqIpoOLD;
    property OLD_TnsPro: string read GetTnsProOLD write SetTnsProOLD;
    property OLD_CodPro: string read GetCodProOLD write SetCodProOLD;
    property OLD_CodDer: string read GetCodDerOLD write SetCodDerOLD;
    property OLD_CplIpo: string read GetCplIpoOLD write SetCplIpoOLD;
    property OLD_ProFor: string read GetProForOLD write SetProForOLD;
    property OLD_DesFor: string read GetDesForOLD write SetDesForOLD;
    property OLD_UniFor: string read GetUniForOLD write SetUniForOLD;
    property OLD_CodFam: string read GetCodFamOLD write SetCodFamOLD;
    property OLD_CodTic: string read GetCodTicOLD write SetCodTicOLD;
    property OLD_CodTrd: string read GetCodTrdOLD write SetCodTrdOLD;
    property OLD_CodTst: string read GetCodTstOLD write SetCodTstOLD;
    property OLD_CodStp: string read GetCodStpOLD write SetCodStpOLD;
    property OLD_CodStc: string read GetCodStcOLD write SetCodStcOLD;
    property OLD_CodDep: string read GetCodDepOLD write SetCodDepOLD;
    property OLD_CodLot: string read GetCodLotOLD write SetCodLotOLD;
    property OLD_QtdPed: Double read GetQtdPedOLD write SetQtdPedOLD;
    property OLD_QtdRec: Double read GetQtdRecOLD write SetQtdRecOLD;
    property OLD_QtdCan: Double read GetQtdCanOLD write SetQtdCanOLD;
    property OLD_QtdAbe: Double read GetQtdAbeOLD write SetQtdAbeOLD;
    property OLD_UniMed: string read GetUniMedOLD write SetUniMedOLD;
    property OLD_CodTpr: string read GetCodTprOLD write SetCodTprOLD;
    property OLD_PreUni: Double read GetPreUniOLD write SetPreUniOLD;
    property OLD_PreFix: Char read GetPreFixOLD write SetPreFixOLD;
    property OLD_PerDsc: Double read GetPerDscOLD write SetPerDscOLD;
    property OLD_PerDs3: Double read GetPerDs3OLD write SetPerDs3OLD;
    property OLD_PerDs4: Double read GetPerDs4OLD write SetPerDs4OLD;
    property OLD_PerDs5: Double read GetPerDs5OLD write SetPerDs5OLD;
    property OLD_PerIpi: Double read GetPerIpiOLD write SetPerIpiOLD;
    property OLD_PerIcm: Double read GetPerIcmOLD write SetPerIcmOLD;
    property OLD_PerFun: Double read GetPerFunOLD write SetPerFunOLD;
    property OLD_DatEnt: TDate read GetDatEntOLD write SetDatEntOLD;
    property OLD_CodPvp: string read GetCodPvpOLD write SetCodPvpOLD;
    property OLD_NumPrj: Integer read GetNumPrjOLD write SetNumPrjOLD;
    property OLD_CodFpj: Integer read GetCodFpjOLD write SetCodFpjOLD;
    property OLD_CtaFin: Integer read GetCtaFinOLD write SetCtaFinOLD;
    property OLD_CtaRed: Integer read GetCtaRedOLD write SetCtaRedOLD;
    property OLD_CodCcu: string read GetCodCcuOLD write SetCodCcuOLD;
    property OLD_VlrFre: Double read GetVlrFreOLD write SetVlrFreOLD;
    property OLD_VlrSeg: Double read GetVlrSegOLD write SetVlrSegOLD;
    property OLD_VlrEmb: Double read GetVlrEmbOLD write SetVlrEmbOLD;
    property OLD_VlrEnc: Double read GetVlrEncOLD write SetVlrEncOLD;
    property OLD_VlrOut: Double read GetVlrOutOLD write SetVlrOutOLD;
    property OLD_VlrDar: Double read GetVlrDarOLD write SetVlrDarOLD;
    property OLD_VlrFrd: Double read GetVlrFrdOLD write SetVlrFrdOLD;
    property OLD_VlrOud: Double read GetVlrOudOLD write SetVlrOudOLD;
    property OLD_VlrBru: Double read GetVlrBruOLD write SetVlrBruOLD;
    property OLD_VlrDsc: Double read GetVlrDscOLD write SetVlrDscOLD;
    property OLD_VlrDs1: Double read GetVlrDs1OLD write SetVlrDs1OLD;
    property OLD_VlrDs2: Double read GetVlrDs2OLD write SetVlrDs2OLD;
    property OLD_VlrDs3: Double read GetVlrDs3OLD write SetVlrDs3OLD;
    property OLD_VlrDs4: Double read GetVlrDs4OLD write SetVlrDs4OLD;
    property OLD_VlrDs5: Double read GetVlrDs5OLD write SetVlrDs5OLD;
    property OLD_VlrDzf: Double read GetVlrDzfOLD write SetVlrDzfOLD;
    property OLD_VlrBfu: Double read GetVlrBfuOLD write SetVlrBfuOLD;
    property OLD_VlrFun: Double read GetVlrFunOLD write SetVlrFunOLD;
    property OLD_VlrBip: Double read GetVlrBipOLD write SetVlrBipOLD;
    property OLD_VlrIpi: Double read GetVlrIpiOLD write SetVlrIpiOLD;
    property OLD_VlrBic: Double read GetVlrBicOLD write SetVlrBicOLD;
    property OLD_VlrIcm: Double read GetVlrIcmOLD write SetVlrIcmOLD;
    property OLD_VlrBsi: Double read GetVlrBsiOLD write SetVlrBsiOLD;
    property OLD_VlrIcs: Double read GetVlrIcsOLD write SetVlrIcsOLD;
    property OLD_VlrBsp: Double read GetVlrBspOLD write SetVlrBspOLD;
    property OLD_VlrStp: Double read GetVlrStpOLD write SetVlrStpOLD;
    property OLD_VlrBsc: Double read GetVlrBscOLD write SetVlrBscOLD;
    property OLD_VlrStc: Double read GetVlrStcOLD write SetVlrStcOLD;
    property OLD_VlrLpr: Double read GetVlrLprOLD write SetVlrLprOLD;
    property OLD_VlrLou: Double read GetVlrLouOLD write SetVlrLouOLD;
    property OLD_VlrLiq: Double read GetVlrLiqOLD write SetVlrLiqOLD;
    property OLD_VlrFin: Double read GetVlrFinOLD write SetVlrFinOLD;
    property OLD_AcrFin: Double read GetAcrFinOLD write SetAcrFinOLD;
    property OLD_SitIpo: Integer read GetSitIpoOLD write SetSitIpoOLD;
    property OLD_CodMot: Integer read GetCodMotOLD write SetCodMotOLD;
    property OLD_ObsMot: string read GetObsMotOLD write SetObsMotOLD;
    property OLD_SeqIpd: Integer read GetSeqIpdOLD write SetSeqIpdOLD;
    property OLD_FilCtr: Integer read GetFilCtrOLD write SetFilCtrOLD;
    property OLD_NumCtr: Integer read GetNumCtrOLD write SetNumCtrOLD;
    property OLD_DatCpt: TDate read GetDatCptOLD write SetDatCptOLD;
    property OLD_SeqCcp: Integer read GetSeqCcpOLD write SetSeqCcpOLD;
    property OLD_IndEqi: Char read GetIndEqiOLD write SetIndEqiOLD;
    property OLD_UsuGer: Integer read GetUsuGerOLD write SetUsuGerOLD;
    property OLD_DatGer: TDate read GetDatGerOLD write SetDatGerOLD;
    property OLD_HorGer: Integer read GetHorGerOLD write SetHorGerOLD;
    property OLD_FilPed: Integer read GetFilPedOLD write SetFilPedOLD;
    property OLD_NumPed: Integer read GetNumPedOLD write SetNumPedOLD;
    property OLD_DatVlt: TDate read GetDatVltOLD write SetDatVltOLD;
    property OLD_QtdFor: Double read GetQtdForOLD write SetQtdForOLD;
    property OLD_PreFor: Double read GetPreForOLD write SetPreForOLD;
    property OLD_CodMoe: string read GetCodMoeOLD write SetCodMoeOLD;
    property OLD_DatMoe: TDate read GetDatMoeOLD write SetDatMoeOLD;
    property OLD_CotMoe: Double read GetCotMoeOLD write SetCotMoeOLD;
    property OLD_FecMoe: Char read GetFecMoeOLD write SetFecMoeOLD;
    property OLD_PerIim: Double read GetPerIimOLD write SetPerIimOLD;
    property OLD_VlrBii: Double read GetVlrBiiOLD write SetVlrBiiOLD;
    property OLD_VlrIim: Double read GetVlrIimOLD write SetVlrIimOLD;
    property OLD_VlrRis: Double read GetVlrRisOLD write SetVlrRisOLD;
    property OLD_SeqIor: Integer read GetSeqIorOLD write SetSeqIorOLD;
    property OLD_VlrBpi: Double read GetVlrBpiOLD write SetVlrBpiOLD;
    property OLD_VlrPis: Double read GetVlrPisOLD write SetVlrPisOLD;
    property OLD_VlrBcr: Double read GetVlrBcrOLD write SetVlrBcrOLD;
    property OLD_VlrCor: Double read GetVlrCorOLD write SetVlrCorOLD;
    property OLD_CodFxa: string read GetCodFxaOLD write SetCodFxaOLD;
    property OLD_IdxGrd: Integer read GetIdxGrdOLD write SetIdxGrdOLD;
    property OLD_PerPit: Double read GetPerPitOLD write SetPerPitOLD;
    property OLD_VlrBpt: Double read GetVlrBptOLD write SetVlrBptOLD;
    property OLD_VlrPit: Double read GetVlrPitOLD write SetVlrPitOLD;
    property OLD_PerCrt: Double read GetPerCrtOLD write SetPerCrtOLD;
    property OLD_VlrBct: Double read GetVlrBctOLD write SetVlrBctOLD;
    property OLD_VlrCrt: Double read GetVlrCrtOLD write SetVlrCrtOLD;
    property OLD_PerCsl: Double read GetPerCslOLD write SetPerCslOLD;
    property OLD_VlrBcl: Double read GetVlrBclOLD write SetVlrBclOLD;
    property OLD_VlrCsl: Double read GetVlrCslOLD write SetVlrCslOLD;
    property OLD_PerOur: Double read GetPerOurOLD write SetPerOurOLD;
    property OLD_VlrBor: Double read GetVlrBorOLD write SetVlrBorOLD;
    property OLD_VlrOur: Double read GetVlrOurOLD write SetVlrOurOLD;
    property OLD_PerIrf: Double read GetPerIrfOLD write SetPerIrfOLD;
    property OLD_VlrBir: Double read GetVlrBirOLD write SetVlrBirOLD;
    property OLD_VlrIrf: Double read GetVlrIrfOLD write SetVlrIrfOLD;
    property OLD_FilCes: Integer read GetFilCesOLD write SetFilCesOLD;
    property OLD_DatCes: TDate read GetDatCesOLD write SetDatCesOLD;
    property OLD_SeqCes: Integer read GetSeqCesOLD write SetSeqCesOLD;
    property OLD_PerDs1: Double read GetPerDs1OLD write SetPerDs1OLD;
    property OLD_PerDs2: Double read GetPerDs2OLD write SetPerDs2OLD;
    property OLD_VlrOri: Double read GetVlrOriOLD write SetVlrOriOLD;
    property OLD_QtdOri: Double read GetQtdOriOLD write SetQtdOriOLD;
    property OLD_VlrFei: Double read GetVlrFeiOLD write SetVlrFeiOLD;
    property OLD_VlrSei: Double read GetVlrSeiOLD write SetVlrSeiOLD;
    property OLD_VlrOui: Double read GetVlrOuiOLD write SetVlrOuiOLD;
    property OLD_BcoImp: Double read GetBcoImpOLD write SetBcoImpOLD;
    property OLD_CofImp: Double read GetCofImpOLD write SetCofImpOLD;
    property OLD_BpiImp: Double read GetBpiImpOLD write SetBpiImpOLD;
    property OLD_PisImp: Double read GetPisImpOLD write SetPisImpOLD;
    property OLD_SeqCpk: Integer read GetSeqCpkOLD write SetSeqCpkOLD;
    property OLD_VlrDm1: Double read GetVlrDm1OLD write SetVlrDm1OLD;
    property OLD_VlrDm2: Double read GetVlrDm2OLD write SetVlrDm2OLD;
    property OLD_VlrDm3: Double read GetVlrDm3OLD write SetVlrDm3OLD;
    property OLD_VlrDm4: Double read GetVlrDm4OLD write SetVlrDm4OLD;
    property OLD_VlrDm5: Double read GetVlrDm5OLD write SetVlrDm5OLD;
    property OLD_VlrDm6: Double read GetVlrDm6OLD write SetVlrDm6OLD;
    property OLD_BemPri: string read GetBemPriOLD write SetBemPriOLD;
    property OLD_EmpPed: Integer read GetEmpPedOLD write SetEmpPedOLD;
    property OLD_EmpNfv: Integer read GetEmpNfvOLD write SetEmpNfvOLD;
    property OLD_FilNfv: Integer read GetFilNfvOLD write SetFilNfvOLD;
    property OLD_SnfNfv: string read GetSnfNfvOLD write SetSnfNfvOLD;
    property OLD_NumNfv: Integer read GetNumNfvOLD write SetNumNfvOLD;
    property OLD_SeqIpv: Integer read GetSeqIpvOLD write SetSeqIpvOLD;
    property OLD_CodTrg: string read GetCodTrgOLD write SetCodTrgOLD;
    property OLD_PerBon: Double read GetPerBonOLD write SetPerBonOLD;
    property OLD_VlrDfa: Double read GetVlrDfaOLD write SetVlrDfaOLD;
    property OLD_QtdBpi: Double read GetQtdBpiOLD write SetQtdBpiOLD;
    property OLD_AliPis: Double read GetAliPisOLD write SetAliPisOLD;
    property OLD_QtdBco: Double read GetQtdBcoOLD write SetQtdBcoOLD;
    property OLD_AliCof: Double read GetAliCofOLD write SetAliCofOLD;
    property OLD_QtdBip: Double read GetQtdBipOLD write SetQtdBipOLD;
    property OLD_AliIpi: Double read GetAliIpiOLD write SetAliIpiOLD;
    property OLD_CodFab: string read GetCodFabOLD write SetCodFabOLD;
    property OLD_ProFab: string read GetProFabOLD write SetProFabOLD;
    property OLD_SubPro: Char read GetSubProOLD write SetSubProOLD;
    property OLD_TipCur: Integer read GetTipCurOLD write SetTipCurOLD;
    property OLD_USU_DatCon: TDate read GetUSU_DatConOLD write SetUSU_DatConOLD;
    property OLD_USU_UsuMod: Integer read GetUSU_UsuModOLD write SetUSU_UsuModOLD;
    property OLD_USU_DatMod: TDate read GetUSU_DatModOLD write SetUSU_DatModOLD;
    property OLD_USU_HorMod: Integer read GetUSU_HorModOLD write SetUSU_HorModOLD;
    property OLD_USU_LisCli: string read GetUSU_LisCliOLD write SetUSU_LisCliOLD;
    property OLD_USU_QtdExa: Char read GetUSU_QtdExaOLD write SetUSU_QtdExaOLD;
    property OLD_USU_TipTrf: Char read GetUSU_TipTrfOLD write SetUSU_TipTrfOLD;
    property OLD_USU_OC831: Char read GetUSU_OC831OLD write SetUSU_OC831OLD;
    property OLD_USU_QtdAna: Double read GetUSU_QtdAnaOLD write SetUSU_QtdAnaOLD;
    property OLD_USU_NumAna: Integer read GetUSU_NumAnaOLD write SetUSU_NumAnaOLD;
    property OLD_USU_FilPed: Integer read GetUSU_FilPedOLD write SetUSU_FilPedOLD;
    property OLD_USU_NumPed: Integer read GetUSU_NumPedOLD write SetUSU_NumPedOLD;
    property OLD_USU_SeqIpd: Integer read GetUSU_SeqIpdOLD write SetUSU_SeqIpdOLD;
    property OLD_USU_ObsImp: string read GetUSU_ObsImpOLD write SetUSU_ObsImpOLD;
    property OLD_USU_NumReq: Integer read GetUSU_NumReqOLD write SetUSU_NumReqOLD;
    property OLD_USU_SeqReq: Integer read GetUSU_SeqReqOLD write SetUSU_SeqReqOLD;
  end;

implementation

{ T420IPO }

constructor T420IPO.Create();
begin
  AddForeignKeys(['CodEmp','CodFil','NumOcp','UniMed'], ['CodEmp','CodFil','NumOcp','UniMed']);
  AddPrimaryKeys('CodEmp;CodFil;NumOcp;SeqIpo');

  inherited Create('E420IPO');
end;

destructor T420IPO.Destroy();
begin
  inherited;
end;

function T420IPO.GetCodEmp: Integer;
begin
  Result := FCodEmp;
end;

procedure T420IPO.SetCodEmp(const pCodEmp: Integer);
begin
  FCodEmp := pCodEmp;

  CheckField('CodEmp');
end;

function T420IPO.GetCodFil: Integer;
begin
  Result := FCodFil;
end;

procedure T420IPO.SetCodFil(const pCodFil: Integer);
begin
  FCodFil := pCodFil;

  CheckField('CodFil');
end;

function T420IPO.GetNumOcp: Integer;
begin
  Result := FNumOcp;
end;

procedure T420IPO.SetNumOcp(const pNumOcp: Integer);
begin
  FNumOcp := pNumOcp;

  CheckField('NumOcp');
end;

function T420IPO.GetSeqIpo: Integer;
begin
  Result := FSeqIpo;
end;

procedure T420IPO.SetSeqIpo(const pSeqIpo: Integer);
begin
  FSeqIpo := pSeqIpo;

  CheckField('SeqIpo');
end;

function T420IPO.GetTnsPro: string;
begin
  Result := FTnsPro;
end;

procedure T420IPO.SetTnsPro(const pTnsPro: string);
begin
  FTnsPro := pTnsPro;

  CheckField('TnsPro');
end;

function T420IPO.GetCodPro: string;
begin
  Result := FCodPro;
end;

procedure T420IPO.SetCodPro(const pCodPro: string);
begin
  FCodPro := pCodPro;

  CheckField('CodPro');
end;

function T420IPO.GetCodDer: string;
begin
  Result := FCodDer;
end;

procedure T420IPO.SetCodDer(const pCodDer: string);
begin
  FCodDer := pCodDer;

  CheckField('CodDer');
end;

function T420IPO.GetCplIpo: string;
begin
  Result := FCplIpo;
end;

procedure T420IPO.SetCplIpo(const pCplIpo: string);
begin
  FCplIpo := pCplIpo;

  CheckField('CplIpo');
end;

function T420IPO.GetProFor: string;
begin
  Result := FProFor;
end;

procedure T420IPO.SetProFor(const pProFor: string);
begin
  FProFor := pProFor;

  CheckField('ProFor');
end;

function T420IPO.GetDesFor: string;
begin
  Result := FDesFor;
end;

procedure T420IPO.SetDesFor(const pDesFor: string);
begin
  FDesFor := pDesFor;

  CheckField('DesFor');
end;

function T420IPO.GetUniFor: string;
begin
  Result := FUniFor;
end;

procedure T420IPO.SetUniFor(const pUniFor: string);
begin
  FUniFor := pUniFor;

  CheckField('UniFor');
end;

function T420IPO.GetCodFam: string;
begin
  Result := FCodFam;
end;

procedure T420IPO.SetCodFam(const pCodFam: string);
begin
  FCodFam := pCodFam;

  CheckField('CodFam');
end;

function T420IPO.GetCodTic: string;
begin
  Result := FCodTic;
end;

procedure T420IPO.SetCodTic(const pCodTic: string);
begin
  FCodTic := pCodTic;

  CheckField('CodTic');
end;

function T420IPO.GetCodTrd: string;
begin
  Result := FCodTrd;
end;

procedure T420IPO.SetCodTrd(const pCodTrd: string);
begin
  FCodTrd := pCodTrd;

  CheckField('CodTrd');
end;

function T420IPO.GetCodTst: string;
begin
  Result := FCodTst;
end;

procedure T420IPO.SetCodTst(const pCodTst: string);
begin
  FCodTst := pCodTst;

  CheckField('CodTst');
end;

function T420IPO.GetCodStp: string;
begin
  Result := FCodStp;
end;

procedure T420IPO.SetCodStp(const pCodStp: string);
begin
  FCodStp := pCodStp;

  CheckField('CodStp');
end;

function T420IPO.GetCodStc: string;
begin
  Result := FCodStc;
end;

procedure T420IPO.SetCodStc(const pCodStc: string);
begin
  FCodStc := pCodStc;

  CheckField('CodStc');
end;

function T420IPO.GetCodDep: string;
begin
  Result := FCodDep;
end;

procedure T420IPO.SetCodDep(const pCodDep: string);
begin
  FCodDep := pCodDep;

  CheckField('CodDep');
end;

function T420IPO.GetCodLot: string;
begin
  Result := FCodLot;
end;

procedure T420IPO.SetCodLot(const pCodLot: string);
begin
  FCodLot := pCodLot;

  CheckField('CodLot');
end;

function T420IPO.GetQtdPed: Double;
begin
  Result := FQtdPed;
end;

procedure T420IPO.SetQtdPed(const pQtdPed: Double);
begin
  FQtdPed := pQtdPed;

  CheckField('QtdPed');
end;

function T420IPO.GetQtdRec: Double;
begin
  Result := FQtdRec;
end;

procedure T420IPO.SetQtdRec(const pQtdRec: Double);
begin
  FQtdRec := pQtdRec;

  CheckField('QtdRec');
end;

function T420IPO.GetQtdCan: Double;
begin
  Result := FQtdCan;
end;

procedure T420IPO.SetQtdCan(const pQtdCan: Double);
begin
  FQtdCan := pQtdCan;

  CheckField('QtdCan');
end;

function T420IPO.GetQtdAbe: Double;
begin
  Result := FQtdAbe;
end;

procedure T420IPO.SetQtdAbe(const pQtdAbe: Double);
begin
  FQtdAbe := pQtdAbe;

  CheckField('QtdAbe');
end;

function T420IPO.GetUniMed: string;
begin
  Result := FUniMed;
end;

procedure T420IPO.SetUniMed(const pUniMed: string);
begin
  FUniMed := pUniMed;

  CheckField('UniMed');
end;

function T420IPO.GetCodTpr: string;
begin
  Result := FCodTpr;
end;

procedure T420IPO.SetCodTpr(const pCodTpr: string);
begin
  FCodTpr := pCodTpr;

  CheckField('CodTpr');
end;

function T420IPO.GetPreUni: Double;
begin
  Result := FPreUni;
end;

procedure T420IPO.SetPreUni(const pPreUni: Double);
begin
  FPreUni := pPreUni;

  CheckField('PreUni');
end;

function T420IPO.GetPreFix: Char;
begin
  Result := FPreFix;
end;

procedure T420IPO.SetPreFix(const pPreFix: Char);
begin
  FPreFix := pPreFix;

  CheckField('PreFix');
end;

function T420IPO.GetPerDsc: Double;
begin
  Result := FPerDsc;
end;

procedure T420IPO.SetPerDsc(const pPerDsc: Double);
begin
  FPerDsc := pPerDsc;

  CheckField('PerDsc');
end;

function T420IPO.GetPerDs3: Double;
begin
  Result := FPerDs3;
end;

procedure T420IPO.SetPerDs3(const pPerDs3: Double);
begin
  FPerDs3 := pPerDs3;

  CheckField('PerDs3');
end;

function T420IPO.GetPerDs4: Double;
begin
  Result := FPerDs4;
end;

procedure T420IPO.SetPerDs4(const pPerDs4: Double);
begin
  FPerDs4 := pPerDs4;

  CheckField('PerDs4');
end;

function T420IPO.GetPerDs5: Double;
begin
  Result := FPerDs5;
end;

procedure T420IPO.SetPerDs5(const pPerDs5: Double);
begin
  FPerDs5 := pPerDs5;

  CheckField('PerDs5');
end;

function T420IPO.GetPerIpi: Double;
begin
  Result := FPerIpi;
end;

procedure T420IPO.SetPerIpi(const pPerIpi: Double);
begin
  FPerIpi := pPerIpi;

  CheckField('PerIpi');
end;

function T420IPO.GetPerIcm: Double;
begin
  Result := FPerIcm;
end;

procedure T420IPO.SetPerIcm(const pPerIcm: Double);
begin
  FPerIcm := pPerIcm;

  CheckField('PerIcm');
end;

function T420IPO.GetPerFun: Double;
begin
  Result := FPerFun;
end;

procedure T420IPO.SetPerFun(const pPerFun: Double);
begin
  FPerFun := pPerFun;

  CheckField('PerFun');
end;

function T420IPO.GetDatEnt: TDate;
begin
  Result := FDatEnt;
end;

procedure T420IPO.SetDatEnt(const pDatEnt: TDate);
begin
  FDatEnt := pDatEnt;

  CheckField('DatEnt');
end;

function T420IPO.GetCodPvp: string;
begin
  Result := FCodPvp;
end;

procedure T420IPO.SetCodPvp(const pCodPvp: string);
begin
  FCodPvp := pCodPvp;

  CheckField('CodPvp');
end;

function T420IPO.GetNumPrj: Integer;
begin
  Result := FNumPrj;
end;

procedure T420IPO.SetNumPrj(const pNumPrj: Integer);
begin
  FNumPrj := pNumPrj;

  CheckField('NumPrj');
end;

function T420IPO.GetCodFpj: Integer;
begin
  Result := FCodFpj;
end;

procedure T420IPO.SetCodFpj(const pCodFpj: Integer);
begin
  FCodFpj := pCodFpj;

  CheckField('CodFpj');
end;

function T420IPO.GetCtaFin: Integer;
begin
  Result := FCtaFin;
end;

procedure T420IPO.SetCtaFin(const pCtaFin: Integer);
begin
  FCtaFin := pCtaFin;

  CheckField('CtaFin');
end;

function T420IPO.GetCtaRed: Integer;
begin
  Result := FCtaRed;
end;

procedure T420IPO.SetCtaRed(const pCtaRed: Integer);
begin
  FCtaRed := pCtaRed;

  CheckField('CtaRed');
end;

function T420IPO.GetCodCcu: string;
begin
  Result := FCodCcu;
end;

procedure T420IPO.SetCodCcu(const pCodCcu: string);
begin
  FCodCcu := pCodCcu;

  CheckField('CodCcu');
end;

function T420IPO.GetVlrFre: Double;
begin
  Result := FVlrFre;
end;

procedure T420IPO.SetVlrFre(const pVlrFre: Double);
begin
  FVlrFre := pVlrFre;

  CheckField('VlrFre');
end;

function T420IPO.GetVlrSeg: Double;
begin
  Result := FVlrSeg;
end;

procedure T420IPO.SetVlrSeg(const pVlrSeg: Double);
begin
  FVlrSeg := pVlrSeg;

  CheckField('VlrSeg');
end;

function T420IPO.GetVlrEmb: Double;
begin
  Result := FVlrEmb;
end;

procedure T420IPO.SetVlrEmb(const pVlrEmb: Double);
begin
  FVlrEmb := pVlrEmb;

  CheckField('VlrEmb');
end;

function T420IPO.GetVlrEnc: Double;
begin
  Result := FVlrEnc;
end;

procedure T420IPO.SetVlrEnc(const pVlrEnc: Double);
begin
  FVlrEnc := pVlrEnc;

  CheckField('VlrEnc');
end;

function T420IPO.GetVlrOut: Double;
begin
  Result := FVlrOut;
end;

procedure T420IPO.SetVlrOut(const pVlrOut: Double);
begin
  FVlrOut := pVlrOut;

  CheckField('VlrOut');
end;

function T420IPO.GetVlrDar: Double;
begin
  Result := FVlrDar;
end;

procedure T420IPO.SetVlrDar(const pVlrDar: Double);
begin
  FVlrDar := pVlrDar;

  CheckField('VlrDar');
end;

function T420IPO.GetVlrFrd: Double;
begin
  Result := FVlrFrd;
end;

procedure T420IPO.SetVlrFrd(const pVlrFrd: Double);
begin
  FVlrFrd := pVlrFrd;

  CheckField('VlrFrd');
end;

function T420IPO.GetVlrOud: Double;
begin
  Result := FVlrOud;
end;

procedure T420IPO.SetVlrOud(const pVlrOud: Double);
begin
  FVlrOud := pVlrOud;

  CheckField('VlrOud');
end;

function T420IPO.GetVlrBru: Double;
begin
  Result := FVlrBru;
end;

procedure T420IPO.SetVlrBru(const pVlrBru: Double);
begin
  FVlrBru := pVlrBru;

  CheckField('VlrBru');
end;

function T420IPO.GetVlrDsc: Double;
begin
  Result := FVlrDsc;
end;

procedure T420IPO.SetVlrDsc(const pVlrDsc: Double);
begin
  FVlrDsc := pVlrDsc;

  CheckField('VlrDsc');
end;

function T420IPO.GetVlrDs1: Double;
begin
  Result := FVlrDs1;
end;

procedure T420IPO.SetVlrDs1(const pVlrDs1: Double);
begin
  FVlrDs1 := pVlrDs1;

  CheckField('VlrDs1');
end;

function T420IPO.GetVlrDs2: Double;
begin
  Result := FVlrDs2;
end;

procedure T420IPO.SetVlrDs2(const pVlrDs2: Double);
begin
  FVlrDs2 := pVlrDs2;

  CheckField('VlrDs2');
end;

function T420IPO.GetVlrDs3: Double;
begin
  Result := FVlrDs3;
end;

procedure T420IPO.SetVlrDs3(const pVlrDs3: Double);
begin
  FVlrDs3 := pVlrDs3;

  CheckField('VlrDs3');
end;

function T420IPO.GetVlrDs4: Double;
begin
  Result := FVlrDs4;
end;

procedure T420IPO.SetVlrDs4(const pVlrDs4: Double);
begin
  FVlrDs4 := pVlrDs4;

  CheckField('VlrDs4');
end;

function T420IPO.GetVlrDs5: Double;
begin
  Result := FVlrDs5;
end;

procedure T420IPO.SetVlrDs5(const pVlrDs5: Double);
begin
  FVlrDs5 := pVlrDs5;

  CheckField('VlrDs5');
end;

function T420IPO.GetVlrDzf: Double;
begin
  Result := FVlrDzf;
end;

procedure T420IPO.SetVlrDzf(const pVlrDzf: Double);
begin
  FVlrDzf := pVlrDzf;

  CheckField('VlrDzf');
end;

function T420IPO.GetVlrBfu: Double;
begin
  Result := FVlrBfu;
end;

procedure T420IPO.SetVlrBfu(const pVlrBfu: Double);
begin
  FVlrBfu := pVlrBfu;

  CheckField('VlrBfu');
end;

function T420IPO.GetVlrFun: Double;
begin
  Result := FVlrFun;
end;

procedure T420IPO.SetVlrFun(const pVlrFun: Double);
begin
  FVlrFun := pVlrFun;

  CheckField('VlrFun');
end;

function T420IPO.GetVlrBip: Double;
begin
  Result := FVlrBip;
end;

procedure T420IPO.SetVlrBip(const pVlrBip: Double);
begin
  FVlrBip := pVlrBip;

  CheckField('VlrBip');
end;

function T420IPO.GetVlrIpi: Double;
begin
  Result := FVlrIpi;
end;

procedure T420IPO.SetVlrIpi(const pVlrIpi: Double);
begin
  FVlrIpi := pVlrIpi;

  CheckField('VlrIpi');
end;

function T420IPO.GetVlrBic: Double;
begin
  Result := FVlrBic;
end;

procedure T420IPO.SetVlrBic(const pVlrBic: Double);
begin
  FVlrBic := pVlrBic;

  CheckField('VlrBic');
end;

function T420IPO.GetVlrIcm: Double;
begin
  Result := FVlrIcm;
end;

procedure T420IPO.SetVlrIcm(const pVlrIcm: Double);
begin
  FVlrIcm := pVlrIcm;

  CheckField('VlrIcm');
end;

function T420IPO.GetVlrBsi: Double;
begin
  Result := FVlrBsi;
end;

procedure T420IPO.SetVlrBsi(const pVlrBsi: Double);
begin
  FVlrBsi := pVlrBsi;

  CheckField('VlrBsi');
end;

function T420IPO.GetVlrIcs: Double;
begin
  Result := FVlrIcs;
end;

procedure T420IPO.SetVlrIcs(const pVlrIcs: Double);
begin
  FVlrIcs := pVlrIcs;

  CheckField('VlrIcs');
end;

function T420IPO.GetVlrBsp: Double;
begin
  Result := FVlrBsp;
end;

procedure T420IPO.SetVlrBsp(const pVlrBsp: Double);
begin
  FVlrBsp := pVlrBsp;

  CheckField('VlrBsp');
end;

function T420IPO.GetVlrStp: Double;
begin
  Result := FVlrStp;
end;

procedure T420IPO.SetVlrStp(const pVlrStp: Double);
begin
  FVlrStp := pVlrStp;

  CheckField('VlrStp');
end;

function T420IPO.GetVlrBsc: Double;
begin
  Result := FVlrBsc;
end;

procedure T420IPO.SetVlrBsc(const pVlrBsc: Double);
begin
  FVlrBsc := pVlrBsc;

  CheckField('VlrBsc');
end;

function T420IPO.GetVlrStc: Double;
begin
  Result := FVlrStc;
end;

procedure T420IPO.SetVlrStc(const pVlrStc: Double);
begin
  FVlrStc := pVlrStc;

  CheckField('VlrStc');
end;

function T420IPO.GetVlrLpr: Double;
begin
  Result := FVlrLpr;
end;

procedure T420IPO.SetVlrLpr(const pVlrLpr: Double);
begin
  FVlrLpr := pVlrLpr;

  CheckField('VlrLpr');
end;

function T420IPO.GetVlrLou: Double;
begin
  Result := FVlrLou;
end;

procedure T420IPO.SetVlrLou(const pVlrLou: Double);
begin
  FVlrLou := pVlrLou;

  CheckField('VlrLou');
end;

function T420IPO.GetVlrLiq: Double;
begin
  Result := FVlrLiq;
end;

procedure T420IPO.SetVlrLiq(const pVlrLiq: Double);
begin
  FVlrLiq := pVlrLiq;

  CheckField('VlrLiq');
end;

function T420IPO.GetVlrFin: Double;
begin
  Result := FVlrFin;
end;

procedure T420IPO.SetVlrFin(const pVlrFin: Double);
begin
  FVlrFin := pVlrFin;

  CheckField('VlrFin');
end;

function T420IPO.GetAcrFin: Double;
begin
  Result := FAcrFin;
end;

procedure T420IPO.SetAcrFin(const pAcrFin: Double);
begin
  FAcrFin := pAcrFin;

  CheckField('AcrFin');
end;

function T420IPO.GetSitIpo: Integer;
begin
  Result := FSitIpo;
end;

procedure T420IPO.SetSitIpo(const pSitIpo: Integer);
begin
  FSitIpo := pSitIpo;

  CheckField('SitIpo');
end;

function T420IPO.GetCodMot: Integer;
begin
  Result := FCodMot;
end;

procedure T420IPO.SetCodMot(const pCodMot: Integer);
begin
  FCodMot := pCodMot;

  CheckField('CodMot');
end;

function T420IPO.GetObsMot: string;
begin
  Result := FObsMot;
end;

procedure T420IPO.SetObsMot(const pObsMot: string);
begin
  FObsMot := pObsMot;

  CheckField('ObsMot');
end;

function T420IPO.GetSeqIpd: Integer;
begin
  Result := FSeqIpd;
end;

procedure T420IPO.SetSeqIpd(const pSeqIpd: Integer);
begin
  FSeqIpd := pSeqIpd;

  CheckField('SeqIpd');
end;

function T420IPO.GetFilCtr: Integer;
begin
  Result := FFilCtr;
end;

procedure T420IPO.SetFilCtr(const pFilCtr: Integer);
begin
  FFilCtr := pFilCtr;

  CheckField('FilCtr');
end;

function T420IPO.GetNumCtr: Integer;
begin
  Result := FNumCtr;
end;

procedure T420IPO.SetNumCtr(const pNumCtr: Integer);
begin
  FNumCtr := pNumCtr;

  CheckField('NumCtr');
end;

function T420IPO.GetDatCpt: TDate;
begin
  Result := FDatCpt;
end;

procedure T420IPO.SetDatCpt(const pDatCpt: TDate);
begin
  FDatCpt := pDatCpt;

  CheckField('DatCpt');
end;

function T420IPO.GetSeqCcp: Integer;
begin
  Result := FSeqCcp;
end;

procedure T420IPO.SetSeqCcp(const pSeqCcp: Integer);
begin
  FSeqCcp := pSeqCcp;

  CheckField('SeqCcp');
end;

function T420IPO.GetIndEqi: Char;
begin
  Result := FIndEqi;
end;

procedure T420IPO.SetIndEqi(const pIndEqi: Char);
begin
  FIndEqi := pIndEqi;

  CheckField('IndEqi');
end;

function T420IPO.GetUsuGer: Integer;
begin
  Result := FUsuGer;
end;

procedure T420IPO.SetUsuGer(const pUsuGer: Integer);
begin
  FUsuGer := pUsuGer;

  CheckField('UsuGer');
end;

function T420IPO.GetDatGer: TDate;
begin
  Result := FDatGer;
end;

procedure T420IPO.SetDatGer(const pDatGer: TDate);
begin
  FDatGer := pDatGer;

  CheckField('DatGer');
end;

function T420IPO.GetHorGer: Integer;
begin
  Result := FHorGer;
end;

procedure T420IPO.SetHorGer(const pHorGer: Integer);
begin
  FHorGer := pHorGer;

  CheckField('HorGer');
end;

function T420IPO.GetFilPed: Integer;
begin
  Result := FFilPed;
end;

procedure T420IPO.SetFilPed(const pFilPed: Integer);
begin
  FFilPed := pFilPed;

  CheckField('FilPed');
end;

function T420IPO.GetNumPed: Integer;
begin
  Result := FNumPed;
end;

procedure T420IPO.SetNumPed(const pNumPed: Integer);
begin
  FNumPed := pNumPed;

  CheckField('NumPed');
end;

function T420IPO.GetDatVlt: TDate;
begin
  Result := FDatVlt;
end;

procedure T420IPO.SetDatVlt(const pDatVlt: TDate);
begin
  FDatVlt := pDatVlt;

  CheckField('DatVlt');
end;

function T420IPO.GetQtdFor: Double;
begin
  Result := FQtdFor;
end;

procedure T420IPO.SetQtdFor(const pQtdFor: Double);
begin
  FQtdFor := pQtdFor;

  CheckField('QtdFor');
end;

function T420IPO.GetPreFor: Double;
begin
  Result := FPreFor;
end;

procedure T420IPO.SetPreFor(const pPreFor: Double);
begin
  FPreFor := pPreFor;

  CheckField('PreFor');
end;

function T420IPO.GetCodMoe: string;
begin
  Result := FCodMoe;
end;

procedure T420IPO.SetCodMoe(const pCodMoe: string);
begin
  FCodMoe := pCodMoe;

  CheckField('CodMoe');
end;

function T420IPO.GetDatMoe: TDate;
begin
  Result := FDatMoe;
end;

procedure T420IPO.SetDatMoe(const pDatMoe: TDate);
begin
  FDatMoe := pDatMoe;

  CheckField('DatMoe');
end;

function T420IPO.GetCotMoe: Double;
begin
  Result := FCotMoe;
end;

procedure T420IPO.SetCotMoe(const pCotMoe: Double);
begin
  FCotMoe := pCotMoe;

  CheckField('CotMoe');
end;

function T420IPO.GetFecMoe: Char;
begin
  Result := FFecMoe;
end;

procedure T420IPO.SetFecMoe(const pFecMoe: Char);
begin
  FFecMoe := pFecMoe;

  CheckField('FecMoe');
end;

function T420IPO.GetPerIim: Double;
begin
  Result := FPerIim;
end;

procedure T420IPO.SetPerIim(const pPerIim: Double);
begin
  FPerIim := pPerIim;

  CheckField('PerIim');
end;

function T420IPO.GetVlrBii: Double;
begin
  Result := FVlrBii;
end;

procedure T420IPO.SetVlrBii(const pVlrBii: Double);
begin
  FVlrBii := pVlrBii;

  CheckField('VlrBii');
end;

function T420IPO.GetVlrIim: Double;
begin
  Result := FVlrIim;
end;

procedure T420IPO.SetVlrIim(const pVlrIim: Double);
begin
  FVlrIim := pVlrIim;

  CheckField('VlrIim');
end;

function T420IPO.GetVlrRis: Double;
begin
  Result := FVlrRis;
end;

procedure T420IPO.SetVlrRis(const pVlrRis: Double);
begin
  FVlrRis := pVlrRis;

  CheckField('VlrRis');
end;

function T420IPO.GetSeqIor: Integer;
begin
  Result := FSeqIor;
end;

procedure T420IPO.SetSeqIor(const pSeqIor: Integer);
begin
  FSeqIor := pSeqIor;

  CheckField('SeqIor');
end;

function T420IPO.GetVlrBpi: Double;
begin
  Result := FVlrBpi;
end;

procedure T420IPO.SetVlrBpi(const pVlrBpi: Double);
begin
  FVlrBpi := pVlrBpi;

  CheckField('VlrBpi');
end;

function T420IPO.GetVlrPis: Double;
begin
  Result := FVlrPis;
end;

procedure T420IPO.SetVlrPis(const pVlrPis: Double);
begin
  FVlrPis := pVlrPis;

  CheckField('VlrPis');
end;

function T420IPO.GetVlrBcr: Double;
begin
  Result := FVlrBcr;
end;

procedure T420IPO.SetVlrBcr(const pVlrBcr: Double);
begin
  FVlrBcr := pVlrBcr;

  CheckField('VlrBcr');
end;

function T420IPO.GetVlrCor: Double;
begin
  Result := FVlrCor;
end;

procedure T420IPO.SetVlrCor(const pVlrCor: Double);
begin
  FVlrCor := pVlrCor;

  CheckField('VlrCor');
end;

function T420IPO.GetCodFxa: string;
begin
  Result := FCodFxa;
end;

procedure T420IPO.SetCodFxa(const pCodFxa: string);
begin
  FCodFxa := pCodFxa;

  CheckField('CodFxa');
end;

function T420IPO.GetIdxGrd: Integer;
begin
  Result := FIdxGrd;
end;

procedure T420IPO.SetIdxGrd(const pIdxGrd: Integer);
begin
  FIdxGrd := pIdxGrd;

  CheckField('IdxGrd');
end;

function T420IPO.GetPerPit: Double;
begin
  Result := FPerPit;
end;

procedure T420IPO.SetPerPit(const pPerPit: Double);
begin
  FPerPit := pPerPit;

  CheckField('PerPit');
end;

function T420IPO.GetVlrBpt: Double;
begin
  Result := FVlrBpt;
end;

procedure T420IPO.SetVlrBpt(const pVlrBpt: Double);
begin
  FVlrBpt := pVlrBpt;

  CheckField('VlrBpt');
end;

function T420IPO.GetVlrPit: Double;
begin
  Result := FVlrPit;
end;

procedure T420IPO.SetVlrPit(const pVlrPit: Double);
begin
  FVlrPit := pVlrPit;

  CheckField('VlrPit');
end;

function T420IPO.GetPerCrt: Double;
begin
  Result := FPerCrt;
end;

procedure T420IPO.SetPerCrt(const pPerCrt: Double);
begin
  FPerCrt := pPerCrt;

  CheckField('PerCrt');
end;

function T420IPO.GetVlrBct: Double;
begin
  Result := FVlrBct;
end;

procedure T420IPO.SetVlrBct(const pVlrBct: Double);
begin
  FVlrBct := pVlrBct;

  CheckField('VlrBct');
end;

function T420IPO.GetVlrCrt: Double;
begin
  Result := FVlrCrt;
end;

procedure T420IPO.SetVlrCrt(const pVlrCrt: Double);
begin
  FVlrCrt := pVlrCrt;

  CheckField('VlrCrt');
end;

function T420IPO.GetPerCsl: Double;
begin
  Result := FPerCsl;
end;

procedure T420IPO.SetPerCsl(const pPerCsl: Double);
begin
  FPerCsl := pPerCsl;

  CheckField('PerCsl');
end;

function T420IPO.GetVlrBcl: Double;
begin
  Result := FVlrBcl;
end;

procedure T420IPO.SetVlrBcl(const pVlrBcl: Double);
begin
  FVlrBcl := pVlrBcl;

  CheckField('VlrBcl');
end;

function T420IPO.GetVlrCsl: Double;
begin
  Result := FVlrCsl;
end;

procedure T420IPO.SetVlrCsl(const pVlrCsl: Double);
begin
  FVlrCsl := pVlrCsl;

  CheckField('VlrCsl');
end;

function T420IPO.GetPerOur: Double;
begin
  Result := FPerOur;
end;

procedure T420IPO.SetPerOur(const pPerOur: Double);
begin
  FPerOur := pPerOur;

  CheckField('PerOur');
end;

function T420IPO.GetVlrBor: Double;
begin
  Result := FVlrBor;
end;

procedure T420IPO.SetVlrBor(const pVlrBor: Double);
begin
  FVlrBor := pVlrBor;

  CheckField('VlrBor');
end;

function T420IPO.GetVlrOur: Double;
begin
  Result := FVlrOur;
end;

procedure T420IPO.SetVlrOur(const pVlrOur: Double);
begin
  FVlrOur := pVlrOur;

  CheckField('VlrOur');
end;

function T420IPO.GetPerIrf: Double;
begin
  Result := FPerIrf;
end;

procedure T420IPO.SetPerIrf(const pPerIrf: Double);
begin
  FPerIrf := pPerIrf;

  CheckField('PerIrf');
end;

function T420IPO.GetVlrBir: Double;
begin
  Result := FVlrBir;
end;

procedure T420IPO.SetVlrBir(const pVlrBir: Double);
begin
  FVlrBir := pVlrBir;

  CheckField('VlrBir');
end;

function T420IPO.GetVlrIrf: Double;
begin
  Result := FVlrIrf;
end;

procedure T420IPO.SetVlrIrf(const pVlrIrf: Double);
begin
  FVlrIrf := pVlrIrf;

  CheckField('VlrIrf');
end;

function T420IPO.GetFilCes: Integer;
begin
  Result := FFilCes;
end;

procedure T420IPO.SetFilCes(const pFilCes: Integer);
begin
  FFilCes := pFilCes;

  CheckField('FilCes');
end;

function T420IPO.GetDatCes: TDate;
begin
  Result := FDatCes;
end;

procedure T420IPO.SetDatCes(const pDatCes: TDate);
begin
  FDatCes := pDatCes;

  CheckField('DatCes');
end;

function T420IPO.GetSeqCes: Integer;
begin
  Result := FSeqCes;
end;

procedure T420IPO.SetSeqCes(const pSeqCes: Integer);
begin
  FSeqCes := pSeqCes;

  CheckField('SeqCes');
end;

function T420IPO.GetPerDs1: Double;
begin
  Result := FPerDs1;
end;

procedure T420IPO.SetPerDs1(const pPerDs1: Double);
begin
  FPerDs1 := pPerDs1;

  CheckField('PerDs1');
end;

function T420IPO.GetPerDs2: Double;
begin
  Result := FPerDs2;
end;

procedure T420IPO.SetPerDs2(const pPerDs2: Double);
begin
  FPerDs2 := pPerDs2;

  CheckField('PerDs2');
end;

function T420IPO.GetVlrOri: Double;
begin
  Result := FVlrOri;
end;

procedure T420IPO.SetVlrOri(const pVlrOri: Double);
begin
  FVlrOri := pVlrOri;

  CheckField('VlrOri');
end;

function T420IPO.GetQtdOri: Double;
begin
  Result := FQtdOri;
end;

procedure T420IPO.SetQtdOri(const pQtdOri: Double);
begin
  FQtdOri := pQtdOri;

  CheckField('QtdOri');
end;

function T420IPO.GetVlrFei: Double;
begin
  Result := FVlrFei;
end;

procedure T420IPO.SetVlrFei(const pVlrFei: Double);
begin
  FVlrFei := pVlrFei;

  CheckField('VlrFei');
end;

function T420IPO.GetVlrSei: Double;
begin
  Result := FVlrSei;
end;

procedure T420IPO.SetVlrSei(const pVlrSei: Double);
begin
  FVlrSei := pVlrSei;

  CheckField('VlrSei');
end;

function T420IPO.GetVlrOui: Double;
begin
  Result := FVlrOui;
end;

procedure T420IPO.SetVlrOui(const pVlrOui: Double);
begin
  FVlrOui := pVlrOui;

  CheckField('VlrOui');
end;

function T420IPO.GetBcoImp: Double;
begin
  Result := FBcoImp;
end;

procedure T420IPO.SetBcoImp(const pBcoImp: Double);
begin
  FBcoImp := pBcoImp;

  CheckField('BcoImp');
end;

function T420IPO.GetCofImp: Double;
begin
  Result := FCofImp;
end;

procedure T420IPO.SetCofImp(const pCofImp: Double);
begin
  FCofImp := pCofImp;

  CheckField('CofImp');
end;

function T420IPO.GetBpiImp: Double;
begin
  Result := FBpiImp;
end;

procedure T420IPO.SetBpiImp(const pBpiImp: Double);
begin
  FBpiImp := pBpiImp;

  CheckField('BpiImp');
end;

function T420IPO.GetPisImp: Double;
begin
  Result := FPisImp;
end;

procedure T420IPO.SetPisImp(const pPisImp: Double);
begin
  FPisImp := pPisImp;

  CheckField('PisImp');
end;

function T420IPO.GetSeqCpk: Integer;
begin
  Result := FSeqCpk;
end;

procedure T420IPO.SetSeqCpk(const pSeqCpk: Integer);
begin
  FSeqCpk := pSeqCpk;

  CheckField('SeqCpk');
end;

function T420IPO.GetVlrDm1: Double;
begin
  Result := FVlrDm1;
end;

procedure T420IPO.SetVlrDm1(const pVlrDm1: Double);
begin
  FVlrDm1 := pVlrDm1;

  CheckField('VlrDm1');
end;

function T420IPO.GetVlrDm2: Double;
begin
  Result := FVlrDm2;
end;

procedure T420IPO.SetVlrDm2(const pVlrDm2: Double);
begin
  FVlrDm2 := pVlrDm2;

  CheckField('VlrDm2');
end;

function T420IPO.GetVlrDm3: Double;
begin
  Result := FVlrDm3;
end;

procedure T420IPO.SetVlrDm3(const pVlrDm3: Double);
begin
  FVlrDm3 := pVlrDm3;

  CheckField('VlrDm3');
end;

function T420IPO.GetVlrDm4: Double;
begin
  Result := FVlrDm4;
end;

procedure T420IPO.SetVlrDm4(const pVlrDm4: Double);
begin
  FVlrDm4 := pVlrDm4;

  CheckField('VlrDm4');
end;

function T420IPO.GetVlrDm5: Double;
begin
  Result := FVlrDm5;
end;

procedure T420IPO.SetVlrDm5(const pVlrDm5: Double);
begin
  FVlrDm5 := pVlrDm5;

  CheckField('VlrDm5');
end;

function T420IPO.GetVlrDm6: Double;
begin
  Result := FVlrDm6;
end;

procedure T420IPO.SetVlrDm6(const pVlrDm6: Double);
begin
  FVlrDm6 := pVlrDm6;

  CheckField('VlrDm6');
end;

function T420IPO.GetBemPri: string;
begin
  Result := FBemPri;
end;

procedure T420IPO.SetBemPri(const pBemPri: string);
begin
  FBemPri := pBemPri;

  CheckField('BemPri');
end;

function T420IPO.GetEmpPed: Integer;
begin
  Result := FEmpPed;
end;

procedure T420IPO.SetEmpPed(const pEmpPed: Integer);
begin
  FEmpPed := pEmpPed;

  CheckField('EmpPed');
end;

function T420IPO.GetEmpNfv: Integer;
begin
  Result := FEmpNfv;
end;

procedure T420IPO.SetEmpNfv(const pEmpNfv: Integer);
begin
  FEmpNfv := pEmpNfv;

  CheckField('EmpNfv');
end;

function T420IPO.GetFilNfv: Integer;
begin
  Result := FFilNfv;
end;

procedure T420IPO.SetFilNfv(const pFilNfv: Integer);
begin
  FFilNfv := pFilNfv;

  CheckField('FilNfv');
end;

function T420IPO.GetSnfNfv: string;
begin
  Result := FSnfNfv;
end;

procedure T420IPO.SetSnfNfv(const pSnfNfv: string);
begin
  FSnfNfv := pSnfNfv;

  CheckField('SnfNfv');
end;

function T420IPO.GetNumNfv: Integer;
begin
  Result := FNumNfv;
end;

procedure T420IPO.SetNumNfv(const pNumNfv: Integer);
begin
  FNumNfv := pNumNfv;

  CheckField('NumNfv');
end;

function T420IPO.GetSeqIpv: Integer;
begin
  Result := FSeqIpv;
end;

procedure T420IPO.SetSeqIpv(const pSeqIpv: Integer);
begin
  FSeqIpv := pSeqIpv;

  CheckField('SeqIpv');
end;

function T420IPO.GetCodTrg: string;
begin
  Result := FCodTrg;
end;

procedure T420IPO.SetCodTrg(const pCodTrg: string);
begin
  FCodTrg := pCodTrg;

  CheckField('CodTrg');
end;

function T420IPO.GetPerBon: Double;
begin
  Result := FPerBon;
end;

procedure T420IPO.SetPerBon(const pPerBon: Double);
begin
  FPerBon := pPerBon;

  CheckField('PerBon');
end;

function T420IPO.GetVlrDfa: Double;
begin
  Result := FVlrDfa;
end;

procedure T420IPO.SetVlrDfa(const pVlrDfa: Double);
begin
  FVlrDfa := pVlrDfa;

  CheckField('VlrDfa');
end;

function T420IPO.GetQtdBpi: Double;
begin
  Result := FQtdBpi;
end;

procedure T420IPO.SetQtdBpi(const pQtdBpi: Double);
begin
  FQtdBpi := pQtdBpi;

  CheckField('QtdBpi');
end;

function T420IPO.GetAliPis: Double;
begin
  Result := FAliPis;
end;

procedure T420IPO.SetAliPis(const pAliPis: Double);
begin
  FAliPis := pAliPis;

  CheckField('AliPis');
end;

function T420IPO.GetQtdBco: Double;
begin
  Result := FQtdBco;
end;

procedure T420IPO.SetQtdBco(const pQtdBco: Double);
begin
  FQtdBco := pQtdBco;

  CheckField('QtdBco');
end;

function T420IPO.GetAliCof: Double;
begin
  Result := FAliCof;
end;

procedure T420IPO.SetAliCof(const pAliCof: Double);
begin
  FAliCof := pAliCof;

  CheckField('AliCof');
end;

function T420IPO.GetQtdBip: Double;
begin
  Result := FQtdBip;
end;

procedure T420IPO.SetQtdBip(const pQtdBip: Double);
begin
  FQtdBip := pQtdBip;

  CheckField('QtdBip');
end;

function T420IPO.GetAliIpi: Double;
begin
  Result := FAliIpi;
end;

procedure T420IPO.SetAliIpi(const pAliIpi: Double);
begin
  FAliIpi := pAliIpi;

  CheckField('AliIpi');
end;

function T420IPO.GetCodFab: string;
begin
  Result := FCodFab;
end;

procedure T420IPO.SetCodFab(const pCodFab: string);
begin
  FCodFab := pCodFab;

  CheckField('CodFab');
end;

function T420IPO.GetProFab: string;
begin
  Result := FProFab;
end;

procedure T420IPO.SetProFab(const pProFab: string);
begin
  FProFab := pProFab;

  CheckField('ProFab');
end;

function T420IPO.GetSubPro: Char;
begin
  Result := FSubPro;
end;

procedure T420IPO.SetSubPro(const pSubPro: Char);
begin
  FSubPro := pSubPro;

  CheckField('SubPro');
end;

function T420IPO.GetTipCur: Integer;
begin
  Result := FTipCur;
end;

procedure T420IPO.SetTipCur(const pTipCur: Integer);
begin
  FTipCur := pTipCur;

  CheckField('TipCur');
end;

function T420IPO.GetUSU_DatCon: TDate;
begin
  Result := FUSU_DatCon;
end;

procedure T420IPO.SetUSU_DatCon(const pUSU_DatCon: TDate);
begin
  FUSU_DatCon := pUSU_DatCon;

  CheckField('USU_DatCon');
end;

function T420IPO.GetUSU_UsuMod: Integer;
begin
  Result := FUSU_UsuMod;
end;

procedure T420IPO.SetUSU_UsuMod(const pUSU_UsuMod: Integer);
begin
  FUSU_UsuMod := pUSU_UsuMod;

  CheckField('USU_UsuMod');
end;

function T420IPO.GetUSU_DatMod: TDate;
begin
  Result := FUSU_DatMod;
end;

procedure T420IPO.SetUSU_DatMod(const pUSU_DatMod: TDate);
begin
  FUSU_DatMod := pUSU_DatMod;

  CheckField('USU_DatMod');
end;

function T420IPO.GetUSU_HorMod: Integer;
begin
  Result := FUSU_HorMod;
end;

procedure T420IPO.SetUSU_HorMod(const pUSU_HorMod: Integer);
begin
  FUSU_HorMod := pUSU_HorMod;

  CheckField('USU_HorMod');
end;

function T420IPO.GetUSU_LisCli: string;
begin
  Result := FUSU_LisCli;
end;

procedure T420IPO.SetUSU_LisCli(const pUSU_LisCli: string);
begin
  FUSU_LisCli := pUSU_LisCli;

  CheckField('USU_LisCli');
end;

function T420IPO.GetUSU_QtdExa: Char;
begin
  Result := FUSU_QtdExa;
end;

procedure T420IPO.SetUSU_QtdExa(const pUSU_QtdExa: Char);
begin
  FUSU_QtdExa := pUSU_QtdExa;

  CheckField('USU_QtdExa');
end;

function T420IPO.GetUSU_TipTrf: Char;
begin
  Result := FUSU_TipTrf;
end;

procedure T420IPO.SetUSU_TipTrf(const pUSU_TipTrf: Char);
begin
  FUSU_TipTrf := pUSU_TipTrf;

  CheckField('USU_TipTrf');
end;

function T420IPO.GetUSU_OC831: Char;
begin
  Result := FUSU_OC831;
end;

procedure T420IPO.SetUSU_OC831(const pUSU_OC831: Char);
begin
  FUSU_OC831 := pUSU_OC831;

  CheckField('USU_OC831');
end;

function T420IPO.GetUSU_QtdAna: Double;
begin
  Result := FUSU_QtdAna;
end;

procedure T420IPO.SetUSU_QtdAna(const pUSU_QtdAna: Double);
begin
  FUSU_QtdAna := pUSU_QtdAna;

  CheckField('USU_QtdAna');
end;

function T420IPO.GetUSU_NumAna: Integer;
begin
  Result := FUSU_NumAna;
end;

procedure T420IPO.SetUSU_NumAna(const pUSU_NumAna: Integer);
begin
  FUSU_NumAna := pUSU_NumAna;

  CheckField('USU_NumAna');
end;

function T420IPO.GetUSU_FilPed: Integer;
begin
  Result := FUSU_FilPed;
end;

procedure T420IPO.SetUSU_FilPed(const pUSU_FilPed: Integer);
begin
  FUSU_FilPed := pUSU_FilPed;

  CheckField('USU_FilPed');
end;

function T420IPO.GetUSU_NumPed: Integer;
begin
  Result := FUSU_NumPed;
end;

procedure T420IPO.SetUSU_NumPed(const pUSU_NumPed: Integer);
begin
  FUSU_NumPed := pUSU_NumPed;

  CheckField('USU_NumPed');
end;

function T420IPO.GetUSU_SeqIpd: Integer;
begin
  Result := FUSU_SeqIpd;
end;

procedure T420IPO.SetUSU_SeqIpd(const pUSU_SeqIpd: Integer);
begin
  FUSU_SeqIpd := pUSU_SeqIpd;

  CheckField('USU_SeqIpd');
end;

function T420IPO.GetUSU_ObsImp: string;
begin
  Result := FUSU_ObsImp;
end;

procedure T420IPO.SetUSU_ObsImp(const pUSU_ObsImp: string);
begin
  FUSU_ObsImp := pUSU_ObsImp;

  CheckField('USU_ObsImp');
end;

function T420IPO.GetUSU_NumReq: Integer;
begin
  Result := FUSU_NumReq;
end;

procedure T420IPO.SetUSU_NumReq(const pUSU_NumReq: Integer);
begin
  FUSU_NumReq := pUSU_NumReq;

  CheckField('USU_NumReq');
end;

function T420IPO.GetUSU_SeqReq: Integer;
begin
  Result := FUSU_SeqReq;
end;

procedure T420IPO.SetUSU_SeqReq(const pUSU_SeqReq: Integer);
begin
  FUSU_SeqReq := pUSU_SeqReq;

  CheckField('USU_SeqReq');
end;

function T420IPO.GetCodEmpOLD: Integer;
begin
  Result := FCodEmpOLD;
end;

procedure T420IPO.SetCodEmpOLD(const pCodEmp: Integer);
begin
  FCodEmpOLD := pCodEmp;
end;

function T420IPO.GetCodFilOLD: Integer;
begin
  Result := FCodFilOLD;
end;

procedure T420IPO.SetCodFilOLD(const pCodFil: Integer);
begin
  FCodFilOLD := pCodFil;
end;

function T420IPO.GetNumOcpOLD: Integer;
begin
  Result := FNumOcpOLD;
end;

procedure T420IPO.SetNumOcpOLD(const pNumOcp: Integer);
begin
  FNumOcpOLD := pNumOcp;
end;

function T420IPO.GetSeqIpoOLD: Integer;
begin
  Result := FSeqIpoOLD;
end;

procedure T420IPO.SetSeqIpoOLD(const pSeqIpo: Integer);
begin
  FSeqIpoOLD := pSeqIpo;
end;

function T420IPO.GetTnsProOLD: string;
begin
  Result := FTnsProOLD;
end;

procedure T420IPO.SetTnsProOLD(const pTnsPro: string);
begin
  FTnsProOLD := pTnsPro;
end;

function T420IPO.GetCodProOLD: string;
begin
  Result := FCodProOLD;
end;

procedure T420IPO.SetCodProOLD(const pCodPro: string);
begin
  FCodProOLD := pCodPro;
end;

function T420IPO.GetCodDerOLD: string;
begin
  Result := FCodDerOLD;
end;

procedure T420IPO.SetCodDerOLD(const pCodDer: string);
begin
  FCodDerOLD := pCodDer;
end;

function T420IPO.GetCplIpoOLD: string;
begin
  Result := FCplIpoOLD;
end;

procedure T420IPO.SetCplIpoOLD(const pCplIpo: string);
begin
  FCplIpoOLD := pCplIpo;
end;

function T420IPO.GetProForOLD: string;
begin
  Result := FProForOLD;
end;

procedure T420IPO.SetProForOLD(const pProFor: string);
begin
  FProForOLD := pProFor;
end;

function T420IPO.GetDesForOLD: string;
begin
  Result := FDesForOLD;
end;

procedure T420IPO.SetDesForOLD(const pDesFor: string);
begin
  FDesForOLD := pDesFor;
end;

function T420IPO.GetUniForOLD: string;
begin
  Result := FUniForOLD;
end;

procedure T420IPO.SetUniForOLD(const pUniFor: string);
begin
  FUniForOLD := pUniFor;
end;

function T420IPO.GetCodFamOLD: string;
begin
  Result := FCodFamOLD;
end;

procedure T420IPO.SetCodFamOLD(const pCodFam: string);
begin
  FCodFamOLD := pCodFam;
end;

function T420IPO.GetCodTicOLD: string;
begin
  Result := FCodTicOLD;
end;

procedure T420IPO.SetCodTicOLD(const pCodTic: string);
begin
  FCodTicOLD := pCodTic;
end;

function T420IPO.GetCodTrdOLD: string;
begin
  Result := FCodTrdOLD;
end;

procedure T420IPO.SetCodTrdOLD(const pCodTrd: string);
begin
  FCodTrdOLD := pCodTrd;
end;

function T420IPO.GetCodTstOLD: string;
begin
  Result := FCodTstOLD;
end;

procedure T420IPO.SetCodTstOLD(const pCodTst: string);
begin
  FCodTstOLD := pCodTst;
end;

function T420IPO.GetCodStpOLD: string;
begin
  Result := FCodStpOLD;
end;

procedure T420IPO.SetCodStpOLD(const pCodStp: string);
begin
  FCodStpOLD := pCodStp;
end;

function T420IPO.GetCodStcOLD: string;
begin
  Result := FCodStcOLD;
end;

procedure T420IPO.SetCodStcOLD(const pCodStc: string);
begin
  FCodStcOLD := pCodStc;
end;

function T420IPO.GetCodDepOLD: string;
begin
  Result := FCodDepOLD;
end;

procedure T420IPO.SetCodDepOLD(const pCodDep: string);
begin
  FCodDepOLD := pCodDep;
end;

function T420IPO.GetCodLotOLD: string;
begin
  Result := FCodLotOLD;
end;

procedure T420IPO.SetCodLotOLD(const pCodLot: string);
begin
  FCodLotOLD := pCodLot;
end;

function T420IPO.GetQtdPedOLD: Double;
begin
  Result := FQtdPedOLD;
end;

procedure T420IPO.SetQtdPedOLD(const pQtdPed: Double);
begin
  FQtdPedOLD := pQtdPed;
end;

function T420IPO.GetQtdRecOLD: Double;
begin
  Result := FQtdRecOLD;
end;

procedure T420IPO.SetQtdRecOLD(const pQtdRec: Double);
begin
  FQtdRecOLD := pQtdRec;
end;

function T420IPO.GetQtdCanOLD: Double;
begin
  Result := FQtdCanOLD;
end;

procedure T420IPO.SetQtdCanOLD(const pQtdCan: Double);
begin
  FQtdCanOLD := pQtdCan;
end;

function T420IPO.GetQtdAbeOLD: Double;
begin
  Result := FQtdAbeOLD;
end;

procedure T420IPO.SetQtdAbeOLD(const pQtdAbe: Double);
begin
  FQtdAbeOLD := pQtdAbe;
end;

function T420IPO.GetUniMedOLD: string;
begin
  Result := FUniMedOLD;
end;

procedure T420IPO.SetUniMedOLD(const pUniMed: string);
begin
  FUniMedOLD := pUniMed;
end;

function T420IPO.GetCodTprOLD: string;
begin
  Result := FCodTprOLD;
end;

procedure T420IPO.SetCodTprOLD(const pCodTpr: string);
begin
  FCodTprOLD := pCodTpr;
end;

function T420IPO.GetPreUniOLD: Double;
begin
  Result := FPreUniOLD;
end;

procedure T420IPO.SetPreUniOLD(const pPreUni: Double);
begin
  FPreUniOLD := pPreUni;
end;

function T420IPO.GetPreFixOLD: Char;
begin
  Result := FPreFixOLD;
end;

procedure T420IPO.SetPreFixOLD(const pPreFix: Char);
begin
  FPreFixOLD := pPreFix;
end;

function T420IPO.GetPerDscOLD: Double;
begin
  Result := FPerDscOLD;
end;

procedure T420IPO.SetPerDscOLD(const pPerDsc: Double);
begin
  FPerDscOLD := pPerDsc;
end;

function T420IPO.GetPerDs3OLD: Double;
begin
  Result := FPerDs3OLD;
end;

procedure T420IPO.SetPerDs3OLD(const pPerDs3: Double);
begin
  FPerDs3OLD := pPerDs3;
end;

function T420IPO.GetPerDs4OLD: Double;
begin
  Result := FPerDs4OLD;
end;

procedure T420IPO.SetPerDs4OLD(const pPerDs4: Double);
begin
  FPerDs4OLD := pPerDs4;
end;

function T420IPO.GetPerDs5OLD: Double;
begin
  Result := FPerDs5OLD;
end;

procedure T420IPO.SetPerDs5OLD(const pPerDs5: Double);
begin
  FPerDs5OLD := pPerDs5;
end;

function T420IPO.GetPerIpiOLD: Double;
begin
  Result := FPerIpiOLD;
end;

procedure T420IPO.SetPerIpiOLD(const pPerIpi: Double);
begin
  FPerIpiOLD := pPerIpi;
end;

function T420IPO.GetPerIcmOLD: Double;
begin
  Result := FPerIcmOLD;
end;

procedure T420IPO.SetPerIcmOLD(const pPerIcm: Double);
begin
  FPerIcmOLD := pPerIcm;
end;

function T420IPO.GetPerFunOLD: Double;
begin
  Result := FPerFunOLD;
end;

procedure T420IPO.SetPerFunOLD(const pPerFun: Double);
begin
  FPerFunOLD := pPerFun;
end;

function T420IPO.GetDatEntOLD: TDate;
begin
  Result := FDatEntOLD;
end;

procedure T420IPO.SetDatEntOLD(const pDatEnt: TDate);
begin
  FDatEntOLD := pDatEnt;
end;

function T420IPO.GetCodPvpOLD: string;
begin
  Result := FCodPvpOLD;
end;

procedure T420IPO.SetCodPvpOLD(const pCodPvp: string);
begin
  FCodPvpOLD := pCodPvp;
end;

function T420IPO.GetNumPrjOLD: Integer;
begin
  Result := FNumPrjOLD;
end;

procedure T420IPO.SetNumPrjOLD(const pNumPrj: Integer);
begin
  FNumPrjOLD := pNumPrj;
end;

function T420IPO.GetCodFpjOLD: Integer;
begin
  Result := FCodFpjOLD;
end;

procedure T420IPO.SetCodFpjOLD(const pCodFpj: Integer);
begin
  FCodFpjOLD := pCodFpj;
end;

function T420IPO.GetCtaFinOLD: Integer;
begin
  Result := FCtaFinOLD;
end;

procedure T420IPO.SetCtaFinOLD(const pCtaFin: Integer);
begin
  FCtaFinOLD := pCtaFin;
end;

function T420IPO.GetCtaRedOLD: Integer;
begin
  Result := FCtaRedOLD;
end;

procedure T420IPO.SetCtaRedOLD(const pCtaRed: Integer);
begin
  FCtaRedOLD := pCtaRed;
end;

function T420IPO.GetCodCcuOLD: string;
begin
  Result := FCodCcuOLD;
end;

procedure T420IPO.SetCodCcuOLD(const pCodCcu: string);
begin
  FCodCcuOLD := pCodCcu;
end;

function T420IPO.GetVlrFreOLD: Double;
begin
  Result := FVlrFreOLD;
end;

procedure T420IPO.SetVlrFreOLD(const pVlrFre: Double);
begin
  FVlrFreOLD := pVlrFre;
end;

function T420IPO.GetVlrSegOLD: Double;
begin
  Result := FVlrSegOLD;
end;

procedure T420IPO.SetVlrSegOLD(const pVlrSeg: Double);
begin
  FVlrSegOLD := pVlrSeg;
end;

function T420IPO.GetVlrEmbOLD: Double;
begin
  Result := FVlrEmbOLD;
end;

procedure T420IPO.SetVlrEmbOLD(const pVlrEmb: Double);
begin
  FVlrEmbOLD := pVlrEmb;
end;

function T420IPO.GetVlrEncOLD: Double;
begin
  Result := FVlrEncOLD;
end;

procedure T420IPO.SetVlrEncOLD(const pVlrEnc: Double);
begin
  FVlrEncOLD := pVlrEnc;
end;

function T420IPO.GetVlrOutOLD: Double;
begin
  Result := FVlrOutOLD;
end;

procedure T420IPO.SetVlrOutOLD(const pVlrOut: Double);
begin
  FVlrOutOLD := pVlrOut;
end;

function T420IPO.GetVlrDarOLD: Double;
begin
  Result := FVlrDarOLD;
end;

procedure T420IPO.SetVlrDarOLD(const pVlrDar: Double);
begin
  FVlrDarOLD := pVlrDar;
end;

function T420IPO.GetVlrFrdOLD: Double;
begin
  Result := FVlrFrdOLD;
end;

procedure T420IPO.SetVlrFrdOLD(const pVlrFrd: Double);
begin
  FVlrFrdOLD := pVlrFrd;
end;

function T420IPO.GetVlrOudOLD: Double;
begin
  Result := FVlrOudOLD;
end;

procedure T420IPO.SetVlrOudOLD(const pVlrOud: Double);
begin
  FVlrOudOLD := pVlrOud;
end;

function T420IPO.GetVlrBruOLD: Double;
begin
  Result := FVlrBruOLD;
end;

procedure T420IPO.SetVlrBruOLD(const pVlrBru: Double);
begin
  FVlrBruOLD := pVlrBru;
end;

function T420IPO.GetVlrDscOLD: Double;
begin
  Result := FVlrDscOLD;
end;

procedure T420IPO.SetVlrDscOLD(const pVlrDsc: Double);
begin
  FVlrDscOLD := pVlrDsc;
end;

function T420IPO.GetVlrDs1OLD: Double;
begin
  Result := FVlrDs1OLD;
end;

procedure T420IPO.SetVlrDs1OLD(const pVlrDs1: Double);
begin
  FVlrDs1OLD := pVlrDs1;
end;

function T420IPO.GetVlrDs2OLD: Double;
begin
  Result := FVlrDs2OLD;
end;

procedure T420IPO.SetVlrDs2OLD(const pVlrDs2: Double);
begin
  FVlrDs2OLD := pVlrDs2;
end;

function T420IPO.GetVlrDs3OLD: Double;
begin
  Result := FVlrDs3OLD;
end;

procedure T420IPO.SetVlrDs3OLD(const pVlrDs3: Double);
begin
  FVlrDs3OLD := pVlrDs3;
end;

function T420IPO.GetVlrDs4OLD: Double;
begin
  Result := FVlrDs4OLD;
end;

procedure T420IPO.SetVlrDs4OLD(const pVlrDs4: Double);
begin
  FVlrDs4OLD := pVlrDs4;
end;

function T420IPO.GetVlrDs5OLD: Double;
begin
  Result := FVlrDs5OLD;
end;

procedure T420IPO.SetVlrDs5OLD(const pVlrDs5: Double);
begin
  FVlrDs5OLD := pVlrDs5;
end;

function T420IPO.GetVlrDzfOLD: Double;
begin
  Result := FVlrDzfOLD;
end;

procedure T420IPO.SetVlrDzfOLD(const pVlrDzf: Double);
begin
  FVlrDzfOLD := pVlrDzf;
end;

function T420IPO.GetVlrBfuOLD: Double;
begin
  Result := FVlrBfuOLD;
end;

procedure T420IPO.SetVlrBfuOLD(const pVlrBfu: Double);
begin
  FVlrBfuOLD := pVlrBfu;
end;

function T420IPO.GetVlrFunOLD: Double;
begin
  Result := FVlrFunOLD;
end;

procedure T420IPO.SetVlrFunOLD(const pVlrFun: Double);
begin
  FVlrFunOLD := pVlrFun;
end;

function T420IPO.GetVlrBipOLD: Double;
begin
  Result := FVlrBipOLD;
end;

procedure T420IPO.SetVlrBipOLD(const pVlrBip: Double);
begin
  FVlrBipOLD := pVlrBip;
end;

function T420IPO.GetVlrIpiOLD: Double;
begin
  Result := FVlrIpiOLD;
end;

procedure T420IPO.SetVlrIpiOLD(const pVlrIpi: Double);
begin
  FVlrIpiOLD := pVlrIpi;
end;

function T420IPO.GetVlrBicOLD: Double;
begin
  Result := FVlrBicOLD;
end;

procedure T420IPO.SetVlrBicOLD(const pVlrBic: Double);
begin
  FVlrBicOLD := pVlrBic;
end;

function T420IPO.GetVlrIcmOLD: Double;
begin
  Result := FVlrIcmOLD;
end;

procedure T420IPO.SetVlrIcmOLD(const pVlrIcm: Double);
begin
  FVlrIcmOLD := pVlrIcm;
end;

function T420IPO.GetVlrBsiOLD: Double;
begin
  Result := FVlrBsiOLD;
end;

procedure T420IPO.SetVlrBsiOLD(const pVlrBsi: Double);
begin
  FVlrBsiOLD := pVlrBsi;
end;

function T420IPO.GetVlrIcsOLD: Double;
begin
  Result := FVlrIcsOLD;
end;

procedure T420IPO.SetVlrIcsOLD(const pVlrIcs: Double);
begin
  FVlrIcsOLD := pVlrIcs;
end;

function T420IPO.GetVlrBspOLD: Double;
begin
  Result := FVlrBspOLD;
end;

procedure T420IPO.SetVlrBspOLD(const pVlrBsp: Double);
begin
  FVlrBspOLD := pVlrBsp;
end;

function T420IPO.GetVlrStpOLD: Double;
begin
  Result := FVlrStpOLD;
end;

procedure T420IPO.SetVlrStpOLD(const pVlrStp: Double);
begin
  FVlrStpOLD := pVlrStp;
end;

function T420IPO.GetVlrBscOLD: Double;
begin
  Result := FVlrBscOLD;
end;

procedure T420IPO.SetVlrBscOLD(const pVlrBsc: Double);
begin
  FVlrBscOLD := pVlrBsc;
end;

function T420IPO.GetVlrStcOLD: Double;
begin
  Result := FVlrStcOLD;
end;

procedure T420IPO.SetVlrStcOLD(const pVlrStc: Double);
begin
  FVlrStcOLD := pVlrStc;
end;

function T420IPO.GetVlrLprOLD: Double;
begin
  Result := FVlrLprOLD;
end;

procedure T420IPO.SetVlrLprOLD(const pVlrLpr: Double);
begin
  FVlrLprOLD := pVlrLpr;
end;

function T420IPO.GetVlrLouOLD: Double;
begin
  Result := FVlrLouOLD;
end;

procedure T420IPO.SetVlrLouOLD(const pVlrLou: Double);
begin
  FVlrLouOLD := pVlrLou;
end;

function T420IPO.GetVlrLiqOLD: Double;
begin
  Result := FVlrLiqOLD;
end;

procedure T420IPO.SetVlrLiqOLD(const pVlrLiq: Double);
begin
  FVlrLiqOLD := pVlrLiq;
end;

function T420IPO.GetVlrFinOLD: Double;
begin
  Result := FVlrFinOLD;
end;

procedure T420IPO.SetVlrFinOLD(const pVlrFin: Double);
begin
  FVlrFinOLD := pVlrFin;
end;

function T420IPO.GetAcrFinOLD: Double;
begin
  Result := FAcrFinOLD;
end;

procedure T420IPO.SetAcrFinOLD(const pAcrFin: Double);
begin
  FAcrFinOLD := pAcrFin;
end;

function T420IPO.GetSitIpoOLD: Integer;
begin
  Result := FSitIpoOLD;
end;

procedure T420IPO.SetSitIpoOLD(const pSitIpo: Integer);
begin
  FSitIpoOLD := pSitIpo;
end;

function T420IPO.GetCodMotOLD: Integer;
begin
  Result := FCodMotOLD;
end;

procedure T420IPO.SetCodMotOLD(const pCodMot: Integer);
begin
  FCodMotOLD := pCodMot;
end;

function T420IPO.GetObsMotOLD: string;
begin
  Result := FObsMotOLD;
end;

procedure T420IPO.SetObsMotOLD(const pObsMot: string);
begin
  FObsMotOLD := pObsMot;
end;

function T420IPO.GetSeqIpdOLD: Integer;
begin
  Result := FSeqIpdOLD;
end;

procedure T420IPO.SetSeqIpdOLD(const pSeqIpd: Integer);
begin
  FSeqIpdOLD := pSeqIpd;
end;

function T420IPO.GetFilCtrOLD: Integer;
begin
  Result := FFilCtrOLD;
end;

procedure T420IPO.SetFilCtrOLD(const pFilCtr: Integer);
begin
  FFilCtrOLD := pFilCtr;
end;

function T420IPO.GetNumCtrOLD: Integer;
begin
  Result := FNumCtrOLD;
end;

procedure T420IPO.SetNumCtrOLD(const pNumCtr: Integer);
begin
  FNumCtrOLD := pNumCtr;
end;

function T420IPO.GetDatCptOLD: TDate;
begin
  Result := FDatCptOLD;
end;

procedure T420IPO.SetDatCptOLD(const pDatCpt: TDate);
begin
  FDatCptOLD := pDatCpt;
end;

function T420IPO.GetSeqCcpOLD: Integer;
begin
  Result := FSeqCcpOLD;
end;

procedure T420IPO.SetSeqCcpOLD(const pSeqCcp: Integer);
begin
  FSeqCcpOLD := pSeqCcp;
end;

function T420IPO.GetIndEqiOLD: Char;
begin
  Result := FIndEqiOLD;
end;

procedure T420IPO.SetIndEqiOLD(const pIndEqi: Char);
begin
  FIndEqiOLD := pIndEqi;
end;

function T420IPO.GetUsuGerOLD: Integer;
begin
  Result := FUsuGerOLD;
end;

procedure T420IPO.SetUsuGerOLD(const pUsuGer: Integer);
begin
  FUsuGerOLD := pUsuGer;
end;

function T420IPO.GetDatGerOLD: TDate;
begin
  Result := FDatGerOLD;
end;

procedure T420IPO.SetDatGerOLD(const pDatGer: TDate);
begin
  FDatGerOLD := pDatGer;
end;

function T420IPO.GetHorGerOLD: Integer;
begin
  Result := FHorGerOLD;
end;

procedure T420IPO.SetHorGerOLD(const pHorGer: Integer);
begin
  FHorGerOLD := pHorGer;
end;

function T420IPO.GetFilPedOLD: Integer;
begin
  Result := FFilPedOLD;
end;

procedure T420IPO.SetFilPedOLD(const pFilPed: Integer);
begin
  FFilPedOLD := pFilPed;
end;

function T420IPO.GetNumPedOLD: Integer;
begin
  Result := FNumPedOLD;
end;

procedure T420IPO.SetNumPedOLD(const pNumPed: Integer);
begin
  FNumPedOLD := pNumPed;
end;

function T420IPO.GetDatVltOLD: TDate;
begin
  Result := FDatVltOLD;
end;

procedure T420IPO.SetDatVltOLD(const pDatVlt: TDate);
begin
  FDatVltOLD := pDatVlt;
end;

function T420IPO.GetQtdForOLD: Double;
begin
  Result := FQtdForOLD;
end;

procedure T420IPO.SetQtdForOLD(const pQtdFor: Double);
begin
  FQtdForOLD := pQtdFor;
end;

function T420IPO.GetPreForOLD: Double;
begin
  Result := FPreForOLD;
end;

procedure T420IPO.SetPreForOLD(const pPreFor: Double);
begin
  FPreForOLD := pPreFor;
end;

function T420IPO.GetCodMoeOLD: string;
begin
  Result := FCodMoeOLD;
end;

procedure T420IPO.SetCodMoeOLD(const pCodMoe: string);
begin
  FCodMoeOLD := pCodMoe;
end;

function T420IPO.GetDatMoeOLD: TDate;
begin
  Result := FDatMoeOLD;
end;

procedure T420IPO.SetDatMoeOLD(const pDatMoe: TDate);
begin
  FDatMoeOLD := pDatMoe;
end;

function T420IPO.GetCotMoeOLD: Double;
begin
  Result := FCotMoeOLD;
end;

procedure T420IPO.SetCotMoeOLD(const pCotMoe: Double);
begin
  FCotMoeOLD := pCotMoe;
end;

function T420IPO.GetFecMoeOLD: Char;
begin
  Result := FFecMoeOLD;
end;

procedure T420IPO.SetFecMoeOLD(const pFecMoe: Char);
begin
  FFecMoeOLD := pFecMoe;
end;

function T420IPO.GetPerIimOLD: Double;
begin
  Result := FPerIimOLD;
end;

procedure T420IPO.SetPerIimOLD(const pPerIim: Double);
begin
  FPerIimOLD := pPerIim;
end;

function T420IPO.GetVlrBiiOLD: Double;
begin
  Result := FVlrBiiOLD;
end;

procedure T420IPO.SetVlrBiiOLD(const pVlrBii: Double);
begin
  FVlrBiiOLD := pVlrBii;
end;

function T420IPO.GetVlrIimOLD: Double;
begin
  Result := FVlrIimOLD;
end;

procedure T420IPO.SetVlrIimOLD(const pVlrIim: Double);
begin
  FVlrIimOLD := pVlrIim;
end;

function T420IPO.GetVlrRisOLD: Double;
begin
  Result := FVlrRisOLD;
end;

procedure T420IPO.SetVlrRisOLD(const pVlrRis: Double);
begin
  FVlrRisOLD := pVlrRis;
end;

function T420IPO.GetSeqIorOLD: Integer;
begin
  Result := FSeqIorOLD;
end;

procedure T420IPO.SetSeqIorOLD(const pSeqIor: Integer);
begin
  FSeqIorOLD := pSeqIor;
end;

function T420IPO.GetVlrBpiOLD: Double;
begin
  Result := FVlrBpiOLD;
end;

procedure T420IPO.SetVlrBpiOLD(const pVlrBpi: Double);
begin
  FVlrBpiOLD := pVlrBpi;
end;

function T420IPO.GetVlrPisOLD: Double;
begin
  Result := FVlrPisOLD;
end;

procedure T420IPO.SetVlrPisOLD(const pVlrPis: Double);
begin
  FVlrPisOLD := pVlrPis;
end;

function T420IPO.GetVlrBcrOLD: Double;
begin
  Result := FVlrBcrOLD;
end;

procedure T420IPO.SetVlrBcrOLD(const pVlrBcr: Double);
begin
  FVlrBcrOLD := pVlrBcr;
end;

function T420IPO.GetVlrCorOLD: Double;
begin
  Result := FVlrCorOLD;
end;

procedure T420IPO.SetVlrCorOLD(const pVlrCor: Double);
begin
  FVlrCorOLD := pVlrCor;
end;

function T420IPO.GetCodFxaOLD: string;
begin
  Result := FCodFxaOLD;
end;

procedure T420IPO.SetCodFxaOLD(const pCodFxa: string);
begin
  FCodFxaOLD := pCodFxa;
end;

function T420IPO.GetIdxGrdOLD: Integer;
begin
  Result := FIdxGrdOLD;
end;

procedure T420IPO.SetIdxGrdOLD(const pIdxGrd: Integer);
begin
  FIdxGrdOLD := pIdxGrd;
end;

function T420IPO.GetPerPitOLD: Double;
begin
  Result := FPerPitOLD;
end;

procedure T420IPO.SetPerPitOLD(const pPerPit: Double);
begin
  FPerPitOLD := pPerPit;
end;

function T420IPO.GetVlrBptOLD: Double;
begin
  Result := FVlrBptOLD;
end;

procedure T420IPO.SetVlrBptOLD(const pVlrBpt: Double);
begin
  FVlrBptOLD := pVlrBpt;
end;

function T420IPO.GetVlrPitOLD: Double;
begin
  Result := FVlrPitOLD;
end;

procedure T420IPO.SetVlrPitOLD(const pVlrPit: Double);
begin
  FVlrPitOLD := pVlrPit;
end;

function T420IPO.GetPerCrtOLD: Double;
begin
  Result := FPerCrtOLD;
end;

procedure T420IPO.SetPerCrtOLD(const pPerCrt: Double);
begin
  FPerCrtOLD := pPerCrt;
end;

function T420IPO.GetVlrBctOLD: Double;
begin
  Result := FVlrBctOLD;
end;

procedure T420IPO.SetVlrBctOLD(const pVlrBct: Double);
begin
  FVlrBctOLD := pVlrBct;
end;

function T420IPO.GetVlrCrtOLD: Double;
begin
  Result := FVlrCrtOLD;
end;

procedure T420IPO.SetVlrCrtOLD(const pVlrCrt: Double);
begin
  FVlrCrtOLD := pVlrCrt;
end;

function T420IPO.GetPerCslOLD: Double;
begin
  Result := FPerCslOLD;
end;

procedure T420IPO.SetPerCslOLD(const pPerCsl: Double);
begin
  FPerCslOLD := pPerCsl;
end;

function T420IPO.GetVlrBclOLD: Double;
begin
  Result := FVlrBclOLD;
end;

procedure T420IPO.SetVlrBclOLD(const pVlrBcl: Double);
begin
  FVlrBclOLD := pVlrBcl;
end;

function T420IPO.GetVlrCslOLD: Double;
begin
  Result := FVlrCslOLD;
end;

procedure T420IPO.SetVlrCslOLD(const pVlrCsl: Double);
begin
  FVlrCslOLD := pVlrCsl;
end;

function T420IPO.GetPerOurOLD: Double;
begin
  Result := FPerOurOLD;
end;

procedure T420IPO.SetPerOurOLD(const pPerOur: Double);
begin
  FPerOurOLD := pPerOur;
end;

function T420IPO.GetVlrBorOLD: Double;
begin
  Result := FVlrBorOLD;
end;

procedure T420IPO.SetVlrBorOLD(const pVlrBor: Double);
begin
  FVlrBorOLD := pVlrBor;
end;

function T420IPO.GetVlrOurOLD: Double;
begin
  Result := FVlrOurOLD;
end;

procedure T420IPO.SetVlrOurOLD(const pVlrOur: Double);
begin
  FVlrOurOLD := pVlrOur;
end;

function T420IPO.GetPerIrfOLD: Double;
begin
  Result := FPerIrfOLD;
end;

procedure T420IPO.SetPerIrfOLD(const pPerIrf: Double);
begin
  FPerIrfOLD := pPerIrf;
end;

function T420IPO.GetVlrBirOLD: Double;
begin
  Result := FVlrBirOLD;
end;

procedure T420IPO.SetVlrBirOLD(const pVlrBir: Double);
begin
  FVlrBirOLD := pVlrBir;
end;

function T420IPO.GetVlrIrfOLD: Double;
begin
  Result := FVlrIrfOLD;
end;

procedure T420IPO.SetVlrIrfOLD(const pVlrIrf: Double);
begin
  FVlrIrfOLD := pVlrIrf;
end;

function T420IPO.GetFilCesOLD: Integer;
begin
  Result := FFilCesOLD;
end;

procedure T420IPO.SetFilCesOLD(const pFilCes: Integer);
begin
  FFilCesOLD := pFilCes;
end;

function T420IPO.GetDatCesOLD: TDate;
begin
  Result := FDatCesOLD;
end;

procedure T420IPO.SetDatCesOLD(const pDatCes: TDate);
begin
  FDatCesOLD := pDatCes;
end;

function T420IPO.GetSeqCesOLD: Integer;
begin
  Result := FSeqCesOLD;
end;

procedure T420IPO.SetSeqCesOLD(const pSeqCes: Integer);
begin
  FSeqCesOLD := pSeqCes;
end;

function T420IPO.GetPerDs1OLD: Double;
begin
  Result := FPerDs1OLD;
end;

procedure T420IPO.SetPerDs1OLD(const pPerDs1: Double);
begin
  FPerDs1OLD := pPerDs1;
end;

function T420IPO.GetPerDs2OLD: Double;
begin
  Result := FPerDs2OLD;
end;

procedure T420IPO.SetPerDs2OLD(const pPerDs2: Double);
begin
  FPerDs2OLD := pPerDs2;
end;

function T420IPO.GetVlrOriOLD: Double;
begin
  Result := FVlrOriOLD;
end;

procedure T420IPO.SetVlrOriOLD(const pVlrOri: Double);
begin
  FVlrOriOLD := pVlrOri;
end;

function T420IPO.GetQtdOriOLD: Double;
begin
  Result := FQtdOriOLD;
end;

procedure T420IPO.SetQtdOriOLD(const pQtdOri: Double);
begin
  FQtdOriOLD := pQtdOri;
end;

function T420IPO.GetVlrFeiOLD: Double;
begin
  Result := FVlrFeiOLD;
end;

procedure T420IPO.SetVlrFeiOLD(const pVlrFei: Double);
begin
  FVlrFeiOLD := pVlrFei;
end;

function T420IPO.GetVlrSeiOLD: Double;
begin
  Result := FVlrSeiOLD;
end;

procedure T420IPO.SetVlrSeiOLD(const pVlrSei: Double);
begin
  FVlrSeiOLD := pVlrSei;
end;

function T420IPO.GetVlrOuiOLD: Double;
begin
  Result := FVlrOuiOLD;
end;

procedure T420IPO.SetVlrOuiOLD(const pVlrOui: Double);
begin
  FVlrOuiOLD := pVlrOui;
end;

function T420IPO.GetBcoImpOLD: Double;
begin
  Result := FBcoImpOLD;
end;

procedure T420IPO.SetBcoImpOLD(const pBcoImp: Double);
begin
  FBcoImpOLD := pBcoImp;
end;

function T420IPO.GetCofImpOLD: Double;
begin
  Result := FCofImpOLD;
end;

procedure T420IPO.SetCofImpOLD(const pCofImp: Double);
begin
  FCofImpOLD := pCofImp;
end;

function T420IPO.GetBpiImpOLD: Double;
begin
  Result := FBpiImpOLD;
end;

procedure T420IPO.SetBpiImpOLD(const pBpiImp: Double);
begin
  FBpiImpOLD := pBpiImp;
end;

function T420IPO.GetPisImpOLD: Double;
begin
  Result := FPisImpOLD;
end;

procedure T420IPO.SetPisImpOLD(const pPisImp: Double);
begin
  FPisImpOLD := pPisImp;
end;

function T420IPO.GetSeqCpkOLD: Integer;
begin
  Result := FSeqCpkOLD;
end;

procedure T420IPO.SetSeqCpkOLD(const pSeqCpk: Integer);
begin
  FSeqCpkOLD := pSeqCpk;
end;

function T420IPO.GetVlrDm1OLD: Double;
begin
  Result := FVlrDm1OLD;
end;

procedure T420IPO.SetVlrDm1OLD(const pVlrDm1: Double);
begin
  FVlrDm1OLD := pVlrDm1;
end;

function T420IPO.GetVlrDm2OLD: Double;
begin
  Result := FVlrDm2OLD;
end;

procedure T420IPO.SetVlrDm2OLD(const pVlrDm2: Double);
begin
  FVlrDm2OLD := pVlrDm2;
end;

function T420IPO.GetVlrDm3OLD: Double;
begin
  Result := FVlrDm3OLD;
end;

procedure T420IPO.SetVlrDm3OLD(const pVlrDm3: Double);
begin
  FVlrDm3OLD := pVlrDm3;
end;

function T420IPO.GetVlrDm4OLD: Double;
begin
  Result := FVlrDm4OLD;
end;

procedure T420IPO.SetVlrDm4OLD(const pVlrDm4: Double);
begin
  FVlrDm4OLD := pVlrDm4;
end;

function T420IPO.GetVlrDm5OLD: Double;
begin
  Result := FVlrDm5OLD;
end;

procedure T420IPO.SetVlrDm5OLD(const pVlrDm5: Double);
begin
  FVlrDm5OLD := pVlrDm5;
end;

function T420IPO.GetVlrDm6OLD: Double;
begin
  Result := FVlrDm6OLD;
end;

procedure T420IPO.SetVlrDm6OLD(const pVlrDm6: Double);
begin
  FVlrDm6OLD := pVlrDm6;
end;

function T420IPO.GetBemPriOLD: string;
begin
  Result := FBemPriOLD;
end;

procedure T420IPO.SetBemPriOLD(const pBemPri: string);
begin
  FBemPriOLD := pBemPri;
end;

function T420IPO.GetEmpPedOLD: Integer;
begin
  Result := FEmpPedOLD;
end;

procedure T420IPO.SetEmpPedOLD(const pEmpPed: Integer);
begin
  FEmpPedOLD := pEmpPed;
end;

function T420IPO.GetEmpNfvOLD: Integer;
begin
  Result := FEmpNfvOLD;
end;

procedure T420IPO.SetEmpNfvOLD(const pEmpNfv: Integer);
begin
  FEmpNfvOLD := pEmpNfv;
end;

function T420IPO.GetFilNfvOLD: Integer;
begin
  Result := FFilNfvOLD;
end;

procedure T420IPO.SetFilNfvOLD(const pFilNfv: Integer);
begin
  FFilNfvOLD := pFilNfv;
end;

function T420IPO.GetSnfNfvOLD: string;
begin
  Result := FSnfNfvOLD;
end;

procedure T420IPO.SetSnfNfvOLD(const pSnfNfv: string);
begin
  FSnfNfvOLD := pSnfNfv;
end;

function T420IPO.GetNumNfvOLD: Integer;
begin
  Result := FNumNfvOLD;
end;

procedure T420IPO.SetNumNfvOLD(const pNumNfv: Integer);
begin
  FNumNfvOLD := pNumNfv;
end;

function T420IPO.GetSeqIpvOLD: Integer;
begin
  Result := FSeqIpvOLD;
end;

procedure T420IPO.SetSeqIpvOLD(const pSeqIpv: Integer);
begin
  FSeqIpvOLD := pSeqIpv;
end;

function T420IPO.GetCodTrgOLD: string;
begin
  Result := FCodTrgOLD;
end;

procedure T420IPO.SetCodTrgOLD(const pCodTrg: string);
begin
  FCodTrgOLD := pCodTrg;
end;

function T420IPO.GetPerBonOLD: Double;
begin
  Result := FPerBonOLD;
end;

procedure T420IPO.SetPerBonOLD(const pPerBon: Double);
begin
  FPerBonOLD := pPerBon;
end;

function T420IPO.GetVlrDfaOLD: Double;
begin
  Result := FVlrDfaOLD;
end;

procedure T420IPO.SetVlrDfaOLD(const pVlrDfa: Double);
begin
  FVlrDfaOLD := pVlrDfa;
end;

function T420IPO.GetQtdBpiOLD: Double;
begin
  Result := FQtdBpiOLD;
end;

procedure T420IPO.SetQtdBpiOLD(const pQtdBpi: Double);
begin
  FQtdBpiOLD := pQtdBpi;
end;

function T420IPO.GetAliPisOLD: Double;
begin
  Result := FAliPisOLD;
end;

procedure T420IPO.SetAliPisOLD(const pAliPis: Double);
begin
  FAliPisOLD := pAliPis;
end;

function T420IPO.GetQtdBcoOLD: Double;
begin
  Result := FQtdBcoOLD;
end;

procedure T420IPO.SetQtdBcoOLD(const pQtdBco: Double);
begin
  FQtdBcoOLD := pQtdBco;
end;

function T420IPO.GetAliCofOLD: Double;
begin
  Result := FAliCofOLD;
end;

procedure T420IPO.SetAliCofOLD(const pAliCof: Double);
begin
  FAliCofOLD := pAliCof;
end;

function T420IPO.GetQtdBipOLD: Double;
begin
  Result := FQtdBipOLD;
end;

procedure T420IPO.SetQtdBipOLD(const pQtdBip: Double);
begin
  FQtdBipOLD := pQtdBip;
end;

function T420IPO.GetAliIpiOLD: Double;
begin
  Result := FAliIpiOLD;
end;

procedure T420IPO.SetAliIpiOLD(const pAliIpi: Double);
begin
  FAliIpiOLD := pAliIpi;
end;

function T420IPO.GetCodFabOLD: string;
begin
  Result := FCodFabOLD;
end;

procedure T420IPO.SetCodFabOLD(const pCodFab: string);
begin
  FCodFabOLD := pCodFab;
end;

function T420IPO.GetProFabOLD: string;
begin
  Result := FProFabOLD;
end;

procedure T420IPO.SetProFabOLD(const pProFab: string);
begin
  FProFabOLD := pProFab;
end;

function T420IPO.GetSubProOLD: Char;
begin
  Result := FSubProOLD;
end;

procedure T420IPO.SetSubProOLD(const pSubPro: Char);
begin
  FSubProOLD := pSubPro;
end;

function T420IPO.GetTipCurOLD: Integer;
begin
  Result := FTipCurOLD;
end;

procedure T420IPO.SetTipCurOLD(const pTipCur: Integer);
begin
  FTipCurOLD := pTipCur;
end;

function T420IPO.GetUSU_DatConOLD: TDate;
begin
  Result := FUSU_DatConOLD;
end;

procedure T420IPO.SetUSU_DatConOLD(const pUSU_DatCon: TDate);
begin
  FUSU_DatConOLD := pUSU_DatCon;
end;

function T420IPO.GetUSU_UsuModOLD: Integer;
begin
  Result := FUSU_UsuModOLD;
end;

procedure T420IPO.SetUSU_UsuModOLD(const pUSU_UsuMod: Integer);
begin
  FUSU_UsuModOLD := pUSU_UsuMod;
end;

function T420IPO.GetUSU_DatModOLD: TDate;
begin
  Result := FUSU_DatModOLD;
end;

procedure T420IPO.SetUSU_DatModOLD(const pUSU_DatMod: TDate);
begin
  FUSU_DatModOLD := pUSU_DatMod;
end;

function T420IPO.GetUSU_HorModOLD: Integer;
begin
  Result := FUSU_HorModOLD;
end;

procedure T420IPO.SetUSU_HorModOLD(const pUSU_HorMod: Integer);
begin
  FUSU_HorModOLD := pUSU_HorMod;
end;

function T420IPO.GetUSU_LisCliOLD: string;
begin
  Result := FUSU_LisCliOLD;
end;

procedure T420IPO.SetUSU_LisCliOLD(const pUSU_LisCli: string);
begin
  FUSU_LisCliOLD := pUSU_LisCli;
end;

function T420IPO.GetUSU_QtdExaOLD: Char;
begin
  Result := FUSU_QtdExaOLD;
end;

procedure T420IPO.SetUSU_QtdExaOLD(const pUSU_QtdExa: Char);
begin
  FUSU_QtdExaOLD := pUSU_QtdExa;
end;

function T420IPO.GetUSU_TipTrfOLD: Char;
begin
  Result := FUSU_TipTrfOLD;
end;

procedure T420IPO.SetUSU_TipTrfOLD(const pUSU_TipTrf: Char);
begin
  FUSU_TipTrfOLD := pUSU_TipTrf;
end;

function T420IPO.GetUSU_OC831OLD: Char;
begin
  Result := FUSU_OC831OLD;
end;

procedure T420IPO.SetUSU_OC831OLD(const pUSU_OC831: Char);
begin
  FUSU_OC831OLD := pUSU_OC831;
end;

function T420IPO.GetUSU_QtdAnaOLD: Double;
begin
  Result := FUSU_QtdAnaOLD;
end;

procedure T420IPO.SetUSU_QtdAnaOLD(const pUSU_QtdAna: Double);
begin
  FUSU_QtdAnaOLD := pUSU_QtdAna;
end;

function T420IPO.GetUSU_NumAnaOLD: Integer;
begin
  Result := FUSU_NumAnaOLD;
end;

procedure T420IPO.SetUSU_NumAnaOLD(const pUSU_NumAna: Integer);
begin
  FUSU_NumAnaOLD := pUSU_NumAna;
end;

function T420IPO.GetUSU_FilPedOLD: Integer;
begin
  Result := FUSU_FilPedOLD;
end;

procedure T420IPO.SetUSU_FilPedOLD(const pUSU_FilPed: Integer);
begin
  FUSU_FilPedOLD := pUSU_FilPed;
end;

function T420IPO.GetUSU_NumPedOLD: Integer;
begin
  Result := FUSU_NumPedOLD;
end;

procedure T420IPO.SetUSU_NumPedOLD(const pUSU_NumPed: Integer);
begin
  FUSU_NumPedOLD := pUSU_NumPed;
end;

function T420IPO.GetUSU_SeqIpdOLD: Integer;
begin
  Result := FUSU_SeqIpdOLD;
end;

procedure T420IPO.SetUSU_SeqIpdOLD(const pUSU_SeqIpd: Integer);
begin
  FUSU_SeqIpdOLD := pUSU_SeqIpd;
end;

function T420IPO.GetUSU_ObsImpOLD: string;
begin
  Result := FUSU_ObsImpOLD;
end;

procedure T420IPO.SetUSU_ObsImpOLD(const pUSU_ObsImp: string);
begin
  FUSU_ObsImpOLD := pUSU_ObsImp;
end;

function T420IPO.GetUSU_NumReqOLD: Integer;
begin
  Result := FUSU_NumReqOLD;
end;

procedure T420IPO.SetUSU_NumReqOLD(const pUSU_NumReq: Integer);
begin
  FUSU_NumReqOLD := pUSU_NumReq;
end;

function T420IPO.GetUSU_SeqReqOLD: Integer;
begin
  Result := FUSU_SeqReqOLD;
end;

procedure T420IPO.SetUSU_SeqReqOLD(const pUSU_SeqReq: Integer);
begin
  FUSU_SeqReqOLD := pUSU_SeqReq;
end;

procedure T420IPO.Registros_OLD();
begin
  FCodEmpOLD := FCodEmp;
  FCodFilOLD := FCodFil;
  FNumOcpOLD := FNumOcp;
  FSeqIpoOLD := FSeqIpo;
  FTnsProOLD := FTnsPro;
  FCodProOLD := FCodPro;
  FCodDerOLD := FCodDer;
  FCplIpoOLD := FCplIpo;
  FProForOLD := FProFor;
  FDesForOLD := FDesFor;
  FUniForOLD := FUniFor;
  FCodFamOLD := FCodFam;
  FCodTicOLD := FCodTic;
  FCodTrdOLD := FCodTrd;
  FCodTstOLD := FCodTst;
  FCodStpOLD := FCodStp;
  FCodStcOLD := FCodStc;
  FCodDepOLD := FCodDep;
  FCodLotOLD := FCodLot;
  FQtdPedOLD := FQtdPed;
  FQtdRecOLD := FQtdRec;
  FQtdCanOLD := FQtdCan;
  FQtdAbeOLD := FQtdAbe;
  FUniMedOLD := FUniMed;
  FCodTprOLD := FCodTpr;
  FPreUniOLD := FPreUni;
  FPreFixOLD := FPreFix;
  FPerDscOLD := FPerDsc;
  FPerDs3OLD := FPerDs3;
  FPerDs4OLD := FPerDs4;
  FPerDs5OLD := FPerDs5;
  FPerIpiOLD := FPerIpi;
  FPerIcmOLD := FPerIcm;
  FPerFunOLD := FPerFun;
  FDatEntOLD := FDatEnt;
  FCodPvpOLD := FCodPvp;
  FNumPrjOLD := FNumPrj;
  FCodFpjOLD := FCodFpj;
  FCtaFinOLD := FCtaFin;
  FCtaRedOLD := FCtaRed;
  FCodCcuOLD := FCodCcu;
  FVlrFreOLD := FVlrFre;
  FVlrSegOLD := FVlrSeg;
  FVlrEmbOLD := FVlrEmb;
  FVlrEncOLD := FVlrEnc;
  FVlrOutOLD := FVlrOut;
  FVlrDarOLD := FVlrDar;
  FVlrFrdOLD := FVlrFrd;
  FVlrOudOLD := FVlrOud;
  FVlrBruOLD := FVlrBru;
  FVlrDscOLD := FVlrDsc;
  FVlrDs1OLD := FVlrDs1;
  FVlrDs2OLD := FVlrDs2;
  FVlrDs3OLD := FVlrDs3;
  FVlrDs4OLD := FVlrDs4;
  FVlrDs5OLD := FVlrDs5;
  FVlrDzfOLD := FVlrDzf;
  FVlrBfuOLD := FVlrBfu;
  FVlrFunOLD := FVlrFun;
  FVlrBipOLD := FVlrBip;
  FVlrIpiOLD := FVlrIpi;
  FVlrBicOLD := FVlrBic;
  FVlrIcmOLD := FVlrIcm;
  FVlrBsiOLD := FVlrBsi;
  FVlrIcsOLD := FVlrIcs;
  FVlrBspOLD := FVlrBsp;
  FVlrStpOLD := FVlrStp;
  FVlrBscOLD := FVlrBsc;
  FVlrStcOLD := FVlrStc;
  FVlrLprOLD := FVlrLpr;
  FVlrLouOLD := FVlrLou;
  FVlrLiqOLD := FVlrLiq;
  FVlrFinOLD := FVlrFin;
  FAcrFinOLD := FAcrFin;
  FSitIpoOLD := FSitIpo;
  FCodMotOLD := FCodMot;
  FObsMotOLD := FObsMot;
  FSeqIpdOLD := FSeqIpd;
  FFilCtrOLD := FFilCtr;
  FNumCtrOLD := FNumCtr;
  FDatCptOLD := FDatCpt;
  FSeqCcpOLD := FSeqCcp;
  FIndEqiOLD := FIndEqi;
  FUsuGerOLD := FUsuGer;
  FDatGerOLD := FDatGer;
  FHorGerOLD := FHorGer;
  FFilPedOLD := FFilPed;
  FNumPedOLD := FNumPed;
  FDatVltOLD := FDatVlt;
  FQtdForOLD := FQtdFor;
  FPreForOLD := FPreFor;
  FCodMoeOLD := FCodMoe;
  FDatMoeOLD := FDatMoe;
  FCotMoeOLD := FCotMoe;
  FFecMoeOLD := FFecMoe;
  FPerIimOLD := FPerIim;
  FVlrBiiOLD := FVlrBii;
  FVlrIimOLD := FVlrIim;
  FVlrRisOLD := FVlrRis;
  FSeqIorOLD := FSeqIor;
  FVlrBpiOLD := FVlrBpi;
  FVlrPisOLD := FVlrPis;
  FVlrBcrOLD := FVlrBcr;
  FVlrCorOLD := FVlrCor;
  FCodFxaOLD := FCodFxa;
  FIdxGrdOLD := FIdxGrd;
  FPerPitOLD := FPerPit;
  FVlrBptOLD := FVlrBpt;
  FVlrPitOLD := FVlrPit;
  FPerCrtOLD := FPerCrt;
  FVlrBctOLD := FVlrBct;
  FVlrCrtOLD := FVlrCrt;
  FPerCslOLD := FPerCsl;
  FVlrBclOLD := FVlrBcl;
  FVlrCslOLD := FVlrCsl;
  FPerOurOLD := FPerOur;
  FVlrBorOLD := FVlrBor;
  FVlrOurOLD := FVlrOur;
  FPerIrfOLD := FPerIrf;
  FVlrBirOLD := FVlrBir;
  FVlrIrfOLD := FVlrIrf;
  FFilCesOLD := FFilCes;
  FDatCesOLD := FDatCes;
  FSeqCesOLD := FSeqCes;
  FPerDs1OLD := FPerDs1;
  FPerDs2OLD := FPerDs2;
  FVlrOriOLD := FVlrOri;
  FQtdOriOLD := FQtdOri;
  FVlrFeiOLD := FVlrFei;
  FVlrSeiOLD := FVlrSei;
  FVlrOuiOLD := FVlrOui;
  FBcoImpOLD := FBcoImp;
  FCofImpOLD := FCofImp;
  FBpiImpOLD := FBpiImp;
  FPisImpOLD := FPisImp;
  FSeqCpkOLD := FSeqCpk;
  FVlrDm1OLD := FVlrDm1;
  FVlrDm2OLD := FVlrDm2;
  FVlrDm3OLD := FVlrDm3;
  FVlrDm4OLD := FVlrDm4;
  FVlrDm5OLD := FVlrDm5;
  FVlrDm6OLD := FVlrDm6;
  FBemPriOLD := FBemPri;
  FEmpPedOLD := FEmpPed;
  FEmpNfvOLD := FEmpNfv;
  FFilNfvOLD := FFilNfv;
  FSnfNfvOLD := FSnfNfv;
  FNumNfvOLD := FNumNfv;
  FSeqIpvOLD := FSeqIpv;
  FCodTrgOLD := FCodTrg;
  FPerBonOLD := FPerBon;
  FVlrDfaOLD := FVlrDfa;
  FQtdBpiOLD := FQtdBpi;
  FAliPisOLD := FAliPis;
  FQtdBcoOLD := FQtdBco;
  FAliCofOLD := FAliCof;
  FQtdBipOLD := FQtdBip;
  FAliIpiOLD := FAliIpi;
  FCodFabOLD := FCodFab;
  FProFabOLD := FProFab;
  FSubProOLD := FSubPro;
  FTipCurOLD := FTipCur;
  FUSU_DatConOLD := FUSU_DatCon;
  FUSU_UsuModOLD := FUSU_UsuMod;
  FUSU_DatModOLD := FUSU_DatMod;
  FUSU_HorModOLD := FUSU_HorMod;
  FUSU_LisCliOLD := FUSU_LisCli;
  FUSU_QtdExaOLD := FUSU_QtdExa;
  FUSU_TipTrfOLD := FUSU_TipTrf;
  FUSU_OC831OLD := FUSU_OC831;
  FUSU_QtdAnaOLD := FUSU_QtdAna;
  FUSU_NumAnaOLD := FUSU_NumAna;
  FUSU_FilPedOLD := FUSU_FilPed;
  FUSU_NumPedOLD := FUSU_NumPed;
  FUSU_SeqIpdOLD := FUSU_SeqIpd;
  FUSU_ObsImpOLD := FUSU_ObsImp;
  FUSU_NumReqOLD := FUSU_NumReq;
  FUSU_SeqReqOLD := FUSU_SeqReq;

  inherited;
end;

procedure T420IPO.RetornarValores();
begin
  FCodEmp := FCodEmpOLD;
  FCodFil := FCodFilOLD;
  FNumOcp := FNumOcpOLD;
  FSeqIpo := FSeqIpoOLD;
  FTnsPro := FTnsProOLD;
  FCodPro := FCodProOLD;
  FCodDer := FCodDerOLD;
  FCplIpo := FCplIpoOLD;
  FProFor := FProForOLD;
  FDesFor := FDesForOLD;
  FUniFor := FUniForOLD;
  FCodFam := FCodFamOLD;
  FCodTic := FCodTicOLD;
  FCodTrd := FCodTrdOLD;
  FCodTst := FCodTstOLD;
  FCodStp := FCodStpOLD;
  FCodStc := FCodStcOLD;
  FCodDep := FCodDepOLD;
  FCodLot := FCodLotOLD;
  FQtdPed := FQtdPedOLD;
  FQtdRec := FQtdRecOLD;
  FQtdCan := FQtdCanOLD;
  FQtdAbe := FQtdAbeOLD;
  FUniMed := FUniMedOLD;
  FCodTpr := FCodTprOLD;
  FPreUni := FPreUniOLD;
  FPreFix := FPreFixOLD;
  FPerDsc := FPerDscOLD;
  FPerDs3 := FPerDs3OLD;
  FPerDs4 := FPerDs4OLD;
  FPerDs5 := FPerDs5OLD;
  FPerIpi := FPerIpiOLD;
  FPerIcm := FPerIcmOLD;
  FPerFun := FPerFunOLD;
  FDatEnt := FDatEntOLD;
  FCodPvp := FCodPvpOLD;
  FNumPrj := FNumPrjOLD;
  FCodFpj := FCodFpjOLD;
  FCtaFin := FCtaFinOLD;
  FCtaRed := FCtaRedOLD;
  FCodCcu := FCodCcuOLD;
  FVlrFre := FVlrFreOLD;
  FVlrSeg := FVlrSegOLD;
  FVlrEmb := FVlrEmbOLD;
  FVlrEnc := FVlrEncOLD;
  FVlrOut := FVlrOutOLD;
  FVlrDar := FVlrDarOLD;
  FVlrFrd := FVlrFrdOLD;
  FVlrOud := FVlrOudOLD;
  FVlrBru := FVlrBruOLD;
  FVlrDsc := FVlrDscOLD;
  FVlrDs1 := FVlrDs1OLD;
  FVlrDs2 := FVlrDs2OLD;
  FVlrDs3 := FVlrDs3OLD;
  FVlrDs4 := FVlrDs4OLD;
  FVlrDs5 := FVlrDs5OLD;
  FVlrDzf := FVlrDzfOLD;
  FVlrBfu := FVlrBfuOLD;
  FVlrFun := FVlrFunOLD;
  FVlrBip := FVlrBipOLD;
  FVlrIpi := FVlrIpiOLD;
  FVlrBic := FVlrBicOLD;
  FVlrIcm := FVlrIcmOLD;
  FVlrBsi := FVlrBsiOLD;
  FVlrIcs := FVlrIcsOLD;
  FVlrBsp := FVlrBspOLD;
  FVlrStp := FVlrStpOLD;
  FVlrBsc := FVlrBscOLD;
  FVlrStc := FVlrStcOLD;
  FVlrLpr := FVlrLprOLD;
  FVlrLou := FVlrLouOLD;
  FVlrLiq := FVlrLiqOLD;
  FVlrFin := FVlrFinOLD;
  FAcrFin := FAcrFinOLD;
  FSitIpo := FSitIpoOLD;
  FCodMot := FCodMotOLD;
  FObsMot := FObsMotOLD;
  FSeqIpd := FSeqIpdOLD;
  FFilCtr := FFilCtrOLD;
  FNumCtr := FNumCtrOLD;
  FDatCpt := FDatCptOLD;
  FSeqCcp := FSeqCcpOLD;
  FIndEqi := FIndEqiOLD;
  FUsuGer := FUsuGerOLD;
  FDatGer := FDatGerOLD;
  FHorGer := FHorGerOLD;
  FFilPed := FFilPedOLD;
  FNumPed := FNumPedOLD;
  FDatVlt := FDatVltOLD;
  FQtdFor := FQtdForOLD;
  FPreFor := FPreForOLD;
  FCodMoe := FCodMoeOLD;
  FDatMoe := FDatMoeOLD;
  FCotMoe := FCotMoeOLD;
  FFecMoe := FFecMoeOLD;
  FPerIim := FPerIimOLD;
  FVlrBii := FVlrBiiOLD;
  FVlrIim := FVlrIimOLD;
  FVlrRis := FVlrRisOLD;
  FSeqIor := FSeqIorOLD;
  FVlrBpi := FVlrBpiOLD;
  FVlrPis := FVlrPisOLD;
  FVlrBcr := FVlrBcrOLD;
  FVlrCor := FVlrCorOLD;
  FCodFxa := FCodFxaOLD;
  FIdxGrd := FIdxGrdOLD;
  FPerPit := FPerPitOLD;
  FVlrBpt := FVlrBptOLD;
  FVlrPit := FVlrPitOLD;
  FPerCrt := FPerCrtOLD;
  FVlrBct := FVlrBctOLD;
  FVlrCrt := FVlrCrtOLD;
  FPerCsl := FPerCslOLD;
  FVlrBcl := FVlrBclOLD;
  FVlrCsl := FVlrCslOLD;
  FPerOur := FPerOurOLD;
  FVlrBor := FVlrBorOLD;
  FVlrOur := FVlrOurOLD;
  FPerIrf := FPerIrfOLD;
  FVlrBir := FVlrBirOLD;
  FVlrIrf := FVlrIrfOLD;
  FFilCes := FFilCesOLD;
  FDatCes := FDatCesOLD;
  FSeqCes := FSeqCesOLD;
  FPerDs1 := FPerDs1OLD;
  FPerDs2 := FPerDs2OLD;
  FVlrOri := FVlrOriOLD;
  FQtdOri := FQtdOriOLD;
  FVlrFei := FVlrFeiOLD;
  FVlrSei := FVlrSeiOLD;
  FVlrOui := FVlrOuiOLD;
  FBcoImp := FBcoImpOLD;
  FCofImp := FCofImpOLD;
  FBpiImp := FBpiImpOLD;
  FPisImp := FPisImpOLD;
  FSeqCpk := FSeqCpkOLD;
  FVlrDm1 := FVlrDm1OLD;
  FVlrDm2 := FVlrDm2OLD;
  FVlrDm3 := FVlrDm3OLD;
  FVlrDm4 := FVlrDm4OLD;
  FVlrDm5 := FVlrDm5OLD;
  FVlrDm6 := FVlrDm6OLD;
  FBemPri := FBemPriOLD;
  FEmpPed := FEmpPedOLD;
  FEmpNfv := FEmpNfvOLD;
  FFilNfv := FFilNfvOLD;
  FSnfNfv := FSnfNfvOLD;
  FNumNfv := FNumNfvOLD;
  FSeqIpv := FSeqIpvOLD;
  FCodTrg := FCodTrgOLD;
  FPerBon := FPerBonOLD;
  FVlrDfa := FVlrDfaOLD;
  FQtdBpi := FQtdBpiOLD;
  FAliPis := FAliPisOLD;
  FQtdBco := FQtdBcoOLD;
  FAliCof := FAliCofOLD;
  FQtdBip := FQtdBipOLD;
  FAliIpi := FAliIpiOLD;
  FCodFab := FCodFabOLD;
  FProFab := FProFabOLD;
  FSubPro := FSubProOLD;
  FTipCur := FTipCurOLD;
  FUSU_DatCon := FUSU_DatConOLD;
  FUSU_UsuMod := FUSU_UsuModOLD;
  FUSU_DatMod := FUSU_DatModOLD;
  FUSU_HorMod := FUSU_HorModOLD;
  FUSU_LisCli := FUSU_LisCliOLD;
  FUSU_QtdExa := FUSU_QtdExaOLD;
  FUSU_TipTrf := FUSU_TipTrfOLD;
  FUSU_OC831 := FUSU_OC831OLD;
  FUSU_QtdAna := FUSU_QtdAnaOLD;
  FUSU_NumAna := FUSU_NumAnaOLD;
  FUSU_FilPed := FUSU_FilPedOLD;
  FUSU_NumPed := FUSU_NumPedOLD;
  FUSU_SeqIpd := FUSU_SeqIpdOLD;
  FUSU_ObsImp := FUSU_ObsImpOLD;
  FUSU_NumReq := FUSU_NumReqOLD;
  FUSU_SeqReq := FUSU_SeqReqOLD;

  inherited;
end;

end.
