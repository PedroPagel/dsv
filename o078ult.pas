unit o078ult;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T078ULT = class(TTabelaPadrao)
  private
    FCodEmp: Integer;
    FCodFil: Integer;
    FCamBas: string;
    FUltNum: Integer;
    FDesCam: string;

    FCodEmpOLD: Integer;
    FCodFilOLD: Integer;
    FCamBasOLD: string;
    FUltNumOLD: Integer;
    FDesCamOLD: string;

    function GetCodEmp: Integer;
    procedure SetCodEmp(const pCodEmp: Integer);
    function GetCodFil: Integer;
    procedure SetCodFil(const pCodFil: Integer);
    function GetCamBas: string;
    procedure SetCamBas(const pCamBas: string);
    function GetUltNum: Integer;
    procedure SetUltNum(const pUltNum: Integer);
    function GetDesCam: string;
    procedure SetDesCam(const pDesCam: string);

    function GetCodEmpOld: Integer;
    procedure SetCodEmpOld(const pCodEmp: Integer);
    function GetCodFilOld: Integer;
    procedure SetCodFilOld(const pCodFil: Integer);
    function GetCamBasOld: string;
    procedure SetCamBasOld(const pCamBas: string);
    function GetUltNumOld: Integer;
    procedure SetUltNumOld(const pUltNum: Integer);
    function GetDesCamOld: string;
    procedure SetDesCamOld(const pDesCam: string);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property CodEmp: Integer read GetCodEmp write SetCodEmp;
    property CodFil: Integer read GetCodFil write SetCodFil;
    property CamBas: string read GetCamBas write SetCamBas;
    property UltNum: Integer read GetUltNum write SetUltNum;
    property DesCam: string read GetDesCam write SetDesCam;

    property OLD_CodEmp: Integer read GetCodEmpOLD write SetCodEmpOLD;
    property OLD_CodFil: Integer read GetCodFilOLD write SetCodFilOLD;
    property OLD_CamBas: string read GetCamBasOLD write SetCamBasOLD;
    property OLD_UltNum: Integer read GetUltNumOLD write SetUltNumOLD;
    property OLD_DesCam: string read GetDesCamOLD write SetDesCamOLD;
  end;

implementation

{ T078ULT }

constructor T078ULT.Create();
begin
  AddPrimaryKeys('CodEmp;CodFil;CamBas');

  inherited Create('E078ULT');
end;

destructor T078ULT.Destroy();
begin
  inherited;
end;

function T078ULT.GetCodEmp: Integer;
begin
  Result := FCodEmp;
end;

procedure T078ULT.SetCodEmp(const pCodEmp: Integer);
begin
  FCodEmp := pCodEmp;

  CheckField('CodEmp');
end;

function T078ULT.GetCodFil: Integer;
begin
  Result := FCodFil;
end;

procedure T078ULT.SetCodFil(const pCodFil: Integer);
begin
  FCodFil := pCodFil;

  CheckField('CodFil');
end;

function T078ULT.GetCamBas: string;
begin
  Result := FCamBas;
end;

procedure T078ULT.SetCamBas(const pCamBas: string);
begin
  FCamBas := pCamBas;

  CheckField('CamBas');
end;

function T078ULT.GetUltNum: Integer;
begin
  Result := FUltNum;
end;

procedure T078ULT.SetUltNum(const pUltNum: Integer);
begin
  FUltNum := pUltNum;

  CheckField('UltNum');
end;

function T078ULT.GetDesCam: string;
begin
  Result := FDesCam;
end;

procedure T078ULT.SetDesCam(const pDesCam: string);
begin
  FDesCam := pDesCam;

  CheckField('DesCam');
end;

function T078ULT.GetCodEmpOLD: Integer;
begin
  Result := FCodEmpOLD;
end;

procedure T078ULT.SetCodEmpOLD(const pCodEmp: Integer);
begin
  FCodEmpOLD := pCodEmp;
end;

function T078ULT.GetCodFilOLD: Integer;
begin
  Result := FCodFilOLD;
end;

procedure T078ULT.SetCodFilOLD(const pCodFil: Integer);
begin
  FCodFilOLD := pCodFil;
end;

function T078ULT.GetCamBasOLD: string;
begin
  Result := FCamBasOLD;
end;

procedure T078ULT.SetCamBasOLD(const pCamBas: string);
begin
  FCamBasOLD := pCamBas;
end;

function T078ULT.GetUltNumOLD: Integer;
begin
  Result := FUltNumOLD;
end;

procedure T078ULT.SetUltNumOLD(const pUltNum: Integer);
begin
  FUltNumOLD := pUltNum;
end;

function T078ULT.GetDesCamOLD: string;
begin
  Result := FDesCamOLD;
end;

procedure T078ULT.SetDesCamOLD(const pDesCam: string);
begin
  FDesCamOLD := pDesCam;
end;

procedure T078ULT.Registros_OLD();
begin
  FCodEmpOLD := FCodEmp;
  FCodFilOLD := FCodFil;
  FCamBasOLD := FCamBas;
  FUltNumOLD := FUltNum;
  FDesCamOLD := FDesCam;

  inherited;
end;

procedure T078ULT.RetornarValores();
begin
  FCodEmp := FCodEmpOLD;
  FCodFil := FCodFilOLD;
  FCamBas := FCamBasOLD;
  FUltNum := FUltNumOLD;
  FDesCam := FDesCamOLD;

  inherited;
end;

end.
