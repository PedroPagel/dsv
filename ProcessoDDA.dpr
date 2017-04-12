program ProcessoDDA;

uses
  oBase,
  Vcl.Forms,
  midaslib,
  System.SysUtils,
  uMain in 'uMain.pas' {F510ARM},
  oRotinaDDA in 'oRotinaDDA.pas';

{$R *.res}

begin
  TIniciarConexao.Executar();
  try
    Application.Initialize;
    Application.MainFormOnTaskbar := False;
    Application.ShowMainForm := False;
    Application.CreateForm(TF510ARM, F510ARM);
  Application.Terminate;
    TIniciarConexao.Finalizar();
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
