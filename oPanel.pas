unit oPanel;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.ExtCtrls, System.Rtti,
  Vcl.Forms, oBase;

type
//  TCheckMethod = (cmNone, cmExit, cmChange, cmEnter, cmClick);

  THPanel = class(TPanel)
  private
    { Private declarations }
    FDataBaseTable: string;
  protected
    { Protected declarations }

  public
    { Public declarations }
  published
    { Published declarations }
    property DataBaseTable: string read FDataBaseTable write FDataBaseTable;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [THPanel]);
end;

end.
