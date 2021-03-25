program Cadena;

uses
  Vcl.Forms,
  UFPrincipal in 'UFPrincipal.pas' {Form1},
  UCCadena in 'UCCadena.pas',
  Vcl.Themes,
  Vcl.Styles,
  UCBase in 'UCBase.pas',
  UCNumeros in 'UCNumeros.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Cyan Night');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
