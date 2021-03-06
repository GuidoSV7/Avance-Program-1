object fmPrincipal: TfmPrincipal
  Left = 0
  Top = 0
  Caption = 'MATRIZ'
  ClientHeight = 347
  ClientWidth = 680
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
    Left = 33
    Top = 8
    Width = 465
    Height = 241
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
    Left = 33
    Top = 247
    Width = 465
    Height = 17
    Max = 150
    Min = 1
    PageSize = 0
    Position = 1
    TabOrder = 1
    OnChange = ScrollBar1Change
  end
  object ScrollBar2: TScrollBar
    Left = 496
    Top = 8
    Width = 17
    Height = 256
    Kind = sbVertical
    Max = 150
    Min = 1
    PageSize = 0
    Position = 1
    TabOrder = 2
    OnChange = ScrollBar2Change
  end
  object MainMenu1: TMainMenu
    Left = 528
    Top = 8
    object Metodos1: TMenuItem
      Caption = 'Metodos'
      object CargarMatriz1: TMenuItem
        Caption = 'Cargar Matriz'
        OnClick = CargarMatriz1Click
      end
      object Mostrarmatriz1: TMenuItem
        Caption = 'Mostrar matriz'
        OnClick = Mostrarmatriz1Click
      end
      object CargarRandomico1: TMenuItem
        Caption = 'Cargar Randomico'
        OnClick = CargarRandomico1Click
      end
      object CargarMatrizB1: TMenuItem
        Caption = 'Cargar Matriz B'
        OnClick = CargarMatrizB1Click
      end
      object MostrarResultadodedosmatrices1: TMenuItem
        Caption = ' Mostrar Resultado de dos Matrices'
        OnClick = MostrarResultadodedosmatrices1Click
      end
      object SumarConcatenacionFila1: TMenuItem
        Caption = 'Sumar Concatenacion Fila'
        OnClick = SumarConcatenacionFila1Click
      end
      object SumarConcatenacionColumna1: TMenuItem
        Caption = 'Sumar Concatenacion Columna'
        OnClick = SumarConcatenacionColumna1Click
      end
      object SumarFilaPunto1: TMenuItem
        Caption = 'Sumar Fila Coma'
        OnClick = SumarFilaPunto1Click
      end
      object ranpuesta1: TMenuItem
        Caption = 'Tranpuesta'
      end
      object Fibbonac1: TMenuItem
        Caption = 'Fibbonaci'
        OnClick = Fibbonac1Click
      end
    end
    object AplicacionaNiveldeElementos1: TMenuItem
      Caption = 'Elementos'
      object ModificarElemento1: TMenuItem
        Caption = 'Modificar Elemento'
        OnClick = ModificarElemento1Click
      end
      object ObtenerElemento1: TMenuItem
        Caption = 'Obtener Elemento'
        OnClick = ObtenerElemento1Click
      end
      object IntercmbiarElementos1: TMenuItem
        Caption = 'Intercambiar Elementos'
        OnClick = IntercmbiarElementos1Click
      end
      object ObtenerElementoMayor1: TMenuItem
        Caption = 'Obtener Elemento Mayor'
        OnClick = ObtenerElementoMayor1Click
      end
      object ObtenerElementoMenor1: TMenuItem
        Caption = 'Obtener Elemento Menor'
        OnClick = ObtenerElementoMenor1Click
      end
      object FrecuenciadeunElementp1: TMenuItem
        Caption = 'Frecuencia de un Elemento'
        OnClick = FrecuenciadeunElementp1Click
      end
      object VerificarSielelementoseencvuntre1: TMenuItem
        Caption = 'Verificar si el elemento se encuentra'
        OnClick = VerificarSielelementoseencvuntre1Click
      end
      object ObtenerposiciondelelementoMayir1: TMenuItem
        Caption = 'Obtener posicion del elemento Mayor'
        OnClick = ObtenerposiciondelelementoMayir1Click
      end
      object ObtenerlaposiciondelelementomEnor1: TMenuItem
        Caption = 'Obtener la posicion del elemento menor'
        OnClick = ObtenerlaposiciondelelementomEnor1Click
      end
      object Obtenercantidaddistintadeelementos1: TMenuItem
        Caption = 'Obtener cantidad distinta de elementos'
        OnClick = Obtenercantidaddistintadeelementos1Click
      end
      object Obtenerelelementomassrepetido1: TMenuItem
        Caption = 'Obtener el elemento mas repetido'
        OnClick = Obtenerelelementomassrepetido1Click
      end
    end
    object AplicacionaniveldeFila1: TMenuItem
      Caption = 'Filas'
      object NumerodeFilas1: TMenuItem
        Caption = 'Numero de Filas'
        OnClick = NumerodeFilas1Click
      end
      object EliminarFila1: TMenuItem
        Caption = 'Eliminar Fila..'
        OnClick = EliminarFila1Click
      end
      object InsertarFila1: TMenuItem
        Caption = 'Insertar Fila..'
        OnClick = InsertarFila1Click
      end
      object OrdenarPorFila1: TMenuItem
        Caption = 'Ordenar todas las  Fila'
        OnClick = OrdenarPorFila1Click
      end
      object OrdenarunasolaFila1: TMenuItem
        Caption = 'Ordenar una sola Fila'
        OnClick = OrdenarunasolaFila1Click
      end
    end
    object AplicacionaniveldeMatrice1: TMenuItem
      Caption = 'A nivel de Matriz'
      object VerificarsiesSimetrica1: TMenuItem
        Caption = ' Verificar si es Simetrica'
        OnClick = VerificarsiesSimetrica1Click
      end
      object SumarElementosdelaMatriz1: TMenuItem
        Caption = 'Sumar Elementos '
        OnClick = SumarElementosdelaMatriz1Click
      end
      object InvertirElementos1: TMenuItem
        Caption = 'Invertir Elementos '
        OnClick = InvertirElementos1Click
      end
      object OrdenarDiagonalPrimcipalAscendente1: TMenuItem
        Caption = 'Ordenar Diagonal Principal Ascendente'
        OnClick = OrdenarDiagonalPrimcipalAscendente1Click
      end
      object OrdenarDiagonalSegundariaAscedentemente1: TMenuItem
        Caption = 'Ordenar Diagonal Segundaria Ascedente'
        OnClick = OrdenarDiagonalSegundariaAscedentemente1Click
      end
      object CargarSerie1: TMenuItem
        Caption = 'Cargar Serie'
        OnClick = CargarSerie1Click
      end
      object CargarSerieB1: TMenuItem
        Caption = 'Cargar Serie B'
        OnClick = CargarSerieB1Click
      end
      object CargarSerieC1: TMenuItem
        Caption = 'Cargar Serie C'
        OnClick = CargarSerieC1Click
      end
      object CargarserieE1: TMenuItem
        Caption = 'Cargar serie E'
        OnClick = CargarserieE1Click
      end
      object SumarDosMatrices1: TMenuItem
        Caption = 'Sumar Dos Matrices'
      end
      object Comprobarsiestadecreceiente1: TMenuItem
        Caption = 'Comprobar si esta decreciente  '
        OnClick = Comprobarsiestadecreceiente1Click
      end
      object CantidaddeelementosDistintos1: TMenuItem
        Caption = 'Cantidad de elementos Distintos'
        OnClick = CantidaddeelementosDistintos1Click
      end
      object OrdenarMatriz1: TMenuItem
        Caption = 'Ordenar Matriz'
        OnClick = OrdenarMatriz1Click
      end
    end
    object AplicaionaNiveldeColumnas1: TMenuItem
      Caption = ' A Nivel de Columnas '
      object NumerodeColumnas1: TMenuItem
        Caption = 'Numero de Columnas'
        OnClick = NumerodeColumnas1Click
      end
    end
    object NumeroBinarios1: TMenuItem
      Caption = 'Numero Binarios'
      object ObtenerfilamayordelasumaenBinarios1: TMenuItem
        Caption = 'Obtener fila mayor de la suma en Binarios'
        OnClick = ObtenerfilamayordelasumaenBinarios1Click
      end
    end
    object MostrarFibonacci1: TMenuItem
      Caption = 'Practice 1'
      object MostrarFibonaccixceldas1: TMenuItem
        Caption = 'Mostrar Fibonacci xceldas'
        OnClick = MostrarFibonaccixceldas1Click
      end
      object MostrarMayor1: TMenuItem
        Caption = 'Mostrar Mayor '
        OnClick = MostrarMayor1Click
      end
      object Circulo1: TMenuItem
        Caption = 'Circulo'
        OnClick = Circulo1Click
      end
    end
    object Final1: TMenuItem
      Caption = 'Final'
      object ShellShortMatriz1: TMenuItem
        Caption = 'ShellShort Matriz'
        OnClick = ShellShortMatriz1Click
      end
    end
  end
end
