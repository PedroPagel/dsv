unit oLayout;

interface

uses
  System.Rtti, System.Classes, SysUtils, System.TypInfo, o510age;

type
  TRegistroLayout = (rlHeader, rlLote, rlDetalhe, rlFinalLote, rlFinal);

  TDados = record
    Campo: string;
    Valor: string;
    Tamanho: Integer;
    Posicao: Integer;
  end;

  TCodReg = record
    Posicao: Integer;
    Tamanho: Integer;
    Campo: string;
    Registro1: Char;
    RegLay: TRegistroLayout;
    CgcCpf: Double;
    AdicionarRegistro: Boolean;
  end;

  TArrayDados = array of TDados;

  TLayout = class
  private
    FListaDados: TArrayDados;

    function ConversorData(const pData: string): TDateTime;
  public
    constructor Create(const pIDAGE: Integer);
    destructor Destroy; override;

    function AdicionarLinhas(const pLinha: string; const pObj: TObject; const pRegistro: TCodReg): TCodReg;
    procedure AdicionarCampos(const pNome: string; const pPosicao,pTamanho: Integer);
  end;

implementation

uses
  o510lay, oBase;

{ TLayout }

procedure TLayout.AdicionarCampos(const pNome: string; const pPosicao,
  pTamanho: Integer);
var
  i: Integer;
begin
  i := Length(FListaDados);
  Inc(i);

  SetLength(FListaDados, i);
  FListaDados[Pred(i)].Campo := pNome;
  FListaDados[Pred(i)].Tamanho := pTamanho;
  FListaDados[Pred(i)].Posicao := pPosicao;
end;

{
  Funcao que adiciona os campos do arquivo de retorno do DDA conforme o layout
  do Itau. O layout é montado no titulo pelo AdicionarCampos.
}
function TLayout.AdicionarLinhas(const pLinha: string; const pObj: TObject;
  const pRegistro: TCodReg): TCodReg;
var
  xContext : TRttiContext;
  xType : TRttiType;
  xProperty : TRttiProperty;
  xCurrency: Currency;
  xRegistro: TCodReg;
  xTipo: string;

  procedure ArquivoParaDados();
  var
    j: Integer;
    xTotal: string;
  begin
    for j := 0 to High(FListaDados) do
    begin
      if AnsiSameText(FListaDados[j].Campo, xProperty.Name) then
      begin
        case xProperty.PropertyType.TypeKind of
          tkInteger:
            xProperty.SetValue(pObj, StrToInt(Copy(pLinha, FListaDados[j].Posicao, FListaDados[j].Tamanho)));

          tkFloat:
          begin
            if (AnsiSameText('TDate', xProperty.PropertyType.Name)) then
              xProperty.SetValue(pObj, ConversorData(Copy(pLinha, FListaDados[j].Posicao, FListaDados[j].Tamanho)))
            else
            if (AnsiSameText('Currency', xProperty.PropertyType.Name)) then
            begin
              xTotal := (Copy(pLinha, FListaDados[j].Posicao, FListaDados[j].Tamanho));
              xCurrency := StrToCurr((Copy(xTotal, 0, 13) + ',' + Copy(xTotal, 14, 2)));
              xProperty.SetValue(pObj, xCurrency);
            end
            else
              xProperty.SetValue(pObj, StrToFloat(Copy(pLinha, FListaDados[j].Posicao, FListaDados[j].Tamanho)));
          end
        else
          xProperty.SetValue(pObj, Trim(Copy(pLinha, FListaDados[j].Posicao, FListaDados[j].Tamanho)));
        end;
        Break;
      end;
    end;
  end;

begin
  xTipo := Copy(pLinha, 8, 1);
  xRegistro := pRegistro;

  case StrToInt(xTipo) of
    0:
    begin
      xRegistro.RegLay := rlHeader;
      xRegistro.CgcCpf := StrToFloat(Copy(pLinha, 19, 14));
    end;

    1:
    begin
      xRegistro.RegLay := rlLote;
      xRegistro.CgcCpf := StrToFloat(Copy(pLinha, 19, 15));
    end;

    3:
    begin
      xRegistro.RegLay := rlDetalhe;

      if (AnsiSameText(xRegistro.Registro1, Copy(pLinha, xRegistro.Posicao, xRegistro.Tamanho))) then
      begin
        xRegistro.AdicionarRegistro := True;

        xContext  := TRttiContext.Create;
        try
          xType := xContext.GetType(pObj.ClassType);

          for xProperty in xType.GetProperties do
            ArquivoParaDados();
        finally
          xContext.Free;
        end;
      end;
    end;
    5: xRegistro.RegLay := rlFinalLote;
    9: xRegistro.RegLay := rlFinal;
  end;

  Result := xRegistro;
end;

function TLayout.ConversorData(const pData: string): TDateTime;
begin
  Result := 0;

  if not(StrToInt(pData) = 0) then
    Result := EncodeDate(StrToInt(Copy(pData, 5, 4)), StrToInt(Copy(pData, 3, 2)), StrToInt(Copy(pData, 1, 2)));
end;

constructor TLayout.Create(const pIDAGE: Integer);
var
  x510lay: T510LAY;
begin
  FillChar(FListaDados, SizeOf(FListaDados), 0);

  x510lay := T510LAY.Create;
  try
    x510lay.USU_IDAGE := pIDAGE;
    x510lay.Execute(etSelect, esLoop);

    while (x510lay.Next) do
      Self.AdicionarCampos(x510lay.USU_NomCol, x510lay.USU_PosCol, x510lay.USU_TamCol);
  finally
    FreeAndNil(x510lay);
  end;
end;

destructor TLayout.Destroy;
begin
  inherited;
end;

end.
