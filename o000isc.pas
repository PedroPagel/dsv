unit o000isc;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T000ISC = class(TTabelaUsuario)
  private
    FUSU_CodEmp: Integer;
    FUSU_UsuCrm: string;
    FUSU_SenCrm: string;
    FUSU_UrlCrm: string;
    FUSU_UsuGer: Integer;
    FUSU_DatGer: TDate;
    FUSU_UsuAlt: Integer;
    FUSU_DatAlt: TDate;

    FUSU_CodEmpOLD: Integer;
    FUSU_UsuCrmOLD: string;
    FUSU_SenCrmOLD: string;
    FUSU_UrlCrmOLD: string;
    FUSU_UsuGerOLD: Integer;
    FUSU_DatGerOLD: TDate;
    FUSU_UsuAltOLD: Integer;
    FUSU_DatAltOLD: TDate;

    function GetUSU_CodEmp: Integer;
    procedure SetUSU_CodEmp(const pUSU_CodEmp: Integer);
    function GetUSU_UsuCrm: string;
    procedure SetUSU_UsuCrm(const pUSU_UsuCrm: string);
    function GetUSU_SenCrm: string;
    procedure SetUSU_SenCrm(const pUSU_SenCrm: string);
    function GetUSU_UrlCrm: string;
    procedure SetUSU_UrlCrm(const pUSU_UrlCrm: string);
    function GetUSU_UsuGer: Integer;
    procedure SetUSU_UsuGer(const pUSU_UsuGer: Integer);
    function GetUSU_DatGer: TDate;
    procedure SetUSU_DatGer(const pUSU_DatGer: TDate);
    function GetUSU_UsuAlt: Integer;
    procedure SetUSU_UsuAlt(const pUSU_UsuAlt: Integer);
    function GetUSU_DatAlt: TDate;
    procedure SetUSU_DatAlt(const pUSU_DatAlt: TDate);

    function GetUSU_CodEmpOld: Integer;
    procedure SetUSU_CodEmpOld(const pUSU_CodEmp: Integer);
    function GetUSU_UsuCrmOld: string;
    procedure SetUSU_UsuCrmOld(const pUSU_UsuCrm: string);
    function GetUSU_SenCrmOld: string;
    procedure SetUSU_SenCrmOld(const pUSU_SenCrm: string);
    function GetUSU_UrlCrmOld: string;
    procedure SetUSU_UrlCrmOld(const pUSU_UrlCrm: string);
    function GetUSU_UsuGerOld: Integer;
    procedure SetUSU_UsuGerOld(const pUSU_UsuGer: Integer);
    function GetUSU_DatGerOld: TDate;
    procedure SetUSU_DatGerOld(const pUSU_DatGer: TDate);
    function GetUSU_UsuAltOld: Integer;
    procedure SetUSU_UsuAltOld(const pUSU_UsuAlt: Integer);
    function GetUSU_DatAltOld: TDate;
    procedure SetUSU_DatAltOld(const pUSU_DatAlt: TDate);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_CodEmp: Integer read GetUSU_CodEmp write SetUSU_CodEmp;
    property USU_UsuCrm: string read GetUSU_UsuCrm write SetUSU_UsuCrm;
    property USU_SenCrm: string read GetUSU_SenCrm write SetUSU_SenCrm;
    property USU_UrlCrm: string read GetUSU_UrlCrm write SetUSU_UrlCrm;
    property USU_UsuGer: Integer read GetUSU_UsuGer write SetUSU_UsuGer;
    property USU_DatGer: TDate read GetUSU_DatGer write SetUSU_DatGer;
    property USU_UsuAlt: Integer read GetUSU_UsuAlt write SetUSU_UsuAlt;
    property USU_DatAlt: TDate read GetUSU_DatAlt write SetUSU_DatAlt;

    property OLD_USU_CodEmp: Integer read GetUSU_CodEmpOLD write SetUSU_CodEmpOLD;
    property OLD_USU_UsuCrm: string read GetUSU_UsuCrmOLD write SetUSU_UsuCrmOLD;
    property OLD_USU_SenCrm: string read GetUSU_SenCrmOLD write SetUSU_SenCrmOLD;
    property OLD_USU_UrlCrm: string read GetUSU_UrlCrmOLD write SetUSU_UrlCrmOLD;
    property OLD_USU_UsuGer: Integer read GetUSU_UsuGerOLD write SetUSU_UsuGerOLD;
    property OLD_USU_DatGer: TDate read GetUSU_DatGerOLD write SetUSU_DatGerOLD;
    property OLD_USU_UsuAlt: Integer read GetUSU_UsuAltOLD write SetUSU_UsuAltOLD;
    property OLD_USU_DatAlt: TDate read GetUSU_DatAltOLD write SetUSU_DatAltOLD;
  end;

implementation

{ T000ISC }

constructor T000ISC.Create();
begin
  AddForeignKeys(['USU_CodEmp'], ['CodEmp']);
  AddPrimaryKeys('USU_Id');

  inherited Create('USU_T000ISC');
end;

destructor T000ISC.Destroy();
begin
  inherited;
end;

function T000ISC.GetUSU_CodEmp: Integer;
begin
  Result := FUSU_CodEmp;
end;

procedure T000ISC.SetUSU_CodEmp(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmp := pUSU_CodEmp;

  CheckField('USU_CodEmp');
end;

function T000ISC.GetUSU_UsuCrm: string;
begin
  Result := FUSU_UsuCrm;
end;

procedure T000ISC.SetUSU_UsuCrm(const pUSU_UsuCrm: string);
begin
  FUSU_UsuCrm := pUSU_UsuCrm;

  CheckField('USU_UsuCrm');
end;

function T000ISC.GetUSU_SenCrm: string;
begin
  Result := FUSU_SenCrm;
end;

procedure T000ISC.SetUSU_SenCrm(const pUSU_SenCrm: string);
begin
  FUSU_SenCrm := pUSU_SenCrm;

  CheckField('USU_SenCrm');
end;

function T000ISC.GetUSU_UrlCrm: string;
begin
  Result := FUSU_UrlCrm;
end;

procedure T000ISC.SetUSU_UrlCrm(const pUSU_UrlCrm: string);
begin
  FUSU_UrlCrm := pUSU_UrlCrm;

  CheckField('USU_UrlCrm');
end;

function T000ISC.GetUSU_UsuGer: Integer;
begin
  Result := FUSU_UsuGer;
end;

procedure T000ISC.SetUSU_UsuGer(const pUSU_UsuGer: Integer);
begin
  FUSU_UsuGer := pUSU_UsuGer;

  CheckField('USU_UsuGer');
end;

function T000ISC.GetUSU_DatGer: TDate;
begin
  Result := FUSU_DatGer;
end;

procedure T000ISC.SetUSU_DatGer(const pUSU_DatGer: TDate);
begin
  FUSU_DatGer := pUSU_DatGer;

  CheckField('USU_DatGer');
end;

function T000ISC.GetUSU_UsuAlt: Integer;
begin
  Result := FUSU_UsuAlt;
end;

procedure T000ISC.SetUSU_UsuAlt(const pUSU_UsuAlt: Integer);
begin
  FUSU_UsuAlt := pUSU_UsuAlt;

  CheckField('USU_UsuAlt');
end;

function T000ISC.GetUSU_DatAlt: TDate;
begin
  Result := FUSU_DatAlt;
end;

procedure T000ISC.SetUSU_DatAlt(const pUSU_DatAlt: TDate);
begin
  FUSU_DatAlt := pUSU_DatAlt;

  CheckField('USU_DatAlt');
end;

function T000ISC.GetUSU_CodEmpOLD: Integer;
begin
  Result := FUSU_CodEmpOLD;
end;

procedure T000ISC.SetUSU_CodEmpOLD(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmpOLD := pUSU_CodEmp;
end;

function T000ISC.GetUSU_UsuCrmOLD: string;
begin
  Result := FUSU_UsuCrmOLD;
end;

procedure T000ISC.SetUSU_UsuCrmOLD(const pUSU_UsuCrm: string);
begin
  FUSU_UsuCrmOLD := pUSU_UsuCrm;
end;

function T000ISC.GetUSU_SenCrmOLD: string;
begin
  Result := FUSU_SenCrmOLD;
end;

procedure T000ISC.SetUSU_SenCrmOLD(const pUSU_SenCrm: string);
begin
  FUSU_SenCrmOLD := pUSU_SenCrm;
end;

function T000ISC.GetUSU_UrlCrmOLD: string;
begin
  Result := FUSU_UrlCrmOLD;
end;

procedure T000ISC.SetUSU_UrlCrmOLD(const pUSU_UrlCrm: string);
begin
  FUSU_UrlCrmOLD := pUSU_UrlCrm;
end;

function T000ISC.GetUSU_UsuGerOLD: Integer;
begin
  Result := FUSU_UsuGerOLD;
end;

procedure T000ISC.SetUSU_UsuGerOLD(const pUSU_UsuGer: Integer);
begin
  FUSU_UsuGerOLD := pUSU_UsuGer;
end;

function T000ISC.GetUSU_DatGerOLD: TDate;
begin
  Result := FUSU_DatGerOLD;
end;

procedure T000ISC.SetUSU_DatGerOLD(const pUSU_DatGer: TDate);
begin
  FUSU_DatGerOLD := pUSU_DatGer;
end;

function T000ISC.GetUSU_UsuAltOLD: Integer;
begin
  Result := FUSU_UsuAltOLD;
end;

procedure T000ISC.SetUSU_UsuAltOLD(const pUSU_UsuAlt: Integer);
begin
  FUSU_UsuAltOLD := pUSU_UsuAlt;
end;

function T000ISC.GetUSU_DatAltOLD: TDate;
begin
  Result := FUSU_DatAltOLD;
end;

procedure T000ISC.SetUSU_DatAltOLD(const pUSU_DatAlt: TDate);
begin
  FUSU_DatAltOLD := pUSU_DatAlt;
end;

procedure T000ISC.Registros_OLD();
begin
  FUSU_CodEmpOLD := FUSU_CodEmp;
  FUSU_UsuCrmOLD := FUSU_UsuCrm;
  FUSU_SenCrmOLD := FUSU_SenCrm;
  FUSU_UrlCrmOLD := FUSU_UrlCrm;
  FUSU_UsuGerOLD := FUSU_UsuGer;
  FUSU_DatGerOLD := FUSU_DatGer;
  FUSU_UsuAltOLD := FUSU_UsuAlt;
  FUSU_DatAltOLD := FUSU_DatAlt;

  inherited;
end;

procedure T000ISC.RetornarValores();
begin
  FUSU_CodEmp := FUSU_CodEmpOLD;
  FUSU_UsuCrm := FUSU_UsuCrmOLD;
  FUSU_SenCrm := FUSU_SenCrmOLD;
  FUSU_UrlCrm := FUSU_UrlCrmOLD;
  FUSU_UsuGer := FUSU_UsuGerOLD;
  FUSU_DatGer := FUSU_DatGerOLD;
  FUSU_UsuAlt := FUSU_UsuAltOLD;
  FUSU_DatAlt := FUSU_DatAltOLD;

  inherited;
end;

end.
