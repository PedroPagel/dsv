unit o301mcr;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T301MCR = class(TTabelaPadrao)
  private
    FCodEmp: Integer;
    FCodFil: Integer;
    FNumTit: string;
    FCodTpt: string;
    FSeqMov: Integer;
    FCodTns: string;
    FDatMov: TDate;
    FObsMcr: string;
    FNumDoc: string;
    FVctPro: TDate;
    FProJrs: Char;
    FVlrAbe: Double;
    FCodFrj: string;
    FCotFrj: Double;
    FDatPgt: TDate;
    FCodFpg: Integer;
    FCotMcr: Double;
    FDiaAtr: Integer;
    FDiaJrs: Integer;
    FRecJoa: Char;
    FRecJod: Char;
    FDatLib: TDate;
    FVlrMov: Double;
    FVlrDsc: Double;
    FVlrOde: Double;
    FVlrJrs: Double;
    FVlrMul: Double;
    FVlrEnc: Double;
    FVlrCor: Double;
    FVlrOac: Double;
    FVlrPis: Double;
    FVlrBpr: Double;
    FVlrCof: Double;
    FVlrBcr: Double;
    FVlrPit: Double;
    FVlrBpt: Double;
    FVlrOpt: Double;
    FVlrCrt: Double;
    FVlrBct: Double;
    FVlrOct: Double;
    FVlrCsl: Double;
    FVlrBcl: Double;
    FVlrOcl: Double;
    FVlrOur: Double;
    FVlrBor: Double;
    FVlrOor: Double;
    FVlrLiq: Double;
    FVlrBco: Double;
    FVlrCom: Double;
    FPerJrs: Double;
    FUltPgt: TDate;
    FCjmAnt: TDate;
    FJrsCal: Double;
    FJrsPro: Char;
    FCodPor: string;
    FCodCrt: string;
    FPorAnt: string;
    FCrtAnt: string;
    FNumPrj: Integer;
    FCodFpj: Integer;
    FCtaFin: Integer;
    FCtaRed: Integer;
    FCodCcu: string;
    FEmpCco: Integer;
    FNumCco: string;
    FDatCco: TDate;
    FSeqCco: Integer;
    FFilRlc: Integer;
    FNumRlc: string;
    FTptRlc: string;
    FForRlc: Integer;
    FSeqRlc: Integer;
    FSeqMcp: Integer;
    FIndVcr: Char;
    FLctFin: Char;
    FTipCof: Integer;
    FLotBai: Integer;
    FLotBfi: Integer;
    FNumLot: Integer;
    FUsuGer: Integer;
    FDatGer: TDate;
    FHorGer: Integer;
    FIndExp: Integer;
    FFilFix: Integer;
    FNumFix: Integer;
    FRecMoa: Char;
    FIntImp: Char;
    FIntDif: Char;
    FVlrIrf: Double;
    FVlrBir: Double;
    FVlrOir: Double;

    FCodEmpOLD: Integer;
    FCodFilOLD: Integer;
    FNumTitOLD: string;
    FCodTptOLD: string;
    FSeqMovOLD: Integer;
    FCodTnsOLD: string;
    FDatMovOLD: TDate;
    FObsMcrOLD: string;
    FNumDocOLD: string;
    FVctProOLD: TDate;
    FProJrsOLD: Char;
    FVlrAbeOLD: Double;
    FCodFrjOLD: string;
    FCotFrjOLD: Double;
    FDatPgtOLD: TDate;
    FCodFpgOLD: Integer;
    FCotMcrOLD: Double;
    FDiaAtrOLD: Integer;
    FDiaJrsOLD: Integer;
    FRecJoaOLD: Char;
    FRecJodOLD: Char;
    FDatLibOLD: TDate;
    FVlrMovOLD: Double;
    FVlrDscOLD: Double;
    FVlrOdeOLD: Double;
    FVlrJrsOLD: Double;
    FVlrMulOLD: Double;
    FVlrEncOLD: Double;
    FVlrCorOLD: Double;
    FVlrOacOLD: Double;
    FVlrPisOLD: Double;
    FVlrBprOLD: Double;
    FVlrCofOLD: Double;
    FVlrBcrOLD: Double;
    FVlrPitOLD: Double;
    FVlrBptOLD: Double;
    FVlrOptOLD: Double;
    FVlrCrtOLD: Double;
    FVlrBctOLD: Double;
    FVlrOctOLD: Double;
    FVlrCslOLD: Double;
    FVlrBclOLD: Double;
    FVlrOclOLD: Double;
    FVlrOurOLD: Double;
    FVlrBorOLD: Double;
    FVlrOorOLD: Double;
    FVlrLiqOLD: Double;
    FVlrBcoOLD: Double;
    FVlrComOLD: Double;
    FPerJrsOLD: Double;
    FUltPgtOLD: TDate;
    FCjmAntOLD: TDate;
    FJrsCalOLD: Double;
    FJrsProOLD: Char;
    FCodPorOLD: string;
    FCodCrtOLD: string;
    FPorAntOLD: string;
    FCrtAntOLD: string;
    FNumPrjOLD: Integer;
    FCodFpjOLD: Integer;
    FCtaFinOLD: Integer;
    FCtaRedOLD: Integer;
    FCodCcuOLD: string;
    FEmpCcoOLD: Integer;
    FNumCcoOLD: string;
    FDatCcoOLD: TDate;
    FSeqCcoOLD: Integer;
    FFilRlcOLD: Integer;
    FNumRlcOLD: string;
    FTptRlcOLD: string;
    FForRlcOLD: Integer;
    FSeqRlcOLD: Integer;
    FSeqMcpOLD: Integer;
    FIndVcrOLD: Char;
    FLctFinOLD: Char;
    FTipCofOLD: Integer;
    FLotBaiOLD: Integer;
    FLotBfiOLD: Integer;
    FNumLotOLD: Integer;
    FUsuGerOLD: Integer;
    FDatGerOLD: TDate;
    FHorGerOLD: Integer;
    FIndExpOLD: Integer;
    FFilFixOLD: Integer;
    FNumFixOLD: Integer;
    FRecMoaOLD: Char;
    FIntImpOLD: Char;
    FIntDifOLD: Char;
    FVlrIrfOLD: Double;
    FVlrBirOLD: Double;
    FVlrOirOLD: Double;

    function GetCodEmp: Integer;
    procedure SetCodEmp(const pCodEmp: Integer);
    function GetCodFil: Integer;
    procedure SetCodFil(const pCodFil: Integer);
    function GetNumTit: string;
    procedure SetNumTit(const pNumTit: string);
    function GetCodTpt: string;
    procedure SetCodTpt(const pCodTpt: string);
    function GetSeqMov: Integer;
    procedure SetSeqMov(const pSeqMov: Integer);
    function GetCodTns: string;
    procedure SetCodTns(const pCodTns: string);
    function GetDatMov: TDate;
    procedure SetDatMov(const pDatMov: TDate);
    function GetObsMcr: string;
    procedure SetObsMcr(const pObsMcr: string);
    function GetNumDoc: string;
    procedure SetNumDoc(const pNumDoc: string);
    function GetVctPro: TDate;
    procedure SetVctPro(const pVctPro: TDate);
    function GetProJrs: Char;
    procedure SetProJrs(const pProJrs: Char);
    function GetVlrAbe: Double;
    procedure SetVlrAbe(const pVlrAbe: Double);
    function GetCodFrj: string;
    procedure SetCodFrj(const pCodFrj: string);
    function GetCotFrj: Double;
    procedure SetCotFrj(const pCotFrj: Double);
    function GetDatPgt: TDate;
    procedure SetDatPgt(const pDatPgt: TDate);
    function GetCodFpg: Integer;
    procedure SetCodFpg(const pCodFpg: Integer);
    function GetCotMcr: Double;
    procedure SetCotMcr(const pCotMcr: Double);
    function GetDiaAtr: Integer;
    procedure SetDiaAtr(const pDiaAtr: Integer);
    function GetDiaJrs: Integer;
    procedure SetDiaJrs(const pDiaJrs: Integer);
    function GetRecJoa: Char;
    procedure SetRecJoa(const pRecJoa: Char);
    function GetRecJod: Char;
    procedure SetRecJod(const pRecJod: Char);
    function GetDatLib: TDate;
    procedure SetDatLib(const pDatLib: TDate);
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
    function GetVlrPis: Double;
    procedure SetVlrPis(const pVlrPis: Double);
    function GetVlrBpr: Double;
    procedure SetVlrBpr(const pVlrBpr: Double);
    function GetVlrCof: Double;
    procedure SetVlrCof(const pVlrCof: Double);
    function GetVlrBcr: Double;
    procedure SetVlrBcr(const pVlrBcr: Double);
    function GetVlrPit: Double;
    procedure SetVlrPit(const pVlrPit: Double);
    function GetVlrBpt: Double;
    procedure SetVlrBpt(const pVlrBpt: Double);
    function GetVlrOpt: Double;
    procedure SetVlrOpt(const pVlrOpt: Double);
    function GetVlrCrt: Double;
    procedure SetVlrCrt(const pVlrCrt: Double);
    function GetVlrBct: Double;
    procedure SetVlrBct(const pVlrBct: Double);
    function GetVlrOct: Double;
    procedure SetVlrOct(const pVlrOct: Double);
    function GetVlrCsl: Double;
    procedure SetVlrCsl(const pVlrCsl: Double);
    function GetVlrBcl: Double;
    procedure SetVlrBcl(const pVlrBcl: Double);
    function GetVlrOcl: Double;
    procedure SetVlrOcl(const pVlrOcl: Double);
    function GetVlrOur: Double;
    procedure SetVlrOur(const pVlrOur: Double);
    function GetVlrBor: Double;
    procedure SetVlrBor(const pVlrBor: Double);
    function GetVlrOor: Double;
    procedure SetVlrOor(const pVlrOor: Double);
    function GetVlrLiq: Double;
    procedure SetVlrLiq(const pVlrLiq: Double);
    function GetVlrBco: Double;
    procedure SetVlrBco(const pVlrBco: Double);
    function GetVlrCom: Double;
    procedure SetVlrCom(const pVlrCom: Double);
    function GetPerJrs: Double;
    procedure SetPerJrs(const pPerJrs: Double);
    function GetUltPgt: TDate;
    procedure SetUltPgt(const pUltPgt: TDate);
    function GetCjmAnt: TDate;
    procedure SetCjmAnt(const pCjmAnt: TDate);
    function GetJrsCal: Double;
    procedure SetJrsCal(const pJrsCal: Double);
    function GetJrsPro: Char;
    procedure SetJrsPro(const pJrsPro: Char);
    function GetCodPor: string;
    procedure SetCodPor(const pCodPor: string);
    function GetCodCrt: string;
    procedure SetCodCrt(const pCodCrt: string);
    function GetPorAnt: string;
    procedure SetPorAnt(const pPorAnt: string);
    function GetCrtAnt: string;
    procedure SetCrtAnt(const pCrtAnt: string);
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
    function GetEmpCco: Integer;
    procedure SetEmpCco(const pEmpCco: Integer);
    function GetNumCco: string;
    procedure SetNumCco(const pNumCco: string);
    function GetDatCco: TDate;
    procedure SetDatCco(const pDatCco: TDate);
    function GetSeqCco: Integer;
    procedure SetSeqCco(const pSeqCco: Integer);
    function GetFilRlc: Integer;
    procedure SetFilRlc(const pFilRlc: Integer);
    function GetNumRlc: string;
    procedure SetNumRlc(const pNumRlc: string);
    function GetTptRlc: string;
    procedure SetTptRlc(const pTptRlc: string);
    function GetForRlc: Integer;
    procedure SetForRlc(const pForRlc: Integer);
    function GetSeqRlc: Integer;
    procedure SetSeqRlc(const pSeqRlc: Integer);
    function GetSeqMcp: Integer;
    procedure SetSeqMcp(const pSeqMcp: Integer);
    function GetIndVcr: Char;
    procedure SetIndVcr(const pIndVcr: Char);
    function GetLctFin: Char;
    procedure SetLctFin(const pLctFin: Char);
    function GetTipCof: Integer;
    procedure SetTipCof(const pTipCof: Integer);
    function GetLotBai: Integer;
    procedure SetLotBai(const pLotBai: Integer);
    function GetLotBfi: Integer;
    procedure SetLotBfi(const pLotBfi: Integer);
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
    function GetRecMoa: Char;
    procedure SetRecMoa(const pRecMoa: Char);
    function GetIntImp: Char;
    procedure SetIntImp(const pIntImp: Char);
    function GetIntDif: Char;
    procedure SetIntDif(const pIntDif: Char);
    function GetVlrIrf: Double;
    procedure SetVlrIrf(const pVlrIrf: Double);
    function GetVlrBir: Double;
    procedure SetVlrBir(const pVlrBir: Double);
    function GetVlrOir: Double;
    procedure SetVlrOir(const pVlrOir: Double);

    function GetCodEmpOld: Integer;
    procedure SetCodEmpOld(const pCodEmp: Integer);
    function GetCodFilOld: Integer;
    procedure SetCodFilOld(const pCodFil: Integer);
    function GetNumTitOld: string;
    procedure SetNumTitOld(const pNumTit: string);
    function GetCodTptOld: string;
    procedure SetCodTptOld(const pCodTpt: string);
    function GetSeqMovOld: Integer;
    procedure SetSeqMovOld(const pSeqMov: Integer);
    function GetCodTnsOld: string;
    procedure SetCodTnsOld(const pCodTns: string);
    function GetDatMovOld: TDate;
    procedure SetDatMovOld(const pDatMov: TDate);
    function GetObsMcrOld: string;
    procedure SetObsMcrOld(const pObsMcr: string);
    function GetNumDocOld: string;
    procedure SetNumDocOld(const pNumDoc: string);
    function GetVctProOld: TDate;
    procedure SetVctProOld(const pVctPro: TDate);
    function GetProJrsOld: Char;
    procedure SetProJrsOld(const pProJrs: Char);
    function GetVlrAbeOld: Double;
    procedure SetVlrAbeOld(const pVlrAbe: Double);
    function GetCodFrjOld: string;
    procedure SetCodFrjOld(const pCodFrj: string);
    function GetCotFrjOld: Double;
    procedure SetCotFrjOld(const pCotFrj: Double);
    function GetDatPgtOld: TDate;
    procedure SetDatPgtOld(const pDatPgt: TDate);
    function GetCodFpgOld: Integer;
    procedure SetCodFpgOld(const pCodFpg: Integer);
    function GetCotMcrOld: Double;
    procedure SetCotMcrOld(const pCotMcr: Double);
    function GetDiaAtrOld: Integer;
    procedure SetDiaAtrOld(const pDiaAtr: Integer);
    function GetDiaJrsOld: Integer;
    procedure SetDiaJrsOld(const pDiaJrs: Integer);
    function GetRecJoaOld: Char;
    procedure SetRecJoaOld(const pRecJoa: Char);
    function GetRecJodOld: Char;
    procedure SetRecJodOld(const pRecJod: Char);
    function GetDatLibOld: TDate;
    procedure SetDatLibOld(const pDatLib: TDate);
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
    function GetVlrPisOld: Double;
    procedure SetVlrPisOld(const pVlrPis: Double);
    function GetVlrBprOld: Double;
    procedure SetVlrBprOld(const pVlrBpr: Double);
    function GetVlrCofOld: Double;
    procedure SetVlrCofOld(const pVlrCof: Double);
    function GetVlrBcrOld: Double;
    procedure SetVlrBcrOld(const pVlrBcr: Double);
    function GetVlrPitOld: Double;
    procedure SetVlrPitOld(const pVlrPit: Double);
    function GetVlrBptOld: Double;
    procedure SetVlrBptOld(const pVlrBpt: Double);
    function GetVlrOptOld: Double;
    procedure SetVlrOptOld(const pVlrOpt: Double);
    function GetVlrCrtOld: Double;
    procedure SetVlrCrtOld(const pVlrCrt: Double);
    function GetVlrBctOld: Double;
    procedure SetVlrBctOld(const pVlrBct: Double);
    function GetVlrOctOld: Double;
    procedure SetVlrOctOld(const pVlrOct: Double);
    function GetVlrCslOld: Double;
    procedure SetVlrCslOld(const pVlrCsl: Double);
    function GetVlrBclOld: Double;
    procedure SetVlrBclOld(const pVlrBcl: Double);
    function GetVlrOclOld: Double;
    procedure SetVlrOclOld(const pVlrOcl: Double);
    function GetVlrOurOld: Double;
    procedure SetVlrOurOld(const pVlrOur: Double);
    function GetVlrBorOld: Double;
    procedure SetVlrBorOld(const pVlrBor: Double);
    function GetVlrOorOld: Double;
    procedure SetVlrOorOld(const pVlrOor: Double);
    function GetVlrLiqOld: Double;
    procedure SetVlrLiqOld(const pVlrLiq: Double);
    function GetVlrBcoOld: Double;
    procedure SetVlrBcoOld(const pVlrBco: Double);
    function GetVlrComOld: Double;
    procedure SetVlrComOld(const pVlrCom: Double);
    function GetPerJrsOld: Double;
    procedure SetPerJrsOld(const pPerJrs: Double);
    function GetUltPgtOld: TDate;
    procedure SetUltPgtOld(const pUltPgt: TDate);
    function GetCjmAntOld: TDate;
    procedure SetCjmAntOld(const pCjmAnt: TDate);
    function GetJrsCalOld: Double;
    procedure SetJrsCalOld(const pJrsCal: Double);
    function GetJrsProOld: Char;
    procedure SetJrsProOld(const pJrsPro: Char);
    function GetCodPorOld: string;
    procedure SetCodPorOld(const pCodPor: string);
    function GetCodCrtOld: string;
    procedure SetCodCrtOld(const pCodCrt: string);
    function GetPorAntOld: string;
    procedure SetPorAntOld(const pPorAnt: string);
    function GetCrtAntOld: string;
    procedure SetCrtAntOld(const pCrtAnt: string);
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
    function GetEmpCcoOld: Integer;
    procedure SetEmpCcoOld(const pEmpCco: Integer);
    function GetNumCcoOld: string;
    procedure SetNumCcoOld(const pNumCco: string);
    function GetDatCcoOld: TDate;
    procedure SetDatCcoOld(const pDatCco: TDate);
    function GetSeqCcoOld: Integer;
    procedure SetSeqCcoOld(const pSeqCco: Integer);
    function GetFilRlcOld: Integer;
    procedure SetFilRlcOld(const pFilRlc: Integer);
    function GetNumRlcOld: string;
    procedure SetNumRlcOld(const pNumRlc: string);
    function GetTptRlcOld: string;
    procedure SetTptRlcOld(const pTptRlc: string);
    function GetForRlcOld: Integer;
    procedure SetForRlcOld(const pForRlc: Integer);
    function GetSeqRlcOld: Integer;
    procedure SetSeqRlcOld(const pSeqRlc: Integer);
    function GetSeqMcpOld: Integer;
    procedure SetSeqMcpOld(const pSeqMcp: Integer);
    function GetIndVcrOld: Char;
    procedure SetIndVcrOld(const pIndVcr: Char);
    function GetLctFinOld: Char;
    procedure SetLctFinOld(const pLctFin: Char);
    function GetTipCofOld: Integer;
    procedure SetTipCofOld(const pTipCof: Integer);
    function GetLotBaiOld: Integer;
    procedure SetLotBaiOld(const pLotBai: Integer);
    function GetLotBfiOld: Integer;
    procedure SetLotBfiOld(const pLotBfi: Integer);
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
    function GetRecMoaOld: Char;
    procedure SetRecMoaOld(const pRecMoa: Char);
    function GetIntImpOld: Char;
    procedure SetIntImpOld(const pIntImp: Char);
    function GetIntDifOld: Char;
    procedure SetIntDifOld(const pIntDif: Char);
    function GetVlrIrfOld: Double;
    procedure SetVlrIrfOld(const pVlrIrf: Double);
    function GetVlrBirOld: Double;
    procedure SetVlrBirOld(const pVlrBir: Double);
    function GetVlrOirOld: Double;
    procedure SetVlrOirOld(const pVlrOir: Double);
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
    property SeqMov: Integer read GetSeqMov write SetSeqMov;
    property CodTns: string read GetCodTns write SetCodTns;
    property DatMov: TDate read GetDatMov write SetDatMov;
    property ObsMcr: string read GetObsMcr write SetObsMcr;
    property NumDoc: string read GetNumDoc write SetNumDoc;
    property VctPro: TDate read GetVctPro write SetVctPro;
    property ProJrs: Char read GetProJrs write SetProJrs;
    property VlrAbe: Double read GetVlrAbe write SetVlrAbe;
    property CodFrj: string read GetCodFrj write SetCodFrj;
    property CotFrj: Double read GetCotFrj write SetCotFrj;
    property DatPgt: TDate read GetDatPgt write SetDatPgt;
    property CodFpg: Integer read GetCodFpg write SetCodFpg;
    property CotMcr: Double read GetCotMcr write SetCotMcr;
    property DiaAtr: Integer read GetDiaAtr write SetDiaAtr;
    property DiaJrs: Integer read GetDiaJrs write SetDiaJrs;
    property RecJoa: Char read GetRecJoa write SetRecJoa;
    property RecJod: Char read GetRecJod write SetRecJod;
    property DatLib: TDate read GetDatLib write SetDatLib;
    property VlrMov: Double read GetVlrMov write SetVlrMov;
    property VlrDsc: Double read GetVlrDsc write SetVlrDsc;
    property VlrOde: Double read GetVlrOde write SetVlrOde;
    property VlrJrs: Double read GetVlrJrs write SetVlrJrs;
    property VlrMul: Double read GetVlrMul write SetVlrMul;
    property VlrEnc: Double read GetVlrEnc write SetVlrEnc;
    property VlrCor: Double read GetVlrCor write SetVlrCor;
    property VlrOac: Double read GetVlrOac write SetVlrOac;
    property VlrPis: Double read GetVlrPis write SetVlrPis;
    property VlrBpr: Double read GetVlrBpr write SetVlrBpr;
    property VlrCof: Double read GetVlrCof write SetVlrCof;
    property VlrBcr: Double read GetVlrBcr write SetVlrBcr;
    property VlrPit: Double read GetVlrPit write SetVlrPit;
    property VlrBpt: Double read GetVlrBpt write SetVlrBpt;
    property VlrOpt: Double read GetVlrOpt write SetVlrOpt;
    property VlrCrt: Double read GetVlrCrt write SetVlrCrt;
    property VlrBct: Double read GetVlrBct write SetVlrBct;
    property VlrOct: Double read GetVlrOct write SetVlrOct;
    property VlrCsl: Double read GetVlrCsl write SetVlrCsl;
    property VlrBcl: Double read GetVlrBcl write SetVlrBcl;
    property VlrOcl: Double read GetVlrOcl write SetVlrOcl;
    property VlrOur: Double read GetVlrOur write SetVlrOur;
    property VlrBor: Double read GetVlrBor write SetVlrBor;
    property VlrOor: Double read GetVlrOor write SetVlrOor;
    property VlrLiq: Double read GetVlrLiq write SetVlrLiq;
    property VlrBco: Double read GetVlrBco write SetVlrBco;
    property VlrCom: Double read GetVlrCom write SetVlrCom;
    property PerJrs: Double read GetPerJrs write SetPerJrs;
    property UltPgt: TDate read GetUltPgt write SetUltPgt;
    property CjmAnt: TDate read GetCjmAnt write SetCjmAnt;
    property JrsCal: Double read GetJrsCal write SetJrsCal;
    property JrsPro: Char read GetJrsPro write SetJrsPro;
    property CodPor: string read GetCodPor write SetCodPor;
    property CodCrt: string read GetCodCrt write SetCodCrt;
    property PorAnt: string read GetPorAnt write SetPorAnt;
    property CrtAnt: string read GetCrtAnt write SetCrtAnt;
    property NumPrj: Integer read GetNumPrj write SetNumPrj;
    property CodFpj: Integer read GetCodFpj write SetCodFpj;
    property CtaFin: Integer read GetCtaFin write SetCtaFin;
    property CtaRed: Integer read GetCtaRed write SetCtaRed;
    property CodCcu: string read GetCodCcu write SetCodCcu;
    property EmpCco: Integer read GetEmpCco write SetEmpCco;
    property NumCco: string read GetNumCco write SetNumCco;
    property DatCco: TDate read GetDatCco write SetDatCco;
    property SeqCco: Integer read GetSeqCco write SetSeqCco;
    property FilRlc: Integer read GetFilRlc write SetFilRlc;
    property NumRlc: string read GetNumRlc write SetNumRlc;
    property TptRlc: string read GetTptRlc write SetTptRlc;
    property ForRlc: Integer read GetForRlc write SetForRlc;
    property SeqRlc: Integer read GetSeqRlc write SetSeqRlc;
    property SeqMcp: Integer read GetSeqMcp write SetSeqMcp;
    property IndVcr: Char read GetIndVcr write SetIndVcr;
    property LctFin: Char read GetLctFin write SetLctFin;
    property TipCof: Integer read GetTipCof write SetTipCof;
    property LotBai: Integer read GetLotBai write SetLotBai;
    property LotBfi: Integer read GetLotBfi write SetLotBfi;
    property NumLot: Integer read GetNumLot write SetNumLot;
    property UsuGer: Integer read GetUsuGer write SetUsuGer;
    property DatGer: TDate read GetDatGer write SetDatGer;
    property HorGer: Integer read GetHorGer write SetHorGer;
    property IndExp: Integer read GetIndExp write SetIndExp;
    property FilFix: Integer read GetFilFix write SetFilFix;
    property NumFix: Integer read GetNumFix write SetNumFix;
    property RecMoa: Char read GetRecMoa write SetRecMoa;
    property IntImp: Char read GetIntImp write SetIntImp;
    property IntDif: Char read GetIntDif write SetIntDif;
    property VlrIrf: Double read GetVlrIrf write SetVlrIrf;
    property VlrBir: Double read GetVlrBir write SetVlrBir;
    property VlrOir: Double read GetVlrOir write SetVlrOir;

    property OLD_CodEmp: Integer read GetCodEmpOLD write SetCodEmpOLD;
    property OLD_CodFil: Integer read GetCodFilOLD write SetCodFilOLD;
    property OLD_NumTit: string read GetNumTitOLD write SetNumTitOLD;
    property OLD_CodTpt: string read GetCodTptOLD write SetCodTptOLD;
    property OLD_SeqMov: Integer read GetSeqMovOLD write SetSeqMovOLD;
    property OLD_CodTns: string read GetCodTnsOLD write SetCodTnsOLD;
    property OLD_DatMov: TDate read GetDatMovOLD write SetDatMovOLD;
    property OLD_ObsMcr: string read GetObsMcrOLD write SetObsMcrOLD;
    property OLD_NumDoc: string read GetNumDocOLD write SetNumDocOLD;
    property OLD_VctPro: TDate read GetVctProOLD write SetVctProOLD;
    property OLD_ProJrs: Char read GetProJrsOLD write SetProJrsOLD;
    property OLD_VlrAbe: Double read GetVlrAbeOLD write SetVlrAbeOLD;
    property OLD_CodFrj: string read GetCodFrjOLD write SetCodFrjOLD;
    property OLD_CotFrj: Double read GetCotFrjOLD write SetCotFrjOLD;
    property OLD_DatPgt: TDate read GetDatPgtOLD write SetDatPgtOLD;
    property OLD_CodFpg: Integer read GetCodFpgOLD write SetCodFpgOLD;
    property OLD_CotMcr: Double read GetCotMcrOLD write SetCotMcrOLD;
    property OLD_DiaAtr: Integer read GetDiaAtrOLD write SetDiaAtrOLD;
    property OLD_DiaJrs: Integer read GetDiaJrsOLD write SetDiaJrsOLD;
    property OLD_RecJoa: Char read GetRecJoaOLD write SetRecJoaOLD;
    property OLD_RecJod: Char read GetRecJodOLD write SetRecJodOLD;
    property OLD_DatLib: TDate read GetDatLibOLD write SetDatLibOLD;
    property OLD_VlrMov: Double read GetVlrMovOLD write SetVlrMovOLD;
    property OLD_VlrDsc: Double read GetVlrDscOLD write SetVlrDscOLD;
    property OLD_VlrOde: Double read GetVlrOdeOLD write SetVlrOdeOLD;
    property OLD_VlrJrs: Double read GetVlrJrsOLD write SetVlrJrsOLD;
    property OLD_VlrMul: Double read GetVlrMulOLD write SetVlrMulOLD;
    property OLD_VlrEnc: Double read GetVlrEncOLD write SetVlrEncOLD;
    property OLD_VlrCor: Double read GetVlrCorOLD write SetVlrCorOLD;
    property OLD_VlrOac: Double read GetVlrOacOLD write SetVlrOacOLD;
    property OLD_VlrPis: Double read GetVlrPisOLD write SetVlrPisOLD;
    property OLD_VlrBpr: Double read GetVlrBprOLD write SetVlrBprOLD;
    property OLD_VlrCof: Double read GetVlrCofOLD write SetVlrCofOLD;
    property OLD_VlrBcr: Double read GetVlrBcrOLD write SetVlrBcrOLD;
    property OLD_VlrPit: Double read GetVlrPitOLD write SetVlrPitOLD;
    property OLD_VlrBpt: Double read GetVlrBptOLD write SetVlrBptOLD;
    property OLD_VlrOpt: Double read GetVlrOptOLD write SetVlrOptOLD;
    property OLD_VlrCrt: Double read GetVlrCrtOLD write SetVlrCrtOLD;
    property OLD_VlrBct: Double read GetVlrBctOLD write SetVlrBctOLD;
    property OLD_VlrOct: Double read GetVlrOctOLD write SetVlrOctOLD;
    property OLD_VlrCsl: Double read GetVlrCslOLD write SetVlrCslOLD;
    property OLD_VlrBcl: Double read GetVlrBclOLD write SetVlrBclOLD;
    property OLD_VlrOcl: Double read GetVlrOclOLD write SetVlrOclOLD;
    property OLD_VlrOur: Double read GetVlrOurOLD write SetVlrOurOLD;
    property OLD_VlrBor: Double read GetVlrBorOLD write SetVlrBorOLD;
    property OLD_VlrOor: Double read GetVlrOorOLD write SetVlrOorOLD;
    property OLD_VlrLiq: Double read GetVlrLiqOLD write SetVlrLiqOLD;
    property OLD_VlrBco: Double read GetVlrBcoOLD write SetVlrBcoOLD;
    property OLD_VlrCom: Double read GetVlrComOLD write SetVlrComOLD;
    property OLD_PerJrs: Double read GetPerJrsOLD write SetPerJrsOLD;
    property OLD_UltPgt: TDate read GetUltPgtOLD write SetUltPgtOLD;
    property OLD_CjmAnt: TDate read GetCjmAntOLD write SetCjmAntOLD;
    property OLD_JrsCal: Double read GetJrsCalOLD write SetJrsCalOLD;
    property OLD_JrsPro: Char read GetJrsProOLD write SetJrsProOLD;
    property OLD_CodPor: string read GetCodPorOLD write SetCodPorOLD;
    property OLD_CodCrt: string read GetCodCrtOLD write SetCodCrtOLD;
    property OLD_PorAnt: string read GetPorAntOLD write SetPorAntOLD;
    property OLD_CrtAnt: string read GetCrtAntOLD write SetCrtAntOLD;
    property OLD_NumPrj: Integer read GetNumPrjOLD write SetNumPrjOLD;
    property OLD_CodFpj: Integer read GetCodFpjOLD write SetCodFpjOLD;
    property OLD_CtaFin: Integer read GetCtaFinOLD write SetCtaFinOLD;
    property OLD_CtaRed: Integer read GetCtaRedOLD write SetCtaRedOLD;
    property OLD_CodCcu: string read GetCodCcuOLD write SetCodCcuOLD;
    property OLD_EmpCco: Integer read GetEmpCcoOLD write SetEmpCcoOLD;
    property OLD_NumCco: string read GetNumCcoOLD write SetNumCcoOLD;
    property OLD_DatCco: TDate read GetDatCcoOLD write SetDatCcoOLD;
    property OLD_SeqCco: Integer read GetSeqCcoOLD write SetSeqCcoOLD;
    property OLD_FilRlc: Integer read GetFilRlcOLD write SetFilRlcOLD;
    property OLD_NumRlc: string read GetNumRlcOLD write SetNumRlcOLD;
    property OLD_TptRlc: string read GetTptRlcOLD write SetTptRlcOLD;
    property OLD_ForRlc: Integer read GetForRlcOLD write SetForRlcOLD;
    property OLD_SeqRlc: Integer read GetSeqRlcOLD write SetSeqRlcOLD;
    property OLD_SeqMcp: Integer read GetSeqMcpOLD write SetSeqMcpOLD;
    property OLD_IndVcr: Char read GetIndVcrOLD write SetIndVcrOLD;
    property OLD_LctFin: Char read GetLctFinOLD write SetLctFinOLD;
    property OLD_TipCof: Integer read GetTipCofOLD write SetTipCofOLD;
    property OLD_LotBai: Integer read GetLotBaiOLD write SetLotBaiOLD;
    property OLD_LotBfi: Integer read GetLotBfiOLD write SetLotBfiOLD;
    property OLD_NumLot: Integer read GetNumLotOLD write SetNumLotOLD;
    property OLD_UsuGer: Integer read GetUsuGerOLD write SetUsuGerOLD;
    property OLD_DatGer: TDate read GetDatGerOLD write SetDatGerOLD;
    property OLD_HorGer: Integer read GetHorGerOLD write SetHorGerOLD;
    property OLD_IndExp: Integer read GetIndExpOLD write SetIndExpOLD;
    property OLD_FilFix: Integer read GetFilFixOLD write SetFilFixOLD;
    property OLD_NumFix: Integer read GetNumFixOLD write SetNumFixOLD;
    property OLD_RecMoa: Char read GetRecMoaOLD write SetRecMoaOLD;
    property OLD_IntImp: Char read GetIntImpOLD write SetIntImpOLD;
    property OLD_IntDif: Char read GetIntDifOLD write SetIntDifOLD;
    property OLD_VlrIrf: Double read GetVlrIrfOLD write SetVlrIrfOLD;
    property OLD_VlrBir: Double read GetVlrBirOLD write SetVlrBirOLD;
    property OLD_VlrOir: Double read GetVlrOirOLD write SetVlrOirOLD;
  end;

implementation

{ T301MCR }

constructor T301MCR.Create();
begin
  AddForeignKeys(['CodEmp','CodFil','NumTit','CodTpt','CodTns'], ['CodEmp','CodFil','NumTit','CodTpt','CodTns']);
  AddPrimaryKeys('CodEmp;CodFil;NumTit;CodTpt;SeqMov');

  inherited Create('E301MCR');
end;

destructor T301MCR.Destroy();
begin
  inherited;
end;

function T301MCR.GetCodEmp: Integer;
begin
  Result := FCodEmp;
end;

procedure T301MCR.SetCodEmp(const pCodEmp: Integer);
begin
  FCodEmp := pCodEmp;

  CheckField('CodEmp');
end;

function T301MCR.GetCodFil: Integer;
begin
  Result := FCodFil;
end;

procedure T301MCR.SetCodFil(const pCodFil: Integer);
begin
  FCodFil := pCodFil;

  CheckField('CodFil');
end;

function T301MCR.GetNumTit: string;
begin
  Result := FNumTit;
end;

procedure T301MCR.SetNumTit(const pNumTit: string);
begin
  FNumTit := pNumTit;

  CheckField('NumTit');
end;

function T301MCR.GetCodTpt: string;
begin
  Result := FCodTpt;
end;

procedure T301MCR.SetCodTpt(const pCodTpt: string);
begin
  FCodTpt := pCodTpt;

  CheckField('CodTpt');
end;

function T301MCR.GetSeqMov: Integer;
begin
  Result := FSeqMov;
end;

procedure T301MCR.SetSeqMov(const pSeqMov: Integer);
begin
  FSeqMov := pSeqMov;

  CheckField('SeqMov');
end;

function T301MCR.GetCodTns: string;
begin
  Result := FCodTns;
end;

procedure T301MCR.SetCodTns(const pCodTns: string);
begin
  FCodTns := pCodTns;

  CheckField('CodTns');
end;

function T301MCR.GetDatMov: TDate;
begin
  Result := FDatMov;
end;

procedure T301MCR.SetDatMov(const pDatMov: TDate);
begin
  FDatMov := pDatMov;

  CheckField('DatMov');
end;

function T301MCR.GetObsMcr: string;
begin
  Result := FObsMcr;
end;

procedure T301MCR.SetObsMcr(const pObsMcr: string);
begin
  FObsMcr := pObsMcr;

  CheckField('ObsMcr');
end;

function T301MCR.GetNumDoc: string;
begin
  Result := FNumDoc;
end;

procedure T301MCR.SetNumDoc(const pNumDoc: string);
begin
  FNumDoc := pNumDoc;

  CheckField('NumDoc');
end;

function T301MCR.GetVctPro: TDate;
begin
  Result := FVctPro;
end;

procedure T301MCR.SetVctPro(const pVctPro: TDate);
begin
  FVctPro := pVctPro;

  CheckField('VctPro');
end;

function T301MCR.GetProJrs: Char;
begin
  Result := FProJrs;
end;

procedure T301MCR.SetProJrs(const pProJrs: Char);
begin
  FProJrs := pProJrs;

  CheckField('ProJrs');
end;

function T301MCR.GetVlrAbe: Double;
begin
  Result := FVlrAbe;
end;

procedure T301MCR.SetVlrAbe(const pVlrAbe: Double);
begin
  FVlrAbe := pVlrAbe;

  CheckField('VlrAbe');
end;

function T301MCR.GetCodFrj: string;
begin
  Result := FCodFrj;
end;

procedure T301MCR.SetCodFrj(const pCodFrj: string);
begin
  FCodFrj := pCodFrj;

  CheckField('CodFrj');
end;

function T301MCR.GetCotFrj: Double;
begin
  Result := FCotFrj;
end;

procedure T301MCR.SetCotFrj(const pCotFrj: Double);
begin
  FCotFrj := pCotFrj;

  CheckField('CotFrj');
end;

function T301MCR.GetDatPgt: TDate;
begin
  Result := FDatPgt;
end;

procedure T301MCR.SetDatPgt(const pDatPgt: TDate);
begin
  FDatPgt := pDatPgt;

  CheckField('DatPgt');
end;

function T301MCR.GetCodFpg: Integer;
begin
  Result := FCodFpg;
end;

procedure T301MCR.SetCodFpg(const pCodFpg: Integer);
begin
  FCodFpg := pCodFpg;

  CheckField('CodFpg');
end;

function T301MCR.GetCotMcr: Double;
begin
  Result := FCotMcr;
end;

procedure T301MCR.SetCotMcr(const pCotMcr: Double);
begin
  FCotMcr := pCotMcr;

  CheckField('CotMcr');
end;

function T301MCR.GetDiaAtr: Integer;
begin
  Result := FDiaAtr;
end;

procedure T301MCR.SetDiaAtr(const pDiaAtr: Integer);
begin
  FDiaAtr := pDiaAtr;

  CheckField('DiaAtr');
end;

function T301MCR.GetDiaJrs: Integer;
begin
  Result := FDiaJrs;
end;

procedure T301MCR.SetDiaJrs(const pDiaJrs: Integer);
begin
  FDiaJrs := pDiaJrs;

  CheckField('DiaJrs');
end;

function T301MCR.GetRecJoa: Char;
begin
  Result := FRecJoa;
end;

procedure T301MCR.SetRecJoa(const pRecJoa: Char);
begin
  FRecJoa := pRecJoa;

  CheckField('RecJoa');
end;

function T301MCR.GetRecJod: Char;
begin
  Result := FRecJod;
end;

procedure T301MCR.SetRecJod(const pRecJod: Char);
begin
  FRecJod := pRecJod;

  CheckField('RecJod');
end;

function T301MCR.GetDatLib: TDate;
begin
  Result := FDatLib;
end;

procedure T301MCR.SetDatLib(const pDatLib: TDate);
begin
  FDatLib := pDatLib;

  CheckField('DatLib');
end;

function T301MCR.GetVlrMov: Double;
begin
  Result := FVlrMov;
end;

procedure T301MCR.SetVlrMov(const pVlrMov: Double);
begin
  FVlrMov := pVlrMov;

  CheckField('VlrMov');
end;

function T301MCR.GetVlrDsc: Double;
begin
  Result := FVlrDsc;
end;

procedure T301MCR.SetVlrDsc(const pVlrDsc: Double);
begin
  FVlrDsc := pVlrDsc;

  CheckField('VlrDsc');
end;

function T301MCR.GetVlrOde: Double;
begin
  Result := FVlrOde;
end;

procedure T301MCR.SetVlrOde(const pVlrOde: Double);
begin
  FVlrOde := pVlrOde;

  CheckField('VlrOde');
end;

function T301MCR.GetVlrJrs: Double;
begin
  Result := FVlrJrs;
end;

procedure T301MCR.SetVlrJrs(const pVlrJrs: Double);
begin
  FVlrJrs := pVlrJrs;

  CheckField('VlrJrs');
end;

function T301MCR.GetVlrMul: Double;
begin
  Result := FVlrMul;
end;

procedure T301MCR.SetVlrMul(const pVlrMul: Double);
begin
  FVlrMul := pVlrMul;

  CheckField('VlrMul');
end;

function T301MCR.GetVlrEnc: Double;
begin
  Result := FVlrEnc;
end;

procedure T301MCR.SetVlrEnc(const pVlrEnc: Double);
begin
  FVlrEnc := pVlrEnc;

  CheckField('VlrEnc');
end;

function T301MCR.GetVlrCor: Double;
begin
  Result := FVlrCor;
end;

procedure T301MCR.SetVlrCor(const pVlrCor: Double);
begin
  FVlrCor := pVlrCor;

  CheckField('VlrCor');
end;

function T301MCR.GetVlrOac: Double;
begin
  Result := FVlrOac;
end;

procedure T301MCR.SetVlrOac(const pVlrOac: Double);
begin
  FVlrOac := pVlrOac;

  CheckField('VlrOac');
end;

function T301MCR.GetVlrPis: Double;
begin
  Result := FVlrPis;
end;

procedure T301MCR.SetVlrPis(const pVlrPis: Double);
begin
  FVlrPis := pVlrPis;

  CheckField('VlrPis');
end;

function T301MCR.GetVlrBpr: Double;
begin
  Result := FVlrBpr;
end;

procedure T301MCR.SetVlrBpr(const pVlrBpr: Double);
begin
  FVlrBpr := pVlrBpr;

  CheckField('VlrBpr');
end;

function T301MCR.GetVlrCof: Double;
begin
  Result := FVlrCof;
end;

procedure T301MCR.SetVlrCof(const pVlrCof: Double);
begin
  FVlrCof := pVlrCof;

  CheckField('VlrCof');
end;

function T301MCR.GetVlrBcr: Double;
begin
  Result := FVlrBcr;
end;

procedure T301MCR.SetVlrBcr(const pVlrBcr: Double);
begin
  FVlrBcr := pVlrBcr;

  CheckField('VlrBcr');
end;

function T301MCR.GetVlrPit: Double;
begin
  Result := FVlrPit;
end;

procedure T301MCR.SetVlrPit(const pVlrPit: Double);
begin
  FVlrPit := pVlrPit;

  CheckField('VlrPit');
end;

function T301MCR.GetVlrBpt: Double;
begin
  Result := FVlrBpt;
end;

procedure T301MCR.SetVlrBpt(const pVlrBpt: Double);
begin
  FVlrBpt := pVlrBpt;

  CheckField('VlrBpt');
end;

function T301MCR.GetVlrOpt: Double;
begin
  Result := FVlrOpt;
end;

procedure T301MCR.SetVlrOpt(const pVlrOpt: Double);
begin
  FVlrOpt := pVlrOpt;

  CheckField('VlrOpt');
end;

function T301MCR.GetVlrCrt: Double;
begin
  Result := FVlrCrt;
end;

procedure T301MCR.SetVlrCrt(const pVlrCrt: Double);
begin
  FVlrCrt := pVlrCrt;

  CheckField('VlrCrt');
end;

function T301MCR.GetVlrBct: Double;
begin
  Result := FVlrBct;
end;

procedure T301MCR.SetVlrBct(const pVlrBct: Double);
begin
  FVlrBct := pVlrBct;

  CheckField('VlrBct');
end;

function T301MCR.GetVlrOct: Double;
begin
  Result := FVlrOct;
end;

procedure T301MCR.SetVlrOct(const pVlrOct: Double);
begin
  FVlrOct := pVlrOct;

  CheckField('VlrOct');
end;

function T301MCR.GetVlrCsl: Double;
begin
  Result := FVlrCsl;
end;

procedure T301MCR.SetVlrCsl(const pVlrCsl: Double);
begin
  FVlrCsl := pVlrCsl;

  CheckField('VlrCsl');
end;

function T301MCR.GetVlrBcl: Double;
begin
  Result := FVlrBcl;
end;

procedure T301MCR.SetVlrBcl(const pVlrBcl: Double);
begin
  FVlrBcl := pVlrBcl;

  CheckField('VlrBcl');
end;

function T301MCR.GetVlrOcl: Double;
begin
  Result := FVlrOcl;
end;

procedure T301MCR.SetVlrOcl(const pVlrOcl: Double);
begin
  FVlrOcl := pVlrOcl;

  CheckField('VlrOcl');
end;

function T301MCR.GetVlrOur: Double;
begin
  Result := FVlrOur;
end;

procedure T301MCR.SetVlrOur(const pVlrOur: Double);
begin
  FVlrOur := pVlrOur;

  CheckField('VlrOur');
end;

function T301MCR.GetVlrBor: Double;
begin
  Result := FVlrBor;
end;

procedure T301MCR.SetVlrBor(const pVlrBor: Double);
begin
  FVlrBor := pVlrBor;

  CheckField('VlrBor');
end;

function T301MCR.GetVlrOor: Double;
begin
  Result := FVlrOor;
end;

procedure T301MCR.SetVlrOor(const pVlrOor: Double);
begin
  FVlrOor := pVlrOor;

  CheckField('VlrOor');
end;

function T301MCR.GetVlrLiq: Double;
begin
  Result := FVlrLiq;
end;

procedure T301MCR.SetVlrLiq(const pVlrLiq: Double);
begin
  FVlrLiq := pVlrLiq;

  CheckField('VlrLiq');
end;

function T301MCR.GetVlrBco: Double;
begin
  Result := FVlrBco;
end;

procedure T301MCR.SetVlrBco(const pVlrBco: Double);
begin
  FVlrBco := pVlrBco;

  CheckField('VlrBco');
end;

function T301MCR.GetVlrCom: Double;
begin
  Result := FVlrCom;
end;

procedure T301MCR.SetVlrCom(const pVlrCom: Double);
begin
  FVlrCom := pVlrCom;

  CheckField('VlrCom');
end;

function T301MCR.GetPerJrs: Double;
begin
  Result := FPerJrs;
end;

procedure T301MCR.SetPerJrs(const pPerJrs: Double);
begin
  FPerJrs := pPerJrs;

  CheckField('PerJrs');
end;

function T301MCR.GetUltPgt: TDate;
begin
  Result := FUltPgt;
end;

procedure T301MCR.SetUltPgt(const pUltPgt: TDate);
begin
  FUltPgt := pUltPgt;

  CheckField('UltPgt');
end;

function T301MCR.GetCjmAnt: TDate;
begin
  Result := FCjmAnt;
end;

procedure T301MCR.SetCjmAnt(const pCjmAnt: TDate);
begin
  FCjmAnt := pCjmAnt;

  CheckField('CjmAnt');
end;

function T301MCR.GetJrsCal: Double;
begin
  Result := FJrsCal;
end;

procedure T301MCR.SetJrsCal(const pJrsCal: Double);
begin
  FJrsCal := pJrsCal;

  CheckField('JrsCal');
end;

function T301MCR.GetJrsPro: Char;
begin
  Result := FJrsPro;
end;

procedure T301MCR.SetJrsPro(const pJrsPro: Char);
begin
  FJrsPro := pJrsPro;

  CheckField('JrsPro');
end;

function T301MCR.GetCodPor: string;
begin
  Result := FCodPor;
end;

procedure T301MCR.SetCodPor(const pCodPor: string);
begin
  FCodPor := pCodPor;

  CheckField('CodPor');
end;

function T301MCR.GetCodCrt: string;
begin
  Result := FCodCrt;
end;

procedure T301MCR.SetCodCrt(const pCodCrt: string);
begin
  FCodCrt := pCodCrt;

  CheckField('CodCrt');
end;

function T301MCR.GetPorAnt: string;
begin
  Result := FPorAnt;
end;

procedure T301MCR.SetPorAnt(const pPorAnt: string);
begin
  FPorAnt := pPorAnt;

  CheckField('PorAnt');
end;

function T301MCR.GetCrtAnt: string;
begin
  Result := FCrtAnt;
end;

procedure T301MCR.SetCrtAnt(const pCrtAnt: string);
begin
  FCrtAnt := pCrtAnt;

  CheckField('CrtAnt');
end;

function T301MCR.GetNumPrj: Integer;
begin
  Result := FNumPrj;
end;

procedure T301MCR.SetNumPrj(const pNumPrj: Integer);
begin
  FNumPrj := pNumPrj;

  CheckField('NumPrj');
end;

function T301MCR.GetCodFpj: Integer;
begin
  Result := FCodFpj;
end;

procedure T301MCR.SetCodFpj(const pCodFpj: Integer);
begin
  FCodFpj := pCodFpj;

  CheckField('CodFpj');
end;

function T301MCR.GetCtaFin: Integer;
begin
  Result := FCtaFin;
end;

procedure T301MCR.SetCtaFin(const pCtaFin: Integer);
begin
  FCtaFin := pCtaFin;

  CheckField('CtaFin');
end;

function T301MCR.GetCtaRed: Integer;
begin
  Result := FCtaRed;
end;

procedure T301MCR.SetCtaRed(const pCtaRed: Integer);
begin
  FCtaRed := pCtaRed;

  CheckField('CtaRed');
end;

function T301MCR.GetCodCcu: string;
begin
  Result := FCodCcu;
end;

procedure T301MCR.SetCodCcu(const pCodCcu: string);
begin
  FCodCcu := pCodCcu;

  CheckField('CodCcu');
end;

function T301MCR.GetEmpCco: Integer;
begin
  Result := FEmpCco;
end;

procedure T301MCR.SetEmpCco(const pEmpCco: Integer);
begin
  FEmpCco := pEmpCco;

  CheckField('EmpCco');
end;

function T301MCR.GetNumCco: string;
begin
  Result := FNumCco;
end;

procedure T301MCR.SetNumCco(const pNumCco: string);
begin
  FNumCco := pNumCco;

  CheckField('NumCco');
end;

function T301MCR.GetDatCco: TDate;
begin
  Result := FDatCco;
end;

procedure T301MCR.SetDatCco(const pDatCco: TDate);
begin
  FDatCco := pDatCco;

  CheckField('DatCco');
end;

function T301MCR.GetSeqCco: Integer;
begin
  Result := FSeqCco;
end;

procedure T301MCR.SetSeqCco(const pSeqCco: Integer);
begin
  FSeqCco := pSeqCco;

  CheckField('SeqCco');
end;

function T301MCR.GetFilRlc: Integer;
begin
  Result := FFilRlc;
end;

procedure T301MCR.SetFilRlc(const pFilRlc: Integer);
begin
  FFilRlc := pFilRlc;

  CheckField('FilRlc');
end;

function T301MCR.GetNumRlc: string;
begin
  Result := FNumRlc;
end;

procedure T301MCR.SetNumRlc(const pNumRlc: string);
begin
  FNumRlc := pNumRlc;

  CheckField('NumRlc');
end;

function T301MCR.GetTptRlc: string;
begin
  Result := FTptRlc;
end;

procedure T301MCR.SetTptRlc(const pTptRlc: string);
begin
  FTptRlc := pTptRlc;

  CheckField('TptRlc');
end;

function T301MCR.GetForRlc: Integer;
begin
  Result := FForRlc;
end;

procedure T301MCR.SetForRlc(const pForRlc: Integer);
begin
  FForRlc := pForRlc;

  CheckField('ForRlc');
end;

function T301MCR.GetSeqRlc: Integer;
begin
  Result := FSeqRlc;
end;

procedure T301MCR.SetSeqRlc(const pSeqRlc: Integer);
begin
  FSeqRlc := pSeqRlc;

  CheckField('SeqRlc');
end;

function T301MCR.GetSeqMcp: Integer;
begin
  Result := FSeqMcp;
end;

procedure T301MCR.SetSeqMcp(const pSeqMcp: Integer);
begin
  FSeqMcp := pSeqMcp;

  CheckField('SeqMcp');
end;

function T301MCR.GetIndVcr: Char;
begin
  Result := FIndVcr;
end;

procedure T301MCR.SetIndVcr(const pIndVcr: Char);
begin
  FIndVcr := pIndVcr;

  CheckField('IndVcr');
end;

function T301MCR.GetLctFin: Char;
begin
  Result := FLctFin;
end;

procedure T301MCR.SetLctFin(const pLctFin: Char);
begin
  FLctFin := pLctFin;

  CheckField('LctFin');
end;

function T301MCR.GetTipCof: Integer;
begin
  Result := FTipCof;
end;

procedure T301MCR.SetTipCof(const pTipCof: Integer);
begin
  FTipCof := pTipCof;

  CheckField('TipCof');
end;

function T301MCR.GetLotBai: Integer;
begin
  Result := FLotBai;
end;

procedure T301MCR.SetLotBai(const pLotBai: Integer);
begin
  FLotBai := pLotBai;

  CheckField('LotBai');
end;

function T301MCR.GetLotBfi: Integer;
begin
  Result := FLotBfi;
end;

procedure T301MCR.SetLotBfi(const pLotBfi: Integer);
begin
  FLotBfi := pLotBfi;

  CheckField('LotBfi');
end;

function T301MCR.GetNumLot: Integer;
begin
  Result := FNumLot;
end;

procedure T301MCR.SetNumLot(const pNumLot: Integer);
begin
  FNumLot := pNumLot;

  CheckField('NumLot');
end;

function T301MCR.GetUsuGer: Integer;
begin
  Result := FUsuGer;
end;

procedure T301MCR.SetUsuGer(const pUsuGer: Integer);
begin
  FUsuGer := pUsuGer;

  CheckField('UsuGer');
end;

function T301MCR.GetDatGer: TDate;
begin
  Result := FDatGer;
end;

procedure T301MCR.SetDatGer(const pDatGer: TDate);
begin
  FDatGer := pDatGer;

  CheckField('DatGer');
end;

function T301MCR.GetHorGer: Integer;
begin
  Result := FHorGer;
end;

procedure T301MCR.SetHorGer(const pHorGer: Integer);
begin
  FHorGer := pHorGer;

  CheckField('HorGer');
end;

function T301MCR.GetIndExp: Integer;
begin
  Result := FIndExp;
end;

procedure T301MCR.SetIndExp(const pIndExp: Integer);
begin
  FIndExp := pIndExp;

  CheckField('IndExp');
end;

function T301MCR.GetFilFix: Integer;
begin
  Result := FFilFix;
end;

procedure T301MCR.SetFilFix(const pFilFix: Integer);
begin
  FFilFix := pFilFix;

  CheckField('FilFix');
end;

function T301MCR.GetNumFix: Integer;
begin
  Result := FNumFix;
end;

procedure T301MCR.SetNumFix(const pNumFix: Integer);
begin
  FNumFix := pNumFix;

  CheckField('NumFix');
end;

function T301MCR.GetRecMoa: Char;
begin
  Result := FRecMoa;
end;

procedure T301MCR.SetRecMoa(const pRecMoa: Char);
begin
  FRecMoa := pRecMoa;

  CheckField('RecMoa');
end;

function T301MCR.GetIntImp: Char;
begin
  Result := FIntImp;
end;

procedure T301MCR.SetIntImp(const pIntImp: Char);
begin
  FIntImp := pIntImp;

  CheckField('IntImp');
end;

function T301MCR.GetIntDif: Char;
begin
  Result := FIntDif;
end;

procedure T301MCR.SetIntDif(const pIntDif: Char);
begin
  FIntDif := pIntDif;

  CheckField('IntDif');
end;

function T301MCR.GetVlrIrf: Double;
begin
  Result := FVlrIrf;
end;

procedure T301MCR.SetVlrIrf(const pVlrIrf: Double);
begin
  FVlrIrf := pVlrIrf;

  CheckField('VlrIrf');
end;

function T301MCR.GetVlrBir: Double;
begin
  Result := FVlrBir;
end;

procedure T301MCR.SetVlrBir(const pVlrBir: Double);
begin
  FVlrBir := pVlrBir;

  CheckField('VlrBir');
end;

function T301MCR.GetVlrOir: Double;
begin
  Result := FVlrOir;
end;

procedure T301MCR.SetVlrOir(const pVlrOir: Double);
begin
  FVlrOir := pVlrOir;

  CheckField('VlrOir');
end;

function T301MCR.GetCodEmpOLD: Integer;
begin
  Result := FCodEmpOLD;
end;

procedure T301MCR.SetCodEmpOLD(const pCodEmp: Integer);
begin
  FCodEmpOLD := pCodEmp;
end;

function T301MCR.GetCodFilOLD: Integer;
begin
  Result := FCodFilOLD;
end;

procedure T301MCR.SetCodFilOLD(const pCodFil: Integer);
begin
  FCodFilOLD := pCodFil;
end;

function T301MCR.GetNumTitOLD: string;
begin
  Result := FNumTitOLD;
end;

procedure T301MCR.SetNumTitOLD(const pNumTit: string);
begin
  FNumTitOLD := pNumTit;
end;

function T301MCR.GetCodTptOLD: string;
begin
  Result := FCodTptOLD;
end;

procedure T301MCR.SetCodTptOLD(const pCodTpt: string);
begin
  FCodTptOLD := pCodTpt;
end;

function T301MCR.GetSeqMovOLD: Integer;
begin
  Result := FSeqMovOLD;
end;

procedure T301MCR.SetSeqMovOLD(const pSeqMov: Integer);
begin
  FSeqMovOLD := pSeqMov;
end;

function T301MCR.GetCodTnsOLD: string;
begin
  Result := FCodTnsOLD;
end;

procedure T301MCR.SetCodTnsOLD(const pCodTns: string);
begin
  FCodTnsOLD := pCodTns;
end;

function T301MCR.GetDatMovOLD: TDate;
begin
  Result := FDatMovOLD;
end;

procedure T301MCR.SetDatMovOLD(const pDatMov: TDate);
begin
  FDatMovOLD := pDatMov;
end;

function T301MCR.GetObsMcrOLD: string;
begin
  Result := FObsMcrOLD;
end;

procedure T301MCR.SetObsMcrOLD(const pObsMcr: string);
begin
  FObsMcrOLD := pObsMcr;
end;

function T301MCR.GetNumDocOLD: string;
begin
  Result := FNumDocOLD;
end;

procedure T301MCR.SetNumDocOLD(const pNumDoc: string);
begin
  FNumDocOLD := pNumDoc;
end;

function T301MCR.GetVctProOLD: TDate;
begin
  Result := FVctProOLD;
end;

procedure T301MCR.SetVctProOLD(const pVctPro: TDate);
begin
  FVctProOLD := pVctPro;
end;

function T301MCR.GetProJrsOLD: Char;
begin
  Result := FProJrsOLD;
end;

procedure T301MCR.SetProJrsOLD(const pProJrs: Char);
begin
  FProJrsOLD := pProJrs;
end;

function T301MCR.GetVlrAbeOLD: Double;
begin
  Result := FVlrAbeOLD;
end;

procedure T301MCR.SetVlrAbeOLD(const pVlrAbe: Double);
begin
  FVlrAbeOLD := pVlrAbe;
end;

function T301MCR.GetCodFrjOLD: string;
begin
  Result := FCodFrjOLD;
end;

procedure T301MCR.SetCodFrjOLD(const pCodFrj: string);
begin
  FCodFrjOLD := pCodFrj;
end;

function T301MCR.GetCotFrjOLD: Double;
begin
  Result := FCotFrjOLD;
end;

procedure T301MCR.SetCotFrjOLD(const pCotFrj: Double);
begin
  FCotFrjOLD := pCotFrj;
end;

function T301MCR.GetDatPgtOLD: TDate;
begin
  Result := FDatPgtOLD;
end;

procedure T301MCR.SetDatPgtOLD(const pDatPgt: TDate);
begin
  FDatPgtOLD := pDatPgt;
end;

function T301MCR.GetCodFpgOLD: Integer;
begin
  Result := FCodFpgOLD;
end;

procedure T301MCR.SetCodFpgOLD(const pCodFpg: Integer);
begin
  FCodFpgOLD := pCodFpg;
end;

function T301MCR.GetCotMcrOLD: Double;
begin
  Result := FCotMcrOLD;
end;

procedure T301MCR.SetCotMcrOLD(const pCotMcr: Double);
begin
  FCotMcrOLD := pCotMcr;
end;

function T301MCR.GetDiaAtrOLD: Integer;
begin
  Result := FDiaAtrOLD;
end;

procedure T301MCR.SetDiaAtrOLD(const pDiaAtr: Integer);
begin
  FDiaAtrOLD := pDiaAtr;
end;

function T301MCR.GetDiaJrsOLD: Integer;
begin
  Result := FDiaJrsOLD;
end;

procedure T301MCR.SetDiaJrsOLD(const pDiaJrs: Integer);
begin
  FDiaJrsOLD := pDiaJrs;
end;

function T301MCR.GetRecJoaOLD: Char;
begin
  Result := FRecJoaOLD;
end;

procedure T301MCR.SetRecJoaOLD(const pRecJoa: Char);
begin
  FRecJoaOLD := pRecJoa;
end;

function T301MCR.GetRecJodOLD: Char;
begin
  Result := FRecJodOLD;
end;

procedure T301MCR.SetRecJodOLD(const pRecJod: Char);
begin
  FRecJodOLD := pRecJod;
end;

function T301MCR.GetDatLibOLD: TDate;
begin
  Result := FDatLibOLD;
end;

procedure T301MCR.SetDatLibOLD(const pDatLib: TDate);
begin
  FDatLibOLD := pDatLib;
end;

function T301MCR.GetVlrMovOLD: Double;
begin
  Result := FVlrMovOLD;
end;

procedure T301MCR.SetVlrMovOLD(const pVlrMov: Double);
begin
  FVlrMovOLD := pVlrMov;
end;

function T301MCR.GetVlrDscOLD: Double;
begin
  Result := FVlrDscOLD;
end;

procedure T301MCR.SetVlrDscOLD(const pVlrDsc: Double);
begin
  FVlrDscOLD := pVlrDsc;
end;

function T301MCR.GetVlrOdeOLD: Double;
begin
  Result := FVlrOdeOLD;
end;

procedure T301MCR.SetVlrOdeOLD(const pVlrOde: Double);
begin
  FVlrOdeOLD := pVlrOde;
end;

function T301MCR.GetVlrJrsOLD: Double;
begin
  Result := FVlrJrsOLD;
end;

procedure T301MCR.SetVlrJrsOLD(const pVlrJrs: Double);
begin
  FVlrJrsOLD := pVlrJrs;
end;

function T301MCR.GetVlrMulOLD: Double;
begin
  Result := FVlrMulOLD;
end;

procedure T301MCR.SetVlrMulOLD(const pVlrMul: Double);
begin
  FVlrMulOLD := pVlrMul;
end;

function T301MCR.GetVlrEncOLD: Double;
begin
  Result := FVlrEncOLD;
end;

procedure T301MCR.SetVlrEncOLD(const pVlrEnc: Double);
begin
  FVlrEncOLD := pVlrEnc;
end;

function T301MCR.GetVlrCorOLD: Double;
begin
  Result := FVlrCorOLD;
end;

procedure T301MCR.SetVlrCorOLD(const pVlrCor: Double);
begin
  FVlrCorOLD := pVlrCor;
end;

function T301MCR.GetVlrOacOLD: Double;
begin
  Result := FVlrOacOLD;
end;

procedure T301MCR.SetVlrOacOLD(const pVlrOac: Double);
begin
  FVlrOacOLD := pVlrOac;
end;

function T301MCR.GetVlrPisOLD: Double;
begin
  Result := FVlrPisOLD;
end;

procedure T301MCR.SetVlrPisOLD(const pVlrPis: Double);
begin
  FVlrPisOLD := pVlrPis;
end;

function T301MCR.GetVlrBprOLD: Double;
begin
  Result := FVlrBprOLD;
end;

procedure T301MCR.SetVlrBprOLD(const pVlrBpr: Double);
begin
  FVlrBprOLD := pVlrBpr;
end;

function T301MCR.GetVlrCofOLD: Double;
begin
  Result := FVlrCofOLD;
end;

procedure T301MCR.SetVlrCofOLD(const pVlrCof: Double);
begin
  FVlrCofOLD := pVlrCof;
end;

function T301MCR.GetVlrBcrOLD: Double;
begin
  Result := FVlrBcrOLD;
end;

procedure T301MCR.SetVlrBcrOLD(const pVlrBcr: Double);
begin
  FVlrBcrOLD := pVlrBcr;
end;

function T301MCR.GetVlrPitOLD: Double;
begin
  Result := FVlrPitOLD;
end;

procedure T301MCR.SetVlrPitOLD(const pVlrPit: Double);
begin
  FVlrPitOLD := pVlrPit;
end;

function T301MCR.GetVlrBptOLD: Double;
begin
  Result := FVlrBptOLD;
end;

procedure T301MCR.SetVlrBptOLD(const pVlrBpt: Double);
begin
  FVlrBptOLD := pVlrBpt;
end;

function T301MCR.GetVlrOptOLD: Double;
begin
  Result := FVlrOptOLD;
end;

procedure T301MCR.SetVlrOptOLD(const pVlrOpt: Double);
begin
  FVlrOptOLD := pVlrOpt;
end;

function T301MCR.GetVlrCrtOLD: Double;
begin
  Result := FVlrCrtOLD;
end;

procedure T301MCR.SetVlrCrtOLD(const pVlrCrt: Double);
begin
  FVlrCrtOLD := pVlrCrt;
end;

function T301MCR.GetVlrBctOLD: Double;
begin
  Result := FVlrBctOLD;
end;

procedure T301MCR.SetVlrBctOLD(const pVlrBct: Double);
begin
  FVlrBctOLD := pVlrBct;
end;

function T301MCR.GetVlrOctOLD: Double;
begin
  Result := FVlrOctOLD;
end;

procedure T301MCR.SetVlrOctOLD(const pVlrOct: Double);
begin
  FVlrOctOLD := pVlrOct;
end;

function T301MCR.GetVlrCslOLD: Double;
begin
  Result := FVlrCslOLD;
end;

procedure T301MCR.SetVlrCslOLD(const pVlrCsl: Double);
begin
  FVlrCslOLD := pVlrCsl;
end;

function T301MCR.GetVlrBclOLD: Double;
begin
  Result := FVlrBclOLD;
end;

procedure T301MCR.SetVlrBclOLD(const pVlrBcl: Double);
begin
  FVlrBclOLD := pVlrBcl;
end;

function T301MCR.GetVlrOclOLD: Double;
begin
  Result := FVlrOclOLD;
end;

procedure T301MCR.SetVlrOclOLD(const pVlrOcl: Double);
begin
  FVlrOclOLD := pVlrOcl;
end;

function T301MCR.GetVlrOurOLD: Double;
begin
  Result := FVlrOurOLD;
end;

procedure T301MCR.SetVlrOurOLD(const pVlrOur: Double);
begin
  FVlrOurOLD := pVlrOur;
end;

function T301MCR.GetVlrBorOLD: Double;
begin
  Result := FVlrBorOLD;
end;

procedure T301MCR.SetVlrBorOLD(const pVlrBor: Double);
begin
  FVlrBorOLD := pVlrBor;
end;

function T301MCR.GetVlrOorOLD: Double;
begin
  Result := FVlrOorOLD;
end;

procedure T301MCR.SetVlrOorOLD(const pVlrOor: Double);
begin
  FVlrOorOLD := pVlrOor;
end;

function T301MCR.GetVlrLiqOLD: Double;
begin
  Result := FVlrLiqOLD;
end;

procedure T301MCR.SetVlrLiqOLD(const pVlrLiq: Double);
begin
  FVlrLiqOLD := pVlrLiq;
end;

function T301MCR.GetVlrBcoOLD: Double;
begin
  Result := FVlrBcoOLD;
end;

procedure T301MCR.SetVlrBcoOLD(const pVlrBco: Double);
begin
  FVlrBcoOLD := pVlrBco;
end;

function T301MCR.GetVlrComOLD: Double;
begin
  Result := FVlrComOLD;
end;

procedure T301MCR.SetVlrComOLD(const pVlrCom: Double);
begin
  FVlrComOLD := pVlrCom;
end;

function T301MCR.GetPerJrsOLD: Double;
begin
  Result := FPerJrsOLD;
end;

procedure T301MCR.SetPerJrsOLD(const pPerJrs: Double);
begin
  FPerJrsOLD := pPerJrs;
end;

function T301MCR.GetUltPgtOLD: TDate;
begin
  Result := FUltPgtOLD;
end;

procedure T301MCR.SetUltPgtOLD(const pUltPgt: TDate);
begin
  FUltPgtOLD := pUltPgt;
end;

function T301MCR.GetCjmAntOLD: TDate;
begin
  Result := FCjmAntOLD;
end;

procedure T301MCR.SetCjmAntOLD(const pCjmAnt: TDate);
begin
  FCjmAntOLD := pCjmAnt;
end;

function T301MCR.GetJrsCalOLD: Double;
begin
  Result := FJrsCalOLD;
end;

procedure T301MCR.SetJrsCalOLD(const pJrsCal: Double);
begin
  FJrsCalOLD := pJrsCal;
end;

function T301MCR.GetJrsProOLD: Char;
begin
  Result := FJrsProOLD;
end;

procedure T301MCR.SetJrsProOLD(const pJrsPro: Char);
begin
  FJrsProOLD := pJrsPro;
end;

function T301MCR.GetCodPorOLD: string;
begin
  Result := FCodPorOLD;
end;

procedure T301MCR.SetCodPorOLD(const pCodPor: string);
begin
  FCodPorOLD := pCodPor;
end;

function T301MCR.GetCodCrtOLD: string;
begin
  Result := FCodCrtOLD;
end;

procedure T301MCR.SetCodCrtOLD(const pCodCrt: string);
begin
  FCodCrtOLD := pCodCrt;
end;

function T301MCR.GetPorAntOLD: string;
begin
  Result := FPorAntOLD;
end;

procedure T301MCR.SetPorAntOLD(const pPorAnt: string);
begin
  FPorAntOLD := pPorAnt;
end;

function T301MCR.GetCrtAntOLD: string;
begin
  Result := FCrtAntOLD;
end;

procedure T301MCR.SetCrtAntOLD(const pCrtAnt: string);
begin
  FCrtAntOLD := pCrtAnt;
end;

function T301MCR.GetNumPrjOLD: Integer;
begin
  Result := FNumPrjOLD;
end;

procedure T301MCR.SetNumPrjOLD(const pNumPrj: Integer);
begin
  FNumPrjOLD := pNumPrj;
end;

function T301MCR.GetCodFpjOLD: Integer;
begin
  Result := FCodFpjOLD;
end;

procedure T301MCR.SetCodFpjOLD(const pCodFpj: Integer);
begin
  FCodFpjOLD := pCodFpj;
end;

function T301MCR.GetCtaFinOLD: Integer;
begin
  Result := FCtaFinOLD;
end;

procedure T301MCR.SetCtaFinOLD(const pCtaFin: Integer);
begin
  FCtaFinOLD := pCtaFin;
end;

function T301MCR.GetCtaRedOLD: Integer;
begin
  Result := FCtaRedOLD;
end;

procedure T301MCR.SetCtaRedOLD(const pCtaRed: Integer);
begin
  FCtaRedOLD := pCtaRed;
end;

function T301MCR.GetCodCcuOLD: string;
begin
  Result := FCodCcuOLD;
end;

procedure T301MCR.SetCodCcuOLD(const pCodCcu: string);
begin
  FCodCcuOLD := pCodCcu;
end;

function T301MCR.GetEmpCcoOLD: Integer;
begin
  Result := FEmpCcoOLD;
end;

procedure T301MCR.SetEmpCcoOLD(const pEmpCco: Integer);
begin
  FEmpCcoOLD := pEmpCco;
end;

function T301MCR.GetNumCcoOLD: string;
begin
  Result := FNumCcoOLD;
end;

procedure T301MCR.SetNumCcoOLD(const pNumCco: string);
begin
  FNumCcoOLD := pNumCco;
end;

function T301MCR.GetDatCcoOLD: TDate;
begin
  Result := FDatCcoOLD;
end;

procedure T301MCR.SetDatCcoOLD(const pDatCco: TDate);
begin
  FDatCcoOLD := pDatCco;
end;

function T301MCR.GetSeqCcoOLD: Integer;
begin
  Result := FSeqCcoOLD;
end;

procedure T301MCR.SetSeqCcoOLD(const pSeqCco: Integer);
begin
  FSeqCcoOLD := pSeqCco;
end;

function T301MCR.GetFilRlcOLD: Integer;
begin
  Result := FFilRlcOLD;
end;

procedure T301MCR.SetFilRlcOLD(const pFilRlc: Integer);
begin
  FFilRlcOLD := pFilRlc;
end;

function T301MCR.GetNumRlcOLD: string;
begin
  Result := FNumRlcOLD;
end;

procedure T301MCR.SetNumRlcOLD(const pNumRlc: string);
begin
  FNumRlcOLD := pNumRlc;
end;

function T301MCR.GetTptRlcOLD: string;
begin
  Result := FTptRlcOLD;
end;

procedure T301MCR.SetTptRlcOLD(const pTptRlc: string);
begin
  FTptRlcOLD := pTptRlc;
end;

function T301MCR.GetForRlcOLD: Integer;
begin
  Result := FForRlcOLD;
end;

procedure T301MCR.SetForRlcOLD(const pForRlc: Integer);
begin
  FForRlcOLD := pForRlc;
end;

function T301MCR.GetSeqRlcOLD: Integer;
begin
  Result := FSeqRlcOLD;
end;

procedure T301MCR.SetSeqRlcOLD(const pSeqRlc: Integer);
begin
  FSeqRlcOLD := pSeqRlc;
end;

function T301MCR.GetSeqMcpOLD: Integer;
begin
  Result := FSeqMcpOLD;
end;

procedure T301MCR.SetSeqMcpOLD(const pSeqMcp: Integer);
begin
  FSeqMcpOLD := pSeqMcp;
end;

function T301MCR.GetIndVcrOLD: Char;
begin
  Result := FIndVcrOLD;
end;

procedure T301MCR.SetIndVcrOLD(const pIndVcr: Char);
begin
  FIndVcrOLD := pIndVcr;
end;

function T301MCR.GetLctFinOLD: Char;
begin
  Result := FLctFinOLD;
end;

procedure T301MCR.SetLctFinOLD(const pLctFin: Char);
begin
  FLctFinOLD := pLctFin;
end;

function T301MCR.GetTipCofOLD: Integer;
begin
  Result := FTipCofOLD;
end;

procedure T301MCR.SetTipCofOLD(const pTipCof: Integer);
begin
  FTipCofOLD := pTipCof;
end;

function T301MCR.GetLotBaiOLD: Integer;
begin
  Result := FLotBaiOLD;
end;

procedure T301MCR.SetLotBaiOLD(const pLotBai: Integer);
begin
  FLotBaiOLD := pLotBai;
end;

function T301MCR.GetLotBfiOLD: Integer;
begin
  Result := FLotBfiOLD;
end;

procedure T301MCR.SetLotBfiOLD(const pLotBfi: Integer);
begin
  FLotBfiOLD := pLotBfi;
end;

function T301MCR.GetNumLotOLD: Integer;
begin
  Result := FNumLotOLD;
end;

procedure T301MCR.SetNumLotOLD(const pNumLot: Integer);
begin
  FNumLotOLD := pNumLot;
end;

function T301MCR.GetUsuGerOLD: Integer;
begin
  Result := FUsuGerOLD;
end;

procedure T301MCR.SetUsuGerOLD(const pUsuGer: Integer);
begin
  FUsuGerOLD := pUsuGer;
end;

function T301MCR.GetDatGerOLD: TDate;
begin
  Result := FDatGerOLD;
end;

procedure T301MCR.SetDatGerOLD(const pDatGer: TDate);
begin
  FDatGerOLD := pDatGer;
end;

function T301MCR.GetHorGerOLD: Integer;
begin
  Result := FHorGerOLD;
end;

procedure T301MCR.SetHorGerOLD(const pHorGer: Integer);
begin
  FHorGerOLD := pHorGer;
end;

function T301MCR.GetIndExpOLD: Integer;
begin
  Result := FIndExpOLD;
end;

procedure T301MCR.SetIndExpOLD(const pIndExp: Integer);
begin
  FIndExpOLD := pIndExp;
end;

function T301MCR.GetFilFixOLD: Integer;
begin
  Result := FFilFixOLD;
end;

procedure T301MCR.SetFilFixOLD(const pFilFix: Integer);
begin
  FFilFixOLD := pFilFix;
end;

function T301MCR.GetNumFixOLD: Integer;
begin
  Result := FNumFixOLD;
end;

procedure T301MCR.SetNumFixOLD(const pNumFix: Integer);
begin
  FNumFixOLD := pNumFix;
end;

function T301MCR.GetRecMoaOLD: Char;
begin
  Result := FRecMoaOLD;
end;

procedure T301MCR.SetRecMoaOLD(const pRecMoa: Char);
begin
  FRecMoaOLD := pRecMoa;
end;

function T301MCR.GetIntImpOLD: Char;
begin
  Result := FIntImpOLD;
end;

procedure T301MCR.SetIntImpOLD(const pIntImp: Char);
begin
  FIntImpOLD := pIntImp;
end;

function T301MCR.GetIntDifOLD: Char;
begin
  Result := FIntDifOLD;
end;

procedure T301MCR.SetIntDifOLD(const pIntDif: Char);
begin
  FIntDifOLD := pIntDif;
end;

function T301MCR.GetVlrIrfOLD: Double;
begin
  Result := FVlrIrfOLD;
end;

procedure T301MCR.SetVlrIrfOLD(const pVlrIrf: Double);
begin
  FVlrIrfOLD := pVlrIrf;
end;

function T301MCR.GetVlrBirOLD: Double;
begin
  Result := FVlrBirOLD;
end;

procedure T301MCR.SetVlrBirOLD(const pVlrBir: Double);
begin
  FVlrBirOLD := pVlrBir;
end;

function T301MCR.GetVlrOirOLD: Double;
begin
  Result := FVlrOirOLD;
end;

procedure T301MCR.SetVlrOirOLD(const pVlrOir: Double);
begin
  FVlrOirOLD := pVlrOir;
end;

procedure T301MCR.Registros_OLD();
begin
  FCodEmpOLD := FCodEmp;
  FCodFilOLD := FCodFil;
  FNumTitOLD := FNumTit;
  FCodTptOLD := FCodTpt;
  FSeqMovOLD := FSeqMov;
  FCodTnsOLD := FCodTns;
  FDatMovOLD := FDatMov;
  FObsMcrOLD := FObsMcr;
  FNumDocOLD := FNumDoc;
  FVctProOLD := FVctPro;
  FProJrsOLD := FProJrs;
  FVlrAbeOLD := FVlrAbe;
  FCodFrjOLD := FCodFrj;
  FCotFrjOLD := FCotFrj;
  FDatPgtOLD := FDatPgt;
  FCodFpgOLD := FCodFpg;
  FCotMcrOLD := FCotMcr;
  FDiaAtrOLD := FDiaAtr;
  FDiaJrsOLD := FDiaJrs;
  FRecJoaOLD := FRecJoa;
  FRecJodOLD := FRecJod;
  FDatLibOLD := FDatLib;
  FVlrMovOLD := FVlrMov;
  FVlrDscOLD := FVlrDsc;
  FVlrOdeOLD := FVlrOde;
  FVlrJrsOLD := FVlrJrs;
  FVlrMulOLD := FVlrMul;
  FVlrEncOLD := FVlrEnc;
  FVlrCorOLD := FVlrCor;
  FVlrOacOLD := FVlrOac;
  FVlrPisOLD := FVlrPis;
  FVlrBprOLD := FVlrBpr;
  FVlrCofOLD := FVlrCof;
  FVlrBcrOLD := FVlrBcr;
  FVlrPitOLD := FVlrPit;
  FVlrBptOLD := FVlrBpt;
  FVlrOptOLD := FVlrOpt;
  FVlrCrtOLD := FVlrCrt;
  FVlrBctOLD := FVlrBct;
  FVlrOctOLD := FVlrOct;
  FVlrCslOLD := FVlrCsl;
  FVlrBclOLD := FVlrBcl;
  FVlrOclOLD := FVlrOcl;
  FVlrOurOLD := FVlrOur;
  FVlrBorOLD := FVlrBor;
  FVlrOorOLD := FVlrOor;
  FVlrLiqOLD := FVlrLiq;
  FVlrBcoOLD := FVlrBco;
  FVlrComOLD := FVlrCom;
  FPerJrsOLD := FPerJrs;
  FUltPgtOLD := FUltPgt;
  FCjmAntOLD := FCjmAnt;
  FJrsCalOLD := FJrsCal;
  FJrsProOLD := FJrsPro;
  FCodPorOLD := FCodPor;
  FCodCrtOLD := FCodCrt;
  FPorAntOLD := FPorAnt;
  FCrtAntOLD := FCrtAnt;
  FNumPrjOLD := FNumPrj;
  FCodFpjOLD := FCodFpj;
  FCtaFinOLD := FCtaFin;
  FCtaRedOLD := FCtaRed;
  FCodCcuOLD := FCodCcu;
  FEmpCcoOLD := FEmpCco;
  FNumCcoOLD := FNumCco;
  FDatCcoOLD := FDatCco;
  FSeqCcoOLD := FSeqCco;
  FFilRlcOLD := FFilRlc;
  FNumRlcOLD := FNumRlc;
  FTptRlcOLD := FTptRlc;
  FForRlcOLD := FForRlc;
  FSeqRlcOLD := FSeqRlc;
  FSeqMcpOLD := FSeqMcp;
  FIndVcrOLD := FIndVcr;
  FLctFinOLD := FLctFin;
  FTipCofOLD := FTipCof;
  FLotBaiOLD := FLotBai;
  FLotBfiOLD := FLotBfi;
  FNumLotOLD := FNumLot;
  FUsuGerOLD := FUsuGer;
  FDatGerOLD := FDatGer;
  FHorGerOLD := FHorGer;
  FIndExpOLD := FIndExp;
  FFilFixOLD := FFilFix;
  FNumFixOLD := FNumFix;
  FRecMoaOLD := FRecMoa;
  FIntImpOLD := FIntImp;
  FIntDifOLD := FIntDif;
  FVlrIrfOLD := FVlrIrf;
  FVlrBirOLD := FVlrBir;
  FVlrOirOLD := FVlrOir;

  inherited;
end;

procedure T301MCR.RetornarValores();
begin
  FCodEmp := FCodEmpOLD;
  FCodFil := FCodFilOLD;
  FNumTit := FNumTitOLD;
  FCodTpt := FCodTptOLD;
  FSeqMov := FSeqMovOLD;
  FCodTns := FCodTnsOLD;
  FDatMov := FDatMovOLD;
  FObsMcr := FObsMcrOLD;
  FNumDoc := FNumDocOLD;
  FVctPro := FVctProOLD;
  FProJrs := FProJrsOLD;
  FVlrAbe := FVlrAbeOLD;
  FCodFrj := FCodFrjOLD;
  FCotFrj := FCotFrjOLD;
  FDatPgt := FDatPgtOLD;
  FCodFpg := FCodFpgOLD;
  FCotMcr := FCotMcrOLD;
  FDiaAtr := FDiaAtrOLD;
  FDiaJrs := FDiaJrsOLD;
  FRecJoa := FRecJoaOLD;
  FRecJod := FRecJodOLD;
  FDatLib := FDatLibOLD;
  FVlrMov := FVlrMovOLD;
  FVlrDsc := FVlrDscOLD;
  FVlrOde := FVlrOdeOLD;
  FVlrJrs := FVlrJrsOLD;
  FVlrMul := FVlrMulOLD;
  FVlrEnc := FVlrEncOLD;
  FVlrCor := FVlrCorOLD;
  FVlrOac := FVlrOacOLD;
  FVlrPis := FVlrPisOLD;
  FVlrBpr := FVlrBprOLD;
  FVlrCof := FVlrCofOLD;
  FVlrBcr := FVlrBcrOLD;
  FVlrPit := FVlrPitOLD;
  FVlrBpt := FVlrBptOLD;
  FVlrOpt := FVlrOptOLD;
  FVlrCrt := FVlrCrtOLD;
  FVlrBct := FVlrBctOLD;
  FVlrOct := FVlrOctOLD;
  FVlrCsl := FVlrCslOLD;
  FVlrBcl := FVlrBclOLD;
  FVlrOcl := FVlrOclOLD;
  FVlrOur := FVlrOurOLD;
  FVlrBor := FVlrBorOLD;
  FVlrOor := FVlrOorOLD;
  FVlrLiq := FVlrLiqOLD;
  FVlrBco := FVlrBcoOLD;
  FVlrCom := FVlrComOLD;
  FPerJrs := FPerJrsOLD;
  FUltPgt := FUltPgtOLD;
  FCjmAnt := FCjmAntOLD;
  FJrsCal := FJrsCalOLD;
  FJrsPro := FJrsProOLD;
  FCodPor := FCodPorOLD;
  FCodCrt := FCodCrtOLD;
  FPorAnt := FPorAntOLD;
  FCrtAnt := FCrtAntOLD;
  FNumPrj := FNumPrjOLD;
  FCodFpj := FCodFpjOLD;
  FCtaFin := FCtaFinOLD;
  FCtaRed := FCtaRedOLD;
  FCodCcu := FCodCcuOLD;
  FEmpCco := FEmpCcoOLD;
  FNumCco := FNumCcoOLD;
  FDatCco := FDatCcoOLD;
  FSeqCco := FSeqCcoOLD;
  FFilRlc := FFilRlcOLD;
  FNumRlc := FNumRlcOLD;
  FTptRlc := FTptRlcOLD;
  FForRlc := FForRlcOLD;
  FSeqRlc := FSeqRlcOLD;
  FSeqMcp := FSeqMcpOLD;
  FIndVcr := FIndVcrOLD;
  FLctFin := FLctFinOLD;
  FTipCof := FTipCofOLD;
  FLotBai := FLotBaiOLD;
  FLotBfi := FLotBfiOLD;
  FNumLot := FNumLotOLD;
  FUsuGer := FUsuGerOLD;
  FDatGer := FDatGerOLD;
  FHorGer := FHorGerOLD;
  FIndExp := FIndExpOLD;
  FFilFix := FFilFixOLD;
  FNumFix := FNumFixOLD;
  FRecMoa := FRecMoaOLD;
  FIntImp := FIntImpOLD;
  FIntDif := FIntDifOLD;
  FVlrIrf := FVlrIrfOLD;
  FVlrBir := FVlrBirOLD;
  FVlrOir := FVlrOirOLD;
end;

end.
