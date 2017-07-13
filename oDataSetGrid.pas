unit oDataSetGrid;

interface

uses
  Vcl.Controls, Vcl.Grids, Data.SqlExpr, System.SysUtils, oQuery,
  System.TypInfo, Data.DB, Datasnap.DBClient, Vcl.DBGrids, System.Rtti,
  System.Classes, Vcl.DBCtrls, Winapi.Windows, Vcl.Forms, Vcl.Buttons;

type
  TEnterLine = procedure(Sender: TObject) of Object;
  TChangeData = procedure(Sender: TObject) of Object;
  TProcedure = procedure() of Object;
  TColumnInfo = procedure(Column: TColumn) of Object;
  TCheckMethod = (cmNone, cmExitCol, cmChange, cmEnter, cmClick, cmLine,
                  cmAfterInsert, cmCancelLine, cmExitLine);
  TLineState = (lsNewLine, lsEvents, lsStop);
  TGridState = (gsBrowse, gsInsert, gsEdit,
                gsNone, gsOnEnter, gsOnExit,
                gsNewValue, gsCallCheck);

  TFieldPosition = record
    Name: string;
    NewPos: Integer;
  end;

  TLookupFields = record
    Name: string;
    Table: string;
    Result: string;
    LookupFilter: array of string;
  end;

  TListFieldPosition = array of TFieldPosition;
  TListLookupFields = array of TLookupFields;

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
    FOrderTitles: Boolean;
    FOrdenado: Integer;
    FRowHeight: Integer;
    FNewLineEdition: Boolean;
    FRowAdd: Boolean;
    FLastExitLine: Integer;

    FForm: TForm;
    FQueryField: THQuery;
    FClientDataSet: TClientDataSet;
    FContext: TRttiContext;
    FCheckList: TStringList;
    FReadOnlyList: TStringList;
    FListFieldPosition: TListFieldPosition;
    FListLookupFields: TListLookupFields;
    FLineState: TLineState;

    FGridState: TGridState;
    FFieldState: TGridState;
    FEnterLine: TEnterLine;

    function DesmontaID(const pString: string): string;
    function GetAllowNewLine: Boolean;

    procedure SetFields(const pField: string; const pType: TFieldType; const pLenFld: Integer = 0; const pCustom: Boolean = False);
    procedure Check(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CheckMethod(const pField: string; const pCheckMethod: TCheckMethod);
    procedure GridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GridKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure ChangeData(Sender: TObject; Field: TField);
    procedure CreateFieldOrder(const pIndexFields: string);
    procedure SetAllowNewLine(const Value: Boolean);
    procedure ChangePosition(const pField: string);
    procedure TitleClickOrder(Column: TColumn);
    procedure ButtonClick(Sender: TObject);
    procedure CheckClick(Column: TColumn);
    procedure EnterGrid(Sender: TObject);
    procedure ExitGrid(Sender: TObject);
    procedure EnterCol(Sender: TObject);
    procedure ExitCol(Sender: TObject);
    procedure EnterLine(Sender: TObject);
    procedure CallCheck();

    //Bloco de eventos da Grid
    procedure OnCancelLine(DataSet: TDataSet);
    procedure OnAfterInsert(DataSet: TDataSet);
    procedure OnBeforeInsert(DataSet: TDataSet);

    property OnEnterLine: TEnterLine read FEnterLine write FEnterLine;
  protected
    procedure ActionChange(Sender: TObject; CheckDefaults: Boolean); override;
    Procedure SetRowHeight(Value:Integer);
  public
    procedure Add();
    procedure Clear();
    procedure Edit();
    procedure Post();
    procedure First();
    procedure Next();
    procedure Finalize();
    procedure ShowSearch();
    procedure CreateDataSet();
    procedure AddFields(const pObj: TObject);
    procedure Visible(const pField: string; pValue: Boolean);
    procedure ReadOnly(const pField: string; pValue: Boolean);
    procedure NumericField(const pField: string; const pMask: string);
    procedure CheckFields(const pField: string; const pValue: Integer);
    procedure FieldPosition(const pField: string; const pPosition: Integer);
    procedure Filter(const pValue: Variant; const pField: string; const pDo: Boolean);
    procedure Init(const pTable: string; const pForm: TForm; const pIndexFields: string = ''; const pFilter: string = '');
    procedure AddColumn(const pName, pDesc: string; const pType: TFieldType; const pStringSize: Integer = 0; const pCheck: Boolean = False);
    procedure LookupField(const pName: string; const pTable: string; const pLookUpFilter: array of string; const pResult: string = '');

    function Eof: Boolean;
    function Count: Integer;
    function Line: Integer;
    function FindField(const pFieldName: string): TField;
    function Selected(const pField: string): Variant;
    function GridTitleClick(): Boolean;
    function CellRect(ACol,Arow : Longint):TRect; Reintroduce;

    procedure Disconnect;
    procedure Connect;
    procedure Delete;

    property Like: Boolean read FLike write FLike;
    property OrderTitles: Boolean read FOrderTitles write FOrderTitles;
    property FieldList: string read FFieldList write FFieldList;
  published
    property AllowNewLine: Boolean read GetAllowNewLine write SetAllowNewLine;
  end;

procedure Register;

implementation

uses
  oMensagem, System.Variants, Obase, Vcl.Graphics, Vcl.ExtCtrls, oButtonedEdit,
  Winapi.Messages, uPesHen;

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
  FOrdenado := 0;
  FLastExitLine := 0;
  FChangeLine := False;
  FBackSpace := False;
  FOrderTitles := False;
  FRowAdd := False;
  FLineState := lsNewLine;

  FClientDataSet.Close;
  FClientDataSet.FieldDefs.Clear;
  FClientDataSet.AfterCancel := OnCancelLine;
  FClientDataSet.AfterInsert := OnAfterInsert;
  FClientDataSet.BeforeInsert := OnBeforeInsert;

  Self.OnDrawColumnCell := Check;
  Self.OnCellClick := CheckClick;
  Self.OnKeyDown := GridKeyDown;
  Self.OnEnter := EnterGrid;
  Self.OnExit := ExitGrid;
  Self.OnKeyPress := GridKeyPress;
  Self.OnColEnter := EnterCol;
  Self.OnColExit := ExitCol;
  Self.OnTitleClick := TitleClickOrder;
  Self.OnEnterLine := EnterLine;
  Self.OnEditButtonClick := ButtonClick;
  Self.OnKeyUp := GridKeyUp;

  CreateFieldOrder(pIndexFields);
end;

function TDataSetGrid.Line: Integer;
begin
  Result := iff(FClientDataSet.RecNo >= 0, FClientDataSet.RecNo, 0);
end;

procedure TDataSetGrid.LookupField(const pName: string; const pTable: string; const pLookUpFilter: array of string;
  const pResult: string);
var
  i,j,l: Integer;
begin
  i := Length(FListLookupFields);
  Inc(i);
  SetLength(FListLookupFields, i);
  FListLookupFields[pred(i)].Name := pName;
  FListLookupFields[pred(i)].Table := pTable;
  FListLookupFields[pred(i)].Result := pResult;

  for j := 0 to High(pLookUpFilter) do
  begin
    l := Length(FListLookupFields[pred(i)].LookupFilter);
    Inc(l);
    SetLength(FListLookupFields[pred(i)].LookupFilter, l);
    FListLookupFields[pred(i)].LookupFilter[pred(l)] := pLookUpFilter[j];
  end;
end;

procedure TDataSetGrid.Next;
begin
  Self.DataSource.DataSet.Next;
end;

procedure TDataSetGrid.NumericField(const pField: string; const pMask: string);
begin
  TNumericField(FClientDataSet.FieldByName(pField)).DisplayFormat := ','+ pMask +';-,'+ pMask;
end;

procedure TDataSetGrid.OnAfterInsert(DataSet: TDataSet);
begin
  if (FRowAdd) then
    CheckMethod(EmptyStr, cmAfterInsert);
end;

procedure TDataSetGrid.OnBeforeInsert(DataSet: TDataSet);
begin
  if (FRowAdd) then
    CheckMethod(EmptyStr, cmAfterInsert);
end;

procedure TDataSetGrid.OnCancelLine(DataSet: TDataSet);
begin
  Self.Options := Self.Options + [dgEditing];
  FClientDataSet.UpdateCursorPos;
  CheckMethod(EmptyStr, cmCancelLine);
end;

procedure TDataSetGrid.Edit;
begin
  Self.DataSource.DataSet.Edit;
end;

procedure TDataSetGrid.ButtonClick(Sender: TObject);
var
  i: Integer;
  xPesHen: TFPesHen;
begin
  for i := 0 to High(FListLookupFields) do
  begin
    if (Self.SelectedField.FieldName = FListLookupFields[i].Name) then
    begin
      xPesHen := TFPesHen.Create(nil);
      xPesHen.ShowData(FListLookupFields[i].Table, FListLookupFields[i].Result, EmptyStr);

      FClientDataSet.FindField(Self.SelectedField.FieldName).Value := String(xPesHen.Return);
    end;
  end;
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

  for i := 0 to High(FListLookupFields) do
  begin
    if (Self.SelectedField.FieldName = FListLookupFields[i].Name) then
    begin
      Self.Options := Self.Options + [dgEditing];
      Break;
    end
    else
      Self.Options := Self.Options - [dgEditing];
  end;
end;

procedure TDataSetGrid.EnterLine(Sender: TObject);
begin
  if (FAllowNewLine) then
    Self.Options := Self.Options - [dgEditing];

  CheckMethod(EmptyStr, cmLine);
  Self.Refresh;
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
        CMessage('Campo tipo CHECK não pode ser definido como ReadOnly', mtExceptError);

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

function TDataSetGrid.CellRect(ACol, Arow: Integer): TRect;
begin
  Result := Inherited CellRect(ACol, ARow);
end;

procedure TDataSetGrid.ChangeData(Sender: TObject; Field: TField);
begin
  if (FGridState = gsBrowse) then
  begin
    if (FLastExitLine >= 1) and (FLastExitLine <> Self.DataSource.DataSet.RecNo) and (Self.DataSource.DataSet.RecNo >= 0) then
    begin
      CheckMethod(EmptyStr, cmExitLine);
      FLastExitLine := Self.DataSource.DataSet.RecNo;
    end;

    if Assigned(FEnterLine) then
      if (FOldEnterLine <> Self.DataSource.DataSet.RecNo) and (Self.DataSource.DataSet.RecNo >= 0) then
      begin
        FEnterLine(Self);
        FOldEnterLine := Self.DataSource.DataSet.RecNo;
      end;

    if (FLastExitLine = 0) and (FOldEnterLine <> Self.DataSource.DataSet.RecNo) and (Self.DataSource.DataSet.RecNo >= 0) then
      FLastExitLine := Self.DataSource.DataSet.RecNo;

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

procedure TDataSetGrid.ChangePosition(const pField: string);
var
  i: Integer;
begin
  if (Length(FListFieldPosition) > 0) then
    for i := 0 to High(FListFieldPosition) do
    begin
      if (AnsiSameText(pField, FListFieldPosition[i].Name)) then
      begin
        Self.ColumnMoved(FColumn, FListFieldPosition[i].NewPos);
        Break;
      end;
    end;
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

  for i := 0 to High(FListLookupFields) do
  begin
    if (Self.SelectedField.FieldName = FListLookupFields[i].Name) then
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

  //CheckMethod(Self.Columns[FOldColumn].Field.Name, cmExitCol);
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

procedure TDataSetGrid.FieldPosition(const pField: string;
  const pPosition: Integer);
var
  i: Integer;
begin
  i := Length(FListFieldPosition);
  Inc(i);
  SetLength(FListFieldPosition, i);
  FListFieldPosition[pred(i)].Name := pField;
  FListFieldPosition[pred(i)].NewPos := pPosition;
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
        CMessage('Não foi possível realizar o filtro', mtErrorInform);
    end;
  end
  else
    FClientDataSet.Filtered := False;
end;

function TDataSetGrid.FindField(const pFieldName: string): TField;
begin
  FClientDataSet.Edit;
  Result := FClientDataSet.FindField(pFieldName);
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
  FClientDataSet.First;
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
  begin
    if not(FAllowNewLine) and (Self.DataSource.DataSet.RecNo = Self.DataSource.DataSet.RecordCount) then
      Abort;

    if (FAllowNewLine) then
    begin
      FRowAdd := True;
      Self.Options := Self.Options + [dgEditing];
      FNewLineEdition := True;
    end;
  end;

  if (Key = VK_ESCAPE) and (FNewLineEdition) then
  begin
    Self.DeleteRow(Self.RowCount);
    Self.FocusCell(1, pred(Self.RowCount), False);
    Self.SetFocus;
    Self.SelectFirst;
    Self.Update;

    FNewLineEdition := False;
  end;

  if (key = 9) then
    Abort;

  if (Key = VK_F3) then
    ButtonClick(Self);
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
    FOldLine := iff(Self.DataSource.DataSet.RecNo = -1, Self.DataSource.DataSet.RecordCount, Self.DataSource.DataSet.RecNo);
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
        if (xNextCol) then
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

procedure TDataSetGrid.GridKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
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

procedure TDataSetGrid.Disconnect;
begin
  Self.DataSource.DataSet := nil;
end;

procedure TDataSetGrid.Check(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  i: Integer;
  xRec: TRect;
  xCheck: Integer;
begin
  FLineState := lsEvents;

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
    cmExitCol:
      xCheck := 'Exit';

    cmChange:
      xCheck := 'Change';

    cmEnter:
      xCheck := 'Enter';

    cmClick:
      xCheck := 'Click';

    cmLine:
      xCheck := 'EnterLine';

    cmAfterInsert:
      xCheck := 'AfterInsert';

    cmCancelLine:
      xCheck := 'CancelLine';

    cmExitLine:
      xCheck := 'ExitLine';
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
  FOrdenado := 0;
end;

procedure TDataSetGrid.Connect;
begin
  Self.DataSource.DataSet := FClientDataSet;
end;

function TDataSetGrid.Count: Integer;
begin
  Result := FCount;
end;

procedure TDataSetGrid.CreateDataSet();
var
  xQuery: THQuery;
  xCampo: string;
  i: Integer;

  function Alinhamento(): Boolean;
  var
    xType: TFieldType;
  begin
    xType := FieldType(xQuery.FindField('TYPE').AsString, xQuery.FindField('MSKFLD').AsString,
                    xQuery.FindField('LENFLD').AsInteger);
    Result := (xType in [ftBCD, ftFloat, ftDateTime, ftLargeint, ftInteger, ftBoolean, ftCurrency]);
  end;

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
                      ' ORDER BY '+ FIndexFields + ' FLDORD ';

  if (AnsiSameText(FTable, 'E099USU')) then
    Self.AddColumn('NomUsu', 'Nome', ftString, 15);

  xQuery.ParamByName('TABELA').Value := FTable;
  xQuery.ParamByName('BASE').Value := FOracleConnection.BaseConexao;
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
      Self.Columns[FColumn].Width := iff(xQuery.FindField('LENFLD').AsInteger > 20, 250, 100);
      Self.Columns[FColumn].Alignment := iff(Alinhamento, taCenter, taLeftJustify);

      for i := 0 to High(FListLookupFields) do
      begin
        if (FListLookupFields[i].Name = xCampo) then
        begin
          Self.Columns[FColumn].ButtonStyle := cbsEllipsis;
          Self.Columns[FColumn].ReadOnly := False;
        end;
      end;

      Inc(FColumn);

      ChangePosition(xCampo);
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
  FClientDataSet.Open;
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

procedure TDataSetGrid.SetFields(const pField: string; const pType: TFieldType; const pLenFld: Integer = 0; const pCustom: Boolean = False);
begin
  if (pType in [ftBCD, ftFloat, ftString, ftDateTime, ftLargeint, ftInteger, ftBoolean, ftCurrency]) then
  begin
    if not(pCustom) then
      FFieldList := FFieldList + FTable + '.' + pField + ',';

    if (pType = ftString) then
      FClientDataSet.FieldDefs.Add(pField, ftString, pLenFld)
    else
      FClientDataSet.FieldDefs.Add(pField, pType);
  end;
end;

procedure TDataSetGrid.SetRowHeight(Value: Integer);
begin
  if FRowHeight <> Value then
  begin
    FRowHeight := Value ;
    DefaultRowHeight := FRowHeight ;

    if Self.DataLink.Active then
      Perform(WM_SIZE,0,0);
  end;
end;

procedure TDataSetGrid.ShowSearch;
var
  i: Integer;
begin
  Self.DataSource.DataSet := nil;

  if (AnsiSameText(FTable, 'E099USU')) then
    FFieldList := 'E099USU.NOMUSU,'+ FFieldList;

  FQueryField.Command := Format('SELECT %s FROM %s', [FFieldList, FTable]) + iff(not(IsNull(FFilter)), ' WHERE ' + FFilter, EmptyStr);
  FQueryField.Prepared := True;
  FQueryField.Open;
  while not(FQueryField.Eof) do
  begin
    FClientDataSet.Append;

    for i := 0 to pred(FClientDataSet.FieldDefList.Count) do
      FClientDataSet.FieldByName(FClientDataSet.FieldDefList[i].Name).AsVariant := FQueryField.FindField(FClientDataSet.FieldDefList[i].Name).AsVariant;

    FClientDataSet.Post;
    FQueryField.Next;
  end;

  Self.DataSource.DataSet := FClientDataSet;
  Self.DataSource.DataSet.First;
end;

procedure TDataSetGrid.Delete;
begin
  FClientDataSet.Delete;
end;

procedure TDataSetGrid.TitleClickOrder(Column: TColumn);
var
  xType: TRttiType;
  xMethod: TMethod;
  xProcedure: TColumnInfo;
  xRttiMethod: TRttiMethod;
  xIndice: string;
  xAchou: Boolean;
begin
  xType := FContext.GetType(FForm.ClassType);
  xRttiMethod :=  xType.GetMethod(Self.Name + 'TitleClick');

  if Assigned(xRttiMethod) then
  begin
    xMethod.Data := Pointer(FForm);
    xMethod.Code := FForm.MethodAddress(xRttiMethod.Name);

    if Assigned(xMethod.Code) then
    begin
      xProcedure := TColumnInfo(xMethod);
      xProcedure(Column);
    end;
  end;

  if (FOrderTitles) then
  begin
    if (Column.Field.FieldKind = fkCalculated) then
      Exit;

    if (AnsiSameText(FClientDataSet.IndexFieldNames, Column.FieldName)) then
    begin
      xIndice := UpperCase(Column.FieldName) + '_IND';

      try
        FClientDataSet.IndexDefs.Find(xIndice);
        xAchou := True;
      except
        xAchou := False;
      end;

      if not(xAchou) then
      begin
        with (FClientDataSet.IndexDefs.AddIndexDef) do
        begin
          Name := xIndice;
          Fields := Column.FieldName;
          Options := [ixDescending];
        end;
      end;

      FClientDataSet.IndexName := xIndice;
    end
    else
      FClientDataSet.IndexFieldNames := Column.FieldName;
  end;

  Self.First;
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
  FRowAdd := False;
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

  SetFields(pName, pType, pStringSize, True);
end;

end.
