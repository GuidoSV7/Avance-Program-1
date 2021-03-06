unit UCNumeros;

interface
Uses SysUtils,Math;
       Type
       Enteros = class


       Private
        Valor:Int64;
        Longitud:Integer;

       Public
        Function Longitud_Entero(Parametro:Integer):Integer;
        Procedure Setvalue(Parametro:int64);
        Function Getvalue:Int64;
        Function GetLongitud(Parametro:Integer):Integer;
        Function Eliminar_Numero(Numero_Eliminar:Integer):Int64;
        Function Invertir_Numero(Parametro:Integer):Integer;
        Function OrdenarAscendente:Integer;
        Function Ordenar_Adentro_Fuera:Integer;
        Function Mayor_Numero(Parametro:Integer):Integer;
        Function Menor_Numero(Parametro:Integer):Integer;
        function menDigit: Byte;
        Function Intercalar_Mayor_Menor:Integer;

        //Function Ejercicio_Winnipeg:Integer;



       end;


implementation

{ Enteros }


{function Enteros.Ejercicio_Winnipeg: Integer;
var Numero1:real;
    Entero,Respaldo,Contador,Contador2:Integer;
begin
Contador2:=0;
Contador:=0;
Respaldo:= Trunc(Valor);
Entero:= Trunc(Valor);



end; }

function Enteros.Eliminar_Numero(Numero_Eliminar:Integer): Int64;
 var Digito,N_Numero:Integer;
begin
N_Numero:=0;
Longitud:= Longitud_Entero(Valor);
while Longitud>0 do
Begin
  Digito:= Valor mod Trunc(Power(10,Longitud_Entero(Numero_Eliminar)));
  if Digito = Numero_Eliminar then
  Begin
    Valor:= Valor div Trunc(Power(10,Longitud_Entero(Numero_Eliminar)));
    Longitud:= Longitud_Entero(Valor);
    Continue
  End
  else Begin
    N_Numero:= (N_Numero * Trunc(Power(10,Longitud_Entero(Numero_Eliminar)))) + Invertir_Numero(Valor mod Trunc(Power(10,Longitud_Entero(Numero_Eliminar))));
    Valor:= Valor div Trunc(Power(10,Longitud_Entero(Numero_Eliminar)));
    Longitud:= Longitud_Entero(Valor);
    Continue
  End;
End;
Result:= Invertir_Numero(N_Numero);
end;

function Enteros.GetLongitud(Parametro: Integer): Integer;
begin
Result:= Longitud;
end;

function Enteros.Getvalue: Int64;
begin
 Result:= Valor;
end;

function Enteros.Intercalar_Mayor_Menor: Integer;
var Button:Boolean;
    N_Numero,Contador,Ascendente,Descendente:Integer;
begin
Contador:=0;
Button:=True;
N_Numero:= 0;
Ascendente:= OrdenarAscendente;
Descendente:= Invertir_Numero(Ascendente);
while Contador <> Longitud_Entero(Valor)  do
Begin
  if (Button = True) AND (Ascendente mod 10 <>0) then
  Begin
    N_Numero := (N_Numero*10) + (Ascendente mod 10);
    Contador:= Contador +1;
    Ascendente := Ascendente div 10;
    Button:=False;
    Continue;
  End
  else if (Button = False) AND (Ascendente mod 10 <>0)then
  Begin
    N_Numero := (N_Numero*10) + (Descendente mod 10);
    Contador:= Contador +1;
    Descendente:= Descendente div 10;
    Button:=True;
    Continue;
  End;

  if (Button = True) AND (Ascendente mod 10 = 0) then
  Begin
    N_Numero := N_Numero *10;
    Button := False;
  End

  else if (Button = False) AND (Descendente mod 10 = 0) then
  Begin
    N_Numero := N_Numero *10;
    Button := True;
  End;


End;
    Result:=N_Numero;
end;

function Enteros.Invertir_Numero(Parametro: Integer): Integer;
var Invertido,Digito:Integer;
begin
Invertido:= 0;
    while Parametro>0 do
    Begin
         Digito:= Parametro mod 10;
         Invertido := (Invertido *10) + Digito;
         Parametro:= Parametro div 10;
    End;
    Result:= Invertido;
end;

function Enteros.Longitud_Entero(Parametro: Integer): Integer;
var Contador:Integer;
begin
Contador:= 0;
while Parametro>0 do
Begin
  Parametro:= Trunc(Parametro div 10);
  Contador := Contador +1;
End;
Result:= Contador;

end;




function Enteros.Mayor_Numero(Parametro: Integer): Integer;
Var Digito,Mayor:Integer;
begin
Mayor:=0;
 while Longitud_Entero(Parametro)>0 do
  Begin
    Digito := Parametro mod 10;
    if Mayor < Digito then
    Begin
      Mayor:= Digito;
      Parametro := Parametro div 10;
      Continue
    End;
    Parametro:= Parametro div 10;
  End;
 Result:= Mayor;
end;

function Enteros.menDigit: Byte;
var menor,digito:byte;
    copia:Cardinal;
begin
  copia:=Valor;

  menor := copia mod 10;

  while copia>0 do
  begin
    digito:= copia mod 10;
    if digito < menor then
    begin
      menor := digito;
    end;
    copia := copia div 10;
  end;
  result:=menor;
end;

function Enteros.Menor_Numero(Parametro: Integer): Integer;
Var Digito,Menor:Integer;
begin
Menor:=100;
 while Longitud_Entero(Parametro)>0 do
  Begin
    Digito := Parametro mod 10;
    if Menor > Digito then
    Begin
      Menor:= Digito;
      Parametro := Parametro div 10;
      Continue
    End;
    Parametro:= Parametro div 10;
  End;
 Result:= Menor;
end;

function Enteros.OrdenarAscendente: Integer;
Var Numero, N_Numero,Digito:Integer;
  I: Integer;
begin
Numero:= valor;
I:= 0;
N_Numero:= 0;
  While I<=9 do
  Begin
    Numero:= valor;
    while Longitud_Entero(Numero)>0 do
    Begin
      Digito:= Numero mod 10;
    if Digito=I then
    Begin
       N_Numero:= (N_Numero *10) + Digito;
       Numero:= Numero div 10;
       Continue
    End
    else
    Begin
      Numero:= Numero div 10;
      Continue
    End;
   End;
   I:= I+1;
    End;
Result:= N_Numero;
end;



function Enteros.Ordenar_Adentro_Fuera: Integer;
var N_Numero,N_Ordenado,Digito:Integer;
    Button:Boolean;
begin
Digito:=1;
N_Ordenado:= Invertir_Numero(OrdenarAscendente);
Button:= True;
N_Numero:= N_Ordenado mod 10;
N_Ordenado:= N_Ordenado div 10;
while Longitud_Entero(N_Ordenado) >0  do
Begin
   if Button = True then
   Begin
     N_Numero:=  ((N_Ordenado mod 10)*Trunc(Power(10,Longitud_Entero(N_Numero))) +N_Numero );
     Button:= False;
     N_Ordenado:=N_Ordenado div 10;
     Digito:= Digito +1;
     Continue
   End
   Else if Button = False then
   Begin
     N_Numero := (N_Numero*10) + (N_Ordenado mod 10);
     Button:=True;
     N_Ordenado:=N_Ordenado div 10;
     Continue
   End;
End;
Result:= N_Numero;
end;

procedure Enteros.Setvalue(Parametro: Int64);
begin
 Longitud:= Longitud_Entero(Parametro);
 Valor:= Parametro;
end;
end.
