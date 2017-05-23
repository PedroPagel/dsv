unit u510CON;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, oButtonedEdit,
  oDataSetGrid, Vcl.ComCtrls, oConsulta, System.Contnrs, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Menus, oMensagem;

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
    Panel8: TPanel;
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
    Excluir: TButton;
    Marcar: TButton;
    Desmarcar: TButton;
    Panel9: TPanel;
    ExcluirTit: TButton;
    procedure FormCreate(Sender: TObject);
    procedure MostrarClick(Sender: TObject);
    procedure FGridArmEnterLine(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CancelarClick(Sender: TObject);
    procedure SairClick(Sender: TObject);
    procedure FGridTitEnterLine(Sender: TObject);

    procedure DVenIniChange(Sender: TObject);
    procedure DVenIniExit(Sender: TObject);
    procedure DVenFimExit(Sender: TObject);
    procedure DVenFimChange(Sender: TObject);
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
    procedure FormShow(Sender: TObject);
    procedure cbSituacaoArmChange(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
    procedure MarcarClick(Sender: TObject);
    procedure DesmarcarClick(Sender: TObject);
    procedure ExcluirTitClick(Sender: TObject);
  private
    FControle: T510CON;
    FOldDate: TDateTime;

    procedure MarcarDesmarcar(const pValue: Byte);
  published
    procedure FGridAssCodBarChange();
    procedure FGridArmCheckClick();
    procedure FGridTitCheckClick();
    procedure BEVlrFimExit();
    procedure BEVlrIniExit();
  end;

var
  F510CON: TF510CON;

implementation

uses
  oTabelas, Data.DB, oBase, CommCtrl;

{$R *.dfm}

procedure TF510CON.BEVlrFimExit();
var
  xVlrIni: Double;
  xVlrFim: Double;
begin
  xVlrIni := StrToFloat(StringReplace(BEVlrIni.Text, '.', '', [rfReplaceAll]));
  xVlrFim := StrToFloat(StringReplace(BEVlrFim.Text, '.', '', [rfReplaceAll]));

  if (xVlrFim > 0) then
    if (xVlrFim < xVlrIni) then
    begin
      BEVlrFim.SetFocus;
      CMessage('Valor Final não poder ser menor que o Valor Inicial!',
        mtWarning);
    end;
end;

procedure TF510CON.BEVlrIniExit();
var
  xVlrIni: Double;
  xVlrFim: Double;
begin
  xVlrIni := StrToFloat(StringReplace(BEVlrIni.Text, '.', '', [rfReplaceAll]));
  xVlrFim := StrToFloat(StringReplace(BEVlrFim.Text, '.', '', [rfReplaceAll]));

  if (xVlrFim > 0) and (xVlrIni > xVlrFim) then
  begin
    BEVlrFim.SetFocus;
    CMessage('Valor Inicial não poder ser menor que o Valor Final!', mtWarning);
  end;
end;

procedure TF510CON.SairClick(Sender: TObject);
begin
  if (FGridArm.Count = 0) or (CMessage('Deseja realmente sair?', mtConfirmationYesNo)) then
  begin
    try
      CancelarClick(Self);
      Self.Close;
    except
      Self.Close;
    end;
  end;
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
  FControle.ListaArm.Clear;
  BECodPor.SetFocus;

  Excluir.Enabled := False;
  ExcluirTit.Enabled := False;
  Marcar.Enabled := False;
  Desmarcar.Enabled := False;
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
    CMessage('Data Final não poder ser menor que a Data Inicial!', mtWarning);
  end
  else if (DDatFim.Date = 1) then
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
      CMessage('Data Inicial não poder ser maior que a Data Final!', mtWarning);
    end;
  end
  else if (DDatIni.Date = 1) then
    DDatIni.Format := '00/00/0000';
end;

procedure TF510CON.DesmarcarClick(Sender: TObject);
begin
  MarcarDesmarcar(0);
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
    CMessage('Data Final não poder ser menor que a Data Inicial!', mtWarning);
  end
  else if (DFinFim.Date = 1) then
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
      CMessage('Data Inicial não poder ser maior que a Data Final!', mtWarning);
    end;
  end
  else if (DFinIni.Date = 1) then
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
    CMessage('Data Final não poder ser menor que a Data Inicial!', mtWarning);
  end
  else if (DVenFim.Date = 1) then
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
      CMessage('Data Inicial não poder ser maior que a Data Final!', mtWarning);
    end;
  end
  else if (DVenIni.Date = 1) then
    DVenIni.Format := '00/00/0000';
end;

procedure TF510CON.ExcluirClick(Sender: TObject);
begin
  if (CMessage('Deseja realmente excluir o(s) registro(s) selecionado(s)?', mtConfirmationYesNo)) then
  begin
    try
      FControle.Excluir;

      CMessage('Registro(s) excluído(s) com sucesso!', mtInformation);
      CancelarClick(Self);
    except
      on E: THMessage do
        Abort;
    end;
  end;
end;

procedure TF510CON.ExcluirTitClick(Sender: TObject);
var
  x510CON: T510CON;
  x510ARM: T510ARM;
  i: Integer;
begin
  x510CON := T510CON(FControle.ListaArm[pred(FGridArm.Line)]);

  if x510CON.ListaTit.Selecionados and (CMessage('Deseja realmente excluir o registro selecionado?', mtConfirmationYesNo)) then
  begin
    x510CON.Excluir(pred(FGridTit.Line), FControle);

    if (FControle.ListaArm.Count = 0) then
    begin
      CancelarClick(Self);
      CMessage('Não há informações a listar!', mtErrorInform)
    end
    else
    begin
      FGridArm.Clear;
      for i := 0 to pred(FControle.ListaArm.Count) do
      begin
        x510ARM := T510CON(FControle.ListaArm[i]);

        FGridArm.Add;
        FGridArm.AddFields(x510ARM);
      end;

      FGridArmEnterLine(Self);
    end;
  end
  else
    Abort;
end;

procedure TF510CON.MarcarClick(Sender: TObject);
begin
  MarcarDesmarcar(1);
end;

procedure TF510CON.MarcarDesmarcar(const pValue: Byte);
begin
  FGridArm.CheckFields('Check', pValue);
  FGridTit.CheckFields('Check', pValue);

  FControle.MarcarDesmarcar(pValue);

  Excluir.Enabled := FControle.ListaArm.Selecionados;
  ExcluirTit.Enabled := T510CON(FControle.ListaArm[Pred(FGridArm.Line)]).ListaTit.Selecionados;
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
      Result := Result + Format(' AND USU_VCTORI >= %s ',
        [DateTimeFormatDB(DVenIni.DateTime)]);

    if not(DVenFim.Date = 1) then
      Result := Result + Format(' AND USU_VCTORI <= %s ',
        [DateTimeFormatDB(DVenFim.DateTime)]);

    if (TextToFloat(BEVlrIni.Text) > 0) then
      Result := Result + ' AND USU_VLRORI >= ' + ValueToDB(BEVlrIni.Text);

    if (TextToFloat(BEVlrFim.Text) > 0) then
      Result := Result + ' AND USU_VLRORI <= ' + ValueToDB(BEVlrFim.Text);

    if (cbSituacaoTit.ItemIndex = 0) then
      Result := Result + ' AND USU_SITARM = ''S'' '
    else if (cbSituacaoTit.ItemIndex = 1) then
      Result := Result + ' AND USU_SITARM = ''N'' ';
  end;

  function FiltroPortadorArmazenamento(): string;
  begin
    Result := EmptyStr;

    if not(IsNull(BECodPor.Text)) then
      Result := Format(' USU_CODPOR IN (%s) AND ', [BECodPor.Text]);

    if not(DDatIni.Date = 1) then
      Result := Result + Format(' USU_DATGER >= %s AND ',
        [DateTimeFormatDB(DDatIni.DateTime)]);

    if not(DDatFim.Date = 1) then
      Result := Result + Format(' USU_DATGER <= %s AND ',
        [DateTimeFormatDB(DDatFim.DateTime)]);

    if not(DFinIni.Date = 1) then
      Result := Result + Format(' USU_DATFIN >= %s AND ',
        [DateTimeFormatDB(DFinIni.DateTime)]);

    if not(DFinFim.Date = 1) then
      Result := Result + Format(' USU_DATFIN <= %s AND ',
        [DateTimeFormatDB(DFinFim.DateTime)]);

    if (cbSituacaoArm.ItemIndex = 0) then
      Result := Result + ' USU_SITARM = ''S'' '
    else if (cbSituacaoArm.ItemIndex = 1) then
      Result := Result + ' USU_SITARM = ''N'' ';

    UltimoCaracter(Result, 'AND ', True, 4);
  end;

begin
  FGridArm.Clear;
  FGridTit.Clear;
  FGridAss.Clear;

  FGridArm.Enabled := True;
  FGridTit.Enabled := True;
  FGridAss.Enabled := True;

  FControle.Iniciar;
  FControle.AdicionarCondicao(FiltroPortadorArmazenamento);
  FControle.Consultar(MontaCondicaoTitulos);

  for i := 0 to pred(FControle.ListaArm.Count) do
  begin
    x510ARM := T510CON(FControle.ListaArm[i]);

    FGridArm.Add;
    FGridArm.AddFields(x510ARM);
  end;

  if (FControle.ListaArm.Count = 0) then
    CMessage('Não houve informações a listar!', mtErrorInform)
  else
  begin
    FGridArm.First;
    FGridArmEnterLine(Self);

    Marcar.Enabled := True;
    Desmarcar.Enabled := True;
  end;
end;

procedure TF510CON.FGridArmCheckClick;
var
  i: Integer;
  x510CON: T510CON;
begin
  x510CON := T510CON(FControle.ListaArm[pred(FGridArm.Line)]);
  x510CON.Check := iff(x510CON.Check = 1, 0, 1);

  for i := 0 to pred(x510CON.ListaTit.Count) do
    T510TIT(x510CON.ListaTit[i]).Check := x510CON.Check;

  FGridTit.CheckFields('Check', x510CON.Check);

  Excluir.Enabled := FControle.ListaArm.Selecionados;
  ExcluirTit.Enabled := False;
end;

procedure TF510CON.FGridArmEnterLine(Sender: TObject);
var
  i: Integer;
  x510ARM: T510CON;
  x510TIT: T510TIT;
begin
  FGridTit.Clear;
  if (FControle.ListaArm.Count > 0) then
  begin
    x510ARM := T510CON(FControle.ListaArm[pred(FGridArm.Line)]);
    for i := 0 to pred(x510ARM.ListaTit.Count) do
    begin
      x510TIT := T510TIT(x510ARM.ListaTit[i]);
      FGridTit.Add;
      FGridTit.AddFields(x510TIT);
    end;

    FGridTit.First;
    FGridTitEnterLine(Self);
  end;

  Excluir.Enabled := FControle.ListaArm.Selecionados;
  ExcluirTit.Enabled := T510CON(FControle.ListaArm[pred(FGridArm.Line)]).ListaTit.Selecionados;
end;

procedure TF510CON.FGridAssCodBarChange;
var
  x510TIT: T510TIT;
begin
  x510TIT := T510TIT(T510CON(FControle.ListaArm[pred(FGridArm.Line)]).ListaTit[pred(FGridTit.Line)]);
  if (x510TIT.Titulo <> nil) then
    if not(AnsiSameText(x510TIT.Titulo.CodBar, FGridAss.FindField('CodBar').AsString)) then
      if (CMessage('Deseja realmente alterar o código de barra?', mtConfirmationYesNo)) then
      begin
        x510TIT.Titulo.CodBar := FGridAss.FindField('CodBar').AsString;
        x510TIT.Alterar;
      end
      else
        FGridAss.FindField('CodBar').AsString := x510TIT.Titulo.CodBar;
end;

procedure TF510CON.FGridTitCheckClick;
var
  i,j: Integer;
  x510TIT: T510TIT;
  x510CON: T510CON;

  function QuantidadeSelecionada(): Boolean;
  var
    y: Integer;
    xCont: Integer;
  begin
    xCont := 0;
    Result := True;

    for y := 0 to pred(T510CON(FControle.ListaArm[pred(FGridArm.Line)]).ListaTit.Count) do
      if (T510TIT(T510CON(FControle.ListaArm[pred(FGridArm.Line)]).ListaTit[y]).Check = 1) then
      begin
        Inc(xCont);

        if (xCont > 1) then
        begin
          Result := False;
          Break;
        end;
      end;
  end;

begin
  x510TIT := T510TIT(T510CON(FControle.ListaArm[pred(FGridArm.Line)]).ListaTit[pred(FGridTit.Line)]);
  x510TIT.Check := iff(x510TIT.Check = 1, 0, 1);

  j := 0;
  x510CON := T510CON(FControle.ListaArm[pred(FGridArm.Line)]);
  for i := 0 to pred(x510CON.ListaTit.Count) do
  begin
    if (T510TIT(x510CON.ListaTit[i]).Check = x510TIT.Check) then
      Inc(j);
  end;

  if (j = x510CON.ListaTit.Count) then
  begin
    x510CON.Check := x510TIT.Check;
    FGridArm.FindField('Check').AsInteger := x510TIT.Check;
  end;

  ExcluirTit.Enabled := (x510CON.ListaTit.Selecionados and (QuantidadeSelecionada));
end;

procedure TF510CON.FGridTitEnterLine(Sender: TObject);
var
  x510TIT: T510TIT;
begin
  FGridAss.Clear;
  x510TIT := T510TIT(T510CON(FControle.ListaArm[pred(FGridArm.Line)]).ListaTit[pred(FGridTit.Line)]);
  if (x510TIT.Titulo <> nil) then
  begin
    FGridAss.Add;
    FGridAss.AddFields(x510TIT.Titulo);
  end;
  FGridAss.First;
end;

procedure TF510CON.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FControle.ListaArm.Clear;
  FreeAndNil(FControle);

  FGridArm.Clear;
  FGridTit.Clear;
  FGridAss.Clear;
end;

procedure TF510CON.FormCreate(Sender: TObject);
begin
  if (System.ParamCount > 0) then
  begin
    FLogEmp := StrToInt(ParamStr(2));
    FLogUsu := StrToInt(ParamStr(3));
  end
  else
  begin
    FLogEmp := 1;
    FLogUsu := 1403;
  end;

  BECodEmp.CreateLookup();
  BECodFil.CreateLookup();
  BECodPor.CreateLookup();
  BECodFor.CreateLookup();

  BECodEmp.isNumber := True;
  BECodFil.isNumber := True;
  BECodPor.isNumber := True;
  BECodFor.isNumber := True;
  BEVlrIni.isFloat := True;
  BEVlrFim.isFloat := True;

  FGridArm.Enabled := False;
  FGridTit.Enabled := False;
  FGridAss.Enabled := False;

  FGridArm.Init('USU_T510ARM', Self, 'USU_CodPor;USU_NomArq');
  FGridArm.AddColumn('Check', 'Sel.', ftInteger, 0, True);
  FGridArm.CreateDataSet;

  FGridTit.Init('USU_T510TIT', Self);
  FGridTit.AddColumn('Check', 'Sel.', ftInteger, 0, True);
  FGridTit.CreateDataSet;

  FGridAss.Init('E501TCP', Self, 'CodBar');
  FGridAss.CreateDataSet;

  FControle := T510CON.Create;
  FGridAss.ReadOnly('CodBar', False);
end;

procedure TF510CON.FormShow(Sender: TObject);
begin
  CancelarClick(Self);
end;

end.
