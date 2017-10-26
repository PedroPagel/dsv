unit u000cad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.DBCtrls, oButtonedEdit, Datasnap.DBClient, Data.DB, oBase, oDataSetGrid,
  oDateTimePicker, oMensagem, System.Rtti, System.TypInfo, oMemo, oPanel,
  Vcl.AppEvnts;

type
  tEstadoRotina = (erIniciar, erAtualizar, erInserir, erSelecao, erCancelar, erNavegar);
  tCamposPadrao = (cpNenhum, cpAlteracao, cpGeracao);
  tPosicao = (psChave, psGeral, psBotoes, psPadrao);

  TRegistrosChave = record
    Nome: string;
    Posicao: Integer;
    Edicao: Boolean;
    Geral: Boolean;
    Alterado: Boolean;
    Padrao: tCamposPadrao;
    NomeClasse: string;
    NomeTabela: string;
    Required: Boolean;
  end;

  TTabelasExtras = record
    Nome: string;
    Table: TTable;
    IR: string;
    State: tEstadoRotina;
    ChaveSelecao: array of string;
  end;

  TRelacionamentos = record
    Chave: string;
    Relacionado: string;
    Referenciado: string;
  end;

  TF000CAD = class(TForm)
    Botoes: TPanel;
    Excluir: TButton;
    Alterar: TButton;
    Inserir: TButton;
    Cancelar: TButton;
    Sair: TButton;
    DBNavigator: TDBNavigator;
    Cabecalho: THPanel;
    Geral: THPanel;

    procedure SairClick(Sender: TObject);
    procedure CabecalhoExit(Sender: TObject);
    procedure InserirClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
    procedure DBNavigatorClick(Sender: TObject; Button: TNavigateBtn);
    procedure SairMouseEnter(Sender: TObject);
    procedure FormMouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    procedure SairMouseLeave(Sender: TObject);
    procedure BotoesEnter(Sender: TObject);
    procedure CancelarMouseEnter(Sender: TObject);
    procedure CancelarMouseLeave(Sender: TObject);
    procedure CancelarMouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    procedure AlterarClick(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ApplicationEvents1Hint(Sender: TObject);
    procedure GeralEnter(Sender: TObject);
  private
    { Private declarations }
    FCamposSelect: array of string;
    FCamposChave: array of TRegistrosChave;
    FCamposGerais: array of TRegistrosChave;
    FCamposPadrao: array of TRegistrosChave;
    FRelacionamentos: array of TRelacionamentos;

    FTable: TTable;
    FOldValues: TTable;
    FTabela: string;
    FEstado: tEstadoRotina;
    FSair: Boolean;
    FCancelar: Boolean;
    FPosicaoRotina: tPosicao;
    FUltimoComponente: string;
    FButtonEdit: string;

    procedure IniciarCabecalhoChave(const pFocus: Boolean = False);
    procedure VerificarCampos();
    procedure LookupClick(Sender: TObject; const pObjectName: string);
    procedure AoAlterar(Sender: TObject);
    procedure CarregarRelacionamentos();
    procedure LimparComponentes(const pPos: Integer; const pTable: TTable; const pPertmiteRequired: Boolean = False);
    procedure CabecalhoAtivo(const pEnable: Boolean; const pTabela: string);
    procedure CarregarRegistros(const pTable: TTable);
    procedure CarregarCaseProperty(const pPosicao: Integer; pProperty: TRttiProperty; const pTable: TTable);
    procedure AdicionarParaComponente(const pPosicao: Integer; const pValor: string);
    procedure CarregarValoresCamposPadrao(const pValor: tEstadoRotina);
    procedure CarregarCamposPadrao(const pComponente: TComponent; const pPos: Integer);

    function ClassePorComponente(const pComp: TComponent): TTable;
    function NomeCampo(const pComp: TComponent): string;
  public
    { Public declarations }

    function NomeClasse: string;
    function State: tEstadoRotina;
    function Table: TTable;
    function OldValues: TTable;

    procedure ValidarCamposChave(const pGrid: TDataSetGrid);
    procedure Registrar(const pClasse: string; const pTabela: string); virtual;
    procedure ExitButton(Sender: TObject);
    procedure EnterFields(); virtual; abstract;
  end;

var
  F000CAD: TF000CAD;

implementation

uses
  o998fld, oTabelas, oQuery;

{$R *.dfm}

procedure TF000CAD.Registrar(const pClasse: string; const pTabela: string);
var
  xClass: TPersistentClass;
  i,j,x: Integer;
  xType: TRttiType;
  xProperty: TRttiProperty;
  xContext: TRttiContext;
begin
  FSair := False;
  FCancelar := False;
  FTabela := pTabela;

  if (FLogUsu = 0) then
    FLogUsu := 257; //sapiensweb

  FillChar(FCamposChave, sizeOf(FCamposChave), 0);
  FillChar(FCamposSelect, sizeOf(FCamposSelect), 0);
  FillChar(FCamposGerais, sizeOf(FCamposGerais), 0);
  FillChar(FCamposPadrao, sizeOf(FCamposPadrao), 0);

  xClass := GetClass(pClasse);
  FTable := (xClass.Create) as TTable;
  FTable.Init(FTabela);

  FOldValues := (xClass.Create) as TTable;
  FOldValues.Init(FTabela);

  DBNavigator.DataSource := TDataSource.Create(nil);
  DBNavigator.DataSource.DataSet := FTable.SetTableToRecord(FTabela);
  DBNavigator.DataSource.DataSet.Open;
  DBNavigator.Enabled := (FTable.Count > 0);
  FEstado := erIniciar;

  if (FTable.Count > 0) then
    FTable.Next;

  Inserir.Enabled := False;
  Alterar.Enabled := False;
  Cancelar.Enabled := False;
  Excluir.Enabled := True;

  CarregarRelacionamentos();

  for i := 0 to pred(Self.ComponentCount) do
  begin
    if ((Self.Components[i].ClassType = THMemo) or (Self.Components[i].ClassType = THDateTimePicker) or
        (Self.Components[i].ClassType = THButtonedEdit)) then
      CarregarCamposPadrao(Self.Components[i], i);

    if (Self.Components[i].ClassType = THPanel) then
      THPanel(Self.Components[i]).OnExit := CabecalhoExit;
  end;

  for i := 0 to pred(Self.ComponentCount) do
  begin
    if ((Self.Components[i].ClassType = THMemo) or (Self.Components[i].ClassType = THDateTimePicker) or
        (Self.Components[i].ClassType = THButtonedEdit)) then
    begin
      if (Self.Components[i].ClassType = THButtonedEdit) then
      begin
        THButtonedEdit(Self.Components[i]).DataBaseRegisters := (Self.Components[i].GetParentComponent = Cabecalho);

        if not(AnsiSameText(THButtonedEdit(Self.Components[i]).Table, pTabela)) or not(IsNull(THButtonedEdit(Self.Components[i]).ENumerator)) then
        begin
          if (THButtonedEdit(Self.Components[i]).Lookup) then
          begin
            THButtonedEdit(Self.Components[i]).AvoidSelections := True;
            THButtonedEdit(Self.Components[i]).AddLeftTableForm(Self);
            THButtonedEdit(Self.Components[i]).CreateLookup();
          end;
        end
        else
        begin
          if (THButtonedEdit(Self.Components[i]).DataBaseRegisters) then
          begin
            THButtonedEdit(Self.Components[i]).Lookup := False;
            THButtonedEdit(Self.Components[i]).AddLeftTableForm(Self);
            THButtonedEdit(Self.Components[i]).CreateLookup();
          end;
        end;
      end;

      xType := xContext.GetType(ClassePorComponente(Self.Components[i]).ClassType);
      xProperty := xType.GetProperty(NomeCampo(Self.Components[i]));

      if (Self.Components[i].GetParentComponent = Cabecalho) then
      begin
        j := Length(FCamposChave);
        Inc(j);
        SetLength(FCamposChave, j);
        Dec(j);

        FCamposChave[j].Nome := xProperty.Name;
        FCamposChave[j].Posicao := i;
        FCamposChave[j].Edicao := False;
        FCamposChave[j].Geral := False;
        FCamposChave[j].NomeClasse := xType.Name;

        x := Length(FCamposSelect);
        Inc(x);
        SetLength(FCamposSelect, x);
        FCamposSelect[pred(x)] := xProperty.Name;
      end
      else
      begin
        j := Length(FCamposGerais);
        Inc(j);
        SetLength(FCamposGerais, j);
        Dec(j);

        FCamposGerais[j].Nome := xProperty.Name;
        FCamposGerais[j].Posicao := i;
        FCamposGerais[j].Edicao := False;
        FCamposGerais[j].Geral := True;
        FCamposGerais[j].NomeClasse := xType.Name;

        if (Self.Components[i].ClassType = THButtonedEdit) then
        begin
          FCamposGerais[j].Required := THButtonedEdit(Self.Components[i]).Required;
          FCamposGerais[j].NomeTabela := THButtonedEdit(Self.Components[i]).DataBaseTable;
        end;

        if (Self.Components[i].ClassType = THDateTimePicker) then
          FCamposGerais[j].NomeTabela := THDateTimePicker(Self.Components[i]).DataBaseTable;

        if (Self.Components[i].ClassType = THMemo) then
          FCamposGerais[j].NomeTabela := THMemo(Self.Components[i]).DataBaseTable;
      end;

      if (Self.Components[i].ClassType = THMemo) then
        THMemo(Self.Components[i]).OnChange := AoAlterar;

      if (Self.Components[i].ClassType = THDateTimePicker) then
        THDateTimePicker(Self.Components[i]).OnChange := AoAlterar;

      if (Self.Components[i].ClassType = THButtonedEdit) then
      begin
        THButtonedEdit(Self.Components[i]).OnChange := AoAlterar;
        THButtonedEdit(Self.Components[i]).OnExit := ExitButton;
        THButtonedEdit(Self.Components[i]).OnClickLookup := LookupClick;
      end;

      if (Self.Components[i].ClassType = THButtonedEdit) then
        case xProperty.PropertyType.TypeKind of
          tkInteger:
            THButtonedEdit(Self.Components[i]).isNumber := True;

          tkFloat:
            if not(AnsiSameText('TDate', xProperty.PropertyType.Name)) then
              THButtonedEdit(Self.Components[i]).isFloat := True;

          tkWChar, tkChar:
            THButtonedEdit(Self.Components[i]).isAlfa := True;
        else
          THButtonedEdit(Self.Components[i]).isAlfa := True;
        end;
    end;
  end;

  IniciarCabecalhoChave();
  CarregarRegistros(FTable);
  FPosicaoRotina := psChave;
end;

procedure TF000CAD.AdicionarParaComponente(const pPosicao: Integer;
  const pValor: string);
begin
  if (Self.Components[pPosicao].ClassType = THButtonedEdit) then
    THButtonedEdit(Self.Components[pPosicao]).Text := pValor;

  if (Self.Components[pPosicao].ClassType = THMemo) then
  begin
    if not(IsNull(pValor)) then
    begin
      THMemo(Self.Components[pPosicao]).Lines.Clear;
      THMemo(Self.Components[pPosicao]).Lines.Add(pValor);
    end;
  end;

  if (Self.Components[pPosicao].ClassType = THDateTimePicker) then
    THDateTimePicker(Self.Components[pPosicao]).DateTime := StrToDateTime(pValor);
end;

procedure TF000CAD.AlterarClick(Sender: TObject);
var
  xArray: array of string;

  procedure MontaUpdate(const pTabela: string);
  var
    i,j: Integer;
  begin
    FillChar(xArray, sizeOf(xArray), 0);

    for i := 0 to High(FCamposGerais) do
    begin
      if (FCamposGerais[i].Alterado) and
        AnsiSameText(FCamposGerais[i].NomeTabela, pTabela) then
      begin
        j := Length(xArray);
        Inc(j);
        SetLength(xArray, j);

        xArray[pred(j)] := FCamposGerais[i].Nome;
      end;
    end;

    for i := 0 to High(FCamposPadrao) do
    begin
      if (FCamposPadrao[i].Alterado) and
        AnsiSameText(FCamposPadrao[i].NomeTabela, pTabela) then
      begin
        j := Length(xArray);
        Inc(j);
        SetLength(xArray, j);

        xArray[pred(j)] := FCamposPadrao[i].Nome;
      end;
    end;
  end;

begin
  FillChar(xArray, sizeOf(xArray), 0);
  FTable.Start;
  MontaUpdate(FTabela);

  try
    if (Length(xArray) > 0) then
    begin
      FTable.PropertyForSelect(FCamposSelect, True);
      FTable.FieldsForUpdate(xArray);
      FTable.Execute(estUpdate);
    end;
  except
    on E: Exception do
      CMessage('Erro ao atualizar!', mtErrorInform, True, e.Message);
  end;

  Cancelar.Click;
end;

procedure TF000CAD.AoAlterar(Sender: TObject);
var
  xComponente: THButtonedEdit;
  xContext: TRttiContext;
  xField: TRttiProperty;
  xAlterar: Boolean;
  xPadrao: Boolean;
  xType: TRttiType;
  xTable: TTable;

  function Campo(): string;
  begin
    if (TComponent(Sender).ClassType = THButtonedEdit) then
      Result := THButtonedEdit(TComponent(Sender)).DataBaseField
    else
    if (TComponent(Sender).ClassType = THDateTimePicker) then
      Result := THDateTimePicker(TComponent(Sender)).DataBaseField
    else
    if (TComponent(Sender).ClassType = THMemo) then
      Result := THMemo(TComponent(Sender)).DataBaseField;
  end;

  procedure MontaAltear(const pArray: array of TRegistrosChave; const pBreak: Boolean = False);
  var
    i: Integer;
    xProperty: TRttiProperty;
  begin
    for i := 0 to High(pArray) do
    begin
      xProperty := xType.GetProperty(campo());

      if (AnsiSameText(UpperCase(xProperty.Name), UpperCase(pArray[i].Nome)) or
         (xPadrao and (pArray[i].Padrao = cpAlteracao))) then
      begin
        xField := xType.GetProperty('OLD_'+ xProperty.Name);
        xComponente := THButtonedEdit(Self.Components[pArray[i].Posicao]);

        if (FPosicaoRotina = psChave) then
          FCamposChave[i].Edicao := True;

        case xField.PropertyType.TypeKind of
          tkInteger:
          begin
            if (IsNull(xComponente.Text)) then
            begin
              xComponente.Text := '0';
              xComponente.SelectAll;
            end;

            xAlterar := (xField.GetValue(xTable).AsInteger <> StrToInt(xComponente.Text));
            xProperty.SetValue(xTable, StrToInt(xComponente.Text));
          end;

          tkFloat:
            if (AnsiSameText('TDate', xField.PropertyType.Name)) then
            begin
              xAlterar := (FloatToDateTime(xField.GetValue(xTable).AsExtended) <>
                StrToDate(xComponente.Text));
              xProperty.SetValue(xTable, StrToDate(xComponente.Text));
            end
            else
            begin
              xComponente.Text := iff(IsNull(xComponente.Text), '0', xComponente.Text);
              xAlterar := (xField.GetValue(xTable).AsExtended <> StrToFloat(xComponente.Text));
              xProperty.SetValue(xTable, StrToFloat(xComponente.Text));
            end;

          tkWChar, tkChar:
          begin
            xAlterar := (StrToChar(xField.GetValue(xTable).AsString) <> StrToChar(xComponente.Text));
            xProperty.SetValue(xTable, StrToChar(xComponente.Text));
          end
        else
          xAlterar := (xField.GetValue(xTable).AsString <> xComponente.Text);
          xProperty.SetValue(xTable, xComponente.Text);
        end;

        if (FPosicaoRotina = psChave) then
          FCamposChave[i].Alterado := xAlterar;

        if (FPosicaoRotina = psGeral) then
          FCamposGerais[i].Alterado := xAlterar;

        if (FPosicaoRotina = psPadrao) then
          FCamposPadrao[i].Alterado := xAlterar;

        Break;
      end;

      if (xAlterar) and (pBreak) then
        Break;
    end;
  end;

begin
   xAlterar := False;

  if not(FEstado in [erCancelar, erNavegar]) then
  begin
    xTable := ClassePorComponente(TComponent(Sender));
    xType := xContext.GetType(xTable.ClassType);

    xPadrao := False;

    if (FPosicaoRotina = psChave) then
      MontaAltear(FCamposChave, True);

    if not(FEstado in [erCancelar, erNavegar, erIniciar]) then
    begin
      if (FPosicaoRotina = psGeral) then
        MontaAltear(FCamposGerais, True);

      xPadrao := True;
      if (FPosicaoRotina = psPadrao) then
        MontaAltear(FCamposPadrao, True);
    end;
  end;
end;

procedure TF000CAD.ApplicationEvents1Hint(Sender: TObject);
var
  xName: string;
begin
  xName := TComponent(Sender).Name;
end;

procedure TF000CAD.BotoesEnter(Sender: TObject);
begin
  FPosicaoRotina := psBotoes;
end;

procedure TF000CAD.CabecalhoAtivo(const pEnable: Boolean; const pTabela: string);
var
  i: Integer;
  xComponent: TComponent;
begin
  for i := 0 to pred(Self.ComponentCount) do
  begin
    xComponent := Self.Components[i].GetParentComponent;

    if (xComponent.ClassType = THPanel) and AnsiSameText(THPanel(xComponent).DataBaseTable, pTabela) then
    begin
      if (Self.Components[i].ClassType = THButtonedEdit) then
      begin
        THButtonedEdit(Self.Components[i]).Enabled := pEnable;

        if (THButtonedEdit(Self.Components[i]).TabOrder = 0) and (pEnable) then
          THButtonedEdit(Self.Components[i]).SetFocus;
      end;
    end;
  end;
end;

procedure TF000CAD.CabecalhoExit(Sender: TObject);
var
  i: Integer;
  xType: TRttiType;
  xProperty: TRttiProperty;
  xContext: TRttiContext;
  xChave: Boolean;
begin
  try
    if not(FEstado = erCancelar) then
    begin
      Cancelar.Enabled := True;

      if AnsiSameText(THPanel(Sender).DataBaseTable, FTabela)  then
      begin
        if not(FEstado = erCancelar) then
          VerificarCampos();

        FTable.PropertyForSelect(FCamposSelect, True);

        if (FTable.Execute(etSelect, esNormal)) then
        begin
          CarregarRegistros(FTable);

          Inserir.Enabled := False;
          DBNavigator.Enabled := False;
          Alterar.Enabled := True;

          FEstado := erAtualizar;

          CabecalhoAtivo(False, FTabela);
        end
        else
        begin
          FEstado := erInserir;

          Excluir.Enabled := False;
          Alterar.Enabled := False;
          Inserir.Enabled := True;

          CabecalhoAtivo(False, FTabela);

          for i := 0 to High(FCamposGerais) do
            LimparComponentes(FCamposGerais[i].Posicao, FTable);

          xType := xContext.GetType(FTable.ClassType);

          for xProperty in xType.GetProperties do
          begin
            xChave := False;

            for i := 0 to High(FCamposChave) do
            begin
              if (AnsiSameText(xProperty.Name, FCamposChave[i].Nome)) then
              begin
                xChave := True;
                Break;
              end;
            end;

            if not(xChave) then
              xProperty.SetValue(FTable, nil);
          end;

          for i := 0 to pred(Self.ComponentCount) do
          begin
            if (Self.Components[i].ClassType = THDateTimePicker) then
              THDateTimePicker(Self.Components[i]).DateTime := Date;
          end;
        end;
      end;
    end;
  except
  end;
end;

procedure TF000CAD.CancelarClick(Sender: TObject);
var
  i: Integer;
begin
  FEstado := erCancelar;

  FSair := False;
  FCancelar := False;

  for i := 0 to pred(Self.ComponentCount) do
    LimparComponentes(i, FTable);

  for i := 0 to High(FCamposChave) do
    FCamposChave[i].Edicao := False;

  FTable.ClearFields;
  CabecalhoAtivo(True, FTabela);

  FTable.Close;
  FTable.Start;
  DBNavigator.DataSource.DataSet := FTable.SetTableToRecord(FTabela);
  DBNavigator.DataSource.DataSet.Open;
  DBNavigator.Enabled := (FTable.Count > 0);

  Excluir.Enabled := (FTable.Count >= 1);;
  Alterar.Enabled := False;
  Inserir.Enabled := False;
  Cancelar.Enabled := False;

  FEstado := erIniciar;

  if (FTable.Count > 0) then
    FTable.Next;

  if (FTable.Count > 0) then
    CarregarRegistros(FTable);

  FPosicaoRotina := psChave;
  IniciarCabecalhoChave(True);
end;

procedure TF000CAD.CancelarMouseActivate(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
  if (Button = mbLeft) and (FCancelar) then
    Cancelar.Click;
end;

procedure TF000CAD.CancelarMouseEnter(Sender: TObject);
begin
  FCancelar := True;
end;

procedure TF000CAD.CancelarMouseLeave(Sender: TObject);
begin
  FCancelar := False;
end;

procedure TF000CAD.CarregarCamposPadrao(const pComponente: TComponent; const pPos: Integer);

  procedure AlimentarCampos(const pValor: string);
  var
    i: Integer;
  begin
    if AnsiSameText(NomeCampo(pComponente), pValor) then
    begin
      i := Length(FCamposPadrao);
      Inc(i);
      SetLength(FCamposPadrao, i);
      FCamposPadrao[pred(i)].Nome := pValor;
      FCamposPadrao[pred(i)].Posicao := pPos;
      FCamposPadrao[pred(i)].Padrao := cpNenhum;

      if (pComponente.ClassType = THButtonedEdit) then
      begin
        FCamposPadrao[pred(i)].NomeTabela := THButtonedEdit(pComponente).DataBaseTable;
        THButtonedEdit(pComponente).Enabled := False
      end
      else
      if (pComponente.ClassType = THDateTimePicker) then
      begin
        FCamposPadrao[pred(i)].NomeTabela := THDateTimePicker(pComponente).DataBaseTable;
        THDateTimePicker(pComponente).Enabled := False;
      end;
    end;
  end;
begin
  AlimentarCampos('USU_DatGer');
  AlimentarCampos('USU_UsuGer');
  AlimentarCampos('USU_DatAlt');
  AlimentarCampos('USU_UsuAlt');
  AlimentarCampos('DatGer');
  AlimentarCampos('UsuGer');
  AlimentarCampos('DatAlt');
  AlimentarCampos('UsuAlt');
end;

procedure TF000CAD.CarregarCaseProperty(const pPosicao: Integer;
  pProperty: TRttiProperty; const pTable: TTable);
begin
  case pProperty.PropertyType.TypeKind of
    tkInteger:
      AdicionarParaComponente(pPosicao, IntToStr(pProperty.GetValue(pTable).AsInteger));

    tkFloat:
      if (AnsiSameText('TDate', pProperty.PropertyType.Name)) then
        AdicionarParaComponente(pPosicao, DateToStr(DataNull(FloatToDateTime(pProperty.GetValue(pTable).AsExtended))))
      else
        AdicionarParaComponente(pPosicao, FormatFloat('#,0.00', pProperty.GetValue(pTable).AsExtended));

    tkWChar, tkChar:
    begin
      if (Length(pProperty.GetValue(pTable).AsString) > 0) then
        AdicionarParaComponente(pPosicao, StrToChar(pProperty.GetValue(pTable).AsString))
      else
        AdicionarParaComponente(pPosicao, '');
    end;
  else
    AdicionarParaComponente(pPosicao, pProperty.GetValue(pTable).AsString);
  end;
end;

procedure TF000CAD.CarregarRegistros(const pTable: TTable);
var
  i: Integer;
  xType: TRttiType;
  xProperty: TRttiProperty;
  xContext: TRttiContext;
begin
  xType := xContext.GetType(pTable.ClassType);

  for i := 0 to High(FCamposGerais) do
  begin
    for xProperty in xType.GetProperties do
    begin
      if AnsiSameText(UpperCase(xProperty.Name), UpperCase(FCamposGerais[i].Nome)) then
      begin
        CarregarCaseProperty(FCamposGerais[i].Posicao, xProperty, pTable);

        Break;
      end;
    end;
  end;
end;

procedure TF000CAD.CarregarRelacionamentos;
var
  xQuery: THQuery;
  i: Integer;
begin
  FillChar(FRelacionamentos, sizeOf(FRelacionamentos), 0);

  xQuery := THQuery.CreatePersonalizado();
  try
    xQuery.Command := 'SELECT R998RFL.RELNAM, R998RFL.FORFLD, R998RFL.REFFLD '+
                        'FROM '+
                        'R998RFL, R998REL WHERE '+
                        'R998REL.FORTBL = :TABELA AND '+
                        'R998RFL.RELNAM = R998REL.RELNAM ';

    xQuery.ParamByName('TABELA').Value := FTabela;
    xQuery.Open();
    while not(xQuery.Eof) do
    begin
      i := Length(FRelacionamentos);
      Inc(i);
      SetLength(FRelacionamentos, i);
      FRelacionamentos[pred(i)].Chave := xQuery.FindField('RELNAM').AsString;
      FRelacionamentos[pred(i)].Relacionado := xQuery.FindField('FORFLD').AsString; //tabela pai
      FRelacionamentos[pred(i)].Referenciado := xQuery.FindField('REFFLD').AsString; //ligada

      xQuery.Next;
    end;
  finally
    FreeAndNil(xQuery);
  end;
end;

procedure TF000CAD.CarregarValoresCamposPadrao(const pValor: tEstadoRotina);
var
  i: Integer;
  xType: TRttiType;
  xProperty: TRttiProperty;
  xContext: TRttiContext;
begin
  FPosicaoRotina := psPadrao;
  xType := xContext.GetType(ClassePorComponente(Self.Components[Screen.ActiveControl.ComponentIndex]).ClassType);

  for i := 0 to High(FCamposPadrao) do
  begin
    for xProperty in xType.GetProperties do
    begin
      if AnsiSameText(FCamposPadrao[i].Nome, xProperty.Name)  then
      begin
        case (pValor) of
          erInserir:
          begin
            if (AnsiSameText('USU_DatGer', xProperty.Name)) then
            begin
              FCamposPadrao[i].Padrao := cpGeracao;
              THDateTimePicker(Self.Components[FCamposPadrao[i].Posicao]).DateTime := Date
            end;

            if (AnsiSameText('USU_UsuGer', xProperty.Name)) then
            begin
              FCamposPadrao[i].Padrao := cpGeracao;
              THButtonedEdit(Self.Components[FCamposPadrao[i].Posicao]).Text := IntToStr(FLogUsu);
            end;

            if (AnsiSameText('DatGer', xProperty.Name)) then
            begin
              FCamposPadrao[i].Padrao := cpGeracao;
              THDateTimePicker(Self.Components[FCamposPadrao[i].Posicao]).DateTime := Date;
            end;

            if (AnsiSameText('UsuGer', xProperty.Name)) then
            begin
              FCamposPadrao[i].Padrao := cpGeracao;
              THButtonedEdit(Self.Components[FCamposPadrao[i].Posicao]).Text := IntToStr(FLogUsu);
            end;
          end;

          erAtualizar:
          begin
            if (AnsiSameText('DatAlt', xProperty.Name)) then
            begin
              FCamposPadrao[i].Padrao := cpAlteracao;
              THDateTimePicker(Self.Components[FCamposPadrao[i].Posicao]).DateTime := Date;
            end;

            if (AnsiSameText('UsuAlt', xProperty.Name)) then
            begin
              FCamposPadrao[i].Padrao := cpAlteracao;
              THButtonedEdit(Self.Components[FCamposPadrao[i].Posicao]).Text := IntToStr(FLogUsu);
            end;

            if (AnsiSameText('USU_DatAlt', xProperty.Name)) then
            begin
              FCamposPadrao[i].Padrao := cpAlteracao;
              THDateTimePicker(Self.Components[FCamposPadrao[i].Posicao]).DateTime := Date;
            end;

            if (AnsiSameText('USU_UsuAlt', xProperty.Name)) then
            begin
              FCamposPadrao[i].Padrao := cpAlteracao;
              THButtonedEdit(Self.Components[FCamposPadrao[i].Posicao]).Text := IntToStr(FLogUsu);
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TF000CAD.DBNavigatorClick(Sender: TObject; Button: TNavigateBtn);
begin
  FEstado := erNavegar;
  FTable.AtribuirValoresSelect;

  CarregarRegistros(FTable);
  IniciarCabecalhoChave();
  FEstado := erIniciar;
end;

procedure TF000CAD.ExcluirClick(Sender: TObject);
begin
  StartTransaction;
  try
    if (CMessage('Deseja realmente excluir o registro?', mtConfirmationYesNo)) then
    begin
      FTable.Start;
      FTable.PropertyForSelect(FCamposSelect, True);
      FTable.Execute(estDelete);

      Commit;
      Cancelar.Click;
    end
    else
      Cancelar.Click;
  except
    on E: Exception do
    begin
      CMessage('Erro ao excluir o registro!', mtErrorInform, True, e.Message);
      RollBack;
    end;
  end;
end;

procedure TF000CAD.ExitButton(Sender: TObject);
var
  x998FLD: T998FLD;
begin
  try
    if (THButtonedEdit(Sender).Required and not(THButtonedEdit(Sender).ButtonClicked)) and not(FEstado = erCancelar) then
      if (IsNull(THButtonedEdit(Sender).Text) or (AnsiSameText(THButtonedEdit(Sender).Text, '0'))) then
      begin
        x998FLD := T998FLD.Create;
        try
          x998FLD.TblNam := THButtonedEdit(Sender).Table;
          x998FLD.FldNam := THButtonedEdit(Sender).Field;
          x998FLD.PropertyForSelect(['TBLNAM', 'FLDNAM'], True);

          if (x998FLD.Execute(etSelect, esNormal)) then
            CMessage(Format('Campo "%s" com valor inválido ou vazio!', [x998FLD.LgnTit]), mtExceptError);
        finally
          FreeAndNil(x998FLD);
        end;
      end;

    THButtonedEdit(Sender).ExitButton(Sender);
  except
    on E: THMessage do
    begin
      THButtonedEdit(Sender).SetFocus;
    end;
  end;
end;

procedure TF000CAD.FormCreate(Sender: TObject);
begin
  FUltimoComponente := EmptyStr;
  FButtonEdit := EmptyStr;
end;

procedure TF000CAD.FormMouseActivate(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
  if ((Button = mbLeft)  and (FSair)) then
    Close;

  if Assigned(ActiveControl) and  not(IsNull(FButtonEdit)) and
    ((AnsiSameText(FButtonEdit, ActiveControl.Name)) or (AnsiSameText(FUltimoComponente, ActiveControl.Name))) then
    THButtonedEdit(Self.FindComponent(FButtonEdit)).CheckEnum;
end;

procedure TF000CAD.GeralEnter(Sender: TObject);
begin
  CarregarValoresCamposPadrao(FEstado);
  FPosicaoRotina := psGeral;
  EnterFields();
end;

procedure TF000CAD.IniciarCabecalhoChave(const pFocus: Boolean = False);
var
  i: Integer;
  xProperty: TRttiProperty;
  xContext: TRttiContext;
begin
  for i := 0 to High(FCamposChave) do
  begin
    xProperty := xContext.GetType(FTable.ClassType).GetProperty(FCamposChave[i].Nome);
    CarregarCaseProperty(FCamposChave[i].Posicao, xProperty, FTable);

    if (pFocus) then
      if (THButtonedEdit(Self.Components[FCamposChave[i].Posicao]).TabOrder = 0) then
      begin
        THButtonedEdit(Self.Components[FCamposChave[i].Posicao]).SelectAll;
        THButtonedEdit(Self.Components[FCamposChave[i].Posicao]).SetFocus;
      end;
  end;
end;

procedure TF000CAD.InserirClick(Sender: TObject);
begin
  StartTransaction;
  try
    if (FEstado = erInserir) then
    begin
      FTable.Start;
      FTable.Execute(estInsert);
    end;

    Commit;
    TIterador.Repassar(FTable, FOldValues);
    Cancelar.Click;

    DBNavigator.DataSource.DataSet.Last;
  except
    on E: Exception do
    begin
      CMessage('Erro ao inserir o registro!', mtErrorInform, True, e.Message);
      RollBack;
    end;
  end;
end;

procedure TF000CAD.LimparComponentes(const pPos: Integer; const pTable: TTable; const pPertmiteRequired: Boolean = False);
var
  xType: TRttiType;
  xProperty: TRttiProperty;
  xContext: TRttiContext;
  xLimpar: Boolean;

  procedure Limpar(const pType: TTypeKind);
  begin
    if (Self.Components[pPos].ClassType = THButtonedEdit) then
      THButtonedEdit(Self.Components[pPos]).Text := iff(pType in [tkInteger, tkFloat], '0', EmptyStr)
    else
    if (Self.Components[pPos].ClassType = THMemo) then
      THMemo(Self.Components[pPos]).Lines.Clear
  end;
begin
  xLimpar := True;

  if ((Self.Components[pPos].ClassType = THMemo) or (Self.Components[pPos].ClassType = THDateTimePicker) or
        (Self.Components[pPos].ClassType = THButtonedEdit)) then
  begin
    if Self.Components[pPos].ClassType = THButtonedEdit then
      if THButtonedEdit(Self.Components[pPos]).Required then
        if (pPertmiteRequired) then
          xLimpar := False;

    if (xLimpar) then
    begin
      xType := xContext.GetType(pTable.ClassType);

      for xProperty in xType.GetProperties do
      begin
        if (AnsiSameText(xProperty.Name, NomeCampo(Self.Components[pPos]))) then
        begin
          Limpar(xProperty.PropertyType.TypeKind);

          if (AnsiSameText('TDate', xProperty.PropertyType.Name)) then
            THDateTimePicker(Self.Components[pPos]).DateTime := Date;

          Break;
        end;
      end;
    end;
  end;
end;

procedure TF000CAD.LookupClick(Sender: TObject; const pObjectName: string);
begin
  FUltimoComponente := pObjectName;
  FButtonEdit := THButtonedEdit(Sender).Name;
end;

function TF000CAD.NomeCampo(const pComp: TComponent): string;
begin
  Result := EmptyStr;

  if (pComp.ClassType = THButtonedEdit) then
    Result := THButtonedEdit(pComp).DatabaseField
  else
  if (pComp.ClassType = THDateTimePicker) then
    Result := THDateTimePicker(pComp).DatabaseField
  else
  if (pComp.ClassType = THMemo) then
    Result := THMemo(pComp).DatabaseField;
end;

function TF000CAD.NomeClasse: string;
begin
  Result := FTabela;
end;

function TF000CAD.OldValues: TTable;
begin
  Result := FOldValues;
end;

procedure TF000CAD.SairClick(Sender: TObject);
begin
  Close;
end;

procedure TF000CAD.SairMouseEnter(Sender: TObject);
begin
  FSair := True;
end;

procedure TF000CAD.SairMouseLeave(Sender: TObject);
begin
  FSair := False;
end;

function TF000CAD.State: tEstadoRotina;
begin
  Result := FEstado;
end;

function TF000CAD.Table: TTable;
begin
  Result := FTable;
end;

function TF000CAD.ClassePorComponente(const pComp: TComponent): TTable;
var
  xTable: string;
begin
  Result := FTable;

  if (pComp.ClassType = THButtonedEdit) then
    xTable := THButtonedEdit(pComp).DataBaseTable
  else
  if (pComp.ClassType = THDateTimePicker) then
    xTable := THDateTimePicker(pComp).DataBaseTable
  else
  if (pComp.ClassType = THMemo) then
    xTable := THMemo(pComp).DataBaseTable;

  if AnsiSameText(xTable, FTabela) then
    Result := FTable;
end;

procedure TF000CAD.ValidarCamposChave(const pGrid: TDataSetGrid);
var
  i,j: Integer;
  xType: TRttiType;
  xProperty: TRttiProperty;
  xContext: TRttiContext;
begin
  xType := xContext.GetType(FTable.ClassType);

  for i := 0 to High(FCamposSelect) do
  begin
    for xProperty in xType.GetProperties do
    begin
      if (AnsiSameText(xProperty.Name, FCamposSelect[i])) then
      begin
        for j := 0 to pred(Self.ComponentCount) do
        begin
          if (AnsiSameText(xProperty.Name, NomeCampo(Self.Components[j]))) then
            if (Self.Components[j].ClassType = THButtonedEdit) then
            begin
              case xProperty.PropertyType.TypeKind of
                tkInteger:
                begin
                  xProperty.SetValue(FTable, TValue.FromVariant(pGrid.Selected(xProperty.Name)).AsInteger);
                  THButtonedEdit(Self.Components[j]).Text := IntToStr(xProperty.GetValue(FTable).AsInteger);
                end;

                tkFloat:
                  if (AnsiSameText('TDate', xProperty.PropertyType.Name)) then
                  begin
                    xProperty.SetValue(FTable, TValue.FromVariant(pGrid.Selected(xProperty.Name)).AsExtended);
                    THButtonedEdit(Self.Components[j]).Text := DateToStr(DataNull(FloatToDateTime(xProperty.GetValue(FTable).AsExtended)));
                  end
                  else
                  begin
                    xProperty.SetValue(FTable, TValue.FromVariant(pGrid.Selected(xProperty.Name)).AsExtended);
                    THButtonedEdit(Self.Components[j]).Text := FormatFloat('#,0.00', xProperty.GetValue(FTable).AsExtended);
                  end;

                tkWChar, tkChar:
                begin
                  if (Length(xProperty.GetValue(FTable).AsString) > 0) then
                  begin
                    xProperty.SetValue(FTable, TValue.FromVariant(pGrid.Selected(xProperty.Name)).AsString[1]);
                    THButtonedEdit(Self.Components[j]).Text := StrToChar(xProperty.GetValue(FTable).AsString[1]);
                  end
                  else
                    THButtonedEdit(Self.Components[j]).Text := EmptyStr;
                end;
              else
                xProperty.SetValue(FTable, StringReplace(TValue.FromVariant(pGrid.Selected(xProperty.Name)).AsString, Chr(39), '', [rfReplaceAll]));
                THButtonedEdit(Self.Components[j]).Text := xProperty.GetValue(FTable).AsString;
              end;

              Break;
            end;
        end;

        Break;
      end;
    end;
  end;

  CabecalhoExit(Self);
end;

procedure TF000CAD.VerificarCampos;
var
  i,j,y: Integer;
  xContador: Integer;
  x998FLD: T998FLD;
begin
  y := Length(FCamposChave);
  xContador := 0;
  i := 0;

  if (y > 0) then
  try
    for i := 0 to pred(Self.ComponentCount) do
    begin
      for j := 0 to High(FCamposChave) do
      begin
        if (AnsiSameText(FCamposChave[j].Nome, NomeCampo(Self.Components[i]))) then
        begin
          Inc(xContador);

          if (IsNull(THButtonedEdit(Self.Components[i]).Text) or (AnsiSameText(THButtonedEdit(Self.Components[i]).Text, '0'))) then
          begin
            x998FLD := T998FLD.Create;
            try
              x998FLD.TblNam := THButtonedEdit(Self.Components[i]).Table;
              x998FLD.FldNam := THButtonedEdit(Self.Components[i]).Field;
              x998FLD.PropertyForSelect(['TBLNAM', 'FLDNAM'], True);

              if (x998FLD.Execute(etSelect, esNormal)) then
                CMessage(Format('Campo "%s" com valor inválido ou vazio!', [x998FLD.LgnTit]), mtExceptError);
            finally
              FreeAndNil(x998FLD);
            end;
          end;
        end;
      end;

      if (xContador = y) then
        Break;
    end;
  except
    on E: THMessage do
    begin
      THButtonedEdit(Self.Components[i]).SetFocus;
      raise;
    end;
  end;
end;

end.
