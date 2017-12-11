unit o510age;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T510AGE = class(TTabelaUsuario)
  private
    FUSU_CodPra: Integer;
    FUSU_DirArq: string;
    FUSU_RaiCnp: Char;
    FUSU_CodPor: string;
    FUSU_BkpDir: string;

    FUSU_CodPraOLD: Integer;
    FUSU_DirArqOLD: string;
    FUSU_RaiCnpOLD: Char;
    FUSU_CodPorOLD: string;
    FUSU_BkpDirOLD: string;

    function GetUSU_CodPra: Integer;
    procedure SetUSU_CodPra(const pUSU_CodPra: Integer);
    function GetUSU_DirArq: string;
    procedure SetUSU_DirArq(const pUSU_DirArq: string);
    function GetUSU_RaiCnp: Char;
    procedure SetUSU_RaiCnp(const pUSU_RaiCnp: Char);
    function GetUSU_CodPor: string;
    procedure SetUSU_CodPor(const pUSU_CodPor: string);
    function GetUSU_BkpDir: string;
    procedure SetUSU_BkpDir(const pUSU_BkpDir: string);

    function GetUSU_CodPraOld: Integer;
    procedure SetUSU_CodPraOld(const pUSU_CodPra: Integer);
    function GetUSU_DirArqOld: string;
    procedure SetUSU_DirArqOld(const pUSU_DirArq: string);
    function GetUSU_RaiCnpOld: Char;
    procedure SetUSU_RaiCnpOld(const pUSU_RaiCnp: Char);
    function GetUSU_CodPorOld: string;
    procedure SetUSU_CodPorOld(const pUSU_CodPor: string);
    function GetUSU_BkpDirOld: string;
    procedure SetUSU_BkpDirOld(const pUSU_BkpDir: string);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_CodPra: Integer read GetUSU_CodPra write SetUSU_CodPra;
    property USU_DirArq: string read GetUSU_DirArq write SetUSU_DirArq;
    property USU_RaiCnp: Char read GetUSU_RaiCnp write SetUSU_RaiCnp;
    property USU_CodPor: string read GetUSU_CodPor write SetUSU_CodPor;
    property USU_BkpDir: string read GetUSU_BkpDir write SetUSU_BkpDir;

    property OLD_USU_CodPra: Integer read GetUSU_CodPraOLD write SetUSU_CodPraOLD;
    property OLD_USU_DirArq: string read GetUSU_DirArqOLD write SetUSU_DirArqOLD;
    property OLD_USU_RaiCnp: Char read GetUSU_RaiCnpOLD write SetUSU_RaiCnpOLD;
    property OLD_USU_CodPor: string read GetUSU_CodPorOLD write SetUSU_CodPorOLD;
    property OLD_USU_BkpDir: string read GetUSU_BkpDirOLD write SetUSU_BkpDirOLD;
  end;

implementation

{ T510AGE }

constructor T510AGE.Create();
begin
  AddPrimaryKeys('USU_ID');

  inherited Create('USU_T510AGE');
end;

destructor T510AGE.Destroy();
begin
  inherited;
end;

function T510AGE.GetUSU_CodPra: Integer;
begin
  Result := FUSU_CodPra;
end;

procedure T510AGE.SetUSU_CodPra(const pUSU_CodPra: Integer);
begin
  FUSU_CodPra := pUSU_CodPra;

  CheckField('USU_CodPra');
end;

function T510AGE.GetUSU_DirArq: string;
begin
  Result := FUSU_DirArq;
end;

procedure T510AGE.SetUSU_DirArq(const pUSU_DirArq: string);
begin
  FUSU_DirArq := pUSU_DirArq;

  CheckField('USU_DirArq');
end;

function T510AGE.GetUSU_RaiCnp: Char;
begin
  Result := FUSU_RaiCnp;
end;

procedure T510AGE.SetUSU_RaiCnp(const pUSU_RaiCnp: Char);
begin
  FUSU_RaiCnp := pUSU_RaiCnp;

  CheckField('USU_RaiCnp');
end;

function T510AGE.GetUSU_CodPor: string;
begin
  Result := FUSU_CodPor;
end;

procedure T510AGE.SetUSU_CodPor(const pUSU_CodPor: string);
begin
  FUSU_CodPor := pUSU_CodPor;

  CheckField('USU_CodPor');
end;

function T510AGE.GetUSU_BkpDir: string;
begin
  Result := FUSU_BkpDir;
end;

procedure T510AGE.SetUSU_BkpDir(const pUSU_BkpDir: string);
begin
  FUSU_BkpDir := pUSU_BkpDir;

  CheckField('USU_BkpDir');
end;

function T510AGE.GetUSU_CodPraOLD: Integer;
begin
  Result := FUSU_CodPraOLD;
end;

procedure T510AGE.SetUSU_CodPraOLD(const pUSU_CodPra: Integer);
begin
  FUSU_CodPraOLD := pUSU_CodPra;
end;

function T510AGE.GetUSU_DirArqOLD: string;
begin
  Result := FUSU_DirArqOLD;
end;

procedure T510AGE.SetUSU_DirArqOLD(const pUSU_DirArq: string);
begin
  FUSU_DirArqOLD := pUSU_DirArq;
end;

function T510AGE.GetUSU_RaiCnpOLD: Char;
begin
  Result := FUSU_RaiCnpOLD;
end;

procedure T510AGE.SetUSU_RaiCnpOLD(const pUSU_RaiCnp: Char);
begin
  FUSU_RaiCnpOLD := pUSU_RaiCnp;
end;

function T510AGE.GetUSU_CodPorOLD: string;
begin
  Result := FUSU_CodPorOLD;
end;

procedure T510AGE.SetUSU_CodPorOLD(const pUSU_CodPor: string);
begin
  FUSU_CodPorOLD := pUSU_CodPor;
end;

function T510AGE.GetUSU_BkpDirOLD: string;
begin
  Result := FUSU_BkpDirOLD;
end;

procedure T510AGE.SetUSU_BkpDirOLD(const pUSU_BkpDir: string);
begin
  FUSU_BkpDirOLD := pUSU_BkpDir;
end;

procedure T510AGE.Registros_OLD();
begin
  FUSU_CodPraOLD := FUSU_CodPra;
  FUSU_DirArqOLD := FUSU_DirArq;
  FUSU_RaiCnpOLD := FUSU_RaiCnp;
  FUSU_CodPorOLD := FUSU_CodPor;
  FUSU_BkpDirOLD := FUSU_BkpDir;

  inherited;
end;

procedure T510AGE.RetornarValores();
begin
  FUSU_CodPra := FUSU_CodPraOLD;
  FUSU_DirArq := FUSU_DirArqOLD;
  FUSU_RaiCnp := FUSU_RaiCnpOLD;
  FUSU_CodPor := FUSU_CodPorOLD;
  FUSU_BkpDir := FUSU_BkpDirOLD;
end;

end.
