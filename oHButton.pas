unit oHButton;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.StdCtrls, Vcl.Dialogs, Vcl.Forms;

type
  tButtonType = (btn_OK, btn_Cancel, btn_Yes, btn_No, btn_All, btn_Detail);

  TCButton = class(TButton)
  private
    { Private declarations }
    FForm: Vcl.Forms.TForm;
    FType: tButtonType;
    FCheckClick: tButtonType;

    procedure AfterClick(Sender: TObject);
  protected
    { Protected declarations }
  public
    { Public declarations }
    function CheckClick(): tButtonType;
  published
    constructor CreatePersonalizado(AOwner: TForm; const pType: tButtonType);
  end;

procedure Register;

implementation

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

constructor TCButton.CreatePersonalizado(AOwner: TForm; const pType: tButtonType);
begin
  inherited Create(AOwner);

  FForm := AOwner;
  FType := pType;
  Self.OnClick := AfterClick;
  FillChar(FCheckClick, SizeOf(FCheckClick), 0);
end;

end.
