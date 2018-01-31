unit o031imo;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T031IMO = class(TTabelaPadrao)
  private
    FCodMoe: string;
    FDatMoe: TDate;
    FVlrCot: Double;
    FVlrPre: Double;

    FCodMoeOLD: string;
    FDatMoeOLD: TDate;
    FVlrCotOLD: Double;
    FVlrPreOLD: Double;

    function GetCodMoe: string;
    procedure SetCodMoe(const pCodMoe: string);
    function GetDatMoe: TDate;
    procedure SetDatMoe(const pDatMoe: TDate);
    function GetVlrCot: Double;
    procedure SetVlrCot(const pVlrCot: Double);
    function GetVlrPre: Double;
    procedure SetVlrPre(const pVlrPre: Double);

    function GetCodMoeOld: string;
    procedure SetCodMoeOld(const pCodMoe: string);
    function GetDatMoeOld: TDate;
    procedure SetDatMoeOld(const pDatMoe: TDate);
    function GetVlrCotOld: Double;
    procedure SetVlrCotOld(const pVlrCot: Double);
    function GetVlrPreOld: Double;
    procedure SetVlrPreOld(const pVlrPre: Double);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property CodMoe: string read GetCodMoe write SetCodMoe;
    property DatMoe: TDate read GetDatMoe write SetDatMoe;
    property VlrCot: Double read GetVlrCot write SetVlrCot;
    property VlrPre: Double read GetVlrPre write SetVlrPre;

    property OLD_CodMoe: string read GetCodMoeOLD write SetCodMoeOLD;
    property OLD_DatMoe: TDate read GetDatMoeOLD write SetDatMoeOLD;
    property OLD_VlrCot: Double read GetVlrCotOLD write SetVlrCotOLD;
    property OLD_VlrPre: Double read GetVlrPreOLD write SetVlrPreOLD;
  end;

implementation

{ T031IMO }

constructor T031IMO.Create();
begin
  AddForeignKeys(['CodMoe'], ['CodMoe']);
  AddPrimaryKeys('CodMoe;DatMoe');

  inherited Create('E031IMO');
end;

destructor T031IMO.Destroy();
begin
  inherited;
end;

function T031IMO.GetCodMoe: string;
begin
  Result := FCodMoe;
end;

procedure T031IMO.SetCodMoe(const pCodMoe: string);
begin
  FCodMoe := pCodMoe;

  CheckField('CodMoe');
end;

function T031IMO.GetDatMoe: TDate;
begin
  Result := FDatMoe;
end;

procedure T031IMO.SetDatMoe(const pDatMoe: TDate);
begin
  FDatMoe := pDatMoe;

  CheckField('DatMoe');
end;

function T031IMO.GetVlrCot: Double;
begin
  Result := FVlrCot;
end;

procedure T031IMO.SetVlrCot(const pVlrCot: Double);
begin
  FVlrCot := pVlrCot;

  CheckField('VlrCot');
end;

function T031IMO.GetVlrPre: Double;
begin
  Result := FVlrPre;
end;

procedure T031IMO.SetVlrPre(const pVlrPre: Double);
begin
  FVlrPre := pVlrPre;

  CheckField('VlrPre');
end;

function T031IMO.GetCodMoeOLD: string;
begin
  Result := FCodMoeOLD;
end;

procedure T031IMO.SetCodMoeOLD(const pCodMoe: string);
begin
  FCodMoeOLD := pCodMoe;
end;

function T031IMO.GetDatMoeOLD: TDate;
begin
  Result := FDatMoeOLD;
end;

procedure T031IMO.SetDatMoeOLD(const pDatMoe: TDate);
begin
  FDatMoeOLD := pDatMoe;
end;

function T031IMO.GetVlrCotOLD: Double;
begin
  Result := FVlrCotOLD;
end;

procedure T031IMO.SetVlrCotOLD(const pVlrCot: Double);
begin
  FVlrCotOLD := pVlrCot;
end;

function T031IMO.GetVlrPreOLD: Double;
begin
  Result := FVlrPreOLD;
end;

procedure T031IMO.SetVlrPreOLD(const pVlrPre: Double);
begin
  FVlrPreOLD := pVlrPre;
end;

procedure T031IMO.Registros_OLD();
begin
  FCodMoeOLD := FCodMoe;
  FDatMoeOLD := FDatMoe;
  FVlrCotOLD := FVlrCot;
  FVlrPreOLD := FVlrPre;

  inherited;
end;

procedure T031IMO.RetornarValores();
begin
  FCodMoe := FCodMoeOLD;
  FDatMoe := FDatMoeOLD;
  FVlrCot := FVlrCotOLD;
  FVlrPre := FVlrPreOLD;

  inherited;
end;

end.
