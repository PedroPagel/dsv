program ControleLocacao;

{$R *.dres}

uses
  Vcl.Forms,
  oBase,
  midaslib,
  System.SysUtils,
  u310CLP in 'u310CLP.pas' {F310CLP},
  o310clp in 'o310clp.pas';

{$R *.res}
begin
  TConexao.Execute();
  try
    Application.Initialize;
    Application.MainFormOnTaskbar := True;
    Application.CreateForm(TF310CLP, F310CLP);
  Application.Run;

    TConexao.Finalizar;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
