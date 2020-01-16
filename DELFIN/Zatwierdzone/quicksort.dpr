program quicksort;

{$APPTYPE CONSOLE}

uses
  SysUtils;
const N = 5; // Liczebnoœæ zbioru.

var
  d : array[1..N] of integer;


// Procedura sortowania szybkiego
//-------------------------------

procedure Sortuj_szybko(lewy, prawy : integer);
var
  i,j,piwot,x : integer;
begin
  i := (lewy + prawy) div 2;
  piwot := d[i]; d[i] := d[prawy];
  j := lewy;
  for i := lewy to prawy - 1 do
    if d[i] < piwot then
    begin
      x := d[i]; d[i] := d[j]; d[j] := x;
      inc(j);
    end;
  d[prawy] := d[j]; d[j] := piwot;
  if lewy < j - 1  then Sortuj_szybko(lewy, j - 1);
  if j + 1 < prawy then Sortuj_szybko(j + 1, prawy);
end;

// Program g³ówny
//---------------

var
  i : integer;
begin
// Najpierw wype³niamy tablicê d[] liczbami pseudolosowymi
// a nastêpnie wyœwietlamy jej zawartoœæ

  randomize;
  for i := 1 to N do d[i] := random(100);
  writeln('Przed sortowaniem:'); writeln;
  for i := 1 to N do write(d[i] : 4);
  writeln;

// Sortujemy

  Sortuj_szybko(1,N);

// Wyœwietlamy wynik sortowania

  writeln('Po sortowaniu:'); writeln;
  for i := 1 to N do write(d[i] : 4);
  writeln;
  writeln('Nacisnij Enter...');
  readln;
end.
