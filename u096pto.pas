unit u096pto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u000bas, Vcl.StdCtrls, Vcl.ExtCtrls,
  oPanel, oButtonedEdit, Vcl.ComCtrls, oDateTimePicker, Vcl.Grids, Vcl.DBGrids,
  oDataSetGrid, o096pto, Vcl.CheckLst;

type
  TF096PTO = class(TFORMBASE)
    Label2: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    BECodEmp: THButtonedEdit;
    BECodFil: THButtonedEdit;
    BECodFor: THButtonedEdit;
    BENumOcp: THButtonedEdit;
    BECodPai: THButtonedEdit;
    Panel3: TPanel;
    Panel6: TPanel;
    FGridFor: TDataSetGrid;
    Splitter2: TSplitter;
    Panel4: TPanel;
    Panel7: TPanel;
    FGridOrd: TDataSetGrid;
    Panel9: TPanel;
    Splitter1: TSplitter;
    Panel5: TPanel;
    Panel8: TPanel;
    FGridIpo: TDataSetGrid;
    Panel11: TPanel;
    BECodGfi: THButtonedEdit;
    Label5: TLabel;
    RadioGroup1: TRadioGroup;
    CBTitulo: TCheckBox;
    CBImposto: TCheckBox;
    CBCalGru: TCheckBox;
    DDatBas: THDateTimePicker;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure MostrarClick(Sender: TObject);
    procedure ProcessarClick(Sender: TObject);
    procedure MarcarClick(Sender: TObject);
    procedure DesmarcarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
  private
    { Private declarations }

    FIteradorPrevisao: o096pto.TIteradorPrevisao;

    procedure MarcarDesmarcar(const check: Integer);
    function MontaSelecaoOrdem: string;
    function MontaSelecaoFornecedor: string;
  public
    { Public declarations }
  published
    procedure FGridForEnterLine;
    procedure FGridOrdEnterLine;
    procedure FGridForCheckClick;
    procedure FGridOrdCheckClick;
  end;

var
  F096PTO: TF096PTO;

implementation

uses
  Data.DB, oBase, oMensagem;

{$R *.dfm}

procedure TF096PTO.CancelarClick(Sender: TObject);
begin
  inherited;

  FGridFor.Clear;
  FGridOrd.Clear;
  FGridIpo.Clear;

  BECodEmp.Text := EmptyStr;
  BECodFil.Text := EmptyStr;
  BENumOcp.Text := EmptyStr;
  BECodFor.Text := EmptyStr;
  BECodPai.Text := EmptyStr;
  BECodGfi.Text := EmptyStr;

  CBCalGru.Checked := True;
  CBImposto.Checked := True;
  CBTitulo.Checked := True;

  DDatBas.Init;
  BECodEmp.SetFocus;
end;

procedure TF096PTO.DesmarcarClick(Sender: TObject);
begin
  MarcarDesmarcar(0);
end;

procedure TF096PTO.FGridForCheckClick;
var
  i: Integer;
begin
  FIteradorPrevisao.MarcarDesmarcarFornecedor(FGridFor.FindField('id').AsInteger, FGridFor.FindField('Check').AsInteger);

  FGridOrd.Disconnect;
  try
    FGridOrd.CheckFields('Check', FGridFor.FindField('Check').AsInteger);

    for i := 0 to pred(FIteradorPrevisao.QtdOrdemCompra) do
      FIteradorPrevisao.MarcarDesmarcarOrdem(i, FGridFor.FindField('Check').AsInteger);
  finally
    FGridIpo.First;
    FGridOrd.Connect;
  end;
end;

procedure TF096PTO.FGridForEnterLine;
var
  i: Integer;
begin
  FGridOrd.Disconnect;
  try
    FGridOrd.Clear;
    FIteradorPrevisao.Fornecedor(FGridFor.FindField('id').AsInteger);

    for i := 0 to pred(FIteradorPrevisao.QtdOrdemCompra) do
    begin
      FGridOrd.Add(FIteradorPrevisao.OrdemCompra(i));
      FGridOrd.FindField('id').AsInteger := i;
    end;
  finally
    FGridOrd.First;
    FGridOrd.Connect;
  end;

  FGridOrdEnterLine;
end;

procedure TF096PTO.FGridOrdCheckClick;
begin
  FIteradorPrevisao.MarcarDesmarcarOrdem(FGridOrd.FindField('id').AsInteger, FGridOrd.FindField('Check').AsInteger);

  if not(FIteradorPrevisao.ItemSelecionado) then
  begin
    FIteradorPrevisao.MarcarDesmarcarFornecedor(FGridFor.FindField('id').AsInteger, 0);
    FGridFor.FindField('Check').AsInteger := 0;
  end
  else
  if (FGridFor.FindField('Check').AsInteger = 0) then
  begin
    FIteradorPrevisao.MarcarDesmarcarFornecedor(FGridFor.FindField('id').AsInteger, 1);
    FGridFor.FindField('Check').AsInteger := 1;
  end;
end;

procedure TF096PTO.FGridOrdEnterLine;
var
  i: Integer;
  xId: Integer;
begin
  FGridIpo.Disconnect;
  try
    FGridIpo.Clear;
    xId := FGridOrd.FindField('id').AsInteger;

    for i := 0 to pred(FIteradorPrevisao.QtdProduto(xId)) do
      FGridIpo.Add(FIteradorPrevisao.Produto(xId, i));
  finally
    FGridIpo.First;
    FGridIpo.Connect;
  end;
end;

procedure TF096PTO.FormCreate(Sender: TObject);
begin
  inherited;

  Excluir.Visible := False;
  CBCalGru.Checked := True;
  CBImposto.Checked := True;
  CBTitulo.Checked := True;

  FLogEmp := 1;
  FLogFil := 1;
  FLogUsu := 257;

  BECodFil.AddFilterLookup(BECodEmp);
  BENumOcp.AddFilterLookup(BECodEmp);
  BENumOcp.AddFilterLookup(BECodFil);

  FGridOrd.Init('E420OCP', Self);
  FGridOrd.AddColumn('Check', 'Sel.', ftInteger, 0, True);
  FGridOrd.AddColumn('id', 'id', ftInteger);
  FGridOrd.CreateDataSet;

  FGridOrd.Visible('id', False);

  FGridFor.Init('E095FOR', Self);
  FGridFor.AddColumn('Check', 'Sel.', ftInteger, 0, True);
  FGridFor.AddColumn('id', 'id', ftInteger);
  FGridFor.AddColumn('PerFor', 'Período', ftString, 3);
  FGridFor.CreateDataSet;

  FGridFor.FieldPosition('PerFor', 5);
  FGridFor.Visible('id', False);

  FGridIpo.Init('E420IPO', Self);
  FGridIpo.CreateDataSet;

  FIteradorPrevisao := TIteradorPrevisao.Create;
end;


procedure TF096PTO.MarcarClick(Sender: TObject);
begin
  MarcarDesmarcar(1);
end;

procedure TF096PTO.MarcarDesmarcar(const check: Integer);
begin
  FGridFor.Disconnect;
  FGridOrd.Disconnect;
  try
    FGridFor.First;
    while not(FGridFor.Eof) do
    begin
      FGridFor.FindField('Check').AsInteger := check;
      FIteradorPrevisao.MarcarDesmarcarFornecedor(FGridFor.FindField('id').AsInteger, check);

      FGridOrd.First;
      while not(FGridOrd.Eof) do
      begin
        FGridOrd.FindField('Check').AsInteger := check;
        FIteradorPrevisao.MarcarDesmarcarOrdem(FGridOrd.FindField('id').AsInteger, check);
        FGridOrd.Next;
      end;

      FGridFor.Next;
    end;
  finally
    FGridFor.First;
    FGridOrd.First;
    FGridFor.Connect;
    FGridOrd.Connect;
  end;
end;

function TF096PTO.MontaSelecaoFornecedor: string;
begin
  Result := EmptyStr;

  if not(IsNull(BECodFor.Text)) then
    Result := Format(' CODFOR IN (%s) AND ', [BECodFor.Text]);

  if not(IsNull(BECodPai.Text)) then
    Result := Result + Format(' CODPAI IN (%s) AND ', [BECodPai.Text]);

  UltimoCaracter(Result, 'AND ', True, 4);
end;

function TF096PTO.MontaSelecaoOrdem: string;
begin
  Result := EmptyStr;

  if not(IsNull(BECodEmp.Text)) then
    Result := Format(' CODEMP IN (%s) AND ', [BECodEmp.Text]);

  if not(IsNull(BECodFil.Text)) then
    Result := Result + Format(' CODFIL IN (%s) AND ', [BECodFil.Text]);

  if not(IsNull(BENumOcp.Text)) then
    Result := Result + Format(' NUMOCP IN (%s) AND ', [BENumOcp.Text]);

  UltimoCaracter(Result, 'AND ', True, 4);
end;

procedure TF096PTO.MostrarClick(Sender: TObject);
var
  i: Integer;
begin
  FGridFor.Clear;
  FGridOrd.Clear;
  FGridIpo.Clear;

  FIteradorPrevisao.DadosFornecedor := MontaSelecaoFornecedor;
  FIteradorPrevisao.DadosOrdem := MontaSelecaoOrdem;
  FIteradorPrevisao.Carregar;

  if (FIteradorPrevisao.QtdFornecedor = 0) then
    CMessage('Não houve informações a listar!', mtErrorInform);

  FGridFor.Disconnect;

  for i := 0 to pred(FIteradorPrevisao.QtdFornecedor) do
  begin
    FGridFor.Add(FIteradorPrevisao.Fornecedor(i));
    FGridFor.FindField('PerFor').AsString := FIteradorPrevisao.Fornecedor(i).Periodo;
    FGridFor.FindField('id').AsInteger := i;
  end;

  FGridForEnterLine();
  FGridFor.Connect;
end;

procedure TF096PTO.ProcessarClick(Sender: TObject);
begin
  if not(FGridFor.CheckValue('Check', 1)) then
    CMessage('Não há registro(s) selecionado(s)!', mtErrorInform);

  StartTransaction;
  try
    try
      FIteradorPrevisao.DataBase := DDatBas.Date;
      FIteradorPrevisao.Grupo := BECodGfi.Text;
      FIteradorPrevisao.CalcularGrupo := CBCalGru.Checked;
      FIteradorPrevisao.Imposto := CBImposto.Checked;
      FIteradorPrevisao.Titulo := CBTitulo.Checked;
      FIteradorPrevisao.Processar;

      if (FIteradorPrevisao.Processado) then
      begin
        CMessage('Processado com sucesso!', mtInformation);
        Cancelar.Click;
      end;
    except
      on E: Exception do
      begin
        CMessage('Erro(s) ao processar, consulte o botão detalhe(s)', mtExceptError, True, E.Message);
        RollBack;
      end;
    end;
  finally
    Commit;
  end;
end;

end.
