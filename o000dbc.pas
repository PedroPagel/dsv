unit o000dbc;

interface

uses
  oReader, System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs,
  oTabelas;

CONST
  FCODIGO = 'Código';
  FPOSICAO = 9;

type
  TRegistro = record
    Codigo: Integer;
    Descricao: string;
    Linha: Integer;
  end;

  TControladorImportacao = class(T000dbc)
  private
    FLista: TIterador;
    FCaminho: string;
    FRegistro: TRegistro;

    function Importacao(const pLinha: string; const pLer: Boolean): TRegistro;
    procedure ExecutarImportacao(const pRegistro: TRegistro);
  public
    constructor Create();
    destructor Destroy(); override;

    procedure Add(const pRegistro: T000dbc);
    procedure Processar();

    property Caminho: string read FCaminho write FCaminho;
  end;

implementation

uses
  oMensagem;

{ TControladorImportacao }

procedure TControladorImportacao.Add(const pRegistro: T000dbc);
begin
  FLista.Add(pRegistro)
end;

constructor TControladorImportacao.Create;
begin
  inherited Create();

  DefinirCampoNegado(['Caminho']);
end;

destructor TControladorImportacao.Destroy;
begin
  inherited;

  FreeAndNil(FLista);
end;

procedure TControladorImportacao.ExecutarImportacao(const pRegistro: TRegistro);
begin
  Self.USU_CodDbc := pRegistro.Codigo;
  Self.USU_DscDbc := pRegistro.Descricao;
  Self.USU_SeqCot := 1;
  Self.Executar(estInsert);
end;

function TControladorImportacao.Importacao(const pLinha: string; const pLer: Boolean): TRegistro;
var
  i: Integer;
  xCodigo: Word;
  xDescricao: Integer;
  xFinalizaCodigo: Boolean;
  xPula: Integer;
begin
  xPula := 0;
  xCodigo := 0;
  xDescricao := 0;
  xFinalizaCodigo := False;
  FillChar(Result, sizeOf(Result), 0);

  if (pLer) then
  begin
    for i := 9 to High(pLinha) do
    begin
      if not(IsNull(pLinha[i])) and not(xFinalizaCodigo) then
        Inc(xCodigo)
      else
        xFinalizaCodigo := True;

      if (AnsiSameText(pLinha[i] + pLinha[i+1], '=>')) then
        xPula := (i+3);

      if (xPula > 0) and (xFinalizaCodigo) and (i = pred(xPula)) then
      begin
        xDescricao := (Length(pLinha) - i);
        Break;
      end;
    end;

    Result.Codigo := StrToInt(Copy(pLinha, 9, xCodigo));
    Result.Descricao := Copy(pLinha, xPula, xDescricao);
    FRegistro := Result;
    ExecutarImportacao(Result);
  end;
end;

procedure TControladorImportacao.Processar;
var
  xReader: TFileReader;
  i: Integer;
begin
  i := 0;
  xReader := TFileReader.Create;
  try
    StartTransaction;
    try
      xReader.PathToRead := FCaminho;

      xReader.First();
      while (xReader.LineExists) do
      begin
        xReader.Assingn(EmptyStr, False);

        xReader.BeginRead;
        while (xReader.EndOfFile) do
        begin
          Inc(i);
          Importacao(xReader.Read, i > 1);
        end;
        xReader.Close;
        xReader.Next;
      end;

      Commit;
    except
      on e: exception do
      begin
        CMessage(e.Message, mtExceptError);
        RollBack;
      end;
    end;
  finally
    FreeAndNil(xReader);
  end;
end;

end.
