object Form1: TForm1
  Left = 0
  Top = 0
  ClientHeight = 477
  ClientWidth = 686
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
    Left = 24
    Top = 32
    Width = 633
    Height = 81
    ColCount = 1
    DefaultColWidth = 48
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
    TabOrder = 0
  end
  object ScrollBar1: TScrollBar
    Left = 24
    Top = 112
    Width = 633
    Height = 33
    Max = 128
    Min = 1
    PageSize = 0
    Position = 1
    TabOrder = 1
    OnChange = ScrollBar1Change
  end
  object MainMenu1: TMainMenu
    Left = 56
    Top = 248
    object Metodos1: TMenuItem
      Caption = 'Metodos'
      object CargarVector1: TMenuItem
        Caption = 'Cargar Vector'
        OnClick = CargarVector1Click
      end
      object MostrarVector1: TMenuItem
        Caption = 'Mostrar Vector'
        OnClick = MostrarVector1Click
      end
      object Promedio1: TMenuItem
        Caption = 'Promedio'
        OnClick = Promedio1Click
      end
      object BusquedaSecuencial1: TMenuItem
        Caption = 'Busqueda Secuencial'
        OnClick = BusquedaSecuencial1Click
      end
      object Ordenamientoporintercambio1: TMenuItem
        Caption = 'Ordenamiento por intercambio'
        OnClick = Ordenamientoporintercambio1Click
      end
      object CargarVectorLetras1: TMenuItem
        Caption = 'Cargar Vector Letras'
        OnClick = CargarVectorLetras1Click
      end
    end
    object Practicas1: TMenuItem
      Caption = 'Practicas'
      object NumeroMayor1: TMenuItem
        Caption = 'Numero Mayor'
        OnClick = NumeroMayor1Click
      end
      object NumeroMenor1: TMenuItem
        Caption = 'Numero Menor'
        OnClick = NumeroMenor1Click
      end
      object Intercaladro1: TMenuItem
        Caption = 'Intercalado  Mayor Menor'
        OnClick = Intercaladro1Click
      end
      object IntercaladoMenorMayor1: TMenuItem
        Caption = 'Intercalado Menor Mayor'
        OnClick = IntercaladoMenorMayor1Click
      end
      object EscribirNombre1: TMenuItem
        Caption = 'Escribir Nombre'
      end
      object BuscarNombre1: TMenuItem
        Caption = 'Buscar Nombre'
      end
      object IntercambiarNumeros1: TMenuItem
        Caption = 'Intercambiar Numeros'
      end
      object IntercambiarPosiciones1: TMenuItem
        Caption = 'Intercambiar Posiciones'
      end
      object SumadeVector1: TMenuItem
        Caption = 'Suma Fila'
      end
      object OrdenarMayoraMenor1: TMenuItem
        Caption = 'Ordenar Mayor a Menor'
        OnClick = OrdenarMayoraMenor1Click
      end
      object OrdenarMenoraMayot1: TMenuItem
        Caption = 'Ordenar Menor a Mayor'
        OnClick = OrdenarMenoraMayot1Click
      end
    end
    object Practicas21: TMenuItem
      Caption = 'Practicas 2'
      object EncontrarNombre1: TMenuItem
        Caption = 'Intercalado Triangulo'
        OnClick = EncontrarNombre1Click
      end
      object Pares1: TMenuItem
        Caption = 'Pares'
        OnClick = Pares1Click
      end
      object Impares1: TMenuItem
        Caption = 'Impares'
        OnClick = Impares1Click
      end
      object EliminarPosicion1: TMenuItem
        Caption = 'Eliminar Posicion'
        OnClick = EliminarPosicion1Click
      end
    end
    object Final1: TMenuItem
      Caption = 'Final'
      object Cargarvectorstring1: TMenuItem
        Caption = 'Cargar vector string'
        OnClick = Cargarvectorstring1Click
      end
      object Eliminarsubcademadenombres1: TMenuItem
        Caption = 'Eliminar subcadema de nombres'
        OnClick = Eliminarsubcademadenombres1Click
      end
    end
  end
end
