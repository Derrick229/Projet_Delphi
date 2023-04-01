unit Unit1;


interface
function VerifierPrenom(Edit1: string): Boolean;
implementation
uses
Character;
function VerifierPrenom(Edit1: string): Boolean;
var
CharIndex:integer;

begin
Result:=False;
  for CharIndex := 1 to Length(Edit1) do
  begin
    if Edit1[CharIndex].IsDigit then
    begin
      Result := True;
      Break;
    end;

  end;
end;
end.
