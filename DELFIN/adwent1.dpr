program adwent1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
   myFile    : File;
   byteArray : array[1..8] of byte;
   oneByte   : byte;
   i, count  : Integer;
  var x,q,w,e,r : integer;
  var d : double;

  procedure przelicz;
  begin

      q:=(x div 3)-2;
      writeln(q);
  end;

begin
   writeln('podej liczbe');
   readln(x);
   przelicz;

   readln;
end.
 