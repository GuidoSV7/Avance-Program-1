unit UCMatrizChars;

Interface
uses
 SysUtils;

 Const
  Nf = 120;
  Nc = 128;
Type
  Matriz_Caracter = Class
  Private
    NroFilas,NroColumnas: Word;
    Celdas: Array [1 .. Nf, 1 .. Nc] of Char;

  Public
  Procedure Redimensionar(fila,Columna:Word);
    Function Filas:Word;
    Function Columnas:Word;
    Procedure AddFila;
    Procedure AddColumna;
    Function ObtnerChar(f,c:Word):Char;
    Procedure  ModificarCarcater(f,c:Word;e:Char);
    Procedure InsFila(f:Word);
    Procedure InsColumna(c:Word);
    Procedure DelFila(f:Word);
    Procedure DelColumna(c:Word);
    Function Leer_Diagonal_izquierda:String;
    Function Leer_Diagonal_derecha:String;
    Function Leer_Arriba_Abajo(columna:word):String;
    Function Leer_Izquierda_Derecha(Fila:word):String;
    Function Leer_Inversa(Palabra:string):String;
    Function Primerchar_Mayuscula(Palabra:String):String;
    Function Intercalado_Mayus_Minus(Palabra:String):String;
    Function Encontrar_nombre(Nombre:String):Boolean;
   // Function Convertir_char_mininuscula(Letra:char):char;
    Function Encontrar_Determinante:Integer;

  End;
Implementation

{ Matriz_Caracter }

procedure Matriz_Caracter.AddColumna;
begin
 Inc(NroColumnas);
end;

procedure Matriz_Caracter.AddFila;
begin
 inc(NroFilas);
end;

function Matriz_Caracter.Columnas: Word;
begin
 Result:= NroColumnas;
end;



procedure Matriz_Caracter.DelColumna(c: Word);
var
  Columna,Fila: Integer;
begin
  if (c>0) and (c<NroColumnas) then
   Begin
    for Fila:= 1 to NroFilas do
     Begin
       for Columna:= c to nroColumnas-1 do
        Begin
          Celdas[fila,Columna]:= Celdas[Fila,columna+1];
        End;
         dec(NroColumnas);
     End;

   End
    Else raise Exception.Create('Error posicion fuera de Rango');

end;

procedure Matriz_Caracter.DelFila(f: Word);
begin
  if (f>0) and (f<=NroFilas) then
   Begin

   End
    else raise Exception.Create('Error posicion fuera de rango');

end;

function Matriz_Caracter.Encontrar_Determinante: Integer;
begin

end;

function Matriz_Caracter.Encontrar_nombre(Nombre: String): Boolean;
var Button:boolean;
    I,J:Word;
begin
  Button:=false;

    //Columnas
  for I := 1 to NroColumnas do
  Begin
      if (AnsiPos(Nombre, Leer_Arriba_Abajo(I))<>0) or (AnsiPos(Nombre,Leer_Inversa(Leer_Arriba_Abajo(I)))<>0)
          or (AnsiPos(Nombre, UpperCase(Leer_Arriba_Abajo(I)))<>0)  or (AnsiPos(Nombre , UpperCase(Leer_Inversa(Leer_Arriba_Abajo(I))))<>0)
          or (AnsiPos(Nombre, LowerCase(Leer_Arriba_Abajo(I)))<>0) or (AnsiPos(Nombre, LowerCase(Leer_Inversa(Leer_Arriba_Abajo(I))))<>0)
      then
      Begin
        Button:=True;
      End;
  End;

   //Filas
  for J := 1 to NroFilas do
    Begin
      if (AnsiPos(Nombre, Leer_Izquierda_Derecha(j))<>0) or (AnsiPos(Nombre,Leer_Inversa(Leer_Izquierda_Derecha(j)))<>0)
          or (AnsiPos(Nombre, UpperCase(Leer_Izquierda_Derecha(I)))<>0)  or (AnsiPos(Nombre, UpperCase(Leer_Inversa(Leer_Izquierda_Derecha(I))))<>0)
          or (AnsiPos(Nombre ,LowerCase(Leer_Izquierda_Derecha(I)))<>0) or(AnsiPos(Nombre , LowerCase(Leer_Inversa(Leer_Izquierda_Derecha(I))))<>0)  then
      Begin
        Button:=True;
      End;
    End;


  //Diagonales
  if (Nombre = Leer_Diagonal_izquierda) or (Nombre = Leer_Diagonal_derecha)  or
    (Nombre = Leer_Inversa(Leer_Diagonal_izquierda)) or (Nombre = Leer_Inversa(Leer_Diagonal_derecha))

     or (Nombre = UpperCase(Leer_Diagonal_izquierda))  or  (Nombre = UpperCase(Leer_Diagonal_derecha))  or
      (Nombre = UpperCase(Leer_Inversa(Leer_Diagonal_izquierda))) or (Nombre = UpperCase(Leer_Inversa(Leer_Diagonal_derecha)))

     or (Nombre = LowerCase(Leer_Diagonal_izquierda))  or  (Nombre = LowerCase(Leer_Diagonal_derecha)) or
      (Nombre = LowerCase(Leer_Inversa(Leer_Diagonal_izquierda))) or (Nombre = LowerCase(Leer_Inversa(Leer_Diagonal_derecha)))


  Then
   Begin
     Button:= true;
   End;

   //Extras
   if (Nombre= Primerchar_Mayuscula(Nombre)) or (Nombre= Intercalado_Mayus_Minus(Nombre))then
   Begin
     Button:= true;
   End;


   Result:=Button;

end;

function Matriz_Caracter.Filas: Word;
begin
  Result:= NroFilas;
end;

procedure Matriz_Caracter.InsColumna(c: Word);
begin
  if (c>0) and (c<NroColumnas) then
   Begin

   End
    Else raise Exception.Create('Error posicion fuera de rango');

end;

procedure Matriz_Caracter.InsFila(f: Word);
begin
if (f>0) and (f<=NroFilas) then
  Begin

  End
   Else raise Exception.Create('Error posicion fuera de rango');
end;




function Matriz_Caracter.Intercalado_Mayus_Minus(Palabra: String): String;
var Resultado:String;
  I: Integer;
  Button:boolean;
begin
      Resultado:='';
      Button:=True;
      for I := 1 to Length(Palabra) do
      Begin
        if Button=True then
        Begin
          Palabra[i]:= UpCase(Palabra[i]);
          Resultado:=Resultado+Palabra[i];
          Button:=False;
          Continue
        End
        else if Button = False then
        Begin
         Palabra[i]:=  char(ord(Palabra[i])+32);
         Resultado:=Resultado+Palabra[i];
        End;

      End;
      result:=Resultado;
end;

function Matriz_Caracter.Leer_Arriba_Abajo(Columna:word): String;
  var fila:word;
  Palabra:string;
begin
      Palabra:= '';
     for Fila := 1 to NroFilas do
      Begin
           Palabra:=Palabra + Celdas[Fila,Columna];
      End;
      Result:=Palabra;
end;

function Matriz_Caracter.Leer_Diagonal_derecha: String;
var   Fila,Columna,i:Word;
      Palabra:string;
begin
     Palabra:= '';
     Columna:=NroFilas;
     for Fila := NroFilas to 1  do
     Begin
         Palabra:= Palabra + Celdas[Fila,Columna];
         Columna:=Columna-1;
     End;
     Result:=Palabra;
end;

function Matriz_Caracter.Leer_Diagonal_izquierda: String;
var   Fila,Columna,i:Word;
      Palabra:string;
begin
     Palabra:= '';
     Columna:=1;
     for Fila := 1 to NroFilas do
     Begin
         Palabra:= Palabra + Celdas[Fila,Columna];
         Columna:=Columna+1;
     End;
     Result:=Palabra;
end;

function Matriz_Caracter.Leer_Inversa(palabra:string): String;
var Palabra_inversa:string;
    i:integer;
begin
    Palabra_inversa:='';
    for i := Length(palabra) downto 1 do
    Begin
        Palabra_inversa:= Palabra_inversa + palabra[i];
    End;
     result:=Palabra_inversa;
end;

function Matriz_Caracter.Leer_Izquierda_Derecha(Fila:word): String;
  var Columna:word;
  Palabra:string;
begin
      Palabra:= '';
     for Columna := 1 to NroColumnas do
      Begin
           Palabra:=Palabra + Celdas[Fila,Columna];
      End;
      Result:=Palabra;
end;
procedure Matriz_Caracter.ModificarCarcater(f, c: Word;e:Char);
begin
 if (f>0) and (f<=NroFilas) and (c>0) and (c<=nroColumnas) then
  Begin
   celdas[f,c]:=e;
  End
    Else raise Exception.Create('Error posicion invalido');
end;


function Matriz_Caracter.ObtnerChar(f, c: Word): Char;
begin
if (f>0) and (f<=NroFilas) and (c>0) and (c<=NroColumnas) then
 Begin
  Result:=Celdas[f,c];
 End
  Else raise Exception.Create('Error Numero Invalido');

end;

function Matriz_Caracter.Primerchar_Mayuscula(Palabra: String): String;
var Resultado:String;
  I: Integer;
begin
      Resultado:='';
      for I := 1 to Length(Palabra) do
      Begin
        if i = 1 then
        Begin
          Palabra[i]:= UpCase(Palabra[i]);
          Resultado:=Resultado+Palabra[i];
          Continue
        End;
         Resultado:=Resultado+Palabra[i];
      End;
      result:=Resultado;
end;

procedure Matriz_Caracter.Redimensionar(fila, Columna: Word);
begin
 Nrofilas:=fila;
 NroColumnas:=Columna;
end;

end.
