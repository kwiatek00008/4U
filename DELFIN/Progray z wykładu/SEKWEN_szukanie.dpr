program SEKWEN_szukanie;
{$APPType CONSOLE}
uses
  SysUtils;

const nMax=100;
type tablica=array[1..nMax]of integer;
var b:tablica;
    y,i,n:integer;
Function Szukaj(Var a : Tablica; x, n : Integer) : integer;
Var  k: Integer;
Begin
   Szukaj:=0;
   for k:=1 to n do
   if x=a[k] then Szukaj:=k;
End;
begin

   write('Podaj rozmiar tablicy (n<=',nMax,') n=');readln(n);
   randomize;
   for i:=1 to nMax do b[i]:=random(nMax)+1;
   write('Podaj szukany element tablicy y=');readln(y);
   writeln('Wynik : ',szukaj(b,y,n));
   readln;
end.
