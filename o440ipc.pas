unit o440ipc;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T440IPC = class(TTabelaPadrao)
  private
    FCodEmp: Integer;
    FCodFil: Integer;
    FCodFor: Integer;
    FNumNfc: Integer;
    FCodSnf: string;
    FSeqIpc: Integer;
    FTnsPro: string;
    FNopPro: string;
    FFilOcp: Integer;
    FNumOcp: Integer;
    FSeqIpo: Integer;
    FCodPro: string;
    FCodDer: string;
    FCplIpc: string;
    FCodFam: string;
    FCodClf: string;
    FCodStr: string;
    FCodTic: string;
    FCodTrd: string;
    FCodTst: string;
    FCodStp: string;
    FCodStc: string;
    FLauTec: string;
    FUsuLau: Integer;
    FDatLau: TDate;
    FHorLau: Integer;
    FCodDep: string;
    FCodLot: string;
    FQtdRec: Double;
    FUniNfc: string;
    FQtdAjb: Double;
    FQtdDev: Double;
    FUniMed: string;
    FQtdEst: Double;
    FVlrFum: Double;
    FQtdFre: Double;
    FForFre: Integer;
    FPesBru: Double;
    FPesLiq: Double;
    FCodTpr: string;
    FPreUni: Double;
    FPreEst: Double;
    FPreBas: Double;
    FPerDsc: Double;
    FPerDs3: Double;
    FPerDs4: Double;
    FPerDs5: Double;
    FPerIpi: Double;
    FPerIcm: Double;
    FPerFun: Double;
    FSalCan: Char;
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
    FVlrBid: Double;
    FVlrIpd: Double;
    FVlrBic: Double;
    FVlrIcm: Double;
    FVlrDfa: Double;
    FVlrBsi: Double;
    FVlrIcs: Double;
    FVlrBsd: Double;
    FVlrIsd: Double;
    FVlrBsp: Double;
    FVlrStp: Double;
    FVlrBsc: Double;
    FVlrStc: Double;
    FVlrIip: Double;
    FVlrIic: Double;
    FVlrOip: Double;
    FVlrOic: Double;
    FVlrLpr: Double;
    FVlrLou: Double;
    FVlrLiq: Double;
    FVlrFin: Double;
    FAcrFin: Double;
    FEmpNfv: Integer;
    FFilNfv: Integer;
    FSnfNfv: string;
    FNumNfv: Integer;
    FSeqIpv: Integer;
    FCodFab: string;
    FUsuGer: Integer;
    FDatGer: TDate;
    FHorGer: Integer;
    FNumEpi: Integer;
    FDatVlt: TDate;
    FVlrBpi: Double;
    FVlrPis: Double;
    FFilCtr: Integer;
    FNumCtr: Integer;
    FDatCpt: TDate;
    FSeqCcp: Integer;
    FIntPat: Char;
    FNotFor: Double;
    FNotPro: Double;
    FProFab: string;
    FSeqIsc: Integer;
    FVlrBcr: Double;
    FVlrCor: Double;
    FPerIim: Double;
    FVlrBii: Double;
    FVlrIim: Double;
    FVlrRis: Double;
    FCodBem: string;
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
    FPerDs1: Double;
    FPerDs2: Double;
    FBecIpi: Double;
    FVecIpi: Double;
    FBecIcm: Double;
    FVecIcm: Double;
    FProFor: string;
    FVlrFei: Double;
    FVlrSei: Double;
    FVlrOui: Double;
    FBcoImp: Double;
    FCofImp: Double;
    FBpiImp: Double;
    FPisImp: Double;
    FFilPed: Integer;
    FNumPed: Integer;
    FSeqIpd: Integer;
    FVlrDm1: Double;
    FVlrDm2: Double;
    FVlrDm3: Double;
    FVlrDm4: Double;
    FVlrDm5: Double;
    FVlrDm6: Double;
    FBemPri: string;
    FVlrBpf: Double;
    FPerPif: Double;
    FVlrPif: Double;
    FVlrBcf: Double;
    FPerCff: Double;
    FVlrCff: Double;
    FCstIpi: string;
    FCstPis: string;
    FCstCof: string;
    FCodDfs: Integer;
    FVlrAjs: Double;
    FSeqEve: Integer;
    FNumAdi: Integer;
    FSeqAdi: Integer;
    FDscAdi: Double;
    FFabEst: string;
    FQtdBpi: Double;
    FAliPis: Double;
    FQtdBco: Double;
    FAliCof: Double;
    FQtdBip: Double;
    FAliIpi: Double;
    FQtdBpf: Double;
    FAliPif: Double;
    FQtdBcf: Double;
    FAliCff: Double;
    FVlrSub: Double;
    FIndVip: Char;
    FOriMer: Char;
    FPerCit: Double;
    FVlrCit: Double;
    FBasCre: Integer;
    FPecIcm: Double;
    FPecIpi: Double;
    FTipCur: Integer;
    FPerPir: Double;
    FPerCor: Double;
    FPerPim: Double;
    FPerCim: Double;
    FEmpCto: Integer;
    FCodPco: Integer;
    FFilCto: Integer;
    FCptPco: TDate;
    FVlrImp: Double;
    FCoeFci: Double;
    FCodFci: string;
    FUSU_NumInv: string;
    FUSU_VlrBsi: Double;
    FUSU_VlrIcs: Double;
    FUSU_NumDoi: string;
    FUSU_OcpFat: Integer;
    FUSU_AcrDes: Double;
    FUSU_DesDiv: string;
    FUSU_DesSol: string;

    FCodEmpOLD: Integer;
    FCodFilOLD: Integer;
    FCodForOLD: Integer;
    FNumNfcOLD: Integer;
    FCodSnfOLD: string;
    FSeqIpcOLD: Integer;
    FTnsProOLD: string;
    FNopProOLD: string;
    FFilOcpOLD: Integer;
    FNumOcpOLD: Integer;
    FSeqIpoOLD: Integer;
    FCodProOLD: string;
    FCodDerOLD: string;
    FCplIpcOLD: string;
    FCodFamOLD: string;
    FCodClfOLD: string;
    FCodStrOLD: string;
    FCodTicOLD: string;
    FCodTrdOLD: string;
    FCodTstOLD: string;
    FCodStpOLD: string;
    FCodStcOLD: string;
    FLauTecOLD: string;
    FUsuLauOLD: Integer;
    FDatLauOLD: TDate;
    FHorLauOLD: Integer;
    FCodDepOLD: string;
    FCodLotOLD: string;
    FQtdRecOLD: Double;
    FUniNfcOLD: string;
    FQtdAjbOLD: Double;
    FQtdDevOLD: Double;
    FUniMedOLD: string;
    FQtdEstOLD: Double;
    FVlrFumOLD: Double;
    FQtdFreOLD: Double;
    FForFreOLD: Integer;
    FPesBruOLD: Double;
    FPesLiqOLD: Double;
    FCodTprOLD: string;
    FPreUniOLD: Double;
    FPreEstOLD: Double;
    FPreBasOLD: Double;
    FPerDscOLD: Double;
    FPerDs3OLD: Double;
    FPerDs4OLD: Double;
    FPerDs5OLD: Double;
    FPerIpiOLD: Double;
    FPerIcmOLD: Double;
    FPerFunOLD: Double;
    FSalCanOLD: Char;
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
    FVlrBidOLD: Double;
    FVlrIpdOLD: Double;
    FVlrBicOLD: Double;
    FVlrIcmOLD: Double;
    FVlrDfaOLD: Double;
    FVlrBsiOLD: Double;
    FVlrIcsOLD: Double;
    FVlrBsdOLD: Double;
    FVlrIsdOLD: Double;
    FVlrBspOLD: Double;
    FVlrStpOLD: Double;
    FVlrBscOLD: Double;
    FVlrStcOLD: Double;
    FVlrIipOLD: Double;
    FVlrIicOLD: Double;
    FVlrOipOLD: Double;
    FVlrOicOLD: Double;
    FVlrLprOLD: Double;
    FVlrLouOLD: Double;
    FVlrLiqOLD: Double;
    FVlrFinOLD: Double;
    FAcrFinOLD: Double;
    FEmpNfvOLD: Integer;
    FFilNfvOLD: Integer;
    FSnfNfvOLD: string;
    FNumNfvOLD: Integer;
    FSeqIpvOLD: Integer;
    FCodFabOLD: string;
    FUsuGerOLD: Integer;
    FDatGerOLD: TDate;
    FHorGerOLD: Integer;
    FNumEpiOLD: Integer;
    FDatVltOLD: TDate;
    FVlrBpiOLD: Double;
    FVlrPisOLD: Double;
    FFilCtrOLD: Integer;
    FNumCtrOLD: Integer;
    FDatCptOLD: TDate;
    FSeqCcpOLD: Integer;
    FIntPatOLD: Char;
    FNotForOLD: Double;
    FNotProOLD: Double;
    FProFabOLD: string;
    FSeqIscOLD: Integer;
    FVlrBcrOLD: Double;
    FVlrCorOLD: Double;
    FPerIimOLD: Double;
    FVlrBiiOLD: Double;
    FVlrIimOLD: Double;
    FVlrRisOLD: Double;
    FCodBemOLD: string;
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
    FPerDs1OLD: Double;
    FPerDs2OLD: Double;
    FBecIpiOLD: Double;
    FVecIpiOLD: Double;
    FBecIcmOLD: Double;
    FVecIcmOLD: Double;
    FProForOLD: string;
    FVlrFeiOLD: Double;
    FVlrSeiOLD: Double;
    FVlrOuiOLD: Double;
    FBcoImpOLD: Double;
    FCofImpOLD: Double;
    FBpiImpOLD: Double;
    FPisImpOLD: Double;
    FFilPedOLD: Integer;
    FNumPedOLD: Integer;
    FSeqIpdOLD: Integer;
    FVlrDm1OLD: Double;
    FVlrDm2OLD: Double;
    FVlrDm3OLD: Double;
    FVlrDm4OLD: Double;
    FVlrDm5OLD: Double;
    FVlrDm6OLD: Double;
    FBemPriOLD: string;
    FVlrBpfOLD: Double;
    FPerPifOLD: Double;
    FVlrPifOLD: Double;
    FVlrBcfOLD: Double;
    FPerCffOLD: Double;
    FVlrCffOLD: Double;
    FCstIpiOLD: string;
    FCstPisOLD: string;
    FCstCofOLD: string;
    FCodDfsOLD: Integer;
    FVlrAjsOLD: Double;
    FSeqEveOLD: Integer;
    FNumAdiOLD: Integer;
    FSeqAdiOLD: Integer;
    FDscAdiOLD: Double;
    FFabEstOLD: string;
    FQtdBpiOLD: Double;
    FAliPisOLD: Double;
    FQtdBcoOLD: Double;
    FAliCofOLD: Double;
    FQtdBipOLD: Double;
    FAliIpiOLD: Double;
    FQtdBpfOLD: Double;
    FAliPifOLD: Double;
    FQtdBcfOLD: Double;
    FAliCffOLD: Double;
    FVlrSubOLD: Double;
    FIndVipOLD: Char;
    FOriMerOLD: Char;
    FPerCitOLD: Double;
    FVlrCitOLD: Double;
    FBasCreOLD: Integer;
    FPecIcmOLD: Double;
    FPecIpiOLD: Double;
    FTipCurOLD: Integer;
    FPerPirOLD: Double;
    FPerCorOLD: Double;
    FPerPimOLD: Double;
    FPerCimOLD: Double;
    FEmpCtoOLD: Integer;
    FCodPcoOLD: Integer;
    FFilCtoOLD: Integer;
    FCptPcoOLD: TDate;
    FVlrImpOLD: Double;
    FCoeFciOLD: Double;
    FCodFciOLD: string;
    FUSU_NumInvOLD: string;
    FUSU_VlrBsiOLD: Double;
    FUSU_VlrIcsOLD: Double;
    FUSU_NumDoiOLD: string;
    FUSU_OcpFatOLD: Integer;
    FUSU_AcrDesOLD: Double;
    FUSU_DesDivOLD: string;
    FUSU_DesSolOLD: string;

    function GetCodEmp: Integer;
    procedure SetCodEmp(const pCodEmp: Integer);
    function GetCodFil: Integer;
    procedure SetCodFil(const pCodFil: Integer);
    function GetCodFor: Integer;
    procedure SetCodFor(const pCodFor: Integer);
    function GetNumNfc: Integer;
    procedure SetNumNfc(const pNumNfc: Integer);
    function GetCodSnf: string;
    procedure SetCodSnf(const pCodSnf: string);
    function GetSeqIpc: Integer;
    procedure SetSeqIpc(const pSeqIpc: Integer);
    function GetTnsPro: string;
    procedure SetTnsPro(const pTnsPro: string);
    function GetNopPro: string;
    procedure SetNopPro(const pNopPro: string);
    function GetFilOcp: Integer;
    procedure SetFilOcp(const pFilOcp: Integer);
    function GetNumOcp: Integer;
    procedure SetNumOcp(const pNumOcp: Integer);
    function GetSeqIpo: Integer;
    procedure SetSeqIpo(const pSeqIpo: Integer);
    function GetCodPro: string;
    procedure SetCodPro(const pCodPro: string);
    function GetCodDer: string;
    procedure SetCodDer(const pCodDer: string);
    function GetCplIpc: string;
    procedure SetCplIpc(const pCplIpc: string);
    function GetCodFam: string;
    procedure SetCodFam(const pCodFam: string);
    function GetCodClf: string;
    procedure SetCodClf(const pCodClf: string);
    function GetCodStr: string;
    procedure SetCodStr(const pCodStr: string);
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
    function GetLauTec: string;
    procedure SetLauTec(const pLauTec: string);
    function GetUsuLau: Integer;
    procedure SetUsuLau(const pUsuLau: Integer);
    function GetDatLau: TDate;
    procedure SetDatLau(const pDatLau: TDate);
    function GetHorLau: Integer;
    procedure SetHorLau(const pHorLau: Integer);
    function GetCodDep: string;
    procedure SetCodDep(const pCodDep: string);
    function GetCodLot: string;
    procedure SetCodLot(const pCodLot: string);
    function GetQtdRec: Double;
    procedure SetQtdRec(const pQtdRec: Double);
    function GetUniNfc: string;
    procedure SetUniNfc(const pUniNfc: string);
    function GetQtdAjb: Double;
    procedure SetQtdAjb(const pQtdAjb: Double);
    function GetQtdDev: Double;
    procedure SetQtdDev(const pQtdDev: Double);
    function GetUniMed: string;
    procedure SetUniMed(const pUniMed: string);
    function GetQtdEst: Double;
    procedure SetQtdEst(const pQtdEst: Double);
    function GetVlrFum: Double;
    procedure SetVlrFum(const pVlrFum: Double);
    function GetQtdFre: Double;
    procedure SetQtdFre(const pQtdFre: Double);
    function GetForFre: Integer;
    procedure SetForFre(const pForFre: Integer);
    function GetPesBru: Double;
    procedure SetPesBru(const pPesBru: Double);
    function GetPesLiq: Double;
    procedure SetPesLiq(const pPesLiq: Double);
    function GetCodTpr: string;
    procedure SetCodTpr(const pCodTpr: string);
    function GetPreUni: Double;
    procedure SetPreUni(const pPreUni: Double);
    function GetPreEst: Double;
    procedure SetPreEst(const pPreEst: Double);
    function GetPreBas: Double;
    procedure SetPreBas(const pPreBas: Double);
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
    function GetSalCan: Char;
    procedure SetSalCan(const pSalCan: Char);
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
    function GetVlrBid: Double;
    procedure SetVlrBid(const pVlrBid: Double);
    function GetVlrIpd: Double;
    procedure SetVlrIpd(const pVlrIpd: Double);
    function GetVlrBic: Double;
    procedure SetVlrBic(const pVlrBic: Double);
    function GetVlrIcm: Double;
    procedure SetVlrIcm(const pVlrIcm: Double);
    function GetVlrDfa: Double;
    procedure SetVlrDfa(const pVlrDfa: Double);
    function GetVlrBsi: Double;
    procedure SetVlrBsi(const pVlrBsi: Double);
    function GetVlrIcs: Double;
    procedure SetVlrIcs(const pVlrIcs: Double);
    function GetVlrBsd: Double;
    procedure SetVlrBsd(const pVlrBsd: Double);
    function GetVlrIsd: Double;
    procedure SetVlrIsd(const pVlrIsd: Double);
    function GetVlrBsp: Double;
    procedure SetVlrBsp(const pVlrBsp: Double);
    function GetVlrStp: Double;
    procedure SetVlrStp(const pVlrStp: Double);
    function GetVlrBsc: Double;
    procedure SetVlrBsc(const pVlrBsc: Double);
    function GetVlrStc: Double;
    procedure SetVlrStc(const pVlrStc: Double);
    function GetVlrIip: Double;
    procedure SetVlrIip(const pVlrIip: Double);
    function GetVlrIic: Double;
    procedure SetVlrIic(const pVlrIic: Double);
    function GetVlrOip: Double;
    procedure SetVlrOip(const pVlrOip: Double);
    function GetVlrOic: Double;
    procedure SetVlrOic(const pVlrOic: Double);
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
    function GetCodFab: string;
    procedure SetCodFab(const pCodFab: string);
    function GetUsuGer: Integer;
    procedure SetUsuGer(const pUsuGer: Integer);
    function GetDatGer: TDate;
    procedure SetDatGer(const pDatGer: TDate);
    function GetHorGer: Integer;
    procedure SetHorGer(const pHorGer: Integer);
    function GetNumEpi: Integer;
    procedure SetNumEpi(const pNumEpi: Integer);
    function GetDatVlt: TDate;
    procedure SetDatVlt(const pDatVlt: TDate);
    function GetVlrBpi: Double;
    procedure SetVlrBpi(const pVlrBpi: Double);
    function GetVlrPis: Double;
    procedure SetVlrPis(const pVlrPis: Double);
    function GetFilCtr: Integer;
    procedure SetFilCtr(const pFilCtr: Integer);
    function GetNumCtr: Integer;
    procedure SetNumCtr(const pNumCtr: Integer);
    function GetDatCpt: TDate;
    procedure SetDatCpt(const pDatCpt: TDate);
    function GetSeqCcp: Integer;
    procedure SetSeqCcp(const pSeqCcp: Integer);
    function GetIntPat: Char;
    procedure SetIntPat(const pIntPat: Char);
    function GetNotFor: Double;
    procedure SetNotFor(const pNotFor: Double);
    function GetNotPro: Double;
    procedure SetNotPro(const pNotPro: Double);
    function GetProFab: string;
    procedure SetProFab(const pProFab: string);
    function GetSeqIsc: Integer;
    procedure SetSeqIsc(const pSeqIsc: Integer);
    function GetVlrBcr: Double;
    procedure SetVlrBcr(const pVlrBcr: Double);
    function GetVlrCor: Double;
    procedure SetVlrCor(const pVlrCor: Double);
    function GetPerIim: Double;
    procedure SetPerIim(const pPerIim: Double);
    function GetVlrBii: Double;
    procedure SetVlrBii(const pVlrBii: Double);
    function GetVlrIim: Double;
    procedure SetVlrIim(const pVlrIim: Double);
    function GetVlrRis: Double;
    procedure SetVlrRis(const pVlrRis: Double);
    function GetCodBem: string;
    procedure SetCodBem(const pCodBem: string);
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
    function GetPerDs1: Double;
    procedure SetPerDs1(const pPerDs1: Double);
    function GetPerDs2: Double;
    procedure SetPerDs2(const pPerDs2: Double);
    function GetBecIpi: Double;
    procedure SetBecIpi(const pBecIpi: Double);
    function GetVecIpi: Double;
    procedure SetVecIpi(const pVecIpi: Double);
    function GetBecIcm: Double;
    procedure SetBecIcm(const pBecIcm: Double);
    function GetVecIcm: Double;
    procedure SetVecIcm(const pVecIcm: Double);
    function GetProFor: string;
    procedure SetProFor(const pProFor: string);
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
    function GetFilPed: Integer;
    procedure SetFilPed(const pFilPed: Integer);
    function GetNumPed: Integer;
    procedure SetNumPed(const pNumPed: Integer);
    function GetSeqIpd: Integer;
    procedure SetSeqIpd(const pSeqIpd: Integer);
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
    function GetCstIpi: string;
    procedure SetCstIpi(const pCstIpi: string);
    function GetCstPis: string;
    procedure SetCstPis(const pCstPis: string);
    function GetCstCof: string;
    procedure SetCstCof(const pCstCof: string);
    function GetCodDfs: Integer;
    procedure SetCodDfs(const pCodDfs: Integer);
    function GetVlrAjs: Double;
    procedure SetVlrAjs(const pVlrAjs: Double);
    function GetSeqEve: Integer;
    procedure SetSeqEve(const pSeqEve: Integer);
    function GetNumAdi: Integer;
    procedure SetNumAdi(const pNumAdi: Integer);
    function GetSeqAdi: Integer;
    procedure SetSeqAdi(const pSeqAdi: Integer);
    function GetDscAdi: Double;
    procedure SetDscAdi(const pDscAdi: Double);
    function GetFabEst: string;
    procedure SetFabEst(const pFabEst: string);
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
    function GetQtdBpf: Double;
    procedure SetQtdBpf(const pQtdBpf: Double);
    function GetAliPif: Double;
    procedure SetAliPif(const pAliPif: Double);
    function GetQtdBcf: Double;
    procedure SetQtdBcf(const pQtdBcf: Double);
    function GetAliCff: Double;
    procedure SetAliCff(const pAliCff: Double);
    function GetVlrSub: Double;
    procedure SetVlrSub(const pVlrSub: Double);
    function GetIndVip: Char;
    procedure SetIndVip(const pIndVip: Char);
    function GetOriMer: Char;
    procedure SetOriMer(const pOriMer: Char);
    function GetPerCit: Double;
    procedure SetPerCit(const pPerCit: Double);
    function GetVlrCit: Double;
    procedure SetVlrCit(const pVlrCit: Double);
    function GetBasCre: Integer;
    procedure SetBasCre(const pBasCre: Integer);
    function GetPecIcm: Double;
    procedure SetPecIcm(const pPecIcm: Double);
    function GetPecIpi: Double;
    procedure SetPecIpi(const pPecIpi: Double);
    function GetTipCur: Integer;
    procedure SetTipCur(const pTipCur: Integer);
    function GetPerPir: Double;
    procedure SetPerPir(const pPerPir: Double);
    function GetPerCor: Double;
    procedure SetPerCor(const pPerCor: Double);
    function GetPerPim: Double;
    procedure SetPerPim(const pPerPim: Double);
    function GetPerCim: Double;
    procedure SetPerCim(const pPerCim: Double);
    function GetEmpCto: Integer;
    procedure SetEmpCto(const pEmpCto: Integer);
    function GetCodPco: Integer;
    procedure SetCodPco(const pCodPco: Integer);
    function GetFilCto: Integer;
    procedure SetFilCto(const pFilCto: Integer);
    function GetCptPco: TDate;
    procedure SetCptPco(const pCptPco: TDate);
    function GetVlrImp: Double;
    procedure SetVlrImp(const pVlrImp: Double);
    function GetCoeFci: Double;
    procedure SetCoeFci(const pCoeFci: Double);
    function GetCodFci: string;
    procedure SetCodFci(const pCodFci: string);
    function GetUSU_NumInv: string;
    procedure SetUSU_NumInv(const pUSU_NumInv: string);
    function GetUSU_VlrBsi: Double;
    procedure SetUSU_VlrBsi(const pUSU_VlrBsi: Double);
    function GetUSU_VlrIcs: Double;
    procedure SetUSU_VlrIcs(const pUSU_VlrIcs: Double);
    function GetUSU_NumDoi: string;
    procedure SetUSU_NumDoi(const pUSU_NumDoi: string);
    function GetUSU_OcpFat: Integer;
    procedure SetUSU_OcpFat(const pUSU_OcpFat: Integer);
    function GetUSU_AcrDes: Double;
    procedure SetUSU_AcrDes(const pUSU_AcrDes: Double);
    function GetUSU_DesDiv: string;
    procedure SetUSU_DesDiv(const pUSU_DesDiv: string);
    function GetUSU_DesSol: string;
    procedure SetUSU_DesSol(const pUSU_DesSol: string);

    function GetCodEmpOld: Integer;
    procedure SetCodEmpOld(const pCodEmp: Integer);
    function GetCodFilOld: Integer;
    procedure SetCodFilOld(const pCodFil: Integer);
    function GetCodForOld: Integer;
    procedure SetCodForOld(const pCodFor: Integer);
    function GetNumNfcOld: Integer;
    procedure SetNumNfcOld(const pNumNfc: Integer);
    function GetCodSnfOld: string;
    procedure SetCodSnfOld(const pCodSnf: string);
    function GetSeqIpcOld: Integer;
    procedure SetSeqIpcOld(const pSeqIpc: Integer);
    function GetTnsProOld: string;
    procedure SetTnsProOld(const pTnsPro: string);
    function GetNopProOld: string;
    procedure SetNopProOld(const pNopPro: string);
    function GetFilOcpOld: Integer;
    procedure SetFilOcpOld(const pFilOcp: Integer);
    function GetNumOcpOld: Integer;
    procedure SetNumOcpOld(const pNumOcp: Integer);
    function GetSeqIpoOld: Integer;
    procedure SetSeqIpoOld(const pSeqIpo: Integer);
    function GetCodProOld: string;
    procedure SetCodProOld(const pCodPro: string);
    function GetCodDerOld: string;
    procedure SetCodDerOld(const pCodDer: string);
    function GetCplIpcOld: string;
    procedure SetCplIpcOld(const pCplIpc: string);
    function GetCodFamOld: string;
    procedure SetCodFamOld(const pCodFam: string);
    function GetCodClfOld: string;
    procedure SetCodClfOld(const pCodClf: string);
    function GetCodStrOld: string;
    procedure SetCodStrOld(const pCodStr: string);
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
    function GetLauTecOld: string;
    procedure SetLauTecOld(const pLauTec: string);
    function GetUsuLauOld: Integer;
    procedure SetUsuLauOld(const pUsuLau: Integer);
    function GetDatLauOld: TDate;
    procedure SetDatLauOld(const pDatLau: TDate);
    function GetHorLauOld: Integer;
    procedure SetHorLauOld(const pHorLau: Integer);
    function GetCodDepOld: string;
    procedure SetCodDepOld(const pCodDep: string);
    function GetCodLotOld: string;
    procedure SetCodLotOld(const pCodLot: string);
    function GetQtdRecOld: Double;
    procedure SetQtdRecOld(const pQtdRec: Double);
    function GetUniNfcOld: string;
    procedure SetUniNfcOld(const pUniNfc: string);
    function GetQtdAjbOld: Double;
    procedure SetQtdAjbOld(const pQtdAjb: Double);
    function GetQtdDevOld: Double;
    procedure SetQtdDevOld(const pQtdDev: Double);
    function GetUniMedOld: string;
    procedure SetUniMedOld(const pUniMed: string);
    function GetQtdEstOld: Double;
    procedure SetQtdEstOld(const pQtdEst: Double);
    function GetVlrFumOld: Double;
    procedure SetVlrFumOld(const pVlrFum: Double);
    function GetQtdFreOld: Double;
    procedure SetQtdFreOld(const pQtdFre: Double);
    function GetForFreOld: Integer;
    procedure SetForFreOld(const pForFre: Integer);
    function GetPesBruOld: Double;
    procedure SetPesBruOld(const pPesBru: Double);
    function GetPesLiqOld: Double;
    procedure SetPesLiqOld(const pPesLiq: Double);
    function GetCodTprOld: string;
    procedure SetCodTprOld(const pCodTpr: string);
    function GetPreUniOld: Double;
    procedure SetPreUniOld(const pPreUni: Double);
    function GetPreEstOld: Double;
    procedure SetPreEstOld(const pPreEst: Double);
    function GetPreBasOld: Double;
    procedure SetPreBasOld(const pPreBas: Double);
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
    function GetSalCanOld: Char;
    procedure SetSalCanOld(const pSalCan: Char);
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
    function GetVlrBidOld: Double;
    procedure SetVlrBidOld(const pVlrBid: Double);
    function GetVlrIpdOld: Double;
    procedure SetVlrIpdOld(const pVlrIpd: Double);
    function GetVlrBicOld: Double;
    procedure SetVlrBicOld(const pVlrBic: Double);
    function GetVlrIcmOld: Double;
    procedure SetVlrIcmOld(const pVlrIcm: Double);
    function GetVlrDfaOld: Double;
    procedure SetVlrDfaOld(const pVlrDfa: Double);
    function GetVlrBsiOld: Double;
    procedure SetVlrBsiOld(const pVlrBsi: Double);
    function GetVlrIcsOld: Double;
    procedure SetVlrIcsOld(const pVlrIcs: Double);
    function GetVlrBsdOld: Double;
    procedure SetVlrBsdOld(const pVlrBsd: Double);
    function GetVlrIsdOld: Double;
    procedure SetVlrIsdOld(const pVlrIsd: Double);
    function GetVlrBspOld: Double;
    procedure SetVlrBspOld(const pVlrBsp: Double);
    function GetVlrStpOld: Double;
    procedure SetVlrStpOld(const pVlrStp: Double);
    function GetVlrBscOld: Double;
    procedure SetVlrBscOld(const pVlrBsc: Double);
    function GetVlrStcOld: Double;
    procedure SetVlrStcOld(const pVlrStc: Double);
    function GetVlrIipOld: Double;
    procedure SetVlrIipOld(const pVlrIip: Double);
    function GetVlrIicOld: Double;
    procedure SetVlrIicOld(const pVlrIic: Double);
    function GetVlrOipOld: Double;
    procedure SetVlrOipOld(const pVlrOip: Double);
    function GetVlrOicOld: Double;
    procedure SetVlrOicOld(const pVlrOic: Double);
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
    function GetCodFabOld: string;
    procedure SetCodFabOld(const pCodFab: string);
    function GetUsuGerOld: Integer;
    procedure SetUsuGerOld(const pUsuGer: Integer);
    function GetDatGerOld: TDate;
    procedure SetDatGerOld(const pDatGer: TDate);
    function GetHorGerOld: Integer;
    procedure SetHorGerOld(const pHorGer: Integer);
    function GetNumEpiOld: Integer;
    procedure SetNumEpiOld(const pNumEpi: Integer);
    function GetDatVltOld: TDate;
    procedure SetDatVltOld(const pDatVlt: TDate);
    function GetVlrBpiOld: Double;
    procedure SetVlrBpiOld(const pVlrBpi: Double);
    function GetVlrPisOld: Double;
    procedure SetVlrPisOld(const pVlrPis: Double);
    function GetFilCtrOld: Integer;
    procedure SetFilCtrOld(const pFilCtr: Integer);
    function GetNumCtrOld: Integer;
    procedure SetNumCtrOld(const pNumCtr: Integer);
    function GetDatCptOld: TDate;
    procedure SetDatCptOld(const pDatCpt: TDate);
    function GetSeqCcpOld: Integer;
    procedure SetSeqCcpOld(const pSeqCcp: Integer);
    function GetIntPatOld: Char;
    procedure SetIntPatOld(const pIntPat: Char);
    function GetNotForOld: Double;
    procedure SetNotForOld(const pNotFor: Double);
    function GetNotProOld: Double;
    procedure SetNotProOld(const pNotPro: Double);
    function GetProFabOld: string;
    procedure SetProFabOld(const pProFab: string);
    function GetSeqIscOld: Integer;
    procedure SetSeqIscOld(const pSeqIsc: Integer);
    function GetVlrBcrOld: Double;
    procedure SetVlrBcrOld(const pVlrBcr: Double);
    function GetVlrCorOld: Double;
    procedure SetVlrCorOld(const pVlrCor: Double);
    function GetPerIimOld: Double;
    procedure SetPerIimOld(const pPerIim: Double);
    function GetVlrBiiOld: Double;
    procedure SetVlrBiiOld(const pVlrBii: Double);
    function GetVlrIimOld: Double;
    procedure SetVlrIimOld(const pVlrIim: Double);
    function GetVlrRisOld: Double;
    procedure SetVlrRisOld(const pVlrRis: Double);
    function GetCodBemOld: string;
    procedure SetCodBemOld(const pCodBem: string);
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
    function GetPerDs1Old: Double;
    procedure SetPerDs1Old(const pPerDs1: Double);
    function GetPerDs2Old: Double;
    procedure SetPerDs2Old(const pPerDs2: Double);
    function GetBecIpiOld: Double;
    procedure SetBecIpiOld(const pBecIpi: Double);
    function GetVecIpiOld: Double;
    procedure SetVecIpiOld(const pVecIpi: Double);
    function GetBecIcmOld: Double;
    procedure SetBecIcmOld(const pBecIcm: Double);
    function GetVecIcmOld: Double;
    procedure SetVecIcmOld(const pVecIcm: Double);
    function GetProForOld: string;
    procedure SetProForOld(const pProFor: string);
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
    function GetFilPedOld: Integer;
    procedure SetFilPedOld(const pFilPed: Integer);
    function GetNumPedOld: Integer;
    procedure SetNumPedOld(const pNumPed: Integer);
    function GetSeqIpdOld: Integer;
    procedure SetSeqIpdOld(const pSeqIpd: Integer);
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
    function GetCstIpiOld: string;
    procedure SetCstIpiOld(const pCstIpi: string);
    function GetCstPisOld: string;
    procedure SetCstPisOld(const pCstPis: string);
    function GetCstCofOld: string;
    procedure SetCstCofOld(const pCstCof: string);
    function GetCodDfsOld: Integer;
    procedure SetCodDfsOld(const pCodDfs: Integer);
    function GetVlrAjsOld: Double;
    procedure SetVlrAjsOld(const pVlrAjs: Double);
    function GetSeqEveOld: Integer;
    procedure SetSeqEveOld(const pSeqEve: Integer);
    function GetNumAdiOld: Integer;
    procedure SetNumAdiOld(const pNumAdi: Integer);
    function GetSeqAdiOld: Integer;
    procedure SetSeqAdiOld(const pSeqAdi: Integer);
    function GetDscAdiOld: Double;
    procedure SetDscAdiOld(const pDscAdi: Double);
    function GetFabEstOld: string;
    procedure SetFabEstOld(const pFabEst: string);
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
    function GetQtdBpfOld: Double;
    procedure SetQtdBpfOld(const pQtdBpf: Double);
    function GetAliPifOld: Double;
    procedure SetAliPifOld(const pAliPif: Double);
    function GetQtdBcfOld: Double;
    procedure SetQtdBcfOld(const pQtdBcf: Double);
    function GetAliCffOld: Double;
    procedure SetAliCffOld(const pAliCff: Double);
    function GetVlrSubOld: Double;
    procedure SetVlrSubOld(const pVlrSub: Double);
    function GetIndVipOld: Char;
    procedure SetIndVipOld(const pIndVip: Char);
    function GetOriMerOld: Char;
    procedure SetOriMerOld(const pOriMer: Char);
    function GetPerCitOld: Double;
    procedure SetPerCitOld(const pPerCit: Double);
    function GetVlrCitOld: Double;
    procedure SetVlrCitOld(const pVlrCit: Double);
    function GetBasCreOld: Integer;
    procedure SetBasCreOld(const pBasCre: Integer);
    function GetPecIcmOld: Double;
    procedure SetPecIcmOld(const pPecIcm: Double);
    function GetPecIpiOld: Double;
    procedure SetPecIpiOld(const pPecIpi: Double);
    function GetTipCurOld: Integer;
    procedure SetTipCurOld(const pTipCur: Integer);
    function GetPerPirOld: Double;
    procedure SetPerPirOld(const pPerPir: Double);
    function GetPerCorOld: Double;
    procedure SetPerCorOld(const pPerCor: Double);
    function GetPerPimOld: Double;
    procedure SetPerPimOld(const pPerPim: Double);
    function GetPerCimOld: Double;
    procedure SetPerCimOld(const pPerCim: Double);
    function GetEmpCtoOld: Integer;
    procedure SetEmpCtoOld(const pEmpCto: Integer);
    function GetCodPcoOld: Integer;
    procedure SetCodPcoOld(const pCodPco: Integer);
    function GetFilCtoOld: Integer;
    procedure SetFilCtoOld(const pFilCto: Integer);
    function GetCptPcoOld: TDate;
    procedure SetCptPcoOld(const pCptPco: TDate);
    function GetVlrImpOld: Double;
    procedure SetVlrImpOld(const pVlrImp: Double);
    function GetCoeFciOld: Double;
    procedure SetCoeFciOld(const pCoeFci: Double);
    function GetCodFciOld: string;
    procedure SetCodFciOld(const pCodFci: string);
    function GetUSU_NumInvOld: string;
    procedure SetUSU_NumInvOld(const pUSU_NumInv: string);
    function GetUSU_VlrBsiOld: Double;
    procedure SetUSU_VlrBsiOld(const pUSU_VlrBsi: Double);
    function GetUSU_VlrIcsOld: Double;
    procedure SetUSU_VlrIcsOld(const pUSU_VlrIcs: Double);
    function GetUSU_NumDoiOld: string;
    procedure SetUSU_NumDoiOld(const pUSU_NumDoi: string);
    function GetUSU_OcpFatOld: Integer;
    procedure SetUSU_OcpFatOld(const pUSU_OcpFat: Integer);
    function GetUSU_AcrDesOld: Double;
    procedure SetUSU_AcrDesOld(const pUSU_AcrDes: Double);
    function GetUSU_DesDivOld: string;
    procedure SetUSU_DesDivOld(const pUSU_DesDiv: string);
    function GetUSU_DesSolOld: string;
    procedure SetUSU_DesSolOld(const pUSU_DesSol: string);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property CodEmp: Integer read GetCodEmp write SetCodEmp;
    property CodFil: Integer read GetCodFil write SetCodFil;
    property CodFor: Integer read GetCodFor write SetCodFor;
    property NumNfc: Integer read GetNumNfc write SetNumNfc;
    property CodSnf: string read GetCodSnf write SetCodSnf;
    property SeqIpc: Integer read GetSeqIpc write SetSeqIpc;
    property TnsPro: string read GetTnsPro write SetTnsPro;
    property NopPro: string read GetNopPro write SetNopPro;
    property FilOcp: Integer read GetFilOcp write SetFilOcp;
    property NumOcp: Integer read GetNumOcp write SetNumOcp;
    property SeqIpo: Integer read GetSeqIpo write SetSeqIpo;
    property CodPro: string read GetCodPro write SetCodPro;
    property CodDer: string read GetCodDer write SetCodDer;
    property CplIpc: string read GetCplIpc write SetCplIpc;
    property CodFam: string read GetCodFam write SetCodFam;
    property CodClf: string read GetCodClf write SetCodClf;
    property CodStr: string read GetCodStr write SetCodStr;
    property CodTic: string read GetCodTic write SetCodTic;
    property CodTrd: string read GetCodTrd write SetCodTrd;
    property CodTst: string read GetCodTst write SetCodTst;
    property CodStp: string read GetCodStp write SetCodStp;
    property CodStc: string read GetCodStc write SetCodStc;
    property LauTec: string read GetLauTec write SetLauTec;
    property UsuLau: Integer read GetUsuLau write SetUsuLau;
    property DatLau: TDate read GetDatLau write SetDatLau;
    property HorLau: Integer read GetHorLau write SetHorLau;
    property CodDep: string read GetCodDep write SetCodDep;
    property CodLot: string read GetCodLot write SetCodLot;
    property QtdRec: Double read GetQtdRec write SetQtdRec;
    property UniNfc: string read GetUniNfc write SetUniNfc;
    property QtdAjb: Double read GetQtdAjb write SetQtdAjb;
    property QtdDev: Double read GetQtdDev write SetQtdDev;
    property UniMed: string read GetUniMed write SetUniMed;
    property QtdEst: Double read GetQtdEst write SetQtdEst;
    property VlrFum: Double read GetVlrFum write SetVlrFum;
    property QtdFre: Double read GetQtdFre write SetQtdFre;
    property ForFre: Integer read GetForFre write SetForFre;
    property PesBru: Double read GetPesBru write SetPesBru;
    property PesLiq: Double read GetPesLiq write SetPesLiq;
    property CodTpr: string read GetCodTpr write SetCodTpr;
    property PreUni: Double read GetPreUni write SetPreUni;
    property PreEst: Double read GetPreEst write SetPreEst;
    property PreBas: Double read GetPreBas write SetPreBas;
    property PerDsc: Double read GetPerDsc write SetPerDsc;
    property PerDs3: Double read GetPerDs3 write SetPerDs3;
    property PerDs4: Double read GetPerDs4 write SetPerDs4;
    property PerDs5: Double read GetPerDs5 write SetPerDs5;
    property PerIpi: Double read GetPerIpi write SetPerIpi;
    property PerIcm: Double read GetPerIcm write SetPerIcm;
    property PerFun: Double read GetPerFun write SetPerFun;
    property SalCan: Char read GetSalCan write SetSalCan;
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
    property VlrBid: Double read GetVlrBid write SetVlrBid;
    property VlrIpd: Double read GetVlrIpd write SetVlrIpd;
    property VlrBic: Double read GetVlrBic write SetVlrBic;
    property VlrIcm: Double read GetVlrIcm write SetVlrIcm;
    property VlrDfa: Double read GetVlrDfa write SetVlrDfa;
    property VlrBsi: Double read GetVlrBsi write SetVlrBsi;
    property VlrIcs: Double read GetVlrIcs write SetVlrIcs;
    property VlrBsd: Double read GetVlrBsd write SetVlrBsd;
    property VlrIsd: Double read GetVlrIsd write SetVlrIsd;
    property VlrBsp: Double read GetVlrBsp write SetVlrBsp;
    property VlrStp: Double read GetVlrStp write SetVlrStp;
    property VlrBsc: Double read GetVlrBsc write SetVlrBsc;
    property VlrStc: Double read GetVlrStc write SetVlrStc;
    property VlrIip: Double read GetVlrIip write SetVlrIip;
    property VlrIic: Double read GetVlrIic write SetVlrIic;
    property VlrOip: Double read GetVlrOip write SetVlrOip;
    property VlrOic: Double read GetVlrOic write SetVlrOic;
    property VlrLpr: Double read GetVlrLpr write SetVlrLpr;
    property VlrLou: Double read GetVlrLou write SetVlrLou;
    property VlrLiq: Double read GetVlrLiq write SetVlrLiq;
    property VlrFin: Double read GetVlrFin write SetVlrFin;
    property AcrFin: Double read GetAcrFin write SetAcrFin;
    property EmpNfv: Integer read GetEmpNfv write SetEmpNfv;
    property FilNfv: Integer read GetFilNfv write SetFilNfv;
    property SnfNfv: string read GetSnfNfv write SetSnfNfv;
    property NumNfv: Integer read GetNumNfv write SetNumNfv;
    property SeqIpv: Integer read GetSeqIpv write SetSeqIpv;
    property CodFab: string read GetCodFab write SetCodFab;
    property UsuGer: Integer read GetUsuGer write SetUsuGer;
    property DatGer: TDate read GetDatGer write SetDatGer;
    property HorGer: Integer read GetHorGer write SetHorGer;
    property NumEpi: Integer read GetNumEpi write SetNumEpi;
    property DatVlt: TDate read GetDatVlt write SetDatVlt;
    property VlrBpi: Double read GetVlrBpi write SetVlrBpi;
    property VlrPis: Double read GetVlrPis write SetVlrPis;
    property FilCtr: Integer read GetFilCtr write SetFilCtr;
    property NumCtr: Integer read GetNumCtr write SetNumCtr;
    property DatCpt: TDate read GetDatCpt write SetDatCpt;
    property SeqCcp: Integer read GetSeqCcp write SetSeqCcp;
    property IntPat: Char read GetIntPat write SetIntPat;
    property NotFor: Double read GetNotFor write SetNotFor;
    property NotPro: Double read GetNotPro write SetNotPro;
    property ProFab: string read GetProFab write SetProFab;
    property SeqIsc: Integer read GetSeqIsc write SetSeqIsc;
    property VlrBcr: Double read GetVlrBcr write SetVlrBcr;
    property VlrCor: Double read GetVlrCor write SetVlrCor;
    property PerIim: Double read GetPerIim write SetPerIim;
    property VlrBii: Double read GetVlrBii write SetVlrBii;
    property VlrIim: Double read GetVlrIim write SetVlrIim;
    property VlrRis: Double read GetVlrRis write SetVlrRis;
    property CodBem: string read GetCodBem write SetCodBem;
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
    property PerDs1: Double read GetPerDs1 write SetPerDs1;
    property PerDs2: Double read GetPerDs2 write SetPerDs2;
    property BecIpi: Double read GetBecIpi write SetBecIpi;
    property VecIpi: Double read GetVecIpi write SetVecIpi;
    property BecIcm: Double read GetBecIcm write SetBecIcm;
    property VecIcm: Double read GetVecIcm write SetVecIcm;
    property ProFor: string read GetProFor write SetProFor;
    property VlrFei: Double read GetVlrFei write SetVlrFei;
    property VlrSei: Double read GetVlrSei write SetVlrSei;
    property VlrOui: Double read GetVlrOui write SetVlrOui;
    property BcoImp: Double read GetBcoImp write SetBcoImp;
    property CofImp: Double read GetCofImp write SetCofImp;
    property BpiImp: Double read GetBpiImp write SetBpiImp;
    property PisImp: Double read GetPisImp write SetPisImp;
    property FilPed: Integer read GetFilPed write SetFilPed;
    property NumPed: Integer read GetNumPed write SetNumPed;
    property SeqIpd: Integer read GetSeqIpd write SetSeqIpd;
    property VlrDm1: Double read GetVlrDm1 write SetVlrDm1;
    property VlrDm2: Double read GetVlrDm2 write SetVlrDm2;
    property VlrDm3: Double read GetVlrDm3 write SetVlrDm3;
    property VlrDm4: Double read GetVlrDm4 write SetVlrDm4;
    property VlrDm5: Double read GetVlrDm5 write SetVlrDm5;
    property VlrDm6: Double read GetVlrDm6 write SetVlrDm6;
    property BemPri: string read GetBemPri write SetBemPri;
    property VlrBpf: Double read GetVlrBpf write SetVlrBpf;
    property PerPif: Double read GetPerPif write SetPerPif;
    property VlrPif: Double read GetVlrPif write SetVlrPif;
    property VlrBcf: Double read GetVlrBcf write SetVlrBcf;
    property PerCff: Double read GetPerCff write SetPerCff;
    property VlrCff: Double read GetVlrCff write SetVlrCff;
    property CstIpi: string read GetCstIpi write SetCstIpi;
    property CstPis: string read GetCstPis write SetCstPis;
    property CstCof: string read GetCstCof write SetCstCof;
    property CodDfs: Integer read GetCodDfs write SetCodDfs;
    property VlrAjs: Double read GetVlrAjs write SetVlrAjs;
    property SeqEve: Integer read GetSeqEve write SetSeqEve;
    property NumAdi: Integer read GetNumAdi write SetNumAdi;
    property SeqAdi: Integer read GetSeqAdi write SetSeqAdi;
    property DscAdi: Double read GetDscAdi write SetDscAdi;
    property FabEst: string read GetFabEst write SetFabEst;
    property QtdBpi: Double read GetQtdBpi write SetQtdBpi;
    property AliPis: Double read GetAliPis write SetAliPis;
    property QtdBco: Double read GetQtdBco write SetQtdBco;
    property AliCof: Double read GetAliCof write SetAliCof;
    property QtdBip: Double read GetQtdBip write SetQtdBip;
    property AliIpi: Double read GetAliIpi write SetAliIpi;
    property QtdBpf: Double read GetQtdBpf write SetQtdBpf;
    property AliPif: Double read GetAliPif write SetAliPif;
    property QtdBcf: Double read GetQtdBcf write SetQtdBcf;
    property AliCff: Double read GetAliCff write SetAliCff;
    property VlrSub: Double read GetVlrSub write SetVlrSub;
    property IndVip: Char read GetIndVip write SetIndVip;
    property OriMer: Char read GetOriMer write SetOriMer;
    property PerCit: Double read GetPerCit write SetPerCit;
    property VlrCit: Double read GetVlrCit write SetVlrCit;
    property BasCre: Integer read GetBasCre write SetBasCre;
    property PecIcm: Double read GetPecIcm write SetPecIcm;
    property PecIpi: Double read GetPecIpi write SetPecIpi;
    property TipCur: Integer read GetTipCur write SetTipCur;
    property PerPir: Double read GetPerPir write SetPerPir;
    property PerCor: Double read GetPerCor write SetPerCor;
    property PerPim: Double read GetPerPim write SetPerPim;
    property PerCim: Double read GetPerCim write SetPerCim;
    property EmpCto: Integer read GetEmpCto write SetEmpCto;
    property CodPco: Integer read GetCodPco write SetCodPco;
    property FilCto: Integer read GetFilCto write SetFilCto;
    property CptPco: TDate read GetCptPco write SetCptPco;
    property VlrImp: Double read GetVlrImp write SetVlrImp;
    property CoeFci: Double read GetCoeFci write SetCoeFci;
    property CodFci: string read GetCodFci write SetCodFci;
    property USU_NumInv: string read GetUSU_NumInv write SetUSU_NumInv;
    property USU_VlrBsi: Double read GetUSU_VlrBsi write SetUSU_VlrBsi;
    property USU_VlrIcs: Double read GetUSU_VlrIcs write SetUSU_VlrIcs;
    property USU_NumDoi: string read GetUSU_NumDoi write SetUSU_NumDoi;
    property USU_OcpFat: Integer read GetUSU_OcpFat write SetUSU_OcpFat;
    property USU_AcrDes: Double read GetUSU_AcrDes write SetUSU_AcrDes;
    property USU_DesDiv: string read GetUSU_DesDiv write SetUSU_DesDiv;
    property USU_DesSol: string read GetUSU_DesSol write SetUSU_DesSol;

    property OLD_CodEmp: Integer read GetCodEmpOLD write SetCodEmpOLD;
    property OLD_CodFil: Integer read GetCodFilOLD write SetCodFilOLD;
    property OLD_CodFor: Integer read GetCodForOLD write SetCodForOLD;
    property OLD_NumNfc: Integer read GetNumNfcOLD write SetNumNfcOLD;
    property OLD_CodSnf: string read GetCodSnfOLD write SetCodSnfOLD;
    property OLD_SeqIpc: Integer read GetSeqIpcOLD write SetSeqIpcOLD;
    property OLD_TnsPro: string read GetTnsProOLD write SetTnsProOLD;
    property OLD_NopPro: string read GetNopProOLD write SetNopProOLD;
    property OLD_FilOcp: Integer read GetFilOcpOLD write SetFilOcpOLD;
    property OLD_NumOcp: Integer read GetNumOcpOLD write SetNumOcpOLD;
    property OLD_SeqIpo: Integer read GetSeqIpoOLD write SetSeqIpoOLD;
    property OLD_CodPro: string read GetCodProOLD write SetCodProOLD;
    property OLD_CodDer: string read GetCodDerOLD write SetCodDerOLD;
    property OLD_CplIpc: string read GetCplIpcOLD write SetCplIpcOLD;
    property OLD_CodFam: string read GetCodFamOLD write SetCodFamOLD;
    property OLD_CodClf: string read GetCodClfOLD write SetCodClfOLD;
    property OLD_CodStr: string read GetCodStrOLD write SetCodStrOLD;
    property OLD_CodTic: string read GetCodTicOLD write SetCodTicOLD;
    property OLD_CodTrd: string read GetCodTrdOLD write SetCodTrdOLD;
    property OLD_CodTst: string read GetCodTstOLD write SetCodTstOLD;
    property OLD_CodStp: string read GetCodStpOLD write SetCodStpOLD;
    property OLD_CodStc: string read GetCodStcOLD write SetCodStcOLD;
    property OLD_LauTec: string read GetLauTecOLD write SetLauTecOLD;
    property OLD_UsuLau: Integer read GetUsuLauOLD write SetUsuLauOLD;
    property OLD_DatLau: TDate read GetDatLauOLD write SetDatLauOLD;
    property OLD_HorLau: Integer read GetHorLauOLD write SetHorLauOLD;
    property OLD_CodDep: string read GetCodDepOLD write SetCodDepOLD;
    property OLD_CodLot: string read GetCodLotOLD write SetCodLotOLD;
    property OLD_QtdRec: Double read GetQtdRecOLD write SetQtdRecOLD;
    property OLD_UniNfc: string read GetUniNfcOLD write SetUniNfcOLD;
    property OLD_QtdAjb: Double read GetQtdAjbOLD write SetQtdAjbOLD;
    property OLD_QtdDev: Double read GetQtdDevOLD write SetQtdDevOLD;
    property OLD_UniMed: string read GetUniMedOLD write SetUniMedOLD;
    property OLD_QtdEst: Double read GetQtdEstOLD write SetQtdEstOLD;
    property OLD_VlrFum: Double read GetVlrFumOLD write SetVlrFumOLD;
    property OLD_QtdFre: Double read GetQtdFreOLD write SetQtdFreOLD;
    property OLD_ForFre: Integer read GetForFreOLD write SetForFreOLD;
    property OLD_PesBru: Double read GetPesBruOLD write SetPesBruOLD;
    property OLD_PesLiq: Double read GetPesLiqOLD write SetPesLiqOLD;
    property OLD_CodTpr: string read GetCodTprOLD write SetCodTprOLD;
    property OLD_PreUni: Double read GetPreUniOLD write SetPreUniOLD;
    property OLD_PreEst: Double read GetPreEstOLD write SetPreEstOLD;
    property OLD_PreBas: Double read GetPreBasOLD write SetPreBasOLD;
    property OLD_PerDsc: Double read GetPerDscOLD write SetPerDscOLD;
    property OLD_PerDs3: Double read GetPerDs3OLD write SetPerDs3OLD;
    property OLD_PerDs4: Double read GetPerDs4OLD write SetPerDs4OLD;
    property OLD_PerDs5: Double read GetPerDs5OLD write SetPerDs5OLD;
    property OLD_PerIpi: Double read GetPerIpiOLD write SetPerIpiOLD;
    property OLD_PerIcm: Double read GetPerIcmOLD write SetPerIcmOLD;
    property OLD_PerFun: Double read GetPerFunOLD write SetPerFunOLD;
    property OLD_SalCan: Char read GetSalCanOLD write SetSalCanOLD;
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
    property OLD_VlrBid: Double read GetVlrBidOLD write SetVlrBidOLD;
    property OLD_VlrIpd: Double read GetVlrIpdOLD write SetVlrIpdOLD;
    property OLD_VlrBic: Double read GetVlrBicOLD write SetVlrBicOLD;
    property OLD_VlrIcm: Double read GetVlrIcmOLD write SetVlrIcmOLD;
    property OLD_VlrDfa: Double read GetVlrDfaOLD write SetVlrDfaOLD;
    property OLD_VlrBsi: Double read GetVlrBsiOLD write SetVlrBsiOLD;
    property OLD_VlrIcs: Double read GetVlrIcsOLD write SetVlrIcsOLD;
    property OLD_VlrBsd: Double read GetVlrBsdOLD write SetVlrBsdOLD;
    property OLD_VlrIsd: Double read GetVlrIsdOLD write SetVlrIsdOLD;
    property OLD_VlrBsp: Double read GetVlrBspOLD write SetVlrBspOLD;
    property OLD_VlrStp: Double read GetVlrStpOLD write SetVlrStpOLD;
    property OLD_VlrBsc: Double read GetVlrBscOLD write SetVlrBscOLD;
    property OLD_VlrStc: Double read GetVlrStcOLD write SetVlrStcOLD;
    property OLD_VlrIip: Double read GetVlrIipOLD write SetVlrIipOLD;
    property OLD_VlrIic: Double read GetVlrIicOLD write SetVlrIicOLD;
    property OLD_VlrOip: Double read GetVlrOipOLD write SetVlrOipOLD;
    property OLD_VlrOic: Double read GetVlrOicOLD write SetVlrOicOLD;
    property OLD_VlrLpr: Double read GetVlrLprOLD write SetVlrLprOLD;
    property OLD_VlrLou: Double read GetVlrLouOLD write SetVlrLouOLD;
    property OLD_VlrLiq: Double read GetVlrLiqOLD write SetVlrLiqOLD;
    property OLD_VlrFin: Double read GetVlrFinOLD write SetVlrFinOLD;
    property OLD_AcrFin: Double read GetAcrFinOLD write SetAcrFinOLD;
    property OLD_EmpNfv: Integer read GetEmpNfvOLD write SetEmpNfvOLD;
    property OLD_FilNfv: Integer read GetFilNfvOLD write SetFilNfvOLD;
    property OLD_SnfNfv: string read GetSnfNfvOLD write SetSnfNfvOLD;
    property OLD_NumNfv: Integer read GetNumNfvOLD write SetNumNfvOLD;
    property OLD_SeqIpv: Integer read GetSeqIpvOLD write SetSeqIpvOLD;
    property OLD_CodFab: string read GetCodFabOLD write SetCodFabOLD;
    property OLD_UsuGer: Integer read GetUsuGerOLD write SetUsuGerOLD;
    property OLD_DatGer: TDate read GetDatGerOLD write SetDatGerOLD;
    property OLD_HorGer: Integer read GetHorGerOLD write SetHorGerOLD;
    property OLD_NumEpi: Integer read GetNumEpiOLD write SetNumEpiOLD;
    property OLD_DatVlt: TDate read GetDatVltOLD write SetDatVltOLD;
    property OLD_VlrBpi: Double read GetVlrBpiOLD write SetVlrBpiOLD;
    property OLD_VlrPis: Double read GetVlrPisOLD write SetVlrPisOLD;
    property OLD_FilCtr: Integer read GetFilCtrOLD write SetFilCtrOLD;
    property OLD_NumCtr: Integer read GetNumCtrOLD write SetNumCtrOLD;
    property OLD_DatCpt: TDate read GetDatCptOLD write SetDatCptOLD;
    property OLD_SeqCcp: Integer read GetSeqCcpOLD write SetSeqCcpOLD;
    property OLD_IntPat: Char read GetIntPatOLD write SetIntPatOLD;
    property OLD_NotFor: Double read GetNotForOLD write SetNotForOLD;
    property OLD_NotPro: Double read GetNotProOLD write SetNotProOLD;
    property OLD_ProFab: string read GetProFabOLD write SetProFabOLD;
    property OLD_SeqIsc: Integer read GetSeqIscOLD write SetSeqIscOLD;
    property OLD_VlrBcr: Double read GetVlrBcrOLD write SetVlrBcrOLD;
    property OLD_VlrCor: Double read GetVlrCorOLD write SetVlrCorOLD;
    property OLD_PerIim: Double read GetPerIimOLD write SetPerIimOLD;
    property OLD_VlrBii: Double read GetVlrBiiOLD write SetVlrBiiOLD;
    property OLD_VlrIim: Double read GetVlrIimOLD write SetVlrIimOLD;
    property OLD_VlrRis: Double read GetVlrRisOLD write SetVlrRisOLD;
    property OLD_CodBem: string read GetCodBemOLD write SetCodBemOLD;
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
    property OLD_PerDs1: Double read GetPerDs1OLD write SetPerDs1OLD;
    property OLD_PerDs2: Double read GetPerDs2OLD write SetPerDs2OLD;
    property OLD_BecIpi: Double read GetBecIpiOLD write SetBecIpiOLD;
    property OLD_VecIpi: Double read GetVecIpiOLD write SetVecIpiOLD;
    property OLD_BecIcm: Double read GetBecIcmOLD write SetBecIcmOLD;
    property OLD_VecIcm: Double read GetVecIcmOLD write SetVecIcmOLD;
    property OLD_ProFor: string read GetProForOLD write SetProForOLD;
    property OLD_VlrFei: Double read GetVlrFeiOLD write SetVlrFeiOLD;
    property OLD_VlrSei: Double read GetVlrSeiOLD write SetVlrSeiOLD;
    property OLD_VlrOui: Double read GetVlrOuiOLD write SetVlrOuiOLD;
    property OLD_BcoImp: Double read GetBcoImpOLD write SetBcoImpOLD;
    property OLD_CofImp: Double read GetCofImpOLD write SetCofImpOLD;
    property OLD_BpiImp: Double read GetBpiImpOLD write SetBpiImpOLD;
    property OLD_PisImp: Double read GetPisImpOLD write SetPisImpOLD;
    property OLD_FilPed: Integer read GetFilPedOLD write SetFilPedOLD;
    property OLD_NumPed: Integer read GetNumPedOLD write SetNumPedOLD;
    property OLD_SeqIpd: Integer read GetSeqIpdOLD write SetSeqIpdOLD;
    property OLD_VlrDm1: Double read GetVlrDm1OLD write SetVlrDm1OLD;
    property OLD_VlrDm2: Double read GetVlrDm2OLD write SetVlrDm2OLD;
    property OLD_VlrDm3: Double read GetVlrDm3OLD write SetVlrDm3OLD;
    property OLD_VlrDm4: Double read GetVlrDm4OLD write SetVlrDm4OLD;
    property OLD_VlrDm5: Double read GetVlrDm5OLD write SetVlrDm5OLD;
    property OLD_VlrDm6: Double read GetVlrDm6OLD write SetVlrDm6OLD;
    property OLD_BemPri: string read GetBemPriOLD write SetBemPriOLD;
    property OLD_VlrBpf: Double read GetVlrBpfOLD write SetVlrBpfOLD;
    property OLD_PerPif: Double read GetPerPifOLD write SetPerPifOLD;
    property OLD_VlrPif: Double read GetVlrPifOLD write SetVlrPifOLD;
    property OLD_VlrBcf: Double read GetVlrBcfOLD write SetVlrBcfOLD;
    property OLD_PerCff: Double read GetPerCffOLD write SetPerCffOLD;
    property OLD_VlrCff: Double read GetVlrCffOLD write SetVlrCffOLD;
    property OLD_CstIpi: string read GetCstIpiOLD write SetCstIpiOLD;
    property OLD_CstPis: string read GetCstPisOLD write SetCstPisOLD;
    property OLD_CstCof: string read GetCstCofOLD write SetCstCofOLD;
    property OLD_CodDfs: Integer read GetCodDfsOLD write SetCodDfsOLD;
    property OLD_VlrAjs: Double read GetVlrAjsOLD write SetVlrAjsOLD;
    property OLD_SeqEve: Integer read GetSeqEveOLD write SetSeqEveOLD;
    property OLD_NumAdi: Integer read GetNumAdiOLD write SetNumAdiOLD;
    property OLD_SeqAdi: Integer read GetSeqAdiOLD write SetSeqAdiOLD;
    property OLD_DscAdi: Double read GetDscAdiOLD write SetDscAdiOLD;
    property OLD_FabEst: string read GetFabEstOLD write SetFabEstOLD;
    property OLD_QtdBpi: Double read GetQtdBpiOLD write SetQtdBpiOLD;
    property OLD_AliPis: Double read GetAliPisOLD write SetAliPisOLD;
    property OLD_QtdBco: Double read GetQtdBcoOLD write SetQtdBcoOLD;
    property OLD_AliCof: Double read GetAliCofOLD write SetAliCofOLD;
    property OLD_QtdBip: Double read GetQtdBipOLD write SetQtdBipOLD;
    property OLD_AliIpi: Double read GetAliIpiOLD write SetAliIpiOLD;
    property OLD_QtdBpf: Double read GetQtdBpfOLD write SetQtdBpfOLD;
    property OLD_AliPif: Double read GetAliPifOLD write SetAliPifOLD;
    property OLD_QtdBcf: Double read GetQtdBcfOLD write SetQtdBcfOLD;
    property OLD_AliCff: Double read GetAliCffOLD write SetAliCffOLD;
    property OLD_VlrSub: Double read GetVlrSubOLD write SetVlrSubOLD;
    property OLD_IndVip: Char read GetIndVipOLD write SetIndVipOLD;
    property OLD_OriMer: Char read GetOriMerOLD write SetOriMerOLD;
    property OLD_PerCit: Double read GetPerCitOLD write SetPerCitOLD;
    property OLD_VlrCit: Double read GetVlrCitOLD write SetVlrCitOLD;
    property OLD_BasCre: Integer read GetBasCreOLD write SetBasCreOLD;
    property OLD_PecIcm: Double read GetPecIcmOLD write SetPecIcmOLD;
    property OLD_PecIpi: Double read GetPecIpiOLD write SetPecIpiOLD;
    property OLD_TipCur: Integer read GetTipCurOLD write SetTipCurOLD;
    property OLD_PerPir: Double read GetPerPirOLD write SetPerPirOLD;
    property OLD_PerCor: Double read GetPerCorOLD write SetPerCorOLD;
    property OLD_PerPim: Double read GetPerPimOLD write SetPerPimOLD;
    property OLD_PerCim: Double read GetPerCimOLD write SetPerCimOLD;
    property OLD_EmpCto: Integer read GetEmpCtoOLD write SetEmpCtoOLD;
    property OLD_CodPco: Integer read GetCodPcoOLD write SetCodPcoOLD;
    property OLD_FilCto: Integer read GetFilCtoOLD write SetFilCtoOLD;
    property OLD_CptPco: TDate read GetCptPcoOLD write SetCptPcoOLD;
    property OLD_VlrImp: Double read GetVlrImpOLD write SetVlrImpOLD;
    property OLD_CoeFci: Double read GetCoeFciOLD write SetCoeFciOLD;
    property OLD_CodFci: string read GetCodFciOLD write SetCodFciOLD;
    property OLD_USU_NumInv: string read GetUSU_NumInvOLD write SetUSU_NumInvOLD;
    property OLD_USU_VlrBsi: Double read GetUSU_VlrBsiOLD write SetUSU_VlrBsiOLD;
    property OLD_USU_VlrIcs: Double read GetUSU_VlrIcsOLD write SetUSU_VlrIcsOLD;
    property OLD_USU_NumDoi: string read GetUSU_NumDoiOLD write SetUSU_NumDoiOLD;
    property OLD_USU_OcpFat: Integer read GetUSU_OcpFatOLD write SetUSU_OcpFatOLD;
    property OLD_USU_AcrDes: Double read GetUSU_AcrDesOLD write SetUSU_AcrDesOLD;
    property OLD_USU_DesDiv: string read GetUSU_DesDivOLD write SetUSU_DesDivOLD;
    property OLD_USU_DesSol: string read GetUSU_DesSolOLD write SetUSU_DesSolOLD;
  end;

implementation

{ T440IPC }

constructor T440IPC.Create();
begin
  AddForeignKeys(['CodEmp','CodFil','CodFor','NumNfc','CodSnf','UniNfc','UniMed'], ['CodEmp','CodFil','CodFor','NumNfc','CodSnf','UniMed','UniMed']);
  AddPrimaryKeys('CodEmp;CodFil;CodFor;NumNfc;CodSnf;SeqIpc');

  inherited Create('E440IPC');
end;

destructor T440IPC.Destroy();
begin
  inherited;
end;

function T440IPC.GetCodEmp: Integer;
begin
  Result := FCodEmp;
end;

procedure T440IPC.SetCodEmp(const pCodEmp: Integer);
begin
  FCodEmp := pCodEmp;

  CheckField('CodEmp');
end;

function T440IPC.GetCodFil: Integer;
begin
  Result := FCodFil;
end;

procedure T440IPC.SetCodFil(const pCodFil: Integer);
begin
  FCodFil := pCodFil;

  CheckField('CodFil');
end;

function T440IPC.GetCodFor: Integer;
begin
  Result := FCodFor;
end;

procedure T440IPC.SetCodFor(const pCodFor: Integer);
begin
  FCodFor := pCodFor;

  CheckField('CodFor');
end;

function T440IPC.GetNumNfc: Integer;
begin
  Result := FNumNfc;
end;

procedure T440IPC.SetNumNfc(const pNumNfc: Integer);
begin
  FNumNfc := pNumNfc;

  CheckField('NumNfc');
end;

function T440IPC.GetCodSnf: string;
begin
  Result := FCodSnf;
end;

procedure T440IPC.SetCodSnf(const pCodSnf: string);
begin
  FCodSnf := pCodSnf;

  CheckField('CodSnf');
end;

function T440IPC.GetSeqIpc: Integer;
begin
  Result := FSeqIpc;
end;

procedure T440IPC.SetSeqIpc(const pSeqIpc: Integer);
begin
  FSeqIpc := pSeqIpc;

  CheckField('SeqIpc');
end;

function T440IPC.GetTnsPro: string;
begin
  Result := FTnsPro;
end;

procedure T440IPC.SetTnsPro(const pTnsPro: string);
begin
  FTnsPro := pTnsPro;

  CheckField('TnsPro');
end;

function T440IPC.GetNopPro: string;
begin
  Result := FNopPro;
end;

procedure T440IPC.SetNopPro(const pNopPro: string);
begin
  FNopPro := pNopPro;

  CheckField('NopPro');
end;

function T440IPC.GetFilOcp: Integer;
begin
  Result := FFilOcp;
end;

procedure T440IPC.SetFilOcp(const pFilOcp: Integer);
begin
  FFilOcp := pFilOcp;

  CheckField('FilOcp');
end;

function T440IPC.GetNumOcp: Integer;
begin
  Result := FNumOcp;
end;

procedure T440IPC.SetNumOcp(const pNumOcp: Integer);
begin
  FNumOcp := pNumOcp;

  CheckField('NumOcp');
end;

function T440IPC.GetSeqIpo: Integer;
begin
  Result := FSeqIpo;
end;

procedure T440IPC.SetSeqIpo(const pSeqIpo: Integer);
begin
  FSeqIpo := pSeqIpo;

  CheckField('SeqIpo');
end;

function T440IPC.GetCodPro: string;
begin
  Result := FCodPro;
end;

procedure T440IPC.SetCodPro(const pCodPro: string);
begin
  FCodPro := pCodPro;

  CheckField('CodPro');
end;

function T440IPC.GetCodDer: string;
begin
  Result := FCodDer;
end;

procedure T440IPC.SetCodDer(const pCodDer: string);
begin
  FCodDer := pCodDer;

  CheckField('CodDer');
end;

function T440IPC.GetCplIpc: string;
begin
  Result := FCplIpc;
end;

procedure T440IPC.SetCplIpc(const pCplIpc: string);
begin
  FCplIpc := pCplIpc;

  CheckField('CplIpc');
end;

function T440IPC.GetCodFam: string;
begin
  Result := FCodFam;
end;

procedure T440IPC.SetCodFam(const pCodFam: string);
begin
  FCodFam := pCodFam;

  CheckField('CodFam');
end;

function T440IPC.GetCodClf: string;
begin
  Result := FCodClf;
end;

procedure T440IPC.SetCodClf(const pCodClf: string);
begin
  FCodClf := pCodClf;

  CheckField('CodClf');
end;

function T440IPC.GetCodStr: string;
begin
  Result := FCodStr;
end;

procedure T440IPC.SetCodStr(const pCodStr: string);
begin
  FCodStr := pCodStr;

  CheckField('CodStr');
end;

function T440IPC.GetCodTic: string;
begin
  Result := FCodTic;
end;

procedure T440IPC.SetCodTic(const pCodTic: string);
begin
  FCodTic := pCodTic;

  CheckField('CodTic');
end;

function T440IPC.GetCodTrd: string;
begin
  Result := FCodTrd;
end;

procedure T440IPC.SetCodTrd(const pCodTrd: string);
begin
  FCodTrd := pCodTrd;

  CheckField('CodTrd');
end;

function T440IPC.GetCodTst: string;
begin
  Result := FCodTst;
end;

procedure T440IPC.SetCodTst(const pCodTst: string);
begin
  FCodTst := pCodTst;

  CheckField('CodTst');
end;

function T440IPC.GetCodStp: string;
begin
  Result := FCodStp;
end;

procedure T440IPC.SetCodStp(const pCodStp: string);
begin
  FCodStp := pCodStp;

  CheckField('CodStp');
end;

function T440IPC.GetCodStc: string;
begin
  Result := FCodStc;
end;

procedure T440IPC.SetCodStc(const pCodStc: string);
begin
  FCodStc := pCodStc;

  CheckField('CodStc');
end;

function T440IPC.GetLauTec: string;
begin
  Result := FLauTec;
end;

procedure T440IPC.SetLauTec(const pLauTec: string);
begin
  FLauTec := pLauTec;

  CheckField('LauTec');
end;

function T440IPC.GetUsuLau: Integer;
begin
  Result := FUsuLau;
end;

procedure T440IPC.SetUsuLau(const pUsuLau: Integer);
begin
  FUsuLau := pUsuLau;

  CheckField('UsuLau');
end;

function T440IPC.GetDatLau: TDate;
begin
  Result := FDatLau;
end;

procedure T440IPC.SetDatLau(const pDatLau: TDate);
begin
  FDatLau := pDatLau;

  CheckField('DatLau');
end;

function T440IPC.GetHorLau: Integer;
begin
  Result := FHorLau;
end;

procedure T440IPC.SetHorLau(const pHorLau: Integer);
begin
  FHorLau := pHorLau;

  CheckField('HorLau');
end;

function T440IPC.GetCodDep: string;
begin
  Result := FCodDep;
end;

procedure T440IPC.SetCodDep(const pCodDep: string);
begin
  FCodDep := pCodDep;

  CheckField('CodDep');
end;

function T440IPC.GetCodLot: string;
begin
  Result := FCodLot;
end;

procedure T440IPC.SetCodLot(const pCodLot: string);
begin
  FCodLot := pCodLot;

  CheckField('CodLot');
end;

function T440IPC.GetQtdRec: Double;
begin
  Result := FQtdRec;
end;

procedure T440IPC.SetQtdRec(const pQtdRec: Double);
begin
  FQtdRec := pQtdRec;

  CheckField('QtdRec');
end;

function T440IPC.GetUniNfc: string;
begin
  Result := FUniNfc;
end;

procedure T440IPC.SetUniNfc(const pUniNfc: string);
begin
  FUniNfc := pUniNfc;

  CheckField('UniNfc');
end;

function T440IPC.GetQtdAjb: Double;
begin
  Result := FQtdAjb;
end;

procedure T440IPC.SetQtdAjb(const pQtdAjb: Double);
begin
  FQtdAjb := pQtdAjb;

  CheckField('QtdAjb');
end;

function T440IPC.GetQtdDev: Double;
begin
  Result := FQtdDev;
end;

procedure T440IPC.SetQtdDev(const pQtdDev: Double);
begin
  FQtdDev := pQtdDev;

  CheckField('QtdDev');
end;

function T440IPC.GetUniMed: string;
begin
  Result := FUniMed;
end;

procedure T440IPC.SetUniMed(const pUniMed: string);
begin
  FUniMed := pUniMed;

  CheckField('UniMed');
end;

function T440IPC.GetQtdEst: Double;
begin
  Result := FQtdEst;
end;

procedure T440IPC.SetQtdEst(const pQtdEst: Double);
begin
  FQtdEst := pQtdEst;

  CheckField('QtdEst');
end;

function T440IPC.GetVlrFum: Double;
begin
  Result := FVlrFum;
end;

procedure T440IPC.SetVlrFum(const pVlrFum: Double);
begin
  FVlrFum := pVlrFum;

  CheckField('VlrFum');
end;

function T440IPC.GetQtdFre: Double;
begin
  Result := FQtdFre;
end;

procedure T440IPC.SetQtdFre(const pQtdFre: Double);
begin
  FQtdFre := pQtdFre;

  CheckField('QtdFre');
end;

function T440IPC.GetForFre: Integer;
begin
  Result := FForFre;
end;

procedure T440IPC.SetForFre(const pForFre: Integer);
begin
  FForFre := pForFre;

  CheckField('ForFre');
end;

function T440IPC.GetPesBru: Double;
begin
  Result := FPesBru;
end;

procedure T440IPC.SetPesBru(const pPesBru: Double);
begin
  FPesBru := pPesBru;

  CheckField('PesBru');
end;

function T440IPC.GetPesLiq: Double;
begin
  Result := FPesLiq;
end;

procedure T440IPC.SetPesLiq(const pPesLiq: Double);
begin
  FPesLiq := pPesLiq;

  CheckField('PesLiq');
end;

function T440IPC.GetCodTpr: string;
begin
  Result := FCodTpr;
end;

procedure T440IPC.SetCodTpr(const pCodTpr: string);
begin
  FCodTpr := pCodTpr;

  CheckField('CodTpr');
end;

function T440IPC.GetPreUni: Double;
begin
  Result := FPreUni;
end;

procedure T440IPC.SetPreUni(const pPreUni: Double);
begin
  FPreUni := pPreUni;

  CheckField('PreUni');
end;

function T440IPC.GetPreEst: Double;
begin
  Result := FPreEst;
end;

procedure T440IPC.SetPreEst(const pPreEst: Double);
begin
  FPreEst := pPreEst;

  CheckField('PreEst');
end;

function T440IPC.GetPreBas: Double;
begin
  Result := FPreBas;
end;

procedure T440IPC.SetPreBas(const pPreBas: Double);
begin
  FPreBas := pPreBas;

  CheckField('PreBas');
end;

function T440IPC.GetPerDsc: Double;
begin
  Result := FPerDsc;
end;

procedure T440IPC.SetPerDsc(const pPerDsc: Double);
begin
  FPerDsc := pPerDsc;

  CheckField('PerDsc');
end;

function T440IPC.GetPerDs3: Double;
begin
  Result := FPerDs3;
end;

procedure T440IPC.SetPerDs3(const pPerDs3: Double);
begin
  FPerDs3 := pPerDs3;

  CheckField('PerDs3');
end;

function T440IPC.GetPerDs4: Double;
begin
  Result := FPerDs4;
end;

procedure T440IPC.SetPerDs4(const pPerDs4: Double);
begin
  FPerDs4 := pPerDs4;

  CheckField('PerDs4');
end;

function T440IPC.GetPerDs5: Double;
begin
  Result := FPerDs5;
end;

procedure T440IPC.SetPerDs5(const pPerDs5: Double);
begin
  FPerDs5 := pPerDs5;

  CheckField('PerDs5');
end;

function T440IPC.GetPerIpi: Double;
begin
  Result := FPerIpi;
end;

procedure T440IPC.SetPerIpi(const pPerIpi: Double);
begin
  FPerIpi := pPerIpi;

  CheckField('PerIpi');
end;

function T440IPC.GetPerIcm: Double;
begin
  Result := FPerIcm;
end;

procedure T440IPC.SetPerIcm(const pPerIcm: Double);
begin
  FPerIcm := pPerIcm;

  CheckField('PerIcm');
end;

function T440IPC.GetPerFun: Double;
begin
  Result := FPerFun;
end;

procedure T440IPC.SetPerFun(const pPerFun: Double);
begin
  FPerFun := pPerFun;

  CheckField('PerFun');
end;

function T440IPC.GetSalCan: Char;
begin
  Result := FSalCan;
end;

procedure T440IPC.SetSalCan(const pSalCan: Char);
begin
  FSalCan := pSalCan;

  CheckField('SalCan');
end;

function T440IPC.GetNumPrj: Integer;
begin
  Result := FNumPrj;
end;

procedure T440IPC.SetNumPrj(const pNumPrj: Integer);
begin
  FNumPrj := pNumPrj;

  CheckField('NumPrj');
end;

function T440IPC.GetCodFpj: Integer;
begin
  Result := FCodFpj;
end;

procedure T440IPC.SetCodFpj(const pCodFpj: Integer);
begin
  FCodFpj := pCodFpj;

  CheckField('CodFpj');
end;

function T440IPC.GetCtaFin: Integer;
begin
  Result := FCtaFin;
end;

procedure T440IPC.SetCtaFin(const pCtaFin: Integer);
begin
  FCtaFin := pCtaFin;

  CheckField('CtaFin');
end;

function T440IPC.GetCtaRed: Integer;
begin
  Result := FCtaRed;
end;

procedure T440IPC.SetCtaRed(const pCtaRed: Integer);
begin
  FCtaRed := pCtaRed;

  CheckField('CtaRed');
end;

function T440IPC.GetCodCcu: string;
begin
  Result := FCodCcu;
end;

procedure T440IPC.SetCodCcu(const pCodCcu: string);
begin
  FCodCcu := pCodCcu;

  CheckField('CodCcu');
end;

function T440IPC.GetVlrFre: Double;
begin
  Result := FVlrFre;
end;

procedure T440IPC.SetVlrFre(const pVlrFre: Double);
begin
  FVlrFre := pVlrFre;

  CheckField('VlrFre');
end;

function T440IPC.GetVlrSeg: Double;
begin
  Result := FVlrSeg;
end;

procedure T440IPC.SetVlrSeg(const pVlrSeg: Double);
begin
  FVlrSeg := pVlrSeg;

  CheckField('VlrSeg');
end;

function T440IPC.GetVlrEmb: Double;
begin
  Result := FVlrEmb;
end;

procedure T440IPC.SetVlrEmb(const pVlrEmb: Double);
begin
  FVlrEmb := pVlrEmb;

  CheckField('VlrEmb');
end;

function T440IPC.GetVlrEnc: Double;
begin
  Result := FVlrEnc;
end;

procedure T440IPC.SetVlrEnc(const pVlrEnc: Double);
begin
  FVlrEnc := pVlrEnc;

  CheckField('VlrEnc');
end;

function T440IPC.GetVlrOut: Double;
begin
  Result := FVlrOut;
end;

procedure T440IPC.SetVlrOut(const pVlrOut: Double);
begin
  FVlrOut := pVlrOut;

  CheckField('VlrOut');
end;

function T440IPC.GetVlrDar: Double;
begin
  Result := FVlrDar;
end;

procedure T440IPC.SetVlrDar(const pVlrDar: Double);
begin
  FVlrDar := pVlrDar;

  CheckField('VlrDar');
end;

function T440IPC.GetVlrFrd: Double;
begin
  Result := FVlrFrd;
end;

procedure T440IPC.SetVlrFrd(const pVlrFrd: Double);
begin
  FVlrFrd := pVlrFrd;

  CheckField('VlrFrd');
end;

function T440IPC.GetVlrOud: Double;
begin
  Result := FVlrOud;
end;

procedure T440IPC.SetVlrOud(const pVlrOud: Double);
begin
  FVlrOud := pVlrOud;

  CheckField('VlrOud');
end;

function T440IPC.GetVlrBru: Double;
begin
  Result := FVlrBru;
end;

procedure T440IPC.SetVlrBru(const pVlrBru: Double);
begin
  FVlrBru := pVlrBru;

  CheckField('VlrBru');
end;

function T440IPC.GetVlrDsc: Double;
begin
  Result := FVlrDsc;
end;

procedure T440IPC.SetVlrDsc(const pVlrDsc: Double);
begin
  FVlrDsc := pVlrDsc;

  CheckField('VlrDsc');
end;

function T440IPC.GetVlrDs1: Double;
begin
  Result := FVlrDs1;
end;

procedure T440IPC.SetVlrDs1(const pVlrDs1: Double);
begin
  FVlrDs1 := pVlrDs1;

  CheckField('VlrDs1');
end;

function T440IPC.GetVlrDs2: Double;
begin
  Result := FVlrDs2;
end;

procedure T440IPC.SetVlrDs2(const pVlrDs2: Double);
begin
  FVlrDs2 := pVlrDs2;

  CheckField('VlrDs2');
end;

function T440IPC.GetVlrDs3: Double;
begin
  Result := FVlrDs3;
end;

procedure T440IPC.SetVlrDs3(const pVlrDs3: Double);
begin
  FVlrDs3 := pVlrDs3;

  CheckField('VlrDs3');
end;

function T440IPC.GetVlrDs4: Double;
begin
  Result := FVlrDs4;
end;

procedure T440IPC.SetVlrDs4(const pVlrDs4: Double);
begin
  FVlrDs4 := pVlrDs4;

  CheckField('VlrDs4');
end;

function T440IPC.GetVlrDs5: Double;
begin
  Result := FVlrDs5;
end;

procedure T440IPC.SetVlrDs5(const pVlrDs5: Double);
begin
  FVlrDs5 := pVlrDs5;

  CheckField('VlrDs5');
end;

function T440IPC.GetVlrDzf: Double;
begin
  Result := FVlrDzf;
end;

procedure T440IPC.SetVlrDzf(const pVlrDzf: Double);
begin
  FVlrDzf := pVlrDzf;

  CheckField('VlrDzf');
end;

function T440IPC.GetVlrBfu: Double;
begin
  Result := FVlrBfu;
end;

procedure T440IPC.SetVlrBfu(const pVlrBfu: Double);
begin
  FVlrBfu := pVlrBfu;

  CheckField('VlrBfu');
end;

function T440IPC.GetVlrFun: Double;
begin
  Result := FVlrFun;
end;

procedure T440IPC.SetVlrFun(const pVlrFun: Double);
begin
  FVlrFun := pVlrFun;

  CheckField('VlrFun');
end;

function T440IPC.GetVlrBip: Double;
begin
  Result := FVlrBip;
end;

procedure T440IPC.SetVlrBip(const pVlrBip: Double);
begin
  FVlrBip := pVlrBip;

  CheckField('VlrBip');
end;

function T440IPC.GetVlrIpi: Double;
begin
  Result := FVlrIpi;
end;

procedure T440IPC.SetVlrIpi(const pVlrIpi: Double);
begin
  FVlrIpi := pVlrIpi;

  CheckField('VlrIpi');
end;

function T440IPC.GetVlrBid: Double;
begin
  Result := FVlrBid;
end;

procedure T440IPC.SetVlrBid(const pVlrBid: Double);
begin
  FVlrBid := pVlrBid;

  CheckField('VlrBid');
end;

function T440IPC.GetVlrIpd: Double;
begin
  Result := FVlrIpd;
end;

procedure T440IPC.SetVlrIpd(const pVlrIpd: Double);
begin
  FVlrIpd := pVlrIpd;

  CheckField('VlrIpd');
end;

function T440IPC.GetVlrBic: Double;
begin
  Result := FVlrBic;
end;

procedure T440IPC.SetVlrBic(const pVlrBic: Double);
begin
  FVlrBic := pVlrBic;

  CheckField('VlrBic');
end;

function T440IPC.GetVlrIcm: Double;
begin
  Result := FVlrIcm;
end;

procedure T440IPC.SetVlrIcm(const pVlrIcm: Double);
begin
  FVlrIcm := pVlrIcm;

  CheckField('VlrIcm');
end;

function T440IPC.GetVlrDfa: Double;
begin
  Result := FVlrDfa;
end;

procedure T440IPC.SetVlrDfa(const pVlrDfa: Double);
begin
  FVlrDfa := pVlrDfa;

  CheckField('VlrDfa');
end;

function T440IPC.GetVlrBsi: Double;
begin
  Result := FVlrBsi;
end;

procedure T440IPC.SetVlrBsi(const pVlrBsi: Double);
begin
  FVlrBsi := pVlrBsi;

  CheckField('VlrBsi');
end;

function T440IPC.GetVlrIcs: Double;
begin
  Result := FVlrIcs;
end;

procedure T440IPC.SetVlrIcs(const pVlrIcs: Double);
begin
  FVlrIcs := pVlrIcs;

  CheckField('VlrIcs');
end;

function T440IPC.GetVlrBsd: Double;
begin
  Result := FVlrBsd;
end;

procedure T440IPC.SetVlrBsd(const pVlrBsd: Double);
begin
  FVlrBsd := pVlrBsd;

  CheckField('VlrBsd');
end;

function T440IPC.GetVlrIsd: Double;
begin
  Result := FVlrIsd;
end;

procedure T440IPC.SetVlrIsd(const pVlrIsd: Double);
begin
  FVlrIsd := pVlrIsd;

  CheckField('VlrIsd');
end;

function T440IPC.GetVlrBsp: Double;
begin
  Result := FVlrBsp;
end;

procedure T440IPC.SetVlrBsp(const pVlrBsp: Double);
begin
  FVlrBsp := pVlrBsp;

  CheckField('VlrBsp');
end;

function T440IPC.GetVlrStp: Double;
begin
  Result := FVlrStp;
end;

procedure T440IPC.SetVlrStp(const pVlrStp: Double);
begin
  FVlrStp := pVlrStp;

  CheckField('VlrStp');
end;

function T440IPC.GetVlrBsc: Double;
begin
  Result := FVlrBsc;
end;

procedure T440IPC.SetVlrBsc(const pVlrBsc: Double);
begin
  FVlrBsc := pVlrBsc;

  CheckField('VlrBsc');
end;

function T440IPC.GetVlrStc: Double;
begin
  Result := FVlrStc;
end;

procedure T440IPC.SetVlrStc(const pVlrStc: Double);
begin
  FVlrStc := pVlrStc;

  CheckField('VlrStc');
end;

function T440IPC.GetVlrIip: Double;
begin
  Result := FVlrIip;
end;

procedure T440IPC.SetVlrIip(const pVlrIip: Double);
begin
  FVlrIip := pVlrIip;

  CheckField('VlrIip');
end;

function T440IPC.GetVlrIic: Double;
begin
  Result := FVlrIic;
end;

procedure T440IPC.SetVlrIic(const pVlrIic: Double);
begin
  FVlrIic := pVlrIic;

  CheckField('VlrIic');
end;

function T440IPC.GetVlrOip: Double;
begin
  Result := FVlrOip;
end;

procedure T440IPC.SetVlrOip(const pVlrOip: Double);
begin
  FVlrOip := pVlrOip;

  CheckField('VlrOip');
end;

function T440IPC.GetVlrOic: Double;
begin
  Result := FVlrOic;
end;

procedure T440IPC.SetVlrOic(const pVlrOic: Double);
begin
  FVlrOic := pVlrOic;

  CheckField('VlrOic');
end;

function T440IPC.GetVlrLpr: Double;
begin
  Result := FVlrLpr;
end;

procedure T440IPC.SetVlrLpr(const pVlrLpr: Double);
begin
  FVlrLpr := pVlrLpr;

  CheckField('VlrLpr');
end;

function T440IPC.GetVlrLou: Double;
begin
  Result := FVlrLou;
end;

procedure T440IPC.SetVlrLou(const pVlrLou: Double);
begin
  FVlrLou := pVlrLou;

  CheckField('VlrLou');
end;

function T440IPC.GetVlrLiq: Double;
begin
  Result := FVlrLiq;
end;

procedure T440IPC.SetVlrLiq(const pVlrLiq: Double);
begin
  FVlrLiq := pVlrLiq;

  CheckField('VlrLiq');
end;

function T440IPC.GetVlrFin: Double;
begin
  Result := FVlrFin;
end;

procedure T440IPC.SetVlrFin(const pVlrFin: Double);
begin
  FVlrFin := pVlrFin;

  CheckField('VlrFin');
end;

function T440IPC.GetAcrFin: Double;
begin
  Result := FAcrFin;
end;

procedure T440IPC.SetAcrFin(const pAcrFin: Double);
begin
  FAcrFin := pAcrFin;

  CheckField('AcrFin');
end;

function T440IPC.GetEmpNfv: Integer;
begin
  Result := FEmpNfv;
end;

procedure T440IPC.SetEmpNfv(const pEmpNfv: Integer);
begin
  FEmpNfv := pEmpNfv;

  CheckField('EmpNfv');
end;

function T440IPC.GetFilNfv: Integer;
begin
  Result := FFilNfv;
end;

procedure T440IPC.SetFilNfv(const pFilNfv: Integer);
begin
  FFilNfv := pFilNfv;

  CheckField('FilNfv');
end;

function T440IPC.GetSnfNfv: string;
begin
  Result := FSnfNfv;
end;

procedure T440IPC.SetSnfNfv(const pSnfNfv: string);
begin
  FSnfNfv := pSnfNfv;

  CheckField('SnfNfv');
end;

function T440IPC.GetNumNfv: Integer;
begin
  Result := FNumNfv;
end;

procedure T440IPC.SetNumNfv(const pNumNfv: Integer);
begin
  FNumNfv := pNumNfv;

  CheckField('NumNfv');
end;

function T440IPC.GetSeqIpv: Integer;
begin
  Result := FSeqIpv;
end;

procedure T440IPC.SetSeqIpv(const pSeqIpv: Integer);
begin
  FSeqIpv := pSeqIpv;

  CheckField('SeqIpv');
end;

function T440IPC.GetCodFab: string;
begin
  Result := FCodFab;
end;

procedure T440IPC.SetCodFab(const pCodFab: string);
begin
  FCodFab := pCodFab;

  CheckField('CodFab');
end;

function T440IPC.GetUsuGer: Integer;
begin
  Result := FUsuGer;
end;

procedure T440IPC.SetUsuGer(const pUsuGer: Integer);
begin
  FUsuGer := pUsuGer;

  CheckField('UsuGer');
end;

function T440IPC.GetDatGer: TDate;
begin
  Result := FDatGer;
end;

procedure T440IPC.SetDatGer(const pDatGer: TDate);
begin
  FDatGer := pDatGer;

  CheckField('DatGer');
end;

function T440IPC.GetHorGer: Integer;
begin
  Result := FHorGer;
end;

procedure T440IPC.SetHorGer(const pHorGer: Integer);
begin
  FHorGer := pHorGer;

  CheckField('HorGer');
end;

function T440IPC.GetNumEpi: Integer;
begin
  Result := FNumEpi;
end;

procedure T440IPC.SetNumEpi(const pNumEpi: Integer);
begin
  FNumEpi := pNumEpi;

  CheckField('NumEpi');
end;

function T440IPC.GetDatVlt: TDate;
begin
  Result := FDatVlt;
end;

procedure T440IPC.SetDatVlt(const pDatVlt: TDate);
begin
  FDatVlt := pDatVlt;

  CheckField('DatVlt');
end;

function T440IPC.GetVlrBpi: Double;
begin
  Result := FVlrBpi;
end;

procedure T440IPC.SetVlrBpi(const pVlrBpi: Double);
begin
  FVlrBpi := pVlrBpi;

  CheckField('VlrBpi');
end;

function T440IPC.GetVlrPis: Double;
begin
  Result := FVlrPis;
end;

procedure T440IPC.SetVlrPis(const pVlrPis: Double);
begin
  FVlrPis := pVlrPis;

  CheckField('VlrPis');
end;

function T440IPC.GetFilCtr: Integer;
begin
  Result := FFilCtr;
end;

procedure T440IPC.SetFilCtr(const pFilCtr: Integer);
begin
  FFilCtr := pFilCtr;

  CheckField('FilCtr');
end;

function T440IPC.GetNumCtr: Integer;
begin
  Result := FNumCtr;
end;

procedure T440IPC.SetNumCtr(const pNumCtr: Integer);
begin
  FNumCtr := pNumCtr;

  CheckField('NumCtr');
end;

function T440IPC.GetDatCpt: TDate;
begin
  Result := FDatCpt;
end;

procedure T440IPC.SetDatCpt(const pDatCpt: TDate);
begin
  FDatCpt := pDatCpt;

  CheckField('DatCpt');
end;

function T440IPC.GetSeqCcp: Integer;
begin
  Result := FSeqCcp;
end;

procedure T440IPC.SetSeqCcp(const pSeqCcp: Integer);
begin
  FSeqCcp := pSeqCcp;

  CheckField('SeqCcp');
end;

function T440IPC.GetIntPat: Char;
begin
  Result := FIntPat;
end;

procedure T440IPC.SetIntPat(const pIntPat: Char);
begin
  FIntPat := pIntPat;

  CheckField('IntPat');
end;

function T440IPC.GetNotFor: Double;
begin
  Result := FNotFor;
end;

procedure T440IPC.SetNotFor(const pNotFor: Double);
begin
  FNotFor := pNotFor;

  CheckField('NotFor');
end;

function T440IPC.GetNotPro: Double;
begin
  Result := FNotPro;
end;

procedure T440IPC.SetNotPro(const pNotPro: Double);
begin
  FNotPro := pNotPro;

  CheckField('NotPro');
end;

function T440IPC.GetProFab: string;
begin
  Result := FProFab;
end;

procedure T440IPC.SetProFab(const pProFab: string);
begin
  FProFab := pProFab;

  CheckField('ProFab');
end;

function T440IPC.GetSeqIsc: Integer;
begin
  Result := FSeqIsc;
end;

procedure T440IPC.SetSeqIsc(const pSeqIsc: Integer);
begin
  FSeqIsc := pSeqIsc;

  CheckField('SeqIsc');
end;

function T440IPC.GetVlrBcr: Double;
begin
  Result := FVlrBcr;
end;

procedure T440IPC.SetVlrBcr(const pVlrBcr: Double);
begin
  FVlrBcr := pVlrBcr;

  CheckField('VlrBcr');
end;

function T440IPC.GetVlrCor: Double;
begin
  Result := FVlrCor;
end;

procedure T440IPC.SetVlrCor(const pVlrCor: Double);
begin
  FVlrCor := pVlrCor;

  CheckField('VlrCor');
end;

function T440IPC.GetPerIim: Double;
begin
  Result := FPerIim;
end;

procedure T440IPC.SetPerIim(const pPerIim: Double);
begin
  FPerIim := pPerIim;

  CheckField('PerIim');
end;

function T440IPC.GetVlrBii: Double;
begin
  Result := FVlrBii;
end;

procedure T440IPC.SetVlrBii(const pVlrBii: Double);
begin
  FVlrBii := pVlrBii;

  CheckField('VlrBii');
end;

function T440IPC.GetVlrIim: Double;
begin
  Result := FVlrIim;
end;

procedure T440IPC.SetVlrIim(const pVlrIim: Double);
begin
  FVlrIim := pVlrIim;

  CheckField('VlrIim');
end;

function T440IPC.GetVlrRis: Double;
begin
  Result := FVlrRis;
end;

procedure T440IPC.SetVlrRis(const pVlrRis: Double);
begin
  FVlrRis := pVlrRis;

  CheckField('VlrRis');
end;

function T440IPC.GetCodBem: string;
begin
  Result := FCodBem;
end;

procedure T440IPC.SetCodBem(const pCodBem: string);
begin
  FCodBem := pCodBem;

  CheckField('CodBem');
end;

function T440IPC.GetPerPit: Double;
begin
  Result := FPerPit;
end;

procedure T440IPC.SetPerPit(const pPerPit: Double);
begin
  FPerPit := pPerPit;

  CheckField('PerPit');
end;

function T440IPC.GetVlrBpt: Double;
begin
  Result := FVlrBpt;
end;

procedure T440IPC.SetVlrBpt(const pVlrBpt: Double);
begin
  FVlrBpt := pVlrBpt;

  CheckField('VlrBpt');
end;

function T440IPC.GetVlrPit: Double;
begin
  Result := FVlrPit;
end;

procedure T440IPC.SetVlrPit(const pVlrPit: Double);
begin
  FVlrPit := pVlrPit;

  CheckField('VlrPit');
end;

function T440IPC.GetPerCrt: Double;
begin
  Result := FPerCrt;
end;

procedure T440IPC.SetPerCrt(const pPerCrt: Double);
begin
  FPerCrt := pPerCrt;

  CheckField('PerCrt');
end;

function T440IPC.GetVlrBct: Double;
begin
  Result := FVlrBct;
end;

procedure T440IPC.SetVlrBct(const pVlrBct: Double);
begin
  FVlrBct := pVlrBct;

  CheckField('VlrBct');
end;

function T440IPC.GetVlrCrt: Double;
begin
  Result := FVlrCrt;
end;

procedure T440IPC.SetVlrCrt(const pVlrCrt: Double);
begin
  FVlrCrt := pVlrCrt;

  CheckField('VlrCrt');
end;

function T440IPC.GetPerCsl: Double;
begin
  Result := FPerCsl;
end;

procedure T440IPC.SetPerCsl(const pPerCsl: Double);
begin
  FPerCsl := pPerCsl;

  CheckField('PerCsl');
end;

function T440IPC.GetVlrBcl: Double;
begin
  Result := FVlrBcl;
end;

procedure T440IPC.SetVlrBcl(const pVlrBcl: Double);
begin
  FVlrBcl := pVlrBcl;

  CheckField('VlrBcl');
end;

function T440IPC.GetVlrCsl: Double;
begin
  Result := FVlrCsl;
end;

procedure T440IPC.SetVlrCsl(const pVlrCsl: Double);
begin
  FVlrCsl := pVlrCsl;

  CheckField('VlrCsl');
end;

function T440IPC.GetPerOur: Double;
begin
  Result := FPerOur;
end;

procedure T440IPC.SetPerOur(const pPerOur: Double);
begin
  FPerOur := pPerOur;

  CheckField('PerOur');
end;

function T440IPC.GetVlrBor: Double;
begin
  Result := FVlrBor;
end;

procedure T440IPC.SetVlrBor(const pVlrBor: Double);
begin
  FVlrBor := pVlrBor;

  CheckField('VlrBor');
end;

function T440IPC.GetVlrOur: Double;
begin
  Result := FVlrOur;
end;

procedure T440IPC.SetVlrOur(const pVlrOur: Double);
begin
  FVlrOur := pVlrOur;

  CheckField('VlrOur');
end;

function T440IPC.GetPerIrf: Double;
begin
  Result := FPerIrf;
end;

procedure T440IPC.SetPerIrf(const pPerIrf: Double);
begin
  FPerIrf := pPerIrf;

  CheckField('PerIrf');
end;

function T440IPC.GetVlrBir: Double;
begin
  Result := FVlrBir;
end;

procedure T440IPC.SetVlrBir(const pVlrBir: Double);
begin
  FVlrBir := pVlrBir;

  CheckField('VlrBir');
end;

function T440IPC.GetVlrIrf: Double;
begin
  Result := FVlrIrf;
end;

procedure T440IPC.SetVlrIrf(const pVlrIrf: Double);
begin
  FVlrIrf := pVlrIrf;

  CheckField('VlrIrf');
end;

function T440IPC.GetPerDs1: Double;
begin
  Result := FPerDs1;
end;

procedure T440IPC.SetPerDs1(const pPerDs1: Double);
begin
  FPerDs1 := pPerDs1;

  CheckField('PerDs1');
end;

function T440IPC.GetPerDs2: Double;
begin
  Result := FPerDs2;
end;

procedure T440IPC.SetPerDs2(const pPerDs2: Double);
begin
  FPerDs2 := pPerDs2;

  CheckField('PerDs2');
end;

function T440IPC.GetBecIpi: Double;
begin
  Result := FBecIpi;
end;

procedure T440IPC.SetBecIpi(const pBecIpi: Double);
begin
  FBecIpi := pBecIpi;

  CheckField('BecIpi');
end;

function T440IPC.GetVecIpi: Double;
begin
  Result := FVecIpi;
end;

procedure T440IPC.SetVecIpi(const pVecIpi: Double);
begin
  FVecIpi := pVecIpi;

  CheckField('VecIpi');
end;

function T440IPC.GetBecIcm: Double;
begin
  Result := FBecIcm;
end;

procedure T440IPC.SetBecIcm(const pBecIcm: Double);
begin
  FBecIcm := pBecIcm;

  CheckField('BecIcm');
end;

function T440IPC.GetVecIcm: Double;
begin
  Result := FVecIcm;
end;

procedure T440IPC.SetVecIcm(const pVecIcm: Double);
begin
  FVecIcm := pVecIcm;

  CheckField('VecIcm');
end;

function T440IPC.GetProFor: string;
begin
  Result := FProFor;
end;

procedure T440IPC.SetProFor(const pProFor: string);
begin
  FProFor := pProFor;

  CheckField('ProFor');
end;

function T440IPC.GetVlrFei: Double;
begin
  Result := FVlrFei;
end;

procedure T440IPC.SetVlrFei(const pVlrFei: Double);
begin
  FVlrFei := pVlrFei;

  CheckField('VlrFei');
end;

function T440IPC.GetVlrSei: Double;
begin
  Result := FVlrSei;
end;

procedure T440IPC.SetVlrSei(const pVlrSei: Double);
begin
  FVlrSei := pVlrSei;

  CheckField('VlrSei');
end;

function T440IPC.GetVlrOui: Double;
begin
  Result := FVlrOui;
end;

procedure T440IPC.SetVlrOui(const pVlrOui: Double);
begin
  FVlrOui := pVlrOui;

  CheckField('VlrOui');
end;

function T440IPC.GetBcoImp: Double;
begin
  Result := FBcoImp;
end;

procedure T440IPC.SetBcoImp(const pBcoImp: Double);
begin
  FBcoImp := pBcoImp;

  CheckField('BcoImp');
end;

function T440IPC.GetCofImp: Double;
begin
  Result := FCofImp;
end;

procedure T440IPC.SetCofImp(const pCofImp: Double);
begin
  FCofImp := pCofImp;

  CheckField('CofImp');
end;

function T440IPC.GetBpiImp: Double;
begin
  Result := FBpiImp;
end;

procedure T440IPC.SetBpiImp(const pBpiImp: Double);
begin
  FBpiImp := pBpiImp;

  CheckField('BpiImp');
end;

function T440IPC.GetPisImp: Double;
begin
  Result := FPisImp;
end;

procedure T440IPC.SetPisImp(const pPisImp: Double);
begin
  FPisImp := pPisImp;

  CheckField('PisImp');
end;

function T440IPC.GetFilPed: Integer;
begin
  Result := FFilPed;
end;

procedure T440IPC.SetFilPed(const pFilPed: Integer);
begin
  FFilPed := pFilPed;

  CheckField('FilPed');
end;

function T440IPC.GetNumPed: Integer;
begin
  Result := FNumPed;
end;

procedure T440IPC.SetNumPed(const pNumPed: Integer);
begin
  FNumPed := pNumPed;

  CheckField('NumPed');
end;

function T440IPC.GetSeqIpd: Integer;
begin
  Result := FSeqIpd;
end;

procedure T440IPC.SetSeqIpd(const pSeqIpd: Integer);
begin
  FSeqIpd := pSeqIpd;

  CheckField('SeqIpd');
end;

function T440IPC.GetVlrDm1: Double;
begin
  Result := FVlrDm1;
end;

procedure T440IPC.SetVlrDm1(const pVlrDm1: Double);
begin
  FVlrDm1 := pVlrDm1;

  CheckField('VlrDm1');
end;

function T440IPC.GetVlrDm2: Double;
begin
  Result := FVlrDm2;
end;

procedure T440IPC.SetVlrDm2(const pVlrDm2: Double);
begin
  FVlrDm2 := pVlrDm2;

  CheckField('VlrDm2');
end;

function T440IPC.GetVlrDm3: Double;
begin
  Result := FVlrDm3;
end;

procedure T440IPC.SetVlrDm3(const pVlrDm3: Double);
begin
  FVlrDm3 := pVlrDm3;

  CheckField('VlrDm3');
end;

function T440IPC.GetVlrDm4: Double;
begin
  Result := FVlrDm4;
end;

procedure T440IPC.SetVlrDm4(const pVlrDm4: Double);
begin
  FVlrDm4 := pVlrDm4;

  CheckField('VlrDm4');
end;

function T440IPC.GetVlrDm5: Double;
begin
  Result := FVlrDm5;
end;

procedure T440IPC.SetVlrDm5(const pVlrDm5: Double);
begin
  FVlrDm5 := pVlrDm5;

  CheckField('VlrDm5');
end;

function T440IPC.GetVlrDm6: Double;
begin
  Result := FVlrDm6;
end;

procedure T440IPC.SetVlrDm6(const pVlrDm6: Double);
begin
  FVlrDm6 := pVlrDm6;

  CheckField('VlrDm6');
end;

function T440IPC.GetBemPri: string;
begin
  Result := FBemPri;
end;

procedure T440IPC.SetBemPri(const pBemPri: string);
begin
  FBemPri := pBemPri;

  CheckField('BemPri');
end;

function T440IPC.GetVlrBpf: Double;
begin
  Result := FVlrBpf;
end;

procedure T440IPC.SetVlrBpf(const pVlrBpf: Double);
begin
  FVlrBpf := pVlrBpf;

  CheckField('VlrBpf');
end;

function T440IPC.GetPerPif: Double;
begin
  Result := FPerPif;
end;

procedure T440IPC.SetPerPif(const pPerPif: Double);
begin
  FPerPif := pPerPif;

  CheckField('PerPif');
end;

function T440IPC.GetVlrPif: Double;
begin
  Result := FVlrPif;
end;

procedure T440IPC.SetVlrPif(const pVlrPif: Double);
begin
  FVlrPif := pVlrPif;

  CheckField('VlrPif');
end;

function T440IPC.GetVlrBcf: Double;
begin
  Result := FVlrBcf;
end;

procedure T440IPC.SetVlrBcf(const pVlrBcf: Double);
begin
  FVlrBcf := pVlrBcf;

  CheckField('VlrBcf');
end;

function T440IPC.GetPerCff: Double;
begin
  Result := FPerCff;
end;

procedure T440IPC.SetPerCff(const pPerCff: Double);
begin
  FPerCff := pPerCff;

  CheckField('PerCff');
end;

function T440IPC.GetVlrCff: Double;
begin
  Result := FVlrCff;
end;

procedure T440IPC.SetVlrCff(const pVlrCff: Double);
begin
  FVlrCff := pVlrCff;

  CheckField('VlrCff');
end;

function T440IPC.GetCstIpi: string;
begin
  Result := FCstIpi;
end;

procedure T440IPC.SetCstIpi(const pCstIpi: string);
begin
  FCstIpi := pCstIpi;

  CheckField('CstIpi');
end;

function T440IPC.GetCstPis: string;
begin
  Result := FCstPis;
end;

procedure T440IPC.SetCstPis(const pCstPis: string);
begin
  FCstPis := pCstPis;

  CheckField('CstPis');
end;

function T440IPC.GetCstCof: string;
begin
  Result := FCstCof;
end;

procedure T440IPC.SetCstCof(const pCstCof: string);
begin
  FCstCof := pCstCof;

  CheckField('CstCof');
end;

function T440IPC.GetCodDfs: Integer;
begin
  Result := FCodDfs;
end;

procedure T440IPC.SetCodDfs(const pCodDfs: Integer);
begin
  FCodDfs := pCodDfs;

  CheckField('CodDfs');
end;

function T440IPC.GetVlrAjs: Double;
begin
  Result := FVlrAjs;
end;

procedure T440IPC.SetVlrAjs(const pVlrAjs: Double);
begin
  FVlrAjs := pVlrAjs;

  CheckField('VlrAjs');
end;

function T440IPC.GetSeqEve: Integer;
begin
  Result := FSeqEve;
end;

procedure T440IPC.SetSeqEve(const pSeqEve: Integer);
begin
  FSeqEve := pSeqEve;

  CheckField('SeqEve');
end;

function T440IPC.GetNumAdi: Integer;
begin
  Result := FNumAdi;
end;

procedure T440IPC.SetNumAdi(const pNumAdi: Integer);
begin
  FNumAdi := pNumAdi;

  CheckField('NumAdi');
end;

function T440IPC.GetSeqAdi: Integer;
begin
  Result := FSeqAdi;
end;

procedure T440IPC.SetSeqAdi(const pSeqAdi: Integer);
begin
  FSeqAdi := pSeqAdi;

  CheckField('SeqAdi');
end;

function T440IPC.GetDscAdi: Double;
begin
  Result := FDscAdi;
end;

procedure T440IPC.SetDscAdi(const pDscAdi: Double);
begin
  FDscAdi := pDscAdi;

  CheckField('DscAdi');
end;

function T440IPC.GetFabEst: string;
begin
  Result := FFabEst;
end;

procedure T440IPC.SetFabEst(const pFabEst: string);
begin
  FFabEst := pFabEst;

  CheckField('FabEst');
end;

function T440IPC.GetQtdBpi: Double;
begin
  Result := FQtdBpi;
end;

procedure T440IPC.SetQtdBpi(const pQtdBpi: Double);
begin
  FQtdBpi := pQtdBpi;

  CheckField('QtdBpi');
end;

function T440IPC.GetAliPis: Double;
begin
  Result := FAliPis;
end;

procedure T440IPC.SetAliPis(const pAliPis: Double);
begin
  FAliPis := pAliPis;

  CheckField('AliPis');
end;

function T440IPC.GetQtdBco: Double;
begin
  Result := FQtdBco;
end;

procedure T440IPC.SetQtdBco(const pQtdBco: Double);
begin
  FQtdBco := pQtdBco;

  CheckField('QtdBco');
end;

function T440IPC.GetAliCof: Double;
begin
  Result := FAliCof;
end;

procedure T440IPC.SetAliCof(const pAliCof: Double);
begin
  FAliCof := pAliCof;

  CheckField('AliCof');
end;

function T440IPC.GetQtdBip: Double;
begin
  Result := FQtdBip;
end;

procedure T440IPC.SetQtdBip(const pQtdBip: Double);
begin
  FQtdBip := pQtdBip;

  CheckField('QtdBip');
end;

function T440IPC.GetAliIpi: Double;
begin
  Result := FAliIpi;
end;

procedure T440IPC.SetAliIpi(const pAliIpi: Double);
begin
  FAliIpi := pAliIpi;

  CheckField('AliIpi');
end;

function T440IPC.GetQtdBpf: Double;
begin
  Result := FQtdBpf;
end;

procedure T440IPC.SetQtdBpf(const pQtdBpf: Double);
begin
  FQtdBpf := pQtdBpf;

  CheckField('QtdBpf');
end;

function T440IPC.GetAliPif: Double;
begin
  Result := FAliPif;
end;

procedure T440IPC.SetAliPif(const pAliPif: Double);
begin
  FAliPif := pAliPif;

  CheckField('AliPif');
end;

function T440IPC.GetQtdBcf: Double;
begin
  Result := FQtdBcf;
end;

procedure T440IPC.SetQtdBcf(const pQtdBcf: Double);
begin
  FQtdBcf := pQtdBcf;

  CheckField('QtdBcf');
end;

function T440IPC.GetAliCff: Double;
begin
  Result := FAliCff;
end;

procedure T440IPC.SetAliCff(const pAliCff: Double);
begin
  FAliCff := pAliCff;

  CheckField('AliCff');
end;

function T440IPC.GetVlrSub: Double;
begin
  Result := FVlrSub;
end;

procedure T440IPC.SetVlrSub(const pVlrSub: Double);
begin
  FVlrSub := pVlrSub;

  CheckField('VlrSub');
end;

function T440IPC.GetIndVip: Char;
begin
  Result := FIndVip;
end;

procedure T440IPC.SetIndVip(const pIndVip: Char);
begin
  FIndVip := pIndVip;

  CheckField('IndVip');
end;

function T440IPC.GetOriMer: Char;
begin
  Result := FOriMer;
end;

procedure T440IPC.SetOriMer(const pOriMer: Char);
begin
  FOriMer := pOriMer;

  CheckField('OriMer');
end;

function T440IPC.GetPerCit: Double;
begin
  Result := FPerCit;
end;

procedure T440IPC.SetPerCit(const pPerCit: Double);
begin
  FPerCit := pPerCit;

  CheckField('PerCit');
end;

function T440IPC.GetVlrCit: Double;
begin
  Result := FVlrCit;
end;

procedure T440IPC.SetVlrCit(const pVlrCit: Double);
begin
  FVlrCit := pVlrCit;

  CheckField('VlrCit');
end;

function T440IPC.GetBasCre: Integer;
begin
  Result := FBasCre;
end;

procedure T440IPC.SetBasCre(const pBasCre: Integer);
begin
  FBasCre := pBasCre;

  CheckField('BasCre');
end;

function T440IPC.GetPecIcm: Double;
begin
  Result := FPecIcm;
end;

procedure T440IPC.SetPecIcm(const pPecIcm: Double);
begin
  FPecIcm := pPecIcm;

  CheckField('PecIcm');
end;

function T440IPC.GetPecIpi: Double;
begin
  Result := FPecIpi;
end;

procedure T440IPC.SetPecIpi(const pPecIpi: Double);
begin
  FPecIpi := pPecIpi;

  CheckField('PecIpi');
end;

function T440IPC.GetTipCur: Integer;
begin
  Result := FTipCur;
end;

procedure T440IPC.SetTipCur(const pTipCur: Integer);
begin
  FTipCur := pTipCur;

  CheckField('TipCur');
end;

function T440IPC.GetPerPir: Double;
begin
  Result := FPerPir;
end;

procedure T440IPC.SetPerPir(const pPerPir: Double);
begin
  FPerPir := pPerPir;

  CheckField('PerPir');
end;

function T440IPC.GetPerCor: Double;
begin
  Result := FPerCor;
end;

procedure T440IPC.SetPerCor(const pPerCor: Double);
begin
  FPerCor := pPerCor;

  CheckField('PerCor');
end;

function T440IPC.GetPerPim: Double;
begin
  Result := FPerPim;
end;

procedure T440IPC.SetPerPim(const pPerPim: Double);
begin
  FPerPim := pPerPim;

  CheckField('PerPim');
end;

function T440IPC.GetPerCim: Double;
begin
  Result := FPerCim;
end;

procedure T440IPC.SetPerCim(const pPerCim: Double);
begin
  FPerCim := pPerCim;

  CheckField('PerCim');
end;

function T440IPC.GetEmpCto: Integer;
begin
  Result := FEmpCto;
end;

procedure T440IPC.SetEmpCto(const pEmpCto: Integer);
begin
  FEmpCto := pEmpCto;

  CheckField('EmpCto');
end;

function T440IPC.GetCodPco: Integer;
begin
  Result := FCodPco;
end;

procedure T440IPC.SetCodPco(const pCodPco: Integer);
begin
  FCodPco := pCodPco;

  CheckField('CodPco');
end;

function T440IPC.GetFilCto: Integer;
begin
  Result := FFilCto;
end;

procedure T440IPC.SetFilCto(const pFilCto: Integer);
begin
  FFilCto := pFilCto;

  CheckField('FilCto');
end;

function T440IPC.GetCptPco: TDate;
begin
  Result := FCptPco;
end;

procedure T440IPC.SetCptPco(const pCptPco: TDate);
begin
  FCptPco := pCptPco;

  CheckField('CptPco');
end;

function T440IPC.GetVlrImp: Double;
begin
  Result := FVlrImp;
end;

procedure T440IPC.SetVlrImp(const pVlrImp: Double);
begin
  FVlrImp := pVlrImp;

  CheckField('VlrImp');
end;

function T440IPC.GetCoeFci: Double;
begin
  Result := FCoeFci;
end;

procedure T440IPC.SetCoeFci(const pCoeFci: Double);
begin
  FCoeFci := pCoeFci;

  CheckField('CoeFci');
end;

function T440IPC.GetCodFci: string;
begin
  Result := FCodFci;
end;

procedure T440IPC.SetCodFci(const pCodFci: string);
begin
  FCodFci := pCodFci;

  CheckField('CodFci');
end;

function T440IPC.GetUSU_NumInv: string;
begin
  Result := FUSU_NumInv;
end;

procedure T440IPC.SetUSU_NumInv(const pUSU_NumInv: string);
begin
  FUSU_NumInv := pUSU_NumInv;

  CheckField('USU_NumInv');
end;

function T440IPC.GetUSU_VlrBsi: Double;
begin
  Result := FUSU_VlrBsi;
end;

procedure T440IPC.SetUSU_VlrBsi(const pUSU_VlrBsi: Double);
begin
  FUSU_VlrBsi := pUSU_VlrBsi;

  CheckField('USU_VlrBsi');
end;

function T440IPC.GetUSU_VlrIcs: Double;
begin
  Result := FUSU_VlrIcs;
end;

procedure T440IPC.SetUSU_VlrIcs(const pUSU_VlrIcs: Double);
begin
  FUSU_VlrIcs := pUSU_VlrIcs;

  CheckField('USU_VlrIcs');
end;

function T440IPC.GetUSU_NumDoi: string;
begin
  Result := FUSU_NumDoi;
end;

procedure T440IPC.SetUSU_NumDoi(const pUSU_NumDoi: string);
begin
  FUSU_NumDoi := pUSU_NumDoi;

  CheckField('USU_NumDoi');
end;

function T440IPC.GetUSU_OcpFat: Integer;
begin
  Result := FUSU_OcpFat;
end;

procedure T440IPC.SetUSU_OcpFat(const pUSU_OcpFat: Integer);
begin
  FUSU_OcpFat := pUSU_OcpFat;

  CheckField('USU_OcpFat');
end;

function T440IPC.GetUSU_AcrDes: Double;
begin
  Result := FUSU_AcrDes;
end;

procedure T440IPC.SetUSU_AcrDes(const pUSU_AcrDes: Double);
begin
  FUSU_AcrDes := pUSU_AcrDes;

  CheckField('USU_AcrDes');
end;

function T440IPC.GetUSU_DesDiv: string;
begin
  Result := FUSU_DesDiv;
end;

procedure T440IPC.SetUSU_DesDiv(const pUSU_DesDiv: string);
begin
  FUSU_DesDiv := pUSU_DesDiv;

  CheckField('USU_DesDiv');
end;

function T440IPC.GetUSU_DesSol: string;
begin
  Result := FUSU_DesSol;
end;

procedure T440IPC.SetUSU_DesSol(const pUSU_DesSol: string);
begin
  FUSU_DesSol := pUSU_DesSol;

  CheckField('USU_DesSol');
end;

function T440IPC.GetCodEmpOLD: Integer;
begin
  Result := FCodEmpOLD;
end;

procedure T440IPC.SetCodEmpOLD(const pCodEmp: Integer);
begin
  FCodEmpOLD := pCodEmp;
end;

function T440IPC.GetCodFilOLD: Integer;
begin
  Result := FCodFilOLD;
end;

procedure T440IPC.SetCodFilOLD(const pCodFil: Integer);
begin
  FCodFilOLD := pCodFil;
end;

function T440IPC.GetCodForOLD: Integer;
begin
  Result := FCodForOLD;
end;

procedure T440IPC.SetCodForOLD(const pCodFor: Integer);
begin
  FCodForOLD := pCodFor;
end;

function T440IPC.GetNumNfcOLD: Integer;
begin
  Result := FNumNfcOLD;
end;

procedure T440IPC.SetNumNfcOLD(const pNumNfc: Integer);
begin
  FNumNfcOLD := pNumNfc;
end;

function T440IPC.GetCodSnfOLD: string;
begin
  Result := FCodSnfOLD;
end;

procedure T440IPC.SetCodSnfOLD(const pCodSnf: string);
begin
  FCodSnfOLD := pCodSnf;
end;

function T440IPC.GetSeqIpcOLD: Integer;
begin
  Result := FSeqIpcOLD;
end;

procedure T440IPC.SetSeqIpcOLD(const pSeqIpc: Integer);
begin
  FSeqIpcOLD := pSeqIpc;
end;

function T440IPC.GetTnsProOLD: string;
begin
  Result := FTnsProOLD;
end;

procedure T440IPC.SetTnsProOLD(const pTnsPro: string);
begin
  FTnsProOLD := pTnsPro;
end;

function T440IPC.GetNopProOLD: string;
begin
  Result := FNopProOLD;
end;

procedure T440IPC.SetNopProOLD(const pNopPro: string);
begin
  FNopProOLD := pNopPro;
end;

function T440IPC.GetFilOcpOLD: Integer;
begin
  Result := FFilOcpOLD;
end;

procedure T440IPC.SetFilOcpOLD(const pFilOcp: Integer);
begin
  FFilOcpOLD := pFilOcp;
end;

function T440IPC.GetNumOcpOLD: Integer;
begin
  Result := FNumOcpOLD;
end;

procedure T440IPC.SetNumOcpOLD(const pNumOcp: Integer);
begin
  FNumOcpOLD := pNumOcp;
end;

function T440IPC.GetSeqIpoOLD: Integer;
begin
  Result := FSeqIpoOLD;
end;

procedure T440IPC.SetSeqIpoOLD(const pSeqIpo: Integer);
begin
  FSeqIpoOLD := pSeqIpo;
end;

function T440IPC.GetCodProOLD: string;
begin
  Result := FCodProOLD;
end;

procedure T440IPC.SetCodProOLD(const pCodPro: string);
begin
  FCodProOLD := pCodPro;
end;

function T440IPC.GetCodDerOLD: string;
begin
  Result := FCodDerOLD;
end;

procedure T440IPC.SetCodDerOLD(const pCodDer: string);
begin
  FCodDerOLD := pCodDer;
end;

function T440IPC.GetCplIpcOLD: string;
begin
  Result := FCplIpcOLD;
end;

procedure T440IPC.SetCplIpcOLD(const pCplIpc: string);
begin
  FCplIpcOLD := pCplIpc;
end;

function T440IPC.GetCodFamOLD: string;
begin
  Result := FCodFamOLD;
end;

procedure T440IPC.SetCodFamOLD(const pCodFam: string);
begin
  FCodFamOLD := pCodFam;
end;

function T440IPC.GetCodClfOLD: string;
begin
  Result := FCodClfOLD;
end;

procedure T440IPC.SetCodClfOLD(const pCodClf: string);
begin
  FCodClfOLD := pCodClf;
end;

function T440IPC.GetCodStrOLD: string;
begin
  Result := FCodStrOLD;
end;

procedure T440IPC.SetCodStrOLD(const pCodStr: string);
begin
  FCodStrOLD := pCodStr;
end;

function T440IPC.GetCodTicOLD: string;
begin
  Result := FCodTicOLD;
end;

procedure T440IPC.SetCodTicOLD(const pCodTic: string);
begin
  FCodTicOLD := pCodTic;
end;

function T440IPC.GetCodTrdOLD: string;
begin
  Result := FCodTrdOLD;
end;

procedure T440IPC.SetCodTrdOLD(const pCodTrd: string);
begin
  FCodTrdOLD := pCodTrd;
end;

function T440IPC.GetCodTstOLD: string;
begin
  Result := FCodTstOLD;
end;

procedure T440IPC.SetCodTstOLD(const pCodTst: string);
begin
  FCodTstOLD := pCodTst;
end;

function T440IPC.GetCodStpOLD: string;
begin
  Result := FCodStpOLD;
end;

procedure T440IPC.SetCodStpOLD(const pCodStp: string);
begin
  FCodStpOLD := pCodStp;
end;

function T440IPC.GetCodStcOLD: string;
begin
  Result := FCodStcOLD;
end;

procedure T440IPC.SetCodStcOLD(const pCodStc: string);
begin
  FCodStcOLD := pCodStc;
end;

function T440IPC.GetLauTecOLD: string;
begin
  Result := FLauTecOLD;
end;

procedure T440IPC.SetLauTecOLD(const pLauTec: string);
begin
  FLauTecOLD := pLauTec;
end;

function T440IPC.GetUsuLauOLD: Integer;
begin
  Result := FUsuLauOLD;
end;

procedure T440IPC.SetUsuLauOLD(const pUsuLau: Integer);
begin
  FUsuLauOLD := pUsuLau;
end;

function T440IPC.GetDatLauOLD: TDate;
begin
  Result := FDatLauOLD;
end;

procedure T440IPC.SetDatLauOLD(const pDatLau: TDate);
begin
  FDatLauOLD := pDatLau;
end;

function T440IPC.GetHorLauOLD: Integer;
begin
  Result := FHorLauOLD;
end;

procedure T440IPC.SetHorLauOLD(const pHorLau: Integer);
begin
  FHorLauOLD := pHorLau;
end;

function T440IPC.GetCodDepOLD: string;
begin
  Result := FCodDepOLD;
end;

procedure T440IPC.SetCodDepOLD(const pCodDep: string);
begin
  FCodDepOLD := pCodDep;
end;

function T440IPC.GetCodLotOLD: string;
begin
  Result := FCodLotOLD;
end;

procedure T440IPC.SetCodLotOLD(const pCodLot: string);
begin
  FCodLotOLD := pCodLot;
end;

function T440IPC.GetQtdRecOLD: Double;
begin
  Result := FQtdRecOLD;
end;

procedure T440IPC.SetQtdRecOLD(const pQtdRec: Double);
begin
  FQtdRecOLD := pQtdRec;
end;

function T440IPC.GetUniNfcOLD: string;
begin
  Result := FUniNfcOLD;
end;

procedure T440IPC.SetUniNfcOLD(const pUniNfc: string);
begin
  FUniNfcOLD := pUniNfc;
end;

function T440IPC.GetQtdAjbOLD: Double;
begin
  Result := FQtdAjbOLD;
end;

procedure T440IPC.SetQtdAjbOLD(const pQtdAjb: Double);
begin
  FQtdAjbOLD := pQtdAjb;
end;

function T440IPC.GetQtdDevOLD: Double;
begin
  Result := FQtdDevOLD;
end;

procedure T440IPC.SetQtdDevOLD(const pQtdDev: Double);
begin
  FQtdDevOLD := pQtdDev;
end;

function T440IPC.GetUniMedOLD: string;
begin
  Result := FUniMedOLD;
end;

procedure T440IPC.SetUniMedOLD(const pUniMed: string);
begin
  FUniMedOLD := pUniMed;
end;

function T440IPC.GetQtdEstOLD: Double;
begin
  Result := FQtdEstOLD;
end;

procedure T440IPC.SetQtdEstOLD(const pQtdEst: Double);
begin
  FQtdEstOLD := pQtdEst;
end;

function T440IPC.GetVlrFumOLD: Double;
begin
  Result := FVlrFumOLD;
end;

procedure T440IPC.SetVlrFumOLD(const pVlrFum: Double);
begin
  FVlrFumOLD := pVlrFum;
end;

function T440IPC.GetQtdFreOLD: Double;
begin
  Result := FQtdFreOLD;
end;

procedure T440IPC.SetQtdFreOLD(const pQtdFre: Double);
begin
  FQtdFreOLD := pQtdFre;
end;

function T440IPC.GetForFreOLD: Integer;
begin
  Result := FForFreOLD;
end;

procedure T440IPC.SetForFreOLD(const pForFre: Integer);
begin
  FForFreOLD := pForFre;
end;

function T440IPC.GetPesBruOLD: Double;
begin
  Result := FPesBruOLD;
end;

procedure T440IPC.SetPesBruOLD(const pPesBru: Double);
begin
  FPesBruOLD := pPesBru;
end;

function T440IPC.GetPesLiqOLD: Double;
begin
  Result := FPesLiqOLD;
end;

procedure T440IPC.SetPesLiqOLD(const pPesLiq: Double);
begin
  FPesLiqOLD := pPesLiq;
end;

function T440IPC.GetCodTprOLD: string;
begin
  Result := FCodTprOLD;
end;

procedure T440IPC.SetCodTprOLD(const pCodTpr: string);
begin
  FCodTprOLD := pCodTpr;
end;

function T440IPC.GetPreUniOLD: Double;
begin
  Result := FPreUniOLD;
end;

procedure T440IPC.SetPreUniOLD(const pPreUni: Double);
begin
  FPreUniOLD := pPreUni;
end;

function T440IPC.GetPreEstOLD: Double;
begin
  Result := FPreEstOLD;
end;

procedure T440IPC.SetPreEstOLD(const pPreEst: Double);
begin
  FPreEstOLD := pPreEst;
end;

function T440IPC.GetPreBasOLD: Double;
begin
  Result := FPreBasOLD;
end;

procedure T440IPC.SetPreBasOLD(const pPreBas: Double);
begin
  FPreBasOLD := pPreBas;
end;

function T440IPC.GetPerDscOLD: Double;
begin
  Result := FPerDscOLD;
end;

procedure T440IPC.SetPerDscOLD(const pPerDsc: Double);
begin
  FPerDscOLD := pPerDsc;
end;

function T440IPC.GetPerDs3OLD: Double;
begin
  Result := FPerDs3OLD;
end;

procedure T440IPC.SetPerDs3OLD(const pPerDs3: Double);
begin
  FPerDs3OLD := pPerDs3;
end;

function T440IPC.GetPerDs4OLD: Double;
begin
  Result := FPerDs4OLD;
end;

procedure T440IPC.SetPerDs4OLD(const pPerDs4: Double);
begin
  FPerDs4OLD := pPerDs4;
end;

function T440IPC.GetPerDs5OLD: Double;
begin
  Result := FPerDs5OLD;
end;

procedure T440IPC.SetPerDs5OLD(const pPerDs5: Double);
begin
  FPerDs5OLD := pPerDs5;
end;

function T440IPC.GetPerIpiOLD: Double;
begin
  Result := FPerIpiOLD;
end;

procedure T440IPC.SetPerIpiOLD(const pPerIpi: Double);
begin
  FPerIpiOLD := pPerIpi;
end;

function T440IPC.GetPerIcmOLD: Double;
begin
  Result := FPerIcmOLD;
end;

procedure T440IPC.SetPerIcmOLD(const pPerIcm: Double);
begin
  FPerIcmOLD := pPerIcm;
end;

function T440IPC.GetPerFunOLD: Double;
begin
  Result := FPerFunOLD;
end;

procedure T440IPC.SetPerFunOLD(const pPerFun: Double);
begin
  FPerFunOLD := pPerFun;
end;

function T440IPC.GetSalCanOLD: Char;
begin
  Result := FSalCanOLD;
end;

procedure T440IPC.SetSalCanOLD(const pSalCan: Char);
begin
  FSalCanOLD := pSalCan;
end;

function T440IPC.GetNumPrjOLD: Integer;
begin
  Result := FNumPrjOLD;
end;

procedure T440IPC.SetNumPrjOLD(const pNumPrj: Integer);
begin
  FNumPrjOLD := pNumPrj;
end;

function T440IPC.GetCodFpjOLD: Integer;
begin
  Result := FCodFpjOLD;
end;

procedure T440IPC.SetCodFpjOLD(const pCodFpj: Integer);
begin
  FCodFpjOLD := pCodFpj;
end;

function T440IPC.GetCtaFinOLD: Integer;
begin
  Result := FCtaFinOLD;
end;

procedure T440IPC.SetCtaFinOLD(const pCtaFin: Integer);
begin
  FCtaFinOLD := pCtaFin;
end;

function T440IPC.GetCtaRedOLD: Integer;
begin
  Result := FCtaRedOLD;
end;

procedure T440IPC.SetCtaRedOLD(const pCtaRed: Integer);
begin
  FCtaRedOLD := pCtaRed;
end;

function T440IPC.GetCodCcuOLD: string;
begin
  Result := FCodCcuOLD;
end;

procedure T440IPC.SetCodCcuOLD(const pCodCcu: string);
begin
  FCodCcuOLD := pCodCcu;
end;

function T440IPC.GetVlrFreOLD: Double;
begin
  Result := FVlrFreOLD;
end;

procedure T440IPC.SetVlrFreOLD(const pVlrFre: Double);
begin
  FVlrFreOLD := pVlrFre;
end;

function T440IPC.GetVlrSegOLD: Double;
begin
  Result := FVlrSegOLD;
end;

procedure T440IPC.SetVlrSegOLD(const pVlrSeg: Double);
begin
  FVlrSegOLD := pVlrSeg;
end;

function T440IPC.GetVlrEmbOLD: Double;
begin
  Result := FVlrEmbOLD;
end;

procedure T440IPC.SetVlrEmbOLD(const pVlrEmb: Double);
begin
  FVlrEmbOLD := pVlrEmb;
end;

function T440IPC.GetVlrEncOLD: Double;
begin
  Result := FVlrEncOLD;
end;

procedure T440IPC.SetVlrEncOLD(const pVlrEnc: Double);
begin
  FVlrEncOLD := pVlrEnc;
end;

function T440IPC.GetVlrOutOLD: Double;
begin
  Result := FVlrOutOLD;
end;

procedure T440IPC.SetVlrOutOLD(const pVlrOut: Double);
begin
  FVlrOutOLD := pVlrOut;
end;

function T440IPC.GetVlrDarOLD: Double;
begin
  Result := FVlrDarOLD;
end;

procedure T440IPC.SetVlrDarOLD(const pVlrDar: Double);
begin
  FVlrDarOLD := pVlrDar;
end;

function T440IPC.GetVlrFrdOLD: Double;
begin
  Result := FVlrFrdOLD;
end;

procedure T440IPC.SetVlrFrdOLD(const pVlrFrd: Double);
begin
  FVlrFrdOLD := pVlrFrd;
end;

function T440IPC.GetVlrOudOLD: Double;
begin
  Result := FVlrOudOLD;
end;

procedure T440IPC.SetVlrOudOLD(const pVlrOud: Double);
begin
  FVlrOudOLD := pVlrOud;
end;

function T440IPC.GetVlrBruOLD: Double;
begin
  Result := FVlrBruOLD;
end;

procedure T440IPC.SetVlrBruOLD(const pVlrBru: Double);
begin
  FVlrBruOLD := pVlrBru;
end;

function T440IPC.GetVlrDscOLD: Double;
begin
  Result := FVlrDscOLD;
end;

procedure T440IPC.SetVlrDscOLD(const pVlrDsc: Double);
begin
  FVlrDscOLD := pVlrDsc;
end;

function T440IPC.GetVlrDs1OLD: Double;
begin
  Result := FVlrDs1OLD;
end;

procedure T440IPC.SetVlrDs1OLD(const pVlrDs1: Double);
begin
  FVlrDs1OLD := pVlrDs1;
end;

function T440IPC.GetVlrDs2OLD: Double;
begin
  Result := FVlrDs2OLD;
end;

procedure T440IPC.SetVlrDs2OLD(const pVlrDs2: Double);
begin
  FVlrDs2OLD := pVlrDs2;
end;

function T440IPC.GetVlrDs3OLD: Double;
begin
  Result := FVlrDs3OLD;
end;

procedure T440IPC.SetVlrDs3OLD(const pVlrDs3: Double);
begin
  FVlrDs3OLD := pVlrDs3;
end;

function T440IPC.GetVlrDs4OLD: Double;
begin
  Result := FVlrDs4OLD;
end;

procedure T440IPC.SetVlrDs4OLD(const pVlrDs4: Double);
begin
  FVlrDs4OLD := pVlrDs4;
end;

function T440IPC.GetVlrDs5OLD: Double;
begin
  Result := FVlrDs5OLD;
end;

procedure T440IPC.SetVlrDs5OLD(const pVlrDs5: Double);
begin
  FVlrDs5OLD := pVlrDs5;
end;

function T440IPC.GetVlrDzfOLD: Double;
begin
  Result := FVlrDzfOLD;
end;

procedure T440IPC.SetVlrDzfOLD(const pVlrDzf: Double);
begin
  FVlrDzfOLD := pVlrDzf;
end;

function T440IPC.GetVlrBfuOLD: Double;
begin
  Result := FVlrBfuOLD;
end;

procedure T440IPC.SetVlrBfuOLD(const pVlrBfu: Double);
begin
  FVlrBfuOLD := pVlrBfu;
end;

function T440IPC.GetVlrFunOLD: Double;
begin
  Result := FVlrFunOLD;
end;

procedure T440IPC.SetVlrFunOLD(const pVlrFun: Double);
begin
  FVlrFunOLD := pVlrFun;
end;

function T440IPC.GetVlrBipOLD: Double;
begin
  Result := FVlrBipOLD;
end;

procedure T440IPC.SetVlrBipOLD(const pVlrBip: Double);
begin
  FVlrBipOLD := pVlrBip;
end;

function T440IPC.GetVlrIpiOLD: Double;
begin
  Result := FVlrIpiOLD;
end;

procedure T440IPC.SetVlrIpiOLD(const pVlrIpi: Double);
begin
  FVlrIpiOLD := pVlrIpi;
end;

function T440IPC.GetVlrBidOLD: Double;
begin
  Result := FVlrBidOLD;
end;

procedure T440IPC.SetVlrBidOLD(const pVlrBid: Double);
begin
  FVlrBidOLD := pVlrBid;
end;

function T440IPC.GetVlrIpdOLD: Double;
begin
  Result := FVlrIpdOLD;
end;

procedure T440IPC.SetVlrIpdOLD(const pVlrIpd: Double);
begin
  FVlrIpdOLD := pVlrIpd;
end;

function T440IPC.GetVlrBicOLD: Double;
begin
  Result := FVlrBicOLD;
end;

procedure T440IPC.SetVlrBicOLD(const pVlrBic: Double);
begin
  FVlrBicOLD := pVlrBic;
end;

function T440IPC.GetVlrIcmOLD: Double;
begin
  Result := FVlrIcmOLD;
end;

procedure T440IPC.SetVlrIcmOLD(const pVlrIcm: Double);
begin
  FVlrIcmOLD := pVlrIcm;
end;

function T440IPC.GetVlrDfaOLD: Double;
begin
  Result := FVlrDfaOLD;
end;

procedure T440IPC.SetVlrDfaOLD(const pVlrDfa: Double);
begin
  FVlrDfaOLD := pVlrDfa;
end;

function T440IPC.GetVlrBsiOLD: Double;
begin
  Result := FVlrBsiOLD;
end;

procedure T440IPC.SetVlrBsiOLD(const pVlrBsi: Double);
begin
  FVlrBsiOLD := pVlrBsi;
end;

function T440IPC.GetVlrIcsOLD: Double;
begin
  Result := FVlrIcsOLD;
end;

procedure T440IPC.SetVlrIcsOLD(const pVlrIcs: Double);
begin
  FVlrIcsOLD := pVlrIcs;
end;

function T440IPC.GetVlrBsdOLD: Double;
begin
  Result := FVlrBsdOLD;
end;

procedure T440IPC.SetVlrBsdOLD(const pVlrBsd: Double);
begin
  FVlrBsdOLD := pVlrBsd;
end;

function T440IPC.GetVlrIsdOLD: Double;
begin
  Result := FVlrIsdOLD;
end;

procedure T440IPC.SetVlrIsdOLD(const pVlrIsd: Double);
begin
  FVlrIsdOLD := pVlrIsd;
end;

function T440IPC.GetVlrBspOLD: Double;
begin
  Result := FVlrBspOLD;
end;

procedure T440IPC.SetVlrBspOLD(const pVlrBsp: Double);
begin
  FVlrBspOLD := pVlrBsp;
end;

function T440IPC.GetVlrStpOLD: Double;
begin
  Result := FVlrStpOLD;
end;

procedure T440IPC.SetVlrStpOLD(const pVlrStp: Double);
begin
  FVlrStpOLD := pVlrStp;
end;

function T440IPC.GetVlrBscOLD: Double;
begin
  Result := FVlrBscOLD;
end;

procedure T440IPC.SetVlrBscOLD(const pVlrBsc: Double);
begin
  FVlrBscOLD := pVlrBsc;
end;

function T440IPC.GetVlrStcOLD: Double;
begin
  Result := FVlrStcOLD;
end;

procedure T440IPC.SetVlrStcOLD(const pVlrStc: Double);
begin
  FVlrStcOLD := pVlrStc;
end;

function T440IPC.GetVlrIipOLD: Double;
begin
  Result := FVlrIipOLD;
end;

procedure T440IPC.SetVlrIipOLD(const pVlrIip: Double);
begin
  FVlrIipOLD := pVlrIip;
end;

function T440IPC.GetVlrIicOLD: Double;
begin
  Result := FVlrIicOLD;
end;

procedure T440IPC.SetVlrIicOLD(const pVlrIic: Double);
begin
  FVlrIicOLD := pVlrIic;
end;

function T440IPC.GetVlrOipOLD: Double;
begin
  Result := FVlrOipOLD;
end;

procedure T440IPC.SetVlrOipOLD(const pVlrOip: Double);
begin
  FVlrOipOLD := pVlrOip;
end;

function T440IPC.GetVlrOicOLD: Double;
begin
  Result := FVlrOicOLD;
end;

procedure T440IPC.SetVlrOicOLD(const pVlrOic: Double);
begin
  FVlrOicOLD := pVlrOic;
end;

function T440IPC.GetVlrLprOLD: Double;
begin
  Result := FVlrLprOLD;
end;

procedure T440IPC.SetVlrLprOLD(const pVlrLpr: Double);
begin
  FVlrLprOLD := pVlrLpr;
end;

function T440IPC.GetVlrLouOLD: Double;
begin
  Result := FVlrLouOLD;
end;

procedure T440IPC.SetVlrLouOLD(const pVlrLou: Double);
begin
  FVlrLouOLD := pVlrLou;
end;

function T440IPC.GetVlrLiqOLD: Double;
begin
  Result := FVlrLiqOLD;
end;

procedure T440IPC.SetVlrLiqOLD(const pVlrLiq: Double);
begin
  FVlrLiqOLD := pVlrLiq;
end;

function T440IPC.GetVlrFinOLD: Double;
begin
  Result := FVlrFinOLD;
end;

procedure T440IPC.SetVlrFinOLD(const pVlrFin: Double);
begin
  FVlrFinOLD := pVlrFin;
end;

function T440IPC.GetAcrFinOLD: Double;
begin
  Result := FAcrFinOLD;
end;

procedure T440IPC.SetAcrFinOLD(const pAcrFin: Double);
begin
  FAcrFinOLD := pAcrFin;
end;

function T440IPC.GetEmpNfvOLD: Integer;
begin
  Result := FEmpNfvOLD;
end;

procedure T440IPC.SetEmpNfvOLD(const pEmpNfv: Integer);
begin
  FEmpNfvOLD := pEmpNfv;
end;

function T440IPC.GetFilNfvOLD: Integer;
begin
  Result := FFilNfvOLD;
end;

procedure T440IPC.SetFilNfvOLD(const pFilNfv: Integer);
begin
  FFilNfvOLD := pFilNfv;
end;

function T440IPC.GetSnfNfvOLD: string;
begin
  Result := FSnfNfvOLD;
end;

procedure T440IPC.SetSnfNfvOLD(const pSnfNfv: string);
begin
  FSnfNfvOLD := pSnfNfv;
end;

function T440IPC.GetNumNfvOLD: Integer;
begin
  Result := FNumNfvOLD;
end;

procedure T440IPC.SetNumNfvOLD(const pNumNfv: Integer);
begin
  FNumNfvOLD := pNumNfv;
end;

function T440IPC.GetSeqIpvOLD: Integer;
begin
  Result := FSeqIpvOLD;
end;

procedure T440IPC.SetSeqIpvOLD(const pSeqIpv: Integer);
begin
  FSeqIpvOLD := pSeqIpv;
end;

function T440IPC.GetCodFabOLD: string;
begin
  Result := FCodFabOLD;
end;

procedure T440IPC.SetCodFabOLD(const pCodFab: string);
begin
  FCodFabOLD := pCodFab;
end;

function T440IPC.GetUsuGerOLD: Integer;
begin
  Result := FUsuGerOLD;
end;

procedure T440IPC.SetUsuGerOLD(const pUsuGer: Integer);
begin
  FUsuGerOLD := pUsuGer;
end;

function T440IPC.GetDatGerOLD: TDate;
begin
  Result := FDatGerOLD;
end;

procedure T440IPC.SetDatGerOLD(const pDatGer: TDate);
begin
  FDatGerOLD := pDatGer;
end;

function T440IPC.GetHorGerOLD: Integer;
begin
  Result := FHorGerOLD;
end;

procedure T440IPC.SetHorGerOLD(const pHorGer: Integer);
begin
  FHorGerOLD := pHorGer;
end;

function T440IPC.GetNumEpiOLD: Integer;
begin
  Result := FNumEpiOLD;
end;

procedure T440IPC.SetNumEpiOLD(const pNumEpi: Integer);
begin
  FNumEpiOLD := pNumEpi;
end;

function T440IPC.GetDatVltOLD: TDate;
begin
  Result := FDatVltOLD;
end;

procedure T440IPC.SetDatVltOLD(const pDatVlt: TDate);
begin
  FDatVltOLD := pDatVlt;
end;

function T440IPC.GetVlrBpiOLD: Double;
begin
  Result := FVlrBpiOLD;
end;

procedure T440IPC.SetVlrBpiOLD(const pVlrBpi: Double);
begin
  FVlrBpiOLD := pVlrBpi;
end;

function T440IPC.GetVlrPisOLD: Double;
begin
  Result := FVlrPisOLD;
end;

procedure T440IPC.SetVlrPisOLD(const pVlrPis: Double);
begin
  FVlrPisOLD := pVlrPis;
end;

function T440IPC.GetFilCtrOLD: Integer;
begin
  Result := FFilCtrOLD;
end;

procedure T440IPC.SetFilCtrOLD(const pFilCtr: Integer);
begin
  FFilCtrOLD := pFilCtr;
end;

function T440IPC.GetNumCtrOLD: Integer;
begin
  Result := FNumCtrOLD;
end;

procedure T440IPC.SetNumCtrOLD(const pNumCtr: Integer);
begin
  FNumCtrOLD := pNumCtr;
end;

function T440IPC.GetDatCptOLD: TDate;
begin
  Result := FDatCptOLD;
end;

procedure T440IPC.SetDatCptOLD(const pDatCpt: TDate);
begin
  FDatCptOLD := pDatCpt;
end;

function T440IPC.GetSeqCcpOLD: Integer;
begin
  Result := FSeqCcpOLD;
end;

procedure T440IPC.SetSeqCcpOLD(const pSeqCcp: Integer);
begin
  FSeqCcpOLD := pSeqCcp;
end;

function T440IPC.GetIntPatOLD: Char;
begin
  Result := FIntPatOLD;
end;

procedure T440IPC.SetIntPatOLD(const pIntPat: Char);
begin
  FIntPatOLD := pIntPat;
end;

function T440IPC.GetNotForOLD: Double;
begin
  Result := FNotForOLD;
end;

procedure T440IPC.SetNotForOLD(const pNotFor: Double);
begin
  FNotForOLD := pNotFor;
end;

function T440IPC.GetNotProOLD: Double;
begin
  Result := FNotProOLD;
end;

procedure T440IPC.SetNotProOLD(const pNotPro: Double);
begin
  FNotProOLD := pNotPro;
end;

function T440IPC.GetProFabOLD: string;
begin
  Result := FProFabOLD;
end;

procedure T440IPC.SetProFabOLD(const pProFab: string);
begin
  FProFabOLD := pProFab;
end;

function T440IPC.GetSeqIscOLD: Integer;
begin
  Result := FSeqIscOLD;
end;

procedure T440IPC.SetSeqIscOLD(const pSeqIsc: Integer);
begin
  FSeqIscOLD := pSeqIsc;
end;

function T440IPC.GetVlrBcrOLD: Double;
begin
  Result := FVlrBcrOLD;
end;

procedure T440IPC.SetVlrBcrOLD(const pVlrBcr: Double);
begin
  FVlrBcrOLD := pVlrBcr;
end;

function T440IPC.GetVlrCorOLD: Double;
begin
  Result := FVlrCorOLD;
end;

procedure T440IPC.SetVlrCorOLD(const pVlrCor: Double);
begin
  FVlrCorOLD := pVlrCor;
end;

function T440IPC.GetPerIimOLD: Double;
begin
  Result := FPerIimOLD;
end;

procedure T440IPC.SetPerIimOLD(const pPerIim: Double);
begin
  FPerIimOLD := pPerIim;
end;

function T440IPC.GetVlrBiiOLD: Double;
begin
  Result := FVlrBiiOLD;
end;

procedure T440IPC.SetVlrBiiOLD(const pVlrBii: Double);
begin
  FVlrBiiOLD := pVlrBii;
end;

function T440IPC.GetVlrIimOLD: Double;
begin
  Result := FVlrIimOLD;
end;

procedure T440IPC.SetVlrIimOLD(const pVlrIim: Double);
begin
  FVlrIimOLD := pVlrIim;
end;

function T440IPC.GetVlrRisOLD: Double;
begin
  Result := FVlrRisOLD;
end;

procedure T440IPC.SetVlrRisOLD(const pVlrRis: Double);
begin
  FVlrRisOLD := pVlrRis;
end;

function T440IPC.GetCodBemOLD: string;
begin
  Result := FCodBemOLD;
end;

procedure T440IPC.SetCodBemOLD(const pCodBem: string);
begin
  FCodBemOLD := pCodBem;
end;

function T440IPC.GetPerPitOLD: Double;
begin
  Result := FPerPitOLD;
end;

procedure T440IPC.SetPerPitOLD(const pPerPit: Double);
begin
  FPerPitOLD := pPerPit;
end;

function T440IPC.GetVlrBptOLD: Double;
begin
  Result := FVlrBptOLD;
end;

procedure T440IPC.SetVlrBptOLD(const pVlrBpt: Double);
begin
  FVlrBptOLD := pVlrBpt;
end;

function T440IPC.GetVlrPitOLD: Double;
begin
  Result := FVlrPitOLD;
end;

procedure T440IPC.SetVlrPitOLD(const pVlrPit: Double);
begin
  FVlrPitOLD := pVlrPit;
end;

function T440IPC.GetPerCrtOLD: Double;
begin
  Result := FPerCrtOLD;
end;

procedure T440IPC.SetPerCrtOLD(const pPerCrt: Double);
begin
  FPerCrtOLD := pPerCrt;
end;

function T440IPC.GetVlrBctOLD: Double;
begin
  Result := FVlrBctOLD;
end;

procedure T440IPC.SetVlrBctOLD(const pVlrBct: Double);
begin
  FVlrBctOLD := pVlrBct;
end;

function T440IPC.GetVlrCrtOLD: Double;
begin
  Result := FVlrCrtOLD;
end;

procedure T440IPC.SetVlrCrtOLD(const pVlrCrt: Double);
begin
  FVlrCrtOLD := pVlrCrt;
end;

function T440IPC.GetPerCslOLD: Double;
begin
  Result := FPerCslOLD;
end;

procedure T440IPC.SetPerCslOLD(const pPerCsl: Double);
begin
  FPerCslOLD := pPerCsl;
end;

function T440IPC.GetVlrBclOLD: Double;
begin
  Result := FVlrBclOLD;
end;

procedure T440IPC.SetVlrBclOLD(const pVlrBcl: Double);
begin
  FVlrBclOLD := pVlrBcl;
end;

function T440IPC.GetVlrCslOLD: Double;
begin
  Result := FVlrCslOLD;
end;

procedure T440IPC.SetVlrCslOLD(const pVlrCsl: Double);
begin
  FVlrCslOLD := pVlrCsl;
end;

function T440IPC.GetPerOurOLD: Double;
begin
  Result := FPerOurOLD;
end;

procedure T440IPC.SetPerOurOLD(const pPerOur: Double);
begin
  FPerOurOLD := pPerOur;
end;

function T440IPC.GetVlrBorOLD: Double;
begin
  Result := FVlrBorOLD;
end;

procedure T440IPC.SetVlrBorOLD(const pVlrBor: Double);
begin
  FVlrBorOLD := pVlrBor;
end;

function T440IPC.GetVlrOurOLD: Double;
begin
  Result := FVlrOurOLD;
end;

procedure T440IPC.SetVlrOurOLD(const pVlrOur: Double);
begin
  FVlrOurOLD := pVlrOur;
end;

function T440IPC.GetPerIrfOLD: Double;
begin
  Result := FPerIrfOLD;
end;

procedure T440IPC.SetPerIrfOLD(const pPerIrf: Double);
begin
  FPerIrfOLD := pPerIrf;
end;

function T440IPC.GetVlrBirOLD: Double;
begin
  Result := FVlrBirOLD;
end;

procedure T440IPC.SetVlrBirOLD(const pVlrBir: Double);
begin
  FVlrBirOLD := pVlrBir;
end;

function T440IPC.GetVlrIrfOLD: Double;
begin
  Result := FVlrIrfOLD;
end;

procedure T440IPC.SetVlrIrfOLD(const pVlrIrf: Double);
begin
  FVlrIrfOLD := pVlrIrf;
end;

function T440IPC.GetPerDs1OLD: Double;
begin
  Result := FPerDs1OLD;
end;

procedure T440IPC.SetPerDs1OLD(const pPerDs1: Double);
begin
  FPerDs1OLD := pPerDs1;
end;

function T440IPC.GetPerDs2OLD: Double;
begin
  Result := FPerDs2OLD;
end;

procedure T440IPC.SetPerDs2OLD(const pPerDs2: Double);
begin
  FPerDs2OLD := pPerDs2;
end;

function T440IPC.GetBecIpiOLD: Double;
begin
  Result := FBecIpiOLD;
end;

procedure T440IPC.SetBecIpiOLD(const pBecIpi: Double);
begin
  FBecIpiOLD := pBecIpi;
end;

function T440IPC.GetVecIpiOLD: Double;
begin
  Result := FVecIpiOLD;
end;

procedure T440IPC.SetVecIpiOLD(const pVecIpi: Double);
begin
  FVecIpiOLD := pVecIpi;
end;

function T440IPC.GetBecIcmOLD: Double;
begin
  Result := FBecIcmOLD;
end;

procedure T440IPC.SetBecIcmOLD(const pBecIcm: Double);
begin
  FBecIcmOLD := pBecIcm;
end;

function T440IPC.GetVecIcmOLD: Double;
begin
  Result := FVecIcmOLD;
end;

procedure T440IPC.SetVecIcmOLD(const pVecIcm: Double);
begin
  FVecIcmOLD := pVecIcm;
end;

function T440IPC.GetProForOLD: string;
begin
  Result := FProForOLD;
end;

procedure T440IPC.SetProForOLD(const pProFor: string);
begin
  FProForOLD := pProFor;
end;

function T440IPC.GetVlrFeiOLD: Double;
begin
  Result := FVlrFeiOLD;
end;

procedure T440IPC.SetVlrFeiOLD(const pVlrFei: Double);
begin
  FVlrFeiOLD := pVlrFei;
end;

function T440IPC.GetVlrSeiOLD: Double;
begin
  Result := FVlrSeiOLD;
end;

procedure T440IPC.SetVlrSeiOLD(const pVlrSei: Double);
begin
  FVlrSeiOLD := pVlrSei;
end;

function T440IPC.GetVlrOuiOLD: Double;
begin
  Result := FVlrOuiOLD;
end;

procedure T440IPC.SetVlrOuiOLD(const pVlrOui: Double);
begin
  FVlrOuiOLD := pVlrOui;
end;

function T440IPC.GetBcoImpOLD: Double;
begin
  Result := FBcoImpOLD;
end;

procedure T440IPC.SetBcoImpOLD(const pBcoImp: Double);
begin
  FBcoImpOLD := pBcoImp;
end;

function T440IPC.GetCofImpOLD: Double;
begin
  Result := FCofImpOLD;
end;

procedure T440IPC.SetCofImpOLD(const pCofImp: Double);
begin
  FCofImpOLD := pCofImp;
end;

function T440IPC.GetBpiImpOLD: Double;
begin
  Result := FBpiImpOLD;
end;

procedure T440IPC.SetBpiImpOLD(const pBpiImp: Double);
begin
  FBpiImpOLD := pBpiImp;
end;

function T440IPC.GetPisImpOLD: Double;
begin
  Result := FPisImpOLD;
end;

procedure T440IPC.SetPisImpOLD(const pPisImp: Double);
begin
  FPisImpOLD := pPisImp;
end;

function T440IPC.GetFilPedOLD: Integer;
begin
  Result := FFilPedOLD;
end;

procedure T440IPC.SetFilPedOLD(const pFilPed: Integer);
begin
  FFilPedOLD := pFilPed;
end;

function T440IPC.GetNumPedOLD: Integer;
begin
  Result := FNumPedOLD;
end;

procedure T440IPC.SetNumPedOLD(const pNumPed: Integer);
begin
  FNumPedOLD := pNumPed;
end;

function T440IPC.GetSeqIpdOLD: Integer;
begin
  Result := FSeqIpdOLD;
end;

procedure T440IPC.SetSeqIpdOLD(const pSeqIpd: Integer);
begin
  FSeqIpdOLD := pSeqIpd;
end;

function T440IPC.GetVlrDm1OLD: Double;
begin
  Result := FVlrDm1OLD;
end;

procedure T440IPC.SetVlrDm1OLD(const pVlrDm1: Double);
begin
  FVlrDm1OLD := pVlrDm1;
end;

function T440IPC.GetVlrDm2OLD: Double;
begin
  Result := FVlrDm2OLD;
end;

procedure T440IPC.SetVlrDm2OLD(const pVlrDm2: Double);
begin
  FVlrDm2OLD := pVlrDm2;
end;

function T440IPC.GetVlrDm3OLD: Double;
begin
  Result := FVlrDm3OLD;
end;

procedure T440IPC.SetVlrDm3OLD(const pVlrDm3: Double);
begin
  FVlrDm3OLD := pVlrDm3;
end;

function T440IPC.GetVlrDm4OLD: Double;
begin
  Result := FVlrDm4OLD;
end;

procedure T440IPC.SetVlrDm4OLD(const pVlrDm4: Double);
begin
  FVlrDm4OLD := pVlrDm4;
end;

function T440IPC.GetVlrDm5OLD: Double;
begin
  Result := FVlrDm5OLD;
end;

procedure T440IPC.SetVlrDm5OLD(const pVlrDm5: Double);
begin
  FVlrDm5OLD := pVlrDm5;
end;

function T440IPC.GetVlrDm6OLD: Double;
begin
  Result := FVlrDm6OLD;
end;

procedure T440IPC.SetVlrDm6OLD(const pVlrDm6: Double);
begin
  FVlrDm6OLD := pVlrDm6;
end;

function T440IPC.GetBemPriOLD: string;
begin
  Result := FBemPriOLD;
end;

procedure T440IPC.SetBemPriOLD(const pBemPri: string);
begin
  FBemPriOLD := pBemPri;
end;

function T440IPC.GetVlrBpfOLD: Double;
begin
  Result := FVlrBpfOLD;
end;

procedure T440IPC.SetVlrBpfOLD(const pVlrBpf: Double);
begin
  FVlrBpfOLD := pVlrBpf;
end;

function T440IPC.GetPerPifOLD: Double;
begin
  Result := FPerPifOLD;
end;

procedure T440IPC.SetPerPifOLD(const pPerPif: Double);
begin
  FPerPifOLD := pPerPif;
end;

function T440IPC.GetVlrPifOLD: Double;
begin
  Result := FVlrPifOLD;
end;

procedure T440IPC.SetVlrPifOLD(const pVlrPif: Double);
begin
  FVlrPifOLD := pVlrPif;
end;

function T440IPC.GetVlrBcfOLD: Double;
begin
  Result := FVlrBcfOLD;
end;

procedure T440IPC.SetVlrBcfOLD(const pVlrBcf: Double);
begin
  FVlrBcfOLD := pVlrBcf;
end;

function T440IPC.GetPerCffOLD: Double;
begin
  Result := FPerCffOLD;
end;

procedure T440IPC.SetPerCffOLD(const pPerCff: Double);
begin
  FPerCffOLD := pPerCff;
end;

function T440IPC.GetVlrCffOLD: Double;
begin
  Result := FVlrCffOLD;
end;

procedure T440IPC.SetVlrCffOLD(const pVlrCff: Double);
begin
  FVlrCffOLD := pVlrCff;
end;

function T440IPC.GetCstIpiOLD: string;
begin
  Result := FCstIpiOLD;
end;

procedure T440IPC.SetCstIpiOLD(const pCstIpi: string);
begin
  FCstIpiOLD := pCstIpi;
end;

function T440IPC.GetCstPisOLD: string;
begin
  Result := FCstPisOLD;
end;

procedure T440IPC.SetCstPisOLD(const pCstPis: string);
begin
  FCstPisOLD := pCstPis;
end;

function T440IPC.GetCstCofOLD: string;
begin
  Result := FCstCofOLD;
end;

procedure T440IPC.SetCstCofOLD(const pCstCof: string);
begin
  FCstCofOLD := pCstCof;
end;

function T440IPC.GetCodDfsOLD: Integer;
begin
  Result := FCodDfsOLD;
end;

procedure T440IPC.SetCodDfsOLD(const pCodDfs: Integer);
begin
  FCodDfsOLD := pCodDfs;
end;

function T440IPC.GetVlrAjsOLD: Double;
begin
  Result := FVlrAjsOLD;
end;

procedure T440IPC.SetVlrAjsOLD(const pVlrAjs: Double);
begin
  FVlrAjsOLD := pVlrAjs;
end;

function T440IPC.GetSeqEveOLD: Integer;
begin
  Result := FSeqEveOLD;
end;

procedure T440IPC.SetSeqEveOLD(const pSeqEve: Integer);
begin
  FSeqEveOLD := pSeqEve;
end;

function T440IPC.GetNumAdiOLD: Integer;
begin
  Result := FNumAdiOLD;
end;

procedure T440IPC.SetNumAdiOLD(const pNumAdi: Integer);
begin
  FNumAdiOLD := pNumAdi;
end;

function T440IPC.GetSeqAdiOLD: Integer;
begin
  Result := FSeqAdiOLD;
end;

procedure T440IPC.SetSeqAdiOLD(const pSeqAdi: Integer);
begin
  FSeqAdiOLD := pSeqAdi;
end;

function T440IPC.GetDscAdiOLD: Double;
begin
  Result := FDscAdiOLD;
end;

procedure T440IPC.SetDscAdiOLD(const pDscAdi: Double);
begin
  FDscAdiOLD := pDscAdi;
end;

function T440IPC.GetFabEstOLD: string;
begin
  Result := FFabEstOLD;
end;

procedure T440IPC.SetFabEstOLD(const pFabEst: string);
begin
  FFabEstOLD := pFabEst;
end;

function T440IPC.GetQtdBpiOLD: Double;
begin
  Result := FQtdBpiOLD;
end;

procedure T440IPC.SetQtdBpiOLD(const pQtdBpi: Double);
begin
  FQtdBpiOLD := pQtdBpi;
end;

function T440IPC.GetAliPisOLD: Double;
begin
  Result := FAliPisOLD;
end;

procedure T440IPC.SetAliPisOLD(const pAliPis: Double);
begin
  FAliPisOLD := pAliPis;
end;

function T440IPC.GetQtdBcoOLD: Double;
begin
  Result := FQtdBcoOLD;
end;

procedure T440IPC.SetQtdBcoOLD(const pQtdBco: Double);
begin
  FQtdBcoOLD := pQtdBco;
end;

function T440IPC.GetAliCofOLD: Double;
begin
  Result := FAliCofOLD;
end;

procedure T440IPC.SetAliCofOLD(const pAliCof: Double);
begin
  FAliCofOLD := pAliCof;
end;

function T440IPC.GetQtdBipOLD: Double;
begin
  Result := FQtdBipOLD;
end;

procedure T440IPC.SetQtdBipOLD(const pQtdBip: Double);
begin
  FQtdBipOLD := pQtdBip;
end;

function T440IPC.GetAliIpiOLD: Double;
begin
  Result := FAliIpiOLD;
end;

procedure T440IPC.SetAliIpiOLD(const pAliIpi: Double);
begin
  FAliIpiOLD := pAliIpi;
end;

function T440IPC.GetQtdBpfOLD: Double;
begin
  Result := FQtdBpfOLD;
end;

procedure T440IPC.SetQtdBpfOLD(const pQtdBpf: Double);
begin
  FQtdBpfOLD := pQtdBpf;
end;

function T440IPC.GetAliPifOLD: Double;
begin
  Result := FAliPifOLD;
end;

procedure T440IPC.SetAliPifOLD(const pAliPif: Double);
begin
  FAliPifOLD := pAliPif;
end;

function T440IPC.GetQtdBcfOLD: Double;
begin
  Result := FQtdBcfOLD;
end;

procedure T440IPC.SetQtdBcfOLD(const pQtdBcf: Double);
begin
  FQtdBcfOLD := pQtdBcf;
end;

function T440IPC.GetAliCffOLD: Double;
begin
  Result := FAliCffOLD;
end;

procedure T440IPC.SetAliCffOLD(const pAliCff: Double);
begin
  FAliCffOLD := pAliCff;
end;

function T440IPC.GetVlrSubOLD: Double;
begin
  Result := FVlrSubOLD;
end;

procedure T440IPC.SetVlrSubOLD(const pVlrSub: Double);
begin
  FVlrSubOLD := pVlrSub;
end;

function T440IPC.GetIndVipOLD: Char;
begin
  Result := FIndVipOLD;
end;

procedure T440IPC.SetIndVipOLD(const pIndVip: Char);
begin
  FIndVipOLD := pIndVip;
end;

function T440IPC.GetOriMerOLD: Char;
begin
  Result := FOriMerOLD;
end;

procedure T440IPC.SetOriMerOLD(const pOriMer: Char);
begin
  FOriMerOLD := pOriMer;
end;

function T440IPC.GetPerCitOLD: Double;
begin
  Result := FPerCitOLD;
end;

procedure T440IPC.SetPerCitOLD(const pPerCit: Double);
begin
  FPerCitOLD := pPerCit;
end;

function T440IPC.GetVlrCitOLD: Double;
begin
  Result := FVlrCitOLD;
end;

procedure T440IPC.SetVlrCitOLD(const pVlrCit: Double);
begin
  FVlrCitOLD := pVlrCit;
end;

function T440IPC.GetBasCreOLD: Integer;
begin
  Result := FBasCreOLD;
end;

procedure T440IPC.SetBasCreOLD(const pBasCre: Integer);
begin
  FBasCreOLD := pBasCre;
end;

function T440IPC.GetPecIcmOLD: Double;
begin
  Result := FPecIcmOLD;
end;

procedure T440IPC.SetPecIcmOLD(const pPecIcm: Double);
begin
  FPecIcmOLD := pPecIcm;
end;

function T440IPC.GetPecIpiOLD: Double;
begin
  Result := FPecIpiOLD;
end;

procedure T440IPC.SetPecIpiOLD(const pPecIpi: Double);
begin
  FPecIpiOLD := pPecIpi;
end;

function T440IPC.GetTipCurOLD: Integer;
begin
  Result := FTipCurOLD;
end;

procedure T440IPC.SetTipCurOLD(const pTipCur: Integer);
begin
  FTipCurOLD := pTipCur;
end;

function T440IPC.GetPerPirOLD: Double;
begin
  Result := FPerPirOLD;
end;

procedure T440IPC.SetPerPirOLD(const pPerPir: Double);
begin
  FPerPirOLD := pPerPir;
end;

function T440IPC.GetPerCorOLD: Double;
begin
  Result := FPerCorOLD;
end;

procedure T440IPC.SetPerCorOLD(const pPerCor: Double);
begin
  FPerCorOLD := pPerCor;
end;

function T440IPC.GetPerPimOLD: Double;
begin
  Result := FPerPimOLD;
end;

procedure T440IPC.SetPerPimOLD(const pPerPim: Double);
begin
  FPerPimOLD := pPerPim;
end;

function T440IPC.GetPerCimOLD: Double;
begin
  Result := FPerCimOLD;
end;

procedure T440IPC.SetPerCimOLD(const pPerCim: Double);
begin
  FPerCimOLD := pPerCim;
end;

function T440IPC.GetEmpCtoOLD: Integer;
begin
  Result := FEmpCtoOLD;
end;

procedure T440IPC.SetEmpCtoOLD(const pEmpCto: Integer);
begin
  FEmpCtoOLD := pEmpCto;
end;

function T440IPC.GetCodPcoOLD: Integer;
begin
  Result := FCodPcoOLD;
end;

procedure T440IPC.SetCodPcoOLD(const pCodPco: Integer);
begin
  FCodPcoOLD := pCodPco;
end;

function T440IPC.GetFilCtoOLD: Integer;
begin
  Result := FFilCtoOLD;
end;

procedure T440IPC.SetFilCtoOLD(const pFilCto: Integer);
begin
  FFilCtoOLD := pFilCto;
end;

function T440IPC.GetCptPcoOLD: TDate;
begin
  Result := FCptPcoOLD;
end;

procedure T440IPC.SetCptPcoOLD(const pCptPco: TDate);
begin
  FCptPcoOLD := pCptPco;
end;

function T440IPC.GetVlrImpOLD: Double;
begin
  Result := FVlrImpOLD;
end;

procedure T440IPC.SetVlrImpOLD(const pVlrImp: Double);
begin
  FVlrImpOLD := pVlrImp;
end;

function T440IPC.GetCoeFciOLD: Double;
begin
  Result := FCoeFciOLD;
end;

procedure T440IPC.SetCoeFciOLD(const pCoeFci: Double);
begin
  FCoeFciOLD := pCoeFci;
end;

function T440IPC.GetCodFciOLD: string;
begin
  Result := FCodFciOLD;
end;

procedure T440IPC.SetCodFciOLD(const pCodFci: string);
begin
  FCodFciOLD := pCodFci;
end;

function T440IPC.GetUSU_NumInvOLD: string;
begin
  Result := FUSU_NumInvOLD;
end;

procedure T440IPC.SetUSU_NumInvOLD(const pUSU_NumInv: string);
begin
  FUSU_NumInvOLD := pUSU_NumInv;
end;

function T440IPC.GetUSU_VlrBsiOLD: Double;
begin
  Result := FUSU_VlrBsiOLD;
end;

procedure T440IPC.SetUSU_VlrBsiOLD(const pUSU_VlrBsi: Double);
begin
  FUSU_VlrBsiOLD := pUSU_VlrBsi;
end;

function T440IPC.GetUSU_VlrIcsOLD: Double;
begin
  Result := FUSU_VlrIcsOLD;
end;

procedure T440IPC.SetUSU_VlrIcsOLD(const pUSU_VlrIcs: Double);
begin
  FUSU_VlrIcsOLD := pUSU_VlrIcs;
end;

function T440IPC.GetUSU_NumDoiOLD: string;
begin
  Result := FUSU_NumDoiOLD;
end;

procedure T440IPC.SetUSU_NumDoiOLD(const pUSU_NumDoi: string);
begin
  FUSU_NumDoiOLD := pUSU_NumDoi;
end;

function T440IPC.GetUSU_OcpFatOLD: Integer;
begin
  Result := FUSU_OcpFatOLD;
end;

procedure T440IPC.SetUSU_OcpFatOLD(const pUSU_OcpFat: Integer);
begin
  FUSU_OcpFatOLD := pUSU_OcpFat;
end;

function T440IPC.GetUSU_AcrDesOLD: Double;
begin
  Result := FUSU_AcrDesOLD;
end;

procedure T440IPC.SetUSU_AcrDesOLD(const pUSU_AcrDes: Double);
begin
  FUSU_AcrDesOLD := pUSU_AcrDes;
end;

function T440IPC.GetUSU_DesDivOLD: string;
begin
  Result := FUSU_DesDivOLD;
end;

procedure T440IPC.SetUSU_DesDivOLD(const pUSU_DesDiv: string);
begin
  FUSU_DesDivOLD := pUSU_DesDiv;
end;

function T440IPC.GetUSU_DesSolOLD: string;
begin
  Result := FUSU_DesSolOLD;
end;

procedure T440IPC.SetUSU_DesSolOLD(const pUSU_DesSol: string);
begin
  FUSU_DesSolOLD := pUSU_DesSol;
end;

procedure T440IPC.Registros_OLD();
begin
  FCodEmpOLD := FCodEmp;
  FCodFilOLD := FCodFil;
  FCodForOLD := FCodFor;
  FNumNfcOLD := FNumNfc;
  FCodSnfOLD := FCodSnf;
  FSeqIpcOLD := FSeqIpc;
  FTnsProOLD := FTnsPro;
  FNopProOLD := FNopPro;
  FFilOcpOLD := FFilOcp;
  FNumOcpOLD := FNumOcp;
  FSeqIpoOLD := FSeqIpo;
  FCodProOLD := FCodPro;
  FCodDerOLD := FCodDer;
  FCplIpcOLD := FCplIpc;
  FCodFamOLD := FCodFam;
  FCodClfOLD := FCodClf;
  FCodStrOLD := FCodStr;
  FCodTicOLD := FCodTic;
  FCodTrdOLD := FCodTrd;
  FCodTstOLD := FCodTst;
  FCodStpOLD := FCodStp;
  FCodStcOLD := FCodStc;
  FLauTecOLD := FLauTec;
  FUsuLauOLD := FUsuLau;
  FDatLauOLD := FDatLau;
  FHorLauOLD := FHorLau;
  FCodDepOLD := FCodDep;
  FCodLotOLD := FCodLot;
  FQtdRecOLD := FQtdRec;
  FUniNfcOLD := FUniNfc;
  FQtdAjbOLD := FQtdAjb;
  FQtdDevOLD := FQtdDev;
  FUniMedOLD := FUniMed;
  FQtdEstOLD := FQtdEst;
  FVlrFumOLD := FVlrFum;
  FQtdFreOLD := FQtdFre;
  FForFreOLD := FForFre;
  FPesBruOLD := FPesBru;
  FPesLiqOLD := FPesLiq;
  FCodTprOLD := FCodTpr;
  FPreUniOLD := FPreUni;
  FPreEstOLD := FPreEst;
  FPreBasOLD := FPreBas;
  FPerDscOLD := FPerDsc;
  FPerDs3OLD := FPerDs3;
  FPerDs4OLD := FPerDs4;
  FPerDs5OLD := FPerDs5;
  FPerIpiOLD := FPerIpi;
  FPerIcmOLD := FPerIcm;
  FPerFunOLD := FPerFun;
  FSalCanOLD := FSalCan;
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
  FVlrBidOLD := FVlrBid;
  FVlrIpdOLD := FVlrIpd;
  FVlrBicOLD := FVlrBic;
  FVlrIcmOLD := FVlrIcm;
  FVlrDfaOLD := FVlrDfa;
  FVlrBsiOLD := FVlrBsi;
  FVlrIcsOLD := FVlrIcs;
  FVlrBsdOLD := FVlrBsd;
  FVlrIsdOLD := FVlrIsd;
  FVlrBspOLD := FVlrBsp;
  FVlrStpOLD := FVlrStp;
  FVlrBscOLD := FVlrBsc;
  FVlrStcOLD := FVlrStc;
  FVlrIipOLD := FVlrIip;
  FVlrIicOLD := FVlrIic;
  FVlrOipOLD := FVlrOip;
  FVlrOicOLD := FVlrOic;
  FVlrLprOLD := FVlrLpr;
  FVlrLouOLD := FVlrLou;
  FVlrLiqOLD := FVlrLiq;
  FVlrFinOLD := FVlrFin;
  FAcrFinOLD := FAcrFin;
  FEmpNfvOLD := FEmpNfv;
  FFilNfvOLD := FFilNfv;
  FSnfNfvOLD := FSnfNfv;
  FNumNfvOLD := FNumNfv;
  FSeqIpvOLD := FSeqIpv;
  FCodFabOLD := FCodFab;
  FUsuGerOLD := FUsuGer;
  FDatGerOLD := FDatGer;
  FHorGerOLD := FHorGer;
  FNumEpiOLD := FNumEpi;
  FDatVltOLD := FDatVlt;
  FVlrBpiOLD := FVlrBpi;
  FVlrPisOLD := FVlrPis;
  FFilCtrOLD := FFilCtr;
  FNumCtrOLD := FNumCtr;
  FDatCptOLD := FDatCpt;
  FSeqCcpOLD := FSeqCcp;
  FIntPatOLD := FIntPat;
  FNotForOLD := FNotFor;
  FNotProOLD := FNotPro;
  FProFabOLD := FProFab;
  FSeqIscOLD := FSeqIsc;
  FVlrBcrOLD := FVlrBcr;
  FVlrCorOLD := FVlrCor;
  FPerIimOLD := FPerIim;
  FVlrBiiOLD := FVlrBii;
  FVlrIimOLD := FVlrIim;
  FVlrRisOLD := FVlrRis;
  FCodBemOLD := FCodBem;
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
  FPerDs1OLD := FPerDs1;
  FPerDs2OLD := FPerDs2;
  FBecIpiOLD := FBecIpi;
  FVecIpiOLD := FVecIpi;
  FBecIcmOLD := FBecIcm;
  FVecIcmOLD := FVecIcm;
  FProForOLD := FProFor;
  FVlrFeiOLD := FVlrFei;
  FVlrSeiOLD := FVlrSei;
  FVlrOuiOLD := FVlrOui;
  FBcoImpOLD := FBcoImp;
  FCofImpOLD := FCofImp;
  FBpiImpOLD := FBpiImp;
  FPisImpOLD := FPisImp;
  FFilPedOLD := FFilPed;
  FNumPedOLD := FNumPed;
  FSeqIpdOLD := FSeqIpd;
  FVlrDm1OLD := FVlrDm1;
  FVlrDm2OLD := FVlrDm2;
  FVlrDm3OLD := FVlrDm3;
  FVlrDm4OLD := FVlrDm4;
  FVlrDm5OLD := FVlrDm5;
  FVlrDm6OLD := FVlrDm6;
  FBemPriOLD := FBemPri;
  FVlrBpfOLD := FVlrBpf;
  FPerPifOLD := FPerPif;
  FVlrPifOLD := FVlrPif;
  FVlrBcfOLD := FVlrBcf;
  FPerCffOLD := FPerCff;
  FVlrCffOLD := FVlrCff;
  FCstIpiOLD := FCstIpi;
  FCstPisOLD := FCstPis;
  FCstCofOLD := FCstCof;
  FCodDfsOLD := FCodDfs;
  FVlrAjsOLD := FVlrAjs;
  FSeqEveOLD := FSeqEve;
  FNumAdiOLD := FNumAdi;
  FSeqAdiOLD := FSeqAdi;
  FDscAdiOLD := FDscAdi;
  FFabEstOLD := FFabEst;
  FQtdBpiOLD := FQtdBpi;
  FAliPisOLD := FAliPis;
  FQtdBcoOLD := FQtdBco;
  FAliCofOLD := FAliCof;
  FQtdBipOLD := FQtdBip;
  FAliIpiOLD := FAliIpi;
  FQtdBpfOLD := FQtdBpf;
  FAliPifOLD := FAliPif;
  FQtdBcfOLD := FQtdBcf;
  FAliCffOLD := FAliCff;
  FVlrSubOLD := FVlrSub;
  FIndVipOLD := FIndVip;
  FOriMerOLD := FOriMer;
  FPerCitOLD := FPerCit;
  FVlrCitOLD := FVlrCit;
  FBasCreOLD := FBasCre;
  FPecIcmOLD := FPecIcm;
  FPecIpiOLD := FPecIpi;
  FTipCurOLD := FTipCur;
  FPerPirOLD := FPerPir;
  FPerCorOLD := FPerCor;
  FPerPimOLD := FPerPim;
  FPerCimOLD := FPerCim;
  FEmpCtoOLD := FEmpCto;
  FCodPcoOLD := FCodPco;
  FFilCtoOLD := FFilCto;
  FCptPcoOLD := FCptPco;
  FVlrImpOLD := FVlrImp;
  FCoeFciOLD := FCoeFci;
  FCodFciOLD := FCodFci;
  FUSU_NumInvOLD := FUSU_NumInv;
  FUSU_VlrBsiOLD := FUSU_VlrBsi;
  FUSU_VlrIcsOLD := FUSU_VlrIcs;
  FUSU_NumDoiOLD := FUSU_NumDoi;
  FUSU_OcpFatOLD := FUSU_OcpFat;
  FUSU_AcrDesOLD := FUSU_AcrDes;
  FUSU_DesDivOLD := FUSU_DesDiv;
  FUSU_DesSolOLD := FUSU_DesSol;

  inherited;
end;

procedure T440IPC.RetornarValores();
begin
  FCodEmp := FCodEmpOLD;
  FCodFil := FCodFilOLD;
  FCodFor := FCodForOLD;
  FNumNfc := FNumNfcOLD;
  FCodSnf := FCodSnfOLD;
  FSeqIpc := FSeqIpcOLD;
  FTnsPro := FTnsProOLD;
  FNopPro := FNopProOLD;
  FFilOcp := FFilOcpOLD;
  FNumOcp := FNumOcpOLD;
  FSeqIpo := FSeqIpoOLD;
  FCodPro := FCodProOLD;
  FCodDer := FCodDerOLD;
  FCplIpc := FCplIpcOLD;
  FCodFam := FCodFamOLD;
  FCodClf := FCodClfOLD;
  FCodStr := FCodStrOLD;
  FCodTic := FCodTicOLD;
  FCodTrd := FCodTrdOLD;
  FCodTst := FCodTstOLD;
  FCodStp := FCodStpOLD;
  FCodStc := FCodStcOLD;
  FLauTec := FLauTecOLD;
  FUsuLau := FUsuLauOLD;
  FDatLau := FDatLauOLD;
  FHorLau := FHorLauOLD;
  FCodDep := FCodDepOLD;
  FCodLot := FCodLotOLD;
  FQtdRec := FQtdRecOLD;
  FUniNfc := FUniNfcOLD;
  FQtdAjb := FQtdAjbOLD;
  FQtdDev := FQtdDevOLD;
  FUniMed := FUniMedOLD;
  FQtdEst := FQtdEstOLD;
  FVlrFum := FVlrFumOLD;
  FQtdFre := FQtdFreOLD;
  FForFre := FForFreOLD;
  FPesBru := FPesBruOLD;
  FPesLiq := FPesLiqOLD;
  FCodTpr := FCodTprOLD;
  FPreUni := FPreUniOLD;
  FPreEst := FPreEstOLD;
  FPreBas := FPreBasOLD;
  FPerDsc := FPerDscOLD;
  FPerDs3 := FPerDs3OLD;
  FPerDs4 := FPerDs4OLD;
  FPerDs5 := FPerDs5OLD;
  FPerIpi := FPerIpiOLD;
  FPerIcm := FPerIcmOLD;
  FPerFun := FPerFunOLD;
  FSalCan := FSalCanOLD;
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
  FVlrBid := FVlrBidOLD;
  FVlrIpd := FVlrIpdOLD;
  FVlrBic := FVlrBicOLD;
  FVlrIcm := FVlrIcmOLD;
  FVlrDfa := FVlrDfaOLD;
  FVlrBsi := FVlrBsiOLD;
  FVlrIcs := FVlrIcsOLD;
  FVlrBsd := FVlrBsdOLD;
  FVlrIsd := FVlrIsdOLD;
  FVlrBsp := FVlrBspOLD;
  FVlrStp := FVlrStpOLD;
  FVlrBsc := FVlrBscOLD;
  FVlrStc := FVlrStcOLD;
  FVlrIip := FVlrIipOLD;
  FVlrIic := FVlrIicOLD;
  FVlrOip := FVlrOipOLD;
  FVlrOic := FVlrOicOLD;
  FVlrLpr := FVlrLprOLD;
  FVlrLou := FVlrLouOLD;
  FVlrLiq := FVlrLiqOLD;
  FVlrFin := FVlrFinOLD;
  FAcrFin := FAcrFinOLD;
  FEmpNfv := FEmpNfvOLD;
  FFilNfv := FFilNfvOLD;
  FSnfNfv := FSnfNfvOLD;
  FNumNfv := FNumNfvOLD;
  FSeqIpv := FSeqIpvOLD;
  FCodFab := FCodFabOLD;
  FUsuGer := FUsuGerOLD;
  FDatGer := FDatGerOLD;
  FHorGer := FHorGerOLD;
  FNumEpi := FNumEpiOLD;
  FDatVlt := FDatVltOLD;
  FVlrBpi := FVlrBpiOLD;
  FVlrPis := FVlrPisOLD;
  FFilCtr := FFilCtrOLD;
  FNumCtr := FNumCtrOLD;
  FDatCpt := FDatCptOLD;
  FSeqCcp := FSeqCcpOLD;
  FIntPat := FIntPatOLD;
  FNotFor := FNotForOLD;
  FNotPro := FNotProOLD;
  FProFab := FProFabOLD;
  FSeqIsc := FSeqIscOLD;
  FVlrBcr := FVlrBcrOLD;
  FVlrCor := FVlrCorOLD;
  FPerIim := FPerIimOLD;
  FVlrBii := FVlrBiiOLD;
  FVlrIim := FVlrIimOLD;
  FVlrRis := FVlrRisOLD;
  FCodBem := FCodBemOLD;
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
  FPerDs1 := FPerDs1OLD;
  FPerDs2 := FPerDs2OLD;
  FBecIpi := FBecIpiOLD;
  FVecIpi := FVecIpiOLD;
  FBecIcm := FBecIcmOLD;
  FVecIcm := FVecIcmOLD;
  FProFor := FProForOLD;
  FVlrFei := FVlrFeiOLD;
  FVlrSei := FVlrSeiOLD;
  FVlrOui := FVlrOuiOLD;
  FBcoImp := FBcoImpOLD;
  FCofImp := FCofImpOLD;
  FBpiImp := FBpiImpOLD;
  FPisImp := FPisImpOLD;
  FFilPed := FFilPedOLD;
  FNumPed := FNumPedOLD;
  FSeqIpd := FSeqIpdOLD;
  FVlrDm1 := FVlrDm1OLD;
  FVlrDm2 := FVlrDm2OLD;
  FVlrDm3 := FVlrDm3OLD;
  FVlrDm4 := FVlrDm4OLD;
  FVlrDm5 := FVlrDm5OLD;
  FVlrDm6 := FVlrDm6OLD;
  FBemPri := FBemPriOLD;
  FVlrBpf := FVlrBpfOLD;
  FPerPif := FPerPifOLD;
  FVlrPif := FVlrPifOLD;
  FVlrBcf := FVlrBcfOLD;
  FPerCff := FPerCffOLD;
  FVlrCff := FVlrCffOLD;
  FCstIpi := FCstIpiOLD;
  FCstPis := FCstPisOLD;
  FCstCof := FCstCofOLD;
  FCodDfs := FCodDfsOLD;
  FVlrAjs := FVlrAjsOLD;
  FSeqEve := FSeqEveOLD;
  FNumAdi := FNumAdiOLD;
  FSeqAdi := FSeqAdiOLD;
  FDscAdi := FDscAdiOLD;
  FFabEst := FFabEstOLD;
  FQtdBpi := FQtdBpiOLD;
  FAliPis := FAliPisOLD;
  FQtdBco := FQtdBcoOLD;
  FAliCof := FAliCofOLD;
  FQtdBip := FQtdBipOLD;
  FAliIpi := FAliIpiOLD;
  FQtdBpf := FQtdBpfOLD;
  FAliPif := FAliPifOLD;
  FQtdBcf := FQtdBcfOLD;
  FAliCff := FAliCffOLD;
  FVlrSub := FVlrSubOLD;
  FIndVip := FIndVipOLD;
  FOriMer := FOriMerOLD;
  FPerCit := FPerCitOLD;
  FVlrCit := FVlrCitOLD;
  FBasCre := FBasCreOLD;
  FPecIcm := FPecIcmOLD;
  FPecIpi := FPecIpiOLD;
  FTipCur := FTipCurOLD;
  FPerPir := FPerPirOLD;
  FPerCor := FPerCorOLD;
  FPerPim := FPerPimOLD;
  FPerCim := FPerCimOLD;
  FEmpCto := FEmpCtoOLD;
  FCodPco := FCodPcoOLD;
  FFilCto := FFilCtoOLD;
  FCptPco := FCptPcoOLD;
  FVlrImp := FVlrImpOLD;
  FCoeFci := FCoeFciOLD;
  FCodFci := FCodFciOLD;
  FUSU_NumInv := FUSU_NumInvOLD;
  FUSU_VlrBsi := FUSU_VlrBsiOLD;
  FUSU_VlrIcs := FUSU_VlrIcsOLD;
  FUSU_NumDoi := FUSU_NumDoiOLD;
  FUSU_OcpFat := FUSU_OcpFatOLD;
  FUSU_AcrDes := FUSU_AcrDesOLD;
  FUSU_DesDiv := FUSU_DesDivOLD;
  FUSU_DesSol := FUSU_DesSolOLD;

  inherited;
end;

end.
