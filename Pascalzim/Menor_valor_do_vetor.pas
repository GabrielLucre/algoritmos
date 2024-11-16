Program Emersoh50 ;
var
	n : array[1..80] of integer;
	i : integer;
	m : integer;
	p : integer;
Begin
	randomize;
	m := 1001;
  for i := 1 to 80 do
  begin
  	write('R: ');
  	n[i] := random(1000);
  	writeln(n[i]);
  	if (n[i] < m) then
  	begin
  		m := n[i];
  		p := i;
  	end;
  end;
  readkey;
  clrscr;
  for i := 1 to 80 do write(n[i],' ');
  writeln();
  writeln('O menor elemento de n é = ', m,' e sua posição é = ', p);
  readkey;
End.