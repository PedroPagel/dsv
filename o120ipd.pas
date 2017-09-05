unit o120ipd;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, oTabelas, DateUtils;

type

  T120IPD = class(TTabelaPadrao)
  private
    FCodEmp: Integer;
    FCodFil: Integer;
    FNumPed: Integer;
    FSeqIpd: Integer;
    FTnsPro: string;
    FPedCli: string;
    FSeqPcl: string;
    FPedPrv: Char;
    FCodPro: string;
    FCodDer: string;
    FCplIpd: string;
    FCodFam: string;
    FCodAgr: Integer;
    FCodTic: string;
    FCodTrd: string;
    FCodTst: string;
    FCodStp: string;
    FCodStc: string;
    FCodDep: string;
    FCodLot: string;
    FResEst: Char;
    FQtdPed: Double;
    FQtdAen: Double;
    FQtdPoc: Double;
    FQtdFat: Double;
    FQtdCan: Double;
    FQtdAbe: Double;
    FQtdRae: Double;
    FQtdNlp: Double;
    FQtdRes: Double;
    FUniMed: string;
    FCodMcp: string;
    FDatMfp: TDate;
    FCotMfp: Double;
    FDatMoe: TDate;
    FCotMoe: Double;
    FFecMoe: Char;
    FCodTpr: string;
    FPreUni: Double;
    FCodMoe: string;
    FPreFix: Char;
    FPerDsc: Double;
    FPerOfe: Double;
    FPerAcr: Double;
    FPerIpi: Double;
    FPerIcm: Double;
    FPerCom: Double;
    FDatEnt: TDate;
    FDatAne: TDate;
    FDatPoc: TDate;
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
    FVlrOfe: Double;
    FVlrDzf: Double;
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
    FVlrBco: Double;
    FVlrCom: Double;
    FVlrLpr: Double;
    FVlrLou: Double;
    FVlrLiq: Double;
    FVlrFin: Double;
    FSitIpd: Integer;
    FCodMot: Integer;
    FObsMot: string;
    FGerNec: Integer;
    FGerCga: Char;
    FResMan: Char;
    FIndAed: Char;
    FNumCtr: Integer;
    FDatCpt: TDate;
    FSeqCvp: Integer;
    FUsuGer: Integer;
    FDatGer: TDate;
    FHorGer: Integer;
    FQtdPpf: Double;
    FCmpKit: Char;
    FFilOcp: Integer;
    FNumOcp: Integer;
    FSeqIpo: Integer;
    FUniVen: string;
    FQtdVen: Double;
    FPreVen: Double;
    FPreBru: Double;
    FFilCtr: Integer;
    FCtrCvs: Integer;
    FCptCvs: TDate;
    FSeqCvs: Integer;
    FCodAvc: Integer;
    FCodFxa: string;
    FCodPgr: string;
    FIdxGrd: Integer;
    FCodMar: string;
    FCodClc: string;
    FPerDs1: Double;
    FPerDs2: Double;
    FPerDs3: Double;
    FPerDs4: Double;
    FFilPrd: Integer;
    FVlrRis: Double;
    FIndPce: Char;
    FIndPcr: Char;
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
    FFilNfc: Integer;
    FForNfc: Integer;
    FNumNfc: Integer;
    FSnfNfc: string;
    FSeqIpc: Integer;
    FNctLcl: string;
    FNreCli: string;
    FNosIcl: Integer;
    FNosFcl: Integer;
    FNocCl1: string;
    FNocCl2: string;
    FNocCl3: string;
    FCodAgc: string;
    FCtrCvp: Integer;
    FCptCvp: TDate;
    FSeqCtr: Integer;
    FIndApe: Integer;
    FObsIpd: string;
    FSeqIsp: Integer;
    FEmpOcp: Integer;
    FVlrBpf: Double;
    FPerPif: Double;
    FVlrPif: Double;
    FVlrBcf: Double;
    FPerCff: Double;
    FVlrCff: Double;
    FPerDs5: Double;
    FVlrDs5: Double;
    FAgrNec: string;
    FAgrPai: string;
    FOriRes: Char;
    FQtdBpf: Double;
    FAliPif: Double;
    FQtdBcf: Double;
    FAliCff: Double;
    FQtdBip: Double;
    FAliIpi: Double;
    FIndIpm: Char;
    FFilRem: Integer;
    FSnfRem: string;
    FNfvRem: Integer;
    FIpvRem: Integer;
    FCodCnv: Integer;
    FCodRep: Integer;
    FProMon: Char;
    FProEnt: Char;
    FPerMgc: Double;
    FVarSer: Char;
    FRetMat: Char;
    FSenApr: string;
    FUsuApr: Integer;
    FDatApr: TDate;
    FHorApr: Integer;
    FTipCur: Integer;
    FCodFin: Integer;
    FUSU_DEPCIB: string;
    FUSU_UsuAut: Integer;
    FUSU_PreAut: Double;
    FUSU_EmiRel: Char;
    FUSU_OriMer: Char;
    FUSU_QtdExa: Char;

    FCodEmpOLD: Integer;
    FCodFilOLD: Integer;
    FNumPedOLD: Integer;
    FSeqIpdOLD: Integer;
    FTnsProOLD: string;
    FPedCliOLD: string;
    FSeqPclOLD: string;
    FPedPrvOLD: Char;
    FCodProOLD: string;
    FCodDerOLD: string;
    FCplIpdOLD: string;
    FCodFamOLD: string;
    FCodAgrOLD: Integer;
    FCodTicOLD: string;
    FCodTrdOLD: string;
    FCodTstOLD: string;
    FCodStpOLD: string;
    FCodStcOLD: string;
    FCodDepOLD: string;
    FCodLotOLD: string;
    FResEstOLD: Char;
    FQtdPedOLD: Double;
    FQtdAenOLD: Double;
    FQtdPocOLD: Double;
    FQtdFatOLD: Double;
    FQtdCanOLD: Double;
    FQtdAbeOLD: Double;
    FQtdRaeOLD: Double;
    FQtdNlpOLD: Double;
    FQtdResOLD: Double;
    FUniMedOLD: string;
    FCodMcpOLD: string;
    FDatMfpOLD: TDate;
    FCotMfpOLD: Double;
    FDatMoeOLD: TDate;
    FCotMoeOLD: Double;
    FFecMoeOLD: Char;
    FCodTprOLD: string;
    FPreUniOLD: Double;
    FCodMoeOLD: string;
    FPreFixOLD: Char;
    FPerDscOLD: Double;
    FPerOfeOLD: Double;
    FPerAcrOLD: Double;
    FPerIpiOLD: Double;
    FPerIcmOLD: Double;
    FPerComOLD: Double;
    FDatEntOLD: TDate;
    FDatAneOLD: TDate;
    FDatPocOLD: TDate;
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
    FVlrOfeOLD: Double;
    FVlrDzfOLD: Double;
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
    FVlrBcoOLD: Double;
    FVlrComOLD: Double;
    FVlrLprOLD: Double;
    FVlrLouOLD: Double;
    FVlrLiqOLD: Double;
    FVlrFinOLD: Double;
    FSitIpdOLD: Integer;
    FCodMotOLD: Integer;
    FObsMotOLD: string;
    FGerNecOLD: Integer;
    FGerCgaOLD: Char;
    FResManOLD: Char;
    FIndAedOLD: Char;
    FNumCtrOLD: Integer;
    FDatCptOLD: TDate;
    FSeqCvpOLD: Integer;
    FUsuGerOLD: Integer;
    FDatGerOLD: TDate;
    FHorGerOLD: Integer;
    FQtdPpfOLD: Double;
    FCmpKitOLD: Char;
    FFilOcpOLD: Integer;
    FNumOcpOLD: Integer;
    FSeqIpoOLD: Integer;
    FUniVenOLD: string;
    FQtdVenOLD: Double;
    FPreVenOLD: Double;
    FPreBruOLD: Double;
    FFilCtrOLD: Integer;
    FCtrCvsOLD: Integer;
    FCptCvsOLD: TDate;
    FSeqCvsOLD: Integer;
    FCodAvcOLD: Integer;
    FCodFxaOLD: string;
    FCodPgrOLD: string;
    FIdxGrdOLD: Integer;
    FCodMarOLD: string;
    FCodClcOLD: string;
    FPerDs1OLD: Double;
    FPerDs2OLD: Double;
    FPerDs3OLD: Double;
    FPerDs4OLD: Double;
    FFilPrdOLD: Integer;
    FVlrRisOLD: Double;
    FIndPceOLD: Char;
    FIndPcrOLD: Char;
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
    FFilNfcOLD: Integer;
    FForNfcOLD: Integer;
    FNumNfcOLD: Integer;
    FSnfNfcOLD: string;
    FSeqIpcOLD: Integer;
    FNctLclOLD: string;
    FNreCliOLD: string;
    FNosIclOLD: Integer;
    FNosFclOLD: Integer;
    FNocCl1OLD: string;
    FNocCl2OLD: string;
    FNocCl3OLD: string;
    FCodAgcOLD: string;
    FCtrCvpOLD: Integer;
    FCptCvpOLD: TDate;
    FSeqCtrOLD: Integer;
    FIndApeOLD: Integer;
    FObsIpdOLD: string;
    FSeqIspOLD: Integer;
    FEmpOcpOLD: Integer;
    FVlrBpfOLD: Double;
    FPerPifOLD: Double;
    FVlrPifOLD: Double;
    FVlrBcfOLD: Double;
    FPerCffOLD: Double;
    FVlrCffOLD: Double;
    FPerDs5OLD: Double;
    FVlrDs5OLD: Double;
    FAgrNecOLD: string;
    FAgrPaiOLD: string;
    FOriResOLD: Char;
    FQtdBpfOLD: Double;
    FAliPifOLD: Double;
    FQtdBcfOLD: Double;
    FAliCffOLD: Double;
    FQtdBipOLD: Double;
    FAliIpiOLD: Double;
    FIndIpmOLD: Char;
    FFilRemOLD: Integer;
    FSnfRemOLD: string;
    FNfvRemOLD: Integer;
    FIpvRemOLD: Integer;
    FCodCnvOLD: Integer;
    FCodRepOLD: Integer;
    FProMonOLD: Char;
    FProEntOLD: Char;
    FPerMgcOLD: Double;
    FVarSerOLD: Char;
    FRetMatOLD: Char;
    FSenAprOLD: string;
    FUsuAprOLD: Integer;
    FDatAprOLD: TDate;
    FHorAprOLD: Integer;
    FTipCurOLD: Integer;
    FCodFinOLD: Integer;
    FUSU_DEPCIBOLD: string;
    FUSU_UsuAutOLD: Integer;
    FUSU_PreAutOLD: Double;
    FUSU_EmiRelOLD: Char;
    FUSU_OriMerOLD: Char;
    FUSU_QtdExaOLD: Char;

    function GetCodEmp: Integer;
    procedure SetCodEmp(const pCodEmp: Integer);
    function GetCodFil: Integer;
    procedure SetCodFil(const pCodFil: Integer);
    function GetNumPed: Integer;
    procedure SetNumPed(const pNumPed: Integer);
    function GetSeqIpd: Integer;
    procedure SetSeqIpd(const pSeqIpd: Integer);
    function GetTnsPro: string;
    procedure SetTnsPro(const pTnsPro: string);
    function GetPedCli: string;
    procedure SetPedCli(const pPedCli: string);
    function GetSeqPcl: string;
    procedure SetSeqPcl(const pSeqPcl: string);
    function GetPedPrv: Char;
    procedure SetPedPrv(const pPedPrv: Char);
    function GetCodPro: string;
    procedure SetCodPro(const pCodPro: string);
    function GetCodDer: string;
    procedure SetCodDer(const pCodDer: string);
    function GetCplIpd: string;
    procedure SetCplIpd(const pCplIpd: string);
    function GetCodFam: string;
    procedure SetCodFam(const pCodFam: string);
    function GetCodAgr: Integer;
    procedure SetCodAgr(const pCodAgr: Integer);
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
    function GetResEst: Char;
    procedure SetResEst(const pResEst: Char);
    function GetQtdPed: Double;
    procedure SetQtdPed(const pQtdPed: Double);
    function GetQtdAen: Double;
    procedure SetQtdAen(const pQtdAen: Double);
    function GetQtdPoc: Double;
    procedure SetQtdPoc(const pQtdPoc: Double);
    function GetQtdFat: Double;
    procedure SetQtdFat(const pQtdFat: Double);
    function GetQtdCan: Double;
    procedure SetQtdCan(const pQtdCan: Double);
    function GetQtdAbe: Double;
    procedure SetQtdAbe(const pQtdAbe: Double);
    function GetQtdRae: Double;
    procedure SetQtdRae(const pQtdRae: Double);
    function GetQtdNlp: Double;
    procedure SetQtdNlp(const pQtdNlp: Double);
    function GetQtdRes: Double;
    procedure SetQtdRes(const pQtdRes: Double);
    function GetUniMed: string;
    procedure SetUniMed(const pUniMed: string);
    function GetCodMcp: string;
    procedure SetCodMcp(const pCodMcp: string);
    function GetDatMfp: TDate;
    procedure SetDatMfp(const pDatMfp: TDate);
    function GetCotMfp: Double;
    procedure SetCotMfp(const pCotMfp: Double);
    function GetDatMoe: TDate;
    procedure SetDatMoe(const pDatMoe: TDate);
    function GetCotMoe: Double;
    procedure SetCotMoe(const pCotMoe: Double);
    function GetFecMoe: Char;
    procedure SetFecMoe(const pFecMoe: Char);
    function GetCodTpr: string;
    procedure SetCodTpr(const pCodTpr: string);
    function GetPreUni: Double;
    procedure SetPreUni(const pPreUni: Double);
    function GetCodMoe: string;
    procedure SetCodMoe(const pCodMoe: string);
    function GetPreFix: Char;
    procedure SetPreFix(const pPreFix: Char);
    function GetPerDsc: Double;
    procedure SetPerDsc(const pPerDsc: Double);
    function GetPerOfe: Double;
    procedure SetPerOfe(const pPerOfe: Double);
    function GetPerAcr: Double;
    procedure SetPerAcr(const pPerAcr: Double);
    function GetPerIpi: Double;
    procedure SetPerIpi(const pPerIpi: Double);
    function GetPerIcm: Double;
    procedure SetPerIcm(const pPerIcm: Double);
    function GetPerCom: Double;
    procedure SetPerCom(const pPerCom: Double);
    function GetDatEnt: TDate;
    procedure SetDatEnt(const pDatEnt: TDate);
    function GetDatAne: TDate;
    procedure SetDatAne(const pDatAne: TDate);
    function GetDatPoc: TDate;
    procedure SetDatPoc(const pDatPoc: TDate);
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
    function GetVlrOfe: Double;
    procedure SetVlrOfe(const pVlrOfe: Double);
    function GetVlrDzf: Double;
    procedure SetVlrDzf(const pVlrDzf: Double);
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
    function GetVlrBco: Double;
    procedure SetVlrBco(const pVlrBco: Double);
    function GetVlrCom: Double;
    procedure SetVlrCom(const pVlrCom: Double);
    function GetVlrLpr: Double;
    procedure SetVlrLpr(const pVlrLpr: Double);
    function GetVlrLou: Double;
    procedure SetVlrLou(const pVlrLou: Double);
    function GetVlrLiq: Double;
    procedure SetVlrLiq(const pVlrLiq: Double);
    function GetVlrFin: Double;
    procedure SetVlrFin(const pVlrFin: Double);
    function GetSitIpd: Integer;
    procedure SetSitIpd(const pSitIpd: Integer);
    function GetCodMot: Integer;
    procedure SetCodMot(const pCodMot: Integer);
    function GetObsMot: string;
    procedure SetObsMot(const pObsMot: string);
    function GetGerNec: Integer;
    procedure SetGerNec(const pGerNec: Integer);
    function GetGerCga: Char;
    procedure SetGerCga(const pGerCga: Char);
    function GetResMan: Char;
    procedure SetResMan(const pResMan: Char);
    function GetIndAed: Char;
    procedure SetIndAed(const pIndAed: Char);
    function GetNumCtr: Integer;
    procedure SetNumCtr(const pNumCtr: Integer);
    function GetDatCpt: TDate;
    procedure SetDatCpt(const pDatCpt: TDate);
    function GetSeqCvp: Integer;
    procedure SetSeqCvp(const pSeqCvp: Integer);
    function GetUsuGer: Integer;
    procedure SetUsuGer(const pUsuGer: Integer);
    function GetDatGer: TDate;
    procedure SetDatGer(const pDatGer: TDate);
    function GetHorGer: Integer;
    procedure SetHorGer(const pHorGer: Integer);
    function GetQtdPpf: Double;
    procedure SetQtdPpf(const pQtdPpf: Double);
    function GetCmpKit: Char;
    procedure SetCmpKit(const pCmpKit: Char);
    function GetFilOcp: Integer;
    procedure SetFilOcp(const pFilOcp: Integer);
    function GetNumOcp: Integer;
    procedure SetNumOcp(const pNumOcp: Integer);
    function GetSeqIpo: Integer;
    procedure SetSeqIpo(const pSeqIpo: Integer);
    function GetUniVen: string;
    procedure SetUniVen(const pUniVen: string);
    function GetQtdVen: Double;
    procedure SetQtdVen(const pQtdVen: Double);
    function GetPreVen: Double;
    procedure SetPreVen(const pPreVen: Double);
    function GetPreBru: Double;
    procedure SetPreBru(const pPreBru: Double);
    function GetFilCtr: Integer;
    procedure SetFilCtr(const pFilCtr: Integer);
    function GetCtrCvs: Integer;
    procedure SetCtrCvs(const pCtrCvs: Integer);
    function GetCptCvs: TDate;
    procedure SetCptCvs(const pCptCvs: TDate);
    function GetSeqCvs: Integer;
    procedure SetSeqCvs(const pSeqCvs: Integer);
    function GetCodAvc: Integer;
    procedure SetCodAvc(const pCodAvc: Integer);
    function GetCodFxa: string;
    procedure SetCodFxa(const pCodFxa: string);
    function GetCodPgr: string;
    procedure SetCodPgr(const pCodPgr: string);
    function GetIdxGrd: Integer;
    procedure SetIdxGrd(const pIdxGrd: Integer);
    function GetCodMar: string;
    procedure SetCodMar(const pCodMar: string);
    function GetCodClc: string;
    procedure SetCodClc(const pCodClc: string);
    function GetPerDs1: Double;
    procedure SetPerDs1(const pPerDs1: Double);
    function GetPerDs2: Double;
    procedure SetPerDs2(const pPerDs2: Double);
    function GetPerDs3: Double;
    procedure SetPerDs3(const pPerDs3: Double);
    function GetPerDs4: Double;
    procedure SetPerDs4(const pPerDs4: Double);
    function GetFilPrd: Integer;
    procedure SetFilPrd(const pFilPrd: Integer);
    function GetVlrRis: Double;
    procedure SetVlrRis(const pVlrRis: Double);
    function GetIndPce: Char;
    procedure SetIndPce(const pIndPce: Char);
    function GetIndPcr: Char;
    procedure SetIndPcr(const pIndPcr: Char);
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
    function GetFilNfc: Integer;
    procedure SetFilNfc(const pFilNfc: Integer);
    function GetForNfc: Integer;
    procedure SetForNfc(const pForNfc: Integer);
    function GetNumNfc: Integer;
    procedure SetNumNfc(const pNumNfc: Integer);
    function GetSnfNfc: string;
    procedure SetSnfNfc(const pSnfNfc: string);
    function GetSeqIpc: Integer;
    procedure SetSeqIpc(const pSeqIpc: Integer);
    function GetNctLcl: string;
    procedure SetNctLcl(const pNctLcl: string);
    function GetNreCli: string;
    procedure SetNreCli(const pNreCli: string);
    function GetNosIcl: Integer;
    procedure SetNosIcl(const pNosIcl: Integer);
    function GetNosFcl: Integer;
    procedure SetNosFcl(const pNosFcl: Integer);
    function GetNocCl1: string;
    procedure SetNocCl1(const pNocCl1: string);
    function GetNocCl2: string;
    procedure SetNocCl2(const pNocCl2: string);
    function GetNocCl3: string;
    procedure SetNocCl3(const pNocCl3: string);
    function GetCodAgc: string;
    procedure SetCodAgc(const pCodAgc: string);
    function GetCtrCvp: Integer;
    procedure SetCtrCvp(const pCtrCvp: Integer);
    function GetCptCvp: TDate;
    procedure SetCptCvp(const pCptCvp: TDate);
    function GetSeqCtr: Integer;
    procedure SetSeqCtr(const pSeqCtr: Integer);
    function GetIndApe: Integer;
    procedure SetIndApe(const pIndApe: Integer);
    function GetObsIpd: string;
    procedure SetObsIpd(const pObsIpd: string);
    function GetSeqIsp: Integer;
    procedure SetSeqIsp(const pSeqIsp: Integer);
    function GetEmpOcp: Integer;
    procedure SetEmpOcp(const pEmpOcp: Integer);
    function GetVlrBpf: Double;
    procedure SetVlrBpf(const pVlrBpf: Double);
    function GetPerPif: Double;
    procedure SetPerPif(const pPerPif: Double);
    function GetVlrPif: Double;
    procedure SetVlrPif(const pVlrPif: Double);
    function GetVlrBcf: Double;
    procedure SetVlrBcf(const pVlrBcf: Double);
    function GetPerCff: Double;
    procedure SetPerCff(const pPerCff: Double);
    function GetVlrCff: Double;
    procedure SetVlrCff(const pVlrCff: Double);
    function GetPerDs5: Double;
    procedure SetPerDs5(const pPerDs5: Double);
    function GetVlrDs5: Double;
    procedure SetVlrDs5(const pVlrDs5: Double);
    function GetAgrNec: string;
    procedure SetAgrNec(const pAgrNec: string);
    function GetAgrPai: string;
    procedure SetAgrPai(const pAgrPai: string);
    function GetOriRes: Char;
    procedure SetOriRes(const pOriRes: Char);
    function GetQtdBpf: Double;
    procedure SetQtdBpf(const pQtdBpf: Double);
    function GetAliPif: Double;
    procedure SetAliPif(const pAliPif: Double);
    function GetQtdBcf: Double;
    procedure SetQtdBcf(const pQtdBcf: Double);
    function GetAliCff: Double;
    procedure SetAliCff(const pAliCff: Double);
    function GetQtdBip: Double;
    procedure SetQtdBip(const pQtdBip: Double);
    function GetAliIpi: Double;
    procedure SetAliIpi(const pAliIpi: Double);
    function GetIndIpm: Char;
    procedure SetIndIpm(const pIndIpm: Char);
    function GetFilRem: Integer;
    procedure SetFilRem(const pFilRem: Integer);
    function GetSnfRem: string;
    procedure SetSnfRem(const pSnfRem: string);
    function GetNfvRem: Integer;
    procedure SetNfvRem(const pNfvRem: Integer);
    function GetIpvRem: Integer;
    procedure SetIpvRem(const pIpvRem: Integer);
    function GetCodCnv: Integer;
    procedure SetCodCnv(const pCodCnv: Integer);
    function GetCodRep: Integer;
    procedure SetCodRep(const pCodRep: Integer);
    function GetProMon: Char;
    procedure SetProMon(const pProMon: Char);
    function GetProEnt: Char;
    procedure SetProEnt(const pProEnt: Char);
    function GetPerMgc: Double;
    procedure SetPerMgc(const pPerMgc: Double);
    function GetVarSer: Char;
    procedure SetVarSer(const pVarSer: Char);
    function GetRetMat: Char;
    procedure SetRetMat(const pRetMat: Char);
    function GetSenApr: string;
    procedure SetSenApr(const pSenApr: string);
    function GetUsuApr: Integer;
    procedure SetUsuApr(const pUsuApr: Integer);
    function GetDatApr: TDate;
    procedure SetDatApr(const pDatApr: TDate);
    function GetHorApr: Integer;
    procedure SetHorApr(const pHorApr: Integer);
    function GetTipCur: Integer;
    procedure SetTipCur(const pTipCur: Integer);
    function GetCodFin: Integer;
    procedure SetCodFin(const pCodFin: Integer);
    function GetUSU_DEPCIB: string;
    procedure SetUSU_DEPCIB(const pUSU_DEPCIB: string);
    function GetUSU_UsuAut: Integer;
    procedure SetUSU_UsuAut(const pUSU_UsuAut: Integer);
    function GetUSU_PreAut: Double;
    procedure SetUSU_PreAut(const pUSU_PreAut: Double);
    function GetUSU_EmiRel: Char;
    procedure SetUSU_EmiRel(const pUSU_EmiRel: Char);
    function GetUSU_OriMer: Char;
    procedure SetUSU_OriMer(const pUSU_OriMer: Char);
    function GetUSU_QtdExa: Char;
    procedure SetUSU_QtdExa(const pUSU_QtdExa: Char);

    function GetCodEmpOld: Integer;
    procedure SetCodEmpOld(const pCodEmp: Integer);
    function GetCodFilOld: Integer;
    procedure SetCodFilOld(const pCodFil: Integer);
    function GetNumPedOld: Integer;
    procedure SetNumPedOld(const pNumPed: Integer);
    function GetSeqIpdOld: Integer;
    procedure SetSeqIpdOld(const pSeqIpd: Integer);
    function GetTnsProOld: string;
    procedure SetTnsProOld(const pTnsPro: string);
    function GetPedCliOld: string;
    procedure SetPedCliOld(const pPedCli: string);
    function GetSeqPclOld: string;
    procedure SetSeqPclOld(const pSeqPcl: string);
    function GetPedPrvOld: Char;
    procedure SetPedPrvOld(const pPedPrv: Char);
    function GetCodProOld: string;
    procedure SetCodProOld(const pCodPro: string);
    function GetCodDerOld: string;
    procedure SetCodDerOld(const pCodDer: string);
    function GetCplIpdOld: string;
    procedure SetCplIpdOld(const pCplIpd: string);
    function GetCodFamOld: string;
    procedure SetCodFamOld(const pCodFam: string);
    function GetCodAgrOld: Integer;
    procedure SetCodAgrOld(const pCodAgr: Integer);
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
    function GetResEstOld: Char;
    procedure SetResEstOld(const pResEst: Char);
    function GetQtdPedOld: Double;
    procedure SetQtdPedOld(const pQtdPed: Double);
    function GetQtdAenOld: Double;
    procedure SetQtdAenOld(const pQtdAen: Double);
    function GetQtdPocOld: Double;
    procedure SetQtdPocOld(const pQtdPoc: Double);
    function GetQtdFatOld: Double;
    procedure SetQtdFatOld(const pQtdFat: Double);
    function GetQtdCanOld: Double;
    procedure SetQtdCanOld(const pQtdCan: Double);
    function GetQtdAbeOld: Double;
    procedure SetQtdAbeOld(const pQtdAbe: Double);
    function GetQtdRaeOld: Double;
    procedure SetQtdRaeOld(const pQtdRae: Double);
    function GetQtdNlpOld: Double;
    procedure SetQtdNlpOld(const pQtdNlp: Double);
    function GetQtdResOld: Double;
    procedure SetQtdResOld(const pQtdRes: Double);
    function GetUniMedOld: string;
    procedure SetUniMedOld(const pUniMed: string);
    function GetCodMcpOld: string;
    procedure SetCodMcpOld(const pCodMcp: string);
    function GetDatMfpOld: TDate;
    procedure SetDatMfpOld(const pDatMfp: TDate);
    function GetCotMfpOld: Double;
    procedure SetCotMfpOld(const pCotMfp: Double);
    function GetDatMoeOld: TDate;
    procedure SetDatMoeOld(const pDatMoe: TDate);
    function GetCotMoeOld: Double;
    procedure SetCotMoeOld(const pCotMoe: Double);
    function GetFecMoeOld: Char;
    procedure SetFecMoeOld(const pFecMoe: Char);
    function GetCodTprOld: string;
    procedure SetCodTprOld(const pCodTpr: string);
    function GetPreUniOld: Double;
    procedure SetPreUniOld(const pPreUni: Double);
    function GetCodMoeOld: string;
    procedure SetCodMoeOld(const pCodMoe: string);
    function GetPreFixOld: Char;
    procedure SetPreFixOld(const pPreFix: Char);
    function GetPerDscOld: Double;
    procedure SetPerDscOld(const pPerDsc: Double);
    function GetPerOfeOld: Double;
    procedure SetPerOfeOld(const pPerOfe: Double);
    function GetPerAcrOld: Double;
    procedure SetPerAcrOld(const pPerAcr: Double);
    function GetPerIpiOld: Double;
    procedure SetPerIpiOld(const pPerIpi: Double);
    function GetPerIcmOld: Double;
    procedure SetPerIcmOld(const pPerIcm: Double);
    function GetPerComOld: Double;
    procedure SetPerComOld(const pPerCom: Double);
    function GetDatEntOld: TDate;
    procedure SetDatEntOld(const pDatEnt: TDate);
    function GetDatAneOld: TDate;
    procedure SetDatAneOld(const pDatAne: TDate);
    function GetDatPocOld: TDate;
    procedure SetDatPocOld(const pDatPoc: TDate);
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
    function GetVlrOfeOld: Double;
    procedure SetVlrOfeOld(const pVlrOfe: Double);
    function GetVlrDzfOld: Double;
    procedure SetVlrDzfOld(const pVlrDzf: Double);
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
    function GetVlrBcoOld: Double;
    procedure SetVlrBcoOld(const pVlrBco: Double);
    function GetVlrComOld: Double;
    procedure SetVlrComOld(const pVlrCom: Double);
    function GetVlrLprOld: Double;
    procedure SetVlrLprOld(const pVlrLpr: Double);
    function GetVlrLouOld: Double;
    procedure SetVlrLouOld(const pVlrLou: Double);
    function GetVlrLiqOld: Double;
    procedure SetVlrLiqOld(const pVlrLiq: Double);
    function GetVlrFinOld: Double;
    procedure SetVlrFinOld(const pVlrFin: Double);
    function GetSitIpdOld: Integer;
    procedure SetSitIpdOld(const pSitIpd: Integer);
    function GetCodMotOld: Integer;
    procedure SetCodMotOld(const pCodMot: Integer);
    function GetObsMotOld: string;
    procedure SetObsMotOld(const pObsMot: string);
    function GetGerNecOld: Integer;
    procedure SetGerNecOld(const pGerNec: Integer);
    function GetGerCgaOld: Char;
    procedure SetGerCgaOld(const pGerCga: Char);
    function GetResManOld: Char;
    procedure SetResManOld(const pResMan: Char);
    function GetIndAedOld: Char;
    procedure SetIndAedOld(const pIndAed: Char);
    function GetNumCtrOld: Integer;
    procedure SetNumCtrOld(const pNumCtr: Integer);
    function GetDatCptOld: TDate;
    procedure SetDatCptOld(const pDatCpt: TDate);
    function GetSeqCvpOld: Integer;
    procedure SetSeqCvpOld(const pSeqCvp: Integer);
    function GetUsuGerOld: Integer;
    procedure SetUsuGerOld(const pUsuGer: Integer);
    function GetDatGerOld: TDate;
    procedure SetDatGerOld(const pDatGer: TDate);
    function GetHorGerOld: Integer;
    procedure SetHorGerOld(const pHorGer: Integer);
    function GetQtdPpfOld: Double;
    procedure SetQtdPpfOld(const pQtdPpf: Double);
    function GetCmpKitOld: Char;
    procedure SetCmpKitOld(const pCmpKit: Char);
    function GetFilOcpOld: Integer;
    procedure SetFilOcpOld(const pFilOcp: Integer);
    function GetNumOcpOld: Integer;
    procedure SetNumOcpOld(const pNumOcp: Integer);
    function GetSeqIpoOld: Integer;
    procedure SetSeqIpoOld(const pSeqIpo: Integer);
    function GetUniVenOld: string;
    procedure SetUniVenOld(const pUniVen: string);
    function GetQtdVenOld: Double;
    procedure SetQtdVenOld(const pQtdVen: Double);
    function GetPreVenOld: Double;
    procedure SetPreVenOld(const pPreVen: Double);
    function GetPreBruOld: Double;
    procedure SetPreBruOld(const pPreBru: Double);
    function GetFilCtrOld: Integer;
    procedure SetFilCtrOld(const pFilCtr: Integer);
    function GetCtrCvsOld: Integer;
    procedure SetCtrCvsOld(const pCtrCvs: Integer);
    function GetCptCvsOld: TDate;
    procedure SetCptCvsOld(const pCptCvs: TDate);
    function GetSeqCvsOld: Integer;
    procedure SetSeqCvsOld(const pSeqCvs: Integer);
    function GetCodAvcOld: Integer;
    procedure SetCodAvcOld(const pCodAvc: Integer);
    function GetCodFxaOld: string;
    procedure SetCodFxaOld(const pCodFxa: string);
    function GetCodPgrOld: string;
    procedure SetCodPgrOld(const pCodPgr: string);
    function GetIdxGrdOld: Integer;
    procedure SetIdxGrdOld(const pIdxGrd: Integer);
    function GetCodMarOld: string;
    procedure SetCodMarOld(const pCodMar: string);
    function GetCodClcOld: string;
    procedure SetCodClcOld(const pCodClc: string);
    function GetPerDs1Old: Double;
    procedure SetPerDs1Old(const pPerDs1: Double);
    function GetPerDs2Old: Double;
    procedure SetPerDs2Old(const pPerDs2: Double);
    function GetPerDs3Old: Double;
    procedure SetPerDs3Old(const pPerDs3: Double);
    function GetPerDs4Old: Double;
    procedure SetPerDs4Old(const pPerDs4: Double);
    function GetFilPrdOld: Integer;
    procedure SetFilPrdOld(const pFilPrd: Integer);
    function GetVlrRisOld: Double;
    procedure SetVlrRisOld(const pVlrRis: Double);
    function GetIndPceOld: Char;
    procedure SetIndPceOld(const pIndPce: Char);
    function GetIndPcrOld: Char;
    procedure SetIndPcrOld(const pIndPcr: Char);
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
    function GetFilNfcOld: Integer;
    procedure SetFilNfcOld(const pFilNfc: Integer);
    function GetForNfcOld: Integer;
    procedure SetForNfcOld(const pForNfc: Integer);
    function GetNumNfcOld: Integer;
    procedure SetNumNfcOld(const pNumNfc: Integer);
    function GetSnfNfcOld: string;
    procedure SetSnfNfcOld(const pSnfNfc: string);
    function GetSeqIpcOld: Integer;
    procedure SetSeqIpcOld(const pSeqIpc: Integer);
    function GetNctLclOld: string;
    procedure SetNctLclOld(const pNctLcl: string);
    function GetNreCliOld: string;
    procedure SetNreCliOld(const pNreCli: string);
    function GetNosIclOld: Integer;
    procedure SetNosIclOld(const pNosIcl: Integer);
    function GetNosFclOld: Integer;
    procedure SetNosFclOld(const pNosFcl: Integer);
    function GetNocCl1Old: string;
    procedure SetNocCl1Old(const pNocCl1: string);
    function GetNocCl2Old: string;
    procedure SetNocCl2Old(const pNocCl2: string);
    function GetNocCl3Old: string;
    procedure SetNocCl3Old(const pNocCl3: string);
    function GetCodAgcOld: string;
    procedure SetCodAgcOld(const pCodAgc: string);
    function GetCtrCvpOld: Integer;
    procedure SetCtrCvpOld(const pCtrCvp: Integer);
    function GetCptCvpOld: TDate;
    procedure SetCptCvpOld(const pCptCvp: TDate);
    function GetSeqCtrOld: Integer;
    procedure SetSeqCtrOld(const pSeqCtr: Integer);
    function GetIndApeOld: Integer;
    procedure SetIndApeOld(const pIndApe: Integer);
    function GetObsIpdOld: string;
    procedure SetObsIpdOld(const pObsIpd: string);
    function GetSeqIspOld: Integer;
    procedure SetSeqIspOld(const pSeqIsp: Integer);
    function GetEmpOcpOld: Integer;
    procedure SetEmpOcpOld(const pEmpOcp: Integer);
    function GetVlrBpfOld: Double;
    procedure SetVlrBpfOld(const pVlrBpf: Double);
    function GetPerPifOld: Double;
    procedure SetPerPifOld(const pPerPif: Double);
    function GetVlrPifOld: Double;
    procedure SetVlrPifOld(const pVlrPif: Double);
    function GetVlrBcfOld: Double;
    procedure SetVlrBcfOld(const pVlrBcf: Double);
    function GetPerCffOld: Double;
    procedure SetPerCffOld(const pPerCff: Double);
    function GetVlrCffOld: Double;
    procedure SetVlrCffOld(const pVlrCff: Double);
    function GetPerDs5Old: Double;
    procedure SetPerDs5Old(const pPerDs5: Double);
    function GetVlrDs5Old: Double;
    procedure SetVlrDs5Old(const pVlrDs5: Double);
    function GetAgrNecOld: string;
    procedure SetAgrNecOld(const pAgrNec: string);
    function GetAgrPaiOld: string;
    procedure SetAgrPaiOld(const pAgrPai: string);
    function GetOriResOld: Char;
    procedure SetOriResOld(const pOriRes: Char);
    function GetQtdBpfOld: Double;
    procedure SetQtdBpfOld(const pQtdBpf: Double);
    function GetAliPifOld: Double;
    procedure SetAliPifOld(const pAliPif: Double);
    function GetQtdBcfOld: Double;
    procedure SetQtdBcfOld(const pQtdBcf: Double);
    function GetAliCffOld: Double;
    procedure SetAliCffOld(const pAliCff: Double);
    function GetQtdBipOld: Double;
    procedure SetQtdBipOld(const pQtdBip: Double);
    function GetAliIpiOld: Double;
    procedure SetAliIpiOld(const pAliIpi: Double);
    function GetIndIpmOld: Char;
    procedure SetIndIpmOld(const pIndIpm: Char);
    function GetFilRemOld: Integer;
    procedure SetFilRemOld(const pFilRem: Integer);
    function GetSnfRemOld: string;
    procedure SetSnfRemOld(const pSnfRem: string);
    function GetNfvRemOld: Integer;
    procedure SetNfvRemOld(const pNfvRem: Integer);
    function GetIpvRemOld: Integer;
    procedure SetIpvRemOld(const pIpvRem: Integer);
    function GetCodCnvOld: Integer;
    procedure SetCodCnvOld(const pCodCnv: Integer);
    function GetCodRepOld: Integer;
    procedure SetCodRepOld(const pCodRep: Integer);
    function GetProMonOld: Char;
    procedure SetProMonOld(const pProMon: Char);
    function GetProEntOld: Char;
    procedure SetProEntOld(const pProEnt: Char);
    function GetPerMgcOld: Double;
    procedure SetPerMgcOld(const pPerMgc: Double);
    function GetVarSerOld: Char;
    procedure SetVarSerOld(const pVarSer: Char);
    function GetRetMatOld: Char;
    procedure SetRetMatOld(const pRetMat: Char);
    function GetSenAprOld: string;
    procedure SetSenAprOld(const pSenApr: string);
    function GetUsuAprOld: Integer;
    procedure SetUsuAprOld(const pUsuApr: Integer);
    function GetDatAprOld: TDate;
    procedure SetDatAprOld(const pDatApr: TDate);
    function GetHorAprOld: Integer;
    procedure SetHorAprOld(const pHorApr: Integer);
    function GetTipCurOld: Integer;
    procedure SetTipCurOld(const pTipCur: Integer);
    function GetCodFinOld: Integer;
    procedure SetCodFinOld(const pCodFin: Integer);
    function GetUSU_DEPCIBOld: string;
    procedure SetUSU_DEPCIBOld(const pUSU_DEPCIB: string);
    function GetUSU_UsuAutOld: Integer;
    procedure SetUSU_UsuAutOld(const pUSU_UsuAut: Integer);
    function GetUSU_PreAutOld: Double;
    procedure SetUSU_PreAutOld(const pUSU_PreAut: Double);
    function GetUSU_EmiRelOld: Char;
    procedure SetUSU_EmiRelOld(const pUSU_EmiRel: Char);
    function GetUSU_OriMerOld: Char;
    procedure SetUSU_OriMerOld(const pUSU_OriMer: Char);
    function GetUSU_QtdExaOld: Char;
    procedure SetUSU_QtdExaOld(const pUSU_QtdExa: Char);
  protected
    procedure Registros_OLD(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property CodEmp: Integer read GetCodEmp write SetCodEmp;
    property CodFil: Integer read GetCodFil write SetCodFil;
    property NumPed: Integer read GetNumPed write SetNumPed;
    property SeqIpd: Integer read GetSeqIpd write SetSeqIpd;
    property TnsPro: string read GetTnsPro write SetTnsPro;
    property PedCli: string read GetPedCli write SetPedCli;
    property SeqPcl: string read GetSeqPcl write SetSeqPcl;
    property PedPrv: Char read GetPedPrv write SetPedPrv;
    property CodPro: string read GetCodPro write SetCodPro;
    property CodDer: string read GetCodDer write SetCodDer;
    property CplIpd: string read GetCplIpd write SetCplIpd;
    property CodFam: string read GetCodFam write SetCodFam;
    property CodAgr: Integer read GetCodAgr write SetCodAgr;
    property CodTic: string read GetCodTic write SetCodTic;
    property CodTrd: string read GetCodTrd write SetCodTrd;
    property CodTst: string read GetCodTst write SetCodTst;
    property CodStp: string read GetCodStp write SetCodStp;
    property CodStc: string read GetCodStc write SetCodStc;
    property CodDep: string read GetCodDep write SetCodDep;
    property CodLot: string read GetCodLot write SetCodLot;
    property ResEst: Char read GetResEst write SetResEst;
    property QtdPed: Double read GetQtdPed write SetQtdPed;
    property QtdAen: Double read GetQtdAen write SetQtdAen;
    property QtdPoc: Double read GetQtdPoc write SetQtdPoc;
    property QtdFat: Double read GetQtdFat write SetQtdFat;
    property QtdCan: Double read GetQtdCan write SetQtdCan;
    property QtdAbe: Double read GetQtdAbe write SetQtdAbe;
    property QtdRae: Double read GetQtdRae write SetQtdRae;
    property QtdNlp: Double read GetQtdNlp write SetQtdNlp;
    property QtdRes: Double read GetQtdRes write SetQtdRes;
    property UniMed: string read GetUniMed write SetUniMed;
    property CodMcp: string read GetCodMcp write SetCodMcp;
    property DatMfp: TDate read GetDatMfp write SetDatMfp;
    property CotMfp: Double read GetCotMfp write SetCotMfp;
    property DatMoe: TDate read GetDatMoe write SetDatMoe;
    property CotMoe: Double read GetCotMoe write SetCotMoe;
    property FecMoe: Char read GetFecMoe write SetFecMoe;
    property CodTpr: string read GetCodTpr write SetCodTpr;
    property PreUni: Double read GetPreUni write SetPreUni;
    property CodMoe: string read GetCodMoe write SetCodMoe;
    property PreFix: Char read GetPreFix write SetPreFix;
    property PerDsc: Double read GetPerDsc write SetPerDsc;
    property PerOfe: Double read GetPerOfe write SetPerOfe;
    property PerAcr: Double read GetPerAcr write SetPerAcr;
    property PerIpi: Double read GetPerIpi write SetPerIpi;
    property PerIcm: Double read GetPerIcm write SetPerIcm;
    property PerCom: Double read GetPerCom write SetPerCom;
    property DatEnt: TDate read GetDatEnt write SetDatEnt;
    property DatAne: TDate read GetDatAne write SetDatAne;
    property DatPoc: TDate read GetDatPoc write SetDatPoc;
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
    property VlrOfe: Double read GetVlrOfe write SetVlrOfe;
    property VlrDzf: Double read GetVlrDzf write SetVlrDzf;
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
    property VlrBco: Double read GetVlrBco write SetVlrBco;
    property VlrCom: Double read GetVlrCom write SetVlrCom;
    property VlrLpr: Double read GetVlrLpr write SetVlrLpr;
    property VlrLou: Double read GetVlrLou write SetVlrLou;
    property VlrLiq: Double read GetVlrLiq write SetVlrLiq;
    property VlrFin: Double read GetVlrFin write SetVlrFin;
    property SitIpd: Integer read GetSitIpd write SetSitIpd;
    property CodMot: Integer read GetCodMot write SetCodMot;
    property ObsMot: string read GetObsMot write SetObsMot;
    property GerNec: Integer read GetGerNec write SetGerNec;
    property GerCga: Char read GetGerCga write SetGerCga;
    property ResMan: Char read GetResMan write SetResMan;
    property IndAed: Char read GetIndAed write SetIndAed;
    property NumCtr: Integer read GetNumCtr write SetNumCtr;
    property DatCpt: TDate read GetDatCpt write SetDatCpt;
    property SeqCvp: Integer read GetSeqCvp write SetSeqCvp;
    property UsuGer: Integer read GetUsuGer write SetUsuGer;
    property DatGer: TDate read GetDatGer write SetDatGer;
    property HorGer: Integer read GetHorGer write SetHorGer;
    property QtdPpf: Double read GetQtdPpf write SetQtdPpf;
    property CmpKit: Char read GetCmpKit write SetCmpKit;
    property FilOcp: Integer read GetFilOcp write SetFilOcp;
    property NumOcp: Integer read GetNumOcp write SetNumOcp;
    property SeqIpo: Integer read GetSeqIpo write SetSeqIpo;
    property UniVen: string read GetUniVen write SetUniVen;
    property QtdVen: Double read GetQtdVen write SetQtdVen;
    property PreVen: Double read GetPreVen write SetPreVen;
    property PreBru: Double read GetPreBru write SetPreBru;
    property FilCtr: Integer read GetFilCtr write SetFilCtr;
    property CtrCvs: Integer read GetCtrCvs write SetCtrCvs;
    property CptCvs: TDate read GetCptCvs write SetCptCvs;
    property SeqCvs: Integer read GetSeqCvs write SetSeqCvs;
    property CodAvc: Integer read GetCodAvc write SetCodAvc;
    property CodFxa: string read GetCodFxa write SetCodFxa;
    property CodPgr: string read GetCodPgr write SetCodPgr;
    property IdxGrd: Integer read GetIdxGrd write SetIdxGrd;
    property CodMar: string read GetCodMar write SetCodMar;
    property CodClc: string read GetCodClc write SetCodClc;
    property PerDs1: Double read GetPerDs1 write SetPerDs1;
    property PerDs2: Double read GetPerDs2 write SetPerDs2;
    property PerDs3: Double read GetPerDs3 write SetPerDs3;
    property PerDs4: Double read GetPerDs4 write SetPerDs4;
    property FilPrd: Integer read GetFilPrd write SetFilPrd;
    property VlrRis: Double read GetVlrRis write SetVlrRis;
    property IndPce: Char read GetIndPce write SetIndPce;
    property IndPcr: Char read GetIndPcr write SetIndPcr;
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
    property FilNfc: Integer read GetFilNfc write SetFilNfc;
    property ForNfc: Integer read GetForNfc write SetForNfc;
    property NumNfc: Integer read GetNumNfc write SetNumNfc;
    property SnfNfc: string read GetSnfNfc write SetSnfNfc;
    property SeqIpc: Integer read GetSeqIpc write SetSeqIpc;
    property NctLcl: string read GetNctLcl write SetNctLcl;
    property NreCli: string read GetNreCli write SetNreCli;
    property NosIcl: Integer read GetNosIcl write SetNosIcl;
    property NosFcl: Integer read GetNosFcl write SetNosFcl;
    property NocCl1: string read GetNocCl1 write SetNocCl1;
    property NocCl2: string read GetNocCl2 write SetNocCl2;
    property NocCl3: string read GetNocCl3 write SetNocCl3;
    property CodAgc: string read GetCodAgc write SetCodAgc;
    property CtrCvp: Integer read GetCtrCvp write SetCtrCvp;
    property CptCvp: TDate read GetCptCvp write SetCptCvp;
    property SeqCtr: Integer read GetSeqCtr write SetSeqCtr;
    property IndApe: Integer read GetIndApe write SetIndApe;
    property ObsIpd: string read GetObsIpd write SetObsIpd;
    property SeqIsp: Integer read GetSeqIsp write SetSeqIsp;
    property EmpOcp: Integer read GetEmpOcp write SetEmpOcp;
    property VlrBpf: Double read GetVlrBpf write SetVlrBpf;
    property PerPif: Double read GetPerPif write SetPerPif;
    property VlrPif: Double read GetVlrPif write SetVlrPif;
    property VlrBcf: Double read GetVlrBcf write SetVlrBcf;
    property PerCff: Double read GetPerCff write SetPerCff;
    property VlrCff: Double read GetVlrCff write SetVlrCff;
    property PerDs5: Double read GetPerDs5 write SetPerDs5;
    property VlrDs5: Double read GetVlrDs5 write SetVlrDs5;
    property AgrNec: string read GetAgrNec write SetAgrNec;
    property AgrPai: string read GetAgrPai write SetAgrPai;
    property OriRes: Char read GetOriRes write SetOriRes;
    property QtdBpf: Double read GetQtdBpf write SetQtdBpf;
    property AliPif: Double read GetAliPif write SetAliPif;
    property QtdBcf: Double read GetQtdBcf write SetQtdBcf;
    property AliCff: Double read GetAliCff write SetAliCff;
    property QtdBip: Double read GetQtdBip write SetQtdBip;
    property AliIpi: Double read GetAliIpi write SetAliIpi;
    property IndIpm: Char read GetIndIpm write SetIndIpm;
    property FilRem: Integer read GetFilRem write SetFilRem;
    property SnfRem: string read GetSnfRem write SetSnfRem;
    property NfvRem: Integer read GetNfvRem write SetNfvRem;
    property IpvRem: Integer read GetIpvRem write SetIpvRem;
    property CodCnv: Integer read GetCodCnv write SetCodCnv;
    property CodRep: Integer read GetCodRep write SetCodRep;
    property ProMon: Char read GetProMon write SetProMon;
    property ProEnt: Char read GetProEnt write SetProEnt;
    property PerMgc: Double read GetPerMgc write SetPerMgc;
    property VarSer: Char read GetVarSer write SetVarSer;
    property RetMat: Char read GetRetMat write SetRetMat;
    property SenApr: string read GetSenApr write SetSenApr;
    property UsuApr: Integer read GetUsuApr write SetUsuApr;
    property DatApr: TDate read GetDatApr write SetDatApr;
    property HorApr: Integer read GetHorApr write SetHorApr;
    property TipCur: Integer read GetTipCur write SetTipCur;
    property CodFin: Integer read GetCodFin write SetCodFin;
    property USU_DEPCIB: string read GetUSU_DEPCIB write SetUSU_DEPCIB;
    property USU_UsuAut: Integer read GetUSU_UsuAut write SetUSU_UsuAut;
    property USU_PreAut: Double read GetUSU_PreAut write SetUSU_PreAut;
    property USU_EmiRel: Char read GetUSU_EmiRel write SetUSU_EmiRel;
    property USU_OriMer: Char read GetUSU_OriMer write SetUSU_OriMer;
    property USU_QtdExa: Char read GetUSU_QtdExa write SetUSU_QtdExa;

    property OLD_CodEmp: Integer read GetCodEmpOLD write SetCodEmpOLD;
    property OLD_CodFil: Integer read GetCodFilOLD write SetCodFilOLD;
    property OLD_NumPed: Integer read GetNumPedOLD write SetNumPedOLD;
    property OLD_SeqIpd: Integer read GetSeqIpdOLD write SetSeqIpdOLD;
    property OLD_TnsPro: string read GetTnsProOLD write SetTnsProOLD;
    property OLD_PedCli: string read GetPedCliOLD write SetPedCliOLD;
    property OLD_SeqPcl: string read GetSeqPclOLD write SetSeqPclOLD;
    property OLD_PedPrv: Char read GetPedPrvOLD write SetPedPrvOLD;
    property OLD_CodPro: string read GetCodProOLD write SetCodProOLD;
    property OLD_CodDer: string read GetCodDerOLD write SetCodDerOLD;
    property OLD_CplIpd: string read GetCplIpdOLD write SetCplIpdOLD;
    property OLD_CodFam: string read GetCodFamOLD write SetCodFamOLD;
    property OLD_CodAgr: Integer read GetCodAgrOLD write SetCodAgrOLD;
    property OLD_CodTic: string read GetCodTicOLD write SetCodTicOLD;
    property OLD_CodTrd: string read GetCodTrdOLD write SetCodTrdOLD;
    property OLD_CodTst: string read GetCodTstOLD write SetCodTstOLD;
    property OLD_CodStp: string read GetCodStpOLD write SetCodStpOLD;
    property OLD_CodStc: string read GetCodStcOLD write SetCodStcOLD;
    property OLD_CodDep: string read GetCodDepOLD write SetCodDepOLD;
    property OLD_CodLot: string read GetCodLotOLD write SetCodLotOLD;
    property OLD_ResEst: Char read GetResEstOLD write SetResEstOLD;
    property OLD_QtdPed: Double read GetQtdPedOLD write SetQtdPedOLD;
    property OLD_QtdAen: Double read GetQtdAenOLD write SetQtdAenOLD;
    property OLD_QtdPoc: Double read GetQtdPocOLD write SetQtdPocOLD;
    property OLD_QtdFat: Double read GetQtdFatOLD write SetQtdFatOLD;
    property OLD_QtdCan: Double read GetQtdCanOLD write SetQtdCanOLD;
    property OLD_QtdAbe: Double read GetQtdAbeOLD write SetQtdAbeOLD;
    property OLD_QtdRae: Double read GetQtdRaeOLD write SetQtdRaeOLD;
    property OLD_QtdNlp: Double read GetQtdNlpOLD write SetQtdNlpOLD;
    property OLD_QtdRes: Double read GetQtdResOLD write SetQtdResOLD;
    property OLD_UniMed: string read GetUniMedOLD write SetUniMedOLD;
    property OLD_CodMcp: string read GetCodMcpOLD write SetCodMcpOLD;
    property OLD_DatMfp: TDate read GetDatMfpOLD write SetDatMfpOLD;
    property OLD_CotMfp: Double read GetCotMfpOLD write SetCotMfpOLD;
    property OLD_DatMoe: TDate read GetDatMoeOLD write SetDatMoeOLD;
    property OLD_CotMoe: Double read GetCotMoeOLD write SetCotMoeOLD;
    property OLD_FecMoe: Char read GetFecMoeOLD write SetFecMoeOLD;
    property OLD_CodTpr: string read GetCodTprOLD write SetCodTprOLD;
    property OLD_PreUni: Double read GetPreUniOLD write SetPreUniOLD;
    property OLD_CodMoe: string read GetCodMoeOLD write SetCodMoeOLD;
    property OLD_PreFix: Char read GetPreFixOLD write SetPreFixOLD;
    property OLD_PerDsc: Double read GetPerDscOLD write SetPerDscOLD;
    property OLD_PerOfe: Double read GetPerOfeOLD write SetPerOfeOLD;
    property OLD_PerAcr: Double read GetPerAcrOLD write SetPerAcrOLD;
    property OLD_PerIpi: Double read GetPerIpiOLD write SetPerIpiOLD;
    property OLD_PerIcm: Double read GetPerIcmOLD write SetPerIcmOLD;
    property OLD_PerCom: Double read GetPerComOLD write SetPerComOLD;
    property OLD_DatEnt: TDate read GetDatEntOLD write SetDatEntOLD;
    property OLD_DatAne: TDate read GetDatAneOLD write SetDatAneOLD;
    property OLD_DatPoc: TDate read GetDatPocOLD write SetDatPocOLD;
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
    property OLD_VlrOfe: Double read GetVlrOfeOLD write SetVlrOfeOLD;
    property OLD_VlrDzf: Double read GetVlrDzfOLD write SetVlrDzfOLD;
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
    property OLD_VlrBco: Double read GetVlrBcoOLD write SetVlrBcoOLD;
    property OLD_VlrCom: Double read GetVlrComOLD write SetVlrComOLD;
    property OLD_VlrLpr: Double read GetVlrLprOLD write SetVlrLprOLD;
    property OLD_VlrLou: Double read GetVlrLouOLD write SetVlrLouOLD;
    property OLD_VlrLiq: Double read GetVlrLiqOLD write SetVlrLiqOLD;
    property OLD_VlrFin: Double read GetVlrFinOLD write SetVlrFinOLD;
    property OLD_SitIpd: Integer read GetSitIpdOLD write SetSitIpdOLD;
    property OLD_CodMot: Integer read GetCodMotOLD write SetCodMotOLD;
    property OLD_ObsMot: string read GetObsMotOLD write SetObsMotOLD;
    property OLD_GerNec: Integer read GetGerNecOLD write SetGerNecOLD;
    property OLD_GerCga: Char read GetGerCgaOLD write SetGerCgaOLD;
    property OLD_ResMan: Char read GetResManOLD write SetResManOLD;
    property OLD_IndAed: Char read GetIndAedOLD write SetIndAedOLD;
    property OLD_NumCtr: Integer read GetNumCtrOLD write SetNumCtrOLD;
    property OLD_DatCpt: TDate read GetDatCptOLD write SetDatCptOLD;
    property OLD_SeqCvp: Integer read GetSeqCvpOLD write SetSeqCvpOLD;
    property OLD_UsuGer: Integer read GetUsuGerOLD write SetUsuGerOLD;
    property OLD_DatGer: TDate read GetDatGerOLD write SetDatGerOLD;
    property OLD_HorGer: Integer read GetHorGerOLD write SetHorGerOLD;
    property OLD_QtdPpf: Double read GetQtdPpfOLD write SetQtdPpfOLD;
    property OLD_CmpKit: Char read GetCmpKitOLD write SetCmpKitOLD;
    property OLD_FilOcp: Integer read GetFilOcpOLD write SetFilOcpOLD;
    property OLD_NumOcp: Integer read GetNumOcpOLD write SetNumOcpOLD;
    property OLD_SeqIpo: Integer read GetSeqIpoOLD write SetSeqIpoOLD;
    property OLD_UniVen: string read GetUniVenOLD write SetUniVenOLD;
    property OLD_QtdVen: Double read GetQtdVenOLD write SetQtdVenOLD;
    property OLD_PreVen: Double read GetPreVenOLD write SetPreVenOLD;
    property OLD_PreBru: Double read GetPreBruOLD write SetPreBruOLD;
    property OLD_FilCtr: Integer read GetFilCtrOLD write SetFilCtrOLD;
    property OLD_CtrCvs: Integer read GetCtrCvsOLD write SetCtrCvsOLD;
    property OLD_CptCvs: TDate read GetCptCvsOLD write SetCptCvsOLD;
    property OLD_SeqCvs: Integer read GetSeqCvsOLD write SetSeqCvsOLD;
    property OLD_CodAvc: Integer read GetCodAvcOLD write SetCodAvcOLD;
    property OLD_CodFxa: string read GetCodFxaOLD write SetCodFxaOLD;
    property OLD_CodPgr: string read GetCodPgrOLD write SetCodPgrOLD;
    property OLD_IdxGrd: Integer read GetIdxGrdOLD write SetIdxGrdOLD;
    property OLD_CodMar: string read GetCodMarOLD write SetCodMarOLD;
    property OLD_CodClc: string read GetCodClcOLD write SetCodClcOLD;
    property OLD_PerDs1: Double read GetPerDs1OLD write SetPerDs1OLD;
    property OLD_PerDs2: Double read GetPerDs2OLD write SetPerDs2OLD;
    property OLD_PerDs3: Double read GetPerDs3OLD write SetPerDs3OLD;
    property OLD_PerDs4: Double read GetPerDs4OLD write SetPerDs4OLD;
    property OLD_FilPrd: Integer read GetFilPrdOLD write SetFilPrdOLD;
    property OLD_VlrRis: Double read GetVlrRisOLD write SetVlrRisOLD;
    property OLD_IndPce: Char read GetIndPceOLD write SetIndPceOLD;
    property OLD_IndPcr: Char read GetIndPcrOLD write SetIndPcrOLD;
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
    property OLD_FilNfc: Integer read GetFilNfcOLD write SetFilNfcOLD;
    property OLD_ForNfc: Integer read GetForNfcOLD write SetForNfcOLD;
    property OLD_NumNfc: Integer read GetNumNfcOLD write SetNumNfcOLD;
    property OLD_SnfNfc: string read GetSnfNfcOLD write SetSnfNfcOLD;
    property OLD_SeqIpc: Integer read GetSeqIpcOLD write SetSeqIpcOLD;
    property OLD_NctLcl: string read GetNctLclOLD write SetNctLclOLD;
    property OLD_NreCli: string read GetNreCliOLD write SetNreCliOLD;
    property OLD_NosIcl: Integer read GetNosIclOLD write SetNosIclOLD;
    property OLD_NosFcl: Integer read GetNosFclOLD write SetNosFclOLD;
    property OLD_NocCl1: string read GetNocCl1OLD write SetNocCl1OLD;
    property OLD_NocCl2: string read GetNocCl2OLD write SetNocCl2OLD;
    property OLD_NocCl3: string read GetNocCl3OLD write SetNocCl3OLD;
    property OLD_CodAgc: string read GetCodAgcOLD write SetCodAgcOLD;
    property OLD_CtrCvp: Integer read GetCtrCvpOLD write SetCtrCvpOLD;
    property OLD_CptCvp: TDate read GetCptCvpOLD write SetCptCvpOLD;
    property OLD_SeqCtr: Integer read GetSeqCtrOLD write SetSeqCtrOLD;
    property OLD_IndApe: Integer read GetIndApeOLD write SetIndApeOLD;
    property OLD_ObsIpd: string read GetObsIpdOLD write SetObsIpdOLD;
    property OLD_SeqIsp: Integer read GetSeqIspOLD write SetSeqIspOLD;
    property OLD_EmpOcp: Integer read GetEmpOcpOLD write SetEmpOcpOLD;
    property OLD_VlrBpf: Double read GetVlrBpfOLD write SetVlrBpfOLD;
    property OLD_PerPif: Double read GetPerPifOLD write SetPerPifOLD;
    property OLD_VlrPif: Double read GetVlrPifOLD write SetVlrPifOLD;
    property OLD_VlrBcf: Double read GetVlrBcfOLD write SetVlrBcfOLD;
    property OLD_PerCff: Double read GetPerCffOLD write SetPerCffOLD;
    property OLD_VlrCff: Double read GetVlrCffOLD write SetVlrCffOLD;
    property OLD_PerDs5: Double read GetPerDs5OLD write SetPerDs5OLD;
    property OLD_VlrDs5: Double read GetVlrDs5OLD write SetVlrDs5OLD;
    property OLD_AgrNec: string read GetAgrNecOLD write SetAgrNecOLD;
    property OLD_AgrPai: string read GetAgrPaiOLD write SetAgrPaiOLD;
    property OLD_OriRes: Char read GetOriResOLD write SetOriResOLD;
    property OLD_QtdBpf: Double read GetQtdBpfOLD write SetQtdBpfOLD;
    property OLD_AliPif: Double read GetAliPifOLD write SetAliPifOLD;
    property OLD_QtdBcf: Double read GetQtdBcfOLD write SetQtdBcfOLD;
    property OLD_AliCff: Double read GetAliCffOLD write SetAliCffOLD;
    property OLD_QtdBip: Double read GetQtdBipOLD write SetQtdBipOLD;
    property OLD_AliIpi: Double read GetAliIpiOLD write SetAliIpiOLD;
    property OLD_IndIpm: Char read GetIndIpmOLD write SetIndIpmOLD;
    property OLD_FilRem: Integer read GetFilRemOLD write SetFilRemOLD;
    property OLD_SnfRem: string read GetSnfRemOLD write SetSnfRemOLD;
    property OLD_NfvRem: Integer read GetNfvRemOLD write SetNfvRemOLD;
    property OLD_IpvRem: Integer read GetIpvRemOLD write SetIpvRemOLD;
    property OLD_CodCnv: Integer read GetCodCnvOLD write SetCodCnvOLD;
    property OLD_CodRep: Integer read GetCodRepOLD write SetCodRepOLD;
    property OLD_ProMon: Char read GetProMonOLD write SetProMonOLD;
    property OLD_ProEnt: Char read GetProEntOLD write SetProEntOLD;
    property OLD_PerMgc: Double read GetPerMgcOLD write SetPerMgcOLD;
    property OLD_VarSer: Char read GetVarSerOLD write SetVarSerOLD;
    property OLD_RetMat: Char read GetRetMatOLD write SetRetMatOLD;
    property OLD_SenApr: string read GetSenAprOLD write SetSenAprOLD;
    property OLD_UsuApr: Integer read GetUsuAprOLD write SetUsuAprOLD;
    property OLD_DatApr: TDate read GetDatAprOLD write SetDatAprOLD;
    property OLD_HorApr: Integer read GetHorAprOLD write SetHorAprOLD;
    property OLD_TipCur: Integer read GetTipCurOLD write SetTipCurOLD;
    property OLD_CodFin: Integer read GetCodFinOLD write SetCodFinOLD;
    property OLD_USU_DEPCIB: string read GetUSU_DEPCIBOLD write SetUSU_DEPCIBOLD;
    property OLD_USU_UsuAut: Integer read GetUSU_UsuAutOLD write SetUSU_UsuAutOLD;
    property OLD_USU_PreAut: Double read GetUSU_PreAutOLD write SetUSU_PreAutOLD;
    property OLD_USU_EmiRel: Char read GetUSU_EmiRelOLD write SetUSU_EmiRelOLD;
    property OLD_USU_OriMer: Char read GetUSU_OriMerOLD write SetUSU_OriMerOLD;
    property OLD_USU_QtdExa: Char read GetUSU_QtdExaOLD write SetUSU_QtdExaOLD;
  end;

implementation

{ T120IPD }

constructor T120IPD.Create();
begin
  inherited Create('E120IPD');
end;

destructor T120IPD.Destroy();
begin
  inherited;
end;
function T120IPD.GetCodEmp: Integer;
begin
  Result := FCodEmp;
end;

procedure T120IPD.SetCodEmp(const pCodEmp: Integer);
begin
  FCodEmp := pCodEmp;
end;

function T120IPD.GetCodFil: Integer;
begin
  Result := FCodFil;
end;

procedure T120IPD.SetCodFil(const pCodFil: Integer);
begin
  FCodFil := pCodFil;
end;

function T120IPD.GetNumPed: Integer;
begin
  Result := FNumPed;
end;

procedure T120IPD.SetNumPed(const pNumPed: Integer);
begin
  FNumPed := pNumPed;
end;

function T120IPD.GetSeqIpd: Integer;
begin
  Result := FSeqIpd;
end;

procedure T120IPD.SetSeqIpd(const pSeqIpd: Integer);
begin
  FSeqIpd := pSeqIpd;
end;

function T120IPD.GetTnsPro: string;
begin
  Result := FTnsPro;
end;

procedure T120IPD.SetTnsPro(const pTnsPro: string);
begin
  FTnsPro := pTnsPro;
end;

function T120IPD.GetPedCli: string;
begin
  Result := FPedCli;
end;

procedure T120IPD.SetPedCli(const pPedCli: string);
begin
  FPedCli := pPedCli;
end;

function T120IPD.GetSeqPcl: string;
begin
  Result := FSeqPcl;
end;

procedure T120IPD.SetSeqPcl(const pSeqPcl: string);
begin
  FSeqPcl := pSeqPcl;
end;

function T120IPD.GetPedPrv: Char;
begin
  Result := FPedPrv;
end;

procedure T120IPD.SetPedPrv(const pPedPrv: Char);
begin
  FPedPrv := pPedPrv;
end;

function T120IPD.GetCodPro: string;
begin
  Result := FCodPro;
end;

procedure T120IPD.SetCodPro(const pCodPro: string);
begin
  FCodPro := pCodPro;
end;

function T120IPD.GetCodDer: string;
begin
  Result := FCodDer;
end;

procedure T120IPD.SetCodDer(const pCodDer: string);
begin
  FCodDer := pCodDer;
end;

function T120IPD.GetCplIpd: string;
begin
  Result := FCplIpd;
end;

procedure T120IPD.SetCplIpd(const pCplIpd: string);
begin
  FCplIpd := pCplIpd;
end;

function T120IPD.GetCodFam: string;
begin
  Result := FCodFam;
end;

procedure T120IPD.SetCodFam(const pCodFam: string);
begin
  FCodFam := pCodFam;
end;

function T120IPD.GetCodAgr: Integer;
begin
  Result := FCodAgr;
end;

procedure T120IPD.SetCodAgr(const pCodAgr: Integer);
begin
  FCodAgr := pCodAgr;
end;

function T120IPD.GetCodTic: string;
begin
  Result := FCodTic;
end;

procedure T120IPD.SetCodTic(const pCodTic: string);
begin
  FCodTic := pCodTic;
end;

function T120IPD.GetCodTrd: string;
begin
  Result := FCodTrd;
end;

procedure T120IPD.SetCodTrd(const pCodTrd: string);
begin
  FCodTrd := pCodTrd;
end;

function T120IPD.GetCodTst: string;
begin
  Result := FCodTst;
end;

procedure T120IPD.SetCodTst(const pCodTst: string);
begin
  FCodTst := pCodTst;
end;

function T120IPD.GetCodStp: string;
begin
  Result := FCodStp;
end;

procedure T120IPD.SetCodStp(const pCodStp: string);
begin
  FCodStp := pCodStp;
end;

function T120IPD.GetCodStc: string;
begin
  Result := FCodStc;
end;

procedure T120IPD.SetCodStc(const pCodStc: string);
begin
  FCodStc := pCodStc;
end;

function T120IPD.GetCodDep: string;
begin
  Result := FCodDep;
end;

procedure T120IPD.SetCodDep(const pCodDep: string);
begin
  FCodDep := pCodDep;
end;

function T120IPD.GetCodLot: string;
begin
  Result := FCodLot;
end;

procedure T120IPD.SetCodLot(const pCodLot: string);
begin
  FCodLot := pCodLot;
end;

function T120IPD.GetResEst: Char;
begin
  Result := FResEst;
end;

procedure T120IPD.SetResEst(const pResEst: Char);
begin
  FResEst := pResEst;
end;

function T120IPD.GetQtdPed: Double;
begin
  Result := FQtdPed;
end;

procedure T120IPD.SetQtdPed(const pQtdPed: Double);
begin
  FQtdPed := pQtdPed;
end;

function T120IPD.GetQtdAen: Double;
begin
  Result := FQtdAen;
end;

procedure T120IPD.SetQtdAen(const pQtdAen: Double);
begin
  FQtdAen := pQtdAen;
end;

function T120IPD.GetQtdPoc: Double;
begin
  Result := FQtdPoc;
end;

procedure T120IPD.SetQtdPoc(const pQtdPoc: Double);
begin
  FQtdPoc := pQtdPoc;
end;

function T120IPD.GetQtdFat: Double;
begin
  Result := FQtdFat;
end;

procedure T120IPD.SetQtdFat(const pQtdFat: Double);
begin
  FQtdFat := pQtdFat;
end;

function T120IPD.GetQtdCan: Double;
begin
  Result := FQtdCan;
end;

procedure T120IPD.SetQtdCan(const pQtdCan: Double);
begin
  FQtdCan := pQtdCan;
end;

function T120IPD.GetQtdAbe: Double;
begin
  Result := FQtdAbe;
end;

procedure T120IPD.SetQtdAbe(const pQtdAbe: Double);
begin
  FQtdAbe := pQtdAbe;
end;

function T120IPD.GetQtdRae: Double;
begin
  Result := FQtdRae;
end;

procedure T120IPD.SetQtdRae(const pQtdRae: Double);
begin
  FQtdRae := pQtdRae;
end;

function T120IPD.GetQtdNlp: Double;
begin
  Result := FQtdNlp;
end;

procedure T120IPD.SetQtdNlp(const pQtdNlp: Double);
begin
  FQtdNlp := pQtdNlp;
end;

function T120IPD.GetQtdRes: Double;
begin
  Result := FQtdRes;
end;

procedure T120IPD.SetQtdRes(const pQtdRes: Double);
begin
  FQtdRes := pQtdRes;
end;

function T120IPD.GetUniMed: string;
begin
  Result := FUniMed;
end;

procedure T120IPD.SetUniMed(const pUniMed: string);
begin
  FUniMed := pUniMed;
end;

function T120IPD.GetCodMcp: string;
begin
  Result := FCodMcp;
end;

procedure T120IPD.SetCodMcp(const pCodMcp: string);
begin
  FCodMcp := pCodMcp;
end;

function T120IPD.GetDatMfp: TDate;
begin
  Result := FDatMfp;
end;

procedure T120IPD.SetDatMfp(const pDatMfp: TDate);
begin
  FDatMfp := pDatMfp;
end;

function T120IPD.GetCotMfp: Double;
begin
  Result := FCotMfp;
end;

procedure T120IPD.SetCotMfp(const pCotMfp: Double);
begin
  FCotMfp := pCotMfp;
end;

function T120IPD.GetDatMoe: TDate;
begin
  Result := FDatMoe;
end;

procedure T120IPD.SetDatMoe(const pDatMoe: TDate);
begin
  FDatMoe := pDatMoe;
end;

function T120IPD.GetCotMoe: Double;
begin
  Result := FCotMoe;
end;

procedure T120IPD.SetCotMoe(const pCotMoe: Double);
begin
  FCotMoe := pCotMoe;
end;

function T120IPD.GetFecMoe: Char;
begin
  Result := FFecMoe;
end;

procedure T120IPD.SetFecMoe(const pFecMoe: Char);
begin
  FFecMoe := pFecMoe;
end;

function T120IPD.GetCodTpr: string;
begin
  Result := FCodTpr;
end;

procedure T120IPD.SetCodTpr(const pCodTpr: string);
begin
  FCodTpr := pCodTpr;
end;

function T120IPD.GetPreUni: Double;
begin
  Result := FPreUni;
end;

procedure T120IPD.SetPreUni(const pPreUni: Double);
begin
  FPreUni := pPreUni;
end;

function T120IPD.GetCodMoe: string;
begin
  Result := FCodMoe;
end;

procedure T120IPD.SetCodMoe(const pCodMoe: string);
begin
  FCodMoe := pCodMoe;
end;

function T120IPD.GetPreFix: Char;
begin
  Result := FPreFix;
end;

procedure T120IPD.SetPreFix(const pPreFix: Char);
begin
  FPreFix := pPreFix;
end;

function T120IPD.GetPerDsc: Double;
begin
  Result := FPerDsc;
end;

procedure T120IPD.SetPerDsc(const pPerDsc: Double);
begin
  FPerDsc := pPerDsc;
end;

function T120IPD.GetPerOfe: Double;
begin
  Result := FPerOfe;
end;

procedure T120IPD.SetPerOfe(const pPerOfe: Double);
begin
  FPerOfe := pPerOfe;
end;

function T120IPD.GetPerAcr: Double;
begin
  Result := FPerAcr;
end;

procedure T120IPD.SetPerAcr(const pPerAcr: Double);
begin
  FPerAcr := pPerAcr;
end;

function T120IPD.GetPerIpi: Double;
begin
  Result := FPerIpi;
end;

procedure T120IPD.SetPerIpi(const pPerIpi: Double);
begin
  FPerIpi := pPerIpi;
end;

function T120IPD.GetPerIcm: Double;
begin
  Result := FPerIcm;
end;

procedure T120IPD.SetPerIcm(const pPerIcm: Double);
begin
  FPerIcm := pPerIcm;
end;

function T120IPD.GetPerCom: Double;
begin
  Result := FPerCom;
end;

procedure T120IPD.SetPerCom(const pPerCom: Double);
begin
  FPerCom := pPerCom;
end;

function T120IPD.GetDatEnt: TDate;
begin
  Result := FDatEnt;
end;

procedure T120IPD.SetDatEnt(const pDatEnt: TDate);
begin
  FDatEnt := pDatEnt;
end;

function T120IPD.GetDatAne: TDate;
begin
  Result := FDatAne;
end;

procedure T120IPD.SetDatAne(const pDatAne: TDate);
begin
  FDatAne := pDatAne;
end;

function T120IPD.GetDatPoc: TDate;
begin
  Result := FDatPoc;
end;

procedure T120IPD.SetDatPoc(const pDatPoc: TDate);
begin
  FDatPoc := pDatPoc;
end;

function T120IPD.GetCodPvp: string;
begin
  Result := FCodPvp;
end;

procedure T120IPD.SetCodPvp(const pCodPvp: string);
begin
  FCodPvp := pCodPvp;
end;

function T120IPD.GetNumPrj: Integer;
begin
  Result := FNumPrj;
end;

procedure T120IPD.SetNumPrj(const pNumPrj: Integer);
begin
  FNumPrj := pNumPrj;
end;

function T120IPD.GetCodFpj: Integer;
begin
  Result := FCodFpj;
end;

procedure T120IPD.SetCodFpj(const pCodFpj: Integer);
begin
  FCodFpj := pCodFpj;
end;

function T120IPD.GetCtaFin: Integer;
begin
  Result := FCtaFin;
end;

procedure T120IPD.SetCtaFin(const pCtaFin: Integer);
begin
  FCtaFin := pCtaFin;
end;

function T120IPD.GetCtaRed: Integer;
begin
  Result := FCtaRed;
end;

procedure T120IPD.SetCtaRed(const pCtaRed: Integer);
begin
  FCtaRed := pCtaRed;
end;

function T120IPD.GetCodCcu: string;
begin
  Result := FCodCcu;
end;

procedure T120IPD.SetCodCcu(const pCodCcu: string);
begin
  FCodCcu := pCodCcu;
end;

function T120IPD.GetVlrFre: Double;
begin
  Result := FVlrFre;
end;

procedure T120IPD.SetVlrFre(const pVlrFre: Double);
begin
  FVlrFre := pVlrFre;
end;

function T120IPD.GetVlrSeg: Double;
begin
  Result := FVlrSeg;
end;

procedure T120IPD.SetVlrSeg(const pVlrSeg: Double);
begin
  FVlrSeg := pVlrSeg;
end;

function T120IPD.GetVlrEmb: Double;
begin
  Result := FVlrEmb;
end;

procedure T120IPD.SetVlrEmb(const pVlrEmb: Double);
begin
  FVlrEmb := pVlrEmb;
end;

function T120IPD.GetVlrEnc: Double;
begin
  Result := FVlrEnc;
end;

procedure T120IPD.SetVlrEnc(const pVlrEnc: Double);
begin
  FVlrEnc := pVlrEnc;
end;

function T120IPD.GetVlrOut: Double;
begin
  Result := FVlrOut;
end;

procedure T120IPD.SetVlrOut(const pVlrOut: Double);
begin
  FVlrOut := pVlrOut;
end;

function T120IPD.GetVlrDar: Double;
begin
  Result := FVlrDar;
end;

procedure T120IPD.SetVlrDar(const pVlrDar: Double);
begin
  FVlrDar := pVlrDar;
end;

function T120IPD.GetVlrFrd: Double;
begin
  Result := FVlrFrd;
end;

procedure T120IPD.SetVlrFrd(const pVlrFrd: Double);
begin
  FVlrFrd := pVlrFrd;
end;

function T120IPD.GetVlrOud: Double;
begin
  Result := FVlrOud;
end;

procedure T120IPD.SetVlrOud(const pVlrOud: Double);
begin
  FVlrOud := pVlrOud;
end;

function T120IPD.GetVlrBru: Double;
begin
  Result := FVlrBru;
end;

procedure T120IPD.SetVlrBru(const pVlrBru: Double);
begin
  FVlrBru := pVlrBru;
end;

function T120IPD.GetVlrDsc: Double;
begin
  Result := FVlrDsc;
end;

procedure T120IPD.SetVlrDsc(const pVlrDsc: Double);
begin
  FVlrDsc := pVlrDsc;
end;

function T120IPD.GetVlrDs1: Double;
begin
  Result := FVlrDs1;
end;

procedure T120IPD.SetVlrDs1(const pVlrDs1: Double);
begin
  FVlrDs1 := pVlrDs1;
end;

function T120IPD.GetVlrDs2: Double;
begin
  Result := FVlrDs2;
end;

procedure T120IPD.SetVlrDs2(const pVlrDs2: Double);
begin
  FVlrDs2 := pVlrDs2;
end;

function T120IPD.GetVlrDs3: Double;
begin
  Result := FVlrDs3;
end;

procedure T120IPD.SetVlrDs3(const pVlrDs3: Double);
begin
  FVlrDs3 := pVlrDs3;
end;

function T120IPD.GetVlrDs4: Double;
begin
  Result := FVlrDs4;
end;

procedure T120IPD.SetVlrDs4(const pVlrDs4: Double);
begin
  FVlrDs4 := pVlrDs4;
end;

function T120IPD.GetVlrOfe: Double;
begin
  Result := FVlrOfe;
end;

procedure T120IPD.SetVlrOfe(const pVlrOfe: Double);
begin
  FVlrOfe := pVlrOfe;
end;

function T120IPD.GetVlrDzf: Double;
begin
  Result := FVlrDzf;
end;

procedure T120IPD.SetVlrDzf(const pVlrDzf: Double);
begin
  FVlrDzf := pVlrDzf;
end;

function T120IPD.GetVlrBip: Double;
begin
  Result := FVlrBip;
end;

procedure T120IPD.SetVlrBip(const pVlrBip: Double);
begin
  FVlrBip := pVlrBip;
end;

function T120IPD.GetVlrIpi: Double;
begin
  Result := FVlrIpi;
end;

procedure T120IPD.SetVlrIpi(const pVlrIpi: Double);
begin
  FVlrIpi := pVlrIpi;
end;

function T120IPD.GetVlrBic: Double;
begin
  Result := FVlrBic;
end;

procedure T120IPD.SetVlrBic(const pVlrBic: Double);
begin
  FVlrBic := pVlrBic;
end;

function T120IPD.GetVlrIcm: Double;
begin
  Result := FVlrIcm;
end;

procedure T120IPD.SetVlrIcm(const pVlrIcm: Double);
begin
  FVlrIcm := pVlrIcm;
end;

function T120IPD.GetVlrBsi: Double;
begin
  Result := FVlrBsi;
end;

procedure T120IPD.SetVlrBsi(const pVlrBsi: Double);
begin
  FVlrBsi := pVlrBsi;
end;

function T120IPD.GetVlrIcs: Double;
begin
  Result := FVlrIcs;
end;

procedure T120IPD.SetVlrIcs(const pVlrIcs: Double);
begin
  FVlrIcs := pVlrIcs;
end;

function T120IPD.GetVlrBsp: Double;
begin
  Result := FVlrBsp;
end;

procedure T120IPD.SetVlrBsp(const pVlrBsp: Double);
begin
  FVlrBsp := pVlrBsp;
end;

function T120IPD.GetVlrStp: Double;
begin
  Result := FVlrStp;
end;

procedure T120IPD.SetVlrStp(const pVlrStp: Double);
begin
  FVlrStp := pVlrStp;
end;

function T120IPD.GetVlrBsc: Double;
begin
  Result := FVlrBsc;
end;

procedure T120IPD.SetVlrBsc(const pVlrBsc: Double);
begin
  FVlrBsc := pVlrBsc;
end;

function T120IPD.GetVlrStc: Double;
begin
  Result := FVlrStc;
end;

procedure T120IPD.SetVlrStc(const pVlrStc: Double);
begin
  FVlrStc := pVlrStc;
end;

function T120IPD.GetVlrBco: Double;
begin
  Result := FVlrBco;
end;

procedure T120IPD.SetVlrBco(const pVlrBco: Double);
begin
  FVlrBco := pVlrBco;
end;

function T120IPD.GetVlrCom: Double;
begin
  Result := FVlrCom;
end;

procedure T120IPD.SetVlrCom(const pVlrCom: Double);
begin
  FVlrCom := pVlrCom;
end;

function T120IPD.GetVlrLpr: Double;
begin
  Result := FVlrLpr;
end;

procedure T120IPD.SetVlrLpr(const pVlrLpr: Double);
begin
  FVlrLpr := pVlrLpr;
end;

function T120IPD.GetVlrLou: Double;
begin
  Result := FVlrLou;
end;

procedure T120IPD.SetVlrLou(const pVlrLou: Double);
begin
  FVlrLou := pVlrLou;
end;

function T120IPD.GetVlrLiq: Double;
begin
  Result := FVlrLiq;
end;

procedure T120IPD.SetVlrLiq(const pVlrLiq: Double);
begin
  FVlrLiq := pVlrLiq;
end;

function T120IPD.GetVlrFin: Double;
begin
  Result := FVlrFin;
end;

procedure T120IPD.SetVlrFin(const pVlrFin: Double);
begin
  FVlrFin := pVlrFin;
end;

function T120IPD.GetSitIpd: Integer;
begin
  Result := FSitIpd;
end;

procedure T120IPD.SetSitIpd(const pSitIpd: Integer);
begin
  FSitIpd := pSitIpd;
end;

function T120IPD.GetCodMot: Integer;
begin
  Result := FCodMot;
end;

procedure T120IPD.SetCodMot(const pCodMot: Integer);
begin
  FCodMot := pCodMot;
end;

function T120IPD.GetObsMot: string;
begin
  Result := FObsMot;
end;

procedure T120IPD.SetObsMot(const pObsMot: string);
begin
  FObsMot := pObsMot;
end;

function T120IPD.GetGerNec: Integer;
begin
  Result := FGerNec;
end;

procedure T120IPD.SetGerNec(const pGerNec: Integer);
begin
  FGerNec := pGerNec;
end;

function T120IPD.GetGerCga: Char;
begin
  Result := FGerCga;
end;

procedure T120IPD.SetGerCga(const pGerCga: Char);
begin
  FGerCga := pGerCga;
end;

function T120IPD.GetResMan: Char;
begin
  Result := FResMan;
end;

procedure T120IPD.SetResMan(const pResMan: Char);
begin
  FResMan := pResMan;
end;

function T120IPD.GetIndAed: Char;
begin
  Result := FIndAed;
end;

procedure T120IPD.SetIndAed(const pIndAed: Char);
begin
  FIndAed := pIndAed;
end;

function T120IPD.GetNumCtr: Integer;
begin
  Result := FNumCtr;
end;

procedure T120IPD.SetNumCtr(const pNumCtr: Integer);
begin
  FNumCtr := pNumCtr;
end;

function T120IPD.GetDatCpt: TDate;
begin
  Result := FDatCpt;
end;

procedure T120IPD.SetDatCpt(const pDatCpt: TDate);
begin
  FDatCpt := pDatCpt;
end;

function T120IPD.GetSeqCvp: Integer;
begin
  Result := FSeqCvp;
end;

procedure T120IPD.SetSeqCvp(const pSeqCvp: Integer);
begin
  FSeqCvp := pSeqCvp;
end;

function T120IPD.GetUsuGer: Integer;
begin
  Result := FUsuGer;
end;

procedure T120IPD.SetUsuGer(const pUsuGer: Integer);
begin
  FUsuGer := pUsuGer;
end;

function T120IPD.GetDatGer: TDate;
begin
  Result := FDatGer;
end;

procedure T120IPD.SetDatGer(const pDatGer: TDate);
begin
  FDatGer := pDatGer;
end;

function T120IPD.GetHorGer: Integer;
begin
  Result := FHorGer;
end;

procedure T120IPD.SetHorGer(const pHorGer: Integer);
begin
  FHorGer := pHorGer;
end;

function T120IPD.GetQtdPpf: Double;
begin
  Result := FQtdPpf;
end;

procedure T120IPD.SetQtdPpf(const pQtdPpf: Double);
begin
  FQtdPpf := pQtdPpf;
end;

function T120IPD.GetCmpKit: Char;
begin
  Result := FCmpKit;
end;

procedure T120IPD.SetCmpKit(const pCmpKit: Char);
begin
  FCmpKit := pCmpKit;
end;

function T120IPD.GetFilOcp: Integer;
begin
  Result := FFilOcp;
end;

procedure T120IPD.SetFilOcp(const pFilOcp: Integer);
begin
  FFilOcp := pFilOcp;
end;

function T120IPD.GetNumOcp: Integer;
begin
  Result := FNumOcp;
end;

procedure T120IPD.SetNumOcp(const pNumOcp: Integer);
begin
  FNumOcp := pNumOcp;
end;

function T120IPD.GetSeqIpo: Integer;
begin
  Result := FSeqIpo;
end;

procedure T120IPD.SetSeqIpo(const pSeqIpo: Integer);
begin
  FSeqIpo := pSeqIpo;
end;

function T120IPD.GetUniVen: string;
begin
  Result := FUniVen;
end;

procedure T120IPD.SetUniVen(const pUniVen: string);
begin
  FUniVen := pUniVen;
end;

function T120IPD.GetQtdVen: Double;
begin
  Result := FQtdVen;
end;

procedure T120IPD.SetQtdVen(const pQtdVen: Double);
begin
  FQtdVen := pQtdVen;
end;

function T120IPD.GetPreVen: Double;
begin
  Result := FPreVen;
end;

procedure T120IPD.SetPreVen(const pPreVen: Double);
begin
  FPreVen := pPreVen;
end;

function T120IPD.GetPreBru: Double;
begin
  Result := FPreBru;
end;

procedure T120IPD.SetPreBru(const pPreBru: Double);
begin
  FPreBru := pPreBru;
end;

function T120IPD.GetFilCtr: Integer;
begin
  Result := FFilCtr;
end;

procedure T120IPD.SetFilCtr(const pFilCtr: Integer);
begin
  FFilCtr := pFilCtr;
end;

function T120IPD.GetCtrCvs: Integer;
begin
  Result := FCtrCvs;
end;

procedure T120IPD.SetCtrCvs(const pCtrCvs: Integer);
begin
  FCtrCvs := pCtrCvs;
end;

function T120IPD.GetCptCvs: TDate;
begin
  Result := FCptCvs;
end;

procedure T120IPD.SetCptCvs(const pCptCvs: TDate);
begin
  FCptCvs := pCptCvs;
end;

function T120IPD.GetSeqCvs: Integer;
begin
  Result := FSeqCvs;
end;

procedure T120IPD.SetSeqCvs(const pSeqCvs: Integer);
begin
  FSeqCvs := pSeqCvs;
end;

function T120IPD.GetCodAvc: Integer;
begin
  Result := FCodAvc;
end;

procedure T120IPD.SetCodAvc(const pCodAvc: Integer);
begin
  FCodAvc := pCodAvc;
end;

function T120IPD.GetCodFxa: string;
begin
  Result := FCodFxa;
end;

procedure T120IPD.SetCodFxa(const pCodFxa: string);
begin
  FCodFxa := pCodFxa;
end;

function T120IPD.GetCodPgr: string;
begin
  Result := FCodPgr;
end;

procedure T120IPD.SetCodPgr(const pCodPgr: string);
begin
  FCodPgr := pCodPgr;
end;

function T120IPD.GetIdxGrd: Integer;
begin
  Result := FIdxGrd;
end;

procedure T120IPD.SetIdxGrd(const pIdxGrd: Integer);
begin
  FIdxGrd := pIdxGrd;
end;

function T120IPD.GetCodMar: string;
begin
  Result := FCodMar;
end;

procedure T120IPD.SetCodMar(const pCodMar: string);
begin
  FCodMar := pCodMar;
end;

function T120IPD.GetCodClc: string;
begin
  Result := FCodClc;
end;

procedure T120IPD.SetCodClc(const pCodClc: string);
begin
  FCodClc := pCodClc;
end;

function T120IPD.GetPerDs1: Double;
begin
  Result := FPerDs1;
end;

procedure T120IPD.SetPerDs1(const pPerDs1: Double);
begin
  FPerDs1 := pPerDs1;
end;

function T120IPD.GetPerDs2: Double;
begin
  Result := FPerDs2;
end;

procedure T120IPD.SetPerDs2(const pPerDs2: Double);
begin
  FPerDs2 := pPerDs2;
end;

function T120IPD.GetPerDs3: Double;
begin
  Result := FPerDs3;
end;

procedure T120IPD.SetPerDs3(const pPerDs3: Double);
begin
  FPerDs3 := pPerDs3;
end;

function T120IPD.GetPerDs4: Double;
begin
  Result := FPerDs4;
end;

procedure T120IPD.SetPerDs4(const pPerDs4: Double);
begin
  FPerDs4 := pPerDs4;
end;

function T120IPD.GetFilPrd: Integer;
begin
  Result := FFilPrd;
end;

procedure T120IPD.SetFilPrd(const pFilPrd: Integer);
begin
  FFilPrd := pFilPrd;
end;

function T120IPD.GetVlrRis: Double;
begin
  Result := FVlrRis;
end;

procedure T120IPD.SetVlrRis(const pVlrRis: Double);
begin
  FVlrRis := pVlrRis;
end;

function T120IPD.GetIndPce: Char;
begin
  Result := FIndPce;
end;

procedure T120IPD.SetIndPce(const pIndPce: Char);
begin
  FIndPce := pIndPce;
end;

function T120IPD.GetIndPcr: Char;
begin
  Result := FIndPcr;
end;

procedure T120IPD.SetIndPcr(const pIndPcr: Char);
begin
  FIndPcr := pIndPcr;
end;

function T120IPD.GetPerPit: Double;
begin
  Result := FPerPit;
end;

procedure T120IPD.SetPerPit(const pPerPit: Double);
begin
  FPerPit := pPerPit;
end;

function T120IPD.GetVlrBpt: Double;
begin
  Result := FVlrBpt;
end;

procedure T120IPD.SetVlrBpt(const pVlrBpt: Double);
begin
  FVlrBpt := pVlrBpt;
end;

function T120IPD.GetVlrPit: Double;
begin
  Result := FVlrPit;
end;

procedure T120IPD.SetVlrPit(const pVlrPit: Double);
begin
  FVlrPit := pVlrPit;
end;

function T120IPD.GetPerCrt: Double;
begin
  Result := FPerCrt;
end;

procedure T120IPD.SetPerCrt(const pPerCrt: Double);
begin
  FPerCrt := pPerCrt;
end;

function T120IPD.GetVlrBct: Double;
begin
  Result := FVlrBct;
end;

procedure T120IPD.SetVlrBct(const pVlrBct: Double);
begin
  FVlrBct := pVlrBct;
end;

function T120IPD.GetVlrCrt: Double;
begin
  Result := FVlrCrt;
end;

procedure T120IPD.SetVlrCrt(const pVlrCrt: Double);
begin
  FVlrCrt := pVlrCrt;
end;

function T120IPD.GetPerCsl: Double;
begin
  Result := FPerCsl;
end;

procedure T120IPD.SetPerCsl(const pPerCsl: Double);
begin
  FPerCsl := pPerCsl;
end;

function T120IPD.GetVlrBcl: Double;
begin
  Result := FVlrBcl;
end;

procedure T120IPD.SetVlrBcl(const pVlrBcl: Double);
begin
  FVlrBcl := pVlrBcl;
end;

function T120IPD.GetVlrCsl: Double;
begin
  Result := FVlrCsl;
end;

procedure T120IPD.SetVlrCsl(const pVlrCsl: Double);
begin
  FVlrCsl := pVlrCsl;
end;

function T120IPD.GetPerOur: Double;
begin
  Result := FPerOur;
end;

procedure T120IPD.SetPerOur(const pPerOur: Double);
begin
  FPerOur := pPerOur;
end;

function T120IPD.GetVlrBor: Double;
begin
  Result := FVlrBor;
end;

procedure T120IPD.SetVlrBor(const pVlrBor: Double);
begin
  FVlrBor := pVlrBor;
end;

function T120IPD.GetVlrOur: Double;
begin
  Result := FVlrOur;
end;

procedure T120IPD.SetVlrOur(const pVlrOur: Double);
begin
  FVlrOur := pVlrOur;
end;

function T120IPD.GetPerIrf: Double;
begin
  Result := FPerIrf;
end;

procedure T120IPD.SetPerIrf(const pPerIrf: Double);
begin
  FPerIrf := pPerIrf;
end;

function T120IPD.GetVlrBir: Double;
begin
  Result := FVlrBir;
end;

procedure T120IPD.SetVlrBir(const pVlrBir: Double);
begin
  FVlrBir := pVlrBir;
end;

function T120IPD.GetVlrIrf: Double;
begin
  Result := FVlrIrf;
end;

procedure T120IPD.SetVlrIrf(const pVlrIrf: Double);
begin
  FVlrIrf := pVlrIrf;
end;

function T120IPD.GetFilNfc: Integer;
begin
  Result := FFilNfc;
end;

procedure T120IPD.SetFilNfc(const pFilNfc: Integer);
begin
  FFilNfc := pFilNfc;
end;

function T120IPD.GetForNfc: Integer;
begin
  Result := FForNfc;
end;

procedure T120IPD.SetForNfc(const pForNfc: Integer);
begin
  FForNfc := pForNfc;
end;

function T120IPD.GetNumNfc: Integer;
begin
  Result := FNumNfc;
end;

procedure T120IPD.SetNumNfc(const pNumNfc: Integer);
begin
  FNumNfc := pNumNfc;
end;

function T120IPD.GetSnfNfc: string;
begin
  Result := FSnfNfc;
end;

procedure T120IPD.SetSnfNfc(const pSnfNfc: string);
begin
  FSnfNfc := pSnfNfc;
end;

function T120IPD.GetSeqIpc: Integer;
begin
  Result := FSeqIpc;
end;

procedure T120IPD.SetSeqIpc(const pSeqIpc: Integer);
begin
  FSeqIpc := pSeqIpc;
end;

function T120IPD.GetNctLcl: string;
begin
  Result := FNctLcl;
end;

procedure T120IPD.SetNctLcl(const pNctLcl: string);
begin
  FNctLcl := pNctLcl;
end;

function T120IPD.GetNreCli: string;
begin
  Result := FNreCli;
end;

procedure T120IPD.SetNreCli(const pNreCli: string);
begin
  FNreCli := pNreCli;
end;

function T120IPD.GetNosIcl: Integer;
begin
  Result := FNosIcl;
end;

procedure T120IPD.SetNosIcl(const pNosIcl: Integer);
begin
  FNosIcl := pNosIcl;
end;

function T120IPD.GetNosFcl: Integer;
begin
  Result := FNosFcl;
end;

procedure T120IPD.SetNosFcl(const pNosFcl: Integer);
begin
  FNosFcl := pNosFcl;
end;

function T120IPD.GetNocCl1: string;
begin
  Result := FNocCl1;
end;

procedure T120IPD.SetNocCl1(const pNocCl1: string);
begin
  FNocCl1 := pNocCl1;
end;

function T120IPD.GetNocCl2: string;
begin
  Result := FNocCl2;
end;

procedure T120IPD.SetNocCl2(const pNocCl2: string);
begin
  FNocCl2 := pNocCl2;
end;

function T120IPD.GetNocCl3: string;
begin
  Result := FNocCl3;
end;

procedure T120IPD.SetNocCl3(const pNocCl3: string);
begin
  FNocCl3 := pNocCl3;
end;

function T120IPD.GetCodAgc: string;
begin
  Result := FCodAgc;
end;

procedure T120IPD.SetCodAgc(const pCodAgc: string);
begin
  FCodAgc := pCodAgc;
end;

function T120IPD.GetCtrCvp: Integer;
begin
  Result := FCtrCvp;
end;

procedure T120IPD.SetCtrCvp(const pCtrCvp: Integer);
begin
  FCtrCvp := pCtrCvp;
end;

function T120IPD.GetCptCvp: TDate;
begin
  Result := FCptCvp;
end;

procedure T120IPD.SetCptCvp(const pCptCvp: TDate);
begin
  FCptCvp := pCptCvp;
end;

function T120IPD.GetSeqCtr: Integer;
begin
  Result := FSeqCtr;
end;

procedure T120IPD.SetSeqCtr(const pSeqCtr: Integer);
begin
  FSeqCtr := pSeqCtr;
end;

function T120IPD.GetIndApe: Integer;
begin
  Result := FIndApe;
end;

procedure T120IPD.SetIndApe(const pIndApe: Integer);
begin
  FIndApe := pIndApe;
end;

function T120IPD.GetObsIpd: string;
begin
  Result := FObsIpd;
end;

procedure T120IPD.SetObsIpd(const pObsIpd: string);
begin
  FObsIpd := pObsIpd;
end;

function T120IPD.GetSeqIsp: Integer;
begin
  Result := FSeqIsp;
end;

procedure T120IPD.SetSeqIsp(const pSeqIsp: Integer);
begin
  FSeqIsp := pSeqIsp;
end;

function T120IPD.GetEmpOcp: Integer;
begin
  Result := FEmpOcp;
end;

procedure T120IPD.SetEmpOcp(const pEmpOcp: Integer);
begin
  FEmpOcp := pEmpOcp;
end;

function T120IPD.GetVlrBpf: Double;
begin
  Result := FVlrBpf;
end;

procedure T120IPD.SetVlrBpf(const pVlrBpf: Double);
begin
  FVlrBpf := pVlrBpf;
end;

function T120IPD.GetPerPif: Double;
begin
  Result := FPerPif;
end;

procedure T120IPD.SetPerPif(const pPerPif: Double);
begin
  FPerPif := pPerPif;
end;

function T120IPD.GetVlrPif: Double;
begin
  Result := FVlrPif;
end;

procedure T120IPD.SetVlrPif(const pVlrPif: Double);
begin
  FVlrPif := pVlrPif;
end;

function T120IPD.GetVlrBcf: Double;
begin
  Result := FVlrBcf;
end;

procedure T120IPD.SetVlrBcf(const pVlrBcf: Double);
begin
  FVlrBcf := pVlrBcf;
end;

function T120IPD.GetPerCff: Double;
begin
  Result := FPerCff;
end;

procedure T120IPD.SetPerCff(const pPerCff: Double);
begin
  FPerCff := pPerCff;
end;

function T120IPD.GetVlrCff: Double;
begin
  Result := FVlrCff;
end;

procedure T120IPD.SetVlrCff(const pVlrCff: Double);
begin
  FVlrCff := pVlrCff;
end;

function T120IPD.GetPerDs5: Double;
begin
  Result := FPerDs5;
end;

procedure T120IPD.SetPerDs5(const pPerDs5: Double);
begin
  FPerDs5 := pPerDs5;
end;

function T120IPD.GetVlrDs5: Double;
begin
  Result := FVlrDs5;
end;

procedure T120IPD.SetVlrDs5(const pVlrDs5: Double);
begin
  FVlrDs5 := pVlrDs5;
end;

function T120IPD.GetAgrNec: string;
begin
  Result := FAgrNec;
end;

procedure T120IPD.SetAgrNec(const pAgrNec: string);
begin
  FAgrNec := pAgrNec;
end;

function T120IPD.GetAgrPai: string;
begin
  Result := FAgrPai;
end;

procedure T120IPD.SetAgrPai(const pAgrPai: string);
begin
  FAgrPai := pAgrPai;
end;

function T120IPD.GetOriRes: Char;
begin
  Result := FOriRes;
end;

procedure T120IPD.SetOriRes(const pOriRes: Char);
begin
  FOriRes := pOriRes;
end;

function T120IPD.GetQtdBpf: Double;
begin
  Result := FQtdBpf;
end;

procedure T120IPD.SetQtdBpf(const pQtdBpf: Double);
begin
  FQtdBpf := pQtdBpf;
end;

function T120IPD.GetAliPif: Double;
begin
  Result := FAliPif;
end;

procedure T120IPD.SetAliPif(const pAliPif: Double);
begin
  FAliPif := pAliPif;
end;

function T120IPD.GetQtdBcf: Double;
begin
  Result := FQtdBcf;
end;

procedure T120IPD.SetQtdBcf(const pQtdBcf: Double);
begin
  FQtdBcf := pQtdBcf;
end;

function T120IPD.GetAliCff: Double;
begin
  Result := FAliCff;
end;

procedure T120IPD.SetAliCff(const pAliCff: Double);
begin
  FAliCff := pAliCff;
end;

function T120IPD.GetQtdBip: Double;
begin
  Result := FQtdBip;
end;

procedure T120IPD.SetQtdBip(const pQtdBip: Double);
begin
  FQtdBip := pQtdBip;
end;

function T120IPD.GetAliIpi: Double;
begin
  Result := FAliIpi;
end;

procedure T120IPD.SetAliIpi(const pAliIpi: Double);
begin
  FAliIpi := pAliIpi;
end;

function T120IPD.GetIndIpm: Char;
begin
  Result := FIndIpm;
end;

procedure T120IPD.SetIndIpm(const pIndIpm: Char);
begin
  FIndIpm := pIndIpm;
end;

function T120IPD.GetFilRem: Integer;
begin
  Result := FFilRem;
end;

procedure T120IPD.SetFilRem(const pFilRem: Integer);
begin
  FFilRem := pFilRem;
end;

function T120IPD.GetSnfRem: string;
begin
  Result := FSnfRem;
end;

procedure T120IPD.SetSnfRem(const pSnfRem: string);
begin
  FSnfRem := pSnfRem;
end;

function T120IPD.GetNfvRem: Integer;
begin
  Result := FNfvRem;
end;

procedure T120IPD.SetNfvRem(const pNfvRem: Integer);
begin
  FNfvRem := pNfvRem;
end;

function T120IPD.GetIpvRem: Integer;
begin
  Result := FIpvRem;
end;

procedure T120IPD.SetIpvRem(const pIpvRem: Integer);
begin
  FIpvRem := pIpvRem;
end;

function T120IPD.GetCodCnv: Integer;
begin
  Result := FCodCnv;
end;

procedure T120IPD.SetCodCnv(const pCodCnv: Integer);
begin
  FCodCnv := pCodCnv;
end;

function T120IPD.GetCodRep: Integer;
begin
  Result := FCodRep;
end;

procedure T120IPD.SetCodRep(const pCodRep: Integer);
begin
  FCodRep := pCodRep;
end;

function T120IPD.GetProMon: Char;
begin
  Result := FProMon;
end;

procedure T120IPD.SetProMon(const pProMon: Char);
begin
  FProMon := pProMon;
end;

function T120IPD.GetProEnt: Char;
begin
  Result := FProEnt;
end;

procedure T120IPD.SetProEnt(const pProEnt: Char);
begin
  FProEnt := pProEnt;
end;

function T120IPD.GetPerMgc: Double;
begin
  Result := FPerMgc;
end;

procedure T120IPD.SetPerMgc(const pPerMgc: Double);
begin
  FPerMgc := pPerMgc;
end;

function T120IPD.GetVarSer: Char;
begin
  Result := FVarSer;
end;

procedure T120IPD.SetVarSer(const pVarSer: Char);
begin
  FVarSer := pVarSer;
end;

function T120IPD.GetRetMat: Char;
begin
  Result := FRetMat;
end;

procedure T120IPD.SetRetMat(const pRetMat: Char);
begin
  FRetMat := pRetMat;
end;

function T120IPD.GetSenApr: string;
begin
  Result := FSenApr;
end;

procedure T120IPD.SetSenApr(const pSenApr: string);
begin
  FSenApr := pSenApr;
end;

function T120IPD.GetUsuApr: Integer;
begin
  Result := FUsuApr;
end;

procedure T120IPD.SetUsuApr(const pUsuApr: Integer);
begin
  FUsuApr := pUsuApr;
end;

function T120IPD.GetDatApr: TDate;
begin
  Result := FDatApr;
end;

procedure T120IPD.SetDatApr(const pDatApr: TDate);
begin
  FDatApr := pDatApr;
end;

function T120IPD.GetHorApr: Integer;
begin
  Result := FHorApr;
end;

procedure T120IPD.SetHorApr(const pHorApr: Integer);
begin
  FHorApr := pHorApr;
end;

function T120IPD.GetTipCur: Integer;
begin
  Result := FTipCur;
end;

procedure T120IPD.SetTipCur(const pTipCur: Integer);
begin
  FTipCur := pTipCur;
end;

function T120IPD.GetCodFin: Integer;
begin
  Result := FCodFin;
end;

procedure T120IPD.SetCodFin(const pCodFin: Integer);
begin
  FCodFin := pCodFin;
end;

function T120IPD.GetUSU_DEPCIB: string;
begin
  Result := FUSU_DEPCIB;
end;

procedure T120IPD.SetUSU_DEPCIB(const pUSU_DEPCIB: string);
begin
  FUSU_DEPCIB := pUSU_DEPCIB;
end;

function T120IPD.GetUSU_UsuAut: Integer;
begin
  Result := FUSU_UsuAut;
end;

procedure T120IPD.SetUSU_UsuAut(const pUSU_UsuAut: Integer);
begin
  FUSU_UsuAut := pUSU_UsuAut;
end;

function T120IPD.GetUSU_PreAut: Double;
begin
  Result := FUSU_PreAut;
end;

procedure T120IPD.SetUSU_PreAut(const pUSU_PreAut: Double);
begin
  FUSU_PreAut := pUSU_PreAut;
end;

function T120IPD.GetUSU_EmiRel: Char;
begin
  Result := FUSU_EmiRel;
end;

procedure T120IPD.SetUSU_EmiRel(const pUSU_EmiRel: Char);
begin
  FUSU_EmiRel := pUSU_EmiRel;
end;

function T120IPD.GetUSU_OriMer: Char;
begin
  Result := FUSU_OriMer;
end;

procedure T120IPD.SetUSU_OriMer(const pUSU_OriMer: Char);
begin
  FUSU_OriMer := pUSU_OriMer;
end;

function T120IPD.GetUSU_QtdExa: Char;
begin
  Result := FUSU_QtdExa;
end;

procedure T120IPD.SetUSU_QtdExa(const pUSU_QtdExa: Char);
begin
  FUSU_QtdExa := pUSU_QtdExa;
end;

function T120IPD.GetCodEmpOLD: Integer;
begin
  Result := FCodEmpOLD;
end;

procedure T120IPD.SetCodEmpOLD(const pCodEmp: Integer);
begin
  FCodEmpOLD := pCodEmp;
end;

function T120IPD.GetCodFilOLD: Integer;
begin
  Result := FCodFilOLD;
end;

procedure T120IPD.SetCodFilOLD(const pCodFil: Integer);
begin
  FCodFilOLD := pCodFil;
end;

function T120IPD.GetNumPedOLD: Integer;
begin
  Result := FNumPedOLD;
end;

procedure T120IPD.SetNumPedOLD(const pNumPed: Integer);
begin
  FNumPedOLD := pNumPed;
end;

function T120IPD.GetSeqIpdOLD: Integer;
begin
  Result := FSeqIpdOLD;
end;

procedure T120IPD.SetSeqIpdOLD(const pSeqIpd: Integer);
begin
  FSeqIpdOLD := pSeqIpd;
end;

function T120IPD.GetTnsProOLD: string;
begin
  Result := FTnsProOLD;
end;

procedure T120IPD.SetTnsProOLD(const pTnsPro: string);
begin
  FTnsProOLD := pTnsPro;
end;

function T120IPD.GetPedCliOLD: string;
begin
  Result := FPedCliOLD;
end;

procedure T120IPD.SetPedCliOLD(const pPedCli: string);
begin
  FPedCliOLD := pPedCli;
end;

function T120IPD.GetSeqPclOLD: string;
begin
  Result := FSeqPclOLD;
end;

procedure T120IPD.SetSeqPclOLD(const pSeqPcl: string);
begin
  FSeqPclOLD := pSeqPcl;
end;

function T120IPD.GetPedPrvOLD: Char;
begin
  Result := FPedPrvOLD;
end;

procedure T120IPD.SetPedPrvOLD(const pPedPrv: Char);
begin
  FPedPrvOLD := pPedPrv;
end;

function T120IPD.GetCodProOLD: string;
begin
  Result := FCodProOLD;
end;

procedure T120IPD.SetCodProOLD(const pCodPro: string);
begin
  FCodProOLD := pCodPro;
end;

function T120IPD.GetCodDerOLD: string;
begin
  Result := FCodDerOLD;
end;

procedure T120IPD.SetCodDerOLD(const pCodDer: string);
begin
  FCodDerOLD := pCodDer;
end;

function T120IPD.GetCplIpdOLD: string;
begin
  Result := FCplIpdOLD;
end;

procedure T120IPD.SetCplIpdOLD(const pCplIpd: string);
begin
  FCplIpdOLD := pCplIpd;
end;

function T120IPD.GetCodFamOLD: string;
begin
  Result := FCodFamOLD;
end;

procedure T120IPD.SetCodFamOLD(const pCodFam: string);
begin
  FCodFamOLD := pCodFam;
end;

function T120IPD.GetCodAgrOLD: Integer;
begin
  Result := FCodAgrOLD;
end;

procedure T120IPD.SetCodAgrOLD(const pCodAgr: Integer);
begin
  FCodAgrOLD := pCodAgr;
end;

function T120IPD.GetCodTicOLD: string;
begin
  Result := FCodTicOLD;
end;

procedure T120IPD.SetCodTicOLD(const pCodTic: string);
begin
  FCodTicOLD := pCodTic;
end;

function T120IPD.GetCodTrdOLD: string;
begin
  Result := FCodTrdOLD;
end;

procedure T120IPD.SetCodTrdOLD(const pCodTrd: string);
begin
  FCodTrdOLD := pCodTrd;
end;

function T120IPD.GetCodTstOLD: string;
begin
  Result := FCodTstOLD;
end;

procedure T120IPD.SetCodTstOLD(const pCodTst: string);
begin
  FCodTstOLD := pCodTst;
end;

function T120IPD.GetCodStpOLD: string;
begin
  Result := FCodStpOLD;
end;

procedure T120IPD.SetCodStpOLD(const pCodStp: string);
begin
  FCodStpOLD := pCodStp;
end;

function T120IPD.GetCodStcOLD: string;
begin
  Result := FCodStcOLD;
end;

procedure T120IPD.SetCodStcOLD(const pCodStc: string);
begin
  FCodStcOLD := pCodStc;
end;

function T120IPD.GetCodDepOLD: string;
begin
  Result := FCodDepOLD;
end;

procedure T120IPD.SetCodDepOLD(const pCodDep: string);
begin
  FCodDepOLD := pCodDep;
end;

function T120IPD.GetCodLotOLD: string;
begin
  Result := FCodLotOLD;
end;

procedure T120IPD.SetCodLotOLD(const pCodLot: string);
begin
  FCodLotOLD := pCodLot;
end;

function T120IPD.GetResEstOLD: Char;
begin
  Result := FResEstOLD;
end;

procedure T120IPD.SetResEstOLD(const pResEst: Char);
begin
  FResEstOLD := pResEst;
end;

function T120IPD.GetQtdPedOLD: Double;
begin
  Result := FQtdPedOLD;
end;

procedure T120IPD.SetQtdPedOLD(const pQtdPed: Double);
begin
  FQtdPedOLD := pQtdPed;
end;

function T120IPD.GetQtdAenOLD: Double;
begin
  Result := FQtdAenOLD;
end;

procedure T120IPD.SetQtdAenOLD(const pQtdAen: Double);
begin
  FQtdAenOLD := pQtdAen;
end;

function T120IPD.GetQtdPocOLD: Double;
begin
  Result := FQtdPocOLD;
end;

procedure T120IPD.SetQtdPocOLD(const pQtdPoc: Double);
begin
  FQtdPocOLD := pQtdPoc;
end;

function T120IPD.GetQtdFatOLD: Double;
begin
  Result := FQtdFatOLD;
end;

procedure T120IPD.SetQtdFatOLD(const pQtdFat: Double);
begin
  FQtdFatOLD := pQtdFat;
end;

function T120IPD.GetQtdCanOLD: Double;
begin
  Result := FQtdCanOLD;
end;

procedure T120IPD.SetQtdCanOLD(const pQtdCan: Double);
begin
  FQtdCanOLD := pQtdCan;
end;

function T120IPD.GetQtdAbeOLD: Double;
begin
  Result := FQtdAbeOLD;
end;

procedure T120IPD.SetQtdAbeOLD(const pQtdAbe: Double);
begin
  FQtdAbeOLD := pQtdAbe;
end;

function T120IPD.GetQtdRaeOLD: Double;
begin
  Result := FQtdRaeOLD;
end;

procedure T120IPD.SetQtdRaeOLD(const pQtdRae: Double);
begin
  FQtdRaeOLD := pQtdRae;
end;

function T120IPD.GetQtdNlpOLD: Double;
begin
  Result := FQtdNlpOLD;
end;

procedure T120IPD.SetQtdNlpOLD(const pQtdNlp: Double);
begin
  FQtdNlpOLD := pQtdNlp;
end;

function T120IPD.GetQtdResOLD: Double;
begin
  Result := FQtdResOLD;
end;

procedure T120IPD.SetQtdResOLD(const pQtdRes: Double);
begin
  FQtdResOLD := pQtdRes;
end;

function T120IPD.GetUniMedOLD: string;
begin
  Result := FUniMedOLD;
end;

procedure T120IPD.SetUniMedOLD(const pUniMed: string);
begin
  FUniMedOLD := pUniMed;
end;

function T120IPD.GetCodMcpOLD: string;
begin
  Result := FCodMcpOLD;
end;

procedure T120IPD.SetCodMcpOLD(const pCodMcp: string);
begin
  FCodMcpOLD := pCodMcp;
end;

function T120IPD.GetDatMfpOLD: TDate;
begin
  Result := FDatMfpOLD;
end;

procedure T120IPD.SetDatMfpOLD(const pDatMfp: TDate);
begin
  FDatMfpOLD := pDatMfp;
end;

function T120IPD.GetCotMfpOLD: Double;
begin
  Result := FCotMfpOLD;
end;

procedure T120IPD.SetCotMfpOLD(const pCotMfp: Double);
begin
  FCotMfpOLD := pCotMfp;
end;

function T120IPD.GetDatMoeOLD: TDate;
begin
  Result := FDatMoeOLD;
end;

procedure T120IPD.SetDatMoeOLD(const pDatMoe: TDate);
begin
  FDatMoeOLD := pDatMoe;
end;

function T120IPD.GetCotMoeOLD: Double;
begin
  Result := FCotMoeOLD;
end;

procedure T120IPD.SetCotMoeOLD(const pCotMoe: Double);
begin
  FCotMoeOLD := pCotMoe;
end;

function T120IPD.GetFecMoeOLD: Char;
begin
  Result := FFecMoeOLD;
end;

procedure T120IPD.SetFecMoeOLD(const pFecMoe: Char);
begin
  FFecMoeOLD := pFecMoe;
end;

function T120IPD.GetCodTprOLD: string;
begin
  Result := FCodTprOLD;
end;

procedure T120IPD.SetCodTprOLD(const pCodTpr: string);
begin
  FCodTprOLD := pCodTpr;
end;

function T120IPD.GetPreUniOLD: Double;
begin
  Result := FPreUniOLD;
end;

procedure T120IPD.SetPreUniOLD(const pPreUni: Double);
begin
  FPreUniOLD := pPreUni;
end;

function T120IPD.GetCodMoeOLD: string;
begin
  Result := FCodMoeOLD;
end;

procedure T120IPD.SetCodMoeOLD(const pCodMoe: string);
begin
  FCodMoeOLD := pCodMoe;
end;

function T120IPD.GetPreFixOLD: Char;
begin
  Result := FPreFixOLD;
end;

procedure T120IPD.SetPreFixOLD(const pPreFix: Char);
begin
  FPreFixOLD := pPreFix;
end;

function T120IPD.GetPerDscOLD: Double;
begin
  Result := FPerDscOLD;
end;

procedure T120IPD.SetPerDscOLD(const pPerDsc: Double);
begin
  FPerDscOLD := pPerDsc;
end;

function T120IPD.GetPerOfeOLD: Double;
begin
  Result := FPerOfeOLD;
end;

procedure T120IPD.SetPerOfeOLD(const pPerOfe: Double);
begin
  FPerOfeOLD := pPerOfe;
end;

function T120IPD.GetPerAcrOLD: Double;
begin
  Result := FPerAcrOLD;
end;

procedure T120IPD.SetPerAcrOLD(const pPerAcr: Double);
begin
  FPerAcrOLD := pPerAcr;
end;

function T120IPD.GetPerIpiOLD: Double;
begin
  Result := FPerIpiOLD;
end;

procedure T120IPD.SetPerIpiOLD(const pPerIpi: Double);
begin
  FPerIpiOLD := pPerIpi;
end;

function T120IPD.GetPerIcmOLD: Double;
begin
  Result := FPerIcmOLD;
end;

procedure T120IPD.SetPerIcmOLD(const pPerIcm: Double);
begin
  FPerIcmOLD := pPerIcm;
end;

function T120IPD.GetPerComOLD: Double;
begin
  Result := FPerComOLD;
end;

procedure T120IPD.SetPerComOLD(const pPerCom: Double);
begin
  FPerComOLD := pPerCom;
end;

function T120IPD.GetDatEntOLD: TDate;
begin
  Result := FDatEntOLD;
end;

procedure T120IPD.SetDatEntOLD(const pDatEnt: TDate);
begin
  FDatEntOLD := pDatEnt;
end;

function T120IPD.GetDatAneOLD: TDate;
begin
  Result := FDatAneOLD;
end;

procedure T120IPD.SetDatAneOLD(const pDatAne: TDate);
begin
  FDatAneOLD := pDatAne;
end;

function T120IPD.GetDatPocOLD: TDate;
begin
  Result := FDatPocOLD;
end;

procedure T120IPD.SetDatPocOLD(const pDatPoc: TDate);
begin
  FDatPocOLD := pDatPoc;
end;

function T120IPD.GetCodPvpOLD: string;
begin
  Result := FCodPvpOLD;
end;

procedure T120IPD.SetCodPvpOLD(const pCodPvp: string);
begin
  FCodPvpOLD := pCodPvp;
end;

function T120IPD.GetNumPrjOLD: Integer;
begin
  Result := FNumPrjOLD;
end;

procedure T120IPD.SetNumPrjOLD(const pNumPrj: Integer);
begin
  FNumPrjOLD := pNumPrj;
end;

function T120IPD.GetCodFpjOLD: Integer;
begin
  Result := FCodFpjOLD;
end;

procedure T120IPD.SetCodFpjOLD(const pCodFpj: Integer);
begin
  FCodFpjOLD := pCodFpj;
end;

function T120IPD.GetCtaFinOLD: Integer;
begin
  Result := FCtaFinOLD;
end;

procedure T120IPD.SetCtaFinOLD(const pCtaFin: Integer);
begin
  FCtaFinOLD := pCtaFin;
end;

function T120IPD.GetCtaRedOLD: Integer;
begin
  Result := FCtaRedOLD;
end;

procedure T120IPD.SetCtaRedOLD(const pCtaRed: Integer);
begin
  FCtaRedOLD := pCtaRed;
end;

function T120IPD.GetCodCcuOLD: string;
begin
  Result := FCodCcuOLD;
end;

procedure T120IPD.SetCodCcuOLD(const pCodCcu: string);
begin
  FCodCcuOLD := pCodCcu;
end;

function T120IPD.GetVlrFreOLD: Double;
begin
  Result := FVlrFreOLD;
end;

procedure T120IPD.SetVlrFreOLD(const pVlrFre: Double);
begin
  FVlrFreOLD := pVlrFre;
end;

function T120IPD.GetVlrSegOLD: Double;
begin
  Result := FVlrSegOLD;
end;

procedure T120IPD.SetVlrSegOLD(const pVlrSeg: Double);
begin
  FVlrSegOLD := pVlrSeg;
end;

function T120IPD.GetVlrEmbOLD: Double;
begin
  Result := FVlrEmbOLD;
end;

procedure T120IPD.SetVlrEmbOLD(const pVlrEmb: Double);
begin
  FVlrEmbOLD := pVlrEmb;
end;

function T120IPD.GetVlrEncOLD: Double;
begin
  Result := FVlrEncOLD;
end;

procedure T120IPD.SetVlrEncOLD(const pVlrEnc: Double);
begin
  FVlrEncOLD := pVlrEnc;
end;

function T120IPD.GetVlrOutOLD: Double;
begin
  Result := FVlrOutOLD;
end;

procedure T120IPD.SetVlrOutOLD(const pVlrOut: Double);
begin
  FVlrOutOLD := pVlrOut;
end;

function T120IPD.GetVlrDarOLD: Double;
begin
  Result := FVlrDarOLD;
end;

procedure T120IPD.SetVlrDarOLD(const pVlrDar: Double);
begin
  FVlrDarOLD := pVlrDar;
end;

function T120IPD.GetVlrFrdOLD: Double;
begin
  Result := FVlrFrdOLD;
end;

procedure T120IPD.SetVlrFrdOLD(const pVlrFrd: Double);
begin
  FVlrFrdOLD := pVlrFrd;
end;

function T120IPD.GetVlrOudOLD: Double;
begin
  Result := FVlrOudOLD;
end;

procedure T120IPD.SetVlrOudOLD(const pVlrOud: Double);
begin
  FVlrOudOLD := pVlrOud;
end;

function T120IPD.GetVlrBruOLD: Double;
begin
  Result := FVlrBruOLD;
end;

procedure T120IPD.SetVlrBruOLD(const pVlrBru: Double);
begin
  FVlrBruOLD := pVlrBru;
end;

function T120IPD.GetVlrDscOLD: Double;
begin
  Result := FVlrDscOLD;
end;

procedure T120IPD.SetVlrDscOLD(const pVlrDsc: Double);
begin
  FVlrDscOLD := pVlrDsc;
end;

function T120IPD.GetVlrDs1OLD: Double;
begin
  Result := FVlrDs1OLD;
end;

procedure T120IPD.SetVlrDs1OLD(const pVlrDs1: Double);
begin
  FVlrDs1OLD := pVlrDs1;
end;

function T120IPD.GetVlrDs2OLD: Double;
begin
  Result := FVlrDs2OLD;
end;

procedure T120IPD.SetVlrDs2OLD(const pVlrDs2: Double);
begin
  FVlrDs2OLD := pVlrDs2;
end;

function T120IPD.GetVlrDs3OLD: Double;
begin
  Result := FVlrDs3OLD;
end;

procedure T120IPD.SetVlrDs3OLD(const pVlrDs3: Double);
begin
  FVlrDs3OLD := pVlrDs3;
end;

function T120IPD.GetVlrDs4OLD: Double;
begin
  Result := FVlrDs4OLD;
end;

procedure T120IPD.SetVlrDs4OLD(const pVlrDs4: Double);
begin
  FVlrDs4OLD := pVlrDs4;
end;

function T120IPD.GetVlrOfeOLD: Double;
begin
  Result := FVlrOfeOLD;
end;

procedure T120IPD.SetVlrOfeOLD(const pVlrOfe: Double);
begin
  FVlrOfeOLD := pVlrOfe;
end;

function T120IPD.GetVlrDzfOLD: Double;
begin
  Result := FVlrDzfOLD;
end;

procedure T120IPD.SetVlrDzfOLD(const pVlrDzf: Double);
begin
  FVlrDzfOLD := pVlrDzf;
end;

function T120IPD.GetVlrBipOLD: Double;
begin
  Result := FVlrBipOLD;
end;

procedure T120IPD.SetVlrBipOLD(const pVlrBip: Double);
begin
  FVlrBipOLD := pVlrBip;
end;

function T120IPD.GetVlrIpiOLD: Double;
begin
  Result := FVlrIpiOLD;
end;

procedure T120IPD.SetVlrIpiOLD(const pVlrIpi: Double);
begin
  FVlrIpiOLD := pVlrIpi;
end;

function T120IPD.GetVlrBicOLD: Double;
begin
  Result := FVlrBicOLD;
end;

procedure T120IPD.SetVlrBicOLD(const pVlrBic: Double);
begin
  FVlrBicOLD := pVlrBic;
end;

function T120IPD.GetVlrIcmOLD: Double;
begin
  Result := FVlrIcmOLD;
end;

procedure T120IPD.SetVlrIcmOLD(const pVlrIcm: Double);
begin
  FVlrIcmOLD := pVlrIcm;
end;

function T120IPD.GetVlrBsiOLD: Double;
begin
  Result := FVlrBsiOLD;
end;

procedure T120IPD.SetVlrBsiOLD(const pVlrBsi: Double);
begin
  FVlrBsiOLD := pVlrBsi;
end;

function T120IPD.GetVlrIcsOLD: Double;
begin
  Result := FVlrIcsOLD;
end;

procedure T120IPD.SetVlrIcsOLD(const pVlrIcs: Double);
begin
  FVlrIcsOLD := pVlrIcs;
end;

function T120IPD.GetVlrBspOLD: Double;
begin
  Result := FVlrBspOLD;
end;

procedure T120IPD.SetVlrBspOLD(const pVlrBsp: Double);
begin
  FVlrBspOLD := pVlrBsp;
end;

function T120IPD.GetVlrStpOLD: Double;
begin
  Result := FVlrStpOLD;
end;

procedure T120IPD.SetVlrStpOLD(const pVlrStp: Double);
begin
  FVlrStpOLD := pVlrStp;
end;

function T120IPD.GetVlrBscOLD: Double;
begin
  Result := FVlrBscOLD;
end;

procedure T120IPD.SetVlrBscOLD(const pVlrBsc: Double);
begin
  FVlrBscOLD := pVlrBsc;
end;

function T120IPD.GetVlrStcOLD: Double;
begin
  Result := FVlrStcOLD;
end;

procedure T120IPD.SetVlrStcOLD(const pVlrStc: Double);
begin
  FVlrStcOLD := pVlrStc;
end;

function T120IPD.GetVlrBcoOLD: Double;
begin
  Result := FVlrBcoOLD;
end;

procedure T120IPD.SetVlrBcoOLD(const pVlrBco: Double);
begin
  FVlrBcoOLD := pVlrBco;
end;

function T120IPD.GetVlrComOLD: Double;
begin
  Result := FVlrComOLD;
end;

procedure T120IPD.SetVlrComOLD(const pVlrCom: Double);
begin
  FVlrComOLD := pVlrCom;
end;

function T120IPD.GetVlrLprOLD: Double;
begin
  Result := FVlrLprOLD;
end;

procedure T120IPD.SetVlrLprOLD(const pVlrLpr: Double);
begin
  FVlrLprOLD := pVlrLpr;
end;

function T120IPD.GetVlrLouOLD: Double;
begin
  Result := FVlrLouOLD;
end;

procedure T120IPD.SetVlrLouOLD(const pVlrLou: Double);
begin
  FVlrLouOLD := pVlrLou;
end;

function T120IPD.GetVlrLiqOLD: Double;
begin
  Result := FVlrLiqOLD;
end;

procedure T120IPD.SetVlrLiqOLD(const pVlrLiq: Double);
begin
  FVlrLiqOLD := pVlrLiq;
end;

function T120IPD.GetVlrFinOLD: Double;
begin
  Result := FVlrFinOLD;
end;

procedure T120IPD.SetVlrFinOLD(const pVlrFin: Double);
begin
  FVlrFinOLD := pVlrFin;
end;

function T120IPD.GetSitIpdOLD: Integer;
begin
  Result := FSitIpdOLD;
end;

procedure T120IPD.SetSitIpdOLD(const pSitIpd: Integer);
begin
  FSitIpdOLD := pSitIpd;
end;

function T120IPD.GetCodMotOLD: Integer;
begin
  Result := FCodMotOLD;
end;

procedure T120IPD.SetCodMotOLD(const pCodMot: Integer);
begin
  FCodMotOLD := pCodMot;
end;

function T120IPD.GetObsMotOLD: string;
begin
  Result := FObsMotOLD;
end;

procedure T120IPD.SetObsMotOLD(const pObsMot: string);
begin
  FObsMotOLD := pObsMot;
end;

function T120IPD.GetGerNecOLD: Integer;
begin
  Result := FGerNecOLD;
end;

procedure T120IPD.SetGerNecOLD(const pGerNec: Integer);
begin
  FGerNecOLD := pGerNec;
end;

function T120IPD.GetGerCgaOLD: Char;
begin
  Result := FGerCgaOLD;
end;

procedure T120IPD.SetGerCgaOLD(const pGerCga: Char);
begin
  FGerCgaOLD := pGerCga;
end;

function T120IPD.GetResManOLD: Char;
begin
  Result := FResManOLD;
end;

procedure T120IPD.SetResManOLD(const pResMan: Char);
begin
  FResManOLD := pResMan;
end;

function T120IPD.GetIndAedOLD: Char;
begin
  Result := FIndAedOLD;
end;

procedure T120IPD.SetIndAedOLD(const pIndAed: Char);
begin
  FIndAedOLD := pIndAed;
end;

function T120IPD.GetNumCtrOLD: Integer;
begin
  Result := FNumCtrOLD;
end;

procedure T120IPD.SetNumCtrOLD(const pNumCtr: Integer);
begin
  FNumCtrOLD := pNumCtr;
end;

function T120IPD.GetDatCptOLD: TDate;
begin
  Result := FDatCptOLD;
end;

procedure T120IPD.SetDatCptOLD(const pDatCpt: TDate);
begin
  FDatCptOLD := pDatCpt;
end;

function T120IPD.GetSeqCvpOLD: Integer;
begin
  Result := FSeqCvpOLD;
end;

procedure T120IPD.SetSeqCvpOLD(const pSeqCvp: Integer);
begin
  FSeqCvpOLD := pSeqCvp;
end;

function T120IPD.GetUsuGerOLD: Integer;
begin
  Result := FUsuGerOLD;
end;

procedure T120IPD.SetUsuGerOLD(const pUsuGer: Integer);
begin
  FUsuGerOLD := pUsuGer;
end;

function T120IPD.GetDatGerOLD: TDate;
begin
  Result := FDatGerOLD;
end;

procedure T120IPD.SetDatGerOLD(const pDatGer: TDate);
begin
  FDatGerOLD := pDatGer;
end;

function T120IPD.GetHorGerOLD: Integer;
begin
  Result := FHorGerOLD;
end;

procedure T120IPD.SetHorGerOLD(const pHorGer: Integer);
begin
  FHorGerOLD := pHorGer;
end;

function T120IPD.GetQtdPpfOLD: Double;
begin
  Result := FQtdPpfOLD;
end;

procedure T120IPD.SetQtdPpfOLD(const pQtdPpf: Double);
begin
  FQtdPpfOLD := pQtdPpf;
end;

function T120IPD.GetCmpKitOLD: Char;
begin
  Result := FCmpKitOLD;
end;

procedure T120IPD.SetCmpKitOLD(const pCmpKit: Char);
begin
  FCmpKitOLD := pCmpKit;
end;

function T120IPD.GetFilOcpOLD: Integer;
begin
  Result := FFilOcpOLD;
end;

procedure T120IPD.SetFilOcpOLD(const pFilOcp: Integer);
begin
  FFilOcpOLD := pFilOcp;
end;

function T120IPD.GetNumOcpOLD: Integer;
begin
  Result := FNumOcpOLD;
end;

procedure T120IPD.SetNumOcpOLD(const pNumOcp: Integer);
begin
  FNumOcpOLD := pNumOcp;
end;

function T120IPD.GetSeqIpoOLD: Integer;
begin
  Result := FSeqIpoOLD;
end;

procedure T120IPD.SetSeqIpoOLD(const pSeqIpo: Integer);
begin
  FSeqIpoOLD := pSeqIpo;
end;

function T120IPD.GetUniVenOLD: string;
begin
  Result := FUniVenOLD;
end;

procedure T120IPD.SetUniVenOLD(const pUniVen: string);
begin
  FUniVenOLD := pUniVen;
end;

function T120IPD.GetQtdVenOLD: Double;
begin
  Result := FQtdVenOLD;
end;

procedure T120IPD.SetQtdVenOLD(const pQtdVen: Double);
begin
  FQtdVenOLD := pQtdVen;
end;

function T120IPD.GetPreVenOLD: Double;
begin
  Result := FPreVenOLD;
end;

procedure T120IPD.SetPreVenOLD(const pPreVen: Double);
begin
  FPreVenOLD := pPreVen;
end;

function T120IPD.GetPreBruOLD: Double;
begin
  Result := FPreBruOLD;
end;

procedure T120IPD.SetPreBruOLD(const pPreBru: Double);
begin
  FPreBruOLD := pPreBru;
end;

function T120IPD.GetFilCtrOLD: Integer;
begin
  Result := FFilCtrOLD;
end;

procedure T120IPD.SetFilCtrOLD(const pFilCtr: Integer);
begin
  FFilCtrOLD := pFilCtr;
end;

function T120IPD.GetCtrCvsOLD: Integer;
begin
  Result := FCtrCvsOLD;
end;

procedure T120IPD.SetCtrCvsOLD(const pCtrCvs: Integer);
begin
  FCtrCvsOLD := pCtrCvs;
end;

function T120IPD.GetCptCvsOLD: TDate;
begin
  Result := FCptCvsOLD;
end;

procedure T120IPD.SetCptCvsOLD(const pCptCvs: TDate);
begin
  FCptCvsOLD := pCptCvs;
end;

function T120IPD.GetSeqCvsOLD: Integer;
begin
  Result := FSeqCvsOLD;
end;

procedure T120IPD.SetSeqCvsOLD(const pSeqCvs: Integer);
begin
  FSeqCvsOLD := pSeqCvs;
end;

function T120IPD.GetCodAvcOLD: Integer;
begin
  Result := FCodAvcOLD;
end;

procedure T120IPD.SetCodAvcOLD(const pCodAvc: Integer);
begin
  FCodAvcOLD := pCodAvc;
end;

function T120IPD.GetCodFxaOLD: string;
begin
  Result := FCodFxaOLD;
end;

procedure T120IPD.SetCodFxaOLD(const pCodFxa: string);
begin
  FCodFxaOLD := pCodFxa;
end;

function T120IPD.GetCodPgrOLD: string;
begin
  Result := FCodPgrOLD;
end;

procedure T120IPD.SetCodPgrOLD(const pCodPgr: string);
begin
  FCodPgrOLD := pCodPgr;
end;

function T120IPD.GetIdxGrdOLD: Integer;
begin
  Result := FIdxGrdOLD;
end;

procedure T120IPD.SetIdxGrdOLD(const pIdxGrd: Integer);
begin
  FIdxGrdOLD := pIdxGrd;
end;

function T120IPD.GetCodMarOLD: string;
begin
  Result := FCodMarOLD;
end;

procedure T120IPD.SetCodMarOLD(const pCodMar: string);
begin
  FCodMarOLD := pCodMar;
end;

function T120IPD.GetCodClcOLD: string;
begin
  Result := FCodClcOLD;
end;

procedure T120IPD.SetCodClcOLD(const pCodClc: string);
begin
  FCodClcOLD := pCodClc;
end;

function T120IPD.GetPerDs1OLD: Double;
begin
  Result := FPerDs1OLD;
end;

procedure T120IPD.SetPerDs1OLD(const pPerDs1: Double);
begin
  FPerDs1OLD := pPerDs1;
end;

function T120IPD.GetPerDs2OLD: Double;
begin
  Result := FPerDs2OLD;
end;

procedure T120IPD.SetPerDs2OLD(const pPerDs2: Double);
begin
  FPerDs2OLD := pPerDs2;
end;

function T120IPD.GetPerDs3OLD: Double;
begin
  Result := FPerDs3OLD;
end;

procedure T120IPD.SetPerDs3OLD(const pPerDs3: Double);
begin
  FPerDs3OLD := pPerDs3;
end;

function T120IPD.GetPerDs4OLD: Double;
begin
  Result := FPerDs4OLD;
end;

procedure T120IPD.SetPerDs4OLD(const pPerDs4: Double);
begin
  FPerDs4OLD := pPerDs4;
end;

function T120IPD.GetFilPrdOLD: Integer;
begin
  Result := FFilPrdOLD;
end;

procedure T120IPD.SetFilPrdOLD(const pFilPrd: Integer);
begin
  FFilPrdOLD := pFilPrd;
end;

function T120IPD.GetVlrRisOLD: Double;
begin
  Result := FVlrRisOLD;
end;

procedure T120IPD.SetVlrRisOLD(const pVlrRis: Double);
begin
  FVlrRisOLD := pVlrRis;
end;

function T120IPD.GetIndPceOLD: Char;
begin
  Result := FIndPceOLD;
end;

procedure T120IPD.SetIndPceOLD(const pIndPce: Char);
begin
  FIndPceOLD := pIndPce;
end;

function T120IPD.GetIndPcrOLD: Char;
begin
  Result := FIndPcrOLD;
end;

procedure T120IPD.SetIndPcrOLD(const pIndPcr: Char);
begin
  FIndPcrOLD := pIndPcr;
end;

function T120IPD.GetPerPitOLD: Double;
begin
  Result := FPerPitOLD;
end;

procedure T120IPD.SetPerPitOLD(const pPerPit: Double);
begin
  FPerPitOLD := pPerPit;
end;

function T120IPD.GetVlrBptOLD: Double;
begin
  Result := FVlrBptOLD;
end;

procedure T120IPD.SetVlrBptOLD(const pVlrBpt: Double);
begin
  FVlrBptOLD := pVlrBpt;
end;

function T120IPD.GetVlrPitOLD: Double;
begin
  Result := FVlrPitOLD;
end;

procedure T120IPD.SetVlrPitOLD(const pVlrPit: Double);
begin
  FVlrPitOLD := pVlrPit;
end;

function T120IPD.GetPerCrtOLD: Double;
begin
  Result := FPerCrtOLD;
end;

procedure T120IPD.SetPerCrtOLD(const pPerCrt: Double);
begin
  FPerCrtOLD := pPerCrt;
end;

function T120IPD.GetVlrBctOLD: Double;
begin
  Result := FVlrBctOLD;
end;

procedure T120IPD.SetVlrBctOLD(const pVlrBct: Double);
begin
  FVlrBctOLD := pVlrBct;
end;

function T120IPD.GetVlrCrtOLD: Double;
begin
  Result := FVlrCrtOLD;
end;

procedure T120IPD.SetVlrCrtOLD(const pVlrCrt: Double);
begin
  FVlrCrtOLD := pVlrCrt;
end;

function T120IPD.GetPerCslOLD: Double;
begin
  Result := FPerCslOLD;
end;

procedure T120IPD.SetPerCslOLD(const pPerCsl: Double);
begin
  FPerCslOLD := pPerCsl;
end;

function T120IPD.GetVlrBclOLD: Double;
begin
  Result := FVlrBclOLD;
end;

procedure T120IPD.SetVlrBclOLD(const pVlrBcl: Double);
begin
  FVlrBclOLD := pVlrBcl;
end;

function T120IPD.GetVlrCslOLD: Double;
begin
  Result := FVlrCslOLD;
end;

procedure T120IPD.SetVlrCslOLD(const pVlrCsl: Double);
begin
  FVlrCslOLD := pVlrCsl;
end;

function T120IPD.GetPerOurOLD: Double;
begin
  Result := FPerOurOLD;
end;

procedure T120IPD.SetPerOurOLD(const pPerOur: Double);
begin
  FPerOurOLD := pPerOur;
end;

function T120IPD.GetVlrBorOLD: Double;
begin
  Result := FVlrBorOLD;
end;

procedure T120IPD.SetVlrBorOLD(const pVlrBor: Double);
begin
  FVlrBorOLD := pVlrBor;
end;

function T120IPD.GetVlrOurOLD: Double;
begin
  Result := FVlrOurOLD;
end;

procedure T120IPD.SetVlrOurOLD(const pVlrOur: Double);
begin
  FVlrOurOLD := pVlrOur;
end;

function T120IPD.GetPerIrfOLD: Double;
begin
  Result := FPerIrfOLD;
end;

procedure T120IPD.SetPerIrfOLD(const pPerIrf: Double);
begin
  FPerIrfOLD := pPerIrf;
end;

function T120IPD.GetVlrBirOLD: Double;
begin
  Result := FVlrBirOLD;
end;

procedure T120IPD.SetVlrBirOLD(const pVlrBir: Double);
begin
  FVlrBirOLD := pVlrBir;
end;

function T120IPD.GetVlrIrfOLD: Double;
begin
  Result := FVlrIrfOLD;
end;

procedure T120IPD.SetVlrIrfOLD(const pVlrIrf: Double);
begin
  FVlrIrfOLD := pVlrIrf;
end;

function T120IPD.GetFilNfcOLD: Integer;
begin
  Result := FFilNfcOLD;
end;

procedure T120IPD.SetFilNfcOLD(const pFilNfc: Integer);
begin
  FFilNfcOLD := pFilNfc;
end;

function T120IPD.GetForNfcOLD: Integer;
begin
  Result := FForNfcOLD;
end;

procedure T120IPD.SetForNfcOLD(const pForNfc: Integer);
begin
  FForNfcOLD := pForNfc;
end;

function T120IPD.GetNumNfcOLD: Integer;
begin
  Result := FNumNfcOLD;
end;

procedure T120IPD.SetNumNfcOLD(const pNumNfc: Integer);
begin
  FNumNfcOLD := pNumNfc;
end;

function T120IPD.GetSnfNfcOLD: string;
begin
  Result := FSnfNfcOLD;
end;

procedure T120IPD.SetSnfNfcOLD(const pSnfNfc: string);
begin
  FSnfNfcOLD := pSnfNfc;
end;

function T120IPD.GetSeqIpcOLD: Integer;
begin
  Result := FSeqIpcOLD;
end;

procedure T120IPD.SetSeqIpcOLD(const pSeqIpc: Integer);
begin
  FSeqIpcOLD := pSeqIpc;
end;

function T120IPD.GetNctLclOLD: string;
begin
  Result := FNctLclOLD;
end;

procedure T120IPD.SetNctLclOLD(const pNctLcl: string);
begin
  FNctLclOLD := pNctLcl;
end;

function T120IPD.GetNreCliOLD: string;
begin
  Result := FNreCliOLD;
end;

procedure T120IPD.SetNreCliOLD(const pNreCli: string);
begin
  FNreCliOLD := pNreCli;
end;

function T120IPD.GetNosIclOLD: Integer;
begin
  Result := FNosIclOLD;
end;

procedure T120IPD.SetNosIclOLD(const pNosIcl: Integer);
begin
  FNosIclOLD := pNosIcl;
end;

function T120IPD.GetNosFclOLD: Integer;
begin
  Result := FNosFclOLD;
end;

procedure T120IPD.SetNosFclOLD(const pNosFcl: Integer);
begin
  FNosFclOLD := pNosFcl;
end;

function T120IPD.GetNocCl1OLD: string;
begin
  Result := FNocCl1OLD;
end;

procedure T120IPD.SetNocCl1OLD(const pNocCl1: string);
begin
  FNocCl1OLD := pNocCl1;
end;

function T120IPD.GetNocCl2OLD: string;
begin
  Result := FNocCl2OLD;
end;

procedure T120IPD.SetNocCl2OLD(const pNocCl2: string);
begin
  FNocCl2OLD := pNocCl2;
end;

function T120IPD.GetNocCl3OLD: string;
begin
  Result := FNocCl3OLD;
end;

procedure T120IPD.SetNocCl3OLD(const pNocCl3: string);
begin
  FNocCl3OLD := pNocCl3;
end;

function T120IPD.GetCodAgcOLD: string;
begin
  Result := FCodAgcOLD;
end;

procedure T120IPD.SetCodAgcOLD(const pCodAgc: string);
begin
  FCodAgcOLD := pCodAgc;
end;

function T120IPD.GetCtrCvpOLD: Integer;
begin
  Result := FCtrCvpOLD;
end;

procedure T120IPD.SetCtrCvpOLD(const pCtrCvp: Integer);
begin
  FCtrCvpOLD := pCtrCvp;
end;

function T120IPD.GetCptCvpOLD: TDate;
begin
  Result := FCptCvpOLD;
end;

procedure T120IPD.SetCptCvpOLD(const pCptCvp: TDate);
begin
  FCptCvpOLD := pCptCvp;
end;

function T120IPD.GetSeqCtrOLD: Integer;
begin
  Result := FSeqCtrOLD;
end;

procedure T120IPD.SetSeqCtrOLD(const pSeqCtr: Integer);
begin
  FSeqCtrOLD := pSeqCtr;
end;

function T120IPD.GetIndApeOLD: Integer;
begin
  Result := FIndApeOLD;
end;

procedure T120IPD.SetIndApeOLD(const pIndApe: Integer);
begin
  FIndApeOLD := pIndApe;
end;

function T120IPD.GetObsIpdOLD: string;
begin
  Result := FObsIpdOLD;
end;

procedure T120IPD.SetObsIpdOLD(const pObsIpd: string);
begin
  FObsIpdOLD := pObsIpd;
end;

function T120IPD.GetSeqIspOLD: Integer;
begin
  Result := FSeqIspOLD;
end;

procedure T120IPD.SetSeqIspOLD(const pSeqIsp: Integer);
begin
  FSeqIspOLD := pSeqIsp;
end;

function T120IPD.GetEmpOcpOLD: Integer;
begin
  Result := FEmpOcpOLD;
end;

procedure T120IPD.SetEmpOcpOLD(const pEmpOcp: Integer);
begin
  FEmpOcpOLD := pEmpOcp;
end;

function T120IPD.GetVlrBpfOLD: Double;
begin
  Result := FVlrBpfOLD;
end;

procedure T120IPD.SetVlrBpfOLD(const pVlrBpf: Double);
begin
  FVlrBpfOLD := pVlrBpf;
end;

function T120IPD.GetPerPifOLD: Double;
begin
  Result := FPerPifOLD;
end;

procedure T120IPD.SetPerPifOLD(const pPerPif: Double);
begin
  FPerPifOLD := pPerPif;
end;

function T120IPD.GetVlrPifOLD: Double;
begin
  Result := FVlrPifOLD;
end;

procedure T120IPD.SetVlrPifOLD(const pVlrPif: Double);
begin
  FVlrPifOLD := pVlrPif;
end;

function T120IPD.GetVlrBcfOLD: Double;
begin
  Result := FVlrBcfOLD;
end;

procedure T120IPD.SetVlrBcfOLD(const pVlrBcf: Double);
begin
  FVlrBcfOLD := pVlrBcf;
end;

function T120IPD.GetPerCffOLD: Double;
begin
  Result := FPerCffOLD;
end;

procedure T120IPD.SetPerCffOLD(const pPerCff: Double);
begin
  FPerCffOLD := pPerCff;
end;

function T120IPD.GetVlrCffOLD: Double;
begin
  Result := FVlrCffOLD;
end;

procedure T120IPD.SetVlrCffOLD(const pVlrCff: Double);
begin
  FVlrCffOLD := pVlrCff;
end;

function T120IPD.GetPerDs5OLD: Double;
begin
  Result := FPerDs5OLD;
end;

procedure T120IPD.SetPerDs5OLD(const pPerDs5: Double);
begin
  FPerDs5OLD := pPerDs5;
end;

function T120IPD.GetVlrDs5OLD: Double;
begin
  Result := FVlrDs5OLD;
end;

procedure T120IPD.SetVlrDs5OLD(const pVlrDs5: Double);
begin
  FVlrDs5OLD := pVlrDs5;
end;

function T120IPD.GetAgrNecOLD: string;
begin
  Result := FAgrNecOLD;
end;

procedure T120IPD.SetAgrNecOLD(const pAgrNec: string);
begin
  FAgrNecOLD := pAgrNec;
end;

function T120IPD.GetAgrPaiOLD: string;
begin
  Result := FAgrPaiOLD;
end;

procedure T120IPD.SetAgrPaiOLD(const pAgrPai: string);
begin
  FAgrPaiOLD := pAgrPai;
end;

function T120IPD.GetOriResOLD: Char;
begin
  Result := FOriResOLD;
end;

procedure T120IPD.SetOriResOLD(const pOriRes: Char);
begin
  FOriResOLD := pOriRes;
end;

function T120IPD.GetQtdBpfOLD: Double;
begin
  Result := FQtdBpfOLD;
end;

procedure T120IPD.SetQtdBpfOLD(const pQtdBpf: Double);
begin
  FQtdBpfOLD := pQtdBpf;
end;

function T120IPD.GetAliPifOLD: Double;
begin
  Result := FAliPifOLD;
end;

procedure T120IPD.SetAliPifOLD(const pAliPif: Double);
begin
  FAliPifOLD := pAliPif;
end;

function T120IPD.GetQtdBcfOLD: Double;
begin
  Result := FQtdBcfOLD;
end;

procedure T120IPD.SetQtdBcfOLD(const pQtdBcf: Double);
begin
  FQtdBcfOLD := pQtdBcf;
end;

function T120IPD.GetAliCffOLD: Double;
begin
  Result := FAliCffOLD;
end;

procedure T120IPD.SetAliCffOLD(const pAliCff: Double);
begin
  FAliCffOLD := pAliCff;
end;

function T120IPD.GetQtdBipOLD: Double;
begin
  Result := FQtdBipOLD;
end;

procedure T120IPD.SetQtdBipOLD(const pQtdBip: Double);
begin
  FQtdBipOLD := pQtdBip;
end;

function T120IPD.GetAliIpiOLD: Double;
begin
  Result := FAliIpiOLD;
end;

procedure T120IPD.SetAliIpiOLD(const pAliIpi: Double);
begin
  FAliIpiOLD := pAliIpi;
end;

function T120IPD.GetIndIpmOLD: Char;
begin
  Result := FIndIpmOLD;
end;

procedure T120IPD.SetIndIpmOLD(const pIndIpm: Char);
begin
  FIndIpmOLD := pIndIpm;
end;

function T120IPD.GetFilRemOLD: Integer;
begin
  Result := FFilRemOLD;
end;

procedure T120IPD.SetFilRemOLD(const pFilRem: Integer);
begin
  FFilRemOLD := pFilRem;
end;

function T120IPD.GetSnfRemOLD: string;
begin
  Result := FSnfRemOLD;
end;

procedure T120IPD.SetSnfRemOLD(const pSnfRem: string);
begin
  FSnfRemOLD := pSnfRem;
end;

function T120IPD.GetNfvRemOLD: Integer;
begin
  Result := FNfvRemOLD;
end;

procedure T120IPD.SetNfvRemOLD(const pNfvRem: Integer);
begin
  FNfvRemOLD := pNfvRem;
end;

function T120IPD.GetIpvRemOLD: Integer;
begin
  Result := FIpvRemOLD;
end;

procedure T120IPD.SetIpvRemOLD(const pIpvRem: Integer);
begin
  FIpvRemOLD := pIpvRem;
end;

function T120IPD.GetCodCnvOLD: Integer;
begin
  Result := FCodCnvOLD;
end;

procedure T120IPD.SetCodCnvOLD(const pCodCnv: Integer);
begin
  FCodCnvOLD := pCodCnv;
end;

function T120IPD.GetCodRepOLD: Integer;
begin
  Result := FCodRepOLD;
end;

procedure T120IPD.SetCodRepOLD(const pCodRep: Integer);
begin
  FCodRepOLD := pCodRep;
end;

function T120IPD.GetProMonOLD: Char;
begin
  Result := FProMonOLD;
end;

procedure T120IPD.SetProMonOLD(const pProMon: Char);
begin
  FProMonOLD := pProMon;
end;

function T120IPD.GetProEntOLD: Char;
begin
  Result := FProEntOLD;
end;

procedure T120IPD.SetProEntOLD(const pProEnt: Char);
begin
  FProEntOLD := pProEnt;
end;

function T120IPD.GetPerMgcOLD: Double;
begin
  Result := FPerMgcOLD;
end;

procedure T120IPD.SetPerMgcOLD(const pPerMgc: Double);
begin
  FPerMgcOLD := pPerMgc;
end;

function T120IPD.GetVarSerOLD: Char;
begin
  Result := FVarSerOLD;
end;

procedure T120IPD.SetVarSerOLD(const pVarSer: Char);
begin
  FVarSerOLD := pVarSer;
end;

function T120IPD.GetRetMatOLD: Char;
begin
  Result := FRetMatOLD;
end;

procedure T120IPD.SetRetMatOLD(const pRetMat: Char);
begin
  FRetMatOLD := pRetMat;
end;

function T120IPD.GetSenAprOLD: string;
begin
  Result := FSenAprOLD;
end;

procedure T120IPD.SetSenAprOLD(const pSenApr: string);
begin
  FSenAprOLD := pSenApr;
end;

function T120IPD.GetUsuAprOLD: Integer;
begin
  Result := FUsuAprOLD;
end;

procedure T120IPD.SetUsuAprOLD(const pUsuApr: Integer);
begin
  FUsuAprOLD := pUsuApr;
end;

function T120IPD.GetDatAprOLD: TDate;
begin
  Result := FDatAprOLD;
end;

procedure T120IPD.SetDatAprOLD(const pDatApr: TDate);
begin
  FDatAprOLD := pDatApr;
end;

function T120IPD.GetHorAprOLD: Integer;
begin
  Result := FHorAprOLD;
end;

procedure T120IPD.SetHorAprOLD(const pHorApr: Integer);
begin
  FHorAprOLD := pHorApr;
end;

function T120IPD.GetTipCurOLD: Integer;
begin
  Result := FTipCurOLD;
end;

procedure T120IPD.SetTipCurOLD(const pTipCur: Integer);
begin
  FTipCurOLD := pTipCur;
end;

function T120IPD.GetCodFinOLD: Integer;
begin
  Result := FCodFinOLD;
end;

procedure T120IPD.SetCodFinOLD(const pCodFin: Integer);
begin
  FCodFinOLD := pCodFin;
end;

function T120IPD.GetUSU_DEPCIBOLD: string;
begin
  Result := FUSU_DEPCIBOLD;
end;

procedure T120IPD.SetUSU_DEPCIBOLD(const pUSU_DEPCIB: string);
begin
  FUSU_DEPCIBOLD := pUSU_DEPCIB;
end;

function T120IPD.GetUSU_UsuAutOLD: Integer;
begin
  Result := FUSU_UsuAutOLD;
end;

procedure T120IPD.SetUSU_UsuAutOLD(const pUSU_UsuAut: Integer);
begin
  FUSU_UsuAutOLD := pUSU_UsuAut;
end;

function T120IPD.GetUSU_PreAutOLD: Double;
begin
  Result := FUSU_PreAutOLD;
end;

procedure T120IPD.SetUSU_PreAutOLD(const pUSU_PreAut: Double);
begin
  FUSU_PreAutOLD := pUSU_PreAut;
end;

function T120IPD.GetUSU_EmiRelOLD: Char;
begin
  Result := FUSU_EmiRelOLD;
end;

procedure T120IPD.SetUSU_EmiRelOLD(const pUSU_EmiRel: Char);
begin
  FUSU_EmiRelOLD := pUSU_EmiRel;
end;

function T120IPD.GetUSU_OriMerOLD: Char;
begin
  Result := FUSU_OriMerOLD;
end;

procedure T120IPD.SetUSU_OriMerOLD(const pUSU_OriMer: Char);
begin
  FUSU_OriMerOLD := pUSU_OriMer;
end;

function T120IPD.GetUSU_QtdExaOLD: Char;
begin
  Result := FUSU_QtdExaOLD;
end;

procedure T120IPD.SetUSU_QtdExaOLD(const pUSU_QtdExa: Char);
begin
  FUSU_QtdExaOLD := pUSU_QtdExa;
end;

procedure T120IPD.Registros_OLD();
begin
  FCodEmpOLD := FCodEmp;
  FCodFilOLD := FCodFil;
  FNumPedOLD := FNumPed;
  FSeqIpdOLD := FSeqIpd;
  FTnsProOLD := FTnsPro;
  FPedCliOLD := FPedCli;
  FSeqPclOLD := FSeqPcl;
  FPedPrvOLD := FPedPrv;
  FCodProOLD := FCodPro;
  FCodDerOLD := FCodDer;
  FCplIpdOLD := FCplIpd;
  FCodFamOLD := FCodFam;
  FCodAgrOLD := FCodAgr;
  FCodTicOLD := FCodTic;
  FCodTrdOLD := FCodTrd;
  FCodTstOLD := FCodTst;
  FCodStpOLD := FCodStp;
  FCodStcOLD := FCodStc;
  FCodDepOLD := FCodDep;
  FCodLotOLD := FCodLot;
  FResEstOLD := FResEst;
  FQtdPedOLD := FQtdPed;
  FQtdAenOLD := FQtdAen;
  FQtdPocOLD := FQtdPoc;
  FQtdFatOLD := FQtdFat;
  FQtdCanOLD := FQtdCan;
  FQtdAbeOLD := FQtdAbe;
  FQtdRaeOLD := FQtdRae;
  FQtdNlpOLD := FQtdNlp;
  FQtdResOLD := FQtdRes;
  FUniMedOLD := FUniMed;
  FCodMcpOLD := FCodMcp;
  FDatMfpOLD := FDatMfp;
  FCotMfpOLD := FCotMfp;
  FDatMoeOLD := FDatMoe;
  FCotMoeOLD := FCotMoe;
  FFecMoeOLD := FFecMoe;
  FCodTprOLD := FCodTpr;
  FPreUniOLD := FPreUni;
  FCodMoeOLD := FCodMoe;
  FPreFixOLD := FPreFix;
  FPerDscOLD := FPerDsc;
  FPerOfeOLD := FPerOfe;
  FPerAcrOLD := FPerAcr;
  FPerIpiOLD := FPerIpi;
  FPerIcmOLD := FPerIcm;
  FPerComOLD := FPerCom;
  FDatEntOLD := FDatEnt;
  FDatAneOLD := FDatAne;
  FDatPocOLD := FDatPoc;
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
  FVlrOfeOLD := FVlrOfe;
  FVlrDzfOLD := FVlrDzf;
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
  FVlrBcoOLD := FVlrBco;
  FVlrComOLD := FVlrCom;
  FVlrLprOLD := FVlrLpr;
  FVlrLouOLD := FVlrLou;
  FVlrLiqOLD := FVlrLiq;
  FVlrFinOLD := FVlrFin;
  FSitIpdOLD := FSitIpd;
  FCodMotOLD := FCodMot;
  FObsMotOLD := FObsMot;
  FGerNecOLD := FGerNec;
  FGerCgaOLD := FGerCga;
  FResManOLD := FResMan;
  FIndAedOLD := FIndAed;
  FNumCtrOLD := FNumCtr;
  FDatCptOLD := FDatCpt;
  FSeqCvpOLD := FSeqCvp;
  FUsuGerOLD := FUsuGer;
  FDatGerOLD := FDatGer;
  FHorGerOLD := FHorGer;
  FQtdPpfOLD := FQtdPpf;
  FCmpKitOLD := FCmpKit;
  FFilOcpOLD := FFilOcp;
  FNumOcpOLD := FNumOcp;
  FSeqIpoOLD := FSeqIpo;
  FUniVenOLD := FUniVen;
  FQtdVenOLD := FQtdVen;
  FPreVenOLD := FPreVen;
  FPreBruOLD := FPreBru;
  FFilCtrOLD := FFilCtr;
  FCtrCvsOLD := FCtrCvs;
  FCptCvsOLD := FCptCvs;
  FSeqCvsOLD := FSeqCvs;
  FCodAvcOLD := FCodAvc;
  FCodFxaOLD := FCodFxa;
  FCodPgrOLD := FCodPgr;
  FIdxGrdOLD := FIdxGrd;
  FCodMarOLD := FCodMar;
  FCodClcOLD := FCodClc;
  FPerDs1OLD := FPerDs1;
  FPerDs2OLD := FPerDs2;
  FPerDs3OLD := FPerDs3;
  FPerDs4OLD := FPerDs4;
  FFilPrdOLD := FFilPrd;
  FVlrRisOLD := FVlrRis;
  FIndPceOLD := FIndPce;
  FIndPcrOLD := FIndPcr;
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
  FFilNfcOLD := FFilNfc;
  FForNfcOLD := FForNfc;
  FNumNfcOLD := FNumNfc;
  FSnfNfcOLD := FSnfNfc;
  FSeqIpcOLD := FSeqIpc;
  FNctLclOLD := FNctLcl;
  FNreCliOLD := FNreCli;
  FNosIclOLD := FNosIcl;
  FNosFclOLD := FNosFcl;
  FNocCl1OLD := FNocCl1;
  FNocCl2OLD := FNocCl2;
  FNocCl3OLD := FNocCl3;
  FCodAgcOLD := FCodAgc;
  FCtrCvpOLD := FCtrCvp;
  FCptCvpOLD := FCptCvp;
  FSeqCtrOLD := FSeqCtr;
  FIndApeOLD := FIndApe;
  FObsIpdOLD := FObsIpd;
  FSeqIspOLD := FSeqIsp;
  FEmpOcpOLD := FEmpOcp;
  FVlrBpfOLD := FVlrBpf;
  FPerPifOLD := FPerPif;
  FVlrPifOLD := FVlrPif;
  FVlrBcfOLD := FVlrBcf;
  FPerCffOLD := FPerCff;
  FVlrCffOLD := FVlrCff;
  FPerDs5OLD := FPerDs5;
  FVlrDs5OLD := FVlrDs5;
  FAgrNecOLD := FAgrNec;
  FAgrPaiOLD := FAgrPai;
  FOriResOLD := FOriRes;
  FQtdBpfOLD := FQtdBpf;
  FAliPifOLD := FAliPif;
  FQtdBcfOLD := FQtdBcf;
  FAliCffOLD := FAliCff;
  FQtdBipOLD := FQtdBip;
  FAliIpiOLD := FAliIpi;
  FIndIpmOLD := FIndIpm;
  FFilRemOLD := FFilRem;
  FSnfRemOLD := FSnfRem;
  FNfvRemOLD := FNfvRem;
  FIpvRemOLD := FIpvRem;
  FCodCnvOLD := FCodCnv;
  FCodRepOLD := FCodRep;
  FProMonOLD := FProMon;
  FProEntOLD := FProEnt;
  FPerMgcOLD := FPerMgc;
  FVarSerOLD := FVarSer;
  FRetMatOLD := FRetMat;
  FSenAprOLD := FSenApr;
  FUsuAprOLD := FUsuApr;
  FDatAprOLD := FDatApr;
  FHorAprOLD := FHorApr;
  FTipCurOLD := FTipCur;
  FCodFinOLD := FCodFin;
  FUSU_DEPCIBOLD := FUSU_DEPCIB;
  FUSU_UsuAutOLD := FUSU_UsuAut;
  FUSU_PreAutOLD := FUSU_PreAut;
  FUSU_EmiRelOLD := FUSU_EmiRel;
  FUSU_OriMerOLD := FUSU_OriMer;
  FUSU_QtdExaOLD := FUSU_QtdExa;
end;

end.
