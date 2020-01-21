program ListyNaCharach;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  PslistEl = ^slistEl;
  slistEl = record
    next  : PslistEl;
    data  : char;
  end;
  var k:char;
  var i:integer;
  var head : PslistEl;
  var p,szukana1,pom : PslistEl;

procedure l_push_front;
var
  p : PslistEl;
begin
randomize;
while i>0 do
begin
  new ( p );           // tworzymy nowy element
  p^.data := char(random(26)+65);     // inicjujemy element
  p^.next := head;
  head := p;
  i:=i-1;
end;
end;

procedure wypisz;
begin
    Writeln;
    pom:=head;
  while pom<>nil do
    begin
         p:=pom;
         write('  ',p^.data);
         pom:=p^.next;
    end;
end;

function szukaj(head: PslistEl;k:char): PslistEL;
begin
      while(head<>nil) and (k<>head.data) do
      begin
      head:=head^.next;
      end;
      szukaj:=head;

end;

begin
    writeln('Ile elementow   i');
    readln(i);
    l_push_front;
    wypisz;
    Writeln;
    writeln('podaj szukana');
    readln(k);
    szukana1:=szukaj(head, k);
    if szukana1<>nil then Writeln('znaleziono = ',szukana1^.data)
                      else Writeln('nie znaleziono ' ,k, ' na li');



    readln;
end.
            //dziala