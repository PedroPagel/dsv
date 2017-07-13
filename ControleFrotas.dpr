program ControleFrotas;

uses
  Vcl.Forms,
  midaslib,
  oBase,
  System.SysUtils,
  u133cft in 'u133cft.pas' {F133MAU},
  oFacadeControleFrotas in 'oFacadeControleFrotas.pas',
  oFacadeControladora in 'oFacadeControladora.pas';

{$R *.res}

begin
  TConexao.Execute();
  try
    Application.Initialize;
    Application.MainFormOnTaskbar := True;
    Application.CreateForm(TF133MAU, F133MAU);
  Application.Run;
    TConexao.Finalizar;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
