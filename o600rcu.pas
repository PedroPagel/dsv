unit o600rcu;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, oTabelas, DateUtils;

type

  T600RCU = class(TTabelaUsuario)
  private
    FUSU_CodEmp: Integer;
    FUSU_CodFil: Integer;
    FUSU_CodUsu: Integer;
    FUSU_NumCco: string;
    FUSU_VlrMax: Double;
    FUSU_DatGer: TDate;
    FUSU_HorGer: Integer;
    FUSU_UsuGer: Integer;
    FUSU_DatAlt: TDate;
    FUSU_HorAlt: Integer;
    FUSU_UsuAlt: Integer;
    FUSU_ID: Integer;

    FUSU_CodEmpOLD: Integer;
    FUSU_CodFilOLD: Integer;
    FUSU_CodUsuOLD: Integer;
    FUSU_NumCcoOLD: string;
    FUSU_VlrMaxOLD: Double;
    FUSU_DatGerOLD: TDate;
    FUSU_HorGerOLD: Integer;
    FUSU_UsuGerOLD: Integer;
    FUSU_DatAltOLD: TDate;
    FUSU_HorAltOLD: Integer;
    FUSU_UsuAltOLD: Integer;
    FUSU_IDOLD: Integer;

    function GetUSU_CodEmp: Integer;
    procedure SetUSU_CodEmp(const pUSU_CodEmp: Integer);
    function GetUSU_CodFil: Integer;
    procedure SetUSU_CodFil(const pUSU_CodFil: Integer);
    function GetUSU_CodUsu: Integer;
    procedure SetUSU_CodUsu(const pUSU_CodUsu: Integer);
    function GetUSU_NumCco: string;
    procedure SetUSU_NumCco(const pUSU_NumCco: string);
    function GetUSU_VlrMax: Double;
    procedure SetUSU_VlrMax(const pUSU_VlrMax: Double);
    function GetUSU_DatGer: TDate;
    procedure SetUSU_DatGer(const pUSU_DatGer: TDate);
    function GetUSU_HorGer: Integer;
    procedure SetUSU_HorGer(const pUSU_HorGer: Integer);
    function GetUSU_UsuGer: Integer;
    procedure SetUSU_UsuGer(const pUSU_UsuGer: Integer);
    function GetUSU_DatAlt: TDate;
    procedure SetUSU_DatAlt(const pUSU_DatAlt: TDate);
    function GetUSU_HorAlt: Integer;
    procedure SetUSU_HorAlt(const pUSU_HorAlt: Integer);
    function GetUSU_UsuAlt: Integer;
    procedure SetUSU_UsuAlt(const pUSU_UsuAlt: Integer);
    function GetUSU_ID: Integer;
    procedure SetUSU_ID(const pUSU_ID: Integer);

    function GetUSU_CodEmpOld: Integer;
    procedure SetUSU_CodEmpOld(const pUSU_CodEmp: Integer);
    function GetUSU_CodFilOld: Integer;
    procedure SetUSU_CodFilOld(const pUSU_CodFil: Integer);
    function GetUSU_CodUsuOld: Integer;
    procedure SetUSU_CodUsuOld(const pUSU_CodUsu: Integer);
    function GetUSU_NumCcoOld: string;
    procedure SetUSU_NumCcoOld(const pUSU_NumCco: string);
    function GetUSU_VlrMaxOld: Double;
    procedure SetUSU_VlrMaxOld(const pUSU_VlrMax: Double);
    function GetUSU_DatGerOld: TDate;
    procedure SetUSU_DatGerOld(const pUSU_DatGer: TDate);
    function GetUSU_HorGerOld: Integer;
    procedure SetUSU_HorGerOld(const pUSU_HorGer: Integer);
    function GetUSU_UsuGerOld: Integer;
    procedure SetUSU_UsuGerOld(const pUSU_UsuGer: Integer);
    function GetUSU_DatAltOld: TDate;
    procedure SetUSU_DatAltOld(const pUSU_DatAlt: TDate);
    function GetUSU_HorAltOld: Integer;
    procedure SetUSU_HorAltOld(const pUSU_HorAlt: Integer);
    function GetUSU_UsuAltOld: Integer;
    procedure SetUSU_UsuAltOld(const pUSU_UsuAlt: Integer);
    function GetUSU_IDOld: Integer;
    procedure SetUSU_IDOld(const pUSU_ID: Integer);
  protected
    procedure Registros_OLD(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_CodEmp: Integer read GetUSU_CodEmp write SetUSU_CodEmp;
    property USU_CodFil: Integer read GetUSU_CodFil write SetUSU_CodFil;
    property USU_CodUsu: Integer read GetUSU_CodUsu write SetUSU_CodUsu;
    property USU_NumCco: string read GetUSU_NumCco write SetUSU_NumCco;
    property USU_VlrMax: Double read GetUSU_VlrMax write SetUSU_VlrMax;
    property USU_DatGer: TDate read GetUSU_DatGer write SetUSU_DatGer;
    property USU_HorGer: Integer read GetUSU_HorGer write SetUSU_HorGer;
    property USU_UsuGer: Integer read GetUSU_UsuGer write SetUSU_UsuGer;
    property USU_DatAlt: TDate read GetUSU_DatAlt write SetUSU_DatAlt;
    property USU_HorAlt: Integer read GetUSU_HorAlt write SetUSU_HorAlt;
    property USU_UsuAlt: Integer read GetUSU_UsuAlt write SetUSU_UsuAlt;
    property USU_ID: Integer read GetUSU_ID write SetUSU_ID;

    property OLD_USU_CodEmp: Integer read GetUSU_CodEmpOLD write SetUSU_CodEmpOLD;
    property OLD_USU_CodFil: Integer read GetUSU_CodFilOLD write SetUSU_CodFilOLD;
    property OLD_USU_CodUsu: Integer read GetUSU_CodUsuOLD write SetUSU_CodUsuOLD;
    property OLD_USU_NumCco: string read GetUSU_NumCcoOLD write SetUSU_NumCcoOLD;
    property OLD_USU_VlrMax: Double read GetUSU_VlrMaxOLD write SetUSU_VlrMaxOLD;
    property OLD_USU_DatGer: TDate read GetUSU_DatGerOLD write SetUSU_DatGerOLD;
    property OLD_USU_HorGer: Integer read GetUSU_HorGerOLD write SetUSU_HorGerOLD;
    property OLD_USU_UsuGer: Integer read GetUSU_UsuGerOLD write SetUSU_UsuGerOLD;
    property OLD_USU_DatAlt: TDate read GetUSU_DatAltOLD write SetUSU_DatAltOLD;
    property OLD_USU_HorAlt: Integer read GetUSU_HorAltOLD write SetUSU_HorAltOLD;
    property OLD_USU_UsuAlt: Integer read GetUSU_UsuAltOLD write SetUSU_UsuAltOLD;
    property OLD_USU_ID: Integer read GetUSU_IDOLD write SetUSU_IDOLD;
  end;

implementation

{ T600RCU }

constructor T600RCU.Create();
begin
  inherited Create('USU_T600RCU');
end;

destructor T600RCU.Destroy();
begin
  inherited;
end;
function T600RCU.GetUSU_CodEmp: Integer;
begin
  Result := FUSU_CodEmp;
end;

procedure T600RCU.SetUSU_CodEmp(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmp := pUSU_CodEmp;
end;

function T600RCU.GetUSU_CodFil: Integer;
begin
  Result := FUSU_CodFil;
end;

procedure T600RCU.SetUSU_CodFil(const pUSU_CodFil: Integer);
begin
  FUSU_CodFil := pUSU_CodFil;
end;

function T600RCU.GetUSU_CodUsu: Integer;
begin
  Result := FUSU_CodUsu;
end;

procedure T600RCU.SetUSU_CodUsu(const pUSU_CodUsu: Integer);
begin
  FUSU_CodUsu := pUSU_CodUsu;
end;

function T600RCU.GetUSU_NumCco: string;
begin
  Result := FUSU_NumCco;
end;

procedure T600RCU.SetUSU_NumCco(const pUSU_NumCco: string);
begin
  FUSU_NumCco := pUSU_NumCco;
end;

function T600RCU.GetUSU_VlrMax: Double;
begin
  Result := FUSU_VlrMax;
end;

procedure T600RCU.SetUSU_VlrMax(const pUSU_VlrMax: Double);
begin
  FUSU_VlrMax := pUSU_VlrMax;
end;

function T600RCU.GetUSU_DatGer: TDate;
begin
  Result := FUSU_DatGer;
end;

procedure T600RCU.SetUSU_DatGer(const pUSU_DatGer: TDate);
begin
  FUSU_DatGer := pUSU_DatGer;
end;

function T600RCU.GetUSU_HorGer: Integer;
begin
  Result := FUSU_HorGer;
end;

procedure T600RCU.SetUSU_HorGer(const pUSU_HorGer: Integer);
begin
  FUSU_HorGer := pUSU_HorGer;
end;

function T600RCU.GetUSU_UsuGer: Integer;
begin
  Result := FUSU_UsuGer;
end;

procedure T600RCU.SetUSU_UsuGer(const pUSU_UsuGer: Integer);
begin
  FUSU_UsuGer := pUSU_UsuGer;
end;

function T600RCU.GetUSU_DatAlt: TDate;
begin
  Result := FUSU_DatAlt;
end;

procedure T600RCU.SetUSU_DatAlt(const pUSU_DatAlt: TDate);
begin
  FUSU_DatAlt := pUSU_DatAlt;
end;

function T600RCU.GetUSU_HorAlt: Integer;
begin
  Result := FUSU_HorAlt;
end;

procedure T600RCU.SetUSU_HorAlt(const pUSU_HorAlt: Integer);
begin
  FUSU_HorAlt := pUSU_HorAlt;
end;

function T600RCU.GetUSU_UsuAlt: Integer;
begin
  Result := FUSU_UsuAlt;
end;

procedure T600RCU.SetUSU_UsuAlt(const pUSU_UsuAlt: Integer);
begin
  FUSU_UsuAlt := pUSU_UsuAlt;
end;

function T600RCU.GetUSU_ID: Integer;
begin
  Result := FUSU_ID;
end;

procedure T600RCU.SetUSU_ID(const pUSU_ID: Integer);
begin
  FUSU_ID := pUSU_ID;
end;

function T600RCU.GetUSU_CodEmpOLD: Integer;
begin
  Result := FUSU_CodEmpOLD;
end;

procedure T600RCU.SetUSU_CodEmpOLD(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmpOLD := pUSU_CodEmp;
end;

function T600RCU.GetUSU_CodFilOLD: Integer;
begin
  Result := FUSU_CodFilOLD;
end;

procedure T600RCU.SetUSU_CodFilOLD(const pUSU_CodFil: Integer);
begin
  FUSU_CodFilOLD := pUSU_CodFil;
end;

function T600RCU.GetUSU_CodUsuOLD: Integer;
begin
  Result := FUSU_CodUsuOLD;
end;

procedure T600RCU.SetUSU_CodUsuOLD(const pUSU_CodUsu: Integer);
begin
  FUSU_CodUsuOLD := pUSU_CodUsu;
end;

function T600RCU.GetUSU_NumCcoOLD: string;
begin
  Result := FUSU_NumCcoOLD;
end;

procedure T600RCU.SetUSU_NumCcoOLD(const pUSU_NumCco: string);
begin
  FUSU_NumCcoOLD := pUSU_NumCco;
end;

function T600RCU.GetUSU_VlrMaxOLD: Double;
begin
  Result := FUSU_VlrMaxOLD;
end;

procedure T600RCU.SetUSU_VlrMaxOLD(const pUSU_VlrMax: Double);
begin
  FUSU_VlrMaxOLD := pUSU_VlrMax;
end;

function T600RCU.GetUSU_DatGerOLD: TDate;
begin
  Result := FUSU_DatGerOLD;
end;

procedure T600RCU.SetUSU_DatGerOLD(const pUSU_DatGer: TDate);
begin
  FUSU_DatGerOLD := pUSU_DatGer;
end;

function T600RCU.GetUSU_HorGerOLD: Integer;
begin
  Result := FUSU_HorGerOLD;
end;

procedure T600RCU.SetUSU_HorGerOLD(const pUSU_HorGer: Integer);
begin
  FUSU_HorGerOLD := pUSU_HorGer;
end;

function T600RCU.GetUSU_UsuGerOLD: Integer;
begin
  Result := FUSU_UsuGerOLD;
end;

procedure T600RCU.SetUSU_UsuGerOLD(const pUSU_UsuGer: Integer);
begin
  FUSU_UsuGerOLD := pUSU_UsuGer;
end;

function T600RCU.GetUSU_DatAltOLD: TDate;
begin
  Result := FUSU_DatAltOLD;
end;

procedure T600RCU.SetUSU_DatAltOLD(const pUSU_DatAlt: TDate);
begin
  FUSU_DatAltOLD := pUSU_DatAlt;
end;

function T600RCU.GetUSU_HorAltOLD: Integer;
begin
  Result := FUSU_HorAltOLD;
end;

procedure T600RCU.SetUSU_HorAltOLD(const pUSU_HorAlt: Integer);
begin
  FUSU_HorAltOLD := pUSU_HorAlt;
end;

function T600RCU.GetUSU_UsuAltOLD: Integer;
begin
  Result := FUSU_UsuAltOLD;
end;

procedure T600RCU.SetUSU_UsuAltOLD(const pUSU_UsuAlt: Integer);
begin
  FUSU_UsuAltOLD := pUSU_UsuAlt;
end;

function T600RCU.GetUSU_IDOLD: Integer;
begin
  Result := FUSU_IDOLD;
end;

procedure T600RCU.SetUSU_IDOLD(const pUSU_ID: Integer);
begin
  FUSU_IDOLD := pUSU_ID;
end;

procedure T600RCU.Registros_OLD();
begin
  FUSU_CodEmpOLD := FUSU_CodEmp;
  FUSU_CodFilOLD := FUSU_CodFil;
  FUSU_CodUsuOLD := FUSU_CodUsu;
  FUSU_NumCcoOLD := FUSU_NumCco;
  FUSU_VlrMaxOLD := FUSU_VlrMax;
  FUSU_DatGerOLD := FUSU_DatGer;
  FUSU_HorGerOLD := FUSU_HorGer;
  FUSU_UsuGerOLD := FUSU_UsuGer;
  FUSU_DatAltOLD := FUSU_DatAlt;
  FUSU_HorAltOLD := FUSU_HorAlt;
  FUSU_UsuAltOLD := FUSU_UsuAlt;
  FUSU_IDOLD := FUSU_ID;
end;

end.
