unit otitensfat;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  TITENSFAT = class(TTabelaPadrao)
  private
    FUSU_CodFor: Integer;
    FUSU_FilOcp: Integer;
    FUSU_NumOcp: Integer;
    FUSU_SeqIpo: Integer;
    FUSU_QtdFat: Double;
    FUSU_CodEmp: Integer;
    FUSU_NumNfc: Integer;
    FUSU_SeqIpc: Integer;
    FUSU_PreInv: Double;
    FUSU_CodFil: Integer;
    FUSU_CanSal: Char;

    FUSU_CodForOLD: Integer;
    FUSU_FilOcpOLD: Integer;
    FUSU_NumOcpOLD: Integer;
    FUSU_SeqIpoOLD: Integer;
    FUSU_QtdFatOLD: Double;
    FUSU_CodEmpOLD: Integer;
    FUSU_NumNfcOLD: Integer;
    FUSU_SeqIpcOLD: Integer;
    FUSU_PreInvOLD: Double;
    FUSU_CodFilOLD: Integer;
    FUSU_CanSalOLD: Char;

    function GetUSU_CodFor: Integer;
    procedure SetUSU_CodFor(const pUSU_CodFor: Integer);
    function GetUSU_FilOcp: Integer;
    procedure SetUSU_FilOcp(const pUSU_FilOcp: Integer);
    function GetUSU_NumOcp: Integer;
    procedure SetUSU_NumOcp(const pUSU_NumOcp: Integer);
    function GetUSU_SeqIpo: Integer;
    procedure SetUSU_SeqIpo(const pUSU_SeqIpo: Integer);
    function GetUSU_QtdFat: Double;
    procedure SetUSU_QtdFat(const pUSU_QtdFat: Double);
    function GetUSU_CodEmp: Integer;
    procedure SetUSU_CodEmp(const pUSU_CodEmp: Integer);
    function GetUSU_NumNfc: Integer;
    procedure SetUSU_NumNfc(const pUSU_NumNfc: Integer);
    function GetUSU_SeqIpc: Integer;
    procedure SetUSU_SeqIpc(const pUSU_SeqIpc: Integer);
    function GetUSU_PreInv: Double;
    procedure SetUSU_PreInv(const pUSU_PreInv: Double);
    function GetUSU_CodFil: Integer;
    procedure SetUSU_CodFil(const pUSU_CodFil: Integer);
    function GetUSU_CanSal: Char;
    procedure SetUSU_CanSal(const pUSU_CanSal: Char);

    function GetUSU_CodForOld: Integer;
    procedure SetUSU_CodForOld(const pUSU_CodFor: Integer);
    function GetUSU_FilOcpOld: Integer;
    procedure SetUSU_FilOcpOld(const pUSU_FilOcp: Integer);
    function GetUSU_NumOcpOld: Integer;
    procedure SetUSU_NumOcpOld(const pUSU_NumOcp: Integer);
    function GetUSU_SeqIpoOld: Integer;
    procedure SetUSU_SeqIpoOld(const pUSU_SeqIpo: Integer);
    function GetUSU_QtdFatOld: Double;
    procedure SetUSU_QtdFatOld(const pUSU_QtdFat: Double);
    function GetUSU_CodEmpOld: Integer;
    procedure SetUSU_CodEmpOld(const pUSU_CodEmp: Integer);
    function GetUSU_NumNfcOld: Integer;
    procedure SetUSU_NumNfcOld(const pUSU_NumNfc: Integer);
    function GetUSU_SeqIpcOld: Integer;
    procedure SetUSU_SeqIpcOld(const pUSU_SeqIpc: Integer);
    function GetUSU_PreInvOld: Double;
    procedure SetUSU_PreInvOld(const pUSU_PreInv: Double);
    function GetUSU_CodFilOld: Integer;
    procedure SetUSU_CodFilOld(const pUSU_CodFil: Integer);
    function GetUSU_CanSalOld: Char;
    procedure SetUSU_CanSalOld(const pUSU_CanSal: Char);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property USU_CodFor: Integer read GetUSU_CodFor write SetUSU_CodFor;
    property USU_FilOcp: Integer read GetUSU_FilOcp write SetUSU_FilOcp;
    property USU_NumOcp: Integer read GetUSU_NumOcp write SetUSU_NumOcp;
    property USU_SeqIpo: Integer read GetUSU_SeqIpo write SetUSU_SeqIpo;
    property USU_QtdFat: Double read GetUSU_QtdFat write SetUSU_QtdFat;
    property USU_CodEmp: Integer read GetUSU_CodEmp write SetUSU_CodEmp;
    property USU_NumNfc: Integer read GetUSU_NumNfc write SetUSU_NumNfc;
    property USU_SeqIpc: Integer read GetUSU_SeqIpc write SetUSU_SeqIpc;
    property USU_PreInv: Double read GetUSU_PreInv write SetUSU_PreInv;
    property USU_CodFil: Integer read GetUSU_CodFil write SetUSU_CodFil;
    property USU_CanSal: Char read GetUSU_CanSal write SetUSU_CanSal;

    property OLD_USU_CodFor: Integer read GetUSU_CodForOLD write SetUSU_CodForOLD;
    property OLD_USU_FilOcp: Integer read GetUSU_FilOcpOLD write SetUSU_FilOcpOLD;
    property OLD_USU_NumOcp: Integer read GetUSU_NumOcpOLD write SetUSU_NumOcpOLD;
    property OLD_USU_SeqIpo: Integer read GetUSU_SeqIpoOLD write SetUSU_SeqIpoOLD;
    property OLD_USU_QtdFat: Double read GetUSU_QtdFatOLD write SetUSU_QtdFatOLD;
    property OLD_USU_CodEmp: Integer read GetUSU_CodEmpOLD write SetUSU_CodEmpOLD;
    property OLD_USU_NumNfc: Integer read GetUSU_NumNfcOLD write SetUSU_NumNfcOLD;
    property OLD_USU_SeqIpc: Integer read GetUSU_SeqIpcOLD write SetUSU_SeqIpcOLD;
    property OLD_USU_PreInv: Double read GetUSU_PreInvOLD write SetUSU_PreInvOLD;
    property OLD_USU_CodFil: Integer read GetUSU_CodFilOLD write SetUSU_CodFilOLD;
    property OLD_USU_CanSal: Char read GetUSU_CanSalOLD write SetUSU_CanSalOLD;
  end;

implementation

{ TITENSFAT }

constructor TITENSFAT.Create();
begin

  inherited Create('USU_TITENSFAT');
end;

destructor TITENSFAT.Destroy();
begin
  inherited;
end;

function TITENSFAT.GetUSU_CodFor: Integer;
begin
  Result := FUSU_CodFor;
end;

procedure TITENSFAT.SetUSU_CodFor(const pUSU_CodFor: Integer);
begin
  FUSU_CodFor := pUSU_CodFor;

  CheckField('USU_CodFor');
end;

function TITENSFAT.GetUSU_FilOcp: Integer;
begin
  Result := FUSU_FilOcp;
end;

procedure TITENSFAT.SetUSU_FilOcp(const pUSU_FilOcp: Integer);
begin
  FUSU_FilOcp := pUSU_FilOcp;

  CheckField('USU_FilOcp');
end;

function TITENSFAT.GetUSU_NumOcp: Integer;
begin
  Result := FUSU_NumOcp;
end;

procedure TITENSFAT.SetUSU_NumOcp(const pUSU_NumOcp: Integer);
begin
  FUSU_NumOcp := pUSU_NumOcp;

  CheckField('USU_NumOcp');
end;

function TITENSFAT.GetUSU_SeqIpo: Integer;
begin
  Result := FUSU_SeqIpo;
end;

procedure TITENSFAT.SetUSU_SeqIpo(const pUSU_SeqIpo: Integer);
begin
  FUSU_SeqIpo := pUSU_SeqIpo;

  CheckField('USU_SeqIpo');
end;

function TITENSFAT.GetUSU_QtdFat: Double;
begin
  Result := FUSU_QtdFat;
end;

procedure TITENSFAT.SetUSU_QtdFat(const pUSU_QtdFat: Double);
begin
  FUSU_QtdFat := pUSU_QtdFat;

  CheckField('USU_QtdFat');
end;

function TITENSFAT.GetUSU_CodEmp: Integer;
begin
  Result := FUSU_CodEmp;
end;

procedure TITENSFAT.SetUSU_CodEmp(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmp := pUSU_CodEmp;

  CheckField('USU_CodEmp');
end;

function TITENSFAT.GetUSU_NumNfc: Integer;
begin
  Result := FUSU_NumNfc;
end;

procedure TITENSFAT.SetUSU_NumNfc(const pUSU_NumNfc: Integer);
begin
  FUSU_NumNfc := pUSU_NumNfc;

  CheckField('USU_NumNfc');
end;

function TITENSFAT.GetUSU_SeqIpc: Integer;
begin
  Result := FUSU_SeqIpc;
end;

procedure TITENSFAT.SetUSU_SeqIpc(const pUSU_SeqIpc: Integer);
begin
  FUSU_SeqIpc := pUSU_SeqIpc;

  CheckField('USU_SeqIpc');
end;

function TITENSFAT.GetUSU_PreInv: Double;
begin
  Result := FUSU_PreInv;
end;

procedure TITENSFAT.SetUSU_PreInv(const pUSU_PreInv: Double);
begin
  FUSU_PreInv := pUSU_PreInv;

  CheckField('USU_PreInv');
end;

function TITENSFAT.GetUSU_CodFil: Integer;
begin
  Result := FUSU_CodFil;
end;

procedure TITENSFAT.SetUSU_CodFil(const pUSU_CodFil: Integer);
begin
  FUSU_CodFil := pUSU_CodFil;

  CheckField('USU_CodFil');
end;

function TITENSFAT.GetUSU_CanSal: Char;
begin
  Result := FUSU_CanSal;
end;

procedure TITENSFAT.SetUSU_CanSal(const pUSU_CanSal: Char);
begin
  FUSU_CanSal := pUSU_CanSal;

  CheckField('USU_CanSal');
end;

function TITENSFAT.GetUSU_CodForOLD: Integer;
begin
  Result := FUSU_CodForOLD;
end;

procedure TITENSFAT.SetUSU_CodForOLD(const pUSU_CodFor: Integer);
begin
  FUSU_CodForOLD := pUSU_CodFor;
end;

function TITENSFAT.GetUSU_FilOcpOLD: Integer;
begin
  Result := FUSU_FilOcpOLD;
end;

procedure TITENSFAT.SetUSU_FilOcpOLD(const pUSU_FilOcp: Integer);
begin
  FUSU_FilOcpOLD := pUSU_FilOcp;
end;

function TITENSFAT.GetUSU_NumOcpOLD: Integer;
begin
  Result := FUSU_NumOcpOLD;
end;

procedure TITENSFAT.SetUSU_NumOcpOLD(const pUSU_NumOcp: Integer);
begin
  FUSU_NumOcpOLD := pUSU_NumOcp;
end;

function TITENSFAT.GetUSU_SeqIpoOLD: Integer;
begin
  Result := FUSU_SeqIpoOLD;
end;

procedure TITENSFAT.SetUSU_SeqIpoOLD(const pUSU_SeqIpo: Integer);
begin
  FUSU_SeqIpoOLD := pUSU_SeqIpo;
end;

function TITENSFAT.GetUSU_QtdFatOLD: Double;
begin
  Result := FUSU_QtdFatOLD;
end;

procedure TITENSFAT.SetUSU_QtdFatOLD(const pUSU_QtdFat: Double);
begin
  FUSU_QtdFatOLD := pUSU_QtdFat;
end;

function TITENSFAT.GetUSU_CodEmpOLD: Integer;
begin
  Result := FUSU_CodEmpOLD;
end;

procedure TITENSFAT.SetUSU_CodEmpOLD(const pUSU_CodEmp: Integer);
begin
  FUSU_CodEmpOLD := pUSU_CodEmp;
end;

function TITENSFAT.GetUSU_NumNfcOLD: Integer;
begin
  Result := FUSU_NumNfcOLD;
end;

procedure TITENSFAT.SetUSU_NumNfcOLD(const pUSU_NumNfc: Integer);
begin
  FUSU_NumNfcOLD := pUSU_NumNfc;
end;

function TITENSFAT.GetUSU_SeqIpcOLD: Integer;
begin
  Result := FUSU_SeqIpcOLD;
end;

procedure TITENSFAT.SetUSU_SeqIpcOLD(const pUSU_SeqIpc: Integer);
begin
  FUSU_SeqIpcOLD := pUSU_SeqIpc;
end;

function TITENSFAT.GetUSU_PreInvOLD: Double;
begin
  Result := FUSU_PreInvOLD;
end;

procedure TITENSFAT.SetUSU_PreInvOLD(const pUSU_PreInv: Double);
begin
  FUSU_PreInvOLD := pUSU_PreInv;
end;

function TITENSFAT.GetUSU_CodFilOLD: Integer;
begin
  Result := FUSU_CodFilOLD;
end;

procedure TITENSFAT.SetUSU_CodFilOLD(const pUSU_CodFil: Integer);
begin
  FUSU_CodFilOLD := pUSU_CodFil;
end;

function TITENSFAT.GetUSU_CanSalOLD: Char;
begin
  Result := FUSU_CanSalOLD;
end;

procedure TITENSFAT.SetUSU_CanSalOLD(const pUSU_CanSal: Char);
begin
  FUSU_CanSalOLD := pUSU_CanSal;
end;

procedure TITENSFAT.Registros_OLD();
begin
  FUSU_CodForOLD := FUSU_CodFor;
  FUSU_FilOcpOLD := FUSU_FilOcp;
  FUSU_NumOcpOLD := FUSU_NumOcp;
  FUSU_SeqIpoOLD := FUSU_SeqIpo;
  FUSU_QtdFatOLD := FUSU_QtdFat;
  FUSU_CodEmpOLD := FUSU_CodEmp;
  FUSU_NumNfcOLD := FUSU_NumNfc;
  FUSU_SeqIpcOLD := FUSU_SeqIpc;
  FUSU_PreInvOLD := FUSU_PreInv;
  FUSU_CodFilOLD := FUSU_CodFil;
  FUSU_CanSalOLD := FUSU_CanSal;

  inherited;
end;

procedure TITENSFAT.RetornarValores();
begin
  FUSU_CodFor := FUSU_CodForOLD;
  FUSU_FilOcp := FUSU_FilOcpOLD;
  FUSU_NumOcp := FUSU_NumOcpOLD;
  FUSU_SeqIpo := FUSU_SeqIpoOLD;
  FUSU_QtdFat := FUSU_QtdFatOLD;
  FUSU_CodEmp := FUSU_CodEmpOLD;
  FUSU_NumNfc := FUSU_NumNfcOLD;
  FUSU_SeqIpc := FUSU_SeqIpcOLD;
  FUSU_PreInv := FUSU_PreInvOLD;
  FUSU_CodFil := FUSU_CodFilOLD;
  FUSU_CanSal := FUSU_CanSalOLD;

  inherited;
end;

end.
