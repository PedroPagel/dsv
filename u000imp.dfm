object F000IMP: TF000IMP
  Left = 0
  Top = 0
  Caption = 'F000IMP - IMPORTADOR'
  ClientHeight = 101
  ClientWidth = 413
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 413
    Height = 101
    Align = alClient
    TabOrder = 0
    object pnl2: TPanel
      Left = 1
      Top = 1
      Width = 411
      Height = 99
      Align = alClient
      TabOrder = 0
      object Label1: TLabel
        Left = 18
        Top = 27
        Width = 45
        Height = 13
        Caption = 'Diret'#243'rio:'
      end
      object BEDirFin: THButtonedEdit
        Left = 69
        Top = 24
        Width = 321
        Height = 21
        ReadOnly = True
        TabOrder = 0
        Lookup = True
        AvoidSelections = False
        isNumber = False
        isAlfa = False
        isFloat = False
        OpenDialog = True
        Required = False
      end
      object Importar: TButton
        Left = 69
        Top = 51
        Width = 75
        Height = 25
        Caption = '&Importar'
        TabOrder = 1
        OnClick = ImportarClick
      end
    end
  end
end
