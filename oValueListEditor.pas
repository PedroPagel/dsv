unit oValueListEditor;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.Grids, Vcl.ValEdit, Vcl.Forms,
  Vcl.ExtCtrls;

type
  THValueListEditor = class(TValueListEditor)
  private
    { Private declarations }
    FCanClose: Boolean;
    FButtonParent: string;
    FOwner: TComponent;
    FNoEnter: Boolean;

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

    procedure Close;
    procedure ShowEnum(const pComponent: TButtonedEdit);
    procedure AddRow(const pName, pValue: string);

    property CanClose: Boolean read FCanClose write FCanClose;
    property ButtonParent: string read FButtonParent write FButtonParent;
  published
    { Published declarations }
  end;

procedure Register;

implementation

uses
  Winapi.Windows, oBase, oButtonedEdit, oPanel;

procedure Register;
begin
  RegisterComponents('Samples', [THValueListEditor]);
end;

{ THValueListEditor }

procedure THValueListEditor.AddRow(const pName, pValue: string);
begin
  Self.InsertRow(pName, pValue, True)
end;

procedure THValueListEditor.Close;
begin
  if (FNoEnter) then
    FCanClose := True;

  if (FCanClose) then
  begin
    Self.Visible := False;
    THButtonedEdit(FOwner).SetFocus;
  end;
end;

constructor THValueListEditor.Create(AOwner: TComponent);
begin
  inherited;

  FOwner := THButtonedEdit(AOwner);
  Self.OnClick := EnumClick;
  Self.OnEditButtonClick := EnumClick;

  Self.TitleCaptions[0] := 'Código';
  Self.TitleCaptions[1] := 'Valor';

  Self.Visible := False;
  Self.OnKeyPress := KeyPressEnum;
  Self.OnEnter := EnumEnter;
  Self.OnExit := EnumExit;
  Self.OnMouseEnter := EnumEnter;
  Self.OnMouseLeave := EnumExit;
  Self.OnDblClick := EnumDblClick;

  Self.Options := [goFixedVertLine,goFixedHorzLine,goVertLine,goHorzLine, goTabs, goDrawFocusSelected,
  goColSizing,goAlwaysShowEditor,goThumbTracking, goRowSelect, goFixedColClick, goEditing];
end;

destructor THValueListEditor.Destroy;
begin
  inherited;
end;

procedure THValueListEditor.EnumClick(Sender: TObject);
begin
  FCanClose := False;
end;

procedure THValueListEditor.EnumDblClick(Sender: TObject);
begin
  THButtonedEdit(FOwner).Text := Self.GetCell(0, Self.Row);
  Self.Visible := False;
end;

procedure THValueListEditor.EnumEnter(Sender: TObject);
begin
  FCanClose := False;
  FNoEnter := False;
end;

procedure THValueListEditor.EnumExit(Sender: TObject);
begin
  FCanClose := True;
  FNoEnter := True;
end;

procedure THValueListEditor.KeyPressEnum(Sender: TObject; var Key: Char);
begin
  if (Ord(Key) = 27) or (Ord(Key) = 9) then
  begin
    Self.Visible := False;
    THButtonedEdit(FOwner).SetFocus;
  end;

  if (Ord(key) = 13) then
  begin
    THButtonedEdit(FOwner).Text := Self.GetCell(0, Self.Row);
    Self.Visible := False;
  end;
end;

procedure THValueListEditor.ShowEnum(const pComponent: TButtonedEdit);
begin
  Self.Height := (Self.RowCount * 20);
  Self.Top := pComponent.Top + 21;
  Self.Left := pComponent.Left;
  Self.Visible := iff(Self.Visible, False, True);

  if (Self.Visible) then
    Self.SetFocus;

  FCanClose := True;
  FNoEnter := True;
end;

end.
