object FGerCla: TFGerCla
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Gerador de Classe'
  ClientHeight = 274
  ClientWidth = 443
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 443
    Height = 274
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 59
      Width = 78
      Height = 13
      Caption = 'Nome do Objeto'
    end
    object Label2: TLabel
      Left = 58
      Top = 32
      Width = 36
      Height = 13
      Caption = 'Tabela:'
    end
    object Label3: TLabel
      Left = 239
      Top = 32
      Width = 44
      Height = 13
      Caption = 'Heran'#231'a:'
    end
    object Label4: TLabel
      Left = 49
      Top = 140
      Width = 45
      Height = 13
      Caption = 'Caminho:'
    end
    object Label5: TLabel
      Left = 26
      Top = 86
      Width = 68
      Height = 13
      Caption = 'Nome da Unit:'
    end
    object Label6: TLabel
      Left = 254
      Top = 113
      Width = 3
      Height = 13
    end
    object Label7: TLabel
      Left = 67
      Top = 113
      Width = 27
      Height = 13
      Caption = 'Base:'
    end
    object ENomObj: TEdit
      Left = 100
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object BENomTab: THButtonedEdit
      Left = 100
      Top = 29
      Width = 121
      Height = 21
      TabOrder = 0
      OnExit = BENomTabExit
      Table = 'R998FLD'
      Lookup = True
      Field = 'TBLNAM'
      AvoidSelections = True
      isNumber = False
      isAlfa = False
      isFloat = False
      OpenDialog = False
      Required = False
    end
    object cbHeranca: TComboBox
      Left = 289
      Top = 29
      Width = 145
      Height = 21
      Hint = 'Mantenha nenhum se n'#227'o for usar a BPL HBase.bpl!'
      Style = csDropDownList
      ItemIndex = 0
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      Text = 'Tabela de Usu'#225'rio'
      Items.Strings = (
        'Tabela de Usu'#225'rio'
        'Tabela Sistema')
    end
    object Executar: TButton
      Left = 170
      Top = 164
      Width = 75
      Height = 25
      Caption = '&Executar'
      TabOrder = 6
      OnClick = ExecutarClick
    end
    object BEDirFil: THButtonedEdit
      Left = 100
      Top = 137
      Width = 321
      Height = 21
      ReadOnly = True
      TabOrder = 5
      Lookup = True
      AvoidSelections = False
      isNumber = False
      isAlfa = False
      isFloat = False
      OpenDialog = True
      Required = False
    end
    object ENomUni: TEdit
      Left = 100
      Top = 83
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object Button1: TButton
      Left = 320
      Top = 164
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 7
      OnClick = Button1Click
    end
    object cbBase: TComboBox
      Left = 103
      Top = 110
      Width = 145
      Height = 21
      Hint = 'Mantenha nenhum se n'#227'o for usar a BPL HBase.bpl!'
      Style = csDropDownList
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Items.Strings = (
        'SENIOR52'
        'SENIOR53'
        'SENIOR55')
    end
  end
end
