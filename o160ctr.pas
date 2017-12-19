unit o160ctr;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T160CTR = class(TTabelaPadrao)
  private
    FCodEmp: Integer;
    FCodFil: Integer;
    FNumCtr: Integer;
    FTipCtr: Integer;
    FNumOfi: string;
    FObjCtr: string;
    FTnsPro: string;
    FTnsSer: string;
    FCrtOri: Integer;
    FDatEmi: TDate;
    FDatEnt: TDate;
    FCodCli: Integer;
    FCliFat: Integer;
    FCodRep: Integer;
    FCodMoe: string;
    FCodFrj: string;
    FQtdPar: Integer;
    FDiaPar: Integer;
    FProPar: Integer;
    FDatIni: TDate;
    FDiaBas: Integer;
    FDatUft: TDate;
    FFilNfv: Integer;
    FCodSnf: string;
    FNumNfv: Integer;
    FCodCpg: string;
    FUsaJmc: Char;
    FPerJrs: Double;
    FTolJrs: Integer;
    FTipJrs: Char;
    FPerMul: Double;
    FTolMul: Integer;
    FVlrTot: Double;
    FTnsTit: string;
    FFilTcr: Integer;
    FCodTpt: string;
    FNumTit: Integer;
    FOriTit: string;
    FUltRea: TDate;
    FPrdRea: Integer;
    FPerRea: Double;
    FCodReg: Integer;
    FSitCtr: Char;
    FCodMot: Integer;
    FObsMot: string;
    FDiaFix: Integer;
    FCodTra: Integer;
    FCodMs1: Integer;
    FCodMs2: Integer;
    FCodMs3: Integer;
    FCodMs4: Integer;
    FObsCtr: string;
    FDiaRep: Integer;
    FIniRep: TDate;
    FFimRep: TDate;
    FUltCpt: TDate;
    FAgpDsc: Char;
    FCodCrp: string;
    FCodFcr: string;
    FDatFcr: TDate;
    FPerFat: Double;
    FIniRea: TDate;
    FCodTpr: string;
    FSeqEnt: Integer;
    FSeqCob: Integer;
    FIniVig: TDate;
    FFimVig: TDate;
    FCriFtc: Integer;
    FCriPrt: Integer;
    FDatFim: TDate;
    FIniCom: TDate;
    FFimCom: TDate;
    FUsuGer: Integer;
    FDatGer: TDate;
    FHorGer: Integer;
    FCodFpg: Integer;
    FUltRre: TDate;
    FPerRre: Double;
    FPrdRre: Integer;
    FIniRre: TDate;
    FUltRpa: TDate;
    FPerRpa: Double;
    FPrdRpa: Integer;
    FIniRpa: TDate;
    FIndPad: Char;
    FTipDip: Integer;
    FTipAce: Integer;
    FIndEmp: Char;
    FDscNeg: Double;
    FTipCgp: Integer;
    FTipAve: Integer;
    FRotAnx: Integer;
    FNumAnx: Integer;
    FProReq: Integer;
    FDatUre: TDate;
    FCtrRea: Char;
    FCtrIft: Char;
    FTemAva: Char;
    FVarSer: Char;
    FCodSeg: Integer;
    FCodBan: string;
    FQtdRev: Double;
    FQtdRef: Double;
    FDocEnv: Char;
    FEmpCto: Integer;
    FCodPco: Integer;
    FFilCto: Integer;
    FCptPco: TDate;
    FUSU_VenCtr: Char;
    FUSU_CodGre: Integer;
    FUSU_TipFre: Char;
    FUSU_ComSob: Char;
    FUSU_UsuRes: Integer;
    FUSU_SeqCto: Integer;
    FUSU_UsuAlt: Integer;
    FUSU_DatAlt: TDate;
    FUSU_HorAlt: Integer;
    FUSU_IndRea: Double;
    FUSU_DiaAviTer: Integer;
    FUSU_IQFPerMul: Double;
    FUSU_IQFVlrMul: Double;
    FUSU_OcoMul: Integer;
    FUSU_TipOco: Char;
    FUSU_IndPad: Double;
    FUSU_DiaIQF: Integer;
    FUSU_Dia2IQF: Integer;

    FCodEmpOLD: Integer;
    FCodFilOLD: Integer;
    FNumCtrOLD: Integer;
    FTipCtrOLD: Integer;
    FNumOfiOLD: string;
    FObjCtrOLD: string;
    FTnsProOLD: string;
    FTnsSerOLD: string;
    FCrtOriOLD: Integer;
    FDatEmiOLD: TDate;
    FDatEntOLD: TDate;
    FCodCliOLD: Integer;
    FCliFatOLD: Integer;
    FCodRepOLD: Integer;
    FCodMoeOLD: string;
    FCodFrjOLD: string;
    FQtdParOLD: Integer;
    FDiaParOLD: Integer;
    FProParOLD: Integer;
    FDatIniOLD: TDate;
    FDiaBasOLD: Integer;
    FDatUftOLD: TDate;
    FFilNfvOLD: Integer;
    FCodSnfOLD: string;
    FNumNfvOLD: Integer;
    FCodCpgOLD: string;
    FUsaJmcOLD: Char;
    FPerJrsOLD: Double;
    FTolJrsOLD: Integer;
    FTipJrsOLD: Char;
    FPerMulOLD: Double;
    FTolMulOLD: Integer;
    FVlrTotOLD: Double;
    FTnsTitOLD: string;
    FFilTcrOLD: Integer;
    FCodTptOLD: string;
    FNumTitOLD: Integer;
    FOriTitOLD: string;
    FUltReaOLD: TDate;
    FPrdReaOLD: Integer;
    FPerReaOLD: Double;
    FCodRegOLD: Integer;
    FSitCtrOLD: Char;
    FCodMotOLD: Integer;
    FObsMotOLD: string;
    FDiaFixOLD: Integer;
    FCodTraOLD: Integer;
    FCodMs1OLD: Integer;
    FCodMs2OLD: Integer;
    FCodMs3OLD: Integer;
    FCodMs4OLD: Integer;
    FObsCtrOLD: string;
    FDiaRepOLD: Integer;
    FIniRepOLD: TDate;
    FFimRepOLD: TDate;
    FUltCptOLD: TDate;
    FAgpDscOLD: Char;
    FCodCrpOLD: string;
    FCodFcrOLD: string;
    FDatFcrOLD: TDate;
    FPerFatOLD: Double;
    FIniReaOLD: TDate;
    FCodTprOLD: string;
    FSeqEntOLD: Integer;
    FSeqCobOLD: Integer;
    FIniVigOLD: TDate;
    FFimVigOLD: TDate;
    FCriFtcOLD: Integer;
    FCriPrtOLD: Integer;
    FDatFimOLD: TDate;
    FIniComOLD: TDate;
    FFimComOLD: TDate;
    FUsuGerOLD: Integer;
    FDatGerOLD: TDate;
    FHorGerOLD: Integer;
    FCodFpgOLD: Integer;
    FUltRreOLD: TDate;
    FPerRreOLD: Double;
    FPrdRreOLD: Integer;
    FIniRreOLD: TDate;
    FUltRpaOLD: TDate;
    FPerRpaOLD: Double;
    FPrdRpaOLD: Integer;
    FIniRpaOLD: TDate;
    FIndPadOLD: Char;
    FTipDipOLD: Integer;
    FTipAceOLD: Integer;
    FIndEmpOLD: Char;
    FDscNegOLD: Double;
    FTipCgpOLD: Integer;
    FTipAveOLD: Integer;
    FRotAnxOLD: Integer;
    FNumAnxOLD: Integer;
    FProReqOLD: Integer;
    FDatUreOLD: TDate;
    FCtrReaOLD: Char;
    FCtrIftOLD: Char;
    FTemAvaOLD: Char;
    FVarSerOLD: Char;
    FCodSegOLD: Integer;
    FCodBanOLD: string;
    FQtdRevOLD: Double;
    FQtdRefOLD: Double;
    FDocEnvOLD: Char;
    FEmpCtoOLD: Integer;
    FCodPcoOLD: Integer;
    FFilCtoOLD: Integer;
    FCptPcoOLD: TDate;
    FUSU_VenCtrOLD: Char;
    FUSU_CodGreOLD: Integer;
    FUSU_TipFreOLD: Char;
    FUSU_ComSobOLD: Char;
    FUSU_UsuResOLD: Integer;
    FUSU_SeqCtoOLD: Integer;
    FUSU_UsuAltOLD: Integer;
    FUSU_DatAltOLD: TDate;
    FUSU_HorAltOLD: Integer;
    FUSU_IndReaOLD: Double;
    FUSU_DiaAviTerOLD: Integer;
    FUSU_IQFPerMulOLD: Double;
    FUSU_IQFVlrMulOLD: Double;
    FUSU_OcoMulOLD: Integer;
    FUSU_TipOcoOLD: Char;
    FUSU_IndPadOLD: Double;
    FUSU_DiaIQFOLD: Integer;
    FUSU_Dia2IQFOLD: Integer;

    function GetCodEmp: Integer;
    procedure SetCodEmp(const pCodEmp: Integer);
    function GetCodFil: Integer;
    procedure SetCodFil(const pCodFil: Integer);
    function GetNumCtr: Integer;
    procedure SetNumCtr(const pNumCtr: Integer);
    function GetTipCtr: Integer;
    procedure SetTipCtr(const pTipCtr: Integer);
    function GetNumOfi: string;
    procedure SetNumOfi(const pNumOfi: string);
    function GetObjCtr: string;
    procedure SetObjCtr(const pObjCtr: string);
    function GetTnsPro: string;
    procedure SetTnsPro(const pTnsPro: string);
    function GetTnsSer: string;
    procedure SetTnsSer(const pTnsSer: string);
    function GetCrtOri: Integer;
    procedure SetCrtOri(const pCrtOri: Integer);
    function GetDatEmi: TDate;
    procedure SetDatEmi(const pDatEmi: TDate);
    function GetDatEnt: TDate;
    procedure SetDatEnt(const pDatEnt: TDate);
    function GetCodCli: Integer;
    procedure SetCodCli(const pCodCli: Integer);
    function GetCliFat: Integer;
    procedure SetCliFat(const pCliFat: Integer);
    function GetCodRep: Integer;
    procedure SetCodRep(const pCodRep: Integer);
    function GetCodMoe: string;
    procedure SetCodMoe(const pCodMoe: string);
    function GetCodFrj: string;
    procedure SetCodFrj(const pCodFrj: string);
    function GetQtdPar: Integer;
    procedure SetQtdPar(const pQtdPar: Integer);
    function GetDiaPar: Integer;
    procedure SetDiaPar(const pDiaPar: Integer);
    function GetProPar: Integer;
    procedure SetProPar(const pProPar: Integer);
    function GetDatIni: TDate;
    procedure SetDatIni(const pDatIni: TDate);
    function GetDiaBas: Integer;
    procedure SetDiaBas(const pDiaBas: Integer);
    function GetDatUft: TDate;
    procedure SetDatUft(const pDatUft: TDate);
    function GetFilNfv: Integer;
    procedure SetFilNfv(const pFilNfv: Integer);
    function GetCodSnf: string;
    procedure SetCodSnf(const pCodSnf: string);
    function GetNumNfv: Integer;
    procedure SetNumNfv(const pNumNfv: Integer);
    function GetCodCpg: string;
    procedure SetCodCpg(const pCodCpg: string);
    function GetUsaJmc: Char;
    procedure SetUsaJmc(const pUsaJmc: Char);
    function GetPerJrs: Double;
    procedure SetPerJrs(const pPerJrs: Double);
    function GetTolJrs: Integer;
    procedure SetTolJrs(const pTolJrs: Integer);
    function GetTipJrs: Char;
    procedure SetTipJrs(const pTipJrs: Char);
    function GetPerMul: Double;
    procedure SetPerMul(const pPerMul: Double);
    function GetTolMul: Integer;
    procedure SetTolMul(const pTolMul: Integer);
    function GetVlrTot: Double;
    procedure SetVlrTot(const pVlrTot: Double);
    function GetTnsTit: string;
    procedure SetTnsTit(const pTnsTit: string);
    function GetFilTcr: Integer;
    procedure SetFilTcr(const pFilTcr: Integer);
    function GetCodTpt: string;
    procedure SetCodTpt(const pCodTpt: string);
    function GetNumTit: Integer;
    procedure SetNumTit(const pNumTit: Integer);
    function GetOriTit: string;
    procedure SetOriTit(const pOriTit: string);
    function GetUltRea: TDate;
    procedure SetUltRea(const pUltRea: TDate);
    function GetPrdRea: Integer;
    procedure SetPrdRea(const pPrdRea: Integer);
    function GetPerRea: Double;
    procedure SetPerRea(const pPerRea: Double);
    function GetCodReg: Integer;
    procedure SetCodReg(const pCodReg: Integer);
    function GetSitCtr: Char;
    procedure SetSitCtr(const pSitCtr: Char);
    function GetCodMot: Integer;
    procedure SetCodMot(const pCodMot: Integer);
    function GetObsMot: string;
    procedure SetObsMot(const pObsMot: string);
    function GetDiaFix: Integer;
    procedure SetDiaFix(const pDiaFix: Integer);
    function GetCodTra: Integer;
    procedure SetCodTra(const pCodTra: Integer);
    function GetCodMs1: Integer;
    procedure SetCodMs1(const pCodMs1: Integer);
    function GetCodMs2: Integer;
    procedure SetCodMs2(const pCodMs2: Integer);
    function GetCodMs3: Integer;
    procedure SetCodMs3(const pCodMs3: Integer);
    function GetCodMs4: Integer;
    procedure SetCodMs4(const pCodMs4: Integer);
    function GetObsCtr: string;
    procedure SetObsCtr(const pObsCtr: string);
    function GetDiaRep: Integer;
    procedure SetDiaRep(const pDiaRep: Integer);
    function GetIniRep: TDate;
    procedure SetIniRep(const pIniRep: TDate);
    function GetFimRep: TDate;
    procedure SetFimRep(const pFimRep: TDate);
    function GetUltCpt: TDate;
    procedure SetUltCpt(const pUltCpt: TDate);
    function GetAgpDsc: Char;
    procedure SetAgpDsc(const pAgpDsc: Char);
    function GetCodCrp: string;
    procedure SetCodCrp(const pCodCrp: string);
    function GetCodFcr: string;
    procedure SetCodFcr(const pCodFcr: string);
    function GetDatFcr: TDate;
    procedure SetDatFcr(const pDatFcr: TDate);
    function GetPerFat: Double;
    procedure SetPerFat(const pPerFat: Double);
    function GetIniRea: TDate;
    procedure SetIniRea(const pIniRea: TDate);
    function GetCodTpr: string;
    procedure SetCodTpr(const pCodTpr: string);
    function GetSeqEnt: Integer;
    procedure SetSeqEnt(const pSeqEnt: Integer);
    function GetSeqCob: Integer;
    procedure SetSeqCob(const pSeqCob: Integer);
    function GetIniVig: TDate;
    procedure SetIniVig(const pIniVig: TDate);
    function GetFimVig: TDate;
    procedure SetFimVig(const pFimVig: TDate);
    function GetCriFtc: Integer;
    procedure SetCriFtc(const pCriFtc: Integer);
    function GetCriPrt: Integer;
    procedure SetCriPrt(const pCriPrt: Integer);
    function GetDatFim: TDate;
    procedure SetDatFim(const pDatFim: TDate);
    function GetIniCom: TDate;
    procedure SetIniCom(const pIniCom: TDate);
    function GetFimCom: TDate;
    procedure SetFimCom(const pFimCom: TDate);
    function GetUsuGer: Integer;
    procedure SetUsuGer(const pUsuGer: Integer);
    function GetDatGer: TDate;
    procedure SetDatGer(const pDatGer: TDate);
    function GetHorGer: Integer;
    procedure SetHorGer(const pHorGer: Integer);
    function GetCodFpg: Integer;
    procedure SetCodFpg(const pCodFpg: Integer);
    function GetUltRre: TDate;
    procedure SetUltRre(const pUltRre: TDate);
    function GetPerRre: Double;
    procedure SetPerRre(const pPerRre: Double);
    function GetPrdRre: Integer;
    procedure SetPrdRre(const pPrdRre: Integer);
    function GetIniRre: TDate;
    procedure SetIniRre(const pIniRre: TDate);
    function GetUltRpa: TDate;
    procedure SetUltRpa(const pUltRpa: TDate);
    function GetPerRpa: Double;
    procedure SetPerRpa(const pPerRpa: Double);
    function GetPrdRpa: Integer;
    procedure SetPrdRpa(const pPrdRpa: Integer);
    function GetIniRpa: TDate;
    procedure SetIniRpa(const pIniRpa: TDate);
    function GetIndPad: Char;
    procedure SetIndPad(const pIndPad: Char);
    function GetTipDip: Integer;
    procedure SetTipDip(const pTipDip: Integer);
    function GetTipAce: Integer;
    procedure SetTipAce(const pTipAce: Integer);
    function GetIndEmp: Char;
    procedure SetIndEmp(const pIndEmp: Char);
    function GetDscNeg: Double;
    procedure SetDscNeg(const pDscNeg: Double);
    function GetTipCgp: Integer;
    procedure SetTipCgp(const pTipCgp: Integer);
    function GetTipAve: Integer;
    procedure SetTipAve(const pTipAve: Integer);
    function GetRotAnx: Integer;
    procedure SetRotAnx(const pRotAnx: Integer);
    function GetNumAnx: Integer;
    procedure SetNumAnx(const pNumAnx: Integer);
    function GetProReq: Integer;
    procedure SetProReq(const pProReq: Integer);
    function GetDatUre: TDate;
    procedure SetDatUre(const pDatUre: TDate);
    function GetCtrRea: Char;
    procedure SetCtrRea(const pCtrRea: Char);
    function GetCtrIft: Char;
    procedure SetCtrIft(const pCtrIft: Char);
    function GetTemAva: Char;
    procedure SetTemAva(const pTemAva: Char);
    function GetVarSer: Char;
    procedure SetVarSer(const pVarSer: Char);
    function GetCodSeg: Integer;
    procedure SetCodSeg(const pCodSeg: Integer);
    function GetCodBan: string;
    procedure SetCodBan(const pCodBan: string);
    function GetQtdRev: Double;
    procedure SetQtdRev(const pQtdRev: Double);
    function GetQtdRef: Double;
    procedure SetQtdRef(const pQtdRef: Double);
    function GetDocEnv: Char;
    procedure SetDocEnv(const pDocEnv: Char);
    function GetEmpCto: Integer;
    procedure SetEmpCto(const pEmpCto: Integer);
    function GetCodPco: Integer;
    procedure SetCodPco(const pCodPco: Integer);
    function GetFilCto: Integer;
    procedure SetFilCto(const pFilCto: Integer);
    function GetCptPco: TDate;
    procedure SetCptPco(const pCptPco: TDate);
    function GetUSU_VenCtr: Char;
    procedure SetUSU_VenCtr(const pUSU_VenCtr: Char);
    function GetUSU_CodGre: Integer;
    procedure SetUSU_CodGre(const pUSU_CodGre: Integer);
    function GetUSU_TipFre: Char;
    procedure SetUSU_TipFre(const pUSU_TipFre: Char);
    function GetUSU_ComSob: Char;
    procedure SetUSU_ComSob(const pUSU_ComSob: Char);
    function GetUSU_UsuRes: Integer;
    procedure SetUSU_UsuRes(const pUSU_UsuRes: Integer);
    function GetUSU_SeqCto: Integer;
    procedure SetUSU_SeqCto(const pUSU_SeqCto: Integer);
    function GetUSU_UsuAlt: Integer;
    procedure SetUSU_UsuAlt(const pUSU_UsuAlt: Integer);
    function GetUSU_DatAlt: TDate;
    procedure SetUSU_DatAlt(const pUSU_DatAlt: TDate);
    function GetUSU_HorAlt: Integer;
    procedure SetUSU_HorAlt(const pUSU_HorAlt: Integer);
    function GetUSU_IndRea: Double;
    procedure SetUSU_IndRea(const pUSU_IndRea: Double);
    function GetUSU_DiaAviTer: Integer;
    procedure SetUSU_DiaAviTer(const pUSU_DiaAviTer: Integer);
    function GetUSU_IQFPerMul: Double;
    procedure SetUSU_IQFPerMul(const pUSU_IQFPerMul: Double);
    function GetUSU_IQFVlrMul: Double;
    procedure SetUSU_IQFVlrMul(const pUSU_IQFVlrMul: Double);
    function GetUSU_OcoMul: Integer;
    procedure SetUSU_OcoMul(const pUSU_OcoMul: Integer);
    function GetUSU_TipOco: Char;
    procedure SetUSU_TipOco(const pUSU_TipOco: Char);
    function GetUSU_IndPad: Double;
    procedure SetUSU_IndPad(const pUSU_IndPad: Double);
    function GetUSU_DiaIQF: Integer;
    procedure SetUSU_DiaIQF(const pUSU_DiaIQF: Integer);
    function GetUSU_Dia2IQF: Integer;
    procedure SetUSU_Dia2IQF(const pUSU_Dia2IQF: Integer);

    function GetCodEmpOld: Integer;
    procedure SetCodEmpOld(const pCodEmp: Integer);
    function GetCodFilOld: Integer;
    procedure SetCodFilOld(const pCodFil: Integer);
    function GetNumCtrOld: Integer;
    procedure SetNumCtrOld(const pNumCtr: Integer);
    function GetTipCtrOld: Integer;
    procedure SetTipCtrOld(const pTipCtr: Integer);
    function GetNumOfiOld: string;
    procedure SetNumOfiOld(const pNumOfi: string);
    function GetObjCtrOld: string;
    procedure SetObjCtrOld(const pObjCtr: string);
    function GetTnsProOld: string;
    procedure SetTnsProOld(const pTnsPro: string);
    function GetTnsSerOld: string;
    procedure SetTnsSerOld(const pTnsSer: string);
    function GetCrtOriOld: Integer;
    procedure SetCrtOriOld(const pCrtOri: Integer);
    function GetDatEmiOld: TDate;
    procedure SetDatEmiOld(const pDatEmi: TDate);
    function GetDatEntOld: TDate;
    procedure SetDatEntOld(const pDatEnt: TDate);
    function GetCodCliOld: Integer;
    procedure SetCodCliOld(const pCodCli: Integer);
    function GetCliFatOld: Integer;
    procedure SetCliFatOld(const pCliFat: Integer);
    function GetCodRepOld: Integer;
    procedure SetCodRepOld(const pCodRep: Integer);
    function GetCodMoeOld: string;
    procedure SetCodMoeOld(const pCodMoe: string);
    function GetCodFrjOld: string;
    procedure SetCodFrjOld(const pCodFrj: string);
    function GetQtdParOld: Integer;
    procedure SetQtdParOld(const pQtdPar: Integer);
    function GetDiaParOld: Integer;
    procedure SetDiaParOld(const pDiaPar: Integer);
    function GetProParOld: Integer;
    procedure SetProParOld(const pProPar: Integer);
    function GetDatIniOld: TDate;
    procedure SetDatIniOld(const pDatIni: TDate);
    function GetDiaBasOld: Integer;
    procedure SetDiaBasOld(const pDiaBas: Integer);
    function GetDatUftOld: TDate;
    procedure SetDatUftOld(const pDatUft: TDate);
    function GetFilNfvOld: Integer;
    procedure SetFilNfvOld(const pFilNfv: Integer);
    function GetCodSnfOld: string;
    procedure SetCodSnfOld(const pCodSnf: string);
    function GetNumNfvOld: Integer;
    procedure SetNumNfvOld(const pNumNfv: Integer);
    function GetCodCpgOld: string;
    procedure SetCodCpgOld(const pCodCpg: string);
    function GetUsaJmcOld: Char;
    procedure SetUsaJmcOld(const pUsaJmc: Char);
    function GetPerJrsOld: Double;
    procedure SetPerJrsOld(const pPerJrs: Double);
    function GetTolJrsOld: Integer;
    procedure SetTolJrsOld(const pTolJrs: Integer);
    function GetTipJrsOld: Char;
    procedure SetTipJrsOld(const pTipJrs: Char);
    function GetPerMulOld: Double;
    procedure SetPerMulOld(const pPerMul: Double);
    function GetTolMulOld: Integer;
    procedure SetTolMulOld(const pTolMul: Integer);
    function GetVlrTotOld: Double;
    procedure SetVlrTotOld(const pVlrTot: Double);
    function GetTnsTitOld: string;
    procedure SetTnsTitOld(const pTnsTit: string);
    function GetFilTcrOld: Integer;
    procedure SetFilTcrOld(const pFilTcr: Integer);
    function GetCodTptOld: string;
    procedure SetCodTptOld(const pCodTpt: string);
    function GetNumTitOld: Integer;
    procedure SetNumTitOld(const pNumTit: Integer);
    function GetOriTitOld: string;
    procedure SetOriTitOld(const pOriTit: string);
    function GetUltReaOld: TDate;
    procedure SetUltReaOld(const pUltRea: TDate);
    function GetPrdReaOld: Integer;
    procedure SetPrdReaOld(const pPrdRea: Integer);
    function GetPerReaOld: Double;
    procedure SetPerReaOld(const pPerRea: Double);
    function GetCodRegOld: Integer;
    procedure SetCodRegOld(const pCodReg: Integer);
    function GetSitCtrOld: Char;
    procedure SetSitCtrOld(const pSitCtr: Char);
    function GetCodMotOld: Integer;
    procedure SetCodMotOld(const pCodMot: Integer);
    function GetObsMotOld: string;
    procedure SetObsMotOld(const pObsMot: string);
    function GetDiaFixOld: Integer;
    procedure SetDiaFixOld(const pDiaFix: Integer);
    function GetCodTraOld: Integer;
    procedure SetCodTraOld(const pCodTra: Integer);
    function GetCodMs1Old: Integer;
    procedure SetCodMs1Old(const pCodMs1: Integer);
    function GetCodMs2Old: Integer;
    procedure SetCodMs2Old(const pCodMs2: Integer);
    function GetCodMs3Old: Integer;
    procedure SetCodMs3Old(const pCodMs3: Integer);
    function GetCodMs4Old: Integer;
    procedure SetCodMs4Old(const pCodMs4: Integer);
    function GetObsCtrOld: string;
    procedure SetObsCtrOld(const pObsCtr: string);
    function GetDiaRepOld: Integer;
    procedure SetDiaRepOld(const pDiaRep: Integer);
    function GetIniRepOld: TDate;
    procedure SetIniRepOld(const pIniRep: TDate);
    function GetFimRepOld: TDate;
    procedure SetFimRepOld(const pFimRep: TDate);
    function GetUltCptOld: TDate;
    procedure SetUltCptOld(const pUltCpt: TDate);
    function GetAgpDscOld: Char;
    procedure SetAgpDscOld(const pAgpDsc: Char);
    function GetCodCrpOld: string;
    procedure SetCodCrpOld(const pCodCrp: string);
    function GetCodFcrOld: string;
    procedure SetCodFcrOld(const pCodFcr: string);
    function GetDatFcrOld: TDate;
    procedure SetDatFcrOld(const pDatFcr: TDate);
    function GetPerFatOld: Double;
    procedure SetPerFatOld(const pPerFat: Double);
    function GetIniReaOld: TDate;
    procedure SetIniReaOld(const pIniRea: TDate);
    function GetCodTprOld: string;
    procedure SetCodTprOld(const pCodTpr: string);
    function GetSeqEntOld: Integer;
    procedure SetSeqEntOld(const pSeqEnt: Integer);
    function GetSeqCobOld: Integer;
    procedure SetSeqCobOld(const pSeqCob: Integer);
    function GetIniVigOld: TDate;
    procedure SetIniVigOld(const pIniVig: TDate);
    function GetFimVigOld: TDate;
    procedure SetFimVigOld(const pFimVig: TDate);
    function GetCriFtcOld: Integer;
    procedure SetCriFtcOld(const pCriFtc: Integer);
    function GetCriPrtOld: Integer;
    procedure SetCriPrtOld(const pCriPrt: Integer);
    function GetDatFimOld: TDate;
    procedure SetDatFimOld(const pDatFim: TDate);
    function GetIniComOld: TDate;
    procedure SetIniComOld(const pIniCom: TDate);
    function GetFimComOld: TDate;
    procedure SetFimComOld(const pFimCom: TDate);
    function GetUsuGerOld: Integer;
    procedure SetUsuGerOld(const pUsuGer: Integer);
    function GetDatGerOld: TDate;
    procedure SetDatGerOld(const pDatGer: TDate);
    function GetHorGerOld: Integer;
    procedure SetHorGerOld(const pHorGer: Integer);
    function GetCodFpgOld: Integer;
    procedure SetCodFpgOld(const pCodFpg: Integer);
    function GetUltRreOld: TDate;
    procedure SetUltRreOld(const pUltRre: TDate);
    function GetPerRreOld: Double;
    procedure SetPerRreOld(const pPerRre: Double);
    function GetPrdRreOld: Integer;
    procedure SetPrdRreOld(const pPrdRre: Integer);
    function GetIniRreOld: TDate;
    procedure SetIniRreOld(const pIniRre: TDate);
    function GetUltRpaOld: TDate;
    procedure SetUltRpaOld(const pUltRpa: TDate);
    function GetPerRpaOld: Double;
    procedure SetPerRpaOld(const pPerRpa: Double);
    function GetPrdRpaOld: Integer;
    procedure SetPrdRpaOld(const pPrdRpa: Integer);
    function GetIniRpaOld: TDate;
    procedure SetIniRpaOld(const pIniRpa: TDate);
    function GetIndPadOld: Char;
    procedure SetIndPadOld(const pIndPad: Char);
    function GetTipDipOld: Integer;
    procedure SetTipDipOld(const pTipDip: Integer);
    function GetTipAceOld: Integer;
    procedure SetTipAceOld(const pTipAce: Integer);
    function GetIndEmpOld: Char;
    procedure SetIndEmpOld(const pIndEmp: Char);
    function GetDscNegOld: Double;
    procedure SetDscNegOld(const pDscNeg: Double);
    function GetTipCgpOld: Integer;
    procedure SetTipCgpOld(const pTipCgp: Integer);
    function GetTipAveOld: Integer;
    procedure SetTipAveOld(const pTipAve: Integer);
    function GetRotAnxOld: Integer;
    procedure SetRotAnxOld(const pRotAnx: Integer);
    function GetNumAnxOld: Integer;
    procedure SetNumAnxOld(const pNumAnx: Integer);
    function GetProReqOld: Integer;
    procedure SetProReqOld(const pProReq: Integer);
    function GetDatUreOld: TDate;
    procedure SetDatUreOld(const pDatUre: TDate);
    function GetCtrReaOld: Char;
    procedure SetCtrReaOld(const pCtrRea: Char);
    function GetCtrIftOld: Char;
    procedure SetCtrIftOld(const pCtrIft: Char);
    function GetTemAvaOld: Char;
    procedure SetTemAvaOld(const pTemAva: Char);
    function GetVarSerOld: Char;
    procedure SetVarSerOld(const pVarSer: Char);
    function GetCodSegOld: Integer;
    procedure SetCodSegOld(const pCodSeg: Integer);
    function GetCodBanOld: string;
    procedure SetCodBanOld(const pCodBan: string);
    function GetQtdRevOld: Double;
    procedure SetQtdRevOld(const pQtdRev: Double);
    function GetQtdRefOld: Double;
    procedure SetQtdRefOld(const pQtdRef: Double);
    function GetDocEnvOld: Char;
    procedure SetDocEnvOld(const pDocEnv: Char);
    function GetEmpCtoOld: Integer;
    procedure SetEmpCtoOld(const pEmpCto: Integer);
    function GetCodPcoOld: Integer;
    procedure SetCodPcoOld(const pCodPco: Integer);
    function GetFilCtoOld: Integer;
    procedure SetFilCtoOld(const pFilCto: Integer);
    function GetCptPcoOld: TDate;
    procedure SetCptPcoOld(const pCptPco: TDate);
    function GetUSU_VenCtrOld: Char;
    procedure SetUSU_VenCtrOld(const pUSU_VenCtr: Char);
    function GetUSU_CodGreOld: Integer;
    procedure SetUSU_CodGreOld(const pUSU_CodGre: Integer);
    function GetUSU_TipFreOld: Char;
    procedure SetUSU_TipFreOld(const pUSU_TipFre: Char);
    function GetUSU_ComSobOld: Char;
    procedure SetUSU_ComSobOld(const pUSU_ComSob: Char);
    function GetUSU_UsuResOld: Integer;
    procedure SetUSU_UsuResOld(const pUSU_UsuRes: Integer);
    function GetUSU_SeqCtoOld: Integer;
    procedure SetUSU_SeqCtoOld(const pUSU_SeqCto: Integer);
    function GetUSU_UsuAltOld: Integer;
    procedure SetUSU_UsuAltOld(const pUSU_UsuAlt: Integer);
    function GetUSU_DatAltOld: TDate;
    procedure SetUSU_DatAltOld(const pUSU_DatAlt: TDate);
    function GetUSU_HorAltOld: Integer;
    procedure SetUSU_HorAltOld(const pUSU_HorAlt: Integer);
    function GetUSU_IndReaOld: Double;
    procedure SetUSU_IndReaOld(const pUSU_IndRea: Double);
    function GetUSU_DiaAviTerOld: Integer;
    procedure SetUSU_DiaAviTerOld(const pUSU_DiaAviTer: Integer);
    function GetUSU_IQFPerMulOld: Double;
    procedure SetUSU_IQFPerMulOld(const pUSU_IQFPerMul: Double);
    function GetUSU_IQFVlrMulOld: Double;
    procedure SetUSU_IQFVlrMulOld(const pUSU_IQFVlrMul: Double);
    function GetUSU_OcoMulOld: Integer;
    procedure SetUSU_OcoMulOld(const pUSU_OcoMul: Integer);
    function GetUSU_TipOcoOld: Char;
    procedure SetUSU_TipOcoOld(const pUSU_TipOco: Char);
    function GetUSU_IndPadOld: Double;
    procedure SetUSU_IndPadOld(const pUSU_IndPad: Double);
    function GetUSU_DiaIQFOld: Integer;
    procedure SetUSU_DiaIQFOld(const pUSU_DiaIQF: Integer);
    function GetUSU_Dia2IQFOld: Integer;
    procedure SetUSU_Dia2IQFOld(const pUSU_Dia2IQF: Integer);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property CodEmp: Integer read GetCodEmp write SetCodEmp;
    property CodFil: Integer read GetCodFil write SetCodFil;
    property NumCtr: Integer read GetNumCtr write SetNumCtr;
    property TipCtr: Integer read GetTipCtr write SetTipCtr;
    property NumOfi: string read GetNumOfi write SetNumOfi;
    property ObjCtr: string read GetObjCtr write SetObjCtr;
    property TnsPro: string read GetTnsPro write SetTnsPro;
    property TnsSer: string read GetTnsSer write SetTnsSer;
    property CrtOri: Integer read GetCrtOri write SetCrtOri;
    property DatEmi: TDate read GetDatEmi write SetDatEmi;
    property DatEnt: TDate read GetDatEnt write SetDatEnt;
    property CodCli: Integer read GetCodCli write SetCodCli;
    property CliFat: Integer read GetCliFat write SetCliFat;
    property CodRep: Integer read GetCodRep write SetCodRep;
    property CodMoe: string read GetCodMoe write SetCodMoe;
    property CodFrj: string read GetCodFrj write SetCodFrj;
    property QtdPar: Integer read GetQtdPar write SetQtdPar;
    property DiaPar: Integer read GetDiaPar write SetDiaPar;
    property ProPar: Integer read GetProPar write SetProPar;
    property DatIni: TDate read GetDatIni write SetDatIni;
    property DiaBas: Integer read GetDiaBas write SetDiaBas;
    property DatUft: TDate read GetDatUft write SetDatUft;
    property FilNfv: Integer read GetFilNfv write SetFilNfv;
    property CodSnf: string read GetCodSnf write SetCodSnf;
    property NumNfv: Integer read GetNumNfv write SetNumNfv;
    property CodCpg: string read GetCodCpg write SetCodCpg;
    property UsaJmc: Char read GetUsaJmc write SetUsaJmc;
    property PerJrs: Double read GetPerJrs write SetPerJrs;
    property TolJrs: Integer read GetTolJrs write SetTolJrs;
    property TipJrs: Char read GetTipJrs write SetTipJrs;
    property PerMul: Double read GetPerMul write SetPerMul;
    property TolMul: Integer read GetTolMul write SetTolMul;
    property VlrTot: Double read GetVlrTot write SetVlrTot;
    property TnsTit: string read GetTnsTit write SetTnsTit;
    property FilTcr: Integer read GetFilTcr write SetFilTcr;
    property CodTpt: string read GetCodTpt write SetCodTpt;
    property NumTit: Integer read GetNumTit write SetNumTit;
    property OriTit: string read GetOriTit write SetOriTit;
    property UltRea: TDate read GetUltRea write SetUltRea;
    property PrdRea: Integer read GetPrdRea write SetPrdRea;
    property PerRea: Double read GetPerRea write SetPerRea;
    property CodReg: Integer read GetCodReg write SetCodReg;
    property SitCtr: Char read GetSitCtr write SetSitCtr;
    property CodMot: Integer read GetCodMot write SetCodMot;
    property ObsMot: string read GetObsMot write SetObsMot;
    property DiaFix: Integer read GetDiaFix write SetDiaFix;
    property CodTra: Integer read GetCodTra write SetCodTra;
    property CodMs1: Integer read GetCodMs1 write SetCodMs1;
    property CodMs2: Integer read GetCodMs2 write SetCodMs2;
    property CodMs3: Integer read GetCodMs3 write SetCodMs3;
    property CodMs4: Integer read GetCodMs4 write SetCodMs4;
    property ObsCtr: string read GetObsCtr write SetObsCtr;
    property DiaRep: Integer read GetDiaRep write SetDiaRep;
    property IniRep: TDate read GetIniRep write SetIniRep;
    property FimRep: TDate read GetFimRep write SetFimRep;
    property UltCpt: TDate read GetUltCpt write SetUltCpt;
    property AgpDsc: Char read GetAgpDsc write SetAgpDsc;
    property CodCrp: string read GetCodCrp write SetCodCrp;
    property CodFcr: string read GetCodFcr write SetCodFcr;
    property DatFcr: TDate read GetDatFcr write SetDatFcr;
    property PerFat: Double read GetPerFat write SetPerFat;
    property IniRea: TDate read GetIniRea write SetIniRea;
    property CodTpr: string read GetCodTpr write SetCodTpr;
    property SeqEnt: Integer read GetSeqEnt write SetSeqEnt;
    property SeqCob: Integer read GetSeqCob write SetSeqCob;
    property IniVig: TDate read GetIniVig write SetIniVig;
    property FimVig: TDate read GetFimVig write SetFimVig;
    property CriFtc: Integer read GetCriFtc write SetCriFtc;
    property CriPrt: Integer read GetCriPrt write SetCriPrt;
    property DatFim: TDate read GetDatFim write SetDatFim;
    property IniCom: TDate read GetIniCom write SetIniCom;
    property FimCom: TDate read GetFimCom write SetFimCom;
    property UsuGer: Integer read GetUsuGer write SetUsuGer;
    property DatGer: TDate read GetDatGer write SetDatGer;
    property HorGer: Integer read GetHorGer write SetHorGer;
    property CodFpg: Integer read GetCodFpg write SetCodFpg;
    property UltRre: TDate read GetUltRre write SetUltRre;
    property PerRre: Double read GetPerRre write SetPerRre;
    property PrdRre: Integer read GetPrdRre write SetPrdRre;
    property IniRre: TDate read GetIniRre write SetIniRre;
    property UltRpa: TDate read GetUltRpa write SetUltRpa;
    property PerRpa: Double read GetPerRpa write SetPerRpa;
    property PrdRpa: Integer read GetPrdRpa write SetPrdRpa;
    property IniRpa: TDate read GetIniRpa write SetIniRpa;
    property IndPad: Char read GetIndPad write SetIndPad;
    property TipDip: Integer read GetTipDip write SetTipDip;
    property TipAce: Integer read GetTipAce write SetTipAce;
    property IndEmp: Char read GetIndEmp write SetIndEmp;
    property DscNeg: Double read GetDscNeg write SetDscNeg;
    property TipCgp: Integer read GetTipCgp write SetTipCgp;
    property TipAve: Integer read GetTipAve write SetTipAve;
    property RotAnx: Integer read GetRotAnx write SetRotAnx;
    property NumAnx: Integer read GetNumAnx write SetNumAnx;
    property ProReq: Integer read GetProReq write SetProReq;
    property DatUre: TDate read GetDatUre write SetDatUre;
    property CtrRea: Char read GetCtrRea write SetCtrRea;
    property CtrIft: Char read GetCtrIft write SetCtrIft;
    property TemAva: Char read GetTemAva write SetTemAva;
    property VarSer: Char read GetVarSer write SetVarSer;
    property CodSeg: Integer read GetCodSeg write SetCodSeg;
    property CodBan: string read GetCodBan write SetCodBan;
    property QtdRev: Double read GetQtdRev write SetQtdRev;
    property QtdRef: Double read GetQtdRef write SetQtdRef;
    property DocEnv: Char read GetDocEnv write SetDocEnv;
    property EmpCto: Integer read GetEmpCto write SetEmpCto;
    property CodPco: Integer read GetCodPco write SetCodPco;
    property FilCto: Integer read GetFilCto write SetFilCto;
    property CptPco: TDate read GetCptPco write SetCptPco;
    property USU_VenCtr: Char read GetUSU_VenCtr write SetUSU_VenCtr;
    property USU_CodGre: Integer read GetUSU_CodGre write SetUSU_CodGre;
    property USU_TipFre: Char read GetUSU_TipFre write SetUSU_TipFre;
    property USU_ComSob: Char read GetUSU_ComSob write SetUSU_ComSob;
    property USU_UsuRes: Integer read GetUSU_UsuRes write SetUSU_UsuRes;
    property USU_SeqCto: Integer read GetUSU_SeqCto write SetUSU_SeqCto;
    property USU_UsuAlt: Integer read GetUSU_UsuAlt write SetUSU_UsuAlt;
    property USU_DatAlt: TDate read GetUSU_DatAlt write SetUSU_DatAlt;
    property USU_HorAlt: Integer read GetUSU_HorAlt write SetUSU_HorAlt;
    property USU_IndRea: Double read GetUSU_IndRea write SetUSU_IndRea;
    property USU_DiaAviTer: Integer read GetUSU_DiaAviTer write SetUSU_DiaAviTer;
    property USU_IQFPerMul: Double read GetUSU_IQFPerMul write SetUSU_IQFPerMul;
    property USU_IQFVlrMul: Double read GetUSU_IQFVlrMul write SetUSU_IQFVlrMul;
    property USU_OcoMul: Integer read GetUSU_OcoMul write SetUSU_OcoMul;
    property USU_TipOco: Char read GetUSU_TipOco write SetUSU_TipOco;
    property USU_IndPad: Double read GetUSU_IndPad write SetUSU_IndPad;
    property USU_DiaIQF: Integer read GetUSU_DiaIQF write SetUSU_DiaIQF;
    property USU_Dia2IQF: Integer read GetUSU_Dia2IQF write SetUSU_Dia2IQF;

    property OLD_CodEmp: Integer read GetCodEmpOLD write SetCodEmpOLD;
    property OLD_CodFil: Integer read GetCodFilOLD write SetCodFilOLD;
    property OLD_NumCtr: Integer read GetNumCtrOLD write SetNumCtrOLD;
    property OLD_TipCtr: Integer read GetTipCtrOLD write SetTipCtrOLD;
    property OLD_NumOfi: string read GetNumOfiOLD write SetNumOfiOLD;
    property OLD_ObjCtr: string read GetObjCtrOLD write SetObjCtrOLD;
    property OLD_TnsPro: string read GetTnsProOLD write SetTnsProOLD;
    property OLD_TnsSer: string read GetTnsSerOLD write SetTnsSerOLD;
    property OLD_CrtOri: Integer read GetCrtOriOLD write SetCrtOriOLD;
    property OLD_DatEmi: TDate read GetDatEmiOLD write SetDatEmiOLD;
    property OLD_DatEnt: TDate read GetDatEntOLD write SetDatEntOLD;
    property OLD_CodCli: Integer read GetCodCliOLD write SetCodCliOLD;
    property OLD_CliFat: Integer read GetCliFatOLD write SetCliFatOLD;
    property OLD_CodRep: Integer read GetCodRepOLD write SetCodRepOLD;
    property OLD_CodMoe: string read GetCodMoeOLD write SetCodMoeOLD;
    property OLD_CodFrj: string read GetCodFrjOLD write SetCodFrjOLD;
    property OLD_QtdPar: Integer read GetQtdParOLD write SetQtdParOLD;
    property OLD_DiaPar: Integer read GetDiaParOLD write SetDiaParOLD;
    property OLD_ProPar: Integer read GetProParOLD write SetProParOLD;
    property OLD_DatIni: TDate read GetDatIniOLD write SetDatIniOLD;
    property OLD_DiaBas: Integer read GetDiaBasOLD write SetDiaBasOLD;
    property OLD_DatUft: TDate read GetDatUftOLD write SetDatUftOLD;
    property OLD_FilNfv: Integer read GetFilNfvOLD write SetFilNfvOLD;
    property OLD_CodSnf: string read GetCodSnfOLD write SetCodSnfOLD;
    property OLD_NumNfv: Integer read GetNumNfvOLD write SetNumNfvOLD;
    property OLD_CodCpg: string read GetCodCpgOLD write SetCodCpgOLD;
    property OLD_UsaJmc: Char read GetUsaJmcOLD write SetUsaJmcOLD;
    property OLD_PerJrs: Double read GetPerJrsOLD write SetPerJrsOLD;
    property OLD_TolJrs: Integer read GetTolJrsOLD write SetTolJrsOLD;
    property OLD_TipJrs: Char read GetTipJrsOLD write SetTipJrsOLD;
    property OLD_PerMul: Double read GetPerMulOLD write SetPerMulOLD;
    property OLD_TolMul: Integer read GetTolMulOLD write SetTolMulOLD;
    property OLD_VlrTot: Double read GetVlrTotOLD write SetVlrTotOLD;
    property OLD_TnsTit: string read GetTnsTitOLD write SetTnsTitOLD;
    property OLD_FilTcr: Integer read GetFilTcrOLD write SetFilTcrOLD;
    property OLD_CodTpt: string read GetCodTptOLD write SetCodTptOLD;
    property OLD_NumTit: Integer read GetNumTitOLD write SetNumTitOLD;
    property OLD_OriTit: string read GetOriTitOLD write SetOriTitOLD;
    property OLD_UltRea: TDate read GetUltReaOLD write SetUltReaOLD;
    property OLD_PrdRea: Integer read GetPrdReaOLD write SetPrdReaOLD;
    property OLD_PerRea: Double read GetPerReaOLD write SetPerReaOLD;
    property OLD_CodReg: Integer read GetCodRegOLD write SetCodRegOLD;
    property OLD_SitCtr: Char read GetSitCtrOLD write SetSitCtrOLD;
    property OLD_CodMot: Integer read GetCodMotOLD write SetCodMotOLD;
    property OLD_ObsMot: string read GetObsMotOLD write SetObsMotOLD;
    property OLD_DiaFix: Integer read GetDiaFixOLD write SetDiaFixOLD;
    property OLD_CodTra: Integer read GetCodTraOLD write SetCodTraOLD;
    property OLD_CodMs1: Integer read GetCodMs1OLD write SetCodMs1OLD;
    property OLD_CodMs2: Integer read GetCodMs2OLD write SetCodMs2OLD;
    property OLD_CodMs3: Integer read GetCodMs3OLD write SetCodMs3OLD;
    property OLD_CodMs4: Integer read GetCodMs4OLD write SetCodMs4OLD;
    property OLD_ObsCtr: string read GetObsCtrOLD write SetObsCtrOLD;
    property OLD_DiaRep: Integer read GetDiaRepOLD write SetDiaRepOLD;
    property OLD_IniRep: TDate read GetIniRepOLD write SetIniRepOLD;
    property OLD_FimRep: TDate read GetFimRepOLD write SetFimRepOLD;
    property OLD_UltCpt: TDate read GetUltCptOLD write SetUltCptOLD;
    property OLD_AgpDsc: Char read GetAgpDscOLD write SetAgpDscOLD;
    property OLD_CodCrp: string read GetCodCrpOLD write SetCodCrpOLD;
    property OLD_CodFcr: string read GetCodFcrOLD write SetCodFcrOLD;
    property OLD_DatFcr: TDate read GetDatFcrOLD write SetDatFcrOLD;
    property OLD_PerFat: Double read GetPerFatOLD write SetPerFatOLD;
    property OLD_IniRea: TDate read GetIniReaOLD write SetIniReaOLD;
    property OLD_CodTpr: string read GetCodTprOLD write SetCodTprOLD;
    property OLD_SeqEnt: Integer read GetSeqEntOLD write SetSeqEntOLD;
    property OLD_SeqCob: Integer read GetSeqCobOLD write SetSeqCobOLD;
    property OLD_IniVig: TDate read GetIniVigOLD write SetIniVigOLD;
    property OLD_FimVig: TDate read GetFimVigOLD write SetFimVigOLD;
    property OLD_CriFtc: Integer read GetCriFtcOLD write SetCriFtcOLD;
    property OLD_CriPrt: Integer read GetCriPrtOLD write SetCriPrtOLD;
    property OLD_DatFim: TDate read GetDatFimOLD write SetDatFimOLD;
    property OLD_IniCom: TDate read GetIniComOLD write SetIniComOLD;
    property OLD_FimCom: TDate read GetFimComOLD write SetFimComOLD;
    property OLD_UsuGer: Integer read GetUsuGerOLD write SetUsuGerOLD;
    property OLD_DatGer: TDate read GetDatGerOLD write SetDatGerOLD;
    property OLD_HorGer: Integer read GetHorGerOLD write SetHorGerOLD;
    property OLD_CodFpg: Integer read GetCodFpgOLD write SetCodFpgOLD;
    property OLD_UltRre: TDate read GetUltRreOLD write SetUltRreOLD;
    property OLD_PerRre: Double read GetPerRreOLD write SetPerRreOLD;
    property OLD_PrdRre: Integer read GetPrdRreOLD write SetPrdRreOLD;
    property OLD_IniRre: TDate read GetIniRreOLD write SetIniRreOLD;
    property OLD_UltRpa: TDate read GetUltRpaOLD write SetUltRpaOLD;
    property OLD_PerRpa: Double read GetPerRpaOLD write SetPerRpaOLD;
    property OLD_PrdRpa: Integer read GetPrdRpaOLD write SetPrdRpaOLD;
    property OLD_IniRpa: TDate read GetIniRpaOLD write SetIniRpaOLD;
    property OLD_IndPad: Char read GetIndPadOLD write SetIndPadOLD;
    property OLD_TipDip: Integer read GetTipDipOLD write SetTipDipOLD;
    property OLD_TipAce: Integer read GetTipAceOLD write SetTipAceOLD;
    property OLD_IndEmp: Char read GetIndEmpOLD write SetIndEmpOLD;
    property OLD_DscNeg: Double read GetDscNegOLD write SetDscNegOLD;
    property OLD_TipCgp: Integer read GetTipCgpOLD write SetTipCgpOLD;
    property OLD_TipAve: Integer read GetTipAveOLD write SetTipAveOLD;
    property OLD_RotAnx: Integer read GetRotAnxOLD write SetRotAnxOLD;
    property OLD_NumAnx: Integer read GetNumAnxOLD write SetNumAnxOLD;
    property OLD_ProReq: Integer read GetProReqOLD write SetProReqOLD;
    property OLD_DatUre: TDate read GetDatUreOLD write SetDatUreOLD;
    property OLD_CtrRea: Char read GetCtrReaOLD write SetCtrReaOLD;
    property OLD_CtrIft: Char read GetCtrIftOLD write SetCtrIftOLD;
    property OLD_TemAva: Char read GetTemAvaOLD write SetTemAvaOLD;
    property OLD_VarSer: Char read GetVarSerOLD write SetVarSerOLD;
    property OLD_CodSeg: Integer read GetCodSegOLD write SetCodSegOLD;
    property OLD_CodBan: string read GetCodBanOLD write SetCodBanOLD;
    property OLD_QtdRev: Double read GetQtdRevOLD write SetQtdRevOLD;
    property OLD_QtdRef: Double read GetQtdRefOLD write SetQtdRefOLD;
    property OLD_DocEnv: Char read GetDocEnvOLD write SetDocEnvOLD;
    property OLD_EmpCto: Integer read GetEmpCtoOLD write SetEmpCtoOLD;
    property OLD_CodPco: Integer read GetCodPcoOLD write SetCodPcoOLD;
    property OLD_FilCto: Integer read GetFilCtoOLD write SetFilCtoOLD;
    property OLD_CptPco: TDate read GetCptPcoOLD write SetCptPcoOLD;
    property OLD_USU_VenCtr: Char read GetUSU_VenCtrOLD write SetUSU_VenCtrOLD;
    property OLD_USU_CodGre: Integer read GetUSU_CodGreOLD write SetUSU_CodGreOLD;
    property OLD_USU_TipFre: Char read GetUSU_TipFreOLD write SetUSU_TipFreOLD;
    property OLD_USU_ComSob: Char read GetUSU_ComSobOLD write SetUSU_ComSobOLD;
    property OLD_USU_UsuRes: Integer read GetUSU_UsuResOLD write SetUSU_UsuResOLD;
    property OLD_USU_SeqCto: Integer read GetUSU_SeqCtoOLD write SetUSU_SeqCtoOLD;
    property OLD_USU_UsuAlt: Integer read GetUSU_UsuAltOLD write SetUSU_UsuAltOLD;
    property OLD_USU_DatAlt: TDate read GetUSU_DatAltOLD write SetUSU_DatAltOLD;
    property OLD_USU_HorAlt: Integer read GetUSU_HorAltOLD write SetUSU_HorAltOLD;
    property OLD_USU_IndRea: Double read GetUSU_IndReaOLD write SetUSU_IndReaOLD;
    property OLD_USU_DiaAviTer: Integer read GetUSU_DiaAviTerOLD write SetUSU_DiaAviTerOLD;
    property OLD_USU_IQFPerMul: Double read GetUSU_IQFPerMulOLD write SetUSU_IQFPerMulOLD;
    property OLD_USU_IQFVlrMul: Double read GetUSU_IQFVlrMulOLD write SetUSU_IQFVlrMulOLD;
    property OLD_USU_OcoMul: Integer read GetUSU_OcoMulOLD write SetUSU_OcoMulOLD;
    property OLD_USU_TipOco: Char read GetUSU_TipOcoOLD write SetUSU_TipOcoOLD;
    property OLD_USU_IndPad: Double read GetUSU_IndPadOLD write SetUSU_IndPadOLD;
    property OLD_USU_DiaIQF: Integer read GetUSU_DiaIQFOLD write SetUSU_DiaIQFOLD;
    property OLD_USU_Dia2IQF: Integer read GetUSU_Dia2IQFOLD write SetUSU_Dia2IQFOLD;
  end;

implementation

{ T160CTR }

constructor T160CTR.Create();
begin
  AddForeignKeys(['CodEmp','CodFil','CodCli','CliFat'], ['CodEmp','CodFil','CodCli','CodCli']);
  AddPrimaryKeys('CodEmp;CodFil;NumCtr');

  inherited Create('E160CTR');
end;

destructor T160CTR.Destroy();
begin
  inherited;
end;

function T160CTR.GetCodEmp: Integer;
begin
  Result := FCodEmp;
end;

procedure T160CTR.SetCodEmp(const pCodEmp: Integer);
begin
  FCodEmp := pCodEmp;

  CheckField('CodEmp');
end;

function T160CTR.GetCodFil: Integer;
begin
  Result := FCodFil;
end;

procedure T160CTR.SetCodFil(const pCodFil: Integer);
begin
  FCodFil := pCodFil;

  CheckField('CodFil');
end;

function T160CTR.GetNumCtr: Integer;
begin
  Result := FNumCtr;
end;

procedure T160CTR.SetNumCtr(const pNumCtr: Integer);
begin
  FNumCtr := pNumCtr;

  CheckField('NumCtr');
end;

function T160CTR.GetTipCtr: Integer;
begin
  Result := FTipCtr;
end;

procedure T160CTR.SetTipCtr(const pTipCtr: Integer);
begin
  FTipCtr := pTipCtr;

  CheckField('TipCtr');
end;

function T160CTR.GetNumOfi: string;
begin
  Result := FNumOfi;
end;

procedure T160CTR.SetNumOfi(const pNumOfi: string);
begin
  FNumOfi := pNumOfi;

  CheckField('NumOfi');
end;

function T160CTR.GetObjCtr: string;
begin
  Result := FObjCtr;
end;

procedure T160CTR.SetObjCtr(const pObjCtr: string);
begin
  FObjCtr := pObjCtr;

  CheckField('ObjCtr');
end;

function T160CTR.GetTnsPro: string;
begin
  Result := FTnsPro;
end;

procedure T160CTR.SetTnsPro(const pTnsPro: string);
begin
  FTnsPro := pTnsPro;

  CheckField('TnsPro');
end;

function T160CTR.GetTnsSer: string;
begin
  Result := FTnsSer;
end;

procedure T160CTR.SetTnsSer(const pTnsSer: string);
begin
  FTnsSer := pTnsSer;

  CheckField('TnsSer');
end;

function T160CTR.GetCrtOri: Integer;
begin
  Result := FCrtOri;
end;

procedure T160CTR.SetCrtOri(const pCrtOri: Integer);
begin
  FCrtOri := pCrtOri;

  CheckField('CrtOri');
end;

function T160CTR.GetDatEmi: TDate;
begin
  Result := FDatEmi;
end;

procedure T160CTR.SetDatEmi(const pDatEmi: TDate);
begin
  FDatEmi := pDatEmi;

  CheckField('DatEmi');
end;

function T160CTR.GetDatEnt: TDate;
begin
  Result := FDatEnt;
end;

procedure T160CTR.SetDatEnt(const pDatEnt: TDate);
begin
  FDatEnt := pDatEnt;

  CheckField('DatEnt');
end;

function T160CTR.GetCodCli: Integer;
begin
  Result := FCodCli;
end;

procedure T160CTR.SetCodCli(const pCodCli: Integer);
begin
  FCodCli := pCodCli;

  CheckField('CodCli');
end;

function T160CTR.GetCliFat: Integer;
begin
  Result := FCliFat;
end;

procedure T160CTR.SetCliFat(const pCliFat: Integer);
begin
  FCliFat := pCliFat;

  CheckField('CliFat');
end;

function T160CTR.GetCodRep: Integer;
begin
  Result := FCodRep;
end;

procedure T160CTR.SetCodRep(const pCodRep: Integer);
begin
  FCodRep := pCodRep;

  CheckField('CodRep');
end;

function T160CTR.GetCodMoe: string;
begin
  Result := FCodMoe;
end;

procedure T160CTR.SetCodMoe(const pCodMoe: string);
begin
  FCodMoe := pCodMoe;

  CheckField('CodMoe');
end;

function T160CTR.GetCodFrj: string;
begin
  Result := FCodFrj;
end;

procedure T160CTR.SetCodFrj(const pCodFrj: string);
begin
  FCodFrj := pCodFrj;

  CheckField('CodFrj');
end;

function T160CTR.GetQtdPar: Integer;
begin
  Result := FQtdPar;
end;

procedure T160CTR.SetQtdPar(const pQtdPar: Integer);
begin
  FQtdPar := pQtdPar;

  CheckField('QtdPar');
end;

function T160CTR.GetDiaPar: Integer;
begin
  Result := FDiaPar;
end;

procedure T160CTR.SetDiaPar(const pDiaPar: Integer);
begin
  FDiaPar := pDiaPar;

  CheckField('DiaPar');
end;

function T160CTR.GetProPar: Integer;
begin
  Result := FProPar;
end;

procedure T160CTR.SetProPar(const pProPar: Integer);
begin
  FProPar := pProPar;

  CheckField('ProPar');
end;

function T160CTR.GetDatIni: TDate;
begin
  Result := FDatIni;
end;

procedure T160CTR.SetDatIni(const pDatIni: TDate);
begin
  FDatIni := pDatIni;

  CheckField('DatIni');
end;

function T160CTR.GetDiaBas: Integer;
begin
  Result := FDiaBas;
end;

procedure T160CTR.SetDiaBas(const pDiaBas: Integer);
begin
  FDiaBas := pDiaBas;

  CheckField('DiaBas');
end;

function T160CTR.GetDatUft: TDate;
begin
  Result := FDatUft;
end;

procedure T160CTR.SetDatUft(const pDatUft: TDate);
begin
  FDatUft := pDatUft;

  CheckField('DatUft');
end;

function T160CTR.GetFilNfv: Integer;
begin
  Result := FFilNfv;
end;

procedure T160CTR.SetFilNfv(const pFilNfv: Integer);
begin
  FFilNfv := pFilNfv;

  CheckField('FilNfv');
end;

function T160CTR.GetCodSnf: string;
begin
  Result := FCodSnf;
end;

procedure T160CTR.SetCodSnf(const pCodSnf: string);
begin
  FCodSnf := pCodSnf;

  CheckField('CodSnf');
end;

function T160CTR.GetNumNfv: Integer;
begin
  Result := FNumNfv;
end;

procedure T160CTR.SetNumNfv(const pNumNfv: Integer);
begin
  FNumNfv := pNumNfv;

  CheckField('NumNfv');
end;

function T160CTR.GetCodCpg: string;
begin
  Result := FCodCpg;
end;

procedure T160CTR.SetCodCpg(const pCodCpg: string);
begin
  FCodCpg := pCodCpg;

  CheckField('CodCpg');
end;

function T160CTR.GetUsaJmc: Char;
begin
  Result := FUsaJmc;
end;

procedure T160CTR.SetUsaJmc(const pUsaJmc: Char);
begin
  FUsaJmc := pUsaJmc;

  CheckField('UsaJmc');
end;

function T160CTR.GetPerJrs: Double;
begin
  Result := FPerJrs;
end;

procedure T160CTR.SetPerJrs(const pPerJrs: Double);
begin
  FPerJrs := pPerJrs;

  CheckField('PerJrs');
end;

function T160CTR.GetTolJrs: Integer;
begin
  Result := FTolJrs;
end;

procedure T160CTR.SetTolJrs(const pTolJrs: Integer);
begin
  FTolJrs := pTolJrs;

  CheckField('TolJrs');
end;

function T160CTR.GetTipJrs: Char;
begin
  Result := FTipJrs;
end;

procedure T160CTR.SetTipJrs(const pTipJrs: Char);
begin
  FTipJrs := pTipJrs;

  CheckField('TipJrs');
end;

function T160CTR.GetPerMul: Double;
begin
  Result := FPerMul;
end;

procedure T160CTR.SetPerMul(const pPerMul: Double);
begin
  FPerMul := pPerMul;

  CheckField('PerMul');
end;

function T160CTR.GetTolMul: Integer;
begin
  Result := FTolMul;
end;

procedure T160CTR.SetTolMul(const pTolMul: Integer);
begin
  FTolMul := pTolMul;

  CheckField('TolMul');
end;

function T160CTR.GetVlrTot: Double;
begin
  Result := FVlrTot;
end;

procedure T160CTR.SetVlrTot(const pVlrTot: Double);
begin
  FVlrTot := pVlrTot;

  CheckField('VlrTot');
end;

function T160CTR.GetTnsTit: string;
begin
  Result := FTnsTit;
end;

procedure T160CTR.SetTnsTit(const pTnsTit: string);
begin
  FTnsTit := pTnsTit;

  CheckField('TnsTit');
end;

function T160CTR.GetFilTcr: Integer;
begin
  Result := FFilTcr;
end;

procedure T160CTR.SetFilTcr(const pFilTcr: Integer);
begin
  FFilTcr := pFilTcr;

  CheckField('FilTcr');
end;

function T160CTR.GetCodTpt: string;
begin
  Result := FCodTpt;
end;

procedure T160CTR.SetCodTpt(const pCodTpt: string);
begin
  FCodTpt := pCodTpt;

  CheckField('CodTpt');
end;

function T160CTR.GetNumTit: Integer;
begin
  Result := FNumTit;
end;

procedure T160CTR.SetNumTit(const pNumTit: Integer);
begin
  FNumTit := pNumTit;

  CheckField('NumTit');
end;

function T160CTR.GetOriTit: string;
begin
  Result := FOriTit;
end;

procedure T160CTR.SetOriTit(const pOriTit: string);
begin
  FOriTit := pOriTit;

  CheckField('OriTit');
end;

function T160CTR.GetUltRea: TDate;
begin
  Result := FUltRea;
end;

procedure T160CTR.SetUltRea(const pUltRea: TDate);
begin
  FUltRea := pUltRea;

  CheckField('UltRea');
end;

function T160CTR.GetPrdRea: Integer;
begin
  Result := FPrdRea;
end;

procedure T160CTR.SetPrdRea(const pPrdRea: Integer);
begin
  FPrdRea := pPrdRea;

  CheckField('PrdRea');
end;

function T160CTR.GetPerRea: Double;
begin
  Result := FPerRea;
end;

procedure T160CTR.SetPerRea(const pPerRea: Double);
begin
  FPerRea := pPerRea;

  CheckField('PerRea');
end;

function T160CTR.GetCodReg: Integer;
begin
  Result := FCodReg;
end;

procedure T160CTR.SetCodReg(const pCodReg: Integer);
begin
  FCodReg := pCodReg;

  CheckField('CodReg');
end;

function T160CTR.GetSitCtr: Char;
begin
  Result := FSitCtr;
end;

procedure T160CTR.SetSitCtr(const pSitCtr: Char);
begin
  FSitCtr := pSitCtr;

  CheckField('SitCtr');
end;

function T160CTR.GetCodMot: Integer;
begin
  Result := FCodMot;
end;

procedure T160CTR.SetCodMot(const pCodMot: Integer);
begin
  FCodMot := pCodMot;

  CheckField('CodMot');
end;

function T160CTR.GetObsMot: string;
begin
  Result := FObsMot;
end;

procedure T160CTR.SetObsMot(const pObsMot: string);
begin
  FObsMot := pObsMot;

  CheckField('ObsMot');
end;

function T160CTR.GetDiaFix: Integer;
begin
  Result := FDiaFix;
end;

procedure T160CTR.SetDiaFix(const pDiaFix: Integer);
begin
  FDiaFix := pDiaFix;

  CheckField('DiaFix');
end;

function T160CTR.GetCodTra: Integer;
begin
  Result := FCodTra;
end;

procedure T160CTR.SetCodTra(const pCodTra: Integer);
begin
  FCodTra := pCodTra;

  CheckField('CodTra');
end;

function T160CTR.GetCodMs1: Integer;
begin
  Result := FCodMs1;
end;

procedure T160CTR.SetCodMs1(const pCodMs1: Integer);
begin
  FCodMs1 := pCodMs1;

  CheckField('CodMs1');
end;

function T160CTR.GetCodMs2: Integer;
begin
  Result := FCodMs2;
end;

procedure T160CTR.SetCodMs2(const pCodMs2: Integer);
begin
  FCodMs2 := pCodMs2;

  CheckField('CodMs2');
end;

function T160CTR.GetCodMs3: Integer;
begin
  Result := FCodMs3;
end;

procedure T160CTR.SetCodMs3(const pCodMs3: Integer);
begin
  FCodMs3 := pCodMs3;

  CheckField('CodMs3');
end;

function T160CTR.GetCodMs4: Integer;
begin
  Result := FCodMs4;
end;

procedure T160CTR.SetCodMs4(const pCodMs4: Integer);
begin
  FCodMs4 := pCodMs4;

  CheckField('CodMs4');
end;

function T160CTR.GetObsCtr: string;
begin
  Result := FObsCtr;
end;

procedure T160CTR.SetObsCtr(const pObsCtr: string);
begin
  FObsCtr := pObsCtr;

  CheckField('ObsCtr');
end;

function T160CTR.GetDiaRep: Integer;
begin
  Result := FDiaRep;
end;

procedure T160CTR.SetDiaRep(const pDiaRep: Integer);
begin
  FDiaRep := pDiaRep;

  CheckField('DiaRep');
end;

function T160CTR.GetIniRep: TDate;
begin
  Result := FIniRep;
end;

procedure T160CTR.SetIniRep(const pIniRep: TDate);
begin
  FIniRep := pIniRep;

  CheckField('IniRep');
end;

function T160CTR.GetFimRep: TDate;
begin
  Result := FFimRep;
end;

procedure T160CTR.SetFimRep(const pFimRep: TDate);
begin
  FFimRep := pFimRep;

  CheckField('FimRep');
end;

function T160CTR.GetUltCpt: TDate;
begin
  Result := FUltCpt;
end;

procedure T160CTR.SetUltCpt(const pUltCpt: TDate);
begin
  FUltCpt := pUltCpt;

  CheckField('UltCpt');
end;

function T160CTR.GetAgpDsc: Char;
begin
  Result := FAgpDsc;
end;

procedure T160CTR.SetAgpDsc(const pAgpDsc: Char);
begin
  FAgpDsc := pAgpDsc;

  CheckField('AgpDsc');
end;

function T160CTR.GetCodCrp: string;
begin
  Result := FCodCrp;
end;

procedure T160CTR.SetCodCrp(const pCodCrp: string);
begin
  FCodCrp := pCodCrp;

  CheckField('CodCrp');
end;

function T160CTR.GetCodFcr: string;
begin
  Result := FCodFcr;
end;

procedure T160CTR.SetCodFcr(const pCodFcr: string);
begin
  FCodFcr := pCodFcr;

  CheckField('CodFcr');
end;

function T160CTR.GetDatFcr: TDate;
begin
  Result := FDatFcr;
end;

procedure T160CTR.SetDatFcr(const pDatFcr: TDate);
begin
  FDatFcr := pDatFcr;

  CheckField('DatFcr');
end;

function T160CTR.GetPerFat: Double;
begin
  Result := FPerFat;
end;

procedure T160CTR.SetPerFat(const pPerFat: Double);
begin
  FPerFat := pPerFat;

  CheckField('PerFat');
end;

function T160CTR.GetIniRea: TDate;
begin
  Result := FIniRea;
end;

procedure T160CTR.SetIniRea(const pIniRea: TDate);
begin
  FIniRea := pIniRea;

  CheckField('IniRea');
end;

function T160CTR.GetCodTpr: string;
begin
  Result := FCodTpr;
end;

procedure T160CTR.SetCodTpr(const pCodTpr: string);
begin
  FCodTpr := pCodTpr;

  CheckField('CodTpr');
end;

function T160CTR.GetSeqEnt: Integer;
begin
  Result := FSeqEnt;
end;

procedure T160CTR.SetSeqEnt(const pSeqEnt: Integer);
begin
  FSeqEnt := pSeqEnt;

  CheckField('SeqEnt');
end;

function T160CTR.GetSeqCob: Integer;
begin
  Result := FSeqCob;
end;

procedure T160CTR.SetSeqCob(const pSeqCob: Integer);
begin
  FSeqCob := pSeqCob;

  CheckField('SeqCob');
end;

function T160CTR.GetIniVig: TDate;
begin
  Result := FIniVig;
end;

procedure T160CTR.SetIniVig(const pIniVig: TDate);
begin
  FIniVig := pIniVig;

  CheckField('IniVig');
end;

function T160CTR.GetFimVig: TDate;
begin
  Result := FFimVig;
end;

procedure T160CTR.SetFimVig(const pFimVig: TDate);
begin
  FFimVig := pFimVig;

  CheckField('FimVig');
end;

function T160CTR.GetCriFtc: Integer;
begin
  Result := FCriFtc;
end;

procedure T160CTR.SetCriFtc(const pCriFtc: Integer);
begin
  FCriFtc := pCriFtc;

  CheckField('CriFtc');
end;

function T160CTR.GetCriPrt: Integer;
begin
  Result := FCriPrt;
end;

procedure T160CTR.SetCriPrt(const pCriPrt: Integer);
begin
  FCriPrt := pCriPrt;

  CheckField('CriPrt');
end;

function T160CTR.GetDatFim: TDate;
begin
  Result := FDatFim;
end;

procedure T160CTR.SetDatFim(const pDatFim: TDate);
begin
  FDatFim := pDatFim;

  CheckField('DatFim');
end;

function T160CTR.GetIniCom: TDate;
begin
  Result := FIniCom;
end;

procedure T160CTR.SetIniCom(const pIniCom: TDate);
begin
  FIniCom := pIniCom;

  CheckField('IniCom');
end;

function T160CTR.GetFimCom: TDate;
begin
  Result := FFimCom;
end;

procedure T160CTR.SetFimCom(const pFimCom: TDate);
begin
  FFimCom := pFimCom;

  CheckField('FimCom');
end;

function T160CTR.GetUsuGer: Integer;
begin
  Result := FUsuGer;
end;

procedure T160CTR.SetUsuGer(const pUsuGer: Integer);
begin
  FUsuGer := pUsuGer;

  CheckField('UsuGer');
end;

function T160CTR.GetDatGer: TDate;
begin
  Result := FDatGer;
end;

procedure T160CTR.SetDatGer(const pDatGer: TDate);
begin
  FDatGer := pDatGer;

  CheckField('DatGer');
end;

function T160CTR.GetHorGer: Integer;
begin
  Result := FHorGer;
end;

procedure T160CTR.SetHorGer(const pHorGer: Integer);
begin
  FHorGer := pHorGer;

  CheckField('HorGer');
end;

function T160CTR.GetCodFpg: Integer;
begin
  Result := FCodFpg;
end;

procedure T160CTR.SetCodFpg(const pCodFpg: Integer);
begin
  FCodFpg := pCodFpg;

  CheckField('CodFpg');
end;

function T160CTR.GetUltRre: TDate;
begin
  Result := FUltRre;
end;

procedure T160CTR.SetUltRre(const pUltRre: TDate);
begin
  FUltRre := pUltRre;

  CheckField('UltRre');
end;

function T160CTR.GetPerRre: Double;
begin
  Result := FPerRre;
end;

procedure T160CTR.SetPerRre(const pPerRre: Double);
begin
  FPerRre := pPerRre;

  CheckField('PerRre');
end;

function T160CTR.GetPrdRre: Integer;
begin
  Result := FPrdRre;
end;

procedure T160CTR.SetPrdRre(const pPrdRre: Integer);
begin
  FPrdRre := pPrdRre;

  CheckField('PrdRre');
end;

function T160CTR.GetIniRre: TDate;
begin
  Result := FIniRre;
end;

procedure T160CTR.SetIniRre(const pIniRre: TDate);
begin
  FIniRre := pIniRre;

  CheckField('IniRre');
end;

function T160CTR.GetUltRpa: TDate;
begin
  Result := FUltRpa;
end;

procedure T160CTR.SetUltRpa(const pUltRpa: TDate);
begin
  FUltRpa := pUltRpa;

  CheckField('UltRpa');
end;

function T160CTR.GetPerRpa: Double;
begin
  Result := FPerRpa;
end;

procedure T160CTR.SetPerRpa(const pPerRpa: Double);
begin
  FPerRpa := pPerRpa;

  CheckField('PerRpa');
end;

function T160CTR.GetPrdRpa: Integer;
begin
  Result := FPrdRpa;
end;

procedure T160CTR.SetPrdRpa(const pPrdRpa: Integer);
begin
  FPrdRpa := pPrdRpa;

  CheckField('PrdRpa');
end;

function T160CTR.GetIniRpa: TDate;
begin
  Result := FIniRpa;
end;

procedure T160CTR.SetIniRpa(const pIniRpa: TDate);
begin
  FIniRpa := pIniRpa;

  CheckField('IniRpa');
end;

function T160CTR.GetIndPad: Char;
begin
  Result := FIndPad;
end;

procedure T160CTR.SetIndPad(const pIndPad: Char);
begin
  FIndPad := pIndPad;

  CheckField('IndPad');
end;

function T160CTR.GetTipDip: Integer;
begin
  Result := FTipDip;
end;

procedure T160CTR.SetTipDip(const pTipDip: Integer);
begin
  FTipDip := pTipDip;

  CheckField('TipDip');
end;

function T160CTR.GetTipAce: Integer;
begin
  Result := FTipAce;
end;

procedure T160CTR.SetTipAce(const pTipAce: Integer);
begin
  FTipAce := pTipAce;

  CheckField('TipAce');
end;

function T160CTR.GetIndEmp: Char;
begin
  Result := FIndEmp;
end;

procedure T160CTR.SetIndEmp(const pIndEmp: Char);
begin
  FIndEmp := pIndEmp;

  CheckField('IndEmp');
end;

function T160CTR.GetDscNeg: Double;
begin
  Result := FDscNeg;
end;

procedure T160CTR.SetDscNeg(const pDscNeg: Double);
begin
  FDscNeg := pDscNeg;

  CheckField('DscNeg');
end;

function T160CTR.GetTipCgp: Integer;
begin
  Result := FTipCgp;
end;

procedure T160CTR.SetTipCgp(const pTipCgp: Integer);
begin
  FTipCgp := pTipCgp;

  CheckField('TipCgp');
end;

function T160CTR.GetTipAve: Integer;
begin
  Result := FTipAve;
end;

procedure T160CTR.SetTipAve(const pTipAve: Integer);
begin
  FTipAve := pTipAve;

  CheckField('TipAve');
end;

function T160CTR.GetRotAnx: Integer;
begin
  Result := FRotAnx;
end;

procedure T160CTR.SetRotAnx(const pRotAnx: Integer);
begin
  FRotAnx := pRotAnx;

  CheckField('RotAnx');
end;

function T160CTR.GetNumAnx: Integer;
begin
  Result := FNumAnx;
end;

procedure T160CTR.SetNumAnx(const pNumAnx: Integer);
begin
  FNumAnx := pNumAnx;

  CheckField('NumAnx');
end;

function T160CTR.GetProReq: Integer;
begin
  Result := FProReq;
end;

procedure T160CTR.SetProReq(const pProReq: Integer);
begin
  FProReq := pProReq;

  CheckField('ProReq');
end;

function T160CTR.GetDatUre: TDate;
begin
  Result := FDatUre;
end;

procedure T160CTR.SetDatUre(const pDatUre: TDate);
begin
  FDatUre := pDatUre;

  CheckField('DatUre');
end;

function T160CTR.GetCtrRea: Char;
begin
  Result := FCtrRea;
end;

procedure T160CTR.SetCtrRea(const pCtrRea: Char);
begin
  FCtrRea := pCtrRea;

  CheckField('CtrRea');
end;

function T160CTR.GetCtrIft: Char;
begin
  Result := FCtrIft;
end;

procedure T160CTR.SetCtrIft(const pCtrIft: Char);
begin
  FCtrIft := pCtrIft;

  CheckField('CtrIft');
end;

function T160CTR.GetTemAva: Char;
begin
  Result := FTemAva;
end;

procedure T160CTR.SetTemAva(const pTemAva: Char);
begin
  FTemAva := pTemAva;

  CheckField('TemAva');
end;

function T160CTR.GetVarSer: Char;
begin
  Result := FVarSer;
end;

procedure T160CTR.SetVarSer(const pVarSer: Char);
begin
  FVarSer := pVarSer;

  CheckField('VarSer');
end;

function T160CTR.GetCodSeg: Integer;
begin
  Result := FCodSeg;
end;

procedure T160CTR.SetCodSeg(const pCodSeg: Integer);
begin
  FCodSeg := pCodSeg;

  CheckField('CodSeg');
end;

function T160CTR.GetCodBan: string;
begin
  Result := FCodBan;
end;

procedure T160CTR.SetCodBan(const pCodBan: string);
begin
  FCodBan := pCodBan;

  CheckField('CodBan');
end;

function T160CTR.GetQtdRev: Double;
begin
  Result := FQtdRev;
end;

procedure T160CTR.SetQtdRev(const pQtdRev: Double);
begin
  FQtdRev := pQtdRev;

  CheckField('QtdRev');
end;

function T160CTR.GetQtdRef: Double;
begin
  Result := FQtdRef;
end;

procedure T160CTR.SetQtdRef(const pQtdRef: Double);
begin
  FQtdRef := pQtdRef;

  CheckField('QtdRef');
end;

function T160CTR.GetDocEnv: Char;
begin
  Result := FDocEnv;
end;

procedure T160CTR.SetDocEnv(const pDocEnv: Char);
begin
  FDocEnv := pDocEnv;

  CheckField('DocEnv');
end;

function T160CTR.GetEmpCto: Integer;
begin
  Result := FEmpCto;
end;

procedure T160CTR.SetEmpCto(const pEmpCto: Integer);
begin
  FEmpCto := pEmpCto;

  CheckField('EmpCto');
end;

function T160CTR.GetCodPco: Integer;
begin
  Result := FCodPco;
end;

procedure T160CTR.SetCodPco(const pCodPco: Integer);
begin
  FCodPco := pCodPco;

  CheckField('CodPco');
end;

function T160CTR.GetFilCto: Integer;
begin
  Result := FFilCto;
end;

procedure T160CTR.SetFilCto(const pFilCto: Integer);
begin
  FFilCto := pFilCto;

  CheckField('FilCto');
end;

function T160CTR.GetCptPco: TDate;
begin
  Result := FCptPco;
end;

procedure T160CTR.SetCptPco(const pCptPco: TDate);
begin
  FCptPco := pCptPco;

  CheckField('CptPco');
end;

function T160CTR.GetUSU_VenCtr: Char;
begin
  Result := FUSU_VenCtr;
end;

procedure T160CTR.SetUSU_VenCtr(const pUSU_VenCtr: Char);
begin
  FUSU_VenCtr := pUSU_VenCtr;

  CheckField('USU_VenCtr');
end;

function T160CTR.GetUSU_CodGre: Integer;
begin
  Result := FUSU_CodGre;
end;

procedure T160CTR.SetUSU_CodGre(const pUSU_CodGre: Integer);
begin
  FUSU_CodGre := pUSU_CodGre;

  CheckField('USU_CodGre');
end;

function T160CTR.GetUSU_TipFre: Char;
begin
  Result := FUSU_TipFre;
end;

procedure T160CTR.SetUSU_TipFre(const pUSU_TipFre: Char);
begin
  FUSU_TipFre := pUSU_TipFre;

  CheckField('USU_TipFre');
end;

function T160CTR.GetUSU_ComSob: Char;
begin
  Result := FUSU_ComSob;
end;

procedure T160CTR.SetUSU_ComSob(const pUSU_ComSob: Char);
begin
  FUSU_ComSob := pUSU_ComSob;

  CheckField('USU_ComSob');
end;

function T160CTR.GetUSU_UsuRes: Integer;
begin
  Result := FUSU_UsuRes;
end;

procedure T160CTR.SetUSU_UsuRes(const pUSU_UsuRes: Integer);
begin
  FUSU_UsuRes := pUSU_UsuRes;

  CheckField('USU_UsuRes');
end;

function T160CTR.GetUSU_SeqCto: Integer;
begin
  Result := FUSU_SeqCto;
end;

procedure T160CTR.SetUSU_SeqCto(const pUSU_SeqCto: Integer);
begin
  FUSU_SeqCto := pUSU_SeqCto;

  CheckField('USU_SeqCto');
end;

function T160CTR.GetUSU_UsuAlt: Integer;
begin
  Result := FUSU_UsuAlt;
end;

procedure T160CTR.SetUSU_UsuAlt(const pUSU_UsuAlt: Integer);
begin
  FUSU_UsuAlt := pUSU_UsuAlt;

  CheckField('USU_UsuAlt');
end;

function T160CTR.GetUSU_DatAlt: TDate;
begin
  Result := FUSU_DatAlt;
end;

procedure T160CTR.SetUSU_DatAlt(const pUSU_DatAlt: TDate);
begin
  FUSU_DatAlt := pUSU_DatAlt;

  CheckField('USU_DatAlt');
end;

function T160CTR.GetUSU_HorAlt: Integer;
begin
  Result := FUSU_HorAlt;
end;

procedure T160CTR.SetUSU_HorAlt(const pUSU_HorAlt: Integer);
begin
  FUSU_HorAlt := pUSU_HorAlt;

  CheckField('USU_HorAlt');
end;

function T160CTR.GetUSU_IndRea: Double;
begin
  Result := FUSU_IndRea;
end;

procedure T160CTR.SetUSU_IndRea(const pUSU_IndRea: Double);
begin
  FUSU_IndRea := pUSU_IndRea;

  CheckField('USU_IndRea');
end;

function T160CTR.GetUSU_DiaAviTer: Integer;
begin
  Result := FUSU_DiaAviTer;
end;

procedure T160CTR.SetUSU_DiaAviTer(const pUSU_DiaAviTer: Integer);
begin
  FUSU_DiaAviTer := pUSU_DiaAviTer;

  CheckField('USU_DiaAviTer');
end;

function T160CTR.GetUSU_IQFPerMul: Double;
begin
  Result := FUSU_IQFPerMul;
end;

procedure T160CTR.SetUSU_IQFPerMul(const pUSU_IQFPerMul: Double);
begin
  FUSU_IQFPerMul := pUSU_IQFPerMul;

  CheckField('USU_IQFPerMul');
end;

function T160CTR.GetUSU_IQFVlrMul: Double;
begin
  Result := FUSU_IQFVlrMul;
end;

procedure T160CTR.SetUSU_IQFVlrMul(const pUSU_IQFVlrMul: Double);
begin
  FUSU_IQFVlrMul := pUSU_IQFVlrMul;

  CheckField('USU_IQFVlrMul');
end;

function T160CTR.GetUSU_OcoMul: Integer;
begin
  Result := FUSU_OcoMul;
end;

procedure T160CTR.SetUSU_OcoMul(const pUSU_OcoMul: Integer);
begin
  FUSU_OcoMul := pUSU_OcoMul;

  CheckField('USU_OcoMul');
end;

function T160CTR.GetUSU_TipOco: Char;
begin
  Result := FUSU_TipOco;
end;

procedure T160CTR.SetUSU_TipOco(const pUSU_TipOco: Char);
begin
  FUSU_TipOco := pUSU_TipOco;

  CheckField('USU_TipOco');
end;

function T160CTR.GetUSU_IndPad: Double;
begin
  Result := FUSU_IndPad;
end;

procedure T160CTR.SetUSU_IndPad(const pUSU_IndPad: Double);
begin
  FUSU_IndPad := pUSU_IndPad;

  CheckField('USU_IndPad');
end;

function T160CTR.GetUSU_DiaIQF: Integer;
begin
  Result := FUSU_DiaIQF;
end;

procedure T160CTR.SetUSU_DiaIQF(const pUSU_DiaIQF: Integer);
begin
  FUSU_DiaIQF := pUSU_DiaIQF;

  CheckField('USU_DiaIQF');
end;

function T160CTR.GetUSU_Dia2IQF: Integer;
begin
  Result := FUSU_Dia2IQF;
end;

procedure T160CTR.SetUSU_Dia2IQF(const pUSU_Dia2IQF: Integer);
begin
  FUSU_Dia2IQF := pUSU_Dia2IQF;

  CheckField('USU_Dia2IQF');
end;

function T160CTR.GetCodEmpOLD: Integer;
begin
  Result := FCodEmpOLD;
end;

procedure T160CTR.SetCodEmpOLD(const pCodEmp: Integer);
begin
  FCodEmpOLD := pCodEmp;
end;

function T160CTR.GetCodFilOLD: Integer;
begin
  Result := FCodFilOLD;
end;

procedure T160CTR.SetCodFilOLD(const pCodFil: Integer);
begin
  FCodFilOLD := pCodFil;
end;

function T160CTR.GetNumCtrOLD: Integer;
begin
  Result := FNumCtrOLD;
end;

procedure T160CTR.SetNumCtrOLD(const pNumCtr: Integer);
begin
  FNumCtrOLD := pNumCtr;
end;

function T160CTR.GetTipCtrOLD: Integer;
begin
  Result := FTipCtrOLD;
end;

procedure T160CTR.SetTipCtrOLD(const pTipCtr: Integer);
begin
  FTipCtrOLD := pTipCtr;
end;

function T160CTR.GetNumOfiOLD: string;
begin
  Result := FNumOfiOLD;
end;

procedure T160CTR.SetNumOfiOLD(const pNumOfi: string);
begin
  FNumOfiOLD := pNumOfi;
end;

function T160CTR.GetObjCtrOLD: string;
begin
  Result := FObjCtrOLD;
end;

procedure T160CTR.SetObjCtrOLD(const pObjCtr: string);
begin
  FObjCtrOLD := pObjCtr;
end;

function T160CTR.GetTnsProOLD: string;
begin
  Result := FTnsProOLD;
end;

procedure T160CTR.SetTnsProOLD(const pTnsPro: string);
begin
  FTnsProOLD := pTnsPro;
end;

function T160CTR.GetTnsSerOLD: string;
begin
  Result := FTnsSerOLD;
end;

procedure T160CTR.SetTnsSerOLD(const pTnsSer: string);
begin
  FTnsSerOLD := pTnsSer;
end;

function T160CTR.GetCrtOriOLD: Integer;
begin
  Result := FCrtOriOLD;
end;

procedure T160CTR.SetCrtOriOLD(const pCrtOri: Integer);
begin
  FCrtOriOLD := pCrtOri;
end;

function T160CTR.GetDatEmiOLD: TDate;
begin
  Result := FDatEmiOLD;
end;

procedure T160CTR.SetDatEmiOLD(const pDatEmi: TDate);
begin
  FDatEmiOLD := pDatEmi;
end;

function T160CTR.GetDatEntOLD: TDate;
begin
  Result := FDatEntOLD;
end;

procedure T160CTR.SetDatEntOLD(const pDatEnt: TDate);
begin
  FDatEntOLD := pDatEnt;
end;

function T160CTR.GetCodCliOLD: Integer;
begin
  Result := FCodCliOLD;
end;

procedure T160CTR.SetCodCliOLD(const pCodCli: Integer);
begin
  FCodCliOLD := pCodCli;
end;

function T160CTR.GetCliFatOLD: Integer;
begin
  Result := FCliFatOLD;
end;

procedure T160CTR.SetCliFatOLD(const pCliFat: Integer);
begin
  FCliFatOLD := pCliFat;
end;

function T160CTR.GetCodRepOLD: Integer;
begin
  Result := FCodRepOLD;
end;

procedure T160CTR.SetCodRepOLD(const pCodRep: Integer);
begin
  FCodRepOLD := pCodRep;
end;

function T160CTR.GetCodMoeOLD: string;
begin
  Result := FCodMoeOLD;
end;

procedure T160CTR.SetCodMoeOLD(const pCodMoe: string);
begin
  FCodMoeOLD := pCodMoe;
end;

function T160CTR.GetCodFrjOLD: string;
begin
  Result := FCodFrjOLD;
end;

procedure T160CTR.SetCodFrjOLD(const pCodFrj: string);
begin
  FCodFrjOLD := pCodFrj;
end;

function T160CTR.GetQtdParOLD: Integer;
begin
  Result := FQtdParOLD;
end;

procedure T160CTR.SetQtdParOLD(const pQtdPar: Integer);
begin
  FQtdParOLD := pQtdPar;
end;

function T160CTR.GetDiaParOLD: Integer;
begin
  Result := FDiaParOLD;
end;

procedure T160CTR.SetDiaParOLD(const pDiaPar: Integer);
begin
  FDiaParOLD := pDiaPar;
end;

function T160CTR.GetProParOLD: Integer;
begin
  Result := FProParOLD;
end;

procedure T160CTR.SetProParOLD(const pProPar: Integer);
begin
  FProParOLD := pProPar;
end;

function T160CTR.GetDatIniOLD: TDate;
begin
  Result := FDatIniOLD;
end;

procedure T160CTR.SetDatIniOLD(const pDatIni: TDate);
begin
  FDatIniOLD := pDatIni;
end;

function T160CTR.GetDiaBasOLD: Integer;
begin
  Result := FDiaBasOLD;
end;

procedure T160CTR.SetDiaBasOLD(const pDiaBas: Integer);
begin
  FDiaBasOLD := pDiaBas;
end;

function T160CTR.GetDatUftOLD: TDate;
begin
  Result := FDatUftOLD;
end;

procedure T160CTR.SetDatUftOLD(const pDatUft: TDate);
begin
  FDatUftOLD := pDatUft;
end;

function T160CTR.GetFilNfvOLD: Integer;
begin
  Result := FFilNfvOLD;
end;

procedure T160CTR.SetFilNfvOLD(const pFilNfv: Integer);
begin
  FFilNfvOLD := pFilNfv;
end;

function T160CTR.GetCodSnfOLD: string;
begin
  Result := FCodSnfOLD;
end;

procedure T160CTR.SetCodSnfOLD(const pCodSnf: string);
begin
  FCodSnfOLD := pCodSnf;
end;

function T160CTR.GetNumNfvOLD: Integer;
begin
  Result := FNumNfvOLD;
end;

procedure T160CTR.SetNumNfvOLD(const pNumNfv: Integer);
begin
  FNumNfvOLD := pNumNfv;
end;

function T160CTR.GetCodCpgOLD: string;
begin
  Result := FCodCpgOLD;
end;

procedure T160CTR.SetCodCpgOLD(const pCodCpg: string);
begin
  FCodCpgOLD := pCodCpg;
end;

function T160CTR.GetUsaJmcOLD: Char;
begin
  Result := FUsaJmcOLD;
end;

procedure T160CTR.SetUsaJmcOLD(const pUsaJmc: Char);
begin
  FUsaJmcOLD := pUsaJmc;
end;

function T160CTR.GetPerJrsOLD: Double;
begin
  Result := FPerJrsOLD;
end;

procedure T160CTR.SetPerJrsOLD(const pPerJrs: Double);
begin
  FPerJrsOLD := pPerJrs;
end;

function T160CTR.GetTolJrsOLD: Integer;
begin
  Result := FTolJrsOLD;
end;

procedure T160CTR.SetTolJrsOLD(const pTolJrs: Integer);
begin
  FTolJrsOLD := pTolJrs;
end;

function T160CTR.GetTipJrsOLD: Char;
begin
  Result := FTipJrsOLD;
end;

procedure T160CTR.SetTipJrsOLD(const pTipJrs: Char);
begin
  FTipJrsOLD := pTipJrs;
end;

function T160CTR.GetPerMulOLD: Double;
begin
  Result := FPerMulOLD;
end;

procedure T160CTR.SetPerMulOLD(const pPerMul: Double);
begin
  FPerMulOLD := pPerMul;
end;

function T160CTR.GetTolMulOLD: Integer;
begin
  Result := FTolMulOLD;
end;

procedure T160CTR.SetTolMulOLD(const pTolMul: Integer);
begin
  FTolMulOLD := pTolMul;
end;

function T160CTR.GetVlrTotOLD: Double;
begin
  Result := FVlrTotOLD;
end;

procedure T160CTR.SetVlrTotOLD(const pVlrTot: Double);
begin
  FVlrTotOLD := pVlrTot;
end;

function T160CTR.GetTnsTitOLD: string;
begin
  Result := FTnsTitOLD;
end;

procedure T160CTR.SetTnsTitOLD(const pTnsTit: string);
begin
  FTnsTitOLD := pTnsTit;
end;

function T160CTR.GetFilTcrOLD: Integer;
begin
  Result := FFilTcrOLD;
end;

procedure T160CTR.SetFilTcrOLD(const pFilTcr: Integer);
begin
  FFilTcrOLD := pFilTcr;
end;

function T160CTR.GetCodTptOLD: string;
begin
  Result := FCodTptOLD;
end;

procedure T160CTR.SetCodTptOLD(const pCodTpt: string);
begin
  FCodTptOLD := pCodTpt;
end;

function T160CTR.GetNumTitOLD: Integer;
begin
  Result := FNumTitOLD;
end;

procedure T160CTR.SetNumTitOLD(const pNumTit: Integer);
begin
  FNumTitOLD := pNumTit;
end;

function T160CTR.GetOriTitOLD: string;
begin
  Result := FOriTitOLD;
end;

procedure T160CTR.SetOriTitOLD(const pOriTit: string);
begin
  FOriTitOLD := pOriTit;
end;

function T160CTR.GetUltReaOLD: TDate;
begin
  Result := FUltReaOLD;
end;

procedure T160CTR.SetUltReaOLD(const pUltRea: TDate);
begin
  FUltReaOLD := pUltRea;
end;

function T160CTR.GetPrdReaOLD: Integer;
begin
  Result := FPrdReaOLD;
end;

procedure T160CTR.SetPrdReaOLD(const pPrdRea: Integer);
begin
  FPrdReaOLD := pPrdRea;
end;

function T160CTR.GetPerReaOLD: Double;
begin
  Result := FPerReaOLD;
end;

procedure T160CTR.SetPerReaOLD(const pPerRea: Double);
begin
  FPerReaOLD := pPerRea;
end;

function T160CTR.GetCodRegOLD: Integer;
begin
  Result := FCodRegOLD;
end;

procedure T160CTR.SetCodRegOLD(const pCodReg: Integer);
begin
  FCodRegOLD := pCodReg;
end;

function T160CTR.GetSitCtrOLD: Char;
begin
  Result := FSitCtrOLD;
end;

procedure T160CTR.SetSitCtrOLD(const pSitCtr: Char);
begin
  FSitCtrOLD := pSitCtr;
end;

function T160CTR.GetCodMotOLD: Integer;
begin
  Result := FCodMotOLD;
end;

procedure T160CTR.SetCodMotOLD(const pCodMot: Integer);
begin
  FCodMotOLD := pCodMot;
end;

function T160CTR.GetObsMotOLD: string;
begin
  Result := FObsMotOLD;
end;

procedure T160CTR.SetObsMotOLD(const pObsMot: string);
begin
  FObsMotOLD := pObsMot;
end;

function T160CTR.GetDiaFixOLD: Integer;
begin
  Result := FDiaFixOLD;
end;

procedure T160CTR.SetDiaFixOLD(const pDiaFix: Integer);
begin
  FDiaFixOLD := pDiaFix;
end;

function T160CTR.GetCodTraOLD: Integer;
begin
  Result := FCodTraOLD;
end;

procedure T160CTR.SetCodTraOLD(const pCodTra: Integer);
begin
  FCodTraOLD := pCodTra;
end;

function T160CTR.GetCodMs1OLD: Integer;
begin
  Result := FCodMs1OLD;
end;

procedure T160CTR.SetCodMs1OLD(const pCodMs1: Integer);
begin
  FCodMs1OLD := pCodMs1;
end;

function T160CTR.GetCodMs2OLD: Integer;
begin
  Result := FCodMs2OLD;
end;

procedure T160CTR.SetCodMs2OLD(const pCodMs2: Integer);
begin
  FCodMs2OLD := pCodMs2;
end;

function T160CTR.GetCodMs3OLD: Integer;
begin
  Result := FCodMs3OLD;
end;

procedure T160CTR.SetCodMs3OLD(const pCodMs3: Integer);
begin
  FCodMs3OLD := pCodMs3;
end;

function T160CTR.GetCodMs4OLD: Integer;
begin
  Result := FCodMs4OLD;
end;

procedure T160CTR.SetCodMs4OLD(const pCodMs4: Integer);
begin
  FCodMs4OLD := pCodMs4;
end;

function T160CTR.GetObsCtrOLD: string;
begin
  Result := FObsCtrOLD;
end;

procedure T160CTR.SetObsCtrOLD(const pObsCtr: string);
begin
  FObsCtrOLD := pObsCtr;
end;

function T160CTR.GetDiaRepOLD: Integer;
begin
  Result := FDiaRepOLD;
end;

procedure T160CTR.SetDiaRepOLD(const pDiaRep: Integer);
begin
  FDiaRepOLD := pDiaRep;
end;

function T160CTR.GetIniRepOLD: TDate;
begin
  Result := FIniRepOLD;
end;

procedure T160CTR.SetIniRepOLD(const pIniRep: TDate);
begin
  FIniRepOLD := pIniRep;
end;

function T160CTR.GetFimRepOLD: TDate;
begin
  Result := FFimRepOLD;
end;

procedure T160CTR.SetFimRepOLD(const pFimRep: TDate);
begin
  FFimRepOLD := pFimRep;
end;

function T160CTR.GetUltCptOLD: TDate;
begin
  Result := FUltCptOLD;
end;

procedure T160CTR.SetUltCptOLD(const pUltCpt: TDate);
begin
  FUltCptOLD := pUltCpt;
end;

function T160CTR.GetAgpDscOLD: Char;
begin
  Result := FAgpDscOLD;
end;

procedure T160CTR.SetAgpDscOLD(const pAgpDsc: Char);
begin
  FAgpDscOLD := pAgpDsc;
end;

function T160CTR.GetCodCrpOLD: string;
begin
  Result := FCodCrpOLD;
end;

procedure T160CTR.SetCodCrpOLD(const pCodCrp: string);
begin
  FCodCrpOLD := pCodCrp;
end;

function T160CTR.GetCodFcrOLD: string;
begin
  Result := FCodFcrOLD;
end;

procedure T160CTR.SetCodFcrOLD(const pCodFcr: string);
begin
  FCodFcrOLD := pCodFcr;
end;

function T160CTR.GetDatFcrOLD: TDate;
begin
  Result := FDatFcrOLD;
end;

procedure T160CTR.SetDatFcrOLD(const pDatFcr: TDate);
begin
  FDatFcrOLD := pDatFcr;
end;

function T160CTR.GetPerFatOLD: Double;
begin
  Result := FPerFatOLD;
end;

procedure T160CTR.SetPerFatOLD(const pPerFat: Double);
begin
  FPerFatOLD := pPerFat;
end;

function T160CTR.GetIniReaOLD: TDate;
begin
  Result := FIniReaOLD;
end;

procedure T160CTR.SetIniReaOLD(const pIniRea: TDate);
begin
  FIniReaOLD := pIniRea;
end;

function T160CTR.GetCodTprOLD: string;
begin
  Result := FCodTprOLD;
end;

procedure T160CTR.SetCodTprOLD(const pCodTpr: string);
begin
  FCodTprOLD := pCodTpr;
end;

function T160CTR.GetSeqEntOLD: Integer;
begin
  Result := FSeqEntOLD;
end;

procedure T160CTR.SetSeqEntOLD(const pSeqEnt: Integer);
begin
  FSeqEntOLD := pSeqEnt;
end;

function T160CTR.GetSeqCobOLD: Integer;
begin
  Result := FSeqCobOLD;
end;

procedure T160CTR.SetSeqCobOLD(const pSeqCob: Integer);
begin
  FSeqCobOLD := pSeqCob;
end;

function T160CTR.GetIniVigOLD: TDate;
begin
  Result := FIniVigOLD;
end;

procedure T160CTR.SetIniVigOLD(const pIniVig: TDate);
begin
  FIniVigOLD := pIniVig;
end;

function T160CTR.GetFimVigOLD: TDate;
begin
  Result := FFimVigOLD;
end;

procedure T160CTR.SetFimVigOLD(const pFimVig: TDate);
begin
  FFimVigOLD := pFimVig;
end;

function T160CTR.GetCriFtcOLD: Integer;
begin
  Result := FCriFtcOLD;
end;

procedure T160CTR.SetCriFtcOLD(const pCriFtc: Integer);
begin
  FCriFtcOLD := pCriFtc;
end;

function T160CTR.GetCriPrtOLD: Integer;
begin
  Result := FCriPrtOLD;
end;

procedure T160CTR.SetCriPrtOLD(const pCriPrt: Integer);
begin
  FCriPrtOLD := pCriPrt;
end;

function T160CTR.GetDatFimOLD: TDate;
begin
  Result := FDatFimOLD;
end;

procedure T160CTR.SetDatFimOLD(const pDatFim: TDate);
begin
  FDatFimOLD := pDatFim;
end;

function T160CTR.GetIniComOLD: TDate;
begin
  Result := FIniComOLD;
end;

procedure T160CTR.SetIniComOLD(const pIniCom: TDate);
begin
  FIniComOLD := pIniCom;
end;

function T160CTR.GetFimComOLD: TDate;
begin
  Result := FFimComOLD;
end;

procedure T160CTR.SetFimComOLD(const pFimCom: TDate);
begin
  FFimComOLD := pFimCom;
end;

function T160CTR.GetUsuGerOLD: Integer;
begin
  Result := FUsuGerOLD;
end;

procedure T160CTR.SetUsuGerOLD(const pUsuGer: Integer);
begin
  FUsuGerOLD := pUsuGer;
end;

function T160CTR.GetDatGerOLD: TDate;
begin
  Result := FDatGerOLD;
end;

procedure T160CTR.SetDatGerOLD(const pDatGer: TDate);
begin
  FDatGerOLD := pDatGer;
end;

function T160CTR.GetHorGerOLD: Integer;
begin
  Result := FHorGerOLD;
end;

procedure T160CTR.SetHorGerOLD(const pHorGer: Integer);
begin
  FHorGerOLD := pHorGer;
end;

function T160CTR.GetCodFpgOLD: Integer;
begin
  Result := FCodFpgOLD;
end;

procedure T160CTR.SetCodFpgOLD(const pCodFpg: Integer);
begin
  FCodFpgOLD := pCodFpg;
end;

function T160CTR.GetUltRreOLD: TDate;
begin
  Result := FUltRreOLD;
end;

procedure T160CTR.SetUltRreOLD(const pUltRre: TDate);
begin
  FUltRreOLD := pUltRre;
end;

function T160CTR.GetPerRreOLD: Double;
begin
  Result := FPerRreOLD;
end;

procedure T160CTR.SetPerRreOLD(const pPerRre: Double);
begin
  FPerRreOLD := pPerRre;
end;

function T160CTR.GetPrdRreOLD: Integer;
begin
  Result := FPrdRreOLD;
end;

procedure T160CTR.SetPrdRreOLD(const pPrdRre: Integer);
begin
  FPrdRreOLD := pPrdRre;
end;

function T160CTR.GetIniRreOLD: TDate;
begin
  Result := FIniRreOLD;
end;

procedure T160CTR.SetIniRreOLD(const pIniRre: TDate);
begin
  FIniRreOLD := pIniRre;
end;

function T160CTR.GetUltRpaOLD: TDate;
begin
  Result := FUltRpaOLD;
end;

procedure T160CTR.SetUltRpaOLD(const pUltRpa: TDate);
begin
  FUltRpaOLD := pUltRpa;
end;

function T160CTR.GetPerRpaOLD: Double;
begin
  Result := FPerRpaOLD;
end;

procedure T160CTR.SetPerRpaOLD(const pPerRpa: Double);
begin
  FPerRpaOLD := pPerRpa;
end;

function T160CTR.GetPrdRpaOLD: Integer;
begin
  Result := FPrdRpaOLD;
end;

procedure T160CTR.SetPrdRpaOLD(const pPrdRpa: Integer);
begin
  FPrdRpaOLD := pPrdRpa;
end;

function T160CTR.GetIniRpaOLD: TDate;
begin
  Result := FIniRpaOLD;
end;

procedure T160CTR.SetIniRpaOLD(const pIniRpa: TDate);
begin
  FIniRpaOLD := pIniRpa;
end;

function T160CTR.GetIndPadOLD: Char;
begin
  Result := FIndPadOLD;
end;

procedure T160CTR.SetIndPadOLD(const pIndPad: Char);
begin
  FIndPadOLD := pIndPad;
end;

function T160CTR.GetTipDipOLD: Integer;
begin
  Result := FTipDipOLD;
end;

procedure T160CTR.SetTipDipOLD(const pTipDip: Integer);
begin
  FTipDipOLD := pTipDip;
end;

function T160CTR.GetTipAceOLD: Integer;
begin
  Result := FTipAceOLD;
end;

procedure T160CTR.SetTipAceOLD(const pTipAce: Integer);
begin
  FTipAceOLD := pTipAce;
end;

function T160CTR.GetIndEmpOLD: Char;
begin
  Result := FIndEmpOLD;
end;

procedure T160CTR.SetIndEmpOLD(const pIndEmp: Char);
begin
  FIndEmpOLD := pIndEmp;
end;

function T160CTR.GetDscNegOLD: Double;
begin
  Result := FDscNegOLD;
end;

procedure T160CTR.SetDscNegOLD(const pDscNeg: Double);
begin
  FDscNegOLD := pDscNeg;
end;

function T160CTR.GetTipCgpOLD: Integer;
begin
  Result := FTipCgpOLD;
end;

procedure T160CTR.SetTipCgpOLD(const pTipCgp: Integer);
begin
  FTipCgpOLD := pTipCgp;
end;

function T160CTR.GetTipAveOLD: Integer;
begin
  Result := FTipAveOLD;
end;

procedure T160CTR.SetTipAveOLD(const pTipAve: Integer);
begin
  FTipAveOLD := pTipAve;
end;

function T160CTR.GetRotAnxOLD: Integer;
begin
  Result := FRotAnxOLD;
end;

procedure T160CTR.SetRotAnxOLD(const pRotAnx: Integer);
begin
  FRotAnxOLD := pRotAnx;
end;

function T160CTR.GetNumAnxOLD: Integer;
begin
  Result := FNumAnxOLD;
end;

procedure T160CTR.SetNumAnxOLD(const pNumAnx: Integer);
begin
  FNumAnxOLD := pNumAnx;
end;

function T160CTR.GetProReqOLD: Integer;
begin
  Result := FProReqOLD;
end;

procedure T160CTR.SetProReqOLD(const pProReq: Integer);
begin
  FProReqOLD := pProReq;
end;

function T160CTR.GetDatUreOLD: TDate;
begin
  Result := FDatUreOLD;
end;

procedure T160CTR.SetDatUreOLD(const pDatUre: TDate);
begin
  FDatUreOLD := pDatUre;
end;

function T160CTR.GetCtrReaOLD: Char;
begin
  Result := FCtrReaOLD;
end;

procedure T160CTR.SetCtrReaOLD(const pCtrRea: Char);
begin
  FCtrReaOLD := pCtrRea;
end;

function T160CTR.GetCtrIftOLD: Char;
begin
  Result := FCtrIftOLD;
end;

procedure T160CTR.SetCtrIftOLD(const pCtrIft: Char);
begin
  FCtrIftOLD := pCtrIft;
end;

function T160CTR.GetTemAvaOLD: Char;
begin
  Result := FTemAvaOLD;
end;

procedure T160CTR.SetTemAvaOLD(const pTemAva: Char);
begin
  FTemAvaOLD := pTemAva;
end;

function T160CTR.GetVarSerOLD: Char;
begin
  Result := FVarSerOLD;
end;

procedure T160CTR.SetVarSerOLD(const pVarSer: Char);
begin
  FVarSerOLD := pVarSer;
end;

function T160CTR.GetCodSegOLD: Integer;
begin
  Result := FCodSegOLD;
end;

procedure T160CTR.SetCodSegOLD(const pCodSeg: Integer);
begin
  FCodSegOLD := pCodSeg;
end;

function T160CTR.GetCodBanOLD: string;
begin
  Result := FCodBanOLD;
end;

procedure T160CTR.SetCodBanOLD(const pCodBan: string);
begin
  FCodBanOLD := pCodBan;
end;

function T160CTR.GetQtdRevOLD: Double;
begin
  Result := FQtdRevOLD;
end;

procedure T160CTR.SetQtdRevOLD(const pQtdRev: Double);
begin
  FQtdRevOLD := pQtdRev;
end;

function T160CTR.GetQtdRefOLD: Double;
begin
  Result := FQtdRefOLD;
end;

procedure T160CTR.SetQtdRefOLD(const pQtdRef: Double);
begin
  FQtdRefOLD := pQtdRef;
end;

function T160CTR.GetDocEnvOLD: Char;
begin
  Result := FDocEnvOLD;
end;

procedure T160CTR.SetDocEnvOLD(const pDocEnv: Char);
begin
  FDocEnvOLD := pDocEnv;
end;

function T160CTR.GetEmpCtoOLD: Integer;
begin
  Result := FEmpCtoOLD;
end;

procedure T160CTR.SetEmpCtoOLD(const pEmpCto: Integer);
begin
  FEmpCtoOLD := pEmpCto;
end;

function T160CTR.GetCodPcoOLD: Integer;
begin
  Result := FCodPcoOLD;
end;

procedure T160CTR.SetCodPcoOLD(const pCodPco: Integer);
begin
  FCodPcoOLD := pCodPco;
end;

function T160CTR.GetFilCtoOLD: Integer;
begin
  Result := FFilCtoOLD;
end;

procedure T160CTR.SetFilCtoOLD(const pFilCto: Integer);
begin
  FFilCtoOLD := pFilCto;
end;

function T160CTR.GetCptPcoOLD: TDate;
begin
  Result := FCptPcoOLD;
end;

procedure T160CTR.SetCptPcoOLD(const pCptPco: TDate);
begin
  FCptPcoOLD := pCptPco;
end;

function T160CTR.GetUSU_VenCtrOLD: Char;
begin
  Result := FUSU_VenCtrOLD;
end;

procedure T160CTR.SetUSU_VenCtrOLD(const pUSU_VenCtr: Char);
begin
  FUSU_VenCtrOLD := pUSU_VenCtr;
end;

function T160CTR.GetUSU_CodGreOLD: Integer;
begin
  Result := FUSU_CodGreOLD;
end;

procedure T160CTR.SetUSU_CodGreOLD(const pUSU_CodGre: Integer);
begin
  FUSU_CodGreOLD := pUSU_CodGre;
end;

function T160CTR.GetUSU_TipFreOLD: Char;
begin
  Result := FUSU_TipFreOLD;
end;

procedure T160CTR.SetUSU_TipFreOLD(const pUSU_TipFre: Char);
begin
  FUSU_TipFreOLD := pUSU_TipFre;
end;

function T160CTR.GetUSU_ComSobOLD: Char;
begin
  Result := FUSU_ComSobOLD;
end;

procedure T160CTR.SetUSU_ComSobOLD(const pUSU_ComSob: Char);
begin
  FUSU_ComSobOLD := pUSU_ComSob;
end;

function T160CTR.GetUSU_UsuResOLD: Integer;
begin
  Result := FUSU_UsuResOLD;
end;

procedure T160CTR.SetUSU_UsuResOLD(const pUSU_UsuRes: Integer);
begin
  FUSU_UsuResOLD := pUSU_UsuRes;
end;

function T160CTR.GetUSU_SeqCtoOLD: Integer;
begin
  Result := FUSU_SeqCtoOLD;
end;

procedure T160CTR.SetUSU_SeqCtoOLD(const pUSU_SeqCto: Integer);
begin
  FUSU_SeqCtoOLD := pUSU_SeqCto;
end;

function T160CTR.GetUSU_UsuAltOLD: Integer;
begin
  Result := FUSU_UsuAltOLD;
end;

procedure T160CTR.SetUSU_UsuAltOLD(const pUSU_UsuAlt: Integer);
begin
  FUSU_UsuAltOLD := pUSU_UsuAlt;
end;

function T160CTR.GetUSU_DatAltOLD: TDate;
begin
  Result := FUSU_DatAltOLD;
end;

procedure T160CTR.SetUSU_DatAltOLD(const pUSU_DatAlt: TDate);
begin
  FUSU_DatAltOLD := pUSU_DatAlt;
end;

function T160CTR.GetUSU_HorAltOLD: Integer;
begin
  Result := FUSU_HorAltOLD;
end;

procedure T160CTR.SetUSU_HorAltOLD(const pUSU_HorAlt: Integer);
begin
  FUSU_HorAltOLD := pUSU_HorAlt;
end;

function T160CTR.GetUSU_IndReaOLD: Double;
begin
  Result := FUSU_IndReaOLD;
end;

procedure T160CTR.SetUSU_IndReaOLD(const pUSU_IndRea: Double);
begin
  FUSU_IndReaOLD := pUSU_IndRea;
end;

function T160CTR.GetUSU_DiaAviTerOLD: Integer;
begin
  Result := FUSU_DiaAviTerOLD;
end;

procedure T160CTR.SetUSU_DiaAviTerOLD(const pUSU_DiaAviTer: Integer);
begin
  FUSU_DiaAviTerOLD := pUSU_DiaAviTer;
end;

function T160CTR.GetUSU_IQFPerMulOLD: Double;
begin
  Result := FUSU_IQFPerMulOLD;
end;

procedure T160CTR.SetUSU_IQFPerMulOLD(const pUSU_IQFPerMul: Double);
begin
  FUSU_IQFPerMulOLD := pUSU_IQFPerMul;
end;

function T160CTR.GetUSU_IQFVlrMulOLD: Double;
begin
  Result := FUSU_IQFVlrMulOLD;
end;

procedure T160CTR.SetUSU_IQFVlrMulOLD(const pUSU_IQFVlrMul: Double);
begin
  FUSU_IQFVlrMulOLD := pUSU_IQFVlrMul;
end;

function T160CTR.GetUSU_OcoMulOLD: Integer;
begin
  Result := FUSU_OcoMulOLD;
end;

procedure T160CTR.SetUSU_OcoMulOLD(const pUSU_OcoMul: Integer);
begin
  FUSU_OcoMulOLD := pUSU_OcoMul;
end;

function T160CTR.GetUSU_TipOcoOLD: Char;
begin
  Result := FUSU_TipOcoOLD;
end;

procedure T160CTR.SetUSU_TipOcoOLD(const pUSU_TipOco: Char);
begin
  FUSU_TipOcoOLD := pUSU_TipOco;
end;

function T160CTR.GetUSU_IndPadOLD: Double;
begin
  Result := FUSU_IndPadOLD;
end;

procedure T160CTR.SetUSU_IndPadOLD(const pUSU_IndPad: Double);
begin
  FUSU_IndPadOLD := pUSU_IndPad;
end;

function T160CTR.GetUSU_DiaIQFOLD: Integer;
begin
  Result := FUSU_DiaIQFOLD;
end;

procedure T160CTR.SetUSU_DiaIQFOLD(const pUSU_DiaIQF: Integer);
begin
  FUSU_DiaIQFOLD := pUSU_DiaIQF;
end;

function T160CTR.GetUSU_Dia2IQFOLD: Integer;
begin
  Result := FUSU_Dia2IQFOLD;
end;

procedure T160CTR.SetUSU_Dia2IQFOLD(const pUSU_Dia2IQF: Integer);
begin
  FUSU_Dia2IQFOLD := pUSU_Dia2IQF;
end;

procedure T160CTR.Registros_OLD();
begin
  FCodEmpOLD := FCodEmp;
  FCodFilOLD := FCodFil;
  FNumCtrOLD := FNumCtr;
  FTipCtrOLD := FTipCtr;
  FNumOfiOLD := FNumOfi;
  FObjCtrOLD := FObjCtr;
  FTnsProOLD := FTnsPro;
  FTnsSerOLD := FTnsSer;
  FCrtOriOLD := FCrtOri;
  FDatEmiOLD := FDatEmi;
  FDatEntOLD := FDatEnt;
  FCodCliOLD := FCodCli;
  FCliFatOLD := FCliFat;
  FCodRepOLD := FCodRep;
  FCodMoeOLD := FCodMoe;
  FCodFrjOLD := FCodFrj;
  FQtdParOLD := FQtdPar;
  FDiaParOLD := FDiaPar;
  FProParOLD := FProPar;
  FDatIniOLD := FDatIni;
  FDiaBasOLD := FDiaBas;
  FDatUftOLD := FDatUft;
  FFilNfvOLD := FFilNfv;
  FCodSnfOLD := FCodSnf;
  FNumNfvOLD := FNumNfv;
  FCodCpgOLD := FCodCpg;
  FUsaJmcOLD := FUsaJmc;
  FPerJrsOLD := FPerJrs;
  FTolJrsOLD := FTolJrs;
  FTipJrsOLD := FTipJrs;
  FPerMulOLD := FPerMul;
  FTolMulOLD := FTolMul;
  FVlrTotOLD := FVlrTot;
  FTnsTitOLD := FTnsTit;
  FFilTcrOLD := FFilTcr;
  FCodTptOLD := FCodTpt;
  FNumTitOLD := FNumTit;
  FOriTitOLD := FOriTit;
  FUltReaOLD := FUltRea;
  FPrdReaOLD := FPrdRea;
  FPerReaOLD := FPerRea;
  FCodRegOLD := FCodReg;
  FSitCtrOLD := FSitCtr;
  FCodMotOLD := FCodMot;
  FObsMotOLD := FObsMot;
  FDiaFixOLD := FDiaFix;
  FCodTraOLD := FCodTra;
  FCodMs1OLD := FCodMs1;
  FCodMs2OLD := FCodMs2;
  FCodMs3OLD := FCodMs3;
  FCodMs4OLD := FCodMs4;
  FObsCtrOLD := FObsCtr;
  FDiaRepOLD := FDiaRep;
  FIniRepOLD := FIniRep;
  FFimRepOLD := FFimRep;
  FUltCptOLD := FUltCpt;
  FAgpDscOLD := FAgpDsc;
  FCodCrpOLD := FCodCrp;
  FCodFcrOLD := FCodFcr;
  FDatFcrOLD := FDatFcr;
  FPerFatOLD := FPerFat;
  FIniReaOLD := FIniRea;
  FCodTprOLD := FCodTpr;
  FSeqEntOLD := FSeqEnt;
  FSeqCobOLD := FSeqCob;
  FIniVigOLD := FIniVig;
  FFimVigOLD := FFimVig;
  FCriFtcOLD := FCriFtc;
  FCriPrtOLD := FCriPrt;
  FDatFimOLD := FDatFim;
  FIniComOLD := FIniCom;
  FFimComOLD := FFimCom;
  FUsuGerOLD := FUsuGer;
  FDatGerOLD := FDatGer;
  FHorGerOLD := FHorGer;
  FCodFpgOLD := FCodFpg;
  FUltRreOLD := FUltRre;
  FPerRreOLD := FPerRre;
  FPrdRreOLD := FPrdRre;
  FIniRreOLD := FIniRre;
  FUltRpaOLD := FUltRpa;
  FPerRpaOLD := FPerRpa;
  FPrdRpaOLD := FPrdRpa;
  FIniRpaOLD := FIniRpa;
  FIndPadOLD := FIndPad;
  FTipDipOLD := FTipDip;
  FTipAceOLD := FTipAce;
  FIndEmpOLD := FIndEmp;
  FDscNegOLD := FDscNeg;
  FTipCgpOLD := FTipCgp;
  FTipAveOLD := FTipAve;
  FRotAnxOLD := FRotAnx;
  FNumAnxOLD := FNumAnx;
  FProReqOLD := FProReq;
  FDatUreOLD := FDatUre;
  FCtrReaOLD := FCtrRea;
  FCtrIftOLD := FCtrIft;
  FTemAvaOLD := FTemAva;
  FVarSerOLD := FVarSer;
  FCodSegOLD := FCodSeg;
  FCodBanOLD := FCodBan;
  FQtdRevOLD := FQtdRev;
  FQtdRefOLD := FQtdRef;
  FDocEnvOLD := FDocEnv;
  FEmpCtoOLD := FEmpCto;
  FCodPcoOLD := FCodPco;
  FFilCtoOLD := FFilCto;
  FCptPcoOLD := FCptPco;
  FUSU_VenCtrOLD := FUSU_VenCtr;
  FUSU_CodGreOLD := FUSU_CodGre;
  FUSU_TipFreOLD := FUSU_TipFre;
  FUSU_ComSobOLD := FUSU_ComSob;
  FUSU_UsuResOLD := FUSU_UsuRes;
  FUSU_SeqCtoOLD := FUSU_SeqCto;
  FUSU_UsuAltOLD := FUSU_UsuAlt;
  FUSU_DatAltOLD := FUSU_DatAlt;
  FUSU_HorAltOLD := FUSU_HorAlt;
  FUSU_IndReaOLD := FUSU_IndRea;
  FUSU_DiaAviTerOLD := FUSU_DiaAviTer;
  FUSU_IQFPerMulOLD := FUSU_IQFPerMul;
  FUSU_IQFVlrMulOLD := FUSU_IQFVlrMul;
  FUSU_OcoMulOLD := FUSU_OcoMul;
  FUSU_TipOcoOLD := FUSU_TipOco;
  FUSU_IndPadOLD := FUSU_IndPad;
  FUSU_DiaIQFOLD := FUSU_DiaIQF;
  FUSU_Dia2IQFOLD := FUSU_Dia2IQF;

  inherited;
end;

procedure T160CTR.RetornarValores();
begin
  FCodEmp := FCodEmpOLD;
  FCodFil := FCodFilOLD;
  FNumCtr := FNumCtrOLD;
  FTipCtr := FTipCtrOLD;
  FNumOfi := FNumOfiOLD;
  FObjCtr := FObjCtrOLD;
  FTnsPro := FTnsProOLD;
  FTnsSer := FTnsSerOLD;
  FCrtOri := FCrtOriOLD;
  FDatEmi := FDatEmiOLD;
  FDatEnt := FDatEntOLD;
  FCodCli := FCodCliOLD;
  FCliFat := FCliFatOLD;
  FCodRep := FCodRepOLD;
  FCodMoe := FCodMoeOLD;
  FCodFrj := FCodFrjOLD;
  FQtdPar := FQtdParOLD;
  FDiaPar := FDiaParOLD;
  FProPar := FProParOLD;
  FDatIni := FDatIniOLD;
  FDiaBas := FDiaBasOLD;
  FDatUft := FDatUftOLD;
  FFilNfv := FFilNfvOLD;
  FCodSnf := FCodSnfOLD;
  FNumNfv := FNumNfvOLD;
  FCodCpg := FCodCpgOLD;
  FUsaJmc := FUsaJmcOLD;
  FPerJrs := FPerJrsOLD;
  FTolJrs := FTolJrsOLD;
  FTipJrs := FTipJrsOLD;
  FPerMul := FPerMulOLD;
  FTolMul := FTolMulOLD;
  FVlrTot := FVlrTotOLD;
  FTnsTit := FTnsTitOLD;
  FFilTcr := FFilTcrOLD;
  FCodTpt := FCodTptOLD;
  FNumTit := FNumTitOLD;
  FOriTit := FOriTitOLD;
  FUltRea := FUltReaOLD;
  FPrdRea := FPrdReaOLD;
  FPerRea := FPerReaOLD;
  FCodReg := FCodRegOLD;
  FSitCtr := FSitCtrOLD;
  FCodMot := FCodMotOLD;
  FObsMot := FObsMotOLD;
  FDiaFix := FDiaFixOLD;
  FCodTra := FCodTraOLD;
  FCodMs1 := FCodMs1OLD;
  FCodMs2 := FCodMs2OLD;
  FCodMs3 := FCodMs3OLD;
  FCodMs4 := FCodMs4OLD;
  FObsCtr := FObsCtrOLD;
  FDiaRep := FDiaRepOLD;
  FIniRep := FIniRepOLD;
  FFimRep := FFimRepOLD;
  FUltCpt := FUltCptOLD;
  FAgpDsc := FAgpDscOLD;
  FCodCrp := FCodCrpOLD;
  FCodFcr := FCodFcrOLD;
  FDatFcr := FDatFcrOLD;
  FPerFat := FPerFatOLD;
  FIniRea := FIniReaOLD;
  FCodTpr := FCodTprOLD;
  FSeqEnt := FSeqEntOLD;
  FSeqCob := FSeqCobOLD;
  FIniVig := FIniVigOLD;
  FFimVig := FFimVigOLD;
  FCriFtc := FCriFtcOLD;
  FCriPrt := FCriPrtOLD;
  FDatFim := FDatFimOLD;
  FIniCom := FIniComOLD;
  FFimCom := FFimComOLD;
  FUsuGer := FUsuGerOLD;
  FDatGer := FDatGerOLD;
  FHorGer := FHorGerOLD;
  FCodFpg := FCodFpgOLD;
  FUltRre := FUltRreOLD;
  FPerRre := FPerRreOLD;
  FPrdRre := FPrdRreOLD;
  FIniRre := FIniRreOLD;
  FUltRpa := FUltRpaOLD;
  FPerRpa := FPerRpaOLD;
  FPrdRpa := FPrdRpaOLD;
  FIniRpa := FIniRpaOLD;
  FIndPad := FIndPadOLD;
  FTipDip := FTipDipOLD;
  FTipAce := FTipAceOLD;
  FIndEmp := FIndEmpOLD;
  FDscNeg := FDscNegOLD;
  FTipCgp := FTipCgpOLD;
  FTipAve := FTipAveOLD;
  FRotAnx := FRotAnxOLD;
  FNumAnx := FNumAnxOLD;
  FProReq := FProReqOLD;
  FDatUre := FDatUreOLD;
  FCtrRea := FCtrReaOLD;
  FCtrIft := FCtrIftOLD;
  FTemAva := FTemAvaOLD;
  FVarSer := FVarSerOLD;
  FCodSeg := FCodSegOLD;
  FCodBan := FCodBanOLD;
  FQtdRev := FQtdRevOLD;
  FQtdRef := FQtdRefOLD;
  FDocEnv := FDocEnvOLD;
  FEmpCto := FEmpCtoOLD;
  FCodPco := FCodPcoOLD;
  FFilCto := FFilCtoOLD;
  FCptPco := FCptPcoOLD;
  FUSU_VenCtr := FUSU_VenCtrOLD;
  FUSU_CodGre := FUSU_CodGreOLD;
  FUSU_TipFre := FUSU_TipFreOLD;
  FUSU_ComSob := FUSU_ComSobOLD;
  FUSU_UsuRes := FUSU_UsuResOLD;
  FUSU_SeqCto := FUSU_SeqCtoOLD;
  FUSU_UsuAlt := FUSU_UsuAltOLD;
  FUSU_DatAlt := FUSU_DatAltOLD;
  FUSU_HorAlt := FUSU_HorAltOLD;
  FUSU_IndRea := FUSU_IndReaOLD;
  FUSU_DiaAviTer := FUSU_DiaAviTerOLD;
  FUSU_IQFPerMul := FUSU_IQFPerMulOLD;
  FUSU_IQFVlrMul := FUSU_IQFVlrMulOLD;
  FUSU_OcoMul := FUSU_OcoMulOLD;
  FUSU_TipOco := FUSU_TipOcoOLD;
  FUSU_IndPad := FUSU_IndPadOLD;
  FUSU_DiaIQF := FUSU_DiaIQFOLD;
  FUSU_Dia2IQF := FUSU_Dia2IQFOLD;
end;

end.
