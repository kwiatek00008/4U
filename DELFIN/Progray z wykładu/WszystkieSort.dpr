program WszystkieSort;
{$APPTYPE CONSOLE}
uses
  SysUtils;
const n = 10;
type  OB= word;
      TA= array[1..n] of OB;
var   t,b : TA;
         x,i:word;

procedure SortPrzezWstawianie(n:word;var a:TA);
{sortowanie przez proste wstawianie}
var k,j:integer;
    x  :OB;
 begin
 for k:=2 to n do              {petla przesiewanych elementow  }
  begin j:=k-1;x:=a[k];        {przesiewanie od poprz. elementu}
   while (j>0) and (x<a[j]) do {gdy mozna i trzeba przesiac    }
    begin
    a[j+1]:=a[j];j:=j-1        {zastap j+1, j-tym; zmniejsz j  }
    end;
   a[j+1]:=x                   {wstaw element przesiewany      }
  end
 end {koniec procedury};

procedure SortPrzezWybieranie(n:word; var a:TA);
{sort przez wybieranie minimalnego elementu i zamiane}
 var i,j,k:integer; x:OB;
begin
 for i:=1 to n-1 do            {glowna petla - miejsce wstawiania}
  begin k:=i;x:=a[i];          {domniemany minimalny na i-tym    }
   for j:=i+1 to n do
    if a[j]<x                  {gdy znaleziono lepsze minimum    }
     then begin
          k:=j;x:=a[j]         {pamietamy jego polozenie i wartosc}
          end;
  a[k]:=a[i]; a[i]:=x          {zamiana minimalnego z i-tym      }
  end
end {koniec procedury};

procedure SortPrzezZamiane(n:word;var a:TA);
{sortowanie babelkowe - przez zamiane sasiadow}
 var i,j:integer; x:OB;
       w:Boolean;
begin
 for i:=2 to n do             {zorganizowanie serii babelkowania }
  begin
  w:=false;
  for j:=n downto i do
   if a[j-1]>a[j]             {gdy relacja miedzy sasiadami zla  }
    then begin                {zamien ich wartosci (z trzecim garnkiem)}
         x:=a[j-1];a[j-1]:=a[j];a[j]:=x;w:=true
         end;
   if not w then exit
  end
end {koniec procedury};

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

procedure SortStogowy(n:word;var a:TA);
{sortowanie drzewiaste, kopcowanie, stogowe}
 var l,p:integer; x:OB;
 procedure przesianie;
  var i,j:integer;
  begin
  i:=l;j:=2*i;x:=a[i];
  while j<=p do
   begin
   if j<p
    then if a[j]<a[j+1] then j:=j+1;
   if x>=a[j] then exit;
   a[i]:=a[j];i:=j;j:=2*i
   end;
  a[i]:=x
  end {przesiewania};
 begin
 l:=(n div 2)+1;p:=n;
 while l>1 do
  begin l:=l-1;przesianie end;
 while p>1 do
  begin x:=a[1];a[1]:=a[p];a[p]:=x;p:=p-1;przesianie end
 end {procedury heap};

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
 end {koniec procedury wewn©trznej};
 begin
  sortuj(1,n)
 end {koniec szybkiego sortowania};

procedure generowanie(n:word;var x:TA);
 var i:word;
 begin
 randomize;
 writeln('Ciag liczb losowych:');
 for i:=1 to n do
    begin x[i]:=Random(100);  write(' ',x[i]); end;
 end;

procedure wypisywanie(n:word;var x:TA);
 var i:word;
 begin
 writeln('Wynik sortowania:');
 for i:=1 to n do write('  ',x[i]);
 writeln;
 end;

begin      //program glowny
    generowanie(n,t);
    SortShella(n,t);
    writeln; writeln('Sortowanie wstepne:  ');
    wypisywanie(n,t);

    for i:=1 to n div 2 do
     begin
         x:=t[i];t[i]:=t[n+1-i];t[n+1-i]:=x
     end;
    b:=t;
    writeln; writeln('Dane poczatkowe: ');
    wypisywanie(n,b);

 b:=t;
 SortPrzezWstawianie(n,b);
 writeln; writeln('Wstawianie proste');
 wypisywanie(n,b);

 b:=t;
 SortPrzezWybieranie(n,b);
 writeln; writeln('Wybieranie');
 wypisywanie(n,b);

 b:=t;
 SortPrzezZamiane(n,b);

 writeln; writeln('Zamiana');
 wypisywanie(n,b);

 b:=t;
 SortShella(n,b);

 writeln; writeln('Shella');
 wypisywanie(n,b);

 b:=t;
 SortStogowy(n,b);

 writeln; writeln('Stogowe');
 wypisywanie(n,b);

 b:=t;
 SortSzybki(n,b);

 writeln; writeln('Szybkie');
 wypisywanie(n,b);

 readln;
end.


 