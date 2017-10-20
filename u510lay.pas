unit u510lay;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u000cad, oPanel, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, oButtonedEdit, Vcl.Grids, Vcl.DBGrids,
  oDataSetGrid, oBase;

type
  TF510LAY = class(TF000CAD)
    BECodAge: THButtonedEdit;
    BECodPor: THButtonedEdit;
    BEDirArq: THButtonedEdit;
    ENRaiCnp: THButtonedEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    HPanel1: THPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    FGridLay: TDataSetGrid;

    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure AlterarClick(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure InserirClick(Sender: TObject);
    procedure GeralEnter(Sender: TObject);
  private
    { Private declarations }
    FLista: TIterador;
    FNaoCancelar: Boolean;

    procedure CarregarLayout();
  public
    { Public declarations }
    procedure EnterFields(); override;
  published
    procedure FGridLayBeforeInsert();
    procedure FGridLayBeforeDelete();
    procedure FGridLayCancelLine();
    procedure FGridLayUSU_PosColChange;
    procedure FGridLayUSU_TamColChange;
    procedure FGridLayUSU_NomColChange;
  end;

var
  F510LAY: TF510LAY;

implementation

uses
  o510age, o510lay, Data.DB, System.Contnrs, oMensagem;

{$R *.dfm}

procedure TF510LAY.AlterarClick(Sender: TObject);
var
  i: Integer;
  x510lay: T510LAY;
  xID: Integer;
begin
  xID := T510AGE(Self.Table).USU_ID;

  inherited;

  StartTransaction;
  try
    try
      x510lay := T510LAY.Create;
      try
        x510lay.USU_IDAGE := xID;
        x510lay.PropertyForSelect(['USU_IDAGE']);
        x510lay.Execute(estDelete);
      finally
        FreeAndNil(x510lay);
      end;

      for i := 0 to pred(FLista.Count) do
      begin
        x510lay := T510LAY(FLista[i]);
        x510lay.Execute(estInsert);
      end;
    finally
      Commit;
    end;
  except
    on E: Exception do
    begin
      RollBack;
      CMessage('Não foi possível alterar o(s) registro(s)!', mtErrorInform);
    end;
  end;
end;

procedure TF510LAY.CancelarClick(Sender: TObject);
begin
  inherited;

  if not(FNaoCancelar) then
  begin
    FGridLay.Clear;
    FNaoCancelar := False;
  end;
end;

procedure TF510LAY.CarregarLayout;
var
  x510lay: T510LAY;
begin
  x510lay := T510LAY.Create;
  try
    x510lay.USU_IDAGE := T510AGE(Self.Table).USU_ID;
    x510lay.PropertyForSelect(['USU_IDAGE']);
    x510lay.Execute(etSelect, esLoop);

    FGridLay.Clear;
    FLista.Clear;

    FGridLay.Disconnect;
    while (x510lay.Next) do
    begin
      FGridLay.Add;
      FLista.IterarAdd(x510lay, T510LAY.Create);
      FGridLay.AddFields(x510lay);
    end;
    FGridLay.Connect;
    FGridLay.First;
  finally
    FreeAndNil(x510lay);
  end;
end;

procedure TF510LAY.EnterFields;
begin
  inherited;
end;

procedure TF510LAY.ExcluirClick(Sender: TObject);
var
  x510lay: T510LAY;
begin
  StartTransaction;
  try
    x510lay := T510LAY.Create;
    try
      x510lay.USU_IDAGE := T510AGE(Self.Table).USU_ID;
      x510lay.PropertyForSelect(['USU_IDAGE']);
      x510lay.Execute(estDelete);
    finally
      FreeAndNil(x510lay);
      Commit;
    end;
  except
    on E: Exception do
    begin
      RollBack;
      CMessage('Não foi possível excluir o(s) registro(s)!', mtErrorInform);
    end;
  end;

  inherited;
end;

procedure TF510LAY.FGridLayCancelLine;
begin
  if (FLista.Count > 0) then
    FLista.Delete(pred(FLista.Count));
end;

procedure TF510LAY.FGridLayBeforeDelete;
begin
  FLista.Delete(pred(FGridLay.Line));
end;

procedure TF510LAY.FGridLayBeforeInsert;
var
  x510lay: T510LAY;
begin
  x510lay := T510LAY.Create;
  x510lay.USU_IDAGE := T510AGE(Self.Table).USU_ID;

  FLista.Add(x510lay);
end;

procedure TF510LAY.FGridLayUSU_NomColChange;
begin
  T510LAY(FLista[pred(FGridLay.Line)]).USU_NomCol := FGridLay.FindField('USU_NomCol').AsString;
end;

procedure TF510LAY.FGridLayUSU_PosColChange;
begin
  T510LAY(FLista[pred(FGridLay.Line)]).USU_PosCol := FGridLay.FindField('USU_PosCol').AsInteger;
end;

procedure TF510LAY.FGridLayUSU_TamColChange;
begin
  T510LAY(FLista[pred(FGridLay.Line)]).USU_TamCol := FGridLay.FindField('USU_TamCol').AsInteger;
end;

procedure TF510LAY.FormCreate(Sender: TObject);
begin
  inherited;

  FNaoCancelar := False;
  Registrar('T510AGE' , 'USU_T510AGE');

  BECodAge.AddLeftTableForm(Self);

  FGridLay.Init('USU_T510LAY', F510LAY);
  FGridLay.CreateDataSet;

  FGridLay.ReadOnly('USU_NomCol', False);
  FGridLay.ReadOnly('USU_PosCol', False);
  FGridLay.ReadOnly('USU_TamCol', False);

  FLista := TIterador.Create();
end;

procedure TF510LAY.FormDestroy(Sender: TObject);
begin
  inherited;

  FreeAndNil(FLista);
end;

procedure TF510LAY.GeralEnter(Sender: TObject);
begin
  inherited;

  CarregarLayout();
end;

procedure TF510LAY.InserirClick(Sender: TObject);
var
  x510lay: T510LAY;
  i: Integer;
begin
  FNaoCancelar := True;
  inherited;

  StartTransaction;
  try
    try
      for i := 0 to pred(FLista.Count) do
      begin
        x510lay := T510LAY(FLista[i]);
        x510lay.USU_IDAGE := T510AGE(Self.Table).USU_ID;
        x510lay.Execute(estInsert);
      end;
    finally
      Commit;
    end;
  except
    on E: Exception do
    begin
      RollBack;
      CMessage('Não foi possível inserir o(s) registro(s)!', mtErrorInform);
    end;
  end;
end;

initialization
  RegisterClasses([T510AGE]);

finalization
  UnRegisterClasses([T510AGE]);

end.
