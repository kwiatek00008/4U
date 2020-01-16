program SortQuick;
{$APPTYPE CONSOLE}
uses
  SysUtils;
const n = 15;
type  OB= word;
      TA= array[1..n] of OB;
var   t,b : TA;

procedure SortSzybki(n:word;var a:TA);
{sortowanie Hoara -quick sort}
procedure sortuj(l,p:integer);
 var i,j:integer; x,w:OB;
begin
 i:=l;j:=p;
 x:=a[(l+p) div 2];
 repeat
  while a[i]<x do i:=i+1;
  while x<a[j] do j:=j-1;
  if i<=j
   then begin w:=a[i];a[i]:=a[j];a[j]:=w;i:=i+1;j:=j-1 end
 until i>j;
 if l<j then sortuj(l,j);
 if i<p then sortuj(i,p)
 end {koniec procedury wewnetrznej};
 begin
  sortuj(1,n)
 end {koniec szybkiego sortowania};

procedure generowanie(n:word;var x:TA);
 var i:word;
 begin
 randomize;
 for i:=1 to n do x[i]:=Random(100)
 end;

 procedure wypisywanie(n:word;var x:TA);
 var i:word;
 begin
 writeln;
 for i:=1 to n do write('  ',x[i]);
 end;

begin
 generowanie(n,t);
 b:=t;
 SortSzybki(n,b);
 wypisywanie(n,b);
 readln;
end.



