program manipulandoRegistrosEmCache;

uses
  Vcl.Forms,
  ufrmPrincipal in 'ufrmPrincipal.pas' {Form1},
  frmClientDataSet in 'frmClientDataSet.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
