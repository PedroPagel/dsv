unit o160mov;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T160MOV = class(TTabelaUsuario)
  private
    FUSU_IDCLP: Integer;
    FUSU_SeqMov: Integer;
    FUSU_CodEmp: Integer;
    FUSU_CodFil: Integer;
    FUSU_CodCli: Integer;
    FUSU_CodTpt: string;
    FUSU_NumTit: string;
    FUSU_VlrOri: Double;
    FUSU_VctOri: TDate;
    FUSU_SitTit: string;
    FUSU_VlrRea: Double;
    FUSU_VlrBon: Double;
    FUSU_DatDsc: TDate;

    FUSU_IDCLPOLD: Integer;
    FUSU_SeqMovOLD: Integer;
    FUSU_CodEmpOLD: Integer;
    FUSU_CodFilOLD: Integer;
    FUSU_CodCliOLD: Integer;
    FUSU_CodTptOLD: string;
    FUSU_NumTitOLD: string;
    FUSU_VlrOriOLD: Double;
    FUSU_VctOriOLD: TDate;
    FUSU_SitTitOLD: string;
    FUSU_VlrReaOLD: Double;
    FUSU_VlrBonOLD: Double;
    FUSU_DatDscOLD: TDate;

    function GetUSU_IDCLP: Integer;
    procedure SetUSU_IDCLP(const pUSU_IDCLP: Integer);
    function GetUSU_SeqMov: Integer;
    procedure SetUSU_SeqMov(const pUSU_SeqMov: Integer);
    function GetUSU_CodEmp: Integer;
    procedure SetUSU_CodEmp(const pUSU_CodEmp: Integer);
    function GetUSU_CodFil: Integer;
    procedure SetUSU_CodFil(const pUSU_CodFil: Integer);
    function GetUSU_CodCli: Integer;
    procedure SetUSU_CodCli(const pUSU_CodCli: Integer);
    function GetUSU_CodTpt: string;
    procedure SetUSU_CodTpt(const pUSU_CodTpt: string);
    function GetUSU_NumTit: string;
    procedure SetUSU_NumTit(const pUSU_NumTit: string);
    function GetUSU_VlrOri: Double;
    procedure SetUSU_VlrOri(const pUSU_VlrOri: Double);
    function GetUSU_VctOri: TDate;
    procedure SetUSU_VctOri(const pUSU_VctOri: TDate);
    function GetUSU_SitTit: string;
    procedure SetUSU_SitTit(const pUSU_SitTit: string);
    function GetUSU_VlrRea: Double;
    procedure SetUSU_VlrRea(const pUSU_VlrRea: Double);
    function GetUSU_VlrBon: Double;
    procedure SetUSU_VlrBon(const pUSU_VlrBon: Double);
    function GetUSU_DatDsc: TDate;
    procedure SetUSU_DatDsc(const pUSU_DatDsc: TDate);

    function GetUSU_IDCLPOld: Integer;
    procedure SetUSU_IDCLPOld(const pUSU_IDCLP: Integer);
    function GetUSU_SeqMovOld: Integer;
    procedure SetUSU_SeqMovOld(const pUSU_SeqMov: Integer);
    function GetUSU_CodEmpOld: Integer;
    procedure SetUSU_CodEmpOld(const pUSU_CodEmp: Integer);
    function GetUSU_CodFilOld: Integer;
    procedure SetUSU_CodFilOld(const pUSU_CodFil: Integer);
    function GetUSU_CodCliOld: Integer;
    procedure SetUSU_CodCliOld(const pUSU_CodCli: Integer);
    function GetUSU_CodTptOld: string;
    procedure SetUSU_CodTptOld(const pUSU_CodTpt: string);
    function GetUSU_NumTitOld: string;
    procedure SetUSU_NumTitOld(const pUSU_NumTit: string);
    function GetUSU_VlrOriOld: Double;
    procedure SetUSU_VlrOriOld(const pUSU_VlrOri: Double);
    function GetUSU_VctOriOld: TDate;
    procedure SetUSU_VctOriOld(const pUSU_VctOri: TDate);
    function GetUSU_SitTitOld: string;
    procedure SetUSU_SitTitOld(const pUSU_SitTit: string);
    function GetUSU_VlrReaOld: Double;
    procedure SetUSU_VlrReaOld(const pUSU_VlrRea: Double);
    function GetUSU_VlrBonOld: Double;
    procedure SetUSU_VlrBonOld(const pUSU_VlrBon: Double);
    function GetUSU_DatDscOld: TDate;
    procedure SetUSU_DatDscOld(const pUSU_DatDsc: TDate);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_IDCLP: Integer read GetUSU_IDCLP write SetUSU_IDCLP;
    property USU_SeqMov: Integer read GetUSU_SeqMov write SetUSU_SeqMov;
    property USU_CodEmp: Integer read GetUSU_CodEmp write SetUSU_CodEmp;
    property USU_CodFil: Integer read GetUSU_CodFil write SetUSU_CodFil;
    property USU_CodCli: Integer read GetUSU_CodCli write SetUSU_CodCli;
    property USU_CodTpt: string read GetUSU_CodTpt write SetUSU_CodTpt;
    property USU_NumTit: string read GetUSU_NumTit write SetUSU_NumTit;
    property USU_VlrOri: Double read GetUSU_VlrOri write SetUSU_VlrOri;
    property USU_VctOri: TDate read GetUSU_VctOri write SetUSU_VctOri;
    property USU_SitTit: string read GetUSU_SitTit write SetUSU_SitTit;
    property USU_VlrRea: Double read GetUSU_VlrRea write SetUSU_VlrRea;
    property USU_VlrBon: Double read GetUSU_VlrBon write SetUSU_VlrBon;
    property USU_DatDsc: TDate read GetUSU_DatDsc write SetUSU_DatDsc;

    property OLD_USU_IDCLP: Integer read GetUSU_IDCLPOLD write SetUSU_IDCLPOLD;
    property OLD_USU_SeqMov: Integer read GetUSU_SeqMovOLD write SetUSU_SeqMovOLD;
    property OLD_USU_CodEmp: Integer read GetUSU_CodEmpOLD write SetUSU_CodEmpOLD;
    property OLD_USU_CodFil: Integer read GetUSU_CodFilOLD write SetUSU_CodFilOLD;
    property OLD_USU_CodCli: Integer read GetUSU_CodCliOLD write SetUSU_CodCliOLD;
    property OLD_USU_CodTpt: string read GetUSU_CodTptOLD write SetUSU_CodTptOLD;
    property OLD_USU_NumTit: string read GetUSU_NumTitOLD write SetUSU_NumTitOLD;
    property OLD_USU_VlrOri: Double read GetUSU_VlrOriOLD write SetUSU_VlrOriOLD;
    property OLD_USU_VctOri: TDate read GetUSU_VctOriOLD write SetUSU_VctOriOLD;
    property OLD_USU_SitTit: string read GetUSU_SitTitOLD write SetUSU_SitTitOLD;
    property OLD_USU_VlrRea: Double read GetUSU_VlrReaOLD write SetUSU_VlrReaOLD;
    property OLD_USU_VlrBon: Double read GetUSU_VlrBonOLD write SetUSU_VlrBonOLD;
    property OLD_USU_DatDsc: TDate read GetUSU_DatDscOLD write SetUSU_DatDscOLD;
  end;

implementation

{ T160MOV }

constructor T160MOV.Create();
begin
  AddForeignKeys(['USU_IDCLP'], ['USU_ID']);
  AddPrimaryKeys('USU_ID');

  inherited Create('USU_T160MOV');
end;

destructor T160MOV.Destroy();
begin
  inherited;
end;

function T160MOV.GetUSU_IDCLP: Integer;
begin
  Result := FUSU_IDCLP;
end;

procedure T160MOV.SetUSU_IDCLP(const pUSU_IDCLP: Integer);
begin
  FUSU_IDCLP := pUSU_IDCLP;

  CheckField('USU_IDCLP');
end;

function T160MOV.GetUSU_SeqMov: Integer;
begin
  Result := FUSU_SeqMov;
end;

procedure T160MOV.SetUSU_SeqMov(const pUSU_SeqMov: Integer);
begin
  FUSU_SeqMov := pUSU_SeqMov;

  CheckField('USU_SeqMov');
end;

function T160MOV.GetUSU_CodEmp: Integer;
begin
  Result := FUSU_CodEmp;
end;

procedure T160MOV.SetUSU_CodEmp(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmp := pUSU_CodEmp;

  CheckField('USU_CodEmp');
end;

function T160MOV.GetUSU_CodFil: Integer;
begin
  Result := FUSU_CodFil;
end;

procedure T160MOV.SetUSU_CodFil(const pUSU_CodFil: Integer);
begin
  FUSU_CodFil := pUSU_CodFil;

  CheckField('USU_CodFil');
end;

function T160MOV.GetUSU_CodCli: Integer;
begin
  Result := FUSU_CodCli;
end;

procedure T160MOV.SetUSU_CodCli(const pUSU_CodCli: Integer);
begin
  FUSU_CodCli := pUSU_CodCli;

  CheckField('USU_CodCli');
end;

function T160MOV.GetUSU_CodTpt: string;
begin
  Result := FUSU_CodTpt;
end;

procedure T160MOV.SetUSU_CodTpt(const pUSU_CodTpt: string);
begin
  FUSU_CodTpt := pUSU_CodTpt;

  CheckField('USU_CodTpt');
end;

function T160MOV.GetUSU_NumTit: string;
begin
  Result := FUSU_NumTit;
end;

procedure T160MOV.SetUSU_NumTit(const pUSU_NumTit: string);
begin
  FUSU_NumTit := pUSU_NumTit;

  CheckField('USU_NumTit');
end;

function T160MOV.GetUSU_VlrOri: Double;
begin
  Result := FUSU_VlrOri;
end;

procedure T160MOV.SetUSU_VlrOri(const pUSU_VlrOri: Double);
begin
  FUSU_VlrOri := pUSU_VlrOri;

  CheckField('USU_VlrOri');
end;

function T160MOV.GetUSU_VctOri: TDate;
begin
  Result := FUSU_VctOri;
end;

procedure T160MOV.SetUSU_VctOri(const pUSU_VctOri: TDate);
begin
  FUSU_VctOri := pUSU_VctOri;

  CheckField('USU_VctOri');
end;

function T160MOV.GetUSU_SitTit: string;
begin
  Result := FUSU_SitTit;
end;

procedure T160MOV.SetUSU_SitTit(const pUSU_SitTit: string);
begin
  FUSU_SitTit := pUSU_SitTit;

  CheckField('USU_SitTit');
end;

function T160MOV.GetUSU_VlrRea: Double;
begin
  Result := FUSU_VlrRea;
end;

procedure T160MOV.SetUSU_VlrRea(const pUSU_VlrRea: Double);
begin
  FUSU_VlrRea := pUSU_VlrRea;

  CheckField('USU_VlrRea');
end;

function T160MOV.GetUSU_VlrBon: Double;
begin
  Result := FUSU_VlrBon;
end;

procedure T160MOV.SetUSU_VlrBon(const pUSU_VlrBon: Double);
begin
  FUSU_VlrBon := pUSU_VlrBon;

  CheckField('USU_VlrBon');
end;

function T160MOV.GetUSU_DatDsc: TDate;
begin
  Result := FUSU_DatDsc;
end;

procedure T160MOV.SetUSU_DatDsc(const pUSU_DatDsc: TDate);
begin
  FUSU_DatDsc := pUSU_DatDsc;

  CheckField('USU_DatDsc');
end;

function T160MOV.GetUSU_IDCLPOLD: Integer;
begin
  Result := FUSU_IDCLPOLD;
end;

procedure T160MOV.SetUSU_IDCLPOLD(const pUSU_IDCLP: Integer);
begin
  FUSU_IDCLPOLD := pUSU_IDCLP;
end;

function T160MOV.GetUSU_SeqMovOLD: Integer;
begin
  Result := FUSU_SeqMovOLD;
end;

procedure T160MOV.SetUSU_SeqMovOLD(const pUSU_SeqMov: Integer);
begin
  FUSU_SeqMovOLD := pUSU_SeqMov;
end;

function T160MOV.GetUSU_CodEmpOLD: Integer;
begin
  Result := FUSU_CodEmpOLD;
end;

procedure T160MOV.SetUSU_CodEmpOLD(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmpOLD := pUSU_CodEmp;
end;

function T160MOV.GetUSU_CodFilOLD: Integer;
begin
  Result := FUSU_CodFilOLD;
end;

procedure T160MOV.SetUSU_CodFilOLD(const pUSU_CodFil: Integer);
begin
  FUSU_CodFilOLD := pUSU_CodFil;
end;

function T160MOV.GetUSU_CodCliOLD: Integer;
begin
  Result := FUSU_CodCliOLD;
end;

procedure T160MOV.SetUSU_CodCliOLD(const pUSU_CodCli: Integer);
begin
  FUSU_CodCliOLD := pUSU_CodCli;
end;

function T160MOV.GetUSU_CodTptOLD: string;
begin
  Result := FUSU_CodTptOLD;
end;

procedure T160MOV.SetUSU_CodTptOLD(const pUSU_CodTpt: string);
begin
  FUSU_CodTptOLD := pUSU_CodTpt;
end;

function T160MOV.GetUSU_NumTitOLD: string;
begin
  Result := FUSU_NumTitOLD;
end;

procedure T160MOV.SetUSU_NumTitOLD(const pUSU_NumTit: string);
begin
  FUSU_NumTitOLD := pUSU_NumTit;
end;

function T160MOV.GetUSU_VlrOriOLD: Double;
begin
  Result := FUSU_VlrOriOLD;
end;

procedure T160MOV.SetUSU_VlrOriOLD(const pUSU_VlrOri: Double);
begin
  FUSU_VlrOriOLD := pUSU_VlrOri;
end;

function T160MOV.GetUSU_VctOriOLD: TDate;
begin
  Result := FUSU_VctOriOLD;
end;

procedure T160MOV.SetUSU_VctOriOLD(const pUSU_VctOri: TDate);
begin
  FUSU_VctOriOLD := pUSU_VctOri;
end;

function T160MOV.GetUSU_SitTitOLD: string;
begin
  Result := FUSU_SitTitOLD;
end;

procedure T160MOV.SetUSU_SitTitOLD(const pUSU_SitTit: string);
begin
  FUSU_SitTitOLD := pUSU_SitTit;
end;

function T160MOV.GetUSU_VlrReaOLD: Double;
begin
  Result := FUSU_VlrReaOLD;
end;

procedure T160MOV.SetUSU_VlrReaOLD(const pUSU_VlrRea: Double);
begin
  FUSU_VlrReaOLD := pUSU_VlrRea;
end;

function T160MOV.GetUSU_VlrBonOLD: Double;
begin
  Result := FUSU_VlrBonOLD;
end;

procedure T160MOV.SetUSU_VlrBonOLD(const pUSU_VlrBon: Double);
begin
  FUSU_VlrBonOLD := pUSU_VlrBon;
end;

function T160MOV.GetUSU_DatDscOLD: TDate;
begin
  Result := FUSU_DatDscOLD;
end;

procedure T160MOV.SetUSU_DatDscOLD(const pUSU_DatDsc: TDate);
begin
  FUSU_DatDscOLD := pUSU_DatDsc;
end;

procedure T160MOV.Registros_OLD();
begin
  FUSU_IDCLPOLD := FUSU_IDCLP;
  FUSU_SeqMovOLD := FUSU_SeqMov;
  FUSU_CodEmpOLD := FUSU_CodEmp;
  FUSU_CodFilOLD := FUSU_CodFil;
  FUSU_CodCliOLD := FUSU_CodCli;
  FUSU_CodTptOLD := FUSU_CodTpt;
  FUSU_NumTitOLD := FUSU_NumTit;
  FUSU_VlrOriOLD := FUSU_VlrOri;
  FUSU_VctOriOLD := FUSU_VctOri;
  FUSU_SitTitOLD := FUSU_SitTit;
  FUSU_VlrReaOLD := FUSU_VlrRea;
  FUSU_VlrBonOLD := FUSU_VlrBon;
  FUSU_DatDscOLD := FUSU_DatDsc;

  inherited;
end;

procedure T160MOV.RetornarValores();
begin
  FUSU_IDCLP := FUSU_IDCLPOLD;
  FUSU_SeqMov := FUSU_SeqMovOLD;
  FUSU_CodEmp := FUSU_CodEmpOLD;
  FUSU_CodFil := FUSU_CodFilOLD;
  FUSU_CodCli := FUSU_CodCliOLD;
  FUSU_CodTpt := FUSU_CodTptOLD;
  FUSU_NumTit := FUSU_NumTitOLD;
  FUSU_VlrOri := FUSU_VlrOriOLD;
  FUSU_VctOri := FUSU_VctOriOLD;
  FUSU_SitTit := FUSU_SitTitOLD;
  FUSU_VlrRea := FUSU_VlrReaOLD;
  FUSU_VlrBon := FUSU_VlrBonOLD;
  FUSU_DatDsc := FUSU_DatDscOLD;
end;

end.
