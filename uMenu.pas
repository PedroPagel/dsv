unit uMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls, o000for;

type
  TFMENU = class(TForm)
    imgHenn: TImage;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMENU: TFMENU;

implementation

{$R *.dfm}

procedure TFMENU.FormShow(Sender: TObject);
begin
  o000for.TVisualForm.OpenForm();
end;

end.
