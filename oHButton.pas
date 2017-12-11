unit oHButton;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.StdCtrls, Vcl.Dialogs,
  Vcl.Forms, Vcl.Menus;

type
  tButtonType = (btn_NoClick, btn_OK, btn_Cancel, btn_Yes, btn_No, btn_All, btn_Detail);

  TCButton = class(TButton)
  private
    { Private declarations }
    FForm: Vcl.Forms.TForm;
    FType: tButtonType;
    FCheckClick: tButtonType;
    FPopup: Boolean;

    procedure AfterClick(Sender: TObject);
    procedure PopupClick(Sender: TObject);
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;

    function CheckClick(): tButtonType;
  published
    constructor CreatePersonalizado(AOwner: TForm; const pType: tButtonType);
    property PopupMenu: Boolean read FPopup write FPopup;
  end;

procedure Register;

implementation

uses
  System.Types, oBase;

procedure Register;
begin
  RegisterComponents('Samples', [TCButton]);
end;

{ THButton }

procedure TCButton.AfterClick(Sender: TObject);
var
  i: Integer;
begin
  FCheckClick := FType;

  if (FCheckClick = btn_Detail) then
  begin
    for i := 0 to pred(FForm.ComponentCount) do
    begin
      if (FForm.Components[i] is TMemo) then
      begin
        if (TMemo(FForm.Components[i]).Visible) then
        begin
          FForm.Height := 150;
          TMemo(FForm.Components[i]).Visible := False;
        end
        else
        begin
          TMemo(FForm.Components[i]).Visible := True;
          FForm.Height := 300;
        end;
      end;
    end;
  end
  else
    FForm.Close;
end;

function TCButton.CheckClick: tButtonType;
begin
  Result := FCheckClick;
end;

constructor TCButton.Create(AOwner: TComponent);
begin
  inherited;

  Self.OnClick := PopupClick;
end;

constructor TCButton.CreatePersonalizado(AOwner: TForm; const pType: tButtonType);
begin
  inherited Create(AOwner);

  FForm := AOwner;
  FType := pType;
  Self.OnClick := AfterClick;
  FCheckClick := btn_NoClick;
end;

procedure TCButton.PopupClick(Sender: TObject);
begin
  if (Self.PopupMenu) then
    with Self.ClientToScreen(point(0, 0)) do
      Self.DropDownMenu.Popup(X, Y + Self.Height);
end;

end.
