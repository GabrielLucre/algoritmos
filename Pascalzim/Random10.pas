Program Random10 ;
var
	n, i : integer;
Begin
	randomize;
	for i := 1 to 100 do 
	begin
		n := random(10); 
		write(n,' ');
	end;
	readkey;
End.