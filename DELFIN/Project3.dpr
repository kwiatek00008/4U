program Project3;

{$APPTYPE CONSOLE}


uses
  SysUtils;
  var a,n,m,i,j,b,akt,min,pom:integer;
   tab: array [0..10] of integer;

             procedure wypelnij_tablice;
          begin
          randomize;
          i:=0;
              while i<10 do
              begin
                    tab[i]:=random(10);
                    writeln(tab[i]);
                    i:=i+1;
              end;
           readln;
          end;
          procedure sortowanie_bumbelkowe;
          begin
          for i:=0 to 10 do
                  begin
                  n:=9;
                      while n>0 do
                         begin
                               if tab[n]<=tab[n-1] then
                                     begin
                                       a:=tab[n];
                                       tab[n]:=tab[n-1];
                                       tab[n-1]:=a;
                                       n:=n-1;
                                      end
                                else   n:=n-1;
                         end;
                  end
          end;

          procedure wypisz;
          begin
          i:=1;
          while i<=10 do
          begin
          writeln(tab[i]);
          i:=i+1;
          end
          end;



           procedure sortowanie_prostego_wyboru;
           begin
              for i:=0 to 10 do
                  begin
                    min:=i;
                    pom:=tab[i];
                        for j:=i+1 to 10 do
                            if tab[j]<pom then    begin
                                                  min:=j;
                                                  pom:=tab[j];
                                                  end;
                            tab[min]:=tab[i];
                            tab[i]:=pom;
                    end

           end;

begin
  wypelnij_tablice ;
  sortowanie_prostego_wyboru;
  wypisz;

  readln;







end.

