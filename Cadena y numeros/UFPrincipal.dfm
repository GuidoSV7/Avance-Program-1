object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 268
  ClientWidth = 579
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
  object Label1: TLabel
    Left = 96
    Top = 24
    Width = 132
    Height = 13
    Caption = 'Introduzca Palabra/Numero'
  end
  object Label2: TLabel
    Left = 93
    Top = 112
    Width = 135
    Height = 13
    Caption = 'Posicion/Numero/subcadena'
  end
  object Label3: TLabel
    Left = 320
    Top = 69
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object Label4: TLabel
    Left = 105
    Top = 181
    Width = 30
    Height = 13
    Caption = 'char 1'
  end
  object Label5: TLabel
    Left = 225
    Top = 181
    Width = 30
    Height = 13
    Caption = 'char 2'
  end
  object Edit1: TEdit
    Left = 96
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 280
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 96
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 93
    Top = 200
    Width = 60
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 207
    Top = 200
    Width = 58
    Height = 21
    TabOrder = 4
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 8
    object ContarPalabras1: TMenuItem
      Caption = 'Metodos Cadena'
      object ContarPalabras2: TMenuItem
        Caption = 'Contar Palabras'
        OnClick = ContarPalabras2Click
      end
      object SacarPalabra1: TMenuItem
        Caption = 'Sacar Palabra'
        OnClick = SacarPalabra1Click
      end
      object ContarConsonantes1: TMenuItem
        Caption = 'Contar Consonantes'
        OnClick = ContarConsonantes1Click
      end
      object ContarConsonantescompleto1: TMenuItem
        Caption = 'Contar Consonantes completo'
        OnClick = ContarConsonantescompleto1Click
      end
    end
    object CambiosdeBase1: TMenuItem
      Caption = 'Cambios de Base'
      object Binario1: TMenuItem
        Caption = 'Binario'
        OnClick = Binario1Click
      end
      object Literal1: TMenuItem
        Caption = 'Literal'
        OnClick = Literal1Click
      end
    end
    object Metodos1: TMenuItem
      Caption = 'Cargar'
      object ObtenerValor1: TMenuItem
        Caption = 'Obtener Valor Cadena'
        OnClick = ObtenerValor1Click
      end
      object MostrarValor1: TMenuItem
        Caption = 'Mostrar Valor Cadena'
        OnClick = MostrarValor1Click
      end
      object ObtenerPosicion1: TMenuItem
        Caption = 'Obtener Posicion'
        OnClick = ObtenerPosicion1Click
      end
      object MostrarPosicion1: TMenuItem
        Caption = 'Mostrar Posicion'
        OnClick = MostrarPosicion1Click
      end
      object ObtenerValorEntero1: TMenuItem
        Caption = 'Obtener Valor Entero'
        OnClick = ObtenerValorEntero1Click
      end
      object MostrarValorEntero1: TMenuItem
        Caption = 'Mostrar Valor Entero'
        OnClick = MostrarValorEntero1Click
      end
      object ObtenerSubcadena1: TMenuItem
        Caption = 'Obtener Subcadena'
        OnClick = ObtenerSubcadena1Click
      end
    end
    object MetodosExtra1: TMenuItem
      Caption = 'Metodos Extra'
      object Cantidadedigitiso1: TMenuItem
        Caption = 'Cantidad de digitos'
        OnClick = Cantidadedigitiso1Click
      end
      object MayorNumero1: TMenuItem
        Caption = ' Mayor Numero'
        OnClick = MayorNumero1Click
      end
      object MenorNumero1: TMenuItem
        Caption = 'Menor Numero'
        OnClick = MenorNumero1Click
      end
    end
    object Parcial11: TMenuItem
      Caption = 'Parciales'
      object EliminarNumero1: TMenuItem
        Caption = 'Eliminar Numero'
        OnClick = EliminarNumero1Click
      end
      object AdentroHaciaAfuera1: TMenuItem
        Caption = 'Adentro Hacia Afuera'
        OnClick = AdentroHaciaAfuera1Click
      end
      object Elimina1: TMenuItem
        Caption = 'Eliminar Palabra vocal repetida'
        OnClick = Elimina1Click
      end
    end
    object Practicacadena1: TMenuItem
      Caption = 'Practica cadena'
      object Comprobarcadenasubcadena1: TMenuItem
        Caption = 'Comprobar cadena subcadena'
        OnClick = Comprobarcadenasubcadena1Click
      end
      object Iniciales1: TMenuItem
        Caption = 'Iniciales'
        OnClick = Iniciales1Click
      end
      object Sustituirchar1porchar21: TMenuItem
        Caption = 'Sustituir char1 por char2'
        OnClick = Sustituirchar1porchar21Click
      end
      object Mayusculaminuscylaviceversa1: TMenuItem
        Caption = 'Mayuscula minuscula viceversa'
        OnClick = Mayusculaminuscylaviceversa1Click
      end
      object IntercalarMayorMenor1: TMenuItem
        Caption = 'Intercalar Mayor Menor'
        OnClick = IntercalarMayorMenor1Click
      end
      object InvertirPrimeraultima1: TMenuItem
        Caption = 'Invertir Primera ultima'
        OnClick = InvertirPrimeraultima1Click
      end
      object IntecarlarVocalesConsonantes1: TMenuItem
        Caption = 'Intecarlar Vocales Consonantes'
        OnClick = IntecarlarVocalesConsonantes1Click
      end
    end
    object Practice1: TMenuItem
      Caption = 'Practice'
      object Contarveceschar1: TMenuItem
        Caption = 'Contar veces char+'
        OnClick = Contarveceschar1Click
      end
      object Palabramaslarga1: TMenuItem
        Caption = 'Palabra mas larga'
        OnClick = Palabramaslarga1Click
      end
    end
    object Final1: TMenuItem
      Caption = 'Final'
      object DevovlerhoraMenor1: TMenuItem
        Caption = 'Devovler hora Menor'
        OnClick = DevovlerhoraMenor1Click
      end
      object MostrarCadenalimpia1: TMenuItem
        Caption = 'Mostrar Cadena limpia'
        OnClick = MostrarCadenalimpia1Click
      end
    end
  end
end
