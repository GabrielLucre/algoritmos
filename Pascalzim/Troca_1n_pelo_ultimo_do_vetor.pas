Program Emersoh52 ;
var                 
	n : array[0..19] of integer;
	i : integer;
Begin
	randomize;
	for i := 0 to 19 do
	begin
		write('R: ');
		n[i] := random(1000);
		writeln(n[i]);
	end;
	readkey;
	clrscr;
	for i := 0 to 19 do write(n[i],' ');
	writeln();
	writeln('Novo vetor: ');
	for i := 0 to 8 do
	begin
		write(n[19-i],' ');
	end;
	for i := 10 downto 0 do
	begin
		write(n[i],' ');
	end;
	readkey;
End.