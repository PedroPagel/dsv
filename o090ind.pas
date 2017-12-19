unit o090ind;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T090IND = class(TTabelaUsuario)
  private
    FUSU_IndFin: string;
    FUSU_CodEmp: Integer;
    FUSU_DatGer: TDate;
    FUSU_UsuGer: Integer;
    FUSU_ObsInd: string;
    FUSU_DatIni: TDate;
    FUSU_DatFin: TDate;
    FUSU_CodDbc: Integer;
    FUSU_UsuAlt: Integer;
    FUSU_UsuRes: Integer;
    FUSU_DatAlt: TDate;
    FUSU_SeqCot: Integer;

    FUSU_IndFinOLD: string;
    FUSU_CodEmpOLD: Integer;
    FUSU_DatGerOLD: TDate;
    FUSU_UsuGerOLD: Integer;
    FUSU_ObsIndOLD: string;
    FUSU_DatIniOLD: TDate;
    FUSU_DatFinOLD: TDate;
    FUSU_CodDbcOLD: Integer;
    FUSU_UsuAltOLD: Integer;
    FUSU_UsuResOLD: Integer;
    FUSU_DatAltOLD: TDate;
    FUSU_SeqCotOLD: Integer;

    function GetUSU_IndFin: string;
    procedure SetUSU_IndFin(const pUSU_IndFin: string);
    function GetUSU_CodEmp: Integer;
    procedure SetUSU_CodEmp(const pUSU_CodEmp: Integer);
    function GetUSU_DatGer: TDate;
    procedure SetUSU_DatGer(const pUSU_DatGer: TDate);
    function GetUSU_UsuGer: Integer;
    procedure SetUSU_UsuGer(const pUSU_UsuGer: Integer);
    function GetUSU_ObsInd: string;
    procedure SetUSU_ObsInd(const pUSU_ObsInd: string);
    function GetUSU_DatIni: TDate;
    procedure SetUSU_DatIni(const pUSU_DatIni: TDate);
    function GetUSU_DatFin: TDate;
    procedure SetUSU_DatFin(const pUSU_DatFin: TDate);
    function GetUSU_CodDbc: Integer;
    procedure SetUSU_CodDbc(const pUSU_CodDbc: Integer);
    function GetUSU_UsuAlt: Integer;
    procedure SetUSU_UsuAlt(const pUSU_UsuAlt: Integer);
    function GetUSU_UsuRes: Integer;
    procedure SetUSU_UsuRes(const pUSU_UsuRes: Integer);
    function GetUSU_DatAlt: TDate;
    procedure SetUSU_DatAlt(const pUSU_DatAlt: TDate);
    function GetUSU_SeqCot: Integer;
    procedure SetUSU_SeqCot(const pUSU_SeqCot: Integer);

    function GetUSU_IndFinOld: string;
    procedure SetUSU_IndFinOld(const pUSU_IndFin: string);
    function GetUSU_CodEmpOld: Integer;
    procedure SetUSU_CodEmpOld(const pUSU_CodEmp: Integer);
    function GetUSU_DatGerOld: TDate;
    procedure SetUSU_DatGerOld(const pUSU_DatGer: TDate);
    function GetUSU_UsuGerOld: Integer;
    procedure SetUSU_UsuGerOld(const pUSU_UsuGer: Integer);
    function GetUSU_ObsIndOld: string;
    procedure SetUSU_ObsIndOld(const pUSU_ObsInd: string);
    function GetUSU_DatIniOld: TDate;
    procedure SetUSU_DatIniOld(const pUSU_DatIni: TDate);
    function GetUSU_DatFinOld: TDate;
    procedure SetUSU_DatFinOld(const pUSU_DatFin: TDate);
    function GetUSU_CodDbcOld: Integer;
    procedure SetUSU_CodDbcOld(const pUSU_CodDbc: Integer);
    function GetUSU_UsuAltOld: Integer;
    procedure SetUSU_UsuAltOld(const pUSU_UsuAlt: Integer);
    function GetUSU_UsuResOld: Integer;
    procedure SetUSU_UsuResOld(const pUSU_UsuRes: Integer);
    function GetUSU_DatAltOld: TDate;
    procedure SetUSU_DatAltOld(const pUSU_DatAlt: TDate);
    function GetUSU_SeqCotOld: Integer;
    procedure SetUSU_SeqCotOld(const pUSU_SeqCot: Integer);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_IndFin: string read GetUSU_IndFin write SetUSU_IndFin;
    property USU_CodEmp: Integer read GetUSU_CodEmp write SetUSU_CodEmp;
    property USU_DatGer: TDate read GetUSU_DatGer write SetUSU_DatGer;
    property USU_UsuGer: Integer read GetUSU_UsuGer write SetUSU_UsuGer;
    property USU_ObsInd: string read GetUSU_ObsInd write SetUSU_ObsInd;
    property USU_DatIni: TDate read GetUSU_DatIni write SetUSU_DatIni;
    property USU_DatFin: TDate read GetUSU_DatFin write SetUSU_DatFin;
    property USU_CodDbc: Integer read GetUSU_CodDbc write SetUSU_CodDbc;
    property USU_UsuAlt: Integer read GetUSU_UsuAlt write SetUSU_UsuAlt;
    property USU_UsuRes: Integer read GetUSU_UsuRes write SetUSU_UsuRes;
    property USU_DatAlt: TDate read GetUSU_DatAlt write SetUSU_DatAlt;
    property USU_SeqCot: Integer read GetUSU_SeqCot write SetUSU_SeqCot;

    property OLD_USU_IndFin: string read GetUSU_IndFinOLD write SetUSU_IndFinOLD;
    property OLD_USU_CodEmp: Integer read GetUSU_CodEmpOLD write SetUSU_CodEmpOLD;
    property OLD_USU_DatGer: TDate read GetUSU_DatGerOLD write SetUSU_DatGerOLD;
    property OLD_USU_UsuGer: Integer read GetUSU_UsuGerOLD write SetUSU_UsuGerOLD;
    property OLD_USU_ObsInd: string read GetUSU_ObsIndOLD write SetUSU_ObsIndOLD;
    property OLD_USU_DatIni: TDate read GetUSU_DatIniOLD write SetUSU_DatIniOLD;
    property OLD_USU_DatFin: TDate read GetUSU_DatFinOLD write SetUSU_DatFinOLD;
    property OLD_USU_CodDbc: Integer read GetUSU_CodDbcOLD write SetUSU_CodDbcOLD;
    property OLD_USU_UsuAlt: Integer read GetUSU_UsuAltOLD write SetUSU_UsuAltOLD;
    property OLD_USU_UsuRes: Integer read GetUSU_UsuResOLD write SetUSU_UsuResOLD;
    property OLD_USU_DatAlt: TDate read GetUSU_DatAltOLD write SetUSU_DatAltOLD;
    property OLD_USU_SeqCot: Integer read GetUSU_SeqCotOLD write SetUSU_SeqCotOLD;
  end;

implementation

{ T090IND }

constructor T090IND.Create();
begin
  AddPrimaryKeys('USU_ID');

  inherited Create('USU_T090IND');
end;

destructor T090IND.Destroy();
begin
  inherited;
end;

function T090IND.GetUSU_IndFin: string;
begin
  Result := FUSU_IndFin;
end;

procedure T090IND.SetUSU_IndFin(const pUSU_IndFin: string);
begin
  FUSU_IndFin := pUSU_IndFin;

  CheckField('USU_IndFin');
end;

function T090IND.GetUSU_CodEmp: Integer;
begin
  Result := FUSU_CodEmp;
end;

procedure T090IND.SetUSU_CodEmp(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmp := pUSU_CodEmp;

  CheckField('USU_CodEmp');
end;

function T090IND.GetUSU_DatGer: TDate;
begin
  Result := FUSU_DatGer;
end;

procedure T090IND.SetUSU_DatGer(const pUSU_DatGer: TDate);
begin
  FUSU_DatGer := pUSU_DatGer;

  CheckField('USU_DatGer');
end;

function T090IND.GetUSU_UsuGer: Integer;
begin
  Result := FUSU_UsuGer;
end;

procedure T090IND.SetUSU_UsuGer(const pUSU_UsuGer: Integer);
begin
  FUSU_UsuGer := pUSU_UsuGer;

  CheckField('USU_UsuGer');
end;

function T090IND.GetUSU_ObsInd: string;
begin
  Result := FUSU_ObsInd;
end;

procedure T090IND.SetUSU_ObsInd(const pUSU_ObsInd: string);
begin
  FUSU_ObsInd := pUSU_ObsInd;

  CheckField('USU_ObsInd');
end;

function T090IND.GetUSU_DatIni: TDate;
begin
  Result := FUSU_DatIni;
end;

procedure T090IND.SetUSU_DatIni(const pUSU_DatIni: TDate);
begin
  FUSU_DatIni := pUSU_DatIni;

  CheckField('USU_DatIni');
end;

function T090IND.GetUSU_DatFin: TDate;
begin
  Result := FUSU_DatFin;
end;

procedure T090IND.SetUSU_DatFin(const pUSU_DatFin: TDate);
begin
  FUSU_DatFin := pUSU_DatFin;

  CheckField('USU_DatFin');
end;

function T090IND.GetUSU_CodDbc: Integer;
begin
  Result := FUSU_CodDbc;
end;

procedure T090IND.SetUSU_CodDbc(const pUSU_CodDbc: Integer);
begin
  FUSU_CodDbc := pUSU_CodDbc;

  CheckField('USU_CodDbc');
end;

function T090IND.GetUSU_UsuAlt: Integer;
begin
  Result := FUSU_UsuAlt;
end;

procedure T090IND.SetUSU_UsuAlt(const pUSU_UsuAlt: Integer);
begin
  FUSU_UsuAlt := pUSU_UsuAlt;

  CheckField('USU_UsuAlt');
end;

function T090IND.GetUSU_UsuRes: Integer;
begin
  Result := FUSU_UsuRes;
end;

procedure T090IND.SetUSU_UsuRes(const pUSU_UsuRes: Integer);
begin
  FUSU_UsuRes := pUSU_UsuRes;

  CheckField('USU_UsuRes');
end;

function T090IND.GetUSU_DatAlt: TDate;
begin
  Result := FUSU_DatAlt;
end;

procedure T090IND.SetUSU_DatAlt(const pUSU_DatAlt: TDate);
begin
  FUSU_DatAlt := pUSU_DatAlt;

  CheckField('USU_DatAlt');
end;

function T090IND.GetUSU_SeqCot: Integer;
begin
  Result := FUSU_SeqCot;
end;

procedure T090IND.SetUSU_SeqCot(const pUSU_SeqCot: Integer);
begin
  FUSU_SeqCot := pUSU_SeqCot;

  CheckField('USU_SeqCot');
end;

function T090IND.GetUSU_IndFinOLD: string;
begin
  Result := FUSU_IndFinOLD;
end;

procedure T090IND.SetUSU_IndFinOLD(const pUSU_IndFin: string);
begin
  FUSU_IndFinOLD := pUSU_IndFin;
end;

function T090IND.GetUSU_CodEmpOLD: Integer;
begin
  Result := FUSU_CodEmpOLD;
end;

procedure T090IND.SetUSU_CodEmpOLD(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmpOLD := pUSU_CodEmp;
end;

function T090IND.GetUSU_DatGerOLD: TDate;
begin
  Result := FUSU_DatGerOLD;
end;

procedure T090IND.SetUSU_DatGerOLD(const pUSU_DatGer: TDate);
begin
  FUSU_DatGerOLD := pUSU_DatGer;
end;

function T090IND.GetUSU_UsuGerOLD: Integer;
begin
  Result := FUSU_UsuGerOLD;
end;

procedure T090IND.SetUSU_UsuGerOLD(const pUSU_UsuGer: Integer);
begin
  FUSU_UsuGerOLD := pUSU_UsuGer;
end;

function T090IND.GetUSU_ObsIndOLD: string;
begin
  Result := FUSU_ObsIndOLD;
end;

procedure T090IND.SetUSU_ObsIndOLD(const pUSU_ObsInd: string);
begin
  FUSU_ObsIndOLD := pUSU_ObsInd;
end;

function T090IND.GetUSU_DatIniOLD: TDate;
begin
  Result := FUSU_DatIniOLD;
end;

procedure T090IND.SetUSU_DatIniOLD(const pUSU_DatIni: TDate);
begin
  FUSU_DatIniOLD := pUSU_DatIni;
end;

function T090IND.GetUSU_DatFinOLD: TDate;
begin
  Result := FUSU_DatFinOLD;
end;

procedure T090IND.SetUSU_DatFinOLD(const pUSU_DatFin: TDate);
begin
  FUSU_DatFinOLD := pUSU_DatFin;
end;

function T090IND.GetUSU_CodDbcOLD: Integer;
begin
  Result := FUSU_CodDbcOLD;
end;

procedure T090IND.SetUSU_CodDbcOLD(const pUSU_CodDbc: Integer);
begin
  FUSU_CodDbcOLD := pUSU_CodDbc;
end;

function T090IND.GetUSU_UsuAltOLD: Integer;
begin
  Result := FUSU_UsuAltOLD;
end;

procedure T090IND.SetUSU_UsuAltOLD(const pUSU_UsuAlt: Integer);
begin
  FUSU_UsuAltOLD := pUSU_UsuAlt;
end;

function T090IND.GetUSU_UsuResOLD: Integer;
begin
  Result := FUSU_UsuResOLD;
end;

procedure T090IND.SetUSU_UsuResOLD(const pUSU_UsuRes: Integer);
begin
  FUSU_UsuResOLD := pUSU_UsuRes;
end;

function T090IND.GetUSU_DatAltOLD: TDate;
begin
  Result := FUSU_DatAltOLD;
end;

procedure T090IND.SetUSU_DatAltOLD(const pUSU_DatAlt: TDate);
begin
  FUSU_DatAltOLD := pUSU_DatAlt;
end;

function T090IND.GetUSU_SeqCotOLD: Integer;
begin
  Result := FUSU_SeqCotOLD;
end;

procedure T090IND.SetUSU_SeqCotOLD(const pUSU_SeqCot: Integer);
begin
  FUSU_SeqCotOLD := pUSU_SeqCot;
end;

procedure T090IND.Registros_OLD();
begin
  FUSU_IndFinOLD := FUSU_IndFin;
  FUSU_CodEmpOLD := FUSU_CodEmp;
  FUSU_DatGerOLD := FUSU_DatGer;
  FUSU_UsuGerOLD := FUSU_UsuGer;
  FUSU_ObsIndOLD := FUSU_ObsInd;
  FUSU_DatIniOLD := FUSU_DatIni;
  FUSU_DatFinOLD := FUSU_DatFin;
  FUSU_CodDbcOLD := FUSU_CodDbc;
  FUSU_UsuAltOLD := FUSU_UsuAlt;
  FUSU_UsuResOLD := FUSU_UsuRes;
  FUSU_DatAltOLD := FUSU_DatAlt;
  FUSU_SeqCotOLD := FUSU_SeqCot;

  inherited;
end;

procedure T090IND.RetornarValores();
begin
  FUSU_IndFin := FUSU_IndFinOLD;
  FUSU_CodEmp := FUSU_CodEmpOLD;
  FUSU_DatGer := FUSU_DatGerOLD;
  FUSU_UsuGer := FUSU_UsuGerOLD;
  FUSU_ObsInd := FUSU_ObsIndOLD;
  FUSU_DatIni := FUSU_DatIniOLD;
  FUSU_DatFin := FUSU_DatFinOLD;
  FUSU_CodDbc := FUSU_CodDbcOLD;
  FUSU_UsuAlt := FUSU_UsuAltOLD;
  FUSU_UsuRes := FUSU_UsuResOLD;
  FUSU_DatAlt := FUSU_DatAltOLD;
  FUSU_SeqCot := FUSU_SeqCotOLD;
end;

end.
