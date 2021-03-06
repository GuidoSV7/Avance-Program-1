unit UCCadena;

interface
Uses SysUtils,Math;

Const
     MaxC = 1024;
     Separadores = [',',';','.',':'];
     Vocales = ['a','e','i','o','u','A','E','I','O','U'];
     Letras = ['A'..'Z','a'..'z'];
     Consonantes = Letras - Vocales;
     Mayusculas = ['A'..'Z'];
     Minusculas = ['a'..'z'];
     Operadores = ['+','-','*','/'];
     numeros = ['1'..'9'];
Type
    Cadena = Class
      Private
            Cadena:String;
            Subcadena:String;
            Posicion:Integer;
            Longitud : integer;
            Caracteres : Array[1..MaxC] of Char;
      Public
             Function getLong : integer;
             Procedure AddChar(c:Char);
             Function getChar(p:integer):Char;
             Procedure modChar(p:integer;c:Char);
             Procedure delChar(p:integer);
             Procedure insChar(p:integer;c:Char);
             Procedure invChars;
             Procedure upperCase;
             Procedure lowerCase;
             Function nWord(p: integer): String;
             Function nextWord(var i: integer): String;
             function countWord: Integer;
             Function Getcadena:String;
             Procedure Setcadena(Parametro:String);
             Function GetSubcadena:String;
             Procedure SetSubcadena(Parametro:String);
             Function GetPosicion:Integer;
             Procedure SetPosicion(Parametro:String);
             Function Contar_Palabras:Integer;
             Function Sacar_Palabras(Parametro2:Integer):String;
             Function Mayor_Palabra(Parametro:String):String;    //Falta Completar
             Function Contar_Consonantes: Integer;
             Function Contar_Consonantes_Todos:Integer;
             Function Cadena_Suma(Parametro:String):String;  //Falta COmpletar
            // function Cadena.ResolExp: string;
             Function Eliminar_Palabra_Vocal_Repetida:String;
             Function Cantidad_Repetida(Parametro:String;Parametro2:String):Integer;
             Function Cantidad_Repetida_Char(Parametro:String;Parametro2:String):Integer;   //Funcion auxiliar
             Function Comprobar_cadena_subcadena(Parametro:String):Integer;
             Function Iniciales:String;
             Function Sustituci?n_caracteres(Parametro:char;Parametro2:char):String;
             Function Mayusc_Minusc_Minusc_Mayusc:String;
             Function Invertir_Primera_Ultima:String;
             Function Texto_Numero:String;
             Function Intercalar_Vocales_Consonantes:String;
             Function Eliminar_Letra(Palabra:String; posicion:integer):String;
             Function Mostrar_Posiciones_char(letra:string):String;
             Function Verificar_Tipo(Parametro:integer):string;
             Function Palabra_larga:String;
             Function Cargar_Vocales(Parametro:String):String;
             Function Cargar_Consonantes(Parametro:String):String;

             Function Devolver_Hora_Menor:String;

             Procedure Quitar_coma;
             Function Separar_Separadores(Parametro:String):String;
             Function Limpiar_Cadena:String;
             Procedure Devolver_Menor;
             Function N_menor(Parametro:Integer):String;

    End;

implementation

{ Cadena }

procedure Cadena.AddChar(c: Char);
begin
      Inc(Longitud);
      Caracteres[Longitud]:=c;

end;


function Cadena.Cadena_Suma(Parametro: String): String;
var Operador,Num1,Num2,Numero,Conjunto :String;
    I:Integer;
begin
Numero:= Parametro;
 for I := 1 to Length(Numero) do
 Begin
    if not (Numero[I]in Operadores)  then
    Begin
      Num1:= Num1 + Numero[I];
    End;
    if (Numero[I]in Operadores) then
    Begin
      Operador:= Numero[I];
    End;


 End;


end;

function Cadena.Cantidad_Repetida(Parametro, Parametro2: String): Integer;
var
  I,Contador: Integer;
begin
Contador:= 0;
  if Pos(Parametro2,Parametro) <> 0 then  //Ho,Hola
  Begin
   Contador:= Contador +1;
  End;
Result:= Contador;
end;

function Cadena.Cantidad_Repetida_Char(Parametro: String;Parametro2:String): Integer;
var
  I,Contador: Integer;
begin
Contador:= 0;
for I := 1 to Length(Parametro) do
Begin
  if (Parametro[I] = Parametro2) or (Upcase(Parametro[I]) = Parametro2) then
  Begin
   Contador:= Contador +1;
  End;
End;
Result:= Contador;
end;

Function Cadena.Cargar_Consonantes(Parametro:string):String;
Var N_Palabra:string;
  I: Integer;
begin
    N_Palabra:='';
    for I := 1 to Length(Parametro) do
    Begin
        if Parametro[I] in Consonantes then
        Begin
           N_Palabra:=N_Palabra+Parametro[I];
        End;
    End;
    Result:=N_Palabra;
end;

Function Cadena.Cargar_Vocales(Parametro:string):String;
Var N_Palabra:string;
  I: Integer;
begin
    N_Palabra:='';
    for I := 1 to Length(Parametro) do
    Begin
        if Parametro[I] in Vocales then
        Begin
           N_Palabra:=N_Palabra+Parametro[I];
        End;
    End;
    Result:=N_Palabra;

end;

function Cadena.Comprobar_cadena_subcadena(Parametro: String): Integer;
var Palabra:String;
    I,J,Contador:Integer;
begin
Contador:= 0;
for I := 1 to Contar_Palabras do
  Begin
       Palabra := nextWord(I);
       if (Pos(Parametro, Palabra) = 1) Then
       Begin
         Contador:= Contador + 1;
       End;
  End;
Result:= Contador;
end;

function Cadena.Contar_Consonantes: Integer;
var I, J,Contador : integer;
begin
  Contador:= 0;
if cadena <> '' then
Begin
 cadena:= Trim(cadena);
 for I := 1 to Length(cadena) do
   Begin
      if (I=1) and (cadena[I] in Consonantes)  Then
      Begin
       Contador := Contador +1;
       Continue;
      End

     else if ((cadena[I] in Consonantes)and(cadena[I-1] in Separadores ))then
      Begin
        Contador:=Contador +1;
      End;
      Continue;
   End;

  Result := Contador;
End
Else raise Exception.Create('Por favor introduce una palabra');

end;

function Cadena.Contar_Consonantes_Todos: Integer;
var I, J,Contador : integer;
  K: Integer;
  Palabra:String;
begin
  Contador:= 0;
if cadena <> '' then
Begin
 Cadena:= Trim(cadena);
 for K := 1 to Contar_Palabras do
  Begin
  Palabra:= Sacar_Palabras(K);
   for I := 1 to Length(cadena) do
   Begin
      if (I=1) and (Palabra[I] in Consonantes)  Then
      Begin
       Contador := Contador +1;
       Continue;
      End

      else if (I = Length(Palabra)) and (Palabra[I] in Consonantes) then
      Begin
       Contador := Contador +1;
       Continue;
      End

     else if ((Palabra[I] in Consonantes)and(Palabra[I-1] in Separadores ))then
      Begin
        Contador:=Contador +1;
      End;
      Continue;
   End;

  End;

  Result := Contador;
End
Else raise Exception.Create('Por favor introduce una palabra');

end;

function Cadena.Contar_Palabras: Integer;
var I, J,Contador : integer;
begin
  Contador:= 0;
if Cadena <> '' then
Begin
 Cadena:= Trim(Cadena);
 for I := 1 to Length(Cadena) do
   Begin
      if not((Cadena[I] in  ['A'..'Z']) or (Cadena[I] in  ['a'..'z']) )  Then
      Begin
       Cadena[I] := ' ';
      End;
      Continue;
   End;

   for J := 1 to Length(Cadena) do
   Begin
     if (Cadena[J] = ' ' ) and ((Cadena[j+1] in ['A'..'Z']) or (Cadena[J+1] in ['a'..'z'])) then
      Begin
        Contador:=Contador +1;
      End;
      Continue;
   End;

  Result := Contador +1;
End
Else raise Exception.Create('Por favor introduce una palabra');

end;

function Cadena.countWord: Integer;
Var
   i,c : integer;
begin
     i:=1; c:=0;
     while i<Longitud do
     Begin
          if not (Caracteres[i] in Separadores) And (Caracteres[i+1] in Separadores)  then
             c:=c+1;
          i:=i+1;
     End;
     if not (Caracteres[i] in Separadores) Then c:=c+1;
     Result:=c;
end;

procedure Cadena.delChar(p: integer);
Var
   i : integer;
Begin
     for I := p to Longitud - 1 do
       Begin
         cadena[I]:= cadena[I+1];
       End;
       Dec(Longitud);
end;


function Cadena.Devolver_Hora_Menor: String;
var Hora_Menor,Palabra,Palabra2:String;
  I,J,P2,auxi,menor: Integer;
begin

    Result:= Hora_Menor;
end;

Procedure Cadena.Devolver_Menor;
begin

end;

function Cadena.Eliminar_Letra(Palabra:String; posicion:integer): String;
Var
   i : integer;
begin
     if (posicion>0) And (posicion <= Length(Palabra) ) then
     begin
         for I := posicion  to Length(Palabra)-1 do
         Begin
            Palabra[I]:=Palabra[I+1];
         End;
         Palabra[Length(Palabra)]:= ' ';
     end
     Else raise Exception.Create('Error posicion fuera de rango');
     Result:=Trim(Palabra);
end;

function Cadena.Eliminar_Palabra_Vocal_Repetida: String;
Var Palabra,N_Palabra,Vocales:String;
    i,j:Integer;
begin
N_Palabra:= Cadena;
Vocales:= 'aeiouAEIOU';
  for I := 1 to Contar_Palabras do
  Begin
       Palabra := Sacar_Palabras(I);
       for J := 1 to Length(Vocales) do
         Begin
          if Cantidad_Repetida(Palabra,Vocales[J]) > 1 then
          Begin
             N_Palabra:=StringReplace(N_Palabra,Palabra, '',[rfReplaceAll, rfIgnoreCase]);
          End;
         End;
  End;
Result:= N_Palabra;
end;

function Cadena.Getcadena: String;
begin
  Result:=Trim(Cadena);
end;

function Cadena.getChar(p:integer): Char;
begin
     if (p>0) And (p<=Longitud) then
     begin
          Result:=Caracteres[p];
     end
     Else raise Exception.Create('Error posicion fuera de rango');
end;

function Cadena.getLong: integer;
begin
     Result:=Longitud;
end;

function Cadena.GetPosicion: Integer;
begin
      Result:=Posicion;
end;

function Cadena.GetSubcadena: String;
begin
      Result:=Subcadena;
end;

function Cadena.Iniciales: String;
var Palabra,Iniciales:String;
    Letra:Char;
    I,J,Contador:Integer;
begin
Iniciales:= '';
Contador:= 0;

for I := 1 to Contar_Palabras do
  Begin
       Palabra := nextWord(I);
       Letra:= Upcase(Palabra[1]);
       Iniciales:= Iniciales + Letra + '.';
  End;
  Delete(Iniciales,Length(Iniciales),1);  // M.S.M,6,1
  Result:= Iniciales;
end;



procedure Cadena.insChar(p: integer; c: Char);
var
  I: integer;
begin
     if (p>0) And (p<=Longitud) then
     begin
          inc(Longitud);
          for I :=Longitud downto p+1 do
          begin
                Caracteres[I]:=Caracteres[i-1];
          end;
          Caracteres[p]:=c;
     end
     Else raise Exception.Create('Error posicion fuera de rango');


end;

Function Cadena.Intercalar_Vocales_Consonantes:String;
var Palabra,N_Palabra,N_Cadena:String ;
    I:Integer;
  J: Integer;
  Button:Boolean;
begin  {
      N_Palabra:='';
      N_Cadena:='';
     for I := 1 to Contar_Palabras do
     Begin
       Palabra:=nextWord(I);
       Button:=True;
       for J := 1 to Length(Palabra) do
       Begin
         if ((Button = True) and (Palabra[J] in Vocales)) then
         Begin
           N_Palabra:=N_Palabra + Palabra[J];
           Button:= False;
           Eliminar_Letra(Palabra,J);
           Continue
         End

          else if ((Button = False) and (Palabra[J] in Consonantes)) then
         Begin
           N_Palabra:=N_Palabra + Palabra[J];
           Button:=True;
           Eliminar_Letra(Palabra,J);
           Continue
         End;
      End;
      N_Cadena:=N_Cadena + N_Palabra + ' ';
     End;       }

   Result:= N_Cadena;



end;


procedure Cadena.invChars;
Var
    i,f : integer;
    a : Char;
begin
      i:=1;
      f:=Longitud;
      while i<f do
      begin
           a:=Caracteres[i];
           Caracteres[i]:=Caracteres[f];
           Caracteres[f]:=a;
           i:=i+1;
           f:=f-1;
      end;
end;


function Cadena.Invertir_Primera_Ultima: String;
var Palabra,N_Palabra,Palabra_Cadena:String;
    Primer_Letra,Segunda_Letra:Char;
    I,Contador:Integer;
    J,K: Integer;

begin
//Cd:=Cadena;
N_Palabra:='';
Contador:= 0;
//Cd:= Trim(Cd);
for I := 1 to Contar_Palabras do
  Begin
       Palabra := nextWord(I);
       Primer_Letra := Palabra[1];
       Segunda_Letra := Palabra[Length(Palabra)];
       Palabra[1] := Segunda_Letra; Palabra[Length(Palabra)] := Primer_Letra;
       N_Palabra := N_Palabra +Palabra +' ';
  End;
for K := 1 to Contar_Palabras do
Begin
  Palabra_Cadena := nextWord(K);
  //Palabra_Cadena2:=
  for J := 1 to Length(Palabra_Cadena) do
  Begin
      if (Palabra_Cadena[J] in Mayusculas) and (N_Palabra[J] in Minusculas)  then
      Begin
      N_Palabra[J] := UpCase(N_Palabra[J]);
      End
      else if (Palabra_Cadena[J] in Minusculas) and (N_Palabra[J] in Mayusculas) then
      Begin
      N_Palabra[J] := Chr(Ord(N_Palabra[J]) + 32);
      End;
  End;
End;


  Result:=N_Palabra;
end;


Function Cadena.Limpiar_Cadena:String;
var
  I: Integer;
  N_Cadena:string;
begin
  N_Cadena:=cadena;
for I := 1 to Length(N_cadena) do
Begin
  if N_cadena[I] in separadores then
  Begin
    N_Cadena:= Eliminar_Letra(N_cadena,I);
  End;
  Result:=N_Cadena;
End;
end;

procedure Cadena.lowerCase;
var
  I: Integer;
begin
     for I := 1 to Longitud do
       if Caracteres[i] in ['A'..'Z'] then
          Caracteres[i]:=Chr(ord(Caracteres[i])+32);
end;

function Cadena.Mayor_Palabra(Parametro: String): String;
var I, J,Contador : integer;
    Mayor: String;
begin
  Contador:= 0;
if Parametro <> '' then
Begin
 Parametro:= Trim(Parametro);
 for I := 1 to Length(Parametro) do
   Begin
      if not((Parametro[I] in  ['A'..'Z']) or (Parametro[I] in  ['a'..'z']) )  Then
      Begin
       Parametro[I] := ' ';
      End;
      Continue;
   End;

   for J := 1 to Length(Parametro) do
   Begin
     if (Parametro[J] = ' ' ) and ((Parametro[j+1] in ['A'..'Z']) or (Parametro[J+1] in ['a'..'z'])) then
      Begin
        Contador:=Contador +1;
      End;
      Continue;
   End;

 // Result := Contador;
End
end;

function Cadena.Mayusc_Minusc_Minusc_Mayusc: String;
var Palabra:String;
    I:Integer;
begin
for I := 1 to Length(Cadena) do
  Begin
       if Cadena[I] in Mayusculas then Begin Cadena[I] :=  Chr(Ord(Cadena[I]) + 32) End
       else if Cadena[I] in Minusculas then Begin Cadena[I] := Upcase(Cadena[I]);  End;
       if Cadena[I] ='?' then Begin Cadena[I] := '?' End
       else if Cadena[I] ='?' then Begin Cadena[I] := '?' End;
  End;
  Result:= Cadena;
end;

procedure Cadena.modChar(p: integer; c: Char);
begin
     if (p>0) And (p<=Longitud) then
     begin
          Caracteres[p]:=C;
     end
     Else raise Exception.Create('Error posicion fuera de rango');
end;

function Cadena.Mostrar_Posiciones_char(letra: string): String;
var Palabra:String;
  I: Integer;
  Resultado:string;
begin
      Resultado:= '';
      for I := 1 to Length(cadena) do
      Begin
         if Cadena[I] = letra then
         Begin
            Resultado:= Resultado + IntTOStr(I) + ' ';
         End;
      End;
      Result:= Resultado;
end;

function Cadena.nextWord(var i: integer): String;
var
    p: String;
begin
     while (i<=Longitud) and (Cadena[i] in Separadores) do
         i:=i+1;
     p:='';
     while (i<=Longitud) and not (Cadena[i] in Separadores) do
     begin
          p:=p+Cadena[i];
          i:=i+1;
     end;
     Result:=p;
end;

function Cadena.nWord(p: Integer): String;
Var
   k,c: integer;
   pal : String;
begin
     if (p>0) and (p<=countWord) then
     Begin
          k:=1;
          while p>0 do
          begin
               Pal:=nextWord(k);
               p:=p-1;
           end;
           result:=Pal;
     End
     Else raise Exception.Create('La posicion no es valida');


end;
function Cadena.N_menor(Parametro: Integer): String;
Var Digito,Menor:Integer;
begin
Menor:=10000000;
 //while Length(Parametro)>0 do
 // Begin
  //  Digito := Parametro mod 10;
  //  if Menor > Digito then
  //  Begin
  //    Menor:= Digito;
   //  Parametro := Parametro div 10;
   //   Continue
   // End;
   // Parametro:= Parametro div 10;
 // End;
 //Result:= Menor;
end;

function Cadena.Palabra_larga: String;
var Palabra,auxi:string;
  I: Integer;
  Comprobar:integer;
begin
      Palabra:=' ';
     for I := 1 to Contar_Palabras do
    Begin
          auxi:=Sacar_Palabras(I);
          if Length(auxi) > Length(Palabra) then
          Begin
            Palabra:= Sacar_Palabras(I);
          End;

    End;
     Result:=Palabra;
end;

procedure Cadena.Quitar_coma;
var
  I: Integer;
begin
for I := 1 to Longitud do
Begin
  if Cadena[I] = ',' then
  Begin
    delChar(I);
  End;
End;
end;

function Cadena.Sacar_Palabras(Parametro2:Integer): String;
Var I,Contador : integer;
    Conjunto : string;
begin
Conjunto:= '';
Contador:= 0;
Cadena:= Trim(Cadena);
  for I := 1 to Longitud do
  Begin
     if (Cadena[I] in ['A'..'Z']) or (Cadena[I] in ['a'..'z']) then
     Begin
       Conjunto:= Conjunto + Cadena[I];
       if I=Longitud then
       Begin
        Result:= Conjunto;
        Exit
       End;
     End
     else if ((Cadena[I] in Separadores) and ((Cadena[I+1] in ['a'..'z'])or (Cadena[I+1] in ['A'..'Z'] ))) then
     begin
     Contador:= Contador + 1;
     if Contador = Parametro2  then
      Begin
        Result:= Conjunto;
        Exit
      End;
     Conjunto:= '';
     end
  End;
end;



function Cadena.Separar_Separadores(Parametro: String): String;
var N_Palabra:String;
  I: Integer;
begin
for I := 1 to Length(Parametro) do
    Begin
       if Parametro[I] in numeros then
       Begin
         N_Palabra:= N_Palabra + Parametro[I];
       End;



    End;
    Result:= N_Palabra;
end;

procedure Cadena.Setcadena(Parametro: String);
begin
  Longitud:= Length(Parametro);
  Cadena:=Parametro;
end;

procedure Cadena.SetPosicion(Parametro: String);
begin
  Posicion:=StrToInt(Parametro);
end;

procedure Cadena.SetSubcadena(Parametro: String);
begin
    SubCadena:=Parametro;
end;

function Cadena.Sustituci?n_caracteres(Parametro, Parametro2: char): String;
var
    I:Integer;
begin
for I := 1 to Length(Cadena) do
  Begin
       if Cadena[I] = Parametro then
       Cadena[I] := Parametro2;
  End;

  Result:= Cadena;
end;

function Cadena.Texto_Numero: String;
begin

end;

procedure Cadena.upperCase;
var
  I: Integer;
begin
     for I := 1 to Longitud do
       if Caracteres[i] in ['a'..'z'] then
          Caracteres[i]:=Chr(ord(Caracteres[i])-32);

end;



Function Cadena.Verificar_Tipo(Parametro: integer):String;
var Palabra:String;
begin
  {if Cadena[Parametro] in vocales then
  Begin
      Palabra:= Vocales;
  End;

  if }

end;

{
function Cadena.ResolExp: string;
var i,numr,numr2,res:integer; numcad,numcad2:string; paco:integer; execute:boolean;
begin
  execute:=false; numcad:=''; numcad2:='';  numr:=0;  numr2:=0;
  {+  =1    - =2    * =3    / =4    Execute=true
  i:=1; paco:=0;
  repeat
    repeat
     if not(cadena[i] in separadores) and (cadena[i] in numeros) then begin

      if paco=0 then begin
        numcad:=numcad+cadena[i];
        numr:=strtoint(numcad);
      end else begin
        numcad2:=numcad2+cadena[i];
        numr2:=strtoint(numcad2);
      end;

     end else begin
      case (cadena[i]) of
        '+':  paco:=1;
        '-':  paco:=2;
        '*':  paco:=3;
        '/':  paco:=4;
      end;
            execute:=true;
     end;
      inc(i);

    until (execute=true)and not(cadena[i] in numeros);

    case paco of
      1:Begin
        numr:=numr+numr2;
        execute:=false;
        numcad2:='';
      End;
      2:Begin
        numr:=numr-numr2;
        execute:=false;
        numcad2:='';
      End;
      3:Begin
        numr:=numr*numr2;
        execute:=false;
        numcad2:='';
      End;
      4:Begin
        numr:=trunc(numr/numr2);
        execute:=false;
        numcad2:='';
      End;
    end;
  until i>=length(getcadena);
Result:=inttostr(numr);

end; }

end.
