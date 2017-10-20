unit o510mle;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, oTabelas, DateUtils;

type

  T510MLE = class(TTabelaUsuario)
  private
    FUSU_IdeLte: Integer;
    FUSU_EspBan: string;
    FUSU_CodTpt: string;

    FUSU_IdeLteOLD: Integer;
    FUSU_EspBanOLD: string;
    FUSU_CodTptOLD: string;

    function GetUSU_IdeLte: Integer;
    procedure SetUSU_IdeLte(const pUSU_IdeLte: Integer);
    function GetUSU_EspBan: string;
    procedure SetUSU_EspBan(const pUSU_EspBan: string);
    function GetUSU_CodTpt: string;
    procedure SetUSU_CodTpt(const pUSU_CodTpt: string);

    function GetUSU_IdeLteOld: Integer;
    procedure SetUSU_IdeLteOld(const pUSU_IdeLte: Integer);
    function GetUSU_EspBanOld: string;
    procedure SetUSU_EspBanOld(const pUSU_EspBan: string);
    function GetUSU_CodTptOld: string;
    procedure SetUSU_CodTptOld(const pUSU_CodTpt: string);
  protected
    procedure Registros_OLD(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_IdeLte: Integer read GetUSU_IdeLte write SetUSU_IdeLte;
    property USU_EspBan: string read GetUSU_EspBan write SetUSU_EspBan;
    property USU_CodTpt: string read GetUSU_CodTpt write SetUSU_CodTpt;

    property OLD_USU_IdeLte: Integer read GetUSU_IdeLteOLD write SetUSU_IdeLteOLD;
    property OLD_USU_EspBan: string read GetUSU_EspBanOLD write SetUSU_EspBanOLD;
    property OLD_USU_CodTpt: string read GetUSU_CodTptOLD write SetUSU_CodTptOLD;
  end;

implementation

{ T510MLE }

constructor T510MLE.Create();
begin
  inherited Create('USU_T510MLE');
end;

destructor T510MLE.Destroy();
begin
  inherited;
end;

function T510MLE.GetUSU_IdeLte: Integer;
begin
  Result := FUSU_IdeLte;
end;

procedure T510MLE.SetUSU_IdeLte(const pUSU_IdeLte: Integer);
begin
  FUSU_IdeLte := pUSU_IdeLte;
end;

function T510MLE.GetUSU_EspBan: string;
begin
  Result := FUSU_EspBan;
end;

procedure T510MLE.SetUSU_EspBan(const pUSU_EspBan: string);
begin
  FUSU_EspBan := pUSU_EspBan;
end;

function T510MLE.GetUSU_CodTpt: string;
begin
  Result := FUSU_CodTpt;
end;

procedure T510MLE.SetUSU_CodTpt(const pUSU_CodTpt: string);
begin
  FUSU_CodTpt := pUSU_CodTpt;
end;

function T510MLE.GetUSU_IdeLteOLD: Integer;
begin
  Result := FUSU_IdeLteOLD;
end;

procedure T510MLE.SetUSU_IdeLteOLD(const pUSU_IdeLte: Integer);
begin
  FUSU_IdeLteOLD := pUSU_IdeLte;
end;

function T510MLE.GetUSU_EspBanOLD: string;
begin
  Result := FUSU_EspBanOLD;
end;

procedure T510MLE.SetUSU_EspBanOLD(const pUSU_EspBan: string);
begin
  FUSU_EspBanOLD := pUSU_EspBan;
end;

function T510MLE.GetUSU_CodTptOLD: string;
begin
  Result := FUSU_CodTptOLD;
end;

procedure T510MLE.SetUSU_CodTptOLD(const pUSU_CodTpt: string);
begin
  FUSU_CodTptOLD := pUSU_CodTpt;
end;

procedure T510MLE.Registros_OLD();
begin
  FUSU_IdeLteOLD := FUSU_IdeLte;
  FUSU_EspBanOLD := FUSU_EspBan;
  FUSU_CodTptOLD := FUSU_CodTpt;
end;

end.
