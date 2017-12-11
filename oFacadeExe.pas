unit oFacadeExe;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs,
  DateUtils, oSubFacadeImportador, Vcl.ExtCtrls, Vcl.Forms, uTimeFacade;

type
  TExecuteType = (etImport, etNone);

  TFacede = class
  private
    FFacade: TExecuteType;
    FParamList: TStringList;
    FSubFacadeImp: TSubFacadeImport;

    procedure SetPapram(const Value: string);
    procedure TimeFacade();
  public
    constructor Create();
    destructor Destroy(); override;

    procedure Execute();

    property FacadeType: TExecuteType read FFacade write FFacade;
    property Params: string write SetPapram;
  end;

implementation

{ TFacede }

constructor TFacede.Create;
begin
  inherited Create;


  FParamList := TStringList.Create();
  FSubFacadeImp := TSubFacadeImport.Create;
end;

destructor TFacede.Destroy;
begin
  FreeAndNil(FSubFacadeImp);

  inherited;
end;

procedure TFacede.Execute;
begin
  case FFacade of
    etImport:
      TimeFacade;
  end;
end;

procedure TFacede.TimeFacade();
var
  xTimeFacade: TTimeFacade;
begin
  FSubFacadeImp.CodEmp := FParamList[0];
  FSubFacadeImp.CodFil := FParamList[1];
  FSubFacadeImp.CodFor := FParamList[2];
  FSubFacadeImp.NumOcp := FParamList[3];

  xTimeFacade := TTimeFacade.Create;
  xTimeFacade.Execute(FSubFacadeImp);

  FSubFacadeImp.Estado := xTimeFacade.ExecutarWS;
  FSubFacadeImp.Consume;
  FParamList.Clear;
end;

procedure TFacede.SetPapram(const Value: string);
begin
  FParamList.Add(Value);
end;

end.
