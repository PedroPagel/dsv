unit u600rcu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, oDataSetGrid, oFacadeRCU,
  Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB, o600rcu, o600cco, o099usu, oBase, oButtonedEdit,
  Vcl.Menus, Data.Win.ADODB;

type
  TF600RCU = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    FGridCco: TDataSetGrid;
    pnl3: TPanel;
    pnl4: TPanel;
    pnl5: TPanel;
    Mostrar: TButton;
    Cancelar: TButton;
    Sair: TButton;
    Processar: TButton;
    Marcar: TButton;
    Desmarcar: TButton;
    Excluir: TButton;
    BECodEmp: THButtonedEdit;
    Label12: TLabel;
    BECodUsu: THButtonedEdit;
    Label3: TLabel;
    spl1: TSplitter;
    FGridUsu: TDataSetGrid;
    pnl6: TPanel;
    BENumCco: THButtonedEdit;
    Label1: TLabel;
    Panel1: TPanel;
    FGridNvu: TDataSetGrid;
    Splitter1: TSplitter;

    procedure FormCreate(Sender: TObject);
    procedure SairClick(Sender: TObject);
    procedure MostrarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FGridUsuEditButtonClick(Sender: TObject);
  private
    { Private declarations }
    F600cco: T600CCO;
    F099usu: T099USU;

    FFacade: TFacade;
  public
    { Public declarations }
  published
    procedure FGridCcoEnterLine();
  end;

var
  F600RCU: TF600RCU;

implementation

{$R *.dfm}

procedure TF600RCU.FGridCcoEnterLine;
begin
  FFacade.EnterLine;
end;

procedure TF600RCU.FGridUsuEditButtonClick(Sender: TObject);
var
i: string;
begin
  i := '';
end;

procedure TF600RCU.FormCreate(Sender: TObject);
begin
  F600cco := T600CCO.Create;
  F099usu := T099USU.Create;

  FGridCco.Init('E600CCO', F600RCU);
  FGridCco.AddColumn('pos', 'Identificador', ftInteger);
  FGridCco.Visible('pos', False);
  FGridCco.CreateDataSet;

  FGridUsu.Init('USU_T600RCU', F600RCU);
  FGridUsu.AddColumn('Check', 'Sel.', ftInteger, 0, True);
  FGridUsu.CreateDataSet;

  FGridNvu.Init('USU_T600RCU', F600RCU);
  FGridNvu.AddColumn('Check', 'Sel.', ftInteger, 0, True);
  FGridNvu.LookupField('USU_CodEmp', 'E070EMP', [], 'CodEmp');
  FGridNvu.LookupField('USU_CodFil', 'E070FIL', ['CodEmp'], 'CodFil');
  FGridNvu.CreateDataSet;

  BECodEmp.CreateLookup();
  BECodUsu.CreateLookup();
  BECodUsu.Filter := 'SITUSU = ''A''';
  BECodUsu.AddFilterLookup(BECodEmp);

  BENumCco.CreateLookup();
  BENumCco.Filter := 'SITCCO = ''A''';
  BENumCco.AddFilterLookup(BECodEmp);

  BENumCco.isAlfa := True;
  BECodEmp.isNumber := True;
  BECodUsu.isNumber := True;

  FFacade := TFacade.Create;
  FFacade.GridCco := FGridCco;
  FFacade.GridUsu := FGridUsu;
end;

procedure TF600RCU.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FFacade);
end;

procedure TF600RCU.MostrarClick(Sender: TObject);

  function MontarComando: String;
  begin
    Result := EmptyStr;

    if not(IsNull(BECodEmp.Text)) then
      Result := Format('CODEMP IN (%s) AND ', [BECodEmp.Text]);

    if not(IsNull(BENumCco.Text)) then
      Result := Result + Format('NUMCCO IN (%s) AND ', [BENumCco.Text]);

    if not(IsNull(BECodUsu.Text)) then
      Result := Result + Format('USU_CODUSU IN (%s) AND ', [BECodUsu.Text]);

    UltimoCaracter(Result, 'AND ', True, 4);
  end;

begin
  FFacade.Comando := MontarComando;
  FFacade.Carregar;
  FGridCcoEnterLine;
end;

procedure TF600RCU.SairClick(Sender: TObject);
begin
  Close;
end;

end.
