unit o070fil;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T070FIL = class(TTabelaPadrao)
  private
    FCodEmp: Integer;
    FCodFil: Integer;
    FNomFil: string;
    FSigFil: string;
    FInsEst: string;
    FInsMun: string;
    FNumCgc: Double;
    FEndFil: string;
    FCplEnd: string;
    FCepFil: Integer;
    FCepIni: Integer;
    FCodRai: Integer;
    FBaiFil: string;
    FCidFil: string;
    FSigUfs: string;
    FEndEnt: string;
    FCplEnt: string;
    FCepEnt: Integer;
    FCidEnt: string;
    FEstEnt: string;
    FEndCob: string;
    FCplCob: string;
    FCepCob: Integer;
    FCidCob: string;
    FEstCob: string;
    FNumFon: string;
    FNumFax: string;
    FCxaPst: Integer;
    FIntNet: string;
    FTipEmp: Integer;
    FFilCli: Integer;
    FFilFor: Integer;
    FPedIni: Integer;
    FZonFra: Integer;
    FCodSuf: string;
    FDifAli: Char;
    FCriFed: Integer;
    FQtdDlb: Integer;
    FVenPdi: TDate;
    FVenPdf: TDate;
    FVenCae: Integer;
    FVenQdf: Integer;
    FVenTcc: string;
    FVenTpp: string;
    FVenTps: string;
    FVenDsu: Double;
    FVenVmp: Double;
    FVenLep: Integer;
    FVenTcv: string;
    FVenCep: Char;
    FVenPvp: Char;
    FVenNpa: Char;
    FVenCfi: Char;
    FVenNtr: Char;
    FVenSnr: string;
    FVenQip: Integer;
    FVenSnp: string;
    FVenQdp: Integer;
    FVenRpd: Integer;
    FVenCcc: Char;
    FVenCcr: Char;
    FVenCrr: Char;
    FVenPse: Char;
    FVenPam: Integer;
    FVenPma: Integer;
    FVenPpc: Integer;
    FVenPta: Integer;
    FVenPdt: Integer;
    FVenPcs: Integer;
    FVenPlc: Char;
    FVenFam: Integer;
    FVenFma: Integer;
    FVenFpc: Integer;
    FVenFta: Integer;
    FVenFdt: Integer;
    FVenFcs: Integer;
    FVenFlc: Char;
    FVenIss: Double;
    FVenIpd: Integer;
    FVenApc: Integer;
    FVenLvp: Double;
    FEstPdi: TDate;
    FEstPdf: TDate;
    FEstPai: TDate;
    FEstPaf: TDate;
    FEstTei: string;
    FEstTsi: string;
    FEstTpr: string;
    FEstUnm: Char;
    FEstDpf: Char;
    FRecPdi: TDate;
    FRecPdf: TDate;
    FRecPor: string;
    FRecCrt: string;
    FRecOcr: string;
    FRecIns: string;
    FRecVmt: Double;
    FRecDpr: Integer;
    FRecMoe: string;
    FRecJmm: Double;
    FRecTjr: Char;
    FRecDtj: Integer;
    FRecMul: Double;
    FRecDtm: Integer;
    FRecVjm: Double;
    FRecVdm: Double;
    FRecVmm: Double;
    FRecAvs: Char;
    FRecAdc: Char;
    FRecAoc: Char;
    FRecPcj: Char;
    FRecPcm: Char;
    FRecPce: Char;
    FRecPcc: Char;
    FRecPco: Char;
    FRecTpm: string;
    FRecTac: string;
    FRecTes: string;
    FRecTbp: string;
    FRecTba: string;
    FRecTbs: string;
    FRecTbc: string;
    FRecTpc: string;
    FRecTcc: string;
    FCprPdi: TDate;
    FCprPdf: TDate;
    FCprQmc: Integer;
    FCprAvo: Char;
    FCprDnf: Double;
    FCprTop: string;
    FCprTom: string;
    FCprTos: string;
    FCprTfp: string;
    FCprTfs: string;
    FCprTea: string;
    FCprTsa: string;
    FCprSnp: string;
    FCprCcf: Char;
    FCprCfr: Char;
    FCprFss: Integer;
    FPagPdi: TDate;
    FPagPdf: TDate;
    FPagApr: Char;
    FPagDpr: Integer;
    FPagMoe: string;
    FPagJmm: Double;
    FPagTjr: Char;
    FPagDtj: Integer;
    FPagMul: Double;
    FPagDtm: Integer;
    FPagTpm: string;
    FPagTpf: string;
    FPagTaf: string;
    FPagTbp: string;
    FPagTbc: string;
    FPagTbs: string;
    FPagTpc: string;
    FPagTcc: string;
    FPagVjm: Double;
    FPagVdm: Double;
    FPagVmm: Double;
    FPagTcm: string;
    FPagTdc: string;
    FPagTdi: string;
    FPagLir: Double;
    FPagEev: Integer;
    FCxbPdi: TDate;
    FCxbPdf: TDate;
    FCxbTca: string;
    FCxbTdc: string;
    FCxbTde: string;
    FCxbTdt: string;
    FCxbDec: Integer;
    FCtbExi: TDate;
    FCtbExf: TDate;
    FCtbPei: TDate;
    FCtbPef: TDate;
    FCtbQdl: Integer;
    FCtbMoe: string;
    FCtbLog: Char;
    FCtbAli: Char;
    FCtbDia: TDate;
    FCtbObs: string;
    FCtbNrj: string;
    FCtbDrj: TDate;
    FCtbNsr: string;
    FCtbFsr: string;
    FCtbCsr: Double;
    FCtbNcr: string;
    FCtbFcr: Char;
    FCtbCrc: string;
    FCtbCcr: Double;
    FCtbCfm: Integer;
    FCtbCae: string;
    FCtbCaf: Integer;
    FCtbFec: Char;
    FCtbSdt: Char;
    FCtbSde: Char;
    FCtbScr: Char;
    FCtbSvl: Char;
    FCtbShp: Char;
    FCtbHab: Char;
    FEfiPdi: TDate;
    FEfiPdf: TDate;
    FEfiFtr: Char;
    FEfiApi: Double;
    FEfiStr: Char;
    FEfiReg: Integer;
    FEfiQci: Integer;
    FPrdTep: string;
    FPrdTsp: string;
    FPrdQdd: Integer;
    FPrdTpp: string;
    FPrdCpp: Integer;
    FPrdRpp: Integer;
    FPrdPpp: string;
    FPrdTee: string;
    FPrdTnr: string;
    FPrdEfi: Double;
    FPedBlo: Char;
    FComPrz: Char;
    FPerCom: Double;
    FTipSep: string;
    FIndRoe: Char;
    FCprIef: Char;
    FVenIec: Char;
    FRecTia: Char;
    FEstFpr: string;
    FIndExp: Integer;
    FDatPal: TDate;
    FHorPal: Integer;
    FCodAfi: Integer;
    FEenFil: string;
    FEenEnt: string;
    FEenCob: string;
    FBaiEnt: string;
    FBaiCob: string;
    FNenFil: string;
    FFilMat: Char;
    FAgeAnp: Integer;
    FInsAnp: Integer;
    FUSU_GerOPA: Char;
    FUSU_MaiPcp: string;
    FUSU_MailNfe: string;
    FUSU_EmaAnl: string;
    FUSU_CodTpr: string;
    FUSU_DatPolDsc: TDate;
    FUSU_TxaInd: Double;
    FUSU_DivMdi: Integer;
    FUSU_IniAdt: TDate;
    FUSU_FinAdt: TDate;
    FUSU_LocIDW: string;
    FUSU_LocIPT: string;
    FUSU_LocIAM: string;
    FUSU_LocSTP: string;

    FCodEmpOLD: Integer;
    FCodFilOLD: Integer;
    FNomFilOLD: string;
    FSigFilOLD: string;
    FInsEstOLD: string;
    FInsMunOLD: string;
    FNumCgcOLD: Double;
    FEndFilOLD: string;
    FCplEndOLD: string;
    FCepFilOLD: Integer;
    FCepIniOLD: Integer;
    FCodRaiOLD: Integer;
    FBaiFilOLD: string;
    FCidFilOLD: string;
    FSigUfsOLD: string;
    FEndEntOLD: string;
    FCplEntOLD: string;
    FCepEntOLD: Integer;
    FCidEntOLD: string;
    FEstEntOLD: string;
    FEndCobOLD: string;
    FCplCobOLD: string;
    FCepCobOLD: Integer;
    FCidCobOLD: string;
    FEstCobOLD: string;
    FNumFonOLD: string;
    FNumFaxOLD: string;
    FCxaPstOLD: Integer;
    FIntNetOLD: string;
    FTipEmpOLD: Integer;
    FFilCliOLD: Integer;
    FFilForOLD: Integer;
    FPedIniOLD: Integer;
    FZonFraOLD: Integer;
    FCodSufOLD: string;
    FDifAliOLD: Char;
    FCriFedOLD: Integer;
    FQtdDlbOLD: Integer;
    FVenPdiOLD: TDate;
    FVenPdfOLD: TDate;
    FVenCaeOLD: Integer;
    FVenQdfOLD: Integer;
    FVenTccOLD: string;
    FVenTppOLD: string;
    FVenTpsOLD: string;
    FVenDsuOLD: Double;
    FVenVmpOLD: Double;
    FVenLepOLD: Integer;
    FVenTcvOLD: string;
    FVenCepOLD: Char;
    FVenPvpOLD: Char;
    FVenNpaOLD: Char;
    FVenCfiOLD: Char;
    FVenNtrOLD: Char;
    FVenSnrOLD: string;
    FVenQipOLD: Integer;
    FVenSnpOLD: string;
    FVenQdpOLD: Integer;
    FVenRpdOLD: Integer;
    FVenCccOLD: Char;
    FVenCcrOLD: Char;
    FVenCrrOLD: Char;
    FVenPseOLD: Char;
    FVenPamOLD: Integer;
    FVenPmaOLD: Integer;
    FVenPpcOLD: Integer;
    FVenPtaOLD: Integer;
    FVenPdtOLD: Integer;
    FVenPcsOLD: Integer;
    FVenPlcOLD: Char;
    FVenFamOLD: Integer;
    FVenFmaOLD: Integer;
    FVenFpcOLD: Integer;
    FVenFtaOLD: Integer;
    FVenFdtOLD: Integer;
    FVenFcsOLD: Integer;
    FVenFlcOLD: Char;
    FVenIssOLD: Double;
    FVenIpdOLD: Integer;
    FVenApcOLD: Integer;
    FVenLvpOLD: Double;
    FEstPdiOLD: TDate;
    FEstPdfOLD: TDate;
    FEstPaiOLD: TDate;
    FEstPafOLD: TDate;
    FEstTeiOLD: string;
    FEstTsiOLD: string;
    FEstTprOLD: string;
    FEstUnmOLD: Char;
    FEstDpfOLD: Char;
    FRecPdiOLD: TDate;
    FRecPdfOLD: TDate;
    FRecPorOLD: string;
    FRecCrtOLD: string;
    FRecOcrOLD: string;
    FRecInsOLD: string;
    FRecVmtOLD: Double;
    FRecDprOLD: Integer;
    FRecMoeOLD: string;
    FRecJmmOLD: Double;
    FRecTjrOLD: Char;
    FRecDtjOLD: Integer;
    FRecMulOLD: Double;
    FRecDtmOLD: Integer;
    FRecVjmOLD: Double;
    FRecVdmOLD: Double;
    FRecVmmOLD: Double;
    FRecAvsOLD: Char;
    FRecAdcOLD: Char;
    FRecAocOLD: Char;
    FRecPcjOLD: Char;
    FRecPcmOLD: Char;
    FRecPceOLD: Char;
    FRecPccOLD: Char;
    FRecPcoOLD: Char;
    FRecTpmOLD: string;
    FRecTacOLD: string;
    FRecTesOLD: string;
    FRecTbpOLD: string;
    FRecTbaOLD: string;
    FRecTbsOLD: string;
    FRecTbcOLD: string;
    FRecTpcOLD: string;
    FRecTccOLD: string;
    FCprPdiOLD: TDate;
    FCprPdfOLD: TDate;
    FCprQmcOLD: Integer;
    FCprAvoOLD: Char;
    FCprDnfOLD: Double;
    FCprTopOLD: string;
    FCprTomOLD: string;
    FCprTosOLD: string;
    FCprTfpOLD: string;
    FCprTfsOLD: string;
    FCprTeaOLD: string;
    FCprTsaOLD: string;
    FCprSnpOLD: string;
    FCprCcfOLD: Char;
    FCprCfrOLD: Char;
    FCprFssOLD: Integer;
    FPagPdiOLD: TDate;
    FPagPdfOLD: TDate;
    FPagAprOLD: Char;
    FPagDprOLD: Integer;
    FPagMoeOLD: string;
    FPagJmmOLD: Double;
    FPagTjrOLD: Char;
    FPagDtjOLD: Integer;
    FPagMulOLD: Double;
    FPagDtmOLD: Integer;
    FPagTpmOLD: string;
    FPagTpfOLD: string;
    FPagTafOLD: string;
    FPagTbpOLD: string;
    FPagTbcOLD: string;
    FPagTbsOLD: string;
    FPagTpcOLD: string;
    FPagTccOLD: string;
    FPagVjmOLD: Double;
    FPagVdmOLD: Double;
    FPagVmmOLD: Double;
    FPagTcmOLD: string;
    FPagTdcOLD: string;
    FPagTdiOLD: string;
    FPagLirOLD: Double;
    FPagEevOLD: Integer;
    FCxbPdiOLD: TDate;
    FCxbPdfOLD: TDate;
    FCxbTcaOLD: string;
    FCxbTdcOLD: string;
    FCxbTdeOLD: string;
    FCxbTdtOLD: string;
    FCxbDecOLD: Integer;
    FCtbExiOLD: TDate;
    FCtbExfOLD: TDate;
    FCtbPeiOLD: TDate;
    FCtbPefOLD: TDate;
    FCtbQdlOLD: Integer;
    FCtbMoeOLD: string;
    FCtbLogOLD: Char;
    FCtbAliOLD: Char;
    FCtbDiaOLD: TDate;
    FCtbObsOLD: string;
    FCtbNrjOLD: string;
    FCtbDrjOLD: TDate;
    FCtbNsrOLD: string;
    FCtbFsrOLD: string;
    FCtbCsrOLD: Double;
    FCtbNcrOLD: string;
    FCtbFcrOLD: Char;
    FCtbCrcOLD: string;
    FCtbCcrOLD: Double;
    FCtbCfmOLD: Integer;
    FCtbCaeOLD: string;
    FCtbCafOLD: Integer;
    FCtbFecOLD: Char;
    FCtbSdtOLD: Char;
    FCtbSdeOLD: Char;
    FCtbScrOLD: Char;
    FCtbSvlOLD: Char;
    FCtbShpOLD: Char;
    FCtbHabOLD: Char;
    FEfiPdiOLD: TDate;
    FEfiPdfOLD: TDate;
    FEfiFtrOLD: Char;
    FEfiApiOLD: Double;
    FEfiStrOLD: Char;
    FEfiRegOLD: Integer;
    FEfiQciOLD: Integer;
    FPrdTepOLD: string;
    FPrdTspOLD: string;
    FPrdQddOLD: Integer;
    FPrdTppOLD: string;
    FPrdCppOLD: Integer;
    FPrdRppOLD: Integer;
    FPrdPppOLD: string;
    FPrdTeeOLD: string;
    FPrdTnrOLD: string;
    FPrdEfiOLD: Double;
    FPedBloOLD: Char;
    FComPrzOLD: Char;
    FPerComOLD: Double;
    FTipSepOLD: string;
    FIndRoeOLD: Char;
    FCprIefOLD: Char;
    FVenIecOLD: Char;
    FRecTiaOLD: Char;
    FEstFprOLD: string;
    FIndExpOLD: Integer;
    FDatPalOLD: TDate;
    FHorPalOLD: Integer;
    FCodAfiOLD: Integer;
    FEenFilOLD: string;
    FEenEntOLD: string;
    FEenCobOLD: string;
    FBaiEntOLD: string;
    FBaiCobOLD: string;
    FNenFilOLD: string;
    FFilMatOLD: Char;
    FAgeAnpOLD: Integer;
    FInsAnpOLD: Integer;
    FUSU_GerOPAOLD: Char;
    FUSU_MaiPcpOLD: string;
    FUSU_MailNfeOLD: string;
    FUSU_EmaAnlOLD: string;
    FUSU_CodTprOLD: string;
    FUSU_DatPolDscOLD: TDate;
    FUSU_TxaIndOLD: Double;
    FUSU_DivMdiOLD: Integer;
    FUSU_IniAdtOLD: TDate;
    FUSU_FinAdtOLD: TDate;
    FUSU_LocIDWOLD: string;
    FUSU_LocIPTOLD: string;
    FUSU_LocIAMOLD: string;
    FUSU_LocSTPOLD: string;

    function GetCodEmp: Integer;
    procedure SetCodEmp(const pCodEmp: Integer);
    function GetCodFil: Integer;
    procedure SetCodFil(const pCodFil: Integer);
    function GetNomFil: string;
    procedure SetNomFil(const pNomFil: string);
    function GetSigFil: string;
    procedure SetSigFil(const pSigFil: string);
    function GetInsEst: string;
    procedure SetInsEst(const pInsEst: string);
    function GetInsMun: string;
    procedure SetInsMun(const pInsMun: string);
    function GetNumCgc: Double;
    procedure SetNumCgc(const pNumCgc: Double);
    function GetEndFil: string;
    procedure SetEndFil(const pEndFil: string);
    function GetCplEnd: string;
    procedure SetCplEnd(const pCplEnd: string);
    function GetCepFil: Integer;
    procedure SetCepFil(const pCepFil: Integer);
    function GetCepIni: Integer;
    procedure SetCepIni(const pCepIni: Integer);
    function GetCodRai: Integer;
    procedure SetCodRai(const pCodRai: Integer);
    function GetBaiFil: string;
    procedure SetBaiFil(const pBaiFil: string);
    function GetCidFil: string;
    procedure SetCidFil(const pCidFil: string);
    function GetSigUfs: string;
    procedure SetSigUfs(const pSigUfs: string);
    function GetEndEnt: string;
    procedure SetEndEnt(const pEndEnt: string);
    function GetCplEnt: string;
    procedure SetCplEnt(const pCplEnt: string);
    function GetCepEnt: Integer;
    procedure SetCepEnt(const pCepEnt: Integer);
    function GetCidEnt: string;
    procedure SetCidEnt(const pCidEnt: string);
    function GetEstEnt: string;
    procedure SetEstEnt(const pEstEnt: string);
    function GetEndCob: string;
    procedure SetEndCob(const pEndCob: string);
    function GetCplCob: string;
    procedure SetCplCob(const pCplCob: string);
    function GetCepCob: Integer;
    procedure SetCepCob(const pCepCob: Integer);
    function GetCidCob: string;
    procedure SetCidCob(const pCidCob: string);
    function GetEstCob: string;
    procedure SetEstCob(const pEstCob: string);
    function GetNumFon: string;
    procedure SetNumFon(const pNumFon: string);
    function GetNumFax: string;
    procedure SetNumFax(const pNumFax: string);
    function GetCxaPst: Integer;
    procedure SetCxaPst(const pCxaPst: Integer);
    function GetIntNet: string;
    procedure SetIntNet(const pIntNet: string);
    function GetTipEmp: Integer;
    procedure SetTipEmp(const pTipEmp: Integer);
    function GetFilCli: Integer;
    procedure SetFilCli(const pFilCli: Integer);
    function GetFilFor: Integer;
    procedure SetFilFor(const pFilFor: Integer);
    function GetPedIni: Integer;
    procedure SetPedIni(const pPedIni: Integer);
    function GetZonFra: Integer;
    procedure SetZonFra(const pZonFra: Integer);
    function GetCodSuf: string;
    procedure SetCodSuf(const pCodSuf: string);
    function GetDifAli: Char;
    procedure SetDifAli(const pDifAli: Char);
    function GetCriFed: Integer;
    procedure SetCriFed(const pCriFed: Integer);
    function GetQtdDlb: Integer;
    procedure SetQtdDlb(const pQtdDlb: Integer);
    function GetVenPdi: TDate;
    procedure SetVenPdi(const pVenPdi: TDate);
    function GetVenPdf: TDate;
    procedure SetVenPdf(const pVenPdf: TDate);
    function GetVenCae: Integer;
    procedure SetVenCae(const pVenCae: Integer);
    function GetVenQdf: Integer;
    procedure SetVenQdf(const pVenQdf: Integer);
    function GetVenTcc: string;
    procedure SetVenTcc(const pVenTcc: string);
    function GetVenTpp: string;
    procedure SetVenTpp(const pVenTpp: string);
    function GetVenTps: string;
    procedure SetVenTps(const pVenTps: string);
    function GetVenDsu: Double;
    procedure SetVenDsu(const pVenDsu: Double);
    function GetVenVmp: Double;
    procedure SetVenVmp(const pVenVmp: Double);
    function GetVenLep: Integer;
    procedure SetVenLep(const pVenLep: Integer);
    function GetVenTcv: string;
    procedure SetVenTcv(const pVenTcv: string);
    function GetVenCep: Char;
    procedure SetVenCep(const pVenCep: Char);
    function GetVenPvp: Char;
    procedure SetVenPvp(const pVenPvp: Char);
    function GetVenNpa: Char;
    procedure SetVenNpa(const pVenNpa: Char);
    function GetVenCfi: Char;
    procedure SetVenCfi(const pVenCfi: Char);
    function GetVenNtr: Char;
    procedure SetVenNtr(const pVenNtr: Char);
    function GetVenSnr: string;
    procedure SetVenSnr(const pVenSnr: string);
    function GetVenQip: Integer;
    procedure SetVenQip(const pVenQip: Integer);
    function GetVenSnp: string;
    procedure SetVenSnp(const pVenSnp: string);
    function GetVenQdp: Integer;
    procedure SetVenQdp(const pVenQdp: Integer);
    function GetVenRpd: Integer;
    procedure SetVenRpd(const pVenRpd: Integer);
    function GetVenCcc: Char;
    procedure SetVenCcc(const pVenCcc: Char);
    function GetVenCcr: Char;
    procedure SetVenCcr(const pVenCcr: Char);
    function GetVenCrr: Char;
    procedure SetVenCrr(const pVenCrr: Char);
    function GetVenPse: Char;
    procedure SetVenPse(const pVenPse: Char);
    function GetVenPam: Integer;
    procedure SetVenPam(const pVenPam: Integer);
    function GetVenPma: Integer;
    procedure SetVenPma(const pVenPma: Integer);
    function GetVenPpc: Integer;
    procedure SetVenPpc(const pVenPpc: Integer);
    function GetVenPta: Integer;
    procedure SetVenPta(const pVenPta: Integer);
    function GetVenPdt: Integer;
    procedure SetVenPdt(const pVenPdt: Integer);
    function GetVenPcs: Integer;
    procedure SetVenPcs(const pVenPcs: Integer);
    function GetVenPlc: Char;
    procedure SetVenPlc(const pVenPlc: Char);
    function GetVenFam: Integer;
    procedure SetVenFam(const pVenFam: Integer);
    function GetVenFma: Integer;
    procedure SetVenFma(const pVenFma: Integer);
    function GetVenFpc: Integer;
    procedure SetVenFpc(const pVenFpc: Integer);
    function GetVenFta: Integer;
    procedure SetVenFta(const pVenFta: Integer);
    function GetVenFdt: Integer;
    procedure SetVenFdt(const pVenFdt: Integer);
    function GetVenFcs: Integer;
    procedure SetVenFcs(const pVenFcs: Integer);
    function GetVenFlc: Char;
    procedure SetVenFlc(const pVenFlc: Char);
    function GetVenIss: Double;
    procedure SetVenIss(const pVenIss: Double);
    function GetVenIpd: Integer;
    procedure SetVenIpd(const pVenIpd: Integer);
    function GetVenApc: Integer;
    procedure SetVenApc(const pVenApc: Integer);
    function GetVenLvp: Double;
    procedure SetVenLvp(const pVenLvp: Double);
    function GetEstPdi: TDate;
    procedure SetEstPdi(const pEstPdi: TDate);
    function GetEstPdf: TDate;
    procedure SetEstPdf(const pEstPdf: TDate);
    function GetEstPai: TDate;
    procedure SetEstPai(const pEstPai: TDate);
    function GetEstPaf: TDate;
    procedure SetEstPaf(const pEstPaf: TDate);
    function GetEstTei: string;
    procedure SetEstTei(const pEstTei: string);
    function GetEstTsi: string;
    procedure SetEstTsi(const pEstTsi: string);
    function GetEstTpr: string;
    procedure SetEstTpr(const pEstTpr: string);
    function GetEstUnm: Char;
    procedure SetEstUnm(const pEstUnm: Char);
    function GetEstDpf: Char;
    procedure SetEstDpf(const pEstDpf: Char);
    function GetRecPdi: TDate;
    procedure SetRecPdi(const pRecPdi: TDate);
    function GetRecPdf: TDate;
    procedure SetRecPdf(const pRecPdf: TDate);
    function GetRecPor: string;
    procedure SetRecPor(const pRecPor: string);
    function GetRecCrt: string;
    procedure SetRecCrt(const pRecCrt: string);
    function GetRecOcr: string;
    procedure SetRecOcr(const pRecOcr: string);
    function GetRecIns: string;
    procedure SetRecIns(const pRecIns: string);
    function GetRecVmt: Double;
    procedure SetRecVmt(const pRecVmt: Double);
    function GetRecDpr: Integer;
    procedure SetRecDpr(const pRecDpr: Integer);
    function GetRecMoe: string;
    procedure SetRecMoe(const pRecMoe: string);
    function GetRecJmm: Double;
    procedure SetRecJmm(const pRecJmm: Double);
    function GetRecTjr: Char;
    procedure SetRecTjr(const pRecTjr: Char);
    function GetRecDtj: Integer;
    procedure SetRecDtj(const pRecDtj: Integer);
    function GetRecMul: Double;
    procedure SetRecMul(const pRecMul: Double);
    function GetRecDtm: Integer;
    procedure SetRecDtm(const pRecDtm: Integer);
    function GetRecVjm: Double;
    procedure SetRecVjm(const pRecVjm: Double);
    function GetRecVdm: Double;
    procedure SetRecVdm(const pRecVdm: Double);
    function GetRecVmm: Double;
    procedure SetRecVmm(const pRecVmm: Double);
    function GetRecAvs: Char;
    procedure SetRecAvs(const pRecAvs: Char);
    function GetRecAdc: Char;
    procedure SetRecAdc(const pRecAdc: Char);
    function GetRecAoc: Char;
    procedure SetRecAoc(const pRecAoc: Char);
    function GetRecPcj: Char;
    procedure SetRecPcj(const pRecPcj: Char);
    function GetRecPcm: Char;
    procedure SetRecPcm(const pRecPcm: Char);
    function GetRecPce: Char;
    procedure SetRecPce(const pRecPce: Char);
    function GetRecPcc: Char;
    procedure SetRecPcc(const pRecPcc: Char);
    function GetRecPco: Char;
    procedure SetRecPco(const pRecPco: Char);
    function GetRecTpm: string;
    procedure SetRecTpm(const pRecTpm: string);
    function GetRecTac: string;
    procedure SetRecTac(const pRecTac: string);
    function GetRecTes: string;
    procedure SetRecTes(const pRecTes: string);
    function GetRecTbp: string;
    procedure SetRecTbp(const pRecTbp: string);
    function GetRecTba: string;
    procedure SetRecTba(const pRecTba: string);
    function GetRecTbs: string;
    procedure SetRecTbs(const pRecTbs: string);
    function GetRecTbc: string;
    procedure SetRecTbc(const pRecTbc: string);
    function GetRecTpc: string;
    procedure SetRecTpc(const pRecTpc: string);
    function GetRecTcc: string;
    procedure SetRecTcc(const pRecTcc: string);
    function GetCprPdi: TDate;
    procedure SetCprPdi(const pCprPdi: TDate);
    function GetCprPdf: TDate;
    procedure SetCprPdf(const pCprPdf: TDate);
    function GetCprQmc: Integer;
    procedure SetCprQmc(const pCprQmc: Integer);
    function GetCprAvo: Char;
    procedure SetCprAvo(const pCprAvo: Char);
    function GetCprDnf: Double;
    procedure SetCprDnf(const pCprDnf: Double);
    function GetCprTop: string;
    procedure SetCprTop(const pCprTop: string);
    function GetCprTom: string;
    procedure SetCprTom(const pCprTom: string);
    function GetCprTos: string;
    procedure SetCprTos(const pCprTos: string);
    function GetCprTfp: string;
    procedure SetCprTfp(const pCprTfp: string);
    function GetCprTfs: string;
    procedure SetCprTfs(const pCprTfs: string);
    function GetCprTea: string;
    procedure SetCprTea(const pCprTea: string);
    function GetCprTsa: string;
    procedure SetCprTsa(const pCprTsa: string);
    function GetCprSnp: string;
    procedure SetCprSnp(const pCprSnp: string);
    function GetCprCcf: Char;
    procedure SetCprCcf(const pCprCcf: Char);
    function GetCprCfr: Char;
    procedure SetCprCfr(const pCprCfr: Char);
    function GetCprFss: Integer;
    procedure SetCprFss(const pCprFss: Integer);
    function GetPagPdi: TDate;
    procedure SetPagPdi(const pPagPdi: TDate);
    function GetPagPdf: TDate;
    procedure SetPagPdf(const pPagPdf: TDate);
    function GetPagApr: Char;
    procedure SetPagApr(const pPagApr: Char);
    function GetPagDpr: Integer;
    procedure SetPagDpr(const pPagDpr: Integer);
    function GetPagMoe: string;
    procedure SetPagMoe(const pPagMoe: string);
    function GetPagJmm: Double;
    procedure SetPagJmm(const pPagJmm: Double);
    function GetPagTjr: Char;
    procedure SetPagTjr(const pPagTjr: Char);
    function GetPagDtj: Integer;
    procedure SetPagDtj(const pPagDtj: Integer);
    function GetPagMul: Double;
    procedure SetPagMul(const pPagMul: Double);
    function GetPagDtm: Integer;
    procedure SetPagDtm(const pPagDtm: Integer);
    function GetPagTpm: string;
    procedure SetPagTpm(const pPagTpm: string);
    function GetPagTpf: string;
    procedure SetPagTpf(const pPagTpf: string);
    function GetPagTaf: string;
    procedure SetPagTaf(const pPagTaf: string);
    function GetPagTbp: string;
    procedure SetPagTbp(const pPagTbp: string);
    function GetPagTbc: string;
    procedure SetPagTbc(const pPagTbc: string);
    function GetPagTbs: string;
    procedure SetPagTbs(const pPagTbs: string);
    function GetPagTpc: string;
    procedure SetPagTpc(const pPagTpc: string);
    function GetPagTcc: string;
    procedure SetPagTcc(const pPagTcc: string);
    function GetPagVjm: Double;
    procedure SetPagVjm(const pPagVjm: Double);
    function GetPagVdm: Double;
    procedure SetPagVdm(const pPagVdm: Double);
    function GetPagVmm: Double;
    procedure SetPagVmm(const pPagVmm: Double);
    function GetPagTcm: string;
    procedure SetPagTcm(const pPagTcm: string);
    function GetPagTdc: string;
    procedure SetPagTdc(const pPagTdc: string);
    function GetPagTdi: string;
    procedure SetPagTdi(const pPagTdi: string);
    function GetPagLir: Double;
    procedure SetPagLir(const pPagLir: Double);
    function GetPagEev: Integer;
    procedure SetPagEev(const pPagEev: Integer);
    function GetCxbPdi: TDate;
    procedure SetCxbPdi(const pCxbPdi: TDate);
    function GetCxbPdf: TDate;
    procedure SetCxbPdf(const pCxbPdf: TDate);
    function GetCxbTca: string;
    procedure SetCxbTca(const pCxbTca: string);
    function GetCxbTdc: string;
    procedure SetCxbTdc(const pCxbTdc: string);
    function GetCxbTde: string;
    procedure SetCxbTde(const pCxbTde: string);
    function GetCxbTdt: string;
    procedure SetCxbTdt(const pCxbTdt: string);
    function GetCxbDec: Integer;
    procedure SetCxbDec(const pCxbDec: Integer);
    function GetCtbExi: TDate;
    procedure SetCtbExi(const pCtbExi: TDate);
    function GetCtbExf: TDate;
    procedure SetCtbExf(const pCtbExf: TDate);
    function GetCtbPei: TDate;
    procedure SetCtbPei(const pCtbPei: TDate);
    function GetCtbPef: TDate;
    procedure SetCtbPef(const pCtbPef: TDate);
    function GetCtbQdl: Integer;
    procedure SetCtbQdl(const pCtbQdl: Integer);
    function GetCtbMoe: string;
    procedure SetCtbMoe(const pCtbMoe: string);
    function GetCtbLog: Char;
    procedure SetCtbLog(const pCtbLog: Char);
    function GetCtbAli: Char;
    procedure SetCtbAli(const pCtbAli: Char);
    function GetCtbDia: TDate;
    procedure SetCtbDia(const pCtbDia: TDate);
    function GetCtbObs: string;
    procedure SetCtbObs(const pCtbObs: string);
    function GetCtbNrj: string;
    procedure SetCtbNrj(const pCtbNrj: string);
    function GetCtbDrj: TDate;
    procedure SetCtbDrj(const pCtbDrj: TDate);
    function GetCtbNsr: string;
    procedure SetCtbNsr(const pCtbNsr: string);
    function GetCtbFsr: string;
    procedure SetCtbFsr(const pCtbFsr: string);
    function GetCtbCsr: Double;
    procedure SetCtbCsr(const pCtbCsr: Double);
    function GetCtbNcr: string;
    procedure SetCtbNcr(const pCtbNcr: string);
    function GetCtbFcr: Char;
    procedure SetCtbFcr(const pCtbFcr: Char);
    function GetCtbCrc: string;
    procedure SetCtbCrc(const pCtbCrc: string);
    function GetCtbCcr: Double;
    procedure SetCtbCcr(const pCtbCcr: Double);
    function GetCtbCfm: Integer;
    procedure SetCtbCfm(const pCtbCfm: Integer);
    function GetCtbCae: string;
    procedure SetCtbCae(const pCtbCae: string);
    function GetCtbCaf: Integer;
    procedure SetCtbCaf(const pCtbCaf: Integer);
    function GetCtbFec: Char;
    procedure SetCtbFec(const pCtbFec: Char);
    function GetCtbSdt: Char;
    procedure SetCtbSdt(const pCtbSdt: Char);
    function GetCtbSde: Char;
    procedure SetCtbSde(const pCtbSde: Char);
    function GetCtbScr: Char;
    procedure SetCtbScr(const pCtbScr: Char);
    function GetCtbSvl: Char;
    procedure SetCtbSvl(const pCtbSvl: Char);
    function GetCtbShp: Char;
    procedure SetCtbShp(const pCtbShp: Char);
    function GetCtbHab: Char;
    procedure SetCtbHab(const pCtbHab: Char);
    function GetEfiPdi: TDate;
    procedure SetEfiPdi(const pEfiPdi: TDate);
    function GetEfiPdf: TDate;
    procedure SetEfiPdf(const pEfiPdf: TDate);
    function GetEfiFtr: Char;
    procedure SetEfiFtr(const pEfiFtr: Char);
    function GetEfiApi: Double;
    procedure SetEfiApi(const pEfiApi: Double);
    function GetEfiStr: Char;
    procedure SetEfiStr(const pEfiStr: Char);
    function GetEfiReg: Integer;
    procedure SetEfiReg(const pEfiReg: Integer);
    function GetEfiQci: Integer;
    procedure SetEfiQci(const pEfiQci: Integer);
    function GetPrdTep: string;
    procedure SetPrdTep(const pPrdTep: string);
    function GetPrdTsp: string;
    procedure SetPrdTsp(const pPrdTsp: string);
    function GetPrdQdd: Integer;
    procedure SetPrdQdd(const pPrdQdd: Integer);
    function GetPrdTpp: string;
    procedure SetPrdTpp(const pPrdTpp: string);
    function GetPrdCpp: Integer;
    procedure SetPrdCpp(const pPrdCpp: Integer);
    function GetPrdRpp: Integer;
    procedure SetPrdRpp(const pPrdRpp: Integer);
    function GetPrdPpp: string;
    procedure SetPrdPpp(const pPrdPpp: string);
    function GetPrdTee: string;
    procedure SetPrdTee(const pPrdTee: string);
    function GetPrdTnr: string;
    procedure SetPrdTnr(const pPrdTnr: string);
    function GetPrdEfi: Double;
    procedure SetPrdEfi(const pPrdEfi: Double);
    function GetPedBlo: Char;
    procedure SetPedBlo(const pPedBlo: Char);
    function GetComPrz: Char;
    procedure SetComPrz(const pComPrz: Char);
    function GetPerCom: Double;
    procedure SetPerCom(const pPerCom: Double);
    function GetTipSep: string;
    procedure SetTipSep(const pTipSep: string);
    function GetIndRoe: Char;
    procedure SetIndRoe(const pIndRoe: Char);
    function GetCprIef: Char;
    procedure SetCprIef(const pCprIef: Char);
    function GetVenIec: Char;
    procedure SetVenIec(const pVenIec: Char);
    function GetRecTia: Char;
    procedure SetRecTia(const pRecTia: Char);
    function GetEstFpr: string;
    procedure SetEstFpr(const pEstFpr: string);
    function GetIndExp: Integer;
    procedure SetIndExp(const pIndExp: Integer);
    function GetDatPal: TDate;
    procedure SetDatPal(const pDatPal: TDate);
    function GetHorPal: Integer;
    procedure SetHorPal(const pHorPal: Integer);
    function GetCodAfi: Integer;
    procedure SetCodAfi(const pCodAfi: Integer);
    function GetEenFil: string;
    procedure SetEenFil(const pEenFil: string);
    function GetEenEnt: string;
    procedure SetEenEnt(const pEenEnt: string);
    function GetEenCob: string;
    procedure SetEenCob(const pEenCob: string);
    function GetBaiEnt: string;
    procedure SetBaiEnt(const pBaiEnt: string);
    function GetBaiCob: string;
    procedure SetBaiCob(const pBaiCob: string);
    function GetNenFil: string;
    procedure SetNenFil(const pNenFil: string);
    function GetFilMat: Char;
    procedure SetFilMat(const pFilMat: Char);
    function GetAgeAnp: Integer;
    procedure SetAgeAnp(const pAgeAnp: Integer);
    function GetInsAnp: Integer;
    procedure SetInsAnp(const pInsAnp: Integer);
    function GetUSU_GerOPA: Char;
    procedure SetUSU_GerOPA(const pUSU_GerOPA: Char);
    function GetUSU_MaiPcp: string;
    procedure SetUSU_MaiPcp(const pUSU_MaiPcp: string);
    function GetUSU_MailNfe: string;
    procedure SetUSU_MailNfe(const pUSU_MailNfe: string);
    function GetUSU_EmaAnl: string;
    procedure SetUSU_EmaAnl(const pUSU_EmaAnl: string);
    function GetUSU_CodTpr: string;
    procedure SetUSU_CodTpr(const pUSU_CodTpr: string);
    function GetUSU_DatPolDsc: TDate;
    procedure SetUSU_DatPolDsc(const pUSU_DatPolDsc: TDate);
    function GetUSU_TxaInd: Double;
    procedure SetUSU_TxaInd(const pUSU_TxaInd: Double);
    function GetUSU_DivMdi: Integer;
    procedure SetUSU_DivMdi(const pUSU_DivMdi: Integer);
    function GetUSU_IniAdt: TDate;
    procedure SetUSU_IniAdt(const pUSU_IniAdt: TDate);
    function GetUSU_FinAdt: TDate;
    procedure SetUSU_FinAdt(const pUSU_FinAdt: TDate);
    function GetUSU_LocIDW: string;
    procedure SetUSU_LocIDW(const pUSU_LocIDW: string);
    function GetUSU_LocIPT: string;
    procedure SetUSU_LocIPT(const pUSU_LocIPT: string);
    function GetUSU_LocIAM: string;
    procedure SetUSU_LocIAM(const pUSU_LocIAM: string);
    function GetUSU_LocSTP: string;
    procedure SetUSU_LocSTP(const pUSU_LocSTP: string);

    function GetCodEmpOld: Integer;
    procedure SetCodEmpOld(const pCodEmp: Integer);
    function GetCodFilOld: Integer;
    procedure SetCodFilOld(const pCodFil: Integer);
    function GetNomFilOld: string;
    procedure SetNomFilOld(const pNomFil: string);
    function GetSigFilOld: string;
    procedure SetSigFilOld(const pSigFil: string);
    function GetInsEstOld: string;
    procedure SetInsEstOld(const pInsEst: string);
    function GetInsMunOld: string;
    procedure SetInsMunOld(const pInsMun: string);
    function GetNumCgcOld: Double;
    procedure SetNumCgcOld(const pNumCgc: Double);
    function GetEndFilOld: string;
    procedure SetEndFilOld(const pEndFil: string);
    function GetCplEndOld: string;
    procedure SetCplEndOld(const pCplEnd: string);
    function GetCepFilOld: Integer;
    procedure SetCepFilOld(const pCepFil: Integer);
    function GetCepIniOld: Integer;
    procedure SetCepIniOld(const pCepIni: Integer);
    function GetCodRaiOld: Integer;
    procedure SetCodRaiOld(const pCodRai: Integer);
    function GetBaiFilOld: string;
    procedure SetBaiFilOld(const pBaiFil: string);
    function GetCidFilOld: string;
    procedure SetCidFilOld(const pCidFil: string);
    function GetSigUfsOld: string;
    procedure SetSigUfsOld(const pSigUfs: string);
    function GetEndEntOld: string;
    procedure SetEndEntOld(const pEndEnt: string);
    function GetCplEntOld: string;
    procedure SetCplEntOld(const pCplEnt: string);
    function GetCepEntOld: Integer;
    procedure SetCepEntOld(const pCepEnt: Integer);
    function GetCidEntOld: string;
    procedure SetCidEntOld(const pCidEnt: string);
    function GetEstEntOld: string;
    procedure SetEstEntOld(const pEstEnt: string);
    function GetEndCobOld: string;
    procedure SetEndCobOld(const pEndCob: string);
    function GetCplCobOld: string;
    procedure SetCplCobOld(const pCplCob: string);
    function GetCepCobOld: Integer;
    procedure SetCepCobOld(const pCepCob: Integer);
    function GetCidCobOld: string;
    procedure SetCidCobOld(const pCidCob: string);
    function GetEstCobOld: string;
    procedure SetEstCobOld(const pEstCob: string);
    function GetNumFonOld: string;
    procedure SetNumFonOld(const pNumFon: string);
    function GetNumFaxOld: string;
    procedure SetNumFaxOld(const pNumFax: string);
    function GetCxaPstOld: Integer;
    procedure SetCxaPstOld(const pCxaPst: Integer);
    function GetIntNetOld: string;
    procedure SetIntNetOld(const pIntNet: string);
    function GetTipEmpOld: Integer;
    procedure SetTipEmpOld(const pTipEmp: Integer);
    function GetFilCliOld: Integer;
    procedure SetFilCliOld(const pFilCli: Integer);
    function GetFilForOld: Integer;
    procedure SetFilForOld(const pFilFor: Integer);
    function GetPedIniOld: Integer;
    procedure SetPedIniOld(const pPedIni: Integer);
    function GetZonFraOld: Integer;
    procedure SetZonFraOld(const pZonFra: Integer);
    function GetCodSufOld: string;
    procedure SetCodSufOld(const pCodSuf: string);
    function GetDifAliOld: Char;
    procedure SetDifAliOld(const pDifAli: Char);
    function GetCriFedOld: Integer;
    procedure SetCriFedOld(const pCriFed: Integer);
    function GetQtdDlbOld: Integer;
    procedure SetQtdDlbOld(const pQtdDlb: Integer);
    function GetVenPdiOld: TDate;
    procedure SetVenPdiOld(const pVenPdi: TDate);
    function GetVenPdfOld: TDate;
    procedure SetVenPdfOld(const pVenPdf: TDate);
    function GetVenCaeOld: Integer;
    procedure SetVenCaeOld(const pVenCae: Integer);
    function GetVenQdfOld: Integer;
    procedure SetVenQdfOld(const pVenQdf: Integer);
    function GetVenTccOld: string;
    procedure SetVenTccOld(const pVenTcc: string);
    function GetVenTppOld: string;
    procedure SetVenTppOld(const pVenTpp: string);
    function GetVenTpsOld: string;
    procedure SetVenTpsOld(const pVenTps: string);
    function GetVenDsuOld: Double;
    procedure SetVenDsuOld(const pVenDsu: Double);
    function GetVenVmpOld: Double;
    procedure SetVenVmpOld(const pVenVmp: Double);
    function GetVenLepOld: Integer;
    procedure SetVenLepOld(const pVenLep: Integer);
    function GetVenTcvOld: string;
    procedure SetVenTcvOld(const pVenTcv: string);
    function GetVenCepOld: Char;
    procedure SetVenCepOld(const pVenCep: Char);
    function GetVenPvpOld: Char;
    procedure SetVenPvpOld(const pVenPvp: Char);
    function GetVenNpaOld: Char;
    procedure SetVenNpaOld(const pVenNpa: Char);
    function GetVenCfiOld: Char;
    procedure SetVenCfiOld(const pVenCfi: Char);
    function GetVenNtrOld: Char;
    procedure SetVenNtrOld(const pVenNtr: Char);
    function GetVenSnrOld: string;
    procedure SetVenSnrOld(const pVenSnr: string);
    function GetVenQipOld: Integer;
    procedure SetVenQipOld(const pVenQip: Integer);
    function GetVenSnpOld: string;
    procedure SetVenSnpOld(const pVenSnp: string);
    function GetVenQdpOld: Integer;
    procedure SetVenQdpOld(const pVenQdp: Integer);
    function GetVenRpdOld: Integer;
    procedure SetVenRpdOld(const pVenRpd: Integer);
    function GetVenCccOld: Char;
    procedure SetVenCccOld(const pVenCcc: Char);
    function GetVenCcrOld: Char;
    procedure SetVenCcrOld(const pVenCcr: Char);
    function GetVenCrrOld: Char;
    procedure SetVenCrrOld(const pVenCrr: Char);
    function GetVenPseOld: Char;
    procedure SetVenPseOld(const pVenPse: Char);
    function GetVenPamOld: Integer;
    procedure SetVenPamOld(const pVenPam: Integer);
    function GetVenPmaOld: Integer;
    procedure SetVenPmaOld(const pVenPma: Integer);
    function GetVenPpcOld: Integer;
    procedure SetVenPpcOld(const pVenPpc: Integer);
    function GetVenPtaOld: Integer;
    procedure SetVenPtaOld(const pVenPta: Integer);
    function GetVenPdtOld: Integer;
    procedure SetVenPdtOld(const pVenPdt: Integer);
    function GetVenPcsOld: Integer;
    procedure SetVenPcsOld(const pVenPcs: Integer);
    function GetVenPlcOld: Char;
    procedure SetVenPlcOld(const pVenPlc: Char);
    function GetVenFamOld: Integer;
    procedure SetVenFamOld(const pVenFam: Integer);
    function GetVenFmaOld: Integer;
    procedure SetVenFmaOld(const pVenFma: Integer);
    function GetVenFpcOld: Integer;
    procedure SetVenFpcOld(const pVenFpc: Integer);
    function GetVenFtaOld: Integer;
    procedure SetVenFtaOld(const pVenFta: Integer);
    function GetVenFdtOld: Integer;
    procedure SetVenFdtOld(const pVenFdt: Integer);
    function GetVenFcsOld: Integer;
    procedure SetVenFcsOld(const pVenFcs: Integer);
    function GetVenFlcOld: Char;
    procedure SetVenFlcOld(const pVenFlc: Char);
    function GetVenIssOld: Double;
    procedure SetVenIssOld(const pVenIss: Double);
    function GetVenIpdOld: Integer;
    procedure SetVenIpdOld(const pVenIpd: Integer);
    function GetVenApcOld: Integer;
    procedure SetVenApcOld(const pVenApc: Integer);
    function GetVenLvpOld: Double;
    procedure SetVenLvpOld(const pVenLvp: Double);
    function GetEstPdiOld: TDate;
    procedure SetEstPdiOld(const pEstPdi: TDate);
    function GetEstPdfOld: TDate;
    procedure SetEstPdfOld(const pEstPdf: TDate);
    function GetEstPaiOld: TDate;
    procedure SetEstPaiOld(const pEstPai: TDate);
    function GetEstPafOld: TDate;
    procedure SetEstPafOld(const pEstPaf: TDate);
    function GetEstTeiOld: string;
    procedure SetEstTeiOld(const pEstTei: string);
    function GetEstTsiOld: string;
    procedure SetEstTsiOld(const pEstTsi: string);
    function GetEstTprOld: string;
    procedure SetEstTprOld(const pEstTpr: string);
    function GetEstUnmOld: Char;
    procedure SetEstUnmOld(const pEstUnm: Char);
    function GetEstDpfOld: Char;
    procedure SetEstDpfOld(const pEstDpf: Char);
    function GetRecPdiOld: TDate;
    procedure SetRecPdiOld(const pRecPdi: TDate);
    function GetRecPdfOld: TDate;
    procedure SetRecPdfOld(const pRecPdf: TDate);
    function GetRecPorOld: string;
    procedure SetRecPorOld(const pRecPor: string);
    function GetRecCrtOld: string;
    procedure SetRecCrtOld(const pRecCrt: string);
    function GetRecOcrOld: string;
    procedure SetRecOcrOld(const pRecOcr: string);
    function GetRecInsOld: string;
    procedure SetRecInsOld(const pRecIns: string);
    function GetRecVmtOld: Double;
    procedure SetRecVmtOld(const pRecVmt: Double);
    function GetRecDprOld: Integer;
    procedure SetRecDprOld(const pRecDpr: Integer);
    function GetRecMoeOld: string;
    procedure SetRecMoeOld(const pRecMoe: string);
    function GetRecJmmOld: Double;
    procedure SetRecJmmOld(const pRecJmm: Double);
    function GetRecTjrOld: Char;
    procedure SetRecTjrOld(const pRecTjr: Char);
    function GetRecDtjOld: Integer;
    procedure SetRecDtjOld(const pRecDtj: Integer);
    function GetRecMulOld: Double;
    procedure SetRecMulOld(const pRecMul: Double);
    function GetRecDtmOld: Integer;
    procedure SetRecDtmOld(const pRecDtm: Integer);
    function GetRecVjmOld: Double;
    procedure SetRecVjmOld(const pRecVjm: Double);
    function GetRecVdmOld: Double;
    procedure SetRecVdmOld(const pRecVdm: Double);
    function GetRecVmmOld: Double;
    procedure SetRecVmmOld(const pRecVmm: Double);
    function GetRecAvsOld: Char;
    procedure SetRecAvsOld(const pRecAvs: Char);
    function GetRecAdcOld: Char;
    procedure SetRecAdcOld(const pRecAdc: Char);
    function GetRecAocOld: Char;
    procedure SetRecAocOld(const pRecAoc: Char);
    function GetRecPcjOld: Char;
    procedure SetRecPcjOld(const pRecPcj: Char);
    function GetRecPcmOld: Char;
    procedure SetRecPcmOld(const pRecPcm: Char);
    function GetRecPceOld: Char;
    procedure SetRecPceOld(const pRecPce: Char);
    function GetRecPccOld: Char;
    procedure SetRecPccOld(const pRecPcc: Char);
    function GetRecPcoOld: Char;
    procedure SetRecPcoOld(const pRecPco: Char);
    function GetRecTpmOld: string;
    procedure SetRecTpmOld(const pRecTpm: string);
    function GetRecTacOld: string;
    procedure SetRecTacOld(const pRecTac: string);
    function GetRecTesOld: string;
    procedure SetRecTesOld(const pRecTes: string);
    function GetRecTbpOld: string;
    procedure SetRecTbpOld(const pRecTbp: string);
    function GetRecTbaOld: string;
    procedure SetRecTbaOld(const pRecTba: string);
    function GetRecTbsOld: string;
    procedure SetRecTbsOld(const pRecTbs: string);
    function GetRecTbcOld: string;
    procedure SetRecTbcOld(const pRecTbc: string);
    function GetRecTpcOld: string;
    procedure SetRecTpcOld(const pRecTpc: string);
    function GetRecTccOld: string;
    procedure SetRecTccOld(const pRecTcc: string);
    function GetCprPdiOld: TDate;
    procedure SetCprPdiOld(const pCprPdi: TDate);
    function GetCprPdfOld: TDate;
    procedure SetCprPdfOld(const pCprPdf: TDate);
    function GetCprQmcOld: Integer;
    procedure SetCprQmcOld(const pCprQmc: Integer);
    function GetCprAvoOld: Char;
    procedure SetCprAvoOld(const pCprAvo: Char);
    function GetCprDnfOld: Double;
    procedure SetCprDnfOld(const pCprDnf: Double);
    function GetCprTopOld: string;
    procedure SetCprTopOld(const pCprTop: string);
    function GetCprTomOld: string;
    procedure SetCprTomOld(const pCprTom: string);
    function GetCprTosOld: string;
    procedure SetCprTosOld(const pCprTos: string);
    function GetCprTfpOld: string;
    procedure SetCprTfpOld(const pCprTfp: string);
    function GetCprTfsOld: string;
    procedure SetCprTfsOld(const pCprTfs: string);
    function GetCprTeaOld: string;
    procedure SetCprTeaOld(const pCprTea: string);
    function GetCprTsaOld: string;
    procedure SetCprTsaOld(const pCprTsa: string);
    function GetCprSnpOld: string;
    procedure SetCprSnpOld(const pCprSnp: string);
    function GetCprCcfOld: Char;
    procedure SetCprCcfOld(const pCprCcf: Char);
    function GetCprCfrOld: Char;
    procedure SetCprCfrOld(const pCprCfr: Char);
    function GetCprFssOld: Integer;
    procedure SetCprFssOld(const pCprFss: Integer);
    function GetPagPdiOld: TDate;
    procedure SetPagPdiOld(const pPagPdi: TDate);
    function GetPagPdfOld: TDate;
    procedure SetPagPdfOld(const pPagPdf: TDate);
    function GetPagAprOld: Char;
    procedure SetPagAprOld(const pPagApr: Char);
    function GetPagDprOld: Integer;
    procedure SetPagDprOld(const pPagDpr: Integer);
    function GetPagMoeOld: string;
    procedure SetPagMoeOld(const pPagMoe: string);
    function GetPagJmmOld: Double;
    procedure SetPagJmmOld(const pPagJmm: Double);
    function GetPagTjrOld: Char;
    procedure SetPagTjrOld(const pPagTjr: Char);
    function GetPagDtjOld: Integer;
    procedure SetPagDtjOld(const pPagDtj: Integer);
    function GetPagMulOld: Double;
    procedure SetPagMulOld(const pPagMul: Double);
    function GetPagDtmOld: Integer;
    procedure SetPagDtmOld(const pPagDtm: Integer);
    function GetPagTpmOld: string;
    procedure SetPagTpmOld(const pPagTpm: string);
    function GetPagTpfOld: string;
    procedure SetPagTpfOld(const pPagTpf: string);
    function GetPagTafOld: string;
    procedure SetPagTafOld(const pPagTaf: string);
    function GetPagTbpOld: string;
    procedure SetPagTbpOld(const pPagTbp: string);
    function GetPagTbcOld: string;
    procedure SetPagTbcOld(const pPagTbc: string);
    function GetPagTbsOld: string;
    procedure SetPagTbsOld(const pPagTbs: string);
    function GetPagTpcOld: string;
    procedure SetPagTpcOld(const pPagTpc: string);
    function GetPagTccOld: string;
    procedure SetPagTccOld(const pPagTcc: string);
    function GetPagVjmOld: Double;
    procedure SetPagVjmOld(const pPagVjm: Double);
    function GetPagVdmOld: Double;
    procedure SetPagVdmOld(const pPagVdm: Double);
    function GetPagVmmOld: Double;
    procedure SetPagVmmOld(const pPagVmm: Double);
    function GetPagTcmOld: string;
    procedure SetPagTcmOld(const pPagTcm: string);
    function GetPagTdcOld: string;
    procedure SetPagTdcOld(const pPagTdc: string);
    function GetPagTdiOld: string;
    procedure SetPagTdiOld(const pPagTdi: string);
    function GetPagLirOld: Double;
    procedure SetPagLirOld(const pPagLir: Double);
    function GetPagEevOld: Integer;
    procedure SetPagEevOld(const pPagEev: Integer);
    function GetCxbPdiOld: TDate;
    procedure SetCxbPdiOld(const pCxbPdi: TDate);
    function GetCxbPdfOld: TDate;
    procedure SetCxbPdfOld(const pCxbPdf: TDate);
    function GetCxbTcaOld: string;
    procedure SetCxbTcaOld(const pCxbTca: string);
    function GetCxbTdcOld: string;
    procedure SetCxbTdcOld(const pCxbTdc: string);
    function GetCxbTdeOld: string;
    procedure SetCxbTdeOld(const pCxbTde: string);
    function GetCxbTdtOld: string;
    procedure SetCxbTdtOld(const pCxbTdt: string);
    function GetCxbDecOld: Integer;
    procedure SetCxbDecOld(const pCxbDec: Integer);
    function GetCtbExiOld: TDate;
    procedure SetCtbExiOld(const pCtbExi: TDate);
    function GetCtbExfOld: TDate;
    procedure SetCtbExfOld(const pCtbExf: TDate);
    function GetCtbPeiOld: TDate;
    procedure SetCtbPeiOld(const pCtbPei: TDate);
    function GetCtbPefOld: TDate;
    procedure SetCtbPefOld(const pCtbPef: TDate);
    function GetCtbQdlOld: Integer;
    procedure SetCtbQdlOld(const pCtbQdl: Integer);
    function GetCtbMoeOld: string;
    procedure SetCtbMoeOld(const pCtbMoe: string);
    function GetCtbLogOld: Char;
    procedure SetCtbLogOld(const pCtbLog: Char);
    function GetCtbAliOld: Char;
    procedure SetCtbAliOld(const pCtbAli: Char);
    function GetCtbDiaOld: TDate;
    procedure SetCtbDiaOld(const pCtbDia: TDate);
    function GetCtbObsOld: string;
    procedure SetCtbObsOld(const pCtbObs: string);
    function GetCtbNrjOld: string;
    procedure SetCtbNrjOld(const pCtbNrj: string);
    function GetCtbDrjOld: TDate;
    procedure SetCtbDrjOld(const pCtbDrj: TDate);
    function GetCtbNsrOld: string;
    procedure SetCtbNsrOld(const pCtbNsr: string);
    function GetCtbFsrOld: string;
    procedure SetCtbFsrOld(const pCtbFsr: string);
    function GetCtbCsrOld: Double;
    procedure SetCtbCsrOld(const pCtbCsr: Double);
    function GetCtbNcrOld: string;
    procedure SetCtbNcrOld(const pCtbNcr: string);
    function GetCtbFcrOld: Char;
    procedure SetCtbFcrOld(const pCtbFcr: Char);
    function GetCtbCrcOld: string;
    procedure SetCtbCrcOld(const pCtbCrc: string);
    function GetCtbCcrOld: Double;
    procedure SetCtbCcrOld(const pCtbCcr: Double);
    function GetCtbCfmOld: Integer;
    procedure SetCtbCfmOld(const pCtbCfm: Integer);
    function GetCtbCaeOld: string;
    procedure SetCtbCaeOld(const pCtbCae: string);
    function GetCtbCafOld: Integer;
    procedure SetCtbCafOld(const pCtbCaf: Integer);
    function GetCtbFecOld: Char;
    procedure SetCtbFecOld(const pCtbFec: Char);
    function GetCtbSdtOld: Char;
    procedure SetCtbSdtOld(const pCtbSdt: Char);
    function GetCtbSdeOld: Char;
    procedure SetCtbSdeOld(const pCtbSde: Char);
    function GetCtbScrOld: Char;
    procedure SetCtbScrOld(const pCtbScr: Char);
    function GetCtbSvlOld: Char;
    procedure SetCtbSvlOld(const pCtbSvl: Char);
    function GetCtbShpOld: Char;
    procedure SetCtbShpOld(const pCtbShp: Char);
    function GetCtbHabOld: Char;
    procedure SetCtbHabOld(const pCtbHab: Char);
    function GetEfiPdiOld: TDate;
    procedure SetEfiPdiOld(const pEfiPdi: TDate);
    function GetEfiPdfOld: TDate;
    procedure SetEfiPdfOld(const pEfiPdf: TDate);
    function GetEfiFtrOld: Char;
    procedure SetEfiFtrOld(const pEfiFtr: Char);
    function GetEfiApiOld: Double;
    procedure SetEfiApiOld(const pEfiApi: Double);
    function GetEfiStrOld: Char;
    procedure SetEfiStrOld(const pEfiStr: Char);
    function GetEfiRegOld: Integer;
    procedure SetEfiRegOld(const pEfiReg: Integer);
    function GetEfiQciOld: Integer;
    procedure SetEfiQciOld(const pEfiQci: Integer);
    function GetPrdTepOld: string;
    procedure SetPrdTepOld(const pPrdTep: string);
    function GetPrdTspOld: string;
    procedure SetPrdTspOld(const pPrdTsp: string);
    function GetPrdQddOld: Integer;
    procedure SetPrdQddOld(const pPrdQdd: Integer);
    function GetPrdTppOld: string;
    procedure SetPrdTppOld(const pPrdTpp: string);
    function GetPrdCppOld: Integer;
    procedure SetPrdCppOld(const pPrdCpp: Integer);
    function GetPrdRppOld: Integer;
    procedure SetPrdRppOld(const pPrdRpp: Integer);
    function GetPrdPppOld: string;
    procedure SetPrdPppOld(const pPrdPpp: string);
    function GetPrdTeeOld: string;
    procedure SetPrdTeeOld(const pPrdTee: string);
    function GetPrdTnrOld: string;
    procedure SetPrdTnrOld(const pPrdTnr: string);
    function GetPrdEfiOld: Double;
    procedure SetPrdEfiOld(const pPrdEfi: Double);
    function GetPedBloOld: Char;
    procedure SetPedBloOld(const pPedBlo: Char);
    function GetComPrzOld: Char;
    procedure SetComPrzOld(const pComPrz: Char);
    function GetPerComOld: Double;
    procedure SetPerComOld(const pPerCom: Double);
    function GetTipSepOld: string;
    procedure SetTipSepOld(const pTipSep: string);
    function GetIndRoeOld: Char;
    procedure SetIndRoeOld(const pIndRoe: Char);
    function GetCprIefOld: Char;
    procedure SetCprIefOld(const pCprIef: Char);
    function GetVenIecOld: Char;
    procedure SetVenIecOld(const pVenIec: Char);
    function GetRecTiaOld: Char;
    procedure SetRecTiaOld(const pRecTia: Char);
    function GetEstFprOld: string;
    procedure SetEstFprOld(const pEstFpr: string);
    function GetIndExpOld: Integer;
    procedure SetIndExpOld(const pIndExp: Integer);
    function GetDatPalOld: TDate;
    procedure SetDatPalOld(const pDatPal: TDate);
    function GetHorPalOld: Integer;
    procedure SetHorPalOld(const pHorPal: Integer);
    function GetCodAfiOld: Integer;
    procedure SetCodAfiOld(const pCodAfi: Integer);
    function GetEenFilOld: string;
    procedure SetEenFilOld(const pEenFil: string);
    function GetEenEntOld: string;
    procedure SetEenEntOld(const pEenEnt: string);
    function GetEenCobOld: string;
    procedure SetEenCobOld(const pEenCob: string);
    function GetBaiEntOld: string;
    procedure SetBaiEntOld(const pBaiEnt: string);
    function GetBaiCobOld: string;
    procedure SetBaiCobOld(const pBaiCob: string);
    function GetNenFilOld: string;
    procedure SetNenFilOld(const pNenFil: string);
    function GetFilMatOld: Char;
    procedure SetFilMatOld(const pFilMat: Char);
    function GetAgeAnpOld: Integer;
    procedure SetAgeAnpOld(const pAgeAnp: Integer);
    function GetInsAnpOld: Integer;
    procedure SetInsAnpOld(const pInsAnp: Integer);
    function GetUSU_GerOPAOld: Char;
    procedure SetUSU_GerOPAOld(const pUSU_GerOPA: Char);
    function GetUSU_MaiPcpOld: string;
    procedure SetUSU_MaiPcpOld(const pUSU_MaiPcp: string);
    function GetUSU_MailNfeOld: string;
    procedure SetUSU_MailNfeOld(const pUSU_MailNfe: string);
    function GetUSU_EmaAnlOld: string;
    procedure SetUSU_EmaAnlOld(const pUSU_EmaAnl: string);
    function GetUSU_CodTprOld: string;
    procedure SetUSU_CodTprOld(const pUSU_CodTpr: string);
    function GetUSU_DatPolDscOld: TDate;
    procedure SetUSU_DatPolDscOld(const pUSU_DatPolDsc: TDate);
    function GetUSU_TxaIndOld: Double;
    procedure SetUSU_TxaIndOld(const pUSU_TxaInd: Double);
    function GetUSU_DivMdiOld: Integer;
    procedure SetUSU_DivMdiOld(const pUSU_DivMdi: Integer);
    function GetUSU_IniAdtOld: TDate;
    procedure SetUSU_IniAdtOld(const pUSU_IniAdt: TDate);
    function GetUSU_FinAdtOld: TDate;
    procedure SetUSU_FinAdtOld(const pUSU_FinAdt: TDate);
    function GetUSU_LocIDWOld: string;
    procedure SetUSU_LocIDWOld(const pUSU_LocIDW: string);
    function GetUSU_LocIPTOld: string;
    procedure SetUSU_LocIPTOld(const pUSU_LocIPT: string);
    function GetUSU_LocIAMOld: string;
    procedure SetUSU_LocIAMOld(const pUSU_LocIAM: string);
    function GetUSU_LocSTPOld: string;
    procedure SetUSU_LocSTPOld(const pUSU_LocSTP: string);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property CodEmp: Integer read GetCodEmp write SetCodEmp;
    property CodFil: Integer read GetCodFil write SetCodFil;
    property NomFil: string read GetNomFil write SetNomFil;
    property SigFil: string read GetSigFil write SetSigFil;
    property InsEst: string read GetInsEst write SetInsEst;
    property InsMun: string read GetInsMun write SetInsMun;
    property NumCgc: Double read GetNumCgc write SetNumCgc;
    property EndFil: string read GetEndFil write SetEndFil;
    property CplEnd: string read GetCplEnd write SetCplEnd;
    property CepFil: Integer read GetCepFil write SetCepFil;
    property CepIni: Integer read GetCepIni write SetCepIni;
    property CodRai: Integer read GetCodRai write SetCodRai;
    property BaiFil: string read GetBaiFil write SetBaiFil;
    property CidFil: string read GetCidFil write SetCidFil;
    property SigUfs: string read GetSigUfs write SetSigUfs;
    property EndEnt: string read GetEndEnt write SetEndEnt;
    property CplEnt: string read GetCplEnt write SetCplEnt;
    property CepEnt: Integer read GetCepEnt write SetCepEnt;
    property CidEnt: string read GetCidEnt write SetCidEnt;
    property EstEnt: string read GetEstEnt write SetEstEnt;
    property EndCob: string read GetEndCob write SetEndCob;
    property CplCob: string read GetCplCob write SetCplCob;
    property CepCob: Integer read GetCepCob write SetCepCob;
    property CidCob: string read GetCidCob write SetCidCob;
    property EstCob: string read GetEstCob write SetEstCob;
    property NumFon: string read GetNumFon write SetNumFon;
    property NumFax: string read GetNumFax write SetNumFax;
    property CxaPst: Integer read GetCxaPst write SetCxaPst;
    property IntNet: string read GetIntNet write SetIntNet;
    property TipEmp: Integer read GetTipEmp write SetTipEmp;
    property FilCli: Integer read GetFilCli write SetFilCli;
    property FilFor: Integer read GetFilFor write SetFilFor;
    property PedIni: Integer read GetPedIni write SetPedIni;
    property ZonFra: Integer read GetZonFra write SetZonFra;
    property CodSuf: string read GetCodSuf write SetCodSuf;
    property DifAli: Char read GetDifAli write SetDifAli;
    property CriFed: Integer read GetCriFed write SetCriFed;
    property QtdDlb: Integer read GetQtdDlb write SetQtdDlb;
    property VenPdi: TDate read GetVenPdi write SetVenPdi;
    property VenPdf: TDate read GetVenPdf write SetVenPdf;
    property VenCae: Integer read GetVenCae write SetVenCae;
    property VenQdf: Integer read GetVenQdf write SetVenQdf;
    property VenTcc: string read GetVenTcc write SetVenTcc;
    property VenTpp: string read GetVenTpp write SetVenTpp;
    property VenTps: string read GetVenTps write SetVenTps;
    property VenDsu: Double read GetVenDsu write SetVenDsu;
    property VenVmp: Double read GetVenVmp write SetVenVmp;
    property VenLep: Integer read GetVenLep write SetVenLep;
    property VenTcv: string read GetVenTcv write SetVenTcv;
    property VenCep: Char read GetVenCep write SetVenCep;
    property VenPvp: Char read GetVenPvp write SetVenPvp;
    property VenNpa: Char read GetVenNpa write SetVenNpa;
    property VenCfi: Char read GetVenCfi write SetVenCfi;
    property VenNtr: Char read GetVenNtr write SetVenNtr;
    property VenSnr: string read GetVenSnr write SetVenSnr;
    property VenQip: Integer read GetVenQip write SetVenQip;
    property VenSnp: string read GetVenSnp write SetVenSnp;
    property VenQdp: Integer read GetVenQdp write SetVenQdp;
    property VenRpd: Integer read GetVenRpd write SetVenRpd;
    property VenCcc: Char read GetVenCcc write SetVenCcc;
    property VenCcr: Char read GetVenCcr write SetVenCcr;
    property VenCrr: Char read GetVenCrr write SetVenCrr;
    property VenPse: Char read GetVenPse write SetVenPse;
    property VenPam: Integer read GetVenPam write SetVenPam;
    property VenPma: Integer read GetVenPma write SetVenPma;
    property VenPpc: Integer read GetVenPpc write SetVenPpc;
    property VenPta: Integer read GetVenPta write SetVenPta;
    property VenPdt: Integer read GetVenPdt write SetVenPdt;
    property VenPcs: Integer read GetVenPcs write SetVenPcs;
    property VenPlc: Char read GetVenPlc write SetVenPlc;
    property VenFam: Integer read GetVenFam write SetVenFam;
    property VenFma: Integer read GetVenFma write SetVenFma;
    property VenFpc: Integer read GetVenFpc write SetVenFpc;
    property VenFta: Integer read GetVenFta write SetVenFta;
    property VenFdt: Integer read GetVenFdt write SetVenFdt;
    property VenFcs: Integer read GetVenFcs write SetVenFcs;
    property VenFlc: Char read GetVenFlc write SetVenFlc;
    property VenIss: Double read GetVenIss write SetVenIss;
    property VenIpd: Integer read GetVenIpd write SetVenIpd;
    property VenApc: Integer read GetVenApc write SetVenApc;
    property VenLvp: Double read GetVenLvp write SetVenLvp;
    property EstPdi: TDate read GetEstPdi write SetEstPdi;
    property EstPdf: TDate read GetEstPdf write SetEstPdf;
    property EstPai: TDate read GetEstPai write SetEstPai;
    property EstPaf: TDate read GetEstPaf write SetEstPaf;
    property EstTei: string read GetEstTei write SetEstTei;
    property EstTsi: string read GetEstTsi write SetEstTsi;
    property EstTpr: string read GetEstTpr write SetEstTpr;
    property EstUnm: Char read GetEstUnm write SetEstUnm;
    property EstDpf: Char read GetEstDpf write SetEstDpf;
    property RecPdi: TDate read GetRecPdi write SetRecPdi;
    property RecPdf: TDate read GetRecPdf write SetRecPdf;
    property RecPor: string read GetRecPor write SetRecPor;
    property RecCrt: string read GetRecCrt write SetRecCrt;
    property RecOcr: string read GetRecOcr write SetRecOcr;
    property RecIns: string read GetRecIns write SetRecIns;
    property RecVmt: Double read GetRecVmt write SetRecVmt;
    property RecDpr: Integer read GetRecDpr write SetRecDpr;
    property RecMoe: string read GetRecMoe write SetRecMoe;
    property RecJmm: Double read GetRecJmm write SetRecJmm;
    property RecTjr: Char read GetRecTjr write SetRecTjr;
    property RecDtj: Integer read GetRecDtj write SetRecDtj;
    property RecMul: Double read GetRecMul write SetRecMul;
    property RecDtm: Integer read GetRecDtm write SetRecDtm;
    property RecVjm: Double read GetRecVjm write SetRecVjm;
    property RecVdm: Double read GetRecVdm write SetRecVdm;
    property RecVmm: Double read GetRecVmm write SetRecVmm;
    property RecAvs: Char read GetRecAvs write SetRecAvs;
    property RecAdc: Char read GetRecAdc write SetRecAdc;
    property RecAoc: Char read GetRecAoc write SetRecAoc;
    property RecPcj: Char read GetRecPcj write SetRecPcj;
    property RecPcm: Char read GetRecPcm write SetRecPcm;
    property RecPce: Char read GetRecPce write SetRecPce;
    property RecPcc: Char read GetRecPcc write SetRecPcc;
    property RecPco: Char read GetRecPco write SetRecPco;
    property RecTpm: string read GetRecTpm write SetRecTpm;
    property RecTac: string read GetRecTac write SetRecTac;
    property RecTes: string read GetRecTes write SetRecTes;
    property RecTbp: string read GetRecTbp write SetRecTbp;
    property RecTba: string read GetRecTba write SetRecTba;
    property RecTbs: string read GetRecTbs write SetRecTbs;
    property RecTbc: string read GetRecTbc write SetRecTbc;
    property RecTpc: string read GetRecTpc write SetRecTpc;
    property RecTcc: string read GetRecTcc write SetRecTcc;
    property CprPdi: TDate read GetCprPdi write SetCprPdi;
    property CprPdf: TDate read GetCprPdf write SetCprPdf;
    property CprQmc: Integer read GetCprQmc write SetCprQmc;
    property CprAvo: Char read GetCprAvo write SetCprAvo;
    property CprDnf: Double read GetCprDnf write SetCprDnf;
    property CprTop: string read GetCprTop write SetCprTop;
    property CprTom: string read GetCprTom write SetCprTom;
    property CprTos: string read GetCprTos write SetCprTos;
    property CprTfp: string read GetCprTfp write SetCprTfp;
    property CprTfs: string read GetCprTfs write SetCprTfs;
    property CprTea: string read GetCprTea write SetCprTea;
    property CprTsa: string read GetCprTsa write SetCprTsa;
    property CprSnp: string read GetCprSnp write SetCprSnp;
    property CprCcf: Char read GetCprCcf write SetCprCcf;
    property CprCfr: Char read GetCprCfr write SetCprCfr;
    property CprFss: Integer read GetCprFss write SetCprFss;
    property PagPdi: TDate read GetPagPdi write SetPagPdi;
    property PagPdf: TDate read GetPagPdf write SetPagPdf;
    property PagApr: Char read GetPagApr write SetPagApr;
    property PagDpr: Integer read GetPagDpr write SetPagDpr;
    property PagMoe: string read GetPagMoe write SetPagMoe;
    property PagJmm: Double read GetPagJmm write SetPagJmm;
    property PagTjr: Char read GetPagTjr write SetPagTjr;
    property PagDtj: Integer read GetPagDtj write SetPagDtj;
    property PagMul: Double read GetPagMul write SetPagMul;
    property PagDtm: Integer read GetPagDtm write SetPagDtm;
    property PagTpm: string read GetPagTpm write SetPagTpm;
    property PagTpf: string read GetPagTpf write SetPagTpf;
    property PagTaf: string read GetPagTaf write SetPagTaf;
    property PagTbp: string read GetPagTbp write SetPagTbp;
    property PagTbc: string read GetPagTbc write SetPagTbc;
    property PagTbs: string read GetPagTbs write SetPagTbs;
    property PagTpc: string read GetPagTpc write SetPagTpc;
    property PagTcc: string read GetPagTcc write SetPagTcc;
    property PagVjm: Double read GetPagVjm write SetPagVjm;
    property PagVdm: Double read GetPagVdm write SetPagVdm;
    property PagVmm: Double read GetPagVmm write SetPagVmm;
    property PagTcm: string read GetPagTcm write SetPagTcm;
    property PagTdc: string read GetPagTdc write SetPagTdc;
    property PagTdi: string read GetPagTdi write SetPagTdi;
    property PagLir: Double read GetPagLir write SetPagLir;
    property PagEev: Integer read GetPagEev write SetPagEev;
    property CxbPdi: TDate read GetCxbPdi write SetCxbPdi;
    property CxbPdf: TDate read GetCxbPdf write SetCxbPdf;
    property CxbTca: string read GetCxbTca write SetCxbTca;
    property CxbTdc: string read GetCxbTdc write SetCxbTdc;
    property CxbTde: string read GetCxbTde write SetCxbTde;
    property CxbTdt: string read GetCxbTdt write SetCxbTdt;
    property CxbDec: Integer read GetCxbDec write SetCxbDec;
    property CtbExi: TDate read GetCtbExi write SetCtbExi;
    property CtbExf: TDate read GetCtbExf write SetCtbExf;
    property CtbPei: TDate read GetCtbPei write SetCtbPei;
    property CtbPef: TDate read GetCtbPef write SetCtbPef;
    property CtbQdl: Integer read GetCtbQdl write SetCtbQdl;
    property CtbMoe: string read GetCtbMoe write SetCtbMoe;
    property CtbLog: Char read GetCtbLog write SetCtbLog;
    property CtbAli: Char read GetCtbAli write SetCtbAli;
    property CtbDia: TDate read GetCtbDia write SetCtbDia;
    property CtbObs: string read GetCtbObs write SetCtbObs;
    property CtbNrj: string read GetCtbNrj write SetCtbNrj;
    property CtbDrj: TDate read GetCtbDrj write SetCtbDrj;
    property CtbNsr: string read GetCtbNsr write SetCtbNsr;
    property CtbFsr: string read GetCtbFsr write SetCtbFsr;
    property CtbCsr: Double read GetCtbCsr write SetCtbCsr;
    property CtbNcr: string read GetCtbNcr write SetCtbNcr;
    property CtbFcr: Char read GetCtbFcr write SetCtbFcr;
    property CtbCrc: string read GetCtbCrc write SetCtbCrc;
    property CtbCcr: Double read GetCtbCcr write SetCtbCcr;
    property CtbCfm: Integer read GetCtbCfm write SetCtbCfm;
    property CtbCae: string read GetCtbCae write SetCtbCae;
    property CtbCaf: Integer read GetCtbCaf write SetCtbCaf;
    property CtbFec: Char read GetCtbFec write SetCtbFec;
    property CtbSdt: Char read GetCtbSdt write SetCtbSdt;
    property CtbSde: Char read GetCtbSde write SetCtbSde;
    property CtbScr: Char read GetCtbScr write SetCtbScr;
    property CtbSvl: Char read GetCtbSvl write SetCtbSvl;
    property CtbShp: Char read GetCtbShp write SetCtbShp;
    property CtbHab: Char read GetCtbHab write SetCtbHab;
    property EfiPdi: TDate read GetEfiPdi write SetEfiPdi;
    property EfiPdf: TDate read GetEfiPdf write SetEfiPdf;
    property EfiFtr: Char read GetEfiFtr write SetEfiFtr;
    property EfiApi: Double read GetEfiApi write SetEfiApi;
    property EfiStr: Char read GetEfiStr write SetEfiStr;
    property EfiReg: Integer read GetEfiReg write SetEfiReg;
    property EfiQci: Integer read GetEfiQci write SetEfiQci;
    property PrdTep: string read GetPrdTep write SetPrdTep;
    property PrdTsp: string read GetPrdTsp write SetPrdTsp;
    property PrdQdd: Integer read GetPrdQdd write SetPrdQdd;
    property PrdTpp: string read GetPrdTpp write SetPrdTpp;
    property PrdCpp: Integer read GetPrdCpp write SetPrdCpp;
    property PrdRpp: Integer read GetPrdRpp write SetPrdRpp;
    property PrdPpp: string read GetPrdPpp write SetPrdPpp;
    property PrdTee: string read GetPrdTee write SetPrdTee;
    property PrdTnr: string read GetPrdTnr write SetPrdTnr;
    property PrdEfi: Double read GetPrdEfi write SetPrdEfi;
    property PedBlo: Char read GetPedBlo write SetPedBlo;
    property ComPrz: Char read GetComPrz write SetComPrz;
    property PerCom: Double read GetPerCom write SetPerCom;
    property TipSep: string read GetTipSep write SetTipSep;
    property IndRoe: Char read GetIndRoe write SetIndRoe;
    property CprIef: Char read GetCprIef write SetCprIef;
    property VenIec: Char read GetVenIec write SetVenIec;
    property RecTia: Char read GetRecTia write SetRecTia;
    property EstFpr: string read GetEstFpr write SetEstFpr;
    property IndExp: Integer read GetIndExp write SetIndExp;
    property DatPal: TDate read GetDatPal write SetDatPal;
    property HorPal: Integer read GetHorPal write SetHorPal;
    property CodAfi: Integer read GetCodAfi write SetCodAfi;
    property EenFil: string read GetEenFil write SetEenFil;
    property EenEnt: string read GetEenEnt write SetEenEnt;
    property EenCob: string read GetEenCob write SetEenCob;
    property BaiEnt: string read GetBaiEnt write SetBaiEnt;
    property BaiCob: string read GetBaiCob write SetBaiCob;
    property NenFil: string read GetNenFil write SetNenFil;
    property FilMat: Char read GetFilMat write SetFilMat;
    property AgeAnp: Integer read GetAgeAnp write SetAgeAnp;
    property InsAnp: Integer read GetInsAnp write SetInsAnp;
    property USU_GerOPA: Char read GetUSU_GerOPA write SetUSU_GerOPA;
    property USU_MaiPcp: string read GetUSU_MaiPcp write SetUSU_MaiPcp;
    property USU_MailNfe: string read GetUSU_MailNfe write SetUSU_MailNfe;
    property USU_EmaAnl: string read GetUSU_EmaAnl write SetUSU_EmaAnl;
    property USU_CodTpr: string read GetUSU_CodTpr write SetUSU_CodTpr;
    property USU_DatPolDsc: TDate read GetUSU_DatPolDsc write SetUSU_DatPolDsc;
    property USU_TxaInd: Double read GetUSU_TxaInd write SetUSU_TxaInd;
    property USU_DivMdi: Integer read GetUSU_DivMdi write SetUSU_DivMdi;
    property USU_IniAdt: TDate read GetUSU_IniAdt write SetUSU_IniAdt;
    property USU_FinAdt: TDate read GetUSU_FinAdt write SetUSU_FinAdt;
    property USU_LocIDW: string read GetUSU_LocIDW write SetUSU_LocIDW;
    property USU_LocIPT: string read GetUSU_LocIPT write SetUSU_LocIPT;
    property USU_LocIAM: string read GetUSU_LocIAM write SetUSU_LocIAM;
    property USU_LocSTP: string read GetUSU_LocSTP write SetUSU_LocSTP;

    property OLD_CodEmp: Integer read GetCodEmpOLD write SetCodEmpOLD;
    property OLD_CodFil: Integer read GetCodFilOLD write SetCodFilOLD;
    property OLD_NomFil: string read GetNomFilOLD write SetNomFilOLD;
    property OLD_SigFil: string read GetSigFilOLD write SetSigFilOLD;
    property OLD_InsEst: string read GetInsEstOLD write SetInsEstOLD;
    property OLD_InsMun: string read GetInsMunOLD write SetInsMunOLD;
    property OLD_NumCgc: Double read GetNumCgcOLD write SetNumCgcOLD;
    property OLD_EndFil: string read GetEndFilOLD write SetEndFilOLD;
    property OLD_CplEnd: string read GetCplEndOLD write SetCplEndOLD;
    property OLD_CepFil: Integer read GetCepFilOLD write SetCepFilOLD;
    property OLD_CepIni: Integer read GetCepIniOLD write SetCepIniOLD;
    property OLD_CodRai: Integer read GetCodRaiOLD write SetCodRaiOLD;
    property OLD_BaiFil: string read GetBaiFilOLD write SetBaiFilOLD;
    property OLD_CidFil: string read GetCidFilOLD write SetCidFilOLD;
    property OLD_SigUfs: string read GetSigUfsOLD write SetSigUfsOLD;
    property OLD_EndEnt: string read GetEndEntOLD write SetEndEntOLD;
    property OLD_CplEnt: string read GetCplEntOLD write SetCplEntOLD;
    property OLD_CepEnt: Integer read GetCepEntOLD write SetCepEntOLD;
    property OLD_CidEnt: string read GetCidEntOLD write SetCidEntOLD;
    property OLD_EstEnt: string read GetEstEntOLD write SetEstEntOLD;
    property OLD_EndCob: string read GetEndCobOLD write SetEndCobOLD;
    property OLD_CplCob: string read GetCplCobOLD write SetCplCobOLD;
    property OLD_CepCob: Integer read GetCepCobOLD write SetCepCobOLD;
    property OLD_CidCob: string read GetCidCobOLD write SetCidCobOLD;
    property OLD_EstCob: string read GetEstCobOLD write SetEstCobOLD;
    property OLD_NumFon: string read GetNumFonOLD write SetNumFonOLD;
    property OLD_NumFax: string read GetNumFaxOLD write SetNumFaxOLD;
    property OLD_CxaPst: Integer read GetCxaPstOLD write SetCxaPstOLD;
    property OLD_IntNet: string read GetIntNetOLD write SetIntNetOLD;
    property OLD_TipEmp: Integer read GetTipEmpOLD write SetTipEmpOLD;
    property OLD_FilCli: Integer read GetFilCliOLD write SetFilCliOLD;
    property OLD_FilFor: Integer read GetFilForOLD write SetFilForOLD;
    property OLD_PedIni: Integer read GetPedIniOLD write SetPedIniOLD;
    property OLD_ZonFra: Integer read GetZonFraOLD write SetZonFraOLD;
    property OLD_CodSuf: string read GetCodSufOLD write SetCodSufOLD;
    property OLD_DifAli: Char read GetDifAliOLD write SetDifAliOLD;
    property OLD_CriFed: Integer read GetCriFedOLD write SetCriFedOLD;
    property OLD_QtdDlb: Integer read GetQtdDlbOLD write SetQtdDlbOLD;
    property OLD_VenPdi: TDate read GetVenPdiOLD write SetVenPdiOLD;
    property OLD_VenPdf: TDate read GetVenPdfOLD write SetVenPdfOLD;
    property OLD_VenCae: Integer read GetVenCaeOLD write SetVenCaeOLD;
    property OLD_VenQdf: Integer read GetVenQdfOLD write SetVenQdfOLD;
    property OLD_VenTcc: string read GetVenTccOLD write SetVenTccOLD;
    property OLD_VenTpp: string read GetVenTppOLD write SetVenTppOLD;
    property OLD_VenTps: string read GetVenTpsOLD write SetVenTpsOLD;
    property OLD_VenDsu: Double read GetVenDsuOLD write SetVenDsuOLD;
    property OLD_VenVmp: Double read GetVenVmpOLD write SetVenVmpOLD;
    property OLD_VenLep: Integer read GetVenLepOLD write SetVenLepOLD;
    property OLD_VenTcv: string read GetVenTcvOLD write SetVenTcvOLD;
    property OLD_VenCep: Char read GetVenCepOLD write SetVenCepOLD;
    property OLD_VenPvp: Char read GetVenPvpOLD write SetVenPvpOLD;
    property OLD_VenNpa: Char read GetVenNpaOLD write SetVenNpaOLD;
    property OLD_VenCfi: Char read GetVenCfiOLD write SetVenCfiOLD;
    property OLD_VenNtr: Char read GetVenNtrOLD write SetVenNtrOLD;
    property OLD_VenSnr: string read GetVenSnrOLD write SetVenSnrOLD;
    property OLD_VenQip: Integer read GetVenQipOLD write SetVenQipOLD;
    property OLD_VenSnp: string read GetVenSnpOLD write SetVenSnpOLD;
    property OLD_VenQdp: Integer read GetVenQdpOLD write SetVenQdpOLD;
    property OLD_VenRpd: Integer read GetVenRpdOLD write SetVenRpdOLD;
    property OLD_VenCcc: Char read GetVenCccOLD write SetVenCccOLD;
    property OLD_VenCcr: Char read GetVenCcrOLD write SetVenCcrOLD;
    property OLD_VenCrr: Char read GetVenCrrOLD write SetVenCrrOLD;
    property OLD_VenPse: Char read GetVenPseOLD write SetVenPseOLD;
    property OLD_VenPam: Integer read GetVenPamOLD write SetVenPamOLD;
    property OLD_VenPma: Integer read GetVenPmaOLD write SetVenPmaOLD;
    property OLD_VenPpc: Integer read GetVenPpcOLD write SetVenPpcOLD;
    property OLD_VenPta: Integer read GetVenPtaOLD write SetVenPtaOLD;
    property OLD_VenPdt: Integer read GetVenPdtOLD write SetVenPdtOLD;
    property OLD_VenPcs: Integer read GetVenPcsOLD write SetVenPcsOLD;
    property OLD_VenPlc: Char read GetVenPlcOLD write SetVenPlcOLD;
    property OLD_VenFam: Integer read GetVenFamOLD write SetVenFamOLD;
    property OLD_VenFma: Integer read GetVenFmaOLD write SetVenFmaOLD;
    property OLD_VenFpc: Integer read GetVenFpcOLD write SetVenFpcOLD;
    property OLD_VenFta: Integer read GetVenFtaOLD write SetVenFtaOLD;
    property OLD_VenFdt: Integer read GetVenFdtOLD write SetVenFdtOLD;
    property OLD_VenFcs: Integer read GetVenFcsOLD write SetVenFcsOLD;
    property OLD_VenFlc: Char read GetVenFlcOLD write SetVenFlcOLD;
    property OLD_VenIss: Double read GetVenIssOLD write SetVenIssOLD;
    property OLD_VenIpd: Integer read GetVenIpdOLD write SetVenIpdOLD;
    property OLD_VenApc: Integer read GetVenApcOLD write SetVenApcOLD;
    property OLD_VenLvp: Double read GetVenLvpOLD write SetVenLvpOLD;
    property OLD_EstPdi: TDate read GetEstPdiOLD write SetEstPdiOLD;
    property OLD_EstPdf: TDate read GetEstPdfOLD write SetEstPdfOLD;
    property OLD_EstPai: TDate read GetEstPaiOLD write SetEstPaiOLD;
    property OLD_EstPaf: TDate read GetEstPafOLD write SetEstPafOLD;
    property OLD_EstTei: string read GetEstTeiOLD write SetEstTeiOLD;
    property OLD_EstTsi: string read GetEstTsiOLD write SetEstTsiOLD;
    property OLD_EstTpr: string read GetEstTprOLD write SetEstTprOLD;
    property OLD_EstUnm: Char read GetEstUnmOLD write SetEstUnmOLD;
    property OLD_EstDpf: Char read GetEstDpfOLD write SetEstDpfOLD;
    property OLD_RecPdi: TDate read GetRecPdiOLD write SetRecPdiOLD;
    property OLD_RecPdf: TDate read GetRecPdfOLD write SetRecPdfOLD;
    property OLD_RecPor: string read GetRecPorOLD write SetRecPorOLD;
    property OLD_RecCrt: string read GetRecCrtOLD write SetRecCrtOLD;
    property OLD_RecOcr: string read GetRecOcrOLD write SetRecOcrOLD;
    property OLD_RecIns: string read GetRecInsOLD write SetRecInsOLD;
    property OLD_RecVmt: Double read GetRecVmtOLD write SetRecVmtOLD;
    property OLD_RecDpr: Integer read GetRecDprOLD write SetRecDprOLD;
    property OLD_RecMoe: string read GetRecMoeOLD write SetRecMoeOLD;
    property OLD_RecJmm: Double read GetRecJmmOLD write SetRecJmmOLD;
    property OLD_RecTjr: Char read GetRecTjrOLD write SetRecTjrOLD;
    property OLD_RecDtj: Integer read GetRecDtjOLD write SetRecDtjOLD;
    property OLD_RecMul: Double read GetRecMulOLD write SetRecMulOLD;
    property OLD_RecDtm: Integer read GetRecDtmOLD write SetRecDtmOLD;
    property OLD_RecVjm: Double read GetRecVjmOLD write SetRecVjmOLD;
    property OLD_RecVdm: Double read GetRecVdmOLD write SetRecVdmOLD;
    property OLD_RecVmm: Double read GetRecVmmOLD write SetRecVmmOLD;
    property OLD_RecAvs: Char read GetRecAvsOLD write SetRecAvsOLD;
    property OLD_RecAdc: Char read GetRecAdcOLD write SetRecAdcOLD;
    property OLD_RecAoc: Char read GetRecAocOLD write SetRecAocOLD;
    property OLD_RecPcj: Char read GetRecPcjOLD write SetRecPcjOLD;
    property OLD_RecPcm: Char read GetRecPcmOLD write SetRecPcmOLD;
    property OLD_RecPce: Char read GetRecPceOLD write SetRecPceOLD;
    property OLD_RecPcc: Char read GetRecPccOLD write SetRecPccOLD;
    property OLD_RecPco: Char read GetRecPcoOLD write SetRecPcoOLD;
    property OLD_RecTpm: string read GetRecTpmOLD write SetRecTpmOLD;
    property OLD_RecTac: string read GetRecTacOLD write SetRecTacOLD;
    property OLD_RecTes: string read GetRecTesOLD write SetRecTesOLD;
    property OLD_RecTbp: string read GetRecTbpOLD write SetRecTbpOLD;
    property OLD_RecTba: string read GetRecTbaOLD write SetRecTbaOLD;
    property OLD_RecTbs: string read GetRecTbsOLD write SetRecTbsOLD;
    property OLD_RecTbc: string read GetRecTbcOLD write SetRecTbcOLD;
    property OLD_RecTpc: string read GetRecTpcOLD write SetRecTpcOLD;
    property OLD_RecTcc: string read GetRecTccOLD write SetRecTccOLD;
    property OLD_CprPdi: TDate read GetCprPdiOLD write SetCprPdiOLD;
    property OLD_CprPdf: TDate read GetCprPdfOLD write SetCprPdfOLD;
    property OLD_CprQmc: Integer read GetCprQmcOLD write SetCprQmcOLD;
    property OLD_CprAvo: Char read GetCprAvoOLD write SetCprAvoOLD;
    property OLD_CprDnf: Double read GetCprDnfOLD write SetCprDnfOLD;
    property OLD_CprTop: string read GetCprTopOLD write SetCprTopOLD;
    property OLD_CprTom: string read GetCprTomOLD write SetCprTomOLD;
    property OLD_CprTos: string read GetCprTosOLD write SetCprTosOLD;
    property OLD_CprTfp: string read GetCprTfpOLD write SetCprTfpOLD;
    property OLD_CprTfs: string read GetCprTfsOLD write SetCprTfsOLD;
    property OLD_CprTea: string read GetCprTeaOLD write SetCprTeaOLD;
    property OLD_CprTsa: string read GetCprTsaOLD write SetCprTsaOLD;
    property OLD_CprSnp: string read GetCprSnpOLD write SetCprSnpOLD;
    property OLD_CprCcf: Char read GetCprCcfOLD write SetCprCcfOLD;
    property OLD_CprCfr: Char read GetCprCfrOLD write SetCprCfrOLD;
    property OLD_CprFss: Integer read GetCprFssOLD write SetCprFssOLD;
    property OLD_PagPdi: TDate read GetPagPdiOLD write SetPagPdiOLD;
    property OLD_PagPdf: TDate read GetPagPdfOLD write SetPagPdfOLD;
    property OLD_PagApr: Char read GetPagAprOLD write SetPagAprOLD;
    property OLD_PagDpr: Integer read GetPagDprOLD write SetPagDprOLD;
    property OLD_PagMoe: string read GetPagMoeOLD write SetPagMoeOLD;
    property OLD_PagJmm: Double read GetPagJmmOLD write SetPagJmmOLD;
    property OLD_PagTjr: Char read GetPagTjrOLD write SetPagTjrOLD;
    property OLD_PagDtj: Integer read GetPagDtjOLD write SetPagDtjOLD;
    property OLD_PagMul: Double read GetPagMulOLD write SetPagMulOLD;
    property OLD_PagDtm: Integer read GetPagDtmOLD write SetPagDtmOLD;
    property OLD_PagTpm: string read GetPagTpmOLD write SetPagTpmOLD;
    property OLD_PagTpf: string read GetPagTpfOLD write SetPagTpfOLD;
    property OLD_PagTaf: string read GetPagTafOLD write SetPagTafOLD;
    property OLD_PagTbp: string read GetPagTbpOLD write SetPagTbpOLD;
    property OLD_PagTbc: string read GetPagTbcOLD write SetPagTbcOLD;
    property OLD_PagTbs: string read GetPagTbsOLD write SetPagTbsOLD;
    property OLD_PagTpc: string read GetPagTpcOLD write SetPagTpcOLD;
    property OLD_PagTcc: string read GetPagTccOLD write SetPagTccOLD;
    property OLD_PagVjm: Double read GetPagVjmOLD write SetPagVjmOLD;
    property OLD_PagVdm: Double read GetPagVdmOLD write SetPagVdmOLD;
    property OLD_PagVmm: Double read GetPagVmmOLD write SetPagVmmOLD;
    property OLD_PagTcm: string read GetPagTcmOLD write SetPagTcmOLD;
    property OLD_PagTdc: string read GetPagTdcOLD write SetPagTdcOLD;
    property OLD_PagTdi: string read GetPagTdiOLD write SetPagTdiOLD;
    property OLD_PagLir: Double read GetPagLirOLD write SetPagLirOLD;
    property OLD_PagEev: Integer read GetPagEevOLD write SetPagEevOLD;
    property OLD_CxbPdi: TDate read GetCxbPdiOLD write SetCxbPdiOLD;
    property OLD_CxbPdf: TDate read GetCxbPdfOLD write SetCxbPdfOLD;
    property OLD_CxbTca: string read GetCxbTcaOLD write SetCxbTcaOLD;
    property OLD_CxbTdc: string read GetCxbTdcOLD write SetCxbTdcOLD;
    property OLD_CxbTde: string read GetCxbTdeOLD write SetCxbTdeOLD;
    property OLD_CxbTdt: string read GetCxbTdtOLD write SetCxbTdtOLD;
    property OLD_CxbDec: Integer read GetCxbDecOLD write SetCxbDecOLD;
    property OLD_CtbExi: TDate read GetCtbExiOLD write SetCtbExiOLD;
    property OLD_CtbExf: TDate read GetCtbExfOLD write SetCtbExfOLD;
    property OLD_CtbPei: TDate read GetCtbPeiOLD write SetCtbPeiOLD;
    property OLD_CtbPef: TDate read GetCtbPefOLD write SetCtbPefOLD;
    property OLD_CtbQdl: Integer read GetCtbQdlOLD write SetCtbQdlOLD;
    property OLD_CtbMoe: string read GetCtbMoeOLD write SetCtbMoeOLD;
    property OLD_CtbLog: Char read GetCtbLogOLD write SetCtbLogOLD;
    property OLD_CtbAli: Char read GetCtbAliOLD write SetCtbAliOLD;
    property OLD_CtbDia: TDate read GetCtbDiaOLD write SetCtbDiaOLD;
    property OLD_CtbObs: string read GetCtbObsOLD write SetCtbObsOLD;
    property OLD_CtbNrj: string read GetCtbNrjOLD write SetCtbNrjOLD;
    property OLD_CtbDrj: TDate read GetCtbDrjOLD write SetCtbDrjOLD;
    property OLD_CtbNsr: string read GetCtbNsrOLD write SetCtbNsrOLD;
    property OLD_CtbFsr: string read GetCtbFsrOLD write SetCtbFsrOLD;
    property OLD_CtbCsr: Double read GetCtbCsrOLD write SetCtbCsrOLD;
    property OLD_CtbNcr: string read GetCtbNcrOLD write SetCtbNcrOLD;
    property OLD_CtbFcr: Char read GetCtbFcrOLD write SetCtbFcrOLD;
    property OLD_CtbCrc: string read GetCtbCrcOLD write SetCtbCrcOLD;
    property OLD_CtbCcr: Double read GetCtbCcrOLD write SetCtbCcrOLD;
    property OLD_CtbCfm: Integer read GetCtbCfmOLD write SetCtbCfmOLD;
    property OLD_CtbCae: string read GetCtbCaeOLD write SetCtbCaeOLD;
    property OLD_CtbCaf: Integer read GetCtbCafOLD write SetCtbCafOLD;
    property OLD_CtbFec: Char read GetCtbFecOLD write SetCtbFecOLD;
    property OLD_CtbSdt: Char read GetCtbSdtOLD write SetCtbSdtOLD;
    property OLD_CtbSde: Char read GetCtbSdeOLD write SetCtbSdeOLD;
    property OLD_CtbScr: Char read GetCtbScrOLD write SetCtbScrOLD;
    property OLD_CtbSvl: Char read GetCtbSvlOLD write SetCtbSvlOLD;
    property OLD_CtbShp: Char read GetCtbShpOLD write SetCtbShpOLD;
    property OLD_CtbHab: Char read GetCtbHabOLD write SetCtbHabOLD;
    property OLD_EfiPdi: TDate read GetEfiPdiOLD write SetEfiPdiOLD;
    property OLD_EfiPdf: TDate read GetEfiPdfOLD write SetEfiPdfOLD;
    property OLD_EfiFtr: Char read GetEfiFtrOLD write SetEfiFtrOLD;
    property OLD_EfiApi: Double read GetEfiApiOLD write SetEfiApiOLD;
    property OLD_EfiStr: Char read GetEfiStrOLD write SetEfiStrOLD;
    property OLD_EfiReg: Integer read GetEfiRegOLD write SetEfiRegOLD;
    property OLD_EfiQci: Integer read GetEfiQciOLD write SetEfiQciOLD;
    property OLD_PrdTep: string read GetPrdTepOLD write SetPrdTepOLD;
    property OLD_PrdTsp: string read GetPrdTspOLD write SetPrdTspOLD;
    property OLD_PrdQdd: Integer read GetPrdQddOLD write SetPrdQddOLD;
    property OLD_PrdTpp: string read GetPrdTppOLD write SetPrdTppOLD;
    property OLD_PrdCpp: Integer read GetPrdCppOLD write SetPrdCppOLD;
    property OLD_PrdRpp: Integer read GetPrdRppOLD write SetPrdRppOLD;
    property OLD_PrdPpp: string read GetPrdPppOLD write SetPrdPppOLD;
    property OLD_PrdTee: string read GetPrdTeeOLD write SetPrdTeeOLD;
    property OLD_PrdTnr: string read GetPrdTnrOLD write SetPrdTnrOLD;
    property OLD_PrdEfi: Double read GetPrdEfiOLD write SetPrdEfiOLD;
    property OLD_PedBlo: Char read GetPedBloOLD write SetPedBloOLD;
    property OLD_ComPrz: Char read GetComPrzOLD write SetComPrzOLD;
    property OLD_PerCom: Double read GetPerComOLD write SetPerComOLD;
    property OLD_TipSep: string read GetTipSepOLD write SetTipSepOLD;
    property OLD_IndRoe: Char read GetIndRoeOLD write SetIndRoeOLD;
    property OLD_CprIef: Char read GetCprIefOLD write SetCprIefOLD;
    property OLD_VenIec: Char read GetVenIecOLD write SetVenIecOLD;
    property OLD_RecTia: Char read GetRecTiaOLD write SetRecTiaOLD;
    property OLD_EstFpr: string read GetEstFprOLD write SetEstFprOLD;
    property OLD_IndExp: Integer read GetIndExpOLD write SetIndExpOLD;
    property OLD_DatPal: TDate read GetDatPalOLD write SetDatPalOLD;
    property OLD_HorPal: Integer read GetHorPalOLD write SetHorPalOLD;
    property OLD_CodAfi: Integer read GetCodAfiOLD write SetCodAfiOLD;
    property OLD_EenFil: string read GetEenFilOLD write SetEenFilOLD;
    property OLD_EenEnt: string read GetEenEntOLD write SetEenEntOLD;
    property OLD_EenCob: string read GetEenCobOLD write SetEenCobOLD;
    property OLD_BaiEnt: string read GetBaiEntOLD write SetBaiEntOLD;
    property OLD_BaiCob: string read GetBaiCobOLD write SetBaiCobOLD;
    property OLD_NenFil: string read GetNenFilOLD write SetNenFilOLD;
    property OLD_FilMat: Char read GetFilMatOLD write SetFilMatOLD;
    property OLD_AgeAnp: Integer read GetAgeAnpOLD write SetAgeAnpOLD;
    property OLD_InsAnp: Integer read GetInsAnpOLD write SetInsAnpOLD;
    property OLD_USU_GerOPA: Char read GetUSU_GerOPAOLD write SetUSU_GerOPAOLD;
    property OLD_USU_MaiPcp: string read GetUSU_MaiPcpOLD write SetUSU_MaiPcpOLD;
    property OLD_USU_MailNfe: string read GetUSU_MailNfeOLD write SetUSU_MailNfeOLD;
    property OLD_USU_EmaAnl: string read GetUSU_EmaAnlOLD write SetUSU_EmaAnlOLD;
    property OLD_USU_CodTpr: string read GetUSU_CodTprOLD write SetUSU_CodTprOLD;
    property OLD_USU_DatPolDsc: TDate read GetUSU_DatPolDscOLD write SetUSU_DatPolDscOLD;
    property OLD_USU_TxaInd: Double read GetUSU_TxaIndOLD write SetUSU_TxaIndOLD;
    property OLD_USU_DivMdi: Integer read GetUSU_DivMdiOLD write SetUSU_DivMdiOLD;
    property OLD_USU_IniAdt: TDate read GetUSU_IniAdtOLD write SetUSU_IniAdtOLD;
    property OLD_USU_FinAdt: TDate read GetUSU_FinAdtOLD write SetUSU_FinAdtOLD;
    property OLD_USU_LocIDW: string read GetUSU_LocIDWOLD write SetUSU_LocIDWOLD;
    property OLD_USU_LocIPT: string read GetUSU_LocIPTOLD write SetUSU_LocIPTOLD;
    property OLD_USU_LocIAM: string read GetUSU_LocIAMOLD write SetUSU_LocIAMOLD;
    property OLD_USU_LocSTP: string read GetUSU_LocSTPOLD write SetUSU_LocSTPOLD;
  end;

implementation

{ T070FIL }

constructor T070FIL.Create();
begin
  AddForeignKeys(['CodEmp'], ['CodEmp']);
  AddPrimaryKeys('CodEmp;CodFil');

  inherited Create('E070FIL');
end;

destructor T070FIL.Destroy();
begin
  inherited;
end;

function T070FIL.GetCodEmp: Integer;
begin
  Result := FCodEmp;
end;

procedure T070FIL.SetCodEmp(const pCodEmp: Integer);
begin
  FCodEmp := pCodEmp;

  CheckField('CodEmp');
end;

function T070FIL.GetCodFil: Integer;
begin
  Result := FCodFil;
end;

procedure T070FIL.SetCodFil(const pCodFil: Integer);
begin
  FCodFil := pCodFil;

  CheckField('CodFil');
end;

function T070FIL.GetNomFil: string;
begin
  Result := FNomFil;
end;

procedure T070FIL.SetNomFil(const pNomFil: string);
begin
  FNomFil := pNomFil;

  CheckField('NomFil');
end;

function T070FIL.GetSigFil: string;
begin
  Result := FSigFil;
end;

procedure T070FIL.SetSigFil(const pSigFil: string);
begin
  FSigFil := pSigFil;

  CheckField('SigFil');
end;

function T070FIL.GetInsEst: string;
begin
  Result := FInsEst;
end;

procedure T070FIL.SetInsEst(const pInsEst: string);
begin
  FInsEst := pInsEst;

  CheckField('InsEst');
end;

function T070FIL.GetInsMun: string;
begin
  Result := FInsMun;
end;

procedure T070FIL.SetInsMun(const pInsMun: string);
begin
  FInsMun := pInsMun;

  CheckField('InsMun');
end;

function T070FIL.GetNumCgc: Double;
begin
  Result := FNumCgc;
end;

procedure T070FIL.SetNumCgc(const pNumCgc: Double);
begin
  FNumCgc := pNumCgc;

  CheckField('NumCgc');
end;

function T070FIL.GetEndFil: string;
begin
  Result := FEndFil;
end;

procedure T070FIL.SetEndFil(const pEndFil: string);
begin
  FEndFil := pEndFil;

  CheckField('EndFil');
end;

function T070FIL.GetCplEnd: string;
begin
  Result := FCplEnd;
end;

procedure T070FIL.SetCplEnd(const pCplEnd: string);
begin
  FCplEnd := pCplEnd;

  CheckField('CplEnd');
end;

function T070FIL.GetCepFil: Integer;
begin
  Result := FCepFil;
end;

procedure T070FIL.SetCepFil(const pCepFil: Integer);
begin
  FCepFil := pCepFil;

  CheckField('CepFil');
end;

function T070FIL.GetCepIni: Integer;
begin
  Result := FCepIni;
end;

procedure T070FIL.SetCepIni(const pCepIni: Integer);
begin
  FCepIni := pCepIni;

  CheckField('CepIni');
end;

function T070FIL.GetCodRai: Integer;
begin
  Result := FCodRai;
end;

procedure T070FIL.SetCodRai(const pCodRai: Integer);
begin
  FCodRai := pCodRai;

  CheckField('CodRai');
end;

function T070FIL.GetBaiFil: string;
begin
  Result := FBaiFil;
end;

procedure T070FIL.SetBaiFil(const pBaiFil: string);
begin
  FBaiFil := pBaiFil;

  CheckField('BaiFil');
end;

function T070FIL.GetCidFil: string;
begin
  Result := FCidFil;
end;

procedure T070FIL.SetCidFil(const pCidFil: string);
begin
  FCidFil := pCidFil;

  CheckField('CidFil');
end;

function T070FIL.GetSigUfs: string;
begin
  Result := FSigUfs;
end;

procedure T070FIL.SetSigUfs(const pSigUfs: string);
begin
  FSigUfs := pSigUfs;

  CheckField('SigUfs');
end;

function T070FIL.GetEndEnt: string;
begin
  Result := FEndEnt;
end;

procedure T070FIL.SetEndEnt(const pEndEnt: string);
begin
  FEndEnt := pEndEnt;

  CheckField('EndEnt');
end;

function T070FIL.GetCplEnt: string;
begin
  Result := FCplEnt;
end;

procedure T070FIL.SetCplEnt(const pCplEnt: string);
begin
  FCplEnt := pCplEnt;

  CheckField('CplEnt');
end;

function T070FIL.GetCepEnt: Integer;
begin
  Result := FCepEnt;
end;

procedure T070FIL.SetCepEnt(const pCepEnt: Integer);
begin
  FCepEnt := pCepEnt;

  CheckField('CepEnt');
end;

function T070FIL.GetCidEnt: string;
begin
  Result := FCidEnt;
end;

procedure T070FIL.SetCidEnt(const pCidEnt: string);
begin
  FCidEnt := pCidEnt;

  CheckField('CidEnt');
end;

function T070FIL.GetEstEnt: string;
begin
  Result := FEstEnt;
end;

procedure T070FIL.SetEstEnt(const pEstEnt: string);
begin
  FEstEnt := pEstEnt;

  CheckField('EstEnt');
end;

function T070FIL.GetEndCob: string;
begin
  Result := FEndCob;
end;

procedure T070FIL.SetEndCob(const pEndCob: string);
begin
  FEndCob := pEndCob;

  CheckField('EndCob');
end;

function T070FIL.GetCplCob: string;
begin
  Result := FCplCob;
end;

procedure T070FIL.SetCplCob(const pCplCob: string);
begin
  FCplCob := pCplCob;

  CheckField('CplCob');
end;

function T070FIL.GetCepCob: Integer;
begin
  Result := FCepCob;
end;

procedure T070FIL.SetCepCob(const pCepCob: Integer);
begin
  FCepCob := pCepCob;

  CheckField('CepCob');
end;

function T070FIL.GetCidCob: string;
begin
  Result := FCidCob;
end;

procedure T070FIL.SetCidCob(const pCidCob: string);
begin
  FCidCob := pCidCob;

  CheckField('CidCob');
end;

function T070FIL.GetEstCob: string;
begin
  Result := FEstCob;
end;

procedure T070FIL.SetEstCob(const pEstCob: string);
begin
  FEstCob := pEstCob;

  CheckField('EstCob');
end;

function T070FIL.GetNumFon: string;
begin
  Result := FNumFon;
end;

procedure T070FIL.SetNumFon(const pNumFon: string);
begin
  FNumFon := pNumFon;

  CheckField('NumFon');
end;

function T070FIL.GetNumFax: string;
begin
  Result := FNumFax;
end;

procedure T070FIL.SetNumFax(const pNumFax: string);
begin
  FNumFax := pNumFax;

  CheckField('NumFax');
end;

function T070FIL.GetCxaPst: Integer;
begin
  Result := FCxaPst;
end;

procedure T070FIL.SetCxaPst(const pCxaPst: Integer);
begin
  FCxaPst := pCxaPst;

  CheckField('CxaPst');
end;

function T070FIL.GetIntNet: string;
begin
  Result := FIntNet;
end;

procedure T070FIL.SetIntNet(const pIntNet: string);
begin
  FIntNet := pIntNet;

  CheckField('IntNet');
end;

function T070FIL.GetTipEmp: Integer;
begin
  Result := FTipEmp;
end;

procedure T070FIL.SetTipEmp(const pTipEmp: Integer);
begin
  FTipEmp := pTipEmp;

  CheckField('TipEmp');
end;

function T070FIL.GetFilCli: Integer;
begin
  Result := FFilCli;
end;

procedure T070FIL.SetFilCli(const pFilCli: Integer);
begin
  FFilCli := pFilCli;

  CheckField('FilCli');
end;

function T070FIL.GetFilFor: Integer;
begin
  Result := FFilFor;
end;

procedure T070FIL.SetFilFor(const pFilFor: Integer);
begin
  FFilFor := pFilFor;

  CheckField('FilFor');
end;

function T070FIL.GetPedIni: Integer;
begin
  Result := FPedIni;
end;

procedure T070FIL.SetPedIni(const pPedIni: Integer);
begin
  FPedIni := pPedIni;

  CheckField('PedIni');
end;

function T070FIL.GetZonFra: Integer;
begin
  Result := FZonFra;
end;

procedure T070FIL.SetZonFra(const pZonFra: Integer);
begin
  FZonFra := pZonFra;

  CheckField('ZonFra');
end;

function T070FIL.GetCodSuf: string;
begin
  Result := FCodSuf;
end;

procedure T070FIL.SetCodSuf(const pCodSuf: string);
begin
  FCodSuf := pCodSuf;

  CheckField('CodSuf');
end;

function T070FIL.GetDifAli: Char;
begin
  Result := FDifAli;
end;

procedure T070FIL.SetDifAli(const pDifAli: Char);
begin
  FDifAli := pDifAli;

  CheckField('DifAli');
end;

function T070FIL.GetCriFed: Integer;
begin
  Result := FCriFed;
end;

procedure T070FIL.SetCriFed(const pCriFed: Integer);
begin
  FCriFed := pCriFed;

  CheckField('CriFed');
end;

function T070FIL.GetQtdDlb: Integer;
begin
  Result := FQtdDlb;
end;

procedure T070FIL.SetQtdDlb(const pQtdDlb: Integer);
begin
  FQtdDlb := pQtdDlb;

  CheckField('QtdDlb');
end;

function T070FIL.GetVenPdi: TDate;
begin
  Result := FVenPdi;
end;

procedure T070FIL.SetVenPdi(const pVenPdi: TDate);
begin
  FVenPdi := pVenPdi;

  CheckField('VenPdi');
end;

function T070FIL.GetVenPdf: TDate;
begin
  Result := FVenPdf;
end;

procedure T070FIL.SetVenPdf(const pVenPdf: TDate);
begin
  FVenPdf := pVenPdf;

  CheckField('VenPdf');
end;

function T070FIL.GetVenCae: Integer;
begin
  Result := FVenCae;
end;

procedure T070FIL.SetVenCae(const pVenCae: Integer);
begin
  FVenCae := pVenCae;

  CheckField('VenCae');
end;

function T070FIL.GetVenQdf: Integer;
begin
  Result := FVenQdf;
end;

procedure T070FIL.SetVenQdf(const pVenQdf: Integer);
begin
  FVenQdf := pVenQdf;

  CheckField('VenQdf');
end;

function T070FIL.GetVenTcc: string;
begin
  Result := FVenTcc;
end;

procedure T070FIL.SetVenTcc(const pVenTcc: string);
begin
  FVenTcc := pVenTcc;

  CheckField('VenTcc');
end;

function T070FIL.GetVenTpp: string;
begin
  Result := FVenTpp;
end;

procedure T070FIL.SetVenTpp(const pVenTpp: string);
begin
  FVenTpp := pVenTpp;

  CheckField('VenTpp');
end;

function T070FIL.GetVenTps: string;
begin
  Result := FVenTps;
end;

procedure T070FIL.SetVenTps(const pVenTps: string);
begin
  FVenTps := pVenTps;

  CheckField('VenTps');
end;

function T070FIL.GetVenDsu: Double;
begin
  Result := FVenDsu;
end;

procedure T070FIL.SetVenDsu(const pVenDsu: Double);
begin
  FVenDsu := pVenDsu;

  CheckField('VenDsu');
end;

function T070FIL.GetVenVmp: Double;
begin
  Result := FVenVmp;
end;

procedure T070FIL.SetVenVmp(const pVenVmp: Double);
begin
  FVenVmp := pVenVmp;

  CheckField('VenVmp');
end;

function T070FIL.GetVenLep: Integer;
begin
  Result := FVenLep;
end;

procedure T070FIL.SetVenLep(const pVenLep: Integer);
begin
  FVenLep := pVenLep;

  CheckField('VenLep');
end;

function T070FIL.GetVenTcv: string;
begin
  Result := FVenTcv;
end;

procedure T070FIL.SetVenTcv(const pVenTcv: string);
begin
  FVenTcv := pVenTcv;

  CheckField('VenTcv');
end;

function T070FIL.GetVenCep: Char;
begin
  Result := FVenCep;
end;

procedure T070FIL.SetVenCep(const pVenCep: Char);
begin
  FVenCep := pVenCep;

  CheckField('VenCep');
end;

function T070FIL.GetVenPvp: Char;
begin
  Result := FVenPvp;
end;

procedure T070FIL.SetVenPvp(const pVenPvp: Char);
begin
  FVenPvp := pVenPvp;

  CheckField('VenPvp');
end;

function T070FIL.GetVenNpa: Char;
begin
  Result := FVenNpa;
end;

procedure T070FIL.SetVenNpa(const pVenNpa: Char);
begin
  FVenNpa := pVenNpa;

  CheckField('VenNpa');
end;

function T070FIL.GetVenCfi: Char;
begin
  Result := FVenCfi;
end;

procedure T070FIL.SetVenCfi(const pVenCfi: Char);
begin
  FVenCfi := pVenCfi;

  CheckField('VenCfi');
end;

function T070FIL.GetVenNtr: Char;
begin
  Result := FVenNtr;
end;

procedure T070FIL.SetVenNtr(const pVenNtr: Char);
begin
  FVenNtr := pVenNtr;

  CheckField('VenNtr');
end;

function T070FIL.GetVenSnr: string;
begin
  Result := FVenSnr;
end;

procedure T070FIL.SetVenSnr(const pVenSnr: string);
begin
  FVenSnr := pVenSnr;

  CheckField('VenSnr');
end;

function T070FIL.GetVenQip: Integer;
begin
  Result := FVenQip;
end;

procedure T070FIL.SetVenQip(const pVenQip: Integer);
begin
  FVenQip := pVenQip;

  CheckField('VenQip');
end;

function T070FIL.GetVenSnp: string;
begin
  Result := FVenSnp;
end;

procedure T070FIL.SetVenSnp(const pVenSnp: string);
begin
  FVenSnp := pVenSnp;

  CheckField('VenSnp');
end;

function T070FIL.GetVenQdp: Integer;
begin
  Result := FVenQdp;
end;

procedure T070FIL.SetVenQdp(const pVenQdp: Integer);
begin
  FVenQdp := pVenQdp;

  CheckField('VenQdp');
end;

function T070FIL.GetVenRpd: Integer;
begin
  Result := FVenRpd;
end;

procedure T070FIL.SetVenRpd(const pVenRpd: Integer);
begin
  FVenRpd := pVenRpd;

  CheckField('VenRpd');
end;

function T070FIL.GetVenCcc: Char;
begin
  Result := FVenCcc;
end;

procedure T070FIL.SetVenCcc(const pVenCcc: Char);
begin
  FVenCcc := pVenCcc;

  CheckField('VenCcc');
end;

function T070FIL.GetVenCcr: Char;
begin
  Result := FVenCcr;
end;

procedure T070FIL.SetVenCcr(const pVenCcr: Char);
begin
  FVenCcr := pVenCcr;

  CheckField('VenCcr');
end;

function T070FIL.GetVenCrr: Char;
begin
  Result := FVenCrr;
end;

procedure T070FIL.SetVenCrr(const pVenCrr: Char);
begin
  FVenCrr := pVenCrr;

  CheckField('VenCrr');
end;

function T070FIL.GetVenPse: Char;
begin
  Result := FVenPse;
end;

procedure T070FIL.SetVenPse(const pVenPse: Char);
begin
  FVenPse := pVenPse;

  CheckField('VenPse');
end;

function T070FIL.GetVenPam: Integer;
begin
  Result := FVenPam;
end;

procedure T070FIL.SetVenPam(const pVenPam: Integer);
begin
  FVenPam := pVenPam;

  CheckField('VenPam');
end;

function T070FIL.GetVenPma: Integer;
begin
  Result := FVenPma;
end;

procedure T070FIL.SetVenPma(const pVenPma: Integer);
begin
  FVenPma := pVenPma;

  CheckField('VenPma');
end;

function T070FIL.GetVenPpc: Integer;
begin
  Result := FVenPpc;
end;

procedure T070FIL.SetVenPpc(const pVenPpc: Integer);
begin
  FVenPpc := pVenPpc;

  CheckField('VenPpc');
end;

function T070FIL.GetVenPta: Integer;
begin
  Result := FVenPta;
end;

procedure T070FIL.SetVenPta(const pVenPta: Integer);
begin
  FVenPta := pVenPta;

  CheckField('VenPta');
end;

function T070FIL.GetVenPdt: Integer;
begin
  Result := FVenPdt;
end;

procedure T070FIL.SetVenPdt(const pVenPdt: Integer);
begin
  FVenPdt := pVenPdt;

  CheckField('VenPdt');
end;

function T070FIL.GetVenPcs: Integer;
begin
  Result := FVenPcs;
end;

procedure T070FIL.SetVenPcs(const pVenPcs: Integer);
begin
  FVenPcs := pVenPcs;

  CheckField('VenPcs');
end;

function T070FIL.GetVenPlc: Char;
begin
  Result := FVenPlc;
end;

procedure T070FIL.SetVenPlc(const pVenPlc: Char);
begin
  FVenPlc := pVenPlc;

  CheckField('VenPlc');
end;

function T070FIL.GetVenFam: Integer;
begin
  Result := FVenFam;
end;

procedure T070FIL.SetVenFam(const pVenFam: Integer);
begin
  FVenFam := pVenFam;

  CheckField('VenFam');
end;

function T070FIL.GetVenFma: Integer;
begin
  Result := FVenFma;
end;

procedure T070FIL.SetVenFma(const pVenFma: Integer);
begin
  FVenFma := pVenFma;

  CheckField('VenFma');
end;

function T070FIL.GetVenFpc: Integer;
begin
  Result := FVenFpc;
end;

procedure T070FIL.SetVenFpc(const pVenFpc: Integer);
begin
  FVenFpc := pVenFpc;

  CheckField('VenFpc');
end;

function T070FIL.GetVenFta: Integer;
begin
  Result := FVenFta;
end;

procedure T070FIL.SetVenFta(const pVenFta: Integer);
begin
  FVenFta := pVenFta;

  CheckField('VenFta');
end;

function T070FIL.GetVenFdt: Integer;
begin
  Result := FVenFdt;
end;

procedure T070FIL.SetVenFdt(const pVenFdt: Integer);
begin
  FVenFdt := pVenFdt;

  CheckField('VenFdt');
end;

function T070FIL.GetVenFcs: Integer;
begin
  Result := FVenFcs;
end;

procedure T070FIL.SetVenFcs(const pVenFcs: Integer);
begin
  FVenFcs := pVenFcs;

  CheckField('VenFcs');
end;

function T070FIL.GetVenFlc: Char;
begin
  Result := FVenFlc;
end;

procedure T070FIL.SetVenFlc(const pVenFlc: Char);
begin
  FVenFlc := pVenFlc;

  CheckField('VenFlc');
end;

function T070FIL.GetVenIss: Double;
begin
  Result := FVenIss;
end;

procedure T070FIL.SetVenIss(const pVenIss: Double);
begin
  FVenIss := pVenIss;

  CheckField('VenIss');
end;

function T070FIL.GetVenIpd: Integer;
begin
  Result := FVenIpd;
end;

procedure T070FIL.SetVenIpd(const pVenIpd: Integer);
begin
  FVenIpd := pVenIpd;

  CheckField('VenIpd');
end;

function T070FIL.GetVenApc: Integer;
begin
  Result := FVenApc;
end;

procedure T070FIL.SetVenApc(const pVenApc: Integer);
begin
  FVenApc := pVenApc;

  CheckField('VenApc');
end;

function T070FIL.GetVenLvp: Double;
begin
  Result := FVenLvp;
end;

procedure T070FIL.SetVenLvp(const pVenLvp: Double);
begin
  FVenLvp := pVenLvp;

  CheckField('VenLvp');
end;

function T070FIL.GetEstPdi: TDate;
begin
  Result := FEstPdi;
end;

procedure T070FIL.SetEstPdi(const pEstPdi: TDate);
begin
  FEstPdi := pEstPdi;

  CheckField('EstPdi');
end;

function T070FIL.GetEstPdf: TDate;
begin
  Result := FEstPdf;
end;

procedure T070FIL.SetEstPdf(const pEstPdf: TDate);
begin
  FEstPdf := pEstPdf;

  CheckField('EstPdf');
end;

function T070FIL.GetEstPai: TDate;
begin
  Result := FEstPai;
end;

procedure T070FIL.SetEstPai(const pEstPai: TDate);
begin
  FEstPai := pEstPai;

  CheckField('EstPai');
end;

function T070FIL.GetEstPaf: TDate;
begin
  Result := FEstPaf;
end;

procedure T070FIL.SetEstPaf(const pEstPaf: TDate);
begin
  FEstPaf := pEstPaf;

  CheckField('EstPaf');
end;

function T070FIL.GetEstTei: string;
begin
  Result := FEstTei;
end;

procedure T070FIL.SetEstTei(const pEstTei: string);
begin
  FEstTei := pEstTei;

  CheckField('EstTei');
end;

function T070FIL.GetEstTsi: string;
begin
  Result := FEstTsi;
end;

procedure T070FIL.SetEstTsi(const pEstTsi: string);
begin
  FEstTsi := pEstTsi;

  CheckField('EstTsi');
end;

function T070FIL.GetEstTpr: string;
begin
  Result := FEstTpr;
end;

procedure T070FIL.SetEstTpr(const pEstTpr: string);
begin
  FEstTpr := pEstTpr;

  CheckField('EstTpr');
end;

function T070FIL.GetEstUnm: Char;
begin
  Result := FEstUnm;
end;

procedure T070FIL.SetEstUnm(const pEstUnm: Char);
begin
  FEstUnm := pEstUnm;

  CheckField('EstUnm');
end;

function T070FIL.GetEstDpf: Char;
begin
  Result := FEstDpf;
end;

procedure T070FIL.SetEstDpf(const pEstDpf: Char);
begin
  FEstDpf := pEstDpf;

  CheckField('EstDpf');
end;

function T070FIL.GetRecPdi: TDate;
begin
  Result := FRecPdi;
end;

procedure T070FIL.SetRecPdi(const pRecPdi: TDate);
begin
  FRecPdi := pRecPdi;

  CheckField('RecPdi');
end;

function T070FIL.GetRecPdf: TDate;
begin
  Result := FRecPdf;
end;

procedure T070FIL.SetRecPdf(const pRecPdf: TDate);
begin
  FRecPdf := pRecPdf;

  CheckField('RecPdf');
end;

function T070FIL.GetRecPor: string;
begin
  Result := FRecPor;
end;

procedure T070FIL.SetRecPor(const pRecPor: string);
begin
  FRecPor := pRecPor;

  CheckField('RecPor');
end;

function T070FIL.GetRecCrt: string;
begin
  Result := FRecCrt;
end;

procedure T070FIL.SetRecCrt(const pRecCrt: string);
begin
  FRecCrt := pRecCrt;

  CheckField('RecCrt');
end;

function T070FIL.GetRecOcr: string;
begin
  Result := FRecOcr;
end;

procedure T070FIL.SetRecOcr(const pRecOcr: string);
begin
  FRecOcr := pRecOcr;

  CheckField('RecOcr');
end;

function T070FIL.GetRecIns: string;
begin
  Result := FRecIns;
end;

procedure T070FIL.SetRecIns(const pRecIns: string);
begin
  FRecIns := pRecIns;

  CheckField('RecIns');
end;

function T070FIL.GetRecVmt: Double;
begin
  Result := FRecVmt;
end;

procedure T070FIL.SetRecVmt(const pRecVmt: Double);
begin
  FRecVmt := pRecVmt;

  CheckField('RecVmt');
end;

function T070FIL.GetRecDpr: Integer;
begin
  Result := FRecDpr;
end;

procedure T070FIL.SetRecDpr(const pRecDpr: Integer);
begin
  FRecDpr := pRecDpr;

  CheckField('RecDpr');
end;

function T070FIL.GetRecMoe: string;
begin
  Result := FRecMoe;
end;

procedure T070FIL.SetRecMoe(const pRecMoe: string);
begin
  FRecMoe := pRecMoe;

  CheckField('RecMoe');
end;

function T070FIL.GetRecJmm: Double;
begin
  Result := FRecJmm;
end;

procedure T070FIL.SetRecJmm(const pRecJmm: Double);
begin
  FRecJmm := pRecJmm;

  CheckField('RecJmm');
end;

function T070FIL.GetRecTjr: Char;
begin
  Result := FRecTjr;
end;

procedure T070FIL.SetRecTjr(const pRecTjr: Char);
begin
  FRecTjr := pRecTjr;

  CheckField('RecTjr');
end;

function T070FIL.GetRecDtj: Integer;
begin
  Result := FRecDtj;
end;

procedure T070FIL.SetRecDtj(const pRecDtj: Integer);
begin
  FRecDtj := pRecDtj;

  CheckField('RecDtj');
end;

function T070FIL.GetRecMul: Double;
begin
  Result := FRecMul;
end;

procedure T070FIL.SetRecMul(const pRecMul: Double);
begin
  FRecMul := pRecMul;

  CheckField('RecMul');
end;

function T070FIL.GetRecDtm: Integer;
begin
  Result := FRecDtm;
end;

procedure T070FIL.SetRecDtm(const pRecDtm: Integer);
begin
  FRecDtm := pRecDtm;

  CheckField('RecDtm');
end;

function T070FIL.GetRecVjm: Double;
begin
  Result := FRecVjm;
end;

procedure T070FIL.SetRecVjm(const pRecVjm: Double);
begin
  FRecVjm := pRecVjm;

  CheckField('RecVjm');
end;

function T070FIL.GetRecVdm: Double;
begin
  Result := FRecVdm;
end;

procedure T070FIL.SetRecVdm(const pRecVdm: Double);
begin
  FRecVdm := pRecVdm;

  CheckField('RecVdm');
end;

function T070FIL.GetRecVmm: Double;
begin
  Result := FRecVmm;
end;

procedure T070FIL.SetRecVmm(const pRecVmm: Double);
begin
  FRecVmm := pRecVmm;

  CheckField('RecVmm');
end;

function T070FIL.GetRecAvs: Char;
begin
  Result := FRecAvs;
end;

procedure T070FIL.SetRecAvs(const pRecAvs: Char);
begin
  FRecAvs := pRecAvs;

  CheckField('RecAvs');
end;

function T070FIL.GetRecAdc: Char;
begin
  Result := FRecAdc;
end;

procedure T070FIL.SetRecAdc(const pRecAdc: Char);
begin
  FRecAdc := pRecAdc;

  CheckField('RecAdc');
end;

function T070FIL.GetRecAoc: Char;
begin
  Result := FRecAoc;
end;

procedure T070FIL.SetRecAoc(const pRecAoc: Char);
begin
  FRecAoc := pRecAoc;

  CheckField('RecAoc');
end;

function T070FIL.GetRecPcj: Char;
begin
  Result := FRecPcj;
end;

procedure T070FIL.SetRecPcj(const pRecPcj: Char);
begin
  FRecPcj := pRecPcj;

  CheckField('RecPcj');
end;

function T070FIL.GetRecPcm: Char;
begin
  Result := FRecPcm;
end;

procedure T070FIL.SetRecPcm(const pRecPcm: Char);
begin
  FRecPcm := pRecPcm;

  CheckField('RecPcm');
end;

function T070FIL.GetRecPce: Char;
begin
  Result := FRecPce;
end;

procedure T070FIL.SetRecPce(const pRecPce: Char);
begin
  FRecPce := pRecPce;

  CheckField('RecPce');
end;

function T070FIL.GetRecPcc: Char;
begin
  Result := FRecPcc;
end;

procedure T070FIL.SetRecPcc(const pRecPcc: Char);
begin
  FRecPcc := pRecPcc;

  CheckField('RecPcc');
end;

function T070FIL.GetRecPco: Char;
begin
  Result := FRecPco;
end;

procedure T070FIL.SetRecPco(const pRecPco: Char);
begin
  FRecPco := pRecPco;

  CheckField('RecPco');
end;

function T070FIL.GetRecTpm: string;
begin
  Result := FRecTpm;
end;

procedure T070FIL.SetRecTpm(const pRecTpm: string);
begin
  FRecTpm := pRecTpm;

  CheckField('RecTpm');
end;

function T070FIL.GetRecTac: string;
begin
  Result := FRecTac;
end;

procedure T070FIL.SetRecTac(const pRecTac: string);
begin
  FRecTac := pRecTac;

  CheckField('RecTac');
end;

function T070FIL.GetRecTes: string;
begin
  Result := FRecTes;
end;

procedure T070FIL.SetRecTes(const pRecTes: string);
begin
  FRecTes := pRecTes;

  CheckField('RecTes');
end;

function T070FIL.GetRecTbp: string;
begin
  Result := FRecTbp;
end;

procedure T070FIL.SetRecTbp(const pRecTbp: string);
begin
  FRecTbp := pRecTbp;

  CheckField('RecTbp');
end;

function T070FIL.GetRecTba: string;
begin
  Result := FRecTba;
end;

procedure T070FIL.SetRecTba(const pRecTba: string);
begin
  FRecTba := pRecTba;

  CheckField('RecTba');
end;

function T070FIL.GetRecTbs: string;
begin
  Result := FRecTbs;
end;

procedure T070FIL.SetRecTbs(const pRecTbs: string);
begin
  FRecTbs := pRecTbs;

  CheckField('RecTbs');
end;

function T070FIL.GetRecTbc: string;
begin
  Result := FRecTbc;
end;

procedure T070FIL.SetRecTbc(const pRecTbc: string);
begin
  FRecTbc := pRecTbc;

  CheckField('RecTbc');
end;

function T070FIL.GetRecTpc: string;
begin
  Result := FRecTpc;
end;

procedure T070FIL.SetRecTpc(const pRecTpc: string);
begin
  FRecTpc := pRecTpc;

  CheckField('RecTpc');
end;

function T070FIL.GetRecTcc: string;
begin
  Result := FRecTcc;
end;

procedure T070FIL.SetRecTcc(const pRecTcc: string);
begin
  FRecTcc := pRecTcc;

  CheckField('RecTcc');
end;

function T070FIL.GetCprPdi: TDate;
begin
  Result := FCprPdi;
end;

procedure T070FIL.SetCprPdi(const pCprPdi: TDate);
begin
  FCprPdi := pCprPdi;

  CheckField('CprPdi');
end;

function T070FIL.GetCprPdf: TDate;
begin
  Result := FCprPdf;
end;

procedure T070FIL.SetCprPdf(const pCprPdf: TDate);
begin
  FCprPdf := pCprPdf;

  CheckField('CprPdf');
end;

function T070FIL.GetCprQmc: Integer;
begin
  Result := FCprQmc;
end;

procedure T070FIL.SetCprQmc(const pCprQmc: Integer);
begin
  FCprQmc := pCprQmc;

  CheckField('CprQmc');
end;

function T070FIL.GetCprAvo: Char;
begin
  Result := FCprAvo;
end;

procedure T070FIL.SetCprAvo(const pCprAvo: Char);
begin
  FCprAvo := pCprAvo;

  CheckField('CprAvo');
end;

function T070FIL.GetCprDnf: Double;
begin
  Result := FCprDnf;
end;

procedure T070FIL.SetCprDnf(const pCprDnf: Double);
begin
  FCprDnf := pCprDnf;

  CheckField('CprDnf');
end;

function T070FIL.GetCprTop: string;
begin
  Result := FCprTop;
end;

procedure T070FIL.SetCprTop(const pCprTop: string);
begin
  FCprTop := pCprTop;

  CheckField('CprTop');
end;

function T070FIL.GetCprTom: string;
begin
  Result := FCprTom;
end;

procedure T070FIL.SetCprTom(const pCprTom: string);
begin
  FCprTom := pCprTom;

  CheckField('CprTom');
end;

function T070FIL.GetCprTos: string;
begin
  Result := FCprTos;
end;

procedure T070FIL.SetCprTos(const pCprTos: string);
begin
  FCprTos := pCprTos;

  CheckField('CprTos');
end;

function T070FIL.GetCprTfp: string;
begin
  Result := FCprTfp;
end;

procedure T070FIL.SetCprTfp(const pCprTfp: string);
begin
  FCprTfp := pCprTfp;

  CheckField('CprTfp');
end;

function T070FIL.GetCprTfs: string;
begin
  Result := FCprTfs;
end;

procedure T070FIL.SetCprTfs(const pCprTfs: string);
begin
  FCprTfs := pCprTfs;

  CheckField('CprTfs');
end;

function T070FIL.GetCprTea: string;
begin
  Result := FCprTea;
end;

procedure T070FIL.SetCprTea(const pCprTea: string);
begin
  FCprTea := pCprTea;

  CheckField('CprTea');
end;

function T070FIL.GetCprTsa: string;
begin
  Result := FCprTsa;
end;

procedure T070FIL.SetCprTsa(const pCprTsa: string);
begin
  FCprTsa := pCprTsa;

  CheckField('CprTsa');
end;

function T070FIL.GetCprSnp: string;
begin
  Result := FCprSnp;
end;

procedure T070FIL.SetCprSnp(const pCprSnp: string);
begin
  FCprSnp := pCprSnp;

  CheckField('CprSnp');
end;

function T070FIL.GetCprCcf: Char;
begin
  Result := FCprCcf;
end;

procedure T070FIL.SetCprCcf(const pCprCcf: Char);
begin
  FCprCcf := pCprCcf;

  CheckField('CprCcf');
end;

function T070FIL.GetCprCfr: Char;
begin
  Result := FCprCfr;
end;

procedure T070FIL.SetCprCfr(const pCprCfr: Char);
begin
  FCprCfr := pCprCfr;

  CheckField('CprCfr');
end;

function T070FIL.GetCprFss: Integer;
begin
  Result := FCprFss;
end;

procedure T070FIL.SetCprFss(const pCprFss: Integer);
begin
  FCprFss := pCprFss;

  CheckField('CprFss');
end;

function T070FIL.GetPagPdi: TDate;
begin
  Result := FPagPdi;
end;

procedure T070FIL.SetPagPdi(const pPagPdi: TDate);
begin
  FPagPdi := pPagPdi;

  CheckField('PagPdi');
end;

function T070FIL.GetPagPdf: TDate;
begin
  Result := FPagPdf;
end;

procedure T070FIL.SetPagPdf(const pPagPdf: TDate);
begin
  FPagPdf := pPagPdf;

  CheckField('PagPdf');
end;

function T070FIL.GetPagApr: Char;
begin
  Result := FPagApr;
end;

procedure T070FIL.SetPagApr(const pPagApr: Char);
begin
  FPagApr := pPagApr;

  CheckField('PagApr');
end;

function T070FIL.GetPagDpr: Integer;
begin
  Result := FPagDpr;
end;

procedure T070FIL.SetPagDpr(const pPagDpr: Integer);
begin
  FPagDpr := pPagDpr;

  CheckField('PagDpr');
end;

function T070FIL.GetPagMoe: string;
begin
  Result := FPagMoe;
end;

procedure T070FIL.SetPagMoe(const pPagMoe: string);
begin
  FPagMoe := pPagMoe;

  CheckField('PagMoe');
end;

function T070FIL.GetPagJmm: Double;
begin
  Result := FPagJmm;
end;

procedure T070FIL.SetPagJmm(const pPagJmm: Double);
begin
  FPagJmm := pPagJmm;

  CheckField('PagJmm');
end;

function T070FIL.GetPagTjr: Char;
begin
  Result := FPagTjr;
end;

procedure T070FIL.SetPagTjr(const pPagTjr: Char);
begin
  FPagTjr := pPagTjr;

  CheckField('PagTjr');
end;

function T070FIL.GetPagDtj: Integer;
begin
  Result := FPagDtj;
end;

procedure T070FIL.SetPagDtj(const pPagDtj: Integer);
begin
  FPagDtj := pPagDtj;

  CheckField('PagDtj');
end;

function T070FIL.GetPagMul: Double;
begin
  Result := FPagMul;
end;

procedure T070FIL.SetPagMul(const pPagMul: Double);
begin
  FPagMul := pPagMul;

  CheckField('PagMul');
end;

function T070FIL.GetPagDtm: Integer;
begin
  Result := FPagDtm;
end;

procedure T070FIL.SetPagDtm(const pPagDtm: Integer);
begin
  FPagDtm := pPagDtm;

  CheckField('PagDtm');
end;

function T070FIL.GetPagTpm: string;
begin
  Result := FPagTpm;
end;

procedure T070FIL.SetPagTpm(const pPagTpm: string);
begin
  FPagTpm := pPagTpm;

  CheckField('PagTpm');
end;

function T070FIL.GetPagTpf: string;
begin
  Result := FPagTpf;
end;

procedure T070FIL.SetPagTpf(const pPagTpf: string);
begin
  FPagTpf := pPagTpf;

  CheckField('PagTpf');
end;

function T070FIL.GetPagTaf: string;
begin
  Result := FPagTaf;
end;

procedure T070FIL.SetPagTaf(const pPagTaf: string);
begin
  FPagTaf := pPagTaf;

  CheckField('PagTaf');
end;

function T070FIL.GetPagTbp: string;
begin
  Result := FPagTbp;
end;

procedure T070FIL.SetPagTbp(const pPagTbp: string);
begin
  FPagTbp := pPagTbp;

  CheckField('PagTbp');
end;

function T070FIL.GetPagTbc: string;
begin
  Result := FPagTbc;
end;

procedure T070FIL.SetPagTbc(const pPagTbc: string);
begin
  FPagTbc := pPagTbc;

  CheckField('PagTbc');
end;

function T070FIL.GetPagTbs: string;
begin
  Result := FPagTbs;
end;

procedure T070FIL.SetPagTbs(const pPagTbs: string);
begin
  FPagTbs := pPagTbs;

  CheckField('PagTbs');
end;

function T070FIL.GetPagTpc: string;
begin
  Result := FPagTpc;
end;

procedure T070FIL.SetPagTpc(const pPagTpc: string);
begin
  FPagTpc := pPagTpc;

  CheckField('PagTpc');
end;

function T070FIL.GetPagTcc: string;
begin
  Result := FPagTcc;
end;

procedure T070FIL.SetPagTcc(const pPagTcc: string);
begin
  FPagTcc := pPagTcc;

  CheckField('PagTcc');
end;

function T070FIL.GetPagVjm: Double;
begin
  Result := FPagVjm;
end;

procedure T070FIL.SetPagVjm(const pPagVjm: Double);
begin
  FPagVjm := pPagVjm;

  CheckField('PagVjm');
end;

function T070FIL.GetPagVdm: Double;
begin
  Result := FPagVdm;
end;

procedure T070FIL.SetPagVdm(const pPagVdm: Double);
begin
  FPagVdm := pPagVdm;

  CheckField('PagVdm');
end;

function T070FIL.GetPagVmm: Double;
begin
  Result := FPagVmm;
end;

procedure T070FIL.SetPagVmm(const pPagVmm: Double);
begin
  FPagVmm := pPagVmm;

  CheckField('PagVmm');
end;

function T070FIL.GetPagTcm: string;
begin
  Result := FPagTcm;
end;

procedure T070FIL.SetPagTcm(const pPagTcm: string);
begin
  FPagTcm := pPagTcm;

  CheckField('PagTcm');
end;

function T070FIL.GetPagTdc: string;
begin
  Result := FPagTdc;
end;

procedure T070FIL.SetPagTdc(const pPagTdc: string);
begin
  FPagTdc := pPagTdc;

  CheckField('PagTdc');
end;

function T070FIL.GetPagTdi: string;
begin
  Result := FPagTdi;
end;

procedure T070FIL.SetPagTdi(const pPagTdi: string);
begin
  FPagTdi := pPagTdi;

  CheckField('PagTdi');
end;

function T070FIL.GetPagLir: Double;
begin
  Result := FPagLir;
end;

procedure T070FIL.SetPagLir(const pPagLir: Double);
begin
  FPagLir := pPagLir;

  CheckField('PagLir');
end;

function T070FIL.GetPagEev: Integer;
begin
  Result := FPagEev;
end;

procedure T070FIL.SetPagEev(const pPagEev: Integer);
begin
  FPagEev := pPagEev;

  CheckField('PagEev');
end;

function T070FIL.GetCxbPdi: TDate;
begin
  Result := FCxbPdi;
end;

procedure T070FIL.SetCxbPdi(const pCxbPdi: TDate);
begin
  FCxbPdi := pCxbPdi;

  CheckField('CxbPdi');
end;

function T070FIL.GetCxbPdf: TDate;
begin
  Result := FCxbPdf;
end;

procedure T070FIL.SetCxbPdf(const pCxbPdf: TDate);
begin
  FCxbPdf := pCxbPdf;

  CheckField('CxbPdf');
end;

function T070FIL.GetCxbTca: string;
begin
  Result := FCxbTca;
end;

procedure T070FIL.SetCxbTca(const pCxbTca: string);
begin
  FCxbTca := pCxbTca;

  CheckField('CxbTca');
end;

function T070FIL.GetCxbTdc: string;
begin
  Result := FCxbTdc;
end;

procedure T070FIL.SetCxbTdc(const pCxbTdc: string);
begin
  FCxbTdc := pCxbTdc;

  CheckField('CxbTdc');
end;

function T070FIL.GetCxbTde: string;
begin
  Result := FCxbTde;
end;

procedure T070FIL.SetCxbTde(const pCxbTde: string);
begin
  FCxbTde := pCxbTde;

  CheckField('CxbTde');
end;

function T070FIL.GetCxbTdt: string;
begin
  Result := FCxbTdt;
end;

procedure T070FIL.SetCxbTdt(const pCxbTdt: string);
begin
  FCxbTdt := pCxbTdt;

  CheckField('CxbTdt');
end;

function T070FIL.GetCxbDec: Integer;
begin
  Result := FCxbDec;
end;

procedure T070FIL.SetCxbDec(const pCxbDec: Integer);
begin
  FCxbDec := pCxbDec;

  CheckField('CxbDec');
end;

function T070FIL.GetCtbExi: TDate;
begin
  Result := FCtbExi;
end;

procedure T070FIL.SetCtbExi(const pCtbExi: TDate);
begin
  FCtbExi := pCtbExi;

  CheckField('CtbExi');
end;

function T070FIL.GetCtbExf: TDate;
begin
  Result := FCtbExf;
end;

procedure T070FIL.SetCtbExf(const pCtbExf: TDate);
begin
  FCtbExf := pCtbExf;

  CheckField('CtbExf');
end;

function T070FIL.GetCtbPei: TDate;
begin
  Result := FCtbPei;
end;

procedure T070FIL.SetCtbPei(const pCtbPei: TDate);
begin
  FCtbPei := pCtbPei;

  CheckField('CtbPei');
end;

function T070FIL.GetCtbPef: TDate;
begin
  Result := FCtbPef;
end;

procedure T070FIL.SetCtbPef(const pCtbPef: TDate);
begin
  FCtbPef := pCtbPef;

  CheckField('CtbPef');
end;

function T070FIL.GetCtbQdl: Integer;
begin
  Result := FCtbQdl;
end;

procedure T070FIL.SetCtbQdl(const pCtbQdl: Integer);
begin
  FCtbQdl := pCtbQdl;

  CheckField('CtbQdl');
end;

function T070FIL.GetCtbMoe: string;
begin
  Result := FCtbMoe;
end;

procedure T070FIL.SetCtbMoe(const pCtbMoe: string);
begin
  FCtbMoe := pCtbMoe;

  CheckField('CtbMoe');
end;

function T070FIL.GetCtbLog: Char;
begin
  Result := FCtbLog;
end;

procedure T070FIL.SetCtbLog(const pCtbLog: Char);
begin
  FCtbLog := pCtbLog;

  CheckField('CtbLog');
end;

function T070FIL.GetCtbAli: Char;
begin
  Result := FCtbAli;
end;

procedure T070FIL.SetCtbAli(const pCtbAli: Char);
begin
  FCtbAli := pCtbAli;

  CheckField('CtbAli');
end;

function T070FIL.GetCtbDia: TDate;
begin
  Result := FCtbDia;
end;

procedure T070FIL.SetCtbDia(const pCtbDia: TDate);
begin
  FCtbDia := pCtbDia;

  CheckField('CtbDia');
end;

function T070FIL.GetCtbObs: string;
begin
  Result := FCtbObs;
end;

procedure T070FIL.SetCtbObs(const pCtbObs: string);
begin
  FCtbObs := pCtbObs;

  CheckField('CtbObs');
end;

function T070FIL.GetCtbNrj: string;
begin
  Result := FCtbNrj;
end;

procedure T070FIL.SetCtbNrj(const pCtbNrj: string);
begin
  FCtbNrj := pCtbNrj;

  CheckField('CtbNrj');
end;

function T070FIL.GetCtbDrj: TDate;
begin
  Result := FCtbDrj;
end;

procedure T070FIL.SetCtbDrj(const pCtbDrj: TDate);
begin
  FCtbDrj := pCtbDrj;

  CheckField('CtbDrj');
end;

function T070FIL.GetCtbNsr: string;
begin
  Result := FCtbNsr;
end;

procedure T070FIL.SetCtbNsr(const pCtbNsr: string);
begin
  FCtbNsr := pCtbNsr;

  CheckField('CtbNsr');
end;

function T070FIL.GetCtbFsr: string;
begin
  Result := FCtbFsr;
end;

procedure T070FIL.SetCtbFsr(const pCtbFsr: string);
begin
  FCtbFsr := pCtbFsr;

  CheckField('CtbFsr');
end;

function T070FIL.GetCtbCsr: Double;
begin
  Result := FCtbCsr;
end;

procedure T070FIL.SetCtbCsr(const pCtbCsr: Double);
begin
  FCtbCsr := pCtbCsr;

  CheckField('CtbCsr');
end;

function T070FIL.GetCtbNcr: string;
begin
  Result := FCtbNcr;
end;

procedure T070FIL.SetCtbNcr(const pCtbNcr: string);
begin
  FCtbNcr := pCtbNcr;

  CheckField('CtbNcr');
end;

function T070FIL.GetCtbFcr: Char;
begin
  Result := FCtbFcr;
end;

procedure T070FIL.SetCtbFcr(const pCtbFcr: Char);
begin
  FCtbFcr := pCtbFcr;

  CheckField('CtbFcr');
end;

function T070FIL.GetCtbCrc: string;
begin
  Result := FCtbCrc;
end;

procedure T070FIL.SetCtbCrc(const pCtbCrc: string);
begin
  FCtbCrc := pCtbCrc;

  CheckField('CtbCrc');
end;

function T070FIL.GetCtbCcr: Double;
begin
  Result := FCtbCcr;
end;

procedure T070FIL.SetCtbCcr(const pCtbCcr: Double);
begin
  FCtbCcr := pCtbCcr;

  CheckField('CtbCcr');
end;

function T070FIL.GetCtbCfm: Integer;
begin
  Result := FCtbCfm;
end;

procedure T070FIL.SetCtbCfm(const pCtbCfm: Integer);
begin
  FCtbCfm := pCtbCfm;

  CheckField('CtbCfm');
end;

function T070FIL.GetCtbCae: string;
begin
  Result := FCtbCae;
end;

procedure T070FIL.SetCtbCae(const pCtbCae: string);
begin
  FCtbCae := pCtbCae;

  CheckField('CtbCae');
end;

function T070FIL.GetCtbCaf: Integer;
begin
  Result := FCtbCaf;
end;

procedure T070FIL.SetCtbCaf(const pCtbCaf: Integer);
begin
  FCtbCaf := pCtbCaf;

  CheckField('CtbCaf');
end;

function T070FIL.GetCtbFec: Char;
begin
  Result := FCtbFec;
end;

procedure T070FIL.SetCtbFec(const pCtbFec: Char);
begin
  FCtbFec := pCtbFec;

  CheckField('CtbFec');
end;

function T070FIL.GetCtbSdt: Char;
begin
  Result := FCtbSdt;
end;

procedure T070FIL.SetCtbSdt(const pCtbSdt: Char);
begin
  FCtbSdt := pCtbSdt;

  CheckField('CtbSdt');
end;

function T070FIL.GetCtbSde: Char;
begin
  Result := FCtbSde;
end;

procedure T070FIL.SetCtbSde(const pCtbSde: Char);
begin
  FCtbSde := pCtbSde;

  CheckField('CtbSde');
end;

function T070FIL.GetCtbScr: Char;
begin
  Result := FCtbScr;
end;

procedure T070FIL.SetCtbScr(const pCtbScr: Char);
begin
  FCtbScr := pCtbScr;

  CheckField('CtbScr');
end;

function T070FIL.GetCtbSvl: Char;
begin
  Result := FCtbSvl;
end;

procedure T070FIL.SetCtbSvl(const pCtbSvl: Char);
begin
  FCtbSvl := pCtbSvl;

  CheckField('CtbSvl');
end;

function T070FIL.GetCtbShp: Char;
begin
  Result := FCtbShp;
end;

procedure T070FIL.SetCtbShp(const pCtbShp: Char);
begin
  FCtbShp := pCtbShp;

  CheckField('CtbShp');
end;

function T070FIL.GetCtbHab: Char;
begin
  Result := FCtbHab;
end;

procedure T070FIL.SetCtbHab(const pCtbHab: Char);
begin
  FCtbHab := pCtbHab;

  CheckField('CtbHab');
end;

function T070FIL.GetEfiPdi: TDate;
begin
  Result := FEfiPdi;
end;

procedure T070FIL.SetEfiPdi(const pEfiPdi: TDate);
begin
  FEfiPdi := pEfiPdi;

  CheckField('EfiPdi');
end;

function T070FIL.GetEfiPdf: TDate;
begin
  Result := FEfiPdf;
end;

procedure T070FIL.SetEfiPdf(const pEfiPdf: TDate);
begin
  FEfiPdf := pEfiPdf;

  CheckField('EfiPdf');
end;

function T070FIL.GetEfiFtr: Char;
begin
  Result := FEfiFtr;
end;

procedure T070FIL.SetEfiFtr(const pEfiFtr: Char);
begin
  FEfiFtr := pEfiFtr;

  CheckField('EfiFtr');
end;

function T070FIL.GetEfiApi: Double;
begin
  Result := FEfiApi;
end;

procedure T070FIL.SetEfiApi(const pEfiApi: Double);
begin
  FEfiApi := pEfiApi;

  CheckField('EfiApi');
end;

function T070FIL.GetEfiStr: Char;
begin
  Result := FEfiStr;
end;

procedure T070FIL.SetEfiStr(const pEfiStr: Char);
begin
  FEfiStr := pEfiStr;

  CheckField('EfiStr');
end;

function T070FIL.GetEfiReg: Integer;
begin
  Result := FEfiReg;
end;

procedure T070FIL.SetEfiReg(const pEfiReg: Integer);
begin
  FEfiReg := pEfiReg;

  CheckField('EfiReg');
end;

function T070FIL.GetEfiQci: Integer;
begin
  Result := FEfiQci;
end;

procedure T070FIL.SetEfiQci(const pEfiQci: Integer);
begin
  FEfiQci := pEfiQci;

  CheckField('EfiQci');
end;

function T070FIL.GetPrdTep: string;
begin
  Result := FPrdTep;
end;

procedure T070FIL.SetPrdTep(const pPrdTep: string);
begin
  FPrdTep := pPrdTep;

  CheckField('PrdTep');
end;

function T070FIL.GetPrdTsp: string;
begin
  Result := FPrdTsp;
end;

procedure T070FIL.SetPrdTsp(const pPrdTsp: string);
begin
  FPrdTsp := pPrdTsp;

  CheckField('PrdTsp');
end;

function T070FIL.GetPrdQdd: Integer;
begin
  Result := FPrdQdd;
end;

procedure T070FIL.SetPrdQdd(const pPrdQdd: Integer);
begin
  FPrdQdd := pPrdQdd;

  CheckField('PrdQdd');
end;

function T070FIL.GetPrdTpp: string;
begin
  Result := FPrdTpp;
end;

procedure T070FIL.SetPrdTpp(const pPrdTpp: string);
begin
  FPrdTpp := pPrdTpp;

  CheckField('PrdTpp');
end;

function T070FIL.GetPrdCpp: Integer;
begin
  Result := FPrdCpp;
end;

procedure T070FIL.SetPrdCpp(const pPrdCpp: Integer);
begin
  FPrdCpp := pPrdCpp;

  CheckField('PrdCpp');
end;

function T070FIL.GetPrdRpp: Integer;
begin
  Result := FPrdRpp;
end;

procedure T070FIL.SetPrdRpp(const pPrdRpp: Integer);
begin
  FPrdRpp := pPrdRpp;

  CheckField('PrdRpp');
end;

function T070FIL.GetPrdPpp: string;
begin
  Result := FPrdPpp;
end;

procedure T070FIL.SetPrdPpp(const pPrdPpp: string);
begin
  FPrdPpp := pPrdPpp;

  CheckField('PrdPpp');
end;

function T070FIL.GetPrdTee: string;
begin
  Result := FPrdTee;
end;

procedure T070FIL.SetPrdTee(const pPrdTee: string);
begin
  FPrdTee := pPrdTee;

  CheckField('PrdTee');
end;

function T070FIL.GetPrdTnr: string;
begin
  Result := FPrdTnr;
end;

procedure T070FIL.SetPrdTnr(const pPrdTnr: string);
begin
  FPrdTnr := pPrdTnr;

  CheckField('PrdTnr');
end;

function T070FIL.GetPrdEfi: Double;
begin
  Result := FPrdEfi;
end;

procedure T070FIL.SetPrdEfi(const pPrdEfi: Double);
begin
  FPrdEfi := pPrdEfi;

  CheckField('PrdEfi');
end;

function T070FIL.GetPedBlo: Char;
begin
  Result := FPedBlo;
end;

procedure T070FIL.SetPedBlo(const pPedBlo: Char);
begin
  FPedBlo := pPedBlo;

  CheckField('PedBlo');
end;

function T070FIL.GetComPrz: Char;
begin
  Result := FComPrz;
end;

procedure T070FIL.SetComPrz(const pComPrz: Char);
begin
  FComPrz := pComPrz;

  CheckField('ComPrz');
end;

function T070FIL.GetPerCom: Double;
begin
  Result := FPerCom;
end;

procedure T070FIL.SetPerCom(const pPerCom: Double);
begin
  FPerCom := pPerCom;

  CheckField('PerCom');
end;

function T070FIL.GetTipSep: string;
begin
  Result := FTipSep;
end;

procedure T070FIL.SetTipSep(const pTipSep: string);
begin
  FTipSep := pTipSep;

  CheckField('TipSep');
end;

function T070FIL.GetIndRoe: Char;
begin
  Result := FIndRoe;
end;

procedure T070FIL.SetIndRoe(const pIndRoe: Char);
begin
  FIndRoe := pIndRoe;

  CheckField('IndRoe');
end;

function T070FIL.GetCprIef: Char;
begin
  Result := FCprIef;
end;

procedure T070FIL.SetCprIef(const pCprIef: Char);
begin
  FCprIef := pCprIef;

  CheckField('CprIef');
end;

function T070FIL.GetVenIec: Char;
begin
  Result := FVenIec;
end;

procedure T070FIL.SetVenIec(const pVenIec: Char);
begin
  FVenIec := pVenIec;

  CheckField('VenIec');
end;

function T070FIL.GetRecTia: Char;
begin
  Result := FRecTia;
end;

procedure T070FIL.SetRecTia(const pRecTia: Char);
begin
  FRecTia := pRecTia;

  CheckField('RecTia');
end;

function T070FIL.GetEstFpr: string;
begin
  Result := FEstFpr;
end;

procedure T070FIL.SetEstFpr(const pEstFpr: string);
begin
  FEstFpr := pEstFpr;

  CheckField('EstFpr');
end;

function T070FIL.GetIndExp: Integer;
begin
  Result := FIndExp;
end;

procedure T070FIL.SetIndExp(const pIndExp: Integer);
begin
  FIndExp := pIndExp;

  CheckField('IndExp');
end;

function T070FIL.GetDatPal: TDate;
begin
  Result := FDatPal;
end;

procedure T070FIL.SetDatPal(const pDatPal: TDate);
begin
  FDatPal := pDatPal;

  CheckField('DatPal');
end;

function T070FIL.GetHorPal: Integer;
begin
  Result := FHorPal;
end;

procedure T070FIL.SetHorPal(const pHorPal: Integer);
begin
  FHorPal := pHorPal;

  CheckField('HorPal');
end;

function T070FIL.GetCodAfi: Integer;
begin
  Result := FCodAfi;
end;

procedure T070FIL.SetCodAfi(const pCodAfi: Integer);
begin
  FCodAfi := pCodAfi;

  CheckField('CodAfi');
end;

function T070FIL.GetEenFil: string;
begin
  Result := FEenFil;
end;

procedure T070FIL.SetEenFil(const pEenFil: string);
begin
  FEenFil := pEenFil;

  CheckField('EenFil');
end;

function T070FIL.GetEenEnt: string;
begin
  Result := FEenEnt;
end;

procedure T070FIL.SetEenEnt(const pEenEnt: string);
begin
  FEenEnt := pEenEnt;

  CheckField('EenEnt');
end;

function T070FIL.GetEenCob: string;
begin
  Result := FEenCob;
end;

procedure T070FIL.SetEenCob(const pEenCob: string);
begin
  FEenCob := pEenCob;

  CheckField('EenCob');
end;

function T070FIL.GetBaiEnt: string;
begin
  Result := FBaiEnt;
end;

procedure T070FIL.SetBaiEnt(const pBaiEnt: string);
begin
  FBaiEnt := pBaiEnt;

  CheckField('BaiEnt');
end;

function T070FIL.GetBaiCob: string;
begin
  Result := FBaiCob;
end;

procedure T070FIL.SetBaiCob(const pBaiCob: string);
begin
  FBaiCob := pBaiCob;

  CheckField('BaiCob');
end;

function T070FIL.GetNenFil: string;
begin
  Result := FNenFil;
end;

procedure T070FIL.SetNenFil(const pNenFil: string);
begin
  FNenFil := pNenFil;

  CheckField('NenFil');
end;

function T070FIL.GetFilMat: Char;
begin
  Result := FFilMat;
end;

procedure T070FIL.SetFilMat(const pFilMat: Char);
begin
  FFilMat := pFilMat;

  CheckField('FilMat');
end;

function T070FIL.GetAgeAnp: Integer;
begin
  Result := FAgeAnp;
end;

procedure T070FIL.SetAgeAnp(const pAgeAnp: Integer);
begin
  FAgeAnp := pAgeAnp;

  CheckField('AgeAnp');
end;

function T070FIL.GetInsAnp: Integer;
begin
  Result := FInsAnp;
end;

procedure T070FIL.SetInsAnp(const pInsAnp: Integer);
begin
  FInsAnp := pInsAnp;

  CheckField('InsAnp');
end;

function T070FIL.GetUSU_GerOPA: Char;
begin
  Result := FUSU_GerOPA;
end;

procedure T070FIL.SetUSU_GerOPA(const pUSU_GerOPA: Char);
begin
  FUSU_GerOPA := pUSU_GerOPA;

  CheckField('USU_GerOPA');
end;

function T070FIL.GetUSU_MaiPcp: string;
begin
  Result := FUSU_MaiPcp;
end;

procedure T070FIL.SetUSU_MaiPcp(const pUSU_MaiPcp: string);
begin
  FUSU_MaiPcp := pUSU_MaiPcp;

  CheckField('USU_MaiPcp');
end;

function T070FIL.GetUSU_MailNfe: string;
begin
  Result := FUSU_MailNfe;
end;

procedure T070FIL.SetUSU_MailNfe(const pUSU_MailNfe: string);
begin
  FUSU_MailNfe := pUSU_MailNfe;

  CheckField('USU_MailNfe');
end;

function T070FIL.GetUSU_EmaAnl: string;
begin
  Result := FUSU_EmaAnl;
end;

procedure T070FIL.SetUSU_EmaAnl(const pUSU_EmaAnl: string);
begin
  FUSU_EmaAnl := pUSU_EmaAnl;

  CheckField('USU_EmaAnl');
end;

function T070FIL.GetUSU_CodTpr: string;
begin
  Result := FUSU_CodTpr;
end;

procedure T070FIL.SetUSU_CodTpr(const pUSU_CodTpr: string);
begin
  FUSU_CodTpr := pUSU_CodTpr;

  CheckField('USU_CodTpr');
end;

function T070FIL.GetUSU_DatPolDsc: TDate;
begin
  Result := FUSU_DatPolDsc;
end;

procedure T070FIL.SetUSU_DatPolDsc(const pUSU_DatPolDsc: TDate);
begin
  FUSU_DatPolDsc := pUSU_DatPolDsc;

  CheckField('USU_DatPolDsc');
end;

function T070FIL.GetUSU_TxaInd: Double;
begin
  Result := FUSU_TxaInd;
end;

procedure T070FIL.SetUSU_TxaInd(const pUSU_TxaInd: Double);
begin
  FUSU_TxaInd := pUSU_TxaInd;

  CheckField('USU_TxaInd');
end;

function T070FIL.GetUSU_DivMdi: Integer;
begin
  Result := FUSU_DivMdi;
end;

procedure T070FIL.SetUSU_DivMdi(const pUSU_DivMdi: Integer);
begin
  FUSU_DivMdi := pUSU_DivMdi;

  CheckField('USU_DivMdi');
end;

function T070FIL.GetUSU_IniAdt: TDate;
begin
  Result := FUSU_IniAdt;
end;

procedure T070FIL.SetUSU_IniAdt(const pUSU_IniAdt: TDate);
begin
  FUSU_IniAdt := pUSU_IniAdt;

  CheckField('USU_IniAdt');
end;

function T070FIL.GetUSU_FinAdt: TDate;
begin
  Result := FUSU_FinAdt;
end;

procedure T070FIL.SetUSU_FinAdt(const pUSU_FinAdt: TDate);
begin
  FUSU_FinAdt := pUSU_FinAdt;

  CheckField('USU_FinAdt');
end;

function T070FIL.GetUSU_LocIDW: string;
begin
  Result := FUSU_LocIDW;
end;

procedure T070FIL.SetUSU_LocIDW(const pUSU_LocIDW: string);
begin
  FUSU_LocIDW := pUSU_LocIDW;

  CheckField('USU_LocIDW');
end;

function T070FIL.GetUSU_LocIPT: string;
begin
  Result := FUSU_LocIPT;
end;

procedure T070FIL.SetUSU_LocIPT(const pUSU_LocIPT: string);
begin
  FUSU_LocIPT := pUSU_LocIPT;

  CheckField('USU_LocIPT');
end;

function T070FIL.GetUSU_LocIAM: string;
begin
  Result := FUSU_LocIAM;
end;

procedure T070FIL.SetUSU_LocIAM(const pUSU_LocIAM: string);
begin
  FUSU_LocIAM := pUSU_LocIAM;

  CheckField('USU_LocIAM');
end;

function T070FIL.GetUSU_LocSTP: string;
begin
  Result := FUSU_LocSTP;
end;

procedure T070FIL.SetUSU_LocSTP(const pUSU_LocSTP: string);
begin
  FUSU_LocSTP := pUSU_LocSTP;

  CheckField('USU_LocSTP');
end;

function T070FIL.GetCodEmpOLD: Integer;
begin
  Result := FCodEmpOLD;
end;

procedure T070FIL.SetCodEmpOLD(const pCodEmp: Integer);
begin
  FCodEmpOLD := pCodEmp;
end;

function T070FIL.GetCodFilOLD: Integer;
begin
  Result := FCodFilOLD;
end;

procedure T070FIL.SetCodFilOLD(const pCodFil: Integer);
begin
  FCodFilOLD := pCodFil;
end;

function T070FIL.GetNomFilOLD: string;
begin
  Result := FNomFilOLD;
end;

procedure T070FIL.SetNomFilOLD(const pNomFil: string);
begin
  FNomFilOLD := pNomFil;
end;

function T070FIL.GetSigFilOLD: string;
begin
  Result := FSigFilOLD;
end;

procedure T070FIL.SetSigFilOLD(const pSigFil: string);
begin
  FSigFilOLD := pSigFil;
end;

function T070FIL.GetInsEstOLD: string;
begin
  Result := FInsEstOLD;
end;

procedure T070FIL.SetInsEstOLD(const pInsEst: string);
begin
  FInsEstOLD := pInsEst;
end;

function T070FIL.GetInsMunOLD: string;
begin
  Result := FInsMunOLD;
end;

procedure T070FIL.SetInsMunOLD(const pInsMun: string);
begin
  FInsMunOLD := pInsMun;
end;

function T070FIL.GetNumCgcOLD: Double;
begin
  Result := FNumCgcOLD;
end;

procedure T070FIL.SetNumCgcOLD(const pNumCgc: Double);
begin
  FNumCgcOLD := pNumCgc;
end;

function T070FIL.GetEndFilOLD: string;
begin
  Result := FEndFilOLD;
end;

procedure T070FIL.SetEndFilOLD(const pEndFil: string);
begin
  FEndFilOLD := pEndFil;
end;

function T070FIL.GetCplEndOLD: string;
begin
  Result := FCplEndOLD;
end;

procedure T070FIL.SetCplEndOLD(const pCplEnd: string);
begin
  FCplEndOLD := pCplEnd;
end;

function T070FIL.GetCepFilOLD: Integer;
begin
  Result := FCepFilOLD;
end;

procedure T070FIL.SetCepFilOLD(const pCepFil: Integer);
begin
  FCepFilOLD := pCepFil;
end;

function T070FIL.GetCepIniOLD: Integer;
begin
  Result := FCepIniOLD;
end;

procedure T070FIL.SetCepIniOLD(const pCepIni: Integer);
begin
  FCepIniOLD := pCepIni;
end;

function T070FIL.GetCodRaiOLD: Integer;
begin
  Result := FCodRaiOLD;
end;

procedure T070FIL.SetCodRaiOLD(const pCodRai: Integer);
begin
  FCodRaiOLD := pCodRai;
end;

function T070FIL.GetBaiFilOLD: string;
begin
  Result := FBaiFilOLD;
end;

procedure T070FIL.SetBaiFilOLD(const pBaiFil: string);
begin
  FBaiFilOLD := pBaiFil;
end;

function T070FIL.GetCidFilOLD: string;
begin
  Result := FCidFilOLD;
end;

procedure T070FIL.SetCidFilOLD(const pCidFil: string);
begin
  FCidFilOLD := pCidFil;
end;

function T070FIL.GetSigUfsOLD: string;
begin
  Result := FSigUfsOLD;
end;

procedure T070FIL.SetSigUfsOLD(const pSigUfs: string);
begin
  FSigUfsOLD := pSigUfs;
end;

function T070FIL.GetEndEntOLD: string;
begin
  Result := FEndEntOLD;
end;

procedure T070FIL.SetEndEntOLD(const pEndEnt: string);
begin
  FEndEntOLD := pEndEnt;
end;

function T070FIL.GetCplEntOLD: string;
begin
  Result := FCplEntOLD;
end;

procedure T070FIL.SetCplEntOLD(const pCplEnt: string);
begin
  FCplEntOLD := pCplEnt;
end;

function T070FIL.GetCepEntOLD: Integer;
begin
  Result := FCepEntOLD;
end;

procedure T070FIL.SetCepEntOLD(const pCepEnt: Integer);
begin
  FCepEntOLD := pCepEnt;
end;

function T070FIL.GetCidEntOLD: string;
begin
  Result := FCidEntOLD;
end;

procedure T070FIL.SetCidEntOLD(const pCidEnt: string);
begin
  FCidEntOLD := pCidEnt;
end;

function T070FIL.GetEstEntOLD: string;
begin
  Result := FEstEntOLD;
end;

procedure T070FIL.SetEstEntOLD(const pEstEnt: string);
begin
  FEstEntOLD := pEstEnt;
end;

function T070FIL.GetEndCobOLD: string;
begin
  Result := FEndCobOLD;
end;

procedure T070FIL.SetEndCobOLD(const pEndCob: string);
begin
  FEndCobOLD := pEndCob;
end;

function T070FIL.GetCplCobOLD: string;
begin
  Result := FCplCobOLD;
end;

procedure T070FIL.SetCplCobOLD(const pCplCob: string);
begin
  FCplCobOLD := pCplCob;
end;

function T070FIL.GetCepCobOLD: Integer;
begin
  Result := FCepCobOLD;
end;

procedure T070FIL.SetCepCobOLD(const pCepCob: Integer);
begin
  FCepCobOLD := pCepCob;
end;

function T070FIL.GetCidCobOLD: string;
begin
  Result := FCidCobOLD;
end;

procedure T070FIL.SetCidCobOLD(const pCidCob: string);
begin
  FCidCobOLD := pCidCob;
end;

function T070FIL.GetEstCobOLD: string;
begin
  Result := FEstCobOLD;
end;

procedure T070FIL.SetEstCobOLD(const pEstCob: string);
begin
  FEstCobOLD := pEstCob;
end;

function T070FIL.GetNumFonOLD: string;
begin
  Result := FNumFonOLD;
end;

procedure T070FIL.SetNumFonOLD(const pNumFon: string);
begin
  FNumFonOLD := pNumFon;
end;

function T070FIL.GetNumFaxOLD: string;
begin
  Result := FNumFaxOLD;
end;

procedure T070FIL.SetNumFaxOLD(const pNumFax: string);
begin
  FNumFaxOLD := pNumFax;
end;

function T070FIL.GetCxaPstOLD: Integer;
begin
  Result := FCxaPstOLD;
end;

procedure T070FIL.SetCxaPstOLD(const pCxaPst: Integer);
begin
  FCxaPstOLD := pCxaPst;
end;

function T070FIL.GetIntNetOLD: string;
begin
  Result := FIntNetOLD;
end;

procedure T070FIL.SetIntNetOLD(const pIntNet: string);
begin
  FIntNetOLD := pIntNet;
end;

function T070FIL.GetTipEmpOLD: Integer;
begin
  Result := FTipEmpOLD;
end;

procedure T070FIL.SetTipEmpOLD(const pTipEmp: Integer);
begin
  FTipEmpOLD := pTipEmp;
end;

function T070FIL.GetFilCliOLD: Integer;
begin
  Result := FFilCliOLD;
end;

procedure T070FIL.SetFilCliOLD(const pFilCli: Integer);
begin
  FFilCliOLD := pFilCli;
end;

function T070FIL.GetFilForOLD: Integer;
begin
  Result := FFilForOLD;
end;

procedure T070FIL.SetFilForOLD(const pFilFor: Integer);
begin
  FFilForOLD := pFilFor;
end;

function T070FIL.GetPedIniOLD: Integer;
begin
  Result := FPedIniOLD;
end;

procedure T070FIL.SetPedIniOLD(const pPedIni: Integer);
begin
  FPedIniOLD := pPedIni;
end;

function T070FIL.GetZonFraOLD: Integer;
begin
  Result := FZonFraOLD;
end;

procedure T070FIL.SetZonFraOLD(const pZonFra: Integer);
begin
  FZonFraOLD := pZonFra;
end;

function T070FIL.GetCodSufOLD: string;
begin
  Result := FCodSufOLD;
end;

procedure T070FIL.SetCodSufOLD(const pCodSuf: string);
begin
  FCodSufOLD := pCodSuf;
end;

function T070FIL.GetDifAliOLD: Char;
begin
  Result := FDifAliOLD;
end;

procedure T070FIL.SetDifAliOLD(const pDifAli: Char);
begin
  FDifAliOLD := pDifAli;
end;

function T070FIL.GetCriFedOLD: Integer;
begin
  Result := FCriFedOLD;
end;

procedure T070FIL.SetCriFedOLD(const pCriFed: Integer);
begin
  FCriFedOLD := pCriFed;
end;

function T070FIL.GetQtdDlbOLD: Integer;
begin
  Result := FQtdDlbOLD;
end;

procedure T070FIL.SetQtdDlbOLD(const pQtdDlb: Integer);
begin
  FQtdDlbOLD := pQtdDlb;
end;

function T070FIL.GetVenPdiOLD: TDate;
begin
  Result := FVenPdiOLD;
end;

procedure T070FIL.SetVenPdiOLD(const pVenPdi: TDate);
begin
  FVenPdiOLD := pVenPdi;
end;

function T070FIL.GetVenPdfOLD: TDate;
begin
  Result := FVenPdfOLD;
end;

procedure T070FIL.SetVenPdfOLD(const pVenPdf: TDate);
begin
  FVenPdfOLD := pVenPdf;
end;

function T070FIL.GetVenCaeOLD: Integer;
begin
  Result := FVenCaeOLD;
end;

procedure T070FIL.SetVenCaeOLD(const pVenCae: Integer);
begin
  FVenCaeOLD := pVenCae;
end;

function T070FIL.GetVenQdfOLD: Integer;
begin
  Result := FVenQdfOLD;
end;

procedure T070FIL.SetVenQdfOLD(const pVenQdf: Integer);
begin
  FVenQdfOLD := pVenQdf;
end;

function T070FIL.GetVenTccOLD: string;
begin
  Result := FVenTccOLD;
end;

procedure T070FIL.SetVenTccOLD(const pVenTcc: string);
begin
  FVenTccOLD := pVenTcc;
end;

function T070FIL.GetVenTppOLD: string;
begin
  Result := FVenTppOLD;
end;

procedure T070FIL.SetVenTppOLD(const pVenTpp: string);
begin
  FVenTppOLD := pVenTpp;
end;

function T070FIL.GetVenTpsOLD: string;
begin
  Result := FVenTpsOLD;
end;

procedure T070FIL.SetVenTpsOLD(const pVenTps: string);
begin
  FVenTpsOLD := pVenTps;
end;

function T070FIL.GetVenDsuOLD: Double;
begin
  Result := FVenDsuOLD;
end;

procedure T070FIL.SetVenDsuOLD(const pVenDsu: Double);
begin
  FVenDsuOLD := pVenDsu;
end;

function T070FIL.GetVenVmpOLD: Double;
begin
  Result := FVenVmpOLD;
end;

procedure T070FIL.SetVenVmpOLD(const pVenVmp: Double);
begin
  FVenVmpOLD := pVenVmp;
end;

function T070FIL.GetVenLepOLD: Integer;
begin
  Result := FVenLepOLD;
end;

procedure T070FIL.SetVenLepOLD(const pVenLep: Integer);
begin
  FVenLepOLD := pVenLep;
end;

function T070FIL.GetVenTcvOLD: string;
begin
  Result := FVenTcvOLD;
end;

procedure T070FIL.SetVenTcvOLD(const pVenTcv: string);
begin
  FVenTcvOLD := pVenTcv;
end;

function T070FIL.GetVenCepOLD: Char;
begin
  Result := FVenCepOLD;
end;

procedure T070FIL.SetVenCepOLD(const pVenCep: Char);
begin
  FVenCepOLD := pVenCep;
end;

function T070FIL.GetVenPvpOLD: Char;
begin
  Result := FVenPvpOLD;
end;

procedure T070FIL.SetVenPvpOLD(const pVenPvp: Char);
begin
  FVenPvpOLD := pVenPvp;
end;

function T070FIL.GetVenNpaOLD: Char;
begin
  Result := FVenNpaOLD;
end;

procedure T070FIL.SetVenNpaOLD(const pVenNpa: Char);
begin
  FVenNpaOLD := pVenNpa;
end;

function T070FIL.GetVenCfiOLD: Char;
begin
  Result := FVenCfiOLD;
end;

procedure T070FIL.SetVenCfiOLD(const pVenCfi: Char);
begin
  FVenCfiOLD := pVenCfi;
end;

function T070FIL.GetVenNtrOLD: Char;
begin
  Result := FVenNtrOLD;
end;

procedure T070FIL.SetVenNtrOLD(const pVenNtr: Char);
begin
  FVenNtrOLD := pVenNtr;
end;

function T070FIL.GetVenSnrOLD: string;
begin
  Result := FVenSnrOLD;
end;

procedure T070FIL.SetVenSnrOLD(const pVenSnr: string);
begin
  FVenSnrOLD := pVenSnr;
end;

function T070FIL.GetVenQipOLD: Integer;
begin
  Result := FVenQipOLD;
end;

procedure T070FIL.SetVenQipOLD(const pVenQip: Integer);
begin
  FVenQipOLD := pVenQip;
end;

function T070FIL.GetVenSnpOLD: string;
begin
  Result := FVenSnpOLD;
end;

procedure T070FIL.SetVenSnpOLD(const pVenSnp: string);
begin
  FVenSnpOLD := pVenSnp;
end;

function T070FIL.GetVenQdpOLD: Integer;
begin
  Result := FVenQdpOLD;
end;

procedure T070FIL.SetVenQdpOLD(const pVenQdp: Integer);
begin
  FVenQdpOLD := pVenQdp;
end;

function T070FIL.GetVenRpdOLD: Integer;
begin
  Result := FVenRpdOLD;
end;

procedure T070FIL.SetVenRpdOLD(const pVenRpd: Integer);
begin
  FVenRpdOLD := pVenRpd;
end;

function T070FIL.GetVenCccOLD: Char;
begin
  Result := FVenCccOLD;
end;

procedure T070FIL.SetVenCccOLD(const pVenCcc: Char);
begin
  FVenCccOLD := pVenCcc;
end;

function T070FIL.GetVenCcrOLD: Char;
begin
  Result := FVenCcrOLD;
end;

procedure T070FIL.SetVenCcrOLD(const pVenCcr: Char);
begin
  FVenCcrOLD := pVenCcr;
end;

function T070FIL.GetVenCrrOLD: Char;
begin
  Result := FVenCrrOLD;
end;

procedure T070FIL.SetVenCrrOLD(const pVenCrr: Char);
begin
  FVenCrrOLD := pVenCrr;
end;

function T070FIL.GetVenPseOLD: Char;
begin
  Result := FVenPseOLD;
end;

procedure T070FIL.SetVenPseOLD(const pVenPse: Char);
begin
  FVenPseOLD := pVenPse;
end;

function T070FIL.GetVenPamOLD: Integer;
begin
  Result := FVenPamOLD;
end;

procedure T070FIL.SetVenPamOLD(const pVenPam: Integer);
begin
  FVenPamOLD := pVenPam;
end;

function T070FIL.GetVenPmaOLD: Integer;
begin
  Result := FVenPmaOLD;
end;

procedure T070FIL.SetVenPmaOLD(const pVenPma: Integer);
begin
  FVenPmaOLD := pVenPma;
end;

function T070FIL.GetVenPpcOLD: Integer;
begin
  Result := FVenPpcOLD;
end;

procedure T070FIL.SetVenPpcOLD(const pVenPpc: Integer);
begin
  FVenPpcOLD := pVenPpc;
end;

function T070FIL.GetVenPtaOLD: Integer;
begin
  Result := FVenPtaOLD;
end;

procedure T070FIL.SetVenPtaOLD(const pVenPta: Integer);
begin
  FVenPtaOLD := pVenPta;
end;

function T070FIL.GetVenPdtOLD: Integer;
begin
  Result := FVenPdtOLD;
end;

procedure T070FIL.SetVenPdtOLD(const pVenPdt: Integer);
begin
  FVenPdtOLD := pVenPdt;
end;

function T070FIL.GetVenPcsOLD: Integer;
begin
  Result := FVenPcsOLD;
end;

procedure T070FIL.SetVenPcsOLD(const pVenPcs: Integer);
begin
  FVenPcsOLD := pVenPcs;
end;

function T070FIL.GetVenPlcOLD: Char;
begin
  Result := FVenPlcOLD;
end;

procedure T070FIL.SetVenPlcOLD(const pVenPlc: Char);
begin
  FVenPlcOLD := pVenPlc;
end;

function T070FIL.GetVenFamOLD: Integer;
begin
  Result := FVenFamOLD;
end;

procedure T070FIL.SetVenFamOLD(const pVenFam: Integer);
begin
  FVenFamOLD := pVenFam;
end;

function T070FIL.GetVenFmaOLD: Integer;
begin
  Result := FVenFmaOLD;
end;

procedure T070FIL.SetVenFmaOLD(const pVenFma: Integer);
begin
  FVenFmaOLD := pVenFma;
end;

function T070FIL.GetVenFpcOLD: Integer;
begin
  Result := FVenFpcOLD;
end;

procedure T070FIL.SetVenFpcOLD(const pVenFpc: Integer);
begin
  FVenFpcOLD := pVenFpc;
end;

function T070FIL.GetVenFtaOLD: Integer;
begin
  Result := FVenFtaOLD;
end;

procedure T070FIL.SetVenFtaOLD(const pVenFta: Integer);
begin
  FVenFtaOLD := pVenFta;
end;

function T070FIL.GetVenFdtOLD: Integer;
begin
  Result := FVenFdtOLD;
end;

procedure T070FIL.SetVenFdtOLD(const pVenFdt: Integer);
begin
  FVenFdtOLD := pVenFdt;
end;

function T070FIL.GetVenFcsOLD: Integer;
begin
  Result := FVenFcsOLD;
end;

procedure T070FIL.SetVenFcsOLD(const pVenFcs: Integer);
begin
  FVenFcsOLD := pVenFcs;
end;

function T070FIL.GetVenFlcOLD: Char;
begin
  Result := FVenFlcOLD;
end;

procedure T070FIL.SetVenFlcOLD(const pVenFlc: Char);
begin
  FVenFlcOLD := pVenFlc;
end;

function T070FIL.GetVenIssOLD: Double;
begin
  Result := FVenIssOLD;
end;

procedure T070FIL.SetVenIssOLD(const pVenIss: Double);
begin
  FVenIssOLD := pVenIss;
end;

function T070FIL.GetVenIpdOLD: Integer;
begin
  Result := FVenIpdOLD;
end;

procedure T070FIL.SetVenIpdOLD(const pVenIpd: Integer);
begin
  FVenIpdOLD := pVenIpd;
end;

function T070FIL.GetVenApcOLD: Integer;
begin
  Result := FVenApcOLD;
end;

procedure T070FIL.SetVenApcOLD(const pVenApc: Integer);
begin
  FVenApcOLD := pVenApc;
end;

function T070FIL.GetVenLvpOLD: Double;
begin
  Result := FVenLvpOLD;
end;

procedure T070FIL.SetVenLvpOLD(const pVenLvp: Double);
begin
  FVenLvpOLD := pVenLvp;
end;

function T070FIL.GetEstPdiOLD: TDate;
begin
  Result := FEstPdiOLD;
end;

procedure T070FIL.SetEstPdiOLD(const pEstPdi: TDate);
begin
  FEstPdiOLD := pEstPdi;
end;

function T070FIL.GetEstPdfOLD: TDate;
begin
  Result := FEstPdfOLD;
end;

procedure T070FIL.SetEstPdfOLD(const pEstPdf: TDate);
begin
  FEstPdfOLD := pEstPdf;
end;

function T070FIL.GetEstPaiOLD: TDate;
begin
  Result := FEstPaiOLD;
end;

procedure T070FIL.SetEstPaiOLD(const pEstPai: TDate);
begin
  FEstPaiOLD := pEstPai;
end;

function T070FIL.GetEstPafOLD: TDate;
begin
  Result := FEstPafOLD;
end;

procedure T070FIL.SetEstPafOLD(const pEstPaf: TDate);
begin
  FEstPafOLD := pEstPaf;
end;

function T070FIL.GetEstTeiOLD: string;
begin
  Result := FEstTeiOLD;
end;

procedure T070FIL.SetEstTeiOLD(const pEstTei: string);
begin
  FEstTeiOLD := pEstTei;
end;

function T070FIL.GetEstTsiOLD: string;
begin
  Result := FEstTsiOLD;
end;

procedure T070FIL.SetEstTsiOLD(const pEstTsi: string);
begin
  FEstTsiOLD := pEstTsi;
end;

function T070FIL.GetEstTprOLD: string;
begin
  Result := FEstTprOLD;
end;

procedure T070FIL.SetEstTprOLD(const pEstTpr: string);
begin
  FEstTprOLD := pEstTpr;
end;

function T070FIL.GetEstUnmOLD: Char;
begin
  Result := FEstUnmOLD;
end;

procedure T070FIL.SetEstUnmOLD(const pEstUnm: Char);
begin
  FEstUnmOLD := pEstUnm;
end;

function T070FIL.GetEstDpfOLD: Char;
begin
  Result := FEstDpfOLD;
end;

procedure T070FIL.SetEstDpfOLD(const pEstDpf: Char);
begin
  FEstDpfOLD := pEstDpf;
end;

function T070FIL.GetRecPdiOLD: TDate;
begin
  Result := FRecPdiOLD;
end;

procedure T070FIL.SetRecPdiOLD(const pRecPdi: TDate);
begin
  FRecPdiOLD := pRecPdi;
end;

function T070FIL.GetRecPdfOLD: TDate;
begin
  Result := FRecPdfOLD;
end;

procedure T070FIL.SetRecPdfOLD(const pRecPdf: TDate);
begin
  FRecPdfOLD := pRecPdf;
end;

function T070FIL.GetRecPorOLD: string;
begin
  Result := FRecPorOLD;
end;

procedure T070FIL.SetRecPorOLD(const pRecPor: string);
begin
  FRecPorOLD := pRecPor;
end;

function T070FIL.GetRecCrtOLD: string;
begin
  Result := FRecCrtOLD;
end;

procedure T070FIL.SetRecCrtOLD(const pRecCrt: string);
begin
  FRecCrtOLD := pRecCrt;
end;

function T070FIL.GetRecOcrOLD: string;
begin
  Result := FRecOcrOLD;
end;

procedure T070FIL.SetRecOcrOLD(const pRecOcr: string);
begin
  FRecOcrOLD := pRecOcr;
end;

function T070FIL.GetRecInsOLD: string;
begin
  Result := FRecInsOLD;
end;

procedure T070FIL.SetRecInsOLD(const pRecIns: string);
begin
  FRecInsOLD := pRecIns;
end;

function T070FIL.GetRecVmtOLD: Double;
begin
  Result := FRecVmtOLD;
end;

procedure T070FIL.SetRecVmtOLD(const pRecVmt: Double);
begin
  FRecVmtOLD := pRecVmt;
end;

function T070FIL.GetRecDprOLD: Integer;
begin
  Result := FRecDprOLD;
end;

procedure T070FIL.SetRecDprOLD(const pRecDpr: Integer);
begin
  FRecDprOLD := pRecDpr;
end;

function T070FIL.GetRecMoeOLD: string;
begin
  Result := FRecMoeOLD;
end;

procedure T070FIL.SetRecMoeOLD(const pRecMoe: string);
begin
  FRecMoeOLD := pRecMoe;
end;

function T070FIL.GetRecJmmOLD: Double;
begin
  Result := FRecJmmOLD;
end;

procedure T070FIL.SetRecJmmOLD(const pRecJmm: Double);
begin
  FRecJmmOLD := pRecJmm;
end;

function T070FIL.GetRecTjrOLD: Char;
begin
  Result := FRecTjrOLD;
end;

procedure T070FIL.SetRecTjrOLD(const pRecTjr: Char);
begin
  FRecTjrOLD := pRecTjr;
end;

function T070FIL.GetRecDtjOLD: Integer;
begin
  Result := FRecDtjOLD;
end;

procedure T070FIL.SetRecDtjOLD(const pRecDtj: Integer);
begin
  FRecDtjOLD := pRecDtj;
end;

function T070FIL.GetRecMulOLD: Double;
begin
  Result := FRecMulOLD;
end;

procedure T070FIL.SetRecMulOLD(const pRecMul: Double);
begin
  FRecMulOLD := pRecMul;
end;

function T070FIL.GetRecDtmOLD: Integer;
begin
  Result := FRecDtmOLD;
end;

procedure T070FIL.SetRecDtmOLD(const pRecDtm: Integer);
begin
  FRecDtmOLD := pRecDtm;
end;

function T070FIL.GetRecVjmOLD: Double;
begin
  Result := FRecVjmOLD;
end;

procedure T070FIL.SetRecVjmOLD(const pRecVjm: Double);
begin
  FRecVjmOLD := pRecVjm;
end;

function T070FIL.GetRecVdmOLD: Double;
begin
  Result := FRecVdmOLD;
end;

procedure T070FIL.SetRecVdmOLD(const pRecVdm: Double);
begin
  FRecVdmOLD := pRecVdm;
end;

function T070FIL.GetRecVmmOLD: Double;
begin
  Result := FRecVmmOLD;
end;

procedure T070FIL.SetRecVmmOLD(const pRecVmm: Double);
begin
  FRecVmmOLD := pRecVmm;
end;

function T070FIL.GetRecAvsOLD: Char;
begin
  Result := FRecAvsOLD;
end;

procedure T070FIL.SetRecAvsOLD(const pRecAvs: Char);
begin
  FRecAvsOLD := pRecAvs;
end;

function T070FIL.GetRecAdcOLD: Char;
begin
  Result := FRecAdcOLD;
end;

procedure T070FIL.SetRecAdcOLD(const pRecAdc: Char);
begin
  FRecAdcOLD := pRecAdc;
end;

function T070FIL.GetRecAocOLD: Char;
begin
  Result := FRecAocOLD;
end;

procedure T070FIL.SetRecAocOLD(const pRecAoc: Char);
begin
  FRecAocOLD := pRecAoc;
end;

function T070FIL.GetRecPcjOLD: Char;
begin
  Result := FRecPcjOLD;
end;

procedure T070FIL.SetRecPcjOLD(const pRecPcj: Char);
begin
  FRecPcjOLD := pRecPcj;
end;

function T070FIL.GetRecPcmOLD: Char;
begin
  Result := FRecPcmOLD;
end;

procedure T070FIL.SetRecPcmOLD(const pRecPcm: Char);
begin
  FRecPcmOLD := pRecPcm;
end;

function T070FIL.GetRecPceOLD: Char;
begin
  Result := FRecPceOLD;
end;

procedure T070FIL.SetRecPceOLD(const pRecPce: Char);
begin
  FRecPceOLD := pRecPce;
end;

function T070FIL.GetRecPccOLD: Char;
begin
  Result := FRecPccOLD;
end;

procedure T070FIL.SetRecPccOLD(const pRecPcc: Char);
begin
  FRecPccOLD := pRecPcc;
end;

function T070FIL.GetRecPcoOLD: Char;
begin
  Result := FRecPcoOLD;
end;

procedure T070FIL.SetRecPcoOLD(const pRecPco: Char);
begin
  FRecPcoOLD := pRecPco;
end;

function T070FIL.GetRecTpmOLD: string;
begin
  Result := FRecTpmOLD;
end;

procedure T070FIL.SetRecTpmOLD(const pRecTpm: string);
begin
  FRecTpmOLD := pRecTpm;
end;

function T070FIL.GetRecTacOLD: string;
begin
  Result := FRecTacOLD;
end;

procedure T070FIL.SetRecTacOLD(const pRecTac: string);
begin
  FRecTacOLD := pRecTac;
end;

function T070FIL.GetRecTesOLD: string;
begin
  Result := FRecTesOLD;
end;

procedure T070FIL.SetRecTesOLD(const pRecTes: string);
begin
  FRecTesOLD := pRecTes;
end;

function T070FIL.GetRecTbpOLD: string;
begin
  Result := FRecTbpOLD;
end;

procedure T070FIL.SetRecTbpOLD(const pRecTbp: string);
begin
  FRecTbpOLD := pRecTbp;
end;

function T070FIL.GetRecTbaOLD: string;
begin
  Result := FRecTbaOLD;
end;

procedure T070FIL.SetRecTbaOLD(const pRecTba: string);
begin
  FRecTbaOLD := pRecTba;
end;

function T070FIL.GetRecTbsOLD: string;
begin
  Result := FRecTbsOLD;
end;

procedure T070FIL.SetRecTbsOLD(const pRecTbs: string);
begin
  FRecTbsOLD := pRecTbs;
end;

function T070FIL.GetRecTbcOLD: string;
begin
  Result := FRecTbcOLD;
end;

procedure T070FIL.SetRecTbcOLD(const pRecTbc: string);
begin
  FRecTbcOLD := pRecTbc;
end;

function T070FIL.GetRecTpcOLD: string;
begin
  Result := FRecTpcOLD;
end;

procedure T070FIL.SetRecTpcOLD(const pRecTpc: string);
begin
  FRecTpcOLD := pRecTpc;
end;

function T070FIL.GetRecTccOLD: string;
begin
  Result := FRecTccOLD;
end;

procedure T070FIL.SetRecTccOLD(const pRecTcc: string);
begin
  FRecTccOLD := pRecTcc;
end;

function T070FIL.GetCprPdiOLD: TDate;
begin
  Result := FCprPdiOLD;
end;

procedure T070FIL.SetCprPdiOLD(const pCprPdi: TDate);
begin
  FCprPdiOLD := pCprPdi;
end;

function T070FIL.GetCprPdfOLD: TDate;
begin
  Result := FCprPdfOLD;
end;

procedure T070FIL.SetCprPdfOLD(const pCprPdf: TDate);
begin
  FCprPdfOLD := pCprPdf;
end;

function T070FIL.GetCprQmcOLD: Integer;
begin
  Result := FCprQmcOLD;
end;

procedure T070FIL.SetCprQmcOLD(const pCprQmc: Integer);
begin
  FCprQmcOLD := pCprQmc;
end;

function T070FIL.GetCprAvoOLD: Char;
begin
  Result := FCprAvoOLD;
end;

procedure T070FIL.SetCprAvoOLD(const pCprAvo: Char);
begin
  FCprAvoOLD := pCprAvo;
end;

function T070FIL.GetCprDnfOLD: Double;
begin
  Result := FCprDnfOLD;
end;

procedure T070FIL.SetCprDnfOLD(const pCprDnf: Double);
begin
  FCprDnfOLD := pCprDnf;
end;

function T070FIL.GetCprTopOLD: string;
begin
  Result := FCprTopOLD;
end;

procedure T070FIL.SetCprTopOLD(const pCprTop: string);
begin
  FCprTopOLD := pCprTop;
end;

function T070FIL.GetCprTomOLD: string;
begin
  Result := FCprTomOLD;
end;

procedure T070FIL.SetCprTomOLD(const pCprTom: string);
begin
  FCprTomOLD := pCprTom;
end;

function T070FIL.GetCprTosOLD: string;
begin
  Result := FCprTosOLD;
end;

procedure T070FIL.SetCprTosOLD(const pCprTos: string);
begin
  FCprTosOLD := pCprTos;
end;

function T070FIL.GetCprTfpOLD: string;
begin
  Result := FCprTfpOLD;
end;

procedure T070FIL.SetCprTfpOLD(const pCprTfp: string);
begin
  FCprTfpOLD := pCprTfp;
end;

function T070FIL.GetCprTfsOLD: string;
begin
  Result := FCprTfsOLD;
end;

procedure T070FIL.SetCprTfsOLD(const pCprTfs: string);
begin
  FCprTfsOLD := pCprTfs;
end;

function T070FIL.GetCprTeaOLD: string;
begin
  Result := FCprTeaOLD;
end;

procedure T070FIL.SetCprTeaOLD(const pCprTea: string);
begin
  FCprTeaOLD := pCprTea;
end;

function T070FIL.GetCprTsaOLD: string;
begin
  Result := FCprTsaOLD;
end;

procedure T070FIL.SetCprTsaOLD(const pCprTsa: string);
begin
  FCprTsaOLD := pCprTsa;
end;

function T070FIL.GetCprSnpOLD: string;
begin
  Result := FCprSnpOLD;
end;

procedure T070FIL.SetCprSnpOLD(const pCprSnp: string);
begin
  FCprSnpOLD := pCprSnp;
end;

function T070FIL.GetCprCcfOLD: Char;
begin
  Result := FCprCcfOLD;
end;

procedure T070FIL.SetCprCcfOLD(const pCprCcf: Char);
begin
  FCprCcfOLD := pCprCcf;
end;

function T070FIL.GetCprCfrOLD: Char;
begin
  Result := FCprCfrOLD;
end;

procedure T070FIL.SetCprCfrOLD(const pCprCfr: Char);
begin
  FCprCfrOLD := pCprCfr;
end;

function T070FIL.GetCprFssOLD: Integer;
begin
  Result := FCprFssOLD;
end;

procedure T070FIL.SetCprFssOLD(const pCprFss: Integer);
begin
  FCprFssOLD := pCprFss;
end;

function T070FIL.GetPagPdiOLD: TDate;
begin
  Result := FPagPdiOLD;
end;

procedure T070FIL.SetPagPdiOLD(const pPagPdi: TDate);
begin
  FPagPdiOLD := pPagPdi;
end;

function T070FIL.GetPagPdfOLD: TDate;
begin
  Result := FPagPdfOLD;
end;

procedure T070FIL.SetPagPdfOLD(const pPagPdf: TDate);
begin
  FPagPdfOLD := pPagPdf;
end;

function T070FIL.GetPagAprOLD: Char;
begin
  Result := FPagAprOLD;
end;

procedure T070FIL.SetPagAprOLD(const pPagApr: Char);
begin
  FPagAprOLD := pPagApr;
end;

function T070FIL.GetPagDprOLD: Integer;
begin
  Result := FPagDprOLD;
end;

procedure T070FIL.SetPagDprOLD(const pPagDpr: Integer);
begin
  FPagDprOLD := pPagDpr;
end;

function T070FIL.GetPagMoeOLD: string;
begin
  Result := FPagMoeOLD;
end;

procedure T070FIL.SetPagMoeOLD(const pPagMoe: string);
begin
  FPagMoeOLD := pPagMoe;
end;

function T070FIL.GetPagJmmOLD: Double;
begin
  Result := FPagJmmOLD;
end;

procedure T070FIL.SetPagJmmOLD(const pPagJmm: Double);
begin
  FPagJmmOLD := pPagJmm;
end;

function T070FIL.GetPagTjrOLD: Char;
begin
  Result := FPagTjrOLD;
end;

procedure T070FIL.SetPagTjrOLD(const pPagTjr: Char);
begin
  FPagTjrOLD := pPagTjr;
end;

function T070FIL.GetPagDtjOLD: Integer;
begin
  Result := FPagDtjOLD;
end;

procedure T070FIL.SetPagDtjOLD(const pPagDtj: Integer);
begin
  FPagDtjOLD := pPagDtj;
end;

function T070FIL.GetPagMulOLD: Double;
begin
  Result := FPagMulOLD;
end;

procedure T070FIL.SetPagMulOLD(const pPagMul: Double);
begin
  FPagMulOLD := pPagMul;
end;

function T070FIL.GetPagDtmOLD: Integer;
begin
  Result := FPagDtmOLD;
end;

procedure T070FIL.SetPagDtmOLD(const pPagDtm: Integer);
begin
  FPagDtmOLD := pPagDtm;
end;

function T070FIL.GetPagTpmOLD: string;
begin
  Result := FPagTpmOLD;
end;

procedure T070FIL.SetPagTpmOLD(const pPagTpm: string);
begin
  FPagTpmOLD := pPagTpm;
end;

function T070FIL.GetPagTpfOLD: string;
begin
  Result := FPagTpfOLD;
end;

procedure T070FIL.SetPagTpfOLD(const pPagTpf: string);
begin
  FPagTpfOLD := pPagTpf;
end;

function T070FIL.GetPagTafOLD: string;
begin
  Result := FPagTafOLD;
end;

procedure T070FIL.SetPagTafOLD(const pPagTaf: string);
begin
  FPagTafOLD := pPagTaf;
end;

function T070FIL.GetPagTbpOLD: string;
begin
  Result := FPagTbpOLD;
end;

procedure T070FIL.SetPagTbpOLD(const pPagTbp: string);
begin
  FPagTbpOLD := pPagTbp;
end;

function T070FIL.GetPagTbcOLD: string;
begin
  Result := FPagTbcOLD;
end;

procedure T070FIL.SetPagTbcOLD(const pPagTbc: string);
begin
  FPagTbcOLD := pPagTbc;
end;

function T070FIL.GetPagTbsOLD: string;
begin
  Result := FPagTbsOLD;
end;

procedure T070FIL.SetPagTbsOLD(const pPagTbs: string);
begin
  FPagTbsOLD := pPagTbs;
end;

function T070FIL.GetPagTpcOLD: string;
begin
  Result := FPagTpcOLD;
end;

procedure T070FIL.SetPagTpcOLD(const pPagTpc: string);
begin
  FPagTpcOLD := pPagTpc;
end;

function T070FIL.GetPagTccOLD: string;
begin
  Result := FPagTccOLD;
end;

procedure T070FIL.SetPagTccOLD(const pPagTcc: string);
begin
  FPagTccOLD := pPagTcc;
end;

function T070FIL.GetPagVjmOLD: Double;
begin
  Result := FPagVjmOLD;
end;

procedure T070FIL.SetPagVjmOLD(const pPagVjm: Double);
begin
  FPagVjmOLD := pPagVjm;
end;

function T070FIL.GetPagVdmOLD: Double;
begin
  Result := FPagVdmOLD;
end;

procedure T070FIL.SetPagVdmOLD(const pPagVdm: Double);
begin
  FPagVdmOLD := pPagVdm;
end;

function T070FIL.GetPagVmmOLD: Double;
begin
  Result := FPagVmmOLD;
end;

procedure T070FIL.SetPagVmmOLD(const pPagVmm: Double);
begin
  FPagVmmOLD := pPagVmm;
end;

function T070FIL.GetPagTcmOLD: string;
begin
  Result := FPagTcmOLD;
end;

procedure T070FIL.SetPagTcmOLD(const pPagTcm: string);
begin
  FPagTcmOLD := pPagTcm;
end;

function T070FIL.GetPagTdcOLD: string;
begin
  Result := FPagTdcOLD;
end;

procedure T070FIL.SetPagTdcOLD(const pPagTdc: string);
begin
  FPagTdcOLD := pPagTdc;
end;

function T070FIL.GetPagTdiOLD: string;
begin
  Result := FPagTdiOLD;
end;

procedure T070FIL.SetPagTdiOLD(const pPagTdi: string);
begin
  FPagTdiOLD := pPagTdi;
end;

function T070FIL.GetPagLirOLD: Double;
begin
  Result := FPagLirOLD;
end;

procedure T070FIL.SetPagLirOLD(const pPagLir: Double);
begin
  FPagLirOLD := pPagLir;
end;

function T070FIL.GetPagEevOLD: Integer;
begin
  Result := FPagEevOLD;
end;

procedure T070FIL.SetPagEevOLD(const pPagEev: Integer);
begin
  FPagEevOLD := pPagEev;
end;

function T070FIL.GetCxbPdiOLD: TDate;
begin
  Result := FCxbPdiOLD;
end;

procedure T070FIL.SetCxbPdiOLD(const pCxbPdi: TDate);
begin
  FCxbPdiOLD := pCxbPdi;
end;

function T070FIL.GetCxbPdfOLD: TDate;
begin
  Result := FCxbPdfOLD;
end;

procedure T070FIL.SetCxbPdfOLD(const pCxbPdf: TDate);
begin
  FCxbPdfOLD := pCxbPdf;
end;

function T070FIL.GetCxbTcaOLD: string;
begin
  Result := FCxbTcaOLD;
end;

procedure T070FIL.SetCxbTcaOLD(const pCxbTca: string);
begin
  FCxbTcaOLD := pCxbTca;
end;

function T070FIL.GetCxbTdcOLD: string;
begin
  Result := FCxbTdcOLD;
end;

procedure T070FIL.SetCxbTdcOLD(const pCxbTdc: string);
begin
  FCxbTdcOLD := pCxbTdc;
end;

function T070FIL.GetCxbTdeOLD: string;
begin
  Result := FCxbTdeOLD;
end;

procedure T070FIL.SetCxbTdeOLD(const pCxbTde: string);
begin
  FCxbTdeOLD := pCxbTde;
end;

function T070FIL.GetCxbTdtOLD: string;
begin
  Result := FCxbTdtOLD;
end;

procedure T070FIL.SetCxbTdtOLD(const pCxbTdt: string);
begin
  FCxbTdtOLD := pCxbTdt;
end;

function T070FIL.GetCxbDecOLD: Integer;
begin
  Result := FCxbDecOLD;
end;

procedure T070FIL.SetCxbDecOLD(const pCxbDec: Integer);
begin
  FCxbDecOLD := pCxbDec;
end;

function T070FIL.GetCtbExiOLD: TDate;
begin
  Result := FCtbExiOLD;
end;

procedure T070FIL.SetCtbExiOLD(const pCtbExi: TDate);
begin
  FCtbExiOLD := pCtbExi;
end;

function T070FIL.GetCtbExfOLD: TDate;
begin
  Result := FCtbExfOLD;
end;

procedure T070FIL.SetCtbExfOLD(const pCtbExf: TDate);
begin
  FCtbExfOLD := pCtbExf;
end;

function T070FIL.GetCtbPeiOLD: TDate;
begin
  Result := FCtbPeiOLD;
end;

procedure T070FIL.SetCtbPeiOLD(const pCtbPei: TDate);
begin
  FCtbPeiOLD := pCtbPei;
end;

function T070FIL.GetCtbPefOLD: TDate;
begin
  Result := FCtbPefOLD;
end;

procedure T070FIL.SetCtbPefOLD(const pCtbPef: TDate);
begin
  FCtbPefOLD := pCtbPef;
end;

function T070FIL.GetCtbQdlOLD: Integer;
begin
  Result := FCtbQdlOLD;
end;

procedure T070FIL.SetCtbQdlOLD(const pCtbQdl: Integer);
begin
  FCtbQdlOLD := pCtbQdl;
end;

function T070FIL.GetCtbMoeOLD: string;
begin
  Result := FCtbMoeOLD;
end;

procedure T070FIL.SetCtbMoeOLD(const pCtbMoe: string);
begin
  FCtbMoeOLD := pCtbMoe;
end;

function T070FIL.GetCtbLogOLD: Char;
begin
  Result := FCtbLogOLD;
end;

procedure T070FIL.SetCtbLogOLD(const pCtbLog: Char);
begin
  FCtbLogOLD := pCtbLog;
end;

function T070FIL.GetCtbAliOLD: Char;
begin
  Result := FCtbAliOLD;
end;

procedure T070FIL.SetCtbAliOLD(const pCtbAli: Char);
begin
  FCtbAliOLD := pCtbAli;
end;

function T070FIL.GetCtbDiaOLD: TDate;
begin
  Result := FCtbDiaOLD;
end;

procedure T070FIL.SetCtbDiaOLD(const pCtbDia: TDate);
begin
  FCtbDiaOLD := pCtbDia;
end;

function T070FIL.GetCtbObsOLD: string;
begin
  Result := FCtbObsOLD;
end;

procedure T070FIL.SetCtbObsOLD(const pCtbObs: string);
begin
  FCtbObsOLD := pCtbObs;
end;

function T070FIL.GetCtbNrjOLD: string;
begin
  Result := FCtbNrjOLD;
end;

procedure T070FIL.SetCtbNrjOLD(const pCtbNrj: string);
begin
  FCtbNrjOLD := pCtbNrj;
end;

function T070FIL.GetCtbDrjOLD: TDate;
begin
  Result := FCtbDrjOLD;
end;

procedure T070FIL.SetCtbDrjOLD(const pCtbDrj: TDate);
begin
  FCtbDrjOLD := pCtbDrj;
end;

function T070FIL.GetCtbNsrOLD: string;
begin
  Result := FCtbNsrOLD;
end;

procedure T070FIL.SetCtbNsrOLD(const pCtbNsr: string);
begin
  FCtbNsrOLD := pCtbNsr;
end;

function T070FIL.GetCtbFsrOLD: string;
begin
  Result := FCtbFsrOLD;
end;

procedure T070FIL.SetCtbFsrOLD(const pCtbFsr: string);
begin
  FCtbFsrOLD := pCtbFsr;
end;

function T070FIL.GetCtbCsrOLD: Double;
begin
  Result := FCtbCsrOLD;
end;

procedure T070FIL.SetCtbCsrOLD(const pCtbCsr: Double);
begin
  FCtbCsrOLD := pCtbCsr;
end;

function T070FIL.GetCtbNcrOLD: string;
begin
  Result := FCtbNcrOLD;
end;

procedure T070FIL.SetCtbNcrOLD(const pCtbNcr: string);
begin
  FCtbNcrOLD := pCtbNcr;
end;

function T070FIL.GetCtbFcrOLD: Char;
begin
  Result := FCtbFcrOLD;
end;

procedure T070FIL.SetCtbFcrOLD(const pCtbFcr: Char);
begin
  FCtbFcrOLD := pCtbFcr;
end;

function T070FIL.GetCtbCrcOLD: string;
begin
  Result := FCtbCrcOLD;
end;

procedure T070FIL.SetCtbCrcOLD(const pCtbCrc: string);
begin
  FCtbCrcOLD := pCtbCrc;
end;

function T070FIL.GetCtbCcrOLD: Double;
begin
  Result := FCtbCcrOLD;
end;

procedure T070FIL.SetCtbCcrOLD(const pCtbCcr: Double);
begin
  FCtbCcrOLD := pCtbCcr;
end;

function T070FIL.GetCtbCfmOLD: Integer;
begin
  Result := FCtbCfmOLD;
end;

procedure T070FIL.SetCtbCfmOLD(const pCtbCfm: Integer);
begin
  FCtbCfmOLD := pCtbCfm;
end;

function T070FIL.GetCtbCaeOLD: string;
begin
  Result := FCtbCaeOLD;
end;

procedure T070FIL.SetCtbCaeOLD(const pCtbCae: string);
begin
  FCtbCaeOLD := pCtbCae;
end;

function T070FIL.GetCtbCafOLD: Integer;
begin
  Result := FCtbCafOLD;
end;

procedure T070FIL.SetCtbCafOLD(const pCtbCaf: Integer);
begin
  FCtbCafOLD := pCtbCaf;
end;

function T070FIL.GetCtbFecOLD: Char;
begin
  Result := FCtbFecOLD;
end;

procedure T070FIL.SetCtbFecOLD(const pCtbFec: Char);
begin
  FCtbFecOLD := pCtbFec;
end;

function T070FIL.GetCtbSdtOLD: Char;
begin
  Result := FCtbSdtOLD;
end;

procedure T070FIL.SetCtbSdtOLD(const pCtbSdt: Char);
begin
  FCtbSdtOLD := pCtbSdt;
end;

function T070FIL.GetCtbSdeOLD: Char;
begin
  Result := FCtbSdeOLD;
end;

procedure T070FIL.SetCtbSdeOLD(const pCtbSde: Char);
begin
  FCtbSdeOLD := pCtbSde;
end;

function T070FIL.GetCtbScrOLD: Char;
begin
  Result := FCtbScrOLD;
end;

procedure T070FIL.SetCtbScrOLD(const pCtbScr: Char);
begin
  FCtbScrOLD := pCtbScr;
end;

function T070FIL.GetCtbSvlOLD: Char;
begin
  Result := FCtbSvlOLD;
end;

procedure T070FIL.SetCtbSvlOLD(const pCtbSvl: Char);
begin
  FCtbSvlOLD := pCtbSvl;
end;

function T070FIL.GetCtbShpOLD: Char;
begin
  Result := FCtbShpOLD;
end;

procedure T070FIL.SetCtbShpOLD(const pCtbShp: Char);
begin
  FCtbShpOLD := pCtbShp;
end;

function T070FIL.GetCtbHabOLD: Char;
begin
  Result := FCtbHabOLD;
end;

procedure T070FIL.SetCtbHabOLD(const pCtbHab: Char);
begin
  FCtbHabOLD := pCtbHab;
end;

function T070FIL.GetEfiPdiOLD: TDate;
begin
  Result := FEfiPdiOLD;
end;

procedure T070FIL.SetEfiPdiOLD(const pEfiPdi: TDate);
begin
  FEfiPdiOLD := pEfiPdi;
end;

function T070FIL.GetEfiPdfOLD: TDate;
begin
  Result := FEfiPdfOLD;
end;

procedure T070FIL.SetEfiPdfOLD(const pEfiPdf: TDate);
begin
  FEfiPdfOLD := pEfiPdf;
end;

function T070FIL.GetEfiFtrOLD: Char;
begin
  Result := FEfiFtrOLD;
end;

procedure T070FIL.SetEfiFtrOLD(const pEfiFtr: Char);
begin
  FEfiFtrOLD := pEfiFtr;
end;

function T070FIL.GetEfiApiOLD: Double;
begin
  Result := FEfiApiOLD;
end;

procedure T070FIL.SetEfiApiOLD(const pEfiApi: Double);
begin
  FEfiApiOLD := pEfiApi;
end;

function T070FIL.GetEfiStrOLD: Char;
begin
  Result := FEfiStrOLD;
end;

procedure T070FIL.SetEfiStrOLD(const pEfiStr: Char);
begin
  FEfiStrOLD := pEfiStr;
end;

function T070FIL.GetEfiRegOLD: Integer;
begin
  Result := FEfiRegOLD;
end;

procedure T070FIL.SetEfiRegOLD(const pEfiReg: Integer);
begin
  FEfiRegOLD := pEfiReg;
end;

function T070FIL.GetEfiQciOLD: Integer;
begin
  Result := FEfiQciOLD;
end;

procedure T070FIL.SetEfiQciOLD(const pEfiQci: Integer);
begin
  FEfiQciOLD := pEfiQci;
end;

function T070FIL.GetPrdTepOLD: string;
begin
  Result := FPrdTepOLD;
end;

procedure T070FIL.SetPrdTepOLD(const pPrdTep: string);
begin
  FPrdTepOLD := pPrdTep;
end;

function T070FIL.GetPrdTspOLD: string;
begin
  Result := FPrdTspOLD;
end;

procedure T070FIL.SetPrdTspOLD(const pPrdTsp: string);
begin
  FPrdTspOLD := pPrdTsp;
end;

function T070FIL.GetPrdQddOLD: Integer;
begin
  Result := FPrdQddOLD;
end;

procedure T070FIL.SetPrdQddOLD(const pPrdQdd: Integer);
begin
  FPrdQddOLD := pPrdQdd;
end;

function T070FIL.GetPrdTppOLD: string;
begin
  Result := FPrdTppOLD;
end;

procedure T070FIL.SetPrdTppOLD(const pPrdTpp: string);
begin
  FPrdTppOLD := pPrdTpp;
end;

function T070FIL.GetPrdCppOLD: Integer;
begin
  Result := FPrdCppOLD;
end;

procedure T070FIL.SetPrdCppOLD(const pPrdCpp: Integer);
begin
  FPrdCppOLD := pPrdCpp;
end;

function T070FIL.GetPrdRppOLD: Integer;
begin
  Result := FPrdRppOLD;
end;

procedure T070FIL.SetPrdRppOLD(const pPrdRpp: Integer);
begin
  FPrdRppOLD := pPrdRpp;
end;

function T070FIL.GetPrdPppOLD: string;
begin
  Result := FPrdPppOLD;
end;

procedure T070FIL.SetPrdPppOLD(const pPrdPpp: string);
begin
  FPrdPppOLD := pPrdPpp;
end;

function T070FIL.GetPrdTeeOLD: string;
begin
  Result := FPrdTeeOLD;
end;

procedure T070FIL.SetPrdTeeOLD(const pPrdTee: string);
begin
  FPrdTeeOLD := pPrdTee;
end;

function T070FIL.GetPrdTnrOLD: string;
begin
  Result := FPrdTnrOLD;
end;

procedure T070FIL.SetPrdTnrOLD(const pPrdTnr: string);
begin
  FPrdTnrOLD := pPrdTnr;
end;

function T070FIL.GetPrdEfiOLD: Double;
begin
  Result := FPrdEfiOLD;
end;

procedure T070FIL.SetPrdEfiOLD(const pPrdEfi: Double);
begin
  FPrdEfiOLD := pPrdEfi;
end;

function T070FIL.GetPedBloOLD: Char;
begin
  Result := FPedBloOLD;
end;

procedure T070FIL.SetPedBloOLD(const pPedBlo: Char);
begin
  FPedBloOLD := pPedBlo;
end;

function T070FIL.GetComPrzOLD: Char;
begin
  Result := FComPrzOLD;
end;

procedure T070FIL.SetComPrzOLD(const pComPrz: Char);
begin
  FComPrzOLD := pComPrz;
end;

function T070FIL.GetPerComOLD: Double;
begin
  Result := FPerComOLD;
end;

procedure T070FIL.SetPerComOLD(const pPerCom: Double);
begin
  FPerComOLD := pPerCom;
end;

function T070FIL.GetTipSepOLD: string;
begin
  Result := FTipSepOLD;
end;

procedure T070FIL.SetTipSepOLD(const pTipSep: string);
begin
  FTipSepOLD := pTipSep;
end;

function T070FIL.GetIndRoeOLD: Char;
begin
  Result := FIndRoeOLD;
end;

procedure T070FIL.SetIndRoeOLD(const pIndRoe: Char);
begin
  FIndRoeOLD := pIndRoe;
end;

function T070FIL.GetCprIefOLD: Char;
begin
  Result := FCprIefOLD;
end;

procedure T070FIL.SetCprIefOLD(const pCprIef: Char);
begin
  FCprIefOLD := pCprIef;
end;

function T070FIL.GetVenIecOLD: Char;
begin
  Result := FVenIecOLD;
end;

procedure T070FIL.SetVenIecOLD(const pVenIec: Char);
begin
  FVenIecOLD := pVenIec;
end;

function T070FIL.GetRecTiaOLD: Char;
begin
  Result := FRecTiaOLD;
end;

procedure T070FIL.SetRecTiaOLD(const pRecTia: Char);
begin
  FRecTiaOLD := pRecTia;
end;

function T070FIL.GetEstFprOLD: string;
begin
  Result := FEstFprOLD;
end;

procedure T070FIL.SetEstFprOLD(const pEstFpr: string);
begin
  FEstFprOLD := pEstFpr;
end;

function T070FIL.GetIndExpOLD: Integer;
begin
  Result := FIndExpOLD;
end;

procedure T070FIL.SetIndExpOLD(const pIndExp: Integer);
begin
  FIndExpOLD := pIndExp;
end;

function T070FIL.GetDatPalOLD: TDate;
begin
  Result := FDatPalOLD;
end;

procedure T070FIL.SetDatPalOLD(const pDatPal: TDate);
begin
  FDatPalOLD := pDatPal;
end;

function T070FIL.GetHorPalOLD: Integer;
begin
  Result := FHorPalOLD;
end;

procedure T070FIL.SetHorPalOLD(const pHorPal: Integer);
begin
  FHorPalOLD := pHorPal;
end;

function T070FIL.GetCodAfiOLD: Integer;
begin
  Result := FCodAfiOLD;
end;

procedure T070FIL.SetCodAfiOLD(const pCodAfi: Integer);
begin
  FCodAfiOLD := pCodAfi;
end;

function T070FIL.GetEenFilOLD: string;
begin
  Result := FEenFilOLD;
end;

procedure T070FIL.SetEenFilOLD(const pEenFil: string);
begin
  FEenFilOLD := pEenFil;
end;

function T070FIL.GetEenEntOLD: string;
begin
  Result := FEenEntOLD;
end;

procedure T070FIL.SetEenEntOLD(const pEenEnt: string);
begin
  FEenEntOLD := pEenEnt;
end;

function T070FIL.GetEenCobOLD: string;
begin
  Result := FEenCobOLD;
end;

procedure T070FIL.SetEenCobOLD(const pEenCob: string);
begin
  FEenCobOLD := pEenCob;
end;

function T070FIL.GetBaiEntOLD: string;
begin
  Result := FBaiEntOLD;
end;

procedure T070FIL.SetBaiEntOLD(const pBaiEnt: string);
begin
  FBaiEntOLD := pBaiEnt;
end;

function T070FIL.GetBaiCobOLD: string;
begin
  Result := FBaiCobOLD;
end;

procedure T070FIL.SetBaiCobOLD(const pBaiCob: string);
begin
  FBaiCobOLD := pBaiCob;
end;

function T070FIL.GetNenFilOLD: string;
begin
  Result := FNenFilOLD;
end;

procedure T070FIL.SetNenFilOLD(const pNenFil: string);
begin
  FNenFilOLD := pNenFil;
end;

function T070FIL.GetFilMatOLD: Char;
begin
  Result := FFilMatOLD;
end;

procedure T070FIL.SetFilMatOLD(const pFilMat: Char);
begin
  FFilMatOLD := pFilMat;
end;

function T070FIL.GetAgeAnpOLD: Integer;
begin
  Result := FAgeAnpOLD;
end;

procedure T070FIL.SetAgeAnpOLD(const pAgeAnp: Integer);
begin
  FAgeAnpOLD := pAgeAnp;
end;

function T070FIL.GetInsAnpOLD: Integer;
begin
  Result := FInsAnpOLD;
end;

procedure T070FIL.SetInsAnpOLD(const pInsAnp: Integer);
begin
  FInsAnpOLD := pInsAnp;
end;

function T070FIL.GetUSU_GerOPAOLD: Char;
begin
  Result := FUSU_GerOPAOLD;
end;

procedure T070FIL.SetUSU_GerOPAOLD(const pUSU_GerOPA: Char);
begin
  FUSU_GerOPAOLD := pUSU_GerOPA;
end;

function T070FIL.GetUSU_MaiPcpOLD: string;
begin
  Result := FUSU_MaiPcpOLD;
end;

procedure T070FIL.SetUSU_MaiPcpOLD(const pUSU_MaiPcp: string);
begin
  FUSU_MaiPcpOLD := pUSU_MaiPcp;
end;

function T070FIL.GetUSU_MailNfeOLD: string;
begin
  Result := FUSU_MailNfeOLD;
end;

procedure T070FIL.SetUSU_MailNfeOLD(const pUSU_MailNfe: string);
begin
  FUSU_MailNfeOLD := pUSU_MailNfe;
end;

function T070FIL.GetUSU_EmaAnlOLD: string;
begin
  Result := FUSU_EmaAnlOLD;
end;

procedure T070FIL.SetUSU_EmaAnlOLD(const pUSU_EmaAnl: string);
begin
  FUSU_EmaAnlOLD := pUSU_EmaAnl;
end;

function T070FIL.GetUSU_CodTprOLD: string;
begin
  Result := FUSU_CodTprOLD;
end;

procedure T070FIL.SetUSU_CodTprOLD(const pUSU_CodTpr: string);
begin
  FUSU_CodTprOLD := pUSU_CodTpr;
end;

function T070FIL.GetUSU_DatPolDscOLD: TDate;
begin
  Result := FUSU_DatPolDscOLD;
end;

procedure T070FIL.SetUSU_DatPolDscOLD(const pUSU_DatPolDsc: TDate);
begin
  FUSU_DatPolDscOLD := pUSU_DatPolDsc;
end;

function T070FIL.GetUSU_TxaIndOLD: Double;
begin
  Result := FUSU_TxaIndOLD;
end;

procedure T070FIL.SetUSU_TxaIndOLD(const pUSU_TxaInd: Double);
begin
  FUSU_TxaIndOLD := pUSU_TxaInd;
end;

function T070FIL.GetUSU_DivMdiOLD: Integer;
begin
  Result := FUSU_DivMdiOLD;
end;

procedure T070FIL.SetUSU_DivMdiOLD(const pUSU_DivMdi: Integer);
begin
  FUSU_DivMdiOLD := pUSU_DivMdi;
end;

function T070FIL.GetUSU_IniAdtOLD: TDate;
begin
  Result := FUSU_IniAdtOLD;
end;

procedure T070FIL.SetUSU_IniAdtOLD(const pUSU_IniAdt: TDate);
begin
  FUSU_IniAdtOLD := pUSU_IniAdt;
end;

function T070FIL.GetUSU_FinAdtOLD: TDate;
begin
  Result := FUSU_FinAdtOLD;
end;

procedure T070FIL.SetUSU_FinAdtOLD(const pUSU_FinAdt: TDate);
begin
  FUSU_FinAdtOLD := pUSU_FinAdt;
end;

function T070FIL.GetUSU_LocIDWOLD: string;
begin
  Result := FUSU_LocIDWOLD;
end;

procedure T070FIL.SetUSU_LocIDWOLD(const pUSU_LocIDW: string);
begin
  FUSU_LocIDWOLD := pUSU_LocIDW;
end;

function T070FIL.GetUSU_LocIPTOLD: string;
begin
  Result := FUSU_LocIPTOLD;
end;

procedure T070FIL.SetUSU_LocIPTOLD(const pUSU_LocIPT: string);
begin
  FUSU_LocIPTOLD := pUSU_LocIPT;
end;

function T070FIL.GetUSU_LocIAMOLD: string;
begin
  Result := FUSU_LocIAMOLD;
end;

procedure T070FIL.SetUSU_LocIAMOLD(const pUSU_LocIAM: string);
begin
  FUSU_LocIAMOLD := pUSU_LocIAM;
end;

function T070FIL.GetUSU_LocSTPOLD: string;
begin
  Result := FUSU_LocSTPOLD;
end;

procedure T070FIL.SetUSU_LocSTPOLD(const pUSU_LocSTP: string);
begin
  FUSU_LocSTPOLD := pUSU_LocSTP;
end;

procedure T070FIL.Registros_OLD();
begin
  FCodEmpOLD := FCodEmp;
  FCodFilOLD := FCodFil;
  FNomFilOLD := FNomFil;
  FSigFilOLD := FSigFil;
  FInsEstOLD := FInsEst;
  FInsMunOLD := FInsMun;
  FNumCgcOLD := FNumCgc;
  FEndFilOLD := FEndFil;
  FCplEndOLD := FCplEnd;
  FCepFilOLD := FCepFil;
  FCepIniOLD := FCepIni;
  FCodRaiOLD := FCodRai;
  FBaiFilOLD := FBaiFil;
  FCidFilOLD := FCidFil;
  FSigUfsOLD := FSigUfs;
  FEndEntOLD := FEndEnt;
  FCplEntOLD := FCplEnt;
  FCepEntOLD := FCepEnt;
  FCidEntOLD := FCidEnt;
  FEstEntOLD := FEstEnt;
  FEndCobOLD := FEndCob;
  FCplCobOLD := FCplCob;
  FCepCobOLD := FCepCob;
  FCidCobOLD := FCidCob;
  FEstCobOLD := FEstCob;
  FNumFonOLD := FNumFon;
  FNumFaxOLD := FNumFax;
  FCxaPstOLD := FCxaPst;
  FIntNetOLD := FIntNet;
  FTipEmpOLD := FTipEmp;
  FFilCliOLD := FFilCli;
  FFilForOLD := FFilFor;
  FPedIniOLD := FPedIni;
  FZonFraOLD := FZonFra;
  FCodSufOLD := FCodSuf;
  FDifAliOLD := FDifAli;
  FCriFedOLD := FCriFed;
  FQtdDlbOLD := FQtdDlb;
  FVenPdiOLD := FVenPdi;
  FVenPdfOLD := FVenPdf;
  FVenCaeOLD := FVenCae;
  FVenQdfOLD := FVenQdf;
  FVenTccOLD := FVenTcc;
  FVenTppOLD := FVenTpp;
  FVenTpsOLD := FVenTps;
  FVenDsuOLD := FVenDsu;
  FVenVmpOLD := FVenVmp;
  FVenLepOLD := FVenLep;
  FVenTcvOLD := FVenTcv;
  FVenCepOLD := FVenCep;
  FVenPvpOLD := FVenPvp;
  FVenNpaOLD := FVenNpa;
  FVenCfiOLD := FVenCfi;
  FVenNtrOLD := FVenNtr;
  FVenSnrOLD := FVenSnr;
  FVenQipOLD := FVenQip;
  FVenSnpOLD := FVenSnp;
  FVenQdpOLD := FVenQdp;
  FVenRpdOLD := FVenRpd;
  FVenCccOLD := FVenCcc;
  FVenCcrOLD := FVenCcr;
  FVenCrrOLD := FVenCrr;
  FVenPseOLD := FVenPse;
  FVenPamOLD := FVenPam;
  FVenPmaOLD := FVenPma;
  FVenPpcOLD := FVenPpc;
  FVenPtaOLD := FVenPta;
  FVenPdtOLD := FVenPdt;
  FVenPcsOLD := FVenPcs;
  FVenPlcOLD := FVenPlc;
  FVenFamOLD := FVenFam;
  FVenFmaOLD := FVenFma;
  FVenFpcOLD := FVenFpc;
  FVenFtaOLD := FVenFta;
  FVenFdtOLD := FVenFdt;
  FVenFcsOLD := FVenFcs;
  FVenFlcOLD := FVenFlc;
  FVenIssOLD := FVenIss;
  FVenIpdOLD := FVenIpd;
  FVenApcOLD := FVenApc;
  FVenLvpOLD := FVenLvp;
  FEstPdiOLD := FEstPdi;
  FEstPdfOLD := FEstPdf;
  FEstPaiOLD := FEstPai;
  FEstPafOLD := FEstPaf;
  FEstTeiOLD := FEstTei;
  FEstTsiOLD := FEstTsi;
  FEstTprOLD := FEstTpr;
  FEstUnmOLD := FEstUnm;
  FEstDpfOLD := FEstDpf;
  FRecPdiOLD := FRecPdi;
  FRecPdfOLD := FRecPdf;
  FRecPorOLD := FRecPor;
  FRecCrtOLD := FRecCrt;
  FRecOcrOLD := FRecOcr;
  FRecInsOLD := FRecIns;
  FRecVmtOLD := FRecVmt;
  FRecDprOLD := FRecDpr;
  FRecMoeOLD := FRecMoe;
  FRecJmmOLD := FRecJmm;
  FRecTjrOLD := FRecTjr;
  FRecDtjOLD := FRecDtj;
  FRecMulOLD := FRecMul;
  FRecDtmOLD := FRecDtm;
  FRecVjmOLD := FRecVjm;
  FRecVdmOLD := FRecVdm;
  FRecVmmOLD := FRecVmm;
  FRecAvsOLD := FRecAvs;
  FRecAdcOLD := FRecAdc;
  FRecAocOLD := FRecAoc;
  FRecPcjOLD := FRecPcj;
  FRecPcmOLD := FRecPcm;
  FRecPceOLD := FRecPce;
  FRecPccOLD := FRecPcc;
  FRecPcoOLD := FRecPco;
  FRecTpmOLD := FRecTpm;
  FRecTacOLD := FRecTac;
  FRecTesOLD := FRecTes;
  FRecTbpOLD := FRecTbp;
  FRecTbaOLD := FRecTba;
  FRecTbsOLD := FRecTbs;
  FRecTbcOLD := FRecTbc;
  FRecTpcOLD := FRecTpc;
  FRecTccOLD := FRecTcc;
  FCprPdiOLD := FCprPdi;
  FCprPdfOLD := FCprPdf;
  FCprQmcOLD := FCprQmc;
  FCprAvoOLD := FCprAvo;
  FCprDnfOLD := FCprDnf;
  FCprTopOLD := FCprTop;
  FCprTomOLD := FCprTom;
  FCprTosOLD := FCprTos;
  FCprTfpOLD := FCprTfp;
  FCprTfsOLD := FCprTfs;
  FCprTeaOLD := FCprTea;
  FCprTsaOLD := FCprTsa;
  FCprSnpOLD := FCprSnp;
  FCprCcfOLD := FCprCcf;
  FCprCfrOLD := FCprCfr;
  FCprFssOLD := FCprFss;
  FPagPdiOLD := FPagPdi;
  FPagPdfOLD := FPagPdf;
  FPagAprOLD := FPagApr;
  FPagDprOLD := FPagDpr;
  FPagMoeOLD := FPagMoe;
  FPagJmmOLD := FPagJmm;
  FPagTjrOLD := FPagTjr;
  FPagDtjOLD := FPagDtj;
  FPagMulOLD := FPagMul;
  FPagDtmOLD := FPagDtm;
  FPagTpmOLD := FPagTpm;
  FPagTpfOLD := FPagTpf;
  FPagTafOLD := FPagTaf;
  FPagTbpOLD := FPagTbp;
  FPagTbcOLD := FPagTbc;
  FPagTbsOLD := FPagTbs;
  FPagTpcOLD := FPagTpc;
  FPagTccOLD := FPagTcc;
  FPagVjmOLD := FPagVjm;
  FPagVdmOLD := FPagVdm;
  FPagVmmOLD := FPagVmm;
  FPagTcmOLD := FPagTcm;
  FPagTdcOLD := FPagTdc;
  FPagTdiOLD := FPagTdi;
  FPagLirOLD := FPagLir;
  FPagEevOLD := FPagEev;
  FCxbPdiOLD := FCxbPdi;
  FCxbPdfOLD := FCxbPdf;
  FCxbTcaOLD := FCxbTca;
  FCxbTdcOLD := FCxbTdc;
  FCxbTdeOLD := FCxbTde;
  FCxbTdtOLD := FCxbTdt;
  FCxbDecOLD := FCxbDec;
  FCtbExiOLD := FCtbExi;
  FCtbExfOLD := FCtbExf;
  FCtbPeiOLD := FCtbPei;
  FCtbPefOLD := FCtbPef;
  FCtbQdlOLD := FCtbQdl;
  FCtbMoeOLD := FCtbMoe;
  FCtbLogOLD := FCtbLog;
  FCtbAliOLD := FCtbAli;
  FCtbDiaOLD := FCtbDia;
  FCtbObsOLD := FCtbObs;
  FCtbNrjOLD := FCtbNrj;
  FCtbDrjOLD := FCtbDrj;
  FCtbNsrOLD := FCtbNsr;
  FCtbFsrOLD := FCtbFsr;
  FCtbCsrOLD := FCtbCsr;
  FCtbNcrOLD := FCtbNcr;
  FCtbFcrOLD := FCtbFcr;
  FCtbCrcOLD := FCtbCrc;
  FCtbCcrOLD := FCtbCcr;
  FCtbCfmOLD := FCtbCfm;
  FCtbCaeOLD := FCtbCae;
  FCtbCafOLD := FCtbCaf;
  FCtbFecOLD := FCtbFec;
  FCtbSdtOLD := FCtbSdt;
  FCtbSdeOLD := FCtbSde;
  FCtbScrOLD := FCtbScr;
  FCtbSvlOLD := FCtbSvl;
  FCtbShpOLD := FCtbShp;
  FCtbHabOLD := FCtbHab;
  FEfiPdiOLD := FEfiPdi;
  FEfiPdfOLD := FEfiPdf;
  FEfiFtrOLD := FEfiFtr;
  FEfiApiOLD := FEfiApi;
  FEfiStrOLD := FEfiStr;
  FEfiRegOLD := FEfiReg;
  FEfiQciOLD := FEfiQci;
  FPrdTepOLD := FPrdTep;
  FPrdTspOLD := FPrdTsp;
  FPrdQddOLD := FPrdQdd;
  FPrdTppOLD := FPrdTpp;
  FPrdCppOLD := FPrdCpp;
  FPrdRppOLD := FPrdRpp;
  FPrdPppOLD := FPrdPpp;
  FPrdTeeOLD := FPrdTee;
  FPrdTnrOLD := FPrdTnr;
  FPrdEfiOLD := FPrdEfi;
  FPedBloOLD := FPedBlo;
  FComPrzOLD := FComPrz;
  FPerComOLD := FPerCom;
  FTipSepOLD := FTipSep;
  FIndRoeOLD := FIndRoe;
  FCprIefOLD := FCprIef;
  FVenIecOLD := FVenIec;
  FRecTiaOLD := FRecTia;
  FEstFprOLD := FEstFpr;
  FIndExpOLD := FIndExp;
  FDatPalOLD := FDatPal;
  FHorPalOLD := FHorPal;
  FCodAfiOLD := FCodAfi;
  FEenFilOLD := FEenFil;
  FEenEntOLD := FEenEnt;
  FEenCobOLD := FEenCob;
  FBaiEntOLD := FBaiEnt;
  FBaiCobOLD := FBaiCob;
  FNenFilOLD := FNenFil;
  FFilMatOLD := FFilMat;
  FAgeAnpOLD := FAgeAnp;
  FInsAnpOLD := FInsAnp;
  FUSU_GerOPAOLD := FUSU_GerOPA;
  FUSU_MaiPcpOLD := FUSU_MaiPcp;
  FUSU_MailNfeOLD := FUSU_MailNfe;
  FUSU_EmaAnlOLD := FUSU_EmaAnl;
  FUSU_CodTprOLD := FUSU_CodTpr;
  FUSU_DatPolDscOLD := FUSU_DatPolDsc;
  FUSU_TxaIndOLD := FUSU_TxaInd;
  FUSU_DivMdiOLD := FUSU_DivMdi;
  FUSU_IniAdtOLD := FUSU_IniAdt;
  FUSU_FinAdtOLD := FUSU_FinAdt;
  FUSU_LocIDWOLD := FUSU_LocIDW;
  FUSU_LocIPTOLD := FUSU_LocIPT;
  FUSU_LocIAMOLD := FUSU_LocIAM;
  FUSU_LocSTPOLD := FUSU_LocSTP;

  inherited;
end;

procedure T070FIL.RetornarValores();
begin
  FCodEmp := FCodEmpOLD;
  FCodFil := FCodFilOLD;
  FNomFil := FNomFilOLD;
  FSigFil := FSigFilOLD;
  FInsEst := FInsEstOLD;
  FInsMun := FInsMunOLD;
  FNumCgc := FNumCgcOLD;
  FEndFil := FEndFilOLD;
  FCplEnd := FCplEndOLD;
  FCepFil := FCepFilOLD;
  FCepIni := FCepIniOLD;
  FCodRai := FCodRaiOLD;
  FBaiFil := FBaiFilOLD;
  FCidFil := FCidFilOLD;
  FSigUfs := FSigUfsOLD;
  FEndEnt := FEndEntOLD;
  FCplEnt := FCplEntOLD;
  FCepEnt := FCepEntOLD;
  FCidEnt := FCidEntOLD;
  FEstEnt := FEstEntOLD;
  FEndCob := FEndCobOLD;
  FCplCob := FCplCobOLD;
  FCepCob := FCepCobOLD;
  FCidCob := FCidCobOLD;
  FEstCob := FEstCobOLD;
  FNumFon := FNumFonOLD;
  FNumFax := FNumFaxOLD;
  FCxaPst := FCxaPstOLD;
  FIntNet := FIntNetOLD;
  FTipEmp := FTipEmpOLD;
  FFilCli := FFilCliOLD;
  FFilFor := FFilForOLD;
  FPedIni := FPedIniOLD;
  FZonFra := FZonFraOLD;
  FCodSuf := FCodSufOLD;
  FDifAli := FDifAliOLD;
  FCriFed := FCriFedOLD;
  FQtdDlb := FQtdDlbOLD;
  FVenPdi := FVenPdiOLD;
  FVenPdf := FVenPdfOLD;
  FVenCae := FVenCaeOLD;
  FVenQdf := FVenQdfOLD;
  FVenTcc := FVenTccOLD;
  FVenTpp := FVenTppOLD;
  FVenTps := FVenTpsOLD;
  FVenDsu := FVenDsuOLD;
  FVenVmp := FVenVmpOLD;
  FVenLep := FVenLepOLD;
  FVenTcv := FVenTcvOLD;
  FVenCep := FVenCepOLD;
  FVenPvp := FVenPvpOLD;
  FVenNpa := FVenNpaOLD;
  FVenCfi := FVenCfiOLD;
  FVenNtr := FVenNtrOLD;
  FVenSnr := FVenSnrOLD;
  FVenQip := FVenQipOLD;
  FVenSnp := FVenSnpOLD;
  FVenQdp := FVenQdpOLD;
  FVenRpd := FVenRpdOLD;
  FVenCcc := FVenCccOLD;
  FVenCcr := FVenCcrOLD;
  FVenCrr := FVenCrrOLD;
  FVenPse := FVenPseOLD;
  FVenPam := FVenPamOLD;
  FVenPma := FVenPmaOLD;
  FVenPpc := FVenPpcOLD;
  FVenPta := FVenPtaOLD;
  FVenPdt := FVenPdtOLD;
  FVenPcs := FVenPcsOLD;
  FVenPlc := FVenPlcOLD;
  FVenFam := FVenFamOLD;
  FVenFma := FVenFmaOLD;
  FVenFpc := FVenFpcOLD;
  FVenFta := FVenFtaOLD;
  FVenFdt := FVenFdtOLD;
  FVenFcs := FVenFcsOLD;
  FVenFlc := FVenFlcOLD;
  FVenIss := FVenIssOLD;
  FVenIpd := FVenIpdOLD;
  FVenApc := FVenApcOLD;
  FVenLvp := FVenLvpOLD;
  FEstPdi := FEstPdiOLD;
  FEstPdf := FEstPdfOLD;
  FEstPai := FEstPaiOLD;
  FEstPaf := FEstPafOLD;
  FEstTei := FEstTeiOLD;
  FEstTsi := FEstTsiOLD;
  FEstTpr := FEstTprOLD;
  FEstUnm := FEstUnmOLD;
  FEstDpf := FEstDpfOLD;
  FRecPdi := FRecPdiOLD;
  FRecPdf := FRecPdfOLD;
  FRecPor := FRecPorOLD;
  FRecCrt := FRecCrtOLD;
  FRecOcr := FRecOcrOLD;
  FRecIns := FRecInsOLD;
  FRecVmt := FRecVmtOLD;
  FRecDpr := FRecDprOLD;
  FRecMoe := FRecMoeOLD;
  FRecJmm := FRecJmmOLD;
  FRecTjr := FRecTjrOLD;
  FRecDtj := FRecDtjOLD;
  FRecMul := FRecMulOLD;
  FRecDtm := FRecDtmOLD;
  FRecVjm := FRecVjmOLD;
  FRecVdm := FRecVdmOLD;
  FRecVmm := FRecVmmOLD;
  FRecAvs := FRecAvsOLD;
  FRecAdc := FRecAdcOLD;
  FRecAoc := FRecAocOLD;
  FRecPcj := FRecPcjOLD;
  FRecPcm := FRecPcmOLD;
  FRecPce := FRecPceOLD;
  FRecPcc := FRecPccOLD;
  FRecPco := FRecPcoOLD;
  FRecTpm := FRecTpmOLD;
  FRecTac := FRecTacOLD;
  FRecTes := FRecTesOLD;
  FRecTbp := FRecTbpOLD;
  FRecTba := FRecTbaOLD;
  FRecTbs := FRecTbsOLD;
  FRecTbc := FRecTbcOLD;
  FRecTpc := FRecTpcOLD;
  FRecTcc := FRecTccOLD;
  FCprPdi := FCprPdiOLD;
  FCprPdf := FCprPdfOLD;
  FCprQmc := FCprQmcOLD;
  FCprAvo := FCprAvoOLD;
  FCprDnf := FCprDnfOLD;
  FCprTop := FCprTopOLD;
  FCprTom := FCprTomOLD;
  FCprTos := FCprTosOLD;
  FCprTfp := FCprTfpOLD;
  FCprTfs := FCprTfsOLD;
  FCprTea := FCprTeaOLD;
  FCprTsa := FCprTsaOLD;
  FCprSnp := FCprSnpOLD;
  FCprCcf := FCprCcfOLD;
  FCprCfr := FCprCfrOLD;
  FCprFss := FCprFssOLD;
  FPagPdi := FPagPdiOLD;
  FPagPdf := FPagPdfOLD;
  FPagApr := FPagAprOLD;
  FPagDpr := FPagDprOLD;
  FPagMoe := FPagMoeOLD;
  FPagJmm := FPagJmmOLD;
  FPagTjr := FPagTjrOLD;
  FPagDtj := FPagDtjOLD;
  FPagMul := FPagMulOLD;
  FPagDtm := FPagDtmOLD;
  FPagTpm := FPagTpmOLD;
  FPagTpf := FPagTpfOLD;
  FPagTaf := FPagTafOLD;
  FPagTbp := FPagTbpOLD;
  FPagTbc := FPagTbcOLD;
  FPagTbs := FPagTbsOLD;
  FPagTpc := FPagTpcOLD;
  FPagTcc := FPagTccOLD;
  FPagVjm := FPagVjmOLD;
  FPagVdm := FPagVdmOLD;
  FPagVmm := FPagVmmOLD;
  FPagTcm := FPagTcmOLD;
  FPagTdc := FPagTdcOLD;
  FPagTdi := FPagTdiOLD;
  FPagLir := FPagLirOLD;
  FPagEev := FPagEevOLD;
  FCxbPdi := FCxbPdiOLD;
  FCxbPdf := FCxbPdfOLD;
  FCxbTca := FCxbTcaOLD;
  FCxbTdc := FCxbTdcOLD;
  FCxbTde := FCxbTdeOLD;
  FCxbTdt := FCxbTdtOLD;
  FCxbDec := FCxbDecOLD;
  FCtbExi := FCtbExiOLD;
  FCtbExf := FCtbExfOLD;
  FCtbPei := FCtbPeiOLD;
  FCtbPef := FCtbPefOLD;
  FCtbQdl := FCtbQdlOLD;
  FCtbMoe := FCtbMoeOLD;
  FCtbLog := FCtbLogOLD;
  FCtbAli := FCtbAliOLD;
  FCtbDia := FCtbDiaOLD;
  FCtbObs := FCtbObsOLD;
  FCtbNrj := FCtbNrjOLD;
  FCtbDrj := FCtbDrjOLD;
  FCtbNsr := FCtbNsrOLD;
  FCtbFsr := FCtbFsrOLD;
  FCtbCsr := FCtbCsrOLD;
  FCtbNcr := FCtbNcrOLD;
  FCtbFcr := FCtbFcrOLD;
  FCtbCrc := FCtbCrcOLD;
  FCtbCcr := FCtbCcrOLD;
  FCtbCfm := FCtbCfmOLD;
  FCtbCae := FCtbCaeOLD;
  FCtbCaf := FCtbCafOLD;
  FCtbFec := FCtbFecOLD;
  FCtbSdt := FCtbSdtOLD;
  FCtbSde := FCtbSdeOLD;
  FCtbScr := FCtbScrOLD;
  FCtbSvl := FCtbSvlOLD;
  FCtbShp := FCtbShpOLD;
  FCtbHab := FCtbHabOLD;
  FEfiPdi := FEfiPdiOLD;
  FEfiPdf := FEfiPdfOLD;
  FEfiFtr := FEfiFtrOLD;
  FEfiApi := FEfiApiOLD;
  FEfiStr := FEfiStrOLD;
  FEfiReg := FEfiRegOLD;
  FEfiQci := FEfiQciOLD;
  FPrdTep := FPrdTepOLD;
  FPrdTsp := FPrdTspOLD;
  FPrdQdd := FPrdQddOLD;
  FPrdTpp := FPrdTppOLD;
  FPrdCpp := FPrdCppOLD;
  FPrdRpp := FPrdRppOLD;
  FPrdPpp := FPrdPppOLD;
  FPrdTee := FPrdTeeOLD;
  FPrdTnr := FPrdTnrOLD;
  FPrdEfi := FPrdEfiOLD;
  FPedBlo := FPedBloOLD;
  FComPrz := FComPrzOLD;
  FPerCom := FPerComOLD;
  FTipSep := FTipSepOLD;
  FIndRoe := FIndRoeOLD;
  FCprIef := FCprIefOLD;
  FVenIec := FVenIecOLD;
  FRecTia := FRecTiaOLD;
  FEstFpr := FEstFprOLD;
  FIndExp := FIndExpOLD;
  FDatPal := FDatPalOLD;
  FHorPal := FHorPalOLD;
  FCodAfi := FCodAfiOLD;
  FEenFil := FEenFilOLD;
  FEenEnt := FEenEntOLD;
  FEenCob := FEenCobOLD;
  FBaiEnt := FBaiEntOLD;
  FBaiCob := FBaiCobOLD;
  FNenFil := FNenFilOLD;
  FFilMat := FFilMatOLD;
  FAgeAnp := FAgeAnpOLD;
  FInsAnp := FInsAnpOLD;
  FUSU_GerOPA := FUSU_GerOPAOLD;
  FUSU_MaiPcp := FUSU_MaiPcpOLD;
  FUSU_MailNfe := FUSU_MailNfeOLD;
  FUSU_EmaAnl := FUSU_EmaAnlOLD;
  FUSU_CodTpr := FUSU_CodTprOLD;
  FUSU_DatPolDsc := FUSU_DatPolDscOLD;
  FUSU_TxaInd := FUSU_TxaIndOLD;
  FUSU_DivMdi := FUSU_DivMdiOLD;
  FUSU_IniAdt := FUSU_IniAdtOLD;
  FUSU_FinAdt := FUSU_FinAdtOLD;
  FUSU_LocIDW := FUSU_LocIDWOLD;
  FUSU_LocIPT := FUSU_LocIPTOLD;
  FUSU_LocIAM := FUSU_LocIAMOLD;
  FUSU_LocSTP := FUSU_LocSTPOLD;
end;

end.
