Program Emersoh55;
var
	g : array[1..20] of integer;
	r : array[1..20] of integer;	
	i, c, j : integer;
	numAluno : integer;
	conta : integer;
	
procedure gabarito_random();
begin
	writeln('===========================');
	writeln('      G A B A R I T O      ');
	writeln('===========================');
	c := 11;
	for i := 1 to 9 do
	begin
		write('     ',i,' - ');
		g[i] := random(4) + 1;
		write(g[i],'       ');
		write(c,'- ');
		g[c] := random(4) + 1;
		writeln(g[c],'  ');
		inc(c)
	end; 
	write('     ',10,'- ');
	g[10] := random(4) + 1;
	write(g[10],'       ');
	write(20,'- ');
	g[20] := random(4) + 1;
	writeln(g[20],'  ');
	writeln('===========================');
	writeln();
end;

procedure gabarito(); 
begin
	writeln('===========================');
	writeln('      G A B A R I T O      ');
	writeln('===========================');
	c := 11;
	for i := 1 to 9 do
	begin
		write('     ',i,' - ');
		write(g[i],'       ');
		write(c,'- ');
		writeln(g[c],'  ');
		inc(c)
	end; 
	write('     ',10,'- ');
	write(g[10],'       ');
	write(20,'- ');
	writeln(g[20],'  ');
	writeln('===========================');
	writeln();
end;

procedure respostas();
begin
	writeln('===========================');
	writeln('  RESPOSTAS DO ALUNO N°', numAluno);
	writeln('===========================');
	randomize;
	c := 11;
	for i := 1 to 9 do
	begin
		write('     ',i,' - ');
		r[i] := random(4) + 1;
		write(r[i],'       ');
		write(c,'- ');
		r[c] := random(4) + 1;
		writeln(r[c],'  ');
		inc(c)
	end; 
	write('     ',10,'- ');
	r[10] := random(4) + 1;
	write(r[10],'       ');
	write(20,'- ');
	r[20] := random(4) + 1;
	writeln(r[20],'  ');
	writeln('===========================');
	writeln();	
end;	

procedure acertos();
begin
	// 18-20/20 = 10  16-17/20 = 9  14-15/20 = 8  12-13/20 = 7  10-11/20 = 6  8-9/20 = 5  6-7/20 = 4  4-5/20 = 3  2-3/20 = 2  1/20 = 1
	if (conta <= 20) and (conta >= 18) then
	begin
		writeln('CONTAGEM DE ACERTOS: ', conta,'/20');
		writeln('NOTA: 10');
	end 
	else if (conta <= 17) and (conta >= 16) then
	begin
		writeln('CONTAGEM DE ACERTOS: ', conta,'/20');
		writeln('NOTA: 9');
	end  
	else if (conta <= 15) and (conta >= 14) then
	begin
		writeln('CONTAGEM DE ACERTOS: ', conta,'/20');
		writeln('NOTA: 8');
	end
	else if (conta <= 13) and (conta >= 12) then
	begin
		writeln('CONTAGEM DE ACERTOS: ', conta,'/20');
		writeln('NOTA: 7');
	end
	else if (conta <= 11) and (conta >= 10) then
	begin
		writeln('CONTAGEM DE ACERTOS: ', conta,'/20');
		writeln('NOTA: 6');
	end
	else if (conta <= 9) and (conta >= 8) then
	begin
		writeln('CONTAGEM DE ACERTOS: ', conta,'/20');
		writeln('NOTA: 5');
	end
	else if (conta <= 7) and (conta >= 6) then
	begin
		writeln('CONTAGEM DE ACERTOS: ', conta,'/20');
		writeln('NOTA: 4');
	end
	else if (conta <= 5) and (conta >= 4) then
	begin
		writeln('CONTAGEM DE ACERTOS: ', conta,'/20');
		writeln('NOTA: 3');
	end
	else if (conta <1= 3) and (conta >= 2) then
	begin
		writeln('CONTAGEM DE ACERTOS: ', conta,'/20');
		writeln('NOTA: 2');
	end
	else if (conta = 1) then
	begin
		writeln('CONTAGEM DE ACERTOS: ', conta,'/20');
		writeln('NOTA: 1');
	end
	else if (conta = 0) then
	begin
		writeln('CONTAGEM DE ACERTOS: ', conta,'/20');
		writeln('NOTA: 0')
	end;	
end;

Begin
	conta := 0;
	gabarito_random();
	for j := 1 to 5 do
	begin	
		writeln('Número de alunos: 25'); 
		write('Digite o número do aluno: ');
		readln(numAluno); 
		if (numAluno < 1) or (numAluno > 25) then
		begin
			clrscr;
			gabarito();
			write('Numero do aluno não encontrado, digite outro por favor: ');
			readln(numAluno);
			while (numAluno < 1) or (numAluno > 25) do
			begin
				clrscr;
				gabarito();
				write('Numero do aluno não encontrado, digite outro por favor: ');
				readln(numAluno);
			end;
		end;	 
		respostas();
		for i := 1 to 20 do
		begin
			if (g[i] = r[i]) then
			begin
				conta := conta + 1;
			end;
		end;
		acertos();
		conta := 0;
		readkey;
		clrscr;
		gabarito();
	end;
End.