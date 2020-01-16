program SortWybor;
{$APPTYPE CONSOLE}
uses
  SysUtils;

const nMax=100;
var n,i:integer;
    a:array [1..nMax] of integer;
Procedure ProsteWybieranie;
var i,j,min,pom:integer;
begin
     for i:=1 to n-1 do
       begin
         min:=i; pom:=a[i]; {min indeks elementu najmniejszego, pom wartosc}
        {szukanie elementu najmniejszego}
         for j:=i+1 to n do
	   if a[j]<pom then begin  min:=j; pom:=a[j] end;
        {zamiana elementu i z elementem najmniejszym}
         a[min]:=a[i]; a[i]:=pom;
       end
end;
begin

   randomize;
   write('Podaj (0<n<=100) n=');readln(n);
   for i:=1 to n do
     begin a[i]:=random(100)+1; write('  ',a[i]) end;
   ProsteWybieranie;
   writeln;
   writeln('WYNIK SORTOWANIA PROSTE WYBIERANIE');
   for i:=1 to n do
     write('  ',a[i]);
   readln;
end.
