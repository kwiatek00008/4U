program SortSzybkie;
{$APPTYPE CONSOLE}
uses
  SysUtils;

const nMax=100;
var x:array [1..nMax] of integer;
    i,j,k,n:integer;

Procedure QuickSort(d,g:integer);
{rekurencyjne sortowanie ciagu w x[p..g]}
Var l,p,v,pom:integer;
Begin
   l:=d; p:=g;
   v:=x[(d+g) div 2];
   Repeat   {podzial ciagu elementem srodkowym}
      while x[l]<v do l:=l+1;
      while v<x[p] do p:=p-1;
      if l<=p then begin {Przestaw x[l] z x[p]}
                         pom:=x[l]; x[l]:=x[p]; x[p]:=pom;
                         l:=l+1; p:=p-1;
                   end;
   until l>p;
   If d<p then QuickSort(d,p); {porzadkowanie podciagow}
   If l<g then QuickSort(l,g);
end; {QuickSort}

begin {program glowny}
   randomize;
   write('Podaj (0<n<=100) n=');readln(n);
   for i:=1 to n do
     begin x[i]:=random(100)+1; write('  ',x[i]) end;
   QuickSort(1,n);
   writeln;
   writeln('WYNIK SORTOWANIA SZYBKIEGO - QUICKSORT');
   for i:=1 to n do
     write('  ',x[i]);
   readln;
end.

