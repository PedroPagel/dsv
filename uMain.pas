unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, oRotinaDDA,
  Data.DBXOracle, Data.DB, Data.SqlExpr, Bde.DBTables, Data.FMTBcd,
  Vcl.Mask, Vcl.DBCtrls, Datasnap.Provider, Datasnap.DBClient, oBase,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

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
  StartTransaction;
  try
    xArmazenamento := TArmazenamento.Create();
    try
      xArmazenamento.Processar();
    finally
      FreeAndNil(xArmazenamento);
    end;

    Commit;
  except
    Rollback;
  end;
end;

end.
