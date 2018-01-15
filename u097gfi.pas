unit u097gfi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u000cad, oPanel, Vcl.DBCtrls, o097gfi,
  Vcl.StdCtrls, Vcl.ExtCtrls, oButtonedEdit, Vcl.ComCtrls, oDateTimePicker,
  oMemo, Vcl.Grids, Vcl.DBGrids, oDataSetGrid, o097bas;

type
  TF097GFI = class(TF000CAD)
    BECodGfi: THButtonedEdit;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    BEUsuGer: THButtonedEdit;
    BEUsuAlt: THButtonedEdit;
    DTDatGer: THDateTimePicker;
    DTDatAlt: THDateTimePicker;
    BEDesGfi: THButtonedEdit;
    Label3: TLabel;
    BESitReg: THButtonedEdit;
    Label14: TLabel;
    BEObsGfi: THMemo;
    Label1: TLabel;
    HPanel1: THPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    FGridCon: TDataSetGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure GeralEnter(Sender: TObject);
  private
    { Private declarations }

    FLigacaoContainer: TLigacaoContainer;
  public
    { Public declarations }
  published
    procedure F097GFIEnter();
    procedure F097GFIInsert;
    procedure F097GFIUpdate;
    procedure F097GFIDelete;
  end;

var
  F097GFI: TF097GFI;

implementation

uses
  Data.DB;

{$R *.dfm}

procedure TF097GFI.F097GFIDelete;
begin
  FLigacaoContainer.DeletarLigacao;
end;

procedure TF097GFI.F097GFIEnter;
begin
  if (State = erInserir) then
    BESitReg.Text := 'A';

  FLigacaoContainer.CodGfi := BECodGfi.Text;
end;

procedure TF097GFI.F097GFIInsert;
begin
  FLigacaoContainer.Executar;
end;

procedure TF097GFI.F097GFIUpdate;
begin
  FLigacaoContainer.Executar;
end;

procedure TF097GFI.FormCreate(Sender: TObject);
begin
  inherited;

  Registrar('T097GFI', 'USU_T097GFI');

  FGridCon.Init('USU_T050DIC', Self);
  FGridCon.AddColumn('id', 'id', ftInteger);
  FGridCon.AddColumn('SitCon', 'Situação', ftString, 2);
  FGridCon.AddColumn('VlrFrt', 'Custo por Container', ftFloat);
  FGridCon.SetFieldAsEnumerator('SitCon', 'LSitReg');
  FGridCon.FieldPosition('USU_NomCon', 3);
  FGridCon.AllowRegister := False;
  FGridCon.CreateDataSet;
  FGridCon.ReadOnly('SitCon', False);
  FGridCon.ReadOnly('VlrFrt', False);
  FGridCon.Visible('id', False);

  FLigacaoContainer := TLigacaoContainer.Create;
  FLigacaoContainer.Grid := FGridCon;
  FLigacaoContainer.Table := Table;
end;

procedure TF097GFI.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FLigacaoContainer);

  inherited;
end;

procedure TF097GFI.GeralEnter(Sender: TObject);
begin
  inherited;

  FLigacaoContainer.CarregarGrid;
end;

end.
