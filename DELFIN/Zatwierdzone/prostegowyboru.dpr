program prostegowyboru;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var i,j,pom,index,min,suwak,n,aktualnyindex,najmniejszyindex,a,sprawdzany : integer;
  tab:array [0..10] of integer;
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
  procedure prosty_wybor;
  begin
  aktualnyindex:=1;
  suwak:=1;

    while aktualnyindex<=n do
       begin
         for suwak:=aktualnyindex to n do
         begin
              min:=tab[aktualnyindex]; //ustawiam minimum pod aktualny index
              i:=suwak;
              if(tab[i]<min) then //jesli i-ty element mniejszy od minimum to:
                                 begin      //zamiana
                                      min:=tab[i];
                                      tab[i]:=tab[aktualnyindex];
                                      tab[aktualnyindex]:=min;
                                 end;

         end;
         aktualnyindex:=aktualnyindex+1;//przesun index(tam gdzie nieposortowane
       end;
  end;
  procedure prostywybor1;
  begin
      for i:=1 to n do
      begin
          najmniejszyindex:=i;
          for sprawdzany:=i+1 to n do
          begin
              if(tab[sprawdzany]<tab[najmniejszyindex]) then najmniejszyindex:=sprawdzany;
          end;
              a:=tab[najmniejszyindex];  //SWAP
              tab[najmniejszyindex]:=tab[i];
              tab[i]:=a;
      end;
  end;
procedure sprostywybor;
  begin
      for i:=1 to n do
      begin
      najmniejszyindex:=i;
      for j:=i+1 to n do  //zaczynamy sprawdzanie od 2 el
      begin
      if (tab[j]<tab[najmniejszyindex])then begin //jesli tab[2]<tab[1]
                                             najmniejszyindex:=j;//tab[1]:=tab[2]
                                            end;
      end;//swap
      a:=tab[i];
      tab[i]:=tab[najmniejszyindex];
      tab[najmniejszyindex]:=a;
      end;
  end;

begin
n:=10;
losuj;
wypisz;
prosty_wybor;
wypisz;
readln;
end.
 