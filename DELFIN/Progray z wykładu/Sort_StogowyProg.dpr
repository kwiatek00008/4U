program Sort_StogowyProg;
{$APPTYPE CONSOLE}
uses
  SysUtils;
const nMax = 160;
type  OB= word;
      TA= array[1..nMax] of OB;
var   t,b : TA;
      n:word;

procedure SortStogowy(n:word;var a:TA);
{sortowanie drzewiaste, kopcowanie, stogowe}
 var l,p:integer; x:OB;
 procedure przesianie;
  var i,j:integer;
  begin
  i:=l;j:=2*i;x:=a[i];
  while j<=p do
   begin
   if j<p then if a[j]<a[j+1] then j:=j+1;
   if x>=a[j] then exit;
   a[i]:=a[j];i:=j;j:=2*i
   end;
  a[i]:=x;
  end {przesiewania};
 begin
 l:=(n div 2)+1;p:=n;
 while l>1 do
  begin l:=l-1;przesianie; end;
 while p>1 do
  begin x:=a[1];a[1]:=a[p];a[p]:=x;p:=p-1;przesianie; end;
 end {procedury heap};

procedure generowanie(n:word;var x:TA);
 var i:word;
 begin
 randomize;
 for i:=1 to n do begin x[i]:=Random(1000)+1; write('  ',x[i]); end;
 end;

procedure wypisywanie(n:word;var x:TA);
 var i:word;
 begin
 writeln('Wynik sortowania:');
 for i:=1 to n do write('  ',x[i]);
 end;

begin

 write('Podaj n='); readln(n);
 generowanie(n,t);
 b:=t;
 SortStogowy(n,b);
 Writeln;
 wypisywanie(n,b);
 readln;
end.


 