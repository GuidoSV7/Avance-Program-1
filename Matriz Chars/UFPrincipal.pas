unit UFPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids,UCMatrizChars,
  Vcl.Menus;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    ScrollBar1: TScrollBar;
    ScrollBar2: TScrollBar;
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    CargarMatriz1: TMenuItem;
    MostrarMatriz1: TMenuItem;
    ModificarCaracter1: TMenuItem;
    EncontrarNombre1: TMenuItem;
    procedure ScrollBar1Change(Sender: TObject);
    procedure ScrollBar2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CargarMatriz1Click(Sender: TObject);
    procedure MostrarMatriz1Click(Sender: TObject);
    procedure ModificarCaracter1Click(Sender: TObject);
    procedure EncontrarNombre1Click(Sender: TObject);

  private
    { Private declarations }
    MatrizC:Matriz_Caracter;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.CargarMatriz1Click(Sender: TObject);
var
  I,J:Word;
begin
 MatrizC.Redimensionar(StringGrid1.RowCount,StringGrid1.Colcount);
 for I := 1 to MatrizC.Filas do
   Begin
     for J := 1 to MatrizC.Columnas do
       Begin
         MatrizC.ModificarCarcater(I,J,StringGrid1.Cells[J-1,I-1][1]);
       End;
   End;
end;

procedure TForm1.EncontrarNombre1Click(Sender: TObject);
 var Nombre:String;
     Paleta:boolean;
begin
  Nombre:= InputBox('Nombre','Escriba Nombre','');
  Paleta:=MatrizC.Encontrar_nombre(Nombre);
  if Paleta=True then
  Begin
    ShowMessage('El nombre se encuentra');
  End
  else
  ShowMessage('El nombre no se encuentra');

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
MatrizC:= Matriz_Caracter.Create;
end;

procedure TForm1.ModificarCaracter1Click(Sender: TObject);
var
 f,c:Word;
 e:string;


Begin
f:= StrToInt( InputBox('Fila','Indique la posicion',''));
c:= StrToInt( InputBox('Columna','Indique la posicion',''));
e:= InputBox('Modificacion de caracter','Indique el caracter ','');
 MatrizC.ModificarCarcater(f,c,e[1]);
end;


procedure TForm1.MostrarMatriz1Click(Sender: TObject);
var
  I,J:Word;
begin

 StringGrid1.RowCount:=MatrizC.Filas;
StringGrid1.ColCount:=MatrizC.Columnas;

 for I := 1 to MatrizC.Filas do
   Begin
     for J := 1 to MatrizC.Columnas do
       Begin
        StringGrid1.Cells[j-1,I-1]:= MatrizC.ObtnerChar(i,j) ;
       End;
   End;
end;


procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
 StringGrid1.ColCount:= ScrollBar1.Position;
end;

procedure TForm1.ScrollBar2Change(Sender: TObject);
begin
StringGrid1.RowCount:= ScrollBar2.Position;
end;

end.
