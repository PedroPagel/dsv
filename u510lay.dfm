inherited F510LAY: TF510LAY
  Caption = 'Layout(s) Banc'#225'rio(s)'
  OnDestroy = FormDestroy
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
        Height = 56
        DataBaseTable = 'USU_T510AGE'
        ExplicitHeight = 56
        object Label1: TLabel
          Left = 83
          Top = 20
          Width = 47
          Height = 13
          Caption = 'Processo:'
        end
        object BECodAge: THButtonedEdit
          Left = 136
          Top = 17
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
          Table = 'E000AGE'
          Lookup = True
          Field = 'CODPRA'
          AvoidSelections = False
          isNumber = True
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T510AGE'
          DataBaseField = 'USU_CODPRA'
          Required = False
        end
      end
      inherited Geral: THPanel
        Top = 57
        Height = 634
        ExplicitTop = 57
        ExplicitHeight = 634
        object Label2: TLabel
          Left = 84
          Top = 25
          Width = 46
          Height = 13
          Caption = 'Portador:'
        end
        object Label3: TLabel
          Left = 85
          Top = 52
          Width = 45
          Height = 13
          Caption = 'Diret'#243'rio:'
        end
        object Label4: TLabel
          Left = 63
          Top = 79
          Width = 67
          Height = 13
          Caption = 'Raiz de CNPJ:'
        end
        object BECodPor: THButtonedEdit
          Left = 136
          Top = 22
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
          Lookup = True
          Field = 'CODPOR'
          AvoidSelections = False
          isNumber = True
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T510AGE'
          DataBaseField = 'USU_CODPOR'
          Required = False
        end
        object BEDirArq: THButtonedEdit
          Left = 136
          Top = 49
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
          TabOrder = 1
          Lookup = False
          AvoidSelections = False
          isNumber = True
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T510AGE'
          DataBaseField = 'USU_DIRARQ'
          Required = False
        end
        object ENRaiCnp: THButtonedEdit
          Left = 136
          Top = 76
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
          Lookup = True
          AvoidSelections = False
          isNumber = True
          isAlfa = False
          isFloat = False
          OpenDialog = False
          DataBaseTable = 'USU_T510AGE'
          DataBaseField = 'USU_RAICNP'
          Required = True
          ENumerator = 'LSimNao'
        end
        object HPanel1: THPanel
          Left = 1
          Top = 160
          Width = 523
          Height = 473
          Align = alBottom
          TabOrder = 3
          object Panel2: TPanel
            Left = 1
            Top = 1
            Width = 521
            Height = 16
            Align = alTop
            Caption = 'Campo(s)'
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
            Top = 454
            Width = 521
            Height = 18
            Align = alBottom
            TabOrder = 1
          end
          object FGridLay: TDataSetGrid
            Left = 1
            Top = 17
            Width = 521
            Height = 437
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
      end
    end
  end
end
