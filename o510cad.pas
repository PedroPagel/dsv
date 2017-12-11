unit o510cad;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T510CAD = class(TTabelaUsuario)
  private
    FUSU_CodUsu: Integer;
    FUSU_CodPor: string;
    FUSU_IniVig: TDate;
    FUSU_FimVig: TDate;
    FUSU_ObsCad: string;
    FUSU_PerExc: Char;
    FUSU_CodEmp: Integer;

    FUSU_CodUsuOLD: Integer;
    FUSU_CodPorOLD: string;
    FUSU_IniVigOLD: TDate;
    FUSU_FimVigOLD: TDate;
    FUSU_ObsCadOLD: string;
    FUSU_PerExcOLD: Char;
    FUSU_CodEmpOLD: Integer;

    function GetUSU_CodUsu: Integer;
    procedure SetUSU_CodUsu(const pUSU_CodUsu: Integer);
    function GetUSU_CodPor: string;
    procedure SetUSU_CodPor(const pUSU_CodPor: string);
    function GetUSU_IniVig: TDate;
    procedure SetUSU_IniVig(const pUSU_IniVig: TDate);
    function GetUSU_FimVig: TDate;
    procedure SetUSU_FimVig(const pUSU_FimVig: TDate);
    function GetUSU_ObsCad: string;
    procedure SetUSU_ObsCad(const pUSU_ObsCad: string);
    function GetUSU_PerExc: Char;
    procedure SetUSU_PerExc(const pUSU_PerExc: Char);
    function GetUSU_CodEmp: Integer;
    procedure SetUSU_CodEmp(const pUSU_CodEmp: Integer);

    function GetUSU_CodUsuOld: Integer;
    procedure SetUSU_CodUsuOld(const pUSU_CodUsu: Integer);
    function GetUSU_CodPorOld: string;
    procedure SetUSU_CodPorOld(const pUSU_CodPor: string);
    function GetUSU_IniVigOld: TDate;
    procedure SetUSU_IniVigOld(const pUSU_IniVig: TDate);
    function GetUSU_FimVigOld: TDate;
    procedure SetUSU_FimVigOld(const pUSU_FimVig: TDate);
    function GetUSU_ObsCadOld: string;
    procedure SetUSU_ObsCadOld(const pUSU_ObsCad: string);
    function GetUSU_PerExcOld: Char;
    procedure SetUSU_PerExcOld(const pUSU_PerExc: Char);
    function GetUSU_CodEmpOld: Integer;
    procedure SetUSU_CodEmpOld(const pUSU_CodEmp: Integer);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_CodUsu: Integer read GetUSU_CodUsu write SetUSU_CodUsu;
    property USU_CodPor: string read GetUSU_CodPor write SetUSU_CodPor;
    property USU_IniVig: TDate read GetUSU_IniVig write SetUSU_IniVig;
    property USU_FimVig: TDate read GetUSU_FimVig write SetUSU_FimVig;
    property USU_ObsCad: string read GetUSU_ObsCad write SetUSU_ObsCad;
    property USU_PerExc: Char read GetUSU_PerExc write SetUSU_PerExc;
    property USU_CodEmp: Integer read GetUSU_CodEmp write SetUSU_CodEmp;

    property OLD_USU_CodUsu: Integer read GetUSU_CodUsuOLD write SetUSU_CodUsuOLD;
    property OLD_USU_CodPor: string read GetUSU_CodPorOLD write SetUSU_CodPorOLD;
    property OLD_USU_IniVig: TDate read GetUSU_IniVigOLD write SetUSU_IniVigOLD;
    property OLD_USU_FimVig: TDate read GetUSU_FimVigOLD write SetUSU_FimVigOLD;
    property OLD_USU_ObsCad: string read GetUSU_ObsCadOLD write SetUSU_ObsCadOLD;
    property OLD_USU_PerExc: Char read GetUSU_PerExcOLD write SetUSU_PerExcOLD;
    property OLD_USU_CodEmp: Integer read GetUSU_CodEmpOLD write SetUSU_CodEmpOLD;
  end;

implementation

{ T510CAD }

constructor T510CAD.Create();
begin
  AddPrimaryKeys('USU_CodUsu;USU_CodPor');

  inherited Create('USU_T510CAD');
end;

destructor T510CAD.Destroy();
begin
  inherited;
end;

function T510CAD.GetUSU_CodUsu: Integer;
begin
  Result := FUSU_CodUsu;
end;

procedure T510CAD.SetUSU_CodUsu(const pUSU_CodUsu: Integer);
begin
  FUSU_CodUsu := pUSU_CodUsu;

  CheckField('USU_CodUsu');
end;

function T510CAD.GetUSU_CodPor: string;
begin
  Result := FUSU_CodPor;
end;

procedure T510CAD.SetUSU_CodPor(const pUSU_CodPor: string);
begin
  FUSU_CodPor := pUSU_CodPor;

  CheckField('USU_CodPor');
end;

function T510CAD.GetUSU_IniVig: TDate;
begin
  Result := FUSU_IniVig;
end;

procedure T510CAD.SetUSU_IniVig(const pUSU_IniVig: TDate);
begin
  FUSU_IniVig := pUSU_IniVig;

  CheckField('USU_IniVig');
end;

function T510CAD.GetUSU_FimVig: TDate;
begin
  Result := FUSU_FimVig;
end;

procedure T510CAD.SetUSU_FimVig(const pUSU_FimVig: TDate);
begin
  FUSU_FimVig := pUSU_FimVig;

  CheckField('USU_FimVig');
end;

function T510CAD.GetUSU_ObsCad: string;
begin
  Result := FUSU_ObsCad;
end;

procedure T510CAD.SetUSU_ObsCad(const pUSU_ObsCad: string);
begin
  FUSU_ObsCad := pUSU_ObsCad;

  CheckField('USU_ObsCad');
end;

function T510CAD.GetUSU_PerExc: Char;
begin
  Result := FUSU_PerExc;
end;

procedure T510CAD.SetUSU_PerExc(const pUSU_PerExc: Char);
begin
  FUSU_PerExc := pUSU_PerExc;

  CheckField('USU_PerExc');
end;

function T510CAD.GetUSU_CodEmp: Integer;
begin
  Result := FUSU_CodEmp;
end;

procedure T510CAD.SetUSU_CodEmp(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmp := pUSU_CodEmp;

  CheckField('USU_CodEmp');
end;

function T510CAD.GetUSU_CodUsuOLD: Integer;
begin
  Result := FUSU_CodUsuOLD;
end;

procedure T510CAD.SetUSU_CodUsuOLD(const pUSU_CodUsu: Integer);
begin
  FUSU_CodUsuOLD := pUSU_CodUsu;
end;

function T510CAD.GetUSU_CodPorOLD: string;
begin
  Result := FUSU_CodPorOLD;
end;

procedure T510CAD.SetUSU_CodPorOLD(const pUSU_CodPor: string);
begin
  FUSU_CodPorOLD := pUSU_CodPor;
end;

function T510CAD.GetUSU_IniVigOLD: TDate;
begin
  Result := FUSU_IniVigOLD;
end;

procedure T510CAD.SetUSU_IniVigOLD(const pUSU_IniVig: TDate);
begin
  FUSU_IniVigOLD := pUSU_IniVig;
end;

function T510CAD.GetUSU_FimVigOLD: TDate;
begin
  Result := FUSU_FimVigOLD;
end;

procedure T510CAD.SetUSU_FimVigOLD(const pUSU_FimVig: TDate);
begin
  FUSU_FimVigOLD := pUSU_FimVig;
end;

function T510CAD.GetUSU_ObsCadOLD: string;
begin
  Result := FUSU_ObsCadOLD;
end;

procedure T510CAD.SetUSU_ObsCadOLD(const pUSU_ObsCad: string);
begin
  FUSU_ObsCadOLD := pUSU_ObsCad;
end;

function T510CAD.GetUSU_PerExcOLD: Char;
begin
  Result := FUSU_PerExcOLD;
end;

procedure T510CAD.SetUSU_PerExcOLD(const pUSU_PerExc: Char);
begin
  FUSU_PerExcOLD := pUSU_PerExc;
end;

function T510CAD.GetUSU_CodEmpOLD: Integer;
begin
  Result := FUSU_CodEmpOLD;
end;

procedure T510CAD.SetUSU_CodEmpOLD(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmpOLD := pUSU_CodEmp;
end;

procedure T510CAD.Registros_OLD();
begin
  FUSU_CodUsuOLD := FUSU_CodUsu;
  FUSU_CodPorOLD := FUSU_CodPor;
  FUSU_IniVigOLD := FUSU_IniVig;
  FUSU_FimVigOLD := FUSU_FimVig;
  FUSU_ObsCadOLD := FUSU_ObsCad;
  FUSU_PerExcOLD := FUSU_PerExc;
  FUSU_CodEmpOLD := FUSU_CodEmp;

  inherited;
end;

procedure T510CAD.RetornarValores();
begin
  FUSU_CodUsu := FUSU_CodUsuOLD;
  FUSU_CodPor := FUSU_CodPorOLD;
  FUSU_IniVig := FUSU_IniVigOLD;
  FUSU_FimVig := FUSU_FimVigOLD;
  FUSU_ObsCad := FUSU_ObsCadOLD;
  FUSU_PerExc := FUSU_PerExcOLD;
  FUSU_CodEmp := FUSU_CodEmpOLD;
end;

end.
