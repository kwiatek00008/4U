program SortWstawianieProsteWartownik;
{$APPTYPE CONSOLE}
uses
  SysUtils;

const nMax=100;
var n,i:integer;
    a:array [0..nMax] of integer;
procedure  ProsteWstawianie;
var i,j,pom:integer;
begin
    A[0]:=-32670;
    for i:=2 to n do
    {a[0] dodatkowa  skladowa dla wartownika}
	begin pom:=a[i]; j:=i-1;
	{przesuwanie az do znalezienia mniejszego lub rownego elementu}
              while pom<a[j] do
                 begin a[j+1]:=a[j]; j:=j-1; end;
	      a[j+1]:=pom;
	 end
end;
begin

   randomize;
   write('Podaj (0<n<=100) n=');readln(n);
   for i:=1 to n do
     begin a[i]:=random(100)+1; write('  ',a[i]) end;
   ProsteWstawianie;
   writeln;
   writeln('WYNIK SORTOWANIA PROSTE WSTAWIANIE (z wartownikiem)');
   for i:=1 to n do
     write('  ',a[i]);
   readln;
end.
