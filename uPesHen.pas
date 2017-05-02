unit uPesHen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.DB, Datasnap.DBClient, Data.DBXOracle,
  Data.FMTBcd, Data.SqlExpr, Data.Win.ADODB, Datasnap.Provider, oDataSetGrid,
  Vcl.StdCtrls;

type
  TFPesHen = class(TForm)
    Panel1: TPanel;
    FGridPes: TDataSetGrid;
    Panel2: TPanel;
    Sair: TButton;
    OK: TButton;
    ECampo: TEdit;
    EFiltro: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    CBFiltrar: TCheckBox;
    CBFiltros: TComboBox;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SairClick(Sender: TObject);
    procedure OKClick(Sender: TObject);
    procedure FGridPesDblClick(Sender: TObject);
    procedure FGridPesTitleClick(Column: TColumn);
    procedure CBFiltrarClick(Sender: TObject);
  private
    FField: string;
    FieldName: string;
    FRetorno: Variant;
    FOrdenado: Integer;
  public
    function Return(): Variant;
    procedure ShowData(const pTable: string; const pField: string; const pIndexFields: string = ''; const pFilter: string = '');
  end;

var
  FPesHen: TFPesHen;

implementation

{$R *.dfm}

procedure TFPesHen.CBFiltrarClick(Sender: TObject);
begin
  FGridPes.Like := (CBFiltros.ItemIndex = 1);
  EFiltro.Enabled := not(CBFiltrar.Checked);
  FGridPes.Filter(EFiltro.Text, FieldName, CBFiltrar.Checked);
end;

procedure TFPesHen.FGridPesDblClick(Sender: TObject);
begin
  Self.OK.OnClick(Self);
end;

procedure TFPesHen.FGridPesTitleClick(Column: TColumn);
begin
   ECampo.Text := Column.Title.Caption;
   FieldName := Column.FieldName;

   if (Column.Field.DataType in [ftDate, ftTime, ftDateTime]) then
   begin
     CBFiltros.Enabled := False;
     CBFiltros.ItemIndex := 0;
   end
   else
    CBFiltros.Enabled := True;

  Inc(FOrdenado);
  FGridPes.OrderBy(FieldName, (FOrdenado = 1));

  if (FOrdenado = 2) then
    FOrdenado := 0;
end;

procedure TFPesHen.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FGridPes.Finalize();
end;

procedure TFPesHen.OKClick(Sender: TObject);
begin
  if not(FGridPes.GridTitleClick()) then
  begin
    FRetorno := FGridPes.Selected(FField);
    Close;
  end;
end;

function TFPesHen.Return: Variant;
begin
  Result := FRetorno;
end;

procedure TFPesHen.SairClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFPesHen.ShowData(const pTable, pField, pIndexFields, pFilter: string);
begin
  FField := pField;
  FRetorno := EmptyStr;
  FGridPes.Init(pTable, Self, pIndexFields, pFilter);
  FGridPes.CreateDataSet;
  FGridPes.ShowSearch();
  FOrdenado := 0;
  CBFiltros.ItemIndex := 0;
  ShowModal;
end;

end.
