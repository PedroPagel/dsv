unit o075pro;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T075PRO = class(TTabelaPadrao)
  private
    FCodEmp: Integer;
    FCodPro: string;
    FDesPro: string;
    FCplPro: string;
    FDesNfv: string;
    FCodFam: string;
    FUniMed: string;
    FUniMe2: string;
    FUniMe3: string;
    FTipPro: Char;
    FCodOri: string;
    FNumOri: Integer;
    FCodMdp: string;
    FCodMod: string;
    FCodRot: string;
    FCodAge: string;
    FCodAgp: string;
    FCodAgu: string;
    FCodAgc: string;
    FCodAgf: string;
    FCodClf: string;
    FCodStr: string;
    FPerIpi: Double;
    FRecIpi: Char;
    FTemIcm: Char;
    FCodTic: string;
    FCodTrd: string;
    FCodTst: string;
    FCodStp: string;
    FCodStc: string;
    FRecIcm: Char;
    FCodRoy: Integer;
    FQtdMlt: Double;
    FQtdMin: Double;
    FQtdMax: Double;
    FQtdGop: Double;
    FBxaOrp: Char;
    FCodPr2: string;
    FDerPr2: string;
    FCodPr3: string;
    FDerPr3: string;
    FCodPr4: string;
    FDerPr4: string;
    FProStq: Char;
    FSitPro: Char;
    FRotPro: Char;
    FUsoCus: Char;
    FIndMis: Char;
    FIndVen: Char;
    FIndCpr: Char;
    FIndReq: Char;
    FIndKit: Char;
    FMatDir: Char;
    FClaPro: Integer;
    FIndPpc: Char;
    FIndFpr: Char;
    FCodNtg: Integer;
    FCriRat: Integer;
    FCtaRed: Integer;
    FCtaRcr: Integer;
    FCtaFdv: Integer;
    FCtaFcr: Integer;
    FUsuGer: Integer;
    FHorGer: Integer;
    FDatGer: TDate;
    FDepPad: string;
    FCtrVld: Char;
    FCtrLot: Char;
    FLotBas: Char;
    FCtrSep: Char;
    FQtdMve: Double;
    FCodRef: string;
    FCodPin: string;
    FNotFor: Double;
    FExgCcl: Char;
    FEmiGtr: Char;
    FUsuAlt: Integer;
    FHorAlt: Integer;
    FDatAlt: TDate;
    FSomIim: Char;
    FRecPis: Char;
    FTriPis: Char;
    FTriCof: Char;
    FIndExp: Integer;
    FDatPal: TDate;
    FHorPal: Integer;
    FExpWms: Integer;
    FTipInt: Integer;
    FCodFif: string;
    FCodFie: string;
    FCodFim: string;
    FRecCof: Char;
    FSomIil: Char;
    FCalDzf: Char;
    FUniPad: string;
    FCodMar: string;
    FCodClc: string;
    FCodAgm: string;
    FFilPrd: Integer;
    FTolQmx: Double;
    FGerOrp: Char;
    FCodPdv: Integer;
    FPerIrf: Double;
    FPerPis: Double;
    FPerCof: Double;
    FPerCsl: Double;
    FPerOur: Double;
    FConMon: Char;
    FPerFun: Double;
    FCodAga: string;
    FSomIps: Char;
    FSomIco: Char;
    FSomIpl: Char;
    FSomIcl: Char;
    FIndOct: Char;
    FIndSpr: Char;
    FCodEnd: string;
    FPesBru: Double;
    FPesLiq: Double;
    FTolPes: Double;
    FVolPro: Double;
    FRotAnx: Integer;
    FNumAnx: Integer;
    FProImp: Integer;
    FBasRec: Char;
    FCodAnp: Integer;
    FProEpe: Integer;
    FCtrVis: Char;
    FDatVis: TDate;
    FHorVis: Integer;
    FIndFrt: Char;
    FFrtEqp: Char;
    FGrpFrt: string;
    FConEne: Integer;
    FConAgu: Integer;
    FTipLig: Integer;
    FGruTen: Integer;
    FTipMfr: Char;
    FUniFrt: Char;
    FCstIpi: string;
    FCstPis: string;
    FCstCof: string;
    FTprPis: string;
    FTprCof: string;
    FTprIpi: string;
    FRegTri: Char;
    FIdePro: string;
    FQtdAfe: Integer;
    FIndAfe: Char;
    FCstIpc: string;
    FCstPic: string;
    FCstCoc: string;
    FOriMer: Char;
    FNatPis: Integer;
    FNatCof: Integer;
    FLarPro: Double;
    FAltPro: Double;
    FComPro: Double;
    FBasCre: Integer;
    FProMon: Char;
    FProEnt: Char;
    FVarPro: Char;
    FProFol: Char;
    FProVes: Char;
    FQtdVol: Integer;
    FExiNfe: Char;
    FPrzRec: Integer;
    FUniWms: string;
    FFinCrp: Integer;
    FFinCdp: Integer;
    FPerPim: Double;
    FPerCim: Double;
    FIteFis: string;
    FDesFis: string;
    FCodAgg: string;
    FParCom: Char;
    FUSU_CodMsg1: Integer;
    FUSU_IndB2B: Char;
    FUSU_IndEco: Char;
    FUSU_IndPop: Char;

    FCodEmpOLD: Integer;
    FCodProOLD: string;
    FDesProOLD: string;
    FCplProOLD: string;
    FDesNfvOLD: string;
    FCodFamOLD: string;
    FUniMedOLD: string;
    FUniMe2OLD: string;
    FUniMe3OLD: string;
    FTipProOLD: Char;
    FCodOriOLD: string;
    FNumOriOLD: Integer;
    FCodMdpOLD: string;
    FCodModOLD: string;
    FCodRotOLD: string;
    FCodAgeOLD: string;
    FCodAgpOLD: string;
    FCodAguOLD: string;
    FCodAgcOLD: string;
    FCodAgfOLD: string;
    FCodClfOLD: string;
    FCodStrOLD: string;
    FPerIpiOLD: Double;
    FRecIpiOLD: Char;
    FTemIcmOLD: Char;
    FCodTicOLD: string;
    FCodTrdOLD: string;
    FCodTstOLD: string;
    FCodStpOLD: string;
    FCodStcOLD: string;
    FRecIcmOLD: Char;
    FCodRoyOLD: Integer;
    FQtdMltOLD: Double;
    FQtdMinOLD: Double;
    FQtdMaxOLD: Double;
    FQtdGopOLD: Double;
    FBxaOrpOLD: Char;
    FCodPr2OLD: string;
    FDerPr2OLD: string;
    FCodPr3OLD: string;
    FDerPr3OLD: string;
    FCodPr4OLD: string;
    FDerPr4OLD: string;
    FProStqOLD: Char;
    FSitProOLD: Char;
    FRotProOLD: Char;
    FUsoCusOLD: Char;
    FIndMisOLD: Char;
    FIndVenOLD: Char;
    FIndCprOLD: Char;
    FIndReqOLD: Char;
    FIndKitOLD: Char;
    FMatDirOLD: Char;
    FClaProOLD: Integer;
    FIndPpcOLD: Char;
    FIndFprOLD: Char;
    FCodNtgOLD: Integer;
    FCriRatOLD: Integer;
    FCtaRedOLD: Integer;
    FCtaRcrOLD: Integer;
    FCtaFdvOLD: Integer;
    FCtaFcrOLD: Integer;
    FUsuGerOLD: Integer;
    FHorGerOLD: Integer;
    FDatGerOLD: TDate;
    FDepPadOLD: string;
    FCtrVldOLD: Char;
    FCtrLotOLD: Char;
    FLotBasOLD: Char;
    FCtrSepOLD: Char;
    FQtdMveOLD: Double;
    FCodRefOLD: string;
    FCodPinOLD: string;
    FNotForOLD: Double;
    FExgCclOLD: Char;
    FEmiGtrOLD: Char;
    FUsuAltOLD: Integer;
    FHorAltOLD: Integer;
    FDatAltOLD: TDate;
    FSomIimOLD: Char;
    FRecPisOLD: Char;
    FTriPisOLD: Char;
    FTriCofOLD: Char;
    FIndExpOLD: Integer;
    FDatPalOLD: TDate;
    FHorPalOLD: Integer;
    FExpWmsOLD: Integer;
    FTipIntOLD: Integer;
    FCodFifOLD: string;
    FCodFieOLD: string;
    FCodFimOLD: string;
    FRecCofOLD: Char;
    FSomIilOLD: Char;
    FCalDzfOLD: Char;
    FUniPadOLD: string;
    FCodMarOLD: string;
    FCodClcOLD: string;
    FCodAgmOLD: string;
    FFilPrdOLD: Integer;
    FTolQmxOLD: Double;
    FGerOrpOLD: Char;
    FCodPdvOLD: Integer;
    FPerIrfOLD: Double;
    FPerPisOLD: Double;
    FPerCofOLD: Double;
    FPerCslOLD: Double;
    FPerOurOLD: Double;
    FConMonOLD: Char;
    FPerFunOLD: Double;
    FCodAgaOLD: string;
    FSomIpsOLD: Char;
    FSomIcoOLD: Char;
    FSomIplOLD: Char;
    FSomIclOLD: Char;
    FIndOctOLD: Char;
    FIndSprOLD: Char;
    FCodEndOLD: string;
    FPesBruOLD: Double;
    FPesLiqOLD: Double;
    FTolPesOLD: Double;
    FVolProOLD: Double;
    FRotAnxOLD: Integer;
    FNumAnxOLD: Integer;
    FProImpOLD: Integer;
    FBasRecOLD: Char;
    FCodAnpOLD: Integer;
    FProEpeOLD: Integer;
    FCtrVisOLD: Char;
    FDatVisOLD: TDate;
    FHorVisOLD: Integer;
    FIndFrtOLD: Char;
    FFrtEqpOLD: Char;
    FGrpFrtOLD: string;
    FConEneOLD: Integer;
    FConAguOLD: Integer;
    FTipLigOLD: Integer;
    FGruTenOLD: Integer;
    FTipMfrOLD: Char;
    FUniFrtOLD: Char;
    FCstIpiOLD: string;
    FCstPisOLD: string;
    FCstCofOLD: string;
    FTprPisOLD: string;
    FTprCofOLD: string;
    FTprIpiOLD: string;
    FRegTriOLD: Char;
    FIdeProOLD: string;
    FQtdAfeOLD: Integer;
    FIndAfeOLD: Char;
    FCstIpcOLD: string;
    FCstPicOLD: string;
    FCstCocOLD: string;
    FOriMerOLD: Char;
    FNatPisOLD: Integer;
    FNatCofOLD: Integer;
    FLarProOLD: Double;
    FAltProOLD: Double;
    FComProOLD: Double;
    FBasCreOLD: Integer;
    FProMonOLD: Char;
    FProEntOLD: Char;
    FVarProOLD: Char;
    FProFolOLD: Char;
    FProVesOLD: Char;
    FQtdVolOLD: Integer;
    FExiNfeOLD: Char;
    FPrzRecOLD: Integer;
    FUniWmsOLD: string;
    FFinCrpOLD: Integer;
    FFinCdpOLD: Integer;
    FPerPimOLD: Double;
    FPerCimOLD: Double;
    FIteFisOLD: string;
    FDesFisOLD: string;
    FCodAggOLD: string;
    FParComOLD: Char;
    FUSU_CodMsg1OLD: Integer;
    FUSU_IndB2BOLD: Char;
    FUSU_IndEcoOLD: Char;
    FUSU_IndPopOLD: Char;

    function GetCodEmp: Integer;
    procedure SetCodEmp(const pCodEmp: Integer);
    function GetCodPro: string;
    procedure SetCodPro(const pCodPro: string);
    function GetDesPro: string;
    procedure SetDesPro(const pDesPro: string);
    function GetCplPro: string;
    procedure SetCplPro(const pCplPro: string);
    function GetDesNfv: string;
    procedure SetDesNfv(const pDesNfv: string);
    function GetCodFam: string;
    procedure SetCodFam(const pCodFam: string);
    function GetUniMed: string;
    procedure SetUniMed(const pUniMed: string);
    function GetUniMe2: string;
    procedure SetUniMe2(const pUniMe2: string);
    function GetUniMe3: string;
    procedure SetUniMe3(const pUniMe3: string);
    function GetTipPro: Char;
    procedure SetTipPro(const pTipPro: Char);
    function GetCodOri: string;
    procedure SetCodOri(const pCodOri: string);
    function GetNumOri: Integer;
    procedure SetNumOri(const pNumOri: Integer);
    function GetCodMdp: string;
    procedure SetCodMdp(const pCodMdp: string);
    function GetCodMod: string;
    procedure SetCodMod(const pCodMod: string);
    function GetCodRot: string;
    procedure SetCodRot(const pCodRot: string);
    function GetCodAge: string;
    procedure SetCodAge(const pCodAge: string);
    function GetCodAgp: string;
    procedure SetCodAgp(const pCodAgp: string);
    function GetCodAgu: string;
    procedure SetCodAgu(const pCodAgu: string);
    function GetCodAgc: string;
    procedure SetCodAgc(const pCodAgc: string);
    function GetCodAgf: string;
    procedure SetCodAgf(const pCodAgf: string);
    function GetCodClf: string;
    procedure SetCodClf(const pCodClf: string);
    function GetCodStr: string;
    procedure SetCodStr(const pCodStr: string);
    function GetPerIpi: Double;
    procedure SetPerIpi(const pPerIpi: Double);
    function GetRecIpi: Char;
    procedure SetRecIpi(const pRecIpi: Char);
    function GetTemIcm: Char;
    procedure SetTemIcm(const pTemIcm: Char);
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
    function GetRecIcm: Char;
    procedure SetRecIcm(const pRecIcm: Char);
    function GetCodRoy: Integer;
    procedure SetCodRoy(const pCodRoy: Integer);
    function GetQtdMlt: Double;
    procedure SetQtdMlt(const pQtdMlt: Double);
    function GetQtdMin: Double;
    procedure SetQtdMin(const pQtdMin: Double);
    function GetQtdMax: Double;
    procedure SetQtdMax(const pQtdMax: Double);
    function GetQtdGop: Double;
    procedure SetQtdGop(const pQtdGop: Double);
    function GetBxaOrp: Char;
    procedure SetBxaOrp(const pBxaOrp: Char);
    function GetCodPr2: string;
    procedure SetCodPr2(const pCodPr2: string);
    function GetDerPr2: string;
    procedure SetDerPr2(const pDerPr2: string);
    function GetCodPr3: string;
    procedure SetCodPr3(const pCodPr3: string);
    function GetDerPr3: string;
    procedure SetDerPr3(const pDerPr3: string);
    function GetCodPr4: string;
    procedure SetCodPr4(const pCodPr4: string);
    function GetDerPr4: string;
    procedure SetDerPr4(const pDerPr4: string);
    function GetProStq: Char;
    procedure SetProStq(const pProStq: Char);
    function GetSitPro: Char;
    procedure SetSitPro(const pSitPro: Char);
    function GetRotPro: Char;
    procedure SetRotPro(const pRotPro: Char);
    function GetUsoCus: Char;
    procedure SetUsoCus(const pUsoCus: Char);
    function GetIndMis: Char;
    procedure SetIndMis(const pIndMis: Char);
    function GetIndVen: Char;
    procedure SetIndVen(const pIndVen: Char);
    function GetIndCpr: Char;
    procedure SetIndCpr(const pIndCpr: Char);
    function GetIndReq: Char;
    procedure SetIndReq(const pIndReq: Char);
    function GetIndKit: Char;
    procedure SetIndKit(const pIndKit: Char);
    function GetMatDir: Char;
    procedure SetMatDir(const pMatDir: Char);
    function GetClaPro: Integer;
    procedure SetClaPro(const pClaPro: Integer);
    function GetIndPpc: Char;
    procedure SetIndPpc(const pIndPpc: Char);
    function GetIndFpr: Char;
    procedure SetIndFpr(const pIndFpr: Char);
    function GetCodNtg: Integer;
    procedure SetCodNtg(const pCodNtg: Integer);
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
    function GetUsuGer: Integer;
    procedure SetUsuGer(const pUsuGer: Integer);
    function GetHorGer: Integer;
    procedure SetHorGer(const pHorGer: Integer);
    function GetDatGer: TDate;
    procedure SetDatGer(const pDatGer: TDate);
    function GetDepPad: string;
    procedure SetDepPad(const pDepPad: string);
    function GetCtrVld: Char;
    procedure SetCtrVld(const pCtrVld: Char);
    function GetCtrLot: Char;
    procedure SetCtrLot(const pCtrLot: Char);
    function GetLotBas: Char;
    procedure SetLotBas(const pLotBas: Char);
    function GetCtrSep: Char;
    procedure SetCtrSep(const pCtrSep: Char);
    function GetQtdMve: Double;
    procedure SetQtdMve(const pQtdMve: Double);
    function GetCodRef: string;
    procedure SetCodRef(const pCodRef: string);
    function GetCodPin: string;
    procedure SetCodPin(const pCodPin: string);
    function GetNotFor: Double;
    procedure SetNotFor(const pNotFor: Double);
    function GetExgCcl: Char;
    procedure SetExgCcl(const pExgCcl: Char);
    function GetEmiGtr: Char;
    procedure SetEmiGtr(const pEmiGtr: Char);
    function GetUsuAlt: Integer;
    procedure SetUsuAlt(const pUsuAlt: Integer);
    function GetHorAlt: Integer;
    procedure SetHorAlt(const pHorAlt: Integer);
    function GetDatAlt: TDate;
    procedure SetDatAlt(const pDatAlt: TDate);
    function GetSomIim: Char;
    procedure SetSomIim(const pSomIim: Char);
    function GetRecPis: Char;
    procedure SetRecPis(const pRecPis: Char);
    function GetTriPis: Char;
    procedure SetTriPis(const pTriPis: Char);
    function GetTriCof: Char;
    procedure SetTriCof(const pTriCof: Char);
    function GetIndExp: Integer;
    procedure SetIndExp(const pIndExp: Integer);
    function GetDatPal: TDate;
    procedure SetDatPal(const pDatPal: TDate);
    function GetHorPal: Integer;
    procedure SetHorPal(const pHorPal: Integer);
    function GetExpWms: Integer;
    procedure SetExpWms(const pExpWms: Integer);
    function GetTipInt: Integer;
    procedure SetTipInt(const pTipInt: Integer);
    function GetCodFif: string;
    procedure SetCodFif(const pCodFif: string);
    function GetCodFie: string;
    procedure SetCodFie(const pCodFie: string);
    function GetCodFim: string;
    procedure SetCodFim(const pCodFim: string);
    function GetRecCof: Char;
    procedure SetRecCof(const pRecCof: Char);
    function GetSomIil: Char;
    procedure SetSomIil(const pSomIil: Char);
    function GetCalDzf: Char;
    procedure SetCalDzf(const pCalDzf: Char);
    function GetUniPad: string;
    procedure SetUniPad(const pUniPad: string);
    function GetCodMar: string;
    procedure SetCodMar(const pCodMar: string);
    function GetCodClc: string;
    procedure SetCodClc(const pCodClc: string);
    function GetCodAgm: string;
    procedure SetCodAgm(const pCodAgm: string);
    function GetFilPrd: Integer;
    procedure SetFilPrd(const pFilPrd: Integer);
    function GetTolQmx: Double;
    procedure SetTolQmx(const pTolQmx: Double);
    function GetGerOrp: Char;
    procedure SetGerOrp(const pGerOrp: Char);
    function GetCodPdv: Integer;
    procedure SetCodPdv(const pCodPdv: Integer);
    function GetPerIrf: Double;
    procedure SetPerIrf(const pPerIrf: Double);
    function GetPerPis: Double;
    procedure SetPerPis(const pPerPis: Double);
    function GetPerCof: Double;
    procedure SetPerCof(const pPerCof: Double);
    function GetPerCsl: Double;
    procedure SetPerCsl(const pPerCsl: Double);
    function GetPerOur: Double;
    procedure SetPerOur(const pPerOur: Double);
    function GetConMon: Char;
    procedure SetConMon(const pConMon: Char);
    function GetPerFun: Double;
    procedure SetPerFun(const pPerFun: Double);
    function GetCodAga: string;
    procedure SetCodAga(const pCodAga: string);
    function GetSomIps: Char;
    procedure SetSomIps(const pSomIps: Char);
    function GetSomIco: Char;
    procedure SetSomIco(const pSomIco: Char);
    function GetSomIpl: Char;
    procedure SetSomIpl(const pSomIpl: Char);
    function GetSomIcl: Char;
    procedure SetSomIcl(const pSomIcl: Char);
    function GetIndOct: Char;
    procedure SetIndOct(const pIndOct: Char);
    function GetIndSpr: Char;
    procedure SetIndSpr(const pIndSpr: Char);
    function GetCodEnd: string;
    procedure SetCodEnd(const pCodEnd: string);
    function GetPesBru: Double;
    procedure SetPesBru(const pPesBru: Double);
    function GetPesLiq: Double;
    procedure SetPesLiq(const pPesLiq: Double);
    function GetTolPes: Double;
    procedure SetTolPes(const pTolPes: Double);
    function GetVolPro: Double;
    procedure SetVolPro(const pVolPro: Double);
    function GetRotAnx: Integer;
    procedure SetRotAnx(const pRotAnx: Integer);
    function GetNumAnx: Integer;
    procedure SetNumAnx(const pNumAnx: Integer);
    function GetProImp: Integer;
    procedure SetProImp(const pProImp: Integer);
    function GetBasRec: Char;
    procedure SetBasRec(const pBasRec: Char);
    function GetCodAnp: Integer;
    procedure SetCodAnp(const pCodAnp: Integer);
    function GetProEpe: Integer;
    procedure SetProEpe(const pProEpe: Integer);
    function GetCtrVis: Char;
    procedure SetCtrVis(const pCtrVis: Char);
    function GetDatVis: TDate;
    procedure SetDatVis(const pDatVis: TDate);
    function GetHorVis: Integer;
    procedure SetHorVis(const pHorVis: Integer);
    function GetIndFrt: Char;
    procedure SetIndFrt(const pIndFrt: Char);
    function GetFrtEqp: Char;
    procedure SetFrtEqp(const pFrtEqp: Char);
    function GetGrpFrt: string;
    procedure SetGrpFrt(const pGrpFrt: string);
    function GetConEne: Integer;
    procedure SetConEne(const pConEne: Integer);
    function GetConAgu: Integer;
    procedure SetConAgu(const pConAgu: Integer);
    function GetTipLig: Integer;
    procedure SetTipLig(const pTipLig: Integer);
    function GetGruTen: Integer;
    procedure SetGruTen(const pGruTen: Integer);
    function GetTipMfr: Char;
    procedure SetTipMfr(const pTipMfr: Char);
    function GetUniFrt: Char;
    procedure SetUniFrt(const pUniFrt: Char);
    function GetCstIpi: string;
    procedure SetCstIpi(const pCstIpi: string);
    function GetCstPis: string;
    procedure SetCstPis(const pCstPis: string);
    function GetCstCof: string;
    procedure SetCstCof(const pCstCof: string);
    function GetTprPis: string;
    procedure SetTprPis(const pTprPis: string);
    function GetTprCof: string;
    procedure SetTprCof(const pTprCof: string);
    function GetTprIpi: string;
    procedure SetTprIpi(const pTprIpi: string);
    function GetRegTri: Char;
    procedure SetRegTri(const pRegTri: Char);
    function GetIdePro: string;
    procedure SetIdePro(const pIdePro: string);
    function GetQtdAfe: Integer;
    procedure SetQtdAfe(const pQtdAfe: Integer);
    function GetIndAfe: Char;
    procedure SetIndAfe(const pIndAfe: Char);
    function GetCstIpc: string;
    procedure SetCstIpc(const pCstIpc: string);
    function GetCstPic: string;
    procedure SetCstPic(const pCstPic: string);
    function GetCstCoc: string;
    procedure SetCstCoc(const pCstCoc: string);
    function GetOriMer: Char;
    procedure SetOriMer(const pOriMer: Char);
    function GetNatPis: Integer;
    procedure SetNatPis(const pNatPis: Integer);
    function GetNatCof: Integer;
    procedure SetNatCof(const pNatCof: Integer);
    function GetLarPro: Double;
    procedure SetLarPro(const pLarPro: Double);
    function GetAltPro: Double;
    procedure SetAltPro(const pAltPro: Double);
    function GetComPro: Double;
    procedure SetComPro(const pComPro: Double);
    function GetBasCre: Integer;
    procedure SetBasCre(const pBasCre: Integer);
    function GetProMon: Char;
    procedure SetProMon(const pProMon: Char);
    function GetProEnt: Char;
    procedure SetProEnt(const pProEnt: Char);
    function GetVarPro: Char;
    procedure SetVarPro(const pVarPro: Char);
    function GetProFol: Char;
    procedure SetProFol(const pProFol: Char);
    function GetProVes: Char;
    procedure SetProVes(const pProVes: Char);
    function GetQtdVol: Integer;
    procedure SetQtdVol(const pQtdVol: Integer);
    function GetExiNfe: Char;
    procedure SetExiNfe(const pExiNfe: Char);
    function GetPrzRec: Integer;
    procedure SetPrzRec(const pPrzRec: Integer);
    function GetUniWms: string;
    procedure SetUniWms(const pUniWms: string);
    function GetFinCrp: Integer;
    procedure SetFinCrp(const pFinCrp: Integer);
    function GetFinCdp: Integer;
    procedure SetFinCdp(const pFinCdp: Integer);
    function GetPerPim: Double;
    procedure SetPerPim(const pPerPim: Double);
    function GetPerCim: Double;
    procedure SetPerCim(const pPerCim: Double);
    function GetIteFis: string;
    procedure SetIteFis(const pIteFis: string);
    function GetDesFis: string;
    procedure SetDesFis(const pDesFis: string);
    function GetCodAgg: string;
    procedure SetCodAgg(const pCodAgg: string);
    function GetParCom: Char;
    procedure SetParCom(const pParCom: Char);
    function GetUSU_CodMsg1: Integer;
    procedure SetUSU_CodMsg1(const pUSU_CodMsg1: Integer);
    function GetUSU_IndB2B: Char;
    procedure SetUSU_IndB2B(const pUSU_IndB2B: Char);
    function GetUSU_IndEco: Char;
    procedure SetUSU_IndEco(const pUSU_IndEco: Char);
    function GetUSU_IndPop: Char;
    procedure SetUSU_IndPop(const pUSU_IndPop: Char);

    function GetCodEmpOld: Integer;
    procedure SetCodEmpOld(const pCodEmp: Integer);
    function GetCodProOld: string;
    procedure SetCodProOld(const pCodPro: string);
    function GetDesProOld: string;
    procedure SetDesProOld(const pDesPro: string);
    function GetCplProOld: string;
    procedure SetCplProOld(const pCplPro: string);
    function GetDesNfvOld: string;
    procedure SetDesNfvOld(const pDesNfv: string);
    function GetCodFamOld: string;
    procedure SetCodFamOld(const pCodFam: string);
    function GetUniMedOld: string;
    procedure SetUniMedOld(const pUniMed: string);
    function GetUniMe2Old: string;
    procedure SetUniMe2Old(const pUniMe2: string);
    function GetUniMe3Old: string;
    procedure SetUniMe3Old(const pUniMe3: string);
    function GetTipProOld: Char;
    procedure SetTipProOld(const pTipPro: Char);
    function GetCodOriOld: string;
    procedure SetCodOriOld(const pCodOri: string);
    function GetNumOriOld: Integer;
    procedure SetNumOriOld(const pNumOri: Integer);
    function GetCodMdpOld: string;
    procedure SetCodMdpOld(const pCodMdp: string);
    function GetCodModOld: string;
    procedure SetCodModOld(const pCodMod: string);
    function GetCodRotOld: string;
    procedure SetCodRotOld(const pCodRot: string);
    function GetCodAgeOld: string;
    procedure SetCodAgeOld(const pCodAge: string);
    function GetCodAgpOld: string;
    procedure SetCodAgpOld(const pCodAgp: string);
    function GetCodAguOld: string;
    procedure SetCodAguOld(const pCodAgu: string);
    function GetCodAgcOld: string;
    procedure SetCodAgcOld(const pCodAgc: string);
    function GetCodAgfOld: string;
    procedure SetCodAgfOld(const pCodAgf: string);
    function GetCodClfOld: string;
    procedure SetCodClfOld(const pCodClf: string);
    function GetCodStrOld: string;
    procedure SetCodStrOld(const pCodStr: string);
    function GetPerIpiOld: Double;
    procedure SetPerIpiOld(const pPerIpi: Double);
    function GetRecIpiOld: Char;
    procedure SetRecIpiOld(const pRecIpi: Char);
    function GetTemIcmOld: Char;
    procedure SetTemIcmOld(const pTemIcm: Char);
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
    function GetRecIcmOld: Char;
    procedure SetRecIcmOld(const pRecIcm: Char);
    function GetCodRoyOld: Integer;
    procedure SetCodRoyOld(const pCodRoy: Integer);
    function GetQtdMltOld: Double;
    procedure SetQtdMltOld(const pQtdMlt: Double);
    function GetQtdMinOld: Double;
    procedure SetQtdMinOld(const pQtdMin: Double);
    function GetQtdMaxOld: Double;
    procedure SetQtdMaxOld(const pQtdMax: Double);
    function GetQtdGopOld: Double;
    procedure SetQtdGopOld(const pQtdGop: Double);
    function GetBxaOrpOld: Char;
    procedure SetBxaOrpOld(const pBxaOrp: Char);
    function GetCodPr2Old: string;
    procedure SetCodPr2Old(const pCodPr2: string);
    function GetDerPr2Old: string;
    procedure SetDerPr2Old(const pDerPr2: string);
    function GetCodPr3Old: string;
    procedure SetCodPr3Old(const pCodPr3: string);
    function GetDerPr3Old: string;
    procedure SetDerPr3Old(const pDerPr3: string);
    function GetCodPr4Old: string;
    procedure SetCodPr4Old(const pCodPr4: string);
    function GetDerPr4Old: string;
    procedure SetDerPr4Old(const pDerPr4: string);
    function GetProStqOld: Char;
    procedure SetProStqOld(const pProStq: Char);
    function GetSitProOld: Char;
    procedure SetSitProOld(const pSitPro: Char);
    function GetRotProOld: Char;
    procedure SetRotProOld(const pRotPro: Char);
    function GetUsoCusOld: Char;
    procedure SetUsoCusOld(const pUsoCus: Char);
    function GetIndMisOld: Char;
    procedure SetIndMisOld(const pIndMis: Char);
    function GetIndVenOld: Char;
    procedure SetIndVenOld(const pIndVen: Char);
    function GetIndCprOld: Char;
    procedure SetIndCprOld(const pIndCpr: Char);
    function GetIndReqOld: Char;
    procedure SetIndReqOld(const pIndReq: Char);
    function GetIndKitOld: Char;
    procedure SetIndKitOld(const pIndKit: Char);
    function GetMatDirOld: Char;
    procedure SetMatDirOld(const pMatDir: Char);
    function GetClaProOld: Integer;
    procedure SetClaProOld(const pClaPro: Integer);
    function GetIndPpcOld: Char;
    procedure SetIndPpcOld(const pIndPpc: Char);
    function GetIndFprOld: Char;
    procedure SetIndFprOld(const pIndFpr: Char);
    function GetCodNtgOld: Integer;
    procedure SetCodNtgOld(const pCodNtg: Integer);
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
    function GetUsuGerOld: Integer;
    procedure SetUsuGerOld(const pUsuGer: Integer);
    function GetHorGerOld: Integer;
    procedure SetHorGerOld(const pHorGer: Integer);
    function GetDatGerOld: TDate;
    procedure SetDatGerOld(const pDatGer: TDate);
    function GetDepPadOld: string;
    procedure SetDepPadOld(const pDepPad: string);
    function GetCtrVldOld: Char;
    procedure SetCtrVldOld(const pCtrVld: Char);
    function GetCtrLotOld: Char;
    procedure SetCtrLotOld(const pCtrLot: Char);
    function GetLotBasOld: Char;
    procedure SetLotBasOld(const pLotBas: Char);
    function GetCtrSepOld: Char;
    procedure SetCtrSepOld(const pCtrSep: Char);
    function GetQtdMveOld: Double;
    procedure SetQtdMveOld(const pQtdMve: Double);
    function GetCodRefOld: string;
    procedure SetCodRefOld(const pCodRef: string);
    function GetCodPinOld: string;
    procedure SetCodPinOld(const pCodPin: string);
    function GetNotForOld: Double;
    procedure SetNotForOld(const pNotFor: Double);
    function GetExgCclOld: Char;
    procedure SetExgCclOld(const pExgCcl: Char);
    function GetEmiGtrOld: Char;
    procedure SetEmiGtrOld(const pEmiGtr: Char);
    function GetUsuAltOld: Integer;
    procedure SetUsuAltOld(const pUsuAlt: Integer);
    function GetHorAltOld: Integer;
    procedure SetHorAltOld(const pHorAlt: Integer);
    function GetDatAltOld: TDate;
    procedure SetDatAltOld(const pDatAlt: TDate);
    function GetSomIimOld: Char;
    procedure SetSomIimOld(const pSomIim: Char);
    function GetRecPisOld: Char;
    procedure SetRecPisOld(const pRecPis: Char);
    function GetTriPisOld: Char;
    procedure SetTriPisOld(const pTriPis: Char);
    function GetTriCofOld: Char;
    procedure SetTriCofOld(const pTriCof: Char);
    function GetIndExpOld: Integer;
    procedure SetIndExpOld(const pIndExp: Integer);
    function GetDatPalOld: TDate;
    procedure SetDatPalOld(const pDatPal: TDate);
    function GetHorPalOld: Integer;
    procedure SetHorPalOld(const pHorPal: Integer);
    function GetExpWmsOld: Integer;
    procedure SetExpWmsOld(const pExpWms: Integer);
    function GetTipIntOld: Integer;
    procedure SetTipIntOld(const pTipInt: Integer);
    function GetCodFifOld: string;
    procedure SetCodFifOld(const pCodFif: string);
    function GetCodFieOld: string;
    procedure SetCodFieOld(const pCodFie: string);
    function GetCodFimOld: string;
    procedure SetCodFimOld(const pCodFim: string);
    function GetRecCofOld: Char;
    procedure SetRecCofOld(const pRecCof: Char);
    function GetSomIilOld: Char;
    procedure SetSomIilOld(const pSomIil: Char);
    function GetCalDzfOld: Char;
    procedure SetCalDzfOld(const pCalDzf: Char);
    function GetUniPadOld: string;
    procedure SetUniPadOld(const pUniPad: string);
    function GetCodMarOld: string;
    procedure SetCodMarOld(const pCodMar: string);
    function GetCodClcOld: string;
    procedure SetCodClcOld(const pCodClc: string);
    function GetCodAgmOld: string;
    procedure SetCodAgmOld(const pCodAgm: string);
    function GetFilPrdOld: Integer;
    procedure SetFilPrdOld(const pFilPrd: Integer);
    function GetTolQmxOld: Double;
    procedure SetTolQmxOld(const pTolQmx: Double);
    function GetGerOrpOld: Char;
    procedure SetGerOrpOld(const pGerOrp: Char);
    function GetCodPdvOld: Integer;
    procedure SetCodPdvOld(const pCodPdv: Integer);
    function GetPerIrfOld: Double;
    procedure SetPerIrfOld(const pPerIrf: Double);
    function GetPerPisOld: Double;
    procedure SetPerPisOld(const pPerPis: Double);
    function GetPerCofOld: Double;
    procedure SetPerCofOld(const pPerCof: Double);
    function GetPerCslOld: Double;
    procedure SetPerCslOld(const pPerCsl: Double);
    function GetPerOurOld: Double;
    procedure SetPerOurOld(const pPerOur: Double);
    function GetConMonOld: Char;
    procedure SetConMonOld(const pConMon: Char);
    function GetPerFunOld: Double;
    procedure SetPerFunOld(const pPerFun: Double);
    function GetCodAgaOld: string;
    procedure SetCodAgaOld(const pCodAga: string);
    function GetSomIpsOld: Char;
    procedure SetSomIpsOld(const pSomIps: Char);
    function GetSomIcoOld: Char;
    procedure SetSomIcoOld(const pSomIco: Char);
    function GetSomIplOld: Char;
    procedure SetSomIplOld(const pSomIpl: Char);
    function GetSomIclOld: Char;
    procedure SetSomIclOld(const pSomIcl: Char);
    function GetIndOctOld: Char;
    procedure SetIndOctOld(const pIndOct: Char);
    function GetIndSprOld: Char;
    procedure SetIndSprOld(const pIndSpr: Char);
    function GetCodEndOld: string;
    procedure SetCodEndOld(const pCodEnd: string);
    function GetPesBruOld: Double;
    procedure SetPesBruOld(const pPesBru: Double);
    function GetPesLiqOld: Double;
    procedure SetPesLiqOld(const pPesLiq: Double);
    function GetTolPesOld: Double;
    procedure SetTolPesOld(const pTolPes: Double);
    function GetVolProOld: Double;
    procedure SetVolProOld(const pVolPro: Double);
    function GetRotAnxOld: Integer;
    procedure SetRotAnxOld(const pRotAnx: Integer);
    function GetNumAnxOld: Integer;
    procedure SetNumAnxOld(const pNumAnx: Integer);
    function GetProImpOld: Integer;
    procedure SetProImpOld(const pProImp: Integer);
    function GetBasRecOld: Char;
    procedure SetBasRecOld(const pBasRec: Char);
    function GetCodAnpOld: Integer;
    procedure SetCodAnpOld(const pCodAnp: Integer);
    function GetProEpeOld: Integer;
    procedure SetProEpeOld(const pProEpe: Integer);
    function GetCtrVisOld: Char;
    procedure SetCtrVisOld(const pCtrVis: Char);
    function GetDatVisOld: TDate;
    procedure SetDatVisOld(const pDatVis: TDate);
    function GetHorVisOld: Integer;
    procedure SetHorVisOld(const pHorVis: Integer);
    function GetIndFrtOld: Char;
    procedure SetIndFrtOld(const pIndFrt: Char);
    function GetFrtEqpOld: Char;
    procedure SetFrtEqpOld(const pFrtEqp: Char);
    function GetGrpFrtOld: string;
    procedure SetGrpFrtOld(const pGrpFrt: string);
    function GetConEneOld: Integer;
    procedure SetConEneOld(const pConEne: Integer);
    function GetConAguOld: Integer;
    procedure SetConAguOld(const pConAgu: Integer);
    function GetTipLigOld: Integer;
    procedure SetTipLigOld(const pTipLig: Integer);
    function GetGruTenOld: Integer;
    procedure SetGruTenOld(const pGruTen: Integer);
    function GetTipMfrOld: Char;
    procedure SetTipMfrOld(const pTipMfr: Char);
    function GetUniFrtOld: Char;
    procedure SetUniFrtOld(const pUniFrt: Char);
    function GetCstIpiOld: string;
    procedure SetCstIpiOld(const pCstIpi: string);
    function GetCstPisOld: string;
    procedure SetCstPisOld(const pCstPis: string);
    function GetCstCofOld: string;
    procedure SetCstCofOld(const pCstCof: string);
    function GetTprPisOld: string;
    procedure SetTprPisOld(const pTprPis: string);
    function GetTprCofOld: string;
    procedure SetTprCofOld(const pTprCof: string);
    function GetTprIpiOld: string;
    procedure SetTprIpiOld(const pTprIpi: string);
    function GetRegTriOld: Char;
    procedure SetRegTriOld(const pRegTri: Char);
    function GetIdeProOld: string;
    procedure SetIdeProOld(const pIdePro: string);
    function GetQtdAfeOld: Integer;
    procedure SetQtdAfeOld(const pQtdAfe: Integer);
    function GetIndAfeOld: Char;
    procedure SetIndAfeOld(const pIndAfe: Char);
    function GetCstIpcOld: string;
    procedure SetCstIpcOld(const pCstIpc: string);
    function GetCstPicOld: string;
    procedure SetCstPicOld(const pCstPic: string);
    function GetCstCocOld: string;
    procedure SetCstCocOld(const pCstCoc: string);
    function GetOriMerOld: Char;
    procedure SetOriMerOld(const pOriMer: Char);
    function GetNatPisOld: Integer;
    procedure SetNatPisOld(const pNatPis: Integer);
    function GetNatCofOld: Integer;
    procedure SetNatCofOld(const pNatCof: Integer);
    function GetLarProOld: Double;
    procedure SetLarProOld(const pLarPro: Double);
    function GetAltProOld: Double;
    procedure SetAltProOld(const pAltPro: Double);
    function GetComProOld: Double;
    procedure SetComProOld(const pComPro: Double);
    function GetBasCreOld: Integer;
    procedure SetBasCreOld(const pBasCre: Integer);
    function GetProMonOld: Char;
    procedure SetProMonOld(const pProMon: Char);
    function GetProEntOld: Char;
    procedure SetProEntOld(const pProEnt: Char);
    function GetVarProOld: Char;
    procedure SetVarProOld(const pVarPro: Char);
    function GetProFolOld: Char;
    procedure SetProFolOld(const pProFol: Char);
    function GetProVesOld: Char;
    procedure SetProVesOld(const pProVes: Char);
    function GetQtdVolOld: Integer;
    procedure SetQtdVolOld(const pQtdVol: Integer);
    function GetExiNfeOld: Char;
    procedure SetExiNfeOld(const pExiNfe: Char);
    function GetPrzRecOld: Integer;
    procedure SetPrzRecOld(const pPrzRec: Integer);
    function GetUniWmsOld: string;
    procedure SetUniWmsOld(const pUniWms: string);
    function GetFinCrpOld: Integer;
    procedure SetFinCrpOld(const pFinCrp: Integer);
    function GetFinCdpOld: Integer;
    procedure SetFinCdpOld(const pFinCdp: Integer);
    function GetPerPimOld: Double;
    procedure SetPerPimOld(const pPerPim: Double);
    function GetPerCimOld: Double;
    procedure SetPerCimOld(const pPerCim: Double);
    function GetIteFisOld: string;
    procedure SetIteFisOld(const pIteFis: string);
    function GetDesFisOld: string;
    procedure SetDesFisOld(const pDesFis: string);
    function GetCodAggOld: string;
    procedure SetCodAggOld(const pCodAgg: string);
    function GetParComOld: Char;
    procedure SetParComOld(const pParCom: Char);
    function GetUSU_CodMsg1Old: Integer;
    procedure SetUSU_CodMsg1Old(const pUSU_CodMsg1: Integer);
    function GetUSU_IndB2BOld: Char;
    procedure SetUSU_IndB2BOld(const pUSU_IndB2B: Char);
    function GetUSU_IndEcoOld: Char;
    procedure SetUSU_IndEcoOld(const pUSU_IndEco: Char);
    function GetUSU_IndPopOld: Char;
    procedure SetUSU_IndPopOld(const pUSU_IndPop: Char);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property CodEmp: Integer read GetCodEmp write SetCodEmp;
    property CodPro: string read GetCodPro write SetCodPro;
    property DesPro: string read GetDesPro write SetDesPro;
    property CplPro: string read GetCplPro write SetCplPro;
    property DesNfv: string read GetDesNfv write SetDesNfv;
    property CodFam: string read GetCodFam write SetCodFam;
    property UniMed: string read GetUniMed write SetUniMed;
    property UniMe2: string read GetUniMe2 write SetUniMe2;
    property UniMe3: string read GetUniMe3 write SetUniMe3;
    property TipPro: Char read GetTipPro write SetTipPro;
    property CodOri: string read GetCodOri write SetCodOri;
    property NumOri: Integer read GetNumOri write SetNumOri;
    property CodMdp: string read GetCodMdp write SetCodMdp;
    property CodMod: string read GetCodMod write SetCodMod;
    property CodRot: string read GetCodRot write SetCodRot;
    property CodAge: string read GetCodAge write SetCodAge;
    property CodAgp: string read GetCodAgp write SetCodAgp;
    property CodAgu: string read GetCodAgu write SetCodAgu;
    property CodAgc: string read GetCodAgc write SetCodAgc;
    property CodAgf: string read GetCodAgf write SetCodAgf;
    property CodClf: string read GetCodClf write SetCodClf;
    property CodStr: string read GetCodStr write SetCodStr;
    property PerIpi: Double read GetPerIpi write SetPerIpi;
    property RecIpi: Char read GetRecIpi write SetRecIpi;
    property TemIcm: Char read GetTemIcm write SetTemIcm;
    property CodTic: string read GetCodTic write SetCodTic;
    property CodTrd: string read GetCodTrd write SetCodTrd;
    property CodTst: string read GetCodTst write SetCodTst;
    property CodStp: string read GetCodStp write SetCodStp;
    property CodStc: string read GetCodStc write SetCodStc;
    property RecIcm: Char read GetRecIcm write SetRecIcm;
    property CodRoy: Integer read GetCodRoy write SetCodRoy;
    property QtdMlt: Double read GetQtdMlt write SetQtdMlt;
    property QtdMin: Double read GetQtdMin write SetQtdMin;
    property QtdMax: Double read GetQtdMax write SetQtdMax;
    property QtdGop: Double read GetQtdGop write SetQtdGop;
    property BxaOrp: Char read GetBxaOrp write SetBxaOrp;
    property CodPr2: string read GetCodPr2 write SetCodPr2;
    property DerPr2: string read GetDerPr2 write SetDerPr2;
    property CodPr3: string read GetCodPr3 write SetCodPr3;
    property DerPr3: string read GetDerPr3 write SetDerPr3;
    property CodPr4: string read GetCodPr4 write SetCodPr4;
    property DerPr4: string read GetDerPr4 write SetDerPr4;
    property ProStq: Char read GetProStq write SetProStq;
    property SitPro: Char read GetSitPro write SetSitPro;
    property RotPro: Char read GetRotPro write SetRotPro;
    property UsoCus: Char read GetUsoCus write SetUsoCus;
    property IndMis: Char read GetIndMis write SetIndMis;
    property IndVen: Char read GetIndVen write SetIndVen;
    property IndCpr: Char read GetIndCpr write SetIndCpr;
    property IndReq: Char read GetIndReq write SetIndReq;
    property IndKit: Char read GetIndKit write SetIndKit;
    property MatDir: Char read GetMatDir write SetMatDir;
    property ClaPro: Integer read GetClaPro write SetClaPro;
    property IndPpc: Char read GetIndPpc write SetIndPpc;
    property IndFpr: Char read GetIndFpr write SetIndFpr;
    property CodNtg: Integer read GetCodNtg write SetCodNtg;
    property CriRat: Integer read GetCriRat write SetCriRat;
    property CtaRed: Integer read GetCtaRed write SetCtaRed;
    property CtaRcr: Integer read GetCtaRcr write SetCtaRcr;
    property CtaFdv: Integer read GetCtaFdv write SetCtaFdv;
    property CtaFcr: Integer read GetCtaFcr write SetCtaFcr;
    property UsuGer: Integer read GetUsuGer write SetUsuGer;
    property HorGer: Integer read GetHorGer write SetHorGer;
    property DatGer: TDate read GetDatGer write SetDatGer;
    property DepPad: string read GetDepPad write SetDepPad;
    property CtrVld: Char read GetCtrVld write SetCtrVld;
    property CtrLot: Char read GetCtrLot write SetCtrLot;
    property LotBas: Char read GetLotBas write SetLotBas;
    property CtrSep: Char read GetCtrSep write SetCtrSep;
    property QtdMve: Double read GetQtdMve write SetQtdMve;
    property CodRef: string read GetCodRef write SetCodRef;
    property CodPin: string read GetCodPin write SetCodPin;
    property NotFor: Double read GetNotFor write SetNotFor;
    property ExgCcl: Char read GetExgCcl write SetExgCcl;
    property EmiGtr: Char read GetEmiGtr write SetEmiGtr;
    property UsuAlt: Integer read GetUsuAlt write SetUsuAlt;
    property HorAlt: Integer read GetHorAlt write SetHorAlt;
    property DatAlt: TDate read GetDatAlt write SetDatAlt;
    property SomIim: Char read GetSomIim write SetSomIim;
    property RecPis: Char read GetRecPis write SetRecPis;
    property TriPis: Char read GetTriPis write SetTriPis;
    property TriCof: Char read GetTriCof write SetTriCof;
    property IndExp: Integer read GetIndExp write SetIndExp;
    property DatPal: TDate read GetDatPal write SetDatPal;
    property HorPal: Integer read GetHorPal write SetHorPal;
    property ExpWms: Integer read GetExpWms write SetExpWms;
    property TipInt: Integer read GetTipInt write SetTipInt;
    property CodFif: string read GetCodFif write SetCodFif;
    property CodFie: string read GetCodFie write SetCodFie;
    property CodFim: string read GetCodFim write SetCodFim;
    property RecCof: Char read GetRecCof write SetRecCof;
    property SomIil: Char read GetSomIil write SetSomIil;
    property CalDzf: Char read GetCalDzf write SetCalDzf;
    property UniPad: string read GetUniPad write SetUniPad;
    property CodMar: string read GetCodMar write SetCodMar;
    property CodClc: string read GetCodClc write SetCodClc;
    property CodAgm: string read GetCodAgm write SetCodAgm;
    property FilPrd: Integer read GetFilPrd write SetFilPrd;
    property TolQmx: Double read GetTolQmx write SetTolQmx;
    property GerOrp: Char read GetGerOrp write SetGerOrp;
    property CodPdv: Integer read GetCodPdv write SetCodPdv;
    property PerIrf: Double read GetPerIrf write SetPerIrf;
    property PerPis: Double read GetPerPis write SetPerPis;
    property PerCof: Double read GetPerCof write SetPerCof;
    property PerCsl: Double read GetPerCsl write SetPerCsl;
    property PerOur: Double read GetPerOur write SetPerOur;
    property ConMon: Char read GetConMon write SetConMon;
    property PerFun: Double read GetPerFun write SetPerFun;
    property CodAga: string read GetCodAga write SetCodAga;
    property SomIps: Char read GetSomIps write SetSomIps;
    property SomIco: Char read GetSomIco write SetSomIco;
    property SomIpl: Char read GetSomIpl write SetSomIpl;
    property SomIcl: Char read GetSomIcl write SetSomIcl;
    property IndOct: Char read GetIndOct write SetIndOct;
    property IndSpr: Char read GetIndSpr write SetIndSpr;
    property CodEnd: string read GetCodEnd write SetCodEnd;
    property PesBru: Double read GetPesBru write SetPesBru;
    property PesLiq: Double read GetPesLiq write SetPesLiq;
    property TolPes: Double read GetTolPes write SetTolPes;
    property VolPro: Double read GetVolPro write SetVolPro;
    property RotAnx: Integer read GetRotAnx write SetRotAnx;
    property NumAnx: Integer read GetNumAnx write SetNumAnx;
    property ProImp: Integer read GetProImp write SetProImp;
    property BasRec: Char read GetBasRec write SetBasRec;
    property CodAnp: Integer read GetCodAnp write SetCodAnp;
    property ProEpe: Integer read GetProEpe write SetProEpe;
    property CtrVis: Char read GetCtrVis write SetCtrVis;
    property DatVis: TDate read GetDatVis write SetDatVis;
    property HorVis: Integer read GetHorVis write SetHorVis;
    property IndFrt: Char read GetIndFrt write SetIndFrt;
    property FrtEqp: Char read GetFrtEqp write SetFrtEqp;
    property GrpFrt: string read GetGrpFrt write SetGrpFrt;
    property ConEne: Integer read GetConEne write SetConEne;
    property ConAgu: Integer read GetConAgu write SetConAgu;
    property TipLig: Integer read GetTipLig write SetTipLig;
    property GruTen: Integer read GetGruTen write SetGruTen;
    property TipMfr: Char read GetTipMfr write SetTipMfr;
    property UniFrt: Char read GetUniFrt write SetUniFrt;
    property CstIpi: string read GetCstIpi write SetCstIpi;
    property CstPis: string read GetCstPis write SetCstPis;
    property CstCof: string read GetCstCof write SetCstCof;
    property TprPis: string read GetTprPis write SetTprPis;
    property TprCof: string read GetTprCof write SetTprCof;
    property TprIpi: string read GetTprIpi write SetTprIpi;
    property RegTri: Char read GetRegTri write SetRegTri;
    property IdePro: string read GetIdePro write SetIdePro;
    property QtdAfe: Integer read GetQtdAfe write SetQtdAfe;
    property IndAfe: Char read GetIndAfe write SetIndAfe;
    property CstIpc: string read GetCstIpc write SetCstIpc;
    property CstPic: string read GetCstPic write SetCstPic;
    property CstCoc: string read GetCstCoc write SetCstCoc;
    property OriMer: Char read GetOriMer write SetOriMer;
    property NatPis: Integer read GetNatPis write SetNatPis;
    property NatCof: Integer read GetNatCof write SetNatCof;
    property LarPro: Double read GetLarPro write SetLarPro;
    property AltPro: Double read GetAltPro write SetAltPro;
    property ComPro: Double read GetComPro write SetComPro;
    property BasCre: Integer read GetBasCre write SetBasCre;
    property ProMon: Char read GetProMon write SetProMon;
    property ProEnt: Char read GetProEnt write SetProEnt;
    property VarPro: Char read GetVarPro write SetVarPro;
    property ProFol: Char read GetProFol write SetProFol;
    property ProVes: Char read GetProVes write SetProVes;
    property QtdVol: Integer read GetQtdVol write SetQtdVol;
    property ExiNfe: Char read GetExiNfe write SetExiNfe;
    property PrzRec: Integer read GetPrzRec write SetPrzRec;
    property UniWms: string read GetUniWms write SetUniWms;
    property FinCrp: Integer read GetFinCrp write SetFinCrp;
    property FinCdp: Integer read GetFinCdp write SetFinCdp;
    property PerPim: Double read GetPerPim write SetPerPim;
    property PerCim: Double read GetPerCim write SetPerCim;
    property IteFis: string read GetIteFis write SetIteFis;
    property DesFis: string read GetDesFis write SetDesFis;
    property CodAgg: string read GetCodAgg write SetCodAgg;
    property ParCom: Char read GetParCom write SetParCom;
    property USU_CodMsg1: Integer read GetUSU_CodMsg1 write SetUSU_CodMsg1;
    property USU_IndB2B: Char read GetUSU_IndB2B write SetUSU_IndB2B;
    property USU_IndEco: Char read GetUSU_IndEco write SetUSU_IndEco;
    property USU_IndPop: Char read GetUSU_IndPop write SetUSU_IndPop;

    property OLD_CodEmp: Integer read GetCodEmpOLD write SetCodEmpOLD;
    property OLD_CodPro: string read GetCodProOLD write SetCodProOLD;
    property OLD_DesPro: string read GetDesProOLD write SetDesProOLD;
    property OLD_CplPro: string read GetCplProOLD write SetCplProOLD;
    property OLD_DesNfv: string read GetDesNfvOLD write SetDesNfvOLD;
    property OLD_CodFam: string read GetCodFamOLD write SetCodFamOLD;
    property OLD_UniMed: string read GetUniMedOLD write SetUniMedOLD;
    property OLD_UniMe2: string read GetUniMe2OLD write SetUniMe2OLD;
    property OLD_UniMe3: string read GetUniMe3OLD write SetUniMe3OLD;
    property OLD_TipPro: Char read GetTipProOLD write SetTipProOLD;
    property OLD_CodOri: string read GetCodOriOLD write SetCodOriOLD;
    property OLD_NumOri: Integer read GetNumOriOLD write SetNumOriOLD;
    property OLD_CodMdp: string read GetCodMdpOLD write SetCodMdpOLD;
    property OLD_CodMod: string read GetCodModOLD write SetCodModOLD;
    property OLD_CodRot: string read GetCodRotOLD write SetCodRotOLD;
    property OLD_CodAge: string read GetCodAgeOLD write SetCodAgeOLD;
    property OLD_CodAgp: string read GetCodAgpOLD write SetCodAgpOLD;
    property OLD_CodAgu: string read GetCodAguOLD write SetCodAguOLD;
    property OLD_CodAgc: string read GetCodAgcOLD write SetCodAgcOLD;
    property OLD_CodAgf: string read GetCodAgfOLD write SetCodAgfOLD;
    property OLD_CodClf: string read GetCodClfOLD write SetCodClfOLD;
    property OLD_CodStr: string read GetCodStrOLD write SetCodStrOLD;
    property OLD_PerIpi: Double read GetPerIpiOLD write SetPerIpiOLD;
    property OLD_RecIpi: Char read GetRecIpiOLD write SetRecIpiOLD;
    property OLD_TemIcm: Char read GetTemIcmOLD write SetTemIcmOLD;
    property OLD_CodTic: string read GetCodTicOLD write SetCodTicOLD;
    property OLD_CodTrd: string read GetCodTrdOLD write SetCodTrdOLD;
    property OLD_CodTst: string read GetCodTstOLD write SetCodTstOLD;
    property OLD_CodStp: string read GetCodStpOLD write SetCodStpOLD;
    property OLD_CodStc: string read GetCodStcOLD write SetCodStcOLD;
    property OLD_RecIcm: Char read GetRecIcmOLD write SetRecIcmOLD;
    property OLD_CodRoy: Integer read GetCodRoyOLD write SetCodRoyOLD;
    property OLD_QtdMlt: Double read GetQtdMltOLD write SetQtdMltOLD;
    property OLD_QtdMin: Double read GetQtdMinOLD write SetQtdMinOLD;
    property OLD_QtdMax: Double read GetQtdMaxOLD write SetQtdMaxOLD;
    property OLD_QtdGop: Double read GetQtdGopOLD write SetQtdGopOLD;
    property OLD_BxaOrp: Char read GetBxaOrpOLD write SetBxaOrpOLD;
    property OLD_CodPr2: string read GetCodPr2OLD write SetCodPr2OLD;
    property OLD_DerPr2: string read GetDerPr2OLD write SetDerPr2OLD;
    property OLD_CodPr3: string read GetCodPr3OLD write SetCodPr3OLD;
    property OLD_DerPr3: string read GetDerPr3OLD write SetDerPr3OLD;
    property OLD_CodPr4: string read GetCodPr4OLD write SetCodPr4OLD;
    property OLD_DerPr4: string read GetDerPr4OLD write SetDerPr4OLD;
    property OLD_ProStq: Char read GetProStqOLD write SetProStqOLD;
    property OLD_SitPro: Char read GetSitProOLD write SetSitProOLD;
    property OLD_RotPro: Char read GetRotProOLD write SetRotProOLD;
    property OLD_UsoCus: Char read GetUsoCusOLD write SetUsoCusOLD;
    property OLD_IndMis: Char read GetIndMisOLD write SetIndMisOLD;
    property OLD_IndVen: Char read GetIndVenOLD write SetIndVenOLD;
    property OLD_IndCpr: Char read GetIndCprOLD write SetIndCprOLD;
    property OLD_IndReq: Char read GetIndReqOLD write SetIndReqOLD;
    property OLD_IndKit: Char read GetIndKitOLD write SetIndKitOLD;
    property OLD_MatDir: Char read GetMatDirOLD write SetMatDirOLD;
    property OLD_ClaPro: Integer read GetClaProOLD write SetClaProOLD;
    property OLD_IndPpc: Char read GetIndPpcOLD write SetIndPpcOLD;
    property OLD_IndFpr: Char read GetIndFprOLD write SetIndFprOLD;
    property OLD_CodNtg: Integer read GetCodNtgOLD write SetCodNtgOLD;
    property OLD_CriRat: Integer read GetCriRatOLD write SetCriRatOLD;
    property OLD_CtaRed: Integer read GetCtaRedOLD write SetCtaRedOLD;
    property OLD_CtaRcr: Integer read GetCtaRcrOLD write SetCtaRcrOLD;
    property OLD_CtaFdv: Integer read GetCtaFdvOLD write SetCtaFdvOLD;
    property OLD_CtaFcr: Integer read GetCtaFcrOLD write SetCtaFcrOLD;
    property OLD_UsuGer: Integer read GetUsuGerOLD write SetUsuGerOLD;
    property OLD_HorGer: Integer read GetHorGerOLD write SetHorGerOLD;
    property OLD_DatGer: TDate read GetDatGerOLD write SetDatGerOLD;
    property OLD_DepPad: string read GetDepPadOLD write SetDepPadOLD;
    property OLD_CtrVld: Char read GetCtrVldOLD write SetCtrVldOLD;
    property OLD_CtrLot: Char read GetCtrLotOLD write SetCtrLotOLD;
    property OLD_LotBas: Char read GetLotBasOLD write SetLotBasOLD;
    property OLD_CtrSep: Char read GetCtrSepOLD write SetCtrSepOLD;
    property OLD_QtdMve: Double read GetQtdMveOLD write SetQtdMveOLD;
    property OLD_CodRef: string read GetCodRefOLD write SetCodRefOLD;
    property OLD_CodPin: string read GetCodPinOLD write SetCodPinOLD;
    property OLD_NotFor: Double read GetNotForOLD write SetNotForOLD;
    property OLD_ExgCcl: Char read GetExgCclOLD write SetExgCclOLD;
    property OLD_EmiGtr: Char read GetEmiGtrOLD write SetEmiGtrOLD;
    property OLD_UsuAlt: Integer read GetUsuAltOLD write SetUsuAltOLD;
    property OLD_HorAlt: Integer read GetHorAltOLD write SetHorAltOLD;
    property OLD_DatAlt: TDate read GetDatAltOLD write SetDatAltOLD;
    property OLD_SomIim: Char read GetSomIimOLD write SetSomIimOLD;
    property OLD_RecPis: Char read GetRecPisOLD write SetRecPisOLD;
    property OLD_TriPis: Char read GetTriPisOLD write SetTriPisOLD;
    property OLD_TriCof: Char read GetTriCofOLD write SetTriCofOLD;
    property OLD_IndExp: Integer read GetIndExpOLD write SetIndExpOLD;
    property OLD_DatPal: TDate read GetDatPalOLD write SetDatPalOLD;
    property OLD_HorPal: Integer read GetHorPalOLD write SetHorPalOLD;
    property OLD_ExpWms: Integer read GetExpWmsOLD write SetExpWmsOLD;
    property OLD_TipInt: Integer read GetTipIntOLD write SetTipIntOLD;
    property OLD_CodFif: string read GetCodFifOLD write SetCodFifOLD;
    property OLD_CodFie: string read GetCodFieOLD write SetCodFieOLD;
    property OLD_CodFim: string read GetCodFimOLD write SetCodFimOLD;
    property OLD_RecCof: Char read GetRecCofOLD write SetRecCofOLD;
    property OLD_SomIil: Char read GetSomIilOLD write SetSomIilOLD;
    property OLD_CalDzf: Char read GetCalDzfOLD write SetCalDzfOLD;
    property OLD_UniPad: string read GetUniPadOLD write SetUniPadOLD;
    property OLD_CodMar: string read GetCodMarOLD write SetCodMarOLD;
    property OLD_CodClc: string read GetCodClcOLD write SetCodClcOLD;
    property OLD_CodAgm: string read GetCodAgmOLD write SetCodAgmOLD;
    property OLD_FilPrd: Integer read GetFilPrdOLD write SetFilPrdOLD;
    property OLD_TolQmx: Double read GetTolQmxOLD write SetTolQmxOLD;
    property OLD_GerOrp: Char read GetGerOrpOLD write SetGerOrpOLD;
    property OLD_CodPdv: Integer read GetCodPdvOLD write SetCodPdvOLD;
    property OLD_PerIrf: Double read GetPerIrfOLD write SetPerIrfOLD;
    property OLD_PerPis: Double read GetPerPisOLD write SetPerPisOLD;
    property OLD_PerCof: Double read GetPerCofOLD write SetPerCofOLD;
    property OLD_PerCsl: Double read GetPerCslOLD write SetPerCslOLD;
    property OLD_PerOur: Double read GetPerOurOLD write SetPerOurOLD;
    property OLD_ConMon: Char read GetConMonOLD write SetConMonOLD;
    property OLD_PerFun: Double read GetPerFunOLD write SetPerFunOLD;
    property OLD_CodAga: string read GetCodAgaOLD write SetCodAgaOLD;
    property OLD_SomIps: Char read GetSomIpsOLD write SetSomIpsOLD;
    property OLD_SomIco: Char read GetSomIcoOLD write SetSomIcoOLD;
    property OLD_SomIpl: Char read GetSomIplOLD write SetSomIplOLD;
    property OLD_SomIcl: Char read GetSomIclOLD write SetSomIclOLD;
    property OLD_IndOct: Char read GetIndOctOLD write SetIndOctOLD;
    property OLD_IndSpr: Char read GetIndSprOLD write SetIndSprOLD;
    property OLD_CodEnd: string read GetCodEndOLD write SetCodEndOLD;
    property OLD_PesBru: Double read GetPesBruOLD write SetPesBruOLD;
    property OLD_PesLiq: Double read GetPesLiqOLD write SetPesLiqOLD;
    property OLD_TolPes: Double read GetTolPesOLD write SetTolPesOLD;
    property OLD_VolPro: Double read GetVolProOLD write SetVolProOLD;
    property OLD_RotAnx: Integer read GetRotAnxOLD write SetRotAnxOLD;
    property OLD_NumAnx: Integer read GetNumAnxOLD write SetNumAnxOLD;
    property OLD_ProImp: Integer read GetProImpOLD write SetProImpOLD;
    property OLD_BasRec: Char read GetBasRecOLD write SetBasRecOLD;
    property OLD_CodAnp: Integer read GetCodAnpOLD write SetCodAnpOLD;
    property OLD_ProEpe: Integer read GetProEpeOLD write SetProEpeOLD;
    property OLD_CtrVis: Char read GetCtrVisOLD write SetCtrVisOLD;
    property OLD_DatVis: TDate read GetDatVisOLD write SetDatVisOLD;
    property OLD_HorVis: Integer read GetHorVisOLD write SetHorVisOLD;
    property OLD_IndFrt: Char read GetIndFrtOLD write SetIndFrtOLD;
    property OLD_FrtEqp: Char read GetFrtEqpOLD write SetFrtEqpOLD;
    property OLD_GrpFrt: string read GetGrpFrtOLD write SetGrpFrtOLD;
    property OLD_ConEne: Integer read GetConEneOLD write SetConEneOLD;
    property OLD_ConAgu: Integer read GetConAguOLD write SetConAguOLD;
    property OLD_TipLig: Integer read GetTipLigOLD write SetTipLigOLD;
    property OLD_GruTen: Integer read GetGruTenOLD write SetGruTenOLD;
    property OLD_TipMfr: Char read GetTipMfrOLD write SetTipMfrOLD;
    property OLD_UniFrt: Char read GetUniFrtOLD write SetUniFrtOLD;
    property OLD_CstIpi: string read GetCstIpiOLD write SetCstIpiOLD;
    property OLD_CstPis: string read GetCstPisOLD write SetCstPisOLD;
    property OLD_CstCof: string read GetCstCofOLD write SetCstCofOLD;
    property OLD_TprPis: string read GetTprPisOLD write SetTprPisOLD;
    property OLD_TprCof: string read GetTprCofOLD write SetTprCofOLD;
    property OLD_TprIpi: string read GetTprIpiOLD write SetTprIpiOLD;
    property OLD_RegTri: Char read GetRegTriOLD write SetRegTriOLD;
    property OLD_IdePro: string read GetIdeProOLD write SetIdeProOLD;
    property OLD_QtdAfe: Integer read GetQtdAfeOLD write SetQtdAfeOLD;
    property OLD_IndAfe: Char read GetIndAfeOLD write SetIndAfeOLD;
    property OLD_CstIpc: string read GetCstIpcOLD write SetCstIpcOLD;
    property OLD_CstPic: string read GetCstPicOLD write SetCstPicOLD;
    property OLD_CstCoc: string read GetCstCocOLD write SetCstCocOLD;
    property OLD_OriMer: Char read GetOriMerOLD write SetOriMerOLD;
    property OLD_NatPis: Integer read GetNatPisOLD write SetNatPisOLD;
    property OLD_NatCof: Integer read GetNatCofOLD write SetNatCofOLD;
    property OLD_LarPro: Double read GetLarProOLD write SetLarProOLD;
    property OLD_AltPro: Double read GetAltProOLD write SetAltProOLD;
    property OLD_ComPro: Double read GetComProOLD write SetComProOLD;
    property OLD_BasCre: Integer read GetBasCreOLD write SetBasCreOLD;
    property OLD_ProMon: Char read GetProMonOLD write SetProMonOLD;
    property OLD_ProEnt: Char read GetProEntOLD write SetProEntOLD;
    property OLD_VarPro: Char read GetVarProOLD write SetVarProOLD;
    property OLD_ProFol: Char read GetProFolOLD write SetProFolOLD;
    property OLD_ProVes: Char read GetProVesOLD write SetProVesOLD;
    property OLD_QtdVol: Integer read GetQtdVolOLD write SetQtdVolOLD;
    property OLD_ExiNfe: Char read GetExiNfeOLD write SetExiNfeOLD;
    property OLD_PrzRec: Integer read GetPrzRecOLD write SetPrzRecOLD;
    property OLD_UniWms: string read GetUniWmsOLD write SetUniWmsOLD;
    property OLD_FinCrp: Integer read GetFinCrpOLD write SetFinCrpOLD;
    property OLD_FinCdp: Integer read GetFinCdpOLD write SetFinCdpOLD;
    property OLD_PerPim: Double read GetPerPimOLD write SetPerPimOLD;
    property OLD_PerCim: Double read GetPerCimOLD write SetPerCimOLD;
    property OLD_IteFis: string read GetIteFisOLD write SetIteFisOLD;
    property OLD_DesFis: string read GetDesFisOLD write SetDesFisOLD;
    property OLD_CodAgg: string read GetCodAggOLD write SetCodAggOLD;
    property OLD_ParCom: Char read GetParComOLD write SetParComOLD;
    property OLD_USU_CodMsg1: Integer read GetUSU_CodMsg1OLD write SetUSU_CodMsg1OLD;
    property OLD_USU_IndB2B: Char read GetUSU_IndB2BOLD write SetUSU_IndB2BOLD;
    property OLD_USU_IndEco: Char read GetUSU_IndEcoOLD write SetUSU_IndEcoOLD;
    property OLD_USU_IndPop: Char read GetUSU_IndPopOLD write SetUSU_IndPopOLD;
  end;

implementation

{ T075PRO }

constructor T075PRO.Create();
begin
  AddForeignKeys(['CodEmp','CodFam','UniMed','CodOri'], ['CodEmp','CodFam','UniMed','CodOri']);
  AddPrimaryKeys('CodEmp;CodPro');

  inherited Create('E075PRO');
end;

destructor T075PRO.Destroy();
begin
  inherited;
end;

function T075PRO.GetCodEmp: Integer;
begin
  Result := FCodEmp;
end;

procedure T075PRO.SetCodEmp(const pCodEmp: Integer);
begin
  FCodEmp := pCodEmp;

  CheckField('CodEmp');
end;

function T075PRO.GetCodPro: string;
begin
  Result := FCodPro;
end;

procedure T075PRO.SetCodPro(const pCodPro: string);
begin
  FCodPro := pCodPro;

  CheckField('CodPro');
end;

function T075PRO.GetDesPro: string;
begin
  Result := FDesPro;
end;

procedure T075PRO.SetDesPro(const pDesPro: string);
begin
  FDesPro := pDesPro;

  CheckField('DesPro');
end;

function T075PRO.GetCplPro: string;
begin
  Result := FCplPro;
end;

procedure T075PRO.SetCplPro(const pCplPro: string);
begin
  FCplPro := pCplPro;

  CheckField('CplPro');
end;

function T075PRO.GetDesNfv: string;
begin
  Result := FDesNfv;
end;

procedure T075PRO.SetDesNfv(const pDesNfv: string);
begin
  FDesNfv := pDesNfv;

  CheckField('DesNfv');
end;

function T075PRO.GetCodFam: string;
begin
  Result := FCodFam;
end;

procedure T075PRO.SetCodFam(const pCodFam: string);
begin
  FCodFam := pCodFam;

  CheckField('CodFam');
end;

function T075PRO.GetUniMed: string;
begin
  Result := FUniMed;
end;

procedure T075PRO.SetUniMed(const pUniMed: string);
begin
  FUniMed := pUniMed;

  CheckField('UniMed');
end;

function T075PRO.GetUniMe2: string;
begin
  Result := FUniMe2;
end;

procedure T075PRO.SetUniMe2(const pUniMe2: string);
begin
  FUniMe2 := pUniMe2;

  CheckField('UniMe2');
end;

function T075PRO.GetUniMe3: string;
begin
  Result := FUniMe3;
end;

procedure T075PRO.SetUniMe3(const pUniMe3: string);
begin
  FUniMe3 := pUniMe3;

  CheckField('UniMe3');
end;

function T075PRO.GetTipPro: Char;
begin
  Result := FTipPro;
end;

procedure T075PRO.SetTipPro(const pTipPro: Char);
begin
  FTipPro := pTipPro;

  CheckField('TipPro');
end;

function T075PRO.GetCodOri: string;
begin
  Result := FCodOri;
end;

procedure T075PRO.SetCodOri(const pCodOri: string);
begin
  FCodOri := pCodOri;

  CheckField('CodOri');
end;

function T075PRO.GetNumOri: Integer;
begin
  Result := FNumOri;
end;

procedure T075PRO.SetNumOri(const pNumOri: Integer);
begin
  FNumOri := pNumOri;

  CheckField('NumOri');
end;

function T075PRO.GetCodMdp: string;
begin
  Result := FCodMdp;
end;

procedure T075PRO.SetCodMdp(const pCodMdp: string);
begin
  FCodMdp := pCodMdp;

  CheckField('CodMdp');
end;

function T075PRO.GetCodMod: string;
begin
  Result := FCodMod;
end;

procedure T075PRO.SetCodMod(const pCodMod: string);
begin
  FCodMod := pCodMod;

  CheckField('CodMod');
end;

function T075PRO.GetCodRot: string;
begin
  Result := FCodRot;
end;

procedure T075PRO.SetCodRot(const pCodRot: string);
begin
  FCodRot := pCodRot;

  CheckField('CodRot');
end;

function T075PRO.GetCodAge: string;
begin
  Result := FCodAge;
end;

procedure T075PRO.SetCodAge(const pCodAge: string);
begin
  FCodAge := pCodAge;

  CheckField('CodAge');
end;

function T075PRO.GetCodAgp: string;
begin
  Result := FCodAgp;
end;

procedure T075PRO.SetCodAgp(const pCodAgp: string);
begin
  FCodAgp := pCodAgp;

  CheckField('CodAgp');
end;

function T075PRO.GetCodAgu: string;
begin
  Result := FCodAgu;
end;

procedure T075PRO.SetCodAgu(const pCodAgu: string);
begin
  FCodAgu := pCodAgu;

  CheckField('CodAgu');
end;

function T075PRO.GetCodAgc: string;
begin
  Result := FCodAgc;
end;

procedure T075PRO.SetCodAgc(const pCodAgc: string);
begin
  FCodAgc := pCodAgc;

  CheckField('CodAgc');
end;

function T075PRO.GetCodAgf: string;
begin
  Result := FCodAgf;
end;

procedure T075PRO.SetCodAgf(const pCodAgf: string);
begin
  FCodAgf := pCodAgf;

  CheckField('CodAgf');
end;

function T075PRO.GetCodClf: string;
begin
  Result := FCodClf;
end;

procedure T075PRO.SetCodClf(const pCodClf: string);
begin
  FCodClf := pCodClf;

  CheckField('CodClf');
end;

function T075PRO.GetCodStr: string;
begin
  Result := FCodStr;
end;

procedure T075PRO.SetCodStr(const pCodStr: string);
begin
  FCodStr := pCodStr;

  CheckField('CodStr');
end;

function T075PRO.GetPerIpi: Double;
begin
  Result := FPerIpi;
end;

procedure T075PRO.SetPerIpi(const pPerIpi: Double);
begin
  FPerIpi := pPerIpi;

  CheckField('PerIpi');
end;

function T075PRO.GetRecIpi: Char;
begin
  Result := FRecIpi;
end;

procedure T075PRO.SetRecIpi(const pRecIpi: Char);
begin
  FRecIpi := pRecIpi;

  CheckField('RecIpi');
end;

function T075PRO.GetTemIcm: Char;
begin
  Result := FTemIcm;
end;

procedure T075PRO.SetTemIcm(const pTemIcm: Char);
begin
  FTemIcm := pTemIcm;

  CheckField('TemIcm');
end;

function T075PRO.GetCodTic: string;
begin
  Result := FCodTic;
end;

procedure T075PRO.SetCodTic(const pCodTic: string);
begin
  FCodTic := pCodTic;

  CheckField('CodTic');
end;

function T075PRO.GetCodTrd: string;
begin
  Result := FCodTrd;
end;

procedure T075PRO.SetCodTrd(const pCodTrd: string);
begin
  FCodTrd := pCodTrd;

  CheckField('CodTrd');
end;

function T075PRO.GetCodTst: string;
begin
  Result := FCodTst;
end;

procedure T075PRO.SetCodTst(const pCodTst: string);
begin
  FCodTst := pCodTst;

  CheckField('CodTst');
end;

function T075PRO.GetCodStp: string;
begin
  Result := FCodStp;
end;

procedure T075PRO.SetCodStp(const pCodStp: string);
begin
  FCodStp := pCodStp;

  CheckField('CodStp');
end;

function T075PRO.GetCodStc: string;
begin
  Result := FCodStc;
end;

procedure T075PRO.SetCodStc(const pCodStc: string);
begin
  FCodStc := pCodStc;

  CheckField('CodStc');
end;

function T075PRO.GetRecIcm: Char;
begin
  Result := FRecIcm;
end;

procedure T075PRO.SetRecIcm(const pRecIcm: Char);
begin
  FRecIcm := pRecIcm;

  CheckField('RecIcm');
end;

function T075PRO.GetCodRoy: Integer;
begin
  Result := FCodRoy;
end;

procedure T075PRO.SetCodRoy(const pCodRoy: Integer);
begin
  FCodRoy := pCodRoy;

  CheckField('CodRoy');
end;

function T075PRO.GetQtdMlt: Double;
begin
  Result := FQtdMlt;
end;

procedure T075PRO.SetQtdMlt(const pQtdMlt: Double);
begin
  FQtdMlt := pQtdMlt;

  CheckField('QtdMlt');
end;

function T075PRO.GetQtdMin: Double;
begin
  Result := FQtdMin;
end;

procedure T075PRO.SetQtdMin(const pQtdMin: Double);
begin
  FQtdMin := pQtdMin;

  CheckField('QtdMin');
end;

function T075PRO.GetQtdMax: Double;
begin
  Result := FQtdMax;
end;

procedure T075PRO.SetQtdMax(const pQtdMax: Double);
begin
  FQtdMax := pQtdMax;

  CheckField('QtdMax');
end;

function T075PRO.GetQtdGop: Double;
begin
  Result := FQtdGop;
end;

procedure T075PRO.SetQtdGop(const pQtdGop: Double);
begin
  FQtdGop := pQtdGop;

  CheckField('QtdGop');
end;

function T075PRO.GetBxaOrp: Char;
begin
  Result := FBxaOrp;
end;

procedure T075PRO.SetBxaOrp(const pBxaOrp: Char);
begin
  FBxaOrp := pBxaOrp;

  CheckField('BxaOrp');
end;

function T075PRO.GetCodPr2: string;
begin
  Result := FCodPr2;
end;

procedure T075PRO.SetCodPr2(const pCodPr2: string);
begin
  FCodPr2 := pCodPr2;

  CheckField('CodPr2');
end;

function T075PRO.GetDerPr2: string;
begin
  Result := FDerPr2;
end;

procedure T075PRO.SetDerPr2(const pDerPr2: string);
begin
  FDerPr2 := pDerPr2;

  CheckField('DerPr2');
end;

function T075PRO.GetCodPr3: string;
begin
  Result := FCodPr3;
end;

procedure T075PRO.SetCodPr3(const pCodPr3: string);
begin
  FCodPr3 := pCodPr3;

  CheckField('CodPr3');
end;

function T075PRO.GetDerPr3: string;
begin
  Result := FDerPr3;
end;

procedure T075PRO.SetDerPr3(const pDerPr3: string);
begin
  FDerPr3 := pDerPr3;

  CheckField('DerPr3');
end;

function T075PRO.GetCodPr4: string;
begin
  Result := FCodPr4;
end;

procedure T075PRO.SetCodPr4(const pCodPr4: string);
begin
  FCodPr4 := pCodPr4;

  CheckField('CodPr4');
end;

function T075PRO.GetDerPr4: string;
begin
  Result := FDerPr4;
end;

procedure T075PRO.SetDerPr4(const pDerPr4: string);
begin
  FDerPr4 := pDerPr4;

  CheckField('DerPr4');
end;

function T075PRO.GetProStq: Char;
begin
  Result := FProStq;
end;

procedure T075PRO.SetProStq(const pProStq: Char);
begin
  FProStq := pProStq;

  CheckField('ProStq');
end;

function T075PRO.GetSitPro: Char;
begin
  Result := FSitPro;
end;

procedure T075PRO.SetSitPro(const pSitPro: Char);
begin
  FSitPro := pSitPro;

  CheckField('SitPro');
end;

function T075PRO.GetRotPro: Char;
begin
  Result := FRotPro;
end;

procedure T075PRO.SetRotPro(const pRotPro: Char);
begin
  FRotPro := pRotPro;

  CheckField('RotPro');
end;

function T075PRO.GetUsoCus: Char;
begin
  Result := FUsoCus;
end;

procedure T075PRO.SetUsoCus(const pUsoCus: Char);
begin
  FUsoCus := pUsoCus;

  CheckField('UsoCus');
end;

function T075PRO.GetIndMis: Char;
begin
  Result := FIndMis;
end;

procedure T075PRO.SetIndMis(const pIndMis: Char);
begin
  FIndMis := pIndMis;

  CheckField('IndMis');
end;

function T075PRO.GetIndVen: Char;
begin
  Result := FIndVen;
end;

procedure T075PRO.SetIndVen(const pIndVen: Char);
begin
  FIndVen := pIndVen;

  CheckField('IndVen');
end;

function T075PRO.GetIndCpr: Char;
begin
  Result := FIndCpr;
end;

procedure T075PRO.SetIndCpr(const pIndCpr: Char);
begin
  FIndCpr := pIndCpr;

  CheckField('IndCpr');
end;

function T075PRO.GetIndReq: Char;
begin
  Result := FIndReq;
end;

procedure T075PRO.SetIndReq(const pIndReq: Char);
begin
  FIndReq := pIndReq;

  CheckField('IndReq');
end;

function T075PRO.GetIndKit: Char;
begin
  Result := FIndKit;
end;

procedure T075PRO.SetIndKit(const pIndKit: Char);
begin
  FIndKit := pIndKit;

  CheckField('IndKit');
end;

function T075PRO.GetMatDir: Char;
begin
  Result := FMatDir;
end;

procedure T075PRO.SetMatDir(const pMatDir: Char);
begin
  FMatDir := pMatDir;

  CheckField('MatDir');
end;

function T075PRO.GetClaPro: Integer;
begin
  Result := FClaPro;
end;

procedure T075PRO.SetClaPro(const pClaPro: Integer);
begin
  FClaPro := pClaPro;

  CheckField('ClaPro');
end;

function T075PRO.GetIndPpc: Char;
begin
  Result := FIndPpc;
end;

procedure T075PRO.SetIndPpc(const pIndPpc: Char);
begin
  FIndPpc := pIndPpc;

  CheckField('IndPpc');
end;

function T075PRO.GetIndFpr: Char;
begin
  Result := FIndFpr;
end;

procedure T075PRO.SetIndFpr(const pIndFpr: Char);
begin
  FIndFpr := pIndFpr;

  CheckField('IndFpr');
end;

function T075PRO.GetCodNtg: Integer;
begin
  Result := FCodNtg;
end;

procedure T075PRO.SetCodNtg(const pCodNtg: Integer);
begin
  FCodNtg := pCodNtg;

  CheckField('CodNtg');
end;

function T075PRO.GetCriRat: Integer;
begin
  Result := FCriRat;
end;

procedure T075PRO.SetCriRat(const pCriRat: Integer);
begin
  FCriRat := pCriRat;

  CheckField('CriRat');
end;

function T075PRO.GetCtaRed: Integer;
begin
  Result := FCtaRed;
end;

procedure T075PRO.SetCtaRed(const pCtaRed: Integer);
begin
  FCtaRed := pCtaRed;

  CheckField('CtaRed');
end;

function T075PRO.GetCtaRcr: Integer;
begin
  Result := FCtaRcr;
end;

procedure T075PRO.SetCtaRcr(const pCtaRcr: Integer);
begin
  FCtaRcr := pCtaRcr;

  CheckField('CtaRcr');
end;

function T075PRO.GetCtaFdv: Integer;
begin
  Result := FCtaFdv;
end;

procedure T075PRO.SetCtaFdv(const pCtaFdv: Integer);
begin
  FCtaFdv := pCtaFdv;

  CheckField('CtaFdv');
end;

function T075PRO.GetCtaFcr: Integer;
begin
  Result := FCtaFcr;
end;

procedure T075PRO.SetCtaFcr(const pCtaFcr: Integer);
begin
  FCtaFcr := pCtaFcr;

  CheckField('CtaFcr');
end;

function T075PRO.GetUsuGer: Integer;
begin
  Result := FUsuGer;
end;

procedure T075PRO.SetUsuGer(const pUsuGer: Integer);
begin
  FUsuGer := pUsuGer;

  CheckField('UsuGer');
end;

function T075PRO.GetHorGer: Integer;
begin
  Result := FHorGer;
end;

procedure T075PRO.SetHorGer(const pHorGer: Integer);
begin
  FHorGer := pHorGer;

  CheckField('HorGer');
end;

function T075PRO.GetDatGer: TDate;
begin
  Result := FDatGer;
end;

procedure T075PRO.SetDatGer(const pDatGer: TDate);
begin
  FDatGer := pDatGer;

  CheckField('DatGer');
end;

function T075PRO.GetDepPad: string;
begin
  Result := FDepPad;
end;

procedure T075PRO.SetDepPad(const pDepPad: string);
begin
  FDepPad := pDepPad;

  CheckField('DepPad');
end;

function T075PRO.GetCtrVld: Char;
begin
  Result := FCtrVld;
end;

procedure T075PRO.SetCtrVld(const pCtrVld: Char);
begin
  FCtrVld := pCtrVld;

  CheckField('CtrVld');
end;

function T075PRO.GetCtrLot: Char;
begin
  Result := FCtrLot;
end;

procedure T075PRO.SetCtrLot(const pCtrLot: Char);
begin
  FCtrLot := pCtrLot;

  CheckField('CtrLot');
end;

function T075PRO.GetLotBas: Char;
begin
  Result := FLotBas;
end;

procedure T075PRO.SetLotBas(const pLotBas: Char);
begin
  FLotBas := pLotBas;

  CheckField('LotBas');
end;

function T075PRO.GetCtrSep: Char;
begin
  Result := FCtrSep;
end;

procedure T075PRO.SetCtrSep(const pCtrSep: Char);
begin
  FCtrSep := pCtrSep;

  CheckField('CtrSep');
end;

function T075PRO.GetQtdMve: Double;
begin
  Result := FQtdMve;
end;

procedure T075PRO.SetQtdMve(const pQtdMve: Double);
begin
  FQtdMve := pQtdMve;

  CheckField('QtdMve');
end;

function T075PRO.GetCodRef: string;
begin
  Result := FCodRef;
end;

procedure T075PRO.SetCodRef(const pCodRef: string);
begin
  FCodRef := pCodRef;

  CheckField('CodRef');
end;

function T075PRO.GetCodPin: string;
begin
  Result := FCodPin;
end;

procedure T075PRO.SetCodPin(const pCodPin: string);
begin
  FCodPin := pCodPin;

  CheckField('CodPin');
end;

function T075PRO.GetNotFor: Double;
begin
  Result := FNotFor;
end;

procedure T075PRO.SetNotFor(const pNotFor: Double);
begin
  FNotFor := pNotFor;

  CheckField('NotFor');
end;

function T075PRO.GetExgCcl: Char;
begin
  Result := FExgCcl;
end;

procedure T075PRO.SetExgCcl(const pExgCcl: Char);
begin
  FExgCcl := pExgCcl;

  CheckField('ExgCcl');
end;

function T075PRO.GetEmiGtr: Char;
begin
  Result := FEmiGtr;
end;

procedure T075PRO.SetEmiGtr(const pEmiGtr: Char);
begin
  FEmiGtr := pEmiGtr;

  CheckField('EmiGtr');
end;

function T075PRO.GetUsuAlt: Integer;
begin
  Result := FUsuAlt;
end;

procedure T075PRO.SetUsuAlt(const pUsuAlt: Integer);
begin
  FUsuAlt := pUsuAlt;

  CheckField('UsuAlt');
end;

function T075PRO.GetHorAlt: Integer;
begin
  Result := FHorAlt;
end;

procedure T075PRO.SetHorAlt(const pHorAlt: Integer);
begin
  FHorAlt := pHorAlt;

  CheckField('HorAlt');
end;

function T075PRO.GetDatAlt: TDate;
begin
  Result := FDatAlt;
end;

procedure T075PRO.SetDatAlt(const pDatAlt: TDate);
begin
  FDatAlt := pDatAlt;

  CheckField('DatAlt');
end;

function T075PRO.GetSomIim: Char;
begin
  Result := FSomIim;
end;

procedure T075PRO.SetSomIim(const pSomIim: Char);
begin
  FSomIim := pSomIim;

  CheckField('SomIim');
end;

function T075PRO.GetRecPis: Char;
begin
  Result := FRecPis;
end;

procedure T075PRO.SetRecPis(const pRecPis: Char);
begin
  FRecPis := pRecPis;

  CheckField('RecPis');
end;

function T075PRO.GetTriPis: Char;
begin
  Result := FTriPis;
end;

procedure T075PRO.SetTriPis(const pTriPis: Char);
begin
  FTriPis := pTriPis;

  CheckField('TriPis');
end;

function T075PRO.GetTriCof: Char;
begin
  Result := FTriCof;
end;

procedure T075PRO.SetTriCof(const pTriCof: Char);
begin
  FTriCof := pTriCof;

  CheckField('TriCof');
end;

function T075PRO.GetIndExp: Integer;
begin
  Result := FIndExp;
end;

procedure T075PRO.SetIndExp(const pIndExp: Integer);
begin
  FIndExp := pIndExp;

  CheckField('IndExp');
end;

function T075PRO.GetDatPal: TDate;
begin
  Result := FDatPal;
end;

procedure T075PRO.SetDatPal(const pDatPal: TDate);
begin
  FDatPal := pDatPal;

  CheckField('DatPal');
end;

function T075PRO.GetHorPal: Integer;
begin
  Result := FHorPal;
end;

procedure T075PRO.SetHorPal(const pHorPal: Integer);
begin
  FHorPal := pHorPal;

  CheckField('HorPal');
end;

function T075PRO.GetExpWms: Integer;
begin
  Result := FExpWms;
end;

procedure T075PRO.SetExpWms(const pExpWms: Integer);
begin
  FExpWms := pExpWms;

  CheckField('ExpWms');
end;

function T075PRO.GetTipInt: Integer;
begin
  Result := FTipInt;
end;

procedure T075PRO.SetTipInt(const pTipInt: Integer);
begin
  FTipInt := pTipInt;

  CheckField('TipInt');
end;

function T075PRO.GetCodFif: string;
begin
  Result := FCodFif;
end;

procedure T075PRO.SetCodFif(const pCodFif: string);
begin
  FCodFif := pCodFif;

  CheckField('CodFif');
end;

function T075PRO.GetCodFie: string;
begin
  Result := FCodFie;
end;

procedure T075PRO.SetCodFie(const pCodFie: string);
begin
  FCodFie := pCodFie;

  CheckField('CodFie');
end;

function T075PRO.GetCodFim: string;
begin
  Result := FCodFim;
end;

procedure T075PRO.SetCodFim(const pCodFim: string);
begin
  FCodFim := pCodFim;

  CheckField('CodFim');
end;

function T075PRO.GetRecCof: Char;
begin
  Result := FRecCof;
end;

procedure T075PRO.SetRecCof(const pRecCof: Char);
begin
  FRecCof := pRecCof;

  CheckField('RecCof');
end;

function T075PRO.GetSomIil: Char;
begin
  Result := FSomIil;
end;

procedure T075PRO.SetSomIil(const pSomIil: Char);
begin
  FSomIil := pSomIil;

  CheckField('SomIil');
end;

function T075PRO.GetCalDzf: Char;
begin
  Result := FCalDzf;
end;

procedure T075PRO.SetCalDzf(const pCalDzf: Char);
begin
  FCalDzf := pCalDzf;

  CheckField('CalDzf');
end;

function T075PRO.GetUniPad: string;
begin
  Result := FUniPad;
end;

procedure T075PRO.SetUniPad(const pUniPad: string);
begin
  FUniPad := pUniPad;

  CheckField('UniPad');
end;

function T075PRO.GetCodMar: string;
begin
  Result := FCodMar;
end;

procedure T075PRO.SetCodMar(const pCodMar: string);
begin
  FCodMar := pCodMar;

  CheckField('CodMar');
end;

function T075PRO.GetCodClc: string;
begin
  Result := FCodClc;
end;

procedure T075PRO.SetCodClc(const pCodClc: string);
begin
  FCodClc := pCodClc;

  CheckField('CodClc');
end;

function T075PRO.GetCodAgm: string;
begin
  Result := FCodAgm;
end;

procedure T075PRO.SetCodAgm(const pCodAgm: string);
begin
  FCodAgm := pCodAgm;

  CheckField('CodAgm');
end;

function T075PRO.GetFilPrd: Integer;
begin
  Result := FFilPrd;
end;

procedure T075PRO.SetFilPrd(const pFilPrd: Integer);
begin
  FFilPrd := pFilPrd;

  CheckField('FilPrd');
end;

function T075PRO.GetTolQmx: Double;
begin
  Result := FTolQmx;
end;

procedure T075PRO.SetTolQmx(const pTolQmx: Double);
begin
  FTolQmx := pTolQmx;

  CheckField('TolQmx');
end;

function T075PRO.GetGerOrp: Char;
begin
  Result := FGerOrp;
end;

procedure T075PRO.SetGerOrp(const pGerOrp: Char);
begin
  FGerOrp := pGerOrp;

  CheckField('GerOrp');
end;

function T075PRO.GetCodPdv: Integer;
begin
  Result := FCodPdv;
end;

procedure T075PRO.SetCodPdv(const pCodPdv: Integer);
begin
  FCodPdv := pCodPdv;

  CheckField('CodPdv');
end;

function T075PRO.GetPerIrf: Double;
begin
  Result := FPerIrf;
end;

procedure T075PRO.SetPerIrf(const pPerIrf: Double);
begin
  FPerIrf := pPerIrf;

  CheckField('PerIrf');
end;

function T075PRO.GetPerPis: Double;
begin
  Result := FPerPis;
end;

procedure T075PRO.SetPerPis(const pPerPis: Double);
begin
  FPerPis := pPerPis;

  CheckField('PerPis');
end;

function T075PRO.GetPerCof: Double;
begin
  Result := FPerCof;
end;

procedure T075PRO.SetPerCof(const pPerCof: Double);
begin
  FPerCof := pPerCof;

  CheckField('PerCof');
end;

function T075PRO.GetPerCsl: Double;
begin
  Result := FPerCsl;
end;

procedure T075PRO.SetPerCsl(const pPerCsl: Double);
begin
  FPerCsl := pPerCsl;

  CheckField('PerCsl');
end;

function T075PRO.GetPerOur: Double;
begin
  Result := FPerOur;
end;

procedure T075PRO.SetPerOur(const pPerOur: Double);
begin
  FPerOur := pPerOur;

  CheckField('PerOur');
end;

function T075PRO.GetConMon: Char;
begin
  Result := FConMon;
end;

procedure T075PRO.SetConMon(const pConMon: Char);
begin
  FConMon := pConMon;

  CheckField('ConMon');
end;

function T075PRO.GetPerFun: Double;
begin
  Result := FPerFun;
end;

procedure T075PRO.SetPerFun(const pPerFun: Double);
begin
  FPerFun := pPerFun;

  CheckField('PerFun');
end;

function T075PRO.GetCodAga: string;
begin
  Result := FCodAga;
end;

procedure T075PRO.SetCodAga(const pCodAga: string);
begin
  FCodAga := pCodAga;

  CheckField('CodAga');
end;

function T075PRO.GetSomIps: Char;
begin
  Result := FSomIps;
end;

procedure T075PRO.SetSomIps(const pSomIps: Char);
begin
  FSomIps := pSomIps;

  CheckField('SomIps');
end;

function T075PRO.GetSomIco: Char;
begin
  Result := FSomIco;
end;

procedure T075PRO.SetSomIco(const pSomIco: Char);
begin
  FSomIco := pSomIco;

  CheckField('SomIco');
end;

function T075PRO.GetSomIpl: Char;
begin
  Result := FSomIpl;
end;

procedure T075PRO.SetSomIpl(const pSomIpl: Char);
begin
  FSomIpl := pSomIpl;

  CheckField('SomIpl');
end;

function T075PRO.GetSomIcl: Char;
begin
  Result := FSomIcl;
end;

procedure T075PRO.SetSomIcl(const pSomIcl: Char);
begin
  FSomIcl := pSomIcl;

  CheckField('SomIcl');
end;

function T075PRO.GetIndOct: Char;
begin
  Result := FIndOct;
end;

procedure T075PRO.SetIndOct(const pIndOct: Char);
begin
  FIndOct := pIndOct;

  CheckField('IndOct');
end;

function T075PRO.GetIndSpr: Char;
begin
  Result := FIndSpr;
end;

procedure T075PRO.SetIndSpr(const pIndSpr: Char);
begin
  FIndSpr := pIndSpr;

  CheckField('IndSpr');
end;

function T075PRO.GetCodEnd: string;
begin
  Result := FCodEnd;
end;

procedure T075PRO.SetCodEnd(const pCodEnd: string);
begin
  FCodEnd := pCodEnd;

  CheckField('CodEnd');
end;

function T075PRO.GetPesBru: Double;
begin
  Result := FPesBru;
end;

procedure T075PRO.SetPesBru(const pPesBru: Double);
begin
  FPesBru := pPesBru;

  CheckField('PesBru');
end;

function T075PRO.GetPesLiq: Double;
begin
  Result := FPesLiq;
end;

procedure T075PRO.SetPesLiq(const pPesLiq: Double);
begin
  FPesLiq := pPesLiq;

  CheckField('PesLiq');
end;

function T075PRO.GetTolPes: Double;
begin
  Result := FTolPes;
end;

procedure T075PRO.SetTolPes(const pTolPes: Double);
begin
  FTolPes := pTolPes;

  CheckField('TolPes');
end;

function T075PRO.GetVolPro: Double;
begin
  Result := FVolPro;
end;

procedure T075PRO.SetVolPro(const pVolPro: Double);
begin
  FVolPro := pVolPro;

  CheckField('VolPro');
end;

function T075PRO.GetRotAnx: Integer;
begin
  Result := FRotAnx;
end;

procedure T075PRO.SetRotAnx(const pRotAnx: Integer);
begin
  FRotAnx := pRotAnx;

  CheckField('RotAnx');
end;

function T075PRO.GetNumAnx: Integer;
begin
  Result := FNumAnx;
end;

procedure T075PRO.SetNumAnx(const pNumAnx: Integer);
begin
  FNumAnx := pNumAnx;

  CheckField('NumAnx');
end;

function T075PRO.GetProImp: Integer;
begin
  Result := FProImp;
end;

procedure T075PRO.SetProImp(const pProImp: Integer);
begin
  FProImp := pProImp;

  CheckField('ProImp');
end;

function T075PRO.GetBasRec: Char;
begin
  Result := FBasRec;
end;

procedure T075PRO.SetBasRec(const pBasRec: Char);
begin
  FBasRec := pBasRec;

  CheckField('BasRec');
end;

function T075PRO.GetCodAnp: Integer;
begin
  Result := FCodAnp;
end;

procedure T075PRO.SetCodAnp(const pCodAnp: Integer);
begin
  FCodAnp := pCodAnp;

  CheckField('CodAnp');
end;

function T075PRO.GetProEpe: Integer;
begin
  Result := FProEpe;
end;

procedure T075PRO.SetProEpe(const pProEpe: Integer);
begin
  FProEpe := pProEpe;

  CheckField('ProEpe');
end;

function T075PRO.GetCtrVis: Char;
begin
  Result := FCtrVis;
end;

procedure T075PRO.SetCtrVis(const pCtrVis: Char);
begin
  FCtrVis := pCtrVis;

  CheckField('CtrVis');
end;

function T075PRO.GetDatVis: TDate;
begin
  Result := FDatVis;
end;

procedure T075PRO.SetDatVis(const pDatVis: TDate);
begin
  FDatVis := pDatVis;

  CheckField('DatVis');
end;

function T075PRO.GetHorVis: Integer;
begin
  Result := FHorVis;
end;

procedure T075PRO.SetHorVis(const pHorVis: Integer);
begin
  FHorVis := pHorVis;

  CheckField('HorVis');
end;

function T075PRO.GetIndFrt: Char;
begin
  Result := FIndFrt;
end;

procedure T075PRO.SetIndFrt(const pIndFrt: Char);
begin
  FIndFrt := pIndFrt;

  CheckField('IndFrt');
end;

function T075PRO.GetFrtEqp: Char;
begin
  Result := FFrtEqp;
end;

procedure T075PRO.SetFrtEqp(const pFrtEqp: Char);
begin
  FFrtEqp := pFrtEqp;

  CheckField('FrtEqp');
end;

function T075PRO.GetGrpFrt: string;
begin
  Result := FGrpFrt;
end;

procedure T075PRO.SetGrpFrt(const pGrpFrt: string);
begin
  FGrpFrt := pGrpFrt;

  CheckField('GrpFrt');
end;

function T075PRO.GetConEne: Integer;
begin
  Result := FConEne;
end;

procedure T075PRO.SetConEne(const pConEne: Integer);
begin
  FConEne := pConEne;

  CheckField('ConEne');
end;

function T075PRO.GetConAgu: Integer;
begin
  Result := FConAgu;
end;

procedure T075PRO.SetConAgu(const pConAgu: Integer);
begin
  FConAgu := pConAgu;

  CheckField('ConAgu');
end;

function T075PRO.GetTipLig: Integer;
begin
  Result := FTipLig;
end;

procedure T075PRO.SetTipLig(const pTipLig: Integer);
begin
  FTipLig := pTipLig;

  CheckField('TipLig');
end;

function T075PRO.GetGruTen: Integer;
begin
  Result := FGruTen;
end;

procedure T075PRO.SetGruTen(const pGruTen: Integer);
begin
  FGruTen := pGruTen;

  CheckField('GruTen');
end;

function T075PRO.GetTipMfr: Char;
begin
  Result := FTipMfr;
end;

procedure T075PRO.SetTipMfr(const pTipMfr: Char);
begin
  FTipMfr := pTipMfr;

  CheckField('TipMfr');
end;

function T075PRO.GetUniFrt: Char;
begin
  Result := FUniFrt;
end;

procedure T075PRO.SetUniFrt(const pUniFrt: Char);
begin
  FUniFrt := pUniFrt;

  CheckField('UniFrt');
end;

function T075PRO.GetCstIpi: string;
begin
  Result := FCstIpi;
end;

procedure T075PRO.SetCstIpi(const pCstIpi: string);
begin
  FCstIpi := pCstIpi;

  CheckField('CstIpi');
end;

function T075PRO.GetCstPis: string;
begin
  Result := FCstPis;
end;

procedure T075PRO.SetCstPis(const pCstPis: string);
begin
  FCstPis := pCstPis;

  CheckField('CstPis');
end;

function T075PRO.GetCstCof: string;
begin
  Result := FCstCof;
end;

procedure T075PRO.SetCstCof(const pCstCof: string);
begin
  FCstCof := pCstCof;

  CheckField('CstCof');
end;

function T075PRO.GetTprPis: string;
begin
  Result := FTprPis;
end;

procedure T075PRO.SetTprPis(const pTprPis: string);
begin
  FTprPis := pTprPis;

  CheckField('TprPis');
end;

function T075PRO.GetTprCof: string;
begin
  Result := FTprCof;
end;

procedure T075PRO.SetTprCof(const pTprCof: string);
begin
  FTprCof := pTprCof;

  CheckField('TprCof');
end;

function T075PRO.GetTprIpi: string;
begin
  Result := FTprIpi;
end;

procedure T075PRO.SetTprIpi(const pTprIpi: string);
begin
  FTprIpi := pTprIpi;

  CheckField('TprIpi');
end;

function T075PRO.GetRegTri: Char;
begin
  Result := FRegTri;
end;

procedure T075PRO.SetRegTri(const pRegTri: Char);
begin
  FRegTri := pRegTri;

  CheckField('RegTri');
end;

function T075PRO.GetIdePro: string;
begin
  Result := FIdePro;
end;

procedure T075PRO.SetIdePro(const pIdePro: string);
begin
  FIdePro := pIdePro;

  CheckField('IdePro');
end;

function T075PRO.GetQtdAfe: Integer;
begin
  Result := FQtdAfe;
end;

procedure T075PRO.SetQtdAfe(const pQtdAfe: Integer);
begin
  FQtdAfe := pQtdAfe;

  CheckField('QtdAfe');
end;

function T075PRO.GetIndAfe: Char;
begin
  Result := FIndAfe;
end;

procedure T075PRO.SetIndAfe(const pIndAfe: Char);
begin
  FIndAfe := pIndAfe;

  CheckField('IndAfe');
end;

function T075PRO.GetCstIpc: string;
begin
  Result := FCstIpc;
end;

procedure T075PRO.SetCstIpc(const pCstIpc: string);
begin
  FCstIpc := pCstIpc;

  CheckField('CstIpc');
end;

function T075PRO.GetCstPic: string;
begin
  Result := FCstPic;
end;

procedure T075PRO.SetCstPic(const pCstPic: string);
begin
  FCstPic := pCstPic;

  CheckField('CstPic');
end;

function T075PRO.GetCstCoc: string;
begin
  Result := FCstCoc;
end;

procedure T075PRO.SetCstCoc(const pCstCoc: string);
begin
  FCstCoc := pCstCoc;

  CheckField('CstCoc');
end;

function T075PRO.GetOriMer: Char;
begin
  Result := FOriMer;
end;

procedure T075PRO.SetOriMer(const pOriMer: Char);
begin
  FOriMer := pOriMer;

  CheckField('OriMer');
end;

function T075PRO.GetNatPis: Integer;
begin
  Result := FNatPis;
end;

procedure T075PRO.SetNatPis(const pNatPis: Integer);
begin
  FNatPis := pNatPis;

  CheckField('NatPis');
end;

function T075PRO.GetNatCof: Integer;
begin
  Result := FNatCof;
end;

procedure T075PRO.SetNatCof(const pNatCof: Integer);
begin
  FNatCof := pNatCof;

  CheckField('NatCof');
end;

function T075PRO.GetLarPro: Double;
begin
  Result := FLarPro;
end;

procedure T075PRO.SetLarPro(const pLarPro: Double);
begin
  FLarPro := pLarPro;

  CheckField('LarPro');
end;

function T075PRO.GetAltPro: Double;
begin
  Result := FAltPro;
end;

procedure T075PRO.SetAltPro(const pAltPro: Double);
begin
  FAltPro := pAltPro;

  CheckField('AltPro');
end;

function T075PRO.GetComPro: Double;
begin
  Result := FComPro;
end;

procedure T075PRO.SetComPro(const pComPro: Double);
begin
  FComPro := pComPro;

  CheckField('ComPro');
end;

function T075PRO.GetBasCre: Integer;
begin
  Result := FBasCre;
end;

procedure T075PRO.SetBasCre(const pBasCre: Integer);
begin
  FBasCre := pBasCre;

  CheckField('BasCre');
end;

function T075PRO.GetProMon: Char;
begin
  Result := FProMon;
end;

procedure T075PRO.SetProMon(const pProMon: Char);
begin
  FProMon := pProMon;

  CheckField('ProMon');
end;

function T075PRO.GetProEnt: Char;
begin
  Result := FProEnt;
end;

procedure T075PRO.SetProEnt(const pProEnt: Char);
begin
  FProEnt := pProEnt;

  CheckField('ProEnt');
end;

function T075PRO.GetVarPro: Char;
begin
  Result := FVarPro;
end;

procedure T075PRO.SetVarPro(const pVarPro: Char);
begin
  FVarPro := pVarPro;

  CheckField('VarPro');
end;

function T075PRO.GetProFol: Char;
begin
  Result := FProFol;
end;

procedure T075PRO.SetProFol(const pProFol: Char);
begin
  FProFol := pProFol;

  CheckField('ProFol');
end;

function T075PRO.GetProVes: Char;
begin
  Result := FProVes;
end;

procedure T075PRO.SetProVes(const pProVes: Char);
begin
  FProVes := pProVes;

  CheckField('ProVes');
end;

function T075PRO.GetQtdVol: Integer;
begin
  Result := FQtdVol;
end;

procedure T075PRO.SetQtdVol(const pQtdVol: Integer);
begin
  FQtdVol := pQtdVol;

  CheckField('QtdVol');
end;

function T075PRO.GetExiNfe: Char;
begin
  Result := FExiNfe;
end;

procedure T075PRO.SetExiNfe(const pExiNfe: Char);
begin
  FExiNfe := pExiNfe;

  CheckField('ExiNfe');
end;

function T075PRO.GetPrzRec: Integer;
begin
  Result := FPrzRec;
end;

procedure T075PRO.SetPrzRec(const pPrzRec: Integer);
begin
  FPrzRec := pPrzRec;

  CheckField('PrzRec');
end;

function T075PRO.GetUniWms: string;
begin
  Result := FUniWms;
end;

procedure T075PRO.SetUniWms(const pUniWms: string);
begin
  FUniWms := pUniWms;

  CheckField('UniWms');
end;

function T075PRO.GetFinCrp: Integer;
begin
  Result := FFinCrp;
end;

procedure T075PRO.SetFinCrp(const pFinCrp: Integer);
begin
  FFinCrp := pFinCrp;

  CheckField('FinCrp');
end;

function T075PRO.GetFinCdp: Integer;
begin
  Result := FFinCdp;
end;

procedure T075PRO.SetFinCdp(const pFinCdp: Integer);
begin
  FFinCdp := pFinCdp;

  CheckField('FinCdp');
end;

function T075PRO.GetPerPim: Double;
begin
  Result := FPerPim;
end;

procedure T075PRO.SetPerPim(const pPerPim: Double);
begin
  FPerPim := pPerPim;

  CheckField('PerPim');
end;

function T075PRO.GetPerCim: Double;
begin
  Result := FPerCim;
end;

procedure T075PRO.SetPerCim(const pPerCim: Double);
begin
  FPerCim := pPerCim;

  CheckField('PerCim');
end;

function T075PRO.GetIteFis: string;
begin
  Result := FIteFis;
end;

procedure T075PRO.SetIteFis(const pIteFis: string);
begin
  FIteFis := pIteFis;

  CheckField('IteFis');
end;

function T075PRO.GetDesFis: string;
begin
  Result := FDesFis;
end;

procedure T075PRO.SetDesFis(const pDesFis: string);
begin
  FDesFis := pDesFis;

  CheckField('DesFis');
end;

function T075PRO.GetCodAgg: string;
begin
  Result := FCodAgg;
end;

procedure T075PRO.SetCodAgg(const pCodAgg: string);
begin
  FCodAgg := pCodAgg;

  CheckField('CodAgg');
end;

function T075PRO.GetParCom: Char;
begin
  Result := FParCom;
end;

procedure T075PRO.SetParCom(const pParCom: Char);
begin
  FParCom := pParCom;

  CheckField('ParCom');
end;

function T075PRO.GetUSU_CodMsg1: Integer;
begin
  Result := FUSU_CodMsg1;
end;

procedure T075PRO.SetUSU_CodMsg1(const pUSU_CodMsg1: Integer);
begin
  FUSU_CodMsg1 := pUSU_CodMsg1;

  CheckField('USU_CodMsg1');
end;

function T075PRO.GetUSU_IndB2B: Char;
begin
  Result := FUSU_IndB2B;
end;

procedure T075PRO.SetUSU_IndB2B(const pUSU_IndB2B: Char);
begin
  FUSU_IndB2B := pUSU_IndB2B;

  CheckField('USU_IndB2B');
end;

function T075PRO.GetUSU_IndEco: Char;
begin
  Result := FUSU_IndEco;
end;

procedure T075PRO.SetUSU_IndEco(const pUSU_IndEco: Char);
begin
  FUSU_IndEco := pUSU_IndEco;

  CheckField('USU_IndEco');
end;

function T075PRO.GetUSU_IndPop: Char;
begin
  Result := FUSU_IndPop;
end;

procedure T075PRO.SetUSU_IndPop(const pUSU_IndPop: Char);
begin
  FUSU_IndPop := pUSU_IndPop;

  CheckField('USU_IndPop');
end;

function T075PRO.GetCodEmpOLD: Integer;
begin
  Result := FCodEmpOLD;
end;

procedure T075PRO.SetCodEmpOLD(const pCodEmp: Integer);
begin
  FCodEmpOLD := pCodEmp;
end;

function T075PRO.GetCodProOLD: string;
begin
  Result := FCodProOLD;
end;

procedure T075PRO.SetCodProOLD(const pCodPro: string);
begin
  FCodProOLD := pCodPro;
end;

function T075PRO.GetDesProOLD: string;
begin
  Result := FDesProOLD;
end;

procedure T075PRO.SetDesProOLD(const pDesPro: string);
begin
  FDesProOLD := pDesPro;
end;

function T075PRO.GetCplProOLD: string;
begin
  Result := FCplProOLD;
end;

procedure T075PRO.SetCplProOLD(const pCplPro: string);
begin
  FCplProOLD := pCplPro;
end;

function T075PRO.GetDesNfvOLD: string;
begin
  Result := FDesNfvOLD;
end;

procedure T075PRO.SetDesNfvOLD(const pDesNfv: string);
begin
  FDesNfvOLD := pDesNfv;
end;

function T075PRO.GetCodFamOLD: string;
begin
  Result := FCodFamOLD;
end;

procedure T075PRO.SetCodFamOLD(const pCodFam: string);
begin
  FCodFamOLD := pCodFam;
end;

function T075PRO.GetUniMedOLD: string;
begin
  Result := FUniMedOLD;
end;

procedure T075PRO.SetUniMedOLD(const pUniMed: string);
begin
  FUniMedOLD := pUniMed;
end;

function T075PRO.GetUniMe2OLD: string;
begin
  Result := FUniMe2OLD;
end;

procedure T075PRO.SetUniMe2OLD(const pUniMe2: string);
begin
  FUniMe2OLD := pUniMe2;
end;

function T075PRO.GetUniMe3OLD: string;
begin
  Result := FUniMe3OLD;
end;

procedure T075PRO.SetUniMe3OLD(const pUniMe3: string);
begin
  FUniMe3OLD := pUniMe3;
end;

function T075PRO.GetTipProOLD: Char;
begin
  Result := FTipProOLD;
end;

procedure T075PRO.SetTipProOLD(const pTipPro: Char);
begin
  FTipProOLD := pTipPro;
end;

function T075PRO.GetCodOriOLD: string;
begin
  Result := FCodOriOLD;
end;

procedure T075PRO.SetCodOriOLD(const pCodOri: string);
begin
  FCodOriOLD := pCodOri;
end;

function T075PRO.GetNumOriOLD: Integer;
begin
  Result := FNumOriOLD;
end;

procedure T075PRO.SetNumOriOLD(const pNumOri: Integer);
begin
  FNumOriOLD := pNumOri;
end;

function T075PRO.GetCodMdpOLD: string;
begin
  Result := FCodMdpOLD;
end;

procedure T075PRO.SetCodMdpOLD(const pCodMdp: string);
begin
  FCodMdpOLD := pCodMdp;
end;

function T075PRO.GetCodModOLD: string;
begin
  Result := FCodModOLD;
end;

procedure T075PRO.SetCodModOLD(const pCodMod: string);
begin
  FCodModOLD := pCodMod;
end;

function T075PRO.GetCodRotOLD: string;
begin
  Result := FCodRotOLD;
end;

procedure T075PRO.SetCodRotOLD(const pCodRot: string);
begin
  FCodRotOLD := pCodRot;
end;

function T075PRO.GetCodAgeOLD: string;
begin
  Result := FCodAgeOLD;
end;

procedure T075PRO.SetCodAgeOLD(const pCodAge: string);
begin
  FCodAgeOLD := pCodAge;
end;

function T075PRO.GetCodAgpOLD: string;
begin
  Result := FCodAgpOLD;
end;

procedure T075PRO.SetCodAgpOLD(const pCodAgp: string);
begin
  FCodAgpOLD := pCodAgp;
end;

function T075PRO.GetCodAguOLD: string;
begin
  Result := FCodAguOLD;
end;

procedure T075PRO.SetCodAguOLD(const pCodAgu: string);
begin
  FCodAguOLD := pCodAgu;
end;

function T075PRO.GetCodAgcOLD: string;
begin
  Result := FCodAgcOLD;
end;

procedure T075PRO.SetCodAgcOLD(const pCodAgc: string);
begin
  FCodAgcOLD := pCodAgc;
end;

function T075PRO.GetCodAgfOLD: string;
begin
  Result := FCodAgfOLD;
end;

procedure T075PRO.SetCodAgfOLD(const pCodAgf: string);
begin
  FCodAgfOLD := pCodAgf;
end;

function T075PRO.GetCodClfOLD: string;
begin
  Result := FCodClfOLD;
end;

procedure T075PRO.SetCodClfOLD(const pCodClf: string);
begin
  FCodClfOLD := pCodClf;
end;

function T075PRO.GetCodStrOLD: string;
begin
  Result := FCodStrOLD;
end;

procedure T075PRO.SetCodStrOLD(const pCodStr: string);
begin
  FCodStrOLD := pCodStr;
end;

function T075PRO.GetPerIpiOLD: Double;
begin
  Result := FPerIpiOLD;
end;

procedure T075PRO.SetPerIpiOLD(const pPerIpi: Double);
begin
  FPerIpiOLD := pPerIpi;
end;

function T075PRO.GetRecIpiOLD: Char;
begin
  Result := FRecIpiOLD;
end;

procedure T075PRO.SetRecIpiOLD(const pRecIpi: Char);
begin
  FRecIpiOLD := pRecIpi;
end;

function T075PRO.GetTemIcmOLD: Char;
begin
  Result := FTemIcmOLD;
end;

procedure T075PRO.SetTemIcmOLD(const pTemIcm: Char);
begin
  FTemIcmOLD := pTemIcm;
end;

function T075PRO.GetCodTicOLD: string;
begin
  Result := FCodTicOLD;
end;

procedure T075PRO.SetCodTicOLD(const pCodTic: string);
begin
  FCodTicOLD := pCodTic;
end;

function T075PRO.GetCodTrdOLD: string;
begin
  Result := FCodTrdOLD;
end;

procedure T075PRO.SetCodTrdOLD(const pCodTrd: string);
begin
  FCodTrdOLD := pCodTrd;
end;

function T075PRO.GetCodTstOLD: string;
begin
  Result := FCodTstOLD;
end;

procedure T075PRO.SetCodTstOLD(const pCodTst: string);
begin
  FCodTstOLD := pCodTst;
end;

function T075PRO.GetCodStpOLD: string;
begin
  Result := FCodStpOLD;
end;

procedure T075PRO.SetCodStpOLD(const pCodStp: string);
begin
  FCodStpOLD := pCodStp;
end;

function T075PRO.GetCodStcOLD: string;
begin
  Result := FCodStcOLD;
end;

procedure T075PRO.SetCodStcOLD(const pCodStc: string);
begin
  FCodStcOLD := pCodStc;
end;

function T075PRO.GetRecIcmOLD: Char;
begin
  Result := FRecIcmOLD;
end;

procedure T075PRO.SetRecIcmOLD(const pRecIcm: Char);
begin
  FRecIcmOLD := pRecIcm;
end;

function T075PRO.GetCodRoyOLD: Integer;
begin
  Result := FCodRoyOLD;
end;

procedure T075PRO.SetCodRoyOLD(const pCodRoy: Integer);
begin
  FCodRoyOLD := pCodRoy;
end;

function T075PRO.GetQtdMltOLD: Double;
begin
  Result := FQtdMltOLD;
end;

procedure T075PRO.SetQtdMltOLD(const pQtdMlt: Double);
begin
  FQtdMltOLD := pQtdMlt;
end;

function T075PRO.GetQtdMinOLD: Double;
begin
  Result := FQtdMinOLD;
end;

procedure T075PRO.SetQtdMinOLD(const pQtdMin: Double);
begin
  FQtdMinOLD := pQtdMin;
end;

function T075PRO.GetQtdMaxOLD: Double;
begin
  Result := FQtdMaxOLD;
end;

procedure T075PRO.SetQtdMaxOLD(const pQtdMax: Double);
begin
  FQtdMaxOLD := pQtdMax;
end;

function T075PRO.GetQtdGopOLD: Double;
begin
  Result := FQtdGopOLD;
end;

procedure T075PRO.SetQtdGopOLD(const pQtdGop: Double);
begin
  FQtdGopOLD := pQtdGop;
end;

function T075PRO.GetBxaOrpOLD: Char;
begin
  Result := FBxaOrpOLD;
end;

procedure T075PRO.SetBxaOrpOLD(const pBxaOrp: Char);
begin
  FBxaOrpOLD := pBxaOrp;
end;

function T075PRO.GetCodPr2OLD: string;
begin
  Result := FCodPr2OLD;
end;

procedure T075PRO.SetCodPr2OLD(const pCodPr2: string);
begin
  FCodPr2OLD := pCodPr2;
end;

function T075PRO.GetDerPr2OLD: string;
begin
  Result := FDerPr2OLD;
end;

procedure T075PRO.SetDerPr2OLD(const pDerPr2: string);
begin
  FDerPr2OLD := pDerPr2;
end;

function T075PRO.GetCodPr3OLD: string;
begin
  Result := FCodPr3OLD;
end;

procedure T075PRO.SetCodPr3OLD(const pCodPr3: string);
begin
  FCodPr3OLD := pCodPr3;
end;

function T075PRO.GetDerPr3OLD: string;
begin
  Result := FDerPr3OLD;
end;

procedure T075PRO.SetDerPr3OLD(const pDerPr3: string);
begin
  FDerPr3OLD := pDerPr3;
end;

function T075PRO.GetCodPr4OLD: string;
begin
  Result := FCodPr4OLD;
end;

procedure T075PRO.SetCodPr4OLD(const pCodPr4: string);
begin
  FCodPr4OLD := pCodPr4;
end;

function T075PRO.GetDerPr4OLD: string;
begin
  Result := FDerPr4OLD;
end;

procedure T075PRO.SetDerPr4OLD(const pDerPr4: string);
begin
  FDerPr4OLD := pDerPr4;
end;

function T075PRO.GetProStqOLD: Char;
begin
  Result := FProStqOLD;
end;

procedure T075PRO.SetProStqOLD(const pProStq: Char);
begin
  FProStqOLD := pProStq;
end;

function T075PRO.GetSitProOLD: Char;
begin
  Result := FSitProOLD;
end;

procedure T075PRO.SetSitProOLD(const pSitPro: Char);
begin
  FSitProOLD := pSitPro;
end;

function T075PRO.GetRotProOLD: Char;
begin
  Result := FRotProOLD;
end;

procedure T075PRO.SetRotProOLD(const pRotPro: Char);
begin
  FRotProOLD := pRotPro;
end;

function T075PRO.GetUsoCusOLD: Char;
begin
  Result := FUsoCusOLD;
end;

procedure T075PRO.SetUsoCusOLD(const pUsoCus: Char);
begin
  FUsoCusOLD := pUsoCus;
end;

function T075PRO.GetIndMisOLD: Char;
begin
  Result := FIndMisOLD;
end;

procedure T075PRO.SetIndMisOLD(const pIndMis: Char);
begin
  FIndMisOLD := pIndMis;
end;

function T075PRO.GetIndVenOLD: Char;
begin
  Result := FIndVenOLD;
end;

procedure T075PRO.SetIndVenOLD(const pIndVen: Char);
begin
  FIndVenOLD := pIndVen;
end;

function T075PRO.GetIndCprOLD: Char;
begin
  Result := FIndCprOLD;
end;

procedure T075PRO.SetIndCprOLD(const pIndCpr: Char);
begin
  FIndCprOLD := pIndCpr;
end;

function T075PRO.GetIndReqOLD: Char;
begin
  Result := FIndReqOLD;
end;

procedure T075PRO.SetIndReqOLD(const pIndReq: Char);
begin
  FIndReqOLD := pIndReq;
end;

function T075PRO.GetIndKitOLD: Char;
begin
  Result := FIndKitOLD;
end;

procedure T075PRO.SetIndKitOLD(const pIndKit: Char);
begin
  FIndKitOLD := pIndKit;
end;

function T075PRO.GetMatDirOLD: Char;
begin
  Result := FMatDirOLD;
end;

procedure T075PRO.SetMatDirOLD(const pMatDir: Char);
begin
  FMatDirOLD := pMatDir;
end;

function T075PRO.GetClaProOLD: Integer;
begin
  Result := FClaProOLD;
end;

procedure T075PRO.SetClaProOLD(const pClaPro: Integer);
begin
  FClaProOLD := pClaPro;
end;

function T075PRO.GetIndPpcOLD: Char;
begin
  Result := FIndPpcOLD;
end;

procedure T075PRO.SetIndPpcOLD(const pIndPpc: Char);
begin
  FIndPpcOLD := pIndPpc;
end;

function T075PRO.GetIndFprOLD: Char;
begin
  Result := FIndFprOLD;
end;

procedure T075PRO.SetIndFprOLD(const pIndFpr: Char);
begin
  FIndFprOLD := pIndFpr;
end;

function T075PRO.GetCodNtgOLD: Integer;
begin
  Result := FCodNtgOLD;
end;

procedure T075PRO.SetCodNtgOLD(const pCodNtg: Integer);
begin
  FCodNtgOLD := pCodNtg;
end;

function T075PRO.GetCriRatOLD: Integer;
begin
  Result := FCriRatOLD;
end;

procedure T075PRO.SetCriRatOLD(const pCriRat: Integer);
begin
  FCriRatOLD := pCriRat;
end;

function T075PRO.GetCtaRedOLD: Integer;
begin
  Result := FCtaRedOLD;
end;

procedure T075PRO.SetCtaRedOLD(const pCtaRed: Integer);
begin
  FCtaRedOLD := pCtaRed;
end;

function T075PRO.GetCtaRcrOLD: Integer;
begin
  Result := FCtaRcrOLD;
end;

procedure T075PRO.SetCtaRcrOLD(const pCtaRcr: Integer);
begin
  FCtaRcrOLD := pCtaRcr;
end;

function T075PRO.GetCtaFdvOLD: Integer;
begin
  Result := FCtaFdvOLD;
end;

procedure T075PRO.SetCtaFdvOLD(const pCtaFdv: Integer);
begin
  FCtaFdvOLD := pCtaFdv;
end;

function T075PRO.GetCtaFcrOLD: Integer;
begin
  Result := FCtaFcrOLD;
end;

procedure T075PRO.SetCtaFcrOLD(const pCtaFcr: Integer);
begin
  FCtaFcrOLD := pCtaFcr;
end;

function T075PRO.GetUsuGerOLD: Integer;
begin
  Result := FUsuGerOLD;
end;

procedure T075PRO.SetUsuGerOLD(const pUsuGer: Integer);
begin
  FUsuGerOLD := pUsuGer;
end;

function T075PRO.GetHorGerOLD: Integer;
begin
  Result := FHorGerOLD;
end;

procedure T075PRO.SetHorGerOLD(const pHorGer: Integer);
begin
  FHorGerOLD := pHorGer;
end;

function T075PRO.GetDatGerOLD: TDate;
begin
  Result := FDatGerOLD;
end;

procedure T075PRO.SetDatGerOLD(const pDatGer: TDate);
begin
  FDatGerOLD := pDatGer;
end;

function T075PRO.GetDepPadOLD: string;
begin
  Result := FDepPadOLD;
end;

procedure T075PRO.SetDepPadOLD(const pDepPad: string);
begin
  FDepPadOLD := pDepPad;
end;

function T075PRO.GetCtrVldOLD: Char;
begin
  Result := FCtrVldOLD;
end;

procedure T075PRO.SetCtrVldOLD(const pCtrVld: Char);
begin
  FCtrVldOLD := pCtrVld;
end;

function T075PRO.GetCtrLotOLD: Char;
begin
  Result := FCtrLotOLD;
end;

procedure T075PRO.SetCtrLotOLD(const pCtrLot: Char);
begin
  FCtrLotOLD := pCtrLot;
end;

function T075PRO.GetLotBasOLD: Char;
begin
  Result := FLotBasOLD;
end;

procedure T075PRO.SetLotBasOLD(const pLotBas: Char);
begin
  FLotBasOLD := pLotBas;
end;

function T075PRO.GetCtrSepOLD: Char;
begin
  Result := FCtrSepOLD;
end;

procedure T075PRO.SetCtrSepOLD(const pCtrSep: Char);
begin
  FCtrSepOLD := pCtrSep;
end;

function T075PRO.GetQtdMveOLD: Double;
begin
  Result := FQtdMveOLD;
end;

procedure T075PRO.SetQtdMveOLD(const pQtdMve: Double);
begin
  FQtdMveOLD := pQtdMve;
end;

function T075PRO.GetCodRefOLD: string;
begin
  Result := FCodRefOLD;
end;

procedure T075PRO.SetCodRefOLD(const pCodRef: string);
begin
  FCodRefOLD := pCodRef;
end;

function T075PRO.GetCodPinOLD: string;
begin
  Result := FCodPinOLD;
end;

procedure T075PRO.SetCodPinOLD(const pCodPin: string);
begin
  FCodPinOLD := pCodPin;
end;

function T075PRO.GetNotForOLD: Double;
begin
  Result := FNotForOLD;
end;

procedure T075PRO.SetNotForOLD(const pNotFor: Double);
begin
  FNotForOLD := pNotFor;
end;

function T075PRO.GetExgCclOLD: Char;
begin
  Result := FExgCclOLD;
end;

procedure T075PRO.SetExgCclOLD(const pExgCcl: Char);
begin
  FExgCclOLD := pExgCcl;
end;

function T075PRO.GetEmiGtrOLD: Char;
begin
  Result := FEmiGtrOLD;
end;

procedure T075PRO.SetEmiGtrOLD(const pEmiGtr: Char);
begin
  FEmiGtrOLD := pEmiGtr;
end;

function T075PRO.GetUsuAltOLD: Integer;
begin
  Result := FUsuAltOLD;
end;

procedure T075PRO.SetUsuAltOLD(const pUsuAlt: Integer);
begin
  FUsuAltOLD := pUsuAlt;
end;

function T075PRO.GetHorAltOLD: Integer;
begin
  Result := FHorAltOLD;
end;

procedure T075PRO.SetHorAltOLD(const pHorAlt: Integer);
begin
  FHorAltOLD := pHorAlt;
end;

function T075PRO.GetDatAltOLD: TDate;
begin
  Result := FDatAltOLD;
end;

procedure T075PRO.SetDatAltOLD(const pDatAlt: TDate);
begin
  FDatAltOLD := pDatAlt;
end;

function T075PRO.GetSomIimOLD: Char;
begin
  Result := FSomIimOLD;
end;

procedure T075PRO.SetSomIimOLD(const pSomIim: Char);
begin
  FSomIimOLD := pSomIim;
end;

function T075PRO.GetRecPisOLD: Char;
begin
  Result := FRecPisOLD;
end;

procedure T075PRO.SetRecPisOLD(const pRecPis: Char);
begin
  FRecPisOLD := pRecPis;
end;

function T075PRO.GetTriPisOLD: Char;
begin
  Result := FTriPisOLD;
end;

procedure T075PRO.SetTriPisOLD(const pTriPis: Char);
begin
  FTriPisOLD := pTriPis;
end;

function T075PRO.GetTriCofOLD: Char;
begin
  Result := FTriCofOLD;
end;

procedure T075PRO.SetTriCofOLD(const pTriCof: Char);
begin
  FTriCofOLD := pTriCof;
end;

function T075PRO.GetIndExpOLD: Integer;
begin
  Result := FIndExpOLD;
end;

procedure T075PRO.SetIndExpOLD(const pIndExp: Integer);
begin
  FIndExpOLD := pIndExp;
end;

function T075PRO.GetDatPalOLD: TDate;
begin
  Result := FDatPalOLD;
end;

procedure T075PRO.SetDatPalOLD(const pDatPal: TDate);
begin
  FDatPalOLD := pDatPal;
end;

function T075PRO.GetHorPalOLD: Integer;
begin
  Result := FHorPalOLD;
end;

procedure T075PRO.SetHorPalOLD(const pHorPal: Integer);
begin
  FHorPalOLD := pHorPal;
end;

function T075PRO.GetExpWmsOLD: Integer;
begin
  Result := FExpWmsOLD;
end;

procedure T075PRO.SetExpWmsOLD(const pExpWms: Integer);
begin
  FExpWmsOLD := pExpWms;
end;

function T075PRO.GetTipIntOLD: Integer;
begin
  Result := FTipIntOLD;
end;

procedure T075PRO.SetTipIntOLD(const pTipInt: Integer);
begin
  FTipIntOLD := pTipInt;
end;

function T075PRO.GetCodFifOLD: string;
begin
  Result := FCodFifOLD;
end;

procedure T075PRO.SetCodFifOLD(const pCodFif: string);
begin
  FCodFifOLD := pCodFif;
end;

function T075PRO.GetCodFieOLD: string;
begin
  Result := FCodFieOLD;
end;

procedure T075PRO.SetCodFieOLD(const pCodFie: string);
begin
  FCodFieOLD := pCodFie;
end;

function T075PRO.GetCodFimOLD: string;
begin
  Result := FCodFimOLD;
end;

procedure T075PRO.SetCodFimOLD(const pCodFim: string);
begin
  FCodFimOLD := pCodFim;
end;

function T075PRO.GetRecCofOLD: Char;
begin
  Result := FRecCofOLD;
end;

procedure T075PRO.SetRecCofOLD(const pRecCof: Char);
begin
  FRecCofOLD := pRecCof;
end;

function T075PRO.GetSomIilOLD: Char;
begin
  Result := FSomIilOLD;
end;

procedure T075PRO.SetSomIilOLD(const pSomIil: Char);
begin
  FSomIilOLD := pSomIil;
end;

function T075PRO.GetCalDzfOLD: Char;
begin
  Result := FCalDzfOLD;
end;

procedure T075PRO.SetCalDzfOLD(const pCalDzf: Char);
begin
  FCalDzfOLD := pCalDzf;
end;

function T075PRO.GetUniPadOLD: string;
begin
  Result := FUniPadOLD;
end;

procedure T075PRO.SetUniPadOLD(const pUniPad: string);
begin
  FUniPadOLD := pUniPad;
end;

function T075PRO.GetCodMarOLD: string;
begin
  Result := FCodMarOLD;
end;

procedure T075PRO.SetCodMarOLD(const pCodMar: string);
begin
  FCodMarOLD := pCodMar;
end;

function T075PRO.GetCodClcOLD: string;
begin
  Result := FCodClcOLD;
end;

procedure T075PRO.SetCodClcOLD(const pCodClc: string);
begin
  FCodClcOLD := pCodClc;
end;

function T075PRO.GetCodAgmOLD: string;
begin
  Result := FCodAgmOLD;
end;

procedure T075PRO.SetCodAgmOLD(const pCodAgm: string);
begin
  FCodAgmOLD := pCodAgm;
end;

function T075PRO.GetFilPrdOLD: Integer;
begin
  Result := FFilPrdOLD;
end;

procedure T075PRO.SetFilPrdOLD(const pFilPrd: Integer);
begin
  FFilPrdOLD := pFilPrd;
end;

function T075PRO.GetTolQmxOLD: Double;
begin
  Result := FTolQmxOLD;
end;

procedure T075PRO.SetTolQmxOLD(const pTolQmx: Double);
begin
  FTolQmxOLD := pTolQmx;
end;

function T075PRO.GetGerOrpOLD: Char;
begin
  Result := FGerOrpOLD;
end;

procedure T075PRO.SetGerOrpOLD(const pGerOrp: Char);
begin
  FGerOrpOLD := pGerOrp;
end;

function T075PRO.GetCodPdvOLD: Integer;
begin
  Result := FCodPdvOLD;
end;

procedure T075PRO.SetCodPdvOLD(const pCodPdv: Integer);
begin
  FCodPdvOLD := pCodPdv;
end;

function T075PRO.GetPerIrfOLD: Double;
begin
  Result := FPerIrfOLD;
end;

procedure T075PRO.SetPerIrfOLD(const pPerIrf: Double);
begin
  FPerIrfOLD := pPerIrf;
end;

function T075PRO.GetPerPisOLD: Double;
begin
  Result := FPerPisOLD;
end;

procedure T075PRO.SetPerPisOLD(const pPerPis: Double);
begin
  FPerPisOLD := pPerPis;
end;

function T075PRO.GetPerCofOLD: Double;
begin
  Result := FPerCofOLD;
end;

procedure T075PRO.SetPerCofOLD(const pPerCof: Double);
begin
  FPerCofOLD := pPerCof;
end;

function T075PRO.GetPerCslOLD: Double;
begin
  Result := FPerCslOLD;
end;

procedure T075PRO.SetPerCslOLD(const pPerCsl: Double);
begin
  FPerCslOLD := pPerCsl;
end;

function T075PRO.GetPerOurOLD: Double;
begin
  Result := FPerOurOLD;
end;

procedure T075PRO.SetPerOurOLD(const pPerOur: Double);
begin
  FPerOurOLD := pPerOur;
end;

function T075PRO.GetConMonOLD: Char;
begin
  Result := FConMonOLD;
end;

procedure T075PRO.SetConMonOLD(const pConMon: Char);
begin
  FConMonOLD := pConMon;
end;

function T075PRO.GetPerFunOLD: Double;
begin
  Result := FPerFunOLD;
end;

procedure T075PRO.SetPerFunOLD(const pPerFun: Double);
begin
  FPerFunOLD := pPerFun;
end;

function T075PRO.GetCodAgaOLD: string;
begin
  Result := FCodAgaOLD;
end;

procedure T075PRO.SetCodAgaOLD(const pCodAga: string);
begin
  FCodAgaOLD := pCodAga;
end;

function T075PRO.GetSomIpsOLD: Char;
begin
  Result := FSomIpsOLD;
end;

procedure T075PRO.SetSomIpsOLD(const pSomIps: Char);
begin
  FSomIpsOLD := pSomIps;
end;

function T075PRO.GetSomIcoOLD: Char;
begin
  Result := FSomIcoOLD;
end;

procedure T075PRO.SetSomIcoOLD(const pSomIco: Char);
begin
  FSomIcoOLD := pSomIco;
end;

function T075PRO.GetSomIplOLD: Char;
begin
  Result := FSomIplOLD;
end;

procedure T075PRO.SetSomIplOLD(const pSomIpl: Char);
begin
  FSomIplOLD := pSomIpl;
end;

function T075PRO.GetSomIclOLD: Char;
begin
  Result := FSomIclOLD;
end;

procedure T075PRO.SetSomIclOLD(const pSomIcl: Char);
begin
  FSomIclOLD := pSomIcl;
end;

function T075PRO.GetIndOctOLD: Char;
begin
  Result := FIndOctOLD;
end;

procedure T075PRO.SetIndOctOLD(const pIndOct: Char);
begin
  FIndOctOLD := pIndOct;
end;

function T075PRO.GetIndSprOLD: Char;
begin
  Result := FIndSprOLD;
end;

procedure T075PRO.SetIndSprOLD(const pIndSpr: Char);
begin
  FIndSprOLD := pIndSpr;
end;

function T075PRO.GetCodEndOLD: string;
begin
  Result := FCodEndOLD;
end;

procedure T075PRO.SetCodEndOLD(const pCodEnd: string);
begin
  FCodEndOLD := pCodEnd;
end;

function T075PRO.GetPesBruOLD: Double;
begin
  Result := FPesBruOLD;
end;

procedure T075PRO.SetPesBruOLD(const pPesBru: Double);
begin
  FPesBruOLD := pPesBru;
end;

function T075PRO.GetPesLiqOLD: Double;
begin
  Result := FPesLiqOLD;
end;

procedure T075PRO.SetPesLiqOLD(const pPesLiq: Double);
begin
  FPesLiqOLD := pPesLiq;
end;

function T075PRO.GetTolPesOLD: Double;
begin
  Result := FTolPesOLD;
end;

procedure T075PRO.SetTolPesOLD(const pTolPes: Double);
begin
  FTolPesOLD := pTolPes;
end;

function T075PRO.GetVolProOLD: Double;
begin
  Result := FVolProOLD;
end;

procedure T075PRO.SetVolProOLD(const pVolPro: Double);
begin
  FVolProOLD := pVolPro;
end;

function T075PRO.GetRotAnxOLD: Integer;
begin
  Result := FRotAnxOLD;
end;

procedure T075PRO.SetRotAnxOLD(const pRotAnx: Integer);
begin
  FRotAnxOLD := pRotAnx;
end;

function T075PRO.GetNumAnxOLD: Integer;
begin
  Result := FNumAnxOLD;
end;

procedure T075PRO.SetNumAnxOLD(const pNumAnx: Integer);
begin
  FNumAnxOLD := pNumAnx;
end;

function T075PRO.GetProImpOLD: Integer;
begin
  Result := FProImpOLD;
end;

procedure T075PRO.SetProImpOLD(const pProImp: Integer);
begin
  FProImpOLD := pProImp;
end;

function T075PRO.GetBasRecOLD: Char;
begin
  Result := FBasRecOLD;
end;

procedure T075PRO.SetBasRecOLD(const pBasRec: Char);
begin
  FBasRecOLD := pBasRec;
end;

function T075PRO.GetCodAnpOLD: Integer;
begin
  Result := FCodAnpOLD;
end;

procedure T075PRO.SetCodAnpOLD(const pCodAnp: Integer);
begin
  FCodAnpOLD := pCodAnp;
end;

function T075PRO.GetProEpeOLD: Integer;
begin
  Result := FProEpeOLD;
end;

procedure T075PRO.SetProEpeOLD(const pProEpe: Integer);
begin
  FProEpeOLD := pProEpe;
end;

function T075PRO.GetCtrVisOLD: Char;
begin
  Result := FCtrVisOLD;
end;

procedure T075PRO.SetCtrVisOLD(const pCtrVis: Char);
begin
  FCtrVisOLD := pCtrVis;
end;

function T075PRO.GetDatVisOLD: TDate;
begin
  Result := FDatVisOLD;
end;

procedure T075PRO.SetDatVisOLD(const pDatVis: TDate);
begin
  FDatVisOLD := pDatVis;
end;

function T075PRO.GetHorVisOLD: Integer;
begin
  Result := FHorVisOLD;
end;

procedure T075PRO.SetHorVisOLD(const pHorVis: Integer);
begin
  FHorVisOLD := pHorVis;
end;

function T075PRO.GetIndFrtOLD: Char;
begin
  Result := FIndFrtOLD;
end;

procedure T075PRO.SetIndFrtOLD(const pIndFrt: Char);
begin
  FIndFrtOLD := pIndFrt;
end;

function T075PRO.GetFrtEqpOLD: Char;
begin
  Result := FFrtEqpOLD;
end;

procedure T075PRO.SetFrtEqpOLD(const pFrtEqp: Char);
begin
  FFrtEqpOLD := pFrtEqp;
end;

function T075PRO.GetGrpFrtOLD: string;
begin
  Result := FGrpFrtOLD;
end;

procedure T075PRO.SetGrpFrtOLD(const pGrpFrt: string);
begin
  FGrpFrtOLD := pGrpFrt;
end;

function T075PRO.GetConEneOLD: Integer;
begin
  Result := FConEneOLD;
end;

procedure T075PRO.SetConEneOLD(const pConEne: Integer);
begin
  FConEneOLD := pConEne;
end;

function T075PRO.GetConAguOLD: Integer;
begin
  Result := FConAguOLD;
end;

procedure T075PRO.SetConAguOLD(const pConAgu: Integer);
begin
  FConAguOLD := pConAgu;
end;

function T075PRO.GetTipLigOLD: Integer;
begin
  Result := FTipLigOLD;
end;

procedure T075PRO.SetTipLigOLD(const pTipLig: Integer);
begin
  FTipLigOLD := pTipLig;
end;

function T075PRO.GetGruTenOLD: Integer;
begin
  Result := FGruTenOLD;
end;

procedure T075PRO.SetGruTenOLD(const pGruTen: Integer);
begin
  FGruTenOLD := pGruTen;
end;

function T075PRO.GetTipMfrOLD: Char;
begin
  Result := FTipMfrOLD;
end;

procedure T075PRO.SetTipMfrOLD(const pTipMfr: Char);
begin
  FTipMfrOLD := pTipMfr;
end;

function T075PRO.GetUniFrtOLD: Char;
begin
  Result := FUniFrtOLD;
end;

procedure T075PRO.SetUniFrtOLD(const pUniFrt: Char);
begin
  FUniFrtOLD := pUniFrt;
end;

function T075PRO.GetCstIpiOLD: string;
begin
  Result := FCstIpiOLD;
end;

procedure T075PRO.SetCstIpiOLD(const pCstIpi: string);
begin
  FCstIpiOLD := pCstIpi;
end;

function T075PRO.GetCstPisOLD: string;
begin
  Result := FCstPisOLD;
end;

procedure T075PRO.SetCstPisOLD(const pCstPis: string);
begin
  FCstPisOLD := pCstPis;
end;

function T075PRO.GetCstCofOLD: string;
begin
  Result := FCstCofOLD;
end;

procedure T075PRO.SetCstCofOLD(const pCstCof: string);
begin
  FCstCofOLD := pCstCof;
end;

function T075PRO.GetTprPisOLD: string;
begin
  Result := FTprPisOLD;
end;

procedure T075PRO.SetTprPisOLD(const pTprPis: string);
begin
  FTprPisOLD := pTprPis;
end;

function T075PRO.GetTprCofOLD: string;
begin
  Result := FTprCofOLD;
end;

procedure T075PRO.SetTprCofOLD(const pTprCof: string);
begin
  FTprCofOLD := pTprCof;
end;

function T075PRO.GetTprIpiOLD: string;
begin
  Result := FTprIpiOLD;
end;

procedure T075PRO.SetTprIpiOLD(const pTprIpi: string);
begin
  FTprIpiOLD := pTprIpi;
end;

function T075PRO.GetRegTriOLD: Char;
begin
  Result := FRegTriOLD;
end;

procedure T075PRO.SetRegTriOLD(const pRegTri: Char);
begin
  FRegTriOLD := pRegTri;
end;

function T075PRO.GetIdeProOLD: string;
begin
  Result := FIdeProOLD;
end;

procedure T075PRO.SetIdeProOLD(const pIdePro: string);
begin
  FIdeProOLD := pIdePro;
end;

function T075PRO.GetQtdAfeOLD: Integer;
begin
  Result := FQtdAfeOLD;
end;

procedure T075PRO.SetQtdAfeOLD(const pQtdAfe: Integer);
begin
  FQtdAfeOLD := pQtdAfe;
end;

function T075PRO.GetIndAfeOLD: Char;
begin
  Result := FIndAfeOLD;
end;

procedure T075PRO.SetIndAfeOLD(const pIndAfe: Char);
begin
  FIndAfeOLD := pIndAfe;
end;

function T075PRO.GetCstIpcOLD: string;
begin
  Result := FCstIpcOLD;
end;

procedure T075PRO.SetCstIpcOLD(const pCstIpc: string);
begin
  FCstIpcOLD := pCstIpc;
end;

function T075PRO.GetCstPicOLD: string;
begin
  Result := FCstPicOLD;
end;

procedure T075PRO.SetCstPicOLD(const pCstPic: string);
begin
  FCstPicOLD := pCstPic;
end;

function T075PRO.GetCstCocOLD: string;
begin
  Result := FCstCocOLD;
end;

procedure T075PRO.SetCstCocOLD(const pCstCoc: string);
begin
  FCstCocOLD := pCstCoc;
end;

function T075PRO.GetOriMerOLD: Char;
begin
  Result := FOriMerOLD;
end;

procedure T075PRO.SetOriMerOLD(const pOriMer: Char);
begin
  FOriMerOLD := pOriMer;
end;

function T075PRO.GetNatPisOLD: Integer;
begin
  Result := FNatPisOLD;
end;

procedure T075PRO.SetNatPisOLD(const pNatPis: Integer);
begin
  FNatPisOLD := pNatPis;
end;

function T075PRO.GetNatCofOLD: Integer;
begin
  Result := FNatCofOLD;
end;

procedure T075PRO.SetNatCofOLD(const pNatCof: Integer);
begin
  FNatCofOLD := pNatCof;
end;

function T075PRO.GetLarProOLD: Double;
begin
  Result := FLarProOLD;
end;

procedure T075PRO.SetLarProOLD(const pLarPro: Double);
begin
  FLarProOLD := pLarPro;
end;

function T075PRO.GetAltProOLD: Double;
begin
  Result := FAltProOLD;
end;

procedure T075PRO.SetAltProOLD(const pAltPro: Double);
begin
  FAltProOLD := pAltPro;
end;

function T075PRO.GetComProOLD: Double;
begin
  Result := FComProOLD;
end;

procedure T075PRO.SetComProOLD(const pComPro: Double);
begin
  FComProOLD := pComPro;
end;

function T075PRO.GetBasCreOLD: Integer;
begin
  Result := FBasCreOLD;
end;

procedure T075PRO.SetBasCreOLD(const pBasCre: Integer);
begin
  FBasCreOLD := pBasCre;
end;

function T075PRO.GetProMonOLD: Char;
begin
  Result := FProMonOLD;
end;

procedure T075PRO.SetProMonOLD(const pProMon: Char);
begin
  FProMonOLD := pProMon;
end;

function T075PRO.GetProEntOLD: Char;
begin
  Result := FProEntOLD;
end;

procedure T075PRO.SetProEntOLD(const pProEnt: Char);
begin
  FProEntOLD := pProEnt;
end;

function T075PRO.GetVarProOLD: Char;
begin
  Result := FVarProOLD;
end;

procedure T075PRO.SetVarProOLD(const pVarPro: Char);
begin
  FVarProOLD := pVarPro;
end;

function T075PRO.GetProFolOLD: Char;
begin
  Result := FProFolOLD;
end;

procedure T075PRO.SetProFolOLD(const pProFol: Char);
begin
  FProFolOLD := pProFol;
end;

function T075PRO.GetProVesOLD: Char;
begin
  Result := FProVesOLD;
end;

procedure T075PRO.SetProVesOLD(const pProVes: Char);
begin
  FProVesOLD := pProVes;
end;

function T075PRO.GetQtdVolOLD: Integer;
begin
  Result := FQtdVolOLD;
end;

procedure T075PRO.SetQtdVolOLD(const pQtdVol: Integer);
begin
  FQtdVolOLD := pQtdVol;
end;

function T075PRO.GetExiNfeOLD: Char;
begin
  Result := FExiNfeOLD;
end;

procedure T075PRO.SetExiNfeOLD(const pExiNfe: Char);
begin
  FExiNfeOLD := pExiNfe;
end;

function T075PRO.GetPrzRecOLD: Integer;
begin
  Result := FPrzRecOLD;
end;

procedure T075PRO.SetPrzRecOLD(const pPrzRec: Integer);
begin
  FPrzRecOLD := pPrzRec;
end;

function T075PRO.GetUniWmsOLD: string;
begin
  Result := FUniWmsOLD;
end;

procedure T075PRO.SetUniWmsOLD(const pUniWms: string);
begin
  FUniWmsOLD := pUniWms;
end;

function T075PRO.GetFinCrpOLD: Integer;
begin
  Result := FFinCrpOLD;
end;

procedure T075PRO.SetFinCrpOLD(const pFinCrp: Integer);
begin
  FFinCrpOLD := pFinCrp;
end;

function T075PRO.GetFinCdpOLD: Integer;
begin
  Result := FFinCdpOLD;
end;

procedure T075PRO.SetFinCdpOLD(const pFinCdp: Integer);
begin
  FFinCdpOLD := pFinCdp;
end;

function T075PRO.GetPerPimOLD: Double;
begin
  Result := FPerPimOLD;
end;

procedure T075PRO.SetPerPimOLD(const pPerPim: Double);
begin
  FPerPimOLD := pPerPim;
end;

function T075PRO.GetPerCimOLD: Double;
begin
  Result := FPerCimOLD;
end;

procedure T075PRO.SetPerCimOLD(const pPerCim: Double);
begin
  FPerCimOLD := pPerCim;
end;

function T075PRO.GetIteFisOLD: string;
begin
  Result := FIteFisOLD;
end;

procedure T075PRO.SetIteFisOLD(const pIteFis: string);
begin
  FIteFisOLD := pIteFis;
end;

function T075PRO.GetDesFisOLD: string;
begin
  Result := FDesFisOLD;
end;

procedure T075PRO.SetDesFisOLD(const pDesFis: string);
begin
  FDesFisOLD := pDesFis;
end;

function T075PRO.GetCodAggOLD: string;
begin
  Result := FCodAggOLD;
end;

procedure T075PRO.SetCodAggOLD(const pCodAgg: string);
begin
  FCodAggOLD := pCodAgg;
end;

function T075PRO.GetParComOLD: Char;
begin
  Result := FParComOLD;
end;

procedure T075PRO.SetParComOLD(const pParCom: Char);
begin
  FParComOLD := pParCom;
end;

function T075PRO.GetUSU_CodMsg1OLD: Integer;
begin
  Result := FUSU_CodMsg1OLD;
end;

procedure T075PRO.SetUSU_CodMsg1OLD(const pUSU_CodMsg1: Integer);
begin
  FUSU_CodMsg1OLD := pUSU_CodMsg1;
end;

function T075PRO.GetUSU_IndB2BOLD: Char;
begin
  Result := FUSU_IndB2BOLD;
end;

procedure T075PRO.SetUSU_IndB2BOLD(const pUSU_IndB2B: Char);
begin
  FUSU_IndB2BOLD := pUSU_IndB2B;
end;

function T075PRO.GetUSU_IndEcoOLD: Char;
begin
  Result := FUSU_IndEcoOLD;
end;

procedure T075PRO.SetUSU_IndEcoOLD(const pUSU_IndEco: Char);
begin
  FUSU_IndEcoOLD := pUSU_IndEco;
end;

function T075PRO.GetUSU_IndPopOLD: Char;
begin
  Result := FUSU_IndPopOLD;
end;

procedure T075PRO.SetUSU_IndPopOLD(const pUSU_IndPop: Char);
begin
  FUSU_IndPopOLD := pUSU_IndPop;
end;

procedure T075PRO.Registros_OLD();
begin
  FCodEmpOLD := FCodEmp;
  FCodProOLD := FCodPro;
  FDesProOLD := FDesPro;
  FCplProOLD := FCplPro;
  FDesNfvOLD := FDesNfv;
  FCodFamOLD := FCodFam;
  FUniMedOLD := FUniMed;
  FUniMe2OLD := FUniMe2;
  FUniMe3OLD := FUniMe3;
  FTipProOLD := FTipPro;
  FCodOriOLD := FCodOri;
  FNumOriOLD := FNumOri;
  FCodMdpOLD := FCodMdp;
  FCodModOLD := FCodMod;
  FCodRotOLD := FCodRot;
  FCodAgeOLD := FCodAge;
  FCodAgpOLD := FCodAgp;
  FCodAguOLD := FCodAgu;
  FCodAgcOLD := FCodAgc;
  FCodAgfOLD := FCodAgf;
  FCodClfOLD := FCodClf;
  FCodStrOLD := FCodStr;
  FPerIpiOLD := FPerIpi;
  FRecIpiOLD := FRecIpi;
  FTemIcmOLD := FTemIcm;
  FCodTicOLD := FCodTic;
  FCodTrdOLD := FCodTrd;
  FCodTstOLD := FCodTst;
  FCodStpOLD := FCodStp;
  FCodStcOLD := FCodStc;
  FRecIcmOLD := FRecIcm;
  FCodRoyOLD := FCodRoy;
  FQtdMltOLD := FQtdMlt;
  FQtdMinOLD := FQtdMin;
  FQtdMaxOLD := FQtdMax;
  FQtdGopOLD := FQtdGop;
  FBxaOrpOLD := FBxaOrp;
  FCodPr2OLD := FCodPr2;
  FDerPr2OLD := FDerPr2;
  FCodPr3OLD := FCodPr3;
  FDerPr3OLD := FDerPr3;
  FCodPr4OLD := FCodPr4;
  FDerPr4OLD := FDerPr4;
  FProStqOLD := FProStq;
  FSitProOLD := FSitPro;
  FRotProOLD := FRotPro;
  FUsoCusOLD := FUsoCus;
  FIndMisOLD := FIndMis;
  FIndVenOLD := FIndVen;
  FIndCprOLD := FIndCpr;
  FIndReqOLD := FIndReq;
  FIndKitOLD := FIndKit;
  FMatDirOLD := FMatDir;
  FClaProOLD := FClaPro;
  FIndPpcOLD := FIndPpc;
  FIndFprOLD := FIndFpr;
  FCodNtgOLD := FCodNtg;
  FCriRatOLD := FCriRat;
  FCtaRedOLD := FCtaRed;
  FCtaRcrOLD := FCtaRcr;
  FCtaFdvOLD := FCtaFdv;
  FCtaFcrOLD := FCtaFcr;
  FUsuGerOLD := FUsuGer;
  FHorGerOLD := FHorGer;
  FDatGerOLD := FDatGer;
  FDepPadOLD := FDepPad;
  FCtrVldOLD := FCtrVld;
  FCtrLotOLD := FCtrLot;
  FLotBasOLD := FLotBas;
  FCtrSepOLD := FCtrSep;
  FQtdMveOLD := FQtdMve;
  FCodRefOLD := FCodRef;
  FCodPinOLD := FCodPin;
  FNotForOLD := FNotFor;
  FExgCclOLD := FExgCcl;
  FEmiGtrOLD := FEmiGtr;
  FUsuAltOLD := FUsuAlt;
  FHorAltOLD := FHorAlt;
  FDatAltOLD := FDatAlt;
  FSomIimOLD := FSomIim;
  FRecPisOLD := FRecPis;
  FTriPisOLD := FTriPis;
  FTriCofOLD := FTriCof;
  FIndExpOLD := FIndExp;
  FDatPalOLD := FDatPal;
  FHorPalOLD := FHorPal;
  FExpWmsOLD := FExpWms;
  FTipIntOLD := FTipInt;
  FCodFifOLD := FCodFif;
  FCodFieOLD := FCodFie;
  FCodFimOLD := FCodFim;
  FRecCofOLD := FRecCof;
  FSomIilOLD := FSomIil;
  FCalDzfOLD := FCalDzf;
  FUniPadOLD := FUniPad;
  FCodMarOLD := FCodMar;
  FCodClcOLD := FCodClc;
  FCodAgmOLD := FCodAgm;
  FFilPrdOLD := FFilPrd;
  FTolQmxOLD := FTolQmx;
  FGerOrpOLD := FGerOrp;
  FCodPdvOLD := FCodPdv;
  FPerIrfOLD := FPerIrf;
  FPerPisOLD := FPerPis;
  FPerCofOLD := FPerCof;
  FPerCslOLD := FPerCsl;
  FPerOurOLD := FPerOur;
  FConMonOLD := FConMon;
  FPerFunOLD := FPerFun;
  FCodAgaOLD := FCodAga;
  FSomIpsOLD := FSomIps;
  FSomIcoOLD := FSomIco;
  FSomIplOLD := FSomIpl;
  FSomIclOLD := FSomIcl;
  FIndOctOLD := FIndOct;
  FIndSprOLD := FIndSpr;
  FCodEndOLD := FCodEnd;
  FPesBruOLD := FPesBru;
  FPesLiqOLD := FPesLiq;
  FTolPesOLD := FTolPes;
  FVolProOLD := FVolPro;
  FRotAnxOLD := FRotAnx;
  FNumAnxOLD := FNumAnx;
  FProImpOLD := FProImp;
  FBasRecOLD := FBasRec;
  FCodAnpOLD := FCodAnp;
  FProEpeOLD := FProEpe;
  FCtrVisOLD := FCtrVis;
  FDatVisOLD := FDatVis;
  FHorVisOLD := FHorVis;
  FIndFrtOLD := FIndFrt;
  FFrtEqpOLD := FFrtEqp;
  FGrpFrtOLD := FGrpFrt;
  FConEneOLD := FConEne;
  FConAguOLD := FConAgu;
  FTipLigOLD := FTipLig;
  FGruTenOLD := FGruTen;
  FTipMfrOLD := FTipMfr;
  FUniFrtOLD := FUniFrt;
  FCstIpiOLD := FCstIpi;
  FCstPisOLD := FCstPis;
  FCstCofOLD := FCstCof;
  FTprPisOLD := FTprPis;
  FTprCofOLD := FTprCof;
  FTprIpiOLD := FTprIpi;
  FRegTriOLD := FRegTri;
  FIdeProOLD := FIdePro;
  FQtdAfeOLD := FQtdAfe;
  FIndAfeOLD := FIndAfe;
  FCstIpcOLD := FCstIpc;
  FCstPicOLD := FCstPic;
  FCstCocOLD := FCstCoc;
  FOriMerOLD := FOriMer;
  FNatPisOLD := FNatPis;
  FNatCofOLD := FNatCof;
  FLarProOLD := FLarPro;
  FAltProOLD := FAltPro;
  FComProOLD := FComPro;
  FBasCreOLD := FBasCre;
  FProMonOLD := FProMon;
  FProEntOLD := FProEnt;
  FVarProOLD := FVarPro;
  FProFolOLD := FProFol;
  FProVesOLD := FProVes;
  FQtdVolOLD := FQtdVol;
  FExiNfeOLD := FExiNfe;
  FPrzRecOLD := FPrzRec;
  FUniWmsOLD := FUniWms;
  FFinCrpOLD := FFinCrp;
  FFinCdpOLD := FFinCdp;
  FPerPimOLD := FPerPim;
  FPerCimOLD := FPerCim;
  FIteFisOLD := FIteFis;
  FDesFisOLD := FDesFis;
  FCodAggOLD := FCodAgg;
  FParComOLD := FParCom;
  FUSU_CodMsg1OLD := FUSU_CodMsg1;
  FUSU_IndB2BOLD := FUSU_IndB2B;
  FUSU_IndEcoOLD := FUSU_IndEco;
  FUSU_IndPopOLD := FUSU_IndPop;

  inherited;
end;

procedure T075PRO.RetornarValores();
begin
  FCodEmp := FCodEmpOLD;
  FCodPro := FCodProOLD;
  FDesPro := FDesProOLD;
  FCplPro := FCplProOLD;
  FDesNfv := FDesNfvOLD;
  FCodFam := FCodFamOLD;
  FUniMed := FUniMedOLD;
  FUniMe2 := FUniMe2OLD;
  FUniMe3 := FUniMe3OLD;
  FTipPro := FTipProOLD;
  FCodOri := FCodOriOLD;
  FNumOri := FNumOriOLD;
  FCodMdp := FCodMdpOLD;
  FCodMod := FCodModOLD;
  FCodRot := FCodRotOLD;
  FCodAge := FCodAgeOLD;
  FCodAgp := FCodAgpOLD;
  FCodAgu := FCodAguOLD;
  FCodAgc := FCodAgcOLD;
  FCodAgf := FCodAgfOLD;
  FCodClf := FCodClfOLD;
  FCodStr := FCodStrOLD;
  FPerIpi := FPerIpiOLD;
  FRecIpi := FRecIpiOLD;
  FTemIcm := FTemIcmOLD;
  FCodTic := FCodTicOLD;
  FCodTrd := FCodTrdOLD;
  FCodTst := FCodTstOLD;
  FCodStp := FCodStpOLD;
  FCodStc := FCodStcOLD;
  FRecIcm := FRecIcmOLD;
  FCodRoy := FCodRoyOLD;
  FQtdMlt := FQtdMltOLD;
  FQtdMin := FQtdMinOLD;
  FQtdMax := FQtdMaxOLD;
  FQtdGop := FQtdGopOLD;
  FBxaOrp := FBxaOrpOLD;
  FCodPr2 := FCodPr2OLD;
  FDerPr2 := FDerPr2OLD;
  FCodPr3 := FCodPr3OLD;
  FDerPr3 := FDerPr3OLD;
  FCodPr4 := FCodPr4OLD;
  FDerPr4 := FDerPr4OLD;
  FProStq := FProStqOLD;
  FSitPro := FSitProOLD;
  FRotPro := FRotProOLD;
  FUsoCus := FUsoCusOLD;
  FIndMis := FIndMisOLD;
  FIndVen := FIndVenOLD;
  FIndCpr := FIndCprOLD;
  FIndReq := FIndReqOLD;
  FIndKit := FIndKitOLD;
  FMatDir := FMatDirOLD;
  FClaPro := FClaProOLD;
  FIndPpc := FIndPpcOLD;
  FIndFpr := FIndFprOLD;
  FCodNtg := FCodNtgOLD;
  FCriRat := FCriRatOLD;
  FCtaRed := FCtaRedOLD;
  FCtaRcr := FCtaRcrOLD;
  FCtaFdv := FCtaFdvOLD;
  FCtaFcr := FCtaFcrOLD;
  FUsuGer := FUsuGerOLD;
  FHorGer := FHorGerOLD;
  FDatGer := FDatGerOLD;
  FDepPad := FDepPadOLD;
  FCtrVld := FCtrVldOLD;
  FCtrLot := FCtrLotOLD;
  FLotBas := FLotBasOLD;
  FCtrSep := FCtrSepOLD;
  FQtdMve := FQtdMveOLD;
  FCodRef := FCodRefOLD;
  FCodPin := FCodPinOLD;
  FNotFor := FNotForOLD;
  FExgCcl := FExgCclOLD;
  FEmiGtr := FEmiGtrOLD;
  FUsuAlt := FUsuAltOLD;
  FHorAlt := FHorAltOLD;
  FDatAlt := FDatAltOLD;
  FSomIim := FSomIimOLD;
  FRecPis := FRecPisOLD;
  FTriPis := FTriPisOLD;
  FTriCof := FTriCofOLD;
  FIndExp := FIndExpOLD;
  FDatPal := FDatPalOLD;
  FHorPal := FHorPalOLD;
  FExpWms := FExpWmsOLD;
  FTipInt := FTipIntOLD;
  FCodFif := FCodFifOLD;
  FCodFie := FCodFieOLD;
  FCodFim := FCodFimOLD;
  FRecCof := FRecCofOLD;
  FSomIil := FSomIilOLD;
  FCalDzf := FCalDzfOLD;
  FUniPad := FUniPadOLD;
  FCodMar := FCodMarOLD;
  FCodClc := FCodClcOLD;
  FCodAgm := FCodAgmOLD;
  FFilPrd := FFilPrdOLD;
  FTolQmx := FTolQmxOLD;
  FGerOrp := FGerOrpOLD;
  FCodPdv := FCodPdvOLD;
  FPerIrf := FPerIrfOLD;
  FPerPis := FPerPisOLD;
  FPerCof := FPerCofOLD;
  FPerCsl := FPerCslOLD;
  FPerOur := FPerOurOLD;
  FConMon := FConMonOLD;
  FPerFun := FPerFunOLD;
  FCodAga := FCodAgaOLD;
  FSomIps := FSomIpsOLD;
  FSomIco := FSomIcoOLD;
  FSomIpl := FSomIplOLD;
  FSomIcl := FSomIclOLD;
  FIndOct := FIndOctOLD;
  FIndSpr := FIndSprOLD;
  FCodEnd := FCodEndOLD;
  FPesBru := FPesBruOLD;
  FPesLiq := FPesLiqOLD;
  FTolPes := FTolPesOLD;
  FVolPro := FVolProOLD;
  FRotAnx := FRotAnxOLD;
  FNumAnx := FNumAnxOLD;
  FProImp := FProImpOLD;
  FBasRec := FBasRecOLD;
  FCodAnp := FCodAnpOLD;
  FProEpe := FProEpeOLD;
  FCtrVis := FCtrVisOLD;
  FDatVis := FDatVisOLD;
  FHorVis := FHorVisOLD;
  FIndFrt := FIndFrtOLD;
  FFrtEqp := FFrtEqpOLD;
  FGrpFrt := FGrpFrtOLD;
  FConEne := FConEneOLD;
  FConAgu := FConAguOLD;
  FTipLig := FTipLigOLD;
  FGruTen := FGruTenOLD;
  FTipMfr := FTipMfrOLD;
  FUniFrt := FUniFrtOLD;
  FCstIpi := FCstIpiOLD;
  FCstPis := FCstPisOLD;
  FCstCof := FCstCofOLD;
  FTprPis := FTprPisOLD;
  FTprCof := FTprCofOLD;
  FTprIpi := FTprIpiOLD;
  FRegTri := FRegTriOLD;
  FIdePro := FIdeProOLD;
  FQtdAfe := FQtdAfeOLD;
  FIndAfe := FIndAfeOLD;
  FCstIpc := FCstIpcOLD;
  FCstPic := FCstPicOLD;
  FCstCoc := FCstCocOLD;
  FOriMer := FOriMerOLD;
  FNatPis := FNatPisOLD;
  FNatCof := FNatCofOLD;
  FLarPro := FLarProOLD;
  FAltPro := FAltProOLD;
  FComPro := FComProOLD;
  FBasCre := FBasCreOLD;
  FProMon := FProMonOLD;
  FProEnt := FProEntOLD;
  FVarPro := FVarProOLD;
  FProFol := FProFolOLD;
  FProVes := FProVesOLD;
  FQtdVol := FQtdVolOLD;
  FExiNfe := FExiNfeOLD;
  FPrzRec := FPrzRecOLD;
  FUniWms := FUniWmsOLD;
  FFinCrp := FFinCrpOLD;
  FFinCdp := FFinCdpOLD;
  FPerPim := FPerPimOLD;
  FPerCim := FPerCimOLD;
  FIteFis := FIteFisOLD;
  FDesFis := FDesFisOLD;
  FCodAgg := FCodAggOLD;
  FParCom := FParComOLD;
  FUSU_CodMsg1 := FUSU_CodMsg1OLD;
  FUSU_IndB2B := FUSU_IndB2BOLD;
  FUSU_IndEco := FUSU_IndEcoOLD;
  FUSU_IndPop := FUSU_IndPopOLD;
end;

end.
