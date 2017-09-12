
unit o073vet;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, oTabelas, DateUtils;

type

  T073VET = class(TTabelaUsuario)
  private
    FUSU_CodEmp: Integer;
    FUSU_CodFil: Integer;
    FUSU_CodFor: Integer;
    FUSU_DiaCor: Char;
    FUSU_VenFat: Char;
    FUSU_PrzVen: Char;
    FUSU_ConVen: string;
    FUSU_MeiTns: Integer;
    FUSU_ID: Integer;
    FUSU_DiaIni: string;
    FUSU_DiaFin: string;

    FUSU_CodEmpOLD: Integer;
    FUSU_CodFilOLD: Integer;
    FUSU_CodForOLD: Integer;
    FUSU_DiaCorOLD: Char;
    FUSU_VenFatOLD: Char;
    FUSU_PrzVenOLD: Char;
    FUSU_ConVenOLD: string;
    FUSU_MeiTnsOLD: Integer;
    FUSU_IDOLD: Integer;
    FUSU_DiaIniOLD: string;
    FUSU_DiaFinOLD: string;

    function GetUSU_CodEmp: Integer;
    procedure SetUSU_CodEmp(const pUSU_CodEmp: Integer);
    function GetUSU_CodFil: Integer;
    procedure SetUSU_CodFil(const pUSU_CodFil: Integer);
    function GetUSU_CodFor: Integer;
    procedure SetUSU_CodFor(const pUSU_CodFor: Integer);
    function GetUSU_DiaCor: Char;
    procedure SetUSU_DiaCor(const pUSU_DiaCor: Char);
    function GetUSU_VenFat: Char;
    procedure SetUSU_VenFat(const pUSU_VenFat: Char);
    function GetUSU_PrzVen: Char;
    procedure SetUSU_PrzVen(const pUSU_PrzVen: Char);
    function GetUSU_ConVen: string;
    procedure SetUSU_ConVen(const pUSU_ConVen: string);
    function GetUSU_MeiTns: Integer;
    procedure SetUSU_MeiTns(const pUSU_MeiTns: Integer);
    function GetUSU_ID: Integer;
    procedure SetUSU_ID(const pUSU_ID: Integer);
    function GetUSU_DiaIni: string;
    procedure SetUSU_DiaIni(const pUSU_DiaIni: string);
    function GetUSU_DiaFin: string;
    procedure SetUSU_DiaFin(const pUSU_DiaFin: string);

    function GetUSU_CodEmpOld: Integer;
    procedure SetUSU_CodEmpOld(const pUSU_CodEmp: Integer);
    function GetUSU_CodFilOld: Integer;
    procedure SetUSU_CodFilOld(const pUSU_CodFil: Integer);
    function GetUSU_CodForOld: Integer;
    procedure SetUSU_CodForOld(const pUSU_CodFor: Integer);
    function GetUSU_DiaCorOld: Char;
    procedure SetUSU_DiaCorOld(const pUSU_DiaCor: Char);
    function GetUSU_VenFatOld: Char;
    procedure SetUSU_VenFatOld(const pUSU_VenFat: Char);
    function GetUSU_PrzVenOld: Char;
    procedure SetUSU_PrzVenOld(const pUSU_PrzVen: Char);
    function GetUSU_ConVenOld: string;
    procedure SetUSU_ConVenOld(const pUSU_ConVen: string);
    function GetUSU_MeiTnsOld: Integer;
    procedure SetUSU_MeiTnsOld(const pUSU_MeiTns: Integer);
    function GetUSU_IDOld: Integer;
    procedure SetUSU_IDOld(const pUSU_ID: Integer);
    function GetUSU_DiaIniOld: string;
    procedure SetUSU_DiaIniOld(const pUSU_DiaIni: string);
    function GetUSU_DiaFinOld: string;
    procedure SetUSU_DiaFinOld(const pUSU_DiaFin: string);
  protected
    procedure Registros_OLD(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_CodEmp: Integer read GetUSU_CodEmp write SetUSU_CodEmp;
    property USU_CodFil: Integer read GetUSU_CodFil write SetUSU_CodFil;
    property USU_CodFor: Integer read GetUSU_CodFor write SetUSU_CodFor;
    property USU_DiaCor: Char read GetUSU_DiaCor write SetUSU_DiaCor;
    property USU_VenFat: Char read GetUSU_VenFat write SetUSU_VenFat;
    property USU_PrzVen: Char read GetUSU_PrzVen write SetUSU_PrzVen;
    property USU_ConVen: string read GetUSU_ConVen write SetUSU_ConVen;
    property USU_MeiTns: Integer read GetUSU_MeiTns write SetUSU_MeiTns;
    property USU_ID: Integer read GetUSU_ID write SetUSU_ID;
    property USU_DiaIni: string read GetUSU_DiaIni write SetUSU_DiaIni;
    property USU_DiaFin: string read GetUSU_DiaFin write SetUSU_DiaFin;

    property OLD_USU_CodEmp: Integer read GetUSU_CodEmpOLD write SetUSU_CodEmpOLD;
    property OLD_USU_CodFil: Integer read GetUSU_CodFilOLD write SetUSU_CodFilOLD;
    property OLD_USU_CodFor: Integer read GetUSU_CodForOLD write SetUSU_CodForOLD;
    property OLD_USU_DiaCor: Char read GetUSU_DiaCorOLD write SetUSU_DiaCorOLD;
    property OLD_USU_VenFat: Char read GetUSU_VenFatOLD write SetUSU_VenFatOLD;
    property OLD_USU_PrzVen: Char read GetUSU_PrzVenOLD write SetUSU_PrzVenOLD;
    property OLD_USU_ConVen: string read GetUSU_ConVenOLD write SetUSU_ConVenOLD;
    property OLD_USU_MeiTns: Integer read GetUSU_MeiTnsOLD write SetUSU_MeiTnsOLD;
    property OLD_USU_ID: Integer read GetUSU_IDOLD write SetUSU_IDOLD;
    property OLD_USU_DiaIni: string read GetUSU_DiaIniOLD write SetUSU_DiaIniOLD;
    property OLD_USU_DiaFin: string read GetUSU_DiaFinOLD write SetUSU_DiaFinOLD;
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

function T073VET.GetUSU_DiaCor: Char;
begin
  Result := FUSU_DiaCor;
end;

procedure T073VET.SetUSU_DiaCor(const pUSU_DiaCor: Char);
begin
  FUSU_DiaCor := pUSU_DiaCor;
end;

function T073VET.GetUSU_VenFat: Char;
begin
  Result := FUSU_VenFat;
end;

procedure T073VET.SetUSU_VenFat(const pUSU_VenFat: Char);
begin
  FUSU_VenFat := pUSU_VenFat;
end;

function T073VET.GetUSU_PrzVen: Char;
begin
  Result := FUSU_PrzVen;
end;

procedure T073VET.SetUSU_PrzVen(const pUSU_PrzVen: Char);
begin
  FUSU_PrzVen := pUSU_PrzVen;
end;

function T073VET.GetUSU_ConVen: string;
begin
  Result := FUSU_ConVen;
end;

procedure T073VET.SetUSU_ConVen(const pUSU_ConVen: string);
begin
  FUSU_ConVen := pUSU_ConVen;
end;

function T073VET.GetUSU_MeiTns: Integer;
begin
  Result := FUSU_MeiTns;
end;

procedure T073VET.SetUSU_MeiTns(const pUSU_MeiTns: Integer);
begin
  FUSU_MeiTns := pUSU_MeiTns;
end;

function T073VET.GetUSU_ID: Integer;
begin
  Result := FUSU_ID;
end;

procedure T073VET.SetUSU_ID(const pUSU_ID: Integer);
begin
  FUSU_ID := pUSU_ID;
end;

function T073VET.GetUSU_DiaIni: string;
begin
  Result := FUSU_DiaIni;
end;

procedure T073VET.SetUSU_DiaIni(const pUSU_DiaIni: string);
begin
  FUSU_DiaIni := pUSU_DiaIni;
end;

function T073VET.GetUSU_DiaFin: string;
begin
  Result := FUSU_DiaFin;
end;

procedure T073VET.SetUSU_DiaFin(const pUSU_DiaFin: string);
begin
  FUSU_DiaFin := pUSU_DiaFin;
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

function T073VET.GetUSU_DiaCorOLD: Char;
begin
  Result := FUSU_DiaCorOLD;
end;

procedure T073VET.SetUSU_DiaCorOLD(const pUSU_DiaCor: Char);
begin
  FUSU_DiaCorOLD := pUSU_DiaCor;
end;

function T073VET.GetUSU_VenFatOLD: Char;
begin
  Result := FUSU_VenFatOLD;
end;

procedure T073VET.SetUSU_VenFatOLD(const pUSU_VenFat: Char);
begin
  FUSU_VenFatOLD := pUSU_VenFat;
end;

function T073VET.GetUSU_PrzVenOLD: Char;
begin
  Result := FUSU_PrzVenOLD;
end;

procedure T073VET.SetUSU_PrzVenOLD(const pUSU_PrzVen: Char);
begin
  FUSU_PrzVenOLD := pUSU_PrzVen;
end;

function T073VET.GetUSU_ConVenOLD: string;
begin
  Result := FUSU_ConVenOLD;
end;

procedure T073VET.SetUSU_ConVenOLD(const pUSU_ConVen: string);
begin
  FUSU_ConVenOLD := pUSU_ConVen;
end;

function T073VET.GetUSU_MeiTnsOLD: Integer;
begin
  Result := FUSU_MeiTnsOLD;
end;

procedure T073VET.SetUSU_MeiTnsOLD(const pUSU_MeiTns: Integer);
begin
  FUSU_MeiTnsOLD := pUSU_MeiTns;
end;

function T073VET.GetUSU_IDOLD: Integer;
begin
  Result := FUSU_IDOLD;
end;

procedure T073VET.SetUSU_IDOLD(const pUSU_ID: Integer);
begin
  FUSU_IDOLD := pUSU_ID;
end;

function T073VET.GetUSU_DiaIniOLD: string;
begin
  Result := FUSU_DiaIniOLD;
end;

procedure T073VET.SetUSU_DiaIniOLD(const pUSU_DiaIni: string);
begin
  FUSU_DiaIniOLD := pUSU_DiaIni;
end;

function T073VET.GetUSU_DiaFinOLD: string;
begin
  Result := FUSU_DiaFinOLD;
end;

procedure T073VET.SetUSU_DiaFinOLD(const pUSU_DiaFin: string);
begin
  FUSU_DiaFinOLD := pUSU_DiaFin;
end;

procedure T073VET.Registros_OLD();
begin
  FUSU_CodEmpOLD := FUSU_CodEmp;
  FUSU_CodFilOLD := FUSU_CodFil;
  FUSU_CodForOLD := FUSU_CodFor;
  FUSU_DiaCorOLD := FUSU_DiaCor;
  FUSU_VenFatOLD := FUSU_VenFat;
  FUSU_PrzVenOLD := FUSU_PrzVen;
  FUSU_ConVenOLD := FUSU_ConVen;
  FUSU_MeiTnsOLD := FUSU_MeiTns;
  FUSU_IDOLD := FUSU_ID;
  FUSU_DiaIniOLD := FUSU_DiaIni;
  FUSU_DiaFinOLD := FUSU_DiaFin;
end;

end.
