Program Emersoh58 ;
var
	v : array[1..10] of integer;
	comp : array[1..10] of integer;
	i, c, j : integer;
	contrep : integer;
Begin
	contrep := 0;
	j := 1;
	for i := 1 to 10 do
	begin
		writeln('Digite o ', i,'° valor');
		write('R: ');
		readln(v[i]);
		for c := 1 to 10 do
		begin
			if (v[i] = v[c]) then
			begin
				contrep := contrep + 1;
				if (contrep = 2) then
				begin
					comp[j] := v[i];
					inc(j);
				end;
			end;	
		end;
		contrep := 0;	
	end; 
	clrscr;
	write('Valores do vetor V: ');
	for i := 1 to 10 do write(v[i],' ');
	writeln();
	write('Valores do vetor COMP: ');
	for i := 1 to j-1 do write(comp[i],' ');
End.