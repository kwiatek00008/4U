program prostewstawianie;

{$APPTYPE CONSOLE}
{sortowanie przez wsawianie proste}


{dzia³a wszystko}

uses
  SysUtils;

var i,j,a,b,c,s,pom:integer;
   tab: array [0..10] of integer;

             procedure wypisz;
          begin
          i:=0;
          while i<10 do
          begin
            writeln(tab[i],i);
            i:=i+1;
          end
          end;

  procedure wypelnij_tablice;
          begin
          randomize;
          i:=0;
              while i<10 do
              begin
                    tab[i]:=random(10);
                    writeln(tab[i],i);
                    i:=i+1;
              end;
          end;

  procedure sortowanie_proste_wstawianie;
  begin
        for i:=0 to 9 do
        begin
            pom:=tab[i];    {wstawanie el w opd miejsce}
            j:=i-1;         {ten el bd wstawiony w odp miejsce}

            while (j>=0) and (tab[j]>pom) do {przesuwnaie el wiekszych od pom}
                begin
                      tab[j+1]:=tab[j];
                      j:=j-1;
                end ;
                tab[j+1]:=pom; {wstawianie w opd miejsce}
       end
  end;

begin
wypelnij_tablice;
writeln('XXXXXX')    ;
sortowanie_proste_wstawianie;
wypisz;

        readln;




end.
 