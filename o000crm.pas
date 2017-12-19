unit o000crm;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T000CRM = class(TTabelaUsuario)
  private
    FUSU_CodEmp: Integer;
    FUSU_CodFil: Integer;
    FUSU_UsuCrm: string;
    FUSU_UsuGer: Integer;
    FUSU_DatGer: TDate;
    FUSU_UsuAlt: Integer;
    FUSU_DatAlt: TDate;
    FUSU_ObsCrm: string;
    FUSU_SenCrm: string;

    FUSU_CodEmpOLD: Integer;
    FUSU_CodFilOLD: Integer;
    FUSU_UsuCrmOLD: string;
    FUSU_UsuGerOLD: Integer;
    FUSU_DatGerOLD: TDate;
    FUSU_UsuAltOLD: Integer;
    FUSU_DatAltOLD: TDate;
    FUSU_ObsCrmOLD: string;
    FUSU_SenCrmOLD: string;

    function GetUSU_CodEmp: Integer;
    procedure SetUSU_CodEmp(const pUSU_CodEmp: Integer);
    function GetUSU_CodFil: Integer;
    procedure SetUSU_CodFil(const pUSU_CodFil: Integer);
    function GetUSU_UsuCrm: string;
    procedure SetUSU_UsuCrm(const pUSU_UsuCrm: string);
    function GetUSU_UsuGer: Integer;
    procedure SetUSU_UsuGer(const pUSU_UsuGer: Integer);
    function GetUSU_DatGer: TDate;
    procedure SetUSU_DatGer(const pUSU_DatGer: TDate);
    function GetUSU_UsuAlt: Integer;
    procedure SetUSU_UsuAlt(const pUSU_UsuAlt: Integer);
    function GetUSU_DatAlt: TDate;
    procedure SetUSU_DatAlt(const pUSU_DatAlt: TDate);
    function GetUSU_ObsCrm: string;
    procedure SetUSU_ObsCrm(const pUSU_ObsCrm: string);
    function GetUSU_SenCrm: string;
    procedure SetUSU_SenCrm(const pUSU_SenCrm: string);

    function GetUSU_CodEmpOld: Integer;
    procedure SetUSU_CodEmpOld(const pUSU_CodEmp: Integer);
    function GetUSU_CodFilOld: Integer;
    procedure SetUSU_CodFilOld(const pUSU_CodFil: Integer);
    function GetUSU_UsuCrmOld: string;
    procedure SetUSU_UsuCrmOld(const pUSU_UsuCrm: string);
    function GetUSU_UsuGerOld: Integer;
    procedure SetUSU_UsuGerOld(const pUSU_UsuGer: Integer);
    function GetUSU_DatGerOld: TDate;
    procedure SetUSU_DatGerOld(const pUSU_DatGer: TDate);
    function GetUSU_UsuAltOld: Integer;
    procedure SetUSU_UsuAltOld(const pUSU_UsuAlt: Integer);
    function GetUSU_DatAltOld: TDate;
    procedure SetUSU_DatAltOld(const pUSU_DatAlt: TDate);
    function GetUSU_ObsCrmOld: string;
    procedure SetUSU_ObsCrmOld(const pUSU_ObsCrm: string);
    function GetUSU_SenCrmOld: string;
    procedure SetUSU_SenCrmOld(const pUSU_SenCrm: string);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_CodEmp: Integer read GetUSU_CodEmp write SetUSU_CodEmp;
    property USU_CodFil: Integer read GetUSU_CodFil write SetUSU_CodFil;
    property USU_UsuCrm: string read GetUSU_UsuCrm write SetUSU_UsuCrm;
    property USU_UsuGer: Integer read GetUSU_UsuGer write SetUSU_UsuGer;
    property USU_DatGer: TDate read GetUSU_DatGer write SetUSU_DatGer;
    property USU_UsuAlt: Integer read GetUSU_UsuAlt write SetUSU_UsuAlt;
    property USU_DatAlt: TDate read GetUSU_DatAlt write SetUSU_DatAlt;
    property USU_ObsCrm: string read GetUSU_ObsCrm write SetUSU_ObsCrm;
    property USU_SenCrm: string read GetUSU_SenCrm write SetUSU_SenCrm;

    property OLD_USU_CodEmp: Integer read GetUSU_CodEmpOLD write SetUSU_CodEmpOLD;
    property OLD_USU_CodFil: Integer read GetUSU_CodFilOLD write SetUSU_CodFilOLD;
    property OLD_USU_UsuCrm: string read GetUSU_UsuCrmOLD write SetUSU_UsuCrmOLD;
    property OLD_USU_UsuGer: Integer read GetUSU_UsuGerOLD write SetUSU_UsuGerOLD;
    property OLD_USU_DatGer: TDate read GetUSU_DatGerOLD write SetUSU_DatGerOLD;
    property OLD_USU_UsuAlt: Integer read GetUSU_UsuAltOLD write SetUSU_UsuAltOLD;
    property OLD_USU_DatAlt: TDate read GetUSU_DatAltOLD write SetUSU_DatAltOLD;
    property OLD_USU_ObsCrm: string read GetUSU_ObsCrmOLD write SetUSU_ObsCrmOLD;
    property OLD_USU_SenCrm: string read GetUSU_SenCrmOLD write SetUSU_SenCrmOLD;
  end;

implementation

{ T000CRM }

constructor T000CRM.Create();
begin
  AddForeignKeys(['USU_CodEmp','USU_CodFil'], ['CodEmp','CodFil']);
  AddPrimaryKeys('USU_Id');

  inherited Create('USU_T000CRM');
end;

destructor T000CRM.Destroy();
begin
  inherited;
end;

function T000CRM.GetUSU_CodEmp: Integer;
begin
  Result := FUSU_CodEmp;
end;

procedure T000CRM.SetUSU_CodEmp(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmp := pUSU_CodEmp;

  CheckField('USU_CodEmp');
end;

function T000CRM.GetUSU_CodFil: Integer;
begin
  Result := FUSU_CodFil;
end;

procedure T000CRM.SetUSU_CodFil(const pUSU_CodFil: Integer);
begin
  FUSU_CodFil := pUSU_CodFil;

  CheckField('USU_CodFil');
end;

function T000CRM.GetUSU_UsuCrm: string;
begin
  Result := FUSU_UsuCrm;
end;

procedure T000CRM.SetUSU_UsuCrm(const pUSU_UsuCrm: string);
begin
  FUSU_UsuCrm := pUSU_UsuCrm;

  CheckField('USU_UsuCrm');
end;

function T000CRM.GetUSU_UsuGer: Integer;
begin
  Result := FUSU_UsuGer;
end;

procedure T000CRM.SetUSU_UsuGer(const pUSU_UsuGer: Integer);
begin
  FUSU_UsuGer := pUSU_UsuGer;

  CheckField('USU_UsuGer');
end;

function T000CRM.GetUSU_DatGer: TDate;
begin
  Result := FUSU_DatGer;
end;

procedure T000CRM.SetUSU_DatGer(const pUSU_DatGer: TDate);
begin
  FUSU_DatGer := pUSU_DatGer;

  CheckField('USU_DatGer');
end;

function T000CRM.GetUSU_UsuAlt: Integer;
begin
  Result := FUSU_UsuAlt;
end;

procedure T000CRM.SetUSU_UsuAlt(const pUSU_UsuAlt: Integer);
begin
  FUSU_UsuAlt := pUSU_UsuAlt;

  CheckField('USU_UsuAlt');
end;

function T000CRM.GetUSU_DatAlt: TDate;
begin
  Result := FUSU_DatAlt;
end;

procedure T000CRM.SetUSU_DatAlt(const pUSU_DatAlt: TDate);
begin
  FUSU_DatAlt := pUSU_DatAlt;

  CheckField('USU_DatAlt');
end;

function T000CRM.GetUSU_ObsCrm: string;
begin
  Result := FUSU_ObsCrm;
end;

procedure T000CRM.SetUSU_ObsCrm(const pUSU_ObsCrm: string);
begin
  FUSU_ObsCrm := pUSU_ObsCrm;

  CheckField('USU_ObsCrm');
end;

function T000CRM.GetUSU_SenCrm: string;
begin
  Result := FUSU_SenCrm;
end;

procedure T000CRM.SetUSU_SenCrm(const pUSU_SenCrm: string);
begin
  FUSU_SenCrm := pUSU_SenCrm;

  CheckField('USU_SenCrm');
end;

function T000CRM.GetUSU_CodEmpOLD: Integer;
begin
  Result := FUSU_CodEmpOLD;
end;

procedure T000CRM.SetUSU_CodEmpOLD(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmpOLD := pUSU_CodEmp;
end;

function T000CRM.GetUSU_CodFilOLD: Integer;
begin
  Result := FUSU_CodFilOLD;
end;

procedure T000CRM.SetUSU_CodFilOLD(const pUSU_CodFil: Integer);
begin
  FUSU_CodFilOLD := pUSU_CodFil;
end;

function T000CRM.GetUSU_UsuCrmOLD: string;
begin
  Result := FUSU_UsuCrmOLD;
end;

procedure T000CRM.SetUSU_UsuCrmOLD(const pUSU_UsuCrm: string);
begin
  FUSU_UsuCrmOLD := pUSU_UsuCrm;
end;

function T000CRM.GetUSU_UsuGerOLD: Integer;
begin
  Result := FUSU_UsuGerOLD;
end;

procedure T000CRM.SetUSU_UsuGerOLD(const pUSU_UsuGer: Integer);
begin
  FUSU_UsuGerOLD := pUSU_UsuGer;
end;

function T000CRM.GetUSU_DatGerOLD: TDate;
begin
  Result := FUSU_DatGerOLD;
end;

procedure T000CRM.SetUSU_DatGerOLD(const pUSU_DatGer: TDate);
begin
  FUSU_DatGerOLD := pUSU_DatGer;
end;

function T000CRM.GetUSU_UsuAltOLD: Integer;
begin
  Result := FUSU_UsuAltOLD;
end;

procedure T000CRM.SetUSU_UsuAltOLD(const pUSU_UsuAlt: Integer);
begin
  FUSU_UsuAltOLD := pUSU_UsuAlt;
end;

function T000CRM.GetUSU_DatAltOLD: TDate;
begin
  Result := FUSU_DatAltOLD;
end;

procedure T000CRM.SetUSU_DatAltOLD(const pUSU_DatAlt: TDate);
begin
  FUSU_DatAltOLD := pUSU_DatAlt;
end;

function T000CRM.GetUSU_ObsCrmOLD: string;
begin
  Result := FUSU_ObsCrmOLD;
end;

procedure T000CRM.SetUSU_ObsCrmOLD(const pUSU_ObsCrm: string);
begin
  FUSU_ObsCrmOLD := pUSU_ObsCrm;
end;

function T000CRM.GetUSU_SenCrmOLD: string;
begin
  Result := FUSU_SenCrmOLD;
end;

procedure T000CRM.SetUSU_SenCrmOLD(const pUSU_SenCrm: string);
begin
  FUSU_SenCrmOLD := pUSU_SenCrm;
end;

procedure T000CRM.Registros_OLD();
begin
  FUSU_CodEmpOLD := FUSU_CodEmp;
  FUSU_CodFilOLD := FUSU_CodFil;
  FUSU_UsuCrmOLD := FUSU_UsuCrm;
  FUSU_UsuGerOLD := FUSU_UsuGer;
  FUSU_DatGerOLD := FUSU_DatGer;
  FUSU_UsuAltOLD := FUSU_UsuAlt;
  FUSU_DatAltOLD := FUSU_DatAlt;
  FUSU_ObsCrmOLD := FUSU_ObsCrm;
  FUSU_SenCrmOLD := FUSU_SenCrm;

  inherited;
end;

procedure T000CRM.RetornarValores();
begin
  FUSU_CodEmp := FUSU_CodEmpOLD;
  FUSU_CodFil := FUSU_CodFilOLD;
  FUSU_UsuCrm := FUSU_UsuCrmOLD;
  FUSU_UsuGer := FUSU_UsuGerOLD;
  FUSU_DatGer := FUSU_DatGerOLD;
  FUSU_UsuAlt := FUSU_UsuAltOLD;
  FUSU_DatAlt := FUSU_DatAltOLD;
  FUSU_ObsCrm := FUSU_ObsCrmOLD;
  FUSU_SenCrm := FUSU_SenCrmOLD;

  inherited;
end;

end.
