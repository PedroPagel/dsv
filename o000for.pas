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
 system.Rtti, oBase, u310clp, u000crm, u000isc, u050dic, u510con, u510arm,
 u510lte, u510lay, u095fim, u096pto;

{ TVisualForm }

class procedure TVisualForm.OpenForm();
var
  xForm: TForm;
  xComp: TComponentClass;
begin
  TConexao.Execute();
  try
    try
      xComp := TComponentClass(GetClass('TF095FIM'));

      if (xComp.ClassName = 'TF510ARM') or (xComp.ClassName = 'TF000CRM') then
        Application.ShowMainForm := False;

      Application.CreateForm(xComp, xForm);
      Application.Run
    except
      on E: Exception do
      begin
        TConexao.Finalizar;
        Application.Terminate;
      end;
    end;
  finally
    TConexao.Finalizar;
  end;
end;

end.
