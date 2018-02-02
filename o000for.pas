unit o000for;

interface

uses
  System.Classes, Winapi.Windows, System.SysUtils, Vcl.Forms;

type

  TVisualForm = class
    class procedure OpenForm();
  end;

implementation

uses
 system.Rtti, oBase, u310clp, u000crm, u510con, u510arm, u000pfc,
 u510lte, u510lay, u096pto, u000bas, o510lay, o510lte, o510age,
 o510mle, o097gfi, o095fim, o097dem, o050dic, o096dei, uEnumForm;

{ TVisualForm }

class procedure TVisualForm.OpenForm();
var
  xForm: TForm;
  xComp: TComponentClass;
begin
  TConexao.Execute();
  try
    try
      xComp := TComponentClass(GetClass(ParamStr(2)));

      Application.ShowMainForm := True;
      Application.CreateForm(xComp, xForm);

      if (Application.ShowMainForm) then
        Application.Run;
    except
      on E: Exception do
      begin
        TConexao.Finalizar;
        Application.Terminate;
      end;
    end;
  finally
    TConexao.Finalizar;
    Application.Terminate;
  end;
end;

initialization
  RegisterClasses([T510LTE]);
  RegisterClasses([T510MLE]);
  RegisterClasses([TF510LTE]);
  RegisterClasses([T510AGE]);
  RegisterClasses([T510LAY]);
  RegisterClasses([TF510LAY]);
  RegisterClasses([TF510CON]);
  RegisterClasses([TF510ARM]);
  RegisterClasses([TF310CLP]);
  RegisterClasses([T097GFI]);
  RegisterClasses([TF096PTO]);
  RegisterClasses([T095FIM]);
  RegisterClasses([T096DEI]);
  RegisterClasses([T050DIC]);
  RegisterClasses([TF000CRM]);
  RegisterClasses([TF000PFC]);
  RegisterClasses([TFEnumForm]);

finalization
  UnRegisterClasses([T510LTE]);
  UnRegisterClasses([T510MLE]);
  UnRegisterClasses([TF510LTE]);
  UnRegisterClasses([T510AGE]);
  UnRegisterClasses([T510LAY]);
  UnRegisterClasses([TF510LAY]);
  UnRegisterClasses([TF510CON]);
  UnRegisterClasses([TF510ARM]);
  UnRegisterClasses([TF310CLP]);
  UnRegisterClasses([T097GFI]);
  UnRegisterClasses([TF096PTO]);
  UnRegisterClasses([T095FIM]);
  UnRegisterClasses([T096DEI]);
  UnRegisterClasses([T050DIC]);
  UnRegisterClasses([TF000CRM]);
  UnRegisterClasses([TF000PFC]);
  UnRegisterClasses([TFEnumForm]);

end.
