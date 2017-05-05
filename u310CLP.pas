unit u310CLP;

interface

uses
  Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, oButtonedEdit, oDataSetGrid, Vcl.ComCtrls, oConsulta, System.Contnrs,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Menus, CommCtrl, o310clp, Winapi.Windows, Data.DB,
  Vcl.Tabs, Vcl.DockTabSet, oMensagem, oHButton;

CONST
  CGRIDLIG = 1;
  CGRIDDES = 2;
  CGRIDBLG = 1;
  CGRIDBNL = 2;
type
  TF310CLP = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel10: TPanel;
    Mostrar: TButton;
    Cancelar: TButton;
    Sair: TButton;
    Processar: TButton;
    Marcar: TButton;
    Desmarcar: TButton;
    GBContrato: TGroupBox;
    Label2: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    BENumCtr: THButtonedEdit;
    DDatIni: TDateTimePicker;
    DDatFim: TDateTimePicker;
    BECodFil: THButtonedEdit;
    BECodCli: THButtonedEdit;
    PGControl: TPageControl;
    Reajuste: TTabSheet;
    Panel6: TPanel;
    Splitter1: TSplitter;
    Splitter3: TSplitter;
    Panel7: TPanel;
    Panel4: TPanel;
    FGridCon: TDataSetGrid;
    Panel8: TPanel;
    Panel12: TPanel;
    FGridTit: TDataSetGrid;
    Panel13: TPanel;
    Panel9: TPanel;
    FGridRea: TDataSetGrid;
    Panel3: TPanel;
    Label15: TLabel;
    LTotOri: TLabel;
    Label16: TLabel;
    LTotRea: TLabel;
    Despesa: TTabSheet;
    Panel11: TPanel;
    Panel5: TPanel;
    Panel14: TPanel;
    FGridClp: TDataSetGrid;
    Splitter2: TSplitter;
    Panel16: TPanel;
    Panel17: TPanel;
    FGridLig: TDataSetGrid;
    Panel19: TPanel;
    Splitter4: TSplitter;
    Panel20: TPanel;
    Panel21: TPanel;
    FGridDes: TDataSetGrid;
    GBTitulo: TGroupBox;
    Label8: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DVenFim: TDateTimePicker;
    BEVlrFim: THButtonedEdit;
    DVenIni: TDateTimePicker;
    BEVlrIni: THButtonedEdit;
    BECodFor: THButtonedEdit;
    BETitFil: THButtonedEdit;
    BECodEmp: THButtonedEdit;
    Ligar: TButton;
    Remover: TButton;
    pmMarcar: TPopupMenu;
    Ligado: TMenuItem;
    NaoLigado: TMenuItem;
    LigacaoBem: TTabSheet;
    Panel15: TPanel;
    Splitter5: TSplitter;
    Splitter6: TSplitter;
    Panel18: TPanel;
    Panel22: TPanel;
    FGridBem: TDataSetGrid;
    Panel23: TPanel;
    Panel24: TPanel;
    FGridBlg: TDataSetGrid;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    LigarBem: TButton;
    RemoverBem: TButton;
    FGridBnl: TDataSetGrid;
    GBBem: TGroupBox;
    BEEmpBem: THButtonedEdit;
    BECodBem: THButtonedEdit;
    Label9: TLabel;
    Label14: TLabel;
    MarcarGrids: TCButton;
    DesmarcarGrids: TCButton;
    DesmarcarBem: TCButton;
    MarcarBem: TCButton;
    pmDesmarcar: TPopupMenu;
    Ligados: TMenuItem;
    NaoLigados: TMenuItem;

    procedure FormCreate(Sender: TObject);
    procedure MostrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CancelarClick(Sender: TObject);
    procedure SairClick(Sender: TObject);
    procedure BECodFilKeyPress(Sender: TObject; var Key: Char);
    procedure BENumCtrKeyPress(Sender: TObject; var Key: Char);
    procedure BECodCliKeyPress(Sender: TObject; var Key: Char);
    procedure DDatIniChange(Sender: TObject);
    procedure DDatFimChange(Sender: TObject);
    procedure DDatIniClick(Sender: TObject);
    procedure DDatFimClick(Sender: TObject);
    procedure DDatIniEnter(Sender: TObject);
    procedure DDatFimEnter(Sender: TObject);
    procedure DDatIniExit(Sender: TObject);
    procedure DDatFimExit(Sender: TObject);
    procedure BENumCtrExit(Sender: TObject);
    procedure BECodFilExit(Sender: TObject);
    procedure BECodCliExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FGridConEnterLine(Sender: TObject);
    procedure MarcarClick(Sender: TObject);
    procedure ProcessarClick(Sender: TObject);
    procedure PGControlDrawTab(Control: TCustomTabControl; TabIndex: Integer;
      const Rect: TRect; Active: Boolean);
    procedure PGControlChange(Sender: TObject);
    procedure BECodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure BETitFilKeyPress(Sender: TObject; var Key: Char);
    procedure BETitFilExit(Sender: TObject);
    procedure BECodForKeyPress(Sender: TObject; var Key: Char);
    procedure BECodForExit(Sender: TObject);
    procedure DVenIniExit(Sender: TObject);
    procedure DVenIniEnter(Sender: TObject);
    procedure BEVlrIniKeyPress(Sender: TObject; var Key: Char);
    procedure BEVlrIniExit(Sender: TObject);
    procedure BEVlrFimKeyPress(Sender: TObject; var Key: Char);
    procedure BEVlrFimExit(Sender: TObject);
    procedure BEVlrIniClick(Sender: TObject);
    procedure BEVlrIniChange(Sender: TObject);
    procedure BEVlrFimChange(Sender: TObject);
    procedure BEVlrFimClick(Sender: TObject);
    procedure BEVlrFimEnter(Sender: TObject);
    procedure DVenIniClick(Sender: TObject);
    procedure DVenIniChange(Sender: TObject);
    procedure DVenFimExit(Sender: TObject);
    procedure DVenFimEnter(Sender: TObject);
    procedure DVenFimClick(Sender: TObject);
    procedure DVenFimChange(Sender: TObject);
    procedure FGridClpEnterLine(Sender: TObject);
    procedure LigarClick(Sender: TObject);
    procedure RemoverClick(Sender: TObject);
    procedure DesmarcarClick(Sender: TObject);
    procedure LigadoClick(Sender: TObject);
    procedure NaoLigadoClick(Sender: TObject);
    procedure FGridBemEnterLine(Sender: TObject);
    procedure LigarBemClick(Sender: TObject);
    procedure RemoverBemClick(Sender: TObject);
    procedure LigadosClick(Sender: TObject);
    procedure NaoLigadosClick(Sender: TObject);
  private
    FString: string;
    FOldDate: TDateTime;
    FIteradorReajuste: TIteradorControle;
    FIteradorLigacao: TIteradorControle;
    FControladorBem: TControladorBem;
    FMarcarDesmarcar: Byte;

    function FiltroTitulos(): string;
    function FiltroContrato(): string;
    function Valor(const pObj: THButtonedEdit; const pTexto, pKey: String; const pEspaco,pDecimal: Integer): String;

    procedure MostrarBem();
    procedure MostrarLigacao();
    procedure ValidarSelecao();
    procedure MostrarReajuste();
    procedure ValidarSelecaoBem();
    procedure MontarDadosCalculos();
    procedure MarcarDesmarcar(const pValue: Byte);
    procedure MarcarDesmarcarBem(const pGrid: Byte);
    procedure CalcularReajuste(const pIndice: Double);
    procedure MarcarDesmarcarTitulos(const pGrid: Byte);
  published
    procedure FGridReaCheckClick();
    procedure FGridReaIndNovChange();
    procedure FGridReaVlrBonChange();

    procedure FGridConCheckClick();
    procedure FGridClpCheckClick();
    procedure FGridDesCheckClick();
    procedure FGridLigCheckClick();
    procedure FGridBnlCheckClick();
    procedure FGridBlgCheckClick();
    procedure FGridBemCheckClick();
    procedure BloquearCamposTitulo(const pValue: Boolean);
  end;

var
  F310CLP: TF310CLP;

implementation

uses
  oTabelas, oBase, oTitulo, System.Math;

{$R *.dfm}

procedure TF310CLP.BECodFilExit(Sender: TObject);
begin
  FString := BECodFil.Text;
  UltimoCaracter(FString, ',', True);
  BECodFil.Text := FString;
end;

procedure TF310CLP.BECodFilKeyPress(Sender: TObject; var Key: Char);
begin
  FString := BECodFil.Text;
  if (UltimoCaracter(FString, ',', True) and AnsiSameText(Key,',')) or ((Length(FString) = 0) and AnsiSameText(Key,',')) then
    Key := #0
  else
  if not(CharInSet(key, ['0'..'9',',',#8])) then
    key := #0;
end;

procedure TF310CLP.BECodForExit(Sender: TObject);
begin
  FString := BECodFor.Text;
  UltimoCaracter(FString, ',', True);
  BECodFor.Text := FString;
end;

procedure TF310CLP.BECodForKeyPress(Sender: TObject; var Key: Char);
begin
  FString := BECodFor.Text;
  if (UltimoCaracter(FString, ',', True) and AnsiSameText(Key,',')) or ((Length(FString) = 0) and AnsiSameText(Key,',')) then
    Key := #0
  else
  if not(CharInSet(key, ['0'..'9',',',#8])) then
    key := #0;
end;

procedure TF310CLP.BECodCliExit(Sender: TObject);
begin
  FString := BECodCli.Text;
  UltimoCaracter(FString, ',', True);
  BECodCli.Text := FString;
end;

procedure TF310CLP.BECodCliKeyPress(Sender: TObject; var Key: Char);
begin
  FString := BECodCli.Text;
  if (UltimoCaracter(FString, ',', True) and AnsiSameText(Key,',')) or ((Length(FString) = 0) and AnsiSameText(Key,',')) then
    Key := #0
  else
  if not(CharInSet(key, ['0'..'9',',',#8])) then
    key := #0;
end;

procedure TF310CLP.BECodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  FString := BECodEmp.Text;
  if (UltimoCaracter(FString, ',', True) and AnsiSameText(Key,',')) or ((Length(FString) = 0) and AnsiSameText(Key,',')) then
    Key := #0
  else
  if not(CharInSet(key, ['0'..'9',',',#8])) then
    key := #0;
end;

procedure TF310CLP.BENumCtrExit(Sender: TObject);
begin
  FString := BENumCtr.Text;
  UltimoCaracter(FString, ',', True);
  BENumCtr.Text := FString;
end;

procedure TF310CLP.BENumCtrKeyPress(Sender: TObject; var Key: Char);
begin
  FString := BENumCtr.Text;
  if (UltimoCaracter(FString, ',', True) and AnsiSameText(Key,',')) or ((Length(FString) = 0) and AnsiSameText(Key,',')) then
    Key := #0
  else
  if not(CharInSet(key, ['0'..'9',',',#8])) then
    Key := #0;
end;

procedure TF310CLP.BETitFilExit(Sender: TObject);
begin
  FString := BECodFil.Text;
  UltimoCaracter(FString, ',', True);
  BECodFil.Text := FString;
end;

procedure TF310CLP.BETitFilKeyPress(Sender: TObject; var Key: Char);
begin
  FString := BECodFil.Text;
  if (UltimoCaracter(FString, ',', True) and AnsiSameText(Key,',')) or ((Length(FString) = 0) and AnsiSameText(Key,',')) then
    Key := #0
  else
  if not(CharInSet(key, ['0'..'9',',',#8])) then
    key := #0;
end;

procedure TF310CLP.BEVlrFimChange(Sender: TObject);
begin
  DVenFim.Format := FormatSettings.ShortDateFormat;

  if (DVenFim.Date = 1) then
    DVenFim.Format := '00/00/0000';
end;

procedure TF310CLP.BEVlrFimClick(Sender: TObject);
begin
  DVenFim.Format := FormatSettings.ShortDateFormat;
end;

procedure TF310CLP.BEVlrFimEnter(Sender: TObject);
begin
  DVenFim.Format := FormatSettings.ShortDateFormat;
end;

procedure TF310CLP.BEVlrFimExit(Sender: TObject);
var
  xVlrIni: Double;
  xVlrFim: Double;
begin
  xVlrini := StrToFloat(StringReplace(BEVlrIni.Text, '.', '', [rfReplaceAll]));
  xVlrFim := StrToFloat(StringReplace(BEVlrFim.Text, '.', '', [rfReplaceAll]));

  if (xVlrFim > 0) then
    if (xVlrFim < xVlrini) then
    begin
      BEVlrFim.SetFocus;
      CMessage('Valor Final não poder ser menor que o Valor Inicial!', mtWarning);
    end;
end;

procedure TF310CLP.BEVlrFimKeyPress(Sender: TObject; var Key: Char);
begin
  FString := BEVlrFim.Text;
  if (UltimoCaracter(FString, ',', True) and AnsiSameText(Key,',')) or ((Length(FString) = 0) and AnsiSameText(Key,',')) then
    Key := #0
  else
  if not(CharInSet(key, ['0'..'9',',',#8])) then
    key := #0;

  Valor(BEVlrFim,BEVlrFim.Text,key,50,2);
end;

procedure TF310CLP.BEVlrIniChange(Sender: TObject);
begin
  DVenIni.Format := FormatSettings.ShortDateFormat;

  if (DVenIni.Date = 1) then
    DVenIni.Format := '00/00/0000';
end;

procedure TF310CLP.BEVlrIniClick(Sender: TObject);
begin
  DVenIni.Format := FormatSettings.ShortDateFormat;
end;

procedure TF310CLP.BEVlrIniExit(Sender: TObject);
var
  xVlrIni: Double;
  xVlrFim: Double;
begin
  xVlrini := StrToFloat(StringReplace(BEVlrIni.Text, '.', '', [rfReplaceAll]));
  xVlrFim := StrToFloat(StringReplace(BEVlrFim.Text, '.', '', [rfReplaceAll]));

  if (xVlrFim > 0) and (xVlrini > xVlrFim) then
  begin
    BEVlrFim.SetFocus;
    CMessage('Valor Inicial não poder ser menor que o Valor Final!', mtWarning);
  end;
end;

procedure TF310CLP.BEVlrIniKeyPress(Sender: TObject; var Key: Char);
begin
  FString := BEVlrIni.Text;
  if (UltimoCaracter(FString, ',', True) and AnsiSameText(Key,',')) or ((Length(FString) = 0) and AnsiSameText(Key,',')) then
    Key := #0
  else
  if not(CharInSet(key, ['0'..'9',',',#8])) then
    key := #0;

  Valor(BEVlrIni,BEVlrIni.Text,key,50,2);
end;

procedure TF310CLP.BloquearCamposTitulo(const pValue: Boolean);
begin
  BETitFil.Enabled := pValue;
  BECodEmp.Enabled := pValue;
  BECodFor.Enabled := pValue;
  BEVlrIni.Enabled := pValue;
  BEVlrFim.Enabled := pValue;
  DVenIni.Enabled := pValue;
  DVenFim.Enabled := pValue;
  Processar.Enabled := not(pValue);
end;

procedure TF310CLP.SairClick(Sender: TObject);
begin
  if (PGControl.TabIndex = 0) then
  begin
    if (FGridCon.Count = 0) or (CMessage('Deseja realmente sair?', mtConfirmationYesNo)) then
    begin
      CancelarClick(Self);
      Self.Close;
    end;
  end
  else
  if (PGControl.TabIndex = 1) then
  begin
    if (FGridClp.Count = 0) or (CMessage('Deseja realmente sair?', mtConfirmationYesNo)) then
    begin
      CancelarClick(Self);
      Self.Close;
    end;
  end
  else
  if (PGControl.TabIndex = 2) then
  begin
    if (FGridBem.Count = 0) or (CMessage('Deseja realmente sair?', mtConfirmationYesNo)) then
    begin
      CancelarClick(Self);
      Self.Close;
    end;
  end;
end;

procedure TF310CLP.ValidarSelecao;
var
  xContrato: tSelecaoCheck;
  xDespesa: tSelecaoCheck;
begin
  xContrato := FIteradorLigacao.SelecaoContrato;
  xDespesa := FIteradorLigacao.SelecaoDespesa;

  Ligar.Enabled := (((xContrato = scLigacao) or (xContrato = scPossuiLigacao)) and (xDespesa = scNaoLigado)) and not(xContrato = scApenasRemover);
  Remover.Enabled := (xContrato = scPossuiLigacao) or (xContrato = scApenasRemover);
end;

procedure TF310CLP.ValidarSelecaoBem;
var
  xBem: tSelecaoCheck;
  xNaoLigado: tSelecaoCheck;
begin
  xBem := FControladorBem.SelecaoBem;
  xNaoLigado := FControladorBem.SelecaoNaoLigado;

  LigarBem.Enabled := (((xBem = scLigacao) or (xBem = scPossuiLigacao)) and (xNaoLigado = scNaoLigado)) and not(xBem = scApenasRemover);
  RemoverBem.Enabled := (xBem = scPossuiLigacao) or (xBem = scApenasRemover);
end;

function TF310CLP.Valor(const pObj: THButtonedEdit; const pTexto, pKey: String;
  const pEspaco, pDecimal: Integer): String;
var
  xChar, xDiv : String;
  i: Integer;
begin
  xDiv := '1';
  for i := 1 to pDecimal do
    xDiv := xDiv + '0';

  xChar := iff(pKey = #8, copy(pTexto, 1, length(pTexto) -1), pTexto + pKey);

  While (pos(',', xChar) > 0) or (pos('.', xChar) > 0) do
  begin
    Delete(xChar, pos('.', xChar), 1);
    Delete(xChar, pos(',', xChar), 1);
  end;

  pObj.MaxLength := pred(pEspaco);
  pObj.Text := Format('%*.*n',[pEspaco,pDecimal,StrToFloat(xChar)/StrToInt(xDiv)]);
  pObj.SelStart := length(pObj.text)+1;
end;

procedure TF310CLP.CalcularReajuste(const pIndice: Double);
var
  xControle: TControle;
begin
  FIteradorReajuste.IndexCtr := pred(FGridCon.Line);
  FIteradorReajuste.IndexTit := pred(FGridRea.Line);
  FIteradorReajuste.ValorIndice := pIndice;
  FIteradorReajuste.CalcularAjustes();

  if (pIndice = 0) then
  begin
    FGridRea.FindField('Check').AsInteger := 0;
    xControle := TControle(FIteradorReajuste[FIteradorReajuste.IndexCtr]);

    if not(xControle.Ajuste.Selecionados) then
    begin
      FGridCon.FindField('Check').AsInteger := 0;
      xControle.Check := 0;
    end;
  end;

  MontarDadosCalculos();
end;

procedure TF310CLP.CancelarClick(Sender: TObject);
begin
  BECodFil.Text := EmptyStr;
  BENumCtr.Text := EmptyStr;
  BECodCli.Text := EmptyStr;
  BECodEmp.Text := EmptyStr;
  BECodFil.Text := EmptyStr;
  BECodFor.Text := EmptyStr;
  BEEmpBem.Text := EmptyStr;
  BECodBem.Text := EmptyStr;

  FGridCon.Enabled := False;
  FGridTit.Enabled := False;
  FGridRea.Enabled := False;
  FGridLig.Enabled := False;
  FGridDes.Enabled := False;
  FGridClp.Enabled := False;
  Ligar.Enabled := False;
  Remover.Enabled := False;
  Marcar.Enabled := False;
  Desmarcar.Enabled := False;
  MarcarGrids.Enabled := False;
  DesmarcarGrids.Enabled := False;

  DDatIni.DateTime := 1;
  DDatIni.Format := '00/00/0000';
  DDatFim.DateTime := 1;
  DDatFim.Format := '00/00/0000';
  DVenIni.DateTime := 1;
  DVenIni.Format := '00/00/0000';
  DVenFim.DateTime := 1;
  DVenFim.Format := '00/00/0000';
  DDatIni.DateTime := 1;
  DDatIni.Format := '00/00/0000';
  DDatFim.DateTime := 1;
  DDatFim.Format := '00/00/0000';

  BEVlrIni.Text := '0,00';
  BEVlrFim.Text := '0,00';

  LTotOri.Caption := '0.00';
  LTotRea.Caption := '0.00';

  FGridTit.Clear;
  FGridCon.Clear;
  FGridRea.Clear;
  FGridLig.Clear;
  FGridDes.Clear;
  FGridClp.Clear;
  FGridBem.Clear;
  FGridBlg.Clear;
  FGridBnl.Clear;

  PGControl.TabIndex := 0;
  PGControlChange(Self);

  BECodFil.SetFocus;
  BloquearCamposTitulo(False);
end;

procedure TF310CLP.DDatFimChange(Sender: TObject);
begin
  DDatFim.Format := FormatSettings.ShortDateFormat;

  if (DDatFim.Date = 1) then
    DDatFim.Format := '00/00/0000';
end;

procedure TF310CLP.DDatFimClick(Sender: TObject);
begin
  DDatFim.Format := FormatSettings.ShortDateFormat;
end;

procedure TF310CLP.DDatFimEnter(Sender: TObject);
begin
  DDatFim.Format := FormatSettings.ShortDateFormat;
end;

procedure TF310CLP.DDatFimExit(Sender: TObject);
begin
  if (DDatFim.Date < DDatIni.Date) then
  begin
    DDatFim.SetFocus;
    CMessage('Data Final não poder ser menor que a Data Inicial!', mtWarning);
  end
  else
  if (DDatFim.Date = 1) then
    DDatFim.Format := '00/00/0000';
end;

procedure TF310CLP.DDatIniChange(Sender: TObject);
begin
  DDatIni.Format := FormatSettings.ShortDateFormat;

  if (DDatIni.Date = 1) then
    DDatIni.Format := '00/00/0000';
end;

procedure TF310CLP.DDatIniClick(Sender: TObject);
begin
  FOldDate := DDatIni.DateTime;
  DDatIni.DateTime := Date;
  DDatIni.Format := FormatSettings.ShortDateFormat;
end;

procedure TF310CLP.DDatIniEnter(Sender: TObject);
begin
  DDatIni.Format := FormatSettings.ShortDateFormat;
end;

procedure TF310CLP.DDatIniExit(Sender: TObject);
begin
  if (DDatFim.Date > 1) then
  begin
    if (DDatIni.Date > DDatFim.Date) then
    begin
      DDatIni.SetFocus;
      CMessage('Data Inicial não poder ser maior que a Data Final!', mtWarning);
    end;
  end
  else
  if (DDatIni.Date = 1) then
    DDatIni.Format :=  '00/00/0000';
end;

procedure TF310CLP.DesmarcarClick(Sender: TObject);
begin
  MarcarDesmarcar(0);
end;

procedure TF310CLP.DVenFimChange(Sender: TObject);
begin
  DVenFim.Format := FormatSettings.ShortDateFormat;

  if (DVenFim.Date = 1) then
    DVenFim.Format := '00/00/0000';
end;

procedure TF310CLP.DVenFimClick(Sender: TObject);
begin
  DVenFim.Format := FormatSettings.ShortDateFormat;
end;

procedure TF310CLP.DVenFimEnter(Sender: TObject);
begin
  DVenFim.Format := FormatSettings.ShortDateFormat;
end;

procedure TF310CLP.DVenFimExit(Sender: TObject);
begin
  if (DVenFim.Date < DVenIni.Date) then
  begin
    DVenFim.SetFocus;
    CMessage('Data Final não poder ser menor que a Data Inicial!', mtWarning);
  end
  else
  if (DVenFim.Date = 1) then
    DVenFim.Format := '00/00/0000';
end;

procedure TF310CLP.DVenIniChange(Sender: TObject);
begin
  DVenIni.Format := FormatSettings.ShortDateFormat;

  if (DVenIni.Date = 1) then
    DVenIni.Format := '00/00/0000';
end;

procedure TF310CLP.DVenIniClick(Sender: TObject);
begin
  DVenIni.Format := FormatSettings.ShortDateFormat;
end;

procedure TF310CLP.DVenIniEnter(Sender: TObject);
begin
  DVenIni.Format := FormatSettings.ShortDateFormat;
end;

procedure TF310CLP.DVenIniExit(Sender: TObject);
begin
  if (DVenFim.Date > 1) then
  begin
    if (DVenIni.Date > DVenFim.Date) then
    begin
      DVenIni.SetFocus;
      CMessage('Data Inicial não poder ser maior que a Data Final!', mtWarning);
    end;
  end
  else
  if (DVenIni.Date = 1) then
    DVenIni.Format := '00/00/0000';
end;

procedure TF310CLP.MarcarClick(Sender: TObject);
begin
  MarcarDesmarcar(1);
end;

procedure TF310CLP.MarcarDesmarcar(const pValue: Byte);
begin
  if (PGControl.TabIndex = 0) then
  begin
    FGridCon.CheckFields('Check', pValue);
    FIteradorReajuste.MarcarDesmarcar(pValue);
    FGridConEnterLine(Self);

    if (pValue = 0) then
    begin
      LTotOri.Caption := '0.00';
      LTotRea.Caption := '0.00';
    end;
  end
  else
  begin
    FGridClp.CheckFields('Check', pValue);
    FGridLig.CheckFields('Check', pValue);
    FIteradorLigacao.MarcarDesmarcar(pValue, True);
  end;
end;

procedure TF310CLP.MarcarDesmarcarBem(const pGrid: Byte);
begin
  if (pGrid = CGRIDBLG) then
  begin
    if (FGridBem.Count > 0) then
    begin
      FGridBem.First();
      while not(FGridBem.Eof) do
      begin
        if (TIteradorBem(FControladorBem.LstLigado[pred(FGridBem.Line)]).Lista.Count > 0) then
         FGridBem.FindField('Check').AsInteger := FMarcarDesmarcar;

        FGridBem.Post();
        FGridBem.Next
      end;

     FControladorBem.MarcarDesmarcarLigacoes(FMarcarDesmarcar);
     FGridBem.First;
     FGridBemEnterLine(Self);
     ValidarSelecaoBem();
    end;
  end
  else
  begin
    if (FGridBnl.Count > 0) then
    begin
      FGridBnl.CheckFields('Check', FMarcarDesmarcar);
      FControladorBem.MarcarDesmarcarNaoLigados(FMarcarDesmarcar);
      ValidarSelecaoBem();
    end;
  end;
end;

procedure TF310CLP.MarcarDesmarcarTitulos(const pGrid: Byte);
begin
  if (pGrid = CGRIDLIG) then
  begin
    if (FGridClp.Count > 0) then
    begin
      FGridClp.First();
      while not(FGridClp.Eof) do
      begin
        if (TControle(FIteradorLigacao[pred(FGridClp.Line)]).Titulo.Count > 0) then
         FGridClp.FindField('Check').AsInteger := FMarcarDesmarcar;

        FGridClp.Post();
        FGridClp.Next
      end;

     FIteradorLigacao.MarcarDesmarcarLigacoes(FMarcarDesmarcar);
     FGridClp.First;
     FGridClpEnterLine(Self);
     ValidarSelecao();
    end;
  end
  else
  begin
    if (FGridDes.Count > 0) then
    begin
      FGridDes.CheckFields('Check', FMarcarDesmarcar);
      FIteradorLigacao.MarcarDesmarcarDespesas(FMarcarDesmarcar);
      ValidarSelecao();
    end;
  end;
end;

procedure TF310CLP.MontarDadosCalculos;
begin
  FGridRea.FindField('VlrOri').AsFloat := T301TCR(TControle(FIteradorReajuste[pred(FGridCon.Line)]).Ajuste[pred(FGridRea.Line)]).VlrOri;
  LTotRea.Caption := FormatFloat('###,###,##0.00', FIteradorReajuste.TotalAjustado(FGridCon.Line));
end;

procedure TF310CLP.MostrarBem;
var
  i: Integer;

  function MontarCondicao: string;
  begin
    if not(IsNull(BEEmpBem.Text)) then
      Result := Result + Format(' AND E670BEM.CODEMP IN (%s) ', [BEEmpBem.Text]);

    if not(IsNull(BECodBem.Text)) then
      Result := Result + Format(' AND E670BEM.CODBEM IN (%s) ', [BECodBem.Text]);
  end;

begin
  FGridBem.Clear;
  FGridBlg.Clear;
  FGridBnl.Clear;

  FControladorBem.Limpar;
  FControladorBem.Condicao := MontarCondicao();
  FControladorBem.Mostrar;

  if (FControladorBem.LstLigado.Count > 0) then
  begin
    for i := 0 to pred(FControladorBem.LstLigado.Count) do
    begin
      FGridBem.Add;
      FGridBem.AddFields(T670BEM(FControladorBem.LstLigado[i]));
    end;
    FGridBem.First;

    for i := 0 to pred(FControladorBem.LstNaoLigado.Count) do
    begin
      FGridBnl.Add;
      FGridBnl.AddFields(T670BEM(FControladorBem.LstNaoLigado[i]));
    end;
    FGridBnl.First;

    FGridBemEnterLine(Self);
  end
  else
    CMessage('Não houve informações a listar!', mtErrorInform);
end;

procedure TF310CLP.MostrarClick(Sender: TObject);
begin
  case (PGControl.TabIndex) of
    0: MostrarReajuste();
    1: MostrarLigacao();
    2: MostrarBem();
  end;
end;

procedure TF310CLP.MostrarLigacao();
var
  i: Integer;
  x310clp: TControle;
begin
  FGridClp.Clear;
  FGridLig.Clear;
  FGridDes.Clear;
  FGridClp.Enabled := True;
  FGridLig.Enabled := True;
  FGridDes.Enabled := True;

  FIteradorLigacao.Limpar();
  FIteradorLigacao.Titulo := tTContasPagar;
  FIteradorLigacao.FiltraContrato := FiltroContrato;
  FIteradorLigacao.FiltraTitulo := FiltroTitulos;
  FIteradorLigacao.Carregar();

  if (FIteradorLigacao.Count > 0) then
  begin
    for i := 0 to pred(FIteradorLigacao.Count) do
    begin
      FGridClp.Add;
      x310clp := TControle.Create;
      try
        FIteradorLigacao.Iterar(FIteradorLigacao[i], x310clp);
        FGridClp.AddFields(x310clp);
      finally
        FreeAndNil(x310clp);
      end;
    end;

    for i := 0 to pred(FIteradorLigacao.Despesas.Count) do
    begin
      FGridDes.Add;
      FGridDes.AddFields(T501TCP(FIteradorLigacao.Despesas[i]));
    end;

    FGridDes.First;
    FGridClp.First;
    FGridClpEnterLine(Self);

    MarcarGrids.Enabled := True;
    DesmarcarGrids.Enabled := True;
  end
  else
    CMessage('Não houve informações a listar!', mtErrorInform);
end;

procedure TF310CLP.MostrarReajuste();
var
  i: Integer;
  x310clp: TControle;
begin
  FGridCon.Clear;
  FGridTit.Clear;
  FGridRea.Clear;
  FGridCon.Enabled := True;
  FGridTit.Enabled := True;
  FGridRea.Enabled := True;

  LTotOri.Caption := '0.00';
  LTotRea.Caption := '0.00';

  FIteradorReajuste.Limpar();
  FIteradorReajuste.FiltraContrato := FiltroContrato;
  FIteradorReajuste.Carregar();

  if (FIteradorReajuste.Count > 0) then
  begin
    for i := 0 to pred(FIteradorReajuste.Count) do
    begin
      FGridCon.Add;
      x310clp := TControle.Create;
      FIteradorReajuste.Iterar(FIteradorReajuste[i], x310clp);
      FGridCon.AddFields(x310clp);
    end;

    FGridCon.First;
    FGridConEnterLine(Self);

    Marcar.Enabled := True;
    Desmarcar.Enabled := True;
  end
  else
    CMessage('Não houve informações a listar!', mtErrorInform);
end;

procedure TF310CLP.NaoLigadoClick(Sender: TObject);
begin
  FMarcarDesmarcar := 1;

  if (PGControl.TabIndex = 1) then
    MarcarDesmarcarTitulos(CGRIDDES)
  else
    MarcarDesmarcarBem(CGRIDBNL);
end;

procedure TF310CLP.NaoLigadosClick(Sender: TObject);
begin
  FMarcarDesmarcar := 0;

  if (PGControl.TabIndex = 1) then
    MarcarDesmarcarTitulos(CGRIDDES)
  else
    MarcarDesmarcarBem(CGRIDBNL);
end;

procedure TF310CLP.PGControlChange(Sender: TObject);
begin
  BloquearCamposTitulo(iff(PGControl.TabIndex = 0, False, True));

  if (PGControl.TabIndex in [0,1]) then
  begin
    GBBem.Visible := False;
    GBContrato.Visible := True;
    GBTitulo.Visible := True;
    GBContrato.Align := alLeft;
    GBTitulo.Align := alClient;

    Marcar.Enabled := iff(PGControl.TabIndex = 0, (FGridCon.Count > 0), (FGridClp.Count > 0));
    Desmarcar.Enabled := iff(PGControl.TabIndex = 0, (FGridCon.Count > 0), (FGridClp.Count > 0));
  end
  else
  begin
    GBBem.Align := alClient;
    GBBem.Visible := True;
    GBContrato.Visible := False;
    GBTitulo.Visible := False;

    Marcar.Enabled := (FGridBem.Count > 0);
    Desmarcar.Enabled := (FGridBem.Count > 0);
    Processar.Enabled := True;
    BEEmpBem.SetFocus;
  end;
end;

procedure TF310CLP.PGControlDrawTab(Control: TCustomTabControl;
  TabIndex: Integer; const Rect: TRect; Active: Boolean);
begin
  TPageControl(Control).Canvas.TextOut(Rect.left+5,Rect.top+3, TPageControl(Control).Pages[tabindex].Caption);
end;

procedure TF310CLP.ProcessarClick(Sender: TObject);
begin
  if ((PGControl.TabIndex = 0) and not(FIteradorReajuste.Selecionados)) or
     ((PGControl.TabIndex = 2) and not(FControladorBem.LstNaoLigado.Selecionados)) then
    CMessage('Não há registros selecionados!', mtErrorInform)
  else
  if (CMessage('Deseja realmente processar?', mtConfirmationYesNo)) then
  begin
    FGridCon.Enabled := False;
    FGridTit.Enabled := False;
    FGridRea.Enabled := False;

    try
      if (PGControl.TabIndex = 0) then
        FIteradorReajuste.Processar
      else
        FControladorBem.Processar;
    except
      raise;
    end;

    CMessage('Processado com sucesso!', mtInformation);
    CancelarClick(Self);
  end;
end;

procedure TF310CLP.RemoverBemClick(Sender: TObject);
var
  i: Integer;
begin
  if (CMessage('Deseja realmente remover a ligação do(s) patrimônio(s)?', mtConfirmationYesNo)) then
  begin
    FControladorBem.RemoverLigacao();
    FGridBemEnterLine(Self);

    FGridBnl.Clear;
    for i := 0 to pred(FControladorBem.LstNaoLigado.Count) do
    begin
      FGridBnl.Add;
      FGridBnl.AddFields(T670BEM(FControladorBem.LstNaoLigado[i]));
    end;
    FGridBnl.First;

    FGridBem.First();
    while not(FGridBem.Eof) do
    begin
      if TIteradorBem(FControladorBem.LstLigado[pred(FGridBem.Line)]).Check = 1 then
      begin
        TIteradorBem(FControladorBem.LstLigado[pred(FGridBem.Line)]).Check := 0;
        FGridBem.FindField('Check').AsInteger := 0;
        FGridBem.Post();
      end;
      FGridBem.Next
    end;

    ValidarSelecaoBem();
  end;
end;

procedure TF310CLP.RemoverClick(Sender: TObject);
var
  i: Integer;
begin
  if (CMessage('Deseja realmente remover a ligação do(s) título(s) do contrato?', mtConfirmationYesNo)) then
  begin
    FIteradorLigacao.RemoverLigacao();
    FGridClpEnterLine(Self);

    FGridDes.Clear;
    for i := 0 to pred(FIteradorLigacao.Despesas.Count) do
    begin
      FGridDes.Add;
      T501TCP(FIteradorLigacao.Despesas[i]).Check := 0;
      FGridDes.AddFields(T501TCP(FIteradorLigacao.Despesas[i]));
    end;

    FGridClp.First();
    while not(FGridClp.Eof) do
    begin
      if TControle(FIteradorLigacao[pred(FGridClp.Line)]).Check = 1 then
      begin
        TControle(FIteradorLigacao[pred(FGridClp.Line)]).Check := 0;
        FGridClp.FindField('Check').AsInteger := 0;
        FGridClp.Post();
      end;
      FGridClp.Next
    end;

    ValidarSelecao();
    FGridDes.Enabled := (FIteradorLigacao.Despesas.Count > 0);
  end;
end;

procedure TF310CLP.FGridConEnterLine(Sender: TObject);
var
  i: Integer;
  xControle: TControle;
begin
  FGridTit.Clear;
  FGridRea.Clear;

  if (FIteradorReajuste.Count > 0) then
  begin
    xControle := TControle(FIteradorReajuste[pred(FGridCon.Line)]);
    for i := 0 to pred(xControle.Titulo.Count) do
    begin
      FGridTit.Add;
      FGridTit.AddFields(T160MOV(xControle.Titulo[i]));
    end;

    FGridTit.Enabled := (xControle.Titulo.Count > 0);

    for i := 0 to pred(xControle.Ajuste.Count) do
    begin
      FGridRea.Add;
      FGridRea.AddFields(T301TCR(xControle.Ajuste[i]));
      FGridRea.FindField('IndNov').AsFloat := TTituloControle(xControle.Ajuste[i]).IndNov;
      FGridRea.FindField('VlrBon').AsFloat := TTituloControle(xControle.Ajuste[i]).VlrBon;
    end;

    FGridTit.First;
    FGridRea.First;
    LTotOri.Caption := FormatFloat('###,###,##0.00', FIteradorReajuste.TotalOriginal(FGridCon.Line));
    LTotRea.Caption := FormatFloat('###,###,##0.00', FIteradorReajuste.TotalAjustado(FGridCon.Line));
  end;
end;

procedure TF310CLP.FGridDesCheckClick;
begin
  if (FGridDes.Count > 0) then
  begin
    T501TCP(FIteradorLigacao.Despesas[pred(FGridDes.Line)]).Check := iff(T501TCP(FIteradorLigacao.Despesas[pred(FGridDes.Line)]).Check = 1, 0, 1);
    ValidarSelecao();
  end;
end;

procedure TF310CLP.FGridLigCheckClick;
var
  x501TCP: T501TCP;

  procedure MarcarClp();
  begin
    if (x501TCP.Check = 1) then
    begin
      TControle(FIteradorLigacao[pred(FGridClp.Line)]).Check := 1;
      FGridClp.FindField('Check').AsInteger := 1;
    end;
  end;

begin
  if (FGridLig.Count > 0) then
  begin
    x501TCP := T501TCP(TControle(FIteradorLigacao[pred(FGridClp.Line)]).Titulo[pred(FGridLig.Line)]);
    x501TCP.Check := iff(x501TCP.Check = 1, 0, 1);
    MarcarClp();
    ValidarSelecao();
  end;
end;

procedure TF310CLP.FGridBemCheckClick;
var
  x670BEM: T670BEM;
begin
  if (FGridBem.Count > 0) then
  begin
    x670BEM := T670BEM(FControladorBem.LstLigado[Pred(FGridBem.Line)]);
    x670BEM.Check := iff(x670BEM.Check = 1, 0, 1);

    FControladorBem.MarcarDesmarcarLigacoes(x670BEM.Check, Pred(FGridBem.Line));
    FGridBemEnterLine(Self);
  end;
end;

procedure TF310CLP.FGridBemEnterLine(Sender: TObject);
var
  i: Integer;
  xIteradorBem: TIteradorBem;
begin
  if (FControladorBem.LstLigado.Count > 0) then
  begin
    FGridBlg.Clear;
    xIteradorBem := TIteradorBem(FControladorBem.LstLigado[pred(FGridBem.Line)]);

    for i := 0 to pred(xIteradorBem.Lista.Count) do
    begin
      FGridBlg.Add;
      FGridBlg.AddFields(T670BEM(xIteradorBem.Lista[i]));
    end;
    FGridBlg.First;

    ValidarSelecaoBem();
  end;
end;

procedure TF310CLP.FGridBlgCheckClick;
var
  x670BEM: T670BEM;
  xIteradorBem: TIteradorBem;
begin
  if (FGridBlg.Count > 0) then
  begin
    xIteradorBem := TIteradorBem(FControladorBem.LstLigado[Pred(FGridBem.Line)]);
    x670BEM := T670BEM(xIteradorBem.Lista[pred(FGridBlg.Line)]);
    x670BEM.Check := iff(x670BEM.Check = 1, 0, 1);
    ValidarSelecaoBem();
  end;
end;

procedure TF310CLP.FGridBnlCheckClick;
var
  x670BEM: T670BEM;
begin
  if (FGridBnl.Count > 0) then
  begin
    x670BEM := T670BEM(FControladorBem.LstNaoLigado[Pred(FGridBnl.Line)]);
    x670BEM.Check := iff(x670BEM.Check = 1, 0, 1);
    ValidarSelecaoBem();
  end;
end;

procedure TF310CLP.FGridClpCheckClick;
begin
  if (FGridClp.Count > 0) then
  begin
    TControle(FIteradorLigacao[pred(FGridClp.Line)]).Check := iff(TControle(FIteradorLigacao[pred(FGridClp.Line)]).Check = 1, 0, 1);
    FIteradorLigacao.MarcarDesmarcarLigacoes(TControle(FIteradorLigacao[pred(FGridClp.Line)]).Check, pred(FGridClp.Line));
    FGridClpEnterLine(Self);
    ValidarSelecao();
  end;
end;

procedure TF310CLP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FGridTit.Finalize;
  FGridLig.Finalize;
  FGridDes.Finalize;
  FGridCon.Finalize;
  FGridClp.Finalize;
  FGridRea.Finalize;
  FGridBem.Finalize;
  FGridBnl.Finalize;
  FGridBlg.Finalize;

  FreeAndNil(FIteradorReajuste);
  FreeAndNil(FIteradorLigacao);
  FreeAndNil(FControladorBem);
  Application.Terminate;
end;

procedure TF310CLP.FormCreate(Sender: TObject);
begin
  if (System.ParamCount > 0) then
    FLogEmp := StrToInt(ParamStr(2))
  else
    FLogEmp := 1;

  FIteradorReajuste := TIteradorControle.Create();
  FIteradorLigacao := TIteradorControle.Create();
  FControladorBem := TControladorBem.Create();

  //Contrato - tab 1
  BECodCli.CreateLookup();
  BECodFil.CreateLookup();
  BENumCtr.CreateLookup();

  FGridCon.Init('USU_T160CLP', F310CLP);
  FGridCon.AddColumn('Check', 'Sel.', ftInteger, 0, True);
  FGridCon.CreateDataSet;
  FGridCon.NumericField('USU_VlrCtr', '###,###,##0.00');

  FGridRea.Init('E301TCR', F310CLP, 'VlrOri;VlrAbe');
  FGridRea.AddColumn('Check', 'Sel.', ftInteger, 0, True);
  FGridRea.AddColumn('IndFin', 'Índice', ftString, 15);
  FGridRea.AddColumn('IndRea', '% Índice Cadastro', ftFloat);
  FGridRea.AddColumn('IndNov', '% Índice Manual', ftFloat);
  FGridRea.AddColumn('VlrBon', 'Vlr. Bonificação', ftFloat);
  FGridRea.CreateDataSet;

  FGridRea.NumericField('IndNov', '###,###,##0.00');
  FGridRea.NumericField('VlrOri', '###,###,##0.00');
  FGridRea.NumericField('VlrAbe', '###,###,##0.00');
  FGridRea.NumericField('VlrBon', '###,###,##0.00');
  FGridRea.ReadOnly('IndFin', True);
  FGridRea.ReadOnly('IndRea', True);
  FGridRea.ReadOnly('VlrBon', False);
  FGridRea.ReadOnly('IndNov', False);

  FGridTit.Init('USU_T160MOV', F310CLP);
  FGridTit.CreateDataSet;
  FGridTit.NumericField('USU_VlrOri', '###,###,##0.00');
  FGridTit.NumericField('USU_VlrRea', '###,###,##0.00');
  FGridTit.NumericField('USU_VlrBon', '###,###,##0.00');
  FGridTit.Visible('USU_SEQMOV', False);

  //Titulo - tab 2
  BECodEmp.CreateLookup();
  BETitFil.CreateLookup();
  BECodFor.CreateLookup();

  FGridClp.Init('USU_T160CLP', F310CLP);
  FGridClp.AddColumn('Check', 'Sel.', ftInteger, 0, True);
  FGridClp.CreateDataSet;
  FGridClp.NumericField('USU_VlrCtr', '###,###,##0.00');

  FGridLig.Init('E501TCP', F310CLP);
  FGridLig.AddColumn('Check', 'Sel.', ftInteger, 0, True);
  FGridLig.AddColumn('PosClp', 'POSCLP.', ftInteger);
  FGridLig.CreateDataSet;
  FGridLig.NumericField('VlrOri', '###,###,##0.00');
  FGridLig.NumericField('VlrAbe', '###,###,##0.00');
  FGridLig.Visible('PosClp', False);

  FGridDes.Init('E501TCP', F310CLP);
  FGridDes.AddColumn('Check', 'Sel.', ftInteger, 0, True);
  FGridDes.CreateDataSet;
  FGridDes.NumericField('VlrOri', '###,###,##0.00');
  FGridDes.NumericField('VlrAbe', '###,###,##0.00');

  //Bem - tab 3
  BEEmpBem.CreateLookup();
  BECodBem.CreateLookup();
  BECodBem.Filter := 'USU_BEMCLP = ''S''';

  FGridBem.Init('E670BEM', F310CLP);
  FGridBem.AddColumn('Check', 'Sel.', ftInteger, 0, True);
  FGridBem.CreateDataSet;

  FGridBlg.Init('E670BEM', F310CLP);
  FGridBlg.AddColumn('Check', 'Sel.', ftInteger, 0, True);
  FGridBlg.CreateDataSet;

  FGridBnl.Init('E670BEM', F310CLP);
  FGridBnl.AddColumn('Check', 'Sel.', ftInteger, 0, True);
  FGridBnl.CreateDataSet;

  //Geral
  BECodFil.Filter := Format('CODEMP = %d', [1]);
  BENumCtr.Filter := 'TIPCTR = 3 AND (NUMCTR IN (SELECT USU_NUMCTR FROM USU_T160CLP))';
  Ligar.Hint := 'Liga o(s) título(s) selecionado(s) ao contrato.';
  Ligar.ShowHint := True;
  Remover.Hint := 'Remove a ligação do(s) título(s) selecionado(s) ao contrato.';
  Remover.ShowHint := True;

  PGControl.OwnerDraw := True;
  PGControl.TabIndex := 0;

  GBBem.Visible := False;
  GBContrato.Align := alLeft;
  GBTitulo.Align := alClient;

  Self.ClientWidth := 989;
  BloquearCamposTitulo(False);

  ValidarSelecaoBem();
end;

procedure TF310CLP.FormShow(Sender: TObject);
begin
  CancelarClick(Self);
end;

procedure TF310CLP.LigadoClick(Sender: TObject);
begin
  FMarcarDesmarcar := 1;

  if (PGControl.TabIndex = 1) then
    MarcarDesmarcarTitulos(CGRIDLIG)
  else
    MarcarDesmarcarBem(CGRIDBLG);
end;

procedure TF310CLP.LigadosClick(Sender: TObject);
begin
  FMarcarDesmarcar := 0;

  if (PGControl.TabIndex = 1) then
    MarcarDesmarcarTitulos(CGRIDLIG)
  else
    MarcarDesmarcarBem(CGRIDBLG);
end;

procedure TF310CLP.LigarBemClick(Sender: TObject);
var
  i: Integer;
begin
  if (CMessage('Deseja realmente ligar o(s) patrimônio(s)?', mtConfirmationYesNo)) then
  begin
    FControladorBem.GerarLigacao();
    FGridBemEnterLine(Self);

    FGridBnl.Clear;
    for i := 0 to pred(FControladorBem.LstNaoLigado.Count) do
    begin
      FGridBnl.Add;
      FGridBnl.AddFields(T670BEM(FControladorBem.LstNaoLigado[i]));
    end;
    FGridBnl.First;

    ValidarSelecaoBem();
  end;
end;

procedure TF310CLP.LigarClick(Sender: TObject);
var
  i: Integer;
begin
  if (CMessage('Deseja realmente ligar o(s) título(s) ao contrato?', mtConfirmationYesNo)) then
  begin
    FIteradorLigacao.GerarLigacao();
    FGridClpEnterLine(Self);

    FGridDes.Clear;
    for i := 0 to pred(FIteradorLigacao.Despesas.Count) do
    begin
      FGridDes.Add;
      FGridDes.AddFields(T501TCP(FIteradorLigacao.Despesas[i]));
    end;

    ValidarSelecao();
  end;
end;

procedure TF310CLP.FGridClpEnterLine(Sender: TObject);
var
  i: Integer;
  xControle: TControle;
begin
  FGridLig.Clear;

  if (FIteradorLigacao.Count > 0) then
  begin
    xControle := TControle(FIteradorLigacao[pred(FGridClp.Line)]);

    for i := 0 to pred(xControle.Titulo.Count) do
    begin
      FGridLig.Add;
      FGridLig.FindField('PosClp').AsInteger := FGridClp.Line;
      FGridLig.AddFields(T501TCP(xControle.Titulo[i]));
    end;

    FGridLig.First;
  end;
end;

procedure TF310CLP.FGridConCheckClick;
var
  xControle: TControle;
begin
  xControle := TControle(FIteradorReajuste[pred(FGridCon.Line)]);
  xControle.Check := iff(xControle.Check = 1, 0, 1);
  FIteradorReajuste.MarcarDesmarcarReajuste(xControle, xControle.Check);
  FGridConEnterLine(Self);
end;

procedure TF310CLP.FGridReaCheckClick;
var
  xControle: TControle;
  x301tcr: T301TCR;
begin
  xControle := TControle(FIteradorReajuste[pred(FGridCon.Line)]);
  x301tcr := T301TCR(xControle.Ajuste[pred(FGridRea.Line)]);
  x301tcr.Check := iff(x301tcr.Check = 1, 0, 1);
  FGridRea.FindField('Check').AsInteger := x301tcr.Check;

  FIteradorReajuste.RemoverCalculos := (x301tcr.Check = 0);
  CalcularReajuste(iff(FGridRea.FindField('IndNov').AsFloat = 0, FGridRea.FindField('IndRea').AsFloat,
    FGridRea.FindField('IndNov').AsFloat));

  if not(xControle.Ajuste.Selecionados) then
  begin
    TControle(FIteradorReajuste[Pred(FGridCon.Line)]).Check := 0;
    FGridCon.FindField('Check').AsInteger := 0;
  end
  else
  begin
    FGridCon.FindField('Check').AsInteger := 1;
    TControle(FIteradorReajuste[Pred(FGridCon.Line)]).Check := 1;
  end;
end;

procedure TF310CLP.FGridReaIndNovChange;
begin
  if (FGridRea.FindField('Check').AsInteger = 1) then
  begin
    FIteradorReajuste.RemoverCalculos := False;
    CalcularReajuste(iff(FGridRea.FindField('IndNov').AsFloat = 0, FGridRea.FindField('IndRea').AsFloat,
      FGridRea.FindField('IndNov').AsFloat));
    FGridRea.FindField('VlrOri').AsFloat := T301TCR(TControle(FIteradorReajuste[pred(FGridCon.Line)]).Ajuste[pred(FGridRea.Line)]).VlrOri;
  end;
end;

procedure TF310CLP.FGridReaVlrBonChange;
var
  xCalculo: Double;
  xVlrOrigem: Double;
  xRemover: Boolean;
  xSobra: Double;

  //Funcao recursiva, desce ate quando houver itens da grid.
  function MontarRateio(const pValor: Double; const pCount: Integer): Double;
  begin
    if (CRound(pValor,2) > 0) then
    begin
      Result := (pValor / pCount);

      if (pCount = 0) then
        Exit;

      if (CRound(Result, 2) = 0) then
        Result := MontarRateio(pValor, Pred(pCount))
      else
        Exit;
    end
    else
      Result := 0;
  end;

  procedure Bonificar();
  var
    xControle: TControle;
    xTituloControle: TTituloControle;
  begin
    xControle := TControle(FIteradorReajuste[pred(FGridCon.Line)]);
    xTituloControle := TTituloControle(xControle.Ajuste[Pred(FGridRea.Line)]);

    if (FGridRea.FindField('Check').AsInteger = 1) then
    begin
      FIteradorReajuste.RemoverCalculos := xRemover;
      FIteradorReajuste.IndexCtr := pred(FGridCon.Line);
      FIteradorReajuste.IndexTit := pred(FGridRea.Line);
      FIteradorReajuste.Bonificar(FGridRea.FindField('VlrBon').AsFloat);

      MontarDadosCalculos();
    end
    else
      xTituloControle.VlrBon := FGridRea.FindField('VlrBon').AsFloat;
  end;

begin
  xSobra := 0;
  xRemover := (CRound(FGridRea.FindField('VlrBon').AsFloat,2) = 0);

  if (FGridRea.Count > 1) then
  begin
    if (CRound(FGridRea.FindField('VlrBon').AsFloat,2) > 0) and (CMessage('Deseja ratear o valor entre os títulos do contrato?', mtConfirmationYesNo)) then
    begin
      xVlrOrigem := FGridRea.FindField('VlrBon').AsFloat;
      xCalculo := MontarRateio(xVlrOrigem, FGridRea.Count);

      if (xCalculo > 0) then
        xSobra := (CRound(xVlrOrigem,2) - (CRound(xCalculo,2) * FGridRea.Count));

      FGridRea.First;
      while not(FGridRea.Eof) do
      begin
        if not(CRound(xVlrOrigem, 2) = 0) then
        begin
          xVlrOrigem := CRound(xVlrOrigem,2) - CRound(xCalculo, 2);
          FGridRea.FindField('VlrBon').AsFloat := iff((xSobra > 0) and (FGridRea.Count = FGridRea.Line),
            (CRound(xCalculo,2) + CRound(xSobra,2)), CRound(xCalculo,2));
        end
        else
          FGridRea.FindField('VlrBon').AsFloat := 0;

        Bonificar();
        FGridRea.Next;
      end;
      FGridRea.First;
    end
    else
      Bonificar();
  end
  else
    Bonificar();
end;

function TF310CLP.FiltroContrato: string;
begin
  Result := EmptyStr;

  if not(IsNull(BECodFil.Text)) then
    Result := Result + Format(' USU_CODFIL IN (%s) AND ', [BECodFil.Text]);

  if not(IsNull(BECodCli.Text)) then
    Result := Result + Format(' E160CTR.CODCLI IN (%s) AND ', [BECodCli.Text]);

  if not(IsNull(BENumCtr.Text)) then
    Result := Result + Format(' USU_NUMCTR IN (%s) AND ', [BENumCtr.Text]);

  if not(DDatIni.Date = 1) then
    Result := Result + Format(' USU_DATINI >= %s AND ', [DateTimeFormatDB(DDatIni.DateTime)]);

  if not(DDatFim.Date = 1) then
    Result := Result + Format(' USU_DATFIN <= %s AND ', [DateTimeFormatDB(DDatFim.DateTime)]);

  Result := Result + ' E160CTR.TIPCTR = 3 AND ';
end;

function TF310CLP.FiltroTitulos: string;
begin
  if not(IsNull(BECodEmp.Text)) then
    Result := Result + Format(' E501TCP.CODEMP IN (%s) AND ', [BECodEmp.Text]);

  if not(IsNull(BETitFil.Text)) then
    Result := Result + Format(' E501TCP.CODFIL IN (%s) AND ', [BETitFil.Text]);

  if not(IsNull(BECodFor.Text)) then
    Result := Result + Format(' E501TCP.CODFOR IN (%s) AND ', [BECodFor.Text]);

  if not(DVenIni.Date = 1) then
    Result := Result + Format(' E501TCP.VCTORI >= %s AND ', [DateTimeFormatDB(DVenIni.DateTime)]);

  if not(DVenFim.Date = 1) then
    Result := Result + Format(' E501TCP.VCTORI <= %s AND ', [DateTimeFormatDB(DVenFim.DateTime)]);

  if (TextToFloat(BEVlrIni.Text) > 0) then
    Result := Result + ' E501TCP.VLRORI >= '+ ValueToDB(BEVlrIni.Text) + ' AND ';

  if (TextToFloat(BEVlrFim.Text) > 0) then
    Result := Result + ' E501TCP.VLRORI <= '+ ValueToDB(BEVlrFim.Text) + ' AND ';
end;

end.
