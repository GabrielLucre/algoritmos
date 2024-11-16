Program Emersoh49 ;
var
	c : array[1..50] of integer;
	i : integer;
	maior : integer;
Begin
	maior := 0;
	randomize;
	for i := 1 to 50 do
	begin
		write('R: ');
		c[i] := random(1000);
		writeln(c[i]);
		if (c[i] > maior) then maior := c[i];
	end;
	readkey; 
	clrscr;
	for i := 1 to 50 do write(c[i],' ');
	writeln();
	writeln('O maior valor encontrado foi ', maior); 
	readkey;
End.