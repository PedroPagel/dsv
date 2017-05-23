program Atualizador;

uses
  Vcl.Forms,
  oBase,
  midaslib,
  System.SysUtils,
  u000atu in 'u000atu.pas' {F000ATU},
  oSubSystemFacade in 'oSubSystemFacade.pas',
  oFacadeAtualizador in 'oFacadeAtualizador.pas';

{$R *.res}

begin
  TConexao.Executar();
  try
    Application.Initialize;
    Application.MainFormOnTaskbar := False;
    Application.ShowMainForm := False;
    Application.MainFormOnTaskbar := True;
    Application.CreateForm(TF000ATU, F000ATU);
    Application.Terminate;
    TConexao.Finalizar;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
