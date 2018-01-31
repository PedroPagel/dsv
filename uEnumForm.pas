unit uEnumForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  oDataSetGrid, Data.DB, oBase;

type
  TFEnumForm = class(TForm)
    Panel1: TPanel;
    FGridEnu: TDataSetGrid;
    procedure FormCreate(Sender: TObject);
    procedure FGridEnuDblClick(Sender: TObject);
    procedure FGridEnuKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FRetorno: string;
    FOnEnumClick: TEnumProcedure;

    procedure OkClick();
    procedure CreateGrid;
  public
    { Public declarations }
    procedure ShowEnum(const enum: string; const windowRect: TRect; const gridRect: TRect);
    procedure EnumClose();

    function Retorno: string;
  published
    property OnEnumClick: TEnumProcedure read FOnEnumClick write FOnEnumClick;
  end;

  TEnumList = class
  private
    FCodEnu: string;
    FVlrEnu: string;
  public
    property CodEnu: string read FCodEnu write FCodEnu;
    property VlrEnu: string read FVlrEnu write FVlrEnu;
  end;

var
  FEnumForm: TFEnumForm;

implementation

uses
  o998lsf;

{$R *.dfm}

procedure TFEnumForm.CreateGrid;
begin
  FGridEnu.Init('R996TRG', Self);
  FGridEnu.AddColumn('CodEnu', 'Código', ftString, 32);
  FGridEnu.AddColumn('VlrEnu', 'Valor', ftString, 250);
  FGridEnu.CreateDataSet;
end;

procedure TFEnumForm.EnumClose();
begin
  if (Self.Visible) then
  begin
    Self.Visible := False;
    Close;
    Abort;
  end;
end;

procedure TFEnumForm.FGridEnuDblClick(Sender: TObject);
begin
  OkClick();
end;

procedure TFEnumForm.FGridEnuKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = 13) then
    OkClick();

  if (Key = 27) then
    EnumClose;
end;

procedure TFEnumForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FGridEnu.Finalize;
  FreeAndNil(FGridEnu);

  Action := caFree;
end;

procedure TFEnumForm.FormCreate(Sender: TObject);
begin
  CreateGrid;
end;

procedure TFEnumForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_ESCAPE) then
    Close;
end;

procedure TFEnumForm.FormShow(Sender: TObject);
begin
  FGridEnu.SetFocus;
  FGridEnu.First;
end;

procedure TFEnumForm.OkClick;
begin
  FRetorno := FGridEnu.Selected('CodEnu');
  Visible := False;

  if Assigned(FOnEnumClick) then
    FOnEnumClick(FRetorno);

  Close;
  Abort;
end;

function TFEnumForm.Retorno: string;
begin
  Result := FRetorno;
end;

procedure TFEnumForm.ShowEnum(const enum: string; const windowRect: TRect; const gridRect: TRect);
var
  x998lsf: T998LSF;
  xList: TEnumList;
  xCount: Integer;
begin
  x998lsf := T998LSF.Create;
  try
    xList := TEnumList.Create;

    x998lsf.LSTNAM := enum;
    x998lsf.Open();
    xCount := x998lsf.Count;

    if not(Assigned(FGridEnu)) then
      CreateGrid();

    FGridEnu.Clear;
    while (x998lsf.Next) do
    begin
      xList.CodEnu := x998lsf.KEYNAM;
      xList.VlrEnu := x998lsf.ValKey;
      FGridEnu.Add(xList);
    end;

    Self.Height := 60 + (25 * xCount);
    Self.Top := windowRect.Top + gridRect.Top + 20;
    Self.Left := windowRect.Left + gridRect.Left;
    Self.Visible := True;
    Self.Show;
  finally
    FreeAndNil(xList);
    FreeAndNil(x998lsf);
  end;
end;

end.
