unit u000cad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.DBCtrls, oButtonedEdit, Datasnap.DBClient, Data.DB, oBase, oDataSetGrid,
  oDateTimePicker, oMensagem, System.Rtti, System.TypInfo, oMemo, oPanel;

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
    Panel1: TPanel;
    Botoes: TPanel;
    Excluir: TButton;
    Alterar: TButton;
    Inserir: TButton;
    Cancelar: TButton;
    Sair: TButton;
    Panel4: TPanel;
    PGControl: TPageControl;
    DBNavigator: TDBNavigator;
    Cabecalho: THPanel;

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
    procedure PGControlEnter(Sender: TObject);
    procedure BotoesEnter(Sender: TObject);
    procedure CancelarMouseEnter(Sender: TObject);
    procedure CancelarMouseLeave(Sender: TObject);
    procedure CancelarMouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    procedure AlterarClick(Sender: TObject);
    procedure ExcluirClick(Sender: TObject);
    procedure CabecalhoEnter(Sender: TObject);
    procedure PGControlChanging(Sender: TObject; var AllowChange: Boolean);
    procedure PGControlChange(Sender: TObject);
  private
    { Private declarations }
    FCamposSelect: array of string;
    FCamposChave: array of TRegistrosChave;
    FCamposGerais: array of TRegistrosChave;
    FCamposPadrao: array of TRegistrosChave;
    FTabelasExtras: array of TTabelasExtras;
    FRelacionamentos: array of TRelacionamentos;

    FTable: TTable;
    FTabela: string;
    FEstado: tEstadoRotina;
    FEstadoTabelasExtras: tEstadoRotina;
    FSair: Boolean;
    FCancelar: Boolean;
    FIndexPage: Integer;
    FPosicaoRotina: tPosicao;

    procedure IniciarCabecalhoChave(const pFocus: Boolean = False);
    procedure VerificarCampos();
    procedure CarregarTabelasExtras(const pTabela: TTable = nil);
    procedure AoAlterar(Sender: TObject);
    procedure CarregarRelacionamentos();
    procedure RelacionarTabelas(const pTable: TTabelasExtras);
    procedure LimparComponentes(const pPos: Integer; const pTable: TTable; const pPertmiteRequired: Boolean = False);
    procedure CabecalhoAtivo(const pEnable: Boolean; const pTabela: string);
    procedure CarregarRegistros(const pTable: TTable);
    procedure CarregarCaseProperty(const pPosicao: Integer; pProperty: TRttiProperty; const pTable: TTable);
    procedure AdicionarParaComponente(const pPosicao: Integer; const pValor: string);
    procedure CarregarValoresCamposPadrao(const pValor: tEstadoRotina);
    procedure CarregarCamposPadrao(const pComponente: TComponent; const pPos: Integer);
    procedure CarregarTabelas(const pTabelasLigadas: array of string; const pClassesLigadas: array of string);

    function ClassePorComponente(const pComp: TComponent): TTable;
    function NomeCampo(const pComp: TComponent): string;
  public
    { Public declarations }

    function NomeClasse: string;
    function State: tEstadoRotina;
    procedure ValidarCamposChave(const pGrid: TDataSetGrid);
    procedure Registrar(const pClasse: string; const pTabela: string;
      const pClassesLigadas: array of string; const pTabelasLigadas: array of string); virtual;
  end;

var
  F000CAD: TF000CAD;

implementation

uses
  o998fld, oTabelas, oQuery;

{$R *.dfm}

procedure TF000CAD.Registrar(const pClasse: string; const pTabela: string; const pClassesLigadas: array of string;
  const pTabelasLigadas: array of string);
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

  PGControl.ActivePageIndex := 0;
  if (FLogUsu = 0) then
    FLogUsu := 257; //sapiensweb

  FillChar(FCamposChave, sizeOf(FCamposChave), 0);
  FillChar(FCamposSelect, sizeOf(FCamposSelect), 0);
  FillChar(FCamposGerais, sizeOf(FCamposGerais), 0);
  FillChar(FCamposPadrao, sizeOf(FCamposPadrao), 0);

  xClass := GetClass(pClasse);
  FTable := (xClass.Create) as TTable;
  FTable.Init(FTabela);

  DBNavigator.DataSource := TDataSource.Create(nil);
  DBNavigator.DataSource.DataSet := FTable.SetTableToRecord(FTabela);
  DBNavigator.DataSource.DataSet.Open;
  DBNavigator.Enabled := (FTable.Count > 0);
  FEstado := erIniciar;
  FEstadoTabelasExtras := erIniciar;

  if (FTable.Count > 0) then
    FTable.Next;

  Inserir.Enabled := False;
  Alterar.Enabled := False;
  Cancelar.Enabled := False;
  Excluir.Enabled := True;

  CarregarRelacionamentos();
  CarregarTabelas(pTabelasLigadas, pClassesLigadas);

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

        if not(AnsiSameText(THButtonedEdit(Self.Components[i]).Table, pTabela)) then
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
        THButtonedEdit(Self.Components[i]).OnChange := AoAlterar;

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
  CarregarTabelasExtras;
  FPosicaoRotina := psChave;
end;

procedure TF000CAD.RelacionarTabelas(const pTable: TTabelasExtras);
var
  i,j: Integer;
  xType: TRttiType;
  xProperty: TRttiProperty;
  xContext: TRttiContext;
  xTypeRef: TRttiType;
  xPropertyRef: TRttiProperty;
begin
  xType := xContext.GetType(FTable.ClassType);

  for xProperty in xType.GetProperties do
  begin
    for i := 0 to High(FCamposGerais) do
    begin
      //Quando o campo é o mesmo nas duas tabelas.
      if (FCamposGerais[i].Required) and AnsiSameText(FCamposGerais[i].Nome, xProperty.Name) then
      begin
        xTypeRef := xContext.GetType(pTable.Table.ClassType);
        xPropertyRef := xTypeRef.GetProperty(xProperty.Name);

        xProperty.SetValue(FTable, xPropertyRef.GetValue(pTable.Table));
      end;
    end;

    for j := 0 to High(FRelacionamentos) do
    begin
      if (AnsiSameText(FRelacionamentos[j].Relacionado, xProperty.Name)) then
      begin
        xTypeRef := xContext.GetType(pTable.Table.ClassType);
        xPropertyRef := xTypeRef.GetProperty(FRelacionamentos[j].Referenciado);

        xProperty.SetValue(FTable, xPropertyRef.GetValue(pTable.Table));
      end;
    end;
  end;
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
  i: Integer;
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
    if AnsiSameText(PGControl.ActivePage.Name, FTabela) then
      if (Length(xArray) > 0) then
      begin
        FTable.PropertyForSelect(FCamposSelect, True);
        FTable.FieldsForUpdate(xArray);
        FTable.Execute(estUpdate);
      end;

    for i := 0 to High(FTabelasExtras) do
    begin
      if AnsiSameText(PGControl.ActivePage.Name, FTabelasExtras[i].Nome) then
      begin
        FTabelasExtras[i].Table.Start;
        MontaUpdate(FTabelasExtras[i].Nome);

        if (Length(xArray) > 0) then
        begin
          FTabelasExtras[i].Table.PropertyForSelect(FTabelasExtras[i].ChaveSelecao, True);
          FTabelasExtras[i].Table.FieldsForUpdate(xArray);
          FTabelasExtras[i].Table.Execute(estUpdate);
        end;
      end;
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

  procedure MontaAltear(const pArray: array of TRegistrosChave; const pBreak: Boolean = False);
  var
    i: Integer;
    xProperty: TRttiProperty;
    xNome: string;
  begin
    for i := 0 to High(pArray) do
    begin
      for xProperty in xType.GetProperties do
      begin
        xNome := xType.Name + '_' + UpperCase(pArray[i].Nome);

        if (AnsiSameText(UpperCase(xProperty.Name), UpperCase(pArray[i].Nome)) and
           (AnsisameText(xNome, UpperCase(TComponent(Sender).Name)) or
           (xPadrao and (pArray[i].Padrao = cpAlteracao)))) then
        begin
          xField := xType.GetProperty('OLD_'+ xProperty.Name);

          xComponente := THButtonedEdit(Self.Components[pArray[i].Posicao]);

          if (FPosicaoRotina = psChave) then
            FCamposChave[i].Edicao := True;

          case xField.PropertyType.TypeKind of
            tkInteger:
            begin
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

    if (FPosicaoRotina = psGeral) then
      MontaAltear(FCamposGerais, True);

    xPadrao := True;
    if (FPosicaoRotina = psPadrao) then
      MontaAltear(FCamposPadrao, True);
  end;
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

procedure TF000CAD.CabecalhoEnter(Sender: TObject);
begin
  FEstadoTabelasExtras := erSelecao;
end;

procedure TF000CAD.CabecalhoExit(Sender: TObject);
var
  i,j: Integer;
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
          FEstadoTabelasExtras := erAtualizar;

          CabecalhoAtivo(False, FTabela);
          CarregarTabelasExtras();

          for i := 0 to pred(Self.ComponentCount) do
          begin
            if (Self.Components[i].ClassType = THButtonedEdit) then
              for j := 0 to High(FTabelasExtras) do
              begin
                if AnsiSameText(THButtonedEdit(Self.Components[i]).DataBaseTable, FTabelasExtras[j].Nome) and
                  (THButtonedEdit(Self.Components[i]).Required) and AnsiSameText(PGControl.ActivePage.Name, FTabelasExtras[j].Nome) then
                  THButtonedEdit(Self.Components[i]).SetFocus;
              end;
          end;
        end
        else
        begin
          FEstado := erInserir;
          FEstadoTabelasExtras := erInserir;

          Excluir.Enabled := False;
          Alterar.Enabled := False;
          Inserir.Enabled := True;

          CabecalhoAtivo(False, FTabela);

          for i := 0 to pred(Self.ComponentCount) do
          begin
            if (Self.Components[i].ClassType = THDateTimePicker) then
              THDateTimePicker(Self.Components[i]).DateTime := Date;
          end;

          for i := 0 to pred(Self.ComponentCount) do
          begin
            if (Self.Components[i].ClassType = THButtonedEdit) then
              for j := 0 to High(FTabelasExtras) do
              begin
                if AnsiSameText(THButtonedEdit(Self.Components[i]).DataBaseTable, FTabelasExtras[j].Nome) and
                  (THButtonedEdit(Self.Components[i]).Required) and AnsiSameText(PGControl.ActivePage.Name, FTabelasExtras[j].Nome) then
                begin
                  THButtonedEdit(Self.Components[i]).SetFocus;
                  Exit;
                end;
              end;
          end;
        end;
      end
      else
      begin
        for i := 0 to High(FTabelasExtras) do
        begin
          if AnsiSameText(THPanel(Sender).DataBaseTable, FTabelasExtras[i].Nome)  then
          begin
            if (Length(FTabelasExtras[i].ChaveSelecao) > 0) then
            begin
              FTabelasExtras[i].Table.PropertyForSelect(FTabelasExtras[i].ChaveSelecao, True);
              if (FTabelasExtras[i].Table.Execute(etSelect)) then
              begin
                Inserir.Enabled := False;
                Alterar.Enabled := True;

                CarregarRegistros(FTabelasExtras[i].Table);
                FTabelasExtras[i].State := erAtualizar;
                RelacionarTabelas(FTabelasExtras[i]);
              end
              else
              begin
                Excluir.Enabled := False;
                Alterar.Enabled := False;
                Inserir.Enabled := True;
                FEstadoTabelasExtras := erInserir;
                FTabelasExtras[i].State := erInserir;

                for j := 0 to pred(Self.ComponentCount) do
                  LimparComponentes(j, FTabelasExtras[i].Table, True);
              end;

              CabecalhoAtivo(False, FTabelasExtras[i].Nome);
            end;
          end;
        end;
      end;
    end;
  except
  end;
end;

procedure TF000CAD.CancelarClick(Sender: TObject);
var
  i,j: Integer;
begin
  PGControl.ActivePageIndex := 0;
  FEstado := erCancelar;
  FEstadoTabelasExtras := erCancelar;

  FSair := False;
  FCancelar := False;

  for i := 0 to pred(Self.ComponentCount) do
    LimparComponentes(i, FTable);

  for i := 0 to High(FTabelasExtras) do
  begin
    for j := 0 to pred(Self.ComponentCount) do
      LimparComponentes(j, FTabelasExtras[i].Table);

    CabecalhoAtivo(True, FTabelasExtras[i].Nome);
  end;

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
  FEstadoTabelasExtras := erIniciar;

  if (FTable.Count > 0) then
    FTable.Next;

  if (FTable.Count > 0) then
  begin
    CarregarRegistros(FTable);
    CarregarTabelasExtras();
  end;

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

procedure TF000CAD.CarregarTabelas(const pTabelasLigadas: array of string; const pClassesLigadas: array of string);
var
  xClass: TPersistentClass;
  xQuery: THQuery;
  i,j,k: Integer;

  procedure MontaSelecao(const pCampo: string);
  var
    xCont: Integer;
  begin
    xCont := Length(FTabelasExtras[pred(j)].ChaveSelecao);
    Inc(xCont);
    SetLength(FTabelasExtras[pred(j)].ChaveSelecao, xCont);
    FTabelasExtras[pred(j)].ChaveSelecao[pred(xCont)] := pCampo;
  end;

begin
  FillChar(FTabelasExtras, sizeOf(FTabelasExtras), 0);
  xQuery := THQuery.CreatePersonalizado();
  try
    xQuery.Command := 'SELECT R998REL.RELNAM '+
                          'FROM '+
                          'R998REL WHERE '+
                            'R998REL.REFTBL = :TABELA ';

    for i := 0 to High(pTabelasLigadas) do
    begin
      j := Length(FTabelasExtras);
      Inc(j);
      SetLength(FTabelasExtras, j);
      FTabelasExtras[pred(j)].Nome := pTabelasLigadas[i];

      xClass := GetClass(pClassesLigadas[i]);
      FTabelasExtras[pred(j)].Table := (xClass.Create) as TTable;
      FTabelasExtras[pred(j)].Table.Init(FTabelasExtras[pred(j)].Nome);

      for k := 0 to pred(Self.ComponentCount) do
      begin
        if (Self.Components[k].ClassType = THButtonedEdit) and
           (THButtonedEdit(Self.Components[k]).Required) and
           AnsiSameText(THButtonedEdit(Self.Components[k]).DataBaseTable, FTabelasExtras[pred(j)].Nome) then
          MontaSelecao(THButtonedEdit(Self.Components[k]).DataBaseField);
      end;

      xQuery.ParamByName('TABELA').Value := FTabelasExtras[pred(j)].Nome;
      xQuery.Open();
      if not(xQuery.Eof) then
        FTabelasExtras[pred(j)].IR := xQuery.FindField('RELNAM').AsString;

      xQuery.Close;
    end;
  finally
    FreeAndNil(xQuery);
  end;
end;

procedure TF000CAD.CarregarTabelasExtras(const pTabela: TTable = nil);
var
  i,j,y: Integer;
  xProperty: TRttiProperty;
  xPropExtra: TRttiProperty;
  xContext: TRttiContext;
  xNulo: Boolean;
  xChave: array of string;

  procedure MontarChave(const pCampo: string);
  var
    i: Integer;
  begin
    i := Length(xChave);
    Inc(i);
    SetLength(xChave, i);

    xChave[pred(i)] := pCampo;
  end;

  procedure SelecionarTabela(const pTabela: TTable);
  begin
    FPosicaoRotina := psGeral;

    if (Length(xChave) > 0) then
    begin
      pTabela.PropertyForSelect(xChave, True);
      if (pTabela.Execute(etSelect)) then
        CarregarRegistros(pTabela);
    end;
  end;

begin
  xNulo := False;

  if Assigned(pTabela) then
  begin
    for i := 0 to High(FTabelasExtras) do
    begin
      FillChar(xChave, sizeOf(xChave), 0);

      if (FTabelasExtras[i].Table.ClassType = pTabela.ClassType) then
      begin
        for j := 0 to High(FRelacionamentos) do
        begin
          if (AnsiSameText(FRelacionamentos[j].Chave, FTabelasExtras[i].IR)) then
          begin
            for y := 0 to High(FCamposGerais) do
            begin
              if (AnsiSameText(FCamposGerais[y].Nome, FRelacionamentos[j].Referenciado) and
                FCamposGerais[y].Required and (AnsiSameText(FTabelasExtras[i].Nome, FCamposGerais[y].NomeTabela))) then
              begin
                xProperty := xContext.GetType(FTabelasExtras[i].Table.ClassType).GetProperty(FRelacionamentos[j].Referenciado);

                case xProperty.PropertyType.TypeKind of
                  tkInteger:
                    xNulo := (xProperty.GetValue(pTabela).AsInteger > 0);

                  tkFloat:
                    if not(AnsiSameText('TDate', xProperty.PropertyType.Name)) then
                      xNulo := (xProperty.GetValue(pTabela).AsExtended > 0);

                  tkWChar, tkChar:
                    xNulo := (IsNull(xProperty.GetValue(pTabela).AsString));
                else
                  xNulo := (IsNull(xProperty.GetValue(pTabela).AsString));
                end;

                if (xNulo) then
                  Exit;

                MontarChave(xProperty.Name);
              end;
            end;
           end;
        end;
      end;

      SelecionarTabela(FTabelasExtras[i].Table);
    end;
  end
  else
  begin
    for i := 0 to High(FTabelasExtras) do
    begin
      FillChar(xChave, sizeOf(xChave), 0);

      for j := 0 to High(FRelacionamentos) do
      begin
        if (AnsiSameText(FRelacionamentos[j].Chave, FTabelasExtras[i].IR)) then
        begin
          for y := 0 to High(FCamposGerais) do
          begin
            if (FCamposGerais[y].Required and (AnsiSameText(FTabelasExtras[i].Nome, FCamposGerais[y].NomeTabela))) then
            begin
              xProperty := xContext.GetType(FTable.ClassType).GetProperty(FRelacionamentos[j].Relacionado);
              xPropExtra := xContext.GetType(FTabelasExtras[i].Table.ClassType).GetProperty(FRelacionamentos[j].Referenciado);

              xPropExtra.SetValue(FTabelasExtras[i].Table, xProperty.GetValue(FTable));
              MontarChave(xPropExtra.Name);
            end;
          end;
        end;
      end;

      SelecionarTabela(FTabelasExtras[i].Table);
    end;
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
  FEstado := erIniciar;
end;

procedure TF000CAD.ExcluirClick(Sender: TObject);
var
  i: Integer;
begin
  StartTransaction;
  try
    if (CMessage('Deseja realmente excluir o registro?', mtConfirmationYesNo)) then
    begin
      for i := 0 to High(FTabelasExtras) do
      begin
        if AnsiSameText(PGControl.ActivePage.Name, FTabelasExtras[i].Nome) then
        begin
          FTabelasExtras[i].Table.Start;
          FTabelasExtras[i].Table.PropertyForSelect(FTabelasExtras[i].ChaveSelecao, True);
          FTabelasExtras[i].Table.Execute(estDelete);
        end;
      end;

      if AnsiSameText(PGControl.ActivePage.Name, FTabela) then
      begin
        FTable.Start;
        FTable.PropertyForSelect(FCamposSelect, True);
        FTable.Execute(estDelete);
      end;

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

procedure TF000CAD.FormMouseActivate(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
  if ((Button = mbLeft)  and (FSair)) then
    Close;
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
        THButtonedEdit(Self.Components[FCamposChave[i].Posicao]).SetFocus;
  end;
end;

procedure TF000CAD.InserirClick(Sender: TObject);
var
  i: Integer;
begin
  StartTransaction;
  try
    for i := 0 to High(FTabelasExtras) do
    begin
      if (FTabelasExtras[i].State = erInserir) then
      begin
        FTabelasExtras[i].Table.Start;
        FTabelasExtras[i].Table.Execute(estInsert);
      end;
    end;

    if (FEstado = erInserir) and
      AnsiSameText(PGControl.ActivePage.Name, FTabela) then
    begin
      FTable.Start;
      FTable.Execute(estInsert);
    end;

    Commit;
    Cancelar.Click;
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

procedure TF000CAD.PGControlChange(Sender: TObject);
begin
  if AnsiSameText(PGControl.ActivePage.Name, FTabela) then
  begin
    Inserir.Enabled := (FEstado = erInserir);
    Cancelar.Enabled := not(FEstado = erInserir);
    DBNavigator.Enabled := False;
    Alterar.Enabled := not(FEstado = erInserir);
  end;
end;

procedure TF000CAD.PGControlChanging(Sender: TObject; var AllowChange: Boolean);
begin
             {
  for i := 0 to High(FTabelasExtras) do
  begin
    for j := 0 to High(FCamposGerais) do
    begin
      if AnsiSameText(FTabelasExtras[i].Nome, FCamposGerais[j].NomeTabela) and
        (FCamposGerais[j].Required) then
      begin
        xProperty := xContext.GetType(FTable.ClassType).GetProperty(FCamposGerais[j].Nome);

        case xProperty.PropertyType.TypeKind of
          tkInteger:
            xNulo := (xProperty.GetValue(FTable).AsInteger > 0);

          tkFloat:
            if not(AnsiSameText('TDate', xProperty.PropertyType.Name)) then
              xNulo := (xProperty.GetValue(FTable).AsExtended > 0);

          tkWChar, tkChar:
            xNulo := (IsNull(xProperty.GetValue(FTable).AsString));
        else
          xNulo := (IsNull(xProperty.GetValue(FTable).AsString));
        end;

        if (xNulo) then
        begin
          CMessage('Registro sem valor!', mtWarning);
          PGControl.ActivePageIndex := FIndexPage;
          THButtonedEdit(Self.Components[FCamposGerais[i].Posicao]).SetFocus;
        end;
      end;
    end;
  end;     }
end;

procedure TF000CAD.PGControlEnter(Sender: TObject);
begin
  CarregarValoresCamposPadrao(FEstado);
  FIndexPage := PGControl.ActivePageIndex;
  FPosicaoRotina := psGeral;
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

function TF000CAD.ClassePorComponente(const pComp: TComponent): TTable;
var
  xTable: string;
  i: Integer;
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
    Result := FTable
  else
  begin
    for i := 0 to High(FTabelasExtras) do
    begin
      if (AnsiSameText(FTabelasExtras[i].Nome, xTable)) then
      begin
        Result := FTabelasExtras[i].Table;
        Break;
      end;
    end;
  end;
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
