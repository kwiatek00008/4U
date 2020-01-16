program FibDynamicznie;
{$APPType CONSOLE}
uses SysUtils;
var   n:integer;
    odp:char;

function FibIterMod(k:integer):longint;
  {Wartoscia funkcji jest k-ta liczba Fibonacciego}
const nMax=45;
var Fib:array [0..nMax]of longint;
      i:integer;
begin
 if k<2 then FibIterMod:=k
        else begin
                Fib[0]:=0;
                Fib[1]:=1;
                for i:=2 to k do
                   Fib[i]:=Fib[i-2]+Fib[i-1];
                FibIterMod:=Fib[k];
             end
end; {FibIterMod}
begin

    repeat
        write('Podaj (nMax=45) n=');readln(n);
        writeln('FibIter(',n:2,')=',FibIterMod(n));
        write('Powtarzamy (t/n) ?');readln(odp);
    until odp='n';
end.