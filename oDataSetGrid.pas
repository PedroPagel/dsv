unit oDataSetGrid;

interface

uses
  Vcl.Controls, Vcl.Grids, Data.SqlExpr, System.SysUtils, oQuery,
  System.TypInfo, Data.DB, Datasnap.DBClient, Vcl.DBGrids, System.Rtti,
  System.Classes, Vcl.DBCtrls, Winapi.Windows, Vcl.Forms, Vcl.Buttons,
  oValueListEditor, Datasnap.Provider;

type
  TDataSetGrid = class; //foward

  TEnterLine = procedure(Sender: TObject) of Object;
  TProcedure = procedure() of Object;
  TLineChange = procedure(DataSet: TDataSet) of Object;
  TProcedureSender = procedure(Sender: TObject; var Key: Word; Shift: TShiftState) of Object;
  TColumnInfo = procedure(Column: TColumn) of Object;
  TCheckMethod = (cmNone, cmExitCol, cmChange,
                  cmEnter, cmClick, cmLine,
                  cmAfterInsert, cmBeforeInsert, cmCancelLine,
                  cmExitLine, cmKeyDown, cmBeforeDelete);

  TProcedureCheck = procedure(const pCheck: TCheckMethod; const pGrid: TDataSetGrid; const pField: string) of object;
  TLineState = (lsNewLine, lsEvents, lsStop);
  TGridState = (gsBrowse, gsOnEnter, gsNewValue, gsDisconnect);

  TFieldPosition = record
    Name: string;
    NewPos: Integer;
    OldPos: Integer;
  end;

  TLookupFields = record
    Name: string;
    Table: string;
    Result: string;
    LookupFilter: array of string;
  end;

  TEnumFields = record
    Name: string;
    Enum: string;
    ValueList: THValueListEditor;
  end;

  TListFieldPosition = array of TFieldPosition;
  TListLookupFields = array of TLookupFields;
  TListEnumFields = array of TEnumFields;

  TDataSetGrid = class(TDBGrid)
  private
    FNewLineEdition: Boolean;
    FShiftTabPress: Boolean;
    FAllowNewLine: Boolean;
    FDisableEnter: Boolean;
    FOrderTitles: Boolean;
    FChangeLine: Boolean;
    FCancelLine: Boolean;
    FTabEnter: Boolean;
    FRowAdd: Boolean;
    FNewRow: Boolean;
    FLike: Boolean;
    FTAB: Boolean;
    FESC: Boolean;
    FINIT: Boolean;

    FTable: string;
    FFilter: string;
    FFieldList: string;
    FClassTable: string;
    FIndexFields: string;

    FCount: Integer;
    FColumn: Integer;
    FOldLine: Integer;
    FNewLine: Integer;
    FOrdenado: Integer;
    FRowHeight: Integer;
    FOldColumn: Integer;

    FOldValue: Variant;

    FListFieldPosition: TListFieldPosition;
    FListLookupFields: TListLookupFields;
    FListEnumFields: TListEnumFields;
    FClientDataSet: TClientDataSet;
    FProvider: TDataSetProvider;
    FReadOnlyList: TStringList;
    FCheckList: TStringList;
    FFieldState: TGridState;
    FLineState: TLineState;
    FContext: TRttiContext;
    FGridState: TGridState;
    FEnterLine: TEnterLine;
    FQueryField: THQuery;
    FImage: TImageList;
    FLeftTable: TForm;
    FForm: TForm;

    function DesmontaID(const pString: string): string;
    function GetAllowNewLine: Boolean;

    procedure SetFields(const pField: string; const pType: TFieldType; const pLenFld: Integer = 0; const pCustom: Boolean = False);
    procedure CheckMethodBySender(Sender: TObject; var Key: Word; Shift: TShiftState; const pCheckMethod: TCheckMethod);
    procedure Draw(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CheckMethod(const pField: string; const pCheckMethod: TCheckMethod);
    procedure GridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CreateFieldOrder(const pIndexFields: string);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure ChangeData(Sender: TObject; Field: TField);
    procedure CreateValueList(const pList: TEnumFields);
    procedure SetAllowNewLine(const Value: Boolean);
    procedure GetOldPosition(const pField: string);
    procedure TitleClickOrder(Column: TColumn);
    procedure ButtonClick(Sender: TObject);
    procedure CheckClick(Column: TColumn);
    procedure EnterGrid(Sender: TObject);
    procedure ExitGrid(Sender: TObject);
    procedure EnterCol(Sender: TObject);
    procedure ExitCol(Sender: TObject);
    procedure ExitLine(DataSet: TDataSet);
    procedure ChangePosition();
    procedure CallCheck();

    procedure EnterLineDataSet(DataSet: TDataSet);
    procedure EnterLine(Sender: TObject);

    //Bloco de eventos da Grid
    procedure OnCancelLine(DataSet: TDataSet);
    procedure OnAfterInsert(DataSet: TDataSet);
    procedure OnBeforeInsert(DataSet: TDataSet);
    procedure BeforeDelete(DataSet: TDataSet);
    procedure OnUpdateValue(Sender: TField);

    property OnEnterLine: TEnterLine read FEnterLine write FEnterLine;
  protected
    procedure ActionChange(Sender: TObject; CheckDefaults: Boolean); override;
    Procedure SetRowHeight(Value:Integer);
    procedure CreateImage();
  public
    procedure Clear();
    procedure Edit();
    procedure Post();
    procedure First();
    procedure Next();
    procedure Finalize();
    procedure CreateDataSet();
    procedure Add(const pObj: TObject);
    procedure PerformUpdateGrid();
    procedure Visible(const pField: string; pValue: Boolean);
    procedure ReadOnly(const pField: string; pValue: Boolean);
    procedure NumericField(const pField: string; const pMask: string);
    procedure CheckFields(const pField: string; const pValue: Integer);
    procedure FieldPosition(const pField: string; const pPosition: Integer);
    procedure Filter(const pValue: Variant; const pField: string; const pDo: Boolean);
    procedure Init(const pTable: string; const pForm: TForm; const pIndexFields: string = ''; const pFilter: string = '');
    procedure AddColumn(const pName, pDesc: string; const pType: TFieldType; const pStringSize: Integer = 0; const pCheck: Boolean = False);
    procedure LookupField(const pName: string; const pTable: string; const pLookUpFilter: array of string; const pResult: string = '');
    procedure SetFieldAsEnumerator(const pName: string; pEnumerator: string);

    function Eof: Boolean;
    function Count: Integer;
    function Line: Integer;
    function ShowSearch(): Boolean;
    function Table: string;
    function FindField(const pFieldName: string): TField;
    function Selected(const pField: string): Variant;
    function GridTitleClick(): Boolean;
    function CellRect(ACol,Arow : Longint):TRect; Reintroduce;

    procedure Disconnect;
    procedure Connect;
    procedure Delete;
    procedure AddLeftTableForm(const pForm: TForm);

    property Like: Boolean read FLike write FLike;
    property OrderTitles: Boolean read FOrderTitles write FOrderTitles;
    property FieldList: string read FFieldList write FFieldList;
    property DisableEnter: Boolean read FDisableEnter write FDisableEnter;
  published
    property AllowNewLine: Boolean read GetAllowNewLine write SetAllowNewLine;
    property ClassTable: string read FClassTable write FClassTable;
  end;

procedure Register;

implementation

uses
  oMensagem, System.Variants, Obase, Vcl.Graphics, Vcl.ExtCtrls, oButtonedEdit,
  Winapi.Messages, uPesHen, o998lsf;

procedure Register;
begin
  RegisterComponents('Samples', [TDataSetGrid]);
end;

{ TDataSetGrid }

procedure TDataSetGrid.Init(const pTable: string; const pForm: TForm; const pIndexFields: string = ''; const pFilter: string = '');
begin
  FClientDataSet := TClientDataSet.Create(Application);
  FProvider := TDataSetProvider.Create(Application);
  FQueryField := THQuery.CreatePersonalizado();
  FCheckList := TStringList.Create;
  FReadOnlyList := TStringList.Create;
  FContext := TRttiContext.Create;

  FTable := pTable;
  FForm := pForm;
  FINIT := False;

  FFieldList := EmptyStr;
  FFilter := pFilter;
  FColumn := 0;
  FCount := 0;
  FOrdenado := 0;
  FChangeLine := False;
  FOrderTitles := False;
  FRowAdd := False;
  FLineState := lsNewLine;
  FProvider.Name := 'Provider' + Self.Name + FTable;
  FProvider.DataSet := FQueryField;

  FClientDataSet.Close;
  FClientDataSet.FieldDefs.Clear;
  FClientDataSet.AfterCancel := OnCancelLine;
  FClientDataSet.AfterInsert := OnAfterInsert;
  FClientDataSet.BeforeInsert := OnBeforeInsert;
  FClientDataSet.BeforeDelete := BeforeDelete;
  FClientDataSet.AfterScroll := EnterLineDataSet;
  FClientDataSet.BeforeScroll := ExitLine;
  FClientDataSet.ProviderName := FProvider.Name;

  Self.OnDrawColumnCell := Draw;
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

  CreateFieldOrder(pIndexFields);
  CreateImage();
end;

function TDataSetGrid.Line: Integer;
begin
  if (FFieldState = gsNewValue) then
    Result := iff(Row >= 0, Row, 0)
  else
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
  FINIT := False;
  FClientDataSet.Next;
  FINIT := True;
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
  if (FTAB) or (FESC) then
  begin
    FTAB := False;
    FESC := False;
    Abort;
  end;

  if (FRowAdd) then
    CheckMethod(EmptyStr, cmBeforeInsert);
end;

procedure TDataSetGrid.OnCancelLine(DataSet: TDataSet);
begin
  if (FCancelLine) then
  begin
    Self.Options := Self.Options + [dgEditing];
    FClientDataSet.UpdateCursorPos;
    CheckMethod(EmptyStr, cmCancelLine);
    FCancelLine := False;
  end;
end;

procedure TDataSetGrid.OnUpdateValue(Sender: TField);
begin
  if (Assigned(Self.SelectedField)) then
    CheckMethod(TField(Sender).FieldName, cmChange);
end;

procedure TDataSetGrid.Edit;
begin
  Self.DataSource.DataSet.Edit;
end;

procedure TDataSetGrid.BeforeDelete(DataSet: TDataSet);
begin
  if (FAllowNewLine) and  not(CMessage('Confirma a exclusão do registro?', mtConfirmationYesNo)) then
    Abort
  else
  begin
    FCancelLine := True;
    CheckMethod(EmptyStr, cmBeforeDelete);
  end;
end;

procedure TDataSetGrid.ButtonClick(Sender: TObject);
var
  i: Integer;
  xPesHen: TFPesHen;
  xString: string;
begin
  for i := 0 to High(FListLookupFields) do
  begin
    if AnsiSameText(Self.SelectedField.FieldName, FListLookupFields[i].Name) then
    begin
      xPesHen := TFPesHen.Create(nil);
      xPesHen.ShowData(FListLookupFields[i].Table, FListLookupFields[i].Result, EmptyStr);

      xString := String(xPesHen.Return);

      if not(IsNull(xString)) then
      begin
        System.Delete(xString, 1, 1);
        System.Delete(xString, Length(xString), 1);

        FClientDataSet.Edit;
        FClientDataSet.FindField(Self.SelectedField.FieldName).Value := xString;
        FClientDataSet.Post;
      end;
    end;
  end;

  for i := 0 to High(FListEnumFields) do
  begin
    if AnsiSameText(Self.SelectedField.FieldName, FListEnumFields[i].Name) then
    begin
      FListEnumFields[i].ValueList.ShowGridEnum(Self.CellRect(Self.Col, FClientDataSet.RecNo));
      Break;
    end;
  end;
end;

procedure TDataSetGrid.EnterGrid(Sender: TObject);
var
  i: Integer;
begin
  FFieldState := gsOnEnter;
  FOldLine := 0;
  FOldColumn := 1;

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

  for i := 0 to High(FListEnumFields) do
  begin
    if (Self.SelectedField.FieldName = FListEnumFields[i].Name) then
    begin
      Self.Options := Self.Options + [dgEditing];
      Break;
    end
    else
      Self.Options := Self.Options - [dgEditing];
  end;

  if (FAllowNewLine) then
    FRowAdd := True;

  SelectedIndex := 0;
  FOldColumn := 1;

  EnterCol(Sender);
end;

procedure TDataSetGrid.EnterLine(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to High(FListLookupFields) do
  begin
    if (Self.SelectedField.FieldName = FListLookupFields[i].Name) then
    begin
      Self.SelectedField.FocusControl;
      break;
    end;
  end;

  CheckMethod(EmptyStr, cmLine);
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

      if not(pValue) then
        FReadOnlyList.Add(pField);

      Break;
    end;
  end;
end;

procedure TDataSetGrid.CallCheck;
begin
  if (FOldColumn < 1) then
    FOldColumn := 1;

  if (FOldValue <> Self.Columns[(FOldColumn)].Field.Value) then
  begin
    FOldValue := Self.Columns[(FOldColumn)].Field.Value;
    //-CheckMethod(Self.Columns[(FOldColumn)].FieldName, cmChange);
  end;

  if (FChangeLine) then
    if (FOldLine <> FNewLine) and (FNewLine > -1) and (FClientDataSet.RecNo > -1) then
    begin
      FChangeLine := False;
      Self.DataSource.DataSet.RecNo := FNewLine;
    end;
end;

procedure TDataSetGrid.PerformUpdateGrid();
begin
  Perform(WM_KEYDOWN, 39, 0)
end;

function TDataSetGrid.CellRect(ACol, Arow: Integer): TRect;
begin
  Result := Inherited CellRect(ACol, ARow);
end;

procedure TDataSetGrid.ChangeData(Sender: TObject; Field: TField);
begin
  if (FGridState = gsBrowse) then
  begin
    if ((FOldLine <> Self.DataSource.DataSet.RecNo) and (FFieldState = gsNewValue)) then
    begin
      FChangeLine := True;
      FNewLine := Self.DataSource.DataSet.RecNo;

      //Passado outro FS, pois o RecNo ira chamar o ChangeData
      if (FOldLine > 0) and not(FAllowNewLine) then
        Self.DataSource.DataSet.RecNo := FOldLine;

      CallCheck();
    end;
  end;

  FGridState := gsBrowse;
end;

procedure TDataSetGrid.EnterLineDataSet(DataSet: TDataSet);
begin
  if ((FINIT) and (Self.Count > 0) and not(FGridState = gsDisconnect)) then
    FEnterLine(Self);
end;

procedure TDataSetGrid.ChangePosition;
var
  i: Integer;
begin
  if (Length(FListFieldPosition) > 0) then
    for i := 0 to High(FListFieldPosition) do
      Self.ColumnMoved(FListFieldPosition[i].OldPos, FListFieldPosition[i].NewPos);
end;

procedure TDataSetGrid.GetOldPosition(const pField: string);
var
  i: Integer;
begin
  if (Length(FListFieldPosition) > 0) then
    for i := 0 to High(FListFieldPosition) do
    begin
      if (AnsiSameText(pField, FListFieldPosition[i].Name)) then
      begin
        FListFieldPosition[i].OldPos := FColumn;
        Break;
      end;
    end;
end;

function TDataSetGrid.Eof: Boolean;
begin
  Result := FClientDataSet.Eof;

  if not(Result) then
    FClientDataSet.Edit;
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
      Self.SelectedField.FocusControl;
      break;
    end;
  end;

  for i := 0 to High(FListEnumFields) do
  begin
    if (Self.SelectedField.FieldName = FListEnumFields[i].Name) then
    begin
      Self.Options := Self.Options + [dgEditing];
      Break;
    end
    else
      Self.Options := Self.Options - [dgEditing];
  end;

  FOldColumn := iff(Col > 1, pred(Col), 1);
end;

procedure TDataSetGrid.ExitCol(Sender: TObject);
begin
  FOldColumn := iff(Col > 1, pred(Col), Col);
  CheckMethod(Self.SelectedField.FieldName, cmExitCol);
end;

procedure TDataSetGrid.ExitGrid(Sender: TObject);
begin
  if (FFieldState = gsNewValue) then
    CallCheck();

  ExitCol(Sender);
end;

procedure TDataSetGrid.ExitLine(DataSet: TDataSet);
begin
  if ((FINIT) and (Self.Count > 0) and not(FGridState = gsDisconnect)) then
  begin
    ExitCol(Self);
    CheckMethod(EmptyStr, cmExitLine);
  end;
end;

procedure TDataSetGrid.Add(const pObj: TObject);
var
  xType: TRttiType;
  xProperty: TRttiProperty;
begin
  FINIT := False;
  FRowAdd := False;
  FClientDataSet.Append;

  xType := FContext.GetType(pObj.ClassType);

  for xProperty in xType.GetProperties do
    if (xProperty.PropertyType.TypeKind in [tkInteger, tkFloat, tkString, tkUString, tkWChar, tkWString]) then
      if not(BuscarString('ID', [DesmontaID(xProperty.Name)])) and not(AnsiSameText(UpperCase(Copy(xProperty.Name, 0, 4)), 'OLD_')) then
      begin
        if (Assigned(FClientDataSet.FindField(xProperty.Name))) then
        begin
          if (FClientDataSet.FindField(xProperty.Name).DataType in [ftDateTime, ftDate]) then
          begin
            if (VarToDateTime(xProperty.GetValue(pObj).AsVariant) <= 366) then
            begin
              TDateTimeField(FClientDataSet.FindField(xProperty.Name)).DisplayFormat := '00/00/0000';
              FClientDataSet.FindField(xProperty.Name).AsVariant := 1;
            end
            else
              FClientDataSet.FindField(xProperty.Name).AsVariant := xProperty.GetValue(pObj).AsVariant;
          end
          else
            FClientDataSet.FindField(xProperty.Name).AsVariant := xProperty.GetValue(pObj).AsVariant;
        end;
      end;

  FClientDataSet.Post;
  Inc(FCount);

  FINIT := True;
end;

procedure TDataSetGrid.AddLeftTableForm(const pForm: TForm);
begin
  FLeftTable := pForm;
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
    FreeAndNil(FProvider);
  end;

  FContext.Free;
  FreeAndNil(FQueryField);
  FreeAndNil(FCheckList);
  FreeAndNil(FReadOnlyList);
end;

procedure TDataSetGrid.First;
begin
  FINIT := False;
  FClientDataSet.First;
  FINIT := True;
end;

function TDataSetGrid.GetAllowNewLine: Boolean;
begin
  Result := FAllowNewLine;
end;

procedure TDataSetGrid.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((Shift = [ssCtrl]) and (Key = VK_DELETE)) and not(FAllowNewLine) then
    Abort;

  FShiftTabPress := (Shift = [ssShift]) and (Key = VK_TAB);
  FCancelLine := (Key = VK_ESCAPE) or ((FClientDataSet.State = dsInsert) and ((Key = 38) or ((Shift = [ssCtrl]) and (Key = 46))));
  FTabEnter := ((Key = VK_TAB) or (Key = 13)) and not(FNewRow);

  if (Key in [VK_DOWN]) then
  begin
    if not(FAllowNewLine) and (Row = RowCount) then
      Abort;

    if (FAllowNewLine) then
    begin
      FRowAdd := True;
      Self.Options := Self.Options + [dgEditing];
      FNewLineEdition := True;
    end;
  end;

  if (Key = VK_ESCAPE) and (FNewLineEdition) and (FClientDataSet.State = dsInsert) then
  begin
    FESC := True;
    Self.DeleteRow(Self.RowCount);
    FClientDataSet.Delete;

    FNewLineEdition := False;
    FOldLine := iff(Row = -1, RowCount, Row);
  end;

  FTAB := (key = 9);

  if (Key = VK_F3) then
    ButtonClick(Self);

  CheckMethodBySender(Sender, Key, Shift, cmKeyDown);
end;

procedure TDataSetGrid.GridKeyPress(Sender: TObject; var Key: Char);
var
  xEnter: Boolean;

  procedure NewValue();
  var
    xReadOnly: Boolean;
  begin
    Self.Refresh;
    xReadOnly := Self.Columns[pred(Col)].ReadOnly;

    if not(xReadOnly) and not(xEnter) then
      FOldValue := Self.Columns[pred(Col)].Field.Value;

    FOldLine := iff(Row = -1, RowCount, Row);
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
  if (AnsiSameText(Key, #32)) then
    SpacePress();

  if not(AnsiSameText(Key, #13)) and not(AnsiSameText(Key, #32)) and not(AnsiSameText(Key,#8)) and
     not(AnsiSameText(Key,#27)) and not(AnsiSameText(Key,#10)) and not(AnsiSameText(Key,#9)) then
  begin
    if (Self.DataSource.DataSet.FieldDefs[Pred(Col)].DataType in [ftWord, ftCurrency, ftLargeint, ftBCD,
      ftBytes, ftByte, ftLongWord, ftShortint, ftExtended, ftSmallint, ftInteger, ftFloat]) or
       (Self.DataSource.DataSet.FieldDefs[Pred(Col)].DataType in [ftDate, ftDateTime]) then
    begin
      if (CharInSet(key, ['0'..'9',',',#8])) then
        NewValue()
      else
      begin
        key := #0;
        FFieldState := gsBrowse;
      end;
    end
    else
    if (Self.DataSource.DataSet.FieldDefs[Pred(Col)].DataType in [ftFixedChar, ftString, ftWideString]) then
      NewValue();
  end
  else
  begin
    if (FShiftTabPress) then
      Perform(WM_KEYDOWN, 37, 0);

    if (AnsiSameText(Key, #13)) and not(FDisableEnter) then
    begin
      if (Self.Col < pred(ColCount)) then
        Perform(WM_KEYDOWN, 39, 0)
      else
      if (Self.Col = pred(ColCount)) then
      begin
        FNewRow := True;
        Perform(WM_KEYDOWN, 40, 0);
        SelectedIndex := 0;
        FCancelLine := False;
        FNewRow := False;
      end;
    end;

    FFieldState := iff(AnsiSameText(Key, #13) and (FFieldState = gsNewValue), gsNewValue, gsBrowse);
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

procedure TDataSetGrid.Disconnect;
begin
  Self.DataSource.DataSet := nil;
  FGridState := gsDisconnect;
end;

procedure TDataSetGrid.Draw(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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
  Disconnect;
  FClientDataSet.First;
  while not(Self.Eof) do
  begin
    FClientDataSet.FindField(pField).AsInteger := pValue;
    FClientDataSet.Post();
    FClientDataSet.Next;
  end;
  FClientDataSet.First;
  Connect;
end;

procedure TDataSetGrid.CheckMethod(const pField: string; const pCheckMethod: TCheckMethod);
var
  xType: TRttiType;
  xMethod: TMethod;
  xProcedure: TProcedure;
  xProcedureCheck: TProcedureCheck;
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

    cmBeforeInsert:
      xCheck := 'BeforeInsert';

    cmCancelLine:
      xCheck := 'CancelLine';

    cmExitLine:
      xCheck := 'ExitLine';

    cmBeforeDelete:
      xCheck := 'BeforeDelete';
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
  end
  else
  begin
    //Deixa a u000cad analisar o metodo
    xRttiMethod :=  xType.GetMethod('AutomaticMethod');

    if Assigned(xRttiMethod) then
    begin
      xMethod.Data := Pointer(FForm);
      xMethod.Code := FForm.MethodAddress(xRttiMethod.Name);


      if Assigned(xMethod.Code) then
      begin
        xProcedureCheck := TProcedureCheck(xMethod);
        xProcedureCheck(pCheckMethod, Self, pField);
      end;
    end;
  end;
end;

procedure TDataSetGrid.CheckMethodBySender(Sender: TObject; var Key: Word; Shift: TShiftState;
  const pCheckMethod: TCheckMethod);
var
  xType: TRttiType;
  xMethod: TMethod;
  xProcedure: TProcedureSender;
  xRttiMethod: TRttiMethod;
  xCheck: string;
begin
  case (pCheckMethod) of
    cmKeyDown:
      xCheck := 'KeyDown';
  end;

  xType := FContext.GetType(FForm.ClassType);
  xRttiMethod :=  xType.GetMethod(Self.Name + xCheck);

  if Assigned(xRttiMethod) then
  begin
    xMethod.Data := Pointer(FForm);
    xMethod.Code := FForm.MethodAddress(xRttiMethod.Name);

    if Assigned(xMethod.Code) then
    begin
      xProcedure := TProcedureSender(xMethod);
      xProcedure(Sender, Key, Shift);
    end;
  end;
end;

procedure TDataSetGrid.Clear;
begin
  FGridState := gsBrowse;
  FClientDataSet.EmptyDataSet;
  FINIT := False;
  FCount := 0;
  FOrdenado := 0;
end;

procedure TDataSetGrid.Connect;
begin
  Self.DataSource.DataSet := FClientDataSet;
  FGridState := gsBrowse;
end;

function TDataSetGrid.Count: Integer;
begin
  Result := FClientDataSet.RecordCount;
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

  procedure DataSetChanges();
  var
    i: Integer;
  begin
    FClientDataSet.CreateDataSet;

    for i := 0 to pred(FClientDataSet.FieldList.Count) do
      FClientDataSet.FieldList[i].OnChange := OnUpdateValue;

    xQuery.Close;
    Self.DataSource.DataSet := FClientDataSet;
    Self.DataSource.OnDataChange := ChangeData;
    FClientDataSet.Open;
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
          break;
        end;
      end;

      for i := 0 to High(FListEnumFields) do
      begin
        if (FListEnumFields[i].Name = xCampo) then
        begin
          Self.Columns[FColumn].ButtonStyle := cbsEllipsis;
          Self.Columns[FColumn].ReadOnly := False;
          break;
        end;
      end;

      Inc(FColumn);

      GetOldPosition(xCampo);

      SetFields(xCampo, (FieldType(xQuery.FindField('TYPE').AsString, xQuery.FindField('MSKFLD').AsString,
        xQuery.FindField('LENFLD').AsInteger)), xQuery.FindField('LENFLD').AsInteger);
    end;

    xQuery.Next;
  end;

  UltimoCaracter(FFieldList, ',');
  ChangePosition();
  DataSetChanges();
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

procedure TDataSetGrid.CreateImage;
var
  xBtmp: TBitmap;
begin
  xBtmp := TBitmap.Create;
  FImage := TImageList.Create(nil);
  xBtmp.Handle := LoadBitmap(HInstance, 'lupa');
  FImage.Add(xBtmp, nil);

  xBtmp.Handle := LoadBitmap(HInstance, 'lupa2');
  FImage.Add(xBtmp, nil);
end;

procedure TDataSetGrid.CreateValueList(const pList: TEnumFields);
var
  x998lsf: T998LSF;
begin
  x998lsf := nil;
  try
    x998lsf := T998LSF.Create;
    pList.ValueList.Parent := Self;
    pList.ValueList.Form := FForm;
    pList.ValueList.Name := 'LookupEnum'+ pList.Name;

    x998lsf.LSTNAM := pList.Enum;
    x998lsf.Open();

    while (x998lsf.Next) do
      pList.ValueList.AddRow(x998lsf.KEYNAM, x998lsf.ValKey);
  finally
    FreeAndNil(x998lsf);
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

procedure TDataSetGrid.SetFieldAsEnumerator(const pName: string;
  pEnumerator: string);
var
  i: Integer;
begin
  i := Length(FListEnumFields);
  Inc(i);
  SetLength(FListEnumFields, i);
  FListEnumFields[pred(i)].Name := pName;
  FListEnumFields[pred(i)].Enum := pEnumerator;
  FListEnumFields[pred(i)].ValueList := THValueListEditor.Create(Self);
  CreateValueList(FListEnumFields[pred(i)]);
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

function TDataSetGrid.ShowSearch: Boolean;
begin
  Self.DataSource.DataSet := nil;

  if (AnsiSameText(FTable, 'E099USU')) then
    FFieldList := 'E099USU.NOMUSU,'+ FFieldList;

  FClientDataSet.Close;
  FQueryField.Command := Format('SELECT %s FROM %s', [FFieldList, FTable]) + iff(not(IsNull(FFilter)), ' WHERE ' + FFilter, EmptyStr);
  FQueryField.Prepared := True;

  FClientDataSet.PacketRecords := 100;
  FClientDataSet.Open;

  Result := (FClientDataSet.RecordCount > 0);
  Self.DataSource.DataSet := FClientDataSet;
  Self.DataSource.DataSet.First;
end;

procedure TDataSetGrid.Delete;
begin
  FClientDataSet.Delete;
end;

function TDataSetGrid.Table: string;
begin
  Result := FTable;
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
