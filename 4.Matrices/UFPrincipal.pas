unit UFPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.Menus,UcMatriz,Math;

type
  TfmPrincipal = class(TForm)
    StringGrid1: TStringGrid;
    ScrollBar1: TScrollBar;
    ScrollBar2: TScrollBar;
    MainMenu1: TMainMenu;
    Metodos1: TMenuItem;
    CargarMatriz1: TMenuItem;
    Mostrarmatriz1: TMenuItem;
    CargarRandomico1: TMenuItem;
    NumerodeFilas1: TMenuItem;
    NumerodeColumnas1: TMenuItem;
    ObtenerElemento1: TMenuItem;
    ModificarElemento1: TMenuItem;
    VerificarsiesSimetrica1: TMenuItem;
    AplicacionaNiveldeElementos1: TMenuItem;
    AplicacionaniveldeMatrice1: TMenuItem;
    EliminarFila1: TMenuItem;
    AplicacionaniveldeFila1: TMenuItem;
    AplicaionaNiveldeColumnas1: TMenuItem;
    InsertarFila1: TMenuItem;
    SumarElementosdelaMatriz1: TMenuItem;
    InvertirElementos1: TMenuItem;
    IntercmbiarElementos1: TMenuItem;
    ObtenerElementoMayor1: TMenuItem;
    ObtenerElementoMenor1: TMenuItem;
    OrdenarDiagonalPrimcipalAscendente1: TMenuItem;
    OrdenarDiagonalSegundariaAscedentemente1: TMenuItem;
    CargarSerie1: TMenuItem;
    CargarSerieB1: TMenuItem;
    CargarSerieC1: TMenuItem;
    OrdenarPorFila1: TMenuItem;
    CargarserieE1: TMenuItem;
    CargarMatrizB1: TMenuItem;
    SumarDosMatrices1: TMenuItem;
    OrdenarunasolaFila1: TMenuItem;
    FrecuenciadeunElementp1: TMenuItem;
    VerificarSielelementoseencvuntre1: TMenuItem;
    ObtenerposiciondelelementoMayir1: TMenuItem;
    ObtenerlaposiciondelelementomEnor1: TMenuItem;
    Obtenercantidaddistintadeelementos1: TMenuItem;
    Obtenerelelementomassrepetido1: TMenuItem;
    Comprobarsiestadecreceiente1: TMenuItem;
    CantidaddeelementosDistintos1: TMenuItem;
    MostrarResultadodedosmatrices1: TMenuItem;
    OrdenarMatriz1: TMenuItem;
    NumeroBinarios1: TMenuItem;
    ObtenerfilamayordelasumaenBinarios1: TMenuItem;
    SumarConcatenacionFila1: TMenuItem;
    SumarConcatenacionColumna1: TMenuItem;
    SumarFilaPunto1: TMenuItem;
    ranpuesta1: TMenuItem;
    Fibbonac1: TMenuItem;
    MostrarFibonacci1: TMenuItem;
    MostrarFibonaccixceldas1: TMenuItem;
    MostrarMayor1: TMenuItem;
    Circulo1: TMenuItem;
    Final1: TMenuItem;
    ShellShortMatriz1: TMenuItem;
    procedure ScrollBar1Change(Sender: TObject);
    procedure ScrollBar2Change(Sender: TObject);
    procedure CargarMatriz1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Mostrarmatriz1Click(Sender: TObject);
    procedure CargarRandomico1Click(Sender: TObject);
    procedure NumerodeFilas1Click(Sender: TObject);
    procedure NumerodeColumnas1Click(Sender: TObject);
    procedure ObtenerElemento1Click(Sender: TObject);
    procedure ModificarElemento1Click(Sender: TObject);
    procedure VerificarsiesSimetrica1Click(Sender: TObject);
    procedure EliminarFila1Click(Sender: TObject);
    procedure InsertarFila1Click(Sender: TObject);
    procedure SumarElementosdelaMatriz1Click(Sender: TObject);
    procedure InvertirElementos1Click(Sender: TObject);
    procedure IntercmbiarElementos1Click(Sender: TObject);
    procedure ObtenerElementoMayor1Click(Sender: TObject);
    procedure ObtenerElementoMenor1Click(Sender: TObject);
    procedure OrdenarDiagonalPrimcipalAscendente1Click(Sender: TObject);
    procedure OrdenarDiagonalSegundariaAscedentemente1Click(Sender: TObject);
    procedure CargarSerie1Click(Sender: TObject);
    procedure CargarSerieB1Click(Sender: TObject);
    procedure CargarSerieC1Click(Sender: TObject);
    procedure OrdenarPorFila1Click(Sender: TObject);
    procedure CargarserieE1Click(Sender: TObject);
    procedure CargarMatrizB1Click(Sender: TObject);
    procedure OrdenarunasolaFila1Click(Sender: TObject);
    procedure FrecuenciadeunElementp1Click(Sender: TObject);
    procedure VerificarSielelementoseencvuntre1Click(Sender: TObject);
    procedure ObtenerposiciondelelementoMayir1Click(Sender: TObject);
    procedure ObtenerlaposiciondelelementomEnor1Click(Sender: TObject);
    procedure Obtenercantidaddistintadeelementos1Click(Sender: TObject);
    procedure Obtenerelelementomassrepetido1Click(Sender: TObject);
    procedure Comprobarsiestadecreceiente1Click(Sender: TObject);
    procedure CantidaddeelementosDistintos1Click(Sender: TObject);
    procedure MostrarResultadodedosmatrices1Click(Sender: TObject);
    procedure OrdenarMatriz1Click(Sender: TObject);
    procedure ObtenerfilamayordelasumaenBinarios1Click(Sender: TObject);
    procedure SumarConcatenacionFila1Click(Sender: TObject);
    procedure SumarConcatenacionColumna1Click(Sender: TObject);
    procedure SumarFilaPunto1Click(Sender: TObject);
    procedure Fibbonac1Click(Sender: TObject);
    procedure MostrarFibonaccixceldas1Click(Sender: TObject);
    procedure MostrarMayor1Click(Sender: TObject);
    procedure Circulo1Click(Sender: TObject);
    procedure ShellShortMatriz1Click(Sender: TObject);
  private
    { Private declarations }
    M:Matriz;
    M2:Matriz;
    MR:Matriz;
  public
    { Public declarations }
  end;

var
  fmPrincipal: TfmPrincipal;

implementation

{$R *.dfm}

procedure TfmPrincipal.CantidaddeelementosDistintos1Click(Sender: TObject);
Var
r:Byte;
begin
 //r:=M.CAntidadElementoDistintos;
 //Showmessage('La cantidad de elementos distintos es '+ IntToStr(r));
end;

procedure TfmPrincipal.CargarMatriz1Click(Sender: TObject);
var
  I,J:Word;
begin
 M.Redimiensionar(StringGrid1.RowCount,StringGrid1.Colcount);
 for I := 1 to M.Filas do
   Begin
     for J := 1 to M.Columnas do
       Begin
         m.ModElement(I,J,StrToFLoat(StringGrid1.Cells[J-1,I-1]));
       End;
   End;
   M.Cargar_Menor_Mayor;
   M.Cargar_Mayor_Menor;
end;


procedure TfmPrincipal.CargarMatrizB1Click(Sender: TObject);
var
  I,J:Word;
begin
 M2.Redimiensionar(StringGrid1.RowCount,StringGrid1.Colcount);
 for I := 1 to M2.Filas do
   Begin
     for J := 1 to M2.Columnas do
       Begin
         M2.ModElement(I,J,StrToFLoat(StringGrid1.Cells[J-1,I-1]));
       End;
   End;
end;


procedure TfmPrincipal.CargarRandomico1Click(Sender: TObject);
var
  I,J:Word;
begin
 M.Redimiensionar(StringGrid1.RowCount,StringGrid1.Colcount);
 for I := 1 to M.Filas do
   Begin
     for J := 1 to M.Columnas do
       Begin
         m.ModElement(I,J,Random(100));
       End;
   End;
end;

procedure TfmPrincipal.CargarSerie1Click(Sender: TObject);
begin
 M.Redimiensionar(StringGrid1.RowCount,StringGrid1.Colcount);
 M.CargarSerieA;
end;

procedure TfmPrincipal.CargarSerieB1Click(Sender: TObject);
begin
 M.Redimiensionar(StringGrid1.RowCount,StringGrid1.Colcount);
 M.CargarMatrizB;
end;

procedure TfmPrincipal.CargarSerieC1Click(Sender: TObject);
begin
M.Redimiensionar(StringGrid1.RowCount,StringGrid1.Colcount);
M.CargarMatrizC;
end;

procedure TfmPrincipal.CargarserieE1Click(Sender: TObject);
begin
M.Redimiensionar(StringGrid1.RowCount,StringGrid1.Colcount);
M.CargarmatrizE;
end;

procedure TfmPrincipal.Circulo1Click(Sender: TObject);
begin
     M.Ordenar_Circulo;
end;

procedure TfmPrincipal.Comprobarsiestadecreceiente1Click(Sender: TObject);
Var
r:Boolean;
begin
r:=M.VerificarMatrizsi_esta_descendiente;
if (r=true) then
 Begin
  Showmessage('La matriz esta decreciente');
 End
  Else
   Showmessage('La matriz no esta decreciente');
end;

procedure TfmPrincipal.EliminarFila1Click(Sender: TObject);
Var
p:Word;
begin
  p:=StrToInt(InputBox('Comunicado','Inserte la posicion de la fila',''));
  M.DelFila(p);
end;


procedure TfmPrincipal.FormCreate(Sender: TObject);
begin
 M:= Matriz.Create;
 M2:=Matriz.Create;
 MR:=Matriz.Create;
end;

procedure TfmPrincipal.Fibbonac1Click(Sender: TObject);
begin
  M.Redimiensionar(StringGrid1.RowCount,StringGrid1.Colcount);
  M.Ordenar_Fibbonacci;

end;


procedure TfmPrincipal.FrecuenciadeunElementp1Click(Sender: TObject);
var
e:real;
n:Byte;
begin
e:=strToFloat(InputBox('Frecuencia de un elemento','Indique el elemento',''));
 n:=M.FrecuenciaElemento(e);
 Showmessage('El elemento insertado se repite '+ floatToStr(n));
end;

procedure TfmPrincipal.InsertarFila1Click(Sender: TObject);
var
 p:Word;
  I: Integer;
  e:real;
begin
 p:=StrToInt(InputBox('Aviso','Indique en que posicion deseas insertar la fila',''));
 M.InsFila(p);
  for I := 1 to M.Columnas do
   Begin
    e:=StrToFloat(InputBox('Posicion '+ IntToStr(i) +' de las columna','Indique que elemento deseas insertar',''));
    StringGrid1.Cells[I-1,p+1]:=FloatToStr(e);
   End;
end;

procedure TfmPrincipal.IntercmbiarElementos1Click(Sender: TObject);
var
f1,c1,f2,c2:Word;
begin
f1:=StrToInt(InputBox('Primera posicion de la fila','Indique la posicion',''));
c1:=StrToInt(InputBox('Primera Posicion de la columna','Indique la posicion',''));
f2:=StrToInt(InputBox('Segunda posicion de la fila','Indique la posicion',''));
c2:=StrToInt(InputBox('Segunda posicion de la columna','Indique la posicion',''));
M.IntercambiarElementos(f1,c1,f2,c2);
end;

procedure TfmPrincipal.InvertirElementos1Click(Sender: TObject);
begin
M.invertirElementos;
end;

procedure TfmPrincipal.ModificarElemento1Click(Sender: TObject);
var
f,c:Word;
e:real;
begin
f:=StrToInt(InputBox('Aviso','Inserte el Nro de Fila',''));
c:=StrToInt(InputBox('Aviso','Inserte el Nro de Columna',''));
e:=StrTofloat(InputBox('Aviso','Indique por cual elemento deseas cambiar',''));
 M.ModElement(f,c,e);
end;

procedure TfmPrincipal.MostrarFibonaccixceldas1Click(Sender: TObject);
begin
   M.Redimiensionar(StringGrid1.RowCount,StringGrid1.Colcount);
  //Showmessage('El Fibonacci es: '+M.Fibbonacci);
  M.Fibbonacci;
end;

procedure TfmPrincipal.Mostrarmatriz1Click(Sender: TObject);
var
  I,J:Word;
begin
 StringGrid1.RowCount:=M.Filas;
 StringGrid1.Colcount:=M.Columnas;
 for I := 1 to M.Filas do
   Begin
     for J := 1 to M.Columnas do
       Begin
        StringGrid1.Cells[J-1,I-1]:=FloatTostr(M.ObtElement(I,J));
       End;
   End;

end;


procedure TfmPrincipal.MostrarMayor1Click(Sender: TObject);
var Resultado:Integer;
begin
    Resultado:= M.Verificar_Mayor;
    Showmessage('El mayor es '+ IntToStr(Resultado));
end;

procedure TfmPrincipal.MostrarResultadodedosmatrices1Click(Sender: TObject);
var
  I,J:Word;
begin
 StringGrid1.RowCount:=MR.Filas;
 StringGrid1.Colcount:=MR.Columnas;
 for I := 1 to MR.Filas do
   Begin
     for J := 1 to MR.Columnas do
       Begin
        StringGrid1.Cells[J-1,I-1]:=FloatTostr(MR.ObtElement(I,J));
       End;
   End;
end;

procedure TfmPrincipal.NumerodeColumnas1Click(Sender: TObject);
var
c:Word;
begin
 c:= M.Columnas;
 Showmessage('El numero de columnas es '+ IntToStr(c));
end;

procedure TfmPrincipal.NumerodeFilas1Click(Sender: TObject);
var
f: Word;
begin
 f:= M.Filas;
 Showmessage('El numero de filas es '+ IntToStr(f));
end;

procedure TfmPrincipal.Obtenercantidaddistintadeelementos1Click(
  Sender: TObject);
  var
  r:Byte;
begin
 //:=M.ObtenerElementoMasRepetido ;
 //Showmessage('La canridad distinta de Elementos es '+ IntToStr(r));
end;

procedure TfmPrincipal.Obtenerelelementomassrepetido1Click(Sender: TObject);
var
 e:real;
begin
 e:=M.ObtenerElementoMasRepetido;
 Showmessage('El Elemento ma repetido es '+FloatToStr(e));
end;

procedure TfmPrincipal.ObtenerElemento1Click(Sender: TObject);
var
f,c:Word;
e:real;
begin
f:= StrToInt(InputBox('Comunicado','Inserte el Nro de Fila',''));
c:=StrToInt(inputBox('Comunicado','Inserte el Nro de Columna',''));
e:=M.ObtElement(f,c);
Showmessage('Segun las posiciones indicadas el elemento es '+ FloatToStr(e));
end;

procedure TfmPrincipal.ObtenerElementoMayor1Click(Sender: TObject);
Var
r:real;
begin
 r:=M.ObtenerElementoMayor;
 ShowMessage('El elemento Mayor de la Matriz es '+FloatToStr(r));
end;

procedure TfmPrincipal.ObtenerElementoMenor1Click(Sender: TObject);
Var
r:real;
begin
 r:=M.ObtnerElementoMenor;
 ShowMessage('El elemento Mayor de la Matriz es '+FloatToStr(r));
end;


procedure TfmPrincipal.ObtenerfilamayordelasumaenBinarios1Click(
  Sender: TObject);
  var
  e:String;
begin
//e:= M.ObtenerElnumeroMayorBina
//Showmessage('La suma mayor es '+ e);
end;

procedure TfmPrincipal.ObtenerlaposiciondelelementomEnor1Click(Sender: TObject);
Var
r:String;
begin
r:= M.ObtenerPosicionElementoMenor;
Showmessage(r);
end;

procedure TfmPrincipal.ObtenerposiciondelelementoMayir1Click(Sender: TObject);
Var
r:String;
begin
r:= M.ObtenerPosicionElementoMayor;
Showmessage(r);
end;

procedure TfmPrincipal.OrdenarDiagonalPrimcipalAscendente1Click(
  Sender: TObject);
begin
M.OrdenarDiagonalPrincipalAsc;
end;

procedure TfmPrincipal.OrdenarDiagonalSegundariaAscedentemente1Click(
  Sender: TObject);
begin
M.OrdenarDiagonalSegundariaAsc;
end;

procedure TfmPrincipal.OrdenarMatriz1Click(Sender: TObject);
begin
M.OrdenarmatrizFilaFilamayoraMenor;
end;

procedure TfmPrincipal.OrdenarPorFila1Click(Sender: TObject);
begin
  M.OrdenarPorFila;
end;

procedure TfmPrincipal.OrdenarunasolaFila1Click(Sender: TObject);
Var
f:Word;
begin
 f:=StrToint( InputBox('Ordenar una Fila','Indique la posicion',''));
 M.OrdenarUnaFila(f);
end;

procedure TfmPrincipal.ScrollBar1Change(Sender: TObject);
begin
 StringGrid1.Colcount:=ScrollBar1.Position;
end;

procedure TfmPrincipal.ScrollBar2Change(Sender: TObject);
begin
StringGrid1.RowCount:= ScrollBar2.Position;
end;

procedure TfmPrincipal.ShellShortMatriz1Click(Sender: TObject);
begin
   M.MatrizShellShort;
end;

procedure TfmPrincipal.SumarConcatenacionColumna1Click(Sender: TObject);
var Respuesta:real;
begin
   Respuesta:=M.Sumar_Concatenacion_Columnas;
   Showmessage('La respueta es:'+FloatToStr(Respuesta));
end;

procedure TfmPrincipal.SumarConcatenacionFila1Click(Sender: TObject);
var Respuesta:real;
begin
   Respuesta:=M.Sumar_Concatenacion_Filas;
   Showmessage('La respueta es:'+FloatToStr(Respuesta));
end;

procedure TfmPrincipal.SumarElementosdelaMatriz1Click(Sender: TObject);
Var
r:real;
begin
r:= M.SumarElementos;
 ShowMessage('la suma total de los elementos es '+FloatTostr(r));
end;

procedure TfmPrincipal.SumarFilaPunto1Click(Sender: TObject);
var Posicion:Word;
    Resultado:Real;
begin
     Posicion:=StrtoInt(InputBox('Posicion','Inserte posicion coma',''));
     Resultado:= M.Sumar_Filas_Coma(Posicion);
     ShowMessage('La suma es: '+FloatToStr(Resultado));
end;

procedure TfmPrincipal.VerificarSielelementoseencvuntre1Click(Sender: TObject);
Var
r:boolean;
e:real;
begin
e:=StrtoInt(InputBox('Verificar Elemento','Inserte el elemento',''));
r:=M.VerficarExisteElemento(e);
if (r=true) then
 Begin
 Showmessage('El elemento se encuentra en la matriz')
 End
  Else
   Showmessage('El elemento no se encuentra en la matriz')
end;

procedure TfmPrincipal.VerificarsiesSimetrica1Click(Sender: TObject);
Var
r:Boolean;
begin
r:=M.VerificarSimetrica;
 if r=True then
  Begin
    Showmessage('La matriz es Simetrica');
  End
   Else
    Showmessage('La matriz no es Simetrica');

end;

end.
