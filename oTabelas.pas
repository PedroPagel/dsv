unit oTabelas;

interface

uses
  System.Classes, oLayout, Data.SqlExpr, oQuery, oBase, System.SysUtils,
  Data.Db, System.Contnrs, o501tcp, o510age, o510arm;

type
  T030ETC = class(TTabelaPadrao)
  private
    FCodBan: string;
    FCodTpt: string;
    FEspBan: string;
    function GetCodBan: string;
    function GetCodTpt: string;
    function GetEspBan: string;
    procedure SetCodBan(const pCodBan: string);
    procedure SetCodTpt(const pCodTpt: string);
    procedure SetEspBan(const pEspBan: string);
  public
    constructor Create();

    property CodBan: string read GetCodBan write SetCodBan;
    property CodTpt: string read GetCodTpt write SetCodTpt;
    property EspBan: string read GetEspBan write SetEspBan;
  end;

  THistorico = class(TTabelaPadrao)
  private
    FCodEmp: Integer;
    FCodFil: Integer;
    FCodFor: Integer;
    FCodPor: string;
    FPagMul: Double;
    FPagDTm: Byte;
    FPagJmm: Double;
    FPagTir: Char;
    FPagDtj: SmallInt;
    FPerDsc: Double;
    FTolDsc: Integer;
    FCodCrt: string;
    FCodCrp: string;
    FCodBan: string;
    FCodAge: string;
    FCcbFor: string;
    FCodFpg: Byte;
    FAntDsc: Char;
    FCodFav: Double;

    function GetCodFor: Integer;
    function GetCodEmp: Integer;
    function GetCodFil: Integer;
    function GetCodPor: string;
    function GetAntDsc: Char;
    function GetCcbFor: string;
    function GetCodAge: string;
    function GetCodBan: string;
    function GetCodCrp: string;
    function GetCodCrt: string;
    function GetCodFav: Double;
    function GetCodFpg: Byte;
    function GetPagDtj: SmallInt;
    function GetPagDTm: Byte;
    function GetPagJmm: Double;
    function GetPagMul: Double;
    function GetPagTir: Char;
    function GetPerDsc: Double;
    function GetTolDsc: Integer;

    procedure SetCodEmp(const pCodEmp: Integer);
    procedure SetCodFil(const pCodFil: Integer);
    procedure SetCodFor(const pCodFor: Integer);
    procedure SetCodPor(const pCodPor: string);
    procedure SetAntDsc(const pAntDsc: Char);
    procedure SetCcbFor(const pCcbFor: string);
    procedure SetCodAge(const pCodAge: string);
    procedure SetCodBan(const pCodBan: string);
    procedure SetCodCrp(const pCodCrp: string);
    procedure SetCodCrt(const pCodCrt: string);
    procedure SetCodFav(const pCodFav: Double);
    procedure SetCodFpg(const pCodFpg: Byte);
    procedure SetPagDtj(const pPagDtj: SmallInt);
    procedure SetPagDTm(const pPagDTm: Byte);
    procedure SetPagJmm(const pPagJmm: Double);
    procedure SetPagMul(const pPagMul: Double);
    procedure SetPagTir(const pPagTir: Char);
    procedure SetPerDsc(const pPerDsc: Double);
    procedure SetTolDsc(const pTolDsc: Integer);
  public
    constructor Create();
    destructor Destroy(); override;

    property CodEmp: Integer read GetCodEmp write SetCodEmp;
    property CodFil: Integer read GetCodFil write SetCodFil;
    property CodPor: string read GetCodPor write SetCodPor;
    property CodFor: Integer read GetCodFor write SetCodFor;
    property PagMul: Double read GetPagMul write SetPagMul;
    property PagDTm: Byte read GetPagDTm write SetPagDTm;
    property PagJmm: Double read GetPagJmm write SetPagJmm;
    property PagTir: Char read GetPagTir write SetPagTir;
    property PagDtj: SmallInt read GetPagDtj write SetPagDtj;
    property PerDsc: Double read GetPerDsc write SetPerDsc;
    property TolDsc: Integer read GetTolDsc write SetTolDsc;
    property CodCrt: string read GetCodCrt write SetCodCrt;
    property CodCrp: string read GetCodCrp write SetCodCrp;
    property CodBan: string read GetCodBan write SetCodBan;
    property CodAge: string read GetCodAge write SetCodAge;
    property CcbFor: string read GetCcbFor write SetCcbFor;
    property CodFpg: Byte read GetCodFpg write SetCodFpg;
    property AntDsc: Char read GetAntDsc write SetAntDsc;
    property CodFav: Double read GetCodFav write SetCodFav;
  end;

  T095FOR = class(TTabelaPadrao)
  private
    FCgcCpf: Double;
    FCodFor: Integer;
    FRaiz: string;
    FLista: TStringList;
    FIterador: TIterador;

    function GetCgcCpf: Double;
    function GetCodFor: Integer;
    procedure SetCgcCpf(const pCgcCpf: Double);
    procedure SetCodFor(const pCodFor: Integer);

    function ListaInternaFornecedores: string;
    function ListaFornecedores: string;
    function BuscarPorCNPJ(const pCNPJ: Double): string;
  public
    constructor Create();
    constructor CreatePersonalizado(const pCgcCpf: Double);
    destructor Destroy(); override;

    procedure CarregarFornecedores();
    function AdicionarFonecedor(const pCgcCpf: Double): Integer;

    function CodigoDoFornecedor: Integer;
    function FornecedoresRaiz(const pCodFor: Integer): string;

    property CodFor: Integer read GetCodFor write SetCodFor;
    property CgcCpf: Double read GetCgcCpf write SetCgcCpf;
  end;

  //controle de locação pelo contrato
  T160CLP = class(TTabelaUsuario)
  private
    FUSU_IDIND: Integer;
    FUSU_IniVig: TDate;
    FUSU_VigFim: TDate;
    FUSU_CodEmp: Integer;
    FUSU_CodFil: Integer;
    FUSU_CodCli: Integer;
    FUSU_NumCtr: Integer;
    FUSU_VlrCtr: Double;
    FUSU_IndFin: string;
    FUSU_CodBem: string;
    FUSU_DatGer: TDate;
    FUSU_UsuGer: Integer;
    FUSU_DatAlt: TDate;
    FUSU_UsuAlt: Integer;
    FUSU_PerEre: Integer;

    FUSU_IDINDOLD: Integer;
    FUSU_IniVigOLD: TDate;
    FUSU_VigFimOLD: TDate;
    FUSU_CodEmpOLD: Integer;
    FUSU_CodFilOLD: Integer;
    FUSU_CodCliOLD: Integer;
    FUSU_NumCtrOLD: Integer;
    FUSU_VlrCtrOLD: Double;
    FUSU_IndFinOLD: string;
    FUSU_CodBemOLD: string;
    FUSU_DatGerOLD: TDate;
    FUSU_UsuGerOLD: Integer;
    FUSU_DatAltOLD: TDate;
    FUSU_UsuAltOLD: Integer;
    FUSU_PerEreOLD: Integer;

    function GetUSU_IDIND: Integer;
    procedure SetUSU_IDIND(const pUSU_IDIND: Integer);
    function GetUSU_IniVig: TDate;
    procedure SetUSU_IniVig(const pUSU_IniVig: TDate);
    function GetUSU_VigFim: TDate;
    procedure SetUSU_VigFim(const pUSU_VigFim: TDate);
    function GetUSU_CodEmp: Integer;
    procedure SetUSU_CodEmp(const pUSU_CodEmp: Integer);
    function GetUSU_CodFil: Integer;
    procedure SetUSU_CodFil(const pUSU_CodFil: Integer);
    function GetUSU_CodCli: Integer;
    procedure SetUSU_CodCli(const pUSU_CodCli: Integer);
    function GetUSU_NumCtr: Integer;
    procedure SetUSU_NumCtr(const pUSU_NumCtr: Integer);
    function GetUSU_VlrCtr: Double;
    procedure SetUSU_VlrCtr(const pUSU_VlrCtr: Double);
    function GetUSU_IndFin: string;
    procedure SetUSU_IndFin(const pUSU_IndFin: string);
    function GetUSU_CodBem: string;
    procedure SetUSU_CodBem(const pUSU_CodBem: string);
    function GetUSU_DatGer: TDate;
    procedure SetUSU_DatGer(const pUSU_DatGer: TDate);
    function GetUSU_UsuGer: Integer;
    procedure SetUSU_UsuGer(const pUSU_UsuGer: Integer);
    function GetUSU_DatAlt: TDate;
    procedure SetUSU_DatAlt(const pUSU_DatAlt: TDate);
    function GetUSU_UsuAlt: Integer;
    procedure SetUSU_UsuAlt(const pUSU_UsuAlt: Integer);
    function GetUSU_PerEre: Integer;
    procedure SetUSU_PerEre(const pUSU_PerEre: Integer);

    function GetUSU_IDINDOld: Integer;
    procedure SetUSU_IDINDOld(const pUSU_IDIND: Integer);
    function GetUSU_IniVigOld: TDate;
    procedure SetUSU_IniVigOld(const pUSU_IniVig: TDate);
    function GetUSU_VigFimOld: TDate;
    procedure SetUSU_VigFimOld(const pUSU_VigFim: TDate);
    function GetUSU_CodEmpOld: Integer;
    procedure SetUSU_CodEmpOld(const pUSU_CodEmp: Integer);
    function GetUSU_CodFilOld: Integer;
    procedure SetUSU_CodFilOld(const pUSU_CodFil: Integer);
    function GetUSU_CodCliOld: Integer;
    procedure SetUSU_CodCliOld(const pUSU_CodCli: Integer);
    function GetUSU_NumCtrOld: Integer;
    procedure SetUSU_NumCtrOld(const pUSU_NumCtr: Integer);
    function GetUSU_VlrCtrOld: Double;
    procedure SetUSU_VlrCtrOld(const pUSU_VlrCtr: Double);
    function GetUSU_IndFinOld: string;
    procedure SetUSU_IndFinOld(const pUSU_IndFin: string);
    function GetUSU_CodBemOld: string;
    procedure SetUSU_CodBemOld(const pUSU_CodBem: string);
    function GetUSU_DatGerOld: TDate;
    procedure SetUSU_DatGerOld(const pUSU_DatGer: TDate);
    function GetUSU_UsuGerOld: Integer;
    procedure SetUSU_UsuGerOld(const pUSU_UsuGer: Integer);
    function GetUSU_DatAltOld: TDate;
    procedure SetUSU_DatAltOld(const pUSU_DatAlt: TDate);
    function GetUSU_UsuAltOld: Integer;
    procedure SetUSU_UsuAltOld(const pUSU_UsuAlt: Integer);
    function GetUSU_PerEreOld: Integer;
    procedure SetUSU_PerEreOld(const pUSU_PerEre: Integer);
  protected
    procedure Registros_OLD(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_IDIND: Integer read GetUSU_IDIND write SetUSU_IDIND;
    property USU_IniVig: TDate read GetUSU_IniVig write SetUSU_IniVig;
    property USU_VigFim: TDate read GetUSU_VigFim write SetUSU_VigFim;
    property USU_CodEmp: Integer read GetUSU_CodEmp write SetUSU_CodEmp;
    property USU_CodFil: Integer read GetUSU_CodFil write SetUSU_CodFil;
    property USU_CodCli: Integer read GetUSU_CodCli write SetUSU_CodCli;
    property USU_NumCtr: Integer read GetUSU_NumCtr write SetUSU_NumCtr;
    property USU_VlrCtr: Double read GetUSU_VlrCtr write SetUSU_VlrCtr;
    property USU_IndFin: string read GetUSU_IndFin write SetUSU_IndFin;
    property USU_CodBem: string read GetUSU_CodBem write SetUSU_CodBem;
    property USU_DatGer: TDate read GetUSU_DatGer write SetUSU_DatGer;
    property USU_UsuGer: Integer read GetUSU_UsuGer write SetUSU_UsuGer;
    property USU_DatAlt: TDate read GetUSU_DatAlt write SetUSU_DatAlt;
    property USU_UsuAlt: Integer read GetUSU_UsuAlt write SetUSU_UsuAlt;
    property USU_PerEre: Integer read GetUSU_PerEre write SetUSU_PerEre;

    property OLD_USU_IDIND: Integer read GetUSU_IDINDOLD write SetUSU_IDINDOLD;
    property OLD_USU_IniVig: TDate read GetUSU_IniVigOLD write SetUSU_IniVigOLD;
    property OLD_USU_VigFim: TDate read GetUSU_VigFimOLD write SetUSU_VigFimOLD;
    property OLD_USU_CodEmp: Integer read GetUSU_CodEmpOLD write SetUSU_CodEmpOLD;
    property OLD_USU_CodFil: Integer read GetUSU_CodFilOLD write SetUSU_CodFilOLD;
    property OLD_USU_CodCli: Integer read GetUSU_CodCliOLD write SetUSU_CodCliOLD;
    property OLD_USU_NumCtr: Integer read GetUSU_NumCtrOLD write SetUSU_NumCtrOLD;
    property OLD_USU_VlrCtr: Double read GetUSU_VlrCtrOLD write SetUSU_VlrCtrOLD;
    property OLD_USU_IndFin: string read GetUSU_IndFinOLD write SetUSU_IndFinOLD;
    property OLD_USU_CodBem: string read GetUSU_CodBemOLD write SetUSU_CodBemOLD;
    property OLD_USU_DatGer: TDate read GetUSU_DatGerOLD write SetUSU_DatGerOLD;
    property OLD_USU_UsuGer: Integer read GetUSU_UsuGerOLD write SetUSU_UsuGerOLD;
    property OLD_USU_DatAlt: TDate read GetUSU_DatAltOLD write SetUSU_DatAltOLD;
    property OLD_USU_UsuAlt: Integer read GetUSU_UsuAltOLD write SetUSU_UsuAltOLD;
    property OLD_USU_PerEre: Integer read GetUSU_PerEreOLD write SetUSU_PerEreOLD;
  end;

  T090IND = class(TTabelaUsuario)
  private
    FUSU_IndFin: string;
    FUSU_CodEmp: Integer;
    FUSU_DatGer: TDate;
    FUSU_UsuGer: Integer;
    FUSU_ObsInd: string;
    FUSU_DatIni: TDate;
    FUSU_DatFin: TDate;
    FUSU_CodDbc: Integer;
    FUSU_UsuAlt: Integer;
    FUSU_UsuRes: Integer;
    FUSU_DatAlt: TDate;
    FUSU_SeqCot: Integer;

    FUSU_IndFinOLD: string;
    FUSU_CodEmpOLD: Integer;
    FUSU_DatGerOLD: TDate;
    FUSU_UsuGerOLD: Integer;
    FUSU_ObsIndOLD: string;
    FUSU_DatIniOLD: TDate;
    FUSU_DatFinOLD: TDate;
    FUSU_CodDbcOLD: Integer;
    FUSU_UsuAltOLD: Integer;
    FUSU_UsuResOLD: Integer;
    FUSU_DatAltOLD: TDate;
    FUSU_SeqCotOLD: Integer;

    function GetUSU_IndFin: string;
    procedure SetUSU_IndFin(const pUSU_IndFin: string);
    function GetUSU_CodEmp: Integer;
    procedure SetUSU_CodEmp(const pUSU_CodEmp: Integer);
    function GetUSU_DatGer: TDate;
    procedure SetUSU_DatGer(const pUSU_DatGer: TDate);
    function GetUSU_UsuGer: Integer;
    procedure SetUSU_UsuGer(const pUSU_UsuGer: Integer);
    function GetUSU_ObsInd: string;
    procedure SetUSU_ObsInd(const pUSU_ObsInd: string);
    function GetUSU_DatIni: TDate;
    procedure SetUSU_DatIni(const pUSU_DatIni: TDate);
    function GetUSU_DatFin: TDate;
    procedure SetUSU_DatFin(const pUSU_DatFin: TDate);
    function GetUSU_CodDbc: Integer;
    procedure SetUSU_CodDbc(const pUSU_CodDbc: Integer);
    function GetUSU_UsuAlt: Integer;
    procedure SetUSU_UsuAlt(const pUSU_UsuAlt: Integer);
    function GetUSU_UsuRes: Integer;
    procedure SetUSU_UsuRes(const pUSU_UsuRes: Integer);
    function GetUSU_DatAlt: TDate;
    procedure SetUSU_DatAlt(const pUSU_DatAlt: TDate);
    function GetUSU_SeqCot: Integer;
    procedure SetUSU_SeqCot(const pUSU_SeqCot: Integer);

    function GetUSU_IndFinOld: string;
    procedure SetUSU_IndFinOld(const pUSU_IndFin: string);
    function GetUSU_CodEmpOld: Integer;
    procedure SetUSU_CodEmpOld(const pUSU_CodEmp: Integer);
    function GetUSU_DatGerOld: TDate;
    procedure SetUSU_DatGerOld(const pUSU_DatGer: TDate);
    function GetUSU_UsuGerOld: Integer;
    procedure SetUSU_UsuGerOld(const pUSU_UsuGer: Integer);
    function GetUSU_ObsIndOld: string;
    procedure SetUSU_ObsIndOld(const pUSU_ObsInd: string);
    function GetUSU_DatIniOld: TDate;
    procedure SetUSU_DatIniOld(const pUSU_DatIni: TDate);
    function GetUSU_DatFinOld: TDate;
    procedure SetUSU_DatFinOld(const pUSU_DatFin: TDate);
    function GetUSU_CodDbcOld: Integer;
    procedure SetUSU_CodDbcOld(const pUSU_CodDbc: Integer);
    function GetUSU_UsuAltOld: Integer;
    procedure SetUSU_UsuAltOld(const pUSU_UsuAlt: Integer);
    function GetUSU_UsuResOld: Integer;
    procedure SetUSU_UsuResOld(const pUSU_UsuRes: Integer);
    function GetUSU_DatAltOld: TDate;
    procedure SetUSU_DatAltOld(const pUSU_DatAlt: TDate);
    function GetUSU_SeqCotOld: Integer;
    procedure SetUSU_SeqCotOld(const pUSU_SeqCot: Integer);
  protected
    procedure Registros_OLD(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_IndFin: string read GetUSU_IndFin write SetUSU_IndFin;
    property USU_CodEmp: Integer read GetUSU_CodEmp write SetUSU_CodEmp;
    property USU_DatGer: TDate read GetUSU_DatGer write SetUSU_DatGer;
    property USU_UsuGer: Integer read GetUSU_UsuGer write SetUSU_UsuGer;
    property USU_ObsInd: string read GetUSU_ObsInd write SetUSU_ObsInd;
    property USU_DatIni: TDate read GetUSU_DatIni write SetUSU_DatIni;
    property USU_DatFin: TDate read GetUSU_DatFin write SetUSU_DatFin;
    property USU_CodDbc: Integer read GetUSU_CodDbc write SetUSU_CodDbc;
    property USU_UsuAlt: Integer read GetUSU_UsuAlt write SetUSU_UsuAlt;
    property USU_UsuRes: Integer read GetUSU_UsuRes write SetUSU_UsuRes;
    property USU_DatAlt: TDate read GetUSU_DatAlt write SetUSU_DatAlt;
    property USU_SeqCot: Integer read GetUSU_SeqCot write SetUSU_SeqCot;

    property OLD_USU_IndFin: string read GetUSU_IndFinOLD write SetUSU_IndFinOLD;
    property OLD_USU_CodEmp: Integer read GetUSU_CodEmpOLD write SetUSU_CodEmpOLD;
    property OLD_USU_DatGer: TDate read GetUSU_DatGerOLD write SetUSU_DatGerOLD;
    property OLD_USU_UsuGer: Integer read GetUSU_UsuGerOLD write SetUSU_UsuGerOLD;
    property OLD_USU_ObsInd: string read GetUSU_ObsIndOLD write SetUSU_ObsIndOLD;
    property OLD_USU_DatIni: TDate read GetUSU_DatIniOLD write SetUSU_DatIniOLD;
    property OLD_USU_DatFin: TDate read GetUSU_DatFinOLD write SetUSU_DatFinOLD;
    property OLD_USU_CodDbc: Integer read GetUSU_CodDbcOLD write SetUSU_CodDbcOLD;
    property OLD_USU_UsuAlt: Integer read GetUSU_UsuAltOLD write SetUSU_UsuAltOLD;
    property OLD_USU_UsuRes: Integer read GetUSU_UsuResOLD write SetUSU_UsuResOLD;
    property OLD_USU_DatAlt: TDate read GetUSU_DatAltOLD write SetUSU_DatAltOLD;
    property OLD_USU_SeqCot: Integer read GetUSU_SeqCotOLD write SetUSU_SeqCotOLD;
  end;

  T510CAD = class(TTabelaUsuario)
  private
    FCodEmp: Integer;
    FCodPor: string;
    FCodUsu: Integer;
    FFimVig: TDate;
    FIniVig: TDate;
    FPerExc: Char;

    function GetCodEmp: Integer;
    function GetCodPor: string;
    function GetCodUsu: Integer;
    function GetFimVig: TDate;
    function GetIniVig: TDate;
    function GetPerExc: Char;

    procedure SetCodEmp(const Value: Integer);
    procedure SetCodPor(const Value: string);
    procedure SetCodUsu(const Value: Integer);
    procedure SetFimVig(const Value: TDate);
    procedure SetIniVig(const Value: TDate);
    procedure SetPerExc(const Value: Char);
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_CodEmp: Integer read GetCodEmp Write SetCodEmp;
    property USU_CodPor: string read GetCodPor Write SetCodPor;
    property USU_CodUsu: Integer read GetCodUsu Write SetCodUsu;
    property USU_IniVig: TDate read GetIniVig Write SetIniVig;
    property USU_FimVig: TDate read GetFimVig Write SetFimVig;
    property USU_PerExc: Char read GetPerExc Write SetPerExc;
  end;

  T670BEM = class(TTabelaPadrao)
  private
    FCodEmp: Word;
    FCodBem: string;
    FDesBem: string;
    FCodTns: string;
    FCodEsp: Word;
    FQtdItm: Word;
    FCodTur: Byte;
    FDatAqi: TDate;
    FDatIcl: TDate;
    FDatIcg: TDate;
    FDatEnt: TDate;
    FFilAqi: Word;
    FFilLoc: Word;
    FDatIin: TDate;
    FDatFin: TDate;
    FDatIac: TDate;
    FDatFac: TDate;
    FDatIig: TDate;
    FDatFig: TDate;
    FDatIag: TDate;
    FDatFag: TDate;
    FCcuExe: string;
    FCodCre: string;
    FCodInv: string;
    FCodPen: Word;
    FDatPen: TDate;
    FCtaRed: Integer;
    FEspDoc: Char;
    FEmpNfc: Word;
    FFilNfc: Word;
    FCodFor: Integer;
    FNomFor: string;
    FCodSnf: string;
    FNumDoc: Integer;
    FMetImo: Double;
    FBemClp: Char;
    FMetCon: Double;
    FIDLIB: Integer;
    FBemPri: Char;

    function GetBemClp: Char;
    function GetCcuExe: string;
    function GetCodBem: string;
    function GetCodCre: string;
    function GetCodEmp: Word;
    function GetCodEsp: Word;
    function GetCodFor: Integer;
    function GetCodInv: string;
    function GetCodPen: Word;
    function GetCodSnf: string;
    function GetCodTns: string;
    function GetCodTur: Byte;
    function GetCtaRed: Integer;
    function GetDatAqi: TDate;
    function GetDatEnt: TDate;
    function GetDatFac: TDate;
    function GetDatFag: TDate;
    function GetDatFig: TDate;
    function GetDatFin: TDate;
    function GetDatIac: TDate;
    function GetDatIag: TDate;
    function GetDatIcg: TDate;
    function GetDatIcl: TDate;
    function GetDatIig: TDate;
    function GetDatIin: TDate;
    function GetDatPen: TDate;
    function GetDesBem: string;
    function GetEmpNfc: Word;
    function GetEspDoc: Char;
    function GetFilAqi: Word;
    function GetFilLoc: Word;
    function GetFilNfc: Word;
    function GetMetCon: Double;
    function GetMetImo: Double;
    function GetNomFor: string;
    function GetNumDoc: Integer;
    function GetQtdItm: Word;
    procedure SetBemClp(const Value: Char);
    procedure SetCcuExe(const Value: string);
    procedure SetCodBem(const Value: string);
    procedure SetCodCre(const Value: string);
    procedure SetCodEmp(const Value: Word);
    procedure SetCodEsp(const Value: Word);
    procedure SetCodFor(const Value: Integer);
    procedure SetCodInv(const Value: string);
    procedure SetCodPen(const Value: Word);
    procedure SetCodSnf(const Value: string);
    procedure SetCodTns(const Value: string);
    procedure SetCodTur(const Value: Byte);
    procedure SetCtaRed(const Value: Integer);
    procedure SetDatAqi(const Value: TDate);
    procedure SetDatEnt(const Value: TDate);
    procedure SetDatFac(const Value: TDate);
    procedure SetDatFag(const Value: TDate);
    procedure SetDatFig(const Value: TDate);
    procedure SetDatFin(const Value: TDate);
    procedure SetDatIac(const Value: TDate);
    procedure SetDatIag(const Value: TDate);
    procedure SetDatIcg(const Value: TDate);
    procedure SetDatIcl(const Value: TDate);
    procedure SetDatIig(const Value: TDate);
    procedure SetDatIin(const Value: TDate);
    procedure SetDatPen(const Value: TDate);
    procedure SetDesBem(const Value: string);
    procedure SetEmpNfc(const Value: Word);
    procedure SetEspDoc(const Value: Char);
    procedure SetFilAqi(const Value: Word);
    procedure SetFilLoc(const Value: Word);
    procedure SetFilNfc(const Value: Word);
    procedure SetMetCon(const Value: Double);
    procedure SetMetImo(const Value: Double);
    procedure SetNomFor(const Value: string);
    procedure SetNumDoc(const Value: Integer);
    procedure SetQtdItm(const Value: Word);
    function GetBemPri: Char;
    function GetIDLIB: Integer;
    procedure SetBemPri(const Value: Char);
    procedure SetIDLIB(const Value: Integer);
  public
    constructor Create();
    destructor Destroy(); override;

    property CodEmp: Word read GetCodEmp write SetCodEmp;
    property CodBem: string read GetCodBem write SetCodBem;
    property DesBem: string read GetDesBem write SetDesBem;
    property CodTns: string read GetCodTns write SetCodTns;
    property CodEsp: Word read GetCodEsp write SetCodEsp;
    property QtdItm: Word read GetQtdItm write SetQtdItm;
    property CodTur: Byte read GetCodTur write SetCodTur;
    property DatAqi: TDate read GetDatAqi write SetDatAqi;
    property DatIcl: TDate read GetDatIcl write SetDatIcl;
    property DatIcg: TDate read GetDatIcg write SetDatIcg;
    property DatEnt: TDate read GetDatEnt write SetDatEnt;
    property FilAqi: Word read GetFilAqi write SetFilAqi;
    property FilLoc: Word read GetFilLoc write SetFilLoc;
    property DatIin: TDate read GetDatIin write SetDatIin;
    property DatFin: TDate read GetDatFin write SetDatFin;
    property DatIac: TDate read GetDatIac write SetDatIac;
    property DatFac: TDate read GetDatFac write SetDatFac;
    property DatIig: TDate read GetDatIig write SetDatIig;
    property DatFig: TDate read GetDatFig write SetDatFig;
    property DatIag: TDate read GetDatIag write SetDatIag;
    property DatFag: TDate read GetDatFag write SetDatFag;
    property CcuExe: string read GetCcuExe write SetCcuExe;
    property CodCre: string read GetCodCre write SetCodCre;
    property CodInv: string read GetCodInv write SetCodInv;
    property CodPen: Word read GetCodPen write SetCodPen;
    property DatPen: TDate read GetDatPen write SetDatPen;
    property CtaRed: Integer read GetCtaRed write SetCtaRed;
    property EspDoc: Char read GetEspDoc write SetEspDoc;
    property EmpNfc: Word read GetEmpNfc write SetEmpNfc;
    property FilNfc: Word read GetFilNfc write SetFilNfc;
    property CodFor: Integer read GetCodFor write SetCodFor;
    property NomFor: string read GetNomFor write SetNomFor;
    property CodSnf: string read GetCodSnf write SetCodSnf;
    property NumDoc: Integer read GetNumDoc write SetNumDoc;
    property USU_MetImo: Double read GetMetImo write SetMetImo;
    property USU_BemClp: Char read GetBemClp write SetBemClp;
    property USU_MetCon: Double read GetMetCon write SetMetCon;
    property USU_IDLIB: Integer read GetIDLIB write SetIDLIB;
    property USU_BemPri: Char read GetBemPri write SetBemPri;
  end;

  T670LIB = class(TTabelaUsuario)
  private
    FIDLIG: Integer;
    FCodEmp: Word;
    FCodBem: string;
    FDesBem: string;

    function GetCodBem: string;
    function GetCodEmp: Word;
    function GetDesBem: string;
    function GetIDLIG: Integer;
    procedure SetCodBem(const Value: string);
    procedure SetCodEmp(const Value: Word);
    procedure SetDesBem(const Value: string);
    procedure SetIDLIG(const Value: Integer);
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_IDLIG: Integer read GetIDLIG write SetIDLIG;
    property USU_CodEmp: Word read GetCodEmp write SetCodEmp;
    property USU_CodBem: string read GetCodBem write SetCodBem;
    property USU_DesBem: string read GetDesBem write SetDesBem;
  end;

  T160MOV = class(TTabelaUsuario)
  private
    FIDCLP: Integer;
    FSeqMov: Integer;
    FCodEmp: Word;
    FCodFil: Word;
    FCodCli: Word;
    FCodTpt: string;
    FNumTit: string;
    FVlrOri: Extended;
    FVctOri: TDate;
    FSitTit: string;
    FVlrRea: Extended;
    FVlrBon: Currency;
    FDatDsc: TDate;

    function GetCODCLI: Word;
    function GetCODEMP: Word;
    function GetCODFIL: Word;
    function GetCODTPT: string;
    function GetDATDSC: TDate;
    function GetIDCLP: Integer;
    function GetNUMTIT: string;
    function GetSEQMOV: Integer;
    function GetSITTIT: string;
    function GetVCTORI: TDate;
    function GetVLRBON: Currency;
    function GetVLRORI: Extended;
    function GetVLRREA: Extended;

    procedure SetCODCLI(const Value: Word);
    procedure SetCODEMP(const Value: Word);
    procedure SetCODFIL(const Value: Word);
    procedure SetCODTPT(const Value: string);
    procedure SetDATDSC(const Value: TDate);
    procedure SetIDCLP(const Value: Integer);
    procedure SetNUMTIT(const Value: string);
    procedure SetSEQMOV(const Value: Integer);
    procedure SetSITTIT(const Value: string);
    procedure SetVCTORI(const Value: TDate);
    procedure SetVLRBON(const Value: Currency);
    procedure SetVLRORI(const Value: Extended);
    procedure SetVLRREA(const Value: Extended);
  public
    constructor Create();
    destructor Destroy(); override;

    procedure GerarMovimento();

    property USU_IDCLP: Integer read GetIDCLP write SetIDCLP;
    property USU_SeqMov: Integer read GetSEQMOV write SetSEQMOV;
    property USU_CodEmp: Word read GetCODEMP write SetCODEMP;
    property USU_CodFil: Word read GetCODFIL write SetCODFIL;
    property USU_CodCli: Word read GetCODCLI write SetCODCLI;
    property USU_CodTpt: string read GetCODTPT write SetCODTPT;
    property USU_NumTit: string read GetNUMTIT write SetNUMTIT;
    property USU_VlrOri: Extended read GetVLRORI write SetVLRORI;
    property USU_VctOri: TDate read GetVCTORI write SetVCTORI;
    property USU_SitTit: string read GetSITTIT write SetSITTIT;
    property USU_VlrRea: Extended read GetVLRREA write SetVLRREA;
    property USU_VlrBon: Currency read GetVLRBON write SetVLRBON;
    property USU_DatDsc: TDate read GetDATDSC write SetDATDSC;
  end;

  T000DBC = class(TTabelaUsuario)
  private
    FUSU_CodDbc: Integer;
    FUSU_NomDbc: string;
    FUSU_DatInd: TDate;
    FUSU_VlrDbc: Double;
    FUSU_SeqCot: Integer;

    FUSU_CodDbcOLD: Integer;
    FUSU_NomDbcOLD: string;
    FUSU_DatIndOLD: TDate;
    FUSU_VlrDbcOLD: Double;
    FUSU_SeqCotOLD: Integer;

    function GetUSU_CodDbc: Integer;
    procedure SetUSU_CodDbc(const pUSU_CodDbc: Integer);
    function GetUSU_NomDbc: string;
    procedure SetUSU_NomDbc(const pUSU_NomDbc: string);
    function GetUSU_DatInd: TDate;
    procedure SetUSU_DatInd(const pUSU_DatInd: TDate);
    function GetUSU_VlrDbc: Double;
    procedure SetUSU_VlrDbc(const pUSU_VlrDbc: Double);
    function GetUSU_SeqCot: Integer;
    procedure SetUSU_SeqCot(const pUSU_SeqCot: Integer);

    function GetUSU_CodDbcOld: Integer;
    procedure SetUSU_CodDbcOld(const pUSU_CodDbc: Integer);
    function GetUSU_NomDbcOld: string;
    procedure SetUSU_NomDbcOld(const pUSU_NomDbc: string);
    function GetUSU_DatIndOld: TDate;
    procedure SetUSU_DatIndOld(const pUSU_DatInd: TDate);
    function GetUSU_VlrDbcOld: Double;
    procedure SetUSU_VlrDbcOld(const pUSU_VlrDbc: Double);
    function GetUSU_SeqCotOld: Integer;
    procedure SetUSU_SeqCotOld(const pUSU_SeqCot: Integer);
  protected
    procedure Registros_OLD(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_CodDbc: Integer read GetUSU_CodDbc write SetUSU_CodDbc;
    property USU_NomDbc: string read GetUSU_NomDbc write SetUSU_NomDbc;
    property USU_DatInd: TDate read GetUSU_DatInd write SetUSU_DatInd;
    property USU_VlrDbc: Double read GetUSU_VlrDbc write SetUSU_VlrDbc;
    property USU_SeqCot: Integer read GetUSU_SeqCot write SetUSU_SeqCot;

    property OLD_USU_CodDbc: Integer read GetUSU_CodDbcOLD write SetUSU_CodDbcOLD;
    property OLD_USU_NomDbc: string read GetUSU_NomDbcOLD write SetUSU_NomDbcOLD;
    property OLD_USU_DatInd: TDate read GetUSU_DatIndOLD write SetUSU_DatIndOLD;
    property OLD_USU_VlrDbc: Double read GetUSU_VlrDbcOLD write SetUSU_VlrDbcOLD;
    property OLD_USU_SeqCot: Integer read GetUSU_SeqCotOLD write SetUSU_SeqCotOLD;
  end;

  T160CTR = class(TTabelaPadrao)
  private
    FCodEmp: Word;
    FCodFIl: Word;
    FNumCtr: Integer;
    FIniVig: TDate;
    FFimVig: TDate;
    FTipCtr: Byte;
    FDatEmi: TDate;
    FVlrTot: Double;
    FNumTit: Word;

    function GetCodEmp: Word;
    function GetCodFIl: Word;
    function GetDatEmi: TDate;
    function GetFimVig: TDate;
    function GetIniVig: TDate;
    function GetNumCtr: Integer;
    function GetNumTit: Word;
    function GetTipCtr: Byte;
    function GetVlrTot: Double;

    procedure SetCodEmp(const Value: Word);
    procedure SetCodFIl(const Value: Word);
    procedure SetDatEmi(const Value: TDate);
    procedure SetFimVig(const Value: TDate);
    procedure SetIniVig(const Value: TDate);
    procedure SetNumCtr(const Value: Integer);
    procedure SetNumTit(const Value: Word);
    procedure SetTipCtr(const Value: Byte);
    procedure SetVlrTot(const Value: Double); //quantidade de titulos
  public
    constructor Create();
    destructor Destroy; override;

    property CodEmp: Word read GetCodEmp write SetCodEmp;
    property CodFil: Word read GetCodFIl write SetCodFIl;
    property NumCtr: Integer read GetNumCtr write SetNumCtr;
    property IniVig: TDate read GetIniVig write SetIniVig;
    property FimVig: TDate read GetFimVig write SetFimVig;
    property TipCtr: Byte read GetTipCtr write SetTipCtr;
    property DatEmi: TDate read GetDatEmi write SetDatEmi;
    property VlrTot: Double read GetVlrTot write SetVlrTot;
    property NumTit: Word read GetNumTit write SetNumTit;
  end;



implementation

uses
  System.Variants, o510tit;

{ T095FOR }

function T095FOR.AdicionarFonecedor(const pCgcCpf: Double): Integer;
var
  i: Integer;
  xAchou: Boolean;
  x095FOR: T095FOR;
begin
  xAchou := False;
  x095FOR := nil;

  for i := 0 to pred(FIterador.Count) do
  begin
    if (pCgcCpf = (T095FOR(FIterador[i]).CgcCpf)) then
    begin
      xAchou := True;
      x095FOR := T095FOR(FIterador[i]);
      Break;
    end;
  end;

  if not(xAchou) then
  begin
    x095FOR := T095FOR.CreatePersonalizado(pCgcCpf);
    x095FOR.CarregarFornecedores;
    FIterador.Add(x095FOR);
  end;

  Result := x095FOR.CodFor;
end;

function T095FOR.BuscarPorCNPJ(const pCNPJ: Double): string;
begin
  FRaiz := FloatToStrF(pCNPJ, ffFixed, 14, 0);
  FRaiz := Copy(FRaiz, 1, 8) + '%';

  Result := 'SELECT E095FOR.CODFOR AS ORIGINAL, 0 AS RAIZ ' +
              'FROM E095FOR ' +
              'WHERE E095FOR.CGCCPF = :CGCCPF ' +
            'UNION ALL ' +
            'SELECT 0 AS ORIGINAL, E095FOR.CODFOR AS RAIZ ' +
              'FROM E095FOR ' +
              'WHERE '+
              'E095FOR.CGCCPF LIKE (:RAIZFOR) AND '+
              'E095FOR.CGCCPF <> :CGCRAIZ ' +
            'ORDER BY RAIZ ASC ';
end;

procedure T095FOR.CarregarFornecedores;
var
  xQuery: THQuery;
  xRaiz: Integer;
begin
  xQuery := THQuery.CreatePersonalizado();
  try
    xQuery.SQL.Clear;
    xQuery.Command := BuscarPorCNPJ(FCgcCpf);

    xQuery.ParamByName('CGCCPF').Value := FCgcCpf;
    xQuery.ParamByName('CGCRAIZ').Value := FCgcCpf;
    xQuery.ParamByName('RAIZFOR').Value := FRaiz;
    xQuery.Open;
    while not(xQuery.Eof) do
    begin
      if (xQuery.FindField('ORIGINAL').AsInteger > 0) then
        FCodFor := xQuery.FindField('ORIGINAL').AsInteger;

      xRaiz := xQuery.FindField('RAIZ').AsInteger;

      if ((FLista.IndexOf(IntToStr(xRaiz)) = -1) and (xRaiz > 0)) then
        FLista.Add(IntToStr(xRaiz));

      xQuery.Next;
    end;

    xQuery.Close;
  finally
    FreeAndNil(xQuery);
  end;
end;

function T095FOR.CodigoDoFornecedor: Integer;
var
  i: Integer;
begin
  Result := 0;

  for i := 0 to pred(FIterador.Count) do
  begin
    if (FCgcCpf = (T095FOR(FIterador[i]).CgcCpf)) then
    begin
      Result := T095FOR(FIterador[i]).CodFor;
      Break;
    end;
  end;
end;

constructor T095FOR.Create;
begin
  inherited Create('E095FOR');

  FLista := TStringList.Create;

  FIterador := TIterador.Create();
  FIterador.indexed := True;
  FIterador.IndexFields(['CODFOR'])
end;

constructor T095FOR.CreatePersonalizado(const pCgcCpf: Double);
begin
  inherited Create('E095FOR');

  Self.CgcCpf := pCgcCpf;
  FLista := TStringList.Create;

  FIterador := TIterador.Create();
end;

destructor T095FOR.Destroy;
begin
  FreeAndNil(FLista);
  FreeAndNil(FIterador);

  inherited;
end;

function T095FOR.GetCgcCpf: Double;
begin
  Result := FCgcCpf;
end;

function T095FOR.GetCodFor: Integer;
begin
  Result := FCodFor;
end;

function T095FOR.ListaFornecedores: string;
var
  i: Integer;
begin
  Result := EmptyStr;

  if (Assigned(FLista)) then
  begin
    i := FIterador.IndexOfFields(Self);

    if (i > -1) then
      Result := T095FOR(FIterador[i]).ListaInternaFornecedores;
  end;

  UltimoCaracter(Result, ',');
end;

function T095FOR.ListaInternaFornecedores: string;
var
  i: Integer;
begin
  Result := EmptyStr;

  for i := 0 to pred(FLista.Count) do
    Result := Result + FLista[i] + ',';
end;

function T095FOR.FornecedoresRaiz(const pCodFor: Integer): string;
begin
  if (pCodFor > 0) then
    FCodFor := pCodFor;

  Result := Self.ListaFornecedores;
end;

procedure T095FOR.SetCgcCpf(const pCgcCpf: Double);
begin
  FCgcCpf := pCgcCpf;
end;

procedure T095FOR.SetCodFor(const pCodFor: Integer);
begin
  FCodFor := pCodFor;
end;

{ THistorico }

constructor THistorico.Create;
begin
  inherited Create('E095HFO');
end;

destructor THistorico.Destroy;
begin
  inherited;
end;

function THistorico.GetAntDsc: Char;
begin
  Result := FAntDsc;
end;

function THistorico.GetCcbFor: string;
begin
  Result := FCcbFor;
end;

function THistorico.GetCodAge: string;
begin
  Result := FCodAge;
end;

function THistorico.GetCodBan: string;
begin
  Result := FCodBan;
end;

function THistorico.GetCodCrp: string;
begin
  Result := FCodCrp;
end;

function THistorico.GetCodCrt: string;
begin
  Result := FCodCrt;
end;

function THistorico.GetCodEmp: Integer;
begin
  Result := FCodEmp;
end;

function THistorico.GetCodFav: Double;
begin
  Result := FCodFav;
end;

function THistorico.GetCodFil: Integer;
begin
  Result := FCodFil;
end;

function THistorico.GetCodFor: Integer;
begin
  Result := FCodFor;
end;

function THistorico.GetCodFpg: Byte;
begin
  Result := FCodFpg;
end;

function THistorico.GetCodPor: string;
begin
  Result := FCodPor;
end;

function THistorico.GetPagDtj: SmallInt;
begin
  Result := FPagDtj;
end;

function THistorico.GetPagDTm: Byte;
begin
  Result := FPagDTm;
end;

function THistorico.GetPagJmm: Double;
begin
  Result := FPagJmm;
end;

function THistorico.GetPagMul: Double;
begin
  Result := FPagMul;
end;

function THistorico.GetPagTir: Char;
begin
  Result := FPagTir;
end;

function THistorico.GetPerDsc: Double;
begin
  Result := FPerDsc;
end;

function THistorico.GetTolDsc: Integer;
begin
  Result := FTolDsc;
end;

procedure THistorico.SetAntDsc(const pAntDsc: Char);
begin
  FAntDsc := pAntDsc;
end;

procedure THistorico.SetCcbFor(const pCcbFor: string);
begin
  FCcbFor := pCcbFor;
end;

procedure THistorico.SetCodAge(const pCodAge: string);
begin
  FCodAge := pCodAge;
end;

procedure THistorico.SetCodBan(const pCodBan: string);
begin
  FCodBan := pCodBan;
end;

procedure THistorico.SetCodCrp(const pCodCrp: string);
begin
  FCodCrp := pCodCrp;
end;

procedure THistorico.SetCodCrt(const pCodCrt: string);
begin
  FCodCrt := pCodCrt;
end;

procedure THistorico.SetCodEmp(const pCodEmp: Integer);
begin
  FCodEmp := pCodEmp;
end;

procedure THistorico.SetCodFav(const pCodFav: Double);
begin
  FCodFav := pCodFav;
end;

procedure THistorico.SetCodFil(const pCodFil: Integer);
begin
  FCodFil := pCodFil;
end;

procedure THistorico.SetCodFor(const pCodFor: Integer);
begin
  FCodFor := pCodFor;
end;

procedure THistorico.SetCodFpg(const pCodFpg: Byte);
begin
  FCodFpg := pCodFpg;
end;

procedure THistorico.SetCodPor(const pCodPor: string);
begin
  FCodPor := pCodPor;
end;

procedure THistorico.SetPagDtj(const pPagDtj: SmallInt);
begin
  FPagDtj := pPagDtj;
end;

procedure THistorico.SetPagDTm(const pPagDTm: Byte);
begin
  FPagDTm := pPagDTm;
end;

procedure THistorico.SetPagJmm(const pPagJmm: Double);
begin
  FPagJmm := pPagJmm;
end;

procedure THistorico.SetPagMul(const pPagMul: Double);
begin
  FPagMul := pPagMul;
end;

procedure THistorico.SetPagTir(const pPagTir: Char);
begin
  FPagTir := pPagTir;
end;

procedure THistorico.SetPerDsc(const pPerDsc: Double);
begin
  FPerDsc := pPerDsc;
end;

procedure THistorico.SetTolDsc(const pTolDsc: Integer);
begin
  FTolDsc := pTolDsc;
end;

{ T030ETC }

constructor T030ETC.Create;
begin
  inherited Create('E030ETC');
end;

function T030ETC.GetCodBan: string;
begin
  Result := FCodBan;
end;

function T030ETC.GetCodTpt: string;
begin
  Result := FCodTpt;
end;

function T030ETC.GetEspBan: string;
begin
  Result := FEspBan;
end;

procedure T030ETC.SetCodBan(const pCodBan: string);
begin
  FCodBan := pCodBan;
end;

procedure T030ETC.SetCodTpt(const pCodTpt: string);
begin
  FCodTpt := pCodTpt;
end;

procedure T030ETC.SetEspBan(const pEspBan: string);
begin
  FEspBan := pEspBan;
end;

{ T160CLP }

constructor T160CLP.Create();
begin
  inherited Create('USU_T160CLP');
end;

destructor T160CLP.Destroy();
begin
  inherited;
end;

function T160CLP.GetUSU_IDIND: Integer;
begin
  Result := FUSU_IDIND;
end;

procedure T160CLP.SetUSU_IDIND(const pUSU_IDIND: Integer);
begin
  FUSU_IDIND := pUSU_IDIND;
end;

function T160CLP.GetUSU_IniVig: TDate;
begin
  Result := FUSU_IniVig;
end;

procedure T160CLP.SetUSU_IniVig(const pUSU_IniVig: TDate);
begin
  FUSU_IniVig := pUSU_IniVig;
end;

function T160CLP.GetUSU_VigFim: TDate;
begin
  Result := FUSU_VigFim;
end;

procedure T160CLP.SetUSU_VigFim(const pUSU_VigFim: TDate);
begin
  FUSU_VigFim := pUSU_VigFim;
end;

function T160CLP.GetUSU_CodEmp: Integer;
begin
  Result := FUSU_CodEmp;
end;

procedure T160CLP.SetUSU_CodEmp(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmp := pUSU_CodEmp;
end;

function T160CLP.GetUSU_CodFil: Integer;
begin
  Result := FUSU_CodFil;
end;

procedure T160CLP.SetUSU_CodFil(const pUSU_CodFil: Integer);
begin
  FUSU_CodFil := pUSU_CodFil;
end;

function T160CLP.GetUSU_CodCli: Integer;
begin
  Result := FUSU_CodCli;
end;

procedure T160CLP.SetUSU_CodCli(const pUSU_CodCli: Integer);
begin
  FUSU_CodCli := pUSU_CodCli;
end;

function T160CLP.GetUSU_NumCtr: Integer;
begin
  Result := FUSU_NumCtr;
end;

procedure T160CLP.SetUSU_NumCtr(const pUSU_NumCtr: Integer);
begin
  FUSU_NumCtr := pUSU_NumCtr;
end;

function T160CLP.GetUSU_VlrCtr: Double;
begin
  Result := FUSU_VlrCtr;
end;

procedure T160CLP.SetUSU_VlrCtr(const pUSU_VlrCtr: Double);
begin
  FUSU_VlrCtr := pUSU_VlrCtr;
end;

function T160CLP.GetUSU_IndFin: string;
begin
  Result := FUSU_IndFin;
end;

procedure T160CLP.SetUSU_IndFin(const pUSU_IndFin: string);
begin
  FUSU_IndFin := pUSU_IndFin;
end;

function T160CLP.GetUSU_CodBem: string;
begin
  Result := FUSU_CodBem;
end;

procedure T160CLP.SetUSU_CodBem(const pUSU_CodBem: string);
begin
  FUSU_CodBem := pUSU_CodBem;
end;

function T160CLP.GetUSU_DatGer: TDate;
begin
  Result := FUSU_DatGer;
end;

procedure T160CLP.SetUSU_DatGer(const pUSU_DatGer: TDate);
begin
  FUSU_DatGer := pUSU_DatGer;
end;

function T160CLP.GetUSU_UsuGer: Integer;
begin
  Result := FUSU_UsuGer;
end;

procedure T160CLP.SetUSU_UsuGer(const pUSU_UsuGer: Integer);
begin
  FUSU_UsuGer := pUSU_UsuGer;
end;

function T160CLP.GetUSU_DatAlt: TDate;
begin
  Result := FUSU_DatAlt;
end;

procedure T160CLP.SetUSU_DatAlt(const pUSU_DatAlt: TDate);
begin
  FUSU_DatAlt := pUSU_DatAlt;
end;

function T160CLP.GetUSU_UsuAlt: Integer;
begin
  Result := FUSU_UsuAlt;
end;

procedure T160CLP.SetUSU_UsuAlt(const pUSU_UsuAlt: Integer);
begin
  FUSU_UsuAlt := pUSU_UsuAlt;
end;

function T160CLP.GetUSU_PerEre: Integer;
begin
  Result := FUSU_PerEre;
end;

procedure T160CLP.SetUSU_PerEre(const pUSU_PerEre: Integer);
begin
  FUSU_PerEre := pUSU_PerEre;
end;

function T160CLP.GetUSU_IDINDOLD: Integer;
begin
  Result := FUSU_IDINDOLD;
end;

procedure T160CLP.SetUSU_IDINDOLD(const pUSU_IDIND: Integer);
begin
  FUSU_IDINDOLD := pUSU_IDIND;
end;

function T160CLP.GetUSU_IniVigOLD: TDate;
begin
  Result := FUSU_IniVigOLD;
end;

procedure T160CLP.SetUSU_IniVigOLD(const pUSU_IniVig: TDate);
begin
  FUSU_IniVigOLD := pUSU_IniVig;
end;

function T160CLP.GetUSU_VigFimOLD: TDate;
begin
  Result := FUSU_VigFimOLD;
end;

procedure T160CLP.SetUSU_VigFimOLD(const pUSU_VigFim: TDate);
begin
  FUSU_VigFimOLD := pUSU_VigFim;
end;

function T160CLP.GetUSU_CodEmpOLD: Integer;
begin
  Result := FUSU_CodEmpOLD;
end;

procedure T160CLP.SetUSU_CodEmpOLD(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmpOLD := pUSU_CodEmp;
end;

function T160CLP.GetUSU_CodFilOLD: Integer;
begin
  Result := FUSU_CodFilOLD;
end;

procedure T160CLP.SetUSU_CodFilOLD(const pUSU_CodFil: Integer);
begin
  FUSU_CodFilOLD := pUSU_CodFil;
end;

function T160CLP.GetUSU_CodCliOLD: Integer;
begin
  Result := FUSU_CodCliOLD;
end;

procedure T160CLP.SetUSU_CodCliOLD(const pUSU_CodCli: Integer);
begin
  FUSU_CodCliOLD := pUSU_CodCli;
end;

function T160CLP.GetUSU_NumCtrOLD: Integer;
begin
  Result := FUSU_NumCtrOLD;
end;

procedure T160CLP.SetUSU_NumCtrOLD(const pUSU_NumCtr: Integer);
begin
  FUSU_NumCtrOLD := pUSU_NumCtr;
end;

function T160CLP.GetUSU_VlrCtrOLD: Double;
begin
  Result := FUSU_VlrCtrOLD;
end;

procedure T160CLP.SetUSU_VlrCtrOLD(const pUSU_VlrCtr: Double);
begin
  FUSU_VlrCtrOLD := pUSU_VlrCtr;
end;

function T160CLP.GetUSU_IndFinOLD: string;
begin
  Result := FUSU_IndFinOLD;
end;

procedure T160CLP.SetUSU_IndFinOLD(const pUSU_IndFin: string);
begin
  FUSU_IndFinOLD := pUSU_IndFin;
end;

function T160CLP.GetUSU_CodBemOLD: string;
begin
  Result := FUSU_CodBemOLD;
end;

procedure T160CLP.SetUSU_CodBemOLD(const pUSU_CodBem: string);
begin
  FUSU_CodBemOLD := pUSU_CodBem;
end;

function T160CLP.GetUSU_DatGerOLD: TDate;
begin
  Result := FUSU_DatGerOLD;
end;

procedure T160CLP.SetUSU_DatGerOLD(const pUSU_DatGer: TDate);
begin
  FUSU_DatGerOLD := pUSU_DatGer;
end;

function T160CLP.GetUSU_UsuGerOLD: Integer;
begin
  Result := FUSU_UsuGerOLD;
end;

procedure T160CLP.SetUSU_UsuGerOLD(const pUSU_UsuGer: Integer);
begin
  FUSU_UsuGerOLD := pUSU_UsuGer;
end;

function T160CLP.GetUSU_DatAltOLD: TDate;
begin
  Result := FUSU_DatAltOLD;
end;

procedure T160CLP.SetUSU_DatAltOLD(const pUSU_DatAlt: TDate);
begin
  FUSU_DatAltOLD := pUSU_DatAlt;
end;

function T160CLP.GetUSU_UsuAltOLD: Integer;
begin
  Result := FUSU_UsuAltOLD;
end;

procedure T160CLP.SetUSU_UsuAltOLD(const pUSU_UsuAlt: Integer);
begin
  FUSU_UsuAltOLD := pUSU_UsuAlt;
end;

function T160CLP.GetUSU_PerEreOLD: Integer;
begin
  Result := FUSU_PerEreOLD;
end;

procedure T160CLP.SetUSU_PerEreOLD(const pUSU_PerEre: Integer);
begin
  FUSU_PerEreOLD := pUSU_PerEre;
end;

procedure T160CLP.Registros_OLD();
begin
  FUSU_IDINDOLD := FUSU_IDIND;
  FUSU_IniVigOLD := FUSU_IniVig;
  FUSU_VigFimOLD := FUSU_VigFim;
  FUSU_CodEmpOLD := FUSU_CodEmp;
  FUSU_CodFilOLD := FUSU_CodFil;
  FUSU_CodCliOLD := FUSU_CodCli;
  FUSU_NumCtrOLD := FUSU_NumCtr;
  FUSU_VlrCtrOLD := FUSU_VlrCtr;
  FUSU_IndFinOLD := FUSU_IndFin;
  FUSU_CodBemOLD := FUSU_CodBem;
  FUSU_DatGerOLD := FUSU_DatGer;
  FUSU_UsuGerOLD := FUSU_UsuGer;
  FUSU_DatAltOLD := FUSU_DatAlt;
  FUSU_UsuAltOLD := FUSU_UsuAlt;
  FUSU_PerEreOLD := FUSU_PerEre;
end;

{ T090IND }

constructor T090IND.Create();
begin
  inherited Create('USU_T090IND');
end;

destructor T090IND.Destroy();
begin
  inherited;
end;

function T090IND.GetUSU_IndFin: string;
begin
  Result := FUSU_IndFin;
end;

procedure T090IND.SetUSU_IndFin(const pUSU_IndFin: string);
begin
  FUSU_IndFin := pUSU_IndFin;
end;

function T090IND.GetUSU_CodEmp: Integer;
begin
  Result := FUSU_CodEmp;
end;

procedure T090IND.SetUSU_CodEmp(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmp := pUSU_CodEmp;
end;

function T090IND.GetUSU_DatGer: TDate;
begin
  Result := FUSU_DatGer;
end;

procedure T090IND.SetUSU_DatGer(const pUSU_DatGer: TDate);
begin
  FUSU_DatGer := pUSU_DatGer;
end;

function T090IND.GetUSU_UsuGer: Integer;
begin
  Result := FUSU_UsuGer;
end;

procedure T090IND.SetUSU_UsuGer(const pUSU_UsuGer: Integer);
begin
  FUSU_UsuGer := pUSU_UsuGer;
end;

function T090IND.GetUSU_ObsInd: string;
begin
  Result := FUSU_ObsInd;
end;

procedure T090IND.SetUSU_ObsInd(const pUSU_ObsInd: string);
begin
  FUSU_ObsInd := pUSU_ObsInd;
end;

function T090IND.GetUSU_DatIni: TDate;
begin
  Result := FUSU_DatIni;
end;

procedure T090IND.SetUSU_DatIni(const pUSU_DatIni: TDate);
begin
  FUSU_DatIni := pUSU_DatIni;
end;

function T090IND.GetUSU_DatFin: TDate;
begin
  Result := FUSU_DatFin;
end;

procedure T090IND.SetUSU_DatFin(const pUSU_DatFin: TDate);
begin
  FUSU_DatFin := pUSU_DatFin;
end;

function T090IND.GetUSU_CodDbc: Integer;
begin
  Result := FUSU_CodDbc;
end;

procedure T090IND.SetUSU_CodDbc(const pUSU_CodDbc: Integer);
begin
  FUSU_CodDbc := pUSU_CodDbc;
end;

function T090IND.GetUSU_UsuAlt: Integer;
begin
  Result := FUSU_UsuAlt;
end;

procedure T090IND.SetUSU_UsuAlt(const pUSU_UsuAlt: Integer);
begin
  FUSU_UsuAlt := pUSU_UsuAlt;
end;

function T090IND.GetUSU_UsuRes: Integer;
begin
  Result := FUSU_UsuRes;
end;

procedure T090IND.SetUSU_UsuRes(const pUSU_UsuRes: Integer);
begin
  FUSU_UsuRes := pUSU_UsuRes;
end;

function T090IND.GetUSU_DatAlt: TDate;
begin
  Result := FUSU_DatAlt;
end;

procedure T090IND.SetUSU_DatAlt(const pUSU_DatAlt: TDate);
begin
  FUSU_DatAlt := pUSU_DatAlt;
end;

function T090IND.GetUSU_SeqCot: Integer;
begin
  Result := FUSU_SeqCot;
end;

procedure T090IND.SetUSU_SeqCot(const pUSU_SeqCot: Integer);
begin
  FUSU_SeqCot := pUSU_SeqCot;
end;

function T090IND.GetUSU_IndFinOLD: string;
begin
  Result := FUSU_IndFinOLD;
end;

procedure T090IND.SetUSU_IndFinOLD(const pUSU_IndFin: string);
begin
  FUSU_IndFinOLD := pUSU_IndFin;
end;

function T090IND.GetUSU_CodEmpOLD: Integer;
begin
  Result := FUSU_CodEmpOLD;
end;

procedure T090IND.SetUSU_CodEmpOLD(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmpOLD := pUSU_CodEmp;
end;

function T090IND.GetUSU_DatGerOLD: TDate;
begin
  Result := FUSU_DatGerOLD;
end;

procedure T090IND.SetUSU_DatGerOLD(const pUSU_DatGer: TDate);
begin
  FUSU_DatGerOLD := pUSU_DatGer;
end;

function T090IND.GetUSU_UsuGerOLD: Integer;
begin
  Result := FUSU_UsuGerOLD;
end;

procedure T090IND.SetUSU_UsuGerOLD(const pUSU_UsuGer: Integer);
begin
  FUSU_UsuGerOLD := pUSU_UsuGer;
end;

function T090IND.GetUSU_ObsIndOLD: string;
begin
  Result := FUSU_ObsIndOLD;
end;

procedure T090IND.SetUSU_ObsIndOLD(const pUSU_ObsInd: string);
begin
  FUSU_ObsIndOLD := pUSU_ObsInd;
end;

function T090IND.GetUSU_DatIniOLD: TDate;
begin
  Result := FUSU_DatIniOLD;
end;

procedure T090IND.SetUSU_DatIniOLD(const pUSU_DatIni: TDate);
begin
  FUSU_DatIniOLD := pUSU_DatIni;
end;

function T090IND.GetUSU_DatFinOLD: TDate;
begin
  Result := FUSU_DatFinOLD;
end;

procedure T090IND.SetUSU_DatFinOLD(const pUSU_DatFin: TDate);
begin
  FUSU_DatFinOLD := pUSU_DatFin;
end;

function T090IND.GetUSU_CodDbcOLD: Integer;
begin
  Result := FUSU_CodDbcOLD;
end;

procedure T090IND.SetUSU_CodDbcOLD(const pUSU_CodDbc: Integer);
begin
  FUSU_CodDbcOLD := pUSU_CodDbc;
end;

function T090IND.GetUSU_UsuAltOLD: Integer;
begin
  Result := FUSU_UsuAltOLD;
end;

procedure T090IND.SetUSU_UsuAltOLD(const pUSU_UsuAlt: Integer);
begin
  FUSU_UsuAltOLD := pUSU_UsuAlt;
end;

function T090IND.GetUSU_UsuResOLD: Integer;
begin
  Result := FUSU_UsuResOLD;
end;

procedure T090IND.SetUSU_UsuResOLD(const pUSU_UsuRes: Integer);
begin
  FUSU_UsuResOLD := pUSU_UsuRes;
end;

function T090IND.GetUSU_DatAltOLD: TDate;
begin
  Result := FUSU_DatAltOLD;
end;

procedure T090IND.SetUSU_DatAltOLD(const pUSU_DatAlt: TDate);
begin
  FUSU_DatAltOLD := pUSU_DatAlt;
end;

function T090IND.GetUSU_SeqCotOLD: Integer;
begin
  Result := FUSU_SeqCotOLD;
end;

procedure T090IND.SetUSU_SeqCotOLD(const pUSU_SeqCot: Integer);
begin
  FUSU_SeqCotOLD := pUSU_SeqCot;
end;

procedure T090IND.Registros_OLD();
begin
  FUSU_IndFinOLD := FUSU_IndFin;
  FUSU_CodEmpOLD := FUSU_CodEmp;
  FUSU_DatGerOLD := FUSU_DatGer;
  FUSU_UsuGerOLD := FUSU_UsuGer;
  FUSU_ObsIndOLD := FUSU_ObsInd;
  FUSU_DatIniOLD := FUSU_DatIni;
  FUSU_DatFinOLD := FUSU_DatFin;
  FUSU_CodDbcOLD := FUSU_CodDbc;
  FUSU_UsuAltOLD := FUSU_UsuAlt;
  FUSU_UsuResOLD := FUSU_UsuRes;
  FUSU_DatAltOLD := FUSU_DatAlt;
  FUSU_SeqCotOLD := FUSU_SeqCot;
end;

{ T510CAD }

constructor T510CAD.Create;
begin
  inherited Create('USU_T510CAD');

  Self.BlockProperty(['USU_ID']);
end;

destructor T510CAD.Destroy;
begin
  inherited;
end;

function T510CAD.GetCodEmp: Integer;
begin
  Result := FCodEmp;
end;

function T510CAD.GetCodPor: string;
begin
  Result := FCodPor;
end;

function T510CAD.GetCodUsu: Integer;
begin
  Result := FCodUsu;
end;

function T510CAD.GetFimVig: TDate;
begin
  Result := FFimVig;
end;

function T510CAD.GetIniVig: TDate;
begin
  Result := FIniVig;
end;

function T510CAD.GetPerExc: Char;
begin
  Result := FPerExc;
end;

procedure T510CAD.SetCodEmp(const Value: Integer);
begin
  FCodEmp := Value;
end;

procedure T510CAD.SetCodPor(const Value: string);
begin
  FCodPor := Value;
end;

procedure T510CAD.SetCodUsu(const Value: Integer);
begin
  FCodUsu := Value;
end;

procedure T510CAD.SetFimVig(const Value: TDate);
begin
  FFimVig := Value;
end;

procedure T510CAD.SetIniVig(const Value: TDate);
begin
  FIniVig := Value;
end;

procedure T510CAD.SetPerExc(const Value: Char);
begin
  FPerExc := Value;
end;

{ T670BEM }

constructor T670BEM.Create;
begin
  inherited Create('E670BEM');
end;

destructor T670BEM.Destroy;
begin
  inherited;
end;

function T670BEM.GetBemClp: Char;
begin
  Result := FBemClp;
end;

function T670BEM.GetBemPri: Char;
begin
  Result := FBemPri;
end;

function T670BEM.GetCcuExe: string;
begin
  Result := FCcuExe;
end;

function T670BEM.GetCodBem: string;
begin
  Result := FCodBem;
end;

function T670BEM.GetCodCre: string;
begin
  Result := FCodCre;
end;

function T670BEM.GetCodEmp: Word;
begin
  Result := FCodEmp;
end;

function T670BEM.GetCodEsp: Word;
begin
  Result := FCodEsp;
end;

function T670BEM.GetCodFor: Integer;
begin
  Result := FCodFor;
end;

function T670BEM.GetCodInv: string;
begin
  Result := FCodInv;
end;

function T670BEM.GetCodPen: Word;
begin
  Result := FCodPen;
end;

function T670BEM.GetCodSnf: string;
begin
  Result := FCodSnf;
end;

function T670BEM.GetCodTns: string;
begin
  Result := FCodTns;
end;

function T670BEM.GetCodTur: Byte;
begin
  Result := FCodTur;
end;

function T670BEM.GetCtaRed: Integer;
begin
  Result := FCtaRed;
end;

function T670BEM.GetDatAqi: TDate;
begin
  Result := FDatAqi;
end;

function T670BEM.GetDatEnt: TDate;
begin
  Result := FDatEnt;
end;

function T670BEM.GetDatFac: TDate;
begin
  Result := FDatFac;
end;

function T670BEM.GetDatFag: TDate;
begin
  Result := FDatFag;
end;

function T670BEM.GetDatFig: TDate;
begin
  Result := FDatFig;
end;

function T670BEM.GetDatFin: TDate;
begin
  Result := FDatFin;
end;

function T670BEM.GetDatIac: TDate;
begin
  Result := FDatIac;
end;

function T670BEM.GetDatIag: TDate;
begin
  Result := FDatIag;
end;

function T670BEM.GetDatIcg: TDate;
begin
  Result := FDatIcg;
end;

function T670BEM.GetDatIcl: TDate;
begin
  Result := FDatIcl;
end;

function T670BEM.GetDatIig: TDate;
begin
  Result := FDatIig;
end;

function T670BEM.GetDatIin: TDate;
begin
  Result := FDatIin;
end;

function T670BEM.GetDatPen: TDate;
begin
  Result := FDatPen;
end;

function T670BEM.GetDesBem: string;
begin
  Result := FDesBem;
end;

function T670BEM.GetEmpNfc: Word;
begin
  Result := FEmpNfc;
end;

function T670BEM.GetEspDoc: Char;
begin
  Result := FEspDoc;
end;

function T670BEM.GetFilAqi: Word;
begin
  Result := FFilAqi;
end;

function T670BEM.GetFilLoc: Word;
begin
  Result := FFilLoc;
end;

function T670BEM.GetFilNfc: Word;
begin
  Result := FFilNfc;
end;

function T670BEM.GetIDLIB: Integer;
begin
  Result := FIDLIB;
end;

function T670BEM.GetMetCon: Double;
begin
  Result := FMetCon;
end;

function T670BEM.GetMetImo: Double;
begin
  Result := FMetImo;
end;

function T670BEM.GetNomFor: string;
begin
  Result := FNomFor;
end;

function T670BEM.GetNumDoc: Integer;
begin
  Result := FNumDoc;
end;

function T670BEM.GetQtdItm: Word;
begin
  Result := FQtdItm;
end;

procedure T670BEM.SetBemClp(const Value: Char);
begin
  FBemClp := Value;
end;

procedure T670BEM.SetBemPri(const Value: Char);
begin
  FBemPri := Value;
end;

procedure T670BEM.SetCcuExe(const Value: string);
begin
  FCcuExe := Value;
end;

procedure T670BEM.SetCodBem(const Value: string);
begin
  FCodBem := Value;
end;

procedure T670BEM.SetCodCre(const Value: string);
begin
  FCodCre := Value;
end;

procedure T670BEM.SetCodEmp(const Value: Word);
begin
  FCodEmp := Value;
end;

procedure T670BEM.SetCodEsp(const Value: Word);
begin
  FCodEsp := Value;
end;

procedure T670BEM.SetCodFor(const Value: Integer);
begin
  FCodFor := Value;
end;

procedure T670BEM.SetCodInv(const Value: string);
begin
  FCodInv := Value;
end;

procedure T670BEM.SetCodPen(const Value: Word);
begin
  FCodPen := Value;
end;

procedure T670BEM.SetCodSnf(const Value: string);
begin
  FCodSnf := Value;
end;

procedure T670BEM.SetCodTns(const Value: string);
begin
  FCodTns := Value;
end;

procedure T670BEM.SetCodTur(const Value: Byte);
begin
  FCodTur := Value;
end;

procedure T670BEM.SetCtaRed(const Value: Integer);
begin
  FCtaRed := Value;
end;

procedure T670BEM.SetDatAqi(const Value: TDate);
begin
  FDatAqi := Value;
end;

procedure T670BEM.SetDatEnt(const Value: TDate);
begin
  FDatEnt := Value;
end;

procedure T670BEM.SetDatFac(const Value: TDate);
begin
  FDatFac := Value;
end;

procedure T670BEM.SetDatFag(const Value: TDate);
begin
  FDatFag := Value;
end;

procedure T670BEM.SetDatFig(const Value: TDate);
begin
  FDatFig := Value;
end;

procedure T670BEM.SetDatFin(const Value: TDate);
begin
  FDatFin := Value;
end;

procedure T670BEM.SetDatIac(const Value: TDate);
begin
  FDatIac := Value;
end;

procedure T670BEM.SetDatIag(const Value: TDate);
begin
  FDatIag := Value;
end;

procedure T670BEM.SetDatIcg(const Value: TDate);
begin
  FDatIcg := Value;
end;

procedure T670BEM.SetDatIcl(const Value: TDate);
begin
  FDatIcl := Value;
end;

procedure T670BEM.SetDatIig(const Value: TDate);
begin
  FDatIig := Value;
end;

procedure T670BEM.SetDatIin(const Value: TDate);
begin
  FDatIin := Value;
end;

procedure T670BEM.SetDatPen(const Value: TDate);
begin
  FDatPen := Value;
end;

procedure T670BEM.SetDesBem(const Value: string);
begin
  FDesBem := Value;
end;

procedure T670BEM.SetEmpNfc(const Value: Word);
begin
  FEmpNfc := Value;
end;

procedure T670BEM.SetEspDoc(const Value: Char);
begin
  FEspDoc := Value;
end;

procedure T670BEM.SetFilAqi(const Value: Word);
begin
  FFilAqi := Value;
end;

procedure T670BEM.SetFilLoc(const Value: Word);
begin
  FFilLoc := Value;
end;

procedure T670BEM.SetFilNfc(const Value: Word);
begin
  FFilNfc := Value;
end;

procedure T670BEM.SetIDLIB(const Value: Integer);
begin
  FIDLIB := Value;
end;

procedure T670BEM.SetMetCon(const Value: Double);
begin
  FMetCon := Value;
end;

procedure T670BEM.SetMetImo(const Value: Double);
begin
  FMetImo := Value;
end;

procedure T670BEM.SetNomFor(const Value: string);
begin
  FNomFor := Value;
end;

procedure T670BEM.SetNumDoc(const Value: Integer);
begin
  FNumDoc := Value;
end;

procedure T670BEM.SetQtdItm(const Value: Word);
begin
  FQtdItm := Value;
end;

{ T670LIB }

constructor T670LIB.Create;
begin
  inherited Create('USU_T670LIB');
end;

destructor T670LIB.Destroy;
begin
  inherited;
end;

function T670LIB.GetCodBem: string;
begin
  Result := FCodBem;
end;

function T670LIB.GetCodEmp: Word;
begin
  Result := FCodEmp;
end;

function T670LIB.GetDesBem: string;
begin
  Result := FDesBem;
end;

function T670LIB.GetIDLIG: Integer;
begin
  Result := FIDLIG;
end;

procedure T670LIB.SetCodBem(const Value: string);
begin
  FCodBem := Value;
end;

procedure T670LIB.SetCodEmp(const Value: Word);
begin
  FCodEmp := Value;
end;

procedure T670LIB.SetDesBem(const Value: string);
begin
  FDesBem := Value;
end;

procedure T670LIB.SetIDLIG(const Value: Integer);
begin
  FIDLIG := Value;
end;

{ T160MOV }

constructor T160MOV.Create;
begin
  inherited Create('USU_T160MOV');
end;

destructor T160MOV.Destroy;
begin
  inherited;
end;

procedure T160MOV.GerarMovimento;
var
  xReajuste: Double;
  xBonificacao: Double;
begin
  xReajuste := Self.USU_VlrRea;
  xBonificacao := Self.USU_VlrBon;

  Self.PropertyForSelect(['USU_IDCLP','USU_CODEMP','USU_CODFIL','USU_NUMTIT','USU_CODTPT'], True);

  if (Self.Execute(etSelect)) then
  begin
    Self.AddToCommand(SetOperator(['USU_IDCLP','USU_CODEMP','USU_CODFIL','USU_NUMTIT','USU_CODTPT'],
                        [IntToStr(Self.USU_IDCLP), IntToStr(USU_CodEmp), IntToStr(USU_CodFil),
                         QuotedStr(Self.USU_NumTit), QuotedStr(Self.USU_CodTpt)], True), False);
    Self.USU_SeqMov := GenerateID('USU_SeqMov');
  end
  else
    Self.USU_SeqMov := 1;

  Self.USU_VlrRea := xReajuste;
  Self.USU_VlrBon := xBonificacao;
  Self.Execute(estInsert);
end;

function T160MOV.GetCODCLI: Word;
begin
  Result := FCodCli;
end;

function T160MOV.GetCODEMP: Word;
begin
  Result := FCodEmp;
end;

function T160MOV.GetCODFIL: Word;
begin
  Result := FCodFil;
end;

function T160MOV.GetCODTPT: string;
begin
  Result := FCodTpt;
end;

function T160MOV.GetDATDSC: TDate;
begin
  Result := FDatDsc;
end;

function T160MOV.GetIDCLP: Integer;
begin
  Result := FIDCLP;
end;

function T160MOV.GetNUMTIT: string;
begin
  Result := FNumTit;
end;

function T160MOV.GetSEQMOV: Integer;
begin
  Result := FSeqMov;
end;

function T160MOV.GetSITTIT: string;
begin
  Result := FSitTit;
end;

function T160MOV.GetVCTORI: TDate;
begin
  Result := FVctOri;
end;

function T160MOV.GetVLRBON: Currency;
begin
  Result := FVlrBon;
end;

function T160MOV.GetVLRORI: Extended;
begin
  Result := FVlrOri;
end;

function T160MOV.GetVLRREA: Extended;
begin
  Result := FVlrRea;
end;

procedure T160MOV.SetCODCLI(const Value: Word);
begin
  FCodCli := Value;
end;

procedure T160MOV.SetCODEMP(const Value: Word);
begin
  FCodEmp := Value;
end;

procedure T160MOV.SetCODFIL(const Value: Word);
begin
  FCodFil := Value;
end;

procedure T160MOV.SetCODTPT(const Value: string);
begin
  FCodTpt := Value;
end;

procedure T160MOV.SetDATDSC(const Value: TDate);
begin
  FDatDsc := Value;
end;

procedure T160MOV.SetIDCLP(const Value: Integer);
begin
  FIDCLP := Value;
end;

procedure T160MOV.SetNUMTIT(const Value: string);
begin
  FNumTit := Value;
end;

procedure T160MOV.SetSEQMOV(const Value: Integer);
begin
  FSeqMov := Value;
end;

procedure T160MOV.SetSITTIT(const Value: string);
begin
  FSitTit := Value;
end;

procedure T160MOV.SetVCTORI(const Value: TDate);
begin
  FVctOri := Value;
end;

procedure T160MOV.SetVLRBON(const Value: Currency);
begin
  FVlrBon := Value;
end;

procedure T160MOV.SetVLRORI(const Value: Extended);
begin
  FVlrOri := Value;
end;

procedure T160MOV.SetVLRREA(const Value: Extended);
begin
  FVlrRea := Value;
end;

{ T000DBC }

constructor T000DBC.Create();
begin
  inherited Create('USU_T000DBC');

  BlockProperty(['USU_ID']);
end;

destructor T000DBC.Destroy();
begin
  inherited;
end;
function T000DBC.GetUSU_CodDbc: Integer;
begin
  Result := FUSU_CodDbc;
end;

procedure T000DBC.SetUSU_CodDbc(const pUSU_CodDbc: Integer);
begin
  FUSU_CodDbc := pUSU_CodDbc;
end;

function T000DBC.GetUSU_NomDbc: string;
begin
  Result := FUSU_NomDbc;
end;

procedure T000DBC.SetUSU_NomDbc(const pUSU_NomDbc: string);
begin
  FUSU_NomDbc := pUSU_NomDbc;
end;

function T000DBC.GetUSU_DatInd: TDate;
begin
  Result := FUSU_DatInd;
end;

procedure T000DBC.SetUSU_DatInd(const pUSU_DatInd: TDate);
begin
  FUSU_DatInd := pUSU_DatInd;
end;

function T000DBC.GetUSU_VlrDbc: Double;
begin
  Result := FUSU_VlrDbc;
end;

procedure T000DBC.SetUSU_VlrDbc(const pUSU_VlrDbc: Double);
begin
  FUSU_VlrDbc := pUSU_VlrDbc;
end;

function T000DBC.GetUSU_SeqCot: Integer;
begin
  Result := FUSU_SeqCot;
end;

procedure T000DBC.SetUSU_SeqCot(const pUSU_SeqCot: Integer);
begin
  FUSU_SeqCot := pUSU_SeqCot;
end;

function T000DBC.GetUSU_CodDbcOLD: Integer;
begin
  Result := FUSU_CodDbcOLD;
end;

procedure T000DBC.SetUSU_CodDbcOLD(const pUSU_CodDbc: Integer);
begin
  FUSU_CodDbcOLD := pUSU_CodDbc;
end;

function T000DBC.GetUSU_NomDbcOLD: string;
begin
  Result := FUSU_NomDbcOLD;
end;

procedure T000DBC.SetUSU_NomDbcOLD(const pUSU_NomDbc: string);
begin
  FUSU_NomDbcOLD := pUSU_NomDbc;
end;

function T000DBC.GetUSU_DatIndOLD: TDate;
begin
  Result := FUSU_DatIndOLD;
end;

procedure T000DBC.SetUSU_DatIndOLD(const pUSU_DatInd: TDate);
begin
  FUSU_DatIndOLD := pUSU_DatInd;
end;

function T000DBC.GetUSU_VlrDbcOLD: Double;
begin
  Result := FUSU_VlrDbcOLD;
end;

procedure T000DBC.SetUSU_VlrDbcOLD(const pUSU_VlrDbc: Double);
begin
  FUSU_VlrDbcOLD := pUSU_VlrDbc;
end;

function T000DBC.GetUSU_SeqCotOLD: Integer;
begin
  Result := FUSU_SeqCotOLD;
end;

procedure T000DBC.SetUSU_SeqCotOLD(const pUSU_SeqCot: Integer);
begin
  FUSU_SeqCotOLD := pUSU_SeqCot;
end;

procedure T000DBC.Registros_OLD();
begin
  FUSU_CodDbcOLD := FUSU_CodDbc;
  FUSU_NomDbcOLD := FUSU_NomDbc;
  FUSU_DatIndOLD := FUSU_DatInd;
  FUSU_VlrDbcOLD := FUSU_VlrDbc;
  FUSU_SeqCotOLD := FUSU_SeqCot;
end;

{ T160CTR }

constructor T160CTR.Create;
begin
  inherited Create('E160CTR');
end;

destructor T160CTR.Destroy;
begin
  inherited;
end;

function T160CTR.GetCodEmp: Word;
begin
  Result := FCodEmp;
end;

function T160CTR.GetCodFIl: Word;
begin
  Result := FCodFIl;
end;

function T160CTR.GetDatEmi: TDate;
begin
  Result := FDatEmi;
end;

function T160CTR.GetFimVig: TDate;
begin
  Result := FFimVig;
end;

function T160CTR.GetIniVig: TDate;
begin
  Result := FIniVig;
end;

function T160CTR.GetNumCtr: Integer;
begin
  Result := FNumCtr;
end;

function T160CTR.GetNumTit: Word;
begin
  Result := FNumTit;
end;

function T160CTR.GetTipCtr: Byte;
begin
  Result := FTipCtr;
end;

function T160CTR.GetVlrTot: Double;
begin
  Result := FVlrTot;
end;

procedure T160CTR.SetCodEmp(const Value: Word);
begin
  FCodEmp := Value;
end;

procedure T160CTR.SetCodFIl(const Value: Word);
begin
  FCodFIl := Value;
end;

procedure T160CTR.SetDatEmi(const Value: TDate);
begin
  FDatEmi := Value;
end;

procedure T160CTR.SetFimVig(const Value: TDate);
begin
  FFimVig := Value;
end;

procedure T160CTR.SetIniVig(const Value: TDate);
begin
  FIniVig := Value;
end;

procedure T160CTR.SetNumCtr(const Value: Integer);
begin
  FNumCtr := Value;
end;

procedure T160CTR.SetNumTit(const Value: Word);
begin
  FNumTit := Value;
end;

procedure T160CTR.SetTipCtr(const Value: Byte);
begin
  FTipCtr := Value;
end;

procedure T160CTR.SetVlrTot(const Value: Double);
begin
  FVlrTot := Value;
end;

end.
