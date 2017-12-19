unit oFacadeOperadora;

interface

uses
  oFacadeBaseCRM, oFacadeCarregamentoCRM, o120ped;

type
  TFacadeOperadora = class(TFacadeBaseCRM)
  public
    procedure Executar(const pDados: TFacedeCarregamentoCRM);
  end;

implementation

uses
  oFacadeControladoraCRM, oBase, oMensagem;

{ TFacadeOperadora }

procedure TFacadeOperadora.Executar(const pDados: TFacedeCarregamentoCRM);
begin
  if (pDados.TipoExecucao = teOportunidade) then
  begin
    pDados.ConsumirOportunidade;
    pDados.ConsumirProdutos;
    pDados.AtualizarPedido;
  end
  else
  begin
    pDados.ConsumirCompromisso;
    pDados.AtualizarPendencias;
  end;
end;

end.
