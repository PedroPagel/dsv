object F000CAD: TF000CAD
  Left = 0
  Top = 0
  Caption = ' Cadastro(s) - Controle de Loca'#231#227'o'
  ClientHeight = 694
  ClientWidth = 618
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnMouseActivate = FormMouseActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 618
    Height = 694
    Align = alClient
    TabOrder = 0
    object Botoes: TPanel
      Left = 528
      Top = 1
      Width = 89
      Height = 692
      Align = alRight
      TabOrder = 1
      OnEnter = BotoesEnter
      object Excluir: TButton
        Left = 6
        Top = 94
        Width = 75
        Height = 25
        Caption = '&Excluir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = ExcluirClick
      end
      object Alterar: TButton
        Left = 6
        Top = 63
        Width = 75
        Height = 25
        Caption = '&Alterar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = AlterarClick
      end
      object Inserir: TButton
        Left = 6
        Top = 32
        Width = 75
        Height = 25
        Caption = '&Inserir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = InserirClick
      end
      object Cancelar: TButton
        Left = 6
        Top = 125
        Width = 75
        Height = 25
        Caption = '&Cancelar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = CancelarClick
        OnMouseActivate = CancelarMouseActivate
        OnMouseEnter = CancelarMouseEnter
        OnMouseLeave = CancelarMouseLeave
      end
      object Sair: TButton
        Left = 6
        Top = 156
        Width = 75
        Height = 25
        Caption = '&Sair'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = SairClick
        OnMouseEnter = SairMouseEnter
        OnMouseLeave = SairMouseLeave
      end
      object DBNavigator: TDBNavigator
        Left = 4
        Top = 1
        Width = 80
        Height = 25
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        TabOrder = 5
        OnClick = DBNavigatorClick
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 527
      Height = 692
      Align = alClient
      Caption = 'Panel4'
      TabOrder = 0
      object PGControl: TPageControl
        Left = 1
        Top = 97
        Width = 525
        Height = 594
        Align = alClient
        TabOrder = 1
        OnChange = PGControlChange
        OnChanging = PGControlChanging
        OnEnter = PGControlEnter
      end
      object Cabecalho: THPanel
        Left = 1
        Top = 1
        Width = 525
        Height = 96
        Align = alTop
        TabOrder = 0
        OnEnter = CabecalhoEnter
      end
    end
  end
end
