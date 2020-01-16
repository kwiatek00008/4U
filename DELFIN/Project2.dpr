program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var i,n:integer;
  tab:array [0..50] of integer;



begin
randomize;
writeln('xx') ;
    n:=0;
                 n:=0;
  {dany jest ciag n losowych liczb, ile razy wystepuje dana liczba w ciagu}
     for i:=0 to 20 do
     begin
     tab[i]:=Random(10);
     writeln(tab[i]);
     if tab[i]=5 then n:=n+1



     end   ;


     writeln(n);

     readln;




end.
