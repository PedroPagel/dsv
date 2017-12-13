unit oButtonedEdit;

interface

uses
  System.Classes, Vcl.Controls, Vcl.StdCtrls, Vcl.ExtCtrls, uPesHen, Vcl.ValEdit,
  Winapi.Windows, Vcl.ComCtrls, System.Rtti,  Vcl.Forms, oBase, Vcl.Dialogs,
  oValueListEditor;

type
  TCheckMethod = (cmNone, cmExit, cmChange, cmEnter, cmClick);
  TRightClick = procedure(Sender: TObject; const pObjectName: string) of Object;
  TProcedure = procedure() of Object;

  THButtonedEdit = class(TButtonedEdit)
  private
    { Private declarations }
    FTable: string;
    FIndexFields: string;
    FLookup: Boolean;
    FPesHen: TFPesHen;
    FLeftTable: TForm;
    FField: string;
    FFilter: string;
    FString: string;
    FAvoidSelections: Boolean;
    FIterator: TIterador;
    FIsNumber: Boolean;
    FIsFloat: Boolean;
    FAlfa: Boolean;
    FForm: TForm;
    FOpenDialog: Boolean;
    FGetDirectory: Boolean;
    FRequired: Boolean;
    FDataBaseRegisters: Boolean;
    FDataBaseTable: string;
    FDataBaseField: string;
    FENumerator: string;
    FValueList: THValueListEditor;
    FRightClick: TRightClick;
    FButtonClicked: Boolean;

    function GetTable: string;
    procedure SetTable(const Value: string);
    function GetIndexFields: string;
    procedure SetIndexFields(const Value: string);
    function GetLookup: Boolean;
    procedure SetLookup(const Value: Boolean);
    function GetField: string;
    procedure SetField(const Value: string);
    function GetFilter: string;
    procedure SetFilter(const Value: string);
    procedure RightDataClick(Sender: TObject);
    procedure LeftDataClick(Sender: TObject);

    function Filters(): string;
    function CheckValueFieds(out pValue: string): Boolean;

    procedure CreateValueList();
    procedure Value(const pKey: String);
    procedure EnterButton(Sender: TObject);
    procedure KeyPressButton(Sender: TObject; var Key: Char);
    procedure CallLookup(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CheckMethod(const pCheckMethod: TCheckMethod);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy(); override;

    function TesteForm: TForm;

    procedure CheckEnum();
    procedure CreateLookup();
    procedure ExitButton(Sender: TObject);
    procedure SetFormForEdit(const pForm: TForm);
    procedure AddLeftTableForm(const pForm: TForm);
    procedure AddFilterLookup(const pFilterLookup: THButtonedEdit);

    property GetDirectory: Boolean read FGetDirectory write FGetDirectory;
    property DataBaseRegisters: Boolean read FDataBaseRegisters write FDataBaseRegisters;
    property OnClickLookup: TRightClick read FRightClick write FRightClick;
    property ButtonClicked: Boolean read FButtonClicked write FButtonClicked;
  published
    property IndexFields: string read GetIndexFields write SetIndexFields;
    property Table: string read GetTable write SetTable;
    property Lookup: Boolean read GetLookup write SetLookup;
    property Field: string read GetField write SetField;
    property Filter: string read GetFilter write SetFilter;
    property AvoidSelections: Boolean read FAvoidSelections write FAvoidSelections;
    property isNumber: Boolean read FIsNumber write FIsNumber;
    property isAlfa: Boolean read FAlfa write FAlfa;
    property isFloat: Boolean read FIsFloat write FIsFloat;
    property OpenDialog: Boolean read FOpenDialog write FOpenDialog;
    property DataBaseTable: string read FDataBaseTable write FDataBaseTable;
    property DataBaseField: string read FDataBaseField write FDataBaseField;
    property Required: Boolean read FRequired write FRequired;
    property ENumerator: string read FENumerator write FENumerator;
  end;

procedure Register;

implementation

uses
  {$WARN UNIT_PLATFORM OFF}
  Vcl.Graphics, Vcl.Imaging.pngimage, System.Variants, System.Contnrs, oMensagem,
  System.SysUtils, Vcl.FileCtrl, u000cad, o998lsf, Grids, oQuery, Data.DB;

procedure Register;
begin
  RegisterComponents('Samples', [THButtonedEdit]);
end;

{ THButtonedEdit }

procedure THButtonedEdit.CheckEnum;
begin
  if (Assigned(FValueList)) then
   FValueList.Close;
end;

procedure THButtonedEdit.CheckMethod(const pCheckMethod: TCheckMethod);
var
  xType: TRttiType;
  xMethod: TMethod;
  xProcedure: TProcedure;
  xRttiMethod: TRttiMethod;
  xContext: TRttiContext;
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

  xType := xContext.GetType(FForm.ClassType);
  xRttiMethod :=  xType.GetMethod(Self.Name + xCheck);

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

function THButtonedEdit.CheckValueFieds(out pValue: string): Boolean;
var
  xQuery: THQuery;
  xComando: string;
  i: Integer;
  xValue: string;
  xText: string;
  x998lsf: T998LSF;
  xFim: Boolean;
  xNewText: string;
begin
  Result := False;
  xFim := False;
  xNewText := EmptyStr;

  if (FLookup) and IsNull(FENumerator) and (not(IsNull(Text)) or (Self.Required)) then
  begin
    xQuery := THQuery.CreatePersonalizado();
    try
      xComando := Format('SELECT 1 FROM %s WHERE %s = ', [Table, Field]);

      if (FAvoidSelections) then
      begin
        if (FAlfa) then
          xComando := xComando + Format('''%s''', [Text])
        else
          xComando := xComando + Format('%s', [Text]);

        xQuery.Command := xComando;
        xQuery.Open;

        pValue := Text;
        Result := (xQuery.IsEmpty);
        xQuery.Close;
      end
      else
      begin
        xText := StringReplace(Text, '''', '', [rfReplaceAll]);

        while not(xFim) do
        begin
          xValue := EmptyStr;
          xComando := Format('SELECT 1 FROM %s WHERE %s = ', [Table, Field]);

          for i := 1 to High(xText) do
          begin
            if not(AnsiSameText(xText[i], ',')) then
            begin
              xValue := xValue + xText[i];

              if (i >= High(xText)) and not(AnsiSameText(xText[i], ',')) then
              begin
                xFim := True;

                if (FAlfa) then
                  xComando := xComando + Format('''%s''', [xValue])
                else
                  xComando := xComando + Format('%s', [xValue]);
              end;
            end
            else
            begin
              if (FAlfa) then
                xComando := xComando + Format('''%s''', [xValue])
              else
                xComando := xComando + Format('%s', [xValue]);

              Delete(xText, 1, Length(xValue) +1);
              Break;
            end;
          end;

          if not(IsNull(xNewText)) then
          begin
            if (FAlfa) then
              xNewText := xNewText + ',''' + xValue + ''''
            else
              xNewText := xNewText + ',' + xValue;
          end
          else
          begin
            if (FAlfa) then
              xNewText := '''' + xValue + ''''
            else
              xNewText := xValue;
          end;

          xQuery.Reset;
          xQuery.Command := xComando;
          xQuery.Open;

          pValue := xValue;
          Result := (xQuery.IsEmpty);
          xQuery.Close;

          if Result then
            Break;
        end;

        Self.Text := xNewText;
      end;
    finally
      FreeAndNil(xQuery);
    end;
  end
  else
  if not(IsNull(FENumerator)) and Assigned(FValueList) and (FValueList.Closed) then
  begin
     x998lsf := nil;
    try
      pValue := Text;
      x998lsf := T998LSF.Create;
      x998lsf.LSTNAM := FENumerator;
      x998lsf.KEYNAM := Text;
      x998lsf.Open();

      Result := x998lsf.IsEmpty;
    finally
      FreeAndNil(x998lsf);
    end;
  end;
end;

procedure THButtonedEdit.Value(const pKey: String);
var
  xChar, xDiv : String;
  i: Integer;
begin
  xDiv := '1';
  for i := 1 to 2 do
    xDiv := xDiv + '0';

  xChar := iff(pKey = #8, copy(Self.Text, 1, length(Self.Text) -1), Self.Text + pKey);

  While (pos(',', xChar) > 0) or (pos('.', xChar) > 0) do
  begin
    Delete(xChar, pos('.', xChar), 1);
    Delete(xChar, pos(',', xChar), 1);
  end;

  Self.MaxLength := pred(50);
  Self.Text := Format('%*.*n',[50,2,StrToFloat(xChar)/StrToInt(xDiv)]);
  Self.SelStart := length(Self.text)+1;
end;

procedure THButtonedEdit.AddFilterLookup(const pFilterLookup: THButtonedEdit);
begin
  FIterator.Add(pFilterLookup);
end;

procedure THButtonedEdit.AddLeftTableForm(const pForm: TForm);
begin
  FLeftTable := pForm;
end;

procedure THButtonedEdit.CallLookup(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_F3) then
    RightDataClick(Self);
end;

constructor THButtonedEdit.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  FIterator := TIterador.Create;
  Self.OnKeyUp := CallLookup;
  Self.OnExit := ExitButton;
  Self.OnKeyPress := KeyPressButton;
  Self.OnEnter := EnterButton;
  FForm := TForm(AOwner);

  FOpenDialog := False;
  FButtonClicked := False;
end;

procedure THButtonedEdit.CreateLookup();
var
  xImage: TImageList;
  xBtmp: TBitmap;
begin
  if (FLookup) then
    FGetDirectory := True;

  Self.RightButton.ImageIndex := 0;
  Self.RightButton.PressedImageIndex := 1;
  Self.RightButton.Visible := FLookup;
  Self.OnRightButtonClick := RightDataClick;

  xBtmp := TBitmap.Create;
  xImage := TImageList.Create(nil);
  xBtmp.Handle := LoadBitmap(HInstance, 'lupa');
  xImage.Add(xBtmp, nil);

  xBtmp.Handle := LoadBitmap(HInstance, 'lupa2');
  xImage.Add(xBtmp, nil);

  Self.LeftButton.ImageIndex := 2;
  Self.LeftButton.PressedImageIndex := 3;
  Self.LeftButton.Visible := FDataBaseRegisters;
  Self.OnLeftButtonClick := LeftDataClick;

  xBtmp.Handle := LoadBitmap(HInstance, 'flecha');
  xImage.Add(xBtmp, nil);

  xBtmp.Handle := LoadBitmap(HInstance, 'flecha2');
  xImage.Add(xBtmp, nil);

  if ((FDataBaseRegisters) or (FLookup)) then
  begin
    Self.Images := xImage;

    if not(IsNull(FENumerator)) then
      CreateValueList
    else
    if not(FOpenDialog) then
      FPesHen := TFPesHen.Create(nil);
  end;
end;

procedure THButtonedEdit.CreateValueList;
var
  x998lsf: T998LSF;
begin
  x998lsf := nil;
  try
    x998lsf := T998LSF.Create;
    FValueList := THValueListEditor.Create(Self);
    FValueList.Parent := Self.Parent;
    FValueList.Form := FForm;
    FValueList.Name := 'LookupEnum'+ Self.Name;

    x998lsf.LSTNAM := FENumerator;
    x998lsf.PropertyForSelect(['LSTNAM']);
    x998lsf.Open(False);

    while (x998lsf.Next) do
      FValueList.AddRow(x998lsf.KEYNAM, x998lsf.ValKey);
  finally
    FreeAndNil(x998lsf);
  end;
end;

destructor THButtonedEdit.Destroy;
begin
  inherited;
end;

procedure THButtonedEdit.EnterButton(Sender: TObject);
begin
  CheckMethod(cmEnter);
end;

procedure THButtonedEdit.ExitButton(Sender: TObject);
var
  xValue: string;
begin
  FButtonClicked := True;
  UltimoCaracter(FString, ',', True);

  if not(FAlfa) and not(FIsFloat) then
  begin
    FString := Self.Text;
    Self.Text := FString;
  end;

  if (CheckValueFieds(xValue)) then
  begin
    CMessage(Format('Valor: "%s", incorreto para o campo!', [xValue]), mtWarning);
    Self.SetFocus;
  end
  else
    CheckMethod(cmExit);
end;

function THButtonedEdit.Filters: string;
var
  i: Integer;
begin
  Result := iff(not(IsNull(Filter)), ' AND ', EmptyStr);

  for i := 0 to pred(FIterator.Count) do
    if not(IsNull(THButtonedEdit(FIterator[i]).Text)) then
      Result := Result + (THButtonedEdit(FIterator[i]).Field + ' IN (' + THButtonedEdit(FIterator[i]).Text) + ') AND ';

  UltimoCaracter(Result, 'AND ', True, 4)
end;

function THButtonedEdit.GetField: string;
begin
  Result := FField;
end;

function THButtonedEdit.GetFilter: string;
begin
  Result := FFilter;
end;

function THButtonedEdit.GetIndexFields: string;
begin
  Result := FIndexFields;
end;

function THButtonedEdit.GetLookup: Boolean;
begin
  Result := FLookup;
end;

function THButtonedEdit.GetTable: string;
begin
  Result := FTable;
end;

procedure THButtonedEdit.KeyPressButton(Sender: TObject; var Key: Char);
begin
  if not(FAlfa) then
  begin
    FString := Self.Text;
    if (UltimoCaracter(FString, ',', True) and AnsiSameText(Key,',')) or ((Length(FString) = 0) and AnsiSameText(Key,',')) then
      Key := #0
    else
    if (FIsNumber) or (FIsFloat) then
    begin
      if not(CharInSet(key, ['0'..'9',',',#8])) then
        key := #0;

      if (FIsFloat) then
        Value(key);
    end
    else
    begin
      if not(CharInSet(key, ['A' .. 'Z', 'a' .. 'z', 'à'..'ú', 'À'..'Ú', #8])) then
        key := #0;
    end;
  end;
end;

procedure THButtonedEdit.LeftDataClick(Sender: TObject);
begin
  FButtonClicked := True;
  FPesHen.AddLeftTableForm(FLeftTable);
  FPesHen.ShowLeftTableData();
end;

procedure THButtonedEdit.RightDataClick(Sender: TObject);
var
  xDialog: TOpenDialog;
  xDiretorio: string;
begin
  FButtonClicked := True;

  if not(Assigned(FValueList)) then
  begin
    if (FLookup) and not(FOpenDialog) then
    begin
      FPesHen.ShowData(FTable, FField, FIndexFields,  FFilter + Filters);

      if (FAvoidSelections) then
      begin
        if not(IsNull(String(FPesHen.Return))) then
          Self.Text := StringReplace(String(FPesHen.Return), Chr(39), '', [rfReplaceAll]);
      end
      else
        Self.Text := iff(not(IsNull(Self.Text)), Self.Text +','+ String(FPesHen.Return), String(FPesHen.Return));
    end
    else
    if Assigned(FPesHen) then
      FPesHen.Free;

    if (FOpenDialog) and (FLookup) then
    begin
      xDialog := TOpenDialog.Create(Self);
      try
        if (FGetDirectory) then
        begin
          SelectDirectory('Selecione uma pasta', 'C:\', xDiretorio);
          Self.Text := xDiretorio;
        end
        else
        begin
          xDialog.Filter := 'Tipos |*.RET;*.TXT';

          //xDialog.InitialDir := GetCurrentDir;
          xDialog.Execute();

          if (xDialog.Files.Count > 0) then
            Self.Text := xDialog.Files[0];
        end;
      finally
        FreeAndNil(xDialog);
      end;
    end;
  end
  else
    FValueList.ShowEnum(Self);

  if (Assigned(FRightClick)) and (Assigned(FValueList)) then
    FRightClick(Self, FValueList.Name);
end;

procedure THButtonedEdit.SetField(const Value: string);
begin
  FField := Value;
end;

procedure THButtonedEdit.SetFilter(const Value: string);
begin
  FFilter := Value;
end;

procedure THButtonedEdit.SetFormForEdit(const pForm: TForm);
begin
  if not(Assigned(FForm)) then
    FForm := pForm;
end;

procedure THButtonedEdit.SetIndexFields(const Value: string);
begin
  FIndexFields := Value;
end;

procedure THButtonedEdit.SetLookup(const Value: Boolean);
begin
  FLookup := Value;
end;

procedure THButtonedEdit.SetTable(const Value: string);
begin
  FTable := Value;
end;

function THButtonedEdit.TesteForm: TForm;
begin
  Result := FForm;
end;

end.
