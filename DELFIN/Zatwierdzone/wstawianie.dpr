program wstawianie;

{$APPTYPE CONSOLE}
             // dziala sprawdzony
uses
  SysUtils;

var i,j,n,index,min,aktualnyelement,aktindex,elobecnejiteracji,ostatnizup,
 pierwszyznieup, wstawiany,pom : integer;
  tab:array[0..10] of integer;
  procedure losuj;
    begin
    randomize;
      for i:=1 to n do
              begin
                   tab[i]:=random(10);
              end;
    end;
  procedure wypisz;
    begin
      writeln;
         for i:=1 to n do
         writeln(i,'. ', tab[i]);
    end;
    procedure sort_wstawianie;
    begin
          for i:=2 to n do
          begin
          wstawiany:=tab[i];
          ostatnizup:=i;
          while((ostatnizup > 1) and (wstawiany < tab[ostatnizup-1]))  do
            begin
                tab[ostatnizup]:=tab[ostatnizup-1];
                ostatnizup:=ostatnizup-1;
            end;
            tab[ostatnizup]:=wstawiany;
          end;
    end;
    procedure sort_wstawianie2;
    begin
        for i:=2 to n do
        begin
            wstawiany:=tab[i];
            ostatnizup:=i-1;
            while ((ostatnizup>0) and (wstawiany<tab[ostatnizup]))do
            begin
                tab[ostatnizup+1]:=tab[ostatnizup];
                ostatnizup:=ostatnizup-1;
            end;
            tab[ostatnizup+1]:=wstawiany;
        end;
    end;
    procedure sort_wstawianie3;
    begin
        for i:=2 to n do
        begin
            wstawiany:=tab[i];
            index:=i;
            while((index>1)and(wstawiany<tab[index-1])) do
            begin
                tab[index]:=tab[index-1];
                index:=index-1;
            end;
            tab[index]:=wstawiany;
        end;
    end;

begin
n:=20;
losuj;
wypisz;
sort_wstawianie3;
wypisz;


readln;
end.
 