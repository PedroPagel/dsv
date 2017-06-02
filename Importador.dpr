program Importador;

{$R *.dres}

uses
  Vcl.Forms,
  oBase,
  midaslib,
  System.SysUtils,
  u000imp in 'u000imp.pas' {F000IMP},
  o000dbc in 'o000dbc.pas';

{$R *.res}

begin
  TConexao.Execute();
  try
    Application.Initialize;
    Application.MainFormOnTaskbar := True;
    Application.CreateForm(TF000IMP, F000IMP);
  Application.Run;

    TConexao.Finalizar;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;;
end.
