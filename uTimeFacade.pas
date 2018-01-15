unit uTimeFacade;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, o420ocp,
  oSubFacadeImportador;

type
  TTimeFacade = class
  private
    FTimer: Integer;
    F420OCP: T420OCP;
    FExecutarWS: Boolean;

    procedure ExecuteFacade;
  public
    constructor Create();
    destructor Destroy; override;

    function ExecutarWS: Boolean;
    procedure Execute(const pSubFacadeImport: TSubFacadeImport);
  end;

implementation

{ TTimeFacade }

constructor TTimeFacade.Create;
begin
  inherited Create();

  F420OCP := T420OCP.Create;
end;

destructor TTimeFacade.Destroy;
begin
  FreeAndNil(F420OCP);

  inherited;
end;

procedure TTimeFacade.Execute(const pSubFacadeImport: TSubFacadeImport);
begin
  F420OCP.CodEmp := StrToInt(pSubFacadeImport.CodEmp);
  F420OCP.CodFil := StrToInt(pSubFacadeImport.CodFil);
  F420OCP.NumOcp := StrToInt(pSubFacadeImport.NumOcp);
  F420OCP.SitOcp := 1;
  F420OCP.PropertyForSelect(['CODEMP','CODFIL','NUMOCP', 'SITOCP']);
  FTimer := 0;
  Self.ExecuteFacade;
end;

function TTimeFacade.ExecutarWS: Boolean;
begin
  Result := FExecutarWS;
end;

procedure TTimeFacade.ExecuteFacade;
begin
  FExecutarWS := False;

  while (FTimer < 600) do
  begin
    Inc(FTimer);
    if (F420OCP.AssignedQueryExecute()) then
    begin
      FExecutarWS := True;
      Exit;
    end;
    Sleep(1000);
  end;
end;

end.
