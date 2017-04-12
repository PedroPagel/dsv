unit oButtonedEdit;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.StdCtrls, Vcl.ExtCtrls, uPesHen,
  Winapi.Windows, Vcl.ComCtrls;

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
  public
    { Public declarations }
    procedure LookupData();
    procedure CreateLookup();
  published
    property IndexFields: string read GetIndexFields write SetIndexFields;
    property Table: string read GetTable write SetTable;
    property Lookup: Boolean read GetLookup write SetLookup;
    property Field: string read GetField write SetField;
    property Filter: string read GetFilter write SetFilter;
  end;

procedure Register;

implementation

uses
  Vcl.Graphics, oBase, Vcl.Imaging.pngimage, Vcl.Forms;

procedure Register;
begin
  RegisterComponents('Samples', [THButtonedEdit]);
end;

{ THButtonedEdit }

procedure THButtonedEdit.CreateLookup;
var
  xImage: TImageList;
  xBtmp: TBitmap;
begin
  if (FLookup) then
  begin
    xBtmp := TBitmap.Create;
    xImage := TImageList.Create(nil);
    xBtmp.Handle := LoadBitmap(HInstance, 'lupa');
    xImage.Add(xBtmp, nil);
    Self.Images := xImage;

    FPesHen := TFPesHen.Create(NIL);
  end;
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

procedure THButtonedEdit.LookupData;
begin
  if (FLookup) then
  begin
    FPesHen.ShowData(FTable, FField, FIndexFields, FFilter);
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
