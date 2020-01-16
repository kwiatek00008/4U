program SortBabelkowe;
{$APPTYPE CONSOLE}
uses
  SysUtils;
const nMax=100;
var a:array [1..nMax] of integer;
    i,n,x:integer;
procedure  SortBubble;
var i,j:integer;
begin
for i:=2 to n do
	for j:=n downto i do
		if a[j-1]>a[j] then
			begin x:=a[j-1];                                                              a[j-1]:=a[j];
                              a[j]:=x
                        end
End;
begin

   randomize;
   write('Podaj (0<n<=100) n=');readln(n);
   for i:=1 to n do
     begin a[i]:=random(100)+1; write('  ',a[i]) end;
   sortbubble;
   writeln;
   writeln('WYNIK SORTOWANIA BUBBLE-SORT');
   for i:=1 to n do
     write('  ',a[i]);
   READLN;
END.

 