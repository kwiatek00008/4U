program fibrekusun;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var n,fib:integer;

function FibRek(k : integer):longint;
begin
if k<2 then FibRek:=k
else FibRek:=FibRek(k-1)+FibRek(k-2);

end;
begin
     readln(n);
     writeln(FibRek(n));
     readln;
end.
 