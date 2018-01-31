unit o096mto;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T096MTO = class(TTabelaUsuario)
  private
    FUSU_CodEmp: Integer;
    FUSU_CodFil: Integer;
    FUSU_NumTit: string;
    FUSU_CodFor: Integer;
    FUSU_CodTpt: string;
    FUSU_EmpOcp: Integer;
    FUSU_FilOcp: Integer;
    FUSU_NumOcp: Integer;

    FUSU_CodEmpOLD: Integer;
    FUSU_CodFilOLD: Integer;
    FUSU_NumTitOLD: string;
    FUSU_CodForOLD: Integer;
    FUSU_CodTptOLD: string;
    FUSU_EmpOcpOLD: Integer;
    FUSU_FilOcpOLD: Integer;
    FUSU_NumOcpOLD: Integer;

    function GetUSU_CodEmp: Integer;
    procedure SetUSU_CodEmp(const pUSU_CodEmp: Integer);
    function GetUSU_CodFil: Integer;
    procedure SetUSU_CodFil(const pUSU_CodFil: Integer);
    function GetUSU_NumTit: string;
    procedure SetUSU_NumTit(const pUSU_NumTit: string);
    function GetUSU_CodFor: Integer;
    procedure SetUSU_CodFor(const pUSU_CodFor: Integer);
    function GetUSU_CodTpt: string;
    procedure SetUSU_CodTpt(const pUSU_CodTpt: string);
    function GetUSU_EmpOcp: Integer;
    procedure SetUSU_EmpOcp(const pUSU_EmpOcp: Integer);
    function GetUSU_FilOcp: Integer;
    procedure SetUSU_FilOcp(const pUSU_FilOcp: Integer);
    function GetUSU_NumOcp: Integer;
    procedure SetUSU_NumOcp(const pUSU_NumOcp: Integer);

    function GetUSU_CodEmpOld: Integer;
    procedure SetUSU_CodEmpOld(const pUSU_CodEmp: Integer);
    function GetUSU_CodFilOld: Integer;
    procedure SetUSU_CodFilOld(const pUSU_CodFil: Integer);
    function GetUSU_NumTitOld: string;
    procedure SetUSU_NumTitOld(const pUSU_NumTit: string);
    function GetUSU_CodForOld: Integer;
    procedure SetUSU_CodForOld(const pUSU_CodFor: Integer);
    function GetUSU_CodTptOld: string;
    procedure SetUSU_CodTptOld(const pUSU_CodTpt: string);
    function GetUSU_EmpOcpOld: Integer;
    procedure SetUSU_EmpOcpOld(const pUSU_EmpOcp: Integer);
    function GetUSU_FilOcpOld: Integer;
    procedure SetUSU_FilOcpOld(const pUSU_FilOcp: Integer);
    function GetUSU_NumOcpOld: Integer;
    procedure SetUSU_NumOcpOld(const pUSU_NumOcp: Integer);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_CodEmp: Integer read GetUSU_CodEmp write SetUSU_CodEmp;
    property USU_CodFil: Integer read GetUSU_CodFil write SetUSU_CodFil;
    property USU_NumTit: string read GetUSU_NumTit write SetUSU_NumTit;
    property USU_CodFor: Integer read GetUSU_CodFor write SetUSU_CodFor;
    property USU_CodTpt: string read GetUSU_CodTpt write SetUSU_CodTpt;
    property USU_EmpOcp: Integer read GetUSU_EmpOcp write SetUSU_EmpOcp;
    property USU_FilOcp: Integer read GetUSU_FilOcp write SetUSU_FilOcp;
    property USU_NumOcp: Integer read GetUSU_NumOcp write SetUSU_NumOcp;

    property OLD_USU_CodEmp: Integer read GetUSU_CodEmpOLD write SetUSU_CodEmpOLD;
    property OLD_USU_CodFil: Integer read GetUSU_CodFilOLD write SetUSU_CodFilOLD;
    property OLD_USU_NumTit: string read GetUSU_NumTitOLD write SetUSU_NumTitOLD;
    property OLD_USU_CodFor: Integer read GetUSU_CodForOLD write SetUSU_CodForOLD;
    property OLD_USU_CodTpt: string read GetUSU_CodTptOLD write SetUSU_CodTptOLD;
    property OLD_USU_EmpOcp: Integer read GetUSU_EmpOcpOLD write SetUSU_EmpOcpOLD;
    property OLD_USU_FilOcp: Integer read GetUSU_FilOcpOLD write SetUSU_FilOcpOLD;
    property OLD_USU_NumOcp: Integer read GetUSU_NumOcpOLD write SetUSU_NumOcpOLD;
  end;

implementation

{ T096MTO }

constructor T096MTO.Create();
begin
  AddForeignKeys(['USU_EmpOcp','USU_FilOcp','USU_NumOcp'], ['CodEmp','CodFil','NumOcp']);
  AddPrimaryKeys('USU_Id');

  inherited Create('USU_T096MTO');
end;

destructor T096MTO.Destroy();
begin
  inherited;
end;

function T096MTO.GetUSU_CodEmp: Integer;
begin
  Result := FUSU_CodEmp;
end;

procedure T096MTO.SetUSU_CodEmp(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmp := pUSU_CodEmp;

  CheckField('USU_CodEmp');
end;

function T096MTO.GetUSU_CodFil: Integer;
begin
  Result := FUSU_CodFil;
end;

procedure T096MTO.SetUSU_CodFil(const pUSU_CodFil: Integer);
begin
  FUSU_CodFil := pUSU_CodFil;

  CheckField('USU_CodFil');
end;

function T096MTO.GetUSU_NumTit: string;
begin
  Result := FUSU_NumTit;
end;

procedure T096MTO.SetUSU_NumTit(const pUSU_NumTit: string);
begin
  FUSU_NumTit := pUSU_NumTit;

  CheckField('USU_NumTit');
end;

function T096MTO.GetUSU_CodFor: Integer;
begin
  Result := FUSU_CodFor;
end;

procedure T096MTO.SetUSU_CodFor(const pUSU_CodFor: Integer);
begin
  FUSU_CodFor := pUSU_CodFor;

  CheckField('USU_CodFor');
end;

function T096MTO.GetUSU_CodTpt: string;
begin
  Result := FUSU_CodTpt;
end;

procedure T096MTO.SetUSU_CodTpt(const pUSU_CodTpt: string);
begin
  FUSU_CodTpt := pUSU_CodTpt;

  CheckField('USU_CodTpt');
end;

function T096MTO.GetUSU_EmpOcp: Integer;
begin
  Result := FUSU_EmpOcp;
end;

procedure T096MTO.SetUSU_EmpOcp(const pUSU_EmpOcp: Integer);
begin
  FUSU_EmpOcp := pUSU_EmpOcp;

  CheckField('USU_EmpOcp');
end;

function T096MTO.GetUSU_FilOcp: Integer;
begin
  Result := FUSU_FilOcp;
end;

procedure T096MTO.SetUSU_FilOcp(const pUSU_FilOcp: Integer);
begin
  FUSU_FilOcp := pUSU_FilOcp;

  CheckField('USU_FilOcp');
end;

function T096MTO.GetUSU_NumOcp: Integer;
begin
  Result := FUSU_NumOcp;
end;

procedure T096MTO.SetUSU_NumOcp(const pUSU_NumOcp: Integer);
begin
  FUSU_NumOcp := pUSU_NumOcp;

  CheckField('USU_NumOcp');
end;

function T096MTO.GetUSU_CodEmpOLD: Integer;
begin
  Result := FUSU_CodEmpOLD;
end;

procedure T096MTO.SetUSU_CodEmpOLD(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmpOLD := pUSU_CodEmp;
end;

function T096MTO.GetUSU_CodFilOLD: Integer;
begin
  Result := FUSU_CodFilOLD;
end;

procedure T096MTO.SetUSU_CodFilOLD(const pUSU_CodFil: Integer);
begin
  FUSU_CodFilOLD := pUSU_CodFil;
end;

function T096MTO.GetUSU_NumTitOLD: string;
begin
  Result := FUSU_NumTitOLD;
end;

procedure T096MTO.SetUSU_NumTitOLD(const pUSU_NumTit: string);
begin
  FUSU_NumTitOLD := pUSU_NumTit;
end;

function T096MTO.GetUSU_CodForOLD: Integer;
begin
  Result := FUSU_CodForOLD;
end;

procedure T096MTO.SetUSU_CodForOLD(const pUSU_CodFor: Integer);
begin
  FUSU_CodForOLD := pUSU_CodFor;
end;

function T096MTO.GetUSU_CodTptOLD: string;
begin
  Result := FUSU_CodTptOLD;
end;

procedure T096MTO.SetUSU_CodTptOLD(const pUSU_CodTpt: string);
begin
  FUSU_CodTptOLD := pUSU_CodTpt;
end;

function T096MTO.GetUSU_EmpOcpOLD: Integer;
begin
  Result := FUSU_EmpOcpOLD;
end;

procedure T096MTO.SetUSU_EmpOcpOLD(const pUSU_EmpOcp: Integer);
begin
  FUSU_EmpOcpOLD := pUSU_EmpOcp;
end;

function T096MTO.GetUSU_FilOcpOLD: Integer;
begin
  Result := FUSU_FilOcpOLD;
end;

procedure T096MTO.SetUSU_FilOcpOLD(const pUSU_FilOcp: Integer);
begin
  FUSU_FilOcpOLD := pUSU_FilOcp;
end;

function T096MTO.GetUSU_NumOcpOLD: Integer;
begin
  Result := FUSU_NumOcpOLD;
end;

procedure T096MTO.SetUSU_NumOcpOLD(const pUSU_NumOcp: Integer);
begin
  FUSU_NumOcpOLD := pUSU_NumOcp;
end;

procedure T096MTO.Registros_OLD();
begin
  FUSU_CodEmpOLD := FUSU_CodEmp;
  FUSU_CodFilOLD := FUSU_CodFil;
  FUSU_NumTitOLD := FUSU_NumTit;
  FUSU_CodForOLD := FUSU_CodFor;
  FUSU_CodTptOLD := FUSU_CodTpt;
  FUSU_EmpOcpOLD := FUSU_EmpOcp;
  FUSU_FilOcpOLD := FUSU_FilOcp;
  FUSU_NumOcpOLD := FUSU_NumOcp;

  inherited;
end;

procedure T096MTO.RetornarValores();
begin
  FUSU_CodEmp := FUSU_CodEmpOLD;
  FUSU_CodFil := FUSU_CodFilOLD;
  FUSU_NumTit := FUSU_NumTitOLD;
  FUSU_CodFor := FUSU_CodForOLD;
  FUSU_CodTpt := FUSU_CodTptOLD;
  FUSU_EmpOcp := FUSU_EmpOcpOLD;
  FUSU_FilOcp := FUSU_FilOcpOLD;
  FUSU_NumOcp := FUSU_NumOcpOLD;

  inherited;
end;

end.
