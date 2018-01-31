unit u000bas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, oPanel,
  Vcl.StdCtrls, oMemo, oButtonedEdit, oDateTimePicker, oBase, oDataSetGrid;

type
  TFORMBASE = class(TForm)
    HPanel1: THPanel;
    HPanel2: THPanel;
    HPanel3: THPanel;
    Mostrar: TButton;
    Cancelar: TButton;
    Sair: TButton;
    Processar: TButton;
    Marcar: TButton;
    Desmarcar: TButton;
    Excluir: TButton;
    procedure FormCreate(Sender: TObject);
    procedure SairClick(Sender: TObject);
    procedure FormMouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
  private
    { Private declarations }
    FUltimoComponente: string;
    FButtonEdit: string;

    procedure LookupClick(Sender: TObject; const pObjectName: string);
  public
    { Public declarations }
  end;

var
  FORMBASE: TFORMBASE;

implementation

{$R *.dfm}

procedure TFORMBASE.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  FUltimoComponente := EmptyStr;
  FButtonEdit  := EmptyStr;

  for i := 0 to pred(Self.ComponentCount) do
  begin
    if (Self.Components[i].ClassType = THDateTimePicker) then
      THDateTimePicker(Self.Components[i]).Init;

    if (Self.Components[i].ClassType = THButtonedEdit) then
      if THButtonedEdit(Self.Components[i]).Lookup then
      begin
        THButtonedEdit(Self.Components[i]).CreateLookup;
        THButtonedEdit(Self.Components[i]).OnClickLookup := LookupClick;
      end;
  end;
end;

procedure TFORMBASE.FormMouseActivate(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
var
  i: Integer;
  xGrid: TDataSetGrid;
begin
  if Assigned(ActiveControl) and not(IsNull(FButtonEdit)) and
    ((AnsiSameText(FButtonEdit, ActiveControl.Name)) or
    (AnsiSameText(FUltimoComponente, ActiveControl.Name))) then
    THButtonedEdit(Self.FindComponent(FButtonEdit)).CheckEnum;

  if Assigned(ActiveControl) then
  begin
    for i := 0 to pred(Self.ComponentCount) do
    begin
      if (TDataSetGrid = Self.Components[i].ClassType) then
      begin
        xGrid := TDataSetGrid(Self.FindComponent(Self.Components[i].Name));

        if AnsiSameText(xGrid.LookupGridClick, ActiveControl.Name) then
        begin
          xGrid.CheckEnum(ActiveControl.Name);
          Break;
        end;
      end;
    end;
  end;
end;

procedure TFORMBASE.LookupClick(Sender: TObject; const pObjectName: string);
begin
  FUltimoComponente := pObjectName;
  FButtonEdit := THButtonedEdit(Sender).Name;
end;

procedure TFORMBASE.SairClick(Sender: TObject);
begin
  Close;
end;

end.

