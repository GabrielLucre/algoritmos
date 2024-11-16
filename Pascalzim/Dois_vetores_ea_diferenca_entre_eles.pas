Program Emersoh56 ;
var
	k : array[1..10] of integer;
	n : array[1..10] of integer;
	m : array[1..10] of integer;
	i : integer;
Begin
	for i := 1 to 10 do
	begin
		writeln('Digite o ', i,'° valor do vetor K');
		write('R: ');
		readln(k[i]);
	end; 
	clrscr;
	for i := 1 to 10 do
	begin
		writeln('Digite o ', i,'° valor do vetor N');
		write('R: ');
		readln(n[i]);
	end;  
	clrscr;
	write('Vetor K:                                    ');
	for i := 1 to 10 do write(k[i],' ');
	writeln();
	write('Vetor N:                                    ');
	for i := 1 to 10 do write(n[i],' ');
	writeln();
	write('Diferença entre o K e N, ou seja, vetor M: ');
	for i := 1 to 10 do m[i] := k[i] - n[i];
	for i := 1 to 10 do write(m[i],' ');
	readkey;
End.                                