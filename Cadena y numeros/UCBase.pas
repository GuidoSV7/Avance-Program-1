unit UCBase;

interface
Uses SysUtils;


Const
     MaxC = 1024;
     Separadores = [' ',',',';','.'];
     Vocales = ['a','e','i','o','u','A','E','I','O','U'];
     Letras = ['A'..'Z','a'..'z'];
     Consonantes = Letras - Vocales;
Type
    Numero = Class
      Private

             Longitud : Word;
             Caracteres : Array[1..MaxC] of Char;
      Public
             Function Binario(Parametro:Integer):String;
             Function Hexadecimal(Parametro:Integer):string;
             Function BaseN(Parametro:Integer;Base:Integer):string;
             Function Romano(Parametro:Integer):string;
             Function Literal(Parametro:Integer):string;
             Function Invertir_Palabra(Parametro:String):String;


    End;
implementation

function Numero.BaseN(Parametro:Integer;Base:Integer): string;
var Residuo : Integer;
     N_Numero : String;
     Letras :String;
begin
Letras := 'ABCDEFHIJKLMNOPQRSTUVWXYZ';
N_Numero := '';
  while Parametro > 0 do
  Begin
  if Parametro < Base then
    Begin
      N_Numero := N_Numero + IntToStr(Parametro);
      Break;
    End;
    if Base >= 11 then
    Begin
      Residuo := Parametro mod Base;
      if Residuo >=11 then
      Begin
        Residuo:= Trunc(Residuo mod 10);
        N_Numero:= N_Numero + Letras[Residuo+1];
        Parametro:= Parametro div Base;
        Continue;
      End;
      N_Numero := N_Numero + IntToStr(Residuo);
      Parametro:= Parametro div Base;
      Continue;
    End;

    Residuo:= Parametro mod Base;
    N_Numero := N_Numero + IntToStr(Residuo);
    Parametro:= Parametro div Base;
  End;
  Result:= Invertir_Palabra(N_Numero);
end;

function Numero.Binario(Parametro:Integer): String;
var Residuo : Integer;
     N_Numero : String;
     Letras :String;
begin
Letras := 'ABCDEFHIJKLMNOPQRSTUVWXYZ';
N_Numero := '';
  while Parametro > 0 do
  Begin
  if Parametro < 2 then
    Begin
      N_Numero := N_Numero + IntToStr(Parametro);
      Break;
    End;
    if 2 >= 11 then
    Begin
      Residuo := Parametro mod 2;
      if Residuo >=11 then
      Begin
        Residuo:= Trunc(Residuo mod 10);
        N_Numero:= N_Numero + Letras[Residuo+1];
        Parametro:= Parametro div 2;
        Continue;
      End;
      N_Numero := N_Numero + IntToStr(Residuo);
      Parametro:= Parametro div 2;
      Continue;
    End;

    Residuo:= Parametro mod 2;
    N_Numero := N_Numero + IntToStr(Residuo);
    Parametro:= Parametro div 2;
  End;
  Result:= Invertir_Palabra(N_Numero);
end;



function Numero.Hexadecimal(Parametro:Integer): string;
var Residuo : Integer;
     N_Numero : String;
     Letras :String;
begin
Letras := 'ABCDEFHIJKLMNOPQRSTUVWXYZ';
N_Numero := '';
  while Parametro > 0 do
  Begin
  if Parametro < 16 then
    Begin
      N_Numero := N_Numero + IntToStr(Parametro);
      Break;
    End;
    if 16 >= 11 then
    Begin
      Residuo := Parametro mod 16;
      if Residuo >=11 then
      Begin
        Residuo:= Trunc(Residuo mod 10);
        N_Numero:= N_Numero + Letras[Residuo+1];
        Parametro:= Parametro div 16;
        Continue;
      End;
      N_Numero := N_Numero + IntToStr(Residuo);
      Parametro:= Parametro div 16;
      Continue;
    End;

    Residuo:= Parametro mod 16;
    N_Numero := N_Numero + IntToStr(Residuo);
    Parametro:= Parametro div 16;
  End;
  Result:= Invertir_Palabra(N_Numero);
end;

function Numero.Invertir_Palabra(Parametro: String): String;
var Longitud: Integer;
    N_Palabra:String;
begin
N_Palabra:='';
Longitud:= Length(Parametro);
While Longitud <> 0 do
  Begin
    N_Palabra := N_Palabra + Parametro[Longitud];
    Longitud:=Longitud -1;
  End;
Result:= N_Palabra;
end;

function Numero.Literal(Parametro:Integer): string;
Const Lit : Array[1..4,1..20] of String=
(
('Uno','Dos','Tres','Cuatro','Cinco','Seis','Siete','Ocho','Nueve','Diez','Once','Doce','Trece','Catorce','Quince','Dieciseis','Diecisiete','Dieciocho','Diecinueve','Veinte'),
('','Veinti','Treinta','Cuarenta','Cincuenta','Secenta','Setenta','Ochenta','Noventa','','','','','','','','','','',''),
('Ciento', 'Doscientos', 'Trescientos', 'Cuatrocientos', 'Quinientos', 'Seiscientos', 'Setecientos', 'Ochocientos', 'Novecientos','','','','','','','','','','','' ),
('Mil','Dos Mil','Tres Mil', 'Cuatro Mil','Cinco Mil','Seis Mil', 'Siete Mil','Ocho Mil', 'Nueve Mil','','','','','','','','','','','')
);
var Literal:String;
    c,d:Byte;
    N:Cardinal;
begin
  N:=Parametro;
  c:=1;
  Literal:='';


  if N=100 then
  begin
    Literal := 'Cien' ;
    N:=0;
  end
  else
  begin
    if (N mod 100>0) and (N mod 100 <= 20 ) then
    begin
    Literal := Lit[1,N mod 100] ;
    N:=N div 100;
    c:=3;
    end;
  end;



  while N>0 do
  begin
    d := N mod 10;
    if d>0 then
    begin
      if (c=2) and (d>2) and (Literal <> '')  then
      begin
      Literal := 'y '+ Literal;
      end;
      Literal :=  Lit[c,d]  + ' '+ Literal;
    end;
    Inc(c);
    N:=N div 10;
  end;
  if Literal[Length(Literal)] = ' ' then
  begin
    Delete(Literal,Length(Literal),1);
  end;

  result:=Literal;
end;

 function Numero.Romano(Parametro:Integer): string;
Const romanos: array[1..4,1..9] of String =
  (
   ('I','II','III','IV','V','VI','VII','VIII','IX'),
   ('X','XX','XXX','XL','L','LX','LXX','LXXX','XC'),
   ('C','CC','CCC','CD','D','DC','DCC','DCCC','CM'),
   ('M','MM','MMM','Mv','v','vi','vii','viii','ix')
  );
var   d,c:Byte;
   N:Cardinal;
   Rom:String;
begin
N:=Parametro;
Rom:='';
c:=1;
  while N>0 do
  begin
    d:=N mod 10;
    if d>0 then
    begin
      Rom:= romanos[c,d]+ Rom;
    end;
    Inc(c);
    N := N div 10;
  end;
  result := Rom;
end;


end.
