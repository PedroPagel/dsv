unit o133mau;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T133MAU = class(TTabelaUsuario)
  private
    FUSU_NumMat: string;
    FUSU_MotVei: string;
    FUSU_CodEmp: Integer;
    FUSU_CodCcu: string;
    FUSU_CodUsu: Integer;
    FUSU_DatGer: TDate;
    FUSU_UsuGer: Integer;
    FUSU_DatAlt: TDate;
    FUSU_UsuAlt: Integer;

    FUSU_NumMatOLD: string;
    FUSU_MotVeiOLD: string;
    FUSU_CodEmpOLD: Integer;
    FUSU_CodCcuOLD: string;
    FUSU_CodUsuOLD: Integer;
    FUSU_DatGerOLD: TDate;
    FUSU_UsuGerOLD: Integer;
    FUSU_DatAltOLD: TDate;
    FUSU_UsuAltOLD: Integer;

    function GetUSU_NumMat: string;
    procedure SetUSU_NumMat(const pUSU_NumMat: string);
    function GetUSU_MotVei: string;
    procedure SetUSU_MotVei(const pUSU_MotVei: string);
    function GetUSU_CodEmp: Integer;
    procedure SetUSU_CodEmp(const pUSU_CodEmp: Integer);
    function GetUSU_CodCcu: string;
    procedure SetUSU_CodCcu(const pUSU_CodCcu: string);
    function GetUSU_CodUsu: Integer;
    procedure SetUSU_CodUsu(const pUSU_CodUsu: Integer);
    function GetUSU_DatGer: TDate;
    procedure SetUSU_DatGer(const pUSU_DatGer: TDate);
    function GetUSU_UsuGer: Integer;
    procedure SetUSU_UsuGer(const pUSU_UsuGer: Integer);
    function GetUSU_DatAlt: TDate;
    procedure SetUSU_DatAlt(const pUSU_DatAlt: TDate);
    function GetUSU_UsuAlt: Integer;
    procedure SetUSU_UsuAlt(const pUSU_UsuAlt: Integer);

    function GetUSU_NumMatOld: string;
    procedure SetUSU_NumMatOld(const pUSU_NumMat: string);
    function GetUSU_MotVeiOld: string;
    procedure SetUSU_MotVeiOld(const pUSU_MotVei: string);
    function GetUSU_CodEmpOld: Integer;
    procedure SetUSU_CodEmpOld(const pUSU_CodEmp: Integer);
    function GetUSU_CodCcuOld: string;
    procedure SetUSU_CodCcuOld(const pUSU_CodCcu: string);
    function GetUSU_CodUsuOld: Integer;
    procedure SetUSU_CodUsuOld(const pUSU_CodUsu: Integer);
    function GetUSU_DatGerOld: TDate;
    procedure SetUSU_DatGerOld(const pUSU_DatGer: TDate);
    function GetUSU_UsuGerOld: Integer;
    procedure SetUSU_UsuGerOld(const pUSU_UsuGer: Integer);
    function GetUSU_DatAltOld: TDate;
    procedure SetUSU_DatAltOld(const pUSU_DatAlt: TDate);
    function GetUSU_UsuAltOld: Integer;
    procedure SetUSU_UsuAltOld(const pUSU_UsuAlt: Integer);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_NumMat: string read GetUSU_NumMat write SetUSU_NumMat;
    property USU_MotVei: string read GetUSU_MotVei write SetUSU_MotVei;
    property USU_CodEmp: Integer read GetUSU_CodEmp write SetUSU_CodEmp;
    property USU_CodCcu: string read GetUSU_CodCcu write SetUSU_CodCcu;
    property USU_CodUsu: Integer read GetUSU_CodUsu write SetUSU_CodUsu;
    property USU_DatGer: TDate read GetUSU_DatGer write SetUSU_DatGer;
    property USU_UsuGer: Integer read GetUSU_UsuGer write SetUSU_UsuGer;
    property USU_DatAlt: TDate read GetUSU_DatAlt write SetUSU_DatAlt;
    property USU_UsuAlt: Integer read GetUSU_UsuAlt write SetUSU_UsuAlt;

    property OLD_USU_NumMat: string read GetUSU_NumMatOLD write SetUSU_NumMatOLD;
    property OLD_USU_MotVei: string read GetUSU_MotVeiOLD write SetUSU_MotVeiOLD;
    property OLD_USU_CodEmp: Integer read GetUSU_CodEmpOLD write SetUSU_CodEmpOLD;
    property OLD_USU_CodCcu: string read GetUSU_CodCcuOLD write SetUSU_CodCcuOLD;
    property OLD_USU_CodUsu: Integer read GetUSU_CodUsuOLD write SetUSU_CodUsuOLD;
    property OLD_USU_DatGer: TDate read GetUSU_DatGerOLD write SetUSU_DatGerOLD;
    property OLD_USU_UsuGer: Integer read GetUSU_UsuGerOLD write SetUSU_UsuGerOLD;
    property OLD_USU_DatAlt: TDate read GetUSU_DatAltOLD write SetUSU_DatAltOLD;
    property OLD_USU_UsuAlt: Integer read GetUSU_UsuAltOLD write SetUSU_UsuAltOLD;
  end;

implementation

{ T133MAU }

constructor T133MAU.Create();
begin
  AddPrimaryKeys('USU_ID');

  inherited Create('USU_T133MAU');
end;

destructor T133MAU.Destroy();
begin
  inherited;
end;

function T133MAU.GetUSU_NumMat: string;
begin
  Result := FUSU_NumMat;
end;

procedure T133MAU.SetUSU_NumMat(const pUSU_NumMat: string);
begin
  FUSU_NumMat := pUSU_NumMat;

  CheckField('USU_NumMat');
end;

function T133MAU.GetUSU_MotVei: string;
begin
  Result := FUSU_MotVei;
end;

procedure T133MAU.SetUSU_MotVei(const pUSU_MotVei: string);
begin
  FUSU_MotVei := pUSU_MotVei;

  CheckField('USU_MotVei');
end;

function T133MAU.GetUSU_CodEmp: Integer;
begin
  Result := FUSU_CodEmp;
end;

procedure T133MAU.SetUSU_CodEmp(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmp := pUSU_CodEmp;

  CheckField('USU_CodEmp');
end;

function T133MAU.GetUSU_CodCcu: string;
begin
  Result := FUSU_CodCcu;
end;

procedure T133MAU.SetUSU_CodCcu(const pUSU_CodCcu: string);
begin
  FUSU_CodCcu := pUSU_CodCcu;

  CheckField('USU_CodCcu');
end;

function T133MAU.GetUSU_CodUsu: Integer;
begin
  Result := FUSU_CodUsu;
end;

procedure T133MAU.SetUSU_CodUsu(const pUSU_CodUsu: Integer);
begin
  FUSU_CodUsu := pUSU_CodUsu;

  CheckField('USU_CodUsu');
end;

function T133MAU.GetUSU_DatGer: TDate;
begin
  Result := FUSU_DatGer;
end;

procedure T133MAU.SetUSU_DatGer(const pUSU_DatGer: TDate);
begin
  FUSU_DatGer := pUSU_DatGer;

  CheckField('USU_DatGer');
end;

function T133MAU.GetUSU_UsuGer: Integer;
begin
  Result := FUSU_UsuGer;
end;

procedure T133MAU.SetUSU_UsuGer(const pUSU_UsuGer: Integer);
begin
  FUSU_UsuGer := pUSU_UsuGer;

  CheckField('USU_UsuGer');
end;

function T133MAU.GetUSU_DatAlt: TDate;
begin
  Result := FUSU_DatAlt;
end;

procedure T133MAU.SetUSU_DatAlt(const pUSU_DatAlt: TDate);
begin
  FUSU_DatAlt := pUSU_DatAlt;

  CheckField('USU_DatAlt');
end;

function T133MAU.GetUSU_UsuAlt: Integer;
begin
  Result := FUSU_UsuAlt;
end;

procedure T133MAU.SetUSU_UsuAlt(const pUSU_UsuAlt: Integer);
begin
  FUSU_UsuAlt := pUSU_UsuAlt;

  CheckField('USU_UsuAlt');
end;

function T133MAU.GetUSU_NumMatOLD: string;
begin
  Result := FUSU_NumMatOLD;
end;

procedure T133MAU.SetUSU_NumMatOLD(const pUSU_NumMat: string);
begin
  FUSU_NumMatOLD := pUSU_NumMat;
end;

function T133MAU.GetUSU_MotVeiOLD: string;
begin
  Result := FUSU_MotVeiOLD;
end;

procedure T133MAU.SetUSU_MotVeiOLD(const pUSU_MotVei: string);
begin
  FUSU_MotVeiOLD := pUSU_MotVei;
end;

function T133MAU.GetUSU_CodEmpOLD: Integer;
begin
  Result := FUSU_CodEmpOLD;
end;

procedure T133MAU.SetUSU_CodEmpOLD(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmpOLD := pUSU_CodEmp;
end;

function T133MAU.GetUSU_CodCcuOLD: string;
begin
  Result := FUSU_CodCcuOLD;
end;

procedure T133MAU.SetUSU_CodCcuOLD(const pUSU_CodCcu: string);
begin
  FUSU_CodCcuOLD := pUSU_CodCcu;
end;

function T133MAU.GetUSU_CodUsuOLD: Integer;
begin
  Result := FUSU_CodUsuOLD;
end;

procedure T133MAU.SetUSU_CodUsuOLD(const pUSU_CodUsu: Integer);
begin
  FUSU_CodUsuOLD := pUSU_CodUsu;
end;

function T133MAU.GetUSU_DatGerOLD: TDate;
begin
  Result := FUSU_DatGerOLD;
end;

procedure T133MAU.SetUSU_DatGerOLD(const pUSU_DatGer: TDate);
begin
  FUSU_DatGerOLD := pUSU_DatGer;
end;

function T133MAU.GetUSU_UsuGerOLD: Integer;
begin
  Result := FUSU_UsuGerOLD;
end;

procedure T133MAU.SetUSU_UsuGerOLD(const pUSU_UsuGer: Integer);
begin
  FUSU_UsuGerOLD := pUSU_UsuGer;
end;

function T133MAU.GetUSU_DatAltOLD: TDate;
begin
  Result := FUSU_DatAltOLD;
end;

procedure T133MAU.SetUSU_DatAltOLD(const pUSU_DatAlt: TDate);
begin
  FUSU_DatAltOLD := pUSU_DatAlt;
end;

function T133MAU.GetUSU_UsuAltOLD: Integer;
begin
  Result := FUSU_UsuAltOLD;
end;

procedure T133MAU.SetUSU_UsuAltOLD(const pUSU_UsuAlt: Integer);
begin
  FUSU_UsuAltOLD := pUSU_UsuAlt;
end;

procedure T133MAU.Registros_OLD();
begin
  FUSU_NumMatOLD := FUSU_NumMat;
  FUSU_MotVeiOLD := FUSU_MotVei;
  FUSU_CodEmpOLD := FUSU_CodEmp;
  FUSU_CodCcuOLD := FUSU_CodCcu;
  FUSU_CodUsuOLD := FUSU_CodUsu;
  FUSU_DatGerOLD := FUSU_DatGer;
  FUSU_UsuGerOLD := FUSU_UsuGer;
  FUSU_DatAltOLD := FUSU_DatAlt;
  FUSU_UsuAltOLD := FUSU_UsuAlt;

  inherited;
end;

procedure T133MAU.RetornarValores();
begin
  FUSU_NumMat := FUSU_NumMatOLD;
  FUSU_MotVei := FUSU_MotVeiOLD;
  FUSU_CodEmp := FUSU_CodEmpOLD;
  FUSU_CodCcu := FUSU_CodCcuOLD;
  FUSU_CodUsu := FUSU_CodUsuOLD;
  FUSU_DatGer := FUSU_DatGerOLD;
  FUSU_UsuGer := FUSU_UsuGerOLD;
  FUSU_DatAlt := FUSU_DatAltOLD;
  FUSU_UsuAlt := FUSU_UsuAltOLD;
end;

end.
