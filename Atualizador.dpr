program Atualizador;

{$R *.dres}

uses
  Vcl.Forms,
  oBase,
  midaslib,
  System.SysUtils,
  u000atu in 'u000atu.pas' {F000ATU},
  oSubSystemFacade in 'oSubSystemFacade.pas',
  oFacadeAtualizador in 'oFacadeAtualizador.pas',
  wsControleLocacao in 'wsControleLocacao.pas';

{$R *.res}
begin
  TConexao.Execute();
  try
    Application.Initialize;
    Application.MainFormOnTaskbar := False;
    Application.ShowMainForm := False;
    Application.CreateForm(TF000ATU, F000ATU);
  Application.Terminate;
    TConexao.Finalizar;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
