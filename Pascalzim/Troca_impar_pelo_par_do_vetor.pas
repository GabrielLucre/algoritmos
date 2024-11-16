Program Emersoh53 ;
var
	k : array[1..20] of integer;
	i, c, j : integer;
Begin
	randomize;
	for i := 1 to 20 do
	begin
		writeln('Digite o ', i,'° número');
		write('R: ');
		k[i] := random(1000);
		writeln(k[i]); 	
	end;  
	readkey;
	clrscr;
	for i := 1 to 20 do write(k[i],' ');
	writeln();
	writeln('Novo vetor: ');
	c := 2;	
	for i := 1 to 19 do
	begin
		if (k[i] mod 2 = 1) and (k[c] mod 2 = 0) then
		begin
			j := k[i];
			k[i] := k[c];
			k[c] := j;
		end
		else if (k[i] mod 2 = 0) and (k[c] mod 2 = 1) then
		begin
			j := k[i];
			k[i] := k[c];
			k[c] := j;
		end;
		inc(c);
	end;
	for i := 1 to 20 do write(k[i],' ');
	readkey;
End.                  