unit oReader;

interface

uses
  System.Classes, System.SysUtils, System.Contnrs, Winapi.Windows, oBase, oTabelas;

type
  TFileReader = class
  private
    FRead: string;
    FPath: TSearchRec;
    FText: TextFile;
    FNext: Integer;
  public
    procedure First();
    procedure Close;
    procedure Next;
    procedure BeginRead;
    procedure Assingn(const pPath: string; const pNotFullPath: Boolean);

    function Read(): string;
    function PathName(): string;
    function EndOfFile: Boolean;
    function LineExists(): Boolean;

    property PathToRead: string read FRead write FRead;
  end;

implementation

{ TFileReader }

procedure TFileReader.Assingn(const pPath: string; const pNotFullPath: Boolean);
begin
  AssignFile(FText, iff(pNotFullPath, pPath+FPath.Name, FRead));
end;

procedure TFileReader.BeginRead;
begin
  Reset(FText);
end;

procedure TFileReader.Close;
begin
  CloseFile(FText);
end;

function TFileReader.EndOfFile: Boolean;
begin
  Result := not(Eof(FText));
end;

procedure TFileReader.Next;
begin
  FNext := FindNext(FPath)
end;

function TFileReader.PathName: string;
begin
  Result := FPath.Name;
end;

procedure TFileReader.First();
begin
  FNext := FindFirst(FRead, faAnyFile, FPath);
end;

function TFileReader.LineExists: Boolean;
begin
  Result := (FNext = 0);
end;

function TFileReader.Read(): string;
var
  xRetorno: string;
begin
  ReadLn(FText, xRetorno);
  Result := Trim(UTF8ToString(RawByteString (xRetorno)));
end;

end.
