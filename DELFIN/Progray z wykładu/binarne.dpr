program binarne;
{$APPTYPE CONSOLE}
uses
  SysUtils;

const nMax=100;
type  Tablica = Array[1..nMax] Of Integer;
var i,x,n:integer;
    b:tablica;

Function Szukaj(Var a : Tablica; x, n : Integer) : Boolean;
Var  start, stop, sr : Integer;
Begin  start:=1;  stop:=n;
While start<stop Do
  Begin
      sr:=(start+stop) Div 2;
      If x<=a[sr] Then stop:=sr
                       Else start:=sr+1;
  End;
Szukaj:=(a[start]=x);
End;

begin

  write('Podaj rozmiar tablicy (nMax=',nMax,') n=');readln(n);
  for i:=1 to n do
    b[i]:=2*i;
  write('Podaj wartosc szukanego elementu x=');readln(x);
  writeln('Wynik =', szukaj(b,x,n));
  readln;
end.

