program ConsultaDDA;





{$R *.dres}

uses
  Vcl.Forms,
  oBase,
  System.SysUtils,
  midaslib,
  u510CON in 'u510CON.pas' {F510CON},
  oConsulta in 'oConsulta.pas';

{$R *.res}

begin
  TIniciarConexao.Executar;
  try
    Application.Initialize;
    Application.MainFormOnTaskbar := True;
    Application.CreateForm(TF510CON, F510CON);
  Application.Run;

    TIniciarConexao.Finalizar;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
