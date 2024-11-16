algoritmo "semnome"
var
   n, s, c:inteiro
   resp: caractere
inicio
      c <- 1
      repita
            repita
                 escreva("Digite um numero: ")
                 leia(n)
                 se (n<0) entao
                    s <- s+1
                 fimse
                 c <- c+1
            ate (c > 5)
            escreva("Quer continuar? [S/N] ")
            leia(resp)
      ate (resp="n") ou (resp="N")
      escreva("O total de numeros negativos foi:",s)
fimalgoritmo