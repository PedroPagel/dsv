unit o096dei;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T096DEI = class(TTabelaUsuario)
  private
    FUSU_IdeFim: Integer;
    FUSU_DesFor: string;
    FUSU_VlrDes: Double;
    FUSU_CifFob: Char;
    FUSU_TipDes: Char;
    FUSU_CodMoe: string;
    FUSU_CodGfi: string;

    FUSU_IdeFimOLD: Integer;
    FUSU_DesForOLD: string;
    FUSU_VlrDesOLD: Double;
    FUSU_CifFobOLD: Char;
    FUSU_TipDesOLD: Char;
    FUSU_CodMoeOLD: string;
    FUSU_CodGfiOLD: string;

    function GetUSU_IdeFim: Integer;
    procedure SetUSU_IdeFim(const pUSU_IdeFim: Integer);
    function GetUSU_DesFor: string;
    procedure SetUSU_DesFor(const pUSU_DesFor: string);
    function GetUSU_VlrDes: Double;
    procedure SetUSU_VlrDes(const pUSU_VlrDes: Double);
    function GetUSU_CifFob: Char;
    procedure SetUSU_CifFob(const pUSU_CifFob: Char);
    function GetUSU_TipDes: Char;
    procedure SetUSU_TipDes(const pUSU_TipDes: Char);
    function GetUSU_CodMoe: string;
    procedure SetUSU_CodMoe(const pUSU_CodMoe: string);
    function GetUSU_CodGfi: string;
    procedure SetUSU_CodGfi(const pUSU_CodGfi: string);

    function GetUSU_IdeFimOld: Integer;
    procedure SetUSU_IdeFimOld(const pUSU_IdeFim: Integer);
    function GetUSU_DesForOld: string;
    procedure SetUSU_DesForOld(const pUSU_DesFor: string);
    function GetUSU_VlrDesOld: Double;
    procedure SetUSU_VlrDesOld(const pUSU_VlrDes: Double);
    function GetUSU_CifFobOld: Char;
    procedure SetUSU_CifFobOld(const pUSU_CifFob: Char);
    function GetUSU_TipDesOld: Char;
    procedure SetUSU_TipDesOld(const pUSU_TipDes: Char);
    function GetUSU_CodMoeOld: string;
    procedure SetUSU_CodMoeOld(const pUSU_CodMoe: string);
    function GetUSU_CodGfiOld: string;
    procedure SetUSU_CodGfiOld(const pUSU_CodGfi: string);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_IdeFim: Integer read GetUSU_IdeFim write SetUSU_IdeFim;
    property USU_DesFor: string read GetUSU_DesFor write SetUSU_DesFor;
    property USU_VlrDes: Double read GetUSU_VlrDes write SetUSU_VlrDes;
    property USU_CifFob: Char read GetUSU_CifFob write SetUSU_CifFob;
    property USU_TipDes: Char read GetUSU_TipDes write SetUSU_TipDes;
    property USU_CodMoe: string read GetUSU_CodMoe write SetUSU_CodMoe;
    property USU_CodGfi: string read GetUSU_CodGfi write SetUSU_CodGfi;

    property OLD_USU_IdeFim: Integer read GetUSU_IdeFimOLD write SetUSU_IdeFimOLD;
    property OLD_USU_DesFor: string read GetUSU_DesForOLD write SetUSU_DesForOLD;
    property OLD_USU_VlrDes: Double read GetUSU_VlrDesOLD write SetUSU_VlrDesOLD;
    property OLD_USU_CifFob: Char read GetUSU_CifFobOLD write SetUSU_CifFobOLD;
    property OLD_USU_TipDes: Char read GetUSU_TipDesOLD write SetUSU_TipDesOLD;
    property OLD_USU_CodMoe: string read GetUSU_CodMoeOLD write SetUSU_CodMoeOLD;
    property OLD_USU_CodGfi: string read GetUSU_CodGfiOLD write SetUSU_CodGfiOLD;
  end;

implementation

{ T096DEI }

constructor T096DEI.Create();
begin
  AddForeignKeys(['USU_IdeFim'], ['USU_Id']);
  AddPrimaryKeys('USU_Id');

  inherited Create('USU_T096DEI');
end;

destructor T096DEI.Destroy();
begin
  inherited;
end;

function T096DEI.GetUSU_IdeFim: Integer;
begin
  Result := FUSU_IdeFim;
end;

procedure T096DEI.SetUSU_IdeFim(const pUSU_IdeFim: Integer);
begin
  FUSU_IdeFim := pUSU_IdeFim;

  CheckField('USU_IdeFim');
end;

function T096DEI.GetUSU_DesFor: string;
begin
  Result := FUSU_DesFor;
end;

procedure T096DEI.SetUSU_DesFor(const pUSU_DesFor: string);
begin
  FUSU_DesFor := pUSU_DesFor;

  CheckField('USU_DesFor');
end;

function T096DEI.GetUSU_VlrDes: Double;
begin
  Result := FUSU_VlrDes;
end;

procedure T096DEI.SetUSU_VlrDes(const pUSU_VlrDes: Double);
begin
  FUSU_VlrDes := pUSU_VlrDes;

  CheckField('USU_VlrDes');
end;

function T096DEI.GetUSU_CifFob: Char;
begin
  Result := FUSU_CifFob;
end;

procedure T096DEI.SetUSU_CifFob(const pUSU_CifFob: Char);
begin
  FUSU_CifFob := pUSU_CifFob;

  CheckField('USU_CifFob');
end;

function T096DEI.GetUSU_TipDes: Char;
begin
  Result := FUSU_TipDes;
end;

procedure T096DEI.SetUSU_TipDes(const pUSU_TipDes: Char);
begin
  FUSU_TipDes := pUSU_TipDes;

  CheckField('USU_TipDes');
end;

function T096DEI.GetUSU_CodMoe: string;
begin
  Result := FUSU_CodMoe;
end;

procedure T096DEI.SetUSU_CodMoe(const pUSU_CodMoe: string);
begin
  FUSU_CodMoe := pUSU_CodMoe;

  CheckField('USU_CodMoe');
end;

function T096DEI.GetUSU_CodGfi: string;
begin
  Result := FUSU_CodGfi;
end;

procedure T096DEI.SetUSU_CodGfi(const pUSU_CodGfi: string);
begin
  FUSU_CodGfi := pUSU_CodGfi;

  CheckField('USU_CodGfi');
end;

function T096DEI.GetUSU_IdeFimOLD: Integer;
begin
  Result := FUSU_IdeFimOLD;
end;

procedure T096DEI.SetUSU_IdeFimOLD(const pUSU_IdeFim: Integer);
begin
  FUSU_IdeFimOLD := pUSU_IdeFim;
end;

function T096DEI.GetUSU_DesForOLD: string;
begin
  Result := FUSU_DesForOLD;
end;

procedure T096DEI.SetUSU_DesForOLD(const pUSU_DesFor: string);
begin
  FUSU_DesForOLD := pUSU_DesFor;
end;

function T096DEI.GetUSU_VlrDesOLD: Double;
begin
  Result := FUSU_VlrDesOLD;
end;

procedure T096DEI.SetUSU_VlrDesOLD(const pUSU_VlrDes: Double);
begin
  FUSU_VlrDesOLD := pUSU_VlrDes;
end;

function T096DEI.GetUSU_CifFobOLD: Char;
begin
  Result := FUSU_CifFobOLD;
end;

procedure T096DEI.SetUSU_CifFobOLD(const pUSU_CifFob: Char);
begin
  FUSU_CifFobOLD := pUSU_CifFob;
end;

function T096DEI.GetUSU_TipDesOLD: Char;
begin
  Result := FUSU_TipDesOLD;
end;

procedure T096DEI.SetUSU_TipDesOLD(const pUSU_TipDes: Char);
begin
  FUSU_TipDesOLD := pUSU_TipDes;
end;

function T096DEI.GetUSU_CodMoeOLD: string;
begin
  Result := FUSU_CodMoeOLD;
end;

procedure T096DEI.SetUSU_CodMoeOLD(const pUSU_CodMoe: string);
begin
  FUSU_CodMoeOLD := pUSU_CodMoe;
end;

function T096DEI.GetUSU_CodGfiOLD: string;
begin
  Result := FUSU_CodGfiOLD;
end;

procedure T096DEI.SetUSU_CodGfiOLD(const pUSU_CodGfi: string);
begin
  FUSU_CodGfiOLD := pUSU_CodGfi;
end;

procedure T096DEI.Registros_OLD();
begin
  FUSU_IdeFimOLD := FUSU_IdeFim;
  FUSU_DesForOLD := FUSU_DesFor;
  FUSU_VlrDesOLD := FUSU_VlrDes;
  FUSU_CifFobOLD := FUSU_CifFob;
  FUSU_TipDesOLD := FUSU_TipDes;
  FUSU_CodMoeOLD := FUSU_CodMoe;
  FUSU_CodGfiOLD := FUSU_CodGfi;

  inherited;
end;

procedure T096DEI.RetornarValores();
begin
  FUSU_IdeFim := FUSU_IdeFimOLD;
  FUSU_DesFor := FUSU_DesForOLD;
  FUSU_VlrDes := FUSU_VlrDesOLD;
  FUSU_CifFob := FUSU_CifFobOLD;
  FUSU_TipDes := FUSU_TipDesOLD;
  FUSU_CodMoe := FUSU_CodMoeOLD;
  FUSU_CodGfi := FUSU_CodGfiOLD;

  inherited;
end;

end.
