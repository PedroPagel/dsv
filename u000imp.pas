unit u000imp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ExtDlgs, Vcl.StdCtrls,
  oButtonedEdit, o000dbc;

type
  TF000IMP = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    BEDirFin: THButtonedEdit;
    Label1: TLabel;
    Importar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ImportarClick(Sender: TObject);
  private
    { Private declarations }
    FControladorImportacao: TControladorImportacao;
  public
    { Public declarations }
  end;

var
  F000IMP: TF000IMP;

implementation

{$R *.dfm}

procedure TF000IMP.FormCreate(Sender: TObject);
begin
  BEDirFin.CreateLookup;

  FControladorImportacao := TControladorImportacao.Create;
end;

procedure TF000IMP.ImportarClick(Sender: TObject);
begin
  FControladorImportacao.Caminho := BEDirFin.Text;
  FControladorImportacao.Processar;
end;

end.
