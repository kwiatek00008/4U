program FibRekurencja;
{$APPType Console}
uses
  SysUtils;

var n:integer;
    odp    :char;

function FibRek(k:integer):longint;
  {Wartoscia funkcji jest k-ta liczba Fibonacciego obliczona
   za pomoca algorytmu rekurencyjnego}
begin
 if k<2 then Fibrek:=k
           else FibRek:=FibRek(k-1)+FibRek(k-2)
end; {FibRek}

begin

    repeat
      write('n=');readln(n);
      writeln('Fib(',n:2,')=',FibRek(n));
      write('Powtarzamy (t/n) ?');readln(odp);
    until odp='n';
end.
