unit UFPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids,UCVector, Vcl.Menus,
  Vcl.StdCtrls,Math;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    MainMenu1: TMainMenu;
    Metodos1: TMenuItem;
    Promedio1: TMenuItem;
    ScrollBar1: TScrollBar;
    CargarVector1: TMenuItem;
    MostrarVector1: TMenuItem;
    BusquedaSecuencial1: TMenuItem;
    Ordenamientoporintercambio1: TMenuItem;
    Practicas1: TMenuItem;
    NumeroMayor1: TMenuItem;
    NumeroMenor1: TMenuItem;
    Intercaladro1: TMenuItem;
    IntercaladoMenorMayor1: TMenuItem;
    EscribirNombre1: TMenuItem;
    BuscarNombre1: TMenuItem;
    IntercambiarNumeros1: TMenuItem;
    IntercambiarPosiciones1: TMenuItem;
    SumadeVector1: TMenuItem;
    OrdenarMayoraMenor1: TMenuItem;
    OrdenarMenoraMayot1: TMenuItem;
    Practicas21: TMenuItem;
    EncontrarNombre1: TMenuItem;
    Pares1: TMenuItem;
    Impares1: TMenuItem;
    EliminarPosicion1: TMenuItem;
    CargarVectorLetras1: TMenuItem;
    Final1: TMenuItem;
    Cargarvectorstring1: TMenuItem;
    Eliminarsubcademadenombres1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Promedio1Click(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure CargarVector1Click(Sender: TObject);
    procedure MostrarVector1Click(Sender: TObject);
    procedure BusquedaSecuencial1Click(Sender: TObject);
    procedure Ordenamientoporintercambio1Click(Sender: TObject);
    procedure NumeroMayor1Click(Sender: TObject);
    procedure NumeroMenor1Click(Sender: TObject);
    procedure OrdenarMayoraMenor1Click(Sender: TObject);
    procedure OrdenarMenoraMayot1Click(Sender: TObject);
    procedure Intercaladro1Click(Sender: TObject);
    procedure MostrarMayorMenor1Click(Sender: TObject);
    procedure IntercaladoMenorMayor1Click(Sender: TObject);
    procedure EncontrarNombre1Click(Sender: TObject);
    procedure Pares1Click(Sender: TObject);
    procedure Impares1Click(Sender: TObject);
    procedure EliminarPosicion1Click(Sender: TObject);
    procedure CargarVectorLetras1Click(Sender: TObject);
    procedure Cargarvectorstring1Click(Sender: TObject);
    procedure Eliminarsubcademadenombres1Click(Sender: TObject);

  private
    { Private declarations }
    X : Vector;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BusquedaSecuencial1Click(Sender: TObject);
Var
    Valor : Real;
    p  : Word;
begin
     Valor :=StrToFloat( InputBox('Busqueda','Digite valor a buscar','0'));
     P:=X.BusquedaSecuencial(Valor);
     if P>0 then showMessage('Se encuentra en la posicion['+IntToStr(P)+']')
     Else showMessage('No se encuentra');

end;

procedure TForm1.CargarVector1Click(Sender: TObject);
Var
      I : Word;
begin
     X.Dimensionar(StringGrid1.ColCount);
     for I := 1 to X.Dim do
     Begin
           X.ModElement(I,StringGrid1.Cells[I-1,0]);
     End;
     X.Mayor_Menor;
     X.Menor_Mayor;
    // X.Pares;
     //X.Impares;

end;


procedure TForm1.CargarVectorLetras1Click(Sender: TObject);
Var
      I : Word;
begin
     X.Dimensionar(StringGrid1.ColCount);
     for I := 1 to X.Dim do
     Begin
           X.Mod_Element_Letras(I,StringGrid1.Cells[I-1,0]);
     End;

end;


procedure TForm1.Cargarvectorstring1Click(Sender: TObject);
Var
      I : Word;
begin
     X.Dimensionar(StringGrid1.ColCount);
     for I := 1 to X.Dim do
     Begin
           X.ModElement(I,StringGrid1.Cells[I-1,0]);
     End;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
    X:=Vector.Create;
end;

procedure TForm1.Impares1Click(Sender: TObject);
begin
  X.Impares_objeto;
end;

procedure TForm1.IntercaladoMenorMayor1Click(Sender: TObject);
begin
  X.Intercalado_Menor_Mayor;
end;

procedure TForm1.Intercaladro1Click(Sender: TObject);
begin
   X.Intercalado_Mayor_Menor;
end;

procedure TForm1.MostrarMayorMenor1Click(Sender: TObject);
Var
      I : Word;
begin
     StringGrid1.ColCount:=X.Dim;
     for I := 1 to X.Dim do
     Begin
          StringGrid1.Cells[I-1,0]:=FloatTostr(X.getElement_Mayor_Menor(I));
     End;

end;

procedure TForm1.MostrarVector1Click(Sender: TObject);
Var
      I : Word;
begin
     StringGrid1.ColCount:=X.Dim;
     for I := 1 to X.Dim do
     Begin
          StringGrid1.Cells[I-1,0]:=X.getElement(I);
     End;

end;


procedure TForm1.EliminarPosicion1Click(Sender: TObject);
var Elemento:integer;
begin
    Elemento :=StrToInt( InputBox('Busqueda','Digite valor a buscar','0'));

  X.DelElement(Elemento);
end;

procedure TForm1.Eliminarsubcademadenombres1Click(Sender: TObject);
var Subcadena:string;
begin
  Subcadena:= InputBox('Busqueda','Digite valor a buscar','0');
  X.Elimar_Parametro_Nombre(Subcadena);
end;

procedure TForm1.EncontrarNombre1Click(Sender: TObject);
begin
   X.Intercalado_Triangulo;
end;

procedure TForm1.NumeroMayor1Click(Sender: TObject);
var Numero:Real;
begin
Numero:= x.getMax;
     showMessage('El numero mayor es: ['+FloatToStr(Numero)+']')
end;

procedure TForm1.NumeroMenor1Click(Sender: TObject);
var Numero:Real;
begin
Numero:= x.Numero_Menor;
     showMessage('El numero menor es: ['+FloatToStr(Numero)+']')
end;

procedure TForm1.Ordenamientoporintercambio1Click(Sender: TObject);
begin
     X.OrdenacionIntercambio;
end;

procedure TForm1.OrdenarMayoraMenor1Click(Sender: TObject);
//Var
     // I : Word;
begin
{
     StringGrid1.ColCount:=X.Dim;
     for I := 1 to X.Dim do
     Begin
          StringGrid1.Cells[I-1,0]:=FloatTostr(X.getElement_Mayor_Menor(I));
     End;   }

     //Este c?digo de abajo es para trabajar con el objeto
     X.Mayor_Menor_objeto;
end;

procedure TForm1.OrdenarMenoraMayot1Click(Sender: TObject);
//Var
      //I : Word;
begin   {
     StringGrid1.ColCount:=X.Dim;
     for I := 1 to X.Dim do
     Begin
          StringGrid1.Cells[I-1,0]:=FloatTostr(X.getElement_Menor_Mayor(I));
     End;  }
          //Este c?digo de abajo es para trabajar con el objeto
     X.Menor_Mayor_objeto;

end;

procedure TForm1.Pares1Click(Sender: TObject);
begin
    X.Pares_objeto;
end;

procedure TForm1.Promedio1Click(Sender: TObject);
begin
     X.getAVG;
end;

procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
     StringGrid1.ColCount:=ScrollBar1.Position;
end;



end.
