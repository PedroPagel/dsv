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
    FFieldList: string;
    FTable: string;
    FFilter: string;
    FIndexFields: string;
    FCount: Integer;
    FAllowNewLine: Boolean;
    FColumn: Integer;
    FOldLine: Integer;
    FOldEnterLine: Integer;
    FOldColumn: Integer;
    FOldValue: Variant;
    FNewLine: Integer;
    FChangeLine: Boolean;
    FBackSpace: Boolean;
    FLike: Boolean;

    FForm: TForm;
    FQueryField: THQuery;
    FClientDataSet: TClientDataSet;
    FContext: TRttiContext;
    FCheckList: TStringList;
    FReadOnlyList: TStringList;

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
    procedure ExitCol(Sender: TObject);
    procedure CallCheck();
    procedure CreateFieldOrder(const pIndexFields: string);
  protected
    procedure ActionChange(Sender: TObject; CheckDefaults: Boolean); override;
  public
    procedure AddColumn(const pName, pDesc: string; const pType: TFieldType; const pStringSize: Integer = 0; const pCheck: Boolean = False);
    procedure Init(const pTable: string; const pForm: TForm; const pIndexFields: string = ''; const pFilter: string = '');
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
    procedure Filter(const pValue: Variant; const pField: string; const pDo: Boolean);
    procedure OrderBy(const pField: string; const pASC: Boolean);

    function Eof: Boolean;
    function Count: Integer;
    function Line: Integer;
    function FindField(const pFieldName: string): TField;
    function Selected(const pField: string): Variant;
    function GridTitleClick(): Boolean;

    property Like: Boolean read FLike write FLike;
  published
    property OnEnterLine: TEnterLine read FEnterLine write FEnterLine;
    property AllowNewLine: Boolean read GetAllowNewLine write SetAllowNewLine;
  end;

procedure Register;

implementation

uses
  oBase, oMensagem, System.Variants;

procedure Register;
begin
  RegisterComponents('Samples', [TDataSetGrid]);
end;

{ TDataSetGrid }

procedure TDataSetGrid.Init(const pTable: string; const pForm: TForm; const pIndexFields: string = ''; const pFilter: string = '');
begin
  FQueryField := THQuery.CreatePersonalizado();
  FClientDataSet := TClientDataSet.Create(nil);
  FCheckList := TStringList.Create;
  FReadOnlyList := TStringList.Create;
  FContext := TRttiContext.Create;

  FTable := pTable;
  FForm := pForm;

  FFieldList := EmptyStr;
  FFilter := pFilter;
  FColumn := 0;
  FCount := 0;
  FChangeLine := False;
  FBackSpace := False;

  FClientDataSet.Close;
  FClientDataSet.FieldDefs.Clear;

  Self.OnDrawColumnCell := Check;
  Self.OnCellClick := CheckClick;
  Self.OnKeyDown := GridKeyDown;
  Self.OnEnter := EnterGrid;
  Self.OnExit := ExitGrid;
  Self.OnKeyPress := GridKeyPress;
  Self.OnColEnter := EnterCol;
  Self.OnColExit := ExitCol;

  CreateFieldOrder(pIndexFields);
end;

function TDataSetGrid.Line: Integer;
begin
  Result := Self.DataSource.DataSet.RecNo;
end;

procedure TDataSetGrid.Next;
begin
  Self.DataSource.DataSet.Next;
end;

procedure TDataSetGrid.NumericField(const pField: string; const pMask: string);
begin
  TNumericField(FClientDataSet.FieldByName(pField)).DisplayFormat := ','+ pMask +';-,'+ pMask;
end;

procedure TDataSetGrid.OrderBy(const pField: string; const pASC: Boolean);
var
  xQuery: THQuery;
begin
  Self.DataSource.DataSet := FClientDataSet;

  if (pASC) then
  begin
    FClientDataSet.IndexFieldNames := pField;
    FClientDataSet.First;
  end
  else
  begin
    xQuery := THQuery.CreatePersonalizado();
    xQuery.Command := Format('SELECT %s FROM %s WHERE %s ORDER BY %s %s',
        [FFieldList, FTable, FFilter, pField, iff(pASC, 'ASC','DESC')]);
    xQuery.Open;

    Self.DataSource.DataSet := xQuery;
  end;
end;

procedure TDataSetGrid.Edit;
begin
  Self.DataSource.DataSet.Edit;
end;

procedure TDataSetGrid.EnterGrid(Sender: TObject);
var
  i: Integer;
begin
  FFieldState := gsOnEnter;
  FOldLine := 0;
  FOldColumn := 0;
  FOldEnterLine := Self.DataSource.DataSet.RecNo;

  for i := 0 to pred(FReadOnlyList.Count) do
  begin
    if (Self.SelectedField.FieldName = FReadOnlyList[i]) then
    begin
      Self.Options := Self.Options + [dgEditing];
      Break;
    end
    else
      Self.Options := Self.Options - [dgEditing];
  end;
end;

procedure TDataSetGrid.Post;
begin
  Self.DataSource.DataSet.Post;
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

      if (AnsiSameText(UpperCase(pField), 'CHECK')) then
        CMessage('Campo tipo CHECK n�o pode ser definido como ReadOnly', mtExceptError);

      if (pValue = False) then
        FReadOnlyList.Add(pField);

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
      Self.DataSource.DataSet.RecNo := FNewLine;
    end;
end;

procedure TDataSetGrid.ChangeData(Sender: TObject; Field: TField);
begin
  if (FGridState = gsBrowse) then
  begin
    if Assigned(FEnterLine) then
      if (FOldEnterLine <> Self.DataSource.DataSet.RecNo) then
      begin
        FEnterLine(Self);
        FOldEnterLine := Self.DataSource.DataSet.RecNo;
      end;

    if ((FOldLine <> Self.DataSource.DataSet.RecNo) and (FFieldState = gsNewValue)) then
    begin
      FChangeLine := True;
      FNewLine := Self.DataSource.DataSet.RecNo;
      FFieldState := gsCallCheck;

      //Passado outro FS, pois o RecNo ira chamar o ChangeData
      Self.DataSource.DataSet.RecNo := FOldLine;
    end;


    if (FBackSpace) and (FOldLine <> Self.DataSource.DataSet.RecNo) then
    begin
      FChangeLine := True;
      ExitCol(Self);
    end;

    if (FFieldState = gsCallCheck) then
      CallCheck();
  end;

  FGridState := gsBrowse;
end;

function TDataSetGrid.Eof: Boolean;
begin
  Result := Self.DataSource.DataSet.Eof;

  if not(Result) then
    Self.DataSource.DataSet.Edit;
end;

procedure TDataSetGrid.EnterCol(Sender: TObject);
var
  i: Integer;
begin
  if (FOldColumn <> Col) and (FFieldState = gsNewValue) then
    CallCheck();

  if (FFieldState = gsOnEnter) or (FFieldState = gsNewValue) then
    FOldValue := Self.Columns[pred(Col)].Field.Value;

  for i := 0 to pred(FReadOnlyList.Count) do
  begin
    if (Self.SelectedField.FieldName = FReadOnlyList[i]) then
    begin
      Self.Options := Self.Options + [dgEditing];
      Break;
    end
    else
      Self.Options := Self.Options - [dgEditing];
  end;
end;

procedure TDataSetGrid.ExitCol(Sender: TObject);
begin
  if (FBackSpace) then
  begin
    FBackSpace := False;

    if (VarIsNull(Self.Columns[FOldColumn].Field.Value)) or (FChangeLine) then
      if (FOldLine <> Self.DataSource.DataSet.RecNo) then
      begin
        FChangeLine := False;
        FNewLine := Self.DataSource.DataSet.RecNo;
        Self.DataSource.DataSet.RecNo := FOldLine;

        Self.DataSource.DataSet.Edit;
        Self.Columns[FOldColumn].Field.Value := FOldValue;
        Self.DataSource.DataSet.RecNo := FNewLine;
      end
      else
        Self.Columns[FOldColumn].Field.Value := FOldValue;
  end;
end;

procedure TDataSetGrid.ExitGrid(Sender: TObject);
begin
  if (FFieldState = gsNewValue) then
    CallCheck();

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
      if not(BuscarString('ID', [DesmontaID(xProperty.Name)])) and not(AnsiSameText(UpperCase(Copy(xProperty.Name, 0, 4)), 'OLD_')) then
      begin
        FGridState := gsInsert;

        if (Assigned(FClientDataSet.FindField(xProperty.Name))) then
          FClientDataSet.FindField(xProperty.Name).AsVariant := xProperty.GetValue(pObj).AsVariant;
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

procedure TDataSetGrid.Filter(const pValue: Variant; const pField: string; const pDo: Boolean);
var
  xFilter: string;

  function Command: string;
  begin
    Result := EmptyStr;

    if (Self.DataSource.DataSet.FindField(pField).DataType in [ftWord, ftCurrency, ftLargeint, ftBCD,
        ftBytes, ftByte, ftLongWord, ftShortint, ftExtended, ftSmallint, ftInteger, ftFloat]) then
    begin
      if not(FLike) then
        Result := Format(pField + ' = %s', [VarToStr(pValue)]);
    end
    else
    if (FLike) then
      Result := pField + ' LIKE (''%'+ VarToStr(pValue) + '%'')'
    else
      Result := Format(pField + ' = ''%s''', [VarToStr(pValue)]);

    xFilter := Result;
  end;

  procedure QueryFilter;
  var
    xQuery: THQuery;
  begin
    xQuery := THQuery.CreatePersonalizado();
    xQuery.Command := Format('SELECT %s FROM %s WHERE %s LIKE %s %s ORDER BY %s',
        [FFieldList, FTable, pField, '''%' + VarToStr(pValue) + '%''',iff(IsNull(FFilter), EmptyStr, ' AND '+ FFilter), pField]);
    xQuery.Open;

    Self.DataSource.DataSet := xQuery;
  end;

begin
  xFilter := EmptyStr;
  Self.DataSource.DataSet := FClientDataSet;

  if (pDo) then
  begin
    try
      if not(IsNull(Command)) then
      begin
        FClientDataSet.Filtered := False;
        FClientDataSet.FilterOptions := [foCaseInsensitive];
        FClientDataSet.Filter := xFilter;
        FClientDataSet.Filtered := True;
      end
      else
        QueryFilter;
    except
      on E: Exception do
        CMessage('N�o foi poss�vel realizar o filtro', mtErrorInform);
    end;
  end
  else
    FClientDataSet.Filtered := False;
end;

function TDataSetGrid.FindField(const pFieldName: string): TField;
begin
  Self.DataSource.DataSet.Edit;
  Result := Self.DataSource.DataSet.FindField(pFieldName);
end;

procedure TDataSetGrid.Finalize;
begin
  if Assigned(Self.DataSource.DataSet) then
  begin
    Clear;
    Self.DataSource.DataSet.FieldDefs.Clear;
    FreeAndNil(FClientDataSet);
  end;

  FContext.Free;
  FreeAndNil(FQueryField);
  FreeAndNil(FCheckList);
  FreeAndNil(FReadOnlyList);
end;

procedure TDataSetGrid.First;
begin
  Self.DataSource.DataSet.First;
end;

function TDataSetGrid.GetAllowNewLine: Boolean;
begin
  Result := FAllowNewLine;
end;

procedure TDataSetGrid.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((Shift = [ssCtrl]) and (Key = VK_DELETE)) then
    Abort;

  if (Key in [VK_DOWN]) then
    if not(FAllowNewLine) and (Self.DataSource.DataSet.RecNo = Self.DataSource.DataSet.RecordCount) then
      Abort;

  if (key = 9) then
    Abort;
end;

procedure TDataSetGrid.GridKeyPress(Sender: TObject; var Key: Char);
var
  xNextCol: Boolean;
  xSpacePress: Boolean;

  procedure NewValue();
  var
    xReadOnly: Boolean;
  begin
    Self.Refresh;
    xReadOnly := Self.Columns[pred(Col)].ReadOnly;

    if not(xReadOnly) and not(xNextCol) then
      FOldValue := Self.Columns[pred(Col)].Field.Value;

    FOldColumn := Col;
    FOldLine := Self.DataSource.DataSet.RecNo;
    FFieldState := iff(xReadOnly, gsBrowse, gsNewValue);
  end;

  procedure SpacePress();
  var
    i: Integer;
  begin
    if (Assigned(FCheckList)) then
    begin
      for i := 0 to pred(FCheckList.Count) do
      begin
        if AnsiSameText(Self.Columns[pred(Col)].FieldName,FCheckList[i]) then
        begin
          Self.FindField(Self.Columns[pred(Col)].FieldName).AsInteger := iff(Self.FindField(Self.Columns[pred(Col)].FieldName).AsInteger = 0, 1, 0);
          CheckMethod(Self.Columns[pred(Col)].FieldName, cmClick);
          Break;
        end;
      end;
    end;
  end;

begin
  FFieldState := iff(AnsiSameText(Key, #13) and (FFieldState = gsNewValue), gsNewValue, gsBrowse);

  if not(AnsiSameText(Key, #9)) then
  begin
    xNextCol := AnsiSameText(Key, #13);
    xSpacePress := AnsiSameText(Key, #32);
    FBackSpace := iff((AnsiSameText(Key,#8) or ((xNextCol) and
      VarIsNull(Self.Columns[FOldColumn].Field.Value) and FBackSpace)), True, False);

    if (xSpacePress) then
      SpacePress();

    if not(xNextCol or xSpacePress) and not(FBackSpace) then
      if (Self.DataSource.DataSet.FieldDefs[Pred(Col)].DataType in [ftWord, ftCurrency, ftLargeint, ftBCD,
        ftBytes, ftByte, ftLongWord, ftShortint, ftExtended, ftSmallint, ftInteger, ftFloat]) then
      begin
        if not(CharInSet(key, ['0'..'9',',',#8])) and not(xNextCol) then
        begin
          key := #0;
          FFieldState := gsBrowse;
        end
        else
          NewValue();
      end
      else
      if (Self.DataSource.DataSet.FieldDefs[Pred(Col)].DataType in [ftFixedChar, ftString, ftWideString]) then
      begin
        if not(CharInSet(key, ['A'..'Z','a'..'z'])) and not(xNextCol) then
        begin
            Key := #0;
            FFieldState := gsBrowse;
        end
        else
          NewValue();
      end
      else
      if (Self.DataSource.DataSet.FieldDefs[Pred(Col)].DataType in [ftDate, ftDateTime]) then
      begin
        if not(CharInSet(key, ['0'..'9',',',#8])) and not(xNextCol) then
        begin
          key := #0;
          FFieldState := gsBrowse;
        end
        else
          NewValue();
      end;

    if (FBackSpace) then
    begin
      if not(xNextCol) then
      begin
        FOldColumn := pred(Col);
        FOldLine := Self.DataSource.DataSet.RecNo;
        FOldValue := Self.Columns[pred(Col)].Field.Value;
      end;
    end;

    if (xNextCol) then
    begin
      if (Self.Col < pred(ColCount)) then
        Self.Col := Self.Col + 1
      else
      if not(Self.DataSource.DataSet.RecNo = Self.DataSource.DataSet.RecordCount) then
      begin
        Self.DataSource.DataSet.RecNo := Self.DataSource.DataSet.RecNo + 1;
        Col := 1;
      end
      else
      if (Self.DataSource.DataSet.RecNo = Self.DataSource.DataSet.RecordCount) then
      begin
        Self.DataSource.DataSet.RecNo := 1;
        Col := 1;
      end;

      ExitCol(Self);
      EnterCol(Self);
    end;
  end;
end;

function TDataSetGrid.GridTitleClick(): Boolean;
var
  xPoint: TPoint;
  xMouse: TPoint;
begin
  xMouse := Mouse.CursorPos;
  xPoint := Self.ScreenToClient(xMouse);
  Result := (Self.MouseCoord(xPoint.X, xPoint.Y).Y = 0) and (dgTitles in Self.Options);
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
        xCheck := iff((Self.DataSource.DataSet.FieldByName(Column.FieldName).AsInteger = 1), DFCS_CHECKED, DFCS_BUTTONCHECK);

        xRec := Rect;
        InflateRect(xRec,-2,-2);
        DrawFrameControl(Self.Canvas.Handle, xRec, DFC_BUTTON, DFCS_BUTTONCHECK or xCheck);
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
        Self.DataSource.DataSet.Edit;
        Self.DataSource.DataSet.FieldByName(Column.FieldName).AsInteger := iff(Self.DataSource.DataSet.FieldByName(Column.FieldName).AsInteger = 0, 1, 0);
        Self.DataSource.DataSet.Post;
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
                      ' ORDER BY '+ FIndexFields + ' ALL_TAB_COLUMNS.COLUMN_ID ';

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
  UltimoCaracter(FFieldList, ',');

  FClientDataSet.CreateDataSet;
  Self.DataSource.DataSet := FClientDataSet;
  Self.DataSource.OnDataChange := ChangeData;
end;

procedure TDataSetGrid.CreateFieldOrder(const pIndexFields: string);
var
  i: Integer;
  xCampo: string;
begin
  xCampo := EmptyStr;
  FIndexFields := EmptyStr;

  if not(IsNull(pIndexFields)) then
    for i := 1 to High(pIndexFields) do
    begin
      if not(AnsiSameText(pIndexFields[i], ';')) then
        xCampo := xCampo + pIndexFields[i];

      if (AnsiSameText(pIndexFields[i], ';')) or (i = Length(pIndexFields)) then
      begin
        FIndexFields := FIndexFields + 'CASE WHEN UPPER(R998FLD.FLDNAM) = '''+ UpperCase(xCampo) +''' THEN 1 ELSE 2 END,';
        xCampo := EmptyStr;
      end;
    end;
end;

function TDataSetGrid.Selected(const pField: string): Variant;
begin
  if (Self.DataSource.DataSet.FindField(pField).DataType in [ftBCD, ftFloat, ftLargeint, ftInteger,
    ftCurrency, ftSmallint, ftWord, ftBytes, ftLongWord, ftShortint]) then
    Result := Self.DataSource.DataSet.FindField(pField).AsVariant
  else
  if (Self.DataSource.DataSet.FindField(pField).DataType in [ftString, ftWideString, ftFixedChar]) then
    Result := QuotedStr(Self.DataSource.DataSet.FindField(pField).AsString);
end;

procedure TDataSetGrid.SetAllowNewLine(const Value: Boolean);
begin
  FAllowNewLine := Value;
end;

procedure TDataSetGrid.SetFields(const pField: string; const pType: TFieldType; const pLenFld: Integer = 0);
begin
  if (pType in [ftBCD, ftFloat, ftString, ftDateTime, ftLargeint, ftInteger, ftBoolean]) then
  begin
    FFieldList := FFieldList + pField + ',';

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
  FQueryField.Command := Format('SELECT %s FROM %s', [FFieldList, FTable]) + iff(not(IsNull(FFilter)), ' WHERE ' + FFilter, EmptyStr);
  FQueryField.Open;
  while not(FQueryField.Eof) do
  begin
    Self.Add;

    for i := 0 to pred(FClientDataSet.FieldDefList.Count) do
      FClientDataSet.FieldByName(FClientDataSet.FieldDefList[i].Name).AsVariant := FQueryField.FindField(FClientDataSet.FieldDefList[i].Name).AsVariant;

    Self.Refresh;
    FQueryField.Next;
  end;
  Self.DataSource.DataSet.First;
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

procedure TDataSetGrid.ActionChange(Sender: TObject; CheckDefaults: Boolean);
begin
  inherited;
end;

procedure TDataSetGrid.Add;
begin
  FGridState := gsInsert;
  Self.DataSource.DataSet.Append;
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
