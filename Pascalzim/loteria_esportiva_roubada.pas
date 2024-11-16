Program Pzim ;
var
g : array[1..13] of integer;
r : array[1..13] of integer;
i : integer;
conta : integer;
resp : string;

procedure gabarito_random();
begin
  writeln('===========================');
  writeln('      G A B A R I T O      ');
  writeln('===========================');
  for i := 1 to 13 do
  begin
    if (i < 10) then
    begin
      write('  ',i,' - ');
      g[i] := random(3) + 1;
      write(g[i],'  ');
    end
    else if (i >= 10) and (i <> 13) then
    begin
      write('  ',i,'- ');
      g[i] := random(3) + 1;
      write(g[i],'  ');
    end;
    if (i = 13) then
    begin
      write('           ',i,'- ');
      g[i] := random(3) + 1;
      write(g[i],' ');
    end;
    if (i = 3) or (i = 6) or (i = 9) or (i = 12) then writeln();
  end;
  writeln();
  writeln('===========================');
  writeln();
end;

procedure gabarito();
begin
  writeln('===========================');
  writeln('      G A B A R I T O      ');
  writeln('===========================');
  for i := 1 to 13 do
  begin
    if (i < 10) then
    begin
      write('  ',i,' - ');
      write(g[i],'  ');
    end
    else if (i >= 10) and (i <> 13) then
    begin
      write('  ',i,'- ');
      write(g[i],'  ');
    end;
    if (i = 13) then
    begin
      write('           ',i,'- ');
      write(g[i],' ');
    end;
    if (i = 3) or (i = 6) or (i = 9) or (i = 12) then writeln();
  end;
  writeln();
  writeln('===========================');
  writeln();
end;

Begin
  gabarito_random();
  while (conta <> 13) do
  begin
    conta := 0;
    // randomize;
    writeln('===========================');
    writeln('     R E S P O S T A S     ');
    writeln('===========================');
    for i := 1 to 13 do
    begin
      if (i < 10) then
      begin
        write('  ',i,' - ');
        //r[i] := random(3) + 1;
        //if (r[i] = g[i]) then
        if (g[i] = g[i]) then
        begin
          conta := conta + 1;
        end;
        //write(r[i],'  ');
        write(g[i],'  ');
      end
      else if (i >= 10) and (i <> 13) then
      begin
        write('  ',i,'- ');
        r[i] := random(3) + 1;
        if (r[i] = g[i]) then
        //if (g[i] = g[i]) then
        begin
          conta := conta + 1;
        end;
        write(r[i],'  ');
        //write(g[i],'  ');
      end;
      if (i = 13) then
      begin
        write('           ',i,'- ');
        r[i] := random(3) + 1;
        if (r[i] = g[i]) then
        //if (g[i] = g[i]) then
        begin
          conta := conta + 1;
        end;
        write(r[i],' ');
        //write(g[i],'  ');
      end;
      if (i = 3) or (i = 6) or (i = 9) or (i = 12) then writeln();
    end;
    writeln();
    writeln('Total de acertos: ', conta);
    if (conta = 13) then
    begin
      writeln('PARABÉNS, você ganhou!');
      readkey;
      exit;
    end
    else
    begin
      writeln('Deseja continuar tentando? [Y/n]');
      write('R: ');
      readln(resp);
      resp := upcase(resp);
        if (resp = 'N') or (resp = 'NAO') or (resp = 'NO') or (resp = 'NN') or (resp = 'NÃO') then
        begin
          writeln('Até a proxima! ;)');
          readkey;
          exit;
        end
        else if (resp = 'Y') or (resp = 'YES') or (resp = 'YY') or (resp = 'S') or (resp = 'SS') or (resp = 'SIM') then
        begin
          clrscr;
          gabarito();
        end
        else
        begin
          while (resp <> 'N') and (resp <> 'NAO') and (resp <> 'NO') and (resp <> 'NN') and (resp <> 'NÃO') and (resp <> 'Y') and (resp <> 'YES') and (resp <> 'YY') and (resp <> 'SIM') and 	(resp <> 'S') and (resp <> 'SS') do
          begin
          	writeln('Não entendi o que você está querendo dizer, repita por favaor');
          	write('- ');
          	readln(resp);
          	resp := upcase(resp);
            if (resp = 'N') or (resp = 'NAO') or (resp = 'NO') or (resp = 'NN') or (resp = 'NÃO') then
            begin
              writeln('Até a proxima! ;)');
              readkey;
              exit;
            end;
          end;
          clrscr;
          gabarito();
        end;
      end;
    end;
  End.
  