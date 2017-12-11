unit o030etc;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T030ETC = class(TTabelaPadrao)
  private
    FCodBan: string;
    FCodTpt: string;
    FEspBan: string;
    FDesBan: string;

    FCodBanOLD: string;
    FCodTptOLD: string;
    FEspBanOLD: string;
    FDesBanOLD: string;

    function GetCodBan: string;
    procedure SetCodBan(const pCodBan: string);
    function GetCodTpt: string;
    procedure SetCodTpt(const pCodTpt: string);
    function GetEspBan: string;
    procedure SetEspBan(const pEspBan: string);
    function GetDesBan: string;
    procedure SetDesBan(const pDesBan: string);

    function GetCodBanOld: string;
    procedure SetCodBanOld(const pCodBan: string);
    function GetCodTptOld: string;
    procedure SetCodTptOld(const pCodTpt: string);
    function GetEspBanOld: string;
    procedure SetEspBanOld(const pEspBan: string);
    function GetDesBanOld: string;
    procedure SetDesBanOld(const pDesBan: string);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property CodBan: string read GetCodBan write SetCodBan;
    property CodTpt: string read GetCodTpt write SetCodTpt;
    property EspBan: string read GetEspBan write SetEspBan;
    property DesBan: string read GetDesBan write SetDesBan;

    property OLD_CodBan: string read GetCodBanOLD write SetCodBanOLD;
    property OLD_CodTpt: string read GetCodTptOLD write SetCodTptOLD;
    property OLD_EspBan: string read GetEspBanOLD write SetEspBanOLD;
    property OLD_DesBan: string read GetDesBanOLD write SetDesBanOLD;
  end;

implementation

{ T030ETC }

constructor T030ETC.Create();
begin
  AddForeignKeys(['CodBan','CodTpt'], ['CodBan','CodTpt']);
  AddPrimaryKeys('CodBan;CodTpt');

  inherited Create('E030ETC');
end;

destructor T030ETC.Destroy();
begin
  inherited;
end;

function T030ETC.GetCodBan: string;
begin
  Result := FCodBan;
end;

procedure T030ETC.SetCodBan(const pCodBan: string);
begin
  FCodBan := pCodBan;

  CheckField('CodBan');
end;

function T030ETC.GetCodTpt: string;
begin
  Result := FCodTpt;
end;

procedure T030ETC.SetCodTpt(const pCodTpt: string);
begin
  FCodTpt := pCodTpt;

  CheckField('CodTpt');
end;

function T030ETC.GetEspBan: string;
begin
  Result := FEspBan;
end;

procedure T030ETC.SetEspBan(const pEspBan: string);
begin
  FEspBan := pEspBan;

  CheckField('EspBan');
end;

function T030ETC.GetDesBan: string;
begin
  Result := FDesBan;
end;

procedure T030ETC.SetDesBan(const pDesBan: string);
begin
  FDesBan := pDesBan;

  CheckField('DesBan');
end;

function T030ETC.GetCodBanOLD: string;
begin
  Result := FCodBanOLD;
end;

procedure T030ETC.SetCodBanOLD(const pCodBan: string);
begin
  FCodBanOLD := pCodBan;
end;

function T030ETC.GetCodTptOLD: string;
begin
  Result := FCodTptOLD;
end;

procedure T030ETC.SetCodTptOLD(const pCodTpt: string);
begin
  FCodTptOLD := pCodTpt;
end;

function T030ETC.GetEspBanOLD: string;
begin
  Result := FEspBanOLD;
end;

procedure T030ETC.SetEspBanOLD(const pEspBan: string);
begin
  FEspBanOLD := pEspBan;
end;

function T030ETC.GetDesBanOLD: string;
begin
  Result := FDesBanOLD;
end;

procedure T030ETC.SetDesBanOLD(const pDesBan: string);
begin
  FDesBanOLD := pDesBan;
end;

procedure T030ETC.Registros_OLD();
begin
  FCodBanOLD := FCodBan;
  FCodTptOLD := FCodTpt;
  FEspBanOLD := FEspBan;
  FDesBanOLD := FDesBan;

  inherited;
end;

procedure T030ETC.RetornarValores();
begin
  FCodBan := FCodBanOLD;
  FCodTpt := FCodTptOLD;
  FEspBan := FEspBanOLD;
  FDesBan := FDesBanOLD;
end;

end.
