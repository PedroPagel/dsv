unit o670bem;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T670BEM = class(TTabelaPadrao)
  private
    FCodEmp: Integer;
    FCodBem: string;
    FDesBem: string;
    FCodTns: string;
    FCodEsp: Integer;
    FQtdItm: Integer;
    FCodTur: Integer;
    FDatAqi: TDate;
    FDatIcl: TDate;
    FDatIcg: TDate;
    FDatEnt: TDate;
    FFilAqi: Integer;
    FFilLoc: Integer;
    FDatIin: TDate;
    FDatFin: TDate;
    FDatIac: TDate;
    FDatFac: TDate;
    FDatIig: TDate;
    FDatFig: TDate;
    FDatIag: TDate;
    FDatFag: TDate;
    FCcuExe: string;
    FCodCre: string;
    FCodInv: string;
    FCodPen: Integer;
    FDatPen: TDate;
    FCtaRed: Integer;
    FEspDoc: Char;
    FEmpNfc: Integer;
    FFilNfc: Integer;
    FCodFor: Integer;
    FNomFor: string;
    FCodSnf: string;
    FNumDoc: Integer;
    FSeqDoc: Integer;
    FTnsDoc: string;
    FSeqIpc: Integer;
    FSeqIsc: Integer;
    FDatGar: TDate;
    FDatMan: TDate;
    FCtaDst: Integer;
    FTaxIof: Double;
    FTaxIog: Double;
    FTaxIcu: Double;
    FVlrBas: Double;
    FVlrMco: Double;
    FVlrMio: Double;
    FVlrMgr: Double;
    FDprAcu: Double;
    FCorAcu: Double;
    FCdpAcu: Double;
    FVlrSeg: Double;
    FVlrIcm: Double;
    FPerEic: Integer;
    FTipAcr: Char;
    FDatInc: TDate;
    FDatTde: TDate;
    FDatRea: TDate;
    FDatTpa: TDate;
    FDatBai: TDate;
    FTrfOrg: string;
    FTrfUlt: Char;
    FBemAgp: string;
    FVlrDpb: Double;
    FCotMio: Double;
    FCotMig: Double;
    FCodCcu: string;
    FCodPro: string;
    FRecPis: Char;
    FCstPis: string;
    FEndFot: string;
    FCodMot: Integer;
    FObsMot: string;
    FSitPat: Char;
    FIndInv: Char;
    FDatInv: TDate;
    FUltCal: TDate;
    FRecCof: Char;
    FCstCof: string;
    FUsuGer: Integer;
    FDatGer: TDate;
    FHorGer: Integer;
    FEmpNfv: Integer;
    FFilNfv: Integer;
    FSnfNfv: string;
    FNumNfv: Integer;
    FSeqIpv: Integer;
    FSeqIsv: Integer;
    FVlrVen: Double;
    FTipDes: Char;
    FBprAcu: Double;
    FCbpAcu: Double;
    FBcrAcu: Double;
    FCbcAcu: Double;
    FBclAcu: Double;
    FCclAcu: Double;
    FRecCsl: Char;
    FQtmPis: Integer;
    FQtmCof: Integer;
    FQtmCsl: Integer;
    FRedBcl: Double;
    FVlrAqp: Double;
    FVlrAqc: Double;
    FVlrAql: Double;
    FIndExp: Integer;
    FDatIvd: TDate;
    FVidUti: Char;
    FUniMed: string;
    FVidTot: Double;
    FVidIni: Double;
    FVlrJus: Double;
    FVlrEsp: Double;
    FVlrRes: Double;
    FVdpAcu: Double;
    FVcdAcu: Double;
    FAtiEco: Integer;
    FDatCim: TDate;
    FQtpIni: Integer;
    FQtcIni: Integer;
    FQtlIni: Integer;
    FBpiExc: Double;
    FBcoExc: Double;
    FBclExc: Double;
    FBepIni: Double;
    FBecIni: Double;
    FBelIni: Double;
    FRefRec: Char;
    FBemOri: string;
    FDprRec: Char;
    FUtiBem: Integer;
    FUSU_MetImo: Double;
    FUSU_BemClp: Char;
    FUSU_MetCon: Double;
    FUSU_IDLIB: Integer;
    FUSU_BemPri: Char;
    FUSU_IndCom: Char;

    FCodEmpOLD: Integer;
    FCodBemOLD: string;
    FDesBemOLD: string;
    FCodTnsOLD: string;
    FCodEspOLD: Integer;
    FQtdItmOLD: Integer;
    FCodTurOLD: Integer;
    FDatAqiOLD: TDate;
    FDatIclOLD: TDate;
    FDatIcgOLD: TDate;
    FDatEntOLD: TDate;
    FFilAqiOLD: Integer;
    FFilLocOLD: Integer;
    FDatIinOLD: TDate;
    FDatFinOLD: TDate;
    FDatIacOLD: TDate;
    FDatFacOLD: TDate;
    FDatIigOLD: TDate;
    FDatFigOLD: TDate;
    FDatIagOLD: TDate;
    FDatFagOLD: TDate;
    FCcuExeOLD: string;
    FCodCreOLD: string;
    FCodInvOLD: string;
    FCodPenOLD: Integer;
    FDatPenOLD: TDate;
    FCtaRedOLD: Integer;
    FEspDocOLD: Char;
    FEmpNfcOLD: Integer;
    FFilNfcOLD: Integer;
    FCodForOLD: Integer;
    FNomForOLD: string;
    FCodSnfOLD: string;
    FNumDocOLD: Integer;
    FSeqDocOLD: Integer;
    FTnsDocOLD: string;
    FSeqIpcOLD: Integer;
    FSeqIscOLD: Integer;
    FDatGarOLD: TDate;
    FDatManOLD: TDate;
    FCtaDstOLD: Integer;
    FTaxIofOLD: Double;
    FTaxIogOLD: Double;
    FTaxIcuOLD: Double;
    FVlrBasOLD: Double;
    FVlrMcoOLD: Double;
    FVlrMioOLD: Double;
    FVlrMgrOLD: Double;
    FDprAcuOLD: Double;
    FCorAcuOLD: Double;
    FCdpAcuOLD: Double;
    FVlrSegOLD: Double;
    FVlrIcmOLD: Double;
    FPerEicOLD: Integer;
    FTipAcrOLD: Char;
    FDatIncOLD: TDate;
    FDatTdeOLD: TDate;
    FDatReaOLD: TDate;
    FDatTpaOLD: TDate;
    FDatBaiOLD: TDate;
    FTrfOrgOLD: string;
    FTrfUltOLD: Char;
    FBemAgpOLD: string;
    FVlrDpbOLD: Double;
    FCotMioOLD: Double;
    FCotMigOLD: Double;
    FCodCcuOLD: string;
    FCodProOLD: string;
    FRecPisOLD: Char;
    FCstPisOLD: string;
    FEndFotOLD: string;
    FCodMotOLD: Integer;
    FObsMotOLD: string;
    FSitPatOLD: Char;
    FIndInvOLD: Char;
    FDatInvOLD: TDate;
    FUltCalOLD: TDate;
    FRecCofOLD: Char;
    FCstCofOLD: string;
    FUsuGerOLD: Integer;
    FDatGerOLD: TDate;
    FHorGerOLD: Integer;
    FEmpNfvOLD: Integer;
    FFilNfvOLD: Integer;
    FSnfNfvOLD: string;
    FNumNfvOLD: Integer;
    FSeqIpvOLD: Integer;
    FSeqIsvOLD: Integer;
    FVlrVenOLD: Double;
    FTipDesOLD: Char;
    FBprAcuOLD: Double;
    FCbpAcuOLD: Double;
    FBcrAcuOLD: Double;
    FCbcAcuOLD: Double;
    FBclAcuOLD: Double;
    FCclAcuOLD: Double;
    FRecCslOLD: Char;
    FQtmPisOLD: Integer;
    FQtmCofOLD: Integer;
    FQtmCslOLD: Integer;
    FRedBclOLD: Double;
    FVlrAqpOLD: Double;
    FVlrAqcOLD: Double;
    FVlrAqlOLD: Double;
    FIndExpOLD: Integer;
    FDatIvdOLD: TDate;
    FVidUtiOLD: Char;
    FUniMedOLD: string;
    FVidTotOLD: Double;
    FVidIniOLD: Double;
    FVlrJusOLD: Double;
    FVlrEspOLD: Double;
    FVlrResOLD: Double;
    FVdpAcuOLD: Double;
    FVcdAcuOLD: Double;
    FAtiEcoOLD: Integer;
    FDatCimOLD: TDate;
    FQtpIniOLD: Integer;
    FQtcIniOLD: Integer;
    FQtlIniOLD: Integer;
    FBpiExcOLD: Double;
    FBcoExcOLD: Double;
    FBclExcOLD: Double;
    FBepIniOLD: Double;
    FBecIniOLD: Double;
    FBelIniOLD: Double;
    FRefRecOLD: Char;
    FBemOriOLD: string;
    FDprRecOLD: Char;
    FUtiBemOLD: Integer;
    FUSU_MetImoOLD: Double;
    FUSU_BemClpOLD: Char;
    FUSU_MetConOLD: Double;
    FUSU_IDLIBOLD: Integer;
    FUSU_BemPriOLD: Char;
    FUSU_IndComOLD: Char;

    function GetCodEmp: Integer;
    procedure SetCodEmp(const pCodEmp: Integer);
    function GetCodBem: string;
    procedure SetCodBem(const pCodBem: string);
    function GetDesBem: string;
    procedure SetDesBem(const pDesBem: string);
    function GetCodTns: string;
    procedure SetCodTns(const pCodTns: string);
    function GetCodEsp: Integer;
    procedure SetCodEsp(const pCodEsp: Integer);
    function GetQtdItm: Integer;
    procedure SetQtdItm(const pQtdItm: Integer);
    function GetCodTur: Integer;
    procedure SetCodTur(const pCodTur: Integer);
    function GetDatAqi: TDate;
    procedure SetDatAqi(const pDatAqi: TDate);
    function GetDatIcl: TDate;
    procedure SetDatIcl(const pDatIcl: TDate);
    function GetDatIcg: TDate;
    procedure SetDatIcg(const pDatIcg: TDate);
    function GetDatEnt: TDate;
    procedure SetDatEnt(const pDatEnt: TDate);
    function GetFilAqi: Integer;
    procedure SetFilAqi(const pFilAqi: Integer);
    function GetFilLoc: Integer;
    procedure SetFilLoc(const pFilLoc: Integer);
    function GetDatIin: TDate;
    procedure SetDatIin(const pDatIin: TDate);
    function GetDatFin: TDate;
    procedure SetDatFin(const pDatFin: TDate);
    function GetDatIac: TDate;
    procedure SetDatIac(const pDatIac: TDate);
    function GetDatFac: TDate;
    procedure SetDatFac(const pDatFac: TDate);
    function GetDatIig: TDate;
    procedure SetDatIig(const pDatIig: TDate);
    function GetDatFig: TDate;
    procedure SetDatFig(const pDatFig: TDate);
    function GetDatIag: TDate;
    procedure SetDatIag(const pDatIag: TDate);
    function GetDatFag: TDate;
    procedure SetDatFag(const pDatFag: TDate);
    function GetCcuExe: string;
    procedure SetCcuExe(const pCcuExe: string);
    function GetCodCre: string;
    procedure SetCodCre(const pCodCre: string);
    function GetCodInv: string;
    procedure SetCodInv(const pCodInv: string);
    function GetCodPen: Integer;
    procedure SetCodPen(const pCodPen: Integer);
    function GetDatPen: TDate;
    procedure SetDatPen(const pDatPen: TDate);
    function GetCtaRed: Integer;
    procedure SetCtaRed(const pCtaRed: Integer);
    function GetEspDoc: Char;
    procedure SetEspDoc(const pEspDoc: Char);
    function GetEmpNfc: Integer;
    procedure SetEmpNfc(const pEmpNfc: Integer);
    function GetFilNfc: Integer;
    procedure SetFilNfc(const pFilNfc: Integer);
    function GetCodFor: Integer;
    procedure SetCodFor(const pCodFor: Integer);
    function GetNomFor: string;
    procedure SetNomFor(const pNomFor: string);
    function GetCodSnf: string;
    procedure SetCodSnf(const pCodSnf: string);
    function GetNumDoc: Integer;
    procedure SetNumDoc(const pNumDoc: Integer);
    function GetSeqDoc: Integer;
    procedure SetSeqDoc(const pSeqDoc: Integer);
    function GetTnsDoc: string;
    procedure SetTnsDoc(const pTnsDoc: string);
    function GetSeqIpc: Integer;
    procedure SetSeqIpc(const pSeqIpc: Integer);
    function GetSeqIsc: Integer;
    procedure SetSeqIsc(const pSeqIsc: Integer);
    function GetDatGar: TDate;
    procedure SetDatGar(const pDatGar: TDate);
    function GetDatMan: TDate;
    procedure SetDatMan(const pDatMan: TDate);
    function GetCtaDst: Integer;
    procedure SetCtaDst(const pCtaDst: Integer);
    function GetTaxIof: Double;
    procedure SetTaxIof(const pTaxIof: Double);
    function GetTaxIog: Double;
    procedure SetTaxIog(const pTaxIog: Double);
    function GetTaxIcu: Double;
    procedure SetTaxIcu(const pTaxIcu: Double);
    function GetVlrBas: Double;
    procedure SetVlrBas(const pVlrBas: Double);
    function GetVlrMco: Double;
    procedure SetVlrMco(const pVlrMco: Double);
    function GetVlrMio: Double;
    procedure SetVlrMio(const pVlrMio: Double);
    function GetVlrMgr: Double;
    procedure SetVlrMgr(const pVlrMgr: Double);
    function GetDprAcu: Double;
    procedure SetDprAcu(const pDprAcu: Double);
    function GetCorAcu: Double;
    procedure SetCorAcu(const pCorAcu: Double);
    function GetCdpAcu: Double;
    procedure SetCdpAcu(const pCdpAcu: Double);
    function GetVlrSeg: Double;
    procedure SetVlrSeg(const pVlrSeg: Double);
    function GetVlrIcm: Double;
    procedure SetVlrIcm(const pVlrIcm: Double);
    function GetPerEic: Integer;
    procedure SetPerEic(const pPerEic: Integer);
    function GetTipAcr: Char;
    procedure SetTipAcr(const pTipAcr: Char);
    function GetDatInc: TDate;
    procedure SetDatInc(const pDatInc: TDate);
    function GetDatTde: TDate;
    procedure SetDatTde(const pDatTde: TDate);
    function GetDatRea: TDate;
    procedure SetDatRea(const pDatRea: TDate);
    function GetDatTpa: TDate;
    procedure SetDatTpa(const pDatTpa: TDate);
    function GetDatBai: TDate;
    procedure SetDatBai(const pDatBai: TDate);
    function GetTrfOrg: string;
    procedure SetTrfOrg(const pTrfOrg: string);
    function GetTrfUlt: Char;
    procedure SetTrfUlt(const pTrfUlt: Char);
    function GetBemAgp: string;
    procedure SetBemAgp(const pBemAgp: string);
    function GetVlrDpb: Double;
    procedure SetVlrDpb(const pVlrDpb: Double);
    function GetCotMio: Double;
    procedure SetCotMio(const pCotMio: Double);
    function GetCotMig: Double;
    procedure SetCotMig(const pCotMig: Double);
    function GetCodCcu: string;
    procedure SetCodCcu(const pCodCcu: string);
    function GetCodPro: string;
    procedure SetCodPro(const pCodPro: string);
    function GetRecPis: Char;
    procedure SetRecPis(const pRecPis: Char);
    function GetCstPis: string;
    procedure SetCstPis(const pCstPis: string);
    function GetEndFot: string;
    procedure SetEndFot(const pEndFot: string);
    function GetCodMot: Integer;
    procedure SetCodMot(const pCodMot: Integer);
    function GetObsMot: string;
    procedure SetObsMot(const pObsMot: string);
    function GetSitPat: Char;
    procedure SetSitPat(const pSitPat: Char);
    function GetIndInv: Char;
    procedure SetIndInv(const pIndInv: Char);
    function GetDatInv: TDate;
    procedure SetDatInv(const pDatInv: TDate);
    function GetUltCal: TDate;
    procedure SetUltCal(const pUltCal: TDate);
    function GetRecCof: Char;
    procedure SetRecCof(const pRecCof: Char);
    function GetCstCof: string;
    procedure SetCstCof(const pCstCof: string);
    function GetUsuGer: Integer;
    procedure SetUsuGer(const pUsuGer: Integer);
    function GetDatGer: TDate;
    procedure SetDatGer(const pDatGer: TDate);
    function GetHorGer: Integer;
    procedure SetHorGer(const pHorGer: Integer);
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
    function GetSeqIsv: Integer;
    procedure SetSeqIsv(const pSeqIsv: Integer);
    function GetVlrVen: Double;
    procedure SetVlrVen(const pVlrVen: Double);
    function GetTipDes: Char;
    procedure SetTipDes(const pTipDes: Char);
    function GetBprAcu: Double;
    procedure SetBprAcu(const pBprAcu: Double);
    function GetCbpAcu: Double;
    procedure SetCbpAcu(const pCbpAcu: Double);
    function GetBcrAcu: Double;
    procedure SetBcrAcu(const pBcrAcu: Double);
    function GetCbcAcu: Double;
    procedure SetCbcAcu(const pCbcAcu: Double);
    function GetBclAcu: Double;
    procedure SetBclAcu(const pBclAcu: Double);
    function GetCclAcu: Double;
    procedure SetCclAcu(const pCclAcu: Double);
    function GetRecCsl: Char;
    procedure SetRecCsl(const pRecCsl: Char);
    function GetQtmPis: Integer;
    procedure SetQtmPis(const pQtmPis: Integer);
    function GetQtmCof: Integer;
    procedure SetQtmCof(const pQtmCof: Integer);
    function GetQtmCsl: Integer;
    procedure SetQtmCsl(const pQtmCsl: Integer);
    function GetRedBcl: Double;
    procedure SetRedBcl(const pRedBcl: Double);
    function GetVlrAqp: Double;
    procedure SetVlrAqp(const pVlrAqp: Double);
    function GetVlrAqc: Double;
    procedure SetVlrAqc(const pVlrAqc: Double);
    function GetVlrAql: Double;
    procedure SetVlrAql(const pVlrAql: Double);
    function GetIndExp: Integer;
    procedure SetIndExp(const pIndExp: Integer);
    function GetDatIvd: TDate;
    procedure SetDatIvd(const pDatIvd: TDate);
    function GetVidUti: Char;
    procedure SetVidUti(const pVidUti: Char);
    function GetUniMed: string;
    procedure SetUniMed(const pUniMed: string);
    function GetVidTot: Double;
    procedure SetVidTot(const pVidTot: Double);
    function GetVidIni: Double;
    procedure SetVidIni(const pVidIni: Double);
    function GetVlrJus: Double;
    procedure SetVlrJus(const pVlrJus: Double);
    function GetVlrEsp: Double;
    procedure SetVlrEsp(const pVlrEsp: Double);
    function GetVlrRes: Double;
    procedure SetVlrRes(const pVlrRes: Double);
    function GetVdpAcu: Double;
    procedure SetVdpAcu(const pVdpAcu: Double);
    function GetVcdAcu: Double;
    procedure SetVcdAcu(const pVcdAcu: Double);
    function GetAtiEco: Integer;
    procedure SetAtiEco(const pAtiEco: Integer);
    function GetDatCim: TDate;
    procedure SetDatCim(const pDatCim: TDate);
    function GetQtpIni: Integer;
    procedure SetQtpIni(const pQtpIni: Integer);
    function GetQtcIni: Integer;
    procedure SetQtcIni(const pQtcIni: Integer);
    function GetQtlIni: Integer;
    procedure SetQtlIni(const pQtlIni: Integer);
    function GetBpiExc: Double;
    procedure SetBpiExc(const pBpiExc: Double);
    function GetBcoExc: Double;
    procedure SetBcoExc(const pBcoExc: Double);
    function GetBclExc: Double;
    procedure SetBclExc(const pBclExc: Double);
    function GetBepIni: Double;
    procedure SetBepIni(const pBepIni: Double);
    function GetBecIni: Double;
    procedure SetBecIni(const pBecIni: Double);
    function GetBelIni: Double;
    procedure SetBelIni(const pBelIni: Double);
    function GetRefRec: Char;
    procedure SetRefRec(const pRefRec: Char);
    function GetBemOri: string;
    procedure SetBemOri(const pBemOri: string);
    function GetDprRec: Char;
    procedure SetDprRec(const pDprRec: Char);
    function GetUtiBem: Integer;
    procedure SetUtiBem(const pUtiBem: Integer);
    function GetUSU_MetImo: Double;
    procedure SetUSU_MetImo(const pUSU_MetImo: Double);
    function GetUSU_BemClp: Char;
    procedure SetUSU_BemClp(const pUSU_BemClp: Char);
    function GetUSU_MetCon: Double;
    procedure SetUSU_MetCon(const pUSU_MetCon: Double);
    function GetUSU_IDLIB: Integer;
    procedure SetUSU_IDLIB(const pUSU_IDLIB: Integer);
    function GetUSU_BemPri: Char;
    procedure SetUSU_BemPri(const pUSU_BemPri: Char);
    function GetUSU_IndCom: Char;
    procedure SetUSU_IndCom(const pUSU_IndCom: Char);

    function GetCodEmpOld: Integer;
    procedure SetCodEmpOld(const pCodEmp: Integer);
    function GetCodBemOld: string;
    procedure SetCodBemOld(const pCodBem: string);
    function GetDesBemOld: string;
    procedure SetDesBemOld(const pDesBem: string);
    function GetCodTnsOld: string;
    procedure SetCodTnsOld(const pCodTns: string);
    function GetCodEspOld: Integer;
    procedure SetCodEspOld(const pCodEsp: Integer);
    function GetQtdItmOld: Integer;
    procedure SetQtdItmOld(const pQtdItm: Integer);
    function GetCodTurOld: Integer;
    procedure SetCodTurOld(const pCodTur: Integer);
    function GetDatAqiOld: TDate;
    procedure SetDatAqiOld(const pDatAqi: TDate);
    function GetDatIclOld: TDate;
    procedure SetDatIclOld(const pDatIcl: TDate);
    function GetDatIcgOld: TDate;
    procedure SetDatIcgOld(const pDatIcg: TDate);
    function GetDatEntOld: TDate;
    procedure SetDatEntOld(const pDatEnt: TDate);
    function GetFilAqiOld: Integer;
    procedure SetFilAqiOld(const pFilAqi: Integer);
    function GetFilLocOld: Integer;
    procedure SetFilLocOld(const pFilLoc: Integer);
    function GetDatIinOld: TDate;
    procedure SetDatIinOld(const pDatIin: TDate);
    function GetDatFinOld: TDate;
    procedure SetDatFinOld(const pDatFin: TDate);
    function GetDatIacOld: TDate;
    procedure SetDatIacOld(const pDatIac: TDate);
    function GetDatFacOld: TDate;
    procedure SetDatFacOld(const pDatFac: TDate);
    function GetDatIigOld: TDate;
    procedure SetDatIigOld(const pDatIig: TDate);
    function GetDatFigOld: TDate;
    procedure SetDatFigOld(const pDatFig: TDate);
    function GetDatIagOld: TDate;
    procedure SetDatIagOld(const pDatIag: TDate);
    function GetDatFagOld: TDate;
    procedure SetDatFagOld(const pDatFag: TDate);
    function GetCcuExeOld: string;
    procedure SetCcuExeOld(const pCcuExe: string);
    function GetCodCreOld: string;
    procedure SetCodCreOld(const pCodCre: string);
    function GetCodInvOld: string;
    procedure SetCodInvOld(const pCodInv: string);
    function GetCodPenOld: Integer;
    procedure SetCodPenOld(const pCodPen: Integer);
    function GetDatPenOld: TDate;
    procedure SetDatPenOld(const pDatPen: TDate);
    function GetCtaRedOld: Integer;
    procedure SetCtaRedOld(const pCtaRed: Integer);
    function GetEspDocOld: Char;
    procedure SetEspDocOld(const pEspDoc: Char);
    function GetEmpNfcOld: Integer;
    procedure SetEmpNfcOld(const pEmpNfc: Integer);
    function GetFilNfcOld: Integer;
    procedure SetFilNfcOld(const pFilNfc: Integer);
    function GetCodForOld: Integer;
    procedure SetCodForOld(const pCodFor: Integer);
    function GetNomForOld: string;
    procedure SetNomForOld(const pNomFor: string);
    function GetCodSnfOld: string;
    procedure SetCodSnfOld(const pCodSnf: string);
    function GetNumDocOld: Integer;
    procedure SetNumDocOld(const pNumDoc: Integer);
    function GetSeqDocOld: Integer;
    procedure SetSeqDocOld(const pSeqDoc: Integer);
    function GetTnsDocOld: string;
    procedure SetTnsDocOld(const pTnsDoc: string);
    function GetSeqIpcOld: Integer;
    procedure SetSeqIpcOld(const pSeqIpc: Integer);
    function GetSeqIscOld: Integer;
    procedure SetSeqIscOld(const pSeqIsc: Integer);
    function GetDatGarOld: TDate;
    procedure SetDatGarOld(const pDatGar: TDate);
    function GetDatManOld: TDate;
    procedure SetDatManOld(const pDatMan: TDate);
    function GetCtaDstOld: Integer;
    procedure SetCtaDstOld(const pCtaDst: Integer);
    function GetTaxIofOld: Double;
    procedure SetTaxIofOld(const pTaxIof: Double);
    function GetTaxIogOld: Double;
    procedure SetTaxIogOld(const pTaxIog: Double);
    function GetTaxIcuOld: Double;
    procedure SetTaxIcuOld(const pTaxIcu: Double);
    function GetVlrBasOld: Double;
    procedure SetVlrBasOld(const pVlrBas: Double);
    function GetVlrMcoOld: Double;
    procedure SetVlrMcoOld(const pVlrMco: Double);
    function GetVlrMioOld: Double;
    procedure SetVlrMioOld(const pVlrMio: Double);
    function GetVlrMgrOld: Double;
    procedure SetVlrMgrOld(const pVlrMgr: Double);
    function GetDprAcuOld: Double;
    procedure SetDprAcuOld(const pDprAcu: Double);
    function GetCorAcuOld: Double;
    procedure SetCorAcuOld(const pCorAcu: Double);
    function GetCdpAcuOld: Double;
    procedure SetCdpAcuOld(const pCdpAcu: Double);
    function GetVlrSegOld: Double;
    procedure SetVlrSegOld(const pVlrSeg: Double);
    function GetVlrIcmOld: Double;
    procedure SetVlrIcmOld(const pVlrIcm: Double);
    function GetPerEicOld: Integer;
    procedure SetPerEicOld(const pPerEic: Integer);
    function GetTipAcrOld: Char;
    procedure SetTipAcrOld(const pTipAcr: Char);
    function GetDatIncOld: TDate;
    procedure SetDatIncOld(const pDatInc: TDate);
    function GetDatTdeOld: TDate;
    procedure SetDatTdeOld(const pDatTde: TDate);
    function GetDatReaOld: TDate;
    procedure SetDatReaOld(const pDatRea: TDate);
    function GetDatTpaOld: TDate;
    procedure SetDatTpaOld(const pDatTpa: TDate);
    function GetDatBaiOld: TDate;
    procedure SetDatBaiOld(const pDatBai: TDate);
    function GetTrfOrgOld: string;
    procedure SetTrfOrgOld(const pTrfOrg: string);
    function GetTrfUltOld: Char;
    procedure SetTrfUltOld(const pTrfUlt: Char);
    function GetBemAgpOld: string;
    procedure SetBemAgpOld(const pBemAgp: string);
    function GetVlrDpbOld: Double;
    procedure SetVlrDpbOld(const pVlrDpb: Double);
    function GetCotMioOld: Double;
    procedure SetCotMioOld(const pCotMio: Double);
    function GetCotMigOld: Double;
    procedure SetCotMigOld(const pCotMig: Double);
    function GetCodCcuOld: string;
    procedure SetCodCcuOld(const pCodCcu: string);
    function GetCodProOld: string;
    procedure SetCodProOld(const pCodPro: string);
    function GetRecPisOld: Char;
    procedure SetRecPisOld(const pRecPis: Char);
    function GetCstPisOld: string;
    procedure SetCstPisOld(const pCstPis: string);
    function GetEndFotOld: string;
    procedure SetEndFotOld(const pEndFot: string);
    function GetCodMotOld: Integer;
    procedure SetCodMotOld(const pCodMot: Integer);
    function GetObsMotOld: string;
    procedure SetObsMotOld(const pObsMot: string);
    function GetSitPatOld: Char;
    procedure SetSitPatOld(const pSitPat: Char);
    function GetIndInvOld: Char;
    procedure SetIndInvOld(const pIndInv: Char);
    function GetDatInvOld: TDate;
    procedure SetDatInvOld(const pDatInv: TDate);
    function GetUltCalOld: TDate;
    procedure SetUltCalOld(const pUltCal: TDate);
    function GetRecCofOld: Char;
    procedure SetRecCofOld(const pRecCof: Char);
    function GetCstCofOld: string;
    procedure SetCstCofOld(const pCstCof: string);
    function GetUsuGerOld: Integer;
    procedure SetUsuGerOld(const pUsuGer: Integer);
    function GetDatGerOld: TDate;
    procedure SetDatGerOld(const pDatGer: TDate);
    function GetHorGerOld: Integer;
    procedure SetHorGerOld(const pHorGer: Integer);
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
    function GetSeqIsvOld: Integer;
    procedure SetSeqIsvOld(const pSeqIsv: Integer);
    function GetVlrVenOld: Double;
    procedure SetVlrVenOld(const pVlrVen: Double);
    function GetTipDesOld: Char;
    procedure SetTipDesOld(const pTipDes: Char);
    function GetBprAcuOld: Double;
    procedure SetBprAcuOld(const pBprAcu: Double);
    function GetCbpAcuOld: Double;
    procedure SetCbpAcuOld(const pCbpAcu: Double);
    function GetBcrAcuOld: Double;
    procedure SetBcrAcuOld(const pBcrAcu: Double);
    function GetCbcAcuOld: Double;
    procedure SetCbcAcuOld(const pCbcAcu: Double);
    function GetBclAcuOld: Double;
    procedure SetBclAcuOld(const pBclAcu: Double);
    function GetCclAcuOld: Double;
    procedure SetCclAcuOld(const pCclAcu: Double);
    function GetRecCslOld: Char;
    procedure SetRecCslOld(const pRecCsl: Char);
    function GetQtmPisOld: Integer;
    procedure SetQtmPisOld(const pQtmPis: Integer);
    function GetQtmCofOld: Integer;
    procedure SetQtmCofOld(const pQtmCof: Integer);
    function GetQtmCslOld: Integer;
    procedure SetQtmCslOld(const pQtmCsl: Integer);
    function GetRedBclOld: Double;
    procedure SetRedBclOld(const pRedBcl: Double);
    function GetVlrAqpOld: Double;
    procedure SetVlrAqpOld(const pVlrAqp: Double);
    function GetVlrAqcOld: Double;
    procedure SetVlrAqcOld(const pVlrAqc: Double);
    function GetVlrAqlOld: Double;
    procedure SetVlrAqlOld(const pVlrAql: Double);
    function GetIndExpOld: Integer;
    procedure SetIndExpOld(const pIndExp: Integer);
    function GetDatIvdOld: TDate;
    procedure SetDatIvdOld(const pDatIvd: TDate);
    function GetVidUtiOld: Char;
    procedure SetVidUtiOld(const pVidUti: Char);
    function GetUniMedOld: string;
    procedure SetUniMedOld(const pUniMed: string);
    function GetVidTotOld: Double;
    procedure SetVidTotOld(const pVidTot: Double);
    function GetVidIniOld: Double;
    procedure SetVidIniOld(const pVidIni: Double);
    function GetVlrJusOld: Double;
    procedure SetVlrJusOld(const pVlrJus: Double);
    function GetVlrEspOld: Double;
    procedure SetVlrEspOld(const pVlrEsp: Double);
    function GetVlrResOld: Double;
    procedure SetVlrResOld(const pVlrRes: Double);
    function GetVdpAcuOld: Double;
    procedure SetVdpAcuOld(const pVdpAcu: Double);
    function GetVcdAcuOld: Double;
    procedure SetVcdAcuOld(const pVcdAcu: Double);
    function GetAtiEcoOld: Integer;
    procedure SetAtiEcoOld(const pAtiEco: Integer);
    function GetDatCimOld: TDate;
    procedure SetDatCimOld(const pDatCim: TDate);
    function GetQtpIniOld: Integer;
    procedure SetQtpIniOld(const pQtpIni: Integer);
    function GetQtcIniOld: Integer;
    procedure SetQtcIniOld(const pQtcIni: Integer);
    function GetQtlIniOld: Integer;
    procedure SetQtlIniOld(const pQtlIni: Integer);
    function GetBpiExcOld: Double;
    procedure SetBpiExcOld(const pBpiExc: Double);
    function GetBcoExcOld: Double;
    procedure SetBcoExcOld(const pBcoExc: Double);
    function GetBclExcOld: Double;
    procedure SetBclExcOld(const pBclExc: Double);
    function GetBepIniOld: Double;
    procedure SetBepIniOld(const pBepIni: Double);
    function GetBecIniOld: Double;
    procedure SetBecIniOld(const pBecIni: Double);
    function GetBelIniOld: Double;
    procedure SetBelIniOld(const pBelIni: Double);
    function GetRefRecOld: Char;
    procedure SetRefRecOld(const pRefRec: Char);
    function GetBemOriOld: string;
    procedure SetBemOriOld(const pBemOri: string);
    function GetDprRecOld: Char;
    procedure SetDprRecOld(const pDprRec: Char);
    function GetUtiBemOld: Integer;
    procedure SetUtiBemOld(const pUtiBem: Integer);
    function GetUSU_MetImoOld: Double;
    procedure SetUSU_MetImoOld(const pUSU_MetImo: Double);
    function GetUSU_BemClpOld: Char;
    procedure SetUSU_BemClpOld(const pUSU_BemClp: Char);
    function GetUSU_MetConOld: Double;
    procedure SetUSU_MetConOld(const pUSU_MetCon: Double);
    function GetUSU_IDLIBOld: Integer;
    procedure SetUSU_IDLIBOld(const pUSU_IDLIB: Integer);
    function GetUSU_BemPriOld: Char;
    procedure SetUSU_BemPriOld(const pUSU_BemPri: Char);
    function GetUSU_IndComOld: Char;
    procedure SetUSU_IndComOld(const pUSU_IndCom: Char);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property CodEmp: Integer read GetCodEmp write SetCodEmp;
    property CodBem: string read GetCodBem write SetCodBem;
    property DesBem: string read GetDesBem write SetDesBem;
    property CodTns: string read GetCodTns write SetCodTns;
    property CodEsp: Integer read GetCodEsp write SetCodEsp;
    property QtdItm: Integer read GetQtdItm write SetQtdItm;
    property CodTur: Integer read GetCodTur write SetCodTur;
    property DatAqi: TDate read GetDatAqi write SetDatAqi;
    property DatIcl: TDate read GetDatIcl write SetDatIcl;
    property DatIcg: TDate read GetDatIcg write SetDatIcg;
    property DatEnt: TDate read GetDatEnt write SetDatEnt;
    property FilAqi: Integer read GetFilAqi write SetFilAqi;
    property FilLoc: Integer read GetFilLoc write SetFilLoc;
    property DatIin: TDate read GetDatIin write SetDatIin;
    property DatFin: TDate read GetDatFin write SetDatFin;
    property DatIac: TDate read GetDatIac write SetDatIac;
    property DatFac: TDate read GetDatFac write SetDatFac;
    property DatIig: TDate read GetDatIig write SetDatIig;
    property DatFig: TDate read GetDatFig write SetDatFig;
    property DatIag: TDate read GetDatIag write SetDatIag;
    property DatFag: TDate read GetDatFag write SetDatFag;
    property CcuExe: string read GetCcuExe write SetCcuExe;
    property CodCre: string read GetCodCre write SetCodCre;
    property CodInv: string read GetCodInv write SetCodInv;
    property CodPen: Integer read GetCodPen write SetCodPen;
    property DatPen: TDate read GetDatPen write SetDatPen;
    property CtaRed: Integer read GetCtaRed write SetCtaRed;
    property EspDoc: Char read GetEspDoc write SetEspDoc;
    property EmpNfc: Integer read GetEmpNfc write SetEmpNfc;
    property FilNfc: Integer read GetFilNfc write SetFilNfc;
    property CodFor: Integer read GetCodFor write SetCodFor;
    property NomFor: string read GetNomFor write SetNomFor;
    property CodSnf: string read GetCodSnf write SetCodSnf;
    property NumDoc: Integer read GetNumDoc write SetNumDoc;
    property SeqDoc: Integer read GetSeqDoc write SetSeqDoc;
    property TnsDoc: string read GetTnsDoc write SetTnsDoc;
    property SeqIpc: Integer read GetSeqIpc write SetSeqIpc;
    property SeqIsc: Integer read GetSeqIsc write SetSeqIsc;
    property DatGar: TDate read GetDatGar write SetDatGar;
    property DatMan: TDate read GetDatMan write SetDatMan;
    property CtaDst: Integer read GetCtaDst write SetCtaDst;
    property TaxIof: Double read GetTaxIof write SetTaxIof;
    property TaxIog: Double read GetTaxIog write SetTaxIog;
    property TaxIcu: Double read GetTaxIcu write SetTaxIcu;
    property VlrBas: Double read GetVlrBas write SetVlrBas;
    property VlrMco: Double read GetVlrMco write SetVlrMco;
    property VlrMio: Double read GetVlrMio write SetVlrMio;
    property VlrMgr: Double read GetVlrMgr write SetVlrMgr;
    property DprAcu: Double read GetDprAcu write SetDprAcu;
    property CorAcu: Double read GetCorAcu write SetCorAcu;
    property CdpAcu: Double read GetCdpAcu write SetCdpAcu;
    property VlrSeg: Double read GetVlrSeg write SetVlrSeg;
    property VlrIcm: Double read GetVlrIcm write SetVlrIcm;
    property PerEic: Integer read GetPerEic write SetPerEic;
    property TipAcr: Char read GetTipAcr write SetTipAcr;
    property DatInc: TDate read GetDatInc write SetDatInc;
    property DatTde: TDate read GetDatTde write SetDatTde;
    property DatRea: TDate read GetDatRea write SetDatRea;
    property DatTpa: TDate read GetDatTpa write SetDatTpa;
    property DatBai: TDate read GetDatBai write SetDatBai;
    property TrfOrg: string read GetTrfOrg write SetTrfOrg;
    property TrfUlt: Char read GetTrfUlt write SetTrfUlt;
    property BemAgp: string read GetBemAgp write SetBemAgp;
    property VlrDpb: Double read GetVlrDpb write SetVlrDpb;
    property CotMio: Double read GetCotMio write SetCotMio;
    property CotMig: Double read GetCotMig write SetCotMig;
    property CodCcu: string read GetCodCcu write SetCodCcu;
    property CodPro: string read GetCodPro write SetCodPro;
    property RecPis: Char read GetRecPis write SetRecPis;
    property CstPis: string read GetCstPis write SetCstPis;
    property EndFot: string read GetEndFot write SetEndFot;
    property CodMot: Integer read GetCodMot write SetCodMot;
    property ObsMot: string read GetObsMot write SetObsMot;
    property SitPat: Char read GetSitPat write SetSitPat;
    property IndInv: Char read GetIndInv write SetIndInv;
    property DatInv: TDate read GetDatInv write SetDatInv;
    property UltCal: TDate read GetUltCal write SetUltCal;
    property RecCof: Char read GetRecCof write SetRecCof;
    property CstCof: string read GetCstCof write SetCstCof;
    property UsuGer: Integer read GetUsuGer write SetUsuGer;
    property DatGer: TDate read GetDatGer write SetDatGer;
    property HorGer: Integer read GetHorGer write SetHorGer;
    property EmpNfv: Integer read GetEmpNfv write SetEmpNfv;
    property FilNfv: Integer read GetFilNfv write SetFilNfv;
    property SnfNfv: string read GetSnfNfv write SetSnfNfv;
    property NumNfv: Integer read GetNumNfv write SetNumNfv;
    property SeqIpv: Integer read GetSeqIpv write SetSeqIpv;
    property SeqIsv: Integer read GetSeqIsv write SetSeqIsv;
    property VlrVen: Double read GetVlrVen write SetVlrVen;
    property TipDes: Char read GetTipDes write SetTipDes;
    property BprAcu: Double read GetBprAcu write SetBprAcu;
    property CbpAcu: Double read GetCbpAcu write SetCbpAcu;
    property BcrAcu: Double read GetBcrAcu write SetBcrAcu;
    property CbcAcu: Double read GetCbcAcu write SetCbcAcu;
    property BclAcu: Double read GetBclAcu write SetBclAcu;
    property CclAcu: Double read GetCclAcu write SetCclAcu;
    property RecCsl: Char read GetRecCsl write SetRecCsl;
    property QtmPis: Integer read GetQtmPis write SetQtmPis;
    property QtmCof: Integer read GetQtmCof write SetQtmCof;
    property QtmCsl: Integer read GetQtmCsl write SetQtmCsl;
    property RedBcl: Double read GetRedBcl write SetRedBcl;
    property VlrAqp: Double read GetVlrAqp write SetVlrAqp;
    property VlrAqc: Double read GetVlrAqc write SetVlrAqc;
    property VlrAql: Double read GetVlrAql write SetVlrAql;
    property IndExp: Integer read GetIndExp write SetIndExp;
    property DatIvd: TDate read GetDatIvd write SetDatIvd;
    property VidUti: Char read GetVidUti write SetVidUti;
    property UniMed: string read GetUniMed write SetUniMed;
    property VidTot: Double read GetVidTot write SetVidTot;
    property VidIni: Double read GetVidIni write SetVidIni;
    property VlrJus: Double read GetVlrJus write SetVlrJus;
    property VlrEsp: Double read GetVlrEsp write SetVlrEsp;
    property VlrRes: Double read GetVlrRes write SetVlrRes;
    property VdpAcu: Double read GetVdpAcu write SetVdpAcu;
    property VcdAcu: Double read GetVcdAcu write SetVcdAcu;
    property AtiEco: Integer read GetAtiEco write SetAtiEco;
    property DatCim: TDate read GetDatCim write SetDatCim;
    property QtpIni: Integer read GetQtpIni write SetQtpIni;
    property QtcIni: Integer read GetQtcIni write SetQtcIni;
    property QtlIni: Integer read GetQtlIni write SetQtlIni;
    property BpiExc: Double read GetBpiExc write SetBpiExc;
    property BcoExc: Double read GetBcoExc write SetBcoExc;
    property BclExc: Double read GetBclExc write SetBclExc;
    property BepIni: Double read GetBepIni write SetBepIni;
    property BecIni: Double read GetBecIni write SetBecIni;
    property BelIni: Double read GetBelIni write SetBelIni;
    property RefRec: Char read GetRefRec write SetRefRec;
    property BemOri: string read GetBemOri write SetBemOri;
    property DprRec: Char read GetDprRec write SetDprRec;
    property UtiBem: Integer read GetUtiBem write SetUtiBem;
    property USU_MetImo: Double read GetUSU_MetImo write SetUSU_MetImo;
    property USU_BemClp: Char read GetUSU_BemClp write SetUSU_BemClp;
    property USU_MetCon: Double read GetUSU_MetCon write SetUSU_MetCon;
    property USU_IDLIB: Integer read GetUSU_IDLIB write SetUSU_IDLIB;
    property USU_BemPri: Char read GetUSU_BemPri write SetUSU_BemPri;
    //property USU_IndCom: Char read GetUSU_IndCom write SetUSU_IndCom;

    property OLD_CodEmp: Integer read GetCodEmpOLD write SetCodEmpOLD;
    property OLD_CodBem: string read GetCodBemOLD write SetCodBemOLD;
    property OLD_DesBem: string read GetDesBemOLD write SetDesBemOLD;
    property OLD_CodTns: string read GetCodTnsOLD write SetCodTnsOLD;
    property OLD_CodEsp: Integer read GetCodEspOLD write SetCodEspOLD;
    property OLD_QtdItm: Integer read GetQtdItmOLD write SetQtdItmOLD;
    property OLD_CodTur: Integer read GetCodTurOLD write SetCodTurOLD;
    property OLD_DatAqi: TDate read GetDatAqiOLD write SetDatAqiOLD;
    property OLD_DatIcl: TDate read GetDatIclOLD write SetDatIclOLD;
    property OLD_DatIcg: TDate read GetDatIcgOLD write SetDatIcgOLD;
    property OLD_DatEnt: TDate read GetDatEntOLD write SetDatEntOLD;
    property OLD_FilAqi: Integer read GetFilAqiOLD write SetFilAqiOLD;
    property OLD_FilLoc: Integer read GetFilLocOLD write SetFilLocOLD;
    property OLD_DatIin: TDate read GetDatIinOLD write SetDatIinOLD;
    property OLD_DatFin: TDate read GetDatFinOLD write SetDatFinOLD;
    property OLD_DatIac: TDate read GetDatIacOLD write SetDatIacOLD;
    property OLD_DatFac: TDate read GetDatFacOLD write SetDatFacOLD;
    property OLD_DatIig: TDate read GetDatIigOLD write SetDatIigOLD;
    property OLD_DatFig: TDate read GetDatFigOLD write SetDatFigOLD;
    property OLD_DatIag: TDate read GetDatIagOLD write SetDatIagOLD;
    property OLD_DatFag: TDate read GetDatFagOLD write SetDatFagOLD;
    property OLD_CcuExe: string read GetCcuExeOLD write SetCcuExeOLD;
    property OLD_CodCre: string read GetCodCreOLD write SetCodCreOLD;
    property OLD_CodInv: string read GetCodInvOLD write SetCodInvOLD;
    property OLD_CodPen: Integer read GetCodPenOLD write SetCodPenOLD;
    property OLD_DatPen: TDate read GetDatPenOLD write SetDatPenOLD;
    property OLD_CtaRed: Integer read GetCtaRedOLD write SetCtaRedOLD;
    property OLD_EspDoc: Char read GetEspDocOLD write SetEspDocOLD;
    property OLD_EmpNfc: Integer read GetEmpNfcOLD write SetEmpNfcOLD;
    property OLD_FilNfc: Integer read GetFilNfcOLD write SetFilNfcOLD;
    property OLD_CodFor: Integer read GetCodForOLD write SetCodForOLD;
    property OLD_NomFor: string read GetNomForOLD write SetNomForOLD;
    property OLD_CodSnf: string read GetCodSnfOLD write SetCodSnfOLD;
    property OLD_NumDoc: Integer read GetNumDocOLD write SetNumDocOLD;
    property OLD_SeqDoc: Integer read GetSeqDocOLD write SetSeqDocOLD;
    property OLD_TnsDoc: string read GetTnsDocOLD write SetTnsDocOLD;
    property OLD_SeqIpc: Integer read GetSeqIpcOLD write SetSeqIpcOLD;
    property OLD_SeqIsc: Integer read GetSeqIscOLD write SetSeqIscOLD;
    property OLD_DatGar: TDate read GetDatGarOLD write SetDatGarOLD;
    property OLD_DatMan: TDate read GetDatManOLD write SetDatManOLD;
    property OLD_CtaDst: Integer read GetCtaDstOLD write SetCtaDstOLD;
    property OLD_TaxIof: Double read GetTaxIofOLD write SetTaxIofOLD;
    property OLD_TaxIog: Double read GetTaxIogOLD write SetTaxIogOLD;
    property OLD_TaxIcu: Double read GetTaxIcuOLD write SetTaxIcuOLD;
    property OLD_VlrBas: Double read GetVlrBasOLD write SetVlrBasOLD;
    property OLD_VlrMco: Double read GetVlrMcoOLD write SetVlrMcoOLD;
    property OLD_VlrMio: Double read GetVlrMioOLD write SetVlrMioOLD;
    property OLD_VlrMgr: Double read GetVlrMgrOLD write SetVlrMgrOLD;
    property OLD_DprAcu: Double read GetDprAcuOLD write SetDprAcuOLD;
    property OLD_CorAcu: Double read GetCorAcuOLD write SetCorAcuOLD;
    property OLD_CdpAcu: Double read GetCdpAcuOLD write SetCdpAcuOLD;
    property OLD_VlrSeg: Double read GetVlrSegOLD write SetVlrSegOLD;
    property OLD_VlrIcm: Double read GetVlrIcmOLD write SetVlrIcmOLD;
    property OLD_PerEic: Integer read GetPerEicOLD write SetPerEicOLD;
    property OLD_TipAcr: Char read GetTipAcrOLD write SetTipAcrOLD;
    property OLD_DatInc: TDate read GetDatIncOLD write SetDatIncOLD;
    property OLD_DatTde: TDate read GetDatTdeOLD write SetDatTdeOLD;
    property OLD_DatRea: TDate read GetDatReaOLD write SetDatReaOLD;
    property OLD_DatTpa: TDate read GetDatTpaOLD write SetDatTpaOLD;
    property OLD_DatBai: TDate read GetDatBaiOLD write SetDatBaiOLD;
    property OLD_TrfOrg: string read GetTrfOrgOLD write SetTrfOrgOLD;
    property OLD_TrfUlt: Char read GetTrfUltOLD write SetTrfUltOLD;
    property OLD_BemAgp: string read GetBemAgpOLD write SetBemAgpOLD;
    property OLD_VlrDpb: Double read GetVlrDpbOLD write SetVlrDpbOLD;
    property OLD_CotMio: Double read GetCotMioOLD write SetCotMioOLD;
    property OLD_CotMig: Double read GetCotMigOLD write SetCotMigOLD;
    property OLD_CodCcu: string read GetCodCcuOLD write SetCodCcuOLD;
    property OLD_CodPro: string read GetCodProOLD write SetCodProOLD;
    property OLD_RecPis: Char read GetRecPisOLD write SetRecPisOLD;
    property OLD_CstPis: string read GetCstPisOLD write SetCstPisOLD;
    property OLD_EndFot: string read GetEndFotOLD write SetEndFotOLD;
    property OLD_CodMot: Integer read GetCodMotOLD write SetCodMotOLD;
    property OLD_ObsMot: string read GetObsMotOLD write SetObsMotOLD;
    property OLD_SitPat: Char read GetSitPatOLD write SetSitPatOLD;
    property OLD_IndInv: Char read GetIndInvOLD write SetIndInvOLD;
    property OLD_DatInv: TDate read GetDatInvOLD write SetDatInvOLD;
    property OLD_UltCal: TDate read GetUltCalOLD write SetUltCalOLD;
    property OLD_RecCof: Char read GetRecCofOLD write SetRecCofOLD;
    property OLD_CstCof: string read GetCstCofOLD write SetCstCofOLD;
    property OLD_UsuGer: Integer read GetUsuGerOLD write SetUsuGerOLD;
    property OLD_DatGer: TDate read GetDatGerOLD write SetDatGerOLD;
    property OLD_HorGer: Integer read GetHorGerOLD write SetHorGerOLD;
    property OLD_EmpNfv: Integer read GetEmpNfvOLD write SetEmpNfvOLD;
    property OLD_FilNfv: Integer read GetFilNfvOLD write SetFilNfvOLD;
    property OLD_SnfNfv: string read GetSnfNfvOLD write SetSnfNfvOLD;
    property OLD_NumNfv: Integer read GetNumNfvOLD write SetNumNfvOLD;
    property OLD_SeqIpv: Integer read GetSeqIpvOLD write SetSeqIpvOLD;
    property OLD_SeqIsv: Integer read GetSeqIsvOLD write SetSeqIsvOLD;
    property OLD_VlrVen: Double read GetVlrVenOLD write SetVlrVenOLD;
    property OLD_TipDes: Char read GetTipDesOLD write SetTipDesOLD;
    property OLD_BprAcu: Double read GetBprAcuOLD write SetBprAcuOLD;
    property OLD_CbpAcu: Double read GetCbpAcuOLD write SetCbpAcuOLD;
    property OLD_BcrAcu: Double read GetBcrAcuOLD write SetBcrAcuOLD;
    property OLD_CbcAcu: Double read GetCbcAcuOLD write SetCbcAcuOLD;
    property OLD_BclAcu: Double read GetBclAcuOLD write SetBclAcuOLD;
    property OLD_CclAcu: Double read GetCclAcuOLD write SetCclAcuOLD;
    property OLD_RecCsl: Char read GetRecCslOLD write SetRecCslOLD;
    property OLD_QtmPis: Integer read GetQtmPisOLD write SetQtmPisOLD;
    property OLD_QtmCof: Integer read GetQtmCofOLD write SetQtmCofOLD;
    property OLD_QtmCsl: Integer read GetQtmCslOLD write SetQtmCslOLD;
    property OLD_RedBcl: Double read GetRedBclOLD write SetRedBclOLD;
    property OLD_VlrAqp: Double read GetVlrAqpOLD write SetVlrAqpOLD;
    property OLD_VlrAqc: Double read GetVlrAqcOLD write SetVlrAqcOLD;
    property OLD_VlrAql: Double read GetVlrAqlOLD write SetVlrAqlOLD;
    property OLD_IndExp: Integer read GetIndExpOLD write SetIndExpOLD;
    property OLD_DatIvd: TDate read GetDatIvdOLD write SetDatIvdOLD;
    property OLD_VidUti: Char read GetVidUtiOLD write SetVidUtiOLD;
    property OLD_UniMed: string read GetUniMedOLD write SetUniMedOLD;
    property OLD_VidTot: Double read GetVidTotOLD write SetVidTotOLD;
    property OLD_VidIni: Double read GetVidIniOLD write SetVidIniOLD;
    property OLD_VlrJus: Double read GetVlrJusOLD write SetVlrJusOLD;
    property OLD_VlrEsp: Double read GetVlrEspOLD write SetVlrEspOLD;
    property OLD_VlrRes: Double read GetVlrResOLD write SetVlrResOLD;
    property OLD_VdpAcu: Double read GetVdpAcuOLD write SetVdpAcuOLD;
    property OLD_VcdAcu: Double read GetVcdAcuOLD write SetVcdAcuOLD;
    property OLD_AtiEco: Integer read GetAtiEcoOLD write SetAtiEcoOLD;
    property OLD_DatCim: TDate read GetDatCimOLD write SetDatCimOLD;
    property OLD_QtpIni: Integer read GetQtpIniOLD write SetQtpIniOLD;
    property OLD_QtcIni: Integer read GetQtcIniOLD write SetQtcIniOLD;
    property OLD_QtlIni: Integer read GetQtlIniOLD write SetQtlIniOLD;
    property OLD_BpiExc: Double read GetBpiExcOLD write SetBpiExcOLD;
    property OLD_BcoExc: Double read GetBcoExcOLD write SetBcoExcOLD;
    property OLD_BclExc: Double read GetBclExcOLD write SetBclExcOLD;
    property OLD_BepIni: Double read GetBepIniOLD write SetBepIniOLD;
    property OLD_BecIni: Double read GetBecIniOLD write SetBecIniOLD;
    property OLD_BelIni: Double read GetBelIniOLD write SetBelIniOLD;
    property OLD_RefRec: Char read GetRefRecOLD write SetRefRecOLD;
    property OLD_BemOri: string read GetBemOriOLD write SetBemOriOLD;
    property OLD_DprRec: Char read GetDprRecOLD write SetDprRecOLD;
    property OLD_UtiBem: Integer read GetUtiBemOLD write SetUtiBemOLD;
    property OLD_USU_MetImo: Double read GetUSU_MetImoOLD write SetUSU_MetImoOLD;
    property OLD_USU_BemClp: Char read GetUSU_BemClpOLD write SetUSU_BemClpOLD;
    property OLD_USU_MetCon: Double read GetUSU_MetConOLD write SetUSU_MetConOLD;
    property OLD_USU_IDLIB: Integer read GetUSU_IDLIBOLD write SetUSU_IDLIBOLD;
    property OLD_USU_BemPri: Char read GetUSU_BemPriOLD write SetUSU_BemPriOLD;
    //property OLD_USU_IndCom: Char read GetUSU_IndComOLD write SetUSU_IndComOLD;
  end;

implementation

{ T670BEM }

constructor T670BEM.Create();
begin
  AddForeignKeys(['CodEmp','CodTns','CodEmp','CodEsp'], ['CodEmp','CodTns','CodEmp','CodEsp']);
  AddPrimaryKeys('CodEmp;CodBem');

  inherited Create('E670BEM');
end;

destructor T670BEM.Destroy();
begin
  inherited;
end;

function T670BEM.GetCodEmp: Integer;
begin
  Result := FCodEmp;
end;

procedure T670BEM.SetCodEmp(const pCodEmp: Integer);
begin
  FCodEmp := pCodEmp;

  CheckField('CodEmp');
end;

function T670BEM.GetCodBem: string;
begin
  Result := FCodBem;
end;

procedure T670BEM.SetCodBem(const pCodBem: string);
begin
  FCodBem := pCodBem;

  CheckField('CodBem');
end;

function T670BEM.GetDesBem: string;
begin
  Result := FDesBem;
end;

procedure T670BEM.SetDesBem(const pDesBem: string);
begin
  FDesBem := pDesBem;

  CheckField('DesBem');
end;

function T670BEM.GetCodTns: string;
begin
  Result := FCodTns;
end;

procedure T670BEM.SetCodTns(const pCodTns: string);
begin
  FCodTns := pCodTns;

  CheckField('CodTns');
end;

function T670BEM.GetCodEsp: Integer;
begin
  Result := FCodEsp;
end;

procedure T670BEM.SetCodEsp(const pCodEsp: Integer);
begin
  FCodEsp := pCodEsp;

  CheckField('CodEsp');
end;

function T670BEM.GetQtdItm: Integer;
begin
  Result := FQtdItm;
end;

procedure T670BEM.SetQtdItm(const pQtdItm: Integer);
begin
  FQtdItm := pQtdItm;

  CheckField('QtdItm');
end;

function T670BEM.GetCodTur: Integer;
begin
  Result := FCodTur;
end;

procedure T670BEM.SetCodTur(const pCodTur: Integer);
begin
  FCodTur := pCodTur;

  CheckField('CodTur');
end;

function T670BEM.GetDatAqi: TDate;
begin
  Result := FDatAqi;
end;

procedure T670BEM.SetDatAqi(const pDatAqi: TDate);
begin
  FDatAqi := pDatAqi;

  CheckField('DatAqi');
end;

function T670BEM.GetDatIcl: TDate;
begin
  Result := FDatIcl;
end;

procedure T670BEM.SetDatIcl(const pDatIcl: TDate);
begin
  FDatIcl := pDatIcl;

  CheckField('DatIcl');
end;

function T670BEM.GetDatIcg: TDate;
begin
  Result := FDatIcg;
end;

procedure T670BEM.SetDatIcg(const pDatIcg: TDate);
begin
  FDatIcg := pDatIcg;

  CheckField('DatIcg');
end;

function T670BEM.GetDatEnt: TDate;
begin
  Result := FDatEnt;
end;

procedure T670BEM.SetDatEnt(const pDatEnt: TDate);
begin
  FDatEnt := pDatEnt;

  CheckField('DatEnt');
end;

function T670BEM.GetFilAqi: Integer;
begin
  Result := FFilAqi;
end;

procedure T670BEM.SetFilAqi(const pFilAqi: Integer);
begin
  FFilAqi := pFilAqi;

  CheckField('FilAqi');
end;

function T670BEM.GetFilLoc: Integer;
begin
  Result := FFilLoc;
end;

procedure T670BEM.SetFilLoc(const pFilLoc: Integer);
begin
  FFilLoc := pFilLoc;

  CheckField('FilLoc');
end;

function T670BEM.GetDatIin: TDate;
begin
  Result := FDatIin;
end;

procedure T670BEM.SetDatIin(const pDatIin: TDate);
begin
  FDatIin := pDatIin;

  CheckField('DatIin');
end;

function T670BEM.GetDatFin: TDate;
begin
  Result := FDatFin;
end;

procedure T670BEM.SetDatFin(const pDatFin: TDate);
begin
  FDatFin := pDatFin;

  CheckField('DatFin');
end;

function T670BEM.GetDatIac: TDate;
begin
  Result := FDatIac;
end;

procedure T670BEM.SetDatIac(const pDatIac: TDate);
begin
  FDatIac := pDatIac;

  CheckField('DatIac');
end;

function T670BEM.GetDatFac: TDate;
begin
  Result := FDatFac;
end;

procedure T670BEM.SetDatFac(const pDatFac: TDate);
begin
  FDatFac := pDatFac;

  CheckField('DatFac');
end;

function T670BEM.GetDatIig: TDate;
begin
  Result := FDatIig;
end;

procedure T670BEM.SetDatIig(const pDatIig: TDate);
begin
  FDatIig := pDatIig;

  CheckField('DatIig');
end;

function T670BEM.GetDatFig: TDate;
begin
  Result := FDatFig;
end;

procedure T670BEM.SetDatFig(const pDatFig: TDate);
begin
  FDatFig := pDatFig;

  CheckField('DatFig');
end;

function T670BEM.GetDatIag: TDate;
begin
  Result := FDatIag;
end;

procedure T670BEM.SetDatIag(const pDatIag: TDate);
begin
  FDatIag := pDatIag;

  CheckField('DatIag');
end;

function T670BEM.GetDatFag: TDate;
begin
  Result := FDatFag;
end;

procedure T670BEM.SetDatFag(const pDatFag: TDate);
begin
  FDatFag := pDatFag;

  CheckField('DatFag');
end;

function T670BEM.GetCcuExe: string;
begin
  Result := FCcuExe;
end;

procedure T670BEM.SetCcuExe(const pCcuExe: string);
begin
  FCcuExe := pCcuExe;

  CheckField('CcuExe');
end;

function T670BEM.GetCodCre: string;
begin
  Result := FCodCre;
end;

procedure T670BEM.SetCodCre(const pCodCre: string);
begin
  FCodCre := pCodCre;

  CheckField('CodCre');
end;

function T670BEM.GetCodInv: string;
begin
  Result := FCodInv;
end;

procedure T670BEM.SetCodInv(const pCodInv: string);
begin
  FCodInv := pCodInv;

  CheckField('CodInv');
end;

function T670BEM.GetCodPen: Integer;
begin
  Result := FCodPen;
end;

procedure T670BEM.SetCodPen(const pCodPen: Integer);
begin
  FCodPen := pCodPen;

  CheckField('CodPen');
end;

function T670BEM.GetDatPen: TDate;
begin
  Result := FDatPen;
end;

procedure T670BEM.SetDatPen(const pDatPen: TDate);
begin
  FDatPen := pDatPen;

  CheckField('DatPen');
end;

function T670BEM.GetCtaRed: Integer;
begin
  Result := FCtaRed;
end;

procedure T670BEM.SetCtaRed(const pCtaRed: Integer);
begin
  FCtaRed := pCtaRed;

  CheckField('CtaRed');
end;

function T670BEM.GetEspDoc: Char;
begin
  Result := FEspDoc;
end;

procedure T670BEM.SetEspDoc(const pEspDoc: Char);
begin
  FEspDoc := pEspDoc;

  CheckField('EspDoc');
end;

function T670BEM.GetEmpNfc: Integer;
begin
  Result := FEmpNfc;
end;

procedure T670BEM.SetEmpNfc(const pEmpNfc: Integer);
begin
  FEmpNfc := pEmpNfc;

  CheckField('EmpNfc');
end;

function T670BEM.GetFilNfc: Integer;
begin
  Result := FFilNfc;
end;

procedure T670BEM.SetFilNfc(const pFilNfc: Integer);
begin
  FFilNfc := pFilNfc;

  CheckField('FilNfc');
end;

function T670BEM.GetCodFor: Integer;
begin
  Result := FCodFor;
end;

procedure T670BEM.SetCodFor(const pCodFor: Integer);
begin
  FCodFor := pCodFor;

  CheckField('CodFor');
end;

function T670BEM.GetNomFor: string;
begin
  Result := FNomFor;
end;

procedure T670BEM.SetNomFor(const pNomFor: string);
begin
  FNomFor := pNomFor;

  CheckField('NomFor');
end;

function T670BEM.GetCodSnf: string;
begin
  Result := FCodSnf;
end;

procedure T670BEM.SetCodSnf(const pCodSnf: string);
begin
  FCodSnf := pCodSnf;

  CheckField('CodSnf');
end;

function T670BEM.GetNumDoc: Integer;
begin
  Result := FNumDoc;
end;

procedure T670BEM.SetNumDoc(const pNumDoc: Integer);
begin
  FNumDoc := pNumDoc;

  CheckField('NumDoc');
end;

function T670BEM.GetSeqDoc: Integer;
begin
  Result := FSeqDoc;
end;

procedure T670BEM.SetSeqDoc(const pSeqDoc: Integer);
begin
  FSeqDoc := pSeqDoc;

  CheckField('SeqDoc');
end;

function T670BEM.GetTnsDoc: string;
begin
  Result := FTnsDoc;
end;

procedure T670BEM.SetTnsDoc(const pTnsDoc: string);
begin
  FTnsDoc := pTnsDoc;

  CheckField('TnsDoc');
end;

function T670BEM.GetSeqIpc: Integer;
begin
  Result := FSeqIpc;
end;

procedure T670BEM.SetSeqIpc(const pSeqIpc: Integer);
begin
  FSeqIpc := pSeqIpc;

  CheckField('SeqIpc');
end;

function T670BEM.GetSeqIsc: Integer;
begin
  Result := FSeqIsc;
end;

procedure T670BEM.SetSeqIsc(const pSeqIsc: Integer);
begin
  FSeqIsc := pSeqIsc;

  CheckField('SeqIsc');
end;

function T670BEM.GetDatGar: TDate;
begin
  Result := FDatGar;
end;

procedure T670BEM.SetDatGar(const pDatGar: TDate);
begin
  FDatGar := pDatGar;

  CheckField('DatGar');
end;

function T670BEM.GetDatMan: TDate;
begin
  Result := FDatMan;
end;

procedure T670BEM.SetDatMan(const pDatMan: TDate);
begin
  FDatMan := pDatMan;

  CheckField('DatMan');
end;

function T670BEM.GetCtaDst: Integer;
begin
  Result := FCtaDst;
end;

procedure T670BEM.SetCtaDst(const pCtaDst: Integer);
begin
  FCtaDst := pCtaDst;

  CheckField('CtaDst');
end;

function T670BEM.GetTaxIof: Double;
begin
  Result := FTaxIof;
end;

procedure T670BEM.SetTaxIof(const pTaxIof: Double);
begin
  FTaxIof := pTaxIof;

  CheckField('TaxIof');
end;

function T670BEM.GetTaxIog: Double;
begin
  Result := FTaxIog;
end;

procedure T670BEM.SetTaxIog(const pTaxIog: Double);
begin
  FTaxIog := pTaxIog;

  CheckField('TaxIog');
end;

function T670BEM.GetTaxIcu: Double;
begin
  Result := FTaxIcu;
end;

procedure T670BEM.SetTaxIcu(const pTaxIcu: Double);
begin
  FTaxIcu := pTaxIcu;

  CheckField('TaxIcu');
end;

function T670BEM.GetVlrBas: Double;
begin
  Result := FVlrBas;
end;

procedure T670BEM.SetVlrBas(const pVlrBas: Double);
begin
  FVlrBas := pVlrBas;

  CheckField('VlrBas');
end;

function T670BEM.GetVlrMco: Double;
begin
  Result := FVlrMco;
end;

procedure T670BEM.SetVlrMco(const pVlrMco: Double);
begin
  FVlrMco := pVlrMco;

  CheckField('VlrMco');
end;

function T670BEM.GetVlrMio: Double;
begin
  Result := FVlrMio;
end;

procedure T670BEM.SetVlrMio(const pVlrMio: Double);
begin
  FVlrMio := pVlrMio;

  CheckField('VlrMio');
end;

function T670BEM.GetVlrMgr: Double;
begin
  Result := FVlrMgr;
end;

procedure T670BEM.SetVlrMgr(const pVlrMgr: Double);
begin
  FVlrMgr := pVlrMgr;

  CheckField('VlrMgr');
end;

function T670BEM.GetDprAcu: Double;
begin
  Result := FDprAcu;
end;

procedure T670BEM.SetDprAcu(const pDprAcu: Double);
begin
  FDprAcu := pDprAcu;

  CheckField('DprAcu');
end;

function T670BEM.GetCorAcu: Double;
begin
  Result := FCorAcu;
end;

procedure T670BEM.SetCorAcu(const pCorAcu: Double);
begin
  FCorAcu := pCorAcu;

  CheckField('CorAcu');
end;

function T670BEM.GetCdpAcu: Double;
begin
  Result := FCdpAcu;
end;

procedure T670BEM.SetCdpAcu(const pCdpAcu: Double);
begin
  FCdpAcu := pCdpAcu;

  CheckField('CdpAcu');
end;

function T670BEM.GetVlrSeg: Double;
begin
  Result := FVlrSeg;
end;

procedure T670BEM.SetVlrSeg(const pVlrSeg: Double);
begin
  FVlrSeg := pVlrSeg;

  CheckField('VlrSeg');
end;

function T670BEM.GetVlrIcm: Double;
begin
  Result := FVlrIcm;
end;

procedure T670BEM.SetVlrIcm(const pVlrIcm: Double);
begin
  FVlrIcm := pVlrIcm;

  CheckField('VlrIcm');
end;

function T670BEM.GetPerEic: Integer;
begin
  Result := FPerEic;
end;

procedure T670BEM.SetPerEic(const pPerEic: Integer);
begin
  FPerEic := pPerEic;

  CheckField('PerEic');
end;

function T670BEM.GetTipAcr: Char;
begin
  Result := FTipAcr;
end;

procedure T670BEM.SetTipAcr(const pTipAcr: Char);
begin
  FTipAcr := pTipAcr;

  CheckField('TipAcr');
end;

function T670BEM.GetDatInc: TDate;
begin
  Result := FDatInc;
end;

procedure T670BEM.SetDatInc(const pDatInc: TDate);
begin
  FDatInc := pDatInc;

  CheckField('DatInc');
end;

function T670BEM.GetDatTde: TDate;
begin
  Result := FDatTde;
end;

procedure T670BEM.SetDatTde(const pDatTde: TDate);
begin
  FDatTde := pDatTde;

  CheckField('DatTde');
end;

function T670BEM.GetDatRea: TDate;
begin
  Result := FDatRea;
end;

procedure T670BEM.SetDatRea(const pDatRea: TDate);
begin
  FDatRea := pDatRea;

  CheckField('DatRea');
end;

function T670BEM.GetDatTpa: TDate;
begin
  Result := FDatTpa;
end;

procedure T670BEM.SetDatTpa(const pDatTpa: TDate);
begin
  FDatTpa := pDatTpa;

  CheckField('DatTpa');
end;

function T670BEM.GetDatBai: TDate;
begin
  Result := FDatBai;
end;

procedure T670BEM.SetDatBai(const pDatBai: TDate);
begin
  FDatBai := pDatBai;

  CheckField('DatBai');
end;

function T670BEM.GetTrfOrg: string;
begin
  Result := FTrfOrg;
end;

procedure T670BEM.SetTrfOrg(const pTrfOrg: string);
begin
  FTrfOrg := pTrfOrg;

  CheckField('TrfOrg');
end;

function T670BEM.GetTrfUlt: Char;
begin
  Result := FTrfUlt;
end;

procedure T670BEM.SetTrfUlt(const pTrfUlt: Char);
begin
  FTrfUlt := pTrfUlt;

  CheckField('TrfUlt');
end;

function T670BEM.GetBemAgp: string;
begin
  Result := FBemAgp;
end;

procedure T670BEM.SetBemAgp(const pBemAgp: string);
begin
  FBemAgp := pBemAgp;

  CheckField('BemAgp');
end;

function T670BEM.GetVlrDpb: Double;
begin
  Result := FVlrDpb;
end;

procedure T670BEM.SetVlrDpb(const pVlrDpb: Double);
begin
  FVlrDpb := pVlrDpb;

  CheckField('VlrDpb');
end;

function T670BEM.GetCotMio: Double;
begin
  Result := FCotMio;
end;

procedure T670BEM.SetCotMio(const pCotMio: Double);
begin
  FCotMio := pCotMio;

  CheckField('CotMio');
end;

function T670BEM.GetCotMig: Double;
begin
  Result := FCotMig;
end;

procedure T670BEM.SetCotMig(const pCotMig: Double);
begin
  FCotMig := pCotMig;

  CheckField('CotMig');
end;

function T670BEM.GetCodCcu: string;
begin
  Result := FCodCcu;
end;

procedure T670BEM.SetCodCcu(const pCodCcu: string);
begin
  FCodCcu := pCodCcu;

  CheckField('CodCcu');
end;

function T670BEM.GetCodPro: string;
begin
  Result := FCodPro;
end;

procedure T670BEM.SetCodPro(const pCodPro: string);
begin
  FCodPro := pCodPro;

  CheckField('CodPro');
end;

function T670BEM.GetRecPis: Char;
begin
  Result := FRecPis;
end;

procedure T670BEM.SetRecPis(const pRecPis: Char);
begin
  FRecPis := pRecPis;

  CheckField('RecPis');
end;

function T670BEM.GetCstPis: string;
begin
  Result := FCstPis;
end;

procedure T670BEM.SetCstPis(const pCstPis: string);
begin
  FCstPis := pCstPis;

  CheckField('CstPis');
end;

function T670BEM.GetEndFot: string;
begin
  Result := FEndFot;
end;

procedure T670BEM.SetEndFot(const pEndFot: string);
begin
  FEndFot := pEndFot;

  CheckField('EndFot');
end;

function T670BEM.GetCodMot: Integer;
begin
  Result := FCodMot;
end;

procedure T670BEM.SetCodMot(const pCodMot: Integer);
begin
  FCodMot := pCodMot;

  CheckField('CodMot');
end;

function T670BEM.GetObsMot: string;
begin
  Result := FObsMot;
end;

procedure T670BEM.SetObsMot(const pObsMot: string);
begin
  FObsMot := pObsMot;

  CheckField('ObsMot');
end;

function T670BEM.GetSitPat: Char;
begin
  Result := FSitPat;
end;

procedure T670BEM.SetSitPat(const pSitPat: Char);
begin
  FSitPat := pSitPat;

  CheckField('SitPat');
end;

function T670BEM.GetIndInv: Char;
begin
  Result := FIndInv;
end;

procedure T670BEM.SetIndInv(const pIndInv: Char);
begin
  FIndInv := pIndInv;

  CheckField('IndInv');
end;

function T670BEM.GetDatInv: TDate;
begin
  Result := FDatInv;
end;

procedure T670BEM.SetDatInv(const pDatInv: TDate);
begin
  FDatInv := pDatInv;

  CheckField('DatInv');
end;

function T670BEM.GetUltCal: TDate;
begin
  Result := FUltCal;
end;

procedure T670BEM.SetUltCal(const pUltCal: TDate);
begin
  FUltCal := pUltCal;

  CheckField('UltCal');
end;

function T670BEM.GetRecCof: Char;
begin
  Result := FRecCof;
end;

procedure T670BEM.SetRecCof(const pRecCof: Char);
begin
  FRecCof := pRecCof;

  CheckField('RecCof');
end;

function T670BEM.GetCstCof: string;
begin
  Result := FCstCof;
end;

procedure T670BEM.SetCstCof(const pCstCof: string);
begin
  FCstCof := pCstCof;

  CheckField('CstCof');
end;

function T670BEM.GetUsuGer: Integer;
begin
  Result := FUsuGer;
end;

procedure T670BEM.SetUsuGer(const pUsuGer: Integer);
begin
  FUsuGer := pUsuGer;

  CheckField('UsuGer');
end;

function T670BEM.GetDatGer: TDate;
begin
  Result := FDatGer;
end;

procedure T670BEM.SetDatGer(const pDatGer: TDate);
begin
  FDatGer := pDatGer;

  CheckField('DatGer');
end;

function T670BEM.GetHorGer: Integer;
begin
  Result := FHorGer;
end;

procedure T670BEM.SetHorGer(const pHorGer: Integer);
begin
  FHorGer := pHorGer;

  CheckField('HorGer');
end;

function T670BEM.GetEmpNfv: Integer;
begin
  Result := FEmpNfv;
end;

procedure T670BEM.SetEmpNfv(const pEmpNfv: Integer);
begin
  FEmpNfv := pEmpNfv;

  CheckField('EmpNfv');
end;

function T670BEM.GetFilNfv: Integer;
begin
  Result := FFilNfv;
end;

procedure T670BEM.SetFilNfv(const pFilNfv: Integer);
begin
  FFilNfv := pFilNfv;

  CheckField('FilNfv');
end;

function T670BEM.GetSnfNfv: string;
begin
  Result := FSnfNfv;
end;

procedure T670BEM.SetSnfNfv(const pSnfNfv: string);
begin
  FSnfNfv := pSnfNfv;

  CheckField('SnfNfv');
end;

function T670BEM.GetNumNfv: Integer;
begin
  Result := FNumNfv;
end;

procedure T670BEM.SetNumNfv(const pNumNfv: Integer);
begin
  FNumNfv := pNumNfv;

  CheckField('NumNfv');
end;

function T670BEM.GetSeqIpv: Integer;
begin
  Result := FSeqIpv;
end;

procedure T670BEM.SetSeqIpv(const pSeqIpv: Integer);
begin
  FSeqIpv := pSeqIpv;

  CheckField('SeqIpv');
end;

function T670BEM.GetSeqIsv: Integer;
begin
  Result := FSeqIsv;
end;

procedure T670BEM.SetSeqIsv(const pSeqIsv: Integer);
begin
  FSeqIsv := pSeqIsv;

  CheckField('SeqIsv');
end;

function T670BEM.GetVlrVen: Double;
begin
  Result := FVlrVen;
end;

procedure T670BEM.SetVlrVen(const pVlrVen: Double);
begin
  FVlrVen := pVlrVen;

  CheckField('VlrVen');
end;

function T670BEM.GetTipDes: Char;
begin
  Result := FTipDes;
end;

procedure T670BEM.SetTipDes(const pTipDes: Char);
begin
  FTipDes := pTipDes;

  CheckField('TipDes');
end;

function T670BEM.GetBprAcu: Double;
begin
  Result := FBprAcu;
end;

procedure T670BEM.SetBprAcu(const pBprAcu: Double);
begin
  FBprAcu := pBprAcu;

  CheckField('BprAcu');
end;

function T670BEM.GetCbpAcu: Double;
begin
  Result := FCbpAcu;
end;

procedure T670BEM.SetCbpAcu(const pCbpAcu: Double);
begin
  FCbpAcu := pCbpAcu;

  CheckField('CbpAcu');
end;

function T670BEM.GetBcrAcu: Double;
begin
  Result := FBcrAcu;
end;

procedure T670BEM.SetBcrAcu(const pBcrAcu: Double);
begin
  FBcrAcu := pBcrAcu;

  CheckField('BcrAcu');
end;

function T670BEM.GetCbcAcu: Double;
begin
  Result := FCbcAcu;
end;

procedure T670BEM.SetCbcAcu(const pCbcAcu: Double);
begin
  FCbcAcu := pCbcAcu;

  CheckField('CbcAcu');
end;

function T670BEM.GetBclAcu: Double;
begin
  Result := FBclAcu;
end;

procedure T670BEM.SetBclAcu(const pBclAcu: Double);
begin
  FBclAcu := pBclAcu;

  CheckField('BclAcu');
end;

function T670BEM.GetCclAcu: Double;
begin
  Result := FCclAcu;
end;

procedure T670BEM.SetCclAcu(const pCclAcu: Double);
begin
  FCclAcu := pCclAcu;

  CheckField('CclAcu');
end;

function T670BEM.GetRecCsl: Char;
begin
  Result := FRecCsl;
end;

procedure T670BEM.SetRecCsl(const pRecCsl: Char);
begin
  FRecCsl := pRecCsl;

  CheckField('RecCsl');
end;

function T670BEM.GetQtmPis: Integer;
begin
  Result := FQtmPis;
end;

procedure T670BEM.SetQtmPis(const pQtmPis: Integer);
begin
  FQtmPis := pQtmPis;

  CheckField('QtmPis');
end;

function T670BEM.GetQtmCof: Integer;
begin
  Result := FQtmCof;
end;

procedure T670BEM.SetQtmCof(const pQtmCof: Integer);
begin
  FQtmCof := pQtmCof;

  CheckField('QtmCof');
end;

function T670BEM.GetQtmCsl: Integer;
begin
  Result := FQtmCsl;
end;

procedure T670BEM.SetQtmCsl(const pQtmCsl: Integer);
begin
  FQtmCsl := pQtmCsl;

  CheckField('QtmCsl');
end;

function T670BEM.GetRedBcl: Double;
begin
  Result := FRedBcl;
end;

procedure T670BEM.SetRedBcl(const pRedBcl: Double);
begin
  FRedBcl := pRedBcl;

  CheckField('RedBcl');
end;

function T670BEM.GetVlrAqp: Double;
begin
  Result := FVlrAqp;
end;

procedure T670BEM.SetVlrAqp(const pVlrAqp: Double);
begin
  FVlrAqp := pVlrAqp;

  CheckField('VlrAqp');
end;

function T670BEM.GetVlrAqc: Double;
begin
  Result := FVlrAqc;
end;

procedure T670BEM.SetVlrAqc(const pVlrAqc: Double);
begin
  FVlrAqc := pVlrAqc;

  CheckField('VlrAqc');
end;

function T670BEM.GetVlrAql: Double;
begin
  Result := FVlrAql;
end;

procedure T670BEM.SetVlrAql(const pVlrAql: Double);
begin
  FVlrAql := pVlrAql;

  CheckField('VlrAql');
end;

function T670BEM.GetIndExp: Integer;
begin
  Result := FIndExp;
end;

procedure T670BEM.SetIndExp(const pIndExp: Integer);
begin
  FIndExp := pIndExp;

  CheckField('IndExp');
end;

function T670BEM.GetDatIvd: TDate;
begin
  Result := FDatIvd;
end;

procedure T670BEM.SetDatIvd(const pDatIvd: TDate);
begin
  FDatIvd := pDatIvd;

  CheckField('DatIvd');
end;

function T670BEM.GetVidUti: Char;
begin
  Result := FVidUti;
end;

procedure T670BEM.SetVidUti(const pVidUti: Char);
begin
  FVidUti := pVidUti;

  CheckField('VidUti');
end;

function T670BEM.GetUniMed: string;
begin
  Result := FUniMed;
end;

procedure T670BEM.SetUniMed(const pUniMed: string);
begin
  FUniMed := pUniMed;

  CheckField('UniMed');
end;

function T670BEM.GetVidTot: Double;
begin
  Result := FVidTot;
end;

procedure T670BEM.SetVidTot(const pVidTot: Double);
begin
  FVidTot := pVidTot;

  CheckField('VidTot');
end;

function T670BEM.GetVidIni: Double;
begin
  Result := FVidIni;
end;

procedure T670BEM.SetVidIni(const pVidIni: Double);
begin
  FVidIni := pVidIni;

  CheckField('VidIni');
end;

function T670BEM.GetVlrJus: Double;
begin
  Result := FVlrJus;
end;

procedure T670BEM.SetVlrJus(const pVlrJus: Double);
begin
  FVlrJus := pVlrJus;

  CheckField('VlrJus');
end;

function T670BEM.GetVlrEsp: Double;
begin
  Result := FVlrEsp;
end;

procedure T670BEM.SetVlrEsp(const pVlrEsp: Double);
begin
  FVlrEsp := pVlrEsp;

  CheckField('VlrEsp');
end;

function T670BEM.GetVlrRes: Double;
begin
  Result := FVlrRes;
end;

procedure T670BEM.SetVlrRes(const pVlrRes: Double);
begin
  FVlrRes := pVlrRes;

  CheckField('VlrRes');
end;

function T670BEM.GetVdpAcu: Double;
begin
  Result := FVdpAcu;
end;

procedure T670BEM.SetVdpAcu(const pVdpAcu: Double);
begin
  FVdpAcu := pVdpAcu;

  CheckField('VdpAcu');
end;

function T670BEM.GetVcdAcu: Double;
begin
  Result := FVcdAcu;
end;

procedure T670BEM.SetVcdAcu(const pVcdAcu: Double);
begin
  FVcdAcu := pVcdAcu;

  CheckField('VcdAcu');
end;

function T670BEM.GetAtiEco: Integer;
begin
  Result := FAtiEco;
end;

procedure T670BEM.SetAtiEco(const pAtiEco: Integer);
begin
  FAtiEco := pAtiEco;

  CheckField('AtiEco');
end;

function T670BEM.GetDatCim: TDate;
begin
  Result := FDatCim;
end;

procedure T670BEM.SetDatCim(const pDatCim: TDate);
begin
  FDatCim := pDatCim;

  CheckField('DatCim');
end;

function T670BEM.GetQtpIni: Integer;
begin
  Result := FQtpIni;
end;

procedure T670BEM.SetQtpIni(const pQtpIni: Integer);
begin
  FQtpIni := pQtpIni;

  CheckField('QtpIni');
end;

function T670BEM.GetQtcIni: Integer;
begin
  Result := FQtcIni;
end;

procedure T670BEM.SetQtcIni(const pQtcIni: Integer);
begin
  FQtcIni := pQtcIni;

  CheckField('QtcIni');
end;

function T670BEM.GetQtlIni: Integer;
begin
  Result := FQtlIni;
end;

procedure T670BEM.SetQtlIni(const pQtlIni: Integer);
begin
  FQtlIni := pQtlIni;

  CheckField('QtlIni');
end;

function T670BEM.GetBpiExc: Double;
begin
  Result := FBpiExc;
end;

procedure T670BEM.SetBpiExc(const pBpiExc: Double);
begin
  FBpiExc := pBpiExc;

  CheckField('BpiExc');
end;

function T670BEM.GetBcoExc: Double;
begin
  Result := FBcoExc;
end;

procedure T670BEM.SetBcoExc(const pBcoExc: Double);
begin
  FBcoExc := pBcoExc;

  CheckField('BcoExc');
end;

function T670BEM.GetBclExc: Double;
begin
  Result := FBclExc;
end;

procedure T670BEM.SetBclExc(const pBclExc: Double);
begin
  FBclExc := pBclExc;

  CheckField('BclExc');
end;

function T670BEM.GetBepIni: Double;
begin
  Result := FBepIni;
end;

procedure T670BEM.SetBepIni(const pBepIni: Double);
begin
  FBepIni := pBepIni;

  CheckField('BepIni');
end;

function T670BEM.GetBecIni: Double;
begin
  Result := FBecIni;
end;

procedure T670BEM.SetBecIni(const pBecIni: Double);
begin
  FBecIni := pBecIni;

  CheckField('BecIni');
end;

function T670BEM.GetBelIni: Double;
begin
  Result := FBelIni;
end;

procedure T670BEM.SetBelIni(const pBelIni: Double);
begin
  FBelIni := pBelIni;

  CheckField('BelIni');
end;

function T670BEM.GetRefRec: Char;
begin
  Result := FRefRec;
end;

procedure T670BEM.SetRefRec(const pRefRec: Char);
begin
  FRefRec := pRefRec;

  CheckField('RefRec');
end;

function T670BEM.GetBemOri: string;
begin
  Result := FBemOri;
end;

procedure T670BEM.SetBemOri(const pBemOri: string);
begin
  FBemOri := pBemOri;

  CheckField('BemOri');
end;

function T670BEM.GetDprRec: Char;
begin
  Result := FDprRec;
end;

procedure T670BEM.SetDprRec(const pDprRec: Char);
begin
  FDprRec := pDprRec;

  CheckField('DprRec');
end;

function T670BEM.GetUtiBem: Integer;
begin
  Result := FUtiBem;
end;

procedure T670BEM.SetUtiBem(const pUtiBem: Integer);
begin
  FUtiBem := pUtiBem;

  CheckField('UtiBem');
end;

function T670BEM.GetUSU_MetImo: Double;
begin
  Result := FUSU_MetImo;
end;

procedure T670BEM.SetUSU_MetImo(const pUSU_MetImo: Double);
begin
  FUSU_MetImo := pUSU_MetImo;

  CheckField('USU_MetImo');
end;

function T670BEM.GetUSU_BemClp: Char;
begin
  Result := FUSU_BemClp;
end;

procedure T670BEM.SetUSU_BemClp(const pUSU_BemClp: Char);
begin
  FUSU_BemClp := pUSU_BemClp;

  CheckField('USU_BemClp');
end;

function T670BEM.GetUSU_MetCon: Double;
begin
  Result := FUSU_MetCon;
end;

procedure T670BEM.SetUSU_MetCon(const pUSU_MetCon: Double);
begin
  FUSU_MetCon := pUSU_MetCon;

  CheckField('USU_MetCon');
end;

function T670BEM.GetUSU_IDLIB: Integer;
begin
  Result := FUSU_IDLIB;
end;

procedure T670BEM.SetUSU_IDLIB(const pUSU_IDLIB: Integer);
begin
  FUSU_IDLIB := pUSU_IDLIB;

  CheckField('USU_IDLIB');
end;

function T670BEM.GetUSU_BemPri: Char;
begin
  Result := FUSU_BemPri;
end;

procedure T670BEM.SetUSU_BemPri(const pUSU_BemPri: Char);
begin
  FUSU_BemPri := pUSU_BemPri;

  CheckField('USU_BemPri');
end;

function T670BEM.GetUSU_IndCom: Char;
begin
  Result := FUSU_IndCom;
end;

procedure T670BEM.SetUSU_IndCom(const pUSU_IndCom: Char);
begin
  FUSU_IndCom := pUSU_IndCom;

  CheckField('USU_IndCom');
end;

function T670BEM.GetCodEmpOLD: Integer;
begin
  Result := FCodEmpOLD;
end;

procedure T670BEM.SetCodEmpOLD(const pCodEmp: Integer);
begin
  FCodEmpOLD := pCodEmp;
end;

function T670BEM.GetCodBemOLD: string;
begin
  Result := FCodBemOLD;
end;

procedure T670BEM.SetCodBemOLD(const pCodBem: string);
begin
  FCodBemOLD := pCodBem;
end;

function T670BEM.GetDesBemOLD: string;
begin
  Result := FDesBemOLD;
end;

procedure T670BEM.SetDesBemOLD(const pDesBem: string);
begin
  FDesBemOLD := pDesBem;
end;

function T670BEM.GetCodTnsOLD: string;
begin
  Result := FCodTnsOLD;
end;

procedure T670BEM.SetCodTnsOLD(const pCodTns: string);
begin
  FCodTnsOLD := pCodTns;
end;

function T670BEM.GetCodEspOLD: Integer;
begin
  Result := FCodEspOLD;
end;

procedure T670BEM.SetCodEspOLD(const pCodEsp: Integer);
begin
  FCodEspOLD := pCodEsp;
end;

function T670BEM.GetQtdItmOLD: Integer;
begin
  Result := FQtdItmOLD;
end;

procedure T670BEM.SetQtdItmOLD(const pQtdItm: Integer);
begin
  FQtdItmOLD := pQtdItm;
end;

function T670BEM.GetCodTurOLD: Integer;
begin
  Result := FCodTurOLD;
end;

procedure T670BEM.SetCodTurOLD(const pCodTur: Integer);
begin
  FCodTurOLD := pCodTur;
end;

function T670BEM.GetDatAqiOLD: TDate;
begin
  Result := FDatAqiOLD;
end;

procedure T670BEM.SetDatAqiOLD(const pDatAqi: TDate);
begin
  FDatAqiOLD := pDatAqi;
end;

function T670BEM.GetDatIclOLD: TDate;
begin
  Result := FDatIclOLD;
end;

procedure T670BEM.SetDatIclOLD(const pDatIcl: TDate);
begin
  FDatIclOLD := pDatIcl;
end;

function T670BEM.GetDatIcgOLD: TDate;
begin
  Result := FDatIcgOLD;
end;

procedure T670BEM.SetDatIcgOLD(const pDatIcg: TDate);
begin
  FDatIcgOLD := pDatIcg;
end;

function T670BEM.GetDatEntOLD: TDate;
begin
  Result := FDatEntOLD;
end;

procedure T670BEM.SetDatEntOLD(const pDatEnt: TDate);
begin
  FDatEntOLD := pDatEnt;
end;

function T670BEM.GetFilAqiOLD: Integer;
begin
  Result := FFilAqiOLD;
end;

procedure T670BEM.SetFilAqiOLD(const pFilAqi: Integer);
begin
  FFilAqiOLD := pFilAqi;
end;

function T670BEM.GetFilLocOLD: Integer;
begin
  Result := FFilLocOLD;
end;

procedure T670BEM.SetFilLocOLD(const pFilLoc: Integer);
begin
  FFilLocOLD := pFilLoc;
end;

function T670BEM.GetDatIinOLD: TDate;
begin
  Result := FDatIinOLD;
end;

procedure T670BEM.SetDatIinOLD(const pDatIin: TDate);
begin
  FDatIinOLD := pDatIin;
end;

function T670BEM.GetDatFinOLD: TDate;
begin
  Result := FDatFinOLD;
end;

procedure T670BEM.SetDatFinOLD(const pDatFin: TDate);
begin
  FDatFinOLD := pDatFin;
end;

function T670BEM.GetDatIacOLD: TDate;
begin
  Result := FDatIacOLD;
end;

procedure T670BEM.SetDatIacOLD(const pDatIac: TDate);
begin
  FDatIacOLD := pDatIac;
end;

function T670BEM.GetDatFacOLD: TDate;
begin
  Result := FDatFacOLD;
end;

procedure T670BEM.SetDatFacOLD(const pDatFac: TDate);
begin
  FDatFacOLD := pDatFac;
end;

function T670BEM.GetDatIigOLD: TDate;
begin
  Result := FDatIigOLD;
end;

procedure T670BEM.SetDatIigOLD(const pDatIig: TDate);
begin
  FDatIigOLD := pDatIig;
end;

function T670BEM.GetDatFigOLD: TDate;
begin
  Result := FDatFigOLD;
end;

procedure T670BEM.SetDatFigOLD(const pDatFig: TDate);
begin
  FDatFigOLD := pDatFig;
end;

function T670BEM.GetDatIagOLD: TDate;
begin
  Result := FDatIagOLD;
end;

procedure T670BEM.SetDatIagOLD(const pDatIag: TDate);
begin
  FDatIagOLD := pDatIag;
end;

function T670BEM.GetDatFagOLD: TDate;
begin
  Result := FDatFagOLD;
end;

procedure T670BEM.SetDatFagOLD(const pDatFag: TDate);
begin
  FDatFagOLD := pDatFag;
end;

function T670BEM.GetCcuExeOLD: string;
begin
  Result := FCcuExeOLD;
end;

procedure T670BEM.SetCcuExeOLD(const pCcuExe: string);
begin
  FCcuExeOLD := pCcuExe;
end;

function T670BEM.GetCodCreOLD: string;
begin
  Result := FCodCreOLD;
end;

procedure T670BEM.SetCodCreOLD(const pCodCre: string);
begin
  FCodCreOLD := pCodCre;
end;

function T670BEM.GetCodInvOLD: string;
begin
  Result := FCodInvOLD;
end;

procedure T670BEM.SetCodInvOLD(const pCodInv: string);
begin
  FCodInvOLD := pCodInv;
end;

function T670BEM.GetCodPenOLD: Integer;
begin
  Result := FCodPenOLD;
end;

procedure T670BEM.SetCodPenOLD(const pCodPen: Integer);
begin
  FCodPenOLD := pCodPen;
end;

function T670BEM.GetDatPenOLD: TDate;
begin
  Result := FDatPenOLD;
end;

procedure T670BEM.SetDatPenOLD(const pDatPen: TDate);
begin
  FDatPenOLD := pDatPen;
end;

function T670BEM.GetCtaRedOLD: Integer;
begin
  Result := FCtaRedOLD;
end;

procedure T670BEM.SetCtaRedOLD(const pCtaRed: Integer);
begin
  FCtaRedOLD := pCtaRed;
end;

function T670BEM.GetEspDocOLD: Char;
begin
  Result := FEspDocOLD;
end;

procedure T670BEM.SetEspDocOLD(const pEspDoc: Char);
begin
  FEspDocOLD := pEspDoc;
end;

function T670BEM.GetEmpNfcOLD: Integer;
begin
  Result := FEmpNfcOLD;
end;

procedure T670BEM.SetEmpNfcOLD(const pEmpNfc: Integer);
begin
  FEmpNfcOLD := pEmpNfc;
end;

function T670BEM.GetFilNfcOLD: Integer;
begin
  Result := FFilNfcOLD;
end;

procedure T670BEM.SetFilNfcOLD(const pFilNfc: Integer);
begin
  FFilNfcOLD := pFilNfc;
end;

function T670BEM.GetCodForOLD: Integer;
begin
  Result := FCodForOLD;
end;

procedure T670BEM.SetCodForOLD(const pCodFor: Integer);
begin
  FCodForOLD := pCodFor;
end;

function T670BEM.GetNomForOLD: string;
begin
  Result := FNomForOLD;
end;

procedure T670BEM.SetNomForOLD(const pNomFor: string);
begin
  FNomForOLD := pNomFor;
end;

function T670BEM.GetCodSnfOLD: string;
begin
  Result := FCodSnfOLD;
end;

procedure T670BEM.SetCodSnfOLD(const pCodSnf: string);
begin
  FCodSnfOLD := pCodSnf;
end;

function T670BEM.GetNumDocOLD: Integer;
begin
  Result := FNumDocOLD;
end;

procedure T670BEM.SetNumDocOLD(const pNumDoc: Integer);
begin
  FNumDocOLD := pNumDoc;
end;

function T670BEM.GetSeqDocOLD: Integer;
begin
  Result := FSeqDocOLD;
end;

procedure T670BEM.SetSeqDocOLD(const pSeqDoc: Integer);
begin
  FSeqDocOLD := pSeqDoc;
end;

function T670BEM.GetTnsDocOLD: string;
begin
  Result := FTnsDocOLD;
end;

procedure T670BEM.SetTnsDocOLD(const pTnsDoc: string);
begin
  FTnsDocOLD := pTnsDoc;
end;

function T670BEM.GetSeqIpcOLD: Integer;
begin
  Result := FSeqIpcOLD;
end;

procedure T670BEM.SetSeqIpcOLD(const pSeqIpc: Integer);
begin
  FSeqIpcOLD := pSeqIpc;
end;

function T670BEM.GetSeqIscOLD: Integer;
begin
  Result := FSeqIscOLD;
end;

procedure T670BEM.SetSeqIscOLD(const pSeqIsc: Integer);
begin
  FSeqIscOLD := pSeqIsc;
end;

function T670BEM.GetDatGarOLD: TDate;
begin
  Result := FDatGarOLD;
end;

procedure T670BEM.SetDatGarOLD(const pDatGar: TDate);
begin
  FDatGarOLD := pDatGar;
end;

function T670BEM.GetDatManOLD: TDate;
begin
  Result := FDatManOLD;
end;

procedure T670BEM.SetDatManOLD(const pDatMan: TDate);
begin
  FDatManOLD := pDatMan;
end;

function T670BEM.GetCtaDstOLD: Integer;
begin
  Result := FCtaDstOLD;
end;

procedure T670BEM.SetCtaDstOLD(const pCtaDst: Integer);
begin
  FCtaDstOLD := pCtaDst;
end;

function T670BEM.GetTaxIofOLD: Double;
begin
  Result := FTaxIofOLD;
end;

procedure T670BEM.SetTaxIofOLD(const pTaxIof: Double);
begin
  FTaxIofOLD := pTaxIof;
end;

function T670BEM.GetTaxIogOLD: Double;
begin
  Result := FTaxIogOLD;
end;

procedure T670BEM.SetTaxIogOLD(const pTaxIog: Double);
begin
  FTaxIogOLD := pTaxIog;
end;

function T670BEM.GetTaxIcuOLD: Double;
begin
  Result := FTaxIcuOLD;
end;

procedure T670BEM.SetTaxIcuOLD(const pTaxIcu: Double);
begin
  FTaxIcuOLD := pTaxIcu;
end;

function T670BEM.GetVlrBasOLD: Double;
begin
  Result := FVlrBasOLD;
end;

procedure T670BEM.SetVlrBasOLD(const pVlrBas: Double);
begin
  FVlrBasOLD := pVlrBas;
end;

function T670BEM.GetVlrMcoOLD: Double;
begin
  Result := FVlrMcoOLD;
end;

procedure T670BEM.SetVlrMcoOLD(const pVlrMco: Double);
begin
  FVlrMcoOLD := pVlrMco;
end;

function T670BEM.GetVlrMioOLD: Double;
begin
  Result := FVlrMioOLD;
end;

procedure T670BEM.SetVlrMioOLD(const pVlrMio: Double);
begin
  FVlrMioOLD := pVlrMio;
end;

function T670BEM.GetVlrMgrOLD: Double;
begin
  Result := FVlrMgrOLD;
end;

procedure T670BEM.SetVlrMgrOLD(const pVlrMgr: Double);
begin
  FVlrMgrOLD := pVlrMgr;
end;

function T670BEM.GetDprAcuOLD: Double;
begin
  Result := FDprAcuOLD;
end;

procedure T670BEM.SetDprAcuOLD(const pDprAcu: Double);
begin
  FDprAcuOLD := pDprAcu;
end;

function T670BEM.GetCorAcuOLD: Double;
begin
  Result := FCorAcuOLD;
end;

procedure T670BEM.SetCorAcuOLD(const pCorAcu: Double);
begin
  FCorAcuOLD := pCorAcu;
end;

function T670BEM.GetCdpAcuOLD: Double;
begin
  Result := FCdpAcuOLD;
end;

procedure T670BEM.SetCdpAcuOLD(const pCdpAcu: Double);
begin
  FCdpAcuOLD := pCdpAcu;
end;

function T670BEM.GetVlrSegOLD: Double;
begin
  Result := FVlrSegOLD;
end;

procedure T670BEM.SetVlrSegOLD(const pVlrSeg: Double);
begin
  FVlrSegOLD := pVlrSeg;
end;

function T670BEM.GetVlrIcmOLD: Double;
begin
  Result := FVlrIcmOLD;
end;

procedure T670BEM.SetVlrIcmOLD(const pVlrIcm: Double);
begin
  FVlrIcmOLD := pVlrIcm;
end;

function T670BEM.GetPerEicOLD: Integer;
begin
  Result := FPerEicOLD;
end;

procedure T670BEM.SetPerEicOLD(const pPerEic: Integer);
begin
  FPerEicOLD := pPerEic;
end;

function T670BEM.GetTipAcrOLD: Char;
begin
  Result := FTipAcrOLD;
end;

procedure T670BEM.SetTipAcrOLD(const pTipAcr: Char);
begin
  FTipAcrOLD := pTipAcr;
end;

function T670BEM.GetDatIncOLD: TDate;
begin
  Result := FDatIncOLD;
end;

procedure T670BEM.SetDatIncOLD(const pDatInc: TDate);
begin
  FDatIncOLD := pDatInc;
end;

function T670BEM.GetDatTdeOLD: TDate;
begin
  Result := FDatTdeOLD;
end;

procedure T670BEM.SetDatTdeOLD(const pDatTde: TDate);
begin
  FDatTdeOLD := pDatTde;
end;

function T670BEM.GetDatReaOLD: TDate;
begin
  Result := FDatReaOLD;
end;

procedure T670BEM.SetDatReaOLD(const pDatRea: TDate);
begin
  FDatReaOLD := pDatRea;
end;

function T670BEM.GetDatTpaOLD: TDate;
begin
  Result := FDatTpaOLD;
end;

procedure T670BEM.SetDatTpaOLD(const pDatTpa: TDate);
begin
  FDatTpaOLD := pDatTpa;
end;

function T670BEM.GetDatBaiOLD: TDate;
begin
  Result := FDatBaiOLD;
end;

procedure T670BEM.SetDatBaiOLD(const pDatBai: TDate);
begin
  FDatBaiOLD := pDatBai;
end;

function T670BEM.GetTrfOrgOLD: string;
begin
  Result := FTrfOrgOLD;
end;

procedure T670BEM.SetTrfOrgOLD(const pTrfOrg: string);
begin
  FTrfOrgOLD := pTrfOrg;
end;

function T670BEM.GetTrfUltOLD: Char;
begin
  Result := FTrfUltOLD;
end;

procedure T670BEM.SetTrfUltOLD(const pTrfUlt: Char);
begin
  FTrfUltOLD := pTrfUlt;
end;

function T670BEM.GetBemAgpOLD: string;
begin
  Result := FBemAgpOLD;
end;

procedure T670BEM.SetBemAgpOLD(const pBemAgp: string);
begin
  FBemAgpOLD := pBemAgp;
end;

function T670BEM.GetVlrDpbOLD: Double;
begin
  Result := FVlrDpbOLD;
end;

procedure T670BEM.SetVlrDpbOLD(const pVlrDpb: Double);
begin
  FVlrDpbOLD := pVlrDpb;
end;

function T670BEM.GetCotMioOLD: Double;
begin
  Result := FCotMioOLD;
end;

procedure T670BEM.SetCotMioOLD(const pCotMio: Double);
begin
  FCotMioOLD := pCotMio;
end;

function T670BEM.GetCotMigOLD: Double;
begin
  Result := FCotMigOLD;
end;

procedure T670BEM.SetCotMigOLD(const pCotMig: Double);
begin
  FCotMigOLD := pCotMig;
end;

function T670BEM.GetCodCcuOLD: string;
begin
  Result := FCodCcuOLD;
end;

procedure T670BEM.SetCodCcuOLD(const pCodCcu: string);
begin
  FCodCcuOLD := pCodCcu;
end;

function T670BEM.GetCodProOLD: string;
begin
  Result := FCodProOLD;
end;

procedure T670BEM.SetCodProOLD(const pCodPro: string);
begin
  FCodProOLD := pCodPro;
end;

function T670BEM.GetRecPisOLD: Char;
begin
  Result := FRecPisOLD;
end;

procedure T670BEM.SetRecPisOLD(const pRecPis: Char);
begin
  FRecPisOLD := pRecPis;
end;

function T670BEM.GetCstPisOLD: string;
begin
  Result := FCstPisOLD;
end;

procedure T670BEM.SetCstPisOLD(const pCstPis: string);
begin
  FCstPisOLD := pCstPis;
end;

function T670BEM.GetEndFotOLD: string;
begin
  Result := FEndFotOLD;
end;

procedure T670BEM.SetEndFotOLD(const pEndFot: string);
begin
  FEndFotOLD := pEndFot;
end;

function T670BEM.GetCodMotOLD: Integer;
begin
  Result := FCodMotOLD;
end;

procedure T670BEM.SetCodMotOLD(const pCodMot: Integer);
begin
  FCodMotOLD := pCodMot;
end;

function T670BEM.GetObsMotOLD: string;
begin
  Result := FObsMotOLD;
end;

procedure T670BEM.SetObsMotOLD(const pObsMot: string);
begin
  FObsMotOLD := pObsMot;
end;

function T670BEM.GetSitPatOLD: Char;
begin
  Result := FSitPatOLD;
end;

procedure T670BEM.SetSitPatOLD(const pSitPat: Char);
begin
  FSitPatOLD := pSitPat;
end;

function T670BEM.GetIndInvOLD: Char;
begin
  Result := FIndInvOLD;
end;

procedure T670BEM.SetIndInvOLD(const pIndInv: Char);
begin
  FIndInvOLD := pIndInv;
end;

function T670BEM.GetDatInvOLD: TDate;
begin
  Result := FDatInvOLD;
end;

procedure T670BEM.SetDatInvOLD(const pDatInv: TDate);
begin
  FDatInvOLD := pDatInv;
end;

function T670BEM.GetUltCalOLD: TDate;
begin
  Result := FUltCalOLD;
end;

procedure T670BEM.SetUltCalOLD(const pUltCal: TDate);
begin
  FUltCalOLD := pUltCal;
end;

function T670BEM.GetRecCofOLD: Char;
begin
  Result := FRecCofOLD;
end;

procedure T670BEM.SetRecCofOLD(const pRecCof: Char);
begin
  FRecCofOLD := pRecCof;
end;

function T670BEM.GetCstCofOLD: string;
begin
  Result := FCstCofOLD;
end;

procedure T670BEM.SetCstCofOLD(const pCstCof: string);
begin
  FCstCofOLD := pCstCof;
end;

function T670BEM.GetUsuGerOLD: Integer;
begin
  Result := FUsuGerOLD;
end;

procedure T670BEM.SetUsuGerOLD(const pUsuGer: Integer);
begin
  FUsuGerOLD := pUsuGer;
end;

function T670BEM.GetDatGerOLD: TDate;
begin
  Result := FDatGerOLD;
end;

procedure T670BEM.SetDatGerOLD(const pDatGer: TDate);
begin
  FDatGerOLD := pDatGer;
end;

function T670BEM.GetHorGerOLD: Integer;
begin
  Result := FHorGerOLD;
end;

procedure T670BEM.SetHorGerOLD(const pHorGer: Integer);
begin
  FHorGerOLD := pHorGer;
end;

function T670BEM.GetEmpNfvOLD: Integer;
begin
  Result := FEmpNfvOLD;
end;

procedure T670BEM.SetEmpNfvOLD(const pEmpNfv: Integer);
begin
  FEmpNfvOLD := pEmpNfv;
end;

function T670BEM.GetFilNfvOLD: Integer;
begin
  Result := FFilNfvOLD;
end;

procedure T670BEM.SetFilNfvOLD(const pFilNfv: Integer);
begin
  FFilNfvOLD := pFilNfv;
end;

function T670BEM.GetSnfNfvOLD: string;
begin
  Result := FSnfNfvOLD;
end;

procedure T670BEM.SetSnfNfvOLD(const pSnfNfv: string);
begin
  FSnfNfvOLD := pSnfNfv;
end;

function T670BEM.GetNumNfvOLD: Integer;
begin
  Result := FNumNfvOLD;
end;

procedure T670BEM.SetNumNfvOLD(const pNumNfv: Integer);
begin
  FNumNfvOLD := pNumNfv;
end;

function T670BEM.GetSeqIpvOLD: Integer;
begin
  Result := FSeqIpvOLD;
end;

procedure T670BEM.SetSeqIpvOLD(const pSeqIpv: Integer);
begin
  FSeqIpvOLD := pSeqIpv;
end;

function T670BEM.GetSeqIsvOLD: Integer;
begin
  Result := FSeqIsvOLD;
end;

procedure T670BEM.SetSeqIsvOLD(const pSeqIsv: Integer);
begin
  FSeqIsvOLD := pSeqIsv;
end;

function T670BEM.GetVlrVenOLD: Double;
begin
  Result := FVlrVenOLD;
end;

procedure T670BEM.SetVlrVenOLD(const pVlrVen: Double);
begin
  FVlrVenOLD := pVlrVen;
end;

function T670BEM.GetTipDesOLD: Char;
begin
  Result := FTipDesOLD;
end;

procedure T670BEM.SetTipDesOLD(const pTipDes: Char);
begin
  FTipDesOLD := pTipDes;
end;

function T670BEM.GetBprAcuOLD: Double;
begin
  Result := FBprAcuOLD;
end;

procedure T670BEM.SetBprAcuOLD(const pBprAcu: Double);
begin
  FBprAcuOLD := pBprAcu;
end;

function T670BEM.GetCbpAcuOLD: Double;
begin
  Result := FCbpAcuOLD;
end;

procedure T670BEM.SetCbpAcuOLD(const pCbpAcu: Double);
begin
  FCbpAcuOLD := pCbpAcu;
end;

function T670BEM.GetBcrAcuOLD: Double;
begin
  Result := FBcrAcuOLD;
end;

procedure T670BEM.SetBcrAcuOLD(const pBcrAcu: Double);
begin
  FBcrAcuOLD := pBcrAcu;
end;

function T670BEM.GetCbcAcuOLD: Double;
begin
  Result := FCbcAcuOLD;
end;

procedure T670BEM.SetCbcAcuOLD(const pCbcAcu: Double);
begin
  FCbcAcuOLD := pCbcAcu;
end;

function T670BEM.GetBclAcuOLD: Double;
begin
  Result := FBclAcuOLD;
end;

procedure T670BEM.SetBclAcuOLD(const pBclAcu: Double);
begin
  FBclAcuOLD := pBclAcu;
end;

function T670BEM.GetCclAcuOLD: Double;
begin
  Result := FCclAcuOLD;
end;

procedure T670BEM.SetCclAcuOLD(const pCclAcu: Double);
begin
  FCclAcuOLD := pCclAcu;
end;

function T670BEM.GetRecCslOLD: Char;
begin
  Result := FRecCslOLD;
end;

procedure T670BEM.SetRecCslOLD(const pRecCsl: Char);
begin
  FRecCslOLD := pRecCsl;
end;

function T670BEM.GetQtmPisOLD: Integer;
begin
  Result := FQtmPisOLD;
end;

procedure T670BEM.SetQtmPisOLD(const pQtmPis: Integer);
begin
  FQtmPisOLD := pQtmPis;
end;

function T670BEM.GetQtmCofOLD: Integer;
begin
  Result := FQtmCofOLD;
end;

procedure T670BEM.SetQtmCofOLD(const pQtmCof: Integer);
begin
  FQtmCofOLD := pQtmCof;
end;

function T670BEM.GetQtmCslOLD: Integer;
begin
  Result := FQtmCslOLD;
end;

procedure T670BEM.SetQtmCslOLD(const pQtmCsl: Integer);
begin
  FQtmCslOLD := pQtmCsl;
end;

function T670BEM.GetRedBclOLD: Double;
begin
  Result := FRedBclOLD;
end;

procedure T670BEM.SetRedBclOLD(const pRedBcl: Double);
begin
  FRedBclOLD := pRedBcl;
end;

function T670BEM.GetVlrAqpOLD: Double;
begin
  Result := FVlrAqpOLD;
end;

procedure T670BEM.SetVlrAqpOLD(const pVlrAqp: Double);
begin
  FVlrAqpOLD := pVlrAqp;
end;

function T670BEM.GetVlrAqcOLD: Double;
begin
  Result := FVlrAqcOLD;
end;

procedure T670BEM.SetVlrAqcOLD(const pVlrAqc: Double);
begin
  FVlrAqcOLD := pVlrAqc;
end;

function T670BEM.GetVlrAqlOLD: Double;
begin
  Result := FVlrAqlOLD;
end;

procedure T670BEM.SetVlrAqlOLD(const pVlrAql: Double);
begin
  FVlrAqlOLD := pVlrAql;
end;

function T670BEM.GetIndExpOLD: Integer;
begin
  Result := FIndExpOLD;
end;

procedure T670BEM.SetIndExpOLD(const pIndExp: Integer);
begin
  FIndExpOLD := pIndExp;
end;

function T670BEM.GetDatIvdOLD: TDate;
begin
  Result := FDatIvdOLD;
end;

procedure T670BEM.SetDatIvdOLD(const pDatIvd: TDate);
begin
  FDatIvdOLD := pDatIvd;
end;

function T670BEM.GetVidUtiOLD: Char;
begin
  Result := FVidUtiOLD;
end;

procedure T670BEM.SetVidUtiOLD(const pVidUti: Char);
begin
  FVidUtiOLD := pVidUti;
end;

function T670BEM.GetUniMedOLD: string;
begin
  Result := FUniMedOLD;
end;

procedure T670BEM.SetUniMedOLD(const pUniMed: string);
begin
  FUniMedOLD := pUniMed;
end;

function T670BEM.GetVidTotOLD: Double;
begin
  Result := FVidTotOLD;
end;

procedure T670BEM.SetVidTotOLD(const pVidTot: Double);
begin
  FVidTotOLD := pVidTot;
end;

function T670BEM.GetVidIniOLD: Double;
begin
  Result := FVidIniOLD;
end;

procedure T670BEM.SetVidIniOLD(const pVidIni: Double);
begin
  FVidIniOLD := pVidIni;
end;

function T670BEM.GetVlrJusOLD: Double;
begin
  Result := FVlrJusOLD;
end;

procedure T670BEM.SetVlrJusOLD(const pVlrJus: Double);
begin
  FVlrJusOLD := pVlrJus;
end;

function T670BEM.GetVlrEspOLD: Double;
begin
  Result := FVlrEspOLD;
end;

procedure T670BEM.SetVlrEspOLD(const pVlrEsp: Double);
begin
  FVlrEspOLD := pVlrEsp;
end;

function T670BEM.GetVlrResOLD: Double;
begin
  Result := FVlrResOLD;
end;

procedure T670BEM.SetVlrResOLD(const pVlrRes: Double);
begin
  FVlrResOLD := pVlrRes;
end;

function T670BEM.GetVdpAcuOLD: Double;
begin
  Result := FVdpAcuOLD;
end;

procedure T670BEM.SetVdpAcuOLD(const pVdpAcu: Double);
begin
  FVdpAcuOLD := pVdpAcu;
end;

function T670BEM.GetVcdAcuOLD: Double;
begin
  Result := FVcdAcuOLD;
end;

procedure T670BEM.SetVcdAcuOLD(const pVcdAcu: Double);
begin
  FVcdAcuOLD := pVcdAcu;
end;

function T670BEM.GetAtiEcoOLD: Integer;
begin
  Result := FAtiEcoOLD;
end;

procedure T670BEM.SetAtiEcoOLD(const pAtiEco: Integer);
begin
  FAtiEcoOLD := pAtiEco;
end;

function T670BEM.GetDatCimOLD: TDate;
begin
  Result := FDatCimOLD;
end;

procedure T670BEM.SetDatCimOLD(const pDatCim: TDate);
begin
  FDatCimOLD := pDatCim;
end;

function T670BEM.GetQtpIniOLD: Integer;
begin
  Result := FQtpIniOLD;
end;

procedure T670BEM.SetQtpIniOLD(const pQtpIni: Integer);
begin
  FQtpIniOLD := pQtpIni;
end;

function T670BEM.GetQtcIniOLD: Integer;
begin
  Result := FQtcIniOLD;
end;

procedure T670BEM.SetQtcIniOLD(const pQtcIni: Integer);
begin
  FQtcIniOLD := pQtcIni;
end;

function T670BEM.GetQtlIniOLD: Integer;
begin
  Result := FQtlIniOLD;
end;

procedure T670BEM.SetQtlIniOLD(const pQtlIni: Integer);
begin
  FQtlIniOLD := pQtlIni;
end;

function T670BEM.GetBpiExcOLD: Double;
begin
  Result := FBpiExcOLD;
end;

procedure T670BEM.SetBpiExcOLD(const pBpiExc: Double);
begin
  FBpiExcOLD := pBpiExc;
end;

function T670BEM.GetBcoExcOLD: Double;
begin
  Result := FBcoExcOLD;
end;

procedure T670BEM.SetBcoExcOLD(const pBcoExc: Double);
begin
  FBcoExcOLD := pBcoExc;
end;

function T670BEM.GetBclExcOLD: Double;
begin
  Result := FBclExcOLD;
end;

procedure T670BEM.SetBclExcOLD(const pBclExc: Double);
begin
  FBclExcOLD := pBclExc;
end;

function T670BEM.GetBepIniOLD: Double;
begin
  Result := FBepIniOLD;
end;

procedure T670BEM.SetBepIniOLD(const pBepIni: Double);
begin
  FBepIniOLD := pBepIni;
end;

function T670BEM.GetBecIniOLD: Double;
begin
  Result := FBecIniOLD;
end;

procedure T670BEM.SetBecIniOLD(const pBecIni: Double);
begin
  FBecIniOLD := pBecIni;
end;

function T670BEM.GetBelIniOLD: Double;
begin
  Result := FBelIniOLD;
end;

procedure T670BEM.SetBelIniOLD(const pBelIni: Double);
begin
  FBelIniOLD := pBelIni;
end;

function T670BEM.GetRefRecOLD: Char;
begin
  Result := FRefRecOLD;
end;

procedure T670BEM.SetRefRecOLD(const pRefRec: Char);
begin
  FRefRecOLD := pRefRec;
end;

function T670BEM.GetBemOriOLD: string;
begin
  Result := FBemOriOLD;
end;

procedure T670BEM.SetBemOriOLD(const pBemOri: string);
begin
  FBemOriOLD := pBemOri;
end;

function T670BEM.GetDprRecOLD: Char;
begin
  Result := FDprRecOLD;
end;

procedure T670BEM.SetDprRecOLD(const pDprRec: Char);
begin
  FDprRecOLD := pDprRec;
end;

function T670BEM.GetUtiBemOLD: Integer;
begin
  Result := FUtiBemOLD;
end;

procedure T670BEM.SetUtiBemOLD(const pUtiBem: Integer);
begin
  FUtiBemOLD := pUtiBem;
end;

function T670BEM.GetUSU_MetImoOLD: Double;
begin
  Result := FUSU_MetImoOLD;
end;

procedure T670BEM.SetUSU_MetImoOLD(const pUSU_MetImo: Double);
begin
  FUSU_MetImoOLD := pUSU_MetImo;
end;

function T670BEM.GetUSU_BemClpOLD: Char;
begin
  Result := FUSU_BemClpOLD;
end;

procedure T670BEM.SetUSU_BemClpOLD(const pUSU_BemClp: Char);
begin
  FUSU_BemClpOLD := pUSU_BemClp;
end;

function T670BEM.GetUSU_MetConOLD: Double;
begin
  Result := FUSU_MetConOLD;
end;

procedure T670BEM.SetUSU_MetConOLD(const pUSU_MetCon: Double);
begin
  FUSU_MetConOLD := pUSU_MetCon;
end;

function T670BEM.GetUSU_IDLIBOLD: Integer;
begin
  Result := FUSU_IDLIBOLD;
end;

procedure T670BEM.SetUSU_IDLIBOLD(const pUSU_IDLIB: Integer);
begin
  FUSU_IDLIBOLD := pUSU_IDLIB;
end;

function T670BEM.GetUSU_BemPriOLD: Char;
begin
  Result := FUSU_BemPriOLD;
end;

procedure T670BEM.SetUSU_BemPriOLD(const pUSU_BemPri: Char);
begin
  FUSU_BemPriOLD := pUSU_BemPri;
end;

function T670BEM.GetUSU_IndComOLD: Char;
begin
  Result := FUSU_IndComOLD;
end;

procedure T670BEM.SetUSU_IndComOLD(const pUSU_IndCom: Char);
begin
  FUSU_IndComOLD := pUSU_IndCom;
end;

procedure T670BEM.Registros_OLD();
begin
  FCodEmpOLD := FCodEmp;
  FCodBemOLD := FCodBem;
  FDesBemOLD := FDesBem;
  FCodTnsOLD := FCodTns;
  FCodEspOLD := FCodEsp;
  FQtdItmOLD := FQtdItm;
  FCodTurOLD := FCodTur;
  FDatAqiOLD := FDatAqi;
  FDatIclOLD := FDatIcl;
  FDatIcgOLD := FDatIcg;
  FDatEntOLD := FDatEnt;
  FFilAqiOLD := FFilAqi;
  FFilLocOLD := FFilLoc;
  FDatIinOLD := FDatIin;
  FDatFinOLD := FDatFin;
  FDatIacOLD := FDatIac;
  FDatFacOLD := FDatFac;
  FDatIigOLD := FDatIig;
  FDatFigOLD := FDatFig;
  FDatIagOLD := FDatIag;
  FDatFagOLD := FDatFag;
  FCcuExeOLD := FCcuExe;
  FCodCreOLD := FCodCre;
  FCodInvOLD := FCodInv;
  FCodPenOLD := FCodPen;
  FDatPenOLD := FDatPen;
  FCtaRedOLD := FCtaRed;
  FEspDocOLD := FEspDoc;
  FEmpNfcOLD := FEmpNfc;
  FFilNfcOLD := FFilNfc;
  FCodForOLD := FCodFor;
  FNomForOLD := FNomFor;
  FCodSnfOLD := FCodSnf;
  FNumDocOLD := FNumDoc;
  FSeqDocOLD := FSeqDoc;
  FTnsDocOLD := FTnsDoc;
  FSeqIpcOLD := FSeqIpc;
  FSeqIscOLD := FSeqIsc;
  FDatGarOLD := FDatGar;
  FDatManOLD := FDatMan;
  FCtaDstOLD := FCtaDst;
  FTaxIofOLD := FTaxIof;
  FTaxIogOLD := FTaxIog;
  FTaxIcuOLD := FTaxIcu;
  FVlrBasOLD := FVlrBas;
  FVlrMcoOLD := FVlrMco;
  FVlrMioOLD := FVlrMio;
  FVlrMgrOLD := FVlrMgr;
  FDprAcuOLD := FDprAcu;
  FCorAcuOLD := FCorAcu;
  FCdpAcuOLD := FCdpAcu;
  FVlrSegOLD := FVlrSeg;
  FVlrIcmOLD := FVlrIcm;
  FPerEicOLD := FPerEic;
  FTipAcrOLD := FTipAcr;
  FDatIncOLD := FDatInc;
  FDatTdeOLD := FDatTde;
  FDatReaOLD := FDatRea;
  FDatTpaOLD := FDatTpa;
  FDatBaiOLD := FDatBai;
  FTrfOrgOLD := FTrfOrg;
  FTrfUltOLD := FTrfUlt;
  FBemAgpOLD := FBemAgp;
  FVlrDpbOLD := FVlrDpb;
  FCotMioOLD := FCotMio;
  FCotMigOLD := FCotMig;
  FCodCcuOLD := FCodCcu;
  FCodProOLD := FCodPro;
  FRecPisOLD := FRecPis;
  FCstPisOLD := FCstPis;
  FEndFotOLD := FEndFot;
  FCodMotOLD := FCodMot;
  FObsMotOLD := FObsMot;
  FSitPatOLD := FSitPat;
  FIndInvOLD := FIndInv;
  FDatInvOLD := FDatInv;
  FUltCalOLD := FUltCal;
  FRecCofOLD := FRecCof;
  FCstCofOLD := FCstCof;
  FUsuGerOLD := FUsuGer;
  FDatGerOLD := FDatGer;
  FHorGerOLD := FHorGer;
  FEmpNfvOLD := FEmpNfv;
  FFilNfvOLD := FFilNfv;
  FSnfNfvOLD := FSnfNfv;
  FNumNfvOLD := FNumNfv;
  FSeqIpvOLD := FSeqIpv;
  FSeqIsvOLD := FSeqIsv;
  FVlrVenOLD := FVlrVen;
  FTipDesOLD := FTipDes;
  FBprAcuOLD := FBprAcu;
  FCbpAcuOLD := FCbpAcu;
  FBcrAcuOLD := FBcrAcu;
  FCbcAcuOLD := FCbcAcu;
  FBclAcuOLD := FBclAcu;
  FCclAcuOLD := FCclAcu;
  FRecCslOLD := FRecCsl;
  FQtmPisOLD := FQtmPis;
  FQtmCofOLD := FQtmCof;
  FQtmCslOLD := FQtmCsl;
  FRedBclOLD := FRedBcl;
  FVlrAqpOLD := FVlrAqp;
  FVlrAqcOLD := FVlrAqc;
  FVlrAqlOLD := FVlrAql;
  FIndExpOLD := FIndExp;
  FDatIvdOLD := FDatIvd;
  FVidUtiOLD := FVidUti;
  FUniMedOLD := FUniMed;
  FVidTotOLD := FVidTot;
  FVidIniOLD := FVidIni;
  FVlrJusOLD := FVlrJus;
  FVlrEspOLD := FVlrEsp;
  FVlrResOLD := FVlrRes;
  FVdpAcuOLD := FVdpAcu;
  FVcdAcuOLD := FVcdAcu;
  FAtiEcoOLD := FAtiEco;
  FDatCimOLD := FDatCim;
  FQtpIniOLD := FQtpIni;
  FQtcIniOLD := FQtcIni;
  FQtlIniOLD := FQtlIni;
  FBpiExcOLD := FBpiExc;
  FBcoExcOLD := FBcoExc;
  FBclExcOLD := FBclExc;
  FBepIniOLD := FBepIni;
  FBecIniOLD := FBecIni;
  FBelIniOLD := FBelIni;
  FRefRecOLD := FRefRec;
  FBemOriOLD := FBemOri;
  FDprRecOLD := FDprRec;
  FUtiBemOLD := FUtiBem;
  FUSU_MetImoOLD := FUSU_MetImo;
  FUSU_BemClpOLD := FUSU_BemClp;
  FUSU_MetConOLD := FUSU_MetCon;
  FUSU_IDLIBOLD := FUSU_IDLIB;
  FUSU_BemPriOLD := FUSU_BemPri;
  FUSU_IndComOLD := FUSU_IndCom;

  inherited;
end;

procedure T670BEM.RetornarValores();
begin
  FCodEmp := FCodEmpOLD;
  FCodBem := FCodBemOLD;
  FDesBem := FDesBemOLD;
  FCodTns := FCodTnsOLD;
  FCodEsp := FCodEspOLD;
  FQtdItm := FQtdItmOLD;
  FCodTur := FCodTurOLD;
  FDatAqi := FDatAqiOLD;
  FDatIcl := FDatIclOLD;
  FDatIcg := FDatIcgOLD;
  FDatEnt := FDatEntOLD;
  FFilAqi := FFilAqiOLD;
  FFilLoc := FFilLocOLD;
  FDatIin := FDatIinOLD;
  FDatFin := FDatFinOLD;
  FDatIac := FDatIacOLD;
  FDatFac := FDatFacOLD;
  FDatIig := FDatIigOLD;
  FDatFig := FDatFigOLD;
  FDatIag := FDatIagOLD;
  FDatFag := FDatFagOLD;
  FCcuExe := FCcuExeOLD;
  FCodCre := FCodCreOLD;
  FCodInv := FCodInvOLD;
  FCodPen := FCodPenOLD;
  FDatPen := FDatPenOLD;
  FCtaRed := FCtaRedOLD;
  FEspDoc := FEspDocOLD;
  FEmpNfc := FEmpNfcOLD;
  FFilNfc := FFilNfcOLD;
  FCodFor := FCodForOLD;
  FNomFor := FNomForOLD;
  FCodSnf := FCodSnfOLD;
  FNumDoc := FNumDocOLD;
  FSeqDoc := FSeqDocOLD;
  FTnsDoc := FTnsDocOLD;
  FSeqIpc := FSeqIpcOLD;
  FSeqIsc := FSeqIscOLD;
  FDatGar := FDatGarOLD;
  FDatMan := FDatManOLD;
  FCtaDst := FCtaDstOLD;
  FTaxIof := FTaxIofOLD;
  FTaxIog := FTaxIogOLD;
  FTaxIcu := FTaxIcuOLD;
  FVlrBas := FVlrBasOLD;
  FVlrMco := FVlrMcoOLD;
  FVlrMio := FVlrMioOLD;
  FVlrMgr := FVlrMgrOLD;
  FDprAcu := FDprAcuOLD;
  FCorAcu := FCorAcuOLD;
  FCdpAcu := FCdpAcuOLD;
  FVlrSeg := FVlrSegOLD;
  FVlrIcm := FVlrIcmOLD;
  FPerEic := FPerEicOLD;
  FTipAcr := FTipAcrOLD;
  FDatInc := FDatIncOLD;
  FDatTde := FDatTdeOLD;
  FDatRea := FDatReaOLD;
  FDatTpa := FDatTpaOLD;
  FDatBai := FDatBaiOLD;
  FTrfOrg := FTrfOrgOLD;
  FTrfUlt := FTrfUltOLD;
  FBemAgp := FBemAgpOLD;
  FVlrDpb := FVlrDpbOLD;
  FCotMio := FCotMioOLD;
  FCotMig := FCotMigOLD;
  FCodCcu := FCodCcuOLD;
  FCodPro := FCodProOLD;
  FRecPis := FRecPisOLD;
  FCstPis := FCstPisOLD;
  FEndFot := FEndFotOLD;
  FCodMot := FCodMotOLD;
  FObsMot := FObsMotOLD;
  FSitPat := FSitPatOLD;
  FIndInv := FIndInvOLD;
  FDatInv := FDatInvOLD;
  FUltCal := FUltCalOLD;
  FRecCof := FRecCofOLD;
  FCstCof := FCstCofOLD;
  FUsuGer := FUsuGerOLD;
  FDatGer := FDatGerOLD;
  FHorGer := FHorGerOLD;
  FEmpNfv := FEmpNfvOLD;
  FFilNfv := FFilNfvOLD;
  FSnfNfv := FSnfNfvOLD;
  FNumNfv := FNumNfvOLD;
  FSeqIpv := FSeqIpvOLD;
  FSeqIsv := FSeqIsvOLD;
  FVlrVen := FVlrVenOLD;
  FTipDes := FTipDesOLD;
  FBprAcu := FBprAcuOLD;
  FCbpAcu := FCbpAcuOLD;
  FBcrAcu := FBcrAcuOLD;
  FCbcAcu := FCbcAcuOLD;
  FBclAcu := FBclAcuOLD;
  FCclAcu := FCclAcuOLD;
  FRecCsl := FRecCslOLD;
  FQtmPis := FQtmPisOLD;
  FQtmCof := FQtmCofOLD;
  FQtmCsl := FQtmCslOLD;
  FRedBcl := FRedBclOLD;
  FVlrAqp := FVlrAqpOLD;
  FVlrAqc := FVlrAqcOLD;
  FVlrAql := FVlrAqlOLD;
  FIndExp := FIndExpOLD;
  FDatIvd := FDatIvdOLD;
  FVidUti := FVidUtiOLD;
  FUniMed := FUniMedOLD;
  FVidTot := FVidTotOLD;
  FVidIni := FVidIniOLD;
  FVlrJus := FVlrJusOLD;
  FVlrEsp := FVlrEspOLD;
  FVlrRes := FVlrResOLD;
  FVdpAcu := FVdpAcuOLD;
  FVcdAcu := FVcdAcuOLD;
  FAtiEco := FAtiEcoOLD;
  FDatCim := FDatCimOLD;
  FQtpIni := FQtpIniOLD;
  FQtcIni := FQtcIniOLD;
  FQtlIni := FQtlIniOLD;
  FBpiExc := FBpiExcOLD;
  FBcoExc := FBcoExcOLD;
  FBclExc := FBclExcOLD;
  FBepIni := FBepIniOLD;
  FBecIni := FBecIniOLD;
  FBelIni := FBelIniOLD;
  FRefRec := FRefRecOLD;
  FBemOri := FBemOriOLD;
  FDprRec := FDprRecOLD;
  FUtiBem := FUtiBemOLD;
  FUSU_MetImo := FUSU_MetImoOLD;
  FUSU_BemClp := FUSU_BemClpOLD;
  FUSU_MetCon := FUSU_MetConOLD;
  FUSU_IDLIB := FUSU_IDLIBOLD;
  FUSU_BemPri := FUSU_BemPriOLD;
  FUSU_IndCom := FUSU_IndComOLD;
end;

end.
