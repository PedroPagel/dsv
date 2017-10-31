unit o510tit;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, o501tcp, oTabelas,
  DateUtils, o501mcp, oLayout, oGeral, o070fil;
type
  TTituloDebitoDiretoAutorizado = class;

  T510TIT = class(TTabelaUsuario)
  private
    FUSU_IDARM: Integer;
    FUSU_CodEmp: Integer;
    FUSU_CodFil: Integer;
    FUSU_NumTit: string;
    FUSU_CodFor: Integer;
    FUSU_CodTpt: string;
    FUSU_CgcCpf: Double;
    FUSU_SitTit: string;
    FUSU_VlrOri: Double;
    FUSU_VctOri: TDate;
    FUSU_DatEmi: TDate;
    FUSU_DatDsc: TDate;
    FUSU_VlrDsc: Double;
    FUSU_VlrJrs: Double;
    FUSU_TipFor: Char;
    FUSU_CodBar: string;
    FUSU_LogTit: string;
    FUSU_SitArm: Char;
    FUSU_DatMov: TDate;

    FUSU_IDARMOLD: Integer;
    FUSU_CodEmpOLD: Integer;
    FUSU_CodFilOLD: Integer;
    FUSU_NumTitOLD: string;
    FUSU_CodForOLD: Integer;
    FUSU_CodTptOLD: string;
    FUSU_CgcCpfOLD: Double;
    FUSU_SitTitOLD: string;
    FUSU_VlrOriOLD: Double;
    FUSU_VctOriOLD: TDate;
    FUSU_DatEmiOLD: TDate;
    FUSU_DatDscOLD: TDate;
    FUSU_VlrDscOLD: Double;
    FUSU_VlrJrsOLD: Double;
    FUSU_TipForOLD: Char;
    FUSU_CodBarOLD: string;
    FUSU_LogTitOLD: string;
    FUSU_SitArmOLD: Char;
    FUSU_DatMovOLD: TDate;

    FCarregado: Boolean;
    //FLogTit: string;
    FCodReg: TCodReg;
    FTituloDebitoDiretoAutorizado: TTituloDebitoDiretoAutorizado;

    function GetUSU_IDARM: Integer;
    procedure SetUSU_IDARM(const pUSU_IDARM: Integer);
    function GetUSU_CodEmp: Integer;
    procedure SetUSU_CodEmp(const pUSU_CodEmp: Integer);
    function GetUSU_CodFil: Integer;
    procedure SetUSU_CodFil(const pUSU_CodFil: Integer);
    function GetUSU_NumTit: string;
    procedure SetUSU_NumTit(const pUSU_NumTit: string);
    function GetUSU_CodFor: Integer;
    procedure SetUSU_CodFor(const pUSU_CodFor: Integer);
    function GetUSU_CodTpt: string;
    procedure SetUSU_CodTpt(const pUSU_CodTpt: string);
    function GetUSU_CgcCpf: Double;
    procedure SetUSU_CgcCpf(const pUSU_CgcCpf: Double);
    function GetUSU_SitTit: string;
    procedure SetUSU_SitTit(const pUSU_SitTit: string);
    function GetUSU_VlrOri: Double;
    procedure SetUSU_VlrOri(const pUSU_VlrOri: Double);
    function GetUSU_VctOri: TDate;
    procedure SetUSU_VctOri(const pUSU_VctOri: TDate);
    function GetUSU_DatEmi: TDate;
    procedure SetUSU_DatEmi(const pUSU_DatEmi: TDate);
    function GetUSU_DatDsc: TDate;
    procedure SetUSU_DatDsc(const pUSU_DatDsc: TDate);
    function GetUSU_VlrDsc: Double;
    procedure SetUSU_VlrDsc(const pUSU_VlrDsc: Double);
    function GetUSU_VlrJrs: Double;
    procedure SetUSU_VlrJrs(const pUSU_VlrJrs: Double);
    function GetUSU_TipFor: Char;
    procedure SetUSU_TipFor(const pUSU_TipFor: Char);
    function GetUSU_CodBar: string;
    procedure SetUSU_CodBar(const pUSU_CodBar: string);
    function GetUSU_LogTit: string;
    procedure SetUSU_LogTit(const pUSU_LogTit: string);
    function GetUSU_SitArm: Char;
    procedure SetUSU_SitArm(const pUSU_SitArm: Char);
    function GetUSU_DatMov: TDate;
    procedure SetUSU_DatMov(const pUSU_DatMov: TDate);

    function GetUSU_IDARMOld: Integer;
    procedure SetUSU_IDARMOld(const pUSU_IDARM: Integer);
    function GetUSU_CodEmpOld: Integer;
    procedure SetUSU_CodEmpOld(const pUSU_CodEmp: Integer);
    function GetUSU_CodFilOld: Integer;
    procedure SetUSU_CodFilOld(const pUSU_CodFil: Integer);
    function GetUSU_NumTitOld: string;
    procedure SetUSU_NumTitOld(const pUSU_NumTit: string);
    function GetUSU_CodForOld: Integer;
    procedure SetUSU_CodForOld(const pUSU_CodFor: Integer);
    function GetUSU_CodTptOld: string;
    procedure SetUSU_CodTptOld(const pUSU_CodTpt: string);
    function GetUSU_CgcCpfOld: Double;
    procedure SetUSU_CgcCpfOld(const pUSU_CgcCpf: Double);
    function GetUSU_SitTitOld: string;
    procedure SetUSU_SitTitOld(const pUSU_SitTit: string);
    function GetUSU_VlrOriOld: Double;
    procedure SetUSU_VlrOriOld(const pUSU_VlrOri: Double);
    function GetUSU_VctOriOld: TDate;
    procedure SetUSU_VctOriOld(const pUSU_VctOri: TDate);
    function GetUSU_DatEmiOld: TDate;
    procedure SetUSU_DatEmiOld(const pUSU_DatEmi: TDate);
    function GetUSU_DatDscOld: TDate;
    procedure SetUSU_DatDscOld(const pUSU_DatDsc: TDate);
    function GetUSU_VlrDscOld: Double;
    procedure SetUSU_VlrDscOld(const pUSU_VlrDsc: Double);
    function GetUSU_VlrJrsOld: Double;
    procedure SetUSU_VlrJrsOld(const pUSU_VlrJrs: Double);
    function GetUSU_TipForOld: Char;
    procedure SetUSU_TipForOld(const pUSU_TipFor: Char);
    function GetUSU_CodBarOld: string;
    procedure SetUSU_CodBarOld(const pUSU_CodBar: string);
    function GetUSU_LogTitOld: string;
    procedure SetUSU_LogTitOld(const pUSU_LogTit: string);
    function GetUSU_SitArmOld: Char;
    procedure SetUSU_SitArmOld(const pUSU_SitArm: Char);
    function GetUSU_DatMovOld: TDate;
    procedure SetUSU_DatMovOld(const pUSU_DatMov: TDate);
  protected
    procedure Registros_OLD(); override;
  public
    constructor Create();
    constructor CreatePersonalizado(const pLinha: string; const pLayout: TLayout);
    destructor Destroy(); override;

    constructor CreateCarregado(const pUsaID: Boolean = False);

    function Carregado: Boolean;
    function Registro: TCodReg;
    function Titulo: TTituloDebitoDiretoAutorizado;

    procedure Alterar();
    procedure ConsultarTitulo();
    procedure Excluir(const pID: Integer);

    property USU_IDARM: Integer read GetUSU_IDARM write SetUSU_IDARM;
    property USU_CodEmp: Integer read GetUSU_CodEmp write SetUSU_CodEmp;
    property USU_CodFil: Integer read GetUSU_CodFil write SetUSU_CodFil;
    property USU_NumTit: string read GetUSU_NumTit write SetUSU_NumTit;
    property USU_CodFor: Integer read GetUSU_CodFor write SetUSU_CodFor;
    property USU_CodTpt: string read GetUSU_CodTpt write SetUSU_CodTpt;
    property USU_CgcCpf: Double read GetUSU_CgcCpf write SetUSU_CgcCpf;
    property USU_SitTit: string read GetUSU_SitTit write SetUSU_SitTit;
    property USU_VlrOri: Double read GetUSU_VlrOri write SetUSU_VlrOri;
    property USU_VctOri: TDate read GetUSU_VctOri write SetUSU_VctOri;
    property USU_DatEmi: TDate read GetUSU_DatEmi write SetUSU_DatEmi;
    property USU_DatDsc: TDate read GetUSU_DatDsc write SetUSU_DatDsc;
    property USU_VlrDsc: Double read GetUSU_VlrDsc write SetUSU_VlrDsc;
    property USU_VlrJrs: Double read GetUSU_VlrJrs write SetUSU_VlrJrs;
    property USU_TipFor: Char read GetUSU_TipFor write SetUSU_TipFor;
    property USU_CodBar: string read GetUSU_CodBar write SetUSU_CodBar;
    property USU_LogTit: string read GetUSU_LogTit write SetUSU_LogTit;
    property USU_SitArm: Char read GetUSU_SitArm write SetUSU_SitArm;
    property USU_DatMov: TDate read GetUSU_DatMov write SetUSU_DatMov;

    property OLD_USU_IDARM: Integer read GetUSU_IDARMOLD write SetUSU_IDARMOLD;
    property OLD_USU_CodEmp: Integer read GetUSU_CodEmpOLD write SetUSU_CodEmpOLD;
    property OLD_USU_CodFil: Integer read GetUSU_CodFilOLD write SetUSU_CodFilOLD;
    property OLD_USU_NumTit: string read GetUSU_NumTitOLD write SetUSU_NumTitOLD;
    property OLD_USU_CodFor: Integer read GetUSU_CodForOLD write SetUSU_CodForOLD;
    property OLD_USU_CodTpt: string read GetUSU_CodTptOLD write SetUSU_CodTptOLD;
    property OLD_USU_CgcCpf: Double read GetUSU_CgcCpfOLD write SetUSU_CgcCpfOLD;
    property OLD_USU_SitTit: string read GetUSU_SitTitOLD write SetUSU_SitTitOLD;
    property OLD_USU_VlrOri: Double read GetUSU_VlrOriOLD write SetUSU_VlrOriOLD;
    property OLD_USU_VctOri: TDate read GetUSU_VctOriOLD write SetUSU_VctOriOLD;
    property OLD_USU_DatEmi: TDate read GetUSU_DatEmiOLD write SetUSU_DatEmiOLD;
    property OLD_USU_DatDsc: TDate read GetUSU_DatDscOLD write SetUSU_DatDscOLD;
    property OLD_USU_VlrDsc: Double read GetUSU_VlrDscOLD write SetUSU_VlrDscOLD;
    property OLD_USU_VlrJrs: Double read GetUSU_VlrJrsOLD write SetUSU_VlrJrsOLD;
    property OLD_USU_TipFor: Char read GetUSU_TipForOLD write SetUSU_TipForOLD;
    property OLD_USU_CodBar: string read GetUSU_CodBarOLD write SetUSU_CodBarOLD;
    property OLD_USU_LogTit: string read GetUSU_LogTitOLD write SetUSU_LogTitOLD;
    property OLD_USU_SitArm: Char read GetUSU_SitArmOLD write SetUSU_SitArmOLD;
    property OLD_USU_DatMov: TDate read GetUSU_DatMovOLD write SetUSU_DatMovOLD;
  end;

  TIteradorHistoricoFornecedor = class(TIterador)
  public
    function BuscarHistoricoFornecedor(const pTitulo: T501TCP) : THistorico;
  end;

  TTituloDebitoDiretoAutorizado = class(T501TCP)
  private
    F510TIT: T510TIT;
    FListaHistorico: TIterador;
    FFilial: T070FIL;
    FNomArq: string;
    FIteradorHistoricoFornecedor: TIteradorHistoricoFornecedor;

    function GetFilial: T070FIL;
    function VerificarCodigoDeBarras(): Boolean;
    function VerificarTituloArmazenado(): Boolean;
    function VerificarContabilizacao(): Boolean;
    procedure SetFilial(const pFilial: T070FIL);
  public
    constructor Create();
    destructor Destroy(); override;

    procedure Consistir();
    procedure Processar();
    procedure Preparar();
    procedure GerarLog();

    procedure AddLog(const pLog: string);
    procedure Anexar(const p510TIT: T510TIT);

    property Filial: T070FIL read GetFilial write SetFilial;
  end;

implementation

uses
  oQuery, o510arm;

{ T510TIT }

constructor T510TIT.Create();
begin
  inherited Create('USU_T510TIT');

  FCarregado := False;
end;

destructor T510TIT.Destroy();
begin
  inherited;
  Self.Close;

  FreeAndNil(FTituloDebitoDiretoAutorizado);
end;

function T510TIT.GetUSU_IDARM: Integer;
begin
  Result := FUSU_IDARM;
end;

procedure T510TIT.SetUSU_IDARM(const pUSU_IDARM: Integer);
begin
  FUSU_IDARM := pUSU_IDARM;
end;

function T510TIT.GetUSU_CodEmp: Integer;
begin
  Result := FUSU_CodEmp;
end;

procedure T510TIT.SetUSU_CodEmp(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmp := pUSU_CodEmp;
end;

function T510TIT.GetUSU_CodFil: Integer;
begin
  Result := FUSU_CodFil;
end;

procedure T510TIT.SetUSU_CodFil(const pUSU_CodFil: Integer);
begin
  FUSU_CodFil := pUSU_CodFil;
end;

function T510TIT.GetUSU_NumTit: string;
begin
  Result := FUSU_NumTit;
end;

procedure T510TIT.SetUSU_NumTit(const pUSU_NumTit: string);
begin
  FUSU_NumTit := pUSU_NumTit;
end;

function T510TIT.GetUSU_CodFor: Integer;
begin
  Result := FUSU_CodFor;
end;

procedure T510TIT.SetUSU_CodFor(const pUSU_CodFor: Integer);
begin
  FUSU_CodFor := pUSU_CodFor;
end;

function T510TIT.GetUSU_CodTpt: string;
begin
  Result := FUSU_CodTpt;
end;

procedure T510TIT.SetUSU_CodTpt(const pUSU_CodTpt: string);
begin
  FUSU_CodTpt := pUSU_CodTpt;
end;

function T510TIT.GetUSU_CgcCpf: Double;
begin
  Result := FUSU_CgcCpf;
end;

procedure T510TIT.SetUSU_CgcCpf(const pUSU_CgcCpf: Double);
begin
  FUSU_CgcCpf := pUSU_CgcCpf;
end;

function T510TIT.GetUSU_SitTit: string;
begin
  Result := FUSU_SitTit;
end;

procedure T510TIT.SetUSU_SitTit(const pUSU_SitTit: string);
begin
  FUSU_SitTit := pUSU_SitTit;
end;

function T510TIT.GetUSU_VlrOri: Double;
begin
  Result := FUSU_VlrOri;
end;

procedure T510TIT.SetUSU_VlrOri(const pUSU_VlrOri: Double);
begin
  FUSU_VlrOri := pUSU_VlrOri;
end;

function T510TIT.GetUSU_VctOri: TDate;
begin
  Result := FUSU_VctOri;
end;

procedure T510TIT.SetUSU_VctOri(const pUSU_VctOri: TDate);
begin
  FUSU_VctOri := pUSU_VctOri;
end;

function T510TIT.GetUSU_DatEmi: TDate;
begin
  Result := FUSU_DatEmi;
end;

procedure T510TIT.SetUSU_DatEmi(const pUSU_DatEmi: TDate);
begin
  FUSU_DatEmi := pUSU_DatEmi;
end;

function T510TIT.GetUSU_DatDsc: TDate;
begin
  Result := FUSU_DatDsc;
end;

procedure T510TIT.SetUSU_DatDsc(const pUSU_DatDsc: TDate);
begin
  FUSU_DatDsc := pUSU_DatDsc;
end;

function T510TIT.GetUSU_VlrDsc: Double;
begin
  Result := FUSU_VlrDsc;
end;

procedure T510TIT.SetUSU_VlrDsc(const pUSU_VlrDsc: Double);
begin
  FUSU_VlrDsc := pUSU_VlrDsc;
end;

function T510TIT.GetUSU_VlrJrs: Double;
begin
  Result := FUSU_VlrJrs;
end;

procedure T510TIT.SetUSU_VlrJrs(const pUSU_VlrJrs: Double);
begin
  FUSU_VlrJrs := pUSU_VlrJrs;
end;

function T510TIT.GetUSU_TipFor: Char;
begin
  Result := FUSU_TipFor;
end;

procedure T510TIT.SetUSU_TipFor(const pUSU_TipFor: Char);
begin
  FUSU_TipFor := pUSU_TipFor;
end;

function T510TIT.GetUSU_CodBar: string;
begin
  Result := FUSU_CodBar;
end;

procedure T510TIT.SetUSU_CodBar(const pUSU_CodBar: string);
begin
  FUSU_CodBar := pUSU_CodBar;
end;

function T510TIT.GetUSU_LogTit: string;
begin
  Result := FUSU_LogTit;
end;

procedure T510TIT.SetUSU_LogTit(const pUSU_LogTit: string);
begin
  FUSU_LogTit := pUSU_LogTit;
end;

function T510TIT.GetUSU_SitArm: Char;
begin
  Result := FUSU_SitArm;
end;

procedure T510TIT.SetUSU_SitArm(const pUSU_SitArm: Char);
begin
  FUSU_SitArm := pUSU_SitArm;
end;

function T510TIT.GetUSU_DatMov: TDate;
begin
  Result := FUSU_DatMov;
end;

procedure T510TIT.SetUSU_DatMov(const pUSU_DatMov: TDate);
begin
  FUSU_DatMov := pUSU_DatMov;
end;

function T510TIT.GetUSU_IDARMOLD: Integer;
begin
  Result := FUSU_IDARMOLD;
end;

procedure T510TIT.SetUSU_IDARMOLD(const pUSU_IDARM: Integer);
begin
  FUSU_IDARMOLD := pUSU_IDARM;
end;

function T510TIT.GetUSU_CodEmpOLD: Integer;
begin
  Result := FUSU_CodEmpOLD;
end;

procedure T510TIT.SetUSU_CodEmpOLD(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmpOLD := pUSU_CodEmp;
end;

function T510TIT.GetUSU_CodFilOLD: Integer;
begin
  Result := FUSU_CodFilOLD;
end;

procedure T510TIT.SetUSU_CodFilOLD(const pUSU_CodFil: Integer);
begin
  FUSU_CodFilOLD := pUSU_CodFil;
end;

function T510TIT.GetUSU_NumTitOLD: string;
begin
  Result := FUSU_NumTitOLD;
end;

procedure T510TIT.SetUSU_NumTitOLD(const pUSU_NumTit: string);
begin
  FUSU_NumTitOLD := pUSU_NumTit;
end;

function T510TIT.GetUSU_CodForOLD: Integer;
begin
  Result := FUSU_CodForOLD;
end;

procedure T510TIT.SetUSU_CodForOLD(const pUSU_CodFor: Integer);
begin
  FUSU_CodForOLD := pUSU_CodFor;
end;

function T510TIT.GetUSU_CodTptOLD: string;
begin
  Result := FUSU_CodTptOLD;
end;

procedure T510TIT.SetUSU_CodTptOLD(const pUSU_CodTpt: string);
begin
  FUSU_CodTptOLD := pUSU_CodTpt;
end;

function T510TIT.GetUSU_CgcCpfOLD: Double;
begin
  Result := FUSU_CgcCpfOLD;
end;

procedure T510TIT.SetUSU_CgcCpfOLD(const pUSU_CgcCpf: Double);
begin
  FUSU_CgcCpfOLD := pUSU_CgcCpf;
end;

function T510TIT.GetUSU_SitTitOLD: string;
begin
  Result := FUSU_SitTitOLD;
end;

procedure T510TIT.SetUSU_SitTitOLD(const pUSU_SitTit: string);
begin
  FUSU_SitTitOLD := pUSU_SitTit;
end;

function T510TIT.GetUSU_VlrOriOLD: Double;
begin
  Result := FUSU_VlrOriOLD;
end;

procedure T510TIT.SetUSU_VlrOriOLD(const pUSU_VlrOri: Double);
begin
  FUSU_VlrOriOLD := pUSU_VlrOri;
end;

function T510TIT.Titulo: TTituloDebitoDiretoAutorizado;
begin
  Result := FTituloDebitoDiretoAutorizado;
end;

function T510TIT.GetUSU_VctOriOLD: TDate;
begin
  Result := FUSU_VctOriOLD;
end;

procedure T510TIT.SetUSU_VctOriOLD(const pUSU_VctOri: TDate);
begin
  FUSU_VctOriOLD := pUSU_VctOri;
end;

function T510TIT.GetUSU_DatEmiOLD: TDate;
begin
  Result := FUSU_DatEmiOLD;
end;

procedure T510TIT.SetUSU_DatEmiOLD(const pUSU_DatEmi: TDate);
begin
  FUSU_DatEmiOLD := pUSU_DatEmi;
end;

function T510TIT.GetUSU_DatDscOLD: TDate;
begin
  Result := FUSU_DatDscOLD;
end;

procedure T510TIT.SetUSU_DatDscOLD(const pUSU_DatDsc: TDate);
begin
  FUSU_DatDscOLD := pUSU_DatDsc;
end;

function T510TIT.GetUSU_VlrDscOLD: Double;
begin
  Result := FUSU_VlrDscOLD;
end;

procedure T510TIT.SetUSU_VlrDscOLD(const pUSU_VlrDsc: Double);
begin
  FUSU_VlrDscOLD := pUSU_VlrDsc;
end;

function T510TIT.GetUSU_VlrJrsOLD: Double;
begin
  Result := FUSU_VlrJrsOLD;
end;

procedure T510TIT.SetUSU_VlrJrsOLD(const pUSU_VlrJrs: Double);
begin
  FUSU_VlrJrsOLD := pUSU_VlrJrs;
end;

function T510TIT.GetUSU_TipForOLD: Char;
begin
  Result := FUSU_TipForOLD;
end;

procedure T510TIT.SetUSU_TipForOLD(const pUSU_TipFor: Char);
begin
  FUSU_TipForOLD := pUSU_TipFor;
end;

function T510TIT.GetUSU_CodBarOLD: string;
begin
  Result := FUSU_CodBarOLD;
end;

procedure T510TIT.SetUSU_CodBarOLD(const pUSU_CodBar: string);
begin
  FUSU_CodBarOLD := pUSU_CodBar;
end;

function T510TIT.GetUSU_LogTitOLD: string;
begin
  Result := FUSU_LogTitOLD;
end;

procedure T510TIT.SetUSU_LogTitOLD(const pUSU_LogTit: string);
begin
  FUSU_LogTitOLD := pUSU_LogTit;
end;

function T510TIT.GetUSU_SitArmOLD: Char;
begin
  Result := FUSU_SitArmOLD;
end;

procedure T510TIT.SetUSU_SitArmOLD(const pUSU_SitArm: Char);
begin
  FUSU_SitArmOLD := pUSU_SitArm;
end;

function T510TIT.GetUSU_DatMovOLD: TDate;
begin
  Result := FUSU_DatMovOLD;
end;

procedure T510TIT.SetUSU_DatMovOLD(const pUSU_DatMov: TDate);
begin
  FUSU_DatMovOLD := pUSU_DatMov;
end;

function T510TIT.Registro: TCodReg;
begin
  Result := FCodReg;
end;

procedure T510TIT.Registros_OLD();
begin
  FUSU_IDARMOLD := FUSU_IDARM;
  FUSU_CodEmpOLD := FUSU_CodEmp;
  FUSU_CodFilOLD := FUSU_CodFil;
  FUSU_NumTitOLD := FUSU_NumTit;
  FUSU_CodForOLD := FUSU_CodFor;
  FUSU_CodTptOLD := FUSU_CodTpt;
  FUSU_CgcCpfOLD := FUSU_CgcCpf;
  FUSU_SitTitOLD := FUSU_SitTit;
  FUSU_VlrOriOLD := FUSU_VlrOri;
  FUSU_VctOriOLD := FUSU_VctOri;
  FUSU_DatEmiOLD := FUSU_DatEmi;
  FUSU_DatDscOLD := FUSU_DatDsc;
  FUSU_VlrDscOLD := FUSU_VlrDsc;
  FUSU_VlrJrsOLD := FUSU_VlrJrs;
  FUSU_TipForOLD := FUSU_TipFor;
  FUSU_CodBarOLD := FUSU_CodBar;
  FUSU_LogTitOLD := FUSU_LogTit;
  FUSU_SitArmOLD := FUSU_SitArm;
  FUSU_DatMovOLD := FUSU_DatMov;
end;

constructor T510TIT.CreateCarregado(const pUsaID: Boolean = False);
begin
  inherited Create('USU_T510TIT');

  FCarregado := True;

  if not(pUsaID) then
    BlockProperty(['USU_IDARM']);
end;

constructor T510TIT.CreatePersonalizado(const pLinha: string;
  const pLayout: TLayout);
begin
  inherited Create('USU_T510TIT');

  FCarregado := False;

  FillChar(FCodReg, SizeOf(FCodReg), 0);
  FCodReg.Posicao := 14;
  FCodReg.Tamanho := 1;
  FCodReg.Campo := 'CodReg';
  FCodReg.Registro1 := 'G';
  FCodReg := pLayout.AdicionarLinhas(pLinha, Self, FCodReg);
end;

procedure T510TIT.Alterar;
begin
  FTituloDebitoDiretoAutorizado.PropertyForSelect(['USU_IDTIT']);
  FTituloDebitoDiretoAutorizado.FieldsForUpdate(['CODBAR']);
  FTituloDebitoDiretoAutorizado.Execute(estUpdate);
end;

function T510TIT.Carregado: Boolean;
begin
  Result := FCarregado;
end;

procedure T510TIT.ConsultarTitulo;
begin
  if AnsiSameText(FUSU_SitArm,'S') then
  begin
    FTituloDebitoDiretoAutorizado := TTituloDebitoDiretoAutorizado.Create;
    FTituloDebitoDiretoAutorizado.USU_IDTIT := Self.USU_ID;
    FTituloDebitoDiretoAutorizado.PropertyForSelect(['USU_IDTIT'], True);
    FTituloDebitoDiretoAutorizado.Execute(etSelect);
  end;
end;

procedure T510TIT.Excluir(const pID: Integer);
begin
  Self.Start;
  Self.USU_IdArm := pID;
  Self.PropertyForSelect(['USU_ID','USU_IDARM'], True);
  Self.Execute(estDelete);
end;

{ TTituloDebitoDiretoAutorizado }

procedure TTituloDebitoDiretoAutorizado.AddLog(const pLog: string);
begin
  if not(IsNull(F510TIT.USU_LogTit)) then
    F510TIT.USU_LogTit := F510TIT.USU_LogTit + ' - ' + pLog
  else
    F510TIT.USU_LogTit := pLog;
end;

procedure TTituloDebitoDiretoAutorizado.Anexar(const p510TIT: T510TIT);
var
  xClonar: TIterador;
begin
  F510TIT := T510TIT.CreateCarregado;

  xClonar := TIterador.Create;
  xClonar.Iterar(p510TIT, F510TIT);
end;

procedure TTituloDebitoDiretoAutorizado.Consistir;
var
  xHistorico: THistorico;
begin
  F510TIT.USU_LogTit := EmptyStr; //Limpa caso ja tenha sido consistido

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
      Self.AddLog(Format('Alteração não permitida, título já foi cadastrado no arquivo: %s.', [FNomArq]));

  if (VerificarContabilizacao) then
    Self.AddLog('Alteração não permitida. Movimento de Entrada do Título já está contabilizado.');

  if (AnsiSameText(Self.CodPor, xHistorico.CodPor) and AnsiSameText(Self.CodPor, FFilial.RecPor)) then
    Self.AddLog('Alteração não permitida. Título não está em Portador Empresa ou Portador Fornecedor.');

  if IsNull(F510TIT.USU_LogTit) then
    Self.AddLog('Ok');
end;

constructor TTituloDebitoDiretoAutorizado.Create;
begin
  inherited Create();

  FFilial := T070FIL.Create;
  BlockProperty(['NomArq', 'Filial']);
  FListaHistorico := TIterador.Create;
  FIteradorHistoricoFornecedor := TIteradorHistoricoFornecedor.Create;
end;

destructor TTituloDebitoDiretoAutorizado.Destroy;
begin
  FreeAndNil(FIteradorHistoricoFornecedor);
  FListaHistorico.Clear;
  FreeAndNil(FFilial);

  inherited;
end;

procedure TTituloDebitoDiretoAutorizado.GerarLog;
begin
  F510TIT.USU_SitArm := 'N';
  F510TIT.PropertyForSelect(['USU_ID']);
  F510TIT.FieldsForUpdate(['USU_SITARM', 'USU_LOGTIT']);
  F510TIT.Execute(estUpdate);
end;

function TTituloDebitoDiretoAutorizado.GetFilial: T070FIL;
begin
  Result := FFilial;
end;

procedure TTituloDebitoDiretoAutorizado.Preparar;
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
    Self.TipJrs := VarToChar(iff(not(IsNull(xHistorico.PagTir)), xHistorico.PagTir, FFilial.PagTjr));
    Self.CodCrt := iff(not(IsNull(xHistorico.CodCrt)), xHistorico.CodCrt, FFilial.RecCrt);
    Self.CodPor := iff(not(IsNull(xHistorico.CodPor)), xHistorico.CodPor, FFilial.RecPor);
    Self.AntDsc := xHistorico.AntDsc;
    Self.PerDsc := xHistorico.PerDsc;
    Self.TolDsc := xHistorico.TolDsc;
    Self.CodCrp := xHistorico.CodCrp;

    if	(xHistorico.CodFpg > 0) then
      Self.CodFpg := xHistorico.CodFpg;
  end;
end;

procedure TTituloDebitoDiretoAutorizado.Processar;
begin
  if (AnsiSameText(F510TIT.USU_LogTit,'Ok')) then
  begin
    Self.Start;
    Self.USU_IDTIT := F510TIT.USU_ID;
    Self.CodBar := F510TIT.USU_CodBar;
    Self.PropertyForSelect(['CODEMP','CODFIL','CODFOR','NUMTIT','CODTPT'], True);
    Self.FieldsForUpdate(['CODBAR', 'USU_IDTIT']);
    Self.Execute(estUpdate);

    F510TIT.USU_CodEmp := Self.CodEmp;
    F510TIT.USU_CodFil := Self.CodFil;
    F510TIT.USU_NumTit := Self.NumTit;
    F510TIT.USU_CodFor := Self.CodFor;
    F510TIT.USU_CodTpt := Self.CodTpt;
    F510TIT.USU_SitTit := Self.SitTit;
    F510TIT.USU_SitArm := 'S';
    F510TIT.PropertyForSelect(['USU_ID']);
    F510TIT.FieldsForUpdate(['USU_CODEMP','USU_CODFIL','USU_SITARM','USU_LOGTIT']);
    F510TIT.Execute(estUpdate);
  end
  else
    GerarLog();
end;

procedure TTituloDebitoDiretoAutorizado.SetFilial(const pFilial: T070FIL);
var
  xIterar: TIterador;
begin
  xIterar := TIterador.Create;
  xIterar.Iterar(pFilial, FFilial);
  FreeAndNil(xIterar);
end;

function TTituloDebitoDiretoAutorizado.VerificarCodigoDeBarras: Boolean;
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

function TTituloDebitoDiretoAutorizado.VerificarContabilizacao: Boolean;
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
  x501MCP.PropertyForSelect(['CODEMP','CODFIL','NUMTIT','CODFOR','DATPGT'], True);
  x501MCP.AddToCommand('AND NUMLOT > 0 AND VLRMOV > 0', False);
  Result := x501MCP.Execute(etSelect);
end;

function TTituloDebitoDiretoAutorizado.VerificarTituloArmazenado: Boolean;
var
  x510ARM: T510ARM;
begin
  F510TIT.USU_CodEmp := Self.CodEmp;
  F510TIT.USU_CodFil := Self.CodFil;
  F510TIT.USU_NumTit := Self.NumTit;
  F510TIT.USU_CodFor := Self.CodFor;
  F510TIT.USU_CodTpt := Self.CodTpt;
  F510TIT.USU_SitArm := 'S';
  F510TIT.PropertyForSelect(['USU_CODEMP','USU_CODFIL','USU_NUMTIT','USU_CODFOR'], True);
  F510TIT.AddToCommand(Format(' AND USU_ID <> %d ', [Self.USU_IDTIT]), False);
  Result := F510TIT.Execute(etSelect);

  if (Result) then
  begin
    x510ARM := T510ARM.Create();
    x510ARM.USU_ID := F510TIT.USU_IdArm;
    x510ARM.PropertyForSelect(['USU_ID']);
    x510ARM.Execute(etSelect);
    FNomArq := x510ARM.USU_NomArq;
  end;
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
    xHistorico.PropertyForSelect(['CODEMP','CODFIL','CODFOR'], True);
    xHistorico.Execute(etSelect);

    Result := xHistorico;
    Self.Add(xHistorico)
  end;
end;

end.
