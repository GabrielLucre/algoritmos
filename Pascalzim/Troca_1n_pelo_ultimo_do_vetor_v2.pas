Program Emersoh52 ;
var                 
	n : array[1..20] of integer;
	i, c : integer;
Begin
	randomize;
	for i := 1 to 20 do
	begin
		write('R: ');
		n[i] := random(1000);
		writeln(n[i]);
	end;
	readkey;
	clrscr;
	write('[ ');
	for i := 1 to 19 do write(i,'° ',n[i],',  ');
	write(20,'° ',n[20],' ]');
	writeln();
	writeln('Novo vetor: ');
	write('[ ');
	c := 20;
	for i := 0 to 9 do
	begin
		write(c,'° ',n[20-i],',  ');
		dec(c);
	end;
	write(9,'° ',n[10],'  ]');
	c := 9;
	for i := 9 downto 2 do
	begin
		write(c,'° ',n[i],',  ');
		dec(c);
	end;
	write(1,'° ',n[1],' ]');
	readkey;
End.