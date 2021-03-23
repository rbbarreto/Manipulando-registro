unit frmClientDataSet;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    FDMemTable1: TFDMemTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    FDMemTable1ID: TAutoIncField;
    FDMemTable1NOME: TStringField;
    FDMemTable1ENDERECO: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Procedure CarregarDAdosFDMemTable;
  public
    { Public declarations }

  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
{ TForm2 }

procedure TForm2.CarregarDAdosFDMemTable;
var
  I: Integer;
begin
  for I := 0 to 20 do
  begin
     FDMemTable1.Append;
       FDMemTable1ID.AsInteger   := I;
       FDMemTable1NOME.AsString  := 'Nome : ' + IntToStr(i);
       FDMemTable1ENDERECO.AsString := 'Rua : ' +IntToStr(i);
     FDMemTable1.Post;
  end;

end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  FDMemTable1.Open;
  CarregarDAdosFDMemTable;
end;

end.
