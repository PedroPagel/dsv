unit o050dic;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T050DIC = class(TTabelaUsuario)
  private
    FUSU_DesCon: string;
    FUSU_LarCon: Double;
    FUSU_ComCon: Double;
    FUSU_AltCon: Double;
    FUSU_CapCar: Double;
    FUSU_LimCon: Double;
    FUSU_SitCon: Char;
    FUSU_MetCub: Double;
    FUSU_UsuGer: Integer;
    FUSU_DatGer: TDate;
    FUSU_UsuAlt: Integer;
    FUSU_DatAlt: TDate;
    FUSU_LimMin: Double;
    FUSU_NomCon: string;

    FUSU_DesConOLD: string;
    FUSU_LarConOLD: Double;
    FUSU_ComConOLD: Double;
    FUSU_AltConOLD: Double;
    FUSU_CapCarOLD: Double;
    FUSU_LimConOLD: Double;
    FUSU_SitConOLD: Char;
    FUSU_MetCubOLD: Double;
    FUSU_UsuGerOLD: Integer;
    FUSU_DatGerOLD: TDate;
    FUSU_UsuAltOLD: Integer;
    FUSU_DatAltOLD: TDate;
    FUSU_LimMinOLD: Double;
    FUSU_NomConOLD: string;

    function GetUSU_DesCon: string;
    procedure SetUSU_DesCon(const pUSU_DesCon: string);
    function GetUSU_LarCon: Double;
    procedure SetUSU_LarCon(const pUSU_LarCon: Double);
    function GetUSU_ComCon: Double;
    procedure SetUSU_ComCon(const pUSU_ComCon: Double);
    function GetUSU_AltCon: Double;
    procedure SetUSU_AltCon(const pUSU_AltCon: Double);
    function GetUSU_CapCar: Double;
    procedure SetUSU_CapCar(const pUSU_CapCar: Double);
    function GetUSU_LimCon: Double;
    procedure SetUSU_LimCon(const pUSU_LimCon: Double);
    function GetUSU_SitCon: Char;
    procedure SetUSU_SitCon(const pUSU_SitCon: Char);
    function GetUSU_MetCub: Double;
    procedure SetUSU_MetCub(const pUSU_MetCub: Double);
    function GetUSU_UsuGer: Integer;
    procedure SetUSU_UsuGer(const pUSU_UsuGer: Integer);
    function GetUSU_DatGer: TDate;
    procedure SetUSU_DatGer(const pUSU_DatGer: TDate);
    function GetUSU_UsuAlt: Integer;
    procedure SetUSU_UsuAlt(const pUSU_UsuAlt: Integer);
    function GetUSU_DatAlt: TDate;
    procedure SetUSU_DatAlt(const pUSU_DatAlt: TDate);
    function GetUSU_LimMin: Double;
    procedure SetUSU_LimMin(const pUSU_LimMin: Double);
    function GetUSU_NomCon: string;
    procedure SetUSU_NomCon(const pUSU_NomCon: string);

    function GetUSU_DesConOld: string;
    procedure SetUSU_DesConOld(const pUSU_DesCon: string);
    function GetUSU_LarConOld: Double;
    procedure SetUSU_LarConOld(const pUSU_LarCon: Double);
    function GetUSU_ComConOld: Double;
    procedure SetUSU_ComConOld(const pUSU_ComCon: Double);
    function GetUSU_AltConOld: Double;
    procedure SetUSU_AltConOld(const pUSU_AltCon: Double);
    function GetUSU_CapCarOld: Double;
    procedure SetUSU_CapCarOld(const pUSU_CapCar: Double);
    function GetUSU_LimConOld: Double;
    procedure SetUSU_LimConOld(const pUSU_LimCon: Double);
    function GetUSU_SitConOld: Char;
    procedure SetUSU_SitConOld(const pUSU_SitCon: Char);
    function GetUSU_MetCubOld: Double;
    procedure SetUSU_MetCubOld(const pUSU_MetCub: Double);
    function GetUSU_UsuGerOld: Integer;
    procedure SetUSU_UsuGerOld(const pUSU_UsuGer: Integer);
    function GetUSU_DatGerOld: TDate;
    procedure SetUSU_DatGerOld(const pUSU_DatGer: TDate);
    function GetUSU_UsuAltOld: Integer;
    procedure SetUSU_UsuAltOld(const pUSU_UsuAlt: Integer);
    function GetUSU_DatAltOld: TDate;
    procedure SetUSU_DatAltOld(const pUSU_DatAlt: TDate);
    function GetUSU_LimMinOld: Double;
    procedure SetUSU_LimMinOld(const pUSU_LimMin: Double);
    function GetUSU_NomConOld: string;
    procedure SetUSU_NomConOld(const pUSU_NomCon: string);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_DesCon: string read GetUSU_DesCon write SetUSU_DesCon;
    property USU_LarCon: Double read GetUSU_LarCon write SetUSU_LarCon;
    property USU_ComCon: Double read GetUSU_ComCon write SetUSU_ComCon;
    property USU_AltCon: Double read GetUSU_AltCon write SetUSU_AltCon;
    property USU_CapCar: Double read GetUSU_CapCar write SetUSU_CapCar;
    property USU_LimCon: Double read GetUSU_LimCon write SetUSU_LimCon;
    property USU_SitCon: Char read GetUSU_SitCon write SetUSU_SitCon;
    property USU_MetCub: Double read GetUSU_MetCub write SetUSU_MetCub;
    property USU_UsuGer: Integer read GetUSU_UsuGer write SetUSU_UsuGer;
    property USU_DatGer: TDate read GetUSU_DatGer write SetUSU_DatGer;
    property USU_UsuAlt: Integer read GetUSU_UsuAlt write SetUSU_UsuAlt;
    property USU_DatAlt: TDate read GetUSU_DatAlt write SetUSU_DatAlt;
    property USU_LimMin: Double read GetUSU_LimMin write SetUSU_LimMin;
    property USU_NomCon: string read GetUSU_NomCon write SetUSU_NomCon;

    property OLD_USU_DesCon: string read GetUSU_DesConOLD write SetUSU_DesConOLD;
    property OLD_USU_LarCon: Double read GetUSU_LarConOLD write SetUSU_LarConOLD;
    property OLD_USU_ComCon: Double read GetUSU_ComConOLD write SetUSU_ComConOLD;
    property OLD_USU_AltCon: Double read GetUSU_AltConOLD write SetUSU_AltConOLD;
    property OLD_USU_CapCar: Double read GetUSU_CapCarOLD write SetUSU_CapCarOLD;
    property OLD_USU_LimCon: Double read GetUSU_LimConOLD write SetUSU_LimConOLD;
    property OLD_USU_SitCon: Char read GetUSU_SitConOLD write SetUSU_SitConOLD;
    property OLD_USU_MetCub: Double read GetUSU_MetCubOLD write SetUSU_MetCubOLD;
    property OLD_USU_UsuGer: Integer read GetUSU_UsuGerOLD write SetUSU_UsuGerOLD;
    property OLD_USU_DatGer: TDate read GetUSU_DatGerOLD write SetUSU_DatGerOLD;
    property OLD_USU_UsuAlt: Integer read GetUSU_UsuAltOLD write SetUSU_UsuAltOLD;
    property OLD_USU_DatAlt: TDate read GetUSU_DatAltOLD write SetUSU_DatAltOLD;
    property OLD_USU_LimMin: Double read GetUSU_LimMinOLD write SetUSU_LimMinOLD;
    property OLD_USU_NomCon: string read GetUSU_NomConOLD write SetUSU_NomConOLD;
  end;

implementation

{ T050DIC }

constructor T050DIC.Create();
begin
  AddPrimaryKeys('USU_Id');

  inherited Create('USU_T050DIC');
end;

destructor T050DIC.Destroy();
begin
  inherited;
end;

function T050DIC.GetUSU_DesCon: string;
begin
  Result := FUSU_DesCon;
end;

procedure T050DIC.SetUSU_DesCon(const pUSU_DesCon: string);
begin
  FUSU_DesCon := pUSU_DesCon;

  CheckField('USU_DesCon');
end;

function T050DIC.GetUSU_LarCon: Double;
begin
  Result := FUSU_LarCon;
end;

procedure T050DIC.SetUSU_LarCon(const pUSU_LarCon: Double);
begin
  FUSU_LarCon := pUSU_LarCon;

  CheckField('USU_LarCon');
end;

function T050DIC.GetUSU_ComCon: Double;
begin
  Result := FUSU_ComCon;
end;

procedure T050DIC.SetUSU_ComCon(const pUSU_ComCon: Double);
begin
  FUSU_ComCon := pUSU_ComCon;

  CheckField('USU_ComCon');
end;

function T050DIC.GetUSU_AltCon: Double;
begin
  Result := FUSU_AltCon;
end;

procedure T050DIC.SetUSU_AltCon(const pUSU_AltCon: Double);
begin
  FUSU_AltCon := pUSU_AltCon;

  CheckField('USU_AltCon');
end;

function T050DIC.GetUSU_CapCar: Double;
begin
  Result := FUSU_CapCar;
end;

procedure T050DIC.SetUSU_CapCar(const pUSU_CapCar: Double);
begin
  FUSU_CapCar := pUSU_CapCar;

  CheckField('USU_CapCar');
end;

function T050DIC.GetUSU_LimCon: Double;
begin
  Result := FUSU_LimCon;
end;

procedure T050DIC.SetUSU_LimCon(const pUSU_LimCon: Double);
begin
  FUSU_LimCon := pUSU_LimCon;

  CheckField('USU_LimCon');
end;

function T050DIC.GetUSU_SitCon: Char;
begin
  Result := FUSU_SitCon;
end;

procedure T050DIC.SetUSU_SitCon(const pUSU_SitCon: Char);
begin
  FUSU_SitCon := pUSU_SitCon;

  CheckField('USU_SitCon');
end;

function T050DIC.GetUSU_MetCub: Double;
begin
  Result := FUSU_MetCub;
end;

procedure T050DIC.SetUSU_MetCub(const pUSU_MetCub: Double);
begin
  FUSU_MetCub := pUSU_MetCub;

  CheckField('USU_MetCub');
end;

function T050DIC.GetUSU_UsuGer: Integer;
begin
  Result := FUSU_UsuGer;
end;

procedure T050DIC.SetUSU_UsuGer(const pUSU_UsuGer: Integer);
begin
  FUSU_UsuGer := pUSU_UsuGer;

  CheckField('USU_UsuGer');
end;

function T050DIC.GetUSU_DatGer: TDate;
begin
  Result := FUSU_DatGer;
end;

procedure T050DIC.SetUSU_DatGer(const pUSU_DatGer: TDate);
begin
  FUSU_DatGer := pUSU_DatGer;

  CheckField('USU_DatGer');
end;

function T050DIC.GetUSU_UsuAlt: Integer;
begin
  Result := FUSU_UsuAlt;
end;

procedure T050DIC.SetUSU_UsuAlt(const pUSU_UsuAlt: Integer);
begin
  FUSU_UsuAlt := pUSU_UsuAlt;

  CheckField('USU_UsuAlt');
end;

function T050DIC.GetUSU_DatAlt: TDate;
begin
  Result := FUSU_DatAlt;
end;

procedure T050DIC.SetUSU_DatAlt(const pUSU_DatAlt: TDate);
begin
  FUSU_DatAlt := pUSU_DatAlt;

  CheckField('USU_DatAlt');
end;

function T050DIC.GetUSU_LimMin: Double;
begin
  Result := FUSU_LimMin;
end;

procedure T050DIC.SetUSU_LimMin(const pUSU_LimMin: Double);
begin
  FUSU_LimMin := pUSU_LimMin;

  CheckField('USU_LimMin');
end;

function T050DIC.GetUSU_NomCon: string;
begin
  Result := FUSU_NomCon;
end;

procedure T050DIC.SetUSU_NomCon(const pUSU_NomCon: string);
begin
  FUSU_NomCon := pUSU_NomCon;

  CheckField('USU_NomCon');
end;

function T050DIC.GetUSU_DesConOLD: string;
begin
  Result := FUSU_DesConOLD;
end;

procedure T050DIC.SetUSU_DesConOLD(const pUSU_DesCon: string);
begin
  FUSU_DesConOLD := pUSU_DesCon;
end;

function T050DIC.GetUSU_LarConOLD: Double;
begin
  Result := FUSU_LarConOLD;
end;

procedure T050DIC.SetUSU_LarConOLD(const pUSU_LarCon: Double);
begin
  FUSU_LarConOLD := pUSU_LarCon;
end;

function T050DIC.GetUSU_ComConOLD: Double;
begin
  Result := FUSU_ComConOLD;
end;

procedure T050DIC.SetUSU_ComConOLD(const pUSU_ComCon: Double);
begin
  FUSU_ComConOLD := pUSU_ComCon;
end;

function T050DIC.GetUSU_AltConOLD: Double;
begin
  Result := FUSU_AltConOLD;
end;

procedure T050DIC.SetUSU_AltConOLD(const pUSU_AltCon: Double);
begin
  FUSU_AltConOLD := pUSU_AltCon;
end;

function T050DIC.GetUSU_CapCarOLD: Double;
begin
  Result := FUSU_CapCarOLD;
end;

procedure T050DIC.SetUSU_CapCarOLD(const pUSU_CapCar: Double);
begin
  FUSU_CapCarOLD := pUSU_CapCar;
end;

function T050DIC.GetUSU_LimConOLD: Double;
begin
  Result := FUSU_LimConOLD;
end;

procedure T050DIC.SetUSU_LimConOLD(const pUSU_LimCon: Double);
begin
  FUSU_LimConOLD := pUSU_LimCon;
end;

function T050DIC.GetUSU_SitConOLD: Char;
begin
  Result := FUSU_SitConOLD;
end;

procedure T050DIC.SetUSU_SitConOLD(const pUSU_SitCon: Char);
begin
  FUSU_SitConOLD := pUSU_SitCon;
end;

function T050DIC.GetUSU_MetCubOLD: Double;
begin
  Result := FUSU_MetCubOLD;
end;

procedure T050DIC.SetUSU_MetCubOLD(const pUSU_MetCub: Double);
begin
  FUSU_MetCubOLD := pUSU_MetCub;
end;

function T050DIC.GetUSU_UsuGerOLD: Integer;
begin
  Result := FUSU_UsuGerOLD;
end;

procedure T050DIC.SetUSU_UsuGerOLD(const pUSU_UsuGer: Integer);
begin
  FUSU_UsuGerOLD := pUSU_UsuGer;
end;

function T050DIC.GetUSU_DatGerOLD: TDate;
begin
  Result := FUSU_DatGerOLD;
end;

procedure T050DIC.SetUSU_DatGerOLD(const pUSU_DatGer: TDate);
begin
  FUSU_DatGerOLD := pUSU_DatGer;
end;

function T050DIC.GetUSU_UsuAltOLD: Integer;
begin
  Result := FUSU_UsuAltOLD;
end;

procedure T050DIC.SetUSU_UsuAltOLD(const pUSU_UsuAlt: Integer);
begin
  FUSU_UsuAltOLD := pUSU_UsuAlt;
end;

function T050DIC.GetUSU_DatAltOLD: TDate;
begin
  Result := FUSU_DatAltOLD;
end;

procedure T050DIC.SetUSU_DatAltOLD(const pUSU_DatAlt: TDate);
begin
  FUSU_DatAltOLD := pUSU_DatAlt;
end;

function T050DIC.GetUSU_LimMinOLD: Double;
begin
  Result := FUSU_LimMinOLD;
end;

procedure T050DIC.SetUSU_LimMinOLD(const pUSU_LimMin: Double);
begin
  FUSU_LimMinOLD := pUSU_LimMin;
end;

function T050DIC.GetUSU_NomConOLD: string;
begin
  Result := FUSU_NomConOLD;
end;

procedure T050DIC.SetUSU_NomConOLD(const pUSU_NomCon: string);
begin
  FUSU_NomConOLD := pUSU_NomCon;
end;

procedure T050DIC.Registros_OLD();
begin
  FUSU_DesConOLD := FUSU_DesCon;
  FUSU_LarConOLD := FUSU_LarCon;
  FUSU_ComConOLD := FUSU_ComCon;
  FUSU_AltConOLD := FUSU_AltCon;
  FUSU_CapCarOLD := FUSU_CapCar;
  FUSU_LimConOLD := FUSU_LimCon;
  FUSU_SitConOLD := FUSU_SitCon;
  FUSU_MetCubOLD := FUSU_MetCub;
  FUSU_UsuGerOLD := FUSU_UsuGer;
  FUSU_DatGerOLD := FUSU_DatGer;
  FUSU_UsuAltOLD := FUSU_UsuAlt;
  FUSU_DatAltOLD := FUSU_DatAlt;
  FUSU_LimMinOLD := FUSU_LimMin;
  FUSU_NomConOLD := FUSU_NomCon;

  inherited;
end;

procedure T050DIC.RetornarValores();
begin
  FUSU_DesCon := FUSU_DesConOLD;
  FUSU_LarCon := FUSU_LarConOLD;
  FUSU_ComCon := FUSU_ComConOLD;
  FUSU_AltCon := FUSU_AltConOLD;
  FUSU_CapCar := FUSU_CapCarOLD;
  FUSU_LimCon := FUSU_LimConOLD;
  FUSU_SitCon := FUSU_SitConOLD;
  FUSU_MetCub := FUSU_MetCubOLD;
  FUSU_UsuGer := FUSU_UsuGerOLD;
  FUSU_DatGer := FUSU_DatGerOLD;
  FUSU_UsuAlt := FUSU_UsuAltOLD;
  FUSU_DatAlt := FUSU_DatAltOLD;
  FUSU_LimMin := FUSU_LimMinOLD;
  FUSU_NomCon := FUSU_NomConOLD;

  inherited;
end;

end.
