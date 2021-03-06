unit o120pen;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T120PEN = class(TTabelaPadrao)
  private
    FUSU_CodEmp: Integer;
    FUSU_CodFIl: Integer;
    FUSU_NumPed: Integer;
    FUSU_SitMov: Char;
    FUSU_DatPrv: TDate;
    FUSU_CodCli: Integer;
    FUSU_UsuGer: Integer;
    FUSU_NumCom: Integer;

    FUSU_CodEmpOLD: Integer;
    FUSU_CodFIlOLD: Integer;
    FUSU_NumPedOLD: Integer;
    FUSU_SitMovOLD: Char;
    FUSU_DatPrvOLD: TDate;
    FUSU_CodCliOLD: Integer;
    FUSU_UsuGerOLD: Integer;
    FUSU_NumComOLD: Integer;

    function GetUSU_CodEmp: Integer;
    procedure SetUSU_CodEmp(const pUSU_CodEmp: Integer);
    function GetUSU_CodFIl: Integer;
    procedure SetUSU_CodFIl(const pUSU_CodFIl: Integer);
    function GetUSU_NumPed: Integer;
    procedure SetUSU_NumPed(const pUSU_NumPed: Integer);
    function GetUSU_SitMov: Char;
    procedure SetUSU_SitMov(const pUSU_SitMov: Char);
    function GetUSU_DatPrv: TDate;
    procedure SetUSU_DatPrv(const pUSU_DatPrv: TDate);
    function GetUSU_CodCli: Integer;
    procedure SetUSU_CodCli(const pUSU_CodCli: Integer);
    function GetUSU_UsuGer: Integer;
    procedure SetUSU_UsuGer(const pUSU_UsuGer: Integer);
    function GetUSU_NumCom: Integer;
    procedure SetUSU_NumCom(const pUSU_NumCom: Integer);

    function GetUSU_CodEmpOld: Integer;
    procedure SetUSU_CodEmpOld(const pUSU_CodEmp: Integer);
    function GetUSU_CodFIlOld: Integer;
    procedure SetUSU_CodFIlOld(const pUSU_CodFIl: Integer);
    function GetUSU_NumPedOld: Integer;
    procedure SetUSU_NumPedOld(const pUSU_NumPed: Integer);
    function GetUSU_SitMovOld: Char;
    procedure SetUSU_SitMovOld(const pUSU_SitMov: Char);
    function GetUSU_DatPrvOld: TDate;
    procedure SetUSU_DatPrvOld(const pUSU_DatPrv: TDate);
    function GetUSU_CodCliOld: Integer;
    procedure SetUSU_CodCliOld(const pUSU_CodCli: Integer);
    function GetUSU_UsuGerOld: Integer;
    procedure SetUSU_UsuGerOld(const pUSU_UsuGer: Integer);
    function GetUSU_NumComOld: Integer;
    procedure SetUSU_NumComOld(const pUSU_NumCom: Integer);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_CodEmp: Integer read GetUSU_CodEmp write SetUSU_CodEmp;
    property USU_CodFIl: Integer read GetUSU_CodFIl write SetUSU_CodFIl;
    property USU_NumPed: Integer read GetUSU_NumPed write SetUSU_NumPed;
    property USU_SitMov: Char read GetUSU_SitMov write SetUSU_SitMov;
    property USU_DatPrv: TDate read GetUSU_DatPrv write SetUSU_DatPrv;
    property USU_CodCli: Integer read GetUSU_CodCli write SetUSU_CodCli;
    property USU_UsuGer: Integer read GetUSU_UsuGer write SetUSU_UsuGer;
    property USU_NumCom: Integer read GetUSU_NumCom write SetUSU_NumCom;

    property OLD_USU_CodEmp: Integer read GetUSU_CodEmpOLD write SetUSU_CodEmpOLD;
    property OLD_USU_CodFIl: Integer read GetUSU_CodFIlOLD write SetUSU_CodFIlOLD;
    property OLD_USU_NumPed: Integer read GetUSU_NumPedOLD write SetUSU_NumPedOLD;
    property OLD_USU_SitMov: Char read GetUSU_SitMovOLD write SetUSU_SitMovOLD;
    property OLD_USU_DatPrv: TDate read GetUSU_DatPrvOLD write SetUSU_DatPrvOLD;
    property OLD_USU_CodCli: Integer read GetUSU_CodCliOLD write SetUSU_CodCliOLD;
    property OLD_USU_UsuGer: Integer read GetUSU_UsuGerOLD write SetUSU_UsuGerOLD;
    property OLD_USU_NumCom: Integer read GetUSU_NumComOLD write SetUSU_NumComOLD;
  end;

implementation

{ T120PEN }

constructor T120PEN.Create();
begin
  AddForeignKeys(['USU_CodEmp','USU_CodFIl','USU_NumPed'], ['CodEmp','CodFil','NumPed']);

  inherited Create('USU_T120PEN');
end;

destructor T120PEN.Destroy();
begin
  inherited;
end;

function T120PEN.GetUSU_CodEmp: Integer;
begin
  Result := FUSU_CodEmp;
end;

procedure T120PEN.SetUSU_CodEmp(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmp := pUSU_CodEmp;

  CheckField('USU_CodEmp');
end;

function T120PEN.GetUSU_CodFIl: Integer;
begin
  Result := FUSU_CodFIl;
end;

procedure T120PEN.SetUSU_CodFIl(const pUSU_CodFIl: Integer);
begin
  FUSU_CodFIl := pUSU_CodFIl;

  CheckField('USU_CodFIl');
end;

function T120PEN.GetUSU_NumPed: Integer;
begin
  Result := FUSU_NumPed;
end;

procedure T120PEN.SetUSU_NumPed(const pUSU_NumPed: Integer);
begin
  FUSU_NumPed := pUSU_NumPed;

  CheckField('USU_NumPed');
end;

function T120PEN.GetUSU_SitMov: Char;
begin
  Result := FUSU_SitMov;
end;

procedure T120PEN.SetUSU_SitMov(const pUSU_SitMov: Char);
begin
  FUSU_SitMov := pUSU_SitMov;

  CheckField('USU_SitMov');
end;

function T120PEN.GetUSU_DatPrv: TDate;
begin
  Result := FUSU_DatPrv;
end;

procedure T120PEN.SetUSU_DatPrv(const pUSU_DatPrv: TDate);
begin
  FUSU_DatPrv := pUSU_DatPrv;

  CheckField('USU_DatPrv');
end;

function T120PEN.GetUSU_CodCli: Integer;
begin
  Result := FUSU_CodCli;
end;

procedure T120PEN.SetUSU_CodCli(const pUSU_CodCli: Integer);
begin
  FUSU_CodCli := pUSU_CodCli;

  CheckField('USU_CodCli');
end;

function T120PEN.GetUSU_UsuGer: Integer;
begin
  Result := FUSU_UsuGer;
end;

procedure T120PEN.SetUSU_UsuGer(const pUSU_UsuGer: Integer);
begin
  FUSU_UsuGer := pUSU_UsuGer;

  CheckField('USU_UsuGer');
end;

function T120PEN.GetUSU_NumCom: Integer;
begin
  Result := FUSU_NumCom;
end;

procedure T120PEN.SetUSU_NumCom(const pUSU_NumCom: Integer);
begin
  FUSU_NumCom := pUSU_NumCom;

  CheckField('USU_NumCom');
end;

function T120PEN.GetUSU_CodEmpOLD: Integer;
begin
  Result := FUSU_CodEmpOLD;
end;

procedure T120PEN.SetUSU_CodEmpOLD(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmpOLD := pUSU_CodEmp;
end;

function T120PEN.GetUSU_CodFIlOLD: Integer;
begin
  Result := FUSU_CodFIlOLD;
end;

procedure T120PEN.SetUSU_CodFIlOLD(const pUSU_CodFIl: Integer);
begin
  FUSU_CodFIlOLD := pUSU_CodFIl;
end;

function T120PEN.GetUSU_NumPedOLD: Integer;
begin
  Result := FUSU_NumPedOLD;
end;

procedure T120PEN.SetUSU_NumPedOLD(const pUSU_NumPed: Integer);
begin
  FUSU_NumPedOLD := pUSU_NumPed;
end;

function T120PEN.GetUSU_SitMovOLD: Char;
begin
  Result := FUSU_SitMovOLD;
end;

procedure T120PEN.SetUSU_SitMovOLD(const pUSU_SitMov: Char);
begin
  FUSU_SitMovOLD := pUSU_SitMov;
end;

function T120PEN.GetUSU_DatPrvOLD: TDate;
begin
  Result := FUSU_DatPrvOLD;
end;

procedure T120PEN.SetUSU_DatPrvOLD(const pUSU_DatPrv: TDate);
begin
  FUSU_DatPrvOLD := pUSU_DatPrv;
end;

function T120PEN.GetUSU_CodCliOLD: Integer;
begin
  Result := FUSU_CodCliOLD;
end;

procedure T120PEN.SetUSU_CodCliOLD(const pUSU_CodCli: Integer);
begin
  FUSU_CodCliOLD := pUSU_CodCli;
end;

function T120PEN.GetUSU_UsuGerOLD: Integer;
begin
  Result := FUSU_UsuGerOLD;
end;

procedure T120PEN.SetUSU_UsuGerOLD(const pUSU_UsuGer: Integer);
begin
  FUSU_UsuGerOLD := pUSU_UsuGer;
end;

function T120PEN.GetUSU_NumComOLD: Integer;
begin
  Result := FUSU_NumComOLD;
end;

procedure T120PEN.SetUSU_NumComOLD(const pUSU_NumCom: Integer);
begin
  FUSU_NumComOLD := pUSU_NumCom;
end;

procedure T120PEN.Registros_OLD();
begin
  FUSU_CodEmpOLD := FUSU_CodEmp;
  FUSU_CodFIlOLD := FUSU_CodFIl;
  FUSU_NumPedOLD := FUSU_NumPed;
  FUSU_SitMovOLD := FUSU_SitMov;
  FUSU_DatPrvOLD := FUSU_DatPrv;
  FUSU_CodCliOLD := FUSU_CodCli;
  FUSU_UsuGerOLD := FUSU_UsuGer;
  FUSU_NumComOLD := FUSU_NumCom;

  inherited;
end;

procedure T120PEN.RetornarValores();
begin
  FUSU_CodEmp := FUSU_CodEmpOLD;
  FUSU_CodFIl := FUSU_CodFIlOLD;
  FUSU_NumPed := FUSU_NumPedOLD;
  FUSU_SitMov := FUSU_SitMovOLD;
  FUSU_DatPrv := FUSU_DatPrvOLD;
  FUSU_CodCli := FUSU_CodCliOLD;
  FUSU_UsuGer := FUSU_UsuGerOLD;
  FUSU_NumCom := FUSU_NumComOLD;

  inherited;
end;

end.
