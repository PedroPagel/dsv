object FPesHen: TFPesHen
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Pesquisa'
  ClientHeight = 498
  ClientWidth = 986
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 986
    Height = 64
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Top = 11
      Width = 37
      Height = 13
      Caption = 'Campo:'
    end
    object Label2: TLabel
      Left = 14
      Top = 38
      Width = 28
      Height = 13
      Caption = 'Filtro:'
    end
    object Panel2: TPanel
      Left = 811
      Top = 1
      Width = 174
      Height = 62
      Align = alRight
      TabOrder = 0
      object Sair: TButton
        Left = 95
        Top = 5
        Width = 75
        Height = 25
        Caption = '&Sair'
        TabOrder = 0
        OnClick = SairClick
      end
      object OK: TButton
        Left = 14
        Top = 5
        Width = 75
        Height = 25
        Caption = '&OK'
        TabOrder = 1
        OnClick = OKClick
      end
    end
    object ECampo: TEdit
      Left = 48
      Top = 8
      Width = 225
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
    object EFiltro: TEdit
      Left = 48
      Top = 35
      Width = 566
      Height = 21
      TabOrder = 2
    end
    object CBFiltrar: TCheckBox
      Left = 752
      Top = 37
      Width = 48
      Height = 17
      Caption = '&Filtrar'
      TabOrder = 3
      OnClick = CBFiltrarClick
    end
    object CBFiltros: TComboBox
      Left = 624
      Top = 35
      Width = 115
      Height = 21
      Style = csDropDownList
      BiDiMode = bdRightToLeftReadingOnly
      ParentBiDiMode = False
      TabOrder = 4
      Items.Strings = (
        'Igual'
        'Contendo')
    end
  end
  object FGridPes: TDataSetGrid
    Left = 0
    Top = 64
    Width = 986
    Height = 434
    Align = alClient
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = FGridPesDblClick
    OnTitleClick = FGridPesTitleClick
    OnEnterLine = FGridPesEnterLine
    AllowNewLine = False
  end
end
