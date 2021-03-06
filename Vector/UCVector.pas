unit UCVector;

interface
Uses SysUtils;

Const
    MaxE = 1024;

Type
    Vector = Class
      Private
             Dimension: Word;
             Dimension_Pares:Word;
             Dimension_Impares:Word;
             Elementos: Array[1..MaxE] of Real;
             Elementos_String:Array[1..MaxE] of string;

             Elementos_Menor_Mayor: Array[1..MaxE] of Real;
             Elementos_Mayor_Menor: Array[1..MaxE] of Real;
             Elementos_Pares:Array [1..MaxE] of Real;
             Elementos_Impares:Array[1..MaxE] of Real;
             Elementos_Letras: string;
      Public
             Function Dim : Word;
             Function Dim_Pares : Word;
             Function Dim_Impares : Word;
             Procedure Dimensionar(D:Word);
             Procedure AddElement(e:Real);
             Procedure ModElement(p:word;e:string);
             Procedure Mod_Element_Letras(p:word;e:string);
             Procedure InsElement(p:word;e:Real);
             Procedure DelElement(p:integer);
             Procedure DelElement_Pares(p:word);
             Procedure DelElement_Impares(p:word);
             Function getElement(p:word):string;
             Function getElement_Menor_Mayor(p:word):Real;
             Function getElement_Mayor_Menor(p:word):Real;
             Function getElementos_Pares(p:word):Real;
             Function getElementos_Impares(p:word):Real;
             Function getElementos_Letras(p:word):string;
             Function getAVG:Real;
             Function getMax:Real;
             Function Numero_Menor:Real;
             Function NumElement(e:Real):Word;
             Function BusquedaSecuencial( e: Real): Word;
             Function BusquedaSecuencialOrdenada( e: Real): Word;
             Procedure Mayor_Menor;
             Procedure Menor_Mayor;
             Procedure Pares;
             Procedure Impares;
             Procedure Mayor_Menor_objeto;
             Procedure Menor_Mayor_objeto;
             Procedure Pares_objeto;
             Procedure Impares_objeto;
             Procedure OrdenacionIntercambio;
             Procedure Intercambiar(i, j: Word);
             Procedure Intercambiar_Menor_Mayor(i, j: Word);
             Procedure Intercambiar_Mayor_Menor(i, j: Word);
             Procedure Intercambiar_Pares(i, j: Word);
             Procedure Intercambiar_Impares(i, j: Word);
             Procedure Intercalado_Mayor_Menor;
             Procedure Intercalado_Menor_Mayor;
             Procedure Intercalado_Triangulo;
             Procedure CleanVec;
             Function Es_primoduda(parametro:integer):boolean;
             Procedure Vector_primos;
             Function Frecuencia(numero:word):integer;
             Procedure Ordenar_Nombre(nombre:integer);
             Function Eliminar_Subadecana_Cadena(Parametro:string;subcadena:String):String;
             Procedure Eliminar_Dimensio(Parametro:integer);

             Procedure Elimar_Parametro_Nombre(Parametro:String);

    End;

implementation

{ Vector }

procedure Vector.AddElement(e: Real);
begin
     Inc(Dimension);
     Elementos[Dimension]:=e;
     Elementos_Menor_Mayor[Dimension]:=e;
     Elementos_Mayor_Menor[Dimension]:=e;
     Elementos_Pares[Dimension]:=e;
     Elementos_Impares[Dimension]:=e;
end;

function Vector.BusquedaSecuencial(e: Real): Word;
Var i:Word;
begin
     i:=1;
     while (i<=Dimension) And (Elementos[i]<>e) do
         inc(i);
     Result:=(i mod (dimension+1));
end;

function Vector.BusquedaSecuencialOrdenada(e: Real): Word;
begin

end;

procedure Vector.CleanVec;
begin

end;

procedure Vector.DelElement(p: integer);
var
  I: Word;
begin
     if (p>0) and (p<Dimension) then
     Begin
          for I := P to Dimension-1 do
              Elementos[I]:=Elementos[I+1];
          Dec(Dimension);
     End
          else if p=Dimension then
          Begin
            Dec(Dimension);
          End
     Else raise Exception.Create('Error posicion fuera de rango');
end;



procedure Vector.DelElement_Impares(p: word);
var
  I: Word;
begin
     if (p>0) and (p<=Dimension_Impares) then
     Begin
          for I := P to Dimension_Impares-1 do
              Elementos_Impares[I]:=Elementos_Impares[I+1];
          Dec(Dimension_Impares);
     End
          else if p=Dimension_Impares then
          Begin
            Dec(Dimension_Impares);
          End
     Else raise Exception.Create('Error posicion fuera de rango');
end;

procedure Vector.DelElement_Pares(p: word);
var
  I: Word;
begin
     if (p>0) and (p<Dimension_Pares) then
     Begin
          for I := p to Dimension_Pares-1 do
              Elementos_Pares[I]:=Elementos_Pares[I+1];
          Dec(Dimension_Pares);
     End
     else if p=Dimension_Pares then
          Begin
            Dec(Dimension_Pares);
          End
     Else raise Exception.Create('Error posicion fuera de rango');
end;
function Vector.Dim: Word;
begin
      Result:=Dimension;
end;

procedure Vector.Dimensionar(D: Word);
begin
     Dimension:=D;
     Dimension_Pares:=D;
     Dimension_Impares:=D;
end;



function Vector.Dim_Impares: Word;
begin
     Result:=Dimension_Pares;
end;

function Vector.Dim_Pares: Word;
begin
     Result:=Dimension_Impares;
end;

procedure Vector.Elimar_Parametro_Nombre(Parametro: String);
var
  I: Integer;
begin
   for I := 1 to Dimension do
   Begin
      Elementos_String[I]:= Eliminar_Subadecana_Cadena(Elementos_String[I],Parametro);
      if Elementos_String[I] = '' then
      Begin
        Eliminar_Dimensio(I);
      End;

   End;
end;

procedure Vector.Eliminar_Dimensio(Parametro: integer);
var
  I: Integer;
begin
  for I := Parametro to Dimension-1 do
  Begin
     Elementos_String[I]:= Elementos_String[I+1];
  End;
  Dec(Dimension);
end;

function Vector.Eliminar_Subadecana_Cadena(Parametro: String;subcadena:String): String;
var N_Palabra:string;
begin
   if Ansipos(subcadena,Parametro)<>0 then
    Begin
       N_Palabra:=StringReplace(Parametro, subcadena , '',
                          [rfReplaceAll, rfIgnoreCase]);
       Result:=N_Palabra;

    End
    else
    Begin
     result:=Parametro;
    End;

end;

function Vector.Es_primoduda(parametro: integer): boolean;
  var button:boolean;
     i:integer;
begin
     if parametro=4 then
     Begin
       button:= false;
     End;

end;

function Vector.Frecuencia(numero: word): integer;
Var
   I : Word;
   fr:integer;
begin
      fr:=0;
     if Dimension>0 then
     Begin
         for I := 1 to Dimension do
           Begin
              if numero = Elementos[i] then
              Begin
                 fr:=fr+1;
              End;
           End;
           Result:= fr;
     End
     Else raise Exception.Create('Error vector vacio');
end;


function Vector.getAVG: Real;
Var
   I : Word;
   S : Real;
begin
     if Dimension>0 then
     Begin
         S:=0;
         for I := 1 to Dimension do
             S:=S+Elementos[I];
         Result:= S /  Dimension;
     End
     Else raise Exception.Create('Error vector vacio');
end;



function Vector.getElement(p: word): string;
begin
      if (p>0) and (p<=Dimension) then
     Begin
          Result:=Elementos_String[p];
     End
     Else raise Exception.Create('Error posicion fuera de rango');
end;

function Vector.getElementos_Impares(p: word): Real;
begin
      if (p>0) and (p<=Dimension) then
     Begin
          Result:=Elementos_Impares[p];
     End
     Else raise Exception.Create('Error posicion fuera de rango');
end;


function Vector.getElementos_Letras(p: word): string;
begin
      if (p>0) and (p<=Dimension) then
     Begin
          Result:=Elementos_Letras[p];
     End
     Else raise Exception.Create('Error posicion fuera de rango');
end;

function Vector.getElementos_Pares(p: word): Real;
begin
      if (p>0) and (p<=Dimension_Pares) then
     Begin
          Result:=Elementos_Pares[p];
     End
     Else raise Exception.Create('Error posicion fuera de rango');
end;

function Vector.getElement_Mayor_Menor(p: word): Real;
begin
      if (p>0) and (p<=Dimension) then
     Begin
          Result:=Elementos_Mayor_Menor[p];
     End
     Else raise Exception.Create('Error posicion fuera de rango');
end;
function Vector.getElement_Menor_Mayor(p: word): Real;
begin
      if (p>0) and (p<=Dimension) then
     Begin
          Result:=Elementos_Menor_Mayor[p];
     End
     Else raise Exception.Create('Error posicion fuera de rango');
end;

function Vector.getMax: Real;
Var
    May : Real;
    I: Integer;
begin
     if Dimension>0 then
     Begin
         May:=Elementos[1];
         for I := 2 to Dimension do
             if Elementos[I]>May then
                May:=Elementos[I];
         Result:=May;
     End
     Else raise Exception.Create('Error vector vacio');
end;

procedure Vector.Impares;
var
  I: Integer;

begin
      I := 1;
     while I <= Dimension_Impares do
     Begin
       if (Trunc(Elementos_Pares[i]) mod 2 = 0) then
       Begin
         DelElement_Impares(i);
         continue
       End;
       I:=I+1;
     End;

end;

procedure Vector.Impares_objeto;
var
  I: Integer;

begin
      I := 1;
     while I <= Dimension do
     Begin
       if (Trunc(Elementos[i]) mod 2 = 0) then
       Begin
         DelElement(i);
         continue
       End;
       I:=I+1;
     End;

end;

procedure Vector.InsElement(p: word; e: Real);
var
  I: Word;
begin
      if (p>0) and (p<=Dimension) then
     Begin
          Inc(Dimension);
          for I := Dimension downto p+1 do
              Elementos[I]:=Elementos[I-1];
          Elementos[p]:=e;
     End
     Else raise Exception.Create('Error posicion fuera de rango');
end;






procedure Vector.Intercalado_Triangulo;
Var i,Ma,Me,Medio:Word;
    button:boolean;
begin
     Medio:= (Round(Dimension /2))+1;
     button:=true;
     i:=1; Me:=1;
     while (i<=Dimension) do
     Begin
        if button=true then
         Begin
            Elementos[Medio]:= Elementos_Menor_Mayor [Me];
            button := false;
            Medio:=Medio-i;
            i:=i+1;
            Me:=Me+1;
            continue;
         End
         else
         Begin
            Elementos[Medio]:= Elementos_Menor_Mayor [Me];
            button := true;
            Medio:=Medio+i;
            i:=i+1;
            Me:=Me+1;
            continue;
         End;
     End;

end;

procedure Vector.Intercalado_Mayor_Menor;
Var i,Ma,Me:Word;
    button:boolean;
begin
     button:=true;
     i:=1; Ma:=1; Me:=1;
     while (i<=Dimension) do
     Begin
        if button=true then
         Begin
           Elementos[i]:= Elementos_Mayor_Menor [Ma];
            button := false;
            i:=i+1;
            Ma:=Ma+1;
            continue;
         End
         else
         Begin
            Elementos[i]:= Elementos_Menor_Mayor [Me];
            button := true;
            i:=i+1;
            Me:=Me-1;
            continue;
         End;
     End;

end;

procedure Vector.Intercalado_Menor_Mayor;
Var i,Ma,Me:Word;
    button:boolean;
begin
     button:=false;
     i:=1; Ma:=1; Me:=1;
     while (i<=Dimension) do
     Begin
        if button=true then
         Begin
            Elementos[i]:= Elementos_Mayor_Menor [Ma];
            button := false;
            i:=i+1;
            Ma:=Ma+1;
            continue;
         End
         else
         Begin
            Elementos[i]:= Elementos_Menor_Mayor [Me];
            button := true;
            i:=i+1;
            Me:=Me+1;
            continue;
         End;
     End;

end;


procedure Vector.Intercambiar(i, j: Word);
Var
    aux : Real;
begin
     aux:=Elementos[i];
     Elementos[i]:=Elementos[j];
     Elementos[j]:=aux;
end;

procedure Vector.Intercambiar_Impares(i, j: Word);
begin

end;

procedure Vector.Intercambiar_Mayor_Menor(i, j: Word);
Var
    aux : Real;
begin
     aux:=Elementos_Mayor_Menor[i];
     Elementos_Mayor_Menor[i]:=Elementos_Mayor_Menor[j];
     Elementos_Mayor_Menor[j]:=aux;
end;

procedure Vector.Intercambiar_Menor_Mayor(i, j: Word);
Var
    aux : Real;
begin
     aux:=Elementos_Menor_Mayor[i];
     Elementos_Menor_Mayor[i]:=Elementos_Menor_Mayor[j];
     Elementos_Menor_Mayor[j]:=aux;
end;

procedure Vector.Intercambiar_Pares(i, j: Word);
begin

end;

procedure Vector.Mayor_Menor;
var
  I: Integer;
  J: Integer;
begin
     for I := 1 to Dimension-1 do
         for J := i+1 to Dimension do
             if Elementos_Mayor_Menor[i]<Elementos_Mayor_Menor[j] Then
                Intercambiar_Mayor_Menor(i,j);
end;

procedure Vector.Mayor_Menor_objeto;
var
  I: Integer;
  J: Integer;
begin
     for I := 1 to Dimension-1 do
         for J := i+1 to Dimension do
             if Elementos[i]<Elementos[j] Then
                Intercambiar(i,j);
end;

procedure Vector.Menor_Mayor;
var
  I: Integer;
  J: Integer;
begin
     for I := 1 to Dimension-1 do
         for J := i+1 to Dimension do
             if Elementos_Menor_Mayor[i]>Elementos_Menor_Mayor[j] Then
                Intercambiar_Menor_Mayor(i,j);
end;

procedure Vector.Menor_Mayor_objeto;
var
  I: Integer;
  J: Integer;
begin
     for I := 1 to Dimension-1 do
         for J := i+1 to Dimension do
             if Elementos[i]>Elementos[j] Then
                Intercambiar(i,j);
end;

procedure Vector.ModElement(p: word; e: string);
begin
     if (p>0) and (p<=Dimension) then
     Begin
         // Elementos[p]:=e;
          //Elementos_Menor_Mayor[p]:=e;
          //Elementos_Mayor_Menor[p]:=e;
         // Elementos_Pares[p]:=e;
          //Elementos_Impares[p]:=e;
          Elementos_String[p]:=e;

     End
     Else raise Exception.Create('Error posicion fuera de rango');
end;

procedure Vector.Mod_Element_Letras(p: word; e: string);
begin
     if (p>0) and (p<=Dimension) then
     Begin
        Elementos_Letras:=e;

     End
     Else raise Exception.Create('Error posicion fuera de rango');
end;
function Vector.NumElement(e: Real): Word;
var
  I,c: Integer;
begin
     c:=0;
     for I := 1 to Dimension do
        if Elementos[I]=e then
           c:=c+1;
     Result:=c;
end;

function Vector.Numero_Menor: Real;
Var
    Menor : Real;
    I: Integer;
begin
     if Dimension>0 then
     Begin
         Menor:=Elementos[1];
         for I := 2 to Dimension do
         Begin
            if Elementos[I]<Menor then Begin
                Menor:=Elementos[I];
            End;

         End;
         Result:=Menor;
     End
     Else raise Exception.Create('Error vector vacio');
end;
procedure Vector.OrdenacionIntercambio;
var
  I: Integer;
  J: Integer;
begin
     for I := 1 to Dimension-1 do
         for J := i+1 to Dimension do
             if Elementos[i]>Elementos[j] Then
                Intercambiar(i,j);
end;

procedure Vector.Ordenar_Nombre(nombre: integer);
var
  I: Integer;
  Nombre_elemento:String;
begin
 // Nombre_Elemento:= nombre;

end;

procedure Vector.Pares;
var
  I: Integer;

begin
      I := 1;
     while I <= Dimension_Pares do
     Begin
       if not(Trunc(Elementos_Pares[i]) mod 2 = 0) then
       Begin
         DelElement_Pares(i);
         continue
       End;
       I:=I+1;
     End;

end;

procedure Vector.Pares_objeto;
var
  I: Integer;

begin
      I := 1;
     while I <= Dimension do
     Begin
       if not(Trunc(Elementos[i]) mod 2 = 0) then
       Begin
         DelElement(i);
         continue
       End;
       I:=I+1;
     End;

end;

procedure Vector.Vector_primos;
var
  I: Integer;

begin
     for I := 1 to Dimension-1 do
     Begin

     End;

end;

{

procedure Vector.CleanVec;
var i:word;
begin
  for i := dim downto 1 do begin
    elementos[i]:=elementos[i+1];
  end;
  dim:=0;

end;
  }


end.
