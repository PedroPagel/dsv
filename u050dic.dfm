inherited F050DIC: TF050DIC
  Caption = 'F050DIC - Cadastro de Container(s)'
  ExplicitWidth = 634
  ExplicitHeight = 732
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Botoes: TPanel
      inherited DBNavigator: TDBNavigator
        Hints.Strings = ()
      end
    end
    inherited Panel4: TPanel
      inherited Cabecalho: THPanel
        Height = 54
        DataBaseTable = 'USU_T050DIC'
        ExplicitHeight = 54
        object Label2: TLabel
          Left = 80
          Top = 21
          Width = 51
          Height = 13
          Caption = 'Container:'
        end
        object BENomCon: THButtonedEdit
          Left = 136
          Top = 18
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
          Table = 'USU_T050DIC'
          Lookup = False
          Field = 'USU_NomCon'
          AvoidSelections = True
          isNumber = False
          isAlfa = True
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T050DIC'
          DataBaseField = 'USU_NomCon'
          Required = True
        end
      end
      inherited Geral: THPanel
        Top = 55
        Height = 636
        ExplicitTop = 55
        ExplicitHeight = 636
        object Label6: TLabel
          Left = 48
          Top = 257
          Width = 83
          Height = 13
          Caption = 'Usu'#225'rio Gera'#231#227'o:'
        end
        object Label7: TLabel
          Left = 61
          Top = 283
          Width = 70
          Height = 13
          Caption = 'Data Gera'#231#227'o:'
        end
        object Label8: TLabel
          Left = 42
          Top = 311
          Width = 89
          Height = 13
          Caption = 'Usu'#225'rio Altera'#231#227'o:'
        end
        object Label9: TLabel
          Left = 55
          Top = 337
          Width = 76
          Height = 13
          Caption = 'Data Altera'#231#227'o:'
        end
        object Label3: TLabel
          Left = 81
          Top = 14
          Width = 50
          Height = 13
          Caption = 'Descri'#231#227'o:'
        end
        object Label1: TLabel
          Left = 90
          Top = 41
          Width = 41
          Height = 13
          Caption = 'Largura:'
        end
        object Label4: TLabel
          Left = 64
          Top = 68
          Width = 67
          Height = 13
          Caption = 'Comprimento:'
        end
        object Label5: TLabel
          Left = 98
          Top = 95
          Width = 33
          Height = 13
          Caption = 'Altura:'
        end
        object Label11: TLabel
          Left = 28
          Top = 122
          Width = 103
          Height = 13
          Caption = 'Capacidade de Carga'
        end
        object Label12: TLabel
          Left = 100
          Top = 146
          Width = 31
          Height = 13
          Caption = 'Limite:'
        end
        object Label13: TLabel
          Left = 64
          Top = 203
          Width = 67
          Height = 13
          Caption = 'Metro C'#250'bico:'
        end
        object Label14: TLabel
          Left = 86
          Top = 230
          Width = 45
          Height = 13
          Caption = 'Situa'#231#227'o:'
        end
        object Label15: TLabel
          Left = 263
          Top = 41
          Width = 41
          Height = 13
          Caption = 'Metro(s)'
        end
        object Label16: TLabel
          Left = 263
          Top = 68
          Width = 41
          Height = 13
          Caption = 'Metro(s)'
        end
        object Label17: TLabel
          Left = 263
          Top = 95
          Width = 41
          Height = 13
          Caption = 'Metro(s)'
        end
        object Label19: TLabel
          Left = 263
          Top = 122
          Width = 57
          Height = 13
          Caption = 'Tonelada(s)'
        end
        object Label20: TLabel
          Left = 263
          Top = 149
          Width = 57
          Height = 13
          Caption = 'Tonelada(s)'
        end
        object Label10: TLabel
          Left = 263
          Top = 176
          Width = 57
          Height = 13
          Caption = 'Tonelada(s)'
        end
        object Label18: TLabel
          Left = 63
          Top = 176
          Width = 68
          Height = 13
          Caption = 'Carga M'#237'nima:'
        end
        object BEUsuGer: THButtonedEdit
          Left = 136
          Top = 254
          Width = 121
          Height = 21
          TabOrder = 9
          Table = 'E099USU'
          Lookup = False
          AvoidSelections = False
          isNumber = True
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T050DIC'
          DataBaseField = 'USU_USUGER'
          Required = False
        end
        object BEUsuAlt: THButtonedEdit
          Left = 136
          Top = 308
          Width = 121
          Height = 21
          TabOrder = 11
          Table = 'E099USU'
          Lookup = False
          AvoidSelections = False
          isNumber = True
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T050DIC'
          DataBaseField = 'USU_USUALT'
          Required = False
        end
        object DTDatGer: THDateTimePicker
          Left = 136
          Top = 281
          Width = 121
          Height = 21
          Date = 43000.498434016200000000
          Time = 43000.498434016200000000
          TabOrder = 10
          DataBaseTable = 'USU_T050DIC'
          DataBaseField = 'USU_DATGER'
        end
        object DTDatAlt: THDateTimePicker
          Left = 136
          Top = 335
          Width = 121
          Height = 21
          Date = 43000.498434016200000000
          Time = 43000.498434016200000000
          TabOrder = 12
          DataBaseTable = 'USU_T050DIC'
          DataBaseField = 'USU_DATALT'
        end
        object BEDesCon: THButtonedEdit
          Left = 136
          Top = 11
          Width = 241
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
          Table = 'USU_T050DIC'
          Lookup = False
          Field = 'USU_DesCon'
          AvoidSelections = True
          isNumber = False
          isAlfa = True
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T050DIC'
          DataBaseField = 'USU_DesCon'
          Required = True
        end
        object BELarCon: THButtonedEdit
          Left = 136
          Top = 38
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
          Table = 'USU_T050DIC'
          Lookup = False
          Field = 'USU_LarCon'
          AvoidSelections = True
          isNumber = True
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T050DIC'
          DataBaseField = 'USU_LarCon'
          Required = True
        end
        object BEComCon: THButtonedEdit
          Left = 136
          Top = 65
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
          TabOrder = 2
          Table = 'USU_T050DIC'
          Lookup = False
          Field = 'USU_ComCon'
          AvoidSelections = True
          isNumber = True
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T050DIC'
          DataBaseField = 'USU_ComCon'
          Required = True
        end
        object BEAltCon: THButtonedEdit
          Left = 136
          Top = 92
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
          TabOrder = 3
          Table = 'USU_T050DIC'
          Lookup = False
          Field = 'USU_LarCon'
          AvoidSelections = True
          isNumber = True
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T050DIC'
          DataBaseField = 'USU_AltCon'
          Required = True
        end
        object USU_CapCar: THButtonedEdit
          Left = 136
          Top = 119
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
          TabOrder = 4
          Table = 'USU_T050DIC'
          Lookup = False
          Field = 'USU_CapCar'
          AvoidSelections = True
          isNumber = True
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T050DIC'
          DataBaseField = 'USU_CapCar'
          Required = True
        end
        object BELimCon: THButtonedEdit
          Left = 136
          Top = 146
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
          Table = 'USU_T050DIC'
          Lookup = False
          Field = 'USU_LimCon'
          AvoidSelections = True
          isNumber = True
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T050DIC'
          DataBaseField = 'USU_LimCon'
          Required = True
        end
        object BEMetCub: THButtonedEdit
          Left = 136
          Top = 200
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
          TabOrder = 7
          Table = 'USU_T050DIC'
          Lookup = False
          AvoidSelections = True
          isNumber = True
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T050DIC'
          DataBaseField = 'USU_MetCub'
          Required = True
        end
        object BESitCon: THButtonedEdit
          Left = 136
          Top = 227
          Width = 57
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
          Table = 'E099USU'
          Lookup = True
          Field = 'USU_SitCon'
          AvoidSelections = True
          isNumber = False
          isAlfa = True
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T050DIC'
          DataBaseField = 'USU_SitCon'
          Required = True
          ENumerator = 'LSitReg'
        end
        object BELimMin: THButtonedEdit
          Left = 136
          Top = 173
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
          Table = 'USU_T050DIC'
          Lookup = False
          Field = 'USU_LimMin'
          AvoidSelections = True
          isNumber = True
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T050DIC'
          DataBaseField = 'USU_LimMin'
          Required = True
        end
      end
    end
  end
end
