program ControleLocacao;

{$R *.dres}

uses
  Vcl.Forms,
  oBase,
  midaslib,
  System.SysUtils {F510Rea},
  u310CLP in 'u310CLP.pas' {F310CLP},
  o310clp in 'o310clp.pas';

{$R *.res}

begin
  TIniciarConexao.Executar;
  try
    Application.Initialize;
    Application.MainFormOnTaskbar := True;
    Application.CreateForm(TF310CLP, F310CLP);
  Application.Run;

    TIniciarConexao.Finalizar;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
