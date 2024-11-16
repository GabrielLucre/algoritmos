Program Emersoh51 ;
var
	a : array[1..15] of integer;
	i, c, j : integer;
Begin
	for i := 1 to 15 do
	begin
		writeln('Digite o ', i,'° número');
		write('R: ');
		readln(a[i]);
	end;
	clrscr;
	for i := 1 to 15 do write(a[i],' ');
	writeln();
	writeln('Novo vetor');
	for i := 1 to 15 do
	begin
		for c := 1 to 15 do
		begin
			if (a[i] < a[c]) then
			begin        
				j := a[c];
				a[c] := a[i];                  
				a[i] := 5j;
			end;
		end;
	end;
	for i := 1 to 15 do write(a[i],' ');
	readkey;
End.