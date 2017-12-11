unit u510ARM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, oArmazenamento,
  Data.DBXOracle, Data.DB, Data.SqlExpr, Bde.DBTables, Data.FMTBcd,
  Vcl.Mask, Vcl.DBCtrls, Datasnap.Provider, Datasnap.DBClient, oBase,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, o070fil;

type
  TF510ARM = class(TForm)
    imgHenn: TImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F510ARM: TF510ARM;

implementation

{$R *.dfm}

procedure TF510ARM.FormCreate(Sender: TObject);
var
  xArmazenamento: TArmazenamento;
begin
  FLogEmp := 1; //StrToInt(ParamStr(3));
  try
    xArmazenamento := TArmazenamento.Create(2764);  //StrToInt(ParamStr(4)));
    try
      xArmazenamento.CarregarArquivos();
      xArmazenamento.Processar();

      xArmazenamento.AtualizarArmazenamento();
    finally
      FreeAndNil(xArmazenamento);
    end;
  except
    on e: Exception do
      Abort;
  end;
end;

end.
