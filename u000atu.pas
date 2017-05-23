unit u000atu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, oFacadeAtualizador, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TF000ATU = class(TForm)
    pnl1: TPanel;
    img1: TImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F000ATU: TF000ATU;

implementation

uses
  oBase, oMensagem;

{$R *.dfm}

procedure TF000ATU.FormCreate(Sender: TObject);
var
  xFacade: TFacade;
begin
  xFacade := TFacade.Create;
  try
    if (System.ParamCount > 1) then
    begin
      FLogEmp := StrToInt(ParamStr(2));
      FLogFil := StrToInt(ParamStr(3));
      xFacade.Contrato := StrToInt(ParamStr(4));
      xFacade.Indice := ParamStr(5);
    end;

    xFacade.Executar();
  finally
    FreeAndNil(xFacade);
  end;
end;

end.
