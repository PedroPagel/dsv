unit oValueListEditor;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.Grids, Vcl.ValEdit, Vcl.Forms,
  Vcl.ExtCtrls, Winapi.Windows, Vcl.DBGrids;

type
  TEnumPress = procedure(Value: Variant) of Object;

  THValueListEditor = class(TValueListEditor)
  private
    { Private declarations }
    FCanClose: Boolean;
    FClosed: Boolean;
    FButtonParent: string;
    FButton: TComponent;
    FNoEnter: Boolean;
    FForm: TForm;
    FEnumPress: TEnumPress;

    procedure EnumClick(Sender: TObject);
    procedure EnumEnter(Sender: TObject);
    procedure EnumExit(Sender: TObject);
    procedure EnumDblClick(Sender: TObject);
    procedure KeyPressEnum(Sender: TObject; var Key: Char);
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy(); override;

    function Closed: Boolean;

    procedure Close(const forceclose: Boolean = False);
    procedure ShowEnum(const pComponent: TButtonedEdit);
    procedure ShowGridEnum(const pRect: TRect);
    procedure AddRow(const pName, pValue: string);

    property CanClose: Boolean read FCanClose write FCanClose;
    property Form: TForm read FForm write FForm;
    property ButtonParent: string read FButtonParent write FButtonParent;
    property OnEnumPres: TEnumPress read FEnumPress write FEnumPress;
  published
    { Published declarations }
  end;

procedure Register;

implementation

uses
  oBase, oButtonedEdit, oPanel, System.Rtti, oDataSetGrid;

procedure Register;
begin
  RegisterComponents('Samples', [THValueListEditor]);
end;

{ THValueListEditor }

procedure THValueListEditor.AddRow(const pName, pValue: string);
begin
  Self.InsertRow(pName, pValue, True)
end;

procedure THValueListEditor.Close(const forceclose: Boolean = False);
begin
  if (FNoEnter) then
    FCanClose := True;

  if (FCanClose) then
  begin
    Self.Visible := False;

    if (Self.GetParentComponent.ClassType <> TDataSetGrid) then
    begin
      THButtonedEdit(FButton).SetFocus;
      THButtonedEdit(FButton).ButtonClicked := False;
    end;
  end;

  if (forceclose) then
    Self.Visible := False;

  FClosed := True;
end;

function THValueListEditor.Closed: Boolean;
begin
  Result := FClosed;
end;

constructor THValueListEditor.Create(AOwner: TComponent);
begin
  inherited;

  FButton := THButtonedEdit(AOwner);
  Self.OnClick := EnumClick;
  Self.OnEditButtonClick := EnumClick;

  Self.TitleCaptions[0] := 'Código';
  Self.TitleCaptions[1] := 'Valor';

  FClosed := True;
  Self.Visible := False;
  Self.OnKeyPress := KeyPressEnum;
  Self.OnEnter := EnumEnter;
  Self.OnExit := EnumExit;
  Self.OnMouseEnter := EnumEnter;
  Self.OnMouseLeave := EnumExit;
  Self.OnDblClick := EnumDblClick;

  Self.Options := [goFixedVertLine,goFixedHorzLine,goVertLine,goHorzLine, goTabs, goDrawFocusSelected,
  goColSizing,goAlwaysShowEditor,goThumbTracking, goRowSelect, goFixedColClick];
end;

destructor THValueListEditor.Destroy;
begin
  inherited;
end;

procedure THValueListEditor.EnumClick(Sender: TObject);
begin
  FCanClose := False;
  FClosed := False;
end;

procedure THValueListEditor.EnumDblClick(Sender: TObject);
begin
  if (Self.GetParentComponent.ClassType <> TDataSetGrid) then
  begin
    THButtonedEdit(FButton).Text := Self.GetCell(0, Self.Row);
    Self.Visible := False;
    THButtonedEdit(FButton).SetFocus;
    FClosed := True;
  end
  else
  if Assigned(FEnumPress) then
  begin
    FEnumPress(Self.GetCell(0, Self.Row));
    Self.Visible := False;
    FClosed := True;
  end;
end;

procedure THValueListEditor.EnumEnter(Sender: TObject);
begin
  FCanClose := False;
  FNoEnter := False;
  FClosed := False;
end;

procedure THValueListEditor.EnumExit(Sender: TObject);
begin
  FCanClose := True;
  FNoEnter := True;
  FClosed := True;
end;

procedure THValueListEditor.KeyPressEnum(Sender: TObject; var Key: Char);
begin
  if (Ord(Key) = 27) or (Ord(Key) = 9) then
  begin
    Self.Visible := False;
    THButtonedEdit(FButton).SetFocus;
    THButtonedEdit(FButton).ButtonClicked := False;
  end;

  if (Ord(key) = 13) then
  begin
    if (Self.GetParentComponent.ClassType <> TDataSetGrid) then
    begin
      THButtonedEdit(FButton).Text := Self.GetCell(0, Self.Row);
      THButtonedEdit(FButton).SetFocus;
      Self.Visible := False;
    end
    else
    if Assigned(FEnumPress) then
    begin
      FEnumPress(Self.GetCell(0, Self.Row));
      Self.Visible := False;
      FClosed := True;
    end;
  end;
end;

procedure THValueListEditor.ShowEnum(const pComponent: TButtonedEdit);
begin
  FClosed := False;

  Self.Height := (Self.RowCount * 20);
  Self.Top := pComponent.Top + 21;
  Self.Left := pComponent.Left;
  Self.Visible := iff(Self.Visible, False, True);

  if (Self.Visible) then
    Self.SetFocus;

  FCanClose := True;
  FNoEnter := True;
end;

procedure THValueListEditor.ShowGridEnum(const pRect: TRect);
begin
  Self.Height := (Self.RowCount * 20);
  Self.Top := pRect.Top + 18;
  Self.Left := pRect.Left;
  Self.Visible := iff(Self.Visible, False, True);
  Self.BringToFront;

  if (Self.Visible) then
    Self.SetFocus;

  FCanClose := True;
  FNoEnter := True;

  Self.Row := 1;
end;

end.
