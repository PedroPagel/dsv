inherited F097GFI: TF097GFI
  Caption = 'F097GFI - Cadastro de Grupo(s) de Fornecedores de Imorta'#231#227'o'
  ClientHeight = 747
  OnDestroy = FormDestroy
  ExplicitWidth = 634
  ExplicitHeight = 785
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 747
    ExplicitHeight = 747
    inherited Botoes: TPanel
      Height = 745
      ExplicitHeight = 745
      inherited DBNavigator: TDBNavigator
        Hints.Strings = ()
      end
    end
    inherited Panel4: TPanel
      Height = 745
      ExplicitHeight = 745
      inherited Cabecalho: THPanel
        Height = 50
        DataBaseTable = 'USU_T097GFI'
        ExplicitHeight = 50
        object Label2: TLabel
          Left = 97
          Top = 21
          Width = 33
          Height = 13
          Caption = 'Grupo:'
        end
        object BECodGfi: THButtonedEdit
          Left = 136
          Top = 18
          Width = 121
          Height = 21
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          RightButton.ImageIndex = 0
          RightButton.Visible = True
          TabOrder = 0
          Table = 'USU_T097GFI'
          Lookup = True
          Field = 'USU_CODGFI'
          AvoidSelections = True
          isNumber = False
          isAlfa = True
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T097GFI'
          DataBaseField = 'USU_CODGFI'
          Required = True
        end
      end
      inherited Geral: THPanel
        Top = 51
        Height = 693
        ExplicitTop = 51
        ExplicitHeight = 693
        object Label6: TLabel
          Left = 47
          Top = 316
          Width = 83
          Height = 13
          Caption = 'Usu'#225'rio Gera'#231#227'o:'
        end
        object Label7: TLabel
          Left = 60
          Top = 342
          Width = 70
          Height = 13
          Caption = 'Data Gera'#231#227'o:'
        end
        object Label8: TLabel
          Left = 41
          Top = 370
          Width = 89
          Height = 13
          Caption = 'Usu'#225'rio Altera'#231#227'o:'
        end
        object Label9: TLabel
          Left = 54
          Top = 396
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
        object Label14: TLabel
          Left = 86
          Top = 41
          Width = 45
          Height = 13
          Caption = 'Situa'#231#227'o:'
        end
        object Label1: TLabel
          Left = 69
          Top = 68
          Width = 62
          Height = 13
          Caption = 'Observa'#231#227'o:'
        end
        object Label5: TLabel
          Left = 16
          Top = 262
          Width = 114
          Height = 13
          Caption = 'Percentual de Despesa:'
        end
        object Label4: TLabel
          Left = 31
          Top = 289
          Width = 100
          Height = 13
          Caption = 'Dia(s) para Registro:'
        end
        object BEUsuGer: THButtonedEdit
          Left = 135
          Top = 313
          Width = 121
          Height = 21
          TabOrder = 5
          Lookup = False
          AvoidSelections = False
          isNumber = True
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T097GFI'
          DataBaseField = 'USU_USUGER'
          Required = False
        end
        object BEUsuAlt: THButtonedEdit
          Left = 135
          Top = 367
          Width = 121
          Height = 21
          TabOrder = 7
          Lookup = False
          AvoidSelections = False
          isNumber = True
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T097GFI'
          DataBaseField = 'USU_USUALT'
          Required = False
        end
        object DTDatGer: THDateTimePicker
          Left = 135
          Top = 340
          Width = 121
          Height = 21
          Date = 43000.498434016200000000
          Time = 43000.498434016200000000
          TabOrder = 6
          DataBaseTable = 'USU_T097GFI'
          DataBaseField = 'USU_DATGER'
        end
        object DTDatAlt: THDateTimePicker
          Left = 135
          Top = 394
          Width = 121
          Height = 21
          Date = 43000.498434016200000000
          Time = 43000.498434016200000000
          TabOrder = 8
          DataBaseTable = 'USU_T097GFI'
          DataBaseField = 'USU_DATALT'
        end
        object BEDesGfi: THButtonedEdit
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
          Table = 'USU_T097GFI'
          Lookup = False
          Field = 'USU_DesCon'
          AvoidSelections = True
          isNumber = False
          isAlfa = True
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T097GFI'
          DataBaseField = 'USU_DesGfi'
          Required = True
        end
        object BESitReg: THButtonedEdit
          Left = 136
          Top = 38
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
          TabOrder = 1
          Table = 'E099USU'
          Lookup = True
          Field = 'USU_SitReg'
          AvoidSelections = True
          isNumber = False
          isAlfa = True
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T097GFI'
          DataBaseField = 'USU_SitReg'
          Required = True
          ENumerator = 'LSitReg'
        end
        object BEObsGfi: THMemo
          Left = 136
          Top = 65
          Width = 257
          Height = 188
          Align = alCustom
          TabOrder = 2
          DataBaseTable = 'USU_T097GFI'
          DataBaseField = 'USU_ObsGfi'
        end
        object HPanel1: THPanel
          Left = 1
          Top = 420
          Width = 523
          Height = 272
          Align = alBottom
          TabOrder = 9
          object Panel2: TPanel
            Left = 1
            Top = 1
            Width = 521
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
            Top = 253
            Width = 521
            Height = 18
            Align = alBottom
            TabOrder = 1
          end
          object FGridCon: TDataSetGrid
            Left = 1
            Top = 17
            Width = 521
            Height = 236
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
        object BEPerDes: THButtonedEdit
          Left = 135
          Top = 259
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
          DataBaseTable = 'USU_T097GFI'
          DataBaseField = 'USU_PerDes'
          Required = False
        end
        object BEDiaReg: THButtonedEdit
          Left = 136
          Top = 286
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
          DataBaseTable = 'USU_T097GFI'
          DataBaseField = 'USU_DiaReg'
          Required = False
        end
      end
    end
  end
end
