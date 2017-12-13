unit u510CON;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, oButtonedEdit,
  oDataSetGrid, Vcl.ComCtrls, oConsulta, System.Contnrs, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Menus, oMensagem, oDateTimePicker;

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
    BEVlrFim: THButtonedEdit;
    Label8: TLabel;
    Label7: TLabel;
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
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    cbSituacaoArm: TComboBox;
    Label14: TLabel;
    Label13: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Excluir: TButton;
    Marcar: TButton;
    Desmarcar: TButton;
    Panel9: TPanel;
    ExcluirTit: TButton;
    DDatIni: THDateTimePicker;
    DDatFim: THDateTimePicker;
    DFinIni: THDateTimePicker;
    DFinFim: THDateTimePicker;
    DVenFim: THDateTimePicker;
    DVenIni: THDateTimePicker;
    BENomArq: THButtonedEdit;
    Label15: TLabel;
    BENumTit: THButtonedEdit;
    Label16: TLabel;

    procedure FormCreate(Sender: TObject);
    procedure MostrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CancelarClick(Sender: TObject);
    procedure SairClick(Sender: TObject);

    procedure DVenIniExit(Sender: TObject);
    procedure DVenFimExit(Sender: TObject);
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

    procedure MarcarDesmarcar(const pValue: Byte);
  published
    procedure FGridArmEnterLine();
    procedure FGridTitEnterLine();
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
  Data.DB, oBase, CommCtrl, o510arm, o510tit, oGeral;

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
  BENomArq.Text := EmptyStr;
  BENumTit.Text := EmptyStr;

  DDatIni.Init;
  DDatFim.Init;
  DVenIni.Init;
  DVenFim.Init;
  DFinIni.Init;
  DFinFim.Init;

  BEVlrIni.Text := '0,00';
  BEVlrFim.Text := '0,00';
  cbSituacaoTit.ItemIndex := 2;
  cbSituacaoArm.ItemIndex := 2;

  FGridArm.Clear;
  FGridTit.Clear;
  FGridAss.Clear;
  FControle.ListaArm.Clear;
  BENomArq.SetFocus;

  FGridArm.Enabled := False;
  FGridTit.Enabled := False;
  FGridAss.Enabled := False;

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

procedure TF510CON.DDatFimExit(Sender: TObject);
begin
  if (DDatFim.Date < DDatIni.Date) then
  begin
    DDatFim.SetFocus;
    CMessage('Data Final não poder ser menor que a Data Inicial!', mtWarning);
  end;
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
  end;
end;

procedure TF510CON.DesmarcarClick(Sender: TObject);
begin
  MarcarDesmarcar(0);
end;

procedure TF510CON.DFinFimExit(Sender: TObject);
begin
  if (DFinFim.Date < DFinIni.Date) then
  begin
    DFinFim.SetFocus;
    CMessage('Data Final não poder ser menor que a Data Inicial!', mtWarning);
  end;
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
  end;
end;

procedure TF510CON.DVenFimExit(Sender: TObject);
begin
  if (DVenFim.Date < DVenIni.Date) then
  begin
    DVenFim.SetFocus;
    CMessage('Data Final não poder ser menor que a Data Inicial!', mtWarning);
  end;
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
  end;
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
      FGridAss.Disconnect;
      for i := 0 to pred(FControle.ListaArm.Count) do
      begin
        x510ARM := T510CON(FControle.ListaArm[i]);

        FGridArm.Add(x510ARM);
      end;
      FGridArm.Connect;
      FGridArmEnterLine();
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

    if not(IsNull(BENumTit.Text)) then
      Result := Result + Format(' AND USU_ID IN (SELECT USU_IDTIT FROM E501TCP WHERE NUMTIT IN (%s) AND USU_IDTIT > 0)', [BENumTit.Text]);
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
      Result := Result + ' USU_SITARM = ''S'' AND '
    else if (cbSituacaoArm.ItemIndex = 1) then
      Result := Result + ' USU_SITARM = ''N'' AND ';

    if not(IsNull(BENomArq.Text)) then
      Result := Result + Format(' USU_NOMARQ IN (%s) AND ', [BENomArq.Text]);

    UltimoCaracter(Result, 'AND ', True, 4);
  end;

begin
  FGridArm.Clear;
  FGridTit.Clear;
  FGridAss.Clear;

  FGridArm.Enabled := True;
  FGridTit.Enabled := True;
  FGridAss.Enabled := True;

  FControle.Init;
  FControle.AddToCommand(FiltroPortadorArmazenamento, False);
  FControle.Consultar(MontaCondicaoTitulos);

  FGridArm.Disconnect;
  for i := 0 to pred(FControle.ListaArm.Count) do
  begin
    x510ARM := T510CON(FControle.ListaArm[i]);

    FGridArm.Add(x510ARM);
  end;
  FGridArm.Connect;

  if (FControle.ListaArm.Count = 0) then
    CMessage('Não houve informações a listar!', mtErrorInform)
  else
  begin
    FGridArm.First;
    FGridArmEnterLine();

    Marcar.Enabled := True;
    Desmarcar.Enabled := True;
  end;
end;

procedure TF510CON.FGridArmCheckClick;
var
  i: Integer;
  x510CON: T510CON;
begin
  if (FGridArm.Count > 0) then
  begin
    x510CON := T510CON(FControle.ListaArm[pred(FGridArm.Line)]);
    x510CON.Check := iff(x510CON.Check = 1, 0, 1);

    for i := 0 to pred(x510CON.ListaTit.Count) do
      T510TIT(x510CON.ListaTit[i]).Check := x510CON.Check;

    FGridTit.CheckFields('Check', x510CON.Check);

    Excluir.Enabled := FControle.ListaArm.Selecionados;
    ExcluirTit.Enabled := False;
  end;
end;

procedure TF510CON.FGridArmEnterLine();
var
  i: Integer;
  x510ARM: T510CON;
begin
  FGridTit.Clear;
  FGridTit.Disconnect;
  if (FControle.ListaArm.Count > 0) then
  begin
    x510ARM := T510CON(FControle.ListaArm[pred(FGridArm.Line)]);
    for i := 0 to pred(x510ARM.ListaTit.Count) do
      FGridTit.Add(T510TIT(x510ARM.ListaTit[i]));

    FGridTit.Connect;
    FGridTit.First;
    FGridTitEnterLine();
  end;

  Excluir.Enabled := FControle.ListaArm.Selecionados;
  ExcluirTit.Enabled := T510CON(FControle.ListaArm[pred(FGridArm.Line)]).ListaTit.Selecionados;
end;

procedure TF510CON.FGridAssCodBarChange;
var
  x510TIT: TTituloDebitoDiretoAutorizado;
begin
  x510TIT := TTituloDebitoDiretoAutorizado(T510CON(FControle.ListaArm[pred(FGridArm.Line)]).ListaTit[pred(FGridTit.Line)]);
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
  x510TIT: TTituloDebitoDiretoAutorizado;
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
  if (FGridTit.Count > 0) then
  begin
    x510TIT := TTituloDebitoDiretoAutorizado(T510CON(FControle.ListaArm[pred(FGridArm.Line)]).ListaTit[pred(FGridTit.Line)]);
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
end;

procedure TF510CON.FGridTitEnterLine;
var
  x510TIT: TTituloDebitoDiretoAutorizado;
begin
  FGridAss.Clear;

  x510TIT := TTituloDebitoDiretoAutorizado(T510CON(FControle.ListaArm[pred(FGridArm.Line)]).ListaTit[pred(FGridTit.Line)]);
  if AnsiSameText(x510TIT.USU_SitArm, 'S') then
  begin
    FGridAss.Disconnect;

    x510TIT.ConsultarTitulo;
    FGridAss.Add(x510TIT.Titulo);
    FGridAss.Connect;
  end;
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
    FLogEmp := StrToInt(ParamStr(3));
    FLogUsu := StrToInt(ParamStr(4));
  end;

  DDatIni.Init;
  DDatFim.Init;
  DVenIni.Init;
  DVenFim.Init;
  DFinIni.Init;
  DFinFim.Init;

  BECodEmp.CreateLookup();
  BECodFil.CreateLookup();
  BECodPor.CreateLookup();
  BECodFor.CreateLookup();
  BENomArq.CreateLookup();
  BENumTit.CreateLookup();

  BECodFil.AddFilterLookup(BECodEmp);
  BENumTit.AddFilterLookup(BECodEmp);
  BENumTit.AddFilterLookup(BECodFil);
  BENumTit.AddFilterLookup(BECodFor);

  BECodEmp.isNumber := True;
  BECodFil.isNumber := True;
  BECodPor.isNumber := True;
  BECodFor.isNumber := True;
  BENomArq.isAlfa := True;
  BEVlrIni.isFloat := True;
  BEVlrFim.isFloat := True;

  BECodPor.Filter := ' CODPOR IN (SELECT USU_CODPOR FROM USU_T510AGE)';
  BENumTit.Filter := ' (USU_IDTIT > 0)';

  FGridArm.Init('USU_T510ARM', Self, 'USU_CodPor;USU_NomArq');
  FGridArm.AddColumn('Check', 'Sel.', ftInteger, 0, True);
  FGridArm.CreateDataSet;

  FGridTit.Init('USU_T510TIT', Self);
  FGridTit.AddColumn('Check', 'Sel.', ftInteger, 0, True);
  FGridTit.FieldPosition('USU_LogTit', 8);
  FGridTit.CreateDataSet;
  //FGridTit.NumericField('USU_CgcCpf', '99.999.999/9999-99');

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
