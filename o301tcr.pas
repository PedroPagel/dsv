unit o301tcr;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T301TCR = class(TTabelaPadrao)
  private
    FCodEmp: Integer;
    FCodFil: Integer;
    FNumTit: string;
    FCodTpt: string;
    FCodTns: string;
    FCodNtg: Integer;
    FSitTit: string;
    FDatEmi: TDate;
    FDatEnt: TDate;
    FCodCli: Integer;
    FCodSac: Integer;
    FCodRep: Integer;
    FCodCrp: string;
    FObsTcr: string;
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
    FCotFrj: Double;
    FPerCom: Double;
    FComRec: Double;
    FVlrBco: Double;
    FVlrCom: Double;
    FDatDsc: TDate;
    FTolDsc: Integer;
    FPerDsc: Double;
    FVlrDsc: Double;
    FAntDsc: Char;
    FPrdDsc: Char;
    FPerJrs: Double;
    FTipJrs: Char;
    FJrsDia: Double;
    FTolJrs: Integer;
    FDatCjm: TDate;
    FPerMul: Double;
    FTolMul: Integer;
    FCheBan: string;
    FCheAge: string;
    FCheCta: string;
    FCheNum: string;
    FCodPor: string;
    FCodCrt: string;
    FTitBan: string;
    FVlrOrm: Double;
    FNumArb: Integer;
    FCodOcr: string;
    FCodIn1: string;
    FCodIn2: string;
    FPorAnt: string;
    FCrtAnt: string;
    FUltPgt: TDate;
    FDatNeg: TDate;
    FJrsNeg: Double;
    FMulNeg: Double;
    FDscNeg: Double;
    FOutNeg: Double;
    FUsuNeg: Integer;
    FCpgNeg: string;
    FTaxNeg: Double;
    FCotNeg: Double;
    FVlrDca: Double;
    FVlrDcb: Double;
    FVlrOud: Double;
    FNotDeb: Integer;
    FNumPrj: Integer;
    FCodFpj: Integer;
    FCtaFin: Integer;
    FCtaRed: Integer;
    FCodCcu: string;
    FQtdDup: Integer;
    FQtdBlo: Integer;
    FDatUcm: TDate;
    FCotUcm: Double;
    FFilNfv: Integer;
    FCodSnf: string;
    FNumNfv: Integer;
    FFilCtr: Integer;
    FNumCtr: Integer;
    FSeqImo: Integer;
    FFilNff: Integer;
    FNumNff: Integer;
    FFilPed: Integer;
    FNumPed: Integer;
    FFilNfc: Integer;
    FForNfc: Integer;
    FNumNfc: Integer;
    FSnfNfc: string;
    FFilNdb: Integer;
    FNumNdb: string;
    FTptNdb: string;
    FTipEfe: Char;
    FTnsPre: string;
    FDatPre: TDate;
    FVlrPre: Double;
    FCtrFre: Integer;
    FCtrNre: Integer;
    FPedFre: Integer;
    FPedNre: Integer;
    FCodBar: string;
    FUsuSit: Integer;
    FNumEco: Integer;
    FNumAce: string;
    FFilCcr: Integer;
    FNumCcr: Integer;
    FSitPef: Integer;
    FUsuGer: Integer;
    FDatGer: TDate;
    FHorGer: Integer;
    FCatTef: string;
    FNsuTef: string;
    FRotSap: Integer;
    FNumDfs: Integer;
    FCodEqu: Integer;
    FNumCfi: Integer;
    FCatExt: string;
    FCodOpe: Integer;
    FCarCov: string;
    FCarPre: string;
    FCodCnv: Integer;
    FUSU_ConChe: Char;
    FUSU_SitSer: Integer;
    FUSU_ExpSer: TDate;
    FUSU_IndEnv: Integer;
    FUSU_UsuConChe: Integer;
    FUSU_DatConChe: TDate;
    FUSU_HorConChe: Integer;

    FCodEmpOLD: Integer;
    FCodFilOLD: Integer;
    FNumTitOLD: string;
    FCodTptOLD: string;
    FCodTnsOLD: string;
    FCodNtgOLD: Integer;
    FSitTitOLD: string;
    FDatEmiOLD: TDate;
    FDatEntOLD: TDate;
    FCodCliOLD: Integer;
    FCodSacOLD: Integer;
    FCodRepOLD: Integer;
    FCodCrpOLD: string;
    FObsTcrOLD: string;
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
    FCotFrjOLD: Double;
    FPerComOLD: Double;
    FComRecOLD: Double;
    FVlrBcoOLD: Double;
    FVlrComOLD: Double;
    FDatDscOLD: TDate;
    FTolDscOLD: Integer;
    FPerDscOLD: Double;
    FVlrDscOLD: Double;
    FAntDscOLD: Char;
    FPrdDscOLD: Char;
    FPerJrsOLD: Double;
    FTipJrsOLD: Char;
    FJrsDiaOLD: Double;
    FTolJrsOLD: Integer;
    FDatCjmOLD: TDate;
    FPerMulOLD: Double;
    FTolMulOLD: Integer;
    FCheBanOLD: string;
    FCheAgeOLD: string;
    FCheCtaOLD: string;
    FCheNumOLD: string;
    FCodPorOLD: string;
    FCodCrtOLD: string;
    FTitBanOLD: string;
    FVlrOrmOLD: Double;
    FNumArbOLD: Integer;
    FCodOcrOLD: string;
    FCodIn1OLD: string;
    FCodIn2OLD: string;
    FPorAntOLD: string;
    FCrtAntOLD: string;
    FUltPgtOLD: TDate;
    FDatNegOLD: TDate;
    FJrsNegOLD: Double;
    FMulNegOLD: Double;
    FDscNegOLD: Double;
    FOutNegOLD: Double;
    FUsuNegOLD: Integer;
    FCpgNegOLD: string;
    FTaxNegOLD: Double;
    FCotNegOLD: Double;
    FVlrDcaOLD: Double;
    FVlrDcbOLD: Double;
    FVlrOudOLD: Double;
    FNotDebOLD: Integer;
    FNumPrjOLD: Integer;
    FCodFpjOLD: Integer;
    FCtaFinOLD: Integer;
    FCtaRedOLD: Integer;
    FCodCcuOLD: string;
    FQtdDupOLD: Integer;
    FQtdBloOLD: Integer;
    FDatUcmOLD: TDate;
    FCotUcmOLD: Double;
    FFilNfvOLD: Integer;
    FCodSnfOLD: string;
    FNumNfvOLD: Integer;
    FFilCtrOLD: Integer;
    FNumCtrOLD: Integer;
    FSeqImoOLD: Integer;
    FFilNffOLD: Integer;
    FNumNffOLD: Integer;
    FFilPedOLD: Integer;
    FNumPedOLD: Integer;
    FFilNfcOLD: Integer;
    FForNfcOLD: Integer;
    FNumNfcOLD: Integer;
    FSnfNfcOLD: string;
    FFilNdbOLD: Integer;
    FNumNdbOLD: string;
    FTptNdbOLD: string;
    FTipEfeOLD: Char;
    FTnsPreOLD: string;
    FDatPreOLD: TDate;
    FVlrPreOLD: Double;
    FCtrFreOLD: Integer;
    FCtrNreOLD: Integer;
    FPedFreOLD: Integer;
    FPedNreOLD: Integer;
    FCodBarOLD: string;
    FUsuSitOLD: Integer;
    FNumEcoOLD: Integer;
    FNumAceOLD: string;
    FFilCcrOLD: Integer;
    FNumCcrOLD: Integer;
    FSitPefOLD: Integer;
    FUsuGerOLD: Integer;
    FDatGerOLD: TDate;
    FHorGerOLD: Integer;
    FCatTefOLD: string;
    FNsuTefOLD: string;
    FRotSapOLD: Integer;
    FNumDfsOLD: Integer;
    FCodEquOLD: Integer;
    FNumCfiOLD: Integer;
    FCatExtOLD: string;
    FCodOpeOLD: Integer;
    FCarCovOLD: string;
    FCarPreOLD: string;
    FCodCnvOLD: Integer;
    FUSU_ConCheOLD: Char;
    FUSU_SitSerOLD: Integer;
    FUSU_ExpSerOLD: TDate;
    FUSU_IndEnvOLD: Integer;
    FUSU_UsuConCheOLD: Integer;
    FUSU_DatConCheOLD: TDate;
    FUSU_HorConCheOLD: Integer;

    function GetCodEmp: Integer;
    procedure SetCodEmp(const pCodEmp: Integer);
    function GetCodFil: Integer;
    procedure SetCodFil(const pCodFil: Integer);
    function GetNumTit: string;
    procedure SetNumTit(const pNumTit: string);
    function GetCodTpt: string;
    procedure SetCodTpt(const pCodTpt: string);
    function GetCodTns: string;
    procedure SetCodTns(const pCodTns: string);
    function GetCodNtg: Integer;
    procedure SetCodNtg(const pCodNtg: Integer);
    function GetSitTit: string;
    procedure SetSitTit(const pSitTit: string);
    function GetDatEmi: TDate;
    procedure SetDatEmi(const pDatEmi: TDate);
    function GetDatEnt: TDate;
    procedure SetDatEnt(const pDatEnt: TDate);
    function GetCodCli: Integer;
    procedure SetCodCli(const pCodCli: Integer);
    function GetCodSac: Integer;
    procedure SetCodSac(const pCodSac: Integer);
    function GetCodRep: Integer;
    procedure SetCodRep(const pCodRep: Integer);
    function GetCodCrp: string;
    procedure SetCodCrp(const pCodCrp: string);
    function GetObsTcr: string;
    procedure SetObsTcr(const pObsTcr: string);
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
    function GetCotFrj: Double;
    procedure SetCotFrj(const pCotFrj: Double);
    function GetPerCom: Double;
    procedure SetPerCom(const pPerCom: Double);
    function GetComRec: Double;
    procedure SetComRec(const pComRec: Double);
    function GetVlrBco: Double;
    procedure SetVlrBco(const pVlrBco: Double);
    function GetVlrCom: Double;
    procedure SetVlrCom(const pVlrCom: Double);
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
    function GetPrdDsc: Char;
    procedure SetPrdDsc(const pPrdDsc: Char);
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
    function GetCheBan: string;
    procedure SetCheBan(const pCheBan: string);
    function GetCheAge: string;
    procedure SetCheAge(const pCheAge: string);
    function GetCheCta: string;
    procedure SetCheCta(const pCheCta: string);
    function GetCheNum: string;
    procedure SetCheNum(const pCheNum: string);
    function GetCodPor: string;
    procedure SetCodPor(const pCodPor: string);
    function GetCodCrt: string;
    procedure SetCodCrt(const pCodCrt: string);
    function GetTitBan: string;
    procedure SetTitBan(const pTitBan: string);
    function GetVlrOrm: Double;
    procedure SetVlrOrm(const pVlrOrm: Double);
    function GetNumArb: Integer;
    procedure SetNumArb(const pNumArb: Integer);
    function GetCodOcr: string;
    procedure SetCodOcr(const pCodOcr: string);
    function GetCodIn1: string;
    procedure SetCodIn1(const pCodIn1: string);
    function GetCodIn2: string;
    procedure SetCodIn2(const pCodIn2: string);
    function GetPorAnt: string;
    procedure SetPorAnt(const pPorAnt: string);
    function GetCrtAnt: string;
    procedure SetCrtAnt(const pCrtAnt: string);
    function GetUltPgt: TDate;
    procedure SetUltPgt(const pUltPgt: TDate);
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
    function GetCpgNeg: string;
    procedure SetCpgNeg(const pCpgNeg: string);
    function GetTaxNeg: Double;
    procedure SetTaxNeg(const pTaxNeg: Double);
    function GetCotNeg: Double;
    procedure SetCotNeg(const pCotNeg: Double);
    function GetVlrDca: Double;
    procedure SetVlrDca(const pVlrDca: Double);
    function GetVlrDcb: Double;
    procedure SetVlrDcb(const pVlrDcb: Double);
    function GetVlrOud: Double;
    procedure SetVlrOud(const pVlrOud: Double);
    function GetNotDeb: Integer;
    procedure SetNotDeb(const pNotDeb: Integer);
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
    function GetQtdDup: Integer;
    procedure SetQtdDup(const pQtdDup: Integer);
    function GetQtdBlo: Integer;
    procedure SetQtdBlo(const pQtdBlo: Integer);
    function GetDatUcm: TDate;
    procedure SetDatUcm(const pDatUcm: TDate);
    function GetCotUcm: Double;
    procedure SetCotUcm(const pCotUcm: Double);
    function GetFilNfv: Integer;
    procedure SetFilNfv(const pFilNfv: Integer);
    function GetCodSnf: string;
    procedure SetCodSnf(const pCodSnf: string);
    function GetNumNfv: Integer;
    procedure SetNumNfv(const pNumNfv: Integer);
    function GetFilCtr: Integer;
    procedure SetFilCtr(const pFilCtr: Integer);
    function GetNumCtr: Integer;
    procedure SetNumCtr(const pNumCtr: Integer);
    function GetSeqImo: Integer;
    procedure SetSeqImo(const pSeqImo: Integer);
    function GetFilNff: Integer;
    procedure SetFilNff(const pFilNff: Integer);
    function GetNumNff: Integer;
    procedure SetNumNff(const pNumNff: Integer);
    function GetFilPed: Integer;
    procedure SetFilPed(const pFilPed: Integer);
    function GetNumPed: Integer;
    procedure SetNumPed(const pNumPed: Integer);
    function GetFilNfc: Integer;
    procedure SetFilNfc(const pFilNfc: Integer);
    function GetForNfc: Integer;
    procedure SetForNfc(const pForNfc: Integer);
    function GetNumNfc: Integer;
    procedure SetNumNfc(const pNumNfc: Integer);
    function GetSnfNfc: string;
    procedure SetSnfNfc(const pSnfNfc: string);
    function GetFilNdb: Integer;
    procedure SetFilNdb(const pFilNdb: Integer);
    function GetNumNdb: string;
    procedure SetNumNdb(const pNumNdb: string);
    function GetTptNdb: string;
    procedure SetTptNdb(const pTptNdb: string);
    function GetTipEfe: Char;
    procedure SetTipEfe(const pTipEfe: Char);
    function GetTnsPre: string;
    procedure SetTnsPre(const pTnsPre: string);
    function GetDatPre: TDate;
    procedure SetDatPre(const pDatPre: TDate);
    function GetVlrPre: Double;
    procedure SetVlrPre(const pVlrPre: Double);
    function GetCtrFre: Integer;
    procedure SetCtrFre(const pCtrFre: Integer);
    function GetCtrNre: Integer;
    procedure SetCtrNre(const pCtrNre: Integer);
    function GetPedFre: Integer;
    procedure SetPedFre(const pPedFre: Integer);
    function GetPedNre: Integer;
    procedure SetPedNre(const pPedNre: Integer);
    function GetCodBar: string;
    procedure SetCodBar(const pCodBar: string);
    function GetUsuSit: Integer;
    procedure SetUsuSit(const pUsuSit: Integer);
    function GetNumEco: Integer;
    procedure SetNumEco(const pNumEco: Integer);
    function GetNumAce: string;
    procedure SetNumAce(const pNumAce: string);
    function GetFilCcr: Integer;
    procedure SetFilCcr(const pFilCcr: Integer);
    function GetNumCcr: Integer;
    procedure SetNumCcr(const pNumCcr: Integer);
    function GetSitPef: Integer;
    procedure SetSitPef(const pSitPef: Integer);
    function GetUsuGer: Integer;
    procedure SetUsuGer(const pUsuGer: Integer);
    function GetDatGer: TDate;
    procedure SetDatGer(const pDatGer: TDate);
    function GetHorGer: Integer;
    procedure SetHorGer(const pHorGer: Integer);
    function GetCatTef: string;
    procedure SetCatTef(const pCatTef: string);
    function GetNsuTef: string;
    procedure SetNsuTef(const pNsuTef: string);
    function GetRotSap: Integer;
    procedure SetRotSap(const pRotSap: Integer);
    function GetNumDfs: Integer;
    procedure SetNumDfs(const pNumDfs: Integer);
    function GetCodEqu: Integer;
    procedure SetCodEqu(const pCodEqu: Integer);
    function GetNumCfi: Integer;
    procedure SetNumCfi(const pNumCfi: Integer);
    function GetCatExt: string;
    procedure SetCatExt(const pCatExt: string);
    function GetCodOpe: Integer;
    procedure SetCodOpe(const pCodOpe: Integer);
    function GetCarCov: string;
    procedure SetCarCov(const pCarCov: string);
    function GetCarPre: string;
    procedure SetCarPre(const pCarPre: string);
    function GetCodCnv: Integer;
    procedure SetCodCnv(const pCodCnv: Integer);
    function GetUSU_ConChe: Char;
    procedure SetUSU_ConChe(const pUSU_ConChe: Char);
    function GetUSU_SitSer: Integer;
    procedure SetUSU_SitSer(const pUSU_SitSer: Integer);
    function GetUSU_ExpSer: TDate;
    procedure SetUSU_ExpSer(const pUSU_ExpSer: TDate);
    function GetUSU_IndEnv: Integer;
    procedure SetUSU_IndEnv(const pUSU_IndEnv: Integer);
    function GetUSU_UsuConChe: Integer;
    procedure SetUSU_UsuConChe(const pUSU_UsuConChe: Integer);
    function GetUSU_DatConChe: TDate;
    procedure SetUSU_DatConChe(const pUSU_DatConChe: TDate);
    function GetUSU_HorConChe: Integer;
    procedure SetUSU_HorConChe(const pUSU_HorConChe: Integer);

    function GetCodEmpOld: Integer;
    procedure SetCodEmpOld(const pCodEmp: Integer);
    function GetCodFilOld: Integer;
    procedure SetCodFilOld(const pCodFil: Integer);
    function GetNumTitOld: string;
    procedure SetNumTitOld(const pNumTit: string);
    function GetCodTptOld: string;
    procedure SetCodTptOld(const pCodTpt: string);
    function GetCodTnsOld: string;
    procedure SetCodTnsOld(const pCodTns: string);
    function GetCodNtgOld: Integer;
    procedure SetCodNtgOld(const pCodNtg: Integer);
    function GetSitTitOld: string;
    procedure SetSitTitOld(const pSitTit: string);
    function GetDatEmiOld: TDate;
    procedure SetDatEmiOld(const pDatEmi: TDate);
    function GetDatEntOld: TDate;
    procedure SetDatEntOld(const pDatEnt: TDate);
    function GetCodCliOld: Integer;
    procedure SetCodCliOld(const pCodCli: Integer);
    function GetCodSacOld: Integer;
    procedure SetCodSacOld(const pCodSac: Integer);
    function GetCodRepOld: Integer;
    procedure SetCodRepOld(const pCodRep: Integer);
    function GetCodCrpOld: string;
    procedure SetCodCrpOld(const pCodCrp: string);
    function GetObsTcrOld: string;
    procedure SetObsTcrOld(const pObsTcr: string);
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
    function GetCotFrjOld: Double;
    procedure SetCotFrjOld(const pCotFrj: Double);
    function GetPerComOld: Double;
    procedure SetPerComOld(const pPerCom: Double);
    function GetComRecOld: Double;
    procedure SetComRecOld(const pComRec: Double);
    function GetVlrBcoOld: Double;
    procedure SetVlrBcoOld(const pVlrBco: Double);
    function GetVlrComOld: Double;
    procedure SetVlrComOld(const pVlrCom: Double);
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
    function GetPrdDscOld: Char;
    procedure SetPrdDscOld(const pPrdDsc: Char);
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
    function GetCheBanOld: string;
    procedure SetCheBanOld(const pCheBan: string);
    function GetCheAgeOld: string;
    procedure SetCheAgeOld(const pCheAge: string);
    function GetCheCtaOld: string;
    procedure SetCheCtaOld(const pCheCta: string);
    function GetCheNumOld: string;
    procedure SetCheNumOld(const pCheNum: string);
    function GetCodPorOld: string;
    procedure SetCodPorOld(const pCodPor: string);
    function GetCodCrtOld: string;
    procedure SetCodCrtOld(const pCodCrt: string);
    function GetTitBanOld: string;
    procedure SetTitBanOld(const pTitBan: string);
    function GetVlrOrmOld: Double;
    procedure SetVlrOrmOld(const pVlrOrm: Double);
    function GetNumArbOld: Integer;
    procedure SetNumArbOld(const pNumArb: Integer);
    function GetCodOcrOld: string;
    procedure SetCodOcrOld(const pCodOcr: string);
    function GetCodIn1Old: string;
    procedure SetCodIn1Old(const pCodIn1: string);
    function GetCodIn2Old: string;
    procedure SetCodIn2Old(const pCodIn2: string);
    function GetPorAntOld: string;
    procedure SetPorAntOld(const pPorAnt: string);
    function GetCrtAntOld: string;
    procedure SetCrtAntOld(const pCrtAnt: string);
    function GetUltPgtOld: TDate;
    procedure SetUltPgtOld(const pUltPgt: TDate);
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
    function GetCpgNegOld: string;
    procedure SetCpgNegOld(const pCpgNeg: string);
    function GetTaxNegOld: Double;
    procedure SetTaxNegOld(const pTaxNeg: Double);
    function GetCotNegOld: Double;
    procedure SetCotNegOld(const pCotNeg: Double);
    function GetVlrDcaOld: Double;
    procedure SetVlrDcaOld(const pVlrDca: Double);
    function GetVlrDcbOld: Double;
    procedure SetVlrDcbOld(const pVlrDcb: Double);
    function GetVlrOudOld: Double;
    procedure SetVlrOudOld(const pVlrOud: Double);
    function GetNotDebOld: Integer;
    procedure SetNotDebOld(const pNotDeb: Integer);
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
    function GetQtdDupOld: Integer;
    procedure SetQtdDupOld(const pQtdDup: Integer);
    function GetQtdBloOld: Integer;
    procedure SetQtdBloOld(const pQtdBlo: Integer);
    function GetDatUcmOld: TDate;
    procedure SetDatUcmOld(const pDatUcm: TDate);
    function GetCotUcmOld: Double;
    procedure SetCotUcmOld(const pCotUcm: Double);
    function GetFilNfvOld: Integer;
    procedure SetFilNfvOld(const pFilNfv: Integer);
    function GetCodSnfOld: string;
    procedure SetCodSnfOld(const pCodSnf: string);
    function GetNumNfvOld: Integer;
    procedure SetNumNfvOld(const pNumNfv: Integer);
    function GetFilCtrOld: Integer;
    procedure SetFilCtrOld(const pFilCtr: Integer);
    function GetNumCtrOld: Integer;
    procedure SetNumCtrOld(const pNumCtr: Integer);
    function GetSeqImoOld: Integer;
    procedure SetSeqImoOld(const pSeqImo: Integer);
    function GetFilNffOld: Integer;
    procedure SetFilNffOld(const pFilNff: Integer);
    function GetNumNffOld: Integer;
    procedure SetNumNffOld(const pNumNff: Integer);
    function GetFilPedOld: Integer;
    procedure SetFilPedOld(const pFilPed: Integer);
    function GetNumPedOld: Integer;
    procedure SetNumPedOld(const pNumPed: Integer);
    function GetFilNfcOld: Integer;
    procedure SetFilNfcOld(const pFilNfc: Integer);
    function GetForNfcOld: Integer;
    procedure SetForNfcOld(const pForNfc: Integer);
    function GetNumNfcOld: Integer;
    procedure SetNumNfcOld(const pNumNfc: Integer);
    function GetSnfNfcOld: string;
    procedure SetSnfNfcOld(const pSnfNfc: string);
    function GetFilNdbOld: Integer;
    procedure SetFilNdbOld(const pFilNdb: Integer);
    function GetNumNdbOld: string;
    procedure SetNumNdbOld(const pNumNdb: string);
    function GetTptNdbOld: string;
    procedure SetTptNdbOld(const pTptNdb: string);
    function GetTipEfeOld: Char;
    procedure SetTipEfeOld(const pTipEfe: Char);
    function GetTnsPreOld: string;
    procedure SetTnsPreOld(const pTnsPre: string);
    function GetDatPreOld: TDate;
    procedure SetDatPreOld(const pDatPre: TDate);
    function GetVlrPreOld: Double;
    procedure SetVlrPreOld(const pVlrPre: Double);
    function GetCtrFreOld: Integer;
    procedure SetCtrFreOld(const pCtrFre: Integer);
    function GetCtrNreOld: Integer;
    procedure SetCtrNreOld(const pCtrNre: Integer);
    function GetPedFreOld: Integer;
    procedure SetPedFreOld(const pPedFre: Integer);
    function GetPedNreOld: Integer;
    procedure SetPedNreOld(const pPedNre: Integer);
    function GetCodBarOld: string;
    procedure SetCodBarOld(const pCodBar: string);
    function GetUsuSitOld: Integer;
    procedure SetUsuSitOld(const pUsuSit: Integer);
    function GetNumEcoOld: Integer;
    procedure SetNumEcoOld(const pNumEco: Integer);
    function GetNumAceOld: string;
    procedure SetNumAceOld(const pNumAce: string);
    function GetFilCcrOld: Integer;
    procedure SetFilCcrOld(const pFilCcr: Integer);
    function GetNumCcrOld: Integer;
    procedure SetNumCcrOld(const pNumCcr: Integer);
    function GetSitPefOld: Integer;
    procedure SetSitPefOld(const pSitPef: Integer);
    function GetUsuGerOld: Integer;
    procedure SetUsuGerOld(const pUsuGer: Integer);
    function GetDatGerOld: TDate;
    procedure SetDatGerOld(const pDatGer: TDate);
    function GetHorGerOld: Integer;
    procedure SetHorGerOld(const pHorGer: Integer);
    function GetCatTefOld: string;
    procedure SetCatTefOld(const pCatTef: string);
    function GetNsuTefOld: string;
    procedure SetNsuTefOld(const pNsuTef: string);
    function GetRotSapOld: Integer;
    procedure SetRotSapOld(const pRotSap: Integer);
    function GetNumDfsOld: Integer;
    procedure SetNumDfsOld(const pNumDfs: Integer);
    function GetCodEquOld: Integer;
    procedure SetCodEquOld(const pCodEqu: Integer);
    function GetNumCfiOld: Integer;
    procedure SetNumCfiOld(const pNumCfi: Integer);
    function GetCatExtOld: string;
    procedure SetCatExtOld(const pCatExt: string);
    function GetCodOpeOld: Integer;
    procedure SetCodOpeOld(const pCodOpe: Integer);
    function GetCarCovOld: string;
    procedure SetCarCovOld(const pCarCov: string);
    function GetCarPreOld: string;
    procedure SetCarPreOld(const pCarPre: string);
    function GetCodCnvOld: Integer;
    procedure SetCodCnvOld(const pCodCnv: Integer);
    function GetUSU_ConCheOld: Char;
    procedure SetUSU_ConCheOld(const pUSU_ConChe: Char);
    function GetUSU_SitSerOld: Integer;
    procedure SetUSU_SitSerOld(const pUSU_SitSer: Integer);
    function GetUSU_ExpSerOld: TDate;
    procedure SetUSU_ExpSerOld(const pUSU_ExpSer: TDate);
    function GetUSU_IndEnvOld: Integer;
    procedure SetUSU_IndEnvOld(const pUSU_IndEnv: Integer);
    function GetUSU_UsuConCheOld: Integer;
    procedure SetUSU_UsuConCheOld(const pUSU_UsuConChe: Integer);
    function GetUSU_DatConCheOld: TDate;
    procedure SetUSU_DatConCheOld(const pUSU_DatConChe: TDate);
    function GetUSU_HorConCheOld: Integer;
    procedure SetUSU_HorConCheOld(const pUSU_HorConChe: Integer);
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
    property CodTns: string read GetCodTns write SetCodTns;
    property CodNtg: Integer read GetCodNtg write SetCodNtg;
    property SitTit: string read GetSitTit write SetSitTit;
    property DatEmi: TDate read GetDatEmi write SetDatEmi;
    property DatEnt: TDate read GetDatEnt write SetDatEnt;
    property CodCli: Integer read GetCodCli write SetCodCli;
    property CodSac: Integer read GetCodSac write SetCodSac;
    property CodRep: Integer read GetCodRep write SetCodRep;
    property CodCrp: string read GetCodCrp write SetCodCrp;
    property ObsTcr: string read GetObsTcr write SetObsTcr;
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
    property CotFrj: Double read GetCotFrj write SetCotFrj;
    property PerCom: Double read GetPerCom write SetPerCom;
    property ComRec: Double read GetComRec write SetComRec;
    property VlrBco: Double read GetVlrBco write SetVlrBco;
    property VlrCom: Double read GetVlrCom write SetVlrCom;
    property DatDsc: TDate read GetDatDsc write SetDatDsc;
    property TolDsc: Integer read GetTolDsc write SetTolDsc;
    property PerDsc: Double read GetPerDsc write SetPerDsc;
    property VlrDsc: Double read GetVlrDsc write SetVlrDsc;
    property AntDsc: Char read GetAntDsc write SetAntDsc;
    property PrdDsc: Char read GetPrdDsc write SetPrdDsc;
    property PerJrs: Double read GetPerJrs write SetPerJrs;
    property TipJrs: Char read GetTipJrs write SetTipJrs;
    property JrsDia: Double read GetJrsDia write SetJrsDia;
    property TolJrs: Integer read GetTolJrs write SetTolJrs;
    property DatCjm: TDate read GetDatCjm write SetDatCjm;
    property PerMul: Double read GetPerMul write SetPerMul;
    property TolMul: Integer read GetTolMul write SetTolMul;
    property CheBan: string read GetCheBan write SetCheBan;
    property CheAge: string read GetCheAge write SetCheAge;
    property CheCta: string read GetCheCta write SetCheCta;
    property CheNum: string read GetCheNum write SetCheNum;
    property CodPor: string read GetCodPor write SetCodPor;
    property CodCrt: string read GetCodCrt write SetCodCrt;
    property TitBan: string read GetTitBan write SetTitBan;
    property VlrOrm: Double read GetVlrOrm write SetVlrOrm;
    property NumArb: Integer read GetNumArb write SetNumArb;
    property CodOcr: string read GetCodOcr write SetCodOcr;
    property CodIn1: string read GetCodIn1 write SetCodIn1;
    property CodIn2: string read GetCodIn2 write SetCodIn2;
    property PorAnt: string read GetPorAnt write SetPorAnt;
    property CrtAnt: string read GetCrtAnt write SetCrtAnt;
    property UltPgt: TDate read GetUltPgt write SetUltPgt;
    property DatNeg: TDate read GetDatNeg write SetDatNeg;
    property JrsNeg: Double read GetJrsNeg write SetJrsNeg;
    property MulNeg: Double read GetMulNeg write SetMulNeg;
    property DscNeg: Double read GetDscNeg write SetDscNeg;
    property OutNeg: Double read GetOutNeg write SetOutNeg;
    property UsuNeg: Integer read GetUsuNeg write SetUsuNeg;
    property CpgNeg: string read GetCpgNeg write SetCpgNeg;
    property TaxNeg: Double read GetTaxNeg write SetTaxNeg;
    property CotNeg: Double read GetCotNeg write SetCotNeg;
    property VlrDca: Double read GetVlrDca write SetVlrDca;
    property VlrDcb: Double read GetVlrDcb write SetVlrDcb;
    property VlrOud: Double read GetVlrOud write SetVlrOud;
    property NotDeb: Integer read GetNotDeb write SetNotDeb;
    property NumPrj: Integer read GetNumPrj write SetNumPrj;
    property CodFpj: Integer read GetCodFpj write SetCodFpj;
    property CtaFin: Integer read GetCtaFin write SetCtaFin;
    property CtaRed: Integer read GetCtaRed write SetCtaRed;
    property CodCcu: string read GetCodCcu write SetCodCcu;
    property QtdDup: Integer read GetQtdDup write SetQtdDup;
    property QtdBlo: Integer read GetQtdBlo write SetQtdBlo;
    property DatUcm: TDate read GetDatUcm write SetDatUcm;
    property CotUcm: Double read GetCotUcm write SetCotUcm;
    property FilNfv: Integer read GetFilNfv write SetFilNfv;
    property CodSnf: string read GetCodSnf write SetCodSnf;
    property NumNfv: Integer read GetNumNfv write SetNumNfv;
    property FilCtr: Integer read GetFilCtr write SetFilCtr;
    property NumCtr: Integer read GetNumCtr write SetNumCtr;
    property SeqImo: Integer read GetSeqImo write SetSeqImo;
    property FilNff: Integer read GetFilNff write SetFilNff;
    property NumNff: Integer read GetNumNff write SetNumNff;
    property FilPed: Integer read GetFilPed write SetFilPed;
    property NumPed: Integer read GetNumPed write SetNumPed;
    property FilNfc: Integer read GetFilNfc write SetFilNfc;
    property ForNfc: Integer read GetForNfc write SetForNfc;
    property NumNfc: Integer read GetNumNfc write SetNumNfc;
    property SnfNfc: string read GetSnfNfc write SetSnfNfc;
    property FilNdb: Integer read GetFilNdb write SetFilNdb;
    property NumNdb: string read GetNumNdb write SetNumNdb;
    property TptNdb: string read GetTptNdb write SetTptNdb;
    property TipEfe: Char read GetTipEfe write SetTipEfe;
    property TnsPre: string read GetTnsPre write SetTnsPre;
    property DatPre: TDate read GetDatPre write SetDatPre;
    property VlrPre: Double read GetVlrPre write SetVlrPre;
    property CtrFre: Integer read GetCtrFre write SetCtrFre;
    property CtrNre: Integer read GetCtrNre write SetCtrNre;
    property PedFre: Integer read GetPedFre write SetPedFre;
    property PedNre: Integer read GetPedNre write SetPedNre;
    property CodBar: string read GetCodBar write SetCodBar;
    property UsuSit: Integer read GetUsuSit write SetUsuSit;
    property NumEco: Integer read GetNumEco write SetNumEco;
    property NumAce: string read GetNumAce write SetNumAce;
    property FilCcr: Integer read GetFilCcr write SetFilCcr;
    property NumCcr: Integer read GetNumCcr write SetNumCcr;
    property SitPef: Integer read GetSitPef write SetSitPef;
    property UsuGer: Integer read GetUsuGer write SetUsuGer;
    property DatGer: TDate read GetDatGer write SetDatGer;
    property HorGer: Integer read GetHorGer write SetHorGer;
    property CatTef: string read GetCatTef write SetCatTef;
    property NsuTef: string read GetNsuTef write SetNsuTef;
    property RotSap: Integer read GetRotSap write SetRotSap;
    property NumDfs: Integer read GetNumDfs write SetNumDfs;
    property CodEqu: Integer read GetCodEqu write SetCodEqu;
    property NumCfi: Integer read GetNumCfi write SetNumCfi;
    property CatExt: string read GetCatExt write SetCatExt;
    property CodOpe: Integer read GetCodOpe write SetCodOpe;
    property CarCov: string read GetCarCov write SetCarCov;
    property CarPre: string read GetCarPre write SetCarPre;
    property CodCnv: Integer read GetCodCnv write SetCodCnv;
    property USU_ConChe: Char read GetUSU_ConChe write SetUSU_ConChe;
    property USU_SitSer: Integer read GetUSU_SitSer write SetUSU_SitSer;
    property USU_ExpSer: TDate read GetUSU_ExpSer write SetUSU_ExpSer;
    property USU_IndEnv: Integer read GetUSU_IndEnv write SetUSU_IndEnv;
    property USU_UsuConChe: Integer read GetUSU_UsuConChe write SetUSU_UsuConChe;
    property USU_DatConChe: TDate read GetUSU_DatConChe write SetUSU_DatConChe;
    property USU_HorConChe: Integer read GetUSU_HorConChe write SetUSU_HorConChe;

    property OLD_CodEmp: Integer read GetCodEmpOLD write SetCodEmpOLD;
    property OLD_CodFil: Integer read GetCodFilOLD write SetCodFilOLD;
    property OLD_NumTit: string read GetNumTitOLD write SetNumTitOLD;
    property OLD_CodTpt: string read GetCodTptOLD write SetCodTptOLD;
    property OLD_CodTns: string read GetCodTnsOLD write SetCodTnsOLD;
    property OLD_CodNtg: Integer read GetCodNtgOLD write SetCodNtgOLD;
    property OLD_SitTit: string read GetSitTitOLD write SetSitTitOLD;
    property OLD_DatEmi: TDate read GetDatEmiOLD write SetDatEmiOLD;
    property OLD_DatEnt: TDate read GetDatEntOLD write SetDatEntOLD;
    property OLD_CodCli: Integer read GetCodCliOLD write SetCodCliOLD;
    property OLD_CodSac: Integer read GetCodSacOLD write SetCodSacOLD;
    property OLD_CodRep: Integer read GetCodRepOLD write SetCodRepOLD;
    property OLD_CodCrp: string read GetCodCrpOLD write SetCodCrpOLD;
    property OLD_ObsTcr: string read GetObsTcrOLD write SetObsTcrOLD;
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
    property OLD_CotFrj: Double read GetCotFrjOLD write SetCotFrjOLD;
    property OLD_PerCom: Double read GetPerComOLD write SetPerComOLD;
    property OLD_ComRec: Double read GetComRecOLD write SetComRecOLD;
    property OLD_VlrBco: Double read GetVlrBcoOLD write SetVlrBcoOLD;
    property OLD_VlrCom: Double read GetVlrComOLD write SetVlrComOLD;
    property OLD_DatDsc: TDate read GetDatDscOLD write SetDatDscOLD;
    property OLD_TolDsc: Integer read GetTolDscOLD write SetTolDscOLD;
    property OLD_PerDsc: Double read GetPerDscOLD write SetPerDscOLD;
    property OLD_VlrDsc: Double read GetVlrDscOLD write SetVlrDscOLD;
    property OLD_AntDsc: Char read GetAntDscOLD write SetAntDscOLD;
    property OLD_PrdDsc: Char read GetPrdDscOLD write SetPrdDscOLD;
    property OLD_PerJrs: Double read GetPerJrsOLD write SetPerJrsOLD;
    property OLD_TipJrs: Char read GetTipJrsOLD write SetTipJrsOLD;
    property OLD_JrsDia: Double read GetJrsDiaOLD write SetJrsDiaOLD;
    property OLD_TolJrs: Integer read GetTolJrsOLD write SetTolJrsOLD;
    property OLD_DatCjm: TDate read GetDatCjmOLD write SetDatCjmOLD;
    property OLD_PerMul: Double read GetPerMulOLD write SetPerMulOLD;
    property OLD_TolMul: Integer read GetTolMulOLD write SetTolMulOLD;
    property OLD_CheBan: string read GetCheBanOLD write SetCheBanOLD;
    property OLD_CheAge: string read GetCheAgeOLD write SetCheAgeOLD;
    property OLD_CheCta: string read GetCheCtaOLD write SetCheCtaOLD;
    property OLD_CheNum: string read GetCheNumOLD write SetCheNumOLD;
    property OLD_CodPor: string read GetCodPorOLD write SetCodPorOLD;
    property OLD_CodCrt: string read GetCodCrtOLD write SetCodCrtOLD;
    property OLD_TitBan: string read GetTitBanOLD write SetTitBanOLD;
    property OLD_VlrOrm: Double read GetVlrOrmOLD write SetVlrOrmOLD;
    property OLD_NumArb: Integer read GetNumArbOLD write SetNumArbOLD;
    property OLD_CodOcr: string read GetCodOcrOLD write SetCodOcrOLD;
    property OLD_CodIn1: string read GetCodIn1OLD write SetCodIn1OLD;
    property OLD_CodIn2: string read GetCodIn2OLD write SetCodIn2OLD;
    property OLD_PorAnt: string read GetPorAntOLD write SetPorAntOLD;
    property OLD_CrtAnt: string read GetCrtAntOLD write SetCrtAntOLD;
    property OLD_UltPgt: TDate read GetUltPgtOLD write SetUltPgtOLD;
    property OLD_DatNeg: TDate read GetDatNegOLD write SetDatNegOLD;
    property OLD_JrsNeg: Double read GetJrsNegOLD write SetJrsNegOLD;
    property OLD_MulNeg: Double read GetMulNegOLD write SetMulNegOLD;
    property OLD_DscNeg: Double read GetDscNegOLD write SetDscNegOLD;
    property OLD_OutNeg: Double read GetOutNegOLD write SetOutNegOLD;
    property OLD_UsuNeg: Integer read GetUsuNegOLD write SetUsuNegOLD;
    property OLD_CpgNeg: string read GetCpgNegOLD write SetCpgNegOLD;
    property OLD_TaxNeg: Double read GetTaxNegOLD write SetTaxNegOLD;
    property OLD_CotNeg: Double read GetCotNegOLD write SetCotNegOLD;
    property OLD_VlrDca: Double read GetVlrDcaOLD write SetVlrDcaOLD;
    property OLD_VlrDcb: Double read GetVlrDcbOLD write SetVlrDcbOLD;
    property OLD_VlrOud: Double read GetVlrOudOLD write SetVlrOudOLD;
    property OLD_NotDeb: Integer read GetNotDebOLD write SetNotDebOLD;
    property OLD_NumPrj: Integer read GetNumPrjOLD write SetNumPrjOLD;
    property OLD_CodFpj: Integer read GetCodFpjOLD write SetCodFpjOLD;
    property OLD_CtaFin: Integer read GetCtaFinOLD write SetCtaFinOLD;
    property OLD_CtaRed: Integer read GetCtaRedOLD write SetCtaRedOLD;
    property OLD_CodCcu: string read GetCodCcuOLD write SetCodCcuOLD;
    property OLD_QtdDup: Integer read GetQtdDupOLD write SetQtdDupOLD;
    property OLD_QtdBlo: Integer read GetQtdBloOLD write SetQtdBloOLD;
    property OLD_DatUcm: TDate read GetDatUcmOLD write SetDatUcmOLD;
    property OLD_CotUcm: Double read GetCotUcmOLD write SetCotUcmOLD;
    property OLD_FilNfv: Integer read GetFilNfvOLD write SetFilNfvOLD;
    property OLD_CodSnf: string read GetCodSnfOLD write SetCodSnfOLD;
    property OLD_NumNfv: Integer read GetNumNfvOLD write SetNumNfvOLD;
    property OLD_FilCtr: Integer read GetFilCtrOLD write SetFilCtrOLD;
    property OLD_NumCtr: Integer read GetNumCtrOLD write SetNumCtrOLD;
    property OLD_SeqImo: Integer read GetSeqImoOLD write SetSeqImoOLD;
    property OLD_FilNff: Integer read GetFilNffOLD write SetFilNffOLD;
    property OLD_NumNff: Integer read GetNumNffOLD write SetNumNffOLD;
    property OLD_FilPed: Integer read GetFilPedOLD write SetFilPedOLD;
    property OLD_NumPed: Integer read GetNumPedOLD write SetNumPedOLD;
    property OLD_FilNfc: Integer read GetFilNfcOLD write SetFilNfcOLD;
    property OLD_ForNfc: Integer read GetForNfcOLD write SetForNfcOLD;
    property OLD_NumNfc: Integer read GetNumNfcOLD write SetNumNfcOLD;
    property OLD_SnfNfc: string read GetSnfNfcOLD write SetSnfNfcOLD;
    property OLD_FilNdb: Integer read GetFilNdbOLD write SetFilNdbOLD;
    property OLD_NumNdb: string read GetNumNdbOLD write SetNumNdbOLD;
    property OLD_TptNdb: string read GetTptNdbOLD write SetTptNdbOLD;
    property OLD_TipEfe: Char read GetTipEfeOLD write SetTipEfeOLD;
    property OLD_TnsPre: string read GetTnsPreOLD write SetTnsPreOLD;
    property OLD_DatPre: TDate read GetDatPreOLD write SetDatPreOLD;
    property OLD_VlrPre: Double read GetVlrPreOLD write SetVlrPreOLD;
    property OLD_CtrFre: Integer read GetCtrFreOLD write SetCtrFreOLD;
    property OLD_CtrNre: Integer read GetCtrNreOLD write SetCtrNreOLD;
    property OLD_PedFre: Integer read GetPedFreOLD write SetPedFreOLD;
    property OLD_PedNre: Integer read GetPedNreOLD write SetPedNreOLD;
    property OLD_CodBar: string read GetCodBarOLD write SetCodBarOLD;
    property OLD_UsuSit: Integer read GetUsuSitOLD write SetUsuSitOLD;
    property OLD_NumEco: Integer read GetNumEcoOLD write SetNumEcoOLD;
    property OLD_NumAce: string read GetNumAceOLD write SetNumAceOLD;
    property OLD_FilCcr: Integer read GetFilCcrOLD write SetFilCcrOLD;
    property OLD_NumCcr: Integer read GetNumCcrOLD write SetNumCcrOLD;
    property OLD_SitPef: Integer read GetSitPefOLD write SetSitPefOLD;
    property OLD_UsuGer: Integer read GetUsuGerOLD write SetUsuGerOLD;
    property OLD_DatGer: TDate read GetDatGerOLD write SetDatGerOLD;
    property OLD_HorGer: Integer read GetHorGerOLD write SetHorGerOLD;
    property OLD_CatTef: string read GetCatTefOLD write SetCatTefOLD;
    property OLD_NsuTef: string read GetNsuTefOLD write SetNsuTefOLD;
    property OLD_RotSap: Integer read GetRotSapOLD write SetRotSapOLD;
    property OLD_NumDfs: Integer read GetNumDfsOLD write SetNumDfsOLD;
    property OLD_CodEqu: Integer read GetCodEquOLD write SetCodEquOLD;
    property OLD_NumCfi: Integer read GetNumCfiOLD write SetNumCfiOLD;
    property OLD_CatExt: string read GetCatExtOLD write SetCatExtOLD;
    property OLD_CodOpe: Integer read GetCodOpeOLD write SetCodOpeOLD;
    property OLD_CarCov: string read GetCarCovOLD write SetCarCovOLD;
    property OLD_CarPre: string read GetCarPreOLD write SetCarPreOLD;
    property OLD_CodCnv: Integer read GetCodCnvOLD write SetCodCnvOLD;
    property OLD_USU_ConChe: Char read GetUSU_ConCheOLD write SetUSU_ConCheOLD;
    property OLD_USU_SitSer: Integer read GetUSU_SitSerOLD write SetUSU_SitSerOLD;
    property OLD_USU_ExpSer: TDate read GetUSU_ExpSerOLD write SetUSU_ExpSerOLD;
    property OLD_USU_IndEnv: Integer read GetUSU_IndEnvOLD write SetUSU_IndEnvOLD;
    property OLD_USU_UsuConChe: Integer read GetUSU_UsuConCheOLD write SetUSU_UsuConCheOLD;
    property OLD_USU_DatConChe: TDate read GetUSU_DatConCheOLD write SetUSU_DatConCheOLD;
    property OLD_USU_HorConChe: Integer read GetUSU_HorConCheOLD write SetUSU_HorConCheOLD;
  end;

implementation

{ T301TCR }

constructor T301TCR.Create();
begin
  AddForeignKeys(['CodEmp','CodFil','CodTpt','CodTns','CodCli','CodRep','CodPor','CodCrt'], ['CodEmp','CodFil','CodTpt','CodTns','CodCli','CodRep','CodPor','CodCrt']);
  AddPrimaryKeys('CodEmp;CodFil;NumTit;CodTpt');

  inherited Create('E301TCR');
end;

destructor T301TCR.Destroy();
begin
  inherited;
end;

function T301TCR.GetCodEmp: Integer;
begin
  Result := FCodEmp;
end;

procedure T301TCR.SetCodEmp(const pCodEmp: Integer);
begin
  FCodEmp := pCodEmp;

  CheckField('CodEmp');
end;

function T301TCR.GetCodFil: Integer;
begin
  Result := FCodFil;
end;

procedure T301TCR.SetCodFil(const pCodFil: Integer);
begin
  FCodFil := pCodFil;

  CheckField('CodFil');
end;

function T301TCR.GetNumTit: string;
begin
  Result := FNumTit;
end;

procedure T301TCR.SetNumTit(const pNumTit: string);
begin
  FNumTit := pNumTit;

  CheckField('NumTit');
end;

function T301TCR.GetCodTpt: string;
begin
  Result := FCodTpt;
end;

procedure T301TCR.SetCodTpt(const pCodTpt: string);
begin
  FCodTpt := pCodTpt;

  CheckField('CodTpt');
end;

function T301TCR.GetCodTns: string;
begin
  Result := FCodTns;
end;

procedure T301TCR.SetCodTns(const pCodTns: string);
begin
  FCodTns := pCodTns;

  CheckField('CodTns');
end;

function T301TCR.GetCodNtg: Integer;
begin
  Result := FCodNtg;
end;

procedure T301TCR.SetCodNtg(const pCodNtg: Integer);
begin
  FCodNtg := pCodNtg;

  CheckField('CodNtg');
end;

function T301TCR.GetSitTit: string;
begin
  Result := FSitTit;
end;

procedure T301TCR.SetSitTit(const pSitTit: string);
begin
  FSitTit := pSitTit;

  CheckField('SitTit');
end;

function T301TCR.GetDatEmi: TDate;
begin
  Result := FDatEmi;
end;

procedure T301TCR.SetDatEmi(const pDatEmi: TDate);
begin
  FDatEmi := pDatEmi;

  CheckField('DatEmi');
end;

function T301TCR.GetDatEnt: TDate;
begin
  Result := FDatEnt;
end;

procedure T301TCR.SetDatEnt(const pDatEnt: TDate);
begin
  FDatEnt := pDatEnt;

  CheckField('DatEnt');
end;

function T301TCR.GetCodCli: Integer;
begin
  Result := FCodCli;
end;

procedure T301TCR.SetCodCli(const pCodCli: Integer);
begin
  FCodCli := pCodCli;

  CheckField('CodCli');
end;

function T301TCR.GetCodSac: Integer;
begin
  Result := FCodSac;
end;

procedure T301TCR.SetCodSac(const pCodSac: Integer);
begin
  FCodSac := pCodSac;

  CheckField('CodSac');
end;

function T301TCR.GetCodRep: Integer;
begin
  Result := FCodRep;
end;

procedure T301TCR.SetCodRep(const pCodRep: Integer);
begin
  FCodRep := pCodRep;

  CheckField('CodRep');
end;

function T301TCR.GetCodCrp: string;
begin
  Result := FCodCrp;
end;

procedure T301TCR.SetCodCrp(const pCodCrp: string);
begin
  FCodCrp := pCodCrp;

  CheckField('CodCrp');
end;

function T301TCR.GetObsTcr: string;
begin
  Result := FObsTcr;
end;

procedure T301TCR.SetObsTcr(const pObsTcr: string);
begin
  FObsTcr := pObsTcr;

  CheckField('ObsTcr');
end;

function T301TCR.GetVctOri: TDate;
begin
  Result := FVctOri;
end;

procedure T301TCR.SetVctOri(const pVctOri: TDate);
begin
  FVctOri := pVctOri;

  CheckField('VctOri');
end;

function T301TCR.GetVlrOri: Double;
begin
  Result := FVlrOri;
end;

procedure T301TCR.SetVlrOri(const pVlrOri: Double);
begin
  FVlrOri := pVlrOri;

  CheckField('VlrOri');
end;

function T301TCR.GetCodFpg: Integer;
begin
  Result := FCodFpg;
end;

procedure T301TCR.SetCodFpg(const pCodFpg: Integer);
begin
  FCodFpg := pCodFpg;

  CheckField('CodFpg');
end;

function T301TCR.GetVctPro: TDate;
begin
  Result := FVctPro;
end;

procedure T301TCR.SetVctPro(const pVctPro: TDate);
begin
  FVctPro := pVctPro;

  CheckField('VctPro');
end;

function T301TCR.GetProJrs: Char;
begin
  Result := FProJrs;
end;

procedure T301TCR.SetProJrs(const pProJrs: Char);
begin
  FProJrs := pProJrs;

  CheckField('ProJrs');
end;

function T301TCR.GetCodMpt: string;
begin
  Result := FCodMpt;
end;

procedure T301TCR.SetCodMpt(const pCodMpt: string);
begin
  FCodMpt := pCodMpt;

  CheckField('CodMpt');
end;

function T301TCR.GetDatPpt: TDate;
begin
  Result := FDatPpt;
end;

procedure T301TCR.SetDatPpt(const pDatPpt: TDate);
begin
  FDatPpt := pDatPpt;

  CheckField('DatPpt');
end;

function T301TCR.GetVlrAbe: Double;
begin
  Result := FVlrAbe;
end;

procedure T301TCR.SetVlrAbe(const pVlrAbe: Double);
begin
  FVlrAbe := pVlrAbe;

  CheckField('VlrAbe');
end;

function T301TCR.GetCodMoe: string;
begin
  Result := FCodMoe;
end;

procedure T301TCR.SetCodMoe(const pCodMoe: string);
begin
  FCodMoe := pCodMoe;

  CheckField('CodMoe');
end;

function T301TCR.GetCotEmi: Double;
begin
  Result := FCotEmi;
end;

procedure T301TCR.SetCotEmi(const pCotEmi: Double);
begin
  FCotEmi := pCotEmi;

  CheckField('CotEmi');
end;

function T301TCR.GetCodFrj: string;
begin
  Result := FCodFrj;
end;

procedure T301TCR.SetCodFrj(const pCodFrj: string);
begin
  FCodFrj := pCodFrj;

  CheckField('CodFrj');
end;

function T301TCR.GetCotFrj: Double;
begin
  Result := FCotFrj;
end;

procedure T301TCR.SetCotFrj(const pCotFrj: Double);
begin
  FCotFrj := pCotFrj;

  CheckField('CotFrj');
end;

function T301TCR.GetPerCom: Double;
begin
  Result := FPerCom;
end;

procedure T301TCR.SetPerCom(const pPerCom: Double);
begin
  FPerCom := pPerCom;

  CheckField('PerCom');
end;

function T301TCR.GetComRec: Double;
begin
  Result := FComRec;
end;

procedure T301TCR.SetComRec(const pComRec: Double);
begin
  FComRec := pComRec;

  CheckField('ComRec');
end;

function T301TCR.GetVlrBco: Double;
begin
  Result := FVlrBco;
end;

procedure T301TCR.SetVlrBco(const pVlrBco: Double);
begin
  FVlrBco := pVlrBco;

  CheckField('VlrBco');
end;

function T301TCR.GetVlrCom: Double;
begin
  Result := FVlrCom;
end;

procedure T301TCR.SetVlrCom(const pVlrCom: Double);
begin
  FVlrCom := pVlrCom;

  CheckField('VlrCom');
end;

function T301TCR.GetDatDsc: TDate;
begin
  Result := FDatDsc;
end;

procedure T301TCR.SetDatDsc(const pDatDsc: TDate);
begin
  FDatDsc := pDatDsc;

  CheckField('DatDsc');
end;

function T301TCR.GetTolDsc: Integer;
begin
  Result := FTolDsc;
end;

procedure T301TCR.SetTolDsc(const pTolDsc: Integer);
begin
  FTolDsc := pTolDsc;

  CheckField('TolDsc');
end;

function T301TCR.GetPerDsc: Double;
begin
  Result := FPerDsc;
end;

procedure T301TCR.SetPerDsc(const pPerDsc: Double);
begin
  FPerDsc := pPerDsc;

  CheckField('PerDsc');
end;

function T301TCR.GetVlrDsc: Double;
begin
  Result := FVlrDsc;
end;

procedure T301TCR.SetVlrDsc(const pVlrDsc: Double);
begin
  FVlrDsc := pVlrDsc;

  CheckField('VlrDsc');
end;

function T301TCR.GetAntDsc: Char;
begin
  Result := FAntDsc;
end;

procedure T301TCR.SetAntDsc(const pAntDsc: Char);
begin
  FAntDsc := pAntDsc;

  CheckField('AntDsc');
end;

function T301TCR.GetPrdDsc: Char;
begin
  Result := FPrdDsc;
end;

procedure T301TCR.SetPrdDsc(const pPrdDsc: Char);
begin
  FPrdDsc := pPrdDsc;

  CheckField('PrdDsc');
end;

function T301TCR.GetPerJrs: Double;
begin
  Result := FPerJrs;
end;

procedure T301TCR.SetPerJrs(const pPerJrs: Double);
begin
  FPerJrs := pPerJrs;

  CheckField('PerJrs');
end;

function T301TCR.GetTipJrs: Char;
begin
  Result := FTipJrs;
end;

procedure T301TCR.SetTipJrs(const pTipJrs: Char);
begin
  FTipJrs := pTipJrs;

  CheckField('TipJrs');
end;

function T301TCR.GetJrsDia: Double;
begin
  Result := FJrsDia;
end;

procedure T301TCR.SetJrsDia(const pJrsDia: Double);
begin
  FJrsDia := pJrsDia;

  CheckField('JrsDia');
end;

function T301TCR.GetTolJrs: Integer;
begin
  Result := FTolJrs;
end;

procedure T301TCR.SetTolJrs(const pTolJrs: Integer);
begin
  FTolJrs := pTolJrs;

  CheckField('TolJrs');
end;

function T301TCR.GetDatCjm: TDate;
begin
  Result := FDatCjm;
end;

procedure T301TCR.SetDatCjm(const pDatCjm: TDate);
begin
  FDatCjm := pDatCjm;

  CheckField('DatCjm');
end;

function T301TCR.GetPerMul: Double;
begin
  Result := FPerMul;
end;

procedure T301TCR.SetPerMul(const pPerMul: Double);
begin
  FPerMul := pPerMul;

  CheckField('PerMul');
end;

function T301TCR.GetTolMul: Integer;
begin
  Result := FTolMul;
end;

procedure T301TCR.SetTolMul(const pTolMul: Integer);
begin
  FTolMul := pTolMul;

  CheckField('TolMul');
end;

function T301TCR.GetCheBan: string;
begin
  Result := FCheBan;
end;

procedure T301TCR.SetCheBan(const pCheBan: string);
begin
  FCheBan := pCheBan;

  CheckField('CheBan');
end;

function T301TCR.GetCheAge: string;
begin
  Result := FCheAge;
end;

procedure T301TCR.SetCheAge(const pCheAge: string);
begin
  FCheAge := pCheAge;

  CheckField('CheAge');
end;

function T301TCR.GetCheCta: string;
begin
  Result := FCheCta;
end;

procedure T301TCR.SetCheCta(const pCheCta: string);
begin
  FCheCta := pCheCta;

  CheckField('CheCta');
end;

function T301TCR.GetCheNum: string;
begin
  Result := FCheNum;
end;

procedure T301TCR.SetCheNum(const pCheNum: string);
begin
  FCheNum := pCheNum;

  CheckField('CheNum');
end;

function T301TCR.GetCodPor: string;
begin
  Result := FCodPor;
end;

procedure T301TCR.SetCodPor(const pCodPor: string);
begin
  FCodPor := pCodPor;

  CheckField('CodPor');
end;

function T301TCR.GetCodCrt: string;
begin
  Result := FCodCrt;
end;

procedure T301TCR.SetCodCrt(const pCodCrt: string);
begin
  FCodCrt := pCodCrt;

  CheckField('CodCrt');
end;

function T301TCR.GetTitBan: string;
begin
  Result := FTitBan;
end;

procedure T301TCR.SetTitBan(const pTitBan: string);
begin
  FTitBan := pTitBan;

  CheckField('TitBan');
end;

function T301TCR.GetVlrOrm: Double;
begin
  Result := FVlrOrm;
end;

procedure T301TCR.SetVlrOrm(const pVlrOrm: Double);
begin
  FVlrOrm := pVlrOrm;

  CheckField('VlrOrm');
end;

function T301TCR.GetNumArb: Integer;
begin
  Result := FNumArb;
end;

procedure T301TCR.SetNumArb(const pNumArb: Integer);
begin
  FNumArb := pNumArb;

  CheckField('NumArb');
end;

function T301TCR.GetCodOcr: string;
begin
  Result := FCodOcr;
end;

procedure T301TCR.SetCodOcr(const pCodOcr: string);
begin
  FCodOcr := pCodOcr;

  CheckField('CodOcr');
end;

function T301TCR.GetCodIn1: string;
begin
  Result := FCodIn1;
end;

procedure T301TCR.SetCodIn1(const pCodIn1: string);
begin
  FCodIn1 := pCodIn1;

  CheckField('CodIn1');
end;

function T301TCR.GetCodIn2: string;
begin
  Result := FCodIn2;
end;

procedure T301TCR.SetCodIn2(const pCodIn2: string);
begin
  FCodIn2 := pCodIn2;

  CheckField('CodIn2');
end;

function T301TCR.GetPorAnt: string;
begin
  Result := FPorAnt;
end;

procedure T301TCR.SetPorAnt(const pPorAnt: string);
begin
  FPorAnt := pPorAnt;

  CheckField('PorAnt');
end;

function T301TCR.GetCrtAnt: string;
begin
  Result := FCrtAnt;
end;

procedure T301TCR.SetCrtAnt(const pCrtAnt: string);
begin
  FCrtAnt := pCrtAnt;

  CheckField('CrtAnt');
end;

function T301TCR.GetUltPgt: TDate;
begin
  Result := FUltPgt;
end;

procedure T301TCR.SetUltPgt(const pUltPgt: TDate);
begin
  FUltPgt := pUltPgt;

  CheckField('UltPgt');
end;

function T301TCR.GetDatNeg: TDate;
begin
  Result := FDatNeg;
end;

procedure T301TCR.SetDatNeg(const pDatNeg: TDate);
begin
  FDatNeg := pDatNeg;

  CheckField('DatNeg');
end;

function T301TCR.GetJrsNeg: Double;
begin
  Result := FJrsNeg;
end;

procedure T301TCR.SetJrsNeg(const pJrsNeg: Double);
begin
  FJrsNeg := pJrsNeg;

  CheckField('JrsNeg');
end;

function T301TCR.GetMulNeg: Double;
begin
  Result := FMulNeg;
end;

procedure T301TCR.SetMulNeg(const pMulNeg: Double);
begin
  FMulNeg := pMulNeg;

  CheckField('MulNeg');
end;

function T301TCR.GetDscNeg: Double;
begin
  Result := FDscNeg;
end;

procedure T301TCR.SetDscNeg(const pDscNeg: Double);
begin
  FDscNeg := pDscNeg;

  CheckField('DscNeg');
end;

function T301TCR.GetOutNeg: Double;
begin
  Result := FOutNeg;
end;

procedure T301TCR.SetOutNeg(const pOutNeg: Double);
begin
  FOutNeg := pOutNeg;

  CheckField('OutNeg');
end;

function T301TCR.GetUsuNeg: Integer;
begin
  Result := FUsuNeg;
end;

procedure T301TCR.SetUsuNeg(const pUsuNeg: Integer);
begin
  FUsuNeg := pUsuNeg;

  CheckField('UsuNeg');
end;

function T301TCR.GetCpgNeg: string;
begin
  Result := FCpgNeg;
end;

procedure T301TCR.SetCpgNeg(const pCpgNeg: string);
begin
  FCpgNeg := pCpgNeg;

  CheckField('CpgNeg');
end;

function T301TCR.GetTaxNeg: Double;
begin
  Result := FTaxNeg;
end;

procedure T301TCR.SetTaxNeg(const pTaxNeg: Double);
begin
  FTaxNeg := pTaxNeg;

  CheckField('TaxNeg');
end;

function T301TCR.GetCotNeg: Double;
begin
  Result := FCotNeg;
end;

procedure T301TCR.SetCotNeg(const pCotNeg: Double);
begin
  FCotNeg := pCotNeg;

  CheckField('CotNeg');
end;

function T301TCR.GetVlrDca: Double;
begin
  Result := FVlrDca;
end;

procedure T301TCR.SetVlrDca(const pVlrDca: Double);
begin
  FVlrDca := pVlrDca;

  CheckField('VlrDca');
end;

function T301TCR.GetVlrDcb: Double;
begin
  Result := FVlrDcb;
end;

procedure T301TCR.SetVlrDcb(const pVlrDcb: Double);
begin
  FVlrDcb := pVlrDcb;

  CheckField('VlrDcb');
end;

function T301TCR.GetVlrOud: Double;
begin
  Result := FVlrOud;
end;

procedure T301TCR.SetVlrOud(const pVlrOud: Double);
begin
  FVlrOud := pVlrOud;

  CheckField('VlrOud');
end;

function T301TCR.GetNotDeb: Integer;
begin
  Result := FNotDeb;
end;

procedure T301TCR.SetNotDeb(const pNotDeb: Integer);
begin
  FNotDeb := pNotDeb;

  CheckField('NotDeb');
end;

function T301TCR.GetNumPrj: Integer;
begin
  Result := FNumPrj;
end;

procedure T301TCR.SetNumPrj(const pNumPrj: Integer);
begin
  FNumPrj := pNumPrj;

  CheckField('NumPrj');
end;

function T301TCR.GetCodFpj: Integer;
begin
  Result := FCodFpj;
end;

procedure T301TCR.SetCodFpj(const pCodFpj: Integer);
begin
  FCodFpj := pCodFpj;

  CheckField('CodFpj');
end;

function T301TCR.GetCtaFin: Integer;
begin
  Result := FCtaFin;
end;

procedure T301TCR.SetCtaFin(const pCtaFin: Integer);
begin
  FCtaFin := pCtaFin;

  CheckField('CtaFin');
end;

function T301TCR.GetCtaRed: Integer;
begin
  Result := FCtaRed;
end;

procedure T301TCR.SetCtaRed(const pCtaRed: Integer);
begin
  FCtaRed := pCtaRed;

  CheckField('CtaRed');
end;

function T301TCR.GetCodCcu: string;
begin
  Result := FCodCcu;
end;

procedure T301TCR.SetCodCcu(const pCodCcu: string);
begin
  FCodCcu := pCodCcu;

  CheckField('CodCcu');
end;

function T301TCR.GetQtdDup: Integer;
begin
  Result := FQtdDup;
end;

procedure T301TCR.SetQtdDup(const pQtdDup: Integer);
begin
  FQtdDup := pQtdDup;

  CheckField('QtdDup');
end;

function T301TCR.GetQtdBlo: Integer;
begin
  Result := FQtdBlo;
end;

procedure T301TCR.SetQtdBlo(const pQtdBlo: Integer);
begin
  FQtdBlo := pQtdBlo;

  CheckField('QtdBlo');
end;

function T301TCR.GetDatUcm: TDate;
begin
  Result := FDatUcm;
end;

procedure T301TCR.SetDatUcm(const pDatUcm: TDate);
begin
  FDatUcm := pDatUcm;

  CheckField('DatUcm');
end;

function T301TCR.GetCotUcm: Double;
begin
  Result := FCotUcm;
end;

procedure T301TCR.SetCotUcm(const pCotUcm: Double);
begin
  FCotUcm := pCotUcm;

  CheckField('CotUcm');
end;

function T301TCR.GetFilNfv: Integer;
begin
  Result := FFilNfv;
end;

procedure T301TCR.SetFilNfv(const pFilNfv: Integer);
begin
  FFilNfv := pFilNfv;

  CheckField('FilNfv');
end;

function T301TCR.GetCodSnf: string;
begin
  Result := FCodSnf;
end;

procedure T301TCR.SetCodSnf(const pCodSnf: string);
begin
  FCodSnf := pCodSnf;

  CheckField('CodSnf');
end;

function T301TCR.GetNumNfv: Integer;
begin
  Result := FNumNfv;
end;

procedure T301TCR.SetNumNfv(const pNumNfv: Integer);
begin
  FNumNfv := pNumNfv;

  CheckField('NumNfv');
end;

function T301TCR.GetFilCtr: Integer;
begin
  Result := FFilCtr;
end;

procedure T301TCR.SetFilCtr(const pFilCtr: Integer);
begin
  FFilCtr := pFilCtr;

  CheckField('FilCtr');
end;

function T301TCR.GetNumCtr: Integer;
begin
  Result := FNumCtr;
end;

procedure T301TCR.SetNumCtr(const pNumCtr: Integer);
begin
  FNumCtr := pNumCtr;

  CheckField('NumCtr');
end;

function T301TCR.GetSeqImo: Integer;
begin
  Result := FSeqImo;
end;

procedure T301TCR.SetSeqImo(const pSeqImo: Integer);
begin
  FSeqImo := pSeqImo;

  CheckField('SeqImo');
end;

function T301TCR.GetFilNff: Integer;
begin
  Result := FFilNff;
end;

procedure T301TCR.SetFilNff(const pFilNff: Integer);
begin
  FFilNff := pFilNff;

  CheckField('FilNff');
end;

function T301TCR.GetNumNff: Integer;
begin
  Result := FNumNff;
end;

procedure T301TCR.SetNumNff(const pNumNff: Integer);
begin
  FNumNff := pNumNff;

  CheckField('NumNff');
end;

function T301TCR.GetFilPed: Integer;
begin
  Result := FFilPed;
end;

procedure T301TCR.SetFilPed(const pFilPed: Integer);
begin
  FFilPed := pFilPed;

  CheckField('FilPed');
end;

function T301TCR.GetNumPed: Integer;
begin
  Result := FNumPed;
end;

procedure T301TCR.SetNumPed(const pNumPed: Integer);
begin
  FNumPed := pNumPed;

  CheckField('NumPed');
end;

function T301TCR.GetFilNfc: Integer;
begin
  Result := FFilNfc;
end;

procedure T301TCR.SetFilNfc(const pFilNfc: Integer);
begin
  FFilNfc := pFilNfc;

  CheckField('FilNfc');
end;

function T301TCR.GetForNfc: Integer;
begin
  Result := FForNfc;
end;

procedure T301TCR.SetForNfc(const pForNfc: Integer);
begin
  FForNfc := pForNfc;

  CheckField('ForNfc');
end;

function T301TCR.GetNumNfc: Integer;
begin
  Result := FNumNfc;
end;

procedure T301TCR.SetNumNfc(const pNumNfc: Integer);
begin
  FNumNfc := pNumNfc;

  CheckField('NumNfc');
end;

function T301TCR.GetSnfNfc: string;
begin
  Result := FSnfNfc;
end;

procedure T301TCR.SetSnfNfc(const pSnfNfc: string);
begin
  FSnfNfc := pSnfNfc;

  CheckField('SnfNfc');
end;

function T301TCR.GetFilNdb: Integer;
begin
  Result := FFilNdb;
end;

procedure T301TCR.SetFilNdb(const pFilNdb: Integer);
begin
  FFilNdb := pFilNdb;

  CheckField('FilNdb');
end;

function T301TCR.GetNumNdb: string;
begin
  Result := FNumNdb;
end;

procedure T301TCR.SetNumNdb(const pNumNdb: string);
begin
  FNumNdb := pNumNdb;

  CheckField('NumNdb');
end;

function T301TCR.GetTptNdb: string;
begin
  Result := FTptNdb;
end;

procedure T301TCR.SetTptNdb(const pTptNdb: string);
begin
  FTptNdb := pTptNdb;

  CheckField('TptNdb');
end;

function T301TCR.GetTipEfe: Char;
begin
  Result := FTipEfe;
end;

procedure T301TCR.SetTipEfe(const pTipEfe: Char);
begin
  FTipEfe := pTipEfe;

  CheckField('TipEfe');
end;

function T301TCR.GetTnsPre: string;
begin
  Result := FTnsPre;
end;

procedure T301TCR.SetTnsPre(const pTnsPre: string);
begin
  FTnsPre := pTnsPre;

  CheckField('TnsPre');
end;

function T301TCR.GetDatPre: TDate;
begin
  Result := FDatPre;
end;

procedure T301TCR.SetDatPre(const pDatPre: TDate);
begin
  FDatPre := pDatPre;

  CheckField('DatPre');
end;

function T301TCR.GetVlrPre: Double;
begin
  Result := FVlrPre;
end;

procedure T301TCR.SetVlrPre(const pVlrPre: Double);
begin
  FVlrPre := pVlrPre;

  CheckField('VlrPre');
end;

function T301TCR.GetCtrFre: Integer;
begin
  Result := FCtrFre;
end;

procedure T301TCR.SetCtrFre(const pCtrFre: Integer);
begin
  FCtrFre := pCtrFre;

  CheckField('CtrFre');
end;

function T301TCR.GetCtrNre: Integer;
begin
  Result := FCtrNre;
end;

procedure T301TCR.SetCtrNre(const pCtrNre: Integer);
begin
  FCtrNre := pCtrNre;

  CheckField('CtrNre');
end;

function T301TCR.GetPedFre: Integer;
begin
  Result := FPedFre;
end;

procedure T301TCR.SetPedFre(const pPedFre: Integer);
begin
  FPedFre := pPedFre;

  CheckField('PedFre');
end;

function T301TCR.GetPedNre: Integer;
begin
  Result := FPedNre;
end;

procedure T301TCR.SetPedNre(const pPedNre: Integer);
begin
  FPedNre := pPedNre;

  CheckField('PedNre');
end;

function T301TCR.GetCodBar: string;
begin
  Result := FCodBar;
end;

procedure T301TCR.SetCodBar(const pCodBar: string);
begin
  FCodBar := pCodBar;

  CheckField('CodBar');
end;

function T301TCR.GetUsuSit: Integer;
begin
  Result := FUsuSit;
end;

procedure T301TCR.SetUsuSit(const pUsuSit: Integer);
begin
  FUsuSit := pUsuSit;

  CheckField('UsuSit');
end;

function T301TCR.GetNumEco: Integer;
begin
  Result := FNumEco;
end;

procedure T301TCR.SetNumEco(const pNumEco: Integer);
begin
  FNumEco := pNumEco;

  CheckField('NumEco');
end;

function T301TCR.GetNumAce: string;
begin
  Result := FNumAce;
end;

procedure T301TCR.SetNumAce(const pNumAce: string);
begin
  FNumAce := pNumAce;

  CheckField('NumAce');
end;

function T301TCR.GetFilCcr: Integer;
begin
  Result := FFilCcr;
end;

procedure T301TCR.SetFilCcr(const pFilCcr: Integer);
begin
  FFilCcr := pFilCcr;

  CheckField('FilCcr');
end;

function T301TCR.GetNumCcr: Integer;
begin
  Result := FNumCcr;
end;

procedure T301TCR.SetNumCcr(const pNumCcr: Integer);
begin
  FNumCcr := pNumCcr;

  CheckField('NumCcr');
end;

function T301TCR.GetSitPef: Integer;
begin
  Result := FSitPef;
end;

procedure T301TCR.SetSitPef(const pSitPef: Integer);
begin
  FSitPef := pSitPef;

  CheckField('SitPef');
end;

function T301TCR.GetUsuGer: Integer;
begin
  Result := FUsuGer;
end;

procedure T301TCR.SetUsuGer(const pUsuGer: Integer);
begin
  FUsuGer := pUsuGer;

  CheckField('UsuGer');
end;

function T301TCR.GetDatGer: TDate;
begin
  Result := FDatGer;
end;

procedure T301TCR.SetDatGer(const pDatGer: TDate);
begin
  FDatGer := pDatGer;

  CheckField('DatGer');
end;

function T301TCR.GetHorGer: Integer;
begin
  Result := FHorGer;
end;

procedure T301TCR.SetHorGer(const pHorGer: Integer);
begin
  FHorGer := pHorGer;

  CheckField('HorGer');
end;

function T301TCR.GetCatTef: string;
begin
  Result := FCatTef;
end;

procedure T301TCR.SetCatTef(const pCatTef: string);
begin
  FCatTef := pCatTef;

  CheckField('CatTef');
end;

function T301TCR.GetNsuTef: string;
begin
  Result := FNsuTef;
end;

procedure T301TCR.SetNsuTef(const pNsuTef: string);
begin
  FNsuTef := pNsuTef;

  CheckField('NsuTef');
end;

function T301TCR.GetRotSap: Integer;
begin
  Result := FRotSap;
end;

procedure T301TCR.SetRotSap(const pRotSap: Integer);
begin
  FRotSap := pRotSap;

  CheckField('RotSap');
end;

function T301TCR.GetNumDfs: Integer;
begin
  Result := FNumDfs;
end;

procedure T301TCR.SetNumDfs(const pNumDfs: Integer);
begin
  FNumDfs := pNumDfs;

  CheckField('NumDfs');
end;

function T301TCR.GetCodEqu: Integer;
begin
  Result := FCodEqu;
end;

procedure T301TCR.SetCodEqu(const pCodEqu: Integer);
begin
  FCodEqu := pCodEqu;

  CheckField('CodEqu');
end;

function T301TCR.GetNumCfi: Integer;
begin
  Result := FNumCfi;
end;

procedure T301TCR.SetNumCfi(const pNumCfi: Integer);
begin
  FNumCfi := pNumCfi;

  CheckField('NumCfi');
end;

function T301TCR.GetCatExt: string;
begin
  Result := FCatExt;
end;

procedure T301TCR.SetCatExt(const pCatExt: string);
begin
  FCatExt := pCatExt;

  CheckField('CatExt');
end;

function T301TCR.GetCodOpe: Integer;
begin
  Result := FCodOpe;
end;

procedure T301TCR.SetCodOpe(const pCodOpe: Integer);
begin
  FCodOpe := pCodOpe;

  CheckField('CodOpe');
end;

function T301TCR.GetCarCov: string;
begin
  Result := FCarCov;
end;

procedure T301TCR.SetCarCov(const pCarCov: string);
begin
  FCarCov := pCarCov;

  CheckField('CarCov');
end;

function T301TCR.GetCarPre: string;
begin
  Result := FCarPre;
end;

procedure T301TCR.SetCarPre(const pCarPre: string);
begin
  FCarPre := pCarPre;

  CheckField('CarPre');
end;

function T301TCR.GetCodCnv: Integer;
begin
  Result := FCodCnv;
end;

procedure T301TCR.SetCodCnv(const pCodCnv: Integer);
begin
  FCodCnv := pCodCnv;

  CheckField('CodCnv');
end;

function T301TCR.GetUSU_ConChe: Char;
begin
  Result := FUSU_ConChe;
end;

procedure T301TCR.SetUSU_ConChe(const pUSU_ConChe: Char);
begin
  FUSU_ConChe := pUSU_ConChe;

  CheckField('USU_ConChe');
end;

function T301TCR.GetUSU_SitSer: Integer;
begin
  Result := FUSU_SitSer;
end;

procedure T301TCR.SetUSU_SitSer(const pUSU_SitSer: Integer);
begin
  FUSU_SitSer := pUSU_SitSer;

  CheckField('USU_SitSer');
end;

function T301TCR.GetUSU_ExpSer: TDate;
begin
  Result := FUSU_ExpSer;
end;

procedure T301TCR.SetUSU_ExpSer(const pUSU_ExpSer: TDate);
begin
  FUSU_ExpSer := pUSU_ExpSer;

  CheckField('USU_ExpSer');
end;

function T301TCR.GetUSU_IndEnv: Integer;
begin
  Result := FUSU_IndEnv;
end;

procedure T301TCR.SetUSU_IndEnv(const pUSU_IndEnv: Integer);
begin
  FUSU_IndEnv := pUSU_IndEnv;

  CheckField('USU_IndEnv');
end;

function T301TCR.GetUSU_UsuConChe: Integer;
begin
  Result := FUSU_UsuConChe;
end;

procedure T301TCR.SetUSU_UsuConChe(const pUSU_UsuConChe: Integer);
begin
  FUSU_UsuConChe := pUSU_UsuConChe;

  CheckField('USU_UsuConChe');
end;

function T301TCR.GetUSU_DatConChe: TDate;
begin
  Result := FUSU_DatConChe;
end;

procedure T301TCR.SetUSU_DatConChe(const pUSU_DatConChe: TDate);
begin
  FUSU_DatConChe := pUSU_DatConChe;

  CheckField('USU_DatConChe');
end;

function T301TCR.GetUSU_HorConChe: Integer;
begin
  Result := FUSU_HorConChe;
end;

procedure T301TCR.SetUSU_HorConChe(const pUSU_HorConChe: Integer);
begin
  FUSU_HorConChe := pUSU_HorConChe;

  CheckField('USU_HorConChe');
end;

function T301TCR.GetCodEmpOLD: Integer;
begin
  Result := FCodEmpOLD;
end;

procedure T301TCR.SetCodEmpOLD(const pCodEmp: Integer);
begin
  FCodEmpOLD := pCodEmp;
end;

function T301TCR.GetCodFilOLD: Integer;
begin
  Result := FCodFilOLD;
end;

procedure T301TCR.SetCodFilOLD(const pCodFil: Integer);
begin
  FCodFilOLD := pCodFil;
end;

function T301TCR.GetNumTitOLD: string;
begin
  Result := FNumTitOLD;
end;

procedure T301TCR.SetNumTitOLD(const pNumTit: string);
begin
  FNumTitOLD := pNumTit;
end;

function T301TCR.GetCodTptOLD: string;
begin
  Result := FCodTptOLD;
end;

procedure T301TCR.SetCodTptOLD(const pCodTpt: string);
begin
  FCodTptOLD := pCodTpt;
end;

function T301TCR.GetCodTnsOLD: string;
begin
  Result := FCodTnsOLD;
end;

procedure T301TCR.SetCodTnsOLD(const pCodTns: string);
begin
  FCodTnsOLD := pCodTns;
end;

function T301TCR.GetCodNtgOLD: Integer;
begin
  Result := FCodNtgOLD;
end;

procedure T301TCR.SetCodNtgOLD(const pCodNtg: Integer);
begin
  FCodNtgOLD := pCodNtg;
end;

function T301TCR.GetSitTitOLD: string;
begin
  Result := FSitTitOLD;
end;

procedure T301TCR.SetSitTitOLD(const pSitTit: string);
begin
  FSitTitOLD := pSitTit;
end;

function T301TCR.GetDatEmiOLD: TDate;
begin
  Result := FDatEmiOLD;
end;

procedure T301TCR.SetDatEmiOLD(const pDatEmi: TDate);
begin
  FDatEmiOLD := pDatEmi;
end;

function T301TCR.GetDatEntOLD: TDate;
begin
  Result := FDatEntOLD;
end;

procedure T301TCR.SetDatEntOLD(const pDatEnt: TDate);
begin
  FDatEntOLD := pDatEnt;
end;

function T301TCR.GetCodCliOLD: Integer;
begin
  Result := FCodCliOLD;
end;

procedure T301TCR.SetCodCliOLD(const pCodCli: Integer);
begin
  FCodCliOLD := pCodCli;
end;

function T301TCR.GetCodSacOLD: Integer;
begin
  Result := FCodSacOLD;
end;

procedure T301TCR.SetCodSacOLD(const pCodSac: Integer);
begin
  FCodSacOLD := pCodSac;
end;

function T301TCR.GetCodRepOLD: Integer;
begin
  Result := FCodRepOLD;
end;

procedure T301TCR.SetCodRepOLD(const pCodRep: Integer);
begin
  FCodRepOLD := pCodRep;
end;

function T301TCR.GetCodCrpOLD: string;
begin
  Result := FCodCrpOLD;
end;

procedure T301TCR.SetCodCrpOLD(const pCodCrp: string);
begin
  FCodCrpOLD := pCodCrp;
end;

function T301TCR.GetObsTcrOLD: string;
begin
  Result := FObsTcrOLD;
end;

procedure T301TCR.SetObsTcrOLD(const pObsTcr: string);
begin
  FObsTcrOLD := pObsTcr;
end;

function T301TCR.GetVctOriOLD: TDate;
begin
  Result := FVctOriOLD;
end;

procedure T301TCR.SetVctOriOLD(const pVctOri: TDate);
begin
  FVctOriOLD := pVctOri;
end;

function T301TCR.GetVlrOriOLD: Double;
begin
  Result := FVlrOriOLD;
end;

procedure T301TCR.SetVlrOriOLD(const pVlrOri: Double);
begin
  FVlrOriOLD := pVlrOri;
end;

function T301TCR.GetCodFpgOLD: Integer;
begin
  Result := FCodFpgOLD;
end;

procedure T301TCR.SetCodFpgOLD(const pCodFpg: Integer);
begin
  FCodFpgOLD := pCodFpg;
end;

function T301TCR.GetVctProOLD: TDate;
begin
  Result := FVctProOLD;
end;

procedure T301TCR.SetVctProOLD(const pVctPro: TDate);
begin
  FVctProOLD := pVctPro;
end;

function T301TCR.GetProJrsOLD: Char;
begin
  Result := FProJrsOLD;
end;

procedure T301TCR.SetProJrsOLD(const pProJrs: Char);
begin
  FProJrsOLD := pProJrs;
end;

function T301TCR.GetCodMptOLD: string;
begin
  Result := FCodMptOLD;
end;

procedure T301TCR.SetCodMptOLD(const pCodMpt: string);
begin
  FCodMptOLD := pCodMpt;
end;

function T301TCR.GetDatPptOLD: TDate;
begin
  Result := FDatPptOLD;
end;

procedure T301TCR.SetDatPptOLD(const pDatPpt: TDate);
begin
  FDatPptOLD := pDatPpt;
end;

function T301TCR.GetVlrAbeOLD: Double;
begin
  Result := FVlrAbeOLD;
end;

procedure T301TCR.SetVlrAbeOLD(const pVlrAbe: Double);
begin
  FVlrAbeOLD := pVlrAbe;
end;

function T301TCR.GetCodMoeOLD: string;
begin
  Result := FCodMoeOLD;
end;

procedure T301TCR.SetCodMoeOLD(const pCodMoe: string);
begin
  FCodMoeOLD := pCodMoe;
end;

function T301TCR.GetCotEmiOLD: Double;
begin
  Result := FCotEmiOLD;
end;

procedure T301TCR.SetCotEmiOLD(const pCotEmi: Double);
begin
  FCotEmiOLD := pCotEmi;
end;

function T301TCR.GetCodFrjOLD: string;
begin
  Result := FCodFrjOLD;
end;

procedure T301TCR.SetCodFrjOLD(const pCodFrj: string);
begin
  FCodFrjOLD := pCodFrj;
end;

function T301TCR.GetCotFrjOLD: Double;
begin
  Result := FCotFrjOLD;
end;

procedure T301TCR.SetCotFrjOLD(const pCotFrj: Double);
begin
  FCotFrjOLD := pCotFrj;
end;

function T301TCR.GetPerComOLD: Double;
begin
  Result := FPerComOLD;
end;

procedure T301TCR.SetPerComOLD(const pPerCom: Double);
begin
  FPerComOLD := pPerCom;
end;

function T301TCR.GetComRecOLD: Double;
begin
  Result := FComRecOLD;
end;

procedure T301TCR.SetComRecOLD(const pComRec: Double);
begin
  FComRecOLD := pComRec;
end;

function T301TCR.GetVlrBcoOLD: Double;
begin
  Result := FVlrBcoOLD;
end;

procedure T301TCR.SetVlrBcoOLD(const pVlrBco: Double);
begin
  FVlrBcoOLD := pVlrBco;
end;

function T301TCR.GetVlrComOLD: Double;
begin
  Result := FVlrComOLD;
end;

procedure T301TCR.SetVlrComOLD(const pVlrCom: Double);
begin
  FVlrComOLD := pVlrCom;
end;

function T301TCR.GetDatDscOLD: TDate;
begin
  Result := FDatDscOLD;
end;

procedure T301TCR.SetDatDscOLD(const pDatDsc: TDate);
begin
  FDatDscOLD := pDatDsc;
end;

function T301TCR.GetTolDscOLD: Integer;
begin
  Result := FTolDscOLD;
end;

procedure T301TCR.SetTolDscOLD(const pTolDsc: Integer);
begin
  FTolDscOLD := pTolDsc;
end;

function T301TCR.GetPerDscOLD: Double;
begin
  Result := FPerDscOLD;
end;

procedure T301TCR.SetPerDscOLD(const pPerDsc: Double);
begin
  FPerDscOLD := pPerDsc;
end;

function T301TCR.GetVlrDscOLD: Double;
begin
  Result := FVlrDscOLD;
end;

procedure T301TCR.SetVlrDscOLD(const pVlrDsc: Double);
begin
  FVlrDscOLD := pVlrDsc;
end;

function T301TCR.GetAntDscOLD: Char;
begin
  Result := FAntDscOLD;
end;

procedure T301TCR.SetAntDscOLD(const pAntDsc: Char);
begin
  FAntDscOLD := pAntDsc;
end;

function T301TCR.GetPrdDscOLD: Char;
begin
  Result := FPrdDscOLD;
end;

procedure T301TCR.SetPrdDscOLD(const pPrdDsc: Char);
begin
  FPrdDscOLD := pPrdDsc;
end;

function T301TCR.GetPerJrsOLD: Double;
begin
  Result := FPerJrsOLD;
end;

procedure T301TCR.SetPerJrsOLD(const pPerJrs: Double);
begin
  FPerJrsOLD := pPerJrs;
end;

function T301TCR.GetTipJrsOLD: Char;
begin
  Result := FTipJrsOLD;
end;

procedure T301TCR.SetTipJrsOLD(const pTipJrs: Char);
begin
  FTipJrsOLD := pTipJrs;
end;

function T301TCR.GetJrsDiaOLD: Double;
begin
  Result := FJrsDiaOLD;
end;

procedure T301TCR.SetJrsDiaOLD(const pJrsDia: Double);
begin
  FJrsDiaOLD := pJrsDia;
end;

function T301TCR.GetTolJrsOLD: Integer;
begin
  Result := FTolJrsOLD;
end;

procedure T301TCR.SetTolJrsOLD(const pTolJrs: Integer);
begin
  FTolJrsOLD := pTolJrs;
end;

function T301TCR.GetDatCjmOLD: TDate;
begin
  Result := FDatCjmOLD;
end;

procedure T301TCR.SetDatCjmOLD(const pDatCjm: TDate);
begin
  FDatCjmOLD := pDatCjm;
end;

function T301TCR.GetPerMulOLD: Double;
begin
  Result := FPerMulOLD;
end;

procedure T301TCR.SetPerMulOLD(const pPerMul: Double);
begin
  FPerMulOLD := pPerMul;
end;

function T301TCR.GetTolMulOLD: Integer;
begin
  Result := FTolMulOLD;
end;

procedure T301TCR.SetTolMulOLD(const pTolMul: Integer);
begin
  FTolMulOLD := pTolMul;
end;

function T301TCR.GetCheBanOLD: string;
begin
  Result := FCheBanOLD;
end;

procedure T301TCR.SetCheBanOLD(const pCheBan: string);
begin
  FCheBanOLD := pCheBan;
end;

function T301TCR.GetCheAgeOLD: string;
begin
  Result := FCheAgeOLD;
end;

procedure T301TCR.SetCheAgeOLD(const pCheAge: string);
begin
  FCheAgeOLD := pCheAge;
end;

function T301TCR.GetCheCtaOLD: string;
begin
  Result := FCheCtaOLD;
end;

procedure T301TCR.SetCheCtaOLD(const pCheCta: string);
begin
  FCheCtaOLD := pCheCta;
end;

function T301TCR.GetCheNumOLD: string;
begin
  Result := FCheNumOLD;
end;

procedure T301TCR.SetCheNumOLD(const pCheNum: string);
begin
  FCheNumOLD := pCheNum;
end;

function T301TCR.GetCodPorOLD: string;
begin
  Result := FCodPorOLD;
end;

procedure T301TCR.SetCodPorOLD(const pCodPor: string);
begin
  FCodPorOLD := pCodPor;
end;

function T301TCR.GetCodCrtOLD: string;
begin
  Result := FCodCrtOLD;
end;

procedure T301TCR.SetCodCrtOLD(const pCodCrt: string);
begin
  FCodCrtOLD := pCodCrt;
end;

function T301TCR.GetTitBanOLD: string;
begin
  Result := FTitBanOLD;
end;

procedure T301TCR.SetTitBanOLD(const pTitBan: string);
begin
  FTitBanOLD := pTitBan;
end;

function T301TCR.GetVlrOrmOLD: Double;
begin
  Result := FVlrOrmOLD;
end;

procedure T301TCR.SetVlrOrmOLD(const pVlrOrm: Double);
begin
  FVlrOrmOLD := pVlrOrm;
end;

function T301TCR.GetNumArbOLD: Integer;
begin
  Result := FNumArbOLD;
end;

procedure T301TCR.SetNumArbOLD(const pNumArb: Integer);
begin
  FNumArbOLD := pNumArb;
end;

function T301TCR.GetCodOcrOLD: string;
begin
  Result := FCodOcrOLD;
end;

procedure T301TCR.SetCodOcrOLD(const pCodOcr: string);
begin
  FCodOcrOLD := pCodOcr;
end;

function T301TCR.GetCodIn1OLD: string;
begin
  Result := FCodIn1OLD;
end;

procedure T301TCR.SetCodIn1OLD(const pCodIn1: string);
begin
  FCodIn1OLD := pCodIn1;
end;

function T301TCR.GetCodIn2OLD: string;
begin
  Result := FCodIn2OLD;
end;

procedure T301TCR.SetCodIn2OLD(const pCodIn2: string);
begin
  FCodIn2OLD := pCodIn2;
end;

function T301TCR.GetPorAntOLD: string;
begin
  Result := FPorAntOLD;
end;

procedure T301TCR.SetPorAntOLD(const pPorAnt: string);
begin
  FPorAntOLD := pPorAnt;
end;

function T301TCR.GetCrtAntOLD: string;
begin
  Result := FCrtAntOLD;
end;

procedure T301TCR.SetCrtAntOLD(const pCrtAnt: string);
begin
  FCrtAntOLD := pCrtAnt;
end;

function T301TCR.GetUltPgtOLD: TDate;
begin
  Result := FUltPgtOLD;
end;

procedure T301TCR.SetUltPgtOLD(const pUltPgt: TDate);
begin
  FUltPgtOLD := pUltPgt;
end;

function T301TCR.GetDatNegOLD: TDate;
begin
  Result := FDatNegOLD;
end;

procedure T301TCR.SetDatNegOLD(const pDatNeg: TDate);
begin
  FDatNegOLD := pDatNeg;
end;

function T301TCR.GetJrsNegOLD: Double;
begin
  Result := FJrsNegOLD;
end;

procedure T301TCR.SetJrsNegOLD(const pJrsNeg: Double);
begin
  FJrsNegOLD := pJrsNeg;
end;

function T301TCR.GetMulNegOLD: Double;
begin
  Result := FMulNegOLD;
end;

procedure T301TCR.SetMulNegOLD(const pMulNeg: Double);
begin
  FMulNegOLD := pMulNeg;
end;

function T301TCR.GetDscNegOLD: Double;
begin
  Result := FDscNegOLD;
end;

procedure T301TCR.SetDscNegOLD(const pDscNeg: Double);
begin
  FDscNegOLD := pDscNeg;
end;

function T301TCR.GetOutNegOLD: Double;
begin
  Result := FOutNegOLD;
end;

procedure T301TCR.SetOutNegOLD(const pOutNeg: Double);
begin
  FOutNegOLD := pOutNeg;
end;

function T301TCR.GetUsuNegOLD: Integer;
begin
  Result := FUsuNegOLD;
end;

procedure T301TCR.SetUsuNegOLD(const pUsuNeg: Integer);
begin
  FUsuNegOLD := pUsuNeg;
end;

function T301TCR.GetCpgNegOLD: string;
begin
  Result := FCpgNegOLD;
end;

procedure T301TCR.SetCpgNegOLD(const pCpgNeg: string);
begin
  FCpgNegOLD := pCpgNeg;
end;

function T301TCR.GetTaxNegOLD: Double;
begin
  Result := FTaxNegOLD;
end;

procedure T301TCR.SetTaxNegOLD(const pTaxNeg: Double);
begin
  FTaxNegOLD := pTaxNeg;
end;

function T301TCR.GetCotNegOLD: Double;
begin
  Result := FCotNegOLD;
end;

procedure T301TCR.SetCotNegOLD(const pCotNeg: Double);
begin
  FCotNegOLD := pCotNeg;
end;

function T301TCR.GetVlrDcaOLD: Double;
begin
  Result := FVlrDcaOLD;
end;

procedure T301TCR.SetVlrDcaOLD(const pVlrDca: Double);
begin
  FVlrDcaOLD := pVlrDca;
end;

function T301TCR.GetVlrDcbOLD: Double;
begin
  Result := FVlrDcbOLD;
end;

procedure T301TCR.SetVlrDcbOLD(const pVlrDcb: Double);
begin
  FVlrDcbOLD := pVlrDcb;
end;

function T301TCR.GetVlrOudOLD: Double;
begin
  Result := FVlrOudOLD;
end;

procedure T301TCR.SetVlrOudOLD(const pVlrOud: Double);
begin
  FVlrOudOLD := pVlrOud;
end;

function T301TCR.GetNotDebOLD: Integer;
begin
  Result := FNotDebOLD;
end;

procedure T301TCR.SetNotDebOLD(const pNotDeb: Integer);
begin
  FNotDebOLD := pNotDeb;
end;

function T301TCR.GetNumPrjOLD: Integer;
begin
  Result := FNumPrjOLD;
end;

procedure T301TCR.SetNumPrjOLD(const pNumPrj: Integer);
begin
  FNumPrjOLD := pNumPrj;
end;

function T301TCR.GetCodFpjOLD: Integer;
begin
  Result := FCodFpjOLD;
end;

procedure T301TCR.SetCodFpjOLD(const pCodFpj: Integer);
begin
  FCodFpjOLD := pCodFpj;
end;

function T301TCR.GetCtaFinOLD: Integer;
begin
  Result := FCtaFinOLD;
end;

procedure T301TCR.SetCtaFinOLD(const pCtaFin: Integer);
begin
  FCtaFinOLD := pCtaFin;
end;

function T301TCR.GetCtaRedOLD: Integer;
begin
  Result := FCtaRedOLD;
end;

procedure T301TCR.SetCtaRedOLD(const pCtaRed: Integer);
begin
  FCtaRedOLD := pCtaRed;
end;

function T301TCR.GetCodCcuOLD: string;
begin
  Result := FCodCcuOLD;
end;

procedure T301TCR.SetCodCcuOLD(const pCodCcu: string);
begin
  FCodCcuOLD := pCodCcu;
end;

function T301TCR.GetQtdDupOLD: Integer;
begin
  Result := FQtdDupOLD;
end;

procedure T301TCR.SetQtdDupOLD(const pQtdDup: Integer);
begin
  FQtdDupOLD := pQtdDup;
end;

function T301TCR.GetQtdBloOLD: Integer;
begin
  Result := FQtdBloOLD;
end;

procedure T301TCR.SetQtdBloOLD(const pQtdBlo: Integer);
begin
  FQtdBloOLD := pQtdBlo;
end;

function T301TCR.GetDatUcmOLD: TDate;
begin
  Result := FDatUcmOLD;
end;

procedure T301TCR.SetDatUcmOLD(const pDatUcm: TDate);
begin
  FDatUcmOLD := pDatUcm;
end;

function T301TCR.GetCotUcmOLD: Double;
begin
  Result := FCotUcmOLD;
end;

procedure T301TCR.SetCotUcmOLD(const pCotUcm: Double);
begin
  FCotUcmOLD := pCotUcm;
end;

function T301TCR.GetFilNfvOLD: Integer;
begin
  Result := FFilNfvOLD;
end;

procedure T301TCR.SetFilNfvOLD(const pFilNfv: Integer);
begin
  FFilNfvOLD := pFilNfv;
end;

function T301TCR.GetCodSnfOLD: string;
begin
  Result := FCodSnfOLD;
end;

procedure T301TCR.SetCodSnfOLD(const pCodSnf: string);
begin
  FCodSnfOLD := pCodSnf;
end;

function T301TCR.GetNumNfvOLD: Integer;
begin
  Result := FNumNfvOLD;
end;

procedure T301TCR.SetNumNfvOLD(const pNumNfv: Integer);
begin
  FNumNfvOLD := pNumNfv;
end;

function T301TCR.GetFilCtrOLD: Integer;
begin
  Result := FFilCtrOLD;
end;

procedure T301TCR.SetFilCtrOLD(const pFilCtr: Integer);
begin
  FFilCtrOLD := pFilCtr;
end;

function T301TCR.GetNumCtrOLD: Integer;
begin
  Result := FNumCtrOLD;
end;

procedure T301TCR.SetNumCtrOLD(const pNumCtr: Integer);
begin
  FNumCtrOLD := pNumCtr;
end;

function T301TCR.GetSeqImoOLD: Integer;
begin
  Result := FSeqImoOLD;
end;

procedure T301TCR.SetSeqImoOLD(const pSeqImo: Integer);
begin
  FSeqImoOLD := pSeqImo;
end;

function T301TCR.GetFilNffOLD: Integer;
begin
  Result := FFilNffOLD;
end;

procedure T301TCR.SetFilNffOLD(const pFilNff: Integer);
begin
  FFilNffOLD := pFilNff;
end;

function T301TCR.GetNumNffOLD: Integer;
begin
  Result := FNumNffOLD;
end;

procedure T301TCR.SetNumNffOLD(const pNumNff: Integer);
begin
  FNumNffOLD := pNumNff;
end;

function T301TCR.GetFilPedOLD: Integer;
begin
  Result := FFilPedOLD;
end;

procedure T301TCR.SetFilPedOLD(const pFilPed: Integer);
begin
  FFilPedOLD := pFilPed;
end;

function T301TCR.GetNumPedOLD: Integer;
begin
  Result := FNumPedOLD;
end;

procedure T301TCR.SetNumPedOLD(const pNumPed: Integer);
begin
  FNumPedOLD := pNumPed;
end;

function T301TCR.GetFilNfcOLD: Integer;
begin
  Result := FFilNfcOLD;
end;

procedure T301TCR.SetFilNfcOLD(const pFilNfc: Integer);
begin
  FFilNfcOLD := pFilNfc;
end;

function T301TCR.GetForNfcOLD: Integer;
begin
  Result := FForNfcOLD;
end;

procedure T301TCR.SetForNfcOLD(const pForNfc: Integer);
begin
  FForNfcOLD := pForNfc;
end;

function T301TCR.GetNumNfcOLD: Integer;
begin
  Result := FNumNfcOLD;
end;

procedure T301TCR.SetNumNfcOLD(const pNumNfc: Integer);
begin
  FNumNfcOLD := pNumNfc;
end;

function T301TCR.GetSnfNfcOLD: string;
begin
  Result := FSnfNfcOLD;
end;

procedure T301TCR.SetSnfNfcOLD(const pSnfNfc: string);
begin
  FSnfNfcOLD := pSnfNfc;
end;

function T301TCR.GetFilNdbOLD: Integer;
begin
  Result := FFilNdbOLD;
end;

procedure T301TCR.SetFilNdbOLD(const pFilNdb: Integer);
begin
  FFilNdbOLD := pFilNdb;
end;

function T301TCR.GetNumNdbOLD: string;
begin
  Result := FNumNdbOLD;
end;

procedure T301TCR.SetNumNdbOLD(const pNumNdb: string);
begin
  FNumNdbOLD := pNumNdb;
end;

function T301TCR.GetTptNdbOLD: string;
begin
  Result := FTptNdbOLD;
end;

procedure T301TCR.SetTptNdbOLD(const pTptNdb: string);
begin
  FTptNdbOLD := pTptNdb;
end;

function T301TCR.GetTipEfeOLD: Char;
begin
  Result := FTipEfeOLD;
end;

procedure T301TCR.SetTipEfeOLD(const pTipEfe: Char);
begin
  FTipEfeOLD := pTipEfe;
end;

function T301TCR.GetTnsPreOLD: string;
begin
  Result := FTnsPreOLD;
end;

procedure T301TCR.SetTnsPreOLD(const pTnsPre: string);
begin
  FTnsPreOLD := pTnsPre;
end;

function T301TCR.GetDatPreOLD: TDate;
begin
  Result := FDatPreOLD;
end;

procedure T301TCR.SetDatPreOLD(const pDatPre: TDate);
begin
  FDatPreOLD := pDatPre;
end;

function T301TCR.GetVlrPreOLD: Double;
begin
  Result := FVlrPreOLD;
end;

procedure T301TCR.SetVlrPreOLD(const pVlrPre: Double);
begin
  FVlrPreOLD := pVlrPre;
end;

function T301TCR.GetCtrFreOLD: Integer;
begin
  Result := FCtrFreOLD;
end;

procedure T301TCR.SetCtrFreOLD(const pCtrFre: Integer);
begin
  FCtrFreOLD := pCtrFre;
end;

function T301TCR.GetCtrNreOLD: Integer;
begin
  Result := FCtrNreOLD;
end;

procedure T301TCR.SetCtrNreOLD(const pCtrNre: Integer);
begin
  FCtrNreOLD := pCtrNre;
end;

function T301TCR.GetPedFreOLD: Integer;
begin
  Result := FPedFreOLD;
end;

procedure T301TCR.SetPedFreOLD(const pPedFre: Integer);
begin
  FPedFreOLD := pPedFre;
end;

function T301TCR.GetPedNreOLD: Integer;
begin
  Result := FPedNreOLD;
end;

procedure T301TCR.SetPedNreOLD(const pPedNre: Integer);
begin
  FPedNreOLD := pPedNre;
end;

function T301TCR.GetCodBarOLD: string;
begin
  Result := FCodBarOLD;
end;

procedure T301TCR.SetCodBarOLD(const pCodBar: string);
begin
  FCodBarOLD := pCodBar;
end;

function T301TCR.GetUsuSitOLD: Integer;
begin
  Result := FUsuSitOLD;
end;

procedure T301TCR.SetUsuSitOLD(const pUsuSit: Integer);
begin
  FUsuSitOLD := pUsuSit;
end;

function T301TCR.GetNumEcoOLD: Integer;
begin
  Result := FNumEcoOLD;
end;

procedure T301TCR.SetNumEcoOLD(const pNumEco: Integer);
begin
  FNumEcoOLD := pNumEco;
end;

function T301TCR.GetNumAceOLD: string;
begin
  Result := FNumAceOLD;
end;

procedure T301TCR.SetNumAceOLD(const pNumAce: string);
begin
  FNumAceOLD := pNumAce;
end;

function T301TCR.GetFilCcrOLD: Integer;
begin
  Result := FFilCcrOLD;
end;

procedure T301TCR.SetFilCcrOLD(const pFilCcr: Integer);
begin
  FFilCcrOLD := pFilCcr;
end;

function T301TCR.GetNumCcrOLD: Integer;
begin
  Result := FNumCcrOLD;
end;

procedure T301TCR.SetNumCcrOLD(const pNumCcr: Integer);
begin
  FNumCcrOLD := pNumCcr;
end;

function T301TCR.GetSitPefOLD: Integer;
begin
  Result := FSitPefOLD;
end;

procedure T301TCR.SetSitPefOLD(const pSitPef: Integer);
begin
  FSitPefOLD := pSitPef;
end;

function T301TCR.GetUsuGerOLD: Integer;
begin
  Result := FUsuGerOLD;
end;

procedure T301TCR.SetUsuGerOLD(const pUsuGer: Integer);
begin
  FUsuGerOLD := pUsuGer;
end;

function T301TCR.GetDatGerOLD: TDate;
begin
  Result := FDatGerOLD;
end;

procedure T301TCR.SetDatGerOLD(const pDatGer: TDate);
begin
  FDatGerOLD := pDatGer;
end;

function T301TCR.GetHorGerOLD: Integer;
begin
  Result := FHorGerOLD;
end;

procedure T301TCR.SetHorGerOLD(const pHorGer: Integer);
begin
  FHorGerOLD := pHorGer;
end;

function T301TCR.GetCatTefOLD: string;
begin
  Result := FCatTefOLD;
end;

procedure T301TCR.SetCatTefOLD(const pCatTef: string);
begin
  FCatTefOLD := pCatTef;
end;

function T301TCR.GetNsuTefOLD: string;
begin
  Result := FNsuTefOLD;
end;

procedure T301TCR.SetNsuTefOLD(const pNsuTef: string);
begin
  FNsuTefOLD := pNsuTef;
end;

function T301TCR.GetRotSapOLD: Integer;
begin
  Result := FRotSapOLD;
end;

procedure T301TCR.SetRotSapOLD(const pRotSap: Integer);
begin
  FRotSapOLD := pRotSap;
end;

function T301TCR.GetNumDfsOLD: Integer;
begin
  Result := FNumDfsOLD;
end;

procedure T301TCR.SetNumDfsOLD(const pNumDfs: Integer);
begin
  FNumDfsOLD := pNumDfs;
end;

function T301TCR.GetCodEquOLD: Integer;
begin
  Result := FCodEquOLD;
end;

procedure T301TCR.SetCodEquOLD(const pCodEqu: Integer);
begin
  FCodEquOLD := pCodEqu;
end;

function T301TCR.GetNumCfiOLD: Integer;
begin
  Result := FNumCfiOLD;
end;

procedure T301TCR.SetNumCfiOLD(const pNumCfi: Integer);
begin
  FNumCfiOLD := pNumCfi;
end;

function T301TCR.GetCatExtOLD: string;
begin
  Result := FCatExtOLD;
end;

procedure T301TCR.SetCatExtOLD(const pCatExt: string);
begin
  FCatExtOLD := pCatExt;
end;

function T301TCR.GetCodOpeOLD: Integer;
begin
  Result := FCodOpeOLD;
end;

procedure T301TCR.SetCodOpeOLD(const pCodOpe: Integer);
begin
  FCodOpeOLD := pCodOpe;
end;

function T301TCR.GetCarCovOLD: string;
begin
  Result := FCarCovOLD;
end;

procedure T301TCR.SetCarCovOLD(const pCarCov: string);
begin
  FCarCovOLD := pCarCov;
end;

function T301TCR.GetCarPreOLD: string;
begin
  Result := FCarPreOLD;
end;

procedure T301TCR.SetCarPreOLD(const pCarPre: string);
begin
  FCarPreOLD := pCarPre;
end;

function T301TCR.GetCodCnvOLD: Integer;
begin
  Result := FCodCnvOLD;
end;

procedure T301TCR.SetCodCnvOLD(const pCodCnv: Integer);
begin
  FCodCnvOLD := pCodCnv;
end;

function T301TCR.GetUSU_ConCheOLD: Char;
begin
  Result := FUSU_ConCheOLD;
end;

procedure T301TCR.SetUSU_ConCheOLD(const pUSU_ConChe: Char);
begin
  FUSU_ConCheOLD := pUSU_ConChe;
end;

function T301TCR.GetUSU_SitSerOLD: Integer;
begin
  Result := FUSU_SitSerOLD;
end;

procedure T301TCR.SetUSU_SitSerOLD(const pUSU_SitSer: Integer);
begin
  FUSU_SitSerOLD := pUSU_SitSer;
end;

function T301TCR.GetUSU_ExpSerOLD: TDate;
begin
  Result := FUSU_ExpSerOLD;
end;

procedure T301TCR.SetUSU_ExpSerOLD(const pUSU_ExpSer: TDate);
begin
  FUSU_ExpSerOLD := pUSU_ExpSer;
end;

function T301TCR.GetUSU_IndEnvOLD: Integer;
begin
  Result := FUSU_IndEnvOLD;
end;

procedure T301TCR.SetUSU_IndEnvOLD(const pUSU_IndEnv: Integer);
begin
  FUSU_IndEnvOLD := pUSU_IndEnv;
end;

function T301TCR.GetUSU_UsuConCheOLD: Integer;
begin
  Result := FUSU_UsuConCheOLD;
end;

procedure T301TCR.SetUSU_UsuConCheOLD(const pUSU_UsuConChe: Integer);
begin
  FUSU_UsuConCheOLD := pUSU_UsuConChe;
end;

function T301TCR.GetUSU_DatConCheOLD: TDate;
begin
  Result := FUSU_DatConCheOLD;
end;

procedure T301TCR.SetUSU_DatConCheOLD(const pUSU_DatConChe: TDate);
begin
  FUSU_DatConCheOLD := pUSU_DatConChe;
end;

function T301TCR.GetUSU_HorConCheOLD: Integer;
begin
  Result := FUSU_HorConCheOLD;
end;

procedure T301TCR.SetUSU_HorConCheOLD(const pUSU_HorConChe: Integer);
begin
  FUSU_HorConCheOLD := pUSU_HorConChe;
end;

procedure T301TCR.Registros_OLD();
begin
  FCodEmpOLD := FCodEmp;
  FCodFilOLD := FCodFil;
  FNumTitOLD := FNumTit;
  FCodTptOLD := FCodTpt;
  FCodTnsOLD := FCodTns;
  FCodNtgOLD := FCodNtg;
  FSitTitOLD := FSitTit;
  FDatEmiOLD := FDatEmi;
  FDatEntOLD := FDatEnt;
  FCodCliOLD := FCodCli;
  FCodSacOLD := FCodSac;
  FCodRepOLD := FCodRep;
  FCodCrpOLD := FCodCrp;
  FObsTcrOLD := FObsTcr;
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
  FCotFrjOLD := FCotFrj;
  FPerComOLD := FPerCom;
  FComRecOLD := FComRec;
  FVlrBcoOLD := FVlrBco;
  FVlrComOLD := FVlrCom;
  FDatDscOLD := FDatDsc;
  FTolDscOLD := FTolDsc;
  FPerDscOLD := FPerDsc;
  FVlrDscOLD := FVlrDsc;
  FAntDscOLD := FAntDsc;
  FPrdDscOLD := FPrdDsc;
  FPerJrsOLD := FPerJrs;
  FTipJrsOLD := FTipJrs;
  FJrsDiaOLD := FJrsDia;
  FTolJrsOLD := FTolJrs;
  FDatCjmOLD := FDatCjm;
  FPerMulOLD := FPerMul;
  FTolMulOLD := FTolMul;
  FCheBanOLD := FCheBan;
  FCheAgeOLD := FCheAge;
  FCheCtaOLD := FCheCta;
  FCheNumOLD := FCheNum;
  FCodPorOLD := FCodPor;
  FCodCrtOLD := FCodCrt;
  FTitBanOLD := FTitBan;
  FVlrOrmOLD := FVlrOrm;
  FNumArbOLD := FNumArb;
  FCodOcrOLD := FCodOcr;
  FCodIn1OLD := FCodIn1;
  FCodIn2OLD := FCodIn2;
  FPorAntOLD := FPorAnt;
  FCrtAntOLD := FCrtAnt;
  FUltPgtOLD := FUltPgt;
  FDatNegOLD := FDatNeg;
  FJrsNegOLD := FJrsNeg;
  FMulNegOLD := FMulNeg;
  FDscNegOLD := FDscNeg;
  FOutNegOLD := FOutNeg;
  FUsuNegOLD := FUsuNeg;
  FCpgNegOLD := FCpgNeg;
  FTaxNegOLD := FTaxNeg;
  FCotNegOLD := FCotNeg;
  FVlrDcaOLD := FVlrDca;
  FVlrDcbOLD := FVlrDcb;
  FVlrOudOLD := FVlrOud;
  FNotDebOLD := FNotDeb;
  FNumPrjOLD := FNumPrj;
  FCodFpjOLD := FCodFpj;
  FCtaFinOLD := FCtaFin;
  FCtaRedOLD := FCtaRed;
  FCodCcuOLD := FCodCcu;
  FQtdDupOLD := FQtdDup;
  FQtdBloOLD := FQtdBlo;
  FDatUcmOLD := FDatUcm;
  FCotUcmOLD := FCotUcm;
  FFilNfvOLD := FFilNfv;
  FCodSnfOLD := FCodSnf;
  FNumNfvOLD := FNumNfv;
  FFilCtrOLD := FFilCtr;
  FNumCtrOLD := FNumCtr;
  FSeqImoOLD := FSeqImo;
  FFilNffOLD := FFilNff;
  FNumNffOLD := FNumNff;
  FFilPedOLD := FFilPed;
  FNumPedOLD := FNumPed;
  FFilNfcOLD := FFilNfc;
  FForNfcOLD := FForNfc;
  FNumNfcOLD := FNumNfc;
  FSnfNfcOLD := FSnfNfc;
  FFilNdbOLD := FFilNdb;
  FNumNdbOLD := FNumNdb;
  FTptNdbOLD := FTptNdb;
  FTipEfeOLD := FTipEfe;
  FTnsPreOLD := FTnsPre;
  FDatPreOLD := FDatPre;
  FVlrPreOLD := FVlrPre;
  FCtrFreOLD := FCtrFre;
  FCtrNreOLD := FCtrNre;
  FPedFreOLD := FPedFre;
  FPedNreOLD := FPedNre;
  FCodBarOLD := FCodBar;
  FUsuSitOLD := FUsuSit;
  FNumEcoOLD := FNumEco;
  FNumAceOLD := FNumAce;
  FFilCcrOLD := FFilCcr;
  FNumCcrOLD := FNumCcr;
  FSitPefOLD := FSitPef;
  FUsuGerOLD := FUsuGer;
  FDatGerOLD := FDatGer;
  FHorGerOLD := FHorGer;
  FCatTefOLD := FCatTef;
  FNsuTefOLD := FNsuTef;
  FRotSapOLD := FRotSap;
  FNumDfsOLD := FNumDfs;
  FCodEquOLD := FCodEqu;
  FNumCfiOLD := FNumCfi;
  FCatExtOLD := FCatExt;
  FCodOpeOLD := FCodOpe;
  FCarCovOLD := FCarCov;
  FCarPreOLD := FCarPre;
  FCodCnvOLD := FCodCnv;
  FUSU_ConCheOLD := FUSU_ConChe;
  FUSU_SitSerOLD := FUSU_SitSer;
  FUSU_ExpSerOLD := FUSU_ExpSer;
  FUSU_IndEnvOLD := FUSU_IndEnv;
  FUSU_UsuConCheOLD := FUSU_UsuConChe;
  FUSU_DatConCheOLD := FUSU_DatConChe;
  FUSU_HorConCheOLD := FUSU_HorConChe;

  inherited;
end;

procedure T301TCR.RetornarValores();
begin
  FCodEmp := FCodEmpOLD;
  FCodFil := FCodFilOLD;
  FNumTit := FNumTitOLD;
  FCodTpt := FCodTptOLD;
  FCodTns := FCodTnsOLD;
  FCodNtg := FCodNtgOLD;
  FSitTit := FSitTitOLD;
  FDatEmi := FDatEmiOLD;
  FDatEnt := FDatEntOLD;
  FCodCli := FCodCliOLD;
  FCodSac := FCodSacOLD;
  FCodRep := FCodRepOLD;
  FCodCrp := FCodCrpOLD;
  FObsTcr := FObsTcrOLD;
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
  FCotFrj := FCotFrjOLD;
  FPerCom := FPerComOLD;
  FComRec := FComRecOLD;
  FVlrBco := FVlrBcoOLD;
  FVlrCom := FVlrComOLD;
  FDatDsc := FDatDscOLD;
  FTolDsc := FTolDscOLD;
  FPerDsc := FPerDscOLD;
  FVlrDsc := FVlrDscOLD;
  FAntDsc := FAntDscOLD;
  FPrdDsc := FPrdDscOLD;
  FPerJrs := FPerJrsOLD;
  FTipJrs := FTipJrsOLD;
  FJrsDia := FJrsDiaOLD;
  FTolJrs := FTolJrsOLD;
  FDatCjm := FDatCjmOLD;
  FPerMul := FPerMulOLD;
  FTolMul := FTolMulOLD;
  FCheBan := FCheBanOLD;
  FCheAge := FCheAgeOLD;
  FCheCta := FCheCtaOLD;
  FCheNum := FCheNumOLD;
  FCodPor := FCodPorOLD;
  FCodCrt := FCodCrtOLD;
  FTitBan := FTitBanOLD;
  FVlrOrm := FVlrOrmOLD;
  FNumArb := FNumArbOLD;
  FCodOcr := FCodOcrOLD;
  FCodIn1 := FCodIn1OLD;
  FCodIn2 := FCodIn2OLD;
  FPorAnt := FPorAntOLD;
  FCrtAnt := FCrtAntOLD;
  FUltPgt := FUltPgtOLD;
  FDatNeg := FDatNegOLD;
  FJrsNeg := FJrsNegOLD;
  FMulNeg := FMulNegOLD;
  FDscNeg := FDscNegOLD;
  FOutNeg := FOutNegOLD;
  FUsuNeg := FUsuNegOLD;
  FCpgNeg := FCpgNegOLD;
  FTaxNeg := FTaxNegOLD;
  FCotNeg := FCotNegOLD;
  FVlrDca := FVlrDcaOLD;
  FVlrDcb := FVlrDcbOLD;
  FVlrOud := FVlrOudOLD;
  FNotDeb := FNotDebOLD;
  FNumPrj := FNumPrjOLD;
  FCodFpj := FCodFpjOLD;
  FCtaFin := FCtaFinOLD;
  FCtaRed := FCtaRedOLD;
  FCodCcu := FCodCcuOLD;
  FQtdDup := FQtdDupOLD;
  FQtdBlo := FQtdBloOLD;
  FDatUcm := FDatUcmOLD;
  FCotUcm := FCotUcmOLD;
  FFilNfv := FFilNfvOLD;
  FCodSnf := FCodSnfOLD;
  FNumNfv := FNumNfvOLD;
  FFilCtr := FFilCtrOLD;
  FNumCtr := FNumCtrOLD;
  FSeqImo := FSeqImoOLD;
  FFilNff := FFilNffOLD;
  FNumNff := FNumNffOLD;
  FFilPed := FFilPedOLD;
  FNumPed := FNumPedOLD;
  FFilNfc := FFilNfcOLD;
  FForNfc := FForNfcOLD;
  FNumNfc := FNumNfcOLD;
  FSnfNfc := FSnfNfcOLD;
  FFilNdb := FFilNdbOLD;
  FNumNdb := FNumNdbOLD;
  FTptNdb := FTptNdbOLD;
  FTipEfe := FTipEfeOLD;
  FTnsPre := FTnsPreOLD;
  FDatPre := FDatPreOLD;
  FVlrPre := FVlrPreOLD;
  FCtrFre := FCtrFreOLD;
  FCtrNre := FCtrNreOLD;
  FPedFre := FPedFreOLD;
  FPedNre := FPedNreOLD;
  FCodBar := FCodBarOLD;
  FUsuSit := FUsuSitOLD;
  FNumEco := FNumEcoOLD;
  FNumAce := FNumAceOLD;
  FFilCcr := FFilCcrOLD;
  FNumCcr := FNumCcrOLD;
  FSitPef := FSitPefOLD;
  FUsuGer := FUsuGerOLD;
  FDatGer := FDatGerOLD;
  FHorGer := FHorGerOLD;
  FCatTef := FCatTefOLD;
  FNsuTef := FNsuTefOLD;
  FRotSap := FRotSapOLD;
  FNumDfs := FNumDfsOLD;
  FCodEqu := FCodEquOLD;
  FNumCfi := FNumCfiOLD;
  FCatExt := FCatExtOLD;
  FCodOpe := FCodOpeOLD;
  FCarCov := FCarCovOLD;
  FCarPre := FCarPreOLD;
  FCodCnv := FCodCnvOLD;
  FUSU_ConChe := FUSU_ConCheOLD;
  FUSU_SitSer := FUSU_SitSerOLD;
  FUSU_ExpSer := FUSU_ExpSerOLD;
  FUSU_IndEnv := FUSU_IndEnvOLD;
  FUSU_UsuConChe := FUSU_UsuConCheOLD;
  FUSU_DatConChe := FUSU_DatConCheOLD;
  FUSU_HorConChe := FUSU_HorConCheOLD;
end;

end.
