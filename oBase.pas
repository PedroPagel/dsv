unit oBase;

interface

uses
  Data.SqlExpr, oQuery, System.Rtti, System.SysUtils, Data.DBXOracle,
  System.Contnrs, Data.DBXCommon, Data.Db, Data.DBCommon, System.Math,
  Data.Win.ADODB, System.Classes, System.TypInfo, Vcl.Dialogs, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.AnsiStrings;

type
  TProcedure = procedure() of Object;

  TTableState = (estInsert, estUpdate, estDelete, etSelect, etNone, etExists, etWrite);
  TState = (aoInsert, aoUpdate, aoDelete, aoSelect, aoExists);
  TStateSelect = (ssSelect, ssMax, ssMin, ssCount, ssSum);
  TStateSelectProp = Set of TStateSelect;

  TCheckMethod = (cmNone, cmExitCol, cmChange, cmExit,cmEnter, cmClick, cmLine,
                  cmAfterInsert, cmBeforeInsert, cmCancelLine, cmExitLine,
                  cmKeyDown, cmBeforeDelete, cmLookupGridPress, cmInsert,
                  cmUpdate, cmDelete);

  tTitulo = (tTContasPagar, tTContasReceber);
  tTableType = (ttUsuario, ttPadrao);
  tDayOfWeek = (dwNone, dwDomingo, dwSegundaFeira, dwTercaFeira, dwQuartaFeira,
                dwQuintaFeira, dwSextaFeira, dwSabado);

  TBetweenRegister = record
    Name: array of string;
    Data: array of TDate;
  end;

  TIteratorINDEX = record
    index: Integer;
    value: String;
  end;

  TForeignKeys = record
    TableField: string;
    RelationalField: string;
  end;

  TArrayOfIndex = array of TIteratorINDEX;
  TArrayOfString = array of string;

  TStringArrayList = class
  private
    FExists: Boolean;
    FList: TStringList;
    FArray: TArrayOfString;
  public
    constructor Create();
    destructor Destroy(); override;

    procedure Clear();
    procedure Add(const Value: string);
    function ArrayList(): TArrayOfString;

    property Exists: Boolean read FExists write FExists;
  end;

  TTable = class(TInterfacedPersistent)
  private
    FCheck: Byte;
    FField: string;
    FQuery: THQuery;
    FTabela: string;
    FState: TState;
    FCondicao: string;
    FInsertValue: string;
    FTables: string;
    FUseParam: Boolean;
    FSetFields: Boolean;
    FFields: array of string;
    FRepeatParam: string;
    FLimitField: array of string;
    FBlockList: array of string;
    FBetween: TBetweenRegister;
    FSelectProps: array of string;
    FAutoSelect: Boolean;
    FAutoSelectPKS: Boolean;
    FAutoSelectFKS: Boolean;
    FStateSelect: TStateSelectProp;
    FSequenceField: string;
    FCheckFields: Boolean;
    FEmpty: Boolean;
    FStringArrayList: TStringArrayList;
    FOrdenation: string;

    //selects
    FMaxField: string;
    FSumField: string;
    FCountField: string;
    FCountResultField: Integer;

    //PK'S e FK'S
    FPrimaryKeys: array of string;
    FForeignKeys: array of string;
    FRelationalForeign: array of string;
    FPrimaryAndForeignKeys: Boolean;
    FForeignKey: Boolean;

    procedure Clean();
    procedure MontarChaves();
    procedure DefinirParametros();
    procedure SetInsert();
    procedure SetDelete();
    procedure MontarComandoBetween();
    procedure MontarEstadoSelect();

    function GetCheck: Byte;
    function SetUpdate(): string;
    function MontarComandoSelect(): string;
    function NegarCampo(const pNome: string): Boolean;
    function GetBetween(const pName: string): TDate;

    procedure SetCheck(const Value: Byte);
    procedure ExecutarMesesEntre();
    procedure SetBetween(const pName: string; const Value: TDate);
    procedure SetSelect(const Value: TStateSelectProp);

    //monta selects
    procedure SetSelection();
  protected
    procedure CheckField(const pField: string);
    procedure Registros_OLD(); virtual; abstract;
    procedure RetornarValores(); virtual; abstract;
    procedure AddPrimaryKeys(const pValues: string); dynamic;
    procedure AddForeignKeys(const pForeingKey: array of string; const pRelational: array of string); dynamic;

    property CheckFieldsToAssign: Boolean read FCheckFields write FCheckFields;
    property StateToAssign: TState read FState write FState;
  public
    constructor Create(const pTabela: string);
    destructor Destroy(); override;

    procedure Last();
    procedure Init();
    procedure Close();
    procedure First();
    procedure Cancel();
    procedure ClearFields();
    procedure AtribuirValoresSelect();
    procedure OrdenationCommand(const pValue: string);
    procedure Open(const setConstraints: Boolean = True);
    procedure SetForeignKeyValue(const pTable: TTable);
  	procedure SetSequenceField(const pField: string);
    procedure AddTable(const pTables: array of string);
    procedure BlockProperty(const pField: array of string);
    procedure SetAutoSelect(const pFields: array of string);
    procedure Assign(APersistent: TPersistent) ; override;
    procedure AddToCommand(const pValue: string; const pDontUseParam: Boolean = True);
    procedure PropertyForSelect(const pField: array of string; const pAND: Boolean = False);

    function ExecSql(): Boolean;
    procedure Insert();
    procedure Update();
    procedure Delete();

    function State: TState;
    function Next(): Boolean;
    function Count: Integer;
    function Prior(): Boolean;
    function IsEmpty: Boolean;
    function CountField: Integer;
    function TableType: tTableType; virtual; abstract;
    function SetTableToRecord(const pTabela: string): THQuery;
    function GenerateID(const pField: string): Integer;
    function MonthsBetween(const pInicial, pFinal: string): Word; overload;
    function MonthsBetween(const pInicial: string; const pFinal: TDate): Word; overload;
    function MonthsBetween(const pInicial: TDate; const pFinal: string): Word; overload;
    function AssignedQueryExecute(): Boolean;

    property Field: string read FField write FField;
    property Check: Byte read GetCheck write SetCheck;
    property FieldForMax: string read FMaxField write FMaxField;
    property FieldForCount: string read FCountField write FCountField;
    property FieldForSum: string read FSumField write FSumField;
    property Between[const pName: string]: TDate read GetBetween write SetBetween;
    property SetFields: Boolean read FSetFields write FSetFields;
    property Select: TStateSelectProp read FStateSelect write SetSelect default [ssSelect];
    property doForeignKey: Boolean read FForeignKey write FForeignKey;
  end;

  TTabelaPadrao = class(TTable)
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create(const pTabela: string);
    destructor Destroy(); override;

    function TableType: tTableType; override;
  end;

  TTabelaUsuario = class(TTable)
  private
    FID: Integer;
    FOldId: Integer;

    function GetId: Integer;
    procedure SetId(const pId: Integer);
    function GetOldId: Integer;
    procedure SetOldId(const Value: Integer);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create(const pTabela: string);
    destructor Destroy(); override;

    function TableType: tTableType; override;

    property USU_ID: Integer read GetId write SetId;
    property OLD_USU_ID: Integer read GetOldId write SetOldId;
  end;

  TConexao = class
    class procedure Execute();
    class procedure Finalizar();
  end;

  TIterador = class(TObjectList)
  private
    FFields: array of string;
    FIndex: TArrayOfIndex;
    Findexed: Boolean;

    function GetIndexed: Boolean;
    function IndexOfValues(const pValue: String): Integer;

    procedure AddIndex(const pValue: String);
    procedure SetIndexed(const Value: Boolean);
  public
    constructor Create(const pBaseClass: TClass = nil);
    destructor Destroy(); override;

    procedure Add(const Obj: TObject);

    function Selecionados(): Boolean;
    function Exists(const pItem: Integer): Boolean;
    function SearchIndexValue(const pObj: TObject): Boolean;
    function IndexOfFields(const pObj: TObject): Integer;
    function IndexOf(const Value: string): Integer; overload;

    procedure CheckFields(const value: Byte);
    procedure IndexFields(const pFields: array of string);
    procedure AddByClass(const Obj: TTable); overload;
    procedure AddByClass(const Old: TTable; const New: TTable); overload;
    procedure AddByQuery(const Obj: TObject);

    property indexed: Boolean read GetIndexed write SetIndexed;
  end;

  TConnectionBase = class(TADOConnection)
  private
    FBase: string;

    procedure ConexaoSENIOR52();
    procedure ConexaoSENIOR53();
    procedure ConexaoSENIOR55();
  public
    constructor CreateBase();
    destructor Destroy(); override;

    procedure Conexao(const pBase: string);
    function BaseConexao(): string;
    function MontarURL(const pType: PTypeInfo): string;
  end;

  TData = class
  private
    FDia: Word;
    FMes: Word;
    FAno: Word;
    FData: TDate;
    FDiaUtil: Boolean;

    function GetDayOfWeek: tDayOfWeek;
    procedure SetData(const Value: TDate);
    function GetData: TDate;
  public
    constructor Create(const pData: TDate = 0);
    destructor Destroy; override;

    procedure IncDays(const pValue: Integer);
    procedure DecDays(const pValue: Integer);
    function PrimeiroDiaMes(): TDate;
    function PrimeiroDiaSemana(): TDate;
    function UltimoDiaMes(): TDate;
    function UltimoDiaSemana(): TDate;

    property Data: TDate read GetData write SetData;
    property Dia: Word read FDia;
    property Mes: Word read FMes;
    property Ano: Word read FAno;
    property DiaUtil: Boolean read FDiaUtil write FDiaUtil;
  end;

procedure StartTransaction();
procedure Commit();
procedure RollBack;

function iff(const pTernario: Boolean;
  const pParametro1, pParametro2: Variant): Variant; overload;
function UltimoCaracter(var pString: string; pCaracter: string;
  pDeletar: Boolean = True; const pCount: Integer = 1): Boolean;
function DataNull(pData: TDate): TDateTime;
function IsNull(const pString: string): Boolean;
function DateTimeFormatDB(const pData: TDate): string;
function DateTimeFormat(const pData: TDate): TDate;
function BuscarString(const pComparar: string;
  const pString: array of string): Boolean;
function FloatToDate(const pFloat: Extended): TDate;
function AllowedTypeKind(const pType: TTypeKind): Boolean;
function ValueToDB(const pValor: string): string;
function TextToFloat(const pValor: string): Double;
function CRound(const pValue: Extended; const pPrecisao: Byte): Extended;
function FieldType(const pColumnType, pMask: string; const pSize: Integer): TFieldType;
function SetOperator(const pField, pValue: array of string; const pAND: Boolean): string;
function StrToChar(const pString: string): Char;
function VarToChar(const pVar: Variant): Char;
function CreateTableFromClass(const pClassType: TClass): TTable;
function GetMethod(const pMethod: TCheckMethod): string;

var
  FOracleConnection: TConnectionBase;
  FLogEmp: Integer;
  FLogFil: Integer;
  FLogUsu: Integer;

implementation

uses
  Winapi.Windows, Vcl.Forms, Vcl.StdCtrls, Vcl.Controls, System.Variants,
  System.DateUtils;

procedure StartTransaction();
begin
  FOracleConnection.BeginTrans;
end;

procedure Commit();
begin
  FOracleConnection.CommitTrans;
end;

procedure RollBack;
begin
  if (FOracleConnection.InTransaction) then
    FOracleConnection.RollbackTrans;

  Abort;
end;

function iff(const pTernario: Boolean;
  const pParametro1, pParametro2: Variant): Variant;
begin
  if (pTernario) then
    Result := pParametro1
  else
    Result := pParametro2;
end;

function UltimoCaracter(var pString: string; pCaracter: string;
  pDeletar: Boolean = True; const pCount: Integer = 1): Boolean;
begin
  Result := False;

  repeat
    if (AnsiSameText(Copy(pString, (Length(pString) - (pCount - 1)), pCount),
      pCaracter)) then
    begin
      if (pDeletar) then
        Delete(pString, (Length(pString) - (pCount - 1)), pCount);
      Result := True;
      Break;
    end;
  until not(AnsiSameText(Copy(pString, Length(pString), 1), pCaracter));
end;

{$HINTS OFF}
function DataNull(pData: TDate): TDateTime;
var
  xHint: TDate;
begin
  Result := pData;

  if (pData = 0) then
  begin
    Result := StrToDateTime('31/12/1900');
    pData := Result;
  end;
end;
{$HINTS ON}

function IsNull(const pString: string): Boolean;
begin
  Result := ((Length(pString) = 0) or (AnsiSameText(pString, ' ')) or (AnsiSameText(pString, #0)));
end;

function DateTimeFormatDB(const pData: TDate): string;
begin
  Result := Format('TO_DATE(''%s'', ''DD/MM/YYYY'')',
    [FormatDateTime('DD/MM/YYYY', pData)]);
end;

function DateTimeFormat(const pData: TDate): TDate;
begin
  Result := StrToDateTimeDef('DD/MM/YYYY', pData);
end;

function BuscarString(const pComparar: string;
  const pString: array of string): Boolean;
var
  i: Integer;
begin
  Result := False;

  for i := 0 to High(pString) do
  begin
    if AnsiSameText(pComparar, pString[i]) then
    begin
      Result := True;
      Break;
    end;
  end;
end;

function FloatToDate(const pFloat: Extended): TDate;
begin
  Result := FloatToDateTime(pFloat);
end;

function AllowedTypeKind(const pType: TTypeKind): Boolean;
begin
  Result := (pType in [tkInteger, tkFloat, tkString, tkChar, tkVariant,
    tkLString, tkWChar, tkWString, tkInt64, tkUString]);
end;

function ValueToDB(const pValor: string): string;
var
  xString: string;
begin
  xString := StringReplace(pValor, '.', '', [rfReplaceAll]);
  xString := StringReplace(xString, ',', '.', [rfReplaceAll]);
  Result := Trim(xString);
end;

function TextToFloat(const pValor: string): Double;
var
  xString: string;
begin
  xString := StringReplace(pValor, '.', '', [rfReplaceAll]);
  Result := StrToFloat(Trim(xString));
end;

function CRound(const pValue: Extended; const pPrecisao: Byte): Extended;
var
  i, xCount: Integer;
  xValue: string;
  xFloat: string;
  xVirgula: Boolean;
begin
  xValue := FloatToStr(pValue);
  xCount := 0;
  xVirgula := False;

  for i := 1 to Length(xValue) do
  begin
    if not(xVirgula) then
      xVirgula := xValue[i] = ',';

    xFloat := xFloat + xValue[i];

    if (xVirgula) then
      Inc(xCount);

    if xCount > pPrecisao then
      Break;
  end;
  Result := StrToFloat(xFloat);
end;

function FieldType(const pColumnType, pMask: string; const pSize: Integer): TFieldType;

  function IsNumber(const pNumber: string): Boolean;
  var
    i: Integer;
  begin
    Result := True;

    for i := 0 to High(pNumber) do
      if (AnsiSameText(pNumber[i], ',')) then
      begin
        Result := False;
        Break;
      end;
  end;

begin
  Result := ftUnknown;

  if (AnsiSameText(UpperCase(pColumnType), 'DATE')) then
    Result := ftDateTime
  else
  if (AnsiSameText(UpperCase(pColumnType), 'VARCHAR2')) then
    Result := ftString
  else
  if (AnsiSameText(UpperCase(pColumnType), 'NUMBER')) then
    if (IsNull(pMask)) then
      Result := iff(pSize >= 10, ftBCD, ftLargeint)
    else
      Result := iff(IsNumber(UpperCase(pMask)), iff(pSize >= 10, ftBCD, ftLargeint), ftFloat);
end;

function SetOperator(const pField, pValue: array of string; const pAND: Boolean): string;
var
  i: Integer;
begin
  for i := 0 to High(pField) do
  begin
    Result := Result + pField[i] + ' = ' + pValue[i] +
      iff(pAND, ' AND ', ',');
  end;

  if (pAND) then
    UltimoCaracter(Result, 'AND ', True, 4)
  else
    UltimoCaracter(Result, ',');
end;

function StrToChar(const pString: string): Char;
begin
  if (Length(pString) = 0) then
    Result := #0
  else
    Result := pString[1];
end;

function VarToChar(const pVar: Variant): Char;
begin
  Result := VarToStr(pVar)[1];
end;

function CreateTableFromClass(const pClassType: TClass): TTable;
var
  xValue: TValue;
  xType: TRttiType;
  xContext: TRttiContext;
  xRttiMethod: TRttiMethod;
  xInstanceType: TRttiInstanceType;
begin
  xContext := TRttiContext.Create;
  try
    Result := nil;

    xType := xContext.GetType(pClassType);
    xRttiMethod := xType.GetMethod('Create');

    if Assigned(xRttiMethod) then
    begin
      xInstanceType := xType.AsInstance;

      xValue := xRttiMethod.Invoke(xInstanceType.MetaclassType, []);
      Result := xValue.AsType<TTable>;
    end;
  finally
    xContext.Free;
  end;
end;

function GetMethod(const pMethod: TCheckMethod): string;
begin
  Result := EmptyStr;

  case (pMethod) of
    cmExitCol: Result := 'Exit';
    cmExit: Result := 'Exit';
    cmChange: Result := 'Change';
    cmEnter: Result := 'Enter';
    cmClick: Result := 'Click';
    cmLine: Result := 'EnterLine';
    cmAfterInsert: Result := 'AfterInsert';
    cmBeforeInsert: Result := 'BeforeInsert';
    cmCancelLine: Result := 'CancelLine';
    cmExitLine: Result := 'ExitLine';
    cmKeyDown: Result := 'KeyDown';
    cmBeforeDelete: Result := 'BeforeDelete';
    cmLookupGridPress: Result := 'LookupGridPress';
    cmInsert: Result := 'Insert';
    cmUpdate: Result := 'Update';
    cmDelete: Result := 'Delete';
  end;
end;

{ TConexao }

class procedure TConexao.Execute();
var
  xBASE: string;
begin
  xBASE := EmptyStr;

  if (System.ParamCount > 0) then
    xBASE := ParamStr(1)
  else
    xBASE := 'SENIOR52';

  FOracleConnection := TConnectionBase.CreateBase();
  FOracleConnection.Conexao(xBASE);
end;

class procedure TConexao.Finalizar;
begin
  FOracleConnection.Close;
end;

{ TTable }

procedure TTable.AddToCommand(const pValue: string; const pDontUseParam: Boolean = True);
begin
  FUseParam := iff(pDontUseParam, False, True);
  FCondicao := FCondicao + EmptyStr + pValue;
end;

procedure TTable.AtribuirValoresSelect;
var
  xProperty: TRttiProperty;
  xType: TRttiType;
  xContext: TRttiContext;
begin
  xContext := TRttiContext.Create;
  try
    try
      FCheckFields := False;
      xType := xContext.GetType(Self.ClassType);

      for xProperty in xType.GetProperties do
      begin
        if NegarCampo(xProperty.Name) then
        begin
          case xProperty.PropertyType.TypeKind of
            tkInteger:
              xProperty.SetValue(Self, FQuery.FindField(xProperty.Name).AsInteger);

            tkFloat:
              if (AnsiSameText('TDate', xProperty.PropertyType.Name)) then
                xProperty.SetValue(Self, DataNull(FQuery.FindField(xProperty.Name)
                  .AsDateTime))
              else
                xProperty.SetValue(Self, FQuery.FindField(xProperty.Name).AsFloat);

            tkWChar, tkChar:
            begin
              if (Length(FQuery.FindField(xProperty.Name).AsString) > 0) then
                xProperty.SetValue(Self, FQuery.FindField(xProperty.Name).AsString[1])
              else
                xProperty.SetValue(Self, ' ');
            end;
          else
            xProperty.SetValue(Self, FQuery.FindField(xProperty.Name).AsString);
          end;
        end;
      end;
    except
      on e: exception do
        raise;
    end;
  finally
    xContext.Free;
  end;

  FSetFields := False;
  Registros_OLD();
end;

constructor TTable.Create(const pTabela: string);
begin
  inherited Create();

  FTabela := pTabela;
  FUseParam := True;
  FSetFields := False;
  FCondicao := EmptyStr;
  FOrdenation := EmptyStr;
  FInsertValue := EmptyStr;
  FTables := EmptyStr;

  FState := aoInsert;
  FStateSelect := [ssSelect];
  FCheckFields := False;

  FAutoSelectPKS := (Length(FPrimaryKeys) > 0);
  FAutoSelectFKS := (Length(FForeignKeys) > 0);
  FPrimaryAndForeignKeys := False;

  FillChar(FFields, sizeOf(FFields), 0);
  FillChar(FBlockList, sizeOf(FBlockList), 0);
  FillChar(FLimitField, sizeOf(FLimitField), 0);

  FStringArrayList := TStringArrayList.Create;

  BlockProperty(['USU_Check', 'Check', 'Field', 'SetFields', 'Between', 'LineState',
    'CheckFieldsToAssign', 'StateToAssign', 'Select', 'doForeignKey', 'FieldForMax',
    'FieldForCount','FieldForSum','AutoSelect']);
end;

procedure TTable.BlockProperty(const pField: array of string);
var
  i, j: Integer;

  procedure Aumentar(const pNome: string);
  begin
    j := Length(FBlockList);
    Inc(j);
    SetLength(FBlockList, j);
    FBlockList[pred(j)] := pNome;
  end;

begin
  for i := 0 to High(pField) do
    Aumentar(pField[i]);
end;

function TTable.Prior(): Boolean;
begin
  Result := not(FQuery.Bof);

  if (Result) then
  begin
    AtribuirValoresSelect();
    FQuery.Prior;
  end
  else
    FQuery.Close;
end;

procedure TTable.PropertyForSelect(const pField: array of string;
  const pAND: Boolean = False);
var
  i, j: Integer;
begin
  for i := 0 to High(pField) do
  begin
    j := Length(FFields);
    Inc(j);
    SetLength(FFields, j);
    FFields[pred(j)] := pField[i];

    FCondicao := FCondicao + FTabela + '.' + pField[i] +
      Format(iff(FUseParam, ' = :%s', ' = %s'), [pField[i]]) +
      iff(pAND, ' AND ', ',');

    if (FSetFields) then
    begin
      j := Length(FFields);
      Inc(j);
      SetLength(FFields, j);
      FFields[pred(j)] := 'R' + pField[i];

      FRepeatParam := FRepeatParam + pField[i] +
        Format(iff(FUseParam, ' = :R%s', ' = %s'), [pField[i]]) +
        iff(pAND, ' AND ', ',');
    end;
  end;

  if (Length(pField) > 0) then
    if (pAND) then
    begin
      UltimoCaracter(FCondicao, 'AND ', True, 4);
      UltimoCaracter(FRepeatParam, 'AND ', True, 4);
    end
    else
    begin
      UltimoCaracter(FCondicao, ',');
      UltimoCaracter(FRepeatParam, ',');
    end;
end;

procedure TTable.DefinirParametros;
var
  xProperty: TRttiProperty;
  xType: TRttiType;
  xContext: TRttiContext;
  i: Integer;

  function FuncaoRetorno(const pField: string): string;
  begin
    if AnsiSameText(Copy(pField, 1, 1), 'R') and ((Length(pField) = 7) or (Length(pField) = 11)) then
      Result := Copy(pField, 2, pred(Length(pField)))
    else
      Result := pField;
  end;

begin
  xContext := TRttiContext.Create;
  try
    xType := xContext.GetType(Self.ClassType);

    for i := 0 to High(FFields) do
    begin
      xProperty := xType.GetProperty(FuncaoRetorno(FFields[i]));

      case xProperty.PropertyType.TypeKind of
        tkInteger:
          FQuery.ParamByName(FFields[i]).Value := xProperty.GetValue(Self).AsInteger;

        tkFloat:
          begin
            if (AnsiSameText('TDate', xProperty.PropertyType.Name)) then
              FQuery.ParamByName(FFields[i]).Value :=
                DataNull(FloatToDateTime(xProperty.GetValue(Self).AsExtended))
            else
              FQuery.ParamByName(FFields[i]).Value := xProperty.GetValue(Self).AsExtended;
          end;
      else
        FQuery.ParamByName(FFields[i]).Value := xProperty.GetValue(Self).ToString;
      end;
    end;
  finally
    xContext.Free;
  end;
end;

procedure TTable.AddForeignKeys(const pForeingKey,
  pRelational: array of string);
 var
  i,j: Integer;
begin
  for j := 0 to High(pForeingKey) do
  begin
    i := Length(FForeignKeys);
    Inc(i);
    SetLength(FForeignKeys, i);
    FForeignKeys[pred(i)] := pForeingKey[j];
  end;

  for j := 0 to High(pRelational) do
  begin
    i := Length(FRelationalForeign);
    Inc(i);
    SetLength(FRelationalForeign, i);
    FRelationalForeign[pred(i)] := pRelational[j];
  end;
end;

procedure TTable.AddPrimaryKeys(const pValues: string);
var
  i,j: Integer;
  xString: string;
begin
  xString := EmptyStr;

  for i := 1 to High(pValues) do
  begin
    if not(AnsiSameText(pValues[i],';')) then
      xString := xString + pValues[i];

    if (AnsiSameText(pValues[i],';')) or (i = High(pValues)) then
    begin
      j := Length(FPrimaryKeys);
      Inc(j);
      SetLength(FPrimaryKeys, j);

      FPrimaryKeys[pred(j)] := xString;
      xString := EmptyStr;
    end;
  end;
end;

procedure TTable.AddTable(const pTables: array of string);
var
  i: Integer;
begin
  for i := 0 to High(pTables) do
    FTables := FTables + pTables[i] + ',';

  UltimoCaracter(FTables, ',');
end;

destructor TTable.Destroy;
begin
  FillChar(FBetween, sizeOf(FBetween), 0);

  FreeAndNil(FQuery);
  FreeAndNil(FStringArrayList);

  inherited;
end;

procedure TTable.SetDelete;
begin
  FQuery := THQuery.CreatePersonalizado;
  try
    FQuery.Command := 'DELETE FROM ' + FTabela + ' WHERE ' + FCondicao;

    if (FUseParam) then
      DefinirParametros();

    FQuery.ExecSQL();
    FQuery.Close;
  finally
    FreeAndNil(FQuery);
  end;
end;

procedure TTable.Assign(APersistent: TPersistent);
var
  xType: TRttiType;
  xProperty: TRttiProperty;
  xContext: TRttiContext;
begin
  xContext := TRttiContext.Create;
  try
    xType := xContext.GetType(Self.ClassType);

    for xProperty in xType.GetProperties do
    begin
      if (AllowedTypeKind(xProperty.PropertyType.TypeKind) and Assigned(xContext.GetType(APersistent.ClassType).GetProperty(xProperty.Name))) then
        xProperty.SetValue(Self, xContext.GetType(APersistent.ClassType).GetProperty(xProperty.Name).GetValue(APersistent));
    end;

    Self.CheckFieldsToAssign := TTable(APersistent).CheckFieldsToAssign;
    Self.StateToAssign := TTable(APersistent).StateToAssign
  finally
    xContext.Free;
  end;
end;

function TTable.AssignedQueryExecute(): Boolean;
begin
  if not(Assigned(FQuery)) then
  begin
    Self.Open();
    Result := not(Self.IsEmpty);
  end
  else
  begin
    try
      FQuery.Prepared := True;
      FQuery.Open;
    except
      on E: Exception do
        raise;
    end;
    Result := not(FQuery.IsEmpty);
  end;
end;

procedure TTable.Delete;
begin
  FAutoSelect := True;
  MontarChaves();

  SetDelete();
end;

function TTable.ExecSql(): Boolean;
var
  xTable: TTable;
begin
  FAutoSelect := True;

  if (FForeignKey) then
    FPrimaryAndForeignKeys := True;

  MontarChaves();

  if Assigned(FQuery) then
  begin
    FQuery.Close;
    FQuery.Sql.Clear;
  end
  else
    FQuery := THQuery.CreatePersonalizado;

  xTable := CreateTableFromClass(Self.ClassType);
  try
    xTable.Assign(Self);
    xTable.StateToAssign := aoExists;
    xTable.Open();

    Result := not(xTable.IsEmpty);
    FState := iff(Result, aoUpdate, aoInsert);
    xTable.Close;
  finally
    FreeAndNil(xTable);
  end;
end;

procedure TTable.ExecutarMesesEntre;
begin
  if (FUseParam) then
    DefinirParametros;

  FQuery.Prepared := True;
  FQuery.Open;
end;

procedure TTable.Close;
begin
  FCheckFields := False;
  FCondicao := EmptyStr;
  FOrdenation := EmptyStr;

  FreeAndNil(FQuery);
end;

function TTable.Count: Integer;
begin
  Result := FQuery.Count;
end;

function TTable.CountField: Integer;
begin
  Result := FCountResultField;
end;

function TTable.GenerateID(const pField: string): Integer;
var
  xProperty: TRttiProperty;
  xContext: TRttiContext;
  xType: TRttiType;
  xQuery: THQuery;
begin
  Result := 1;

  xQuery := nil;
  try
    xContext := TRttiContext.Create;
    xType := xContext.GetType(Self.ClassType);

    xQuery := THQuery.CreatePersonalizado;

    xQuery.Command := 'SELECT MAX(' + pField + ') AS IDREG FROM ' + FTabela;
    xQuery.Open;
    if not(xQuery.IsEmpty) then
      Result := xQuery.FindField('IDREG').AsInteger + 1;

    xQuery.Close;

    xProperty := xType.GetProperty(pField);
    xProperty.SetValue(Self, Result);
  finally
    FreeAndNil(xQuery);
    xContext.Free;
  end;

  Clean();
end;

function TTable.GetBetween(const pName: string): TDate;
var
  i: Byte;
begin
  for i := 0 to High(FBetween.Name) do
    if (AnsiSameText(pName, FBetween.Name[i])) then
      Break;

  Result := FBetween.Data[i];
end;

function TTable.GetCheck: Byte;
begin
  Result := FCheck;
end;

procedure TTable.Init;
begin
  FillChar(FFields, sizeOf(FFields), 0);
  FillChar(FBetween, sizeOf(FBetween), 0);
  FillChar(FLimitField, sizeOf(FLimitField), 0);

  FOrdenation := EmptyStr;
  FCondicao := EmptyStr;
end;

procedure TTable.Insert;
begin
  if not(ExecSql) then
    Self.SetInsert();
end;

function TTable.State: TState;
begin
  Result := FState;
end;

function TTable.IsEmpty: Boolean;
begin
  Result := FEmpty;
end;

procedure TTable.Last();
begin
  FQuery.Last;

  if (not(FQuery.Bof)) then
    AtribuirValoresSelect();
end;

//O cancel retonar os valores OLDs para o original
procedure TTable.Cancel;
begin
  RetornarValores;

  FCheckFields := False;
end;

procedure TTable.CheckField(const pField: string);
var
  xType: TRttiType;
  xProperty: TRttiProperty;
  xContext: TRttiContext;
  xPropertyOld: TRttiProperty;
begin
  if (FCheckFields) and (FState = aoUpdate) then
  begin
    xContext := TRttiContext.Create;
    try
      xType := xContext.GetType(Self.ClassType);

      xProperty := xType.GetProperty(pField);
      xPropertyOld := xType.GetProperty('OLD_'+ pField);

      case xProperty.PropertyType.TypeKind of
        tkInteger:
          if (xProperty.GetValue(Self).AsInteger <> xPropertyOld.GetValue(Self).AsInteger) then
            FStringArrayList.Add(pField);

        tkFloat:
        begin
          if (AnsiSameText('TDate', xProperty.PropertyType.Name)) then
          begin
            if (FloatToDateTime(xProperty.GetValue(Self).AsExtended) <> FloatToDateTime(xPropertyOld.GetValue(Self).AsExtended)) then
              FStringArrayList.Add(pField);
          end
          else
          begin
            if (xProperty.GetValue(Self).AsExtended <> xPropertyOld.GetValue(Self).AsExtended) then
              FStringArrayList.Add(pField);
          end;
        end;
      else
        if (xProperty.GetValue(Self).AsString <> xPropertyOld.GetValue(Self).AsString) then
          FStringArrayList.Add(pField);
      end;
    finally
      xContext.Free;
    end;
  end;
end;

procedure TTable.Clean;
begin
  FillChar(FFields, sizeOf(FFields), 0);
  FillChar(FLimitField, sizeOf(FLimitField), 0);

  FCondicao := EmptyStr;
  FOrdenation := EmptyStr;
  FStateSelect := [ssSelect];

  if Assigned(FStringArrayList) then
    FStringArrayList.Clear;
end;

procedure TTable.ClearFields;
var
  xType: TRttiType;
  xProperty: TRttiProperty;
  xContext: TRttiContext;
begin
  xContext := TRttiContext.Create;
  try
    xType := xContext.GetType(Self.ClassType);

    for xProperty in xType.GetProperties do
    begin
      if NegarCampo(xProperty.Name) then
      begin
        case xProperty.PropertyType.TypeKind of
          tkInteger:
            xProperty.SetValue(Self, 0);

          tkFloat:
            xProperty.SetValue(Self, 0);

          tkWChar, tkChar:
            xProperty.SetValue(Self, StrToChar(emptyStr));
        else
          xProperty.SetValue(Self, emptyStr);
        end;
      end;
    end;
  finally
    xContext.Free;
  end;
end;

procedure TTable.SetInsert();
var
  xProperty: TRttiProperty;
  xContext: TRttiContext;
  xType: TRttiType;
  xCampos, xValores: string;
begin
  xContext := TRttiContext.Create;
  try
    xType := xContext.GetType(Self.ClassType);

    for xProperty in xType.GetProperties do
    begin
      if NegarCampo(xProperty.Name) then
      begin
        xCampos := xCampos + xProperty.Name + ',';
        xValores := xValores + ':' + xProperty.Name + ',';
      end;
    end;

    UltimoCaracter(xCampos, ',');
    UltimoCaracter(xValores, ',');

    FQuery.Sql.Clear;
    FQuery.Command := 'INSERT INTO ' + FTabela + ' (' + xCampos + ') VALUES (' +
      xValores + ')';

    for xProperty in xType.GetProperties do
    begin
      if NegarCampo(xProperty.Name) then
      begin
        if (AnsiSameText(UpperCase(xProperty.Name), FSequenceField)) then
          FQuery.ParamByName(xProperty.Name).Value := GenerateID(FSequenceField)
        else
          case xProperty.PropertyType.TypeKind of
            tkInteger:
              FQuery.ParamByName(xProperty.Name).Value := xProperty.GetValue(Self).AsInteger;

            tkFloat:
              begin
                if (AnsiSameText('TDate', xProperty.PropertyType.Name)) then
                  FQuery.ParamByName(xProperty.Name).Value :=
                    FloatToDateTime((xProperty.GetValue(Self).AsExtended))
                else
                  FQuery.ParamByName(xProperty.Name).Value :=
                    xProperty.GetValue(Self).AsExtended;
              end
          else
            FQuery.ParamByName(xProperty.Name).Value :=
              xProperty.GetValue(Self).ToString;
          end;
      end;
    end;

    FQuery.ExecSQL();
    Self.Clean;

    FState := aoUpdate;
    FCheckFields := True;
  finally
    xContext.Free;
    FreeAndNil(FQuery);
  end;
end;

procedure TTable.MontarEstadoSelect;
var
  xProperty: TRttiProperty;
  xContext: TRttiContext;
  xType: TRttiType;

  procedure AtribuirRetorno(const campo, alias: string);
  begin
    if not(IsNull(campo)) then
    begin
      if AnsiSameText(alias, 'GETCOUNT') then
        FCountResultField := FQuery.FindField(alias).AsInteger
      else
      begin
        xProperty := xType.GetProperty(campo);

        if (xProperty.PropertyType.TypeKind = tkFloat) then
          xProperty.SetValue(Self, FQuery.FindField(alias).AsFloat)
        else
          xProperty.SetValue(Self, FQuery.FindField(alias).AsInteger);
      end;
    end;
  end;

begin
  xContext := TRttiContext.Create;
  try
    xType := xContext.GetType(Self.ClassType);

    if (FUseParam) then
      DefinirParametros();

    try
      FQuery.Prepared := True;
      FQuery.Open;
    except
      on E: Exception do
        raise;
    end;
    FEmpty := (FQuery.IsEmpty);

    if not(FEmpty) then
    begin
      if (ssSelect in FStateSelect) then
          AtribuirValoresSelect()
      else
      begin
        if not(FSetFields) then
        begin
          AtribuirRetorno(FMaxField, 'GETMAX');
          AtribuirRetorno(FSumField, 'GETSUM');
          AtribuirRetorno(FCountField, 'GETCOUNT');
        end
        else
          AtribuirValoresSelect();
      end;
    end;
  finally
    xContext.Free;
  end;
end;

function TTable.MonthsBetween(const pInicial: string; const pFinal: TDate): Word;
begin
  FQuery := THQuery.CreatePersonalizado;
  try
    FQuery.Command := Format('SELECT TRUNC(MONTHS_BETWEEN(TO_DATE('''+ DateToStr(pFinal) +''',''DD/MM/YYYY''), %s)) AS RETORNO FROM %s WHERE %s',
      [pInicial, FTabela, FCondicao]);

    ExecutarMesesEntre();

    Result := Abs(FQuery.FindField('RETORNO').AsInteger);
  finally
    FQuery.Close;
    Self.Clean;
  end;
end;

function TTable.MonthsBetween(const pInicial: TDate; const pFinal: string): Word;
begin
  FQuery := THQuery.CreatePersonalizado;
  try
    FQuery.Command := Format('SELECT TRUNC(MONTHS_BETWEEN(TO_DATE(%s, ''DD/MM/YYYY''), %s)) AS RETORNO FROM %s ',
      [DateToStr(pInicial), pFinal, FTabela]);

    ExecutarMesesEntre();

    Result := FQuery.FindField('RETORNO').AsInteger;
  finally
    FQuery.Close;
    Self.Clean;
  end;
end;

function TTable.MonthsBetween(const pInicial, pFinal: string): Word;
begin
  FQuery := THQuery.CreatePersonalizado;
  try
    FQuery.Command := Format('SELECT TRUNC(MONTHS_BETWEEN(%s, %s)) AS RETORNO FROM %s ',
      [pInicial, pFinal, FTabela]);

    ExecutarMesesEntre();

    Result := FQuery.FindField('RETORNO').AsInteger;
  finally
    FQuery.Close;
    Self.Clean;
  end;
end;

procedure TTable.MontarChaves;
begin
  if (FAutoSelect) then
  begin
    FillChar(FSelectProps, sizeOf(FSelectProps), 0);

    if ((FAutoSelectPKS) and not(FPrimaryAndForeignKeys)) or (State in [aoInsert, aoUpdate, aoDelete]) then
      Self.SetAutoSelect(FPrimaryKeys);

    if (not(FAutoSelectPKS) and (FAutoSelectFKS)) or (FPrimaryAndForeignKeys) then
      Self.SetAutoSelect(FForeignKeys);

    Self.PropertyForSelect(FSelectProps, True);
    FAutoSelect := True;
  end;
end;

procedure TTable.MontarComandoBetween;
var
  i: Byte;
begin
  if (Length(FBetween.Name) > 0) then
  begin
    for i := 0 to High(FBetween.Name) do
    begin
      if (i = 0) then
      begin
        if (IsNull(FCondicao)) then
          FCondicao := ' WHERE '
        else
          FCondicao := ' AND ';

        FCondicao := Format('%s %s BETWEEN TO_DATE('''+ DateToStr(FBetween.Data[i]) +''',''DD/MM/YYYY'') AND', [FCondicao, FBetween.Name[i]]);
      end;

      if (i = 1) then
        FCondicao := Format('%s TO_DATE('''+ DateToStr(FBetween.Data[i]) +''',''DD/MM/YYYY'')', [FCondicao])
    end;
    FQuery.Reset;
    FQuery.Command := FQuery.Command + FCondicao;
  end;
end;

function TTable.MontarComandoSelect: string;
var
  xProperty: TRttiProperty;
  xContext: TRttiContext;
  xType: TRttiType;
  xCampos: string;
begin
  xContext := TRttiContext.Create;
  try
    xType := xContext.GetType(Self.ClassType);

    for xProperty in xType.GetProperties do
      if NegarCampo(xProperty.Name) then
        xCampos := xCampos + FTabela + '.' + xProperty.Name + ',';

    UltimoCaracter(xCampos, ',');

    Result := 'SELECT ' + xCampos + ' FROM ' + FTabela;

    if not(IsNull(FTables)) then
      Result := Result + ',' + FTables;

    if not(IsNull(FCondicao)) then
      Result := Result + ' WHERE ' + FCondicao;

    if not(IsNull(FOrdenation)) then
      Result := Result + ' ' + FOrdenation;
  finally
    xContext.Free;
  end;
end;

function TTable.SetUpdate(): string;
var
  xProperty: TRttiProperty;
  xContext: TRttiContext;
  xType: TRttiType;
  i: Integer;
begin
  xContext := TRttiContext.Create;
  try
    xType := xContext.GetType(Self.ClassType);

    Result := 'UPDATE ' + FTabela + ' SET ';

    for i := 0 to High(FStringArrayList.ArrayList) do
      Result := Result + FStringArrayList.ArrayList[i] + ' = :' + FStringArrayList.ArrayList[i] + ',';

    UltimoCaracter(Result, ',');

    FQuery.SQL.Clear;
    FQuery.Command := Result + ' WHERE ' + FCondicao;

    for i := 0 to High(FStringArrayList.ArrayList) do
    begin
      xProperty := xType.GetProperty(FStringArrayList.ArrayList[i]);

      case xProperty.PropertyType.TypeKind of
        tkInteger:
          FQuery.ParamByName(xProperty.Name).Value := xProperty.GetValue(Self)
            .AsInteger;

        tkFloat:
          begin
            if (AnsiSameText('TDate', xProperty.PropertyType.Name)) then
              FQuery.ParamByName(xProperty.Name).Value :=
                DataNull(FloatToDate(xProperty.GetValue(Self).AsExtended))
            else
              FQuery.ParamByName(xProperty.Name).Value :=
                xProperty.GetValue(Self).AsExtended;
          end;
      else
        FQuery.ParamByName(xProperty.Name).Value :=
          xProperty.GetValue(Self).ToString;
      end;
    end;

    if (FUseParam) then
      DefinirParametros();

    FQuery.ExecSQL();
    Self.Clean;
  finally
    xContext.Free;
    FreeAndNil(FQuery);
  end;
end;

function TTable.NegarCampo(const pNome: string): Boolean;
var
  i: Integer;
begin
  Result := True;

  if (AnsiSameText(UpperCase(Copy(pNome, 0, 4)), 'OLD_')) or (AnsiSameText(UpperCase(Copy(pNome, 0, 7)), 'USU_Old')) or
     (AnsiSameText(UpperCase(Copy(pNome, 0, 7)), 'OLD_USU')) then
    Result := False
  else
  begin
    for i := 0 to High(FBlockList) do
    begin
      if (AnsiSameText(FBlockList[i], pNome)) then
      begin
        Result := False;
        Break;
      end;
    end;
  end;
end;

procedure TTable.First();
begin
  FQuery.First;
  if (not(FQuery.Eof)) then
    AtribuirValoresSelect();
end;

function TTable.Next(): Boolean;
begin
  Result := not(FQuery.Eof);

  if (Result) then
  begin
    AtribuirValoresSelect();
    FQuery.Next;
  end
  else
  begin
    FQuery.Close;
    Self.Clean;
  end;
end;

procedure TTable.Open(const setConstraints: Boolean = True);
begin
  if Assigned(FQuery) then
  begin
    FQuery.Close;
    FQuery.Sql.Clear;
  end
  else
    FQuery := THQuery.CreatePersonalizado;

  FCheckFields := False;
  FAutoSelect := setConstraints;

  if (State <> aoExists) then
    FState := aoSelect;

  if (FForeignKey) then
    FPrimaryAndForeignKeys := True;

  MontarChaves();

  if (Select = [ssSelect]) then
      FQuery.Command := MontarComandoSelect()
  else
    SetSelection();

  MontarComandoBetween;
  MontarEstadoSelect();

  FState := iff(FQuery.Count > 0, aoUpdate, aoInsert);
  Self.Init;
end;

procedure TTable.OrdenationCommand(const pValue: string);
begin
  FOrdenation := pValue;
end;

procedure TTable.SetAutoSelect(const pFields: array of string);
var
  j: Integer;
  xProperty: TRttiProperty;
  xType: TRttiType;
  xContext: TRttiContext;

  procedure IncPropFields();
  var
    i: Integer;
  begin
    i := Length(FSelectProps);
    Inc(i);
    SetLength(FSelectProps, i);
    FSelectProps[pred(i)] := pFields[j];
  end;

begin
  xContext := TRttiContext.Create;
  try
    xType := xContext.GetType(Self.ClassType);

    for j := 0 to High(pFields) do
    begin
      if (State = aoSelect) and not(FPrimaryAndForeignKeys) then
      begin
        xProperty := xType.GetProperty(pFields[j]);

        case xProperty.PropertyType.TypeKind of
          tkInteger:
            if (xProperty.GetValue(Self).AsInteger > 0) then
              IncPropFields;

          tkFloat:
            if (xProperty.GetValue(Self).AsExtended > 0) then
              IncPropFields;
        else
          if not(IsNull(xProperty.GetValue(Self).ToString)) then
            IncPropFields;
        end;
      end
      else
        IncPropFields;
    end;
  finally
    xContext.Free;
  end;
end;

procedure TTable.SetBetween(const pName: string; const Value: TDate);
var
  i: Byte;
begin
  i := Length(FBetween.Name);
  Inc(i);
  SetLength(FBetween.Name, i);
  SetLength(FBetween.Data, i);
  Dec(i);

  FBetween.Name[i] := pName;
  FBetween.Data[i] := Value;
end;

procedure TTable.SetCheck(const Value: Byte);
begin
  FCheck := Value;
end;

procedure TTable.SetForeignKeyValue(const pTable: TTable);
var
  i: Integer;
  xSelfProperty: TRttiProperty;
  xSelfContext: TRttiContext;
  xSelfType: TRttiType;

  xProperty: TRttiProperty;
  xContext: TRttiContext;
  xType: TRttiType;
begin
  xContext := TRttiContext.Create;
  xSelfContext := TRttiContext.Create;
  try
    xType := xContext.GetType(pTable.ClassType);
    xSelfType := xSelfContext.GetType(Self.ClassType);

    for i := 0 to High(FForeignKeys) do
    begin
      xProperty := xType.GetProperty(FRelationalForeign[i]);

      if Assigned(xProperty) then
      begin
        FPrimaryAndForeignKeys := True;

        xSelfProperty := xSelfType.GetProperty(FForeignKeys[i]);
        xSelfProperty.SetValue(Self, xProperty.GetValue(pTable));
        Break;
      end;
    end;
  finally
    xContext.Free;
    xSelfContext.Free;
  end;
end;

procedure TTable.SetSelect(const Value: TStateSelectProp);
begin
  FStateSelect := Value;
end;

procedure TTable.SetSelection;
var
  xSum: string;
  xCount: string;
  xMax: string;
  xProperty: TRttiProperty;
  xContext: TRttiContext;
  xType: TRttiType;
  xCampos: string;
  xMaior: string;
  xGetResult: string;
begin
  xGetResult := 'SELECT ';
  FQuery.LockType := ltReadOnly;

  xCampos := EmptyStr;
  xMaior := EmptyStr;

  if (ssSum in FStateSelect) then
    xSum := Format('SUM(%s) AS GETSUM ', [FSumField]);

  if (ssCount in FStateSelect) then
    xCount := Format('COUNT(%s) AS GETCOUNT ', [FCountField]);

  if (ssMax in FStateSelect) then
  begin
    xMax := Format('MAX(%s) AS GETMAX ', [FMaxField]);

    if (FSetFields) then
    begin
      xContext := TRttiContext.Create;
      try
        xType := xContext.GetType(Self.ClassType);

        for xProperty in xType.GetProperties do
          if NegarCampo(xProperty.Name) then
            xCampos := xCampos + FTabela + '.' + xProperty.Name + ',';

        UltimoCaracter(xCampos, ',');

        if not(IsNull(FCondicao)) then
          xMax := Format('%s WHERE %s', [xMax, FCondicao]);

        if not(IsNull(xCampos)) then
        begin
          xMaior := Format('SELECT %s FROM %s', [xCampos, FTabela]);

          if not(IsNull(FCondicao)) then
            xMaior := Format('%s WHERE %s', [xMaior, FRepeatParam]);

          xMaior := xMaior + ' AND ' + FField + ' = (' + xMax + ')';
          xMax := xMaior;
        end;

        FQuery.Command := xMax;
      finally
        xContext.Free;
      end;
    end;
  end;

  if not(FSetFields) then
  begin
    if not(IsNull(xMax)) then
      xGetResult := xGetResult + xMax;

    if not(IsNull(xSum)) then
      if not(IsNull(xMax)) then
        xGetResult := xGetResult + ',' + xSum
      else
        xGetResult := xGetResult + xSum;

    if not(IsNull(xCount)) then
      if not(IsNull(xSum)) or  not(IsNull(xMax)) then
        xGetResult := xGetResult + ',' + xCount
      else
        xGetResult := xGetResult + xCount;

    xGetResult := Format(xGetResult + ' FROM %s ', [FTabela]);

    if not(IsNull(FCondicao)) then
      xGetResult := Format('%s WHERE %s', [xGetResult, FCondicao]);

    FQuery.Command := xGetResult;
  end;
end;

procedure TTable.SetSequenceField(const pField: string);
begin
  FSequenceField := pField;
end;

function TTable.SetTableToRecord(const pTabela: string): THQuery;
begin
  FQuery := THQuery.CreatePersonalizado();
  FTabela := pTabela;

  Result := FQuery;
end;

procedure TTable.Update;
begin
  if (ExecSql) then
    if (Length(FStringArrayList.ArrayList) > 0) then
      Self.SetUpdate()
end;

{ TIterador }

procedure TIterador.Add(const Obj: TObject);
var
  xContext: TRttiContext;
  xType: TRttiType;
  xProperty: TRttiProperty;
  i: Integer;
  xValor: string;
begin
  inherited Add(Obj);

  if (indexed) then
  begin
    xContext := TRttiContext.Create;
    try
      xType := xContext.GetType(Obj.ClassType);

      for i := 0 to High(FFields) do
      begin
        xProperty := xType.GetProperty(FFields[i]);
        xValor := xValor + VarToStr(xProperty.GetValue(Obj).AsVariant);
      end;

      AddIndex(xValor);
    finally
      xContext.Free;
    end;
  end;
end;

procedure TIterador.AddByClass(const Old, New: TTable);
begin
  New.Assign(Old);
  Self.Add(New);
end;

procedure TIterador.AddByClass(const Obj: TTable);
var
  xValue: TValue;
  xType: TRttiType;
  xContext: TRttiContext;
  xRttiMethod: TRttiMethod;
  xInstanceType: TRttiInstanceType;
  xTable: TTable;
begin
  xContext := TRttiContext.Create;
  try
    xType := xContext.GetType(Obj.ClassType);
    xRttiMethod :=  xType.GetMethod('Create');

    if Assigned(xRttiMethod) then
    begin
      xInstanceType := xType.AsInstance;

      xValue := xRttiMethod.Invoke(xInstanceType.MetaclassType, []);
      xTable := xValue.AsType<TTable>;
      xTable.Assign(Obj);

      Self.Add(xTable);
    end;
  finally
    xContext.Free;
  end;
end;

procedure TIterador.AddByQuery(const Obj: TObject);
var
  xClass: TPersistentClass;
  xObj: TTable;
begin
  xClass := GetClass(Obj.ClassName);
  xObj := (xClass.Create) as TTable;

  Self.Add(xObj);
end;

procedure TIterador.AddIndex(const pValue: String);
var
  i: Integer;
begin
  i := Length(FIndex);
  Inc(i);
  SetLength(FIndex, i);
  Dec(i);

  FIndex[i].index := Self.Count;
  FIndex[i].value := pValue;
end;

procedure TIterador.CheckFields(const value: Byte);
var
  i: Integer;
begin
  for i := 0 to pred(Self.Count) do
    TTable(Self[i]).Check := value;
end;

constructor TIterador.Create(const pBaseClass: TClass = nil);
begin
  inherited Create;

  FillChar(FIndex, sizeOf(FIndex), 0);
end;

destructor TIterador.Destroy;
begin
  FillChar(FIndex, sizeOf(FIndex), 0);

  inherited;
end;

function TIterador.Exists(const pItem: Integer): Boolean;
begin
  try
    Result := (Self[pred(pItem)] <> nil) or not(Assigned(TObject(Self[pred(pItem)])));
  except
    Result := False;
  end;
end;

function TIterador.GetIndexed: Boolean;
begin
  Result := Findexed;
end;

procedure TIterador.IndexFields(const pFields: array of string);
var
  i, j: Integer;
begin
  FillChar(FFields, sizeOf(FFields), 0);

  for i := 0 to High(pFields) do
  begin
    j := Length(FFields);
    Inc(j);
    SetLength(FFields, j);
    FFields[pred(j)] := pFields[i];
  end;
end;

function TIterador.IndexOf(const Value: string): Integer;
begin
  Result := IndexOfValues(Value);
end;

function TIterador.IndexOfFields(const pObj: TObject): Integer;
var
  xContext: TRttiContext;
  xType: TRttiType;
  xProperty: TRttiProperty;
  i: Integer;
  xValor: string;
begin
  xContext := TRttiContext.Create;
  try
    xType := xContext.GetType(pObj.ClassType);

    for i := 0 to High(FFields) do
    begin
      xProperty := xType.GetProperty(FFields[i]);
      xValor := xValor + VarToStr(xProperty.GetValue(pObj).AsVariant);
    end;

    Result := IndexOfValues(xValor);
  finally
    xContext.Free;
  end;
end;

function TIterador.IndexOfValues(const pValue: String): Integer;
var
  i: Integer;
begin
  Result := -1;

  for i := 0 to High(FIndex) do
  begin
    if (AnsiSameText(FIndex[i].value, pValue)) then
    begin
      Result := i;
      Break;
    end;
  end;
end;

function TIterador.SearchIndexValue(const pObj: TObject): Boolean;
var
  xContext: TRttiContext;
  xType: TRttiType;
  xProperty: TRttiProperty;
  i: Integer;
  xValor: string;
begin
  xContext := TRttiContext.Create;
  try
    xType := xContext.GetType(pObj.ClassType);

    for i := 0 to High(FFields) do
    begin
      xProperty := xType.GetProperty(FFields[i]);
      xValor := xValor + VarToStr(xProperty.GetValue(pObj).AsVariant);
    end;

    Result := (IndexOfValues(xValor) > -1);

    if not(Result) then
      AddIndex(xValor);
  finally
    xContext.Free;
  end;
end;

function TIterador.Selecionados: Boolean;
var
  i: Integer;
begin
  Result := False;

  for i := 0 to pred(Self.Count) do
  begin
    Result := (TTable(Self[i]).Check = 1);

    if (Result) then
      Break;
  end;
end;

procedure TIterador.SetIndexed(const Value: Boolean);
begin
  Findexed := Value;
end;

{ TTabelaPadrao }

constructor TTabelaPadrao.Create(const pTabela: string);
begin
  inherited Create(pTabela);

  BlockProperty(['ID', 'USU_ID']);
end;

destructor TTabelaPadrao.Destroy;
begin
  inherited;
end;

procedure TTabelaPadrao.Registros_OLD;
begin
  //nada

  CheckFieldsToAssign := True;
end;

procedure TTabelaPadrao.RetornarValores;
begin
  //Filhos
end;

function TTabelaPadrao.TableType: tTableType;
begin
  Result := ttPadrao;
end;

{ TTabelaUsuario }

constructor TTabelaUsuario.Create(const pTabela: string);
begin
  inherited Create(pTabela);

  SetSequenceField('USU_ID');
end;

destructor TTabelaUsuario.Destroy;
begin
  inherited;
end;


function TTabelaUsuario.GetId: Integer;
begin
  Result := FID;
end;

function TTabelaUsuario.GetOldId: Integer;
begin
  Result := FOldId;
end;

procedure TTabelaUsuario.Registros_OLD;
begin
  CheckFieldsToAssign := True;
end;

procedure TTabelaUsuario.RetornarValores;
begin
  //Filho
end;

procedure TTabelaUsuario.SetId(const pId: Integer);
begin
  FID := pId;
end;

procedure TTabelaUsuario.SetOldId(const Value: Integer);
begin
  FOldId := Value;
end;

function TTabelaUsuario.TableType: tTableType;
begin
  Result := ttUsuario;
end;

{ TConnectionBase }

function TConnectionBase.BaseConexao: string;
begin
  Result := FBase;
end;

procedure TConnectionBase.Conexao(const pBase: string);
begin
  if (AnsiSameText(pBase, 'SENIOR52')) then
    Self.ConexaoSENIOR52;

  if (AnsiSameText(pBase, 'SENIOR53')) then
    Self.ConexaoSENIOR53;

  if (AnsiSameText(pBase, 'SENIOR55')) then
    Self.ConexaoSENIOR55;
end;

procedure TConnectionBase.ConexaoSENIOR52;
begin
  Self.ConnectionString :=
    'Provider=MSDAORA.1;Password=senior52;User ID=senior52;Data Source=HENNDSV;Extended Properties="Unicode=True";Persist Security Info=True';
  Self.LoginPrompt := False;
  Self.Open('senior52', 'senior52');

  FBase := 'SENIOR52';
end;

procedure TConnectionBase.ConexaoSENIOR53;
begin
  Self.ConnectionString :=
    'Provider=MSDAORA.1;Password=s1b13n5;User ID=sapiens;Data Source=HENNPROD;Extended Properties="Unicode=True";Persist Security Info=True';
  Self.LoginPrompt := False;
  Self.ConnectionTimeout := 1;
  Self.Open('sapiens', 's1b13n5');

  FBase := 'SAPIENS';
end;

procedure TConnectionBase.ConexaoSENIOR55;
begin
  Self.ConnectionString :=
    'Provider=MSDAORA.1;Password=senior55;User ID=senior55;Data Source=henndsv;Extended Properties="Unicode=True";Persist Security Info=True';
  Self.LoginPrompt := False;
  Self.Open('senior55', 'senior55');

  FBase := 'SENIOR55';
end;

constructor TConnectionBase.CreateBase;
begin
  inherited Create(nil);
end;

destructor TConnectionBase.Destroy;
begin
  inherited;
end;

function TConnectionBase.MontarURL(const pType: PTypeInfo): string;
begin
  Result := EmptyStr;

  if (AnsiSameText(FBase, 'SENIOR52'))  then
    Result := Format('http://sch:8383/g5-senior-services/%s', [pType.Name]);

  if (AnsiSameText(FBase, 'SAPIENS'))  then
    Result := Format('http://seniorclapp/g5-senior-services/%s', [pType.Name]);

  if (AnsiSameText(FBase, 'SENIOR55'))  then
    Result := Format('http://sch:8484/g5-senior-services/%s', [pType.Name]);
end;

{ TData }

constructor TData.Create(const pData: TDate = 0);
begin
  inherited Create;

  Data := iff(pData = 0, Date, pData);
  FDiaUtil := False;
end;

procedure TData.DecDays(const pValue: Integer);
var
  xLoop: Integer;
begin
  xLoop := pValue;

  while (xLoop > 0) do
  begin
    if (FDia = 1) then
    begin
      if (FMes = 1) then
      begin
        Dec(FAno);
        FMes := 12;
      end
      else
        Dec(FMes);

      FData := EncodeDate(FAno, FMes, 1);
      UltimoDiaMes();
      DecodeDate(FData, FAno, FMes, FDia);
    end
    else
      Dec(FDia);

    Dec(xLoop);

    if ((xLoop = 0) and (FDiaUtil)) then
      if (Self.GetDayOfWeek in [dwDomingo, dwSabado]) then
        Inc(xLoop);
  end;
end;

destructor TData.Destroy;
begin
  inherited;
end;

function TData.GetData: TDate;
begin
  if (FAno > 0) then
    FData := EncodeDate(FAno, FMes, FDia);

  Result := FData;
end;

procedure TData.IncDays(const pValue: Integer);
var
  xDias: Integer;
  xLoop: Integer;
begin
  xLoop := pValue;

  while (xLoop > 0) do
  begin
    xDias := MonthDays[IsLeapYear(FAno), FMes];
    Inc(FDia);
    Dec(xLoop);

    if ((xLoop = 0) and (FDiaUtil)) then
      if (Self.GetDayOfWeek in [dwDomingo, dwSabado]) then
        Inc(xLoop);

    if (FDia > xDias) then
    begin
      FDia := 1;
      Inc(FMes);

      if (FMes > 12) then
      begin
        FMes := 1;
        Inc(FAno);
      end;
    end;
  end;
end;

function TData.PrimeiroDiaMes: TDate;
begin
  FData := EncodeDate(FAno, FMes, 1);

  Result := FData;
end;

function TData.PrimeiroDiaSemana: TDate;
begin
  case (GetDayOfWeek) of
    dwDomingo: FData := FData; //mantem
    dwSegundaFeira: DecDays(1);
    dwTercaFeira: DecDays(2);
    dwQuartaFeira: DecDays(3);
    dwQuintaFeira: DecDays(4);
    dwSextaFeira: DecDays(5);
    dwSabado: DecDays(6);
  end;

  FData := EncodeDate(FAno, FMes, FDia);
  Result := FData;
end;

function TData.UltimoDiaMes: TDate;
begin
  FData := EndOfTheMonth(FData);
  Result := FData;
end;

function TData.UltimoDiaSemana: TDate;
begin
  case (GetDayOfWeek) of
    dwDomingo: IncDays(6);
    dwSegundaFeira: IncDays(5);
    dwTercaFeira: IncDays(4);
    dwQuartaFeira: IncDays(3);
    dwQuintaFeira: IncDays(2);
    dwSextaFeira: IncDays(1);
    dwSabado: FData := FData; //mantem
  end;

  FData := EncodeDate(FAno, FMes, FDia);
  Result := FData;
end;

procedure TData.SetData(const Value: TDate);
begin
  FData := Value;

  DecodeDate(Value, FAno, FMes, FDia);
end;

function TData.GetDayOfWeek: tDayOfWeek;
begin
  Result := tDayOfWeek(DayOfWeek(Data));
end;

{ TStringArrayList }

procedure TStringArrayList.Add(const Value: string);
var
  i: Integer;
begin
  if (FList.IndexOf(Value) = -1) then
  begin
    i := Length(FArray);
    Inc(i);
    SetLength(FArray, i);
    FArray[pred(i)] := Value;

    FList.Add(Value)
  end;
end;

function TStringArrayList.ArrayList: TArrayOfString;
begin
  Result := FArray;
end;

procedure TStringArrayList.Clear;
begin
  FillChar(FArray, sizeOf(FArray), 0);
  FList.Clear;
end;

constructor TStringArrayList.Create;
begin
  inherited;

  FList := TStringList.Create;
  FillChar(FArray, sizeOf(FArray), 0);
end;

destructor TStringArrayList.Destroy;
begin
  FreeAndNil(FList);
  FillChar(FArray, sizeOf(FArray), 0);

  inherited;
end;

end.
