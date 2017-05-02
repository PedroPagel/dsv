unit oBase;

interface

uses
  Data.SqlExpr, oQuery, System.Rtti, System.SysUtils, Data.DBXOracle,
  System.Contnrs, Data.DBXCommon, Data.Db, Data.DBCommon,
  Data.Win.ADODB, System.Classes, System.TypInfo;

type
  TEstadoTabela = (estInsert, estUpdate, estDelete, estSelect, estSelectLoop, estNenhum);
  TArrayOfString = array of string;
  tTitulo = (tTContasPagar, tTContasReceber);

  TTabela = class
  private
    FQuery: THQuery;
    FTabela: string;
    FValoresInsert: string;
    FListaCampos: array of string;
    FCamposLimite: array of string;
    FlistaNegacao: array of string;
    FCondicao: string;
    FTabelasExtras: string;
    FUsaParametro: Boolean;
    FContext: TRttiContext;
    FType: TRttiType;
    FCheck: Byte;

    procedure SetCheck(const Value: Byte);
    function GetCheck: Byte;

    procedure Insert();
    procedure Update();
    procedure Delete();
    procedure Limpar();
    procedure DefinirParametros();
    procedure MontarEstadoInsert();
    procedure MontarEstadoDelete();
    procedure AtribuirValoresSelect();

    function Select(): Boolean;
    function MontarEstadoUpdate(): string;
    function MontarEstadoSelect(): Boolean;
    function MontarComandoSelect(): string;
    function LiberarCampo(const pNome: string): Boolean;
    function NegarCampo(const pNome: string): Boolean;
    function LimitarCampos(const pNome: string): Boolean;
  protected
    procedure Registros_OLD(); virtual; abstract;
  public
    constructor Create(const pTabela: string);
    destructor Destroy(); override;

    procedure Iniciar();
    procedure Fechar();
    procedure AdicionarCondicao(const pCondicao: string);
    procedure DesativarUsoParametro();
    procedure DefinirTabelasExtras(const pTabelas: array of string);
    procedure DefinirCampoNegado(const pCampo: array of string);
    procedure DefinirSelecaoPropriedade(const pCampo: array of string; const pAND: Boolean = False);
    procedure DefinirCampoUpdate(const pCampo: array of string);
    procedure DefinirSelecao(const pCampo: array of string; const pValor: array of string; const pAND: Boolean = False);

    function Executar(const pEstadoTabela: TEstadoTabela): Boolean;
    function Proximo(): Boolean;
    function GerarIdentidade(const pField: string): Integer; virtual; abstract;
  public
    property Check: Byte read GetCheck write SetCheck;
  end;

  TTabelaPadrao = class(TTabela)
  protected
    procedure Registros_OLD(); override;
  public
    constructor Create(const pTabela: string);
    destructor Destroy(); override;

    function GerarIdentidade(const pField: string): Integer; override;
  end;

  TTabelaUsuario = class(TTabela)
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

    function GerarIdentidade(const pField: string): Integer; override;

    property USU_ID: Integer read GetId write SetId;
    property OLD_USU_ID: Integer read GetOldId write SetOldId;
  end;

  TOracleConnection = class
  public
    class var FOracleConnection: TADOConnection;
  end;

  TIniciarConexao = class
    class procedure Executar();
    class procedure Finalizar();
  end;

  TIterador = class(TObjectList)
  public
    function Selecionados(): Boolean;

    procedure IterarAdd(const pObjEntrada: TObject; const pObjeSaida: TObject);
    procedure Iterar(const pObjEntrada: TObject; const pObjeSaida: TObject);

    class procedure Repassar(const pObjEntrada: TObject; const pObjeSaida: TObject);
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

    function DadosFilial(const pCodEmp: Integer; const pCodFil: Integer): TFilial;
    procedure AddEmpresaLogada(const pCodEmp: Integer);
    procedure AddEmpresaFilialLogada(const pCodEmp: Integer; const pCodFil: Integer);
    procedure AddTodas();
  end;

  TListFil = class
  public
    class var FListaFilial: TListaFilial;
  end;

  procedure StartTransaction();
  procedure Commit();
  procedure RollBack;

  function iff(const pTernario: Boolean; const pParametro1, pParametro2: Variant): Variant;
  function UltimoCaracter(var pString: string; pCaracter: string; pDeletar: Boolean = True; const pCount: Integer = 1): Boolean;
  function DataNull(pData: TDate): TDateTime;
  function IsNull(const pString: string): Boolean;
  function DateTimeFormatDB(const pData: TDate): string;
  function DateTimeFormat(const pData: TDate): TDate;
  function BuscarString(const pComparar: string; const pString: array of string): Boolean;
  function FloatToDate(const pFloat: Extended): TDate;
  function AllowedTypeKind(const pType: TTypeKind): Boolean;
  function ValueToDB(const pValor: string): string;
  function TextToFloat(const pValor: string): Double;
var
  FOracleConnection: TADOConnection;
  FListaFilial: TListaFilial;
  FLogEmp: Integer;
  FLogFil: Integer;
  FLogUsu: Integer;

implementation

uses
  Winapi.Windows, Vcl.Forms, Vcl.StdCtrls, Vcl.Controls;

procedure StartTransaction();
begin
  TIniciarConexao.Executar;
  FOracleConnection.BeginTrans;
end;

procedure Commit();
begin
  FOracleConnection.CommitTrans;
  TIniciarConexao.Finalizar;
end;

procedure RollBack;
begin
  if (FOracleConnection.InTransaction) then
  begin
    FOracleConnection.RollbackTrans;
    TIniciarConexao.Finalizar;
  end;

  Abort;
end;

function iff(const pTernario: Boolean; const pParametro1, pParametro2: Variant): Variant;
begin
  if (pTernario) then
    Result := pParametro1
  else
    Result := pParametro2;
end;

function UltimoCaracter(var pString: string; pCaracter: string; pDeletar: Boolean = True; const pCount: Integer = 1): Boolean;
begin
  Result := False;

  repeat
    if (AnsiSameText(Copy(pString, (Length(pString) - (pCount - 1)), pCount), pCaracter)) then
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
  Result := ((Length(pString) = 0) or (AnsiSameText(pString,' ')));
end;


function DateTimeFormatDB(const pData: TDate): string;
begin
  Result := Format('TO_DATE(''%s'', ''DD/MM/YYYY'')', [FormatDateTime('DD/MM/YYYY', pData)]);
end;

function DateTimeFormat(const pData: TDate): TDate;
begin
  Result := StrToDateTimeDef('DD/MM/YYYY', pData);
end;

function BuscarString(const pComparar: string; const pString: array of string): Boolean;
var
  i: Integer;
begin
  Result := False;

  for i := 0 to High(pString) do
  begin
    if AnsiSameText(pComparar,pString[i]) then
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

{ TIniciarConexao }

class procedure TIniciarConexao.Executar;
begin
  FOracleConnection := TADOConnection.Create(nil);
  FOracleConnection.ConnectionString := 'Provider=MSDAORA.1;Password=senior52;User ID=senior52;Data Source=HENNDSV;Extended Properties="Unicode=True";Persist Security Info=True';
  FOracleConnection.LoginPrompt := False;
  FOracleConnection.Open('senior52','senior52');
end;

class procedure TIniciarConexao.Finalizar;
begin
  FOracleConnection.Close;
end;

{ TTabela }

procedure TTabela.AdicionarCondicao(const pCondicao: string);
begin
  FCondicao := FCondicao + EmptyStr + pCondicao;
end;

procedure TTabela.AtribuirValoresSelect;
var
  xProperty: TRttiProperty;
begin
  for xProperty in FType.GetProperties do
  begin
    if NegarCampo(xProperty.Name) then
    begin
      case xProperty.PropertyType.TypeKind of
        tkInteger:
          xProperty.SetValue(Self, FQuery.FindField(xProperty.Name).AsInteger);

        tkFloat:
          if (AnsiSameText('TDate', xProperty.PropertyType.Name)) then
            xProperty.SetValue(Self, DataNull(FQuery.FindField(xProperty.Name).AsDateTime))
          else
            xProperty.SetValue(Self, FQuery.FindField(xProperty.Name).AsFloat);
      else
        xProperty.SetValue(Self, FQuery.FindField(xProperty.Name).AsString);
      end;
    end;
  end;

  Registros_OLD();
end;

constructor TTabela.Create(const pTabela: string);
begin
  FTabela := pTabela;
  FUsaParametro := True;

  FValoresInsert := EmptyStr;
  FTabelasExtras := EmptyStr;
  FCondicao := EmptyStr;
  FillChar(FListaCampos, sizeOf(FListaCampos), 0);
  FillChar(FlistaNegacao, sizeOf(FlistaNegacao), 0);
  FillChar(FCamposLimite, sizeOf(FCamposLimite), 0);

  DefinirCampoNegado(['USU_Check','Check']);
end;

procedure TTabela.DefinirCampoNegado(const pCampo: array of string);
var
  i,j: Integer;

  procedure Aumentar(const pNome: string);
  begin
    j := Length(FlistaNegacao);
    Inc(j);
    SetLength(FlistaNegacao, j);
    FlistaNegacao[pred(j)] := pNome;
  end;

begin
  for i := 0 to High(pCampo) do
    Aumentar(pCampo[i]);

  //Aumentar('USU_ID');
end;

procedure TTabela.DefinirCampoUpdate(const pCampo: array of string);
var
  i,j: Integer;
begin
  for i := 0 to High(pCampo) do
  begin
    j := Length(FCamposLimite);
    Inc(j);
    SetLength(FCamposLimite, j);
    FCamposLimite[pred(j)] := pCampo[i];
  end;
end;

procedure TTabela.DefinirSelecaoPropriedade(const pCampo: array of string; const pAND: Boolean = False);
var
  i,j: Integer;
begin
  for i := 0 to High(pCampo) do
  begin
    j := Length(FListaCampos);
    Inc(j);
    SetLength(FListaCampos, j);
    FListaCampos[pred(j)] := pCampo[i];

    FCondicao := FCondicao + pCampo[i] + iff(FUsaParametro, ' = :', ' = ') + pCampo[i] +
      iff(pAND, ' AND ', ',');
  end;

  if (pAND) then
    UltimoCaracter(FCondicao, 'AND ', True, 4)
  else
    UltimoCaracter(FCondicao, ',');
end;

procedure TTabela.DefinirParametros;
var
  xPropriedade: TRttiProperty;
  i: Integer;
begin
  for i := 0 to High(FListaCampos) do
  begin
    xPropriedade := FType.GetProperty(FListaCampos[i]);

    case xPropriedade.PropertyType.TypeKind of
      tkInteger:
        FQuery.ParamByName(FListaCampos[i]).Value := xPropriedade.GetValue(Self).AsInteger;

      tkFloat:
      begin
        if (AnsiSameText('TDate', xPropriedade.PropertyType.Name)) then
          FQuery.ParamByName(FListaCampos[i]).Value := DataNull(FloatToDateTime(xPropriedade.GetValue(Self).AsExtended))
        else
          FQuery.ParamByName(FListaCampos[i]).Value := xPropriedade.GetValue(Self).AsExtended;
      end
    else
      FQuery.ParamByName(FListaCampos[i]).Value := xPropriedade.GetValue(Self).ToString;
    end;
  end;
end;

procedure TTabela.DefinirSelecao(const pCampo, pValor: array of string; const pAND: Boolean = False);
var
  i,j: Integer;
begin
  for i := 0 to High(pCampo) do
  begin
    j := Length(FListaCampos);
    Inc(j);
    SetLength(FListaCampos, j);
    FListaCampos[pred(j)] := pCampo[i];

    FCondicao := FCondicao + pCampo[i] + ' = ' + pValor[i] + iff(pAND, ' AND ', ',');
  end;

  if (pAND) then
    UltimoCaracter(FCondicao, 'AND ', True, 4)
  else
    UltimoCaracter(FCondicao, ',');
end;

procedure TTabela.DefinirTabelasExtras(const pTabelas: array of string);
var
  i: Integer;
begin
  for i := 0 to High(pTabelas) do
    FTabelasExtras := FTabelasExtras + pTabelas[i] + ',';

  UltimoCaracter(FTabelasExtras, ',');
end;

procedure TTabela.Delete();
begin
  MontarEstadoDelete();
end;

procedure TTabela.DesativarUsoParametro;
begin
  FUsaParametro := False;
end;

destructor TTabela.Destroy;
begin
  FContext.Free;
  FreeAndNil(FQuery);

  inherited;
end;

procedure TTabela.MontarEstadoDelete;
begin
  FQuery.Command := 'DELETE FROM '+ FTabela + ' WHERE '+ FCondicao;

  if (FUsaParametro) then
    DefinirParametros();
end;

function TTabela.Executar(const pEstadoTabela: TEstadoTabela): Boolean;
begin
  Result := False;

  FQuery := THQuery.CreatePersonalizado;
  FContext := TRttiContext.Create;
  FType := FContext.GetType(Self.ClassType);

  case (pEstadoTabela) of
    estInsert:
      Insert();

    estUpdate:
      Update();

    estSelect, estSelectLoop:
      Result := Select();

    estDelete:
      Delete();
  end;

  if (pEstadoTabela in [estInsert, estUpdate, estDelete]) then
    FQuery.ExecSQL();

  if (pEstadoTabela <> estSelectLoop) then
  begin
    FQuery.Close;
    Self.Limpar;
  end;
end;

procedure TTabela.Fechar;
begin
  FCondicao := EmptyStr;
  FQuery.Close;
  FreeAndNil(FQuery);
end;

function TTabela.GetCheck: Byte;
begin
  Result := FCheck;
end;

procedure TTabela.Iniciar;
begin
  FillChar(FListaCampos, sizeOf(FListaCampos), 0);
  FillChar(FCamposLimite, sizeOf(FCamposLimite), 0);

  FCondicao := EmptyStr;
end;

procedure TTabela.Insert();
begin
  Self.MontarEstadoInsert();
end;

function TTabela.LiberarCampo(const pNome: string): Boolean;
var
  i: Integer;
begin
  Result := False;

  if (Length(FCamposLimite) > 0) then
  begin
    for i := 0 to High(FCamposLimite) do
    begin
      if (AnsiSameText(FCamposLimite[i], pNome)) then
      begin
        Result := True;
        Break;
      end;
    end;
  end;
end;

function TTabela.LimitarCampos(const pNome: string): Boolean;
begin
  Result := (LiberarCampo(pNome));

  if (Length(FCamposLimite) = 0) then
    Result := NegarCampo(pNome)
end;

procedure TTabela.Limpar;
begin
  FillChar(FListaCampos, sizeOf(FListaCampos), 0);
  FillChar(FCamposLimite, sizeOf(FCamposLimite), 0);

  FCondicao := EmptyStr;
end;

procedure TTabela.MontarEstadoInsert();
var
  xProperty : TRttiProperty;
  xCampos, xValores: string;
begin
  for xProperty in FType.GetProperties do
  begin
    if NegarCampo(xProperty.Name) then
    begin
      xCampos := xCampos + xProperty.Name +  ',';
      xValores := xValores +  ':' + xProperty.Name +  ',';
    end;
  end;

  UltimoCaracter(xCampos, ',');
  UltimoCaracter(xValores, ',');

  FQuery.Sql.Clear;
  FQuery.Command := 'INSERT INTO '+ FTabela +' ('+ xCampos +') VALUES ('+ xValores +')';

  for xProperty in FType.GetProperties do
  begin
    if NegarCampo(xProperty.Name) then
    begin
      if (AnsiSameText(UpperCase(xProperty.Name), 'USU_ID')) then
        FQuery.ParamByName(xProperty.Name).Value := GerarIdentidade('USU_ID')
      else
      case xProperty.PropertyType.TypeKind of
        tkInteger:
          FQuery.ParamByName(xProperty.Name).Value := xProperty.GetValue(Self).AsInteger;

        tkFloat:
        begin
          if (AnsiSameText('TDate', xProperty.PropertyType.Name)) then
            FQuery.ParamByName(xProperty.Name).Value := FloatToDateTime((xProperty.GetValue(Self).AsExtended))
          else
            FQuery.ParamByName(xProperty.Name).Value := xProperty.GetValue(Self).AsExtended;
        end
      else
        FQuery.ParamByName(xProperty.Name).Value := xProperty.GetValue(Self).ToString;
      end;
    end;
  end;
end;

function TTabela.MontarEstadoSelect: Boolean;
begin
  if (FUsaParametro) then
    DefinirParametros();

  FQuery.Open;
  Result := not(FQuery.IsEmpty);

  if (Result) then
    AtribuirValoresSelect();
end;

function TTabela.MontarComandoSelect: string;
var
  xProperty: TRttiProperty;
  xCampos: string;
begin
  for xProperty in FType.GetProperties do
    if NegarCampo(xProperty.Name) then
      xCampos := xCampos + FTabela + '.' + xProperty.Name + ',';

  UltimoCaracter(xCampos, ',');

  Result := 'SELECT '+ xCampos + ' FROM ' + FTabela;

  if not(FTabelasExtras = EmptyStr) then
    Result := Result + ',' + FTabelasExtras;

  if not(FCondicao = EmptyStr) then
    Result := Result + ' WHERE ' + FCondicao;
end;

function TTabela.MontarEstadoUpdate(): string;
var
  xProperty: TRttiProperty;
begin
  Result := 'UPDATE '+ FTabela + ' SET ';

  for xProperty in FType.GetProperties do
    if LimitarCampos(xProperty.Name) then
      Result := Result + xProperty.Name +' = :'+ xProperty.Name + ',';

  UltimoCaracter(Result, ',');
  FQuery.Command := Result + ' WHERE '+ FCondicao;

  for xProperty in FType.GetProperties do
    if (LimitarCampos(xProperty.Name)) then
      case xProperty.PropertyType.TypeKind of
        tkInteger:
          FQuery.ParamByName(xProperty.Name).Value := xProperty.GetValue(Self).AsInteger;

        tkFloat:
        begin
          if (AnsiSameText('TDate', xProperty.PropertyType.Name)) then
            FQuery.ParamByName(xProperty.Name).Value := DataNull(FloatToDate(xProperty.GetValue(Self).AsExtended))
          else
            FQuery.ParamByName(xProperty.Name).Value := xProperty.GetValue(Self).AsExtended;
        end;
      else
        FQuery.ParamByName(xProperty.Name).Value := xProperty.GetValue(Self).ToString;
      end;

  if (FUsaParametro) then
    DefinirParametros();
end;

function TTabela.NegarCampo(const pNome: string): Boolean;
var
  i: Integer;
begin
  Result := True;

  if (AnsiSameText(UpperCase(Copy(pNome, 0, 4)), 'OLD_')) then
    Result := False
  else
  begin
    for i := 0 to High(FlistaNegacao) do
    begin
      if (AnsiSameText(FlistaNegacao[i], pNome)) then
      begin
        Result := False;
        Break;
      end;
    end;
  end;
end;

function TTabela.Proximo(): Boolean;
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

function TTabela.Select: Boolean;
begin
  FQuery.SQL.Clear;
  FQuery.Command := MontarComandoSelect();
  Result :=  MontarEstadoSelect();
end;

procedure TTabela.SetCheck(const Value: Byte);
begin
  FCheck := Value;
end;

procedure TTabela.Update();
begin
  Self.MontarEstadoUpdate();
end;

{ TIterador }

procedure TIterador.Iterar(const pObjEntrada: TObject; const pObjeSaida: TObject);
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
        if (AllowedTypeKind(xPropertySaida.PropertyType.TypeKind)) then
          if (AnsiSameText(xPropertyEntrada.Name, xPropertySaida.Name)) then
          begin
            xPropertySaida.SetValue(pObjeSaida, xPropertyEntrada.GetValue(pObjEntrada));
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
          xPropertySaida.SetValue(pObjeSaida, xPropertyEntrada.GetValue(pObjEntrada));
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
    Result := (TTabela(Self[i]).Check = 1);

    if (Result) then
      Break;
  end;
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

procedure TListaFilial.AddEmpresaFilialLogada(const pCodEmp: Integer; const pCodFil: Integer);
var
  xFilial: TFilial;
  xDadosFilial: TFilial;
begin
  xFilial := TFilial.Create();
  xFilial.CodEmp := pCodEmp;
  xFilial.CodFil := pCodFil;
  xFilial.DefinirSelecaoPropriedade(['CODEMP', 'CODFIL'], True);
  xFilial.Executar(estSelectLoop);

  while (xFilial.Proximo) do
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
  xFilial.DefinirSelecaoPropriedade(['CODEMP'], True);
  xFilial.Executar(estSelectLoop);

  while (xFilial.Proximo) do
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
  xFilial.DesativarUsoParametro;
  xFilial.Executar(estSelectLoop);

  while (xFilial.Proximo) do
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

function TListaFilial.DadosFilial(const pCodEmp: Integer; const pCodFil: Integer): TFilial;
var
  i: Integer;
begin
  Result := nil;

  for i := 0 to pred(Self.Count) do
  begin
    if (TFilial(Self[i]).CodEmp = pCodEmp) and (TFilial(Self[i]).CodFil = pCodFil) then
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

  DefinirCampoNegado(['ID','USU_ID']);
end;

destructor TTabelaPadrao.Destroy;
begin
  inherited;
end;

function TTabelaPadrao.GerarIdentidade(const pField: string): Integer;
begin
  Result := 0;
end;

procedure TTabelaPadrao.Registros_OLD;
begin
  //todo
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

function TTabelaUsuario.GerarIdentidade(const pField: string): Integer;
var
  FQuery: THQuery;
begin
  Result := 1;

  FQuery := THQuery.CreatePersonalizado;
  try
    FQuery.SQL.Clear;
    FQuery.SQL.Add('SELECT MAX('+ pField +') AS IDREG FROM '+ FTabela + iff(not(IsNull(FCondicao)),
      ' WHERE '+ FCondicao, EmptyStr));

    FQuery.Open;
    if not(FQuery.IsEmpty) then
      Result := FQuery.FindField('IDREG').AsInteger + 1;
    FQuery.Close;
  finally
    FreeAndNil(FQuery);
  end;
  Self.USU_ID := Result;
  Limpar();
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

end.
