program p600RCU;

{$R *.dres}

uses
  Vcl.Forms,
  midaslib,
  oBase,
  System.SysUtils,
  u600rcu in 'u600rcu.pas' {F600RCU},
  o600cco in 'o600cco.pas',
  o600rcu in 'o600rcu.pas',
  o099usu in 'o099usu.pas',
  oFacadeRCU in 'oFacadeRCU.pas',
  oFacadeRelacionamento in 'oFacadeRelacionamento.pas',
  oFacadeConta in 'oFacadeConta.pas';

{$R *.res}

begin
  TConexao.Execute();
  try
    Application.Initialize;
    Application.MainFormOnTaskbar := True;
    Application.CreateForm(TF600RCU, F600RCU);
  Application.Run;
    TConexao.Finalizar;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
