unit oTabelas;

interface

uses
  System.Classes, oTitulo, oLayout, Data.SqlExpr, oQuery, oBase, System.SysUtils,
  Data.Db, System.Contnrs, wsCPATitulos;

type
  T510TIT = class;
  T510AGE = class;

  T030ETC = class(TTabela)
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

  THistorico = class(TTabela)
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
    FUSU_IDTIT: Integer;
    FNomArq: string;
    FIteradorHistoricoFornecedor: TIteradorHistoricoFornecedor;

    function GetUSU_IDTIT: Integer;
    function GetFilial: TFilial;
    function VerificarCodigoDeBarras(): Boolean;
    function VerificarTituloArmazenado(): Boolean;
    function VerificarContabilizacao(): Boolean;

    procedure SetUSU_IDTIT(const pUSU_IDTIT: Integer);
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
    property USU_IDTIT: Integer read GetUSU_IDTIT write SetUSU_IDTIT;
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

  T510TIT = class(TTabela)
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

    property IdArm: Integer read GetIdArm write SetIdArm;
    property CodEmp: Integer read GetCodEmp write SetCodEmp;
    property CodFil: Integer read GetCodFil write SetCodFil;
    property CgcCpf: Double read GetCgcCpf write SetCgcCpf;
    property CodTpt: string read GetCodTpt write SetCodTpt;
    property NumTit: string read GetNumTit write SetNumTit;
    property CodBar: string read GetCodBar write SetCodBar;
    property SitTit: string read GetSitTit write SetSitTit;
    property VlrOri: Currency read GetVlrOri write SetVlrOri;
    property VlrJrs: Currency read GetVlrJrs write SetVlrJrs;
    property VlrDsc: Currency read GetVlrDsc write SetVlrDsc;
    property VctOri: TDate read GetVctOri write SetVctOri;
    property DatDsc: TDate read GetDatDsc write SetDatDsc;
    property TipFor: string read GetTipFor write SetTipFor;
    property CodFor: Integer read GetCodFor write SetCodFor;
    property SitArm: string read GerSitArm write SetSitArm;
    property DatEmi: TDate read GetDatEmi write SetDatEmi;
    property LogTit: string read GetLogTit write SetLogTit;
  end;

  T510AGE = class(TTabela)
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
    property EmpFil: Byte read SetEmpFil write GetEmpFil;
    property CodPra: Integer read SetCodPra write GetCodPra;
    property DirArq: string read SetDirArq write GetDirArq;
    property GerPre: string read SetGerPre write GetGerPre;
    property RaiCnp: string read SetRaiCnp write GetRaiCnp;
    property CodPor: string read SetCodPor write GetCodPor;
    property BkpDir: string read SetBkpDir write GetBkpDir;
    property EmpGer: Integer read SetEmpGer write GetEmpGer;
    property FilGer: Integer read SetFilGer write GetFilGer;
  end;

  T510ARM = class(TTabela)
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

    property CodPor: string read GetCodPor write SetCodPor;
    property DirArm: string read GetDirArm write SetDirArm;
    property DatMov: TDate read GetDatMov write SetDatMov;
    property DatGer: TDate read GetDatGer write SetDatGer;
    property DatFin: TDate read GetDatFin write SetDatFin;
    property NomArq: string read GetNomArq write SetNomArq;
    property SitArm: Char read GetSitArm write SetSitArm;
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

  //controle de locação pelo contrato
  T160CLP = class(TTabela)
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

  T090IND = class(TTabela)
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
  public
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
    property USU_UsuResp: Integer read GetUsuRes write SetUsuRes;
  end;

implementation

uses
  System.Variants;

{ T510TIT }

function T510TIT.Carregado: Boolean;
begin
  Result := FCarregado;
end;

procedure T510TIT.ConsultarTitulo;
begin
  if AnsiSameText(FSitArm,'S') then
  begin
    FTituloDDA := TTituloDDA.Create;
    FTituloDDA.USU_IDTIT := Self.Id;
    FTituloDDA.DefinirSelecaoPropriedade(['USU_IDTIT'], True);
    FTituloDDA.Executar(estSelect);
  end;
end;

constructor T510TIT.Create(const pLinha: string);
var
  xCodReg: TCodReg;
begin
  inherited Create('USU_T510TIT');

  FCarregado := False;
  DefinirTipoTabela(True);
  DefinirCampoNegado(['USU_IDARM']);

  FillChar(xCodReg, SizeOf(xCodReg), 0);
  xCodReg.Posicao := 14;
  xCodReg.Tamanho := 1;
  xCodReg.Campo := 'CodReg';
  xCodReg.Registro1 := 'G';

  FLayout := TLayout.Create(xCodReg);
  FLayout.AdicionarCampos('TipFor', 62,1);
  FLayout.AdicionarCampos('CgcCpf', 63, 15);
  FLayout.AdicionarCampos('VctOri', 108, 8);
  FLayout.AdicionarCampos('VlrOri', 116, 15);
  FLayout.AdicionarCampos('NumTit', 148, 15);
  FLayout.AdicionarCampos('DatEmi', 182, 8);
  FLayout.AdicionarCampos('Codbar', 18, 44);
  FLayout.AdicionarCampos('DatDsc', 206, 8);
  FLayout.AdicionarCampos('VlrDsc', 214, 15);
  FLayout.AdicionarCampos('Vlrjrs', 190, 15);
  FLayout.AdicionarCampos('CodTpt', 180, 2);
  FLinhaValida := FLayout.AdicionarLinhas(pLinha, Self);
end;

constructor T510TIT.CreateCarregado(const pUsaID: Boolean = False);
begin
  inherited Create('USU_T510TIT');

  FCarregado := True;
  DefinirTipoTabela(True);

  if not(pUsaID) then
    DefinirCampoNegado(['USU_IDARM']);
end;

destructor T510TIT.Destroy;
begin
  inherited;
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
  Result := (AnsiSameText(Self.SitArm, 'S'));
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
  Self.DefinirCampoNegado(['ID']);
  Self.DefinirTipoTabela(True);

  x510ARM := T510ARM.Create('USU_T510ARM');
  x510ARM.CodPor := pDados.CodPor;
  x510ARM.DirArm := pDados.DirArq;
  x510ARM.NomArq := pArquivo;
  x510ARM.DatGer := Date;
  x510ARM.DefinirTipoTabela(True);
  x510ARM.DefinirSelecaoPropriedade(['NOMARQ'], True);

  FArquivoExiste := x510ARM.Executar(estSelect);

  if not(FArquivoExiste) then
  begin
    x510ARM.SitArm := 'N';
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
    if (pTitulo.CgcCpf = (T095FOR(Self[i]).CgcCpf)) then
    begin
      xAchou := True;
      x095FOR := T095FOR(Self[i]);
      Break;
    end;
  end;

  if not(xAchou) then
  begin
    x095FOR := T095FOR.CreatePersonalizado(pTitulo.CgcCpf);
    x095FOR.CarregarFornecedores;
    Self.Add(x095FOR);
  end;

  pTitulo.CodFor := x095FOR.CodFor;
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
  F510TIT.LogTit := pLog;
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
  F510TIT.LogTit := EmptyStr; //Limpa caso ja tenha sido consistido

  if (BuscarString(Self.SitTit, ['AI','LQ','LP','LX','LI','LM','LS','PE','LC','LO','LV'])) then
      Self.AddLog(Format('Alteração não permitida. Título com situação igual a %s não pode ser alterado.', [Self.SitTit]));

  if (Self.VlrOri <> Self.VlrAbe) then
    Self.AddLog('Alteração não permitida. Título já possui baixas.');

  xHistorico := FIteradorHistoricoFornecedor.BuscarHistoricoFornecedor(Self);

  if (Assigned(xHistorico) and (xHistorico.CodPor = EmptyStr)) then
    Self.AddLog(Format('Alteração não permitida. Não foi possível localizar Histórico do Fornecedor %d para Filial %d.',
                       [Self.CodFor,Self.CodFil]));

  if (VerificarCodigoDeBarras) then
    Self.AddLog(Format('Código de Barras "%s" já cadastrado para o título: Filial %d, Número %s, Tipo %s e Fornecedor %d',
      [Self.CodBar, Self.CodFil, Self.NumTit, Self.CodTpt, Self.CodFor]));

  if (VerificarTituloArmazenado) then
    Self.AddLog(Format('Alteração não permitida, título já foi cadastrano no arquivo: %s.', [FNomArq]));

  if (VerificarContabilizacao) then
    Self.AddLog('Alteração não permitida. Movimento de Entrada do Título já está contabilizado.');

  if (AnsiSameText(Self.CodPor, xHistorico.CodPor) and AnsiSameText(Self.CodPor, FFilial.RecPor)) then
    Self.AddLog('Alteração não permitida. Título não está em Portador Empresa ou Portador Fornecedor.');

  if IsNull(F510TIT.LogTit) then
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
  F510TIT.SitArm := 'N';
  F510TIT.DefinirSelecaoPropriedade(['ID']);
  F510TIT.DefinirCampoUpdate(['SITARM', 'LOGTIT']);
  F510TIT.Executar(estUpdate);
end;

function TTituloDDA.GetFilial: TFilial;
begin
  Result := FFilial;
end;

function TTituloDDA.GetUSU_IDTIT: Integer;
begin
  Result := FUSU_IDTIT;
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
  if (AnsiSameText(F510TIT.LogTit,'Ok')) then
  begin
    Self.USU_IDTIT := F510TIT.Id;
    Self.CodBar := F510TIT.CodBar;
    Self.DefinirSelecaoPropriedade(['CODEMP','CODFIL','CODFOR','NUMTIT','CODTPT'], True);
    Self.DefinirCampoUpdate(['CODBAR', 'USU_IDTIT']);
    Self.Executar(estUpdate);

    F510TIT.CodEmp := Self.CodEmp;
    F510TIT.CodFil := Self.CodFil;
    F510TIT.NumTit := Self.NumTit;
    F510TIT.CodFor := Self.CodFor;
    F510TIT.CodTpt := Self.CodTpt;
    F510TIT.SitTit := Self.SitTit;
    F510TIT.SitArm := 'S';
    F510TIT.DefinirSelecaoPropriedade(['ID']);
    F510TIT.DefinirCampoUpdate(['CODEMP','CODFIL','SITARM','LOGTIT']);
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

procedure TTituloDDA.SetUSU_IDTIT(const pUSU_IDTIT: Integer);
begin
  FUSU_IDTIT := pUSU_IDTIT;
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
  Result := x501MCP.Executar(estSelect);
end;

function TTituloDDA.VerificarTituloArmazenado: Boolean;
var
  x510ARM: T510ARM;
begin
  F510TIT.CodEmp := Self.CodEmp;
  F510TIT.CodFil := Self.CodFil;
  F510TIT.NumTit := Self.NumTit;
  F510TIT.CodFor := Self.CodFor;
  F510TIT.CodTpt := Self.CodTpt;
  F510TIT.SitArm := 'S';
  F510TIT.DefinirSelecaoPropriedade(['CODEMP','CODFIL','NUMTIT','CODFOR'], True);
  F510TIT.AdicionarCondicao(Format(' AND USU_ID <> %d ', [Self.Id]));
  Result := F510TIT.Executar(estSelect);

  if (Result) then
  begin
    x510ARM := T510ARM.Create('USU_T510ARM');
    x510ARM.Id := F510TIT.IdArm;
    x510ARM.DefinirTipoTabela(True);
    x510ARM.DefinirSelecaoPropriedade(['ID']);
    x510ARM.Executar(estSelect);
    FNomArq := x510ARM.NomArq;
  end;
end;

{ THistorico }

constructor THistorico.Create;
begin
  inherited Create('E095HFO');

  Self.DefinirCampoNegado(['ID']);
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

  DefinirCampoNegado(['ID']);
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
    if (F030ETC.Executar(estSelect)) then
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

  FCodPor := p510AGE.CodPor;

  xQuery := THQuery.CreatePersonalizado;
  try
    xQuery.Command := 'SELECT CODBAN FROM E039POR WHERE CODEMP = :CODEMP AND CODPOR = :CODPOR ';
    xQuery.ParamByName('CODEMP').Value := p510AGE.EmpGer;
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
    xHistorico.Executar(estSelect);

    Result := xHistorico;
    Self.Add(xHistorico)
  end;
end;

{ T160CLP }

constructor T160CLP.Create;
begin
  inherited Create('USU_T160CLP');
  DefinirCampoNegado(['ID','ChkRea']);
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

end.
