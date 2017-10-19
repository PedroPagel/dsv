unit u000crm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls, oFacadeControladoraCRM,
  oBase, Soap.InvokeRegistry, Soap.Rio, Soap.SOAPHTTPClient;

type
  TF000CRM = class(TForm)
    imgHenn: TImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FFacadeControladoraCRM: TFacadeControladoraCRM;
  public
    { Public declarations }
  end;

var
  F000CRM: TF000CRM;

implementation

{$R *.dfm}

procedure TF000CRM.FormCreate(Sender: TObject);
begin
  FFacadeControladoraCRM := TFacadeControladoraCRM.Create;
  try
    try
      if (System.ParamCount > 0) then
      begin
        FFacadeControladoraCRM.CodEmp := StrToInt(ParamStr(3));
        FFacadeControladoraCRM.CodFil := StrToInt(ParamStr(4));
        FFacadeControladoraCRM.NumPed := StrToInt(ParamStr(5));
        FFacadeControladoraCRM.Executar;
      end;
    except
      on E: exception do
        raise E.Create(E.Message);
    end;
  finally
    FreeAndNil(FFacadeControladoraCRM);
    Self.Close;
  end;
end;

end.
