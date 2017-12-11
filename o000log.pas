unit o000log;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T000LOG = class(TTabelaPadrao)
  private
    FNomTab: string;
    FSeqLog: Integer;
    FTipLog: Char;
    FChaTab: string;
    FNomFrm: string;
    FDesLog: string;
    FUsuGer: Integer;
    FDatGer: TDate;
    FHorGer: Integer;

    FNomTabOLD: string;
    FSeqLogOLD: Integer;
    FTipLogOLD: Char;
    FChaTabOLD: string;
    FNomFrmOLD: string;
    FDesLogOLD: string;
    FUsuGerOLD: Integer;
    FDatGerOLD: TDate;
    FHorGerOLD: Integer;

    function GetNomTab: string;
    procedure SetNomTab(const pNomTab: string);
    function GetSeqLog: Integer;
    procedure SetSeqLog(const pSeqLog: Integer);
    function GetTipLog: Char;
    procedure SetTipLog(const pTipLog: Char);
    function GetChaTab: string;
    procedure SetChaTab(const pChaTab: string);
    function GetNomFrm: string;
    procedure SetNomFrm(const pNomFrm: string);
    function GetDesLog: string;
    procedure SetDesLog(const pDesLog: string);
    function GetUsuGer: Integer;
    procedure SetUsuGer(const pUsuGer: Integer);
    function GetDatGer: TDate;
    procedure SetDatGer(const pDatGer: TDate);
    function GetHorGer: Integer;
    procedure SetHorGer(const pHorGer: Integer);

    function GetNomTabOld: string;
    procedure SetNomTabOld(const pNomTab: string);
    function GetSeqLogOld: Integer;
    procedure SetSeqLogOld(const pSeqLog: Integer);
    function GetTipLogOld: Char;
    procedure SetTipLogOld(const pTipLog: Char);
    function GetChaTabOld: string;
    procedure SetChaTabOld(const pChaTab: string);
    function GetNomFrmOld: string;
    procedure SetNomFrmOld(const pNomFrm: string);
    function GetDesLogOld: string;
    procedure SetDesLogOld(const pDesLog: string);
    function GetUsuGerOld: Integer;
    procedure SetUsuGerOld(const pUsuGer: Integer);
    function GetDatGerOld: TDate;
    procedure SetDatGerOld(const pDatGer: TDate);
    function GetHorGerOld: Integer;
    procedure SetHorGerOld(const pHorGer: Integer);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property NomTab: string read GetNomTab write SetNomTab;
    property SeqLog: Integer read GetSeqLog write SetSeqLog;
    property TipLog: Char read GetTipLog write SetTipLog;
    property ChaTab: string read GetChaTab write SetChaTab;
    property NomFrm: string read GetNomFrm write SetNomFrm;
    property DesLog: string read GetDesLog write SetDesLog;
    property UsuGer: Integer read GetUsuGer write SetUsuGer;
    property DatGer: TDate read GetDatGer write SetDatGer;
    property HorGer: Integer read GetHorGer write SetHorGer;

    property OLD_NomTab: string read GetNomTabOLD write SetNomTabOLD;
    property OLD_SeqLog: Integer read GetSeqLogOLD write SetSeqLogOLD;
    property OLD_TipLog: Char read GetTipLogOLD write SetTipLogOLD;
    property OLD_ChaTab: string read GetChaTabOLD write SetChaTabOLD;
    property OLD_NomFrm: string read GetNomFrmOLD write SetNomFrmOLD;
    property OLD_DesLog: string read GetDesLogOLD write SetDesLogOLD;
    property OLD_UsuGer: Integer read GetUsuGerOLD write SetUsuGerOLD;
    property OLD_DatGer: TDate read GetDatGerOLD write SetDatGerOLD;
    property OLD_HorGer: Integer read GetHorGerOLD write SetHorGerOLD;
  end;

implementation

{ T000LOG }

constructor T000LOG.Create();
begin
  AddPrimaryKeys('NomTab;SeqLog;TipLog');

  inherited Create('E000LOG');
end;

destructor T000LOG.Destroy();
begin
  inherited;
end;

function T000LOG.GetNomTab: string;
begin
  Result := FNomTab;
end;

procedure T000LOG.SetNomTab(const pNomTab: string);
begin
  FNomTab := pNomTab;

  CheckField('NomTab');
end;

function T000LOG.GetSeqLog: Integer;
begin
  Result := FSeqLog;
end;

procedure T000LOG.SetSeqLog(const pSeqLog: Integer);
begin
  FSeqLog := pSeqLog;

  CheckField('SeqLog');
end;

function T000LOG.GetTipLog: Char;
begin
  Result := FTipLog;
end;

procedure T000LOG.SetTipLog(const pTipLog: Char);
begin
  FTipLog := pTipLog;

  CheckField('TipLog');
end;

function T000LOG.GetChaTab: string;
begin
  Result := FChaTab;
end;

procedure T000LOG.SetChaTab(const pChaTab: string);
begin
  FChaTab := pChaTab;

  CheckField('ChaTab');
end;

function T000LOG.GetNomFrm: string;
begin
  Result := FNomFrm;
end;

procedure T000LOG.SetNomFrm(const pNomFrm: string);
begin
  FNomFrm := pNomFrm;

  CheckField('NomFrm');
end;

function T000LOG.GetDesLog: string;
begin
  Result := FDesLog;
end;

procedure T000LOG.SetDesLog(const pDesLog: string);
begin
  FDesLog := pDesLog;

  CheckField('DesLog');
end;

function T000LOG.GetUsuGer: Integer;
begin
  Result := FUsuGer;
end;

procedure T000LOG.SetUsuGer(const pUsuGer: Integer);
begin
  FUsuGer := pUsuGer;

  CheckField('UsuGer');
end;

function T000LOG.GetDatGer: TDate;
begin
  Result := FDatGer;
end;

procedure T000LOG.SetDatGer(const pDatGer: TDate);
begin
  FDatGer := pDatGer;

  CheckField('DatGer');
end;

function T000LOG.GetHorGer: Integer;
begin
  Result := FHorGer;
end;

procedure T000LOG.SetHorGer(const pHorGer: Integer);
begin
  FHorGer := pHorGer;

  CheckField('HorGer');
end;

function T000LOG.GetNomTabOLD: string;
begin
  Result := FNomTabOLD;
end;

procedure T000LOG.SetNomTabOLD(const pNomTab: string);
begin
  FNomTabOLD := pNomTab;
end;

function T000LOG.GetSeqLogOLD: Integer;
begin
  Result := FSeqLogOLD;
end;

procedure T000LOG.SetSeqLogOLD(const pSeqLog: Integer);
begin
  FSeqLogOLD := pSeqLog;
end;

function T000LOG.GetTipLogOLD: Char;
begin
  Result := FTipLogOLD;
end;

procedure T000LOG.SetTipLogOLD(const pTipLog: Char);
begin
  FTipLogOLD := pTipLog;
end;

function T000LOG.GetChaTabOLD: string;
begin
  Result := FChaTabOLD;
end;

procedure T000LOG.SetChaTabOLD(const pChaTab: string);
begin
  FChaTabOLD := pChaTab;
end;

function T000LOG.GetNomFrmOLD: string;
begin
  Result := FNomFrmOLD;
end;

procedure T000LOG.SetNomFrmOLD(const pNomFrm: string);
begin
  FNomFrmOLD := pNomFrm;
end;

function T000LOG.GetDesLogOLD: string;
begin
  Result := FDesLogOLD;
end;

procedure T000LOG.SetDesLogOLD(const pDesLog: string);
begin
  FDesLogOLD := pDesLog;
end;

function T000LOG.GetUsuGerOLD: Integer;
begin
  Result := FUsuGerOLD;
end;

procedure T000LOG.SetUsuGerOLD(const pUsuGer: Integer);
begin
  FUsuGerOLD := pUsuGer;
end;

function T000LOG.GetDatGerOLD: TDate;
begin
  Result := FDatGerOLD;
end;

procedure T000LOG.SetDatGerOLD(const pDatGer: TDate);
begin
  FDatGerOLD := pDatGer;
end;

function T000LOG.GetHorGerOLD: Integer;
begin
  Result := FHorGerOLD;
end;

procedure T000LOG.SetHorGerOLD(const pHorGer: Integer);
begin
  FHorGerOLD := pHorGer;
end;

procedure T000LOG.Registros_OLD();
begin
  FNomTabOLD := FNomTab;
  FSeqLogOLD := FSeqLog;
  FTipLogOLD := FTipLog;
  FChaTabOLD := FChaTab;
  FNomFrmOLD := FNomFrm;
  FDesLogOLD := FDesLog;
  FUsuGerOLD := FUsuGer;
  FDatGerOLD := FDatGer;
  FHorGerOLD := FHorGer;

  inherited;
end;

procedure T000LOG.RetornarValores();
begin
  FNomTab := FNomTabOLD;
  FSeqLog := FSeqLogOLD;
  FTipLog := FTipLogOLD;
  FChaTab := FChaTabOLD;
  FNomFrm := FNomFrmOLD;
  FDesLog := FDesLogOLD;
  FUsuGer := FUsuGerOLD;
  FDatGer := FDatGerOLD;
  FHorGer := FHorGerOLD;

  inherited;
end;

end.
