unit uGeradorClasse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  oButtonedEdit, oBase, oReader, oQuery, oDataSetGrid;

const
  CTAB = '  ';
  CTAB2 = '    ';

type
  TFGerCla = class(TForm)
    pnl1: TPanel;
    ENomObj: TEdit;
    BENomTab: THButtonedEdit;
    Label1: TLabel;
    Label2: TLabel;
    cbHeranca: TComboBox;
    Label3: TLabel;
    Executar: TButton;
    Label4: TLabel;
    BEDirFil: THButtonedEdit;
    ENomUni: TEdit;
    Label5: TLabel;
    Button1: TButton;
    Label6: TLabel;
    cbBase: TComboBox;
    Label7: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ExecutarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BENomTabExit(Sender: TObject);
  private
    FTextFile: TextFile;

    procedure MontarCabecalho();
    procedure MontaChaves();
  public
    { Public declarations }
  end;

var
  FGerCla: TFGerCla;

implementation

uses
  Data.DB, oMensagem;

{$R *.dfm}

procedure TFGerCla.BENomTabExit(Sender: TObject);
begin
  if (cbHeranca.ItemIndex = 0) then
  begin
    ENomObj.Text := UpperCase(Copy(BENomTab.Text, 5, Length(BENomTab.Text) -1));
    ENomUni.Text := LowerCase('o'+ Copy(BENomTab.Text, 6, Length(BENomTab.Text) -1));
  end
  else
  begin
    ENomObj.Text := UpperCase('T' + Copy(BENomTab.Text, 2, Length(BENomTab.Text) -1));
    ENomUni.Text := LowerCase('o'+ Copy(BENomTab.Text, 2, Length(BENomTab.Text) -1));
  end;
end;

procedure TFGerCla.Button1Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TFGerCla.ExecutarClick(Sender: TObject);
var
  xArquivo: string;
  xCampo: string;
  xQuery: THQuery;
  xBase: string;

  function MontarTipo(const pTipo: TFieldType): string;
  begin
    case (pTipo) of
      ftBCD, ftLargeint, ftInteger:
        Result := 'Integer';

      ftDateTime:
        Result := 'TDate';

      ftFloat:
        Result := 'Double';

      ftCurrency:
        Result := 'Currency';

      ftString:
      begin
        if (xQuery.FindField('LENFLD').AsInteger = 1) then
          Result := 'Char'
        else
          Result := 'string';
      end;
    end;
  end;

  procedure MontarVariaveis(const pTipo: TFieldType);
  begin
    Write(FTextFile, CTAB2 + 'F'+ xCampo + ': '+ MontarTipo(pTipo) + ';');
  end;

  procedure MontarVariaveisOLD(const pTipo: TFieldType);
  begin
    Write(FTextFile, CTAB2 + 'F'+ xCampo + 'OLD: '+ MontarTipo(pTipo) + ';');
  end;

  procedure GetAndSet(const pTipo: TFieldType);
  begin
    Write(FTextFile, CTAB2 + 'function Get'+ xCampo + ': '+ MontarTipo(pTipo) + ';');
    Writeln(FTextFile);
    Write(FTextFile, '');
    Write(FTextFile, CTAB2 + 'procedure Set'+ xCampo + '(const p'+ xCampo +': '+ MontarTipo(pTipo) + ');');
  end;

  procedure GetAndSetOLD(const pTipo: TFieldType);
  begin
    Write(FTextFile, CTAB2 + 'function Get'+ xCampo + 'Old: '+ MontarTipo(pTipo) + ';');
    Writeln(FTextFile);
    Write(FTextFile, '');
    Write(FTextFile, CTAB2 + 'procedure Set'+ xCampo + 'Old(const p'+ xCampo +': '+ MontarTipo(pTipo) + ');');
  end;

  procedure MontarDados(const pTipo: TFieldType);
  begin
    Write(FTextFile, 'function '+ ENomObj.Text +'.Get' + xCampo + ': '+ MontarTipo(pTipo) + ';');
    Writeln(FTextFile);
    Write(FTextFile, 'begin');
    Writeln(FTextFile);
    Write(FTextFile, CTAB + 'Result := F'+ xCampo + ';');
    Writeln(FTextFile);
    Write(FTextFile, 'end;');
    Writeln(FTextFile);
    Write(FTextFile, '');
    Writeln(FTextFile);

    Write(FTextFile, 'procedure '+ ENomObj.Text +'.Set'+ xCampo + '(const p'+ xCampo +': '+ MontarTipo(pTipo) + ');');
    Writeln(FTextFile);
    Write(FTextFile, 'begin');
    Writeln(FTextFile);
    Write(FTextFile, CTAB + 'F'+ xCampo + ' := p'+ xCampo + ';');
    Writeln(FTextFile);
    Write(FTextFile, '');
    Writeln(FTextFile);
    Write(FTextFile, CTAB + 'CheckField('''+ xCampo + ''');');
    Writeln(FTextFile);
    Write(FTextFile, 'end;');
    Writeln(FTextFile);
    Write(FTextFile, '');
    Writeln(FTextFile);
  end;

  procedure MontarDadosOLD(const pTipo: TFieldType);
  begin
    Write(FTextFile, 'function '+ ENomObj.Text +'.Get' + xCampo + 'OLD: '+ MontarTipo(pTipo) + ';');
    Writeln(FTextFile);
    Write(FTextFile, 'begin');
    Writeln(FTextFile);
    Write(FTextFile, CTAB + 'Result := F'+ xCampo + 'OLD;');
    Writeln(FTextFile);
    Write(FTextFile, 'end;');
    Writeln(FTextFile);
    Write(FTextFile, '');
    Writeln(FTextFile);

    Write(FTextFile, 'procedure '+ ENomObj.Text +'.Set'+ xCampo + 'OLD(const p'+ xCampo +': '+ MontarTipo(pTipo) + ');');
    Writeln(FTextFile);
    Write(FTextFile, 'begin');
    Writeln(FTextFile);
    Write(FTextFile, CTAB + 'F'+ xCampo + 'OLD := p'+ xCampo + ';');
    Writeln(FTextFile);
    Write(FTextFile, 'end;');
    Writeln(FTextFile);
    Write(FTextFile, '');
    Writeln(FTextFile);
  end;

  procedure MontarProPerty(const pTipo: TFieldType);
  begin
    Write(FTextFile, CTAB2 + 'property '+ xCampo + ': '+ MontarTipo(pTipo) + ' read Get'+ xCampo + ' write Set'+ xCampo + ';');
  end;

  procedure MontarProPertyOLD(const pTipo: TFieldType);
  begin
    Write(FTextFile, CTAB2 + 'property OLD_'+ xCampo + ': '+ MontarTipo(pTipo) + ' read Get'+ xCampo + 'OLD write Set'+ xCampo + 'OLD;');
  end;

begin
  try
    if (IsNull(ENomObj.Text)) then
      CMessage('É necessário informar o nome do Objeto para criar!', mtExceptError);

    if (IsNull(BENomTab.Text)) then
      CMessage('É necessário informar o nome da tabela do banco!', mtExceptError);

    if (IsNull(ENomUni.Text)) then
      CMessage('É necessário informar o nome da unit para criar!', mtExceptError);
  except
    Exit;
  end;

  case cbBase.ItemIndex of
    0: xBase := 'SENIOR52';
    1: xBase := 'SENIOR53';
    2: xBase := 'SENIOR54';
  end;

  FOracleConnection.Close;
  FOracleConnection.Conexao(xBase);

  BENomTab.Text := StringReplace(BENomTab.Text, Char(39), '', [rfReplaceAll]);
  try
    if (IsNull(BEDirFil.Text)) then
      xArquivo := 'C:\' + ENomUni.Text + '.pas'
    else
      xArquivo := BEDirFil.Text + '\' + ENomUni.Text + '.pas';

    AssignFile(FTextFile, xArquivo);
    if (FileExists(xArquivo)) then
      Rewrite(FTextFile)
    else
      Append(FTextFile);

    xQuery := THQuery.CreatePersonalizado();
    xQuery.Command := 'SELECT R998FLD.TBLNAM, R998FLD.FLDNAM, R998FLD.FLDORD,R998FLD.MSKFLD, '+
                             'R998FLD.DATTYP, R998FLD.ENUNAM, R998FLD.LENFLD, R998FLD.PREFLD, '+
                             'R998FLD.SHRTIT, R998FLD.LGNTIT, R998FLD.DESFLD, R998FLD.CANNUL, '+
                             'R998FLD.CODHLP, R998FLD.VALDEF, R998FLD.OWNMOD, R998FLD.FLDDEP, '+
                             'R998FLD.CODUSU, R998FLD.ORINAM, R998FLD.LASUPD, R998FLD.REQFLD, '+
                             'R998FLD.OBJSIS,ALL_TAB_COLUMNS.DATA_TYPE AS TYPE '+
                      'FROM R998FLD, ALL_TAB_COLUMNS '+
                      'WHERE '+
                        'UPPER(TABLE_NAME)= :TABELA AND '+
                        'OWNER = :BASE AND '+
                        'R998FLD.TBLNAM = TABLE_NAME AND '+
                        'UPPER(R998FLD.FLDNAM) = ALL_TAB_COLUMNS.COLUMN_NAME AND '+
                        'UPPER(R998FLD.FLDNAM) <> ''USU_ID'' '+
                      'ORDER BY '+
                        'FLDORD ';

    MontarCabecalho();
    xQuery.ParamByName('TABELA').Value := BENomTab.Text;
    xQuery.ParamByName('BASE').Value := FOracleConnection.BaseConexao;
    xQuery.Open;

    //VARIAVEIS
    xQuery.First;
    while not(xQuery.Eof) do
    begin
      xCampo := xQuery.FindField('FLDNAM').AsString;

      MontarVariaveis(FieldType(xQuery.FindField('TYPE').AsString, xQuery.FindField('MSKFLD').AsString,
                      xQuery.FindField('LENFLD').AsInteger));
      Writeln(FTextFile);
      xQuery.Next;
    end;

    Write(FTextFile, '');
    Writeln(FTextFile);

    //VARIAVEIS OLD
    xQuery.First;
    while not(xQuery.Eof) do
    begin
      xCampo := xQuery.FindField('FLDNAM').AsString;

      MontarVariaveisOLD(FieldType(xQuery.FindField('TYPE').AsString, xQuery.FindField('MSKFLD').AsString,
                      xQuery.FindField('LENFLD').AsInteger));
      Writeln(FTextFile);
      xQuery.Next;
    end;

    Write(FTextFile, '');
    Writeln(FTextFile);

    //GET E SETS
    xQuery.First;
    while not(xQuery.Eof) do
    begin
      xCampo := xQuery.FindField('FLDNAM').AsString;

      GetAndSet((FieldType(xQuery.FindField('TYPE').AsString, xQuery.FindField('MSKFLD').AsString,
                      xQuery.FindField('LENFLD').AsInteger)));

      Writeln(FTextFile);
      xQuery.Next;
    end;

    Write(FTextFile, '');
    Writeln(FTextFile);

    //GET E SETS OLD
    xQuery.First;
    while not(xQuery.Eof) do
    begin
      xCampo := xQuery.FindField('FLDNAM').AsString;

      GetAndSetOLD((FieldType(xQuery.FindField('TYPE').AsString, xQuery.FindField('MSKFLD').AsString,
                      xQuery.FindField('LENFLD').AsInteger)));

      Writeln(FTextFile);
      xQuery.Next;
    end;

    Write(FTextFile, CTAB + 'protected');
    Writeln(FTextFile);
    Write(FTextFile, CTAB2 + 'procedure Registros_OLD(); override;');
    Writeln(FTextFile);
    Write(FTextFile, CTAB2 + 'procedure RetornarValores(); override;');
    Writeln(FTextFile);

    Write(FTextFile, CTAB + 'public');
    Writeln(FTextFile);
    Write(FTextFile, CTAB2 + 'constructor Create();');
    Writeln(FTextFile);
    Write(FTextFile, CTAB2 + 'destructor Destroy(); override;');
    Writeln(FTextFile);
    Write(FTextFile, '');
    Writeln(FTextFile);

    //PROPRIEDADES
    xQuery.First;
    while not(xQuery.Eof) do
    begin
      xCampo := xQuery.FindField('FLDNAM').AsString;

      MontarProPerty(FieldType(xQuery.FindField('TYPE').AsString, xQuery.FindField('MSKFLD').AsString,
                      xQuery.FindField('LENFLD').AsInteger));

      Writeln(FTextFile);
      xQuery.Next;
    end;

    Write(FTextFile, '');
    Writeln(FTextFile);

    //PROPRIEDADES OLD
    xQuery.First;
    while not(xQuery.Eof) do
    begin
      xCampo := xQuery.FindField('FLDNAM').AsString;

      MontarProPertyOLD(FieldType(xQuery.FindField('TYPE').AsString, xQuery.FindField('MSKFLD').AsString,
                      xQuery.FindField('LENFLD').AsInteger));

      Writeln(FTextFile);
      xQuery.Next;
    end;

    Write(FTextFile, CTAB + 'end;');
    Writeln(FTextFile);
    Write(FTextFile, '');
    Writeln(FTextFile);
    Write(FTextFile, 'implementation');
    Writeln(FTextFile);
    Write(FTextFile, '');
    Writeln(FTextFile);
    Write(FTextFile, '{ '+ ENomObj.Text + ' }');
    Writeln(FTextFile);
    Write(FTextFile, '');
    Writeln(FTextFile);

    Write(FTextFile, 'constructor '+ ENomObj.Text + '.Create();');
    Writeln(FTextFile);
    Write(FTextFile, 'begin');
    Writeln(FTextFile);

    MontaChaves();

    Write(FTextFile, '');
    Writeln(FTextFile);
    Write(FTextFile, CTAB + 'inherited Create('''+ BENomTab.Text +''');');
    Writeln(FTextFile);
    Write(FTextFile, 'end;');
    Writeln(FTextFile);
    Write(FTextFile, '');
    Writeln(FTextFile);
    Write(FTextFile, 'destructor '+ ENomObj.Text + '.Destroy();');
    Writeln(FTextFile);
    Write(FTextFile, 'begin');
    Writeln(FTextFile);
    Write(FTextFile, CTAB + 'inherited;');
    Writeln(FTextFile);
    Write(FTextFile, 'end;');
    Writeln(FTextFile);
    Write(FTextFile, '');
    Writeln(FTextFile);

    //IMPLEMENTA
    xQuery.First;
    while not(xQuery.Eof) do
    begin
      xCampo := xQuery.FindField('FLDNAM').AsString;

      MontarDados(FieldType(xQuery.FindField('TYPE').AsString, xQuery.FindField('MSKFLD').AsString,
                      xQuery.FindField('LENFLD').AsInteger));
      xQuery.Next;
    end;

    xQuery.First;
    while not(xQuery.Eof) do
    begin
      xCampo := xQuery.FindField('FLDNAM').AsString;

      MontarDadosOLD(FieldType(xQuery.FindField('TYPE').AsString, xQuery.FindField('MSKFLD').AsString,
                      xQuery.FindField('LENFLD').AsInteger));
      xQuery.Next;
    end;

    Write(FTextFile, 'procedure '+ ENomObj.Text + '.Registros_OLD();');
    Writeln(FTextFile);
    Write(FTextFile, 'begin');
    Writeln(FTextFile);

    xQuery.First;
    while not(xQuery.Eof) do
    begin
      xCampo := xQuery.FindField('FLDNAM').AsString;

      Write(FTextFile, CTAB + 'F'+ xCampo + 'OLD := F'+ xCampo + ';');
      Writeln(FTextFile);

      xQuery.Next;
    end;

    Write(FTextFile, '');
    Writeln(FTextFile);
    Write(FTextFile, CTAB + 'inherited;');
    Writeln(FTextFile);
    Write(FTextFile, 'end;');
    Writeln(FTextFile);

    Write(FTextFile, '');
    Writeln(FTextFile);

    Write(FTextFile, 'procedure '+ ENomObj.Text + '.RetornarValores();');
    Writeln(FTextFile);
    Write(FTextFile, 'begin');
    Writeln(FTextFile);

    xQuery.First;
    while not(xQuery.Eof) do
    begin
      xCampo := xQuery.FindField('FLDNAM').AsString;

      Write(FTextFile, CTAB + 'F'+ xCampo + ' := '+ 'F'+ xCampo + 'OLD;');
      Writeln(FTextFile);

      xQuery.Next;
    end;

    Write(FTextFile, '');
    Writeln(FTextFile);
    Write(FTextFile, CTAB + 'inherited;');
    Writeln(FTextFile);

    Write(FTextFile, 'end;');
    Writeln(FTextFile);

    Write(FTextFile, '');
    Writeln(FTextFile);
    Write(FTextFile, 'end.');
    Writeln(FTextFile);

    CloseFile(FTextFile);
  except
    CMessage('Não foi possível gerar a classe!', mtExceptError);
    Exit;
  end;

  BENomTab.Text := '';
  ENomObj.Text := '';
  ENomUni.Text := '';
  cbHeranca.ItemIndex := 2;

  CMessage('Classe gerada com sucesso!', mtInformation);
end;

procedure TFGerCla.FormCreate(Sender: TObject);
begin
  BENomTab.CreateLookup;
  BENomTab.Filter := 'FLDORD = 0';
  BENomTab.isAlfa := True;

  BEDirFil.Text := 'C:\Users\user\Documents\RAD Studio\Projects';
  BEDirFil.CreateLookup;
  BEDirFil.GetDirectory := True;
  cbHeranca.ItemIndex := 2;
end;

procedure TFGerCla.MontaChaves;
var
  xFORFLD: string;
  xREFFLD: string;
  xQuery: THQuery;
begin
  xQuery := THQuery.CreatePersonalizado();
  try
    xQuery.Command := 'SELECT R998RFL.FORFLD, R998RFL.REFFLD '+
                        'FROM R998RFL, R998REL '+
                      'WHERE '+
                        'R998REL.FORTBL = :TABELA AND '+
                        'R998RFL.RELNAM = R998REL.RELNAM ';

    xQuery.ParamByName('TABELA').Value := BENomTab.Text;;
    xQuery.Open();
    while not(xQuery.Eof) do
    begin
      xFORFLD := xFORFLD + '''' + xQuery.FindField('FORFLD').AsString + ''',';
      xREFFLD := xREFFLD + '''' + xQuery.FindField('REFFLD').AsString + ''',';
      xQuery.Next;
    end;

    if not(IsNull(xFORFLD)) then
    begin
      UltimoCaracter(xFORFLD, ',');
      UltimoCaracter(xREFFLD, ',');
      Write(FTextFile, CTAB + 'AddForeignKeys([' + xFORFLD + '], ['+ xREFFLD + ']);');
      Writeln(FTextFile);
    end;

    xQuery.Reset;

    xQuery.Command := 'SELECT R998TBL.PKFLDS FROM R998TBL WHERE R998TBL.TBLNAM = :TABELA';
    xQuery.ParamByName('TABELA').Value := BENomTab.Text;;
    xQuery.Open();
    if not(xQuery.IsEmpty) then
    begin
      if not(IsNull(xQuery.FindField('PKFLDS').AsString)) then
      begin
        Write(FTextFile, CTAB + 'AddPrimaryKeys('''+ xQuery.FindField('PKFLDS').AsString + ''');');
        Writeln(FTextFile);
      end;
    end;

    xQuery.Close;
  finally
    FreeAndNil(xQuery);
  end;
end;

procedure TFGerCla.MontarCabecalho;

  function Heranca(): string;
  begin
    case (cbHeranca.ItemIndex) of
      0: Result := '(TTabelaUsuario)';
      1: Result := '(TTabelaPadrao)';
      2: Result := EmptyStr;
    end;
  end;
begin
  Write(FTextFile, 'unit '+ ENomUni.Text +';');
  Writeln(FTextFile);
  Write(FTextFile, '');
  Writeln(FTextFile);
  Write(FTextFile, 'interface');
  Writeln(FTextFile);
  Write(FTextFile, '');
  Writeln(FTextFile);
  Write(FTextFile, 'uses');
  Writeln(FTextFile);
  Write(FTextFile, CTAB + 'System.Classes, oBase, System.SysUtils, Data.Db, System.Contnrs, DateUtils;');
  Writeln(FTextFile);
  Write(FTextFile, '');
  Writeln(FTextFile);
  Write(FTextFile, 'type');
  Writeln(FTextFile);
  Write(FTextFile, '');
  Writeln(FTextFile);
  Write(FTextFile, CTAB + ENomObj.Text + ' = class' + Heranca);
  Writeln(FTextFile);

  Write(FTextFile, CTAB + 'private');
  Writeln(FTextFile);
end;

end.
