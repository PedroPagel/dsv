unit u510Rea;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TF510Rea = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F510Rea: TF510Rea;

implementation

uses
  oTabelas, oBase;

{$R *.dfm}

procedure TF510Rea.FormCreate(Sender: TObject);
begin
  if (System.ParamCount > 0) then
  begin
    FLogEmp := StrToInt(ParamStr(0));
    FLogFil := StrToInt(ParamStr(1));
    FLogUsu := StrToInt(ParamStr(2));
  end;
end;

end.
