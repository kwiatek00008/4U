program binaryRek;
{$APPType CONSOLE}
uses SysUtils;
const nMax=100;
Type  Tablica = Array[1..nMax] Of Integer;
var i,n,y:integer;
    b:tablica;
Function Szukaj(Var a:Tablica;x,start,stop:Integer):Boolean;
Var  sr:Integer;
Begin
If start=stop Then Szukaj:=(a[start]=x)
              Else Begin
                     sr:=(start+stop) Div 2;
                     If x<=a[sr] Then Szukaj:=Szukaj(a,x,start,sr)
                                 Else Szukaj:=Szukaj(a,x,sr+1,stop);
                   End;
End;
begin

   write('Podaj rozmiar tablicy (n<=',nMax,') n=');readln(n);
   for i:=1 to n do
      b[i]:=i;
   Write('Podaj szukany element x=');readln(y);
   writeln('Wynik : ',szukaj(b,y,1,n));
   readln;
end.