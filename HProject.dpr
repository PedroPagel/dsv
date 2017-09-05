program HProject;

{$R *.dres}

uses
  Vcl.Forms,
  oBase,
  midaslib,
  System.SysUtils,
  u310CLP in 'u310CLP.pas' {F310CLP},
  o310clp in 'o310clp.pas',
  u000crm in 'u000crm.pas' {F000CRM},
  oFacadeControladoraCRM in 'oFacadeControladoraCRM.pas',
  oFacadeWebServicesCRM in 'oFacadeWebServicesCRM.pas',
  oFacedeCarregamentoCRM in 'oFacedeCarregamentoCRM.pas',
  oFacadeOperadora in 'oFacadeOperadora.pas',
  WConnect_WSDL in 'WConnect_WSDL.pas',
  oFacadeBaseCRM in 'oFacadeBaseCRM.pas';

{$R *.res}
begin
  TConexao.Execute();
  try
    Application.Initialize;
    Application.MainFormOnTaskbar := True;

    if (System.ParamCount > 0) then
    begin
      //if ('TF000CRM' = TF000CRM.ClassName) then
      if (ParamStr(2) = TF000CRM.ClassName) then
      begin
        Application.ShowMainForm := False;
        Application.CreateForm(TF000CRM, F000CRM);
        Application.Terminate;
      end
      else
      if (ParamStr(2) = TF310CLP.ClassName) then
      begin
        Application.CreateForm(TF310CLP, F310CLP);
        Application.Run;
      end;
    end;
    TConexao.Finalizar;
  except
    on E: Exception do
      Abort;
  end;
end.
