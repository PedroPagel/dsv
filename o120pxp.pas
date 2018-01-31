unit o120pxp;

interface

uses
  System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;

type

  T120PXP = class(TTabelaPadrao)
  private
    FCodEmp: Integer;
    FCodFil: Integer;
    FNumPed: Integer;
    FSeqIpd: Integer;
    FSeqPxp: Integer;
    FTipLig: Integer;
    FFilPdp: Integer;
    FNumPdp: Integer;
    FSeqPdp: Integer;
    FQtdRem: Double;
    FQtdAbt: Double;
    FQtdRet: Double;
    FUsuGer: Integer;
    FDatGer: TDate;
    FHorGer: Integer;
    FQtdRer: Double;
    FEmpPdp: Integer;

    FCodEmpOLD: Integer;
    FCodFilOLD: Integer;
    FNumPedOLD: Integer;
    FSeqIpdOLD: Integer;
    FSeqPxpOLD: Integer;
    FTipLigOLD: Integer;
    FFilPdpOLD: Integer;
    FNumPdpOLD: Integer;
    FSeqPdpOLD: Integer;
    FQtdRemOLD: Double;
    FQtdAbtOLD: Double;
    FQtdRetOLD: Double;
    FUsuGerOLD: Integer;
    FDatGerOLD: TDate;
    FHorGerOLD: Integer;
    FQtdRerOLD: Double;
    FEmpPdpOLD: Integer;

    function GetCodEmp: Integer;
    procedure SetCodEmp(const pCodEmp: Integer);
    function GetCodFil: Integer;
    procedure SetCodFil(const pCodFil: Integer);
    function GetNumPed: Integer;
    procedure SetNumPed(const pNumPed: Integer);
    function GetSeqIpd: Integer;
    procedure SetSeqIpd(const pSeqIpd: Integer);
    function GetSeqPxp: Integer;
    procedure SetSeqPxp(const pSeqPxp: Integer);
    function GetTipLig: Integer;
    procedure SetTipLig(const pTipLig: Integer);
    function GetFilPdp: Integer;
    procedure SetFilPdp(const pFilPdp: Integer);
    function GetNumPdp: Integer;
    procedure SetNumPdp(const pNumPdp: Integer);
    function GetSeqPdp: Integer;
    procedure SetSeqPdp(const pSeqPdp: Integer);
    function GetQtdRem: Double;
    procedure SetQtdRem(const pQtdRem: Double);
    function GetQtdAbt: Double;
    procedure SetQtdAbt(const pQtdAbt: Double);
    function GetQtdRet: Double;
    procedure SetQtdRet(const pQtdRet: Double);
    function GetUsuGer: Integer;
    procedure SetUsuGer(const pUsuGer: Integer);
    function GetDatGer: TDate;
    procedure SetDatGer(const pDatGer: TDate);
    function GetHorGer: Integer;
    procedure SetHorGer(const pHorGer: Integer);
    function GetQtdRer: Double;
    procedure SetQtdRer(const pQtdRer: Double);
    function GetEmpPdp: Integer;
    procedure SetEmpPdp(const pEmpPdp: Integer);

    function GetCodEmpOld: Integer;
    procedure SetCodEmpOld(const pCodEmp: Integer);
    function GetCodFilOld: Integer;
    procedure SetCodFilOld(const pCodFil: Integer);
    function GetNumPedOld: Integer;
    procedure SetNumPedOld(const pNumPed: Integer);
    function GetSeqIpdOld: Integer;
    procedure SetSeqIpdOld(const pSeqIpd: Integer);
    function GetSeqPxpOld: Integer;
    procedure SetSeqPxpOld(const pSeqPxp: Integer);
    function GetTipLigOld: Integer;
    procedure SetTipLigOld(const pTipLig: Integer);
    function GetFilPdpOld: Integer;
    procedure SetFilPdpOld(const pFilPdp: Integer);
    function GetNumPdpOld: Integer;
    procedure SetNumPdpOld(const pNumPdp: Integer);
    function GetSeqPdpOld: Integer;
    procedure SetSeqPdpOld(const pSeqPdp: Integer);
    function GetQtdRemOld: Double;
    procedure SetQtdRemOld(const pQtdRem: Double);
    function GetQtdAbtOld: Double;
    procedure SetQtdAbtOld(const pQtdAbt: Double);
    function GetQtdRetOld: Double;
    procedure SetQtdRetOld(const pQtdRet: Double);
    function GetUsuGerOld: Integer;
    procedure SetUsuGerOld(const pUsuGer: Integer);
    function GetDatGerOld: TDate;
    procedure SetDatGerOld(const pDatGer: TDate);
    function GetHorGerOld: Integer;
    procedure SetHorGerOld(const pHorGer: Integer);
    function GetQtdRerOld: Double;
    procedure SetQtdRerOld(const pQtdRer: Double);
    function GetEmpPdpOld: Integer;
    procedure SetEmpPdpOld(const pEmpPdp: Integer);
  protected
    procedure Registros_OLD(); override;
    procedure RetornarValores(); override;
  public
    constructor Create();
    destructor Destroy(); override;

    property CodEmp: Integer read GetCodEmp write SetCodEmp;
    property CodFil: Integer read GetCodFil write SetCodFil;
    property NumPed: Integer read GetNumPed write SetNumPed;
    property SeqIpd: Integer read GetSeqIpd write SetSeqIpd;
    property SeqPxp: Integer read GetSeqPxp write SetSeqPxp;
    property TipLig: Integer read GetTipLig write SetTipLig;
    property FilPdp: Integer read GetFilPdp write SetFilPdp;
    property NumPdp: Integer read GetNumPdp write SetNumPdp;
    property SeqPdp: Integer read GetSeqPdp write SetSeqPdp;
    property QtdRem: Double read GetQtdRem write SetQtdRem;
    property QtdAbt: Double read GetQtdAbt write SetQtdAbt;
    property QtdRet: Double read GetQtdRet write SetQtdRet;
    property UsuGer: Integer read GetUsuGer write SetUsuGer;
    property DatGer: TDate read GetDatGer write SetDatGer;
    property HorGer: Integer read GetHorGer write SetHorGer;
    property QtdRer: Double read GetQtdRer write SetQtdRer;
    property EmpPdp: Integer read GetEmpPdp write SetEmpPdp;

    property OLD_CodEmp: Integer read GetCodEmpOLD write SetCodEmpOLD;
    property OLD_CodFil: Integer read GetCodFilOLD write SetCodFilOLD;
    property OLD_NumPed: Integer read GetNumPedOLD write SetNumPedOLD;
    property OLD_SeqIpd: Integer read GetSeqIpdOLD write SetSeqIpdOLD;
    property OLD_SeqPxp: Integer read GetSeqPxpOLD write SetSeqPxpOLD;
    property OLD_TipLig: Integer read GetTipLigOLD write SetTipLigOLD;
    property OLD_FilPdp: Integer read GetFilPdpOLD write SetFilPdpOLD;
    property OLD_NumPdp: Integer read GetNumPdpOLD write SetNumPdpOLD;
    property OLD_SeqPdp: Integer read GetSeqPdpOLD write SetSeqPdpOLD;
    property OLD_QtdRem: Double read GetQtdRemOLD write SetQtdRemOLD;
    property OLD_QtdAbt: Double read GetQtdAbtOLD write SetQtdAbtOLD;
    property OLD_QtdRet: Double read GetQtdRetOLD write SetQtdRetOLD;
    property OLD_UsuGer: Integer read GetUsuGerOLD write SetUsuGerOLD;
    property OLD_DatGer: TDate read GetDatGerOLD write SetDatGerOLD;
    property OLD_HorGer: Integer read GetHorGerOLD write SetHorGerOLD;
    property OLD_QtdRer: Double read GetQtdRerOLD write SetQtdRerOLD;
    property OLD_EmpPdp: Integer read GetEmpPdpOLD write SetEmpPdpOLD;
  end;

implementation

{ T120PXP }

constructor T120PXP.Create();
begin
  AddForeignKeys(['CodEmp','CodFil','NumPed','SeqIpd','EmpPdp','FilPdp','NumPdp','SeqPdp'], ['CodEmp','CodFil','NumPed','SeqIpd','CodEmp','CodFil','NumPed','SeqIpd']);
  AddPrimaryKeys('CodEmp;CodFil;NumPed;SeqIpd;SeqPxp');

  inherited Create('E120PXP');
end;

destructor T120PXP.Destroy();
begin
  inherited;
end;

function T120PXP.GetCodEmp: Integer;
begin
  Result := FCodEmp;
end;

procedure T120PXP.SetCodEmp(const pCodEmp: Integer);
begin
  FCodEmp := pCodEmp;

  CheckField('CodEmp');
end;

function T120PXP.GetCodFil: Integer;
begin
  Result := FCodFil;
end;

procedure T120PXP.SetCodFil(const pCodFil: Integer);
begin
  FCodFil := pCodFil;

  CheckField('CodFil');
end;

function T120PXP.GetNumPed: Integer;
begin
  Result := FNumPed;
end;

procedure T120PXP.SetNumPed(const pNumPed: Integer);
begin
  FNumPed := pNumPed;

  CheckField('NumPed');
end;

function T120PXP.GetSeqIpd: Integer;
begin
  Result := FSeqIpd;
end;

procedure T120PXP.SetSeqIpd(const pSeqIpd: Integer);
begin
  FSeqIpd := pSeqIpd;

  CheckField('SeqIpd');
end;

function T120PXP.GetSeqPxp: Integer;
begin
  Result := FSeqPxp;
end;

procedure T120PXP.SetSeqPxp(const pSeqPxp: Integer);
begin
  FSeqPxp := pSeqPxp;

  CheckField('SeqPxp');
end;

function T120PXP.GetTipLig: Integer;
begin
  Result := FTipLig;
end;

procedure T120PXP.SetTipLig(const pTipLig: Integer);
begin
  FTipLig := pTipLig;

  CheckField('TipLig');
end;

function T120PXP.GetFilPdp: Integer;
begin
  Result := FFilPdp;
end;

procedure T120PXP.SetFilPdp(const pFilPdp: Integer);
begin
  FFilPdp := pFilPdp;

  CheckField('FilPdp');
end;

function T120PXP.GetNumPdp: Integer;
begin
  Result := FNumPdp;
end;

procedure T120PXP.SetNumPdp(const pNumPdp: Integer);
begin
  FNumPdp := pNumPdp;

  CheckField('NumPdp');
end;

function T120PXP.GetSeqPdp: Integer;
begin
  Result := FSeqPdp;
end;

procedure T120PXP.SetSeqPdp(const pSeqPdp: Integer);
begin
  FSeqPdp := pSeqPdp;

  CheckField('SeqPdp');
end;

function T120PXP.GetQtdRem: Double;
begin
  Result := FQtdRem;
end;

procedure T120PXP.SetQtdRem(const pQtdRem: Double);
begin
  FQtdRem := pQtdRem;

  CheckField('QtdRem');
end;

function T120PXP.GetQtdAbt: Double;
begin
  Result := FQtdAbt;
end;

procedure T120PXP.SetQtdAbt(const pQtdAbt: Double);
begin
  FQtdAbt := pQtdAbt;

  CheckField('QtdAbt');
end;

function T120PXP.GetQtdRet: Double;
begin
  Result := FQtdRet;
end;

procedure T120PXP.SetQtdRet(const pQtdRet: Double);
begin
  FQtdRet := pQtdRet;

  CheckField('QtdRet');
end;

function T120PXP.GetUsuGer: Integer;
begin
  Result := FUsuGer;
end;

procedure T120PXP.SetUsuGer(const pUsuGer: Integer);
begin
  FUsuGer := pUsuGer;

  CheckField('UsuGer');
end;

function T120PXP.GetDatGer: TDate;
begin
  Result := FDatGer;
end;

procedure T120PXP.SetDatGer(const pDatGer: TDate);
begin
  FDatGer := pDatGer;

  CheckField('DatGer');
end;

function T120PXP.GetHorGer: Integer;
begin
  Result := FHorGer;
end;

procedure T120PXP.SetHorGer(const pHorGer: Integer);
begin
  FHorGer := pHorGer;

  CheckField('HorGer');
end;

function T120PXP.GetQtdRer: Double;
begin
  Result := FQtdRer;
end;

procedure T120PXP.SetQtdRer(const pQtdRer: Double);
begin
  FQtdRer := pQtdRer;

  CheckField('QtdRer');
end;

function T120PXP.GetEmpPdp: Integer;
begin
  Result := FEmpPdp;
end;

procedure T120PXP.SetEmpPdp(const pEmpPdp: Integer);
begin
  FEmpPdp := pEmpPdp;

  CheckField('EmpPdp');
end;

function T120PXP.GetCodEmpOLD: Integer;
begin
  Result := FCodEmpOLD;
end;

procedure T120PXP.SetCodEmpOLD(const pCodEmp: Integer);
begin
  FCodEmpOLD := pCodEmp;
end;

function T120PXP.GetCodFilOLD: Integer;
begin
  Result := FCodFilOLD;
end;

procedure T120PXP.SetCodFilOLD(const pCodFil: Integer);
begin
  FCodFilOLD := pCodFil;
end;

function T120PXP.GetNumPedOLD: Integer;
begin
  Result := FNumPedOLD;
end;

procedure T120PXP.SetNumPedOLD(const pNumPed: Integer);
begin
  FNumPedOLD := pNumPed;
end;

function T120PXP.GetSeqIpdOLD: Integer;
begin
  Result := FSeqIpdOLD;
end;

procedure T120PXP.SetSeqIpdOLD(const pSeqIpd: Integer);
begin
  FSeqIpdOLD := pSeqIpd;
end;

function T120PXP.GetSeqPxpOLD: Integer;
begin
  Result := FSeqPxpOLD;
end;

procedure T120PXP.SetSeqPxpOLD(const pSeqPxp: Integer);
begin
  FSeqPxpOLD := pSeqPxp;
end;

function T120PXP.GetTipLigOLD: Integer;
begin
  Result := FTipLigOLD;
end;

procedure T120PXP.SetTipLigOLD(const pTipLig: Integer);
begin
  FTipLigOLD := pTipLig;
end;

function T120PXP.GetFilPdpOLD: Integer;
begin
  Result := FFilPdpOLD;
end;

procedure T120PXP.SetFilPdpOLD(const pFilPdp: Integer);
begin
  FFilPdpOLD := pFilPdp;
end;

function T120PXP.GetNumPdpOLD: Integer;
begin
  Result := FNumPdpOLD;
end;

procedure T120PXP.SetNumPdpOLD(const pNumPdp: Integer);
begin
  FNumPdpOLD := pNumPdp;
end;

function T120PXP.GetSeqPdpOLD: Integer;
begin
  Result := FSeqPdpOLD;
end;

procedure T120PXP.SetSeqPdpOLD(const pSeqPdp: Integer);
begin
  FSeqPdpOLD := pSeqPdp;
end;

function T120PXP.GetQtdRemOLD: Double;
begin
  Result := FQtdRemOLD;
end;

procedure T120PXP.SetQtdRemOLD(const pQtdRem: Double);
begin
  FQtdRemOLD := pQtdRem;
end;

function T120PXP.GetQtdAbtOLD: Double;
begin
  Result := FQtdAbtOLD;
end;

procedure T120PXP.SetQtdAbtOLD(const pQtdAbt: Double);
begin
  FQtdAbtOLD := pQtdAbt;
end;

function T120PXP.GetQtdRetOLD: Double;
begin
  Result := FQtdRetOLD;
end;

procedure T120PXP.SetQtdRetOLD(const pQtdRet: Double);
begin
  FQtdRetOLD := pQtdRet;
end;

function T120PXP.GetUsuGerOLD: Integer;
begin
  Result := FUsuGerOLD;
end;

procedure T120PXP.SetUsuGerOLD(const pUsuGer: Integer);
begin
  FUsuGerOLD := pUsuGer;
end;

function T120PXP.GetDatGerOLD: TDate;
begin
  Result := FDatGerOLD;
end;

procedure T120PXP.SetDatGerOLD(const pDatGer: TDate);
begin
  FDatGerOLD := pDatGer;
end;

function T120PXP.GetHorGerOLD: Integer;
begin
  Result := FHorGerOLD;
end;

procedure T120PXP.SetHorGerOLD(const pHorGer: Integer);
begin
  FHorGerOLD := pHorGer;
end;

function T120PXP.GetQtdRerOLD: Double;
begin
  Result := FQtdRerOLD;
end;

procedure T120PXP.SetQtdRerOLD(const pQtdRer: Double);
begin
  FQtdRerOLD := pQtdRer;
end;

function T120PXP.GetEmpPdpOLD: Integer;
begin
  Result := FEmpPdpOLD;
end;

procedure T120PXP.SetEmpPdpOLD(const pEmpPdp: Integer);
begin
  FEmpPdpOLD := pEmpPdp;
end;

procedure T120PXP.Registros_OLD();
begin
  FCodEmpOLD := FCodEmp;
  FCodFilOLD := FCodFil;
  FNumPedOLD := FNumPed;
  FSeqIpdOLD := FSeqIpd;
  FSeqPxpOLD := FSeqPxp;
  FTipLigOLD := FTipLig;
  FFilPdpOLD := FFilPdp;
  FNumPdpOLD := FNumPdp;
  FSeqPdpOLD := FSeqPdp;
  FQtdRemOLD := FQtdRem;
  FQtdAbtOLD := FQtdAbt;
  FQtdRetOLD := FQtdRet;
  FUsuGerOLD := FUsuGer;
  FDatGerOLD := FDatGer;
  FHorGerOLD := FHorGer;
  FQtdRerOLD := FQtdRer;
  FEmpPdpOLD := FEmpPdp;

  inherited;
end;

procedure T120PXP.RetornarValores();
begin
  FCodEmp := FCodEmpOLD;
  FCodFil := FCodFilOLD;
  FNumPed := FNumPedOLD;
  FSeqIpd := FSeqIpdOLD;
  FSeqPxp := FSeqPxpOLD;
  FTipLig := FTipLigOLD;
  FFilPdp := FFilPdpOLD;
  FNumPdp := FNumPdpOLD;
  FSeqPdp := FSeqPdpOLD;
  FQtdRem := FQtdRemOLD;
  FQtdAbt := FQtdAbtOLD;
  FQtdRet := FQtdRetOLD;
  FUsuGer := FUsuGerOLD;
  FDatGer := FDatGerOLD;
  FHorGer := FHorGerOLD;
  FQtdRer := FQtdRerOLD;
  FEmpPdp := FEmpPdpOLD;

  inherited;
end;

end.
