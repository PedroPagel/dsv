inherited F000ISC: TF000ISC
  Caption = 'F000ISC - Cadastro de Integra'#231#227'o de Servi'#231'os do CRM'
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
        Height = 48
        DataBaseTable = 'USU_T000ISC'
        ExplicitHeight = 48
        object Label2: TLabel
          Left = 85
          Top = 21
          Width = 45
          Height = 13
          Caption = 'Empresa:'
        end
        object BECodEmp: THButtonedEdit
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
          Table = 'E070EMP'
          Lookup = True
          Field = 'CODEMP'
          AvoidSelections = True
          isNumber = False
          isAlfa = True
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T000ISC'
          DataBaseField = 'USU_CODEMP'
          Required = True
        end
      end
      inherited Geral: THPanel
        Top = 49
        Height = 642
        ExplicitTop = 49
        ExplicitHeight = 642
        object Label6: TLabel
          Left = 48
          Top = 95
          Width = 83
          Height = 13
          Caption = 'Usu'#225'rio Gera'#231#227'o:'
        end
        object Label7: TLabel
          Left = 61
          Top = 121
          Width = 70
          Height = 13
          Caption = 'Data Gera'#231#227'o:'
        end
        object Label8: TLabel
          Left = 42
          Top = 149
          Width = 89
          Height = 13
          Caption = 'Usu'#225'rio Altera'#231#227'o:'
        end
        object Label9: TLabel
          Left = 55
          Top = 175
          Width = 76
          Height = 13
          Caption = 'Data Altera'#231#227'o:'
        end
        object Label3: TLabel
          Left = 91
          Top = 14
          Width = 40
          Height = 13
          Caption = 'Usu'#225'rio:'
        end
        object Label4: TLabel
          Left = 97
          Top = 41
          Width = 34
          Height = 13
          Caption = 'Senha:'
        end
        object Label5: TLabel
          Left = 108
          Top = 68
          Width = 23
          Height = 13
          Caption = 'URL:'
        end
        object BEUsuGer: THButtonedEdit
          Left = 136
          Top = 92
          Width = 121
          Height = 21
          TabOrder = 3
          Lookup = False
          AvoidSelections = False
          isNumber = True
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T000ISC'
          DataBaseField = 'USU_USUGER'
          Required = False
        end
        object BEUsuAlt: THButtonedEdit
          Left = 136
          Top = 146
          Width = 121
          Height = 21
          TabOrder = 5
          Lookup = False
          AvoidSelections = False
          isNumber = True
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T000ISC'
          DataBaseField = 'USU_USUALT'
          Required = False
        end
        object DTDatGer: THDateTimePicker
          Left = 136
          Top = 119
          Width = 121
          Height = 21
          Date = 43000.498434016200000000
          Time = 43000.498434016200000000
          TabOrder = 4
          DataBaseTable = 'USU_T000ISC'
          DataBaseField = 'USU_DATGER'
        end
        object DTDatAlt: THDateTimePicker
          Left = 136
          Top = 173
          Width = 121
          Height = 21
          Date = 43000.498434016200000000
          Time = 43000.498434016200000000
          TabOrder = 6
          DataBaseTable = 'USU_T000ISC'
          DataBaseField = 'USU_DATALT'
        end
        object BEUsuCrm: THButtonedEdit
          Left = 136
          Top = 11
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
          Table = 'E039POR'
          Lookup = False
          AvoidSelections = True
          isNumber = True
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T000ISC'
          DataBaseField = 'USU_UsuCrm'
          Required = True
        end
        object BESenCrm: THButtonedEdit
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
          Table = 'E039POR'
          Lookup = False
          Field = 'CODPOR'
          AvoidSelections = True
          isNumber = True
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T000ISC'
          DataBaseField = 'USU_SenCrm'
          Required = True
        end
        object BEUrlCrm: THButtonedEdit
          Left = 136
          Top = 65
          Width = 353
          Height = 21
          TabOrder = 2
          Lookup = False
          AvoidSelections = False
          isNumber = True
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T000ISC'
          DataBaseField = 'USU_UrlCrm'
          Required = False
        end
      end
    end
  end
end
