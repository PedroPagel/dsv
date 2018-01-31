inherited F095FIM: TF095FIM
  BorderStyle = bsSingle
  Caption = 'F095FIM - Fornecedor de Importa'#231#227'o'
  ClientHeight = 860
  ClientWidth = 616
  OnDestroy = FormDestroy
  ExplicitWidth = 622
  ExplicitHeight = 888
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 616
    Height = 860
    ExplicitWidth = 616
    ExplicitHeight = 860
    inherited Botoes: TPanel
      Left = 525
      Width = 90
      Height = 858
      ExplicitLeft = 525
      ExplicitWidth = 90
      ExplicitHeight = 858
      inherited DBNavigator: TDBNavigator
        Hints.Strings = ()
      end
    end
    inherited Panel4: TPanel
      Width = 524
      Height = 858
      ExplicitWidth = 524
      ExplicitHeight = 858
      inherited Geral: THPanel [0]
        Top = 57
        Width = 522
        Height = 800
        ExplicitTop = 57
        ExplicitWidth = 522
        ExplicitHeight = 800
        object Label6: TLabel
          Left = 48
          Top = 317
          Width = 83
          Height = 13
          Caption = 'Usu'#225'rio Gera'#231#227'o:'
        end
        object Label7: TLabel
          Left = 61
          Top = 343
          Width = 70
          Height = 13
          Caption = 'Data Gera'#231#227'o:'
        end
        object Label8: TLabel
          Left = 42
          Top = 371
          Width = 89
          Height = 13
          Caption = 'Usu'#225'rio Altera'#231#227'o:'
        end
        object Label9: TLabel
          Left = 55
          Top = 397
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
          Left = 68
          Top = 42
          Width = 62
          Height = 13
          Caption = 'Observa'#231#227'o:'
        end
        object Label3: TLabel
          Left = 25
          Top = 236
          Width = 106
          Height = 13
          Caption = 'Grupo de Importa'#231#227'o:'
        end
        object Label4: TLabel
          Left = 17
          Top = 263
          Width = 114
          Height = 13
          Caption = 'Percentual de Despesa:'
        end
        object Label5: TLabel
          Left = 31
          Top = 290
          Width = 100
          Height = 13
          Caption = 'Dia(s) para Registro:'
        end
        object HPanel2: THPanel
          Left = 1
          Top = 448
          Width = 520
          Height = 176
          Align = alBottom
          TabOrder = 9
          object FGridDes: TDataSetGrid
            Left = 1
            Top = 17
            Width = 518
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
            Width = 518
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
          Top = 341
          Width = 121
          Height = 21
          Date = 43000.498434016200000000
          Time = 43000.498434016200000000
          TabOrder = 6
          DataBaseTable = 'USU_T095FIM'
          DataBaseField = 'USU_DATGER'
        end
        object DTDatAlt: THDateTimePicker
          Left = 136
          Top = 395
          Width = 121
          Height = 21
          Date = 43000.498434016200000000
          Time = 43000.498434016200000000
          TabOrder = 8
          DataBaseTable = 'USU_T095FIM'
          DataBaseField = 'USU_DATALT'
        end
        object BEObsFor: THMemo
          Left = 136
          Top = 39
          Width = 257
          Height = 188
          Align = alCustom
          TabOrder = 1
          DataBaseTable = 'USU_T095FIM'
          DataBaseField = 'USU_ObsFor'
        end
        object HPanel1: THPanel
          Left = 1
          Top = 624
          Width = 520
          Height = 175
          Align = alBottom
          TabOrder = 10
          object Panel2: TPanel
            Left = 1
            Top = 1
            Width = 518
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
            Width = 518
            Height = 18
            Align = alBottom
            TabOrder = 1
          end
          object FGridCon: TDataSetGrid
            Left = 1
            Top = 17
            Width = 518
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
          Table = 'USU_T095FIM'
          Lookup = True
          Field = 'USU_PerOrd'
          AvoidSelections = False
          isNumber = False
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T095FIM'
          DataBaseField = 'USU_PERORD'
          Required = True
          ENumerator = 'USU_EConPer'
        end
        object BEUsuGer: THButtonedEdit
          Left = 136
          Top = 314
          Width = 121
          Height = 21
          TabOrder = 5
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
          Top = 368
          Width = 121
          Height = 21
          TabOrder = 7
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
        object BECodGfi: THButtonedEdit
          Left = 136
          Top = 233
          Width = 121
          Height = 21
          TabOrder = 2
          Table = 'USU_T097GFI'
          Lookup = True
          Field = 'USU_CODGFI'
          AvoidSelections = False
          isNumber = False
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T095FIM'
          DataBaseField = 'USU_CodGfi'
          Required = False
        end
        object BEPerDes: THButtonedEdit
          Left = 136
          Top = 260
          Width = 121
          Height = 21
          TabOrder = 3
          Table = 'USU_T095FIM'
          Lookup = False
          Field = 'USU_PerDes'
          AvoidSelections = False
          isNumber = False
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T095FIM'
          DataBaseField = 'USU_PerDes'
          Required = False
        end
        object BEDiaReg: THButtonedEdit
          Left = 136
          Top = 287
          Width = 121
          Height = 21
          TabOrder = 4
          Table = 'USU_T095FIM'
          Lookup = False
          Field = 'USU_DiaReg'
          AvoidSelections = False
          isNumber = False
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T095FIM'
          DataBaseField = 'USU_DiaReg'
          Required = False
        end
      end
      inherited Cabecalho: THPanel [1]
        Width = 522
        Height = 56
        DataBaseTable = 'USU_T095FIM'
        ExplicitWidth = 522
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
          Alignment = taCenter
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
