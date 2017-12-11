unit o095for;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T095FOR = class(TTabelaPadrao)
  private
    FCodFor: Integer;
    FNomFor: string;
    FApeFor: string;
    FMarFor: string;
    FSenFor: string;
    FTipFor: Char;
    FTipMer: Char;
    FCodRam: string;
    FInsEst: string;
    FInsMun: string;
    FCgcCpf: Double;
    FCodGre: Integer;
    FCodSuf: string;
    FEndFor: string;
    FCplEnd: string;
    FBaiFor: string;
    FZipCod: string;
    FCepFor: Integer;
    FCepIni: Integer;
    FCidFor: string;
    FSigUfs: string;
    FFonFor: string;
    FFonFo2: string;
    FFonFo3: string;
    FFaxFor: string;
    FCxaPst: Integer;
    FIntNet: string;
    FNomVen: string;
    FFonVen: string;
    FRmlVen: Integer;
    FFaxVen: string;
    FCodCli: Integer;
    FTipFav: Char;
    FCodIac: Integer;
    FAbrIac: string;
    FIndBsp: Char;
    FCodAma: string;
    FCodSab: string;
    FCodGal: string;
    FTipMho: Char;
    FCodCth: string;
    FUsuCad: Integer;
    FDatCad: TDate;
    FHorCad: Integer;
    FUsuAtu: Integer;
    FDatAtu: TDate;
    FHorAtu: Integer;
    FSitFor: Char;
    FCodMot: Integer;
    FObsMot: string;
    FUsuMot: Integer;
    FDatMot: TDate;
    FHorMot: Integer;
    FCodPai: string;
    FForRep: Integer;
    FForTra: Integer;
    FNotSis: Double;
    FNotFor: Double;
    FCodTri: string;
    FGerDir: Char;
    FCliFor: Char;
    FIdeFor: string;
    FQtdDep: Integer;
    FTemOrm: Char;
    FRecPis: Char;
    FPerPid: Double;
    FTriIss: Char;
    FIndExp: Integer;
    FDatPal: TDate;
    FHorPal: Integer;
    FNotAfo: Double;
    FTipInt: Integer;
    FCodRoe: string;
    FSeqRoe: Integer;
    FRecCof: Char;
    FPerCod: Double;
    FRetCof: Char;
    FRetCsl: Char;
    FRetPis: Char;
    FRetOur: Char;
    FCodSro: string;
    FRecIpi: Char;
    FRecIcm: Char;
    FTriIcm: Char;
    FTriIpi: Char;
    FRetPro: Char;
    FRetIrf: Char;
    FIndFor: Char;
    FLimRet: Char;
    FEenFor: string;
    FNumRge: string;
    FForWms: string;
    FPerRir: Double;
    FPerRin: Double;
    FNenFor: string;
    FEmaNfe: string;
    FInsAnp: Integer;
    FIndCoo: Char;
    FCodRtr: Integer;
    FRegEst: Integer;
    FRotAnx: Integer;
    FNumAnx: Integer;
    FTipPgt: string;
    FPerIcm: Double;
    FUSU_IndCol: Char;
    FUSU_CodMoe: string;
    FUSU_RegExp: string;
    FUSU_CodTip: string;
    FUSU_VenAva: TDate;

    FCodForOLD: Integer;
    FNomForOLD: string;
    FApeForOLD: string;
    FMarForOLD: string;
    FSenForOLD: string;
    FTipForOLD: Char;
    FTipMerOLD: Char;
    FCodRamOLD: string;
    FInsEstOLD: string;
    FInsMunOLD: string;
    FCgcCpfOLD: Double;
    FCodGreOLD: Integer;
    FCodSufOLD: string;
    FEndForOLD: string;
    FCplEndOLD: string;
    FBaiForOLD: string;
    FZipCodOLD: string;
    FCepForOLD: Integer;
    FCepIniOLD: Integer;
    FCidForOLD: string;
    FSigUfsOLD: string;
    FFonForOLD: string;
    FFonFo2OLD: string;
    FFonFo3OLD: string;
    FFaxForOLD: string;
    FCxaPstOLD: Integer;
    FIntNetOLD: string;
    FNomVenOLD: string;
    FFonVenOLD: string;
    FRmlVenOLD: Integer;
    FFaxVenOLD: string;
    FCodCliOLD: Integer;
    FTipFavOLD: Char;
    FCodIacOLD: Integer;
    FAbrIacOLD: string;
    FIndBspOLD: Char;
    FCodAmaOLD: string;
    FCodSabOLD: string;
    FCodGalOLD: string;
    FTipMhoOLD: Char;
    FCodCthOLD: string;
    FUsuCadOLD: Integer;
    FDatCadOLD: TDate;
    FHorCadOLD: Integer;
    FUsuAtuOLD: Integer;
    FDatAtuOLD: TDate;
    FHorAtuOLD: Integer;
    FSitForOLD: Char;
    FCodMotOLD: Integer;
    FObsMotOLD: string;
    FUsuMotOLD: Integer;
    FDatMotOLD: TDate;
    FHorMotOLD: Integer;
    FCodPaiOLD: string;
    FForRepOLD: Integer;
    FForTraOLD: Integer;
    FNotSisOLD: Double;
    FNotForOLD: Double;
    FCodTriOLD: string;
    FGerDirOLD: Char;
    FCliForOLD: Char;
    FIdeForOLD: string;
    FQtdDepOLD: Integer;
    FTemOrmOLD: Char;
    FRecPisOLD: Char;
    FPerPidOLD: Double;
    FTriIssOLD: Char;
    FIndExpOLD: Integer;
    FDatPalOLD: TDate;
    FHorPalOLD: Integer;
    FNotAfoOLD: Double;
    FTipIntOLD: Integer;
    FCodRoeOLD: string;
    FSeqRoeOLD: Integer;
    FRecCofOLD: Char;
    FPerCodOLD: Double;
    FRetCofOLD: Char;
    FRetCslOLD: Char;
    FRetPisOLD: Char;
    FRetOurOLD: Char;
    FCodSroOLD: string;
    FRecIpiOLD: Char;
    FRecIcmOLD: Char;
    FTriIcmOLD: Char;
    FTriIpiOLD: Char;
    FRetProOLD: Char;
    FRetIrfOLD: Char;
    FIndForOLD: Char;
    FLimRetOLD: Char;
    FEenForOLD: string;
    FNumRgeOLD: string;
    FForWmsOLD: string;
    FPerRirOLD: Double;
    FPerRinOLD: Double;
    FNenForOLD: string;
    FEmaNfeOLD: string;
    FInsAnpOLD: Integer;
    FIndCooOLD: Char;
    FCodRtrOLD: Integer;
    FRegEstOLD: Integer;
    FRotAnxOLD: Integer;
    FNumAnxOLD: Integer;
    FTipPgtOLD: string;
    FPerIcmOLD: Double;
    FUSU_IndColOLD: Char;
    FUSU_CodMoeOLD: string;
    FUSU_RegExpOLD: string;
    FUSU_CodTipOLD: string;
    FUSU_VenAvaOLD: TDate;

    function GetCodFor: Integer;
    procedure SetCodFor(const pCodFor: Integer);
    function GetNomFor: string;
    procedure SetNomFor(const pNomFor: string);
    function GetApeFor: string;
    procedure SetApeFor(const pApeFor: string);
    function GetMarFor: string;
    procedure SetMarFor(const pMarFor: string);
    function GetSenFor: string;
    procedure SetSenFor(const pSenFor: string);
    function GetTipFor: Char;
    procedure SetTipFor(const pTipFor: Char);
    function GetTipMer: Char;
    procedure SetTipMer(const pTipMer: Char);
    function GetCodRam: string;
    procedure SetCodRam(const pCodRam: string);
    function GetInsEst: string;
    procedure SetInsEst(const pInsEst: string);
    function GetInsMun: string;
    procedure SetInsMun(const pInsMun: string);
    function GetCgcCpf: Double;
    procedure SetCgcCpf(const pCgcCpf: Double);
    function GetCodGre: Integer;
    procedure SetCodGre(const pCodGre: Integer);
    function GetCodSuf: string;
    procedure SetCodSuf(const pCodSuf: string);
    function GetEndFor: string;
    procedure SetEndFor(const pEndFor: string);
    function GetCplEnd: string;
    procedure SetCplEnd(const pCplEnd: string);
    function GetBaiFor: string;
    procedure SetBaiFor(const pBaiFor: string);
    function GetZipCod: string;
    procedure SetZipCod(const pZipCod: string);
    function GetCepFor: Integer;
    procedure SetCepFor(const pCepFor: Integer);
    function GetCepIni: Integer;
    procedure SetCepIni(const pCepIni: Integer);
    function GetCidFor: string;
    procedure SetCidFor(const pCidFor: string);
    function GetSigUfs: string;
    procedure SetSigUfs(const pSigUfs: string);
    function GetFonFor: string;
    procedure SetFonFor(const pFonFor: string);
    function GetFonFo2: string;
    procedure SetFonFo2(const pFonFo2: string);
    function GetFonFo3: string;
    procedure SetFonFo3(const pFonFo3: string);
    function GetFaxFor: string;
    procedure SetFaxFor(const pFaxFor: string);
    function GetCxaPst: Integer;
    procedure SetCxaPst(const pCxaPst: Integer);
    function GetIntNet: string;
    procedure SetIntNet(const pIntNet: string);
    function GetNomVen: string;
    procedure SetNomVen(const pNomVen: string);
    function GetFonVen: string;
    procedure SetFonVen(const pFonVen: string);
    function GetRmlVen: Integer;
    procedure SetRmlVen(const pRmlVen: Integer);
    function GetFaxVen: string;
    procedure SetFaxVen(const pFaxVen: string);
    function GetCodCli: Integer;
    procedure SetCodCli(const pCodCli: Integer);
    function GetTipFav: Char;
    procedure SetTipFav(const pTipFav: Char);
    function GetCodIac: Integer;
    procedure SetCodIac(const pCodIac: Integer);
    function GetAbrIac: string;
    procedure SetAbrIac(const pAbrIac: string);
    function GetIndBsp: Char;
    procedure SetIndBsp(const pIndBsp: Char);
    function GetCodAma: string;
    procedure SetCodAma(const pCodAma: string);
    function GetCodSab: string;
    procedure SetCodSab(const pCodSab: string);
    function GetCodGal: string;
    procedure SetCodGal(const pCodGal: string);
    function GetTipMho: Char;
    procedure SetTipMho(const pTipMho: Char);
    function GetCodCth: string;
    procedure SetCodCth(const pCodCth: string);
    function GetUsuCad: Integer;
    procedure SetUsuCad(const pUsuCad: Integer);
    function GetDatCad: TDate;
    procedure SetDatCad(const pDatCad: TDate);
    function GetHorCad: Integer;
    procedure SetHorCad(const pHorCad: Integer);
    function GetUsuAtu: Integer;
    procedure SetUsuAtu(const pUsuAtu: Integer);
    function GetDatAtu: TDate;
    procedure SetDatAtu(const pDatAtu: TDate);
    function GetHorAtu: Integer;
    procedure SetHorAtu(const pHorAtu: Integer);
    function GetSitFor: Char;
    procedure SetSitFor(const pSitFor: Char);
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
    function GetCodPai: string;
    procedure SetCodPai(const pCodPai: string);
    function GetForRep: Integer;
    procedure SetForRep(const pForRep: Integer);
    function GetForTra: Integer;
    procedure SetForTra(const pForTra: Integer);
    function GetNotSis: Double;
    procedure SetNotSis(const pNotSis: Double);
    function GetNotFor: Double;
    procedure SetNotFor(const pNotFor: Double);
    function GetCodTri: string;
    procedure SetCodTri(const pCodTri: string);
    function GetGerDir: Char;
    procedure SetGerDir(const pGerDir: Char);
    function GetCliFor: Char;
    procedure SetCliFor(const pCliFor: Char);
    function GetIdeFor: string;
    procedure SetIdeFor(const pIdeFor: string);
    function GetQtdDep: Integer;
    procedure SetQtdDep(const pQtdDep: Integer);
    function GetTemOrm: Char;
    procedure SetTemOrm(const pTemOrm: Char);
    function GetRecPis: Char;
    procedure SetRecPis(const pRecPis: Char);
    function GetPerPid: Double;
    procedure SetPerPid(const pPerPid: Double);
    function GetTriIss: Char;
    procedure SetTriIss(const pTriIss: Char);
    function GetIndExp: Integer;
    procedure SetIndExp(const pIndExp: Integer);
    function GetDatPal: TDate;
    procedure SetDatPal(const pDatPal: TDate);
    function GetHorPal: Integer;
    procedure SetHorPal(const pHorPal: Integer);
    function GetNotAfo: Double;
    procedure SetNotAfo(const pNotAfo: Double);
    function GetTipInt: Integer;
    procedure SetTipInt(const pTipInt: Integer);
    function GetCodRoe: string;
    procedure SetCodRoe(const pCodRoe: string);
    function GetSeqRoe: Integer;
    procedure SetSeqRoe(const pSeqRoe: Integer);
    function GetRecCof: Char;
    procedure SetRecCof(const pRecCof: Char);
    function GetPerCod: Double;
    procedure SetPerCod(const pPerCod: Double);
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
    function GetRecIpi: Char;
    procedure SetRecIpi(const pRecIpi: Char);
    function GetRecIcm: Char;
    procedure SetRecIcm(const pRecIcm: Char);
    function GetTriIcm: Char;
    procedure SetTriIcm(const pTriIcm: Char);
    function GetTriIpi: Char;
    procedure SetTriIpi(const pTriIpi: Char);
    function GetRetPro: Char;
    procedure SetRetPro(const pRetPro: Char);
    function GetRetIrf: Char;
    procedure SetRetIrf(const pRetIrf: Char);
    function GetIndFor: Char;
    procedure SetIndFor(const pIndFor: Char);
    function GetLimRet: Char;
    procedure SetLimRet(const pLimRet: Char);
    function GetEenFor: string;
    procedure SetEenFor(const pEenFor: string);
    function GetNumRge: string;
    procedure SetNumRge(const pNumRge: string);
    function GetForWms: string;
    procedure SetForWms(const pForWms: string);
    function GetPerRir: Double;
    procedure SetPerRir(const pPerRir: Double);
    function GetPerRin: Double;
    procedure SetPerRin(const pPerRin: Double);
    function GetNenFor: string;
    procedure SetNenFor(const pNenFor: string);
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
    function GetRotAnx: Integer;
    procedure SetRotAnx(const pRotAnx: Integer);
    function GetNumAnx: Integer;
    procedure SetNumAnx(const pNumAnx: Integer);
    function GetTipPgt: string;
    procedure SetTipPgt(const pTipPgt: string);
    function GetPerIcm: Double;
    procedure SetPerIcm(const pPerIcm: Double);
    function GetUSU_IndCol: Char;
    procedure SetUSU_IndCol(const pUSU_IndCol: Char);
    function GetUSU_CodMoe: string;
    procedure SetUSU_CodMoe(const pUSU_CodMoe: string);
    function GetUSU_RegExp: string;
    procedure SetUSU_RegExp(const pUSU_RegExp: string);
    function GetUSU_CodTip: string;
    procedure SetUSU_CodTip(const pUSU_CodTip: string);
    function GetUSU_VenAva: TDate;
    procedure SetUSU_VenAva(const pUSU_VenAva: TDate);

    function GetCodForOld: Integer;
    procedure SetCodForOld(const pCodFor: Integer);
    function GetNomForOld: string;
    procedure SetNomForOld(const pNomFor: string);
    function GetApeForOld: string;
    procedure SetApeForOld(const pApeFor: string);
    function GetMarForOld: string;
    procedure SetMarForOld(const pMarFor: string);
    function GetSenForOld: string;
    procedure SetSenForOld(const pSenFor: string);
    function GetTipForOld: Char;
    procedure SetTipForOld(const pTipFor: Char);
    function GetTipMerOld: Char;
    procedure SetTipMerOld(const pTipMer: Char);
    function GetCodRamOld: string;
    procedure SetCodRamOld(const pCodRam: string);
    function GetInsEstOld: string;
    procedure SetInsEstOld(const pInsEst: string);
    function GetInsMunOld: string;
    procedure SetInsMunOld(const pInsMun: string);
    function GetCgcCpfOld: Double;
    procedure SetCgcCpfOld(const pCgcCpf: Double);
    function GetCodGreOld: Integer;
    procedure SetCodGreOld(const pCodGre: Integer);
    function GetCodSufOld: string;
    procedure SetCodSufOld(const pCodSuf: string);
    function GetEndForOld: string;
    procedure SetEndForOld(const pEndFor: string);
    function GetCplEndOld: string;
    procedure SetCplEndOld(const pCplEnd: string);
    function GetBaiForOld: string;
    procedure SetBaiForOld(const pBaiFor: string);
    function GetZipCodOld: string;
    procedure SetZipCodOld(const pZipCod: string);
    function GetCepForOld: Integer;
    procedure SetCepForOld(const pCepFor: Integer);
    function GetCepIniOld: Integer;
    procedure SetCepIniOld(const pCepIni: Integer);
    function GetCidForOld: string;
    procedure SetCidForOld(const pCidFor: string);
    function GetSigUfsOld: string;
    procedure SetSigUfsOld(const pSigUfs: string);
    function GetFonForOld: string;
    procedure SetFonForOld(const pFonFor: string);
    function GetFonFo2Old: string;
    procedure SetFonFo2Old(const pFonFo2: string);
    function GetFonFo3Old: string;
    procedure SetFonFo3Old(const pFonFo3: string);
    function GetFaxForOld: string;
    procedure SetFaxForOld(const pFaxFor: string);
    function GetCxaPstOld: Integer;
    procedure SetCxaPstOld(const pCxaPst: Integer);
    function GetIntNetOld: string;
    procedure SetIntNetOld(const pIntNet: string);
    function GetNomVenOld: string;
    procedure SetNomVenOld(const pNomVen: string);
    function GetFonVenOld: string;
    procedure SetFonVenOld(const pFonVen: string);
    function GetRmlVenOld: Integer;
    procedure SetRmlVenOld(const pRmlVen: Integer);
    function GetFaxVenOld: string;
    procedure SetFaxVenOld(const pFaxVen: string);
    function GetCodCliOld: Integer;
    procedure SetCodCliOld(const pCodCli: Integer);
    function GetTipFavOld: Char;
    procedure SetTipFavOld(const pTipFav: Char);
    function GetCodIacOld: Integer;
    procedure SetCodIacOld(const pCodIac: Integer);
    function GetAbrIacOld: string;
    procedure SetAbrIacOld(const pAbrIac: string);
    function GetIndBspOld: Char;
    procedure SetIndBspOld(const pIndBsp: Char);
    function GetCodAmaOld: string;
    procedure SetCodAmaOld(const pCodAma: string);
    function GetCodSabOld: string;
    procedure SetCodSabOld(const pCodSab: string);
    function GetCodGalOld: string;
    procedure SetCodGalOld(const pCodGal: string);
    function GetTipMhoOld: Char;
    procedure SetTipMhoOld(const pTipMho: Char);
    function GetCodCthOld: string;
    procedure SetCodCthOld(const pCodCth: string);
    function GetUsuCadOld: Integer;
    procedure SetUsuCadOld(const pUsuCad: Integer);
    function GetDatCadOld: TDate;
    procedure SetDatCadOld(const pDatCad: TDate);
    function GetHorCadOld: Integer;
    procedure SetHorCadOld(const pHorCad: Integer);
    function GetUsuAtuOld: Integer;
    procedure SetUsuAtuOld(const pUsuAtu: Integer);
    function GetDatAtuOld: TDate;
    procedure SetDatAtuOld(const pDatAtu: TDate);
    function GetHorAtuOld: Integer;
    procedure SetHorAtuOld(const pHorAtu: Integer);
    function GetSitForOld: Char;
    procedure SetSitForOld(const pSitFor: Char);
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
    function GetCodPaiOld: string;
    procedure SetCodPaiOld(const pCodPai: string);
    function GetForRepOld: Integer;
    procedure SetForRepOld(const pForRep: Integer);
    function GetForTraOld: Integer;
    procedure SetForTraOld(const pForTra: Integer);
    function GetNotSisOld: Double;
    procedure SetNotSisOld(const pNotSis: Double);
    function GetNotForOld: Double;
    procedure SetNotForOld(const pNotFor: Double);
    function GetCodTriOld: string;
    procedure SetCodTriOld(const pCodTri: string);
    function GetGerDirOld: Char;
    procedure SetGerDirOld(const pGerDir: Char);
    function GetCliForOld: Char;
    procedure SetCliForOld(const pCliFor: Char);
    function GetIdeForOld: string;
    procedure SetIdeForOld(const pIdeFor: string);
    function GetQtdDepOld: Integer;
    procedure SetQtdDepOld(const pQtdDep: Integer);
    function GetTemOrmOld: Char;
    procedure SetTemOrmOld(const pTemOrm: Char);
    function GetRecPisOld: Char;
    procedure SetRecPisOld(const pRecPis: Char);
    function GetPerPidOld: Double;
    procedure SetPerPidOld(const pPerPid: Double);
    function GetTriIssOld: Char;
    procedure SetTriIssOld(const pTriIss: Char);
    function GetIndExpOld: Integer;
    procedure SetIndExpOld(const pIndExp: Integer);
    function GetDatPalOld: TDate;
    procedure SetDatPalOld(const pDatPal: TDate);
    function GetHorPalOld: Integer;
    procedure SetHorPalOld(const pHorPal: Integer);
    function GetNotAfoOld: Double;
    procedure SetNotAfoOld(const pNotAfo: Double);
    function GetTipIntOld: Integer;
    procedure SetTipIntOld(const pTipInt: Integer);
    function GetCodRoeOld: string;
    procedure SetCodRoeOld(const pCodRoe: string);
    function GetSeqRoeOld: Integer;
    procedure SetSeqRoeOld(const pSeqRoe: Integer);
    function GetRecCofOld: Char;
    procedure SetRecCofOld(const pRecCof: Char);
    function GetPerCodOld: Double;
    procedure SetPerCodOld(const pPerCod: Double);
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
    function GetRecIpiOld: Char;
    procedure SetRecIpiOld(const pRecIpi: Char);
    function GetRecIcmOld: Char;
    procedure SetRecIcmOld(const pRecIcm: Char);
    function GetTriIcmOld: Char;
    procedure SetTriIcmOld(const pTriIcm: Char);
    function GetTriIpiOld: Char;
    procedure SetTriIpiOld(const pTriIpi: Char);
    function GetRetProOld: Char;
    procedure SetRetProOld(const pRetPro: Char);
    function GetRetIrfOld: Char;
    procedure SetRetIrfOld(const pRetIrf: Char);
    function GetIndForOld: Char;
    procedure SetIndForOld(const pIndFor: Char);
    function GetLimRetOld: Char;
    procedure SetLimRetOld(const pLimRet: Char);
    function GetEenForOld: string;
    procedure SetEenForOld(const pEenFor: string);
    function GetNumRgeOld: string;
    procedure SetNumRgeOld(const pNumRge: string);
    function GetForWmsOld: string;
    procedure SetForWmsOld(const pForWms: string);
    function GetPerRirOld: Double;
    procedure SetPerRirOld(const pPerRir: Double);
    function GetPerRinOld: Double;
    procedure SetPerRinOld(const pPerRin: Double);
    function GetNenForOld: string;
    procedure SetNenForOld(const pNenFor: string);
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
    function GetRotAnxOld: Integer;
    procedure SetRotAnxOld(const pRotAnx: Integer);
    function GetNumAnxOld: Integer;
    procedure SetNumAnxOld(const pNumAnx: Integer);
    function GetTipPgtOld: string;
    procedure SetTipPgtOld(const pTipPgt: string);
    function GetPerIcmOld: Double;
    procedure SetPerIcmOld(const pPerIcm: Double);
    function GetUSU_IndColOld: Char;
    procedure SetUSU_IndColOld(const pUSU_IndCol: Char);
    function GetUSU_CodMoeOld: string;
    procedure SetUSU_CodMoeOld(const pUSU_CodMoe: string);
    function GetUSU_RegExpOld: string;
    procedure SetUSU_RegExpOld(const pUSU_RegExp: string);
    function GetUSU_CodTipOld: string;
    procedure SetUSU_CodTipOld(const pUSU_CodTip: string);
    function GetUSU_VenAvaOld: TDate;
    procedure SetUSU_VenAvaOld(const pUSU_VenAva: TDate);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property CodFor: Integer read GetCodFor write SetCodFor;
    property NomFor: string read GetNomFor write SetNomFor;
    property ApeFor: string read GetApeFor write SetApeFor;
    property MarFor: string read GetMarFor write SetMarFor;
    property SenFor: string read GetSenFor write SetSenFor;
    property TipFor: Char read GetTipFor write SetTipFor;
    property TipMer: Char read GetTipMer write SetTipMer;
    property CodRam: string read GetCodRam write SetCodRam;
    property InsEst: string read GetInsEst write SetInsEst;
    property InsMun: string read GetInsMun write SetInsMun;
    property CgcCpf: Double read GetCgcCpf write SetCgcCpf;
    property CodGre: Integer read GetCodGre write SetCodGre;
    property CodSuf: string read GetCodSuf write SetCodSuf;
    property EndFor: string read GetEndFor write SetEndFor;
    property CplEnd: string read GetCplEnd write SetCplEnd;
    property BaiFor: string read GetBaiFor write SetBaiFor;
    property ZipCod: string read GetZipCod write SetZipCod;
    property CepFor: Integer read GetCepFor write SetCepFor;
    property CepIni: Integer read GetCepIni write SetCepIni;
    property CidFor: string read GetCidFor write SetCidFor;
    property SigUfs: string read GetSigUfs write SetSigUfs;
    property FonFor: string read GetFonFor write SetFonFor;
    property FonFo2: string read GetFonFo2 write SetFonFo2;
    property FonFo3: string read GetFonFo3 write SetFonFo3;
    property FaxFor: string read GetFaxFor write SetFaxFor;
    property CxaPst: Integer read GetCxaPst write SetCxaPst;
    property IntNet: string read GetIntNet write SetIntNet;
    property NomVen: string read GetNomVen write SetNomVen;
    property FonVen: string read GetFonVen write SetFonVen;
    property RmlVen: Integer read GetRmlVen write SetRmlVen;
    property FaxVen: string read GetFaxVen write SetFaxVen;
    property CodCli: Integer read GetCodCli write SetCodCli;
    property TipFav: Char read GetTipFav write SetTipFav;
    property CodIac: Integer read GetCodIac write SetCodIac;
    property AbrIac: string read GetAbrIac write SetAbrIac;
    property IndBsp: Char read GetIndBsp write SetIndBsp;
    property CodAma: string read GetCodAma write SetCodAma;
    property CodSab: string read GetCodSab write SetCodSab;
    property CodGal: string read GetCodGal write SetCodGal;
    property TipMho: Char read GetTipMho write SetTipMho;
    property CodCth: string read GetCodCth write SetCodCth;
    property UsuCad: Integer read GetUsuCad write SetUsuCad;
    property DatCad: TDate read GetDatCad write SetDatCad;
    property HorCad: Integer read GetHorCad write SetHorCad;
    property UsuAtu: Integer read GetUsuAtu write SetUsuAtu;
    property DatAtu: TDate read GetDatAtu write SetDatAtu;
    property HorAtu: Integer read GetHorAtu write SetHorAtu;
    property SitFor: Char read GetSitFor write SetSitFor;
    property CodMot: Integer read GetCodMot write SetCodMot;
    property ObsMot: string read GetObsMot write SetObsMot;
    property UsuMot: Integer read GetUsuMot write SetUsuMot;
    property DatMot: TDate read GetDatMot write SetDatMot;
    property HorMot: Integer read GetHorMot write SetHorMot;
    property CodPai: string read GetCodPai write SetCodPai;
    property ForRep: Integer read GetForRep write SetForRep;
    property ForTra: Integer read GetForTra write SetForTra;
    property NotSis: Double read GetNotSis write SetNotSis;
    property NotFor: Double read GetNotFor write SetNotFor;
    property CodTri: string read GetCodTri write SetCodTri;
    property GerDir: Char read GetGerDir write SetGerDir;
    property CliFor: Char read GetCliFor write SetCliFor;
    property IdeFor: string read GetIdeFor write SetIdeFor;
    property QtdDep: Integer read GetQtdDep write SetQtdDep;
    property TemOrm: Char read GetTemOrm write SetTemOrm;
    property RecPis: Char read GetRecPis write SetRecPis;
    property PerPid: Double read GetPerPid write SetPerPid;
    property TriIss: Char read GetTriIss write SetTriIss;
    property IndExp: Integer read GetIndExp write SetIndExp;
    property DatPal: TDate read GetDatPal write SetDatPal;
    property HorPal: Integer read GetHorPal write SetHorPal;
    property NotAfo: Double read GetNotAfo write SetNotAfo;
    property TipInt: Integer read GetTipInt write SetTipInt;
    property CodRoe: string read GetCodRoe write SetCodRoe;
    property SeqRoe: Integer read GetSeqRoe write SetSeqRoe;
    property RecCof: Char read GetRecCof write SetRecCof;
    property PerCod: Double read GetPerCod write SetPerCod;
    property RetCof: Char read GetRetCof write SetRetCof;
    property RetCsl: Char read GetRetCsl write SetRetCsl;
    property RetPis: Char read GetRetPis write SetRetPis;
    property RetOur: Char read GetRetOur write SetRetOur;
    property CodSro: string read GetCodSro write SetCodSro;
    property RecIpi: Char read GetRecIpi write SetRecIpi;
    property RecIcm: Char read GetRecIcm write SetRecIcm;
    property TriIcm: Char read GetTriIcm write SetTriIcm;
    property TriIpi: Char read GetTriIpi write SetTriIpi;
    property RetPro: Char read GetRetPro write SetRetPro;
    property RetIrf: Char read GetRetIrf write SetRetIrf;
    property IndFor: Char read GetIndFor write SetIndFor;
    property LimRet: Char read GetLimRet write SetLimRet;
    property EenFor: string read GetEenFor write SetEenFor;
    property NumRge: string read GetNumRge write SetNumRge;
    property ForWms: string read GetForWms write SetForWms;
    property PerRir: Double read GetPerRir write SetPerRir;
    property PerRin: Double read GetPerRin write SetPerRin;
    property NenFor: string read GetNenFor write SetNenFor;
    property EmaNfe: string read GetEmaNfe write SetEmaNfe;
    property InsAnp: Integer read GetInsAnp write SetInsAnp;
    property IndCoo: Char read GetIndCoo write SetIndCoo;
    property CodRtr: Integer read GetCodRtr write SetCodRtr;
    property RegEst: Integer read GetRegEst write SetRegEst;
    property RotAnx: Integer read GetRotAnx write SetRotAnx;
    property NumAnx: Integer read GetNumAnx write SetNumAnx;
    property TipPgt: string read GetTipPgt write SetTipPgt;
    property PerIcm: Double read GetPerIcm write SetPerIcm;
    property USU_IndCol: Char read GetUSU_IndCol write SetUSU_IndCol;
    property USU_CodMoe: string read GetUSU_CodMoe write SetUSU_CodMoe;
    property USU_RegExp: string read GetUSU_RegExp write SetUSU_RegExp;
    property USU_CodTip: string read GetUSU_CodTip write SetUSU_CodTip;
    property USU_VenAva: TDate read GetUSU_VenAva write SetUSU_VenAva;

    property OLD_CodFor: Integer read GetCodForOLD write SetCodForOLD;
    property OLD_NomFor: string read GetNomForOLD write SetNomForOLD;
    property OLD_ApeFor: string read GetApeForOLD write SetApeForOLD;
    property OLD_MarFor: string read GetMarForOLD write SetMarForOLD;
    property OLD_SenFor: string read GetSenForOLD write SetSenForOLD;
    property OLD_TipFor: Char read GetTipForOLD write SetTipForOLD;
    property OLD_TipMer: Char read GetTipMerOLD write SetTipMerOLD;
    property OLD_CodRam: string read GetCodRamOLD write SetCodRamOLD;
    property OLD_InsEst: string read GetInsEstOLD write SetInsEstOLD;
    property OLD_InsMun: string read GetInsMunOLD write SetInsMunOLD;
    property OLD_CgcCpf: Double read GetCgcCpfOLD write SetCgcCpfOLD;
    property OLD_CodGre: Integer read GetCodGreOLD write SetCodGreOLD;
    property OLD_CodSuf: string read GetCodSufOLD write SetCodSufOLD;
    property OLD_EndFor: string read GetEndForOLD write SetEndForOLD;
    property OLD_CplEnd: string read GetCplEndOLD write SetCplEndOLD;
    property OLD_BaiFor: string read GetBaiForOLD write SetBaiForOLD;
    property OLD_ZipCod: string read GetZipCodOLD write SetZipCodOLD;
    property OLD_CepFor: Integer read GetCepForOLD write SetCepForOLD;
    property OLD_CepIni: Integer read GetCepIniOLD write SetCepIniOLD;
    property OLD_CidFor: string read GetCidForOLD write SetCidForOLD;
    property OLD_SigUfs: string read GetSigUfsOLD write SetSigUfsOLD;
    property OLD_FonFor: string read GetFonForOLD write SetFonForOLD;
    property OLD_FonFo2: string read GetFonFo2OLD write SetFonFo2OLD;
    property OLD_FonFo3: string read GetFonFo3OLD write SetFonFo3OLD;
    property OLD_FaxFor: string read GetFaxForOLD write SetFaxForOLD;
    property OLD_CxaPst: Integer read GetCxaPstOLD write SetCxaPstOLD;
    property OLD_IntNet: string read GetIntNetOLD write SetIntNetOLD;
    property OLD_NomVen: string read GetNomVenOLD write SetNomVenOLD;
    property OLD_FonVen: string read GetFonVenOLD write SetFonVenOLD;
    property OLD_RmlVen: Integer read GetRmlVenOLD write SetRmlVenOLD;
    property OLD_FaxVen: string read GetFaxVenOLD write SetFaxVenOLD;
    property OLD_CodCli: Integer read GetCodCliOLD write SetCodCliOLD;
    property OLD_TipFav: Char read GetTipFavOLD write SetTipFavOLD;
    property OLD_CodIac: Integer read GetCodIacOLD write SetCodIacOLD;
    property OLD_AbrIac: string read GetAbrIacOLD write SetAbrIacOLD;
    property OLD_IndBsp: Char read GetIndBspOLD write SetIndBspOLD;
    property OLD_CodAma: string read GetCodAmaOLD write SetCodAmaOLD;
    property OLD_CodSab: string read GetCodSabOLD write SetCodSabOLD;
    property OLD_CodGal: string read GetCodGalOLD write SetCodGalOLD;
    property OLD_TipMho: Char read GetTipMhoOLD write SetTipMhoOLD;
    property OLD_CodCth: string read GetCodCthOLD write SetCodCthOLD;
    property OLD_UsuCad: Integer read GetUsuCadOLD write SetUsuCadOLD;
    property OLD_DatCad: TDate read GetDatCadOLD write SetDatCadOLD;
    property OLD_HorCad: Integer read GetHorCadOLD write SetHorCadOLD;
    property OLD_UsuAtu: Integer read GetUsuAtuOLD write SetUsuAtuOLD;
    property OLD_DatAtu: TDate read GetDatAtuOLD write SetDatAtuOLD;
    property OLD_HorAtu: Integer read GetHorAtuOLD write SetHorAtuOLD;
    property OLD_SitFor: Char read GetSitForOLD write SetSitForOLD;
    property OLD_CodMot: Integer read GetCodMotOLD write SetCodMotOLD;
    property OLD_ObsMot: string read GetObsMotOLD write SetObsMotOLD;
    property OLD_UsuMot: Integer read GetUsuMotOLD write SetUsuMotOLD;
    property OLD_DatMot: TDate read GetDatMotOLD write SetDatMotOLD;
    property OLD_HorMot: Integer read GetHorMotOLD write SetHorMotOLD;
    property OLD_CodPai: string read GetCodPaiOLD write SetCodPaiOLD;
    property OLD_ForRep: Integer read GetForRepOLD write SetForRepOLD;
    property OLD_ForTra: Integer read GetForTraOLD write SetForTraOLD;
    property OLD_NotSis: Double read GetNotSisOLD write SetNotSisOLD;
    property OLD_NotFor: Double read GetNotForOLD write SetNotForOLD;
    property OLD_CodTri: string read GetCodTriOLD write SetCodTriOLD;
    property OLD_GerDir: Char read GetGerDirOLD write SetGerDirOLD;
    property OLD_CliFor: Char read GetCliForOLD write SetCliForOLD;
    property OLD_IdeFor: string read GetIdeForOLD write SetIdeForOLD;
    property OLD_QtdDep: Integer read GetQtdDepOLD write SetQtdDepOLD;
    property OLD_TemOrm: Char read GetTemOrmOLD write SetTemOrmOLD;
    property OLD_RecPis: Char read GetRecPisOLD write SetRecPisOLD;
    property OLD_PerPid: Double read GetPerPidOLD write SetPerPidOLD;
    property OLD_TriIss: Char read GetTriIssOLD write SetTriIssOLD;
    property OLD_IndExp: Integer read GetIndExpOLD write SetIndExpOLD;
    property OLD_DatPal: TDate read GetDatPalOLD write SetDatPalOLD;
    property OLD_HorPal: Integer read GetHorPalOLD write SetHorPalOLD;
    property OLD_NotAfo: Double read GetNotAfoOLD write SetNotAfoOLD;
    property OLD_TipInt: Integer read GetTipIntOLD write SetTipIntOLD;
    property OLD_CodRoe: string read GetCodRoeOLD write SetCodRoeOLD;
    property OLD_SeqRoe: Integer read GetSeqRoeOLD write SetSeqRoeOLD;
    property OLD_RecCof: Char read GetRecCofOLD write SetRecCofOLD;
    property OLD_PerCod: Double read GetPerCodOLD write SetPerCodOLD;
    property OLD_RetCof: Char read GetRetCofOLD write SetRetCofOLD;
    property OLD_RetCsl: Char read GetRetCslOLD write SetRetCslOLD;
    property OLD_RetPis: Char read GetRetPisOLD write SetRetPisOLD;
    property OLD_RetOur: Char read GetRetOurOLD write SetRetOurOLD;
    property OLD_CodSro: string read GetCodSroOLD write SetCodSroOLD;
    property OLD_RecIpi: Char read GetRecIpiOLD write SetRecIpiOLD;
    property OLD_RecIcm: Char read GetRecIcmOLD write SetRecIcmOLD;
    property OLD_TriIcm: Char read GetTriIcmOLD write SetTriIcmOLD;
    property OLD_TriIpi: Char read GetTriIpiOLD write SetTriIpiOLD;
    property OLD_RetPro: Char read GetRetProOLD write SetRetProOLD;
    property OLD_RetIrf: Char read GetRetIrfOLD write SetRetIrfOLD;
    property OLD_IndFor: Char read GetIndForOLD write SetIndForOLD;
    property OLD_LimRet: Char read GetLimRetOLD write SetLimRetOLD;
    property OLD_EenFor: string read GetEenForOLD write SetEenForOLD;
    property OLD_NumRge: string read GetNumRgeOLD write SetNumRgeOLD;
    property OLD_ForWms: string read GetForWmsOLD write SetForWmsOLD;
    property OLD_PerRir: Double read GetPerRirOLD write SetPerRirOLD;
    property OLD_PerRin: Double read GetPerRinOLD write SetPerRinOLD;
    property OLD_NenFor: string read GetNenForOLD write SetNenForOLD;
    property OLD_EmaNfe: string read GetEmaNfeOLD write SetEmaNfeOLD;
    property OLD_InsAnp: Integer read GetInsAnpOLD write SetInsAnpOLD;
    property OLD_IndCoo: Char read GetIndCooOLD write SetIndCooOLD;
    property OLD_CodRtr: Integer read GetCodRtrOLD write SetCodRtrOLD;
    property OLD_RegEst: Integer read GetRegEstOLD write SetRegEstOLD;
    property OLD_RotAnx: Integer read GetRotAnxOLD write SetRotAnxOLD;
    property OLD_NumAnx: Integer read GetNumAnxOLD write SetNumAnxOLD;
    property OLD_TipPgt: string read GetTipPgtOLD write SetTipPgtOLD;
    property OLD_PerIcm: Double read GetPerIcmOLD write SetPerIcmOLD;
    property OLD_USU_IndCol: Char read GetUSU_IndColOLD write SetUSU_IndColOLD;
    property OLD_USU_CodMoe: string read GetUSU_CodMoeOLD write SetUSU_CodMoeOLD;
    property OLD_USU_RegExp: string read GetUSU_RegExpOLD write SetUSU_RegExpOLD;
    property OLD_USU_CodTip: string read GetUSU_CodTipOLD write SetUSU_CodTipOLD;
    property OLD_USU_VenAva: TDate read GetUSU_VenAvaOLD write SetUSU_VenAvaOLD;
  end;

implementation

{ T095FOR }

constructor T095FOR.Create();
begin
  AddPrimaryKeys('CodFor');

  inherited Create('E095FOR');
end;

destructor T095FOR.Destroy();
begin
  inherited;
end;

function T095FOR.GetCodFor: Integer;
begin
  Result := FCodFor;
end;

procedure T095FOR.SetCodFor(const pCodFor: Integer);
begin
  FCodFor := pCodFor;

  CheckField('CodFor');
end;

function T095FOR.GetNomFor: string;
begin
  Result := FNomFor;
end;

procedure T095FOR.SetNomFor(const pNomFor: string);
begin
  FNomFor := pNomFor;

  CheckField('NomFor');
end;

function T095FOR.GetApeFor: string;
begin
  Result := FApeFor;
end;

procedure T095FOR.SetApeFor(const pApeFor: string);
begin
  FApeFor := pApeFor;

  CheckField('ApeFor');
end;

function T095FOR.GetMarFor: string;
begin
  Result := FMarFor;
end;

procedure T095FOR.SetMarFor(const pMarFor: string);
begin
  FMarFor := pMarFor;

  CheckField('MarFor');
end;

function T095FOR.GetSenFor: string;
begin
  Result := FSenFor;
end;

procedure T095FOR.SetSenFor(const pSenFor: string);
begin
  FSenFor := pSenFor;

  CheckField('SenFor');
end;

function T095FOR.GetTipFor: Char;
begin
  Result := FTipFor;
end;

procedure T095FOR.SetTipFor(const pTipFor: Char);
begin
  FTipFor := pTipFor;

  CheckField('TipFor');
end;

function T095FOR.GetTipMer: Char;
begin
  Result := FTipMer;
end;

procedure T095FOR.SetTipMer(const pTipMer: Char);
begin
  FTipMer := pTipMer;

  CheckField('TipMer');
end;

function T095FOR.GetCodRam: string;
begin
  Result := FCodRam;
end;

procedure T095FOR.SetCodRam(const pCodRam: string);
begin
  FCodRam := pCodRam;

  CheckField('CodRam');
end;

function T095FOR.GetInsEst: string;
begin
  Result := FInsEst;
end;

procedure T095FOR.SetInsEst(const pInsEst: string);
begin
  FInsEst := pInsEst;

  CheckField('InsEst');
end;

function T095FOR.GetInsMun: string;
begin
  Result := FInsMun;
end;

procedure T095FOR.SetInsMun(const pInsMun: string);
begin
  FInsMun := pInsMun;

  CheckField('InsMun');
end;

function T095FOR.GetCgcCpf: Double;
begin
  Result := FCgcCpf;
end;

procedure T095FOR.SetCgcCpf(const pCgcCpf: Double);
begin
  FCgcCpf := pCgcCpf;

  CheckField('CgcCpf');
end;

function T095FOR.GetCodGre: Integer;
begin
  Result := FCodGre;
end;

procedure T095FOR.SetCodGre(const pCodGre: Integer);
begin
  FCodGre := pCodGre;

  CheckField('CodGre');
end;

function T095FOR.GetCodSuf: string;
begin
  Result := FCodSuf;
end;

procedure T095FOR.SetCodSuf(const pCodSuf: string);
begin
  FCodSuf := pCodSuf;

  CheckField('CodSuf');
end;

function T095FOR.GetEndFor: string;
begin
  Result := FEndFor;
end;

procedure T095FOR.SetEndFor(const pEndFor: string);
begin
  FEndFor := pEndFor;

  CheckField('EndFor');
end;

function T095FOR.GetCplEnd: string;
begin
  Result := FCplEnd;
end;

procedure T095FOR.SetCplEnd(const pCplEnd: string);
begin
  FCplEnd := pCplEnd;

  CheckField('CplEnd');
end;

function T095FOR.GetBaiFor: string;
begin
  Result := FBaiFor;
end;

procedure T095FOR.SetBaiFor(const pBaiFor: string);
begin
  FBaiFor := pBaiFor;

  CheckField('BaiFor');
end;

function T095FOR.GetZipCod: string;
begin
  Result := FZipCod;
end;

procedure T095FOR.SetZipCod(const pZipCod: string);
begin
  FZipCod := pZipCod;

  CheckField('ZipCod');
end;

function T095FOR.GetCepFor: Integer;
begin
  Result := FCepFor;
end;

procedure T095FOR.SetCepFor(const pCepFor: Integer);
begin
  FCepFor := pCepFor;

  CheckField('CepFor');
end;

function T095FOR.GetCepIni: Integer;
begin
  Result := FCepIni;
end;

procedure T095FOR.SetCepIni(const pCepIni: Integer);
begin
  FCepIni := pCepIni;

  CheckField('CepIni');
end;

function T095FOR.GetCidFor: string;
begin
  Result := FCidFor;
end;

procedure T095FOR.SetCidFor(const pCidFor: string);
begin
  FCidFor := pCidFor;

  CheckField('CidFor');
end;

function T095FOR.GetSigUfs: string;
begin
  Result := FSigUfs;
end;

procedure T095FOR.SetSigUfs(const pSigUfs: string);
begin
  FSigUfs := pSigUfs;

  CheckField('SigUfs');
end;

function T095FOR.GetFonFor: string;
begin
  Result := FFonFor;
end;

procedure T095FOR.SetFonFor(const pFonFor: string);
begin
  FFonFor := pFonFor;

  CheckField('FonFor');
end;

function T095FOR.GetFonFo2: string;
begin
  Result := FFonFo2;
end;

procedure T095FOR.SetFonFo2(const pFonFo2: string);
begin
  FFonFo2 := pFonFo2;

  CheckField('FonFo2');
end;

function T095FOR.GetFonFo3: string;
begin
  Result := FFonFo3;
end;

procedure T095FOR.SetFonFo3(const pFonFo3: string);
begin
  FFonFo3 := pFonFo3;

  CheckField('FonFo3');
end;

function T095FOR.GetFaxFor: string;
begin
  Result := FFaxFor;
end;

procedure T095FOR.SetFaxFor(const pFaxFor: string);
begin
  FFaxFor := pFaxFor;

  CheckField('FaxFor');
end;

function T095FOR.GetCxaPst: Integer;
begin
  Result := FCxaPst;
end;

procedure T095FOR.SetCxaPst(const pCxaPst: Integer);
begin
  FCxaPst := pCxaPst;

  CheckField('CxaPst');
end;

function T095FOR.GetIntNet: string;
begin
  Result := FIntNet;
end;

procedure T095FOR.SetIntNet(const pIntNet: string);
begin
  FIntNet := pIntNet;

  CheckField('IntNet');
end;

function T095FOR.GetNomVen: string;
begin
  Result := FNomVen;
end;

procedure T095FOR.SetNomVen(const pNomVen: string);
begin
  FNomVen := pNomVen;

  CheckField('NomVen');
end;

function T095FOR.GetFonVen: string;
begin
  Result := FFonVen;
end;

procedure T095FOR.SetFonVen(const pFonVen: string);
begin
  FFonVen := pFonVen;

  CheckField('FonVen');
end;

function T095FOR.GetRmlVen: Integer;
begin
  Result := FRmlVen;
end;

procedure T095FOR.SetRmlVen(const pRmlVen: Integer);
begin
  FRmlVen := pRmlVen;

  CheckField('RmlVen');
end;

function T095FOR.GetFaxVen: string;
begin
  Result := FFaxVen;
end;

procedure T095FOR.SetFaxVen(const pFaxVen: string);
begin
  FFaxVen := pFaxVen;

  CheckField('FaxVen');
end;

function T095FOR.GetCodCli: Integer;
begin
  Result := FCodCli;
end;

procedure T095FOR.SetCodCli(const pCodCli: Integer);
begin
  FCodCli := pCodCli;

  CheckField('CodCli');
end;

function T095FOR.GetTipFav: Char;
begin
  Result := FTipFav;
end;

procedure T095FOR.SetTipFav(const pTipFav: Char);
begin
  FTipFav := pTipFav;

  CheckField('TipFav');
end;

function T095FOR.GetCodIac: Integer;
begin
  Result := FCodIac;
end;

procedure T095FOR.SetCodIac(const pCodIac: Integer);
begin
  FCodIac := pCodIac;

  CheckField('CodIac');
end;

function T095FOR.GetAbrIac: string;
begin
  Result := FAbrIac;
end;

procedure T095FOR.SetAbrIac(const pAbrIac: string);
begin
  FAbrIac := pAbrIac;

  CheckField('AbrIac');
end;

function T095FOR.GetIndBsp: Char;
begin
  Result := FIndBsp;
end;

procedure T095FOR.SetIndBsp(const pIndBsp: Char);
begin
  FIndBsp := pIndBsp;

  CheckField('IndBsp');
end;

function T095FOR.GetCodAma: string;
begin
  Result := FCodAma;
end;

procedure T095FOR.SetCodAma(const pCodAma: string);
begin
  FCodAma := pCodAma;

  CheckField('CodAma');
end;

function T095FOR.GetCodSab: string;
begin
  Result := FCodSab;
end;

procedure T095FOR.SetCodSab(const pCodSab: string);
begin
  FCodSab := pCodSab;

  CheckField('CodSab');
end;

function T095FOR.GetCodGal: string;
begin
  Result := FCodGal;
end;

procedure T095FOR.SetCodGal(const pCodGal: string);
begin
  FCodGal := pCodGal;

  CheckField('CodGal');
end;

function T095FOR.GetTipMho: Char;
begin
  Result := FTipMho;
end;

procedure T095FOR.SetTipMho(const pTipMho: Char);
begin
  FTipMho := pTipMho;

  CheckField('TipMho');
end;

function T095FOR.GetCodCth: string;
begin
  Result := FCodCth;
end;

procedure T095FOR.SetCodCth(const pCodCth: string);
begin
  FCodCth := pCodCth;

  CheckField('CodCth');
end;

function T095FOR.GetUsuCad: Integer;
begin
  Result := FUsuCad;
end;

procedure T095FOR.SetUsuCad(const pUsuCad: Integer);
begin
  FUsuCad := pUsuCad;

  CheckField('UsuCad');
end;

function T095FOR.GetDatCad: TDate;
begin
  Result := FDatCad;
end;

procedure T095FOR.SetDatCad(const pDatCad: TDate);
begin
  FDatCad := pDatCad;

  CheckField('DatCad');
end;

function T095FOR.GetHorCad: Integer;
begin
  Result := FHorCad;
end;

procedure T095FOR.SetHorCad(const pHorCad: Integer);
begin
  FHorCad := pHorCad;

  CheckField('HorCad');
end;

function T095FOR.GetUsuAtu: Integer;
begin
  Result := FUsuAtu;
end;

procedure T095FOR.SetUsuAtu(const pUsuAtu: Integer);
begin
  FUsuAtu := pUsuAtu;

  CheckField('UsuAtu');
end;

function T095FOR.GetDatAtu: TDate;
begin
  Result := FDatAtu;
end;

procedure T095FOR.SetDatAtu(const pDatAtu: TDate);
begin
  FDatAtu := pDatAtu;

  CheckField('DatAtu');
end;

function T095FOR.GetHorAtu: Integer;
begin
  Result := FHorAtu;
end;

procedure T095FOR.SetHorAtu(const pHorAtu: Integer);
begin
  FHorAtu := pHorAtu;

  CheckField('HorAtu');
end;

function T095FOR.GetSitFor: Char;
begin
  Result := FSitFor;
end;

procedure T095FOR.SetSitFor(const pSitFor: Char);
begin
  FSitFor := pSitFor;

  CheckField('SitFor');
end;

function T095FOR.GetCodMot: Integer;
begin
  Result := FCodMot;
end;

procedure T095FOR.SetCodMot(const pCodMot: Integer);
begin
  FCodMot := pCodMot;

  CheckField('CodMot');
end;

function T095FOR.GetObsMot: string;
begin
  Result := FObsMot;
end;

procedure T095FOR.SetObsMot(const pObsMot: string);
begin
  FObsMot := pObsMot;

  CheckField('ObsMot');
end;

function T095FOR.GetUsuMot: Integer;
begin
  Result := FUsuMot;
end;

procedure T095FOR.SetUsuMot(const pUsuMot: Integer);
begin
  FUsuMot := pUsuMot;

  CheckField('UsuMot');
end;

function T095FOR.GetDatMot: TDate;
begin
  Result := FDatMot;
end;

procedure T095FOR.SetDatMot(const pDatMot: TDate);
begin
  FDatMot := pDatMot;

  CheckField('DatMot');
end;

function T095FOR.GetHorMot: Integer;
begin
  Result := FHorMot;
end;

procedure T095FOR.SetHorMot(const pHorMot: Integer);
begin
  FHorMot := pHorMot;

  CheckField('HorMot');
end;

function T095FOR.GetCodPai: string;
begin
  Result := FCodPai;
end;

procedure T095FOR.SetCodPai(const pCodPai: string);
begin
  FCodPai := pCodPai;

  CheckField('CodPai');
end;

function T095FOR.GetForRep: Integer;
begin
  Result := FForRep;
end;

procedure T095FOR.SetForRep(const pForRep: Integer);
begin
  FForRep := pForRep;

  CheckField('ForRep');
end;

function T095FOR.GetForTra: Integer;
begin
  Result := FForTra;
end;

procedure T095FOR.SetForTra(const pForTra: Integer);
begin
  FForTra := pForTra;

  CheckField('ForTra');
end;

function T095FOR.GetNotSis: Double;
begin
  Result := FNotSis;
end;

procedure T095FOR.SetNotSis(const pNotSis: Double);
begin
  FNotSis := pNotSis;

  CheckField('NotSis');
end;

function T095FOR.GetNotFor: Double;
begin
  Result := FNotFor;
end;

procedure T095FOR.SetNotFor(const pNotFor: Double);
begin
  FNotFor := pNotFor;

  CheckField('NotFor');
end;

function T095FOR.GetCodTri: string;
begin
  Result := FCodTri;
end;

procedure T095FOR.SetCodTri(const pCodTri: string);
begin
  FCodTri := pCodTri;

  CheckField('CodTri');
end;

function T095FOR.GetGerDir: Char;
begin
  Result := FGerDir;
end;

procedure T095FOR.SetGerDir(const pGerDir: Char);
begin
  FGerDir := pGerDir;

  CheckField('GerDir');
end;

function T095FOR.GetCliFor: Char;
begin
  Result := FCliFor;
end;

procedure T095FOR.SetCliFor(const pCliFor: Char);
begin
  FCliFor := pCliFor;

  CheckField('CliFor');
end;

function T095FOR.GetIdeFor: string;
begin
  Result := FIdeFor;
end;

procedure T095FOR.SetIdeFor(const pIdeFor: string);
begin
  FIdeFor := pIdeFor;

  CheckField('IdeFor');
end;

function T095FOR.GetQtdDep: Integer;
begin
  Result := FQtdDep;
end;

procedure T095FOR.SetQtdDep(const pQtdDep: Integer);
begin
  FQtdDep := pQtdDep;

  CheckField('QtdDep');
end;

function T095FOR.GetTemOrm: Char;
begin
  Result := FTemOrm;
end;

procedure T095FOR.SetTemOrm(const pTemOrm: Char);
begin
  FTemOrm := pTemOrm;

  CheckField('TemOrm');
end;

function T095FOR.GetRecPis: Char;
begin
  Result := FRecPis;
end;

procedure T095FOR.SetRecPis(const pRecPis: Char);
begin
  FRecPis := pRecPis;

  CheckField('RecPis');
end;

function T095FOR.GetPerPid: Double;
begin
  Result := FPerPid;
end;

procedure T095FOR.SetPerPid(const pPerPid: Double);
begin
  FPerPid := pPerPid;

  CheckField('PerPid');
end;

function T095FOR.GetTriIss: Char;
begin
  Result := FTriIss;
end;

procedure T095FOR.SetTriIss(const pTriIss: Char);
begin
  FTriIss := pTriIss;

  CheckField('TriIss');
end;

function T095FOR.GetIndExp: Integer;
begin
  Result := FIndExp;
end;

procedure T095FOR.SetIndExp(const pIndExp: Integer);
begin
  FIndExp := pIndExp;

  CheckField('IndExp');
end;

function T095FOR.GetDatPal: TDate;
begin
  Result := FDatPal;
end;

procedure T095FOR.SetDatPal(const pDatPal: TDate);
begin
  FDatPal := pDatPal;

  CheckField('DatPal');
end;

function T095FOR.GetHorPal: Integer;
begin
  Result := FHorPal;
end;

procedure T095FOR.SetHorPal(const pHorPal: Integer);
begin
  FHorPal := pHorPal;

  CheckField('HorPal');
end;

function T095FOR.GetNotAfo: Double;
begin
  Result := FNotAfo;
end;

procedure T095FOR.SetNotAfo(const pNotAfo: Double);
begin
  FNotAfo := pNotAfo;

  CheckField('NotAfo');
end;

function T095FOR.GetTipInt: Integer;
begin
  Result := FTipInt;
end;

procedure T095FOR.SetTipInt(const pTipInt: Integer);
begin
  FTipInt := pTipInt;

  CheckField('TipInt');
end;

function T095FOR.GetCodRoe: string;
begin
  Result := FCodRoe;
end;

procedure T095FOR.SetCodRoe(const pCodRoe: string);
begin
  FCodRoe := pCodRoe;

  CheckField('CodRoe');
end;

function T095FOR.GetSeqRoe: Integer;
begin
  Result := FSeqRoe;
end;

procedure T095FOR.SetSeqRoe(const pSeqRoe: Integer);
begin
  FSeqRoe := pSeqRoe;

  CheckField('SeqRoe');
end;

function T095FOR.GetRecCof: Char;
begin
  Result := FRecCof;
end;

procedure T095FOR.SetRecCof(const pRecCof: Char);
begin
  FRecCof := pRecCof;

  CheckField('RecCof');
end;

function T095FOR.GetPerCod: Double;
begin
  Result := FPerCod;
end;

procedure T095FOR.SetPerCod(const pPerCod: Double);
begin
  FPerCod := pPerCod;

  CheckField('PerCod');
end;

function T095FOR.GetRetCof: Char;
begin
  Result := FRetCof;
end;

procedure T095FOR.SetRetCof(const pRetCof: Char);
begin
  FRetCof := pRetCof;

  CheckField('RetCof');
end;

function T095FOR.GetRetCsl: Char;
begin
  Result := FRetCsl;
end;

procedure T095FOR.SetRetCsl(const pRetCsl: Char);
begin
  FRetCsl := pRetCsl;

  CheckField('RetCsl');
end;

function T095FOR.GetRetPis: Char;
begin
  Result := FRetPis;
end;

procedure T095FOR.SetRetPis(const pRetPis: Char);
begin
  FRetPis := pRetPis;

  CheckField('RetPis');
end;

function T095FOR.GetRetOur: Char;
begin
  Result := FRetOur;
end;

procedure T095FOR.SetRetOur(const pRetOur: Char);
begin
  FRetOur := pRetOur;

  CheckField('RetOur');
end;

function T095FOR.GetCodSro: string;
begin
  Result := FCodSro;
end;

procedure T095FOR.SetCodSro(const pCodSro: string);
begin
  FCodSro := pCodSro;

  CheckField('CodSro');
end;

function T095FOR.GetRecIpi: Char;
begin
  Result := FRecIpi;
end;

procedure T095FOR.SetRecIpi(const pRecIpi: Char);
begin
  FRecIpi := pRecIpi;

  CheckField('RecIpi');
end;

function T095FOR.GetRecIcm: Char;
begin
  Result := FRecIcm;
end;

procedure T095FOR.SetRecIcm(const pRecIcm: Char);
begin
  FRecIcm := pRecIcm;

  CheckField('RecIcm');
end;

function T095FOR.GetTriIcm: Char;
begin
  Result := FTriIcm;
end;

procedure T095FOR.SetTriIcm(const pTriIcm: Char);
begin
  FTriIcm := pTriIcm;

  CheckField('TriIcm');
end;

function T095FOR.GetTriIpi: Char;
begin
  Result := FTriIpi;
end;

procedure T095FOR.SetTriIpi(const pTriIpi: Char);
begin
  FTriIpi := pTriIpi;

  CheckField('TriIpi');
end;

function T095FOR.GetRetPro: Char;
begin
  Result := FRetPro;
end;

procedure T095FOR.SetRetPro(const pRetPro: Char);
begin
  FRetPro := pRetPro;

  CheckField('RetPro');
end;

function T095FOR.GetRetIrf: Char;
begin
  Result := FRetIrf;
end;

procedure T095FOR.SetRetIrf(const pRetIrf: Char);
begin
  FRetIrf := pRetIrf;

  CheckField('RetIrf');
end;

function T095FOR.GetIndFor: Char;
begin
  Result := FIndFor;
end;

procedure T095FOR.SetIndFor(const pIndFor: Char);
begin
  FIndFor := pIndFor;

  CheckField('IndFor');
end;

function T095FOR.GetLimRet: Char;
begin
  Result := FLimRet;
end;

procedure T095FOR.SetLimRet(const pLimRet: Char);
begin
  FLimRet := pLimRet;

  CheckField('LimRet');
end;

function T095FOR.GetEenFor: string;
begin
  Result := FEenFor;
end;

procedure T095FOR.SetEenFor(const pEenFor: string);
begin
  FEenFor := pEenFor;

  CheckField('EenFor');
end;

function T095FOR.GetNumRge: string;
begin
  Result := FNumRge;
end;

procedure T095FOR.SetNumRge(const pNumRge: string);
begin
  FNumRge := pNumRge;

  CheckField('NumRge');
end;

function T095FOR.GetForWms: string;
begin
  Result := FForWms;
end;

procedure T095FOR.SetForWms(const pForWms: string);
begin
  FForWms := pForWms;

  CheckField('ForWms');
end;

function T095FOR.GetPerRir: Double;
begin
  Result := FPerRir;
end;

procedure T095FOR.SetPerRir(const pPerRir: Double);
begin
  FPerRir := pPerRir;

  CheckField('PerRir');
end;

function T095FOR.GetPerRin: Double;
begin
  Result := FPerRin;
end;

procedure T095FOR.SetPerRin(const pPerRin: Double);
begin
  FPerRin := pPerRin;

  CheckField('PerRin');
end;

function T095FOR.GetNenFor: string;
begin
  Result := FNenFor;
end;

procedure T095FOR.SetNenFor(const pNenFor: string);
begin
  FNenFor := pNenFor;

  CheckField('NenFor');
end;

function T095FOR.GetEmaNfe: string;
begin
  Result := FEmaNfe;
end;

procedure T095FOR.SetEmaNfe(const pEmaNfe: string);
begin
  FEmaNfe := pEmaNfe;

  CheckField('EmaNfe');
end;

function T095FOR.GetInsAnp: Integer;
begin
  Result := FInsAnp;
end;

procedure T095FOR.SetInsAnp(const pInsAnp: Integer);
begin
  FInsAnp := pInsAnp;

  CheckField('InsAnp');
end;

function T095FOR.GetIndCoo: Char;
begin
  Result := FIndCoo;
end;

procedure T095FOR.SetIndCoo(const pIndCoo: Char);
begin
  FIndCoo := pIndCoo;

  CheckField('IndCoo');
end;

function T095FOR.GetCodRtr: Integer;
begin
  Result := FCodRtr;
end;

procedure T095FOR.SetCodRtr(const pCodRtr: Integer);
begin
  FCodRtr := pCodRtr;

  CheckField('CodRtr');
end;

function T095FOR.GetRegEst: Integer;
begin
  Result := FRegEst;
end;

procedure T095FOR.SetRegEst(const pRegEst: Integer);
begin
  FRegEst := pRegEst;

  CheckField('RegEst');
end;

function T095FOR.GetRotAnx: Integer;
begin
  Result := FRotAnx;
end;

procedure T095FOR.SetRotAnx(const pRotAnx: Integer);
begin
  FRotAnx := pRotAnx;

  CheckField('RotAnx');
end;

function T095FOR.GetNumAnx: Integer;
begin
  Result := FNumAnx;
end;

procedure T095FOR.SetNumAnx(const pNumAnx: Integer);
begin
  FNumAnx := pNumAnx;

  CheckField('NumAnx');
end;

function T095FOR.GetTipPgt: string;
begin
  Result := FTipPgt;
end;

procedure T095FOR.SetTipPgt(const pTipPgt: string);
begin
  FTipPgt := pTipPgt;

  CheckField('TipPgt');
end;

function T095FOR.GetPerIcm: Double;
begin
  Result := FPerIcm;
end;

procedure T095FOR.SetPerIcm(const pPerIcm: Double);
begin
  FPerIcm := pPerIcm;

  CheckField('PerIcm');
end;

function T095FOR.GetUSU_IndCol: Char;
begin
  Result := FUSU_IndCol;
end;

procedure T095FOR.SetUSU_IndCol(const pUSU_IndCol: Char);
begin
  FUSU_IndCol := pUSU_IndCol;

  CheckField('USU_IndCol');
end;

function T095FOR.GetUSU_CodMoe: string;
begin
  Result := FUSU_CodMoe;
end;

procedure T095FOR.SetUSU_CodMoe(const pUSU_CodMoe: string);
begin
  FUSU_CodMoe := pUSU_CodMoe;

  CheckField('USU_CodMoe');
end;

function T095FOR.GetUSU_RegExp: string;
begin
  Result := FUSU_RegExp;
end;

procedure T095FOR.SetUSU_RegExp(const pUSU_RegExp: string);
begin
  FUSU_RegExp := pUSU_RegExp;

  CheckField('USU_RegExp');
end;

function T095FOR.GetUSU_CodTip: string;
begin
  Result := FUSU_CodTip;
end;

procedure T095FOR.SetUSU_CodTip(const pUSU_CodTip: string);
begin
  FUSU_CodTip := pUSU_CodTip;

  CheckField('USU_CodTip');
end;

function T095FOR.GetUSU_VenAva: TDate;
begin
  Result := FUSU_VenAva;
end;

procedure T095FOR.SetUSU_VenAva(const pUSU_VenAva: TDate);
begin
  FUSU_VenAva := pUSU_VenAva;

  CheckField('USU_VenAva');
end;

function T095FOR.GetCodForOLD: Integer;
begin
  Result := FCodForOLD;
end;

procedure T095FOR.SetCodForOLD(const pCodFor: Integer);
begin
  FCodForOLD := pCodFor;
end;

function T095FOR.GetNomForOLD: string;
begin
  Result := FNomForOLD;
end;

procedure T095FOR.SetNomForOLD(const pNomFor: string);
begin
  FNomForOLD := pNomFor;
end;

function T095FOR.GetApeForOLD: string;
begin
  Result := FApeForOLD;
end;

procedure T095FOR.SetApeForOLD(const pApeFor: string);
begin
  FApeForOLD := pApeFor;
end;

function T095FOR.GetMarForOLD: string;
begin
  Result := FMarForOLD;
end;

procedure T095FOR.SetMarForOLD(const pMarFor: string);
begin
  FMarForOLD := pMarFor;
end;

function T095FOR.GetSenForOLD: string;
begin
  Result := FSenForOLD;
end;

procedure T095FOR.SetSenForOLD(const pSenFor: string);
begin
  FSenForOLD := pSenFor;
end;

function T095FOR.GetTipForOLD: Char;
begin
  Result := FTipForOLD;
end;

procedure T095FOR.SetTipForOLD(const pTipFor: Char);
begin
  FTipForOLD := pTipFor;
end;

function T095FOR.GetTipMerOLD: Char;
begin
  Result := FTipMerOLD;
end;

procedure T095FOR.SetTipMerOLD(const pTipMer: Char);
begin
  FTipMerOLD := pTipMer;
end;

function T095FOR.GetCodRamOLD: string;
begin
  Result := FCodRamOLD;
end;

procedure T095FOR.SetCodRamOLD(const pCodRam: string);
begin
  FCodRamOLD := pCodRam;
end;

function T095FOR.GetInsEstOLD: string;
begin
  Result := FInsEstOLD;
end;

procedure T095FOR.SetInsEstOLD(const pInsEst: string);
begin
  FInsEstOLD := pInsEst;
end;

function T095FOR.GetInsMunOLD: string;
begin
  Result := FInsMunOLD;
end;

procedure T095FOR.SetInsMunOLD(const pInsMun: string);
begin
  FInsMunOLD := pInsMun;
end;

function T095FOR.GetCgcCpfOLD: Double;
begin
  Result := FCgcCpfOLD;
end;

procedure T095FOR.SetCgcCpfOLD(const pCgcCpf: Double);
begin
  FCgcCpfOLD := pCgcCpf;
end;

function T095FOR.GetCodGreOLD: Integer;
begin
  Result := FCodGreOLD;
end;

procedure T095FOR.SetCodGreOLD(const pCodGre: Integer);
begin
  FCodGreOLD := pCodGre;
end;

function T095FOR.GetCodSufOLD: string;
begin
  Result := FCodSufOLD;
end;

procedure T095FOR.SetCodSufOLD(const pCodSuf: string);
begin
  FCodSufOLD := pCodSuf;
end;

function T095FOR.GetEndForOLD: string;
begin
  Result := FEndForOLD;
end;

procedure T095FOR.SetEndForOLD(const pEndFor: string);
begin
  FEndForOLD := pEndFor;
end;

function T095FOR.GetCplEndOLD: string;
begin
  Result := FCplEndOLD;
end;

procedure T095FOR.SetCplEndOLD(const pCplEnd: string);
begin
  FCplEndOLD := pCplEnd;
end;

function T095FOR.GetBaiForOLD: string;
begin
  Result := FBaiForOLD;
end;

procedure T095FOR.SetBaiForOLD(const pBaiFor: string);
begin
  FBaiForOLD := pBaiFor;
end;

function T095FOR.GetZipCodOLD: string;
begin
  Result := FZipCodOLD;
end;

procedure T095FOR.SetZipCodOLD(const pZipCod: string);
begin
  FZipCodOLD := pZipCod;
end;

function T095FOR.GetCepForOLD: Integer;
begin
  Result := FCepForOLD;
end;

procedure T095FOR.SetCepForOLD(const pCepFor: Integer);
begin
  FCepForOLD := pCepFor;
end;

function T095FOR.GetCepIniOLD: Integer;
begin
  Result := FCepIniOLD;
end;

procedure T095FOR.SetCepIniOLD(const pCepIni: Integer);
begin
  FCepIniOLD := pCepIni;
end;

function T095FOR.GetCidForOLD: string;
begin
  Result := FCidForOLD;
end;

procedure T095FOR.SetCidForOLD(const pCidFor: string);
begin
  FCidForOLD := pCidFor;
end;

function T095FOR.GetSigUfsOLD: string;
begin
  Result := FSigUfsOLD;
end;

procedure T095FOR.SetSigUfsOLD(const pSigUfs: string);
begin
  FSigUfsOLD := pSigUfs;
end;

function T095FOR.GetFonForOLD: string;
begin
  Result := FFonForOLD;
end;

procedure T095FOR.SetFonForOLD(const pFonFor: string);
begin
  FFonForOLD := pFonFor;
end;

function T095FOR.GetFonFo2OLD: string;
begin
  Result := FFonFo2OLD;
end;

procedure T095FOR.SetFonFo2OLD(const pFonFo2: string);
begin
  FFonFo2OLD := pFonFo2;
end;

function T095FOR.GetFonFo3OLD: string;
begin
  Result := FFonFo3OLD;
end;

procedure T095FOR.SetFonFo3OLD(const pFonFo3: string);
begin
  FFonFo3OLD := pFonFo3;
end;

function T095FOR.GetFaxForOLD: string;
begin
  Result := FFaxForOLD;
end;

procedure T095FOR.SetFaxForOLD(const pFaxFor: string);
begin
  FFaxForOLD := pFaxFor;
end;

function T095FOR.GetCxaPstOLD: Integer;
begin
  Result := FCxaPstOLD;
end;

procedure T095FOR.SetCxaPstOLD(const pCxaPst: Integer);
begin
  FCxaPstOLD := pCxaPst;
end;

function T095FOR.GetIntNetOLD: string;
begin
  Result := FIntNetOLD;
end;

procedure T095FOR.SetIntNetOLD(const pIntNet: string);
begin
  FIntNetOLD := pIntNet;
end;

function T095FOR.GetNomVenOLD: string;
begin
  Result := FNomVenOLD;
end;

procedure T095FOR.SetNomVenOLD(const pNomVen: string);
begin
  FNomVenOLD := pNomVen;
end;

function T095FOR.GetFonVenOLD: string;
begin
  Result := FFonVenOLD;
end;

procedure T095FOR.SetFonVenOLD(const pFonVen: string);
begin
  FFonVenOLD := pFonVen;
end;

function T095FOR.GetRmlVenOLD: Integer;
begin
  Result := FRmlVenOLD;
end;

procedure T095FOR.SetRmlVenOLD(const pRmlVen: Integer);
begin
  FRmlVenOLD := pRmlVen;
end;

function T095FOR.GetFaxVenOLD: string;
begin
  Result := FFaxVenOLD;
end;

procedure T095FOR.SetFaxVenOLD(const pFaxVen: string);
begin
  FFaxVenOLD := pFaxVen;
end;

function T095FOR.GetCodCliOLD: Integer;
begin
  Result := FCodCliOLD;
end;

procedure T095FOR.SetCodCliOLD(const pCodCli: Integer);
begin
  FCodCliOLD := pCodCli;
end;

function T095FOR.GetTipFavOLD: Char;
begin
  Result := FTipFavOLD;
end;

procedure T095FOR.SetTipFavOLD(const pTipFav: Char);
begin
  FTipFavOLD := pTipFav;
end;

function T095FOR.GetCodIacOLD: Integer;
begin
  Result := FCodIacOLD;
end;

procedure T095FOR.SetCodIacOLD(const pCodIac: Integer);
begin
  FCodIacOLD := pCodIac;
end;

function T095FOR.GetAbrIacOLD: string;
begin
  Result := FAbrIacOLD;
end;

procedure T095FOR.SetAbrIacOLD(const pAbrIac: string);
begin
  FAbrIacOLD := pAbrIac;
end;

function T095FOR.GetIndBspOLD: Char;
begin
  Result := FIndBspOLD;
end;

procedure T095FOR.SetIndBspOLD(const pIndBsp: Char);
begin
  FIndBspOLD := pIndBsp;
end;

function T095FOR.GetCodAmaOLD: string;
begin
  Result := FCodAmaOLD;
end;

procedure T095FOR.SetCodAmaOLD(const pCodAma: string);
begin
  FCodAmaOLD := pCodAma;
end;

function T095FOR.GetCodSabOLD: string;
begin
  Result := FCodSabOLD;
end;

procedure T095FOR.SetCodSabOLD(const pCodSab: string);
begin
  FCodSabOLD := pCodSab;
end;

function T095FOR.GetCodGalOLD: string;
begin
  Result := FCodGalOLD;
end;

procedure T095FOR.SetCodGalOLD(const pCodGal: string);
begin
  FCodGalOLD := pCodGal;
end;

function T095FOR.GetTipMhoOLD: Char;
begin
  Result := FTipMhoOLD;
end;

procedure T095FOR.SetTipMhoOLD(const pTipMho: Char);
begin
  FTipMhoOLD := pTipMho;
end;

function T095FOR.GetCodCthOLD: string;
begin
  Result := FCodCthOLD;
end;

procedure T095FOR.SetCodCthOLD(const pCodCth: string);
begin
  FCodCthOLD := pCodCth;
end;

function T095FOR.GetUsuCadOLD: Integer;
begin
  Result := FUsuCadOLD;
end;

procedure T095FOR.SetUsuCadOLD(const pUsuCad: Integer);
begin
  FUsuCadOLD := pUsuCad;
end;

function T095FOR.GetDatCadOLD: TDate;
begin
  Result := FDatCadOLD;
end;

procedure T095FOR.SetDatCadOLD(const pDatCad: TDate);
begin
  FDatCadOLD := pDatCad;
end;

function T095FOR.GetHorCadOLD: Integer;
begin
  Result := FHorCadOLD;
end;

procedure T095FOR.SetHorCadOLD(const pHorCad: Integer);
begin
  FHorCadOLD := pHorCad;
end;

function T095FOR.GetUsuAtuOLD: Integer;
begin
  Result := FUsuAtuOLD;
end;

procedure T095FOR.SetUsuAtuOLD(const pUsuAtu: Integer);
begin
  FUsuAtuOLD := pUsuAtu;
end;

function T095FOR.GetDatAtuOLD: TDate;
begin
  Result := FDatAtuOLD;
end;

procedure T095FOR.SetDatAtuOLD(const pDatAtu: TDate);
begin
  FDatAtuOLD := pDatAtu;
end;

function T095FOR.GetHorAtuOLD: Integer;
begin
  Result := FHorAtuOLD;
end;

procedure T095FOR.SetHorAtuOLD(const pHorAtu: Integer);
begin
  FHorAtuOLD := pHorAtu;
end;

function T095FOR.GetSitForOLD: Char;
begin
  Result := FSitForOLD;
end;

procedure T095FOR.SetSitForOLD(const pSitFor: Char);
begin
  FSitForOLD := pSitFor;
end;

function T095FOR.GetCodMotOLD: Integer;
begin
  Result := FCodMotOLD;
end;

procedure T095FOR.SetCodMotOLD(const pCodMot: Integer);
begin
  FCodMotOLD := pCodMot;
end;

function T095FOR.GetObsMotOLD: string;
begin
  Result := FObsMotOLD;
end;

procedure T095FOR.SetObsMotOLD(const pObsMot: string);
begin
  FObsMotOLD := pObsMot;
end;

function T095FOR.GetUsuMotOLD: Integer;
begin
  Result := FUsuMotOLD;
end;

procedure T095FOR.SetUsuMotOLD(const pUsuMot: Integer);
begin
  FUsuMotOLD := pUsuMot;
end;

function T095FOR.GetDatMotOLD: TDate;
begin
  Result := FDatMotOLD;
end;

procedure T095FOR.SetDatMotOLD(const pDatMot: TDate);
begin
  FDatMotOLD := pDatMot;
end;

function T095FOR.GetHorMotOLD: Integer;
begin
  Result := FHorMotOLD;
end;

procedure T095FOR.SetHorMotOLD(const pHorMot: Integer);
begin
  FHorMotOLD := pHorMot;
end;

function T095FOR.GetCodPaiOLD: string;
begin
  Result := FCodPaiOLD;
end;

procedure T095FOR.SetCodPaiOLD(const pCodPai: string);
begin
  FCodPaiOLD := pCodPai;
end;

function T095FOR.GetForRepOLD: Integer;
begin
  Result := FForRepOLD;
end;

procedure T095FOR.SetForRepOLD(const pForRep: Integer);
begin
  FForRepOLD := pForRep;
end;

function T095FOR.GetForTraOLD: Integer;
begin
  Result := FForTraOLD;
end;

procedure T095FOR.SetForTraOLD(const pForTra: Integer);
begin
  FForTraOLD := pForTra;
end;

function T095FOR.GetNotSisOLD: Double;
begin
  Result := FNotSisOLD;
end;

procedure T095FOR.SetNotSisOLD(const pNotSis: Double);
begin
  FNotSisOLD := pNotSis;
end;

function T095FOR.GetNotForOLD: Double;
begin
  Result := FNotForOLD;
end;

procedure T095FOR.SetNotForOLD(const pNotFor: Double);
begin
  FNotForOLD := pNotFor;
end;

function T095FOR.GetCodTriOLD: string;
begin
  Result := FCodTriOLD;
end;

procedure T095FOR.SetCodTriOLD(const pCodTri: string);
begin
  FCodTriOLD := pCodTri;
end;

function T095FOR.GetGerDirOLD: Char;
begin
  Result := FGerDirOLD;
end;

procedure T095FOR.SetGerDirOLD(const pGerDir: Char);
begin
  FGerDirOLD := pGerDir;
end;

function T095FOR.GetCliForOLD: Char;
begin
  Result := FCliForOLD;
end;

procedure T095FOR.SetCliForOLD(const pCliFor: Char);
begin
  FCliForOLD := pCliFor;
end;

function T095FOR.GetIdeForOLD: string;
begin
  Result := FIdeForOLD;
end;

procedure T095FOR.SetIdeForOLD(const pIdeFor: string);
begin
  FIdeForOLD := pIdeFor;
end;

function T095FOR.GetQtdDepOLD: Integer;
begin
  Result := FQtdDepOLD;
end;

procedure T095FOR.SetQtdDepOLD(const pQtdDep: Integer);
begin
  FQtdDepOLD := pQtdDep;
end;

function T095FOR.GetTemOrmOLD: Char;
begin
  Result := FTemOrmOLD;
end;

procedure T095FOR.SetTemOrmOLD(const pTemOrm: Char);
begin
  FTemOrmOLD := pTemOrm;
end;

function T095FOR.GetRecPisOLD: Char;
begin
  Result := FRecPisOLD;
end;

procedure T095FOR.SetRecPisOLD(const pRecPis: Char);
begin
  FRecPisOLD := pRecPis;
end;

function T095FOR.GetPerPidOLD: Double;
begin
  Result := FPerPidOLD;
end;

procedure T095FOR.SetPerPidOLD(const pPerPid: Double);
begin
  FPerPidOLD := pPerPid;
end;

function T095FOR.GetTriIssOLD: Char;
begin
  Result := FTriIssOLD;
end;

procedure T095FOR.SetTriIssOLD(const pTriIss: Char);
begin
  FTriIssOLD := pTriIss;
end;

function T095FOR.GetIndExpOLD: Integer;
begin
  Result := FIndExpOLD;
end;

procedure T095FOR.SetIndExpOLD(const pIndExp: Integer);
begin
  FIndExpOLD := pIndExp;
end;

function T095FOR.GetDatPalOLD: TDate;
begin
  Result := FDatPalOLD;
end;

procedure T095FOR.SetDatPalOLD(const pDatPal: TDate);
begin
  FDatPalOLD := pDatPal;
end;

function T095FOR.GetHorPalOLD: Integer;
begin
  Result := FHorPalOLD;
end;

procedure T095FOR.SetHorPalOLD(const pHorPal: Integer);
begin
  FHorPalOLD := pHorPal;
end;

function T095FOR.GetNotAfoOLD: Double;
begin
  Result := FNotAfoOLD;
end;

procedure T095FOR.SetNotAfoOLD(const pNotAfo: Double);
begin
  FNotAfoOLD := pNotAfo;
end;

function T095FOR.GetTipIntOLD: Integer;
begin
  Result := FTipIntOLD;
end;

procedure T095FOR.SetTipIntOLD(const pTipInt: Integer);
begin
  FTipIntOLD := pTipInt;
end;

function T095FOR.GetCodRoeOLD: string;
begin
  Result := FCodRoeOLD;
end;

procedure T095FOR.SetCodRoeOLD(const pCodRoe: string);
begin
  FCodRoeOLD := pCodRoe;
end;

function T095FOR.GetSeqRoeOLD: Integer;
begin
  Result := FSeqRoeOLD;
end;

procedure T095FOR.SetSeqRoeOLD(const pSeqRoe: Integer);
begin
  FSeqRoeOLD := pSeqRoe;
end;

function T095FOR.GetRecCofOLD: Char;
begin
  Result := FRecCofOLD;
end;

procedure T095FOR.SetRecCofOLD(const pRecCof: Char);
begin
  FRecCofOLD := pRecCof;
end;

function T095FOR.GetPerCodOLD: Double;
begin
  Result := FPerCodOLD;
end;

procedure T095FOR.SetPerCodOLD(const pPerCod: Double);
begin
  FPerCodOLD := pPerCod;
end;

function T095FOR.GetRetCofOLD: Char;
begin
  Result := FRetCofOLD;
end;

procedure T095FOR.SetRetCofOLD(const pRetCof: Char);
begin
  FRetCofOLD := pRetCof;
end;

function T095FOR.GetRetCslOLD: Char;
begin
  Result := FRetCslOLD;
end;

procedure T095FOR.SetRetCslOLD(const pRetCsl: Char);
begin
  FRetCslOLD := pRetCsl;
end;

function T095FOR.GetRetPisOLD: Char;
begin
  Result := FRetPisOLD;
end;

procedure T095FOR.SetRetPisOLD(const pRetPis: Char);
begin
  FRetPisOLD := pRetPis;
end;

function T095FOR.GetRetOurOLD: Char;
begin
  Result := FRetOurOLD;
end;

procedure T095FOR.SetRetOurOLD(const pRetOur: Char);
begin
  FRetOurOLD := pRetOur;
end;

function T095FOR.GetCodSroOLD: string;
begin
  Result := FCodSroOLD;
end;

procedure T095FOR.SetCodSroOLD(const pCodSro: string);
begin
  FCodSroOLD := pCodSro;
end;

function T095FOR.GetRecIpiOLD: Char;
begin
  Result := FRecIpiOLD;
end;

procedure T095FOR.SetRecIpiOLD(const pRecIpi: Char);
begin
  FRecIpiOLD := pRecIpi;
end;

function T095FOR.GetRecIcmOLD: Char;
begin
  Result := FRecIcmOLD;
end;

procedure T095FOR.SetRecIcmOLD(const pRecIcm: Char);
begin
  FRecIcmOLD := pRecIcm;
end;

function T095FOR.GetTriIcmOLD: Char;
begin
  Result := FTriIcmOLD;
end;

procedure T095FOR.SetTriIcmOLD(const pTriIcm: Char);
begin
  FTriIcmOLD := pTriIcm;
end;

function T095FOR.GetTriIpiOLD: Char;
begin
  Result := FTriIpiOLD;
end;

procedure T095FOR.SetTriIpiOLD(const pTriIpi: Char);
begin
  FTriIpiOLD := pTriIpi;
end;

function T095FOR.GetRetProOLD: Char;
begin
  Result := FRetProOLD;
end;

procedure T095FOR.SetRetProOLD(const pRetPro: Char);
begin
  FRetProOLD := pRetPro;
end;

function T095FOR.GetRetIrfOLD: Char;
begin
  Result := FRetIrfOLD;
end;

procedure T095FOR.SetRetIrfOLD(const pRetIrf: Char);
begin
  FRetIrfOLD := pRetIrf;
end;

function T095FOR.GetIndForOLD: Char;
begin
  Result := FIndForOLD;
end;

procedure T095FOR.SetIndForOLD(const pIndFor: Char);
begin
  FIndForOLD := pIndFor;
end;

function T095FOR.GetLimRetOLD: Char;
begin
  Result := FLimRetOLD;
end;

procedure T095FOR.SetLimRetOLD(const pLimRet: Char);
begin
  FLimRetOLD := pLimRet;
end;

function T095FOR.GetEenForOLD: string;
begin
  Result := FEenForOLD;
end;

procedure T095FOR.SetEenForOLD(const pEenFor: string);
begin
  FEenForOLD := pEenFor;
end;

function T095FOR.GetNumRgeOLD: string;
begin
  Result := FNumRgeOLD;
end;

procedure T095FOR.SetNumRgeOLD(const pNumRge: string);
begin
  FNumRgeOLD := pNumRge;
end;

function T095FOR.GetForWmsOLD: string;
begin
  Result := FForWmsOLD;
end;

procedure T095FOR.SetForWmsOLD(const pForWms: string);
begin
  FForWmsOLD := pForWms;
end;

function T095FOR.GetPerRirOLD: Double;
begin
  Result := FPerRirOLD;
end;

procedure T095FOR.SetPerRirOLD(const pPerRir: Double);
begin
  FPerRirOLD := pPerRir;
end;

function T095FOR.GetPerRinOLD: Double;
begin
  Result := FPerRinOLD;
end;

procedure T095FOR.SetPerRinOLD(const pPerRin: Double);
begin
  FPerRinOLD := pPerRin;
end;

function T095FOR.GetNenForOLD: string;
begin
  Result := FNenForOLD;
end;

procedure T095FOR.SetNenForOLD(const pNenFor: string);
begin
  FNenForOLD := pNenFor;
end;

function T095FOR.GetEmaNfeOLD: string;
begin
  Result := FEmaNfeOLD;
end;

procedure T095FOR.SetEmaNfeOLD(const pEmaNfe: string);
begin
  FEmaNfeOLD := pEmaNfe;
end;

function T095FOR.GetInsAnpOLD: Integer;
begin
  Result := FInsAnpOLD;
end;

procedure T095FOR.SetInsAnpOLD(const pInsAnp: Integer);
begin
  FInsAnpOLD := pInsAnp;
end;

function T095FOR.GetIndCooOLD: Char;
begin
  Result := FIndCooOLD;
end;

procedure T095FOR.SetIndCooOLD(const pIndCoo: Char);
begin
  FIndCooOLD := pIndCoo;
end;

function T095FOR.GetCodRtrOLD: Integer;
begin
  Result := FCodRtrOLD;
end;

procedure T095FOR.SetCodRtrOLD(const pCodRtr: Integer);
begin
  FCodRtrOLD := pCodRtr;
end;

function T095FOR.GetRegEstOLD: Integer;
begin
  Result := FRegEstOLD;
end;

procedure T095FOR.SetRegEstOLD(const pRegEst: Integer);
begin
  FRegEstOLD := pRegEst;
end;

function T095FOR.GetRotAnxOLD: Integer;
begin
  Result := FRotAnxOLD;
end;

procedure T095FOR.SetRotAnxOLD(const pRotAnx: Integer);
begin
  FRotAnxOLD := pRotAnx;
end;

function T095FOR.GetNumAnxOLD: Integer;
begin
  Result := FNumAnxOLD;
end;

procedure T095FOR.SetNumAnxOLD(const pNumAnx: Integer);
begin
  FNumAnxOLD := pNumAnx;
end;

function T095FOR.GetTipPgtOLD: string;
begin
  Result := FTipPgtOLD;
end;

procedure T095FOR.SetTipPgtOLD(const pTipPgt: string);
begin
  FTipPgtOLD := pTipPgt;
end;

function T095FOR.GetPerIcmOLD: Double;
begin
  Result := FPerIcmOLD;
end;

procedure T095FOR.SetPerIcmOLD(const pPerIcm: Double);
begin
  FPerIcmOLD := pPerIcm;
end;

function T095FOR.GetUSU_IndColOLD: Char;
begin
  Result := FUSU_IndColOLD;
end;

procedure T095FOR.SetUSU_IndColOLD(const pUSU_IndCol: Char);
begin
  FUSU_IndColOLD := pUSU_IndCol;
end;

function T095FOR.GetUSU_CodMoeOLD: string;
begin
  Result := FUSU_CodMoeOLD;
end;

procedure T095FOR.SetUSU_CodMoeOLD(const pUSU_CodMoe: string);
begin
  FUSU_CodMoeOLD := pUSU_CodMoe;
end;

function T095FOR.GetUSU_RegExpOLD: string;
begin
  Result := FUSU_RegExpOLD;
end;

procedure T095FOR.SetUSU_RegExpOLD(const pUSU_RegExp: string);
begin
  FUSU_RegExpOLD := pUSU_RegExp;
end;

function T095FOR.GetUSU_CodTipOLD: string;
begin
  Result := FUSU_CodTipOLD;
end;

procedure T095FOR.SetUSU_CodTipOLD(const pUSU_CodTip: string);
begin
  FUSU_CodTipOLD := pUSU_CodTip;
end;

function T095FOR.GetUSU_VenAvaOLD: TDate;
begin
  Result := FUSU_VenAvaOLD;
end;

procedure T095FOR.SetUSU_VenAvaOLD(const pUSU_VenAva: TDate);
begin
  FUSU_VenAvaOLD := pUSU_VenAva;
end;

procedure T095FOR.Registros_OLD();
begin
  FCodForOLD := FCodFor;
  FNomForOLD := FNomFor;
  FApeForOLD := FApeFor;
  FMarForOLD := FMarFor;
  FSenForOLD := FSenFor;
  FTipForOLD := FTipFor;
  FTipMerOLD := FTipMer;
  FCodRamOLD := FCodRam;
  FInsEstOLD := FInsEst;
  FInsMunOLD := FInsMun;
  FCgcCpfOLD := FCgcCpf;
  FCodGreOLD := FCodGre;
  FCodSufOLD := FCodSuf;
  FEndForOLD := FEndFor;
  FCplEndOLD := FCplEnd;
  FBaiForOLD := FBaiFor;
  FZipCodOLD := FZipCod;
  FCepForOLD := FCepFor;
  FCepIniOLD := FCepIni;
  FCidForOLD := FCidFor;
  FSigUfsOLD := FSigUfs;
  FFonForOLD := FFonFor;
  FFonFo2OLD := FFonFo2;
  FFonFo3OLD := FFonFo3;
  FFaxForOLD := FFaxFor;
  FCxaPstOLD := FCxaPst;
  FIntNetOLD := FIntNet;
  FNomVenOLD := FNomVen;
  FFonVenOLD := FFonVen;
  FRmlVenOLD := FRmlVen;
  FFaxVenOLD := FFaxVen;
  FCodCliOLD := FCodCli;
  FTipFavOLD := FTipFav;
  FCodIacOLD := FCodIac;
  FAbrIacOLD := FAbrIac;
  FIndBspOLD := FIndBsp;
  FCodAmaOLD := FCodAma;
  FCodSabOLD := FCodSab;
  FCodGalOLD := FCodGal;
  FTipMhoOLD := FTipMho;
  FCodCthOLD := FCodCth;
  FUsuCadOLD := FUsuCad;
  FDatCadOLD := FDatCad;
  FHorCadOLD := FHorCad;
  FUsuAtuOLD := FUsuAtu;
  FDatAtuOLD := FDatAtu;
  FHorAtuOLD := FHorAtu;
  FSitForOLD := FSitFor;
  FCodMotOLD := FCodMot;
  FObsMotOLD := FObsMot;
  FUsuMotOLD := FUsuMot;
  FDatMotOLD := FDatMot;
  FHorMotOLD := FHorMot;
  FCodPaiOLD := FCodPai;
  FForRepOLD := FForRep;
  FForTraOLD := FForTra;
  FNotSisOLD := FNotSis;
  FNotForOLD := FNotFor;
  FCodTriOLD := FCodTri;
  FGerDirOLD := FGerDir;
  FCliForOLD := FCliFor;
  FIdeForOLD := FIdeFor;
  FQtdDepOLD := FQtdDep;
  FTemOrmOLD := FTemOrm;
  FRecPisOLD := FRecPis;
  FPerPidOLD := FPerPid;
  FTriIssOLD := FTriIss;
  FIndExpOLD := FIndExp;
  FDatPalOLD := FDatPal;
  FHorPalOLD := FHorPal;
  FNotAfoOLD := FNotAfo;
  FTipIntOLD := FTipInt;
  FCodRoeOLD := FCodRoe;
  FSeqRoeOLD := FSeqRoe;
  FRecCofOLD := FRecCof;
  FPerCodOLD := FPerCod;
  FRetCofOLD := FRetCof;
  FRetCslOLD := FRetCsl;
  FRetPisOLD := FRetPis;
  FRetOurOLD := FRetOur;
  FCodSroOLD := FCodSro;
  FRecIpiOLD := FRecIpi;
  FRecIcmOLD := FRecIcm;
  FTriIcmOLD := FTriIcm;
  FTriIpiOLD := FTriIpi;
  FRetProOLD := FRetPro;
  FRetIrfOLD := FRetIrf;
  FIndForOLD := FIndFor;
  FLimRetOLD := FLimRet;
  FEenForOLD := FEenFor;
  FNumRgeOLD := FNumRge;
  FForWmsOLD := FForWms;
  FPerRirOLD := FPerRir;
  FPerRinOLD := FPerRin;
  FNenForOLD := FNenFor;
  FEmaNfeOLD := FEmaNfe;
  FInsAnpOLD := FInsAnp;
  FIndCooOLD := FIndCoo;
  FCodRtrOLD := FCodRtr;
  FRegEstOLD := FRegEst;
  FRotAnxOLD := FRotAnx;
  FNumAnxOLD := FNumAnx;
  FTipPgtOLD := FTipPgt;
  FPerIcmOLD := FPerIcm;
  FUSU_IndColOLD := FUSU_IndCol;
  FUSU_CodMoeOLD := FUSU_CodMoe;
  FUSU_RegExpOLD := FUSU_RegExp;
  FUSU_CodTipOLD := FUSU_CodTip;
  FUSU_VenAvaOLD := FUSU_VenAva;

  inherited;
end;

procedure T095FOR.RetornarValores();
begin
  FCodFor := FCodForOLD;
  FNomFor := FNomForOLD;
  FApeFor := FApeForOLD;
  FMarFor := FMarForOLD;
  FSenFor := FSenForOLD;
  FTipFor := FTipForOLD;
  FTipMer := FTipMerOLD;
  FCodRam := FCodRamOLD;
  FInsEst := FInsEstOLD;
  FInsMun := FInsMunOLD;
  FCgcCpf := FCgcCpfOLD;
  FCodGre := FCodGreOLD;
  FCodSuf := FCodSufOLD;
  FEndFor := FEndForOLD;
  FCplEnd := FCplEndOLD;
  FBaiFor := FBaiForOLD;
  FZipCod := FZipCodOLD;
  FCepFor := FCepForOLD;
  FCepIni := FCepIniOLD;
  FCidFor := FCidForOLD;
  FSigUfs := FSigUfsOLD;
  FFonFor := FFonForOLD;
  FFonFo2 := FFonFo2OLD;
  FFonFo3 := FFonFo3OLD;
  FFaxFor := FFaxForOLD;
  FCxaPst := FCxaPstOLD;
  FIntNet := FIntNetOLD;
  FNomVen := FNomVenOLD;
  FFonVen := FFonVenOLD;
  FRmlVen := FRmlVenOLD;
  FFaxVen := FFaxVenOLD;
  FCodCli := FCodCliOLD;
  FTipFav := FTipFavOLD;
  FCodIac := FCodIacOLD;
  FAbrIac := FAbrIacOLD;
  FIndBsp := FIndBspOLD;
  FCodAma := FCodAmaOLD;
  FCodSab := FCodSabOLD;
  FCodGal := FCodGalOLD;
  FTipMho := FTipMhoOLD;
  FCodCth := FCodCthOLD;
  FUsuCad := FUsuCadOLD;
  FDatCad := FDatCadOLD;
  FHorCad := FHorCadOLD;
  FUsuAtu := FUsuAtuOLD;
  FDatAtu := FDatAtuOLD;
  FHorAtu := FHorAtuOLD;
  FSitFor := FSitForOLD;
  FCodMot := FCodMotOLD;
  FObsMot := FObsMotOLD;
  FUsuMot := FUsuMotOLD;
  FDatMot := FDatMotOLD;
  FHorMot := FHorMotOLD;
  FCodPai := FCodPaiOLD;
  FForRep := FForRepOLD;
  FForTra := FForTraOLD;
  FNotSis := FNotSisOLD;
  FNotFor := FNotForOLD;
  FCodTri := FCodTriOLD;
  FGerDir := FGerDirOLD;
  FCliFor := FCliForOLD;
  FIdeFor := FIdeForOLD;
  FQtdDep := FQtdDepOLD;
  FTemOrm := FTemOrmOLD;
  FRecPis := FRecPisOLD;
  FPerPid := FPerPidOLD;
  FTriIss := FTriIssOLD;
  FIndExp := FIndExpOLD;
  FDatPal := FDatPalOLD;
  FHorPal := FHorPalOLD;
  FNotAfo := FNotAfoOLD;
  FTipInt := FTipIntOLD;
  FCodRoe := FCodRoeOLD;
  FSeqRoe := FSeqRoeOLD;
  FRecCof := FRecCofOLD;
  FPerCod := FPerCodOLD;
  FRetCof := FRetCofOLD;
  FRetCsl := FRetCslOLD;
  FRetPis := FRetPisOLD;
  FRetOur := FRetOurOLD;
  FCodSro := FCodSroOLD;
  FRecIpi := FRecIpiOLD;
  FRecIcm := FRecIcmOLD;
  FTriIcm := FTriIcmOLD;
  FTriIpi := FTriIpiOLD;
  FRetPro := FRetProOLD;
  FRetIrf := FRetIrfOLD;
  FIndFor := FIndForOLD;
  FLimRet := FLimRetOLD;
  FEenFor := FEenForOLD;
  FNumRge := FNumRgeOLD;
  FForWms := FForWmsOLD;
  FPerRir := FPerRirOLD;
  FPerRin := FPerRinOLD;
  FNenFor := FNenForOLD;
  FEmaNfe := FEmaNfeOLD;
  FInsAnp := FInsAnpOLD;
  FIndCoo := FIndCooOLD;
  FCodRtr := FCodRtrOLD;
  FRegEst := FRegEstOLD;
  FRotAnx := FRotAnxOLD;
  FNumAnx := FNumAnxOLD;
  FTipPgt := FTipPgtOLD;
  FPerIcm := FPerIcmOLD;
  FUSU_IndCol := FUSU_IndColOLD;
  FUSU_CodMoe := FUSU_CodMoeOLD;
  FUSU_RegExp := FUSU_RegExpOLD;
  FUSU_CodTip := FUSU_CodTipOLD;
  FUSU_VenAva := FUSU_VenAvaOLD;
end;

end.
