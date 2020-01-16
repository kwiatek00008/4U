program Sort_Shella;
{$APPTYPE CONSOLE}
uses
  SysUtils;

const nMax = 160;
type  OB= word;
      TA= array[1..nMax] of OB;
var   t,b : TA;
      x,i,n:word;

procedure SortShella(n:word; var a:TA);
{sortowanie przez wstawianie z malejacymi przyrostami}
 var i,j,k:integer; x:OB;
begin
 k:=1; while 2*k+1<n do k:=k*2+1;  {szukanie najwiekszej odleglosci}
 while k>0 do                      {dopoki odleglosc>0             }
  begin
   for i:=k+1 to n do
    begin x:=a[i];j:=i-k;
     while (j>0) and (x<a[j]) do   {przesiewanie i-tego z odleglymi o k}
      begin a[j+k]:=a[j];j:=j-k end;
    a[j+k]:=x
    end;
  k:=k div 2
  end
end {koniec procedury};

procedure generowanie(n:word;var x:TA);
 var i:word;
 begin
 randomize;
 for i:=1 to n do begin x[i]:=Random(100); write('  ',x[i]); end;
 end;

procedure wypisywanie(n:word;var x:TA);
 var i:word;
 begin
 writeln;
 for i:=1 to n do write('  ',x[i]);
 end;


begin

 write('Podaj n=');readln(n);
 generowanie(n,t);

 SortShella(n,t);
 for i:=1 to n div 2 do
  begin
  x:=t[i];t[i]:=t[n+1-i];t[n+1-i]:=x
  end;

 b:=t;
 SortShella(n,b);
 Writeln;
 Wypisywanie(n,b);
 readln;
end.


