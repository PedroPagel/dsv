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
      Top = 285
      Width = 975
      Height = 3
      Cursor = crVSplit
      Align = alTop
      ExplicitWidth = 978
    end
    object Splitter1: TSplitter [1]
      Left = 1
      Top = 532
      Width = 975
      Height = 3
      Cursor = crVSplit
      Align = alTop
      ExplicitWidth = 978
    end
    inherited HPanel2: THPanel
      Width = 975
      Height = 135
      ExplicitWidth = 975
      ExplicitHeight = 135
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
        Left = 75
        Top = 114
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
      object Label4: TLabel [5]
        Left = 246
        Top = 6
        Width = 53
        Height = 13
        Caption = 'Data Base:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      inherited HPanel3: THPanel
        Left = 805
        Height = 133
        TabOrder = 6
        ExplicitLeft = 805
        ExplicitHeight = 133
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
          TabOrder = 3
        end
      end
      object DDatBas: THDateTimePicker
        Left = 305
        Top = 3
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
        TabOrder = 5
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
        Left = 104
        Top = 109
        Width = 121
        Height = 21
        TabOrder = 4
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
    end
    object Panel3: TPanel
      Left = 1
      Top = 136
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
      Top = 288
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
      Top = 535
      Width = 975
      Height = 178
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
        Height = 124
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
        Top = 141
        Width = 973
        Height = 36
        Align = alBottom
        TabOrder = 2
      end
    end
  end
end
