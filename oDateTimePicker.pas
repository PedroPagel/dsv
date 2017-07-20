unit oDateTimePicker;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.ComCtrls, Winapi.Messages;

type
  TChangeStateCalendar = (ccEnter, ccChange);

  THDateTimePicker = class(TDateTimePicker)
  private
    { Private declarations }
    FEnter: Boolean;
    FDate: TDate;
    FDateHandler: TDate;
    FDatePressed: Boolean;

    procedure EnterField(Sender: TObject);
    procedure ExitField(Sender: TObject);
    procedure CalendarChange(Sender: TObject);
    procedure CalendarPopUP(Sender: TObject);
    procedure CalendarClose(Sender: TObject);

    function GetDate: TDateTime;
    procedure SetDate(const Value: TDateTime);
  protected
    { Protected declarations }
  public
    { Public declarations }
    procedure Start();

    property Date: TDateTime read GetDate write SetDate;
  published
    { Published declarations }
  end;

procedure Register;

implementation

{ THDateTimePicker }

procedure THDateTimePicker.CalendarChange(Sender: TObject);
begin
  inherited;

  if (Self.DateTime <> FDate) or (FDatePressed) then
    FDateHandler := Self.DateTime;
end;

procedure THDateTimePicker.CalendarClose(Sender: TObject);
begin
  inherited;

  if (Self.DateTime = FDate) then
  begin
    if (FDateHandler = 1) then
      Self.Format := '00/00/0000'
    else
      Self.DateTime := FDateHandler;
  end;

  FDatePressed := False;
end;

procedure THDateTimePicker.CalendarPopUP(Sender: TObject);
begin
  inherited;

  FDateHandler := 1;
  Self.DateTime := FDate;
  FDatePressed := True;
end;

procedure THDateTimePicker.EnterField(Sender: TObject);
begin
  inherited;

  Self.Format := FormatSettings.ShortDateFormat;
end;

procedure THDateTimePicker.ExitField(Sender: TObject);
begin
  inherited;

  if (Self.DateTime = FDate) and (FDateHandler = 1) then
    Self.Format := '00/00/0000';
end;

function THDateTimePicker.GetDate: TDateTime;
begin
  Result := FDateHandler;
end;

procedure THDateTimePicker.SetDate(const Value: TDateTime);
begin
  FDate := Value;
end;

procedure THDateTimePicker.Start;
begin
  FEnter := False;
  FDatePressed := False;
  Self.DateTime := System.SysUtils.Date;
  FDate := System.SysUtils.Date;
  FDateHandler := 1;

  Self.Format := '00/00/0000';
  Self.OnEnter := EnterField;
  Self.OnChange := CalendarChange;
  Self.OnDropDown := CalendarPopUP;
  Self.OnCloseUp := CalendarClose;
  Self.OnExit := ExitField;
end;

procedure Register;
begin
  RegisterComponents('Samples', [THDateTimePicker]);
end;

end.
