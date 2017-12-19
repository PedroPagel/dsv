unit o133vem;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T133VEM = class(TTabelaUsuario)
  private
    FUSU_PlaVei: string;
    FUSU_ModVei: string;
    FUSU_DatGer: TDate;
    FUSU_UsuGer: Integer;
    FUSU_CodEmp: Integer;
    FUSU_CodCcu: string;
    FUSU_DatAlt: TDate;
    FUSU_UsuAlt: Integer;

    FUSU_PlaVeiOLD: string;
    FUSU_ModVeiOLD: string;
    FUSU_DatGerOLD: TDate;
    FUSU_UsuGerOLD: Integer;
    FUSU_CodEmpOLD: Integer;
    FUSU_CodCcuOLD: string;
    FUSU_DatAltOLD: TDate;
    FUSU_UsuAltOLD: Integer;

    function GetUSU_PlaVei: string;
    procedure SetUSU_PlaVei(const pUSU_PlaVei: string);
    function GetUSU_ModVei: string;
    procedure SetUSU_ModVei(const pUSU_ModVei: string);
    function GetUSU_DatGer: TDate;
    procedure SetUSU_DatGer(const pUSU_DatGer: TDate);
    function GetUSU_UsuGer: Integer;
    procedure SetUSU_UsuGer(const pUSU_UsuGer: Integer);
    function GetUSU_CodEmp: Integer;
    procedure SetUSU_CodEmp(const pUSU_CodEmp: Integer);
    function GetUSU_CodCcu: string;
    procedure SetUSU_CodCcu(const pUSU_CodCcu: string);
    function GetUSU_DatAlt: TDate;
    procedure SetUSU_DatAlt(const pUSU_DatAlt: TDate);
    function GetUSU_UsuAlt: Integer;
    procedure SetUSU_UsuAlt(const pUSU_UsuAlt: Integer);

    function GetUSU_PlaVeiOld: string;
    procedure SetUSU_PlaVeiOld(const pUSU_PlaVei: string);
    function GetUSU_ModVeiOld: string;
    procedure SetUSU_ModVeiOld(const pUSU_ModVei: string);
    function GetUSU_DatGerOld: TDate;
    procedure SetUSU_DatGerOld(const pUSU_DatGer: TDate);
    function GetUSU_UsuGerOld: Integer;
    procedure SetUSU_UsuGerOld(const pUSU_UsuGer: Integer);
    function GetUSU_CodEmpOld: Integer;
    procedure SetUSU_CodEmpOld(const pUSU_CodEmp: Integer);
    function GetUSU_CodCcuOld: string;
    procedure SetUSU_CodCcuOld(const pUSU_CodCcu: string);
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

    property USU_PlaVei: string read GetUSU_PlaVei write SetUSU_PlaVei;
    property USU_ModVei: string read GetUSU_ModVei write SetUSU_ModVei;
    property USU_DatGer: TDate read GetUSU_DatGer write SetUSU_DatGer;
    property USU_UsuGer: Integer read GetUSU_UsuGer write SetUSU_UsuGer;
    property USU_CodEmp: Integer read GetUSU_CodEmp write SetUSU_CodEmp;
    property USU_CodCcu: string read GetUSU_CodCcu write SetUSU_CodCcu;
    property USU_DatAlt: TDate read GetUSU_DatAlt write SetUSU_DatAlt;
    property USU_UsuAlt: Integer read GetUSU_UsuAlt write SetUSU_UsuAlt;

    property OLD_USU_PlaVei: string read GetUSU_PlaVeiOLD write SetUSU_PlaVeiOLD;
    property OLD_USU_ModVei: string read GetUSU_ModVeiOLD write SetUSU_ModVeiOLD;
    property OLD_USU_DatGer: TDate read GetUSU_DatGerOLD write SetUSU_DatGerOLD;
    property OLD_USU_UsuGer: Integer read GetUSU_UsuGerOLD write SetUSU_UsuGerOLD;
    property OLD_USU_CodEmp: Integer read GetUSU_CodEmpOLD write SetUSU_CodEmpOLD;
    property OLD_USU_CodCcu: string read GetUSU_CodCcuOLD write SetUSU_CodCcuOLD;
    property OLD_USU_DatAlt: TDate read GetUSU_DatAltOLD write SetUSU_DatAltOLD;
    property OLD_USU_UsuAlt: Integer read GetUSU_UsuAltOLD write SetUSU_UsuAltOLD;
  end;

implementation

{ T133VEM }

constructor T133VEM.Create();
begin
  AddPrimaryKeys('USU_PlaVei');

  inherited Create('USU_T133VEM');

  BlockProperty(['USU_ID']);
end;

destructor T133VEM.Destroy();
begin
  inherited;
end;

function T133VEM.GetUSU_PlaVei: string;
begin
  Result := FUSU_PlaVei;
end;

procedure T133VEM.SetUSU_PlaVei(const pUSU_PlaVei: string);
begin
  FUSU_PlaVei := pUSU_PlaVei;

  CheckField('USU_PlaVei');
end;

function T133VEM.GetUSU_ModVei: string;
begin
  Result := FUSU_ModVei;
end;

procedure T133VEM.SetUSU_ModVei(const pUSU_ModVei: string);
begin
  FUSU_ModVei := pUSU_ModVei;

  CheckField('USU_ModVei');
end;

function T133VEM.GetUSU_DatGer: TDate;
begin
  Result := FUSU_DatGer;
end;

procedure T133VEM.SetUSU_DatGer(const pUSU_DatGer: TDate);
begin
  FUSU_DatGer := pUSU_DatGer;

  CheckField('USU_DatGer');
end;

function T133VEM.GetUSU_UsuGer: Integer;
begin
  Result := FUSU_UsuGer;
end;

procedure T133VEM.SetUSU_UsuGer(const pUSU_UsuGer: Integer);
begin
  FUSU_UsuGer := pUSU_UsuGer;

  CheckField('USU_UsuGer');
end;

function T133VEM.GetUSU_CodEmp: Integer;
begin
  Result := FUSU_CodEmp;
end;

procedure T133VEM.SetUSU_CodEmp(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmp := pUSU_CodEmp;

  CheckField('USU_CodEmp');
end;

function T133VEM.GetUSU_CodCcu: string;
begin
  Result := FUSU_CodCcu;
end;

procedure T133VEM.SetUSU_CodCcu(const pUSU_CodCcu: string);
begin
  FUSU_CodCcu := pUSU_CodCcu;

  CheckField('USU_CodCcu');
end;

function T133VEM.GetUSU_DatAlt: TDate;
begin
  Result := FUSU_DatAlt;
end;

procedure T133VEM.SetUSU_DatAlt(const pUSU_DatAlt: TDate);
begin
  FUSU_DatAlt := pUSU_DatAlt;

  CheckField('USU_DatAlt');
end;

function T133VEM.GetUSU_UsuAlt: Integer;
begin
  Result := FUSU_UsuAlt;
end;

procedure T133VEM.SetUSU_UsuAlt(const pUSU_UsuAlt: Integer);
begin
  FUSU_UsuAlt := pUSU_UsuAlt;

  CheckField('USU_UsuAlt');
end;

function T133VEM.GetUSU_PlaVeiOLD: string;
begin
  Result := FUSU_PlaVeiOLD;
end;

procedure T133VEM.SetUSU_PlaVeiOLD(const pUSU_PlaVei: string);
begin
  FUSU_PlaVeiOLD := pUSU_PlaVei;
end;

function T133VEM.GetUSU_ModVeiOLD: string;
begin
  Result := FUSU_ModVeiOLD;
end;

procedure T133VEM.SetUSU_ModVeiOLD(const pUSU_ModVei: string);
begin
  FUSU_ModVeiOLD := pUSU_ModVei;
end;

function T133VEM.GetUSU_DatGerOLD: TDate;
begin
  Result := FUSU_DatGerOLD;
end;

procedure T133VEM.SetUSU_DatGerOLD(const pUSU_DatGer: TDate);
begin
  FUSU_DatGerOLD := pUSU_DatGer;
end;

function T133VEM.GetUSU_UsuGerOLD: Integer;
begin
  Result := FUSU_UsuGerOLD;
end;

procedure T133VEM.SetUSU_UsuGerOLD(const pUSU_UsuGer: Integer);
begin
  FUSU_UsuGerOLD := pUSU_UsuGer;
end;

function T133VEM.GetUSU_CodEmpOLD: Integer;
begin
  Result := FUSU_CodEmpOLD;
end;

procedure T133VEM.SetUSU_CodEmpOLD(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmpOLD := pUSU_CodEmp;
end;

function T133VEM.GetUSU_CodCcuOLD: string;
begin
  Result := FUSU_CodCcuOLD;
end;

procedure T133VEM.SetUSU_CodCcuOLD(const pUSU_CodCcu: string);
begin
  FUSU_CodCcuOLD := pUSU_CodCcu;
end;

function T133VEM.GetUSU_DatAltOLD: TDate;
begin
  Result := FUSU_DatAltOLD;
end;

procedure T133VEM.SetUSU_DatAltOLD(const pUSU_DatAlt: TDate);
begin
  FUSU_DatAltOLD := pUSU_DatAlt;
end;

function T133VEM.GetUSU_UsuAltOLD: Integer;
begin
  Result := FUSU_UsuAltOLD;
end;

procedure T133VEM.SetUSU_UsuAltOLD(const pUSU_UsuAlt: Integer);
begin
  FUSU_UsuAltOLD := pUSU_UsuAlt;
end;

procedure T133VEM.Registros_OLD();
begin
  FUSU_PlaVeiOLD := FUSU_PlaVei;
  FUSU_ModVeiOLD := FUSU_ModVei;
  FUSU_DatGerOLD := FUSU_DatGer;
  FUSU_UsuGerOLD := FUSU_UsuGer;
  FUSU_CodEmpOLD := FUSU_CodEmp;
  FUSU_CodCcuOLD := FUSU_CodCcu;
  FUSU_DatAltOLD := FUSU_DatAlt;
  FUSU_UsuAltOLD := FUSU_UsuAlt;

  inherited;
end;

procedure T133VEM.RetornarValores();
begin
  FUSU_PlaVei := FUSU_PlaVeiOLD;
  FUSU_ModVei := FUSU_ModVeiOLD;
  FUSU_DatGer := FUSU_DatGerOLD;
  FUSU_UsuGer := FUSU_UsuGerOLD;
  FUSU_CodEmp := FUSU_CodEmpOLD;
  FUSU_CodCcu := FUSU_CodCcuOLD;
  FUSU_DatAlt := FUSU_DatAltOLD;
  FUSU_UsuAlt := FUSU_UsuAltOLD;
end;

end.
