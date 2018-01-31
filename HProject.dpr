program HProject;

{$R *.dres}

uses
  Vcl.Forms,
  midaslib,
  o000for,
  System.SysUtils,
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  o000for.TVisualForm.OpenForm();
end.
