unit UFPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UCCadena, Vcl.Menus, Vcl.StdCtrls,UCBase,UCNumeros;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Edit1: TEdit;
    Edit2: TEdit;
    ContarPalabras1: TMenuItem;
    ContarPalabras2: TMenuItem;
    SacarPalabra1: TMenuItem;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ContarConsonantes1: TMenuItem;
    ContarConsonantescompleto1: TMenuItem;
    CambiosdeBase1: TMenuItem;
    Binario1: TMenuItem;
    Metodos1: TMenuItem;
    ObtenerValor1: TMenuItem;
    MostrarValor1: TMenuItem;
    ObtenerPosicion1: TMenuItem;
    MostrarPosicion1: TMenuItem;
    MetodosExtra1: TMenuItem;
    Cantidadedigitiso1: TMenuItem;
    ObtenerValorEntero1: TMenuItem;
    Parcial11: TMenuItem;
    EliminarNumero1: TMenuItem;
    MostrarValorEntero1: TMenuItem;
    AdentroHaciaAfuera1: TMenuItem;
    MayorNumero1: TMenuItem;
    MenorNumero1: TMenuItem;
    Elimina1: TMenuItem;
    Practicacadena1: TMenuItem;
    Comprobarcadenasubcadena1: TMenuItem;
    ObtenerSubcadena1: TMenuItem;
    Iniciales1: TMenuItem;
    Sustituirchar1porchar21: TMenuItem;
    Edit4: TEdit;
    Edit5: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Mayusculaminuscylaviceversa1: TMenuItem;
    IntercalarMayorMenor1: TMenuItem;
    InvertirPrimeraultima1: TMenuItem;
    Literal1: TMenuItem;
    IntecarlarVocalesConsonantes1: TMenuItem;
    Practice1: TMenuItem;
    Contarveceschar1: TMenuItem;
    Palabramaslarga1: TMenuItem;
    Final1: TMenuItem;
    DevovlerhoraMenor1: TMenuItem;
    MostrarCadenalimpia1: TMenuItem;
    procedure MostrarCadena1Click(Sender: TObject);
    procedure ContarPalabras2Click(Sender: TObject);
    procedure SacarPalabra1Click(Sender: TObject);
    procedure ContarConsonantes1Click(Sender: TObject);
    procedure ContarConsonantescompleto1Click(Sender: TObject);
    procedure Binario1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MostrarValor1Click(Sender: TObject);
    procedure ObtenerValor1Click(Sender: TObject);
    procedure ObtenerPosicion1Click(Sender: TObject);
    procedure MostrarPosicion1Click(Sender: TObject);
    procedure Cantidadedigitiso1Click(Sender: TObject);
    procedure ObtenerValorEntero1Click(Sender: TObject);
    procedure EliminarNumero1Click(Sender: TObject);
    procedure MostrarValorEntero1Click(Sender: TObject);
    procedure AdentroHaciaAfuera1Click(Sender: TObject);
    procedure MayorNumero1Click(Sender: TObject);
    procedure MenorNumero1Click(Sender: TObject);
    procedure Elimina1Click(Sender: TObject);
    procedure Comprobarcadenasubcadena1Click(Sender: TObject);
    procedure ObtenerSubcadena1Click(Sender: TObject);
    procedure Iniciales1Click(Sender: TObject);
    procedure Sustituirchar1porchar21Click(Sender: TObject);
    procedure Mayusculaminuscylaviceversa1Click(Sender: TObject);
    procedure IntercalarMayorMenor1Click(Sender: TObject);
    procedure InvertirPrimeraultima1Click(Sender: TObject);
    procedure Literal1Click(Sender: TObject);
    procedure IntecarlarVocalesConsonantes1Click(Sender: TObject);
    procedure Contarveceschar1Click(Sender: TObject);
    procedure Palabramaslarga1Click(Sender: TObject);
    procedure DevovlerhoraMenor1Click(Sender: TObject);
    procedure MostrarCadenalimpia1Click(Sender: TObject);
  private
    { Private declarations }
    C:Cadena;
    B:Numero;
    D:Enteros;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AdentroHaciaAfuera1Click(Sender: TObject);
begin
  Edit2.Text:= IntToStr(D.Ordenar_Adentro_Fuera);
end;

procedure TForm1.Binario1Click(Sender: TObject);
begin
   Edit2.Text:= B.Binario(StrToInt(C.Getcadena));
end;

procedure TForm1.Cantidadedigitiso1Click(Sender: TObject);
begin
 Edit2.text := IntToStr(D.Longitud_Entero(D.Getvalue));
end;

procedure TForm1.Comprobarcadenasubcadena1Click(Sender: TObject);
begin
  Edit2.text := IntToStr(C.Comprobar_cadena_subcadena(C.GetSubcadena));
end;

procedure TForm1.ContarConsonantes1Click(Sender: TObject);
begin
  Edit2.text := IntToStr(C.Contar_Consonantes);
end;

procedure TForm1.ContarConsonantescompleto1Click(Sender: TObject);
begin
 Edit2.text := IntToStr(C.Contar_Consonantes_Todos);
end;

procedure TForm1.ContarPalabras2Click(Sender: TObject);

begin
   Edit2.text:= IntToStr(C.Contar_Palabras);
   //Espacios enblanco y seguido un caracter
end;

procedure TForm1.Contarveceschar1Click(Sender: TObject);
var letra:string;
begin
  letra:= Edit3.Text;
Edit2.text:= C.Mostrar_Posiciones_char(letra);
end;

procedure TForm1.DevovlerhoraMenor1Click(Sender: TObject);
begin
C.Quitar_coma;
C.Limpiar_Cadena;
Edit2.Text:= C.Devolver_Hora_Menor;
end;

procedure TForm1.Elimina1Click(Sender: TObject);
begin

  Edit2.text:= C.Eliminar_Palabra_Vocal_Repetida
end;

procedure TForm1.EliminarNumero1Click(Sender: TObject);
begin
  Edit2.Text:= IntToStr(D.Eliminar_Numero(StrToInt(Edit3.Text)));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  C := Cadena.create;
  B := Numero.create;
  D:= Enteros.create;
end;

procedure TForm1.Iniciales1Click(Sender: TObject);
begin
 Edit2.Text := C.Iniciales;
end;

procedure TForm1.IntecarlarVocalesConsonantes1Click(Sender: TObject);
begin
  Edit2.Text := C.Intercalar_Vocales_Consonantes;
end;

procedure TForm1.IntercalarMayorMenor1Click(Sender: TObject);
begin
 Edit2.Text := IntToStr(D.Intercalar_Mayor_Menor);
end;

procedure TForm1.InvertirPrimeraultima1Click(Sender: TObject);
begin
 Edit2.Text := C.Invertir_Primera_Ultima;
end;

procedure TForm1.Literal1Click(Sender: TObject);
begin
 Edit2.Text := (B.Literal(D.Getvalue));
end;

procedure TForm1.MayorNumero1Click(Sender: TObject);
begin
 Edit2.Text := IntToStr(D.Mayor_Numero(D.Getvalue));
end;

procedure TForm1.Mayusculaminuscylaviceversa1Click(Sender: TObject);
begin
  Edit2.Text := C.Mayusc_Minusc_Minusc_Mayusc;
end;

procedure TForm1.MenorNumero1Click(Sender: TObject);
begin
  Edit2.Text := IntToStr(D.Menor_Numero(D.Getvalue));
end;

procedure TForm1.MostrarCadena1Click(Sender: TObject);
begin
Edit2.Text := Edit1.text
end;

procedure TForm1.MostrarCadenalimpia1Click(Sender: TObject);
begin
  Edit2.text:=C.Limpiar_Cadena;
end;

procedure TForm1.MostrarPosicion1Click(Sender: TObject);
begin
   Edit2.text:= IntToStr(C.GetPosicion);
end;

procedure TForm1.MostrarValor1Click(Sender: TObject);
begin
    Edit2.text:= C.Getcadena;
end;

procedure TForm1.MostrarValorEntero1Click(Sender: TObject);
begin
    Edit2.text:= IntToStr(D.Getvalue);
end;

procedure TForm1.ObtenerPosicion1Click(Sender: TObject);
begin
C.SetPosicion(Edit3.text);
end;

procedure TForm1.ObtenerSubcadena1Click(Sender: TObject);
begin
C.SetSubcadena(Edit3.text);
end;

procedure TForm1.ObtenerValor1Click(Sender: TObject);
begin
C.Setcadena(Trim(Edit1.text));
end;

procedure TForm1.ObtenerValorEntero1Click(Sender: TObject);
begin
  D.Setvalue(StrToInt64(Edit1.text));
end;

procedure TForm1.Palabramaslarga1Click(Sender: TObject);
begin
   Edit2.text:= C.Palabra_larga;
end;

procedure TForm1.SacarPalabra1Click(Sender: TObject);
begin
  Edit2.text := C.Sacar_Palabras(C.GetPosicion);
end;

procedure TForm1.Sustituirchar1porchar21Click(Sender: TObject);
begin
  Edit2.text := C.Sustituci?n_caracteres(Edit4.text[1],Edit5.text[1]);
end;

end.
