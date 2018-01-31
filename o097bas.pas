unit o097bas;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, System.DateUtils,
  o096lfc, oDataSetGrid, o050dic, o095fim;

type
  TLigacaoContainer = class
  private
    FTable: TTable;
    FCodGfi: string;
    FLista: TIterador;
    FGrid: TDataSetGrid;
  public
    constructor Create();
    destructor Destroy(); override;

    procedure CarregarGrid();
    procedure Executar();
    procedure DeletarLigacao();

    property Table: TTable read FTable write FTable;
    property Grid: TDataSetGrid read FGrid write FGrid;
    property CodGfi: string read FCodGfi write FCodGfi;
  end;

implementation

{ TLigacaoContainer }

procedure TLigacaoContainer.CarregarGrid();
var
  x050dic: T050DIC;
  x096lfc: T096LFC;
begin
  x096lfc := nil;
  try
    x096lfc := T096LFC.Create;
    x050dic := T050DIC.Create;

    x050dic.Init;
    x050dic.Open();

    FGrid.Clear;
    FLista.Clear;

    FGrid.Disconnect;
    while (x050dic.Next) do
    begin
      FGrid.Add(x050dic);

      x096lfc.Init;

      if not(IsNull(FCodGfi)) then
      begin
        x096lfc.USU_CodGfi := FCodGfi;
        x096lfc.USU_IdeCon := x050dic.USU_ID;
        x096lfc.PropertyForSelect(['USU_CODGFI', 'USU_IDECON']);
        x096lfc.Open(False);
      end
      else
      begin
        x096lfc.USU_IdeFor := T095FIM(FTable).USU_ID;
        x096lfc.USU_IdeCon := x050dic.USU_ID;
        x096lfc.doForeignKey := True;
        x096lfc.Open();
      end;

      if (x096lfc.IsEmpty) then
      begin
        FGrid.FindField('SitCon').AsString := 'I';
        FGrid.FindField('VlrFrt').AsFloat := 0;
        x096lfc.USU_LigCon := 'I';
      end
      else
      begin
        FGrid.FindField('SitCon').AsString := x096lfc.USU_LigCon;
        FGrid.FindField('VlrFrt').AsFloat :=  x096lfc.USU_VlrFrt;
      end;

      FLista.AddByClass(x096lfc);

      x096lfc.Close;
      x096lfc.ClearFields;
    end;

    FGrid.Connect;
  finally
    FreeAndNil(x096lfc);
  end;
end;

constructor TLigacaoContainer.Create;
begin
  FLista := TIterador.Create;
  FLista.indexed := True;
  FLista.IndexFields(['USU_IdeCon']);
end;

procedure TLigacaoContainer.DeletarLigacao;
var
  x096lfc: T096LFC;
  i: Integer;
begin
  for i := 0 to pred(FLista.Count) do
  begin
    x096lfc := T096LFC(FLista[i]);
    x096lfc.Delete;
  end;
end;

destructor TLigacaoContainer.Destroy;
begin
  FreeAndNil(FLista);

  inherited;
end;

procedure TLigacaoContainer.Executar();
var
  x096lfc: T096LFC;
  xQuery: T096LFC;
  i: Integer;
begin
  xQuery := T096LFC.Create;
  try
    FGrid.Disconnect;
    FGrid.First;
    while not(FGrid.Eof) do
    begin
      x096lfc := T096LFC(FLista[pred(FGrid.Line)]);
      x096lfc.USU_LigCon := StrToChar(FGrid.FindField('SitCon').AsString);
      x096lfc.USU_VlrFrt := FGrid.FindField('VlrFrt').AsFloat;

      FGrid.Next;
    end;

    FGrid.Connect;

    for i := 0 to pred(FLista.Count) do
    begin
      x096lfc := T096LFC(FLista[i]);
      xQuery.USU_IdeCon := x096lfc.USU_IdeCon;

      if not(IsNull(FCodGfi)) then
      begin
        xQuery.USU_CodGfi := FCodGfi;
        xQuery.PropertyForSelect(['USU_CODGFI', 'USU_IDECON']);
        xQuery.Open(False);

        x096lfc.USU_IdeFor := 0;
        x096lfc.USU_CodFor := 0;
      end
      else
      begin
        xQuery.USU_IdeFor := T095FIM(FTable).USU_ID;
        xQuery.doForeignKey := True;
        xQuery.Open;

        if (x096lfc.USU_IdeFor = 0) then
          x096lfc.USU_IdeFor := T095FIM(FTable).USU_ID;

        x096lfc.USU_CodFor := T095FIM(FTable).USU_CodFor;
      end;

      x096lfc.USU_CodGfi := FCodGfi;
      x096lfc.doForeignKey := True;
      if (xQuery.IsEmpty) then
        x096lfc.Insert
      else
        x096lfc.Update;

      xQuery.Close;
    end;
  finally
    FreeAndNil(xQuery);
  end;
end;

end.
