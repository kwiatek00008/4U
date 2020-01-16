program Euklides;
{$APPTYPE CONSOLE}
uses
  SysUtils;
var a, b:integer;
begin
  write('Podaj a='); readln(a);
  write('Podaj b='); readln(b);
  while a<>b do
     if a<b then b:=b-a
            else a:=a-b;
  writeln('NWD=',a);
  readln;
end.
