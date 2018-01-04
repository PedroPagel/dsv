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
    EFiltro: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    CBFiltrar: TCheckBox;
    CBFiltros: TComboBox;
    CBCampos: TComboBox;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SairClick(Sender: TObject);
    procedure OKClick(Sender: TObject);
    procedure FGridPesDblClick(Sender: TObject);
    procedure CBFiltrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CBCamposChange(Sender: TObject);
  private
    FField: string;
    FieldName: string;
    FTable: string;
    FRetorno: Variant;
    FLeftClick: Boolean;
    FLeftTable: TForm;
    FCampos: TStringList;
  public
    function Return(): Variant;
    procedure AddLeftTableForm(const pForm: TForm);
    procedure ShowLeftTableData();
    procedure ShowData(const pTable: string; const pField: string; const pIndexFields: string = ''; const pFilter: string = '');
  published
    procedure FGridPesTitleClick(Column: TColumn);
    procedure FGridPesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  end;

var
  FPesHen: TFPesHen;

implementation

uses
  oBase, oMensagem, u000cad, o998fld;

{$R *.dfm}

procedure TFPesHen.AddLeftTableForm(const pForm: TForm);
begin
  FLeftTable := pForm;
end;

procedure TFPesHen.CBCamposChange(Sender: TObject);
begin
  FieldName := FCampos[CBCampos.ItemIndex];
end;

procedure TFPesHen.CBFiltrarClick(Sender: TObject);
begin
  FGridPes.Like := (CBFiltros.ItemIndex = 1);
  EFiltro.Enabled := not(CBFiltrar.Checked);
  FGridPes.Filter(EFiltro.Text, FieldName, CBFiltrar.Checked);
end;

procedure TFPesHen.FGridPesDblClick(Sender: TObject);
begin
  if not(FGridPes.GridTitleClick()) then
    Self.OK.OnClick(Self);
end;

procedure TFPesHen.FGridPesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) then
    if (Key = 13) then
      Self.OKClick(Sender);

  if (Key = 13) then
    Self.OKClick(Sender);
end;

procedure TFPesHen.FGridPesTitleClick(Column: TColumn);
begin
   if (Column.Field.DataType in [ftDate, ftTime, ftDateTime]) then
   begin
     CBFiltros.Enabled := False;
     CBFiltros.ItemIndex := 0;
   end
   else
    CBFiltros.Enabled := True;
end;

procedure TFPesHen.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FGridPes.Finalize();
  FreeAndNil(FCampos);
end;

procedure TFPesHen.FormShow(Sender: TObject);
var
  x998FLD: T998FLD;
begin
  CBCampos.Clear;

  FGridPes.SetFocus;
  FGridPes.DisableEnter := True;
  FCampos := TStringList.Create;

  x998FLD := T998FLD.Create;
  try
    x998FLD.TblNam := FTable;
    x998FLD.Open();

    while (x998FLD.Next) do
    begin
      CBCampos.Items.Add(x998FLD.LgnTit);
      FCampos.Add(x998FLD.FldNam);
    end;

    CBCampos.ItemIndex := 0;
    FieldName := FCampos[0];
  finally
    FreeAndNil(x998FLD);
  end;
end;

procedure TFPesHen.OKClick(Sender: TObject);
begin
  if (FLeftClick) then
    TF000CAD(FLeftTable).ValidarCamposChave(FGridPes)
  else
    FRetorno := FGridPes.Selected(FField);

  FLeftClick := False;
  Close;
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
  FTable := pTable;
  FGridPes.Init(FTable, Self, pIndexFields, pFilter);
  FGridPes.OrderTitles := True;
  FGridPes.CreateDataSet;

  CBFiltros.ItemIndex := 0;

  if (FGridPes.ShowSearch) then
    ShowModal
  else
    CMessage('Não houve informações a listar!', mtErrorInform);
end;

procedure TFPesHen.ShowLeftTableData;
var
  xForm: TF000CAD;
begin
  xForm := TF000CAD(FLeftTable);

  FGridPes.Init(xForm.NomeClasse, xForm, '', '');
  FGridPes.OrderTitles := True;
  FGridPes.CreateDataSet;
  FTable := xForm.NomeClasse;

  CBFiltros.ItemIndex := 0;
  FLeftClick := True;

  if (FGridPes.ShowSearch) then
    ShowModal
  else
  begin
    FLeftClick := False;
    CMessage('Não houve informações a listar!', mtErrorInform);
  end;
end;

end.
