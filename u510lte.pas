unit u510lte;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u000cad, oPanel, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, oButtonedEdit, Vcl.Grids, Vcl.DBGrids,
  oDataSetGrid, Vcl.ComCtrls, oDateTimePicker, oBase;

type
  TF510LTE = class(TF000CAD)
    HPanel1: THPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    FGridMle: TDataSetGrid;
    BECodBan: THButtonedEdit;
    BEDesLig: THButtonedEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    BEUsuGer: THButtonedEdit;
    BEUsuAlt: THButtonedEdit;
    DTDatGer: THDateTimePicker;
    DTDatAlt: THDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure AlterarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
    procedure GeralEnter(Sender: TObject);
    procedure InserirClick(Sender: TObject);
  private
    { Private declarations }
    FLista: TIterador;
    FNaoCancelar: Boolean;

    procedure Carregar();
  public
    { Public declarations }
    procedure EnterFields(); override;
  published
    procedure FGridMleCancelLine();
    procedure FGridMleBeforeDelete();
    procedure FGridMleBeforeInsert();
    procedure FGridMleUSU_CodTptChange;
    procedure FGridMleUSU_EspBanChange;
  end;

var
  F510LTE: TF510LTE;

implementation

uses
  o510lte, o510mle, oMensagem, System.Contnrs;

{$R *.dfm}

procedure TF510LTE.AlterarClick(Sender: TObject);
var
  x510mle: T510MLE;
  xId: Integer;
  i: Integer;
begin
  xId := T510LTE(Self.Table).USU_ID;

  inherited;

  StartTransaction;
  try
    try
      x510mle := T510MLE.Create;
      try
        x510mle.USU_IdeLte := xId;
        x510mle.Execute(estDelete);
      finally
        FreeAndNil(x510mle);
      end;

      for i := 0 to pred(FLista.Count) do
      begin
        x510mle := T510MLE(FLista[i]);
        x510mle.Execute(estInsert);
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

procedure TF510LTE.CancelarClick(Sender: TObject);
begin
  inherited;

  if not(FNaoCancelar) then
  begin
    FGridMle.Clear;
    FNaoCancelar := False;
  end;
end;

procedure TF510LTE.Carregar;
var
  x510mle: T510MLE;
begin
  x510mle := T510MLE.Create;
  try
    x510mle.USU_IdeLte := T510LTE(Self.Table).USU_ID;
    x510mle.Execute(etSelect, esLoop);

    FGridMle.Clear;
    FLista.Clear;

    FGridMle.Disconnect;
    while (x510mle.Next) do
    begin
      FGridMle.Add;
      FLista.IterarAdd(x510mle, T510MLE.Create);
      FGridMle.AddFields(x510mle);
    end;
    FGridMle.Connect;
    FGridMle.First;
  finally
    FreeAndNil(x510mle);
  end;
end;

procedure TF510LTE.EnterFields;
begin
  inherited;
end;

procedure TF510LTE.ExcluirClick(Sender: TObject);
var
  x510lte: T510MLE;
begin
  StartTransaction;
  try
    x510lte := T510MLE.Create;
    try
      x510lte.USU_IdeLte := T510LTE(Self.Table).USU_ID;
      x510lte.Execute(estDelete);
    finally
      FreeAndNil(x510lte);
      Commit;
    end;

    FGridMle.Clear;
  except
    on E: Exception do
    begin
      RollBack;
      CMessage('Não foi possível excluir o(s) registro(s)!', mtErrorInform);
    end;
  end;

  inherited;
end;

procedure TF510LTE.FGridMleBeforeDelete;
begin
  FLista.Delete(pred(FGridMle.Line));
end;

procedure TF510LTE.FGridMleBeforeInsert;
var
  x510mle: T510MLE;
begin
  x510mle := T510MLE.Create;
  x510mle.USU_IdeLte := T510LTE(Self.Table).USU_ID;

  FLista.Add(x510mle);
end;

procedure TF510LTE.FGridMleCancelLine;
begin
  if (FLista.Count > 0) then
    FLista.Delete(pred(FLista.Count));
end;

procedure TF510LTE.FGridMleUSU_CodTptChange;
begin
  T510MLE(FLista[pred(FGridMle.Line)]).USU_CodTpt := FGridMle.FindField('USU_CodTpt').AsString;
end;

procedure TF510LTE.FGridMleUSU_EspBanChange;
begin
  T510MLE(FLista[pred(FGridMle.Line)]).USU_EspBan := FGridMle.FindField('USU_EspBan').AsString;
end;

procedure TF510LTE.FormCreate(Sender: TObject);
begin
  inherited;

  if (System.ParamCount > 0) then
    FLogUsu := StrToInt(ParamStr(3));

  Registrar('T510LTE' , 'USU_T510LTE');

  FGridMle.Init('USU_T510MLE', Self);
  FGridMle.LookupField('USU_CodTpt', 'E002TPT', [], 'CodTpt');
  FGridMle.CreateDataSet;
  FGridMle.ReadOnly('USU_EspBan', False);
  FGridMle.ReadOnly('USU_CodTpt', False);

  FLista := TIterador.Create();
end;

procedure TF510LTE.FormDestroy(Sender: TObject);
begin
  inherited;

  FreeAndNil(FLista);
end;

procedure TF510LTE.GeralEnter(Sender: TObject);
begin
  inherited;

  Carregar;
end;

procedure TF510LTE.InserirClick(Sender: TObject);
var
  x510mle: T510MLE;
  i: Integer;
begin
  FNaoCancelar := True;
  inherited;

  StartTransaction;
  try
    try
      for i := 0 to pred(FLista.Count) do
      begin
        x510mle := T510MLE(FLista[i]);
        x510mle.USU_IdeLte := T510LTE(Self.Table).USU_ID;
        x510mle.Execute(estInsert);
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
  RegisterClasses([T510LTE]);
  RegisterClasses([T510MLE]);

finalization
  UnRegisterClasses([T510LTE]);
  UnRegisterClasses([T510MLE]);

end.
