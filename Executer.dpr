program Executer;

uses
  Vcl.Forms,
  midaslib,
  oBase,
  System.SysUtils,
  uExecute in 'uExecute.pas' {FExecute},
  oFacadeExe in 'oFacadeExe.pas',
  oSubFacadeImportador in 'oSubFacadeImportador.pas',
  uTimeFacade in 'uTimeFacade.pas',
  wsRelatorioImp in 'wsRelatorioImp.pas';

{$R *.res}

begin
  TConexao.Execute();
  try
    Application.Initialize;
    Application.MainFormOnTaskbar := False;
    Application.ShowMainForm := False;
    Application.CreateForm(TFExecute, FExecute);
  Application.Terminate;
    TConexao.Finalizar;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
