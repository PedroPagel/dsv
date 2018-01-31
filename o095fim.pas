unit o095fim;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T095FIM = class(TTabelaUsuario)
  private
    FUSU_CodFor: Integer;
    FUSU_UsuGer: Integer;
    FUSU_DatGer: TDate;
    FUSU_UsuAlt: Integer;
    FUSU_PerOrd: Char;
    FUSU_DatAlt: TDate;
    FUSU_ObsFor: string;
    FUSU_CodGfi: string;
    FUSU_PerDes: Double;
    FUSU_DiaReg: Integer;

    FUSU_CodForOLD: Integer;
    FUSU_UsuGerOLD: Integer;
    FUSU_DatGerOLD: TDate;
    FUSU_UsuAltOLD: Integer;
    FUSU_PerOrdOLD: Char;
    FUSU_DatAltOLD: TDate;
    FUSU_ObsForOLD: string;
    FUSU_CodGfiOLD: string;
    FUSU_PerDesOLD: Double;
    FUSU_DiaRegOLD: Integer;

    function GetUSU_CodFor: Integer;
    procedure SetUSU_CodFor(const pUSU_CodFor: Integer);
    function GetUSU_UsuGer: Integer;
    procedure SetUSU_UsuGer(const pUSU_UsuGer: Integer);
    function GetUSU_DatGer: TDate;
    procedure SetUSU_DatGer(const pUSU_DatGer: TDate);
    function GetUSU_UsuAlt: Integer;
    procedure SetUSU_UsuAlt(const pUSU_UsuAlt: Integer);
    function GetUSU_PerOrd: Char;
    procedure SetUSU_PerOrd(const pUSU_PerOrd: Char);
    function GetUSU_DatAlt: TDate;
    procedure SetUSU_DatAlt(const pUSU_DatAlt: TDate);
    function GetUSU_ObsFor: string;
    procedure SetUSU_ObsFor(const pUSU_ObsFor: string);
    function GetUSU_CodGfi: string;
    procedure SetUSU_CodGfi(const pUSU_CodGfi: string);
    function GetUSU_PerDes: Double;
    procedure SetUSU_PerDes(const pUSU_PerDes: Double);
    function GetUSU_DiaReg: Integer;
    procedure SetUSU_DiaReg(const pUSU_DiaReg: Integer);

    function GetUSU_CodForOld: Integer;
    procedure SetUSU_CodForOld(const pUSU_CodFor: Integer);
    function GetUSU_UsuGerOld: Integer;
    procedure SetUSU_UsuGerOld(const pUSU_UsuGer: Integer);
    function GetUSU_DatGerOld: TDate;
    procedure SetUSU_DatGerOld(const pUSU_DatGer: TDate);
    function GetUSU_UsuAltOld: Integer;
    procedure SetUSU_UsuAltOld(const pUSU_UsuAlt: Integer);
    function GetUSU_PerOrdOld: Char;
    procedure SetUSU_PerOrdOld(const pUSU_PerOrd: Char);
    function GetUSU_DatAltOld: TDate;
    procedure SetUSU_DatAltOld(const pUSU_DatAlt: TDate);
    function GetUSU_ObsForOld: string;
    procedure SetUSU_ObsForOld(const pUSU_ObsFor: string);
    function GetUSU_CodGfiOld: string;
    procedure SetUSU_CodGfiOld(const pUSU_CodGfi: string);
    function GetUSU_PerDesOld: Double;
    procedure SetUSU_PerDesOld(const pUSU_PerDes: Double);
    function GetUSU_DiaRegOld: Integer;
    procedure SetUSU_DiaRegOld(const pUSU_DiaReg: Integer);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_CodFor: Integer read GetUSU_CodFor write SetUSU_CodFor;
    property USU_UsuGer: Integer read GetUSU_UsuGer write SetUSU_UsuGer;
    property USU_DatGer: TDate read GetUSU_DatGer write SetUSU_DatGer;
    property USU_UsuAlt: Integer read GetUSU_UsuAlt write SetUSU_UsuAlt;
    property USU_PerOrd: Char read GetUSU_PerOrd write SetUSU_PerOrd;
    property USU_DatAlt: TDate read GetUSU_DatAlt write SetUSU_DatAlt;
    property USU_ObsFor: string read GetUSU_ObsFor write SetUSU_ObsFor;
    property USU_CodGfi: string read GetUSU_CodGfi write SetUSU_CodGfi;
    property USU_PerDes: Double read GetUSU_PerDes write SetUSU_PerDes;
    property USU_DiaReg: Integer read GetUSU_DiaReg write SetUSU_DiaReg;

    property OLD_USU_CodFor: Integer read GetUSU_CodForOLD write SetUSU_CodForOLD;
    property OLD_USU_UsuGer: Integer read GetUSU_UsuGerOLD write SetUSU_UsuGerOLD;
    property OLD_USU_DatGer: TDate read GetUSU_DatGerOLD write SetUSU_DatGerOLD;
    property OLD_USU_UsuAlt: Integer read GetUSU_UsuAltOLD write SetUSU_UsuAltOLD;
    property OLD_USU_PerOrd: Char read GetUSU_PerOrdOLD write SetUSU_PerOrdOLD;
    property OLD_USU_DatAlt: TDate read GetUSU_DatAltOLD write SetUSU_DatAltOLD;
    property OLD_USU_ObsFor: string read GetUSU_ObsForOLD write SetUSU_ObsForOLD;
    property OLD_USU_CodGfi: string read GetUSU_CodGfiOLD write SetUSU_CodGfiOLD;
    property OLD_USU_PerDes: Double read GetUSU_PerDesOLD write SetUSU_PerDesOLD;
    property OLD_USU_DiaReg: Integer read GetUSU_DiaRegOLD write SetUSU_DiaRegOLD;
  end;

implementation

{ T095FIM }

constructor T095FIM.Create();
begin
  AddForeignKeys(['USU_CodFor'], ['CodFor']);
  AddPrimaryKeys('USU_Id');

  inherited Create('USU_T095FIM');
end;

destructor T095FIM.Destroy();
begin
  inherited;
end;

function T095FIM.GetUSU_CodFor: Integer;
begin
  Result := FUSU_CodFor;
end;

procedure T095FIM.SetUSU_CodFor(const pUSU_CodFor: Integer);
begin
  FUSU_CodFor := pUSU_CodFor;

  CheckField('USU_CodFor');
end;

function T095FIM.GetUSU_UsuGer: Integer;
begin
  Result := FUSU_UsuGer;
end;

procedure T095FIM.SetUSU_UsuGer(const pUSU_UsuGer: Integer);
begin
  FUSU_UsuGer := pUSU_UsuGer;

  CheckField('USU_UsuGer');
end;

function T095FIM.GetUSU_DatGer: TDate;
begin
  Result := FUSU_DatGer;
end;

procedure T095FIM.SetUSU_DatGer(const pUSU_DatGer: TDate);
begin
  FUSU_DatGer := pUSU_DatGer;

  CheckField('USU_DatGer');
end;

function T095FIM.GetUSU_UsuAlt: Integer;
begin
  Result := FUSU_UsuAlt;
end;

procedure T095FIM.SetUSU_UsuAlt(const pUSU_UsuAlt: Integer);
begin
  FUSU_UsuAlt := pUSU_UsuAlt;

  CheckField('USU_UsuAlt');
end;

function T095FIM.GetUSU_PerOrd: Char;
begin
  Result := FUSU_PerOrd;
end;

procedure T095FIM.SetUSU_PerOrd(const pUSU_PerOrd: Char);
begin
  FUSU_PerOrd := pUSU_PerOrd;

  CheckField('USU_PerOrd');
end;

function T095FIM.GetUSU_DatAlt: TDate;
begin
  Result := FUSU_DatAlt;
end;

procedure T095FIM.SetUSU_DatAlt(const pUSU_DatAlt: TDate);
begin
  FUSU_DatAlt := pUSU_DatAlt;

  CheckField('USU_DatAlt');
end;

function T095FIM.GetUSU_ObsFor: string;
begin
  Result := FUSU_ObsFor;
end;

procedure T095FIM.SetUSU_ObsFor(const pUSU_ObsFor: string);
begin
  FUSU_ObsFor := pUSU_ObsFor;

  CheckField('USU_ObsFor');
end;

function T095FIM.GetUSU_CodGfi: string;
begin
  Result := FUSU_CodGfi;
end;

procedure T095FIM.SetUSU_CodGfi(const pUSU_CodGfi: string);
begin
  FUSU_CodGfi := pUSU_CodGfi;

  CheckField('USU_CodGfi');
end;

function T095FIM.GetUSU_PerDes: Double;
begin
  Result := FUSU_PerDes;
end;

procedure T095FIM.SetUSU_PerDes(const pUSU_PerDes: Double);
begin
  FUSU_PerDes := pUSU_PerDes;

  CheckField('USU_PerDes');
end;

function T095FIM.GetUSU_DiaReg: Integer;
begin
  Result := FUSU_DiaReg;
end;

procedure T095FIM.SetUSU_DiaReg(const pUSU_DiaReg: Integer);
begin
  FUSU_DiaReg := pUSU_DiaReg;

  CheckField('USU_DiaReg');
end;

function T095FIM.GetUSU_CodForOLD: Integer;
begin
  Result := FUSU_CodForOLD;
end;

procedure T095FIM.SetUSU_CodForOLD(const pUSU_CodFor: Integer);
begin
  FUSU_CodForOLD := pUSU_CodFor;
end;

function T095FIM.GetUSU_UsuGerOLD: Integer;
begin
  Result := FUSU_UsuGerOLD;
end;

procedure T095FIM.SetUSU_UsuGerOLD(const pUSU_UsuGer: Integer);
begin
  FUSU_UsuGerOLD := pUSU_UsuGer;
end;

function T095FIM.GetUSU_DatGerOLD: TDate;
begin
  Result := FUSU_DatGerOLD;
end;

procedure T095FIM.SetUSU_DatGerOLD(const pUSU_DatGer: TDate);
begin
  FUSU_DatGerOLD := pUSU_DatGer;
end;

function T095FIM.GetUSU_UsuAltOLD: Integer;
begin
  Result := FUSU_UsuAltOLD;
end;

procedure T095FIM.SetUSU_UsuAltOLD(const pUSU_UsuAlt: Integer);
begin
  FUSU_UsuAltOLD := pUSU_UsuAlt;
end;

function T095FIM.GetUSU_PerOrdOLD: Char;
begin
  Result := FUSU_PerOrdOLD;
end;

procedure T095FIM.SetUSU_PerOrdOLD(const pUSU_PerOrd: Char);
begin
  FUSU_PerOrdOLD := pUSU_PerOrd;
end;

function T095FIM.GetUSU_DatAltOLD: TDate;
begin
  Result := FUSU_DatAltOLD;
end;

procedure T095FIM.SetUSU_DatAltOLD(const pUSU_DatAlt: TDate);
begin
  FUSU_DatAltOLD := pUSU_DatAlt;
end;

function T095FIM.GetUSU_ObsForOLD: string;
begin
  Result := FUSU_ObsForOLD;
end;

procedure T095FIM.SetUSU_ObsForOLD(const pUSU_ObsFor: string);
begin
  FUSU_ObsForOLD := pUSU_ObsFor;
end;

function T095FIM.GetUSU_CodGfiOLD: string;
begin
  Result := FUSU_CodGfiOLD;
end;

procedure T095FIM.SetUSU_CodGfiOLD(const pUSU_CodGfi: string);
begin
  FUSU_CodGfiOLD := pUSU_CodGfi;
end;

function T095FIM.GetUSU_PerDesOLD: Double;
begin
  Result := FUSU_PerDesOLD;
end;

procedure T095FIM.SetUSU_PerDesOLD(const pUSU_PerDes: Double);
begin
  FUSU_PerDesOLD := pUSU_PerDes;
end;

function T095FIM.GetUSU_DiaRegOLD: Integer;
begin
  Result := FUSU_DiaRegOLD;
end;

procedure T095FIM.SetUSU_DiaRegOLD(const pUSU_DiaReg: Integer);
begin
  FUSU_DiaRegOLD := pUSU_DiaReg;
end;

procedure T095FIM.Registros_OLD();
begin
  FUSU_CodForOLD := FUSU_CodFor;
  FUSU_UsuGerOLD := FUSU_UsuGer;
  FUSU_DatGerOLD := FUSU_DatGer;
  FUSU_UsuAltOLD := FUSU_UsuAlt;
  FUSU_PerOrdOLD := FUSU_PerOrd;
  FUSU_DatAltOLD := FUSU_DatAlt;
  FUSU_ObsForOLD := FUSU_ObsFor;
  FUSU_CodGfiOLD := FUSU_CodGfi;
  FUSU_PerDesOLD := FUSU_PerDes;
  FUSU_DiaRegOLD := FUSU_DiaReg;

  inherited;
end;

procedure T095FIM.RetornarValores();
begin
  FUSU_CodFor := FUSU_CodForOLD;
  FUSU_UsuGer := FUSU_UsuGerOLD;
  FUSU_DatGer := FUSU_DatGerOLD;
  FUSU_UsuAlt := FUSU_UsuAltOLD;
  FUSU_PerOrd := FUSU_PerOrdOLD;
  FUSU_DatAlt := FUSU_DatAltOLD;
  FUSU_ObsFor := FUSU_ObsForOLD;
  FUSU_CodGfi := FUSU_CodGfiOLD;
  FUSU_PerDes := FUSU_PerDesOLD;
  FUSU_DiaReg := FUSU_DiaRegOLD;

  inherited;
end;

end.
