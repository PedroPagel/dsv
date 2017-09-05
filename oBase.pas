unit oBase;

interface

uses
  Data.SqlExpr, oQuery, System.Rtti, System.SysUtils, Data.DBXOracle,
  System.Contnrs, Data.DBXCommon, Data.Db, Data.DBCommon, System.Math,
  Data.Win.ADODB, System.Classes, System.TypInfo, Vcl.Dialogs, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.AnsiStrings;

type
  TTableState = (estInsert, estUpdate, estDelete, etSelect, etNone, etExists);
  tEstadoSelect = (esNormal, esLoop, esMAX, esMIN, esCOUNT, esSUM);
  TCheckMethod = (cmNone, cmExit, cmChange, cmEnter, cmClick);
  tTitulo = (tTContasPagar, tTContasReceber);
  tTableType = (ttUsuario, ttPadrao);
  tDayOfWeek = (dwNenhum, dwDomingo, dwSegundaFeira, dwTercaFeira, dwQuartaFeira,
                dwQuintaFeira, dwSextaFeira, dwSabado);

  TBetweenRegister = record
    Name: array of string;
    Data: array of TDate;
  end;

  TArrayOfString = array of string;

  TTable = class(TInterfacedPersistent)
  private
    FCheck: Byte;
    FField: string;
    FQuery: THQuery;
    FTabela: string;
    FType: TRttiType;
    FCondicao: string;
    FInsertValue: string;
    FTables: string;
    FUseParam: Boolean;
    FContext: TRttiContext;
    FSelect: tEstadoSelect;
    FSetFields: Boolean;
    FFields: array of string;
    FRepeatParam: string;
    FLimitField: array of string;
    FBlockList: array of string;
    FBetween: TBetweenRegister;

    procedure Insert();
    procedure Update();
    procedure Delete();
    procedure Clean();
    procedure DefinirParametros();
    procedure MontarEstadoInsert();
    procedure MontarEstadoDelete();
    procedure MontarComandoBetween();

    function GetCheck: Byte;
    function Select(): Boolean;
    function MAXSelect(): string;
    function SUMSelect(): string;
    function COUNTSelect(): string;
    function MontarEstadoUpdate(): string;
    function MontarEstadoSelect(): Boolean;
    function MontarComandoSelect(): string;
    function LiberarCampo(const pNome: string): Boolean;
    function NegarCampo(const pNome: string): Boolean;
    function LimitarCampos(const pNome: string): Boolean;
    procedure SetCheck(const Value: Byte);
    procedure ExecutarMesesEntre();
    function GetBetween(const pName: string): TDate;
    procedure SetBetween(const pName: string; const Value: TDate);
  protected
    procedure Registros_OLD(); virtual; abstract;
  public
    constructor Create(const pTabela: string);
    destructor Destroy(); override;

    procedure AtribuirValoresSelect();
    procedure Start();
    procedure Close();
    procedure First();
    procedure Last();
    procedure ClearFields();
    procedure Init(const pTabela: string);
    procedure AddTable(const pTables: array of string);
    procedure BlockProperty(const pField: array of string);
    procedure FieldsForUpdate(const pField: array of string);
    procedure AddToCommand(const pValue: string; const pDontUseParam: Boolean = True);
    procedure PropertyForSelect(const pField: array of string; const pAND: Boolean = False);

    function Next(): Boolean;
    function Count: Integer;
    function Prior(): Boolean;
    function TableType: tTableType; virtual; abstract;
    function SetTableToRecord(const pTabela: string): THQuery;
    function GenerateID(const pField: string): Integer; virtual; abstract;
    function MonthsBetween(const pInicial, pFinal: string): Word; overload;
    function MonthsBetween(const pInicial: string; const pFinal: TDate): Word; overload;
    function MonthsBetween(const pInicial: TDate; const pFinal: string): Word; overload;
    function Execute(const pEstadoTabela: TTableState; const pEstadoSelect: tEstadoSelect = esNormal): Boolean; overload;
    function AssignedQueryExecute(const pEstadoTabela: TTableState; const pEstadoSelect: tEstadoSelect = esNormal): Boolean;

    property Field: string read FField write FField;
    property Check: Byte read GetCheck write SetCheck;
    property Between[const pName: string]: TDate read GetBetween write SetBetween;
    property SetFields: Boolean read FSetFields write FSetFields;
  end;

  TTabelaPadrao = class(TTable)
  protected
    procedure Registros_OLD(); override;
  public
    constructor Create(const pTabela: string);
    destructor Destroy(); override;

    function TableType: tTableType; override;
    function GenerateID(const pField: string): Integer; override;
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
  public
    constructor Create(const pTabela: string);
    destructor Destroy(); override;

    function TableType: tTableType; override;
    function GenerateID(const pField: string): Integer; override;

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
    FIndex: TStringList;
    FBaseClass: TClass;
    Findexed: Boolean;

    function GetIndexed: Boolean;
    procedure SetIndexed(const Value: Boolean);
  public
    constructor Create(const pBaseClass: TClass = nil);
    destructor Destroy(); override;

    function Selecionados(): Boolean;
    function Exists(const pItem: Integer): Boolean;
    function IndexOfFields(const pObj: TObject): Boolean;

    procedure IndexFields(const pFields: array of string);
    procedure ShiftValues(const pInput: TObject); //metodo novo, adiciona os dados de um objeto gemeo
    procedure IterarAdd(const pObjEntrada: TObject; const pObjeSaida: TObject);
    procedure Iterar(const pObjEntrada: TObject; const pObjeSaida: TObject);

    class procedure Repassar(const pObjEntrada: TObject;
      const pObjeSaida: TObject);

    property indexed: Boolean read GetIndexed write SetIndexed;
  end;

  TFilial = class(TTabelaPadrao)
  private
    FPagMul: Double;
    FPagDtm: Word;
    FPagJmm: Double;
    FPagTjr: Char;
    FPagDtj: Word;
    FRecPor: string;
    FRecCrt: string;
    FCodFil: Integer;
    FCodEmp: Integer;
    FPagTpm: string;

    function GetCodFil: Integer;
    function GetPagDtj: Word;
    function GetPagDtm: Word;
    function GetPagJmm: Double;
    function GetPagMul: Double;
    function GetPagTjr: Char;
    function GetRecCrt: string;
    function GetRecPor: string;
    function GetCodEmp: Integer;

    procedure SetCodEmp(const pCodEmp: Integer);
    procedure SetCodFil(const pCodFil: Integer);
    procedure SetPagDtj(const pPagDtj: Word);
    procedure SetPagDtm(const pPagDtm: Word);
    procedure SetPagJmm(const pPagJmm: Double);
    procedure SetPagMul(const pPagMul: Double);
    procedure SetPagTjr(const pPagTjr: Char);
    procedure SetRecCrt(const pRecCrt: string);
    procedure SetRecPor(const pRecPor: string);
    function GetPagTpm: string;
    procedure SetPagTpm(const pPagTpm: string);
  public
    constructor Create();
    destructor Destroy(); override;

    property PagMul: Double read GetPagMul write SetPagMul;
    property PagDtm: Word read GetPagDtm write SetPagDtm;
    property PagJmm: Double read GetPagJmm write SetPagJmm;
    property PagTjr: Char read GetPagTjr write SetPagTjr;
    property PagDtj: Word read GetPagDtj write SetPagDtj;
    property RecPor: string read GetRecPor write SetRecPor;
    property RecCrt: string read GetRecCrt write SetRecCrt;
    property CodFil: Integer read GetCodFil write SetCodFil;
    property CodEmp: Integer read GetCodEmp write SetCodEmp;
    property PagTpm: string read GetPagTpm write SetPagTpm;
  end;

  TListaFilial = class(TIterador)
  public
    constructor Create();
    destructor Destroy(); override;

    function DadosFilial(const pCodEmp: Integer;
      const pCodFil: Integer): TFilial;
    procedure AddEmpresaLogada(const pCodEmp: Integer);
    procedure AddEmpresaFilialLogada(const pCodEmp: Integer;
      const pCodFil: Integer);
    procedure AddTodas();
  end;

  TListFil = class
  public
    class var FListaFilial: TListaFilial;
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
    FDiaDaSemana: Boolean;
    FDayOfWeek: tDayOfWeek;

    function GetDayOfWeek: tDayOfWeek;

    procedure SetData(const Value: TDate);
    function GetData: TDate;
  public
    constructor Create(const pData: TDate = 0);
    destructor Destroy; override;

    procedure IncDays(const pValue: Integer);

    property Data: TDate read GetData write SetData;
    property Dia: Word read FDia;
    property Mes: Word read FMes;
    property Ano: Word read FAno;
    property DiaDaSemana: Boolean read FDiaDaSemana write FDiaDaSemana;
  end;

procedure StartTransaction();
procedure Commit();
procedure RollBack;

function iff(const pTernario: Boolean;
  const pParametro1, pParametro2: Variant): Variant;
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

var
  FOracleConnection: TConnectionBase;
  FListaFilial: TListaFilial;
  FLogEmp: Integer;
  FLogFil: Integer;
  FLogUsu: Integer;

implementation

uses
  Winapi.Windows, Vcl.Forms, Vcl.StdCtrls, Vcl.Controls, System.Variants;

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
  Result := pString[1];
end;

function VarToChar(const pVar: Variant): Char;
begin
  Result := VarToStr(pVar)[1];
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
begin
  try
    for xProperty in FType.GetProperties do
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
  FSetFields := False;
  Registros_OLD();
end;

constructor TTable.Create(const pTabela: string);
begin
  inherited Create();

  Init(pTabela);
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

procedure TTable.FieldsForUpdate(const pField: array of string);
var
  i, j: Integer;
begin
  for i := 0 to High(pField) do
  begin
    j := Length(FLimitField);
    Inc(j);
    SetLength(FLimitField, j);
    FLimitField[pred(j)] := pField[i];
  end;
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
  xPropriedade: TRttiProperty;
  i: Integer;

  function FuncaoRetorno(const pField: string): string;
  begin
    if AnsiSameText(Copy(pField, 1, 1), 'R') then
      Result := Copy(pField, 2, pred(Length(pField)))
    else
      Result := pField;
  end;

begin
  for i := 0 to High(FFields) do
  begin
    xPropriedade := FType.GetProperty(FuncaoRetorno(FFields[i]));

    case xPropriedade.PropertyType.TypeKind of
      tkInteger:
        FQuery.ParamByName(FFields[i]).Value := xPropriedade.GetValue(Self)
          .AsInteger;

      tkFloat:
        begin
          if (AnsiSameText('TDate', xPropriedade.PropertyType.Name)) then
            FQuery.ParamByName(FFields[i]).Value :=
              DataNull(FloatToDateTime(xPropriedade.GetValue(Self).AsExtended))
          else
            FQuery.ParamByName(FFields[i]).Value := xPropriedade.GetValue(Self)
              .AsExtended;
        end;
    else
      FQuery.ParamByName(FFields[i]).Value :=
       UpperCase(xPropriedade.GetValue(Self).ToString);
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

procedure TTable.Delete();
begin
  MontarEstadoDelete();
end;

destructor TTable.Destroy;
begin
  FContext.Free;
  FreeAndNil(FQuery);
  FillChar(FBetween, sizeOf(FBetween), 0);

  inherited;
end;

procedure TTable.MontarEstadoDelete;
begin
  FQuery.Command := 'DELETE FROM ' + FTabela + ' WHERE ' + FCondicao;

  if (FUseParam) then
    DefinirParametros();
end;

function TTable.Execute(const pEstadoTabela: TTableState; const pEstadoSelect: tEstadoSelect = esNormal): Boolean;
begin
  FQuery := THQuery.CreatePersonalizado;

  Result := False;
  FSelect := pEstadoSelect;
  FContext := TRttiContext.Create;
  FType := FContext.GetType(Self.ClassType);

  case (pEstadoTabela) of
    estInsert:
      Insert();

    estUpdate:
      Update();

    etSelect:
      Result := Select();

    estDelete:
      Delete();
  end;

  if (pEstadoTabela in [estInsert, estUpdate, estDelete]) then
    FQuery.ExecSQL();

  if (FSelect <> esLoop) then
  begin
    FQuery.Close;
    Self.Clean;
  end;
end;

function TTable.AssignedQueryExecute(const pEstadoTabela: TTableState;
  const pEstadoSelect: tEstadoSelect): Boolean;
begin
  if not(Assigned(FQuery)) then
    Result := Execute(pEstadoTabela, pEstadoSelect)
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

procedure TTable.ExecutarMesesEntre;
begin
  if (FUseParam) then
    DefinirParametros;

  FQuery.Prepared := True;
  FQuery.Open;
end;

procedure TTable.Close;
begin
  FCondicao := EmptyStr;
  FQuery.Close;
  FreeAndNil(FQuery);
end;

function TTable.Count: Integer;
begin
  Result := FQuery.Count;
end;

function TTable.COUNTSelect: string;
begin
  Result := Format('SELECT COUNT(1) FROM %s', [FTabela]);

  if not(IsNull(FCondicao)) then
    Result := Format('%s WHERE %s', [Result, FCondicao]);

  FQuery.LockType := ltReadOnly;
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

procedure TTable.Start;
begin
  FillChar(FFields, sizeOf(FFields), 0);
  FillChar(FLimitField, sizeOf(FLimitField), 0);

  FCondicao := EmptyStr;
end;

procedure TTable.Init(const pTabela: string);
begin
  FTabela := pTabela;
  FUseParam := True;
  FSetFields := False;
  FSelect := esNormal;
  FCondicao := EmptyStr;
  FInsertValue := EmptyStr;
  FTables := EmptyStr;

  FillChar(FFields, sizeOf(FFields), 0);
  FillChar(FBlockList, sizeOf(FBlockList), 0);
  FillChar(FLimitField, sizeOf(FLimitField), 0);

  BlockProperty(['USU_Check', 'Check', 'Field', 'SetFields', 'Between', 'LineState']);
end;

procedure TTable.Insert();
begin
  Self.MontarEstadoInsert();
end;

procedure TTable.Last();
begin
  FQuery.Last;

  if (not(FQuery.Bof)) then
  begin
    AtribuirValoresSelect();
  end;
end;

function TTable.LiberarCampo(const pNome: string): Boolean;
var
  i: Integer;
begin
  Result := False;

  if (Length(FLimitField) > 0) then
  begin
    for i := 0 to High(FLimitField) do
    begin
      if (AnsiSameText(FLimitField[i], pNome)) then
      begin
        Result := True;
        Break;
      end;
    end;
  end;
end;

function TTable.LimitarCampos(const pNome: string): Boolean;
begin
  Result := (LiberarCampo(pNome));

  if (Length(FLimitField) = 0) then
    Result := NegarCampo(pNome)
end;

procedure TTable.Clean;
begin
  FillChar(FFields, sizeOf(FFields), 0);
  FillChar(FLimitField, sizeOf(FLimitField), 0);

  FCondicao := EmptyStr;
  FSelect := esNormal;
end;

procedure TTable.ClearFields;
var
  xType: TRttiType;
  xProperty: TRttiProperty;
  xContext: TRttiContext;
begin
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
          xProperty.SetValue(Self, emptyStr);
      else
        xProperty.SetValue(Self, emptyStr);
      end;
    end;
  end;
end;

procedure TTable.MontarEstadoInsert();
var
  xProperty: TRttiProperty;
  xCampos, xValores: string;
begin
  for xProperty in FType.GetProperties do
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

  for xProperty in FType.GetProperties do
  begin
    if NegarCampo(xProperty.Name) then
    begin
      if (AnsiSameText(UpperCase(xProperty.Name), 'USU_ID')) then
        FQuery.ParamByName(xProperty.Name).Value := GenerateID('USU_ID')
      else
        case xProperty.PropertyType.TypeKind of
          tkInteger:
            FQuery.ParamByName(xProperty.Name).Value := xProperty.GetValue(Self)
              .AsInteger;

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
end;

function TTable.MontarEstadoSelect: Boolean;
var
  xProperty: TRttiProperty;
begin
  if (FUseParam) then
    DefinirParametros();

  try
    FQuery.Prepared := True;
    FQuery.Open;
  except
    on E: Exception do
      raise;
  end;
  Result := not(FQuery.IsEmpty);

  if (Result) then
    case (FSelect) of
      esLoop, esNormal:
        AtribuirValoresSelect();

      esMAX, esMIN, esCOUNT, esSUM:
        begin
          if not(FSetFields) then
          begin
            xProperty := FType.GetProperty(FField);

            if (xProperty.PropertyType.TypeKind = tkFloat) then
              xProperty.SetValue(Self, FQuery.FindField('RETORNO').AsFloat)
            else
              xProperty.SetValue(Self, FQuery.FindField('RETORNO').AsInteger);
          end
          else
            AtribuirValoresSelect();
        end;
    end;
end;

function TTable.MAXSelect: string;
var
  xProperty: TRttiProperty;
  xCampos: string;
  xMaior: string;
begin
  xCampos := EmptyStr;
  xMaior := EmptyStr;

  if (FSetFields) then
  begin
    for xProperty in FType.GetProperties do
      if NegarCampo(xProperty.Name) then
        xCampos := xCampos + FTabela + '.' + xProperty.Name + ',';

    UltimoCaracter(xCampos, ',');
  end;

  Result := Format('SELECT MAX(%s) RETORNO FROM %s', [FField, FTabela]);

  if not(IsNull(FCondicao)) then
    Result := Format('%s WHERE %s', [Result, FCondicao]);

  if not(IsNull(xCampos)) then
  begin
    xMaior := Format('SELECT %s FROM %s', [xCampos, FTabela]);

    if not(IsNull(FCondicao)) then
      xMaior := Format('%s WHERE %s', [xMaior, FRepeatParam]);

    xMaior := xMaior + ' AND ' + FField + ' = (' + Result + ')';
    Result := xMaior;
  end;

  FQuery.LockType := ltReadOnly;
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
  xCampos: string;
begin
  for xProperty in FType.GetProperties do
    if NegarCampo(xProperty.Name) then
      xCampos := xCampos + FTabela + '.' + xProperty.Name + ',';

  UltimoCaracter(xCampos, ',');

  Result := 'SELECT ' + xCampos + ' FROM ' + FTabela;

  if not(FTables = EmptyStr) then
    Result := Result + ',' + FTables;

  if not(FCondicao = EmptyStr) then
    Result := Result + ' WHERE ' + FCondicao;
end;

function TTable.MontarEstadoUpdate(): string;
var
  xProperty: TRttiProperty;
begin
  Result := 'UPDATE ' + FTabela + ' SET ';

  for xProperty in FType.GetProperties do
    if LimitarCampos(xProperty.Name) then
      Result := Result + xProperty.Name + ' = :' + xProperty.Name + ',';

  UltimoCaracter(Result, ',');
  FQuery.Command := Result + ' WHERE ' + FCondicao;

  for xProperty in FType.GetProperties do
    if (LimitarCampos(xProperty.Name)) then
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

  if (FUseParam) then
    DefinirParametros();
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
  begin
    AtribuirValoresSelect();
  end;
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
    FQuery.Close;
end;

function TTable.Select: Boolean;
begin
  FQuery.Sql.Clear;

  case (FSelect) of
    esLoop, esNormal:
      FQuery.Command := MontarComandoSelect();

    esMAX:
      FQuery.Command := MAXSelect;

    esSUM:
      FQuery.Command := SUMSelect;

    esCOUNT:
      FQuery.Command := COUNTSelect;
  end;

  MontarComandoBetween;
  Result := MontarEstadoSelect();
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

function TTable.SetTableToRecord(const pTabela: string): THQuery;
begin
  FQuery := THQuery.CreatePersonalizado();
  FContext := TRttiContext.Create;
  FType := FContext.GetType(Self.ClassType);
  FTabela := pTabela;

  FQuery.Command := MontarComandoSelect();

  Result := FQuery;
end;

function TTable.SUMSelect: string;
begin
  Result := Format('SELECT SUM(%s) AS RETORNO FROM %s ', [FField, FTabela]);

  if not(IsNull(FCondicao)) then
    Result := Format('%s WHERE %s', [Result, FCondicao]);

  FQuery.LockType := ltReadOnly;
end;

procedure TTable.Update();
begin
  Self.MontarEstadoUpdate();
end;

{ TIterador }

constructor TIterador.Create(const pBaseClass: TClass = nil);
begin
  inherited Create;

  FBaseClass := pBaseClass;
end;

destructor TIterador.Destroy;
begin
  FreeAndNil(FIndex);

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

function TIterador.IndexOfFields(const pObj: TObject): Boolean;
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

    Result := (FIndex.IndexOf(xValor) > -1);

    if not(Result) then
      FIndex.Add(xValor);
  finally
    xContext.Free;
  end;
end;

procedure TIterador.Iterar(const pObjEntrada: TObject;
  const pObjeSaida: TObject);
var
  xContextEntrada: TRttiContext;
  xTypeEntrada: TRttiType;
  xPropertyEntrada: TRttiProperty;
  xContextSaida: TRttiContext;
  xTypeSaida: TRttiType;
  xPropertySaida: TRttiProperty;

  function EnumNameToTValue(): TValue;
  begin
    Result := xPropertyEntrada.GetValue(pObjEntrada);
    Result := TValue.FromOrdinal(Result.TypeInfo,GetEnumValue(Result.TypeInfo,
      GetEnumName(Result.TypeInfo, xPropertyEntrada.GetValue(pObjEntrada).AsOrdinal)));
  end;

begin
  xContextEntrada := TRttiContext.Create;
  try
    xContextSaida := TRttiContext.Create;

    xTypeEntrada := xContextEntrada.GetType(pObjEntrada.ClassType);
    xTypeSaida := xContextSaida.GetType(pObjeSaida.ClassType);

    for xPropertyEntrada in xTypeEntrada.GetProperties do
    begin
      for xPropertySaida in xTypeSaida.GetProperties do
      begin
        if (AllowedTypeKind(xPropertySaida.PropertyType.TypeKind)) or (AnsiSameText(xPropertySaida.Name, 'LineState')) then
          if (AnsiSameText(xPropertyEntrada.Name, xPropertySaida.Name)) then
          begin
            if (xPropertySaida.PropertyType.TypeKind = tkEnumeration) then
              xPropertySaida.SetValue(pObjeSaida, EnumNameToTValue)
            else
              xPropertySaida.SetValue(pObjeSaida,
                xPropertyEntrada.GetValue(pObjEntrada));
            Break;
          end;
      end;
    end;
  finally
    xContextEntrada.Free;
    xContextSaida.Free;
  end;
end;

procedure TIterador.IterarAdd(const pObjEntrada, pObjeSaida: TObject);
begin
  Self.Iterar(pObjEntrada, pObjeSaida);
  Self.Add(pObjeSaida);
end;

class procedure TIterador.Repassar(const pObjEntrada, pObjeSaida: TObject);
var
  xContextEntrada: TRttiContext;
  xTypeEntrada: TRttiType;
  xPropertyEntrada: TRttiProperty;
  xContextSaida: TRttiContext;
  xTypeSaida: TRttiType;
  xPropertySaida: TRttiProperty;
begin
  xContextEntrada := TRttiContext.Create;
  try
    xContextSaida := TRttiContext.Create;

    xTypeEntrada := xContextEntrada.GetType(pObjEntrada.ClassType);
    xTypeSaida := xContextSaida.GetType(pObjeSaida.ClassType);

    for xPropertyEntrada in xTypeEntrada.GetProperties do
    begin
      for xPropertySaida in xTypeSaida.GetProperties do
      begin
        if (AnsiSameText(xPropertyEntrada.Name, xPropertySaida.Name)) then
        begin
          xPropertySaida.SetValue(pObjeSaida,
            xPropertyEntrada.GetValue(pObjEntrada));
          Break;
        end;
      end;
    end;
  finally
    xContextEntrada.Free;
    xContextSaida.Free;
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
  if (Value) then
    FIndex := TStringList.Create;

  Findexed := Value;
end;

//para ser usada, a classe deve ter uma unit seperada.
procedure TIterador.ShiftValues(const pInput: TObject);
var
  xType: TRttiType;
  xProperty: TRttiProperty;
  xContext: TRttiContext;
  xNewObj: TObject;
  xClass: TPersistentClass;
begin
  xClass := GetClass(FBaseClass.ClassName);
  xNewObj := (xClass.Create) as TObject;

  xType := xContext.GetType(xNewObj.ClassType);

  for xProperty in xType.GetProperties do
  begin
    if (AllowedTypeKind(xProperty.PropertyType.TypeKind)) then
      xProperty.SetValue(xNewObj, xContext.GetType(pInput.ClassType).GetProperty(xProperty.Name).GetValue(pInput));
  end;

  Self.Add(xNewObj);
end;

{ TFilial }

constructor TFilial.Create;
begin
  inherited Create('E070FIL');
end;

destructor TFilial.Destroy;
begin
  inherited;
end;

function TFilial.GetCodEmp: Integer;
begin
  Result := FCodEmp;
end;

function TFilial.GetCodFil: Integer;
begin
  Result := FCodFil;
end;

function TFilial.GetPagDtj: Word;
begin
  Result := FPagDtj;
end;

function TFilial.GetPagDtm: Word;
begin
  Result := FPagDtm;
end;

function TFilial.GetPagJmm: Double;
begin
  Result := FPagJmm;
end;

function TFilial.GetPagMul: Double;
begin
  Result := FPagMul;
end;

function TFilial.GetPagTjr: Char;
begin
  Result := FPagTjr;
end;

function TFilial.GetPagTpm: string;
begin
  Result := FPagTpm;
end;

function TFilial.GetRecCrt: string;
begin
  Result := FRecCrt;
end;

function TFilial.GetRecPor: string;
begin
  Result := FRecPor;
end;

procedure TFilial.SetCodEmp(const pCodEmp: Integer);
begin
  FCodEmp := pCodEmp;
end;

procedure TFilial.SetCodFil(const pCodFil: Integer);
begin
  FCodFil := pCodFil;
end;

procedure TFilial.SetPagDtj(const pPagDtj: Word);
begin
  FPagDtj := pPagDtj
end;

procedure TFilial.SetPagDtm(const pPagDtm: Word);
begin
  FPagDtm := pPagDtm;
end;

procedure TFilial.SetPagJmm(const pPagJmm: Double);
begin
  FPagJmm := pPagJmm;
end;

procedure TFilial.SetPagMul(const pPagMul: Double);
begin
  FPagMul := pPagMul;
end;

procedure TFilial.SetPagTjr(const pPagTjr: Char);
begin
  FPagTjr := pPagTjr;
end;

procedure TFilial.SetPagTpm(const pPagTpm: string);
begin
  FPagTpm := pPagTpm;
end;

procedure TFilial.SetRecCrt(const pRecCrt: string);
begin
  FRecCrt := pRecCrt;
end;

procedure TFilial.SetRecPor(const pRecPor: string);
begin
  FRecPor := pRecPor;
end;

{ TListaFilial }

procedure TListaFilial.AddEmpresaFilialLogada(const pCodEmp: Integer;
  const pCodFil: Integer);
var
  xFilial: TFilial;
  xDadosFilial: TFilial;
begin
  xFilial := TFilial.Create();
  xFilial.CodEmp := pCodEmp;
  xFilial.CodFil := pCodFil;
  xFilial.PropertyForSelect(['CODEMP', 'CODFIL'], True);
  xFilial.Execute(etSelect, esLoop);

  while (xFilial.Next) do
  begin
    xDadosFilial := TFilial.Create();
    Self.Iterar(xFilial, xDadosFilial);
    Self.Add(xDadosFilial);
  end;
end;

procedure TListaFilial.AddEmpresaLogada(const pCodEmp: Integer);
var
  xFilial: TFilial;
  xDadosFilial: TFilial;
begin
  xFilial := TFilial.Create();
  xFilial.CodEmp := pCodEmp;
  xFilial.PropertyForSelect(['CODEMP'], True);
  xFilial.Execute(etSelect, esLoop);

  while (xFilial.Next) do
  begin
    xDadosFilial := TFilial.Create();
    Self.Iterar(xFilial, xDadosFilial);
    Self.Add(xDadosFilial);
  end;
end;

procedure TListaFilial.AddTodas;
var
  xFilial: TFilial;
  xDadosFilial: TFilial;
begin
  xFilial := TFilial.Create();
  xFilial.Execute(etSelect, esLoop);

  while (xFilial.Next) do
  begin
    xDadosFilial := TFilial.Create();
    Self.Iterar(xFilial, xDadosFilial);
    Self.Add(xDadosFilial);
  end;
end;

constructor TListaFilial.Create;
begin
  inherited Create();
end;

function TListaFilial.DadosFilial(const pCodEmp: Integer;
  const pCodFil: Integer): TFilial;
var
  i: Integer;
begin
  Result := nil;

  for i := 0 to pred(Self.Count) do
  begin
    if (TFilial(Self[i]).CodEmp = pCodEmp) and
      (TFilial(Self[i]).CodFil = pCodFil) then
    begin
      Result := TFilial.Create;
      Self.Iterar(TFilial(Self[i]), Result);
      Break;
    end;
  end;
end;

destructor TListaFilial.Destroy;
begin
  inherited;
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

function TTabelaPadrao.GenerateID(const pField: string): Integer;
begin
  Result := 0;
end;

procedure TTabelaPadrao.Registros_OLD;
begin
  //nada
end;

function TTabelaPadrao.TableType: tTableType;
begin
  Result := ttPadrao;
end;

{ TTabelaUsuario }

constructor TTabelaUsuario.Create(const pTabela: string);
begin
  inherited Create(pTabela);
end;

destructor TTabelaUsuario.Destroy;
begin
  inherited;
end;

function TTabelaUsuario.GenerateID(const pField: string): Integer;
var
  FQuery: THQuery;
begin
  Result := 1;

  FQuery := THQuery.CreatePersonalizado;
  try
    FQuery.Sql.Clear;
    FQuery.Sql.Add('SELECT MAX(' + pField + ') AS IDREG FROM ' + FTabela +
      iff(not(IsNull(FCondicao)), ' WHERE ' + FCondicao, EmptyStr));

    FQuery.Open;
    if not(FQuery.IsEmpty) then
      Result := FQuery.FindField('IDREG').AsInteger + 1;
    FQuery.Close;
  finally
    FreeAndNil(FQuery);
  end;
  Self.USU_ID := Result;
  Clean();
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
  FOldId := FID;
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
  FDiaDaSemana := False;
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

    if ((xLoop = 0) and (FDiaDaSemana)) then
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

procedure TData.SetData(const Value: TDate);
begin
  FData := Value;

  DecodeDate(VAlue, FAno, FMes, FDia);
end;

function TData.GetDayOfWeek: tDayOfWeek;
begin
  Result := tDayOfWeek(DayOfWeek(Data))
end;

end.
