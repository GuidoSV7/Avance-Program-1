program Matriz;

uses
  Vcl.Forms,
  UFPrincipal in 'UFPrincipal.pas' {fmPrincipal},
  UCMatriz in 'UCMatriz.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('TabletDark');
  Application.CreateForm(TfmPrincipal, fmPrincipal);
  Application.Run;
end.
