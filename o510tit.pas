unit o510tit;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T510TIT = class(TTabelaUsuario)
  private
    FUSU_IDARM: Integer;
    FUSU_CodEmp: Integer;
    FUSU_CodFil: Integer;
    FUSU_NumTit: string;
    FUSU_CodFor: Integer;
    FUSU_CodTpt: string;
    FUSU_LogTit: string;
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
    FUSU_SitArm: Char;
    FUSU_DatMov: TDate;

    FUSU_IDARMOLD: Integer;
    FUSU_CodEmpOLD: Integer;
    FUSU_CodFilOLD: Integer;
    FUSU_NumTitOLD: string;
    FUSU_CodForOLD: Integer;
    FUSU_CodTptOLD: string;
    FUSU_LogTitOLD: string;
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
    FUSU_SitArmOLD: Char;
    FUSU_DatMovOLD: TDate;

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
    function GetUSU_LogTit: string;
    procedure SetUSU_LogTit(const pUSU_LogTit: string);
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
    function GetUSU_LogTitOld: string;
    procedure SetUSU_LogTitOld(const pUSU_LogTit: string);
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
    function GetUSU_SitArmOld: Char;
    procedure SetUSU_SitArmOld(const pUSU_SitArm: Char);
    function GetUSU_DatMovOld: TDate;
    procedure SetUSU_DatMovOld(const pUSU_DatMov: TDate);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_IDARM: Integer read GetUSU_IDARM write SetUSU_IDARM;
    property USU_CodEmp: Integer read GetUSU_CodEmp write SetUSU_CodEmp;
    property USU_CodFil: Integer read GetUSU_CodFil write SetUSU_CodFil;
    property USU_NumTit: string read GetUSU_NumTit write SetUSU_NumTit;
    property USU_CodFor: Integer read GetUSU_CodFor write SetUSU_CodFor;
    property USU_CodTpt: string read GetUSU_CodTpt write SetUSU_CodTpt;
    property USU_LogTit: string read GetUSU_LogTit write SetUSU_LogTit;
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
    property USU_SitArm: Char read GetUSU_SitArm write SetUSU_SitArm;
    property USU_DatMov: TDate read GetUSU_DatMov write SetUSU_DatMov;

    property OLD_USU_IDARM: Integer read GetUSU_IDARMOLD write SetUSU_IDARMOLD;
    property OLD_USU_CodEmp: Integer read GetUSU_CodEmpOLD write SetUSU_CodEmpOLD;
    property OLD_USU_CodFil: Integer read GetUSU_CodFilOLD write SetUSU_CodFilOLD;
    property OLD_USU_NumTit: string read GetUSU_NumTitOLD write SetUSU_NumTitOLD;
    property OLD_USU_CodFor: Integer read GetUSU_CodForOLD write SetUSU_CodForOLD;
    property OLD_USU_CodTpt: string read GetUSU_CodTptOLD write SetUSU_CodTptOLD;
    property OLD_USU_LogTit: string read GetUSU_LogTitOLD write SetUSU_LogTitOLD;
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
    property OLD_USU_SitArm: Char read GetUSU_SitArmOLD write SetUSU_SitArmOLD;
    property OLD_USU_DatMov: TDate read GetUSU_DatMovOLD write SetUSU_DatMovOLD;
  end;

implementation

{ T510TIT }

constructor T510TIT.Create();
begin
  AddForeignKeys(['USU_IDARM'], ['USU_ID']);
  AddPrimaryKeys('USU_ID');

  inherited Create('USU_T510TIT');
end;

destructor T510TIT.Destroy();
begin
  inherited;
end;

function T510TIT.GetUSU_IDARM: Integer;
begin
  Result := FUSU_IDARM;
end;

procedure T510TIT.SetUSU_IDARM(const pUSU_IDARM: Integer);
begin
  FUSU_IDARM := pUSU_IDARM;

  CheckField('USU_IDARM');
end;

function T510TIT.GetUSU_CodEmp: Integer;
begin
  Result := FUSU_CodEmp;
end;

procedure T510TIT.SetUSU_CodEmp(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmp := pUSU_CodEmp;

  CheckField('USU_CodEmp');
end;

function T510TIT.GetUSU_CodFil: Integer;
begin
  Result := FUSU_CodFil;
end;

procedure T510TIT.SetUSU_CodFil(const pUSU_CodFil: Integer);
begin
  FUSU_CodFil := pUSU_CodFil;

  CheckField('USU_CodFil');
end;

function T510TIT.GetUSU_NumTit: string;
begin
  Result := FUSU_NumTit;
end;

procedure T510TIT.SetUSU_NumTit(const pUSU_NumTit: string);
begin
  FUSU_NumTit := pUSU_NumTit;

  CheckField('USU_NumTit');
end;

function T510TIT.GetUSU_CodFor: Integer;
begin
  Result := FUSU_CodFor;
end;

procedure T510TIT.SetUSU_CodFor(const pUSU_CodFor: Integer);
begin
  FUSU_CodFor := pUSU_CodFor;

  CheckField('USU_CodFor');
end;

function T510TIT.GetUSU_CodTpt: string;
begin
  Result := FUSU_CodTpt;
end;

procedure T510TIT.SetUSU_CodTpt(const pUSU_CodTpt: string);
begin
  FUSU_CodTpt := pUSU_CodTpt;

  CheckField('USU_CodTpt');
end;

function T510TIT.GetUSU_LogTit: string;
begin
  Result := FUSU_LogTit;
end;

procedure T510TIT.SetUSU_LogTit(const pUSU_LogTit: string);
begin
  FUSU_LogTit := pUSU_LogTit;

  CheckField('USU_LogTit');
end;

function T510TIT.GetUSU_CgcCpf: Double;
begin
  Result := FUSU_CgcCpf;
end;

procedure T510TIT.SetUSU_CgcCpf(const pUSU_CgcCpf: Double);
begin
  FUSU_CgcCpf := pUSU_CgcCpf;

  CheckField('USU_CgcCpf');
end;

function T510TIT.GetUSU_SitTit: string;
begin
  Result := FUSU_SitTit;
end;

procedure T510TIT.SetUSU_SitTit(const pUSU_SitTit: string);
begin
  FUSU_SitTit := pUSU_SitTit;

  CheckField('USU_SitTit');
end;

function T510TIT.GetUSU_VlrOri: Double;
begin
  Result := FUSU_VlrOri;
end;

procedure T510TIT.SetUSU_VlrOri(const pUSU_VlrOri: Double);
begin
  FUSU_VlrOri := pUSU_VlrOri;

  CheckField('USU_VlrOri');
end;

function T510TIT.GetUSU_VctOri: TDate;
begin
  Result := FUSU_VctOri;
end;

procedure T510TIT.SetUSU_VctOri(const pUSU_VctOri: TDate);
begin
  FUSU_VctOri := pUSU_VctOri;

  CheckField('USU_VctOri');
end;

function T510TIT.GetUSU_DatEmi: TDate;
begin
  Result := FUSU_DatEmi;
end;

procedure T510TIT.SetUSU_DatEmi(const pUSU_DatEmi: TDate);
begin
  FUSU_DatEmi := pUSU_DatEmi;

  CheckField('USU_DatEmi');
end;

function T510TIT.GetUSU_DatDsc: TDate;
begin
  Result := FUSU_DatDsc;
end;

procedure T510TIT.SetUSU_DatDsc(const pUSU_DatDsc: TDate);
begin
  FUSU_DatDsc := pUSU_DatDsc;

  CheckField('USU_DatDsc');
end;

function T510TIT.GetUSU_VlrDsc: Double;
begin
  Result := FUSU_VlrDsc;
end;

procedure T510TIT.SetUSU_VlrDsc(const pUSU_VlrDsc: Double);
begin
  FUSU_VlrDsc := pUSU_VlrDsc;

  CheckField('USU_VlrDsc');
end;

function T510TIT.GetUSU_VlrJrs: Double;
begin
  Result := FUSU_VlrJrs;
end;

procedure T510TIT.SetUSU_VlrJrs(const pUSU_VlrJrs: Double);
begin
  FUSU_VlrJrs := pUSU_VlrJrs;

  CheckField('USU_VlrJrs');
end;

function T510TIT.GetUSU_TipFor: Char;
begin
  Result := FUSU_TipFor;
end;

procedure T510TIT.SetUSU_TipFor(const pUSU_TipFor: Char);
begin
  FUSU_TipFor := pUSU_TipFor;

  CheckField('USU_TipFor');
end;

function T510TIT.GetUSU_CodBar: string;
begin
  Result := FUSU_CodBar;
end;

procedure T510TIT.SetUSU_CodBar(const pUSU_CodBar: string);
begin
  FUSU_CodBar := pUSU_CodBar;

  CheckField('USU_CodBar');
end;

function T510TIT.GetUSU_SitArm: Char;
begin
  Result := FUSU_SitArm;
end;

procedure T510TIT.SetUSU_SitArm(const pUSU_SitArm: Char);
begin
  FUSU_SitArm := pUSU_SitArm;

  CheckField('USU_SitArm');
end;

function T510TIT.GetUSU_DatMov: TDate;
begin
  Result := FUSU_DatMov;
end;

procedure T510TIT.SetUSU_DatMov(const pUSU_DatMov: TDate);
begin
  FUSU_DatMov := pUSU_DatMov;

  CheckField('USU_DatMov');
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

function T510TIT.GetUSU_LogTitOLD: string;
begin
  Result := FUSU_LogTitOLD;
end;

procedure T510TIT.SetUSU_LogTitOLD(const pUSU_LogTit: string);
begin
  FUSU_LogTitOLD := pUSU_LogTit;
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

procedure T510TIT.Registros_OLD();
begin
  FUSU_IDARMOLD := FUSU_IDARM;
  FUSU_CodEmpOLD := FUSU_CodEmp;
  FUSU_CodFilOLD := FUSU_CodFil;
  FUSU_NumTitOLD := FUSU_NumTit;
  FUSU_CodForOLD := FUSU_CodFor;
  FUSU_CodTptOLD := FUSU_CodTpt;
  FUSU_LogTitOLD := FUSU_LogTit;
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
  FUSU_SitArmOLD := FUSU_SitArm;
  FUSU_DatMovOLD := FUSU_DatMov;

  inherited;
end;

procedure T510TIT.RetornarValores();
begin
  FUSU_IDARM := FUSU_IDARMOLD;
  FUSU_CodEmp := FUSU_CodEmpOLD;
  FUSU_CodFil := FUSU_CodFilOLD;
  FUSU_NumTit := FUSU_NumTitOLD;
  FUSU_CodFor := FUSU_CodForOLD;
  FUSU_CodTpt := FUSU_CodTptOLD;
  FUSU_LogTit := FUSU_LogTitOLD;
  FUSU_CgcCpf := FUSU_CgcCpfOLD;
  FUSU_SitTit := FUSU_SitTitOLD;
  FUSU_VlrOri := FUSU_VlrOriOLD;
  FUSU_VctOri := FUSU_VctOriOLD;
  FUSU_DatEmi := FUSU_DatEmiOLD;
  FUSU_DatDsc := FUSU_DatDscOLD;
  FUSU_VlrDsc := FUSU_VlrDscOLD;
  FUSU_VlrJrs := FUSU_VlrJrsOLD;
  FUSU_TipFor := FUSU_TipForOLD;
  FUSU_CodBar := FUSU_CodBarOLD;
  FUSU_SitArm := FUSU_SitArmOLD;
  FUSU_DatMov := FUSU_DatMovOLD;
end;

end.
