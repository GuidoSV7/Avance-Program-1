object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 104
    Top = 21
    Width = 43
    Height = 13
    Caption = 'NUMERO'
  end
  object Label2: TLabel
    Left = 104
    Top = 85
    Width = 35
    Height = 13
    Caption = 'BASE N'
  end
  object Label3: TLabel
    Left = 320
    Top = 40
    Width = 59
    Height = 13
    Caption = 'RESULTADO'
  end
  object Edit1: TEdit
    Left = 80
    Top = 40
    Width = 97
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 80
    Top = 104
    Width = 97
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 256
    Top = 59
    Width = 183
    Height = 21
    TabOrder = 2
  end
  object MainMenu1: TMainMenu
    Left = 8
    object Binario1: TMenuItem
      Caption = 'Binario'
      OnClick = Binario1Click
    end
    object Hexadecimal1: TMenuItem
      Caption = 'Hexadecimal'
      OnClick = Hexadecimal1Click
    end
    object BaseN1: TMenuItem
      Caption = 'BaseN'
      OnClick = BaseN1Click
    end
    object Romano1: TMenuItem
      Caption = 'Romano'
      OnClick = Romano1Click
    end
    object Literal1: TMenuItem
      Caption = 'Literal'
      OnClick = Literal1Click
    end
  end
end
