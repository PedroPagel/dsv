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
  oFacadeBaseCRM in 'oFacadeBaseCRM.pas',
  u510ARM in 'u510ARM.pas' {F510ARM},
  oRotinaDDA in 'oRotinaDDA.pas',
  u510CON in 'u510CON.pas' {F510CON},
  oConsulta in 'oConsulta.pas',
  u073vet in 'u073vet.pas' {F073VET},
  o073vet in 'o073vet.pas';

{$R *.res}
begin
  TConexao.Execute();
  try
    Application.Initialize;
    Application.MainFormOnTaskbar := True;

    //if (System.ParamCount > 0) then
    begin
      if (ParamStr(2) = TF000CRM.ClassName) then
      begin
        Application.ShowMainForm := False;
        Application.CreateForm(TF000CRM, F000CRM);
  Application.CreateForm(TF073VET, F073VET);
  Application.Terminate;
      end
      else
      if (ParamStr(2) = TF310CLP.ClassName) then
      begin
        Application.CreateForm(TF310CLP, F310CLP);
        Application.Run;
      end
      else
      if (ParamStr(2) = TF510ARM.ClassName) then
      begin
        Application.ShowMainForm := False;
        Application.CreateForm(TF510ARM, F510ARM);
        Application.Terminate;
      end
      else
      if (ParamStr(2) = TF510CON.ClassName) then
      begin
        Application.CreateForm(TF510CON, F510CON);
        Application.Run;
      end
      else
      if ('TF073VET' = TF073VET.ClassName) then
      begin
        Application.CreateForm(TF073VET, F073VET);
        Application.Run;
      end;
    end;
    TConexao.Finalizar;
  except
    on E: Exception do
      Abort;
  end;
end.
