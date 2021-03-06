unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Clase_Numero;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    MainMenu1: TMainMenu;
    Binario1: TMenuItem;
    Hexadecimal1: TMenuItem;
    BaseN1: TMenuItem;
    Romano1: TMenuItem;
    Literal1: TMenuItem;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure BaseN1Click(Sender: TObject);
    procedure Binario1Click(Sender: TObject);
    procedure Hexadecimal1Click(Sender: TObject);
    procedure Romano1Click(Sender: TObject);
    procedure Literal1Click(Sender: TObject);
  private

    N:Numero;
    { Private declarations }
  public
    { Public declarations }
  end;



var
  Form1: TForm1;

implementation

{$R *.dfm}

{ Numero }



procedure TForm1.BaseN1Click(Sender: TObject);
var Numero,Base: Integer;
    Resultado:String;
begin
 Numero:= StrTOInt(Edit1.text);
 Base:= StrTOInt(Edit2.text);
 Edit3.Text := N.BaseN(Numero,Base);

end;

procedure TForm1.Binario1Click(Sender: TObject);
var Numero:Integer;
    Resultado:String;
begin
 Numero:= StrTOInt(Edit1.text);
 Edit3.Text := N.Binario(Numero);

end;

procedure TForm1.Hexadecimal1Click(Sender: TObject);
var Numero:Integer;
    Resultado:String;
begin
 Numero:= StrTOInt(Edit1.text);
 Edit3.Text := N.Hexadecimal(Numero);

end;
procedure TForm1.Literal1Click(Sender: TObject);
var Numero:Integer;
    Resultado:String;
begin
 Numero:= StrTOInt(Edit1.text);
 Edit3.text:= N.Literal(Numero);
end;

procedure TForm1.Romano1Click(Sender: TObject);
var Numero:Integer;
    Resultado:String;
begin
 Numero:= StrTOInt(Edit1.text);
 Edit3.Text := N.Romano(Numero);
end;

end.
