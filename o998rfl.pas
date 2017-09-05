unit o998rfl;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, oTabelas, DateUtils;

type

  T998RFL = class(TTabelaPadrao)
  private
    FRELNAM: string;
    FRELORD: Integer;
    FFORFLD: string;
    FREFFLD: string;
    FObjSis: Char;

    FRELNAMOLD: string;
    FRELORDOLD: Integer;
    FFORFLDOLD: string;
    FREFFLDOLD: string;
    FObjSisOLD: Char;

    function GetRELNAM: string;
    procedure SetRELNAM(const pRELNAM: string);
    function GetRELORD: Integer;
    procedure SetRELORD(const pRELORD: Integer);
    function GetFORFLD: string;
    procedure SetFORFLD(const pFORFLD: string);
    function GetREFFLD: string;
    procedure SetREFFLD(const pREFFLD: string);
    function GetObjSis: Char;
    procedure SetObjSis(const pObjSis: Char);

    function GetRELNAMOld: string;
    procedure SetRELNAMOld(const pRELNAM: string);
    function GetRELORDOld: Integer;
    procedure SetRELORDOld(const pRELORD: Integer);
    function GetFORFLDOld: string;
    procedure SetFORFLDOld(const pFORFLD: string);
    function GetREFFLDOld: string;
    procedure SetREFFLDOld(const pREFFLD: string);
    function GetObjSisOld: Char;
    procedure SetObjSisOld(const pObjSis: Char);
  protected
    procedure Registros_OLD(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property RELNAM: string read GetRELNAM write SetRELNAM;
    property RELORD: Integer read GetRELORD write SetRELORD;
    property FORFLD: string read GetFORFLD write SetFORFLD;
    property REFFLD: string read GetREFFLD write SetREFFLD;
    property ObjSis: Char read GetObjSis write SetObjSis;

    property OLD_RELNAM: string read GetRELNAMOLD write SetRELNAMOLD;
    property OLD_RELORD: Integer read GetRELORDOLD write SetRELORDOLD;
    property OLD_FORFLD: string read GetFORFLDOLD write SetFORFLDOLD;
    property OLD_REFFLD: string read GetREFFLDOLD write SetREFFLDOLD;
    property OLD_ObjSis: Char read GetObjSisOLD write SetObjSisOLD;
  end;

implementation

{ T998RFL }

constructor T998RFL.Create();
begin
  inherited Create('R998RFL');
end;

destructor T998RFL.Destroy();
begin
  inherited;
end;
function T998RFL.GetRELNAM: string;
begin
  Result := FRELNAM;
end;

procedure T998RFL.SetRELNAM(const pRELNAM: string);
begin
  FRELNAM := pRELNAM;
end;

function T998RFL.GetRELORD: Integer;
begin
  Result := FRELORD;
end;

procedure T998RFL.SetRELORD(const pRELORD: Integer);
begin
  FRELORD := pRELORD;
end;

function T998RFL.GetFORFLD: string;
begin
  Result := FFORFLD;
end;

procedure T998RFL.SetFORFLD(const pFORFLD: string);
begin
  FFORFLD := pFORFLD;
end;

function T998RFL.GetREFFLD: string;
begin
  Result := FREFFLD;
end;

procedure T998RFL.SetREFFLD(const pREFFLD: string);
begin
  FREFFLD := pREFFLD;
end;

function T998RFL.GetObjSis: Char;
begin
  Result := FObjSis;
end;

procedure T998RFL.SetObjSis(const pObjSis: Char);
begin
  FObjSis := pObjSis;
end;

function T998RFL.GetRELNAMOLD: string;
begin
  Result := FRELNAMOLD;
end;

procedure T998RFL.SetRELNAMOLD(const pRELNAM: string);
begin
  FRELNAMOLD := pRELNAM;
end;

function T998RFL.GetRELORDOLD: Integer;
begin
  Result := FRELORDOLD;
end;

procedure T998RFL.SetRELORDOLD(const pRELORD: Integer);
begin
  FRELORDOLD := pRELORD;
end;

function T998RFL.GetFORFLDOLD: string;
begin
  Result := FFORFLDOLD;
end;

procedure T998RFL.SetFORFLDOLD(const pFORFLD: string);
begin
  FFORFLDOLD := pFORFLD;
end;

function T998RFL.GetREFFLDOLD: string;
begin
  Result := FREFFLDOLD;
end;

procedure T998RFL.SetREFFLDOLD(const pREFFLD: string);
begin
  FREFFLDOLD := pREFFLD;
end;

function T998RFL.GetObjSisOLD: Char;
begin
  Result := FObjSisOLD;
end;

procedure T998RFL.SetObjSisOLD(const pObjSis: Char);
begin
  FObjSisOLD := pObjSis;
end;

procedure T998RFL.Registros_OLD();
begin
  FRELNAMOLD := FRELNAM;
  FRELORDOLD := FRELORD;
  FFORFLDOLD := FFORFLD;
  FREFFLDOLD := FREFFLD;
  FObjSisOLD := FObjSis;
end;

end.
