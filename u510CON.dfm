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
        Width = 504
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
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = 2
          ParentFont = False
          TabOrder = 4
          Text = 'Todos'
          Items.Strings = (
            'Associado(s)'
            'N'#227'o Associado(s)'
            'Todos')
        end
        object DVenFim: TDateTimePicker
          Left = 390
          Top = 25
          Width = 110
          Height = 21
          Date = 0.352449409721884900
          Time = 0.352449409721884900
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnClick = DVenFimClick
          OnChange = DVenFimChange
          OnEnter = DVenFimEnter
          OnExit = DVenFimExit
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
          TabOrder = 6
          OnExit = BEVlrFimExit
          OnKeyPress = BEVlrFimKeyPress
          Lookup = False
        end
        object DVenIni: TDateTimePicker
          Left = 262
          Top = 25
          Width = 110
          Height = 21
          Date = 0.351422557869227600
          Time = 0.351422557869227600
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = DVenIniClick
          OnChange = DVenIniChange
          OnEnter = DVenIniEnter
          OnExit = DVenIniExit
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
          TabOrder = 5
          OnExit = BEVlrIniExit
          OnKeyPress = BEVlrIniKeyPress
          Lookup = False
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
          TabOrder = 8
          OnExit = BECodForExit
          OnKeyPress = BECodForKeyPress
          OnRightButtonClick = BECodForRightButtonClick
          IndexFields = 'CODFOR;NOMFOR'
          Table = 'E095FOR'
          Lookup = True
          Field = 'CODFOR'
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
          OnExit = BECodFilExit
          OnKeyPress = BECodFilKeyPress
          OnRightButtonClick = BECodFilRightButtonClick
          IndexFields = 'CODEMP;CODFIL;NOMFIL'
          Table = 'E070FIL'
          Lookup = True
          Field = 'CODFIL'
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
          OnExit = BECodEmpExit
          OnKeyPress = BECodEmpKeyPress
          OnRightButtonClick = BECodEmpRightButtonClick
          IndexFields = 'CODEMP;NOMEMP'
          Table = 'E070EMP'
          Lookup = True
          Field = 'CODEMP'
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = -207
          Top = 218
          Width = 145
          Height = 21
          TabOrder = 2
        end
      end
      object GroupBox2: TGroupBox
        Left = 2
        Top = 1
        Width = 357
        Height = 145
        Caption = 'Armazenamento'
        TabOrder = 0
        object Label2: TLabel
          Left = 61
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
          Left = 231
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
          Left = 11
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
          Left = 62
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
          Left = 23
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
          Left = 231
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
          Left = 113
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
          TabOrder = 5
          OnExit = BECodPorExit
          OnKeyPress = BECodPorKeyPress
          OnRightButtonClick = BECodPorRightButtonClick
          IndexFields = 'CODEMP;CODPOR;DESPOR'
          Table = 'E039POR'
          Lookup = True
          Field = 'CODPOR'
        end
        object DDatIni: TDateTimePicker
          Left = 115
          Top = 52
          Width = 110
          Height = 21
          Date = 0.351422557869227600
          Time = 0.351422557869227600
          Checked = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = DDatIniClick
          OnChange = DDatIniChange
          OnEnter = DDatIniEnter
          OnExit = DDatIniExit
        end
        object DDatFim: TDateTimePicker
          Left = 243
          Top = 52
          Width = 110
          Height = 21
          Date = 0.352449409721884900
          Time = 0.352449409721884900
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = DDatFimClick
          OnChange = DDatFimChange
          OnEnter = DDatFimEnter
          OnExit = DDatFimExit
        end
        object cbSituacaoArm: TComboBox
          Left = 113
          Top = 106
          Width = 145
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnChange = cbSituacaoArmChange
          Items.Strings = (
            'Armazenado(s)'
            'N'#227'o Armazenado(s)'
            'Todos')
        end
        object DFinFim: TDateTimePicker
          Left = 243
          Top = 81
          Width = 110
          Height = 21
          Date = 0.352449409721884900
          Time = 0.352449409721884900
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = DFinFimClick
          OnChange = DFinFimChange
          OnEnter = DFinFimEnter
          OnExit = DFinFimExit
        end
        object DFinIni: TDateTimePicker
          Left = 115
          Top = 81
          Width = 110
          Height = 21
          Date = 0.351422557869227600
          Time = 0.351422557869227600
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = DFinIniClick
          OnChange = DFinIniChange
          OnEnter = DFinIniEnter
          OnExit = DFinIniExit
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
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnEnterLine = FGridArmEnterLine
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
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnEnterLine = FGridTitEnterLine
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
