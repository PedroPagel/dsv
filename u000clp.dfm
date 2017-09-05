inherited F000CLP: TF000CLP
  Caption = 'F000CLP - Cadastro(s) - Controle de Loca'#231#227'o'
  OnCreate = FormCreate
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
      inherited PGControl: TPageControl
        Top = 112
        Height = 579
        ActivePage = USU_T090IND
        ExplicitTop = 112
        ExplicitHeight = 579
        object USU_T090IND: TTabSheet
          Caption = #205'ndice'
          object Label4: TLabel
            Left = 7
            Top = 113
            Width = 104
            Height = 13
            Caption = 'Usu'#225'rio Respons'#225'vel:'
          end
          object Label5: TLabel
            Left = 236
            Top = 61
            Width = 6
            Height = 13
            Caption = 'a'
          end
          object Label6: TLabel
            Left = 68
            Top = 58
            Width = 43
            Height = 13
            Caption = 'Vig'#234'ncia:'
          end
          object Label7: TLabel
            Left = 36
            Top = 141
            Width = 75
            Height = 13
            Caption = 'Valor do '#205'ndice:'
          end
          object Label8: TLabel
            Left = 49
            Top = 168
            Width = 62
            Height = 13
            Caption = 'Observa'#231#227'o:'
          end
          object Label9: TLabel
            Left = 41
            Top = 263
            Width = 70
            Height = 13
            Caption = 'Data Gera'#231#227'o:'
          end
          object Label10: TLabel
            Left = 28
            Top = 290
            Width = 83
            Height = 13
            Caption = 'Usu'#225'rio Gera'#231#227'o:'
          end
          object Label11: TLabel
            Left = 35
            Top = 317
            Width = 76
            Height = 13
            Caption = 'Data Altera'#231#227'o:'
          end
          object Label12: TLabel
            Left = 22
            Top = 344
            Width = 89
            Height = 13
            Caption = 'Usu'#225'rio Altera'#231#227'o:'
          end
          object Label3: TLabel
            Left = 37
            Top = 83
            Width = 74
            Height = 13
            Caption = 'C'#243'digo do BCB:'
          end
          object T090IND_USU_DatFin: THDateTimePicker
            Left = 248
            Top = 56
            Width = 113
            Height = 21
            Date = 42963.706988946760000000
            Time = 42963.706988946760000000
            TabOrder = 1
            DataBaseTable = 'USU_T090IND'
            DataBaseField = 'USU_DatFin'
          end
          object T090IND_USU_UsuRes: THButtonedEdit
            Left = 117
            Top = 110
            Width = 121
            Height = 21
            TabOrder = 3
            Table = 'E099USU'
            Lookup = True
            Field = 'CODUSU'
            AvoidSelections = False
            isNumber = False
            isAlfa = False
            isFloat = False
            OpenDialog = False
            DataBaseTable = 'USU_T090IND'
            DataBaseField = 'USU_UsuRes'
            Required = False
          end
          object T090IND_USU_DatIni: THDateTimePicker
            Left = 117
            Top = 56
            Width = 113
            Height = 21
            Date = 42963.706988946760000000
            Time = 42963.706988946760000000
            TabOrder = 0
            DataBaseTable = 'USU_T090IND'
            DataBaseField = 'USU_DatIni'
          end
          object T090IND_USU_VlrInd: THButtonedEdit
            Left = 117
            Top = 137
            Width = 121
            Height = 21
            TabOrder = 4
            Lookup = False
            AvoidSelections = False
            isNumber = False
            isAlfa = False
            isFloat = False
            OpenDialog = False
            DataBaseTable = 'USU_T090IND'
            DataBaseField = 'USU_VlrInd'
            Required = False
          end
          object T090IND_USU_UsuGer: THButtonedEdit
            Left = 117
            Top = 287
            Width = 113
            Height = 21
            TabOrder = 7
            Lookup = False
            AvoidSelections = False
            isNumber = False
            isAlfa = False
            isFloat = False
            OpenDialog = False
            DataBaseTable = 'USU_T090IND'
            DataBaseField = 'USU_UsuGer'
            Required = False
          end
          object T090IND_USU_UsuAlt: THButtonedEdit
            Left = 117
            Top = 341
            Width = 113
            Height = 21
            TabOrder = 9
            Lookup = False
            AvoidSelections = False
            isNumber = False
            isAlfa = False
            isFloat = False
            OpenDialog = False
            DataBaseTable = 'USU_T090IND'
            DataBaseField = 'USU_UsuAlt'
            Required = False
          end
          object T090IND_USU_DatGer: THDateTimePicker
            Left = 117
            Top = 260
            Width = 113
            Height = 21
            Date = 42963.706988946760000000
            Time = 42963.706988946760000000
            TabOrder = 6
            DataBaseTable = 'USU_T090IND'
            DataBaseField = 'USU_DatGer'
          end
          object T090IND_USU_DatAlt: THDateTimePicker
            Left = 117
            Top = 314
            Width = 113
            Height = 21
            Date = 42963.706988946760000000
            Time = 42963.706988946760000000
            TabOrder = 8
            DataBaseTable = 'USU_T090IND'
            DataBaseField = 'USU_DatAlt'
          end
          object MovBCB: TButton
            Left = 6
            Top = 389
            Width = 75
            Height = 25
            Caption = '&Mov. BCB'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            OnClick = SairClick
            OnMouseEnter = SairMouseEnter
            OnMouseLeave = SairMouseLeave
          end
          object T090IND_USU_CodDbc: THButtonedEdit
            Left = 117
            Top = 83
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
            Table = 'USU_T000DBC'
            Lookup = True
            Field = 'USU_CodDbc'
            AvoidSelections = False
            isNumber = False
            isAlfa = False
            isFloat = False
            OpenDialog = False
            DataBaseTable = 'USU_T090IND'
            DataBaseField = 'USU_CodDbc'
            Required = False
          end
          object T090IND_USU_ObsInd: THMemo
            Left = 117
            Top = 165
            Width = 185
            Height = 89
            TabOrder = 5
            DataBaseTable = 'USU_T090IND'
            DataBaseField = 'USU_ObsInd'
          end
          object Cabecalho_T090IND: THPanel
            Left = 0
            Top = 0
            Width = 517
            Height = 50
            Align = alTop
            TabOrder = 11
            DataBaseTable = 'USU_T090IND'
            object Label2: TLabel
              Left = 78
              Top = 11
              Width = 33
              Height = 13
              Caption = #205'ndice:'
            end
            object T090IND_USU_IndFin: THButtonedEdit
              Left = 117
              Top = 8
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
              IndexFields = 'USU_INDFIN'
              Table = 'USU_T090IND'
              Lookup = True
              Field = 'USU_INDFIN'
              AvoidSelections = False
              isNumber = False
              isAlfa = False
              isFloat = False
              OpenDialog = False
              DataBaseTable = 'USU_T090IND'
              DataBaseField = 'USU_IndFin'
              Required = True
            end
          end
        end
        object USU_T160CLP: TTabSheet
          Caption = 'Movimentar'
          ImageIndex = 1
          object Label15: TLabel
            Left = 236
            Top = 29
            Width = 6
            Height = 13
            Caption = 'a'
          end
          object Label16: TLabel
            Left = 68
            Top = 26
            Width = 43
            Height = 13
            Caption = 'Vig'#234'ncia:'
          end
          object Label17: TLabel
            Left = 63
            Top = 54
            Width = 48
            Height = 13
            Caption = 'Locat'#225'rio:'
          end
          object Label18: TLabel
            Left = 83
            Top = 81
            Width = 28
            Height = 13
            Caption = 'Valor:'
          end
          object Label19: TLabel
            Left = 57
            Top = 108
            Width = 54
            Height = 13
            Caption = 'Patrim'#244'nio:'
          end
          object Label20: TLabel
            Left = 41
            Top = 135
            Width = 70
            Height = 13
            Caption = 'Data Gera'#231#227'o:'
          end
          object Label21: TLabel
            Left = 28
            Top = 162
            Width = 83
            Height = 13
            Caption = 'Usu'#225'rio Gera'#231#227'o:'
          end
          object Label22: TLabel
            Left = 35
            Top = 189
            Width = 76
            Height = 13
            Caption = 'Data Altera'#231#227'o:'
          end
          object Label23: TLabel
            Left = 22
            Top = 216
            Width = 89
            Height = 13
            Caption = 'Usu'#225'rio Altera'#231#227'o:'
          end
          object T160CLP_USU_VigFim: THDateTimePicker
            Left = 248
            Top = 24
            Width = 113
            Height = 21
            Date = 42963.706988946760000000
            Time = 42963.706988946760000000
            TabOrder = 1
            DataBaseTable = 'USU_T160CLP'
            DataBaseField = 'USU_VigFim'
          end
          object T160CLP_USU_IniVig: THDateTimePicker
            Left = 117
            Top = 24
            Width = 113
            Height = 21
            Date = 42963.706988946760000000
            Time = 42963.706988946760000000
            TabOrder = 0
            DataBaseTable = 'USU_T160CLP'
            DataBaseField = 'USU_IniVig'
          end
          object T160CLP_USU_CodCli: THButtonedEdit
            Left = 117
            Top = 51
            Width = 121
            Height = 21
            TabOrder = 2
            Table = 'E085CLI'
            Lookup = True
            AvoidSelections = False
            isNumber = False
            isAlfa = False
            isFloat = False
            OpenDialog = False
            DataBaseTable = 'USU_T160CLP'
            DataBaseField = 'USU_CodCli'
            Required = False
          end
          object T160CLP_USU_VlrCtr: THButtonedEdit
            Left = 117
            Top = 78
            Width = 121
            Height = 21
            TabOrder = 3
            Lookup = False
            AvoidSelections = False
            isNumber = False
            isAlfa = False
            isFloat = False
            OpenDialog = False
            DataBaseTable = 'USU_T160CLP'
            DataBaseField = 'USU_VlrCtr'
            Required = False
          end
          object T160CLP_USU_CodBem: THButtonedEdit
            Left = 117
            Top = 105
            Width = 121
            Height = 21
            TabOrder = 4
            Table = 'E670BEM'
            Lookup = True
            Field = 'CODBEM'
            AvoidSelections = False
            isNumber = False
            isAlfa = False
            isFloat = False
            OpenDialog = False
            DataBaseTable = 'USU_T160CLP'
            DataBaseField = 'USU_CodBem'
            Required = False
          end
          object T160CLP_USU_UsuGer: THButtonedEdit
            Left = 117
            Top = 159
            Width = 113
            Height = 21
            TabOrder = 6
            Lookup = False
            AvoidSelections = False
            isNumber = False
            isAlfa = False
            isFloat = False
            OpenDialog = False
            DataBaseTable = 'USU_T160CLP'
            DataBaseField = 'USU_UsuGer'
            Required = False
          end
          object T160CLP_USU_UsuAlt: THButtonedEdit
            Left = 117
            Top = 213
            Width = 113
            Height = 21
            TabOrder = 8
            Lookup = False
            AvoidSelections = False
            isNumber = False
            isAlfa = False
            isFloat = False
            OpenDialog = False
            DataBaseTable = 'USU_T160CLP'
            DataBaseField = 'USU_UsuAlt'
            Required = False
          end
          object T160CLP_USU_DatGer: THDateTimePicker
            Left = 117
            Top = 132
            Width = 113
            Height = 21
            Date = 42963.706988946760000000
            Time = 42963.706988946760000000
            TabOrder = 5
            DataBaseTable = 'USU_T160CLP'
            DataBaseField = 'USU_DatGer'
          end
          object T160CLP_USU_DatAlt: THDateTimePicker
            Left = 117
            Top = 186
            Width = 113
            Height = 21
            Date = 42963.706988946760000000
            Time = 42963.706988946760000000
            TabOrder = 7
            DataBaseTable = 'USU_T160CLP'
            DataBaseField = 'USU_DatAlt'
          end
        end
      end
      inherited Cabecalho: THPanel
        Height = 111
        DataBaseTable = 'USU_T160CLP'
        ExplicitHeight = 111
        object Label14: TLabel
          Left = 70
          Top = 20
          Width = 45
          Height = 13
          Caption = 'Empresa:'
        end
        object Label13: TLabel
          Left = 91
          Top = 48
          Width = 24
          Height = 13
          Caption = 'Filial:'
        end
        object Label1: TLabel
          Left = 68
          Top = 75
          Width = 47
          Height = 13
          Caption = 'Contrato:'
        end
        object T160CLP_USU_CodEmp: THButtonedEdit
          Left = 121
          Top = 18
          Width = 121
          Height = 21
          TabOrder = 0
          Table = 'E070EMP'
          Lookup = True
          Field = 'CODEMP'
          AvoidSelections = False
          isNumber = False
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T160CLP'
          DataBaseField = 'USU_CodEmp'
          Required = True
        end
        object T160CLP_USU_CodFil: THButtonedEdit
          Left = 121
          Top = 45
          Width = 121
          Height = 21
          TabOrder = 1
          Table = 'E070FIL'
          Lookup = True
          Field = 'CODFIL'
          AvoidSelections = False
          isNumber = False
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T160CLP'
          DataBaseField = 'USU_CodFil'
          Required = True
        end
        object T160CLP_USU_NumCtr: THButtonedEdit
          Left = 121
          Top = 72
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
          IndexFields = 'NUMCTR'
          Table = 'E160CTR'
          Lookup = True
          Field = 'NUMCTR'
          AvoidSelections = False
          isNumber = False
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T160CLP'
          DataBaseField = 'USU_NumCtr'
          Required = True
        end
      end
    end
  end
end
