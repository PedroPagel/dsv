object FPesHen: TFPesHen
  Left = 0
  Top = 0
  Caption = 'Pesquisa'
  ClientHeight = 485
  ClientWidth = 915
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
    Width = 915
    Height = 37
    Align = alTop
    TabOrder = 0
    object Panel2: TPanel
      Left = 740
      Top = 1
      Width = 174
      Height = 35
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
  end
  object FGridPes: TDataSetGrid
    Left = 0
    Top = 37
    Width = 915
    Height = 448
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
    AllowNewLine = False
  end
end
