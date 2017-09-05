unit oMemo;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.StdCtrls;

type
  THMemo = class(TMemo)
  private
    { Private declarations }
    FDataBaseTable: string;
    FDataBaseField: string;
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
    property DataBaseTable: string read FDataBaseTable write FDataBaseTable;
    property DataBaseField: string read FDataBaseField write FDataBaseField;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Samples', [THMemo]);
end;

end.
