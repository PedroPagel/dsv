unit oTitulo;

interface

uses
  System.Classes, oBase;

type

  TTitulo = class(TTabelaPadrao)
  private
    FCodEmp: Word;
    FCodFil: Word;
    FCodTpt: string;
    FNumTit: string;
    FCodTns: string;
    FVlrAbe: Extended;
    FVlrDsc: Extended;
    FDatGer: TDate;
    FVctPro: TDate;
    FPerJrs: Double;
    FCodFpg: SmallInt;
    FCodCrt: string;

    function GetCodCrt: string;
    function GetCodEmp: Word;
    function GetCodFil: Word;
    function GetCodFpg: SmallInt;
    function GetCodTns: string;
    function GetCodTpt: string;
    function GetDatGer: TDate;
    function GetNumTit: string;
    function GetPerJrs: Double;
    function GetVctPro: TDate;
    function GetVlrAbe: Extended;
    function GetVlrDsc: Extended;

    procedure SetCodCrt(const Value: string);
    procedure SetCodEmp(const Value: Word);
    procedure SetCodFil(const Value: Word);
    procedure SetCodFpg(const Value: SmallInt);
    procedure SetCodTns(const Value: string);
    procedure SetCodTpt(const Value: string);
    procedure SetDatGer(const Value: TDate);
    procedure SetNumTit(const Value: string);
    procedure SetPerJrs(const Value: Double);
    procedure SetVctPro(const Value: TDate);
    procedure SetVlrAbe(const Value: Extended);
    procedure SetVlrDsc(const Value: Extended);
  public
    constructor Create(const pTabela: string);
    destructor Destroy(); override;

    property CodEmp: Word read GetCodEmp write SetCodEmp;
    property CodFil: Word read GetCodFil write SetCodFil;
    property CodTpt: string read GetCodTpt write SetCodTpt;
    property NumTit: string read GetNumTit write SetNumTit;
    property CodTns: string read GetCodTns write SetCodTns;
    property VlrAbe: Extended read GetVlrAbe write SetVlrAbe;
    property VlrDsc: Extended read GetVlrDsc write SetVlrDsc;
    property DatGer: TDate read GetDatGer write SetDatGer;
    property VctPro: TDate read GetVctPro write SetVctPro;
    property PerJrs: Double read GetPerJrs write SetPerJrs;
    property CodFpg: SmallInt read GetCodFpg write SetCodFpg;
    property CodCrt: string read GetCodCrt write SetCodCrt;
  end;

  T301TCR = class(TTitulo)
  private
    FCodCli: Integer;
    FVctOri: TDate;
    FJrsDia: Extended;
    FSitTit: string;
    FVlrOri: Extended;
    FCodBar: string;
    FCodPor: string;
    FCodCrp: string;
    FTolDsc: Word;
    FAntDsc: Char;
    FPerDsc: Double;
    FTipJrs: string;
    FTolJrs: SmallInt;
    FDatDsc: TDate;
    FDatEmi: TDate;
    FPerMul: Word;
    FFilCtr: Integer;
    FNumCtr: Integer;

    FOldCodCli: Integer;
    FOldVctOri: TDate;
    FOldJrsDia: Extended;
    FOldSitTit: string;
    FOldVlrOri: Extended;
    FOldCodBar: string;
    FOldCodPor: string;
    FOldCodCrp: string;
    FOldTolDsc: Word;
    FOldAntDsc: Char;
    FOldPerDsc: Double;
    FOldTipJrs: string;
    FOldTolJrs: SmallInt;
    FOldDatDsc: TDate;
    FOldDatEmi: TDate;
    FOldPerMul: Word;
    FOldFilCtr: Integer;
    FOldNumCtr: Integer;

    function SetCodCli: Integer;
    function GetAntDsc: Char;
    function GetCodBar: string;
    function GetCodCrp: string;
    function GetCodPor: string;
    function GetDatDsc: TDate;
    function GetDatEmi: TDate;
    function GetJrsDia: Extended;
    function GetPerDsc: Double;
    function GetPerMul: Word;
    function GetSitTit: string;
    function GetTipJrs: string;
    function GetTolDsc: Word;
    function GetTolJrs: SmallInt;
    function GetVctOri: TDate;
    function GetVlrOri: Extended;
    function GetFilCtr: Integer;
    function GetNumCtr: Integer;

    procedure GetCodCli(const Value: Integer);
    procedure SetAntDsc(const Value: Char);
    procedure SetCodBar(const Value: string);
    procedure SetCodCrp(const Value: string);
    procedure SetCodPor(const Value: string);
    procedure SetDatDsc(const Value: TDate);
    procedure SetDatEmi(const Value: TDate);
    procedure SetJrsDia(const Value: Extended);
    procedure SetPerDsc(const Value: Double);
    procedure SetPerMul(const Value: Word);
    procedure SetSitTit(const Value: string);
    procedure SetTipJrs(const Value: string);
    procedure SetTolDsc(const Value: Word);
    procedure SetTolJrs(const Value: SmallInt);
    procedure SetVctOri(const Value: TDate);
    procedure SetVlrOri(const Value: Extended);
    procedure SetFilCtr(const Value: Integer);
    procedure SetNumCtr(const Value: Integer);

    function SetOLD_CodCli: Integer;
    function GetOLD_AntDsc: Char;
    function GetOLD_CodBar: string;
    function GetOLD_CodCrp: string;
    function GetOLD_CodPor: string;
    function GetOLD_DatDsc: TDate;
    function GetOLD_DatEmi: TDate;
    function GetOLD_JrsDia: Extended;
    function GetOLD_PerDsc: Double;
    function GetOLD_PerMul: Word;
    function GetOLD_SitTit: string;
    function GetOLD_TipJrs: string;
    function GetOLD_TolDsc: Word;
    function GetOLD_TolJrs: SmallInt;
    function GetOLD_VctOri: TDate;
    function GetOLD_VlrOri: Extended;
    function GetOLD_FilCtr: Integer;
    function GetOLD_NumCtr: Integer;

    procedure GetOLD_CodCli(const Value: Integer);
    procedure SetOLD_AntDsc(const Value: Char);
    procedure SetOLD_CodBar(const Value: string);
    procedure SetOLD_CodCrp(const Value: string);
    procedure SetOLD_CodPor(const Value: string);
    procedure SetOLD_DatDsc(const Value: TDate);
    procedure SetOLD_DatEmi(const Value: TDate);
    procedure SetOLD_JrsDia(const Value: Extended);
    procedure SetOLD_PerDsc(const Value: Double);
    procedure SetOLD_PerMul(const Value: Word);
    procedure SetOLD_SitTit(const Value: string);
    procedure SetOLD_TipJrs(const Value: string);
    procedure SetOLD_TolDsc(const Value: Word);
    procedure SetOLD_TolJrs(const Value: SmallInt);
    procedure SetOLD_VctOri(const Value: TDate);
    procedure SetOLD_VlrOri(const Value: Extended);
    procedure SetOLD_FilCtr(const Value: Integer);
    procedure SetOLD_NumCtr(const Value: Integer);
  protected
    procedure Registros_OLD(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property CodCli: Integer read SetCodCli write GetCodCli;
    property VctOri: TDate read GetVctOri write SetVctOri;
    property JrsDia: Extended read GetJrsDia write SetJrsDia;
    property SitTit: string read GetSitTit write SetSitTit;
    property VlrOri: Extended read GetVlrOri write SetVlrOri;
    property CodBar: string read GetCodBar write SetCodBar;
    property CodPor: string read GetCodPor write SetCodPor;
    property CodCrp: string read GetCodCrp write SetCodCrp;
    property TolDsc: Word read GetTolDsc write SetTolDsc;
    property AntDsc: Char read GetAntDsc write SetAntDsc;
    property PerDsc: Double read GetPerDsc write SetPerDsc;
    property TipJrs: string read GetTipJrs write SetTipJrs;
    property TolJrs: SmallInt read GetTolJrs write SetTolJrs;
    property DatDsc: TDate read GetDatDsc write SetDatDsc;
    property DatEmi: TDate read GetDatEmi write SetDatEmi;
    property PerMul: Word read GetPerMul write SetPerMul;
    property NumCtr: Integer read GetNumCtr write SetNumCtr;
    property FilCtr: Integer read GetFilCtr write SetFilCtr;
    property OLD_CodCli: Integer read SetOLD_CodCli write GetOLD_CodCli;
    property OLD_VctOri: TDate read GetOLD_VctOri write SetOLD_VctOri;
    property OLD_JrsDia: Extended read GetOLD_JrsDia write SetOLD_JrsDia;
    property OLD_SitTit: string read GetOLD_SitTit write SetOLD_SitTit;
    property OLD_VlrOri: Extended read GetOLD_VlrOri write SetOLD_VlrOri;
    property OLD_CodBar: string read GetOLD_CodBar write SetOLD_CodBar;
    property OLD_CodPor: string read GetOLD_CodPor write SetOLD_CodPor;
    property OLD_CodCrp: string read GetOLD_CodCrp write SetOLD_CodCrp;
    property OLD_TolDsc: Word read GetOLD_TolDsc write SetOLD_TolDsc;
    property OLD_AntDsc: Char read GetOLD_AntDsc write SetOLD_AntDsc;
    property OLD_PerDsc: Double read GetOLD_PerDsc write SetOLD_PerDsc;
    property OLD_TipJrs: string read GetOLD_TipJrs write SetOLD_TipJrs;
    property OLD_TolJrs: SmallInt read GetOLD_TolJrs write SetOLD_TolJrs;
    property OLD_DatDsc: TDate read GetOLD_DatDsc write SetOLD_DatDsc;
    property OLD_DatEmi: TDate read GetOLD_DatEmi write SetOLD_DatEmi;
    property OLD_PerMul: Word read GetOLD_PerMul write SetOLD_PerMul;
    property OLD_NumCtr: Integer read GetOLD_NumCtr write SetOLD_NumCtr;
    property OLD_FilCtr: Integer read GetOLD_FilCtr write SetOLD_FilCtr;
  end;

  T501MCP = class(TTitulo)
  private
    FVlrMov: Double;
    FDatPgt: TDate;
    FNumLot: Integer;
    FSeqMov: Integer;
    FCodFor: Word;

    procedure SetVlrMov(const pVlrMov: Double);
    procedure SetDatPgt(const pDatPgt: TDate);
    procedure SetNumLot(const pNumLot: Integer);
    procedure SetSeqMov(const pSeqMov: Integer);
    function GetDatPgt: TDate;
    function GetNumLot: Integer;
    function GetSeqMov: Integer;
    function GetVlrMov: Double;
    function GetCodFor: Word;
    procedure SetCodFor(const Value: Word);
  public
    constructor Create();

    property CodFor: Word read GetCodFor write SetCodFor;
    property VlrMov: Double read GetVlrMov write SetVlrMov;
    property DatPgt: TDate read GetDatPgt write SetDatPgt;
    property NumLot: Integer read GetNumLot write SetNumLot;
    property SeqMov: Integer read GetSeqMov write SetSeqMov;
  end;

implementation

uses
  System.SysUtils;

{ TTitulo }

constructor TTitulo.Create(const pTabela: string);
begin
  inherited Create(pTabela);
end;

destructor TTitulo.Destroy;
begin
  inherited;
end;

function TTitulo.GetCodCrt: string;
begin
  Result := FCodCrt;
end;

function TTitulo.GetCodEmp: Word;
begin
  Result := FCodEmp;
end;

function TTitulo.GetCodFil: Word;
begin
  Result := FCodFil;
end;

function TTitulo.GetCodFpg: SmallInt;
begin
  Result := FCodFpg;
end;

function TTitulo.GetCodTns: string;
begin
  Result := FCodTns;
end;

function TTitulo.GetCodTpt: string;
begin
  Result := FCodTpt;
end;

function TTitulo.GetDatGer: TDate;
var
  xData: string;
begin
  if (FDatGer = 0) then
  begin
    xData := FormatDateTime('dd/mm/yyyy',Now);
    FDatGer := StrToDate(xData);
  end;

  Result := FDatGer;
end;

function TTitulo.GetNumTit: string;
begin
  Result := FNumTit;
end;

function TTitulo.GetPerJrs: Double;
begin
  Result := FPerJrs;
end;

function TTitulo.GetVctPro: TDate;
begin
  Result := FVctPro;
end;

function TTitulo.GetVlrAbe: Extended;
begin
  Result := FVlrAbe;
end;

function TTitulo.GetVlrDsc: Extended;
begin
  Result := FVlrDsc;
end;

procedure TTitulo.SetCodCrt(const Value: string);
begin
  FCodCrt := Value;
end;

procedure TTitulo.SetCodEmp(const Value: Word);
begin
  FCodEmp := Value;
end;

procedure TTitulo.SetCodFil(const Value: Word);
begin
  FCodFil := Value;
end;

procedure TTitulo.SetCodFpg(const Value: SmallInt);
begin
  FCodFpg := Value;
end;

procedure TTitulo.SetCodTns(const Value: string);
begin
  FCodTns := Value;
end;

procedure TTitulo.SetCodTpt(const Value: string);
begin
  FCodTpt := Value;
end;

procedure TTitulo.SetDatGer(const Value: TDate);
begin
  FDatGer := Value;
end;

procedure TTitulo.SetNumTit(const Value: string);
begin
  FNumTit := Value;
end;

procedure TTitulo.SetPerJrs(const Value: Double);
begin
  FPerJrs := Value;
end;

procedure TTitulo.SetVctPro(const Value: TDate);
begin
  FVctPro := Value;
end;

procedure TTitulo.SetVlrAbe(const Value: Extended);
begin
  FVlrAbe := Value;
end;

procedure TTitulo.SetVlrDsc(const Value: Extended);
begin
  FVlrDsc := Value;
end;

{ T501MCP }

constructor T501MCP.Create;
begin
  inherited Create('E501MCP');
end;

function T501MCP.GetCodFor: Word;
begin
  Result := FCodFor;
end;

function T501MCP.GetDatPgt: TDate;
begin
  Result := FDatPgt;
end;

function T501MCP.GetNumLot: Integer;
begin
  Result := FNumLot;
end;

function T501MCP.GetSeqMov: Integer;
begin
  Result := FSeqMov;
end;

function T501MCP.GetVlrMov: Double;
begin
  Result := FVlrMov;
end;

procedure T501MCP.SetCodFor(const Value: Word);
begin
  FCodFor := Value;
end;

procedure T501MCP.SetDatPgt(const pDatPgt: TDate);
begin
  FDatPgt := pDatPgt;
end;

procedure T501MCP.SetNumLot(const pNumLot: Integer);
begin
  FNumLot := pNumLot;
end;

procedure T501MCP.SetSeqMov(const pSeqMov: Integer);
begin
  FSeqMov := pSeqMov;
end;

procedure T501MCP.SetVlrMov(const pVlrMov: Double);
begin
  FVlrMov := pVlrMov;
end;

{ T301TCR }

constructor T301TCR.Create;
begin
  inherited Create('E301TCR');
end;

destructor T301TCR.Destroy;
begin
  inherited;
end;

function T301TCR.GetAntDsc: Char;
begin
  Result := FAntDsc;
end;

function T301TCR.GetCodBar: string;
begin
  Result := FCodBar;
end;

procedure T301TCR.GetCodCli(const Value: Integer);
begin
  FCodCli := Value;
end;

function T301TCR.GetCodCrp: string;
begin
  Result := FCodCrp;
end;

function T301TCR.GetCodPor: string;
begin
  Result := FCodPor;
end;

function T301TCR.GetDatDsc: TDate;
begin
  Result := FDatDsc;
end;

function T301TCR.GetDatEmi: TDate;
begin
  Result := FDatEmi;
end;

function T301TCR.GetFilCtr: Integer;
begin
  Result := FFilCtr;
end;

function T301TCR.GetJrsDia: Extended;
begin
  Result := FJrsDia;
end;

function T301TCR.GetNumCtr: Integer;
begin
  Result := FNumCtr;
end;

function T301TCR.GetPerDsc: Double;
begin
  Result := FPerDsc;
end;

function T301TCR.GetPerMul: Word;
begin
  Result := FPerMul;
end;

function T301TCR.GetSitTit: string;
begin
  Result := FSitTit;
end;

function T301TCR.GetTipJrs: string;
begin
  Result := FTipJrs;
end;

function T301TCR.GetTolDsc: Word;
begin
  Result := FTolDsc;
end;

function T301TCR.GetTolJrs: SmallInt;
begin
  Result := FTolJrs;
end;

function T301TCR.GetVctOri: TDate;
begin
  Result := FVctOri;
end;

function T301TCR.GetVlrOri: Extended;
begin
  Result := FVlrOri;
end;

procedure T301TCR.Registros_OLD;
begin
  inherited;

  FOldCodCli := FCodCli;
  FOldVctOri := FVctOri;
  FOldJrsDia := FJrsDia;
  FOldSitTit := FSitTit;
  FOldVlrOri := FVlrOri;
  FOldCodBar := FCodBar;
  FOldCodPor := FCodPor;
  FOldCodCrp := FCodCrp;
  FOldTolDsc := FTolDsc;
  FOldAntDsc := FAntDsc;
  FOldPerDsc := FPerDsc;
  FOldTipJrs := FTipJrs;
  FOldTolJrs := FTolJrs;
  FOldDatDsc := FDatDsc;
  FOldDatEmi := FDatEmi;
  FOldPerMul := FPerMul;
  FOldFilCtr := FFilCtr;
  FOldNumCtr := FNumCtr;
end;

procedure T301TCR.SetAntDsc(const Value: Char);
begin
  FAntDsc := Value;
end;

procedure T301TCR.SetCodBar(const Value: string);
begin
  FCodBar := Value;
end;

function T301TCR.SetCodCli: Integer;
begin
  Result := FCodCli;
end;

procedure T301TCR.SetCodCrp(const Value: string);
begin
  FCodCrp := Value;
end;

procedure T301TCR.SetCodPor(const Value: string);
begin
  FCodPor := Value;
end;

procedure T301TCR.SetDatDsc(const Value: TDate);
begin
  FDatDsc := Value;
end;

procedure T301TCR.SetDatEmi(const Value: TDate);
begin
  FDatEmi := Value;
end;

procedure T301TCR.SetFilCtr(const Value: Integer);
begin
  FFilCtr := Value;
end;

procedure T301TCR.SetJrsDia(const Value: Extended);
begin
  FJrsDia := Value;
end;

procedure T301TCR.SetNumCtr(const Value: Integer);
begin
  FNumCtr := Value;
end;

procedure T301TCR.SetPerDsc(const Value: Double);
begin
  FPerDsc := Value;;
end;

procedure T301TCR.SetPerMul(const Value: Word);
begin
  FPerMul := Value;
end;

procedure T301TCR.SetSitTit(const Value: string);
begin
  FSitTit := Value;
end;

procedure T301TCR.SetTipJrs(const Value: string);
begin
  FTipJrs := Value;
end;

procedure T301TCR.SetTolDsc(const Value: Word);
begin
  FTolDsc := Value;
end;

procedure T301TCR.SetTolJrs(const Value: SmallInt);
begin
  FTolJrs := Value;
end;

procedure T301TCR.SetVctOri(const Value: TDate);
begin
  FVctOri := Value;
end;

procedure T301TCR.SetVlrOri(const Value: Extended);
begin
  FVlrOri := Value;
end;

function T301TCR.GetOLD_AntDsc: Char;
begin
  Result := FOldAntDsc;
end;

function T301TCR.GetOLD_CodBar: string;
begin
  Result := FOldCodBar;
end;

procedure T301TCR.GetOLD_CodCli(const Value: Integer);
begin
  FOldCodCli := Value;
end;

function T301TCR.GetOLD_CodCrp: string;
begin
  Result := FOldCodCrp;
end;

function T301TCR.GetOLD_CodPor: string;
begin
  Result := FOldCodPor;
end;

function T301TCR.GetOLD_DatDsc: TDate;
begin
  Result := FOldDatDsc;
end;

function T301TCR.GetOLD_DatEmi: TDate;
begin
  Result := FOldDatEmi;
end;

function T301TCR.GetOLD_FilCtr: Integer;
begin
  Result := FOldFilCtr;
end;

function T301TCR.GetOLD_JrsDia: Extended;
begin
  Result := FOldJrsDia;
end;

function T301TCR.GetOLD_NumCtr: Integer;
begin
  Result := FOldNumCtr;
end;

function T301TCR.GetOLD_PerDsc: Double;
begin
  Result := FOldPerDsc;
end;

function T301TCR.GetOLD_PerMul: Word;
begin
  Result := FOldPerMul;
end;

function T301TCR.GetOLD_SitTit: string;
begin
  Result := FOldSitTit;
end;

function T301TCR.GetOLD_TipJrs: string;
begin
  Result := FOldTipJrs;
end;

function T301TCR.GetOLD_TolDsc: Word;
begin
  Result := FOldTolDsc;
end;

function T301TCR.GetOLD_TolJrs: SmallInt;
begin
  Result := FOldTolJrs;
end;

function T301TCR.GetOLD_VctOri: TDate;
begin
  Result := FOldVctOri;
end;

function T301TCR.GetOLD_VlrOri: Extended;
begin
  Result := FOldVlrOri;
end;

procedure T301TCR.SetOLD_AntDsc(const Value: Char);
begin
  FOldAntDsc := Value;
end;

procedure T301TCR.SetOLD_CodBar(const Value: string);
begin
  FOldCodBar := Value;
end;

function T301TCR.SetOLD_CodCli: Integer;
begin
  Result := FOldCodCli;
end;

procedure T301TCR.SetOLD_CodCrp(const Value: string);
begin
  FOldCodCrp := Value;
end;

procedure T301TCR.SetOLD_CodPor(const Value: string);
begin
  FOldCodPor := Value;
end;

procedure T301TCR.SetOLD_DatDsc(const Value: TDate);
begin
  FOldDatDsc := Value;
end;

procedure T301TCR.SetOLD_DatEmi(const Value: TDate);
begin
  FOldDatEmi := Value;
end;

procedure T301TCR.SetOLD_FilCtr(const Value: Integer);
begin
  FOldFilCtr := Value;
end;

procedure T301TCR.SetOLD_JrsDia(const Value: Extended);
begin
  FOldJrsDia := Value;
end;

procedure T301TCR.SetOLD_NumCtr(const Value: Integer);
begin
  FOldNumCtr := Value;
end;

procedure T301TCR.SetOLD_PerDsc(const Value: Double);
begin
  FOldPerDsc := Value;;
end;

procedure T301TCR.SetOLD_PerMul(const Value: Word);
begin
  FOldPerMul := Value;
end;

procedure T301TCR.SetOLD_SitTit(const Value: string);
begin
  FOldSitTit := Value;
end;

procedure T301TCR.SetOLD_TipJrs(const Value: string);
begin
  FOldTipJrs := Value;
end;

procedure T301TCR.SetOLD_TolDsc(const Value: Word);
begin
  FOldTolDsc := Value;
end;

procedure T301TCR.SetOLD_TolJrs(const Value: SmallInt);
begin
  FOldTolJrs := Value;
end;

procedure T301TCR.SetOLD_VctOri(const Value: TDate);
begin
  FOldVctOri := Value;
end;

procedure T301TCR.SetOLD_VlrOri(const Value: Extended);
begin
  FOldVlrOri := Value;
end;

end.
