unit o120ped;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T120PED = class(TTabelaPadrao)
  private
    FCodEmp: Integer;
    FCodFil: Integer;
    FNumPed: Integer;
    FTipPed: Integer;
    FPrcPed: Integer;
    FTnsPro: string;
    FTnsSer: string;
    FDatEmi: TDate;
    FHorEmi: Integer;
    FDatPrv: TDate;
    FHorPrv: Integer;
    FObsPed: string;
    FCodCli: Integer;
    FCatCli: Integer;
    FQtdVpf: Integer;
    FQtdMfp: Integer;
    FIndAgr: Char;
    FSeqEnt: Integer;
    FSeqCob: Integer;
    FSeqCto: Integer;
    FPedCli: string;
    FCodRoe: string;
    FSeqRoe: Integer;
    FCodRep: Integer;
    FCodMoe: string;
    FCodMcp: string;
    FDatMfp: TDate;
    FCotMfp: Double;
    FDatMoe: TDate;
    FCotMoe: Double;
    FFecMoe: Char;
    FCodFcr: string;
    FDatFcr: TDate;
    FCodCpg: string;
    FPgtAnt: Char;
    FCodFpg: Integer;
    FQtdAbe: Double;
    FQtdAen: Double;
    FCodTra: Integer;
    FCodRed: Integer;
    FCodVia: string;
    FPlaVei: string;
    FVlrFum: Double;
    FQtdFre: Double;
    FForFre: Integer;
    FVlrFre: Double;
    FCifFob: Char;
    FVlrSeg: Double;
    FVlrEmb: Double;
    FVlrEnc: Double;
    FVlrOut: Double;
    FVlrDar: Double;
    FVlrFrd: Double;
    FVlrOud: Double;
    FPerDs1: Double;
    FPerDs2: Double;
    FPerDs3: Double;
    FPerDs4: Double;
    FVlrBpr: Double;
    FVlrDpr: Double;
    FVlrBse: Double;
    FVlrDse: Double;
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
    FVlrBco: Double;
    FVlrCom: Double;
    FVlrLpr: Double;
    FVlrLse: Double;
    FVlrLou: Double;
    FVlrLiq: Double;
    FVlrFin: Double;
    FVlrAdt: Double;
    FQtdOri: Double;
    FVlrOri: Double;
    FTemPar: Char;
    FCodPor: string;
    FCodCrt: string;
    FSitPed: Integer;
    FCodMot: Integer;
    FObsMot: string;
    FPedBlo: Char;
    FUsuBlo: Integer;
    FDatBlo: TDate;
    FHorBlo: Integer;
    FIndSig: Char;
    FVerCal: Integer;
    FHorIni: Integer;
    FHorFim: Integer;
    FUsuGer: Integer;
    FDatGer: TDate;
    FHorGer: Integer;
    FPerFre: Double;
    FPerSeg: Double;
    FPerEmb: Double;
    FPerEnc: Double;
    FPerOut: Double;
    FCodSac: Integer;
    FCodOpe: Integer;
    FCodVen: Integer;
    FPedPal: Integer;
    FAcePar: Char;
    FPerOf1: Double;
    FPerOf2: Double;
    FUsuFec: Integer;
    FDatFec: TDate;
    FHorFec: Integer;
    FCliRel: Integer;
    FVlrBcl: Double;
    FVlrCsl: Double;
    FVlrBpt: Double;
    FVlrPit: Double;
    FVlrBct: Double;
    FVlrCrt: Double;
    FVlrBor: Double;
    FVlrOur: Double;
    FCodMar: string;
    FCodSro: string;
    FFilFat: Integer;
    FCodCdi: Integer;
    FCodLip: string;
    FCepFre: Integer;
    FVlrRis: Double;
    FAnaEmb: Char;
    FNumEmp: string;
    FQtdAne: Integer;
    FDatAge: TDate;
    FFilNco: Integer;
    FSnfNco: string;
    FNumNco: Integer;
    FExpWms: Integer;
    FVlrBpf: Double;
    FVlrPif: Double;
    FVlrBcf: Double;
    FVlrCff: Double;
    FCodApc: Integer;
    FSomFre: Char;
    FQtdItp: Integer;
    FQtdIts: Integer;
    FPerDs5: Double;
    FVlrDs5: Double;
    FRotAnx: Integer;
    FNumAnx: Integer;
    FNumNsu: Integer;
    FDatNsu: TDate;
    FHorNsu: Integer;
    FIndExp: Integer;
    FFatPed: Integer;
    FQtdBpf: Double;
    FQtdBcf: Double;
    FQtdBip: Double;
    FNumCes: Integer;
    FVenCal: Char;
    FDesDef: string;
    FAnoVei: string;
    FNumRen: string;
    FDesMod: string;
    FTipDav: Integer;
    FVlrEcf: Double;
    FPerEcf: Double;
    FTemAva: Char;
    FCodTab: string;
    FSenApr: string;
    FUsuApr: Integer;
    FDatApr: TDate;
    FHorApr: Integer;
    FSitPac: Integer;
    FUsuPac: Integer;
    FQtdPac: Integer;
    FUSU_PedPrg: Char;
    FUSU_DatEnv: TDate;
    FUSU_DatRet: TDate;
    FUSU_RetCli: string;
    FUSU_MotFec: Integer;
    FUSU_QtdSep: Integer;
    FUSU_DivExp: Char;
    FUSU_TemDiv: Char;
    FUSU_SepFin: Char;
    FUSU_RelSepImp: Char;
    FUSU_DatImp: TDate;
    FUSU_HorImp: Integer;
    FUSU_DatRec: TDate;
    FUSU_HorRec: Integer;
    FUSU_FrmRec: Integer;
    FUSU_HorEnv: Integer;
    FUSU_ParGer: string;
    FUSU_TipTrf: Char;
    FUSU_TipVen: Integer;
    FUSU_DesBen: string;
    FUSU_UsuSep: Integer;
    FUSU_DatSep: TDate;
    FUSU_HorSep: Integer;
    FUSU_NumCad: Integer;
    FUSU_CanAut: TDate;
    FUSU_NumOptCRM: Integer;
    FUSU_PedFec: Char;
    FUSU_DatPrv: TDate;
    FUSU_CodTip: string;
    FUSU_TaxCnv: Double;
    FUSU_TnsFat: string;

    FCodEmpOLD: Integer;
    FCodFilOLD: Integer;
    FNumPedOLD: Integer;
    FTipPedOLD: Integer;
    FPrcPedOLD: Integer;
    FTnsProOLD: string;
    FTnsSerOLD: string;
    FDatEmiOLD: TDate;
    FHorEmiOLD: Integer;
    FDatPrvOLD: TDate;
    FHorPrvOLD: Integer;
    FObsPedOLD: string;
    FCodCliOLD: Integer;
    FCatCliOLD: Integer;
    FQtdVpfOLD: Integer;
    FQtdMfpOLD: Integer;
    FIndAgrOLD: Char;
    FSeqEntOLD: Integer;
    FSeqCobOLD: Integer;
    FSeqCtoOLD: Integer;
    FPedCliOLD: string;
    FCodRoeOLD: string;
    FSeqRoeOLD: Integer;
    FCodRepOLD: Integer;
    FCodMoeOLD: string;
    FCodMcpOLD: string;
    FDatMfpOLD: TDate;
    FCotMfpOLD: Double;
    FDatMoeOLD: TDate;
    FCotMoeOLD: Double;
    FFecMoeOLD: Char;
    FCodFcrOLD: string;
    FDatFcrOLD: TDate;
    FCodCpgOLD: string;
    FPgtAntOLD: Char;
    FCodFpgOLD: Integer;
    FQtdAbeOLD: Double;
    FQtdAenOLD: Double;
    FCodTraOLD: Integer;
    FCodRedOLD: Integer;
    FCodViaOLD: string;
    FPlaVeiOLD: string;
    FVlrFumOLD: Double;
    FQtdFreOLD: Double;
    FForFreOLD: Integer;
    FVlrFreOLD: Double;
    FCifFobOLD: Char;
    FVlrSegOLD: Double;
    FVlrEmbOLD: Double;
    FVlrEncOLD: Double;
    FVlrOutOLD: Double;
    FVlrDarOLD: Double;
    FVlrFrdOLD: Double;
    FVlrOudOLD: Double;
    FPerDs1OLD: Double;
    FPerDs2OLD: Double;
    FPerDs3OLD: Double;
    FPerDs4OLD: Double;
    FVlrBprOLD: Double;
    FVlrDprOLD: Double;
    FVlrBseOLD: Double;
    FVlrDseOLD: Double;
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
    FVlrBcoOLD: Double;
    FVlrComOLD: Double;
    FVlrLprOLD: Double;
    FVlrLseOLD: Double;
    FVlrLouOLD: Double;
    FVlrLiqOLD: Double;
    FVlrFinOLD: Double;
    FVlrAdtOLD: Double;
    FQtdOriOLD: Double;
    FVlrOriOLD: Double;
    FTemParOLD: Char;
    FCodPorOLD: string;
    FCodCrtOLD: string;
    FSitPedOLD: Integer;
    FCodMotOLD: Integer;
    FObsMotOLD: string;
    FPedBloOLD: Char;
    FUsuBloOLD: Integer;
    FDatBloOLD: TDate;
    FHorBloOLD: Integer;
    FIndSigOLD: Char;
    FVerCalOLD: Integer;
    FHorIniOLD: Integer;
    FHorFimOLD: Integer;
    FUsuGerOLD: Integer;
    FDatGerOLD: TDate;
    FHorGerOLD: Integer;
    FPerFreOLD: Double;
    FPerSegOLD: Double;
    FPerEmbOLD: Double;
    FPerEncOLD: Double;
    FPerOutOLD: Double;
    FCodSacOLD: Integer;
    FCodOpeOLD: Integer;
    FCodVenOLD: Integer;
    FPedPalOLD: Integer;
    FAceParOLD: Char;
    FPerOf1OLD: Double;
    FPerOf2OLD: Double;
    FUsuFecOLD: Integer;
    FDatFecOLD: TDate;
    FHorFecOLD: Integer;
    FCliRelOLD: Integer;
    FVlrBclOLD: Double;
    FVlrCslOLD: Double;
    FVlrBptOLD: Double;
    FVlrPitOLD: Double;
    FVlrBctOLD: Double;
    FVlrCrtOLD: Double;
    FVlrBorOLD: Double;
    FVlrOurOLD: Double;
    FCodMarOLD: string;
    FCodSroOLD: string;
    FFilFatOLD: Integer;
    FCodCdiOLD: Integer;
    FCodLipOLD: string;
    FCepFreOLD: Integer;
    FVlrRisOLD: Double;
    FAnaEmbOLD: Char;
    FNumEmpOLD: string;
    FQtdAneOLD: Integer;
    FDatAgeOLD: TDate;
    FFilNcoOLD: Integer;
    FSnfNcoOLD: string;
    FNumNcoOLD: Integer;
    FExpWmsOLD: Integer;
    FVlrBpfOLD: Double;
    FVlrPifOLD: Double;
    FVlrBcfOLD: Double;
    FVlrCffOLD: Double;
    FCodApcOLD: Integer;
    FSomFreOLD: Char;
    FQtdItpOLD: Integer;
    FQtdItsOLD: Integer;
    FPerDs5OLD: Double;
    FVlrDs5OLD: Double;
    FRotAnxOLD: Integer;
    FNumAnxOLD: Integer;
    FNumNsuOLD: Integer;
    FDatNsuOLD: TDate;
    FHorNsuOLD: Integer;
    FIndExpOLD: Integer;
    FFatPedOLD: Integer;
    FQtdBpfOLD: Double;
    FQtdBcfOLD: Double;
    FQtdBipOLD: Double;
    FNumCesOLD: Integer;
    FVenCalOLD: Char;
    FDesDefOLD: string;
    FAnoVeiOLD: string;
    FNumRenOLD: string;
    FDesModOLD: string;
    FTipDavOLD: Integer;
    FVlrEcfOLD: Double;
    FPerEcfOLD: Double;
    FTemAvaOLD: Char;
    FCodTabOLD: string;
    FSenAprOLD: string;
    FUsuAprOLD: Integer;
    FDatAprOLD: TDate;
    FHorAprOLD: Integer;
    FSitPacOLD: Integer;
    FUsuPacOLD: Integer;
    FQtdPacOLD: Integer;
    FUSU_PedPrgOLD: Char;
    FUSU_DatEnvOLD: TDate;
    FUSU_DatRetOLD: TDate;
    FUSU_RetCliOLD: string;
    FUSU_MotFecOLD: Integer;
    FUSU_QtdSepOLD: Integer;
    FUSU_DivExpOLD: Char;
    FUSU_TemDivOLD: Char;
    FUSU_SepFinOLD: Char;
    FUSU_RelSepImpOLD: Char;
    FUSU_DatImpOLD: TDate;
    FUSU_HorImpOLD: Integer;
    FUSU_DatRecOLD: TDate;
    FUSU_HorRecOLD: Integer;
    FUSU_FrmRecOLD: Integer;
    FUSU_HorEnvOLD: Integer;
    FUSU_ParGerOLD: string;
    FUSU_TipTrfOLD: Char;
    FUSU_TipVenOLD: Integer;
    FUSU_DesBenOLD: string;
    FUSU_UsuSepOLD: Integer;
    FUSU_DatSepOLD: TDate;
    FUSU_HorSepOLD: Integer;
    FUSU_NumCadOLD: Integer;
    FUSU_CanAutOLD: TDate;
    FUSU_NumOptCRMOLD: Integer;
    FUSU_PedFecOLD: Char;
    FUSU_DatPrvOLD: TDate;
    FUSU_CodTipOLD: string;
    FUSU_TaxCnvOLD: Double;
    FUSU_TnsFatOLD: string;

    function GetCodEmp: Integer;
    procedure SetCodEmp(const pCodEmp: Integer);
    function GetCodFil: Integer;
    procedure SetCodFil(const pCodFil: Integer);
    function GetNumPed: Integer;
    procedure SetNumPed(const pNumPed: Integer);
    function GetTipPed: Integer;
    procedure SetTipPed(const pTipPed: Integer);
    function GetPrcPed: Integer;
    procedure SetPrcPed(const pPrcPed: Integer);
    function GetTnsPro: string;
    procedure SetTnsPro(const pTnsPro: string);
    function GetTnsSer: string;
    procedure SetTnsSer(const pTnsSer: string);
    function GetDatEmi: TDate;
    procedure SetDatEmi(const pDatEmi: TDate);
    function GetHorEmi: Integer;
    procedure SetHorEmi(const pHorEmi: Integer);
    function GetDatPrv: TDate;
    procedure SetDatPrv(const pDatPrv: TDate);
    function GetHorPrv: Integer;
    procedure SetHorPrv(const pHorPrv: Integer);
    function GetObsPed: string;
    procedure SetObsPed(const pObsPed: string);
    function GetCodCli: Integer;
    procedure SetCodCli(const pCodCli: Integer);
    function GetCatCli: Integer;
    procedure SetCatCli(const pCatCli: Integer);
    function GetQtdVpf: Integer;
    procedure SetQtdVpf(const pQtdVpf: Integer);
    function GetQtdMfp: Integer;
    procedure SetQtdMfp(const pQtdMfp: Integer);
    function GetIndAgr: Char;
    procedure SetIndAgr(const pIndAgr: Char);
    function GetSeqEnt: Integer;
    procedure SetSeqEnt(const pSeqEnt: Integer);
    function GetSeqCob: Integer;
    procedure SetSeqCob(const pSeqCob: Integer);
    function GetSeqCto: Integer;
    procedure SetSeqCto(const pSeqCto: Integer);
    function GetPedCli: string;
    procedure SetPedCli(const pPedCli: string);
    function GetCodRoe: string;
    procedure SetCodRoe(const pCodRoe: string);
    function GetSeqRoe: Integer;
    procedure SetSeqRoe(const pSeqRoe: Integer);
    function GetCodRep: Integer;
    procedure SetCodRep(const pCodRep: Integer);
    function GetCodMoe: string;
    procedure SetCodMoe(const pCodMoe: string);
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
    function GetCodFcr: string;
    procedure SetCodFcr(const pCodFcr: string);
    function GetDatFcr: TDate;
    procedure SetDatFcr(const pDatFcr: TDate);
    function GetCodCpg: string;
    procedure SetCodCpg(const pCodCpg: string);
    function GetPgtAnt: Char;
    procedure SetPgtAnt(const pPgtAnt: Char);
    function GetCodFpg: Integer;
    procedure SetCodFpg(const pCodFpg: Integer);
    function GetQtdAbe: Double;
    procedure SetQtdAbe(const pQtdAbe: Double);
    function GetQtdAen: Double;
    procedure SetQtdAen(const pQtdAen: Double);
    function GetCodTra: Integer;
    procedure SetCodTra(const pCodTra: Integer);
    function GetCodRed: Integer;
    procedure SetCodRed(const pCodRed: Integer);
    function GetCodVia: string;
    procedure SetCodVia(const pCodVia: string);
    function GetPlaVei: string;
    procedure SetPlaVei(const pPlaVei: string);
    function GetVlrFum: Double;
    procedure SetVlrFum(const pVlrFum: Double);
    function GetQtdFre: Double;
    procedure SetQtdFre(const pQtdFre: Double);
    function GetForFre: Integer;
    procedure SetForFre(const pForFre: Integer);
    function GetVlrFre: Double;
    procedure SetVlrFre(const pVlrFre: Double);
    function GetCifFob: Char;
    procedure SetCifFob(const pCifFob: Char);
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
    function GetPerDs1: Double;
    procedure SetPerDs1(const pPerDs1: Double);
    function GetPerDs2: Double;
    procedure SetPerDs2(const pPerDs2: Double);
    function GetPerDs3: Double;
    procedure SetPerDs3(const pPerDs3: Double);
    function GetPerDs4: Double;
    procedure SetPerDs4(const pPerDs4: Double);
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
    function GetVlrBco: Double;
    procedure SetVlrBco(const pVlrBco: Double);
    function GetVlrCom: Double;
    procedure SetVlrCom(const pVlrCom: Double);
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
    function GetVlrAdt: Double;
    procedure SetVlrAdt(const pVlrAdt: Double);
    function GetQtdOri: Double;
    procedure SetQtdOri(const pQtdOri: Double);
    function GetVlrOri: Double;
    procedure SetVlrOri(const pVlrOri: Double);
    function GetTemPar: Char;
    procedure SetTemPar(const pTemPar: Char);
    function GetCodPor: string;
    procedure SetCodPor(const pCodPor: string);
    function GetCodCrt: string;
    procedure SetCodCrt(const pCodCrt: string);
    function GetSitPed: Integer;
    procedure SetSitPed(const pSitPed: Integer);
    function GetCodMot: Integer;
    procedure SetCodMot(const pCodMot: Integer);
    function GetObsMot: string;
    procedure SetObsMot(const pObsMot: string);
    function GetPedBlo: Char;
    procedure SetPedBlo(const pPedBlo: Char);
    function GetUsuBlo: Integer;
    procedure SetUsuBlo(const pUsuBlo: Integer);
    function GetDatBlo: TDate;
    procedure SetDatBlo(const pDatBlo: TDate);
    function GetHorBlo: Integer;
    procedure SetHorBlo(const pHorBlo: Integer);
    function GetIndSig: Char;
    procedure SetIndSig(const pIndSig: Char);
    function GetVerCal: Integer;
    procedure SetVerCal(const pVerCal: Integer);
    function GetHorIni: Integer;
    procedure SetHorIni(const pHorIni: Integer);
    function GetHorFim: Integer;
    procedure SetHorFim(const pHorFim: Integer);
    function GetUsuGer: Integer;
    procedure SetUsuGer(const pUsuGer: Integer);
    function GetDatGer: TDate;
    procedure SetDatGer(const pDatGer: TDate);
    function GetHorGer: Integer;
    procedure SetHorGer(const pHorGer: Integer);
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
    function GetCodSac: Integer;
    procedure SetCodSac(const pCodSac: Integer);
    function GetCodOpe: Integer;
    procedure SetCodOpe(const pCodOpe: Integer);
    function GetCodVen: Integer;
    procedure SetCodVen(const pCodVen: Integer);
    function GetPedPal: Integer;
    procedure SetPedPal(const pPedPal: Integer);
    function GetAcePar: Char;
    procedure SetAcePar(const pAcePar: Char);
    function GetPerOf1: Double;
    procedure SetPerOf1(const pPerOf1: Double);
    function GetPerOf2: Double;
    procedure SetPerOf2(const pPerOf2: Double);
    function GetUsuFec: Integer;
    procedure SetUsuFec(const pUsuFec: Integer);
    function GetDatFec: TDate;
    procedure SetDatFec(const pDatFec: TDate);
    function GetHorFec: Integer;
    procedure SetHorFec(const pHorFec: Integer);
    function GetCliRel: Integer;
    procedure SetCliRel(const pCliRel: Integer);
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
    function GetCodMar: string;
    procedure SetCodMar(const pCodMar: string);
    function GetCodSro: string;
    procedure SetCodSro(const pCodSro: string);
    function GetFilFat: Integer;
    procedure SetFilFat(const pFilFat: Integer);
    function GetCodCdi: Integer;
    procedure SetCodCdi(const pCodCdi: Integer);
    function GetCodLip: string;
    procedure SetCodLip(const pCodLip: string);
    function GetCepFre: Integer;
    procedure SetCepFre(const pCepFre: Integer);
    function GetVlrRis: Double;
    procedure SetVlrRis(const pVlrRis: Double);
    function GetAnaEmb: Char;
    procedure SetAnaEmb(const pAnaEmb: Char);
    function GetNumEmp: string;
    procedure SetNumEmp(const pNumEmp: string);
    function GetQtdAne: Integer;
    procedure SetQtdAne(const pQtdAne: Integer);
    function GetDatAge: TDate;
    procedure SetDatAge(const pDatAge: TDate);
    function GetFilNco: Integer;
    procedure SetFilNco(const pFilNco: Integer);
    function GetSnfNco: string;
    procedure SetSnfNco(const pSnfNco: string);
    function GetNumNco: Integer;
    procedure SetNumNco(const pNumNco: Integer);
    function GetExpWms: Integer;
    procedure SetExpWms(const pExpWms: Integer);
    function GetVlrBpf: Double;
    procedure SetVlrBpf(const pVlrBpf: Double);
    function GetVlrPif: Double;
    procedure SetVlrPif(const pVlrPif: Double);
    function GetVlrBcf: Double;
    procedure SetVlrBcf(const pVlrBcf: Double);
    function GetVlrCff: Double;
    procedure SetVlrCff(const pVlrCff: Double);
    function GetCodApc: Integer;
    procedure SetCodApc(const pCodApc: Integer);
    function GetSomFre: Char;
    procedure SetSomFre(const pSomFre: Char);
    function GetQtdItp: Integer;
    procedure SetQtdItp(const pQtdItp: Integer);
    function GetQtdIts: Integer;
    procedure SetQtdIts(const pQtdIts: Integer);
    function GetPerDs5: Double;
    procedure SetPerDs5(const pPerDs5: Double);
    function GetVlrDs5: Double;
    procedure SetVlrDs5(const pVlrDs5: Double);
    function GetRotAnx: Integer;
    procedure SetRotAnx(const pRotAnx: Integer);
    function GetNumAnx: Integer;
    procedure SetNumAnx(const pNumAnx: Integer);
    function GetNumNsu: Integer;
    procedure SetNumNsu(const pNumNsu: Integer);
    function GetDatNsu: TDate;
    procedure SetDatNsu(const pDatNsu: TDate);
    function GetHorNsu: Integer;
    procedure SetHorNsu(const pHorNsu: Integer);
    function GetIndExp: Integer;
    procedure SetIndExp(const pIndExp: Integer);
    function GetFatPed: Integer;
    procedure SetFatPed(const pFatPed: Integer);
    function GetQtdBpf: Double;
    procedure SetQtdBpf(const pQtdBpf: Double);
    function GetQtdBcf: Double;
    procedure SetQtdBcf(const pQtdBcf: Double);
    function GetQtdBip: Double;
    procedure SetQtdBip(const pQtdBip: Double);
    function GetNumCes: Integer;
    procedure SetNumCes(const pNumCes: Integer);
    function GetVenCal: Char;
    procedure SetVenCal(const pVenCal: Char);
    function GetDesDef: string;
    procedure SetDesDef(const pDesDef: string);
    function GetAnoVei: string;
    procedure SetAnoVei(const pAnoVei: string);
    function GetNumRen: string;
    procedure SetNumRen(const pNumRen: string);
    function GetDesMod: string;
    procedure SetDesMod(const pDesMod: string);
    function GetTipDav: Integer;
    procedure SetTipDav(const pTipDav: Integer);
    function GetVlrEcf: Double;
    procedure SetVlrEcf(const pVlrEcf: Double);
    function GetPerEcf: Double;
    procedure SetPerEcf(const pPerEcf: Double);
    function GetTemAva: Char;
    procedure SetTemAva(const pTemAva: Char);
    function GetCodTab: string;
    procedure SetCodTab(const pCodTab: string);
    function GetSenApr: string;
    procedure SetSenApr(const pSenApr: string);
    function GetUsuApr: Integer;
    procedure SetUsuApr(const pUsuApr: Integer);
    function GetDatApr: TDate;
    procedure SetDatApr(const pDatApr: TDate);
    function GetHorApr: Integer;
    procedure SetHorApr(const pHorApr: Integer);
    function GetSitPac: Integer;
    procedure SetSitPac(const pSitPac: Integer);
    function GetUsuPac: Integer;
    procedure SetUsuPac(const pUsuPac: Integer);
    function GetQtdPac: Integer;
    procedure SetQtdPac(const pQtdPac: Integer);
    function GetUSU_PedPrg: Char;
    procedure SetUSU_PedPrg(const pUSU_PedPrg: Char);
    function GetUSU_DatEnv: TDate;
    procedure SetUSU_DatEnv(const pUSU_DatEnv: TDate);
    function GetUSU_DatRet: TDate;
    procedure SetUSU_DatRet(const pUSU_DatRet: TDate);
    function GetUSU_RetCli: string;
    procedure SetUSU_RetCli(const pUSU_RetCli: string);
    function GetUSU_MotFec: Integer;
    procedure SetUSU_MotFec(const pUSU_MotFec: Integer);
    function GetUSU_QtdSep: Integer;
    procedure SetUSU_QtdSep(const pUSU_QtdSep: Integer);
    function GetUSU_DivExp: Char;
    procedure SetUSU_DivExp(const pUSU_DivExp: Char);
    function GetUSU_TemDiv: Char;
    procedure SetUSU_TemDiv(const pUSU_TemDiv: Char);
    function GetUSU_SepFin: Char;
    procedure SetUSU_SepFin(const pUSU_SepFin: Char);
    function GetUSU_RelSepImp: Char;
    procedure SetUSU_RelSepImp(const pUSU_RelSepImp: Char);
    function GetUSU_DatImp: TDate;
    procedure SetUSU_DatImp(const pUSU_DatImp: TDate);
    function GetUSU_HorImp: Integer;
    procedure SetUSU_HorImp(const pUSU_HorImp: Integer);
    function GetUSU_DatRec: TDate;
    procedure SetUSU_DatRec(const pUSU_DatRec: TDate);
    function GetUSU_HorRec: Integer;
    procedure SetUSU_HorRec(const pUSU_HorRec: Integer);
    function GetUSU_FrmRec: Integer;
    procedure SetUSU_FrmRec(const pUSU_FrmRec: Integer);
    function GetUSU_HorEnv: Integer;
    procedure SetUSU_HorEnv(const pUSU_HorEnv: Integer);
    function GetUSU_ParGer: string;
    procedure SetUSU_ParGer(const pUSU_ParGer: string);
    function GetUSU_TipTrf: Char;
    procedure SetUSU_TipTrf(const pUSU_TipTrf: Char);
    function GetUSU_TipVen: Integer;
    procedure SetUSU_TipVen(const pUSU_TipVen: Integer);
    function GetUSU_DesBen: string;
    procedure SetUSU_DesBen(const pUSU_DesBen: string);
    function GetUSU_UsuSep: Integer;
    procedure SetUSU_UsuSep(const pUSU_UsuSep: Integer);
    function GetUSU_DatSep: TDate;
    procedure SetUSU_DatSep(const pUSU_DatSep: TDate);
    function GetUSU_HorSep: Integer;
    procedure SetUSU_HorSep(const pUSU_HorSep: Integer);
    function GetUSU_NumCad: Integer;
    procedure SetUSU_NumCad(const pUSU_NumCad: Integer);
    function GetUSU_CanAut: TDate;
    procedure SetUSU_CanAut(const pUSU_CanAut: TDate);
    function GetUSU_NumOptCRM: Integer;
    procedure SetUSU_NumOptCRM(const pUSU_NumOptCRM: Integer);
    function GetUSU_PedFec: Char;
    procedure SetUSU_PedFec(const pUSU_PedFec: Char);
    function GetUSU_DatPrv: TDate;
    procedure SetUSU_DatPrv(const pUSU_DatPrv: TDate);
    function GetUSU_CodTip: string;
    procedure SetUSU_CodTip(const pUSU_CodTip: string);
    function GetUSU_TaxCnv: Double;
    procedure SetUSU_TaxCnv(const pUSU_TaxCnv: Double);
    function GetUSU_TnsFat: string;
    procedure SetUSU_TnsFat(const pUSU_TnsFat: string);

    function GetCodEmpOld: Integer;
    procedure SetCodEmpOld(const pCodEmp: Integer);
    function GetCodFilOld: Integer;
    procedure SetCodFilOld(const pCodFil: Integer);
    function GetNumPedOld: Integer;
    procedure SetNumPedOld(const pNumPed: Integer);
    function GetTipPedOld: Integer;
    procedure SetTipPedOld(const pTipPed: Integer);
    function GetPrcPedOld: Integer;
    procedure SetPrcPedOld(const pPrcPed: Integer);
    function GetTnsProOld: string;
    procedure SetTnsProOld(const pTnsPro: string);
    function GetTnsSerOld: string;
    procedure SetTnsSerOld(const pTnsSer: string);
    function GetDatEmiOld: TDate;
    procedure SetDatEmiOld(const pDatEmi: TDate);
    function GetHorEmiOld: Integer;
    procedure SetHorEmiOld(const pHorEmi: Integer);
    function GetDatPrvOld: TDate;
    procedure SetDatPrvOld(const pDatPrv: TDate);
    function GetHorPrvOld: Integer;
    procedure SetHorPrvOld(const pHorPrv: Integer);
    function GetObsPedOld: string;
    procedure SetObsPedOld(const pObsPed: string);
    function GetCodCliOld: Integer;
    procedure SetCodCliOld(const pCodCli: Integer);
    function GetCatCliOld: Integer;
    procedure SetCatCliOld(const pCatCli: Integer);
    function GetQtdVpfOld: Integer;
    procedure SetQtdVpfOld(const pQtdVpf: Integer);
    function GetQtdMfpOld: Integer;
    procedure SetQtdMfpOld(const pQtdMfp: Integer);
    function GetIndAgrOld: Char;
    procedure SetIndAgrOld(const pIndAgr: Char);
    function GetSeqEntOld: Integer;
    procedure SetSeqEntOld(const pSeqEnt: Integer);
    function GetSeqCobOld: Integer;
    procedure SetSeqCobOld(const pSeqCob: Integer);
    function GetSeqCtoOld: Integer;
    procedure SetSeqCtoOld(const pSeqCto: Integer);
    function GetPedCliOld: string;
    procedure SetPedCliOld(const pPedCli: string);
    function GetCodRoeOld: string;
    procedure SetCodRoeOld(const pCodRoe: string);
    function GetSeqRoeOld: Integer;
    procedure SetSeqRoeOld(const pSeqRoe: Integer);
    function GetCodRepOld: Integer;
    procedure SetCodRepOld(const pCodRep: Integer);
    function GetCodMoeOld: string;
    procedure SetCodMoeOld(const pCodMoe: string);
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
    function GetCodFcrOld: string;
    procedure SetCodFcrOld(const pCodFcr: string);
    function GetDatFcrOld: TDate;
    procedure SetDatFcrOld(const pDatFcr: TDate);
    function GetCodCpgOld: string;
    procedure SetCodCpgOld(const pCodCpg: string);
    function GetPgtAntOld: Char;
    procedure SetPgtAntOld(const pPgtAnt: Char);
    function GetCodFpgOld: Integer;
    procedure SetCodFpgOld(const pCodFpg: Integer);
    function GetQtdAbeOld: Double;
    procedure SetQtdAbeOld(const pQtdAbe: Double);
    function GetQtdAenOld: Double;
    procedure SetQtdAenOld(const pQtdAen: Double);
    function GetCodTraOld: Integer;
    procedure SetCodTraOld(const pCodTra: Integer);
    function GetCodRedOld: Integer;
    procedure SetCodRedOld(const pCodRed: Integer);
    function GetCodViaOld: string;
    procedure SetCodViaOld(const pCodVia: string);
    function GetPlaVeiOld: string;
    procedure SetPlaVeiOld(const pPlaVei: string);
    function GetVlrFumOld: Double;
    procedure SetVlrFumOld(const pVlrFum: Double);
    function GetQtdFreOld: Double;
    procedure SetQtdFreOld(const pQtdFre: Double);
    function GetForFreOld: Integer;
    procedure SetForFreOld(const pForFre: Integer);
    function GetVlrFreOld: Double;
    procedure SetVlrFreOld(const pVlrFre: Double);
    function GetCifFobOld: Char;
    procedure SetCifFobOld(const pCifFob: Char);
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
    function GetPerDs1Old: Double;
    procedure SetPerDs1Old(const pPerDs1: Double);
    function GetPerDs2Old: Double;
    procedure SetPerDs2Old(const pPerDs2: Double);
    function GetPerDs3Old: Double;
    procedure SetPerDs3Old(const pPerDs3: Double);
    function GetPerDs4Old: Double;
    procedure SetPerDs4Old(const pPerDs4: Double);
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
    function GetVlrBcoOld: Double;
    procedure SetVlrBcoOld(const pVlrBco: Double);
    function GetVlrComOld: Double;
    procedure SetVlrComOld(const pVlrCom: Double);
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
    function GetVlrAdtOld: Double;
    procedure SetVlrAdtOld(const pVlrAdt: Double);
    function GetQtdOriOld: Double;
    procedure SetQtdOriOld(const pQtdOri: Double);
    function GetVlrOriOld: Double;
    procedure SetVlrOriOld(const pVlrOri: Double);
    function GetTemParOld: Char;
    procedure SetTemParOld(const pTemPar: Char);
    function GetCodPorOld: string;
    procedure SetCodPorOld(const pCodPor: string);
    function GetCodCrtOld: string;
    procedure SetCodCrtOld(const pCodCrt: string);
    function GetSitPedOld: Integer;
    procedure SetSitPedOld(const pSitPed: Integer);
    function GetCodMotOld: Integer;
    procedure SetCodMotOld(const pCodMot: Integer);
    function GetObsMotOld: string;
    procedure SetObsMotOld(const pObsMot: string);
    function GetPedBloOld: Char;
    procedure SetPedBloOld(const pPedBlo: Char);
    function GetUsuBloOld: Integer;
    procedure SetUsuBloOld(const pUsuBlo: Integer);
    function GetDatBloOld: TDate;
    procedure SetDatBloOld(const pDatBlo: TDate);
    function GetHorBloOld: Integer;
    procedure SetHorBloOld(const pHorBlo: Integer);
    function GetIndSigOld: Char;
    procedure SetIndSigOld(const pIndSig: Char);
    function GetVerCalOld: Integer;
    procedure SetVerCalOld(const pVerCal: Integer);
    function GetHorIniOld: Integer;
    procedure SetHorIniOld(const pHorIni: Integer);
    function GetHorFimOld: Integer;
    procedure SetHorFimOld(const pHorFim: Integer);
    function GetUsuGerOld: Integer;
    procedure SetUsuGerOld(const pUsuGer: Integer);
    function GetDatGerOld: TDate;
    procedure SetDatGerOld(const pDatGer: TDate);
    function GetHorGerOld: Integer;
    procedure SetHorGerOld(const pHorGer: Integer);
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
    function GetCodSacOld: Integer;
    procedure SetCodSacOld(const pCodSac: Integer);
    function GetCodOpeOld: Integer;
    procedure SetCodOpeOld(const pCodOpe: Integer);
    function GetCodVenOld: Integer;
    procedure SetCodVenOld(const pCodVen: Integer);
    function GetPedPalOld: Integer;
    procedure SetPedPalOld(const pPedPal: Integer);
    function GetAceParOld: Char;
    procedure SetAceParOld(const pAcePar: Char);
    function GetPerOf1Old: Double;
    procedure SetPerOf1Old(const pPerOf1: Double);
    function GetPerOf2Old: Double;
    procedure SetPerOf2Old(const pPerOf2: Double);
    function GetUsuFecOld: Integer;
    procedure SetUsuFecOld(const pUsuFec: Integer);
    function GetDatFecOld: TDate;
    procedure SetDatFecOld(const pDatFec: TDate);
    function GetHorFecOld: Integer;
    procedure SetHorFecOld(const pHorFec: Integer);
    function GetCliRelOld: Integer;
    procedure SetCliRelOld(const pCliRel: Integer);
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
    function GetCodMarOld: string;
    procedure SetCodMarOld(const pCodMar: string);
    function GetCodSroOld: string;
    procedure SetCodSroOld(const pCodSro: string);
    function GetFilFatOld: Integer;
    procedure SetFilFatOld(const pFilFat: Integer);
    function GetCodCdiOld: Integer;
    procedure SetCodCdiOld(const pCodCdi: Integer);
    function GetCodLipOld: string;
    procedure SetCodLipOld(const pCodLip: string);
    function GetCepFreOld: Integer;
    procedure SetCepFreOld(const pCepFre: Integer);
    function GetVlrRisOld: Double;
    procedure SetVlrRisOld(const pVlrRis: Double);
    function GetAnaEmbOld: Char;
    procedure SetAnaEmbOld(const pAnaEmb: Char);
    function GetNumEmpOld: string;
    procedure SetNumEmpOld(const pNumEmp: string);
    function GetQtdAneOld: Integer;
    procedure SetQtdAneOld(const pQtdAne: Integer);
    function GetDatAgeOld: TDate;
    procedure SetDatAgeOld(const pDatAge: TDate);
    function GetFilNcoOld: Integer;
    procedure SetFilNcoOld(const pFilNco: Integer);
    function GetSnfNcoOld: string;
    procedure SetSnfNcoOld(const pSnfNco: string);
    function GetNumNcoOld: Integer;
    procedure SetNumNcoOld(const pNumNco: Integer);
    function GetExpWmsOld: Integer;
    procedure SetExpWmsOld(const pExpWms: Integer);
    function GetVlrBpfOld: Double;
    procedure SetVlrBpfOld(const pVlrBpf: Double);
    function GetVlrPifOld: Double;
    procedure SetVlrPifOld(const pVlrPif: Double);
    function GetVlrBcfOld: Double;
    procedure SetVlrBcfOld(const pVlrBcf: Double);
    function GetVlrCffOld: Double;
    procedure SetVlrCffOld(const pVlrCff: Double);
    function GetCodApcOld: Integer;
    procedure SetCodApcOld(const pCodApc: Integer);
    function GetSomFreOld: Char;
    procedure SetSomFreOld(const pSomFre: Char);
    function GetQtdItpOld: Integer;
    procedure SetQtdItpOld(const pQtdItp: Integer);
    function GetQtdItsOld: Integer;
    procedure SetQtdItsOld(const pQtdIts: Integer);
    function GetPerDs5Old: Double;
    procedure SetPerDs5Old(const pPerDs5: Double);
    function GetVlrDs5Old: Double;
    procedure SetVlrDs5Old(const pVlrDs5: Double);
    function GetRotAnxOld: Integer;
    procedure SetRotAnxOld(const pRotAnx: Integer);
    function GetNumAnxOld: Integer;
    procedure SetNumAnxOld(const pNumAnx: Integer);
    function GetNumNsuOld: Integer;
    procedure SetNumNsuOld(const pNumNsu: Integer);
    function GetDatNsuOld: TDate;
    procedure SetDatNsuOld(const pDatNsu: TDate);
    function GetHorNsuOld: Integer;
    procedure SetHorNsuOld(const pHorNsu: Integer);
    function GetIndExpOld: Integer;
    procedure SetIndExpOld(const pIndExp: Integer);
    function GetFatPedOld: Integer;
    procedure SetFatPedOld(const pFatPed: Integer);
    function GetQtdBpfOld: Double;
    procedure SetQtdBpfOld(const pQtdBpf: Double);
    function GetQtdBcfOld: Double;
    procedure SetQtdBcfOld(const pQtdBcf: Double);
    function GetQtdBipOld: Double;
    procedure SetQtdBipOld(const pQtdBip: Double);
    function GetNumCesOld: Integer;
    procedure SetNumCesOld(const pNumCes: Integer);
    function GetVenCalOld: Char;
    procedure SetVenCalOld(const pVenCal: Char);
    function GetDesDefOld: string;
    procedure SetDesDefOld(const pDesDef: string);
    function GetAnoVeiOld: string;
    procedure SetAnoVeiOld(const pAnoVei: string);
    function GetNumRenOld: string;
    procedure SetNumRenOld(const pNumRen: string);
    function GetDesModOld: string;
    procedure SetDesModOld(const pDesMod: string);
    function GetTipDavOld: Integer;
    procedure SetTipDavOld(const pTipDav: Integer);
    function GetVlrEcfOld: Double;
    procedure SetVlrEcfOld(const pVlrEcf: Double);
    function GetPerEcfOld: Double;
    procedure SetPerEcfOld(const pPerEcf: Double);
    function GetTemAvaOld: Char;
    procedure SetTemAvaOld(const pTemAva: Char);
    function GetCodTabOld: string;
    procedure SetCodTabOld(const pCodTab: string);
    function GetSenAprOld: string;
    procedure SetSenAprOld(const pSenApr: string);
    function GetUsuAprOld: Integer;
    procedure SetUsuAprOld(const pUsuApr: Integer);
    function GetDatAprOld: TDate;
    procedure SetDatAprOld(const pDatApr: TDate);
    function GetHorAprOld: Integer;
    procedure SetHorAprOld(const pHorApr: Integer);
    function GetSitPacOld: Integer;
    procedure SetSitPacOld(const pSitPac: Integer);
    function GetUsuPacOld: Integer;
    procedure SetUsuPacOld(const pUsuPac: Integer);
    function GetQtdPacOld: Integer;
    procedure SetQtdPacOld(const pQtdPac: Integer);
    function GetUSU_PedPrgOld: Char;
    procedure SetUSU_PedPrgOld(const pUSU_PedPrg: Char);
    function GetUSU_DatEnvOld: TDate;
    procedure SetUSU_DatEnvOld(const pUSU_DatEnv: TDate);
    function GetUSU_DatRetOld: TDate;
    procedure SetUSU_DatRetOld(const pUSU_DatRet: TDate);
    function GetUSU_RetCliOld: string;
    procedure SetUSU_RetCliOld(const pUSU_RetCli: string);
    function GetUSU_MotFecOld: Integer;
    procedure SetUSU_MotFecOld(const pUSU_MotFec: Integer);
    function GetUSU_QtdSepOld: Integer;
    procedure SetUSU_QtdSepOld(const pUSU_QtdSep: Integer);
    function GetUSU_DivExpOld: Char;
    procedure SetUSU_DivExpOld(const pUSU_DivExp: Char);
    function GetUSU_TemDivOld: Char;
    procedure SetUSU_TemDivOld(const pUSU_TemDiv: Char);
    function GetUSU_SepFinOld: Char;
    procedure SetUSU_SepFinOld(const pUSU_SepFin: Char);
    function GetUSU_RelSepImpOld: Char;
    procedure SetUSU_RelSepImpOld(const pUSU_RelSepImp: Char);
    function GetUSU_DatImpOld: TDate;
    procedure SetUSU_DatImpOld(const pUSU_DatImp: TDate);
    function GetUSU_HorImpOld: Integer;
    procedure SetUSU_HorImpOld(const pUSU_HorImp: Integer);
    function GetUSU_DatRecOld: TDate;
    procedure SetUSU_DatRecOld(const pUSU_DatRec: TDate);
    function GetUSU_HorRecOld: Integer;
    procedure SetUSU_HorRecOld(const pUSU_HorRec: Integer);
    function GetUSU_FrmRecOld: Integer;
    procedure SetUSU_FrmRecOld(const pUSU_FrmRec: Integer);
    function GetUSU_HorEnvOld: Integer;
    procedure SetUSU_HorEnvOld(const pUSU_HorEnv: Integer);
    function GetUSU_ParGerOld: string;
    procedure SetUSU_ParGerOld(const pUSU_ParGer: string);
    function GetUSU_TipTrfOld: Char;
    procedure SetUSU_TipTrfOld(const pUSU_TipTrf: Char);
    function GetUSU_TipVenOld: Integer;
    procedure SetUSU_TipVenOld(const pUSU_TipVen: Integer);
    function GetUSU_DesBenOld: string;
    procedure SetUSU_DesBenOld(const pUSU_DesBen: string);
    function GetUSU_UsuSepOld: Integer;
    procedure SetUSU_UsuSepOld(const pUSU_UsuSep: Integer);
    function GetUSU_DatSepOld: TDate;
    procedure SetUSU_DatSepOld(const pUSU_DatSep: TDate);
    function GetUSU_HorSepOld: Integer;
    procedure SetUSU_HorSepOld(const pUSU_HorSep: Integer);
    function GetUSU_NumCadOld: Integer;
    procedure SetUSU_NumCadOld(const pUSU_NumCad: Integer);
    function GetUSU_CanAutOld: TDate;
    procedure SetUSU_CanAutOld(const pUSU_CanAut: TDate);
    function GetUSU_NumOptCRMOld: Integer;
    procedure SetUSU_NumOptCRMOld(const pUSU_NumOptCRM: Integer);
    function GetUSU_PedFecOld: Char;
    procedure SetUSU_PedFecOld(const pUSU_PedFec: Char);
    function GetUSU_DatPrvOld: TDate;
    procedure SetUSU_DatPrvOld(const pUSU_DatPrv: TDate);
    function GetUSU_CodTipOld: string;
    procedure SetUSU_CodTipOld(const pUSU_CodTip: string);
    function GetUSU_TaxCnvOld: Double;
    procedure SetUSU_TaxCnvOld(const pUSU_TaxCnv: Double);
    function GetUSU_TnsFatOld: string;
    procedure SetUSU_TnsFatOld(const pUSU_TnsFat: string);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property CodEmp: Integer read GetCodEmp write SetCodEmp;
    property CodFil: Integer read GetCodFil write SetCodFil;
    property NumPed: Integer read GetNumPed write SetNumPed;
    property TipPed: Integer read GetTipPed write SetTipPed;
    property PrcPed: Integer read GetPrcPed write SetPrcPed;
    property TnsPro: string read GetTnsPro write SetTnsPro;
    property TnsSer: string read GetTnsSer write SetTnsSer;
    property DatEmi: TDate read GetDatEmi write SetDatEmi;
    property HorEmi: Integer read GetHorEmi write SetHorEmi;
    property DatPrv: TDate read GetDatPrv write SetDatPrv;
    property HorPrv: Integer read GetHorPrv write SetHorPrv;
    property ObsPed: string read GetObsPed write SetObsPed;
    property CodCli: Integer read GetCodCli write SetCodCli;
    property CatCli: Integer read GetCatCli write SetCatCli;
    property QtdVpf: Integer read GetQtdVpf write SetQtdVpf;
    property QtdMfp: Integer read GetQtdMfp write SetQtdMfp;
    property IndAgr: Char read GetIndAgr write SetIndAgr;
    property SeqEnt: Integer read GetSeqEnt write SetSeqEnt;
    property SeqCob: Integer read GetSeqCob write SetSeqCob;
    property SeqCto: Integer read GetSeqCto write SetSeqCto;
    property PedCli: string read GetPedCli write SetPedCli;
    property CodRoe: string read GetCodRoe write SetCodRoe;
    property SeqRoe: Integer read GetSeqRoe write SetSeqRoe;
    property CodRep: Integer read GetCodRep write SetCodRep;
    property CodMoe: string read GetCodMoe write SetCodMoe;
    property CodMcp: string read GetCodMcp write SetCodMcp;
    property DatMfp: TDate read GetDatMfp write SetDatMfp;
    property CotMfp: Double read GetCotMfp write SetCotMfp;
    property DatMoe: TDate read GetDatMoe write SetDatMoe;
    property CotMoe: Double read GetCotMoe write SetCotMoe;
    property FecMoe: Char read GetFecMoe write SetFecMoe;
    property CodFcr: string read GetCodFcr write SetCodFcr;
    property DatFcr: TDate read GetDatFcr write SetDatFcr;
    property CodCpg: string read GetCodCpg write SetCodCpg;
    property PgtAnt: Char read GetPgtAnt write SetPgtAnt;
    property CodFpg: Integer read GetCodFpg write SetCodFpg;
    property QtdAbe: Double read GetQtdAbe write SetQtdAbe;
    property QtdAen: Double read GetQtdAen write SetQtdAen;
    property CodTra: Integer read GetCodTra write SetCodTra;
    property CodRed: Integer read GetCodRed write SetCodRed;
    property CodVia: string read GetCodVia write SetCodVia;
    property PlaVei: string read GetPlaVei write SetPlaVei;
    property VlrFum: Double read GetVlrFum write SetVlrFum;
    property QtdFre: Double read GetQtdFre write SetQtdFre;
    property ForFre: Integer read GetForFre write SetForFre;
    property VlrFre: Double read GetVlrFre write SetVlrFre;
    property CifFob: Char read GetCifFob write SetCifFob;
    property VlrSeg: Double read GetVlrSeg write SetVlrSeg;
    property VlrEmb: Double read GetVlrEmb write SetVlrEmb;
    property VlrEnc: Double read GetVlrEnc write SetVlrEnc;
    property VlrOut: Double read GetVlrOut write SetVlrOut;
    property VlrDar: Double read GetVlrDar write SetVlrDar;
    property VlrFrd: Double read GetVlrFrd write SetVlrFrd;
    property VlrOud: Double read GetVlrOud write SetVlrOud;
    property PerDs1: Double read GetPerDs1 write SetPerDs1;
    property PerDs2: Double read GetPerDs2 write SetPerDs2;
    property PerDs3: Double read GetPerDs3 write SetPerDs3;
    property PerDs4: Double read GetPerDs4 write SetPerDs4;
    property VlrBpr: Double read GetVlrBpr write SetVlrBpr;
    property VlrDpr: Double read GetVlrDpr write SetVlrDpr;
    property VlrBse: Double read GetVlrBse write SetVlrBse;
    property VlrDse: Double read GetVlrDse write SetVlrDse;
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
    property VlrBco: Double read GetVlrBco write SetVlrBco;
    property VlrCom: Double read GetVlrCom write SetVlrCom;
    property VlrLpr: Double read GetVlrLpr write SetVlrLpr;
    property VlrLse: Double read GetVlrLse write SetVlrLse;
    property VlrLou: Double read GetVlrLou write SetVlrLou;
    property VlrLiq: Double read GetVlrLiq write SetVlrLiq;
    property VlrFin: Double read GetVlrFin write SetVlrFin;
    property VlrAdt: Double read GetVlrAdt write SetVlrAdt;
    property QtdOri: Double read GetQtdOri write SetQtdOri;
    property VlrOri: Double read GetVlrOri write SetVlrOri;
    property TemPar: Char read GetTemPar write SetTemPar;
    property CodPor: string read GetCodPor write SetCodPor;
    property CodCrt: string read GetCodCrt write SetCodCrt;
    property SitPed: Integer read GetSitPed write SetSitPed;
    property CodMot: Integer read GetCodMot write SetCodMot;
    property ObsMot: string read GetObsMot write SetObsMot;
    property PedBlo: Char read GetPedBlo write SetPedBlo;
    property UsuBlo: Integer read GetUsuBlo write SetUsuBlo;
    property DatBlo: TDate read GetDatBlo write SetDatBlo;
    property HorBlo: Integer read GetHorBlo write SetHorBlo;
    property IndSig: Char read GetIndSig write SetIndSig;
    property VerCal: Integer read GetVerCal write SetVerCal;
    property HorIni: Integer read GetHorIni write SetHorIni;
    property HorFim: Integer read GetHorFim write SetHorFim;
    property UsuGer: Integer read GetUsuGer write SetUsuGer;
    property DatGer: TDate read GetDatGer write SetDatGer;
    property HorGer: Integer read GetHorGer write SetHorGer;
    property PerFre: Double read GetPerFre write SetPerFre;
    property PerSeg: Double read GetPerSeg write SetPerSeg;
    property PerEmb: Double read GetPerEmb write SetPerEmb;
    property PerEnc: Double read GetPerEnc write SetPerEnc;
    property PerOut: Double read GetPerOut write SetPerOut;
    property CodSac: Integer read GetCodSac write SetCodSac;
    property CodOpe: Integer read GetCodOpe write SetCodOpe;
    property CodVen: Integer read GetCodVen write SetCodVen;
    property PedPal: Integer read GetPedPal write SetPedPal;
    property AcePar: Char read GetAcePar write SetAcePar;
    property PerOf1: Double read GetPerOf1 write SetPerOf1;
    property PerOf2: Double read GetPerOf2 write SetPerOf2;
    property UsuFec: Integer read GetUsuFec write SetUsuFec;
    property DatFec: TDate read GetDatFec write SetDatFec;
    property HorFec: Integer read GetHorFec write SetHorFec;
    property CliRel: Integer read GetCliRel write SetCliRel;
    property VlrBcl: Double read GetVlrBcl write SetVlrBcl;
    property VlrCsl: Double read GetVlrCsl write SetVlrCsl;
    property VlrBpt: Double read GetVlrBpt write SetVlrBpt;
    property VlrPit: Double read GetVlrPit write SetVlrPit;
    property VlrBct: Double read GetVlrBct write SetVlrBct;
    property VlrCrt: Double read GetVlrCrt write SetVlrCrt;
    property VlrBor: Double read GetVlrBor write SetVlrBor;
    property VlrOur: Double read GetVlrOur write SetVlrOur;
    property CodMar: string read GetCodMar write SetCodMar;
    property CodSro: string read GetCodSro write SetCodSro;
    property FilFat: Integer read GetFilFat write SetFilFat;
    property CodCdi: Integer read GetCodCdi write SetCodCdi;
    property CodLip: string read GetCodLip write SetCodLip;
    property CepFre: Integer read GetCepFre write SetCepFre;
    property VlrRis: Double read GetVlrRis write SetVlrRis;
    property AnaEmb: Char read GetAnaEmb write SetAnaEmb;
    property NumEmp: string read GetNumEmp write SetNumEmp;
    property QtdAne: Integer read GetQtdAne write SetQtdAne;
    property DatAge: TDate read GetDatAge write SetDatAge;
    property FilNco: Integer read GetFilNco write SetFilNco;
    property SnfNco: string read GetSnfNco write SetSnfNco;
    property NumNco: Integer read GetNumNco write SetNumNco;
    property ExpWms: Integer read GetExpWms write SetExpWms;
    property VlrBpf: Double read GetVlrBpf write SetVlrBpf;
    property VlrPif: Double read GetVlrPif write SetVlrPif;
    property VlrBcf: Double read GetVlrBcf write SetVlrBcf;
    property VlrCff: Double read GetVlrCff write SetVlrCff;
    property CodApc: Integer read GetCodApc write SetCodApc;
    property SomFre: Char read GetSomFre write SetSomFre;
    property QtdItp: Integer read GetQtdItp write SetQtdItp;
    property QtdIts: Integer read GetQtdIts write SetQtdIts;
    property PerDs5: Double read GetPerDs5 write SetPerDs5;
    property VlrDs5: Double read GetVlrDs5 write SetVlrDs5;
    property RotAnx: Integer read GetRotAnx write SetRotAnx;
    property NumAnx: Integer read GetNumAnx write SetNumAnx;
    property NumNsu: Integer read GetNumNsu write SetNumNsu;
    property DatNsu: TDate read GetDatNsu write SetDatNsu;
    property HorNsu: Integer read GetHorNsu write SetHorNsu;
    property IndExp: Integer read GetIndExp write SetIndExp;
    property FatPed: Integer read GetFatPed write SetFatPed;
    property QtdBpf: Double read GetQtdBpf write SetQtdBpf;
    property QtdBcf: Double read GetQtdBcf write SetQtdBcf;
    property QtdBip: Double read GetQtdBip write SetQtdBip;
    property NumCes: Integer read GetNumCes write SetNumCes;
    property VenCal: Char read GetVenCal write SetVenCal;
    property DesDef: string read GetDesDef write SetDesDef;
    property AnoVei: string read GetAnoVei write SetAnoVei;
    property NumRen: string read GetNumRen write SetNumRen;
    property DesMod: string read GetDesMod write SetDesMod;
    property TipDav: Integer read GetTipDav write SetTipDav;
    property VlrEcf: Double read GetVlrEcf write SetVlrEcf;
    property PerEcf: Double read GetPerEcf write SetPerEcf;
    property TemAva: Char read GetTemAva write SetTemAva;
    property CodTab: string read GetCodTab write SetCodTab;
    property SenApr: string read GetSenApr write SetSenApr;
    property UsuApr: Integer read GetUsuApr write SetUsuApr;
    property DatApr: TDate read GetDatApr write SetDatApr;
    property HorApr: Integer read GetHorApr write SetHorApr;
    property SitPac: Integer read GetSitPac write SetSitPac;
    property UsuPac: Integer read GetUsuPac write SetUsuPac;
    property QtdPac: Integer read GetQtdPac write SetQtdPac;
    property USU_PedPrg: Char read GetUSU_PedPrg write SetUSU_PedPrg;
    property USU_DatEnv: TDate read GetUSU_DatEnv write SetUSU_DatEnv;
    property USU_DatRet: TDate read GetUSU_DatRet write SetUSU_DatRet;
    property USU_RetCli: string read GetUSU_RetCli write SetUSU_RetCli;
    property USU_MotFec: Integer read GetUSU_MotFec write SetUSU_MotFec;
    property USU_QtdSep: Integer read GetUSU_QtdSep write SetUSU_QtdSep;
    property USU_DivExp: Char read GetUSU_DivExp write SetUSU_DivExp;
    property USU_TemDiv: Char read GetUSU_TemDiv write SetUSU_TemDiv;
    property USU_SepFin: Char read GetUSU_SepFin write SetUSU_SepFin;
    property USU_RelSepImp: Char read GetUSU_RelSepImp write SetUSU_RelSepImp;
    property USU_DatImp: TDate read GetUSU_DatImp write SetUSU_DatImp;
    property USU_HorImp: Integer read GetUSU_HorImp write SetUSU_HorImp;
    property USU_DatRec: TDate read GetUSU_DatRec write SetUSU_DatRec;
    property USU_HorRec: Integer read GetUSU_HorRec write SetUSU_HorRec;
    property USU_FrmRec: Integer read GetUSU_FrmRec write SetUSU_FrmRec;
    property USU_HorEnv: Integer read GetUSU_HorEnv write SetUSU_HorEnv;
    property USU_ParGer: string read GetUSU_ParGer write SetUSU_ParGer;
    property USU_TipTrf: Char read GetUSU_TipTrf write SetUSU_TipTrf;
    property USU_TipVen: Integer read GetUSU_TipVen write SetUSU_TipVen;
    property USU_DesBen: string read GetUSU_DesBen write SetUSU_DesBen;
    property USU_UsuSep: Integer read GetUSU_UsuSep write SetUSU_UsuSep;
    property USU_DatSep: TDate read GetUSU_DatSep write SetUSU_DatSep;
    property USU_HorSep: Integer read GetUSU_HorSep write SetUSU_HorSep;
    property USU_NumCad: Integer read GetUSU_NumCad write SetUSU_NumCad;
    property USU_CanAut: TDate read GetUSU_CanAut write SetUSU_CanAut;
    property USU_NumOptCRM: Integer read GetUSU_NumOptCRM write SetUSU_NumOptCRM;
    property USU_PedFec: Char read GetUSU_PedFec write SetUSU_PedFec;
    property USU_DatPrv: TDate read GetUSU_DatPrv write SetUSU_DatPrv;
    property USU_CodTip: string read GetUSU_CodTip write SetUSU_CodTip;
    property USU_TaxCnv: Double read GetUSU_TaxCnv write SetUSU_TaxCnv;
    property USU_TnsFat: string read GetUSU_TnsFat write SetUSU_TnsFat;

    property OLD_CodEmp: Integer read GetCodEmpOLD write SetCodEmpOLD;
    property OLD_CodFil: Integer read GetCodFilOLD write SetCodFilOLD;
    property OLD_NumPed: Integer read GetNumPedOLD write SetNumPedOLD;
    property OLD_TipPed: Integer read GetTipPedOLD write SetTipPedOLD;
    property OLD_PrcPed: Integer read GetPrcPedOLD write SetPrcPedOLD;
    property OLD_TnsPro: string read GetTnsProOLD write SetTnsProOLD;
    property OLD_TnsSer: string read GetTnsSerOLD write SetTnsSerOLD;
    property OLD_DatEmi: TDate read GetDatEmiOLD write SetDatEmiOLD;
    property OLD_HorEmi: Integer read GetHorEmiOLD write SetHorEmiOLD;
    property OLD_DatPrv: TDate read GetDatPrvOLD write SetDatPrvOLD;
    property OLD_HorPrv: Integer read GetHorPrvOLD write SetHorPrvOLD;
    property OLD_ObsPed: string read GetObsPedOLD write SetObsPedOLD;
    property OLD_CodCli: Integer read GetCodCliOLD write SetCodCliOLD;
    property OLD_CatCli: Integer read GetCatCliOLD write SetCatCliOLD;
    property OLD_QtdVpf: Integer read GetQtdVpfOLD write SetQtdVpfOLD;
    property OLD_QtdMfp: Integer read GetQtdMfpOLD write SetQtdMfpOLD;
    property OLD_IndAgr: Char read GetIndAgrOLD write SetIndAgrOLD;
    property OLD_SeqEnt: Integer read GetSeqEntOLD write SetSeqEntOLD;
    property OLD_SeqCob: Integer read GetSeqCobOLD write SetSeqCobOLD;
    property OLD_SeqCto: Integer read GetSeqCtoOLD write SetSeqCtoOLD;
    property OLD_PedCli: string read GetPedCliOLD write SetPedCliOLD;
    property OLD_CodRoe: string read GetCodRoeOLD write SetCodRoeOLD;
    property OLD_SeqRoe: Integer read GetSeqRoeOLD write SetSeqRoeOLD;
    property OLD_CodRep: Integer read GetCodRepOLD write SetCodRepOLD;
    property OLD_CodMoe: string read GetCodMoeOLD write SetCodMoeOLD;
    property OLD_CodMcp: string read GetCodMcpOLD write SetCodMcpOLD;
    property OLD_DatMfp: TDate read GetDatMfpOLD write SetDatMfpOLD;
    property OLD_CotMfp: Double read GetCotMfpOLD write SetCotMfpOLD;
    property OLD_DatMoe: TDate read GetDatMoeOLD write SetDatMoeOLD;
    property OLD_CotMoe: Double read GetCotMoeOLD write SetCotMoeOLD;
    property OLD_FecMoe: Char read GetFecMoeOLD write SetFecMoeOLD;
    property OLD_CodFcr: string read GetCodFcrOLD write SetCodFcrOLD;
    property OLD_DatFcr: TDate read GetDatFcrOLD write SetDatFcrOLD;
    property OLD_CodCpg: string read GetCodCpgOLD write SetCodCpgOLD;
    property OLD_PgtAnt: Char read GetPgtAntOLD write SetPgtAntOLD;
    property OLD_CodFpg: Integer read GetCodFpgOLD write SetCodFpgOLD;
    property OLD_QtdAbe: Double read GetQtdAbeOLD write SetQtdAbeOLD;
    property OLD_QtdAen: Double read GetQtdAenOLD write SetQtdAenOLD;
    property OLD_CodTra: Integer read GetCodTraOLD write SetCodTraOLD;
    property OLD_CodRed: Integer read GetCodRedOLD write SetCodRedOLD;
    property OLD_CodVia: string read GetCodViaOLD write SetCodViaOLD;
    property OLD_PlaVei: string read GetPlaVeiOLD write SetPlaVeiOLD;
    property OLD_VlrFum: Double read GetVlrFumOLD write SetVlrFumOLD;
    property OLD_QtdFre: Double read GetQtdFreOLD write SetQtdFreOLD;
    property OLD_ForFre: Integer read GetForFreOLD write SetForFreOLD;
    property OLD_VlrFre: Double read GetVlrFreOLD write SetVlrFreOLD;
    property OLD_CifFob: Char read GetCifFobOLD write SetCifFobOLD;
    property OLD_VlrSeg: Double read GetVlrSegOLD write SetVlrSegOLD;
    property OLD_VlrEmb: Double read GetVlrEmbOLD write SetVlrEmbOLD;
    property OLD_VlrEnc: Double read GetVlrEncOLD write SetVlrEncOLD;
    property OLD_VlrOut: Double read GetVlrOutOLD write SetVlrOutOLD;
    property OLD_VlrDar: Double read GetVlrDarOLD write SetVlrDarOLD;
    property OLD_VlrFrd: Double read GetVlrFrdOLD write SetVlrFrdOLD;
    property OLD_VlrOud: Double read GetVlrOudOLD write SetVlrOudOLD;
    property OLD_PerDs1: Double read GetPerDs1OLD write SetPerDs1OLD;
    property OLD_PerDs2: Double read GetPerDs2OLD write SetPerDs2OLD;
    property OLD_PerDs3: Double read GetPerDs3OLD write SetPerDs3OLD;
    property OLD_PerDs4: Double read GetPerDs4OLD write SetPerDs4OLD;
    property OLD_VlrBpr: Double read GetVlrBprOLD write SetVlrBprOLD;
    property OLD_VlrDpr: Double read GetVlrDprOLD write SetVlrDprOLD;
    property OLD_VlrBse: Double read GetVlrBseOLD write SetVlrBseOLD;
    property OLD_VlrDse: Double read GetVlrDseOLD write SetVlrDseOLD;
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
    property OLD_VlrBco: Double read GetVlrBcoOLD write SetVlrBcoOLD;
    property OLD_VlrCom: Double read GetVlrComOLD write SetVlrComOLD;
    property OLD_VlrLpr: Double read GetVlrLprOLD write SetVlrLprOLD;
    property OLD_VlrLse: Double read GetVlrLseOLD write SetVlrLseOLD;
    property OLD_VlrLou: Double read GetVlrLouOLD write SetVlrLouOLD;
    property OLD_VlrLiq: Double read GetVlrLiqOLD write SetVlrLiqOLD;
    property OLD_VlrFin: Double read GetVlrFinOLD write SetVlrFinOLD;
    property OLD_VlrAdt: Double read GetVlrAdtOLD write SetVlrAdtOLD;
    property OLD_QtdOri: Double read GetQtdOriOLD write SetQtdOriOLD;
    property OLD_VlrOri: Double read GetVlrOriOLD write SetVlrOriOLD;
    property OLD_TemPar: Char read GetTemParOLD write SetTemParOLD;
    property OLD_CodPor: string read GetCodPorOLD write SetCodPorOLD;
    property OLD_CodCrt: string read GetCodCrtOLD write SetCodCrtOLD;
    property OLD_SitPed: Integer read GetSitPedOLD write SetSitPedOLD;
    property OLD_CodMot: Integer read GetCodMotOLD write SetCodMotOLD;
    property OLD_ObsMot: string read GetObsMotOLD write SetObsMotOLD;
    property OLD_PedBlo: Char read GetPedBloOLD write SetPedBloOLD;
    property OLD_UsuBlo: Integer read GetUsuBloOLD write SetUsuBloOLD;
    property OLD_DatBlo: TDate read GetDatBloOLD write SetDatBloOLD;
    property OLD_HorBlo: Integer read GetHorBloOLD write SetHorBloOLD;
    property OLD_IndSig: Char read GetIndSigOLD write SetIndSigOLD;
    property OLD_VerCal: Integer read GetVerCalOLD write SetVerCalOLD;
    property OLD_HorIni: Integer read GetHorIniOLD write SetHorIniOLD;
    property OLD_HorFim: Integer read GetHorFimOLD write SetHorFimOLD;
    property OLD_UsuGer: Integer read GetUsuGerOLD write SetUsuGerOLD;
    property OLD_DatGer: TDate read GetDatGerOLD write SetDatGerOLD;
    property OLD_HorGer: Integer read GetHorGerOLD write SetHorGerOLD;
    property OLD_PerFre: Double read GetPerFreOLD write SetPerFreOLD;
    property OLD_PerSeg: Double read GetPerSegOLD write SetPerSegOLD;
    property OLD_PerEmb: Double read GetPerEmbOLD write SetPerEmbOLD;
    property OLD_PerEnc: Double read GetPerEncOLD write SetPerEncOLD;
    property OLD_PerOut: Double read GetPerOutOLD write SetPerOutOLD;
    property OLD_CodSac: Integer read GetCodSacOLD write SetCodSacOLD;
    property OLD_CodOpe: Integer read GetCodOpeOLD write SetCodOpeOLD;
    property OLD_CodVen: Integer read GetCodVenOLD write SetCodVenOLD;
    property OLD_PedPal: Integer read GetPedPalOLD write SetPedPalOLD;
    property OLD_AcePar: Char read GetAceParOLD write SetAceParOLD;
    property OLD_PerOf1: Double read GetPerOf1OLD write SetPerOf1OLD;
    property OLD_PerOf2: Double read GetPerOf2OLD write SetPerOf2OLD;
    property OLD_UsuFec: Integer read GetUsuFecOLD write SetUsuFecOLD;
    property OLD_DatFec: TDate read GetDatFecOLD write SetDatFecOLD;
    property OLD_HorFec: Integer read GetHorFecOLD write SetHorFecOLD;
    property OLD_CliRel: Integer read GetCliRelOLD write SetCliRelOLD;
    property OLD_VlrBcl: Double read GetVlrBclOLD write SetVlrBclOLD;
    property OLD_VlrCsl: Double read GetVlrCslOLD write SetVlrCslOLD;
    property OLD_VlrBpt: Double read GetVlrBptOLD write SetVlrBptOLD;
    property OLD_VlrPit: Double read GetVlrPitOLD write SetVlrPitOLD;
    property OLD_VlrBct: Double read GetVlrBctOLD write SetVlrBctOLD;
    property OLD_VlrCrt: Double read GetVlrCrtOLD write SetVlrCrtOLD;
    property OLD_VlrBor: Double read GetVlrBorOLD write SetVlrBorOLD;
    property OLD_VlrOur: Double read GetVlrOurOLD write SetVlrOurOLD;
    property OLD_CodMar: string read GetCodMarOLD write SetCodMarOLD;
    property OLD_CodSro: string read GetCodSroOLD write SetCodSroOLD;
    property OLD_FilFat: Integer read GetFilFatOLD write SetFilFatOLD;
    property OLD_CodCdi: Integer read GetCodCdiOLD write SetCodCdiOLD;
    property OLD_CodLip: string read GetCodLipOLD write SetCodLipOLD;
    property OLD_CepFre: Integer read GetCepFreOLD write SetCepFreOLD;
    property OLD_VlrRis: Double read GetVlrRisOLD write SetVlrRisOLD;
    property OLD_AnaEmb: Char read GetAnaEmbOLD write SetAnaEmbOLD;
    property OLD_NumEmp: string read GetNumEmpOLD write SetNumEmpOLD;
    property OLD_QtdAne: Integer read GetQtdAneOLD write SetQtdAneOLD;
    property OLD_DatAge: TDate read GetDatAgeOLD write SetDatAgeOLD;
    property OLD_FilNco: Integer read GetFilNcoOLD write SetFilNcoOLD;
    property OLD_SnfNco: string read GetSnfNcoOLD write SetSnfNcoOLD;
    property OLD_NumNco: Integer read GetNumNcoOLD write SetNumNcoOLD;
    property OLD_ExpWms: Integer read GetExpWmsOLD write SetExpWmsOLD;
    property OLD_VlrBpf: Double read GetVlrBpfOLD write SetVlrBpfOLD;
    property OLD_VlrPif: Double read GetVlrPifOLD write SetVlrPifOLD;
    property OLD_VlrBcf: Double read GetVlrBcfOLD write SetVlrBcfOLD;
    property OLD_VlrCff: Double read GetVlrCffOLD write SetVlrCffOLD;
    property OLD_CodApc: Integer read GetCodApcOLD write SetCodApcOLD;
    property OLD_SomFre: Char read GetSomFreOLD write SetSomFreOLD;
    property OLD_QtdItp: Integer read GetQtdItpOLD write SetQtdItpOLD;
    property OLD_QtdIts: Integer read GetQtdItsOLD write SetQtdItsOLD;
    property OLD_PerDs5: Double read GetPerDs5OLD write SetPerDs5OLD;
    property OLD_VlrDs5: Double read GetVlrDs5OLD write SetVlrDs5OLD;
    property OLD_RotAnx: Integer read GetRotAnxOLD write SetRotAnxOLD;
    property OLD_NumAnx: Integer read GetNumAnxOLD write SetNumAnxOLD;
    property OLD_NumNsu: Integer read GetNumNsuOLD write SetNumNsuOLD;
    property OLD_DatNsu: TDate read GetDatNsuOLD write SetDatNsuOLD;
    property OLD_HorNsu: Integer read GetHorNsuOLD write SetHorNsuOLD;
    property OLD_IndExp: Integer read GetIndExpOLD write SetIndExpOLD;
    property OLD_FatPed: Integer read GetFatPedOLD write SetFatPedOLD;
    property OLD_QtdBpf: Double read GetQtdBpfOLD write SetQtdBpfOLD;
    property OLD_QtdBcf: Double read GetQtdBcfOLD write SetQtdBcfOLD;
    property OLD_QtdBip: Double read GetQtdBipOLD write SetQtdBipOLD;
    property OLD_NumCes: Integer read GetNumCesOLD write SetNumCesOLD;
    property OLD_VenCal: Char read GetVenCalOLD write SetVenCalOLD;
    property OLD_DesDef: string read GetDesDefOLD write SetDesDefOLD;
    property OLD_AnoVei: string read GetAnoVeiOLD write SetAnoVeiOLD;
    property OLD_NumRen: string read GetNumRenOLD write SetNumRenOLD;
    property OLD_DesMod: string read GetDesModOLD write SetDesModOLD;
    property OLD_TipDav: Integer read GetTipDavOLD write SetTipDavOLD;
    property OLD_VlrEcf: Double read GetVlrEcfOLD write SetVlrEcfOLD;
    property OLD_PerEcf: Double read GetPerEcfOLD write SetPerEcfOLD;
    property OLD_TemAva: Char read GetTemAvaOLD write SetTemAvaOLD;
    property OLD_CodTab: string read GetCodTabOLD write SetCodTabOLD;
    property OLD_SenApr: string read GetSenAprOLD write SetSenAprOLD;
    property OLD_UsuApr: Integer read GetUsuAprOLD write SetUsuAprOLD;
    property OLD_DatApr: TDate read GetDatAprOLD write SetDatAprOLD;
    property OLD_HorApr: Integer read GetHorAprOLD write SetHorAprOLD;
    property OLD_SitPac: Integer read GetSitPacOLD write SetSitPacOLD;
    property OLD_UsuPac: Integer read GetUsuPacOLD write SetUsuPacOLD;
    property OLD_QtdPac: Integer read GetQtdPacOLD write SetQtdPacOLD;
    property OLD_USU_PedPrg: Char read GetUSU_PedPrgOLD write SetUSU_PedPrgOLD;
    property OLD_USU_DatEnv: TDate read GetUSU_DatEnvOLD write SetUSU_DatEnvOLD;
    property OLD_USU_DatRet: TDate read GetUSU_DatRetOLD write SetUSU_DatRetOLD;
    property OLD_USU_RetCli: string read GetUSU_RetCliOLD write SetUSU_RetCliOLD;
    property OLD_USU_MotFec: Integer read GetUSU_MotFecOLD write SetUSU_MotFecOLD;
    property OLD_USU_QtdSep: Integer read GetUSU_QtdSepOLD write SetUSU_QtdSepOLD;
    property OLD_USU_DivExp: Char read GetUSU_DivExpOLD write SetUSU_DivExpOLD;
    property OLD_USU_TemDiv: Char read GetUSU_TemDivOLD write SetUSU_TemDivOLD;
    property OLD_USU_SepFin: Char read GetUSU_SepFinOLD write SetUSU_SepFinOLD;
    property OLD_USU_RelSepImp: Char read GetUSU_RelSepImpOLD write SetUSU_RelSepImpOLD;
    property OLD_USU_DatImp: TDate read GetUSU_DatImpOLD write SetUSU_DatImpOLD;
    property OLD_USU_HorImp: Integer read GetUSU_HorImpOLD write SetUSU_HorImpOLD;
    property OLD_USU_DatRec: TDate read GetUSU_DatRecOLD write SetUSU_DatRecOLD;
    property OLD_USU_HorRec: Integer read GetUSU_HorRecOLD write SetUSU_HorRecOLD;
    property OLD_USU_FrmRec: Integer read GetUSU_FrmRecOLD write SetUSU_FrmRecOLD;
    property OLD_USU_HorEnv: Integer read GetUSU_HorEnvOLD write SetUSU_HorEnvOLD;
    property OLD_USU_ParGer: string read GetUSU_ParGerOLD write SetUSU_ParGerOLD;
    property OLD_USU_TipTrf: Char read GetUSU_TipTrfOLD write SetUSU_TipTrfOLD;
    property OLD_USU_TipVen: Integer read GetUSU_TipVenOLD write SetUSU_TipVenOLD;
    property OLD_USU_DesBen: string read GetUSU_DesBenOLD write SetUSU_DesBenOLD;
    property OLD_USU_UsuSep: Integer read GetUSU_UsuSepOLD write SetUSU_UsuSepOLD;
    property OLD_USU_DatSep: TDate read GetUSU_DatSepOLD write SetUSU_DatSepOLD;
    property OLD_USU_HorSep: Integer read GetUSU_HorSepOLD write SetUSU_HorSepOLD;
    property OLD_USU_NumCad: Integer read GetUSU_NumCadOLD write SetUSU_NumCadOLD;
    property OLD_USU_CanAut: TDate read GetUSU_CanAutOLD write SetUSU_CanAutOLD;
    property OLD_USU_NumOptCRM: Integer read GetUSU_NumOptCRMOLD write SetUSU_NumOptCRMOLD;
    property OLD_USU_PedFec: Char read GetUSU_PedFecOLD write SetUSU_PedFecOLD;
    property OLD_USU_DatPrv: TDate read GetUSU_DatPrvOLD write SetUSU_DatPrvOLD;
    property OLD_USU_CodTip: string read GetUSU_CodTipOLD write SetUSU_CodTipOLD;
    property OLD_USU_TaxCnv: Double read GetUSU_TaxCnvOLD write SetUSU_TaxCnvOLD;
    property OLD_USU_TnsFat: string read GetUSU_TnsFatOLD write SetUSU_TnsFatOLD;
  end;

implementation

{ T120PED }

constructor T120PED.Create();
begin
  AddForeignKeys(['CodEmp','CodFil','CodCli','CodRep','CodCpg'], ['CodEmp','CodFil','CodCli','CodRep','CodCpg']);
  AddPrimaryKeys('CodEmp;CodFil;NumPed');

  inherited Create('E120PED');
end;

destructor T120PED.Destroy();
begin
  inherited;
end;

function T120PED.GetCodEmp: Integer;
begin
  Result := FCodEmp;
end;

procedure T120PED.SetCodEmp(const pCodEmp: Integer);
begin
  FCodEmp := pCodEmp;

  CheckField('CodEmp');
end;

function T120PED.GetCodFil: Integer;
begin
  Result := FCodFil;
end;

procedure T120PED.SetCodFil(const pCodFil: Integer);
begin
  FCodFil := pCodFil;

  CheckField('CodFil');
end;

function T120PED.GetNumPed: Integer;
begin
  Result := FNumPed;
end;

procedure T120PED.SetNumPed(const pNumPed: Integer);
begin
  FNumPed := pNumPed;

  CheckField('NumPed');
end;

function T120PED.GetTipPed: Integer;
begin
  Result := FTipPed;
end;

procedure T120PED.SetTipPed(const pTipPed: Integer);
begin
  FTipPed := pTipPed;

  CheckField('TipPed');
end;

function T120PED.GetPrcPed: Integer;
begin
  Result := FPrcPed;
end;

procedure T120PED.SetPrcPed(const pPrcPed: Integer);
begin
  FPrcPed := pPrcPed;

  CheckField('PrcPed');
end;

function T120PED.GetTnsPro: string;
begin
  Result := FTnsPro;
end;

procedure T120PED.SetTnsPro(const pTnsPro: string);
begin
  FTnsPro := pTnsPro;

  CheckField('TnsPro');
end;

function T120PED.GetTnsSer: string;
begin
  Result := FTnsSer;
end;

procedure T120PED.SetTnsSer(const pTnsSer: string);
begin
  FTnsSer := pTnsSer;

  CheckField('TnsSer');
end;

function T120PED.GetDatEmi: TDate;
begin
  Result := FDatEmi;
end;

procedure T120PED.SetDatEmi(const pDatEmi: TDate);
begin
  FDatEmi := pDatEmi;

  CheckField('DatEmi');
end;

function T120PED.GetHorEmi: Integer;
begin
  Result := FHorEmi;
end;

procedure T120PED.SetHorEmi(const pHorEmi: Integer);
begin
  FHorEmi := pHorEmi;

  CheckField('HorEmi');
end;

function T120PED.GetDatPrv: TDate;
begin
  Result := FDatPrv;
end;

procedure T120PED.SetDatPrv(const pDatPrv: TDate);
begin
  FDatPrv := pDatPrv;

  CheckField('DatPrv');
end;

function T120PED.GetHorPrv: Integer;
begin
  Result := FHorPrv;
end;

procedure T120PED.SetHorPrv(const pHorPrv: Integer);
begin
  FHorPrv := pHorPrv;

  CheckField('HorPrv');
end;

function T120PED.GetObsPed: string;
begin
  Result := FObsPed;
end;

procedure T120PED.SetObsPed(const pObsPed: string);
begin
  FObsPed := pObsPed;

  CheckField('ObsPed');
end;

function T120PED.GetCodCli: Integer;
begin
  Result := FCodCli;
end;

procedure T120PED.SetCodCli(const pCodCli: Integer);
begin
  FCodCli := pCodCli;

  CheckField('CodCli');
end;

function T120PED.GetCatCli: Integer;
begin
  Result := FCatCli;
end;

procedure T120PED.SetCatCli(const pCatCli: Integer);
begin
  FCatCli := pCatCli;

  CheckField('CatCli');
end;

function T120PED.GetQtdVpf: Integer;
begin
  Result := FQtdVpf;
end;

procedure T120PED.SetQtdVpf(const pQtdVpf: Integer);
begin
  FQtdVpf := pQtdVpf;

  CheckField('QtdVpf');
end;

function T120PED.GetQtdMfp: Integer;
begin
  Result := FQtdMfp;
end;

procedure T120PED.SetQtdMfp(const pQtdMfp: Integer);
begin
  FQtdMfp := pQtdMfp;

  CheckField('QtdMfp');
end;

function T120PED.GetIndAgr: Char;
begin
  Result := FIndAgr;
end;

procedure T120PED.SetIndAgr(const pIndAgr: Char);
begin
  FIndAgr := pIndAgr;

  CheckField('IndAgr');
end;

function T120PED.GetSeqEnt: Integer;
begin
  Result := FSeqEnt;
end;

procedure T120PED.SetSeqEnt(const pSeqEnt: Integer);
begin
  FSeqEnt := pSeqEnt;

  CheckField('SeqEnt');
end;

function T120PED.GetSeqCob: Integer;
begin
  Result := FSeqCob;
end;

procedure T120PED.SetSeqCob(const pSeqCob: Integer);
begin
  FSeqCob := pSeqCob;

  CheckField('SeqCob');
end;

function T120PED.GetSeqCto: Integer;
begin
  Result := FSeqCto;
end;

procedure T120PED.SetSeqCto(const pSeqCto: Integer);
begin
  FSeqCto := pSeqCto;

  CheckField('SeqCto');
end;

function T120PED.GetPedCli: string;
begin
  Result := FPedCli;
end;

procedure T120PED.SetPedCli(const pPedCli: string);
begin
  FPedCli := pPedCli;

  CheckField('PedCli');
end;

function T120PED.GetCodRoe: string;
begin
  Result := FCodRoe;
end;

procedure T120PED.SetCodRoe(const pCodRoe: string);
begin
  FCodRoe := pCodRoe;

  CheckField('CodRoe');
end;

function T120PED.GetSeqRoe: Integer;
begin
  Result := FSeqRoe;
end;

procedure T120PED.SetSeqRoe(const pSeqRoe: Integer);
begin
  FSeqRoe := pSeqRoe;

  CheckField('SeqRoe');
end;

function T120PED.GetCodRep: Integer;
begin
  Result := FCodRep;
end;

procedure T120PED.SetCodRep(const pCodRep: Integer);
begin
  FCodRep := pCodRep;

  CheckField('CodRep');
end;

function T120PED.GetCodMoe: string;
begin
  Result := FCodMoe;
end;

procedure T120PED.SetCodMoe(const pCodMoe: string);
begin
  FCodMoe := pCodMoe;

  CheckField('CodMoe');
end;

function T120PED.GetCodMcp: string;
begin
  Result := FCodMcp;
end;

procedure T120PED.SetCodMcp(const pCodMcp: string);
begin
  FCodMcp := pCodMcp;

  CheckField('CodMcp');
end;

function T120PED.GetDatMfp: TDate;
begin
  Result := FDatMfp;
end;

procedure T120PED.SetDatMfp(const pDatMfp: TDate);
begin
  FDatMfp := pDatMfp;

  CheckField('DatMfp');
end;

function T120PED.GetCotMfp: Double;
begin
  Result := FCotMfp;
end;

procedure T120PED.SetCotMfp(const pCotMfp: Double);
begin
  FCotMfp := pCotMfp;

  CheckField('CotMfp');
end;

function T120PED.GetDatMoe: TDate;
begin
  Result := FDatMoe;
end;

procedure T120PED.SetDatMoe(const pDatMoe: TDate);
begin
  FDatMoe := pDatMoe;

  CheckField('DatMoe');
end;

function T120PED.GetCotMoe: Double;
begin
  Result := FCotMoe;
end;

procedure T120PED.SetCotMoe(const pCotMoe: Double);
begin
  FCotMoe := pCotMoe;

  CheckField('CotMoe');
end;

function T120PED.GetFecMoe: Char;
begin
  Result := FFecMoe;
end;

procedure T120PED.SetFecMoe(const pFecMoe: Char);
begin
  FFecMoe := pFecMoe;

  CheckField('FecMoe');
end;

function T120PED.GetCodFcr: string;
begin
  Result := FCodFcr;
end;

procedure T120PED.SetCodFcr(const pCodFcr: string);
begin
  FCodFcr := pCodFcr;

  CheckField('CodFcr');
end;

function T120PED.GetDatFcr: TDate;
begin
  Result := FDatFcr;
end;

procedure T120PED.SetDatFcr(const pDatFcr: TDate);
begin
  FDatFcr := pDatFcr;

  CheckField('DatFcr');
end;

function T120PED.GetCodCpg: string;
begin
  Result := FCodCpg;
end;

procedure T120PED.SetCodCpg(const pCodCpg: string);
begin
  FCodCpg := pCodCpg;

  CheckField('CodCpg');
end;

function T120PED.GetPgtAnt: Char;
begin
  Result := FPgtAnt;
end;

procedure T120PED.SetPgtAnt(const pPgtAnt: Char);
begin
  FPgtAnt := pPgtAnt;

  CheckField('PgtAnt');
end;

function T120PED.GetCodFpg: Integer;
begin
  Result := FCodFpg;
end;

procedure T120PED.SetCodFpg(const pCodFpg: Integer);
begin
  FCodFpg := pCodFpg;

  CheckField('CodFpg');
end;

function T120PED.GetQtdAbe: Double;
begin
  Result := FQtdAbe;
end;

procedure T120PED.SetQtdAbe(const pQtdAbe: Double);
begin
  FQtdAbe := pQtdAbe;

  CheckField('QtdAbe');
end;

function T120PED.GetQtdAen: Double;
begin
  Result := FQtdAen;
end;

procedure T120PED.SetQtdAen(const pQtdAen: Double);
begin
  FQtdAen := pQtdAen;

  CheckField('QtdAen');
end;

function T120PED.GetCodTra: Integer;
begin
  Result := FCodTra;
end;

procedure T120PED.SetCodTra(const pCodTra: Integer);
begin
  FCodTra := pCodTra;

  CheckField('CodTra');
end;

function T120PED.GetCodRed: Integer;
begin
  Result := FCodRed;
end;

procedure T120PED.SetCodRed(const pCodRed: Integer);
begin
  FCodRed := pCodRed;

  CheckField('CodRed');
end;

function T120PED.GetCodVia: string;
begin
  Result := FCodVia;
end;

procedure T120PED.SetCodVia(const pCodVia: string);
begin
  FCodVia := pCodVia;

  CheckField('CodVia');
end;

function T120PED.GetPlaVei: string;
begin
  Result := FPlaVei;
end;

procedure T120PED.SetPlaVei(const pPlaVei: string);
begin
  FPlaVei := pPlaVei;

  CheckField('PlaVei');
end;

function T120PED.GetVlrFum: Double;
begin
  Result := FVlrFum;
end;

procedure T120PED.SetVlrFum(const pVlrFum: Double);
begin
  FVlrFum := pVlrFum;

  CheckField('VlrFum');
end;

function T120PED.GetQtdFre: Double;
begin
  Result := FQtdFre;
end;

procedure T120PED.SetQtdFre(const pQtdFre: Double);
begin
  FQtdFre := pQtdFre;

  CheckField('QtdFre');
end;

function T120PED.GetForFre: Integer;
begin
  Result := FForFre;
end;

procedure T120PED.SetForFre(const pForFre: Integer);
begin
  FForFre := pForFre;

  CheckField('ForFre');
end;

function T120PED.GetVlrFre: Double;
begin
  Result := FVlrFre;
end;

procedure T120PED.SetVlrFre(const pVlrFre: Double);
begin
  FVlrFre := pVlrFre;

  CheckField('VlrFre');
end;

function T120PED.GetCifFob: Char;
begin
  Result := FCifFob;
end;

procedure T120PED.SetCifFob(const pCifFob: Char);
begin
  FCifFob := pCifFob;

  CheckField('CifFob');
end;

function T120PED.GetVlrSeg: Double;
begin
  Result := FVlrSeg;
end;

procedure T120PED.SetVlrSeg(const pVlrSeg: Double);
begin
  FVlrSeg := pVlrSeg;

  CheckField('VlrSeg');
end;

function T120PED.GetVlrEmb: Double;
begin
  Result := FVlrEmb;
end;

procedure T120PED.SetVlrEmb(const pVlrEmb: Double);
begin
  FVlrEmb := pVlrEmb;

  CheckField('VlrEmb');
end;

function T120PED.GetVlrEnc: Double;
begin
  Result := FVlrEnc;
end;

procedure T120PED.SetVlrEnc(const pVlrEnc: Double);
begin
  FVlrEnc := pVlrEnc;

  CheckField('VlrEnc');
end;

function T120PED.GetVlrOut: Double;
begin
  Result := FVlrOut;
end;

procedure T120PED.SetVlrOut(const pVlrOut: Double);
begin
  FVlrOut := pVlrOut;

  CheckField('VlrOut');
end;

function T120PED.GetVlrDar: Double;
begin
  Result := FVlrDar;
end;

procedure T120PED.SetVlrDar(const pVlrDar: Double);
begin
  FVlrDar := pVlrDar;

  CheckField('VlrDar');
end;

function T120PED.GetVlrFrd: Double;
begin
  Result := FVlrFrd;
end;

procedure T120PED.SetVlrFrd(const pVlrFrd: Double);
begin
  FVlrFrd := pVlrFrd;

  CheckField('VlrFrd');
end;

function T120PED.GetVlrOud: Double;
begin
  Result := FVlrOud;
end;

procedure T120PED.SetVlrOud(const pVlrOud: Double);
begin
  FVlrOud := pVlrOud;

  CheckField('VlrOud');
end;

function T120PED.GetPerDs1: Double;
begin
  Result := FPerDs1;
end;

procedure T120PED.SetPerDs1(const pPerDs1: Double);
begin
  FPerDs1 := pPerDs1;

  CheckField('PerDs1');
end;

function T120PED.GetPerDs2: Double;
begin
  Result := FPerDs2;
end;

procedure T120PED.SetPerDs2(const pPerDs2: Double);
begin
  FPerDs2 := pPerDs2;

  CheckField('PerDs2');
end;

function T120PED.GetPerDs3: Double;
begin
  Result := FPerDs3;
end;

procedure T120PED.SetPerDs3(const pPerDs3: Double);
begin
  FPerDs3 := pPerDs3;

  CheckField('PerDs3');
end;

function T120PED.GetPerDs4: Double;
begin
  Result := FPerDs4;
end;

procedure T120PED.SetPerDs4(const pPerDs4: Double);
begin
  FPerDs4 := pPerDs4;

  CheckField('PerDs4');
end;

function T120PED.GetVlrBpr: Double;
begin
  Result := FVlrBpr;
end;

procedure T120PED.SetVlrBpr(const pVlrBpr: Double);
begin
  FVlrBpr := pVlrBpr;

  CheckField('VlrBpr');
end;

function T120PED.GetVlrDpr: Double;
begin
  Result := FVlrDpr;
end;

procedure T120PED.SetVlrDpr(const pVlrDpr: Double);
begin
  FVlrDpr := pVlrDpr;

  CheckField('VlrDpr');
end;

function T120PED.GetVlrBse: Double;
begin
  Result := FVlrBse;
end;

procedure T120PED.SetVlrBse(const pVlrBse: Double);
begin
  FVlrBse := pVlrBse;

  CheckField('VlrBse');
end;

function T120PED.GetVlrDse: Double;
begin
  Result := FVlrDse;
end;

procedure T120PED.SetVlrDse(const pVlrDse: Double);
begin
  FVlrDse := pVlrDse;

  CheckField('VlrDse');
end;

function T120PED.GetVlrDs1: Double;
begin
  Result := FVlrDs1;
end;

procedure T120PED.SetVlrDs1(const pVlrDs1: Double);
begin
  FVlrDs1 := pVlrDs1;

  CheckField('VlrDs1');
end;

function T120PED.GetVlrDs2: Double;
begin
  Result := FVlrDs2;
end;

procedure T120PED.SetVlrDs2(const pVlrDs2: Double);
begin
  FVlrDs2 := pVlrDs2;

  CheckField('VlrDs2');
end;

function T120PED.GetVlrDs3: Double;
begin
  Result := FVlrDs3;
end;

procedure T120PED.SetVlrDs3(const pVlrDs3: Double);
begin
  FVlrDs3 := pVlrDs3;

  CheckField('VlrDs3');
end;

function T120PED.GetVlrDs4: Double;
begin
  Result := FVlrDs4;
end;

procedure T120PED.SetVlrDs4(const pVlrDs4: Double);
begin
  FVlrDs4 := pVlrDs4;

  CheckField('VlrDs4');
end;

function T120PED.GetVlrOfe: Double;
begin
  Result := FVlrOfe;
end;

procedure T120PED.SetVlrOfe(const pVlrOfe: Double);
begin
  FVlrOfe := pVlrOfe;

  CheckField('VlrOfe');
end;

function T120PED.GetVlrDzf: Double;
begin
  Result := FVlrDzf;
end;

procedure T120PED.SetVlrDzf(const pVlrDzf: Double);
begin
  FVlrDzf := pVlrDzf;

  CheckField('VlrDzf');
end;

function T120PED.GetVlrBip: Double;
begin
  Result := FVlrBip;
end;

procedure T120PED.SetVlrBip(const pVlrBip: Double);
begin
  FVlrBip := pVlrBip;

  CheckField('VlrBip');
end;

function T120PED.GetVlrIpi: Double;
begin
  Result := FVlrIpi;
end;

procedure T120PED.SetVlrIpi(const pVlrIpi: Double);
begin
  FVlrIpi := pVlrIpi;

  CheckField('VlrIpi');
end;

function T120PED.GetVlrBic: Double;
begin
  Result := FVlrBic;
end;

procedure T120PED.SetVlrBic(const pVlrBic: Double);
begin
  FVlrBic := pVlrBic;

  CheckField('VlrBic');
end;

function T120PED.GetVlrIcm: Double;
begin
  Result := FVlrIcm;
end;

procedure T120PED.SetVlrIcm(const pVlrIcm: Double);
begin
  FVlrIcm := pVlrIcm;

  CheckField('VlrIcm');
end;

function T120PED.GetVlrBsi: Double;
begin
  Result := FVlrBsi;
end;

procedure T120PED.SetVlrBsi(const pVlrBsi: Double);
begin
  FVlrBsi := pVlrBsi;

  CheckField('VlrBsi');
end;

function T120PED.GetVlrSic: Double;
begin
  Result := FVlrSic;
end;

procedure T120PED.SetVlrSic(const pVlrSic: Double);
begin
  FVlrSic := pVlrSic;

  CheckField('VlrSic');
end;

function T120PED.GetVlrBsp: Double;
begin
  Result := FVlrBsp;
end;

procedure T120PED.SetVlrBsp(const pVlrBsp: Double);
begin
  FVlrBsp := pVlrBsp;

  CheckField('VlrBsp');
end;

function T120PED.GetVlrStp: Double;
begin
  Result := FVlrStp;
end;

procedure T120PED.SetVlrStp(const pVlrStp: Double);
begin
  FVlrStp := pVlrStp;

  CheckField('VlrStp');
end;

function T120PED.GetVlrBsc: Double;
begin
  Result := FVlrBsc;
end;

procedure T120PED.SetVlrBsc(const pVlrBsc: Double);
begin
  FVlrBsc := pVlrBsc;

  CheckField('VlrBsc');
end;

function T120PED.GetVlrStc: Double;
begin
  Result := FVlrStc;
end;

procedure T120PED.SetVlrStc(const pVlrStc: Double);
begin
  FVlrStc := pVlrStc;

  CheckField('VlrStc');
end;

function T120PED.GetVlrBis: Double;
begin
  Result := FVlrBis;
end;

procedure T120PED.SetVlrBis(const pVlrBis: Double);
begin
  FVlrBis := pVlrBis;

  CheckField('VlrBis');
end;

function T120PED.GetVlrIss: Double;
begin
  Result := FVlrIss;
end;

procedure T120PED.SetVlrIss(const pVlrIss: Double);
begin
  FVlrIss := pVlrIss;

  CheckField('VlrIss');
end;

function T120PED.GetVlrBir: Double;
begin
  Result := FVlrBir;
end;

procedure T120PED.SetVlrBir(const pVlrBir: Double);
begin
  FVlrBir := pVlrBir;

  CheckField('VlrBir');
end;

function T120PED.GetVlrIrf: Double;
begin
  Result := FVlrIrf;
end;

procedure T120PED.SetVlrIrf(const pVlrIrf: Double);
begin
  FVlrIrf := pVlrIrf;

  CheckField('VlrIrf');
end;

function T120PED.GetVlrBin: Double;
begin
  Result := FVlrBin;
end;

procedure T120PED.SetVlrBin(const pVlrBin: Double);
begin
  FVlrBin := pVlrBin;

  CheckField('VlrBin');
end;

function T120PED.GetVlrIns: Double;
begin
  Result := FVlrIns;
end;

procedure T120PED.SetVlrIns(const pVlrIns: Double);
begin
  FVlrIns := pVlrIns;

  CheckField('VlrIns');
end;

function T120PED.GetVlrBco: Double;
begin
  Result := FVlrBco;
end;

procedure T120PED.SetVlrBco(const pVlrBco: Double);
begin
  FVlrBco := pVlrBco;

  CheckField('VlrBco');
end;

function T120PED.GetVlrCom: Double;
begin
  Result := FVlrCom;
end;

procedure T120PED.SetVlrCom(const pVlrCom: Double);
begin
  FVlrCom := pVlrCom;

  CheckField('VlrCom');
end;

function T120PED.GetVlrLpr: Double;
begin
  Result := FVlrLpr;
end;

procedure T120PED.SetVlrLpr(const pVlrLpr: Double);
begin
  FVlrLpr := pVlrLpr;

  CheckField('VlrLpr');
end;

function T120PED.GetVlrLse: Double;
begin
  Result := FVlrLse;
end;

procedure T120PED.SetVlrLse(const pVlrLse: Double);
begin
  FVlrLse := pVlrLse;

  CheckField('VlrLse');
end;

function T120PED.GetVlrLou: Double;
begin
  Result := FVlrLou;
end;

procedure T120PED.SetVlrLou(const pVlrLou: Double);
begin
  FVlrLou := pVlrLou;

  CheckField('VlrLou');
end;

function T120PED.GetVlrLiq: Double;
begin
  Result := FVlrLiq;
end;

procedure T120PED.SetVlrLiq(const pVlrLiq: Double);
begin
  FVlrLiq := pVlrLiq;

  CheckField('VlrLiq');
end;

function T120PED.GetVlrFin: Double;
begin
  Result := FVlrFin;
end;

procedure T120PED.SetVlrFin(const pVlrFin: Double);
begin
  FVlrFin := pVlrFin;

  CheckField('VlrFin');
end;

function T120PED.GetVlrAdt: Double;
begin
  Result := FVlrAdt;
end;

procedure T120PED.SetVlrAdt(const pVlrAdt: Double);
begin
  FVlrAdt := pVlrAdt;

  CheckField('VlrAdt');
end;

function T120PED.GetQtdOri: Double;
begin
  Result := FQtdOri;
end;

procedure T120PED.SetQtdOri(const pQtdOri: Double);
begin
  FQtdOri := pQtdOri;

  CheckField('QtdOri');
end;

function T120PED.GetVlrOri: Double;
begin
  Result := FVlrOri;
end;

procedure T120PED.SetVlrOri(const pVlrOri: Double);
begin
  FVlrOri := pVlrOri;

  CheckField('VlrOri');
end;

function T120PED.GetTemPar: Char;
begin
  Result := FTemPar;
end;

procedure T120PED.SetTemPar(const pTemPar: Char);
begin
  FTemPar := pTemPar;

  CheckField('TemPar');
end;

function T120PED.GetCodPor: string;
begin
  Result := FCodPor;
end;

procedure T120PED.SetCodPor(const pCodPor: string);
begin
  FCodPor := pCodPor;

  CheckField('CodPor');
end;

function T120PED.GetCodCrt: string;
begin
  Result := FCodCrt;
end;

procedure T120PED.SetCodCrt(const pCodCrt: string);
begin
  FCodCrt := pCodCrt;

  CheckField('CodCrt');
end;

function T120PED.GetSitPed: Integer;
begin
  Result := FSitPed;
end;

procedure T120PED.SetSitPed(const pSitPed: Integer);
begin
  FSitPed := pSitPed;

  CheckField('SitPed');
end;

function T120PED.GetCodMot: Integer;
begin
  Result := FCodMot;
end;

procedure T120PED.SetCodMot(const pCodMot: Integer);
begin
  FCodMot := pCodMot;

  CheckField('CodMot');
end;

function T120PED.GetObsMot: string;
begin
  Result := FObsMot;
end;

procedure T120PED.SetObsMot(const pObsMot: string);
begin
  FObsMot := pObsMot;

  CheckField('ObsMot');
end;

function T120PED.GetPedBlo: Char;
begin
  Result := FPedBlo;
end;

procedure T120PED.SetPedBlo(const pPedBlo: Char);
begin
  FPedBlo := pPedBlo;

  CheckField('PedBlo');
end;

function T120PED.GetUsuBlo: Integer;
begin
  Result := FUsuBlo;
end;

procedure T120PED.SetUsuBlo(const pUsuBlo: Integer);
begin
  FUsuBlo := pUsuBlo;

  CheckField('UsuBlo');
end;

function T120PED.GetDatBlo: TDate;
begin
  Result := FDatBlo;
end;

procedure T120PED.SetDatBlo(const pDatBlo: TDate);
begin
  FDatBlo := pDatBlo;

  CheckField('DatBlo');
end;

function T120PED.GetHorBlo: Integer;
begin
  Result := FHorBlo;
end;

procedure T120PED.SetHorBlo(const pHorBlo: Integer);
begin
  FHorBlo := pHorBlo;

  CheckField('HorBlo');
end;

function T120PED.GetIndSig: Char;
begin
  Result := FIndSig;
end;

procedure T120PED.SetIndSig(const pIndSig: Char);
begin
  FIndSig := pIndSig;

  CheckField('IndSig');
end;

function T120PED.GetVerCal: Integer;
begin
  Result := FVerCal;
end;

procedure T120PED.SetVerCal(const pVerCal: Integer);
begin
  FVerCal := pVerCal;

  CheckField('VerCal');
end;

function T120PED.GetHorIni: Integer;
begin
  Result := FHorIni;
end;

procedure T120PED.SetHorIni(const pHorIni: Integer);
begin
  FHorIni := pHorIni;

  CheckField('HorIni');
end;

function T120PED.GetHorFim: Integer;
begin
  Result := FHorFim;
end;

procedure T120PED.SetHorFim(const pHorFim: Integer);
begin
  FHorFim := pHorFim;

  CheckField('HorFim');
end;

function T120PED.GetUsuGer: Integer;
begin
  Result := FUsuGer;
end;

procedure T120PED.SetUsuGer(const pUsuGer: Integer);
begin
  FUsuGer := pUsuGer;

  CheckField('UsuGer');
end;

function T120PED.GetDatGer: TDate;
begin
  Result := FDatGer;
end;

procedure T120PED.SetDatGer(const pDatGer: TDate);
begin
  FDatGer := pDatGer;

  CheckField('DatGer');
end;

function T120PED.GetHorGer: Integer;
begin
  Result := FHorGer;
end;

procedure T120PED.SetHorGer(const pHorGer: Integer);
begin
  FHorGer := pHorGer;

  CheckField('HorGer');
end;

function T120PED.GetPerFre: Double;
begin
  Result := FPerFre;
end;

procedure T120PED.SetPerFre(const pPerFre: Double);
begin
  FPerFre := pPerFre;

  CheckField('PerFre');
end;

function T120PED.GetPerSeg: Double;
begin
  Result := FPerSeg;
end;

procedure T120PED.SetPerSeg(const pPerSeg: Double);
begin
  FPerSeg := pPerSeg;

  CheckField('PerSeg');
end;

function T120PED.GetPerEmb: Double;
begin
  Result := FPerEmb;
end;

procedure T120PED.SetPerEmb(const pPerEmb: Double);
begin
  FPerEmb := pPerEmb;

  CheckField('PerEmb');
end;

function T120PED.GetPerEnc: Double;
begin
  Result := FPerEnc;
end;

procedure T120PED.SetPerEnc(const pPerEnc: Double);
begin
  FPerEnc := pPerEnc;

  CheckField('PerEnc');
end;

function T120PED.GetPerOut: Double;
begin
  Result := FPerOut;
end;

procedure T120PED.SetPerOut(const pPerOut: Double);
begin
  FPerOut := pPerOut;

  CheckField('PerOut');
end;

function T120PED.GetCodSac: Integer;
begin
  Result := FCodSac;
end;

procedure T120PED.SetCodSac(const pCodSac: Integer);
begin
  FCodSac := pCodSac;

  CheckField('CodSac');
end;

function T120PED.GetCodOpe: Integer;
begin
  Result := FCodOpe;
end;

procedure T120PED.SetCodOpe(const pCodOpe: Integer);
begin
  FCodOpe := pCodOpe;

  CheckField('CodOpe');
end;

function T120PED.GetCodVen: Integer;
begin
  Result := FCodVen;
end;

procedure T120PED.SetCodVen(const pCodVen: Integer);
begin
  FCodVen := pCodVen;

  CheckField('CodVen');
end;

function T120PED.GetPedPal: Integer;
begin
  Result := FPedPal;
end;

procedure T120PED.SetPedPal(const pPedPal: Integer);
begin
  FPedPal := pPedPal;

  CheckField('PedPal');
end;

function T120PED.GetAcePar: Char;
begin
  Result := FAcePar;
end;

procedure T120PED.SetAcePar(const pAcePar: Char);
begin
  FAcePar := pAcePar;

  CheckField('AcePar');
end;

function T120PED.GetPerOf1: Double;
begin
  Result := FPerOf1;
end;

procedure T120PED.SetPerOf1(const pPerOf1: Double);
begin
  FPerOf1 := pPerOf1;

  CheckField('PerOf1');
end;

function T120PED.GetPerOf2: Double;
begin
  Result := FPerOf2;
end;

procedure T120PED.SetPerOf2(const pPerOf2: Double);
begin
  FPerOf2 := pPerOf2;

  CheckField('PerOf2');
end;

function T120PED.GetUsuFec: Integer;
begin
  Result := FUsuFec;
end;

procedure T120PED.SetUsuFec(const pUsuFec: Integer);
begin
  FUsuFec := pUsuFec;

  CheckField('UsuFec');
end;

function T120PED.GetDatFec: TDate;
begin
  Result := FDatFec;
end;

procedure T120PED.SetDatFec(const pDatFec: TDate);
begin
  FDatFec := pDatFec;

  CheckField('DatFec');
end;

function T120PED.GetHorFec: Integer;
begin
  Result := FHorFec;
end;

procedure T120PED.SetHorFec(const pHorFec: Integer);
begin
  FHorFec := pHorFec;

  CheckField('HorFec');
end;

function T120PED.GetCliRel: Integer;
begin
  Result := FCliRel;
end;

procedure T120PED.SetCliRel(const pCliRel: Integer);
begin
  FCliRel := pCliRel;

  CheckField('CliRel');
end;

function T120PED.GetVlrBcl: Double;
begin
  Result := FVlrBcl;
end;

procedure T120PED.SetVlrBcl(const pVlrBcl: Double);
begin
  FVlrBcl := pVlrBcl;

  CheckField('VlrBcl');
end;

function T120PED.GetVlrCsl: Double;
begin
  Result := FVlrCsl;
end;

procedure T120PED.SetVlrCsl(const pVlrCsl: Double);
begin
  FVlrCsl := pVlrCsl;

  CheckField('VlrCsl');
end;

function T120PED.GetVlrBpt: Double;
begin
  Result := FVlrBpt;
end;

procedure T120PED.SetVlrBpt(const pVlrBpt: Double);
begin
  FVlrBpt := pVlrBpt;

  CheckField('VlrBpt');
end;

function T120PED.GetVlrPit: Double;
begin
  Result := FVlrPit;
end;

procedure T120PED.SetVlrPit(const pVlrPit: Double);
begin
  FVlrPit := pVlrPit;

  CheckField('VlrPit');
end;

function T120PED.GetVlrBct: Double;
begin
  Result := FVlrBct;
end;

procedure T120PED.SetVlrBct(const pVlrBct: Double);
begin
  FVlrBct := pVlrBct;

  CheckField('VlrBct');
end;

function T120PED.GetVlrCrt: Double;
begin
  Result := FVlrCrt;
end;

procedure T120PED.SetVlrCrt(const pVlrCrt: Double);
begin
  FVlrCrt := pVlrCrt;

  CheckField('VlrCrt');
end;

function T120PED.GetVlrBor: Double;
begin
  Result := FVlrBor;
end;

procedure T120PED.SetVlrBor(const pVlrBor: Double);
begin
  FVlrBor := pVlrBor;

  CheckField('VlrBor');
end;

function T120PED.GetVlrOur: Double;
begin
  Result := FVlrOur;
end;

procedure T120PED.SetVlrOur(const pVlrOur: Double);
begin
  FVlrOur := pVlrOur;

  CheckField('VlrOur');
end;

function T120PED.GetCodMar: string;
begin
  Result := FCodMar;
end;

procedure T120PED.SetCodMar(const pCodMar: string);
begin
  FCodMar := pCodMar;

  CheckField('CodMar');
end;

function T120PED.GetCodSro: string;
begin
  Result := FCodSro;
end;

procedure T120PED.SetCodSro(const pCodSro: string);
begin
  FCodSro := pCodSro;

  CheckField('CodSro');
end;

function T120PED.GetFilFat: Integer;
begin
  Result := FFilFat;
end;

procedure T120PED.SetFilFat(const pFilFat: Integer);
begin
  FFilFat := pFilFat;

  CheckField('FilFat');
end;

function T120PED.GetCodCdi: Integer;
begin
  Result := FCodCdi;
end;

procedure T120PED.SetCodCdi(const pCodCdi: Integer);
begin
  FCodCdi := pCodCdi;

  CheckField('CodCdi');
end;

function T120PED.GetCodLip: string;
begin
  Result := FCodLip;
end;

procedure T120PED.SetCodLip(const pCodLip: string);
begin
  FCodLip := pCodLip;

  CheckField('CodLip');
end;

function T120PED.GetCepFre: Integer;
begin
  Result := FCepFre;
end;

procedure T120PED.SetCepFre(const pCepFre: Integer);
begin
  FCepFre := pCepFre;

  CheckField('CepFre');
end;

function T120PED.GetVlrRis: Double;
begin
  Result := FVlrRis;
end;

procedure T120PED.SetVlrRis(const pVlrRis: Double);
begin
  FVlrRis := pVlrRis;

  CheckField('VlrRis');
end;

function T120PED.GetAnaEmb: Char;
begin
  Result := FAnaEmb;
end;

procedure T120PED.SetAnaEmb(const pAnaEmb: Char);
begin
  FAnaEmb := pAnaEmb;

  CheckField('AnaEmb');
end;

function T120PED.GetNumEmp: string;
begin
  Result := FNumEmp;
end;

procedure T120PED.SetNumEmp(const pNumEmp: string);
begin
  FNumEmp := pNumEmp;

  CheckField('NumEmp');
end;

function T120PED.GetQtdAne: Integer;
begin
  Result := FQtdAne;
end;

procedure T120PED.SetQtdAne(const pQtdAne: Integer);
begin
  FQtdAne := pQtdAne;

  CheckField('QtdAne');
end;

function T120PED.GetDatAge: TDate;
begin
  Result := FDatAge;
end;

procedure T120PED.SetDatAge(const pDatAge: TDate);
begin
  FDatAge := pDatAge;

  CheckField('DatAge');
end;

function T120PED.GetFilNco: Integer;
begin
  Result := FFilNco;
end;

procedure T120PED.SetFilNco(const pFilNco: Integer);
begin
  FFilNco := pFilNco;

  CheckField('FilNco');
end;

function T120PED.GetSnfNco: string;
begin
  Result := FSnfNco;
end;

procedure T120PED.SetSnfNco(const pSnfNco: string);
begin
  FSnfNco := pSnfNco;

  CheckField('SnfNco');
end;

function T120PED.GetNumNco: Integer;
begin
  Result := FNumNco;
end;

procedure T120PED.SetNumNco(const pNumNco: Integer);
begin
  FNumNco := pNumNco;

  CheckField('NumNco');
end;

function T120PED.GetExpWms: Integer;
begin
  Result := FExpWms;
end;

procedure T120PED.SetExpWms(const pExpWms: Integer);
begin
  FExpWms := pExpWms;

  CheckField('ExpWms');
end;

function T120PED.GetVlrBpf: Double;
begin
  Result := FVlrBpf;
end;

procedure T120PED.SetVlrBpf(const pVlrBpf: Double);
begin
  FVlrBpf := pVlrBpf;

  CheckField('VlrBpf');
end;

function T120PED.GetVlrPif: Double;
begin
  Result := FVlrPif;
end;

procedure T120PED.SetVlrPif(const pVlrPif: Double);
begin
  FVlrPif := pVlrPif;

  CheckField('VlrPif');
end;

function T120PED.GetVlrBcf: Double;
begin
  Result := FVlrBcf;
end;

procedure T120PED.SetVlrBcf(const pVlrBcf: Double);
begin
  FVlrBcf := pVlrBcf;

  CheckField('VlrBcf');
end;

function T120PED.GetVlrCff: Double;
begin
  Result := FVlrCff;
end;

procedure T120PED.SetVlrCff(const pVlrCff: Double);
begin
  FVlrCff := pVlrCff;

  CheckField('VlrCff');
end;

function T120PED.GetCodApc: Integer;
begin
  Result := FCodApc;
end;

procedure T120PED.SetCodApc(const pCodApc: Integer);
begin
  FCodApc := pCodApc;

  CheckField('CodApc');
end;

function T120PED.GetSomFre: Char;
begin
  Result := FSomFre;
end;

procedure T120PED.SetSomFre(const pSomFre: Char);
begin
  FSomFre := pSomFre;

  CheckField('SomFre');
end;

function T120PED.GetQtdItp: Integer;
begin
  Result := FQtdItp;
end;

procedure T120PED.SetQtdItp(const pQtdItp: Integer);
begin
  FQtdItp := pQtdItp;

  CheckField('QtdItp');
end;

function T120PED.GetQtdIts: Integer;
begin
  Result := FQtdIts;
end;

procedure T120PED.SetQtdIts(const pQtdIts: Integer);
begin
  FQtdIts := pQtdIts;

  CheckField('QtdIts');
end;

function T120PED.GetPerDs5: Double;
begin
  Result := FPerDs5;
end;

procedure T120PED.SetPerDs5(const pPerDs5: Double);
begin
  FPerDs5 := pPerDs5;

  CheckField('PerDs5');
end;

function T120PED.GetVlrDs5: Double;
begin
  Result := FVlrDs5;
end;

procedure T120PED.SetVlrDs5(const pVlrDs5: Double);
begin
  FVlrDs5 := pVlrDs5;

  CheckField('VlrDs5');
end;

function T120PED.GetRotAnx: Integer;
begin
  Result := FRotAnx;
end;

procedure T120PED.SetRotAnx(const pRotAnx: Integer);
begin
  FRotAnx := pRotAnx;

  CheckField('RotAnx');
end;

function T120PED.GetNumAnx: Integer;
begin
  Result := FNumAnx;
end;

procedure T120PED.SetNumAnx(const pNumAnx: Integer);
begin
  FNumAnx := pNumAnx;

  CheckField('NumAnx');
end;

function T120PED.GetNumNsu: Integer;
begin
  Result := FNumNsu;
end;

procedure T120PED.SetNumNsu(const pNumNsu: Integer);
begin
  FNumNsu := pNumNsu;

  CheckField('NumNsu');
end;

function T120PED.GetDatNsu: TDate;
begin
  Result := FDatNsu;
end;

procedure T120PED.SetDatNsu(const pDatNsu: TDate);
begin
  FDatNsu := pDatNsu;

  CheckField('DatNsu');
end;

function T120PED.GetHorNsu: Integer;
begin
  Result := FHorNsu;
end;

procedure T120PED.SetHorNsu(const pHorNsu: Integer);
begin
  FHorNsu := pHorNsu;

  CheckField('HorNsu');
end;

function T120PED.GetIndExp: Integer;
begin
  Result := FIndExp;
end;

procedure T120PED.SetIndExp(const pIndExp: Integer);
begin
  FIndExp := pIndExp;

  CheckField('IndExp');
end;

function T120PED.GetFatPed: Integer;
begin
  Result := FFatPed;
end;

procedure T120PED.SetFatPed(const pFatPed: Integer);
begin
  FFatPed := pFatPed;

  CheckField('FatPed');
end;

function T120PED.GetQtdBpf: Double;
begin
  Result := FQtdBpf;
end;

procedure T120PED.SetQtdBpf(const pQtdBpf: Double);
begin
  FQtdBpf := pQtdBpf;

  CheckField('QtdBpf');
end;

function T120PED.GetQtdBcf: Double;
begin
  Result := FQtdBcf;
end;

procedure T120PED.SetQtdBcf(const pQtdBcf: Double);
begin
  FQtdBcf := pQtdBcf;

  CheckField('QtdBcf');
end;

function T120PED.GetQtdBip: Double;
begin
  Result := FQtdBip;
end;

procedure T120PED.SetQtdBip(const pQtdBip: Double);
begin
  FQtdBip := pQtdBip;

  CheckField('QtdBip');
end;

function T120PED.GetNumCes: Integer;
begin
  Result := FNumCes;
end;

procedure T120PED.SetNumCes(const pNumCes: Integer);
begin
  FNumCes := pNumCes;

  CheckField('NumCes');
end;

function T120PED.GetVenCal: Char;
begin
  Result := FVenCal;
end;

procedure T120PED.SetVenCal(const pVenCal: Char);
begin
  FVenCal := pVenCal;

  CheckField('VenCal');
end;

function T120PED.GetDesDef: string;
begin
  Result := FDesDef;
end;

procedure T120PED.SetDesDef(const pDesDef: string);
begin
  FDesDef := pDesDef;

  CheckField('DesDef');
end;

function T120PED.GetAnoVei: string;
begin
  Result := FAnoVei;
end;

procedure T120PED.SetAnoVei(const pAnoVei: string);
begin
  FAnoVei := pAnoVei;

  CheckField('AnoVei');
end;

function T120PED.GetNumRen: string;
begin
  Result := FNumRen;
end;

procedure T120PED.SetNumRen(const pNumRen: string);
begin
  FNumRen := pNumRen;

  CheckField('NumRen');
end;

function T120PED.GetDesMod: string;
begin
  Result := FDesMod;
end;

procedure T120PED.SetDesMod(const pDesMod: string);
begin
  FDesMod := pDesMod;

  CheckField('DesMod');
end;

function T120PED.GetTipDav: Integer;
begin
  Result := FTipDav;
end;

procedure T120PED.SetTipDav(const pTipDav: Integer);
begin
  FTipDav := pTipDav;

  CheckField('TipDav');
end;

function T120PED.GetVlrEcf: Double;
begin
  Result := FVlrEcf;
end;

procedure T120PED.SetVlrEcf(const pVlrEcf: Double);
begin
  FVlrEcf := pVlrEcf;

  CheckField('VlrEcf');
end;

function T120PED.GetPerEcf: Double;
begin
  Result := FPerEcf;
end;

procedure T120PED.SetPerEcf(const pPerEcf: Double);
begin
  FPerEcf := pPerEcf;

  CheckField('PerEcf');
end;

function T120PED.GetTemAva: Char;
begin
  Result := FTemAva;
end;

procedure T120PED.SetTemAva(const pTemAva: Char);
begin
  FTemAva := pTemAva;

  CheckField('TemAva');
end;

function T120PED.GetCodTab: string;
begin
  Result := FCodTab;
end;

procedure T120PED.SetCodTab(const pCodTab: string);
begin
  FCodTab := pCodTab;

  CheckField('CodTab');
end;

function T120PED.GetSenApr: string;
begin
  Result := FSenApr;
end;

procedure T120PED.SetSenApr(const pSenApr: string);
begin
  FSenApr := pSenApr;

  CheckField('SenApr');
end;

function T120PED.GetUsuApr: Integer;
begin
  Result := FUsuApr;
end;

procedure T120PED.SetUsuApr(const pUsuApr: Integer);
begin
  FUsuApr := pUsuApr;

  CheckField('UsuApr');
end;

function T120PED.GetDatApr: TDate;
begin
  Result := FDatApr;
end;

procedure T120PED.SetDatApr(const pDatApr: TDate);
begin
  FDatApr := pDatApr;

  CheckField('DatApr');
end;

function T120PED.GetHorApr: Integer;
begin
  Result := FHorApr;
end;

procedure T120PED.SetHorApr(const pHorApr: Integer);
begin
  FHorApr := pHorApr;

  CheckField('HorApr');
end;

function T120PED.GetSitPac: Integer;
begin
  Result := FSitPac;
end;

procedure T120PED.SetSitPac(const pSitPac: Integer);
begin
  FSitPac := pSitPac;

  CheckField('SitPac');
end;

function T120PED.GetUsuPac: Integer;
begin
  Result := FUsuPac;
end;

procedure T120PED.SetUsuPac(const pUsuPac: Integer);
begin
  FUsuPac := pUsuPac;

  CheckField('UsuPac');
end;

function T120PED.GetQtdPac: Integer;
begin
  Result := FQtdPac;
end;

procedure T120PED.SetQtdPac(const pQtdPac: Integer);
begin
  FQtdPac := pQtdPac;

  CheckField('QtdPac');
end;

function T120PED.GetUSU_PedPrg: Char;
begin
  Result := FUSU_PedPrg;
end;

procedure T120PED.SetUSU_PedPrg(const pUSU_PedPrg: Char);
begin
  FUSU_PedPrg := pUSU_PedPrg;

  CheckField('USU_PedPrg');
end;

function T120PED.GetUSU_DatEnv: TDate;
begin
  Result := FUSU_DatEnv;
end;

procedure T120PED.SetUSU_DatEnv(const pUSU_DatEnv: TDate);
begin
  FUSU_DatEnv := pUSU_DatEnv;

  CheckField('USU_DatEnv');
end;

function T120PED.GetUSU_DatRet: TDate;
begin
  Result := FUSU_DatRet;
end;

procedure T120PED.SetUSU_DatRet(const pUSU_DatRet: TDate);
begin
  FUSU_DatRet := pUSU_DatRet;

  CheckField('USU_DatRet');
end;

function T120PED.GetUSU_RetCli: string;
begin
  Result := FUSU_RetCli;
end;

procedure T120PED.SetUSU_RetCli(const pUSU_RetCli: string);
begin
  FUSU_RetCli := pUSU_RetCli;

  CheckField('USU_RetCli');
end;

function T120PED.GetUSU_MotFec: Integer;
begin
  Result := FUSU_MotFec;
end;

procedure T120PED.SetUSU_MotFec(const pUSU_MotFec: Integer);
begin
  FUSU_MotFec := pUSU_MotFec;

  CheckField('USU_MotFec');
end;

function T120PED.GetUSU_QtdSep: Integer;
begin
  Result := FUSU_QtdSep;
end;

procedure T120PED.SetUSU_QtdSep(const pUSU_QtdSep: Integer);
begin
  FUSU_QtdSep := pUSU_QtdSep;

  CheckField('USU_QtdSep');
end;

function T120PED.GetUSU_DivExp: Char;
begin
  Result := FUSU_DivExp;
end;

procedure T120PED.SetUSU_DivExp(const pUSU_DivExp: Char);
begin
  FUSU_DivExp := pUSU_DivExp;

  CheckField('USU_DivExp');
end;

function T120PED.GetUSU_TemDiv: Char;
begin
  Result := FUSU_TemDiv;
end;

procedure T120PED.SetUSU_TemDiv(const pUSU_TemDiv: Char);
begin
  FUSU_TemDiv := pUSU_TemDiv;

  CheckField('USU_TemDiv');
end;

function T120PED.GetUSU_SepFin: Char;
begin
  Result := FUSU_SepFin;
end;

procedure T120PED.SetUSU_SepFin(const pUSU_SepFin: Char);
begin
  FUSU_SepFin := pUSU_SepFin;

  CheckField('USU_SepFin');
end;

function T120PED.GetUSU_RelSepImp: Char;
begin
  Result := FUSU_RelSepImp;
end;

procedure T120PED.SetUSU_RelSepImp(const pUSU_RelSepImp: Char);
begin
  FUSU_RelSepImp := pUSU_RelSepImp;

  CheckField('USU_RelSepImp');
end;

function T120PED.GetUSU_DatImp: TDate;
begin
  Result := FUSU_DatImp;
end;

procedure T120PED.SetUSU_DatImp(const pUSU_DatImp: TDate);
begin
  FUSU_DatImp := pUSU_DatImp;

  CheckField('USU_DatImp');
end;

function T120PED.GetUSU_HorImp: Integer;
begin
  Result := FUSU_HorImp;
end;

procedure T120PED.SetUSU_HorImp(const pUSU_HorImp: Integer);
begin
  FUSU_HorImp := pUSU_HorImp;

  CheckField('USU_HorImp');
end;

function T120PED.GetUSU_DatRec: TDate;
begin
  Result := FUSU_DatRec;
end;

procedure T120PED.SetUSU_DatRec(const pUSU_DatRec: TDate);
begin
  FUSU_DatRec := pUSU_DatRec;

  CheckField('USU_DatRec');
end;

function T120PED.GetUSU_HorRec: Integer;
begin
  Result := FUSU_HorRec;
end;

procedure T120PED.SetUSU_HorRec(const pUSU_HorRec: Integer);
begin
  FUSU_HorRec := pUSU_HorRec;

  CheckField('USU_HorRec');
end;

function T120PED.GetUSU_FrmRec: Integer;
begin
  Result := FUSU_FrmRec;
end;

procedure T120PED.SetUSU_FrmRec(const pUSU_FrmRec: Integer);
begin
  FUSU_FrmRec := pUSU_FrmRec;

  CheckField('USU_FrmRec');
end;

function T120PED.GetUSU_HorEnv: Integer;
begin
  Result := FUSU_HorEnv;
end;

procedure T120PED.SetUSU_HorEnv(const pUSU_HorEnv: Integer);
begin
  FUSU_HorEnv := pUSU_HorEnv;

  CheckField('USU_HorEnv');
end;

function T120PED.GetUSU_ParGer: string;
begin
  Result := FUSU_ParGer;
end;

procedure T120PED.SetUSU_ParGer(const pUSU_ParGer: string);
begin
  FUSU_ParGer := pUSU_ParGer;

  CheckField('USU_ParGer');
end;

function T120PED.GetUSU_TipTrf: Char;
begin
  Result := FUSU_TipTrf;
end;

procedure T120PED.SetUSU_TipTrf(const pUSU_TipTrf: Char);
begin
  FUSU_TipTrf := pUSU_TipTrf;

  CheckField('USU_TipTrf');
end;

function T120PED.GetUSU_TipVen: Integer;
begin
  Result := FUSU_TipVen;
end;

procedure T120PED.SetUSU_TipVen(const pUSU_TipVen: Integer);
begin
  FUSU_TipVen := pUSU_TipVen;

  CheckField('USU_TipVen');
end;

function T120PED.GetUSU_DesBen: string;
begin
  Result := FUSU_DesBen;
end;

procedure T120PED.SetUSU_DesBen(const pUSU_DesBen: string);
begin
  FUSU_DesBen := pUSU_DesBen;

  CheckField('USU_DesBen');
end;

function T120PED.GetUSU_UsuSep: Integer;
begin
  Result := FUSU_UsuSep;
end;

procedure T120PED.SetUSU_UsuSep(const pUSU_UsuSep: Integer);
begin
  FUSU_UsuSep := pUSU_UsuSep;

  CheckField('USU_UsuSep');
end;

function T120PED.GetUSU_DatSep: TDate;
begin
  Result := FUSU_DatSep;
end;

procedure T120PED.SetUSU_DatSep(const pUSU_DatSep: TDate);
begin
  FUSU_DatSep := pUSU_DatSep;

  CheckField('USU_DatSep');
end;

function T120PED.GetUSU_HorSep: Integer;
begin
  Result := FUSU_HorSep;
end;

procedure T120PED.SetUSU_HorSep(const pUSU_HorSep: Integer);
begin
  FUSU_HorSep := pUSU_HorSep;

  CheckField('USU_HorSep');
end;

function T120PED.GetUSU_NumCad: Integer;
begin
  Result := FUSU_NumCad;
end;

procedure T120PED.SetUSU_NumCad(const pUSU_NumCad: Integer);
begin
  FUSU_NumCad := pUSU_NumCad;

  CheckField('USU_NumCad');
end;

function T120PED.GetUSU_CanAut: TDate;
begin
  Result := FUSU_CanAut;
end;

procedure T120PED.SetUSU_CanAut(const pUSU_CanAut: TDate);
begin
  FUSU_CanAut := pUSU_CanAut;

  CheckField('USU_CanAut');
end;

function T120PED.GetUSU_NumOptCRM: Integer;
begin
  Result := FUSU_NumOptCRM;
end;

procedure T120PED.SetUSU_NumOptCRM(const pUSU_NumOptCRM: Integer);
begin
  FUSU_NumOptCRM := pUSU_NumOptCRM;

  CheckField('USU_NumOptCRM');
end;

function T120PED.GetUSU_PedFec: Char;
begin
  Result := FUSU_PedFec;
end;

procedure T120PED.SetUSU_PedFec(const pUSU_PedFec: Char);
begin
  FUSU_PedFec := pUSU_PedFec;

  CheckField('USU_PedFec');
end;

function T120PED.GetUSU_DatPrv: TDate;
begin
  Result := FUSU_DatPrv;
end;

procedure T120PED.SetUSU_DatPrv(const pUSU_DatPrv: TDate);
begin
  FUSU_DatPrv := pUSU_DatPrv;

  CheckField('USU_DatPrv');
end;

function T120PED.GetUSU_CodTip: string;
begin
  Result := FUSU_CodTip;
end;

procedure T120PED.SetUSU_CodTip(const pUSU_CodTip: string);
begin
  FUSU_CodTip := pUSU_CodTip;

  CheckField('USU_CodTip');
end;

function T120PED.GetUSU_TaxCnv: Double;
begin
  Result := FUSU_TaxCnv;
end;

procedure T120PED.SetUSU_TaxCnv(const pUSU_TaxCnv: Double);
begin
  FUSU_TaxCnv := pUSU_TaxCnv;

  CheckField('USU_TaxCnv');
end;

function T120PED.GetUSU_TnsFat: string;
begin
  Result := FUSU_TnsFat;
end;

procedure T120PED.SetUSU_TnsFat(const pUSU_TnsFat: string);
begin
  FUSU_TnsFat := pUSU_TnsFat;

  CheckField('USU_TnsFat');
end;

function T120PED.GetCodEmpOLD: Integer;
begin
  Result := FCodEmpOLD;
end;

procedure T120PED.SetCodEmpOLD(const pCodEmp: Integer);
begin
  FCodEmpOLD := pCodEmp;
end;

function T120PED.GetCodFilOLD: Integer;
begin
  Result := FCodFilOLD;
end;

procedure T120PED.SetCodFilOLD(const pCodFil: Integer);
begin
  FCodFilOLD := pCodFil;
end;

function T120PED.GetNumPedOLD: Integer;
begin
  Result := FNumPedOLD;
end;

procedure T120PED.SetNumPedOLD(const pNumPed: Integer);
begin
  FNumPedOLD := pNumPed;
end;

function T120PED.GetTipPedOLD: Integer;
begin
  Result := FTipPedOLD;
end;

procedure T120PED.SetTipPedOLD(const pTipPed: Integer);
begin
  FTipPedOLD := pTipPed;
end;

function T120PED.GetPrcPedOLD: Integer;
begin
  Result := FPrcPedOLD;
end;

procedure T120PED.SetPrcPedOLD(const pPrcPed: Integer);
begin
  FPrcPedOLD := pPrcPed;
end;

function T120PED.GetTnsProOLD: string;
begin
  Result := FTnsProOLD;
end;

procedure T120PED.SetTnsProOLD(const pTnsPro: string);
begin
  FTnsProOLD := pTnsPro;
end;

function T120PED.GetTnsSerOLD: string;
begin
  Result := FTnsSerOLD;
end;

procedure T120PED.SetTnsSerOLD(const pTnsSer: string);
begin
  FTnsSerOLD := pTnsSer;
end;

function T120PED.GetDatEmiOLD: TDate;
begin
  Result := FDatEmiOLD;
end;

procedure T120PED.SetDatEmiOLD(const pDatEmi: TDate);
begin
  FDatEmiOLD := pDatEmi;
end;

function T120PED.GetHorEmiOLD: Integer;
begin
  Result := FHorEmiOLD;
end;

procedure T120PED.SetHorEmiOLD(const pHorEmi: Integer);
begin
  FHorEmiOLD := pHorEmi;
end;

function T120PED.GetDatPrvOLD: TDate;
begin
  Result := FDatPrvOLD;
end;

procedure T120PED.SetDatPrvOLD(const pDatPrv: TDate);
begin
  FDatPrvOLD := pDatPrv;
end;

function T120PED.GetHorPrvOLD: Integer;
begin
  Result := FHorPrvOLD;
end;

procedure T120PED.SetHorPrvOLD(const pHorPrv: Integer);
begin
  FHorPrvOLD := pHorPrv;
end;

function T120PED.GetObsPedOLD: string;
begin
  Result := FObsPedOLD;
end;

procedure T120PED.SetObsPedOLD(const pObsPed: string);
begin
  FObsPedOLD := pObsPed;
end;

function T120PED.GetCodCliOLD: Integer;
begin
  Result := FCodCliOLD;
end;

procedure T120PED.SetCodCliOLD(const pCodCli: Integer);
begin
  FCodCliOLD := pCodCli;
end;

function T120PED.GetCatCliOLD: Integer;
begin
  Result := FCatCliOLD;
end;

procedure T120PED.SetCatCliOLD(const pCatCli: Integer);
begin
  FCatCliOLD := pCatCli;
end;

function T120PED.GetQtdVpfOLD: Integer;
begin
  Result := FQtdVpfOLD;
end;

procedure T120PED.SetQtdVpfOLD(const pQtdVpf: Integer);
begin
  FQtdVpfOLD := pQtdVpf;
end;

function T120PED.GetQtdMfpOLD: Integer;
begin
  Result := FQtdMfpOLD;
end;

procedure T120PED.SetQtdMfpOLD(const pQtdMfp: Integer);
begin
  FQtdMfpOLD := pQtdMfp;
end;

function T120PED.GetIndAgrOLD: Char;
begin
  Result := FIndAgrOLD;
end;

procedure T120PED.SetIndAgrOLD(const pIndAgr: Char);
begin
  FIndAgrOLD := pIndAgr;
end;

function T120PED.GetSeqEntOLD: Integer;
begin
  Result := FSeqEntOLD;
end;

procedure T120PED.SetSeqEntOLD(const pSeqEnt: Integer);
begin
  FSeqEntOLD := pSeqEnt;
end;

function T120PED.GetSeqCobOLD: Integer;
begin
  Result := FSeqCobOLD;
end;

procedure T120PED.SetSeqCobOLD(const pSeqCob: Integer);
begin
  FSeqCobOLD := pSeqCob;
end;

function T120PED.GetSeqCtoOLD: Integer;
begin
  Result := FSeqCtoOLD;
end;

procedure T120PED.SetSeqCtoOLD(const pSeqCto: Integer);
begin
  FSeqCtoOLD := pSeqCto;
end;

function T120PED.GetPedCliOLD: string;
begin
  Result := FPedCliOLD;
end;

procedure T120PED.SetPedCliOLD(const pPedCli: string);
begin
  FPedCliOLD := pPedCli;
end;

function T120PED.GetCodRoeOLD: string;
begin
  Result := FCodRoeOLD;
end;

procedure T120PED.SetCodRoeOLD(const pCodRoe: string);
begin
  FCodRoeOLD := pCodRoe;
end;

function T120PED.GetSeqRoeOLD: Integer;
begin
  Result := FSeqRoeOLD;
end;

procedure T120PED.SetSeqRoeOLD(const pSeqRoe: Integer);
begin
  FSeqRoeOLD := pSeqRoe;
end;

function T120PED.GetCodRepOLD: Integer;
begin
  Result := FCodRepOLD;
end;

procedure T120PED.SetCodRepOLD(const pCodRep: Integer);
begin
  FCodRepOLD := pCodRep;
end;

function T120PED.GetCodMoeOLD: string;
begin
  Result := FCodMoeOLD;
end;

procedure T120PED.SetCodMoeOLD(const pCodMoe: string);
begin
  FCodMoeOLD := pCodMoe;
end;

function T120PED.GetCodMcpOLD: string;
begin
  Result := FCodMcpOLD;
end;

procedure T120PED.SetCodMcpOLD(const pCodMcp: string);
begin
  FCodMcpOLD := pCodMcp;
end;

function T120PED.GetDatMfpOLD: TDate;
begin
  Result := FDatMfpOLD;
end;

procedure T120PED.SetDatMfpOLD(const pDatMfp: TDate);
begin
  FDatMfpOLD := pDatMfp;
end;

function T120PED.GetCotMfpOLD: Double;
begin
  Result := FCotMfpOLD;
end;

procedure T120PED.SetCotMfpOLD(const pCotMfp: Double);
begin
  FCotMfpOLD := pCotMfp;
end;

function T120PED.GetDatMoeOLD: TDate;
begin
  Result := FDatMoeOLD;
end;

procedure T120PED.SetDatMoeOLD(const pDatMoe: TDate);
begin
  FDatMoeOLD := pDatMoe;
end;

function T120PED.GetCotMoeOLD: Double;
begin
  Result := FCotMoeOLD;
end;

procedure T120PED.SetCotMoeOLD(const pCotMoe: Double);
begin
  FCotMoeOLD := pCotMoe;
end;

function T120PED.GetFecMoeOLD: Char;
begin
  Result := FFecMoeOLD;
end;

procedure T120PED.SetFecMoeOLD(const pFecMoe: Char);
begin
  FFecMoeOLD := pFecMoe;
end;

function T120PED.GetCodFcrOLD: string;
begin
  Result := FCodFcrOLD;
end;

procedure T120PED.SetCodFcrOLD(const pCodFcr: string);
begin
  FCodFcrOLD := pCodFcr;
end;

function T120PED.GetDatFcrOLD: TDate;
begin
  Result := FDatFcrOLD;
end;

procedure T120PED.SetDatFcrOLD(const pDatFcr: TDate);
begin
  FDatFcrOLD := pDatFcr;
end;

function T120PED.GetCodCpgOLD: string;
begin
  Result := FCodCpgOLD;
end;

procedure T120PED.SetCodCpgOLD(const pCodCpg: string);
begin
  FCodCpgOLD := pCodCpg;
end;

function T120PED.GetPgtAntOLD: Char;
begin
  Result := FPgtAntOLD;
end;

procedure T120PED.SetPgtAntOLD(const pPgtAnt: Char);
begin
  FPgtAntOLD := pPgtAnt;
end;

function T120PED.GetCodFpgOLD: Integer;
begin
  Result := FCodFpgOLD;
end;

procedure T120PED.SetCodFpgOLD(const pCodFpg: Integer);
begin
  FCodFpgOLD := pCodFpg;
end;

function T120PED.GetQtdAbeOLD: Double;
begin
  Result := FQtdAbeOLD;
end;

procedure T120PED.SetQtdAbeOLD(const pQtdAbe: Double);
begin
  FQtdAbeOLD := pQtdAbe;
end;

function T120PED.GetQtdAenOLD: Double;
begin
  Result := FQtdAenOLD;
end;

procedure T120PED.SetQtdAenOLD(const pQtdAen: Double);
begin
  FQtdAenOLD := pQtdAen;
end;

function T120PED.GetCodTraOLD: Integer;
begin
  Result := FCodTraOLD;
end;

procedure T120PED.SetCodTraOLD(const pCodTra: Integer);
begin
  FCodTraOLD := pCodTra;
end;

function T120PED.GetCodRedOLD: Integer;
begin
  Result := FCodRedOLD;
end;

procedure T120PED.SetCodRedOLD(const pCodRed: Integer);
begin
  FCodRedOLD := pCodRed;
end;

function T120PED.GetCodViaOLD: string;
begin
  Result := FCodViaOLD;
end;

procedure T120PED.SetCodViaOLD(const pCodVia: string);
begin
  FCodViaOLD := pCodVia;
end;

function T120PED.GetPlaVeiOLD: string;
begin
  Result := FPlaVeiOLD;
end;

procedure T120PED.SetPlaVeiOLD(const pPlaVei: string);
begin
  FPlaVeiOLD := pPlaVei;
end;

function T120PED.GetVlrFumOLD: Double;
begin
  Result := FVlrFumOLD;
end;

procedure T120PED.SetVlrFumOLD(const pVlrFum: Double);
begin
  FVlrFumOLD := pVlrFum;
end;

function T120PED.GetQtdFreOLD: Double;
begin
  Result := FQtdFreOLD;
end;

procedure T120PED.SetQtdFreOLD(const pQtdFre: Double);
begin
  FQtdFreOLD := pQtdFre;
end;

function T120PED.GetForFreOLD: Integer;
begin
  Result := FForFreOLD;
end;

procedure T120PED.SetForFreOLD(const pForFre: Integer);
begin
  FForFreOLD := pForFre;
end;

function T120PED.GetVlrFreOLD: Double;
begin
  Result := FVlrFreOLD;
end;

procedure T120PED.SetVlrFreOLD(const pVlrFre: Double);
begin
  FVlrFreOLD := pVlrFre;
end;

function T120PED.GetCifFobOLD: Char;
begin
  Result := FCifFobOLD;
end;

procedure T120PED.SetCifFobOLD(const pCifFob: Char);
begin
  FCifFobOLD := pCifFob;
end;

function T120PED.GetVlrSegOLD: Double;
begin
  Result := FVlrSegOLD;
end;

procedure T120PED.SetVlrSegOLD(const pVlrSeg: Double);
begin
  FVlrSegOLD := pVlrSeg;
end;

function T120PED.GetVlrEmbOLD: Double;
begin
  Result := FVlrEmbOLD;
end;

procedure T120PED.SetVlrEmbOLD(const pVlrEmb: Double);
begin
  FVlrEmbOLD := pVlrEmb;
end;

function T120PED.GetVlrEncOLD: Double;
begin
  Result := FVlrEncOLD;
end;

procedure T120PED.SetVlrEncOLD(const pVlrEnc: Double);
begin
  FVlrEncOLD := pVlrEnc;
end;

function T120PED.GetVlrOutOLD: Double;
begin
  Result := FVlrOutOLD;
end;

procedure T120PED.SetVlrOutOLD(const pVlrOut: Double);
begin
  FVlrOutOLD := pVlrOut;
end;

function T120PED.GetVlrDarOLD: Double;
begin
  Result := FVlrDarOLD;
end;

procedure T120PED.SetVlrDarOLD(const pVlrDar: Double);
begin
  FVlrDarOLD := pVlrDar;
end;

function T120PED.GetVlrFrdOLD: Double;
begin
  Result := FVlrFrdOLD;
end;

procedure T120PED.SetVlrFrdOLD(const pVlrFrd: Double);
begin
  FVlrFrdOLD := pVlrFrd;
end;

function T120PED.GetVlrOudOLD: Double;
begin
  Result := FVlrOudOLD;
end;

procedure T120PED.SetVlrOudOLD(const pVlrOud: Double);
begin
  FVlrOudOLD := pVlrOud;
end;

function T120PED.GetPerDs1OLD: Double;
begin
  Result := FPerDs1OLD;
end;

procedure T120PED.SetPerDs1OLD(const pPerDs1: Double);
begin
  FPerDs1OLD := pPerDs1;
end;

function T120PED.GetPerDs2OLD: Double;
begin
  Result := FPerDs2OLD;
end;

procedure T120PED.SetPerDs2OLD(const pPerDs2: Double);
begin
  FPerDs2OLD := pPerDs2;
end;

function T120PED.GetPerDs3OLD: Double;
begin
  Result := FPerDs3OLD;
end;

procedure T120PED.SetPerDs3OLD(const pPerDs3: Double);
begin
  FPerDs3OLD := pPerDs3;
end;

function T120PED.GetPerDs4OLD: Double;
begin
  Result := FPerDs4OLD;
end;

procedure T120PED.SetPerDs4OLD(const pPerDs4: Double);
begin
  FPerDs4OLD := pPerDs4;
end;

function T120PED.GetVlrBprOLD: Double;
begin
  Result := FVlrBprOLD;
end;

procedure T120PED.SetVlrBprOLD(const pVlrBpr: Double);
begin
  FVlrBprOLD := pVlrBpr;
end;

function T120PED.GetVlrDprOLD: Double;
begin
  Result := FVlrDprOLD;
end;

procedure T120PED.SetVlrDprOLD(const pVlrDpr: Double);
begin
  FVlrDprOLD := pVlrDpr;
end;

function T120PED.GetVlrBseOLD: Double;
begin
  Result := FVlrBseOLD;
end;

procedure T120PED.SetVlrBseOLD(const pVlrBse: Double);
begin
  FVlrBseOLD := pVlrBse;
end;

function T120PED.GetVlrDseOLD: Double;
begin
  Result := FVlrDseOLD;
end;

procedure T120PED.SetVlrDseOLD(const pVlrDse: Double);
begin
  FVlrDseOLD := pVlrDse;
end;

function T120PED.GetVlrDs1OLD: Double;
begin
  Result := FVlrDs1OLD;
end;

procedure T120PED.SetVlrDs1OLD(const pVlrDs1: Double);
begin
  FVlrDs1OLD := pVlrDs1;
end;

function T120PED.GetVlrDs2OLD: Double;
begin
  Result := FVlrDs2OLD;
end;

procedure T120PED.SetVlrDs2OLD(const pVlrDs2: Double);
begin
  FVlrDs2OLD := pVlrDs2;
end;

function T120PED.GetVlrDs3OLD: Double;
begin
  Result := FVlrDs3OLD;
end;

procedure T120PED.SetVlrDs3OLD(const pVlrDs3: Double);
begin
  FVlrDs3OLD := pVlrDs3;
end;

function T120PED.GetVlrDs4OLD: Double;
begin
  Result := FVlrDs4OLD;
end;

procedure T120PED.SetVlrDs4OLD(const pVlrDs4: Double);
begin
  FVlrDs4OLD := pVlrDs4;
end;

function T120PED.GetVlrOfeOLD: Double;
begin
  Result := FVlrOfeOLD;
end;

procedure T120PED.SetVlrOfeOLD(const pVlrOfe: Double);
begin
  FVlrOfeOLD := pVlrOfe;
end;

function T120PED.GetVlrDzfOLD: Double;
begin
  Result := FVlrDzfOLD;
end;

procedure T120PED.SetVlrDzfOLD(const pVlrDzf: Double);
begin
  FVlrDzfOLD := pVlrDzf;
end;

function T120PED.GetVlrBipOLD: Double;
begin
  Result := FVlrBipOLD;
end;

procedure T120PED.SetVlrBipOLD(const pVlrBip: Double);
begin
  FVlrBipOLD := pVlrBip;
end;

function T120PED.GetVlrIpiOLD: Double;
begin
  Result := FVlrIpiOLD;
end;

procedure T120PED.SetVlrIpiOLD(const pVlrIpi: Double);
begin
  FVlrIpiOLD := pVlrIpi;
end;

function T120PED.GetVlrBicOLD: Double;
begin
  Result := FVlrBicOLD;
end;

procedure T120PED.SetVlrBicOLD(const pVlrBic: Double);
begin
  FVlrBicOLD := pVlrBic;
end;

function T120PED.GetVlrIcmOLD: Double;
begin
  Result := FVlrIcmOLD;
end;

procedure T120PED.SetVlrIcmOLD(const pVlrIcm: Double);
begin
  FVlrIcmOLD := pVlrIcm;
end;

function T120PED.GetVlrBsiOLD: Double;
begin
  Result := FVlrBsiOLD;
end;

procedure T120PED.SetVlrBsiOLD(const pVlrBsi: Double);
begin
  FVlrBsiOLD := pVlrBsi;
end;

function T120PED.GetVlrSicOLD: Double;
begin
  Result := FVlrSicOLD;
end;

procedure T120PED.SetVlrSicOLD(const pVlrSic: Double);
begin
  FVlrSicOLD := pVlrSic;
end;

function T120PED.GetVlrBspOLD: Double;
begin
  Result := FVlrBspOLD;
end;

procedure T120PED.SetVlrBspOLD(const pVlrBsp: Double);
begin
  FVlrBspOLD := pVlrBsp;
end;

function T120PED.GetVlrStpOLD: Double;
begin
  Result := FVlrStpOLD;
end;

procedure T120PED.SetVlrStpOLD(const pVlrStp: Double);
begin
  FVlrStpOLD := pVlrStp;
end;

function T120PED.GetVlrBscOLD: Double;
begin
  Result := FVlrBscOLD;
end;

procedure T120PED.SetVlrBscOLD(const pVlrBsc: Double);
begin
  FVlrBscOLD := pVlrBsc;
end;

function T120PED.GetVlrStcOLD: Double;
begin
  Result := FVlrStcOLD;
end;

procedure T120PED.SetVlrStcOLD(const pVlrStc: Double);
begin
  FVlrStcOLD := pVlrStc;
end;

function T120PED.GetVlrBisOLD: Double;
begin
  Result := FVlrBisOLD;
end;

procedure T120PED.SetVlrBisOLD(const pVlrBis: Double);
begin
  FVlrBisOLD := pVlrBis;
end;

function T120PED.GetVlrIssOLD: Double;
begin
  Result := FVlrIssOLD;
end;

procedure T120PED.SetVlrIssOLD(const pVlrIss: Double);
begin
  FVlrIssOLD := pVlrIss;
end;

function T120PED.GetVlrBirOLD: Double;
begin
  Result := FVlrBirOLD;
end;

procedure T120PED.SetVlrBirOLD(const pVlrBir: Double);
begin
  FVlrBirOLD := pVlrBir;
end;

function T120PED.GetVlrIrfOLD: Double;
begin
  Result := FVlrIrfOLD;
end;

procedure T120PED.SetVlrIrfOLD(const pVlrIrf: Double);
begin
  FVlrIrfOLD := pVlrIrf;
end;

function T120PED.GetVlrBinOLD: Double;
begin
  Result := FVlrBinOLD;
end;

procedure T120PED.SetVlrBinOLD(const pVlrBin: Double);
begin
  FVlrBinOLD := pVlrBin;
end;

function T120PED.GetVlrInsOLD: Double;
begin
  Result := FVlrInsOLD;
end;

procedure T120PED.SetVlrInsOLD(const pVlrIns: Double);
begin
  FVlrInsOLD := pVlrIns;
end;

function T120PED.GetVlrBcoOLD: Double;
begin
  Result := FVlrBcoOLD;
end;

procedure T120PED.SetVlrBcoOLD(const pVlrBco: Double);
begin
  FVlrBcoOLD := pVlrBco;
end;

function T120PED.GetVlrComOLD: Double;
begin
  Result := FVlrComOLD;
end;

procedure T120PED.SetVlrComOLD(const pVlrCom: Double);
begin
  FVlrComOLD := pVlrCom;
end;

function T120PED.GetVlrLprOLD: Double;
begin
  Result := FVlrLprOLD;
end;

procedure T120PED.SetVlrLprOLD(const pVlrLpr: Double);
begin
  FVlrLprOLD := pVlrLpr;
end;

function T120PED.GetVlrLseOLD: Double;
begin
  Result := FVlrLseOLD;
end;

procedure T120PED.SetVlrLseOLD(const pVlrLse: Double);
begin
  FVlrLseOLD := pVlrLse;
end;

function T120PED.GetVlrLouOLD: Double;
begin
  Result := FVlrLouOLD;
end;

procedure T120PED.SetVlrLouOLD(const pVlrLou: Double);
begin
  FVlrLouOLD := pVlrLou;
end;

function T120PED.GetVlrLiqOLD: Double;
begin
  Result := FVlrLiqOLD;
end;

procedure T120PED.SetVlrLiqOLD(const pVlrLiq: Double);
begin
  FVlrLiqOLD := pVlrLiq;
end;

function T120PED.GetVlrFinOLD: Double;
begin
  Result := FVlrFinOLD;
end;

procedure T120PED.SetVlrFinOLD(const pVlrFin: Double);
begin
  FVlrFinOLD := pVlrFin;
end;

function T120PED.GetVlrAdtOLD: Double;
begin
  Result := FVlrAdtOLD;
end;

procedure T120PED.SetVlrAdtOLD(const pVlrAdt: Double);
begin
  FVlrAdtOLD := pVlrAdt;
end;

function T120PED.GetQtdOriOLD: Double;
begin
  Result := FQtdOriOLD;
end;

procedure T120PED.SetQtdOriOLD(const pQtdOri: Double);
begin
  FQtdOriOLD := pQtdOri;
end;

function T120PED.GetVlrOriOLD: Double;
begin
  Result := FVlrOriOLD;
end;

procedure T120PED.SetVlrOriOLD(const pVlrOri: Double);
begin
  FVlrOriOLD := pVlrOri;
end;

function T120PED.GetTemParOLD: Char;
begin
  Result := FTemParOLD;
end;

procedure T120PED.SetTemParOLD(const pTemPar: Char);
begin
  FTemParOLD := pTemPar;
end;

function T120PED.GetCodPorOLD: string;
begin
  Result := FCodPorOLD;
end;

procedure T120PED.SetCodPorOLD(const pCodPor: string);
begin
  FCodPorOLD := pCodPor;
end;

function T120PED.GetCodCrtOLD: string;
begin
  Result := FCodCrtOLD;
end;

procedure T120PED.SetCodCrtOLD(const pCodCrt: string);
begin
  FCodCrtOLD := pCodCrt;
end;

function T120PED.GetSitPedOLD: Integer;
begin
  Result := FSitPedOLD;
end;

procedure T120PED.SetSitPedOLD(const pSitPed: Integer);
begin
  FSitPedOLD := pSitPed;
end;

function T120PED.GetCodMotOLD: Integer;
begin
  Result := FCodMotOLD;
end;

procedure T120PED.SetCodMotOLD(const pCodMot: Integer);
begin
  FCodMotOLD := pCodMot;
end;

function T120PED.GetObsMotOLD: string;
begin
  Result := FObsMotOLD;
end;

procedure T120PED.SetObsMotOLD(const pObsMot: string);
begin
  FObsMotOLD := pObsMot;
end;

function T120PED.GetPedBloOLD: Char;
begin
  Result := FPedBloOLD;
end;

procedure T120PED.SetPedBloOLD(const pPedBlo: Char);
begin
  FPedBloOLD := pPedBlo;
end;

function T120PED.GetUsuBloOLD: Integer;
begin
  Result := FUsuBloOLD;
end;

procedure T120PED.SetUsuBloOLD(const pUsuBlo: Integer);
begin
  FUsuBloOLD := pUsuBlo;
end;

function T120PED.GetDatBloOLD: TDate;
begin
  Result := FDatBloOLD;
end;

procedure T120PED.SetDatBloOLD(const pDatBlo: TDate);
begin
  FDatBloOLD := pDatBlo;
end;

function T120PED.GetHorBloOLD: Integer;
begin
  Result := FHorBloOLD;
end;

procedure T120PED.SetHorBloOLD(const pHorBlo: Integer);
begin
  FHorBloOLD := pHorBlo;
end;

function T120PED.GetIndSigOLD: Char;
begin
  Result := FIndSigOLD;
end;

procedure T120PED.SetIndSigOLD(const pIndSig: Char);
begin
  FIndSigOLD := pIndSig;
end;

function T120PED.GetVerCalOLD: Integer;
begin
  Result := FVerCalOLD;
end;

procedure T120PED.SetVerCalOLD(const pVerCal: Integer);
begin
  FVerCalOLD := pVerCal;
end;

function T120PED.GetHorIniOLD: Integer;
begin
  Result := FHorIniOLD;
end;

procedure T120PED.SetHorIniOLD(const pHorIni: Integer);
begin
  FHorIniOLD := pHorIni;
end;

function T120PED.GetHorFimOLD: Integer;
begin
  Result := FHorFimOLD;
end;

procedure T120PED.SetHorFimOLD(const pHorFim: Integer);
begin
  FHorFimOLD := pHorFim;
end;

function T120PED.GetUsuGerOLD: Integer;
begin
  Result := FUsuGerOLD;
end;

procedure T120PED.SetUsuGerOLD(const pUsuGer: Integer);
begin
  FUsuGerOLD := pUsuGer;
end;

function T120PED.GetDatGerOLD: TDate;
begin
  Result := FDatGerOLD;
end;

procedure T120PED.SetDatGerOLD(const pDatGer: TDate);
begin
  FDatGerOLD := pDatGer;
end;

function T120PED.GetHorGerOLD: Integer;
begin
  Result := FHorGerOLD;
end;

procedure T120PED.SetHorGerOLD(const pHorGer: Integer);
begin
  FHorGerOLD := pHorGer;
end;

function T120PED.GetPerFreOLD: Double;
begin
  Result := FPerFreOLD;
end;

procedure T120PED.SetPerFreOLD(const pPerFre: Double);
begin
  FPerFreOLD := pPerFre;
end;

function T120PED.GetPerSegOLD: Double;
begin
  Result := FPerSegOLD;
end;

procedure T120PED.SetPerSegOLD(const pPerSeg: Double);
begin
  FPerSegOLD := pPerSeg;
end;

function T120PED.GetPerEmbOLD: Double;
begin
  Result := FPerEmbOLD;
end;

procedure T120PED.SetPerEmbOLD(const pPerEmb: Double);
begin
  FPerEmbOLD := pPerEmb;
end;

function T120PED.GetPerEncOLD: Double;
begin
  Result := FPerEncOLD;
end;

procedure T120PED.SetPerEncOLD(const pPerEnc: Double);
begin
  FPerEncOLD := pPerEnc;
end;

function T120PED.GetPerOutOLD: Double;
begin
  Result := FPerOutOLD;
end;

procedure T120PED.SetPerOutOLD(const pPerOut: Double);
begin
  FPerOutOLD := pPerOut;
end;

function T120PED.GetCodSacOLD: Integer;
begin
  Result := FCodSacOLD;
end;

procedure T120PED.SetCodSacOLD(const pCodSac: Integer);
begin
  FCodSacOLD := pCodSac;
end;

function T120PED.GetCodOpeOLD: Integer;
begin
  Result := FCodOpeOLD;
end;

procedure T120PED.SetCodOpeOLD(const pCodOpe: Integer);
begin
  FCodOpeOLD := pCodOpe;
end;

function T120PED.GetCodVenOLD: Integer;
begin
  Result := FCodVenOLD;
end;

procedure T120PED.SetCodVenOLD(const pCodVen: Integer);
begin
  FCodVenOLD := pCodVen;
end;

function T120PED.GetPedPalOLD: Integer;
begin
  Result := FPedPalOLD;
end;

procedure T120PED.SetPedPalOLD(const pPedPal: Integer);
begin
  FPedPalOLD := pPedPal;
end;

function T120PED.GetAceParOLD: Char;
begin
  Result := FAceParOLD;
end;

procedure T120PED.SetAceParOLD(const pAcePar: Char);
begin
  FAceParOLD := pAcePar;
end;

function T120PED.GetPerOf1OLD: Double;
begin
  Result := FPerOf1OLD;
end;

procedure T120PED.SetPerOf1OLD(const pPerOf1: Double);
begin
  FPerOf1OLD := pPerOf1;
end;

function T120PED.GetPerOf2OLD: Double;
begin
  Result := FPerOf2OLD;
end;

procedure T120PED.SetPerOf2OLD(const pPerOf2: Double);
begin
  FPerOf2OLD := pPerOf2;
end;

function T120PED.GetUsuFecOLD: Integer;
begin
  Result := FUsuFecOLD;
end;

procedure T120PED.SetUsuFecOLD(const pUsuFec: Integer);
begin
  FUsuFecOLD := pUsuFec;
end;

function T120PED.GetDatFecOLD: TDate;
begin
  Result := FDatFecOLD;
end;

procedure T120PED.SetDatFecOLD(const pDatFec: TDate);
begin
  FDatFecOLD := pDatFec;
end;

function T120PED.GetHorFecOLD: Integer;
begin
  Result := FHorFecOLD;
end;

procedure T120PED.SetHorFecOLD(const pHorFec: Integer);
begin
  FHorFecOLD := pHorFec;
end;

function T120PED.GetCliRelOLD: Integer;
begin
  Result := FCliRelOLD;
end;

procedure T120PED.SetCliRelOLD(const pCliRel: Integer);
begin
  FCliRelOLD := pCliRel;
end;

function T120PED.GetVlrBclOLD: Double;
begin
  Result := FVlrBclOLD;
end;

procedure T120PED.SetVlrBclOLD(const pVlrBcl: Double);
begin
  FVlrBclOLD := pVlrBcl;
end;

function T120PED.GetVlrCslOLD: Double;
begin
  Result := FVlrCslOLD;
end;

procedure T120PED.SetVlrCslOLD(const pVlrCsl: Double);
begin
  FVlrCslOLD := pVlrCsl;
end;

function T120PED.GetVlrBptOLD: Double;
begin
  Result := FVlrBptOLD;
end;

procedure T120PED.SetVlrBptOLD(const pVlrBpt: Double);
begin
  FVlrBptOLD := pVlrBpt;
end;

function T120PED.GetVlrPitOLD: Double;
begin
  Result := FVlrPitOLD;
end;

procedure T120PED.SetVlrPitOLD(const pVlrPit: Double);
begin
  FVlrPitOLD := pVlrPit;
end;

function T120PED.GetVlrBctOLD: Double;
begin
  Result := FVlrBctOLD;
end;

procedure T120PED.SetVlrBctOLD(const pVlrBct: Double);
begin
  FVlrBctOLD := pVlrBct;
end;

function T120PED.GetVlrCrtOLD: Double;
begin
  Result := FVlrCrtOLD;
end;

procedure T120PED.SetVlrCrtOLD(const pVlrCrt: Double);
begin
  FVlrCrtOLD := pVlrCrt;
end;

function T120PED.GetVlrBorOLD: Double;
begin
  Result := FVlrBorOLD;
end;

procedure T120PED.SetVlrBorOLD(const pVlrBor: Double);
begin
  FVlrBorOLD := pVlrBor;
end;

function T120PED.GetVlrOurOLD: Double;
begin
  Result := FVlrOurOLD;
end;

procedure T120PED.SetVlrOurOLD(const pVlrOur: Double);
begin
  FVlrOurOLD := pVlrOur;
end;

function T120PED.GetCodMarOLD: string;
begin
  Result := FCodMarOLD;
end;

procedure T120PED.SetCodMarOLD(const pCodMar: string);
begin
  FCodMarOLD := pCodMar;
end;

function T120PED.GetCodSroOLD: string;
begin
  Result := FCodSroOLD;
end;

procedure T120PED.SetCodSroOLD(const pCodSro: string);
begin
  FCodSroOLD := pCodSro;
end;

function T120PED.GetFilFatOLD: Integer;
begin
  Result := FFilFatOLD;
end;

procedure T120PED.SetFilFatOLD(const pFilFat: Integer);
begin
  FFilFatOLD := pFilFat;
end;

function T120PED.GetCodCdiOLD: Integer;
begin
  Result := FCodCdiOLD;
end;

procedure T120PED.SetCodCdiOLD(const pCodCdi: Integer);
begin
  FCodCdiOLD := pCodCdi;
end;

function T120PED.GetCodLipOLD: string;
begin
  Result := FCodLipOLD;
end;

procedure T120PED.SetCodLipOLD(const pCodLip: string);
begin
  FCodLipOLD := pCodLip;
end;

function T120PED.GetCepFreOLD: Integer;
begin
  Result := FCepFreOLD;
end;

procedure T120PED.SetCepFreOLD(const pCepFre: Integer);
begin
  FCepFreOLD := pCepFre;
end;

function T120PED.GetVlrRisOLD: Double;
begin
  Result := FVlrRisOLD;
end;

procedure T120PED.SetVlrRisOLD(const pVlrRis: Double);
begin
  FVlrRisOLD := pVlrRis;
end;

function T120PED.GetAnaEmbOLD: Char;
begin
  Result := FAnaEmbOLD;
end;

procedure T120PED.SetAnaEmbOLD(const pAnaEmb: Char);
begin
  FAnaEmbOLD := pAnaEmb;
end;

function T120PED.GetNumEmpOLD: string;
begin
  Result := FNumEmpOLD;
end;

procedure T120PED.SetNumEmpOLD(const pNumEmp: string);
begin
  FNumEmpOLD := pNumEmp;
end;

function T120PED.GetQtdAneOLD: Integer;
begin
  Result := FQtdAneOLD;
end;

procedure T120PED.SetQtdAneOLD(const pQtdAne: Integer);
begin
  FQtdAneOLD := pQtdAne;
end;

function T120PED.GetDatAgeOLD: TDate;
begin
  Result := FDatAgeOLD;
end;

procedure T120PED.SetDatAgeOLD(const pDatAge: TDate);
begin
  FDatAgeOLD := pDatAge;
end;

function T120PED.GetFilNcoOLD: Integer;
begin
  Result := FFilNcoOLD;
end;

procedure T120PED.SetFilNcoOLD(const pFilNco: Integer);
begin
  FFilNcoOLD := pFilNco;
end;

function T120PED.GetSnfNcoOLD: string;
begin
  Result := FSnfNcoOLD;
end;

procedure T120PED.SetSnfNcoOLD(const pSnfNco: string);
begin
  FSnfNcoOLD := pSnfNco;
end;

function T120PED.GetNumNcoOLD: Integer;
begin
  Result := FNumNcoOLD;
end;

procedure T120PED.SetNumNcoOLD(const pNumNco: Integer);
begin
  FNumNcoOLD := pNumNco;
end;

function T120PED.GetExpWmsOLD: Integer;
begin
  Result := FExpWmsOLD;
end;

procedure T120PED.SetExpWmsOLD(const pExpWms: Integer);
begin
  FExpWmsOLD := pExpWms;
end;

function T120PED.GetVlrBpfOLD: Double;
begin
  Result := FVlrBpfOLD;
end;

procedure T120PED.SetVlrBpfOLD(const pVlrBpf: Double);
begin
  FVlrBpfOLD := pVlrBpf;
end;

function T120PED.GetVlrPifOLD: Double;
begin
  Result := FVlrPifOLD;
end;

procedure T120PED.SetVlrPifOLD(const pVlrPif: Double);
begin
  FVlrPifOLD := pVlrPif;
end;

function T120PED.GetVlrBcfOLD: Double;
begin
  Result := FVlrBcfOLD;
end;

procedure T120PED.SetVlrBcfOLD(const pVlrBcf: Double);
begin
  FVlrBcfOLD := pVlrBcf;
end;

function T120PED.GetVlrCffOLD: Double;
begin
  Result := FVlrCffOLD;
end;

procedure T120PED.SetVlrCffOLD(const pVlrCff: Double);
begin
  FVlrCffOLD := pVlrCff;
end;

function T120PED.GetCodApcOLD: Integer;
begin
  Result := FCodApcOLD;
end;

procedure T120PED.SetCodApcOLD(const pCodApc: Integer);
begin
  FCodApcOLD := pCodApc;
end;

function T120PED.GetSomFreOLD: Char;
begin
  Result := FSomFreOLD;
end;

procedure T120PED.SetSomFreOLD(const pSomFre: Char);
begin
  FSomFreOLD := pSomFre;
end;

function T120PED.GetQtdItpOLD: Integer;
begin
  Result := FQtdItpOLD;
end;

procedure T120PED.SetQtdItpOLD(const pQtdItp: Integer);
begin
  FQtdItpOLD := pQtdItp;
end;

function T120PED.GetQtdItsOLD: Integer;
begin
  Result := FQtdItsOLD;
end;

procedure T120PED.SetQtdItsOLD(const pQtdIts: Integer);
begin
  FQtdItsOLD := pQtdIts;
end;

function T120PED.GetPerDs5OLD: Double;
begin
  Result := FPerDs5OLD;
end;

procedure T120PED.SetPerDs5OLD(const pPerDs5: Double);
begin
  FPerDs5OLD := pPerDs5;
end;

function T120PED.GetVlrDs5OLD: Double;
begin
  Result := FVlrDs5OLD;
end;

procedure T120PED.SetVlrDs5OLD(const pVlrDs5: Double);
begin
  FVlrDs5OLD := pVlrDs5;
end;

function T120PED.GetRotAnxOLD: Integer;
begin
  Result := FRotAnxOLD;
end;

procedure T120PED.SetRotAnxOLD(const pRotAnx: Integer);
begin
  FRotAnxOLD := pRotAnx;
end;

function T120PED.GetNumAnxOLD: Integer;
begin
  Result := FNumAnxOLD;
end;

procedure T120PED.SetNumAnxOLD(const pNumAnx: Integer);
begin
  FNumAnxOLD := pNumAnx;
end;

function T120PED.GetNumNsuOLD: Integer;
begin
  Result := FNumNsuOLD;
end;

procedure T120PED.SetNumNsuOLD(const pNumNsu: Integer);
begin
  FNumNsuOLD := pNumNsu;
end;

function T120PED.GetDatNsuOLD: TDate;
begin
  Result := FDatNsuOLD;
end;

procedure T120PED.SetDatNsuOLD(const pDatNsu: TDate);
begin
  FDatNsuOLD := pDatNsu;
end;

function T120PED.GetHorNsuOLD: Integer;
begin
  Result := FHorNsuOLD;
end;

procedure T120PED.SetHorNsuOLD(const pHorNsu: Integer);
begin
  FHorNsuOLD := pHorNsu;
end;

function T120PED.GetIndExpOLD: Integer;
begin
  Result := FIndExpOLD;
end;

procedure T120PED.SetIndExpOLD(const pIndExp: Integer);
begin
  FIndExpOLD := pIndExp;
end;

function T120PED.GetFatPedOLD: Integer;
begin
  Result := FFatPedOLD;
end;

procedure T120PED.SetFatPedOLD(const pFatPed: Integer);
begin
  FFatPedOLD := pFatPed;
end;

function T120PED.GetQtdBpfOLD: Double;
begin
  Result := FQtdBpfOLD;
end;

procedure T120PED.SetQtdBpfOLD(const pQtdBpf: Double);
begin
  FQtdBpfOLD := pQtdBpf;
end;

function T120PED.GetQtdBcfOLD: Double;
begin
  Result := FQtdBcfOLD;
end;

procedure T120PED.SetQtdBcfOLD(const pQtdBcf: Double);
begin
  FQtdBcfOLD := pQtdBcf;
end;

function T120PED.GetQtdBipOLD: Double;
begin
  Result := FQtdBipOLD;
end;

procedure T120PED.SetQtdBipOLD(const pQtdBip: Double);
begin
  FQtdBipOLD := pQtdBip;
end;

function T120PED.GetNumCesOLD: Integer;
begin
  Result := FNumCesOLD;
end;

procedure T120PED.SetNumCesOLD(const pNumCes: Integer);
begin
  FNumCesOLD := pNumCes;
end;

function T120PED.GetVenCalOLD: Char;
begin
  Result := FVenCalOLD;
end;

procedure T120PED.SetVenCalOLD(const pVenCal: Char);
begin
  FVenCalOLD := pVenCal;
end;

function T120PED.GetDesDefOLD: string;
begin
  Result := FDesDefOLD;
end;

procedure T120PED.SetDesDefOLD(const pDesDef: string);
begin
  FDesDefOLD := pDesDef;
end;

function T120PED.GetAnoVeiOLD: string;
begin
  Result := FAnoVeiOLD;
end;

procedure T120PED.SetAnoVeiOLD(const pAnoVei: string);
begin
  FAnoVeiOLD := pAnoVei;
end;

function T120PED.GetNumRenOLD: string;
begin
  Result := FNumRenOLD;
end;

procedure T120PED.SetNumRenOLD(const pNumRen: string);
begin
  FNumRenOLD := pNumRen;
end;

function T120PED.GetDesModOLD: string;
begin
  Result := FDesModOLD;
end;

procedure T120PED.SetDesModOLD(const pDesMod: string);
begin
  FDesModOLD := pDesMod;
end;

function T120PED.GetTipDavOLD: Integer;
begin
  Result := FTipDavOLD;
end;

procedure T120PED.SetTipDavOLD(const pTipDav: Integer);
begin
  FTipDavOLD := pTipDav;
end;

function T120PED.GetVlrEcfOLD: Double;
begin
  Result := FVlrEcfOLD;
end;

procedure T120PED.SetVlrEcfOLD(const pVlrEcf: Double);
begin
  FVlrEcfOLD := pVlrEcf;
end;

function T120PED.GetPerEcfOLD: Double;
begin
  Result := FPerEcfOLD;
end;

procedure T120PED.SetPerEcfOLD(const pPerEcf: Double);
begin
  FPerEcfOLD := pPerEcf;
end;

function T120PED.GetTemAvaOLD: Char;
begin
  Result := FTemAvaOLD;
end;

procedure T120PED.SetTemAvaOLD(const pTemAva: Char);
begin
  FTemAvaOLD := pTemAva;
end;

function T120PED.GetCodTabOLD: string;
begin
  Result := FCodTabOLD;
end;

procedure T120PED.SetCodTabOLD(const pCodTab: string);
begin
  FCodTabOLD := pCodTab;
end;

function T120PED.GetSenAprOLD: string;
begin
  Result := FSenAprOLD;
end;

procedure T120PED.SetSenAprOLD(const pSenApr: string);
begin
  FSenAprOLD := pSenApr;
end;

function T120PED.GetUsuAprOLD: Integer;
begin
  Result := FUsuAprOLD;
end;

procedure T120PED.SetUsuAprOLD(const pUsuApr: Integer);
begin
  FUsuAprOLD := pUsuApr;
end;

function T120PED.GetDatAprOLD: TDate;
begin
  Result := FDatAprOLD;
end;

procedure T120PED.SetDatAprOLD(const pDatApr: TDate);
begin
  FDatAprOLD := pDatApr;
end;

function T120PED.GetHorAprOLD: Integer;
begin
  Result := FHorAprOLD;
end;

procedure T120PED.SetHorAprOLD(const pHorApr: Integer);
begin
  FHorAprOLD := pHorApr;
end;

function T120PED.GetSitPacOLD: Integer;
begin
  Result := FSitPacOLD;
end;

procedure T120PED.SetSitPacOLD(const pSitPac: Integer);
begin
  FSitPacOLD := pSitPac;
end;

function T120PED.GetUsuPacOLD: Integer;
begin
  Result := FUsuPacOLD;
end;

procedure T120PED.SetUsuPacOLD(const pUsuPac: Integer);
begin
  FUsuPacOLD := pUsuPac;
end;

function T120PED.GetQtdPacOLD: Integer;
begin
  Result := FQtdPacOLD;
end;

procedure T120PED.SetQtdPacOLD(const pQtdPac: Integer);
begin
  FQtdPacOLD := pQtdPac;
end;

function T120PED.GetUSU_PedPrgOLD: Char;
begin
  Result := FUSU_PedPrgOLD;
end;

procedure T120PED.SetUSU_PedPrgOLD(const pUSU_PedPrg: Char);
begin
  FUSU_PedPrgOLD := pUSU_PedPrg;
end;

function T120PED.GetUSU_DatEnvOLD: TDate;
begin
  Result := FUSU_DatEnvOLD;
end;

procedure T120PED.SetUSU_DatEnvOLD(const pUSU_DatEnv: TDate);
begin
  FUSU_DatEnvOLD := pUSU_DatEnv;
end;

function T120PED.GetUSU_DatRetOLD: TDate;
begin
  Result := FUSU_DatRetOLD;
end;

procedure T120PED.SetUSU_DatRetOLD(const pUSU_DatRet: TDate);
begin
  FUSU_DatRetOLD := pUSU_DatRet;
end;

function T120PED.GetUSU_RetCliOLD: string;
begin
  Result := FUSU_RetCliOLD;
end;

procedure T120PED.SetUSU_RetCliOLD(const pUSU_RetCli: string);
begin
  FUSU_RetCliOLD := pUSU_RetCli;
end;

function T120PED.GetUSU_MotFecOLD: Integer;
begin
  Result := FUSU_MotFecOLD;
end;

procedure T120PED.SetUSU_MotFecOLD(const pUSU_MotFec: Integer);
begin
  FUSU_MotFecOLD := pUSU_MotFec;
end;

function T120PED.GetUSU_QtdSepOLD: Integer;
begin
  Result := FUSU_QtdSepOLD;
end;

procedure T120PED.SetUSU_QtdSepOLD(const pUSU_QtdSep: Integer);
begin
  FUSU_QtdSepOLD := pUSU_QtdSep;
end;

function T120PED.GetUSU_DivExpOLD: Char;
begin
  Result := FUSU_DivExpOLD;
end;

procedure T120PED.SetUSU_DivExpOLD(const pUSU_DivExp: Char);
begin
  FUSU_DivExpOLD := pUSU_DivExp;
end;

function T120PED.GetUSU_TemDivOLD: Char;
begin
  Result := FUSU_TemDivOLD;
end;

procedure T120PED.SetUSU_TemDivOLD(const pUSU_TemDiv: Char);
begin
  FUSU_TemDivOLD := pUSU_TemDiv;
end;

function T120PED.GetUSU_SepFinOLD: Char;
begin
  Result := FUSU_SepFinOLD;
end;

procedure T120PED.SetUSU_SepFinOLD(const pUSU_SepFin: Char);
begin
  FUSU_SepFinOLD := pUSU_SepFin;
end;

function T120PED.GetUSU_RelSepImpOLD: Char;
begin
  Result := FUSU_RelSepImpOLD;
end;

procedure T120PED.SetUSU_RelSepImpOLD(const pUSU_RelSepImp: Char);
begin
  FUSU_RelSepImpOLD := pUSU_RelSepImp;
end;

function T120PED.GetUSU_DatImpOLD: TDate;
begin
  Result := FUSU_DatImpOLD;
end;

procedure T120PED.SetUSU_DatImpOLD(const pUSU_DatImp: TDate);
begin
  FUSU_DatImpOLD := pUSU_DatImp;
end;

function T120PED.GetUSU_HorImpOLD: Integer;
begin
  Result := FUSU_HorImpOLD;
end;

procedure T120PED.SetUSU_HorImpOLD(const pUSU_HorImp: Integer);
begin
  FUSU_HorImpOLD := pUSU_HorImp;
end;

function T120PED.GetUSU_DatRecOLD: TDate;
begin
  Result := FUSU_DatRecOLD;
end;

procedure T120PED.SetUSU_DatRecOLD(const pUSU_DatRec: TDate);
begin
  FUSU_DatRecOLD := pUSU_DatRec;
end;

function T120PED.GetUSU_HorRecOLD: Integer;
begin
  Result := FUSU_HorRecOLD;
end;

procedure T120PED.SetUSU_HorRecOLD(const pUSU_HorRec: Integer);
begin
  FUSU_HorRecOLD := pUSU_HorRec;
end;

function T120PED.GetUSU_FrmRecOLD: Integer;
begin
  Result := FUSU_FrmRecOLD;
end;

procedure T120PED.SetUSU_FrmRecOLD(const pUSU_FrmRec: Integer);
begin
  FUSU_FrmRecOLD := pUSU_FrmRec;
end;

function T120PED.GetUSU_HorEnvOLD: Integer;
begin
  Result := FUSU_HorEnvOLD;
end;

procedure T120PED.SetUSU_HorEnvOLD(const pUSU_HorEnv: Integer);
begin
  FUSU_HorEnvOLD := pUSU_HorEnv;
end;

function T120PED.GetUSU_ParGerOLD: string;
begin
  Result := FUSU_ParGerOLD;
end;

procedure T120PED.SetUSU_ParGerOLD(const pUSU_ParGer: string);
begin
  FUSU_ParGerOLD := pUSU_ParGer;
end;

function T120PED.GetUSU_TipTrfOLD: Char;
begin
  Result := FUSU_TipTrfOLD;
end;

procedure T120PED.SetUSU_TipTrfOLD(const pUSU_TipTrf: Char);
begin
  FUSU_TipTrfOLD := pUSU_TipTrf;
end;

function T120PED.GetUSU_TipVenOLD: Integer;
begin
  Result := FUSU_TipVenOLD;
end;

procedure T120PED.SetUSU_TipVenOLD(const pUSU_TipVen: Integer);
begin
  FUSU_TipVenOLD := pUSU_TipVen;
end;

function T120PED.GetUSU_DesBenOLD: string;
begin
  Result := FUSU_DesBenOLD;
end;

procedure T120PED.SetUSU_DesBenOLD(const pUSU_DesBen: string);
begin
  FUSU_DesBenOLD := pUSU_DesBen;
end;

function T120PED.GetUSU_UsuSepOLD: Integer;
begin
  Result := FUSU_UsuSepOLD;
end;

procedure T120PED.SetUSU_UsuSepOLD(const pUSU_UsuSep: Integer);
begin
  FUSU_UsuSepOLD := pUSU_UsuSep;
end;

function T120PED.GetUSU_DatSepOLD: TDate;
begin
  Result := FUSU_DatSepOLD;
end;

procedure T120PED.SetUSU_DatSepOLD(const pUSU_DatSep: TDate);
begin
  FUSU_DatSepOLD := pUSU_DatSep;
end;

function T120PED.GetUSU_HorSepOLD: Integer;
begin
  Result := FUSU_HorSepOLD;
end;

procedure T120PED.SetUSU_HorSepOLD(const pUSU_HorSep: Integer);
begin
  FUSU_HorSepOLD := pUSU_HorSep;
end;

function T120PED.GetUSU_NumCadOLD: Integer;
begin
  Result := FUSU_NumCadOLD;
end;

procedure T120PED.SetUSU_NumCadOLD(const pUSU_NumCad: Integer);
begin
  FUSU_NumCadOLD := pUSU_NumCad;
end;

function T120PED.GetUSU_CanAutOLD: TDate;
begin
  Result := FUSU_CanAutOLD;
end;

procedure T120PED.SetUSU_CanAutOLD(const pUSU_CanAut: TDate);
begin
  FUSU_CanAutOLD := pUSU_CanAut;
end;

function T120PED.GetUSU_NumOptCRMOLD: Integer;
begin
  Result := FUSU_NumOptCRMOLD;
end;

procedure T120PED.SetUSU_NumOptCRMOLD(const pUSU_NumOptCRM: Integer);
begin
  FUSU_NumOptCRMOLD := pUSU_NumOptCRM;
end;

function T120PED.GetUSU_PedFecOLD: Char;
begin
  Result := FUSU_PedFecOLD;
end;

procedure T120PED.SetUSU_PedFecOLD(const pUSU_PedFec: Char);
begin
  FUSU_PedFecOLD := pUSU_PedFec;
end;

function T120PED.GetUSU_DatPrvOLD: TDate;
begin
  Result := FUSU_DatPrvOLD;
end;

procedure T120PED.SetUSU_DatPrvOLD(const pUSU_DatPrv: TDate);
begin
  FUSU_DatPrvOLD := pUSU_DatPrv;
end;

function T120PED.GetUSU_CodTipOLD: string;
begin
  Result := FUSU_CodTipOLD;
end;

procedure T120PED.SetUSU_CodTipOLD(const pUSU_CodTip: string);
begin
  FUSU_CodTipOLD := pUSU_CodTip;
end;

function T120PED.GetUSU_TaxCnvOLD: Double;
begin
  Result := FUSU_TaxCnvOLD;
end;

procedure T120PED.SetUSU_TaxCnvOLD(const pUSU_TaxCnv: Double);
begin
  FUSU_TaxCnvOLD := pUSU_TaxCnv;
end;

function T120PED.GetUSU_TnsFatOLD: string;
begin
  Result := FUSU_TnsFatOLD;
end;

procedure T120PED.SetUSU_TnsFatOLD(const pUSU_TnsFat: string);
begin
  FUSU_TnsFatOLD := pUSU_TnsFat;
end;

procedure T120PED.Registros_OLD();
begin
  FCodEmpOLD := FCodEmp;
  FCodFilOLD := FCodFil;
  FNumPedOLD := FNumPed;
  FTipPedOLD := FTipPed;
  FPrcPedOLD := FPrcPed;
  FTnsProOLD := FTnsPro;
  FTnsSerOLD := FTnsSer;
  FDatEmiOLD := FDatEmi;
  FHorEmiOLD := FHorEmi;
  FDatPrvOLD := FDatPrv;
  FHorPrvOLD := FHorPrv;
  FObsPedOLD := FObsPed;
  FCodCliOLD := FCodCli;
  FCatCliOLD := FCatCli;
  FQtdVpfOLD := FQtdVpf;
  FQtdMfpOLD := FQtdMfp;
  FIndAgrOLD := FIndAgr;
  FSeqEntOLD := FSeqEnt;
  FSeqCobOLD := FSeqCob;
  FSeqCtoOLD := FSeqCto;
  FPedCliOLD := FPedCli;
  FCodRoeOLD := FCodRoe;
  FSeqRoeOLD := FSeqRoe;
  FCodRepOLD := FCodRep;
  FCodMoeOLD := FCodMoe;
  FCodMcpOLD := FCodMcp;
  FDatMfpOLD := FDatMfp;
  FCotMfpOLD := FCotMfp;
  FDatMoeOLD := FDatMoe;
  FCotMoeOLD := FCotMoe;
  FFecMoeOLD := FFecMoe;
  FCodFcrOLD := FCodFcr;
  FDatFcrOLD := FDatFcr;
  FCodCpgOLD := FCodCpg;
  FPgtAntOLD := FPgtAnt;
  FCodFpgOLD := FCodFpg;
  FQtdAbeOLD := FQtdAbe;
  FQtdAenOLD := FQtdAen;
  FCodTraOLD := FCodTra;
  FCodRedOLD := FCodRed;
  FCodViaOLD := FCodVia;
  FPlaVeiOLD := FPlaVei;
  FVlrFumOLD := FVlrFum;
  FQtdFreOLD := FQtdFre;
  FForFreOLD := FForFre;
  FVlrFreOLD := FVlrFre;
  FCifFobOLD := FCifFob;
  FVlrSegOLD := FVlrSeg;
  FVlrEmbOLD := FVlrEmb;
  FVlrEncOLD := FVlrEnc;
  FVlrOutOLD := FVlrOut;
  FVlrDarOLD := FVlrDar;
  FVlrFrdOLD := FVlrFrd;
  FVlrOudOLD := FVlrOud;
  FPerDs1OLD := FPerDs1;
  FPerDs2OLD := FPerDs2;
  FPerDs3OLD := FPerDs3;
  FPerDs4OLD := FPerDs4;
  FVlrBprOLD := FVlrBpr;
  FVlrDprOLD := FVlrDpr;
  FVlrBseOLD := FVlrBse;
  FVlrDseOLD := FVlrDse;
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
  FVlrBcoOLD := FVlrBco;
  FVlrComOLD := FVlrCom;
  FVlrLprOLD := FVlrLpr;
  FVlrLseOLD := FVlrLse;
  FVlrLouOLD := FVlrLou;
  FVlrLiqOLD := FVlrLiq;
  FVlrFinOLD := FVlrFin;
  FVlrAdtOLD := FVlrAdt;
  FQtdOriOLD := FQtdOri;
  FVlrOriOLD := FVlrOri;
  FTemParOLD := FTemPar;
  FCodPorOLD := FCodPor;
  FCodCrtOLD := FCodCrt;
  FSitPedOLD := FSitPed;
  FCodMotOLD := FCodMot;
  FObsMotOLD := FObsMot;
  FPedBloOLD := FPedBlo;
  FUsuBloOLD := FUsuBlo;
  FDatBloOLD := FDatBlo;
  FHorBloOLD := FHorBlo;
  FIndSigOLD := FIndSig;
  FVerCalOLD := FVerCal;
  FHorIniOLD := FHorIni;
  FHorFimOLD := FHorFim;
  FUsuGerOLD := FUsuGer;
  FDatGerOLD := FDatGer;
  FHorGerOLD := FHorGer;
  FPerFreOLD := FPerFre;
  FPerSegOLD := FPerSeg;
  FPerEmbOLD := FPerEmb;
  FPerEncOLD := FPerEnc;
  FPerOutOLD := FPerOut;
  FCodSacOLD := FCodSac;
  FCodOpeOLD := FCodOpe;
  FCodVenOLD := FCodVen;
  FPedPalOLD := FPedPal;
  FAceParOLD := FAcePar;
  FPerOf1OLD := FPerOf1;
  FPerOf2OLD := FPerOf2;
  FUsuFecOLD := FUsuFec;
  FDatFecOLD := FDatFec;
  FHorFecOLD := FHorFec;
  FCliRelOLD := FCliRel;
  FVlrBclOLD := FVlrBcl;
  FVlrCslOLD := FVlrCsl;
  FVlrBptOLD := FVlrBpt;
  FVlrPitOLD := FVlrPit;
  FVlrBctOLD := FVlrBct;
  FVlrCrtOLD := FVlrCrt;
  FVlrBorOLD := FVlrBor;
  FVlrOurOLD := FVlrOur;
  FCodMarOLD := FCodMar;
  FCodSroOLD := FCodSro;
  FFilFatOLD := FFilFat;
  FCodCdiOLD := FCodCdi;
  FCodLipOLD := FCodLip;
  FCepFreOLD := FCepFre;
  FVlrRisOLD := FVlrRis;
  FAnaEmbOLD := FAnaEmb;
  FNumEmpOLD := FNumEmp;
  FQtdAneOLD := FQtdAne;
  FDatAgeOLD := FDatAge;
  FFilNcoOLD := FFilNco;
  FSnfNcoOLD := FSnfNco;
  FNumNcoOLD := FNumNco;
  FExpWmsOLD := FExpWms;
  FVlrBpfOLD := FVlrBpf;
  FVlrPifOLD := FVlrPif;
  FVlrBcfOLD := FVlrBcf;
  FVlrCffOLD := FVlrCff;
  FCodApcOLD := FCodApc;
  FSomFreOLD := FSomFre;
  FQtdItpOLD := FQtdItp;
  FQtdItsOLD := FQtdIts;
  FPerDs5OLD := FPerDs5;
  FVlrDs5OLD := FVlrDs5;
  FRotAnxOLD := FRotAnx;
  FNumAnxOLD := FNumAnx;
  FNumNsuOLD := FNumNsu;
  FDatNsuOLD := FDatNsu;
  FHorNsuOLD := FHorNsu;
  FIndExpOLD := FIndExp;
  FFatPedOLD := FFatPed;
  FQtdBpfOLD := FQtdBpf;
  FQtdBcfOLD := FQtdBcf;
  FQtdBipOLD := FQtdBip;
  FNumCesOLD := FNumCes;
  FVenCalOLD := FVenCal;
  FDesDefOLD := FDesDef;
  FAnoVeiOLD := FAnoVei;
  FNumRenOLD := FNumRen;
  FDesModOLD := FDesMod;
  FTipDavOLD := FTipDav;
  FVlrEcfOLD := FVlrEcf;
  FPerEcfOLD := FPerEcf;
  FTemAvaOLD := FTemAva;
  FCodTabOLD := FCodTab;
  FSenAprOLD := FSenApr;
  FUsuAprOLD := FUsuApr;
  FDatAprOLD := FDatApr;
  FHorAprOLD := FHorApr;
  FSitPacOLD := FSitPac;
  FUsuPacOLD := FUsuPac;
  FQtdPacOLD := FQtdPac;
  FUSU_PedPrgOLD := FUSU_PedPrg;
  FUSU_DatEnvOLD := FUSU_DatEnv;
  FUSU_DatRetOLD := FUSU_DatRet;
  FUSU_RetCliOLD := FUSU_RetCli;
  FUSU_MotFecOLD := FUSU_MotFec;
  FUSU_QtdSepOLD := FUSU_QtdSep;
  FUSU_DivExpOLD := FUSU_DivExp;
  FUSU_TemDivOLD := FUSU_TemDiv;
  FUSU_SepFinOLD := FUSU_SepFin;
  FUSU_RelSepImpOLD := FUSU_RelSepImp;
  FUSU_DatImpOLD := FUSU_DatImp;
  FUSU_HorImpOLD := FUSU_HorImp;
  FUSU_DatRecOLD := FUSU_DatRec;
  FUSU_HorRecOLD := FUSU_HorRec;
  FUSU_FrmRecOLD := FUSU_FrmRec;
  FUSU_HorEnvOLD := FUSU_HorEnv;
  FUSU_ParGerOLD := FUSU_ParGer;
  FUSU_TipTrfOLD := FUSU_TipTrf;
  FUSU_TipVenOLD := FUSU_TipVen;
  FUSU_DesBenOLD := FUSU_DesBen;
  FUSU_UsuSepOLD := FUSU_UsuSep;
  FUSU_DatSepOLD := FUSU_DatSep;
  FUSU_HorSepOLD := FUSU_HorSep;
  FUSU_NumCadOLD := FUSU_NumCad;
  FUSU_CanAutOLD := FUSU_CanAut;
  FUSU_NumOptCRMOLD := FUSU_NumOptCRM;
  FUSU_PedFecOLD := FUSU_PedFec;
  FUSU_DatPrvOLD := FUSU_DatPrv;
  FUSU_CodTipOLD := FUSU_CodTip;
  FUSU_TaxCnvOLD := FUSU_TaxCnv;
  FUSU_TnsFatOLD := FUSU_TnsFat;

  inherited;
end;

procedure T120PED.RetornarValores();
begin
  FCodEmp := FCodEmpOLD;
  FCodFil := FCodFilOLD;
  FNumPed := FNumPedOLD;
  FTipPed := FTipPedOLD;
  FPrcPed := FPrcPedOLD;
  FTnsPro := FTnsProOLD;
  FTnsSer := FTnsSerOLD;
  FDatEmi := FDatEmiOLD;
  FHorEmi := FHorEmiOLD;
  FDatPrv := FDatPrvOLD;
  FHorPrv := FHorPrvOLD;
  FObsPed := FObsPedOLD;
  FCodCli := FCodCliOLD;
  FCatCli := FCatCliOLD;
  FQtdVpf := FQtdVpfOLD;
  FQtdMfp := FQtdMfpOLD;
  FIndAgr := FIndAgrOLD;
  FSeqEnt := FSeqEntOLD;
  FSeqCob := FSeqCobOLD;
  FSeqCto := FSeqCtoOLD;
  FPedCli := FPedCliOLD;
  FCodRoe := FCodRoeOLD;
  FSeqRoe := FSeqRoeOLD;
  FCodRep := FCodRepOLD;
  FCodMoe := FCodMoeOLD;
  FCodMcp := FCodMcpOLD;
  FDatMfp := FDatMfpOLD;
  FCotMfp := FCotMfpOLD;
  FDatMoe := FDatMoeOLD;
  FCotMoe := FCotMoeOLD;
  FFecMoe := FFecMoeOLD;
  FCodFcr := FCodFcrOLD;
  FDatFcr := FDatFcrOLD;
  FCodCpg := FCodCpgOLD;
  FPgtAnt := FPgtAntOLD;
  FCodFpg := FCodFpgOLD;
  FQtdAbe := FQtdAbeOLD;
  FQtdAen := FQtdAenOLD;
  FCodTra := FCodTraOLD;
  FCodRed := FCodRedOLD;
  FCodVia := FCodViaOLD;
  FPlaVei := FPlaVeiOLD;
  FVlrFum := FVlrFumOLD;
  FQtdFre := FQtdFreOLD;
  FForFre := FForFreOLD;
  FVlrFre := FVlrFreOLD;
  FCifFob := FCifFobOLD;
  FVlrSeg := FVlrSegOLD;
  FVlrEmb := FVlrEmbOLD;
  FVlrEnc := FVlrEncOLD;
  FVlrOut := FVlrOutOLD;
  FVlrDar := FVlrDarOLD;
  FVlrFrd := FVlrFrdOLD;
  FVlrOud := FVlrOudOLD;
  FPerDs1 := FPerDs1OLD;
  FPerDs2 := FPerDs2OLD;
  FPerDs3 := FPerDs3OLD;
  FPerDs4 := FPerDs4OLD;
  FVlrBpr := FVlrBprOLD;
  FVlrDpr := FVlrDprOLD;
  FVlrBse := FVlrBseOLD;
  FVlrDse := FVlrDseOLD;
  FVlrDs1 := FVlrDs1OLD;
  FVlrDs2 := FVlrDs2OLD;
  FVlrDs3 := FVlrDs3OLD;
  FVlrDs4 := FVlrDs4OLD;
  FVlrOfe := FVlrOfeOLD;
  FVlrDzf := FVlrDzfOLD;
  FVlrBip := FVlrBipOLD;
  FVlrIpi := FVlrIpiOLD;
  FVlrBic := FVlrBicOLD;
  FVlrIcm := FVlrIcmOLD;
  FVlrBsi := FVlrBsiOLD;
  FVlrSic := FVlrSicOLD;
  FVlrBsp := FVlrBspOLD;
  FVlrStp := FVlrStpOLD;
  FVlrBsc := FVlrBscOLD;
  FVlrStc := FVlrStcOLD;
  FVlrBis := FVlrBisOLD;
  FVlrIss := FVlrIssOLD;
  FVlrBir := FVlrBirOLD;
  FVlrIrf := FVlrIrfOLD;
  FVlrBin := FVlrBinOLD;
  FVlrIns := FVlrInsOLD;
  FVlrBco := FVlrBcoOLD;
  FVlrCom := FVlrComOLD;
  FVlrLpr := FVlrLprOLD;
  FVlrLse := FVlrLseOLD;
  FVlrLou := FVlrLouOLD;
  FVlrLiq := FVlrLiqOLD;
  FVlrFin := FVlrFinOLD;
  FVlrAdt := FVlrAdtOLD;
  FQtdOri := FQtdOriOLD;
  FVlrOri := FVlrOriOLD;
  FTemPar := FTemParOLD;
  FCodPor := FCodPorOLD;
  FCodCrt := FCodCrtOLD;
  FSitPed := FSitPedOLD;
  FCodMot := FCodMotOLD;
  FObsMot := FObsMotOLD;
  FPedBlo := FPedBloOLD;
  FUsuBlo := FUsuBloOLD;
  FDatBlo := FDatBloOLD;
  FHorBlo := FHorBloOLD;
  FIndSig := FIndSigOLD;
  FVerCal := FVerCalOLD;
  FHorIni := FHorIniOLD;
  FHorFim := FHorFimOLD;
  FUsuGer := FUsuGerOLD;
  FDatGer := FDatGerOLD;
  FHorGer := FHorGerOLD;
  FPerFre := FPerFreOLD;
  FPerSeg := FPerSegOLD;
  FPerEmb := FPerEmbOLD;
  FPerEnc := FPerEncOLD;
  FPerOut := FPerOutOLD;
  FCodSac := FCodSacOLD;
  FCodOpe := FCodOpeOLD;
  FCodVen := FCodVenOLD;
  FPedPal := FPedPalOLD;
  FAcePar := FAceParOLD;
  FPerOf1 := FPerOf1OLD;
  FPerOf2 := FPerOf2OLD;
  FUsuFec := FUsuFecOLD;
  FDatFec := FDatFecOLD;
  FHorFec := FHorFecOLD;
  FCliRel := FCliRelOLD;
  FVlrBcl := FVlrBclOLD;
  FVlrCsl := FVlrCslOLD;
  FVlrBpt := FVlrBptOLD;
  FVlrPit := FVlrPitOLD;
  FVlrBct := FVlrBctOLD;
  FVlrCrt := FVlrCrtOLD;
  FVlrBor := FVlrBorOLD;
  FVlrOur := FVlrOurOLD;
  FCodMar := FCodMarOLD;
  FCodSro := FCodSroOLD;
  FFilFat := FFilFatOLD;
  FCodCdi := FCodCdiOLD;
  FCodLip := FCodLipOLD;
  FCepFre := FCepFreOLD;
  FVlrRis := FVlrRisOLD;
  FAnaEmb := FAnaEmbOLD;
  FNumEmp := FNumEmpOLD;
  FQtdAne := FQtdAneOLD;
  FDatAge := FDatAgeOLD;
  FFilNco := FFilNcoOLD;
  FSnfNco := FSnfNcoOLD;
  FNumNco := FNumNcoOLD;
  FExpWms := FExpWmsOLD;
  FVlrBpf := FVlrBpfOLD;
  FVlrPif := FVlrPifOLD;
  FVlrBcf := FVlrBcfOLD;
  FVlrCff := FVlrCffOLD;
  FCodApc := FCodApcOLD;
  FSomFre := FSomFreOLD;
  FQtdItp := FQtdItpOLD;
  FQtdIts := FQtdItsOLD;
  FPerDs5 := FPerDs5OLD;
  FVlrDs5 := FVlrDs5OLD;
  FRotAnx := FRotAnxOLD;
  FNumAnx := FNumAnxOLD;
  FNumNsu := FNumNsuOLD;
  FDatNsu := FDatNsuOLD;
  FHorNsu := FHorNsuOLD;
  FIndExp := FIndExpOLD;
  FFatPed := FFatPedOLD;
  FQtdBpf := FQtdBpfOLD;
  FQtdBcf := FQtdBcfOLD;
  FQtdBip := FQtdBipOLD;
  FNumCes := FNumCesOLD;
  FVenCal := FVenCalOLD;
  FDesDef := FDesDefOLD;
  FAnoVei := FAnoVeiOLD;
  FNumRen := FNumRenOLD;
  FDesMod := FDesModOLD;
  FTipDav := FTipDavOLD;
  FVlrEcf := FVlrEcfOLD;
  FPerEcf := FPerEcfOLD;
  FTemAva := FTemAvaOLD;
  FCodTab := FCodTabOLD;
  FSenApr := FSenAprOLD;
  FUsuApr := FUsuAprOLD;
  FDatApr := FDatAprOLD;
  FHorApr := FHorAprOLD;
  FSitPac := FSitPacOLD;
  FUsuPac := FUsuPacOLD;
  FQtdPac := FQtdPacOLD;
  FUSU_PedPrg := FUSU_PedPrgOLD;
  FUSU_DatEnv := FUSU_DatEnvOLD;
  FUSU_DatRet := FUSU_DatRetOLD;
  FUSU_RetCli := FUSU_RetCliOLD;
  FUSU_MotFec := FUSU_MotFecOLD;
  FUSU_QtdSep := FUSU_QtdSepOLD;
  FUSU_DivExp := FUSU_DivExpOLD;
  FUSU_TemDiv := FUSU_TemDivOLD;
  FUSU_SepFin := FUSU_SepFinOLD;
  FUSU_RelSepImp := FUSU_RelSepImpOLD;
  FUSU_DatImp := FUSU_DatImpOLD;
  FUSU_HorImp := FUSU_HorImpOLD;
  FUSU_DatRec := FUSU_DatRecOLD;
  FUSU_HorRec := FUSU_HorRecOLD;
  FUSU_FrmRec := FUSU_FrmRecOLD;
  FUSU_HorEnv := FUSU_HorEnvOLD;
  FUSU_ParGer := FUSU_ParGerOLD;
  FUSU_TipTrf := FUSU_TipTrfOLD;
  FUSU_TipVen := FUSU_TipVenOLD;
  FUSU_DesBen := FUSU_DesBenOLD;
  FUSU_UsuSep := FUSU_UsuSepOLD;
  FUSU_DatSep := FUSU_DatSepOLD;
  FUSU_HorSep := FUSU_HorSepOLD;
  FUSU_NumCad := FUSU_NumCadOLD;
  FUSU_CanAut := FUSU_CanAutOLD;
  FUSU_NumOptCRM := FUSU_NumOptCRMOLD;
  FUSU_PedFec := FUSU_PedFecOLD;
  FUSU_DatPrv := FUSU_DatPrvOLD;
  FUSU_CodTip := FUSU_CodTipOLD;
  FUSU_TaxCnv := FUSU_TaxCnvOLD;
  FUSU_TnsFat := FUSU_TnsFatOLD;
end;

end.
