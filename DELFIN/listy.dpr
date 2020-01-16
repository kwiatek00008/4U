program listy;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
       PElement = ^TElement;
       TElement = record
       Dane : integer;
       wsk : PElement;
  end;
  var q,poczatek,poczatek1,head, koniec:PElement; n:integer;
procedure tworzenieListyPocz(n:integer);
begin
poczatek:=nil;
while n>0 do
  begin
      new(q);
      q^.wsk:=poczatek;
      poczatek:=q;
      poczatek^.dane:=n;
      n:=n-1;
  end;
end;

procedure tworzenieListyKon(n:integer);
var k:integer;
  begin
      poczatek:=nil;
      koniec:=nil;
      k:=0;
      while k<n do
        begin
            new(q);
            q^.wsk:=nil;
            if koniec <>nil then
            koniec^.wsk:=q
            else poczatek:=q;
            koniec:=q;
            k:=k+1;
            koniec^.dane:=k;
        end;
      writeln;
      writeln('POCZ= ',poczatek^.dane, ' KON= ',koniec^.dane);
  end;

  procedure wypiszListe;
  begin
      while poczatek<>nil do
      begin
          q:=poczatek;
          write(' ',q^.Dane);
          poczatek:=q^.wsk;
      end;
  end;
  function ListaSearch(head:PElement; k:integer) :PElement;
  begin
      while(head<>nil) and (k<>head^.Dane) do
      head:=head^.wsk;
      ListaSearch:=head;
  end;
begin
  write('podaj dl listy: ');
  readln(n);
  tworzenieListyKon(n);
  poczatek1:=poczatek;
  writeln;
  writeln('Wypisanie listy: ');

  wypiszListe;
  poczatek:=poczatek1;
  writeln;
  writeln('POnownie lista ');
  wypiszListe;
  writeln;
 // ListaSearch(poczatek, n);
  //writeln(ListaSearch(poczatek,n));
  readln;

end.
