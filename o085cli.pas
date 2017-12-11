unit o085cli;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T085CLI = class(TTabelaPadrao)
  private
    FCodCli: Integer;
    FNomCli: string;
    FApeCli: string;
    FMarCli: string;
    FSenCli: string;
    FTipCli: Char;
    FTipMer: Char;
    FTipEmc: Integer;
    FCliCon: Char;
    FCodRam: string;
    FInsEst: string;
    FInsMun: string;
    FCgcCpf: Integer;
    FCodGre: Integer;
    FZonFra: Integer;
    FCodSuf: string;
    FEndCli: string;
    FCplEnd: string;
    FCliPrx: string;
    FZipCod: string;
    FCepCli: Integer;
    FCepIni: Integer;
    FBaiCli: string;
    FCidCli: string;
    FSigUfs: string;
    FCodPai: string;
    FTemEnt: Char;
    FEndEnt: string;
    FCplEnt: string;
    FCepEnt: Integer;
    FIniEnt: Integer;
    FCidEnt: string;
    FEstEnt: string;
    FInsEnt: string;
    FCgcEnt: Integer;
    FTemCob: Char;
    FEndCob: string;
    FCplCob: string;
    FCepCob: Integer;
    FIniCob: Integer;
    FCidCob: string;
    FEstCob: string;
    FCgcCob: Integer;
    FEntCor: Char;
    FFonCli: string;
    FFonCl2: string;
    FFonCl3: string;
    FFonCl4: string;
    FFonCl5: string;
    FFaxCli: string;
    FCxaPst: Integer;
    FIntNet: string;
    FCodRoe: string;
    FSeqRoe: Integer;
    FCodFor: Integer;
    FCliRep: Integer;
    FCliTra: Integer;
    FUsuCad: Integer;
    FDatCad: TDate;
    FDatFim: TDate;
    FHorCad: Integer;
    FHorFim: Integer;
    FDatVct: TDate;
    FDatAtu: TDate;
    FHorAtu: Integer;
    FUsuAtu: Integer;
    FQtdAtu: Integer;
    FDatIcv: TDate;
    FSitCli: Char;
    FCodMot: Integer;
    FBloCre: Char;
    FObsMot: string;
    FUsuMot: Integer;
    FDatMot: TDate;
    FHorMot: Integer;
    FUsuOpe: Integer;
    FCodAma: string;
    FCodSab: string;
    FCodGal: string;
    FTriIcm: Char;
    FTriIpi: Char;
    FBaiEnt: string;
    FBaiCob: string;
    FCliFor: Char;
    FIdeCli: string;
    FTriPis: Char;
    FTriCof: Char;
    FIndExp: Integer;
    FDatPal: TDate;
    FHorPal: Integer;
    FRetCof: Char;
    FRetCsl: Char;
    FRetPis: Char;
    FRetOur: Char;
    FCodSro: string;
    FDatSuf: TDate;
    FCepFre: Integer;
    FCodPdv: Integer;
    FDatPdv: TDate;
    FHorPdv: Integer;
    FRetPro: Char;
    FRetIrf: Char;
    FLimRet: Char;
    FCodCnv: Integer;
    FCalFun: Char;
    FEenCli: string;
    FEenEnt: string;
    FEenCob: string;
    FPerAin: Double;
    FNenCli: string;
    FNenEnt: string;
    FNenCob: string;
    FTipAce: Integer;
    FEmaNfe: string;
    FInsAnp: Integer;
    FIndCoo: Char;
    FCodRtr: Integer;
    FRegEst: Integer;
    FNatRet: Integer;
    FNatPis: Integer;
    FNatCof: Integer;
    FConFin: Char;
    FUSU_NegSci: Char;
    FUSU_SepEsp: Char;
    FUSU_TesMan: Char;
    FUSU_EnvCam: Char;
    FUSU_Site: string;
    FUSU_DatFun: TDate;
    FUSU_AvFaPr: Char;
    FUSU_IndEnv: Char;
    FUSU_AcMGen: Char;
    FUSU_TemBen: Char;
    FUSU_QMultVen: Char;
    FUSU_ExiOC: Char;
    FUSU_EnvPDF: Char;
    FUSU_PreFix: Char;
    FUSU_ExiOD: Char;
    FUSU_ConPcl: Char;
    FUSU_EnvSer: Char;
    FUSU_FilB2B: Integer;
    FUSU_ExiSG: Char;
    FUSU_EmpB2B: Integer;
    FUSU_LocClp: Char;

    FCodCliOLD: Integer;
    FNomCliOLD: string;
    FApeCliOLD: string;
    FMarCliOLD: string;
    FSenCliOLD: string;
    FTipCliOLD: Char;
    FTipMerOLD: Char;
    FTipEmcOLD: Integer;
    FCliConOLD: Char;
    FCodRamOLD: string;
    FInsEstOLD: string;
    FInsMunOLD: string;
    FCgcCpfOLD: Integer;
    FCodGreOLD: Integer;
    FZonFraOLD: Integer;
    FCodSufOLD: string;
    FEndCliOLD: string;
    FCplEndOLD: string;
    FCliPrxOLD: string;
    FZipCodOLD: string;
    FCepCliOLD: Integer;
    FCepIniOLD: Integer;
    FBaiCliOLD: string;
    FCidCliOLD: string;
    FSigUfsOLD: string;
    FCodPaiOLD: string;
    FTemEntOLD: Char;
    FEndEntOLD: string;
    FCplEntOLD: string;
    FCepEntOLD: Integer;
    FIniEntOLD: Integer;
    FCidEntOLD: string;
    FEstEntOLD: string;
    FInsEntOLD: string;
    FCgcEntOLD: Integer;
    FTemCobOLD: Char;
    FEndCobOLD: string;
    FCplCobOLD: string;
    FCepCobOLD: Integer;
    FIniCobOLD: Integer;
    FCidCobOLD: string;
    FEstCobOLD: string;
    FCgcCobOLD: Integer;
    FEntCorOLD: Char;
    FFonCliOLD: string;
    FFonCl2OLD: string;
    FFonCl3OLD: string;
    FFonCl4OLD: string;
    FFonCl5OLD: string;
    FFaxCliOLD: string;
    FCxaPstOLD: Integer;
    FIntNetOLD: string;
    FCodRoeOLD: string;
    FSeqRoeOLD: Integer;
    FCodForOLD: Integer;
    FCliRepOLD: Integer;
    FCliTraOLD: Integer;
    FUsuCadOLD: Integer;
    FDatCadOLD: TDate;
    FDatFimOLD: TDate;
    FHorCadOLD: Integer;
    FHorFimOLD: Integer;
    FDatVctOLD: TDate;
    FDatAtuOLD: TDate;
    FHorAtuOLD: Integer;
    FUsuAtuOLD: Integer;
    FQtdAtuOLD: Integer;
    FDatIcvOLD: TDate;
    FSitCliOLD: Char;
    FCodMotOLD: Integer;
    FBloCreOLD: Char;
    FObsMotOLD: string;
    FUsuMotOLD: Integer;
    FDatMotOLD: TDate;
    FHorMotOLD: Integer;
    FUsuOpeOLD: Integer;
    FCodAmaOLD: string;
    FCodSabOLD: string;
    FCodGalOLD: string;
    FTriIcmOLD: Char;
    FTriIpiOLD: Char;
    FBaiEntOLD: string;
    FBaiCobOLD: string;
    FCliForOLD: Char;
    FIdeCliOLD: string;
    FTriPisOLD: Char;
    FTriCofOLD: Char;
    FIndExpOLD: Integer;
    FDatPalOLD: TDate;
    FHorPalOLD: Integer;
    FRetCofOLD: Char;
    FRetCslOLD: Char;
    FRetPisOLD: Char;
    FRetOurOLD: Char;
    FCodSroOLD: string;
    FDatSufOLD: TDate;
    FCepFreOLD: Integer;
    FCodPdvOLD: Integer;
    FDatPdvOLD: TDate;
    FHorPdvOLD: Integer;
    FRetProOLD: Char;
    FRetIrfOLD: Char;
    FLimRetOLD: Char;
    FCodCnvOLD: Integer;
    FCalFunOLD: Char;
    FEenCliOLD: string;
    FEenEntOLD: string;
    FEenCobOLD: string;
    FPerAinOLD: Double;
    FNenCliOLD: string;
    FNenEntOLD: string;
    FNenCobOLD: string;
    FTipAceOLD: Integer;
    FEmaNfeOLD: string;
    FInsAnpOLD: Integer;
    FIndCooOLD: Char;
    FCodRtrOLD: Integer;
    FRegEstOLD: Integer;
    FNatRetOLD: Integer;
    FNatPisOLD: Integer;
    FNatCofOLD: Integer;
    FConFinOLD: Char;
    FUSU_NegSciOLD: Char;
    FUSU_SepEspOLD: Char;
    FUSU_TesManOLD: Char;
    FUSU_EnvCamOLD: Char;
    FUSU_SiteOLD: string;
    FUSU_DatFunOLD: TDate;
    FUSU_AvFaPrOLD: Char;
    FUSU_IndEnvOLD: Char;
    FUSU_AcMGenOLD: Char;
    FUSU_TemBenOLD: Char;
    FUSU_QMultVenOLD: Char;
    FUSU_ExiOCOLD: Char;
    FUSU_EnvPDFOLD: Char;
    FUSU_PreFixOLD: Char;
    FUSU_ExiODOLD: Char;
    FUSU_ConPclOLD: Char;
    FUSU_EnvSerOLD: Char;
    FUSU_FilB2BOLD: Integer;
    FUSU_ExiSGOLD: Char;
    FUSU_EmpB2BOLD: Integer;
    FUSU_LocClpOLD: Char;

    function GetCodCli: Integer;
    procedure SetCodCli(const pCodCli: Integer);
    function GetNomCli: string;
    procedure SetNomCli(const pNomCli: string);
    function GetApeCli: string;
    procedure SetApeCli(const pApeCli: string);
    function GetMarCli: string;
    procedure SetMarCli(const pMarCli: string);
    function GetSenCli: string;
    procedure SetSenCli(const pSenCli: string);
    function GetTipCli: Char;
    procedure SetTipCli(const pTipCli: Char);
    function GetTipMer: Char;
    procedure SetTipMer(const pTipMer: Char);
    function GetTipEmc: Integer;
    procedure SetTipEmc(const pTipEmc: Integer);
    function GetCliCon: Char;
    procedure SetCliCon(const pCliCon: Char);
    function GetCodRam: string;
    procedure SetCodRam(const pCodRam: string);
    function GetInsEst: string;
    procedure SetInsEst(const pInsEst: string);
    function GetInsMun: string;
    procedure SetInsMun(const pInsMun: string);
    function GetCgcCpf: Integer;
    procedure SetCgcCpf(const pCgcCpf: Integer);
    function GetCodGre: Integer;
    procedure SetCodGre(const pCodGre: Integer);
    function GetZonFra: Integer;
    procedure SetZonFra(const pZonFra: Integer);
    function GetCodSuf: string;
    procedure SetCodSuf(const pCodSuf: string);
    function GetEndCli: string;
    procedure SetEndCli(const pEndCli: string);
    function GetCplEnd: string;
    procedure SetCplEnd(const pCplEnd: string);
    function GetCliPrx: string;
    procedure SetCliPrx(const pCliPrx: string);
    function GetZipCod: string;
    procedure SetZipCod(const pZipCod: string);
    function GetCepCli: Integer;
    procedure SetCepCli(const pCepCli: Integer);
    function GetCepIni: Integer;
    procedure SetCepIni(const pCepIni: Integer);
    function GetBaiCli: string;
    procedure SetBaiCli(const pBaiCli: string);
    function GetCidCli: string;
    procedure SetCidCli(const pCidCli: string);
    function GetSigUfs: string;
    procedure SetSigUfs(const pSigUfs: string);
    function GetCodPai: string;
    procedure SetCodPai(const pCodPai: string);
    function GetTemEnt: Char;
    procedure SetTemEnt(const pTemEnt: Char);
    function GetEndEnt: string;
    procedure SetEndEnt(const pEndEnt: string);
    function GetCplEnt: string;
    procedure SetCplEnt(const pCplEnt: string);
    function GetCepEnt: Integer;
    procedure SetCepEnt(const pCepEnt: Integer);
    function GetIniEnt: Integer;
    procedure SetIniEnt(const pIniEnt: Integer);
    function GetCidEnt: string;
    procedure SetCidEnt(const pCidEnt: string);
    function GetEstEnt: string;
    procedure SetEstEnt(const pEstEnt: string);
    function GetInsEnt: string;
    procedure SetInsEnt(const pInsEnt: string);
    function GetCgcEnt: Integer;
    procedure SetCgcEnt(const pCgcEnt: Integer);
    function GetTemCob: Char;
    procedure SetTemCob(const pTemCob: Char);
    function GetEndCob: string;
    procedure SetEndCob(const pEndCob: string);
    function GetCplCob: string;
    procedure SetCplCob(const pCplCob: string);
    function GetCepCob: Integer;
    procedure SetCepCob(const pCepCob: Integer);
    function GetIniCob: Integer;
    procedure SetIniCob(const pIniCob: Integer);
    function GetCidCob: string;
    procedure SetCidCob(const pCidCob: string);
    function GetEstCob: string;
    procedure SetEstCob(const pEstCob: string);
    function GetCgcCob: Integer;
    procedure SetCgcCob(const pCgcCob: Integer);
    function GetEntCor: Char;
    procedure SetEntCor(const pEntCor: Char);
    function GetFonCli: string;
    procedure SetFonCli(const pFonCli: string);
    function GetFonCl2: string;
    procedure SetFonCl2(const pFonCl2: string);
    function GetFonCl3: string;
    procedure SetFonCl3(const pFonCl3: string);
    function GetFonCl4: string;
    procedure SetFonCl4(const pFonCl4: string);
    function GetFonCl5: string;
    procedure SetFonCl5(const pFonCl5: string);
    function GetFaxCli: string;
    procedure SetFaxCli(const pFaxCli: string);
    function GetCxaPst: Integer;
    procedure SetCxaPst(const pCxaPst: Integer);
    function GetIntNet: string;
    procedure SetIntNet(const pIntNet: string);
    function GetCodRoe: string;
    procedure SetCodRoe(const pCodRoe: string);
    function GetSeqRoe: Integer;
    procedure SetSeqRoe(const pSeqRoe: Integer);
    function GetCodFor: Integer;
    procedure SetCodFor(const pCodFor: Integer);
    function GetCliRep: Integer;
    procedure SetCliRep(const pCliRep: Integer);
    function GetCliTra: Integer;
    procedure SetCliTra(const pCliTra: Integer);
    function GetUsuCad: Integer;
    procedure SetUsuCad(const pUsuCad: Integer);
    function GetDatCad: TDate;
    procedure SetDatCad(const pDatCad: TDate);
    function GetDatFim: TDate;
    procedure SetDatFim(const pDatFim: TDate);
    function GetHorCad: Integer;
    procedure SetHorCad(const pHorCad: Integer);
    function GetHorFim: Integer;
    procedure SetHorFim(const pHorFim: Integer);
    function GetDatVct: TDate;
    procedure SetDatVct(const pDatVct: TDate);
    function GetDatAtu: TDate;
    procedure SetDatAtu(const pDatAtu: TDate);
    function GetHorAtu: Integer;
    procedure SetHorAtu(const pHorAtu: Integer);
    function GetUsuAtu: Integer;
    procedure SetUsuAtu(const pUsuAtu: Integer);
    function GetQtdAtu: Integer;
    procedure SetQtdAtu(const pQtdAtu: Integer);
    function GetDatIcv: TDate;
    procedure SetDatIcv(const pDatIcv: TDate);
    function GetSitCli: Char;
    procedure SetSitCli(const pSitCli: Char);
    function GetCodMot: Integer;
    procedure SetCodMot(const pCodMot: Integer);
    function GetBloCre: Char;
    procedure SetBloCre(const pBloCre: Char);
    function GetObsMot: string;
    procedure SetObsMot(const pObsMot: string);
    function GetUsuMot: Integer;
    procedure SetUsuMot(const pUsuMot: Integer);
    function GetDatMot: TDate;
    procedure SetDatMot(const pDatMot: TDate);
    function GetHorMot: Integer;
    procedure SetHorMot(const pHorMot: Integer);
    function GetUsuOpe: Integer;
    procedure SetUsuOpe(const pUsuOpe: Integer);
    function GetCodAma: string;
    procedure SetCodAma(const pCodAma: string);
    function GetCodSab: string;
    procedure SetCodSab(const pCodSab: string);
    function GetCodGal: string;
    procedure SetCodGal(const pCodGal: string);
    function GetTriIcm: Char;
    procedure SetTriIcm(const pTriIcm: Char);
    function GetTriIpi: Char;
    procedure SetTriIpi(const pTriIpi: Char);
    function GetBaiEnt: string;
    procedure SetBaiEnt(const pBaiEnt: string);
    function GetBaiCob: string;
    procedure SetBaiCob(const pBaiCob: string);
    function GetCliFor: Char;
    procedure SetCliFor(const pCliFor: Char);
    function GetIdeCli: string;
    procedure SetIdeCli(const pIdeCli: string);
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
    function GetRetCof: Char;
    procedure SetRetCof(const pRetCof: Char);
    function GetRetCsl: Char;
    procedure SetRetCsl(const pRetCsl: Char);
    function GetRetPis: Char;
    procedure SetRetPis(const pRetPis: Char);
    function GetRetOur: Char;
    procedure SetRetOur(const pRetOur: Char);
    function GetCodSro: string;
    procedure SetCodSro(const pCodSro: string);
    function GetDatSuf: TDate;
    procedure SetDatSuf(const pDatSuf: TDate);
    function GetCepFre: Integer;
    procedure SetCepFre(const pCepFre: Integer);
    function GetCodPdv: Integer;
    procedure SetCodPdv(const pCodPdv: Integer);
    function GetDatPdv: TDate;
    procedure SetDatPdv(const pDatPdv: TDate);
    function GetHorPdv: Integer;
    procedure SetHorPdv(const pHorPdv: Integer);
    function GetRetPro: Char;
    procedure SetRetPro(const pRetPro: Char);
    function GetRetIrf: Char;
    procedure SetRetIrf(const pRetIrf: Char);
    function GetLimRet: Char;
    procedure SetLimRet(const pLimRet: Char);
    function GetCodCnv: Integer;
    procedure SetCodCnv(const pCodCnv: Integer);
    function GetCalFun: Char;
    procedure SetCalFun(const pCalFun: Char);
    function GetEenCli: string;
    procedure SetEenCli(const pEenCli: string);
    function GetEenEnt: string;
    procedure SetEenEnt(const pEenEnt: string);
    function GetEenCob: string;
    procedure SetEenCob(const pEenCob: string);
    function GetPerAin: Double;
    procedure SetPerAin(const pPerAin: Double);
    function GetNenCli: string;
    procedure SetNenCli(const pNenCli: string);
    function GetNenEnt: string;
    procedure SetNenEnt(const pNenEnt: string);
    function GetNenCob: string;
    procedure SetNenCob(const pNenCob: string);
    function GetTipAce: Integer;
    procedure SetTipAce(const pTipAce: Integer);
    function GetEmaNfe: string;
    procedure SetEmaNfe(const pEmaNfe: string);
    function GetInsAnp: Integer;
    procedure SetInsAnp(const pInsAnp: Integer);
    function GetIndCoo: Char;
    procedure SetIndCoo(const pIndCoo: Char);
    function GetCodRtr: Integer;
    procedure SetCodRtr(const pCodRtr: Integer);
    function GetRegEst: Integer;
    procedure SetRegEst(const pRegEst: Integer);
    function GetNatRet: Integer;
    procedure SetNatRet(const pNatRet: Integer);
    function GetNatPis: Integer;
    procedure SetNatPis(const pNatPis: Integer);
    function GetNatCof: Integer;
    procedure SetNatCof(const pNatCof: Integer);
    function GetConFin: Char;
    procedure SetConFin(const pConFin: Char);
    function GetUSU_NegSci: Char;
    procedure SetUSU_NegSci(const pUSU_NegSci: Char);
    function GetUSU_SepEsp: Char;
    procedure SetUSU_SepEsp(const pUSU_SepEsp: Char);
    function GetUSU_TesMan: Char;
    procedure SetUSU_TesMan(const pUSU_TesMan: Char);
    function GetUSU_EnvCam: Char;
    procedure SetUSU_EnvCam(const pUSU_EnvCam: Char);
    function GetUSU_Site: string;
    procedure SetUSU_Site(const pUSU_Site: string);
    function GetUSU_DatFun: TDate;
    procedure SetUSU_DatFun(const pUSU_DatFun: TDate);
    function GetUSU_AvFaPr: Char;
    procedure SetUSU_AvFaPr(const pUSU_AvFaPr: Char);
    function GetUSU_IndEnv: Char;
    procedure SetUSU_IndEnv(const pUSU_IndEnv: Char);
    function GetUSU_AcMGen: Char;
    procedure SetUSU_AcMGen(const pUSU_AcMGen: Char);
    function GetUSU_TemBen: Char;
    procedure SetUSU_TemBen(const pUSU_TemBen: Char);
    function GetUSU_QMultVen: Char;
    procedure SetUSU_QMultVen(const pUSU_QMultVen: Char);
    function GetUSU_ExiOC: Char;
    procedure SetUSU_ExiOC(const pUSU_ExiOC: Char);
    function GetUSU_EnvPDF: Char;
    procedure SetUSU_EnvPDF(const pUSU_EnvPDF: Char);
    function GetUSU_PreFix: Char;
    procedure SetUSU_PreFix(const pUSU_PreFix: Char);
    function GetUSU_ExiOD: Char;
    procedure SetUSU_ExiOD(const pUSU_ExiOD: Char);
    function GetUSU_ConPcl: Char;
    procedure SetUSU_ConPcl(const pUSU_ConPcl: Char);
    function GetUSU_EnvSer: Char;
    procedure SetUSU_EnvSer(const pUSU_EnvSer: Char);
    function GetUSU_FilB2B: Integer;
    procedure SetUSU_FilB2B(const pUSU_FilB2B: Integer);
    function GetUSU_ExiSG: Char;
    procedure SetUSU_ExiSG(const pUSU_ExiSG: Char);
    function GetUSU_EmpB2B: Integer;
    procedure SetUSU_EmpB2B(const pUSU_EmpB2B: Integer);
    function GetUSU_LocClp: Char;
    procedure SetUSU_LocClp(const pUSU_LocClp: Char);

    function GetCodCliOld: Integer;
    procedure SetCodCliOld(const pCodCli: Integer);
    function GetNomCliOld: string;
    procedure SetNomCliOld(const pNomCli: string);
    function GetApeCliOld: string;
    procedure SetApeCliOld(const pApeCli: string);
    function GetMarCliOld: string;
    procedure SetMarCliOld(const pMarCli: string);
    function GetSenCliOld: string;
    procedure SetSenCliOld(const pSenCli: string);
    function GetTipCliOld: Char;
    procedure SetTipCliOld(const pTipCli: Char);
    function GetTipMerOld: Char;
    procedure SetTipMerOld(const pTipMer: Char);
    function GetTipEmcOld: Integer;
    procedure SetTipEmcOld(const pTipEmc: Integer);
    function GetCliConOld: Char;
    procedure SetCliConOld(const pCliCon: Char);
    function GetCodRamOld: string;
    procedure SetCodRamOld(const pCodRam: string);
    function GetInsEstOld: string;
    procedure SetInsEstOld(const pInsEst: string);
    function GetInsMunOld: string;
    procedure SetInsMunOld(const pInsMun: string);
    function GetCgcCpfOld: Integer;
    procedure SetCgcCpfOld(const pCgcCpf: Integer);
    function GetCodGreOld: Integer;
    procedure SetCodGreOld(const pCodGre: Integer);
    function GetZonFraOld: Integer;
    procedure SetZonFraOld(const pZonFra: Integer);
    function GetCodSufOld: string;
    procedure SetCodSufOld(const pCodSuf: string);
    function GetEndCliOld: string;
    procedure SetEndCliOld(const pEndCli: string);
    function GetCplEndOld: string;
    procedure SetCplEndOld(const pCplEnd: string);
    function GetCliPrxOld: string;
    procedure SetCliPrxOld(const pCliPrx: string);
    function GetZipCodOld: string;
    procedure SetZipCodOld(const pZipCod: string);
    function GetCepCliOld: Integer;
    procedure SetCepCliOld(const pCepCli: Integer);
    function GetCepIniOld: Integer;
    procedure SetCepIniOld(const pCepIni: Integer);
    function GetBaiCliOld: string;
    procedure SetBaiCliOld(const pBaiCli: string);
    function GetCidCliOld: string;
    procedure SetCidCliOld(const pCidCli: string);
    function GetSigUfsOld: string;
    procedure SetSigUfsOld(const pSigUfs: string);
    function GetCodPaiOld: string;
    procedure SetCodPaiOld(const pCodPai: string);
    function GetTemEntOld: Char;
    procedure SetTemEntOld(const pTemEnt: Char);
    function GetEndEntOld: string;
    procedure SetEndEntOld(const pEndEnt: string);
    function GetCplEntOld: string;
    procedure SetCplEntOld(const pCplEnt: string);
    function GetCepEntOld: Integer;
    procedure SetCepEntOld(const pCepEnt: Integer);
    function GetIniEntOld: Integer;
    procedure SetIniEntOld(const pIniEnt: Integer);
    function GetCidEntOld: string;
    procedure SetCidEntOld(const pCidEnt: string);
    function GetEstEntOld: string;
    procedure SetEstEntOld(const pEstEnt: string);
    function GetInsEntOld: string;
    procedure SetInsEntOld(const pInsEnt: string);
    function GetCgcEntOld: Integer;
    procedure SetCgcEntOld(const pCgcEnt: Integer);
    function GetTemCobOld: Char;
    procedure SetTemCobOld(const pTemCob: Char);
    function GetEndCobOld: string;
    procedure SetEndCobOld(const pEndCob: string);
    function GetCplCobOld: string;
    procedure SetCplCobOld(const pCplCob: string);
    function GetCepCobOld: Integer;
    procedure SetCepCobOld(const pCepCob: Integer);
    function GetIniCobOld: Integer;
    procedure SetIniCobOld(const pIniCob: Integer);
    function GetCidCobOld: string;
    procedure SetCidCobOld(const pCidCob: string);
    function GetEstCobOld: string;
    procedure SetEstCobOld(const pEstCob: string);
    function GetCgcCobOld: Integer;
    procedure SetCgcCobOld(const pCgcCob: Integer);
    function GetEntCorOld: Char;
    procedure SetEntCorOld(const pEntCor: Char);
    function GetFonCliOld: string;
    procedure SetFonCliOld(const pFonCli: string);
    function GetFonCl2Old: string;
    procedure SetFonCl2Old(const pFonCl2: string);
    function GetFonCl3Old: string;
    procedure SetFonCl3Old(const pFonCl3: string);
    function GetFonCl4Old: string;
    procedure SetFonCl4Old(const pFonCl4: string);
    function GetFonCl5Old: string;
    procedure SetFonCl5Old(const pFonCl5: string);
    function GetFaxCliOld: string;
    procedure SetFaxCliOld(const pFaxCli: string);
    function GetCxaPstOld: Integer;
    procedure SetCxaPstOld(const pCxaPst: Integer);
    function GetIntNetOld: string;
    procedure SetIntNetOld(const pIntNet: string);
    function GetCodRoeOld: string;
    procedure SetCodRoeOld(const pCodRoe: string);
    function GetSeqRoeOld: Integer;
    procedure SetSeqRoeOld(const pSeqRoe: Integer);
    function GetCodForOld: Integer;
    procedure SetCodForOld(const pCodFor: Integer);
    function GetCliRepOld: Integer;
    procedure SetCliRepOld(const pCliRep: Integer);
    function GetCliTraOld: Integer;
    procedure SetCliTraOld(const pCliTra: Integer);
    function GetUsuCadOld: Integer;
    procedure SetUsuCadOld(const pUsuCad: Integer);
    function GetDatCadOld: TDate;
    procedure SetDatCadOld(const pDatCad: TDate);
    function GetDatFimOld: TDate;
    procedure SetDatFimOld(const pDatFim: TDate);
    function GetHorCadOld: Integer;
    procedure SetHorCadOld(const pHorCad: Integer);
    function GetHorFimOld: Integer;
    procedure SetHorFimOld(const pHorFim: Integer);
    function GetDatVctOld: TDate;
    procedure SetDatVctOld(const pDatVct: TDate);
    function GetDatAtuOld: TDate;
    procedure SetDatAtuOld(const pDatAtu: TDate);
    function GetHorAtuOld: Integer;
    procedure SetHorAtuOld(const pHorAtu: Integer);
    function GetUsuAtuOld: Integer;
    procedure SetUsuAtuOld(const pUsuAtu: Integer);
    function GetQtdAtuOld: Integer;
    procedure SetQtdAtuOld(const pQtdAtu: Integer);
    function GetDatIcvOld: TDate;
    procedure SetDatIcvOld(const pDatIcv: TDate);
    function GetSitCliOld: Char;
    procedure SetSitCliOld(const pSitCli: Char);
    function GetCodMotOld: Integer;
    procedure SetCodMotOld(const pCodMot: Integer);
    function GetBloCreOld: Char;
    procedure SetBloCreOld(const pBloCre: Char);
    function GetObsMotOld: string;
    procedure SetObsMotOld(const pObsMot: string);
    function GetUsuMotOld: Integer;
    procedure SetUsuMotOld(const pUsuMot: Integer);
    function GetDatMotOld: TDate;
    procedure SetDatMotOld(const pDatMot: TDate);
    function GetHorMotOld: Integer;
    procedure SetHorMotOld(const pHorMot: Integer);
    function GetUsuOpeOld: Integer;
    procedure SetUsuOpeOld(const pUsuOpe: Integer);
    function GetCodAmaOld: string;
    procedure SetCodAmaOld(const pCodAma: string);
    function GetCodSabOld: string;
    procedure SetCodSabOld(const pCodSab: string);
    function GetCodGalOld: string;
    procedure SetCodGalOld(const pCodGal: string);
    function GetTriIcmOld: Char;
    procedure SetTriIcmOld(const pTriIcm: Char);
    function GetTriIpiOld: Char;
    procedure SetTriIpiOld(const pTriIpi: Char);
    function GetBaiEntOld: string;
    procedure SetBaiEntOld(const pBaiEnt: string);
    function GetBaiCobOld: string;
    procedure SetBaiCobOld(const pBaiCob: string);
    function GetCliForOld: Char;
    procedure SetCliForOld(const pCliFor: Char);
    function GetIdeCliOld: string;
    procedure SetIdeCliOld(const pIdeCli: string);
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
    function GetRetCofOld: Char;
    procedure SetRetCofOld(const pRetCof: Char);
    function GetRetCslOld: Char;
    procedure SetRetCslOld(const pRetCsl: Char);
    function GetRetPisOld: Char;
    procedure SetRetPisOld(const pRetPis: Char);
    function GetRetOurOld: Char;
    procedure SetRetOurOld(const pRetOur: Char);
    function GetCodSroOld: string;
    procedure SetCodSroOld(const pCodSro: string);
    function GetDatSufOld: TDate;
    procedure SetDatSufOld(const pDatSuf: TDate);
    function GetCepFreOld: Integer;
    procedure SetCepFreOld(const pCepFre: Integer);
    function GetCodPdvOld: Integer;
    procedure SetCodPdvOld(const pCodPdv: Integer);
    function GetDatPdvOld: TDate;
    procedure SetDatPdvOld(const pDatPdv: TDate);
    function GetHorPdvOld: Integer;
    procedure SetHorPdvOld(const pHorPdv: Integer);
    function GetRetProOld: Char;
    procedure SetRetProOld(const pRetPro: Char);
    function GetRetIrfOld: Char;
    procedure SetRetIrfOld(const pRetIrf: Char);
    function GetLimRetOld: Char;
    procedure SetLimRetOld(const pLimRet: Char);
    function GetCodCnvOld: Integer;
    procedure SetCodCnvOld(const pCodCnv: Integer);
    function GetCalFunOld: Char;
    procedure SetCalFunOld(const pCalFun: Char);
    function GetEenCliOld: string;
    procedure SetEenCliOld(const pEenCli: string);
    function GetEenEntOld: string;
    procedure SetEenEntOld(const pEenEnt: string);
    function GetEenCobOld: string;
    procedure SetEenCobOld(const pEenCob: string);
    function GetPerAinOld: Double;
    procedure SetPerAinOld(const pPerAin: Double);
    function GetNenCliOld: string;
    procedure SetNenCliOld(const pNenCli: string);
    function GetNenEntOld: string;
    procedure SetNenEntOld(const pNenEnt: string);
    function GetNenCobOld: string;
    procedure SetNenCobOld(const pNenCob: string);
    function GetTipAceOld: Integer;
    procedure SetTipAceOld(const pTipAce: Integer);
    function GetEmaNfeOld: string;
    procedure SetEmaNfeOld(const pEmaNfe: string);
    function GetInsAnpOld: Integer;
    procedure SetInsAnpOld(const pInsAnp: Integer);
    function GetIndCooOld: Char;
    procedure SetIndCooOld(const pIndCoo: Char);
    function GetCodRtrOld: Integer;
    procedure SetCodRtrOld(const pCodRtr: Integer);
    function GetRegEstOld: Integer;
    procedure SetRegEstOld(const pRegEst: Integer);
    function GetNatRetOld: Integer;
    procedure SetNatRetOld(const pNatRet: Integer);
    function GetNatPisOld: Integer;
    procedure SetNatPisOld(const pNatPis: Integer);
    function GetNatCofOld: Integer;
    procedure SetNatCofOld(const pNatCof: Integer);
    function GetConFinOld: Char;
    procedure SetConFinOld(const pConFin: Char);
    function GetUSU_NegSciOld: Char;
    procedure SetUSU_NegSciOld(const pUSU_NegSci: Char);
    function GetUSU_SepEspOld: Char;
    procedure SetUSU_SepEspOld(const pUSU_SepEsp: Char);
    function GetUSU_TesManOld: Char;
    procedure SetUSU_TesManOld(const pUSU_TesMan: Char);
    function GetUSU_EnvCamOld: Char;
    procedure SetUSU_EnvCamOld(const pUSU_EnvCam: Char);
    function GetUSU_SiteOld: string;
    procedure SetUSU_SiteOld(const pUSU_Site: string);
    function GetUSU_DatFunOld: TDate;
    procedure SetUSU_DatFunOld(const pUSU_DatFun: TDate);
    function GetUSU_AvFaPrOld: Char;
    procedure SetUSU_AvFaPrOld(const pUSU_AvFaPr: Char);
    function GetUSU_IndEnvOld: Char;
    procedure SetUSU_IndEnvOld(const pUSU_IndEnv: Char);
    function GetUSU_AcMGenOld: Char;
    procedure SetUSU_AcMGenOld(const pUSU_AcMGen: Char);
    function GetUSU_TemBenOld: Char;
    procedure SetUSU_TemBenOld(const pUSU_TemBen: Char);
    function GetUSU_QMultVenOld: Char;
    procedure SetUSU_QMultVenOld(const pUSU_QMultVen: Char);
    function GetUSU_ExiOCOld: Char;
    procedure SetUSU_ExiOCOld(const pUSU_ExiOC: Char);
    function GetUSU_EnvPDFOld: Char;
    procedure SetUSU_EnvPDFOld(const pUSU_EnvPDF: Char);
    function GetUSU_PreFixOld: Char;
    procedure SetUSU_PreFixOld(const pUSU_PreFix: Char);
    function GetUSU_ExiODOld: Char;
    procedure SetUSU_ExiODOld(const pUSU_ExiOD: Char);
    function GetUSU_ConPclOld: Char;
    procedure SetUSU_ConPclOld(const pUSU_ConPcl: Char);
    function GetUSU_EnvSerOld: Char;
    procedure SetUSU_EnvSerOld(const pUSU_EnvSer: Char);
    function GetUSU_FilB2BOld: Integer;
    procedure SetUSU_FilB2BOld(const pUSU_FilB2B: Integer);
    function GetUSU_ExiSGOld: Char;
    procedure SetUSU_ExiSGOld(const pUSU_ExiSG: Char);
    function GetUSU_EmpB2BOld: Integer;
    procedure SetUSU_EmpB2BOld(const pUSU_EmpB2B: Integer);
    function GetUSU_LocClpOld: Char;
    procedure SetUSU_LocClpOld(const pUSU_LocClp: Char);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property CodCli: Integer read GetCodCli write SetCodCli;
    property NomCli: string read GetNomCli write SetNomCli;
    property ApeCli: string read GetApeCli write SetApeCli;
    property MarCli: string read GetMarCli write SetMarCli;
    property SenCli: string read GetSenCli write SetSenCli;
    property TipCli: Char read GetTipCli write SetTipCli;
    property TipMer: Char read GetTipMer write SetTipMer;
    property TipEmc: Integer read GetTipEmc write SetTipEmc;
    property CliCon: Char read GetCliCon write SetCliCon;
    property CodRam: string read GetCodRam write SetCodRam;
    property InsEst: string read GetInsEst write SetInsEst;
    property InsMun: string read GetInsMun write SetInsMun;
    property CgcCpf: Integer read GetCgcCpf write SetCgcCpf;
    property CodGre: Integer read GetCodGre write SetCodGre;
    property ZonFra: Integer read GetZonFra write SetZonFra;
    property CodSuf: string read GetCodSuf write SetCodSuf;
    property EndCli: string read GetEndCli write SetEndCli;
    property CplEnd: string read GetCplEnd write SetCplEnd;
    property CliPrx: string read GetCliPrx write SetCliPrx;
    property ZipCod: string read GetZipCod write SetZipCod;
    property CepCli: Integer read GetCepCli write SetCepCli;
    property CepIni: Integer read GetCepIni write SetCepIni;
    property BaiCli: string read GetBaiCli write SetBaiCli;
    property CidCli: string read GetCidCli write SetCidCli;
    property SigUfs: string read GetSigUfs write SetSigUfs;
    property CodPai: string read GetCodPai write SetCodPai;
    property TemEnt: Char read GetTemEnt write SetTemEnt;
    property EndEnt: string read GetEndEnt write SetEndEnt;
    property CplEnt: string read GetCplEnt write SetCplEnt;
    property CepEnt: Integer read GetCepEnt write SetCepEnt;
    property IniEnt: Integer read GetIniEnt write SetIniEnt;
    property CidEnt: string read GetCidEnt write SetCidEnt;
    property EstEnt: string read GetEstEnt write SetEstEnt;
    property InsEnt: string read GetInsEnt write SetInsEnt;
    property CgcEnt: Integer read GetCgcEnt write SetCgcEnt;
    property TemCob: Char read GetTemCob write SetTemCob;
    property EndCob: string read GetEndCob write SetEndCob;
    property CplCob: string read GetCplCob write SetCplCob;
    property CepCob: Integer read GetCepCob write SetCepCob;
    property IniCob: Integer read GetIniCob write SetIniCob;
    property CidCob: string read GetCidCob write SetCidCob;
    property EstCob: string read GetEstCob write SetEstCob;
    property CgcCob: Integer read GetCgcCob write SetCgcCob;
    property EntCor: Char read GetEntCor write SetEntCor;
    property FonCli: string read GetFonCli write SetFonCli;
    property FonCl2: string read GetFonCl2 write SetFonCl2;
    property FonCl3: string read GetFonCl3 write SetFonCl3;
    property FonCl4: string read GetFonCl4 write SetFonCl4;
    property FonCl5: string read GetFonCl5 write SetFonCl5;
    property FaxCli: string read GetFaxCli write SetFaxCli;
    property CxaPst: Integer read GetCxaPst write SetCxaPst;
    property IntNet: string read GetIntNet write SetIntNet;
    property CodRoe: string read GetCodRoe write SetCodRoe;
    property SeqRoe: Integer read GetSeqRoe write SetSeqRoe;
    property CodFor: Integer read GetCodFor write SetCodFor;
    property CliRep: Integer read GetCliRep write SetCliRep;
    property CliTra: Integer read GetCliTra write SetCliTra;
    property UsuCad: Integer read GetUsuCad write SetUsuCad;
    property DatCad: TDate read GetDatCad write SetDatCad;
    property DatFim: TDate read GetDatFim write SetDatFim;
    property HorCad: Integer read GetHorCad write SetHorCad;
    property HorFim: Integer read GetHorFim write SetHorFim;
    property DatVct: TDate read GetDatVct write SetDatVct;
    property DatAtu: TDate read GetDatAtu write SetDatAtu;
    property HorAtu: Integer read GetHorAtu write SetHorAtu;
    property UsuAtu: Integer read GetUsuAtu write SetUsuAtu;
    property QtdAtu: Integer read GetQtdAtu write SetQtdAtu;
    property DatIcv: TDate read GetDatIcv write SetDatIcv;
    property SitCli: Char read GetSitCli write SetSitCli;
    property CodMot: Integer read GetCodMot write SetCodMot;
    property BloCre: Char read GetBloCre write SetBloCre;
    property ObsMot: string read GetObsMot write SetObsMot;
    property UsuMot: Integer read GetUsuMot write SetUsuMot;
    property DatMot: TDate read GetDatMot write SetDatMot;
    property HorMot: Integer read GetHorMot write SetHorMot;
    property UsuOpe: Integer read GetUsuOpe write SetUsuOpe;
    property CodAma: string read GetCodAma write SetCodAma;
    property CodSab: string read GetCodSab write SetCodSab;
    property CodGal: string read GetCodGal write SetCodGal;
    property TriIcm: Char read GetTriIcm write SetTriIcm;
    property TriIpi: Char read GetTriIpi write SetTriIpi;
    property BaiEnt: string read GetBaiEnt write SetBaiEnt;
    property BaiCob: string read GetBaiCob write SetBaiCob;
    property CliFor: Char read GetCliFor write SetCliFor;
    property IdeCli: string read GetIdeCli write SetIdeCli;
    property TriPis: Char read GetTriPis write SetTriPis;
    property TriCof: Char read GetTriCof write SetTriCof;
    property IndExp: Integer read GetIndExp write SetIndExp;
    property DatPal: TDate read GetDatPal write SetDatPal;
    property HorPal: Integer read GetHorPal write SetHorPal;
    property RetCof: Char read GetRetCof write SetRetCof;
    property RetCsl: Char read GetRetCsl write SetRetCsl;
    property RetPis: Char read GetRetPis write SetRetPis;
    property RetOur: Char read GetRetOur write SetRetOur;
    property CodSro: string read GetCodSro write SetCodSro;
    property DatSuf: TDate read GetDatSuf write SetDatSuf;
    property CepFre: Integer read GetCepFre write SetCepFre;
    property CodPdv: Integer read GetCodPdv write SetCodPdv;
    property DatPdv: TDate read GetDatPdv write SetDatPdv;
    property HorPdv: Integer read GetHorPdv write SetHorPdv;
    property RetPro: Char read GetRetPro write SetRetPro;
    property RetIrf: Char read GetRetIrf write SetRetIrf;
    property LimRet: Char read GetLimRet write SetLimRet;
    property CodCnv: Integer read GetCodCnv write SetCodCnv;
    property CalFun: Char read GetCalFun write SetCalFun;
    property EenCli: string read GetEenCli write SetEenCli;
    property EenEnt: string read GetEenEnt write SetEenEnt;
    property EenCob: string read GetEenCob write SetEenCob;
    property PerAin: Double read GetPerAin write SetPerAin;
    property NenCli: string read GetNenCli write SetNenCli;
    property NenEnt: string read GetNenEnt write SetNenEnt;
    property NenCob: string read GetNenCob write SetNenCob;
    property TipAce: Integer read GetTipAce write SetTipAce;
    property EmaNfe: string read GetEmaNfe write SetEmaNfe;
    property InsAnp: Integer read GetInsAnp write SetInsAnp;
    property IndCoo: Char read GetIndCoo write SetIndCoo;
    property CodRtr: Integer read GetCodRtr write SetCodRtr;
    property RegEst: Integer read GetRegEst write SetRegEst;
    property NatRet: Integer read GetNatRet write SetNatRet;
    property NatPis: Integer read GetNatPis write SetNatPis;
    property NatCof: Integer read GetNatCof write SetNatCof;
    property ConFin: Char read GetConFin write SetConFin;
    property USU_NegSci: Char read GetUSU_NegSci write SetUSU_NegSci;
    property USU_SepEsp: Char read GetUSU_SepEsp write SetUSU_SepEsp;
    property USU_TesMan: Char read GetUSU_TesMan write SetUSU_TesMan;
    property USU_EnvCam: Char read GetUSU_EnvCam write SetUSU_EnvCam;
    property USU_Site: string read GetUSU_Site write SetUSU_Site;
    property USU_DatFun: TDate read GetUSU_DatFun write SetUSU_DatFun;
    property USU_AvFaPr: Char read GetUSU_AvFaPr write SetUSU_AvFaPr;
    property USU_IndEnv: Char read GetUSU_IndEnv write SetUSU_IndEnv;
    property USU_AcMGen: Char read GetUSU_AcMGen write SetUSU_AcMGen;
    property USU_TemBen: Char read GetUSU_TemBen write SetUSU_TemBen;
    property USU_QMultVen: Char read GetUSU_QMultVen write SetUSU_QMultVen;
    property USU_ExiOC: Char read GetUSU_ExiOC write SetUSU_ExiOC;
    property USU_EnvPDF: Char read GetUSU_EnvPDF write SetUSU_EnvPDF;
    property USU_PreFix: Char read GetUSU_PreFix write SetUSU_PreFix;
    property USU_ExiOD: Char read GetUSU_ExiOD write SetUSU_ExiOD;
    property USU_ConPcl: Char read GetUSU_ConPcl write SetUSU_ConPcl;
    property USU_EnvSer: Char read GetUSU_EnvSer write SetUSU_EnvSer;
    property USU_FilB2B: Integer read GetUSU_FilB2B write SetUSU_FilB2B;
    property USU_ExiSG: Char read GetUSU_ExiSG write SetUSU_ExiSG;
    property USU_EmpB2B: Integer read GetUSU_EmpB2B write SetUSU_EmpB2B;
    property USU_LocClp: Char read GetUSU_LocClp write SetUSU_LocClp;

    property OLD_CodCli: Integer read GetCodCliOLD write SetCodCliOLD;
    property OLD_NomCli: string read GetNomCliOLD write SetNomCliOLD;
    property OLD_ApeCli: string read GetApeCliOLD write SetApeCliOLD;
    property OLD_MarCli: string read GetMarCliOLD write SetMarCliOLD;
    property OLD_SenCli: string read GetSenCliOLD write SetSenCliOLD;
    property OLD_TipCli: Char read GetTipCliOLD write SetTipCliOLD;
    property OLD_TipMer: Char read GetTipMerOLD write SetTipMerOLD;
    property OLD_TipEmc: Integer read GetTipEmcOLD write SetTipEmcOLD;
    property OLD_CliCon: Char read GetCliConOLD write SetCliConOLD;
    property OLD_CodRam: string read GetCodRamOLD write SetCodRamOLD;
    property OLD_InsEst: string read GetInsEstOLD write SetInsEstOLD;
    property OLD_InsMun: string read GetInsMunOLD write SetInsMunOLD;
    property OLD_CgcCpf: Integer read GetCgcCpfOLD write SetCgcCpfOLD;
    property OLD_CodGre: Integer read GetCodGreOLD write SetCodGreOLD;
    property OLD_ZonFra: Integer read GetZonFraOLD write SetZonFraOLD;
    property OLD_CodSuf: string read GetCodSufOLD write SetCodSufOLD;
    property OLD_EndCli: string read GetEndCliOLD write SetEndCliOLD;
    property OLD_CplEnd: string read GetCplEndOLD write SetCplEndOLD;
    property OLD_CliPrx: string read GetCliPrxOLD write SetCliPrxOLD;
    property OLD_ZipCod: string read GetZipCodOLD write SetZipCodOLD;
    property OLD_CepCli: Integer read GetCepCliOLD write SetCepCliOLD;
    property OLD_CepIni: Integer read GetCepIniOLD write SetCepIniOLD;
    property OLD_BaiCli: string read GetBaiCliOLD write SetBaiCliOLD;
    property OLD_CidCli: string read GetCidCliOLD write SetCidCliOLD;
    property OLD_SigUfs: string read GetSigUfsOLD write SetSigUfsOLD;
    property OLD_CodPai: string read GetCodPaiOLD write SetCodPaiOLD;
    property OLD_TemEnt: Char read GetTemEntOLD write SetTemEntOLD;
    property OLD_EndEnt: string read GetEndEntOLD write SetEndEntOLD;
    property OLD_CplEnt: string read GetCplEntOLD write SetCplEntOLD;
    property OLD_CepEnt: Integer read GetCepEntOLD write SetCepEntOLD;
    property OLD_IniEnt: Integer read GetIniEntOLD write SetIniEntOLD;
    property OLD_CidEnt: string read GetCidEntOLD write SetCidEntOLD;
    property OLD_EstEnt: string read GetEstEntOLD write SetEstEntOLD;
    property OLD_InsEnt: string read GetInsEntOLD write SetInsEntOLD;
    property OLD_CgcEnt: Integer read GetCgcEntOLD write SetCgcEntOLD;
    property OLD_TemCob: Char read GetTemCobOLD write SetTemCobOLD;
    property OLD_EndCob: string read GetEndCobOLD write SetEndCobOLD;
    property OLD_CplCob: string read GetCplCobOLD write SetCplCobOLD;
    property OLD_CepCob: Integer read GetCepCobOLD write SetCepCobOLD;
    property OLD_IniCob: Integer read GetIniCobOLD write SetIniCobOLD;
    property OLD_CidCob: string read GetCidCobOLD write SetCidCobOLD;
    property OLD_EstCob: string read GetEstCobOLD write SetEstCobOLD;
    property OLD_CgcCob: Integer read GetCgcCobOLD write SetCgcCobOLD;
    property OLD_EntCor: Char read GetEntCorOLD write SetEntCorOLD;
    property OLD_FonCli: string read GetFonCliOLD write SetFonCliOLD;
    property OLD_FonCl2: string read GetFonCl2OLD write SetFonCl2OLD;
    property OLD_FonCl3: string read GetFonCl3OLD write SetFonCl3OLD;
    property OLD_FonCl4: string read GetFonCl4OLD write SetFonCl4OLD;
    property OLD_FonCl5: string read GetFonCl5OLD write SetFonCl5OLD;
    property OLD_FaxCli: string read GetFaxCliOLD write SetFaxCliOLD;
    property OLD_CxaPst: Integer read GetCxaPstOLD write SetCxaPstOLD;
    property OLD_IntNet: string read GetIntNetOLD write SetIntNetOLD;
    property OLD_CodRoe: string read GetCodRoeOLD write SetCodRoeOLD;
    property OLD_SeqRoe: Integer read GetSeqRoeOLD write SetSeqRoeOLD;
    property OLD_CodFor: Integer read GetCodForOLD write SetCodForOLD;
    property OLD_CliRep: Integer read GetCliRepOLD write SetCliRepOLD;
    property OLD_CliTra: Integer read GetCliTraOLD write SetCliTraOLD;
    property OLD_UsuCad: Integer read GetUsuCadOLD write SetUsuCadOLD;
    property OLD_DatCad: TDate read GetDatCadOLD write SetDatCadOLD;
    property OLD_DatFim: TDate read GetDatFimOLD write SetDatFimOLD;
    property OLD_HorCad: Integer read GetHorCadOLD write SetHorCadOLD;
    property OLD_HorFim: Integer read GetHorFimOLD write SetHorFimOLD;
    property OLD_DatVct: TDate read GetDatVctOLD write SetDatVctOLD;
    property OLD_DatAtu: TDate read GetDatAtuOLD write SetDatAtuOLD;
    property OLD_HorAtu: Integer read GetHorAtuOLD write SetHorAtuOLD;
    property OLD_UsuAtu: Integer read GetUsuAtuOLD write SetUsuAtuOLD;
    property OLD_QtdAtu: Integer read GetQtdAtuOLD write SetQtdAtuOLD;
    property OLD_DatIcv: TDate read GetDatIcvOLD write SetDatIcvOLD;
    property OLD_SitCli: Char read GetSitCliOLD write SetSitCliOLD;
    property OLD_CodMot: Integer read GetCodMotOLD write SetCodMotOLD;
    property OLD_BloCre: Char read GetBloCreOLD write SetBloCreOLD;
    property OLD_ObsMot: string read GetObsMotOLD write SetObsMotOLD;
    property OLD_UsuMot: Integer read GetUsuMotOLD write SetUsuMotOLD;
    property OLD_DatMot: TDate read GetDatMotOLD write SetDatMotOLD;
    property OLD_HorMot: Integer read GetHorMotOLD write SetHorMotOLD;
    property OLD_UsuOpe: Integer read GetUsuOpeOLD write SetUsuOpeOLD;
    property OLD_CodAma: string read GetCodAmaOLD write SetCodAmaOLD;
    property OLD_CodSab: string read GetCodSabOLD write SetCodSabOLD;
    property OLD_CodGal: string read GetCodGalOLD write SetCodGalOLD;
    property OLD_TriIcm: Char read GetTriIcmOLD write SetTriIcmOLD;
    property OLD_TriIpi: Char read GetTriIpiOLD write SetTriIpiOLD;
    property OLD_BaiEnt: string read GetBaiEntOLD write SetBaiEntOLD;
    property OLD_BaiCob: string read GetBaiCobOLD write SetBaiCobOLD;
    property OLD_CliFor: Char read GetCliForOLD write SetCliForOLD;
    property OLD_IdeCli: string read GetIdeCliOLD write SetIdeCliOLD;
    property OLD_TriPis: Char read GetTriPisOLD write SetTriPisOLD;
    property OLD_TriCof: Char read GetTriCofOLD write SetTriCofOLD;
    property OLD_IndExp: Integer read GetIndExpOLD write SetIndExpOLD;
    property OLD_DatPal: TDate read GetDatPalOLD write SetDatPalOLD;
    property OLD_HorPal: Integer read GetHorPalOLD write SetHorPalOLD;
    property OLD_RetCof: Char read GetRetCofOLD write SetRetCofOLD;
    property OLD_RetCsl: Char read GetRetCslOLD write SetRetCslOLD;
    property OLD_RetPis: Char read GetRetPisOLD write SetRetPisOLD;
    property OLD_RetOur: Char read GetRetOurOLD write SetRetOurOLD;
    property OLD_CodSro: string read GetCodSroOLD write SetCodSroOLD;
    property OLD_DatSuf: TDate read GetDatSufOLD write SetDatSufOLD;
    property OLD_CepFre: Integer read GetCepFreOLD write SetCepFreOLD;
    property OLD_CodPdv: Integer read GetCodPdvOLD write SetCodPdvOLD;
    property OLD_DatPdv: TDate read GetDatPdvOLD write SetDatPdvOLD;
    property OLD_HorPdv: Integer read GetHorPdvOLD write SetHorPdvOLD;
    property OLD_RetPro: Char read GetRetProOLD write SetRetProOLD;
    property OLD_RetIrf: Char read GetRetIrfOLD write SetRetIrfOLD;
    property OLD_LimRet: Char read GetLimRetOLD write SetLimRetOLD;
    property OLD_CodCnv: Integer read GetCodCnvOLD write SetCodCnvOLD;
    property OLD_CalFun: Char read GetCalFunOLD write SetCalFunOLD;
    property OLD_EenCli: string read GetEenCliOLD write SetEenCliOLD;
    property OLD_EenEnt: string read GetEenEntOLD write SetEenEntOLD;
    property OLD_EenCob: string read GetEenCobOLD write SetEenCobOLD;
    property OLD_PerAin: Double read GetPerAinOLD write SetPerAinOLD;
    property OLD_NenCli: string read GetNenCliOLD write SetNenCliOLD;
    property OLD_NenEnt: string read GetNenEntOLD write SetNenEntOLD;
    property OLD_NenCob: string read GetNenCobOLD write SetNenCobOLD;
    property OLD_TipAce: Integer read GetTipAceOLD write SetTipAceOLD;
    property OLD_EmaNfe: string read GetEmaNfeOLD write SetEmaNfeOLD;
    property OLD_InsAnp: Integer read GetInsAnpOLD write SetInsAnpOLD;
    property OLD_IndCoo: Char read GetIndCooOLD write SetIndCooOLD;
    property OLD_CodRtr: Integer read GetCodRtrOLD write SetCodRtrOLD;
    property OLD_RegEst: Integer read GetRegEstOLD write SetRegEstOLD;
    property OLD_NatRet: Integer read GetNatRetOLD write SetNatRetOLD;
    property OLD_NatPis: Integer read GetNatPisOLD write SetNatPisOLD;
    property OLD_NatCof: Integer read GetNatCofOLD write SetNatCofOLD;
    property OLD_ConFin: Char read GetConFinOLD write SetConFinOLD;
    property OLD_USU_NegSci: Char read GetUSU_NegSciOLD write SetUSU_NegSciOLD;
    property OLD_USU_SepEsp: Char read GetUSU_SepEspOLD write SetUSU_SepEspOLD;
    property OLD_USU_TesMan: Char read GetUSU_TesManOLD write SetUSU_TesManOLD;
    property OLD_USU_EnvCam: Char read GetUSU_EnvCamOLD write SetUSU_EnvCamOLD;
    property OLD_USU_Site: string read GetUSU_SiteOLD write SetUSU_SiteOLD;
    property OLD_USU_DatFun: TDate read GetUSU_DatFunOLD write SetUSU_DatFunOLD;
    property OLD_USU_AvFaPr: Char read GetUSU_AvFaPrOLD write SetUSU_AvFaPrOLD;
    property OLD_USU_IndEnv: Char read GetUSU_IndEnvOLD write SetUSU_IndEnvOLD;
    property OLD_USU_AcMGen: Char read GetUSU_AcMGenOLD write SetUSU_AcMGenOLD;
    property OLD_USU_TemBen: Char read GetUSU_TemBenOLD write SetUSU_TemBenOLD;
    property OLD_USU_QMultVen: Char read GetUSU_QMultVenOLD write SetUSU_QMultVenOLD;
    property OLD_USU_ExiOC: Char read GetUSU_ExiOCOLD write SetUSU_ExiOCOLD;
    property OLD_USU_EnvPDF: Char read GetUSU_EnvPDFOLD write SetUSU_EnvPDFOLD;
    property OLD_USU_PreFix: Char read GetUSU_PreFixOLD write SetUSU_PreFixOLD;
    property OLD_USU_ExiOD: Char read GetUSU_ExiODOLD write SetUSU_ExiODOLD;
    property OLD_USU_ConPcl: Char read GetUSU_ConPclOLD write SetUSU_ConPclOLD;
    property OLD_USU_EnvSer: Char read GetUSU_EnvSerOLD write SetUSU_EnvSerOLD;
    property OLD_USU_FilB2B: Integer read GetUSU_FilB2BOLD write SetUSU_FilB2BOLD;
    property OLD_USU_ExiSG: Char read GetUSU_ExiSGOLD write SetUSU_ExiSGOLD;
    property OLD_USU_EmpB2B: Integer read GetUSU_EmpB2BOLD write SetUSU_EmpB2BOLD;
    property OLD_USU_LocClp: Char read GetUSU_LocClpOLD write SetUSU_LocClpOLD;
  end;

implementation

{ T085CLI }

constructor T085CLI.Create();
begin
  AddPrimaryKeys('CodCli');

  inherited Create('E085CLI');
end;

destructor T085CLI.Destroy();
begin
  inherited;
end;

function T085CLI.GetCodCli: Integer;
begin
  Result := FCodCli;
end;

procedure T085CLI.SetCodCli(const pCodCli: Integer);
begin
  FCodCli := pCodCli;

  CheckField('CodCli');
end;

function T085CLI.GetNomCli: string;
begin
  Result := FNomCli;
end;

procedure T085CLI.SetNomCli(const pNomCli: string);
begin
  FNomCli := pNomCli;

  CheckField('NomCli');
end;

function T085CLI.GetApeCli: string;
begin
  Result := FApeCli;
end;

procedure T085CLI.SetApeCli(const pApeCli: string);
begin
  FApeCli := pApeCli;

  CheckField('ApeCli');
end;

function T085CLI.GetMarCli: string;
begin
  Result := FMarCli;
end;

procedure T085CLI.SetMarCli(const pMarCli: string);
begin
  FMarCli := pMarCli;

  CheckField('MarCli');
end;

function T085CLI.GetSenCli: string;
begin
  Result := FSenCli;
end;

procedure T085CLI.SetSenCli(const pSenCli: string);
begin
  FSenCli := pSenCli;

  CheckField('SenCli');
end;

function T085CLI.GetTipCli: Char;
begin
  Result := FTipCli;
end;

procedure T085CLI.SetTipCli(const pTipCli: Char);
begin
  FTipCli := pTipCli;

  CheckField('TipCli');
end;

function T085CLI.GetTipMer: Char;
begin
  Result := FTipMer;
end;

procedure T085CLI.SetTipMer(const pTipMer: Char);
begin
  FTipMer := pTipMer;

  CheckField('TipMer');
end;

function T085CLI.GetTipEmc: Integer;
begin
  Result := FTipEmc;
end;

procedure T085CLI.SetTipEmc(const pTipEmc: Integer);
begin
  FTipEmc := pTipEmc;

  CheckField('TipEmc');
end;

function T085CLI.GetCliCon: Char;
begin
  Result := FCliCon;
end;

procedure T085CLI.SetCliCon(const pCliCon: Char);
begin
  FCliCon := pCliCon;

  CheckField('CliCon');
end;

function T085CLI.GetCodRam: string;
begin
  Result := FCodRam;
end;

procedure T085CLI.SetCodRam(const pCodRam: string);
begin
  FCodRam := pCodRam;

  CheckField('CodRam');
end;

function T085CLI.GetInsEst: string;
begin
  Result := FInsEst;
end;

procedure T085CLI.SetInsEst(const pInsEst: string);
begin
  FInsEst := pInsEst;

  CheckField('InsEst');
end;

function T085CLI.GetInsMun: string;
begin
  Result := FInsMun;
end;

procedure T085CLI.SetInsMun(const pInsMun: string);
begin
  FInsMun := pInsMun;

  CheckField('InsMun');
end;

function T085CLI.GetCgcCpf: Integer;
begin
  Result := FCgcCpf;
end;

procedure T085CLI.SetCgcCpf(const pCgcCpf: Integer);
begin
  FCgcCpf := pCgcCpf;

  CheckField('CgcCpf');
end;

function T085CLI.GetCodGre: Integer;
begin
  Result := FCodGre;
end;

procedure T085CLI.SetCodGre(const pCodGre: Integer);
begin
  FCodGre := pCodGre;

  CheckField('CodGre');
end;

function T085CLI.GetZonFra: Integer;
begin
  Result := FZonFra;
end;

procedure T085CLI.SetZonFra(const pZonFra: Integer);
begin
  FZonFra := pZonFra;

  CheckField('ZonFra');
end;

function T085CLI.GetCodSuf: string;
begin
  Result := FCodSuf;
end;

procedure T085CLI.SetCodSuf(const pCodSuf: string);
begin
  FCodSuf := pCodSuf;

  CheckField('CodSuf');
end;

function T085CLI.GetEndCli: string;
begin
  Result := FEndCli;
end;

procedure T085CLI.SetEndCli(const pEndCli: string);
begin
  FEndCli := pEndCli;

  CheckField('EndCli');
end;

function T085CLI.GetCplEnd: string;
begin
  Result := FCplEnd;
end;

procedure T085CLI.SetCplEnd(const pCplEnd: string);
begin
  FCplEnd := pCplEnd;

  CheckField('CplEnd');
end;

function T085CLI.GetCliPrx: string;
begin
  Result := FCliPrx;
end;

procedure T085CLI.SetCliPrx(const pCliPrx: string);
begin
  FCliPrx := pCliPrx;

  CheckField('CliPrx');
end;

function T085CLI.GetZipCod: string;
begin
  Result := FZipCod;
end;

procedure T085CLI.SetZipCod(const pZipCod: string);
begin
  FZipCod := pZipCod;

  CheckField('ZipCod');
end;

function T085CLI.GetCepCli: Integer;
begin
  Result := FCepCli;
end;

procedure T085CLI.SetCepCli(const pCepCli: Integer);
begin
  FCepCli := pCepCli;

  CheckField('CepCli');
end;

function T085CLI.GetCepIni: Integer;
begin
  Result := FCepIni;
end;

procedure T085CLI.SetCepIni(const pCepIni: Integer);
begin
  FCepIni := pCepIni;

  CheckField('CepIni');
end;

function T085CLI.GetBaiCli: string;
begin
  Result := FBaiCli;
end;

procedure T085CLI.SetBaiCli(const pBaiCli: string);
begin
  FBaiCli := pBaiCli;

  CheckField('BaiCli');
end;

function T085CLI.GetCidCli: string;
begin
  Result := FCidCli;
end;

procedure T085CLI.SetCidCli(const pCidCli: string);
begin
  FCidCli := pCidCli;

  CheckField('CidCli');
end;

function T085CLI.GetSigUfs: string;
begin
  Result := FSigUfs;
end;

procedure T085CLI.SetSigUfs(const pSigUfs: string);
begin
  FSigUfs := pSigUfs;

  CheckField('SigUfs');
end;

function T085CLI.GetCodPai: string;
begin
  Result := FCodPai;
end;

procedure T085CLI.SetCodPai(const pCodPai: string);
begin
  FCodPai := pCodPai;

  CheckField('CodPai');
end;

function T085CLI.GetTemEnt: Char;
begin
  Result := FTemEnt;
end;

procedure T085CLI.SetTemEnt(const pTemEnt: Char);
begin
  FTemEnt := pTemEnt;

  CheckField('TemEnt');
end;

function T085CLI.GetEndEnt: string;
begin
  Result := FEndEnt;
end;

procedure T085CLI.SetEndEnt(const pEndEnt: string);
begin
  FEndEnt := pEndEnt;

  CheckField('EndEnt');
end;

function T085CLI.GetCplEnt: string;
begin
  Result := FCplEnt;
end;

procedure T085CLI.SetCplEnt(const pCplEnt: string);
begin
  FCplEnt := pCplEnt;

  CheckField('CplEnt');
end;

function T085CLI.GetCepEnt: Integer;
begin
  Result := FCepEnt;
end;

procedure T085CLI.SetCepEnt(const pCepEnt: Integer);
begin
  FCepEnt := pCepEnt;

  CheckField('CepEnt');
end;

function T085CLI.GetIniEnt: Integer;
begin
  Result := FIniEnt;
end;

procedure T085CLI.SetIniEnt(const pIniEnt: Integer);
begin
  FIniEnt := pIniEnt;

  CheckField('IniEnt');
end;

function T085CLI.GetCidEnt: string;
begin
  Result := FCidEnt;
end;

procedure T085CLI.SetCidEnt(const pCidEnt: string);
begin
  FCidEnt := pCidEnt;

  CheckField('CidEnt');
end;

function T085CLI.GetEstEnt: string;
begin
  Result := FEstEnt;
end;

procedure T085CLI.SetEstEnt(const pEstEnt: string);
begin
  FEstEnt := pEstEnt;

  CheckField('EstEnt');
end;

function T085CLI.GetInsEnt: string;
begin
  Result := FInsEnt;
end;

procedure T085CLI.SetInsEnt(const pInsEnt: string);
begin
  FInsEnt := pInsEnt;

  CheckField('InsEnt');
end;

function T085CLI.GetCgcEnt: Integer;
begin
  Result := FCgcEnt;
end;

procedure T085CLI.SetCgcEnt(const pCgcEnt: Integer);
begin
  FCgcEnt := pCgcEnt;

  CheckField('CgcEnt');
end;

function T085CLI.GetTemCob: Char;
begin
  Result := FTemCob;
end;

procedure T085CLI.SetTemCob(const pTemCob: Char);
begin
  FTemCob := pTemCob;

  CheckField('TemCob');
end;

function T085CLI.GetEndCob: string;
begin
  Result := FEndCob;
end;

procedure T085CLI.SetEndCob(const pEndCob: string);
begin
  FEndCob := pEndCob;

  CheckField('EndCob');
end;

function T085CLI.GetCplCob: string;
begin
  Result := FCplCob;
end;

procedure T085CLI.SetCplCob(const pCplCob: string);
begin
  FCplCob := pCplCob;

  CheckField('CplCob');
end;

function T085CLI.GetCepCob: Integer;
begin
  Result := FCepCob;
end;

procedure T085CLI.SetCepCob(const pCepCob: Integer);
begin
  FCepCob := pCepCob;

  CheckField('CepCob');
end;

function T085CLI.GetIniCob: Integer;
begin
  Result := FIniCob;
end;

procedure T085CLI.SetIniCob(const pIniCob: Integer);
begin
  FIniCob := pIniCob;

  CheckField('IniCob');
end;

function T085CLI.GetCidCob: string;
begin
  Result := FCidCob;
end;

procedure T085CLI.SetCidCob(const pCidCob: string);
begin
  FCidCob := pCidCob;

  CheckField('CidCob');
end;

function T085CLI.GetEstCob: string;
begin
  Result := FEstCob;
end;

procedure T085CLI.SetEstCob(const pEstCob: string);
begin
  FEstCob := pEstCob;

  CheckField('EstCob');
end;

function T085CLI.GetCgcCob: Integer;
begin
  Result := FCgcCob;
end;

procedure T085CLI.SetCgcCob(const pCgcCob: Integer);
begin
  FCgcCob := pCgcCob;

  CheckField('CgcCob');
end;

function T085CLI.GetEntCor: Char;
begin
  Result := FEntCor;
end;

procedure T085CLI.SetEntCor(const pEntCor: Char);
begin
  FEntCor := pEntCor;

  CheckField('EntCor');
end;

function T085CLI.GetFonCli: string;
begin
  Result := FFonCli;
end;

procedure T085CLI.SetFonCli(const pFonCli: string);
begin
  FFonCli := pFonCli;

  CheckField('FonCli');
end;

function T085CLI.GetFonCl2: string;
begin
  Result := FFonCl2;
end;

procedure T085CLI.SetFonCl2(const pFonCl2: string);
begin
  FFonCl2 := pFonCl2;

  CheckField('FonCl2');
end;

function T085CLI.GetFonCl3: string;
begin
  Result := FFonCl3;
end;

procedure T085CLI.SetFonCl3(const pFonCl3: string);
begin
  FFonCl3 := pFonCl3;

  CheckField('FonCl3');
end;

function T085CLI.GetFonCl4: string;
begin
  Result := FFonCl4;
end;

procedure T085CLI.SetFonCl4(const pFonCl4: string);
begin
  FFonCl4 := pFonCl4;

  CheckField('FonCl4');
end;

function T085CLI.GetFonCl5: string;
begin
  Result := FFonCl5;
end;

procedure T085CLI.SetFonCl5(const pFonCl5: string);
begin
  FFonCl5 := pFonCl5;

  CheckField('FonCl5');
end;

function T085CLI.GetFaxCli: string;
begin
  Result := FFaxCli;
end;

procedure T085CLI.SetFaxCli(const pFaxCli: string);
begin
  FFaxCli := pFaxCli;

  CheckField('FaxCli');
end;

function T085CLI.GetCxaPst: Integer;
begin
  Result := FCxaPst;
end;

procedure T085CLI.SetCxaPst(const pCxaPst: Integer);
begin
  FCxaPst := pCxaPst;

  CheckField('CxaPst');
end;

function T085CLI.GetIntNet: string;
begin
  Result := FIntNet;
end;

procedure T085CLI.SetIntNet(const pIntNet: string);
begin
  FIntNet := pIntNet;

  CheckField('IntNet');
end;

function T085CLI.GetCodRoe: string;
begin
  Result := FCodRoe;
end;

procedure T085CLI.SetCodRoe(const pCodRoe: string);
begin
  FCodRoe := pCodRoe;

  CheckField('CodRoe');
end;

function T085CLI.GetSeqRoe: Integer;
begin
  Result := FSeqRoe;
end;

procedure T085CLI.SetSeqRoe(const pSeqRoe: Integer);
begin
  FSeqRoe := pSeqRoe;

  CheckField('SeqRoe');
end;

function T085CLI.GetCodFor: Integer;
begin
  Result := FCodFor;
end;

procedure T085CLI.SetCodFor(const pCodFor: Integer);
begin
  FCodFor := pCodFor;

  CheckField('CodFor');
end;

function T085CLI.GetCliRep: Integer;
begin
  Result := FCliRep;
end;

procedure T085CLI.SetCliRep(const pCliRep: Integer);
begin
  FCliRep := pCliRep;

  CheckField('CliRep');
end;

function T085CLI.GetCliTra: Integer;
begin
  Result := FCliTra;
end;

procedure T085CLI.SetCliTra(const pCliTra: Integer);
begin
  FCliTra := pCliTra;

  CheckField('CliTra');
end;

function T085CLI.GetUsuCad: Integer;
begin
  Result := FUsuCad;
end;

procedure T085CLI.SetUsuCad(const pUsuCad: Integer);
begin
  FUsuCad := pUsuCad;

  CheckField('UsuCad');
end;

function T085CLI.GetDatCad: TDate;
begin
  Result := FDatCad;
end;

procedure T085CLI.SetDatCad(const pDatCad: TDate);
begin
  FDatCad := pDatCad;

  CheckField('DatCad');
end;

function T085CLI.GetDatFim: TDate;
begin
  Result := FDatFim;
end;

procedure T085CLI.SetDatFim(const pDatFim: TDate);
begin
  FDatFim := pDatFim;

  CheckField('DatFim');
end;

function T085CLI.GetHorCad: Integer;
begin
  Result := FHorCad;
end;

procedure T085CLI.SetHorCad(const pHorCad: Integer);
begin
  FHorCad := pHorCad;

  CheckField('HorCad');
end;

function T085CLI.GetHorFim: Integer;
begin
  Result := FHorFim;
end;

procedure T085CLI.SetHorFim(const pHorFim: Integer);
begin
  FHorFim := pHorFim;

  CheckField('HorFim');
end;

function T085CLI.GetDatVct: TDate;
begin
  Result := FDatVct;
end;

procedure T085CLI.SetDatVct(const pDatVct: TDate);
begin
  FDatVct := pDatVct;

  CheckField('DatVct');
end;

function T085CLI.GetDatAtu: TDate;
begin
  Result := FDatAtu;
end;

procedure T085CLI.SetDatAtu(const pDatAtu: TDate);
begin
  FDatAtu := pDatAtu;

  CheckField('DatAtu');
end;

function T085CLI.GetHorAtu: Integer;
begin
  Result := FHorAtu;
end;

procedure T085CLI.SetHorAtu(const pHorAtu: Integer);
begin
  FHorAtu := pHorAtu;

  CheckField('HorAtu');
end;

function T085CLI.GetUsuAtu: Integer;
begin
  Result := FUsuAtu;
end;

procedure T085CLI.SetUsuAtu(const pUsuAtu: Integer);
begin
  FUsuAtu := pUsuAtu;

  CheckField('UsuAtu');
end;

function T085CLI.GetQtdAtu: Integer;
begin
  Result := FQtdAtu;
end;

procedure T085CLI.SetQtdAtu(const pQtdAtu: Integer);
begin
  FQtdAtu := pQtdAtu;

  CheckField('QtdAtu');
end;

function T085CLI.GetDatIcv: TDate;
begin
  Result := FDatIcv;
end;

procedure T085CLI.SetDatIcv(const pDatIcv: TDate);
begin
  FDatIcv := pDatIcv;

  CheckField('DatIcv');
end;

function T085CLI.GetSitCli: Char;
begin
  Result := FSitCli;
end;

procedure T085CLI.SetSitCli(const pSitCli: Char);
begin
  FSitCli := pSitCli;

  CheckField('SitCli');
end;

function T085CLI.GetCodMot: Integer;
begin
  Result := FCodMot;
end;

procedure T085CLI.SetCodMot(const pCodMot: Integer);
begin
  FCodMot := pCodMot;

  CheckField('CodMot');
end;

function T085CLI.GetBloCre: Char;
begin
  Result := FBloCre;
end;

procedure T085CLI.SetBloCre(const pBloCre: Char);
begin
  FBloCre := pBloCre;

  CheckField('BloCre');
end;

function T085CLI.GetObsMot: string;
begin
  Result := FObsMot;
end;

procedure T085CLI.SetObsMot(const pObsMot: string);
begin
  FObsMot := pObsMot;

  CheckField('ObsMot');
end;

function T085CLI.GetUsuMot: Integer;
begin
  Result := FUsuMot;
end;

procedure T085CLI.SetUsuMot(const pUsuMot: Integer);
begin
  FUsuMot := pUsuMot;

  CheckField('UsuMot');
end;

function T085CLI.GetDatMot: TDate;
begin
  Result := FDatMot;
end;

procedure T085CLI.SetDatMot(const pDatMot: TDate);
begin
  FDatMot := pDatMot;

  CheckField('DatMot');
end;

function T085CLI.GetHorMot: Integer;
begin
  Result := FHorMot;
end;

procedure T085CLI.SetHorMot(const pHorMot: Integer);
begin
  FHorMot := pHorMot;

  CheckField('HorMot');
end;

function T085CLI.GetUsuOpe: Integer;
begin
  Result := FUsuOpe;
end;

procedure T085CLI.SetUsuOpe(const pUsuOpe: Integer);
begin
  FUsuOpe := pUsuOpe;

  CheckField('UsuOpe');
end;

function T085CLI.GetCodAma: string;
begin
  Result := FCodAma;
end;

procedure T085CLI.SetCodAma(const pCodAma: string);
begin
  FCodAma := pCodAma;

  CheckField('CodAma');
end;

function T085CLI.GetCodSab: string;
begin
  Result := FCodSab;
end;

procedure T085CLI.SetCodSab(const pCodSab: string);
begin
  FCodSab := pCodSab;

  CheckField('CodSab');
end;

function T085CLI.GetCodGal: string;
begin
  Result := FCodGal;
end;

procedure T085CLI.SetCodGal(const pCodGal: string);
begin
  FCodGal := pCodGal;

  CheckField('CodGal');
end;

function T085CLI.GetTriIcm: Char;
begin
  Result := FTriIcm;
end;

procedure T085CLI.SetTriIcm(const pTriIcm: Char);
begin
  FTriIcm := pTriIcm;

  CheckField('TriIcm');
end;

function T085CLI.GetTriIpi: Char;
begin
  Result := FTriIpi;
end;

procedure T085CLI.SetTriIpi(const pTriIpi: Char);
begin
  FTriIpi := pTriIpi;

  CheckField('TriIpi');
end;

function T085CLI.GetBaiEnt: string;
begin
  Result := FBaiEnt;
end;

procedure T085CLI.SetBaiEnt(const pBaiEnt: string);
begin
  FBaiEnt := pBaiEnt;

  CheckField('BaiEnt');
end;

function T085CLI.GetBaiCob: string;
begin
  Result := FBaiCob;
end;

procedure T085CLI.SetBaiCob(const pBaiCob: string);
begin
  FBaiCob := pBaiCob;

  CheckField('BaiCob');
end;

function T085CLI.GetCliFor: Char;
begin
  Result := FCliFor;
end;

procedure T085CLI.SetCliFor(const pCliFor: Char);
begin
  FCliFor := pCliFor;

  CheckField('CliFor');
end;

function T085CLI.GetIdeCli: string;
begin
  Result := FIdeCli;
end;

procedure T085CLI.SetIdeCli(const pIdeCli: string);
begin
  FIdeCli := pIdeCli;

  CheckField('IdeCli');
end;

function T085CLI.GetTriPis: Char;
begin
  Result := FTriPis;
end;

procedure T085CLI.SetTriPis(const pTriPis: Char);
begin
  FTriPis := pTriPis;

  CheckField('TriPis');
end;

function T085CLI.GetTriCof: Char;
begin
  Result := FTriCof;
end;

procedure T085CLI.SetTriCof(const pTriCof: Char);
begin
  FTriCof := pTriCof;

  CheckField('TriCof');
end;

function T085CLI.GetIndExp: Integer;
begin
  Result := FIndExp;
end;

procedure T085CLI.SetIndExp(const pIndExp: Integer);
begin
  FIndExp := pIndExp;

  CheckField('IndExp');
end;

function T085CLI.GetDatPal: TDate;
begin
  Result := FDatPal;
end;

procedure T085CLI.SetDatPal(const pDatPal: TDate);
begin
  FDatPal := pDatPal;

  CheckField('DatPal');
end;

function T085CLI.GetHorPal: Integer;
begin
  Result := FHorPal;
end;

procedure T085CLI.SetHorPal(const pHorPal: Integer);
begin
  FHorPal := pHorPal;

  CheckField('HorPal');
end;

function T085CLI.GetRetCof: Char;
begin
  Result := FRetCof;
end;

procedure T085CLI.SetRetCof(const pRetCof: Char);
begin
  FRetCof := pRetCof;

  CheckField('RetCof');
end;

function T085CLI.GetRetCsl: Char;
begin
  Result := FRetCsl;
end;

procedure T085CLI.SetRetCsl(const pRetCsl: Char);
begin
  FRetCsl := pRetCsl;

  CheckField('RetCsl');
end;

function T085CLI.GetRetPis: Char;
begin
  Result := FRetPis;
end;

procedure T085CLI.SetRetPis(const pRetPis: Char);
begin
  FRetPis := pRetPis;

  CheckField('RetPis');
end;

function T085CLI.GetRetOur: Char;
begin
  Result := FRetOur;
end;

procedure T085CLI.SetRetOur(const pRetOur: Char);
begin
  FRetOur := pRetOur;

  CheckField('RetOur');
end;

function T085CLI.GetCodSro: string;
begin
  Result := FCodSro;
end;

procedure T085CLI.SetCodSro(const pCodSro: string);
begin
  FCodSro := pCodSro;

  CheckField('CodSro');
end;

function T085CLI.GetDatSuf: TDate;
begin
  Result := FDatSuf;
end;

procedure T085CLI.SetDatSuf(const pDatSuf: TDate);
begin
  FDatSuf := pDatSuf;

  CheckField('DatSuf');
end;

function T085CLI.GetCepFre: Integer;
begin
  Result := FCepFre;
end;

procedure T085CLI.SetCepFre(const pCepFre: Integer);
begin
  FCepFre := pCepFre;

  CheckField('CepFre');
end;

function T085CLI.GetCodPdv: Integer;
begin
  Result := FCodPdv;
end;

procedure T085CLI.SetCodPdv(const pCodPdv: Integer);
begin
  FCodPdv := pCodPdv;

  CheckField('CodPdv');
end;

function T085CLI.GetDatPdv: TDate;
begin
  Result := FDatPdv;
end;

procedure T085CLI.SetDatPdv(const pDatPdv: TDate);
begin
  FDatPdv := pDatPdv;

  CheckField('DatPdv');
end;

function T085CLI.GetHorPdv: Integer;
begin
  Result := FHorPdv;
end;

procedure T085CLI.SetHorPdv(const pHorPdv: Integer);
begin
  FHorPdv := pHorPdv;

  CheckField('HorPdv');
end;

function T085CLI.GetRetPro: Char;
begin
  Result := FRetPro;
end;

procedure T085CLI.SetRetPro(const pRetPro: Char);
begin
  FRetPro := pRetPro;

  CheckField('RetPro');
end;

function T085CLI.GetRetIrf: Char;
begin
  Result := FRetIrf;
end;

procedure T085CLI.SetRetIrf(const pRetIrf: Char);
begin
  FRetIrf := pRetIrf;

  CheckField('RetIrf');
end;

function T085CLI.GetLimRet: Char;
begin
  Result := FLimRet;
end;

procedure T085CLI.SetLimRet(const pLimRet: Char);
begin
  FLimRet := pLimRet;

  CheckField('LimRet');
end;

function T085CLI.GetCodCnv: Integer;
begin
  Result := FCodCnv;
end;

procedure T085CLI.SetCodCnv(const pCodCnv: Integer);
begin
  FCodCnv := pCodCnv;

  CheckField('CodCnv');
end;

function T085CLI.GetCalFun: Char;
begin
  Result := FCalFun;
end;

procedure T085CLI.SetCalFun(const pCalFun: Char);
begin
  FCalFun := pCalFun;

  CheckField('CalFun');
end;

function T085CLI.GetEenCli: string;
begin
  Result := FEenCli;
end;

procedure T085CLI.SetEenCli(const pEenCli: string);
begin
  FEenCli := pEenCli;

  CheckField('EenCli');
end;

function T085CLI.GetEenEnt: string;
begin
  Result := FEenEnt;
end;

procedure T085CLI.SetEenEnt(const pEenEnt: string);
begin
  FEenEnt := pEenEnt;

  CheckField('EenEnt');
end;

function T085CLI.GetEenCob: string;
begin
  Result := FEenCob;
end;

procedure T085CLI.SetEenCob(const pEenCob: string);
begin
  FEenCob := pEenCob;

  CheckField('EenCob');
end;

function T085CLI.GetPerAin: Double;
begin
  Result := FPerAin;
end;

procedure T085CLI.SetPerAin(const pPerAin: Double);
begin
  FPerAin := pPerAin;

  CheckField('PerAin');
end;

function T085CLI.GetNenCli: string;
begin
  Result := FNenCli;
end;

procedure T085CLI.SetNenCli(const pNenCli: string);
begin
  FNenCli := pNenCli;

  CheckField('NenCli');
end;

function T085CLI.GetNenEnt: string;
begin
  Result := FNenEnt;
end;

procedure T085CLI.SetNenEnt(const pNenEnt: string);
begin
  FNenEnt := pNenEnt;

  CheckField('NenEnt');
end;

function T085CLI.GetNenCob: string;
begin
  Result := FNenCob;
end;

procedure T085CLI.SetNenCob(const pNenCob: string);
begin
  FNenCob := pNenCob;

  CheckField('NenCob');
end;

function T085CLI.GetTipAce: Integer;
begin
  Result := FTipAce;
end;

procedure T085CLI.SetTipAce(const pTipAce: Integer);
begin
  FTipAce := pTipAce;

  CheckField('TipAce');
end;

function T085CLI.GetEmaNfe: string;
begin
  Result := FEmaNfe;
end;

procedure T085CLI.SetEmaNfe(const pEmaNfe: string);
begin
  FEmaNfe := pEmaNfe;

  CheckField('EmaNfe');
end;

function T085CLI.GetInsAnp: Integer;
begin
  Result := FInsAnp;
end;

procedure T085CLI.SetInsAnp(const pInsAnp: Integer);
begin
  FInsAnp := pInsAnp;

  CheckField('InsAnp');
end;

function T085CLI.GetIndCoo: Char;
begin
  Result := FIndCoo;
end;

procedure T085CLI.SetIndCoo(const pIndCoo: Char);
begin
  FIndCoo := pIndCoo;

  CheckField('IndCoo');
end;

function T085CLI.GetCodRtr: Integer;
begin
  Result := FCodRtr;
end;

procedure T085CLI.SetCodRtr(const pCodRtr: Integer);
begin
  FCodRtr := pCodRtr;

  CheckField('CodRtr');
end;

function T085CLI.GetRegEst: Integer;
begin
  Result := FRegEst;
end;

procedure T085CLI.SetRegEst(const pRegEst: Integer);
begin
  FRegEst := pRegEst;

  CheckField('RegEst');
end;

function T085CLI.GetNatRet: Integer;
begin
  Result := FNatRet;
end;

procedure T085CLI.SetNatRet(const pNatRet: Integer);
begin
  FNatRet := pNatRet;

  CheckField('NatRet');
end;

function T085CLI.GetNatPis: Integer;
begin
  Result := FNatPis;
end;

procedure T085CLI.SetNatPis(const pNatPis: Integer);
begin
  FNatPis := pNatPis;

  CheckField('NatPis');
end;

function T085CLI.GetNatCof: Integer;
begin
  Result := FNatCof;
end;

procedure T085CLI.SetNatCof(const pNatCof: Integer);
begin
  FNatCof := pNatCof;

  CheckField('NatCof');
end;

function T085CLI.GetConFin: Char;
begin
  Result := FConFin;
end;

procedure T085CLI.SetConFin(const pConFin: Char);
begin
  FConFin := pConFin;

  CheckField('ConFin');
end;

function T085CLI.GetUSU_NegSci: Char;
begin
  Result := FUSU_NegSci;
end;

procedure T085CLI.SetUSU_NegSci(const pUSU_NegSci: Char);
begin
  FUSU_NegSci := pUSU_NegSci;

  CheckField('USU_NegSci');
end;

function T085CLI.GetUSU_SepEsp: Char;
begin
  Result := FUSU_SepEsp;
end;

procedure T085CLI.SetUSU_SepEsp(const pUSU_SepEsp: Char);
begin
  FUSU_SepEsp := pUSU_SepEsp;

  CheckField('USU_SepEsp');
end;

function T085CLI.GetUSU_TesMan: Char;
begin
  Result := FUSU_TesMan;
end;

procedure T085CLI.SetUSU_TesMan(const pUSU_TesMan: Char);
begin
  FUSU_TesMan := pUSU_TesMan;

  CheckField('USU_TesMan');
end;

function T085CLI.GetUSU_EnvCam: Char;
begin
  Result := FUSU_EnvCam;
end;

procedure T085CLI.SetUSU_EnvCam(const pUSU_EnvCam: Char);
begin
  FUSU_EnvCam := pUSU_EnvCam;

  CheckField('USU_EnvCam');
end;

function T085CLI.GetUSU_Site: string;
begin
  Result := FUSU_Site;
end;

procedure T085CLI.SetUSU_Site(const pUSU_Site: string);
begin
  FUSU_Site := pUSU_Site;

  CheckField('USU_Site');
end;

function T085CLI.GetUSU_DatFun: TDate;
begin
  Result := FUSU_DatFun;
end;

procedure T085CLI.SetUSU_DatFun(const pUSU_DatFun: TDate);
begin
  FUSU_DatFun := pUSU_DatFun;

  CheckField('USU_DatFun');
end;

function T085CLI.GetUSU_AvFaPr: Char;
begin
  Result := FUSU_AvFaPr;
end;

procedure T085CLI.SetUSU_AvFaPr(const pUSU_AvFaPr: Char);
begin
  FUSU_AvFaPr := pUSU_AvFaPr;

  CheckField('USU_AvFaPr');
end;

function T085CLI.GetUSU_IndEnv: Char;
begin
  Result := FUSU_IndEnv;
end;

procedure T085CLI.SetUSU_IndEnv(const pUSU_IndEnv: Char);
begin
  FUSU_IndEnv := pUSU_IndEnv;

  CheckField('USU_IndEnv');
end;

function T085CLI.GetUSU_AcMGen: Char;
begin
  Result := FUSU_AcMGen;
end;

procedure T085CLI.SetUSU_AcMGen(const pUSU_AcMGen: Char);
begin
  FUSU_AcMGen := pUSU_AcMGen;

  CheckField('USU_AcMGen');
end;

function T085CLI.GetUSU_TemBen: Char;
begin
  Result := FUSU_TemBen;
end;

procedure T085CLI.SetUSU_TemBen(const pUSU_TemBen: Char);
begin
  FUSU_TemBen := pUSU_TemBen;

  CheckField('USU_TemBen');
end;

function T085CLI.GetUSU_QMultVen: Char;
begin
  Result := FUSU_QMultVen;
end;

procedure T085CLI.SetUSU_QMultVen(const pUSU_QMultVen: Char);
begin
  FUSU_QMultVen := pUSU_QMultVen;

  CheckField('USU_QMultVen');
end;

function T085CLI.GetUSU_ExiOC: Char;
begin
  Result := FUSU_ExiOC;
end;

procedure T085CLI.SetUSU_ExiOC(const pUSU_ExiOC: Char);
begin
  FUSU_ExiOC := pUSU_ExiOC;

  CheckField('USU_ExiOC');
end;

function T085CLI.GetUSU_EnvPDF: Char;
begin
  Result := FUSU_EnvPDF;
end;

procedure T085CLI.SetUSU_EnvPDF(const pUSU_EnvPDF: Char);
begin
  FUSU_EnvPDF := pUSU_EnvPDF;

  CheckField('USU_EnvPDF');
end;

function T085CLI.GetUSU_PreFix: Char;
begin
  Result := FUSU_PreFix;
end;

procedure T085CLI.SetUSU_PreFix(const pUSU_PreFix: Char);
begin
  FUSU_PreFix := pUSU_PreFix;

  CheckField('USU_PreFix');
end;

function T085CLI.GetUSU_ExiOD: Char;
begin
  Result := FUSU_ExiOD;
end;

procedure T085CLI.SetUSU_ExiOD(const pUSU_ExiOD: Char);
begin
  FUSU_ExiOD := pUSU_ExiOD;

  CheckField('USU_ExiOD');
end;

function T085CLI.GetUSU_ConPcl: Char;
begin
  Result := FUSU_ConPcl;
end;

procedure T085CLI.SetUSU_ConPcl(const pUSU_ConPcl: Char);
begin
  FUSU_ConPcl := pUSU_ConPcl;

  CheckField('USU_ConPcl');
end;

function T085CLI.GetUSU_EnvSer: Char;
begin
  Result := FUSU_EnvSer;
end;

procedure T085CLI.SetUSU_EnvSer(const pUSU_EnvSer: Char);
begin
  FUSU_EnvSer := pUSU_EnvSer;

  CheckField('USU_EnvSer');
end;

function T085CLI.GetUSU_FilB2B: Integer;
begin
  Result := FUSU_FilB2B;
end;

procedure T085CLI.SetUSU_FilB2B(const pUSU_FilB2B: Integer);
begin
  FUSU_FilB2B := pUSU_FilB2B;

  CheckField('USU_FilB2B');
end;

function T085CLI.GetUSU_ExiSG: Char;
begin
  Result := FUSU_ExiSG;
end;

procedure T085CLI.SetUSU_ExiSG(const pUSU_ExiSG: Char);
begin
  FUSU_ExiSG := pUSU_ExiSG;

  CheckField('USU_ExiSG');
end;

function T085CLI.GetUSU_EmpB2B: Integer;
begin
  Result := FUSU_EmpB2B;
end;

procedure T085CLI.SetUSU_EmpB2B(const pUSU_EmpB2B: Integer);
begin
  FUSU_EmpB2B := pUSU_EmpB2B;

  CheckField('USU_EmpB2B');
end;

function T085CLI.GetUSU_LocClp: Char;
begin
  Result := FUSU_LocClp;
end;

procedure T085CLI.SetUSU_LocClp(const pUSU_LocClp: Char);
begin
  FUSU_LocClp := pUSU_LocClp;

  CheckField('USU_LocClp');
end;

function T085CLI.GetCodCliOLD: Integer;
begin
  Result := FCodCliOLD;
end;

procedure T085CLI.SetCodCliOLD(const pCodCli: Integer);
begin
  FCodCliOLD := pCodCli;
end;

function T085CLI.GetNomCliOLD: string;
begin
  Result := FNomCliOLD;
end;

procedure T085CLI.SetNomCliOLD(const pNomCli: string);
begin
  FNomCliOLD := pNomCli;
end;

function T085CLI.GetApeCliOLD: string;
begin
  Result := FApeCliOLD;
end;

procedure T085CLI.SetApeCliOLD(const pApeCli: string);
begin
  FApeCliOLD := pApeCli;
end;

function T085CLI.GetMarCliOLD: string;
begin
  Result := FMarCliOLD;
end;

procedure T085CLI.SetMarCliOLD(const pMarCli: string);
begin
  FMarCliOLD := pMarCli;
end;

function T085CLI.GetSenCliOLD: string;
begin
  Result := FSenCliOLD;
end;

procedure T085CLI.SetSenCliOLD(const pSenCli: string);
begin
  FSenCliOLD := pSenCli;
end;

function T085CLI.GetTipCliOLD: Char;
begin
  Result := FTipCliOLD;
end;

procedure T085CLI.SetTipCliOLD(const pTipCli: Char);
begin
  FTipCliOLD := pTipCli;
end;

function T085CLI.GetTipMerOLD: Char;
begin
  Result := FTipMerOLD;
end;

procedure T085CLI.SetTipMerOLD(const pTipMer: Char);
begin
  FTipMerOLD := pTipMer;
end;

function T085CLI.GetTipEmcOLD: Integer;
begin
  Result := FTipEmcOLD;
end;

procedure T085CLI.SetTipEmcOLD(const pTipEmc: Integer);
begin
  FTipEmcOLD := pTipEmc;
end;

function T085CLI.GetCliConOLD: Char;
begin
  Result := FCliConOLD;
end;

procedure T085CLI.SetCliConOLD(const pCliCon: Char);
begin
  FCliConOLD := pCliCon;
end;

function T085CLI.GetCodRamOLD: string;
begin
  Result := FCodRamOLD;
end;

procedure T085CLI.SetCodRamOLD(const pCodRam: string);
begin
  FCodRamOLD := pCodRam;
end;

function T085CLI.GetInsEstOLD: string;
begin
  Result := FInsEstOLD;
end;

procedure T085CLI.SetInsEstOLD(const pInsEst: string);
begin
  FInsEstOLD := pInsEst;
end;

function T085CLI.GetInsMunOLD: string;
begin
  Result := FInsMunOLD;
end;

procedure T085CLI.SetInsMunOLD(const pInsMun: string);
begin
  FInsMunOLD := pInsMun;
end;

function T085CLI.GetCgcCpfOLD: Integer;
begin
  Result := FCgcCpfOLD;
end;

procedure T085CLI.SetCgcCpfOLD(const pCgcCpf: Integer);
begin
  FCgcCpfOLD := pCgcCpf;
end;

function T085CLI.GetCodGreOLD: Integer;
begin
  Result := FCodGreOLD;
end;

procedure T085CLI.SetCodGreOLD(const pCodGre: Integer);
begin
  FCodGreOLD := pCodGre;
end;

function T085CLI.GetZonFraOLD: Integer;
begin
  Result := FZonFraOLD;
end;

procedure T085CLI.SetZonFraOLD(const pZonFra: Integer);
begin
  FZonFraOLD := pZonFra;
end;

function T085CLI.GetCodSufOLD: string;
begin
  Result := FCodSufOLD;
end;

procedure T085CLI.SetCodSufOLD(const pCodSuf: string);
begin
  FCodSufOLD := pCodSuf;
end;

function T085CLI.GetEndCliOLD: string;
begin
  Result := FEndCliOLD;
end;

procedure T085CLI.SetEndCliOLD(const pEndCli: string);
begin
  FEndCliOLD := pEndCli;
end;

function T085CLI.GetCplEndOLD: string;
begin
  Result := FCplEndOLD;
end;

procedure T085CLI.SetCplEndOLD(const pCplEnd: string);
begin
  FCplEndOLD := pCplEnd;
end;

function T085CLI.GetCliPrxOLD: string;
begin
  Result := FCliPrxOLD;
end;

procedure T085CLI.SetCliPrxOLD(const pCliPrx: string);
begin
  FCliPrxOLD := pCliPrx;
end;

function T085CLI.GetZipCodOLD: string;
begin
  Result := FZipCodOLD;
end;

procedure T085CLI.SetZipCodOLD(const pZipCod: string);
begin
  FZipCodOLD := pZipCod;
end;

function T085CLI.GetCepCliOLD: Integer;
begin
  Result := FCepCliOLD;
end;

procedure T085CLI.SetCepCliOLD(const pCepCli: Integer);
begin
  FCepCliOLD := pCepCli;
end;

function T085CLI.GetCepIniOLD: Integer;
begin
  Result := FCepIniOLD;
end;

procedure T085CLI.SetCepIniOLD(const pCepIni: Integer);
begin
  FCepIniOLD := pCepIni;
end;

function T085CLI.GetBaiCliOLD: string;
begin
  Result := FBaiCliOLD;
end;

procedure T085CLI.SetBaiCliOLD(const pBaiCli: string);
begin
  FBaiCliOLD := pBaiCli;
end;

function T085CLI.GetCidCliOLD: string;
begin
  Result := FCidCliOLD;
end;

procedure T085CLI.SetCidCliOLD(const pCidCli: string);
begin
  FCidCliOLD := pCidCli;
end;

function T085CLI.GetSigUfsOLD: string;
begin
  Result := FSigUfsOLD;
end;

procedure T085CLI.SetSigUfsOLD(const pSigUfs: string);
begin
  FSigUfsOLD := pSigUfs;
end;

function T085CLI.GetCodPaiOLD: string;
begin
  Result := FCodPaiOLD;
end;

procedure T085CLI.SetCodPaiOLD(const pCodPai: string);
begin
  FCodPaiOLD := pCodPai;
end;

function T085CLI.GetTemEntOLD: Char;
begin
  Result := FTemEntOLD;
end;

procedure T085CLI.SetTemEntOLD(const pTemEnt: Char);
begin
  FTemEntOLD := pTemEnt;
end;

function T085CLI.GetEndEntOLD: string;
begin
  Result := FEndEntOLD;
end;

procedure T085CLI.SetEndEntOLD(const pEndEnt: string);
begin
  FEndEntOLD := pEndEnt;
end;

function T085CLI.GetCplEntOLD: string;
begin
  Result := FCplEntOLD;
end;

procedure T085CLI.SetCplEntOLD(const pCplEnt: string);
begin
  FCplEntOLD := pCplEnt;
end;

function T085CLI.GetCepEntOLD: Integer;
begin
  Result := FCepEntOLD;
end;

procedure T085CLI.SetCepEntOLD(const pCepEnt: Integer);
begin
  FCepEntOLD := pCepEnt;
end;

function T085CLI.GetIniEntOLD: Integer;
begin
  Result := FIniEntOLD;
end;

procedure T085CLI.SetIniEntOLD(const pIniEnt: Integer);
begin
  FIniEntOLD := pIniEnt;
end;

function T085CLI.GetCidEntOLD: string;
begin
  Result := FCidEntOLD;
end;

procedure T085CLI.SetCidEntOLD(const pCidEnt: string);
begin
  FCidEntOLD := pCidEnt;
end;

function T085CLI.GetEstEntOLD: string;
begin
  Result := FEstEntOLD;
end;

procedure T085CLI.SetEstEntOLD(const pEstEnt: string);
begin
  FEstEntOLD := pEstEnt;
end;

function T085CLI.GetInsEntOLD: string;
begin
  Result := FInsEntOLD;
end;

procedure T085CLI.SetInsEntOLD(const pInsEnt: string);
begin
  FInsEntOLD := pInsEnt;
end;

function T085CLI.GetCgcEntOLD: Integer;
begin
  Result := FCgcEntOLD;
end;

procedure T085CLI.SetCgcEntOLD(const pCgcEnt: Integer);
begin
  FCgcEntOLD := pCgcEnt;
end;

function T085CLI.GetTemCobOLD: Char;
begin
  Result := FTemCobOLD;
end;

procedure T085CLI.SetTemCobOLD(const pTemCob: Char);
begin
  FTemCobOLD := pTemCob;
end;

function T085CLI.GetEndCobOLD: string;
begin
  Result := FEndCobOLD;
end;

procedure T085CLI.SetEndCobOLD(const pEndCob: string);
begin
  FEndCobOLD := pEndCob;
end;

function T085CLI.GetCplCobOLD: string;
begin
  Result := FCplCobOLD;
end;

procedure T085CLI.SetCplCobOLD(const pCplCob: string);
begin
  FCplCobOLD := pCplCob;
end;

function T085CLI.GetCepCobOLD: Integer;
begin
  Result := FCepCobOLD;
end;

procedure T085CLI.SetCepCobOLD(const pCepCob: Integer);
begin
  FCepCobOLD := pCepCob;
end;

function T085CLI.GetIniCobOLD: Integer;
begin
  Result := FIniCobOLD;
end;

procedure T085CLI.SetIniCobOLD(const pIniCob: Integer);
begin
  FIniCobOLD := pIniCob;
end;

function T085CLI.GetCidCobOLD: string;
begin
  Result := FCidCobOLD;
end;

procedure T085CLI.SetCidCobOLD(const pCidCob: string);
begin
  FCidCobOLD := pCidCob;
end;

function T085CLI.GetEstCobOLD: string;
begin
  Result := FEstCobOLD;
end;

procedure T085CLI.SetEstCobOLD(const pEstCob: string);
begin
  FEstCobOLD := pEstCob;
end;

function T085CLI.GetCgcCobOLD: Integer;
begin
  Result := FCgcCobOLD;
end;

procedure T085CLI.SetCgcCobOLD(const pCgcCob: Integer);
begin
  FCgcCobOLD := pCgcCob;
end;

function T085CLI.GetEntCorOLD: Char;
begin
  Result := FEntCorOLD;
end;

procedure T085CLI.SetEntCorOLD(const pEntCor: Char);
begin
  FEntCorOLD := pEntCor;
end;

function T085CLI.GetFonCliOLD: string;
begin
  Result := FFonCliOLD;
end;

procedure T085CLI.SetFonCliOLD(const pFonCli: string);
begin
  FFonCliOLD := pFonCli;
end;

function T085CLI.GetFonCl2OLD: string;
begin
  Result := FFonCl2OLD;
end;

procedure T085CLI.SetFonCl2OLD(const pFonCl2: string);
begin
  FFonCl2OLD := pFonCl2;
end;

function T085CLI.GetFonCl3OLD: string;
begin
  Result := FFonCl3OLD;
end;

procedure T085CLI.SetFonCl3OLD(const pFonCl3: string);
begin
  FFonCl3OLD := pFonCl3;
end;

function T085CLI.GetFonCl4OLD: string;
begin
  Result := FFonCl4OLD;
end;

procedure T085CLI.SetFonCl4OLD(const pFonCl4: string);
begin
  FFonCl4OLD := pFonCl4;
end;

function T085CLI.GetFonCl5OLD: string;
begin
  Result := FFonCl5OLD;
end;

procedure T085CLI.SetFonCl5OLD(const pFonCl5: string);
begin
  FFonCl5OLD := pFonCl5;
end;

function T085CLI.GetFaxCliOLD: string;
begin
  Result := FFaxCliOLD;
end;

procedure T085CLI.SetFaxCliOLD(const pFaxCli: string);
begin
  FFaxCliOLD := pFaxCli;
end;

function T085CLI.GetCxaPstOLD: Integer;
begin
  Result := FCxaPstOLD;
end;

procedure T085CLI.SetCxaPstOLD(const pCxaPst: Integer);
begin
  FCxaPstOLD := pCxaPst;
end;

function T085CLI.GetIntNetOLD: string;
begin
  Result := FIntNetOLD;
end;

procedure T085CLI.SetIntNetOLD(const pIntNet: string);
begin
  FIntNetOLD := pIntNet;
end;

function T085CLI.GetCodRoeOLD: string;
begin
  Result := FCodRoeOLD;
end;

procedure T085CLI.SetCodRoeOLD(const pCodRoe: string);
begin
  FCodRoeOLD := pCodRoe;
end;

function T085CLI.GetSeqRoeOLD: Integer;
begin
  Result := FSeqRoeOLD;
end;

procedure T085CLI.SetSeqRoeOLD(const pSeqRoe: Integer);
begin
  FSeqRoeOLD := pSeqRoe;
end;

function T085CLI.GetCodForOLD: Integer;
begin
  Result := FCodForOLD;
end;

procedure T085CLI.SetCodForOLD(const pCodFor: Integer);
begin
  FCodForOLD := pCodFor;
end;

function T085CLI.GetCliRepOLD: Integer;
begin
  Result := FCliRepOLD;
end;

procedure T085CLI.SetCliRepOLD(const pCliRep: Integer);
begin
  FCliRepOLD := pCliRep;
end;

function T085CLI.GetCliTraOLD: Integer;
begin
  Result := FCliTraOLD;
end;

procedure T085CLI.SetCliTraOLD(const pCliTra: Integer);
begin
  FCliTraOLD := pCliTra;
end;

function T085CLI.GetUsuCadOLD: Integer;
begin
  Result := FUsuCadOLD;
end;

procedure T085CLI.SetUsuCadOLD(const pUsuCad: Integer);
begin
  FUsuCadOLD := pUsuCad;
end;

function T085CLI.GetDatCadOLD: TDate;
begin
  Result := FDatCadOLD;
end;

procedure T085CLI.SetDatCadOLD(const pDatCad: TDate);
begin
  FDatCadOLD := pDatCad;
end;

function T085CLI.GetDatFimOLD: TDate;
begin
  Result := FDatFimOLD;
end;

procedure T085CLI.SetDatFimOLD(const pDatFim: TDate);
begin
  FDatFimOLD := pDatFim;
end;

function T085CLI.GetHorCadOLD: Integer;
begin
  Result := FHorCadOLD;
end;

procedure T085CLI.SetHorCadOLD(const pHorCad: Integer);
begin
  FHorCadOLD := pHorCad;
end;

function T085CLI.GetHorFimOLD: Integer;
begin
  Result := FHorFimOLD;
end;

procedure T085CLI.SetHorFimOLD(const pHorFim: Integer);
begin
  FHorFimOLD := pHorFim;
end;

function T085CLI.GetDatVctOLD: TDate;
begin
  Result := FDatVctOLD;
end;

procedure T085CLI.SetDatVctOLD(const pDatVct: TDate);
begin
  FDatVctOLD := pDatVct;
end;

function T085CLI.GetDatAtuOLD: TDate;
begin
  Result := FDatAtuOLD;
end;

procedure T085CLI.SetDatAtuOLD(const pDatAtu: TDate);
begin
  FDatAtuOLD := pDatAtu;
end;

function T085CLI.GetHorAtuOLD: Integer;
begin
  Result := FHorAtuOLD;
end;

procedure T085CLI.SetHorAtuOLD(const pHorAtu: Integer);
begin
  FHorAtuOLD := pHorAtu;
end;

function T085CLI.GetUsuAtuOLD: Integer;
begin
  Result := FUsuAtuOLD;
end;

procedure T085CLI.SetUsuAtuOLD(const pUsuAtu: Integer);
begin
  FUsuAtuOLD := pUsuAtu;
end;

function T085CLI.GetQtdAtuOLD: Integer;
begin
  Result := FQtdAtuOLD;
end;

procedure T085CLI.SetQtdAtuOLD(const pQtdAtu: Integer);
begin
  FQtdAtuOLD := pQtdAtu;
end;

function T085CLI.GetDatIcvOLD: TDate;
begin
  Result := FDatIcvOLD;
end;

procedure T085CLI.SetDatIcvOLD(const pDatIcv: TDate);
begin
  FDatIcvOLD := pDatIcv;
end;

function T085CLI.GetSitCliOLD: Char;
begin
  Result := FSitCliOLD;
end;

procedure T085CLI.SetSitCliOLD(const pSitCli: Char);
begin
  FSitCliOLD := pSitCli;
end;

function T085CLI.GetCodMotOLD: Integer;
begin
  Result := FCodMotOLD;
end;

procedure T085CLI.SetCodMotOLD(const pCodMot: Integer);
begin
  FCodMotOLD := pCodMot;
end;

function T085CLI.GetBloCreOLD: Char;
begin
  Result := FBloCreOLD;
end;

procedure T085CLI.SetBloCreOLD(const pBloCre: Char);
begin
  FBloCreOLD := pBloCre;
end;

function T085CLI.GetObsMotOLD: string;
begin
  Result := FObsMotOLD;
end;

procedure T085CLI.SetObsMotOLD(const pObsMot: string);
begin
  FObsMotOLD := pObsMot;
end;

function T085CLI.GetUsuMotOLD: Integer;
begin
  Result := FUsuMotOLD;
end;

procedure T085CLI.SetUsuMotOLD(const pUsuMot: Integer);
begin
  FUsuMotOLD := pUsuMot;
end;

function T085CLI.GetDatMotOLD: TDate;
begin
  Result := FDatMotOLD;
end;

procedure T085CLI.SetDatMotOLD(const pDatMot: TDate);
begin
  FDatMotOLD := pDatMot;
end;

function T085CLI.GetHorMotOLD: Integer;
begin
  Result := FHorMotOLD;
end;

procedure T085CLI.SetHorMotOLD(const pHorMot: Integer);
begin
  FHorMotOLD := pHorMot;
end;

function T085CLI.GetUsuOpeOLD: Integer;
begin
  Result := FUsuOpeOLD;
end;

procedure T085CLI.SetUsuOpeOLD(const pUsuOpe: Integer);
begin
  FUsuOpeOLD := pUsuOpe;
end;

function T085CLI.GetCodAmaOLD: string;
begin
  Result := FCodAmaOLD;
end;

procedure T085CLI.SetCodAmaOLD(const pCodAma: string);
begin
  FCodAmaOLD := pCodAma;
end;

function T085CLI.GetCodSabOLD: string;
begin
  Result := FCodSabOLD;
end;

procedure T085CLI.SetCodSabOLD(const pCodSab: string);
begin
  FCodSabOLD := pCodSab;
end;

function T085CLI.GetCodGalOLD: string;
begin
  Result := FCodGalOLD;
end;

procedure T085CLI.SetCodGalOLD(const pCodGal: string);
begin
  FCodGalOLD := pCodGal;
end;

function T085CLI.GetTriIcmOLD: Char;
begin
  Result := FTriIcmOLD;
end;

procedure T085CLI.SetTriIcmOLD(const pTriIcm: Char);
begin
  FTriIcmOLD := pTriIcm;
end;

function T085CLI.GetTriIpiOLD: Char;
begin
  Result := FTriIpiOLD;
end;

procedure T085CLI.SetTriIpiOLD(const pTriIpi: Char);
begin
  FTriIpiOLD := pTriIpi;
end;

function T085CLI.GetBaiEntOLD: string;
begin
  Result := FBaiEntOLD;
end;

procedure T085CLI.SetBaiEntOLD(const pBaiEnt: string);
begin
  FBaiEntOLD := pBaiEnt;
end;

function T085CLI.GetBaiCobOLD: string;
begin
  Result := FBaiCobOLD;
end;

procedure T085CLI.SetBaiCobOLD(const pBaiCob: string);
begin
  FBaiCobOLD := pBaiCob;
end;

function T085CLI.GetCliForOLD: Char;
begin
  Result := FCliForOLD;
end;

procedure T085CLI.SetCliForOLD(const pCliFor: Char);
begin
  FCliForOLD := pCliFor;
end;

function T085CLI.GetIdeCliOLD: string;
begin
  Result := FIdeCliOLD;
end;

procedure T085CLI.SetIdeCliOLD(const pIdeCli: string);
begin
  FIdeCliOLD := pIdeCli;
end;

function T085CLI.GetTriPisOLD: Char;
begin
  Result := FTriPisOLD;
end;

procedure T085CLI.SetTriPisOLD(const pTriPis: Char);
begin
  FTriPisOLD := pTriPis;
end;

function T085CLI.GetTriCofOLD: Char;
begin
  Result := FTriCofOLD;
end;

procedure T085CLI.SetTriCofOLD(const pTriCof: Char);
begin
  FTriCofOLD := pTriCof;
end;

function T085CLI.GetIndExpOLD: Integer;
begin
  Result := FIndExpOLD;
end;

procedure T085CLI.SetIndExpOLD(const pIndExp: Integer);
begin
  FIndExpOLD := pIndExp;
end;

function T085CLI.GetDatPalOLD: TDate;
begin
  Result := FDatPalOLD;
end;

procedure T085CLI.SetDatPalOLD(const pDatPal: TDate);
begin
  FDatPalOLD := pDatPal;
end;

function T085CLI.GetHorPalOLD: Integer;
begin
  Result := FHorPalOLD;
end;

procedure T085CLI.SetHorPalOLD(const pHorPal: Integer);
begin
  FHorPalOLD := pHorPal;
end;

function T085CLI.GetRetCofOLD: Char;
begin
  Result := FRetCofOLD;
end;

procedure T085CLI.SetRetCofOLD(const pRetCof: Char);
begin
  FRetCofOLD := pRetCof;
end;

function T085CLI.GetRetCslOLD: Char;
begin
  Result := FRetCslOLD;
end;

procedure T085CLI.SetRetCslOLD(const pRetCsl: Char);
begin
  FRetCslOLD := pRetCsl;
end;

function T085CLI.GetRetPisOLD: Char;
begin
  Result := FRetPisOLD;
end;

procedure T085CLI.SetRetPisOLD(const pRetPis: Char);
begin
  FRetPisOLD := pRetPis;
end;

function T085CLI.GetRetOurOLD: Char;
begin
  Result := FRetOurOLD;
end;

procedure T085CLI.SetRetOurOLD(const pRetOur: Char);
begin
  FRetOurOLD := pRetOur;
end;

function T085CLI.GetCodSroOLD: string;
begin
  Result := FCodSroOLD;
end;

procedure T085CLI.SetCodSroOLD(const pCodSro: string);
begin
  FCodSroOLD := pCodSro;
end;

function T085CLI.GetDatSufOLD: TDate;
begin
  Result := FDatSufOLD;
end;

procedure T085CLI.SetDatSufOLD(const pDatSuf: TDate);
begin
  FDatSufOLD := pDatSuf;
end;

function T085CLI.GetCepFreOLD: Integer;
begin
  Result := FCepFreOLD;
end;

procedure T085CLI.SetCepFreOLD(const pCepFre: Integer);
begin
  FCepFreOLD := pCepFre;
end;

function T085CLI.GetCodPdvOLD: Integer;
begin
  Result := FCodPdvOLD;
end;

procedure T085CLI.SetCodPdvOLD(const pCodPdv: Integer);
begin
  FCodPdvOLD := pCodPdv;
end;

function T085CLI.GetDatPdvOLD: TDate;
begin
  Result := FDatPdvOLD;
end;

procedure T085CLI.SetDatPdvOLD(const pDatPdv: TDate);
begin
  FDatPdvOLD := pDatPdv;
end;

function T085CLI.GetHorPdvOLD: Integer;
begin
  Result := FHorPdvOLD;
end;

procedure T085CLI.SetHorPdvOLD(const pHorPdv: Integer);
begin
  FHorPdvOLD := pHorPdv;
end;

function T085CLI.GetRetProOLD: Char;
begin
  Result := FRetProOLD;
end;

procedure T085CLI.SetRetProOLD(const pRetPro: Char);
begin
  FRetProOLD := pRetPro;
end;

function T085CLI.GetRetIrfOLD: Char;
begin
  Result := FRetIrfOLD;
end;

procedure T085CLI.SetRetIrfOLD(const pRetIrf: Char);
begin
  FRetIrfOLD := pRetIrf;
end;

function T085CLI.GetLimRetOLD: Char;
begin
  Result := FLimRetOLD;
end;

procedure T085CLI.SetLimRetOLD(const pLimRet: Char);
begin
  FLimRetOLD := pLimRet;
end;

function T085CLI.GetCodCnvOLD: Integer;
begin
  Result := FCodCnvOLD;
end;

procedure T085CLI.SetCodCnvOLD(const pCodCnv: Integer);
begin
  FCodCnvOLD := pCodCnv;
end;

function T085CLI.GetCalFunOLD: Char;
begin
  Result := FCalFunOLD;
end;

procedure T085CLI.SetCalFunOLD(const pCalFun: Char);
begin
  FCalFunOLD := pCalFun;
end;

function T085CLI.GetEenCliOLD: string;
begin
  Result := FEenCliOLD;
end;

procedure T085CLI.SetEenCliOLD(const pEenCli: string);
begin
  FEenCliOLD := pEenCli;
end;

function T085CLI.GetEenEntOLD: string;
begin
  Result := FEenEntOLD;
end;

procedure T085CLI.SetEenEntOLD(const pEenEnt: string);
begin
  FEenEntOLD := pEenEnt;
end;

function T085CLI.GetEenCobOLD: string;
begin
  Result := FEenCobOLD;
end;

procedure T085CLI.SetEenCobOLD(const pEenCob: string);
begin
  FEenCobOLD := pEenCob;
end;

function T085CLI.GetPerAinOLD: Double;
begin
  Result := FPerAinOLD;
end;

procedure T085CLI.SetPerAinOLD(const pPerAin: Double);
begin
  FPerAinOLD := pPerAin;
end;

function T085CLI.GetNenCliOLD: string;
begin
  Result := FNenCliOLD;
end;

procedure T085CLI.SetNenCliOLD(const pNenCli: string);
begin
  FNenCliOLD := pNenCli;
end;

function T085CLI.GetNenEntOLD: string;
begin
  Result := FNenEntOLD;
end;

procedure T085CLI.SetNenEntOLD(const pNenEnt: string);
begin
  FNenEntOLD := pNenEnt;
end;

function T085CLI.GetNenCobOLD: string;
begin
  Result := FNenCobOLD;
end;

procedure T085CLI.SetNenCobOLD(const pNenCob: string);
begin
  FNenCobOLD := pNenCob;
end;

function T085CLI.GetTipAceOLD: Integer;
begin
  Result := FTipAceOLD;
end;

procedure T085CLI.SetTipAceOLD(const pTipAce: Integer);
begin
  FTipAceOLD := pTipAce;
end;

function T085CLI.GetEmaNfeOLD: string;
begin
  Result := FEmaNfeOLD;
end;

procedure T085CLI.SetEmaNfeOLD(const pEmaNfe: string);
begin
  FEmaNfeOLD := pEmaNfe;
end;

function T085CLI.GetInsAnpOLD: Integer;
begin
  Result := FInsAnpOLD;
end;

procedure T085CLI.SetInsAnpOLD(const pInsAnp: Integer);
begin
  FInsAnpOLD := pInsAnp;
end;

function T085CLI.GetIndCooOLD: Char;
begin
  Result := FIndCooOLD;
end;

procedure T085CLI.SetIndCooOLD(const pIndCoo: Char);
begin
  FIndCooOLD := pIndCoo;
end;

function T085CLI.GetCodRtrOLD: Integer;
begin
  Result := FCodRtrOLD;
end;

procedure T085CLI.SetCodRtrOLD(const pCodRtr: Integer);
begin
  FCodRtrOLD := pCodRtr;
end;

function T085CLI.GetRegEstOLD: Integer;
begin
  Result := FRegEstOLD;
end;

procedure T085CLI.SetRegEstOLD(const pRegEst: Integer);
begin
  FRegEstOLD := pRegEst;
end;

function T085CLI.GetNatRetOLD: Integer;
begin
  Result := FNatRetOLD;
end;

procedure T085CLI.SetNatRetOLD(const pNatRet: Integer);
begin
  FNatRetOLD := pNatRet;
end;

function T085CLI.GetNatPisOLD: Integer;
begin
  Result := FNatPisOLD;
end;

procedure T085CLI.SetNatPisOLD(const pNatPis: Integer);
begin
  FNatPisOLD := pNatPis;
end;

function T085CLI.GetNatCofOLD: Integer;
begin
  Result := FNatCofOLD;
end;

procedure T085CLI.SetNatCofOLD(const pNatCof: Integer);
begin
  FNatCofOLD := pNatCof;
end;

function T085CLI.GetConFinOLD: Char;
begin
  Result := FConFinOLD;
end;

procedure T085CLI.SetConFinOLD(const pConFin: Char);
begin
  FConFinOLD := pConFin;
end;

function T085CLI.GetUSU_NegSciOLD: Char;
begin
  Result := FUSU_NegSciOLD;
end;

procedure T085CLI.SetUSU_NegSciOLD(const pUSU_NegSci: Char);
begin
  FUSU_NegSciOLD := pUSU_NegSci;
end;

function T085CLI.GetUSU_SepEspOLD: Char;
begin
  Result := FUSU_SepEspOLD;
end;

procedure T085CLI.SetUSU_SepEspOLD(const pUSU_SepEsp: Char);
begin
  FUSU_SepEspOLD := pUSU_SepEsp;
end;

function T085CLI.GetUSU_TesManOLD: Char;
begin
  Result := FUSU_TesManOLD;
end;

procedure T085CLI.SetUSU_TesManOLD(const pUSU_TesMan: Char);
begin
  FUSU_TesManOLD := pUSU_TesMan;
end;

function T085CLI.GetUSU_EnvCamOLD: Char;
begin
  Result := FUSU_EnvCamOLD;
end;

procedure T085CLI.SetUSU_EnvCamOLD(const pUSU_EnvCam: Char);
begin
  FUSU_EnvCamOLD := pUSU_EnvCam;
end;

function T085CLI.GetUSU_SiteOLD: string;
begin
  Result := FUSU_SiteOLD;
end;

procedure T085CLI.SetUSU_SiteOLD(const pUSU_Site: string);
begin
  FUSU_SiteOLD := pUSU_Site;
end;

function T085CLI.GetUSU_DatFunOLD: TDate;
begin
  Result := FUSU_DatFunOLD;
end;

procedure T085CLI.SetUSU_DatFunOLD(const pUSU_DatFun: TDate);
begin
  FUSU_DatFunOLD := pUSU_DatFun;
end;

function T085CLI.GetUSU_AvFaPrOLD: Char;
begin
  Result := FUSU_AvFaPrOLD;
end;

procedure T085CLI.SetUSU_AvFaPrOLD(const pUSU_AvFaPr: Char);
begin
  FUSU_AvFaPrOLD := pUSU_AvFaPr;
end;

function T085CLI.GetUSU_IndEnvOLD: Char;
begin
  Result := FUSU_IndEnvOLD;
end;

procedure T085CLI.SetUSU_IndEnvOLD(const pUSU_IndEnv: Char);
begin
  FUSU_IndEnvOLD := pUSU_IndEnv;
end;

function T085CLI.GetUSU_AcMGenOLD: Char;
begin
  Result := FUSU_AcMGenOLD;
end;

procedure T085CLI.SetUSU_AcMGenOLD(const pUSU_AcMGen: Char);
begin
  FUSU_AcMGenOLD := pUSU_AcMGen;
end;

function T085CLI.GetUSU_TemBenOLD: Char;
begin
  Result := FUSU_TemBenOLD;
end;

procedure T085CLI.SetUSU_TemBenOLD(const pUSU_TemBen: Char);
begin
  FUSU_TemBenOLD := pUSU_TemBen;
end;

function T085CLI.GetUSU_QMultVenOLD: Char;
begin
  Result := FUSU_QMultVenOLD;
end;

procedure T085CLI.SetUSU_QMultVenOLD(const pUSU_QMultVen: Char);
begin
  FUSU_QMultVenOLD := pUSU_QMultVen;
end;

function T085CLI.GetUSU_ExiOCOLD: Char;
begin
  Result := FUSU_ExiOCOLD;
end;

procedure T085CLI.SetUSU_ExiOCOLD(const pUSU_ExiOC: Char);
begin
  FUSU_ExiOCOLD := pUSU_ExiOC;
end;

function T085CLI.GetUSU_EnvPDFOLD: Char;
begin
  Result := FUSU_EnvPDFOLD;
end;

procedure T085CLI.SetUSU_EnvPDFOLD(const pUSU_EnvPDF: Char);
begin
  FUSU_EnvPDFOLD := pUSU_EnvPDF;
end;

function T085CLI.GetUSU_PreFixOLD: Char;
begin
  Result := FUSU_PreFixOLD;
end;

procedure T085CLI.SetUSU_PreFixOLD(const pUSU_PreFix: Char);
begin
  FUSU_PreFixOLD := pUSU_PreFix;
end;

function T085CLI.GetUSU_ExiODOLD: Char;
begin
  Result := FUSU_ExiODOLD;
end;

procedure T085CLI.SetUSU_ExiODOLD(const pUSU_ExiOD: Char);
begin
  FUSU_ExiODOLD := pUSU_ExiOD;
end;

function T085CLI.GetUSU_ConPclOLD: Char;
begin
  Result := FUSU_ConPclOLD;
end;

procedure T085CLI.SetUSU_ConPclOLD(const pUSU_ConPcl: Char);
begin
  FUSU_ConPclOLD := pUSU_ConPcl;
end;

function T085CLI.GetUSU_EnvSerOLD: Char;
begin
  Result := FUSU_EnvSerOLD;
end;

procedure T085CLI.SetUSU_EnvSerOLD(const pUSU_EnvSer: Char);
begin
  FUSU_EnvSerOLD := pUSU_EnvSer;
end;

function T085CLI.GetUSU_FilB2BOLD: Integer;
begin
  Result := FUSU_FilB2BOLD;
end;

procedure T085CLI.SetUSU_FilB2BOLD(const pUSU_FilB2B: Integer);
begin
  FUSU_FilB2BOLD := pUSU_FilB2B;
end;

function T085CLI.GetUSU_ExiSGOLD: Char;
begin
  Result := FUSU_ExiSGOLD;
end;

procedure T085CLI.SetUSU_ExiSGOLD(const pUSU_ExiSG: Char);
begin
  FUSU_ExiSGOLD := pUSU_ExiSG;
end;

function T085CLI.GetUSU_EmpB2BOLD: Integer;
begin
  Result := FUSU_EmpB2BOLD;
end;

procedure T085CLI.SetUSU_EmpB2BOLD(const pUSU_EmpB2B: Integer);
begin
  FUSU_EmpB2BOLD := pUSU_EmpB2B;
end;

function T085CLI.GetUSU_LocClpOLD: Char;
begin
  Result := FUSU_LocClpOLD;
end;

procedure T085CLI.SetUSU_LocClpOLD(const pUSU_LocClp: Char);
begin
  FUSU_LocClpOLD := pUSU_LocClp;
end;

procedure T085CLI.Registros_OLD();
begin
  FCodCliOLD := FCodCli;
  FNomCliOLD := FNomCli;
  FApeCliOLD := FApeCli;
  FMarCliOLD := FMarCli;
  FSenCliOLD := FSenCli;
  FTipCliOLD := FTipCli;
  FTipMerOLD := FTipMer;
  FTipEmcOLD := FTipEmc;
  FCliConOLD := FCliCon;
  FCodRamOLD := FCodRam;
  FInsEstOLD := FInsEst;
  FInsMunOLD := FInsMun;
  FCgcCpfOLD := FCgcCpf;
  FCodGreOLD := FCodGre;
  FZonFraOLD := FZonFra;
  FCodSufOLD := FCodSuf;
  FEndCliOLD := FEndCli;
  FCplEndOLD := FCplEnd;
  FCliPrxOLD := FCliPrx;
  FZipCodOLD := FZipCod;
  FCepCliOLD := FCepCli;
  FCepIniOLD := FCepIni;
  FBaiCliOLD := FBaiCli;
  FCidCliOLD := FCidCli;
  FSigUfsOLD := FSigUfs;
  FCodPaiOLD := FCodPai;
  FTemEntOLD := FTemEnt;
  FEndEntOLD := FEndEnt;
  FCplEntOLD := FCplEnt;
  FCepEntOLD := FCepEnt;
  FIniEntOLD := FIniEnt;
  FCidEntOLD := FCidEnt;
  FEstEntOLD := FEstEnt;
  FInsEntOLD := FInsEnt;
  FCgcEntOLD := FCgcEnt;
  FTemCobOLD := FTemCob;
  FEndCobOLD := FEndCob;
  FCplCobOLD := FCplCob;
  FCepCobOLD := FCepCob;
  FIniCobOLD := FIniCob;
  FCidCobOLD := FCidCob;
  FEstCobOLD := FEstCob;
  FCgcCobOLD := FCgcCob;
  FEntCorOLD := FEntCor;
  FFonCliOLD := FFonCli;
  FFonCl2OLD := FFonCl2;
  FFonCl3OLD := FFonCl3;
  FFonCl4OLD := FFonCl4;
  FFonCl5OLD := FFonCl5;
  FFaxCliOLD := FFaxCli;
  FCxaPstOLD := FCxaPst;
  FIntNetOLD := FIntNet;
  FCodRoeOLD := FCodRoe;
  FSeqRoeOLD := FSeqRoe;
  FCodForOLD := FCodFor;
  FCliRepOLD := FCliRep;
  FCliTraOLD := FCliTra;
  FUsuCadOLD := FUsuCad;
  FDatCadOLD := FDatCad;
  FDatFimOLD := FDatFim;
  FHorCadOLD := FHorCad;
  FHorFimOLD := FHorFim;
  FDatVctOLD := FDatVct;
  FDatAtuOLD := FDatAtu;
  FHorAtuOLD := FHorAtu;
  FUsuAtuOLD := FUsuAtu;
  FQtdAtuOLD := FQtdAtu;
  FDatIcvOLD := FDatIcv;
  FSitCliOLD := FSitCli;
  FCodMotOLD := FCodMot;
  FBloCreOLD := FBloCre;
  FObsMotOLD := FObsMot;
  FUsuMotOLD := FUsuMot;
  FDatMotOLD := FDatMot;
  FHorMotOLD := FHorMot;
  FUsuOpeOLD := FUsuOpe;
  FCodAmaOLD := FCodAma;
  FCodSabOLD := FCodSab;
  FCodGalOLD := FCodGal;
  FTriIcmOLD := FTriIcm;
  FTriIpiOLD := FTriIpi;
  FBaiEntOLD := FBaiEnt;
  FBaiCobOLD := FBaiCob;
  FCliForOLD := FCliFor;
  FIdeCliOLD := FIdeCli;
  FTriPisOLD := FTriPis;
  FTriCofOLD := FTriCof;
  FIndExpOLD := FIndExp;
  FDatPalOLD := FDatPal;
  FHorPalOLD := FHorPal;
  FRetCofOLD := FRetCof;
  FRetCslOLD := FRetCsl;
  FRetPisOLD := FRetPis;
  FRetOurOLD := FRetOur;
  FCodSroOLD := FCodSro;
  FDatSufOLD := FDatSuf;
  FCepFreOLD := FCepFre;
  FCodPdvOLD := FCodPdv;
  FDatPdvOLD := FDatPdv;
  FHorPdvOLD := FHorPdv;
  FRetProOLD := FRetPro;
  FRetIrfOLD := FRetIrf;
  FLimRetOLD := FLimRet;
  FCodCnvOLD := FCodCnv;
  FCalFunOLD := FCalFun;
  FEenCliOLD := FEenCli;
  FEenEntOLD := FEenEnt;
  FEenCobOLD := FEenCob;
  FPerAinOLD := FPerAin;
  FNenCliOLD := FNenCli;
  FNenEntOLD := FNenEnt;
  FNenCobOLD := FNenCob;
  FTipAceOLD := FTipAce;
  FEmaNfeOLD := FEmaNfe;
  FInsAnpOLD := FInsAnp;
  FIndCooOLD := FIndCoo;
  FCodRtrOLD := FCodRtr;
  FRegEstOLD := FRegEst;
  FNatRetOLD := FNatRet;
  FNatPisOLD := FNatPis;
  FNatCofOLD := FNatCof;
  FConFinOLD := FConFin;
  FUSU_NegSciOLD := FUSU_NegSci;
  FUSU_SepEspOLD := FUSU_SepEsp;
  FUSU_TesManOLD := FUSU_TesMan;
  FUSU_EnvCamOLD := FUSU_EnvCam;
  FUSU_SiteOLD := FUSU_Site;
  FUSU_DatFunOLD := FUSU_DatFun;
  FUSU_AvFaPrOLD := FUSU_AvFaPr;
  FUSU_IndEnvOLD := FUSU_IndEnv;
  FUSU_AcMGenOLD := FUSU_AcMGen;
  FUSU_TemBenOLD := FUSU_TemBen;
  FUSU_QMultVenOLD := FUSU_QMultVen;
  FUSU_ExiOCOLD := FUSU_ExiOC;
  FUSU_EnvPDFOLD := FUSU_EnvPDF;
  FUSU_PreFixOLD := FUSU_PreFix;
  FUSU_ExiODOLD := FUSU_ExiOD;
  FUSU_ConPclOLD := FUSU_ConPcl;
  FUSU_EnvSerOLD := FUSU_EnvSer;
  FUSU_FilB2BOLD := FUSU_FilB2B;
  FUSU_ExiSGOLD := FUSU_ExiSG;
  FUSU_EmpB2BOLD := FUSU_EmpB2B;
  FUSU_LocClpOLD := FUSU_LocClp;

  inherited;
end;

procedure T085CLI.RetornarValores();
begin
  FCodCli := FCodCliOLD;
  FNomCli := FNomCliOLD;
  FApeCli := FApeCliOLD;
  FMarCli := FMarCliOLD;
  FSenCli := FSenCliOLD;
  FTipCli := FTipCliOLD;
  FTipMer := FTipMerOLD;
  FTipEmc := FTipEmcOLD;
  FCliCon := FCliConOLD;
  FCodRam := FCodRamOLD;
  FInsEst := FInsEstOLD;
  FInsMun := FInsMunOLD;
  FCgcCpf := FCgcCpfOLD;
  FCodGre := FCodGreOLD;
  FZonFra := FZonFraOLD;
  FCodSuf := FCodSufOLD;
  FEndCli := FEndCliOLD;
  FCplEnd := FCplEndOLD;
  FCliPrx := FCliPrxOLD;
  FZipCod := FZipCodOLD;
  FCepCli := FCepCliOLD;
  FCepIni := FCepIniOLD;
  FBaiCli := FBaiCliOLD;
  FCidCli := FCidCliOLD;
  FSigUfs := FSigUfsOLD;
  FCodPai := FCodPaiOLD;
  FTemEnt := FTemEntOLD;
  FEndEnt := FEndEntOLD;
  FCplEnt := FCplEntOLD;
  FCepEnt := FCepEntOLD;
  FIniEnt := FIniEntOLD;
  FCidEnt := FCidEntOLD;
  FEstEnt := FEstEntOLD;
  FInsEnt := FInsEntOLD;
  FCgcEnt := FCgcEntOLD;
  FTemCob := FTemCobOLD;
  FEndCob := FEndCobOLD;
  FCplCob := FCplCobOLD;
  FCepCob := FCepCobOLD;
  FIniCob := FIniCobOLD;
  FCidCob := FCidCobOLD;
  FEstCob := FEstCobOLD;
  FCgcCob := FCgcCobOLD;
  FEntCor := FEntCorOLD;
  FFonCli := FFonCliOLD;
  FFonCl2 := FFonCl2OLD;
  FFonCl3 := FFonCl3OLD;
  FFonCl4 := FFonCl4OLD;
  FFonCl5 := FFonCl5OLD;
  FFaxCli := FFaxCliOLD;
  FCxaPst := FCxaPstOLD;
  FIntNet := FIntNetOLD;
  FCodRoe := FCodRoeOLD;
  FSeqRoe := FSeqRoeOLD;
  FCodFor := FCodForOLD;
  FCliRep := FCliRepOLD;
  FCliTra := FCliTraOLD;
  FUsuCad := FUsuCadOLD;
  FDatCad := FDatCadOLD;
  FDatFim := FDatFimOLD;
  FHorCad := FHorCadOLD;
  FHorFim := FHorFimOLD;
  FDatVct := FDatVctOLD;
  FDatAtu := FDatAtuOLD;
  FHorAtu := FHorAtuOLD;
  FUsuAtu := FUsuAtuOLD;
  FQtdAtu := FQtdAtuOLD;
  FDatIcv := FDatIcvOLD;
  FSitCli := FSitCliOLD;
  FCodMot := FCodMotOLD;
  FBloCre := FBloCreOLD;
  FObsMot := FObsMotOLD;
  FUsuMot := FUsuMotOLD;
  FDatMot := FDatMotOLD;
  FHorMot := FHorMotOLD;
  FUsuOpe := FUsuOpeOLD;
  FCodAma := FCodAmaOLD;
  FCodSab := FCodSabOLD;
  FCodGal := FCodGalOLD;
  FTriIcm := FTriIcmOLD;
  FTriIpi := FTriIpiOLD;
  FBaiEnt := FBaiEntOLD;
  FBaiCob := FBaiCobOLD;
  FCliFor := FCliForOLD;
  FIdeCli := FIdeCliOLD;
  FTriPis := FTriPisOLD;
  FTriCof := FTriCofOLD;
  FIndExp := FIndExpOLD;
  FDatPal := FDatPalOLD;
  FHorPal := FHorPalOLD;
  FRetCof := FRetCofOLD;
  FRetCsl := FRetCslOLD;
  FRetPis := FRetPisOLD;
  FRetOur := FRetOurOLD;
  FCodSro := FCodSroOLD;
  FDatSuf := FDatSufOLD;
  FCepFre := FCepFreOLD;
  FCodPdv := FCodPdvOLD;
  FDatPdv := FDatPdvOLD;
  FHorPdv := FHorPdvOLD;
  FRetPro := FRetProOLD;
  FRetIrf := FRetIrfOLD;
  FLimRet := FLimRetOLD;
  FCodCnv := FCodCnvOLD;
  FCalFun := FCalFunOLD;
  FEenCli := FEenCliOLD;
  FEenEnt := FEenEntOLD;
  FEenCob := FEenCobOLD;
  FPerAin := FPerAinOLD;
  FNenCli := FNenCliOLD;
  FNenEnt := FNenEntOLD;
  FNenCob := FNenCobOLD;
  FTipAce := FTipAceOLD;
  FEmaNfe := FEmaNfeOLD;
  FInsAnp := FInsAnpOLD;
  FIndCoo := FIndCooOLD;
  FCodRtr := FCodRtrOLD;
  FRegEst := FRegEstOLD;
  FNatRet := FNatRetOLD;
  FNatPis := FNatPisOLD;
  FNatCof := FNatCofOLD;
  FConFin := FConFinOLD;
  FUSU_NegSci := FUSU_NegSciOLD;
  FUSU_SepEsp := FUSU_SepEspOLD;
  FUSU_TesMan := FUSU_TesManOLD;
  FUSU_EnvCam := FUSU_EnvCamOLD;
  FUSU_Site := FUSU_SiteOLD;
  FUSU_DatFun := FUSU_DatFunOLD;
  FUSU_AvFaPr := FUSU_AvFaPrOLD;
  FUSU_IndEnv := FUSU_IndEnvOLD;
  FUSU_AcMGen := FUSU_AcMGenOLD;
  FUSU_TemBen := FUSU_TemBenOLD;
  FUSU_QMultVen := FUSU_QMultVenOLD;
  FUSU_ExiOC := FUSU_ExiOCOLD;
  FUSU_EnvPDF := FUSU_EnvPDFOLD;
  FUSU_PreFix := FUSU_PreFixOLD;
  FUSU_ExiOD := FUSU_ExiODOLD;
  FUSU_ConPcl := FUSU_ConPclOLD;
  FUSU_EnvSer := FUSU_EnvSerOLD;
  FUSU_FilB2B := FUSU_FilB2BOLD;
  FUSU_ExiSG := FUSU_ExiSGOLD;
  FUSU_EmpB2B := FUSU_EmpB2BOLD;
  FUSU_LocClp := FUSU_LocClpOLD;
end;

end.
