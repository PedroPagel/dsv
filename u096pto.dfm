inherited F096PTO: TF096PTO
  Caption = ' Previs'#227'o de T'#237'tulos por Oderm de Compra'
  ClientHeight = 714
  ClientWidth = 977
  ExplicitWidth = 993
  ExplicitHeight = 752
  PixelsPerInch = 96
  TextHeight = 13
  inherited HPanel1: THPanel
    Width = 977
    Height = 714
    ExplicitWidth = 977
    ExplicitHeight = 714
    object Splitter2: TSplitter [0]
      Left = 1
      Top = 261
      Width = 975
      Height = 3
      Cursor = crVSplit
      Align = alTop
      ExplicitTop = 285
      ExplicitWidth = 978
    end
    object Splitter1: TSplitter [1]
      Left = 1
      Top = 508
      Width = 975
      Height = 3
      Cursor = crVSplit
      Align = alTop
      ExplicitTop = 532
      ExplicitWidth = 978
    end
    inherited HPanel2: THPanel
      Width = 975
      Height = 111
      ExplicitWidth = 975
      ExplicitHeight = 111
      object Label2: TLabel [0]
        Left = 39
        Top = 60
        Width = 59
        Height = 13
        Caption = 'Fornecedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel [1]
        Left = 74
        Top = 33
        Width = 24
        Height = 13
        Caption = 'Filial:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel [2]
        Left = 53
        Top = 6
        Width = 45
        Height = 13
        Caption = 'Empresa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel [3]
        Left = 7
        Top = 87
        Width = 91
        Height = 13
        Caption = 'Ordem de Compra:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel [4]
        Left = 312
        Top = 35
        Width = 23
        Height = 13
        Caption = 'Pa'#237's:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel [5]
        Left = 229
        Top = 6
        Width = 106
        Height = 13
        Caption = 'Grupo de Importa'#231#227'o:'
      end
      object Label4: TLabel [6]
        Left = 620
        Top = 16
        Width = 53
        Height = 13
        Caption = 'Data Base:'
      end
      inherited HPanel3: THPanel
        Left = 805
        Height = 109
        TabOrder = 10
        ExplicitLeft = 805
        ExplicitHeight = 109
        inherited Mostrar: TButton
          OnClick = MostrarClick
        end
        inherited Cancelar: TButton
          TabOrder = 5
          OnClick = CancelarClick
        end
        inherited Sair: TButton
          TabOrder = 6
        end
        inherited Processar: TButton
          TabOrder = 4
          OnClick = ProcessarClick
        end
        inherited Marcar: TButton
          TabOrder = 1
          OnClick = MarcarClick
        end
        inherited Desmarcar: TButton
          TabOrder = 2
          OnClick = DesmarcarClick
        end
        inherited Excluir: TButton
          Top = 109
          Enabled = False
          TabOrder = 3
          ExplicitTop = 109
        end
      end
      object BECodEmp: THButtonedEdit
        Left = 104
        Top = 3
        Width = 121
        Height = 21
        TabOrder = 0
        Table = 'E070EMP'
        Lookup = True
        Field = 'CODEMP'
        AvoidSelections = False
        isNumber = True
        isAlfa = False
        isFloat = False
        OpenDialog = False
        Required = False
      end
      object BECodFil: THButtonedEdit
        Left = 104
        Top = 30
        Width = 121
        Height = 21
        TabOrder = 1
        Table = 'E070FIL'
        Lookup = True
        Field = 'CODFIL'
        AvoidSelections = False
        isNumber = True
        isAlfa = False
        isFloat = False
        OpenDialog = False
        Required = False
      end
      object BECodFor: THButtonedEdit
        Left = 104
        Top = 57
        Width = 121
        Height = 21
        TabOrder = 2
        Table = 'E095FOR'
        Lookup = True
        Field = 'CodFor'
        AvoidSelections = False
        isNumber = True
        isAlfa = False
        isFloat = False
        OpenDialog = False
        Required = False
      end
      object BENumOcp: THButtonedEdit
        Left = 104
        Top = 84
        Width = 121
        Height = 21
        TabOrder = 3
        Table = 'E420OCP'
        Lookup = True
        Field = 'NumOcp'
        AvoidSelections = False
        isNumber = True
        isAlfa = False
        isFloat = False
        OpenDialog = False
        Required = False
      end
      object BECodPai: THButtonedEdit
        Left = 341
        Top = 30
        Width = 121
        Height = 21
        TabOrder = 5
        Table = 'E006PAI'
        Lookup = True
        Field = 'CodPai'
        AvoidSelections = False
        isNumber = False
        isAlfa = True
        isFloat = False
        OpenDialog = False
        Required = False
      end
      object BECodGfi: THButtonedEdit
        Left = 341
        Top = 3
        Width = 121
        Height = 21
        TabOrder = 4
        Table = 'USU_T097GFI'
        Lookup = True
        Field = 'USU_CODGFI'
        AvoidSelections = False
        isNumber = False
        isAlfa = True
        isFloat = False
        OpenDialog = False
        DataBaseTable = 'USU_T095FIM'
        DataBaseField = 'USU_CodGfi'
        Required = False
      end
      object RadioGroup1: TRadioGroup
        Left = 468
        Top = 0
        Width = 331
        Height = 108
        Caption = 'Processos de Previs'#227'o:'
        TabOrder = 6
      end
      object CBTitulo: TCheckBox
        Left = 479
        Top = 17
        Width = 107
        Height = 17
        Caption = '&1 - T'#237'tulo(s)'
        TabOrder = 7
      end
      object CBImposto: TCheckBox
        Left = 479
        Top = 37
        Width = 120
        Height = 17
        Caption = '&2 - Imposto(s)'
        TabOrder = 8
      end
      object DDatBas: THDateTimePicker
        Left = 677
        Top = 13
        Width = 112
        Height = 21
        Date = 42936.423708888890000000
        Format = '00/00/0000'
        Time = 42936.423708888890000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 112
      Width = 975
      Height = 149
      Align = alTop
      Caption = 'Panel3'
      TabOrder = 1
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 973
        Height = 16
        Align = alTop
        Caption = 'Fornecedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object FGridFor: TDataSetGrid
        Left = 1
        Top = 17
        Width = 973
        Height = 131
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        AllowNewLine = False
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 264
      Width = 975
      Height = 244
      Align = alTop
      TabOrder = 2
      object Panel7: TPanel
        Left = 1
        Top = 1
        Width = 973
        Height = 16
        Align = alTop
        Caption = 'Orderm de Compra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object FGridOrd: TDataSetGrid
        Left = 1
        Top = 17
        Width = 973
        Height = 190
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        AllowNewLine = False
      end
      object Panel9: TPanel
        Left = 1
        Top = 207
        Width = 973
        Height = 36
        Align = alBottom
        TabOrder = 2
      end
    end
    object Panel5: TPanel
      Left = 1
      Top = 511
      Width = 975
      Height = 202
      Align = alClient
      Caption = 'Panel5'
      TabOrder = 3
      object Panel8: TPanel
        Left = 1
        Top = 1
        Width = 973
        Height = 16
        Align = alTop
        Caption = 'Produto(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object FGridIpo: TDataSetGrid
        Left = 1
        Top = 17
        Width = 973
        Height = 148
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        AllowNewLine = False
      end
      object Panel11: TPanel
        Left = 1
        Top = 165
        Width = 973
        Height = 36
        Align = alBottom
        TabOrder = 2
      end
    end
  end
end
