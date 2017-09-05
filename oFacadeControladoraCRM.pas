unit oFacadeControladoraCRM;

interface

uses
  oFacadeOperadora, oFacadeBaseCRM, oFacedeCarregamentoCRM, oFacadeWebServicesCRM,
  System.SysUtils;

type
  TFacadeControladoraCRM = class(TFacadeBaseCRM)
  private
    FFacedeCarregamento: TFacedeCarregamentoCRM;
    FFacadeWebServices: TFacadeWebServicesCRM;
    FFacadeOperadora: TFacadeOperadora;
  public
    constructor Create();
    destructor Destroy(); override;

    procedure Executar();
  end;

implementation

{ TFacadeControladoraCRM }

constructor TFacadeControladoraCRM.Create;
begin
  inherited;
end;

destructor TFacadeControladoraCRM.Destroy;
begin
  inherited;

  FreeAndNil(FFacedeCarregamento);
  FreeAndNil(FFacadeWebServices);
  FreeAndNil(FFacadeOperadora)
end;

{ID 120CNFEC02 }
procedure TFacadeControladoraCRM.Executar;
begin
  FFacadeOperadora := nil;
  FFacadeWebServices := nil;
  FFacedeCarregamento := nil;
  try
    FFacadeOperadora := TFacadeOperadora.Create;
    FFacadeWebServices := TFacadeWebServicesCRM.Create;
    FFacedeCarregamento := TFacedeCarregamentoCRM.Create;

    FFacedeCarregamento.Carregar(Self, FFacadeWebServices);
    FFacadeOperadora.Executar(FFacedeCarregamento);
  finally
    FreeAndNil(FFacadeOperadora);
    FreeAndNil(FFacadeWebServices);
    FreeAndNil(FFacedeCarregamento);
  end;
end;

end.
