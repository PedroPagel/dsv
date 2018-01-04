unit o097gfi;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T097GFI = class(TTabelaUsuario)
  private
    FUSU_CodGfi: string;
    FUSU_DesGfi: string;
    FUSU_SitReg: Char;
    FUSU_UsuGer: Integer;
    FUSU_DatGer: TDate;
    FUSU_UsuAlt: Integer;
    FUSU_DatAlt: TDate;
    FUSU_ObsGfi: string;

    FUSU_CodGfiOLD: string;
    FUSU_DesGfiOLD: string;
    FUSU_SitRegOLD: Char;
    FUSU_UsuGerOLD: Integer;
    FUSU_DatGerOLD: TDate;
    FUSU_UsuAltOLD: Integer;
    FUSU_DatAltOLD: TDate;
    FUSU_ObsGfiOLD: string;

    function GetUSU_CodGfi: string;
    procedure SetUSU_CodGfi(const pUSU_CodGfi: string);
    function GetUSU_DesGfi: string;
    procedure SetUSU_DesGfi(const pUSU_DesGfi: string);
    function GetUSU_SitReg: Char;
    procedure SetUSU_SitReg(const pUSU_SitReg: Char);
    function GetUSU_UsuGer: Integer;
    procedure SetUSU_UsuGer(const pUSU_UsuGer: Integer);
    function GetUSU_DatGer: TDate;
    procedure SetUSU_DatGer(const pUSU_DatGer: TDate);
    function GetUSU_UsuAlt: Integer;
    procedure SetUSU_UsuAlt(const pUSU_UsuAlt: Integer);
    function GetUSU_DatAlt: TDate;
    procedure SetUSU_DatAlt(const pUSU_DatAlt: TDate);
    function GetUSU_ObsGfi: string;
    procedure SetUSU_ObsGfi(const pUSU_ObsGfi: string);

    function GetUSU_CodGfiOld: string;
    procedure SetUSU_CodGfiOld(const pUSU_CodGfi: string);
    function GetUSU_DesGfiOld: string;
    procedure SetUSU_DesGfiOld(const pUSU_DesGfi: string);
    function GetUSU_SitRegOld: Char;
    procedure SetUSU_SitRegOld(const pUSU_SitReg: Char);
    function GetUSU_UsuGerOld: Integer;
    procedure SetUSU_UsuGerOld(const pUSU_UsuGer: Integer);
    function GetUSU_DatGerOld: TDate;
    procedure SetUSU_DatGerOld(const pUSU_DatGer: TDate);
    function GetUSU_UsuAltOld: Integer;
    procedure SetUSU_UsuAltOld(const pUSU_UsuAlt: Integer);
    function GetUSU_DatAltOld: TDate;
    procedure SetUSU_DatAltOld(const pUSU_DatAlt: TDate);
    function GetUSU_ObsGfiOld: string;
    procedure SetUSU_ObsGfiOld(const pUSU_ObsGfi: string);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_CodGfi: string read GetUSU_CodGfi write SetUSU_CodGfi;
    property USU_DesGfi: string read GetUSU_DesGfi write SetUSU_DesGfi;
    property USU_SitReg: Char read GetUSU_SitReg write SetUSU_SitReg;
    property USU_UsuGer: Integer read GetUSU_UsuGer write SetUSU_UsuGer;
    property USU_DatGer: TDate read GetUSU_DatGer write SetUSU_DatGer;
    property USU_UsuAlt: Integer read GetUSU_UsuAlt write SetUSU_UsuAlt;
    property USU_DatAlt: TDate read GetUSU_DatAlt write SetUSU_DatAlt;
    property USU_ObsGfi: string read GetUSU_ObsGfi write SetUSU_ObsGfi;

    property OLD_USU_CodGfi: string read GetUSU_CodGfiOLD write SetUSU_CodGfiOLD;
    property OLD_USU_DesGfi: string read GetUSU_DesGfiOLD write SetUSU_DesGfiOLD;
    property OLD_USU_SitReg: Char read GetUSU_SitRegOLD write SetUSU_SitRegOLD;
    property OLD_USU_UsuGer: Integer read GetUSU_UsuGerOLD write SetUSU_UsuGerOLD;
    property OLD_USU_DatGer: TDate read GetUSU_DatGerOLD write SetUSU_DatGerOLD;
    property OLD_USU_UsuAlt: Integer read GetUSU_UsuAltOLD write SetUSU_UsuAltOLD;
    property OLD_USU_DatAlt: TDate read GetUSU_DatAltOLD write SetUSU_DatAltOLD;
    property OLD_USU_ObsGfi: string read GetUSU_ObsGfiOLD write SetUSU_ObsGfiOLD;
  end;

implementation

{ T097GFI }

constructor T097GFI.Create();
begin
  AddPrimaryKeys('USU_Id');

  inherited Create('USU_T097GFI');
end;

destructor T097GFI.Destroy();
begin
  inherited;
end;

function T097GFI.GetUSU_CodGfi: string;
begin
  Result := FUSU_CodGfi;
end;

procedure T097GFI.SetUSU_CodGfi(const pUSU_CodGfi: string);
begin
  FUSU_CodGfi := pUSU_CodGfi;

  CheckField('USU_CodGfi');
end;

function T097GFI.GetUSU_DesGfi: string;
begin
  Result := FUSU_DesGfi;
end;

procedure T097GFI.SetUSU_DesGfi(const pUSU_DesGfi: string);
begin
  FUSU_DesGfi := pUSU_DesGfi;

  CheckField('USU_DesGfi');
end;

function T097GFI.GetUSU_SitReg: Char;
begin
  Result := FUSU_SitReg;
end;

procedure T097GFI.SetUSU_SitReg(const pUSU_SitReg: Char);
begin
  FUSU_SitReg := pUSU_SitReg;

  CheckField('USU_SitReg');
end;

function T097GFI.GetUSU_UsuGer: Integer;
begin
  Result := FUSU_UsuGer;
end;

procedure T097GFI.SetUSU_UsuGer(const pUSU_UsuGer: Integer);
begin
  FUSU_UsuGer := pUSU_UsuGer;

  CheckField('USU_UsuGer');
end;

function T097GFI.GetUSU_DatGer: TDate;
begin
  Result := FUSU_DatGer;
end;

procedure T097GFI.SetUSU_DatGer(const pUSU_DatGer: TDate);
begin
  FUSU_DatGer := pUSU_DatGer;

  CheckField('USU_DatGer');
end;

function T097GFI.GetUSU_UsuAlt: Integer;
begin
  Result := FUSU_UsuAlt;
end;

procedure T097GFI.SetUSU_UsuAlt(const pUSU_UsuAlt: Integer);
begin
  FUSU_UsuAlt := pUSU_UsuAlt;

  CheckField('USU_UsuAlt');
end;

function T097GFI.GetUSU_DatAlt: TDate;
begin
  Result := FUSU_DatAlt;
end;

procedure T097GFI.SetUSU_DatAlt(const pUSU_DatAlt: TDate);
begin
  FUSU_DatAlt := pUSU_DatAlt;

  CheckField('USU_DatAlt');
end;

function T097GFI.GetUSU_ObsGfi: string;
begin
  Result := FUSU_ObsGfi;
end;

procedure T097GFI.SetUSU_ObsGfi(const pUSU_ObsGfi: string);
begin
  FUSU_ObsGfi := pUSU_ObsGfi;

  CheckField('USU_ObsGfi');
end;

function T097GFI.GetUSU_CodGfiOLD: string;
begin
  Result := FUSU_CodGfiOLD;
end;

procedure T097GFI.SetUSU_CodGfiOLD(const pUSU_CodGfi: string);
begin
  FUSU_CodGfiOLD := pUSU_CodGfi;
end;

function T097GFI.GetUSU_DesGfiOLD: string;
begin
  Result := FUSU_DesGfiOLD;
end;

procedure T097GFI.SetUSU_DesGfiOLD(const pUSU_DesGfi: string);
begin
  FUSU_DesGfiOLD := pUSU_DesGfi;
end;

function T097GFI.GetUSU_SitRegOLD: Char;
begin
  Result := FUSU_SitRegOLD;
end;

procedure T097GFI.SetUSU_SitRegOLD(const pUSU_SitReg: Char);
begin
  FUSU_SitRegOLD := pUSU_SitReg;
end;

function T097GFI.GetUSU_UsuGerOLD: Integer;
begin
  Result := FUSU_UsuGerOLD;
end;

procedure T097GFI.SetUSU_UsuGerOLD(const pUSU_UsuGer: Integer);
begin
  FUSU_UsuGerOLD := pUSU_UsuGer;
end;

function T097GFI.GetUSU_DatGerOLD: TDate;
begin
  Result := FUSU_DatGerOLD;
end;

procedure T097GFI.SetUSU_DatGerOLD(const pUSU_DatGer: TDate);
begin
  FUSU_DatGerOLD := pUSU_DatGer;
end;

function T097GFI.GetUSU_UsuAltOLD: Integer;
begin
  Result := FUSU_UsuAltOLD;
end;

procedure T097GFI.SetUSU_UsuAltOLD(const pUSU_UsuAlt: Integer);
begin
  FUSU_UsuAltOLD := pUSU_UsuAlt;
end;

function T097GFI.GetUSU_DatAltOLD: TDate;
begin
  Result := FUSU_DatAltOLD;
end;

procedure T097GFI.SetUSU_DatAltOLD(const pUSU_DatAlt: TDate);
begin
  FUSU_DatAltOLD := pUSU_DatAlt;
end;

function T097GFI.GetUSU_ObsGfiOLD: string;
begin
  Result := FUSU_ObsGfiOLD;
end;

procedure T097GFI.SetUSU_ObsGfiOLD(const pUSU_ObsGfi: string);
begin
  FUSU_ObsGfiOLD := pUSU_ObsGfi;
end;

procedure T097GFI.Registros_OLD();
begin
  FUSU_CodGfiOLD := FUSU_CodGfi;
  FUSU_DesGfiOLD := FUSU_DesGfi;
  FUSU_SitRegOLD := FUSU_SitReg;
  FUSU_UsuGerOLD := FUSU_UsuGer;
  FUSU_DatGerOLD := FUSU_DatGer;
  FUSU_UsuAltOLD := FUSU_UsuAlt;
  FUSU_DatAltOLD := FUSU_DatAlt;
  FUSU_ObsGfiOLD := FUSU_ObsGfi;

  inherited;
end;

procedure T097GFI.RetornarValores();
begin
  FUSU_CodGfi := FUSU_CodGfiOLD;
  FUSU_DesGfi := FUSU_DesGfiOLD;
  FUSU_SitReg := FUSU_SitRegOLD;
  FUSU_UsuGer := FUSU_UsuGerOLD;
  FUSU_DatGer := FUSU_DatGerOLD;
  FUSU_UsuAlt := FUSU_UsuAltOLD;
  FUSU_DatAlt := FUSU_DatAltOLD;
  FUSU_ObsGfi := FUSU_ObsGfiOLD;

  inherited;
end;

end.
