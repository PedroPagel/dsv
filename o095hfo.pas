unit o095hfo;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T095HFO = class(TTabelaPadrao)
  private
    FCodFor: Integer;
    FCodEmp: Integer;
    FCodFil: Integer;
    FSalDup: Double;
    FSalOut: Double;
    FSalCre: Double;
    FDatUpe: TDate;
    FVlrUpe: Double;
    FDatUcp: TDate;
    FVlrUcp: Double;
    FDatMcp: TDate;
    FVlrMcp: Double;
    FDatUpg: TDate;
    FVlrUpg: Double;
    FQtdPgt: Integer;
    FDatAtr: TDate;
    FVlrAtr: Double;
    FMaiAtr: Integer;
    FMedAtr: Integer;
    FPrzEnt: Integer;
    FCprCql: Integer;
    FCprCpe: Integer;
    FCprCat: Integer;
    FCodTpr: string;
    FCodCpg: string;
    FCodFpg: Integer;
    FQtdDcv: Integer;
    FCriEdv: Char;
    FCodTra: Integer;
    FCodPor: string;
    FCodCrt: string;
    FCodBan: string;
    FCodAge: string;
    FCcbFor: string;
    FCodCrp: string;
    FUltDup: Integer;
    FPagJmm: Double;
    FPagTir: Char;
    FPagDtj: Integer;
    FPagMul: Double;
    FPagDtm: Integer;
    FPerDsc: Double;
    FTolDsc: Integer;
    FAntDsc: Char;
    FPagEev: Integer;
    FPerDs1: Double;
    FPerDs2: Double;
    FPerDs3: Double;
    FPerDs4: Double;
    FPerDs5: Double;
    FPerFun: Double;
    FPerIns: Double;
    FIndInd: Char;
    FCriRat: Integer;
    FCtaRed: Integer;
    FCtaRcr: Integer;
    FCtaFdv: Integer;
    FCtaFcr: Integer;
    FCtaAux: Integer;
    FCtaAad: Integer;
    FConEst: Char;
    FPerFre: Double;
    FPerSeg: Double;
    FPerEmb: Double;
    FPerEnc: Double;
    FPerOut: Double;
    FPerIss: Double;
    FPerIrf: Double;
    FSeqOrm: Integer;
    FCifFob: Char;
    FCodFav: Integer;
    FPerIne: Double;
    FRvlCfr: Char;
    FRvlFre: Char;
    FRvlSeg: Char;
    FRvlEmb: Char;
    FRvlEnc: Char;
    FRvlOut: Char;
    FRvlDar: Char;
    FRvlFei: Char;
    FRvlSei: Char;
    FRvlOui: Char;
    FCodDep: string;
    FUsuGer: Integer;
    FDatGer: TDate;
    FHorGer: Integer;
    FUsuAlt: Integer;
    FDatAlt: TDate;
    FHorAlt: Integer;
    FForMon: Char;
    FSerCur: string;
    FPgtMon: string;
    FPgtFre: string;
    FTnsPro: string;
    FTnsSer: string;
    FCodEdc: string;
    FUSU_DiaEsp1: Integer;
    FUSU_DiaEsp2: Integer;
    FUSU_ConAva: Char;
    FUSU_BocPre: Char;

    FCodForOLD: Integer;
    FCodEmpOLD: Integer;
    FCodFilOLD: Integer;
    FSalDupOLD: Double;
    FSalOutOLD: Double;
    FSalCreOLD: Double;
    FDatUpeOLD: TDate;
    FVlrUpeOLD: Double;
    FDatUcpOLD: TDate;
    FVlrUcpOLD: Double;
    FDatMcpOLD: TDate;
    FVlrMcpOLD: Double;
    FDatUpgOLD: TDate;
    FVlrUpgOLD: Double;
    FQtdPgtOLD: Integer;
    FDatAtrOLD: TDate;
    FVlrAtrOLD: Double;
    FMaiAtrOLD: Integer;
    FMedAtrOLD: Integer;
    FPrzEntOLD: Integer;
    FCprCqlOLD: Integer;
    FCprCpeOLD: Integer;
    FCprCatOLD: Integer;
    FCodTprOLD: string;
    FCodCpgOLD: string;
    FCodFpgOLD: Integer;
    FQtdDcvOLD: Integer;
    FCriEdvOLD: Char;
    FCodTraOLD: Integer;
    FCodPorOLD: string;
    FCodCrtOLD: string;
    FCodBanOLD: string;
    FCodAgeOLD: string;
    FCcbForOLD: string;
    FCodCrpOLD: string;
    FUltDupOLD: Integer;
    FPagJmmOLD: Double;
    FPagTirOLD: Char;
    FPagDtjOLD: Integer;
    FPagMulOLD: Double;
    FPagDtmOLD: Integer;
    FPerDscOLD: Double;
    FTolDscOLD: Integer;
    FAntDscOLD: Char;
    FPagEevOLD: Integer;
    FPerDs1OLD: Double;
    FPerDs2OLD: Double;
    FPerDs3OLD: Double;
    FPerDs4OLD: Double;
    FPerDs5OLD: Double;
    FPerFunOLD: Double;
    FPerInsOLD: Double;
    FIndIndOLD: Char;
    FCriRatOLD: Integer;
    FCtaRedOLD: Integer;
    FCtaRcrOLD: Integer;
    FCtaFdvOLD: Integer;
    FCtaFcrOLD: Integer;
    FCtaAuxOLD: Integer;
    FCtaAadOLD: Integer;
    FConEstOLD: Char;
    FPerFreOLD: Double;
    FPerSegOLD: Double;
    FPerEmbOLD: Double;
    FPerEncOLD: Double;
    FPerOutOLD: Double;
    FPerIssOLD: Double;
    FPerIrfOLD: Double;
    FSeqOrmOLD: Integer;
    FCifFobOLD: Char;
    FCodFavOLD: Integer;
    FPerIneOLD: Double;
    FRvlCfrOLD: Char;
    FRvlFreOLD: Char;
    FRvlSegOLD: Char;
    FRvlEmbOLD: Char;
    FRvlEncOLD: Char;
    FRvlOutOLD: Char;
    FRvlDarOLD: Char;
    FRvlFeiOLD: Char;
    FRvlSeiOLD: Char;
    FRvlOuiOLD: Char;
    FCodDepOLD: string;
    FUsuGerOLD: Integer;
    FDatGerOLD: TDate;
    FHorGerOLD: Integer;
    FUsuAltOLD: Integer;
    FDatAltOLD: TDate;
    FHorAltOLD: Integer;
    FForMonOLD: Char;
    FSerCurOLD: string;
    FPgtMonOLD: string;
    FPgtFreOLD: string;
    FTnsProOLD: string;
    FTnsSerOLD: string;
    FCodEdcOLD: string;
    FUSU_DiaEsp1OLD: Integer;
    FUSU_DiaEsp2OLD: Integer;
    FUSU_ConAvaOLD: Char;
    FUSU_BocPreOLD: Char;

    function GetCodFor: Integer;
    procedure SetCodFor(const pCodFor: Integer);
    function GetCodEmp: Integer;
    procedure SetCodEmp(const pCodEmp: Integer);
    function GetCodFil: Integer;
    procedure SetCodFil(const pCodFil: Integer);
    function GetSalDup: Double;
    procedure SetSalDup(const pSalDup: Double);
    function GetSalOut: Double;
    procedure SetSalOut(const pSalOut: Double);
    function GetSalCre: Double;
    procedure SetSalCre(const pSalCre: Double);
    function GetDatUpe: TDate;
    procedure SetDatUpe(const pDatUpe: TDate);
    function GetVlrUpe: Double;
    procedure SetVlrUpe(const pVlrUpe: Double);
    function GetDatUcp: TDate;
    procedure SetDatUcp(const pDatUcp: TDate);
    function GetVlrUcp: Double;
    procedure SetVlrUcp(const pVlrUcp: Double);
    function GetDatMcp: TDate;
    procedure SetDatMcp(const pDatMcp: TDate);
    function GetVlrMcp: Double;
    procedure SetVlrMcp(const pVlrMcp: Double);
    function GetDatUpg: TDate;
    procedure SetDatUpg(const pDatUpg: TDate);
    function GetVlrUpg: Double;
    procedure SetVlrUpg(const pVlrUpg: Double);
    function GetQtdPgt: Integer;
    procedure SetQtdPgt(const pQtdPgt: Integer);
    function GetDatAtr: TDate;
    procedure SetDatAtr(const pDatAtr: TDate);
    function GetVlrAtr: Double;
    procedure SetVlrAtr(const pVlrAtr: Double);
    function GetMaiAtr: Integer;
    procedure SetMaiAtr(const pMaiAtr: Integer);
    function GetMedAtr: Integer;
    procedure SetMedAtr(const pMedAtr: Integer);
    function GetPrzEnt: Integer;
    procedure SetPrzEnt(const pPrzEnt: Integer);
    function GetCprCql: Integer;
    procedure SetCprCql(const pCprCql: Integer);
    function GetCprCpe: Integer;
    procedure SetCprCpe(const pCprCpe: Integer);
    function GetCprCat: Integer;
    procedure SetCprCat(const pCprCat: Integer);
    function GetCodTpr: string;
    procedure SetCodTpr(const pCodTpr: string);
    function GetCodCpg: string;
    procedure SetCodCpg(const pCodCpg: string);
    function GetCodFpg: Integer;
    procedure SetCodFpg(const pCodFpg: Integer);
    function GetQtdDcv: Integer;
    procedure SetQtdDcv(const pQtdDcv: Integer);
    function GetCriEdv: Char;
    procedure SetCriEdv(const pCriEdv: Char);
    function GetCodTra: Integer;
    procedure SetCodTra(const pCodTra: Integer);
    function GetCodPor: string;
    procedure SetCodPor(const pCodPor: string);
    function GetCodCrt: string;
    procedure SetCodCrt(const pCodCrt: string);
    function GetCodBan: string;
    procedure SetCodBan(const pCodBan: string);
    function GetCodAge: string;
    procedure SetCodAge(const pCodAge: string);
    function GetCcbFor: string;
    procedure SetCcbFor(const pCcbFor: string);
    function GetCodCrp: string;
    procedure SetCodCrp(const pCodCrp: string);
    function GetUltDup: Integer;
    procedure SetUltDup(const pUltDup: Integer);
    function GetPagJmm: Double;
    procedure SetPagJmm(const pPagJmm: Double);
    function GetPagTir: Char;
    procedure SetPagTir(const pPagTir: Char);
    function GetPagDtj: Integer;
    procedure SetPagDtj(const pPagDtj: Integer);
    function GetPagMul: Double;
    procedure SetPagMul(const pPagMul: Double);
    function GetPagDtm: Integer;
    procedure SetPagDtm(const pPagDtm: Integer);
    function GetPerDsc: Double;
    procedure SetPerDsc(const pPerDsc: Double);
    function GetTolDsc: Integer;
    procedure SetTolDsc(const pTolDsc: Integer);
    function GetAntDsc: Char;
    procedure SetAntDsc(const pAntDsc: Char);
    function GetPagEev: Integer;
    procedure SetPagEev(const pPagEev: Integer);
    function GetPerDs1: Double;
    procedure SetPerDs1(const pPerDs1: Double);
    function GetPerDs2: Double;
    procedure SetPerDs2(const pPerDs2: Double);
    function GetPerDs3: Double;
    procedure SetPerDs3(const pPerDs3: Double);
    function GetPerDs4: Double;
    procedure SetPerDs4(const pPerDs4: Double);
    function GetPerDs5: Double;
    procedure SetPerDs5(const pPerDs5: Double);
    function GetPerFun: Double;
    procedure SetPerFun(const pPerFun: Double);
    function GetPerIns: Double;
    procedure SetPerIns(const pPerIns: Double);
    function GetIndInd: Char;
    procedure SetIndInd(const pIndInd: Char);
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
    function GetCtaAux: Integer;
    procedure SetCtaAux(const pCtaAux: Integer);
    function GetCtaAad: Integer;
    procedure SetCtaAad(const pCtaAad: Integer);
    function GetConEst: Char;
    procedure SetConEst(const pConEst: Char);
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
    function GetPerIss: Double;
    procedure SetPerIss(const pPerIss: Double);
    function GetPerIrf: Double;
    procedure SetPerIrf(const pPerIrf: Double);
    function GetSeqOrm: Integer;
    procedure SetSeqOrm(const pSeqOrm: Integer);
    function GetCifFob: Char;
    procedure SetCifFob(const pCifFob: Char);
    function GetCodFav: Integer;
    procedure SetCodFav(const pCodFav: Integer);
    function GetPerIne: Double;
    procedure SetPerIne(const pPerIne: Double);
    function GetRvlCfr: Char;
    procedure SetRvlCfr(const pRvlCfr: Char);
    function GetRvlFre: Char;
    procedure SetRvlFre(const pRvlFre: Char);
    function GetRvlSeg: Char;
    procedure SetRvlSeg(const pRvlSeg: Char);
    function GetRvlEmb: Char;
    procedure SetRvlEmb(const pRvlEmb: Char);
    function GetRvlEnc: Char;
    procedure SetRvlEnc(const pRvlEnc: Char);
    function GetRvlOut: Char;
    procedure SetRvlOut(const pRvlOut: Char);
    function GetRvlDar: Char;
    procedure SetRvlDar(const pRvlDar: Char);
    function GetRvlFei: Char;
    procedure SetRvlFei(const pRvlFei: Char);
    function GetRvlSei: Char;
    procedure SetRvlSei(const pRvlSei: Char);
    function GetRvlOui: Char;
    procedure SetRvlOui(const pRvlOui: Char);
    function GetCodDep: string;
    procedure SetCodDep(const pCodDep: string);
    function GetUsuGer: Integer;
    procedure SetUsuGer(const pUsuGer: Integer);
    function GetDatGer: TDate;
    procedure SetDatGer(const pDatGer: TDate);
    function GetHorGer: Integer;
    procedure SetHorGer(const pHorGer: Integer);
    function GetUsuAlt: Integer;
    procedure SetUsuAlt(const pUsuAlt: Integer);
    function GetDatAlt: TDate;
    procedure SetDatAlt(const pDatAlt: TDate);
    function GetHorAlt: Integer;
    procedure SetHorAlt(const pHorAlt: Integer);
    function GetForMon: Char;
    procedure SetForMon(const pForMon: Char);
    function GetSerCur: string;
    procedure SetSerCur(const pSerCur: string);
    function GetPgtMon: string;
    procedure SetPgtMon(const pPgtMon: string);
    function GetPgtFre: string;
    procedure SetPgtFre(const pPgtFre: string);
    function GetTnsPro: string;
    procedure SetTnsPro(const pTnsPro: string);
    function GetTnsSer: string;
    procedure SetTnsSer(const pTnsSer: string);
    function GetCodEdc: string;
    procedure SetCodEdc(const pCodEdc: string);
    function GetUSU_DiaEsp1: Integer;
    procedure SetUSU_DiaEsp1(const pUSU_DiaEsp1: Integer);
    function GetUSU_DiaEsp2: Integer;
    procedure SetUSU_DiaEsp2(const pUSU_DiaEsp2: Integer);
    function GetUSU_ConAva: Char;
    procedure SetUSU_ConAva(const pUSU_ConAva: Char);
    function GetUSU_BocPre: Char;
    procedure SetUSU_BocPre(const pUSU_BocPre: Char);

    function GetCodForOld: Integer;
    procedure SetCodForOld(const pCodFor: Integer);
    function GetCodEmpOld: Integer;
    procedure SetCodEmpOld(const pCodEmp: Integer);
    function GetCodFilOld: Integer;
    procedure SetCodFilOld(const pCodFil: Integer);
    function GetSalDupOld: Double;
    procedure SetSalDupOld(const pSalDup: Double);
    function GetSalOutOld: Double;
    procedure SetSalOutOld(const pSalOut: Double);
    function GetSalCreOld: Double;
    procedure SetSalCreOld(const pSalCre: Double);
    function GetDatUpeOld: TDate;
    procedure SetDatUpeOld(const pDatUpe: TDate);
    function GetVlrUpeOld: Double;
    procedure SetVlrUpeOld(const pVlrUpe: Double);
    function GetDatUcpOld: TDate;
    procedure SetDatUcpOld(const pDatUcp: TDate);
    function GetVlrUcpOld: Double;
    procedure SetVlrUcpOld(const pVlrUcp: Double);
    function GetDatMcpOld: TDate;
    procedure SetDatMcpOld(const pDatMcp: TDate);
    function GetVlrMcpOld: Double;
    procedure SetVlrMcpOld(const pVlrMcp: Double);
    function GetDatUpgOld: TDate;
    procedure SetDatUpgOld(const pDatUpg: TDate);
    function GetVlrUpgOld: Double;
    procedure SetVlrUpgOld(const pVlrUpg: Double);
    function GetQtdPgtOld: Integer;
    procedure SetQtdPgtOld(const pQtdPgt: Integer);
    function GetDatAtrOld: TDate;
    procedure SetDatAtrOld(const pDatAtr: TDate);
    function GetVlrAtrOld: Double;
    procedure SetVlrAtrOld(const pVlrAtr: Double);
    function GetMaiAtrOld: Integer;
    procedure SetMaiAtrOld(const pMaiAtr: Integer);
    function GetMedAtrOld: Integer;
    procedure SetMedAtrOld(const pMedAtr: Integer);
    function GetPrzEntOld: Integer;
    procedure SetPrzEntOld(const pPrzEnt: Integer);
    function GetCprCqlOld: Integer;
    procedure SetCprCqlOld(const pCprCql: Integer);
    function GetCprCpeOld: Integer;
    procedure SetCprCpeOld(const pCprCpe: Integer);
    function GetCprCatOld: Integer;
    procedure SetCprCatOld(const pCprCat: Integer);
    function GetCodTprOld: string;
    procedure SetCodTprOld(const pCodTpr: string);
    function GetCodCpgOld: string;
    procedure SetCodCpgOld(const pCodCpg: string);
    function GetCodFpgOld: Integer;
    procedure SetCodFpgOld(const pCodFpg: Integer);
    function GetQtdDcvOld: Integer;
    procedure SetQtdDcvOld(const pQtdDcv: Integer);
    function GetCriEdvOld: Char;
    procedure SetCriEdvOld(const pCriEdv: Char);
    function GetCodTraOld: Integer;
    procedure SetCodTraOld(const pCodTra: Integer);
    function GetCodPorOld: string;
    procedure SetCodPorOld(const pCodPor: string);
    function GetCodCrtOld: string;
    procedure SetCodCrtOld(const pCodCrt: string);
    function GetCodBanOld: string;
    procedure SetCodBanOld(const pCodBan: string);
    function GetCodAgeOld: string;
    procedure SetCodAgeOld(const pCodAge: string);
    function GetCcbForOld: string;
    procedure SetCcbForOld(const pCcbFor: string);
    function GetCodCrpOld: string;
    procedure SetCodCrpOld(const pCodCrp: string);
    function GetUltDupOld: Integer;
    procedure SetUltDupOld(const pUltDup: Integer);
    function GetPagJmmOld: Double;
    procedure SetPagJmmOld(const pPagJmm: Double);
    function GetPagTirOld: Char;
    procedure SetPagTirOld(const pPagTir: Char);
    function GetPagDtjOld: Integer;
    procedure SetPagDtjOld(const pPagDtj: Integer);
    function GetPagMulOld: Double;
    procedure SetPagMulOld(const pPagMul: Double);
    function GetPagDtmOld: Integer;
    procedure SetPagDtmOld(const pPagDtm: Integer);
    function GetPerDscOld: Double;
    procedure SetPerDscOld(const pPerDsc: Double);
    function GetTolDscOld: Integer;
    procedure SetTolDscOld(const pTolDsc: Integer);
    function GetAntDscOld: Char;
    procedure SetAntDscOld(const pAntDsc: Char);
    function GetPagEevOld: Integer;
    procedure SetPagEevOld(const pPagEev: Integer);
    function GetPerDs1Old: Double;
    procedure SetPerDs1Old(const pPerDs1: Double);
    function GetPerDs2Old: Double;
    procedure SetPerDs2Old(const pPerDs2: Double);
    function GetPerDs3Old: Double;
    procedure SetPerDs3Old(const pPerDs3: Double);
    function GetPerDs4Old: Double;
    procedure SetPerDs4Old(const pPerDs4: Double);
    function GetPerDs5Old: Double;
    procedure SetPerDs5Old(const pPerDs5: Double);
    function GetPerFunOld: Double;
    procedure SetPerFunOld(const pPerFun: Double);
    function GetPerInsOld: Double;
    procedure SetPerInsOld(const pPerIns: Double);
    function GetIndIndOld: Char;
    procedure SetIndIndOld(const pIndInd: Char);
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
    function GetCtaAuxOld: Integer;
    procedure SetCtaAuxOld(const pCtaAux: Integer);
    function GetCtaAadOld: Integer;
    procedure SetCtaAadOld(const pCtaAad: Integer);
    function GetConEstOld: Char;
    procedure SetConEstOld(const pConEst: Char);
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
    function GetPerIssOld: Double;
    procedure SetPerIssOld(const pPerIss: Double);
    function GetPerIrfOld: Double;
    procedure SetPerIrfOld(const pPerIrf: Double);
    function GetSeqOrmOld: Integer;
    procedure SetSeqOrmOld(const pSeqOrm: Integer);
    function GetCifFobOld: Char;
    procedure SetCifFobOld(const pCifFob: Char);
    function GetCodFavOld: Integer;
    procedure SetCodFavOld(const pCodFav: Integer);
    function GetPerIneOld: Double;
    procedure SetPerIneOld(const pPerIne: Double);
    function GetRvlCfrOld: Char;
    procedure SetRvlCfrOld(const pRvlCfr: Char);
    function GetRvlFreOld: Char;
    procedure SetRvlFreOld(const pRvlFre: Char);
    function GetRvlSegOld: Char;
    procedure SetRvlSegOld(const pRvlSeg: Char);
    function GetRvlEmbOld: Char;
    procedure SetRvlEmbOld(const pRvlEmb: Char);
    function GetRvlEncOld: Char;
    procedure SetRvlEncOld(const pRvlEnc: Char);
    function GetRvlOutOld: Char;
    procedure SetRvlOutOld(const pRvlOut: Char);
    function GetRvlDarOld: Char;
    procedure SetRvlDarOld(const pRvlDar: Char);
    function GetRvlFeiOld: Char;
    procedure SetRvlFeiOld(const pRvlFei: Char);
    function GetRvlSeiOld: Char;
    procedure SetRvlSeiOld(const pRvlSei: Char);
    function GetRvlOuiOld: Char;
    procedure SetRvlOuiOld(const pRvlOui: Char);
    function GetCodDepOld: string;
    procedure SetCodDepOld(const pCodDep: string);
    function GetUsuGerOld: Integer;
    procedure SetUsuGerOld(const pUsuGer: Integer);
    function GetDatGerOld: TDate;
    procedure SetDatGerOld(const pDatGer: TDate);
    function GetHorGerOld: Integer;
    procedure SetHorGerOld(const pHorGer: Integer);
    function GetUsuAltOld: Integer;
    procedure SetUsuAltOld(const pUsuAlt: Integer);
    function GetDatAltOld: TDate;
    procedure SetDatAltOld(const pDatAlt: TDate);
    function GetHorAltOld: Integer;
    procedure SetHorAltOld(const pHorAlt: Integer);
    function GetForMonOld: Char;
    procedure SetForMonOld(const pForMon: Char);
    function GetSerCurOld: string;
    procedure SetSerCurOld(const pSerCur: string);
    function GetPgtMonOld: string;
    procedure SetPgtMonOld(const pPgtMon: string);
    function GetPgtFreOld: string;
    procedure SetPgtFreOld(const pPgtFre: string);
    function GetTnsProOld: string;
    procedure SetTnsProOld(const pTnsPro: string);
    function GetTnsSerOld: string;
    procedure SetTnsSerOld(const pTnsSer: string);
    function GetCodEdcOld: string;
    procedure SetCodEdcOld(const pCodEdc: string);
    function GetUSU_DiaEsp1Old: Integer;
    procedure SetUSU_DiaEsp1Old(const pUSU_DiaEsp1: Integer);
    function GetUSU_DiaEsp2Old: Integer;
    procedure SetUSU_DiaEsp2Old(const pUSU_DiaEsp2: Integer);
    function GetUSU_ConAvaOld: Char;
    procedure SetUSU_ConAvaOld(const pUSU_ConAva: Char);
    function GetUSU_BocPreOld: Char;
    procedure SetUSU_BocPreOld(const pUSU_BocPre: Char);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property CodFor: Integer read GetCodFor write SetCodFor;
    property CodEmp: Integer read GetCodEmp write SetCodEmp;
    property CodFil: Integer read GetCodFil write SetCodFil;
    property SalDup: Double read GetSalDup write SetSalDup;
    property SalOut: Double read GetSalOut write SetSalOut;
    property SalCre: Double read GetSalCre write SetSalCre;
    property DatUpe: TDate read GetDatUpe write SetDatUpe;
    property VlrUpe: Double read GetVlrUpe write SetVlrUpe;
    property DatUcp: TDate read GetDatUcp write SetDatUcp;
    property VlrUcp: Double read GetVlrUcp write SetVlrUcp;
    property DatMcp: TDate read GetDatMcp write SetDatMcp;
    property VlrMcp: Double read GetVlrMcp write SetVlrMcp;
    property DatUpg: TDate read GetDatUpg write SetDatUpg;
    property VlrUpg: Double read GetVlrUpg write SetVlrUpg;
    property QtdPgt: Integer read GetQtdPgt write SetQtdPgt;
    property DatAtr: TDate read GetDatAtr write SetDatAtr;
    property VlrAtr: Double read GetVlrAtr write SetVlrAtr;
    property MaiAtr: Integer read GetMaiAtr write SetMaiAtr;
    property MedAtr: Integer read GetMedAtr write SetMedAtr;
    property PrzEnt: Integer read GetPrzEnt write SetPrzEnt;
    property CprCql: Integer read GetCprCql write SetCprCql;
    property CprCpe: Integer read GetCprCpe write SetCprCpe;
    property CprCat: Integer read GetCprCat write SetCprCat;
    property CodTpr: string read GetCodTpr write SetCodTpr;
    property CodCpg: string read GetCodCpg write SetCodCpg;
    property CodFpg: Integer read GetCodFpg write SetCodFpg;
    property QtdDcv: Integer read GetQtdDcv write SetQtdDcv;
    property CriEdv: Char read GetCriEdv write SetCriEdv;
    property CodTra: Integer read GetCodTra write SetCodTra;
    property CodPor: string read GetCodPor write SetCodPor;
    property CodCrt: string read GetCodCrt write SetCodCrt;
    property CodBan: string read GetCodBan write SetCodBan;
    property CodAge: string read GetCodAge write SetCodAge;
    property CcbFor: string read GetCcbFor write SetCcbFor;
    property CodCrp: string read GetCodCrp write SetCodCrp;
    property UltDup: Integer read GetUltDup write SetUltDup;
    property PagJmm: Double read GetPagJmm write SetPagJmm;
    property PagTir: Char read GetPagTir write SetPagTir;
    property PagDtj: Integer read GetPagDtj write SetPagDtj;
    property PagMul: Double read GetPagMul write SetPagMul;
    property PagDtm: Integer read GetPagDtm write SetPagDtm;
    property PerDsc: Double read GetPerDsc write SetPerDsc;
    property TolDsc: Integer read GetTolDsc write SetTolDsc;
    property AntDsc: Char read GetAntDsc write SetAntDsc;
    property PagEev: Integer read GetPagEev write SetPagEev;
    property PerDs1: Double read GetPerDs1 write SetPerDs1;
    property PerDs2: Double read GetPerDs2 write SetPerDs2;
    property PerDs3: Double read GetPerDs3 write SetPerDs3;
    property PerDs4: Double read GetPerDs4 write SetPerDs4;
    property PerDs5: Double read GetPerDs5 write SetPerDs5;
    property PerFun: Double read GetPerFun write SetPerFun;
    property PerIns: Double read GetPerIns write SetPerIns;
    property IndInd: Char read GetIndInd write SetIndInd;
    property CriRat: Integer read GetCriRat write SetCriRat;
    property CtaRed: Integer read GetCtaRed write SetCtaRed;
    property CtaRcr: Integer read GetCtaRcr write SetCtaRcr;
    property CtaFdv: Integer read GetCtaFdv write SetCtaFdv;
    property CtaFcr: Integer read GetCtaFcr write SetCtaFcr;
    property CtaAux: Integer read GetCtaAux write SetCtaAux;
    property CtaAad: Integer read GetCtaAad write SetCtaAad;
    property ConEst: Char read GetConEst write SetConEst;
    property PerFre: Double read GetPerFre write SetPerFre;
    property PerSeg: Double read GetPerSeg write SetPerSeg;
    property PerEmb: Double read GetPerEmb write SetPerEmb;
    property PerEnc: Double read GetPerEnc write SetPerEnc;
    property PerOut: Double read GetPerOut write SetPerOut;
    property PerIss: Double read GetPerIss write SetPerIss;
    property PerIrf: Double read GetPerIrf write SetPerIrf;
    property SeqOrm: Integer read GetSeqOrm write SetSeqOrm;
    property CifFob: Char read GetCifFob write SetCifFob;
    property CodFav: Integer read GetCodFav write SetCodFav;
    property PerIne: Double read GetPerIne write SetPerIne;
    property RvlCfr: Char read GetRvlCfr write SetRvlCfr;
    property RvlFre: Char read GetRvlFre write SetRvlFre;
    property RvlSeg: Char read GetRvlSeg write SetRvlSeg;
    property RvlEmb: Char read GetRvlEmb write SetRvlEmb;
    property RvlEnc: Char read GetRvlEnc write SetRvlEnc;
    property RvlOut: Char read GetRvlOut write SetRvlOut;
    property RvlDar: Char read GetRvlDar write SetRvlDar;
    property RvlFei: Char read GetRvlFei write SetRvlFei;
    property RvlSei: Char read GetRvlSei write SetRvlSei;
    property RvlOui: Char read GetRvlOui write SetRvlOui;
    property CodDep: string read GetCodDep write SetCodDep;
    property UsuGer: Integer read GetUsuGer write SetUsuGer;
    property DatGer: TDate read GetDatGer write SetDatGer;
    property HorGer: Integer read GetHorGer write SetHorGer;
    property UsuAlt: Integer read GetUsuAlt write SetUsuAlt;
    property DatAlt: TDate read GetDatAlt write SetDatAlt;
    property HorAlt: Integer read GetHorAlt write SetHorAlt;
    property ForMon: Char read GetForMon write SetForMon;
    property SerCur: string read GetSerCur write SetSerCur;
    property PgtMon: string read GetPgtMon write SetPgtMon;
    property PgtFre: string read GetPgtFre write SetPgtFre;
    property TnsPro: string read GetTnsPro write SetTnsPro;
    property TnsSer: string read GetTnsSer write SetTnsSer;
    property CodEdc: string read GetCodEdc write SetCodEdc;
    property USU_DiaEsp1: Integer read GetUSU_DiaEsp1 write SetUSU_DiaEsp1;
    property USU_DiaEsp2: Integer read GetUSU_DiaEsp2 write SetUSU_DiaEsp2;
    property USU_ConAva: Char read GetUSU_ConAva write SetUSU_ConAva;
    property USU_BocPre: Char read GetUSU_BocPre write SetUSU_BocPre;

    property OLD_CodFor: Integer read GetCodForOLD write SetCodForOLD;
    property OLD_CodEmp: Integer read GetCodEmpOLD write SetCodEmpOLD;
    property OLD_CodFil: Integer read GetCodFilOLD write SetCodFilOLD;
    property OLD_SalDup: Double read GetSalDupOLD write SetSalDupOLD;
    property OLD_SalOut: Double read GetSalOutOLD write SetSalOutOLD;
    property OLD_SalCre: Double read GetSalCreOLD write SetSalCreOLD;
    property OLD_DatUpe: TDate read GetDatUpeOLD write SetDatUpeOLD;
    property OLD_VlrUpe: Double read GetVlrUpeOLD write SetVlrUpeOLD;
    property OLD_DatUcp: TDate read GetDatUcpOLD write SetDatUcpOLD;
    property OLD_VlrUcp: Double read GetVlrUcpOLD write SetVlrUcpOLD;
    property OLD_DatMcp: TDate read GetDatMcpOLD write SetDatMcpOLD;
    property OLD_VlrMcp: Double read GetVlrMcpOLD write SetVlrMcpOLD;
    property OLD_DatUpg: TDate read GetDatUpgOLD write SetDatUpgOLD;
    property OLD_VlrUpg: Double read GetVlrUpgOLD write SetVlrUpgOLD;
    property OLD_QtdPgt: Integer read GetQtdPgtOLD write SetQtdPgtOLD;
    property OLD_DatAtr: TDate read GetDatAtrOLD write SetDatAtrOLD;
    property OLD_VlrAtr: Double read GetVlrAtrOLD write SetVlrAtrOLD;
    property OLD_MaiAtr: Integer read GetMaiAtrOLD write SetMaiAtrOLD;
    property OLD_MedAtr: Integer read GetMedAtrOLD write SetMedAtrOLD;
    property OLD_PrzEnt: Integer read GetPrzEntOLD write SetPrzEntOLD;
    property OLD_CprCql: Integer read GetCprCqlOLD write SetCprCqlOLD;
    property OLD_CprCpe: Integer read GetCprCpeOLD write SetCprCpeOLD;
    property OLD_CprCat: Integer read GetCprCatOLD write SetCprCatOLD;
    property OLD_CodTpr: string read GetCodTprOLD write SetCodTprOLD;
    property OLD_CodCpg: string read GetCodCpgOLD write SetCodCpgOLD;
    property OLD_CodFpg: Integer read GetCodFpgOLD write SetCodFpgOLD;
    property OLD_QtdDcv: Integer read GetQtdDcvOLD write SetQtdDcvOLD;
    property OLD_CriEdv: Char read GetCriEdvOLD write SetCriEdvOLD;
    property OLD_CodTra: Integer read GetCodTraOLD write SetCodTraOLD;
    property OLD_CodPor: string read GetCodPorOLD write SetCodPorOLD;
    property OLD_CodCrt: string read GetCodCrtOLD write SetCodCrtOLD;
    property OLD_CodBan: string read GetCodBanOLD write SetCodBanOLD;
    property OLD_CodAge: string read GetCodAgeOLD write SetCodAgeOLD;
    property OLD_CcbFor: string read GetCcbForOLD write SetCcbForOLD;
    property OLD_CodCrp: string read GetCodCrpOLD write SetCodCrpOLD;
    property OLD_UltDup: Integer read GetUltDupOLD write SetUltDupOLD;
    property OLD_PagJmm: Double read GetPagJmmOLD write SetPagJmmOLD;
    property OLD_PagTir: Char read GetPagTirOLD write SetPagTirOLD;
    property OLD_PagDtj: Integer read GetPagDtjOLD write SetPagDtjOLD;
    property OLD_PagMul: Double read GetPagMulOLD write SetPagMulOLD;
    property OLD_PagDtm: Integer read GetPagDtmOLD write SetPagDtmOLD;
    property OLD_PerDsc: Double read GetPerDscOLD write SetPerDscOLD;
    property OLD_TolDsc: Integer read GetTolDscOLD write SetTolDscOLD;
    property OLD_AntDsc: Char read GetAntDscOLD write SetAntDscOLD;
    property OLD_PagEev: Integer read GetPagEevOLD write SetPagEevOLD;
    property OLD_PerDs1: Double read GetPerDs1OLD write SetPerDs1OLD;
    property OLD_PerDs2: Double read GetPerDs2OLD write SetPerDs2OLD;
    property OLD_PerDs3: Double read GetPerDs3OLD write SetPerDs3OLD;
    property OLD_PerDs4: Double read GetPerDs4OLD write SetPerDs4OLD;
    property OLD_PerDs5: Double read GetPerDs5OLD write SetPerDs5OLD;
    property OLD_PerFun: Double read GetPerFunOLD write SetPerFunOLD;
    property OLD_PerIns: Double read GetPerInsOLD write SetPerInsOLD;
    property OLD_IndInd: Char read GetIndIndOLD write SetIndIndOLD;
    property OLD_CriRat: Integer read GetCriRatOLD write SetCriRatOLD;
    property OLD_CtaRed: Integer read GetCtaRedOLD write SetCtaRedOLD;
    property OLD_CtaRcr: Integer read GetCtaRcrOLD write SetCtaRcrOLD;
    property OLD_CtaFdv: Integer read GetCtaFdvOLD write SetCtaFdvOLD;
    property OLD_CtaFcr: Integer read GetCtaFcrOLD write SetCtaFcrOLD;
    property OLD_CtaAux: Integer read GetCtaAuxOLD write SetCtaAuxOLD;
    property OLD_CtaAad: Integer read GetCtaAadOLD write SetCtaAadOLD;
    property OLD_ConEst: Char read GetConEstOLD write SetConEstOLD;
    property OLD_PerFre: Double read GetPerFreOLD write SetPerFreOLD;
    property OLD_PerSeg: Double read GetPerSegOLD write SetPerSegOLD;
    property OLD_PerEmb: Double read GetPerEmbOLD write SetPerEmbOLD;
    property OLD_PerEnc: Double read GetPerEncOLD write SetPerEncOLD;
    property OLD_PerOut: Double read GetPerOutOLD write SetPerOutOLD;
    property OLD_PerIss: Double read GetPerIssOLD write SetPerIssOLD;
    property OLD_PerIrf: Double read GetPerIrfOLD write SetPerIrfOLD;
    property OLD_SeqOrm: Integer read GetSeqOrmOLD write SetSeqOrmOLD;
    property OLD_CifFob: Char read GetCifFobOLD write SetCifFobOLD;
    property OLD_CodFav: Integer read GetCodFavOLD write SetCodFavOLD;
    property OLD_PerIne: Double read GetPerIneOLD write SetPerIneOLD;
    property OLD_RvlCfr: Char read GetRvlCfrOLD write SetRvlCfrOLD;
    property OLD_RvlFre: Char read GetRvlFreOLD write SetRvlFreOLD;
    property OLD_RvlSeg: Char read GetRvlSegOLD write SetRvlSegOLD;
    property OLD_RvlEmb: Char read GetRvlEmbOLD write SetRvlEmbOLD;
    property OLD_RvlEnc: Char read GetRvlEncOLD write SetRvlEncOLD;
    property OLD_RvlOut: Char read GetRvlOutOLD write SetRvlOutOLD;
    property OLD_RvlDar: Char read GetRvlDarOLD write SetRvlDarOLD;
    property OLD_RvlFei: Char read GetRvlFeiOLD write SetRvlFeiOLD;
    property OLD_RvlSei: Char read GetRvlSeiOLD write SetRvlSeiOLD;
    property OLD_RvlOui: Char read GetRvlOuiOLD write SetRvlOuiOLD;
    property OLD_CodDep: string read GetCodDepOLD write SetCodDepOLD;
    property OLD_UsuGer: Integer read GetUsuGerOLD write SetUsuGerOLD;
    property OLD_DatGer: TDate read GetDatGerOLD write SetDatGerOLD;
    property OLD_HorGer: Integer read GetHorGerOLD write SetHorGerOLD;
    property OLD_UsuAlt: Integer read GetUsuAltOLD write SetUsuAltOLD;
    property OLD_DatAlt: TDate read GetDatAltOLD write SetDatAltOLD;
    property OLD_HorAlt: Integer read GetHorAltOLD write SetHorAltOLD;
    property OLD_ForMon: Char read GetForMonOLD write SetForMonOLD;
    property OLD_SerCur: string read GetSerCurOLD write SetSerCurOLD;
    property OLD_PgtMon: string read GetPgtMonOLD write SetPgtMonOLD;
    property OLD_PgtFre: string read GetPgtFreOLD write SetPgtFreOLD;
    property OLD_TnsPro: string read GetTnsProOLD write SetTnsProOLD;
    property OLD_TnsSer: string read GetTnsSerOLD write SetTnsSerOLD;
    property OLD_CodEdc: string read GetCodEdcOLD write SetCodEdcOLD;
    property OLD_USU_DiaEsp1: Integer read GetUSU_DiaEsp1OLD write SetUSU_DiaEsp1OLD;
    property OLD_USU_DiaEsp2: Integer read GetUSU_DiaEsp2OLD write SetUSU_DiaEsp2OLD;
    property OLD_USU_ConAva: Char read GetUSU_ConAvaOLD write SetUSU_ConAvaOLD;
    property OLD_USU_BocPre: Char read GetUSU_BocPreOLD write SetUSU_BocPreOLD;
  end;

implementation

{ T095HFO }

constructor T095HFO.Create();
begin
  AddForeignKeys(['CodFor','CodEmp','CodFil'], ['CodFor','CodEmp','CodFil']);
  AddPrimaryKeys('CodFor;CodEmp;CodFil');

  inherited Create('E095HFO');
end;

destructor T095HFO.Destroy();
begin
  inherited;
end;

function T095HFO.GetCodFor: Integer;
begin
  Result := FCodFor;
end;

procedure T095HFO.SetCodFor(const pCodFor: Integer);
begin
  FCodFor := pCodFor;

  CheckField('CodFor');
end;

function T095HFO.GetCodEmp: Integer;
begin
  Result := FCodEmp;
end;

procedure T095HFO.SetCodEmp(const pCodEmp: Integer);
begin
  FCodEmp := pCodEmp;

  CheckField('CodEmp');
end;

function T095HFO.GetCodFil: Integer;
begin
  Result := FCodFil;
end;

procedure T095HFO.SetCodFil(const pCodFil: Integer);
begin
  FCodFil := pCodFil;

  CheckField('CodFil');
end;

function T095HFO.GetSalDup: Double;
begin
  Result := FSalDup;
end;

procedure T095HFO.SetSalDup(const pSalDup: Double);
begin
  FSalDup := pSalDup;

  CheckField('SalDup');
end;

function T095HFO.GetSalOut: Double;
begin
  Result := FSalOut;
end;

procedure T095HFO.SetSalOut(const pSalOut: Double);
begin
  FSalOut := pSalOut;

  CheckField('SalOut');
end;

function T095HFO.GetSalCre: Double;
begin
  Result := FSalCre;
end;

procedure T095HFO.SetSalCre(const pSalCre: Double);
begin
  FSalCre := pSalCre;

  CheckField('SalCre');
end;

function T095HFO.GetDatUpe: TDate;
begin
  Result := FDatUpe;
end;

procedure T095HFO.SetDatUpe(const pDatUpe: TDate);
begin
  FDatUpe := pDatUpe;

  CheckField('DatUpe');
end;

function T095HFO.GetVlrUpe: Double;
begin
  Result := FVlrUpe;
end;

procedure T095HFO.SetVlrUpe(const pVlrUpe: Double);
begin
  FVlrUpe := pVlrUpe;

  CheckField('VlrUpe');
end;

function T095HFO.GetDatUcp: TDate;
begin
  Result := FDatUcp;
end;

procedure T095HFO.SetDatUcp(const pDatUcp: TDate);
begin
  FDatUcp := pDatUcp;

  CheckField('DatUcp');
end;

function T095HFO.GetVlrUcp: Double;
begin
  Result := FVlrUcp;
end;

procedure T095HFO.SetVlrUcp(const pVlrUcp: Double);
begin
  FVlrUcp := pVlrUcp;

  CheckField('VlrUcp');
end;

function T095HFO.GetDatMcp: TDate;
begin
  Result := FDatMcp;
end;

procedure T095HFO.SetDatMcp(const pDatMcp: TDate);
begin
  FDatMcp := pDatMcp;

  CheckField('DatMcp');
end;

function T095HFO.GetVlrMcp: Double;
begin
  Result := FVlrMcp;
end;

procedure T095HFO.SetVlrMcp(const pVlrMcp: Double);
begin
  FVlrMcp := pVlrMcp;

  CheckField('VlrMcp');
end;

function T095HFO.GetDatUpg: TDate;
begin
  Result := FDatUpg;
end;

procedure T095HFO.SetDatUpg(const pDatUpg: TDate);
begin
  FDatUpg := pDatUpg;

  CheckField('DatUpg');
end;

function T095HFO.GetVlrUpg: Double;
begin
  Result := FVlrUpg;
end;

procedure T095HFO.SetVlrUpg(const pVlrUpg: Double);
begin
  FVlrUpg := pVlrUpg;

  CheckField('VlrUpg');
end;

function T095HFO.GetQtdPgt: Integer;
begin
  Result := FQtdPgt;
end;

procedure T095HFO.SetQtdPgt(const pQtdPgt: Integer);
begin
  FQtdPgt := pQtdPgt;

  CheckField('QtdPgt');
end;

function T095HFO.GetDatAtr: TDate;
begin
  Result := FDatAtr;
end;

procedure T095HFO.SetDatAtr(const pDatAtr: TDate);
begin
  FDatAtr := pDatAtr;

  CheckField('DatAtr');
end;

function T095HFO.GetVlrAtr: Double;
begin
  Result := FVlrAtr;
end;

procedure T095HFO.SetVlrAtr(const pVlrAtr: Double);
begin
  FVlrAtr := pVlrAtr;

  CheckField('VlrAtr');
end;

function T095HFO.GetMaiAtr: Integer;
begin
  Result := FMaiAtr;
end;

procedure T095HFO.SetMaiAtr(const pMaiAtr: Integer);
begin
  FMaiAtr := pMaiAtr;

  CheckField('MaiAtr');
end;

function T095HFO.GetMedAtr: Integer;
begin
  Result := FMedAtr;
end;

procedure T095HFO.SetMedAtr(const pMedAtr: Integer);
begin
  FMedAtr := pMedAtr;

  CheckField('MedAtr');
end;

function T095HFO.GetPrzEnt: Integer;
begin
  Result := FPrzEnt;
end;

procedure T095HFO.SetPrzEnt(const pPrzEnt: Integer);
begin
  FPrzEnt := pPrzEnt;

  CheckField('PrzEnt');
end;

function T095HFO.GetCprCql: Integer;
begin
  Result := FCprCql;
end;

procedure T095HFO.SetCprCql(const pCprCql: Integer);
begin
  FCprCql := pCprCql;

  CheckField('CprCql');
end;

function T095HFO.GetCprCpe: Integer;
begin
  Result := FCprCpe;
end;

procedure T095HFO.SetCprCpe(const pCprCpe: Integer);
begin
  FCprCpe := pCprCpe;

  CheckField('CprCpe');
end;

function T095HFO.GetCprCat: Integer;
begin
  Result := FCprCat;
end;

procedure T095HFO.SetCprCat(const pCprCat: Integer);
begin
  FCprCat := pCprCat;

  CheckField('CprCat');
end;

function T095HFO.GetCodTpr: string;
begin
  Result := FCodTpr;
end;

procedure T095HFO.SetCodTpr(const pCodTpr: string);
begin
  FCodTpr := pCodTpr;

  CheckField('CodTpr');
end;

function T095HFO.GetCodCpg: string;
begin
  Result := FCodCpg;
end;

procedure T095HFO.SetCodCpg(const pCodCpg: string);
begin
  FCodCpg := pCodCpg;

  CheckField('CodCpg');
end;

function T095HFO.GetCodFpg: Integer;
begin
  Result := FCodFpg;
end;

procedure T095HFO.SetCodFpg(const pCodFpg: Integer);
begin
  FCodFpg := pCodFpg;

  CheckField('CodFpg');
end;

function T095HFO.GetQtdDcv: Integer;
begin
  Result := FQtdDcv;
end;

procedure T095HFO.SetQtdDcv(const pQtdDcv: Integer);
begin
  FQtdDcv := pQtdDcv;

  CheckField('QtdDcv');
end;

function T095HFO.GetCriEdv: Char;
begin
  Result := FCriEdv;
end;

procedure T095HFO.SetCriEdv(const pCriEdv: Char);
begin
  FCriEdv := pCriEdv;

  CheckField('CriEdv');
end;

function T095HFO.GetCodTra: Integer;
begin
  Result := FCodTra;
end;

procedure T095HFO.SetCodTra(const pCodTra: Integer);
begin
  FCodTra := pCodTra;

  CheckField('CodTra');
end;

function T095HFO.GetCodPor: string;
begin
  Result := FCodPor;
end;

procedure T095HFO.SetCodPor(const pCodPor: string);
begin
  FCodPor := pCodPor;

  CheckField('CodPor');
end;

function T095HFO.GetCodCrt: string;
begin
  Result := FCodCrt;
end;

procedure T095HFO.SetCodCrt(const pCodCrt: string);
begin
  FCodCrt := pCodCrt;

  CheckField('CodCrt');
end;

function T095HFO.GetCodBan: string;
begin
  Result := FCodBan;
end;

procedure T095HFO.SetCodBan(const pCodBan: string);
begin
  FCodBan := pCodBan;

  CheckField('CodBan');
end;

function T095HFO.GetCodAge: string;
begin
  Result := FCodAge;
end;

procedure T095HFO.SetCodAge(const pCodAge: string);
begin
  FCodAge := pCodAge;

  CheckField('CodAge');
end;

function T095HFO.GetCcbFor: string;
begin
  Result := FCcbFor;
end;

procedure T095HFO.SetCcbFor(const pCcbFor: string);
begin
  FCcbFor := pCcbFor;

  CheckField('CcbFor');
end;

function T095HFO.GetCodCrp: string;
begin
  Result := FCodCrp;
end;

procedure T095HFO.SetCodCrp(const pCodCrp: string);
begin
  FCodCrp := pCodCrp;

  CheckField('CodCrp');
end;

function T095HFO.GetUltDup: Integer;
begin
  Result := FUltDup;
end;

procedure T095HFO.SetUltDup(const pUltDup: Integer);
begin
  FUltDup := pUltDup;

  CheckField('UltDup');
end;

function T095HFO.GetPagJmm: Double;
begin
  Result := FPagJmm;
end;

procedure T095HFO.SetPagJmm(const pPagJmm: Double);
begin
  FPagJmm := pPagJmm;

  CheckField('PagJmm');
end;

function T095HFO.GetPagTir: Char;
begin
  Result := FPagTir;
end;

procedure T095HFO.SetPagTir(const pPagTir: Char);
begin
  FPagTir := pPagTir;

  CheckField('PagTir');
end;

function T095HFO.GetPagDtj: Integer;
begin
  Result := FPagDtj;
end;

procedure T095HFO.SetPagDtj(const pPagDtj: Integer);
begin
  FPagDtj := pPagDtj;

  CheckField('PagDtj');
end;

function T095HFO.GetPagMul: Double;
begin
  Result := FPagMul;
end;

procedure T095HFO.SetPagMul(const pPagMul: Double);
begin
  FPagMul := pPagMul;

  CheckField('PagMul');
end;

function T095HFO.GetPagDtm: Integer;
begin
  Result := FPagDtm;
end;

procedure T095HFO.SetPagDtm(const pPagDtm: Integer);
begin
  FPagDtm := pPagDtm;

  CheckField('PagDtm');
end;

function T095HFO.GetPerDsc: Double;
begin
  Result := FPerDsc;
end;

procedure T095HFO.SetPerDsc(const pPerDsc: Double);
begin
  FPerDsc := pPerDsc;

  CheckField('PerDsc');
end;

function T095HFO.GetTolDsc: Integer;
begin
  Result := FTolDsc;
end;

procedure T095HFO.SetTolDsc(const pTolDsc: Integer);
begin
  FTolDsc := pTolDsc;

  CheckField('TolDsc');
end;

function T095HFO.GetAntDsc: Char;
begin
  Result := FAntDsc;
end;

procedure T095HFO.SetAntDsc(const pAntDsc: Char);
begin
  FAntDsc := pAntDsc;

  CheckField('AntDsc');
end;

function T095HFO.GetPagEev: Integer;
begin
  Result := FPagEev;
end;

procedure T095HFO.SetPagEev(const pPagEev: Integer);
begin
  FPagEev := pPagEev;

  CheckField('PagEev');
end;

function T095HFO.GetPerDs1: Double;
begin
  Result := FPerDs1;
end;

procedure T095HFO.SetPerDs1(const pPerDs1: Double);
begin
  FPerDs1 := pPerDs1;

  CheckField('PerDs1');
end;

function T095HFO.GetPerDs2: Double;
begin
  Result := FPerDs2;
end;

procedure T095HFO.SetPerDs2(const pPerDs2: Double);
begin
  FPerDs2 := pPerDs2;

  CheckField('PerDs2');
end;

function T095HFO.GetPerDs3: Double;
begin
  Result := FPerDs3;
end;

procedure T095HFO.SetPerDs3(const pPerDs3: Double);
begin
  FPerDs3 := pPerDs3;

  CheckField('PerDs3');
end;

function T095HFO.GetPerDs4: Double;
begin
  Result := FPerDs4;
end;

procedure T095HFO.SetPerDs4(const pPerDs4: Double);
begin
  FPerDs4 := pPerDs4;

  CheckField('PerDs4');
end;

function T095HFO.GetPerDs5: Double;
begin
  Result := FPerDs5;
end;

procedure T095HFO.SetPerDs5(const pPerDs5: Double);
begin
  FPerDs5 := pPerDs5;

  CheckField('PerDs5');
end;

function T095HFO.GetPerFun: Double;
begin
  Result := FPerFun;
end;

procedure T095HFO.SetPerFun(const pPerFun: Double);
begin
  FPerFun := pPerFun;

  CheckField('PerFun');
end;

function T095HFO.GetPerIns: Double;
begin
  Result := FPerIns;
end;

procedure T095HFO.SetPerIns(const pPerIns: Double);
begin
  FPerIns := pPerIns;

  CheckField('PerIns');
end;

function T095HFO.GetIndInd: Char;
begin
  Result := FIndInd;
end;

procedure T095HFO.SetIndInd(const pIndInd: Char);
begin
  FIndInd := pIndInd;

  CheckField('IndInd');
end;

function T095HFO.GetCriRat: Integer;
begin
  Result := FCriRat;
end;

procedure T095HFO.SetCriRat(const pCriRat: Integer);
begin
  FCriRat := pCriRat;

  CheckField('CriRat');
end;

function T095HFO.GetCtaRed: Integer;
begin
  Result := FCtaRed;
end;

procedure T095HFO.SetCtaRed(const pCtaRed: Integer);
begin
  FCtaRed := pCtaRed;

  CheckField('CtaRed');
end;

function T095HFO.GetCtaRcr: Integer;
begin
  Result := FCtaRcr;
end;

procedure T095HFO.SetCtaRcr(const pCtaRcr: Integer);
begin
  FCtaRcr := pCtaRcr;

  CheckField('CtaRcr');
end;

function T095HFO.GetCtaFdv: Integer;
begin
  Result := FCtaFdv;
end;

procedure T095HFO.SetCtaFdv(const pCtaFdv: Integer);
begin
  FCtaFdv := pCtaFdv;

  CheckField('CtaFdv');
end;

function T095HFO.GetCtaFcr: Integer;
begin
  Result := FCtaFcr;
end;

procedure T095HFO.SetCtaFcr(const pCtaFcr: Integer);
begin
  FCtaFcr := pCtaFcr;

  CheckField('CtaFcr');
end;

function T095HFO.GetCtaAux: Integer;
begin
  Result := FCtaAux;
end;

procedure T095HFO.SetCtaAux(const pCtaAux: Integer);
begin
  FCtaAux := pCtaAux;

  CheckField('CtaAux');
end;

function T095HFO.GetCtaAad: Integer;
begin
  Result := FCtaAad;
end;

procedure T095HFO.SetCtaAad(const pCtaAad: Integer);
begin
  FCtaAad := pCtaAad;

  CheckField('CtaAad');
end;

function T095HFO.GetConEst: Char;
begin
  Result := FConEst;
end;

procedure T095HFO.SetConEst(const pConEst: Char);
begin
  FConEst := pConEst;

  CheckField('ConEst');
end;

function T095HFO.GetPerFre: Double;
begin
  Result := FPerFre;
end;

procedure T095HFO.SetPerFre(const pPerFre: Double);
begin
  FPerFre := pPerFre;

  CheckField('PerFre');
end;

function T095HFO.GetPerSeg: Double;
begin
  Result := FPerSeg;
end;

procedure T095HFO.SetPerSeg(const pPerSeg: Double);
begin
  FPerSeg := pPerSeg;

  CheckField('PerSeg');
end;

function T095HFO.GetPerEmb: Double;
begin
  Result := FPerEmb;
end;

procedure T095HFO.SetPerEmb(const pPerEmb: Double);
begin
  FPerEmb := pPerEmb;

  CheckField('PerEmb');
end;

function T095HFO.GetPerEnc: Double;
begin
  Result := FPerEnc;
end;

procedure T095HFO.SetPerEnc(const pPerEnc: Double);
begin
  FPerEnc := pPerEnc;

  CheckField('PerEnc');
end;

function T095HFO.GetPerOut: Double;
begin
  Result := FPerOut;
end;

procedure T095HFO.SetPerOut(const pPerOut: Double);
begin
  FPerOut := pPerOut;

  CheckField('PerOut');
end;

function T095HFO.GetPerIss: Double;
begin
  Result := FPerIss;
end;

procedure T095HFO.SetPerIss(const pPerIss: Double);
begin
  FPerIss := pPerIss;

  CheckField('PerIss');
end;

function T095HFO.GetPerIrf: Double;
begin
  Result := FPerIrf;
end;

procedure T095HFO.SetPerIrf(const pPerIrf: Double);
begin
  FPerIrf := pPerIrf;

  CheckField('PerIrf');
end;

function T095HFO.GetSeqOrm: Integer;
begin
  Result := FSeqOrm;
end;

procedure T095HFO.SetSeqOrm(const pSeqOrm: Integer);
begin
  FSeqOrm := pSeqOrm;

  CheckField('SeqOrm');
end;

function T095HFO.GetCifFob: Char;
begin
  Result := FCifFob;
end;

procedure T095HFO.SetCifFob(const pCifFob: Char);
begin
  FCifFob := pCifFob;

  CheckField('CifFob');
end;

function T095HFO.GetCodFav: Integer;
begin
  Result := FCodFav;
end;

procedure T095HFO.SetCodFav(const pCodFav: Integer);
begin
  FCodFav := pCodFav;

  CheckField('CodFav');
end;

function T095HFO.GetPerIne: Double;
begin
  Result := FPerIne;
end;

procedure T095HFO.SetPerIne(const pPerIne: Double);
begin
  FPerIne := pPerIne;

  CheckField('PerIne');
end;

function T095HFO.GetRvlCfr: Char;
begin
  Result := FRvlCfr;
end;

procedure T095HFO.SetRvlCfr(const pRvlCfr: Char);
begin
  FRvlCfr := pRvlCfr;

  CheckField('RvlCfr');
end;

function T095HFO.GetRvlFre: Char;
begin
  Result := FRvlFre;
end;

procedure T095HFO.SetRvlFre(const pRvlFre: Char);
begin
  FRvlFre := pRvlFre;

  CheckField('RvlFre');
end;

function T095HFO.GetRvlSeg: Char;
begin
  Result := FRvlSeg;
end;

procedure T095HFO.SetRvlSeg(const pRvlSeg: Char);
begin
  FRvlSeg := pRvlSeg;

  CheckField('RvlSeg');
end;

function T095HFO.GetRvlEmb: Char;
begin
  Result := FRvlEmb;
end;

procedure T095HFO.SetRvlEmb(const pRvlEmb: Char);
begin
  FRvlEmb := pRvlEmb;

  CheckField('RvlEmb');
end;

function T095HFO.GetRvlEnc: Char;
begin
  Result := FRvlEnc;
end;

procedure T095HFO.SetRvlEnc(const pRvlEnc: Char);
begin
  FRvlEnc := pRvlEnc;

  CheckField('RvlEnc');
end;

function T095HFO.GetRvlOut: Char;
begin
  Result := FRvlOut;
end;

procedure T095HFO.SetRvlOut(const pRvlOut: Char);
begin
  FRvlOut := pRvlOut;

  CheckField('RvlOut');
end;

function T095HFO.GetRvlDar: Char;
begin
  Result := FRvlDar;
end;

procedure T095HFO.SetRvlDar(const pRvlDar: Char);
begin
  FRvlDar := pRvlDar;

  CheckField('RvlDar');
end;

function T095HFO.GetRvlFei: Char;
begin
  Result := FRvlFei;
end;

procedure T095HFO.SetRvlFei(const pRvlFei: Char);
begin
  FRvlFei := pRvlFei;

  CheckField('RvlFei');
end;

function T095HFO.GetRvlSei: Char;
begin
  Result := FRvlSei;
end;

procedure T095HFO.SetRvlSei(const pRvlSei: Char);
begin
  FRvlSei := pRvlSei;

  CheckField('RvlSei');
end;

function T095HFO.GetRvlOui: Char;
begin
  Result := FRvlOui;
end;

procedure T095HFO.SetRvlOui(const pRvlOui: Char);
begin
  FRvlOui := pRvlOui;

  CheckField('RvlOui');
end;

function T095HFO.GetCodDep: string;
begin
  Result := FCodDep;
end;

procedure T095HFO.SetCodDep(const pCodDep: string);
begin
  FCodDep := pCodDep;

  CheckField('CodDep');
end;

function T095HFO.GetUsuGer: Integer;
begin
  Result := FUsuGer;
end;

procedure T095HFO.SetUsuGer(const pUsuGer: Integer);
begin
  FUsuGer := pUsuGer;

  CheckField('UsuGer');
end;

function T095HFO.GetDatGer: TDate;
begin
  Result := FDatGer;
end;

procedure T095HFO.SetDatGer(const pDatGer: TDate);
begin
  FDatGer := pDatGer;

  CheckField('DatGer');
end;

function T095HFO.GetHorGer: Integer;
begin
  Result := FHorGer;
end;

procedure T095HFO.SetHorGer(const pHorGer: Integer);
begin
  FHorGer := pHorGer;

  CheckField('HorGer');
end;

function T095HFO.GetUsuAlt: Integer;
begin
  Result := FUsuAlt;
end;

procedure T095HFO.SetUsuAlt(const pUsuAlt: Integer);
begin
  FUsuAlt := pUsuAlt;

  CheckField('UsuAlt');
end;

function T095HFO.GetDatAlt: TDate;
begin
  Result := FDatAlt;
end;

procedure T095HFO.SetDatAlt(const pDatAlt: TDate);
begin
  FDatAlt := pDatAlt;

  CheckField('DatAlt');
end;

function T095HFO.GetHorAlt: Integer;
begin
  Result := FHorAlt;
end;

procedure T095HFO.SetHorAlt(const pHorAlt: Integer);
begin
  FHorAlt := pHorAlt;

  CheckField('HorAlt');
end;

function T095HFO.GetForMon: Char;
begin
  Result := FForMon;
end;

procedure T095HFO.SetForMon(const pForMon: Char);
begin
  FForMon := pForMon;

  CheckField('ForMon');
end;

function T095HFO.GetSerCur: string;
begin
  Result := FSerCur;
end;

procedure T095HFO.SetSerCur(const pSerCur: string);
begin
  FSerCur := pSerCur;

  CheckField('SerCur');
end;

function T095HFO.GetPgtMon: string;
begin
  Result := FPgtMon;
end;

procedure T095HFO.SetPgtMon(const pPgtMon: string);
begin
  FPgtMon := pPgtMon;

  CheckField('PgtMon');
end;

function T095HFO.GetPgtFre: string;
begin
  Result := FPgtFre;
end;

procedure T095HFO.SetPgtFre(const pPgtFre: string);
begin
  FPgtFre := pPgtFre;

  CheckField('PgtFre');
end;

function T095HFO.GetTnsPro: string;
begin
  Result := FTnsPro;
end;

procedure T095HFO.SetTnsPro(const pTnsPro: string);
begin
  FTnsPro := pTnsPro;

  CheckField('TnsPro');
end;

function T095HFO.GetTnsSer: string;
begin
  Result := FTnsSer;
end;

procedure T095HFO.SetTnsSer(const pTnsSer: string);
begin
  FTnsSer := pTnsSer;

  CheckField('TnsSer');
end;

function T095HFO.GetCodEdc: string;
begin
  Result := FCodEdc;
end;

procedure T095HFO.SetCodEdc(const pCodEdc: string);
begin
  FCodEdc := pCodEdc;

  CheckField('CodEdc');
end;

function T095HFO.GetUSU_DiaEsp1: Integer;
begin
  Result := FUSU_DiaEsp1;
end;

procedure T095HFO.SetUSU_DiaEsp1(const pUSU_DiaEsp1: Integer);
begin
  FUSU_DiaEsp1 := pUSU_DiaEsp1;

  CheckField('USU_DiaEsp1');
end;

function T095HFO.GetUSU_DiaEsp2: Integer;
begin
  Result := FUSU_DiaEsp2;
end;

procedure T095HFO.SetUSU_DiaEsp2(const pUSU_DiaEsp2: Integer);
begin
  FUSU_DiaEsp2 := pUSU_DiaEsp2;

  CheckField('USU_DiaEsp2');
end;

function T095HFO.GetUSU_ConAva: Char;
begin
  Result := FUSU_ConAva;
end;

procedure T095HFO.SetUSU_ConAva(const pUSU_ConAva: Char);
begin
  FUSU_ConAva := pUSU_ConAva;

  CheckField('USU_ConAva');
end;

function T095HFO.GetUSU_BocPre: Char;
begin
  Result := FUSU_BocPre;
end;

procedure T095HFO.SetUSU_BocPre(const pUSU_BocPre: Char);
begin
  FUSU_BocPre := pUSU_BocPre;

  CheckField('USU_BocPre');
end;

function T095HFO.GetCodForOLD: Integer;
begin
  Result := FCodForOLD;
end;

procedure T095HFO.SetCodForOLD(const pCodFor: Integer);
begin
  FCodForOLD := pCodFor;
end;

function T095HFO.GetCodEmpOLD: Integer;
begin
  Result := FCodEmpOLD;
end;

procedure T095HFO.SetCodEmpOLD(const pCodEmp: Integer);
begin
  FCodEmpOLD := pCodEmp;
end;

function T095HFO.GetCodFilOLD: Integer;
begin
  Result := FCodFilOLD;
end;

procedure T095HFO.SetCodFilOLD(const pCodFil: Integer);
begin
  FCodFilOLD := pCodFil;
end;

function T095HFO.GetSalDupOLD: Double;
begin
  Result := FSalDupOLD;
end;

procedure T095HFO.SetSalDupOLD(const pSalDup: Double);
begin
  FSalDupOLD := pSalDup;
end;

function T095HFO.GetSalOutOLD: Double;
begin
  Result := FSalOutOLD;
end;

procedure T095HFO.SetSalOutOLD(const pSalOut: Double);
begin
  FSalOutOLD := pSalOut;
end;

function T095HFO.GetSalCreOLD: Double;
begin
  Result := FSalCreOLD;
end;

procedure T095HFO.SetSalCreOLD(const pSalCre: Double);
begin
  FSalCreOLD := pSalCre;
end;

function T095HFO.GetDatUpeOLD: TDate;
begin
  Result := FDatUpeOLD;
end;

procedure T095HFO.SetDatUpeOLD(const pDatUpe: TDate);
begin
  FDatUpeOLD := pDatUpe;
end;

function T095HFO.GetVlrUpeOLD: Double;
begin
  Result := FVlrUpeOLD;
end;

procedure T095HFO.SetVlrUpeOLD(const pVlrUpe: Double);
begin
  FVlrUpeOLD := pVlrUpe;
end;

function T095HFO.GetDatUcpOLD: TDate;
begin
  Result := FDatUcpOLD;
end;

procedure T095HFO.SetDatUcpOLD(const pDatUcp: TDate);
begin
  FDatUcpOLD := pDatUcp;
end;

function T095HFO.GetVlrUcpOLD: Double;
begin
  Result := FVlrUcpOLD;
end;

procedure T095HFO.SetVlrUcpOLD(const pVlrUcp: Double);
begin
  FVlrUcpOLD := pVlrUcp;
end;

function T095HFO.GetDatMcpOLD: TDate;
begin
  Result := FDatMcpOLD;
end;

procedure T095HFO.SetDatMcpOLD(const pDatMcp: TDate);
begin
  FDatMcpOLD := pDatMcp;
end;

function T095HFO.GetVlrMcpOLD: Double;
begin
  Result := FVlrMcpOLD;
end;

procedure T095HFO.SetVlrMcpOLD(const pVlrMcp: Double);
begin
  FVlrMcpOLD := pVlrMcp;
end;

function T095HFO.GetDatUpgOLD: TDate;
begin
  Result := FDatUpgOLD;
end;

procedure T095HFO.SetDatUpgOLD(const pDatUpg: TDate);
begin
  FDatUpgOLD := pDatUpg;
end;

function T095HFO.GetVlrUpgOLD: Double;
begin
  Result := FVlrUpgOLD;
end;

procedure T095HFO.SetVlrUpgOLD(const pVlrUpg: Double);
begin
  FVlrUpgOLD := pVlrUpg;
end;

function T095HFO.GetQtdPgtOLD: Integer;
begin
  Result := FQtdPgtOLD;
end;

procedure T095HFO.SetQtdPgtOLD(const pQtdPgt: Integer);
begin
  FQtdPgtOLD := pQtdPgt;
end;

function T095HFO.GetDatAtrOLD: TDate;
begin
  Result := FDatAtrOLD;
end;

procedure T095HFO.SetDatAtrOLD(const pDatAtr: TDate);
begin
  FDatAtrOLD := pDatAtr;
end;

function T095HFO.GetVlrAtrOLD: Double;
begin
  Result := FVlrAtrOLD;
end;

procedure T095HFO.SetVlrAtrOLD(const pVlrAtr: Double);
begin
  FVlrAtrOLD := pVlrAtr;
end;

function T095HFO.GetMaiAtrOLD: Integer;
begin
  Result := FMaiAtrOLD;
end;

procedure T095HFO.SetMaiAtrOLD(const pMaiAtr: Integer);
begin
  FMaiAtrOLD := pMaiAtr;
end;

function T095HFO.GetMedAtrOLD: Integer;
begin
  Result := FMedAtrOLD;
end;

procedure T095HFO.SetMedAtrOLD(const pMedAtr: Integer);
begin
  FMedAtrOLD := pMedAtr;
end;

function T095HFO.GetPrzEntOLD: Integer;
begin
  Result := FPrzEntOLD;
end;

procedure T095HFO.SetPrzEntOLD(const pPrzEnt: Integer);
begin
  FPrzEntOLD := pPrzEnt;
end;

function T095HFO.GetCprCqlOLD: Integer;
begin
  Result := FCprCqlOLD;
end;

procedure T095HFO.SetCprCqlOLD(const pCprCql: Integer);
begin
  FCprCqlOLD := pCprCql;
end;

function T095HFO.GetCprCpeOLD: Integer;
begin
  Result := FCprCpeOLD;
end;

procedure T095HFO.SetCprCpeOLD(const pCprCpe: Integer);
begin
  FCprCpeOLD := pCprCpe;
end;

function T095HFO.GetCprCatOLD: Integer;
begin
  Result := FCprCatOLD;
end;

procedure T095HFO.SetCprCatOLD(const pCprCat: Integer);
begin
  FCprCatOLD := pCprCat;
end;

function T095HFO.GetCodTprOLD: string;
begin
  Result := FCodTprOLD;
end;

procedure T095HFO.SetCodTprOLD(const pCodTpr: string);
begin
  FCodTprOLD := pCodTpr;
end;

function T095HFO.GetCodCpgOLD: string;
begin
  Result := FCodCpgOLD;
end;

procedure T095HFO.SetCodCpgOLD(const pCodCpg: string);
begin
  FCodCpgOLD := pCodCpg;
end;

function T095HFO.GetCodFpgOLD: Integer;
begin
  Result := FCodFpgOLD;
end;

procedure T095HFO.SetCodFpgOLD(const pCodFpg: Integer);
begin
  FCodFpgOLD := pCodFpg;
end;

function T095HFO.GetQtdDcvOLD: Integer;
begin
  Result := FQtdDcvOLD;
end;

procedure T095HFO.SetQtdDcvOLD(const pQtdDcv: Integer);
begin
  FQtdDcvOLD := pQtdDcv;
end;

function T095HFO.GetCriEdvOLD: Char;
begin
  Result := FCriEdvOLD;
end;

procedure T095HFO.SetCriEdvOLD(const pCriEdv: Char);
begin
  FCriEdvOLD := pCriEdv;
end;

function T095HFO.GetCodTraOLD: Integer;
begin
  Result := FCodTraOLD;
end;

procedure T095HFO.SetCodTraOLD(const pCodTra: Integer);
begin
  FCodTraOLD := pCodTra;
end;

function T095HFO.GetCodPorOLD: string;
begin
  Result := FCodPorOLD;
end;

procedure T095HFO.SetCodPorOLD(const pCodPor: string);
begin
  FCodPorOLD := pCodPor;
end;

function T095HFO.GetCodCrtOLD: string;
begin
  Result := FCodCrtOLD;
end;

procedure T095HFO.SetCodCrtOLD(const pCodCrt: string);
begin
  FCodCrtOLD := pCodCrt;
end;

function T095HFO.GetCodBanOLD: string;
begin
  Result := FCodBanOLD;
end;

procedure T095HFO.SetCodBanOLD(const pCodBan: string);
begin
  FCodBanOLD := pCodBan;
end;

function T095HFO.GetCodAgeOLD: string;
begin
  Result := FCodAgeOLD;
end;

procedure T095HFO.SetCodAgeOLD(const pCodAge: string);
begin
  FCodAgeOLD := pCodAge;
end;

function T095HFO.GetCcbForOLD: string;
begin
  Result := FCcbForOLD;
end;

procedure T095HFO.SetCcbForOLD(const pCcbFor: string);
begin
  FCcbForOLD := pCcbFor;
end;

function T095HFO.GetCodCrpOLD: string;
begin
  Result := FCodCrpOLD;
end;

procedure T095HFO.SetCodCrpOLD(const pCodCrp: string);
begin
  FCodCrpOLD := pCodCrp;
end;

function T095HFO.GetUltDupOLD: Integer;
begin
  Result := FUltDupOLD;
end;

procedure T095HFO.SetUltDupOLD(const pUltDup: Integer);
begin
  FUltDupOLD := pUltDup;
end;

function T095HFO.GetPagJmmOLD: Double;
begin
  Result := FPagJmmOLD;
end;

procedure T095HFO.SetPagJmmOLD(const pPagJmm: Double);
begin
  FPagJmmOLD := pPagJmm;
end;

function T095HFO.GetPagTirOLD: Char;
begin
  Result := FPagTirOLD;
end;

procedure T095HFO.SetPagTirOLD(const pPagTir: Char);
begin
  FPagTirOLD := pPagTir;
end;

function T095HFO.GetPagDtjOLD: Integer;
begin
  Result := FPagDtjOLD;
end;

procedure T095HFO.SetPagDtjOLD(const pPagDtj: Integer);
begin
  FPagDtjOLD := pPagDtj;
end;

function T095HFO.GetPagMulOLD: Double;
begin
  Result := FPagMulOLD;
end;

procedure T095HFO.SetPagMulOLD(const pPagMul: Double);
begin
  FPagMulOLD := pPagMul;
end;

function T095HFO.GetPagDtmOLD: Integer;
begin
  Result := FPagDtmOLD;
end;

procedure T095HFO.SetPagDtmOLD(const pPagDtm: Integer);
begin
  FPagDtmOLD := pPagDtm;
end;

function T095HFO.GetPerDscOLD: Double;
begin
  Result := FPerDscOLD;
end;

procedure T095HFO.SetPerDscOLD(const pPerDsc: Double);
begin
  FPerDscOLD := pPerDsc;
end;

function T095HFO.GetTolDscOLD: Integer;
begin
  Result := FTolDscOLD;
end;

procedure T095HFO.SetTolDscOLD(const pTolDsc: Integer);
begin
  FTolDscOLD := pTolDsc;
end;

function T095HFO.GetAntDscOLD: Char;
begin
  Result := FAntDscOLD;
end;

procedure T095HFO.SetAntDscOLD(const pAntDsc: Char);
begin
  FAntDscOLD := pAntDsc;
end;

function T095HFO.GetPagEevOLD: Integer;
begin
  Result := FPagEevOLD;
end;

procedure T095HFO.SetPagEevOLD(const pPagEev: Integer);
begin
  FPagEevOLD := pPagEev;
end;

function T095HFO.GetPerDs1OLD: Double;
begin
  Result := FPerDs1OLD;
end;

procedure T095HFO.SetPerDs1OLD(const pPerDs1: Double);
begin
  FPerDs1OLD := pPerDs1;
end;

function T095HFO.GetPerDs2OLD: Double;
begin
  Result := FPerDs2OLD;
end;

procedure T095HFO.SetPerDs2OLD(const pPerDs2: Double);
begin
  FPerDs2OLD := pPerDs2;
end;

function T095HFO.GetPerDs3OLD: Double;
begin
  Result := FPerDs3OLD;
end;

procedure T095HFO.SetPerDs3OLD(const pPerDs3: Double);
begin
  FPerDs3OLD := pPerDs3;
end;

function T095HFO.GetPerDs4OLD: Double;
begin
  Result := FPerDs4OLD;
end;

procedure T095HFO.SetPerDs4OLD(const pPerDs4: Double);
begin
  FPerDs4OLD := pPerDs4;
end;

function T095HFO.GetPerDs5OLD: Double;
begin
  Result := FPerDs5OLD;
end;

procedure T095HFO.SetPerDs5OLD(const pPerDs5: Double);
begin
  FPerDs5OLD := pPerDs5;
end;

function T095HFO.GetPerFunOLD: Double;
begin
  Result := FPerFunOLD;
end;

procedure T095HFO.SetPerFunOLD(const pPerFun: Double);
begin
  FPerFunOLD := pPerFun;
end;

function T095HFO.GetPerInsOLD: Double;
begin
  Result := FPerInsOLD;
end;

procedure T095HFO.SetPerInsOLD(const pPerIns: Double);
begin
  FPerInsOLD := pPerIns;
end;

function T095HFO.GetIndIndOLD: Char;
begin
  Result := FIndIndOLD;
end;

procedure T095HFO.SetIndIndOLD(const pIndInd: Char);
begin
  FIndIndOLD := pIndInd;
end;

function T095HFO.GetCriRatOLD: Integer;
begin
  Result := FCriRatOLD;
end;

procedure T095HFO.SetCriRatOLD(const pCriRat: Integer);
begin
  FCriRatOLD := pCriRat;
end;

function T095HFO.GetCtaRedOLD: Integer;
begin
  Result := FCtaRedOLD;
end;

procedure T095HFO.SetCtaRedOLD(const pCtaRed: Integer);
begin
  FCtaRedOLD := pCtaRed;
end;

function T095HFO.GetCtaRcrOLD: Integer;
begin
  Result := FCtaRcrOLD;
end;

procedure T095HFO.SetCtaRcrOLD(const pCtaRcr: Integer);
begin
  FCtaRcrOLD := pCtaRcr;
end;

function T095HFO.GetCtaFdvOLD: Integer;
begin
  Result := FCtaFdvOLD;
end;

procedure T095HFO.SetCtaFdvOLD(const pCtaFdv: Integer);
begin
  FCtaFdvOLD := pCtaFdv;
end;

function T095HFO.GetCtaFcrOLD: Integer;
begin
  Result := FCtaFcrOLD;
end;

procedure T095HFO.SetCtaFcrOLD(const pCtaFcr: Integer);
begin
  FCtaFcrOLD := pCtaFcr;
end;

function T095HFO.GetCtaAuxOLD: Integer;
begin
  Result := FCtaAuxOLD;
end;

procedure T095HFO.SetCtaAuxOLD(const pCtaAux: Integer);
begin
  FCtaAuxOLD := pCtaAux;
end;

function T095HFO.GetCtaAadOLD: Integer;
begin
  Result := FCtaAadOLD;
end;

procedure T095HFO.SetCtaAadOLD(const pCtaAad: Integer);
begin
  FCtaAadOLD := pCtaAad;
end;

function T095HFO.GetConEstOLD: Char;
begin
  Result := FConEstOLD;
end;

procedure T095HFO.SetConEstOLD(const pConEst: Char);
begin
  FConEstOLD := pConEst;
end;

function T095HFO.GetPerFreOLD: Double;
begin
  Result := FPerFreOLD;
end;

procedure T095HFO.SetPerFreOLD(const pPerFre: Double);
begin
  FPerFreOLD := pPerFre;
end;

function T095HFO.GetPerSegOLD: Double;
begin
  Result := FPerSegOLD;
end;

procedure T095HFO.SetPerSegOLD(const pPerSeg: Double);
begin
  FPerSegOLD := pPerSeg;
end;

function T095HFO.GetPerEmbOLD: Double;
begin
  Result := FPerEmbOLD;
end;

procedure T095HFO.SetPerEmbOLD(const pPerEmb: Double);
begin
  FPerEmbOLD := pPerEmb;
end;

function T095HFO.GetPerEncOLD: Double;
begin
  Result := FPerEncOLD;
end;

procedure T095HFO.SetPerEncOLD(const pPerEnc: Double);
begin
  FPerEncOLD := pPerEnc;
end;

function T095HFO.GetPerOutOLD: Double;
begin
  Result := FPerOutOLD;
end;

procedure T095HFO.SetPerOutOLD(const pPerOut: Double);
begin
  FPerOutOLD := pPerOut;
end;

function T095HFO.GetPerIssOLD: Double;
begin
  Result := FPerIssOLD;
end;

procedure T095HFO.SetPerIssOLD(const pPerIss: Double);
begin
  FPerIssOLD := pPerIss;
end;

function T095HFO.GetPerIrfOLD: Double;
begin
  Result := FPerIrfOLD;
end;

procedure T095HFO.SetPerIrfOLD(const pPerIrf: Double);
begin
  FPerIrfOLD := pPerIrf;
end;

function T095HFO.GetSeqOrmOLD: Integer;
begin
  Result := FSeqOrmOLD;
end;

procedure T095HFO.SetSeqOrmOLD(const pSeqOrm: Integer);
begin
  FSeqOrmOLD := pSeqOrm;
end;

function T095HFO.GetCifFobOLD: Char;
begin
  Result := FCifFobOLD;
end;

procedure T095HFO.SetCifFobOLD(const pCifFob: Char);
begin
  FCifFobOLD := pCifFob;
end;

function T095HFO.GetCodFavOLD: Integer;
begin
  Result := FCodFavOLD;
end;

procedure T095HFO.SetCodFavOLD(const pCodFav: Integer);
begin
  FCodFavOLD := pCodFav;
end;

function T095HFO.GetPerIneOLD: Double;
begin
  Result := FPerIneOLD;
end;

procedure T095HFO.SetPerIneOLD(const pPerIne: Double);
begin
  FPerIneOLD := pPerIne;
end;

function T095HFO.GetRvlCfrOLD: Char;
begin
  Result := FRvlCfrOLD;
end;

procedure T095HFO.SetRvlCfrOLD(const pRvlCfr: Char);
begin
  FRvlCfrOLD := pRvlCfr;
end;

function T095HFO.GetRvlFreOLD: Char;
begin
  Result := FRvlFreOLD;
end;

procedure T095HFO.SetRvlFreOLD(const pRvlFre: Char);
begin
  FRvlFreOLD := pRvlFre;
end;

function T095HFO.GetRvlSegOLD: Char;
begin
  Result := FRvlSegOLD;
end;

procedure T095HFO.SetRvlSegOLD(const pRvlSeg: Char);
begin
  FRvlSegOLD := pRvlSeg;
end;

function T095HFO.GetRvlEmbOLD: Char;
begin
  Result := FRvlEmbOLD;
end;

procedure T095HFO.SetRvlEmbOLD(const pRvlEmb: Char);
begin
  FRvlEmbOLD := pRvlEmb;
end;

function T095HFO.GetRvlEncOLD: Char;
begin
  Result := FRvlEncOLD;
end;

procedure T095HFO.SetRvlEncOLD(const pRvlEnc: Char);
begin
  FRvlEncOLD := pRvlEnc;
end;

function T095HFO.GetRvlOutOLD: Char;
begin
  Result := FRvlOutOLD;
end;

procedure T095HFO.SetRvlOutOLD(const pRvlOut: Char);
begin
  FRvlOutOLD := pRvlOut;
end;

function T095HFO.GetRvlDarOLD: Char;
begin
  Result := FRvlDarOLD;
end;

procedure T095HFO.SetRvlDarOLD(const pRvlDar: Char);
begin
  FRvlDarOLD := pRvlDar;
end;

function T095HFO.GetRvlFeiOLD: Char;
begin
  Result := FRvlFeiOLD;
end;

procedure T095HFO.SetRvlFeiOLD(const pRvlFei: Char);
begin
  FRvlFeiOLD := pRvlFei;
end;

function T095HFO.GetRvlSeiOLD: Char;
begin
  Result := FRvlSeiOLD;
end;

procedure T095HFO.SetRvlSeiOLD(const pRvlSei: Char);
begin
  FRvlSeiOLD := pRvlSei;
end;

function T095HFO.GetRvlOuiOLD: Char;
begin
  Result := FRvlOuiOLD;
end;

procedure T095HFO.SetRvlOuiOLD(const pRvlOui: Char);
begin
  FRvlOuiOLD := pRvlOui;
end;

function T095HFO.GetCodDepOLD: string;
begin
  Result := FCodDepOLD;
end;

procedure T095HFO.SetCodDepOLD(const pCodDep: string);
begin
  FCodDepOLD := pCodDep;
end;

function T095HFO.GetUsuGerOLD: Integer;
begin
  Result := FUsuGerOLD;
end;

procedure T095HFO.SetUsuGerOLD(const pUsuGer: Integer);
begin
  FUsuGerOLD := pUsuGer;
end;

function T095HFO.GetDatGerOLD: TDate;
begin
  Result := FDatGerOLD;
end;

procedure T095HFO.SetDatGerOLD(const pDatGer: TDate);
begin
  FDatGerOLD := pDatGer;
end;

function T095HFO.GetHorGerOLD: Integer;
begin
  Result := FHorGerOLD;
end;

procedure T095HFO.SetHorGerOLD(const pHorGer: Integer);
begin
  FHorGerOLD := pHorGer;
end;

function T095HFO.GetUsuAltOLD: Integer;
begin
  Result := FUsuAltOLD;
end;

procedure T095HFO.SetUsuAltOLD(const pUsuAlt: Integer);
begin
  FUsuAltOLD := pUsuAlt;
end;

function T095HFO.GetDatAltOLD: TDate;
begin
  Result := FDatAltOLD;
end;

procedure T095HFO.SetDatAltOLD(const pDatAlt: TDate);
begin
  FDatAltOLD := pDatAlt;
end;

function T095HFO.GetHorAltOLD: Integer;
begin
  Result := FHorAltOLD;
end;

procedure T095HFO.SetHorAltOLD(const pHorAlt: Integer);
begin
  FHorAltOLD := pHorAlt;
end;

function T095HFO.GetForMonOLD: Char;
begin
  Result := FForMonOLD;
end;

procedure T095HFO.SetForMonOLD(const pForMon: Char);
begin
  FForMonOLD := pForMon;
end;

function T095HFO.GetSerCurOLD: string;
begin
  Result := FSerCurOLD;
end;

procedure T095HFO.SetSerCurOLD(const pSerCur: string);
begin
  FSerCurOLD := pSerCur;
end;

function T095HFO.GetPgtMonOLD: string;
begin
  Result := FPgtMonOLD;
end;

procedure T095HFO.SetPgtMonOLD(const pPgtMon: string);
begin
  FPgtMonOLD := pPgtMon;
end;

function T095HFO.GetPgtFreOLD: string;
begin
  Result := FPgtFreOLD;
end;

procedure T095HFO.SetPgtFreOLD(const pPgtFre: string);
begin
  FPgtFreOLD := pPgtFre;
end;

function T095HFO.GetTnsProOLD: string;
begin
  Result := FTnsProOLD;
end;

procedure T095HFO.SetTnsProOLD(const pTnsPro: string);
begin
  FTnsProOLD := pTnsPro;
end;

function T095HFO.GetTnsSerOLD: string;
begin
  Result := FTnsSerOLD;
end;

procedure T095HFO.SetTnsSerOLD(const pTnsSer: string);
begin
  FTnsSerOLD := pTnsSer;
end;

function T095HFO.GetCodEdcOLD: string;
begin
  Result := FCodEdcOLD;
end;

procedure T095HFO.SetCodEdcOLD(const pCodEdc: string);
begin
  FCodEdcOLD := pCodEdc;
end;

function T095HFO.GetUSU_DiaEsp1OLD: Integer;
begin
  Result := FUSU_DiaEsp1OLD;
end;

procedure T095HFO.SetUSU_DiaEsp1OLD(const pUSU_DiaEsp1: Integer);
begin
  FUSU_DiaEsp1OLD := pUSU_DiaEsp1;
end;

function T095HFO.GetUSU_DiaEsp2OLD: Integer;
begin
  Result := FUSU_DiaEsp2OLD;
end;

procedure T095HFO.SetUSU_DiaEsp2OLD(const pUSU_DiaEsp2: Integer);
begin
  FUSU_DiaEsp2OLD := pUSU_DiaEsp2;
end;

function T095HFO.GetUSU_ConAvaOLD: Char;
begin
  Result := FUSU_ConAvaOLD;
end;

procedure T095HFO.SetUSU_ConAvaOLD(const pUSU_ConAva: Char);
begin
  FUSU_ConAvaOLD := pUSU_ConAva;
end;

function T095HFO.GetUSU_BocPreOLD: Char;
begin
  Result := FUSU_BocPreOLD;
end;

procedure T095HFO.SetUSU_BocPreOLD(const pUSU_BocPre: Char);
begin
  FUSU_BocPreOLD := pUSU_BocPre;
end;

procedure T095HFO.Registros_OLD();
begin
  FCodForOLD := FCodFor;
  FCodEmpOLD := FCodEmp;
  FCodFilOLD := FCodFil;
  FSalDupOLD := FSalDup;
  FSalOutOLD := FSalOut;
  FSalCreOLD := FSalCre;
  FDatUpeOLD := FDatUpe;
  FVlrUpeOLD := FVlrUpe;
  FDatUcpOLD := FDatUcp;
  FVlrUcpOLD := FVlrUcp;
  FDatMcpOLD := FDatMcp;
  FVlrMcpOLD := FVlrMcp;
  FDatUpgOLD := FDatUpg;
  FVlrUpgOLD := FVlrUpg;
  FQtdPgtOLD := FQtdPgt;
  FDatAtrOLD := FDatAtr;
  FVlrAtrOLD := FVlrAtr;
  FMaiAtrOLD := FMaiAtr;
  FMedAtrOLD := FMedAtr;
  FPrzEntOLD := FPrzEnt;
  FCprCqlOLD := FCprCql;
  FCprCpeOLD := FCprCpe;
  FCprCatOLD := FCprCat;
  FCodTprOLD := FCodTpr;
  FCodCpgOLD := FCodCpg;
  FCodFpgOLD := FCodFpg;
  FQtdDcvOLD := FQtdDcv;
  FCriEdvOLD := FCriEdv;
  FCodTraOLD := FCodTra;
  FCodPorOLD := FCodPor;
  FCodCrtOLD := FCodCrt;
  FCodBanOLD := FCodBan;
  FCodAgeOLD := FCodAge;
  FCcbForOLD := FCcbFor;
  FCodCrpOLD := FCodCrp;
  FUltDupOLD := FUltDup;
  FPagJmmOLD := FPagJmm;
  FPagTirOLD := FPagTir;
  FPagDtjOLD := FPagDtj;
  FPagMulOLD := FPagMul;
  FPagDtmOLD := FPagDtm;
  FPerDscOLD := FPerDsc;
  FTolDscOLD := FTolDsc;
  FAntDscOLD := FAntDsc;
  FPagEevOLD := FPagEev;
  FPerDs1OLD := FPerDs1;
  FPerDs2OLD := FPerDs2;
  FPerDs3OLD := FPerDs3;
  FPerDs4OLD := FPerDs4;
  FPerDs5OLD := FPerDs5;
  FPerFunOLD := FPerFun;
  FPerInsOLD := FPerIns;
  FIndIndOLD := FIndInd;
  FCriRatOLD := FCriRat;
  FCtaRedOLD := FCtaRed;
  FCtaRcrOLD := FCtaRcr;
  FCtaFdvOLD := FCtaFdv;
  FCtaFcrOLD := FCtaFcr;
  FCtaAuxOLD := FCtaAux;
  FCtaAadOLD := FCtaAad;
  FConEstOLD := FConEst;
  FPerFreOLD := FPerFre;
  FPerSegOLD := FPerSeg;
  FPerEmbOLD := FPerEmb;
  FPerEncOLD := FPerEnc;
  FPerOutOLD := FPerOut;
  FPerIssOLD := FPerIss;
  FPerIrfOLD := FPerIrf;
  FSeqOrmOLD := FSeqOrm;
  FCifFobOLD := FCifFob;
  FCodFavOLD := FCodFav;
  FPerIneOLD := FPerIne;
  FRvlCfrOLD := FRvlCfr;
  FRvlFreOLD := FRvlFre;
  FRvlSegOLD := FRvlSeg;
  FRvlEmbOLD := FRvlEmb;
  FRvlEncOLD := FRvlEnc;
  FRvlOutOLD := FRvlOut;
  FRvlDarOLD := FRvlDar;
  FRvlFeiOLD := FRvlFei;
  FRvlSeiOLD := FRvlSei;
  FRvlOuiOLD := FRvlOui;
  FCodDepOLD := FCodDep;
  FUsuGerOLD := FUsuGer;
  FDatGerOLD := FDatGer;
  FHorGerOLD := FHorGer;
  FUsuAltOLD := FUsuAlt;
  FDatAltOLD := FDatAlt;
  FHorAltOLD := FHorAlt;
  FForMonOLD := FForMon;
  FSerCurOLD := FSerCur;
  FPgtMonOLD := FPgtMon;
  FPgtFreOLD := FPgtFre;
  FTnsProOLD := FTnsPro;
  FTnsSerOLD := FTnsSer;
  FCodEdcOLD := FCodEdc;
  FUSU_DiaEsp1OLD := FUSU_DiaEsp1;
  FUSU_DiaEsp2OLD := FUSU_DiaEsp2;
  FUSU_ConAvaOLD := FUSU_ConAva;
  FUSU_BocPreOLD := FUSU_BocPre;

  inherited;
end;

procedure T095HFO.RetornarValores();
begin
  FCodFor := FCodForOLD;
  FCodEmp := FCodEmpOLD;
  FCodFil := FCodFilOLD;
  FSalDup := FSalDupOLD;
  FSalOut := FSalOutOLD;
  FSalCre := FSalCreOLD;
  FDatUpe := FDatUpeOLD;
  FVlrUpe := FVlrUpeOLD;
  FDatUcp := FDatUcpOLD;
  FVlrUcp := FVlrUcpOLD;
  FDatMcp := FDatMcpOLD;
  FVlrMcp := FVlrMcpOLD;
  FDatUpg := FDatUpgOLD;
  FVlrUpg := FVlrUpgOLD;
  FQtdPgt := FQtdPgtOLD;
  FDatAtr := FDatAtrOLD;
  FVlrAtr := FVlrAtrOLD;
  FMaiAtr := FMaiAtrOLD;
  FMedAtr := FMedAtrOLD;
  FPrzEnt := FPrzEntOLD;
  FCprCql := FCprCqlOLD;
  FCprCpe := FCprCpeOLD;
  FCprCat := FCprCatOLD;
  FCodTpr := FCodTprOLD;
  FCodCpg := FCodCpgOLD;
  FCodFpg := FCodFpgOLD;
  FQtdDcv := FQtdDcvOLD;
  FCriEdv := FCriEdvOLD;
  FCodTra := FCodTraOLD;
  FCodPor := FCodPorOLD;
  FCodCrt := FCodCrtOLD;
  FCodBan := FCodBanOLD;
  FCodAge := FCodAgeOLD;
  FCcbFor := FCcbForOLD;
  FCodCrp := FCodCrpOLD;
  FUltDup := FUltDupOLD;
  FPagJmm := FPagJmmOLD;
  FPagTir := FPagTirOLD;
  FPagDtj := FPagDtjOLD;
  FPagMul := FPagMulOLD;
  FPagDtm := FPagDtmOLD;
  FPerDsc := FPerDscOLD;
  FTolDsc := FTolDscOLD;
  FAntDsc := FAntDscOLD;
  FPagEev := FPagEevOLD;
  FPerDs1 := FPerDs1OLD;
  FPerDs2 := FPerDs2OLD;
  FPerDs3 := FPerDs3OLD;
  FPerDs4 := FPerDs4OLD;
  FPerDs5 := FPerDs5OLD;
  FPerFun := FPerFunOLD;
  FPerIns := FPerInsOLD;
  FIndInd := FIndIndOLD;
  FCriRat := FCriRatOLD;
  FCtaRed := FCtaRedOLD;
  FCtaRcr := FCtaRcrOLD;
  FCtaFdv := FCtaFdvOLD;
  FCtaFcr := FCtaFcrOLD;
  FCtaAux := FCtaAuxOLD;
  FCtaAad := FCtaAadOLD;
  FConEst := FConEstOLD;
  FPerFre := FPerFreOLD;
  FPerSeg := FPerSegOLD;
  FPerEmb := FPerEmbOLD;
  FPerEnc := FPerEncOLD;
  FPerOut := FPerOutOLD;
  FPerIss := FPerIssOLD;
  FPerIrf := FPerIrfOLD;
  FSeqOrm := FSeqOrmOLD;
  FCifFob := FCifFobOLD;
  FCodFav := FCodFavOLD;
  FPerIne := FPerIneOLD;
  FRvlCfr := FRvlCfrOLD;
  FRvlFre := FRvlFreOLD;
  FRvlSeg := FRvlSegOLD;
  FRvlEmb := FRvlEmbOLD;
  FRvlEnc := FRvlEncOLD;
  FRvlOut := FRvlOutOLD;
  FRvlDar := FRvlDarOLD;
  FRvlFei := FRvlFeiOLD;
  FRvlSei := FRvlSeiOLD;
  FRvlOui := FRvlOuiOLD;
  FCodDep := FCodDepOLD;
  FUsuGer := FUsuGerOLD;
  FDatGer := FDatGerOLD;
  FHorGer := FHorGerOLD;
  FUsuAlt := FUsuAltOLD;
  FDatAlt := FDatAltOLD;
  FHorAlt := FHorAltOLD;
  FForMon := FForMonOLD;
  FSerCur := FSerCurOLD;
  FPgtMon := FPgtMonOLD;
  FPgtFre := FPgtFreOLD;
  FTnsPro := FTnsProOLD;
  FTnsSer := FTnsSerOLD;
  FCodEdc := FCodEdcOLD;
  FUSU_DiaEsp1 := FUSU_DiaEsp1OLD;
  FUSU_DiaEsp2 := FUSU_DiaEsp2OLD;
  FUSU_ConAva := FUSU_ConAvaOLD;
  FUSU_BocPre := FUSU_BocPreOLD;
end;

end.
