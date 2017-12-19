unit oSubFacadeImportador;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs,
  wsRelatorioImp, DateUtils;

type
  TSubFacadeImport = class
  private
    FCodEmp: string;
    FCodFil: string;
    FCodFor: string;
    FNumOcp: string;
    FEstado: Boolean;

    FServico: sapiens_Synccom_senior_g5_co_sup_RelatorioImportacao;
    FEntrada: relatorioImportacaoconsumirIn;
    FConsumo: relatorioImportacaoconsumirOut;
  public
    constructor Create();
    destructor Destroy(); override;

    procedure Consume();

    property CodEmp: string read FCodEmp write FCodEmp;
    property CodFil: string read FCodFil write FCodFil;
    property CodFor: string read FCodFor write FCodFor;
    property NumOcp: string read FNumOcp write FNumOcp;
    property Estado: Boolean read FEstado write FEstado;
  end;

implementation

{ TSubFacadeImport }

procedure TSubFacadeImport.Consume;
begin
  FEntrada.codEmp := FCodEmp;
  FEntrada.CodFil := FCodFil;
  FEntrada.CodFor := FCodFor;
  FEntrada.NumOcp := FNumOcp;
  FEntrada.estado := iff(FEstado, 'OK', EmptyStr);
  FConsumo := FServico.Consumir('sapiensweb', 'sapiensweb', 0, FEntrada);
end;

constructor TSubFacadeImport.Create;
begin
  inherited;

  FServico := Getsapiens_Synccom_senior_g5_co_sup_RelatorioImportacao();
  FEntrada := relatorioImportacaoconsumirIn.Create;
end;

destructor TSubFacadeImport.Destroy;
begin
  inherited;
end;

end.
