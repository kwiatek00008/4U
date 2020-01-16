program Bombelkowe;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var a,b,c,i,pom,aktualna,n,j,liczbaoperacji : integer;
  tab: array[0..100] of integer;


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
    procedure sortowaniebombelkowe;
    begin
        for liczbaoperacji:=1 to n-1 do
            begin
                i:=1;
                j:=2;
                while j<=n do
                begin
                  if (tab[j]<tab[i]) then   //jesli 2el jest mniejszy od 1 to zamien
                      begin
                            pom:=tab[i];
                            tab[i]:=tab[j];
                            tab[j]:=pom;
                      end;
                      j:=j+1;
                      i:=i+1;
                end;
            end;

    end;

begin
n:=10;
 losuj;
 wypisz;
 sortowaniebombelkowe;
 wypisz;
 readln;
end.
 