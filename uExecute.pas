unit uExecute;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, oFacadeExe, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, oBase;

type
  TFExecute = class(TForm)
    img1: TImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FExecute: TFExecute;

implementation

{$R *.dfm}

procedure TFExecute.FormCreate(Sender: TObject);
var
  xFacade: oFacadeExe.TFacede;
begin
  xFacade := TFacede.Create;
  try
    if (System.ParamCount > 1) then
    begin
      xFacade.Params := paramStr(2);
      xFacade.Params := paramStr(3);
      xFacade.Params := paramStr(4);
      xFacade.Params := paramStr(5);
    end;

    xFacade.FacadeType := etImport;
    xFacade.Execute;
  finally
    FreeAndNil(xFacade);
  end;
end;

end.
