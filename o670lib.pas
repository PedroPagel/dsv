unit o670lib;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T670LIB = class(TTabelaUsuario)
  private
    FUSU_CodEmp: Integer;
    FUSU_CodBem: string;
    FUSU_DesBem: string;
    FUSU_IDLIG: Integer;

    FUSU_CodEmpOLD: Integer;
    FUSU_CodBemOLD: string;
    FUSU_DesBemOLD: string;
    FUSU_IDLIGOLD: Integer;

    function GetUSU_CodEmp: Integer;
    procedure SetUSU_CodEmp(const pUSU_CodEmp: Integer);
    function GetUSU_CodBem: string;
    procedure SetUSU_CodBem(const pUSU_CodBem: string);
    function GetUSU_DesBem: string;
    procedure SetUSU_DesBem(const pUSU_DesBem: string);
    function GetUSU_IDLIG: Integer;
    procedure SetUSU_IDLIG(const pUSU_IDLIG: Integer);

    function GetUSU_CodEmpOld: Integer;
    procedure SetUSU_CodEmpOld(const pUSU_CodEmp: Integer);
    function GetUSU_CodBemOld: string;
    procedure SetUSU_CodBemOld(const pUSU_CodBem: string);
    function GetUSU_DesBemOld: string;
    procedure SetUSU_DesBemOld(const pUSU_DesBem: string);
    function GetUSU_IDLIGOld: Integer;
    procedure SetUSU_IDLIGOld(const pUSU_IDLIG: Integer);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_CodEmp: Integer read GetUSU_CodEmp write SetUSU_CodEmp;
    property USU_CodBem: string read GetUSU_CodBem write SetUSU_CodBem;
    property USU_DesBem: string read GetUSU_DesBem write SetUSU_DesBem;
    property USU_IDLIG: Integer read GetUSU_IDLIG write SetUSU_IDLIG;

    property OLD_USU_CodEmp: Integer read GetUSU_CodEmpOLD write SetUSU_CodEmpOLD;
    property OLD_USU_CodBem: string read GetUSU_CodBemOLD write SetUSU_CodBemOLD;
    property OLD_USU_DesBem: string read GetUSU_DesBemOLD write SetUSU_DesBemOLD;
    property OLD_USU_IDLIG: Integer read GetUSU_IDLIGOLD write SetUSU_IDLIGOLD;
  end;

implementation

{ T670LIB }

constructor T670LIB.Create();
begin
  AddForeignKeys(['USU_CodEmp','USU_CodBem'], ['CodEmp','CodBem']);
  AddPrimaryKeys('USU_ID');

  inherited Create('USU_T670LIB');
end;

destructor T670LIB.Destroy();
begin
  inherited;
end;

function T670LIB.GetUSU_CodEmp: Integer;
begin
  Result := FUSU_CodEmp;
end;

procedure T670LIB.SetUSU_CodEmp(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmp := pUSU_CodEmp;

  CheckField('USU_CodEmp');
end;

function T670LIB.GetUSU_CodBem: string;
begin
  Result := FUSU_CodBem;
end;

procedure T670LIB.SetUSU_CodBem(const pUSU_CodBem: string);
begin
  FUSU_CodBem := pUSU_CodBem;

  CheckField('USU_CodBem');
end;

function T670LIB.GetUSU_DesBem: string;
begin
  Result := FUSU_DesBem;
end;

procedure T670LIB.SetUSU_DesBem(const pUSU_DesBem: string);
begin
  FUSU_DesBem := pUSU_DesBem;

  CheckField('USU_DesBem');
end;

function T670LIB.GetUSU_IDLIG: Integer;
begin
  Result := FUSU_IDLIG;
end;

procedure T670LIB.SetUSU_IDLIG(const pUSU_IDLIG: Integer);
begin
  FUSU_IDLIG := pUSU_IDLIG;

  CheckField('USU_IDLIG');
end;

function T670LIB.GetUSU_CodEmpOLD: Integer;
begin
  Result := FUSU_CodEmpOLD;
end;

procedure T670LIB.SetUSU_CodEmpOLD(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmpOLD := pUSU_CodEmp;
end;

function T670LIB.GetUSU_CodBemOLD: string;
begin
  Result := FUSU_CodBemOLD;
end;

procedure T670LIB.SetUSU_CodBemOLD(const pUSU_CodBem: string);
begin
  FUSU_CodBemOLD := pUSU_CodBem;
end;

function T670LIB.GetUSU_DesBemOLD: string;
begin
  Result := FUSU_DesBemOLD;
end;

procedure T670LIB.SetUSU_DesBemOLD(const pUSU_DesBem: string);
begin
  FUSU_DesBemOLD := pUSU_DesBem;
end;

function T670LIB.GetUSU_IDLIGOLD: Integer;
begin
  Result := FUSU_IDLIGOLD;
end;

procedure T670LIB.SetUSU_IDLIGOLD(const pUSU_IDLIG: Integer);
begin
  FUSU_IDLIGOLD := pUSU_IDLIG;
end;

procedure T670LIB.Registros_OLD();
begin
  FUSU_CodEmpOLD := FUSU_CodEmp;
  FUSU_CodBemOLD := FUSU_CodBem;
  FUSU_DesBemOLD := FUSU_DesBem;
  FUSU_IDLIGOLD := FUSU_IDLIG;

  inherited;
end;

procedure T670LIB.RetornarValores();
begin
  FUSU_CodEmp := FUSU_CodEmpOLD;
  FUSU_CodBem := FUSU_CodBemOLD;
  FUSU_DesBem := FUSU_DesBemOLD;
  FUSU_IDLIG := FUSU_IDLIGOLD;
end;

end.
