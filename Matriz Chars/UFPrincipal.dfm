object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Matriz'
  ClientHeight = 377
  ClientWidth = 599
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    Left = 8
    Top = 24
    Width = 497
    Height = 153
    ColCount = 1
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    ParentFont = False
    TabOrder = 0
  end
  object ScrollBar1: TScrollBar
    Left = 8
    Top = 176
    Width = 497
    Height = 17
    PageSize = 0
    TabOrder = 1
    OnChange = ScrollBar1Change
  end
  object ScrollBar2: TScrollBar
    Left = 504
    Top = 24
    Width = 17
    Height = 169
    Kind = sbVertical
    PageSize = 0
    TabOrder = 2
    OnChange = ScrollBar2Change
  end
  object MainMenu1: TMainMenu
    Left = 224
    Top = 312
    object Menu1: TMenuItem
      Caption = 'Menu'
      object CargarMatriz1: TMenuItem
        Caption = 'Cargar Matriz'
        OnClick = CargarMatriz1Click
      end
      object MostrarMatriz1: TMenuItem
        Caption = 'Mostrar Matriz'
        OnClick = MostrarMatriz1Click
      end
      object ModificarCaracter1: TMenuItem
        Caption = 'Modificar Caracter'
        OnClick = ModificarCaracter1Click
      end
      object EncontrarNombre1: TMenuItem
        Caption = 'Encontrar Nombre'
        OnClick = EncontrarNombre1Click
      end
    end
  end
end
