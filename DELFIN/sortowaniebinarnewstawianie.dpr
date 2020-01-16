program sortowaniebinarnewstawianie;

{$APPTYPE CONSOLE}

{wstawianie binarne sortowanie}
{quick sort, merge przestudiowac}

uses
  SysUtils;
procedure
begin
  for i:=2 do n do
    begin pom:=a[i]; L:=1; P:=i+1;
    while L<=P do
      begin k:=(L+P)div2;
        if(pom<a[k]) then P:=k-1 else L:=k+1;
      end;
    for k:=i-1 downto L do
    a[k+1]:=a[k];
    a[L]:=pom;
    end
end;

end.
 