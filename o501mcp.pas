unit o501mcp;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, oTabelas, DateUtils;

type

  T501MCP = class(TTabelaPadrao)
  private
    FCodEmp: Integer;
    FCodFil: Integer;
    FNumTit: string;
    FCodTpt: string;
    FCodFor: Integer;
    FSeqMov: Integer;
    FCodTns: string;
    FDatMov: TDate;
    FNumDoc: string;
    FObsMcp: string;
    FVctPro: TDate;
    FProJrs: Char;
    FVlrAbe: Double;
    FCodFrj: string;
    FDatPgt: TDate;
    FCodFpg: Integer;
    FCotMcp: Double;
    FDiaAtr: Integer;
    FDiaJrs: Integer;
    FSeqChe: string;
    FTnsCxb: string;
    FDatLib: TDate;
    FCodUsu: Integer;
    FDatApr: TDate;
    FHorApr: Integer;
    FVlrMov: Double;
    FVlrDsc: Double;
    FVlrOde: Double;
    FVlrJrs: Double;
    FVlrMul: Double;
    FVlrEnc: Double;
    FVlrCor: Double;
    FVlrOac: Double;
    FVlrIrf: Double;
    FOriIrf: Double;
    FVlrIss: Double;
    FOriIss: Double;
    FVlrIns: Double;
    FOriIns: Double;
    FVlrPit: Double;
    FOriPit: Double;
    FVlrBpt: Double;
    FVlrOpt: Double;
    FVlrCrt: Double;
    FOriCrt: Double;
    FVlrBct: Double;
    FVlrOct: Double;
    FVlrCsl: Double;
    FOriCsl: Double;
    FVlrBcl: Double;
    FVlrOcl: Double;
    FVlrOur: Double;
    FOriOur: Double;
    FVlrBor: Double;
    FVlrOor: Double;
    FVlrPis: Double;
    FVlrBpr: Double;
    FVlrCof: Double;
    FVlrBcr: Double;
    FVlrLiq: Double;
    FPerJrs: Double;
    FUltPgt: TDate;
    FCjmAnt: TDate;
    FJrsCal: Double;
    FCodPor: string;
    FCodCrt: string;
    FPorAnt: string;
    FCrtAnt: string;
    FEmpCco: Integer;
    FNumCco: string;
    FDatCco: TDate;
    FSeqCco: Integer;
    FNumPrj: Integer;
    FCodFpj: Integer;
    FCtaFin: Integer;
    FCtaRed: Integer;
    FCodCcu: string;
    FFilRlc: Integer;
    FNumRlc: string;
    FTptRlc: string;
    FForRlc: Integer;
    FSeqMcp: Integer;
    FSeqMcr: Integer;
    FTipPgt: string;
    FCodBan: string;
    FCodAge: string;
    FCcbFor: string;
    FIndVcr: Char;
    FLctFin: Char;
    FLotBai: Integer;
    FNumLot: Integer;
    FUsuGer: Integer;
    FDatGer: TDate;
    FHorGer: Integer;
    FIndExp: Integer;
    FFilFix: Integer;
    FNumFix: Integer;
    FIntImp: Char;
    FRotNap: Integer;
    FNumApr: Integer;
    FSitApr: string;

    FCodEmpOLD: Integer;
    FCodFilOLD: Integer;
    FNumTitOLD: string;
    FCodTptOLD: string;
    FCodForOLD: Integer;
    FSeqMovOLD: Integer;
    FCodTnsOLD: string;
    FDatMovOLD: TDate;
    FNumDocOLD: string;
    FObsMcpOLD: string;
    FVctProOLD: TDate;
    FProJrsOLD: Char;
    FVlrAbeOLD: Double;
    FCodFrjOLD: string;
    FDatPgtOLD: TDate;
    FCodFpgOLD: Integer;
    FCotMcpOLD: Double;
    FDiaAtrOLD: Integer;
    FDiaJrsOLD: Integer;
    FSeqCheOLD: string;
    FTnsCxbOLD: string;
    FDatLibOLD: TDate;
    FCodUsuOLD: Integer;
    FDatAprOLD: TDate;
    FHorAprOLD: Integer;
    FVlrMovOLD: Double;
    FVlrDscOLD: Double;
    FVlrOdeOLD: Double;
    FVlrJrsOLD: Double;
    FVlrMulOLD: Double;
    FVlrEncOLD: Double;
    FVlrCorOLD: Double;
    FVlrOacOLD: Double;
    FVlrIrfOLD: Double;
    FOriIrfOLD: Double;
    FVlrIssOLD: Double;
    FOriIssOLD: Double;
    FVlrInsOLD: Double;
    FOriInsOLD: Double;
    FVlrPitOLD: Double;
    FOriPitOLD: Double;
    FVlrBptOLD: Double;
    FVlrOptOLD: Double;
    FVlrCrtOLD: Double;
    FOriCrtOLD: Double;
    FVlrBctOLD: Double;
    FVlrOctOLD: Double;
    FVlrCslOLD: Double;
    FOriCslOLD: Double;
    FVlrBclOLD: Double;
    FVlrOclOLD: Double;
    FVlrOurOLD: Double;
    FOriOurOLD: Double;
    FVlrBorOLD: Double;
    FVlrOorOLD: Double;
    FVlrPisOLD: Double;
    FVlrBprOLD: Double;
    FVlrCofOLD: Double;
    FVlrBcrOLD: Double;
    FVlrLiqOLD: Double;
    FPerJrsOLD: Double;
    FUltPgtOLD: TDate;
    FCjmAntOLD: TDate;
    FJrsCalOLD: Double;
    FCodPorOLD: string;
    FCodCrtOLD: string;
    FPorAntOLD: string;
    FCrtAntOLD: string;
    FEmpCcoOLD: Integer;
    FNumCcoOLD: string;
    FDatCcoOLD: TDate;
    FSeqCcoOLD: Integer;
    FNumPrjOLD: Integer;
    FCodFpjOLD: Integer;
    FCtaFinOLD: Integer;
    FCtaRedOLD: Integer;
    FCodCcuOLD: string;
    FFilRlcOLD: Integer;
    FNumRlcOLD: string;
    FTptRlcOLD: string;
    FForRlcOLD: Integer;
    FSeqMcpOLD: Integer;
    FSeqMcrOLD: Integer;
    FTipPgtOLD: string;
    FCodBanOLD: string;
    FCodAgeOLD: string;
    FCcbForOLD: string;
    FIndVcrOLD: Char;
    FLctFinOLD: Char;
    FLotBaiOLD: Integer;
    FNumLotOLD: Integer;
    FUsuGerOLD: Integer;
    FDatGerOLD: TDate;
    FHorGerOLD: Integer;
    FIndExpOLD: Integer;
    FFilFixOLD: Integer;
    FNumFixOLD: Integer;
    FIntImpOLD: Char;
    FRotNapOLD: Integer;
    FNumAprOLD: Integer;
    FSitAprOLD: string;

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
    function GetSeqMov: Integer;
    procedure SetSeqMov(const pSeqMov: Integer);
    function GetCodTns: string;
    procedure SetCodTns(const pCodTns: string);
    function GetDatMov: TDate;
    procedure SetDatMov(const pDatMov: TDate);
    function GetNumDoc: string;
    procedure SetNumDoc(const pNumDoc: string);
    function GetObsMcp: string;
    procedure SetObsMcp(const pObsMcp: string);
    function GetVctPro: TDate;
    procedure SetVctPro(const pVctPro: TDate);
    function GetProJrs: Char;
    procedure SetProJrs(const pProJrs: Char);
    function GetVlrAbe: Double;
    procedure SetVlrAbe(const pVlrAbe: Double);
    function GetCodFrj: string;
    procedure SetCodFrj(const pCodFrj: string);
    function GetDatPgt: TDate;
    procedure SetDatPgt(const pDatPgt: TDate);
    function GetCodFpg: Integer;
    procedure SetCodFpg(const pCodFpg: Integer);
    function GetCotMcp: Double;
    procedure SetCotMcp(const pCotMcp: Double);
    function GetDiaAtr: Integer;
    procedure SetDiaAtr(const pDiaAtr: Integer);
    function GetDiaJrs: Integer;
    procedure SetDiaJrs(const pDiaJrs: Integer);
    function GetSeqChe: string;
    procedure SetSeqChe(const pSeqChe: string);
    function GetTnsCxb: string;
    procedure SetTnsCxb(const pTnsCxb: string);
    function GetDatLib: TDate;
    procedure SetDatLib(const pDatLib: TDate);
    function GetCodUsu: Integer;
    procedure SetCodUsu(const pCodUsu: Integer);
    function GetDatApr: TDate;
    procedure SetDatApr(const pDatApr: TDate);
    function GetHorApr: Integer;
    procedure SetHorApr(const pHorApr: Integer);
    function GetVlrMov: Double;
    procedure SetVlrMov(const pVlrMov: Double);
    function GetVlrDsc: Double;
    procedure SetVlrDsc(const pVlrDsc: Double);
    function GetVlrOde: Double;
    procedure SetVlrOde(const pVlrOde: Double);
    function GetVlrJrs: Double;
    procedure SetVlrJrs(const pVlrJrs: Double);
    function GetVlrMul: Double;
    procedure SetVlrMul(const pVlrMul: Double);
    function GetVlrEnc: Double;
    procedure SetVlrEnc(const pVlrEnc: Double);
    function GetVlrCor: Double;
    procedure SetVlrCor(const pVlrCor: Double);
    function GetVlrOac: Double;
    procedure SetVlrOac(const pVlrOac: Double);
    function GetVlrIrf: Double;
    procedure SetVlrIrf(const pVlrIrf: Double);
    function GetOriIrf: Double;
    procedure SetOriIrf(const pOriIrf: Double);
    function GetVlrIss: Double;
    procedure SetVlrIss(const pVlrIss: Double);
    function GetOriIss: Double;
    procedure SetOriIss(const pOriIss: Double);
    function GetVlrIns: Double;
    procedure SetVlrIns(const pVlrIns: Double);
    function GetOriIns: Double;
    procedure SetOriIns(const pOriIns: Double);
    function GetVlrPit: Double;
    procedure SetVlrPit(const pVlrPit: Double);
    function GetOriPit: Double;
    procedure SetOriPit(const pOriPit: Double);
    function GetVlrBpt: Double;
    procedure SetVlrBpt(const pVlrBpt: Double);
    function GetVlrOpt: Double;
    procedure SetVlrOpt(const pVlrOpt: Double);
    function GetVlrCrt: Double;
    procedure SetVlrCrt(const pVlrCrt: Double);
    function GetOriCrt: Double;
    procedure SetOriCrt(const pOriCrt: Double);
    function GetVlrBct: Double;
    procedure SetVlrBct(const pVlrBct: Double);
    function GetVlrOct: Double;
    procedure SetVlrOct(const pVlrOct: Double);
    function GetVlrCsl: Double;
    procedure SetVlrCsl(const pVlrCsl: Double);
    function GetOriCsl: Double;
    procedure SetOriCsl(const pOriCsl: Double);
    function GetVlrBcl: Double;
    procedure SetVlrBcl(const pVlrBcl: Double);
    function GetVlrOcl: Double;
    procedure SetVlrOcl(const pVlrOcl: Double);
    function GetVlrOur: Double;
    procedure SetVlrOur(const pVlrOur: Double);
    function GetOriOur: Double;
    procedure SetOriOur(const pOriOur: Double);
    function GetVlrBor: Double;
    procedure SetVlrBor(const pVlrBor: Double);
    function GetVlrOor: Double;
    procedure SetVlrOor(const pVlrOor: Double);
    function GetVlrPis: Double;
    procedure SetVlrPis(const pVlrPis: Double);
    function GetVlrBpr: Double;
    procedure SetVlrBpr(const pVlrBpr: Double);
    function GetVlrCof: Double;
    procedure SetVlrCof(const pVlrCof: Double);
    function GetVlrBcr: Double;
    procedure SetVlrBcr(const pVlrBcr: Double);
    function GetVlrLiq: Double;
    procedure SetVlrLiq(const pVlrLiq: Double);
    function GetPerJrs: Double;
    procedure SetPerJrs(const pPerJrs: Double);
    function GetUltPgt: TDate;
    procedure SetUltPgt(const pUltPgt: TDate);
    function GetCjmAnt: TDate;
    procedure SetCjmAnt(const pCjmAnt: TDate);
    function GetJrsCal: Double;
    procedure SetJrsCal(const pJrsCal: Double);
    function GetCodPor: string;
    procedure SetCodPor(const pCodPor: string);
    function GetCodCrt: string;
    procedure SetCodCrt(const pCodCrt: string);
    function GetPorAnt: string;
    procedure SetPorAnt(const pPorAnt: string);
    function GetCrtAnt: string;
    procedure SetCrtAnt(const pCrtAnt: string);
    function GetEmpCco: Integer;
    procedure SetEmpCco(const pEmpCco: Integer);
    function GetNumCco: string;
    procedure SetNumCco(const pNumCco: string);
    function GetDatCco: TDate;
    procedure SetDatCco(const pDatCco: TDate);
    function GetSeqCco: Integer;
    procedure SetSeqCco(const pSeqCco: Integer);
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
    function GetFilRlc: Integer;
    procedure SetFilRlc(const pFilRlc: Integer);
    function GetNumRlc: string;
    procedure SetNumRlc(const pNumRlc: string);
    function GetTptRlc: string;
    procedure SetTptRlc(const pTptRlc: string);
    function GetForRlc: Integer;
    procedure SetForRlc(const pForRlc: Integer);
    function GetSeqMcp: Integer;
    procedure SetSeqMcp(const pSeqMcp: Integer);
    function GetSeqMcr: Integer;
    procedure SetSeqMcr(const pSeqMcr: Integer);
    function GetTipPgt: string;
    procedure SetTipPgt(const pTipPgt: string);
    function GetCodBan: string;
    procedure SetCodBan(const pCodBan: string);
    function GetCodAge: string;
    procedure SetCodAge(const pCodAge: string);
    function GetCcbFor: string;
    procedure SetCcbFor(const pCcbFor: string);
    function GetIndVcr: Char;
    procedure SetIndVcr(const pIndVcr: Char);
    function GetLctFin: Char;
    procedure SetLctFin(const pLctFin: Char);
    function GetLotBai: Integer;
    procedure SetLotBai(const pLotBai: Integer);
    function GetNumLot: Integer;
    procedure SetNumLot(const pNumLot: Integer);
    function GetUsuGer: Integer;
    procedure SetUsuGer(const pUsuGer: Integer);
    function GetDatGer: TDate;
    procedure SetDatGer(const pDatGer: TDate);
    function GetHorGer: Integer;
    procedure SetHorGer(const pHorGer: Integer);
    function GetIndExp: Integer;
    procedure SetIndExp(const pIndExp: Integer);
    function GetFilFix: Integer;
    procedure SetFilFix(const pFilFix: Integer);
    function GetNumFix: Integer;
    procedure SetNumFix(const pNumFix: Integer);
    function GetIntImp: Char;
    procedure SetIntImp(const pIntImp: Char);
    function GetRotNap: Integer;
    procedure SetRotNap(const pRotNap: Integer);
    function GetNumApr: Integer;
    procedure SetNumApr(const pNumApr: Integer);
    function GetSitApr: string;
    procedure SetSitApr(const pSitApr: string);

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
    function GetSeqMovOld: Integer;
    procedure SetSeqMovOld(const pSeqMov: Integer);
    function GetCodTnsOld: string;
    procedure SetCodTnsOld(const pCodTns: string);
    function GetDatMovOld: TDate;
    procedure SetDatMovOld(const pDatMov: TDate);
    function GetNumDocOld: string;
    procedure SetNumDocOld(const pNumDoc: string);
    function GetObsMcpOld: string;
    procedure SetObsMcpOld(const pObsMcp: string);
    function GetVctProOld: TDate;
    procedure SetVctProOld(const pVctPro: TDate);
    function GetProJrsOld: Char;
    procedure SetProJrsOld(const pProJrs: Char);
    function GetVlrAbeOld: Double;
    procedure SetVlrAbeOld(const pVlrAbe: Double);
    function GetCodFrjOld: string;
    procedure SetCodFrjOld(const pCodFrj: string);
    function GetDatPgtOld: TDate;
    procedure SetDatPgtOld(const pDatPgt: TDate);
    function GetCodFpgOld: Integer;
    procedure SetCodFpgOld(const pCodFpg: Integer);
    function GetCotMcpOld: Double;
    procedure SetCotMcpOld(const pCotMcp: Double);
    function GetDiaAtrOld: Integer;
    procedure SetDiaAtrOld(const pDiaAtr: Integer);
    function GetDiaJrsOld: Integer;
    procedure SetDiaJrsOld(const pDiaJrs: Integer);
    function GetSeqCheOld: string;
    procedure SetSeqCheOld(const pSeqChe: string);
    function GetTnsCxbOld: string;
    procedure SetTnsCxbOld(const pTnsCxb: string);
    function GetDatLibOld: TDate;
    procedure SetDatLibOld(const pDatLib: TDate);
    function GetCodUsuOld: Integer;
    procedure SetCodUsuOld(const pCodUsu: Integer);
    function GetDatAprOld: TDate;
    procedure SetDatAprOld(const pDatApr: TDate);
    function GetHorAprOld: Integer;
    procedure SetHorAprOld(const pHorApr: Integer);
    function GetVlrMovOld: Double;
    procedure SetVlrMovOld(const pVlrMov: Double);
    function GetVlrDscOld: Double;
    procedure SetVlrDscOld(const pVlrDsc: Double);
    function GetVlrOdeOld: Double;
    procedure SetVlrOdeOld(const pVlrOde: Double);
    function GetVlrJrsOld: Double;
    procedure SetVlrJrsOld(const pVlrJrs: Double);
    function GetVlrMulOld: Double;
    procedure SetVlrMulOld(const pVlrMul: Double);
    function GetVlrEncOld: Double;
    procedure SetVlrEncOld(const pVlrEnc: Double);
    function GetVlrCorOld: Double;
    procedure SetVlrCorOld(const pVlrCor: Double);
    function GetVlrOacOld: Double;
    procedure SetVlrOacOld(const pVlrOac: Double);
    function GetVlrIrfOld: Double;
    procedure SetVlrIrfOld(const pVlrIrf: Double);
    function GetOriIrfOld: Double;
    procedure SetOriIrfOld(const pOriIrf: Double);
    function GetVlrIssOld: Double;
    procedure SetVlrIssOld(const pVlrIss: Double);
    function GetOriIssOld: Double;
    procedure SetOriIssOld(const pOriIss: Double);
    function GetVlrInsOld: Double;
    procedure SetVlrInsOld(const pVlrIns: Double);
    function GetOriInsOld: Double;
    procedure SetOriInsOld(const pOriIns: Double);
    function GetVlrPitOld: Double;
    procedure SetVlrPitOld(const pVlrPit: Double);
    function GetOriPitOld: Double;
    procedure SetOriPitOld(const pOriPit: Double);
    function GetVlrBptOld: Double;
    procedure SetVlrBptOld(const pVlrBpt: Double);
    function GetVlrOptOld: Double;
    procedure SetVlrOptOld(const pVlrOpt: Double);
    function GetVlrCrtOld: Double;
    procedure SetVlrCrtOld(const pVlrCrt: Double);
    function GetOriCrtOld: Double;
    procedure SetOriCrtOld(const pOriCrt: Double);
    function GetVlrBctOld: Double;
    procedure SetVlrBctOld(const pVlrBct: Double);
    function GetVlrOctOld: Double;
    procedure SetVlrOctOld(const pVlrOct: Double);
    function GetVlrCslOld: Double;
    procedure SetVlrCslOld(const pVlrCsl: Double);
    function GetOriCslOld: Double;
    procedure SetOriCslOld(const pOriCsl: Double);
    function GetVlrBclOld: Double;
    procedure SetVlrBclOld(const pVlrBcl: Double);
    function GetVlrOclOld: Double;
    procedure SetVlrOclOld(const pVlrOcl: Double);
    function GetVlrOurOld: Double;
    procedure SetVlrOurOld(const pVlrOur: Double);
    function GetOriOurOld: Double;
    procedure SetOriOurOld(const pOriOur: Double);
    function GetVlrBorOld: Double;
    procedure SetVlrBorOld(const pVlrBor: Double);
    function GetVlrOorOld: Double;
    procedure SetVlrOorOld(const pVlrOor: Double);
    function GetVlrPisOld: Double;
    procedure SetVlrPisOld(const pVlrPis: Double);
    function GetVlrBprOld: Double;
    procedure SetVlrBprOld(const pVlrBpr: Double);
    function GetVlrCofOld: Double;
    procedure SetVlrCofOld(const pVlrCof: Double);
    function GetVlrBcrOld: Double;
    procedure SetVlrBcrOld(const pVlrBcr: Double);
    function GetVlrLiqOld: Double;
    procedure SetVlrLiqOld(const pVlrLiq: Double);
    function GetPerJrsOld: Double;
    procedure SetPerJrsOld(const pPerJrs: Double);
    function GetUltPgtOld: TDate;
    procedure SetUltPgtOld(const pUltPgt: TDate);
    function GetCjmAntOld: TDate;
    procedure SetCjmAntOld(const pCjmAnt: TDate);
    function GetJrsCalOld: Double;
    procedure SetJrsCalOld(const pJrsCal: Double);
    function GetCodPorOld: string;
    procedure SetCodPorOld(const pCodPor: string);
    function GetCodCrtOld: string;
    procedure SetCodCrtOld(const pCodCrt: string);
    function GetPorAntOld: string;
    procedure SetPorAntOld(const pPorAnt: string);
    function GetCrtAntOld: string;
    procedure SetCrtAntOld(const pCrtAnt: string);
    function GetEmpCcoOld: Integer;
    procedure SetEmpCcoOld(const pEmpCco: Integer);
    function GetNumCcoOld: string;
    procedure SetNumCcoOld(const pNumCco: string);
    function GetDatCcoOld: TDate;
    procedure SetDatCcoOld(const pDatCco: TDate);
    function GetSeqCcoOld: Integer;
    procedure SetSeqCcoOld(const pSeqCco: Integer);
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
    function GetFilRlcOld: Integer;
    procedure SetFilRlcOld(const pFilRlc: Integer);
    function GetNumRlcOld: string;
    procedure SetNumRlcOld(const pNumRlc: string);
    function GetTptRlcOld: string;
    procedure SetTptRlcOld(const pTptRlc: string);
    function GetForRlcOld: Integer;
    procedure SetForRlcOld(const pForRlc: Integer);
    function GetSeqMcpOld: Integer;
    procedure SetSeqMcpOld(const pSeqMcp: Integer);
    function GetSeqMcrOld: Integer;
    procedure SetSeqMcrOld(const pSeqMcr: Integer);
    function GetTipPgtOld: string;
    procedure SetTipPgtOld(const pTipPgt: string);
    function GetCodBanOld: string;
    procedure SetCodBanOld(const pCodBan: string);
    function GetCodAgeOld: string;
    procedure SetCodAgeOld(const pCodAge: string);
    function GetCcbForOld: string;
    procedure SetCcbForOld(const pCcbFor: string);
    function GetIndVcrOld: Char;
    procedure SetIndVcrOld(const pIndVcr: Char);
    function GetLctFinOld: Char;
    procedure SetLctFinOld(const pLctFin: Char);
    function GetLotBaiOld: Integer;
    procedure SetLotBaiOld(const pLotBai: Integer);
    function GetNumLotOld: Integer;
    procedure SetNumLotOld(const pNumLot: Integer);
    function GetUsuGerOld: Integer;
    procedure SetUsuGerOld(const pUsuGer: Integer);
    function GetDatGerOld: TDate;
    procedure SetDatGerOld(const pDatGer: TDate);
    function GetHorGerOld: Integer;
    procedure SetHorGerOld(const pHorGer: Integer);
    function GetIndExpOld: Integer;
    procedure SetIndExpOld(const pIndExp: Integer);
    function GetFilFixOld: Integer;
    procedure SetFilFixOld(const pFilFix: Integer);
    function GetNumFixOld: Integer;
    procedure SetNumFixOld(const pNumFix: Integer);
    function GetIntImpOld: Char;
    procedure SetIntImpOld(const pIntImp: Char);
    function GetRotNapOld: Integer;
    procedure SetRotNapOld(const pRotNap: Integer);
    function GetNumAprOld: Integer;
    procedure SetNumAprOld(const pNumApr: Integer);
    function GetSitAprOld: string;
    procedure SetSitAprOld(const pSitApr: string);
  protected
    procedure Registros_OLD(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property CodEmp: Integer read GetCodEmp write SetCodEmp;
    property CodFil: Integer read GetCodFil write SetCodFil;
    property NumTit: string read GetNumTit write SetNumTit;
    property CodTpt: string read GetCodTpt write SetCodTpt;
    property CodFor: Integer read GetCodFor write SetCodFor;
    property SeqMov: Integer read GetSeqMov write SetSeqMov;
    property CodTns: string read GetCodTns write SetCodTns;
    property DatMov: TDate read GetDatMov write SetDatMov;
    property NumDoc: string read GetNumDoc write SetNumDoc;
    property ObsMcp: string read GetObsMcp write SetObsMcp;
    property VctPro: TDate read GetVctPro write SetVctPro;
    property ProJrs: Char read GetProJrs write SetProJrs;
    property VlrAbe: Double read GetVlrAbe write SetVlrAbe;
    property CodFrj: string read GetCodFrj write SetCodFrj;
    property DatPgt: TDate read GetDatPgt write SetDatPgt;
    property CodFpg: Integer read GetCodFpg write SetCodFpg;
    property CotMcp: Double read GetCotMcp write SetCotMcp;
    property DiaAtr: Integer read GetDiaAtr write SetDiaAtr;
    property DiaJrs: Integer read GetDiaJrs write SetDiaJrs;
    property SeqChe: string read GetSeqChe write SetSeqChe;
    property TnsCxb: string read GetTnsCxb write SetTnsCxb;
    property DatLib: TDate read GetDatLib write SetDatLib;
    property CodUsu: Integer read GetCodUsu write SetCodUsu;
    property DatApr: TDate read GetDatApr write SetDatApr;
    property HorApr: Integer read GetHorApr write SetHorApr;
    property VlrMov: Double read GetVlrMov write SetVlrMov;
    property VlrDsc: Double read GetVlrDsc write SetVlrDsc;
    property VlrOde: Double read GetVlrOde write SetVlrOde;
    property VlrJrs: Double read GetVlrJrs write SetVlrJrs;
    property VlrMul: Double read GetVlrMul write SetVlrMul;
    property VlrEnc: Double read GetVlrEnc write SetVlrEnc;
    property VlrCor: Double read GetVlrCor write SetVlrCor;
    property VlrOac: Double read GetVlrOac write SetVlrOac;
    property VlrIrf: Double read GetVlrIrf write SetVlrIrf;
    property OriIrf: Double read GetOriIrf write SetOriIrf;
    property VlrIss: Double read GetVlrIss write SetVlrIss;
    property OriIss: Double read GetOriIss write SetOriIss;
    property VlrIns: Double read GetVlrIns write SetVlrIns;
    property OriIns: Double read GetOriIns write SetOriIns;
    property VlrPit: Double read GetVlrPit write SetVlrPit;
    property OriPit: Double read GetOriPit write SetOriPit;
    property VlrBpt: Double read GetVlrBpt write SetVlrBpt;
    property VlrOpt: Double read GetVlrOpt write SetVlrOpt;
    property VlrCrt: Double read GetVlrCrt write SetVlrCrt;
    property OriCrt: Double read GetOriCrt write SetOriCrt;
    property VlrBct: Double read GetVlrBct write SetVlrBct;
    property VlrOct: Double read GetVlrOct write SetVlrOct;
    property VlrCsl: Double read GetVlrCsl write SetVlrCsl;
    property OriCsl: Double read GetOriCsl write SetOriCsl;
    property VlrBcl: Double read GetVlrBcl write SetVlrBcl;
    property VlrOcl: Double read GetVlrOcl write SetVlrOcl;
    property VlrOur: Double read GetVlrOur write SetVlrOur;
    property OriOur: Double read GetOriOur write SetOriOur;
    property VlrBor: Double read GetVlrBor write SetVlrBor;
    property VlrOor: Double read GetVlrOor write SetVlrOor;
    property VlrPis: Double read GetVlrPis write SetVlrPis;
    property VlrBpr: Double read GetVlrBpr write SetVlrBpr;
    property VlrCof: Double read GetVlrCof write SetVlrCof;
    property VlrBcr: Double read GetVlrBcr write SetVlrBcr;
    property VlrLiq: Double read GetVlrLiq write SetVlrLiq;
    property PerJrs: Double read GetPerJrs write SetPerJrs;
    property UltPgt: TDate read GetUltPgt write SetUltPgt;
    property CjmAnt: TDate read GetCjmAnt write SetCjmAnt;
    property JrsCal: Double read GetJrsCal write SetJrsCal;
    property CodPor: string read GetCodPor write SetCodPor;
    property CodCrt: string read GetCodCrt write SetCodCrt;
    property PorAnt: string read GetPorAnt write SetPorAnt;
    property CrtAnt: string read GetCrtAnt write SetCrtAnt;
    property EmpCco: Integer read GetEmpCco write SetEmpCco;
    property NumCco: string read GetNumCco write SetNumCco;
    property DatCco: TDate read GetDatCco write SetDatCco;
    property SeqCco: Integer read GetSeqCco write SetSeqCco;
    property NumPrj: Integer read GetNumPrj write SetNumPrj;
    property CodFpj: Integer read GetCodFpj write SetCodFpj;
    property CtaFin: Integer read GetCtaFin write SetCtaFin;
    property CtaRed: Integer read GetCtaRed write SetCtaRed;
    property CodCcu: string read GetCodCcu write SetCodCcu;
    property FilRlc: Integer read GetFilRlc write SetFilRlc;
    property NumRlc: string read GetNumRlc write SetNumRlc;
    property TptRlc: string read GetTptRlc write SetTptRlc;
    property ForRlc: Integer read GetForRlc write SetForRlc;
    property SeqMcp: Integer read GetSeqMcp write SetSeqMcp;
    property SeqMcr: Integer read GetSeqMcr write SetSeqMcr;
    property TipPgt: string read GetTipPgt write SetTipPgt;
    property CodBan: string read GetCodBan write SetCodBan;
    property CodAge: string read GetCodAge write SetCodAge;
    property CcbFor: string read GetCcbFor write SetCcbFor;
    property IndVcr: Char read GetIndVcr write SetIndVcr;
    property LctFin: Char read GetLctFin write SetLctFin;
    property LotBai: Integer read GetLotBai write SetLotBai;
    property NumLot: Integer read GetNumLot write SetNumLot;
    property UsuGer: Integer read GetUsuGer write SetUsuGer;
    property DatGer: TDate read GetDatGer write SetDatGer;
    property HorGer: Integer read GetHorGer write SetHorGer;
    property IndExp: Integer read GetIndExp write SetIndExp;
    property FilFix: Integer read GetFilFix write SetFilFix;
    property NumFix: Integer read GetNumFix write SetNumFix;
    property IntImp: Char read GetIntImp write SetIntImp;
    property RotNap: Integer read GetRotNap write SetRotNap;
    property NumApr: Integer read GetNumApr write SetNumApr;
    property SitApr: string read GetSitApr write SetSitApr;

    property OLD_CodEmp: Integer read GetCodEmpOLD write SetCodEmpOLD;
    property OLD_CodFil: Integer read GetCodFilOLD write SetCodFilOLD;
    property OLD_NumTit: string read GetNumTitOLD write SetNumTitOLD;
    property OLD_CodTpt: string read GetCodTptOLD write SetCodTptOLD;
    property OLD_CodFor: Integer read GetCodForOLD write SetCodForOLD;
    property OLD_SeqMov: Integer read GetSeqMovOLD write SetSeqMovOLD;
    property OLD_CodTns: string read GetCodTnsOLD write SetCodTnsOLD;
    property OLD_DatMov: TDate read GetDatMovOLD write SetDatMovOLD;
    property OLD_NumDoc: string read GetNumDocOLD write SetNumDocOLD;
    property OLD_ObsMcp: string read GetObsMcpOLD write SetObsMcpOLD;
    property OLD_VctPro: TDate read GetVctProOLD write SetVctProOLD;
    property OLD_ProJrs: Char read GetProJrsOLD write SetProJrsOLD;
    property OLD_VlrAbe: Double read GetVlrAbeOLD write SetVlrAbeOLD;
    property OLD_CodFrj: string read GetCodFrjOLD write SetCodFrjOLD;
    property OLD_DatPgt: TDate read GetDatPgtOLD write SetDatPgtOLD;
    property OLD_CodFpg: Integer read GetCodFpgOLD write SetCodFpgOLD;
    property OLD_CotMcp: Double read GetCotMcpOLD write SetCotMcpOLD;
    property OLD_DiaAtr: Integer read GetDiaAtrOLD write SetDiaAtrOLD;
    property OLD_DiaJrs: Integer read GetDiaJrsOLD write SetDiaJrsOLD;
    property OLD_SeqChe: string read GetSeqCheOLD write SetSeqCheOLD;
    property OLD_TnsCxb: string read GetTnsCxbOLD write SetTnsCxbOLD;
    property OLD_DatLib: TDate read GetDatLibOLD write SetDatLibOLD;
    property OLD_CodUsu: Integer read GetCodUsuOLD write SetCodUsuOLD;
    property OLD_DatApr: TDate read GetDatAprOLD write SetDatAprOLD;
    property OLD_HorApr: Integer read GetHorAprOLD write SetHorAprOLD;
    property OLD_VlrMov: Double read GetVlrMovOLD write SetVlrMovOLD;
    property OLD_VlrDsc: Double read GetVlrDscOLD write SetVlrDscOLD;
    property OLD_VlrOde: Double read GetVlrOdeOLD write SetVlrOdeOLD;
    property OLD_VlrJrs: Double read GetVlrJrsOLD write SetVlrJrsOLD;
    property OLD_VlrMul: Double read GetVlrMulOLD write SetVlrMulOLD;
    property OLD_VlrEnc: Double read GetVlrEncOLD write SetVlrEncOLD;
    property OLD_VlrCor: Double read GetVlrCorOLD write SetVlrCorOLD;
    property OLD_VlrOac: Double read GetVlrOacOLD write SetVlrOacOLD;
    property OLD_VlrIrf: Double read GetVlrIrfOLD write SetVlrIrfOLD;
    property OLD_OriIrf: Double read GetOriIrfOLD write SetOriIrfOLD;
    property OLD_VlrIss: Double read GetVlrIssOLD write SetVlrIssOLD;
    property OLD_OriIss: Double read GetOriIssOLD write SetOriIssOLD;
    property OLD_VlrIns: Double read GetVlrInsOLD write SetVlrInsOLD;
    property OLD_OriIns: Double read GetOriInsOLD write SetOriInsOLD;
    property OLD_VlrPit: Double read GetVlrPitOLD write SetVlrPitOLD;
    property OLD_OriPit: Double read GetOriPitOLD write SetOriPitOLD;
    property OLD_VlrBpt: Double read GetVlrBptOLD write SetVlrBptOLD;
    property OLD_VlrOpt: Double read GetVlrOptOLD write SetVlrOptOLD;
    property OLD_VlrCrt: Double read GetVlrCrtOLD write SetVlrCrtOLD;
    property OLD_OriCrt: Double read GetOriCrtOLD write SetOriCrtOLD;
    property OLD_VlrBct: Double read GetVlrBctOLD write SetVlrBctOLD;
    property OLD_VlrOct: Double read GetVlrOctOLD write SetVlrOctOLD;
    property OLD_VlrCsl: Double read GetVlrCslOLD write SetVlrCslOLD;
    property OLD_OriCsl: Double read GetOriCslOLD write SetOriCslOLD;
    property OLD_VlrBcl: Double read GetVlrBclOLD write SetVlrBclOLD;
    property OLD_VlrOcl: Double read GetVlrOclOLD write SetVlrOclOLD;
    property OLD_VlrOur: Double read GetVlrOurOLD write SetVlrOurOLD;
    property OLD_OriOur: Double read GetOriOurOLD write SetOriOurOLD;
    property OLD_VlrBor: Double read GetVlrBorOLD write SetVlrBorOLD;
    property OLD_VlrOor: Double read GetVlrOorOLD write SetVlrOorOLD;
    property OLD_VlrPis: Double read GetVlrPisOLD write SetVlrPisOLD;
    property OLD_VlrBpr: Double read GetVlrBprOLD write SetVlrBprOLD;
    property OLD_VlrCof: Double read GetVlrCofOLD write SetVlrCofOLD;
    property OLD_VlrBcr: Double read GetVlrBcrOLD write SetVlrBcrOLD;
    property OLD_VlrLiq: Double read GetVlrLiqOLD write SetVlrLiqOLD;
    property OLD_PerJrs: Double read GetPerJrsOLD write SetPerJrsOLD;
    property OLD_UltPgt: TDate read GetUltPgtOLD write SetUltPgtOLD;
    property OLD_CjmAnt: TDate read GetCjmAntOLD write SetCjmAntOLD;
    property OLD_JrsCal: Double read GetJrsCalOLD write SetJrsCalOLD;
    property OLD_CodPor: string read GetCodPorOLD write SetCodPorOLD;
    property OLD_CodCrt: string read GetCodCrtOLD write SetCodCrtOLD;
    property OLD_PorAnt: string read GetPorAntOLD write SetPorAntOLD;
    property OLD_CrtAnt: string read GetCrtAntOLD write SetCrtAntOLD;
    property OLD_EmpCco: Integer read GetEmpCcoOLD write SetEmpCcoOLD;
    property OLD_NumCco: string read GetNumCcoOLD write SetNumCcoOLD;
    property OLD_DatCco: TDate read GetDatCcoOLD write SetDatCcoOLD;
    property OLD_SeqCco: Integer read GetSeqCcoOLD write SetSeqCcoOLD;
    property OLD_NumPrj: Integer read GetNumPrjOLD write SetNumPrjOLD;
    property OLD_CodFpj: Integer read GetCodFpjOLD write SetCodFpjOLD;
    property OLD_CtaFin: Integer read GetCtaFinOLD write SetCtaFinOLD;
    property OLD_CtaRed: Integer read GetCtaRedOLD write SetCtaRedOLD;
    property OLD_CodCcu: string read GetCodCcuOLD write SetCodCcuOLD;
    property OLD_FilRlc: Integer read GetFilRlcOLD write SetFilRlcOLD;
    property OLD_NumRlc: string read GetNumRlcOLD write SetNumRlcOLD;
    property OLD_TptRlc: string read GetTptRlcOLD write SetTptRlcOLD;
    property OLD_ForRlc: Integer read GetForRlcOLD write SetForRlcOLD;
    property OLD_SeqMcp: Integer read GetSeqMcpOLD write SetSeqMcpOLD;
    property OLD_SeqMcr: Integer read GetSeqMcrOLD write SetSeqMcrOLD;
    property OLD_TipPgt: string read GetTipPgtOLD write SetTipPgtOLD;
    property OLD_CodBan: string read GetCodBanOLD write SetCodBanOLD;
    property OLD_CodAge: string read GetCodAgeOLD write SetCodAgeOLD;
    property OLD_CcbFor: string read GetCcbForOLD write SetCcbForOLD;
    property OLD_IndVcr: Char read GetIndVcrOLD write SetIndVcrOLD;
    property OLD_LctFin: Char read GetLctFinOLD write SetLctFinOLD;
    property OLD_LotBai: Integer read GetLotBaiOLD write SetLotBaiOLD;
    property OLD_NumLot: Integer read GetNumLotOLD write SetNumLotOLD;
    property OLD_UsuGer: Integer read GetUsuGerOLD write SetUsuGerOLD;
    property OLD_DatGer: TDate read GetDatGerOLD write SetDatGerOLD;
    property OLD_HorGer: Integer read GetHorGerOLD write SetHorGerOLD;
    property OLD_IndExp: Integer read GetIndExpOLD write SetIndExpOLD;
    property OLD_FilFix: Integer read GetFilFixOLD write SetFilFixOLD;
    property OLD_NumFix: Integer read GetNumFixOLD write SetNumFixOLD;
    property OLD_IntImp: Char read GetIntImpOLD write SetIntImpOLD;
    property OLD_RotNap: Integer read GetRotNapOLD write SetRotNapOLD;
    property OLD_NumApr: Integer read GetNumAprOLD write SetNumAprOLD;
    property OLD_SitApr: string read GetSitAprOLD write SetSitAprOLD;
  end;

implementation

{ T501MCP }

constructor T501MCP.Create();
begin
  inherited Create('E501MCP');
end;

destructor T501MCP.Destroy();
begin
  inherited;
end;

function T501MCP.GetCodEmp: Integer;
begin
  Result := FCodEmp;
end;

procedure T501MCP.SetCodEmp(const pCodEmp: Integer);
begin
  FCodEmp := pCodEmp;
end;

function T501MCP.GetCodFil: Integer;
begin
  Result := FCodFil;
end;

procedure T501MCP.SetCodFil(const pCodFil: Integer);
begin
  FCodFil := pCodFil;
end;

function T501MCP.GetNumTit: string;
begin
  Result := FNumTit;
end;

procedure T501MCP.SetNumTit(const pNumTit: string);
begin
  FNumTit := pNumTit;
end;

function T501MCP.GetCodTpt: string;
begin
  Result := FCodTpt;
end;

procedure T501MCP.SetCodTpt(const pCodTpt: string);
begin
  FCodTpt := pCodTpt;
end;

function T501MCP.GetCodFor: Integer;
begin
  Result := FCodFor;
end;

procedure T501MCP.SetCodFor(const pCodFor: Integer);
begin
  FCodFor := pCodFor;
end;

function T501MCP.GetSeqMov: Integer;
begin
  Result := FSeqMov;
end;

procedure T501MCP.SetSeqMov(const pSeqMov: Integer);
begin
  FSeqMov := pSeqMov;
end;

function T501MCP.GetCodTns: string;
begin
  Result := FCodTns;
end;

procedure T501MCP.SetCodTns(const pCodTns: string);
begin
  FCodTns := pCodTns;
end;

function T501MCP.GetDatMov: TDate;
begin
  Result := FDatMov;
end;

procedure T501MCP.SetDatMov(const pDatMov: TDate);
begin
  FDatMov := pDatMov;
end;

function T501MCP.GetNumDoc: string;
begin
  Result := FNumDoc;
end;

procedure T501MCP.SetNumDoc(const pNumDoc: string);
begin
  FNumDoc := pNumDoc;
end;

function T501MCP.GetObsMcp: string;
begin
  Result := FObsMcp;
end;

procedure T501MCP.SetObsMcp(const pObsMcp: string);
begin
  FObsMcp := pObsMcp;
end;

function T501MCP.GetVctPro: TDate;
begin
  Result := FVctPro;
end;

procedure T501MCP.SetVctPro(const pVctPro: TDate);
begin
  FVctPro := pVctPro;
end;

function T501MCP.GetProJrs: Char;
begin
  Result := FProJrs;
end;

procedure T501MCP.SetProJrs(const pProJrs: Char);
begin
  FProJrs := pProJrs;
end;

function T501MCP.GetVlrAbe: Double;
begin
  Result := FVlrAbe;
end;

procedure T501MCP.SetVlrAbe(const pVlrAbe: Double);
begin
  FVlrAbe := pVlrAbe;
end;

function T501MCP.GetCodFrj: string;
begin
  Result := FCodFrj;
end;

procedure T501MCP.SetCodFrj(const pCodFrj: string);
begin
  FCodFrj := pCodFrj;
end;

function T501MCP.GetDatPgt: TDate;
begin
  Result := FDatPgt;
end;

procedure T501MCP.SetDatPgt(const pDatPgt: TDate);
begin
  FDatPgt := pDatPgt;
end;

function T501MCP.GetCodFpg: Integer;
begin
  Result := FCodFpg;
end;

procedure T501MCP.SetCodFpg(const pCodFpg: Integer);
begin
  FCodFpg := pCodFpg;
end;

function T501MCP.GetCotMcp: Double;
begin
  Result := FCotMcp;
end;

procedure T501MCP.SetCotMcp(const pCotMcp: Double);
begin
  FCotMcp := pCotMcp;
end;

function T501MCP.GetDiaAtr: Integer;
begin
  Result := FDiaAtr;
end;

procedure T501MCP.SetDiaAtr(const pDiaAtr: Integer);
begin
  FDiaAtr := pDiaAtr;
end;

function T501MCP.GetDiaJrs: Integer;
begin
  Result := FDiaJrs;
end;

procedure T501MCP.SetDiaJrs(const pDiaJrs: Integer);
begin
  FDiaJrs := pDiaJrs;
end;

function T501MCP.GetSeqChe: string;
begin
  Result := FSeqChe;
end;

procedure T501MCP.SetSeqChe(const pSeqChe: string);
begin
  FSeqChe := pSeqChe;
end;

function T501MCP.GetTnsCxb: string;
begin
  Result := FTnsCxb;
end;

procedure T501MCP.SetTnsCxb(const pTnsCxb: string);
begin
  FTnsCxb := pTnsCxb;
end;

function T501MCP.GetDatLib: TDate;
begin
  Result := FDatLib;
end;

procedure T501MCP.SetDatLib(const pDatLib: TDate);
begin
  FDatLib := pDatLib;
end;

function T501MCP.GetCodUsu: Integer;
begin
  Result := FCodUsu;
end;

procedure T501MCP.SetCodUsu(const pCodUsu: Integer);
begin
  FCodUsu := pCodUsu;
end;

function T501MCP.GetDatApr: TDate;
begin
  Result := FDatApr;
end;

procedure T501MCP.SetDatApr(const pDatApr: TDate);
begin
  FDatApr := pDatApr;
end;

function T501MCP.GetHorApr: Integer;
begin
  Result := FHorApr;
end;

procedure T501MCP.SetHorApr(const pHorApr: Integer);
begin
  FHorApr := pHorApr;
end;

function T501MCP.GetVlrMov: Double;
begin
  Result := FVlrMov;
end;

procedure T501MCP.SetVlrMov(const pVlrMov: Double);
begin
  FVlrMov := pVlrMov;
end;

function T501MCP.GetVlrDsc: Double;
begin
  Result := FVlrDsc;
end;

procedure T501MCP.SetVlrDsc(const pVlrDsc: Double);
begin
  FVlrDsc := pVlrDsc;
end;

function T501MCP.GetVlrOde: Double;
begin
  Result := FVlrOde;
end;

procedure T501MCP.SetVlrOde(const pVlrOde: Double);
begin
  FVlrOde := pVlrOde;
end;

function T501MCP.GetVlrJrs: Double;
begin
  Result := FVlrJrs;
end;

procedure T501MCP.SetVlrJrs(const pVlrJrs: Double);
begin
  FVlrJrs := pVlrJrs;
end;

function T501MCP.GetVlrMul: Double;
begin
  Result := FVlrMul;
end;

procedure T501MCP.SetVlrMul(const pVlrMul: Double);
begin
  FVlrMul := pVlrMul;
end;

function T501MCP.GetVlrEnc: Double;
begin
  Result := FVlrEnc;
end;

procedure T501MCP.SetVlrEnc(const pVlrEnc: Double);
begin
  FVlrEnc := pVlrEnc;
end;

function T501MCP.GetVlrCor: Double;
begin
  Result := FVlrCor;
end;

procedure T501MCP.SetVlrCor(const pVlrCor: Double);
begin
  FVlrCor := pVlrCor;
end;

function T501MCP.GetVlrOac: Double;
begin
  Result := FVlrOac;
end;

procedure T501MCP.SetVlrOac(const pVlrOac: Double);
begin
  FVlrOac := pVlrOac;
end;

function T501MCP.GetVlrIrf: Double;
begin
  Result := FVlrIrf;
end;

procedure T501MCP.SetVlrIrf(const pVlrIrf: Double);
begin
  FVlrIrf := pVlrIrf;
end;

function T501MCP.GetOriIrf: Double;
begin
  Result := FOriIrf;
end;

procedure T501MCP.SetOriIrf(const pOriIrf: Double);
begin
  FOriIrf := pOriIrf;
end;

function T501MCP.GetVlrIss: Double;
begin
  Result := FVlrIss;
end;

procedure T501MCP.SetVlrIss(const pVlrIss: Double);
begin
  FVlrIss := pVlrIss;
end;

function T501MCP.GetOriIss: Double;
begin
  Result := FOriIss;
end;

procedure T501MCP.SetOriIss(const pOriIss: Double);
begin
  FOriIss := pOriIss;
end;

function T501MCP.GetVlrIns: Double;
begin
  Result := FVlrIns;
end;

procedure T501MCP.SetVlrIns(const pVlrIns: Double);
begin
  FVlrIns := pVlrIns;
end;

function T501MCP.GetOriIns: Double;
begin
  Result := FOriIns;
end;

procedure T501MCP.SetOriIns(const pOriIns: Double);
begin
  FOriIns := pOriIns;
end;

function T501MCP.GetVlrPit: Double;
begin
  Result := FVlrPit;
end;

procedure T501MCP.SetVlrPit(const pVlrPit: Double);
begin
  FVlrPit := pVlrPit;
end;

function T501MCP.GetOriPit: Double;
begin
  Result := FOriPit;
end;

procedure T501MCP.SetOriPit(const pOriPit: Double);
begin
  FOriPit := pOriPit;
end;

function T501MCP.GetVlrBpt: Double;
begin
  Result := FVlrBpt;
end;

procedure T501MCP.SetVlrBpt(const pVlrBpt: Double);
begin
  FVlrBpt := pVlrBpt;
end;

function T501MCP.GetVlrOpt: Double;
begin
  Result := FVlrOpt;
end;

procedure T501MCP.SetVlrOpt(const pVlrOpt: Double);
begin
  FVlrOpt := pVlrOpt;
end;

function T501MCP.GetVlrCrt: Double;
begin
  Result := FVlrCrt;
end;

procedure T501MCP.SetVlrCrt(const pVlrCrt: Double);
begin
  FVlrCrt := pVlrCrt;
end;

function T501MCP.GetOriCrt: Double;
begin
  Result := FOriCrt;
end;

procedure T501MCP.SetOriCrt(const pOriCrt: Double);
begin
  FOriCrt := pOriCrt;
end;

function T501MCP.GetVlrBct: Double;
begin
  Result := FVlrBct;
end;

procedure T501MCP.SetVlrBct(const pVlrBct: Double);
begin
  FVlrBct := pVlrBct;
end;

function T501MCP.GetVlrOct: Double;
begin
  Result := FVlrOct;
end;

procedure T501MCP.SetVlrOct(const pVlrOct: Double);
begin
  FVlrOct := pVlrOct;
end;

function T501MCP.GetVlrCsl: Double;
begin
  Result := FVlrCsl;
end;

procedure T501MCP.SetVlrCsl(const pVlrCsl: Double);
begin
  FVlrCsl := pVlrCsl;
end;

function T501MCP.GetOriCsl: Double;
begin
  Result := FOriCsl;
end;

procedure T501MCP.SetOriCsl(const pOriCsl: Double);
begin
  FOriCsl := pOriCsl;
end;

function T501MCP.GetVlrBcl: Double;
begin
  Result := FVlrBcl;
end;

procedure T501MCP.SetVlrBcl(const pVlrBcl: Double);
begin
  FVlrBcl := pVlrBcl;
end;

function T501MCP.GetVlrOcl: Double;
begin
  Result := FVlrOcl;
end;

procedure T501MCP.SetVlrOcl(const pVlrOcl: Double);
begin
  FVlrOcl := pVlrOcl;
end;

function T501MCP.GetVlrOur: Double;
begin
  Result := FVlrOur;
end;

procedure T501MCP.SetVlrOur(const pVlrOur: Double);
begin
  FVlrOur := pVlrOur;
end;

function T501MCP.GetOriOur: Double;
begin
  Result := FOriOur;
end;

procedure T501MCP.SetOriOur(const pOriOur: Double);
begin
  FOriOur := pOriOur;
end;

function T501MCP.GetVlrBor: Double;
begin
  Result := FVlrBor;
end;

procedure T501MCP.SetVlrBor(const pVlrBor: Double);
begin
  FVlrBor := pVlrBor;
end;

function T501MCP.GetVlrOor: Double;
begin
  Result := FVlrOor;
end;

procedure T501MCP.SetVlrOor(const pVlrOor: Double);
begin
  FVlrOor := pVlrOor;
end;

function T501MCP.GetVlrPis: Double;
begin
  Result := FVlrPis;
end;

procedure T501MCP.SetVlrPis(const pVlrPis: Double);
begin
  FVlrPis := pVlrPis;
end;

function T501MCP.GetVlrBpr: Double;
begin
  Result := FVlrBpr;
end;

procedure T501MCP.SetVlrBpr(const pVlrBpr: Double);
begin
  FVlrBpr := pVlrBpr;
end;

function T501MCP.GetVlrCof: Double;
begin
  Result := FVlrCof;
end;

procedure T501MCP.SetVlrCof(const pVlrCof: Double);
begin
  FVlrCof := pVlrCof;
end;

function T501MCP.GetVlrBcr: Double;
begin
  Result := FVlrBcr;
end;

procedure T501MCP.SetVlrBcr(const pVlrBcr: Double);
begin
  FVlrBcr := pVlrBcr;
end;

function T501MCP.GetVlrLiq: Double;
begin
  Result := FVlrLiq;
end;

procedure T501MCP.SetVlrLiq(const pVlrLiq: Double);
begin
  FVlrLiq := pVlrLiq;
end;

function T501MCP.GetPerJrs: Double;
begin
  Result := FPerJrs;
end;

procedure T501MCP.SetPerJrs(const pPerJrs: Double);
begin
  FPerJrs := pPerJrs;
end;

function T501MCP.GetUltPgt: TDate;
begin
  Result := FUltPgt;
end;

procedure T501MCP.SetUltPgt(const pUltPgt: TDate);
begin
  FUltPgt := pUltPgt;
end;

function T501MCP.GetCjmAnt: TDate;
begin
  Result := FCjmAnt;
end;

procedure T501MCP.SetCjmAnt(const pCjmAnt: TDate);
begin
  FCjmAnt := pCjmAnt;
end;

function T501MCP.GetJrsCal: Double;
begin
  Result := FJrsCal;
end;

procedure T501MCP.SetJrsCal(const pJrsCal: Double);
begin
  FJrsCal := pJrsCal;
end;

function T501MCP.GetCodPor: string;
begin
  Result := FCodPor;
end;

procedure T501MCP.SetCodPor(const pCodPor: string);
begin
  FCodPor := pCodPor;
end;

function T501MCP.GetCodCrt: string;
begin
  Result := FCodCrt;
end;

procedure T501MCP.SetCodCrt(const pCodCrt: string);
begin
  FCodCrt := pCodCrt;
end;

function T501MCP.GetPorAnt: string;
begin
  Result := FPorAnt;
end;

procedure T501MCP.SetPorAnt(const pPorAnt: string);
begin
  FPorAnt := pPorAnt;
end;

function T501MCP.GetCrtAnt: string;
begin
  Result := FCrtAnt;
end;

procedure T501MCP.SetCrtAnt(const pCrtAnt: string);
begin
  FCrtAnt := pCrtAnt;
end;

function T501MCP.GetEmpCco: Integer;
begin
  Result := FEmpCco;
end;

procedure T501MCP.SetEmpCco(const pEmpCco: Integer);
begin
  FEmpCco := pEmpCco;
end;

function T501MCP.GetNumCco: string;
begin
  Result := FNumCco;
end;

procedure T501MCP.SetNumCco(const pNumCco: string);
begin
  FNumCco := pNumCco;
end;

function T501MCP.GetDatCco: TDate;
begin
  Result := FDatCco;
end;

procedure T501MCP.SetDatCco(const pDatCco: TDate);
begin
  FDatCco := pDatCco;
end;

function T501MCP.GetSeqCco: Integer;
begin
  Result := FSeqCco;
end;

procedure T501MCP.SetSeqCco(const pSeqCco: Integer);
begin
  FSeqCco := pSeqCco;
end;

function T501MCP.GetNumPrj: Integer;
begin
  Result := FNumPrj;
end;

procedure T501MCP.SetNumPrj(const pNumPrj: Integer);
begin
  FNumPrj := pNumPrj;
end;

function T501MCP.GetCodFpj: Integer;
begin
  Result := FCodFpj;
end;

procedure T501MCP.SetCodFpj(const pCodFpj: Integer);
begin
  FCodFpj := pCodFpj;
end;

function T501MCP.GetCtaFin: Integer;
begin
  Result := FCtaFin;
end;

procedure T501MCP.SetCtaFin(const pCtaFin: Integer);
begin
  FCtaFin := pCtaFin;
end;

function T501MCP.GetCtaRed: Integer;
begin
  Result := FCtaRed;
end;

procedure T501MCP.SetCtaRed(const pCtaRed: Integer);
begin
  FCtaRed := pCtaRed;
end;

function T501MCP.GetCodCcu: string;
begin
  Result := FCodCcu;
end;

procedure T501MCP.SetCodCcu(const pCodCcu: string);
begin
  FCodCcu := pCodCcu;
end;

function T501MCP.GetFilRlc: Integer;
begin
  Result := FFilRlc;
end;

procedure T501MCP.SetFilRlc(const pFilRlc: Integer);
begin
  FFilRlc := pFilRlc;
end;

function T501MCP.GetNumRlc: string;
begin
  Result := FNumRlc;
end;

procedure T501MCP.SetNumRlc(const pNumRlc: string);
begin
  FNumRlc := pNumRlc;
end;

function T501MCP.GetTptRlc: string;
begin
  Result := FTptRlc;
end;

procedure T501MCP.SetTptRlc(const pTptRlc: string);
begin
  FTptRlc := pTptRlc;
end;

function T501MCP.GetForRlc: Integer;
begin
  Result := FForRlc;
end;

procedure T501MCP.SetForRlc(const pForRlc: Integer);
begin
  FForRlc := pForRlc;
end;

function T501MCP.GetSeqMcp: Integer;
begin
  Result := FSeqMcp;
end;

procedure T501MCP.SetSeqMcp(const pSeqMcp: Integer);
begin
  FSeqMcp := pSeqMcp;
end;

function T501MCP.GetSeqMcr: Integer;
begin
  Result := FSeqMcr;
end;

procedure T501MCP.SetSeqMcr(const pSeqMcr: Integer);
begin
  FSeqMcr := pSeqMcr;
end;

function T501MCP.GetTipPgt: string;
begin
  Result := FTipPgt;
end;

procedure T501MCP.SetTipPgt(const pTipPgt: string);
begin
  FTipPgt := pTipPgt;
end;

function T501MCP.GetCodBan: string;
begin
  Result := FCodBan;
end;

procedure T501MCP.SetCodBan(const pCodBan: string);
begin
  FCodBan := pCodBan;
end;

function T501MCP.GetCodAge: string;
begin
  Result := FCodAge;
end;

procedure T501MCP.SetCodAge(const pCodAge: string);
begin
  FCodAge := pCodAge;
end;

function T501MCP.GetCcbFor: string;
begin
  Result := FCcbFor;
end;

procedure T501MCP.SetCcbFor(const pCcbFor: string);
begin
  FCcbFor := pCcbFor;
end;

function T501MCP.GetIndVcr: Char;
begin
  Result := FIndVcr;
end;

procedure T501MCP.SetIndVcr(const pIndVcr: Char);
begin
  FIndVcr := pIndVcr;
end;

function T501MCP.GetLctFin: Char;
begin
  Result := FLctFin;
end;

procedure T501MCP.SetLctFin(const pLctFin: Char);
begin
  FLctFin := pLctFin;
end;

function T501MCP.GetLotBai: Integer;
begin
  Result := FLotBai;
end;

procedure T501MCP.SetLotBai(const pLotBai: Integer);
begin
  FLotBai := pLotBai;
end;

function T501MCP.GetNumLot: Integer;
begin
  Result := FNumLot;
end;

procedure T501MCP.SetNumLot(const pNumLot: Integer);
begin
  FNumLot := pNumLot;
end;

function T501MCP.GetUsuGer: Integer;
begin
  Result := FUsuGer;
end;

procedure T501MCP.SetUsuGer(const pUsuGer: Integer);
begin
  FUsuGer := pUsuGer;
end;

function T501MCP.GetDatGer: TDate;
begin
  Result := FDatGer;
end;

procedure T501MCP.SetDatGer(const pDatGer: TDate);
begin
  FDatGer := pDatGer;
end;

function T501MCP.GetHorGer: Integer;
begin
  Result := FHorGer;
end;

procedure T501MCP.SetHorGer(const pHorGer: Integer);
begin
  FHorGer := pHorGer;
end;

function T501MCP.GetIndExp: Integer;
begin
  Result := FIndExp;
end;

procedure T501MCP.SetIndExp(const pIndExp: Integer);
begin
  FIndExp := pIndExp;
end;

function T501MCP.GetFilFix: Integer;
begin
  Result := FFilFix;
end;

procedure T501MCP.SetFilFix(const pFilFix: Integer);
begin
  FFilFix := pFilFix;
end;

function T501MCP.GetNumFix: Integer;
begin
  Result := FNumFix;
end;

procedure T501MCP.SetNumFix(const pNumFix: Integer);
begin
  FNumFix := pNumFix;
end;

function T501MCP.GetIntImp: Char;
begin
  Result := FIntImp;
end;

procedure T501MCP.SetIntImp(const pIntImp: Char);
begin
  FIntImp := pIntImp;
end;

function T501MCP.GetRotNap: Integer;
begin
  Result := FRotNap;
end;

procedure T501MCP.SetRotNap(const pRotNap: Integer);
begin
  FRotNap := pRotNap;
end;

function T501MCP.GetNumApr: Integer;
begin
  Result := FNumApr;
end;

procedure T501MCP.SetNumApr(const pNumApr: Integer);
begin
  FNumApr := pNumApr;
end;

function T501MCP.GetSitApr: string;
begin
  Result := FSitApr;
end;

procedure T501MCP.SetSitApr(const pSitApr: string);
begin
  FSitApr := pSitApr;
end;

function T501MCP.GetCodEmpOLD: Integer;
begin
  Result := FCodEmpOLD;
end;

procedure T501MCP.SetCodEmpOLD(const pCodEmp: Integer);
begin
  FCodEmpOLD := pCodEmp;
end;

function T501MCP.GetCodFilOLD: Integer;
begin
  Result := FCodFilOLD;
end;

procedure T501MCP.SetCodFilOLD(const pCodFil: Integer);
begin
  FCodFilOLD := pCodFil;
end;

function T501MCP.GetNumTitOLD: string;
begin
  Result := FNumTitOLD;
end;

procedure T501MCP.SetNumTitOLD(const pNumTit: string);
begin
  FNumTitOLD := pNumTit;
end;

function T501MCP.GetCodTptOLD: string;
begin
  Result := FCodTptOLD;
end;

procedure T501MCP.SetCodTptOLD(const pCodTpt: string);
begin
  FCodTptOLD := pCodTpt;
end;

function T501MCP.GetCodForOLD: Integer;
begin
  Result := FCodForOLD;
end;

procedure T501MCP.SetCodForOLD(const pCodFor: Integer);
begin
  FCodForOLD := pCodFor;
end;

function T501MCP.GetSeqMovOLD: Integer;
begin
  Result := FSeqMovOLD;
end;

procedure T501MCP.SetSeqMovOLD(const pSeqMov: Integer);
begin
  FSeqMovOLD := pSeqMov;
end;

function T501MCP.GetCodTnsOLD: string;
begin
  Result := FCodTnsOLD;
end;

procedure T501MCP.SetCodTnsOLD(const pCodTns: string);
begin
  FCodTnsOLD := pCodTns;
end;

function T501MCP.GetDatMovOLD: TDate;
begin
  Result := FDatMovOLD;
end;

procedure T501MCP.SetDatMovOLD(const pDatMov: TDate);
begin
  FDatMovOLD := pDatMov;
end;

function T501MCP.GetNumDocOLD: string;
begin
  Result := FNumDocOLD;
end;

procedure T501MCP.SetNumDocOLD(const pNumDoc: string);
begin
  FNumDocOLD := pNumDoc;
end;

function T501MCP.GetObsMcpOLD: string;
begin
  Result := FObsMcpOLD;
end;

procedure T501MCP.SetObsMcpOLD(const pObsMcp: string);
begin
  FObsMcpOLD := pObsMcp;
end;

function T501MCP.GetVctProOLD: TDate;
begin
  Result := FVctProOLD;
end;

procedure T501MCP.SetVctProOLD(const pVctPro: TDate);
begin
  FVctProOLD := pVctPro;
end;

function T501MCP.GetProJrsOLD: Char;
begin
  Result := FProJrsOLD;
end;

procedure T501MCP.SetProJrsOLD(const pProJrs: Char);
begin
  FProJrsOLD := pProJrs;
end;

function T501MCP.GetVlrAbeOLD: Double;
begin
  Result := FVlrAbeOLD;
end;

procedure T501MCP.SetVlrAbeOLD(const pVlrAbe: Double);
begin
  FVlrAbeOLD := pVlrAbe;
end;

function T501MCP.GetCodFrjOLD: string;
begin
  Result := FCodFrjOLD;
end;

procedure T501MCP.SetCodFrjOLD(const pCodFrj: string);
begin
  FCodFrjOLD := pCodFrj;
end;

function T501MCP.GetDatPgtOLD: TDate;
begin
  Result := FDatPgtOLD;
end;

procedure T501MCP.SetDatPgtOLD(const pDatPgt: TDate);
begin
  FDatPgtOLD := pDatPgt;
end;

function T501MCP.GetCodFpgOLD: Integer;
begin
  Result := FCodFpgOLD;
end;

procedure T501MCP.SetCodFpgOLD(const pCodFpg: Integer);
begin
  FCodFpgOLD := pCodFpg;
end;

function T501MCP.GetCotMcpOLD: Double;
begin
  Result := FCotMcpOLD;
end;

procedure T501MCP.SetCotMcpOLD(const pCotMcp: Double);
begin
  FCotMcpOLD := pCotMcp;
end;

function T501MCP.GetDiaAtrOLD: Integer;
begin
  Result := FDiaAtrOLD;
end;

procedure T501MCP.SetDiaAtrOLD(const pDiaAtr: Integer);
begin
  FDiaAtrOLD := pDiaAtr;
end;

function T501MCP.GetDiaJrsOLD: Integer;
begin
  Result := FDiaJrsOLD;
end;

procedure T501MCP.SetDiaJrsOLD(const pDiaJrs: Integer);
begin
  FDiaJrsOLD := pDiaJrs;
end;

function T501MCP.GetSeqCheOLD: string;
begin
  Result := FSeqCheOLD;
end;

procedure T501MCP.SetSeqCheOLD(const pSeqChe: string);
begin
  FSeqCheOLD := pSeqChe;
end;

function T501MCP.GetTnsCxbOLD: string;
begin
  Result := FTnsCxbOLD;
end;

procedure T501MCP.SetTnsCxbOLD(const pTnsCxb: string);
begin
  FTnsCxbOLD := pTnsCxb;
end;

function T501MCP.GetDatLibOLD: TDate;
begin
  Result := FDatLibOLD;
end;

procedure T501MCP.SetDatLibOLD(const pDatLib: TDate);
begin
  FDatLibOLD := pDatLib;
end;

function T501MCP.GetCodUsuOLD: Integer;
begin
  Result := FCodUsuOLD;
end;

procedure T501MCP.SetCodUsuOLD(const pCodUsu: Integer);
begin
  FCodUsuOLD := pCodUsu;
end;

function T501MCP.GetDatAprOLD: TDate;
begin
  Result := FDatAprOLD;
end;

procedure T501MCP.SetDatAprOLD(const pDatApr: TDate);
begin
  FDatAprOLD := pDatApr;
end;

function T501MCP.GetHorAprOLD: Integer;
begin
  Result := FHorAprOLD;
end;

procedure T501MCP.SetHorAprOLD(const pHorApr: Integer);
begin
  FHorAprOLD := pHorApr;
end;

function T501MCP.GetVlrMovOLD: Double;
begin
  Result := FVlrMovOLD;
end;

procedure T501MCP.SetVlrMovOLD(const pVlrMov: Double);
begin
  FVlrMovOLD := pVlrMov;
end;

function T501MCP.GetVlrDscOLD: Double;
begin
  Result := FVlrDscOLD;
end;

procedure T501MCP.SetVlrDscOLD(const pVlrDsc: Double);
begin
  FVlrDscOLD := pVlrDsc;
end;

function T501MCP.GetVlrOdeOLD: Double;
begin
  Result := FVlrOdeOLD;
end;

procedure T501MCP.SetVlrOdeOLD(const pVlrOde: Double);
begin
  FVlrOdeOLD := pVlrOde;
end;

function T501MCP.GetVlrJrsOLD: Double;
begin
  Result := FVlrJrsOLD;
end;

procedure T501MCP.SetVlrJrsOLD(const pVlrJrs: Double);
begin
  FVlrJrsOLD := pVlrJrs;
end;

function T501MCP.GetVlrMulOLD: Double;
begin
  Result := FVlrMulOLD;
end;

procedure T501MCP.SetVlrMulOLD(const pVlrMul: Double);
begin
  FVlrMulOLD := pVlrMul;
end;

function T501MCP.GetVlrEncOLD: Double;
begin
  Result := FVlrEncOLD;
end;

procedure T501MCP.SetVlrEncOLD(const pVlrEnc: Double);
begin
  FVlrEncOLD := pVlrEnc;
end;

function T501MCP.GetVlrCorOLD: Double;
begin
  Result := FVlrCorOLD;
end;

procedure T501MCP.SetVlrCorOLD(const pVlrCor: Double);
begin
  FVlrCorOLD := pVlrCor;
end;

function T501MCP.GetVlrOacOLD: Double;
begin
  Result := FVlrOacOLD;
end;

procedure T501MCP.SetVlrOacOLD(const pVlrOac: Double);
begin
  FVlrOacOLD := pVlrOac;
end;

function T501MCP.GetVlrIrfOLD: Double;
begin
  Result := FVlrIrfOLD;
end;

procedure T501MCP.SetVlrIrfOLD(const pVlrIrf: Double);
begin
  FVlrIrfOLD := pVlrIrf;
end;

function T501MCP.GetOriIrfOLD: Double;
begin
  Result := FOriIrfOLD;
end;

procedure T501MCP.SetOriIrfOLD(const pOriIrf: Double);
begin
  FOriIrfOLD := pOriIrf;
end;

function T501MCP.GetVlrIssOLD: Double;
begin
  Result := FVlrIssOLD;
end;

procedure T501MCP.SetVlrIssOLD(const pVlrIss: Double);
begin
  FVlrIssOLD := pVlrIss;
end;

function T501MCP.GetOriIssOLD: Double;
begin
  Result := FOriIssOLD;
end;

procedure T501MCP.SetOriIssOLD(const pOriIss: Double);
begin
  FOriIssOLD := pOriIss;
end;

function T501MCP.GetVlrInsOLD: Double;
begin
  Result := FVlrInsOLD;
end;

procedure T501MCP.SetVlrInsOLD(const pVlrIns: Double);
begin
  FVlrInsOLD := pVlrIns;
end;

function T501MCP.GetOriInsOLD: Double;
begin
  Result := FOriInsOLD;
end;

procedure T501MCP.SetOriInsOLD(const pOriIns: Double);
begin
  FOriInsOLD := pOriIns;
end;

function T501MCP.GetVlrPitOLD: Double;
begin
  Result := FVlrPitOLD;
end;

procedure T501MCP.SetVlrPitOLD(const pVlrPit: Double);
begin
  FVlrPitOLD := pVlrPit;
end;

function T501MCP.GetOriPitOLD: Double;
begin
  Result := FOriPitOLD;
end;

procedure T501MCP.SetOriPitOLD(const pOriPit: Double);
begin
  FOriPitOLD := pOriPit;
end;

function T501MCP.GetVlrBptOLD: Double;
begin
  Result := FVlrBptOLD;
end;

procedure T501MCP.SetVlrBptOLD(const pVlrBpt: Double);
begin
  FVlrBptOLD := pVlrBpt;
end;

function T501MCP.GetVlrOptOLD: Double;
begin
  Result := FVlrOptOLD;
end;

procedure T501MCP.SetVlrOptOLD(const pVlrOpt: Double);
begin
  FVlrOptOLD := pVlrOpt;
end;

function T501MCP.GetVlrCrtOLD: Double;
begin
  Result := FVlrCrtOLD;
end;

procedure T501MCP.SetVlrCrtOLD(const pVlrCrt: Double);
begin
  FVlrCrtOLD := pVlrCrt;
end;

function T501MCP.GetOriCrtOLD: Double;
begin
  Result := FOriCrtOLD;
end;

procedure T501MCP.SetOriCrtOLD(const pOriCrt: Double);
begin
  FOriCrtOLD := pOriCrt;
end;

function T501MCP.GetVlrBctOLD: Double;
begin
  Result := FVlrBctOLD;
end;

procedure T501MCP.SetVlrBctOLD(const pVlrBct: Double);
begin
  FVlrBctOLD := pVlrBct;
end;

function T501MCP.GetVlrOctOLD: Double;
begin
  Result := FVlrOctOLD;
end;

procedure T501MCP.SetVlrOctOLD(const pVlrOct: Double);
begin
  FVlrOctOLD := pVlrOct;
end;

function T501MCP.GetVlrCslOLD: Double;
begin
  Result := FVlrCslOLD;
end;

procedure T501MCP.SetVlrCslOLD(const pVlrCsl: Double);
begin
  FVlrCslOLD := pVlrCsl;
end;

function T501MCP.GetOriCslOLD: Double;
begin
  Result := FOriCslOLD;
end;

procedure T501MCP.SetOriCslOLD(const pOriCsl: Double);
begin
  FOriCslOLD := pOriCsl;
end;

function T501MCP.GetVlrBclOLD: Double;
begin
  Result := FVlrBclOLD;
end;

procedure T501MCP.SetVlrBclOLD(const pVlrBcl: Double);
begin
  FVlrBclOLD := pVlrBcl;
end;

function T501MCP.GetVlrOclOLD: Double;
begin
  Result := FVlrOclOLD;
end;

procedure T501MCP.SetVlrOclOLD(const pVlrOcl: Double);
begin
  FVlrOclOLD := pVlrOcl;
end;

function T501MCP.GetVlrOurOLD: Double;
begin
  Result := FVlrOurOLD;
end;

procedure T501MCP.SetVlrOurOLD(const pVlrOur: Double);
begin
  FVlrOurOLD := pVlrOur;
end;

function T501MCP.GetOriOurOLD: Double;
begin
  Result := FOriOurOLD;
end;

procedure T501MCP.SetOriOurOLD(const pOriOur: Double);
begin
  FOriOurOLD := pOriOur;
end;

function T501MCP.GetVlrBorOLD: Double;
begin
  Result := FVlrBorOLD;
end;

procedure T501MCP.SetVlrBorOLD(const pVlrBor: Double);
begin
  FVlrBorOLD := pVlrBor;
end;

function T501MCP.GetVlrOorOLD: Double;
begin
  Result := FVlrOorOLD;
end;

procedure T501MCP.SetVlrOorOLD(const pVlrOor: Double);
begin
  FVlrOorOLD := pVlrOor;
end;

function T501MCP.GetVlrPisOLD: Double;
begin
  Result := FVlrPisOLD;
end;

procedure T501MCP.SetVlrPisOLD(const pVlrPis: Double);
begin
  FVlrPisOLD := pVlrPis;
end;

function T501MCP.GetVlrBprOLD: Double;
begin
  Result := FVlrBprOLD;
end;

procedure T501MCP.SetVlrBprOLD(const pVlrBpr: Double);
begin
  FVlrBprOLD := pVlrBpr;
end;

function T501MCP.GetVlrCofOLD: Double;
begin
  Result := FVlrCofOLD;
end;

procedure T501MCP.SetVlrCofOLD(const pVlrCof: Double);
begin
  FVlrCofOLD := pVlrCof;
end;

function T501MCP.GetVlrBcrOLD: Double;
begin
  Result := FVlrBcrOLD;
end;

procedure T501MCP.SetVlrBcrOLD(const pVlrBcr: Double);
begin
  FVlrBcrOLD := pVlrBcr;
end;

function T501MCP.GetVlrLiqOLD: Double;
begin
  Result := FVlrLiqOLD;
end;

procedure T501MCP.SetVlrLiqOLD(const pVlrLiq: Double);
begin
  FVlrLiqOLD := pVlrLiq;
end;

function T501MCP.GetPerJrsOLD: Double;
begin
  Result := FPerJrsOLD;
end;

procedure T501MCP.SetPerJrsOLD(const pPerJrs: Double);
begin
  FPerJrsOLD := pPerJrs;
end;

function T501MCP.GetUltPgtOLD: TDate;
begin
  Result := FUltPgtOLD;
end;

procedure T501MCP.SetUltPgtOLD(const pUltPgt: TDate);
begin
  FUltPgtOLD := pUltPgt;
end;

function T501MCP.GetCjmAntOLD: TDate;
begin
  Result := FCjmAntOLD;
end;

procedure T501MCP.SetCjmAntOLD(const pCjmAnt: TDate);
begin
  FCjmAntOLD := pCjmAnt;
end;

function T501MCP.GetJrsCalOLD: Double;
begin
  Result := FJrsCalOLD;
end;

procedure T501MCP.SetJrsCalOLD(const pJrsCal: Double);
begin
  FJrsCalOLD := pJrsCal;
end;

function T501MCP.GetCodPorOLD: string;
begin
  Result := FCodPorOLD;
end;

procedure T501MCP.SetCodPorOLD(const pCodPor: string);
begin
  FCodPorOLD := pCodPor;
end;

function T501MCP.GetCodCrtOLD: string;
begin
  Result := FCodCrtOLD;
end;

procedure T501MCP.SetCodCrtOLD(const pCodCrt: string);
begin
  FCodCrtOLD := pCodCrt;
end;

function T501MCP.GetPorAntOLD: string;
begin
  Result := FPorAntOLD;
end;

procedure T501MCP.SetPorAntOLD(const pPorAnt: string);
begin
  FPorAntOLD := pPorAnt;
end;

function T501MCP.GetCrtAntOLD: string;
begin
  Result := FCrtAntOLD;
end;

procedure T501MCP.SetCrtAntOLD(const pCrtAnt: string);
begin
  FCrtAntOLD := pCrtAnt;
end;

function T501MCP.GetEmpCcoOLD: Integer;
begin
  Result := FEmpCcoOLD;
end;

procedure T501MCP.SetEmpCcoOLD(const pEmpCco: Integer);
begin
  FEmpCcoOLD := pEmpCco;
end;

function T501MCP.GetNumCcoOLD: string;
begin
  Result := FNumCcoOLD;
end;

procedure T501MCP.SetNumCcoOLD(const pNumCco: string);
begin
  FNumCcoOLD := pNumCco;
end;

function T501MCP.GetDatCcoOLD: TDate;
begin
  Result := FDatCcoOLD;
end;

procedure T501MCP.SetDatCcoOLD(const pDatCco: TDate);
begin
  FDatCcoOLD := pDatCco;
end;

function T501MCP.GetSeqCcoOLD: Integer;
begin
  Result := FSeqCcoOLD;
end;

procedure T501MCP.SetSeqCcoOLD(const pSeqCco: Integer);
begin
  FSeqCcoOLD := pSeqCco;
end;

function T501MCP.GetNumPrjOLD: Integer;
begin
  Result := FNumPrjOLD;
end;

procedure T501MCP.SetNumPrjOLD(const pNumPrj: Integer);
begin
  FNumPrjOLD := pNumPrj;
end;

function T501MCP.GetCodFpjOLD: Integer;
begin
  Result := FCodFpjOLD;
end;

procedure T501MCP.SetCodFpjOLD(const pCodFpj: Integer);
begin
  FCodFpjOLD := pCodFpj;
end;

function T501MCP.GetCtaFinOLD: Integer;
begin
  Result := FCtaFinOLD;
end;

procedure T501MCP.SetCtaFinOLD(const pCtaFin: Integer);
begin
  FCtaFinOLD := pCtaFin;
end;

function T501MCP.GetCtaRedOLD: Integer;
begin
  Result := FCtaRedOLD;
end;

procedure T501MCP.SetCtaRedOLD(const pCtaRed: Integer);
begin
  FCtaRedOLD := pCtaRed;
end;

function T501MCP.GetCodCcuOLD: string;
begin
  Result := FCodCcuOLD;
end;

procedure T501MCP.SetCodCcuOLD(const pCodCcu: string);
begin
  FCodCcuOLD := pCodCcu;
end;

function T501MCP.GetFilRlcOLD: Integer;
begin
  Result := FFilRlcOLD;
end;

procedure T501MCP.SetFilRlcOLD(const pFilRlc: Integer);
begin
  FFilRlcOLD := pFilRlc;
end;

function T501MCP.GetNumRlcOLD: string;
begin
  Result := FNumRlcOLD;
end;

procedure T501MCP.SetNumRlcOLD(const pNumRlc: string);
begin
  FNumRlcOLD := pNumRlc;
end;

function T501MCP.GetTptRlcOLD: string;
begin
  Result := FTptRlcOLD;
end;

procedure T501MCP.SetTptRlcOLD(const pTptRlc: string);
begin
  FTptRlcOLD := pTptRlc;
end;

function T501MCP.GetForRlcOLD: Integer;
begin
  Result := FForRlcOLD;
end;

procedure T501MCP.SetForRlcOLD(const pForRlc: Integer);
begin
  FForRlcOLD := pForRlc;
end;

function T501MCP.GetSeqMcpOLD: Integer;
begin
  Result := FSeqMcpOLD;
end;

procedure T501MCP.SetSeqMcpOLD(const pSeqMcp: Integer);
begin
  FSeqMcpOLD := pSeqMcp;
end;

function T501MCP.GetSeqMcrOLD: Integer;
begin
  Result := FSeqMcrOLD;
end;

procedure T501MCP.SetSeqMcrOLD(const pSeqMcr: Integer);
begin
  FSeqMcrOLD := pSeqMcr;
end;

function T501MCP.GetTipPgtOLD: string;
begin
  Result := FTipPgtOLD;
end;

procedure T501MCP.SetTipPgtOLD(const pTipPgt: string);
begin
  FTipPgtOLD := pTipPgt;
end;

function T501MCP.GetCodBanOLD: string;
begin
  Result := FCodBanOLD;
end;

procedure T501MCP.SetCodBanOLD(const pCodBan: string);
begin
  FCodBanOLD := pCodBan;
end;

function T501MCP.GetCodAgeOLD: string;
begin
  Result := FCodAgeOLD;
end;

procedure T501MCP.SetCodAgeOLD(const pCodAge: string);
begin
  FCodAgeOLD := pCodAge;
end;

function T501MCP.GetCcbForOLD: string;
begin
  Result := FCcbForOLD;
end;

procedure T501MCP.SetCcbForOLD(const pCcbFor: string);
begin
  FCcbForOLD := pCcbFor;
end;

function T501MCP.GetIndVcrOLD: Char;
begin
  Result := FIndVcrOLD;
end;

procedure T501MCP.SetIndVcrOLD(const pIndVcr: Char);
begin
  FIndVcrOLD := pIndVcr;
end;

function T501MCP.GetLctFinOLD: Char;
begin
  Result := FLctFinOLD;
end;

procedure T501MCP.SetLctFinOLD(const pLctFin: Char);
begin
  FLctFinOLD := pLctFin;
end;

function T501MCP.GetLotBaiOLD: Integer;
begin
  Result := FLotBaiOLD;
end;

procedure T501MCP.SetLotBaiOLD(const pLotBai: Integer);
begin
  FLotBaiOLD := pLotBai;
end;

function T501MCP.GetNumLotOLD: Integer;
begin
  Result := FNumLotOLD;
end;

procedure T501MCP.SetNumLotOLD(const pNumLot: Integer);
begin
  FNumLotOLD := pNumLot;
end;

function T501MCP.GetUsuGerOLD: Integer;
begin
  Result := FUsuGerOLD;
end;

procedure T501MCP.SetUsuGerOLD(const pUsuGer: Integer);
begin
  FUsuGerOLD := pUsuGer;
end;

function T501MCP.GetDatGerOLD: TDate;
begin
  Result := FDatGerOLD;
end;

procedure T501MCP.SetDatGerOLD(const pDatGer: TDate);
begin
  FDatGerOLD := pDatGer;
end;

function T501MCP.GetHorGerOLD: Integer;
begin
  Result := FHorGerOLD;
end;

procedure T501MCP.SetHorGerOLD(const pHorGer: Integer);
begin
  FHorGerOLD := pHorGer;
end;

function T501MCP.GetIndExpOLD: Integer;
begin
  Result := FIndExpOLD;
end;

procedure T501MCP.SetIndExpOLD(const pIndExp: Integer);
begin
  FIndExpOLD := pIndExp;
end;

function T501MCP.GetFilFixOLD: Integer;
begin
  Result := FFilFixOLD;
end;

procedure T501MCP.SetFilFixOLD(const pFilFix: Integer);
begin
  FFilFixOLD := pFilFix;
end;

function T501MCP.GetNumFixOLD: Integer;
begin
  Result := FNumFixOLD;
end;

procedure T501MCP.SetNumFixOLD(const pNumFix: Integer);
begin
  FNumFixOLD := pNumFix;
end;

function T501MCP.GetIntImpOLD: Char;
begin
  Result := FIntImpOLD;
end;

procedure T501MCP.SetIntImpOLD(const pIntImp: Char);
begin
  FIntImpOLD := pIntImp;
end;

function T501MCP.GetRotNapOLD: Integer;
begin
  Result := FRotNapOLD;
end;

procedure T501MCP.SetRotNapOLD(const pRotNap: Integer);
begin
  FRotNapOLD := pRotNap;
end;

function T501MCP.GetNumAprOLD: Integer;
begin
  Result := FNumAprOLD;
end;

procedure T501MCP.SetNumAprOLD(const pNumApr: Integer);
begin
  FNumAprOLD := pNumApr;
end;

function T501MCP.GetSitAprOLD: string;
begin
  Result := FSitAprOLD;
end;

procedure T501MCP.SetSitAprOLD(const pSitApr: string);
begin
  FSitAprOLD := pSitApr;
end;

procedure T501MCP.Registros_OLD();
begin
  FCodEmpOLD := FCodEmp;
  FCodFilOLD := FCodFil;
  FNumTitOLD := FNumTit;
  FCodTptOLD := FCodTpt;
  FCodForOLD := FCodFor;
  FSeqMovOLD := FSeqMov;
  FCodTnsOLD := FCodTns;
  FDatMovOLD := FDatMov;
  FNumDocOLD := FNumDoc;
  FObsMcpOLD := FObsMcp;
  FVctProOLD := FVctPro;
  FProJrsOLD := FProJrs;
  FVlrAbeOLD := FVlrAbe;
  FCodFrjOLD := FCodFrj;
  FDatPgtOLD := FDatPgt;
  FCodFpgOLD := FCodFpg;
  FCotMcpOLD := FCotMcp;
  FDiaAtrOLD := FDiaAtr;
  FDiaJrsOLD := FDiaJrs;
  FSeqCheOLD := FSeqChe;
  FTnsCxbOLD := FTnsCxb;
  FDatLibOLD := FDatLib;
  FCodUsuOLD := FCodUsu;
  FDatAprOLD := FDatApr;
  FHorAprOLD := FHorApr;
  FVlrMovOLD := FVlrMov;
  FVlrDscOLD := FVlrDsc;
  FVlrOdeOLD := FVlrOde;
  FVlrJrsOLD := FVlrJrs;
  FVlrMulOLD := FVlrMul;
  FVlrEncOLD := FVlrEnc;
  FVlrCorOLD := FVlrCor;
  FVlrOacOLD := FVlrOac;
  FVlrIrfOLD := FVlrIrf;
  FOriIrfOLD := FOriIrf;
  FVlrIssOLD := FVlrIss;
  FOriIssOLD := FOriIss;
  FVlrInsOLD := FVlrIns;
  FOriInsOLD := FOriIns;
  FVlrPitOLD := FVlrPit;
  FOriPitOLD := FOriPit;
  FVlrBptOLD := FVlrBpt;
  FVlrOptOLD := FVlrOpt;
  FVlrCrtOLD := FVlrCrt;
  FOriCrtOLD := FOriCrt;
  FVlrBctOLD := FVlrBct;
  FVlrOctOLD := FVlrOct;
  FVlrCslOLD := FVlrCsl;
  FOriCslOLD := FOriCsl;
  FVlrBclOLD := FVlrBcl;
  FVlrOclOLD := FVlrOcl;
  FVlrOurOLD := FVlrOur;
  FOriOurOLD := FOriOur;
  FVlrBorOLD := FVlrBor;
  FVlrOorOLD := FVlrOor;
  FVlrPisOLD := FVlrPis;
  FVlrBprOLD := FVlrBpr;
  FVlrCofOLD := FVlrCof;
  FVlrBcrOLD := FVlrBcr;
  FVlrLiqOLD := FVlrLiq;
  FPerJrsOLD := FPerJrs;
  FUltPgtOLD := FUltPgt;
  FCjmAntOLD := FCjmAnt;
  FJrsCalOLD := FJrsCal;
  FCodPorOLD := FCodPor;
  FCodCrtOLD := FCodCrt;
  FPorAntOLD := FPorAnt;
  FCrtAntOLD := FCrtAnt;
  FEmpCcoOLD := FEmpCco;
  FNumCcoOLD := FNumCco;
  FDatCcoOLD := FDatCco;
  FSeqCcoOLD := FSeqCco;
  FNumPrjOLD := FNumPrj;
  FCodFpjOLD := FCodFpj;
  FCtaFinOLD := FCtaFin;
  FCtaRedOLD := FCtaRed;
  FCodCcuOLD := FCodCcu;
  FFilRlcOLD := FFilRlc;
  FNumRlcOLD := FNumRlc;
  FTptRlcOLD := FTptRlc;
  FForRlcOLD := FForRlc;
  FSeqMcpOLD := FSeqMcp;
  FSeqMcrOLD := FSeqMcr;
  FTipPgtOLD := FTipPgt;
  FCodBanOLD := FCodBan;
  FCodAgeOLD := FCodAge;
  FCcbForOLD := FCcbFor;
  FIndVcrOLD := FIndVcr;
  FLctFinOLD := FLctFin;
  FLotBaiOLD := FLotBai;
  FNumLotOLD := FNumLot;
  FUsuGerOLD := FUsuGer;
  FDatGerOLD := FDatGer;
  FHorGerOLD := FHorGer;
  FIndExpOLD := FIndExp;
  FFilFixOLD := FFilFix;
  FNumFixOLD := FNumFix;
  FIntImpOLD := FIntImp;
  FRotNapOLD := FRotNap;
  FNumAprOLD := FNumApr;
  FSitAprOLD := FSitApr;
end;

end.
