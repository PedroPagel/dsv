unit oButtonedEdit;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.StdCtrls, Vcl.ExtCtrls, uPesHen,
  Winapi.Windows, Vcl.ComCtrls, oBase;

type

  THButtonedEdit = class(TButtonedEdit)
  private
    { Private declarations }
    FTable: string;
    FIndexFields: string;
    FLookup: Boolean;
    FPesHen: TFPesHen;
    FField: string;
    FFilter: string;
    FAvoidSelections: Boolean;
    FIterator: TIterador;

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
    procedure LookupData(Sender: TObject);

    function Filters(): string;
    procedure CallLookup(Sender: TObject; var Key: Word; Shift: TShiftState);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy(); override;

    procedure CreateLookup();
    procedure AddFilterLookup(const pFilterLookup: THButtonedEdit);
  published
    property IndexFields: string read GetIndexFields write SetIndexFields;
    property Table: string read GetTable write SetTable;
    property Lookup: Boolean read GetLookup write SetLookup;
    property Field: string read GetField write SetField;
    property Filter: string read GetFilter write SetFilter;
    property AvoidSelections: Boolean read FAvoidSelections write FAvoidSelections;
  end;

procedure Register;

implementation

uses
  Vcl.Graphics, Vcl.Imaging.pngimage, Vcl.Forms, System.Variants, System.Contnrs;

procedure Register;
begin
  RegisterComponents('Samples', [THButtonedEdit]);
end;

{ THButtonedEdit }

procedure THButtonedEdit.AddFilterLookup(const pFilterLookup: THButtonedEdit);
begin
  FIterator.Add(pFilterLookup);
end;

procedure THButtonedEdit.CallLookup(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_F3) then
    LookupData(Self);
end;

constructor THButtonedEdit.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  FIterator := TIterador.Create;
  Self.OnKeyUp := CallLookup;
end;

procedure THButtonedEdit.CreateLookup;
var
  xImage: TImageList;
  xBtmp: TBitmap;
begin
  if (FLookup) then
  begin
    Self.RightButton.ImageIndex := 0;
    Self.RightButton.Visible := True;
    Self.OnRightButtonClick := LookupData;

    xBtmp := TBitmap.Create;
    xImage := TImageList.Create(nil);
    xBtmp.Handle := LoadBitmap(HInstance, 'lupa');
    xImage.Add(xBtmp, nil);
    Self.Images := xImage;

    FPesHen := TFPesHen.Create(nil);
  end;
end;

destructor THButtonedEdit.Destroy;
begin
  inherited;

  FreeAndNil(FIterator);
end;

function THButtonedEdit.Filters: string;
var
  i: Integer;
begin
  Result := iff(FIterator.Count > 0, ' AND ', EmptyStr);

  for i := 0 to pred(FIterator.Count) do
    Result := Result + (THButtonedEdit(FIterator[i]).Field + ' = ' + THButtonedEdit(FIterator[i]).Text) + ' AND ';

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

procedure THButtonedEdit.LookupData(Sender: TObject);
begin
  if (FLookup) then
  begin
    FPesHen.ShowData(FTable, FField, FIndexFields, FFilter + Filters);

    if (FAvoidSelections) then
      Self.Text := String(FPesHen.Return)
    else
      Self.Text := iff(not(IsNull(Self.Text)), Self.Text +','+ String(FPesHen.Return), String(FPesHen.Return));
  end
  else
  if Assigned(FPesHen) then
    FPesHen.Free;
end;

procedure THButtonedEdit.SetField(const Value: string);
begin
  FField := Value;
end;

procedure THButtonedEdit.SetFilter(const Value: string);
begin
  FFilter := Value;
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

end.
