unit o096mdo;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T096MDO = class(TTabelaUsuario)
  private
    FUSU_CodEmp: Integer;
    FUSU_CodFil: Integer;
    FUSU_NumTit: string;
    FUSU_CodFor: Integer;
    FUSU_CodTpt: string;

    FUSU_CodEmpOLD: Integer;
    FUSU_CodFilOLD: Integer;
    FUSU_NumTitOLD: string;
    FUSU_CodForOLD: Integer;
    FUSU_CodTptOLD: string;

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

    property OLD_USU_CodEmp: Integer read GetUSU_CodEmpOLD write SetUSU_CodEmpOLD;
    property OLD_USU_CodFil: Integer read GetUSU_CodFilOLD write SetUSU_CodFilOLD;
    property OLD_USU_NumTit: string read GetUSU_NumTitOLD write SetUSU_NumTitOLD;
    property OLD_USU_CodFor: Integer read GetUSU_CodForOLD write SetUSU_CodForOLD;
    property OLD_USU_CodTpt: string read GetUSU_CodTptOLD write SetUSU_CodTptOLD;
  end;

implementation

{ T096MDO }

constructor T096MDO.Create();
begin
  AddPrimaryKeys('USU_Id');

  inherited Create('USU_T096MDO');
end;

destructor T096MDO.Destroy();
begin
  inherited;
end;

function T096MDO.GetUSU_CodEmp: Integer;
begin
  Result := FUSU_CodEmp;
end;

procedure T096MDO.SetUSU_CodEmp(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmp := pUSU_CodEmp;

  CheckField('USU_CodEmp');
end;

function T096MDO.GetUSU_CodFil: Integer;
begin
  Result := FUSU_CodFil;
end;

procedure T096MDO.SetUSU_CodFil(const pUSU_CodFil: Integer);
begin
  FUSU_CodFil := pUSU_CodFil;

  CheckField('USU_CodFil');
end;

function T096MDO.GetUSU_NumTit: string;
begin
  Result := FUSU_NumTit;
end;

procedure T096MDO.SetUSU_NumTit(const pUSU_NumTit: string);
begin
  FUSU_NumTit := pUSU_NumTit;

  CheckField('USU_NumTit');
end;

function T096MDO.GetUSU_CodFor: Integer;
begin
  Result := FUSU_CodFor;
end;

procedure T096MDO.SetUSU_CodFor(const pUSU_CodFor: Integer);
begin
  FUSU_CodFor := pUSU_CodFor;

  CheckField('USU_CodFor');
end;

function T096MDO.GetUSU_CodTpt: string;
begin
  Result := FUSU_CodTpt;
end;

procedure T096MDO.SetUSU_CodTpt(const pUSU_CodTpt: string);
begin
  FUSU_CodTpt := pUSU_CodTpt;

  CheckField('USU_CodTpt');
end;

function T096MDO.GetUSU_CodEmpOLD: Integer;
begin
  Result := FUSU_CodEmpOLD;
end;

procedure T096MDO.SetUSU_CodEmpOLD(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmpOLD := pUSU_CodEmp;
end;

function T096MDO.GetUSU_CodFilOLD: Integer;
begin
  Result := FUSU_CodFilOLD;
end;

procedure T096MDO.SetUSU_CodFilOLD(const pUSU_CodFil: Integer);
begin
  FUSU_CodFilOLD := pUSU_CodFil;
end;

function T096MDO.GetUSU_NumTitOLD: string;
begin
  Result := FUSU_NumTitOLD;
end;

procedure T096MDO.SetUSU_NumTitOLD(const pUSU_NumTit: string);
begin
  FUSU_NumTitOLD := pUSU_NumTit;
end;

function T096MDO.GetUSU_CodForOLD: Integer;
begin
  Result := FUSU_CodForOLD;
end;

procedure T096MDO.SetUSU_CodForOLD(const pUSU_CodFor: Integer);
begin
  FUSU_CodForOLD := pUSU_CodFor;
end;

function T096MDO.GetUSU_CodTptOLD: string;
begin
  Result := FUSU_CodTptOLD;
end;

procedure T096MDO.SetUSU_CodTptOLD(const pUSU_CodTpt: string);
begin
  FUSU_CodTptOLD := pUSU_CodTpt;
end;

procedure T096MDO.Registros_OLD();
begin
  FUSU_CodEmpOLD := FUSU_CodEmp;
  FUSU_CodFilOLD := FUSU_CodFil;
  FUSU_NumTitOLD := FUSU_NumTit;
  FUSU_CodForOLD := FUSU_CodFor;
  FUSU_CodTptOLD := FUSU_CodTpt;

  inherited;
end;

procedure T096MDO.RetornarValores();
begin
  FUSU_CodEmp := FUSU_CodEmpOLD;
  FUSU_CodFil := FUSU_CodFilOLD;
  FUSU_NumTit := FUSU_NumTitOLD;
  FUSU_CodFor := FUSU_CodForOLD;
  FUSU_CodTpt := FUSU_CodTptOLD;

  inherited;
end;

end.
