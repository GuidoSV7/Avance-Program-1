unit UCMatriz;

interface
Uses
 SysUtils,Math;
 Const
  NroF = 128;
  NroC = 128;
Type
  Matriz = Class
  Private
    NroFilas,NroColumnas: Word;
    Celdas: Array [1 .. NroF, 1 .. NroC] of real;
    Fibbonacci_Array:Array[1..128] of string;
    Mayor_Menor: Array[1..128] of real;
    Menor_Mayor: Array[1..128] of real;
    Vector_ShellShort: Array [1..128] of integer;
    procedure CargarFila;
    procedure MatrizC;
    procedure Ordenarmatriz;
  Public
    Procedure Redimiensionar (NF,NC:Word);
    Function Filas: Word;
    Function Columnas: Word;
    Function ObtElement(F, C: Word): real;
    Procedure ModElement(F, C: Word; E: real);

    //falta Implementar
    Procedure AddFila;
    Procedure AddColumna;
    Procedure InsFila(f:Word);
    Procedure InsColumna(c:Word);
    Procedure DelFila(f:Word);
    Procedure DelColumna(c:Word);


    Function SumarElementos:real;
    Function VerificarSimetrica:Boolean;
    Procedure IntercambiarElementos(f1,c1,f2,c2:word);
    Procedure OrdenarDiagonalPrincipalAsc;
    Procedure OrdenarDiagonalSegundariaAsc;
    Function ObtenerElementoMayor:Real;
    Function ObtnerElementoMenor:real;
    Procedure CargarSerieA;
    Procedure OrdenarUnaFila(f:Word );
    //Procedure FilaTraspuesta;

      Procedure CargarMatrizB;
      Procedure CargarMatrizC;

      //Practica
      Procedure CargarMatrizD;
      Procedure CargarmatrizE;
      Procedure OrdenarPorFila;

      Procedure invertirElementos;
      Function FrecuenciaElemento(e:real):byte;
      Function VerficarExisteElemento(e:real):Boolean;
      Function ObtenerPosicionElementoMayor:String;
      Function ObtenerPosicionElementoMenor:String;
//      Function CAntidadElementoDistintos:Byte;
     Function ObtenerElementoMasRepetido:real;
     Function VerificarMatrizsi_esta_descendiente:Boolean;
  //  Function SumarDosMatrices:

    Procedure OrdenarmatrizFilaFilamayoraMenor;
//    Function ObtenerElnumeroMayorBinarioFila:Word;




      //Practicas
      Function Sumar_Fila(Fila:Word):real;
      Function Sumar_Columa(Columna:Word):real;
      Function Sumar_Diagonal_Izq(Fila:Word):real;
      Function Sumar_Diagonal_Der(Fila:Word):real;
      Function Determinante_2x2:real;
      Function Determinante_3x3:real;
      Function Concatenar_Fila(Fila:Word):real;
      Function Concatenar_Columna(Columna:Word):real;
      Function Sumar_Concatenacion_Filas:real;
      Function Sumar_Concatenacion_Columnas:real;
      Function Poner_Coma(Fila,numero:Word):real;
      Function Sumar_Filas_Coma(Posicion:Word):real;
      Function Suma_Fila(Fila:Integer):integer;
      Function Suma_Columna(Columna:Integer):Integer;
     // Procedure Intercambiar(f1,c1,f2,c2);
      Procedure Fibbonacci;
      Procedure Ordenar_Fibbonacci;
      Function Verificar_Mayor:Integer;
      Function Invertir_Num(Parametro:Integer):Integer;
      Function Longitud_Numero(Parametro:Integer):Integer;

      Procedure Ordenar_Circulo;


      Procedure Cargar_Mayor_Menor;
      Procedure Cargar_Menor_Mayor;


      Procedure Ordenar_Vector_Shellshort;

      Procedure MatrizShellShort;

  End;

implementation

{ Matriz }

procedure Matriz.AddColumna;
begin
  inc(NroColumnas);
end;

procedure Matriz.AddFila;
begin
  inc(NroFilas);
end;

{function Matriz.CAntidadElementoDistintos: Byte;
 Var
 Counter:word;
  I,J: Integer;
  elemento,nuevo_elemento,new_Elemento:real;
begin
counter:=0;
 Elemento:=Celdas[1,1];
 for I := 1 to NroFilas do
   Begin
     for J := 1 to NroColumnas do
     Begin
       new_Elemento:=Celdas[i,j];
       nuevo_elemento:=Celdas[i,j];
       if (Elemento <> nuevo_elemento) and (new_Elemento<>nuevo_elemento) then
        Begin
         counter:=counter+1;
        End;
     End;
   End;
   result:=counter;
end;}

procedure Matriz.CargarFila;
var
f,c,m:Word;
begin
 m:=2;
  for f := nroFilas downto 1 do
    Begin
     for c := nroColumnas downto 1 do
       Begin
        Celdas[f,c]:=m;
        Inc(m);
       End;
    End;
end;

procedure Matriz.CargarMatrizB;
var
  I,J,n,s: Word;
begin
n:=2;
s:=2;
 for I := NroFilas Downto 1 do
   Begin
   for J := NroColumnas Downto 1 do
       Begin
         Begin
           Celdas[I,J]:=n;
           n:=n+s;
           Inc(s);
         End;
       End;
   End;
end;


procedure Matriz.CargarMatrizC;
var
  I: Integer;
  J: Integer;
  L,c: Word;
  bandera:boolean;
  contador,f,nuevaserie:Word;
begin
bandera:=true;
f:=1;
contador:=1;
 while (f<=NroFilas) do
   Begin
     if (Bandera=true) then
      Begin
       for J := 1 to NroColumnas do
        Begin
          Celdas[f,j]:= contador;
          contador:=Contador+1
        End;
      End;
     if (Bandera=false) then
      Begin
       for L := NroColumnas Downto 1 do
        Begin
          Celdas[f,l]:=Contador;
          contador:=contador+1;
        End;
      End;
      Bandera:= not bandera;
     f:=f+1;
   End;
end;


procedure Matriz.CargarMatrizD;
var
  I: Integer;
  J: Integer;
  n:Word;
begin
n:=1;
j:=1;

 for I := 1 to NroFilas do
   Begin
     while (j<=NroColumnas) do
      Begin
       Celdas[i,j]:= n;
       n:= n+1;
      End;
    j:=j+1;
   End;
end;



procedure Matriz.CargarmatrizE;
var
  Filas,fila_regresiva,columna1,columna2,nuevaColumnaB: Integer;
  bandera,nueva_bandera:Boolean;
  f,serie:Word;
  regreso:Word;
  ColumnaA,ColumnaB,nuevacopiaColumna:Word;
  inicio_regreso,nuevaserie:Word;
begin
serie:=1;
 Bandera:=true;
  f:=1;
 while (f<=NroFilas) do
  Begin
     if (bandera=true) then
      Begin
       columna1:=nroColumnas-2;
       while (columna1<=NroColumnas) do
        Begin
          Celdas[f,columna1]:= serie;
           serie:=Serie+1;
           columna1:=Columna1+2;
        End;
      End;
     if (bandera=False) then
       Begin
       columna2:=nroColumnas-1;
        while (Columna2>=1) do
         Begin
          Celdas[f,Columna2]:=serie;
          serie:=serie+1;
          columna2:=columna2-2;
         End;
       End;
    f:=f+1;
    bandera:=not bandera;
  end;
 fila_Regresiva:=NroFilas;
 nuevacopiaColumna:=NroColumnas;
 nueva_bandera:=false;
  while (fila_Regresiva>=1) do
    Begin
     if (nueva_bandera=false) then
      Begin
       ColumnaA:=NroColumnas-2;
        while (ColumnaA<=NroColumnas) do
         Begin
           Celdas[fila_Regresiva,ColumnaA]:= serie;
           ColumnaA:=ColumnaA +2;
           serie:=serie+1;
         End;
      End;
     if (nueva_bandera=true) then
       Begin
       nuevaColumnaB:=NroColumnas-1;
       while (nuevaColumnaB>=1) do
         Begin
          Celdas[fila_Regresiva,nuevaColumnaB]:=serie;
            serie:=serie+1;
           nuevaColumnaB:=nuevaColumnaB-2;
         End;
       End;
      fila_regresiva:=Fila_regresiva-1;
         nueva_bandera:=not nueva_bandera;
    End;

  end;




procedure Matriz.CargarSerieA;
var
  I,J: Integer;
  n:Word;
begin
n:=1;
 for I := 1 to NroColumnas do
  Begin
   for J := 1 to NroFilas do
     Begin
       Celdas[j,i]:=n;
       n:=n+1;
     End;
  End;
end;





procedure Matriz.Cargar_Mayor_Menor;
var
  I,J,Contador: Integer;
  K: Integer;
  M: Integer;
begin
  Contador:=1;
 for K := 999 downto 1 do
 Begin
   for I := 1 to NroFilas do
  Begin
   for J := 1 to NroColumnas do
   Begin
    if Celdas[I,J] = K then
    Begin
          Mayor_Menor[Contador]:= Celdas[I,J];
          Contador:=Contador+1;
    End;
   End;
  End;

 End;

end;

procedure Matriz.Cargar_Menor_Mayor;
var
  I,J,Contador: Integer;
  K: Integer;
  M: Integer;
begin
  Contador:=1;
 for K := 1 to 999 do
 Begin
   for I := 1 to NroFilas do
  Begin
   for J := 1 to NroColumnas do
   Begin
    if Celdas[I,J] = K then
    Begin
          Menor_Mayor[Contador]:= Celdas[I,J];
          Contador:=Contador+1;
    End;
   End;
  End;

 End;

end;


function Matriz.Columnas: Word;
begin
  Result := NroColumnas;
end;

function Matriz.Concatenar_Columna(Columna:word): real;
var Fila:word;
    Concatenar:string;
    Celda:string;

begin
     Concatenar:='';

     for Fila := 1 to NroFilas  do
     Begin
          Celda:= FloatTOStr(Celdas[Fila,Columna]);
         Concatenar:= Concatenar + celda;
     End;

     Result:=StrToFloat(Concatenar);

end;

function Matriz.Concatenar_Fila(Fila:word): real;
var Columna:word;
    Concatenar:string;
    Celda:string;

begin
     Concatenar:='';

     for Columna := 1 to NroColumnas  do
     Begin
          Celda:= FloatTOStr(Celdas[Fila,Columna]);
         Concatenar:= Concatenar + celda;
     End;

     Result:=StrToFloat(Concatenar);

end;

procedure Matriz.DelColumna(c: Word);
begin

end;



procedure Matriz.DelFila(f: Word);
var
  I: Integer;
  J: Integer;
begin
 if (f>0) and (f<=NroFilas) then
 Begin
 for I := f to (NroFilas-1) do
   Begin
     for J := 1 to NroColumnas do
      Begin
        Celdas[i,j]:=Celdas[i+1,j];
      End;
      Dec(NroFilas);
   End;
 End
  Else raise Exception.Create('Error numero invalido');
end;


function Matriz.Determinante_2x2: real;
begin

end;

function Matriz.Determinante_3x3: real;
begin

end;

Procedure Matriz.Fibbonacci;
var Limite:Word;
    n1,n2,n3,I:Integer;
    Resultado:String;
    Button:boolean;
begin
    Button:=True;
    Resultado:='';
    Limite:= NroFilas*NroColumnas;
    n1:=0; n2:=1; n3:=0;
    for I := 1 to Limite do
    Begin
       if Button=True then
       Begin
          Fibbonacci_Array[i]:=IntToStr(n3);
          n1:=n2+n3;
          n2:=n3;
          n3:=n1;
          Continue
       End
       else if Button=False then
       Begin
          Fibbonacci_Array[i]:=IntToStr(n3);
          n1:=n2+n3;
          n2:=n3;
          n3:=n1;
          Continue
        End;
    End;

end;

function Matriz.Filas: Word;
begin
  Result := NroFilas;
end;

function Matriz.FrecuenciaElemento(e: real): byte;
var
  I: Integer;
counter:Word;
  c1: Integer;
begin
 counter:=0;
 for I := 1 to NroFilas do
   Begin
     for c1 := 1 to NroColumnas do
      Begin
        if (celdas[i,c1]=e) then
         BEgin
           Counter:=Counter+1;
         End;
      End;
   End;
   result:=Counter;
end;

{procedure Matriz.FilaTraspuesta;
var
  I,J: Integer;
begin
 for I := 1 to NroColumnas do
 Begin
   for J := 1 to NroFilas do
     Begin
      Celdas[I,J]:= Celdas[]
     End;
 End;
end;}

procedure Matriz.InsColumna(c: Word);
begin
 if (c>0) and (c<=NroFilas) then
 Begin

 End
  Else raise Exception.Create('Error posicion fuera de rango');
end;


procedure Matriz.InsFila(f: Word);
var
  I,j: Word;
begin
begin
 if (f>0) and (f<=NroFilas) then
  Begin
    Inc(NroFilas);
     for I := NroFilas Downto f+1 do
      Begin
        for j := 1 to NroColumnas do
        Begin
          Celdas[i,j]:=Celdas[i-1,j];
        End;
      End;
  End
   Else raise Exception.Create('Error posicion fuera de rango');
end;
end;




procedure Matriz.IntercambiarElementos(f1,c1,f2,c2:word);
var
Aux:real;
begin
 if (f1>0) and  (c1>0) and (f2>0) and (c2>0) then
  Begin
   Aux:= Celdas[f1,c1];
   Celdas[f1,c1]:=Celdas[f2,c2];
   celdas[f2,c2]:=Aux;
  End
   Else raise Exception.Create('Error, inserte una posicion mayor a cero');

end;


procedure Matriz.invertirElementos;
Var
 fi,ci,f,c:Word;
 Aux:real;
begin
fi:=1;
ci:=1;
f:=NroFilas;
c:=NroColumnas;
while (fi<f) and (ci<c) do
 Begin
  Aux:=Celdas[fi,ci];
  celdas[fi,ci]:= Celdas[f,c];
  Celdas[f,c]:=Aux;
  fi:=fi+1;
  ci:=ci+1;
 End;
end;

function Matriz.Invertir_Num(Parametro:Integer): Integer;
var
  I: Integer;
  N_Numero:Integer;
begin
    N_Numero:=0;
   for I := 1 to Longitud_Numero(Parametro) do
    Begin
         N_Numero:= (N_Numero *10) + Trunc(Parametro mod 10);
         Parametro:=Parametro div 10;
    End;
    Result:=N_Numero;

end;

function Matriz.Longitud_Numero(Parametro: Integer): Integer;
var num:integer;
begin
      num:=0;
     while Parametro > 0 do
     Begin
        Parametro:=Parametro div 10;
        num:=num+1;
     End;
     result:=num;

end;

procedure Matriz.MatrizC;
var
  F,C1,C: Integer;
  n,aux:Word;
begin
  n:=1;
  aux:=0;

  for F := 1 to NroFilas do
    Begin
      for C1 := 1 to NroColumnas do
        Begin


        End;
    end;
 End;


procedure Matriz.MatrizShellShort;
var J,I,f,Fila2: Integer;
  Button:Boolean;

begin
 for J := 1 to NroColumnas do
  Begin
    for I := 1 to NroFilas do
      Begin
       f:= NroFilas div 2;
       while (f>0) do
        Begin
          Button:=False;
          for Fila2 := 1 to NroFilas-f do
           begin
             if (Celdas[Fila2,J]<Celdas[Fila2+f,J]) then
               Begin
                 IntercambiarElementos(Fila2,J,Fila2+f,J);
                 Button:=true;
               End;
           end;
           if (Button=False) then
            Begin
             f:=f div 2;
            End;
        End;
      End;
  End;
end;

procedure Matriz.ModElement(F, C: Word; E: real);
begin
 if (f>0) and (f<=NroFilas) and (c>0) and (c<=NroColumnas) then
  Begin
   Celdas[F,C]:=E;
  End Else raise Exception.Create('Numeros Invalidos, debe insertar posicion mayores que cero');
end;


function Matriz.ObtElement(F, C: Word): real;
begin
 if (f>0) and (f<=NroFilas) and (c>0) and (c<=NroColumnas) then
  Begin
   Result:= Celdas[F,C];
  End Else raise Exception.Create('Error numeros invalidos, debe insertar numero mayores a 0');
end;


function Matriz.ObtenerElementoMasRepetido: real;
var
  J,I: Integer;
  elemento_mas_repetido,elemento:Real;
begin
elemento:= FrecuenciaElemento(Celdas[1,1]);
 for I := 1 to NroFilas do
  Begin
    for J:= 1 to nroColumnas do
      Begin
       if (Elemento<FrecuenciaElemento(Celdas[i,j])) then
          Begin
            Elemento_mas_repetido:=Celdas[i,j];
            elemento:= FrecuenciaElemento(Celdas[i,j]);
          End;
      End;
  End;
  Result:=elemento_mas_repetido;
end;

function Matriz.ObtenerElementoMayor: Real;
var
 fi,ci,f,c:Word;
 em,ne:Real;
  I: Integer;
  J: Integer;
begin
 fi:=1;
 ci:=1;
 f:=NroFilas;
 c:=NroColumnas;
 em:=Celdas[fi,ci];
  for I := 1 to NroFilas do
   Begin
     for J := 1 to NroColumnas do
      Begin
       ne:=Celdas[i,j];
        if (em<ne) then
         Begin
           em:=Celdas[i,j];
         End;
      End;
   End;
   result:=em;
end;


{function Matriz.ObtenerElnumeroMayorBinarioFila: Word;
var
  Fila: Integer;
  Columna: Integer;
  elementos:String;
 suma,contador, numero_binario,residuo,conversion,copiaFila,numeroMayor,segundoNumeroMayor:Integer;
 Vt:array[1..nf] of Integer;
  I: Integer;
begin
 elementos:='';
  contador:=0;
   suma := 0;
 for Fila := 1 to NroFilas do
   Begin
     for Columna := 1 to NroColumnas do
      Begin
       Elementos:=elementos+ FloattoStr(Celdas[Fila,Columna]);
      End;
       numero_binario:=StrtoFloat(Elementos);
        while numero_binario>=0 do
         Begin
          residuo:= numero_binario mod 10;
          conversion:=Trunc(Power(residuo*2,contador));
          suma:= Suma + conversion;
          Numero_binario:=Numero_binario div 10;
         End;
        vt[fila]:= suma;
        copiaFila:=fila;
   End;
 numeroMayor:=vt[1];
  for I := 2 to copiaFila do
   Begin
   segundoNumeroMayor:=  Vt[i];
     if (numeroMayor<segundoNumeroMayor) then
      Begin
        numeroMayor:=segundoNumeroMayor;
      End;
   End;
   result:=numeromayor;
end; }








function Matriz.ObtenerPosicionElementoMayor: String;
Var
fila,columna:Word;
elm,new:real;
  I: Integer;
  J: Integer;
begin
 Fila:=0;
 columna:=0;
 elm:=Celdas[1,1];
  for I := 1 to NroFilas do
   Begin
     for J := 1 to NroColumnas do
      Begin
       new:=celdas[i,j];
       if (elm<new) then
        Begin
          elm:=new;
          fila:=i;
          columna:=J;
        End;
      End;
   End;
   result:= 'El elemento mayor se encuentra en la fila '+ IntToStr(fila)+' y en la columna '+IntToStr(columna);
end;

function Matriz.ObtenerPosicionElementoMenor: String;
Var
fila,columna:Word;
elm,new:real;
  I: Integer;
  J: Integer;
begin
 Fila:=0;
 columna:=0;
 elm:=Celdas[1,1];
  for I := 1 to NroFilas do
   Begin
     for J := 1 to NroColumnas do
      Begin
       new:=celdas[i,j];
       if (elm>new) then
        Begin
          elm:=new;
          fila:=i;
          columna:=J;
        End;
      End;
   End;
   result:= 'El elemento menor se encuentra en la fila '+ IntToStr(fila)+' y en la columna '+IntToStr(columna);
end;
function Matriz.ObtnerElementoMenor: real;
var
 fi,ci,f,c:Word;
 em,ne:Real;
  I: Integer;
  J: Integer;
begin
 fi:=1;
 ci:=1;
 f:=NroFilas;
 c:=NroColumnas;
 em:=Celdas[fi,ci];
  for I := 1 to NroFilas do
   Begin
     for J := 1 to NroColumnas do
      Begin
       ne:=Celdas[i,j];
        if (em>ne) then
         Begin
           em:=Celdas[i,j];
         End;
      End;
   End;
   result:=em;
end;

procedure Matriz.OrdenarDiagonalPrincipalAsc;
Var
d,d1:word;
begin
 if (NroColumnas=NroFilas) then
   Begin
    for d := 1 to NroFilas-1 do
     Begin
      for d1:=d+1  to NroFilas do
       Begin
         if (Celdas[d,d]>Celdas[d1,d1]) then
          Begin
            IntercambiarElementos(d,d,d1,d1);
          End;
       End;
     End;
   End
     Else raise Exception.Create('Error, la matriz tiene que ser cuadrada');
end;


procedure Matriz.OrdenarDiagonalSegundariaAsc;
var
  c1,c2: Integer;
  nf1:Word;
  nf2:Word;
  f,c:Word;
begin
f:=NroFilas;
c:=NroColumnas;
 if (NroFilas=NroColumnas) then
  Begin
    for c1 := 1 to NroColumnas-1 do
      Begin
        for c2:= c1+1 to NroColumnas do
         Begin
          nf1:=f-c1+1;
          nf2:=c-c2+1;
           if Celdas[nf1,c1]<Celdas[nf2,c2] then
            Begin
              IntercambiarElementos(nf1,c1,nf2,c2);
            End;
         End;
      End;
  End;
end;

procedure Matriz.Ordenarmatriz;
var
 Fila,Columna:Word;
  SubFila: Word;
  SubColumna: Word;
begin
 for Fila := 1 to NroFilas do
 Begin
     if (fila=NroFilas) then
       Begin

       End;
    for Columna:= 1 to NroColumnas do


 End;
end;



procedure Matriz.OrdenarmatrizFilaFilamayoraMenor;
var
  Fila,columna: Integer;
  x,j,y,k,z:Word;
  L: Integer;
begin
 for Fila:= 1 to nroFilas do
    Begin
     if (Fila=NroFilas) then
      Begin
       X:=NroColumnas-1;
      End
       Else
        x:= NroColumnas;
       for j:= 1 to x do
         Begin
           if (j=Nrocolumnas) then
            Begin
              y:= Fila+1;
            End
              Else
               Begin
                y:=Fila;
               End;
         for k:=y  to nroFilas do
           Begin
            if (k=Fila) then
             Begin
                z:=j+1;
             End
              Else
               Begin
                 z:=1;
               End;
             for L := z to NroColumnas do
               Begin
                 if (Celdas[fila,j]>Celdas[k,l]) then
                  Begin
                   intercambiarElementos(Fila,j,k,l);
                  End;
               End;
           End;
         End;
    End;
end;



procedure Matriz.OrdenarPorFila;
var
  I: Integer;
  J,s: Integer;
begin
 for I := 1 to NroFilas do
   Begin
     for J := 1 to NroColumnas-1 do
      Begin
       for s := j+1 to NroColumnas do
         Begin
          If Celdas[i,j]> Celdas[i,s] then
           Begin
              IntercambiarElementos(i,j,i,s);
           End;
         End;
      End;
   End;
end;


procedure Matriz.OrdenarUnaFila(f: Word);
var
  I: Integer;
  j: Integer;
begin
 if (f<=NroFilas) and (f>0) then
  Begin
   for I := 1 to NroColumnas-1 do
    Begin
     for j := i+1 to Columnas do
      Begin
        if Celdas[f,i]>Celdas[f,j] then
          IntercambiarElementos(f,i,f,j);
      End;

    End;
  End
   else raise Exception.Create('Error, posicion fuera de rango');
end;

procedure Matriz.Ordenar_Circulo;
begin
 Celdas[2,2]:= Menor_Mayor[1];
 Celdas[1,1]:= Menor_Mayor[2];
 Celdas[1,2]:= Menor_Mayor[3];
 Celdas[1,3]:= Menor_Mayor[4];
 Celdas[2,3]:= Menor_Mayor[5];
 Celdas[3,3]:= Menor_Mayor[6];
 Celdas[3,2]:= Menor_Mayor[7];
 Celdas[3,1]:= Menor_Mayor[8];
 Celdas[2,1]:= Menor_Mayor[9];
end;

procedure Matriz.Ordenar_Fibbonacci;
var Fila,Columna:Integer;
  I: Word;
  J: Word;
  Button:Boolean;
  n1,n2,n3:integer;
begin
      n1:=0;n2:=1;n3:=0;
      Button:=True;
     for I := NroColumnas downto 1 do
      Begin
        if Button=True then
          Begin
            for J := NroFilas downto 1 do
            Begin
              Celdas[j,i]:= n3;
              n1:=n2+n3;
              n2:=n3;
              n3:=n1;
              Button:=False;
              continue
            End;
          End
          else if Button= False then
           Begin
            for J := 1 to NroFilas do
            Begin
              Celdas[j,i]:= n3;
               n1:=n2+n3;
               n2:=n3;
               n3:=n1;
              Button:=True;
              continue
            End;
            End;
      End;
end;

procedure Matriz.Ordenar_Vector_Shellshort;
begin

end;

function Matriz.Poner_Coma(Fila,numero:Word): real;
var Concatenado_Fila,Resultado:real;

begin
    Resultado:= Concatenar_Fila(Fila) / (Power(10,numero));
    result:=Resultado;
end;

procedure Matriz.Redimiensionar(NF, NC: Word);
begin
 NroFilas:= Nf;
 NroCOlumnas:=NC;
end;

function Matriz.SumarElementos: real;
var
  I,j: Integer;
  Sum:Real;
  ele:real;
begin
sum :=0;
 for I := 1 to NroFilas do
  Begin
   for j := 1 to NroColumnas do
   Begin
    Ele:= Celdas[i,j];
    sum:= sum + ele;
   End;
  End;
  result:=Sum;
end;


function Matriz.Sumar_Columa(Columna: Word): real;
var Fila:Word;
    Suma,Celda:real;

begin
     Suma:=0;

     for Fila := 1 to NroFilas  do
     Begin
          Celda:= Celdas[Fila,Columna];
         Suma:= Suma + Celda;
     End;

     Result:=Suma;

end;

function Matriz.Sumar_Concatenacion_Columnas: real;
var
  I: Integer;
  Sumatoria:real;
begin
      Sumatoria:=0;
     for I := 1 to NroColumnas do
      Begin
           Sumatoria:= Sumatoria + Concatenar_Columna(i);
      End;
      Result:=Sumatoria;
end;

function Matriz.Sumar_Concatenacion_Filas: real;
var
  I: Integer;
  Sumatoria:real;
begin
      Sumatoria:=0;
     for I := 1 to NroFilas do
      Begin
           Sumatoria:= Sumatoria + Concatenar_Fila(i);
      End;
      Result:=Sumatoria;
end;


function Matriz.Sumar_Diagonal_Der(Fila: Word): real;
var Columna:Word;
    Suma,Celda:real;

begin
     Suma:=0;

     for Columna := NroColumnas downto 1  do
     Begin
          Celda:= Celdas[Fila,Columna];
         Suma:= Suma + Celda;
     End;

     Result:=Suma;

end;

function Matriz.Sumar_Diagonal_Izq(Fila: Word): real;
var Columna:Word;
    Suma,Celda:real;

begin
     Suma:=0;

     for Columna := 1 to NroColumnas  do
     Begin
          Celda:= Celdas[Fila,Columna];
         Suma:= Suma + Celda;
     End;

     Result:=Suma;

end;

function Matriz.Sumar_Fila(Fila: Word): real;
var Columna:Word;
    Suma,Celda:real;

begin
     Suma:=0;

     for Columna := 1 to NroColumnas  do
     Begin
          Celda:= Celdas[Fila,Columna];
         Suma:= Suma + Columna;
     End;

     Result:=Suma;

end;
function Matriz.Sumar_Filas_Coma(Posicion:Word): real;
 var Resultado,Suma:real;
      I:Word;
begin
  Suma:=0;
  for I := 1 to NroFilas do
    Begin
      Suma:= Suma + Poner_Coma(i,Posicion);
    End;
    Result:=Suma;
end;

function Matriz.Suma_Columna(Columna: Integer): Integer;
var
  I,J: Integer;
  Suma:real;
  Respuesta:real;
  N:Integer;
  Celda:Real;
begin
     J:=Columna;
     Suma:=0;
     N:=0;
     for I := 1 to NroFilas do
      Begin
            Celda:= Celdas[I,J];
           Suma:= ((Suma* 10) + Celda) ;

      End;
      Result:=Trunc(Suma);
end;


function Matriz.Suma_Fila(Fila: Integer): integer;
var
  I,J: Integer;
  Suma:real;
  Respuesta:real;
  N:Integer;
  Celda:real;
begin
     I:=Fila;
     Suma:=0;
     N:=0;
     for J := 1 to NroColumnas do
      Begin
            Celda:= Celdas[I,J];
           Suma:= ((Suma* 10) + Celda) ;
           N:=N+1;
      End;
      Result:=Trunc(Suma);
end;

function Matriz.VerficarExisteElemento(e: real): Boolean;
var
  fila,Columna: Word;
  bandera:boolean;
begin
fila:=1;
bandera:=False;
while (fila<=NroFilas) and (Bandera=false)do
 Begin
  for columna := 1 to NroColumnas do
   Begin
    if (celdas[fila,columna]=e) then
      Begin
       Bandera:=true;
      End;
      if (bandera=true) then
       break
   End;
   fila :=fila +1;
 End;
 result:=bandera;

end;

function Matriz.VerificarMatrizsi_esta_descendiente: Boolean;
Var
bandera,bandera2:Boolean;
fila:Word;
  I: Integer;
  J: Word;
  elementoMayor1,elementoMenor1,ElementoMayor2,ElementoMenor2:Real;
begin
fila:=1;
bandera:=True;
bandera2:=true;

 while (fila<=NroFilas) and (bandera2=true) do
  Begin

    if (bandera=true) then
     Begin
      for I := 1 to NroColumnas-1 do
       Begin
        elementoMayor1:=Celdas[fila,I];
        ElementoMenor1:=Celdas[fila,I+1];
         if (ElementoMayor1<ElementoMenor1) then
          Begin
            bandera2:=not bandera;
          End;
       End;
     End;

    if (Bandera=false) then
      Begin
        for J := NroColumnas downto 2 do
         Begin
         elementoMayor2:=Celdas[fila,j];
        ElementoMenor2:=Celdas[fila,j-1];
           if (elementoMayor2<ElementoMenor2) then
            Begin
              bandera2:=not bandera2;
            End;

         End;
        End;

    fila:=fila +1;
    Bandera:= not Bandera;
  End;
  result:=bandera2;

end;

function Matriz.VerificarSimetrica: Boolean;
Var
i,j:Word;
bandera:Boolean;
begin
Bandera:=True;
 if (NroColumnas>0) and (NroFilas>0) and (Nrocolumnas=NroFilas) then
  Begin
   for I := 1 to NroFilas-1 do
    begin
     for J := i+1 to NroColumnas do
      Begin
       if Celdas[i,j]<>Celdas[j,i] then
        bandera:=False;
      End;
    end;
    result:= bandera;
  End
   Else raise Exception.Create('Error,El numero de filas no es igual al numero de columnas');
end;

function Matriz.Verificar_Mayor: Integer;
 var  I:Integer;
      Mayor_Filas:Integer;
      Mayor_Columnas:Integer;
  J: Integer;
begin
  Mayor_Filas:=0;
  Mayor_Columnas:=0;
  for I := 1 to NroFilas do
  Begin
     if Mayor_Filas < Suma_Fila(I) then
     Begin
       Mayor_Filas := Suma_Fila (I);
     End;

     if Mayor_Filas < Invertir_Num(Suma_Fila(I)) then
     Begin
        Mayor_Filas := Invertir_Num(Suma_Fila (I));
     End;

  End;
  for J := 1 to NroColumnas do
  Begin
           if Mayor_Columnas  < Suma_Columna(J) then
     Begin
       Mayor_Columnas := Suma_Columna (J);
     End;

     if Mayor_Columnas  < Invertir_Num(Suma_Columna (J)) then
     Begin
        Mayor_Columnas := Invertir_Num(Suma_Columna (J));
     End;


  End;
   if Mayor_Filas=0 then
   Begin
     result:=0;
   End
   else if Mayor_Filas = Mayor_Columnas then
   Begin
     result:=Mayor_Filas;
   End
   else if Mayor_Filas > Mayor_Columnas then
   Begin
     result:=Mayor_Filas;
   End
   else if Mayor_Columnas > Mayor_Filas then
        Begin
          result:=Mayor_Columnas;
        End;


end;

end.
