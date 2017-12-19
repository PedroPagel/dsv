inherited F510LTE: TF510LTE
  Caption = 'D'#233'bito Direto Autorizado - Liga'#231#227'o de Esp'#233'cie e Tipo Interno'
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
        Height = 56
        DataBaseTable = 'USU_T510LTE'
        ExplicitHeight = 56
        object Label2: TLabel
          Left = 98
          Top = 21
          Width = 33
          Height = 13
          Caption = 'Banco:'
        end
        object BECodBan: THButtonedEdit
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
          Table = 'E030BAN'
          Lookup = True
          Field = 'CODBAN'
          AvoidSelections = True
          isNumber = False
          isAlfa = True
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T510LTE'
          DataBaseField = 'USU_CODBAN'
          Required = True
        end
      end
      inherited Geral: THPanel
        Top = 57
        Height = 634
        ExplicitTop = 57
        ExplicitHeight = 634
        object Label6: TLabel
          Left = 48
          Top = 40
          Width = 83
          Height = 13
          Caption = 'Usu'#225'rio Gera'#231#227'o:'
        end
        object Label7: TLabel
          Left = 61
          Top = 66
          Width = 70
          Height = 13
          Caption = 'Data Gera'#231#227'o:'
        end
        object Label8: TLabel
          Left = 42
          Top = 94
          Width = 89
          Height = 13
          Caption = 'Usu'#225'rio Altera'#231#227'o:'
        end
        object Label9: TLabel
          Left = 55
          Top = 120
          Width = 76
          Height = 13
          Caption = 'Data Altera'#231#227'o:'
        end
        object Label1: TLabel
          Left = 81
          Top = 11
          Width = 50
          Height = 13
          Caption = 'Descri'#231#227'o:'
        end
        object HPanel1: THPanel
          Left = 1
          Top = 216
          Width = 523
          Height = 417
          Align = alBottom
          TabOrder = 5
          object Panel2: TPanel
            Left = 1
            Top = 1
            Width = 521
            Height = 16
            Align = alTop
            Caption = 'Liga'#231#245'es'
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
            Top = 398
            Width = 521
            Height = 18
            Align = alBottom
            TabOrder = 1
          end
          object FGridMle: TDataSetGrid
            Left = 1
            Top = 17
            Width = 521
            Height = 381
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
        object BEDesLig: THButtonedEdit
          Left = 136
          Top = 10
          Width = 201
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
          Lookup = False
          AvoidSelections = False
          isNumber = False
          isAlfa = True
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T510LTE'
          DataBaseField = 'USU_DESLIG'
          Required = False
        end
        object BEUsuGer: THButtonedEdit
          Left = 136
          Top = 37
          Width = 121
          Height = 21
          TabOrder = 1
          Lookup = False
          AvoidSelections = False
          isNumber = True
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T510LTE'
          DataBaseField = 'USU_USUGER'
          Required = False
        end
        object BEUsuAlt: THButtonedEdit
          Left = 136
          Top = 91
          Width = 121
          Height = 21
          TabOrder = 3
          Lookup = False
          AvoidSelections = False
          isNumber = True
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T510LTE'
          DataBaseField = 'USU_USUALT'
          Required = False
        end
        object DTDatGer: THDateTimePicker
          Left = 136
          Top = 64
          Width = 121
          Height = 21
          Date = 43000.498434016200000000
          Time = 43000.498434016200000000
          TabOrder = 2
          DataBaseTable = 'USU_T510LTE'
          DataBaseField = 'USU_DATGER'
        end
        object DTDatAlt: THDateTimePicker
          Left = 136
          Top = 118
          Width = 121
          Height = 21
          Date = 43000.498434016200000000
          Time = 43000.498434016200000000
          TabOrder = 4
          DataBaseTable = 'USU_T510LTE'
          DataBaseField = 'USU_DATALT'
        end
      end
    end
  end
end
