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

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SairClick(Sender: TObject);
    procedure OKClick(Sender: TObject);
    procedure FGridPesDblClick(Sender: TObject);
  private
    FField: string;
    FRetorno: Variant;
  public
    function Return(): Variant;
    procedure ShowData(const pTable: string; const pField: string; const pIndexFields: string = ''; const pFilter: string = '');
  end;

var
  FPesHen: TFPesHen;

implementation

{$R *.dfm}

procedure TFPesHen.FGridPesDblClick(Sender: TObject);
begin
  Self.OK.OnClick(Self);
end;

procedure TFPesHen.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FGridPes.Finalize();
end;

procedure TFPesHen.OKClick(Sender: TObject);
begin
  FRetorno := FGridPes.Selected(FField);
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
  FGridPes.Init(pTable, Self, pIndexFields, pFilter);
  FGridPes.CreateDataSet;
  FGridPes.ShowSearch();

  ShowModal;
end;

end.
