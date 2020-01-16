program EuklidesOdejmowanie;
{$APPType CONSOLE}
uses
  SysUtils;

var odp:char;
    a,b:integer;
function Euklides(a,b:integer):integer;
begin
     if a=b then Euklides:=a
            else begin
                   while a<>b do
                      if a>b then a:=a-b
                               else b:=b-a;
                   Euklides:=a;
                 end;
end; {Euklices}
begin
   repeat
      write('Podaj a=');readln(a);
      write('Podaj b=');readln(b);
      writeln('NWD=',Euklides(a,b));
      write('Powtarzamy (t/n)? :');readln(odp);
   until odp='n';
end.

