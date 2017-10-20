unit o510lte;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, oTabelas, DateUtils;

type

  T510LTE = class(TTabelaUsuario)
  private
    FUSU_CodBan: string;
    FUSU_DesLig: string;
    FUSU_DatGer: TDate;
    FUSU_UsuGer: Integer;
    FUSU_DatAlt: TDate;
    FUSU_UsuAlt: Integer;

    FUSU_CodBanOLD: string;
    FUSU_DesLigOLD: string;
    FUSU_DatGerOLD: TDate;
    FUSU_UsuGerOLD: Integer;
    FUSU_DatAltOLD: TDate;
    FUSU_UsuAltOLD: Integer;

    function GetUSU_CodBan: string;
    procedure SetUSU_CodBan(const pUSU_CodBan: string);
    function GetUSU_DesLig: string;
    procedure SetUSU_DesLig(const pUSU_DesLig: string);
    function GetUSU_DatGer: TDate;
    procedure SetUSU_DatGer(const pUSU_DatGer: TDate);
    function GetUSU_UsuGer: Integer;
    procedure SetUSU_UsuGer(const pUSU_UsuGer: Integer);
    function GetUSU_DatAlt: TDate;
    procedure SetUSU_DatAlt(const pUSU_DatAlt: TDate);
    function GetUSU_UsuAlt: Integer;
    procedure SetUSU_UsuAlt(const pUSU_UsuAlt: Integer);

    function GetUSU_CodBanOld: string;
    procedure SetUSU_CodBanOld(const pUSU_CodBan: string);
    function GetUSU_DesLigOld: string;
    procedure SetUSU_DesLigOld(const pUSU_DesLig: string);
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
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_CodBan: string read GetUSU_CodBan write SetUSU_CodBan;
    property USU_DesLig: string read GetUSU_DesLig write SetUSU_DesLig;
    property USU_DatGer: TDate read GetUSU_DatGer write SetUSU_DatGer;
    property USU_UsuGer: Integer read GetUSU_UsuGer write SetUSU_UsuGer;
    property USU_DatAlt: TDate read GetUSU_DatAlt write SetUSU_DatAlt;
    property USU_UsuAlt: Integer read GetUSU_UsuAlt write SetUSU_UsuAlt;

    property OLD_USU_CodBan: string read GetUSU_CodBanOLD write SetUSU_CodBanOLD;
    property OLD_USU_DesLig: string read GetUSU_DesLigOLD write SetUSU_DesLigOLD;
    property OLD_USU_DatGer: TDate read GetUSU_DatGerOLD write SetUSU_DatGerOLD;
    property OLD_USU_UsuGer: Integer read GetUSU_UsuGerOLD write SetUSU_UsuGerOLD;
    property OLD_USU_DatAlt: TDate read GetUSU_DatAltOLD write SetUSU_DatAltOLD;
    property OLD_USU_UsuAlt: Integer read GetUSU_UsuAltOLD write SetUSU_UsuAltOLD;
  end;

implementation

{ T510LTE }

constructor T510LTE.Create();
begin
  inherited Create('USU_T510LTE');
end;

destructor T510LTE.Destroy();
begin
  inherited;
end;

function T510LTE.GetUSU_CodBan: string;
begin
  Result := FUSU_CodBan;
end;

procedure T510LTE.SetUSU_CodBan(const pUSU_CodBan: string);
begin
  FUSU_CodBan := pUSU_CodBan;
end;

function T510LTE.GetUSU_DesLig: string;
begin
  Result := FUSU_DesLig;
end;

procedure T510LTE.SetUSU_DesLig(const pUSU_DesLig: string);
begin
  FUSU_DesLig := pUSU_DesLig;
end;

function T510LTE.GetUSU_DatGer: TDate;
begin
  Result := FUSU_DatGer;
end;

procedure T510LTE.SetUSU_DatGer(const pUSU_DatGer: TDate);
begin
  FUSU_DatGer := pUSU_DatGer;
end;

function T510LTE.GetUSU_UsuGer: Integer;
begin
  Result := FUSU_UsuGer;
end;

procedure T510LTE.SetUSU_UsuGer(const pUSU_UsuGer: Integer);
begin
  FUSU_UsuGer := pUSU_UsuGer;
end;

function T510LTE.GetUSU_DatAlt: TDate;
begin
  Result := FUSU_DatAlt;
end;

procedure T510LTE.SetUSU_DatAlt(const pUSU_DatAlt: TDate);
begin
  FUSU_DatAlt := pUSU_DatAlt;
end;

function T510LTE.GetUSU_UsuAlt: Integer;
begin
  Result := FUSU_UsuAlt;
end;

procedure T510LTE.SetUSU_UsuAlt(const pUSU_UsuAlt: Integer);
begin
  FUSU_UsuAlt := pUSU_UsuAlt;
end;

function T510LTE.GetUSU_CodBanOLD: string;
begin
  Result := FUSU_CodBanOLD;
end;

procedure T510LTE.SetUSU_CodBanOLD(const pUSU_CodBan: string);
begin
  FUSU_CodBanOLD := pUSU_CodBan;
end;

function T510LTE.GetUSU_DesLigOLD: string;
begin
  Result := FUSU_DesLigOLD;
end;

procedure T510LTE.SetUSU_DesLigOLD(const pUSU_DesLig: string);
begin
  FUSU_DesLigOLD := pUSU_DesLig;
end;

function T510LTE.GetUSU_DatGerOLD: TDate;
begin
  Result := FUSU_DatGerOLD;
end;

procedure T510LTE.SetUSU_DatGerOLD(const pUSU_DatGer: TDate);
begin
  FUSU_DatGerOLD := pUSU_DatGer;
end;

function T510LTE.GetUSU_UsuGerOLD: Integer;
begin
  Result := FUSU_UsuGerOLD;
end;

procedure T510LTE.SetUSU_UsuGerOLD(const pUSU_UsuGer: Integer);
begin
  FUSU_UsuGerOLD := pUSU_UsuGer;
end;

function T510LTE.GetUSU_DatAltOLD: TDate;
begin
  Result := FUSU_DatAltOLD;
end;

procedure T510LTE.SetUSU_DatAltOLD(const pUSU_DatAlt: TDate);
begin
  FUSU_DatAltOLD := pUSU_DatAlt;
end;

function T510LTE.GetUSU_UsuAltOLD: Integer;
begin
  Result := FUSU_UsuAltOLD;
end;

procedure T510LTE.SetUSU_UsuAltOLD(const pUSU_UsuAlt: Integer);
begin
  FUSU_UsuAltOLD := pUSU_UsuAlt;
end;

procedure T510LTE.Registros_OLD();
begin
  FUSU_CodBanOLD := FUSU_CodBan;
  FUSU_DesLigOLD := FUSU_DesLig;
  FUSU_DatGerOLD := FUSU_DatGer;
  FUSU_UsuGerOLD := FUSU_UsuGer;
  FUSU_DatAltOLD := FUSU_DatAlt;
  FUSU_UsuAltOLD := FUSU_UsuAlt;
end;

end.
