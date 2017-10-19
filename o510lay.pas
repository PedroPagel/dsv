unit o510lay;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, oTabelas, DateUtils;

type

  T510LAY = class(TTabelaUsuario)
  private
    FUSU_PosCol: Integer;
    FUSU_TamCol: Integer;
    FUSU_NomCol: string;
    FUSU_IDAGE: Integer;

    FUSU_PosColOLD: Integer;
    FUSU_TamColOLD: Integer;
    FUSU_NomColOLD: string;
    FUSU_IDAGEOLD: Integer;

    function GetUSU_PosCol: Integer;
    procedure SetUSU_PosCol(const pUSU_PosCol: Integer);
    function GetUSU_TamCol: Integer;
    procedure SetUSU_TamCol(const pUSU_TamCol: Integer);
    function GetUSU_NomCol: string;
    procedure SetUSU_NomCol(const pUSU_NomCol: string);
    function GetUSU_IDAGE: Integer;
    procedure SetUSU_IDAGE(const pUSU_IDAGE: Integer);

    function GetUSU_PosColOld: Integer;
    procedure SetUSU_PosColOld(const pUSU_PosCol: Integer);
    function GetUSU_TamColOld: Integer;
    procedure SetUSU_TamColOld(const pUSU_TamCol: Integer);
    function GetUSU_NomColOld: string;
    procedure SetUSU_NomColOld(const pUSU_NomCol: string);
    function GetUSU_IDAGEOld: Integer;
    procedure SetUSU_IDAGEOld(const pUSU_IDAGE: Integer);
  protected
    procedure Registros_OLD(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_PosCol: Integer read GetUSU_PosCol write SetUSU_PosCol;
    property USU_TamCol: Integer read GetUSU_TamCol write SetUSU_TamCol;
    property USU_NomCol: string read GetUSU_NomCol write SetUSU_NomCol;
    property USU_IDAGE: Integer read GetUSU_IDAGE write SetUSU_IDAGE;

    property OLD_USU_PosCol: Integer read GetUSU_PosColOLD write SetUSU_PosColOLD;
    property OLD_USU_TamCol: Integer read GetUSU_TamColOLD write SetUSU_TamColOLD;
    property OLD_USU_NomCol: string read GetUSU_NomColOLD write SetUSU_NomColOLD;
    property OLD_USU_IDAGE: Integer read GetUSU_IDAGEOLD write SetUSU_IDAGEOLD;
  end;

implementation

{ T510LAY }

constructor T510LAY.Create();
begin
  inherited Create('USU_T510LAY');

  BlockProperty(['USU_ID']);
end;

destructor T510LAY.Destroy();
begin
  inherited;
end;

function T510LAY.GetUSU_PosCol: Integer;
begin
  Result := FUSU_PosCol;
end;

procedure T510LAY.SetUSU_PosCol(const pUSU_PosCol: Integer);
begin
  FUSU_PosCol := pUSU_PosCol;
end;

function T510LAY.GetUSU_TamCol: Integer;
begin
  Result := FUSU_TamCol;
end;

procedure T510LAY.SetUSU_TamCol(const pUSU_TamCol: Integer);
begin
  FUSU_TamCol := pUSU_TamCol;
end;

function T510LAY.GetUSU_NomCol: string;
begin
  Result := FUSU_NomCol;
end;

procedure T510LAY.SetUSU_NomCol(const pUSU_NomCol: string);
begin
  FUSU_NomCol := pUSU_NomCol;
end;

function T510LAY.GetUSU_IDAGE: Integer;
begin
  Result := FUSU_IDAGE;
end;

procedure T510LAY.SetUSU_IDAGE(const pUSU_IDAGE: Integer);
begin
  FUSU_IDAGE := pUSU_IDAGE;
end;

function T510LAY.GetUSU_PosColOLD: Integer;
begin
  Result := FUSU_PosColOLD;
end;

procedure T510LAY.SetUSU_PosColOLD(const pUSU_PosCol: Integer);
begin
  FUSU_PosColOLD := pUSU_PosCol;
end;

function T510LAY.GetUSU_TamColOLD: Integer;
begin
  Result := FUSU_TamColOLD;
end;

procedure T510LAY.SetUSU_TamColOLD(const pUSU_TamCol: Integer);
begin
  FUSU_TamColOLD := pUSU_TamCol;
end;

function T510LAY.GetUSU_NomColOLD: string;
begin
  Result := FUSU_NomColOLD;
end;

procedure T510LAY.SetUSU_NomColOLD(const pUSU_NomCol: string);
begin
  FUSU_NomColOLD := pUSU_NomCol;
end;

function T510LAY.GetUSU_IDAGEOLD: Integer;
begin
  Result := FUSU_IDAGEOLD;
end;

procedure T510LAY.SetUSU_IDAGEOLD(const pUSU_IDAGE: Integer);
begin
  FUSU_IDAGEOLD := pUSU_IDAGE;
end;

procedure T510LAY.Registros_OLD();
begin
  FUSU_PosColOLD := FUSU_PosCol;
  FUSU_TamColOLD := FUSU_TamCol;
  FUSU_NomColOLD := FUSU_NomCol;
  FUSU_IDAGEOLD := FUSU_IDAGE;
end;

end.
