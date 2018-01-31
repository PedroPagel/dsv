unit o510arm;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T510ARM = class(TTabelaUsuario)
  private
    FUSU_CodPor: string;
    FUSU_DatGer: TDate;
    FUSU_DatFin: TDate;
    FUSU_NomArq: string;
    FUSU_SitArm: Char;

    FUSU_CodPorOLD: string;
    FUSU_DatGerOLD: TDate;
    FUSU_DatFinOLD: TDate;
    FUSU_NomArqOLD: string;
    FUSU_SitArmOLD: Char;

    function GetUSU_CodPor: string;
    procedure SetUSU_CodPor(const pUSU_CodPor: string);
    function GetUSU_DatGer: TDate;
    procedure SetUSU_DatGer(const pUSU_DatGer: TDate);
    function GetUSU_DatFin: TDate;
    procedure SetUSU_DatFin(const pUSU_DatFin: TDate);
    function GetUSU_NomArq: string;
    procedure SetUSU_NomArq(const pUSU_NomArq: string);
    function GetUSU_SitArm: Char;
    procedure SetUSU_SitArm(const pUSU_SitArm: Char);

    function GetUSU_CodPorOld: string;
    procedure SetUSU_CodPorOld(const pUSU_CodPor: string);
    function GetUSU_DatGerOld: TDate;
    procedure SetUSU_DatGerOld(const pUSU_DatGer: TDate);
    function GetUSU_DatFinOld: TDate;
    procedure SetUSU_DatFinOld(const pUSU_DatFin: TDate);
    function GetUSU_NomArqOld: string;
    procedure SetUSU_NomArqOld(const pUSU_NomArq: string);
    function GetUSU_SitArmOld: Char;
    procedure SetUSU_SitArmOld(const pUSU_SitArm: Char);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    procedure RemoverArquivo(const pAtualizar: Boolean = True);

    property USU_CodPor: string read GetUSU_CodPor write SetUSU_CodPor;
    property USU_DatGer: TDate read GetUSU_DatGer write SetUSU_DatGer;
    property USU_DatFin: TDate read GetUSU_DatFin write SetUSU_DatFin;
    property USU_NomArq: string read GetUSU_NomArq write SetUSU_NomArq;
    property USU_SitArm: Char read GetUSU_SitArm write SetUSU_SitArm;

    property OLD_USU_CodPor: string read GetUSU_CodPorOLD write SetUSU_CodPorOLD;
    property OLD_USU_DatGer: TDate read GetUSU_DatGerOLD write SetUSU_DatGerOLD;
    property OLD_USU_DatFin: TDate read GetUSU_DatFinOLD write SetUSU_DatFinOLD;
    property OLD_USU_NomArq: string read GetUSU_NomArqOLD write SetUSU_NomArqOLD;
    property OLD_USU_SitArm: Char read GetUSU_SitArmOLD write SetUSU_SitArmOLD;
  end;

implementation

uses
   o510age, Winapi.Windows;

{ T510ARM }

constructor T510ARM.Create();
begin
  AddPrimaryKeys('USU_ID');

  inherited Create('USU_T510ARM');
end;

destructor T510ARM.Destroy();
begin
  inherited;
end;

function T510ARM.GetUSU_CodPor: string;
begin
  Result := FUSU_CodPor;
end;

procedure T510ARM.SetUSU_CodPor(const pUSU_CodPor: string);
begin
  FUSU_CodPor := pUSU_CodPor;

  CheckField('USU_CodPor');
end;

function T510ARM.GetUSU_DatGer: TDate;
begin
  Result := FUSU_DatGer;
end;

procedure T510ARM.SetUSU_DatGer(const pUSU_DatGer: TDate);
begin
  FUSU_DatGer := pUSU_DatGer;

  CheckField('USU_DatGer');
end;

function T510ARM.GetUSU_DatFin: TDate;
begin
  Result := FUSU_DatFin;
end;

procedure T510ARM.SetUSU_DatFin(const pUSU_DatFin: TDate);
begin
  FUSU_DatFin := pUSU_DatFin;

  CheckField('USU_DatFin');
end;

function T510ARM.GetUSU_NomArq: string;
begin
  Result := FUSU_NomArq;
end;

procedure T510ARM.SetUSU_NomArq(const pUSU_NomArq: string);
begin
  FUSU_NomArq := pUSU_NomArq;

  CheckField('USU_NomArq');
end;

function T510ARM.GetUSU_SitArm: Char;
begin
  Result := FUSU_SitArm;
end;

procedure T510ARM.SetUSU_SitArm(const pUSU_SitArm: Char);
begin
  FUSU_SitArm := pUSU_SitArm;

  CheckField('USU_SitArm');
end;

function T510ARM.GetUSU_CodPorOLD: string;
begin
  Result := FUSU_CodPorOLD;
end;

procedure T510ARM.SetUSU_CodPorOLD(const pUSU_CodPor: string);
begin
  FUSU_CodPorOLD := pUSU_CodPor;
end;

function T510ARM.GetUSU_DatGerOLD: TDate;
begin
  Result := FUSU_DatGerOLD;
end;

procedure T510ARM.SetUSU_DatGerOLD(const pUSU_DatGer: TDate);
begin
  FUSU_DatGerOLD := pUSU_DatGer;
end;

function T510ARM.GetUSU_DatFinOLD: TDate;
begin
  Result := FUSU_DatFinOLD;
end;

procedure T510ARM.SetUSU_DatFinOLD(const pUSU_DatFin: TDate);
begin
  FUSU_DatFinOLD := pUSU_DatFin;
end;

function T510ARM.GetUSU_NomArqOLD: string;
begin
  Result := FUSU_NomArqOLD;
end;

procedure T510ARM.SetUSU_NomArqOLD(const pUSU_NomArq: string);
begin
  FUSU_NomArqOLD := pUSU_NomArq;
end;

function T510ARM.GetUSU_SitArmOLD: Char;
begin
  Result := FUSU_SitArmOLD;
end;

procedure T510ARM.SetUSU_SitArmOLD(const pUSU_SitArm: Char);
begin
  FUSU_SitArmOLD := pUSU_SitArm;
end;

procedure T510ARM.Registros_OLD();
begin
  FUSU_CodPorOLD := FUSU_CodPor;
  FUSU_DatGerOLD := FUSU_DatGer;
  FUSU_DatFinOLD := FUSU_DatFin;
  FUSU_NomArqOLD := FUSU_NomArq;
  FUSU_SitArmOLD := FUSU_SitArm;

  inherited;
end;

procedure T510ARM.RetornarValores();
begin
  FUSU_CodPor := FUSU_CodPorOLD;
  FUSU_DatGer := FUSU_DatGerOLD;
  FUSU_DatFin := FUSU_DatFinOLD;
  FUSU_NomArq := FUSU_NomArqOLD;
  FUSU_SitArm := FUSU_SitArmOLD;
end;

procedure T510ARM.RemoverArquivo(const pAtualizar: Boolean);
var
  x510age: T510AGE;
begin
  if (pAtualizar) then
  begin
    Self.USU_SitArm := 'S';
    Self.USU_DatFin := Date;
    Self.Update();
  end;

  x510age := T510AGE.Create;
  try
    x510age.USU_CodPor := Self.USU_CodPor;
    x510age.PropertyForSelect(['USU_CODPOR']);
    x510age.Open();

    if not(x510age.IsEmpty) then
    begin
      if not(DirectoryExists(x510age.USU_DirArq + 'DDA_BKP\')) then
        CreateDir(x510age.USU_DirArq + 'DDA_BKP\');

      CopyFile(PWideChar(x510age.USU_DirArq + Self.USU_NomArq), PWideChar(x510age.USU_DirArq + 'DDA_BKP\' + Self.USU_NomArq), False);
      DeleteFile(PWideChar(x510age.USU_DirArq + Self.USU_NomArq));
    end;
  finally
    FreeAndNil(x510age);
  end;
end;

end.
