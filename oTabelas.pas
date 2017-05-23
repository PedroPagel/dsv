unit oTabelas;

interface

uses
  System.Classes, oTitulo, oLayout, Data.SqlExpr, oQuery, oBase, System.SysUtils,
  Data.Db, System.Contnrs, wsCPATitulos, System.DateUtils;

type
  T510TIT = class;
  T510AGE = class;

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

  TIteradorEspecieTitulo = class(TIterador)
  private
    F030ETC: T030ETC;
    FCodBan: string;
    FCodPor: string;

    function GetCodBan: string;
    procedure SetCodBan(const pCodBan: string);
  public
    constructor Create(const p510AGE: T510AGE);

    function CarregarEspecie(const pEspBan: string): string;

    property CodBan: string read GetCodBan write SetCodBan;
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

  TIteradorHistoricoFornecedor = class(TIterador)
  public
    function BuscarHistoricoFornecedor(const pTitulo: T501TCP) : THistorico;
  end;

  TTituloDDA = class(T501TCP)
  private
    F510TIT: T510TIT;
    FListaHistorico: TIterador;
    FFilial: TFilial;
    FNomArq: string;
    FIteradorHistoricoFornecedor: TIteradorHistoricoFornecedor;

    function GetFilial: TFilial;
    function VerificarCodigoDeBarras(): Boolean;
    function VerificarTituloArmazenado(): Boolean;
    function VerificarContabilizacao(): Boolean;
    procedure SetFilial(const pFilial: TFilial);
  public
    constructor Create();
    destructor Destroy(); override;

    procedure Consistir();
    procedure Processar();
    procedure Preparar();
    procedure GerarLog();

    procedure AddLog(const pLog: string);
    procedure Anexar(const p510TIT: T510TIT);

    property Filial: TFilial read GetFilial write SetFilial;
  end;

  TIteradorTitulos = class(TIterador)
  private
    FFilial: TFilial;

    function GetFilial: TFilial;
    procedure SetFilial(const pFilial: TFilial);
  public
    property Filial: TFilial read GetFilial write SetFilial;
  end;

  TIteradorAtualizarTitulos = class(TIteradorTitulos)
  public
    procedure Atualizar();
  end;

  TIteradorCriacaoTitulos = class(TIteradorTitulos)
  private
    procedure GerarLogs(const pRetorno: titulosGravarTitulosCPOutResultado; const pPosicao: Integer);
  public
    procedure Criar();
  end;

  T510TIT = class(TTabelaUsuario)
  private
    FIdArm: Integer;
    FCodEmp: Integer;
    FCodFil: Integer;
    FCodTpt: string;
    FNumTit: string;
    FCodBar: string;
    FSitTit: string;
    FVlrOri: Currency;
    FVlrJrs: Currency;
    FVlrDsc: Currency;
    FVctOri: TDate;
    FDatDsc: TDate;
    FTipFor: string;
    FLayout: TLayout;
    FCgcCpf: Double;
    FCodFor: Integer;
    FSitArm: String;
    FDatEmi: TDate;
    FLinhaValida: Boolean;
    FCarregado: Boolean;
    FLogTit: string;
    FTituloDDA: TTituloDDA;

    procedure SetIdArm(const pIdArm: Integer);
    procedure SetCodEmp(const pCodEmp: Integer);
    procedure SetCodFil(const pCodFil: Integer);
    procedure SetCodTpt(const pCodTpt: string);
    procedure SetNumTit(const pNumTit: string);
    procedure SetCodBar(const pCodBar: string);
    procedure SetSitTit(const pSitTit: string);
    procedure SetVlrOri(const pVlrOri: Currency);
    procedure SetVlrJrs(const pVlrJrs: Currency);
    procedure SetVlrDsc(const pVlrDsc: Currency);
    procedure SetVctOri(const pVctOri: TDate);
    procedure SetDatDsc(const pDatDsc: TDate);
    procedure SetTipFor(const pTipFor: string);
    procedure SetCgcCpf(const pCgcCpf: Double);
    procedure SetCodFor(const pCodFor: Integer);
    procedure SetSitArm(const pSitArm: string);
    procedure SetDatEmi(const pDatEmi: TDate);

    function GetIdArm: Integer;
    function GetCodEmp: Integer;
    function GetCodFil: Integer;
    function GetCodBar: string;
    function GetCodTpt: string;
    function GetTipFor: string;
    function GetDatDsc: TDate;
    function GetNumTit: string;
    function GetSitTit: string;
    function GetVctOri: TDate;
    function GetVlrDsc: Currency;
    function GetVlrJrs: Currency;
    function GetVlrOri: Currency;
    function GetCgcCpf: Double;
    function GetCodFor: Integer;

    function GerSitArm: string;
    function GetDatEmi: TDate;
    function GetLogTit: string;
    procedure SetLogTit(const pLogTit: string);
  public
    constructor Create(const pLinha: string);
    constructor CreateCarregado(const pUsaID: Boolean = False);
    destructor Destroy(); override;

    function LinhaValida(): Boolean;
    function Carregado: Boolean;
    function Titulo: TTituloDDA;
    procedure ConsultarTitulo();
    procedure Alterar();
    procedure Excluir(const pID: Integer);

    property USU_IdArm: Integer read GetIdArm write SetIdArm;
    property USU_CodEmp: Integer read GetCodEmp write SetCodEmp;
    property USU_CodFil: Integer read GetCodFil write SetCodFil;
    property USU_CgcCpf: Double read GetCgcCpf write SetCgcCpf;
    property USU_CodTpt: string read GetCodTpt write SetCodTpt;
    property USU_NumTit: string read GetNumTit write SetNumTit;
    property USU_CodBar: string read GetCodBar write SetCodBar;
    property USU_SitTit: string read GetSitTit write SetSitTit;
    property USU_VlrOri: Currency read GetVlrOri write SetVlrOri;
    property USU_VlrJrs: Currency read GetVlrJrs write SetVlrJrs;
    property USU_VlrDsc: Currency read GetVlrDsc write SetVlrDsc;
    property USU_VctOri: TDate read GetVctOri write SetVctOri;
    property USU_DatDsc: TDate read GetDatDsc write SetDatDsc;
    property USU_TipFor: string read GetTipFor write SetTipFor;
    property USU_CodFor: Integer read GetCodFor write SetCodFor;
    property USU_SitArm: string read GerSitArm write SetSitArm;
    property USU_DatEmi: TDate read GetDatEmi write SetDatEmi;
    property USU_LogTit: string read GetLogTit write SetLogTit;
  end;

  T510AGE = class(TTabelaUsuario)
  private
    FEmpFil: Byte;
    FCodPra: Integer;
    FDirArq: string;
    FGerPre: string;
    FRaiCnp: string;
    FCodPor: string;
    FBkpDir: string;
    FEmpGer: Integer;
    FFilGer: Integer;

    procedure GetBkpDir(const pBkgDir: string);
    procedure GetCodPor(const pCodPor: string);
    procedure GetCodPra(const pCodPra: Integer);
    procedure GetDirArq(const pDirArq: string);
    procedure GetEmpFil(const pEmpFil: Byte);
    procedure GetGerPre(const pGerPre: string);
    procedure GetRaiCnp(const pRaiCnp: string);

    function SetBkpDir: string;
    function SetCodPor: string;
    function SetCodPra: Integer;
    function SetDirArq: string;
    function SetEmpFil: Byte;
    function SetGerPre: string;
    function SetRaiCnp: string;
    procedure GetEmpGer(const pEmpGer: Integer);
    procedure GetFilGer(const pFilGer: Integer);
    function SetEmpGer: Integer;
    function SetFilGer: Integer;
  public
    property USU_EmpFil: Byte read SetEmpFil write GetEmpFil;
    property USU_CodPra: Integer read SetCodPra write GetCodPra;
    property USU_DirArq: string read SetDirArq write GetDirArq;
    property USU_GerPre: string read SetGerPre write GetGerPre;
    property USU_RaiCnp: string read SetRaiCnp write GetRaiCnp;
    property USU_CodPor: string read SetCodPor write GetCodPor;
    property USU_BkpDir: string read SetBkpDir write GetBkpDir;
    property USU_EmpGer: Integer read SetEmpGer write GetEmpGer;
    property USU_FilGer: Integer read SetFilGer write GetFilGer;
  end;

  T510ARM = class(TTabelaUsuario)
  private
    FCodPor: string;
    FDirArm: string;
    FDatMov: TDate;
    FDatGer: TDate;
    FDatFin: TDate;
    FNomArq: string;
    FSitArm: Char;
    FArquivoExiste: Boolean;

    procedure SetCodPor(const pCodPor: string);
    procedure SetDirArm(const pDirArm: string);
    procedure SetDatMov(const pDatMov: TDate);
    procedure SetDatGer(const pDatGer: TDate);
    procedure SetDatFin(const pDatFin: TDate);
    procedure SetNomArq(const pNomArq: string);
    procedure SetSitArm(const pSitArm: Char);

    function GetCodPor: string;
    function GetDatFin: TDate;
    function GetDatGer: TDate;
    function GetDatMov: TDate;
    function GetDirArm: string;
    function GetNomArq: string;
    function GetSitArm: Char;
  public
    constructor CreatePersonalizado(const pDados: T510AGE; const pArquivo: string);
    destructor Destroy(); override;

    function ArquivoExiste(): Boolean;
    function Armazenado(): Boolean;
    procedure RemoverArquivo(const pAtualizar: Boolean = True);

    property USU_CodPor: string read GetCodPor write SetCodPor;
    property USU_DirArm: string read GetDirArm write SetDirArm;
    property USU_DatMov: TDate read GetDatMov write SetDatMov;
    property USU_DatGer: TDate read GetDatGer write SetDatGer;
    property USU_DatFin: TDate read GetDatFin write SetDatFin;
    property USU_NomArq: string read GetNomArq write SetNomArq;
    property USU_SitArm: Char read GetSitArm write SetSitArm;
  end;

  T095FOR = class(TIterador)
  private
    FCgcCpf: Double;
    FCodFor: Integer;
    FRaiz: string;

    function GetCgcCpf: Double;
    function GetCodFor: Integer;
    procedure SetCgcCpf(const pCgcCpf: Double);
    procedure SetCodFor(const pCodFor: Integer);

    function BuscarPorCNPJ(const pCNPJ: Double): string;
  public
    constructor CreatePersonalizado(const pCgcCpf: Double);
    destructor Destroy(); override;

    procedure CarregarFornecedores();
    procedure AdicionarFonecedor(const pTitulo: T510TIT);

    function CodigoDoFornecedor: Integer;

    property CodFor: Integer read GetCodFor write SetCodFor;
    property CgcCpf: Double read GetCgcCpf write SetCgcCpf;
  end;

  //controle de loca��o pelo contrato
  T160CLP = class(TTabelaUsuario)
  private
    FDatIni: TDate;
    FDatFin: TDate;
    FNumCtr: Integer;
    FCodEmp: Integer;
    FCodFil: Integer;
    FVlrCtr: Double;
    FDatGer: TDate;
    FIndFin: string;
    FUsuAlt: Integer;
    FDatAlt: TDate;
    FUsuGer: Integer;
    FCodCli: Integer;
    FCodBem: string;
    FIDLOC: Integer;
    FIDLIC: Integer;
    FID: Integer;

    function GetCodEmp: Integer;
    function GetCodFil: Integer;
    function GetDatAlt: TDate;
    function GetDatFin: TDate;
    function GetDatGer: TDate;
    function GetDatIni: TDate;
    function GetIndFin: string;
    function GetNumCtr: Integer;
    function GetUsuAlt: Integer;
    function GetVlrCtr: Double;

    procedure SetCodEmp(const Value: Integer);
    procedure SetCodFil(const Value: Integer);
    procedure SetDatAlt(const Value: TDate);
    procedure SetDatFin(const Value: TDate);
    procedure SetDatGer(const Value: TDate);
    procedure SetDatIni(const Value: TDate);
    procedure SetIndFin(const Value: string);
    procedure SetNumCtr(const Value: Integer);
    procedure SetUsuAlt(const Value: Integer);
    procedure SetVlrCtr(const Value: Double);
    function GetCodBem: string;
    function GetIDLIC: Integer;
    function GetIDLOC: Integer;
    function GetUsuGer: Integer;
    procedure SetCodBem(const Value: string);
    procedure SetIDLIC(const Value: Integer);
    procedure SetIDLOC(const Value: Integer);
    procedure SetUsuGer(const Value: Integer);
    function GetCodCli: Integer;
    procedure SetCodCli(const Value: Integer);
    function GetID: Integer;
    procedure SetId(const Value: Integer);
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_ID: Integer read GetID write SetId;
    property USU_DatIni: TDate read GetDatIni write SetDatIni;
    property USU_DatFin: TDate read GetDatFin write SetDatFin;
    property USU_NumCtr: Integer read GetNumCtr write SetNumCtr;
    property USU_CodEmp: Integer read GetCodEmp write SetCodEmp;
    property USU_CodFil: Integer read GetCodFil write SetCodFil;
    property USU_VlrCtr: Double read GetVlrCtr write SetVlrCtr;
    property USU_DatGer: TDate read GetDatGer write SetDatGer;
    property USU_IndFin: string read GetIndFin write SetIndFin;
    property USU_UsuAlt: Integer read GetUsuAlt write SetUsuAlt;
    property USU_DatAlt: TDate read GetDatAlt write SetDatAlt;
    property USU_UsuGer: Integer read GetUsuGer write SetUsuGer;
    property USU_CodCli: Integer read GetCodCli write SetCodCli;
    property USU_CodBem: string read GetCodBem write SetCodBem;
    property USU_IDLOC: Integer read GetIDLOC write SetIDLOC;
    property USU_IDLIC: Integer read GetIDLIC write SetIDLIC;
  end;

  T090IND = class(TTabelaUsuario)
  private
    FIndFin: string;
    FCodEmp: Word;
    FDatGer: TDate;
    FUsuGer: Integer;
    FObsInd: string;
    FVlrInd: Extended;
    FDatIni: TDate;
    FDatFin: TDate;
    FUsuAlt: Integer;
    FDatAlt: TDate;
    FUsuRes: Integer;
    FCodDbc: Integer;
    FSeqCot: Integer;

    function GetCodEmp: Word;
    function GetDatAlt: TDate;
    function GetDatFin: TDate;
    function GetDatGer: TDate;
    function GetDatIni: TDate;
    function GetIndFin: string;
    function GetObsInd: string;
    function GetUsuAlt: Integer;
    function GetUsuGer: Integer;
    function GetVlrInd: Extended;

    procedure SetCodEmp(const Value: Word);
    procedure SetDatAlt(const Value: TDate);
    procedure SetDatFin(const Value: TDate);
    procedure SetDatGer(const Value: TDate);
    procedure SetDatIni(const Value: TDate);
    procedure SetIndFin(const Value: string);
    procedure SetObsInd(const Value: string);
    procedure SetUsuAlt(const Value: Integer);
    procedure SetUsuGer(const Value: Integer);
    procedure SetVlrInd(const Value: Extended);
    function GetUsuRes: Integer;
    procedure SetUsuRes(const Value: Integer);
    function GetCodDbc: Integer;
    procedure SetCodDbc(const Value: Integer);
    function GetSeqCot: Integer;
    procedure SetSeqCot(const Value: Integer);
  public
    constructor Create();
    destructor Destroy(); override;

    procedure CarregarIndice(const pTitulo: T301TCR);

    property USU_IndFin: string read GetIndFin write SetIndFin;
    property USU_CodEmp: Word read GetCodEmp write SetCodEmp;
    property USU_DatGer: TDate read GetDatGer write SetDatGer;
    property USU_UsuGer: Integer read GetUsuGer write SetUsuGer;
    property USU_ObsInd: string read GetObsInd write SetObsInd;
    property USU_VlrInd: Extended  read GetVlrInd write SetVlrInd;
    property USU_DatIni: TDate read GetDatIni write SetDatIni;
    property USU_DatFin: TDate read GetDatFin write SetDatFin;
    property USU_UsuAlt: Integer read GetUsuAlt write SetUsuAlt;
    property USU_DatAlt: TDate read GetDatAlt write SetDatAlt;
    property USU_UsuRes: Integer read GetUsuRes write SetUsuRes;
    property USU_CodDbc: Integer read GetCodDbc write SetCodDbc;
    property USU_SeqCot: Integer read GetSeqCot write SetSeqCot;
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

  T090LIC = class(TTabelaUsuario)
  private
    FIDIND: Integer;
    FCodEmp: Word;
    FCodFil: Word;
    FNumCtr: Integer;
    FIndFin: string;

    FOLDIDIND: Integer;
    FOLDCodEmp: Word;
    FOLDCodFil: Word;
    FOLDNumCtr: Integer;
    FOLDIndFin: string;

    function GetCodEmp: Word;
    function GetCodFil: Word;
    function GetIDIND: Integer;
    function GetIndFin: string;
    function GetNumCtr: Integer;
    procedure SetCodEmp(const Value: Word);
    procedure SetCodFil(const Value: Word);
    procedure SetIDIND(const Value: Integer);
    procedure SetIndFin(const Value: string);
    procedure SetNumCtr(const Value: Integer);

    function GetOLDCodEmp: Word;
    function GetOLDCodFil: Word;
    function GetOLDIDIND: Integer;
    function GetOLDIndFin: string;
    function GetOLDNumCtr: Integer;
    procedure SetOLDCodEmp(const Value: Word);
    procedure SetOLDCodFil(const Value: Word);
    procedure SetOLDIDIND(const Value: Integer);
    procedure SetOLDIndFin(const Value: string);
    procedure SetOLDNumCtr(const Value: Integer);
  protected
    procedure Registros_OLD(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_IDIND: Integer read GetIDIND write SetIDIND;
    property USU_CodEmp: Word read GetCodEmp write SetCodEmp;
    property USU_CodFil: Word read GetCodFil write SetCodFil;
    property USU_NumCtr: Integer read GetNumCtr write SetNumCtr;
    property USU_IndFin: string read GetIndFin write SetIndFin;
    property USU_OldIDIND: Integer read GetOLDIDIND write SetOLDIDIND;
    property USU_OldCodEmp: Word read GetOLDCodEmp write SetOLDCodEmp;
    property USU_OldCodFil: Word read GetOLDCodFil write SetOLDCodFil;
    property USU_OldNumCtr: Integer read GetOLDNumCtr write SetOLDNumCtr;
    property USU_OldIndFin: string read GetOLDIndFin write SetOLDIndFin;
  end;

  T000dbc = class(TTabelaUsuario)
  private
    FCodDbc: Integer;
    FNomDbc: string;
    FDscDbc: string;
    FPerDbc: Char;
    FNumPer: Word;
    FFonDbc: string;
    FDatIni: TDate;
    FDatFin: TDate;
    FDiaDbc: Byte;
    FMesDbc: Byte;
    FAnoDbc: Word;
    FVlrDbc: Double;
    FSeqCot: Integer;

    FOldCodDbc: Integer;
    FOldNomDbc: string;
    FOldDscDbc: string;
    FOldPerDbc: Char;
    FOldNumPer: Word;
    FOldFonDbc: string;
    FOldDatIni: TDate;
    FOldDatFin: TDate;
    FOldDiaDbc: Byte;
    FOldMesDbc: Byte;
    FOldAnoDbc: Word;
    FOldVlrDbc: Double;
    FOldSeqCot: Integer;

    function GetAnoDbc: Word;
    function GetCodDbc: Integer;
    function GetDatFin: TDate;
    function GetDatIni: TDate;
    function GetDiaDbc: Byte;
    function GetDscDbc: string;
    function GetFonDbc: string;
    function GetMesDbc: Byte;
    function GetNomDbc: string;
    function GetNumPer: Word;
    function GetPerDbc: Char;
    function GetVlrDbc: Double;

    procedure SetAnoDbc(const Value: Word);
    procedure SetCodDbc(const Value: Integer);
    procedure SetDatFin(const Value: TDate);
    procedure SetDatIni(const Value: TDate);
    procedure SetDiaDbc(const Value: Byte);
    procedure SetDscDbc(const Value: string);
    procedure SetFonDbc(const Value: string);
    procedure SetMesDbc(const Value: Byte);
    procedure SetNomDbc(const Value: string);
    procedure SetNumPer(const Value: Word);
    procedure SetPerDbc(const Value: Char);
    procedure SetVlrDbc(const Value: Double);

    function GetOldAnoDbc: Word;
    function GetOldCodDbc: Integer;
    function GetOldDatFin: TDate;
    function GetOldDatIni: TDate;
    function GetOldDiaDbc: Byte;
    function GetOldDscDbc: string;
    function GetOldFonDbc: string;
    function GetOldMesDbc: Byte;
    function GetOldNomDbc: string;
    function GetOldNumPer: Word;
    function GetOldPerDbc: Char;
    function GetOldVlrDbc: Double;

    procedure SetOldAnoDbc(const Value: Word);
    procedure SetOldCodDbc(const Value: Integer);
    procedure SetOldDatFin(const Value: TDate);
    procedure SetOldDatIni(const Value: TDate);
    procedure SetOldDiaDbc(const Value: Byte);
    procedure SetOldDscDbc(const Value: string);
    procedure SetOldFonDbc(const Value: string);
    procedure SetOldMesDbc(const Value: Byte);
    procedure SetOldNomDbc(const Value: string);
    procedure SetOldNumPer(const Value: Word);
    procedure SetOldPerDbc(const Value: Char);
    procedure SetOldVlrDbc(const Value: Double);
    function GetOldSeqCot: Integer;
    function GetSeqCot: Integer;
    procedure SetOldSeqCot(const Value: Integer);
    procedure SetSeqCot(const Value: Integer);
 protected
    procedure Registros_OLD(); override;
 public
    constructor Create();
    destructor Destroy; override;

    property USU_CodDbc: Integer read GetCodDbc write SetCodDbc;
    property USU_NomDbc: string read GetNomDbc write SetNomDbc;
    property USU_DscDbc: string read GetDscDbc write SetDscDbc;
    property USU_PerDbc: Char read GetPerDbc write SetPerDbc;
    property USU_NumPer: Word read GetNumPer write SetNumPer;
    property USU_FonDbc: string read GetFonDbc write SetFonDbc;
    property USU_DatIni: TDate read GetDatIni write SetDatIni;
    property USU_DatFin: TDate read GetDatFin write SetDatFin;
    property USU_DiaDbc: Byte read GetDiaDbc write SetDiaDbc;
    property USU_MesDbc: Byte read GetMesDbc write SetMesDbc;
    property USU_AnoDbc: Word read GetAnoDbc write SetAnoDbc;
    property USU_VlrDbc: Double read GetVlrDbc write SetVlrDbc;
    property USU_SeqCot: Integer read GetSeqCot write SetSeqCot;

    property USU_OldCodDbc: Integer read GetOldCodDbc write SetOldCodDbc;
    property USU_OldNomDbc: string read GetOldNomDbc write SetOldNomDbc;
    property USU_OldDscDbc: string read GetOldDscDbc write SetOldDscDbc;
    property USU_OldPerDbc: Char read GetOldPerDbc write SetOldPerDbc;
    property USU_OldNumPer: Word read GetOldNumPer write SetOldNumPer;
    property USU_OldFonDbc: string read GetOldFonDbc write SetOldFonDbc;
    property USU_OldDatIni: TDate read GetOldDatIni write SetOldDatIni;
    property USU_OldDatFin: TDate read GetOldDatFin write SetOldDatFin;
    property USU_OldDiaDbc: Byte read GetOldDiaDbc write SetOldDiaDbc;
    property USU_OldMesDbc: Byte read GetOldMesDbc write SetOldMesDbc;
    property USU_OldAnoDbc: Word read GetOldAnoDbc write SetOldAnoDbc;
    property USU_OldVlrDbc: Double read GetOldVlrDbc write SetOldVlrDbc;
    property USU_OldSeqCot: Integer read GetOldSeqCot write SetOldSeqCot;
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
  System.Variants, Winapi.Windows;

{ T510TIT }

procedure T510TIT.Alterar;
begin
  FTituloDDA.DefinirSelecaoPropriedade(['USU_IDTIT']);
  FTituloDDA.DefinirCampoUpdate(['CODBAR']);
  FTituloDDA.Executar(estUpdate);
end;

function T510TIT.Carregado: Boolean;
begin
  Result := FCarregado;
end;

procedure T510TIT.ConsultarTitulo;
begin
  if AnsiSameText(FSitArm,'S') then
  begin
    FTituloDDA := TTituloDDA.Create;
    FTituloDDA.USU_IDTIT := Self.USU_ID;
    FTituloDDA.DefinirSelecaoPropriedade(['USU_IDTIT'], True);
    FTituloDDA.Selecao := esNormal;
    FTituloDDA.Executar(etSelect);
  end;
end;

constructor T510TIT.Create(const pLinha: string);
var
  xCodReg: TCodReg;
begin
  inherited Create('USU_T510TIT');

  FCarregado := False;
  //DefinirCampoNegado(['USU_IDARM']);

  FillChar(xCodReg, SizeOf(xCodReg), 0);
  xCodReg.Posicao := 14;
  xCodReg.Tamanho := 1;
  xCodReg.Campo := 'CodReg';
  xCodReg.Registro1 := 'G';

  FLayout := TLayout.Create(xCodReg);
  FLayout.AdicionarCampos('USU_TipFor', 62,1);
  FLayout.AdicionarCampos('USU_CgcCpf', 63, 15);
  FLayout.AdicionarCampos('USU_VctOri', 108, 8);
  FLayout.AdicionarCampos('USU_VlrOri', 116, 15);
  FLayout.AdicionarCampos('USU_NumTit', 148, 15);
  FLayout.AdicionarCampos('USU_DatEmi', 182, 8);
  FLayout.AdicionarCampos('USU_Codbar', 18, 44);
  FLayout.AdicionarCampos('USU_DatDsc', 206, 8);
  FLayout.AdicionarCampos('USU_VlrDsc', 214, 15);
  FLayout.AdicionarCampos('USU_Vlrjrs', 190, 15);
  FLayout.AdicionarCampos('USU_CodTpt', 180, 2);
  FLinhaValida := FLayout.AdicionarLinhas(pLinha, Self);
end;

constructor T510TIT.CreateCarregado(const pUsaID: Boolean = False);
begin
  inherited Create('USU_T510TIT');

  FCarregado := True;

  if not(pUsaID) then
    DefinirCampoNegado(['USU_IDARM']);
end;

destructor T510TIT.Destroy;
begin
  inherited;
end;

procedure T510TIT.Excluir(const pID: Integer);
begin
  Self.Iniciar;
  Self.USU_IdArm := pID;
  Self.DefinirSelecaoPropriedade(['USU_ID','USU_IDARM'], True);
  Self.Executar(estDelete);
end;

function T510TIT.GetCodEmp: Integer;
begin
  Result := FCodEmp;
end;

function T510TIT.GetCodFil: Integer;
begin
  Result := FCodFil;
end;

function T510TIT.GetCodFor: Integer;
begin
  Result := FCodFor;
end;

function T510TIT.GerSitArm: string;
begin
  Result := FSitArm;
end;

function T510TIT.GetCgcCpf: Double;
begin
  Result := FCgcCpf;
end;

function T510TIT.GetCodBar: string;
begin
  Result := FCodBar;
end;

function T510TIT.GetCodTpt: string;
begin
  Result := FCodTpt;
end;

function T510TIT.GetDatDsc: TDate;
begin
  Result := FDatDsc;
end;

function T510TIT.GetDatEmi: TDate;
begin
  Result := FDatEmi;
end;

function T510TIT.GetIdArm: Integer;
begin
  Result := FIdArm;
end;

function T510TIT.GetLogTit: string;
begin
  Result := FLogTit;
end;

function T510TIT.GetNumTit: string;
begin
  Result := FNumTit;
end;

function T510TIT.GetSitTit: string;
begin
  Result := FSitTit;
end;

function T510TIT.GetVctOri: TDate;
begin
  Result := FVctOri;
end;

function T510TIT.GetVlrDsc: Currency;
begin
  Result := FVlrDsc;
end;

function T510TIT.GetVlrJrs: Currency;
begin
  Result := FVlrJrs;
end;

function T510TIT.GetVlrOri: Currency;
begin
  Result := FVlrOri;
end;

function T510TIT.LinhaValida: Boolean;
begin
  Result := FLinhaValida;
end;

procedure T510TIT.SetCodEmp(const pCodEmp: Integer);
begin
  FCodEmp := pCodEmp;
end;

procedure T510TIT.SetCodFil(const pCodFil: Integer);
begin
  FCodFil := pCodFil;
end;

procedure T510TIT.SetCodFor(const pCodFor: Integer);
begin
  FCodFor := pCodFor;
end;

procedure T510TIT.SetCgcCpf(const pCgcCpf: Double);
begin
  FCgcCpf := pCgcCpf;
end;

procedure T510TIT.SetCodBar(const pCodBar: string);
begin
  FCodBar := pCodBar;
end;

procedure T510TIT.SetCodTpt(const pCodTpt: string);
begin
  FCodTpt := pCodTpt;
end;

procedure T510TIT.SetDatDsc(const pDatDsc: TDate);
begin
  FDatDsc := pDatDsc;
end;

procedure T510TIT.SetDatEmi(const pDatEmi: TDate);
begin
  FDatEmi := pDatEmi;
end;

procedure T510TIT.SetIdArm(const pIdArm: Integer);
begin
  FIdArm := pIdArm;
end;

procedure T510TIT.SetLogTit(const pLogTit: string);
begin
  FLogTit := pLogTit;
end;

procedure T510TIT.SetNumTit(const pNumTit: string);
begin
  FNumTit := pNumTit;
end;

procedure T510TIT.SetSitArm(const pSitArm: string);
begin
  FSitArm := pSitArm;
end;

procedure T510TIT.SetSitTit(const pSitTit: string);
begin
  FSitTit := pSitTit;
end;

procedure T510TIT.SetVctOri(const pVctOri: TDate);
begin
  FVctOri := pVctOri;
end;

procedure T510TIT.SetVlrDsc(const pVlrDsc: Currency);
begin
  FVlrDsc := pVlrDsc;
end;

procedure T510TIT.SetVlrJrs(const pVlrJrs: Currency);
begin
  FVlrJrs := pVlrJrs;
end;

procedure T510TIT.SetVlrOri(const pVlrOri: Currency);
begin
  FVlrOri := pVlrOri;
end;

function T510TIT.Titulo: TTituloDDA;
begin
  Result := FTituloDDA;
end;

function T510TIT.GetTipFor: string;
begin
  Result := FTipFor;
end;

procedure T510TIT.SetTipFor(const pTipFor: string);
begin
  FTipFor := pTipFor;
end;

{ T510ARM }

function T510ARM.Armazenado: Boolean;
begin
  Result := (AnsiSameText(Self.USU_SitArm, 'S'));
end;

function T510ARM.ArquivoExiste: Boolean;
begin
  Result := FArquivoExiste;
end;

constructor T510ARM.CreatePersonalizado(const pDados: T510AGE; const pArquivo: string);
var
  x510ARM: T510ARM;
begin
  inherited Create('USU_T510ARM');

  x510ARM := T510ARM.Create('USU_T510ARM');
  x510ARM.USU_CodPor := pDados.USU_CodPor;
  x510ARM.USU_DirArm := pDados.USU_DirArq;
  x510ARM.USU_NomArq := pArquivo;
  x510ARM.USU_DatGer := Date;
  x510ARM.DefinirSelecaoPropriedade(['USU_NOMARQ'], True);
  x510ARM.Selecao := esNormal;

  FArquivoExiste := x510ARM.Executar(etSelect);

  if not(FArquivoExiste) then
  begin
    x510ARM.USU_SitArm := 'N';
    x510ARM.Executar(estInsert);
  end;

  TIterador.Repassar(x510ARM, Self);
end;

destructor T510ARM.Destroy;
begin
  inherited;
end;

function T510ARM.GetCodPor: string;
begin
  Result := FCodPor;
end;

function T510ARM.GetDatFin: TDate;
begin
  Result := FDatFin;
end;

function T510ARM.GetDatGer: TDate;
begin
  Result := FDatGer;
end;

function T510ARM.GetDatMov: TDate;
begin
  Result := FDatMov;
end;

function T510ARM.GetDirArm: string;
begin
  Result := FDirArm;
end;

function T510ARM.GetNomArq: string;
begin
  Result := FNomArq;
end;

function T510ARM.GetSitArm: Char;
begin
  Result := FSitArm;
end;

procedure T510ARM.RemoverArquivo(const pAtualizar: Boolean = True);
begin
  if (pAtualizar) then
  begin
    Self.USU_SitArm := 'S';
    Self.USU_DatFin := Date;
    Self.DefinirSelecaoPropriedade(['USU_ID']);
    Self.Executar(estUpdate);
  end;

  if not(DirectoryExists(Self.USU_DirArm + 'DDA_BKP\')) then
    CreateDir(Self.USU_DirArm + 'DDA_BKP\');

  CopyFile(PWideChar(Self.USU_DirArm + Self.USU_NomArq), PWideChar(Self.USU_DirArm + 'DDA_BKP\' + Self.USU_NomArq), False);
  DeleteFile(PWideChar(Self.USU_DirArm + Self.USU_NomArq));
end;

procedure T510ARM.SetCodPor(const pCodPor: string);
begin
  FCodPor := pCodPor;
end;

procedure T510ARM.SetDatFin(const pDatFin: TDate);
begin
  FDatFin := pDatFin;
end;

procedure T510ARM.SetDatGer(const pDatGer: TDate);
begin
  FDatGer := pDatGer;
end;

procedure T510ARM.SetDatMov(const pDatMov: TDate);
begin
  FDatMov := pDatMov;
end;

procedure T510ARM.SetDirArm(const pDirArm: string);
begin
  FDirArm := pDirArm;
end;

procedure T510ARM.SetNomArq(const pNomArq: string);
begin
  FNomArq := pNomArq;
end;

procedure T510ARM.SetSitArm(const pSitArm: Char);
begin
  FSitArm := pSitArm;
end;

{ T510AGE }

procedure T510AGE.GetBkpDir(const pBkgDir: string);
begin
  FBkpDir := pBkgDir;
end;

procedure T510AGE.GetCodPor(const pCodPor: string);
begin
  FCodPor := pCodPor;
end;

procedure T510AGE.GetCodPra(const pCodPra: Integer);
begin
  FCodPra := pCodPra;
end;

procedure T510AGE.GetDirArq(const pDirArq: string);
begin
  FDirArq := pDirArq;
end;

procedure T510AGE.GetEmpFil(const pEmpFil: Byte);
begin
  FEmpFil := pEmpFil;
end;

procedure T510AGE.GetEmpGer(const pEmpGer: Integer);
begin
  FEmpGer := pEmpGer;
end;

procedure T510AGE.GetFilGer(const pFilGer: Integer);
begin
  FFilGer := pFilGer;
end;

procedure T510AGE.GetGerPre(const pGerPre: string);
begin
  FGerPre := pGerPre;
end;

procedure T510AGE.GetRaiCnp(const pRaiCnp: string);
begin
  FRaiCnp := pRaiCnp;
end;

function T510AGE.SetBkpDir: string;
begin
  Result := FBkpDir;
end;

function T510AGE.SetCodPor: string;
begin
  Result := FCodPor;
end;

function T510AGE.SetCodPra: Integer;
begin
  Result := FCodPra;
end;

function T510AGE.SetDirArq: string;
begin
  Result := FDirArq;
end;

function T510AGE.SetEmpFil: Byte;
begin
  Result := FEmpFil;
end;

function T510AGE.SetEmpGer: Integer;
begin
  Result := FEmpGer;
end;

function T510AGE.SetFilGer: Integer;
begin
  Result := FFilGer;
end;

function T510AGE.SetGerPre: string;
begin
  Result := FGerPre;
end;

function T510AGE.SetRaiCnp: string;
begin
  Result := FRaiCnp;
end;

{ T095FOR }

procedure T095FOR.AdicionarFonecedor(const pTitulo: T510TIT);
var
  i: Integer;
  xAchou: Boolean;
  x095FOR: T095FOR;
begin
  xAchou := False;
  x095FOR := nil;

  for i := 0 to pred(Self.Count) do
  begin
    if (pTitulo.USU_CgcCpf = (T095FOR(Self[i]).CgcCpf)) then
    begin
      xAchou := True;
      x095FOR := T095FOR(Self[i]);
      Break;
    end;
  end;

  if not(xAchou) then
  begin
    x095FOR := T095FOR.CreatePersonalizado(pTitulo.USU_CgcCpf);
    x095FOR.CarregarFornecedores;
    Self.Add(x095FOR);
  end;

  pTitulo.USU_CodFor := x095FOR.CodFor;
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
              'WHERE E095FOR.CGCCPF LIKE (:RAIZFOR) ' +
            'ORDER BY RAIZ ASC ';
end;

procedure T095FOR.CarregarFornecedores;
var
  xQuery: THQuery;
begin
  xQuery := THQuery.CreatePersonalizado();
  try
    xQuery.SQL.Clear;
    xQuery.Command := BuscarPorCNPJ(FCgcCpf);

    xQuery.ParamByName('CGCCPF').Value := FCgcCpf;
    xQuery.ParamByName('RAIZFOR').Value := FRaiz;
    xQuery.Open;
    if not(xQuery.IsEmpty) then
      FCodFor := iff(xQuery.FindField('ORIGINAL').AsInteger = 0,
        xQuery.FindField('RAIZ').AsInteger,
        xQuery.FindField('ORIGINAL').AsInteger);

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

  for i := 0 to pred(Self.Count) do
  begin
    if (FCgcCpf = (T095FOR(Self[i]).CgcCpf)) then
    begin
      Result := T095FOR(Self[i]).CodFor;
      Break;
    end;
  end;
end;

constructor T095FOR.CreatePersonalizado(const pCgcCpf: Double);
begin
  inherited;

  Self.CgcCpf := pCgcCpf;
end;

destructor T095FOR.Destroy;
begin
  Self.Clear;

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

procedure T095FOR.SetCgcCpf(const pCgcCpf: Double);
begin
  FCgcCpf := pCgcCpf;
end;

procedure T095FOR.SetCodFor(const pCodFor: Integer);
begin
  FCodFor := pCodFor;
end;

{ TTituloDDA }

procedure TTituloDDA.AddLog(const pLog: string);
begin
  F510TIT.USU_LogTit := pLog;
end;

procedure TTituloDDA.Anexar(const p510TIT: T510TIT);
var
  xClonar: TIterador;
begin
  F510TIT := T510TIT.CreateCarregado;

  xClonar := TIterador.Create;
  xClonar.Iterar(p510TIT, F510TIT);
end;

procedure TTituloDDA.Consistir;
var
  xHistorico: THistorico;
begin
  F510TIT.USU_LogTit := EmptyStr; //Limpa caso ja tenha sido consistido

  if (BuscarString(Self.SitTit, ['AI','LQ','LP','LX','LI','LM','LS','PE','LC','LO','LV'])) then
      Self.AddLog(Format('Altera��o n�o permitida. T�tulo com situa��o igual a %s n�o pode ser alterado.', [Self.SitTit]));

  if (Self.VlrOri <> Self.VlrAbe) then
    Self.AddLog('Altera��o n�o permitida. T�tulo j� possui baixas.');

  xHistorico := FIteradorHistoricoFornecedor.BuscarHistoricoFornecedor(Self);

  if (Assigned(xHistorico) and (xHistorico.CodPor = EmptyStr)) then
    Self.AddLog(Format('Altera��o n�o permitida. N�o foi poss�vel localizar Hist�rico do Fornecedor %d para Filial %d.',
                       [Self.CodFor,Self.CodFil]));

  if (VerificarCodigoDeBarras) then
    Self.AddLog(Format('C�digo de Barras "%s" j� cadastrado para o t�tulo: Filial %d, N�mero %s, Tipo %s e Fornecedor %d',
      [Self.CodBar, Self.CodFil, Self.NumTit, Self.CodTpt, Self.CodFor]));

  if (VerificarTituloArmazenado) then
    Self.AddLog(Format('Altera��o n�o permitida, t�tulo j� foi cadastrano no arquivo: %s.', [FNomArq]));

  if (VerificarContabilizacao) then
    Self.AddLog('Altera��o n�o permitida. Movimento de Entrada do T�tulo j� est� contabilizado.');

  if (AnsiSameText(Self.CodPor, xHistorico.CodPor) and AnsiSameText(Self.CodPor, FFilial.RecPor)) then
    Self.AddLog('Altera��o n�o permitida. T�tulo n�o est� em Portador Empresa ou Portador Fornecedor.');

  if IsNull(F510TIT.USU_LogTit) then
    Self.AddLog('Ok');
end;

constructor TTituloDDA.Create;
begin
  inherited Create();

  FFilial := TFilial.Create;
  DefinirCampoNegado(['NomArq', 'Filial']);
  FListaHistorico := TIterador.Create;
  FIteradorHistoricoFornecedor := TIteradorHistoricoFornecedor.Create;
end;

destructor TTituloDDA.Destroy;
begin
  FreeAndNil(FIteradorHistoricoFornecedor);
  FListaHistorico.Clear;
  FreeAndNil(FFilial);

  inherited;
end;

procedure TTituloDDA.GerarLog;
begin
  F510TIT.USU_SitArm := 'N';
  F510TIT.DefinirSelecaoPropriedade(['USU_ID']);
  F510TIT.DefinirCampoUpdate(['USU_SITARM', 'USU_LOGTIT']);
  F510TIT.Executar(estUpdate);
end;

function TTituloDDA.GetFilial: TFilial;
begin
  Result := FFilial;
end;

procedure TTituloDDA.Preparar;
var
  xHistorico: THistorico;
begin
  FFilial := FListaFilial.DadosFilial(Self.CodEmp, Self.CodFil);
  xHistorico := FIteradorHistoricoFornecedor.BuscarHistoricoFornecedor(Self);

  if (Assigned(xHistorico)) then
  begin
    Self.PerMul := iff((xHistorico.PagMul > 0), xHistorico.PagMul, FFilial.PagMul);
    Self.TolMul := iff((xHistorico.PagDtm > 0), xHistorico.PagDtm, FFilial.PagDtm);
    Self.PerJrs := iff((xHistorico.PagJmm > 0), xHistorico.PagJmm, FFilial.PagJmm);
    Self.TolJrs := iff((xHistorico.PagDtj > 0), xHistorico.PagDtj, FFilial.PagDtj);
    Self.TipJrs := iff(not(IsNull(xHistorico.PagTir)), xHistorico.PagTir, FFilial.PagTjr);
    Self.CodCrt := iff(not(IsNull(xHistorico.CodCrt)), xHistorico.CodCrt, FFilial.RecCrt);
    Self.CodPor := iff(not(IsNull(xHistorico.CodPor)), xHistorico.CodPor, FFilial.RecPor);
    Self.AntDsc := xHistorico.AntDsc;
    Self.PerDsc := xHistorico.PerDsc;
    Self.TolDsc := xHistorico.TolDsc;
    Self.CodCrp := xHistorico.CodCrp;

    if	xHistorico.CodFpg > 0 then
      Self.CodFpg := xHistorico.CodFpg;
  end;
end;

procedure TTituloDDA.Processar;
begin
  if (AnsiSameText(F510TIT.USU_LogTit,'Ok')) then
  begin
    Self.Iniciar;
    Self.USU_IDTIT := F510TIT.USU_ID;
    Self.CodBar := F510TIT.USU_CodBar;
    Self.DefinirSelecaoPropriedade(['CODEMP','CODFIL','CODFOR','NUMTIT','CODTPT'], True);
    Self.DefinirCampoUpdate(['CODBAR', 'USU_IDTIT']);
    Self.Executar(estUpdate);

    F510TIT.USU_CodEmp := Self.CodEmp;
    F510TIT.USU_CodFil := Self.CodFil;
    F510TIT.USU_NumTit := Self.NumTit;
    F510TIT.USU_CodFor := Self.CodFor;
    F510TIT.USU_CodTpt := Self.CodTpt;
    F510TIT.USU_SitTit := Self.SitTit;
    F510TIT.USU_SitArm := 'S';
    F510TIT.DefinirSelecaoPropriedade(['USU_ID']);
    F510TIT.DefinirCampoUpdate(['USU_CODEMP','USU_CODFIL','USU_SITARM','USU_LOGTIT']);
    F510TIT.Executar(estUpdate);
  end
  else
    GerarLog();
end;

procedure TTituloDDA.SetFilial(const pFilial: TFilial);
var
  xIterar: TIterador;
begin
  xIterar := TIterador.Create;
  xIterar.Iterar(pFilial, FFilial);
  FreeAndNil(xIterar);
end;

function TTituloDDA.VerificarCodigoDeBarras: Boolean;
var
  xQuery: THQuery;
begin
  Result := False;

  xQuery := THQuery.CreatePersonalizado();
  try
    if not(IsNull(Self.CodBar)) then
    begin
      xQuery.Command := 'SELECT CODEMP, CODFIL, CODFOR, NUMTIT, CODTPT FROM E501TCP '+
                        'WHERE CODBAR = :CODBAR AND '+
                          'NOT(CODEMP = :CODEMP AND '+
                              'CODFIL = :CODFIL AND '+
                              'NUMTIT = :NUMTIT AND '+
                              'CODTPT = :CODTPT AND '+
                              'CODFOR = :CODFOR) ';

      xQuery.ParamByName('CODBAR').Value := Self.CodBar;
      xQuery.ParamByName('CODEMP').Value := Self.CodEmp;
      xQuery.ParamByName('CODFIL').Value := Self.CodFil;
      xQuery.ParamByName('NUMTIT').Value := Self.NumTit;
      xQuery.ParamByName('CODTPT').Value := Self.CodTpt;
      xQuery.ParamByName('CODFOR').Value := Self.CodFor;
      xQuery.Open;
      Result := not(xQuery.IsEmpty);

      if (Result) then
      begin
        Self.CodEmp := xQuery.FindField('CODEMP').AsInteger;
        Self.CodFil := xQuery.FindField('CODFIL').AsInteger;
        Self.NumTit := xQuery.FindField('NUMTIT').AsString;
        Self.CodTpt := xQuery.FindField('CODTPT').AsString;
        Self.CodFor := xQuery.FindField('CODFOR').AsInteger;
      end;
      xQuery.Close;
    end;
  finally
    FreeAndNil(xQuery);
  end;
end;

function TTituloDDA.VerificarContabilizacao: Boolean;
var
  x501MCP: T501MCP;
begin
  x501MCP := T501MCP.Create();
  x501MCP.CodEmp := Self.CodEmp;
  x501MCP.CodFil := Self.CodFil;
  x501MCP.NumTit := Self.NumTit;
  x501MCP.CodFor := Self.CodFor;
  x501MCP.CodTpt := Self.CodTpt;
  x501MCP.DatPgt := 0;
  x501MCP.VlrMov := 0;
  x501MCP.DefinirSelecaoPropriedade(['CODEMP','CODFIL','NUMTIT','CODFOR','DATPGT'], True);
  x501MCP.AdicionarCondicao('AND NUMLOT > 0 AND VLRMOV > 0');
  x501MCP.Selecao := esNormal;
  Result := x501MCP.Executar(etSelect);
end;

function TTituloDDA.VerificarTituloArmazenado: Boolean;
var
  x510ARM: T510ARM;
begin
  F510TIT.USU_CodEmp := Self.CodEmp;
  F510TIT.USU_CodFil := Self.CodFil;
  F510TIT.USU_NumTit := Self.NumTit;
  F510TIT.USU_CodFor := Self.CodFor;
  F510TIT.USU_CodTpt := Self.CodTpt;
  F510TIT.USU_SitArm := 'S';
  F510TIT.DefinirSelecaoPropriedade(['USU_CODEMP','USU_CODFIL','USU_NUMTIT','USU_CODFOR'], True);
  F510TIT.AdicionarCondicao(Format(' AND USU_ID <> %d ', [Self.USU_IDTIT]));
  F510TIT.Selecao := esNormal;
  Result := F510TIT.Executar(etSelect);

  if (Result) then
  begin
    x510ARM := T510ARM.Create('USU_T510ARM');
    x510ARM.USU_ID := F510TIT.USU_IdArm;
    x510ARM.DefinirSelecaoPropriedade(['USU_ID']);
    x510ARM.Selecao := esNormal;
    x510ARM.Executar(etSelect);
    FNomArq := x510ARM.USU_NomArq;
  end;
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

{ TIteradorCriacaoTitulos }

procedure TIteradorCriacaoTitulos.Criar;
var
  i,j: Integer;
  xServico: sapiens_Synccom_senior_g5_co_mfi_cpa_titulos;
  xEntrada: titulosGravarTitulosCPIn;
  xSaida: titulosGravarTitulosCPOut;
  xTitulos: Array_Of_titulosGravarTitulosCPInTitulos;
  xRetorno: string;
begin
  xServico := Getsapiens_Synccom_senior_g5_co_mfi_cpa_titulos();
  xEntrada := titulosGravarTitulosCPIn.Create;

  for i := 0 to pred(Self.Count) do
  begin
    j := Length(xTitulos);
    Inc(j);
    SetLength(xTitulos, j);
    xTitulos[pred(j)] := titulosGravarTitulosCPInTitulos.Create;
    xTitulos[pred(j)].CodEmp := TTituloDDA(Self[i]).CodEmp.ToString;
    xTitulos[pred(j)].CodFil := TTituloDDA(Self[i]).CodFil.ToString;
    xTitulos[pred(j)].CodTpt := TTituloDDA(Self[i]).CodTpt;
    xTitulos[pred(j)].NumTit := TTituloDDA(Self[i]).NumTit;
    xTitulos[pred(j)].codFor := TTituloDDA(Self[i]).CodFor.ToString;
    xTitulos[pred(j)].CodBar := TTituloDDA(Self[i]).CodBar;
    xTitulos[pred(j)].CodTns := FListaFilial.DadosFilial(TTituloDDA(Self[i]).CodEmp, TTituloDDA(Self[i]).CodFil).PagTpm;
    xTitulos[pred(j)].VlrOri := TTituloDDA(Self[i]).VlrOri.ToString;
    xTitulos[pred(j)].JrsDia := TTituloDDA(Self[i]).JrsDia.ToString;
    xTitulos[pred(j)].VlrDsc := TTituloDDA(Self[i]).VlrDsc.ToString;
    xTitulos[pred(j)].VctOri := DateTimeToStr(DataNull(TTituloDDA(Self[i]).VctOri));
    xTitulos[pred(j)].DatDsc := DateTimeToStr(DataNull(TTituloDDA(Self[i]).DatDsc));
    xTitulos[pred(j)].datEmi := DateTimeToStr(DataNull(TTituloDDA(Self[i]).DatEmi));
    xTitulos[pred(j)].datEnt := DateTimeToStr(DataNull(TTituloDDA(Self[i]).DatGer));
    xTitulos[pred(j)].CodPor := TTituloDDA(Self[i]).CodPor;
    xTitulos[pred(j)].PerMul := TTituloDDA(Self[i]).PerMul.ToString;
    xTitulos[pred(j)].TolMul := TTituloDDA(Self[i]).TolMul.ToString;
    xTitulos[pred(j)].PerJrs := TTituloDDA(Self[i]).PerJrs.ToString;
    xTitulos[pred(j)].TolJrs := TTituloDDA(Self[i]).TolJrs.ToString;
    xTitulos[pred(j)].TipJrs := TTituloDDA(Self[i]).TipJrs;
    xTitulos[pred(j)].CodCrt := TTituloDDA(Self[i]).CodCrt;
    xTitulos[pred(j)].PerDsc := TTituloDDA(Self[i]).PerDsc.ToString;
    xTitulos[pred(j)].TolDsc := TTituloDDA(Self[i]).TolDsc.ToString;
    xTitulos[pred(j)].CodCrp := TTituloDDA(Self[i]).CodCrp;
    xTitulos[pred(j)].codFpg := TTituloDDA(Self[i]).CodFpg.ToString;
  end;

  if (Self.Count > 0) then
  begin
    xEntrada.titulos := xTitulos;
    xSaida := xServico.GravarTitulosCP('sapiensweb', 'sapiensweb', 0, xEntrada);
    xRetorno := xSaida.erroExecucao;
    xRetorno := xSaida.tipoRetorno;
    xRetorno := xSaida.mensagemRetorno;

    for i := 0 to High(xSaida.resultado) do
      Self.GerarLogs(xSaida.resultado[i], i);
  end;
end;

procedure TIteradorCriacaoTitulos.GerarLogs(
  const pRetorno: titulosGravarTitulosCPOutResultado; const pPosicao: Integer);
var
  xTitulo: TTituloDDA;
begin
  xTitulo := TTituloDDA(Self[pPosicao]);
  xTitulo.AddLog(pRetorno.resultado);
  xTitulo.Processar;
end;

{ TIteradorAtualizarTitulos }

procedure TIteradorAtualizarTitulos.Atualizar;
var
  i: Integer;
  xTitulo: TTituloDDA;
begin
  for i := 0 to pred(Self.Count) do
  begin
    xTitulo := TTituloDDA(Self[i]);
    xTitulo.Consistir();
    xTitulo.Processar();
  end;
end;

{ TIteradorTitulos }

function TIteradorTitulos.GetFilial: TFilial;
begin
  Result := FFilial;
end;

procedure TIteradorTitulos.SetFilial(const pFilial: TFilial);
begin
  Self.Iterar(pFilial, FFilial);
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

{ FListaEspecieTitulo }

function TIteradorEspecieTitulo.CarregarEspecie(const pEspBan: string): string;
var
  i: Integer;
  xAchou: Boolean;
begin
  xAchou := False;
  Result := pEspBan;

  for i := 0 to pred(Self.Count) do
  begin
    if ((AnsiSameText(pEspBan,T030ETC(Self[i]).EspBan)) and
        (AnsiSameText(FCodBan,T030ETC(Self[i]).CodBan))) then
    begin
      Result := T030ETC(Self[i]).CodTpt;
      xAchou := True;
      Break;
    end;
  end;

  if not(xAchou) then
  begin
    F030ETC := T030ETC.Create;
    F030ETC.CodBan := FCodBan;
    F030ETC.EspBan := pEspBan;
    F030ETC.DefinirSelecaoPropriedade(['CODBAN','ESPBAN'], True);
    F030ETC.Selecao := esNormal;

    if (F030ETC.Executar(etSelect)) then
    begin
      Result := F030ETC.CodTpt;
      Self.Add(F030ETC);
    end;
  end;
end;

constructor TIteradorEspecieTitulo.Create(const p510AGE: T510AGE);
var
  xQuery: THQuery;
begin
  inherited Create();

  FCodPor := p510AGE.USU_CodPor;

  xQuery := THQuery.CreatePersonalizado;
  try
    xQuery.Command := 'SELECT CODBAN FROM E039POR WHERE CODEMP = :CODEMP AND CODPOR = :CODPOR ';
    xQuery.ParamByName('CODEMP').Value := p510AGE.USU_EmpGer;
    xQuery.ParamByName('CODPOR').Value := FCodPor;
    xQuery.Open;
    if not(xQuery.IsEmpty) then
      FCodBan := xQuery.FindField('CODBAN').AsString;

    xQuery.Close;
  finally
    FreeAndNil(xQuery);
  end;
end;

function TIteradorEspecieTitulo.GetCodBan: string;
begin
  Result := FCodBan;
end;

procedure TIteradorEspecieTitulo.SetCodBan(const pCodBan: string);
begin
  FCodBan := pCodBan;
end;

{ TIteradorHistoricoFornecedor }

function TIteradorHistoricoFornecedor.BuscarHistoricoFornecedor(
  const pTitulo: T501TCP): THistorico;
var
  i: Integer;
  xHistorico: THistorico;
  xAchou: Boolean;
begin
  xAchou := False;
  Result := nil;

  for i := 0 to pred(Self.Count) do
  begin
    xHistorico := THistorico(Self[i]);

    if (xHistorico.CodEmp = pTitulo.CodEmp) and (xHistorico.CodFil = pTitulo.CodFil) and
       (xHistorico.CodFor = pTitulo.CodFor) then
    begin
      Result := xHistorico;
      Break;
    end;
  end;

  if not(xAchou) then
  begin
    xHistorico := THistorico.Create;
    xHistorico.CodEmp := pTitulo.CodEmp;
    xHistorico.CodFil := pTitulo.CodFil;
    xHistorico.CodFor := pTitulo.CodFor;

    xHistorico.DefinirSelecaoPropriedade(['CODEMP','CODFIL','CODFOR'], True);
    xHistorico.Selecao := esNormal;
    xHistorico.Executar(etSelect);

    Result := xHistorico;
    Self.Add(xHistorico)
  end;
end;

{ T160CLP }

constructor T160CLP.Create;
begin
  inherited Create('USU_T160CLP');
end;

destructor T160CLP.Destroy;
begin
  inherited;
end;

function T160CLP.GetCodBem: string;
begin
  Result := FCodBem;
end;

function T160CLP.GetCodCli: Integer;
begin
  Result := FCodCli;
end;

function T160CLP.GetCodEmp: Integer;
begin
  Result := FCodEmp;
end;

function T160CLP.GetCodFil: Integer;
begin
  Result := FCodFil;
end;

function T160CLP.GetDatAlt: TDate;
begin
  Result := FDatAlt;
end;

function T160CLP.GetDatFin: TDate;
begin
  Result := FDatFin;
end;

function T160CLP.GetDatGer: TDate;
begin
  Result := FDatGer;
end;

function T160CLP.GetDatIni: TDate;
begin
  Result := FDatIni;
end;

function T160CLP.GetID: Integer;
begin
  Result := FID;
end;

function T160CLP.GetIDLIC: Integer;
begin
  Result := FIDLIC;
end;

function T160CLP.GetIDLOC: Integer;
begin
  Result := FIDLOC;
end;

function T160CLP.GetIndFin: string;
begin
  Result := FIndFin;
end;

function T160CLP.GetNumCtr: Integer;
begin
  Result := FNumCtr;
end;

function T160CLP.GetUsuAlt: Integer;
begin
  Result := FUsuAlt;
end;

function T160CLP.GetUsuGer: Integer;
begin
  Result := FUsuGer;
end;

function T160CLP.GetVlrCtr: Double;
begin
  Result := FVlrCtr;
end;

procedure T160CLP.SetCodBem(const Value: string);
begin
  FCodBem := Value;
end;

procedure T160CLP.SetCodCli(const Value: Integer);
begin
  FCodCli := Value;
end;

procedure T160CLP.SetCodEmp(const Value: Integer);
begin
  FCodEmp := Value;
end;

procedure T160CLP.SetCodFil(const Value: Integer);
begin
  FCodFil := Value;
end;

procedure T160CLP.SetDatAlt(const Value: TDate);
begin
  FDatAlt := Value;
end;

procedure T160CLP.SetDatFin(const Value: TDate);
begin
  FDatFin := Value;
end;

procedure T160CLP.SetDatGer(const Value: TDate);
begin
  FDatGer := Value;
end;

procedure T160CLP.SetDatIni(const Value: TDate);
begin
  FDatIni := Value;
end;

procedure T160CLP.SetId(const Value: Integer);
begin
  FID := Value;
end;

procedure T160CLP.SetIDLIC(const Value: Integer);
begin
  FIDLIC := Value;
end;

procedure T160CLP.SetIDLOC(const Value: Integer);
begin
  FIDLOC := Value;
end;

procedure T160CLP.SetIndFin(const Value: string);
begin
  FIndFin := Value;
end;

procedure T160CLP.SetNumCtr(const Value: Integer);
begin
  FNumCtr := Value;
end;

procedure T160CLP.SetUsuAlt(const Value: Integer);
begin
  FUsuAlt := Value;
end;

procedure T160CLP.SetUsuGer(const Value: Integer);
begin
  FUsuGer := Value;
end;

procedure T160CLP.SetVlrCtr(const Value: Double);
begin
  FVlrCtr := Value;
end;

{ T090IND }

procedure T090IND.CarregarIndice(const pTitulo: T301TCR);
var
  x160ctr: T160CTR;
  x000dbc: T000dbc;
begin
  if (Self.USU_VlrInd = 0) then
  begin
    x160ctr := T160CTR.Create();
    x160ctr.CodEmp := pTitulo.CodEmp;
    x160ctr.CodFil := pTitulo.FilCtr;
    x160ctr.NumCtr := pTitulo.NumCtr;
    x160ctr.DefinirSelecaoPropriedade(['CODEMP','CODFIL','NUMCTR'], True);
    x160ctr.Executar(etSelect);

    x000dbc := T000dbc.Create;
    x000dbc.USU_CodDbc := Self.USU_CodDbc;
    x000dbc.Selecao := esSUM;
    x000dbc.Campo := 'USU_VLRDBC';
    x000dbc.Between['USU_DATINI'] := StartOfTheMonth(x160ctr.IniVig);
    x000dbc.Between['USU_DATINI'] := Date;
    x000dbc.DefinirSelecaoPropriedade(['USU_CODDBC']);
    x000dbc.Executar(etSelect);

    Self.USU_VlrInd := x000dbc.USU_VlrDbc;
  end;
end;

constructor T090IND.Create;
begin
  inherited Create('USU_T090IND');
end;

destructor T090IND.Destroy;
begin
  inherited;
end;

function T090IND.GetCodDbc: Integer;
begin
  Result := FCodDbc;
end;

function T090IND.GetCodEmp: Word;
begin
  Result := FCodEmp;
end;

function T090IND.GetDatAlt: TDate;
begin
  Result := FDatAlt;
end;

function T090IND.GetDatFin: TDate;
begin
  Result := FDatFin;
end;

function T090IND.GetDatGer: TDate;
begin
  Result := FDatGer;
end;

function T090IND.GetDatIni: TDate;
begin
  Result := FDatIni;
end;

function T090IND.GetIndFin: string;
begin
  Result := FIndFin;
end;

function T090IND.GetObsInd: string;
begin
  Result := FObsInd;
end;

function T090IND.GetSeqCot: Integer;
begin
  Result := FSeqCot;
end;

function T090IND.GetUsuAlt: Integer;
begin
  Result := FUsuAlt;
end;

function T090IND.GetUsuGer: Integer;
begin
  Result := FUsuGer;
end;

function T090IND.GetUsuRes: Integer;
begin
  Result := FUsuRes;
end;

function T090IND.GetVlrInd: Extended;
begin
  Result := FVlrInd;
end;

procedure T090IND.SetCodDbc(const Value: Integer);
begin
  FCodDbc := Value;
end;

procedure T090IND.SetCodEmp(const Value: Word);
begin
  FCodEmp := Value;
end;

procedure T090IND.SetDatAlt(const Value: TDate);
begin
  FDatAlt := Value;
end;

procedure T090IND.SetDatFin(const Value: TDate);
begin
  FDatFin := Value;
end;

procedure T090IND.SetDatGer(const Value: TDate);
begin
  FDatGer := Value;
end;

procedure T090IND.SetDatIni(const Value: TDate);
begin
  FDatIni := Value;
end;

procedure T090IND.SetIndFin(const Value: string);
begin
  FIndFin := Value;
end;

procedure T090IND.SetObsInd(const Value: string);
begin
  FObsInd := Value;
end;

procedure T090IND.SetSeqCot(const Value: Integer);
begin
  FSeqCot := Value;
end;

procedure T090IND.SetUsuAlt(const Value: Integer);
begin
  FUsuAlt := Value;
end;

procedure T090IND.SetUsuGer(const Value: Integer);
begin
  FUsuGer := Value;
end;

procedure T090IND.SetUsuRes(const Value: Integer);
begin
  FUsuRes := Value;
end;

procedure T090IND.SetVlrInd(const Value: Extended);
begin
  FVlrInd := Value;
end;

{ T510CAD }

constructor T510CAD.Create;
begin
  inherited Create('USU_T510CAD');

  Self.DefinirCampoNegado(['USU_ID']);
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

  Self.DefinirSelecaoPropriedade(['USU_IDCLP','USU_CODEMP','USU_CODFIL','USU_NUMTIT','USU_CODTPT'], True);
  Self.Selecao := esNormal;
  if (Self.Executar(etSelect)) then
  begin
    Self.DefinirSelecao(['USU_IDCLP','USU_CODEMP','USU_CODFIL','USU_NUMTIT','USU_CODTPT'],
                        [IntToStr(Self.USU_IDCLP), IntToStr(USU_CodEmp), IntToStr(USU_CodFil),
                         QuotedStr(Self.USU_NumTit), QuotedStr(Self.USU_CodTpt)], True);
    Self.USU_SeqMov := GerarIdentidade('USU_SeqMov');
  end
  else
    Self.USU_SeqMov := 1;

  Self.USU_VlrRea := xReajuste;
  Self.USU_VlrBon := xBonificacao;
  Self.Executar(estInsert);
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

{ T090LIC }

constructor T090LIC.Create;
begin
  inherited Create('USU_T090LIC');
end;

destructor T090LIC.Destroy;
begin
  inherited;
end;

function T090LIC.GetCodEmp: Word;
begin
  Result := FCodEmp;
end;

function T090LIC.GetCodFil: Word;
begin
  Result := FCodFil;
end;

function T090LIC.GetIDIND: Integer;
begin
  Result := FIDIND;
end;

function T090LIC.GetIndFin: string;
begin
  Result := FIndFin;
end;

function T090LIC.GetNumCtr: Integer;
begin
  Result := FNumCtr;
end;

function T090LIC.GetOLDCodEmp: Word;
begin
  Result := FOLDCodEmp;
end;

function T090LIC.GetOLDCodFil: Word;
begin
  Result := FOLDCodFil;
end;

function T090LIC.GetOLDIDIND: Integer;
begin
  Result := FOLDIDIND;
end;

function T090LIC.GetOLDIndFin: string;
begin
  Result := FOLDIndFin;
end;

function T090LIC.GetOLDNumCtr: Integer;
begin
    Result := FOLDNumCtr;
end;

procedure T090LIC.Registros_OLD;
begin
  inherited;

  FOLDIDIND := FIDIND;
  FOLDCodEmp := FCodEmp;
  FOLDCodFil := FCodFil;
  FOLDNumCtr := FNumCtr;
  FOLDIndFin := FIndFin;
end;

procedure T090LIC.SetCodEmp(const Value: Word);
begin
  FCodEmp := Value;
end;

procedure T090LIC.SetCodFil(const Value: Word);
begin
  FCodFil := Value;
end;

procedure T090LIC.SetIDIND(const Value: Integer);
begin
  FIDIND := Value;
end;

procedure T090LIC.SetIndFin(const Value: string);
begin
  FIndFin := Value;
end;

procedure T090LIC.SetNumCtr(const Value: Integer);
begin
  FNumCtr := Value;
end;

procedure T090LIC.SetOLDCodEmp(const Value: Word);
begin
  FOLDIDIND := Value;
end;

procedure T090LIC.SetOLDCodFil(const Value: Word);
begin
  FOLDCodFil := Value;
end;

procedure T090LIC.SetOLDIDIND(const Value: Integer);
begin
  FOLDIDIND := Value;
end;

procedure T090LIC.SetOLDIndFin(const Value: string);
begin
  FOLDIndFin := Value;
end;

procedure T090LIC.SetOLDNumCtr(const Value: Integer);
begin
  FOLDNumCtr := Value;
end;

{ T000dbc }

constructor T000dbc.Create;
begin
  inherited Create('USU_T000DBC');

  DefinirCampoNegado(['USU_ID']);
end;

destructor T000dbc.Destroy;
begin
  inherited;
end;

function T000dbc.GetAnoDbc: Word;
begin
  Result := FAnoDbc;
end;

function T000dbc.GetCodDbc: Integer;
begin
  Result := FCodDbc;
end;

function T000dbc.GetDatFin: TDate;
begin
  Result := FDatIni;
end;

function T000dbc.GetDatIni: TDate;
begin
  Result := FDatIni;
end;

function T000dbc.GetDiaDbc: Byte;
begin
  Result := FDiaDbc;
end;

function T000dbc.GetDscDbc: string;
begin
  Result := FDscDbc;
end;

function T000dbc.GetFonDbc: string;
begin
  Result := FFonDbc;
end;

function T000dbc.GetMesDbc: Byte;
begin
  Result := FMesDbc;
end;

function T000dbc.GetNomDbc: string;
begin
  Result := FNomDbc;
end;

function T000dbc.GetNumPer: Word;
begin
  Result := FNumPer;
end;

function T000dbc.GetOldAnoDbc: Word;
begin
  Result := FAnoDbc;
end;

function T000dbc.GetOldCodDbc: Integer;
begin
  Result := FCodDbc;
end;

function T000dbc.GetOldDatFin: TDate;
begin
  Result := FDatFin;
end;

function T000dbc.GetOldDatIni: TDate;
begin
  Result := FDatIni;
end;

function T000dbc.GetOldDiaDbc: Byte;
begin
  Result := FDiaDbc;
end;

function T000dbc.GetOldDscDbc: string;
begin
  Result := FDscDbc;
end;

function T000dbc.GetOldFonDbc: string;
begin
  Result := FFonDbc;
end;

function T000dbc.GetOldMesDbc: Byte;
begin
  Result := FMesDbc;
end;

function T000dbc.GetOldNomDbc: string;
begin
  Result := FNomDbc;
end;

function T000dbc.GetOldNumPer: Word;
begin
  Result := FNumPer;
end;

function T000dbc.GetOldPerDbc: Char;
begin
  Result := FPerDbc;
end;

function T000dbc.GetOldSeqCot: Integer;
begin
  Result := FOldSeqCot;
end;

function T000dbc.GetOldVlrDbc: Double;
begin
  Result := FVlrDbc;
end;

function T000dbc.GetPerDbc: Char;
begin
    Result := FPerDbc;
end;

function T000dbc.GetSeqCot: Integer;
begin
  Result := FSeqCot;
end;

function T000dbc.GetVlrDbc: Double;
begin
  Result := FVlrDbc;
end;

procedure T000dbc.Registros_OLD;
begin
  inherited;

  FOldCodDbc := FCodDbc;
  FOldNomDbc := FNomDbc;
  FOldDscDbc := FDscDbc;
  FOldPerDbc := FPerDbc;
  FOldNumPer := FNumPer;
  FOldFonDbc := FFonDbc;
  FOldDatIni := FDatIni;
  FOldDatFin := FDatFin;
  FOldDiaDbc := FDiaDbc;
  FOldMesDbc := FMesDbc;
  FOldAnoDbc := FAnoDbc;
  FOldVlrDbc := FVlrDbc;
  FOldSeqCot := FSeqCot;
end;

procedure T000dbc.SetAnoDbc(const Value: Word);
begin
  FAnoDbc := Value;
end;

procedure T000dbc.SetCodDbc(const Value: Integer);
begin
  FCodDbc := Value;
end;

procedure T000dbc.SetDatFin(const Value: TDate);
begin
  FDatFin := Value;
end;

procedure T000dbc.SetDatIni(const Value: TDate);
begin
  FDatIni := Value;
end;

procedure T000dbc.SetDiaDbc(const Value: Byte);
begin
  FDiaDbc := Value;
end;

procedure T000dbc.SetDscDbc(const Value: string);
begin
  FDscDbc := Value;
end;

procedure T000dbc.SetFonDbc(const Value: string);
begin
  FFonDbc := Value;
end;

procedure T000dbc.SetMesDbc(const Value: Byte);
begin
  FMesDbc := Value;
end;

procedure T000dbc.SetNomDbc(const Value: string);
begin
  FNomDbc := Value;
end;

procedure T000dbc.SetNumPer(const Value: Word);
begin
  FNumPer := Value;
end;

procedure T000dbc.SetOldAnoDbc(const Value: Word);
begin
  FOldAnoDbc := Value;
end;

procedure T000dbc.SetOldCodDbc(const Value: Integer);
begin
  FOldCodDbc := Value;
end;

procedure T000dbc.SetOldDatFin(const Value: TDate);
begin
  FOldDatFin := Value;
end;

procedure T000dbc.SetOldDatIni(const Value: TDate);
begin
  FOldDatIni := Value;
end;

procedure T000dbc.SetOldDiaDbc(const Value: Byte);
begin
  FOldDiaDbc := Value;
end;

procedure T000dbc.SetOldDscDbc(const Value: string);
begin
  FOldDscDbc := Value;
end;

procedure T000dbc.SetOldFonDbc(const Value: string);
begin
  FOldFonDbc := Value;
end;

procedure T000dbc.SetOldMesDbc(const Value: Byte);
begin
  FOldMesDbc := Value;
end;

procedure T000dbc.SetOldNomDbc(const Value: string);
begin
  FOldNomDbc := Value;
end;

procedure T000dbc.SetOldNumPer(const Value: Word);
begin
  FOldNumPer := Value;
end;

procedure T000dbc.SetOldPerDbc(const Value: Char);
begin
  FOldPerDbc := Value;
end;

procedure T000dbc.SetOldSeqCot(const Value: Integer);
begin
  FOldSeqCot := Value;
end;

procedure T000dbc.SetOldVlrDbc(const Value: Double);
begin
  FOldVlrDbc := Value;
end;

procedure T000dbc.SetPerDbc(const Value: Char);
begin
  FPerDbc := Value;
end;

procedure T000dbc.SetSeqCot(const Value: Integer);
begin
  FSeqCot := Value;
end;

procedure T000dbc.SetVlrDbc(const Value: Double);
begin
  FVlrDbc := Value;
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
