unit o133vem;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, oTabelas, DateUtils;

type

  T133VEM = class(TTabelaUsuario)
  private
    FUSU_PlaVei: string;
    FUSU_ModVei: string;
    FUSU_DatGer: TDate;
    FUSU_UsuGer: Integer;
    FUSU_IDMAU: Integer;
    FUSU_NumMat: string;

    FUSU_PlaVeiOLD: string;
    FUSU_ModVeiOLD: string;
    FUSU_DatGerOLD: TDate;
    FUSU_UsuGerOLD: Integer;
    FUSU_IDMAUOLD: Integer;
    FUSU_NumMatOLD: string;

    function GetUSU_PlaVei: string;
    procedure SetUSU_PlaVei(const pUSU_PlaVei: string);
    function GetUSU_ModVei: string;
    procedure SetUSU_ModVei(const pUSU_ModVei: string);
    function GetUSU_DatGer: TDate;
    procedure SetUSU_DatGer(const pUSU_DatGer: TDate);
    function GetUSU_UsuGer: Integer;
    procedure SetUSU_UsuGer(const pUSU_UsuGer: Integer);
    function GetUSU_IDMAU: Integer;
    procedure SetUSU_IDMAU(const pUSU_IDMAU: Integer);
    function GetUSU_NumMat: string;
    procedure SetUSU_NumMat(const pUSU_NumMat: string);

    function GetUSU_PlaVeiOld: string;
    procedure SetUSU_PlaVeiOld(const pUSU_PlaVei: string);
    function GetUSU_ModVeiOld: string;
    procedure SetUSU_ModVeiOld(const pUSU_ModVei: string);
    function GetUSU_DatGerOld: TDate;
    procedure SetUSU_DatGerOld(const pUSU_DatGer: TDate);
    function GetUSU_UsuGerOld: Integer;
    procedure SetUSU_UsuGerOld(const pUSU_UsuGer: Integer);
    function GetUSU_IDMAUOld: Integer;
    procedure SetUSU_IDMAUOld(const pUSU_IDMAU: Integer);
    function GetUSU_NumMatOld: string;
    procedure SetUSU_NumMatOld(const pUSU_NumMat: string);
  protected
    procedure Registros_OLD(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_PlaVei: string read GetUSU_PlaVei write SetUSU_PlaVei;
    property USU_ModVei: string read GetUSU_ModVei write SetUSU_ModVei;
    property USU_DatGer: TDate read GetUSU_DatGer write SetUSU_DatGer;
    property USU_UsuGer: Integer read GetUSU_UsuGer write SetUSU_UsuGer;
    property USU_IDMAU: Integer read GetUSU_IDMAU write SetUSU_IDMAU;
    property USU_NumMat: string read GetUSU_NumMat write SetUSU_NumMat;

    property OLD_USU_PlaVei: string read GetUSU_PlaVeiOLD write SetUSU_PlaVeiOLD;
    property OLD_USU_ModVei: string read GetUSU_ModVeiOLD write SetUSU_ModVeiOLD;
    property OLD_USU_DatGer: TDate read GetUSU_DatGerOLD write SetUSU_DatGerOLD;
    property OLD_USU_UsuGer: Integer read GetUSU_UsuGerOLD write SetUSU_UsuGerOLD;
    property OLD_USU_IDMAU: Integer read GetUSU_IDMAUOLD write SetUSU_IDMAUOLD;
    property OLD_USU_NumMat: string read GetUSU_NumMatOLD write SetUSU_NumMatOLD;
  end;

implementation

{ T133VEM }

constructor T133VEM.Create();
begin
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
end;

function T133VEM.GetUSU_ModVei: string;
begin
  Result := FUSU_ModVei;
end;

procedure T133VEM.SetUSU_ModVei(const pUSU_ModVei: string);
begin
  FUSU_ModVei := pUSU_ModVei;
end;

function T133VEM.GetUSU_DatGer: TDate;
begin
  Result := FUSU_DatGer;
end;

procedure T133VEM.SetUSU_DatGer(const pUSU_DatGer: TDate);
begin
  FUSU_DatGer := pUSU_DatGer;
end;

function T133VEM.GetUSU_UsuGer: Integer;
begin
  Result := FUSU_UsuGer;
end;

procedure T133VEM.SetUSU_UsuGer(const pUSU_UsuGer: Integer);
begin
  FUSU_UsuGer := pUSU_UsuGer;
end;

function T133VEM.GetUSU_IDMAU: Integer;
begin
  Result := FUSU_IDMAU;
end;

procedure T133VEM.SetUSU_IDMAU(const pUSU_IDMAU: Integer);
begin
  FUSU_IDMAU := pUSU_IDMAU;
end;

function T133VEM.GetUSU_NumMat: string;
begin
  Result := FUSU_NumMat;
end;

procedure T133VEM.SetUSU_NumMat(const pUSU_NumMat: string);
begin
  FUSU_NumMat := pUSU_NumMat;
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

function T133VEM.GetUSU_IDMAUOLD: Integer;
begin
  Result := FUSU_IDMAUOLD;
end;

procedure T133VEM.SetUSU_IDMAUOLD(const pUSU_IDMAU: Integer);
begin
  FUSU_IDMAUOLD := pUSU_IDMAU;
end;

function T133VEM.GetUSU_NumMatOLD: string;
begin
  Result := FUSU_NumMatOLD;
end;

procedure T133VEM.SetUSU_NumMatOLD(const pUSU_NumMat: string);
begin
  FUSU_NumMatOLD := pUSU_NumMat;
end;

procedure T133VEM.Registros_OLD();
begin
  FUSU_PlaVeiOLD := FUSU_PlaVei;
  FUSU_ModVeiOLD := FUSU_ModVei;
  FUSU_DatGerOLD := FUSU_DatGer;
  FUSU_UsuGerOLD := FUSU_UsuGer;
  FUSU_IDMAUOLD := FUSU_IDMAU;
  FUSU_NumMatOLD := FUSU_NumMat;
end;

end.
