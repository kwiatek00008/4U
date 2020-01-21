program ListyUczniowieTylkoOdTylu;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type  PElem=^TElem;
        TElem = record
        wsk:PElem;
        dane:string;
  end;

  var x:string;
  var i,z:Integer;
  var head,glowa,glowa2,head2,pom,pom2,uczen, index:PElem;

  procedure utworzListe;
    var uczen : PElem;
    begin
      pom:=head;
      pom2:=head2;
      z:=0;
      while z<i do
      begin
        new (uczen);
        Write('podaj imie: ');
        Readln(x);
        uczen^.dane:=x;
        uczen^.wsk:=pom;

        new (index);
        index^.dane:=IntToStr(z+1);
        index^.wsk:=pom2;

        pom:=uczen;
        pom2:=index;
        z:=z+1;
      end;

    end;
      procedure utworzListe2;
    var uczen : PElem;
    begin
      head:=nil;
      head2:=nil;
      z:=0;
      while z<i do
      begin
        new (uczen);
        uczen^.wsk:=head;
        head:=uczen;
        Write('podaj imie: ');
        Readln(x);
        uczen^.dane:=x;


        new (index);

        index^.wsk:=head2;
        head2:=index;
        index^.dane:=IntToStr(z+1);

        //pom:=uczen;
        //pom2:=index;
        z:=z+1;
      end;

    end;

    procedure wypisz;
    begin
      Writeln;
      pom:=head;
      pom2:=head2;
        while ((pom<>nil) and (pom2<>nil)) do
        begin
          uczen:=pom;
          index:=pom2;
          writeln(' ',uczen^.dane,'  ',index^.dane);
          pom:=uczen^.wsk;
          pom2:=index^.wsk;
        end;
    end;

begin
  Write('ile uczniow: '); Readln(i);

  utworzListe2;
  //write('head^.dane ' ,head^.dane,'head2^.dane',head2^.dane);
  wypisz;
  wypisz;
  Readln;
end.
 