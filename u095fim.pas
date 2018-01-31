unit u095fim;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u000cad, oPanel, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, oDateTimePicker, oButtonedEdit,
  oMemo, o095fim, oBase, Vcl.Grids, Vcl.DBGrids, oDataSetGrid, o097bas;

type
  TF095FIM = class(TF000CAD)
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DTDatGer: THDateTimePicker;
    DTDatAlt: THDateTimePicker;
    Label2: TLabel;
    Label14: TLabel;
    BEObsFor: THMemo;
    Label1: TLabel;
    HPanel1: THPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    FGridCon: TDataSetGrid;
    HPanel2: THPanel;
    Panel5: TPanel;
    FGridDes: TDataSetGrid;
    BECodFor: THButtonedEdit;
    BEPerOrd: THButtonedEdit;
    BEUsuGer: THButtonedEdit;
    BEUsuAlt: THButtonedEdit;
    BECodGfi: THButtonedEdit;
    Label3: TLabel;
    BEPerDes: THButtonedEdit;
    BEDiaReg: THButtonedEdit;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure GeralEnter(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure InserirClick(Sender: TObject);
    procedure AlterarClick(Sender: TObject);
  private
    { Private declarations }

    FLigacaoContainer: TLigacaoContainer;
  public
    { Public declarations }
  published
    procedure F095FIMInsert;
    procedure F095FIMUpdate;
    procedure F095FIMDelete;
    procedure BECodGfiExit;
  end;

var
  F095FIM: TF095FIM;

implementation

uses
  o096dei, o096lfc, o050dic, Data.DB, System.Contnrs;

{$R *.dfm}

procedure TF095FIM.CancelarClick(Sender: TObject);
begin
  inherited;

  FGridCon.Clear;
end;

procedure TF095FIM.AlterarClick(Sender: TObject);
begin
  if not(IsNull(BECodGfi.Text)) then
  begin
    FGridDes.First;
    while not(FGridDes.Eof) do
    begin
      FGridDes.FindField('USU_CodGfi').AsString := BECodGfi.Text;
      FGridDes.Next;
    end;
  end;

  inherited;
end;

procedure TF095FIM.BECodGfiExit;
begin
  if not(IsNull(BECodGfi.Text)) then
  begin
    FGridCon.Clear;
    FGridCon.Enabled := False;
    FLigacaoContainer.CodGfi := BECodGfi.Text;
  end
  else
  begin
    FGridCon.Enabled := True;
    FLigacaoContainer.CarregarGrid;
  end;
end;

procedure TF095FIM.F095FIMDelete;
begin
  FLigacaoContainer.DeletarLigacao;
end;

procedure TF095FIM.F095FIMInsert;
begin
  FLigacaoContainer.Executar();
end;

procedure TF095FIM.F095FIMUpdate;
begin
  FLigacaoContainer.Executar();
end;

procedure TF095FIM.FormCreate(Sender: TObject);
begin
  inherited;

  if (System.ParamCount > 0) then
    FLogUsu := StrToInt(ParamStr(3));

  FGridDes.Init('USU_T096DEI', Self);
  FGridDes.ClassTable := 'T096DEI';
  FGridDes.SetFieldAsEnumerator('USU_CifFob', 'LCifFob');
  FGridDes.SetFieldAsEnumerator('USU_TipDes', 'USU_ETipDes');
  FGridDes.LookupField('USU_CodMoe', 'E031MOE', [], 'CodMoe');
  FGridDes.CreateDataSet;

  FGridDes.ReadOnly('USU_DesFor', False);
  FGridDes.ReadOnly('USU_VlrDes', False);
  FGridDes.ReadOnly('USU_CifFob', False);
  FGridDes.ReadOnly('USU_TipDes', False);
  FGridDes.ReadOnly('USU_CodMoe', False);
  FGridDes.Visible('USU_CodGfi', False);

  FGridCon.Init('USU_T050DIC', Self);
  FGridCon.AddColumn('SitCon', 'Situação', ftString, 2);
  FGridCon.AddColumn('VlrFrt', 'Custo por Container', ftFloat);
  FGridCon.SetFieldAsEnumerator('SitCon', 'LSitReg');
  FGridCon.FieldPosition('USU_NomCon', 3);
  FGridCon.AllowRegister := False;
  FGridCon.CreateDataSet;
  FGridCon.ReadOnly('SitCon', False);
  FGridCon.ReadOnly('VlrFrt', False);

  Registrar('T095FIM' , 'USU_T095FIM');
  BECodFor.Filter := ' SITFOR = ''A'' AND (CODPAI <> ''1058'')';

  FLigacaoContainer := TLigacaoContainer.Create;
  FLigacaoContainer.Grid := FGridCon;
  FLigacaoContainer.Table := Table;
end;

procedure TF095FIM.FormDestroy(Sender: TObject);
begin
  inherited;

  FreeAndNil(FLigacaoContainer);
end;

procedure TF095FIM.GeralEnter(Sender: TObject);
begin
  inherited;

  if not(IsNull(BECodGfi.Text)) then
  begin
    FGridCon.Clear;
    FGridCon.Enabled := False;
  end
  else
  begin
    FGridCon.Enabled := True;
    FLigacaoContainer.CarregarGrid();
  end;
end;

procedure TF095FIM.InserirClick(Sender: TObject);
begin
  if not(IsNull(BECodGfi.Text)) then
  begin
    FGridDes.First;
    while not(FGridDes.Eof) do
    begin
      FGridDes.FindField('USU_CodGfi').AsString := BECodGfi.Text;
      FGridDes.Next;
    end;
  end;

  inherited;
end;

end.
