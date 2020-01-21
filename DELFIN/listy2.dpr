program listy2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type  PElem = ^TElem;
        TElem = record
        dane  : string;
        wsk   : PElem;
  end;
  var w,x,szukaneimie,szukana:string;
  var i,z:Integer;
  var head,glowa,glowa2,head2,pom,pom2,uczen,
   index:PElem;

    procedure utworzListe;
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
    procedure szukaji(szukana:string);
          var szukaneimie:string;
    begin
      pom2:=head2;
      pom:=head;
      while ((pom2^.dane<>szukana)and(pom2<>nil)) do
      begin
        pom2:=pom2^.wsk;
        pom:=pom^.wsk;
      end;
      szukana:=pom2^.dane;
      szukaneimie:=pom^.dane;
      write('index: ',szukana);
      write('  imie: ' , szukaneimie);
      //write(szukaneimie);
    end;
    procedure dodaj;
    begin
     // head:=nil;
      //head2:=nil;
      z:=i+1;


        new (uczen);
        uczen^.wsk:=head;
        head:=uczen;


        uczen^.dane:=szukaneimie;


        new (index);

        index^.wsk:=head2;
        head2:=index;
        index^.dane:=szukana;

        //pom:=uczen;
        //pom2:=index;


    end;

begin
  write('ile uczniow: ');Readln(i);
  utworzListe;
  wypisz;
  write('podej index ');Readln(w);
  szukaji(w);
  dodaj;
  wypisz;
  Readln;
end.
       //jeszcznie nei dzilaa