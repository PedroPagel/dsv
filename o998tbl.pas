unit o998tbl;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T998TBL = class(TTabelaPadrao)
  private
    FTBLNAM: string;
    FDESTBL: string;
    FORINAM: string;
    FCodUsu: Integer;
    FLasUpd: TDate;
    FPKFLDS: string;
    FTblOrd: Integer;
    FObjSis: Char;

    FTBLNAMOLD: string;
    FDESTBLOLD: string;
    FORINAMOLD: string;
    FCodUsuOLD: Integer;
    FLasUpdOLD: TDate;
    FPKFLDSOLD: string;
    FTblOrdOLD: Integer;
    FObjSisOLD: Char;

    function GetTBLNAM: string;
    procedure SetTBLNAM(const pTBLNAM: string);
    function GetDESTBL: string;
    procedure SetDESTBL(const pDESTBL: string);
    function GetORINAM: string;
    procedure SetORINAM(const pORINAM: string);
    function GetCodUsu: Integer;
    procedure SetCodUsu(const pCodUsu: Integer);
    function GetLasUpd: TDate;
    procedure SetLasUpd(const pLasUpd: TDate);
    function GetPKFLDS: string;
    procedure SetPKFLDS(const pPKFLDS: string);
    function GetTblOrd: Integer;
    procedure SetTblOrd(const pTblOrd: Integer);
    function GetObjSis: Char;
    procedure SetObjSis(const pObjSis: Char);

    function GetTBLNAMOld: string;
    procedure SetTBLNAMOld(const pTBLNAM: string);
    function GetDESTBLOld: string;
    procedure SetDESTBLOld(const pDESTBL: string);
    function GetORINAMOld: string;
    procedure SetORINAMOld(const pORINAM: string);
    function GetCodUsuOld: Integer;
    procedure SetCodUsuOld(const pCodUsu: Integer);
    function GetLasUpdOld: TDate;
    procedure SetLasUpdOld(const pLasUpd: TDate);
    function GetPKFLDSOld: string;
    procedure SetPKFLDSOld(const pPKFLDS: string);
    function GetTblOrdOld: Integer;
    procedure SetTblOrdOld(const pTblOrd: Integer);
    function GetObjSisOld: Char;
    procedure SetObjSisOld(const pObjSis: Char);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property TBLNAM: string read GetTBLNAM write SetTBLNAM;
    property DESTBL: string read GetDESTBL write SetDESTBL;
    property ORINAM: string read GetORINAM write SetORINAM;
    property CodUsu: Integer read GetCodUsu write SetCodUsu;
    property LasUpd: TDate read GetLasUpd write SetLasUpd;
    property PKFLDS: string read GetPKFLDS write SetPKFLDS;
    property TblOrd: Integer read GetTblOrd write SetTblOrd;
    property ObjSis: Char read GetObjSis write SetObjSis;

    property OLD_TBLNAM: string read GetTBLNAMOLD write SetTBLNAMOLD;
    property OLD_DESTBL: string read GetDESTBLOLD write SetDESTBLOLD;
    property OLD_ORINAM: string read GetORINAMOLD write SetORINAMOLD;
    property OLD_CodUsu: Integer read GetCodUsuOLD write SetCodUsuOLD;
    property OLD_LasUpd: TDate read GetLasUpdOLD write SetLasUpdOLD;
    property OLD_PKFLDS: string read GetPKFLDSOLD write SetPKFLDSOLD;
    property OLD_TblOrd: Integer read GetTblOrdOLD write SetTblOrdOLD;
    property OLD_ObjSis: Char read GetObjSisOLD write SetObjSisOLD;
  end;

implementation

{ T998TBL }

constructor T998TBL.Create();
begin
  AddPrimaryKeys('TBLNAM');

  inherited Create('R998TBL');
end;

destructor T998TBL.Destroy();
begin
  inherited;
end;

function T998TBL.GetTBLNAM: string;
begin
  Result := FTBLNAM;
end;

procedure T998TBL.SetTBLNAM(const pTBLNAM: string);
begin
  FTBLNAM := pTBLNAM;

  CheckField('TBLNAM');
end;

function T998TBL.GetDESTBL: string;
begin
  Result := FDESTBL;
end;

procedure T998TBL.SetDESTBL(const pDESTBL: string);
begin
  FDESTBL := pDESTBL;

  CheckField('DESTBL');
end;

function T998TBL.GetORINAM: string;
begin
  Result := FORINAM;
end;

procedure T998TBL.SetORINAM(const pORINAM: string);
begin
  FORINAM := pORINAM;

  CheckField('ORINAM');
end;

function T998TBL.GetCodUsu: Integer;
begin
  Result := FCodUsu;
end;

procedure T998TBL.SetCodUsu(const pCodUsu: Integer);
begin
  FCodUsu := pCodUsu;

  CheckField('CodUsu');
end;

function T998TBL.GetLasUpd: TDate;
begin
  Result := FLasUpd;
end;

procedure T998TBL.SetLasUpd(const pLasUpd: TDate);
begin
  FLasUpd := pLasUpd;

  CheckField('LasUpd');
end;

function T998TBL.GetPKFLDS: string;
begin
  Result := FPKFLDS;
end;

procedure T998TBL.SetPKFLDS(const pPKFLDS: string);
begin
  FPKFLDS := pPKFLDS;

  CheckField('PKFLDS');
end;

function T998TBL.GetTblOrd: Integer;
begin
  Result := FTblOrd;
end;

procedure T998TBL.SetTblOrd(const pTblOrd: Integer);
begin
  FTblOrd := pTblOrd;

  CheckField('TblOrd');
end;

function T998TBL.GetObjSis: Char;
begin
  Result := FObjSis;
end;

procedure T998TBL.SetObjSis(const pObjSis: Char);
begin
  FObjSis := pObjSis;

  CheckField('ObjSis');
end;

function T998TBL.GetTBLNAMOLD: string;
begin
  Result := FTBLNAMOLD;
end;

procedure T998TBL.SetTBLNAMOLD(const pTBLNAM: string);
begin
  FTBLNAMOLD := pTBLNAM;
end;

function T998TBL.GetDESTBLOLD: string;
begin
  Result := FDESTBLOLD;
end;

procedure T998TBL.SetDESTBLOLD(const pDESTBL: string);
begin
  FDESTBLOLD := pDESTBL;
end;

function T998TBL.GetORINAMOLD: string;
begin
  Result := FORINAMOLD;
end;

procedure T998TBL.SetORINAMOLD(const pORINAM: string);
begin
  FORINAMOLD := pORINAM;
end;

function T998TBL.GetCodUsuOLD: Integer;
begin
  Result := FCodUsuOLD;
end;

procedure T998TBL.SetCodUsuOLD(const pCodUsu: Integer);
begin
  FCodUsuOLD := pCodUsu;
end;

function T998TBL.GetLasUpdOLD: TDate;
begin
  Result := FLasUpdOLD;
end;

procedure T998TBL.SetLasUpdOLD(const pLasUpd: TDate);
begin
  FLasUpdOLD := pLasUpd;
end;

function T998TBL.GetPKFLDSOLD: string;
begin
  Result := FPKFLDSOLD;
end;

procedure T998TBL.SetPKFLDSOLD(const pPKFLDS: string);
begin
  FPKFLDSOLD := pPKFLDS;
end;

function T998TBL.GetTblOrdOLD: Integer;
begin
  Result := FTblOrdOLD;
end;

procedure T998TBL.SetTblOrdOLD(const pTblOrd: Integer);
begin
  FTblOrdOLD := pTblOrd;
end;

function T998TBL.GetObjSisOLD: Char;
begin
  Result := FObjSisOLD;
end;

procedure T998TBL.SetObjSisOLD(const pObjSis: Char);
begin
  FObjSisOLD := pObjSis;
end;

procedure T998TBL.Registros_OLD();
begin
  FTBLNAMOLD := FTBLNAM;
  FDESTBLOLD := FDESTBL;
  FORINAMOLD := FORINAM;
  FCodUsuOLD := FCodUsu;
  FLasUpdOLD := FLasUpd;
  FPKFLDSOLD := FPKFLDS;
  FTblOrdOLD := FTblOrd;
  FObjSisOLD := FObjSis;

  inherited;
end;

procedure T998TBL.RetornarValores();
begin
  FTBLNAM := FTBLNAMOLD;
  FDESTBL := FDESTBLOLD;
  FORINAM := FORINAMOLD;
  FCodUsu := FCodUsuOLD;
  FLasUpd := FLasUpdOLD;
  FPKFLDS := FPKFLDSOLD;
  FTblOrd := FTblOrdOLD;
  FObjSis := FObjSisOLD;

  inherited;
end;

end.
