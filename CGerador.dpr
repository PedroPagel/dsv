program CGerador;

{$R *.dres}

uses
  Vcl.Forms,
  oBase,
  midaslib,
  System.SysUtils,
  uGeradorClasse in 'uGeradorClasse.pas' {FGerCla},
  u998fld in 'u998fld.pas';

{$R *.res}

begin
  TConexao.Execute();
  try
    Application.Initialize;
    Application.MainFormOnTaskbar := True;
    Application.CreateForm(TFGerCla, FGerCla);
  Application.Run;
    TConexao.Finalizar;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
