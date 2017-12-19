
unit o073vet;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T073VET = class(TTabelaUsuario)
  private
    FUSU_CodEmp: Integer;
    FUSU_CodFil: Integer;
    FUSU_CodFor: Integer;
    FUSU_ObsVet: string;
    FUSU_UsuGer: Integer;
    FUSU_DatGer: TDate;
    FUSU_UsuAlt: Integer;
    FUSU_ConVet: Integer;
    FUSU_DatAlt: TDate;
    FUSU_DiaSem: Integer;

    FUSU_CodEmpOLD: Integer;
    FUSU_CodFilOLD: Integer;
    FUSU_CodForOLD: Integer;
    FUSU_ObsVetOLD: string;
    FUSU_UsuGerOLD: Integer;
    FUSU_DatGerOLD: TDate;
    FUSU_UsuAltOLD: Integer;
    FUSU_ConVetOLD: Integer;
    FUSU_DatAltOLD: TDate;
    FUSU_DiaSemOLD: Integer;

    function GetUSU_CodEmp: Integer;
    procedure SetUSU_CodEmp(const pUSU_CodEmp: Integer);
    function GetUSU_CodFil: Integer;
    procedure SetUSU_CodFil(const pUSU_CodFil: Integer);
    function GetUSU_CodFor: Integer;
    procedure SetUSU_CodFor(const pUSU_CodFor: Integer);
    function GetUSU_ObsVet: string;
    procedure SetUSU_ObsVet(const pUSU_ObsVet: string);
    function GetUSU_UsuGer: Integer;
    procedure SetUSU_UsuGer(const pUSU_UsuGer: Integer);
    function GetUSU_DatGer: TDate;
    procedure SetUSU_DatGer(const pUSU_DatGer: TDate);
    function GetUSU_UsuAlt: Integer;
    procedure SetUSU_UsuAlt(const pUSU_UsuAlt: Integer);
    function GetUSU_ConVet: Integer;
    procedure SetUSU_ConVet(const pUSU_ConVet: Integer);
    function GetUSU_DatAlt: TDate;
    procedure SetUSU_DatAlt(const pUSU_DatAlt: TDate);
    function GetUSU_DiaSem: Integer;
    procedure SetUSU_DiaSem(const pUSU_DiaSem: Integer);

    function GetUSU_CodEmpOld: Integer;
    procedure SetUSU_CodEmpOld(const pUSU_CodEmp: Integer);
    function GetUSU_CodFilOld: Integer;
    procedure SetUSU_CodFilOld(const pUSU_CodFil: Integer);
    function GetUSU_CodForOld: Integer;
    procedure SetUSU_CodForOld(const pUSU_CodFor: Integer);
    function GetUSU_ObsVetOld: string;
    procedure SetUSU_ObsVetOld(const pUSU_ObsVet: string);
    function GetUSU_UsuGerOld: Integer;
    procedure SetUSU_UsuGerOld(const pUSU_UsuGer: Integer);
    function GetUSU_DatGerOld: TDate;
    procedure SetUSU_DatGerOld(const pUSU_DatGer: TDate);
    function GetUSU_UsuAltOld: Integer;
    procedure SetUSU_UsuAltOld(const pUSU_UsuAlt: Integer);
    function GetUSU_ConVetOld: Integer;
    procedure SetUSU_ConVetOld(const pUSU_ConVet: Integer);
    function GetUSU_DatAltOld: TDate;
    procedure SetUSU_DatAltOld(const pUSU_DatAlt: TDate);
    function GetUSU_DiaSemOld: Integer;
    procedure SetUSU_DiaSemOld(const pUSU_DiaSem: Integer);
  protected
    procedure Registros_OLD(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_CodEmp: Integer read GetUSU_CodEmp write SetUSU_CodEmp;
    property USU_CodFil: Integer read GetUSU_CodFil write SetUSU_CodFil;
    property USU_CodFor: Integer read GetUSU_CodFor write SetUSU_CodFor;
    property USU_ObsVet: string read GetUSU_ObsVet write SetUSU_ObsVet;
    property USU_UsuGer: Integer read GetUSU_UsuGer write SetUSU_UsuGer;
    property USU_DatGer: TDate read GetUSU_DatGer write SetUSU_DatGer;
    property USU_UsuAlt: Integer read GetUSU_UsuAlt write SetUSU_UsuAlt;
    property USU_ConVet: Integer read GetUSU_ConVet write SetUSU_ConVet;
    property USU_DatAlt: TDate read GetUSU_DatAlt write SetUSU_DatAlt;
    property USU_DiaSem: Integer read GetUSU_DiaSem write SetUSU_DiaSem;

    property OLD_USU_CodEmp: Integer read GetUSU_CodEmpOLD write SetUSU_CodEmpOLD;
    property OLD_USU_CodFil: Integer read GetUSU_CodFilOLD write SetUSU_CodFilOLD;
    property OLD_USU_CodFor: Integer read GetUSU_CodForOLD write SetUSU_CodForOLD;
    property OLD_USU_ObsVet: string read GetUSU_ObsVetOLD write SetUSU_ObsVetOLD;
    property OLD_USU_UsuGer: Integer read GetUSU_UsuGerOLD write SetUSU_UsuGerOLD;
    property OLD_USU_DatGer: TDate read GetUSU_DatGerOLD write SetUSU_DatGerOLD;
    property OLD_USU_UsuAlt: Integer read GetUSU_UsuAltOLD write SetUSU_UsuAltOLD;
    property OLD_USU_ConVet: Integer read GetUSU_ConVetOLD write SetUSU_ConVetOLD;
    property OLD_USU_DatAlt: TDate read GetUSU_DatAltOLD write SetUSU_DatAltOLD;
    property OLD_USU_DiaSem: Integer read GetUSU_DiaSemOLD write SetUSU_DiaSemOLD;
  end;

implementation

{ T073VET }

constructor T073VET.Create();
begin
  inherited Create('USU_T073VET');
end;

destructor T073VET.Destroy();
begin
  inherited;
end;

function T073VET.GetUSU_CodEmp: Integer;
begin
  Result := FUSU_CodEmp;
end;

procedure T073VET.SetUSU_CodEmp(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmp := pUSU_CodEmp;
end;

function T073VET.GetUSU_CodFil: Integer;
begin
  Result := FUSU_CodFil;
end;

procedure T073VET.SetUSU_CodFil(const pUSU_CodFil: Integer);
begin
  FUSU_CodFil := pUSU_CodFil;
end;

function T073VET.GetUSU_CodFor: Integer;
begin
  Result := FUSU_CodFor;
end;

procedure T073VET.SetUSU_CodFor(const pUSU_CodFor: Integer);
begin
  FUSU_CodFor := pUSU_CodFor;
end;

function T073VET.GetUSU_ObsVet: string;
begin
  Result := FUSU_ObsVet;
end;

procedure T073VET.SetUSU_ObsVet(const pUSU_ObsVet: string);
begin
  FUSU_ObsVet := pUSU_ObsVet;
end;

function T073VET.GetUSU_UsuGer: Integer;
begin
  Result := FUSU_UsuGer;
end;

procedure T073VET.SetUSU_UsuGer(const pUSU_UsuGer: Integer);
begin
  FUSU_UsuGer := pUSU_UsuGer;
end;

function T073VET.GetUSU_DatGer: TDate;
begin
  Result := FUSU_DatGer;
end;

procedure T073VET.SetUSU_DatGer(const pUSU_DatGer: TDate);
begin
  FUSU_DatGer := pUSU_DatGer;
end;

function T073VET.GetUSU_UsuAlt: Integer;
begin
  Result := FUSU_UsuAlt;
end;

procedure T073VET.SetUSU_UsuAlt(const pUSU_UsuAlt: Integer);
begin
  FUSU_UsuAlt := pUSU_UsuAlt;
end;

function T073VET.GetUSU_ConVet: Integer;
begin
  Result := FUSU_ConVet;
end;

procedure T073VET.SetUSU_ConVet(const pUSU_ConVet: Integer);
begin
  FUSU_ConVet := pUSU_ConVet;
end;

function T073VET.GetUSU_DatAlt: TDate;
begin
  Result := FUSU_DatAlt;
end;

procedure T073VET.SetUSU_DatAlt(const pUSU_DatAlt: TDate);
begin
  FUSU_DatAlt := pUSU_DatAlt;
end;

function T073VET.GetUSU_DiaSem: Integer;
begin
  Result := FUSU_DiaSem;
end;

procedure T073VET.SetUSU_DiaSem(const pUSU_DiaSem: Integer);
begin
  FUSU_DiaSem := pUSU_DiaSem;
end;

function T073VET.GetUSU_CodEmpOLD: Integer;
begin
  Result := FUSU_CodEmpOLD;
end;

procedure T073VET.SetUSU_CodEmpOLD(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmpOLD := pUSU_CodEmp;
end;

function T073VET.GetUSU_CodFilOLD: Integer;
begin
  Result := FUSU_CodFilOLD;
end;

procedure T073VET.SetUSU_CodFilOLD(const pUSU_CodFil: Integer);
begin
  FUSU_CodFilOLD := pUSU_CodFil;
end;

function T073VET.GetUSU_CodForOLD: Integer;
begin
  Result := FUSU_CodForOLD;
end;

procedure T073VET.SetUSU_CodForOLD(const pUSU_CodFor: Integer);
begin
  FUSU_CodForOLD := pUSU_CodFor;
end;

function T073VET.GetUSU_ObsVetOLD: string;
begin
  Result := FUSU_ObsVetOLD;
end;

procedure T073VET.SetUSU_ObsVetOLD(const pUSU_ObsVet: string);
begin
  FUSU_ObsVetOLD := pUSU_ObsVet;
end;

function T073VET.GetUSU_UsuGerOLD: Integer;
begin
  Result := FUSU_UsuGerOLD;
end;

procedure T073VET.SetUSU_UsuGerOLD(const pUSU_UsuGer: Integer);
begin
  FUSU_UsuGerOLD := pUSU_UsuGer;
end;

function T073VET.GetUSU_DatGerOLD: TDate;
begin
  Result := FUSU_DatGerOLD;
end;

procedure T073VET.SetUSU_DatGerOLD(const pUSU_DatGer: TDate);
begin
  FUSU_DatGerOLD := pUSU_DatGer;
end;

function T073VET.GetUSU_UsuAltOLD: Integer;
begin
  Result := FUSU_UsuAltOLD;
end;

procedure T073VET.SetUSU_UsuAltOLD(const pUSU_UsuAlt: Integer);
begin
  FUSU_UsuAltOLD := pUSU_UsuAlt;
end;

function T073VET.GetUSU_ConVetOLD: Integer;
begin
  Result := FUSU_ConVetOLD;
end;

procedure T073VET.SetUSU_ConVetOLD(const pUSU_ConVet: Integer);
begin
  FUSU_ConVetOLD := pUSU_ConVet;
end;

function T073VET.GetUSU_DatAltOLD: TDate;
begin
  Result := FUSU_DatAltOLD;
end;

procedure T073VET.SetUSU_DatAltOLD(const pUSU_DatAlt: TDate);
begin
  FUSU_DatAltOLD := pUSU_DatAlt;
end;

function T073VET.GetUSU_DiaSemOLD: Integer;
begin
  Result := FUSU_DiaSemOLD;
end;

procedure T073VET.SetUSU_DiaSemOLD(const pUSU_DiaSem: Integer);
begin
  FUSU_DiaSemOLD := pUSU_DiaSem;
end;

procedure T073VET.Registros_OLD();
begin
  FUSU_CodEmpOLD := FUSU_CodEmp;
  FUSU_CodFilOLD := FUSU_CodFil;
  FUSU_CodForOLD := FUSU_CodFor;
  FUSU_ObsVetOLD := FUSU_ObsVet;
  FUSU_UsuGerOLD := FUSU_UsuGer;
  FUSU_DatGerOLD := FUSU_DatGer;
  FUSU_UsuAltOLD := FUSU_UsuAlt;
  FUSU_ConVetOLD := FUSU_ConVet;
  FUSU_DatAltOLD := FUSU_DatAlt;
  FUSU_DiaSemOLD := FUSU_DiaSem;

  inherited;
end;

end.
