program Stogowe_AND_SHELL;

{$APPTYPE CONSOLE}
//stogowe dokonczyc

uses
  SysUtils;

var h,i,j,x,N,w,x2 : integer;
  var tab: array[1..100,1..2] of integer;
  var tab2: array[1..100] of integer;

  procedure s_Shell;
  begin
  h:=1;
  repeat
  h:=3*h+1;
  until h>=N;
  h:=(h div 9);
  if h=0 then h:=1;

     while h>0 do
     begin
         for j:=N-h downto 1 do
         begin
             x:=tab[j,1];
             x2:=tab[j,2];
             i:=j+h;
             while (i<=N)and(x<tab[i,1])do
             begin
                 tab[i-h,1]:=tab[i,1];
                 tab[i-h,2]:=tab[i,2];
                 inc(i,h);
             end;
             tab[i-h,1]:=x;
             tab[i-h,2]:=x2;
         end;
         h:=h div 3;
     end;
  end;

  procedure losuj;
  begin
  randomize;
      for i:=1 to N do tab[i,1]:=random(20)+100;
      for i:=1 to N do tab[i,2]:=i;
  end;

  procedure wypisz1;
  begin
  writeln;
      for i:=1 to N do writeln('nr zawodnika: ', tab[i,2],'   wynik: ',tab[i,1]);
  end;
   procedure wypisz2;
  begin
  writeln;
      for i:=1 to N do writeln('miejsce: ',i,'   nr zawodnika: ', tab[i,2],'   wynik: ',tab[i,1]);
  end;

  procedure start;
  begin
      writeln('Ile cyfr w talicy? :');
      readln(N);
  end;
  procedure stogowe;
      var L,V1,V2 : integer;
  begin
  V1:=tab[N,1];
  V2:=tab[N,2];
  L:=N div 2;
  while tab[L]<V1 do
  begin
       tab[N,1]:=tab[L,1];
       N:=L;
       L:=L div 2;
  end;
  tab[N,1]:=V;
  end;

begin
  start;
  losuj;
  wypisz1;
  //s_Shell;
  stogowe;
  wypisz2;
  readln;
end.
