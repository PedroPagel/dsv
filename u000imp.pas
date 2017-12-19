unit u000imp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ExtDlgs, Vcl.StdCtrls,
  oButtonedEdit, o000dbc, oBase, oGeral, oReader, oMensagem;

type
  TControladorImportacao = class; //foward

  TF000IMP = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    BEDirFin: THButtonedEdit;
    Label1: TLabel;
    Importar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ImportarClick(Sender: TObject);
  private
    { Private declarations }
    FControladorImportacao: TControladorImportacao;
  public
    { Public declarations }
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

var
  F000IMP: TF000IMP;

implementation

{$R *.dfm}

{ TControladorImportacao }

procedure TControladorImportacao.Add(const pRegistro: T000dbc);
begin
  FLista.Add(pRegistro)
end;

constructor TControladorImportacao.Create;
begin
  inherited Create();

  BlockProperty(['Caminho']);
end;

destructor TControladorImportacao.Destroy;
begin
  inherited;

  FreeAndNil(FLista);
end;

procedure TControladorImportacao.ExecutarImportacao(const pRegistro: TRegistro);
begin
  Self.USU_CodDbc := pRegistro.Codigo;
  Self.USU_NomDbc := pRegistro.Descricao;
  Self.USU_DatInd := Date;
  Self.USU_SeqCot := 1;
  Self.Insert();
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

procedure TF000IMP.FormCreate(Sender: TObject);
begin
  BEDirFin.CreateLookup;

  FControladorImportacao := TControladorImportacao.Create;
  BEDirFin.GetDirectory := False;
end;

procedure TF000IMP.ImportarClick(Sender: TObject);
begin
  FControladorImportacao.Caminho := BEDirFin.Text;
  FControladorImportacao.Processar;
end;

end.
