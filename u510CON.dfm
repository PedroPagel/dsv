object F510CON: TF510CON
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = '   T'#237'tulos do Processo Agendado - DDA'
  ClientHeight = 663
  ClientWidth = 1038
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1038
    Height = 663
    Align = alClient
    TabOrder = 0
    object Splitter2: TSplitter
      Left = 1
      Top = 302
      Width = 1036
      Height = 3
      Cursor = crVSplit
      Align = alTop
      ExplicitTop = 305
      ExplicitWidth = 357
    end
    object Splitter1: TSplitter
      Left = 1
      Top = 555
      Width = 1036
      Height = 3
      Cursor = crVSplit
      Align = alTop
      ExplicitTop = 505
      ExplicitWidth = 157
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1036
      Height = 152
      Align = alTop
      TabOrder = 0
      object Panel10: TPanel
        Left = 859
        Top = 1
        Width = 176
        Height = 150
        Align = alRight
        TabOrder = 2
        object Mostrar: TButton
          Left = 11
          Top = 12
          Width = 75
          Height = 25
          Caption = '&Mostrar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = MostrarClick
        end
        object Cancelar: TButton
          Left = 92
          Top = 43
          Width = 75
          Height = 25
          Caption = '&Cancelar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = CancelarClick
        end
        object Sair: TButton
          Left = 92
          Top = 74
          Width = 75
          Height = 25
          Caption = '&Sair'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = SairClick
        end
        object Excluir: TButton
          Left = 92
          Top = 12
          Width = 75
          Height = 25
          Caption = '&Excluir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = ExcluirClick
        end
        object Marcar: TButton
          Left = 11
          Top = 43
          Width = 75
          Height = 25
          Caption = 'M&arcar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = MarcarClick
        end
        object Desmarcar: TButton
          Left = 11
          Top = 74
          Width = 75
          Height = 25
          Caption = '&Desmarcar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = DesmarcarClick
        end
      end
      object GroupBox1: TGroupBox
        Left = 360
        Top = 1
        Width = 510
        Height = 145
        Caption = 'T'#237'tulo(s)'
        TabOrder = 1
        object Label9: TLabel
          Left = 211
          Top = 82
          Width = 45
          Height = 13
          Caption = 'Situa'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 378
          Top = 55
          Width = 6
          Height = 13
          Caption = 'a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 378
          Top = 28
          Width = 6
          Height = 13
          Caption = 'a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 228
          Top = 55
          Width = 28
          Height = 13
          Caption = 'Valor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 197
          Top = 28
          Width = 59
          Height = 13
          Caption = 'Vencimento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 4
          Top = 82
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
        object Label6: TLabel
          Left = 39
          Top = 55
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
        object Label1: TLabel
          Left = 18
          Top = 28
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
        object cbSituacaoTit: TComboBox
          Left = 262
          Top = 79
          Width = 145
          Height = 21
          Style = csDropDownList
          BiDiMode = bdRightToLeftReadingOnly
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 3
          Items.Strings = (
            'Associados'
            'N'#227'o Associados'
            'Todos')
        end
        object BEVlrFim: THButtonedEdit
          Left = 390
          Top = 52
          Width = 110
          Height = 21
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          Lookup = False
          AvoidSelections = False
          isNumber = False
          isAlfa = False
          isFloat = False
          OpenDialog = False
          Required = False
        end
        object BEVlrIni: THButtonedEdit
          Left = 262
          Top = 52
          Width = 110
          Height = 21
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Lookup = False
          AvoidSelections = False
          isNumber = False
          isAlfa = False
          isFloat = False
          OpenDialog = False
          Required = False
        end
        object BECodFor: THButtonedEdit
          Left = 69
          Top = 79
          Width = 121
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          RightButton.ImageIndex = 0
          RightButton.Visible = True
          TabOrder = 6
          IndexFields = 'CODFOR;NOMFOR'
          Table = 'E095FOR'
          Lookup = True
          Field = 'CODFOR'
          AvoidSelections = False
          isNumber = False
          isAlfa = False
          isFloat = False
          OpenDialog = False
          Required = False
        end
        object BECodFil: THButtonedEdit
          Left = 69
          Top = 52
          Width = 121
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          RightButton.ImageIndex = 0
          RightButton.Visible = True
          TabOrder = 1
          IndexFields = 'CODEMP;CODFIL;NOMFIL'
          Table = 'E070FIL'
          Lookup = True
          Field = 'CODFIL'
          AvoidSelections = False
          isNumber = False
          isAlfa = False
          isFloat = False
          OpenDialog = False
          Required = False
        end
        object BECodEmp: THButtonedEdit
          Left = 69
          Top = 25
          Width = 121
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          RightButton.ImageIndex = 0
          RightButton.Visible = True
          TabOrder = 0
          IndexFields = 'CODEMP;NOMEMP'
          Table = 'E070EMP'
          Lookup = True
          Field = 'CODEMP'
          AvoidSelections = False
          isNumber = False
          isAlfa = False
          isFloat = False
          OpenDialog = False
          Required = False
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = -207
          Top = 218
          Width = 145
          Height = 21
          TabOrder = 2
        end
        object DVenFim: THDateTimePicker
          Left = 390
          Top = 25
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
          TabOrder = 7
        end
        object DVenIni: THDateTimePicker
          Left = 262
          Top = 25
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
          TabOrder = 8
        end
      end
      object GroupBox2: TGroupBox
        Left = 2
        Top = 1
        Width = 357
        Height = 146
        Caption = 'Armazenamento'
        TabOrder = 0
        object Label2: TLabel
          Left = 58
          Top = 28
          Width = 46
          Height = 13
          Caption = 'Portador:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 228
          Top = 56
          Width = 6
          Height = 13
          Caption = 'a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 8
          Top = 82
          Width = 96
          Height = 13
          Caption = 'Finaliza'#231#227'o Arquivo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 59
          Top = 106
          Width = 45
          Height = 13
          Caption = 'Situa'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 20
          Top = 55
          Width = 84
          Height = 13
          Caption = 'Gera'#231#227'o Arquivo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 228
          Top = 81
          Width = 6
          Height = 13
          Caption = 'a'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object BECodPor: THButtonedEdit
          Left = 110
          Top = 25
          Width = 121
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          RightButton.ImageIndex = 0
          RightButton.Visible = True
          TabOrder = 1
          IndexFields = 'CODEMP;CODPOR;DESPOR'
          Table = 'E039POR'
          Lookup = True
          Field = 'CODPOR'
          AvoidSelections = False
          isNumber = False
          isAlfa = False
          isFloat = False
          OpenDialog = False
          Required = False
        end
        object cbSituacaoArm: TComboBox
          Left = 110
          Top = 106
          Width = 145
          Height = 21
          Style = csDropDownList
          BiDiMode = bdRightToLeftReadingOnly
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          OnChange = cbSituacaoArmChange
          Items.Strings = (
            'Armazenados'
            'N'#227'o Armazenados'
            'Todos')
        end
        object DDatIni: THDateTimePicker
          Left = 110
          Top = 52
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
          TabOrder = 2
        end
        object DDatFim: THDateTimePicker
          Left = 240
          Top = 52
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
          TabOrder = 3
        end
        object DFinIni: THDateTimePicker
          Left = 110
          Top = 78
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
          TabOrder = 4
        end
        object DFinFim: THDateTimePicker
          Left = 240
          Top = 78
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
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 153
      Width = 1036
      Height = 149
      Align = alTop
      Caption = 'Panel3'
      TabOrder = 1
      object Panel6: TPanel
        Left = 1
        Top = 1
        Width = 1034
        Height = 16
        Align = alTop
        Caption = 'Armazenamento(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object FGridArm: TDataSetGrid
        Left = 1
        Top = 17
        Width = 1034
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
    object Panel5: TPanel
      Left = 1
      Top = 558
      Width = 1036
      Height = 104
      Align = alClient
      Caption = 'Panel5'
      TabOrder = 2
      object Panel8: TPanel
        Left = 1
        Top = 1
        Width = 1034
        Height = 16
        Align = alTop
        Caption = 'Associado(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object FGridAss: TDataSetGrid
        Left = 1
        Top = 17
        Width = 1034
        Height = 86
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
    end
    object Panel7: TPanel
      Left = 1
      Top = 305
      Width = 1036
      Height = 250
      Align = alTop
      TabOrder = 3
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 1034
        Height = 16
        Align = alTop
        Caption = 'T'#237'tulo(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object FGridTit: TDataSetGrid
        Left = 1
        Top = 17
        Width = 1034
        Height = 196
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
        Top = 213
        Width = 1034
        Height = 36
        Align = alBottom
        TabOrder = 2
        object ExcluirTit: TButton
          Left = 24
          Top = 6
          Width = 75
          Height = 25
          Caption = 'E&xcluir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = ExcluirTitClick
        end
      end
    end
  end
end
