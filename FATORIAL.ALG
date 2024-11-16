algoritmo "semnome"
var
   f, n, c, a:inteiro
   resp:caractere
inicio
      repita
            c <- 1
            escreva("Digite um numero: ")
            leia(n)
            a <- n
            repita
                  escreva(a," x")
                  c <- c * a
                  a <- a - 1
            ate (a<2)
            escreval(" 1 =",c)
            escreval("O fatorial de",n," é iqual a:",c)
            escreva("Deseja continuar? [S/N] ")
            leia(resp)
            limpatela
      ate (resp="n") ou (resp="N")
fimalgoritmo