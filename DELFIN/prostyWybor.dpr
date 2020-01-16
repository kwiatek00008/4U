program prostyWybor;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var i,index,n,a,najmniejsza,najmniejszyindex,j :integer;
  tab:array [0..10] of integer;
  procedure losuj;
  begin
      randomize;
      for i:=1 to n do
      begin
          tab[i]:=random(10);
      end;
  end;
  procedure wypisz;
  begin
      for i:=1 to n do
      begin
      writeln(i, '. ',tab[i]);
      end;
      writeln;
  end;
  procedure sprostywybor;
  begin
      for i:=1 to n do
      begin
      najmniejszyindex:=i;
      for j:=i+1 to n do  //zaczynamy sprawdzanie od 2 el
      begin
      if (tab[j]<tab[najmniejszyindex])then begin //jesli tab[2]<tab[1]
                                             najmniejszyindex:=j;//tab[1]:=tab[2]
                                            end;
      end;//swap
      a:=tab[i];
      tab[i]:=tab[najmniejszyindex];
      tab[najmniejszyindex]:=a;
      end;

  end;

begin
n:=10;
  losuj;
  wypisz;
  sprostywybor;
  wypisz;
  readln;
end.
 