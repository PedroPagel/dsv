unit oFacadeOperadora;

interface

uses
  oFacadeBaseCRM, oFacedeCarregamentoCRM, o120ped;

type
  TFacadeOperadora = class(TFacadeBaseCRM)
  private
    procedure AtualizarPedido(const pDados: TFacedeCarregamentoCRM);
  public
    procedure Executar(const pDados: TFacedeCarregamentoCRM);
  end;

implementation

uses
  oFacadeControladoraCRM, oBase, oMensagem;

{ TFacadeOperadora }

procedure TFacadeOperadora.AtualizarPedido(const pDados: TFacedeCarregamentoCRM);
begin
  if not(pDados.OportunidadeAtualizada) then
  begin
    StartTransaction;
    try
      pDados.Pedido.Start;
      pDados.Pedido.FieldsForUpdate(['USU_NumOptCRM']);
      pDados.Pedido.PropertyForSelect(['CODEMP', 'CODFIL', 'NUMPED'], True);
      pDados.Pedido.Execute(estUpdate);
    except
      RollBack;
    end;

    Commit;
  end;
end;

procedure TFacadeOperadora.Executar(const pDados: TFacedeCarregamentoCRM);
begin
  pDados.ConsumirOportunidade;
  pDados.ConsumirProdutos;
  pDados.ConsumirCompromisso;

  AtualizarPedido(pDados);
end;

end.
