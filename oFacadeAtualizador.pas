unit oFacadeAtualizador;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs,
  oTabelas,  DateUtils, oSubSystemFacade;

type
  TFacade = class
  private
    FIndice: string;
    FContrato: Integer;
    FIdentificador: Integer;

    FSubFacedeIndices: TSubFacedeIndices;
    FSubFaceAtualizarDados: TSubFaceAtualizarDados;
    FSubFacadeConsumoBancoCentral: TSubFacadeConsumoBancoCentral;
    FSubFacedeCodigosBancoCentral: TSubFacedeCodigosBancoCentral;

    function GetIdentificador: Integer;
    procedure SetIdentificador(const Value: Integer);
    function GetContrato: Integer;
    procedure SetContrato(const Value: Integer);
    function GetIndice: string;
    procedure SetIndice(const Value: string);
  public
    procedure Executar();

    property Indice: string read GetIndice write SetIndice;
    property Contrato: Integer read GetContrato write SetContrato;
    property Identificador: Integer read GetIdentificador write SetIdentificador;
  end;

implementation

{ TFacade }

procedure TFacade.Executar();
begin
  FSubFacedeIndices := nil;
  FSubFaceAtualizarDados := nil;
  FSubFacadeConsumoBancoCentral := nil;
  FSubFacedeCodigosBancoCentral := nil;
  try
    FSubFacedeIndices := TSubFacedeIndices.Create;
    FSubFaceAtualizarDados := TSubFaceAtualizarDados.Create;
    FSubFacadeConsumoBancoCentral := TSubFacadeConsumoBancoCentral.Create;
    FSubFacedeCodigosBancoCentral := TSubFacedeCodigosBancoCentral.Create;

    StartTransaction;
    try
      FSubFacedeIndices.Carregar(FContrato, FIndice);
      FSubFacedeCodigosBancoCentral.Carregar(FSubFacedeIndices);
      FSubFaceAtualizarDados.Execute(FSubFacedeCodigosBancoCentral, FSubFacadeConsumoBancoCentral);

      Commit;
    except
      on E: Exception do
        RollBack;
    end;
  finally
    FreeAndNil(FSubFacedeIndices);
    FreeAndNil(FSubFaceAtualizarDados);
    FreeAndNil(FSubFacadeConsumoBancoCentral);
    FreeAndNil(FSubFacedeCodigosBancoCentral);
  end;
end;

function TFacade.GetContrato: Integer;
begin
  Result := FContrato;
end;

function TFacade.GetIdentificador: Integer;
begin
  Result := FIdentificador;
end;

function TFacade.GetIndice: string;
begin
  Result := FIndice;
end;

procedure TFacade.SetContrato(const Value: Integer);
begin
  FContrato := Value;
end;

procedure TFacade.SetIdentificador(const Value: Integer);
begin
  FIdentificador := Value;
end;

procedure TFacade.SetIndice(const Value: string);
begin
  FIndice := Value;
end;

end.
