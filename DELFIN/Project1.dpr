program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var a,b,i,c:integer     ;

  tab : array [0..50]of integer;

begin
randomize;
a:=0;
      for i:=0 to 20 do
      begin
      tab[i]:=a;
      writeln(a);
      a:=a+1;
      end;

  i:=0;
  a:=0;
  b:=20;
c:=(a+b)div 2;
   if tab[i]=5 then writeln(i , 'miejsce' )
   else
   while tab[c]<>7 do
   begin

   if tab[c]<7 then c:=(c+b)div 2
   else c:=(c+a) div 2;


   end;
   writeln (c);

   readln;
end.
