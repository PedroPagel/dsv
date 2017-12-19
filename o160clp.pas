unit o160clp;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T160CLP = class(TTabelaUsuario)
  private
    FUSU_IDIND: Integer;
    FUSU_IniVig: TDate;
    FUSU_VigFim: TDate;
    FUSU_CodEmp: Integer;
    FUSU_CodFil: Integer;
    FUSU_CodCli: Integer;
    FUSU_NumCtr: Integer;
    FUSU_VlrCtr: Double;
    FUSU_IndFin: string;
    FUSU_CodBem: string;
    FUSU_DatGer: TDate;
    FUSU_UsuGer: Integer;
    FUSU_DatAlt: TDate;
    FUSU_UsuAlt: Integer;
    FUSU_PerEre: Integer;

    FUSU_IDINDOLD: Integer;
    FUSU_IniVigOLD: TDate;
    FUSU_VigFimOLD: TDate;
    FUSU_CodEmpOLD: Integer;
    FUSU_CodFilOLD: Integer;
    FUSU_CodCliOLD: Integer;
    FUSU_NumCtrOLD: Integer;
    FUSU_VlrCtrOLD: Double;
    FUSU_IndFinOLD: string;
    FUSU_CodBemOLD: string;
    FUSU_DatGerOLD: TDate;
    FUSU_UsuGerOLD: Integer;
    FUSU_DatAltOLD: TDate;
    FUSU_UsuAltOLD: Integer;
    FUSU_PerEreOLD: Integer;

    function GetUSU_IDIND: Integer;
    procedure SetUSU_IDIND(const pUSU_IDIND: Integer);
    function GetUSU_IniVig: TDate;
    procedure SetUSU_IniVig(const pUSU_IniVig: TDate);
    function GetUSU_VigFim: TDate;
    procedure SetUSU_VigFim(const pUSU_VigFim: TDate);
    function GetUSU_CodEmp: Integer;
    procedure SetUSU_CodEmp(const pUSU_CodEmp: Integer);
    function GetUSU_CodFil: Integer;
    procedure SetUSU_CodFil(const pUSU_CodFil: Integer);
    function GetUSU_CodCli: Integer;
    procedure SetUSU_CodCli(const pUSU_CodCli: Integer);
    function GetUSU_NumCtr: Integer;
    procedure SetUSU_NumCtr(const pUSU_NumCtr: Integer);
    function GetUSU_VlrCtr: Double;
    procedure SetUSU_VlrCtr(const pUSU_VlrCtr: Double);
    function GetUSU_IndFin: string;
    procedure SetUSU_IndFin(const pUSU_IndFin: string);
    function GetUSU_CodBem: string;
    procedure SetUSU_CodBem(const pUSU_CodBem: string);
    function GetUSU_DatGer: TDate;
    procedure SetUSU_DatGer(const pUSU_DatGer: TDate);
    function GetUSU_UsuGer: Integer;
    procedure SetUSU_UsuGer(const pUSU_UsuGer: Integer);
    function GetUSU_DatAlt: TDate;
    procedure SetUSU_DatAlt(const pUSU_DatAlt: TDate);
    function GetUSU_UsuAlt: Integer;
    procedure SetUSU_UsuAlt(const pUSU_UsuAlt: Integer);
    function GetUSU_PerEre: Integer;
    procedure SetUSU_PerEre(const pUSU_PerEre: Integer);

    function GetUSU_IDINDOld: Integer;
    procedure SetUSU_IDINDOld(const pUSU_IDIND: Integer);
    function GetUSU_IniVigOld: TDate;
    procedure SetUSU_IniVigOld(const pUSU_IniVig: TDate);
    function GetUSU_VigFimOld: TDate;
    procedure SetUSU_VigFimOld(const pUSU_VigFim: TDate);
    function GetUSU_CodEmpOld: Integer;
    procedure SetUSU_CodEmpOld(const pUSU_CodEmp: Integer);
    function GetUSU_CodFilOld: Integer;
    procedure SetUSU_CodFilOld(const pUSU_CodFil: Integer);
    function GetUSU_CodCliOld: Integer;
    procedure SetUSU_CodCliOld(const pUSU_CodCli: Integer);
    function GetUSU_NumCtrOld: Integer;
    procedure SetUSU_NumCtrOld(const pUSU_NumCtr: Integer);
    function GetUSU_VlrCtrOld: Double;
    procedure SetUSU_VlrCtrOld(const pUSU_VlrCtr: Double);
    function GetUSU_IndFinOld: string;
    procedure SetUSU_IndFinOld(const pUSU_IndFin: string);
    function GetUSU_CodBemOld: string;
    procedure SetUSU_CodBemOld(const pUSU_CodBem: string);
    function GetUSU_DatGerOld: TDate;
    procedure SetUSU_DatGerOld(const pUSU_DatGer: TDate);
    function GetUSU_UsuGerOld: Integer;
    procedure SetUSU_UsuGerOld(const pUSU_UsuGer: Integer);
    function GetUSU_DatAltOld: TDate;
    procedure SetUSU_DatAltOld(const pUSU_DatAlt: TDate);
    function GetUSU_UsuAltOld: Integer;
    procedure SetUSU_UsuAltOld(const pUSU_UsuAlt: Integer);
    function GetUSU_PerEreOld: Integer;
    procedure SetUSU_PerEreOld(const pUSU_PerEre: Integer);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_IDIND: Integer read GetUSU_IDIND write SetUSU_IDIND;
    property USU_IniVig: TDate read GetUSU_IniVig write SetUSU_IniVig;
    property USU_VigFim: TDate read GetUSU_VigFim write SetUSU_VigFim;
    property USU_CodEmp: Integer read GetUSU_CodEmp write SetUSU_CodEmp;
    property USU_CodFil: Integer read GetUSU_CodFil write SetUSU_CodFil;
    property USU_CodCli: Integer read GetUSU_CodCli write SetUSU_CodCli;
    property USU_NumCtr: Integer read GetUSU_NumCtr write SetUSU_NumCtr;
    property USU_VlrCtr: Double read GetUSU_VlrCtr write SetUSU_VlrCtr;
    property USU_IndFin: string read GetUSU_IndFin write SetUSU_IndFin;
    property USU_CodBem: string read GetUSU_CodBem write SetUSU_CodBem;
    property USU_DatGer: TDate read GetUSU_DatGer write SetUSU_DatGer;
    property USU_UsuGer: Integer read GetUSU_UsuGer write SetUSU_UsuGer;
    property USU_DatAlt: TDate read GetUSU_DatAlt write SetUSU_DatAlt;
    property USU_UsuAlt: Integer read GetUSU_UsuAlt write SetUSU_UsuAlt;
    property USU_PerEre: Integer read GetUSU_PerEre write SetUSU_PerEre;

    property OLD_USU_IDIND: Integer read GetUSU_IDINDOLD write SetUSU_IDINDOLD;
    property OLD_USU_IniVig: TDate read GetUSU_IniVigOLD write SetUSU_IniVigOLD;
    property OLD_USU_VigFim: TDate read GetUSU_VigFimOLD write SetUSU_VigFimOLD;
    property OLD_USU_CodEmp: Integer read GetUSU_CodEmpOLD write SetUSU_CodEmpOLD;
    property OLD_USU_CodFil: Integer read GetUSU_CodFilOLD write SetUSU_CodFilOLD;
    property OLD_USU_CodCli: Integer read GetUSU_CodCliOLD write SetUSU_CodCliOLD;
    property OLD_USU_NumCtr: Integer read GetUSU_NumCtrOLD write SetUSU_NumCtrOLD;
    property OLD_USU_VlrCtr: Double read GetUSU_VlrCtrOLD write SetUSU_VlrCtrOLD;
    property OLD_USU_IndFin: string read GetUSU_IndFinOLD write SetUSU_IndFinOLD;
    property OLD_USU_CodBem: string read GetUSU_CodBemOLD write SetUSU_CodBemOLD;
    property OLD_USU_DatGer: TDate read GetUSU_DatGerOLD write SetUSU_DatGerOLD;
    property OLD_USU_UsuGer: Integer read GetUSU_UsuGerOLD write SetUSU_UsuGerOLD;
    property OLD_USU_DatAlt: TDate read GetUSU_DatAltOLD write SetUSU_DatAltOLD;
    property OLD_USU_UsuAlt: Integer read GetUSU_UsuAltOLD write SetUSU_UsuAltOLD;
    property OLD_USU_PerEre: Integer read GetUSU_PerEreOLD write SetUSU_PerEreOLD;
  end;

implementation

{ T160CLP }

constructor T160CLP.Create();
begin
  AddForeignKeys(['USU_IDIND'], ['USU_ID']);
  AddPrimaryKeys('USU_ID');

  inherited Create('USU_T160CLP');
end;

destructor T160CLP.Destroy();
begin
  inherited;
end;

function T160CLP.GetUSU_IDIND: Integer;
begin
  Result := FUSU_IDIND;
end;

procedure T160CLP.SetUSU_IDIND(const pUSU_IDIND: Integer);
begin
  FUSU_IDIND := pUSU_IDIND;

  CheckField('USU_IDIND');
end;

function T160CLP.GetUSU_IniVig: TDate;
begin
  Result := FUSU_IniVig;
end;

procedure T160CLP.SetUSU_IniVig(const pUSU_IniVig: TDate);
begin
  FUSU_IniVig := pUSU_IniVig;

  CheckField('USU_IniVig');
end;

function T160CLP.GetUSU_VigFim: TDate;
begin
  Result := FUSU_VigFim;
end;

procedure T160CLP.SetUSU_VigFim(const pUSU_VigFim: TDate);
begin
  FUSU_VigFim := pUSU_VigFim;

  CheckField('USU_VigFim');
end;

function T160CLP.GetUSU_CodEmp: Integer;
begin
  Result := FUSU_CodEmp;
end;

procedure T160CLP.SetUSU_CodEmp(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmp := pUSU_CodEmp;

  CheckField('USU_CodEmp');
end;

function T160CLP.GetUSU_CodFil: Integer;
begin
  Result := FUSU_CodFil;
end;

procedure T160CLP.SetUSU_CodFil(const pUSU_CodFil: Integer);
begin
  FUSU_CodFil := pUSU_CodFil;

  CheckField('USU_CodFil');
end;

function T160CLP.GetUSU_CodCli: Integer;
begin
  Result := FUSU_CodCli;
end;

procedure T160CLP.SetUSU_CodCli(const pUSU_CodCli: Integer);
begin
  FUSU_CodCli := pUSU_CodCli;

  CheckField('USU_CodCli');
end;

function T160CLP.GetUSU_NumCtr: Integer;
begin
  Result := FUSU_NumCtr;
end;

procedure T160CLP.SetUSU_NumCtr(const pUSU_NumCtr: Integer);
begin
  FUSU_NumCtr := pUSU_NumCtr;

  CheckField('USU_NumCtr');
end;

function T160CLP.GetUSU_VlrCtr: Double;
begin
  Result := FUSU_VlrCtr;
end;

procedure T160CLP.SetUSU_VlrCtr(const pUSU_VlrCtr: Double);
begin
  FUSU_VlrCtr := pUSU_VlrCtr;

  CheckField('USU_VlrCtr');
end;

function T160CLP.GetUSU_IndFin: string;
begin
  Result := FUSU_IndFin;
end;

procedure T160CLP.SetUSU_IndFin(const pUSU_IndFin: string);
begin
  FUSU_IndFin := pUSU_IndFin;

  CheckField('USU_IndFin');
end;

function T160CLP.GetUSU_CodBem: string;
begin
  Result := FUSU_CodBem;
end;

procedure T160CLP.SetUSU_CodBem(const pUSU_CodBem: string);
begin
  FUSU_CodBem := pUSU_CodBem;

  CheckField('USU_CodBem');
end;

function T160CLP.GetUSU_DatGer: TDate;
begin
  Result := FUSU_DatGer;
end;

procedure T160CLP.SetUSU_DatGer(const pUSU_DatGer: TDate);
begin
  FUSU_DatGer := pUSU_DatGer;

  CheckField('USU_DatGer');
end;

function T160CLP.GetUSU_UsuGer: Integer;
begin
  Result := FUSU_UsuGer;
end;

procedure T160CLP.SetUSU_UsuGer(const pUSU_UsuGer: Integer);
begin
  FUSU_UsuGer := pUSU_UsuGer;

  CheckField('USU_UsuGer');
end;

function T160CLP.GetUSU_DatAlt: TDate;
begin
  Result := FUSU_DatAlt;
end;

procedure T160CLP.SetUSU_DatAlt(const pUSU_DatAlt: TDate);
begin
  FUSU_DatAlt := pUSU_DatAlt;

  CheckField('USU_DatAlt');
end;

function T160CLP.GetUSU_UsuAlt: Integer;
begin
  Result := FUSU_UsuAlt;
end;

procedure T160CLP.SetUSU_UsuAlt(const pUSU_UsuAlt: Integer);
begin
  FUSU_UsuAlt := pUSU_UsuAlt;

  CheckField('USU_UsuAlt');
end;

function T160CLP.GetUSU_PerEre: Integer;
begin
  Result := FUSU_PerEre;
end;

procedure T160CLP.SetUSU_PerEre(const pUSU_PerEre: Integer);
begin
  FUSU_PerEre := pUSU_PerEre;

  CheckField('USU_PerEre');
end;

function T160CLP.GetUSU_IDINDOLD: Integer;
begin
  Result := FUSU_IDINDOLD;
end;

procedure T160CLP.SetUSU_IDINDOLD(const pUSU_IDIND: Integer);
begin
  FUSU_IDINDOLD := pUSU_IDIND;
end;

function T160CLP.GetUSU_IniVigOLD: TDate;
begin
  Result := FUSU_IniVigOLD;
end;

procedure T160CLP.SetUSU_IniVigOLD(const pUSU_IniVig: TDate);
begin
  FUSU_IniVigOLD := pUSU_IniVig;
end;

function T160CLP.GetUSU_VigFimOLD: TDate;
begin
  Result := FUSU_VigFimOLD;
end;

procedure T160CLP.SetUSU_VigFimOLD(const pUSU_VigFim: TDate);
begin
  FUSU_VigFimOLD := pUSU_VigFim;
end;

function T160CLP.GetUSU_CodEmpOLD: Integer;
begin
  Result := FUSU_CodEmpOLD;
end;

procedure T160CLP.SetUSU_CodEmpOLD(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmpOLD := pUSU_CodEmp;
end;

function T160CLP.GetUSU_CodFilOLD: Integer;
begin
  Result := FUSU_CodFilOLD;
end;

procedure T160CLP.SetUSU_CodFilOLD(const pUSU_CodFil: Integer);
begin
  FUSU_CodFilOLD := pUSU_CodFil;
end;

function T160CLP.GetUSU_CodCliOLD: Integer;
begin
  Result := FUSU_CodCliOLD;
end;

procedure T160CLP.SetUSU_CodCliOLD(const pUSU_CodCli: Integer);
begin
  FUSU_CodCliOLD := pUSU_CodCli;
end;

function T160CLP.GetUSU_NumCtrOLD: Integer;
begin
  Result := FUSU_NumCtrOLD;
end;

procedure T160CLP.SetUSU_NumCtrOLD(const pUSU_NumCtr: Integer);
begin
  FUSU_NumCtrOLD := pUSU_NumCtr;
end;

function T160CLP.GetUSU_VlrCtrOLD: Double;
begin
  Result := FUSU_VlrCtrOLD;
end;

procedure T160CLP.SetUSU_VlrCtrOLD(const pUSU_VlrCtr: Double);
begin
  FUSU_VlrCtrOLD := pUSU_VlrCtr;
end;

function T160CLP.GetUSU_IndFinOLD: string;
begin
  Result := FUSU_IndFinOLD;
end;

procedure T160CLP.SetUSU_IndFinOLD(const pUSU_IndFin: string);
begin
  FUSU_IndFinOLD := pUSU_IndFin;
end;

function T160CLP.GetUSU_CodBemOLD: string;
begin
  Result := FUSU_CodBemOLD;
end;

procedure T160CLP.SetUSU_CodBemOLD(const pUSU_CodBem: string);
begin
  FUSU_CodBemOLD := pUSU_CodBem;
end;

function T160CLP.GetUSU_DatGerOLD: TDate;
begin
  Result := FUSU_DatGerOLD;
end;

procedure T160CLP.SetUSU_DatGerOLD(const pUSU_DatGer: TDate);
begin
  FUSU_DatGerOLD := pUSU_DatGer;
end;

function T160CLP.GetUSU_UsuGerOLD: Integer;
begin
  Result := FUSU_UsuGerOLD;
end;

procedure T160CLP.SetUSU_UsuGerOLD(const pUSU_UsuGer: Integer);
begin
  FUSU_UsuGerOLD := pUSU_UsuGer;
end;

function T160CLP.GetUSU_DatAltOLD: TDate;
begin
  Result := FUSU_DatAltOLD;
end;

procedure T160CLP.SetUSU_DatAltOLD(const pUSU_DatAlt: TDate);
begin
  FUSU_DatAltOLD := pUSU_DatAlt;
end;

function T160CLP.GetUSU_UsuAltOLD: Integer;
begin
  Result := FUSU_UsuAltOLD;
end;

procedure T160CLP.SetUSU_UsuAltOLD(const pUSU_UsuAlt: Integer);
begin
  FUSU_UsuAltOLD := pUSU_UsuAlt;
end;

function T160CLP.GetUSU_PerEreOLD: Integer;
begin
  Result := FUSU_PerEreOLD;
end;

procedure T160CLP.SetUSU_PerEreOLD(const pUSU_PerEre: Integer);
begin
  FUSU_PerEreOLD := pUSU_PerEre;
end;

procedure T160CLP.Registros_OLD();
begin
  FUSU_IDINDOLD := FUSU_IDIND;
  FUSU_IniVigOLD := FUSU_IniVig;
  FUSU_VigFimOLD := FUSU_VigFim;
  FUSU_CodEmpOLD := FUSU_CodEmp;
  FUSU_CodFilOLD := FUSU_CodFil;
  FUSU_CodCliOLD := FUSU_CodCli;
  FUSU_NumCtrOLD := FUSU_NumCtr;
  FUSU_VlrCtrOLD := FUSU_VlrCtr;
  FUSU_IndFinOLD := FUSU_IndFin;
  FUSU_CodBemOLD := FUSU_CodBem;
  FUSU_DatGerOLD := FUSU_DatGer;
  FUSU_UsuGerOLD := FUSU_UsuGer;
  FUSU_DatAltOLD := FUSU_DatAlt;
  FUSU_UsuAltOLD := FUSU_UsuAlt;
  FUSU_PerEreOLD := FUSU_PerEre;

  inherited;
end;

procedure T160CLP.RetornarValores();
begin
  FUSU_IDIND := FUSU_IDINDOLD;
  FUSU_IniVig := FUSU_IniVigOLD;
  FUSU_VigFim := FUSU_VigFimOLD;
  FUSU_CodEmp := FUSU_CodEmpOLD;
  FUSU_CodFil := FUSU_CodFilOLD;
  FUSU_CodCli := FUSU_CodCliOLD;
  FUSU_NumCtr := FUSU_NumCtrOLD;
  FUSU_VlrCtr := FUSU_VlrCtrOLD;
  FUSU_IndFin := FUSU_IndFinOLD;
  FUSU_CodBem := FUSU_CodBemOLD;
  FUSU_DatGer := FUSU_DatGerOLD;
  FUSU_UsuGer := FUSU_UsuGerOLD;
  FUSU_DatAlt := FUSU_DatAltOLD;
  FUSU_UsuAlt := FUSU_UsuAltOLD;
  FUSU_PerEre := FUSU_PerEreOLD;
end;

end.
