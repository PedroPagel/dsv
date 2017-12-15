program HProject;

{$R *.dres}

uses
  Vcl.Forms,
  oBase,
  midaslib,
  System.SysUtils,
  u310CLP in 'u310CLP.pas' {F310CLP},
  u000crm in 'u000crm.pas' {F000CRM},
  u510ARM in 'u510ARM.pas' {F510ARM},
  u510CON in 'u510CON.pas' {F510CON},
  u510lay in 'u510lay.pas' {F510LAY},
  u510lte in 'u510lte.pas' {F510LTE},
  u000isc in 'u000isc.pas' {F000ISC},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  TConexao.Execute();
  try
    Application.Initialize;
    Application.MainFormOnTaskbar := True;

    //if ('TF000CRM' = TF000CRM.ClassName) then
    if (ParamStr(2) = TF000CRM.ClassName) then
    begin
      Application.ShowMainForm := False;
      Application.CreateForm(TF000CRM, F000CRM);
    end
    else
    //if ('TF310CLP' = TF310CLP.ClassName) then
    if (ParamStr(2) = TF310CLP.ClassName) then
    begin
      Application.CreateForm(TF310CLP, F310CLP);
      Application.Run;
    end
    else
    //if ('TF510ARM' = TF510ARM.ClassName) then
    if (ParamStr(2) = TF510ARM.ClassName) then
    begin
      Application.ShowMainForm := False;
      Application.CreateForm(TF510ARM, F510ARM);
    end
    else
    //if ('TF510CON' = TF510CON.ClassName) then
    if (ParamStr(2) = TF510CON.ClassName) then
    begin
      Application.CreateForm(TF510CON, F510CON);
      Application.Run;
    end
    else
    //if ('TF510LAY' = TF510LAY.ClassName) then
    if (ParamStr(2) = TF510LAY.ClassName) then
    begin
      Application.CreateForm(TF510LAY, F510LAY);
      Application.Run;
    end
    else
    if (ParamStr(2) = TF510LTE.ClassName) then
    //if ('TF510LTE' = TF510LTE.ClassName) then
    begin
      Application.CreateForm(TF510LTE, F510LTE);
      Application.Run;
    end;
    if (ParamStr(2) = TF510LTE.ClassName) then
    //if ('TF000ISC' = TF000ISC.ClassName) then
    begin
      Application.CreateForm(TF000ISC, F000ISC);
      Application.Run;
    end;

    TConexao.Finalizar;
    Application.Terminate;
  except
    on E: Exception do
    begin
      TConexao.Finalizar;
      Application.Terminate;
    end;
  end;

end.
