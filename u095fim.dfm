inherited F095FIM: TF095FIM
  BorderStyle = bsSingle
  Caption = 'F095FIM - Fornecedor de Importa'#231#227'o'
  ClientHeight = 768
  ClientWidth = 620
  OnDestroy = FormDestroy
  ExplicitWidth = 626
  ExplicitHeight = 796
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 620
    Height = 768
    ExplicitWidth = 620
    ExplicitHeight = 768
    inherited Botoes: TPanel
      Left = 530
      Height = 766
      ExplicitLeft = 530
      ExplicitHeight = 766
      inherited DBNavigator: TDBNavigator
        Hints.Strings = ()
      end
    end
    inherited Panel4: TPanel
      Width = 529
      Height = 766
      ExplicitWidth = 529
      ExplicitHeight = 766
      inherited Geral: THPanel [0]
        Top = 57
        Width = 527
        Height = 708
        ExplicitTop = 57
        ExplicitWidth = 527
        ExplicitHeight = 708
        object Label6: TLabel
          Left = 48
          Top = 42
          Width = 83
          Height = 13
          Caption = 'Usu'#225'rio Gera'#231#227'o:'
        end
        object Label7: TLabel
          Left = 61
          Top = 68
          Width = 70
          Height = 13
          Caption = 'Data Gera'#231#227'o:'
        end
        object Label8: TLabel
          Left = 42
          Top = 96
          Width = 89
          Height = 13
          Caption = 'Usu'#225'rio Altera'#231#227'o:'
        end
        object Label9: TLabel
          Left = 55
          Top = 122
          Width = 76
          Height = 13
          Caption = 'Data Altera'#231#227'o:'
        end
        object Label14: TLabel
          Left = 91
          Top = 15
          Width = 40
          Height = 13
          Caption = 'Per'#237'odo:'
        end
        object Label1: TLabel
          Left = 69
          Top = 150
          Width = 62
          Height = 13
          Caption = 'Observa'#231#227'o:'
        end
        object HPanel2: THPanel
          Left = 1
          Top = 356
          Width = 525
          Height = 176
          Align = alBottom
          TabOrder = 2
          object FGridDes: TDataSetGrid
            Left = 1
            Top = 17
            Width = 523
            Height = 158
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            AllowNewLine = True
          end
          object Panel5: TPanel
            Left = 1
            Top = 1
            Width = 523
            Height = 16
            Align = alTop
            Caption = 'Despesa(s)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
        object DTDatGer: THDateTimePicker
          Left = 136
          Top = 66
          Width = 121
          Height = 21
          Date = 43000.498434016200000000
          Time = 43000.498434016200000000
          TabOrder = 5
          DataBaseTable = 'USU_T095FIM'
          DataBaseField = 'USU_DATGER'
        end
        object DTDatAlt: THDateTimePicker
          Left = 136
          Top = 120
          Width = 121
          Height = 21
          Date = 43000.498434016200000000
          Time = 43000.498434016200000000
          TabOrder = 4
          DataBaseTable = 'USU_T095FIM'
          DataBaseField = 'USU_DATALT'
        end
        object BEOsbFor: THMemo
          Left = 136
          Top = 147
          Width = 257
          Height = 188
          Align = alCustom
          TabOrder = 6
          DataBaseTable = 'USU_T095FIM'
          DataBaseField = 'USU_ObsFor'
        end
        object HPanel1: THPanel
          Left = 1
          Top = 532
          Width = 525
          Height = 175
          Align = alBottom
          TabOrder = 7
          object Panel2: TPanel
            Left = 1
            Top = 1
            Width = 523
            Height = 16
            Align = alTop
            Caption = 'Container(s)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object Panel3: TPanel
            Left = 1
            Top = 156
            Width = 523
            Height = 18
            Align = alBottom
            TabOrder = 1
          end
          object FGridCon: TDataSetGrid
            Left = 1
            Top = 17
            Width = 523
            Height = 139
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            AllowNewLine = True
          end
        end
        object BEPerOrd: THButtonedEdit
          Left = 136
          Top = 12
          Width = 57
          Height = 21
          TabOrder = 0
          Lookup = True
          AvoidSelections = False
          isNumber = False
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T095FIM'
          DataBaseField = 'USU_PERORD'
          Required = False
          ENumerator = 'USU_EConPer'
        end
        object BEUsuGer: THButtonedEdit
          Left = 136
          Top = 39
          Width = 121
          Height = 21
          TabOrder = 1
          Lookup = False
          AvoidSelections = False
          isNumber = False
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T095FIM'
          DataBaseField = 'USU_UsuGer'
          Required = False
        end
        object BEUsuAlt: THButtonedEdit
          Left = 136
          Top = 93
          Width = 121
          Height = 21
          TabOrder = 3
          Lookup = False
          AvoidSelections = False
          isNumber = False
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T095FIM'
          DataBaseField = 'USU_USUALT'
          Required = False
        end
      end
      inherited Cabecalho: THPanel [1]
        Width = 527
        Height = 56
        DataBaseTable = 'USU_T095FIM'
        ExplicitWidth = 527
        ExplicitHeight = 56
        object Label2: TLabel
          Left = 72
          Top = 21
          Width = 59
          Height = 13
          Caption = 'Fornecedor:'
        end
        object BECodFor: THButtonedEdit
          Left = 136
          Top = 18
          Width = 121
          Height = 21
          TabOrder = 0
          Table = 'E095FOR'
          Lookup = True
          Field = 'CODFOR'
          AvoidSelections = False
          isNumber = False
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T095FIM'
          DataBaseField = 'USU_CODFOR'
          Required = False
        end
      end
    end
  end
end
