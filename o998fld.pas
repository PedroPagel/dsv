unit o998fld;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T998FLD = class(TTabelaPadrao)
  private
    FTblNam: string;
    FFldNam: string;
    FFldOrd: Integer;
    FMskFld: string;
    FDatTyp: Integer;
    FEnuNam: string;
    FLenFld: Integer;
    FPreFld: Integer;
    FShrTit: string;
    FLgnTit: string;
    FDesFld: string;
    FCanNul: Integer;
    FCodHlp: Integer;
    FValDef: string;
    FOwnMod: string;
    FFldDep: string;
    FCodUsu: Integer;
    FOriNam: string;
    FLasUpd: TDate;
    FReqFld: Char;
    FObjSis: Char;

    FTblNamOLD: string;
    FFldNamOLD: string;
    FFldOrdOLD: Integer;
    FMskFldOLD: string;
    FDatTypOLD: Integer;
    FEnuNamOLD: string;
    FLenFldOLD: Integer;
    FPreFldOLD: Integer;
    FShrTitOLD: string;
    FLgnTitOLD: string;
    FDesFldOLD: string;
    FCanNulOLD: Integer;
    FCodHlpOLD: Integer;
    FValDefOLD: string;
    FOwnModOLD: string;
    FFldDepOLD: string;
    FCodUsuOLD: Integer;
    FOriNamOLD: string;
    FLasUpdOLD: TDate;
    FReqFldOLD: Char;
    FObjSisOLD: Char;

    function GetTblNam: string;
    procedure SetTblNam(const pTblNam: string);
    function GetFldNam: string;
    procedure SetFldNam(const pFldNam: string);
    function GetFldOrd: Integer;
    procedure SetFldOrd(const pFldOrd: Integer);
    function GetMskFld: string;
    procedure SetMskFld(const pMskFld: string);
    function GetDatTyp: Integer;
    procedure SetDatTyp(const pDatTyp: Integer);
    function GetEnuNam: string;
    procedure SetEnuNam(const pEnuNam: string);
    function GetLenFld: Integer;
    procedure SetLenFld(const pLenFld: Integer);
    function GetPreFld: Integer;
    procedure SetPreFld(const pPreFld: Integer);
    function GetShrTit: string;
    procedure SetShrTit(const pShrTit: string);
    function GetLgnTit: string;
    procedure SetLgnTit(const pLgnTit: string);
    function GetDesFld: string;
    procedure SetDesFld(const pDesFld: string);
    function GetCanNul: Integer;
    procedure SetCanNul(const pCanNul: Integer);
    function GetCodHlp: Integer;
    procedure SetCodHlp(const pCodHlp: Integer);
    function GetValDef: string;
    procedure SetValDef(const pValDef: string);
    function GetOwnMod: string;
    procedure SetOwnMod(const pOwnMod: string);
    function GetFldDep: string;
    procedure SetFldDep(const pFldDep: string);
    function GetCodUsu: Integer;
    procedure SetCodUsu(const pCodUsu: Integer);
    function GetOriNam: string;
    procedure SetOriNam(const pOriNam: string);
    function GetLasUpd: TDate;
    procedure SetLasUpd(const pLasUpd: TDate);
    function GetReqFld: Char;
    procedure SetReqFld(const pReqFld: Char);
    function GetObjSis: Char;
    procedure SetObjSis(const pObjSis: Char);

    function GetTblNamOld: string;
    procedure SetTblNamOld(const pTblNam: string);
    function GetFldNamOld: string;
    procedure SetFldNamOld(const pFldNam: string);
    function GetFldOrdOld: Integer;
    procedure SetFldOrdOld(const pFldOrd: Integer);
    function GetMskFldOld: string;
    procedure SetMskFldOld(const pMskFld: string);
    function GetDatTypOld: Integer;
    procedure SetDatTypOld(const pDatTyp: Integer);
    function GetEnuNamOld: string;
    procedure SetEnuNamOld(const pEnuNam: string);
    function GetLenFldOld: Integer;
    procedure SetLenFldOld(const pLenFld: Integer);
    function GetPreFldOld: Integer;
    procedure SetPreFldOld(const pPreFld: Integer);
    function GetShrTitOld: string;
    procedure SetShrTitOld(const pShrTit: string);
    function GetLgnTitOld: string;
    procedure SetLgnTitOld(const pLgnTit: string);
    function GetDesFldOld: string;
    procedure SetDesFldOld(const pDesFld: string);
    function GetCanNulOld: Integer;
    procedure SetCanNulOld(const pCanNul: Integer);
    function GetCodHlpOld: Integer;
    procedure SetCodHlpOld(const pCodHlp: Integer);
    function GetValDefOld: string;
    procedure SetValDefOld(const pValDef: string);
    function GetOwnModOld: string;
    procedure SetOwnModOld(const pOwnMod: string);
    function GetFldDepOld: string;
    procedure SetFldDepOld(const pFldDep: string);
    function GetCodUsuOld: Integer;
    procedure SetCodUsuOld(const pCodUsu: Integer);
    function GetOriNamOld: string;
    procedure SetOriNamOld(const pOriNam: string);
    function GetLasUpdOld: TDate;
    procedure SetLasUpdOld(const pLasUpd: TDate);
    function GetReqFldOld: Char;
    procedure SetReqFldOld(const pReqFld: Char);
    function GetObjSisOld: Char;
    procedure SetObjSisOld(const pObjSis: Char);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property TblNam: string read GetTblNam write SetTblNam;
    property FldNam: string read GetFldNam write SetFldNam;
    property FldOrd: Integer read GetFldOrd write SetFldOrd;
    property MskFld: string read GetMskFld write SetMskFld;
    property DatTyp: Integer read GetDatTyp write SetDatTyp;
    property EnuNam: string read GetEnuNam write SetEnuNam;
    property LenFld: Integer read GetLenFld write SetLenFld;
    property PreFld: Integer read GetPreFld write SetPreFld;
    property ShrTit: string read GetShrTit write SetShrTit;
    property LgnTit: string read GetLgnTit write SetLgnTit;
    property DesFld: string read GetDesFld write SetDesFld;
    property CanNul: Integer read GetCanNul write SetCanNul;
    property CodHlp: Integer read GetCodHlp write SetCodHlp;
    property ValDef: string read GetValDef write SetValDef;
    property OwnMod: string read GetOwnMod write SetOwnMod;
    property FldDep: string read GetFldDep write SetFldDep;
    property CodUsu: Integer read GetCodUsu write SetCodUsu;
    property OriNam: string read GetOriNam write SetOriNam;
    property LasUpd: TDate read GetLasUpd write SetLasUpd;
    property ReqFld: Char read GetReqFld write SetReqFld;
    property ObjSis: Char read GetObjSis write SetObjSis;

    property OLD_TblNam: string read GetTblNamOLD write SetTblNamOLD;
    property OLD_FldNam: string read GetFldNamOLD write SetFldNamOLD;
    property OLD_FldOrd: Integer read GetFldOrdOLD write SetFldOrdOLD;
    property OLD_MskFld: string read GetMskFldOLD write SetMskFldOLD;
    property OLD_DatTyp: Integer read GetDatTypOLD write SetDatTypOLD;
    property OLD_EnuNam: string read GetEnuNamOLD write SetEnuNamOLD;
    property OLD_LenFld: Integer read GetLenFldOLD write SetLenFldOLD;
    property OLD_PreFld: Integer read GetPreFldOLD write SetPreFldOLD;
    property OLD_ShrTit: string read GetShrTitOLD write SetShrTitOLD;
    property OLD_LgnTit: string read GetLgnTitOLD write SetLgnTitOLD;
    property OLD_DesFld: string read GetDesFldOLD write SetDesFldOLD;
    property OLD_CanNul: Integer read GetCanNulOLD write SetCanNulOLD;
    property OLD_CodHlp: Integer read GetCodHlpOLD write SetCodHlpOLD;
    property OLD_ValDef: string read GetValDefOLD write SetValDefOLD;
    property OLD_OwnMod: string read GetOwnModOLD write SetOwnModOLD;
    property OLD_FldDep: string read GetFldDepOLD write SetFldDepOLD;
    property OLD_CodUsu: Integer read GetCodUsuOLD write SetCodUsuOLD;
    property OLD_OriNam: string read GetOriNamOLD write SetOriNamOLD;
    property OLD_LasUpd: TDate read GetLasUpdOLD write SetLasUpdOLD;
    property OLD_ReqFld: Char read GetReqFldOLD write SetReqFldOLD;
    property OLD_ObjSis: Char read GetObjSisOLD write SetObjSisOLD;
  end;

implementation

{ T998FLD }

constructor T998FLD.Create();
begin
  AddPrimaryKeys('TblNam;FldNam');

  inherited Create('R998FLD');
end;

destructor T998FLD.Destroy();
begin
  inherited;
end;

function T998FLD.GetTblNam: string;
begin
  Result := FTblNam;
end;

procedure T998FLD.SetTblNam(const pTblNam: string);
begin
  FTblNam := pTblNam;

  CheckField('TblNam');
end;

function T998FLD.GetFldNam: string;
begin
  Result := FFldNam;
end;

procedure T998FLD.SetFldNam(const pFldNam: string);
begin
  FFldNam := pFldNam;

  CheckField('FldNam');
end;

function T998FLD.GetFldOrd: Integer;
begin
  Result := FFldOrd;
end;

procedure T998FLD.SetFldOrd(const pFldOrd: Integer);
begin
  FFldOrd := pFldOrd;

  CheckField('FldOrd');
end;

function T998FLD.GetMskFld: string;
begin
  Result := FMskFld;
end;

procedure T998FLD.SetMskFld(const pMskFld: string);
begin
  FMskFld := pMskFld;

  CheckField('MskFld');
end;

function T998FLD.GetDatTyp: Integer;
begin
  Result := FDatTyp;
end;

procedure T998FLD.SetDatTyp(const pDatTyp: Integer);
begin
  FDatTyp := pDatTyp;

  CheckField('DatTyp');
end;

function T998FLD.GetEnuNam: string;
begin
  Result := FEnuNam;
end;

procedure T998FLD.SetEnuNam(const pEnuNam: string);
begin
  FEnuNam := pEnuNam;

  CheckField('EnuNam');
end;

function T998FLD.GetLenFld: Integer;
begin
  Result := FLenFld;
end;

procedure T998FLD.SetLenFld(const pLenFld: Integer);
begin
  FLenFld := pLenFld;

  CheckField('LenFld');
end;

function T998FLD.GetPreFld: Integer;
begin
  Result := FPreFld;
end;

procedure T998FLD.SetPreFld(const pPreFld: Integer);
begin
  FPreFld := pPreFld;

  CheckField('PreFld');
end;

function T998FLD.GetShrTit: string;
begin
  Result := FShrTit;
end;

procedure T998FLD.SetShrTit(const pShrTit: string);
begin
  FShrTit := pShrTit;

  CheckField('ShrTit');
end;

function T998FLD.GetLgnTit: string;
begin
  Result := FLgnTit;
end;

procedure T998FLD.SetLgnTit(const pLgnTit: string);
begin
  FLgnTit := pLgnTit;

  CheckField('LgnTit');
end;

function T998FLD.GetDesFld: string;
begin
  Result := FDesFld;
end;

procedure T998FLD.SetDesFld(const pDesFld: string);
begin
  FDesFld := pDesFld;

  CheckField('DesFld');
end;

function T998FLD.GetCanNul: Integer;
begin
  Result := FCanNul;
end;

procedure T998FLD.SetCanNul(const pCanNul: Integer);
begin
  FCanNul := pCanNul;

  CheckField('CanNul');
end;

function T998FLD.GetCodHlp: Integer;
begin
  Result := FCodHlp;
end;

procedure T998FLD.SetCodHlp(const pCodHlp: Integer);
begin
  FCodHlp := pCodHlp;

  CheckField('CodHlp');
end;

function T998FLD.GetValDef: string;
begin
  Result := FValDef;
end;

procedure T998FLD.SetValDef(const pValDef: string);
begin
  FValDef := pValDef;

  CheckField('ValDef');
end;

function T998FLD.GetOwnMod: string;
begin
  Result := FOwnMod;
end;

procedure T998FLD.SetOwnMod(const pOwnMod: string);
begin
  FOwnMod := pOwnMod;

  CheckField('OwnMod');
end;

function T998FLD.GetFldDep: string;
begin
  Result := FFldDep;
end;

procedure T998FLD.SetFldDep(const pFldDep: string);
begin
  FFldDep := pFldDep;

  CheckField('FldDep');
end;

function T998FLD.GetCodUsu: Integer;
begin
  Result := FCodUsu;
end;

procedure T998FLD.SetCodUsu(const pCodUsu: Integer);
begin
  FCodUsu := pCodUsu;

  CheckField('CodUsu');
end;

function T998FLD.GetOriNam: string;
begin
  Result := FOriNam;
end;

procedure T998FLD.SetOriNam(const pOriNam: string);
begin
  FOriNam := pOriNam;

  CheckField('OriNam');
end;

function T998FLD.GetLasUpd: TDate;
begin
  Result := FLasUpd;
end;

procedure T998FLD.SetLasUpd(const pLasUpd: TDate);
begin
  FLasUpd := pLasUpd;

  CheckField('LasUpd');
end;

function T998FLD.GetReqFld: Char;
begin
  Result := FReqFld;
end;

procedure T998FLD.SetReqFld(const pReqFld: Char);
begin
  FReqFld := pReqFld;

  CheckField('ReqFld');
end;

function T998FLD.GetObjSis: Char;
begin
  Result := FObjSis;
end;

procedure T998FLD.SetObjSis(const pObjSis: Char);
begin
  FObjSis := pObjSis;

  CheckField('ObjSis');
end;

function T998FLD.GetTblNamOLD: string;
begin
  Result := FTblNamOLD;
end;

procedure T998FLD.SetTblNamOLD(const pTblNam: string);
begin
  FTblNamOLD := pTblNam;
end;

function T998FLD.GetFldNamOLD: string;
begin
  Result := FFldNamOLD;
end;

procedure T998FLD.SetFldNamOLD(const pFldNam: string);
begin
  FFldNamOLD := pFldNam;
end;

function T998FLD.GetFldOrdOLD: Integer;
begin
  Result := FFldOrdOLD;
end;

procedure T998FLD.SetFldOrdOLD(const pFldOrd: Integer);
begin
  FFldOrdOLD := pFldOrd;
end;

function T998FLD.GetMskFldOLD: string;
begin
  Result := FMskFldOLD;
end;

procedure T998FLD.SetMskFldOLD(const pMskFld: string);
begin
  FMskFldOLD := pMskFld;
end;

function T998FLD.GetDatTypOLD: Integer;
begin
  Result := FDatTypOLD;
end;

procedure T998FLD.SetDatTypOLD(const pDatTyp: Integer);
begin
  FDatTypOLD := pDatTyp;
end;

function T998FLD.GetEnuNamOLD: string;
begin
  Result := FEnuNamOLD;
end;

procedure T998FLD.SetEnuNamOLD(const pEnuNam: string);
begin
  FEnuNamOLD := pEnuNam;
end;

function T998FLD.GetLenFldOLD: Integer;
begin
  Result := FLenFldOLD;
end;

procedure T998FLD.SetLenFldOLD(const pLenFld: Integer);
begin
  FLenFldOLD := pLenFld;
end;

function T998FLD.GetPreFldOLD: Integer;
begin
  Result := FPreFldOLD;
end;

procedure T998FLD.SetPreFldOLD(const pPreFld: Integer);
begin
  FPreFldOLD := pPreFld;
end;

function T998FLD.GetShrTitOLD: string;
begin
  Result := FShrTitOLD;
end;

procedure T998FLD.SetShrTitOLD(const pShrTit: string);
begin
  FShrTitOLD := pShrTit;
end;

function T998FLD.GetLgnTitOLD: string;
begin
  Result := FLgnTitOLD;
end;

procedure T998FLD.SetLgnTitOLD(const pLgnTit: string);
begin
  FLgnTitOLD := pLgnTit;
end;

function T998FLD.GetDesFldOLD: string;
begin
  Result := FDesFldOLD;
end;

procedure T998FLD.SetDesFldOLD(const pDesFld: string);
begin
  FDesFldOLD := pDesFld;
end;

function T998FLD.GetCanNulOLD: Integer;
begin
  Result := FCanNulOLD;
end;

procedure T998FLD.SetCanNulOLD(const pCanNul: Integer);
begin
  FCanNulOLD := pCanNul;
end;

function T998FLD.GetCodHlpOLD: Integer;
begin
  Result := FCodHlpOLD;
end;

procedure T998FLD.SetCodHlpOLD(const pCodHlp: Integer);
begin
  FCodHlpOLD := pCodHlp;
end;

function T998FLD.GetValDefOLD: string;
begin
  Result := FValDefOLD;
end;

procedure T998FLD.SetValDefOLD(const pValDef: string);
begin
  FValDefOLD := pValDef;
end;

function T998FLD.GetOwnModOLD: string;
begin
  Result := FOwnModOLD;
end;

procedure T998FLD.SetOwnModOLD(const pOwnMod: string);
begin
  FOwnModOLD := pOwnMod;
end;

function T998FLD.GetFldDepOLD: string;
begin
  Result := FFldDepOLD;
end;

procedure T998FLD.SetFldDepOLD(const pFldDep: string);
begin
  FFldDepOLD := pFldDep;
end;

function T998FLD.GetCodUsuOLD: Integer;
begin
  Result := FCodUsuOLD;
end;

procedure T998FLD.SetCodUsuOLD(const pCodUsu: Integer);
begin
  FCodUsuOLD := pCodUsu;
end;

function T998FLD.GetOriNamOLD: string;
begin
  Result := FOriNamOLD;
end;

procedure T998FLD.SetOriNamOLD(const pOriNam: string);
begin
  FOriNamOLD := pOriNam;
end;

function T998FLD.GetLasUpdOLD: TDate;
begin
  Result := FLasUpdOLD;
end;

procedure T998FLD.SetLasUpdOLD(const pLasUpd: TDate);
begin
  FLasUpdOLD := pLasUpd;
end;

function T998FLD.GetReqFldOLD: Char;
begin
  Result := FReqFldOLD;
end;

procedure T998FLD.SetReqFldOLD(const pReqFld: Char);
begin
  FReqFldOLD := pReqFld;
end;

function T998FLD.GetObjSisOLD: Char;
begin
  Result := FObjSisOLD;
end;

procedure T998FLD.SetObjSisOLD(const pObjSis: Char);
begin
  FObjSisOLD := pObjSis;
end;

procedure T998FLD.Registros_OLD();
begin
  FTblNamOLD := FTblNam;
  FFldNamOLD := FFldNam;
  FFldOrdOLD := FFldOrd;
  FMskFldOLD := FMskFld;
  FDatTypOLD := FDatTyp;
  FEnuNamOLD := FEnuNam;
  FLenFldOLD := FLenFld;
  FPreFldOLD := FPreFld;
  FShrTitOLD := FShrTit;
  FLgnTitOLD := FLgnTit;
  FDesFldOLD := FDesFld;
  FCanNulOLD := FCanNul;
  FCodHlpOLD := FCodHlp;
  FValDefOLD := FValDef;
  FOwnModOLD := FOwnMod;
  FFldDepOLD := FFldDep;
  FCodUsuOLD := FCodUsu;
  FOriNamOLD := FOriNam;
  FLasUpdOLD := FLasUpd;
  FReqFldOLD := FReqFld;
  FObjSisOLD := FObjSis;

  inherited;
end;

procedure T998FLD.RetornarValores();
begin
  FTblNam := FTblNamOLD;
  FFldNam := FFldNamOLD;
  FFldOrd := FFldOrdOLD;
  FMskFld := FMskFldOLD;
  FDatTyp := FDatTypOLD;
  FEnuNam := FEnuNamOLD;
  FLenFld := FLenFldOLD;
  FPreFld := FPreFldOLD;
  FShrTit := FShrTitOLD;
  FLgnTit := FLgnTitOLD;
  FDesFld := FDesFldOLD;
  FCanNul := FCanNulOLD;
  FCodHlp := FCodHlpOLD;
  FValDef := FValDefOLD;
  FOwnMod := FOwnModOLD;
  FFldDep := FFldDepOLD;
  FCodUsu := FCodUsuOLD;
  FOriNam := FOriNamOLD;
  FLasUpd := FLasUpdOLD;
  FReqFld := FReqFldOLD;
  FObjSis := FObjSisOLD;
end;

end.
