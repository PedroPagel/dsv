unit oFacadeBaseCRM;

interface

type
  TFacadeBaseCRM = class
  private
    FCodEmp: Integer;
    FCodFil: Integer;
    FNumPed: Integer;
  public
    property CodEmp: Integer read FCodEmp write FCodEmp;
    property CodFil: Integer read FCodFil write FCodFil;
    property NumPed: Integer read FNumPed write FNumPed;
  end;

implementation

end.
