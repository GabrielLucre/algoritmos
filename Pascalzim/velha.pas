Program velha;
var
    i, e, cont, cont2, vez: integer;
    jogd: integer;
    num: array[1..3, 1..3] of string;
    numdes: array[1..3, 1..3] of integer;
    des: string;
    win: boolean;
    
procedure desenhovelha;
begin
    for i := 1 to 3 do
        begin 
            for e := 1 to 3 do
            begin
                write('#---');
            end;
            writeln('#');
            for e := 1 to 3 do 
            begin
                write('| ', num[i, e],' ');
            end;
            writeln('|');
        end;
        writeln('#---#---#---#');
end;     

// verifica vencedor
function verifven() : boolean;
begin
    win := false;
    // horizontal
    for i := 1 to 3 do
    begin
        if (num[i,1] = num[i,2]) and (num[i,2] = num[i,3]) then
        win := true;
    end;
    
    // vertical
    for e := 1 to 3 do
    begin
        if (num[1,e] = num[2,e]) and (num[2,e] = num[3,e]) then
        win := true;
    end;
    
    // diagonal 1
    if (num[1,1] = num[2,2]) and (num[2,2] = num[3,3]) then
    begin
        win := true;
    end;

    // diagonal 2
    if (num[1,3] = num[2,2]) and (num[2,2] = num[3,1]) then
    begin
        win := true;
    end;
    
    verifven := win;
end;

Begin
        cont := 1;
        cont2 := 1;
        
        // Numeros do jogo
        //for i := 1 to 3 do
        //  for e := 1 to 3 do
        //  begin
        //      numdes[i, e] := cont;
        //      cont := cont + 1;
        //  end;
        num[1, 1] := '1';
        num[1, 2] := '2';
        num[1, 3] := '3';
        num[2, 1] := '4';
        num[2, 2] := '5';
        num[2, 3] := '6';
        num[3, 1] := '7';
        num[3, 2] := '8';
        num[3, 3] := '9';
            
        // Desenho do jogo da velha
        desenhovelha;
        
        // Vez do jogador
        
        des := 'X';
        jogd := 1;
        vez := 0;
        win := false;
        repeat
        if (vez) mod (2) = 0 then
        begin
            des := 'X';
            read(jogd);
            if (jogd > 0) and (jogd < 10) then
            begin
                if (jogd > 0) and (jogd < 4) then
                begin         		
                    num[1, jogd] := des;  
                    vez := vez + 1;   
                    if (num[1,jogd] = 'X') or (num[1,jogd] = 'O') then
                    begin
                    		clrscr;  
                    		num[1,jogd] := 'X';
                        vez := vez - 1;                    		
                    		desenhovelha;
                        write('Jogada inválida! Jogue novamente: ');
                    end    
										else
										begin               
                    	clrscr;
                    	desenhovelha;
                    end;
                    win := verifven();             
                end
                else if (jogd > 3) and (jogd < 7) then
                begin            
                	  num[2, jogd-3] := des;
                    vez := vez + 1;                
                		if (num[2,jogd-3] = 'X') or (num[2,jogd-3] = 'O') then
                    begin
                        clrscr;     
                        num[1,jogd] := 'X';
                        vez := vez - 1;                        
                    		desenhovelha;
                        write('Jogada inválida! Jogue novamente: ');
                    end    
										else
										begin               
                    	clrscr;
                    	desenhovelha;
                    end;
                    win := verifven();           
                end
                else if (jogd > 6) and (jogd < 10) then
                begin       
                		num[3, jogd-6] := des;
                    vez := vez + 1;                
                		if (num[3,jogd-6] = 'X') or (num[3,jogd-6] = 'O') then 
                    begin
                        clrscr;
                        num[1,jogd] := 'X';
                        vez := vez - 1;                        
                    		desenhovelha;
                        write('Jogada inválida! Jogue novamente: ');
                    end    
										else
										begin               
                    	clrscr;
                    	desenhovelha;
                    end;
                    win := verifven();      
                end;
            end
            else if (jogd <= 0) or (jogd > 9) then
            begin
                writeln('Número Inválido!');
            end;
        end
        else if (vez) mod (2) = 1 then
        begin
            des := 'O';
            read(jogd);
            if (jogd > 0) and (jogd < 10) then
            begin
                if (jogd > 0) and (jogd < 4) then
                begin   
                		num[1, jogd] := des;
                    vez := vez + 1;                
                		if (num[1,jogd] = 'O') or (num[1,jogd] = 'X') then
                    begin
                        clrscr;  
                        num[1,jogd] := 'O';
                        vez := vez - 1;                        
                    		desenhovelha;
                        write('Jogada inválida! Jogue novamente: ');
                    end    
										else
										begin               
                    	clrscr;
                    	desenhovelha;
                    end;
                    win := verifven();
                end
                else if (jogd > 3) and (jogd < 7) then
                begin  
                		num[2, jogd-3] := des;
                    vez := vez + 1;                
                    if (num[2,jogd-3] = 'O') or (num[2,jogd-3] = 'X') then
                    begin
                        clrscr;
                        num[1,jogd] := 'O';
                        vez := vez - 1;                        
                    		desenhovelha;
                        write('Jogada inválida! Jogue novamente: ');
                    end    
										else
										begin               
                    	clrscr;
                    	desenhovelha;
                    end;
                    win := verifven();
                end
                else if (jogd > 6) and (jogd < 10) then
                begin  
                    num[3, jogd-6] := des;
                    vez := vez + 1;                
                		if (num[3,jogd-6] = 'O') or (num[3,jogd-6] = 'X') then
                    begin    
                        clrscr;
                        num[1,jogd] := 'O';
                        vez := vez - 1;                        
                    		desenhovelha;
                        write('Jogada inválida! Jogue novamente: ');
                    end    
										else
										begin               
                    	clrscr;
                    	desenhovelha;
                    end;
                    win := verifven(); 
                end;
            end
            else if (jogd <= 0) or (jogd > 9) then
            begin
                writeln('Número Inválido!');
            end;
        end;
        until (win = true) or (vez = 9);
        
        
        // Ganha/Perde    
        if (win = true) then
        begin
        		clrscr;
        		desenhovelha;
            write('O jogador ',des,' venceu!');
        end
        else if (vez = 9) then
        begin
        	  clrscr;
        		desenhovelha;
            write('Deu Velha!');
        end;  
End.