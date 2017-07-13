unit o099usu;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, oTabelas, DateUtils;

type

  T099USU = class(TTabelaPadrao)
  private
    FCodEmp: Integer;
    FCodUsu: Integer;
    FNumEmp: Integer;
    FTipCol: Integer;
    FNumCad: Integer;
    FSupIme: Integer;
    FCodCcu: string;
    FIntNet: string;
    FEmpAti: Integer;
    FFilAti: Integer;
    FGerAus: string;
    FCptRel: string;
    FFpgObr: string;
    FPstAti: Integer;
    FVenTbp: string;
    FVenNsp: string;
    FVenPar: string;
    FVenPap: string;
    FVenPds: string;
    FVenPip: string;
    FVenPic: string;
    FVenPco: string;
    FVenPis: string;
    FVenPir: string;
    FVenPin: string;
    FVenPfu: string;
    FVenAun: string;
    FVenAtp: string;
    FVenAcl: string;
    FVenAre: string;
    FVenAsp: string;
    FVenLpd: string;
    FVenAcv: string;
    FVenAns: string;
    FVenLns: string;
    FVenAsr: string;
    FVenRat: string;
    FVenPae: string;
    FVenAdg: string;
    FVenApi: string;
    FEstAes: string;
    FEstRat: string;
    FEstPlp: string;
    FRecPgr: string;
    FRecAvr: string;
    FRecAvl: string;
    FRecRat: string;
    FCprMac: Double;
    FCprMoc: Double;
    FCprPap: string;
    FCprPds: string;
    FCprPip: string;
    FCprPic: string;
    FCprPis: string;
    FCprPir: string;
    FCprPin: string;
    FCprPfu: string;
    FCprVno: Double;
    FCprQno: Double;
    FCprVdn: Double;
    FCprPdn: Double;
    FCprApd: string;
    FCprAfo: string;
    FCprAoc: string;
    FCprAcc: string;
    FCprAne: string;
    FCprRat: string;
    FCprAdg: string;
    FCprAcf: string;
    FCprAtx: string;
    FCprAhf: string;
    FPagMax: Double;
    FPagPgr: string;
    FPagAvp: string;
    FPagAvl: string;
    FPagEev: string;
    FPagRat: string;
    FCxbDcp: Integer;
    FCxbApm: string;
    FCxbRat: string;
    FCtbDac: string;
    FCtbAlt: string;
    FCtbClt: string;
    FCtbAlc: string;
    FCtbClc: string;
    FCtbArt: string;
    FCtbCrt: string;
    FCtbAor: string;
    FCtbCor: string;
    FCtbAct: string;
    FCtbAhp: string;
    FCtbAcf: string;
    FCtbLfl: string;
    FCtbZer: string;
    FPrdDpa: Integer;
    FPrdDpp: Integer;
    FSitUsu: string;
    FCodMot: Integer;
    FObsMot: string;
    FUsuMot: Integer;
    FDatMot: TDate;
    FHorMot: Integer;
    FUsuGer: Integer;
    FDatGer: TDate;
    FHorGer: Integer;
    FCodCli: Integer;
    FCodFor: Integer;
    FCodRep: Integer;
    FCodTra: Integer;
    FCodPor: string;
    FVenFqp: string;
    FCprPqt: string;
    FPorObr: string;
    FVenLpv: string;
    FVenLpf: string;
    FVenLpc: string;
    FVenLpp: string;
    FCprApi: string;
    FEstGsa: string;
    FEstAdr: string;
    FEstAgc: string;
    FVenLpa: string;
    FPrjLfd: string;
    FDisRra: string;
    FDisInr: string;
    FDisEnr: string;
    FCprFpo: string;
    FRecArf: string;
    FPagArf: string;
    FCapArf: string;
    FCxbArf: string;
    FCtbElt: string;
    FCtbElc: string;
    FAprDft: string;
    FAprDoc: string;
    FPrjNus: string;
    FCprPec: string;
    FCprFoc: Integer;
    FCprFcp: Integer;
    FVenPof: string;
    FCprPsc: string;
    FMltLgn: string;
    FNomSer: string;
    FPorSer: Integer;
    FAutUsu: string;
    FUsuAut: string;
    FSenAut: string;
    FAltRem: string;
    FVenPtn: string;
    FVenPca: string;
    FVenLpi: string;
    FVenPfp: string;
    FPatDfl: string;
    FVenPcd: string;
    FMpcAct: string;
    FCtbLtc: string;
    FPatTde: string;
    FVenScv: string;
    FConQar: string;
    FUsuCfe: string;
    FCprScc: string;
    FVenAtv: string;
    FVenAtf: string;
    FImpRat: string;
    FDirNel: string;
    FVenCns: string;
    FMpcAcf: string;
    FMpcAcc: string;
    FMpcAca: string;
    FDatSin: TDate;
    FHorSin: Integer;
    FVenAir: string;
    FAprSct: string;
    FPrjTso: string;
    FCpoCpf: string;
    FCprRca: string;
    FCleQtd: string;
    FClePrc: string;
    FConRec: string;
    FVenSpp: string;
    FPrdEpb: string;
    FVenAse: string;
    FVenIfc: string;
    FDirCte: string;
    FCprIgc: string;
    FCprAsc: string;
    FCprAqc: string;
    FTurTrb: Integer;
    FCodCel: string;
    FPrdOpd: string;
    FOpdOrp: string;
    FVenCst: string;
    FCprCst: string;
    FDirNes: string;
    FCanNfe: string;
    FVenSdg: string;
    FDatAfi: string;
    FIndAst: string;
    FAltInp: string;
    FCxbPgp: string;
    FAstOrp: string;
    FAstSor: string;
    FAstNfv: string;
    FAstPed: string;
    FRecAcd: string;
    FPagAcd: string;
    FPagDet: Integer;
    FMaxLgn: Integer;
    FParEsp: string;
    FVenCnp: string;
    FIndMre: string;
    FAstPsi: string;
    FAstEto: string;
    FExaOcp: string;
    FVenAva: string;
    FManAge: string;
    FConAge: string;
    FPatEmp: string;
    FAltMon: string;
    FAltEbq: string;
    FAudPfa: string;
    FAltNnu: string;
    FSenApr: string;
    FCobPdj: string;
    FCobAtc: string;
    FAcrCcm: string;
    FPerExs: string;
    FPerFpc: Integer;
    FUSU_CodFil: Integer;
    FUSU_MaiFOC: string;
    FUSU_NFOCEF: string;
    FUSU_NFOCNO: string;
    FUSU_ClaUsu: Integer;
    FUSU_NFOCUC: string;
    FUSU_EmaApr: string;
    FUSU_FecNFRem: string;
    FUSU_AvsCnfDsp: string;
    FUSU_AbrLibVen: string;
    FUSU_AviDia: Integer;

    FCodEmpOLD: Integer;
    FCodUsuOLD: Integer;
    FNumEmpOLD: Integer;
    FTipColOLD: Integer;
    FNumCadOLD: Integer;
    FSupImeOLD: Integer;
    FCodCcuOLD: string;
    FIntNetOLD: string;
    FEmpAtiOLD: Integer;
    FFilAtiOLD: Integer;
    FGerAusOLD: string;
    FCptRelOLD: string;
    FFpgObrOLD: string;
    FPstAtiOLD: Integer;
    FVenTbpOLD: string;
    FVenNspOLD: string;
    FVenParOLD: string;
    FVenPapOLD: string;
    FVenPdsOLD: string;
    FVenPipOLD: string;
    FVenPicOLD: string;
    FVenPcoOLD: string;
    FVenPisOLD: string;
    FVenPirOLD: string;
    FVenPinOLD: string;
    FVenPfuOLD: string;
    FVenAunOLD: string;
    FVenAtpOLD: string;
    FVenAclOLD: string;
    FVenAreOLD: string;
    FVenAspOLD: string;
    FVenLpdOLD: string;
    FVenAcvOLD: string;
    FVenAnsOLD: string;
    FVenLnsOLD: string;
    FVenAsrOLD: string;
    FVenRatOLD: string;
    FVenPaeOLD: string;
    FVenAdgOLD: string;
    FVenApiOLD: string;
    FEstAesOLD: string;
    FEstRatOLD: string;
    FEstPlpOLD: string;
    FRecPgrOLD: string;
    FRecAvrOLD: string;
    FRecAvlOLD: string;
    FRecRatOLD: string;
    FCprMacOLD: Double;
    FCprMocOLD: Double;
    FCprPapOLD: string;
    FCprPdsOLD: string;
    FCprPipOLD: string;
    FCprPicOLD: string;
    FCprPisOLD: string;
    FCprPirOLD: string;
    FCprPinOLD: string;
    FCprPfuOLD: string;
    FCprVnoOLD: Double;
    FCprQnoOLD: Double;
    FCprVdnOLD: Double;
    FCprPdnOLD: Double;
    FCprApdOLD: string;
    FCprAfoOLD: string;
    FCprAocOLD: string;
    FCprAccOLD: string;
    FCprAneOLD: string;
    FCprRatOLD: string;
    FCprAdgOLD: string;
    FCprAcfOLD: string;
    FCprAtxOLD: string;
    FCprAhfOLD: string;
    FPagMaxOLD: Double;
    FPagPgrOLD: string;
    FPagAvpOLD: string;
    FPagAvlOLD: string;
    FPagEevOLD: string;
    FPagRatOLD: string;
    FCxbDcpOLD: Integer;
    FCxbApmOLD: string;
    FCxbRatOLD: string;
    FCtbDacOLD: string;
    FCtbAltOLD: string;
    FCtbCltOLD: string;
    FCtbAlcOLD: string;
    FCtbClcOLD: string;
    FCtbArtOLD: string;
    FCtbCrtOLD: string;
    FCtbAorOLD: string;
    FCtbCorOLD: string;
    FCtbActOLD: string;
    FCtbAhpOLD: string;
    FCtbAcfOLD: string;
    FCtbLflOLD: string;
    FCtbZerOLD: string;
    FPrdDpaOLD: Integer;
    FPrdDppOLD: Integer;
    FSitUsuOLD: string;
    FCodMotOLD: Integer;
    FObsMotOLD: string;
    FUsuMotOLD: Integer;
    FDatMotOLD: TDate;
    FHorMotOLD: Integer;
    FUsuGerOLD: Integer;
    FDatGerOLD: TDate;
    FHorGerOLD: Integer;
    FCodCliOLD: Integer;
    FCodForOLD: Integer;
    FCodRepOLD: Integer;
    FCodTraOLD: Integer;
    FCodPorOLD: string;
    FVenFqpOLD: string;
    FCprPqtOLD: string;
    FPorObrOLD: string;
    FVenLpvOLD: string;
    FVenLpfOLD: string;
    FVenLpcOLD: string;
    FVenLppOLD: string;
    FCprApiOLD: string;
    FEstGsaOLD: string;
    FEstAdrOLD: string;
    FEstAgcOLD: string;
    FVenLpaOLD: string;
    FPrjLfdOLD: string;
    FDisRraOLD: string;
    FDisInrOLD: string;
    FDisEnrOLD: string;
    FCprFpoOLD: string;
    FRecArfOLD: string;
    FPagArfOLD: string;
    FCapArfOLD: string;
    FCxbArfOLD: string;
    FCtbEltOLD: string;
    FCtbElcOLD: string;
    FAprDftOLD: string;
    FAprDocOLD: string;
    FPrjNusOLD: string;
    FCprPecOLD: string;
    FCprFocOLD: Integer;
    FCprFcpOLD: Integer;
    FVenPofOLD: string;
    FCprPscOLD: string;
    FMltLgnOLD: string;
    FNomSerOLD: string;
    FPorSerOLD: Integer;
    FAutUsuOLD: string;
    FUsuAutOLD: string;
    FSenAutOLD: string;
    FAltRemOLD: string;
    FVenPtnOLD: string;
    FVenPcaOLD: string;
    FVenLpiOLD: string;
    FVenPfpOLD: string;
    FPatDflOLD: string;
    FVenPcdOLD: string;
    FMpcActOLD: string;
    FCtbLtcOLD: string;
    FPatTdeOLD: string;
    FVenScvOLD: string;
    FConQarOLD: string;
    FUsuCfeOLD: string;
    FCprSccOLD: string;
    FVenAtvOLD: string;
    FVenAtfOLD: string;
    FImpRatOLD: string;
    FDirNelOLD: string;
    FVenCnsOLD: string;
    FMpcAcfOLD: string;
    FMpcAccOLD: string;
    FMpcAcaOLD: string;
    FDatSinOLD: TDate;
    FHorSinOLD: Integer;
    FVenAirOLD: string;
    FAprSctOLD: string;
    FPrjTsoOLD: string;
    FCpoCpfOLD: string;
    FCprRcaOLD: string;
    FCleQtdOLD: string;
    FClePrcOLD: string;
    FConRecOLD: string;
    FVenSppOLD: string;
    FPrdEpbOLD: string;
    FVenAseOLD: string;
    FVenIfcOLD: string;
    FDirCteOLD: string;
    FCprIgcOLD: string;
    FCprAscOLD: string;
    FCprAqcOLD: string;
    FTurTrbOLD: Integer;
    FCodCelOLD: string;
    FPrdOpdOLD: string;
    FOpdOrpOLD: string;
    FVenCstOLD: string;
    FCprCstOLD: string;
    FDirNesOLD: string;
    FCanNfeOLD: string;
    FVenSdgOLD: string;
    FDatAfiOLD: string;
    FIndAstOLD: string;
    FAltInpOLD: string;
    FCxbPgpOLD: string;
    FAstOrpOLD: string;
    FAstSorOLD: string;
    FAstNfvOLD: string;
    FAstPedOLD: string;
    FRecAcdOLD: string;
    FPagAcdOLD: string;
    FPagDetOLD: Integer;
    FMaxLgnOLD: Integer;
    FParEspOLD: string;
    FVenCnpOLD: string;
    FIndMreOLD: string;
    FAstPsiOLD: string;
    FAstEtoOLD: string;
    FExaOcpOLD: string;
    FVenAvaOLD: string;
    FManAgeOLD: string;
    FConAgeOLD: string;
    FPatEmpOLD: string;
    FAltMonOLD: string;
    FAltEbqOLD: string;
    FAudPfaOLD: string;
    FAltNnuOLD: string;
    FSenAprOLD: string;
    FCobPdjOLD: string;
    FCobAtcOLD: string;
    FAcrCcmOLD: string;
    FPerExsOLD: string;
    FPerFpcOLD: Integer;
    FUSU_CodFilOLD: Integer;
    FUSU_MaiFOCOLD: string;
    FUSU_NFOCEFOLD: string;
    FUSU_NFOCNOOLD: string;
    FUSU_ClaUsuOLD: Integer;
    FUSU_NFOCUCOLD: string;
    FUSU_EmaAprOLD: string;
    FUSU_FecNFRemOLD: string;
    FUSU_AvsCnfDspOLD: string;
    FUSU_AbrLibVenOLD: string;
    FUSU_AviDiaOLD: Integer;

    function GetCodEmp: Integer;
    procedure SetCodEmp(const pCodEmp: Integer);
    function GetCodUsu: Integer;
    procedure SetCodUsu(const pCodUsu: Integer);
    function GetNumEmp: Integer;
    procedure SetNumEmp(const pNumEmp: Integer);
    function GetTipCol: Integer;
    procedure SetTipCol(const pTipCol: Integer);
    function GetNumCad: Integer;
    procedure SetNumCad(const pNumCad: Integer);
    function GetSupIme: Integer;
    procedure SetSupIme(const pSupIme: Integer);
    function GetCodCcu: string;
    procedure SetCodCcu(const pCodCcu: string);
    function GetIntNet: string;
    procedure SetIntNet(const pIntNet: string);
    function GetEmpAti: Integer;
    procedure SetEmpAti(const pEmpAti: Integer);
    function GetFilAti: Integer;
    procedure SetFilAti(const pFilAti: Integer);
    function GetGerAus: string;
    procedure SetGerAus(const pGerAus: string);
    function GetCptRel: string;
    procedure SetCptRel(const pCptRel: string);
    function GetFpgObr: string;
    procedure SetFpgObr(const pFpgObr: string);
    function GetPstAti: Integer;
    procedure SetPstAti(const pPstAti: Integer);
    function GetVenTbp: string;
    procedure SetVenTbp(const pVenTbp: string);
    function GetVenNsp: string;
    procedure SetVenNsp(const pVenNsp: string);
    function GetVenPar: string;
    procedure SetVenPar(const pVenPar: string);
    function GetVenPap: string;
    procedure SetVenPap(const pVenPap: string);
    function GetVenPds: string;
    procedure SetVenPds(const pVenPds: string);
    function GetVenPip: string;
    procedure SetVenPip(const pVenPip: string);
    function GetVenPic: string;
    procedure SetVenPic(const pVenPic: string);
    function GetVenPco: string;
    procedure SetVenPco(const pVenPco: string);
    function GetVenPis: string;
    procedure SetVenPis(const pVenPis: string);
    function GetVenPir: string;
    procedure SetVenPir(const pVenPir: string);
    function GetVenPin: string;
    procedure SetVenPin(const pVenPin: string);
    function GetVenPfu: string;
    procedure SetVenPfu(const pVenPfu: string);
    function GetVenAun: string;
    procedure SetVenAun(const pVenAun: string);
    function GetVenAtp: string;
    procedure SetVenAtp(const pVenAtp: string);
    function GetVenAcl: string;
    procedure SetVenAcl(const pVenAcl: string);
    function GetVenAre: string;
    procedure SetVenAre(const pVenAre: string);
    function GetVenAsp: string;
    procedure SetVenAsp(const pVenAsp: string);
    function GetVenLpd: string;
    procedure SetVenLpd(const pVenLpd: string);
    function GetVenAcv: string;
    procedure SetVenAcv(const pVenAcv: string);
    function GetVenAns: string;
    procedure SetVenAns(const pVenAns: string);
    function GetVenLns: string;
    procedure SetVenLns(const pVenLns: string);
    function GetVenAsr: string;
    procedure SetVenAsr(const pVenAsr: string);
    function GetVenRat: string;
    procedure SetVenRat(const pVenRat: string);
    function GetVenPae: string;
    procedure SetVenPae(const pVenPae: string);
    function GetVenAdg: string;
    procedure SetVenAdg(const pVenAdg: string);
    function GetVenApi: string;
    procedure SetVenApi(const pVenApi: string);
    function GetEstAes: string;
    procedure SetEstAes(const pEstAes: string);
    function GetEstRat: string;
    procedure SetEstRat(const pEstRat: string);
    function GetEstPlp: string;
    procedure SetEstPlp(const pEstPlp: string);
    function GetRecPgr: string;
    procedure SetRecPgr(const pRecPgr: string);
    function GetRecAvr: string;
    procedure SetRecAvr(const pRecAvr: string);
    function GetRecAvl: string;
    procedure SetRecAvl(const pRecAvl: string);
    function GetRecRat: string;
    procedure SetRecRat(const pRecRat: string);
    function GetCprMac: Double;
    procedure SetCprMac(const pCprMac: Double);
    function GetCprMoc: Double;
    procedure SetCprMoc(const pCprMoc: Double);
    function GetCprPap: string;
    procedure SetCprPap(const pCprPap: string);
    function GetCprPds: string;
    procedure SetCprPds(const pCprPds: string);
    function GetCprPip: string;
    procedure SetCprPip(const pCprPip: string);
    function GetCprPic: string;
    procedure SetCprPic(const pCprPic: string);
    function GetCprPis: string;
    procedure SetCprPis(const pCprPis: string);
    function GetCprPir: string;
    procedure SetCprPir(const pCprPir: string);
    function GetCprPin: string;
    procedure SetCprPin(const pCprPin: string);
    function GetCprPfu: string;
    procedure SetCprPfu(const pCprPfu: string);
    function GetCprVno: Double;
    procedure SetCprVno(const pCprVno: Double);
    function GetCprQno: Double;
    procedure SetCprQno(const pCprQno: Double);
    function GetCprVdn: Double;
    procedure SetCprVdn(const pCprVdn: Double);
    function GetCprPdn: Double;
    procedure SetCprPdn(const pCprPdn: Double);
    function GetCprApd: string;
    procedure SetCprApd(const pCprApd: string);
    function GetCprAfo: string;
    procedure SetCprAfo(const pCprAfo: string);
    function GetCprAoc: string;
    procedure SetCprAoc(const pCprAoc: string);
    function GetCprAcc: string;
    procedure SetCprAcc(const pCprAcc: string);
    function GetCprAne: string;
    procedure SetCprAne(const pCprAne: string);
    function GetCprRat: string;
    procedure SetCprRat(const pCprRat: string);
    function GetCprAdg: string;
    procedure SetCprAdg(const pCprAdg: string);
    function GetCprAcf: string;
    procedure SetCprAcf(const pCprAcf: string);
    function GetCprAtx: string;
    procedure SetCprAtx(const pCprAtx: string);
    function GetCprAhf: string;
    procedure SetCprAhf(const pCprAhf: string);
    function GetPagMax: Double;
    procedure SetPagMax(const pPagMax: Double);
    function GetPagPgr: string;
    procedure SetPagPgr(const pPagPgr: string);
    function GetPagAvp: string;
    procedure SetPagAvp(const pPagAvp: string);
    function GetPagAvl: string;
    procedure SetPagAvl(const pPagAvl: string);
    function GetPagEev: string;
    procedure SetPagEev(const pPagEev: string);
    function GetPagRat: string;
    procedure SetPagRat(const pPagRat: string);
    function GetCxbDcp: Integer;
    procedure SetCxbDcp(const pCxbDcp: Integer);
    function GetCxbApm: string;
    procedure SetCxbApm(const pCxbApm: string);
    function GetCxbRat: string;
    procedure SetCxbRat(const pCxbRat: string);
    function GetCtbDac: string;
    procedure SetCtbDac(const pCtbDac: string);
    function GetCtbAlt: string;
    procedure SetCtbAlt(const pCtbAlt: string);
    function GetCtbClt: string;
    procedure SetCtbClt(const pCtbClt: string);
    function GetCtbAlc: string;
    procedure SetCtbAlc(const pCtbAlc: string);
    function GetCtbClc: string;
    procedure SetCtbClc(const pCtbClc: string);
    function GetCtbArt: string;
    procedure SetCtbArt(const pCtbArt: string);
    function GetCtbCrt: string;
    procedure SetCtbCrt(const pCtbCrt: string);
    function GetCtbAor: string;
    procedure SetCtbAor(const pCtbAor: string);
    function GetCtbCor: string;
    procedure SetCtbCor(const pCtbCor: string);
    function GetCtbAct: string;
    procedure SetCtbAct(const pCtbAct: string);
    function GetCtbAhp: string;
    procedure SetCtbAhp(const pCtbAhp: string);
    function GetCtbAcf: string;
    procedure SetCtbAcf(const pCtbAcf: string);
    function GetCtbLfl: string;
    procedure SetCtbLfl(const pCtbLfl: string);
    function GetCtbZer: string;
    procedure SetCtbZer(const pCtbZer: string);
    function GetPrdDpa: Integer;
    procedure SetPrdDpa(const pPrdDpa: Integer);
    function GetPrdDpp: Integer;
    procedure SetPrdDpp(const pPrdDpp: Integer);
    function GetSitUsu: string;
    procedure SetSitUsu(const pSitUsu: string);
    function GetCodMot: Integer;
    procedure SetCodMot(const pCodMot: Integer);
    function GetObsMot: string;
    procedure SetObsMot(const pObsMot: string);
    function GetUsuMot: Integer;
    procedure SetUsuMot(const pUsuMot: Integer);
    function GetDatMot: TDate;
    procedure SetDatMot(const pDatMot: TDate);
    function GetHorMot: Integer;
    procedure SetHorMot(const pHorMot: Integer);
    function GetUsuGer: Integer;
    procedure SetUsuGer(const pUsuGer: Integer);
    function GetDatGer: TDate;
    procedure SetDatGer(const pDatGer: TDate);
    function GetHorGer: Integer;
    procedure SetHorGer(const pHorGer: Integer);
    function GetCodCli: Integer;
    procedure SetCodCli(const pCodCli: Integer);
    function GetCodFor: Integer;
    procedure SetCodFor(const pCodFor: Integer);
    function GetCodRep: Integer;
    procedure SetCodRep(const pCodRep: Integer);
    function GetCodTra: Integer;
    procedure SetCodTra(const pCodTra: Integer);
    function GetCodPor: string;
    procedure SetCodPor(const pCodPor: string);
    function GetVenFqp: string;
    procedure SetVenFqp(const pVenFqp: string);
    function GetCprPqt: string;
    procedure SetCprPqt(const pCprPqt: string);
    function GetPorObr: string;
    procedure SetPorObr(const pPorObr: string);
    function GetVenLpv: string;
    procedure SetVenLpv(const pVenLpv: string);
    function GetVenLpf: string;
    procedure SetVenLpf(const pVenLpf: string);
    function GetVenLpc: string;
    procedure SetVenLpc(const pVenLpc: string);
    function GetVenLpp: string;
    procedure SetVenLpp(const pVenLpp: string);
    function GetCprApi: string;
    procedure SetCprApi(const pCprApi: string);
    function GetEstGsa: string;
    procedure SetEstGsa(const pEstGsa: string);
    function GetEstAdr: string;
    procedure SetEstAdr(const pEstAdr: string);
    function GetEstAgc: string;
    procedure SetEstAgc(const pEstAgc: string);
    function GetVenLpa: string;
    procedure SetVenLpa(const pVenLpa: string);
    function GetPrjLfd: string;
    procedure SetPrjLfd(const pPrjLfd: string);
    function GetDisRra: string;
    procedure SetDisRra(const pDisRra: string);
    function GetDisInr: string;
    procedure SetDisInr(const pDisInr: string);
    function GetDisEnr: string;
    procedure SetDisEnr(const pDisEnr: string);
    function GetCprFpo: string;
    procedure SetCprFpo(const pCprFpo: string);
    function GetRecArf: string;
    procedure SetRecArf(const pRecArf: string);
    function GetPagArf: string;
    procedure SetPagArf(const pPagArf: string);
    function GetCapArf: string;
    procedure SetCapArf(const pCapArf: string);
    function GetCxbArf: string;
    procedure SetCxbArf(const pCxbArf: string);
    function GetCtbElt: string;
    procedure SetCtbElt(const pCtbElt: string);
    function GetCtbElc: string;
    procedure SetCtbElc(const pCtbElc: string);
    function GetAprDft: string;
    procedure SetAprDft(const pAprDft: string);
    function GetAprDoc: string;
    procedure SetAprDoc(const pAprDoc: string);
    function GetPrjNus: string;
    procedure SetPrjNus(const pPrjNus: string);
    function GetCprPec: string;
    procedure SetCprPec(const pCprPec: string);
    function GetCprFoc: Integer;
    procedure SetCprFoc(const pCprFoc: Integer);
    function GetCprFcp: Integer;
    procedure SetCprFcp(const pCprFcp: Integer);
    function GetVenPof: string;
    procedure SetVenPof(const pVenPof: string);
    function GetCprPsc: string;
    procedure SetCprPsc(const pCprPsc: string);
    function GetMltLgn: string;
    procedure SetMltLgn(const pMltLgn: string);
    function GetNomSer: string;
    procedure SetNomSer(const pNomSer: string);
    function GetPorSer: Integer;
    procedure SetPorSer(const pPorSer: Integer);
    function GetAutUsu: string;
    procedure SetAutUsu(const pAutUsu: string);
    function GetUsuAut: string;
    procedure SetUsuAut(const pUsuAut: string);
    function GetSenAut: string;
    procedure SetSenAut(const pSenAut: string);
    function GetAltRem: string;
    procedure SetAltRem(const pAltRem: string);
    function GetVenPtn: string;
    procedure SetVenPtn(const pVenPtn: string);
    function GetVenPca: string;
    procedure SetVenPca(const pVenPca: string);
    function GetVenLpi: string;
    procedure SetVenLpi(const pVenLpi: string);
    function GetVenPfp: string;
    procedure SetVenPfp(const pVenPfp: string);
    function GetPatDfl: string;
    procedure SetPatDfl(const pPatDfl: string);
    function GetVenPcd: string;
    procedure SetVenPcd(const pVenPcd: string);
    function GetMpcAct: string;
    procedure SetMpcAct(const pMpcAct: string);
    function GetCtbLtc: string;
    procedure SetCtbLtc(const pCtbLtc: string);
    function GetPatTde: string;
    procedure SetPatTde(const pPatTde: string);
    function GetVenScv: string;
    procedure SetVenScv(const pVenScv: string);
    function GetConQar: string;
    procedure SetConQar(const pConQar: string);
    function GetUsuCfe: string;
    procedure SetUsuCfe(const pUsuCfe: string);
    function GetCprScc: string;
    procedure SetCprScc(const pCprScc: string);
    function GetVenAtv: string;
    procedure SetVenAtv(const pVenAtv: string);
    function GetVenAtf: string;
    procedure SetVenAtf(const pVenAtf: string);
    function GetImpRat: string;
    procedure SetImpRat(const pImpRat: string);
    function GetDirNel: string;
    procedure SetDirNel(const pDirNel: string);
    function GetVenCns: string;
    procedure SetVenCns(const pVenCns: string);
    function GetMpcAcf: string;
    procedure SetMpcAcf(const pMpcAcf: string);
    function GetMpcAcc: string;
    procedure SetMpcAcc(const pMpcAcc: string);
    function GetMpcAca: string;
    procedure SetMpcAca(const pMpcAca: string);
    function GetDatSin: TDate;
    procedure SetDatSin(const pDatSin: TDate);
    function GetHorSin: Integer;
    procedure SetHorSin(const pHorSin: Integer);
    function GetVenAir: string;
    procedure SetVenAir(const pVenAir: string);
    function GetAprSct: string;
    procedure SetAprSct(const pAprSct: string);
    function GetPrjTso: string;
    procedure SetPrjTso(const pPrjTso: string);
    function GetCpoCpf: string;
    procedure SetCpoCpf(const pCpoCpf: string);
    function GetCprRca: string;
    procedure SetCprRca(const pCprRca: string);
    function GetCleQtd: string;
    procedure SetCleQtd(const pCleQtd: string);
    function GetClePrc: string;
    procedure SetClePrc(const pClePrc: string);
    function GetConRec: string;
    procedure SetConRec(const pConRec: string);
    function GetVenSpp: string;
    procedure SetVenSpp(const pVenSpp: string);
    function GetPrdEpb: string;
    procedure SetPrdEpb(const pPrdEpb: string);
    function GetVenAse: string;
    procedure SetVenAse(const pVenAse: string);
    function GetVenIfc: string;
    procedure SetVenIfc(const pVenIfc: string);
    function GetDirCte: string;
    procedure SetDirCte(const pDirCte: string);
    function GetCprIgc: string;
    procedure SetCprIgc(const pCprIgc: string);
    function GetCprAsc: string;
    procedure SetCprAsc(const pCprAsc: string);
    function GetCprAqc: string;
    procedure SetCprAqc(const pCprAqc: string);
    function GetTurTrb: Integer;
    procedure SetTurTrb(const pTurTrb: Integer);
    function GetCodCel: string;
    procedure SetCodCel(const pCodCel: string);
    function GetPrdOpd: string;
    procedure SetPrdOpd(const pPrdOpd: string);
    function GetOpdOrp: string;
    procedure SetOpdOrp(const pOpdOrp: string);
    function GetVenCst: string;
    procedure SetVenCst(const pVenCst: string);
    function GetCprCst: string;
    procedure SetCprCst(const pCprCst: string);
    function GetDirNes: string;
    procedure SetDirNes(const pDirNes: string);
    function GetCanNfe: string;
    procedure SetCanNfe(const pCanNfe: string);
    function GetVenSdg: string;
    procedure SetVenSdg(const pVenSdg: string);
    function GetDatAfi: string;
    procedure SetDatAfi(const pDatAfi: string);
    function GetIndAst: string;
    procedure SetIndAst(const pIndAst: string);
    function GetAltInp: string;
    procedure SetAltInp(const pAltInp: string);
    function GetCxbPgp: string;
    procedure SetCxbPgp(const pCxbPgp: string);
    function GetAstOrp: string;
    procedure SetAstOrp(const pAstOrp: string);
    function GetAstSor: string;
    procedure SetAstSor(const pAstSor: string);
    function GetAstNfv: string;
    procedure SetAstNfv(const pAstNfv: string);
    function GetAstPed: string;
    procedure SetAstPed(const pAstPed: string);
    function GetRecAcd: string;
    procedure SetRecAcd(const pRecAcd: string);
    function GetPagAcd: string;
    procedure SetPagAcd(const pPagAcd: string);
    function GetPagDet: Integer;
    procedure SetPagDet(const pPagDet: Integer);
    function GetMaxLgn: Integer;
    procedure SetMaxLgn(const pMaxLgn: Integer);
    function GetParEsp: string;
    procedure SetParEsp(const pParEsp: string);
    function GetVenCnp: string;
    procedure SetVenCnp(const pVenCnp: string);
    function GetIndMre: string;
    procedure SetIndMre(const pIndMre: string);
    function GetAstPsi: string;
    procedure SetAstPsi(const pAstPsi: string);
    function GetAstEto: string;
    procedure SetAstEto(const pAstEto: string);
    function GetExaOcp: string;
    procedure SetExaOcp(const pExaOcp: string);
    function GetVenAva: string;
    procedure SetVenAva(const pVenAva: string);
    function GetManAge: string;
    procedure SetManAge(const pManAge: string);
    function GetConAge: string;
    procedure SetConAge(const pConAge: string);
    function GetPatEmp: string;
    procedure SetPatEmp(const pPatEmp: string);
    function GetAltMon: string;
    procedure SetAltMon(const pAltMon: string);
    function GetAltEbq: string;
    procedure SetAltEbq(const pAltEbq: string);
    function GetAudPfa: string;
    procedure SetAudPfa(const pAudPfa: string);
    function GetAltNnu: string;
    procedure SetAltNnu(const pAltNnu: string);
    function GetSenApr: string;
    procedure SetSenApr(const pSenApr: string);
    function GetCobPdj: string;
    procedure SetCobPdj(const pCobPdj: string);
    function GetCobAtc: string;
    procedure SetCobAtc(const pCobAtc: string);
    function GetAcrCcm: string;
    procedure SetAcrCcm(const pAcrCcm: string);
    function GetPerExs: string;
    procedure SetPerExs(const pPerExs: string);
    function GetPerFpc: Integer;
    procedure SetPerFpc(const pPerFpc: Integer);
    function GetUSU_CodFil: Integer;
    procedure SetUSU_CodFil(const pUSU_CodFil: Integer);
    function GetUSU_MaiFOC: string;
    procedure SetUSU_MaiFOC(const pUSU_MaiFOC: string);
    function GetUSU_NFOCEF: string;
    procedure SetUSU_NFOCEF(const pUSU_NFOCEF: string);
    function GetUSU_NFOCNO: string;
    procedure SetUSU_NFOCNO(const pUSU_NFOCNO: string);
    function GetUSU_ClaUsu: Integer;
    procedure SetUSU_ClaUsu(const pUSU_ClaUsu: Integer);
    function GetUSU_NFOCUC: string;
    procedure SetUSU_NFOCUC(const pUSU_NFOCUC: string);
    function GetUSU_EmaApr: string;
    procedure SetUSU_EmaApr(const pUSU_EmaApr: string);
    function GetUSU_FecNFRem: string;
    procedure SetUSU_FecNFRem(const pUSU_FecNFRem: string);
    function GetUSU_AvsCnfDsp: string;
    procedure SetUSU_AvsCnfDsp(const pUSU_AvsCnfDsp: string);
    function GetUSU_AbrLibVen: string;
    procedure SetUSU_AbrLibVen(const pUSU_AbrLibVen: string);
    function GetUSU_AviDia: Integer;
    procedure SetUSU_AviDia(const pUSU_AviDia: Integer);

    function GetCodEmpOld: Integer;
    procedure SetCodEmpOld(const pCodEmp: Integer);
    function GetCodUsuOld: Integer;
    procedure SetCodUsuOld(const pCodUsu: Integer);
    function GetNumEmpOld: Integer;
    procedure SetNumEmpOld(const pNumEmp: Integer);
    function GetTipColOld: Integer;
    procedure SetTipColOld(const pTipCol: Integer);
    function GetNumCadOld: Integer;
    procedure SetNumCadOld(const pNumCad: Integer);
    function GetSupImeOld: Integer;
    procedure SetSupImeOld(const pSupIme: Integer);
    function GetCodCcuOld: string;
    procedure SetCodCcuOld(const pCodCcu: string);
    function GetIntNetOld: string;
    procedure SetIntNetOld(const pIntNet: string);
    function GetEmpAtiOld: Integer;
    procedure SetEmpAtiOld(const pEmpAti: Integer);
    function GetFilAtiOld: Integer;
    procedure SetFilAtiOld(const pFilAti: Integer);
    function GetGerAusOld: string;
    procedure SetGerAusOld(const pGerAus: string);
    function GetCptRelOld: string;
    procedure SetCptRelOld(const pCptRel: string);
    function GetFpgObrOld: string;
    procedure SetFpgObrOld(const pFpgObr: string);
    function GetPstAtiOld: Integer;
    procedure SetPstAtiOld(const pPstAti: Integer);
    function GetVenTbpOld: string;
    procedure SetVenTbpOld(const pVenTbp: string);
    function GetVenNspOld: string;
    procedure SetVenNspOld(const pVenNsp: string);
    function GetVenParOld: string;
    procedure SetVenParOld(const pVenPar: string);
    function GetVenPapOld: string;
    procedure SetVenPapOld(const pVenPap: string);
    function GetVenPdsOld: string;
    procedure SetVenPdsOld(const pVenPds: string);
    function GetVenPipOld: string;
    procedure SetVenPipOld(const pVenPip: string);
    function GetVenPicOld: string;
    procedure SetVenPicOld(const pVenPic: string);
    function GetVenPcoOld: string;
    procedure SetVenPcoOld(const pVenPco: string);
    function GetVenPisOld: string;
    procedure SetVenPisOld(const pVenPis: string);
    function GetVenPirOld: string;
    procedure SetVenPirOld(const pVenPir: string);
    function GetVenPinOld: string;
    procedure SetVenPinOld(const pVenPin: string);
    function GetVenPfuOld: string;
    procedure SetVenPfuOld(const pVenPfu: string);
    function GetVenAunOld: string;
    procedure SetVenAunOld(const pVenAun: string);
    function GetVenAtpOld: string;
    procedure SetVenAtpOld(const pVenAtp: string);
    function GetVenAclOld: string;
    procedure SetVenAclOld(const pVenAcl: string);
    function GetVenAreOld: string;
    procedure SetVenAreOld(const pVenAre: string);
    function GetVenAspOld: string;
    procedure SetVenAspOld(const pVenAsp: string);
    function GetVenLpdOld: string;
    procedure SetVenLpdOld(const pVenLpd: string);
    function GetVenAcvOld: string;
    procedure SetVenAcvOld(const pVenAcv: string);
    function GetVenAnsOld: string;
    procedure SetVenAnsOld(const pVenAns: string);
    function GetVenLnsOld: string;
    procedure SetVenLnsOld(const pVenLns: string);
    function GetVenAsrOld: string;
    procedure SetVenAsrOld(const pVenAsr: string);
    function GetVenRatOld: string;
    procedure SetVenRatOld(const pVenRat: string);
    function GetVenPaeOld: string;
    procedure SetVenPaeOld(const pVenPae: string);
    function GetVenAdgOld: string;
    procedure SetVenAdgOld(const pVenAdg: string);
    function GetVenApiOld: string;
    procedure SetVenApiOld(const pVenApi: string);
    function GetEstAesOld: string;
    procedure SetEstAesOld(const pEstAes: string);
    function GetEstRatOld: string;
    procedure SetEstRatOld(const pEstRat: string);
    function GetEstPlpOld: string;
    procedure SetEstPlpOld(const pEstPlp: string);
    function GetRecPgrOld: string;
    procedure SetRecPgrOld(const pRecPgr: string);
    function GetRecAvrOld: string;
    procedure SetRecAvrOld(const pRecAvr: string);
    function GetRecAvlOld: string;
    procedure SetRecAvlOld(const pRecAvl: string);
    function GetRecRatOld: string;
    procedure SetRecRatOld(const pRecRat: string);
    function GetCprMacOld: Double;
    procedure SetCprMacOld(const pCprMac: Double);
    function GetCprMocOld: Double;
    procedure SetCprMocOld(const pCprMoc: Double);
    function GetCprPapOld: string;
    procedure SetCprPapOld(const pCprPap: string);
    function GetCprPdsOld: string;
    procedure SetCprPdsOld(const pCprPds: string);
    function GetCprPipOld: string;
    procedure SetCprPipOld(const pCprPip: string);
    function GetCprPicOld: string;
    procedure SetCprPicOld(const pCprPic: string);
    function GetCprPisOld: string;
    procedure SetCprPisOld(const pCprPis: string);
    function GetCprPirOld: string;
    procedure SetCprPirOld(const pCprPir: string);
    function GetCprPinOld: string;
    procedure SetCprPinOld(const pCprPin: string);
    function GetCprPfuOld: string;
    procedure SetCprPfuOld(const pCprPfu: string);
    function GetCprVnoOld: Double;
    procedure SetCprVnoOld(const pCprVno: Double);
    function GetCprQnoOld: Double;
    procedure SetCprQnoOld(const pCprQno: Double);
    function GetCprVdnOld: Double;
    procedure SetCprVdnOld(const pCprVdn: Double);
    function GetCprPdnOld: Double;
    procedure SetCprPdnOld(const pCprPdn: Double);
    function GetCprApdOld: string;
    procedure SetCprApdOld(const pCprApd: string);
    function GetCprAfoOld: string;
    procedure SetCprAfoOld(const pCprAfo: string);
    function GetCprAocOld: string;
    procedure SetCprAocOld(const pCprAoc: string);
    function GetCprAccOld: string;
    procedure SetCprAccOld(const pCprAcc: string);
    function GetCprAneOld: string;
    procedure SetCprAneOld(const pCprAne: string);
    function GetCprRatOld: string;
    procedure SetCprRatOld(const pCprRat: string);
    function GetCprAdgOld: string;
    procedure SetCprAdgOld(const pCprAdg: string);
    function GetCprAcfOld: string;
    procedure SetCprAcfOld(const pCprAcf: string);
    function GetCprAtxOld: string;
    procedure SetCprAtxOld(const pCprAtx: string);
    function GetCprAhfOld: string;
    procedure SetCprAhfOld(const pCprAhf: string);
    function GetPagMaxOld: Double;
    procedure SetPagMaxOld(const pPagMax: Double);
    function GetPagPgrOld: string;
    procedure SetPagPgrOld(const pPagPgr: string);
    function GetPagAvpOld: string;
    procedure SetPagAvpOld(const pPagAvp: string);
    function GetPagAvlOld: string;
    procedure SetPagAvlOld(const pPagAvl: string);
    function GetPagEevOld: string;
    procedure SetPagEevOld(const pPagEev: string);
    function GetPagRatOld: string;
    procedure SetPagRatOld(const pPagRat: string);
    function GetCxbDcpOld: Integer;
    procedure SetCxbDcpOld(const pCxbDcp: Integer);
    function GetCxbApmOld: string;
    procedure SetCxbApmOld(const pCxbApm: string);
    function GetCxbRatOld: string;
    procedure SetCxbRatOld(const pCxbRat: string);
    function GetCtbDacOld: string;
    procedure SetCtbDacOld(const pCtbDac: string);
    function GetCtbAltOld: string;
    procedure SetCtbAltOld(const pCtbAlt: string);
    function GetCtbCltOld: string;
    procedure SetCtbCltOld(const pCtbClt: string);
    function GetCtbAlcOld: string;
    procedure SetCtbAlcOld(const pCtbAlc: string);
    function GetCtbClcOld: string;
    procedure SetCtbClcOld(const pCtbClc: string);
    function GetCtbArtOld: string;
    procedure SetCtbArtOld(const pCtbArt: string);
    function GetCtbCrtOld: string;
    procedure SetCtbCrtOld(const pCtbCrt: string);
    function GetCtbAorOld: string;
    procedure SetCtbAorOld(const pCtbAor: string);
    function GetCtbCorOld: string;
    procedure SetCtbCorOld(const pCtbCor: string);
    function GetCtbActOld: string;
    procedure SetCtbActOld(const pCtbAct: string);
    function GetCtbAhpOld: string;
    procedure SetCtbAhpOld(const pCtbAhp: string);
    function GetCtbAcfOld: string;
    procedure SetCtbAcfOld(const pCtbAcf: string);
    function GetCtbLflOld: string;
    procedure SetCtbLflOld(const pCtbLfl: string);
    function GetCtbZerOld: string;
    procedure SetCtbZerOld(const pCtbZer: string);
    function GetPrdDpaOld: Integer;
    procedure SetPrdDpaOld(const pPrdDpa: Integer);
    function GetPrdDppOld: Integer;
    procedure SetPrdDppOld(const pPrdDpp: Integer);
    function GetSitUsuOld: string;
    procedure SetSitUsuOld(const pSitUsu: string);
    function GetCodMotOld: Integer;
    procedure SetCodMotOld(const pCodMot: Integer);
    function GetObsMotOld: string;
    procedure SetObsMotOld(const pObsMot: string);
    function GetUsuMotOld: Integer;
    procedure SetUsuMotOld(const pUsuMot: Integer);
    function GetDatMotOld: TDate;
    procedure SetDatMotOld(const pDatMot: TDate);
    function GetHorMotOld: Integer;
    procedure SetHorMotOld(const pHorMot: Integer);
    function GetUsuGerOld: Integer;
    procedure SetUsuGerOld(const pUsuGer: Integer);
    function GetDatGerOld: TDate;
    procedure SetDatGerOld(const pDatGer: TDate);
    function GetHorGerOld: Integer;
    procedure SetHorGerOld(const pHorGer: Integer);
    function GetCodCliOld: Integer;
    procedure SetCodCliOld(const pCodCli: Integer);
    function GetCodForOld: Integer;
    procedure SetCodForOld(const pCodFor: Integer);
    function GetCodRepOld: Integer;
    procedure SetCodRepOld(const pCodRep: Integer);
    function GetCodTraOld: Integer;
    procedure SetCodTraOld(const pCodTra: Integer);
    function GetCodPorOld: string;
    procedure SetCodPorOld(const pCodPor: string);
    function GetVenFqpOld: string;
    procedure SetVenFqpOld(const pVenFqp: string);
    function GetCprPqtOld: string;
    procedure SetCprPqtOld(const pCprPqt: string);
    function GetPorObrOld: string;
    procedure SetPorObrOld(const pPorObr: string);
    function GetVenLpvOld: string;
    procedure SetVenLpvOld(const pVenLpv: string);
    function GetVenLpfOld: string;
    procedure SetVenLpfOld(const pVenLpf: string);
    function GetVenLpcOld: string;
    procedure SetVenLpcOld(const pVenLpc: string);
    function GetVenLppOld: string;
    procedure SetVenLppOld(const pVenLpp: string);
    function GetCprApiOld: string;
    procedure SetCprApiOld(const pCprApi: string);
    function GetEstGsaOld: string;
    procedure SetEstGsaOld(const pEstGsa: string);
    function GetEstAdrOld: string;
    procedure SetEstAdrOld(const pEstAdr: string);
    function GetEstAgcOld: string;
    procedure SetEstAgcOld(const pEstAgc: string);
    function GetVenLpaOld: string;
    procedure SetVenLpaOld(const pVenLpa: string);
    function GetPrjLfdOld: string;
    procedure SetPrjLfdOld(const pPrjLfd: string);
    function GetDisRraOld: string;
    procedure SetDisRraOld(const pDisRra: string);
    function GetDisInrOld: string;
    procedure SetDisInrOld(const pDisInr: string);
    function GetDisEnrOld: string;
    procedure SetDisEnrOld(const pDisEnr: string);
    function GetCprFpoOld: string;
    procedure SetCprFpoOld(const pCprFpo: string);
    function GetRecArfOld: string;
    procedure SetRecArfOld(const pRecArf: string);
    function GetPagArfOld: string;
    procedure SetPagArfOld(const pPagArf: string);
    function GetCapArfOld: string;
    procedure SetCapArfOld(const pCapArf: string);
    function GetCxbArfOld: string;
    procedure SetCxbArfOld(const pCxbArf: string);
    function GetCtbEltOld: string;
    procedure SetCtbEltOld(const pCtbElt: string);
    function GetCtbElcOld: string;
    procedure SetCtbElcOld(const pCtbElc: string);
    function GetAprDftOld: string;
    procedure SetAprDftOld(const pAprDft: string);
    function GetAprDocOld: string;
    procedure SetAprDocOld(const pAprDoc: string);
    function GetPrjNusOld: string;
    procedure SetPrjNusOld(const pPrjNus: string);
    function GetCprPecOld: string;
    procedure SetCprPecOld(const pCprPec: string);
    function GetCprFocOld: Integer;
    procedure SetCprFocOld(const pCprFoc: Integer);
    function GetCprFcpOld: Integer;
    procedure SetCprFcpOld(const pCprFcp: Integer);
    function GetVenPofOld: string;
    procedure SetVenPofOld(const pVenPof: string);
    function GetCprPscOld: string;
    procedure SetCprPscOld(const pCprPsc: string);
    function GetMltLgnOld: string;
    procedure SetMltLgnOld(const pMltLgn: string);
    function GetNomSerOld: string;
    procedure SetNomSerOld(const pNomSer: string);
    function GetPorSerOld: Integer;
    procedure SetPorSerOld(const pPorSer: Integer);
    function GetAutUsuOld: string;
    procedure SetAutUsuOld(const pAutUsu: string);
    function GetUsuAutOld: string;
    procedure SetUsuAutOld(const pUsuAut: string);
    function GetSenAutOld: string;
    procedure SetSenAutOld(const pSenAut: string);
    function GetAltRemOld: string;
    procedure SetAltRemOld(const pAltRem: string);
    function GetVenPtnOld: string;
    procedure SetVenPtnOld(const pVenPtn: string);
    function GetVenPcaOld: string;
    procedure SetVenPcaOld(const pVenPca: string);
    function GetVenLpiOld: string;
    procedure SetVenLpiOld(const pVenLpi: string);
    function GetVenPfpOld: string;
    procedure SetVenPfpOld(const pVenPfp: string);
    function GetPatDflOld: string;
    procedure SetPatDflOld(const pPatDfl: string);
    function GetVenPcdOld: string;
    procedure SetVenPcdOld(const pVenPcd: string);
    function GetMpcActOld: string;
    procedure SetMpcActOld(const pMpcAct: string);
    function GetCtbLtcOld: string;
    procedure SetCtbLtcOld(const pCtbLtc: string);
    function GetPatTdeOld: string;
    procedure SetPatTdeOld(const pPatTde: string);
    function GetVenScvOld: string;
    procedure SetVenScvOld(const pVenScv: string);
    function GetConQarOld: string;
    procedure SetConQarOld(const pConQar: string);
    function GetUsuCfeOld: string;
    procedure SetUsuCfeOld(const pUsuCfe: string);
    function GetCprSccOld: string;
    procedure SetCprSccOld(const pCprScc: string);
    function GetVenAtvOld: string;
    procedure SetVenAtvOld(const pVenAtv: string);
    function GetVenAtfOld: string;
    procedure SetVenAtfOld(const pVenAtf: string);
    function GetImpRatOld: string;
    procedure SetImpRatOld(const pImpRat: string);
    function GetDirNelOld: string;
    procedure SetDirNelOld(const pDirNel: string);
    function GetVenCnsOld: string;
    procedure SetVenCnsOld(const pVenCns: string);
    function GetMpcAcfOld: string;
    procedure SetMpcAcfOld(const pMpcAcf: string);
    function GetMpcAccOld: string;
    procedure SetMpcAccOld(const pMpcAcc: string);
    function GetMpcAcaOld: string;
    procedure SetMpcAcaOld(const pMpcAca: string);
    function GetDatSinOld: TDate;
    procedure SetDatSinOld(const pDatSin: TDate);
    function GetHorSinOld: Integer;
    procedure SetHorSinOld(const pHorSin: Integer);
    function GetVenAirOld: string;
    procedure SetVenAirOld(const pVenAir: string);
    function GetAprSctOld: string;
    procedure SetAprSctOld(const pAprSct: string);
    function GetPrjTsoOld: string;
    procedure SetPrjTsoOld(const pPrjTso: string);
    function GetCpoCpfOld: string;
    procedure SetCpoCpfOld(const pCpoCpf: string);
    function GetCprRcaOld: string;
    procedure SetCprRcaOld(const pCprRca: string);
    function GetCleQtdOld: string;
    procedure SetCleQtdOld(const pCleQtd: string);
    function GetClePrcOld: string;
    procedure SetClePrcOld(const pClePrc: string);
    function GetConRecOld: string;
    procedure SetConRecOld(const pConRec: string);
    function GetVenSppOld: string;
    procedure SetVenSppOld(const pVenSpp: string);
    function GetPrdEpbOld: string;
    procedure SetPrdEpbOld(const pPrdEpb: string);
    function GetVenAseOld: string;
    procedure SetVenAseOld(const pVenAse: string);
    function GetVenIfcOld: string;
    procedure SetVenIfcOld(const pVenIfc: string);
    function GetDirCteOld: string;
    procedure SetDirCteOld(const pDirCte: string);
    function GetCprIgcOld: string;
    procedure SetCprIgcOld(const pCprIgc: string);
    function GetCprAscOld: string;
    procedure SetCprAscOld(const pCprAsc: string);
    function GetCprAqcOld: string;
    procedure SetCprAqcOld(const pCprAqc: string);
    function GetTurTrbOld: Integer;
    procedure SetTurTrbOld(const pTurTrb: Integer);
    function GetCodCelOld: string;
    procedure SetCodCelOld(const pCodCel: string);
    function GetPrdOpdOld: string;
    procedure SetPrdOpdOld(const pPrdOpd: string);
    function GetOpdOrpOld: string;
    procedure SetOpdOrpOld(const pOpdOrp: string);
    function GetVenCstOld: string;
    procedure SetVenCstOld(const pVenCst: string);
    function GetCprCstOld: string;
    procedure SetCprCstOld(const pCprCst: string);
    function GetDirNesOld: string;
    procedure SetDirNesOld(const pDirNes: string);
    function GetCanNfeOld: string;
    procedure SetCanNfeOld(const pCanNfe: string);
    function GetVenSdgOld: string;
    procedure SetVenSdgOld(const pVenSdg: string);
    function GetDatAfiOld: string;
    procedure SetDatAfiOld(const pDatAfi: string);
    function GetIndAstOld: string;
    procedure SetIndAstOld(const pIndAst: string);
    function GetAltInpOld: string;
    procedure SetAltInpOld(const pAltInp: string);
    function GetCxbPgpOld: string;
    procedure SetCxbPgpOld(const pCxbPgp: string);
    function GetAstOrpOld: string;
    procedure SetAstOrpOld(const pAstOrp: string);
    function GetAstSorOld: string;
    procedure SetAstSorOld(const pAstSor: string);
    function GetAstNfvOld: string;
    procedure SetAstNfvOld(const pAstNfv: string);
    function GetAstPedOld: string;
    procedure SetAstPedOld(const pAstPed: string);
    function GetRecAcdOld: string;
    procedure SetRecAcdOld(const pRecAcd: string);
    function GetPagAcdOld: string;
    procedure SetPagAcdOld(const pPagAcd: string);
    function GetPagDetOld: Integer;
    procedure SetPagDetOld(const pPagDet: Integer);
    function GetMaxLgnOld: Integer;
    procedure SetMaxLgnOld(const pMaxLgn: Integer);
    function GetParEspOld: string;
    procedure SetParEspOld(const pParEsp: string);
    function GetVenCnpOld: string;
    procedure SetVenCnpOld(const pVenCnp: string);
    function GetIndMreOld: string;
    procedure SetIndMreOld(const pIndMre: string);
    function GetAstPsiOld: string;
    procedure SetAstPsiOld(const pAstPsi: string);
    function GetAstEtoOld: string;
    procedure SetAstEtoOld(const pAstEto: string);
    function GetExaOcpOld: string;
    procedure SetExaOcpOld(const pExaOcp: string);
    function GetVenAvaOld: string;
    procedure SetVenAvaOld(const pVenAva: string);
    function GetManAgeOld: string;
    procedure SetManAgeOld(const pManAge: string);
    function GetConAgeOld: string;
    procedure SetConAgeOld(const pConAge: string);
    function GetPatEmpOld: string;
    procedure SetPatEmpOld(const pPatEmp: string);
    function GetAltMonOld: string;
    procedure SetAltMonOld(const pAltMon: string);
    function GetAltEbqOld: string;
    procedure SetAltEbqOld(const pAltEbq: string);
    function GetAudPfaOld: string;
    procedure SetAudPfaOld(const pAudPfa: string);
    function GetAltNnuOld: string;
    procedure SetAltNnuOld(const pAltNnu: string);
    function GetSenAprOld: string;
    procedure SetSenAprOld(const pSenApr: string);
    function GetCobPdjOld: string;
    procedure SetCobPdjOld(const pCobPdj: string);
    function GetCobAtcOld: string;
    procedure SetCobAtcOld(const pCobAtc: string);
    function GetAcrCcmOld: string;
    procedure SetAcrCcmOld(const pAcrCcm: string);
    function GetPerExsOld: string;
    procedure SetPerExsOld(const pPerExs: string);
    function GetPerFpcOld: Integer;
    procedure SetPerFpcOld(const pPerFpc: Integer);
    function GetUSU_CodFilOld: Integer;
    procedure SetUSU_CodFilOld(const pUSU_CodFil: Integer);
    function GetUSU_MaiFOCOld: string;
    procedure SetUSU_MaiFOCOld(const pUSU_MaiFOC: string);
    function GetUSU_NFOCEFOld: string;
    procedure SetUSU_NFOCEFOld(const pUSU_NFOCEF: string);
    function GetUSU_NFOCNOOld: string;
    procedure SetUSU_NFOCNOOld(const pUSU_NFOCNO: string);
    function GetUSU_ClaUsuOld: Integer;
    procedure SetUSU_ClaUsuOld(const pUSU_ClaUsu: Integer);
    function GetUSU_NFOCUCOld: string;
    procedure SetUSU_NFOCUCOld(const pUSU_NFOCUC: string);
    function GetUSU_EmaAprOld: string;
    procedure SetUSU_EmaAprOld(const pUSU_EmaApr: string);
    function GetUSU_FecNFRemOld: string;
    procedure SetUSU_FecNFRemOld(const pUSU_FecNFRem: string);
    function GetUSU_AvsCnfDspOld: string;
    procedure SetUSU_AvsCnfDspOld(const pUSU_AvsCnfDsp: string);
    function GetUSU_AbrLibVenOld: string;
    procedure SetUSU_AbrLibVenOld(const pUSU_AbrLibVen: string);
    function GetUSU_AviDiaOld: Integer;
    procedure SetUSU_AviDiaOld(const pUSU_AviDia: Integer);
  protected
    procedure Registros_OLD(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property CodEmp: Integer read GetCodEmp write SetCodEmp;
    property CodUsu: Integer read GetCodUsu write SetCodUsu;
    property NumEmp: Integer read GetNumEmp write SetNumEmp;
    property TipCol: Integer read GetTipCol write SetTipCol;
    property NumCad: Integer read GetNumCad write SetNumCad;
    property SupIme: Integer read GetSupIme write SetSupIme;
    property CodCcu: string read GetCodCcu write SetCodCcu;
    property IntNet: string read GetIntNet write SetIntNet;
    property EmpAti: Integer read GetEmpAti write SetEmpAti;
    property FilAti: Integer read GetFilAti write SetFilAti;
    property GerAus: string read GetGerAus write SetGerAus;
    property CptRel: string read GetCptRel write SetCptRel;
    property FpgObr: string read GetFpgObr write SetFpgObr;
    property PstAti: Integer read GetPstAti write SetPstAti;
    property VenTbp: string read GetVenTbp write SetVenTbp;
    property VenNsp: string read GetVenNsp write SetVenNsp;
    property VenPar: string read GetVenPar write SetVenPar;
    property VenPap: string read GetVenPap write SetVenPap;
    property VenPds: string read GetVenPds write SetVenPds;
    property VenPip: string read GetVenPip write SetVenPip;
    property VenPic: string read GetVenPic write SetVenPic;
    property VenPco: string read GetVenPco write SetVenPco;
    property VenPis: string read GetVenPis write SetVenPis;
    property VenPir: string read GetVenPir write SetVenPir;
    property VenPin: string read GetVenPin write SetVenPin;
    property VenPfu: string read GetVenPfu write SetVenPfu;
    property VenAun: string read GetVenAun write SetVenAun;
    property VenAtp: string read GetVenAtp write SetVenAtp;
    property VenAcl: string read GetVenAcl write SetVenAcl;
    property VenAre: string read GetVenAre write SetVenAre;
    property VenAsp: string read GetVenAsp write SetVenAsp;
    property VenLpd: string read GetVenLpd write SetVenLpd;
    property VenAcv: string read GetVenAcv write SetVenAcv;
    property VenAns: string read GetVenAns write SetVenAns;
    property VenLns: string read GetVenLns write SetVenLns;
    property VenAsr: string read GetVenAsr write SetVenAsr;
    property VenRat: string read GetVenRat write SetVenRat;
    property VenPae: string read GetVenPae write SetVenPae;
    property VenAdg: string read GetVenAdg write SetVenAdg;
    property VenApi: string read GetVenApi write SetVenApi;
    property EstAes: string read GetEstAes write SetEstAes;
    property EstRat: string read GetEstRat write SetEstRat;
    property EstPlp: string read GetEstPlp write SetEstPlp;
    property RecPgr: string read GetRecPgr write SetRecPgr;
    property RecAvr: string read GetRecAvr write SetRecAvr;
    property RecAvl: string read GetRecAvl write SetRecAvl;
    property RecRat: string read GetRecRat write SetRecRat;
    property CprMac: Double read GetCprMac write SetCprMac;
    property CprMoc: Double read GetCprMoc write SetCprMoc;
    property CprPap: string read GetCprPap write SetCprPap;
    property CprPds: string read GetCprPds write SetCprPds;
    property CprPip: string read GetCprPip write SetCprPip;
    property CprPic: string read GetCprPic write SetCprPic;
    property CprPis: string read GetCprPis write SetCprPis;
    property CprPir: string read GetCprPir write SetCprPir;
    property CprPin: string read GetCprPin write SetCprPin;
    property CprPfu: string read GetCprPfu write SetCprPfu;
    property CprVno: Double read GetCprVno write SetCprVno;
    property CprQno: Double read GetCprQno write SetCprQno;
    property CprVdn: Double read GetCprVdn write SetCprVdn;
    property CprPdn: Double read GetCprPdn write SetCprPdn;
    property CprApd: string read GetCprApd write SetCprApd;
    property CprAfo: string read GetCprAfo write SetCprAfo;
    property CprAoc: string read GetCprAoc write SetCprAoc;
    property CprAcc: string read GetCprAcc write SetCprAcc;
    property CprAne: string read GetCprAne write SetCprAne;
    property CprRat: string read GetCprRat write SetCprRat;
    property CprAdg: string read GetCprAdg write SetCprAdg;
    property CprAcf: string read GetCprAcf write SetCprAcf;
    property CprAtx: string read GetCprAtx write SetCprAtx;
    property CprAhf: string read GetCprAhf write SetCprAhf;
    property PagMax: Double read GetPagMax write SetPagMax;
    property PagPgr: string read GetPagPgr write SetPagPgr;
    property PagAvp: string read GetPagAvp write SetPagAvp;
    property PagAvl: string read GetPagAvl write SetPagAvl;
    property PagEev: string read GetPagEev write SetPagEev;
    property PagRat: string read GetPagRat write SetPagRat;
    property CxbDcp: Integer read GetCxbDcp write SetCxbDcp;
    property CxbApm: string read GetCxbApm write SetCxbApm;
    property CxbRat: string read GetCxbRat write SetCxbRat;
    property CtbDac: string read GetCtbDac write SetCtbDac;
    property CtbAlt: string read GetCtbAlt write SetCtbAlt;
    property CtbClt: string read GetCtbClt write SetCtbClt;
    property CtbAlc: string read GetCtbAlc write SetCtbAlc;
    property CtbClc: string read GetCtbClc write SetCtbClc;
    property CtbArt: string read GetCtbArt write SetCtbArt;
    property CtbCrt: string read GetCtbCrt write SetCtbCrt;
    property CtbAor: string read GetCtbAor write SetCtbAor;
    property CtbCor: string read GetCtbCor write SetCtbCor;
    property CtbAct: string read GetCtbAct write SetCtbAct;
    property CtbAhp: string read GetCtbAhp write SetCtbAhp;
    property CtbAcf: string read GetCtbAcf write SetCtbAcf;
    property CtbLfl: string read GetCtbLfl write SetCtbLfl;
    property CtbZer: string read GetCtbZer write SetCtbZer;
    property PrdDpa: Integer read GetPrdDpa write SetPrdDpa;
    property PrdDpp: Integer read GetPrdDpp write SetPrdDpp;
    property SitUsu: string read GetSitUsu write SetSitUsu;
    property CodMot: Integer read GetCodMot write SetCodMot;
    property ObsMot: string read GetObsMot write SetObsMot;
    property UsuMot: Integer read GetUsuMot write SetUsuMot;
    property DatMot: TDate read GetDatMot write SetDatMot;
    property HorMot: Integer read GetHorMot write SetHorMot;
    property UsuGer: Integer read GetUsuGer write SetUsuGer;
    property DatGer: TDate read GetDatGer write SetDatGer;
    property HorGer: Integer read GetHorGer write SetHorGer;
    property CodCli: Integer read GetCodCli write SetCodCli;
    property CodFor: Integer read GetCodFor write SetCodFor;
    property CodRep: Integer read GetCodRep write SetCodRep;
    property CodTra: Integer read GetCodTra write SetCodTra;
    property CodPor: string read GetCodPor write SetCodPor;
    property VenFqp: string read GetVenFqp write SetVenFqp;
    property CprPqt: string read GetCprPqt write SetCprPqt;
    property PorObr: string read GetPorObr write SetPorObr;
    property VenLpv: string read GetVenLpv write SetVenLpv;
    property VenLpf: string read GetVenLpf write SetVenLpf;
    property VenLpc: string read GetVenLpc write SetVenLpc;
    property VenLpp: string read GetVenLpp write SetVenLpp;
    property CprApi: string read GetCprApi write SetCprApi;
    property EstGsa: string read GetEstGsa write SetEstGsa;
    property EstAdr: string read GetEstAdr write SetEstAdr;
    property EstAgc: string read GetEstAgc write SetEstAgc;
    property VenLpa: string read GetVenLpa write SetVenLpa;
    property PrjLfd: string read GetPrjLfd write SetPrjLfd;
    property DisRra: string read GetDisRra write SetDisRra;
    property DisInr: string read GetDisInr write SetDisInr;
    property DisEnr: string read GetDisEnr write SetDisEnr;
    property CprFpo: string read GetCprFpo write SetCprFpo;
    property RecArf: string read GetRecArf write SetRecArf;
    property PagArf: string read GetPagArf write SetPagArf;
    property CapArf: string read GetCapArf write SetCapArf;
    property CxbArf: string read GetCxbArf write SetCxbArf;
    property CtbElt: string read GetCtbElt write SetCtbElt;
    property CtbElc: string read GetCtbElc write SetCtbElc;
    property AprDft: string read GetAprDft write SetAprDft;
    property AprDoc: string read GetAprDoc write SetAprDoc;
    property PrjNus: string read GetPrjNus write SetPrjNus;
    property CprPec: string read GetCprPec write SetCprPec;
    property CprFoc: Integer read GetCprFoc write SetCprFoc;
    property CprFcp: Integer read GetCprFcp write SetCprFcp;
    property VenPof: string read GetVenPof write SetVenPof;
    property CprPsc: string read GetCprPsc write SetCprPsc;
    property MltLgn: string read GetMltLgn write SetMltLgn;
    property NomSer: string read GetNomSer write SetNomSer;
    property PorSer: Integer read GetPorSer write SetPorSer;
    property AutUsu: string read GetAutUsu write SetAutUsu;
    property UsuAut: string read GetUsuAut write SetUsuAut;
    property SenAut: string read GetSenAut write SetSenAut;
    property AltRem: string read GetAltRem write SetAltRem;
    property VenPtn: string read GetVenPtn write SetVenPtn;
    property VenPca: string read GetVenPca write SetVenPca;
    property VenLpi: string read GetVenLpi write SetVenLpi;
    property VenPfp: string read GetVenPfp write SetVenPfp;
    property PatDfl: string read GetPatDfl write SetPatDfl;
    property VenPcd: string read GetVenPcd write SetVenPcd;
    property MpcAct: string read GetMpcAct write SetMpcAct;
    property CtbLtc: string read GetCtbLtc write SetCtbLtc;
    property PatTde: string read GetPatTde write SetPatTde;
    property VenScv: string read GetVenScv write SetVenScv;
    property ConQar: string read GetConQar write SetConQar;
    property UsuCfe: string read GetUsuCfe write SetUsuCfe;
    property CprScc: string read GetCprScc write SetCprScc;
    property VenAtv: string read GetVenAtv write SetVenAtv;
    property VenAtf: string read GetVenAtf write SetVenAtf;
    property ImpRat: string read GetImpRat write SetImpRat;
    property DirNel: string read GetDirNel write SetDirNel;
    property VenCns: string read GetVenCns write SetVenCns;
    property MpcAcf: string read GetMpcAcf write SetMpcAcf;
    property MpcAcc: string read GetMpcAcc write SetMpcAcc;
    property MpcAca: string read GetMpcAca write SetMpcAca;
    property DatSin: TDate read GetDatSin write SetDatSin;
    property HorSin: Integer read GetHorSin write SetHorSin;
    property VenAir: string read GetVenAir write SetVenAir;
    property AprSct: string read GetAprSct write SetAprSct;
    property PrjTso: string read GetPrjTso write SetPrjTso;
    property CpoCpf: string read GetCpoCpf write SetCpoCpf;
    property CprRca: string read GetCprRca write SetCprRca;
    property CleQtd: string read GetCleQtd write SetCleQtd;
    property ClePrc: string read GetClePrc write SetClePrc;
    property ConRec: string read GetConRec write SetConRec;
    property VenSpp: string read GetVenSpp write SetVenSpp;
    property PrdEpb: string read GetPrdEpb write SetPrdEpb;
    property VenAse: string read GetVenAse write SetVenAse;
    property VenIfc: string read GetVenIfc write SetVenIfc;
    property DirCte: string read GetDirCte write SetDirCte;
    property CprIgc: string read GetCprIgc write SetCprIgc;
    property CprAsc: string read GetCprAsc write SetCprAsc;
    property CprAqc: string read GetCprAqc write SetCprAqc;
    property TurTrb: Integer read GetTurTrb write SetTurTrb;
    property CodCel: string read GetCodCel write SetCodCel;
    property PrdOpd: string read GetPrdOpd write SetPrdOpd;
    property OpdOrp: string read GetOpdOrp write SetOpdOrp;
    property VenCst: string read GetVenCst write SetVenCst;
    property CprCst: string read GetCprCst write SetCprCst;
    property DirNes: string read GetDirNes write SetDirNes;
    property CanNfe: string read GetCanNfe write SetCanNfe;
    property VenSdg: string read GetVenSdg write SetVenSdg;
    property DatAfi: string read GetDatAfi write SetDatAfi;
    property IndAst: string read GetIndAst write SetIndAst;
    property AltInp: string read GetAltInp write SetAltInp;
    property CxbPgp: string read GetCxbPgp write SetCxbPgp;
    property AstOrp: string read GetAstOrp write SetAstOrp;
    property AstSor: string read GetAstSor write SetAstSor;
    property AstNfv: string read GetAstNfv write SetAstNfv;
    property AstPed: string read GetAstPed write SetAstPed;
    property RecAcd: string read GetRecAcd write SetRecAcd;
    property PagAcd: string read GetPagAcd write SetPagAcd;
    property PagDet: Integer read GetPagDet write SetPagDet;
    property MaxLgn: Integer read GetMaxLgn write SetMaxLgn;
    property ParEsp: string read GetParEsp write SetParEsp;
    property VenCnp: string read GetVenCnp write SetVenCnp;
    property IndMre: string read GetIndMre write SetIndMre;
    property AstPsi: string read GetAstPsi write SetAstPsi;
    property AstEto: string read GetAstEto write SetAstEto;
    property ExaOcp: string read GetExaOcp write SetExaOcp;
    property VenAva: string read GetVenAva write SetVenAva;
    property ManAge: string read GetManAge write SetManAge;
    property ConAge: string read GetConAge write SetConAge;
    property PatEmp: string read GetPatEmp write SetPatEmp;
    property AltMon: string read GetAltMon write SetAltMon;
    property AltEbq: string read GetAltEbq write SetAltEbq;
    property AudPfa: string read GetAudPfa write SetAudPfa;
    property AltNnu: string read GetAltNnu write SetAltNnu;
    property SenApr: string read GetSenApr write SetSenApr;
    property CobPdj: string read GetCobPdj write SetCobPdj;
    property CobAtc: string read GetCobAtc write SetCobAtc;
    property AcrCcm: string read GetAcrCcm write SetAcrCcm;
    property PerExs: string read GetPerExs write SetPerExs;
    property PerFpc: Integer read GetPerFpc write SetPerFpc;
    property USU_CodFil: Integer read GetUSU_CodFil write SetUSU_CodFil;
    property USU_MaiFOC: string read GetUSU_MaiFOC write SetUSU_MaiFOC;
    property USU_NFOCEF: string read GetUSU_NFOCEF write SetUSU_NFOCEF;
    property USU_NFOCNO: string read GetUSU_NFOCNO write SetUSU_NFOCNO;
    property USU_ClaUsu: Integer read GetUSU_ClaUsu write SetUSU_ClaUsu;
    property USU_NFOCUC: string read GetUSU_NFOCUC write SetUSU_NFOCUC;
    property USU_EmaApr: string read GetUSU_EmaApr write SetUSU_EmaApr;
    property USU_FecNFRem: string read GetUSU_FecNFRem write SetUSU_FecNFRem;
    property USU_AvsCnfDsp: string read GetUSU_AvsCnfDsp write SetUSU_AvsCnfDsp;
    property USU_AbrLibVen: string read GetUSU_AbrLibVen write SetUSU_AbrLibVen;
    property USU_AviDia: Integer read GetUSU_AviDia write SetUSU_AviDia;

    property OLD_CodEmp: Integer read GetCodEmpOLD write SetCodEmpOLD;
    property OLD_CodUsu: Integer read GetCodUsuOLD write SetCodUsuOLD;
    property OLD_NumEmp: Integer read GetNumEmpOLD write SetNumEmpOLD;
    property OLD_TipCol: Integer read GetTipColOLD write SetTipColOLD;
    property OLD_NumCad: Integer read GetNumCadOLD write SetNumCadOLD;
    property OLD_SupIme: Integer read GetSupImeOLD write SetSupImeOLD;
    property OLD_CodCcu: string read GetCodCcuOLD write SetCodCcuOLD;
    property OLD_IntNet: string read GetIntNetOLD write SetIntNetOLD;
    property OLD_EmpAti: Integer read GetEmpAtiOLD write SetEmpAtiOLD;
    property OLD_FilAti: Integer read GetFilAtiOLD write SetFilAtiOLD;
    property OLD_GerAus: string read GetGerAusOLD write SetGerAusOLD;
    property OLD_CptRel: string read GetCptRelOLD write SetCptRelOLD;
    property OLD_FpgObr: string read GetFpgObrOLD write SetFpgObrOLD;
    property OLD_PstAti: Integer read GetPstAtiOLD write SetPstAtiOLD;
    property OLD_VenTbp: string read GetVenTbpOLD write SetVenTbpOLD;
    property OLD_VenNsp: string read GetVenNspOLD write SetVenNspOLD;
    property OLD_VenPar: string read GetVenParOLD write SetVenParOLD;
    property OLD_VenPap: string read GetVenPapOLD write SetVenPapOLD;
    property OLD_VenPds: string read GetVenPdsOLD write SetVenPdsOLD;
    property OLD_VenPip: string read GetVenPipOLD write SetVenPipOLD;
    property OLD_VenPic: string read GetVenPicOLD write SetVenPicOLD;
    property OLD_VenPco: string read GetVenPcoOLD write SetVenPcoOLD;
    property OLD_VenPis: string read GetVenPisOLD write SetVenPisOLD;
    property OLD_VenPir: string read GetVenPirOLD write SetVenPirOLD;
    property OLD_VenPin: string read GetVenPinOLD write SetVenPinOLD;
    property OLD_VenPfu: string read GetVenPfuOLD write SetVenPfuOLD;
    property OLD_VenAun: string read GetVenAunOLD write SetVenAunOLD;
    property OLD_VenAtp: string read GetVenAtpOLD write SetVenAtpOLD;
    property OLD_VenAcl: string read GetVenAclOLD write SetVenAclOLD;
    property OLD_VenAre: string read GetVenAreOLD write SetVenAreOLD;
    property OLD_VenAsp: string read GetVenAspOLD write SetVenAspOLD;
    property OLD_VenLpd: string read GetVenLpdOLD write SetVenLpdOLD;
    property OLD_VenAcv: string read GetVenAcvOLD write SetVenAcvOLD;
    property OLD_VenAns: string read GetVenAnsOLD write SetVenAnsOLD;
    property OLD_VenLns: string read GetVenLnsOLD write SetVenLnsOLD;
    property OLD_VenAsr: string read GetVenAsrOLD write SetVenAsrOLD;
    property OLD_VenRat: string read GetVenRatOLD write SetVenRatOLD;
    property OLD_VenPae: string read GetVenPaeOLD write SetVenPaeOLD;
    property OLD_VenAdg: string read GetVenAdgOLD write SetVenAdgOLD;
    property OLD_VenApi: string read GetVenApiOLD write SetVenApiOLD;
    property OLD_EstAes: string read GetEstAesOLD write SetEstAesOLD;
    property OLD_EstRat: string read GetEstRatOLD write SetEstRatOLD;
    property OLD_EstPlp: string read GetEstPlpOLD write SetEstPlpOLD;
    property OLD_RecPgr: string read GetRecPgrOLD write SetRecPgrOLD;
    property OLD_RecAvr: string read GetRecAvrOLD write SetRecAvrOLD;
    property OLD_RecAvl: string read GetRecAvlOLD write SetRecAvlOLD;
    property OLD_RecRat: string read GetRecRatOLD write SetRecRatOLD;
    property OLD_CprMac: Double read GetCprMacOLD write SetCprMacOLD;
    property OLD_CprMoc: Double read GetCprMocOLD write SetCprMocOLD;
    property OLD_CprPap: string read GetCprPapOLD write SetCprPapOLD;
    property OLD_CprPds: string read GetCprPdsOLD write SetCprPdsOLD;
    property OLD_CprPip: string read GetCprPipOLD write SetCprPipOLD;
    property OLD_CprPic: string read GetCprPicOLD write SetCprPicOLD;
    property OLD_CprPis: string read GetCprPisOLD write SetCprPisOLD;
    property OLD_CprPir: string read GetCprPirOLD write SetCprPirOLD;
    property OLD_CprPin: string read GetCprPinOLD write SetCprPinOLD;
    property OLD_CprPfu: string read GetCprPfuOLD write SetCprPfuOLD;
    property OLD_CprVno: Double read GetCprVnoOLD write SetCprVnoOLD;
    property OLD_CprQno: Double read GetCprQnoOLD write SetCprQnoOLD;
    property OLD_CprVdn: Double read GetCprVdnOLD write SetCprVdnOLD;
    property OLD_CprPdn: Double read GetCprPdnOLD write SetCprPdnOLD;
    property OLD_CprApd: string read GetCprApdOLD write SetCprApdOLD;
    property OLD_CprAfo: string read GetCprAfoOLD write SetCprAfoOLD;
    property OLD_CprAoc: string read GetCprAocOLD write SetCprAocOLD;
    property OLD_CprAcc: string read GetCprAccOLD write SetCprAccOLD;
    property OLD_CprAne: string read GetCprAneOLD write SetCprAneOLD;
    property OLD_CprRat: string read GetCprRatOLD write SetCprRatOLD;
    property OLD_CprAdg: string read GetCprAdgOLD write SetCprAdgOLD;
    property OLD_CprAcf: string read GetCprAcfOLD write SetCprAcfOLD;
    property OLD_CprAtx: string read GetCprAtxOLD write SetCprAtxOLD;
    property OLD_CprAhf: string read GetCprAhfOLD write SetCprAhfOLD;
    property OLD_PagMax: Double read GetPagMaxOLD write SetPagMaxOLD;
    property OLD_PagPgr: string read GetPagPgrOLD write SetPagPgrOLD;
    property OLD_PagAvp: string read GetPagAvpOLD write SetPagAvpOLD;
    property OLD_PagAvl: string read GetPagAvlOLD write SetPagAvlOLD;
    property OLD_PagEev: string read GetPagEevOLD write SetPagEevOLD;
    property OLD_PagRat: string read GetPagRatOLD write SetPagRatOLD;
    property OLD_CxbDcp: Integer read GetCxbDcpOLD write SetCxbDcpOLD;
    property OLD_CxbApm: string read GetCxbApmOLD write SetCxbApmOLD;
    property OLD_CxbRat: string read GetCxbRatOLD write SetCxbRatOLD;
    property OLD_CtbDac: string read GetCtbDacOLD write SetCtbDacOLD;
    property OLD_CtbAlt: string read GetCtbAltOLD write SetCtbAltOLD;
    property OLD_CtbClt: string read GetCtbCltOLD write SetCtbCltOLD;
    property OLD_CtbAlc: string read GetCtbAlcOLD write SetCtbAlcOLD;
    property OLD_CtbClc: string read GetCtbClcOLD write SetCtbClcOLD;
    property OLD_CtbArt: string read GetCtbArtOLD write SetCtbArtOLD;
    property OLD_CtbCrt: string read GetCtbCrtOLD write SetCtbCrtOLD;
    property OLD_CtbAor: string read GetCtbAorOLD write SetCtbAorOLD;
    property OLD_CtbCor: string read GetCtbCorOLD write SetCtbCorOLD;
    property OLD_CtbAct: string read GetCtbActOLD write SetCtbActOLD;
    property OLD_CtbAhp: string read GetCtbAhpOLD write SetCtbAhpOLD;
    property OLD_CtbAcf: string read GetCtbAcfOLD write SetCtbAcfOLD;
    property OLD_CtbLfl: string read GetCtbLflOLD write SetCtbLflOLD;
    property OLD_CtbZer: string read GetCtbZerOLD write SetCtbZerOLD;
    property OLD_PrdDpa: Integer read GetPrdDpaOLD write SetPrdDpaOLD;
    property OLD_PrdDpp: Integer read GetPrdDppOLD write SetPrdDppOLD;
    property OLD_SitUsu: string read GetSitUsuOLD write SetSitUsuOLD;
    property OLD_CodMot: Integer read GetCodMotOLD write SetCodMotOLD;
    property OLD_ObsMot: string read GetObsMotOLD write SetObsMotOLD;
    property OLD_UsuMot: Integer read GetUsuMotOLD write SetUsuMotOLD;
    property OLD_DatMot: TDate read GetDatMotOLD write SetDatMotOLD;
    property OLD_HorMot: Integer read GetHorMotOLD write SetHorMotOLD;
    property OLD_UsuGer: Integer read GetUsuGerOLD write SetUsuGerOLD;
    property OLD_DatGer: TDate read GetDatGerOLD write SetDatGerOLD;
    property OLD_HorGer: Integer read GetHorGerOLD write SetHorGerOLD;
    property OLD_CodCli: Integer read GetCodCliOLD write SetCodCliOLD;
    property OLD_CodFor: Integer read GetCodForOLD write SetCodForOLD;
    property OLD_CodRep: Integer read GetCodRepOLD write SetCodRepOLD;
    property OLD_CodTra: Integer read GetCodTraOLD write SetCodTraOLD;
    property OLD_CodPor: string read GetCodPorOLD write SetCodPorOLD;
    property OLD_VenFqp: string read GetVenFqpOLD write SetVenFqpOLD;
    property OLD_CprPqt: string read GetCprPqtOLD write SetCprPqtOLD;
    property OLD_PorObr: string read GetPorObrOLD write SetPorObrOLD;
    property OLD_VenLpv: string read GetVenLpvOLD write SetVenLpvOLD;
    property OLD_VenLpf: string read GetVenLpfOLD write SetVenLpfOLD;
    property OLD_VenLpc: string read GetVenLpcOLD write SetVenLpcOLD;
    property OLD_VenLpp: string read GetVenLppOLD write SetVenLppOLD;
    property OLD_CprApi: string read GetCprApiOLD write SetCprApiOLD;
    property OLD_EstGsa: string read GetEstGsaOLD write SetEstGsaOLD;
    property OLD_EstAdr: string read GetEstAdrOLD write SetEstAdrOLD;
    property OLD_EstAgc: string read GetEstAgcOLD write SetEstAgcOLD;
    property OLD_VenLpa: string read GetVenLpaOLD write SetVenLpaOLD;
    property OLD_PrjLfd: string read GetPrjLfdOLD write SetPrjLfdOLD;
    property OLD_DisRra: string read GetDisRraOLD write SetDisRraOLD;
    property OLD_DisInr: string read GetDisInrOLD write SetDisInrOLD;
    property OLD_DisEnr: string read GetDisEnrOLD write SetDisEnrOLD;
    property OLD_CprFpo: string read GetCprFpoOLD write SetCprFpoOLD;
    property OLD_RecArf: string read GetRecArfOLD write SetRecArfOLD;
    property OLD_PagArf: string read GetPagArfOLD write SetPagArfOLD;
    property OLD_CapArf: string read GetCapArfOLD write SetCapArfOLD;
    property OLD_CxbArf: string read GetCxbArfOLD write SetCxbArfOLD;
    property OLD_CtbElt: string read GetCtbEltOLD write SetCtbEltOLD;
    property OLD_CtbElc: string read GetCtbElcOLD write SetCtbElcOLD;
    property OLD_AprDft: string read GetAprDftOLD write SetAprDftOLD;
    property OLD_AprDoc: string read GetAprDocOLD write SetAprDocOLD;
    property OLD_PrjNus: string read GetPrjNusOLD write SetPrjNusOLD;
    property OLD_CprPec: string read GetCprPecOLD write SetCprPecOLD;
    property OLD_CprFoc: Integer read GetCprFocOLD write SetCprFocOLD;
    property OLD_CprFcp: Integer read GetCprFcpOLD write SetCprFcpOLD;
    property OLD_VenPof: string read GetVenPofOLD write SetVenPofOLD;
    property OLD_CprPsc: string read GetCprPscOLD write SetCprPscOLD;
    property OLD_MltLgn: string read GetMltLgnOLD write SetMltLgnOLD;
    property OLD_NomSer: string read GetNomSerOLD write SetNomSerOLD;
    property OLD_PorSer: Integer read GetPorSerOLD write SetPorSerOLD;
    property OLD_AutUsu: string read GetAutUsuOLD write SetAutUsuOLD;
    property OLD_UsuAut: string read GetUsuAutOLD write SetUsuAutOLD;
    property OLD_SenAut: string read GetSenAutOLD write SetSenAutOLD;
    property OLD_AltRem: string read GetAltRemOLD write SetAltRemOLD;
    property OLD_VenPtn: string read GetVenPtnOLD write SetVenPtnOLD;
    property OLD_VenPca: string read GetVenPcaOLD write SetVenPcaOLD;
    property OLD_VenLpi: string read GetVenLpiOLD write SetVenLpiOLD;
    property OLD_VenPfp: string read GetVenPfpOLD write SetVenPfpOLD;
    property OLD_PatDfl: string read GetPatDflOLD write SetPatDflOLD;
    property OLD_VenPcd: string read GetVenPcdOLD write SetVenPcdOLD;
    property OLD_MpcAct: string read GetMpcActOLD write SetMpcActOLD;
    property OLD_CtbLtc: string read GetCtbLtcOLD write SetCtbLtcOLD;
    property OLD_PatTde: string read GetPatTdeOLD write SetPatTdeOLD;
    property OLD_VenScv: string read GetVenScvOLD write SetVenScvOLD;
    property OLD_ConQar: string read GetConQarOLD write SetConQarOLD;
    property OLD_UsuCfe: string read GetUsuCfeOLD write SetUsuCfeOLD;
    property OLD_CprScc: string read GetCprSccOLD write SetCprSccOLD;
    property OLD_VenAtv: string read GetVenAtvOLD write SetVenAtvOLD;
    property OLD_VenAtf: string read GetVenAtfOLD write SetVenAtfOLD;
    property OLD_ImpRat: string read GetImpRatOLD write SetImpRatOLD;
    property OLD_DirNel: string read GetDirNelOLD write SetDirNelOLD;
    property OLD_VenCns: string read GetVenCnsOLD write SetVenCnsOLD;
    property OLD_MpcAcf: string read GetMpcAcfOLD write SetMpcAcfOLD;
    property OLD_MpcAcc: string read GetMpcAccOLD write SetMpcAccOLD;
    property OLD_MpcAca: string read GetMpcAcaOLD write SetMpcAcaOLD;
    property OLD_DatSin: TDate read GetDatSinOLD write SetDatSinOLD;
    property OLD_HorSin: Integer read GetHorSinOLD write SetHorSinOLD;
    property OLD_VenAir: string read GetVenAirOLD write SetVenAirOLD;
    property OLD_AprSct: string read GetAprSctOLD write SetAprSctOLD;
    property OLD_PrjTso: string read GetPrjTsoOLD write SetPrjTsoOLD;
    property OLD_CpoCpf: string read GetCpoCpfOLD write SetCpoCpfOLD;
    property OLD_CprRca: string read GetCprRcaOLD write SetCprRcaOLD;
    property OLD_CleQtd: string read GetCleQtdOLD write SetCleQtdOLD;
    property OLD_ClePrc: string read GetClePrcOLD write SetClePrcOLD;
    property OLD_ConRec: string read GetConRecOLD write SetConRecOLD;
    property OLD_VenSpp: string read GetVenSppOLD write SetVenSppOLD;
    property OLD_PrdEpb: string read GetPrdEpbOLD write SetPrdEpbOLD;
    property OLD_VenAse: string read GetVenAseOLD write SetVenAseOLD;
    property OLD_VenIfc: string read GetVenIfcOLD write SetVenIfcOLD;
    property OLD_DirCte: string read GetDirCteOLD write SetDirCteOLD;
    property OLD_CprIgc: string read GetCprIgcOLD write SetCprIgcOLD;
    property OLD_CprAsc: string read GetCprAscOLD write SetCprAscOLD;
    property OLD_CprAqc: string read GetCprAqcOLD write SetCprAqcOLD;
    property OLD_TurTrb: Integer read GetTurTrbOLD write SetTurTrbOLD;
    property OLD_CodCel: string read GetCodCelOLD write SetCodCelOLD;
    property OLD_PrdOpd: string read GetPrdOpdOLD write SetPrdOpdOLD;
    property OLD_OpdOrp: string read GetOpdOrpOLD write SetOpdOrpOLD;
    property OLD_VenCst: string read GetVenCstOLD write SetVenCstOLD;
    property OLD_CprCst: string read GetCprCstOLD write SetCprCstOLD;
    property OLD_DirNes: string read GetDirNesOLD write SetDirNesOLD;
    property OLD_CanNfe: string read GetCanNfeOLD write SetCanNfeOLD;
    property OLD_VenSdg: string read GetVenSdgOLD write SetVenSdgOLD;
    property OLD_DatAfi: string read GetDatAfiOLD write SetDatAfiOLD;
    property OLD_IndAst: string read GetIndAstOLD write SetIndAstOLD;
    property OLD_AltInp: string read GetAltInpOLD write SetAltInpOLD;
    property OLD_CxbPgp: string read GetCxbPgpOLD write SetCxbPgpOLD;
    property OLD_AstOrp: string read GetAstOrpOLD write SetAstOrpOLD;
    property OLD_AstSor: string read GetAstSorOLD write SetAstSorOLD;
    property OLD_AstNfv: string read GetAstNfvOLD write SetAstNfvOLD;
    property OLD_AstPed: string read GetAstPedOLD write SetAstPedOLD;
    property OLD_RecAcd: string read GetRecAcdOLD write SetRecAcdOLD;
    property OLD_PagAcd: string read GetPagAcdOLD write SetPagAcdOLD;
    property OLD_PagDet: Integer read GetPagDetOLD write SetPagDetOLD;
    property OLD_MaxLgn: Integer read GetMaxLgnOLD write SetMaxLgnOLD;
    property OLD_ParEsp: string read GetParEspOLD write SetParEspOLD;
    property OLD_VenCnp: string read GetVenCnpOLD write SetVenCnpOLD;
    property OLD_IndMre: string read GetIndMreOLD write SetIndMreOLD;
    property OLD_AstPsi: string read GetAstPsiOLD write SetAstPsiOLD;
    property OLD_AstEto: string read GetAstEtoOLD write SetAstEtoOLD;
    property OLD_ExaOcp: string read GetExaOcpOLD write SetExaOcpOLD;
    property OLD_VenAva: string read GetVenAvaOLD write SetVenAvaOLD;
    property OLD_ManAge: string read GetManAgeOLD write SetManAgeOLD;
    property OLD_ConAge: string read GetConAgeOLD write SetConAgeOLD;
    property OLD_PatEmp: string read GetPatEmpOLD write SetPatEmpOLD;
    property OLD_AltMon: string read GetAltMonOLD write SetAltMonOLD;
    property OLD_AltEbq: string read GetAltEbqOLD write SetAltEbqOLD;
    property OLD_AudPfa: string read GetAudPfaOLD write SetAudPfaOLD;
    property OLD_AltNnu: string read GetAltNnuOLD write SetAltNnuOLD;
    property OLD_SenApr: string read GetSenAprOLD write SetSenAprOLD;
    property OLD_CobPdj: string read GetCobPdjOLD write SetCobPdjOLD;
    property OLD_CobAtc: string read GetCobAtcOLD write SetCobAtcOLD;
    property OLD_AcrCcm: string read GetAcrCcmOLD write SetAcrCcmOLD;
    property OLD_PerExs: string read GetPerExsOLD write SetPerExsOLD;
    property OLD_PerFpc: Integer read GetPerFpcOLD write SetPerFpcOLD;
    property OLD_USU_CodFil: Integer read GetUSU_CodFilOLD write SetUSU_CodFilOLD;
    property OLD_USU_MaiFOC: string read GetUSU_MaiFOCOLD write SetUSU_MaiFOCOLD;
    property OLD_USU_NFOCEF: string read GetUSU_NFOCEFOLD write SetUSU_NFOCEFOLD;
    property OLD_USU_NFOCNO: string read GetUSU_NFOCNOOLD write SetUSU_NFOCNOOLD;
    property OLD_USU_ClaUsu: Integer read GetUSU_ClaUsuOLD write SetUSU_ClaUsuOLD;
    property OLD_USU_NFOCUC: string read GetUSU_NFOCUCOLD write SetUSU_NFOCUCOLD;
    property OLD_USU_EmaApr: string read GetUSU_EmaAprOLD write SetUSU_EmaAprOLD;
    property OLD_USU_FecNFRem: string read GetUSU_FecNFRemOLD write SetUSU_FecNFRemOLD;
    property OLD_USU_AvsCnfDsp: string read GetUSU_AvsCnfDspOLD write SetUSU_AvsCnfDspOLD;
    property OLD_USU_AbrLibVen: string read GetUSU_AbrLibVenOLD write SetUSU_AbrLibVenOLD;
    property OLD_USU_AviDia: Integer read GetUSU_AviDiaOLD write SetUSU_AviDiaOLD;
  end;

implementation

{ T099USU }

constructor T099USU.Create();
begin
  inherited Create('E099USU');
end;

destructor T099USU.Destroy();
begin
  inherited;
end;
function T099USU.GetCodEmp: Integer;
begin
  Result := FCodEmp;
end;

procedure T099USU.SetCodEmp(const pCodEmp: Integer);
begin
  FCodEmp := pCodEmp;
end;

function T099USU.GetCodUsu: Integer;
begin
  Result := FCodUsu;
end;

procedure T099USU.SetCodUsu(const pCodUsu: Integer);
begin
  FCodUsu := pCodUsu;
end;

function T099USU.GetNumEmp: Integer;
begin
  Result := FNumEmp;
end;

procedure T099USU.SetNumEmp(const pNumEmp: Integer);
begin
  FNumEmp := pNumEmp;
end;

function T099USU.GetTipCol: Integer;
begin
  Result := FTipCol;
end;

procedure T099USU.SetTipCol(const pTipCol: Integer);
begin
  FTipCol := pTipCol;
end;

function T099USU.GetNumCad: Integer;
begin
  Result := FNumCad;
end;

procedure T099USU.SetNumCad(const pNumCad: Integer);
begin
  FNumCad := pNumCad;
end;

function T099USU.GetSupIme: Integer;
begin
  Result := FSupIme;
end;

procedure T099USU.SetSupIme(const pSupIme: Integer);
begin
  FSupIme := pSupIme;
end;

function T099USU.GetCodCcu: string;
begin
  Result := FCodCcu;
end;

procedure T099USU.SetCodCcu(const pCodCcu: string);
begin
  FCodCcu := pCodCcu;
end;

function T099USU.GetIntNet: string;
begin
  Result := FIntNet;
end;

procedure T099USU.SetIntNet(const pIntNet: string);
begin
  FIntNet := pIntNet;
end;

function T099USU.GetEmpAti: Integer;
begin
  Result := FEmpAti;
end;

procedure T099USU.SetEmpAti(const pEmpAti: Integer);
begin
  FEmpAti := pEmpAti;
end;

function T099USU.GetFilAti: Integer;
begin
  Result := FFilAti;
end;

procedure T099USU.SetFilAti(const pFilAti: Integer);
begin
  FFilAti := pFilAti;
end;

function T099USU.GetGerAus: string;
begin
  Result := FGerAus;
end;

procedure T099USU.SetGerAus(const pGerAus: string);
begin
  FGerAus := pGerAus;
end;

function T099USU.GetCptRel: string;
begin
  Result := FCptRel;
end;

procedure T099USU.SetCptRel(const pCptRel: string);
begin
  FCptRel := pCptRel;
end;

function T099USU.GetFpgObr: string;
begin
  Result := FFpgObr;
end;

procedure T099USU.SetFpgObr(const pFpgObr: string);
begin
  FFpgObr := pFpgObr;
end;

function T099USU.GetPstAti: Integer;
begin
  Result := FPstAti;
end;

procedure T099USU.SetPstAti(const pPstAti: Integer);
begin
  FPstAti := pPstAti;
end;

function T099USU.GetVenTbp: string;
begin
  Result := FVenTbp;
end;

procedure T099USU.SetVenTbp(const pVenTbp: string);
begin
  FVenTbp := pVenTbp;
end;

function T099USU.GetVenNsp: string;
begin
  Result := FVenNsp;
end;

procedure T099USU.SetVenNsp(const pVenNsp: string);
begin
  FVenNsp := pVenNsp;
end;

function T099USU.GetVenPar: string;
begin
  Result := FVenPar;
end;

procedure T099USU.SetVenPar(const pVenPar: string);
begin
  FVenPar := pVenPar;
end;

function T099USU.GetVenPap: string;
begin
  Result := FVenPap;
end;

procedure T099USU.SetVenPap(const pVenPap: string);
begin
  FVenPap := pVenPap;
end;

function T099USU.GetVenPds: string;
begin
  Result := FVenPds;
end;

procedure T099USU.SetVenPds(const pVenPds: string);
begin
  FVenPds := pVenPds;
end;

function T099USU.GetVenPip: string;
begin
  Result := FVenPip;
end;

procedure T099USU.SetVenPip(const pVenPip: string);
begin
  FVenPip := pVenPip;
end;

function T099USU.GetVenPic: string;
begin
  Result := FVenPic;
end;

procedure T099USU.SetVenPic(const pVenPic: string);
begin
  FVenPic := pVenPic;
end;

function T099USU.GetVenPco: string;
begin
  Result := FVenPco;
end;

procedure T099USU.SetVenPco(const pVenPco: string);
begin
  FVenPco := pVenPco;
end;

function T099USU.GetVenPis: string;
begin
  Result := FVenPis;
end;

procedure T099USU.SetVenPis(const pVenPis: string);
begin
  FVenPis := pVenPis;
end;

function T099USU.GetVenPir: string;
begin
  Result := FVenPir;
end;

procedure T099USU.SetVenPir(const pVenPir: string);
begin
  FVenPir := pVenPir;
end;

function T099USU.GetVenPin: string;
begin
  Result := FVenPin;
end;

procedure T099USU.SetVenPin(const pVenPin: string);
begin
  FVenPin := pVenPin;
end;

function T099USU.GetVenPfu: string;
begin
  Result := FVenPfu;
end;

procedure T099USU.SetVenPfu(const pVenPfu: string);
begin
  FVenPfu := pVenPfu;
end;

function T099USU.GetVenAun: string;
begin
  Result := FVenAun;
end;

procedure T099USU.SetVenAun(const pVenAun: string);
begin
  FVenAun := pVenAun;
end;

function T099USU.GetVenAtp: string;
begin
  Result := FVenAtp;
end;

procedure T099USU.SetVenAtp(const pVenAtp: string);
begin
  FVenAtp := pVenAtp;
end;

function T099USU.GetVenAcl: string;
begin
  Result := FVenAcl;
end;

procedure T099USU.SetVenAcl(const pVenAcl: string);
begin
  FVenAcl := pVenAcl;
end;

function T099USU.GetVenAre: string;
begin
  Result := FVenAre;
end;

procedure T099USU.SetVenAre(const pVenAre: string);
begin
  FVenAre := pVenAre;
end;

function T099USU.GetVenAsp: string;
begin
  Result := FVenAsp;
end;

procedure T099USU.SetVenAsp(const pVenAsp: string);
begin
  FVenAsp := pVenAsp;
end;

function T099USU.GetVenLpd: string;
begin
  Result := FVenLpd;
end;

procedure T099USU.SetVenLpd(const pVenLpd: string);
begin
  FVenLpd := pVenLpd;
end;

function T099USU.GetVenAcv: string;
begin
  Result := FVenAcv;
end;

procedure T099USU.SetVenAcv(const pVenAcv: string);
begin
  FVenAcv := pVenAcv;
end;

function T099USU.GetVenAns: string;
begin
  Result := FVenAns;
end;

procedure T099USU.SetVenAns(const pVenAns: string);
begin
  FVenAns := pVenAns;
end;

function T099USU.GetVenLns: string;
begin
  Result := FVenLns;
end;

procedure T099USU.SetVenLns(const pVenLns: string);
begin
  FVenLns := pVenLns;
end;

function T099USU.GetVenAsr: string;
begin
  Result := FVenAsr;
end;

procedure T099USU.SetVenAsr(const pVenAsr: string);
begin
  FVenAsr := pVenAsr;
end;

function T099USU.GetVenRat: string;
begin
  Result := FVenRat;
end;

procedure T099USU.SetVenRat(const pVenRat: string);
begin
  FVenRat := pVenRat;
end;

function T099USU.GetVenPae: string;
begin
  Result := FVenPae;
end;

procedure T099USU.SetVenPae(const pVenPae: string);
begin
  FVenPae := pVenPae;
end;

function T099USU.GetVenAdg: string;
begin
  Result := FVenAdg;
end;

procedure T099USU.SetVenAdg(const pVenAdg: string);
begin
  FVenAdg := pVenAdg;
end;

function T099USU.GetVenApi: string;
begin
  Result := FVenApi;
end;

procedure T099USU.SetVenApi(const pVenApi: string);
begin
  FVenApi := pVenApi;
end;

function T099USU.GetEstAes: string;
begin
  Result := FEstAes;
end;

procedure T099USU.SetEstAes(const pEstAes: string);
begin
  FEstAes := pEstAes;
end;

function T099USU.GetEstRat: string;
begin
  Result := FEstRat;
end;

procedure T099USU.SetEstRat(const pEstRat: string);
begin
  FEstRat := pEstRat;
end;

function T099USU.GetEstPlp: string;
begin
  Result := FEstPlp;
end;

procedure T099USU.SetEstPlp(const pEstPlp: string);
begin
  FEstPlp := pEstPlp;
end;

function T099USU.GetRecPgr: string;
begin
  Result := FRecPgr;
end;

procedure T099USU.SetRecPgr(const pRecPgr: string);
begin
  FRecPgr := pRecPgr;
end;

function T099USU.GetRecAvr: string;
begin
  Result := FRecAvr;
end;

procedure T099USU.SetRecAvr(const pRecAvr: string);
begin
  FRecAvr := pRecAvr;
end;

function T099USU.GetRecAvl: string;
begin
  Result := FRecAvl;
end;

procedure T099USU.SetRecAvl(const pRecAvl: string);
begin
  FRecAvl := pRecAvl;
end;

function T099USU.GetRecRat: string;
begin
  Result := FRecRat;
end;

procedure T099USU.SetRecRat(const pRecRat: string);
begin
  FRecRat := pRecRat;
end;

function T099USU.GetCprMac: Double;
begin
  Result := FCprMac;
end;

procedure T099USU.SetCprMac(const pCprMac: Double);
begin
  FCprMac := pCprMac;
end;

function T099USU.GetCprMoc: Double;
begin
  Result := FCprMoc;
end;

procedure T099USU.SetCprMoc(const pCprMoc: Double);
begin
  FCprMoc := pCprMoc;
end;

function T099USU.GetCprPap: string;
begin
  Result := FCprPap;
end;

procedure T099USU.SetCprPap(const pCprPap: string);
begin
  FCprPap := pCprPap;
end;

function T099USU.GetCprPds: string;
begin
  Result := FCprPds;
end;

procedure T099USU.SetCprPds(const pCprPds: string);
begin
  FCprPds := pCprPds;
end;

function T099USU.GetCprPip: string;
begin
  Result := FCprPip;
end;

procedure T099USU.SetCprPip(const pCprPip: string);
begin
  FCprPip := pCprPip;
end;

function T099USU.GetCprPic: string;
begin
  Result := FCprPic;
end;

procedure T099USU.SetCprPic(const pCprPic: string);
begin
  FCprPic := pCprPic;
end;

function T099USU.GetCprPis: string;
begin
  Result := FCprPis;
end;

procedure T099USU.SetCprPis(const pCprPis: string);
begin
  FCprPis := pCprPis;
end;

function T099USU.GetCprPir: string;
begin
  Result := FCprPir;
end;

procedure T099USU.SetCprPir(const pCprPir: string);
begin
  FCprPir := pCprPir;
end;

function T099USU.GetCprPin: string;
begin
  Result := FCprPin;
end;

procedure T099USU.SetCprPin(const pCprPin: string);
begin
  FCprPin := pCprPin;
end;

function T099USU.GetCprPfu: string;
begin
  Result := FCprPfu;
end;

procedure T099USU.SetCprPfu(const pCprPfu: string);
begin
  FCprPfu := pCprPfu;
end;

function T099USU.GetCprVno: Double;
begin
  Result := FCprVno;
end;

procedure T099USU.SetCprVno(const pCprVno: Double);
begin
  FCprVno := pCprVno;
end;

function T099USU.GetCprQno: Double;
begin
  Result := FCprQno;
end;

procedure T099USU.SetCprQno(const pCprQno: Double);
begin
  FCprQno := pCprQno;
end;

function T099USU.GetCprVdn: Double;
begin
  Result := FCprVdn;
end;

procedure T099USU.SetCprVdn(const pCprVdn: Double);
begin
  FCprVdn := pCprVdn;
end;

function T099USU.GetCprPdn: Double;
begin
  Result := FCprPdn;
end;

procedure T099USU.SetCprPdn(const pCprPdn: Double);
begin
  FCprPdn := pCprPdn;
end;

function T099USU.GetCprApd: string;
begin
  Result := FCprApd;
end;

procedure T099USU.SetCprApd(const pCprApd: string);
begin
  FCprApd := pCprApd;
end;

function T099USU.GetCprAfo: string;
begin
  Result := FCprAfo;
end;

procedure T099USU.SetCprAfo(const pCprAfo: string);
begin
  FCprAfo := pCprAfo;
end;

function T099USU.GetCprAoc: string;
begin
  Result := FCprAoc;
end;

procedure T099USU.SetCprAoc(const pCprAoc: string);
begin
  FCprAoc := pCprAoc;
end;

function T099USU.GetCprAcc: string;
begin
  Result := FCprAcc;
end;

procedure T099USU.SetCprAcc(const pCprAcc: string);
begin
  FCprAcc := pCprAcc;
end;

function T099USU.GetCprAne: string;
begin
  Result := FCprAne;
end;

procedure T099USU.SetCprAne(const pCprAne: string);
begin
  FCprAne := pCprAne;
end;

function T099USU.GetCprRat: string;
begin
  Result := FCprRat;
end;

procedure T099USU.SetCprRat(const pCprRat: string);
begin
  FCprRat := pCprRat;
end;

function T099USU.GetCprAdg: string;
begin
  Result := FCprAdg;
end;

procedure T099USU.SetCprAdg(const pCprAdg: string);
begin
  FCprAdg := pCprAdg;
end;

function T099USU.GetCprAcf: string;
begin
  Result := FCprAcf;
end;

procedure T099USU.SetCprAcf(const pCprAcf: string);
begin
  FCprAcf := pCprAcf;
end;

function T099USU.GetCprAtx: string;
begin
  Result := FCprAtx;
end;

procedure T099USU.SetCprAtx(const pCprAtx: string);
begin
  FCprAtx := pCprAtx;
end;

function T099USU.GetCprAhf: string;
begin
  Result := FCprAhf;
end;

procedure T099USU.SetCprAhf(const pCprAhf: string);
begin
  FCprAhf := pCprAhf;
end;

function T099USU.GetPagMax: Double;
begin
  Result := FPagMax;
end;

procedure T099USU.SetPagMax(const pPagMax: Double);
begin
  FPagMax := pPagMax;
end;

function T099USU.GetPagPgr: string;
begin
  Result := FPagPgr;
end;

procedure T099USU.SetPagPgr(const pPagPgr: string);
begin
  FPagPgr := pPagPgr;
end;

function T099USU.GetPagAvp: string;
begin
  Result := FPagAvp;
end;

procedure T099USU.SetPagAvp(const pPagAvp: string);
begin
  FPagAvp := pPagAvp;
end;

function T099USU.GetPagAvl: string;
begin
  Result := FPagAvl;
end;

procedure T099USU.SetPagAvl(const pPagAvl: string);
begin
  FPagAvl := pPagAvl;
end;

function T099USU.GetPagEev: string;
begin
  Result := FPagEev;
end;

procedure T099USU.SetPagEev(const pPagEev: string);
begin
  FPagEev := pPagEev;
end;

function T099USU.GetPagRat: string;
begin
  Result := FPagRat;
end;

procedure T099USU.SetPagRat(const pPagRat: string);
begin
  FPagRat := pPagRat;
end;

function T099USU.GetCxbDcp: Integer;
begin
  Result := FCxbDcp;
end;

procedure T099USU.SetCxbDcp(const pCxbDcp: Integer);
begin
  FCxbDcp := pCxbDcp;
end;

function T099USU.GetCxbApm: string;
begin
  Result := FCxbApm;
end;

procedure T099USU.SetCxbApm(const pCxbApm: string);
begin
  FCxbApm := pCxbApm;
end;

function T099USU.GetCxbRat: string;
begin
  Result := FCxbRat;
end;

procedure T099USU.SetCxbRat(const pCxbRat: string);
begin
  FCxbRat := pCxbRat;
end;

function T099USU.GetCtbDac: string;
begin
  Result := FCtbDac;
end;

procedure T099USU.SetCtbDac(const pCtbDac: string);
begin
  FCtbDac := pCtbDac;
end;

function T099USU.GetCtbAlt: string;
begin
  Result := FCtbAlt;
end;

procedure T099USU.SetCtbAlt(const pCtbAlt: string);
begin
  FCtbAlt := pCtbAlt;
end;

function T099USU.GetCtbClt: string;
begin
  Result := FCtbClt;
end;

procedure T099USU.SetCtbClt(const pCtbClt: string);
begin
  FCtbClt := pCtbClt;
end;

function T099USU.GetCtbAlc: string;
begin
  Result := FCtbAlc;
end;

procedure T099USU.SetCtbAlc(const pCtbAlc: string);
begin
  FCtbAlc := pCtbAlc;
end;

function T099USU.GetCtbClc: string;
begin
  Result := FCtbClc;
end;

procedure T099USU.SetCtbClc(const pCtbClc: string);
begin
  FCtbClc := pCtbClc;
end;

function T099USU.GetCtbArt: string;
begin
  Result := FCtbArt;
end;

procedure T099USU.SetCtbArt(const pCtbArt: string);
begin
  FCtbArt := pCtbArt;
end;

function T099USU.GetCtbCrt: string;
begin
  Result := FCtbCrt;
end;

procedure T099USU.SetCtbCrt(const pCtbCrt: string);
begin
  FCtbCrt := pCtbCrt;
end;

function T099USU.GetCtbAor: string;
begin
  Result := FCtbAor;
end;

procedure T099USU.SetCtbAor(const pCtbAor: string);
begin
  FCtbAor := pCtbAor;
end;

function T099USU.GetCtbCor: string;
begin
  Result := FCtbCor;
end;

procedure T099USU.SetCtbCor(const pCtbCor: string);
begin
  FCtbCor := pCtbCor;
end;

function T099USU.GetCtbAct: string;
begin
  Result := FCtbAct;
end;

procedure T099USU.SetCtbAct(const pCtbAct: string);
begin
  FCtbAct := pCtbAct;
end;

function T099USU.GetCtbAhp: string;
begin
  Result := FCtbAhp;
end;

procedure T099USU.SetCtbAhp(const pCtbAhp: string);
begin
  FCtbAhp := pCtbAhp;
end;

function T099USU.GetCtbAcf: string;
begin
  Result := FCtbAcf;
end;

procedure T099USU.SetCtbAcf(const pCtbAcf: string);
begin
  FCtbAcf := pCtbAcf;
end;

function T099USU.GetCtbLfl: string;
begin
  Result := FCtbLfl;
end;

procedure T099USU.SetCtbLfl(const pCtbLfl: string);
begin
  FCtbLfl := pCtbLfl;
end;

function T099USU.GetCtbZer: string;
begin
  Result := FCtbZer;
end;

procedure T099USU.SetCtbZer(const pCtbZer: string);
begin
  FCtbZer := pCtbZer;
end;

function T099USU.GetPrdDpa: Integer;
begin
  Result := FPrdDpa;
end;

procedure T099USU.SetPrdDpa(const pPrdDpa: Integer);
begin
  FPrdDpa := pPrdDpa;
end;

function T099USU.GetPrdDpp: Integer;
begin
  Result := FPrdDpp;
end;

procedure T099USU.SetPrdDpp(const pPrdDpp: Integer);
begin
  FPrdDpp := pPrdDpp;
end;

function T099USU.GetSitUsu: string;
begin
  Result := FSitUsu;
end;

procedure T099USU.SetSitUsu(const pSitUsu: string);
begin
  FSitUsu := pSitUsu;
end;

function T099USU.GetCodMot: Integer;
begin
  Result := FCodMot;
end;

procedure T099USU.SetCodMot(const pCodMot: Integer);
begin
  FCodMot := pCodMot;
end;

function T099USU.GetObsMot: string;
begin
  Result := FObsMot;
end;

procedure T099USU.SetObsMot(const pObsMot: string);
begin
  FObsMot := pObsMot;
end;

function T099USU.GetUsuMot: Integer;
begin
  Result := FUsuMot;
end;

procedure T099USU.SetUsuMot(const pUsuMot: Integer);
begin
  FUsuMot := pUsuMot;
end;

function T099USU.GetDatMot: TDate;
begin
  Result := FDatMot;
end;

procedure T099USU.SetDatMot(const pDatMot: TDate);
begin
  FDatMot := pDatMot;
end;

function T099USU.GetHorMot: Integer;
begin
  Result := FHorMot;
end;

procedure T099USU.SetHorMot(const pHorMot: Integer);
begin
  FHorMot := pHorMot;
end;

function T099USU.GetUsuGer: Integer;
begin
  Result := FUsuGer;
end;

procedure T099USU.SetUsuGer(const pUsuGer: Integer);
begin
  FUsuGer := pUsuGer;
end;

function T099USU.GetDatGer: TDate;
begin
  Result := FDatGer;
end;

procedure T099USU.SetDatGer(const pDatGer: TDate);
begin
  FDatGer := pDatGer;
end;

function T099USU.GetHorGer: Integer;
begin
  Result := FHorGer;
end;

procedure T099USU.SetHorGer(const pHorGer: Integer);
begin
  FHorGer := pHorGer;
end;

function T099USU.GetCodCli: Integer;
begin
  Result := FCodCli;
end;

procedure T099USU.SetCodCli(const pCodCli: Integer);
begin
  FCodCli := pCodCli;
end;

function T099USU.GetCodFor: Integer;
begin
  Result := FCodFor;
end;

procedure T099USU.SetCodFor(const pCodFor: Integer);
begin
  FCodFor := pCodFor;
end;

function T099USU.GetCodRep: Integer;
begin
  Result := FCodRep;
end;

procedure T099USU.SetCodRep(const pCodRep: Integer);
begin
  FCodRep := pCodRep;
end;

function T099USU.GetCodTra: Integer;
begin
  Result := FCodTra;
end;

procedure T099USU.SetCodTra(const pCodTra: Integer);
begin
  FCodTra := pCodTra;
end;

function T099USU.GetCodPor: string;
begin
  Result := FCodPor;
end;

procedure T099USU.SetCodPor(const pCodPor: string);
begin
  FCodPor := pCodPor;
end;

function T099USU.GetVenFqp: string;
begin
  Result := FVenFqp;
end;

procedure T099USU.SetVenFqp(const pVenFqp: string);
begin
  FVenFqp := pVenFqp;
end;

function T099USU.GetCprPqt: string;
begin
  Result := FCprPqt;
end;

procedure T099USU.SetCprPqt(const pCprPqt: string);
begin
  FCprPqt := pCprPqt;
end;

function T099USU.GetPorObr: string;
begin
  Result := FPorObr;
end;

procedure T099USU.SetPorObr(const pPorObr: string);
begin
  FPorObr := pPorObr;
end;

function T099USU.GetVenLpv: string;
begin
  Result := FVenLpv;
end;

procedure T099USU.SetVenLpv(const pVenLpv: string);
begin
  FVenLpv := pVenLpv;
end;

function T099USU.GetVenLpf: string;
begin
  Result := FVenLpf;
end;

procedure T099USU.SetVenLpf(const pVenLpf: string);
begin
  FVenLpf := pVenLpf;
end;

function T099USU.GetVenLpc: string;
begin
  Result := FVenLpc;
end;

procedure T099USU.SetVenLpc(const pVenLpc: string);
begin
  FVenLpc := pVenLpc;
end;

function T099USU.GetVenLpp: string;
begin
  Result := FVenLpp;
end;

procedure T099USU.SetVenLpp(const pVenLpp: string);
begin
  FVenLpp := pVenLpp;
end;

function T099USU.GetCprApi: string;
begin
  Result := FCprApi;
end;

procedure T099USU.SetCprApi(const pCprApi: string);
begin
  FCprApi := pCprApi;
end;

function T099USU.GetEstGsa: string;
begin
  Result := FEstGsa;
end;

procedure T099USU.SetEstGsa(const pEstGsa: string);
begin
  FEstGsa := pEstGsa;
end;

function T099USU.GetEstAdr: string;
begin
  Result := FEstAdr;
end;

procedure T099USU.SetEstAdr(const pEstAdr: string);
begin
  FEstAdr := pEstAdr;
end;

function T099USU.GetEstAgc: string;
begin
  Result := FEstAgc;
end;

procedure T099USU.SetEstAgc(const pEstAgc: string);
begin
  FEstAgc := pEstAgc;
end;

function T099USU.GetVenLpa: string;
begin
  Result := FVenLpa;
end;

procedure T099USU.SetVenLpa(const pVenLpa: string);
begin
  FVenLpa := pVenLpa;
end;

function T099USU.GetPrjLfd: string;
begin
  Result := FPrjLfd;
end;

procedure T099USU.SetPrjLfd(const pPrjLfd: string);
begin
  FPrjLfd := pPrjLfd;
end;

function T099USU.GetDisRra: string;
begin
  Result := FDisRra;
end;

procedure T099USU.SetDisRra(const pDisRra: string);
begin
  FDisRra := pDisRra;
end;

function T099USU.GetDisInr: string;
begin
  Result := FDisInr;
end;

procedure T099USU.SetDisInr(const pDisInr: string);
begin
  FDisInr := pDisInr;
end;

function T099USU.GetDisEnr: string;
begin
  Result := FDisEnr;
end;

procedure T099USU.SetDisEnr(const pDisEnr: string);
begin
  FDisEnr := pDisEnr;
end;

function T099USU.GetCprFpo: string;
begin
  Result := FCprFpo;
end;

procedure T099USU.SetCprFpo(const pCprFpo: string);
begin
  FCprFpo := pCprFpo;
end;

function T099USU.GetRecArf: string;
begin
  Result := FRecArf;
end;

procedure T099USU.SetRecArf(const pRecArf: string);
begin
  FRecArf := pRecArf;
end;

function T099USU.GetPagArf: string;
begin
  Result := FPagArf;
end;

procedure T099USU.SetPagArf(const pPagArf: string);
begin
  FPagArf := pPagArf;
end;

function T099USU.GetCapArf: string;
begin
  Result := FCapArf;
end;

procedure T099USU.SetCapArf(const pCapArf: string);
begin
  FCapArf := pCapArf;
end;

function T099USU.GetCxbArf: string;
begin
  Result := FCxbArf;
end;

procedure T099USU.SetCxbArf(const pCxbArf: string);
begin
  FCxbArf := pCxbArf;
end;

function T099USU.GetCtbElt: string;
begin
  Result := FCtbElt;
end;

procedure T099USU.SetCtbElt(const pCtbElt: string);
begin
  FCtbElt := pCtbElt;
end;

function T099USU.GetCtbElc: string;
begin
  Result := FCtbElc;
end;

procedure T099USU.SetCtbElc(const pCtbElc: string);
begin
  FCtbElc := pCtbElc;
end;

function T099USU.GetAprDft: string;
begin
  Result := FAprDft;
end;

procedure T099USU.SetAprDft(const pAprDft: string);
begin
  FAprDft := pAprDft;
end;

function T099USU.GetAprDoc: string;
begin
  Result := FAprDoc;
end;

procedure T099USU.SetAprDoc(const pAprDoc: string);
begin
  FAprDoc := pAprDoc;
end;

function T099USU.GetPrjNus: string;
begin
  Result := FPrjNus;
end;

procedure T099USU.SetPrjNus(const pPrjNus: string);
begin
  FPrjNus := pPrjNus;
end;

function T099USU.GetCprPec: string;
begin
  Result := FCprPec;
end;

procedure T099USU.SetCprPec(const pCprPec: string);
begin
  FCprPec := pCprPec;
end;

function T099USU.GetCprFoc: Integer;
begin
  Result := FCprFoc;
end;

procedure T099USU.SetCprFoc(const pCprFoc: Integer);
begin
  FCprFoc := pCprFoc;
end;

function T099USU.GetCprFcp: Integer;
begin
  Result := FCprFcp;
end;

procedure T099USU.SetCprFcp(const pCprFcp: Integer);
begin
  FCprFcp := pCprFcp;
end;

function T099USU.GetVenPof: string;
begin
  Result := FVenPof;
end;

procedure T099USU.SetVenPof(const pVenPof: string);
begin
  FVenPof := pVenPof;
end;

function T099USU.GetCprPsc: string;
begin
  Result := FCprPsc;
end;

procedure T099USU.SetCprPsc(const pCprPsc: string);
begin
  FCprPsc := pCprPsc;
end;

function T099USU.GetMltLgn: string;
begin
  Result := FMltLgn;
end;

procedure T099USU.SetMltLgn(const pMltLgn: string);
begin
  FMltLgn := pMltLgn;
end;

function T099USU.GetNomSer: string;
begin
  Result := FNomSer;
end;

procedure T099USU.SetNomSer(const pNomSer: string);
begin
  FNomSer := pNomSer;
end;

function T099USU.GetPorSer: Integer;
begin
  Result := FPorSer;
end;

procedure T099USU.SetPorSer(const pPorSer: Integer);
begin
  FPorSer := pPorSer;
end;

function T099USU.GetAutUsu: string;
begin
  Result := FAutUsu;
end;

procedure T099USU.SetAutUsu(const pAutUsu: string);
begin
  FAutUsu := pAutUsu;
end;

function T099USU.GetUsuAut: string;
begin
  Result := FUsuAut;
end;

procedure T099USU.SetUsuAut(const pUsuAut: string);
begin
  FUsuAut := pUsuAut;
end;

function T099USU.GetSenAut: string;
begin
  Result := FSenAut;
end;

procedure T099USU.SetSenAut(const pSenAut: string);
begin
  FSenAut := pSenAut;
end;

function T099USU.GetAltRem: string;
begin
  Result := FAltRem;
end;

procedure T099USU.SetAltRem(const pAltRem: string);
begin
  FAltRem := pAltRem;
end;

function T099USU.GetVenPtn: string;
begin
  Result := FVenPtn;
end;

procedure T099USU.SetVenPtn(const pVenPtn: string);
begin
  FVenPtn := pVenPtn;
end;

function T099USU.GetVenPca: string;
begin
  Result := FVenPca;
end;

procedure T099USU.SetVenPca(const pVenPca: string);
begin
  FVenPca := pVenPca;
end;

function T099USU.GetVenLpi: string;
begin
  Result := FVenLpi;
end;

procedure T099USU.SetVenLpi(const pVenLpi: string);
begin
  FVenLpi := pVenLpi;
end;

function T099USU.GetVenPfp: string;
begin
  Result := FVenPfp;
end;

procedure T099USU.SetVenPfp(const pVenPfp: string);
begin
  FVenPfp := pVenPfp;
end;

function T099USU.GetPatDfl: string;
begin
  Result := FPatDfl;
end;

procedure T099USU.SetPatDfl(const pPatDfl: string);
begin
  FPatDfl := pPatDfl;
end;

function T099USU.GetVenPcd: string;
begin
  Result := FVenPcd;
end;

procedure T099USU.SetVenPcd(const pVenPcd: string);
begin
  FVenPcd := pVenPcd;
end;

function T099USU.GetMpcAct: string;
begin
  Result := FMpcAct;
end;

procedure T099USU.SetMpcAct(const pMpcAct: string);
begin
  FMpcAct := pMpcAct;
end;

function T099USU.GetCtbLtc: string;
begin
  Result := FCtbLtc;
end;

procedure T099USU.SetCtbLtc(const pCtbLtc: string);
begin
  FCtbLtc := pCtbLtc;
end;

function T099USU.GetPatTde: string;
begin
  Result := FPatTde;
end;

procedure T099USU.SetPatTde(const pPatTde: string);
begin
  FPatTde := pPatTde;
end;

function T099USU.GetVenScv: string;
begin
  Result := FVenScv;
end;

procedure T099USU.SetVenScv(const pVenScv: string);
begin
  FVenScv := pVenScv;
end;

function T099USU.GetConQar: string;
begin
  Result := FConQar;
end;

procedure T099USU.SetConQar(const pConQar: string);
begin
  FConQar := pConQar;
end;

function T099USU.GetUsuCfe: string;
begin
  Result := FUsuCfe;
end;

procedure T099USU.SetUsuCfe(const pUsuCfe: string);
begin
  FUsuCfe := pUsuCfe;
end;

function T099USU.GetCprScc: string;
begin
  Result := FCprScc;
end;

procedure T099USU.SetCprScc(const pCprScc: string);
begin
  FCprScc := pCprScc;
end;

function T099USU.GetVenAtv: string;
begin
  Result := FVenAtv;
end;

procedure T099USU.SetVenAtv(const pVenAtv: string);
begin
  FVenAtv := pVenAtv;
end;

function T099USU.GetVenAtf: string;
begin
  Result := FVenAtf;
end;

procedure T099USU.SetVenAtf(const pVenAtf: string);
begin
  FVenAtf := pVenAtf;
end;

function T099USU.GetImpRat: string;
begin
  Result := FImpRat;
end;

procedure T099USU.SetImpRat(const pImpRat: string);
begin
  FImpRat := pImpRat;
end;

function T099USU.GetDirNel: string;
begin
  Result := FDirNel;
end;

procedure T099USU.SetDirNel(const pDirNel: string);
begin
  FDirNel := pDirNel;
end;

function T099USU.GetVenCns: string;
begin
  Result := FVenCns;
end;

procedure T099USU.SetVenCns(const pVenCns: string);
begin
  FVenCns := pVenCns;
end;

function T099USU.GetMpcAcf: string;
begin
  Result := FMpcAcf;
end;

procedure T099USU.SetMpcAcf(const pMpcAcf: string);
begin
  FMpcAcf := pMpcAcf;
end;

function T099USU.GetMpcAcc: string;
begin
  Result := FMpcAcc;
end;

procedure T099USU.SetMpcAcc(const pMpcAcc: string);
begin
  FMpcAcc := pMpcAcc;
end;

function T099USU.GetMpcAca: string;
begin
  Result := FMpcAca;
end;

procedure T099USU.SetMpcAca(const pMpcAca: string);
begin
  FMpcAca := pMpcAca;
end;

function T099USU.GetDatSin: TDate;
begin
  Result := FDatSin;
end;

procedure T099USU.SetDatSin(const pDatSin: TDate);
begin
  FDatSin := pDatSin;
end;

function T099USU.GetHorSin: Integer;
begin
  Result := FHorSin;
end;

procedure T099USU.SetHorSin(const pHorSin: Integer);
begin
  FHorSin := pHorSin;
end;

function T099USU.GetVenAir: string;
begin
  Result := FVenAir;
end;

procedure T099USU.SetVenAir(const pVenAir: string);
begin
  FVenAir := pVenAir;
end;

function T099USU.GetAprSct: string;
begin
  Result := FAprSct;
end;

procedure T099USU.SetAprSct(const pAprSct: string);
begin
  FAprSct := pAprSct;
end;

function T099USU.GetPrjTso: string;
begin
  Result := FPrjTso;
end;

procedure T099USU.SetPrjTso(const pPrjTso: string);
begin
  FPrjTso := pPrjTso;
end;

function T099USU.GetCpoCpf: string;
begin
  Result := FCpoCpf;
end;

procedure T099USU.SetCpoCpf(const pCpoCpf: string);
begin
  FCpoCpf := pCpoCpf;
end;

function T099USU.GetCprRca: string;
begin
  Result := FCprRca;
end;

procedure T099USU.SetCprRca(const pCprRca: string);
begin
  FCprRca := pCprRca;
end;

function T099USU.GetCleQtd: string;
begin
  Result := FCleQtd;
end;

procedure T099USU.SetCleQtd(const pCleQtd: string);
begin
  FCleQtd := pCleQtd;
end;

function T099USU.GetClePrc: string;
begin
  Result := FClePrc;
end;

procedure T099USU.SetClePrc(const pClePrc: string);
begin
  FClePrc := pClePrc;
end;

function T099USU.GetConRec: string;
begin
  Result := FConRec;
end;

procedure T099USU.SetConRec(const pConRec: string);
begin
  FConRec := pConRec;
end;

function T099USU.GetVenSpp: string;
begin
  Result := FVenSpp;
end;

procedure T099USU.SetVenSpp(const pVenSpp: string);
begin
  FVenSpp := pVenSpp;
end;

function T099USU.GetPrdEpb: string;
begin
  Result := FPrdEpb;
end;

procedure T099USU.SetPrdEpb(const pPrdEpb: string);
begin
  FPrdEpb := pPrdEpb;
end;

function T099USU.GetVenAse: string;
begin
  Result := FVenAse;
end;

procedure T099USU.SetVenAse(const pVenAse: string);
begin
  FVenAse := pVenAse;
end;

function T099USU.GetVenIfc: string;
begin
  Result := FVenIfc;
end;

procedure T099USU.SetVenIfc(const pVenIfc: string);
begin
  FVenIfc := pVenIfc;
end;

function T099USU.GetDirCte: string;
begin
  Result := FDirCte;
end;

procedure T099USU.SetDirCte(const pDirCte: string);
begin
  FDirCte := pDirCte;
end;

function T099USU.GetCprIgc: string;
begin
  Result := FCprIgc;
end;

procedure T099USU.SetCprIgc(const pCprIgc: string);
begin
  FCprIgc := pCprIgc;
end;

function T099USU.GetCprAsc: string;
begin
  Result := FCprAsc;
end;

procedure T099USU.SetCprAsc(const pCprAsc: string);
begin
  FCprAsc := pCprAsc;
end;

function T099USU.GetCprAqc: string;
begin
  Result := FCprAqc;
end;

procedure T099USU.SetCprAqc(const pCprAqc: string);
begin
  FCprAqc := pCprAqc;
end;

function T099USU.GetTurTrb: Integer;
begin
  Result := FTurTrb;
end;

procedure T099USU.SetTurTrb(const pTurTrb: Integer);
begin
  FTurTrb := pTurTrb;
end;

function T099USU.GetCodCel: string;
begin
  Result := FCodCel;
end;

procedure T099USU.SetCodCel(const pCodCel: string);
begin
  FCodCel := pCodCel;
end;

function T099USU.GetPrdOpd: string;
begin
  Result := FPrdOpd;
end;

procedure T099USU.SetPrdOpd(const pPrdOpd: string);
begin
  FPrdOpd := pPrdOpd;
end;

function T099USU.GetOpdOrp: string;
begin
  Result := FOpdOrp;
end;

procedure T099USU.SetOpdOrp(const pOpdOrp: string);
begin
  FOpdOrp := pOpdOrp;
end;

function T099USU.GetVenCst: string;
begin
  Result := FVenCst;
end;

procedure T099USU.SetVenCst(const pVenCst: string);
begin
  FVenCst := pVenCst;
end;

function T099USU.GetCprCst: string;
begin
  Result := FCprCst;
end;

procedure T099USU.SetCprCst(const pCprCst: string);
begin
  FCprCst := pCprCst;
end;

function T099USU.GetDirNes: string;
begin
  Result := FDirNes;
end;

procedure T099USU.SetDirNes(const pDirNes: string);
begin
  FDirNes := pDirNes;
end;

function T099USU.GetCanNfe: string;
begin
  Result := FCanNfe;
end;

procedure T099USU.SetCanNfe(const pCanNfe: string);
begin
  FCanNfe := pCanNfe;
end;

function T099USU.GetVenSdg: string;
begin
  Result := FVenSdg;
end;

procedure T099USU.SetVenSdg(const pVenSdg: string);
begin
  FVenSdg := pVenSdg;
end;

function T099USU.GetDatAfi: string;
begin
  Result := FDatAfi;
end;

procedure T099USU.SetDatAfi(const pDatAfi: string);
begin
  FDatAfi := pDatAfi;
end;

function T099USU.GetIndAst: string;
begin
  Result := FIndAst;
end;

procedure T099USU.SetIndAst(const pIndAst: string);
begin
  FIndAst := pIndAst;
end;

function T099USU.GetAltInp: string;
begin
  Result := FAltInp;
end;

procedure T099USU.SetAltInp(const pAltInp: string);
begin
  FAltInp := pAltInp;
end;

function T099USU.GetCxbPgp: string;
begin
  Result := FCxbPgp;
end;

procedure T099USU.SetCxbPgp(const pCxbPgp: string);
begin
  FCxbPgp := pCxbPgp;
end;

function T099USU.GetAstOrp: string;
begin
  Result := FAstOrp;
end;

procedure T099USU.SetAstOrp(const pAstOrp: string);
begin
  FAstOrp := pAstOrp;
end;

function T099USU.GetAstSor: string;
begin
  Result := FAstSor;
end;

procedure T099USU.SetAstSor(const pAstSor: string);
begin
  FAstSor := pAstSor;
end;

function T099USU.GetAstNfv: string;
begin
  Result := FAstNfv;
end;

procedure T099USU.SetAstNfv(const pAstNfv: string);
begin
  FAstNfv := pAstNfv;
end;

function T099USU.GetAstPed: string;
begin
  Result := FAstPed;
end;

procedure T099USU.SetAstPed(const pAstPed: string);
begin
  FAstPed := pAstPed;
end;

function T099USU.GetRecAcd: string;
begin
  Result := FRecAcd;
end;

procedure T099USU.SetRecAcd(const pRecAcd: string);
begin
  FRecAcd := pRecAcd;
end;

function T099USU.GetPagAcd: string;
begin
  Result := FPagAcd;
end;

procedure T099USU.SetPagAcd(const pPagAcd: string);
begin
  FPagAcd := pPagAcd;
end;

function T099USU.GetPagDet: Integer;
begin
  Result := FPagDet;
end;

procedure T099USU.SetPagDet(const pPagDet: Integer);
begin
  FPagDet := pPagDet;
end;

function T099USU.GetMaxLgn: Integer;
begin
  Result := FMaxLgn;
end;

procedure T099USU.SetMaxLgn(const pMaxLgn: Integer);
begin
  FMaxLgn := pMaxLgn;
end;

function T099USU.GetParEsp: string;
begin
  Result := FParEsp;
end;

procedure T099USU.SetParEsp(const pParEsp: string);
begin
  FParEsp := pParEsp;
end;

function T099USU.GetVenCnp: string;
begin
  Result := FVenCnp;
end;

procedure T099USU.SetVenCnp(const pVenCnp: string);
begin
  FVenCnp := pVenCnp;
end;

function T099USU.GetIndMre: string;
begin
  Result := FIndMre;
end;

procedure T099USU.SetIndMre(const pIndMre: string);
begin
  FIndMre := pIndMre;
end;

function T099USU.GetAstPsi: string;
begin
  Result := FAstPsi;
end;

procedure T099USU.SetAstPsi(const pAstPsi: string);
begin
  FAstPsi := pAstPsi;
end;

function T099USU.GetAstEto: string;
begin
  Result := FAstEto;
end;

procedure T099USU.SetAstEto(const pAstEto: string);
begin
  FAstEto := pAstEto;
end;

function T099USU.GetExaOcp: string;
begin
  Result := FExaOcp;
end;

procedure T099USU.SetExaOcp(const pExaOcp: string);
begin
  FExaOcp := pExaOcp;
end;

function T099USU.GetVenAva: string;
begin
  Result := FVenAva;
end;

procedure T099USU.SetVenAva(const pVenAva: string);
begin
  FVenAva := pVenAva;
end;

function T099USU.GetManAge: string;
begin
  Result := FManAge;
end;

procedure T099USU.SetManAge(const pManAge: string);
begin
  FManAge := pManAge;
end;

function T099USU.GetConAge: string;
begin
  Result := FConAge;
end;

procedure T099USU.SetConAge(const pConAge: string);
begin
  FConAge := pConAge;
end;

function T099USU.GetPatEmp: string;
begin
  Result := FPatEmp;
end;

procedure T099USU.SetPatEmp(const pPatEmp: string);
begin
  FPatEmp := pPatEmp;
end;

function T099USU.GetAltMon: string;
begin
  Result := FAltMon;
end;

procedure T099USU.SetAltMon(const pAltMon: string);
begin
  FAltMon := pAltMon;
end;

function T099USU.GetAltEbq: string;
begin
  Result := FAltEbq;
end;

procedure T099USU.SetAltEbq(const pAltEbq: string);
begin
  FAltEbq := pAltEbq;
end;

function T099USU.GetAudPfa: string;
begin
  Result := FAudPfa;
end;

procedure T099USU.SetAudPfa(const pAudPfa: string);
begin
  FAudPfa := pAudPfa;
end;

function T099USU.GetAltNnu: string;
begin
  Result := FAltNnu;
end;

procedure T099USU.SetAltNnu(const pAltNnu: string);
begin
  FAltNnu := pAltNnu;
end;

function T099USU.GetSenApr: string;
begin
  Result := FSenApr;
end;

procedure T099USU.SetSenApr(const pSenApr: string);
begin
  FSenApr := pSenApr;
end;

function T099USU.GetCobPdj: string;
begin
  Result := FCobPdj;
end;

procedure T099USU.SetCobPdj(const pCobPdj: string);
begin
  FCobPdj := pCobPdj;
end;

function T099USU.GetCobAtc: string;
begin
  Result := FCobAtc;
end;

procedure T099USU.SetCobAtc(const pCobAtc: string);
begin
  FCobAtc := pCobAtc;
end;

function T099USU.GetAcrCcm: string;
begin
  Result := FAcrCcm;
end;

procedure T099USU.SetAcrCcm(const pAcrCcm: string);
begin
  FAcrCcm := pAcrCcm;
end;

function T099USU.GetPerExs: string;
begin
  Result := FPerExs;
end;

procedure T099USU.SetPerExs(const pPerExs: string);
begin
  FPerExs := pPerExs;
end;

function T099USU.GetPerFpc: Integer;
begin
  Result := FPerFpc;
end;

procedure T099USU.SetPerFpc(const pPerFpc: Integer);
begin
  FPerFpc := pPerFpc;
end;

function T099USU.GetUSU_CodFil: Integer;
begin
  Result := FUSU_CodFil;
end;

procedure T099USU.SetUSU_CodFil(const pUSU_CodFil: Integer);
begin
  FUSU_CodFil := pUSU_CodFil;
end;

function T099USU.GetUSU_MaiFOC: string;
begin
  Result := FUSU_MaiFOC;
end;

procedure T099USU.SetUSU_MaiFOC(const pUSU_MaiFOC: string);
begin
  FUSU_MaiFOC := pUSU_MaiFOC;
end;

function T099USU.GetUSU_NFOCEF: string;
begin
  Result := FUSU_NFOCEF;
end;

procedure T099USU.SetUSU_NFOCEF(const pUSU_NFOCEF: string);
begin
  FUSU_NFOCEF := pUSU_NFOCEF;
end;

function T099USU.GetUSU_NFOCNO: string;
begin
  Result := FUSU_NFOCNO;
end;

procedure T099USU.SetUSU_NFOCNO(const pUSU_NFOCNO: string);
begin
  FUSU_NFOCNO := pUSU_NFOCNO;
end;

function T099USU.GetUSU_ClaUsu: Integer;
begin
  Result := FUSU_ClaUsu;
end;

procedure T099USU.SetUSU_ClaUsu(const pUSU_ClaUsu: Integer);
begin
  FUSU_ClaUsu := pUSU_ClaUsu;
end;

function T099USU.GetUSU_NFOCUC: string;
begin
  Result := FUSU_NFOCUC;
end;

procedure T099USU.SetUSU_NFOCUC(const pUSU_NFOCUC: string);
begin
  FUSU_NFOCUC := pUSU_NFOCUC;
end;

function T099USU.GetUSU_EmaApr: string;
begin
  Result := FUSU_EmaApr;
end;

procedure T099USU.SetUSU_EmaApr(const pUSU_EmaApr: string);
begin
  FUSU_EmaApr := pUSU_EmaApr;
end;

function T099USU.GetUSU_FecNFRem: string;
begin
  Result := FUSU_FecNFRem;
end;

procedure T099USU.SetUSU_FecNFRem(const pUSU_FecNFRem: string);
begin
  FUSU_FecNFRem := pUSU_FecNFRem;
end;

function T099USU.GetUSU_AvsCnfDsp: string;
begin
  Result := FUSU_AvsCnfDsp;
end;

procedure T099USU.SetUSU_AvsCnfDsp(const pUSU_AvsCnfDsp: string);
begin
  FUSU_AvsCnfDsp := pUSU_AvsCnfDsp;
end;

function T099USU.GetUSU_AbrLibVen: string;
begin
  Result := FUSU_AbrLibVen;
end;

procedure T099USU.SetUSU_AbrLibVen(const pUSU_AbrLibVen: string);
begin
  FUSU_AbrLibVen := pUSU_AbrLibVen;
end;

function T099USU.GetUSU_AviDia: Integer;
begin
  Result := FUSU_AviDia;
end;

procedure T099USU.SetUSU_AviDia(const pUSU_AviDia: Integer);
begin
  FUSU_AviDia := pUSU_AviDia;
end;

function T099USU.GetCodEmpOLD: Integer;
begin
  Result := FCodEmpOLD;
end;

procedure T099USU.SetCodEmpOLD(const pCodEmp: Integer);
begin
  FCodEmpOLD := pCodEmp;
end;

function T099USU.GetCodUsuOLD: Integer;
begin
  Result := FCodUsuOLD;
end;

procedure T099USU.SetCodUsuOLD(const pCodUsu: Integer);
begin
  FCodUsuOLD := pCodUsu;
end;

function T099USU.GetNumEmpOLD: Integer;
begin
  Result := FNumEmpOLD;
end;

procedure T099USU.SetNumEmpOLD(const pNumEmp: Integer);
begin
  FNumEmpOLD := pNumEmp;
end;

function T099USU.GetTipColOLD: Integer;
begin
  Result := FTipColOLD;
end;

procedure T099USU.SetTipColOLD(const pTipCol: Integer);
begin
  FTipColOLD := pTipCol;
end;

function T099USU.GetNumCadOLD: Integer;
begin
  Result := FNumCadOLD;
end;

procedure T099USU.SetNumCadOLD(const pNumCad: Integer);
begin
  FNumCadOLD := pNumCad;
end;

function T099USU.GetSupImeOLD: Integer;
begin
  Result := FSupImeOLD;
end;

procedure T099USU.SetSupImeOLD(const pSupIme: Integer);
begin
  FSupImeOLD := pSupIme;
end;

function T099USU.GetCodCcuOLD: string;
begin
  Result := FCodCcuOLD;
end;

procedure T099USU.SetCodCcuOLD(const pCodCcu: string);
begin
  FCodCcuOLD := pCodCcu;
end;

function T099USU.GetIntNetOLD: string;
begin
  Result := FIntNetOLD;
end;

procedure T099USU.SetIntNetOLD(const pIntNet: string);
begin
  FIntNetOLD := pIntNet;
end;

function T099USU.GetEmpAtiOLD: Integer;
begin
  Result := FEmpAtiOLD;
end;

procedure T099USU.SetEmpAtiOLD(const pEmpAti: Integer);
begin
  FEmpAtiOLD := pEmpAti;
end;

function T099USU.GetFilAtiOLD: Integer;
begin
  Result := FFilAtiOLD;
end;

procedure T099USU.SetFilAtiOLD(const pFilAti: Integer);
begin
  FFilAtiOLD := pFilAti;
end;

function T099USU.GetGerAusOLD: string;
begin
  Result := FGerAusOLD;
end;

procedure T099USU.SetGerAusOLD(const pGerAus: string);
begin
  FGerAusOLD := pGerAus;
end;

function T099USU.GetCptRelOLD: string;
begin
  Result := FCptRelOLD;
end;

procedure T099USU.SetCptRelOLD(const pCptRel: string);
begin
  FCptRelOLD := pCptRel;
end;

function T099USU.GetFpgObrOLD: string;
begin
  Result := FFpgObrOLD;
end;

procedure T099USU.SetFpgObrOLD(const pFpgObr: string);
begin
  FFpgObrOLD := pFpgObr;
end;

function T099USU.GetPstAtiOLD: Integer;
begin
  Result := FPstAtiOLD;
end;

procedure T099USU.SetPstAtiOLD(const pPstAti: Integer);
begin
  FPstAtiOLD := pPstAti;
end;

function T099USU.GetVenTbpOLD: string;
begin
  Result := FVenTbpOLD;
end;

procedure T099USU.SetVenTbpOLD(const pVenTbp: string);
begin
  FVenTbpOLD := pVenTbp;
end;

function T099USU.GetVenNspOLD: string;
begin
  Result := FVenNspOLD;
end;

procedure T099USU.SetVenNspOLD(const pVenNsp: string);
begin
  FVenNspOLD := pVenNsp;
end;

function T099USU.GetVenParOLD: string;
begin
  Result := FVenParOLD;
end;

procedure T099USU.SetVenParOLD(const pVenPar: string);
begin
  FVenParOLD := pVenPar;
end;

function T099USU.GetVenPapOLD: string;
begin
  Result := FVenPapOLD;
end;

procedure T099USU.SetVenPapOLD(const pVenPap: string);
begin
  FVenPapOLD := pVenPap;
end;

function T099USU.GetVenPdsOLD: string;
begin
  Result := FVenPdsOLD;
end;

procedure T099USU.SetVenPdsOLD(const pVenPds: string);
begin
  FVenPdsOLD := pVenPds;
end;

function T099USU.GetVenPipOLD: string;
begin
  Result := FVenPipOLD;
end;

procedure T099USU.SetVenPipOLD(const pVenPip: string);
begin
  FVenPipOLD := pVenPip;
end;

function T099USU.GetVenPicOLD: string;
begin
  Result := FVenPicOLD;
end;

procedure T099USU.SetVenPicOLD(const pVenPic: string);
begin
  FVenPicOLD := pVenPic;
end;

function T099USU.GetVenPcoOLD: string;
begin
  Result := FVenPcoOLD;
end;

procedure T099USU.SetVenPcoOLD(const pVenPco: string);
begin
  FVenPcoOLD := pVenPco;
end;

function T099USU.GetVenPisOLD: string;
begin
  Result := FVenPisOLD;
end;

procedure T099USU.SetVenPisOLD(const pVenPis: string);
begin
  FVenPisOLD := pVenPis;
end;

function T099USU.GetVenPirOLD: string;
begin
  Result := FVenPirOLD;
end;

procedure T099USU.SetVenPirOLD(const pVenPir: string);
begin
  FVenPirOLD := pVenPir;
end;

function T099USU.GetVenPinOLD: string;
begin
  Result := FVenPinOLD;
end;

procedure T099USU.SetVenPinOLD(const pVenPin: string);
begin
  FVenPinOLD := pVenPin;
end;

function T099USU.GetVenPfuOLD: string;
begin
  Result := FVenPfuOLD;
end;

procedure T099USU.SetVenPfuOLD(const pVenPfu: string);
begin
  FVenPfuOLD := pVenPfu;
end;

function T099USU.GetVenAunOLD: string;
begin
  Result := FVenAunOLD;
end;

procedure T099USU.SetVenAunOLD(const pVenAun: string);
begin
  FVenAunOLD := pVenAun;
end;

function T099USU.GetVenAtpOLD: string;
begin
  Result := FVenAtpOLD;
end;

procedure T099USU.SetVenAtpOLD(const pVenAtp: string);
begin
  FVenAtpOLD := pVenAtp;
end;

function T099USU.GetVenAclOLD: string;
begin
  Result := FVenAclOLD;
end;

procedure T099USU.SetVenAclOLD(const pVenAcl: string);
begin
  FVenAclOLD := pVenAcl;
end;

function T099USU.GetVenAreOLD: string;
begin
  Result := FVenAreOLD;
end;

procedure T099USU.SetVenAreOLD(const pVenAre: string);
begin
  FVenAreOLD := pVenAre;
end;

function T099USU.GetVenAspOLD: string;
begin
  Result := FVenAspOLD;
end;

procedure T099USU.SetVenAspOLD(const pVenAsp: string);
begin
  FVenAspOLD := pVenAsp;
end;

function T099USU.GetVenLpdOLD: string;
begin
  Result := FVenLpdOLD;
end;

procedure T099USU.SetVenLpdOLD(const pVenLpd: string);
begin
  FVenLpdOLD := pVenLpd;
end;

function T099USU.GetVenAcvOLD: string;
begin
  Result := FVenAcvOLD;
end;

procedure T099USU.SetVenAcvOLD(const pVenAcv: string);
begin
  FVenAcvOLD := pVenAcv;
end;

function T099USU.GetVenAnsOLD: string;
begin
  Result := FVenAnsOLD;
end;

procedure T099USU.SetVenAnsOLD(const pVenAns: string);
begin
  FVenAnsOLD := pVenAns;
end;

function T099USU.GetVenLnsOLD: string;
begin
  Result := FVenLnsOLD;
end;

procedure T099USU.SetVenLnsOLD(const pVenLns: string);
begin
  FVenLnsOLD := pVenLns;
end;

function T099USU.GetVenAsrOLD: string;
begin
  Result := FVenAsrOLD;
end;

procedure T099USU.SetVenAsrOLD(const pVenAsr: string);
begin
  FVenAsrOLD := pVenAsr;
end;

function T099USU.GetVenRatOLD: string;
begin
  Result := FVenRatOLD;
end;

procedure T099USU.SetVenRatOLD(const pVenRat: string);
begin
  FVenRatOLD := pVenRat;
end;

function T099USU.GetVenPaeOLD: string;
begin
  Result := FVenPaeOLD;
end;

procedure T099USU.SetVenPaeOLD(const pVenPae: string);
begin
  FVenPaeOLD := pVenPae;
end;

function T099USU.GetVenAdgOLD: string;
begin
  Result := FVenAdgOLD;
end;

procedure T099USU.SetVenAdgOLD(const pVenAdg: string);
begin
  FVenAdgOLD := pVenAdg;
end;

function T099USU.GetVenApiOLD: string;
begin
  Result := FVenApiOLD;
end;

procedure T099USU.SetVenApiOLD(const pVenApi: string);
begin
  FVenApiOLD := pVenApi;
end;

function T099USU.GetEstAesOLD: string;
begin
  Result := FEstAesOLD;
end;

procedure T099USU.SetEstAesOLD(const pEstAes: string);
begin
  FEstAesOLD := pEstAes;
end;

function T099USU.GetEstRatOLD: string;
begin
  Result := FEstRatOLD;
end;

procedure T099USU.SetEstRatOLD(const pEstRat: string);
begin
  FEstRatOLD := pEstRat;
end;

function T099USU.GetEstPlpOLD: string;
begin
  Result := FEstPlpOLD;
end;

procedure T099USU.SetEstPlpOLD(const pEstPlp: string);
begin
  FEstPlpOLD := pEstPlp;
end;

function T099USU.GetRecPgrOLD: string;
begin
  Result := FRecPgrOLD;
end;

procedure T099USU.SetRecPgrOLD(const pRecPgr: string);
begin
  FRecPgrOLD := pRecPgr;
end;

function T099USU.GetRecAvrOLD: string;
begin
  Result := FRecAvrOLD;
end;

procedure T099USU.SetRecAvrOLD(const pRecAvr: string);
begin
  FRecAvrOLD := pRecAvr;
end;

function T099USU.GetRecAvlOLD: string;
begin
  Result := FRecAvlOLD;
end;

procedure T099USU.SetRecAvlOLD(const pRecAvl: string);
begin
  FRecAvlOLD := pRecAvl;
end;

function T099USU.GetRecRatOLD: string;
begin
  Result := FRecRatOLD;
end;

procedure T099USU.SetRecRatOLD(const pRecRat: string);
begin
  FRecRatOLD := pRecRat;
end;

function T099USU.GetCprMacOLD: Double;
begin
  Result := FCprMacOLD;
end;

procedure T099USU.SetCprMacOLD(const pCprMac: Double);
begin
  FCprMacOLD := pCprMac;
end;

function T099USU.GetCprMocOLD: Double;
begin
  Result := FCprMocOLD;
end;

procedure T099USU.SetCprMocOLD(const pCprMoc: Double);
begin
  FCprMocOLD := pCprMoc;
end;

function T099USU.GetCprPapOLD: string;
begin
  Result := FCprPapOLD;
end;

procedure T099USU.SetCprPapOLD(const pCprPap: string);
begin
  FCprPapOLD := pCprPap;
end;

function T099USU.GetCprPdsOLD: string;
begin
  Result := FCprPdsOLD;
end;

procedure T099USU.SetCprPdsOLD(const pCprPds: string);
begin
  FCprPdsOLD := pCprPds;
end;

function T099USU.GetCprPipOLD: string;
begin
  Result := FCprPipOLD;
end;

procedure T099USU.SetCprPipOLD(const pCprPip: string);
begin
  FCprPipOLD := pCprPip;
end;

function T099USU.GetCprPicOLD: string;
begin
  Result := FCprPicOLD;
end;

procedure T099USU.SetCprPicOLD(const pCprPic: string);
begin
  FCprPicOLD := pCprPic;
end;

function T099USU.GetCprPisOLD: string;
begin
  Result := FCprPisOLD;
end;

procedure T099USU.SetCprPisOLD(const pCprPis: string);
begin
  FCprPisOLD := pCprPis;
end;

function T099USU.GetCprPirOLD: string;
begin
  Result := FCprPirOLD;
end;

procedure T099USU.SetCprPirOLD(const pCprPir: string);
begin
  FCprPirOLD := pCprPir;
end;

function T099USU.GetCprPinOLD: string;
begin
  Result := FCprPinOLD;
end;

procedure T099USU.SetCprPinOLD(const pCprPin: string);
begin
  FCprPinOLD := pCprPin;
end;

function T099USU.GetCprPfuOLD: string;
begin
  Result := FCprPfuOLD;
end;

procedure T099USU.SetCprPfuOLD(const pCprPfu: string);
begin
  FCprPfuOLD := pCprPfu;
end;

function T099USU.GetCprVnoOLD: Double;
begin
  Result := FCprVnoOLD;
end;

procedure T099USU.SetCprVnoOLD(const pCprVno: Double);
begin
  FCprVnoOLD := pCprVno;
end;

function T099USU.GetCprQnoOLD: Double;
begin
  Result := FCprQnoOLD;
end;

procedure T099USU.SetCprQnoOLD(const pCprQno: Double);
begin
  FCprQnoOLD := pCprQno;
end;

function T099USU.GetCprVdnOLD: Double;
begin
  Result := FCprVdnOLD;
end;

procedure T099USU.SetCprVdnOLD(const pCprVdn: Double);
begin
  FCprVdnOLD := pCprVdn;
end;

function T099USU.GetCprPdnOLD: Double;
begin
  Result := FCprPdnOLD;
end;

procedure T099USU.SetCprPdnOLD(const pCprPdn: Double);
begin
  FCprPdnOLD := pCprPdn;
end;

function T099USU.GetCprApdOLD: string;
begin
  Result := FCprApdOLD;
end;

procedure T099USU.SetCprApdOLD(const pCprApd: string);
begin
  FCprApdOLD := pCprApd;
end;

function T099USU.GetCprAfoOLD: string;
begin
  Result := FCprAfoOLD;
end;

procedure T099USU.SetCprAfoOLD(const pCprAfo: string);
begin
  FCprAfoOLD := pCprAfo;
end;

function T099USU.GetCprAocOLD: string;
begin
  Result := FCprAocOLD;
end;

procedure T099USU.SetCprAocOLD(const pCprAoc: string);
begin
  FCprAocOLD := pCprAoc;
end;

function T099USU.GetCprAccOLD: string;
begin
  Result := FCprAccOLD;
end;

procedure T099USU.SetCprAccOLD(const pCprAcc: string);
begin
  FCprAccOLD := pCprAcc;
end;

function T099USU.GetCprAneOLD: string;
begin
  Result := FCprAneOLD;
end;

procedure T099USU.SetCprAneOLD(const pCprAne: string);
begin
  FCprAneOLD := pCprAne;
end;

function T099USU.GetCprRatOLD: string;
begin
  Result := FCprRatOLD;
end;

procedure T099USU.SetCprRatOLD(const pCprRat: string);
begin
  FCprRatOLD := pCprRat;
end;

function T099USU.GetCprAdgOLD: string;
begin
  Result := FCprAdgOLD;
end;

procedure T099USU.SetCprAdgOLD(const pCprAdg: string);
begin
  FCprAdgOLD := pCprAdg;
end;

function T099USU.GetCprAcfOLD: string;
begin
  Result := FCprAcfOLD;
end;

procedure T099USU.SetCprAcfOLD(const pCprAcf: string);
begin
  FCprAcfOLD := pCprAcf;
end;

function T099USU.GetCprAtxOLD: string;
begin
  Result := FCprAtxOLD;
end;

procedure T099USU.SetCprAtxOLD(const pCprAtx: string);
begin
  FCprAtxOLD := pCprAtx;
end;

function T099USU.GetCprAhfOLD: string;
begin
  Result := FCprAhfOLD;
end;

procedure T099USU.SetCprAhfOLD(const pCprAhf: string);
begin
  FCprAhfOLD := pCprAhf;
end;

function T099USU.GetPagMaxOLD: Double;
begin
  Result := FPagMaxOLD;
end;

procedure T099USU.SetPagMaxOLD(const pPagMax: Double);
begin
  FPagMaxOLD := pPagMax;
end;

function T099USU.GetPagPgrOLD: string;
begin
  Result := FPagPgrOLD;
end;

procedure T099USU.SetPagPgrOLD(const pPagPgr: string);
begin
  FPagPgrOLD := pPagPgr;
end;

function T099USU.GetPagAvpOLD: string;
begin
  Result := FPagAvpOLD;
end;

procedure T099USU.SetPagAvpOLD(const pPagAvp: string);
begin
  FPagAvpOLD := pPagAvp;
end;

function T099USU.GetPagAvlOLD: string;
begin
  Result := FPagAvlOLD;
end;

procedure T099USU.SetPagAvlOLD(const pPagAvl: string);
begin
  FPagAvlOLD := pPagAvl;
end;

function T099USU.GetPagEevOLD: string;
begin
  Result := FPagEevOLD;
end;

procedure T099USU.SetPagEevOLD(const pPagEev: string);
begin
  FPagEevOLD := pPagEev;
end;

function T099USU.GetPagRatOLD: string;
begin
  Result := FPagRatOLD;
end;

procedure T099USU.SetPagRatOLD(const pPagRat: string);
begin
  FPagRatOLD := pPagRat;
end;

function T099USU.GetCxbDcpOLD: Integer;
begin
  Result := FCxbDcpOLD;
end;

procedure T099USU.SetCxbDcpOLD(const pCxbDcp: Integer);
begin
  FCxbDcpOLD := pCxbDcp;
end;

function T099USU.GetCxbApmOLD: string;
begin
  Result := FCxbApmOLD;
end;

procedure T099USU.SetCxbApmOLD(const pCxbApm: string);
begin
  FCxbApmOLD := pCxbApm;
end;

function T099USU.GetCxbRatOLD: string;
begin
  Result := FCxbRatOLD;
end;

procedure T099USU.SetCxbRatOLD(const pCxbRat: string);
begin
  FCxbRatOLD := pCxbRat;
end;

function T099USU.GetCtbDacOLD: string;
begin
  Result := FCtbDacOLD;
end;

procedure T099USU.SetCtbDacOLD(const pCtbDac: string);
begin
  FCtbDacOLD := pCtbDac;
end;

function T099USU.GetCtbAltOLD: string;
begin
  Result := FCtbAltOLD;
end;

procedure T099USU.SetCtbAltOLD(const pCtbAlt: string);
begin
  FCtbAltOLD := pCtbAlt;
end;

function T099USU.GetCtbCltOLD: string;
begin
  Result := FCtbCltOLD;
end;

procedure T099USU.SetCtbCltOLD(const pCtbClt: string);
begin
  FCtbCltOLD := pCtbClt;
end;

function T099USU.GetCtbAlcOLD: string;
begin
  Result := FCtbAlcOLD;
end;

procedure T099USU.SetCtbAlcOLD(const pCtbAlc: string);
begin
  FCtbAlcOLD := pCtbAlc;
end;

function T099USU.GetCtbClcOLD: string;
begin
  Result := FCtbClcOLD;
end;

procedure T099USU.SetCtbClcOLD(const pCtbClc: string);
begin
  FCtbClcOLD := pCtbClc;
end;

function T099USU.GetCtbArtOLD: string;
begin
  Result := FCtbArtOLD;
end;

procedure T099USU.SetCtbArtOLD(const pCtbArt: string);
begin
  FCtbArtOLD := pCtbArt;
end;

function T099USU.GetCtbCrtOLD: string;
begin
  Result := FCtbCrtOLD;
end;

procedure T099USU.SetCtbCrtOLD(const pCtbCrt: string);
begin
  FCtbCrtOLD := pCtbCrt;
end;

function T099USU.GetCtbAorOLD: string;
begin
  Result := FCtbAorOLD;
end;

procedure T099USU.SetCtbAorOLD(const pCtbAor: string);
begin
  FCtbAorOLD := pCtbAor;
end;

function T099USU.GetCtbCorOLD: string;
begin
  Result := FCtbCorOLD;
end;

procedure T099USU.SetCtbCorOLD(const pCtbCor: string);
begin
  FCtbCorOLD := pCtbCor;
end;

function T099USU.GetCtbActOLD: string;
begin
  Result := FCtbActOLD;
end;

procedure T099USU.SetCtbActOLD(const pCtbAct: string);
begin
  FCtbActOLD := pCtbAct;
end;

function T099USU.GetCtbAhpOLD: string;
begin
  Result := FCtbAhpOLD;
end;

procedure T099USU.SetCtbAhpOLD(const pCtbAhp: string);
begin
  FCtbAhpOLD := pCtbAhp;
end;

function T099USU.GetCtbAcfOLD: string;
begin
  Result := FCtbAcfOLD;
end;

procedure T099USU.SetCtbAcfOLD(const pCtbAcf: string);
begin
  FCtbAcfOLD := pCtbAcf;
end;

function T099USU.GetCtbLflOLD: string;
begin
  Result := FCtbLflOLD;
end;

procedure T099USU.SetCtbLflOLD(const pCtbLfl: string);
begin
  FCtbLflOLD := pCtbLfl;
end;

function T099USU.GetCtbZerOLD: string;
begin
  Result := FCtbZerOLD;
end;

procedure T099USU.SetCtbZerOLD(const pCtbZer: string);
begin
  FCtbZerOLD := pCtbZer;
end;

function T099USU.GetPrdDpaOLD: Integer;
begin
  Result := FPrdDpaOLD;
end;

procedure T099USU.SetPrdDpaOLD(const pPrdDpa: Integer);
begin
  FPrdDpaOLD := pPrdDpa;
end;

function T099USU.GetPrdDppOLD: Integer;
begin
  Result := FPrdDppOLD;
end;

procedure T099USU.SetPrdDppOLD(const pPrdDpp: Integer);
begin
  FPrdDppOLD := pPrdDpp;
end;

function T099USU.GetSitUsuOLD: string;
begin
  Result := FSitUsuOLD;
end;

procedure T099USU.SetSitUsuOLD(const pSitUsu: string);
begin
  FSitUsuOLD := pSitUsu;
end;

function T099USU.GetCodMotOLD: Integer;
begin
  Result := FCodMotOLD;
end;

procedure T099USU.SetCodMotOLD(const pCodMot: Integer);
begin
  FCodMotOLD := pCodMot;
end;

function T099USU.GetObsMotOLD: string;
begin
  Result := FObsMotOLD;
end;

procedure T099USU.SetObsMotOLD(const pObsMot: string);
begin
  FObsMotOLD := pObsMot;
end;

function T099USU.GetUsuMotOLD: Integer;
begin
  Result := FUsuMotOLD;
end;

procedure T099USU.SetUsuMotOLD(const pUsuMot: Integer);
begin
  FUsuMotOLD := pUsuMot;
end;

function T099USU.GetDatMotOLD: TDate;
begin
  Result := FDatMotOLD;
end;

procedure T099USU.SetDatMotOLD(const pDatMot: TDate);
begin
  FDatMotOLD := pDatMot;
end;

function T099USU.GetHorMotOLD: Integer;
begin
  Result := FHorMotOLD;
end;

procedure T099USU.SetHorMotOLD(const pHorMot: Integer);
begin
  FHorMotOLD := pHorMot;
end;

function T099USU.GetUsuGerOLD: Integer;
begin
  Result := FUsuGerOLD;
end;

procedure T099USU.SetUsuGerOLD(const pUsuGer: Integer);
begin
  FUsuGerOLD := pUsuGer;
end;

function T099USU.GetDatGerOLD: TDate;
begin
  Result := FDatGerOLD;
end;

procedure T099USU.SetDatGerOLD(const pDatGer: TDate);
begin
  FDatGerOLD := pDatGer;
end;

function T099USU.GetHorGerOLD: Integer;
begin
  Result := FHorGerOLD;
end;

procedure T099USU.SetHorGerOLD(const pHorGer: Integer);
begin
  FHorGerOLD := pHorGer;
end;

function T099USU.GetCodCliOLD: Integer;
begin
  Result := FCodCliOLD;
end;

procedure T099USU.SetCodCliOLD(const pCodCli: Integer);
begin
  FCodCliOLD := pCodCli;
end;

function T099USU.GetCodForOLD: Integer;
begin
  Result := FCodForOLD;
end;

procedure T099USU.SetCodForOLD(const pCodFor: Integer);
begin
  FCodForOLD := pCodFor;
end;

function T099USU.GetCodRepOLD: Integer;
begin
  Result := FCodRepOLD;
end;

procedure T099USU.SetCodRepOLD(const pCodRep: Integer);
begin
  FCodRepOLD := pCodRep;
end;

function T099USU.GetCodTraOLD: Integer;
begin
  Result := FCodTraOLD;
end;

procedure T099USU.SetCodTraOLD(const pCodTra: Integer);
begin
  FCodTraOLD := pCodTra;
end;

function T099USU.GetCodPorOLD: string;
begin
  Result := FCodPorOLD;
end;

procedure T099USU.SetCodPorOLD(const pCodPor: string);
begin
  FCodPorOLD := pCodPor;
end;

function T099USU.GetVenFqpOLD: string;
begin
  Result := FVenFqpOLD;
end;

procedure T099USU.SetVenFqpOLD(const pVenFqp: string);
begin
  FVenFqpOLD := pVenFqp;
end;

function T099USU.GetCprPqtOLD: string;
begin
  Result := FCprPqtOLD;
end;

procedure T099USU.SetCprPqtOLD(const pCprPqt: string);
begin
  FCprPqtOLD := pCprPqt;
end;

function T099USU.GetPorObrOLD: string;
begin
  Result := FPorObrOLD;
end;

procedure T099USU.SetPorObrOLD(const pPorObr: string);
begin
  FPorObrOLD := pPorObr;
end;

function T099USU.GetVenLpvOLD: string;
begin
  Result := FVenLpvOLD;
end;

procedure T099USU.SetVenLpvOLD(const pVenLpv: string);
begin
  FVenLpvOLD := pVenLpv;
end;

function T099USU.GetVenLpfOLD: string;
begin
  Result := FVenLpfOLD;
end;

procedure T099USU.SetVenLpfOLD(const pVenLpf: string);
begin
  FVenLpfOLD := pVenLpf;
end;

function T099USU.GetVenLpcOLD: string;
begin
  Result := FVenLpcOLD;
end;

procedure T099USU.SetVenLpcOLD(const pVenLpc: string);
begin
  FVenLpcOLD := pVenLpc;
end;

function T099USU.GetVenLppOLD: string;
begin
  Result := FVenLppOLD;
end;

procedure T099USU.SetVenLppOLD(const pVenLpp: string);
begin
  FVenLppOLD := pVenLpp;
end;

function T099USU.GetCprApiOLD: string;
begin
  Result := FCprApiOLD;
end;

procedure T099USU.SetCprApiOLD(const pCprApi: string);
begin
  FCprApiOLD := pCprApi;
end;

function T099USU.GetEstGsaOLD: string;
begin
  Result := FEstGsaOLD;
end;

procedure T099USU.SetEstGsaOLD(const pEstGsa: string);
begin
  FEstGsaOLD := pEstGsa;
end;

function T099USU.GetEstAdrOLD: string;
begin
  Result := FEstAdrOLD;
end;

procedure T099USU.SetEstAdrOLD(const pEstAdr: string);
begin
  FEstAdrOLD := pEstAdr;
end;

function T099USU.GetEstAgcOLD: string;
begin
  Result := FEstAgcOLD;
end;

procedure T099USU.SetEstAgcOLD(const pEstAgc: string);
begin
  FEstAgcOLD := pEstAgc;
end;

function T099USU.GetVenLpaOLD: string;
begin
  Result := FVenLpaOLD;
end;

procedure T099USU.SetVenLpaOLD(const pVenLpa: string);
begin
  FVenLpaOLD := pVenLpa;
end;

function T099USU.GetPrjLfdOLD: string;
begin
  Result := FPrjLfdOLD;
end;

procedure T099USU.SetPrjLfdOLD(const pPrjLfd: string);
begin
  FPrjLfdOLD := pPrjLfd;
end;

function T099USU.GetDisRraOLD: string;
begin
  Result := FDisRraOLD;
end;

procedure T099USU.SetDisRraOLD(const pDisRra: string);
begin
  FDisRraOLD := pDisRra;
end;

function T099USU.GetDisInrOLD: string;
begin
  Result := FDisInrOLD;
end;

procedure T099USU.SetDisInrOLD(const pDisInr: string);
begin
  FDisInrOLD := pDisInr;
end;

function T099USU.GetDisEnrOLD: string;
begin
  Result := FDisEnrOLD;
end;

procedure T099USU.SetDisEnrOLD(const pDisEnr: string);
begin
  FDisEnrOLD := pDisEnr;
end;

function T099USU.GetCprFpoOLD: string;
begin
  Result := FCprFpoOLD;
end;

procedure T099USU.SetCprFpoOLD(const pCprFpo: string);
begin
  FCprFpoOLD := pCprFpo;
end;

function T099USU.GetRecArfOLD: string;
begin
  Result := FRecArfOLD;
end;

procedure T099USU.SetRecArfOLD(const pRecArf: string);
begin
  FRecArfOLD := pRecArf;
end;

function T099USU.GetPagArfOLD: string;
begin
  Result := FPagArfOLD;
end;

procedure T099USU.SetPagArfOLD(const pPagArf: string);
begin
  FPagArfOLD := pPagArf;
end;

function T099USU.GetCapArfOLD: string;
begin
  Result := FCapArfOLD;
end;

procedure T099USU.SetCapArfOLD(const pCapArf: string);
begin
  FCapArfOLD := pCapArf;
end;

function T099USU.GetCxbArfOLD: string;
begin
  Result := FCxbArfOLD;
end;

procedure T099USU.SetCxbArfOLD(const pCxbArf: string);
begin
  FCxbArfOLD := pCxbArf;
end;

function T099USU.GetCtbEltOLD: string;
begin
  Result := FCtbEltOLD;
end;

procedure T099USU.SetCtbEltOLD(const pCtbElt: string);
begin
  FCtbEltOLD := pCtbElt;
end;

function T099USU.GetCtbElcOLD: string;
begin
  Result := FCtbElcOLD;
end;

procedure T099USU.SetCtbElcOLD(const pCtbElc: string);
begin
  FCtbElcOLD := pCtbElc;
end;

function T099USU.GetAprDftOLD: string;
begin
  Result := FAprDftOLD;
end;

procedure T099USU.SetAprDftOLD(const pAprDft: string);
begin
  FAprDftOLD := pAprDft;
end;

function T099USU.GetAprDocOLD: string;
begin
  Result := FAprDocOLD;
end;

procedure T099USU.SetAprDocOLD(const pAprDoc: string);
begin
  FAprDocOLD := pAprDoc;
end;

function T099USU.GetPrjNusOLD: string;
begin
  Result := FPrjNusOLD;
end;

procedure T099USU.SetPrjNusOLD(const pPrjNus: string);
begin
  FPrjNusOLD := pPrjNus;
end;

function T099USU.GetCprPecOLD: string;
begin
  Result := FCprPecOLD;
end;

procedure T099USU.SetCprPecOLD(const pCprPec: string);
begin
  FCprPecOLD := pCprPec;
end;

function T099USU.GetCprFocOLD: Integer;
begin
  Result := FCprFocOLD;
end;

procedure T099USU.SetCprFocOLD(const pCprFoc: Integer);
begin
  FCprFocOLD := pCprFoc;
end;

function T099USU.GetCprFcpOLD: Integer;
begin
  Result := FCprFcpOLD;
end;

procedure T099USU.SetCprFcpOLD(const pCprFcp: Integer);
begin
  FCprFcpOLD := pCprFcp;
end;

function T099USU.GetVenPofOLD: string;
begin
  Result := FVenPofOLD;
end;

procedure T099USU.SetVenPofOLD(const pVenPof: string);
begin
  FVenPofOLD := pVenPof;
end;

function T099USU.GetCprPscOLD: string;
begin
  Result := FCprPscOLD;
end;

procedure T099USU.SetCprPscOLD(const pCprPsc: string);
begin
  FCprPscOLD := pCprPsc;
end;

function T099USU.GetMltLgnOLD: string;
begin
  Result := FMltLgnOLD;
end;

procedure T099USU.SetMltLgnOLD(const pMltLgn: string);
begin
  FMltLgnOLD := pMltLgn;
end;

function T099USU.GetNomSerOLD: string;
begin
  Result := FNomSerOLD;
end;

procedure T099USU.SetNomSerOLD(const pNomSer: string);
begin
  FNomSerOLD := pNomSer;
end;

function T099USU.GetPorSerOLD: Integer;
begin
  Result := FPorSerOLD;
end;

procedure T099USU.SetPorSerOLD(const pPorSer: Integer);
begin
  FPorSerOLD := pPorSer;
end;

function T099USU.GetAutUsuOLD: string;
begin
  Result := FAutUsuOLD;
end;

procedure T099USU.SetAutUsuOLD(const pAutUsu: string);
begin
  FAutUsuOLD := pAutUsu;
end;

function T099USU.GetUsuAutOLD: string;
begin
  Result := FUsuAutOLD;
end;

procedure T099USU.SetUsuAutOLD(const pUsuAut: string);
begin
  FUsuAutOLD := pUsuAut;
end;

function T099USU.GetSenAutOLD: string;
begin
  Result := FSenAutOLD;
end;

procedure T099USU.SetSenAutOLD(const pSenAut: string);
begin
  FSenAutOLD := pSenAut;
end;

function T099USU.GetAltRemOLD: string;
begin
  Result := FAltRemOLD;
end;

procedure T099USU.SetAltRemOLD(const pAltRem: string);
begin
  FAltRemOLD := pAltRem;
end;

function T099USU.GetVenPtnOLD: string;
begin
  Result := FVenPtnOLD;
end;

procedure T099USU.SetVenPtnOLD(const pVenPtn: string);
begin
  FVenPtnOLD := pVenPtn;
end;

function T099USU.GetVenPcaOLD: string;
begin
  Result := FVenPcaOLD;
end;

procedure T099USU.SetVenPcaOLD(const pVenPca: string);
begin
  FVenPcaOLD := pVenPca;
end;

function T099USU.GetVenLpiOLD: string;
begin
  Result := FVenLpiOLD;
end;

procedure T099USU.SetVenLpiOLD(const pVenLpi: string);
begin
  FVenLpiOLD := pVenLpi;
end;

function T099USU.GetVenPfpOLD: string;
begin
  Result := FVenPfpOLD;
end;

procedure T099USU.SetVenPfpOLD(const pVenPfp: string);
begin
  FVenPfpOLD := pVenPfp;
end;

function T099USU.GetPatDflOLD: string;
begin
  Result := FPatDflOLD;
end;

procedure T099USU.SetPatDflOLD(const pPatDfl: string);
begin
  FPatDflOLD := pPatDfl;
end;

function T099USU.GetVenPcdOLD: string;
begin
  Result := FVenPcdOLD;
end;

procedure T099USU.SetVenPcdOLD(const pVenPcd: string);
begin
  FVenPcdOLD := pVenPcd;
end;

function T099USU.GetMpcActOLD: string;
begin
  Result := FMpcActOLD;
end;

procedure T099USU.SetMpcActOLD(const pMpcAct: string);
begin
  FMpcActOLD := pMpcAct;
end;

function T099USU.GetCtbLtcOLD: string;
begin
  Result := FCtbLtcOLD;
end;

procedure T099USU.SetCtbLtcOLD(const pCtbLtc: string);
begin
  FCtbLtcOLD := pCtbLtc;
end;

function T099USU.GetPatTdeOLD: string;
begin
  Result := FPatTdeOLD;
end;

procedure T099USU.SetPatTdeOLD(const pPatTde: string);
begin
  FPatTdeOLD := pPatTde;
end;

function T099USU.GetVenScvOLD: string;
begin
  Result := FVenScvOLD;
end;

procedure T099USU.SetVenScvOLD(const pVenScv: string);
begin
  FVenScvOLD := pVenScv;
end;

function T099USU.GetConQarOLD: string;
begin
  Result := FConQarOLD;
end;

procedure T099USU.SetConQarOLD(const pConQar: string);
begin
  FConQarOLD := pConQar;
end;

function T099USU.GetUsuCfeOLD: string;
begin
  Result := FUsuCfeOLD;
end;

procedure T099USU.SetUsuCfeOLD(const pUsuCfe: string);
begin
  FUsuCfeOLD := pUsuCfe;
end;

function T099USU.GetCprSccOLD: string;
begin
  Result := FCprSccOLD;
end;

procedure T099USU.SetCprSccOLD(const pCprScc: string);
begin
  FCprSccOLD := pCprScc;
end;

function T099USU.GetVenAtvOLD: string;
begin
  Result := FVenAtvOLD;
end;

procedure T099USU.SetVenAtvOLD(const pVenAtv: string);
begin
  FVenAtvOLD := pVenAtv;
end;

function T099USU.GetVenAtfOLD: string;
begin
  Result := FVenAtfOLD;
end;

procedure T099USU.SetVenAtfOLD(const pVenAtf: string);
begin
  FVenAtfOLD := pVenAtf;
end;

function T099USU.GetImpRatOLD: string;
begin
  Result := FImpRatOLD;
end;

procedure T099USU.SetImpRatOLD(const pImpRat: string);
begin
  FImpRatOLD := pImpRat;
end;

function T099USU.GetDirNelOLD: string;
begin
  Result := FDirNelOLD;
end;

procedure T099USU.SetDirNelOLD(const pDirNel: string);
begin
  FDirNelOLD := pDirNel;
end;

function T099USU.GetVenCnsOLD: string;
begin
  Result := FVenCnsOLD;
end;

procedure T099USU.SetVenCnsOLD(const pVenCns: string);
begin
  FVenCnsOLD := pVenCns;
end;

function T099USU.GetMpcAcfOLD: string;
begin
  Result := FMpcAcfOLD;
end;

procedure T099USU.SetMpcAcfOLD(const pMpcAcf: string);
begin
  FMpcAcfOLD := pMpcAcf;
end;

function T099USU.GetMpcAccOLD: string;
begin
  Result := FMpcAccOLD;
end;

procedure T099USU.SetMpcAccOLD(const pMpcAcc: string);
begin
  FMpcAccOLD := pMpcAcc;
end;

function T099USU.GetMpcAcaOLD: string;
begin
  Result := FMpcAcaOLD;
end;

procedure T099USU.SetMpcAcaOLD(const pMpcAca: string);
begin
  FMpcAcaOLD := pMpcAca;
end;

function T099USU.GetDatSinOLD: TDate;
begin
  Result := FDatSinOLD;
end;

procedure T099USU.SetDatSinOLD(const pDatSin: TDate);
begin
  FDatSinOLD := pDatSin;
end;

function T099USU.GetHorSinOLD: Integer;
begin
  Result := FHorSinOLD;
end;

procedure T099USU.SetHorSinOLD(const pHorSin: Integer);
begin
  FHorSinOLD := pHorSin;
end;

function T099USU.GetVenAirOLD: string;
begin
  Result := FVenAirOLD;
end;

procedure T099USU.SetVenAirOLD(const pVenAir: string);
begin
  FVenAirOLD := pVenAir;
end;

function T099USU.GetAprSctOLD: string;
begin
  Result := FAprSctOLD;
end;

procedure T099USU.SetAprSctOLD(const pAprSct: string);
begin
  FAprSctOLD := pAprSct;
end;

function T099USU.GetPrjTsoOLD: string;
begin
  Result := FPrjTsoOLD;
end;

procedure T099USU.SetPrjTsoOLD(const pPrjTso: string);
begin
  FPrjTsoOLD := pPrjTso;
end;

function T099USU.GetCpoCpfOLD: string;
begin
  Result := FCpoCpfOLD;
end;

procedure T099USU.SetCpoCpfOLD(const pCpoCpf: string);
begin
  FCpoCpfOLD := pCpoCpf;
end;

function T099USU.GetCprRcaOLD: string;
begin
  Result := FCprRcaOLD;
end;

procedure T099USU.SetCprRcaOLD(const pCprRca: string);
begin
  FCprRcaOLD := pCprRca;
end;

function T099USU.GetCleQtdOLD: string;
begin
  Result := FCleQtdOLD;
end;

procedure T099USU.SetCleQtdOLD(const pCleQtd: string);
begin
  FCleQtdOLD := pCleQtd;
end;

function T099USU.GetClePrcOLD: string;
begin
  Result := FClePrcOLD;
end;

procedure T099USU.SetClePrcOLD(const pClePrc: string);
begin
  FClePrcOLD := pClePrc;
end;

function T099USU.GetConRecOLD: string;
begin
  Result := FConRecOLD;
end;

procedure T099USU.SetConRecOLD(const pConRec: string);
begin
  FConRecOLD := pConRec;
end;

function T099USU.GetVenSppOLD: string;
begin
  Result := FVenSppOLD;
end;

procedure T099USU.SetVenSppOLD(const pVenSpp: string);
begin
  FVenSppOLD := pVenSpp;
end;

function T099USU.GetPrdEpbOLD: string;
begin
  Result := FPrdEpbOLD;
end;

procedure T099USU.SetPrdEpbOLD(const pPrdEpb: string);
begin
  FPrdEpbOLD := pPrdEpb;
end;

function T099USU.GetVenAseOLD: string;
begin
  Result := FVenAseOLD;
end;

procedure T099USU.SetVenAseOLD(const pVenAse: string);
begin
  FVenAseOLD := pVenAse;
end;

function T099USU.GetVenIfcOLD: string;
begin
  Result := FVenIfcOLD;
end;

procedure T099USU.SetVenIfcOLD(const pVenIfc: string);
begin
  FVenIfcOLD := pVenIfc;
end;

function T099USU.GetDirCteOLD: string;
begin
  Result := FDirCteOLD;
end;

procedure T099USU.SetDirCteOLD(const pDirCte: string);
begin
  FDirCteOLD := pDirCte;
end;

function T099USU.GetCprIgcOLD: string;
begin
  Result := FCprIgcOLD;
end;

procedure T099USU.SetCprIgcOLD(const pCprIgc: string);
begin
  FCprIgcOLD := pCprIgc;
end;

function T099USU.GetCprAscOLD: string;
begin
  Result := FCprAscOLD;
end;

procedure T099USU.SetCprAscOLD(const pCprAsc: string);
begin
  FCprAscOLD := pCprAsc;
end;

function T099USU.GetCprAqcOLD: string;
begin
  Result := FCprAqcOLD;
end;

procedure T099USU.SetCprAqcOLD(const pCprAqc: string);
begin
  FCprAqcOLD := pCprAqc;
end;

function T099USU.GetTurTrbOLD: Integer;
begin
  Result := FTurTrbOLD;
end;

procedure T099USU.SetTurTrbOLD(const pTurTrb: Integer);
begin
  FTurTrbOLD := pTurTrb;
end;

function T099USU.GetCodCelOLD: string;
begin
  Result := FCodCelOLD;
end;

procedure T099USU.SetCodCelOLD(const pCodCel: string);
begin
  FCodCelOLD := pCodCel;
end;

function T099USU.GetPrdOpdOLD: string;
begin
  Result := FPrdOpdOLD;
end;

procedure T099USU.SetPrdOpdOLD(const pPrdOpd: string);
begin
  FPrdOpdOLD := pPrdOpd;
end;

function T099USU.GetOpdOrpOLD: string;
begin
  Result := FOpdOrpOLD;
end;

procedure T099USU.SetOpdOrpOLD(const pOpdOrp: string);
begin
  FOpdOrpOLD := pOpdOrp;
end;

function T099USU.GetVenCstOLD: string;
begin
  Result := FVenCstOLD;
end;

procedure T099USU.SetVenCstOLD(const pVenCst: string);
begin
  FVenCstOLD := pVenCst;
end;

function T099USU.GetCprCstOLD: string;
begin
  Result := FCprCstOLD;
end;

procedure T099USU.SetCprCstOLD(const pCprCst: string);
begin
  FCprCstOLD := pCprCst;
end;

function T099USU.GetDirNesOLD: string;
begin
  Result := FDirNesOLD;
end;

procedure T099USU.SetDirNesOLD(const pDirNes: string);
begin
  FDirNesOLD := pDirNes;
end;

function T099USU.GetCanNfeOLD: string;
begin
  Result := FCanNfeOLD;
end;

procedure T099USU.SetCanNfeOLD(const pCanNfe: string);
begin
  FCanNfeOLD := pCanNfe;
end;

function T099USU.GetVenSdgOLD: string;
begin
  Result := FVenSdgOLD;
end;

procedure T099USU.SetVenSdgOLD(const pVenSdg: string);
begin
  FVenSdgOLD := pVenSdg;
end;

function T099USU.GetDatAfiOLD: string;
begin
  Result := FDatAfiOLD;
end;

procedure T099USU.SetDatAfiOLD(const pDatAfi: string);
begin
  FDatAfiOLD := pDatAfi;
end;

function T099USU.GetIndAstOLD: string;
begin
  Result := FIndAstOLD;
end;

procedure T099USU.SetIndAstOLD(const pIndAst: string);
begin
  FIndAstOLD := pIndAst;
end;

function T099USU.GetAltInpOLD: string;
begin
  Result := FAltInpOLD;
end;

procedure T099USU.SetAltInpOLD(const pAltInp: string);
begin
  FAltInpOLD := pAltInp;
end;

function T099USU.GetCxbPgpOLD: string;
begin
  Result := FCxbPgpOLD;
end;

procedure T099USU.SetCxbPgpOLD(const pCxbPgp: string);
begin
  FCxbPgpOLD := pCxbPgp;
end;

function T099USU.GetAstOrpOLD: string;
begin
  Result := FAstOrpOLD;
end;

procedure T099USU.SetAstOrpOLD(const pAstOrp: string);
begin
  FAstOrpOLD := pAstOrp;
end;

function T099USU.GetAstSorOLD: string;
begin
  Result := FAstSorOLD;
end;

procedure T099USU.SetAstSorOLD(const pAstSor: string);
begin
  FAstSorOLD := pAstSor;
end;

function T099USU.GetAstNfvOLD: string;
begin
  Result := FAstNfvOLD;
end;

procedure T099USU.SetAstNfvOLD(const pAstNfv: string);
begin
  FAstNfvOLD := pAstNfv;
end;

function T099USU.GetAstPedOLD: string;
begin
  Result := FAstPedOLD;
end;

procedure T099USU.SetAstPedOLD(const pAstPed: string);
begin
  FAstPedOLD := pAstPed;
end;

function T099USU.GetRecAcdOLD: string;
begin
  Result := FRecAcdOLD;
end;

procedure T099USU.SetRecAcdOLD(const pRecAcd: string);
begin
  FRecAcdOLD := pRecAcd;
end;

function T099USU.GetPagAcdOLD: string;
begin
  Result := FPagAcdOLD;
end;

procedure T099USU.SetPagAcdOLD(const pPagAcd: string);
begin
  FPagAcdOLD := pPagAcd;
end;

function T099USU.GetPagDetOLD: Integer;
begin
  Result := FPagDetOLD;
end;

procedure T099USU.SetPagDetOLD(const pPagDet: Integer);
begin
  FPagDetOLD := pPagDet;
end;

function T099USU.GetMaxLgnOLD: Integer;
begin
  Result := FMaxLgnOLD;
end;

procedure T099USU.SetMaxLgnOLD(const pMaxLgn: Integer);
begin
  FMaxLgnOLD := pMaxLgn;
end;

function T099USU.GetParEspOLD: string;
begin
  Result := FParEspOLD;
end;

procedure T099USU.SetParEspOLD(const pParEsp: string);
begin
  FParEspOLD := pParEsp;
end;

function T099USU.GetVenCnpOLD: string;
begin
  Result := FVenCnpOLD;
end;

procedure T099USU.SetVenCnpOLD(const pVenCnp: string);
begin
  FVenCnpOLD := pVenCnp;
end;

function T099USU.GetIndMreOLD: string;
begin
  Result := FIndMreOLD;
end;

procedure T099USU.SetIndMreOLD(const pIndMre: string);
begin
  FIndMreOLD := pIndMre;
end;

function T099USU.GetAstPsiOLD: string;
begin
  Result := FAstPsiOLD;
end;

procedure T099USU.SetAstPsiOLD(const pAstPsi: string);
begin
  FAstPsiOLD := pAstPsi;
end;

function T099USU.GetAstEtoOLD: string;
begin
  Result := FAstEtoOLD;
end;

procedure T099USU.SetAstEtoOLD(const pAstEto: string);
begin
  FAstEtoOLD := pAstEto;
end;

function T099USU.GetExaOcpOLD: string;
begin
  Result := FExaOcpOLD;
end;

procedure T099USU.SetExaOcpOLD(const pExaOcp: string);
begin
  FExaOcpOLD := pExaOcp;
end;

function T099USU.GetVenAvaOLD: string;
begin
  Result := FVenAvaOLD;
end;

procedure T099USU.SetVenAvaOLD(const pVenAva: string);
begin
  FVenAvaOLD := pVenAva;
end;

function T099USU.GetManAgeOLD: string;
begin
  Result := FManAgeOLD;
end;

procedure T099USU.SetManAgeOLD(const pManAge: string);
begin
  FManAgeOLD := pManAge;
end;

function T099USU.GetConAgeOLD: string;
begin
  Result := FConAgeOLD;
end;

procedure T099USU.SetConAgeOLD(const pConAge: string);
begin
  FConAgeOLD := pConAge;
end;

function T099USU.GetPatEmpOLD: string;
begin
  Result := FPatEmpOLD;
end;

procedure T099USU.SetPatEmpOLD(const pPatEmp: string);
begin
  FPatEmpOLD := pPatEmp;
end;

function T099USU.GetAltMonOLD: string;
begin
  Result := FAltMonOLD;
end;

procedure T099USU.SetAltMonOLD(const pAltMon: string);
begin
  FAltMonOLD := pAltMon;
end;

function T099USU.GetAltEbqOLD: string;
begin
  Result := FAltEbqOLD;
end;

procedure T099USU.SetAltEbqOLD(const pAltEbq: string);
begin
  FAltEbqOLD := pAltEbq;
end;

function T099USU.GetAudPfaOLD: string;
begin
  Result := FAudPfaOLD;
end;

procedure T099USU.SetAudPfaOLD(const pAudPfa: string);
begin
  FAudPfaOLD := pAudPfa;
end;

function T099USU.GetAltNnuOLD: string;
begin
  Result := FAltNnuOLD;
end;

procedure T099USU.SetAltNnuOLD(const pAltNnu: string);
begin
  FAltNnuOLD := pAltNnu;
end;

function T099USU.GetSenAprOLD: string;
begin
  Result := FSenAprOLD;
end;

procedure T099USU.SetSenAprOLD(const pSenApr: string);
begin
  FSenAprOLD := pSenApr;
end;

function T099USU.GetCobPdjOLD: string;
begin
  Result := FCobPdjOLD;
end;

procedure T099USU.SetCobPdjOLD(const pCobPdj: string);
begin
  FCobPdjOLD := pCobPdj;
end;

function T099USU.GetCobAtcOLD: string;
begin
  Result := FCobAtcOLD;
end;

procedure T099USU.SetCobAtcOLD(const pCobAtc: string);
begin
  FCobAtcOLD := pCobAtc;
end;

function T099USU.GetAcrCcmOLD: string;
begin
  Result := FAcrCcmOLD;
end;

procedure T099USU.SetAcrCcmOLD(const pAcrCcm: string);
begin
  FAcrCcmOLD := pAcrCcm;
end;

function T099USU.GetPerExsOLD: string;
begin
  Result := FPerExsOLD;
end;

procedure T099USU.SetPerExsOLD(const pPerExs: string);
begin
  FPerExsOLD := pPerExs;
end;

function T099USU.GetPerFpcOLD: Integer;
begin
  Result := FPerFpcOLD;
end;

procedure T099USU.SetPerFpcOLD(const pPerFpc: Integer);
begin
  FPerFpcOLD := pPerFpc;
end;

function T099USU.GetUSU_CodFilOLD: Integer;
begin
  Result := FUSU_CodFilOLD;
end;

procedure T099USU.SetUSU_CodFilOLD(const pUSU_CodFil: Integer);
begin
  FUSU_CodFilOLD := pUSU_CodFil;
end;

function T099USU.GetUSU_MaiFOCOLD: string;
begin
  Result := FUSU_MaiFOCOLD;
end;

procedure T099USU.SetUSU_MaiFOCOLD(const pUSU_MaiFOC: string);
begin
  FUSU_MaiFOCOLD := pUSU_MaiFOC;
end;

function T099USU.GetUSU_NFOCEFOLD: string;
begin
  Result := FUSU_NFOCEFOLD;
end;

procedure T099USU.SetUSU_NFOCEFOLD(const pUSU_NFOCEF: string);
begin
  FUSU_NFOCEFOLD := pUSU_NFOCEF;
end;

function T099USU.GetUSU_NFOCNOOLD: string;
begin
  Result := FUSU_NFOCNOOLD;
end;

procedure T099USU.SetUSU_NFOCNOOLD(const pUSU_NFOCNO: string);
begin
  FUSU_NFOCNOOLD := pUSU_NFOCNO;
end;

function T099USU.GetUSU_ClaUsuOLD: Integer;
begin
  Result := FUSU_ClaUsuOLD;
end;

procedure T099USU.SetUSU_ClaUsuOLD(const pUSU_ClaUsu: Integer);
begin
  FUSU_ClaUsuOLD := pUSU_ClaUsu;
end;

function T099USU.GetUSU_NFOCUCOLD: string;
begin
  Result := FUSU_NFOCUCOLD;
end;

procedure T099USU.SetUSU_NFOCUCOLD(const pUSU_NFOCUC: string);
begin
  FUSU_NFOCUCOLD := pUSU_NFOCUC;
end;

function T099USU.GetUSU_EmaAprOLD: string;
begin
  Result := FUSU_EmaAprOLD;
end;

procedure T099USU.SetUSU_EmaAprOLD(const pUSU_EmaApr: string);
begin
  FUSU_EmaAprOLD := pUSU_EmaApr;
end;

function T099USU.GetUSU_FecNFRemOLD: string;
begin
  Result := FUSU_FecNFRemOLD;
end;

procedure T099USU.SetUSU_FecNFRemOLD(const pUSU_FecNFRem: string);
begin
  FUSU_FecNFRemOLD := pUSU_FecNFRem;
end;

function T099USU.GetUSU_AvsCnfDspOLD: string;
begin
  Result := FUSU_AvsCnfDspOLD;
end;

procedure T099USU.SetUSU_AvsCnfDspOLD(const pUSU_AvsCnfDsp: string);
begin
  FUSU_AvsCnfDspOLD := pUSU_AvsCnfDsp;
end;

function T099USU.GetUSU_AbrLibVenOLD: string;
begin
  Result := FUSU_AbrLibVenOLD;
end;

procedure T099USU.SetUSU_AbrLibVenOLD(const pUSU_AbrLibVen: string);
begin
  FUSU_AbrLibVenOLD := pUSU_AbrLibVen;
end;

function T099USU.GetUSU_AviDiaOLD: Integer;
begin
  Result := FUSU_AviDiaOLD;
end;

procedure T099USU.SetUSU_AviDiaOLD(const pUSU_AviDia: Integer);
begin
  FUSU_AviDiaOLD := pUSU_AviDia;
end;

procedure T099USU.Registros_OLD();
begin
  FCodEmpOLD := FCodEmp;
  FCodUsuOLD := FCodUsu;
  FNumEmpOLD := FNumEmp;
  FTipColOLD := FTipCol;
  FNumCadOLD := FNumCad;
  FSupImeOLD := FSupIme;
  FCodCcuOLD := FCodCcu;
  FIntNetOLD := FIntNet;
  FEmpAtiOLD := FEmpAti;
  FFilAtiOLD := FFilAti;
  FGerAusOLD := FGerAus;
  FCptRelOLD := FCptRel;
  FFpgObrOLD := FFpgObr;
  FPstAtiOLD := FPstAti;
  FVenTbpOLD := FVenTbp;
  FVenNspOLD := FVenNsp;
  FVenParOLD := FVenPar;
  FVenPapOLD := FVenPap;
  FVenPdsOLD := FVenPds;
  FVenPipOLD := FVenPip;
  FVenPicOLD := FVenPic;
  FVenPcoOLD := FVenPco;
  FVenPisOLD := FVenPis;
  FVenPirOLD := FVenPir;
  FVenPinOLD := FVenPin;
  FVenPfuOLD := FVenPfu;
  FVenAunOLD := FVenAun;
  FVenAtpOLD := FVenAtp;
  FVenAclOLD := FVenAcl;
  FVenAreOLD := FVenAre;
  FVenAspOLD := FVenAsp;
  FVenLpdOLD := FVenLpd;
  FVenAcvOLD := FVenAcv;
  FVenAnsOLD := FVenAns;
  FVenLnsOLD := FVenLns;
  FVenAsrOLD := FVenAsr;
  FVenRatOLD := FVenRat;
  FVenPaeOLD := FVenPae;
  FVenAdgOLD := FVenAdg;
  FVenApiOLD := FVenApi;
  FEstAesOLD := FEstAes;
  FEstRatOLD := FEstRat;
  FEstPlpOLD := FEstPlp;
  FRecPgrOLD := FRecPgr;
  FRecAvrOLD := FRecAvr;
  FRecAvlOLD := FRecAvl;
  FRecRatOLD := FRecRat;
  FCprMacOLD := FCprMac;
  FCprMocOLD := FCprMoc;
  FCprPapOLD := FCprPap;
  FCprPdsOLD := FCprPds;
  FCprPipOLD := FCprPip;
  FCprPicOLD := FCprPic;
  FCprPisOLD := FCprPis;
  FCprPirOLD := FCprPir;
  FCprPinOLD := FCprPin;
  FCprPfuOLD := FCprPfu;
  FCprVnoOLD := FCprVno;
  FCprQnoOLD := FCprQno;
  FCprVdnOLD := FCprVdn;
  FCprPdnOLD := FCprPdn;
  FCprApdOLD := FCprApd;
  FCprAfoOLD := FCprAfo;
  FCprAocOLD := FCprAoc;
  FCprAccOLD := FCprAcc;
  FCprAneOLD := FCprAne;
  FCprRatOLD := FCprRat;
  FCprAdgOLD := FCprAdg;
  FCprAcfOLD := FCprAcf;
  FCprAtxOLD := FCprAtx;
  FCprAhfOLD := FCprAhf;
  FPagMaxOLD := FPagMax;
  FPagPgrOLD := FPagPgr;
  FPagAvpOLD := FPagAvp;
  FPagAvlOLD := FPagAvl;
  FPagEevOLD := FPagEev;
  FPagRatOLD := FPagRat;
  FCxbDcpOLD := FCxbDcp;
  FCxbApmOLD := FCxbApm;
  FCxbRatOLD := FCxbRat;
  FCtbDacOLD := FCtbDac;
  FCtbAltOLD := FCtbAlt;
  FCtbCltOLD := FCtbClt;
  FCtbAlcOLD := FCtbAlc;
  FCtbClcOLD := FCtbClc;
  FCtbArtOLD := FCtbArt;
  FCtbCrtOLD := FCtbCrt;
  FCtbAorOLD := FCtbAor;
  FCtbCorOLD := FCtbCor;
  FCtbActOLD := FCtbAct;
  FCtbAhpOLD := FCtbAhp;
  FCtbAcfOLD := FCtbAcf;
  FCtbLflOLD := FCtbLfl;
  FCtbZerOLD := FCtbZer;
  FPrdDpaOLD := FPrdDpa;
  FPrdDppOLD := FPrdDpp;
  FSitUsuOLD := FSitUsu;
  FCodMotOLD := FCodMot;
  FObsMotOLD := FObsMot;
  FUsuMotOLD := FUsuMot;
  FDatMotOLD := FDatMot;
  FHorMotOLD := FHorMot;
  FUsuGerOLD := FUsuGer;
  FDatGerOLD := FDatGer;
  FHorGerOLD := FHorGer;
  FCodCliOLD := FCodCli;
  FCodForOLD := FCodFor;
  FCodRepOLD := FCodRep;
  FCodTraOLD := FCodTra;
  FCodPorOLD := FCodPor;
  FVenFqpOLD := FVenFqp;
  FCprPqtOLD := FCprPqt;
  FPorObrOLD := FPorObr;
  FVenLpvOLD := FVenLpv;
  FVenLpfOLD := FVenLpf;
  FVenLpcOLD := FVenLpc;
  FVenLppOLD := FVenLpp;
  FCprApiOLD := FCprApi;
  FEstGsaOLD := FEstGsa;
  FEstAdrOLD := FEstAdr;
  FEstAgcOLD := FEstAgc;
  FVenLpaOLD := FVenLpa;
  FPrjLfdOLD := FPrjLfd;
  FDisRraOLD := FDisRra;
  FDisInrOLD := FDisInr;
  FDisEnrOLD := FDisEnr;
  FCprFpoOLD := FCprFpo;
  FRecArfOLD := FRecArf;
  FPagArfOLD := FPagArf;
  FCapArfOLD := FCapArf;
  FCxbArfOLD := FCxbArf;
  FCtbEltOLD := FCtbElt;
  FCtbElcOLD := FCtbElc;
  FAprDftOLD := FAprDft;
  FAprDocOLD := FAprDoc;
  FPrjNusOLD := FPrjNus;
  FCprPecOLD := FCprPec;
  FCprFocOLD := FCprFoc;
  FCprFcpOLD := FCprFcp;
  FVenPofOLD := FVenPof;
  FCprPscOLD := FCprPsc;
  FMltLgnOLD := FMltLgn;
  FNomSerOLD := FNomSer;
  FPorSerOLD := FPorSer;
  FAutUsuOLD := FAutUsu;
  FUsuAutOLD := FUsuAut;
  FSenAutOLD := FSenAut;
  FAltRemOLD := FAltRem;
  FVenPtnOLD := FVenPtn;
  FVenPcaOLD := FVenPca;
  FVenLpiOLD := FVenLpi;
  FVenPfpOLD := FVenPfp;
  FPatDflOLD := FPatDfl;
  FVenPcdOLD := FVenPcd;
  FMpcActOLD := FMpcAct;
  FCtbLtcOLD := FCtbLtc;
  FPatTdeOLD := FPatTde;
  FVenScvOLD := FVenScv;
  FConQarOLD := FConQar;
  FUsuCfeOLD := FUsuCfe;
  FCprSccOLD := FCprScc;
  FVenAtvOLD := FVenAtv;
  FVenAtfOLD := FVenAtf;
  FImpRatOLD := FImpRat;
  FDirNelOLD := FDirNel;
  FVenCnsOLD := FVenCns;
  FMpcAcfOLD := FMpcAcf;
  FMpcAccOLD := FMpcAcc;
  FMpcAcaOLD := FMpcAca;
  FDatSinOLD := FDatSin;
  FHorSinOLD := FHorSin;
  FVenAirOLD := FVenAir;
  FAprSctOLD := FAprSct;
  FPrjTsoOLD := FPrjTso;
  FCpoCpfOLD := FCpoCpf;
  FCprRcaOLD := FCprRca;
  FCleQtdOLD := FCleQtd;
  FClePrcOLD := FClePrc;
  FConRecOLD := FConRec;
  FVenSppOLD := FVenSpp;
  FPrdEpbOLD := FPrdEpb;
  FVenAseOLD := FVenAse;
  FVenIfcOLD := FVenIfc;
  FDirCteOLD := FDirCte;
  FCprIgcOLD := FCprIgc;
  FCprAscOLD := FCprAsc;
  FCprAqcOLD := FCprAqc;
  FTurTrbOLD := FTurTrb;
  FCodCelOLD := FCodCel;
  FPrdOpdOLD := FPrdOpd;
  FOpdOrpOLD := FOpdOrp;
  FVenCstOLD := FVenCst;
  FCprCstOLD := FCprCst;
  FDirNesOLD := FDirNes;
  FCanNfeOLD := FCanNfe;
  FVenSdgOLD := FVenSdg;
  FDatAfiOLD := FDatAfi;
  FIndAstOLD := FIndAst;
  FAltInpOLD := FAltInp;
  FCxbPgpOLD := FCxbPgp;
  FAstOrpOLD := FAstOrp;
  FAstSorOLD := FAstSor;
  FAstNfvOLD := FAstNfv;
  FAstPedOLD := FAstPed;
  FRecAcdOLD := FRecAcd;
  FPagAcdOLD := FPagAcd;
  FPagDetOLD := FPagDet;
  FMaxLgnOLD := FMaxLgn;
  FParEspOLD := FParEsp;
  FVenCnpOLD := FVenCnp;
  FIndMreOLD := FIndMre;
  FAstPsiOLD := FAstPsi;
  FAstEtoOLD := FAstEto;
  FExaOcpOLD := FExaOcp;
  FVenAvaOLD := FVenAva;
  FManAgeOLD := FManAge;
  FConAgeOLD := FConAge;
  FPatEmpOLD := FPatEmp;
  FAltMonOLD := FAltMon;
  FAltEbqOLD := FAltEbq;
  FAudPfaOLD := FAudPfa;
  FAltNnuOLD := FAltNnu;
  FSenAprOLD := FSenApr;
  FCobPdjOLD := FCobPdj;
  FCobAtcOLD := FCobAtc;
  FAcrCcmOLD := FAcrCcm;
  FPerExsOLD := FPerExs;
  FPerFpcOLD := FPerFpc;
  FUSU_CodFilOLD := FUSU_CodFil;
  FUSU_MaiFOCOLD := FUSU_MaiFOC;
  FUSU_NFOCEFOLD := FUSU_NFOCEF;
  FUSU_NFOCNOOLD := FUSU_NFOCNO;
  FUSU_ClaUsuOLD := FUSU_ClaUsu;
  FUSU_NFOCUCOLD := FUSU_NFOCUC;
  FUSU_EmaAprOLD := FUSU_EmaApr;
  FUSU_FecNFRemOLD := FUSU_FecNFRem;
  FUSU_AvsCnfDspOLD := FUSU_AvsCnfDsp;
  FUSU_AbrLibVenOLD := FUSU_AbrLibVen;
  FUSU_AviDiaOLD := FUSU_AviDia;
end;

end.
