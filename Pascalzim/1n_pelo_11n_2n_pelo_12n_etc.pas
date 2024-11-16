Program Emersoh54 ;
var
	n : array[1..20] of integer;
	i, c, j : integer;
Begin
	randomize;
	for i := 1 to 20 do
	begin
		writeln('Digite o ', i,'° número');
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
	c := 11;
	for i := 1 to 10 do
	begin
		j := n[i];
		n[i] := n[c];
		n[c] := j;			
		inc(c);	 	
	end;
	write('[ ');
	c := 11;
  for i := 1 to 10 do 
	begin
		write(c,'° ',n[i],',  ');
		inc(c);
	end;
	c := 1;
	for i := 11 to 19 do 
	begin
		write(c,'° ',n[i],', ');
		inc(c);
	end;
	write(10,'° ',n[20],' ]');
	readkey;
End.