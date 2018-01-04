
unit o096lfc;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T096LFC = class(TTabelaUsuario)
  private
    FUSU_IdeFor: Integer;
    FUSU_IdeCon: Integer;
    FUSU_LigCon: Char;
    FUSU_VlrFrt: Double;
    FUSU_CodFor: Integer;

    FUSU_IdeForOLD: Integer;
    FUSU_IdeConOLD: Integer;
    FUSU_LigConOLD: Char;
    FUSU_VlrFrtOLD: Double;
    FUSU_CodForOLD: Integer;

    function GetUSU_IdeFor: Integer;
    procedure SetUSU_IdeFor(const pUSU_IdeFor: Integer);
    function GetUSU_IdeCon: Integer;
    procedure SetUSU_IdeCon(const pUSU_IdeCon: Integer);
    function GetUSU_LigCon: Char;
    procedure SetUSU_LigCon(const pUSU_LigCon: Char);
    function GetUSU_VlrFrt: Double;
    procedure SetUSU_VlrFrt(const pUSU_VlrFrt: Double);
    function GetUSU_CodFor: Integer;
    procedure SetUSU_CodFor(const pUSU_CodFor: Integer);

    function GetUSU_IdeForOld: Integer;
    procedure SetUSU_IdeForOld(const pUSU_IdeFor: Integer);
    function GetUSU_IdeConOld: Integer;
    procedure SetUSU_IdeConOld(const pUSU_IdeCon: Integer);
    function GetUSU_LigConOld: Char;
    procedure SetUSU_LigConOld(const pUSU_LigCon: Char);
    function GetUSU_VlrFrtOld: Double;
    procedure SetUSU_VlrFrtOld(const pUSU_VlrFrt: Double);
    function GetUSU_CodForOld: Integer;
    procedure SetUSU_CodForOld(const pUSU_CodFor: Integer);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_IdeFor: Integer read GetUSU_IdeFor write SetUSU_IdeFor;
    property USU_IdeCon: Integer read GetUSU_IdeCon write SetUSU_IdeCon;
    property USU_LigCon: Char read GetUSU_LigCon write SetUSU_LigCon;
    property USU_VlrFrt: Double read GetUSU_VlrFrt write SetUSU_VlrFrt;
    property USU_CodFor: Integer read GetUSU_CodFor write SetUSU_CodFor;

    property OLD_USU_IdeFor: Integer read GetUSU_IdeForOLD write SetUSU_IdeForOLD;
    property OLD_USU_IdeCon: Integer read GetUSU_IdeConOLD write SetUSU_IdeConOLD;
    property OLD_USU_LigCon: Char read GetUSU_LigConOLD write SetUSU_LigConOLD;
    property OLD_USU_VlrFrt: Double read GetUSU_VlrFrtOLD write SetUSU_VlrFrtOLD;
    property OLD_USU_CodFor: Integer read GetUSU_CodForOLD write SetUSU_CodForOLD;
  end;

implementation

{ T096LFC }

constructor T096LFC.Create();
begin
  AddForeignKeys(['USU_IdeFor','USU_IdeCon'], ['USU_Id','USU_Id']);
  AddPrimaryKeys('USU_Id');

  inherited Create('USU_T096LFC');
end;

destructor T096LFC.Destroy();
begin
  inherited;
end;

function T096LFC.GetUSU_IdeFor: Integer;
begin
  Result := FUSU_IdeFor;
end;

procedure T096LFC.SetUSU_IdeFor(const pUSU_IdeFor: Integer);
begin
  FUSU_IdeFor := pUSU_IdeFor;

  CheckField('USU_IdeFor');
end;

function T096LFC.GetUSU_IdeCon: Integer;
begin
  Result := FUSU_IdeCon;
end;

procedure T096LFC.SetUSU_IdeCon(const pUSU_IdeCon: Integer);
begin
  FUSU_IdeCon := pUSU_IdeCon;

  CheckField('USU_IdeCon');
end;

function T096LFC.GetUSU_LigCon: Char;
begin
  Result := FUSU_LigCon;
end;

procedure T096LFC.SetUSU_LigCon(const pUSU_LigCon: Char);
begin
  FUSU_LigCon := pUSU_LigCon;

  CheckField('USU_LigCon');
end;

function T096LFC.GetUSU_VlrFrt: Double;
begin
  Result := FUSU_VlrFrt;
end;

procedure T096LFC.SetUSU_VlrFrt(const pUSU_VlrFrt: Double);
begin
  FUSU_VlrFrt := pUSU_VlrFrt;

  CheckField('USU_VlrFrt');
end;

function T096LFC.GetUSU_CodFor: Integer;
begin
  Result := FUSU_CodFor;
end;

procedure T096LFC.SetUSU_CodFor(const pUSU_CodFor: Integer);
begin
  FUSU_CodFor := pUSU_CodFor;

  CheckField('USU_CodFor');
end;

function T096LFC.GetUSU_IdeForOLD: Integer;
begin
  Result := FUSU_IdeForOLD;
end;

procedure T096LFC.SetUSU_IdeForOLD(const pUSU_IdeFor: Integer);
begin
  FUSU_IdeForOLD := pUSU_IdeFor;
end;

function T096LFC.GetUSU_IdeConOLD: Integer;
begin
  Result := FUSU_IdeConOLD;
end;

procedure T096LFC.SetUSU_IdeConOLD(const pUSU_IdeCon: Integer);
begin
  FUSU_IdeConOLD := pUSU_IdeCon;
end;

function T096LFC.GetUSU_LigConOLD: Char;
begin
  Result := FUSU_LigConOLD;
end;

procedure T096LFC.SetUSU_LigConOLD(const pUSU_LigCon: Char);
begin
  FUSU_LigConOLD := pUSU_LigCon;
end;

function T096LFC.GetUSU_VlrFrtOLD: Double;
begin
  Result := FUSU_VlrFrtOLD;
end;

procedure T096LFC.SetUSU_VlrFrtOLD(const pUSU_VlrFrt: Double);
begin
  FUSU_VlrFrtOLD := pUSU_VlrFrt;
end;

function T096LFC.GetUSU_CodForOLD: Integer;
begin
  Result := FUSU_CodForOLD;
end;

procedure T096LFC.SetUSU_CodForOLD(const pUSU_CodFor: Integer);
begin
  FUSU_CodForOLD := pUSU_CodFor;
end;

procedure T096LFC.Registros_OLD();
begin
  FUSU_IdeForOLD := FUSU_IdeFor;
  FUSU_IdeConOLD := FUSU_IdeCon;
  FUSU_LigConOLD := FUSU_LigCon;
  FUSU_VlrFrtOLD := FUSU_VlrFrt;
  FUSU_CodForOLD := FUSU_CodFor;

  inherited;
end;

procedure T096LFC.RetornarValores();
begin
  FUSU_IdeFor := FUSU_IdeForOLD;
  FUSU_IdeCon := FUSU_IdeConOLD;
  FUSU_LigCon := FUSU_LigConOLD;
  FUSU_VlrFrt := FUSU_VlrFrtOLD;
  FUSU_CodFor := FUSU_CodForOLD;

  inherited;
end;

end.
