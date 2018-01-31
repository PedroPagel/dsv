unit o501pfi;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T501PFI = class(TTabelaUsuario)
  private
    FUSU_CodEmp: Integer;
    FUSU_TnsTit: string;
    FUSU_TnsImp: string;
    FUSU_TnsDes: string;
    FUSU_TptTit: string;
    FUSU_TptImp: string;
    FUSU_TptDes: string;
    FUSU_CodPor: string;
    FUSU_CodCrt: string;
    FUSU_DatGer: TDate;
    FUSU_UsuGer: Integer;
    FUSU_DatAlt: TDate;
    FUSU_UsuAlt: Integer;

    FUSU_CodEmpOLD: Integer;
    FUSU_TnsTitOLD: string;
    FUSU_TnsImpOLD: string;
    FUSU_TnsDesOLD: string;
    FUSU_TptTitOLD: string;
    FUSU_TptImpOLD: string;
    FUSU_TptDesOLD: string;
    FUSU_CodPorOLD: string;
    FUSU_CodCrtOLD: string;
    FUSU_DatGerOLD: TDate;
    FUSU_UsuGerOLD: Integer;
    FUSU_DatAltOLD: TDate;
    FUSU_UsuAltOLD: Integer;

    function GetUSU_CodEmp: Integer;
    procedure SetUSU_CodEmp(const pUSU_CodEmp: Integer);
    function GetUSU_TnsTit: string;
    procedure SetUSU_TnsTit(const pUSU_TnsTit: string);
    function GetUSU_TnsImp: string;
    procedure SetUSU_TnsImp(const pUSU_TnsImp: string);
    function GetUSU_TnsDes: string;
    procedure SetUSU_TnsDes(const pUSU_TnsDes: string);
    function GetUSU_TptTit: string;
    procedure SetUSU_TptTit(const pUSU_TptTit: string);
    function GetUSU_TptImp: string;
    procedure SetUSU_TptImp(const pUSU_TptImp: string);
    function GetUSU_TptDes: string;
    procedure SetUSU_TptDes(const pUSU_TptDes: string);
    function GetUSU_CodPor: string;
    procedure SetUSU_CodPor(const pUSU_CodPor: string);
    function GetUSU_CodCrt: string;
    procedure SetUSU_CodCrt(const pUSU_CodCrt: string);
    function GetUSU_DatGer: TDate;
    procedure SetUSU_DatGer(const pUSU_DatGer: TDate);
    function GetUSU_UsuGer: Integer;
    procedure SetUSU_UsuGer(const pUSU_UsuGer: Integer);
    function GetUSU_DatAlt: TDate;
    procedure SetUSU_DatAlt(const pUSU_DatAlt: TDate);
    function GetUSU_UsuAlt: Integer;
    procedure SetUSU_UsuAlt(const pUSU_UsuAlt: Integer);

    function GetUSU_CodEmpOld: Integer;
    procedure SetUSU_CodEmpOld(const pUSU_CodEmp: Integer);
    function GetUSU_TnsTitOld: string;
    procedure SetUSU_TnsTitOld(const pUSU_TnsTit: string);
    function GetUSU_TnsImpOld: string;
    procedure SetUSU_TnsImpOld(const pUSU_TnsImp: string);
    function GetUSU_TnsDesOld: string;
    procedure SetUSU_TnsDesOld(const pUSU_TnsDes: string);
    function GetUSU_TptTitOld: string;
    procedure SetUSU_TptTitOld(const pUSU_TptTit: string);
    function GetUSU_TptImpOld: string;
    procedure SetUSU_TptImpOld(const pUSU_TptImp: string);
    function GetUSU_TptDesOld: string;
    procedure SetUSU_TptDesOld(const pUSU_TptDes: string);
    function GetUSU_CodPorOld: string;
    procedure SetUSU_CodPorOld(const pUSU_CodPor: string);
    function GetUSU_CodCrtOld: string;
    procedure SetUSU_CodCrtOld(const pUSU_CodCrt: string);
    function GetUSU_DatGerOld: TDate;
    procedure SetUSU_DatGerOld(const pUSU_DatGer: TDate);
    function GetUSU_UsuGerOld: Integer;
    procedure SetUSU_UsuGerOld(const pUSU_UsuGer: Integer);
    function GetUSU_DatAltOld: TDate;
    procedure SetUSU_DatAltOld(const pUSU_DatAlt: TDate);
    function GetUSU_UsuAltOld: Integer;
    procedure SetUSU_UsuAltOld(const pUSU_UsuAlt: Integer);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_CodEmp: Integer read GetUSU_CodEmp write SetUSU_CodEmp;
    property USU_TnsTit: string read GetUSU_TnsTit write SetUSU_TnsTit;
    property USU_TnsImp: string read GetUSU_TnsImp write SetUSU_TnsImp;
    property USU_TnsDes: string read GetUSU_TnsDes write SetUSU_TnsDes;
    property USU_TptTit: string read GetUSU_TptTit write SetUSU_TptTit;
    property USU_TptImp: string read GetUSU_TptImp write SetUSU_TptImp;
    property USU_TptDes: string read GetUSU_TptDes write SetUSU_TptDes;
    property USU_CodPor: string read GetUSU_CodPor write SetUSU_CodPor;
    property USU_CodCrt: string read GetUSU_CodCrt write SetUSU_CodCrt;
    property USU_DatGer: TDate read GetUSU_DatGer write SetUSU_DatGer;
    property USU_UsuGer: Integer read GetUSU_UsuGer write SetUSU_UsuGer;
    property USU_DatAlt: TDate read GetUSU_DatAlt write SetUSU_DatAlt;
    property USU_UsuAlt: Integer read GetUSU_UsuAlt write SetUSU_UsuAlt;

    property OLD_USU_CodEmp: Integer read GetUSU_CodEmpOLD write SetUSU_CodEmpOLD;
    property OLD_USU_TnsTit: string read GetUSU_TnsTitOLD write SetUSU_TnsTitOLD;
    property OLD_USU_TnsImp: string read GetUSU_TnsImpOLD write SetUSU_TnsImpOLD;
    property OLD_USU_TnsDes: string read GetUSU_TnsDesOLD write SetUSU_TnsDesOLD;
    property OLD_USU_TptTit: string read GetUSU_TptTitOLD write SetUSU_TptTitOLD;
    property OLD_USU_TptImp: string read GetUSU_TptImpOLD write SetUSU_TptImpOLD;
    property OLD_USU_TptDes: string read GetUSU_TptDesOLD write SetUSU_TptDesOLD;
    property OLD_USU_CodPor: string read GetUSU_CodPorOLD write SetUSU_CodPorOLD;
    property OLD_USU_CodCrt: string read GetUSU_CodCrtOLD write SetUSU_CodCrtOLD;
    property OLD_USU_DatGer: TDate read GetUSU_DatGerOLD write SetUSU_DatGerOLD;
    property OLD_USU_UsuGer: Integer read GetUSU_UsuGerOLD write SetUSU_UsuGerOLD;
    property OLD_USU_DatAlt: TDate read GetUSU_DatAltOLD write SetUSU_DatAltOLD;
    property OLD_USU_UsuAlt: Integer read GetUSU_UsuAltOLD write SetUSU_UsuAltOLD;
  end;

implementation

{ T501PFI }

constructor T501PFI.Create();
begin
  AddForeignKeys(['USU_CodEmp'], ['CodEmp']);
  AddPrimaryKeys('USU_Id');

  inherited Create('USU_T501PFI');
end;

destructor T501PFI.Destroy();
begin
  inherited;
end;

function T501PFI.GetUSU_CodEmp: Integer;
begin
  Result := FUSU_CodEmp;
end;

procedure T501PFI.SetUSU_CodEmp(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmp := pUSU_CodEmp;

  CheckField('USU_CodEmp');
end;

function T501PFI.GetUSU_TnsTit: string;
begin
  Result := FUSU_TnsTit;
end;

procedure T501PFI.SetUSU_TnsTit(const pUSU_TnsTit: string);
begin
  FUSU_TnsTit := pUSU_TnsTit;

  CheckField('USU_TnsTit');
end;

function T501PFI.GetUSU_TnsImp: string;
begin
  Result := FUSU_TnsImp;
end;

procedure T501PFI.SetUSU_TnsImp(const pUSU_TnsImp: string);
begin
  FUSU_TnsImp := pUSU_TnsImp;

  CheckField('USU_TnsImp');
end;

function T501PFI.GetUSU_TnsDes: string;
begin
  Result := FUSU_TnsDes;
end;

procedure T501PFI.SetUSU_TnsDes(const pUSU_TnsDes: string);
begin
  FUSU_TnsDes := pUSU_TnsDes;

  CheckField('USU_TnsDes');
end;

function T501PFI.GetUSU_TptTit: string;
begin
  Result := FUSU_TptTit;
end;

procedure T501PFI.SetUSU_TptTit(const pUSU_TptTit: string);
begin
  FUSU_TptTit := pUSU_TptTit;

  CheckField('USU_TptTit');
end;

function T501PFI.GetUSU_TptImp: string;
begin
  Result := FUSU_TptImp;
end;

procedure T501PFI.SetUSU_TptImp(const pUSU_TptImp: string);
begin
  FUSU_TptImp := pUSU_TptImp;

  CheckField('USU_TptImp');
end;

function T501PFI.GetUSU_TptDes: string;
begin
  Result := FUSU_TptDes;
end;

procedure T501PFI.SetUSU_TptDes(const pUSU_TptDes: string);
begin
  FUSU_TptDes := pUSU_TptDes;

  CheckField('USU_TptDes');
end;

function T501PFI.GetUSU_CodPor: string;
begin
  Result := FUSU_CodPor;
end;

procedure T501PFI.SetUSU_CodPor(const pUSU_CodPor: string);
begin
  FUSU_CodPor := pUSU_CodPor;

  CheckField('USU_CodPor');
end;

function T501PFI.GetUSU_CodCrt: string;
begin
  Result := FUSU_CodCrt;
end;

procedure T501PFI.SetUSU_CodCrt(const pUSU_CodCrt: string);
begin
  FUSU_CodCrt := pUSU_CodCrt;

  CheckField('USU_CodCrt');
end;

function T501PFI.GetUSU_DatGer: TDate;
begin
  Result := FUSU_DatGer;
end;

procedure T501PFI.SetUSU_DatGer(const pUSU_DatGer: TDate);
begin
  FUSU_DatGer := pUSU_DatGer;

  CheckField('USU_DatGer');
end;

function T501PFI.GetUSU_UsuGer: Integer;
begin
  Result := FUSU_UsuGer;
end;

procedure T501PFI.SetUSU_UsuGer(const pUSU_UsuGer: Integer);
begin
  FUSU_UsuGer := pUSU_UsuGer;

  CheckField('USU_UsuGer');
end;

function T501PFI.GetUSU_DatAlt: TDate;
begin
  Result := FUSU_DatAlt;
end;

procedure T501PFI.SetUSU_DatAlt(const pUSU_DatAlt: TDate);
begin
  FUSU_DatAlt := pUSU_DatAlt;

  CheckField('USU_DatAlt');
end;

function T501PFI.GetUSU_UsuAlt: Integer;
begin
  Result := FUSU_UsuAlt;
end;

procedure T501PFI.SetUSU_UsuAlt(const pUSU_UsuAlt: Integer);
begin
  FUSU_UsuAlt := pUSU_UsuAlt;

  CheckField('USU_UsuAlt');
end;

function T501PFI.GetUSU_CodEmpOLD: Integer;
begin
  Result := FUSU_CodEmpOLD;
end;

procedure T501PFI.SetUSU_CodEmpOLD(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmpOLD := pUSU_CodEmp;
end;

function T501PFI.GetUSU_TnsTitOLD: string;
begin
  Result := FUSU_TnsTitOLD;
end;

procedure T501PFI.SetUSU_TnsTitOLD(const pUSU_TnsTit: string);
begin
  FUSU_TnsTitOLD := pUSU_TnsTit;
end;

function T501PFI.GetUSU_TnsImpOLD: string;
begin
  Result := FUSU_TnsImpOLD;
end;

procedure T501PFI.SetUSU_TnsImpOLD(const pUSU_TnsImp: string);
begin
  FUSU_TnsImpOLD := pUSU_TnsImp;
end;

function T501PFI.GetUSU_TnsDesOLD: string;
begin
  Result := FUSU_TnsDesOLD;
end;

procedure T501PFI.SetUSU_TnsDesOLD(const pUSU_TnsDes: string);
begin
  FUSU_TnsDesOLD := pUSU_TnsDes;
end;

function T501PFI.GetUSU_TptTitOLD: string;
begin
  Result := FUSU_TptTitOLD;
end;

procedure T501PFI.SetUSU_TptTitOLD(const pUSU_TptTit: string);
begin
  FUSU_TptTitOLD := pUSU_TptTit;
end;

function T501PFI.GetUSU_TptImpOLD: string;
begin
  Result := FUSU_TptImpOLD;
end;

procedure T501PFI.SetUSU_TptImpOLD(const pUSU_TptImp: string);
begin
  FUSU_TptImpOLD := pUSU_TptImp;
end;

function T501PFI.GetUSU_TptDesOLD: string;
begin
  Result := FUSU_TptDesOLD;
end;

procedure T501PFI.SetUSU_TptDesOLD(const pUSU_TptDes: string);
begin
  FUSU_TptDesOLD := pUSU_TptDes;
end;

function T501PFI.GetUSU_CodPorOLD: string;
begin
  Result := FUSU_CodPorOLD;
end;

procedure T501PFI.SetUSU_CodPorOLD(const pUSU_CodPor: string);
begin
  FUSU_CodPorOLD := pUSU_CodPor;
end;

function T501PFI.GetUSU_CodCrtOLD: string;
begin
  Result := FUSU_CodCrtOLD;
end;

procedure T501PFI.SetUSU_CodCrtOLD(const pUSU_CodCrt: string);
begin
  FUSU_CodCrtOLD := pUSU_CodCrt;
end;

function T501PFI.GetUSU_DatGerOLD: TDate;
begin
  Result := FUSU_DatGerOLD;
end;

procedure T501PFI.SetUSU_DatGerOLD(const pUSU_DatGer: TDate);
begin
  FUSU_DatGerOLD := pUSU_DatGer;
end;

function T501PFI.GetUSU_UsuGerOLD: Integer;
begin
  Result := FUSU_UsuGerOLD;
end;

procedure T501PFI.SetUSU_UsuGerOLD(const pUSU_UsuGer: Integer);
begin
  FUSU_UsuGerOLD := pUSU_UsuGer;
end;

function T501PFI.GetUSU_DatAltOLD: TDate;
begin
  Result := FUSU_DatAltOLD;
end;

procedure T501PFI.SetUSU_DatAltOLD(const pUSU_DatAlt: TDate);
begin
  FUSU_DatAltOLD := pUSU_DatAlt;
end;

function T501PFI.GetUSU_UsuAltOLD: Integer;
begin
  Result := FUSU_UsuAltOLD;
end;

procedure T501PFI.SetUSU_UsuAltOLD(const pUSU_UsuAlt: Integer);
begin
  FUSU_UsuAltOLD := pUSU_UsuAlt;
end;

procedure T501PFI.Registros_OLD();
begin
  FUSU_CodEmpOLD := FUSU_CodEmp;
  FUSU_TnsTitOLD := FUSU_TnsTit;
  FUSU_TnsImpOLD := FUSU_TnsImp;
  FUSU_TnsDesOLD := FUSU_TnsDes;
  FUSU_TptTitOLD := FUSU_TptTit;
  FUSU_TptImpOLD := FUSU_TptImp;
  FUSU_TptDesOLD := FUSU_TptDes;
  FUSU_CodPorOLD := FUSU_CodPor;
  FUSU_CodCrtOLD := FUSU_CodCrt;
  FUSU_DatGerOLD := FUSU_DatGer;
  FUSU_UsuGerOLD := FUSU_UsuGer;
  FUSU_DatAltOLD := FUSU_DatAlt;
  FUSU_UsuAltOLD := FUSU_UsuAlt;

  inherited;
end;

procedure T501PFI.RetornarValores();
begin
  FUSU_CodEmp := FUSU_CodEmpOLD;
  FUSU_TnsTit := FUSU_TnsTitOLD;
  FUSU_TnsImp := FUSU_TnsImpOLD;
  FUSU_TnsDes := FUSU_TnsDesOLD;
  FUSU_TptTit := FUSU_TptTitOLD;
  FUSU_TptImp := FUSU_TptImpOLD;
  FUSU_TptDes := FUSU_TptDesOLD;
  FUSU_CodPor := FUSU_CodPorOLD;
  FUSU_CodCrt := FUSU_CodCrtOLD;
  FUSU_DatGer := FUSU_DatGerOLD;
  FUSU_UsuGer := FUSU_UsuGerOLD;
  FUSU_DatAlt := FUSU_DatAltOLD;
  FUSU_UsuAlt := FUSU_UsuAltOLD;

  inherited;
end;

end.
