unit oDataSetGrid;

interface

uses
  Vcl.Controls, Vcl.Grids, Data.SqlExpr, System.SysUtils, oQuery,
  System.TypInfo, Data.DB, Data.Win.ADODB, Datasnap.DBClient, Vcl.DBGrids, System.Rtti,
  System.Classes, Vcl.DBCtrls, Winapi.Windows, Vcl.Forms;

type
  TEnterLine = procedure(Sender: TObject) of Object;
  TChangeData = procedure(Sender: TObject) of Object;
  TCheckMethod = (cmNone, cmExit, cmChange, cmEnter, cmClick);
  TProcedure = procedure() of Object;

  TGridState = (gsBrowse, gsInsert, gsEdit,
                gsNone, gsOnEnter, gsOnExit,
                gsNewValue, gsCallCheck);

  TDataSetGrid = class(TDBGrid)
  private
    FFiedList: string;
    FTable: string;
    FFilter: string;
    FIndexFields: string;
    FCount: Integer;
    FAllowNewLine: Boolean;
    FColumn: Integer;
    FUser: Boolean;
    FOldLine: Integer;
    FOldEnterLine: Integer;
    FOldColumn: Integer;
    FOldValue: Variant;
    FNewLine: Integer;
    FChangeLine: Boolean;

    FForm: TForm;
    FQueryField: THQuery;
    FClientDataSet: TClientDataSet;
    FContext: TRttiContext;
    FCheckList: TStringList;

    FGridState: TGridState;
    FFieldState: TGridState;
    FEnterLine: TEnterLine;

    function FieldType(const pColumnType: string; const pMask: string; const pSize: Integer): TFieldType;
    function DesmontaID(const pString: string): string;
    function GetAllowNewLine: Boolean;

    procedure Check(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SetFields(const pField: string; const pType: TFieldType; const pLenFld: Integer = 0);
    procedure GridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CheckMethod(const pField: string; const pCheckMethod: TCheckMethod);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure ChangeData(Sender: TObject; Field: TField);
    procedure SetAllowNewLine(const Value: Boolean);
    procedure CheckClick(Column: TColumn);
    procedure EnterGrid(Sender: TObject);
    procedure ExitGrid(Sender: TObject);
    procedure EnterCol(Sender: TObject);
    procedure CallCheck();
  public
    procedure AddColumn(const pName, pDesc: string; const pType: TFieldType; const pStringSize: Integer = 0; const pCheck: Boolean = False);
    procedure Init(const pTable: string; const pUsu: Boolean; const pForm: TForm; const pIndexFields: string = ''; const pFilter: string = '');
    procedure Finalize();

    procedure CreateDataSet();
    procedure AddFields(const pObj: TObject);
    procedure ShowSearch();
    procedure Add();
    procedure Clear();
    procedure Edit();
    procedure Post();
    procedure First();
    procedure Next();
    procedure ReadOnly(const pField: string; pValue: Boolean);
    procedure Visible(const pField: string; pValue: Boolean);
    procedure NumericField(const pField: string; const pMask: string);
    procedure CheckFields(const pField: string; const pValue: Integer);

    function Eof: Boolean;
    function Count: Integer;
    function Line: Integer;
    function FindField(const pFieldName: string): TField;
    function Selected(const pField: string): Variant;
  published
    property OnEnterLine: TEnterLine read FEnterLine write FEnterLine;
    property AllowNewLine: Boolean read GetAllowNewLine write SetAllowNewLine;
  end;

procedure Register;

implementation

uses
  oBase;

procedure Register;
begin
  RegisterComponents('Samples', [TDataSetGrid]);
end;

{ TDataSetGrid }

procedure TDataSetGrid.Init(const pTable: string; const pUsu: Boolean; const pForm: TForm; const pIndexFields: string = ''; const pFilter: string = '');
begin
  FQueryField := THQuery.CreatePersonalizado();
  FClientDataSet := TClientDataSet.Create(nil);
  FCheckList := TStringList.Create;
  FContext := TRttiContext.Create;

  FTable := pTable;
  FForm := pForm;
  FIndexFields := pIndexFields;
  FUser := pUsu;

  FFiedList := EmptyStr;
  FFilter := pFilter;
  FColumn := 0;
  FCount := 0;
  FChangeLine := False;

  FClientDataSet.Close;
  FClientDataSet.FieldDefs.Clear;

  Self.OnDrawColumnCell := Check;
  Self.OnCellClick := CheckClick;
  Self.OnKeyDown := GridKeyDown;
  Self.OnEnter := EnterGrid;
  Self.OnExit := ExitGrid;
  Self.OnKeyPress := GridKeyPress;
  Self.OnColEnter := EnterCol;
end;

function TDataSetGrid.Line: Integer;
begin
  Result := FClientDataSet.RecNo;
end;

procedure TDataSetGrid.Next;
begin
  FClientDataSet.Next;
end;

procedure TDataSetGrid.NumericField(const pField: string; const pMask: string);
begin
  TNumericField(FClientDataSet.FieldByName(pField)).DisplayFormat := ','+ pMask +';-,'+ pMask;
end;

procedure TDataSetGrid.Edit;
begin
  FClientDataSet.Edit;
end;

procedure TDataSetGrid.EnterGrid(Sender: TObject);
begin
  FFieldState := gsOnEnter;
  FOldLine := 0;
  FOldColumn := 0;
  FOldEnterLine := FClientDataSet.RecNo;
end;

procedure TDataSetGrid.Post;
begin
  FClientDataSet.Post;
end;

procedure TDataSetGrid.ReadOnly(const pField: string; pValue: Boolean);
var
  i: Integer;
begin
  for i := 0 to pred(Self.ColCount) do
  begin
    if AnsiSameText(Self.Columns[i].FieldName, pField) then
    begin
      Self.Columns[i].ReadOnly := pValue;
      Break;
    end;
  end;
end;

procedure TDataSetGrid.CallCheck;
begin
  FFieldState := gsBrowse;
  if (FOldValue <> Self.Columns[pred(FOldColumn)].Field.Value) then
  begin
    FOldValue := Self.Columns[pred(FOldColumn)].Field.Value;
    CheckMethod(Self.Columns[pred(FOldColumn)].FieldName, cmChange);
  end;

  if (FChangeLine) then
    if (FOldLine <> FNewLine) then
    begin
      FChangeLine := False;
      FClientDataSet.RecNo := FNewLine;
    end;
end;

procedure TDataSetGrid.ChangeData(Sender: TObject; Field: TField);
begin
  if (FGridState = gsBrowse) then
  begin
    if Assigned(FEnterLine) then
      if (FOldEnterLine <> FClientDataSet.RecNo) then
      begin
        FEnterLine(Self);
        FOldEnterLine := FClientDataSet.RecNo;
      end;

    if ((FOldLine <> FClientDataSet.RecNo) and (FFieldState = gsNewValue)) then
    begin
      FChangeLine := True;
      FNewLine := FClientDataSet.RecNo;
      FFieldState := gsCallCheck;

      //Passado outro FS, pois o RecNo ira chamar o ChangeData
      FClientDataSet.RecNo := FOldLine;
    end;

    if (FFieldState = gsCallCheck) then
      CallCheck();
  end;

  FGridState := gsBrowse;
end;

function TDataSetGrid.Eof: Boolean;
begin
  Result := FClientDataSet.Eof;

  if not(Result) then
    FClientDataSet.Edit;
end;

procedure TDataSetGrid.EnterCol(Sender: TObject);
begin
  if (FOldColumn <> Col) and (FFieldState = gsNewValue) then
    CallCheck();

  if (FFieldState = gsOnEnter) or (FFieldState = gsNewValue) then
    FOldValue := Self.Columns[pred(Col)].Field.Value;
end;

procedure TDataSetGrid.ExitGrid(Sender: TObject);
begin
  FFieldState := gsOnExit;
end;

procedure TDataSetGrid.AddFields(const pObj: TObject);
var
  xType: TRttiType;
  xProperty: TRttiProperty;
begin
  xType := FContext.GetType(pObj.ClassType);

  for xProperty in xType.GetProperties do
    if (xProperty.PropertyType.TypeKind in [tkInteger, tkFloat, tkString, tkUString, tkWChar, tkWString]) then
      if not(BuscarString('ID', [DesmontaID(xProperty.Name)])) then
      begin
        FGridState := gsInsert;

        if (Assigned(FClientDataSet.FindField(iff(FUser, 'USU_', EmptyStr) + xProperty.Name))) then
          FClientDataSet.FindField(iff(FUser, 'USU_', EmptyStr) + xProperty.Name).AsVariant := xProperty.GetValue(pObj).AsVariant;
      end;

  FGridState := gsInsert;
  FClientDataSet.Post;
  Inc(FCount);
end;

function TDataSetGrid.FieldType(const pColumnType, pMask: string; const pSize: Integer): TFieldType;

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
    Result := iff(IsNumber(UpperCase(pMask)), iff(pSize >= 10, ftBCD, ftLargeint), ftFloat);
end;

function TDataSetGrid.FindField(const pFieldName: string): TField;
begin
  FClientDataSet.Edit;
  Result := FClientDataSet.FindField(pFieldName);
end;

procedure TDataSetGrid.Finalize;
begin
  if Assigned(FClientDataSet) then
  begin
    Clear;
    FClientDataSet.FieldDefs.Clear;
    FreeAndNil(FClientDataSet);
  end;

  FContext.Free;
  FreeAndNil(FQueryField);
  FreeAndNil(FCheckList);
end;

procedure TDataSetGrid.First;
begin
  FClientDataSet.First;
end;

function TDataSetGrid.GetAllowNewLine: Boolean;
begin
  Result := FAllowNewLine;
end;

procedure TDataSetGrid.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key in [VK_DOWN]) then
    if not(FAllowNewLine) and (FClientDataSet.RecNo = FClientDataSet.RecordCount) then
      Abort;

  if (Key = 9) then
  begin
    Abort;

    if (Col = pred(ColCount)) and (Row < pred(RowCount)) then
    begin
      if (pred(RowCount) >= 1) then
      begin
        Row := Row + 1;
        Col := 1;
      end
      else
        Abort;
    end
    else
    if (Col < pred(ColCount)) then
      Col := Col + 1;

    if (Row = pred(RowCount)) and (Col = pred(ColCount)) then
      Abort;
  end;
end;

procedure TDataSetGrid.GridKeyPress(Sender: TObject; var Key: Char);

  procedure NewValue();
  var
    xReadOnly: Boolean;
  begin
    Self.Refresh;
    xReadOnly := Self.Columns[pred(Col)].ReadOnly;

    if not(xReadOnly) then
      FOldValue := Self.Columns[pred(Col)].Field.Value;

    FOldColumn := Col;
    FOldLine := FClientDataSet.RecNo;
    FFieldState := iff(xReadOnly, gsBrowse, gsNewValue);
  end;

begin
  if (FClientDataSet.FieldDefs[Col].DataType in [ftWord, ftCurrency, ftLargeint, ftBCD,
    ftBytes, ftByte, ftLongWord, ftShortint, ftExtended, ftSmallint, ftInteger, ftFloat]) then
  begin
    if not(CharInSet(key, ['0'..'9',',',#8])) then
    begin
      key := #0;
      FFieldState := gsBrowse;
    end
    else
      NewValue();
  end
  else
  if (FClientDataSet.FieldDefs[Col].DataType in [ftFixedChar, ftString, ftWideString]) then
  begin
    if not(CharInSet(key, ['A'..'Z','a'..'z'])) then
    begin
        Key := #0;
        FFieldState := gsBrowse;
    end
    else
      NewValue();
  end
  else
  if (FClientDataSet.FieldDefs[Col].DataType in [ftDate, ftDateTime]) then
  begin
    if not(CharInSet(key, ['0'..'9',',',#8])) then
    begin
      key := #0;
      FFieldState := gsBrowse;
    end
    else
      NewValue();
  end;
end;

function TDataSetGrid.DesmontaID(const pString: string): string;
var
  xUsuario: Boolean;
begin
  xUsuario := (AnsiSameText('USU_', Copy(pString, 1, 4)));
  Result := Copy(pString, Integer(iff(xUsuario, 5, 1)), 2);
end;

procedure TDataSetGrid.Check(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  i: Integer;
  xRec: TRect;
  xCheck: Integer;
begin
  if (Assigned(FCheckList)) then
  begin
    for i := 0 to pred(FCheckList.Count) do
    begin
      if AnsiSameText(Column.FieldName,FCheckList[i]) then
      begin
        Self.Canvas.FillRect(Rect);
        xCheck := iff(FClientDataSet.FieldByName(Column.FieldName).AsInteger = 1, DFCS_CHECKED, 0);

        xRec := Rect;
        InflateRect(xRec,-2,-2);
        DrawFrameControl(Self.Canvas.Handle,xRec,DFC_BUTTON, DFCS_BUTTONCHECK or xCheck);
      end;
    end;
  end;
end;

procedure TDataSetGrid.CheckClick(Column: TColumn);
var
  i: Integer;
begin
  if (Assigned(FCheckList)) then
    for i := 0 to pred(FCheckList.Count) do
    begin
      if AnsiSameText(Column.FieldName,FCheckList[i]) then
      begin
        FClientDataSet.Edit;
        FClientDataSet.FieldByName(Column.FieldName).AsInteger := iff(FClientDataSet.FieldByName(Column.FieldName).AsInteger = 0, 1, 0);
        FClientDataSet.Post;
        CheckMethod(Column.FieldName, cmClick);
      end;
    end;
end;

procedure TDataSetGrid.CheckFields(const pField: string; const pValue: Integer);
begin
  Self.First();
  while not(Self.Eof) do
  begin
    Self.FindField(pField).AsInteger := pValue;
    Self.Post();
    Self.Next
  end;

  Self.First;
end;

procedure TDataSetGrid.CheckMethod(const pField: string; const pCheckMethod: TCheckMethod);
var
  xType: TRttiType;
  xMethod: TMethod;
  xProcedure: TProcedure;
  xRttiMethod: TRttiMethod;
  xCheck: string;
begin
  case (pCheckMethod) of
    cmExit:
      xCheck := 'Exit';

    cmChange:
      xCheck := 'Change';

    cmEnter:
      xCheck := 'Enter';

    cmClick:
      xCheck := 'Click';
  end;

  xType := FContext.GetType(FForm.ClassType);
  xRttiMethod :=  xType.GetMethod(Self.Name + pField + xCheck);

  if Assigned(xRttiMethod) then
  begin
    xMethod.Data := Pointer(FForm);
    xMethod.Code := FForm.MethodAddress(xRttiMethod.Name);

    if Assigned(xMethod.Code) then
    begin
      xProcedure := TProcedure(xMethod);
      xProcedure;
    end;
  end;
end;

procedure TDataSetGrid.Clear;
begin
  FGridState := gsNone;
  FClientDataSet.EmptyDataSet;
  FCount := 0;
end;

function TDataSetGrid.Count: Integer;
begin
  Result := FCount;
end;

procedure TDataSetGrid.CreateDataSet();
var
  xQuery: THQuery;
  xCampo: string;
begin
  xQuery := THQuery.CreatePersonalizado();

  Self.DataSource := TDataSource.Create(nil);
  Self.DataSource.DataSet := FQueryField;

  xQuery.Command := 'SELECT R998FLD.TBLNAM, R998FLD.FLDNAM, R998FLD.FLDORD,' +
                           'R998FLD.MSKFLD, R998FLD.DATTYP, R998FLD.ENUNAM,' +
                           'R998FLD.LENFLD, R998FLD.PREFLD, R998FLD.SHRTIT,' +
                           'R998FLD.LGNTIT, R998FLD.DESFLD, R998FLD.CANNUL,' +
                           'R998FLD.CODHLP, R998FLD.VALDEF, R998FLD.OWNMOD,' +
                           'R998FLD.FLDDEP, R998FLD.CODUSU, R998FLD.ORINAM,' +
                           'R998FLD.LASUPD, R998FLD.REQFLD, R998FLD.OBJSIS,' +
                           'ALL_TAB_COLUMNS.DATA_TYPE AS TYPE FROM ' +
                      'R998FLD, ALL_TAB_COLUMNS ' +
                      'WHERE ' +
                      'UPPER(TABLE_NAME)= :TABELA AND ' +
                      'OWNER = :BASE AND ' +
                      'R998FLD.TBLNAM = TABLE_NAME AND ' +
                      'UPPER(R998FLD.FLDNAM) = ALL_TAB_COLUMNS.COLUMN_NAME ' +
                      ' ORDER BY ALL_TAB_COLUMNS.COLUMN_ID ';

  xQuery.ParamByName('TABELA').Value := FTable;
  xQuery.ParamByName('BASE').Value := 'SENIOR52';
  xQuery.Open;
  while not(xQuery.Eof) do
  begin
    xCampo := xQuery.FindField('FLDNAM').AsString;

    if not(BuscarString('ID', [DesmontaID(xCampo)])) then
    begin
      Self.Columns.Add;
      Self.Columns[FColumn].FieldName := xCampo;
      Self.Columns[FColumn].Title.Caption := xQuery.FindField('LGNTIT').AsString;
      Self.Columns[FColumn].ReadOnly := True;
      Inc(FColumn);
    end;

    SetFields(xCampo, (FieldType(xQuery.FindField('TYPE').AsString, xQuery.FindField('MSKFLD').AsString,
                    xQuery.FindField('LENFLD').AsInteger)), xQuery.FindField('LENFLD').AsInteger);
    xQuery.Next;
  end;

  xQuery.Close;
  UltimoCaracter(FFiedList, ',');

  FClientDataSet.CreateDataSet;
  FClientDataSet.IndexFieldNames := FIndexFields;
  Self.DataSource.DataSet := FClientDataSet;
  Self.DataSource.OnDataChange := ChangeData;
end;

function TDataSetGrid.Selected(const pField: string): Variant;
begin
  Result := FClientDataSet.FindField(pField).AsVariant;
end;

procedure TDataSetGrid.SetAllowNewLine(const Value: Boolean);
begin
  FAllowNewLine := Value;
end;

procedure TDataSetGrid.SetFields(const pField: string; const pType: TFieldType; const pLenFld: Integer = 0);
begin
  if (pType in [ftBCD, ftFloat, ftString, ftDateTime, ftLargeint, ftInteger, ftBoolean]) then
  begin
    FFiedList := FFiedList + pField + ',';

    if (pType = ftString) then
      FClientDataSet.FieldDefs.Add(pField, ftString, pLenFld)
    else
      FClientDataSet.FieldDefs.Add(pField, pType);
  end;
end;

procedure TDataSetGrid.ShowSearch;
var
  i: Integer;
begin
  FQueryField.Command := Format('SELECT %s FROM %s', [FFiedList, FTable]) + iff(not(IsNull(FFilter)), ' WHERE ' + FFilter, EmptyStr);
  FQueryField.Open;
  while not(FQueryField.Eof) do
  begin
    Self.Add;

    for i := 0 to pred(FClientDataSet.FieldDefList.Count) do
      FClientDataSet.FieldByName(FClientDataSet.FieldDefList[i].Name).AsVariant := FQueryField.FindField(FClientDataSet.FieldDefList[i].Name).AsVariant;

    Self.Refresh;
    FQueryField.Next;
  end;
end;

procedure TDataSetGrid.Visible(const pField: string; pValue: Boolean);
var
  i: Integer;
begin
  for i := 0 to pred(Self.ColCount) do
  begin
    if AnsiSameText(Self.Columns[i].FieldName, pField) then
    begin
      Self.Columns[i].Visible := pValue;
      Break;
    end;
  end;
end;

procedure TDataSetGrid.Add;
begin
  FGridState := gsInsert;
  FClientDataSet.Append;
end;

procedure TDataSetGrid.AddColumn(const pName, pDesc: string; const pType: TFieldType; const pStringSize: Integer = 0; const pCheck: Boolean = False);
begin
  Self.Columns.Add;
  Self.Columns[FColumn].FieldName := pName;
  Self.Columns[FColumn].Title.Caption := pDesc;
  Self.Columns[FColumn].Width := Length(pDesc) + iff(pCheck, 30, 100);
  Self.Columns[FColumn].Alignment := taCenter;
  Inc(FColumn);

  if (pCheck) then
    FCheckList.Add(pName);

  SetFields(pName, pType, pStringSize);
end;

end.