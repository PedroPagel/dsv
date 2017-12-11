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

uses
  o000log;

{$R *.dfm}

procedure TF000CRM.FormCreate(Sender: TObject);
var
  x000log: T000LOG;
begin
  FFacadeControladoraCRM := TFacadeControladoraCRM.Create;
  try
    try
      FFacadeControladoraCRM.CodEmp := 0; //StrToInt(ParamStr(3));
      FFacadeControladoraCRM.CodFil := 0; //StrToInt(ParamStr(4));
      FFacadeControladoraCRM.NumPed := 0; //StrToInt(ParamStr(5));
      FFacadeControladoraCRM.Executar;
    except
      on E: exception do
      begin
         x000log :=  T000LOG.Create;
        try
          StartTransaction;
          try
            x000log.NomTab := 'USU_T120PEN';
            x000log.TipLog := 'A';
            x000log.NomFrm := 'TF000CRM';
            x000log.DesLog := E.Message;
            x000log.UsuGer := 257;
            x000log.DatGer := Date;
            x000log.Insert();

            Commit;
          except
            RollBack;
          end;
        finally
          FreeAndNil(x000log);
        end;
      end;
    end;
  finally
    FreeAndNil(FFacadeControladoraCRM);
    Self.Close;
  end;
end;

end.
