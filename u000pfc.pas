unit u000pfc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, o096pto, oBase;

type
  TF000PFC = class(TForm)
    imgHenn: TImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F000PFC: TF000PFC;

implementation

{$R *.dfm}

procedure TF000PFC.FormCreate(Sender: TObject);
var
  xIteradorPrevisao: TIteradorPrevisao;
begin
  Application.ShowMainForm := False;

  if (ParamCount > 0) then
  begin
    FLogEmp := StrToInt(ParamStr(3));
    FLogFil := StrToInt(ParamStr(4));
    FLogUsu := StrToInt(ParamStr(5));
  end
  else
  begin
    FLogEmp := 1;
    FLogFil := 1;
    FLogUsu := 257;
  end;

  StartTransaction;
  try
    xIteradorPrevisao := TIteradorPrevisao.Create;
    try
      xIteradorPrevisao.ProcessoAutomatico := True;
      xIteradorPrevisao.Processar;
      Commit;
    finally
      FreeAndNil(xIteradorPrevisao);
    end;
  except
    RollBack;
  end;
end;

end.
