unit oQuery;

interface

uses
  System.Classes, Data.SqlExpr, System.SysUtils, Data.Win.ADODB;

type
  THQuery = class(TADOQuery)
  private
    FTabelaUsuario: Boolean;
    FCommand: string;

    function RetonarTipoTabela: string;
    function GetCommand: string;
    procedure SetCommand(const pCommand: string);
  public
    constructor CreatePersonalizado(const pTabelaUsuario: Boolean = False);
    destructor Destroy(); override;

    function Count: Integer;
    function ParamByName(const Value: WideString): TParameter;

    procedure ReadQuery(const pObj: TObject);
    procedure Reset();
  published
    property Command: string read GetCommand write SetCommand;
  end;

implementation

uses
  oBase, System.Rtti, System.TypInfo, Winapi.ADOInt;

{ THQuery }

function THQuery.Count: Integer;
begin
  Result := RecordCount;
end;

constructor THQuery.CreatePersonalizado(const pTabelaUsuario: Boolean = False);
begin
  inherited Create(nil);

  FTabelaUsuario := pTabelaUsuario;
  Self.Connection := FOracleConnection;
  Self.Close;
end;

destructor THQuery.Destroy;
begin
  Self.Reset;

  inherited;
end;

function THQuery.GetCommand: string;
begin
  Result := FCommand;
end;

function THQuery.ParamByName(const Value: WideString): TParameter;
begin
  Result := Self.Parameters.ParamByName(Value);
end;

function THQuery.RetonarTipoTabela: string;
begin
  Result := iff(FTabelaUsuario, 'USU_', EmptyStr);
end;

procedure THQuery.SetCommand(const pCommand: string);
begin
  FCommand := pCommand;
  Self.SQL.Add(FCommand);
end;

procedure THQuery.ReadQuery(const pObj: TObject);
var
  xContext: TRttiContext;
  xType: TRttiType;
  xProperty: TRttiProperty;
begin
  xContext := TRttiContext.Create;
  try
    xType := xContext.GetType(pObj.ClassType);

    for xProperty in xType.GetProperties do
    begin
      case xProperty.PropertyType.TypeKind of
        tkInteger:
          xProperty.SetValue(pObj, Self.FindField(RetonarTipoTabela + xProperty.Name).AsInteger);

        tkFloat:
          if (AnsiSameText('TDate', xProperty.PropertyType.Name)) then
            xProperty.SetValue(pObj, Self.FindField(RetonarTipoTabela + xProperty.Name).AsDateTime)
          else
            xProperty.SetValue(pObj, Self.FindField(RetonarTipoTabela + xProperty.Name).AsFloat);
      else
        xProperty.SetValue(pObj, Self.FindField(RetonarTipoTabela + xProperty.Name).AsString);
      end;
    end;
  finally

  end;
end;

procedure THQuery.Reset;
begin
  Self.SQL.Clear;
  Self.Close;
end;

end.
