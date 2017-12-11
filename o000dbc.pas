unit o000dbc;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T000DBC = class(TTabelaUsuario)
  private
    FUSU_CodDbc: Integer;
    FUSU_NomDbc: string;
    FUSU_DatInd: TDate;
    FUSU_VlrDbc: Double;
    FUSU_SeqCot: Integer;

    FUSU_CodDbcOLD: Integer;
    FUSU_NomDbcOLD: string;
    FUSU_DatIndOLD: TDate;
    FUSU_VlrDbcOLD: Double;
    FUSU_SeqCotOLD: Integer;

    function GetUSU_CodDbc: Integer;
    procedure SetUSU_CodDbc(const pUSU_CodDbc: Integer);
    function GetUSU_NomDbc: string;
    procedure SetUSU_NomDbc(const pUSU_NomDbc: string);
    function GetUSU_DatInd: TDate;
    procedure SetUSU_DatInd(const pUSU_DatInd: TDate);
    function GetUSU_VlrDbc: Double;
    procedure SetUSU_VlrDbc(const pUSU_VlrDbc: Double);
    function GetUSU_SeqCot: Integer;
    procedure SetUSU_SeqCot(const pUSU_SeqCot: Integer);

    function GetUSU_CodDbcOld: Integer;
    procedure SetUSU_CodDbcOld(const pUSU_CodDbc: Integer);
    function GetUSU_NomDbcOld: string;
    procedure SetUSU_NomDbcOld(const pUSU_NomDbc: string);
    function GetUSU_DatIndOld: TDate;
    procedure SetUSU_DatIndOld(const pUSU_DatInd: TDate);
    function GetUSU_VlrDbcOld: Double;
    procedure SetUSU_VlrDbcOld(const pUSU_VlrDbc: Double);
    function GetUSU_SeqCotOld: Integer;
    procedure SetUSU_SeqCotOld(const pUSU_SeqCot: Integer);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_CodDbc: Integer read GetUSU_CodDbc write SetUSU_CodDbc;
    property USU_NomDbc: string read GetUSU_NomDbc write SetUSU_NomDbc;
    property USU_DatInd: TDate read GetUSU_DatInd write SetUSU_DatInd;
    property USU_VlrDbc: Double read GetUSU_VlrDbc write SetUSU_VlrDbc;
    property USU_SeqCot: Integer read GetUSU_SeqCot write SetUSU_SeqCot;

    property OLD_USU_CodDbc: Integer read GetUSU_CodDbcOLD write SetUSU_CodDbcOLD;
    property OLD_USU_NomDbc: string read GetUSU_NomDbcOLD write SetUSU_NomDbcOLD;
    property OLD_USU_DatInd: TDate read GetUSU_DatIndOLD write SetUSU_DatIndOLD;
    property OLD_USU_VlrDbc: Double read GetUSU_VlrDbcOLD write SetUSU_VlrDbcOLD;
    property OLD_USU_SeqCot: Integer read GetUSU_SeqCotOLD write SetUSU_SeqCotOLD;
  end;

implementation

{ T000DBC }

constructor T000DBC.Create();
begin
  AddPrimaryKeys('USU_CodDbc;USU_SeqCot');

  inherited Create('USU_T000DBC');
end;

destructor T000DBC.Destroy();
begin
  inherited;
end;

function T000DBC.GetUSU_CodDbc: Integer;
begin
  Result := FUSU_CodDbc;
end;

procedure T000DBC.SetUSU_CodDbc(const pUSU_CodDbc: Integer);
begin
  FUSU_CodDbc := pUSU_CodDbc;

  CheckField('USU_CodDbc');
end;

function T000DBC.GetUSU_NomDbc: string;
begin
  Result := FUSU_NomDbc;
end;

procedure T000DBC.SetUSU_NomDbc(const pUSU_NomDbc: string);
begin
  FUSU_NomDbc := pUSU_NomDbc;

  CheckField('USU_NomDbc');
end;

function T000DBC.GetUSU_DatInd: TDate;
begin
  Result := FUSU_DatInd;
end;

procedure T000DBC.SetUSU_DatInd(const pUSU_DatInd: TDate);
begin
  FUSU_DatInd := pUSU_DatInd;

  CheckField('USU_DatInd');
end;

function T000DBC.GetUSU_VlrDbc: Double;
begin
  Result := FUSU_VlrDbc;
end;

procedure T000DBC.SetUSU_VlrDbc(const pUSU_VlrDbc: Double);
begin
  FUSU_VlrDbc := pUSU_VlrDbc;

  CheckField('USU_VlrDbc');
end;

function T000DBC.GetUSU_SeqCot: Integer;
begin
  Result := FUSU_SeqCot;
end;

procedure T000DBC.SetUSU_SeqCot(const pUSU_SeqCot: Integer);
begin
  FUSU_SeqCot := pUSU_SeqCot;

  CheckField('USU_SeqCot');
end;

function T000DBC.GetUSU_CodDbcOLD: Integer;
begin
  Result := FUSU_CodDbcOLD;
end;

procedure T000DBC.SetUSU_CodDbcOLD(const pUSU_CodDbc: Integer);
begin
  FUSU_CodDbcOLD := pUSU_CodDbc;
end;

function T000DBC.GetUSU_NomDbcOLD: string;
begin
  Result := FUSU_NomDbcOLD;
end;

procedure T000DBC.SetUSU_NomDbcOLD(const pUSU_NomDbc: string);
begin
  FUSU_NomDbcOLD := pUSU_NomDbc;
end;

function T000DBC.GetUSU_DatIndOLD: TDate;
begin
  Result := FUSU_DatIndOLD;
end;

procedure T000DBC.SetUSU_DatIndOLD(const pUSU_DatInd: TDate);
begin
  FUSU_DatIndOLD := pUSU_DatInd;
end;

function T000DBC.GetUSU_VlrDbcOLD: Double;
begin
  Result := FUSU_VlrDbcOLD;
end;

procedure T000DBC.SetUSU_VlrDbcOLD(const pUSU_VlrDbc: Double);
begin
  FUSU_VlrDbcOLD := pUSU_VlrDbc;
end;

function T000DBC.GetUSU_SeqCotOLD: Integer;
begin
  Result := FUSU_SeqCotOLD;
end;

procedure T000DBC.SetUSU_SeqCotOLD(const pUSU_SeqCot: Integer);
begin
  FUSU_SeqCotOLD := pUSU_SeqCot;
end;

procedure T000DBC.Registros_OLD();
begin
  FUSU_CodDbcOLD := FUSU_CodDbc;
  FUSU_NomDbcOLD := FUSU_NomDbc;
  FUSU_DatIndOLD := FUSU_DatInd;
  FUSU_VlrDbcOLD := FUSU_VlrDbc;
  FUSU_SeqCotOLD := FUSU_SeqCot;

  inherited;
end;

procedure T000DBC.RetornarValores();
begin
  FUSU_CodDbc := FUSU_CodDbcOLD;
  FUSU_NomDbc := FUSU_NomDbcOLD;
  FUSU_DatInd := FUSU_DatIndOLD;
  FUSU_VlrDbc := FUSU_VlrDbcOLD;
  FUSU_SeqCot := FUSU_SeqCotOLD;
end;

end.
