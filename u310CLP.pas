unit u310CLP;

interface

uses
  Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, oButtonedEdit, oDataSetGrid, Vcl.ComCtrls, oConsulta, System.Contnrs,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Menus, CommCtrl, o310clp, Winapi.Windows, Data.DB,
  Vcl.Tabs, Vcl.DockTabSet, oMensagem;

CONST
  CGRIDLIG = 1;
  CGRIDDES = 2;
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
    GroupBox2: TGroupBox;
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
    Label17: TLabel;
    LDifRea: TLabel;
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
    GroupBox1: TGroupBox;
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
    MarcarGrids: TButton;
    DesmarcarGrids: TButton;
    ListarGrids: TPopupMenu;
    Ligado: TMenuItem;
    NaoLigado: TMenuItem;

    procedure FormCreate(Sender: TObject);
    procedure BECodFilRightButtonClick(Sender: TObject);
    procedure BENumCtrRightButtonClick(Sender: TObject);
    procedure BECodCliRightButtonClick(Sender: TObject);
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
    procedure BECodEmpRightButtonClick(Sender: TObject);
    procedure BECodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure BETitFilRightButtonClick(Sender: TObject);
    procedure BETitFilKeyPress(Sender: TObject; var Key: Char);
    procedure BETitFilExit(Sender: TObject);
    procedure BECodForRightButtonClick(Sender: TObject);
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
    procedure MarcarGridsClick(Sender: TObject);
    procedure DesmarcarGridsClick(Sender: TObject);
    procedure LigadoClick(Sender: TObject);
    procedure NaoLigadoClick(Sender: TObject);
  private
    FMarcarDesmarcar: Boolean;
    FString: string;
    FOldDate: TDateTime;
    FIteradorReajuste: TIteradorControle;
    FIteradorLigacao: TIteradorControle;

    function FiltroTitulos(): string;
    function FiltroContrato(): string;
    procedure MarcarDesmarcar(const pValue: Byte);
    procedure MarcarDesmarcarTitulos(const pGrid: Byte);
    procedure MostrarReajuste();
    procedure MostrarLigacao();
    procedure ValidarSelecao();

    function Valor(const pObj: THButtonedEdit; const pTexto, pKey: String; const pEspaco,pDecimal: Integer): String;
  published
    procedure FGridReaIndNovChange();
    procedure FGridConCheckClick();
    procedure FGridClpCheckClick();
    procedure FGridDesCheckClick();
    procedure FGridLigCheckClick();
    procedure FGridReaCheckClick();
    procedure BloquearCamposTitulo(const pValue: Boolean);
  end;

var
  F310CLP: TF310CLP;

implementation

uses
  oTabelas, oBase, oTitulo;

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

procedure TF310CLP.BECodFilRightButtonClick(Sender: TObject);
begin
  BECodFil.LookupData;
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

procedure TF310CLP.BECodForRightButtonClick(Sender: TObject);
begin
  BECodFor.LookupData;
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

procedure TF310CLP.BECodCliRightButtonClick(Sender: TObject);
begin
  BECodCli.LookupData;
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

procedure TF310CLP.BECodEmpRightButtonClick(Sender: TObject);
begin
  BECodEmp.LookupData;
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

procedure TF310CLP.BENumCtrRightButtonClick(Sender: TObject);
begin
  BENumCtr.LookupData;
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

procedure TF310CLP.BETitFilRightButtonClick(Sender: TObject);
begin
  BETitFil.LookupData;
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
  begin
    if (FGridClp.Count = 0) or (CMessage('Deseja realmente sair?', mtConfirmationYesNo)) then
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

  Ligar.Enabled := (((xContrato = scLigacao) or (xContrato = scPossuiLigacao)) and (xDespesa = scDespesa)) and not(xContrato = scApenasRemover);
  Remover.Enabled := (xContrato = scPossuiLigacao) or (xContrato = scApenasRemover);
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

procedure TF310CLP.CancelarClick(Sender: TObject);
begin
  BECodFil.Text := EmptyStr;
  BENumCtr.Text := EmptyStr;
  BECodCli.Text := EmptyStr;
  BECodEmp.Text := EmptyStr;
  BECodFil.Text := EmptyStr;
  BECodFor.Text := EmptyStr;

  FGridCon.Enabled := False;
  FGridTit.Enabled := False;
  FGridRea.Enabled := False;
  FGridLig.Enabled := False;
  FGridDes.Enabled := False;
  FGridClp.Enabled := False;
  Ligar.Enabled := False;
  Remover.Enabled := False;

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
  LDifRea.Caption := '0.00';

  FGridTit.Clear;
  FGridCon.Clear;
  FGridRea.Clear;
  FGridLig.Clear;
  FGridDes.Clear;
  FGridClp.Clear;
  BECodFil.SetFocus;
  PGControl.TabIndex := 0;
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

procedure TF310CLP.DesmarcarGridsClick(Sender: TObject);
begin
  FMarcarDesmarcar := False;
  ListarGrids.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
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
  end
  else
  begin
    FGridClp.CheckFields('Check', pValue);
    FGridLig.CheckFields('Check', pValue);
    FIteradorLigacao.MarcarDesmarcar(pValue, True);
  end;
end;

procedure TF310CLP.MarcarDesmarcarTitulos(const pGrid: Byte);
var
  xCheck: Byte;
begin
  xCheck := iff(FMarcarDesmarcar, 1, 0);

  if (pGrid = CGRIDLIG) then
  begin
     FGridClp.First();
     while not(FGridClp.Eof) do
     begin
       if (TControle(FIteradorLigacao[pred(FGridClp.Line)]).Titulo.Count > 0) then
        FGridClp.FindField('Check').AsInteger := xCheck;

       FGridClp.Post();
       FGridClp.Next
     end;

    FIteradorLigacao.MarcarDesmarcarLigacoes(xCheck);
    FGridClp.First;
    ValidarSelecao();
  end
  else
  begin
    FGridDes.CheckFields('Check', xCheck);
    FIteradorLigacao.MarcarDesmarcarDespesas(xCheck);
    FGridLigCheckClick();
    ValidarSelecao();
  end;
end;

procedure TF310CLP.MarcarGridsClick(Sender: TObject);
begin
  FMarcarDesmarcar := True;
  ListarGrids.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TF310CLP.MostrarClick(Sender: TObject);
begin
  if (PGControl.TabIndex = 0) then
    MostrarReajuste()
  else
    MostrarLigacao();
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
  end
  else
    CMessage('Nenhum Contrato Selecionado!', mtErrorInform);
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
  LDifRea.Caption := '0.00';

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
  end
  else
    CMessage('Nenhum Contrato Selecionado!', mtErrorInform);
end;

procedure TF310CLP.NaoLigadoClick(Sender: TObject);
begin
  MarcarDesmarcarTitulos(CGRIDDES);
end;

procedure TF310CLP.PGControlChange(Sender: TObject);
begin
  BloquearCamposTitulo(iff(PGControl.TabIndex = 0, False, True));
end;

procedure TF310CLP.PGControlDrawTab(Control: TCustomTabControl;
  TabIndex: Integer; const Rect: TRect; Active: Boolean);
begin
  TPageControl(Control).Canvas.TextOut(Rect.left+5,Rect.top+3, TPageControl(Control).Pages[tabindex].Caption);
end;

procedure TF310CLP.ProcessarClick(Sender: TObject);
begin
  if not(FIteradorReajuste.Selecionados) then
    CMessage('Não há registros selecionados!', mtErrorInform)
  else
  if (CMessage('Deseja realmente processar?', mtConfirmationYesNo)) then
  begin
    FGridCon.Enabled := False;
    FGridTit.Enabled := False;
    FGridRea.Enabled := False;
    FIteradorReajuste.Processar;
    CMessage('Processado com sucesso!', mtInformation);

    CancelarClick(Self);
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
      FGridTit.AddFields(T301TCR(xControle.Titulo[i]));

      FGridRea.Add;
      FGridRea.AddFields(T301TCR(xControle.Ajuste[i]));
      FGridRea.FindField('IndNov').AsFloat := TTituloControle(xControle.Ajuste[i]).IndNov;
    end;

    FGridTit.First;
    FGridRea.First;
    LTotOri.Caption := FormatFloat('###,###,##0.00', FIteradorReajuste.TotalOriginal);
    LTotRea.Caption := FormatFloat('###,###,##0.00', FIteradorReajuste.TotalAjustado);
    LDifRea.Caption := FormatFloat('###,###,##0.00', FIteradorReajuste.TotalAjustado - FIteradorReajuste.TotalOriginal);
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
  FreeAndNil(FIteradorReajuste);
  FreeAndNil(FIteradorLigacao);
  Application.Terminate;
end;

procedure TF310CLP.FormCreate(Sender: TObject);
begin
  if (System.ParamCount > 0) then
    FLogEmp := StrToInt(ParamStr(0))
  else
    FLogEmp := 1;

  FIteradorReajuste := TIteradorControle.Create();
  FIteradorLigacao := TIteradorControle.Create();

  //Contrato
  BECodCli.CreateLookup();
  BECodFil.CreateLookup();
  BENumCtr.CreateLookup();

  //Titulo
  BECodEmp.CreateLookup();
  BETitFil.CreateLookup();
  BECodFor.CreateLookup();

  BECodFil.Filter := Format('CODEMP = %d', [1]);
  BENumCtr.Filter := 'TIPCTR = 3 AND (NUMCTR IN (SELECT USU_NUMCTR FROM USU_T160CLP))';
  Ligar.Hint := 'Liga o(s) título(s) selecionado(s) ao contrato.';
  Ligar.ShowHint := True;
  Remover.Hint := 'Remove a ligação do(s) título(s) selecionado(s) ao contrato.';
  Remover.ShowHint := True;

  FGridCon.Init('USU_T160CLP', F310CLP);
  FGridClp.Init('USU_T160CLP', F310CLP);
  FGridRea.Init('E301TCR', F310CLP);
  FGridTit.Init('E301TCR', F310CLP);
  FGridLig.Init('E501TCP', F310CLP);
  FGridDes.Init('E501TCP', F310CLP);

  FGridLig.AddColumn('Check', 'Sel.', ftInteger, 0, True);
  FGridLig.AddColumn('PosClp', 'POSCLP.', ftInteger, 0, True);
  FGridCon.AddColumn('Check', 'Sel.', ftInteger, 0, True);
  FGridClp.AddColumn('Check', 'Sel.', ftInteger, 0, True);
  FGridDes.AddColumn('Check', 'Sel.', ftInteger, 0, True);
  FGridRea.AddColumn('Check', 'Sel.', ftInteger, 0, True);
  FGridRea.AddColumn('IndFin', 'Índice', ftString, 15);
  FGridRea.AddColumn('IndRea', '% Índice Atual', ftFloat);
  FGridRea.AddColumn('IndNov', '% Índice Reajuste', ftFloat);
  FGridRea.AddColumn('LocDsc', 'Desconto do Locatário', ftFloat);

  FGridRea.CreateDataSet;
  FGridCon.CreateDataSet;
  FGridClp.CreateDataSet;
  FGridTit.CreateDataSet;
  FGridLig.CreateDataSet;
  FGridDes.CreateDataSet;

  FGridCon.NumericField('USU_VlrCtr', '###,###,##0.00');
  FGridClp.NumericField('USU_VlrCtr', '###,###,##0.00');
  FGridTit.NumericField('VlrOri', '###,###,##0.00');
  FGridTit.NumericField('VlrAbe', '###,###,##0.00');
  FGridLig.NumericField('VlrOri', '###,###,##0.00');
  FGridLig.NumericField('VlrAbe', '###,###,##0.00');
  FGridDes.NumericField('VlrOri', '###,###,##0.00');
  FGridDes.NumericField('VlrAbe', '###,###,##0.00');
  FGridRea.NumericField('IndNov', '###,###,##0.00');
  FGridRea.NumericField('VlrOri', '###,###,##0.00');
  FGridRea.NumericField('VlrAbe', '###,###,##0.00');

  FGridRea.ReadOnly('IndFin', True);
  FGridRea.ReadOnly('IndRea', True);
  FGridRea.ReadOnly('IndNov', False);
  FGridLig.Visible('PosClp', False);

  PGControl.OwnerDraw := True;
  PGControl.TabIndex := 0;
  BloquearCamposTitulo(False);
end;

procedure TF310CLP.FormShow(Sender: TObject);
begin
  CancelarClick(Self);
end;

procedure TF310CLP.LigadoClick(Sender: TObject);
begin
  MarcarDesmarcarTitulos(CGRIDLIG);
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
begin
  TControle(FIteradorReajuste[pred(FGridCon.Line)]).Check := iff(TControle(FIteradorReajuste[pred(FGridCon.Line)]).Check = 1, 0, 1);
end;

procedure TF310CLP.FGridReaCheckClick;
var
  xControle: TControle;
  x301tcr: T301TCR;
begin
  xControle := TControle(FIteradorReajuste[pred(FGridCon.Line)]);
  x301tcr := T301TCR(xControle.Ajuste[pred(FGridRea.Line)]);
  x301tcr.Check := iff(x301tcr.Check = 1, 0, 1);
end;

procedure TF310CLP.FGridReaIndNovChange;
begin
  FIteradorReajuste.RecalcularAjustes(FGridRea.FindField('IndNov').AsFloat, pred(FGridCon.Line), pred(FGridRea.Line));
  FGridRea.FindField('VlrOri').AsFloat := T301TCR(TControle(FIteradorReajuste[pred(FGridCon.Line)]).Ajuste[pred(FGridRea.Line)]).VlrOri;

  LTotRea.Caption := FormatFloat('###,###,##0.00', FIteradorReajuste.TotalAjustado);
  LDifRea.Caption := FormatFloat('###,###,##0.00', FIteradorReajuste.TotalAjustado - FIteradorReajuste.TotalOriginal);
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
