inherited F073VET: TF073VET
  Caption = ' Parametriza'#231#227'o de Vencimentos de Transportadora(s)'
  Visible = True
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
        DataBaseTable = 'USU_T073VET'
        object Label1: TLabel
          Left = 101
          Top = 6
          Width = 45
          Height = 13
          Caption = 'Empresa:'
        end
        object Label2: TLabel
          Left = 122
          Top = 33
          Width = 24
          Height = 13
          Caption = 'Filial:'
        end
        object Label3: TLabel
          Left = 87
          Top = 60
          Width = 59
          Height = 13
          Caption = 'Fornecedor:'
        end
        object BECodEmp: THButtonedEdit
          Left = 152
          Top = 3
          Width = 121
          Height = 21
          TabOrder = 0
          Table = 'E070EMP'
          Lookup = True
          Field = 'CodEmp'
          AvoidSelections = True
          isNumber = True
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T073VET'
          DataBaseField = 'USU_CODEMP'
          Required = True
        end
        object BECodFil: THButtonedEdit
          Left = 152
          Top = 30
          Width = 121
          Height = 21
          TabOrder = 1
          Table = 'E070FIL'
          Lookup = True
          Field = 'CodFil'
          AvoidSelections = True
          isNumber = True
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T073VET'
          DataBaseField = 'USU_CODFIL'
          Required = True
        end
        object BECodFor: THButtonedEdit
          Left = 152
          Top = 57
          Width = 121
          Height = 21
          TabOrder = 2
          Table = 'E070EMP'
          Lookup = True
          Field = 'CodFor'
          AvoidSelections = True
          isNumber = True
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T073VET'
          DataBaseField = 'USU_CODFOR'
          Required = True
        end
      end
      inherited Geral: THPanel
        object Label4: TLabel
          Left = 98
          Top = 19
          Width = 48
          Height = 13
          Caption = 'Condi'#231#227'o:'
        end
        object Label5: TLabel
          Left = 84
          Top = 46
          Width = 62
          Height = 13
          Caption = 'Observa'#231#227'o:'
        end
        object Label6: TLabel
          Left = 63
          Top = 141
          Width = 83
          Height = 13
          Caption = 'Usu'#225'rio Gera'#231#227'o:'
        end
        object Label7: TLabel
          Left = 76
          Top = 167
          Width = 70
          Height = 13
          Caption = 'Data Gera'#231#227'o:'
        end
        object Label8: TLabel
          Left = 57
          Top = 195
          Width = 89
          Height = 13
          Caption = 'Usu'#225'rio Altera'#231#227'o:'
        end
        object Label9: TLabel
          Left = 70
          Top = 221
          Width = 76
          Height = 13
          Caption = 'Data Altera'#231#227'o:'
        end
        object BEUsuGer: THButtonedEdit
          Left = 152
          Top = 138
          Width = 121
          Height = 21
          TabOrder = 3
          Lookup = False
          AvoidSelections = False
          isNumber = True
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T073VET'
          DataBaseField = 'USU_USUGER'
          Required = False
        end
        object MMObsVet: THMemo
          Left = 152
          Top = 43
          Width = 185
          Height = 89
          TabOrder = 2
          DataBaseTable = 'USU_T073VET'
          DataBaseField = 'USU_ObsVet'
        end
        object BEUsuAlt: THButtonedEdit
          Left = 152
          Top = 192
          Width = 121
          Height = 21
          TabOrder = 5
          Lookup = False
          AvoidSelections = False
          isNumber = True
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T073VET'
          DataBaseField = 'USU_USUALT'
          Required = False
        end
        object DTDatGer: THDateTimePicker
          Left = 152
          Top = 165
          Width = 121
          Height = 21
          Date = 43000.498434016200000000
          Time = 43000.498434016200000000
          TabOrder = 4
          DataBaseTable = 'USU_T073VET'
          DataBaseField = 'USU_DATGER'
        end
        object DTDatAlt: THDateTimePicker
          Left = 152
          Top = 219
          Width = 121
          Height = 21
          Date = 43000.498434016200000000
          Time = 43000.498434016200000000
          TabOrder = 6
          DataBaseTable = 'USU_T073VET'
          DataBaseField = 'USU_DATALT'
        end
        object ENConVet: THButtonedEdit
          Left = 152
          Top = 16
          Width = 65
          Height = 21
          TabOrder = 0
          Lookup = True
          Field = 'USU_ConVet'
          AvoidSelections = False
          isNumber = False
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T073VET'
          DataBaseField = 'USU_ConVet'
          Required = False
          ENumerator = 'USU_EConVen'
        end
        object ENDiaSem: THButtonedEdit
          Left = 223
          Top = 16
          Width = 65
          Height = 21
          TabOrder = 1
          Lookup = True
          AvoidSelections = False
          isNumber = False
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T073VET'
          DataBaseField = 'USU_DiaSem'
          Required = False
          ENumerator = 'LDiaSem'
        end
      end
    end
  end
end
