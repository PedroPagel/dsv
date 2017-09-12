unit o998lsf;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, oTabelas, DateUtils;

type

  T998LSF = class(TTabelaPadrao)
  private
    FLSTNAM: string;
    FKEYNAM: string;
    FValKey: string;
    FKEYORD: Integer;
    FObjSis: Char;

    FLSTNAMOLD: string;
    FKEYNAMOLD: string;
    FValKeyOLD: string;
    FKEYORDOLD: Integer;
    FObjSisOLD: Char;

    function GetLSTNAM: string;
    procedure SetLSTNAM(const pLSTNAM: string);
    function GetKEYNAM: string;
    procedure SetKEYNAM(const pKEYNAM: string);
    function GetValKey: string;
    procedure SetValKey(const pValKey: string);
    function GetKEYORD: Integer;
    procedure SetKEYORD(const pKEYORD: Integer);
    function GetObjSis: Char;
    procedure SetObjSis(const pObjSis: Char);

    function GetLSTNAMOld: string;
    procedure SetLSTNAMOld(const pLSTNAM: string);
    function GetKEYNAMOld: string;
    procedure SetKEYNAMOld(const pKEYNAM: string);
    function GetValKeyOld: string;
    procedure SetValKeyOld(const pValKey: string);
    function GetKEYORDOld: Integer;
    procedure SetKEYORDOld(const pKEYORD: Integer);
    function GetObjSisOld: Char;
    procedure SetObjSisOld(const pObjSis: Char);
  protected
    procedure Registros_OLD(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property LSTNAM: string read GetLSTNAM write SetLSTNAM;
    property KEYNAM: string read GetKEYNAM write SetKEYNAM;
    property ValKey: string read GetValKey write SetValKey;
    property KEYORD: Integer read GetKEYORD write SetKEYORD;
    property ObjSis: Char read GetObjSis write SetObjSis;

    property OLD_LSTNAM: string read GetLSTNAMOLD write SetLSTNAMOLD;
    property OLD_KEYNAM: string read GetKEYNAMOLD write SetKEYNAMOLD;
    property OLD_ValKey: string read GetValKeyOLD write SetValKeyOLD;
    property OLD_KEYORD: Integer read GetKEYORDOLD write SetKEYORDOLD;
    property OLD_ObjSis: Char read GetObjSisOLD write SetObjSisOLD;
  end;

implementation

{ T998LSF }

constructor T998LSF.Create();
begin
  inherited Create('R998LSF');
end;

destructor T998LSF.Destroy();
begin
  inherited;
end;
function T998LSF.GetLSTNAM: string;
begin
  Result := FLSTNAM;
end;

procedure T998LSF.SetLSTNAM(const pLSTNAM: string);
begin
  FLSTNAM := pLSTNAM;
end;

function T998LSF.GetKEYNAM: string;
begin
  Result := FKEYNAM;
end;

procedure T998LSF.SetKEYNAM(const pKEYNAM: string);
begin
  FKEYNAM := pKEYNAM;
end;

function T998LSF.GetValKey: string;
begin
  Result := FValKey;
end;

procedure T998LSF.SetValKey(const pValKey: string);
begin
  FValKey := pValKey;
end;

function T998LSF.GetKEYORD: Integer;
begin
  Result := FKEYORD;
end;

procedure T998LSF.SetKEYORD(const pKEYORD: Integer);
begin
  FKEYORD := pKEYORD;
end;

function T998LSF.GetObjSis: Char;
begin
  Result := FObjSis;
end;

procedure T998LSF.SetObjSis(const pObjSis: Char);
begin
  FObjSis := pObjSis;
end;

function T998LSF.GetLSTNAMOLD: string;
begin
  Result := FLSTNAMOLD;
end;

procedure T998LSF.SetLSTNAMOLD(const pLSTNAM: string);
begin
  FLSTNAMOLD := pLSTNAM;
end;

function T998LSF.GetKEYNAMOLD: string;
begin
  Result := FKEYNAMOLD;
end;

procedure T998LSF.SetKEYNAMOLD(const pKEYNAM: string);
begin
  FKEYNAMOLD := pKEYNAM;
end;

function T998LSF.GetValKeyOLD: string;
begin
  Result := FValKeyOLD;
end;

procedure T998LSF.SetValKeyOLD(const pValKey: string);
begin
  FValKeyOLD := pValKey;
end;

function T998LSF.GetKEYORDOLD: Integer;
begin
  Result := FKEYORDOLD;
end;

procedure T998LSF.SetKEYORDOLD(const pKEYORD: Integer);
begin
  FKEYORDOLD := pKEYORD;
end;

function T998LSF.GetObjSisOLD: Char;
begin
  Result := FObjSisOLD;
end;

procedure T998LSF.SetObjSisOLD(const pObjSis: Char);
begin
  FObjSisOLD := pObjSis;
end;

procedure T998LSF.Registros_OLD();
begin
  FLSTNAMOLD := FLSTNAM;
  FKEYNAMOLD := FKEYNAM;
  FValKeyOLD := FValKey;
  FKEYORDOLD := FKEYORD;
  FObjSisOLD := FObjSis;
end;

end.
