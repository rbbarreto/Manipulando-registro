unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnFDMenTable: TButton;
    procedure btnFDMenTableClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses frmClientDataSet;

procedure TForm1.btnFDMenTableClick(Sender: TObject);
begin
  Application.CreateForm(TForm2, Form2);
  try
    Form2.ShowModal;
  finally
    Form2.Free;
  end;
end;

end.
