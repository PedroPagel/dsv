unit u510CON;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, oButtonedEdit, oDataSetGrid, Vcl.ComCtrls, oConsulta, System.Contnrs,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Menus;

type
  TF510CON = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    Splitter2: TSplitter;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel4: TPanel;
    Splitter1: TSplitter;
    Splitter3: TSplitter;
    Panel8: TPanel;
    Panel9: TPanel;
    FGridArm: TDataSetGrid;
    FGridTit: TDataSetGrid;
    FGridAss: TDataSetGrid;
    Panel10: TPanel;
    Mostrar: TButton;
    Cancelar: TButton;
    Sair: TButton;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    cbSituacaoTit: TComboBox;
    DVenFim: TDateTimePicker;
    BEVlrFim: THButtonedEdit;
    Label8: TLabel;
    Label7: TLabel;
    DVenIni: TDateTimePicker;
    BEVlrIni: THButtonedEdit;
    Label5: TLabel;
    Label4: TLabel;
    BECodFor: THButtonedEdit;
    Label3: TLabel;
    Label6: TLabel;
    BECodFil: THButtonedEdit;
    BECodEmp: THButtonedEdit;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    BECodPor: THButtonedEdit;
    Label2: TLabel;
    DDatIni: TDateTimePicker;
    Label10: TLabel;
    DDatFim: TDateTimePicker;
    Label11: TLabel;
    Label12: TLabel;
    cbSituacaoArm: TComboBox;
    DFinIni: TDateTimePicker;
    Label14: TLabel;
    DFinFim: TDateTimePicker;
    Label13: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure BECodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure BECodEmpRightButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BECodFilRightButtonClick(Sender: TObject);
    procedure BECodPorRightButtonClick(Sender: TObject);
    procedure BECodForRightButtonClick(Sender: TObject);
    procedure MostrarClick(Sender: TObject);
    procedure FGridArmEnterLine(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CancelarClick(Sender: TObject);
    procedure SairClick(Sender: TObject);
    procedure FGridTitEnterLine(Sender: TObject);
    procedure BECodFilKeyPress(Sender: TObject; var Key: Char);
    procedure BECodPorKeyPress(Sender: TObject; var Key: Char);
    procedure BECodForKeyPress(Sender: TObject; var Key: Char);
    procedure BEVlrIniKeyPress(Sender: TObject; var Key: Char);
    procedure BEVlrFimKeyPress(Sender: TObject; var Key: Char);
    procedure DVenIniChange(Sender: TObject);
    procedure DVenIniExit(Sender: TObject);
    procedure DVenFimExit(Sender: TObject);
    procedure DVenFimChange(Sender: TObject);
    procedure BEVlrFimExit(Sender: TObject);
    procedure BEVlrIniExit(Sender: TObject);
    procedure DVenIniEnter(Sender: TObject);
    procedure DVenFimEnter(Sender: TObject);
    procedure DVenIniClick(Sender: TObject);
    procedure DVenFimClick(Sender: TObject);
    procedure DDatIniChange(Sender: TObject);
    procedure DDatFimChange(Sender: TObject);
    procedure DFinIniChange(Sender: TObject);
    procedure DFinFimChange(Sender: TObject);
    procedure DDatIniClick(Sender: TObject);
    procedure DDatFimClick(Sender: TObject);
    procedure DFinIniClick(Sender: TObject);
    procedure DFinFimClick(Sender: TObject);
    procedure DDatIniEnter(Sender: TObject);
    procedure DDatFimEnter(Sender: TObject);
    procedure DFinIniEnter(Sender: TObject);
    procedure DFinFimEnter(Sender: TObject);
    procedure DDatIniExit(Sender: TObject);
    procedure DFinIniExit(Sender: TObject);
    procedure DDatFimExit(Sender: TObject);
    procedure DFinFimExit(Sender: TObject);
    procedure BECodPorExit(Sender: TObject);
    procedure BECodEmpExit(Sender: TObject);
    procedure BECodFilExit(Sender: TObject);
    procedure BECodForExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbSituacaoArmChange(Sender: TObject);
  private
    FConsulta: T510CON;
    FString: string;
    FOldDate: TDateTime;

    function Valor(const pObj: THButtonedEdit; const pTexto, pKey: String; const pEspaco,pDecimal: Integer): String;
  end;

var
  F510CON: TF510CON;

implementation

uses
  oTabelas, Data.DB, oBase, CommCtrl;

{$R *.dfm}

procedure TF510CON.BECodEmpExit(Sender: TObject);
begin
  FString := BECodEmp.Text;
  UltimoCaracter(FString, ',', True);
  BECodEmp.Text := FString;
end;

procedure TF510CON.BECodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  FString := BECodEmp.Text;
  if (UltimoCaracter(FString, ',', True) and AnsiSameText(Key,',')) or ((Length(FString) = 0) and AnsiSameText(Key,',')) then
    Key := #0
  else
  if not(CharInSet(key, ['0'..'9',',',#8])) then
    key := #0;
end;

procedure TF510CON.BECodEmpRightButtonClick(Sender: TObject);
begin
  BECodEmp.LookupData;
end;

procedure TF510CON.BECodFilExit(Sender: TObject);
begin
  FString := BECodFil.Text;
  UltimoCaracter(FString, ',', True);
  BECodFil.Text := FString;
end;

procedure TF510CON.BECodFilKeyPress(Sender: TObject; var Key: Char);
begin
  FString := BECodFil.Text;
  if (UltimoCaracter(FString, ',', True) and AnsiSameText(Key,',')) or ((Length(FString) = 0) and AnsiSameText(Key,',')) then
    Key := #0
  else
  if not(CharInSet(key, ['0'..'9',',',#8])) then
    key := #0;
end;

procedure TF510CON.BECodFilRightButtonClick(Sender: TObject);
begin
  BECodFil.LookupData;
end;

procedure TF510CON.BECodForExit(Sender: TObject);
begin
  FString := BECodFor.Text;
  UltimoCaracter(FString, ',', True);
  BECodFor.Text := FString;
end;

procedure TF510CON.BECodForKeyPress(Sender: TObject; var Key: Char);
begin
  FString := BECodFor.Text;
  if (UltimoCaracter(FString, ',', True) and AnsiSameText(Key,',')) or ((Length(FString) = 0) and AnsiSameText(Key,',')) then
    Key := #0
  else
  if not(CharInSet(key, ['0'..'9',',',#8])) then
    key := #0;
end;

procedure TF510CON.BECodForRightButtonClick(Sender: TObject);
begin
  BECodFor.LookupData;
end;

procedure TF510CON.BECodPorExit(Sender: TObject);
begin
  FString := BECodPor.Text;
  UltimoCaracter(FString, ',', True);
  BECodPor.Text := FString;
end;

procedure TF510CON.BECodPorKeyPress(Sender: TObject; var Key: Char);
begin
  FString := BECodPor.Text;
  if (UltimoCaracter(FString, ',', True) and AnsiSameText(Key,',')) or ((Length(FString) = 0) and AnsiSameText(Key,',')) then
    Key := #0
  else
  if not(CharInSet(key, ['0'..'9',',',#8])) then
    Key := #0;
end;

procedure TF510CON.BECodPorRightButtonClick(Sender: TObject);
begin
  BECodPor.LookupData;
end;

procedure TF510CON.BEVlrFimExit(Sender: TObject);
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
      CMessage('Valor Final n�o poder ser menor que o Valor Inicial!', mtWarning);
    end;
end;

procedure TF510CON.BEVlrFimKeyPress(Sender: TObject; var Key: Char);
begin
  FString := BEVlrFim.Text;
  if (UltimoCaracter(FString, ',', True) and AnsiSameText(Key,',')) or ((Length(FString) = 0) and AnsiSameText(Key,',')) then
    Key := #0
  else
  if not(CharInSet(key, ['0'..'9',',',#8])) then
    key := #0;

  Valor(BEVlrFim,BEVlrFim.Text,key,50,2);
end;

procedure TF510CON.BEVlrIniExit(Sender: TObject);
var
  xVlrIni: Double;
  xVlrFim: Double;
begin
  xVlrini := StrToFloat(StringReplace(BEVlrIni.Text, '.', '', [rfReplaceAll]));
  xVlrFim := StrToFloat(StringReplace(BEVlrFim.Text, '.', '', [rfReplaceAll]));

  if (xVlrFim > 0) and (xVlrini > xVlrFim) then
  begin
    BEVlrFim.SetFocus;
    CMessage('Valor Inicial n�o poder ser menor que o Valor Final!', mtWarning);
  end;
end;

procedure TF510CON.BEVlrIniKeyPress(Sender: TObject; var Key: Char);
begin
  FString := BEVlrIni.Text;
  if (UltimoCaracter(FString, ',', True) and AnsiSameText(Key,',')) or ((Length(FString) = 0) and AnsiSameText(Key,',')) then
    Key := #0
  else
  if not(CharInSet(key, ['0'..'9',',',#8])) then
    key := #0;

  Valor(BEVlrIni,BEVlrIni.Text,key,50,2);
end;

procedure TF510CON.SairClick(Sender: TObject);
begin
  CancelarClick(Self);
  Self.Close;
end;

procedure TF510CON.CancelarClick(Sender: TObject);
begin
  BECodEmp.Text := EmptyStr;
  BECodFil.Text := EmptyStr;
  BECodPor.Text := EmptyStr;
  BECodFor.Text := EmptyStr;
  DVenIni.DateTime := 1;
  DVenIni.Format := '00/00/0000';
  DVenFim.DateTime := 1;
  DVenFim.Format := '00/00/0000';
  DDatIni.DateTime := 1;
  DDatIni.Format := '00/00/0000';
  DDatFim.DateTime := 1;
  DDatFim.Format := '00/00/0000';
  DFinIni.DateTime := 1;
  DFinIni.Format := '00/00/0000';
  DFinFim.DateTime := 1;
  DFinFim.Format := '00/00/0000';

  BEVlrIni.Text := '0,00';
  BEVlrFim.Text := '0,00';
  cbSituacaoTit.ItemIndex := 2;
  cbSituacaoArm.ItemIndex := 2;

  FGridArm.Clear;
  FGridTit.Clear;
  FGridAss.Clear;
  FConsulta.ListaArm.Clear;
  BECodPor.SetFocus;
end;

procedure TF510CON.cbSituacaoArmChange(Sender: TObject);
begin
  if (cbSituacaoArm.ItemIndex = 0) then
  begin
    cbSituacaoTit.ItemIndex := 0;
    cbSituacaoTit.Enabled := False;
  end
  else
    cbSituacaoTit.Enabled := True;
end;

procedure TF510CON.DDatFimChange(Sender: TObject);
begin
  DDatFim.Format := FormatSettings.ShortDateFormat;

  if (DDatFim.Date = 1) then
    DDatFim.Format := '00/00/0000';
end;

procedure TF510CON.DDatFimClick(Sender: TObject);
begin
  DDatFim.Format := FormatSettings.ShortDateFormat;
end;

procedure TF510CON.DDatFimEnter(Sender: TObject);
begin
  DDatFim.Format := FormatSettings.ShortDateFormat;
end;

procedure TF510CON.DDatFimExit(Sender: TObject);
begin
  if (DDatFim.Date < DDatIni.Date) then
  begin
    DDatFim.SetFocus;
    CMessage('Data Final n�o poder ser menor que a Data Inicial!', mtWarning);
  end
  else
  if (DDatFim.Date = 1) then
    DDatFim.Format := '00/00/0000';
end;

procedure TF510CON.DDatIniChange(Sender: TObject);
begin
  DDatIni.Format := FormatSettings.ShortDateFormat;

  if (DDatIni.Date = 1) then
    DDatIni.Format := '00/00/0000';
end;

procedure TF510CON.DDatIniClick(Sender: TObject);
begin
  FOldDate := DDatIni.DateTime;
  DDatIni.DateTime := Date;
  DDatIni.Format := FormatSettings.ShortDateFormat;
end;

procedure TF510CON.DDatIniEnter(Sender: TObject);
begin
  DDatIni.Format := FormatSettings.ShortDateFormat;
end;

procedure TF510CON.DDatIniExit(Sender: TObject);
begin
  if (DDatFim.Date > 1) then
  begin
    if (DDatIni.Date > DDatFim.Date) then
    begin
      DDatIni.SetFocus;
      CMessage('Data Inicial n�o poder ser maior que a Data Final!', mtWarning);
    end;
  end
  else
  if (DDatIni.Date = 1) then
    DDatIni.Format :=  '00/00/0000';
end;

procedure TF510CON.DFinFimChange(Sender: TObject);
begin
  DFinFim.Format := FormatSettings.ShortDateFormat;

  if (DFinFim.Date = 1) then
    DFinFim.Format := '00/00/0000';
end;

procedure TF510CON.DFinFimClick(Sender: TObject);
begin
  DFinFim.Format := FormatSettings.ShortDateFormat;
end;

procedure TF510CON.DFinFimEnter(Sender: TObject);
begin
  DFinFim.Format := FormatSettings.ShortDateFormat;
end;

procedure TF510CON.DFinFimExit(Sender: TObject);
begin
  if (DFinFim.Date < DFinIni.Date) then
  begin
    DFinFim.SetFocus;
    CMessage('Data Final n�o poder ser menor que a Data Inicial!', mtWarning);
  end
  else
  if (DFinFim.Date = 1) then
    DFinFim.Format := '00/00/0000';
end;

procedure TF510CON.DFinIniChange(Sender: TObject);
begin
  DFinIni.Format := FormatSettings.ShortDateFormat;

  if (DFinIni.Date = 1) then
    DFinIni.Format := '00/00/0000';
end;

procedure TF510CON.DFinIniClick(Sender: TObject);
begin
  DFinIni.Format := FormatSettings.ShortDateFormat;
end;

procedure TF510CON.DFinIniEnter(Sender: TObject);
begin
  DFinIni.Format := FormatSettings.ShortDateFormat;
end;

procedure TF510CON.DFinIniExit(Sender: TObject);
begin
  if (DFinFim.Date > 1) then
  begin
    if (DFinIni.Date > DFinFim.Date) then
    begin
      DFinIni.SetFocus;
      CMessage('Data Inicial n�o poder ser maior que a Data Final!', mtWarning);
    end;
  end
  else
  if (DFinIni.Date = 1) then
    DFinIni.Format := '00/00/0000';
end;

procedure TF510CON.DVenFimChange(Sender: TObject);
begin
  DVenFim.Format := FormatSettings.ShortDateFormat;

  if (DVenFim.Date = 1) then
    DVenFim.Format := '00/00/0000';
end;

procedure TF510CON.DVenFimClick(Sender: TObject);
begin
  DVenFim.Format := FormatSettings.ShortDateFormat;
end;

procedure TF510CON.DVenFimEnter(Sender: TObject);
begin
  DVenFim.Format := FormatSettings.ShortDateFormat;
end;

procedure TF510CON.DVenFimExit(Sender: TObject);
begin
  if (DVenFim.Date < DVenIni.Date) then
  begin
    DVenFim.SetFocus;
    CMessage('Data Final n�o poder ser menor que a Data Inicial!', mtWarning);
  end
  else
  if (DVenFim.Date = 1) then
    DVenFim.Format := '00/00/0000';
end;

procedure TF510CON.DVenIniChange(Sender: TObject);
begin
  DVenIni.Format := FormatSettings.ShortDateFormat;

  if (DVenIni.Date = 1) then
    DVenIni.Format := '00/00/0000';
end;

procedure TF510CON.DVenIniClick(Sender: TObject);
begin
  DVenIni.Format := FormatSettings.ShortDateFormat;
end;

procedure TF510CON.DVenIniEnter(Sender: TObject);
begin
  DVenIni.Format := FormatSettings.ShortDateFormat;
end;

procedure TF510CON.DVenIniExit(Sender: TObject);
begin
  if (DVenFim.Date > 1) then
  begin
    if (DVenIni.Date > DVenFim.Date) then
    begin
      DVenIni.SetFocus;
      CMessage('Data Inicial n�o poder ser maior que a Data Final!', mtWarning);
    end;
  end
  else
  if (DVenIni.Date = 1) then
    DVenIni.Format := '00/00/0000';
end;

procedure TF510CON.MostrarClick(Sender: TObject);
var
  i: Integer;
  x510ARM: T510CON;

  function MontaCondicaoTitulos(): string;
  begin
    Result := EmptyStr;

    if not(IsNull(BECodEmp.Text)) then
      Result := Format(' AND USU_CODEMP IN (%s) ', [BECodEmp.Text]);

    if not(IsNull(BECodFil.Text)) then
      Result := Result + Format(' AND USU_CODFIL IN (%s) ', [BECodFil.Text]);

    if not(IsNull(BECodFor.Text)) then
      Result := Result + Format(' AND USU_CODFOR IN (%s) ', [BECodFor.Text]);

    if not(DVenIni.Date = 1) then
      Result := Result + Format(' AND USU_VCTORI >= %s ', [DateTimeFormatDB(DVenIni.DateTime)]);

    if not(DVenFim.Date = 1) then
      Result := Result + Format(' AND USU_VCTORI <= %s ', [DateTimeFormatDB(DVenFim.DateTime)]);

    if (TextToFloat(BEVlrIni.Text) > 0) then
      Result := Result + ' AND USU_VLRORI >= '+ ValueToDB(BEVlrIni.Text);

    if (TextToFloat(BEVlrFim.Text) > 0) then
      Result := Result + ' AND USU_VLRORI <= '+ ValueToDB(BEVlrFim.Text);

    if (cbSituacaoTit.ItemIndex = 0) then
      Result := Result + ' AND USU_SITARM = ''S'' '
    else
    if (cbSituacaoTit.ItemIndex = 1) then
      Result := Result + ' AND USU_SITARM = ''N'' ';
  end;

  function FiltroPortadorArmazenamento(): string;
  begin
    Result := EmptyStr;

    if not(IsNull(BECodPor.Text)) then
      Result := Format(' USU_CODPOR IN (%s) AND ', [BECodPor.Text]);

    if not(DDatIni.Date = 1) then
      Result := Result + Format(' USU_DATGER >= %s AND ', [DateTimeFormatDB(DDatIni.DateTime)]);

    if not(DDatFim.Date = 1) then
      Result := Result + Format(' USU_DATGER <= %s AND ', [DateTimeFormatDB(DDatFim.DateTime)]);

    if not(DFinIni.Date = 1) then
      Result := Result + Format(' USU_DATFIN >= %s AND ', [DateTimeFormatDB(DFinIni.DateTime)]);

    if not(DFinFim.Date = 1) then
      Result := Result + Format(' USU_DATFIN <= %s AND ', [DateTimeFormatDB(DFinFim.DateTime)]);

    if (cbSituacaoArm.ItemIndex = 0) then
      Result := Result + ' USU_SITARM = ''S'' '
    else
    if (cbSituacaoArm.ItemIndex = 1) then
      Result := Result + ' USU_SITARM = ''N'' ';

    UltimoCaracter(Result, 'AND ', True, 4);
  end;

begin
  FGridArm.Clear;
  FGridTit.Clear;
  FGridAss.Clear;

  FConsulta.Iniciar;
  FConsulta.AdicionarCondicao(FiltroPortadorArmazenamento);
  FConsulta.Consultar(MontaCondicaoTitulos);

  for i := 0 to pred(FConsulta.ListaArm.Count) do
  begin
    x510ARM := T510CON(FConsulta.ListaArm[i]);

    FGridArm.Add;
    FGridArm.AddFields(x510ARM);
  end;

  if (FConsulta.ListaArm.Count = 0) then
    CMessage('N�o houve informa��es a listar!', mtError)
  else
  begin
    FGridArm.First;
    FGridArmEnterLine(Self);
  end;
end;

procedure TF510CON.FGridArmEnterLine(Sender: TObject);
var
  i: Integer;
  x510ARM: T510CON;
  x510TIT: T510TIT;
begin
  FGridTit.Clear;
  if (FConsulta.ListaArm.Count > 0) then
  begin
    x510ARM := T510CON(FConsulta.ListaArm[pred(FGridArm.Line)]);
    for i := 0 to pred(x510ARM.ListaTit.Count) do
    begin
      x510TIT := T510TIT(x510ARM.ListaTit[i]);
      FGridTit.Add;
      FGridTit.AddFields(x510TIT);
    end;

    FGridTit.First;
    FGridTitEnterLine(Self);
  end;
end;

procedure TF510CON.FGridTitEnterLine(Sender: TObject);
var
  x510TIT: T510TIT;
begin
  FGridAss.Clear;
  x510TIT := T510TIT(T510CON(FConsulta.ListaArm[pred(FGridArm.Line)]).ListaTit[pred(FGridTit.Line)]);
  if (x510TIT.Titulo <> nil) then
  begin
    FGridAss.Add;
    FGridAss.AddFields(x510TIT.Titulo);
  end;
  FGridAss.First;
end;

function TF510CON.Valor(const pObj: THButtonedEdit; const  pTexto, pKey: String; const pEspaco,
  pDecimal: Integer): String;
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

procedure TF510CON.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FConsulta.ListaArm.Clear;
  FreeAndNil(FConsulta);

  FGridArm.Clear;
  FGridTit.Clear;
  FGridAss.Clear;
end;

procedure TF510CON.FormCreate(Sender: TObject);
begin
  BECodEmp.CreateLookup();
  BECodFil.CreateLookup();
  BECodPor.CreateLookup();
  BECodFor.CreateLookup();

  FGridArm.Init('USU_T510ARM', True, Self);
  FGridArm.CreateDataSet;
  FGridTit.Init('USU_T510TIT', True, Self);
  FGridTit.CreateDataSet;
  FGridAss.Init('E501TCP', False, Self);
  FGridAss.CreateDataSet;

  FConsulta := T510CON.Create;
end;

procedure TF510CON.FormShow(Sender: TObject);
begin
  CancelarClick(Self);
end;

end.





