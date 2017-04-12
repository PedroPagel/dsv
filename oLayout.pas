unit oLayout;

interface

uses
  System.Rtti, System.Classes, SysUtils, System.TypInfo;

type
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
  end;

  TArrayDados = array of TDados;

  TLayout = class
  private
    FCodReg: TCodReg;
    FListaDados: TArrayDados;

    function ConversorData(const pData: string): TDateTime;
  public
    constructor Create(const pRegistro: TCodReg);
    destructor Destroy; override;

    function AdicionarLinhas(const pLinha: string; const pObj: TObject): Boolean;
    procedure AdicionarCampos(const pNome: string; const pPosicao,pTamanho: Integer);
  end;

implementation

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
  do Itau. O layout � montado no titulo pelo AdicionarCampos.
}
function TLayout.AdicionarLinhas(const pLinha: string; const pObj: TObject): Boolean;
var
  xContext : TRttiContext;
  xType : TRttiType;
  xProperty : TRttiProperty;
  xRegistro: string;
  xCurrency: Currency;

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
  xRegistro := Copy(pLinha, FCodReg.Posicao, FCodReg.Tamanho);
  Result := AnsiSameText(FCodReg.Registro1, xRegistro);

  if (Result) then
  begin
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

function TLayout.ConversorData(const pData: string): TDateTime;
begin
  Result := 0;

  if not(StrToInt(pData) = 0) then
    Result := EncodeDate(StrToInt(Copy(pData, 5, 4)), StrToInt(Copy(pData, 3, 2)), StrToInt(Copy(pData, 1, 2)));
end;

constructor TLayout.Create(const pRegistro: TCodReg);
begin
  FillChar(FCodReg, SizeOf(FCodReg), 0);
  FillChar(FListaDados, SizeOf(FListaDados), 0);
  FCodReg := pRegistro;
end;

destructor TLayout.Destroy;
begin
  inherited;
end;

end.