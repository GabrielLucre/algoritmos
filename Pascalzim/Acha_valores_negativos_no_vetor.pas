Program Emersoh47 ;
var
	v : array[1..6] of integer;
	neg : array[1..6] of integer;
	i : integer;
	contn : integer;
Begin
	contn := 0;
	for i := 1 to 6 do
	begin
		write('R: ');
		readln(v[i]);	
		if (v[i] < 0) then
		begin
			contn := contn + 1;
		  neg[contn] := v[i];
		end;
	end;  
	clrscr;
	write('Ao todo foram digitados ', contn,' n�meros negativos e s�o eles: ');
	for i := 1 to contn do write(neg[i],' ');
	readkey;
End.