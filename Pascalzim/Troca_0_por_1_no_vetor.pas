Program Emersoh48 ;
var
	x : array[1..100] of integer;
	i : integer;
Begin
	randomize;
	for i := 1 to 100 do 
	begin
		write('R: ');
		x[i] := random(10);
		writeln(x[i]);
	end;
	readkey;
	clrscr;
	for i := 1 to 100 do write(x[i],' ');
	writeln();
	writeln('Novo vetor');
	for i := 1 to 100 do
	begin
		if (x[i] = 0) then x[i] := 1;
		write(x[i],' ');
	end;
	readkey;
End.