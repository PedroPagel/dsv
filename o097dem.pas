unit o097dem;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T097DEM = class(TTabelaUsuario)
  private
    FUSU_DesFor: string;
    FUSU_VlrDes: Double;
    FUSU_IdeMdo: Integer;

    FUSU_DesForOLD: string;
    FUSU_VlrDesOLD: Double;
    FUSU_IdeMdoOLD: Integer;

    function GetUSU_DesFor: string;
    procedure SetUSU_DesFor(const pUSU_DesFor: string);
    function GetUSU_VlrDes: Double;
    procedure SetUSU_VlrDes(const pUSU_VlrDes: Double);
    function GetUSU_IdeMdo: Integer;
    procedure SetUSU_IdeMdo(const pUSU_IdeMdo: Integer);

    function GetUSU_DesForOld: string;
    procedure SetUSU_DesForOld(const pUSU_DesFor: string);
    function GetUSU_VlrDesOld: Double;
    procedure SetUSU_VlrDesOld(const pUSU_VlrDes: Double);
    function GetUSU_IdeMdoOld: Integer;
    procedure SetUSU_IdeMdoOld(const pUSU_IdeMdo: Integer);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_DesFor: string read GetUSU_DesFor write SetUSU_DesFor;
    property USU_VlrDes: Double read GetUSU_VlrDes write SetUSU_VlrDes;
    property USU_IdeMdo: Integer read GetUSU_IdeMdo write SetUSU_IdeMdo;

    property OLD_USU_DesFor: string read GetUSU_DesForOLD write SetUSU_DesForOLD;
    property OLD_USU_VlrDes: Double read GetUSU_VlrDesOLD write SetUSU_VlrDesOLD;
    property OLD_USU_IdeMdo: Integer read GetUSU_IdeMdoOLD write SetUSU_IdeMdoOLD;
  end;

implementation

{ T097DEM }

constructor T097DEM.Create();
begin
  AddForeignKeys(['USU_IdeMdo'], ['USU_Id']);
  AddPrimaryKeys('USU_Id');

  inherited Create('USU_T097DEM');
end;

destructor T097DEM.Destroy();
begin
  inherited;
end;

function T097DEM.GetUSU_DesFor: string;
begin
  Result := FUSU_DesFor;
end;

procedure T097DEM.SetUSU_DesFor(const pUSU_DesFor: string);
begin
  FUSU_DesFor := pUSU_DesFor;

  CheckField('USU_DesFor');
end;

function T097DEM.GetUSU_VlrDes: Double;
begin
  Result := FUSU_VlrDes;
end;

procedure T097DEM.SetUSU_VlrDes(const pUSU_VlrDes: Double);
begin
  FUSU_VlrDes := pUSU_VlrDes;

  CheckField('USU_VlrDes');
end;

function T097DEM.GetUSU_IdeMdo: Integer;
begin
  Result := FUSU_IdeMdo;
end;

procedure T097DEM.SetUSU_IdeMdo(const pUSU_IdeMdo: Integer);
begin
  FUSU_IdeMdo := pUSU_IdeMdo;

  CheckField('USU_IdeMdo');
end;

function T097DEM.GetUSU_DesForOLD: string;
begin
  Result := FUSU_DesForOLD;
end;

procedure T097DEM.SetUSU_DesForOLD(const pUSU_DesFor: string);
begin
  FUSU_DesForOLD := pUSU_DesFor;
end;

function T097DEM.GetUSU_VlrDesOLD: Double;
begin
  Result := FUSU_VlrDesOLD;
end;

procedure T097DEM.SetUSU_VlrDesOLD(const pUSU_VlrDes: Double);
begin
  FUSU_VlrDesOLD := pUSU_VlrDes;
end;

function T097DEM.GetUSU_IdeMdoOLD: Integer;
begin
  Result := FUSU_IdeMdoOLD;
end;

procedure T097DEM.SetUSU_IdeMdoOLD(const pUSU_IdeMdo: Integer);
begin
  FUSU_IdeMdoOLD := pUSU_IdeMdo;
end;

procedure T097DEM.Registros_OLD();
begin
  FUSU_DesForOLD := FUSU_DesFor;
  FUSU_VlrDesOLD := FUSU_VlrDes;
  FUSU_IdeMdoOLD := FUSU_IdeMdo;

  inherited;
end;

procedure T097DEM.RetornarValores();
begin
  FUSU_DesFor := FUSU_DesForOLD;
  FUSU_VlrDes := FUSU_VlrDesOLD;
  FUSU_IdeMdo := FUSU_IdeMdoOLD;

  inherited;
end;

end.
