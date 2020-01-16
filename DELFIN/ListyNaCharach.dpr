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
  var znakp,znak,k,szukana:char;
  var q,poczatek ,i:integer;
  var head : PslistEl; v : char;
  var p : PslistEl;

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

  while head<>nil do
    begin
         p:=head;
         write('  ',p^.data);
         head:=p^.next;
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
    writeln('podaj szukana');
    readln(k);
    szukana:=szukaj(head, k);
    readln;
end.
            //nie dziala jeszce