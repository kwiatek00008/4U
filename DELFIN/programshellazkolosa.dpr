program programshellazkolosa;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var n,k,i,j,x1,x2: integer;
  a : array[1..100,1..2] of integer;


procedure SortShella;
{sortowanie przez wstawianie z malejacymi przyrostami}
begin
 k:=1; while 2*k+1<n do k:=k*2+1;  {szukanie najwiekszej odleglosci}
 while k>0 do                      {dopoki odleglosc>0             }
  begin
   for i:=k+1 to n do
    begin x1:=a[i,1];x2:=a[i,2];j:=i-k;
     while (j>0) and (x1>a[j,1]) do   {przesiewanie i-tego z odleglymi o k}
      begin a[j+k,1]:=a[j,1];a[j+k,2]:=a[j,2]; j:=j-k end;
    a[j+k,1]:=x1;
    a[j+k,2]:=x2;
    end;
  k:=k div 2
  end
end {koniec procedury};
procedure losuj;
begin
randomize;
 for i:=1 to n do
 begin
     a[i,2]:=100000+i;
     a[i,1]:=random(5)+1;
 end;
end;
procedure wypisz;
begin
writeln('posortowano: ');
    for i:=1 to n do
    begin writeln(a[i,1], '  ',a[i,2])end;
    writeln;
end;

begin
 readln(n);
 losuj;
 wypisz;
 SortShella;
 wypisz;
 readln;
end.
