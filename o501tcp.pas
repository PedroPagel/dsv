unit o501tcp;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T501TCP = class(TTabelaPadrao)
  private
    FCodEmp: Integer;
    FCodFil: Integer;
    FNumTit: string;
    FCodTpt: string;
    FCodFor: Integer;
    FCodCrp: string;
    FCodTns: string;
    FCodNtg: Integer;
    FCodTri: string;
    FSitTit: string;
    FDatEmi: TDate;
    FDatEnt: TDate;
    FObsTcp: string;
    FCodFav: Integer;
    FVctOri: TDate;
    FVlrOri: Double;
    FCodFpg: Integer;
    FVctPro: TDate;
    FProJrs: Char;
    FCodMpt: string;
    FDatPpt: TDate;
    FVlrAbe: Double;
    FCodMoe: string;
    FCotEmi: Double;
    FCodFrj: string;
    FDatDsc: TDate;
    FTolDsc: Integer;
    FPerDsc: Double;
    FVlrDsc: Double;
    FAntDsc: Char;
    FPerJrs: Double;
    FTipJrs: Char;
    FJrsDia: Double;
    FTolJrs: Integer;
    FDatCjm: TDate;
    FPerMul: Double;
    FTolMul: Integer;
    FDatNeg: TDate;
    FJrsNeg: Double;
    FMulNeg: Double;
    FDscNeg: Double;
    FOutNeg: Double;
    FUsuNeg: Integer;
    FCotNeg: Double;
    FCorNeg: Double;
    FCodPor: string;
    FCodCrt: string;
    FTitBan: string;
    FCodUsu: Integer;
    FDatApr: TDate;
    FHorApr: Integer;
    FPgtApr: TDate;
    FVlrApr: Double;
    FCotApr: Double;
    FDscApr: Double;
    FOdeApr: Double;
    FJrsApr: Double;
    FMulApr: Double;
    FEncApr: Double;
    FCorApr: Double;
    FOacApr: Double;
    FIrfApr: Double;
    FVcrApr: Char;
    FEmpApr: Integer;
    FCtaApr: string;
    FSeqApr: string;
    FLibApr: TDate;
    FUltPgt: TDate;
    FCodBan: string;
    FCodAge: string;
    FCcbFor: string;
    FPorAnt: string;
    FNumPrj: Integer;
    FCodFpj: Integer;
    FCtaFin: Integer;
    FCtaRed: Integer;
    FCodCcu: string;
    FDatUcm: TDate;
    FCotUcm: Double;
    FFilNfc: Integer;
    FForNfc: Integer;
    FNumNfc: Integer;
    FSnfNfc: string;
    FFilCtr: Integer;
    FNumCtr: Integer;
    FSeqImo: Integer;
    FSeqCgt: Integer;
    FFilNff: Integer;
    FNumNff: Integer;
    FForNff: Integer;
    FFilNfv: Integer;
    FSnfNfv: string;
    FNumNfv: Integer;
    FFpgApr: Integer;
    FFilOcp: Integer;
    FNumOcp: Integer;
    FOcpFre: Integer;
    FOcpNre: Integer;
    FCtrFre: Integer;
    FCtrNre: Integer;
    FCodBar: string;
    FUsuSit: Integer;
    FTipEfe: Char;
    FTnsPre: string;
    FDatPre: TDate;
    FVlrPre: Double;
    FNumArb: Integer;
    FNumEco: Integer;
    FTipImp: Integer;
    FFilImp: Integer;
    FNumImp: string;
    FTptImp: string;
    FForImp: Integer;
    FSeqImp: Integer;
    FVlrIns: Double;
    FPriPgt: Integer;
    FFilCcr: Integer;
    FNumCcr: Integer;
    FTitCar: Char;
    FTitPjr: Char;
    FGriFil: Integer;
    FGriImp: string;
    FGriApi: TDate;
    FGriSeq: Integer;
    FCodSma: string;
    FNumMan: Integer;
    FCpgSub: string;
    FGerTep: Char;
    FSitDda: Char;
    FUsuGer: Integer;
    FDatGer: TDate;
    FHorGer: Integer;
    FRotSap: Integer;
    FNumPge: string;
    FNumDfs: Integer;
    FAutBan: string;
    FCtrBan: string;
    FTitJrs: string;
    FTptJrs: string;
    FRotNap: Integer;
    FNumApr: Integer;
    FSitApr: string;
    FTnsApr: string;
    FUSU_NumDoi: string;
    FUSU_NumFat: string;
    FUSU_IndAPr: Char;
    FUSU_IndAPrSol: Char;
    FUSU_IDTIT: Integer;
    FUSU_IDCLP: Integer;

    FCodEmpOLD: Integer;
    FCodFilOLD: Integer;
    FNumTitOLD: string;
    FCodTptOLD: string;
    FCodForOLD: Integer;
    FCodCrpOLD: string;
    FCodTnsOLD: string;
    FCodNtgOLD: Integer;
    FCodTriOLD: string;
    FSitTitOLD: string;
    FDatEmiOLD: TDate;
    FDatEntOLD: TDate;
    FObsTcpOLD: string;
    FCodFavOLD: Integer;
    FVctOriOLD: TDate;
    FVlrOriOLD: Double;
    FCodFpgOLD: Integer;
    FVctProOLD: TDate;
    FProJrsOLD: Char;
    FCodMptOLD: string;
    FDatPptOLD: TDate;
    FVlrAbeOLD: Double;
    FCodMoeOLD: string;
    FCotEmiOLD: Double;
    FCodFrjOLD: string;
    FDatDscOLD: TDate;
    FTolDscOLD: Integer;
    FPerDscOLD: Double;
    FVlrDscOLD: Double;
    FAntDscOLD: Char;
    FPerJrsOLD: Double;
    FTipJrsOLD: Char;
    FJrsDiaOLD: Double;
    FTolJrsOLD: Integer;
    FDatCjmOLD: TDate;
    FPerMulOLD: Double;
    FTolMulOLD: Integer;
    FDatNegOLD: TDate;
    FJrsNegOLD: Double;
    FMulNegOLD: Double;
    FDscNegOLD: Double;
    FOutNegOLD: Double;
    FUsuNegOLD: Integer;
    FCotNegOLD: Double;
    FCorNegOLD: Double;
    FCodPorOLD: string;
    FCodCrtOLD: string;
    FTitBanOLD: string;
    FCodUsuOLD: Integer;
    FDatAprOLD: TDate;
    FHorAprOLD: Integer;
    FPgtAprOLD: TDate;
    FVlrAprOLD: Double;
    FCotAprOLD: Double;
    FDscAprOLD: Double;
    FOdeAprOLD: Double;
    FJrsAprOLD: Double;
    FMulAprOLD: Double;
    FEncAprOLD: Double;
    FCorAprOLD: Double;
    FOacAprOLD: Double;
    FIrfAprOLD: Double;
    FVcrAprOLD: Char;
    FEmpAprOLD: Integer;
    FCtaAprOLD: string;
    FSeqAprOLD: string;
    FLibAprOLD: TDate;
    FUltPgtOLD: TDate;
    FCodBanOLD: string;
    FCodAgeOLD: string;
    FCcbForOLD: string;
    FPorAntOLD: string;
    FNumPrjOLD: Integer;
    FCodFpjOLD: Integer;
    FCtaFinOLD: Integer;
    FCtaRedOLD: Integer;
    FCodCcuOLD: string;
    FDatUcmOLD: TDate;
    FCotUcmOLD: Double;
    FFilNfcOLD: Integer;
    FForNfcOLD: Integer;
    FNumNfcOLD: Integer;
    FSnfNfcOLD: string;
    FFilCtrOLD: Integer;
    FNumCtrOLD: Integer;
    FSeqImoOLD: Integer;
    FSeqCgtOLD: Integer;
    FFilNffOLD: Integer;
    FNumNffOLD: Integer;
    FForNffOLD: Integer;
    FFilNfvOLD: Integer;
    FSnfNfvOLD: string;
    FNumNfvOLD: Integer;
    FFpgAprOLD: Integer;
    FFilOcpOLD: Integer;
    FNumOcpOLD: Integer;
    FOcpFreOLD: Integer;
    FOcpNreOLD: Integer;
    FCtrFreOLD: Integer;
    FCtrNreOLD: Integer;
    FCodBarOLD: string;
    FUsuSitOLD: Integer;
    FTipEfeOLD: Char;
    FTnsPreOLD: string;
    FDatPreOLD: TDate;
    FVlrPreOLD: Double;
    FNumArbOLD: Integer;
    FNumEcoOLD: Integer;
    FTipImpOLD: Integer;
    FFilImpOLD: Integer;
    FNumImpOLD: string;
    FTptImpOLD: string;
    FForImpOLD: Integer;
    FSeqImpOLD: Integer;
    FVlrInsOLD: Double;
    FPriPgtOLD: Integer;
    FFilCcrOLD: Integer;
    FNumCcrOLD: Integer;
    FTitCarOLD: Char;
    FTitPjrOLD: Char;
    FGriFilOLD: Integer;
    FGriImpOLD: string;
    FGriApiOLD: TDate;
    FGriSeqOLD: Integer;
    FCodSmaOLD: string;
    FNumManOLD: Integer;
    FCpgSubOLD: string;
    FGerTepOLD: Char;
    FSitDdaOLD: Char;
    FUsuGerOLD: Integer;
    FDatGerOLD: TDate;
    FHorGerOLD: Integer;
    FRotSapOLD: Integer;
    FNumPgeOLD: string;
    FNumDfsOLD: Integer;
    FAutBanOLD: string;
    FCtrBanOLD: string;
    FTitJrsOLD: string;
    FTptJrsOLD: string;
    FRotNapOLD: Integer;
    FNumAprOLD: Integer;
    FSitAprOLD: string;
    FTnsAprOLD: string;
    FUSU_NumDoiOLD: string;
    FUSU_NumFatOLD: string;
    FUSU_IndAPrOLD: Char;
    FUSU_IndAPrSolOLD: Char;
    FUSU_IDTITOLD: Integer;
    FUSU_IDCLPOLD: Integer;

    function GetCodEmp: Integer;
    procedure SetCodEmp(const pCodEmp: Integer);
    function GetCodFil: Integer;
    procedure SetCodFil(const pCodFil: Integer);
    function GetNumTit: string;
    procedure SetNumTit(const pNumTit: string);
    function GetCodTpt: string;
    procedure SetCodTpt(const pCodTpt: string);
    function GetCodFor: Integer;
    procedure SetCodFor(const pCodFor: Integer);
    function GetCodCrp: string;
    procedure SetCodCrp(const pCodCrp: string);
    function GetCodTns: string;
    procedure SetCodTns(const pCodTns: string);
    function GetCodNtg: Integer;
    procedure SetCodNtg(const pCodNtg: Integer);
    function GetCodTri: string;
    procedure SetCodTri(const pCodTri: string);
    function GetSitTit: string;
    procedure SetSitTit(const pSitTit: string);
    function GetDatEmi: TDate;
    procedure SetDatEmi(const pDatEmi: TDate);
    function GetDatEnt: TDate;
    procedure SetDatEnt(const pDatEnt: TDate);
    function GetObsTcp: string;
    procedure SetObsTcp(const pObsTcp: string);
    function GetCodFav: Integer;
    procedure SetCodFav(const pCodFav: Integer);
    function GetVctOri: TDate;
    procedure SetVctOri(const pVctOri: TDate);
    function GetVlrOri: Double;
    procedure SetVlrOri(const pVlrOri: Double);
    function GetCodFpg: Integer;
    procedure SetCodFpg(const pCodFpg: Integer);
    function GetVctPro: TDate;
    procedure SetVctPro(const pVctPro: TDate);
    function GetProJrs: Char;
    procedure SetProJrs(const pProJrs: Char);
    function GetCodMpt: string;
    procedure SetCodMpt(const pCodMpt: string);
    function GetDatPpt: TDate;
    procedure SetDatPpt(const pDatPpt: TDate);
    function GetVlrAbe: Double;
    procedure SetVlrAbe(const pVlrAbe: Double);
    function GetCodMoe: string;
    procedure SetCodMoe(const pCodMoe: string);
    function GetCotEmi: Double;
    procedure SetCotEmi(const pCotEmi: Double);
    function GetCodFrj: string;
    procedure SetCodFrj(const pCodFrj: string);
    function GetDatDsc: TDate;
    procedure SetDatDsc(const pDatDsc: TDate);
    function GetTolDsc: Integer;
    procedure SetTolDsc(const pTolDsc: Integer);
    function GetPerDsc: Double;
    procedure SetPerDsc(const pPerDsc: Double);
    function GetVlrDsc: Double;
    procedure SetVlrDsc(const pVlrDsc: Double);
    function GetAntDsc: Char;
    procedure SetAntDsc(const pAntDsc: Char);
    function GetPerJrs: Double;
    procedure SetPerJrs(const pPerJrs: Double);
    function GetTipJrs: Char;
    procedure SetTipJrs(const pTipJrs: Char);
    function GetJrsDia: Double;
    procedure SetJrsDia(const pJrsDia: Double);
    function GetTolJrs: Integer;
    procedure SetTolJrs(const pTolJrs: Integer);
    function GetDatCjm: TDate;
    procedure SetDatCjm(const pDatCjm: TDate);
    function GetPerMul: Double;
    procedure SetPerMul(const pPerMul: Double);
    function GetTolMul: Integer;
    procedure SetTolMul(const pTolMul: Integer);
    function GetDatNeg: TDate;
    procedure SetDatNeg(const pDatNeg: TDate);
    function GetJrsNeg: Double;
    procedure SetJrsNeg(const pJrsNeg: Double);
    function GetMulNeg: Double;
    procedure SetMulNeg(const pMulNeg: Double);
    function GetDscNeg: Double;
    procedure SetDscNeg(const pDscNeg: Double);
    function GetOutNeg: Double;
    procedure SetOutNeg(const pOutNeg: Double);
    function GetUsuNeg: Integer;
    procedure SetUsuNeg(const pUsuNeg: Integer);
    function GetCotNeg: Double;
    procedure SetCotNeg(const pCotNeg: Double);
    function GetCorNeg: Double;
    procedure SetCorNeg(const pCorNeg: Double);
    function GetCodPor: string;
    procedure SetCodPor(const pCodPor: string);
    function GetCodCrt: string;
    procedure SetCodCrt(const pCodCrt: string);
    function GetTitBan: string;
    procedure SetTitBan(const pTitBan: string);
    function GetCodUsu: Integer;
    procedure SetCodUsu(const pCodUsu: Integer);
    function GetDatApr: TDate;
    procedure SetDatApr(const pDatApr: TDate);
    function GetHorApr: Integer;
    procedure SetHorApr(const pHorApr: Integer);
    function GetPgtApr: TDate;
    procedure SetPgtApr(const pPgtApr: TDate);
    function GetVlrApr: Double;
    procedure SetVlrApr(const pVlrApr: Double);
    function GetCotApr: Double;
    procedure SetCotApr(const pCotApr: Double);
    function GetDscApr: Double;
    procedure SetDscApr(const pDscApr: Double);
    function GetOdeApr: Double;
    procedure SetOdeApr(const pOdeApr: Double);
    function GetJrsApr: Double;
    procedure SetJrsApr(const pJrsApr: Double);
    function GetMulApr: Double;
    procedure SetMulApr(const pMulApr: Double);
    function GetEncApr: Double;
    procedure SetEncApr(const pEncApr: Double);
    function GetCorApr: Double;
    procedure SetCorApr(const pCorApr: Double);
    function GetOacApr: Double;
    procedure SetOacApr(const pOacApr: Double);
    function GetIrfApr: Double;
    procedure SetIrfApr(const pIrfApr: Double);
    function GetVcrApr: Char;
    procedure SetVcrApr(const pVcrApr: Char);
    function GetEmpApr: Integer;
    procedure SetEmpApr(const pEmpApr: Integer);
    function GetCtaApr: string;
    procedure SetCtaApr(const pCtaApr: string);
    function GetSeqApr: string;
    procedure SetSeqApr(const pSeqApr: string);
    function GetLibApr: TDate;
    procedure SetLibApr(const pLibApr: TDate);
    function GetUltPgt: TDate;
    procedure SetUltPgt(const pUltPgt: TDate);
    function GetCodBan: string;
    procedure SetCodBan(const pCodBan: string);
    function GetCodAge: string;
    procedure SetCodAge(const pCodAge: string);
    function GetCcbFor: string;
    procedure SetCcbFor(const pCcbFor: string);
    function GetPorAnt: string;
    procedure SetPorAnt(const pPorAnt: string);
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
    function GetDatUcm: TDate;
    procedure SetDatUcm(const pDatUcm: TDate);
    function GetCotUcm: Double;
    procedure SetCotUcm(const pCotUcm: Double);
    function GetFilNfc: Integer;
    procedure SetFilNfc(const pFilNfc: Integer);
    function GetForNfc: Integer;
    procedure SetForNfc(const pForNfc: Integer);
    function GetNumNfc: Integer;
    procedure SetNumNfc(const pNumNfc: Integer);
    function GetSnfNfc: string;
    procedure SetSnfNfc(const pSnfNfc: string);
    function GetFilCtr: Integer;
    procedure SetFilCtr(const pFilCtr: Integer);
    function GetNumCtr: Integer;
    procedure SetNumCtr(const pNumCtr: Integer);
    function GetSeqImo: Integer;
    procedure SetSeqImo(const pSeqImo: Integer);
    function GetSeqCgt: Integer;
    procedure SetSeqCgt(const pSeqCgt: Integer);
    function GetFilNff: Integer;
    procedure SetFilNff(const pFilNff: Integer);
    function GetNumNff: Integer;
    procedure SetNumNff(const pNumNff: Integer);
    function GetForNff: Integer;
    procedure SetForNff(const pForNff: Integer);
    function GetFilNfv: Integer;
    procedure SetFilNfv(const pFilNfv: Integer);
    function GetSnfNfv: string;
    procedure SetSnfNfv(const pSnfNfv: string);
    function GetNumNfv: Integer;
    procedure SetNumNfv(const pNumNfv: Integer);
    function GetFpgApr: Integer;
    procedure SetFpgApr(const pFpgApr: Integer);
    function GetFilOcp: Integer;
    procedure SetFilOcp(const pFilOcp: Integer);
    function GetNumOcp: Integer;
    procedure SetNumOcp(const pNumOcp: Integer);
    function GetOcpFre: Integer;
    procedure SetOcpFre(const pOcpFre: Integer);
    function GetOcpNre: Integer;
    procedure SetOcpNre(const pOcpNre: Integer);
    function GetCtrFre: Integer;
    procedure SetCtrFre(const pCtrFre: Integer);
    function GetCtrNre: Integer;
    procedure SetCtrNre(const pCtrNre: Integer);
    function GetCodBar: string;
    procedure SetCodBar(const pCodBar: string);
    function GetUsuSit: Integer;
    procedure SetUsuSit(const pUsuSit: Integer);
    function GetTipEfe: Char;
    procedure SetTipEfe(const pTipEfe: Char);
    function GetTnsPre: string;
    procedure SetTnsPre(const pTnsPre: string);
    function GetDatPre: TDate;
    procedure SetDatPre(const pDatPre: TDate);
    function GetVlrPre: Double;
    procedure SetVlrPre(const pVlrPre: Double);
    function GetNumArb: Integer;
    procedure SetNumArb(const pNumArb: Integer);
    function GetNumEco: Integer;
    procedure SetNumEco(const pNumEco: Integer);
    function GetTipImp: Integer;
    procedure SetTipImp(const pTipImp: Integer);
    function GetFilImp: Integer;
    procedure SetFilImp(const pFilImp: Integer);
    function GetNumImp: string;
    procedure SetNumImp(const pNumImp: string);
    function GetTptImp: string;
    procedure SetTptImp(const pTptImp: string);
    function GetForImp: Integer;
    procedure SetForImp(const pForImp: Integer);
    function GetSeqImp: Integer;
    procedure SetSeqImp(const pSeqImp: Integer);
    function GetVlrIns: Double;
    procedure SetVlrIns(const pVlrIns: Double);
    function GetPriPgt: Integer;
    procedure SetPriPgt(const pPriPgt: Integer);
    function GetFilCcr: Integer;
    procedure SetFilCcr(const pFilCcr: Integer);
    function GetNumCcr: Integer;
    procedure SetNumCcr(const pNumCcr: Integer);
    function GetTitCar: Char;
    procedure SetTitCar(const pTitCar: Char);
    function GetTitPjr: Char;
    procedure SetTitPjr(const pTitPjr: Char);
    function GetGriFil: Integer;
    procedure SetGriFil(const pGriFil: Integer);
    function GetGriImp: string;
    procedure SetGriImp(const pGriImp: string);
    function GetGriApi: TDate;
    procedure SetGriApi(const pGriApi: TDate);
    function GetGriSeq: Integer;
    procedure SetGriSeq(const pGriSeq: Integer);
    function GetCodSma: string;
    procedure SetCodSma(const pCodSma: string);
    function GetNumMan: Integer;
    procedure SetNumMan(const pNumMan: Integer);
    function GetCpgSub: string;
    procedure SetCpgSub(const pCpgSub: string);
    function GetGerTep: Char;
    procedure SetGerTep(const pGerTep: Char);
    function GetSitDda: Char;
    procedure SetSitDda(const pSitDda: Char);
    function GetUsuGer: Integer;
    procedure SetUsuGer(const pUsuGer: Integer);
    function GetDatGer: TDate;
    procedure SetDatGer(const pDatGer: TDate);
    function GetHorGer: Integer;
    procedure SetHorGer(const pHorGer: Integer);
    function GetRotSap: Integer;
    procedure SetRotSap(const pRotSap: Integer);
    function GetNumPge: string;
    procedure SetNumPge(const pNumPge: string);
    function GetNumDfs: Integer;
    procedure SetNumDfs(const pNumDfs: Integer);
    function GetAutBan: string;
    procedure SetAutBan(const pAutBan: string);
    function GetCtrBan: string;
    procedure SetCtrBan(const pCtrBan: string);
    function GetTitJrs: string;
    procedure SetTitJrs(const pTitJrs: string);
    function GetTptJrs: string;
    procedure SetTptJrs(const pTptJrs: string);
    function GetRotNap: Integer;
    procedure SetRotNap(const pRotNap: Integer);
    function GetNumApr: Integer;
    procedure SetNumApr(const pNumApr: Integer);
    function GetSitApr: string;
    procedure SetSitApr(const pSitApr: string);
    function GetTnsApr: string;
    procedure SetTnsApr(const pTnsApr: string);
    function GetUSU_NumDoi: string;
    procedure SetUSU_NumDoi(const pUSU_NumDoi: string);
    function GetUSU_NumFat: string;
    procedure SetUSU_NumFat(const pUSU_NumFat: string);
    function GetUSU_IndAPr: Char;
    procedure SetUSU_IndAPr(const pUSU_IndAPr: Char);
    function GetUSU_IndAPrSol: Char;
    procedure SetUSU_IndAPrSol(const pUSU_IndAPrSol: Char);
    function GetUSU_IDTIT: Integer;
    procedure SetUSU_IDTIT(const pUSU_IDTIT: Integer);
    function GetUSU_IDCLP: Integer;
    procedure SetUSU_IDCLP(const pUSU_IDCLP: Integer);

    function GetCodEmpOld: Integer;
    procedure SetCodEmpOld(const pCodEmp: Integer);
    function GetCodFilOld: Integer;
    procedure SetCodFilOld(const pCodFil: Integer);
    function GetNumTitOld: string;
    procedure SetNumTitOld(const pNumTit: string);
    function GetCodTptOld: string;
    procedure SetCodTptOld(const pCodTpt: string);
    function GetCodForOld: Integer;
    procedure SetCodForOld(const pCodFor: Integer);
    function GetCodCrpOld: string;
    procedure SetCodCrpOld(const pCodCrp: string);
    function GetCodTnsOld: string;
    procedure SetCodTnsOld(const pCodTns: string);
    function GetCodNtgOld: Integer;
    procedure SetCodNtgOld(const pCodNtg: Integer);
    function GetCodTriOld: string;
    procedure SetCodTriOld(const pCodTri: string);
    function GetSitTitOld: string;
    procedure SetSitTitOld(const pSitTit: string);
    function GetDatEmiOld: TDate;
    procedure SetDatEmiOld(const pDatEmi: TDate);
    function GetDatEntOld: TDate;
    procedure SetDatEntOld(const pDatEnt: TDate);
    function GetObsTcpOld: string;
    procedure SetObsTcpOld(const pObsTcp: string);
    function GetCodFavOld: Integer;
    procedure SetCodFavOld(const pCodFav: Integer);
    function GetVctOriOld: TDate;
    procedure SetVctOriOld(const pVctOri: TDate);
    function GetVlrOriOld: Double;
    procedure SetVlrOriOld(const pVlrOri: Double);
    function GetCodFpgOld: Integer;
    procedure SetCodFpgOld(const pCodFpg: Integer);
    function GetVctProOld: TDate;
    procedure SetVctProOld(const pVctPro: TDate);
    function GetProJrsOld: Char;
    procedure SetProJrsOld(const pProJrs: Char);
    function GetCodMptOld: string;
    procedure SetCodMptOld(const pCodMpt: string);
    function GetDatPptOld: TDate;
    procedure SetDatPptOld(const pDatPpt: TDate);
    function GetVlrAbeOld: Double;
    procedure SetVlrAbeOld(const pVlrAbe: Double);
    function GetCodMoeOld: string;
    procedure SetCodMoeOld(const pCodMoe: string);
    function GetCotEmiOld: Double;
    procedure SetCotEmiOld(const pCotEmi: Double);
    function GetCodFrjOld: string;
    procedure SetCodFrjOld(const pCodFrj: string);
    function GetDatDscOld: TDate;
    procedure SetDatDscOld(const pDatDsc: TDate);
    function GetTolDscOld: Integer;
    procedure SetTolDscOld(const pTolDsc: Integer);
    function GetPerDscOld: Double;
    procedure SetPerDscOld(const pPerDsc: Double);
    function GetVlrDscOld: Double;
    procedure SetVlrDscOld(const pVlrDsc: Double);
    function GetAntDscOld: Char;
    procedure SetAntDscOld(const pAntDsc: Char);
    function GetPerJrsOld: Double;
    procedure SetPerJrsOld(const pPerJrs: Double);
    function GetTipJrsOld: Char;
    procedure SetTipJrsOld(const pTipJrs: Char);
    function GetJrsDiaOld: Double;
    procedure SetJrsDiaOld(const pJrsDia: Double);
    function GetTolJrsOld: Integer;
    procedure SetTolJrsOld(const pTolJrs: Integer);
    function GetDatCjmOld: TDate;
    procedure SetDatCjmOld(const pDatCjm: TDate);
    function GetPerMulOld: Double;
    procedure SetPerMulOld(const pPerMul: Double);
    function GetTolMulOld: Integer;
    procedure SetTolMulOld(const pTolMul: Integer);
    function GetDatNegOld: TDate;
    procedure SetDatNegOld(const pDatNeg: TDate);
    function GetJrsNegOld: Double;
    procedure SetJrsNegOld(const pJrsNeg: Double);
    function GetMulNegOld: Double;
    procedure SetMulNegOld(const pMulNeg: Double);
    function GetDscNegOld: Double;
    procedure SetDscNegOld(const pDscNeg: Double);
    function GetOutNegOld: Double;
    procedure SetOutNegOld(const pOutNeg: Double);
    function GetUsuNegOld: Integer;
    procedure SetUsuNegOld(const pUsuNeg: Integer);
    function GetCotNegOld: Double;
    procedure SetCotNegOld(const pCotNeg: Double);
    function GetCorNegOld: Double;
    procedure SetCorNegOld(const pCorNeg: Double);
    function GetCodPorOld: string;
    procedure SetCodPorOld(const pCodPor: string);
    function GetCodCrtOld: string;
    procedure SetCodCrtOld(const pCodCrt: string);
    function GetTitBanOld: string;
    procedure SetTitBanOld(const pTitBan: string);
    function GetCodUsuOld: Integer;
    procedure SetCodUsuOld(const pCodUsu: Integer);
    function GetDatAprOld: TDate;
    procedure SetDatAprOld(const pDatApr: TDate);
    function GetHorAprOld: Integer;
    procedure SetHorAprOld(const pHorApr: Integer);
    function GetPgtAprOld: TDate;
    procedure SetPgtAprOld(const pPgtApr: TDate);
    function GetVlrAprOld: Double;
    procedure SetVlrAprOld(const pVlrApr: Double);
    function GetCotAprOld: Double;
    procedure SetCotAprOld(const pCotApr: Double);
    function GetDscAprOld: Double;
    procedure SetDscAprOld(const pDscApr: Double);
    function GetOdeAprOld: Double;
    procedure SetOdeAprOld(const pOdeApr: Double);
    function GetJrsAprOld: Double;
    procedure SetJrsAprOld(const pJrsApr: Double);
    function GetMulAprOld: Double;
    procedure SetMulAprOld(const pMulApr: Double);
    function GetEncAprOld: Double;
    procedure SetEncAprOld(const pEncApr: Double);
    function GetCorAprOld: Double;
    procedure SetCorAprOld(const pCorApr: Double);
    function GetOacAprOld: Double;
    procedure SetOacAprOld(const pOacApr: Double);
    function GetIrfAprOld: Double;
    procedure SetIrfAprOld(const pIrfApr: Double);
    function GetVcrAprOld: Char;
    procedure SetVcrAprOld(const pVcrApr: Char);
    function GetEmpAprOld: Integer;
    procedure SetEmpAprOld(const pEmpApr: Integer);
    function GetCtaAprOld: string;
    procedure SetCtaAprOld(const pCtaApr: string);
    function GetSeqAprOld: string;
    procedure SetSeqAprOld(const pSeqApr: string);
    function GetLibAprOld: TDate;
    procedure SetLibAprOld(const pLibApr: TDate);
    function GetUltPgtOld: TDate;
    procedure SetUltPgtOld(const pUltPgt: TDate);
    function GetCodBanOld: string;
    procedure SetCodBanOld(const pCodBan: string);
    function GetCodAgeOld: string;
    procedure SetCodAgeOld(const pCodAge: string);
    function GetCcbForOld: string;
    procedure SetCcbForOld(const pCcbFor: string);
    function GetPorAntOld: string;
    procedure SetPorAntOld(const pPorAnt: string);
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
    function GetDatUcmOld: TDate;
    procedure SetDatUcmOld(const pDatUcm: TDate);
    function GetCotUcmOld: Double;
    procedure SetCotUcmOld(const pCotUcm: Double);
    function GetFilNfcOld: Integer;
    procedure SetFilNfcOld(const pFilNfc: Integer);
    function GetForNfcOld: Integer;
    procedure SetForNfcOld(const pForNfc: Integer);
    function GetNumNfcOld: Integer;
    procedure SetNumNfcOld(const pNumNfc: Integer);
    function GetSnfNfcOld: string;
    procedure SetSnfNfcOld(const pSnfNfc: string);
    function GetFilCtrOld: Integer;
    procedure SetFilCtrOld(const pFilCtr: Integer);
    function GetNumCtrOld: Integer;
    procedure SetNumCtrOld(const pNumCtr: Integer);
    function GetSeqImoOld: Integer;
    procedure SetSeqImoOld(const pSeqImo: Integer);
    function GetSeqCgtOld: Integer;
    procedure SetSeqCgtOld(const pSeqCgt: Integer);
    function GetFilNffOld: Integer;
    procedure SetFilNffOld(const pFilNff: Integer);
    function GetNumNffOld: Integer;
    procedure SetNumNffOld(const pNumNff: Integer);
    function GetForNffOld: Integer;
    procedure SetForNffOld(const pForNff: Integer);
    function GetFilNfvOld: Integer;
    procedure SetFilNfvOld(const pFilNfv: Integer);
    function GetSnfNfvOld: string;
    procedure SetSnfNfvOld(const pSnfNfv: string);
    function GetNumNfvOld: Integer;
    procedure SetNumNfvOld(const pNumNfv: Integer);
    function GetFpgAprOld: Integer;
    procedure SetFpgAprOld(const pFpgApr: Integer);
    function GetFilOcpOld: Integer;
    procedure SetFilOcpOld(const pFilOcp: Integer);
    function GetNumOcpOld: Integer;
    procedure SetNumOcpOld(const pNumOcp: Integer);
    function GetOcpFreOld: Integer;
    procedure SetOcpFreOld(const pOcpFre: Integer);
    function GetOcpNreOld: Integer;
    procedure SetOcpNreOld(const pOcpNre: Integer);
    function GetCtrFreOld: Integer;
    procedure SetCtrFreOld(const pCtrFre: Integer);
    function GetCtrNreOld: Integer;
    procedure SetCtrNreOld(const pCtrNre: Integer);
    function GetCodBarOld: string;
    procedure SetCodBarOld(const pCodBar: string);
    function GetUsuSitOld: Integer;
    procedure SetUsuSitOld(const pUsuSit: Integer);
    function GetTipEfeOld: Char;
    procedure SetTipEfeOld(const pTipEfe: Char);
    function GetTnsPreOld: string;
    procedure SetTnsPreOld(const pTnsPre: string);
    function GetDatPreOld: TDate;
    procedure SetDatPreOld(const pDatPre: TDate);
    function GetVlrPreOld: Double;
    procedure SetVlrPreOld(const pVlrPre: Double);
    function GetNumArbOld: Integer;
    procedure SetNumArbOld(const pNumArb: Integer);
    function GetNumEcoOld: Integer;
    procedure SetNumEcoOld(const pNumEco: Integer);
    function GetTipImpOld: Integer;
    procedure SetTipImpOld(const pTipImp: Integer);
    function GetFilImpOld: Integer;
    procedure SetFilImpOld(const pFilImp: Integer);
    function GetNumImpOld: string;
    procedure SetNumImpOld(const pNumImp: string);
    function GetTptImpOld: string;
    procedure SetTptImpOld(const pTptImp: string);
    function GetForImpOld: Integer;
    procedure SetForImpOld(const pForImp: Integer);
    function GetSeqImpOld: Integer;
    procedure SetSeqImpOld(const pSeqImp: Integer);
    function GetVlrInsOld: Double;
    procedure SetVlrInsOld(const pVlrIns: Double);
    function GetPriPgtOld: Integer;
    procedure SetPriPgtOld(const pPriPgt: Integer);
    function GetFilCcrOld: Integer;
    procedure SetFilCcrOld(const pFilCcr: Integer);
    function GetNumCcrOld: Integer;
    procedure SetNumCcrOld(const pNumCcr: Integer);
    function GetTitCarOld: Char;
    procedure SetTitCarOld(const pTitCar: Char);
    function GetTitPjrOld: Char;
    procedure SetTitPjrOld(const pTitPjr: Char);
    function GetGriFilOld: Integer;
    procedure SetGriFilOld(const pGriFil: Integer);
    function GetGriImpOld: string;
    procedure SetGriImpOld(const pGriImp: string);
    function GetGriApiOld: TDate;
    procedure SetGriApiOld(const pGriApi: TDate);
    function GetGriSeqOld: Integer;
    procedure SetGriSeqOld(const pGriSeq: Integer);
    function GetCodSmaOld: string;
    procedure SetCodSmaOld(const pCodSma: string);
    function GetNumManOld: Integer;
    procedure SetNumManOld(const pNumMan: Integer);
    function GetCpgSubOld: string;
    procedure SetCpgSubOld(const pCpgSub: string);
    function GetGerTepOld: Char;
    procedure SetGerTepOld(const pGerTep: Char);
    function GetSitDdaOld: Char;
    procedure SetSitDdaOld(const pSitDda: Char);
    function GetUsuGerOld: Integer;
    procedure SetUsuGerOld(const pUsuGer: Integer);
    function GetDatGerOld: TDate;
    procedure SetDatGerOld(const pDatGer: TDate);
    function GetHorGerOld: Integer;
    procedure SetHorGerOld(const pHorGer: Integer);
    function GetRotSapOld: Integer;
    procedure SetRotSapOld(const pRotSap: Integer);
    function GetNumPgeOld: string;
    procedure SetNumPgeOld(const pNumPge: string);
    function GetNumDfsOld: Integer;
    procedure SetNumDfsOld(const pNumDfs: Integer);
    function GetAutBanOld: string;
    procedure SetAutBanOld(const pAutBan: string);
    function GetCtrBanOld: string;
    procedure SetCtrBanOld(const pCtrBan: string);
    function GetTitJrsOld: string;
    procedure SetTitJrsOld(const pTitJrs: string);
    function GetTptJrsOld: string;
    procedure SetTptJrsOld(const pTptJrs: string);
    function GetRotNapOld: Integer;
    procedure SetRotNapOld(const pRotNap: Integer);
    function GetNumAprOld: Integer;
    procedure SetNumAprOld(const pNumApr: Integer);
    function GetSitAprOld: string;
    procedure SetSitAprOld(const pSitApr: string);
    function GetTnsAprOld: string;
    procedure SetTnsAprOld(const pTnsApr: string);
    function GetUSU_NumDoiOld: string;
    procedure SetUSU_NumDoiOld(const pUSU_NumDoi: string);
    function GetUSU_NumFatOld: string;
    procedure SetUSU_NumFatOld(const pUSU_NumFat: string);
    function GetUSU_IndAPrOld: Char;
    procedure SetUSU_IndAPrOld(const pUSU_IndAPr: Char);
    function GetUSU_IndAPrSolOld: Char;
    procedure SetUSU_IndAPrSolOld(const pUSU_IndAPrSol: Char);
    function GetUSU_IDTITOld: Integer;
    procedure SetUSU_IDTITOld(const pUSU_IDTIT: Integer);
    function GetUSU_IDCLPOld: Integer;
    procedure SetUSU_IDCLPOld(const pUSU_IDCLP: Integer);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property CodEmp: Integer read GetCodEmp write SetCodEmp;
    property CodFil: Integer read GetCodFil write SetCodFil;
    property NumTit: string read GetNumTit write SetNumTit;
    property CodTpt: string read GetCodTpt write SetCodTpt;
    property CodFor: Integer read GetCodFor write SetCodFor;
    property CodCrp: string read GetCodCrp write SetCodCrp;
    property CodTns: string read GetCodTns write SetCodTns;
    property CodNtg: Integer read GetCodNtg write SetCodNtg;
    property CodTri: string read GetCodTri write SetCodTri;
    property SitTit: string read GetSitTit write SetSitTit;
    property DatEmi: TDate read GetDatEmi write SetDatEmi;
    property DatEnt: TDate read GetDatEnt write SetDatEnt;
    property ObsTcp: string read GetObsTcp write SetObsTcp;
    property CodFav: Integer read GetCodFav write SetCodFav;
    property VctOri: TDate read GetVctOri write SetVctOri;
    property VlrOri: Double read GetVlrOri write SetVlrOri;
    property CodFpg: Integer read GetCodFpg write SetCodFpg;
    property VctPro: TDate read GetVctPro write SetVctPro;
    property ProJrs: Char read GetProJrs write SetProJrs;
    property CodMpt: string read GetCodMpt write SetCodMpt;
    property DatPpt: TDate read GetDatPpt write SetDatPpt;
    property VlrAbe: Double read GetVlrAbe write SetVlrAbe;
    property CodMoe: string read GetCodMoe write SetCodMoe;
    property CotEmi: Double read GetCotEmi write SetCotEmi;
    property CodFrj: string read GetCodFrj write SetCodFrj;
    property DatDsc: TDate read GetDatDsc write SetDatDsc;
    property TolDsc: Integer read GetTolDsc write SetTolDsc;
    property PerDsc: Double read GetPerDsc write SetPerDsc;
    property VlrDsc: Double read GetVlrDsc write SetVlrDsc;
    property AntDsc: Char read GetAntDsc write SetAntDsc;
    property PerJrs: Double read GetPerJrs write SetPerJrs;
    property TipJrs: Char read GetTipJrs write SetTipJrs;
    property JrsDia: Double read GetJrsDia write SetJrsDia;
    property TolJrs: Integer read GetTolJrs write SetTolJrs;
    property DatCjm: TDate read GetDatCjm write SetDatCjm;
    property PerMul: Double read GetPerMul write SetPerMul;
    property TolMul: Integer read GetTolMul write SetTolMul;
    property DatNeg: TDate read GetDatNeg write SetDatNeg;
    property JrsNeg: Double read GetJrsNeg write SetJrsNeg;
    property MulNeg: Double read GetMulNeg write SetMulNeg;
    property DscNeg: Double read GetDscNeg write SetDscNeg;
    property OutNeg: Double read GetOutNeg write SetOutNeg;
    property UsuNeg: Integer read GetUsuNeg write SetUsuNeg;
    property CotNeg: Double read GetCotNeg write SetCotNeg;
    property CorNeg: Double read GetCorNeg write SetCorNeg;
    property CodPor: string read GetCodPor write SetCodPor;
    property CodCrt: string read GetCodCrt write SetCodCrt;
    property TitBan: string read GetTitBan write SetTitBan;
    property CodUsu: Integer read GetCodUsu write SetCodUsu;
    property DatApr: TDate read GetDatApr write SetDatApr;
    property HorApr: Integer read GetHorApr write SetHorApr;
    property PgtApr: TDate read GetPgtApr write SetPgtApr;
    property VlrApr: Double read GetVlrApr write SetVlrApr;
    property CotApr: Double read GetCotApr write SetCotApr;
    property DscApr: Double read GetDscApr write SetDscApr;
    property OdeApr: Double read GetOdeApr write SetOdeApr;
    property JrsApr: Double read GetJrsApr write SetJrsApr;
    property MulApr: Double read GetMulApr write SetMulApr;
    property EncApr: Double read GetEncApr write SetEncApr;
    property CorApr: Double read GetCorApr write SetCorApr;
    property OacApr: Double read GetOacApr write SetOacApr;
    property IrfApr: Double read GetIrfApr write SetIrfApr;
    property VcrApr: Char read GetVcrApr write SetVcrApr;
    property EmpApr: Integer read GetEmpApr write SetEmpApr;
    property CtaApr: string read GetCtaApr write SetCtaApr;
    property SeqApr: string read GetSeqApr write SetSeqApr;
    property LibApr: TDate read GetLibApr write SetLibApr;
    property UltPgt: TDate read GetUltPgt write SetUltPgt;
    property CodBan: string read GetCodBan write SetCodBan;
    property CodAge: string read GetCodAge write SetCodAge;
    property CcbFor: string read GetCcbFor write SetCcbFor;
    property PorAnt: string read GetPorAnt write SetPorAnt;
    property NumPrj: Integer read GetNumPrj write SetNumPrj;
    property CodFpj: Integer read GetCodFpj write SetCodFpj;
    property CtaFin: Integer read GetCtaFin write SetCtaFin;
    property CtaRed: Integer read GetCtaRed write SetCtaRed;
    property CodCcu: string read GetCodCcu write SetCodCcu;
    property DatUcm: TDate read GetDatUcm write SetDatUcm;
    property CotUcm: Double read GetCotUcm write SetCotUcm;
    property FilNfc: Integer read GetFilNfc write SetFilNfc;
    property ForNfc: Integer read GetForNfc write SetForNfc;
    property NumNfc: Integer read GetNumNfc write SetNumNfc;
    property SnfNfc: string read GetSnfNfc write SetSnfNfc;
    property FilCtr: Integer read GetFilCtr write SetFilCtr;
    property NumCtr: Integer read GetNumCtr write SetNumCtr;
    property SeqImo: Integer read GetSeqImo write SetSeqImo;
    property SeqCgt: Integer read GetSeqCgt write SetSeqCgt;
    property FilNff: Integer read GetFilNff write SetFilNff;
    property NumNff: Integer read GetNumNff write SetNumNff;
    property ForNff: Integer read GetForNff write SetForNff;
    property FilNfv: Integer read GetFilNfv write SetFilNfv;
    property SnfNfv: string read GetSnfNfv write SetSnfNfv;
    property NumNfv: Integer read GetNumNfv write SetNumNfv;
    property FpgApr: Integer read GetFpgApr write SetFpgApr;
    property FilOcp: Integer read GetFilOcp write SetFilOcp;
    property NumOcp: Integer read GetNumOcp write SetNumOcp;
    property OcpFre: Integer read GetOcpFre write SetOcpFre;
    property OcpNre: Integer read GetOcpNre write SetOcpNre;
    property CtrFre: Integer read GetCtrFre write SetCtrFre;
    property CtrNre: Integer read GetCtrNre write SetCtrNre;
    property CodBar: string read GetCodBar write SetCodBar;
    property UsuSit: Integer read GetUsuSit write SetUsuSit;
    property TipEfe: Char read GetTipEfe write SetTipEfe;
    property TnsPre: string read GetTnsPre write SetTnsPre;
    property DatPre: TDate read GetDatPre write SetDatPre;
    property VlrPre: Double read GetVlrPre write SetVlrPre;
    property NumArb: Integer read GetNumArb write SetNumArb;
    property NumEco: Integer read GetNumEco write SetNumEco;
    property TipImp: Integer read GetTipImp write SetTipImp;
    property FilImp: Integer read GetFilImp write SetFilImp;
    property NumImp: string read GetNumImp write SetNumImp;
    property TptImp: string read GetTptImp write SetTptImp;
    property ForImp: Integer read GetForImp write SetForImp;
    property SeqImp: Integer read GetSeqImp write SetSeqImp;
    property VlrIns: Double read GetVlrIns write SetVlrIns;
    property PriPgt: Integer read GetPriPgt write SetPriPgt;
    property FilCcr: Integer read GetFilCcr write SetFilCcr;
    property NumCcr: Integer read GetNumCcr write SetNumCcr;
    property TitCar: Char read GetTitCar write SetTitCar;
    property TitPjr: Char read GetTitPjr write SetTitPjr;
    property GriFil: Integer read GetGriFil write SetGriFil;
    property GriImp: string read GetGriImp write SetGriImp;
    property GriApi: TDate read GetGriApi write SetGriApi;
    property GriSeq: Integer read GetGriSeq write SetGriSeq;
    property CodSma: string read GetCodSma write SetCodSma;
    property NumMan: Integer read GetNumMan write SetNumMan;
    property CpgSub: string read GetCpgSub write SetCpgSub;
    property GerTep: Char read GetGerTep write SetGerTep;
    property SitDda: Char read GetSitDda write SetSitDda;
    property UsuGer: Integer read GetUsuGer write SetUsuGer;
    property DatGer: TDate read GetDatGer write SetDatGer;
    property HorGer: Integer read GetHorGer write SetHorGer;
    property RotSap: Integer read GetRotSap write SetRotSap;
    property NumPge: string read GetNumPge write SetNumPge;
    property NumDfs: Integer read GetNumDfs write SetNumDfs;
    property AutBan: string read GetAutBan write SetAutBan;
    property CtrBan: string read GetCtrBan write SetCtrBan;
    property TitJrs: string read GetTitJrs write SetTitJrs;
    property TptJrs: string read GetTptJrs write SetTptJrs;
    property RotNap: Integer read GetRotNap write SetRotNap;
    property NumApr: Integer read GetNumApr write SetNumApr;
    property SitApr: string read GetSitApr write SetSitApr;
    property TnsApr: string read GetTnsApr write SetTnsApr;
    property USU_NumDoi: string read GetUSU_NumDoi write SetUSU_NumDoi;
    property USU_NumFat: string read GetUSU_NumFat write SetUSU_NumFat;
    property USU_IndAPr: Char read GetUSU_IndAPr write SetUSU_IndAPr;
    property USU_IndAPrSol: Char read GetUSU_IndAPrSol write SetUSU_IndAPrSol;
    property USU_IDTIT: Integer read GetUSU_IDTIT write SetUSU_IDTIT;
    property USU_IDCLP: Integer read GetUSU_IDCLP write SetUSU_IDCLP;

    property OLD_CodEmp: Integer read GetCodEmpOLD write SetCodEmpOLD;
    property OLD_CodFil: Integer read GetCodFilOLD write SetCodFilOLD;
    property OLD_NumTit: string read GetNumTitOLD write SetNumTitOLD;
    property OLD_CodTpt: string read GetCodTptOLD write SetCodTptOLD;
    property OLD_CodFor: Integer read GetCodForOLD write SetCodForOLD;
    property OLD_CodCrp: string read GetCodCrpOLD write SetCodCrpOLD;
    property OLD_CodTns: string read GetCodTnsOLD write SetCodTnsOLD;
    property OLD_CodNtg: Integer read GetCodNtgOLD write SetCodNtgOLD;
    property OLD_CodTri: string read GetCodTriOLD write SetCodTriOLD;
    property OLD_SitTit: string read GetSitTitOLD write SetSitTitOLD;
    property OLD_DatEmi: TDate read GetDatEmiOLD write SetDatEmiOLD;
    property OLD_DatEnt: TDate read GetDatEntOLD write SetDatEntOLD;
    property OLD_ObsTcp: string read GetObsTcpOLD write SetObsTcpOLD;
    property OLD_CodFav: Integer read GetCodFavOLD write SetCodFavOLD;
    property OLD_VctOri: TDate read GetVctOriOLD write SetVctOriOLD;
    property OLD_VlrOri: Double read GetVlrOriOLD write SetVlrOriOLD;
    property OLD_CodFpg: Integer read GetCodFpgOLD write SetCodFpgOLD;
    property OLD_VctPro: TDate read GetVctProOLD write SetVctProOLD;
    property OLD_ProJrs: Char read GetProJrsOLD write SetProJrsOLD;
    property OLD_CodMpt: string read GetCodMptOLD write SetCodMptOLD;
    property OLD_DatPpt: TDate read GetDatPptOLD write SetDatPptOLD;
    property OLD_VlrAbe: Double read GetVlrAbeOLD write SetVlrAbeOLD;
    property OLD_CodMoe: string read GetCodMoeOLD write SetCodMoeOLD;
    property OLD_CotEmi: Double read GetCotEmiOLD write SetCotEmiOLD;
    property OLD_CodFrj: string read GetCodFrjOLD write SetCodFrjOLD;
    property OLD_DatDsc: TDate read GetDatDscOLD write SetDatDscOLD;
    property OLD_TolDsc: Integer read GetTolDscOLD write SetTolDscOLD;
    property OLD_PerDsc: Double read GetPerDscOLD write SetPerDscOLD;
    property OLD_VlrDsc: Double read GetVlrDscOLD write SetVlrDscOLD;
    property OLD_AntDsc: Char read GetAntDscOLD write SetAntDscOLD;
    property OLD_PerJrs: Double read GetPerJrsOLD write SetPerJrsOLD;
    property OLD_TipJrs: Char read GetTipJrsOLD write SetTipJrsOLD;
    property OLD_JrsDia: Double read GetJrsDiaOLD write SetJrsDiaOLD;
    property OLD_TolJrs: Integer read GetTolJrsOLD write SetTolJrsOLD;
    property OLD_DatCjm: TDate read GetDatCjmOLD write SetDatCjmOLD;
    property OLD_PerMul: Double read GetPerMulOLD write SetPerMulOLD;
    property OLD_TolMul: Integer read GetTolMulOLD write SetTolMulOLD;
    property OLD_DatNeg: TDate read GetDatNegOLD write SetDatNegOLD;
    property OLD_JrsNeg: Double read GetJrsNegOLD write SetJrsNegOLD;
    property OLD_MulNeg: Double read GetMulNegOLD write SetMulNegOLD;
    property OLD_DscNeg: Double read GetDscNegOLD write SetDscNegOLD;
    property OLD_OutNeg: Double read GetOutNegOLD write SetOutNegOLD;
    property OLD_UsuNeg: Integer read GetUsuNegOLD write SetUsuNegOLD;
    property OLD_CotNeg: Double read GetCotNegOLD write SetCotNegOLD;
    property OLD_CorNeg: Double read GetCorNegOLD write SetCorNegOLD;
    property OLD_CodPor: string read GetCodPorOLD write SetCodPorOLD;
    property OLD_CodCrt: string read GetCodCrtOLD write SetCodCrtOLD;
    property OLD_TitBan: string read GetTitBanOLD write SetTitBanOLD;
    property OLD_CodUsu: Integer read GetCodUsuOLD write SetCodUsuOLD;
    property OLD_DatApr: TDate read GetDatAprOLD write SetDatAprOLD;
    property OLD_HorApr: Integer read GetHorAprOLD write SetHorAprOLD;
    property OLD_PgtApr: TDate read GetPgtAprOLD write SetPgtAprOLD;
    property OLD_VlrApr: Double read GetVlrAprOLD write SetVlrAprOLD;
    property OLD_CotApr: Double read GetCotAprOLD write SetCotAprOLD;
    property OLD_DscApr: Double read GetDscAprOLD write SetDscAprOLD;
    property OLD_OdeApr: Double read GetOdeAprOLD write SetOdeAprOLD;
    property OLD_JrsApr: Double read GetJrsAprOLD write SetJrsAprOLD;
    property OLD_MulApr: Double read GetMulAprOLD write SetMulAprOLD;
    property OLD_EncApr: Double read GetEncAprOLD write SetEncAprOLD;
    property OLD_CorApr: Double read GetCorAprOLD write SetCorAprOLD;
    property OLD_OacApr: Double read GetOacAprOLD write SetOacAprOLD;
    property OLD_IrfApr: Double read GetIrfAprOLD write SetIrfAprOLD;
    property OLD_VcrApr: Char read GetVcrAprOLD write SetVcrAprOLD;
    property OLD_EmpApr: Integer read GetEmpAprOLD write SetEmpAprOLD;
    property OLD_CtaApr: string read GetCtaAprOLD write SetCtaAprOLD;
    property OLD_SeqApr: string read GetSeqAprOLD write SetSeqAprOLD;
    property OLD_LibApr: TDate read GetLibAprOLD write SetLibAprOLD;
    property OLD_UltPgt: TDate read GetUltPgtOLD write SetUltPgtOLD;
    property OLD_CodBan: string read GetCodBanOLD write SetCodBanOLD;
    property OLD_CodAge: string read GetCodAgeOLD write SetCodAgeOLD;
    property OLD_CcbFor: string read GetCcbForOLD write SetCcbForOLD;
    property OLD_PorAnt: string read GetPorAntOLD write SetPorAntOLD;
    property OLD_NumPrj: Integer read GetNumPrjOLD write SetNumPrjOLD;
    property OLD_CodFpj: Integer read GetCodFpjOLD write SetCodFpjOLD;
    property OLD_CtaFin: Integer read GetCtaFinOLD write SetCtaFinOLD;
    property OLD_CtaRed: Integer read GetCtaRedOLD write SetCtaRedOLD;
    property OLD_CodCcu: string read GetCodCcuOLD write SetCodCcuOLD;
    property OLD_DatUcm: TDate read GetDatUcmOLD write SetDatUcmOLD;
    property OLD_CotUcm: Double read GetCotUcmOLD write SetCotUcmOLD;
    property OLD_FilNfc: Integer read GetFilNfcOLD write SetFilNfcOLD;
    property OLD_ForNfc: Integer read GetForNfcOLD write SetForNfcOLD;
    property OLD_NumNfc: Integer read GetNumNfcOLD write SetNumNfcOLD;
    property OLD_SnfNfc: string read GetSnfNfcOLD write SetSnfNfcOLD;
    property OLD_FilCtr: Integer read GetFilCtrOLD write SetFilCtrOLD;
    property OLD_NumCtr: Integer read GetNumCtrOLD write SetNumCtrOLD;
    property OLD_SeqImo: Integer read GetSeqImoOLD write SetSeqImoOLD;
    property OLD_SeqCgt: Integer read GetSeqCgtOLD write SetSeqCgtOLD;
    property OLD_FilNff: Integer read GetFilNffOLD write SetFilNffOLD;
    property OLD_NumNff: Integer read GetNumNffOLD write SetNumNffOLD;
    property OLD_ForNff: Integer read GetForNffOLD write SetForNffOLD;
    property OLD_FilNfv: Integer read GetFilNfvOLD write SetFilNfvOLD;
    property OLD_SnfNfv: string read GetSnfNfvOLD write SetSnfNfvOLD;
    property OLD_NumNfv: Integer read GetNumNfvOLD write SetNumNfvOLD;
    property OLD_FpgApr: Integer read GetFpgAprOLD write SetFpgAprOLD;
    property OLD_FilOcp: Integer read GetFilOcpOLD write SetFilOcpOLD;
    property OLD_NumOcp: Integer read GetNumOcpOLD write SetNumOcpOLD;
    property OLD_OcpFre: Integer read GetOcpFreOLD write SetOcpFreOLD;
    property OLD_OcpNre: Integer read GetOcpNreOLD write SetOcpNreOLD;
    property OLD_CtrFre: Integer read GetCtrFreOLD write SetCtrFreOLD;
    property OLD_CtrNre: Integer read GetCtrNreOLD write SetCtrNreOLD;
    property OLD_CodBar: string read GetCodBarOLD write SetCodBarOLD;
    property OLD_UsuSit: Integer read GetUsuSitOLD write SetUsuSitOLD;
    property OLD_TipEfe: Char read GetTipEfeOLD write SetTipEfeOLD;
    property OLD_TnsPre: string read GetTnsPreOLD write SetTnsPreOLD;
    property OLD_DatPre: TDate read GetDatPreOLD write SetDatPreOLD;
    property OLD_VlrPre: Double read GetVlrPreOLD write SetVlrPreOLD;
    property OLD_NumArb: Integer read GetNumArbOLD write SetNumArbOLD;
    property OLD_NumEco: Integer read GetNumEcoOLD write SetNumEcoOLD;
    property OLD_TipImp: Integer read GetTipImpOLD write SetTipImpOLD;
    property OLD_FilImp: Integer read GetFilImpOLD write SetFilImpOLD;
    property OLD_NumImp: string read GetNumImpOLD write SetNumImpOLD;
    property OLD_TptImp: string read GetTptImpOLD write SetTptImpOLD;
    property OLD_ForImp: Integer read GetForImpOLD write SetForImpOLD;
    property OLD_SeqImp: Integer read GetSeqImpOLD write SetSeqImpOLD;
    property OLD_VlrIns: Double read GetVlrInsOLD write SetVlrInsOLD;
    property OLD_PriPgt: Integer read GetPriPgtOLD write SetPriPgtOLD;
    property OLD_FilCcr: Integer read GetFilCcrOLD write SetFilCcrOLD;
    property OLD_NumCcr: Integer read GetNumCcrOLD write SetNumCcrOLD;
    property OLD_TitCar: Char read GetTitCarOLD write SetTitCarOLD;
    property OLD_TitPjr: Char read GetTitPjrOLD write SetTitPjrOLD;
    property OLD_GriFil: Integer read GetGriFilOLD write SetGriFilOLD;
    property OLD_GriImp: string read GetGriImpOLD write SetGriImpOLD;
    property OLD_GriApi: TDate read GetGriApiOLD write SetGriApiOLD;
    property OLD_GriSeq: Integer read GetGriSeqOLD write SetGriSeqOLD;
    property OLD_CodSma: string read GetCodSmaOLD write SetCodSmaOLD;
    property OLD_NumMan: Integer read GetNumManOLD write SetNumManOLD;
    property OLD_CpgSub: string read GetCpgSubOLD write SetCpgSubOLD;
    property OLD_GerTep: Char read GetGerTepOLD write SetGerTepOLD;
    property OLD_SitDda: Char read GetSitDdaOLD write SetSitDdaOLD;
    property OLD_UsuGer: Integer read GetUsuGerOLD write SetUsuGerOLD;
    property OLD_DatGer: TDate read GetDatGerOLD write SetDatGerOLD;
    property OLD_HorGer: Integer read GetHorGerOLD write SetHorGerOLD;
    property OLD_RotSap: Integer read GetRotSapOLD write SetRotSapOLD;
    property OLD_NumPge: string read GetNumPgeOLD write SetNumPgeOLD;
    property OLD_NumDfs: Integer read GetNumDfsOLD write SetNumDfsOLD;
    property OLD_AutBan: string read GetAutBanOLD write SetAutBanOLD;
    property OLD_CtrBan: string read GetCtrBanOLD write SetCtrBanOLD;
    property OLD_TitJrs: string read GetTitJrsOLD write SetTitJrsOLD;
    property OLD_TptJrs: string read GetTptJrsOLD write SetTptJrsOLD;
    property OLD_RotNap: Integer read GetRotNapOLD write SetRotNapOLD;
    property OLD_NumApr: Integer read GetNumAprOLD write SetNumAprOLD;
    property OLD_SitApr: string read GetSitAprOLD write SetSitAprOLD;
    property OLD_TnsApr: string read GetTnsAprOLD write SetTnsAprOLD;
    property OLD_USU_NumDoi: string read GetUSU_NumDoiOLD write SetUSU_NumDoiOLD;
    property OLD_USU_NumFat: string read GetUSU_NumFatOLD write SetUSU_NumFatOLD;
    property OLD_USU_IndAPr: Char read GetUSU_IndAPrOLD write SetUSU_IndAPrOLD;
    property OLD_USU_IndAPrSol: Char read GetUSU_IndAPrSolOLD write SetUSU_IndAPrSolOLD;
    property OLD_USU_IDTIT: Integer read GetUSU_IDTITOLD write SetUSU_IDTITOLD;
    property OLD_USU_IDCLP: Integer read GetUSU_IDCLPOLD write SetUSU_IDCLPOLD;
  end;

implementation

{ T501TCP }

constructor T501TCP.Create();
begin
  AddForeignKeys(['CodEmp','CodFil','CodTpt','CodFor','CodTns','CodPor','CodCrt'], ['CodEmp','CodFil','CodTpt','CodFor','CodTns','CodPor','CodCrt']);
  AddPrimaryKeys('CodEmp;CodFil;NumTit;CodTpt;CodFor');

  inherited Create('E501TCP');
end;

destructor T501TCP.Destroy();
begin
  inherited;
end;

function T501TCP.GetCodEmp: Integer;
begin
  Result := FCodEmp;
end;

procedure T501TCP.SetCodEmp(const pCodEmp: Integer);
begin
  FCodEmp := pCodEmp;

  CheckField('CodEmp');
end;

function T501TCP.GetCodFil: Integer;
begin
  Result := FCodFil;
end;

procedure T501TCP.SetCodFil(const pCodFil: Integer);
begin
  FCodFil := pCodFil;

  CheckField('CodFil');
end;

function T501TCP.GetNumTit: string;
begin
  Result := FNumTit;
end;

procedure T501TCP.SetNumTit(const pNumTit: string);
begin
  FNumTit := pNumTit;

  CheckField('NumTit');
end;

function T501TCP.GetCodTpt: string;
begin
  Result := FCodTpt;
end;

procedure T501TCP.SetCodTpt(const pCodTpt: string);
begin
  FCodTpt := pCodTpt;

  CheckField('CodTpt');
end;

function T501TCP.GetCodFor: Integer;
begin
  Result := FCodFor;
end;

procedure T501TCP.SetCodFor(const pCodFor: Integer);
begin
  FCodFor := pCodFor;

  CheckField('CodFor');
end;

function T501TCP.GetCodCrp: string;
begin
  Result := FCodCrp;
end;

procedure T501TCP.SetCodCrp(const pCodCrp: string);
begin
  FCodCrp := pCodCrp;

  CheckField('CodCrp');
end;

function T501TCP.GetCodTns: string;
begin
  Result := FCodTns;
end;

procedure T501TCP.SetCodTns(const pCodTns: string);
begin
  FCodTns := pCodTns;

  CheckField('CodTns');
end;

function T501TCP.GetCodNtg: Integer;
begin
  Result := FCodNtg;
end;

procedure T501TCP.SetCodNtg(const pCodNtg: Integer);
begin
  FCodNtg := pCodNtg;

  CheckField('CodNtg');
end;

function T501TCP.GetCodTri: string;
begin
  Result := FCodTri;
end;

procedure T501TCP.SetCodTri(const pCodTri: string);
begin
  FCodTri := pCodTri;

  CheckField('CodTri');
end;

function T501TCP.GetSitTit: string;
begin
  Result := FSitTit;
end;

procedure T501TCP.SetSitTit(const pSitTit: string);
begin
  FSitTit := pSitTit;

  CheckField('SitTit');
end;

function T501TCP.GetDatEmi: TDate;
begin
  Result := FDatEmi;
end;

procedure T501TCP.SetDatEmi(const pDatEmi: TDate);
begin
  FDatEmi := pDatEmi;

  CheckField('DatEmi');
end;

function T501TCP.GetDatEnt: TDate;
begin
  Result := FDatEnt;
end;

procedure T501TCP.SetDatEnt(const pDatEnt: TDate);
begin
  FDatEnt := pDatEnt;

  CheckField('DatEnt');
end;

function T501TCP.GetObsTcp: string;
begin
  Result := FObsTcp;
end;

procedure T501TCP.SetObsTcp(const pObsTcp: string);
begin
  FObsTcp := pObsTcp;

  CheckField('ObsTcp');
end;

function T501TCP.GetCodFav: Integer;
begin
  Result := FCodFav;
end;

procedure T501TCP.SetCodFav(const pCodFav: Integer);
begin
  FCodFav := pCodFav;

  CheckField('CodFav');
end;

function T501TCP.GetVctOri: TDate;
begin
  Result := FVctOri;
end;

procedure T501TCP.SetVctOri(const pVctOri: TDate);
begin
  FVctOri := pVctOri;

  CheckField('VctOri');
end;

function T501TCP.GetVlrOri: Double;
begin
  Result := FVlrOri;
end;

procedure T501TCP.SetVlrOri(const pVlrOri: Double);
begin
  FVlrOri := pVlrOri;

  CheckField('VlrOri');
end;

function T501TCP.GetCodFpg: Integer;
begin
  Result := FCodFpg;
end;

procedure T501TCP.SetCodFpg(const pCodFpg: Integer);
begin
  FCodFpg := pCodFpg;

  CheckField('CodFpg');
end;

function T501TCP.GetVctPro: TDate;
begin
  Result := FVctPro;
end;

procedure T501TCP.SetVctPro(const pVctPro: TDate);
begin
  FVctPro := pVctPro;

  CheckField('VctPro');
end;

function T501TCP.GetProJrs: Char;
begin
  Result := FProJrs;
end;

procedure T501TCP.SetProJrs(const pProJrs: Char);
begin
  FProJrs := pProJrs;

  CheckField('ProJrs');
end;

function T501TCP.GetCodMpt: string;
begin
  Result := FCodMpt;
end;

procedure T501TCP.SetCodMpt(const pCodMpt: string);
begin
  FCodMpt := pCodMpt;

  CheckField('CodMpt');
end;

function T501TCP.GetDatPpt: TDate;
begin
  Result := FDatPpt;
end;

procedure T501TCP.SetDatPpt(const pDatPpt: TDate);
begin
  FDatPpt := pDatPpt;

  CheckField('DatPpt');
end;

function T501TCP.GetVlrAbe: Double;
begin
  Result := FVlrAbe;
end;

procedure T501TCP.SetVlrAbe(const pVlrAbe: Double);
begin
  FVlrAbe := pVlrAbe;

  CheckField('VlrAbe');
end;

function T501TCP.GetCodMoe: string;
begin
  Result := FCodMoe;
end;

procedure T501TCP.SetCodMoe(const pCodMoe: string);
begin
  FCodMoe := pCodMoe;

  CheckField('CodMoe');
end;

function T501TCP.GetCotEmi: Double;
begin
  Result := FCotEmi;
end;

procedure T501TCP.SetCotEmi(const pCotEmi: Double);
begin
  FCotEmi := pCotEmi;

  CheckField('CotEmi');
end;

function T501TCP.GetCodFrj: string;
begin
  Result := FCodFrj;
end;

procedure T501TCP.SetCodFrj(const pCodFrj: string);
begin
  FCodFrj := pCodFrj;

  CheckField('CodFrj');
end;

function T501TCP.GetDatDsc: TDate;
begin
  Result := FDatDsc;
end;

procedure T501TCP.SetDatDsc(const pDatDsc: TDate);
begin
  FDatDsc := pDatDsc;

  CheckField('DatDsc');
end;

function T501TCP.GetTolDsc: Integer;
begin
  Result := FTolDsc;
end;

procedure T501TCP.SetTolDsc(const pTolDsc: Integer);
begin
  FTolDsc := pTolDsc;

  CheckField('TolDsc');
end;

function T501TCP.GetPerDsc: Double;
begin
  Result := FPerDsc;
end;

procedure T501TCP.SetPerDsc(const pPerDsc: Double);
begin
  FPerDsc := pPerDsc;

  CheckField('PerDsc');
end;

function T501TCP.GetVlrDsc: Double;
begin
  Result := FVlrDsc;
end;

procedure T501TCP.SetVlrDsc(const pVlrDsc: Double);
begin
  FVlrDsc := pVlrDsc;

  CheckField('VlrDsc');
end;

function T501TCP.GetAntDsc: Char;
begin
  Result := FAntDsc;
end;

procedure T501TCP.SetAntDsc(const pAntDsc: Char);
begin
  FAntDsc := pAntDsc;

  CheckField('AntDsc');
end;

function T501TCP.GetPerJrs: Double;
begin
  Result := FPerJrs;
end;

procedure T501TCP.SetPerJrs(const pPerJrs: Double);
begin
  FPerJrs := pPerJrs;

  CheckField('PerJrs');
end;

function T501TCP.GetTipJrs: Char;
begin
  Result := FTipJrs;
end;

procedure T501TCP.SetTipJrs(const pTipJrs: Char);
begin
  FTipJrs := pTipJrs;

  CheckField('TipJrs');
end;

function T501TCP.GetJrsDia: Double;
begin
  Result := FJrsDia;
end;

procedure T501TCP.SetJrsDia(const pJrsDia: Double);
begin
  FJrsDia := pJrsDia;

  CheckField('JrsDia');
end;

function T501TCP.GetTolJrs: Integer;
begin
  Result := FTolJrs;
end;

procedure T501TCP.SetTolJrs(const pTolJrs: Integer);
begin
  FTolJrs := pTolJrs;

  CheckField('TolJrs');
end;

function T501TCP.GetDatCjm: TDate;
begin
  Result := FDatCjm;
end;

procedure T501TCP.SetDatCjm(const pDatCjm: TDate);
begin
  FDatCjm := pDatCjm;

  CheckField('DatCjm');
end;

function T501TCP.GetPerMul: Double;
begin
  Result := FPerMul;
end;

procedure T501TCP.SetPerMul(const pPerMul: Double);
begin
  FPerMul := pPerMul;

  CheckField('PerMul');
end;

function T501TCP.GetTolMul: Integer;
begin
  Result := FTolMul;
end;

procedure T501TCP.SetTolMul(const pTolMul: Integer);
begin
  FTolMul := pTolMul;

  CheckField('TolMul');
end;

function T501TCP.GetDatNeg: TDate;
begin
  Result := FDatNeg;
end;

procedure T501TCP.SetDatNeg(const pDatNeg: TDate);
begin
  FDatNeg := pDatNeg;

  CheckField('DatNeg');
end;

function T501TCP.GetJrsNeg: Double;
begin
  Result := FJrsNeg;
end;

procedure T501TCP.SetJrsNeg(const pJrsNeg: Double);
begin
  FJrsNeg := pJrsNeg;

  CheckField('JrsNeg');
end;

function T501TCP.GetMulNeg: Double;
begin
  Result := FMulNeg;
end;

procedure T501TCP.SetMulNeg(const pMulNeg: Double);
begin
  FMulNeg := pMulNeg;

  CheckField('MulNeg');
end;

function T501TCP.GetDscNeg: Double;
begin
  Result := FDscNeg;
end;

procedure T501TCP.SetDscNeg(const pDscNeg: Double);
begin
  FDscNeg := pDscNeg;

  CheckField('DscNeg');
end;

function T501TCP.GetOutNeg: Double;
begin
  Result := FOutNeg;
end;

procedure T501TCP.SetOutNeg(const pOutNeg: Double);
begin
  FOutNeg := pOutNeg;

  CheckField('OutNeg');
end;

function T501TCP.GetUsuNeg: Integer;
begin
  Result := FUsuNeg;
end;

procedure T501TCP.SetUsuNeg(const pUsuNeg: Integer);
begin
  FUsuNeg := pUsuNeg;

  CheckField('UsuNeg');
end;

function T501TCP.GetCotNeg: Double;
begin
  Result := FCotNeg;
end;

procedure T501TCP.SetCotNeg(const pCotNeg: Double);
begin
  FCotNeg := pCotNeg;

  CheckField('CotNeg');
end;

function T501TCP.GetCorNeg: Double;
begin
  Result := FCorNeg;
end;

procedure T501TCP.SetCorNeg(const pCorNeg: Double);
begin
  FCorNeg := pCorNeg;

  CheckField('CorNeg');
end;

function T501TCP.GetCodPor: string;
begin
  Result := FCodPor;
end;

procedure T501TCP.SetCodPor(const pCodPor: string);
begin
  FCodPor := pCodPor;

  CheckField('CodPor');
end;

function T501TCP.GetCodCrt: string;
begin
  Result := FCodCrt;
end;

procedure T501TCP.SetCodCrt(const pCodCrt: string);
begin
  FCodCrt := pCodCrt;

  CheckField('CodCrt');
end;

function T501TCP.GetTitBan: string;
begin
  Result := FTitBan;
end;

procedure T501TCP.SetTitBan(const pTitBan: string);
begin
  FTitBan := pTitBan;

  CheckField('TitBan');
end;

function T501TCP.GetCodUsu: Integer;
begin
  Result := FCodUsu;
end;

procedure T501TCP.SetCodUsu(const pCodUsu: Integer);
begin
  FCodUsu := pCodUsu;

  CheckField('CodUsu');
end;

function T501TCP.GetDatApr: TDate;
begin
  Result := FDatApr;
end;

procedure T501TCP.SetDatApr(const pDatApr: TDate);
begin
  FDatApr := pDatApr;

  CheckField('DatApr');
end;

function T501TCP.GetHorApr: Integer;
begin
  Result := FHorApr;
end;

procedure T501TCP.SetHorApr(const pHorApr: Integer);
begin
  FHorApr := pHorApr;

  CheckField('HorApr');
end;

function T501TCP.GetPgtApr: TDate;
begin
  Result := FPgtApr;
end;

procedure T501TCP.SetPgtApr(const pPgtApr: TDate);
begin
  FPgtApr := pPgtApr;

  CheckField('PgtApr');
end;

function T501TCP.GetVlrApr: Double;
begin
  Result := FVlrApr;
end;

procedure T501TCP.SetVlrApr(const pVlrApr: Double);
begin
  FVlrApr := pVlrApr;

  CheckField('VlrApr');
end;

function T501TCP.GetCotApr: Double;
begin
  Result := FCotApr;
end;

procedure T501TCP.SetCotApr(const pCotApr: Double);
begin
  FCotApr := pCotApr;

  CheckField('CotApr');
end;

function T501TCP.GetDscApr: Double;
begin
  Result := FDscApr;
end;

procedure T501TCP.SetDscApr(const pDscApr: Double);
begin
  FDscApr := pDscApr;

  CheckField('DscApr');
end;

function T501TCP.GetOdeApr: Double;
begin
  Result := FOdeApr;
end;

procedure T501TCP.SetOdeApr(const pOdeApr: Double);
begin
  FOdeApr := pOdeApr;

  CheckField('OdeApr');
end;

function T501TCP.GetJrsApr: Double;
begin
  Result := FJrsApr;
end;

procedure T501TCP.SetJrsApr(const pJrsApr: Double);
begin
  FJrsApr := pJrsApr;

  CheckField('JrsApr');
end;

function T501TCP.GetMulApr: Double;
begin
  Result := FMulApr;
end;

procedure T501TCP.SetMulApr(const pMulApr: Double);
begin
  FMulApr := pMulApr;

  CheckField('MulApr');
end;

function T501TCP.GetEncApr: Double;
begin
  Result := FEncApr;
end;

procedure T501TCP.SetEncApr(const pEncApr: Double);
begin
  FEncApr := pEncApr;

  CheckField('EncApr');
end;

function T501TCP.GetCorApr: Double;
begin
  Result := FCorApr;
end;

procedure T501TCP.SetCorApr(const pCorApr: Double);
begin
  FCorApr := pCorApr;

  CheckField('CorApr');
end;

function T501TCP.GetOacApr: Double;
begin
  Result := FOacApr;
end;

procedure T501TCP.SetOacApr(const pOacApr: Double);
begin
  FOacApr := pOacApr;

  CheckField('OacApr');
end;

function T501TCP.GetIrfApr: Double;
begin
  Result := FIrfApr;
end;

procedure T501TCP.SetIrfApr(const pIrfApr: Double);
begin
  FIrfApr := pIrfApr;

  CheckField('IrfApr');
end;

function T501TCP.GetVcrApr: Char;
begin
  Result := FVcrApr;
end;

procedure T501TCP.SetVcrApr(const pVcrApr: Char);
begin
  FVcrApr := pVcrApr;

  CheckField('VcrApr');
end;

function T501TCP.GetEmpApr: Integer;
begin
  Result := FEmpApr;
end;

procedure T501TCP.SetEmpApr(const pEmpApr: Integer);
begin
  FEmpApr := pEmpApr;

  CheckField('EmpApr');
end;

function T501TCP.GetCtaApr: string;
begin
  Result := FCtaApr;
end;

procedure T501TCP.SetCtaApr(const pCtaApr: string);
begin
  FCtaApr := pCtaApr;

  CheckField('CtaApr');
end;

function T501TCP.GetSeqApr: string;
begin
  Result := FSeqApr;
end;

procedure T501TCP.SetSeqApr(const pSeqApr: string);
begin
  FSeqApr := pSeqApr;

  CheckField('SeqApr');
end;

function T501TCP.GetLibApr: TDate;
begin
  Result := FLibApr;
end;

procedure T501TCP.SetLibApr(const pLibApr: TDate);
begin
  FLibApr := pLibApr;

  CheckField('LibApr');
end;

function T501TCP.GetUltPgt: TDate;
begin
  Result := FUltPgt;
end;

procedure T501TCP.SetUltPgt(const pUltPgt: TDate);
begin
  FUltPgt := pUltPgt;

  CheckField('UltPgt');
end;

function T501TCP.GetCodBan: string;
begin
  Result := FCodBan;
end;

procedure T501TCP.SetCodBan(const pCodBan: string);
begin
  FCodBan := pCodBan;

  CheckField('CodBan');
end;

function T501TCP.GetCodAge: string;
begin
  Result := FCodAge;
end;

procedure T501TCP.SetCodAge(const pCodAge: string);
begin
  FCodAge := pCodAge;

  CheckField('CodAge');
end;

function T501TCP.GetCcbFor: string;
begin
  Result := FCcbFor;
end;

procedure T501TCP.SetCcbFor(const pCcbFor: string);
begin
  FCcbFor := pCcbFor;

  CheckField('CcbFor');
end;

function T501TCP.GetPorAnt: string;
begin
  Result := FPorAnt;
end;

procedure T501TCP.SetPorAnt(const pPorAnt: string);
begin
  FPorAnt := pPorAnt;

  CheckField('PorAnt');
end;

function T501TCP.GetNumPrj: Integer;
begin
  Result := FNumPrj;
end;

procedure T501TCP.SetNumPrj(const pNumPrj: Integer);
begin
  FNumPrj := pNumPrj;

  CheckField('NumPrj');
end;

function T501TCP.GetCodFpj: Integer;
begin
  Result := FCodFpj;
end;

procedure T501TCP.SetCodFpj(const pCodFpj: Integer);
begin
  FCodFpj := pCodFpj;

  CheckField('CodFpj');
end;

function T501TCP.GetCtaFin: Integer;
begin
  Result := FCtaFin;
end;

procedure T501TCP.SetCtaFin(const pCtaFin: Integer);
begin
  FCtaFin := pCtaFin;

  CheckField('CtaFin');
end;

function T501TCP.GetCtaRed: Integer;
begin
  Result := FCtaRed;
end;

procedure T501TCP.SetCtaRed(const pCtaRed: Integer);
begin
  FCtaRed := pCtaRed;

  CheckField('CtaRed');
end;

function T501TCP.GetCodCcu: string;
begin
  Result := FCodCcu;
end;

procedure T501TCP.SetCodCcu(const pCodCcu: string);
begin
  FCodCcu := pCodCcu;

  CheckField('CodCcu');
end;

function T501TCP.GetDatUcm: TDate;
begin
  Result := FDatUcm;
end;

procedure T501TCP.SetDatUcm(const pDatUcm: TDate);
begin
  FDatUcm := pDatUcm;

  CheckField('DatUcm');
end;

function T501TCP.GetCotUcm: Double;
begin
  Result := FCotUcm;
end;

procedure T501TCP.SetCotUcm(const pCotUcm: Double);
begin
  FCotUcm := pCotUcm;

  CheckField('CotUcm');
end;

function T501TCP.GetFilNfc: Integer;
begin
  Result := FFilNfc;
end;

procedure T501TCP.SetFilNfc(const pFilNfc: Integer);
begin
  FFilNfc := pFilNfc;

  CheckField('FilNfc');
end;

function T501TCP.GetForNfc: Integer;
begin
  Result := FForNfc;
end;

procedure T501TCP.SetForNfc(const pForNfc: Integer);
begin
  FForNfc := pForNfc;

  CheckField('ForNfc');
end;

function T501TCP.GetNumNfc: Integer;
begin
  Result := FNumNfc;
end;

procedure T501TCP.SetNumNfc(const pNumNfc: Integer);
begin
  FNumNfc := pNumNfc;

  CheckField('NumNfc');
end;

function T501TCP.GetSnfNfc: string;
begin
  Result := FSnfNfc;
end;

procedure T501TCP.SetSnfNfc(const pSnfNfc: string);
begin
  FSnfNfc := pSnfNfc;

  CheckField('SnfNfc');
end;

function T501TCP.GetFilCtr: Integer;
begin
  Result := FFilCtr;
end;

procedure T501TCP.SetFilCtr(const pFilCtr: Integer);
begin
  FFilCtr := pFilCtr;

  CheckField('FilCtr');
end;

function T501TCP.GetNumCtr: Integer;
begin
  Result := FNumCtr;
end;

procedure T501TCP.SetNumCtr(const pNumCtr: Integer);
begin
  FNumCtr := pNumCtr;

  CheckField('NumCtr');
end;

function T501TCP.GetSeqImo: Integer;
begin
  Result := FSeqImo;
end;

procedure T501TCP.SetSeqImo(const pSeqImo: Integer);
begin
  FSeqImo := pSeqImo;

  CheckField('SeqImo');
end;

function T501TCP.GetSeqCgt: Integer;
begin
  Result := FSeqCgt;
end;

procedure T501TCP.SetSeqCgt(const pSeqCgt: Integer);
begin
  FSeqCgt := pSeqCgt;

  CheckField('SeqCgt');
end;

function T501TCP.GetFilNff: Integer;
begin
  Result := FFilNff;
end;

procedure T501TCP.SetFilNff(const pFilNff: Integer);
begin
  FFilNff := pFilNff;

  CheckField('FilNff');
end;

function T501TCP.GetNumNff: Integer;
begin
  Result := FNumNff;
end;

procedure T501TCP.SetNumNff(const pNumNff: Integer);
begin
  FNumNff := pNumNff;

  CheckField('NumNff');
end;

function T501TCP.GetForNff: Integer;
begin
  Result := FForNff;
end;

procedure T501TCP.SetForNff(const pForNff: Integer);
begin
  FForNff := pForNff;

  CheckField('ForNff');
end;

function T501TCP.GetFilNfv: Integer;
begin
  Result := FFilNfv;
end;

procedure T501TCP.SetFilNfv(const pFilNfv: Integer);
begin
  FFilNfv := pFilNfv;

  CheckField('FilNfv');
end;

function T501TCP.GetSnfNfv: string;
begin
  Result := FSnfNfv;
end;

procedure T501TCP.SetSnfNfv(const pSnfNfv: string);
begin
  FSnfNfv := pSnfNfv;

  CheckField('SnfNfv');
end;

function T501TCP.GetNumNfv: Integer;
begin
  Result := FNumNfv;
end;

procedure T501TCP.SetNumNfv(const pNumNfv: Integer);
begin
  FNumNfv := pNumNfv;

  CheckField('NumNfv');
end;

function T501TCP.GetFpgApr: Integer;
begin
  Result := FFpgApr;
end;

procedure T501TCP.SetFpgApr(const pFpgApr: Integer);
begin
  FFpgApr := pFpgApr;

  CheckField('FpgApr');
end;

function T501TCP.GetFilOcp: Integer;
begin
  Result := FFilOcp;
end;

procedure T501TCP.SetFilOcp(const pFilOcp: Integer);
begin
  FFilOcp := pFilOcp;

  CheckField('FilOcp');
end;

function T501TCP.GetNumOcp: Integer;
begin
  Result := FNumOcp;
end;

procedure T501TCP.SetNumOcp(const pNumOcp: Integer);
begin
  FNumOcp := pNumOcp;

  CheckField('NumOcp');
end;

function T501TCP.GetOcpFre: Integer;
begin
  Result := FOcpFre;
end;

procedure T501TCP.SetOcpFre(const pOcpFre: Integer);
begin
  FOcpFre := pOcpFre;

  CheckField('OcpFre');
end;

function T501TCP.GetOcpNre: Integer;
begin
  Result := FOcpNre;
end;

procedure T501TCP.SetOcpNre(const pOcpNre: Integer);
begin
  FOcpNre := pOcpNre;

  CheckField('OcpNre');
end;

function T501TCP.GetCtrFre: Integer;
begin
  Result := FCtrFre;
end;

procedure T501TCP.SetCtrFre(const pCtrFre: Integer);
begin
  FCtrFre := pCtrFre;

  CheckField('CtrFre');
end;

function T501TCP.GetCtrNre: Integer;
begin
  Result := FCtrNre;
end;

procedure T501TCP.SetCtrNre(const pCtrNre: Integer);
begin
  FCtrNre := pCtrNre;

  CheckField('CtrNre');
end;

function T501TCP.GetCodBar: string;
begin
  Result := FCodBar;
end;

procedure T501TCP.SetCodBar(const pCodBar: string);
begin
  FCodBar := pCodBar;

  CheckField('CodBar');
end;

function T501TCP.GetUsuSit: Integer;
begin
  Result := FUsuSit;
end;

procedure T501TCP.SetUsuSit(const pUsuSit: Integer);
begin
  FUsuSit := pUsuSit;

  CheckField('UsuSit');
end;

function T501TCP.GetTipEfe: Char;
begin
  Result := FTipEfe;
end;

procedure T501TCP.SetTipEfe(const pTipEfe: Char);
begin
  FTipEfe := pTipEfe;

  CheckField('TipEfe');
end;

function T501TCP.GetTnsPre: string;
begin
  Result := FTnsPre;
end;

procedure T501TCP.SetTnsPre(const pTnsPre: string);
begin
  FTnsPre := pTnsPre;

  CheckField('TnsPre');
end;

function T501TCP.GetDatPre: TDate;
begin
  Result := FDatPre;
end;

procedure T501TCP.SetDatPre(const pDatPre: TDate);
begin
  FDatPre := pDatPre;

  CheckField('DatPre');
end;

function T501TCP.GetVlrPre: Double;
begin
  Result := FVlrPre;
end;

procedure T501TCP.SetVlrPre(const pVlrPre: Double);
begin
  FVlrPre := pVlrPre;

  CheckField('VlrPre');
end;

function T501TCP.GetNumArb: Integer;
begin
  Result := FNumArb;
end;

procedure T501TCP.SetNumArb(const pNumArb: Integer);
begin
  FNumArb := pNumArb;

  CheckField('NumArb');
end;

function T501TCP.GetNumEco: Integer;
begin
  Result := FNumEco;
end;

procedure T501TCP.SetNumEco(const pNumEco: Integer);
begin
  FNumEco := pNumEco;

  CheckField('NumEco');
end;

function T501TCP.GetTipImp: Integer;
begin
  Result := FTipImp;
end;

procedure T501TCP.SetTipImp(const pTipImp: Integer);
begin
  FTipImp := pTipImp;

  CheckField('TipImp');
end;

function T501TCP.GetFilImp: Integer;
begin
  Result := FFilImp;
end;

procedure T501TCP.SetFilImp(const pFilImp: Integer);
begin
  FFilImp := pFilImp;

  CheckField('FilImp');
end;

function T501TCP.GetNumImp: string;
begin
  Result := FNumImp;
end;

procedure T501TCP.SetNumImp(const pNumImp: string);
begin
  FNumImp := pNumImp;

  CheckField('NumImp');
end;

function T501TCP.GetTptImp: string;
begin
  Result := FTptImp;
end;

procedure T501TCP.SetTptImp(const pTptImp: string);
begin
  FTptImp := pTptImp;

  CheckField('TptImp');
end;

function T501TCP.GetForImp: Integer;
begin
  Result := FForImp;
end;

procedure T501TCP.SetForImp(const pForImp: Integer);
begin
  FForImp := pForImp;

  CheckField('ForImp');
end;

function T501TCP.GetSeqImp: Integer;
begin
  Result := FSeqImp;
end;

procedure T501TCP.SetSeqImp(const pSeqImp: Integer);
begin
  FSeqImp := pSeqImp;

  CheckField('SeqImp');
end;

function T501TCP.GetVlrIns: Double;
begin
  Result := FVlrIns;
end;

procedure T501TCP.SetVlrIns(const pVlrIns: Double);
begin
  FVlrIns := pVlrIns;

  CheckField('VlrIns');
end;

function T501TCP.GetPriPgt: Integer;
begin
  Result := FPriPgt;
end;

procedure T501TCP.SetPriPgt(const pPriPgt: Integer);
begin
  FPriPgt := pPriPgt;

  CheckField('PriPgt');
end;

function T501TCP.GetFilCcr: Integer;
begin
  Result := FFilCcr;
end;

procedure T501TCP.SetFilCcr(const pFilCcr: Integer);
begin
  FFilCcr := pFilCcr;

  CheckField('FilCcr');
end;

function T501TCP.GetNumCcr: Integer;
begin
  Result := FNumCcr;
end;

procedure T501TCP.SetNumCcr(const pNumCcr: Integer);
begin
  FNumCcr := pNumCcr;

  CheckField('NumCcr');
end;

function T501TCP.GetTitCar: Char;
begin
  Result := FTitCar;
end;

procedure T501TCP.SetTitCar(const pTitCar: Char);
begin
  FTitCar := pTitCar;

  CheckField('TitCar');
end;

function T501TCP.GetTitPjr: Char;
begin
  Result := FTitPjr;
end;

procedure T501TCP.SetTitPjr(const pTitPjr: Char);
begin
  FTitPjr := pTitPjr;

  CheckField('TitPjr');
end;

function T501TCP.GetGriFil: Integer;
begin
  Result := FGriFil;
end;

procedure T501TCP.SetGriFil(const pGriFil: Integer);
begin
  FGriFil := pGriFil;

  CheckField('GriFil');
end;

function T501TCP.GetGriImp: string;
begin
  Result := FGriImp;
end;

procedure T501TCP.SetGriImp(const pGriImp: string);
begin
  FGriImp := pGriImp;

  CheckField('GriImp');
end;

function T501TCP.GetGriApi: TDate;
begin
  Result := FGriApi;
end;

procedure T501TCP.SetGriApi(const pGriApi: TDate);
begin
  FGriApi := pGriApi;

  CheckField('GriApi');
end;

function T501TCP.GetGriSeq: Integer;
begin
  Result := FGriSeq;
end;

procedure T501TCP.SetGriSeq(const pGriSeq: Integer);
begin
  FGriSeq := pGriSeq;

  CheckField('GriSeq');
end;

function T501TCP.GetCodSma: string;
begin
  Result := FCodSma;
end;

procedure T501TCP.SetCodSma(const pCodSma: string);
begin
  FCodSma := pCodSma;

  CheckField('CodSma');
end;

function T501TCP.GetNumMan: Integer;
begin
  Result := FNumMan;
end;

procedure T501TCP.SetNumMan(const pNumMan: Integer);
begin
  FNumMan := pNumMan;

  CheckField('NumMan');
end;

function T501TCP.GetCpgSub: string;
begin
  Result := FCpgSub;
end;

procedure T501TCP.SetCpgSub(const pCpgSub: string);
begin
  FCpgSub := pCpgSub;

  CheckField('CpgSub');
end;

function T501TCP.GetGerTep: Char;
begin
  Result := FGerTep;
end;

procedure T501TCP.SetGerTep(const pGerTep: Char);
begin
  FGerTep := pGerTep;

  CheckField('GerTep');
end;

function T501TCP.GetSitDda: Char;
begin
  Result := FSitDda;
end;

procedure T501TCP.SetSitDda(const pSitDda: Char);
begin
  FSitDda := pSitDda;

  CheckField('SitDda');
end;

function T501TCP.GetUsuGer: Integer;
begin
  Result := FUsuGer;
end;

procedure T501TCP.SetUsuGer(const pUsuGer: Integer);
begin
  FUsuGer := pUsuGer;

  CheckField('UsuGer');
end;

function T501TCP.GetDatGer: TDate;
begin
  Result := FDatGer;
end;

procedure T501TCP.SetDatGer(const pDatGer: TDate);
begin
  FDatGer := pDatGer;

  CheckField('DatGer');
end;

function T501TCP.GetHorGer: Integer;
begin
  Result := FHorGer;
end;

procedure T501TCP.SetHorGer(const pHorGer: Integer);
begin
  FHorGer := pHorGer;

  CheckField('HorGer');
end;

function T501TCP.GetRotSap: Integer;
begin
  Result := FRotSap;
end;

procedure T501TCP.SetRotSap(const pRotSap: Integer);
begin
  FRotSap := pRotSap;

  CheckField('RotSap');
end;

function T501TCP.GetNumPge: string;
begin
  Result := FNumPge;
end;

procedure T501TCP.SetNumPge(const pNumPge: string);
begin
  FNumPge := pNumPge;

  CheckField('NumPge');
end;

function T501TCP.GetNumDfs: Integer;
begin
  Result := FNumDfs;
end;

procedure T501TCP.SetNumDfs(const pNumDfs: Integer);
begin
  FNumDfs := pNumDfs;

  CheckField('NumDfs');
end;

function T501TCP.GetAutBan: string;
begin
  Result := FAutBan;
end;

procedure T501TCP.SetAutBan(const pAutBan: string);
begin
  FAutBan := pAutBan;

  CheckField('AutBan');
end;

function T501TCP.GetCtrBan: string;
begin
  Result := FCtrBan;
end;

procedure T501TCP.SetCtrBan(const pCtrBan: string);
begin
  FCtrBan := pCtrBan;

  CheckField('CtrBan');
end;

function T501TCP.GetTitJrs: string;
begin
  Result := FTitJrs;
end;

procedure T501TCP.SetTitJrs(const pTitJrs: string);
begin
  FTitJrs := pTitJrs;

  CheckField('TitJrs');
end;

function T501TCP.GetTptJrs: string;
begin
  Result := FTptJrs;
end;

procedure T501TCP.SetTptJrs(const pTptJrs: string);
begin
  FTptJrs := pTptJrs;

  CheckField('TptJrs');
end;

function T501TCP.GetRotNap: Integer;
begin
  Result := FRotNap;
end;

procedure T501TCP.SetRotNap(const pRotNap: Integer);
begin
  FRotNap := pRotNap;

  CheckField('RotNap');
end;

function T501TCP.GetNumApr: Integer;
begin
  Result := FNumApr;
end;

procedure T501TCP.SetNumApr(const pNumApr: Integer);
begin
  FNumApr := pNumApr;

  CheckField('NumApr');
end;

function T501TCP.GetSitApr: string;
begin
  Result := FSitApr;
end;

procedure T501TCP.SetSitApr(const pSitApr: string);
begin
  FSitApr := pSitApr;

  CheckField('SitApr');
end;

function T501TCP.GetTnsApr: string;
begin
  Result := FTnsApr;
end;

procedure T501TCP.SetTnsApr(const pTnsApr: string);
begin
  FTnsApr := pTnsApr;

  CheckField('TnsApr');
end;

function T501TCP.GetUSU_NumDoi: string;
begin
  Result := FUSU_NumDoi;
end;

procedure T501TCP.SetUSU_NumDoi(const pUSU_NumDoi: string);
begin
  FUSU_NumDoi := pUSU_NumDoi;

  CheckField('USU_NumDoi');
end;

function T501TCP.GetUSU_NumFat: string;
begin
  Result := FUSU_NumFat;
end;

procedure T501TCP.SetUSU_NumFat(const pUSU_NumFat: string);
begin
  FUSU_NumFat := pUSU_NumFat;

  CheckField('USU_NumFat');
end;

function T501TCP.GetUSU_IndAPr: Char;
begin
  Result := FUSU_IndAPr;
end;

procedure T501TCP.SetUSU_IndAPr(const pUSU_IndAPr: Char);
begin
  FUSU_IndAPr := pUSU_IndAPr;

  CheckField('USU_IndAPr');
end;

function T501TCP.GetUSU_IndAPrSol: Char;
begin
  Result := FUSU_IndAPrSol;
end;

procedure T501TCP.SetUSU_IndAPrSol(const pUSU_IndAPrSol: Char);
begin
  FUSU_IndAPrSol := pUSU_IndAPrSol;

  CheckField('USU_IndAPrSol');
end;

function T501TCP.GetUSU_IDTIT: Integer;
begin
  Result := FUSU_IDTIT;
end;

procedure T501TCP.SetUSU_IDTIT(const pUSU_IDTIT: Integer);
begin
  FUSU_IDTIT := pUSU_IDTIT;

  CheckField('USU_IDTIT');
end;

function T501TCP.GetUSU_IDCLP: Integer;
begin
  Result := FUSU_IDCLP;
end;

procedure T501TCP.SetUSU_IDCLP(const pUSU_IDCLP: Integer);
begin
  FUSU_IDCLP := pUSU_IDCLP;

  CheckField('USU_IDCLP');
end;

function T501TCP.GetCodEmpOLD: Integer;
begin
  Result := FCodEmpOLD;
end;

procedure T501TCP.SetCodEmpOLD(const pCodEmp: Integer);
begin
  FCodEmpOLD := pCodEmp;
end;

function T501TCP.GetCodFilOLD: Integer;
begin
  Result := FCodFilOLD;
end;

procedure T501TCP.SetCodFilOLD(const pCodFil: Integer);
begin
  FCodFilOLD := pCodFil;
end;

function T501TCP.GetNumTitOLD: string;
begin
  Result := FNumTitOLD;
end;

procedure T501TCP.SetNumTitOLD(const pNumTit: string);
begin
  FNumTitOLD := pNumTit;
end;

function T501TCP.GetCodTptOLD: string;
begin
  Result := FCodTptOLD;
end;

procedure T501TCP.SetCodTptOLD(const pCodTpt: string);
begin
  FCodTptOLD := pCodTpt;
end;

function T501TCP.GetCodForOLD: Integer;
begin
  Result := FCodForOLD;
end;

procedure T501TCP.SetCodForOLD(const pCodFor: Integer);
begin
  FCodForOLD := pCodFor;
end;

function T501TCP.GetCodCrpOLD: string;
begin
  Result := FCodCrpOLD;
end;

procedure T501TCP.SetCodCrpOLD(const pCodCrp: string);
begin
  FCodCrpOLD := pCodCrp;
end;

function T501TCP.GetCodTnsOLD: string;
begin
  Result := FCodTnsOLD;
end;

procedure T501TCP.SetCodTnsOLD(const pCodTns: string);
begin
  FCodTnsOLD := pCodTns;
end;

function T501TCP.GetCodNtgOLD: Integer;
begin
  Result := FCodNtgOLD;
end;

procedure T501TCP.SetCodNtgOLD(const pCodNtg: Integer);
begin
  FCodNtgOLD := pCodNtg;
end;

function T501TCP.GetCodTriOLD: string;
begin
  Result := FCodTriOLD;
end;

procedure T501TCP.SetCodTriOLD(const pCodTri: string);
begin
  FCodTriOLD := pCodTri;
end;

function T501TCP.GetSitTitOLD: string;
begin
  Result := FSitTitOLD;
end;

procedure T501TCP.SetSitTitOLD(const pSitTit: string);
begin
  FSitTitOLD := pSitTit;
end;

function T501TCP.GetDatEmiOLD: TDate;
begin
  Result := FDatEmiOLD;
end;

procedure T501TCP.SetDatEmiOLD(const pDatEmi: TDate);
begin
  FDatEmiOLD := pDatEmi;
end;

function T501TCP.GetDatEntOLD: TDate;
begin
  Result := FDatEntOLD;
end;

procedure T501TCP.SetDatEntOLD(const pDatEnt: TDate);
begin
  FDatEntOLD := pDatEnt;
end;

function T501TCP.GetObsTcpOLD: string;
begin
  Result := FObsTcpOLD;
end;

procedure T501TCP.SetObsTcpOLD(const pObsTcp: string);
begin
  FObsTcpOLD := pObsTcp;
end;

function T501TCP.GetCodFavOLD: Integer;
begin
  Result := FCodFavOLD;
end;

procedure T501TCP.SetCodFavOLD(const pCodFav: Integer);
begin
  FCodFavOLD := pCodFav;
end;

function T501TCP.GetVctOriOLD: TDate;
begin
  Result := FVctOriOLD;
end;

procedure T501TCP.SetVctOriOLD(const pVctOri: TDate);
begin
  FVctOriOLD := pVctOri;
end;

function T501TCP.GetVlrOriOLD: Double;
begin
  Result := FVlrOriOLD;
end;

procedure T501TCP.SetVlrOriOLD(const pVlrOri: Double);
begin
  FVlrOriOLD := pVlrOri;
end;

function T501TCP.GetCodFpgOLD: Integer;
begin
  Result := FCodFpgOLD;
end;

procedure T501TCP.SetCodFpgOLD(const pCodFpg: Integer);
begin
  FCodFpgOLD := pCodFpg;
end;

function T501TCP.GetVctProOLD: TDate;
begin
  Result := FVctProOLD;
end;

procedure T501TCP.SetVctProOLD(const pVctPro: TDate);
begin
  FVctProOLD := pVctPro;
end;

function T501TCP.GetProJrsOLD: Char;
begin
  Result := FProJrsOLD;
end;

procedure T501TCP.SetProJrsOLD(const pProJrs: Char);
begin
  FProJrsOLD := pProJrs;
end;

function T501TCP.GetCodMptOLD: string;
begin
  Result := FCodMptOLD;
end;

procedure T501TCP.SetCodMptOLD(const pCodMpt: string);
begin
  FCodMptOLD := pCodMpt;
end;

function T501TCP.GetDatPptOLD: TDate;
begin
  Result := FDatPptOLD;
end;

procedure T501TCP.SetDatPptOLD(const pDatPpt: TDate);
begin
  FDatPptOLD := pDatPpt;
end;

function T501TCP.GetVlrAbeOLD: Double;
begin
  Result := FVlrAbeOLD;
end;

procedure T501TCP.SetVlrAbeOLD(const pVlrAbe: Double);
begin
  FVlrAbeOLD := pVlrAbe;
end;

function T501TCP.GetCodMoeOLD: string;
begin
  Result := FCodMoeOLD;
end;

procedure T501TCP.SetCodMoeOLD(const pCodMoe: string);
begin
  FCodMoeOLD := pCodMoe;
end;

function T501TCP.GetCotEmiOLD: Double;
begin
  Result := FCotEmiOLD;
end;

procedure T501TCP.SetCotEmiOLD(const pCotEmi: Double);
begin
  FCotEmiOLD := pCotEmi;
end;

function T501TCP.GetCodFrjOLD: string;
begin
  Result := FCodFrjOLD;
end;

procedure T501TCP.SetCodFrjOLD(const pCodFrj: string);
begin
  FCodFrjOLD := pCodFrj;
end;

function T501TCP.GetDatDscOLD: TDate;
begin
  Result := FDatDscOLD;
end;

procedure T501TCP.SetDatDscOLD(const pDatDsc: TDate);
begin
  FDatDscOLD := pDatDsc;
end;

function T501TCP.GetTolDscOLD: Integer;
begin
  Result := FTolDscOLD;
end;

procedure T501TCP.SetTolDscOLD(const pTolDsc: Integer);
begin
  FTolDscOLD := pTolDsc;
end;

function T501TCP.GetPerDscOLD: Double;
begin
  Result := FPerDscOLD;
end;

procedure T501TCP.SetPerDscOLD(const pPerDsc: Double);
begin
  FPerDscOLD := pPerDsc;
end;

function T501TCP.GetVlrDscOLD: Double;
begin
  Result := FVlrDscOLD;
end;

procedure T501TCP.SetVlrDscOLD(const pVlrDsc: Double);
begin
  FVlrDscOLD := pVlrDsc;
end;

function T501TCP.GetAntDscOLD: Char;
begin
  Result := FAntDscOLD;
end;

procedure T501TCP.SetAntDscOLD(const pAntDsc: Char);
begin
  FAntDscOLD := pAntDsc;
end;

function T501TCP.GetPerJrsOLD: Double;
begin
  Result := FPerJrsOLD;
end;

procedure T501TCP.SetPerJrsOLD(const pPerJrs: Double);
begin
  FPerJrsOLD := pPerJrs;
end;

function T501TCP.GetTipJrsOLD: Char;
begin
  Result := FTipJrsOLD;
end;

procedure T501TCP.SetTipJrsOLD(const pTipJrs: Char);
begin
  FTipJrsOLD := pTipJrs;
end;

function T501TCP.GetJrsDiaOLD: Double;
begin
  Result := FJrsDiaOLD;
end;

procedure T501TCP.SetJrsDiaOLD(const pJrsDia: Double);
begin
  FJrsDiaOLD := pJrsDia;
end;

function T501TCP.GetTolJrsOLD: Integer;
begin
  Result := FTolJrsOLD;
end;

procedure T501TCP.SetTolJrsOLD(const pTolJrs: Integer);
begin
  FTolJrsOLD := pTolJrs;
end;

function T501TCP.GetDatCjmOLD: TDate;
begin
  Result := FDatCjmOLD;
end;

procedure T501TCP.SetDatCjmOLD(const pDatCjm: TDate);
begin
  FDatCjmOLD := pDatCjm;
end;

function T501TCP.GetPerMulOLD: Double;
begin
  Result := FPerMulOLD;
end;

procedure T501TCP.SetPerMulOLD(const pPerMul: Double);
begin
  FPerMulOLD := pPerMul;
end;

function T501TCP.GetTolMulOLD: Integer;
begin
  Result := FTolMulOLD;
end;

procedure T501TCP.SetTolMulOLD(const pTolMul: Integer);
begin
  FTolMulOLD := pTolMul;
end;

function T501TCP.GetDatNegOLD: TDate;
begin
  Result := FDatNegOLD;
end;

procedure T501TCP.SetDatNegOLD(const pDatNeg: TDate);
begin
  FDatNegOLD := pDatNeg;
end;

function T501TCP.GetJrsNegOLD: Double;
begin
  Result := FJrsNegOLD;
end;

procedure T501TCP.SetJrsNegOLD(const pJrsNeg: Double);
begin
  FJrsNegOLD := pJrsNeg;
end;

function T501TCP.GetMulNegOLD: Double;
begin
  Result := FMulNegOLD;
end;

procedure T501TCP.SetMulNegOLD(const pMulNeg: Double);
begin
  FMulNegOLD := pMulNeg;
end;

function T501TCP.GetDscNegOLD: Double;
begin
  Result := FDscNegOLD;
end;

procedure T501TCP.SetDscNegOLD(const pDscNeg: Double);
begin
  FDscNegOLD := pDscNeg;
end;

function T501TCP.GetOutNegOLD: Double;
begin
  Result := FOutNegOLD;
end;

procedure T501TCP.SetOutNegOLD(const pOutNeg: Double);
begin
  FOutNegOLD := pOutNeg;
end;

function T501TCP.GetUsuNegOLD: Integer;
begin
  Result := FUsuNegOLD;
end;

procedure T501TCP.SetUsuNegOLD(const pUsuNeg: Integer);
begin
  FUsuNegOLD := pUsuNeg;
end;

function T501TCP.GetCotNegOLD: Double;
begin
  Result := FCotNegOLD;
end;

procedure T501TCP.SetCotNegOLD(const pCotNeg: Double);
begin
  FCotNegOLD := pCotNeg;
end;

function T501TCP.GetCorNegOLD: Double;
begin
  Result := FCorNegOLD;
end;

procedure T501TCP.SetCorNegOLD(const pCorNeg: Double);
begin
  FCorNegOLD := pCorNeg;
end;

function T501TCP.GetCodPorOLD: string;
begin
  Result := FCodPorOLD;
end;

procedure T501TCP.SetCodPorOLD(const pCodPor: string);
begin
  FCodPorOLD := pCodPor;
end;

function T501TCP.GetCodCrtOLD: string;
begin
  Result := FCodCrtOLD;
end;

procedure T501TCP.SetCodCrtOLD(const pCodCrt: string);
begin
  FCodCrtOLD := pCodCrt;
end;

function T501TCP.GetTitBanOLD: string;
begin
  Result := FTitBanOLD;
end;

procedure T501TCP.SetTitBanOLD(const pTitBan: string);
begin
  FTitBanOLD := pTitBan;
end;

function T501TCP.GetCodUsuOLD: Integer;
begin
  Result := FCodUsuOLD;
end;

procedure T501TCP.SetCodUsuOLD(const pCodUsu: Integer);
begin
  FCodUsuOLD := pCodUsu;
end;

function T501TCP.GetDatAprOLD: TDate;
begin
  Result := FDatAprOLD;
end;

procedure T501TCP.SetDatAprOLD(const pDatApr: TDate);
begin
  FDatAprOLD := pDatApr;
end;

function T501TCP.GetHorAprOLD: Integer;
begin
  Result := FHorAprOLD;
end;

procedure T501TCP.SetHorAprOLD(const pHorApr: Integer);
begin
  FHorAprOLD := pHorApr;
end;

function T501TCP.GetPgtAprOLD: TDate;
begin
  Result := FPgtAprOLD;
end;

procedure T501TCP.SetPgtAprOLD(const pPgtApr: TDate);
begin
  FPgtAprOLD := pPgtApr;
end;

function T501TCP.GetVlrAprOLD: Double;
begin
  Result := FVlrAprOLD;
end;

procedure T501TCP.SetVlrAprOLD(const pVlrApr: Double);
begin
  FVlrAprOLD := pVlrApr;
end;

function T501TCP.GetCotAprOLD: Double;
begin
  Result := FCotAprOLD;
end;

procedure T501TCP.SetCotAprOLD(const pCotApr: Double);
begin
  FCotAprOLD := pCotApr;
end;

function T501TCP.GetDscAprOLD: Double;
begin
  Result := FDscAprOLD;
end;

procedure T501TCP.SetDscAprOLD(const pDscApr: Double);
begin
  FDscAprOLD := pDscApr;
end;

function T501TCP.GetOdeAprOLD: Double;
begin
  Result := FOdeAprOLD;
end;

procedure T501TCP.SetOdeAprOLD(const pOdeApr: Double);
begin
  FOdeAprOLD := pOdeApr;
end;

function T501TCP.GetJrsAprOLD: Double;
begin
  Result := FJrsAprOLD;
end;

procedure T501TCP.SetJrsAprOLD(const pJrsApr: Double);
begin
  FJrsAprOLD := pJrsApr;
end;

function T501TCP.GetMulAprOLD: Double;
begin
  Result := FMulAprOLD;
end;

procedure T501TCP.SetMulAprOLD(const pMulApr: Double);
begin
  FMulAprOLD := pMulApr;
end;

function T501TCP.GetEncAprOLD: Double;
begin
  Result := FEncAprOLD;
end;

procedure T501TCP.SetEncAprOLD(const pEncApr: Double);
begin
  FEncAprOLD := pEncApr;
end;

function T501TCP.GetCorAprOLD: Double;
begin
  Result := FCorAprOLD;
end;

procedure T501TCP.SetCorAprOLD(const pCorApr: Double);
begin
  FCorAprOLD := pCorApr;
end;

function T501TCP.GetOacAprOLD: Double;
begin
  Result := FOacAprOLD;
end;

procedure T501TCP.SetOacAprOLD(const pOacApr: Double);
begin
  FOacAprOLD := pOacApr;
end;

function T501TCP.GetIrfAprOLD: Double;
begin
  Result := FIrfAprOLD;
end;

procedure T501TCP.SetIrfAprOLD(const pIrfApr: Double);
begin
  FIrfAprOLD := pIrfApr;
end;

function T501TCP.GetVcrAprOLD: Char;
begin
  Result := FVcrAprOLD;
end;

procedure T501TCP.SetVcrAprOLD(const pVcrApr: Char);
begin
  FVcrAprOLD := pVcrApr;
end;

function T501TCP.GetEmpAprOLD: Integer;
begin
  Result := FEmpAprOLD;
end;

procedure T501TCP.SetEmpAprOLD(const pEmpApr: Integer);
begin
  FEmpAprOLD := pEmpApr;
end;

function T501TCP.GetCtaAprOLD: string;
begin
  Result := FCtaAprOLD;
end;

procedure T501TCP.SetCtaAprOLD(const pCtaApr: string);
begin
  FCtaAprOLD := pCtaApr;
end;

function T501TCP.GetSeqAprOLD: string;
begin
  Result := FSeqAprOLD;
end;

procedure T501TCP.SetSeqAprOLD(const pSeqApr: string);
begin
  FSeqAprOLD := pSeqApr;
end;

function T501TCP.GetLibAprOLD: TDate;
begin
  Result := FLibAprOLD;
end;

procedure T501TCP.SetLibAprOLD(const pLibApr: TDate);
begin
  FLibAprOLD := pLibApr;
end;

function T501TCP.GetUltPgtOLD: TDate;
begin
  Result := FUltPgtOLD;
end;

procedure T501TCP.SetUltPgtOLD(const pUltPgt: TDate);
begin
  FUltPgtOLD := pUltPgt;
end;

function T501TCP.GetCodBanOLD: string;
begin
  Result := FCodBanOLD;
end;

procedure T501TCP.SetCodBanOLD(const pCodBan: string);
begin
  FCodBanOLD := pCodBan;
end;

function T501TCP.GetCodAgeOLD: string;
begin
  Result := FCodAgeOLD;
end;

procedure T501TCP.SetCodAgeOLD(const pCodAge: string);
begin
  FCodAgeOLD := pCodAge;
end;

function T501TCP.GetCcbForOLD: string;
begin
  Result := FCcbForOLD;
end;

procedure T501TCP.SetCcbForOLD(const pCcbFor: string);
begin
  FCcbForOLD := pCcbFor;
end;

function T501TCP.GetPorAntOLD: string;
begin
  Result := FPorAntOLD;
end;

procedure T501TCP.SetPorAntOLD(const pPorAnt: string);
begin
  FPorAntOLD := pPorAnt;
end;

function T501TCP.GetNumPrjOLD: Integer;
begin
  Result := FNumPrjOLD;
end;

procedure T501TCP.SetNumPrjOLD(const pNumPrj: Integer);
begin
  FNumPrjOLD := pNumPrj;
end;

function T501TCP.GetCodFpjOLD: Integer;
begin
  Result := FCodFpjOLD;
end;

procedure T501TCP.SetCodFpjOLD(const pCodFpj: Integer);
begin
  FCodFpjOLD := pCodFpj;
end;

function T501TCP.GetCtaFinOLD: Integer;
begin
  Result := FCtaFinOLD;
end;

procedure T501TCP.SetCtaFinOLD(const pCtaFin: Integer);
begin
  FCtaFinOLD := pCtaFin;
end;

function T501TCP.GetCtaRedOLD: Integer;
begin
  Result := FCtaRedOLD;
end;

procedure T501TCP.SetCtaRedOLD(const pCtaRed: Integer);
begin
  FCtaRedOLD := pCtaRed;
end;

function T501TCP.GetCodCcuOLD: string;
begin
  Result := FCodCcuOLD;
end;

procedure T501TCP.SetCodCcuOLD(const pCodCcu: string);
begin
  FCodCcuOLD := pCodCcu;
end;

function T501TCP.GetDatUcmOLD: TDate;
begin
  Result := FDatUcmOLD;
end;

procedure T501TCP.SetDatUcmOLD(const pDatUcm: TDate);
begin
  FDatUcmOLD := pDatUcm;
end;

function T501TCP.GetCotUcmOLD: Double;
begin
  Result := FCotUcmOLD;
end;

procedure T501TCP.SetCotUcmOLD(const pCotUcm: Double);
begin
  FCotUcmOLD := pCotUcm;
end;

function T501TCP.GetFilNfcOLD: Integer;
begin
  Result := FFilNfcOLD;
end;

procedure T501TCP.SetFilNfcOLD(const pFilNfc: Integer);
begin
  FFilNfcOLD := pFilNfc;
end;

function T501TCP.GetForNfcOLD: Integer;
begin
  Result := FForNfcOLD;
end;

procedure T501TCP.SetForNfcOLD(const pForNfc: Integer);
begin
  FForNfcOLD := pForNfc;
end;

function T501TCP.GetNumNfcOLD: Integer;
begin
  Result := FNumNfcOLD;
end;

procedure T501TCP.SetNumNfcOLD(const pNumNfc: Integer);
begin
  FNumNfcOLD := pNumNfc;
end;

function T501TCP.GetSnfNfcOLD: string;
begin
  Result := FSnfNfcOLD;
end;

procedure T501TCP.SetSnfNfcOLD(const pSnfNfc: string);
begin
  FSnfNfcOLD := pSnfNfc;
end;

function T501TCP.GetFilCtrOLD: Integer;
begin
  Result := FFilCtrOLD;
end;

procedure T501TCP.SetFilCtrOLD(const pFilCtr: Integer);
begin
  FFilCtrOLD := pFilCtr;
end;

function T501TCP.GetNumCtrOLD: Integer;
begin
  Result := FNumCtrOLD;
end;

procedure T501TCP.SetNumCtrOLD(const pNumCtr: Integer);
begin
  FNumCtrOLD := pNumCtr;
end;

function T501TCP.GetSeqImoOLD: Integer;
begin
  Result := FSeqImoOLD;
end;

procedure T501TCP.SetSeqImoOLD(const pSeqImo: Integer);
begin
  FSeqImoOLD := pSeqImo;
end;

function T501TCP.GetSeqCgtOLD: Integer;
begin
  Result := FSeqCgtOLD;
end;

procedure T501TCP.SetSeqCgtOLD(const pSeqCgt: Integer);
begin
  FSeqCgtOLD := pSeqCgt;
end;

function T501TCP.GetFilNffOLD: Integer;
begin
  Result := FFilNffOLD;
end;

procedure T501TCP.SetFilNffOLD(const pFilNff: Integer);
begin
  FFilNffOLD := pFilNff;
end;

function T501TCP.GetNumNffOLD: Integer;
begin
  Result := FNumNffOLD;
end;

procedure T501TCP.SetNumNffOLD(const pNumNff: Integer);
begin
  FNumNffOLD := pNumNff;
end;

function T501TCP.GetForNffOLD: Integer;
begin
  Result := FForNffOLD;
end;

procedure T501TCP.SetForNffOLD(const pForNff: Integer);
begin
  FForNffOLD := pForNff;
end;

function T501TCP.GetFilNfvOLD: Integer;
begin
  Result := FFilNfvOLD;
end;

procedure T501TCP.SetFilNfvOLD(const pFilNfv: Integer);
begin
  FFilNfvOLD := pFilNfv;
end;

function T501TCP.GetSnfNfvOLD: string;
begin
  Result := FSnfNfvOLD;
end;

procedure T501TCP.SetSnfNfvOLD(const pSnfNfv: string);
begin
  FSnfNfvOLD := pSnfNfv;
end;

function T501TCP.GetNumNfvOLD: Integer;
begin
  Result := FNumNfvOLD;
end;

procedure T501TCP.SetNumNfvOLD(const pNumNfv: Integer);
begin
  FNumNfvOLD := pNumNfv;
end;

function T501TCP.GetFpgAprOLD: Integer;
begin
  Result := FFpgAprOLD;
end;

procedure T501TCP.SetFpgAprOLD(const pFpgApr: Integer);
begin
  FFpgAprOLD := pFpgApr;
end;

function T501TCP.GetFilOcpOLD: Integer;
begin
  Result := FFilOcpOLD;
end;

procedure T501TCP.SetFilOcpOLD(const pFilOcp: Integer);
begin
  FFilOcpOLD := pFilOcp;
end;

function T501TCP.GetNumOcpOLD: Integer;
begin
  Result := FNumOcpOLD;
end;

procedure T501TCP.SetNumOcpOLD(const pNumOcp: Integer);
begin
  FNumOcpOLD := pNumOcp;
end;

function T501TCP.GetOcpFreOLD: Integer;
begin
  Result := FOcpFreOLD;
end;

procedure T501TCP.SetOcpFreOLD(const pOcpFre: Integer);
begin
  FOcpFreOLD := pOcpFre;
end;

function T501TCP.GetOcpNreOLD: Integer;
begin
  Result := FOcpNreOLD;
end;

procedure T501TCP.SetOcpNreOLD(const pOcpNre: Integer);
begin
  FOcpNreOLD := pOcpNre;
end;

function T501TCP.GetCtrFreOLD: Integer;
begin
  Result := FCtrFreOLD;
end;

procedure T501TCP.SetCtrFreOLD(const pCtrFre: Integer);
begin
  FCtrFreOLD := pCtrFre;
end;

function T501TCP.GetCtrNreOLD: Integer;
begin
  Result := FCtrNreOLD;
end;

procedure T501TCP.SetCtrNreOLD(const pCtrNre: Integer);
begin
  FCtrNreOLD := pCtrNre;
end;

function T501TCP.GetCodBarOLD: string;
begin
  Result := FCodBarOLD;
end;

procedure T501TCP.SetCodBarOLD(const pCodBar: string);
begin
  FCodBarOLD := pCodBar;
end;

function T501TCP.GetUsuSitOLD: Integer;
begin
  Result := FUsuSitOLD;
end;

procedure T501TCP.SetUsuSitOLD(const pUsuSit: Integer);
begin
  FUsuSitOLD := pUsuSit;
end;

function T501TCP.GetTipEfeOLD: Char;
begin
  Result := FTipEfeOLD;
end;

procedure T501TCP.SetTipEfeOLD(const pTipEfe: Char);
begin
  FTipEfeOLD := pTipEfe;
end;

function T501TCP.GetTnsPreOLD: string;
begin
  Result := FTnsPreOLD;
end;

procedure T501TCP.SetTnsPreOLD(const pTnsPre: string);
begin
  FTnsPreOLD := pTnsPre;
end;

function T501TCP.GetDatPreOLD: TDate;
begin
  Result := FDatPreOLD;
end;

procedure T501TCP.SetDatPreOLD(const pDatPre: TDate);
begin
  FDatPreOLD := pDatPre;
end;

function T501TCP.GetVlrPreOLD: Double;
begin
  Result := FVlrPreOLD;
end;

procedure T501TCP.SetVlrPreOLD(const pVlrPre: Double);
begin
  FVlrPreOLD := pVlrPre;
end;

function T501TCP.GetNumArbOLD: Integer;
begin
  Result := FNumArbOLD;
end;

procedure T501TCP.SetNumArbOLD(const pNumArb: Integer);
begin
  FNumArbOLD := pNumArb;
end;

function T501TCP.GetNumEcoOLD: Integer;
begin
  Result := FNumEcoOLD;
end;

procedure T501TCP.SetNumEcoOLD(const pNumEco: Integer);
begin
  FNumEcoOLD := pNumEco;
end;

function T501TCP.GetTipImpOLD: Integer;
begin
  Result := FTipImpOLD;
end;

procedure T501TCP.SetTipImpOLD(const pTipImp: Integer);
begin
  FTipImpOLD := pTipImp;
end;

function T501TCP.GetFilImpOLD: Integer;
begin
  Result := FFilImpOLD;
end;

procedure T501TCP.SetFilImpOLD(const pFilImp: Integer);
begin
  FFilImpOLD := pFilImp;
end;

function T501TCP.GetNumImpOLD: string;
begin
  Result := FNumImpOLD;
end;

procedure T501TCP.SetNumImpOLD(const pNumImp: string);
begin
  FNumImpOLD := pNumImp;
end;

function T501TCP.GetTptImpOLD: string;
begin
  Result := FTptImpOLD;
end;

procedure T501TCP.SetTptImpOLD(const pTptImp: string);
begin
  FTptImpOLD := pTptImp;
end;

function T501TCP.GetForImpOLD: Integer;
begin
  Result := FForImpOLD;
end;

procedure T501TCP.SetForImpOLD(const pForImp: Integer);
begin
  FForImpOLD := pForImp;
end;

function T501TCP.GetSeqImpOLD: Integer;
begin
  Result := FSeqImpOLD;
end;

procedure T501TCP.SetSeqImpOLD(const pSeqImp: Integer);
begin
  FSeqImpOLD := pSeqImp;
end;

function T501TCP.GetVlrInsOLD: Double;
begin
  Result := FVlrInsOLD;
end;

procedure T501TCP.SetVlrInsOLD(const pVlrIns: Double);
begin
  FVlrInsOLD := pVlrIns;
end;

function T501TCP.GetPriPgtOLD: Integer;
begin
  Result := FPriPgtOLD;
end;

procedure T501TCP.SetPriPgtOLD(const pPriPgt: Integer);
begin
  FPriPgtOLD := pPriPgt;
end;

function T501TCP.GetFilCcrOLD: Integer;
begin
  Result := FFilCcrOLD;
end;

procedure T501TCP.SetFilCcrOLD(const pFilCcr: Integer);
begin
  FFilCcrOLD := pFilCcr;
end;

function T501TCP.GetNumCcrOLD: Integer;
begin
  Result := FNumCcrOLD;
end;

procedure T501TCP.SetNumCcrOLD(const pNumCcr: Integer);
begin
  FNumCcrOLD := pNumCcr;
end;

function T501TCP.GetTitCarOLD: Char;
begin
  Result := FTitCarOLD;
end;

procedure T501TCP.SetTitCarOLD(const pTitCar: Char);
begin
  FTitCarOLD := pTitCar;
end;

function T501TCP.GetTitPjrOLD: Char;
begin
  Result := FTitPjrOLD;
end;

procedure T501TCP.SetTitPjrOLD(const pTitPjr: Char);
begin
  FTitPjrOLD := pTitPjr;
end;

function T501TCP.GetGriFilOLD: Integer;
begin
  Result := FGriFilOLD;
end;

procedure T501TCP.SetGriFilOLD(const pGriFil: Integer);
begin
  FGriFilOLD := pGriFil;
end;

function T501TCP.GetGriImpOLD: string;
begin
  Result := FGriImpOLD;
end;

procedure T501TCP.SetGriImpOLD(const pGriImp: string);
begin
  FGriImpOLD := pGriImp;
end;

function T501TCP.GetGriApiOLD: TDate;
begin
  Result := FGriApiOLD;
end;

procedure T501TCP.SetGriApiOLD(const pGriApi: TDate);
begin
  FGriApiOLD := pGriApi;
end;

function T501TCP.GetGriSeqOLD: Integer;
begin
  Result := FGriSeqOLD;
end;

procedure T501TCP.SetGriSeqOLD(const pGriSeq: Integer);
begin
  FGriSeqOLD := pGriSeq;
end;

function T501TCP.GetCodSmaOLD: string;
begin
  Result := FCodSmaOLD;
end;

procedure T501TCP.SetCodSmaOLD(const pCodSma: string);
begin
  FCodSmaOLD := pCodSma;
end;

function T501TCP.GetNumManOLD: Integer;
begin
  Result := FNumManOLD;
end;

procedure T501TCP.SetNumManOLD(const pNumMan: Integer);
begin
  FNumManOLD := pNumMan;
end;

function T501TCP.GetCpgSubOLD: string;
begin
  Result := FCpgSubOLD;
end;

procedure T501TCP.SetCpgSubOLD(const pCpgSub: string);
begin
  FCpgSubOLD := pCpgSub;
end;

function T501TCP.GetGerTepOLD: Char;
begin
  Result := FGerTepOLD;
end;

procedure T501TCP.SetGerTepOLD(const pGerTep: Char);
begin
  FGerTepOLD := pGerTep;
end;

function T501TCP.GetSitDdaOLD: Char;
begin
  Result := FSitDdaOLD;
end;

procedure T501TCP.SetSitDdaOLD(const pSitDda: Char);
begin
  FSitDdaOLD := pSitDda;
end;

function T501TCP.GetUsuGerOLD: Integer;
begin
  Result := FUsuGerOLD;
end;

procedure T501TCP.SetUsuGerOLD(const pUsuGer: Integer);
begin
  FUsuGerOLD := pUsuGer;
end;

function T501TCP.GetDatGerOLD: TDate;
begin
  Result := FDatGerOLD;
end;

procedure T501TCP.SetDatGerOLD(const pDatGer: TDate);
begin
  FDatGerOLD := pDatGer;
end;

function T501TCP.GetHorGerOLD: Integer;
begin
  Result := FHorGerOLD;
end;

procedure T501TCP.SetHorGerOLD(const pHorGer: Integer);
begin
  FHorGerOLD := pHorGer;
end;

function T501TCP.GetRotSapOLD: Integer;
begin
  Result := FRotSapOLD;
end;

procedure T501TCP.SetRotSapOLD(const pRotSap: Integer);
begin
  FRotSapOLD := pRotSap;
end;

function T501TCP.GetNumPgeOLD: string;
begin
  Result := FNumPgeOLD;
end;

procedure T501TCP.SetNumPgeOLD(const pNumPge: string);
begin
  FNumPgeOLD := pNumPge;
end;

function T501TCP.GetNumDfsOLD: Integer;
begin
  Result := FNumDfsOLD;
end;

procedure T501TCP.SetNumDfsOLD(const pNumDfs: Integer);
begin
  FNumDfsOLD := pNumDfs;
end;

function T501TCP.GetAutBanOLD: string;
begin
  Result := FAutBanOLD;
end;

procedure T501TCP.SetAutBanOLD(const pAutBan: string);
begin
  FAutBanOLD := pAutBan;
end;

function T501TCP.GetCtrBanOLD: string;
begin
  Result := FCtrBanOLD;
end;

procedure T501TCP.SetCtrBanOLD(const pCtrBan: string);
begin
  FCtrBanOLD := pCtrBan;
end;

function T501TCP.GetTitJrsOLD: string;
begin
  Result := FTitJrsOLD;
end;

procedure T501TCP.SetTitJrsOLD(const pTitJrs: string);
begin
  FTitJrsOLD := pTitJrs;
end;

function T501TCP.GetTptJrsOLD: string;
begin
  Result := FTptJrsOLD;
end;

procedure T501TCP.SetTptJrsOLD(const pTptJrs: string);
begin
  FTptJrsOLD := pTptJrs;
end;

function T501TCP.GetRotNapOLD: Integer;
begin
  Result := FRotNapOLD;
end;

procedure T501TCP.SetRotNapOLD(const pRotNap: Integer);
begin
  FRotNapOLD := pRotNap;
end;

function T501TCP.GetNumAprOLD: Integer;
begin
  Result := FNumAprOLD;
end;

procedure T501TCP.SetNumAprOLD(const pNumApr: Integer);
begin
  FNumAprOLD := pNumApr;
end;

function T501TCP.GetSitAprOLD: string;
begin
  Result := FSitAprOLD;
end;

procedure T501TCP.SetSitAprOLD(const pSitApr: string);
begin
  FSitAprOLD := pSitApr;
end;

function T501TCP.GetTnsAprOLD: string;
begin
  Result := FTnsAprOLD;
end;

procedure T501TCP.SetTnsAprOLD(const pTnsApr: string);
begin
  FTnsAprOLD := pTnsApr;
end;

function T501TCP.GetUSU_NumDoiOLD: string;
begin
  Result := FUSU_NumDoiOLD;
end;

procedure T501TCP.SetUSU_NumDoiOLD(const pUSU_NumDoi: string);
begin
  FUSU_NumDoiOLD := pUSU_NumDoi;
end;

function T501TCP.GetUSU_NumFatOLD: string;
begin
  Result := FUSU_NumFatOLD;
end;

procedure T501TCP.SetUSU_NumFatOLD(const pUSU_NumFat: string);
begin
  FUSU_NumFatOLD := pUSU_NumFat;
end;

function T501TCP.GetUSU_IndAPrOLD: Char;
begin
  Result := FUSU_IndAPrOLD;
end;

procedure T501TCP.SetUSU_IndAPrOLD(const pUSU_IndAPr: Char);
begin
  FUSU_IndAPrOLD := pUSU_IndAPr;
end;

function T501TCP.GetUSU_IndAPrSolOLD: Char;
begin
  Result := FUSU_IndAPrSolOLD;
end;

procedure T501TCP.SetUSU_IndAPrSolOLD(const pUSU_IndAPrSol: Char);
begin
  FUSU_IndAPrSolOLD := pUSU_IndAPrSol;
end;

function T501TCP.GetUSU_IDTITOLD: Integer;
begin
  Result := FUSU_IDTITOLD;
end;

procedure T501TCP.SetUSU_IDTITOLD(const pUSU_IDTIT: Integer);
begin
  FUSU_IDTITOLD := pUSU_IDTIT;
end;

function T501TCP.GetUSU_IDCLPOLD: Integer;
begin
  Result := FUSU_IDCLPOLD;
end;

procedure T501TCP.SetUSU_IDCLPOLD(const pUSU_IDCLP: Integer);
begin
  FUSU_IDCLPOLD := pUSU_IDCLP;
end;

procedure T501TCP.Registros_OLD();
begin
  FCodEmpOLD := FCodEmp;
  FCodFilOLD := FCodFil;
  FNumTitOLD := FNumTit;
  FCodTptOLD := FCodTpt;
  FCodForOLD := FCodFor;
  FCodCrpOLD := FCodCrp;
  FCodTnsOLD := FCodTns;
  FCodNtgOLD := FCodNtg;
  FCodTriOLD := FCodTri;
  FSitTitOLD := FSitTit;
  FDatEmiOLD := FDatEmi;
  FDatEntOLD := FDatEnt;
  FObsTcpOLD := FObsTcp;
  FCodFavOLD := FCodFav;
  FVctOriOLD := FVctOri;
  FVlrOriOLD := FVlrOri;
  FCodFpgOLD := FCodFpg;
  FVctProOLD := FVctPro;
  FProJrsOLD := FProJrs;
  FCodMptOLD := FCodMpt;
  FDatPptOLD := FDatPpt;
  FVlrAbeOLD := FVlrAbe;
  FCodMoeOLD := FCodMoe;
  FCotEmiOLD := FCotEmi;
  FCodFrjOLD := FCodFrj;
  FDatDscOLD := FDatDsc;
  FTolDscOLD := FTolDsc;
  FPerDscOLD := FPerDsc;
  FVlrDscOLD := FVlrDsc;
  FAntDscOLD := FAntDsc;
  FPerJrsOLD := FPerJrs;
  FTipJrsOLD := FTipJrs;
  FJrsDiaOLD := FJrsDia;
  FTolJrsOLD := FTolJrs;
  FDatCjmOLD := FDatCjm;
  FPerMulOLD := FPerMul;
  FTolMulOLD := FTolMul;
  FDatNegOLD := FDatNeg;
  FJrsNegOLD := FJrsNeg;
  FMulNegOLD := FMulNeg;
  FDscNegOLD := FDscNeg;
  FOutNegOLD := FOutNeg;
  FUsuNegOLD := FUsuNeg;
  FCotNegOLD := FCotNeg;
  FCorNegOLD := FCorNeg;
  FCodPorOLD := FCodPor;
  FCodCrtOLD := FCodCrt;
  FTitBanOLD := FTitBan;
  FCodUsuOLD := FCodUsu;
  FDatAprOLD := FDatApr;
  FHorAprOLD := FHorApr;
  FPgtAprOLD := FPgtApr;
  FVlrAprOLD := FVlrApr;
  FCotAprOLD := FCotApr;
  FDscAprOLD := FDscApr;
  FOdeAprOLD := FOdeApr;
  FJrsAprOLD := FJrsApr;
  FMulAprOLD := FMulApr;
  FEncAprOLD := FEncApr;
  FCorAprOLD := FCorApr;
  FOacAprOLD := FOacApr;
  FIrfAprOLD := FIrfApr;
  FVcrAprOLD := FVcrApr;
  FEmpAprOLD := FEmpApr;
  FCtaAprOLD := FCtaApr;
  FSeqAprOLD := FSeqApr;
  FLibAprOLD := FLibApr;
  FUltPgtOLD := FUltPgt;
  FCodBanOLD := FCodBan;
  FCodAgeOLD := FCodAge;
  FCcbForOLD := FCcbFor;
  FPorAntOLD := FPorAnt;
  FNumPrjOLD := FNumPrj;
  FCodFpjOLD := FCodFpj;
  FCtaFinOLD := FCtaFin;
  FCtaRedOLD := FCtaRed;
  FCodCcuOLD := FCodCcu;
  FDatUcmOLD := FDatUcm;
  FCotUcmOLD := FCotUcm;
  FFilNfcOLD := FFilNfc;
  FForNfcOLD := FForNfc;
  FNumNfcOLD := FNumNfc;
  FSnfNfcOLD := FSnfNfc;
  FFilCtrOLD := FFilCtr;
  FNumCtrOLD := FNumCtr;
  FSeqImoOLD := FSeqImo;
  FSeqCgtOLD := FSeqCgt;
  FFilNffOLD := FFilNff;
  FNumNffOLD := FNumNff;
  FForNffOLD := FForNff;
  FFilNfvOLD := FFilNfv;
  FSnfNfvOLD := FSnfNfv;
  FNumNfvOLD := FNumNfv;
  FFpgAprOLD := FFpgApr;
  FFilOcpOLD := FFilOcp;
  FNumOcpOLD := FNumOcp;
  FOcpFreOLD := FOcpFre;
  FOcpNreOLD := FOcpNre;
  FCtrFreOLD := FCtrFre;
  FCtrNreOLD := FCtrNre;
  FCodBarOLD := FCodBar;
  FUsuSitOLD := FUsuSit;
  FTipEfeOLD := FTipEfe;
  FTnsPreOLD := FTnsPre;
  FDatPreOLD := FDatPre;
  FVlrPreOLD := FVlrPre;
  FNumArbOLD := FNumArb;
  FNumEcoOLD := FNumEco;
  FTipImpOLD := FTipImp;
  FFilImpOLD := FFilImp;
  FNumImpOLD := FNumImp;
  FTptImpOLD := FTptImp;
  FForImpOLD := FForImp;
  FSeqImpOLD := FSeqImp;
  FVlrInsOLD := FVlrIns;
  FPriPgtOLD := FPriPgt;
  FFilCcrOLD := FFilCcr;
  FNumCcrOLD := FNumCcr;
  FTitCarOLD := FTitCar;
  FTitPjrOLD := FTitPjr;
  FGriFilOLD := FGriFil;
  FGriImpOLD := FGriImp;
  FGriApiOLD := FGriApi;
  FGriSeqOLD := FGriSeq;
  FCodSmaOLD := FCodSma;
  FNumManOLD := FNumMan;
  FCpgSubOLD := FCpgSub;
  FGerTepOLD := FGerTep;
  FSitDdaOLD := FSitDda;
  FUsuGerOLD := FUsuGer;
  FDatGerOLD := FDatGer;
  FHorGerOLD := FHorGer;
  FRotSapOLD := FRotSap;
  FNumPgeOLD := FNumPge;
  FNumDfsOLD := FNumDfs;
  FAutBanOLD := FAutBan;
  FCtrBanOLD := FCtrBan;
  FTitJrsOLD := FTitJrs;
  FTptJrsOLD := FTptJrs;
  FRotNapOLD := FRotNap;
  FNumAprOLD := FNumApr;
  FSitAprOLD := FSitApr;
  FTnsAprOLD := FTnsApr;
  FUSU_NumDoiOLD := FUSU_NumDoi;
  FUSU_NumFatOLD := FUSU_NumFat;
  FUSU_IndAPrOLD := FUSU_IndAPr;
  FUSU_IndAPrSolOLD := FUSU_IndAPrSol;
  FUSU_IDTITOLD := FUSU_IDTIT;
  FUSU_IDCLPOLD := FUSU_IDCLP;

  inherited;
end;

procedure T501TCP.RetornarValores();
begin
  FCodEmp := FCodEmpOLD;
  FCodFil := FCodFilOLD;
  FNumTit := FNumTitOLD;
  FCodTpt := FCodTptOLD;
  FCodFor := FCodForOLD;
  FCodCrp := FCodCrpOLD;
  FCodTns := FCodTnsOLD;
  FCodNtg := FCodNtgOLD;
  FCodTri := FCodTriOLD;
  FSitTit := FSitTitOLD;
  FDatEmi := FDatEmiOLD;
  FDatEnt := FDatEntOLD;
  FObsTcp := FObsTcpOLD;
  FCodFav := FCodFavOLD;
  FVctOri := FVctOriOLD;
  FVlrOri := FVlrOriOLD;
  FCodFpg := FCodFpgOLD;
  FVctPro := FVctProOLD;
  FProJrs := FProJrsOLD;
  FCodMpt := FCodMptOLD;
  FDatPpt := FDatPptOLD;
  FVlrAbe := FVlrAbeOLD;
  FCodMoe := FCodMoeOLD;
  FCotEmi := FCotEmiOLD;
  FCodFrj := FCodFrjOLD;
  FDatDsc := FDatDscOLD;
  FTolDsc := FTolDscOLD;
  FPerDsc := FPerDscOLD;
  FVlrDsc := FVlrDscOLD;
  FAntDsc := FAntDscOLD;
  FPerJrs := FPerJrsOLD;
  FTipJrs := FTipJrsOLD;
  FJrsDia := FJrsDiaOLD;
  FTolJrs := FTolJrsOLD;
  FDatCjm := FDatCjmOLD;
  FPerMul := FPerMulOLD;
  FTolMul := FTolMulOLD;
  FDatNeg := FDatNegOLD;
  FJrsNeg := FJrsNegOLD;
  FMulNeg := FMulNegOLD;
  FDscNeg := FDscNegOLD;
  FOutNeg := FOutNegOLD;
  FUsuNeg := FUsuNegOLD;
  FCotNeg := FCotNegOLD;
  FCorNeg := FCorNegOLD;
  FCodPor := FCodPorOLD;
  FCodCrt := FCodCrtOLD;
  FTitBan := FTitBanOLD;
  FCodUsu := FCodUsuOLD;
  FDatApr := FDatAprOLD;
  FHorApr := FHorAprOLD;
  FPgtApr := FPgtAprOLD;
  FVlrApr := FVlrAprOLD;
  FCotApr := FCotAprOLD;
  FDscApr := FDscAprOLD;
  FOdeApr := FOdeAprOLD;
  FJrsApr := FJrsAprOLD;
  FMulApr := FMulAprOLD;
  FEncApr := FEncAprOLD;
  FCorApr := FCorAprOLD;
  FOacApr := FOacAprOLD;
  FIrfApr := FIrfAprOLD;
  FVcrApr := FVcrAprOLD;
  FEmpApr := FEmpAprOLD;
  FCtaApr := FCtaAprOLD;
  FSeqApr := FSeqAprOLD;
  FLibApr := FLibAprOLD;
  FUltPgt := FUltPgtOLD;
  FCodBan := FCodBanOLD;
  FCodAge := FCodAgeOLD;
  FCcbFor := FCcbForOLD;
  FPorAnt := FPorAntOLD;
  FNumPrj := FNumPrjOLD;
  FCodFpj := FCodFpjOLD;
  FCtaFin := FCtaFinOLD;
  FCtaRed := FCtaRedOLD;
  FCodCcu := FCodCcuOLD;
  FDatUcm := FDatUcmOLD;
  FCotUcm := FCotUcmOLD;
  FFilNfc := FFilNfcOLD;
  FForNfc := FForNfcOLD;
  FNumNfc := FNumNfcOLD;
  FSnfNfc := FSnfNfcOLD;
  FFilCtr := FFilCtrOLD;
  FNumCtr := FNumCtrOLD;
  FSeqImo := FSeqImoOLD;
  FSeqCgt := FSeqCgtOLD;
  FFilNff := FFilNffOLD;
  FNumNff := FNumNffOLD;
  FForNff := FForNffOLD;
  FFilNfv := FFilNfvOLD;
  FSnfNfv := FSnfNfvOLD;
  FNumNfv := FNumNfvOLD;
  FFpgApr := FFpgAprOLD;
  FFilOcp := FFilOcpOLD;
  FNumOcp := FNumOcpOLD;
  FOcpFre := FOcpFreOLD;
  FOcpNre := FOcpNreOLD;
  FCtrFre := FCtrFreOLD;
  FCtrNre := FCtrNreOLD;
  FCodBar := FCodBarOLD;
  FUsuSit := FUsuSitOLD;
  FTipEfe := FTipEfeOLD;
  FTnsPre := FTnsPreOLD;
  FDatPre := FDatPreOLD;
  FVlrPre := FVlrPreOLD;
  FNumArb := FNumArbOLD;
  FNumEco := FNumEcoOLD;
  FTipImp := FTipImpOLD;
  FFilImp := FFilImpOLD;
  FNumImp := FNumImpOLD;
  FTptImp := FTptImpOLD;
  FForImp := FForImpOLD;
  FSeqImp := FSeqImpOLD;
  FVlrIns := FVlrInsOLD;
  FPriPgt := FPriPgtOLD;
  FFilCcr := FFilCcrOLD;
  FNumCcr := FNumCcrOLD;
  FTitCar := FTitCarOLD;
  FTitPjr := FTitPjrOLD;
  FGriFil := FGriFilOLD;
  FGriImp := FGriImpOLD;
  FGriApi := FGriApiOLD;
  FGriSeq := FGriSeqOLD;
  FCodSma := FCodSmaOLD;
  FNumMan := FNumManOLD;
  FCpgSub := FCpgSubOLD;
  FGerTep := FGerTepOLD;
  FSitDda := FSitDdaOLD;
  FUsuGer := FUsuGerOLD;
  FDatGer := FDatGerOLD;
  FHorGer := FHorGerOLD;
  FRotSap := FRotSapOLD;
  FNumPge := FNumPgeOLD;
  FNumDfs := FNumDfsOLD;
  FAutBan := FAutBanOLD;
  FCtrBan := FCtrBanOLD;
  FTitJrs := FTitJrsOLD;
  FTptJrs := FTptJrsOLD;
  FRotNap := FRotNapOLD;
  FNumApr := FNumAprOLD;
  FSitApr := FSitAprOLD;
  FTnsApr := FTnsAprOLD;
  FUSU_NumDoi := FUSU_NumDoiOLD;
  FUSU_NumFat := FUSU_NumFatOLD;
  FUSU_IndAPr := FUSU_IndAPrOLD;
  FUSU_IndAPrSol := FUSU_IndAPrSolOLD;
  FUSU_IDTIT := FUSU_IDTITOLD;
  FUSU_IDCLP := FUSU_IDCLPOLD;
end;

end.
