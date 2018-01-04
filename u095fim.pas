unit u095fim;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, u000cad, oPanel, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, oDateTimePicker, oButtonedEdit,
  oMemo, o095fim, oBase, Vcl.Grids, Vcl.DBGrids, oDataSetGrid;

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
    BEOsbFor: THMemo;
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
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure GeralEnter(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
  private
    { Private declarations }
    FLista: TIterador;

    procedure Executar();
  public
    { Public declarations }
  published
    procedure F095FIMInsert;
    procedure F095FIMUpdate;
    procedure F095FIMDelete;
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

procedure TF095FIM.Executar;
var
  x096lfc: T096LFC;
  xQuery: T096LFC;
  i: Integer;
begin
  xQuery := T096LFC.Create;
  try
    FGridCon.Disconnect;
    FGridCon.First;
    while not(FGridCon.Eof) do
    begin
      x096lfc := T096LFC(FLista[FGridCon.FindField('id').AsInteger]);
      x096lfc.USU_LigCon := StrToChar(FGridCon.FindField('SitCon').AsString);
      x096lfc.USU_VlrFrt := FGridCon.FindField('VlrFrt').AsFloat;

      FGridCon.Next;
    end;

    FGridCon.Connect;

    for i := 0 to pred(FLista.Count) do
    begin
      x096lfc := T096LFC(FLista[i]);
      x096lfc.USU_CodFor := T095FIM(Table).USU_CodFor;

      xQuery.USU_IdeFor := T095FIM(Table).USU_ID;
      xQuery.USU_IdeCon := x096lfc.USU_IdeCon;
      xQuery.doForeignKey := True;
      xQuery.Open;

      if (x096lfc.USU_IdeFor = 0) then
       x096lfc.USU_IdeFor := T095FIM(Table).USU_ID;

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

procedure TF095FIM.F095FIMDelete;
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

procedure TF095FIM.F095FIMInsert;
begin
  Executar();
end;

procedure TF095FIM.F095FIMUpdate;
begin
  Executar();
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

  Registrar('T095FIM' , 'USU_T095FIM');
  BECodFor.Filter := ' SITFOR = ''A'' AND (CODPAI <> ''1058'')';

  FLista := TIterador.Create;
  FLista.indexed := True;
  FLista.IndexFields(['USU_IdeCon']);
end;

procedure TF095FIM.FormDestroy(Sender: TObject);
begin
  inherited;

  FreeAndNil(FLista);
end;

procedure TF095FIM.GeralEnter(Sender: TObject);
var
  x050dic: T050DIC;
  x096lfc: T096LFC;
  i: Integer;
begin
  inherited;

  i := 0;

  x096lfc := nil;
  try
    x096lfc := T096LFC.Create;
    x050dic := T050DIC.Create;

    x050dic.Init;
    x050dic.Open();

    FGridCon.Clear;
    FLista.Clear;

    FGridCon.Disconnect;
    while (x050dic.Next) do
    begin
      FGridCon.Add(x050dic);

      x096lfc.Init;
      x096lfc.USU_IdeFor := T095FIM(Table).USU_ID;
      x096lfc.USU_IdeCon := x050dic.USU_ID;

      x096lfc.doForeignKey := True;
      x096lfc.Open();
      if (x096lfc.IsEmpty) then
      begin
        FGridCon.FindField('SitCon').AsString := 'I';
        FGridCon.FindField('VlrFrt').AsFloat := 0;
        x096lfc.USU_LigCon := 'I';
      end
      else
      begin
        FGridCon.FindField('SitCon').AsString := x096lfc.USU_LigCon;
        FGridCon.FindField('VlrFrt').AsFloat :=  x096lfc.USU_VlrFrt;
      end;

      FGridCon.FindField('id').AsInteger := i;
      FLista.AddByClass(x096lfc);

      x096lfc.Close;
      x096lfc.ClearFields;
      Inc(i);
    end;

    FGridCon.Connect;
  finally
    FreeAndNil(x096lfc);
  end;
end;

initialization
  RegisterClasses([T095FIM]);
  RegisterClasses([T096DEI]);
  RegisterClasses([TF095FIM]);

finalization
  UnRegisterClasses([T095FIM]);
  UnRegisterClasses([T096DEI]);
  UnRegisterClasses([TF095FIM]);

end.
